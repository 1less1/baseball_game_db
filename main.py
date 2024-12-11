import mysql.connector as mysql
from navigator import Navigator
from screens import start_game

# Main program that starts the game!

def main():
    # navigator object instantiated for managing screens (screen_stack) during program execution
    navigator = Navigator()

    # Starts code execution for the whole game. Located in screens.py
    start_game(navigator)

main()
