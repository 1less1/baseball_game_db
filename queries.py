import mysql.connector as mysql
from datetime import datetime



# Team Table Queries ----------------------------------------------------------------------------------------------------

def display_all_teams(db):
    cursor = db.cursor()
    query = "SELECT * FROM Team"
    cursor.execute(query)
    records = cursor.fetchall()

    if records:  # Fixing the check from 'record' to 'records'
        for record in records:
            print(f"Team {record[0]}: {record[2]} {record[1]} - League: {record[3]}")
        print()
    else:
        print("No teams found in the db")
    print()

    cursor.close()

def select_team_ids(db):
    cursor = db.cursor()
    query = "SELECT Team_ID FROM Team"
    cursor.execute(query)
    records = cursor.fetchall()
    cursor.close()  # Always close the cursor
    return [str(record[0]) for record in records]  # Extract the first element from each tuple to return list of strings

def select_team_names(db):
    cursor = db.cursor()
    query = "SELECT Name FROM Team ORDER BY Team_ID ASC;"
    cursor.execute(query)
    records = cursor.fetchall()
    cursor.close()  # Always close the cursor
    return [str(record[0]) for record in records]  # Extract the first element from each tuple to return list of strings


# Team Queries ----------------------------------------------------------------------------------------------------
# Team Query Option 1
def select_team_data(db, team_id):
    cursor = db.cursor()

    query = "SELECT t.*, s.Name AS Stadium_Name FROM Team t JOIN Stadium s ON t.Stadium_ID = s.Stadium_ID WHERE t.Team_ID = %s;"
    cursor.execute(query, (team_id,))
    record = cursor.fetchone()
    
    if record:  # Check if a record exists
        print(f"Team ID: {record[0]}")
        print(f"Name: {record[1]}")
        print(f"Hometown: {record[2]}")
        print(f"League: {record[3]}")
        print(f"Salary Cap: ${record[4]}")
        print(f"Stadium ID: {record[5]}")
        print(f"Stadium: {record[6]}")
    else:
        print("No team found with the given Team ID.")
    print()

    cursor.close()

# Team Query Option 2
def sort_team_overall(db):
    cursor = db.cursor()

    query = "SELECT t.Team_ID, t.Name, ROUND(AVG(CASE WHEN p.Position_ID = 1 THEN (r.K_Per_Nine + r.BB_Per_Nine + r.HR_Per_Nine) / 3 WHEN p.Position_ID BETWEEN 2 AND 8 THEN (r.Contact + r.Power + r.Eye) / 3 ELSE 0 END)) AS Team_Overall FROM Team t JOIN Player p ON t.Team_ID = p.Team_ID JOIN Ratings r ON p.Player_ID = r.Player_ID GROUP BY t.Team_ID, t.Name ORDER BY Team_Overall DESC;"
    cursor.execute(query)
    records = cursor.fetchall()

    if records:
         for record in records:
            print(f"Team {record[0]}: {record[1]} - {record[2]} Overall")
    else:
        print("No teams found. Overall could not be calculated!")
    print()
    
    cursor.close()


def select_all_seasons(db):
    cursor = db.cursor()

    query = "SELECT * FROM Season"
    cursor.execute(query)
    records = cursor.fetchall()

    if records:
        print("Historical Seasons: ")
        for record in records:
            print(f"Season {record[0]} - {record[1]}")
    else:
        print("No historical seasons found!")
    print()

    cursor.close()
    return [str(record[0]) for record in records]

# Team Query Option 3
def select_team_records(db, season_id):
    cursor = db.cursor()

    query = "SELECT t.Team_ID, t.name AS Team_Name, (SELECT COUNT(*) FROM game WHERE Winner = t.Team_ID AND Season_ID = %s) AS Wins, (SELECT COUNT(*) FROM game WHERE Loser = t.Team_ID AND Season_ID = %s) AS Losses FROM team t ORDER BY t.Team_ID;"
    cursor.execute(query, (season_id, season_id))
    records = cursor.fetchall()

    if records:
        print(f"Team Records for Season {season_id}")
        for record in records:
            print(f"Team {record[0]}: {record[1]} - Wins: {record[2]} Losses: {record[3]}")
        print()
    else:
        print("No Team records can be found for this season. Potentially sim some games or import more data!")
    print()

    cursor.close()

# Team Query Option 4
def select_team_games(db, team_id, season_id):
    cursor = db.cursor()

    query = """
    SELECT 
        g.Game_ID, 
        g.Season_ID, 
        g.Date, 
        ht.Name AS Home_Team_Name, 
        g.Home_Score, 
        at.Name AS Away_Team_Name, 
        g.Away_Score, 
        g.Winner, 
        g.Loser
    FROM 
        game g
    JOIN 
        team ht ON g.Home_Team = ht.Team_ID
    JOIN 
        team at ON g.Away_Team = at.Team_ID
    WHERE 
        (g.Home_Team = %s OR g.Away_Team = %s) AND g.Season_ID = %s
    ORDER BY 
        g.Date ASC;
    """
    
    cursor = db.cursor()
    cursor.execute(query, (team_id, team_id, season_id))
    records = cursor.fetchall()

    # Define column widths (adjust as needed)
    game_id_width = 12
    date_width = 15
    season_id_width = 12
    team_name_width = 30
    score_width = 12
    
    # Print header
    print(f"{'Game ID':<{game_id_width}} {'Date':<{date_width}} {'Season ID':<{season_id_width}} {'Home Team':<{team_name_width}} {'Home Score':<{score_width}} {'Away Team':<{team_name_width}} {'Away Score':<{score_width}}")
    print('-' * (game_id_width + date_width + season_id_width + (team_name_width * 2) + (score_width * 3)))
    
    # Loop through records and print each row
    for record in records:
        # Format each record
        game_id = str(record[0]).ljust(game_id_width)
        # Convert date to string and format it
        date_formatted = record[2].strftime('%m-%d') if isinstance(record[2], datetime) else str(record[2])
        date_str = date_formatted.ljust(date_width)  # Now it's a string, so ljust() will work
        season_id = str(record[1]).ljust(season_id_width)
        home_team = str(record[3]).ljust(team_name_width)
        home_score = str(record[4]).ljust(score_width)
        away_team = str(record[5]).ljust(team_name_width)
        away_score = str(record[6]).ljust(score_width)
        
        # Print formatted record
        print(f"{game_id} {date_str} {season_id} {home_team} {home_score} {away_team} {away_score}")
    print()
    
    cursor.close()

# Player Queries ----------------------------------------------------------------------------------------------------