from lcd_api import LcdApi
from i2c_lcd import I2cLcd

import RPi.GPIO as GPIO 
import time


# GPIO Pin Definitions
IR_PARKING1_PIN = 23    # IR sensor for parking slot 1
IR_PARKING2_PIN = 24    # IR sensor for parking slot 2
IR_PARKING3_PIN = 25    # IR sensor for parking slot 3
IR_ENTRY_PIN = 27       # IR sensor for car entry
IR_EXIT_PIN = 22        # IR sensor for car exit
SERVO_ENTRY_PIN = 17    # GPIO pin for entry servo motor
SERVO_EXIT_PIN = 18     # GPIO pin for exit servo motor

# LEDs for parking slot 1
GREEN_LED_PARKING1_PIN = 5       # Green LED for parking slot 1 (available)
RED_LED_PARKING1_PIN = 6         # Red LED for parking slot 1 (occupied)

# LEDs for parking slot 2
GREEN_LED_PARKING2_PIN = 12      # Green LED for parking slot 2 (available)
RED_LED_PARKING2_PIN = 16        # Red LED for parking slot 2 (occupied)

# LEDs for parking slot 3
GREEN_LED_PARKING3_PIN = 20      # Green LED for parking slot 3 (available)
RED_LED_PARKING3_PIN = 21        # Red LED for parking slot 3 (occupied)


# Setup GPIO mode
GPIO.setmode(GPIO.BCM)
GPIO.setwarnings(False)
GPIO.setup(IR_PARKING1_PIN, GPIO.IN)
GPIO.setup(IR_PARKING2_PIN, GPIO.IN)
GPIO.setup(IR_PARKING3_PIN, GPIO.IN)
GPIO.setup(SERVO_ENTRY_PIN, GPIO.OUT)
GPIO.setup(SERVO_EXIT_PIN, GPIO.OUT)
GPIO.setup(IR_ENTRY_PIN, GPIO.IN)
GPIO.setup(IR_EXIT_PIN, GPIO.IN)
GPIO.setup(GREEN_LED_PARKING1_PIN, GPIO.OUT)
GPIO.setup(RED_LED_PARKING1_PIN, GPIO.OUT)
GPIO.setup(GREEN_LED_PARKING2_PIN, GPIO.OUT)
GPIO.setup(RED_LED_PARKING2_PIN, GPIO.OUT)
GPIO.setup(GREEN_LED_PARKING3_PIN, GPIO.OUT)
GPIO.setup(RED_LED_PARKING3_PIN, GPIO.OUT)



# Set the PWM signal for the servo motors (50 Hz frequency)
pwm_entry = GPIO.PWM(SERVO_ENTRY_PIN, 50)
pwm_exit = GPIO.PWM(SERVO_EXIT_PIN, 50)

# Start the PWM with the servos in the neutral position 
pwm_entry.start(9.5)  
pwm_exit.start(9.5)   


# Function to open the entry gate (servo 1)
def open_entry_gate():
    pwm_entry.ChangeDutyCycle(3.5)  # Move entry servo to 0 degrees (open)
    

# Function to close the entry gate (servo 1)
def close_entry_gate():
    pwm_entry.ChangeDutyCycle(9.5)  # Move entry servo to 90 degrees (closed)
    

# Function to open the exit gate (servo 2)
def open_exit_gate():
    pwm_exit.ChangeDutyCycle(3.5)  # Move exit servo to 0 degrees (open)
    

# Function to close the exit gate (servo 2)
def close_exit_gate():
    pwm_exit.ChangeDutyCycle(9.5)  # Move exit servo to 90 degrees (closed)
    

# Function to indicate parking spot status
def update_led1(occupied):
    if occupied:
        GPIO.output(GREEN_LED_PARKING1_PIN, GPIO.LOW)  # Turn off green LED
        GPIO.output(RED_LED_PARKING1_PIN, GPIO.HIGH)   # Turn on red LED (occupied)
    else:
        GPIO.output(GREEN_LED_PARKING1_PIN, GPIO.HIGH)  # Turn on green LED (empty)
        GPIO.output(RED_LED_PARKING1_PIN, GPIO.LOW)    # Turn off red LED

def update_led2(occupied):
    if occupied:
        GPIO.output(GREEN_LED_PARKING2_PIN, GPIO.LOW)  # Turn off green LED
        GPIO.output(RED_LED_PARKING2_PIN, GPIO.HIGH)   # Turn on red LED (occupied)
    else:
        GPIO.output(GREEN_LED_PARKING2_PIN, GPIO.HIGH)  # Turn on green LED (empty)
        GPIO.output(RED_LED_PARKING2_PIN, GPIO.LOW)    # Turn off red LED        

def update_led3(occupied):
    if occupied:
        GPIO.output(GREEN_LED_PARKING3_PIN, GPIO.LOW)  # Turn off green LED
        GPIO.output(RED_LED_PARKING3_PIN, GPIO.HIGH)   # Turn on red LED (occupied)
    else:
        GPIO.output(GREEN_LED_PARKING3_PIN, GPIO.HIGH)  # Turn on green LED (empty)
        GPIO.output(RED_LED_PARKING3_PIN, GPIO.LOW)    # Turn off red LED

try:
    while True:
        # Detect car entry
        if GPIO.input(IR_ENTRY_PIN) == GPIO.LOW:
            open_entry_gate()
            time.sleep(2)  # Allow time for the car to pass
            close_entry_gate()

        # Detect car exit
        if GPIO.input(IR_EXIT_PIN) == GPIO.LOW:
            open_exit_gate()
            time.sleep(2)  # Allow time for the car to pass
            close_exit_gate()
            
        # Led slot 1   
        if GPIO.input(IR_PARKING1_PIN) == GPIO.LOW:  # IR sensor triggered (car detected)
            update_led1(occupied=True)  # Car is present, mark as occupied
        else:
            update_led1(occupied=False)  # No car, mark as empty

        # Led slot 2
        if GPIO.input(IR_PARKING2_PIN) == GPIO.LOW:  # IR sensor triggered (car detected)
            update_led2(occupied=True)  # Car is present, mark as occupied
        else:
            update_led2(occupied=False)  # No car, mark as empty

        #Led slot 3
        if GPIO.input(IR_PARKING3_PIN) == GPIO.LOW:  # IR sensor triggered (car detected)
            update_led3(occupied=True)  # Car is present, mark as occupied
        else:
            update_led3(occupied=False)  # No car, mark as empty   


        time.sleep(0.1)  # Short delay to avoid excessive CPU usage

finally:
    pwm_entry.stop()  # Stop PWM for entry servo
    pwm_exit.stop()   # Stop PWM for exit servo
    GPIO.cleanup()    # Clean up GPIO


