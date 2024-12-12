USE baseball_game_db;

SELECT p.First_Name, p.Last_Name, p.Position_ID, p.Team_ID, p.Age, p.Country_ID
FROM player p
JOIN team t ON p.Team_ID = t.Team_ID
JOIN stadium s ON t.Stadium_ID = s.Stadium_ID
WHERE s.field_size >= 380;

SELECT * FROM Stadium WHERE Stadium_ID = (SELECT Stadium_ID FROM Team WHERE Team_ID = 1);

-- --------------------------------------------------------------------------------------
-- Level 1 Queries 
-- --------------------------------------------------------------------------------------

-- 1. One query must be a basic SELECT/FROM/WHERE query
-- This query will fetch all attributes for the entity identified by the primary key -> Team_ID = 1
SELECT * FROM Team WHERE Team_ID = 1; -- I can replace the Team_ID = 1 with %s to allow user input in my python program!
-- Sample Output:
-- Team_ID   Name      Home_Town    League   Salary_Cap    Stadium_ID
-- 1         Crushers  Canyon City  AL       7500000.00    2


-- 2. One query must answer a question that needs to join 2 or more tables
-- Question: What players had over a .300 season batting average and 50 or more RBIs? What are their First and Last names and individual stats?
-- Player entities and their related Game_Stats will be chosen if they meet the WHERE criteria detailed above.
-- This query will return a table of First_Name and Last_Name from the player table.
-- It will also return the Game_Stats that correspond with each player record. 
SELECT 
    p.First_Name AS First, 
    p.Last_Name AS Last,
    gs.*
FROM 
    player AS p
JOIN 
    game_stats AS gs
ON 
    p.Player_ID = gs.Player_ID
WHERE 
    (gs.Hits / gs.At_Bats > 0.300) AND gs.RBIs >= 50; -- I can replace these numbers with %s to allow user input in my python program!
-- Sample Output:
-- First   Last   Player_ID   Season_ID   Games_Played   At_Bats   Hits   RBI's   Runs   Innings_Pitched   Earned_Runs   Strikeouts
-- Casey   Folk   46          1           38             151       58     50      23     0                 0             0


-- 3. One query must have a subquery
-- This queries the Team table to return Team_ID, Team_Name, and Wins and Losses.
-- Wins and Losses are found by using subqueries on the Team table to COUNT(*) all the times a certain Team_ID apperars in the Winner and Loser columns.
-- Final results will be ordered by the returned Team_IDs
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
-- Sample Output:
-- Team_ID   Team_Name   Wins   Losses
-- 1         Crushers    18     20
-- 2         Phoenix     22     16

-- 4. One query must have an aggregate function and GROUP BY clause



-- --------------------------------------------------------------------------------------
-- Level 2 Queries 
-- --------------------------------------------------------------------------------------



-- --------------------------------------------------------------------------------------
-- Other Queries 
-- --------------------------------------------------------------------------------------

