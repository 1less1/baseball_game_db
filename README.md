# baseball_game_db
Final project for CS 3140. Tasked with creating a medium sized relational database with a python frontend to query and edit the db. Wanted to turn this project into **foundation** for a future game where the user is tasked with managing a professional baseball team in my fantasy league of 20 teams!

Clone the REPO with: https://github.com/1less1/baseball_game_db.git  

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
1. Import the DB using the file: **baseball_game_db_dump.sql**
2. Run the script within your locally hosted MySQL database through something like Workbench.
3. Make sure your MYSQL Service is **RUNNING** -> This is crucial to be able to connect through python!
4. Go to a terminal and switch to **Full Screen** to start the game:
```powershell
python main.py
```
5. Enjoy!

## In Game Main Menu
![Main Menu](/pictures/baseball_game_db_main_menu.png)


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

## Where did the data come from?
- **CoPilot** used to create randomized data for the DB within carefully chosen requriements!  

## Expected Grade
- I believe that I deserve an A for this assignment since I am at a Level 2 for Database Schema, Queries, and the Python Front End.
- There are 8 tables with 20 or more records with highlights including:
    - 20 base Team entities
    - 50 base Stadium entities (20 are assigned to a specific team)
    - 380 Game entities storing Home and Away Teams as well as their scores
    - 240 total Player Entities (12 assigned per team - 30 Free Agents) with corresponding Ratings and Game_Stats per Player 
    - 30 total Coach entities (20 assigned to a specific team - 10 Free Agents)
    - 100 available countries to choose from in Countries table
- The Python Front End has a lot of functionalites highlighted by:
    - Create a Player
    - Create a Team
    - Database Exploration -> Most proud of Player Search!


## Challenges
- It was super hard to generate data that made sense for my baseball league and was randomized enough to be believable. I primarily used AI to generate the data and this came with a lot of **pros**. I was able to tell it exactly what I want generated to a tee and repeated data generation was simple and efficient. However, there were a lot of **drawbacks**. **ChatGPT** ended up using very obvious patterns when generating data within my requirements. For example, I tasked it to generate Player entities to populate my player table. I wanted it to generate an insert statement for 12 Players per Team. It did well for the first 5 teams but ended up assigning countries in a very predictable way causing my DB to have the same 12 countries represented for almost every team. I had to go back and give extra criteria for it to generate more randomized data but it still was being way too predictable. I then switched to **CoPilot** and it did a much better job generating randomized data. I was really happy with its output.
- Another challenge was creating the proper Table relationships so my DB made sense. It got very dicey when trying to figure out how I can relate Team entities to specific Game and Season entities, while also having Game tied to Game_Stats which is related to individual Player entities. This took a long time to develop but in the end I am very happy with it! 


