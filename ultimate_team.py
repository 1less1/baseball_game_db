# Universal Imports
import mysql.connector as mysql
import platform
import os
import sys
import getpass
import time
from utils import *
from navigator import Navigator

# Document Specific Imports
from queries import *


# Screens (UI) --------------------------------------------------

def ut_start_screen(db, navigator):
    while True:
        print_header("Create a Team", "small")

        print_small_header("Current baseball teams in the league: ")
        display_all_teams(db)
    
        title = "Do you want to create a team or manage an existing one?"
        options = ["New Game", "Load Game"]
        print_options(title, options, True)

        choice = input("Please choose an option above: ")
        if choice == '1':
            # Temporary!!!
            print("Coming SOON!")
            time.sleep(1)
            clear_screen()
        elif choice == '2':
             # Temporary!!!
            print("Coming SOON!")
            time.sleep(1)
            clear_screen()
        elif choice == '0':
            navigator.go_back(1)
            break
        else:
            invalid_choice()