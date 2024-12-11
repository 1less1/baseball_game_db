
# Class that is used to manage the "screen_stack" which allows users to go back and forth between screens!

class Navigator:
    def __init__(self):
        self.stack = []

    def show_screen(self, screen_function, *args):
        """Show a new screen and push it onto the stack."""
        self.stack.append((screen_function, args))
        screen_function(*args)

    def go_back(self):
        """Go back to the previous screen."""
        if len(self.stack) > 1:
            # Remove the current screen from the stack
            self.stack.pop()
            # Retrieve the previous screen and its arguments
            previous_screen, args = self.stack[-1]
            previous_screen(*args)
        else:
            print("No previous screen to go back to.")

