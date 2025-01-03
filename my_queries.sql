USE baseball_game_db;
-- Programmer: Dominick Olhava

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
-- This queries the Player table and counts how many Player entities have each Country_ID.
-- The results are grouped by Country_ID and displayed in descending order!
SELECT Country_ID, COUNT(*) as Players FROM Player GROUP BY Country_ID ORDER BY COUNT(*) DESC;
-- Sample Output:
-- Country_ID   Players
-- USA          49
-- JPN          34



-- --------------------------------------------------------------------------------------
-- Level 2 Queries 
-- --------------------------------------------------------------------------------------
-- 1. One query must add a record to one or more tables.
-- This query adds a new entity into the Player table.
-- After inserting, this record will be assigned an auto incrementing Player_ID as its primary key.
INSERT INTO Player (First_Name, Last_Name, Position_ID, Team_ID, Age, Country_ID) VALUES
('DJ', 'Glitter Buns', 1, 5, 20, 'USA');
-- Sample Output: In MySQL this query returns a "green check mark" and message of "1 row(s) affected"
-- to give confirmation that the INSERT was a success!



-- 2. One query must delete a record from one or more tables.
-- This query will delete the Player record that is uniquely identified by the Player_ID specified
DELETE FROM Player WHERE Player_ID = 1;
-- Sample Output: In MySQL this query returns a "green check mark" and message of "1 row(s) affected"
-- to give confirmation that the DELETE was a success!



-- 3. You have foreign key ON UPDATE constraints that make sense on a table/tables and write an SQL query to demonstrate how one of them works.
-- This UPDATE statement CASCADES to all Foreign Keys referencing it.
-- It usually is not good practice updating the Primary Key in a table but for my DB which will
-- be used for a game in the future, this type of functionality will be nice if I delete teams and need to
-- fill in "holes" within the Team records.
UPDATE Team SET Team_ID = 21 WHERE Team_ID = 1;
-- Sample Output Before:
-- Player_ID  First_Name   Last_Name Position_ID   Team_ID   Age   Country_ID   Position
-- 1          Mitchell     Walker    1             1         26    USA          P

-- Sample Output After: Player records that were assigned to Team_ID previusly will have their attribute UPDATED
-- Player_ID  First_Name   Last_Name Position_ID   Team_ID   Age   Country_ID   Position
-- 1          Mitchell     Walker    1             21         26    USA          P



-- 4. You have foreign key ON DELETE constraints that make sense on a table/tables and write an SQL query to demonstrate how one of them works.
-- This DELETE statement should reflect in Player table by setting Team_ID to NULL for all Players previously
-- assigned to Team_ID = 1.
-- Effects of this DELETE statement can also be seen when querying the Game table which holds records of matchups between teams.
-- Wherever the deleted Team_ID was populated in that table will now be SET NULL.
DELETE FROM Team WHERE Team_ID = 1; -- I can replace Team_ID = 1 with %s to allow user input in my python program!
-- Sample Output Before:
-- Player_ID  First_Name   Last_Name Position_ID   Team_ID   Age   Country_ID   Position
-- 1          Mitchell     Walker    1             1         26    USA          P

-- Sample Output After: Player record that previously had a Team_ID of 1 was SET NULL due to the DELETE Statement
-- Player_ID  First_Name   Last_Name Position_ID   Team_ID   Age   Country_ID   Position
-- 1          Mitchell     Walker    1             NULL         26    USA          P




