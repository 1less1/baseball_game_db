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
SELECT * FROM Team WHERE Team_ID = 1;
-- Sample Output: 

-- 2. One query must answer a question that needs to join 2 or more tables
-- Question: What players had over a .300 season batting average and 50 or more RBIs? What are their First and Last names and individual stats?
-- This query will 
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
    (gs.Hits / gs.At_Bats > 0.300) AND gs.RBIs >= 50;
    
-- 3. One query must have a subquery
SELECT * FROM Stadium WHERE Stadium_ID = (SELECT Stadium_ID FROM Team WHERE Team_ID = 1);

-- Team Overall
SELECT 
    t.Team_ID, 
    t.Name, 
    ROUND(
        (AVG(CASE 
                WHEN p.Position_ID = 1 THEN 
                    (r.K_Per_Nine + r.BB_Per_Nine + r.HR_Per_Nine) / 3  -- Pitcher average
                WHEN p.Position_ID BETWEEN 2 AND 8 THEN 
                    (r.Contact + r.Power + r.Eye) / 3  -- Hitter average
                ELSE 0
             END)
        )
    ) AS Team_Overall
FROM 
    Team t
JOIN 
    Player p ON t.Team_ID = p.Team_ID
JOIN 
    Ratings r ON p.Player_ID = r.Player_ID
-- WHERE 
    -- t.Team_ID = 17
GROUP BY 
    t.Team_ID, t.Name
ORDER BY
	Team_Overall DESC;



