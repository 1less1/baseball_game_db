import mysql.connector as mysql


# Team Table Queries --------------------------------------------------

def display_all_teams(db):
    cursor = db.cursor()
    query = "SELECT * FROM Team"
    cursor.execute(query)
    records = cursor.fetchall()
    for record in records:
        print("Team " + str(record[0]) + ": ", record[2], record[1], "- League: "+ str(record[3]))
    print()
    cursor.close()
    return None

def select_team_ids(db):
    cursor = db.cursor()
    query = "SELECT Team_ID FROM Team"
    cursor.execute(query)
    records = cursor.fetchall()
    cursor.close()  # Always close the cursor
    return [str(record[0]) for record in records]  # Extract the first element from each tuple

# Team Query Option 1
def select_team_data(db, team_id):
    cursor = db.cursor()

    # SELECT Query
    team_query = "SELECT * FROM Team WHERE Team_ID = %s"  # mysql placeholder %s used for substituting user input
    cursor.execute(team_query, (team_id,))
    team_record = cursor.fetchone()

    # Subquery
    stadium_query = "SELECT Name FROM Stadium WHERE Stadium_ID = (SELECT Stadium_ID FROM Team WHERE Team_ID = %s);"
    cursor.execute(stadium_query, (team_id,))
    stadium_record = cursor.fetchone()
    
    if team_record:  # Check if a record exists
        print("Team ID: " + str(team_record[0]))
        print("Name: " + str(team_record[1]))
        print("Hometown: " + str(team_record[2]))
        print("League: " + str(team_record[3]))
        print("Salary Cap: $" + str(team_record[4]))
        if stadium_record:
            print("Stadium: " + str(stadium_record[0]))
    else:
        print("No team found with the given Team ID.")

    cursor.close()
    return None

# Team Query Option 2

def sort_team_overall(db):
    None