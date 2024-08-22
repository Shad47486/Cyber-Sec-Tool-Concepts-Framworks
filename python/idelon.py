import pyautogui
import time

# Adjust these coordinates based on your screen setup
x = 465  # Example x coordinate
y = 150  # Example y coordinate

try:
    while True:
        # Move the mouse to the specified coordinates and click
        pyautogui.moveTo(x, y)  # Ensure the mouse moves to where you want
        pyautogui.click()
        time.sleep(10)  # Adjust the time as necessary
except KeyboardInterrupt:
    print("Script terminated by user")