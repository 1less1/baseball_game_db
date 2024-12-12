# Universal Imports
import mysql.connector as mysql
import platform
import os
import getpass
import time
from utils import *
from navigator import Navigator

# Document Specific Imports
from create_db import create_db
from ultimate_team import *
from explore_db import *

# Screens (UI) --------------------------------------------------

def start_game(navigator):
    clear_screen()
    print("Welcome to Fantasy Baseball!")
    print_fantasy_baseball_art("large")
    print("This game was created by Dom Olhava and incorporates a mysql database to store team and player data.")
    time.sleep(2)

    while True:
        password = getpass.getpass("Enter your localhost database password to start the game: ")
        
        try:
            db = mysql.connect(
                host="localhost",
                user="root",
                passwd=password,
                database="baseball_game_db"
            )
            print("Connection successful!")
            time.sleep(1)
            # Once connected, show the main menu
            clear_screen()
            config_screen(db, navigator) # Config screen is shown only once per session. No need to use navigator method!

            break
        except mysql.Error as err:
            print(f"Error: {err}")
            print("Incorrect password, please try again.")


def config_screen(db, navigator):
    while True:
        print_header("Game Configuration", "large") # From utils.py

        title = "Freshly install the database if this is your first time playing!\n If this is not your first time playing, Fresh Install to reset progress or select Continue!\n"
        options =  ["Fresh Install", "Continue"]
        
        print_options(title, options, False) # From utils.py

        choice = input("Please choose an option above: ")
        if choice == '1':
            create_db(db)
            
        elif choice != '2':
            invalid_choice() # From utils.py

        navigator.show_screen(main_menu, db, navigator)
        break 


def main_menu(db, navigator):
    while True:
        print_header("Main Menu", "small")

        title = "Game Modes"
        options = ["Ultimate Team", "Explore Database"]
        print_options(title, options, False)

        choice = input("Please choose an option above: ")
        if choice == '1':
            navigator.show_screen(ut_start_screen, db, navigator)
            break
        elif choice == '2':
            navigator.show_screen(explore_db_start_screen, db, navigator)
            break
        else:
            invalid_choice()
    
