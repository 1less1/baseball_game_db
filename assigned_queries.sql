-- Advanced Query Practice

SELECT p.First_Name, p.Last_Name, p.Position_ID, p.Team_ID, p.Age, p.Country_ID
FROM player p
JOIN team t ON p.Team_ID = t.Team_ID
JOIN stadium s ON t.Stadium_ID = s.Stadium_ID
WHERE s.field_size >= 380;

SELECT * FROM Stadium WHERE Stadium_ID = (SELECT Stadium_ID FROM Team WHERE Team_ID = 1);
SELECT Stadium_ID FROM Team WHERE Team_ID = 1


-- SELECT * FROM Coach WHERE Motivator IS NULL;


