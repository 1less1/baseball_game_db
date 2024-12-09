USE baseball_game_db;

-- Inserting a total of 30 coaches. 20 will be assigned unique teams. 10 will have no team (Team_ID = NULL)
INSERT INTO coach (First_Name, Last_Name, Team_ID, Motivator) VALUES
-- Team 1: Crushers
('Liam', 'Archer', 1, 'Hitting'),
-- Team 2: Phoenix
('Ethan', 'Harrison', 2, 'Pitching'),
-- Team 3: Stormbreakers
('Julian', 'Caldwell', 3, NULL),
-- Team 4: Guardians of the Galaxy
('Sebastian', 'Parker', 4, 'Pitching'),
-- Team 5: Flyers
('Wyatt', 'Fletcher', 5, NULL),
-- Team 6: Knights
('Jasper', 'Morris', 6, 'Hitting'),
-- Team 7: Blaze Hounds
('Aidan', 'West', 7, 'Pitching'),
-- Team 8: Werewolves
('Maxwell', 'Stewart', 8, 'Hitting'),
-- Team 9: Dragons
('Nolan', 'King', 9, NULL),
-- Team 10: Pirates
('Elijah', 'Montgomery', 10, 'Pitching'),
-- Team 11: Vortex Vipers
('Luca', 'Green', 11, 'Hitting'),
-- Team 12: Tempest Titans
('Asher', 'Reed', 12, NULL),
-- Team 13: Quasar Comets
('Henry', 'Tucker', 13, 'Hitting'),
-- Team 14: Phantoms
('Kai', 'Dawson', 14, NULL),
-- Team 15: Eclipse
('Finn', 'Gibson', 15, 'Pitching'),
-- Team 16: Aether Hawks
('Gavin', 'Walters', 16, 'Hitting'),
-- Team 17: Mirage Mystics
('Theo', 'Owen', 17, NULL),
-- Team 18: Trailblazers
('Isaiah', 'Cameron', 18, NULL),
-- Team 19: Valkyries
('Levi', 'Miller', 19, 'Hitting'),
-- Team 20: Iron Thunder
('Jude', 'Sullivan', 20, 'Pitching'),

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