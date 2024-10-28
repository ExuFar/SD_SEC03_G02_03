from lcd_api import LcdApi
from i2c_lcd import I2cLcd
import RPi.GPIO as GPIO
import time


# GPIO Pin Definitions
IR_PARKING1_PIN = 23    # IR sensor for parking slot 1
IR_PARKING2_PIN = 24    # IR sensor for parking slot 2
IR_PARKING3_PIN = 25    # IR sensor for parking slot 3

# LEDs for parking slot 1
GREEN_LED_PARKING1_PIN = 5       # Green LED for parking slot 1 (available)
RED_LED_PARKING1_PIN = 6         # Red LED for parking slot 1 (occupied)

# LEDs for parking slot 2
GREEN_LED_PARKING2_PIN = 13      # Green LED for parking slot 2 (available)
RED_LED_PARKING2_PIN = 19        # Red LED for parking slot 2 (occupied)

# LEDs for parking slot 3
GREEN_LED_PARKING3_PIN = 26      # Green LED for parking slot 3 (available)
RED_LED_PARKING3_PIN = 21        # Red LED for parking slot 3 (occupied)


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
GPIO.setup(GREEN_LED_PARKING1_PIN, GPIO.OUT)
GPIO.setup(RED_LED_PARKING1_PIN, GPIO.OUT)
GPIO.setup(GREEN_LED_PARKING2_PIN, GPIO.OUT)
GPIO.setup(RED_LED_PARKING2_PIN, GPIO.OUT)
GPIO.setup(GREEN_LED_PARKING3_PIN, GPIO.OUT)
GPIO.setup(RED_LED_PARKING3_PIN, GPIO.OUT)


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


# Function to update the available parking slots on the LCD
def update_lcd(available_slots, total_slots=3):
    lcd.clear()
    lcd.putstr(f"Available: {available_slots}/{total_slots}")

# Initialize the LCD display
lcd.putstr("AVAILABLE PARKING")  # Initial message
time.sleep(2)
lcd.clear()

available_slots = count_available_slots()
update_lcd(available_slots)
