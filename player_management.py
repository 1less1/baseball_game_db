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

def player_management_start_screen(db, navigator):
    while True:
        print_header("Player Management", "small")
    
        options = ["Create a Player", "Delete a Player"]
        print_options("Welcome to Player Management!", options, True)

        choice = input("Please choose an option above: ").strip()
        if choice == '1':
            navigator.show_screen(choose_player_name_screen, db, navigator)
        elif choice == '2':
            navigator.show_screen(dap_search_screen, db, navigator)
        elif choice == '0':
            navigator.go_back(1)
            break
        else:
            invalid_choice()


# Create a Player ----------------------------------------------------------------------------------------------------
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

        options = ["Yes"]
        print_options("Would you like to continue?", options, True)

        choice = input("Please choose an option above: ").strip()
        if choice == '1':
            player_attributes.append(first_name)
            player_attributes.append(last_name)
            navigator.show_screen(choose_player_position_screen, db, navigator, player_attributes)
        elif choice == '0':
            navigator.go_back(1)
            break
        else:
            invalid_choice()

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

        options = ["Yes"]
        print_options("Would you like to continue?", options, True)

        choice = input("Please choose an option above: ").strip()
        if choice == '1':
            player_attributes.append(position_id)
            navigator.show_screen(choose_player_team_screen, db, navigator, player_attributes)
        elif choice == '0':
            player_attributes.pop()
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
            team_id = input("Enter the new player's [TEAM ID] or [NULL] to be a Free Agent: ").strip()
            if team_id in team_ids:
                break
            elif team_id.upper() == "NULL":
                team_id = team_id.upper()
                break
            else:
                print("Error: Invalid TEAM ID. Please choose a team number above or input nothing to be a Free Agent!")

        options = ["Yes"]
        print_options("Would you like to continue?", options, True)

        choice = input("Please choose an option above: ").strip()
        if choice == '1':
            player_attributes.append(team_id)
            navigator.show_screen(choose_player_age_screen, db, navigator, player_attributes)
        elif choice == '0':
            player_attributes.pop()
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
            age = input("Enter an age of 99 or less: ").strip()

            # Attempt to convert the input to an integer
            try:
                age = int(age)
                if age <= 99 and age > 0:
                    break  # Exit the loop if the age is valid
                else:
                    print("Error: Invalid age. The player can be from 1 to 99 years old!")
            except ValueError:
                print("Error: Invalid age. Enter an integer.")

        options = ["Yes"]
        print_options("Would you like to continue?", options, True)

        choice = input("Please choose an option above: ").strip()
        if choice == '1':
            player_attributes.append(age)
            navigator.show_screen(choose_player_country_screen, db, navigator, player_attributes)
        elif choice == '0':
            player_attributes.pop()
            navigator.go_back(1)
            break
        else:
            invalid_choice()

def choose_player_country_screen(db, navigator, player_attributes):
    while True:
        print_header("Create a Player", "small")
        
        print_attribute_progress(player_attributes)

        print_small_header("Enter the new player's COUNTRY")

        country_ids = select_all_countries(db)


        while True:
            country_id = input("Enter a 3 digit Country ID from above: ").strip().upper()
            if country_id in country_ids:
                break
            else:
                print("Error: Invalid Country ID.")

        options = ["Yes"]
        print_options("Would you like to continue?", options, True)

        choice = input("Please choose an option above: ").strip()
        if choice == '1':
            player_attributes.append(country_id)
            navigator.show_screen(add_player_to_db_screen, db, navigator, player_attributes)
        elif choice == '0':
            player_attributes.pop()
            navigator.go_back(1)
            break
        else:
            invalid_choice()

def add_player_to_db_screen(db, navigator, player_attributes):
    while True:
        print_header("Create a Player", "small")

        print_attribute_progress(player_attributes)

        print_small_header("Finalize Player")


        options = ["Yes", "Go Back One Page", "Go Back to Create a Player"]
        print_options("Would you like to add the Player to the DB?", options, False)

        choice = input("Please choose an option above: ").strip()
        if choice == '1':
            new_player_id=insert_new_player(db, player_attributes)
            time.sleep(2)
            navigator.show_screen(new_player_added_screen, db, navigator, new_player_id)
        elif choice == '2':
            player_attributes.pop()
            navigator.go_back(1)
        elif choice == '3':
            player_attributes.clear()
            navigator.go_back(6)
            break
        else:
            invalid_choice()


def new_player_added_screen(db, navigator, new_player_id):
    while True:
        print_header("New Player Created", "small")

        print_player_art()

        select_specific_player_info(db, new_player_id)

        choice = input("Press enter to add PLAYER RATINGS: ").strip()
        if choice == "":
            navigator.show_screen(choose_player_ratings_screen, db, navigator, new_player_id)
        else:
            invalid_choice()

def get_valid_rating(prompt):
    while True:
        try:
            rating = int(input(prompt))
            if 1 <= rating <= 99:
                return rating
            else:
                print("Please enter a rating between 1 and 99.")
        except ValueError:
            print("Invalid input. Please enter an integer between 1 and 99.")

def collect_player_ratings(new_player_id):
    while True:
        
        contact = get_valid_rating("Enter Contact Rating (1-99): ")
        power = get_valid_rating("Enter Power Rating (1-99): ")
        eye = get_valid_rating("Enter Eye Rating (1-99): ")
        speed = get_valid_rating("Enter Speed Rating (1-99): ")
        k_per_nine = get_valid_rating("Enter K/9 Rating (1-99): ")
        bb_per_nine = get_valid_rating("Enter BB/9 Rating (1-99): ")
        hr_per_nine = get_valid_rating("Enter HR/9 Rating (1-99): ")

        # Store the ratings in a list
        player_ratings = [new_player_id, contact, power, eye, speed, k_per_nine, bb_per_nine, hr_per_nine]

        # Check if all values are valid before accepting
        if all(1 <= num <= 99 for num in player_ratings[1:]):
            return player_ratings
        else:
            print("One or more ratings are invalid. Please enter values between 1 and 99.")


def choose_player_ratings_screen(db, navigator, new_player_id):
    while True:
        print_header("Create a Player", "small")

        print_small_header("Add Player Ratings")
        print("Ratings are recorded from 1 through 99.")
        print("The higher the rating, the better the performance!\n")

        player_ratings = collect_player_ratings(new_player_id)


        while True:
            options = ["Yes", "Restart"]
            print_options("Would you like to add the player ratings to the DB?", options, False)

            choice = input("Please choose an option above: ").strip()
            if choice == '1':
                new_player_id=insert_player_ratings(db, player_ratings)
                time.sleep(2)
                navigator.show_screen(new_ratings_added_screen, db, navigator, new_player_id)
            elif choice == '2':
                print("Resetting...")
                time.sleep(2)
                clear_screen()
                break
            else:
                print("Invalid Choice. Try again.")


def new_ratings_added_screen(db, navigator, new_player_id):
    while True:
        print_header("New Player Ratings Added", "small")

        print_player_art()

        select_specific_player_ratings(db, new_player_id)

        choice = input("Press enter to Go Back to Player Management: ").strip()
        if choice == "":
            navigator.go_back(9)
        else:
            invalid_choice()
            




# Delete A Player ----------------------------------------------------------------------------------------------------
def dap_search_screen(db, navigator):
    while True:
        print_header("Delete a Player", "small")

        print_player_art()

        header = "Player Search"
        player_name = input("Enter a player's first name: ").strip()
        navigator.show_screen(dap_finalize_screen, db, navigator, header, lambda: search_player_first_name(db, player_name))


def dap_finalize_screen(db, navigator, header, query):
    while True:
        print_header(header, "small")

        player_ids=query()

        options = ["Run Another Search", "Delete Player"]
        print_options("", options, True)

        choice = input("Please choose an option above: ").strip()

        if choice == '2':
            player_id = input("Please input a valid player id: ")
            if player_id in player_ids:
                delete_player(db, player_id)
                time.sleep(3)
                navigator.go_back(2)
            else:
                invalid_choice()
        elif choice == '1':
            navigator.go_back(1)
            break
        elif choice == '0':
            navigator.go_back(2)
            break
        else:
            invalid_choice()