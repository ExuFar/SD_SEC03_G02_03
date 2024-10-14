from lcd_api import LcdApi
from i2c_lcd import I2cLcd
import RPi.GPIO as GPIO
import time
import smbus

# GPIO Pin Definitions
IR_SENSOR_SLOT_1 = 25  # IR sensor for parking slot 1

GREEN_LED_PIN = 23     # GPIO pin for green LED (indicates available spots)
RED_LED_PIN = 24       # GPIO pin for red LED (indicates no available spots)

# Total number of parking slots
TOTAL_SLOTS = 2  # Modify based on the number of slots

# LCD Definitions (assuming you use I2C to control the LCD)
I2C_ADDR = 0x27          # I2C address of the LCD
I2C_NUM_ROWS = 4         # Number of rows on the LCD
I2C_NUM_COLS = 20        # Number of columns on the LCD

# Setup GPIO mode
GPIO.setmode(GPIO.BCM)
GPIO.setup(IR_SENSOR_SLOT_1, GPIO.IN)
GPIO.setup(GREEN_LED_PIN, GPIO.OUT)
GPIO.setup(RED_LED_PIN, GPIO.OUT)

# Initialize the LCD
i2c_bus = smbus.SMBus(1)  # Use I2C bus 1
lcd = I2cLcd(i2c_bus, I2C_ADDR, I2C_NUM_ROWS, I2C_NUM_COLS)

# Function to update LEDs and display available parking slots
def update_leds_and_display(available_slots):
    if available_slots > 0:
        GPIO.output(GREEN_LED_PIN, GPIO.HIGH)  # Turn on green LED (available spots)
        GPIO.output(RED_LED_PIN, GPIO.LOW)     # Turn off red LED
    else:
        GPIO.output(GREEN_LED_PIN, GPIO.LOW)  # Turn off green LED
        GPIO.output(RED_LED_PIN, GPIO.HIGH)   # Turn on red LED (no spots available)

    lcd.clear()  # Clear the LCD screen
    lcd.putstr(f"Available: {available_slots}/{TOTAL_SLOTS}")  # Display available slots



# Initialize the LCD display
lcd.putstr("AVAILABLE PARKING")  # Initial message
time.sleep(2)
lcd.clear()

try:
    while True:
        # Check the status of each parking slot
        occupied_slots = 0
        
        if GPIO.input(IR_SENSOR_SLOT_1) == GPIO.LOW:  # Car detected in slot 1
            occupied_slots += 1
            
        # Calculate available parking slots
        available_slots = TOTAL_SLOTS - occupied_slots

        # Update the LEDs and display the available slots on the LCD
        update_leds_and_display(available_slots)

        time.sleep(0.5)  # Short delay to avoid excessive CPU usage

finally:
    GPIO.cleanup()  # Clean up GPIO on exit

