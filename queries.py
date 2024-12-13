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