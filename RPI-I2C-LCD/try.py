from lcd_api import LcdApi
from i2c_lcd import I2cLcd

import RPi.GPIO as GPIO
import time

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
    
 
#lcd.move_to(1,0)
#lcd.putstr("SELAMAT DATANG  KE\n")
#lcd.move_to(5,1)
#lcd.putstr("SECTION 40\n")
#lcd.move_to(1,2)
#lcd.putstr("THIS IS PARKIT CAR\n")
#lcd.move_to(3,3)
#lcd.putstr("PARKING SYSTEM")