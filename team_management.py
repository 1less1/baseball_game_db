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


# Screens (UI) ----------------------------------------------------------------------------------------------------

def team_management_start_screen(db, navigator):
    while True:
        print_header("Team Management", "small")
    
        options = ["Create a Team", "Delete a Team", "Update a Team"]
        print_options("Welcome to Team Management!", options, True)

        choice = input("Please choose an option above: ").strip()
        if choice == '1':
            navigator.show_screen(create_a_team_screen, db, navigator)
        elif choice == '2':
            navigator.show_screen(delete_a_team_screen, db, navigator)
        elif choice == '3':
            navigator.show_screen(update_a_team_screen, db, navigator)
        elif choice == '0':
            navigator.go_back(1)
            break
        else:
            invalid_choice()
        
        


# Create a Team ----------------------------------------------------------------------------------------------------
def get_valid_team_attribute(prompt, type, stadium_ids):
    while True:
        attribute = input(prompt).strip()
        if type == "string":
            return attribute
        elif type == "league":
            if attribute.upper() in ["AL", "NL"]:
                return attribute.upper()
            else:
                print("Please enter 'AL' or 'NL'.")
        elif type == "salary":
            try:
                salary = float(attribute)
                if 0 <= salary <= 9999999.99:
                    return salary
                else:
                    print("Salary must be between 0 and 9,999,999.99")
            except ValueError:
                print("Invalid input. Please enter a valid Salary Cap.")
        elif type == "stadium":
            if attribute.upper() == "NULL":
                return "NULL"
            elif stadium_ids and attribute in stadium_ids:
                return int(attribute)
            else:
                print("Please enter a valid Stadium ID or 'NULL'.")
        else:
            print("Invalid input. Please try again.")


def create_a_team_screen(db, navigator):
    while True:
        print_header("Create a Team", "small")

        print_small_header("Customize New Team Attributes")

        name = get_valid_team_attribute ("Enter Team Name: ", "string", None)
        home_town = get_valid_team_attribute("Enter Hometown: ", "string", None)
        league = get_valid_team_attribute("Enter League [AL or NL]: ", "league", None)
        salary_cap = get_valid_team_attribute("Enter Salary Cap: $", "salary", None)

        print()
        print_small_header("Available Stadiums")
        stadium_ids = select_stadiums(db, "available")
        stadium_id = get_valid_team_attribute("Enter Stadium ID: ", "stadium", stadium_ids)

        team_attributes = [name, home_town, league, salary_cap, stadium_id]

        
        options = ["Yes", "Restart", "Go Back to Team Management Menu"]
        print_options("Would you like to add the team to the DB?", options, False)

        while True:
            choice = input("Please choose an option above: ").strip()
            if choice == '1':
                new_team_id = insert_new_team(db, team_attributes)
                time.sleep(2)
                navigator.show_screen(new_team_added_screen, db, navigator, new_team_id)
            elif choice == '2':
                print("Resetting...")
                time.sleep(2)
                clear_screen()
                break
            elif choice == '3':
                navigator.go_back(1)
                break
            else:
                print("Invalid Choice. Try again.")
      

def new_team_added_screen(db, navigator, new_team_id):
    while True:
        print_header("New Team Added", "small")

        select_team_data(db, new_team_id)

        choice = input("Press enter to Team Management: ").strip()
        if choice == "":
            navigator.go_back(2)
        else:
            invalid_choice()



# Delete a Team ----------------------------------------------------------------------------------------------------
def delete_a_team_screen(db, navigator):
    while True:
        print_header("Delete a Team", "small")

        display_all_teams(db)

        team_ids = select_team_ids(db)
        
        while True:
            team_id = input("Enter the desired Team ID to DELETE: ").strip()
            if team_id in team_ids:
                break
            else:
                print("Error: Invalid TEAM ID. Please choose a Team ID above.")

        options = ["Yes", "No"]
        print_options(f"Would you like to delete Team {team_id} from the DB?", options, True)

        choice = input("Please choose an option above: ").strip()
        if choice == '1':
            delete_specific_team(db, team_id)
            time.sleep(3)
            navigator.go_back(1)
        elif choice == '2':
            print("Resetting...")
            time.sleep(2)
            clear_screen()
        elif choice == '0':
            navigator.go_back(1)
            break
        else:
            invalid_choice()

# Update a Team ----------------------------------------------------------------------------------------------------
def update_a_team_screen(db, navigator):
    while True:
        print_header("Update a Team", "small")
        
        display_all_teams(db)
        team_ids = select_team_ids(db)

        while True:
            team_id = input("Enter the desired Team Number to UPDATE: ").strip()
            if team_id in team_ids:
                break
            else:
                print("Error: Invalid TEAM ID. Please choose a Team Number above.")

        while True:
            new_team_id = input(f"What would you like to change Team {team_id}'s ID to? ")
            if new_team_id not in team_ids:
                    break
            else:
                print("Error: Invalid TEAM ID. Please choose a Team Number above.")
        
        options = ["Yes", "No"]
        print_options(f"Would you like to update Team {team_id}'s ID to [{new_team_id}]?", options, True)

        choice = input("Please choose an option above: ").strip()
        if choice == '1':
            update_specific_team(db, team_id, new_team_id)
            time.sleep(3)
            navigator.go_back(1)
        elif choice == '2':
            print("Resetting...")
            time.sleep(2)
            clear_screen()
        elif choice == '0':
            navigator.go_back(1)
            break
        else:
            invalid_choice()

        




