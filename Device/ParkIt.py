from lcd_api import LcdApi
from i2c_lcd import I2cLcd
import RPi.GPIO as GPIO
import time
from datetime import datetime
import firebase_admin
from firebase_admin import credentials, db

# Firebase setup
cred = credentials.Certificate("/home/farihin/Desktop/SD/serviceAccountKey.json")
firebase_admin.initialize_app(cred, {
    'databaseURL': 'https://park-i-t-c4s9f4-default-rtdb.asia-southeast1.firebasedatabase.app/'
})

# Firebase references
total_slots_ref = db.reference('Total_Available_slots')
slot_status_ref = db.reference('parking_slots')

# GPIO Pin Definitions
IR_PARKING1_PIN = 23    # IR sensor for parking slot 1
IR_PARKING2_PIN = 24    # IR sensor for parking slot 2
IR_PARKING3_PIN = 25    # IR sensor for parking slot 3
IR_ENTRY_PIN = 27       # IR sensor for car entry
IR_EXIT_PIN = 22        # IR sensor for car exit
SERVO_ENTRY_PIN = 17    # GPIO pin for entry servo motor
SERVO_EXIT_PIN = 18     # GPIO pin for exit servo motor

# LED Indicators
GREEN_LED_PARKING1_PIN = 5
RED_LED_PARKING1_PIN = 6
GREEN_LED_PARKING2_PIN = 13
RED_LED_PARKING2_PIN = 19
GREEN_LED_PARKING3_PIN = 26
RED_LED_PARKING3_PIN = 21

# Total number of parking slots
TOTAL_SLOTS = 3

# LCD Definitions (I2C)
I2C_ADDR = 0x27
I2C_NUM_ROWS = 20
I2C_NUM_COLS = 4
lcd = I2cLcd(1, I2C_ADDR, I2C_NUM_COLS, I2C_NUM_ROWS)

# GPIO setup
GPIO.setmode(GPIO.BCM)
GPIO.setwarnings(False)
GPIO.setup([IR_PARKING1_PIN, IR_PARKING2_PIN, IR_PARKING3_PIN, IR_ENTRY_PIN, IR_EXIT_PIN], GPIO.IN)
GPIO.setup([GREEN_LED_PARKING1_PIN, RED_LED_PARKING1_PIN, GREEN_LED_PARKING2_PIN, RED_LED_PARKING2_PIN, GREEN_LED_PARKING3_PIN, RED_LED_PARKING3_PIN], GPIO.OUT)
GPIO.setup([SERVO_ENTRY_PIN, SERVO_EXIT_PIN], GPIO.OUT)

# Set the PWM signal for the servo motors (50 Hz frequency)
pwm_entry = GPIO.PWM(SERVO_ENTRY_PIN, 50)
pwm_exit = GPIO.PWM(SERVO_EXIT_PIN, 50)
pwm_entry.start(9.5)
pwm_exit.start(9.5)

# Initialize the LCD display
lcd.move_to(1,0)
lcd.putstr("WELCOME TO PARKIT")
lcd.move_to(6,1)
lcd.putstr("PARKING")
time.sleep(2)
lcd.clear()

# Gate control functions
def open_gate(pwm):
    pwm.ChangeDutyCycle(3.5)  # Open

def close_gate(pwm):
    pwm.ChangeDutyCycle(9.5)  # Close

# LED update functions for parking spots
def update_led(occupied, green_led, red_led):
    if occupied:
        GPIO.output(green_led, GPIO.LOW)
        GPIO.output(red_led, GPIO.HIGH)
    else:
        GPIO.output(green_led, GPIO.HIGH)
        GPIO.output(red_led, GPIO.LOW)

# Function to count and update available parking slots
def count_and_update_slots():
    available_slots = 0
    slots = [(IR_PARKING1_PIN, 'slot_1', GREEN_LED_PARKING1_PIN, RED_LED_PARKING1_PIN),
             (IR_PARKING2_PIN, 'slot_2', GREEN_LED_PARKING2_PIN, RED_LED_PARKING2_PIN),
             (IR_PARKING3_PIN, 'slot_3', GREEN_LED_PARKING3_PIN, RED_LED_PARKING3_PIN)]
    
    for sensor_pin, slot_name, green_led, red_led in slots:
        if GPIO.input(sensor_pin) == GPIO.HIGH:
            available_slots += 1
            slot_status_ref.child(slot_name).update({"status": "available"})
            update_led(False, green_led, red_led)
        else:
            slot_status_ref.child(slot_name).update({"status": "occupied"})
            update_led(True, green_led, red_led)

    # Update total available slots in Firebase and on LCD
    total_slots_ref.set({'Total_Slots': available_slots})
    update_lcd(available_slots)
    return available_slots

# Function to update the available parking slots on the LCD
def update_lcd(available_slots):
    lcd.clear()
    lcd.putstr(f"Available: {available_slots}/{TOTAL_SLOTS}")

# Main loop
try:
    while True:
        # Detect car entry
        if GPIO.input(IR_ENTRY_PIN) == GPIO.LOW:
            open_gate(pwm_entry)
            time.sleep(2)
            close_gate(pwm_entry)

        # Detect car exit
        if GPIO.input(IR_EXIT_PIN) == GPIO.LOW:
            open_gate(pwm_exit)
            time.sleep(2)
            close_gate(pwm_exit)
        
        # Update slot count and statuses
        available_slots = count_and_update_slots()
        
        time.sleep(1)  # Delay to avoid excessive CPU usage

finally:
    pwm_entry.stop()
    pwm_exit.stop()
    GPIO.cleanup()
