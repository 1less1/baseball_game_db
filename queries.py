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

def select_team_data(db, team_id):
    cursor = db.cursor()
    query = "SELECT * FROM Team WHERE Team_ID = %s"  # mysql placeholder %s used for substituting user input
    cursor.execute(query, (team_id,))
    record = cursor.fetchone()
    
    if record:  # Check if a record exists
        print("Team ID: " + str(record[0]))
        print("Name: " + str(record[1]))
        print("Hometown: " + str(record[2]))
        print("League: " + str(record[3]))
        print("Salary Cap: $" + str(record[4]))
        print("Stadium ID: " + str(record[5]))  # Later improve this query to fetch Stadium details
        print()
    else:
        print("No team found with the given Team ID.")
    
    cursor.close()
    return None