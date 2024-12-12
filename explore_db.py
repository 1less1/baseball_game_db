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

def explore_db_start_screen(db, navigator):
    while True:
        print_header("Explore the Database", "small")
        
        title = "What do you want explore? "
        options = ["Teams", "Players", "Coaches", "Stadiums"]
        print_options(title, options, True)

        choice = input("Please choose an option above: ").strip()
        if choice == '1':
            navigator.show_screen(team_screen, db, navigator)
        elif choice == '2':
            navigator.show_screen(player_screen, db, navigator)
        elif choice == '3':
            navigator.show_screen(coach_screen, db, navigator)
        elif choice == '4':
            navigator.show_screen(stadium_screen, db, navigator)
        elif choice == '0':
            navigator.go_back(1)
            break
        else:
            invalid_choice()


# Team Screens (UI) ----------------------------------------------------------------------------------------------------
def team_screen(db, navigator):
    while True:
        print_header("Explore Teams", "small")

        display_all_teams(db)

        title = "What do you want explore?"
        options = ["Inspect Specific Team Data", "Sort Teams by Overall", "Show all Team Records", "Show a Team's Game History"]
        print_options(title, options, True)

        choice = input("Please choose an option above: ").strip()
        choices = ['1', '2', '3', '4']

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

        display_all_teams(db)

        team_ids = select_team_ids(db)
        team_names = select_team_names(db)

        if query_num == '1':
            header = "Inspect Specific Team Data"
            print(header)
            team_id = input("Please input a valid team number: ").strip()

            if team_id in team_ids:
                navigator.show_screen(query_result_screen, db, navigator, header, lambda: select_team_data(db, team_id))
            else:
                invalid_choice()
        
        elif query_num == '2':
            header = "Teams Sorted By Overall Descending"
            navigator.show_screen(query_result_screen, db, navigator, header, lambda: sort_team_overall(db))

        elif query_num == '3':
            header = "Team Records"
            
            print(f"Fetch {header}")

            season_ids = select_all_seasons(db)
            season_id = input("Please input a valid season number: ").strip()
            if season_id in season_ids:
                navigator.show_screen(query_result_screen, db, navigator, header, lambda: select_team_records(db, season_id))
            else:
                invalid_choice()

        elif query_num == '4':
            print("Fetch Team Game History")

            season_ids = select_all_seasons(db)

            season_id = input("Please input a valid season number: ").strip()
            team_id = input("Please input a valid team number: ").strip()

            if season_id not in season_ids or team_id not in team_ids:
                invalid_choice()
            else:
                header = f"Team {team_id}: {team_names[int(team_id)-1]} Game History"
                navigator.show_screen(query_result_screen, db, navigator, header, lambda: select_team_games(db, team_id, season_id))

# Player Screens (UI) ----------------------------------------------------------------------------------------------------
def player_screen(db, navigator):
    while True:
        print_header("Explore Players", "small")

        display_all_teams(db)

        title = "What do you want explore?"
        options = ["Team Rosters", "Player Search"]
        print_options(title, options, True)

        choice = input("Please choose an option above: ").strip()
        choices = ['1', '2']

        if choice in choices:
            navigator.show_screen(team_query_screen, db, navigator, choice)
        elif choice == '0':
            navigator.go_back(1)
            break
        else:
            invalid_choice()


# Universal Screen (UI) ----------------------------------------------------------------------------------------------------
def query_result_screen(db, navigator, header, query):
    while True:
        print_header(str(header), "small")

        query()

        title =""
        options = ["Run Another Search"]
        print_options(title, options, True)

        choice = input("Please choose an option above: ").strip()
        if choice == '1':
            navigator.go_back(1)
            break
        if choice == '0':
            navigator.go_back(2)
            break
        else:
            invalid_choice()





def coach_screen(db, navigator):
    None

def stadium_screen(db, navigator):
    None