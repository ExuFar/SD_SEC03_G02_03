import firebase_admin
from firebase_admin import credentials, db
from lcd_api import LcdApi
from i2c_lcd import I2cLcd
import RPi.GPIO as GPIO
import time
from datetime import datetime

# Firebase setup
cred = credentials.Certificate("/home/farihin/Desktop/SD/serviceAccountKey.json")  # Path to Firebase service account key JSON
firebase_admin.initialize_app(cred, {
    'databaseURL': 'https://park-i-t-c4s9f4-default-rtdb.asia-southeast1.firebasedatabase.app/'
})
ref = db.reference('parking_system')

# GPIO Pin Definitions
IR_PARKING1_PIN = 23
IR_PARKING2_PIN = 24
IR_PARKING3_PIN = 25

# LCD Definitions
I2C_ADDR = 0x27
I2C_NUM_ROWS = 4
I2C_NUM_COLS = 20
lcd = I2cLcd(1, I2C_ADDR, I2C_NUM_COLS, I2C_NUM_ROWS)

# Setup GPIO mode
GPIO.setmode(GPIO.BCM)
GPIO.setup(IR_PARKING1_PIN, GPIO.IN)
GPIO.setup(IR_PARKING2_PIN, GPIO.IN)
GPIO.setup(IR_PARKING3_PIN, GPIO.IN)

# Fee rate (e.g., per minute or per hour)
FEE_RATE = 5  # Fee per hour
TOTAL_SLOTS = 3

# Store entry times for each slot
entry_times = {}

# Function to get slot status and track entry/exit
def get_slot_status():
    slot_status = {}
    current_time = datetime.now()
    
    for slot, pin in {'slot_1': IR_PARKING1_PIN, 'slot_2': IR_PARKING2_PIN, 'slot_3': IR_PARKING3_PIN}.items():
        if GPIO.input(pin) == GPIO.HIGH:  # Slot is Available
            if slot in entry_times:  # Vehicle just exited
                entry_time = entry_times.pop(slot)
                duration = (current_time - entry_time).total_seconds() / 3600  # Duration in hours
                fee = round(duration * FEE_RATE, 2)
                log_exit(slot, entry_time, current_time, fee)
            slot_status[slot] = "Available"
        else:  # Slot is Occupied
            if slot not in entry_times:  # Vehicle just entered
                entry_times[slot] = current_time
                log_entry(slot, current_time)
            slot_status[slot] = "Occupied"
    
    return slot_status

# Function to log vehicle entry
def log_entry(slot, entry_time):
    ref.child('entries').push({
        'slot': slot,
        'entry_time': entry_time.strftime("%Y-%m-%d %H:%M:%S"),
        'status': 'entered'
    })

# Function to log vehicle exit with fees
def log_exit(slot, entry_time, exit_time, fee):
    ref.child('exits').push({
        'slot': slot,
        'entry_time': entry_time.strftime("%Y-%m-%d %H:%M:%S"),
        'exit_time': exit_time.strftime("%Y-%m-%d %H:%M:%S"),
        'duration_hours': round((exit_time - entry_time).total_seconds() / 3600, 2),
        'fee': fee
    })

# Function to update the LCD display
def update_lcd(slot_status):
    lcd.clear()
    for row, (slot, status) in enumerate(slot_status.items()):
        if row < I2C_NUM_ROWS:
            lcd.move_to(0, row)
            lcd.putstr(f"{slot}: {status}")

# Initialize the LCD display
lcd.move_to(1, 0)
lcd.putstr("WELCOME TO PARKIT")
lcd.move_to(6, 1)
lcd.putstr("PARKING")
time.sleep(2)
lcd.clear()

# Main loop
while True:
    slot_status = get_slot_status()
    update_lcd(slot_status)
    time.sleep(1)
