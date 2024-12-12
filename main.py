import mysql.connector as mysql
from navigator import Navigator
from main_menu import start_game

# Run this main program to start the Game!

def main():
    # navigator object instantiated for managing screens (screen_stack) during program execution
    navigator = Navigator()

    # Starts code execution for the whole game. Located in main_menu.py
    start_game(navigator)

main()
