from lcd_api import LcdApi
from i2c_lcd import I2cLcd

import RPi.GPIO as GPIO
import time
from gpiozero import Servo

# GPIO Pin Definitions
IR_ENTRY_PIN = 27  # IR sensor for car entry
IR_EXIT_PIN = 22  # IR sensor for car exit
SERVO_PIN = 17     # GPIO pin for servo motor

# Servo motor setup
servo = Servo(SERVO_PIN)

# Setup GPIO mode
GPIO.setmode(GPIO.BCM)
GPIO.setup(IR_ENTRY_PIN, GPIO.IN)  # Entry IR sensor input
GPIO.setup(IR_EXIT_PIN, GPIO.IN)   # Exit IR sensor input

# Function to open the gate
def open_gate():
    servo.min()  # Move the servo to 0 degrees (fully open)
    time.sleep(5)  

# Function to close the gate
def close_gate():
    servo.max()  # Move the servo to 90 degrees (fully closed)
    time.sleep(5) 

try:
    while True:
        # Detect car entry
        if GPIO.input(IR_ENTRY_PIN) == GPIO.LOW:  # IR sensor triggered (car detected)
            open_gate()  # Open the gate
            time.sleep(3)  # Keep the gate open for a while to let the car pass
            close_gate()  # Close the gate after the car passes

        # Detect car exit
        elif GPIO.input(IR_EXIT_PIN) == GPIO.LOW:  # IR exit sensor triggered (car leaving)
            open_gate()  # Open the gate
            time.sleep(3)  # Keep the gate open for the car to exit
            close_gate()  # Close the gate after the car leaves

        time.sleep(0.1)  # Short delay to avoid excessive CPU usage

finally:
    GPIO.cleanup()  # Clean up the GPIO pins on exit

'''
I2C_ADDR = 0x27
I2C_NUM_ROWS = 4
I2C_NUM_COLS = 20
lcd = I2cLcd(1, I2C_ADDR, I2C_NUM_ROWS, I2C_NUM_COLS)

GPIO.setmode(GPIO.BCM)
sensor_pin = 17
GPIO.setup(sensor_pin, GPIO.IN)

try:
    while True:
        if GPIO.input(sensor_pin):
            lcd.clear()
            lcd.putstr("\nNo Obstacle")
        else:
            lcd.clear()
            lcd.putstr("\nObstacle Detected")
        time.sleep(0.5)
        
except KeyboardInterrupt:
    print("Program stopped")
    
finally:
    GPIO.cleanup()'''
    
 
#lcd.move_to(1,0)
#lcd.putstr("SELAMAT DATANG  KE\n")
#lcd.move_to(5,1)
#lcd.putstr("SECTION 40\n")
#lcd.move_to(1,2)
#lcd.putstr("THIS IS PARKIT CAR\n")
#lcd.move_to(3,3)
#lcd.putstr("PARKING SYSTEM")