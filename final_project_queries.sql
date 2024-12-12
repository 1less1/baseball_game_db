USE baseball_game_db;

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
-- Question: What players are on a Team_ID of 1? What are their attributes and position on the field?
-- This query will return a table of all columns within the Player table as well as a Position column (pos.Code) from the Position table WHERE Team_ID is 1
-- The JOIN is based on the relationship between Position_ID for both tables
SELECT ply.*, pos.Code as Position 
FROM Player as ply 
JOIN position as pos 
ON ply.Position_ID = pos.Position_ID 
WHERE Team_ID =  1; -- I can replace Team_ID = 1 with %s to allow user input in my python program!
-- Sample Output:
-- Player_ID  First_Name   Last_Name Position_ID   Team_ID   Age   Country_ID   Position
-- 1          Mitchell     Walker    1             1         26    USA          P


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
-- Queries the Player table and counts how many Player entities have each Country_ID.
-- The results are grouped by Country_ID and displayed in descending order!
SELECT Country_ID, COUNT(*) as Players FROM Player GROUP BY Country_ID ORDER BY COUNT(*) DESC;
-- Sample Output:
-- Country_ID   Players
-- USA          49
-- JPN          34

-- --------------------------------------------------------------------------------------
-- Level 2 Queries 
-- --------------------------------------------------------------------------------------



-- --------------------------------------------------------------------------------------
-- Other Queries 
-- --------------------------------------------------------------------------------------
SELECT Player_ID from Player WHERE Team_ID = 5;

SELECT r.*, p.First_Name as First, p.Last_Name as Last FROM Ratings as r JOIN Player as p ON r.Player_ID = p.Player_ID WHERE r.Player_ID = 1;

SELECT gs.*, p.First_Name as First, p.Last_Name as Last FROM Game_Stats as gs JOIN Player as p ON gs.Player_ID = p.Player_ID WHERE gs.Player_ID = 1 AND gs.Season_ID = 1;

SELECT ply.*, pos.Code as Position FROM Player as ply JOIN position as pos ON ply.Position_ID = pos.Position_ID WHERE ply.Player_ID = 1;

SELECT * FROM Player WHERe 