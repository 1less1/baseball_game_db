USE baseball_game_db;

-- Inserting a total of 40 coaches. 30 will be assigned unique teams. 10 will have no team (Team_ID = NULL)
INSERT INTO coach (First_Name, Last_Name, Team_ID, Motivator) VALUES
-- 30 coaches with uniquely assigned teams taken from the base team entities
('Liam', 'Archer', 1, NULL),
('Ethan', 'Harrison', 2, NULL),
('Julian', 'Caldwell', 3, 'Hitting'),
('Sebastian', 'Parker', 4, 'Pitching'),
('Wyatt', 'Fletcher', 5, 'Pitching'),
('Jasper', 'Morris', 6, NULL),
('Aidan', 'West', 7, 'Hitting'),
('Maxwell', 'Stewart', 8, NULL),
('Nolan', 'King', 9, NULL),
('Elijah', 'Montgomery', 10, 'Pitching'),
('Luca', 'Green', 11, 'Hitting'),
('Asher', 'Reed', 12, 'Hitting'),
('Henry', 'Tucker', 13, 'Hitting'),
('Kai', 'Dawson', 14, 'Pitching'),
('Finn', 'Gibson', 15, NULL),
('Gavin', 'Walters', 16, 'Pitching'),
('Theo', 'Owen', 17, NULL),
('Isaiah', 'Cameron', 18, 'Pitching'),
('Levi', 'Miller', 19, 'Hitting'),
('Jude', 'Sullivan', 20, NULL),
('Miles', 'Carter', 21, 'Hitting'),
('Jackson', 'Hayes', 22, 'Hitting'),
('Owen', 'Bennett', 23, 'Pitching'),
('Samuel', 'Grayson', 24, 'Pitching'),
('Felix', 'Kendall', 25, 'Pitching'),
('Jonah', 'Rivers', 26, 'Pitching'),
('Xander', 'Hudson', 27, 'Hitting'),
('Isaac', 'Blake', 28, 'Hitting'),
('Gage', 'Mason', 29, 'Hitting'),
('Cole', 'Spencer', 30, NULL),

-- 10 coaches with NO team assigned (NULL)
('Dawson', 'Wyatt', NULL, 'Pitching'),
('Phoenix', 'Riley', NULL, NULL),
('Brayden', 'Cameron', NULL, 'Pitching'),
('Wyatt', 'Chavez', NULL, 'Pitching'),
('Elliot', 'Patterson', NULL, 'Pitching'),
('Declan', 'Sawyer', NULL, 'Pitching'),
('Bennett', 'Asher', NULL, NULL),
('Jaxon', 'Oliver', NULL, NULL),
('Caden', 'Foster', NULL, NULL);


SELECT * FROM Coach WHERE Motivator IS NULL;