from lcd_api import LcdApi
from i2c_lcd import I2cLcd

import RPi.GPIO as GPIO
import time

# GPIO Pin Definitions
IR_ENTRY_PIN = 27  # IR sensor for car entry
IR_EXIT_PIN = 22  # IR sensor for car exit
SERVO_ENTRY_PIN = 17     # GPIO pin for entry servo motor
SERVO_EXIT_PIN = 18   # GPIO pin for exit servo motor

# Setup GPIO mode
GPIO.setmode(GPIO.BCM)
GPIO.setup(SERVO_ENTRY_PIN, GPIO.OUT)
GPIO.setup(SERVO_EXIT_PIN, GPIO.OUT)
GPIO.setup(IR_ENTRY_PIN, GPIO.IN)
GPIO.setup(IR_EXIT_PIN, GPIO.IN)

# Set the PWM signal for the servo motors (50 Hz frequency)
pwm_entry = GPIO.PWM(SERVO_ENTRY_PIN, 50)
pwm_exit = GPIO.PWM(SERVO_EXIT_PIN, 50)

# Start the PWM with the servos in the neutral position (90 degrees)
pwm_entry.start(9.5)  # 90 degrees position
pwm_exit.start(9.5)   # 90 degrees position

# Function to open the entry gate (servo 1)
def open_entry_gate():
    pwm_entry.ChangeDutyCycle(3.5)  # Move entry servo to 0 degrees (open)
    time.sleep(1)

# Function to close the entry gate (servo 1)
def close_entry_gate():
    pwm_entry.ChangeDutyCycle(9.5)  # Move entry servo to 90 degrees (closed)
    time.sleep(1)

# Function to open the exit gate (servo 2)
def open_exit_gate():
    pwm_exit.ChangeDutyCycle(3.5)  # Move exit servo to 0 degrees (open)
    time.sleep(1)

# Function to close the exit gate (servo 2)
def close_exit_gate():
    pwm_exit.ChangeDutyCycle(9.5)  # Move exit servo to 90 degrees (closed)
    time.sleep(1)

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

        time.sleep(0.1)  # Short delay to avoid excessive CPU usage

finally:
    pwm_entry.stop()  # Stop PWM for entry servo
    pwm_exit.stop()   # Stop PWM for exit servo
    GPIO.cleanup()    # Clean up GPIO

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
    GPIO.cleanup()
'''
