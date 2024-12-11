import mysql.connector as mysql
import os
import platform

# Function that connects the python program to the localhost mysql database
def connect(password_str):
    db = mysql.connect(
        host = "localhost",
        user = "root",
        passwd = password_str,
        database = "baseball_game_db"
    )
    return db

# Basic Starter Query
def get_all_teams(db):
    
    cursor = db.cursor()
    query = "SELECT * FROM Team"

    cursor.execute(query)

    records = cursor.fetchall()

    for record in records:
        print(record[2], record[1], "- League: "+ str(record[3]))

    cursor.close
    return None

def clear_screen():
    # Check the operating system
    if platform.system() == "Windows":
        os.system("cls")  # Clear command for Windows
    else:
        os.system("clear")  # Clear command for Unix/Linux/MacOS

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

# Main Program used to manage the game
def main():
    clear_screen()

    print("Welcome to Fantasy Baseball!")
    print(baseball_art_large)
    print("This game was created by Dom Olhava and incorporates a mysql database to fetch team and player data.")
    print("Have fun! \n")

    password = input("Enter your database password to start the game: ")
    db = connect(password)

    
    clear_screen()

    print(baseball_art_small)

    print()

    get_all_teams(db)

    print("\nBye!")


# Function Calls!!!
main()
