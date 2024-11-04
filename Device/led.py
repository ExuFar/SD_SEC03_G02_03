from lcd_api import LcdApi
from i2c_lcd import I2cLcd
import RPi.GPIO as GPIO
import time

import firebase_admin
from firebase_admin import credentials, db


# Firebase setup
cred = credentials.Certificate("/home/farihin/Desktop/SD/serviceAccountKey.json")  
firebase_admin.initialize_app(cred, {
    'databaseURL': 'https://park-i-t-c4s9f4-default-rtdb.asia-southeast1.firebasedatabase.app/'
})

ref = db.reference('Total_Available_slots')

# GPIO Pin Definitions
IR_PARKING1_PIN = 23    # IR sensor for parking slot 1
IR_PARKING2_PIN = 24    # IR sensor for parking slot 2
IR_PARKING3_PIN = 25    # IR sensor for parking slot 3


# Total number of parking slots
TOTAL_SLOTS = 3  # Modify based on the number of slots

# LCD Definitions (assuming you use I2C to control the LCD)
I2C_ADDR = 0x27          # I2C address of the LCD
I2C_NUM_ROWS = 20         # Number of rows on the LCD
I2C_NUM_COLS = 4        # Number of columns on the LCD
lcd = I2cLcd(1, I2C_ADDR, I2C_NUM_COLS, I2C_NUM_ROWS)

# Setup GPIO mode
GPIO.setmode(GPIO.BCM)
GPIO.setup(IR_PARKING1_PIN, GPIO.IN)
GPIO.setup(IR_PARKING2_PIN, GPIO.IN)
GPIO.setup(IR_PARKING3_PIN, GPIO.IN)


# Function to count available parking slots
def count_available_slots():
    available_slots = 0
    
    # Check parking slot 1
    if GPIO.input(IR_PARKING1_PIN) == GPIO.HIGH:
        available_slots += 1
    
    # Check parking slot 2
    if GPIO.input(IR_PARKING2_PIN) == GPIO.HIGH:
        available_slots += 1
    
    # Check parking slot 3
    if GPIO.input(IR_PARKING3_PIN) == GPIO.HIGH:
        available_slots += 1
    
    return available_slots
   
# Function to update firebase
def update_firebase(available_slots):
    ref.set({
        'Total_Slots': available_slots
    })


# Function to update the available parking slots on the LCD
def update_lcd(available_slots, total_slots=3):
    lcd.clear()
    lcd.move_to(3,0)
    lcd.putstr(f"Available: {available_slots}/{total_slots}")


# Initialize the LCD display
lcd.move_to(1,0)
lcd.putstr("WELCOME TO PARKIT")
lcd.move_to(6,1)
lcd.putstr("PARKING")
time.sleep(2)
lcd.clear()

while True:
    available_slots = count_available_slots()
    update_lcd(available_slots)
    update_firebase(available_slots)
    time.sleep(1)
