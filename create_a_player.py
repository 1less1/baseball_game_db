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

def create_a_player_start_screen(db, navigator):
    while True:
        print_header("Create a Player", "small")
    
        options = ["Create a Player", "Delete a Player"]
        print_options("Welcome to create a player!", options, True)

        choice = input("Please choose an option above: ").strip()
        if choice == '1':
            navigator.show_screen(choose_player_name_screen, db, navigator)
        elif choice == '2':
            navigator.show_screen(dap_screen, db, navigator)
        elif choice == '0':
            navigator.go_back(1)
            break
        else:
            invalid_choice()


def print_attribute_progress(attributes):
    print("Current Progress: ")
    print(attributes)
    print()

# Name Your New Player
def choose_player_name_screen(db, navigator):
    while True:
        print_header("Create a Player", "small")
        
        player_attributes = []
        print_attribute_progress(player_attributes)


        print_small_header("Enter the new player's NAME")

        # Ensure First Name is not null or empty
        while True:
            first_name = input("First Name: ").strip()
            if first_name:
                break
            else:
                print("Error: First Name cannot be empty. Please enter a valid First Name.")

        # Ensure Last Name is not null or empty
        while True:
            last_name = input("Last Name: ").strip()
            if last_name:
                break
            else:
                print("Error: Last Name cannot be empty. Please enter a valid Last Name.")

        player_attributes.append(first_name)
        player_attributes.append(last_name)

        options = ["Yes"]
        print_options("Would you like to continue?", options, True)

        choice = input("Please choose an option above: ").strip()
        if choice == '1':
            navigator.show_screen(choose_player_position_screen, db, navigator, player_attributes)
        elif choice == '0':
            navigator.go_back(1)
            break
        else:
            invalid_choice()

        #team_id = input("Team ID (or leave blank for NULL): ").strip()
        #age = input("Age: ").strip()
        #country_id = input("Country ID: ").strip()

# Choose Your New Player's Position
def choose_player_position_screen(db, navigator, player_attributes): # player_attributes is a list of all user inputs to create a new player 
    while True:
        print_header("Create a Player", "small")

        print_attribute_progress(player_attributes)

        print_small_header("Enter the new player's POSITION")

        position_ids = select_all_positions(db)
        
        while True:
            position_id = input("Enter the new player's POSITION ID: ").strip()
            if position_id in position_ids:
                break
            else:
                print("Error: Invalid position ID. Please choose a number 1 through 9 from above!")
        
        player_attributes.append(int(position_id))

        options = ["Yes"]
        print_options("Would you like to continue?", options, True)

        choice = input("Please choose an option above: ").strip()
        if choice == '1':
            navigator.show_screen(choose_player_team_screen, db, navigator, player_attributes)
        elif choice == '0':
            navigator.go_back(1)
            break
        else:
            invalid_choice()

# Choose Your New Player's Team
def choose_player_team_screen(db, navigator, player_attributes):
    while True:
        print_header("Create a Player", "small")

        print_attribute_progress(player_attributes)

        print_small_header("Assign the new player to a TEAM")

        team_ids = select_team_ids(db)
        display_all_teams(db)
        
        while True:
            team_id = input("Enter the new player's TEAM ID or [NULL] to be a Free Agent: ").strip()
            if team_id in team_ids:
                break
            elif team_id.upper() == "NULL":
                break
            else:
                print("Error: Invalid TEAM ID. Please choose a team number above or input nothing to be a Free Agent!")
        
        player_attributes.append(int(team_id))

        options = ["Yes"]
        print_options("Would you like to continue?", options, True)

        choice = input("Please choose an option above: ").strip()
        if choice == '1':
            navigator.show_screen(choose_player_age_screen, db, navigator, player_attributes)
        elif choice == '0':
            navigator.go_back(1)
            break
        else:
            invalid_choice()

# Choose Your New Player's Age
def choose_player_age_screen(db, navigator, player_attributes):
    while True:
        print_header("Create a Player", "small")

        print_attribute_progress(player_attributes)

        print_small_header("Enter the new player's AGE")

        while True:
            age = int(input("Enter an age of 99 or less: ").strip())
            if age <= 99:
                break
            else:
                print("Error: Invalid TEAM ID. Please choose a team number above or input nothing to be a Free Agent!")
        
        player_attributes.append(age)

        options = ["Yes"]
        print_options("Would you like to continue?", options, True)

        choice = input("Please choose an option above: ").strip()
        if choice == '1':
            navigator.show_screen(choose_player_country_screen, db, navigator, player_attributes)
        elif choice == '0':
            navigator.go_back(1)
            break
        else:
            invalid_choice()

def choose_player_country_screen(db, navigator, player_atrributes):
    None
        
# "Delete A Player" Screen 
def dap_screen(db, navigator):
    while True:
        None