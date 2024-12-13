# baseball_game_db
Final project for CS 3140. Tasked with creating a medium sized relational database with a python frontend to query and edit the db. Wanted to turn this project into foundation for a future game where the user is tasked with managing a professional baseball team in my fantasy league of 20 teams!

Clone the REPO with: https://github.com/1less1/baseball_game_db.git  


## Where did I get my data?
- **CoPilot** used to create randomized data for the DB within carefully chosen requriements!  

## Order to Insert Base Data
1. **Countries**
2. **Position**
3. **Stadium**
4. **Team**
5. **Coach**
6. **Player**
7. **Ratings**
8. **Season**
9. **Game**
10. **GameStats** 

**Bold** indicates I have working insert data sql script!

## Game Instructions
1. Import the Database within you locally hosted MySQL database through something like Workbench
2. Make sure your MYSQL(Version#) is RUNNING -> This is crucial to be able to connect through python!
3. Go to a terminal **FULL SCREEN** to start the game:
```powershell
python main.py
```
4. Enjoy!

## Final Project SQL Script Mappings

### Level 1 Queries

```sql
SELECT * FROM Team WHERE Team_ID = 1; -- Replaced 1 with %s to accept user input
```
- This query can be found working with ***user input** using this path from the Main Menu -> Explore Database -> Teams -> View Specific Team Data   
- Python code located in queries.py under function name: **select_team_data(db, team_id)**         

```sql
SELECT ply.*, pos.Code as Position 
FROM Player as ply 
JOIN position as pos 
ON ply.Position_ID = pos.Position_ID 
WHERE Team_ID =  1; -- Replaced 1 with %s to accept user input
```
- This query can be found working with **user input** using this path from the Main Menu -> Explore Database -> Players -> Team Rosters
- Python code located in queries.py under function name: **select_team_roster(db, team_id)**   

```sql
SELECT 
    t.Team_ID, 
    t.name AS Team_Name, 
    (	SELECT COUNT(*) 
        FROM game 
        WHERE Winner = t.Team_ID 
        AND Season_ID = 1) AS Wins, 
    (	SELECT COUNT(*) 
        FROM game 
        WHERE Loser = t.Team_ID 
        AND Season_ID = 1) AS Losses
FROM 
    team t
ORDER BY 
    t.Team_ID;
```   
- This query can be found working using this path from the Main Menu -> Explore Database -> Teams -> Show all Team Records
- Python code located in queries.py under function name: **select_team_records(db, season_id)**     

```sql
SELECT Country_ID, COUNT(*) as Players FROM Player GROUP BY Country_ID ORDER BY COUNT(*) DESC;
```   
- This query can be found working using this path from the Main Menu -> Explore Database -> Players -> Player Filter -> Group By Country
- Python code located in queries.py under function name: **group_players_by_country(db)**   

### Level 2 Queries

```sql
INSERT INTO Player (First_Name, Last_Name, Position_ID, Team_ID, Age, Country_ID) VALUES
('DJ', 'Glitter Buns', 1, 5, 20, 'USA'); -- I created a whole Create a Player program to insert a new player based on User Input!
```
- This query can be found working using this path from the Main Menu -> Player Management -> Create a Player
- Python code located in queries.py under function name: **insert_new_player(db, player_attributes)**       

```sql
DELETE FROM Player WHERE Player_ID = 1; -- Replaced 1 with %s to accept user input
```
- This query can be found working using this path from the Main Menu -> Player Management -> Delete a Player
- Python code located in queries.py under function name: **delete_player(db, player_id):**   

```sql
UPDATE Team SET Team_ID = 21 WHERE Team_ID = 1; -- Replaced 21 and 1 with %s to accept user input
```
- This query can be found working using this path from the Main Menu -> Team Management -> Update a Team
- Python code located in queries.py under function name: **update_specific_team(db, team_id, new_team_id)**     

```sql
DELETE FROM Team WHERE Team_ID = 1; -- Replaced 1 with %s to accept user input
```
- This query can be found working using this path from the Main Menu -> Team Management -> Delete a Team
- Python code located in queries.py under function name: **delete_specific_team(db, team_id)**   


## Expected Grade
- I am a GOAT

## Challenges
- This took way too long for no reason lol!!!

