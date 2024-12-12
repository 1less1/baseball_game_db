# Universal Imports
import mysql.connector as mysql
import platform
import os
import getpass
import time
from utils import *
from navigator import Navigator

# Document Specific Imports
from queries import *

# Screens (UI) --------------------------------------------------

def explore_db_start_screen(db, navigator):
    while True:
        print_header("Explore the Database", "small")
        
        title = "What do you want explore? "
        options = ["Teams", "Players", "Coaches", "Stadiums"]
        print_options(title, options, True)

        choice = input("Please choose an option above: ")
        if choice == '1':
            navigator.show_screen(team_screen, db, navigator)
        elif choice == '2':
            navigator.show_screen(players_screen, db, navigator)
        elif choice == '3':
            navigator.show_screen(coaches_screen, db, navigator)
        elif choice == '4':
            navigator.show_screen(stadiums_screen, db, navigator)
        elif choice == '0':
            navigator.go_back(1)
            break
        else:
            invalid_choice()

def team_screen(db, navigator):
    while True:
        print_header("Explore Teams", "small")

        display_all_teams(db)

        title = "What do you want explore?"
        options = ["Inspect Specific Team Data", "Sort Teams by Overall", "Show a Team's Record"]
        print_options(title, options, True)

        choice = input("Please choose an option above: ")
        choices = ['1', '2', '3']

        if choice in choices:
            navigator.show_screen(team_query_screen, db, navigator, choice)
        elif choice == '0':
            navigator.go_back(1)
            break
        else:
            invalid_choice()

def team_query_screen(db, navigator, query_num):
    while True:
        print_header("Explore Teams", "small")

        team_ids = select_team_ids(db)

        if query_num == '1':
            title = "Inspect Specific Team Data"
            print(title)
            team_id = input("Please input a valid team number: ")

            if team_id in team_ids:
                navigator.show_screen(query_result_screen, db, navigator, title, lambda: select_team_data(db, team_id))
            else:
                invalid_choice()
        
        elif query_num == '2':
            None
        elif query_num == '3':
            None

def query_result_screen(db, navigator, header, query):
    while True:
        print_header(str(header), "small")

        query()

        title =""
        options = ["Run Another Search"]
        print_options(title, options, True)

        choice = input("Please choose an option above: ")
        if choice == '1':
            navigator.go_back(1)
            break
        if choice == '0':
            navigator.go_back(2)
            break
        else:
            invalid_choice()




def players_screen(db, navigator):
    None

def coaches_screen(db, navigator):
    None

def stadiums_screen(db, navigator):
    None