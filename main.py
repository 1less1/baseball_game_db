import mysql.connector as mysql
from navigator import Navigator
from screens import start_screen

# Main program that starts the game!

def main():
    # navigator object instantiated for managing screens (screen_stack) during program execution
    navigator = Navigator()

    # Kicks off the whole game. Located in screens.py
    start_screen(navigator)

main()
