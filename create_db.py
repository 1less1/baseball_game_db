import mysql.connector as mysql
import os
import time

# Creates the mysql database and populates it with base data

def create_db(db):
    cursor = db.cursor()

    # List of SQL script files in the correct order for data importation
    sql_files = [
        "create_baseball_game_db.sql",
        "insert_base_countries.sql",
        "insert_base_positions.sql",
        "insert_base_stadiums.sql",
        "insert_base_teams.sql",
        "insert_base_coaches.sql",
        "insert_base_players.sql",
        "insert_base_ratings.sql",
        "insert_base_seasons.sql",
        "insert_base_games.sql",
        "insert_base_game_stats.sql"
    ]
    
    # Path to the folder containing SQL scripts
    script_folder = "data_insertion_scripts"

    # Execute each SQL script
    for file_name in sql_files:

        # Delayed Processing Messages!
        print("\nProcessing...")
        print(f"Executing scripts in file: {file_name}")
        time.sleep(1) 

        file_path = os.path.join(script_folder, file_name)

        with open(file_path, 'r') as file:
            sql_script = file.read()
        
        statements = sql_script.split(';')
        
        for statement in statements:
        
            if statement.strip():
                try:
                    print(f"Executing statement: {statement}")  # Print the statement before execution
                    for result in cursor.execute(statement, multi=True):
                        if result.with_rows:
                            result.fetchall()  # Fetch all results to clear unread result
                
                except mysql.Error as err:
                    print(f"Error: {err}")
                    print(f"Statement: {statement}")

    print("\nSQL scripts executed successfully!!!")
    db.commit()
    time.sleep(2)

