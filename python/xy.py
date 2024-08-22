import pyautogui
import time

try:
    while True:
        x, y = pyautogui.position()  # Get the current mouse position
        print(f"Position: x={x} y={y}", end='\r')  # Print the position
        time.sleep(0.1)  # Refresh every 0.1 seconds
except KeyboardInterrupt:
    print("\nExited by user")