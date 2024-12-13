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
    query = "SELECT Team_ID, Name FROM Team ORDER BY Team_ID ASC;"
    cursor.execute(query)
    records = cursor.fetchall()
    cursor.close()  # Always close the cursor
    return [(record[0], record[1]) for record in records]  # Return a list of tuples (Team_ID, Name)



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

    # Column Widths
    team_id_width = 12
    name_width = 30
    wins_width = 12
    losses_width = 12

    # Check if records exist
    if records:
        # Print header
        print(f"{'Team ID':<{team_id_width}} {'Name':<{name_width}} {'Wins':<{wins_width}} {'Losses':<{losses_width}}")
        print('-' * (team_id_width + name_width + wins_width + losses_width))
        
        # Loop through records and print each row
        for record in records:
            team_id = str(record[0]).ljust(team_id_width)
            name = str(record[1]).ljust(name_width)
            wins = str(record[2]).ljust(wins_width)
            losses = str(record[3]).ljust(losses_width)
            
            # Print formatted record
            print(f"{team_id} {name} {wins} {losses}")
        print()
    else:
        print("No Team records can be found for this season. Potentially sim some games or import more data!")

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
    LEFT JOIN 
        team ht ON g.Home_Team = ht.Team_ID
    LEFT JOIN 
        team at ON g.Away_Team = at.Team_ID
    WHERE 
        (g.Home_Team = %s OR g.Away_Team = %s) AND g.Season_ID = %s
    ORDER BY 
        g.Date ASC;
    """
    
    cursor.execute(query, (team_id, team_id, season_id))
    records = cursor.fetchall()

    # Column Widths
    game_id_width = 12
    date_width = 15
    season_id_width = 12
    team_name_width = 30
    score_width = 12
    
    # Print header
    print(f"{'Game ID':<{game_id_width}} {'Date':<{date_width}} {'Season ID':<{season_id_width}} {'Home Team':<{team_name_width}} {'Home Score':<{score_width}} {'Away Team':<{team_name_width}} {'Away Score':<{score_width}}")
    print('-' * (game_id_width + date_width + season_id_width + (team_name_width * 2) + (score_width * 3)))
    
    # Loop through records and print each row
    if records:
        for record in records:
            # Format each record
            game_id = str(record[0]).ljust(game_id_width)
            date_formatted = record[2].strftime('%m-%d') if isinstance(record[2], datetime) else str(record[2])
            date_str = date_formatted.ljust(date_width)
            season_id = str(record[1]).ljust(season_id_width)
            
            # Handle None values (NULL in DB)
            home_team = str(record[3] if record[3] is not None else "NULL").ljust(team_name_width)
            home_score = str(record[4]).ljust(score_width)
            away_team = str(record[5] if record[5] is not None else "NULL").ljust(team_name_width)
            away_score = str(record[6]).ljust(score_width)

            # Print formatted record
            print(f"{game_id} {date_str} {season_id} {home_team} {home_score} {away_team} {away_score}")
        print()
    else:
        print(f"Unable to find game history for Team {team_id}!")

    cursor.close()

# Player Queries ----------------------------------------------------------------------------------------------------
# Get ALL Players on a Team's Roster
def select_team_roster(db, team_id):
    cursor = db.cursor()

    query = "SELECT ply.*, pos.Code as Position FROM Player as ply JOIN position as pos ON ply.Position_ID = pos.Position_ID WHERE Team_ID =  %s;"
    cursor.execute(query, (team_id,))
    records = cursor.fetchall()

    # Column Widths
    player_id_width = 12
    first_name_width = 20
    last_name_width = 20
    position_id_width = 12
    position_width = 20
    team_id_width = 12
    age_width = 12
    country_width = 12

    if records:
        # Print header
        print(f"{'Player ID':<{player_id_width}} {'First':<{first_name_width}} {'Last':<{last_name_width}} {'Position ID':<{position_id_width}} {'Position':<{position_width}} {'Team ID':<{team_id_width}} {'Age':<{age_width}} {'Country':<{country_width}}")
        print('-' * (player_id_width + first_name_width + last_name_width + position_id_width + position_width + team_id_width + age_width + country_width + 6))
        
        # Loop through records and print each row
        for record in records:
            player_id = str(record[0]).ljust(player_id_width)
            first_name = str(record[1]).ljust(first_name_width)
            last_name = str(record[2]).ljust(last_name_width)
            position_id = str(record[3]).ljust(position_id_width)
            position = str(record[7]).ljust(position_width)
            team_id = str(record[4]).ljust(team_id_width)
            age = str(record[5]).ljust(age_width)
            country = str(record[6]).ljust(country_width)
            
            # Print formatted record
            print(f"{player_id} {first_name} {last_name} {position_id} {position} {team_id} {age} {country}")
        print()
    else:
        print("No player records can be found for this team. Potentially add more players or import more data!")
        print()

    cursor.close()

def select_team_player_ids(db, team_id):
    cursor = db.cursor()
    query = "SELECT Player_ID FROM Player WHERE Team_ID = %s"
    cursor.execute(query, (team_id,))
    records = cursor.fetchall()
    cursor.close()
    return [str(record[0]) for record in records]  # Extract the first element from each tuple to return list of strings

# Select ALL Ratings of a Specific Player
def select_specific_player_ratings(db, player_id):
    cursor = db.cursor()
    query = "SELECT r.*, p.First_Name as First, p.Last_Name as Last FROM Ratings as r JOIN Player as p ON r.Player_ID = p.Player_ID WHERE r.Player_ID = %s;"
    cursor.execute(query, (player_id,))
    records = cursor.fetchall()

    # Column Widths
    player_id_width = 12
    first_name_width = 15
    last_name_width = 15
    contact_width = 10
    power_width = 10
    eye_width = 10
    speed_width = 10
    k_per_nine_width = 10
    bb_per_nine_width = 10
    hr_per_nine_width = 10

    # Print header
    print(f"{'Player ID':<{player_id_width}} {'First':<{first_name_width}} {'Last':<{last_name_width}} {'Contact':<{contact_width}} {'Power':<{power_width}} {'Eye':<{eye_width}} {'Speed':<{speed_width}} {'K/9':<{k_per_nine_width}} {'BB/9':<{bb_per_nine_width}} {'HR/9':<{hr_per_nine_width}}")
    print('-' * (player_id_width + first_name_width + last_name_width + contact_width + power_width + eye_width + speed_width + k_per_nine_width + bb_per_nine_width + hr_per_nine_width + 4))

    # Loop through records and print each row
    for record in records:
        player_id_str = str(record[0]).ljust(player_id_width)
        first_name_str = str(record[8]).ljust(first_name_width)
        last_name_str = str(record[9]).ljust(last_name_width)
        contact_str = str(record[1]).ljust(contact_width)
        power_str = str(record[2]).ljust(power_width)
        eye_str = str(record[3]).ljust(eye_width)
        speed_str = str(record[4]).ljust(speed_width)
        k_per_nine_str = str(record[5]).ljust(k_per_nine_width)
        bb_per_nine_str = str(record[6]).ljust(bb_per_nine_width)
        hr_per_nine_str = str(record[7]).ljust(hr_per_nine_width)

        # Print formatted record
        print(f"{player_id_str} {first_name_str} {last_name_str} {contact_str} {power_str} {eye_str} {speed_str} {k_per_nine_str} {bb_per_nine_str} {hr_per_nine_str}")

    print()

    cursor.close()

# Select Game Stats Tied to a Specific Player and Season
def select_specific_player_game_stats(db, player_id, season_id):
    cursor = db.cursor()

    query = "SELECT gs.*, p.First_Name as First, p.Last_Name as Last FROM Game_Stats as gs JOIN Player as p ON gs.Player_ID = p.Player_ID WHERE gs.Player_ID = %s AND gs.Season_ID = %s;"
    cursor.execute(query, (player_id, season_id,))
    records = cursor.fetchall()

    # Column Widths
    player_id_width = 12
    first_name_width = 15
    last_name_width = 15
    season_id_width = 12
    games_played_width = 12
    at_bats_width = 8
    hits_width = 8
    rbis_width = 8
    runs_width = 8
    innings_pitched_width = 20
    earned_runs_width = 15
    strikeouts_width = 10

    # Print header
    print(f"{'Player ID':<{player_id_width}} {'First':<{first_name_width}} {'Last':<{last_name_width}} {'Season ID':<{season_id_width}} {'Games Played':<{games_played_width}} {'At Bats':<{at_bats_width}} {'Hits':<{hits_width}} {'RBIs':<{rbis_width}} {'Runs':<{runs_width}} {'Innings Pitched':<{innings_pitched_width}} {'Earned Runs':<{earned_runs_width}} {'Strikeouts':<{strikeouts_width}}")
    print('-' * (player_id_width + first_name_width + last_name_width + season_id_width + games_played_width + at_bats_width + hits_width + rbis_width + runs_width + innings_pitched_width + earned_runs_width + strikeouts_width + 14))

    # Loop through records and print each row
    for record in records:
        player_id_str = str(record[0]).ljust(player_id_width)
        first_name_str = str(record[10]).ljust(first_name_width)
        last_name_str = str(record[11]).ljust(last_name_width)
        season_id_str = str(record[1]).ljust(season_id_width)
        games_played_str = str(record[2]).ljust(games_played_width)
        at_bats_str = str(record[3]).ljust(at_bats_width)
        hits_str = str(record[4]).ljust(hits_width)
        rbis_str = str(record[5]).ljust(rbis_width)
        runs_str = str(record[6]).ljust(runs_width)
        innings_pitched_str = str(record[7]).ljust(innings_pitched_width)
        earned_runs_str = str(record[8]).ljust(earned_runs_width)
        strikeouts_str = str(record[9]).ljust(strikeouts_width)

        # Print formatted record
        print(f"{player_id_str} {first_name_str} {last_name_str} {season_id_str} {games_played_str} {at_bats_str} {hits_str} {rbis_str} {runs_str} {innings_pitched_str} {earned_runs_str} {strikeouts_str}")

    print()

    cursor.close()

# Search for players within the DB by First Name
def search_player_first_name(db, player_name):
    # Add wildcards around the input for partial matching
    wildcard_name = "%" + player_name + "%"  # Adds '%' before and after the input

    cursor = db.cursor()
    query = "SELECT * FROM Player WHERE First_Name LIKE %s"
    cursor.execute(query, (wildcard_name,))
    records = cursor.fetchall()

    if records:
        print(f"Found {len(records)} player(s) with first name matching '{player_name}':")
        
        for record in records:
            print(f"Player ID: {record[0]}, Name: {record[1]} {record[2]}")
    else:
        print(f"No players found with the first name matching '{player_name}'.")

    cursor.close()
    return [str(record[0]) for record in records]

# Select ALL Player Info from the Player table
def select_specific_player_info(db, player_id):
    cursor = db.cursor()
    
    query = """
    SELECT ply.*, pos.Code as Position 
    FROM Player as ply
    JOIN position as pos ON ply.Position_ID = pos.Position_ID 
    WHERE ply.Player_ID = %s;
    """
    cursor.execute(query, (player_id,))
    records = cursor.fetchall()

    # Column Widths
    player_id_width = 12
    first_name_width = 20
    last_name_width = 20
    position_id_width = 12
    position_width = 20
    team_id_width = 12
    age_width = 12
    country_width = 12

    # Check if records were found
    if records:
        # Print header
        print(f"{'Player ID':<{player_id_width}} {'First':<{first_name_width}} {'Last':<{last_name_width}} "
              f"{'Position ID':<{position_id_width}} {'Position':<{position_width}} {'Team ID':<{team_id_width}} "
              f"{'Age':<{age_width}} {'Country':<{country_width}}")
        print('-' * (player_id_width + first_name_width + last_name_width + position_id_width + position_width + team_id_width + age_width + country_width + 6))

        # Loop through records and print each row
        for record in records:
            player_id_str = str(record[0]).ljust(player_id_width)
            first_name_str = str(record[1]).ljust(first_name_width)
            last_name_str = str(record[2]).ljust(last_name_width)
            position_id_str = str(record[3]).ljust(position_id_width)
            position_str = str(record[7]).ljust(position_width)  # Position from the join (index 8)
            team_id_str = str(record[4]).ljust(team_id_width)
            age_str = str(record[5]).ljust(age_width)
            country_str = str(record[6]).ljust(country_width)

            # Print formatted record
            print(f"{player_id_str} {first_name_str} {last_name_str} {position_id_str} {position_str} "
                  f"{team_id_str} {age_str} {country_str}")
        print()

    else:
        print("No player found with that ID.")

    cursor.close()

# Count the amount of players per country and displaye the counts GROUPED By Country_ID
def group_players_by_country(db):
    cursor = db.cursor()

    query = "SELECT Country_ID, COUNT(*) as Players FROM Player GROUP BY Country_ID ORDER BY COUNT(*) DESC;"
    cursor.execute(query)
    records = cursor.fetchall()

    # Column Widths
    country_id_width = 15
    player_count_width = 15

    # Print header
    print(f"{'Country ID':<{country_id_width}} {'Players':<{player_count_width}}")
    print('-' * (country_id_width + player_count_width))
    
    if records:
        for record in records:
            country_id = str(record[0]).ljust(country_id_width)
            players = str(record[1]).ljust(player_count_width)

            print(f"{country_id} {players}")
        print()

    else:
        print("No country data found!")

    cursor.close()



# Create a Player Queries ----------------------------------------------------------------------------------------------------
# Selects all Position_IDs and returns a list of them
def select_all_positions(db):
    cursor = db.cursor()

    query = "SELECT * FROM Position"
    cursor.execute(query)
    records = cursor.fetchall()

     # Column Widths
    position_id_width = 15
    position_name_width = 15

    # Print header
    print(f"{'Position ID':<{position_id_width}} {'Position':<{position_name_width}}")
    print('-' * (position_id_width + position_name_width))

    if records:
        for record in records:
            position_id = str(record[0]).ljust(position_id_width)
            position_name = str(record[1]).ljust(position_name_width)

            print(f"{position_id} {position_name}")
        print()

    else:
        print("No position data found!")

    cursor.close()
    return [str(record[0]) for record in records] # Returns list of all valid Position IDS

# Selects everything from Countries table and returns a list of ALL Country_IDs
def select_all_countries(db):
    cursor = db.cursor()

    query = "SELECT * FROM Countries"
    cursor.execute(query)
    records = cursor.fetchall()

    # Column Widths
    country_id_width = 15
    country_name_width = 15

    # Print header
    print(f"{'Country ID':<{country_id_width}} {'Country Name':<{country_name_width}}")
    print('-' * (country_id_width + country_name_width))

    if records:
        for record in records:
            country_id = str(record[0]).ljust(country_id_width)
            country_name = str(record[1]).ljust(country_name_width)

            print(f"{country_id} {country_name}")
        print()

    else:
        print("No country data found!")

    cursor.close()
    return [str(record[0]) for record in records] # Returns list of all valid Country IDs

# Inserts a new Player record into the DB based on user input
def insert_new_player(db, player_attributes):
    # player_attributes is an array of user inputs to populate the SQL insert query
    first_name = str(player_attributes[0])
    last_name = str(player_attributes[1])
    position_id = int(player_attributes[2])

    if player_attributes[3] == "NULL":
        team_id = None
    else:
        team_id = int(player_attributes[3])

    age = int(player_attributes[4])
    country_id = str(player_attributes[5])

    query = """
    INSERT INTO player (First_Name, Last_Name, Position_ID, Team_ID, Age, Country_ID) 
    VALUES (%s, %s, %s, %s, %s, %s);
    """

    try:
        cursor = db.cursor()
        cursor.execute(query, (first_name, last_name, position_id, team_id, age, country_id))
        db.commit() 

        # Get the Player_ID of the newly inserted player
        player_id = cursor.lastrowid
        print(f"Player successfully added with Player_ID: {player_id}")
        return player_id
    except Exception as e:
        db.rollback()  # Roll back in case of an error
        print(f"An error occurred: {e}")
        return None
    finally:
        cursor.close()

# Inserts a new record for Ratings that is tied to a specific player based on user input
def insert_player_ratings(db, player_ratings):
    # player_ratings is an array of user inputs to populate the SQL insert query
    player_id = int(player_ratings[0])
    contact = int(player_ratings[1])
    power = int(player_ratings[2])
    eye = int(player_ratings[3])
    speed = int(player_ratings[4])
    k_per_nine = int(player_ratings[5]) 
    bb_per_nine = int(player_ratings[6])
    hr_per_nine = int(player_ratings[7])

    query = """
    INSERT INTO ratings (Player_ID, Contact, Power, Eye, Speed, K_Per_Nine, BB_Per_Nine, HR_Per_Nine)
    VALUES (%s, %s, %s, %s, %s, %s, %s, %s);
    """

    try:
        cursor = db.cursor()
        cursor.execute(query, (player_id, contact, power, eye, speed, k_per_nine, bb_per_nine, hr_per_nine))
        db.commit()  # Commit the transaction

        print(f"Ratings successfully added for Player_ID: {player_id}")
        return player_id
    except Exception as e:
        db.rollback()  # Rollback in case of an error
        print(f"An error occurred: {e}")
        return None
    finally:
        cursor.close()

# Deletes a Player record from the DB based on specfied player_id
def delete_player(db, player_id):
    
    query = "DELETE FROM Player WHERE Player_ID = %s"

    try:
        cursor = db.cursor()
        cursor.execute(query, (player_id,))
        db.commit()

        print(f"Record successfully deleted for Player_ID: {player_id}")
    except Exception as e:
        db.rollback()  # Rollback in case of an error
        print(f"An error occurred: {e}")
    finally:
        cursor.close()

# Selects all records from Stadium and returns a list of "AVAILABLE" or "ALL" Stadium_IDs
def select_stadiums(db, type):
    cursor = db.cursor()
    
    if type == "available":
        query = "SELECT * FROM Stadium WHERE Stadium_ID NOT IN (SELECT Stadium_ID FROM Team WHERE Stadium_ID IS NOT NULL);"
    elif type == "all": 
        query == "SELECT * FROM Stadium;"

    cursor.execute(query)
    records = cursor.fetchall()

    # Column Widths
    stadium_id_width = 15
    name_width = 25
    field_size_width = 15
    ticket_cost_width = 15
    max_capacity_width = 15

    # Print header
    print(f"{'Stadium ID':<{stadium_id_width}} {'Name':<{name_width}} {'Field Size':<{field_size_width}} {'Ticket Cost':<{ticket_cost_width}} {'Max Capacity':<{max_capacity_width}}")
    print('-' * (stadium_id_width + name_width + field_size_width + ticket_cost_width + max_capacity_width))

    if records:
        for record in records:
            stadium_id = str(record[0]).ljust(stadium_id_width)
            name = str(record[1]).ljust(name_width)
            field_size = str(record[2]).ljust(field_size_width)
            ticket_cost = f"{record[3]:.2f}".ljust(ticket_cost_width)  # Ensuring 2 decimal places for ticket cost
            max_capacity = str(record[4]).ljust(max_capacity_width)

            print(f"{stadium_id} {name} {field_size} {ticket_cost} {max_capacity}")
        print()

    else:
        print("No stadium data found!")

    cursor.close()
    return [str(record[0]) for record in records]  # Returns list of all valid Stadium IDs

# Inserts a new Team record into the DB based on user input
def insert_new_team(db, team_attributes):  # team_attributes is an array of attributes that will populate the query
    # Extract values from the input list (team_attributes)
    name = str(team_attributes[0])
    home_town = str(team_attributes[1])
    league = str(team_attributes[2])
    salary_cap = float(team_attributes[3])
    
    # Handling the Stadium_ID (None if "NULL" is provided, otherwise an integer)
    if team_attributes[4] == "NULL":
        stadium_id = None
    else:
        stadium_id = int(team_attributes[4])

    query = """
    INSERT INTO team (Name, Home_Town, League, Salary_Cap, Stadium_ID) 
    VALUES (%s, %s, %s, %s, %s);
    """

    try:
        cursor = db.cursor()
        cursor.execute(query, (name, home_town, league, salary_cap, stadium_id))
        db.commit()

        # Get the Team_ID of the newly inserted team
        team_id = cursor.lastrowid
        print(f"Team successfully added with Team_ID: {team_id}")
        return team_id
    except Exception as e:
        db.rollback()  # Roll back in case of an error
        print(f"An error occurred: {e}")
        return None
    finally:
        cursor.close()

# Deletes a specific Team record based on specified Team_ID
def delete_specific_team(db, team_id):

    query ="DELETE FROM Team WHERE Team_ID = %s"

    try:
        cursor = db.cursor()
        cursor.execute(query, (team_id,))
        db.commit()

        print(f"Record successfully deleted for Team ID: {team_id}")
    except Exception as e:
        db.rollback()  # Rollback in case of an error
        print(f"An error occurred: {e}")
    finally:
        cursor.close()

# Updates a specific Team record by updating a Team's current Team_ID to a new one based on user input
def update_specific_team(db, team_id, new_team_id):
    try:
        cursor = db.cursor()

        query = "UPDATE Team SET Team_ID = %s WHERE Team_ID = %s;"
        
        cursor.execute(query, (new_team_id, team_id))
        db.commit()

        # Check if the update was successful
        if cursor.rowcount > 0: # Cursor will return the amount of rows affected. If it is > 0 it worked!!!!
            print(f"Team_ID updated successfully for Team {team_id} to {new_team_id}.")
        else:
            print(f"No team found with Team ID {team_id}, no update performed.")
    except Exception as e:
        print(f"Error: {e}")
        db.rollback()
    finally:
        cursor.close()