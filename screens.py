import getpass
import time
import mysql.connector as mysql
import platform
import os
from create_db import create_db
from query import get_all_teams
from navigator import Navigator

# Contains all of the different screens (user interfaces) for the whole game!

baseball_art_large = r"""
                                                                                                                   ____ 
    ______ ___     _   __ ______ ___    _______  __    ____   ___    _____  ______ ____   ___     __     __      .'    '.
   / ____//   |   / | / //_  __//   |  / ___/\ \/ /   / __ ) /   |  / ___/ / ____// __ ) /   |   / /    / /     /'-....-'\ 
  / /_   / /| |  /  |/ /  / /  / /| |  \__ \  \  /   / __  |/ /| |  \__ \ / __/  / __  |/ /| |  / /    / /      |        | 
 / __/  / ___ | / /|  /  / /  / ___ | ___/ /  / /   / /_/ // ___ | ___/ // /___ / /_/ // ___ | / /___ / /___    \.-''''-./        
/_/    /_/  |_|/_/ |_/  /_/  /_/  |_|/____/  /_/   /_____//_/  |_|/____//_____//_____//_/  |_|/_____//_____/     '.____.' 
                                                                                                                   """
baseball_art_small = r"""
   _______   _  ___________   _____  __  ___  ___   ___________  ___   __   __ 
  / __/ _ | / |/ /_  __/ _ | / __| \/ / / _ )/ _ | / __/ __/ _ )/ _ | / /  / / 
 / _// __ |/    / / / / __ |_\ \  \  / / _  / __ |_\ \/ _// _  / __ |/ /__/ /__
/_/ /_/ |_/_/|_/ /_/ /_/ |_/___/  /_/ /____/_/ |_/___/___/____/_/ |_/____/____/
"""
# Utilities --------------------------------------
def clear_screen():
    if platform.system() == "Windows":
        os.system("cls")
    else:
        os.system("clear")

def transition():
    clear_screen()
    print(baseball_art_small)
    print()

# Screen Procedures --------------------------------------

def start_game(navigator):
    clear_screen()
    print("Welcome to Fantasy Baseball!")
    print(baseball_art_large)
    print("This game was created by Dom Olhava and incorporates a mysql database to fetch team and player data.")
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
            config_screen(db, navigator) # Config screen is shown only once per session. No need to use navigator method!
            break
        except mysql.Error as err:
            print(f"Error: {err}")
            print("Incorrect password, please try again.")


def config_screen(db, navigator):
    while True:
        clear_screen()
        print(baseball_art_large)
        
        print("Game Configuration")
        print("------------------------------------------------------------------------------------\n")
        print("Freshly install the database if this is your first time playing!")
        print("If this is not your first time playing, Fresh Install to reset progress or select Continue!\n")
        print("Options:")
        print("[1] Fresh Install")
        print("[2] Continue")

        choice = input("Please choose an option above: ")
        if choice == '1':
            create_db(db)
            
        elif choice != '2':
            print("Invalid choice. Try again.")
            time.sleep(1)  

        navigator.show_screen(main_menu, db, navigator)
        break 

def main_menu(db, navigator):
    while True:
        transition()
        print("Main Menu")
        print("------------------------------------------------------------------------------------\n")
        print("Game Modes: ")
        print("[1] Create a team")
        print("[2] Manage an existing team")
        choice = input("Please choose an option above: ")
        if choice == '1':
            navigator.show_screen(create_team_screen, db, navigator)
        elif choice == '2':
            navigator.show_screen(manage_team_screen, db, navigator)
        else:
            print("Invalid choice. Try again.")
            time.sleep(1)

def create_team_screen(db, navigator):
    while True:
        transition()
        print("Create a Team")
        print("------------------------------------------------------------------------------------\n")

        get_all_teams(db)

        print("[0] Go Back")
        choice = input("Please choose an option above: ")
        if choice == '0':
            navigator.go_back()
            break
        else:
            print("Invalid choice. Try again.")
            time.sleep(1)
    
def manage_team_screen(db, navigator):
    while True:
        transition()
        print("Manage a Team")
        print("------------------------------------------------------------------------------------\n")
        
        get_all_teams(db)

        print("[0] Go Back")
        choice = input("Please choose an option above: ")
        if choice == '0':
            navigator.go_back()
            break
        else:
            print("Invalid choice. Try again.")
            time.sleep(1)
