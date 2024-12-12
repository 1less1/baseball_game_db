import os
import platform
from utils import clear_screen

# Class that is used to manage the "screen_stack" which allows users to go back and forth between screens!

class Navigator:
    def __init__(self):
        self.stack = []

    # Show a new screen and push it onto the stack.
    def show_screen(self, screen_function, *args):

        self.stack.append((screen_function, args))
        clear_screen()
        # Call the Screen Function to display UI 
        screen_function(*args)

    # Go back to previous screen on the stack
    def go_back(self, n):
        
        if len(self.stack) > n:
            # Remove the current screen from the stack
            for _ in range (n):
                self.stack.pop()
            
            # Retrieve the previous screen and its arguments
            previous_screen, args = self.stack[-1]
            clear_screen()
            previous_screen(*args)
        else:
            print(f"Cannot go back {n} screens.")

    

