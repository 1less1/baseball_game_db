USE baseball_game_db;
-- Inserting 10 players for each of the 20 base teams as well as 60 free agent players with no assigned team (NULL)!
-- 260 Players Total

----------------------------------------------------------------------------------------
-- AL Teams 
----------------------------------------------------------------------------------------
-- Team 1: Crushers
INSERT INTO player (First_Name, Last_Name, Position_ID, Team_ID, Age, Country_ID) VALUES
('Owen', 'Walker', 1, 1, 26, 'USA'),
('Luis', 'Sanchez', 1, 1, 28, 'CUB'),
('Carlos', 'Martinez', 2, 1, 30, 'DOM'),
('Miguel', 'Perez', 3, 1, 27, 'VEN'),
('Hiroshi', 'Kobayashi', 4, 1, 24, 'JPN'),
('Andres', 'Hernandez', 5, 1, 25, 'MEX'),
('Tyler', 'King', 6, 1, 22, 'CAN'),
('Jin', 'Choi', 7, 1, 23, 'KOR'),
('Alex', 'Garcia', 8, 1, 21, 'PUR'),
('Esteban', 'Lopez', 9, 1, 24, 'PAN'),
('Santiago', 'Martinez', 2, 1, 26, 'COL'),
('Luca', 'Rossi', 5, 1, 27, 'ITA');

-- Team 2: Phoenix
INSERT INTO player (First_Name, Last_Name, Position_ID, Team_ID, Age, Country_ID) VALUES
('Aiden', 'Bryant', 1, 2, 23, 'USA'),
('Juan', 'Gomez', 1, 2, 29, 'DOM'),
('Carlos', 'Rodriguez', 2, 2, 28, 'CUB'),
('Juan', 'Martinez', 3, 2, 27, 'VEN'),
('Tatsuya', 'Yoshida', 4, 2, 24, 'JPN'),
('Manuel', 'Moreno', 5, 2, 25, 'MEX'),
('Ethan', 'Smith', 6, 2, 22, 'CAN'),
('Minho', 'Park', 7, 2, 23, 'KOR'),
('Rafael', 'Fernandez', 8, 2, 21, 'PUR'),
('David', 'Soto', 9, 2, 24, 'PAN'),
('Felipe', 'Cortez', 7, 2, 24, 'COL'),
('Daniel', 'Schneider', 9, 2, 27, 'GER');

-- Team 3: Stormbreakers
INSERT INTO player (First_Name, Last_Name, Position_ID, Team_ID, Age, Country_ID) VALUES
('Evan', 'Scott', 1, 3, 25, 'USA'),
('Carlos', 'Perez', 1, 3, 28, 'DOM'),
('Luis', 'Gonzalez', 2, 3, 30, 'CUB'),
('Nicolas', 'Ramirez', 3, 3, 26, 'VEN'),
('Sho', 'Takahashi', 4, 3, 24, 'JPN'),
('Pedro', 'Diaz', 5, 3, 27, 'MEX'),
('Lucas', 'Clark', 6, 3, 23, 'CAN'),
('Jin', 'Lee', 7, 3, 23, 'KOR'),
('Rafael', 'Martinez', 8, 3, 21, 'PUR'),
('Andres', 'Silva', 9, 3, 24, 'PAN'),
('Carlos', 'Mendoza', 2, 3, 25, 'COL'),
('Marco', 'Lima', 7, 3, 27, 'BRA');


-- Team 4: Guardians of the Galaxy
INSERT INTO player (First_Name, Last_Name, Position_ID, Team_ID, Age, Country_ID) VALUES
('Ethan', 'Johnson', 1, 4, 24, 'USA'),
('Carlos', 'Morales', 1, 4, 29, 'DOM'),
('Jorge', 'Diaz', 2, 4, 27, 'CUB'),
('Luis', 'Rodriguez', 3, 4, 28, 'VEN'),
('Ryuji', 'Tanaka', 4, 4, 23, 'JPN'),
('Felipe', 'Hernandez', 5, 4, 26, 'MEX'),
('David', 'Garcia', 6, 4, 25, 'CAN'),
('Hyun', 'Kim', 7, 4, 22, 'KOR'),
('Omar', 'Perez', 8, 4, 21, 'PUR'),
('Juan', 'Fernandez', 9, 4, 24, 'PAN'),
('Diego', 'Mendoza', 5, 4, 23, 'COL'),
('Matteo', 'Bianchi', 5, 4, 27, 'ITA');

-- Team 5: Flyers
INSERT INTO player (First_Name, Last_Name, Position_ID, Team_ID, Age, Country_ID) VALUES
('Ryan', 'Green', 1, 5, 22, 'USA'),
('Jose', 'Martinez', 1, 5, 28, 'DOM'),
('Carlos', 'Serrano', 2, 5, 30, 'CUB'),
('Victor', 'Hernandez', 3, 5, 27, 'VEN'),
('Koji', 'Matsumoto', 4, 5, 24, 'JPN'),
('Luis', 'Garcia', 5, 5, 26, 'MEX'),
('Andrew', 'Walker', 6, 5, 23, 'CAN'),
('Jin', 'Cho', 7, 5, 22, 'KOR'),
('Carlos', 'Reyes', 8, 5, 21, 'PUR'),
('Rafael', 'Martinez', 9, 5, 24, 'PAN'),
('Ricardo', 'Fernandez', 8, 5, 25, 'COL'),
('Pablo', 'Lopez', 7, 5, 27, 'ESP');

-- Team 6: Knights
INSERT INTO player (First_Name, Last_Name, Position_ID, Team_ID, Age, Country_ID) VALUES
('Jack', 'Miller', 1, 6, 25, 'USA'),
('Eduardo', 'Gomez', 1, 6, 28, 'DOM'),
('Carlos', 'Sanchez', 2, 6, 30, 'CUB'),
('Luis', 'Castro', 3, 6, 27, 'VEN'),
('Hiroshi', 'Yamamoto', 4, 6, 24, 'JPN'),
('Rafael', 'Moreno', 5, 6, 26, 'MEX'),
('Oliver', 'Johnson', 6, 6, 23, 'CAN'),
('Jiho', 'Kim', 7, 6, 22, 'KOR'),
('Antonio', 'Perez', 8, 6, 21, 'PUR'),
('Emilio', 'Lopez', 9, 6, 24, 'PAN'),
('Carlos', 'Mendoza', 4, 6, 25, 'COL'),
('Marco', 'Silva', 3, 6, 27, 'BRA');

-- Team 7: Blaze Hounds
INSERT INTO player (First_Name, Last_Name, Position_ID, Team_ID, Age, Country_ID) VALUES
('Tyler', 'Johnson', 1, 7, 25, 'USA'),
('Pedro', 'Gonzalez', 2, 7, 28, 'DOM'),
('Roberto', 'Diaz', 3, 7, 26, 'CUB'),
('Victor', 'Rodriguez', 4, 7, 30, 'VEN'),
('Koji', 'Yamamoto', 5, 7, 29, 'JPN'),
('Hector', 'Moreno', 6, 7, 27, 'MEX'),
('David', 'Richards', 7, 7, 24, 'CAN'),
('Jin', 'Park', 8, 7, 25, 'KOR'),
('Liam', 'Reyes', 9, 7, 22, 'PUR'),
('Andres', 'Martinez', 9, 7, 21, 'PAN'),
('Tomás', 'Valencia', 6, 7, 24, 'COL'),
('Bastian', 'Schmidt', 4, 7, 27, 'GER');

-- Team 8: Werewolves
INSERT INTO player (First_Name, Last_Name, Position_ID, Team_ID, Age, Country_ID) VALUES
('Eli', 'Martinez', 1, 8, 23, 'USA'),
('Jose', 'Hernandez', 1, 8, 28, 'DOM'),
('Carlos', 'Perez', 2, 8, 30, 'CUB'),
('Victor', 'Garcia', 3, 8, 27, 'VEN'),
('Takumi', 'Kobayashi', 4, 8, 24, 'JPN'),
('Luis', 'Mendoza', 5, 8, 26, 'MEX'),
('Michael', 'Johnson', 6, 8, 23, 'CAN'),
('Jin', 'Kim', 7, 8, 22, 'KOR'),
('Carlos', 'Martinez', 8, 8, 21, 'PUR'),
('Esteban', 'Rodriguez', 9, 8, 24, 'PAN'),
('Felipe', 'Cortez', 3, 8, 24, 'COL'),
('David', 'Schneider', 9, 8, 27, 'GER');

-- Team 9: Dragons
INSERT INTO player (First_Name, Last_Name, Position_ID, Team_ID, Age, Country_ID) VALUES
('Andrew', 'Moore', 1, 9, 22, 'USA'),
('Luis', 'Garcia', 1, 9, 28, 'DOM'),
('Jose', 'Serrano', 2, 9, 30, 'CUB'),
('Juan', 'Rodriguez', 3, 9, 27, 'VEN'),
('Shinji', 'Fujimoto', 4, 9, 24, 'JPN'),
('Eduardo', 'Martinez', 5, 9, 25, 'MEX'),
('Tyler', 'Brown', 6, 9, 23, 'CAN'),
('Minseok', 'Jung', 7, 9, 22, 'KOR'),
('Rafael', 'Perez', 8, 9, 21, 'PUR'),
('Carlos', 'Fernandez', 9, 9, 24, 'PAN'),
('Santiago', 'Lopez', 5, 9, 25, 'COL'),
('Luca', 'Bianchi', 4, 9, 27, 'ITA');

-- Team 10: Pirates
INSERT INTO player (First_Name, Last_Name, Position_ID, Team_ID, Age, Country_ID) VALUES
('Zach', 'Taylor', 1, 10, 23, 'USA'),
('Carlos', 'Martinez', 1, 10, 29, 'DOM'),
('Fernando', 'Lopez', 2, 10, 30, 'CUB'),
('Ricardo', 'Hernandez', 3, 10, 27, 'VEN'),
('Yuji', 'Ishida', 4, 10, 24, 'JPN'),
('Antonio', 'Silva', 5, 10, 26, 'MEX'),
('Ethan', 'Davis', 6, 10, 23, 'CAN'),
('Jiwon', 'Choi', 7, 10, 22, 'KOR'),
('Carlos', 'Reyes', 8, 10, 21, 'PUR'),
('Esteban', 'Lopez', 9, 10, 24, 'PAN'),
('Felipe', 'Mendoza', 9, 10, 25, 'COL'),
('Matteo', 'Rossi', 7, 10, 27, 'ITA');


----------------------------------------------------------------------------------------
-- NL Teams 
----------------------------------------------------------------------------------------
-- Team 11: Vortex Vipers
INSERT INTO player (First_Name, Last_Name, Position_ID, Team_ID, Age, Country_ID) VALUES
('Evan', 'Smith', 1, 1, 23, 'USA'),
('Pedro', 'Alvarez', 1, 1, 28, 'DOM'),
('Carlos', 'Gutierrez', 2, 1, 30, 'CUB'),
('Luis', 'Rodriguez', 3, 1, 27, 'VEN'),
('Hiroshi', 'Takahashi', 4, 1, 24, 'JPN'),
('Juan', 'Martinez', 5, 1, 26, 'MEX'),
('Ryan', 'Williams', 6, 1, 23, 'CAN'),
('Jiho', 'Park', 7, 1, 22, 'KOR'),
('Antonio', 'Mendoza', 8, 1, 21, 'PUR'),
('Emilio', 'Lopez', 9, 1, 24, 'PAN'),
('Carlos', 'Fernandez', 4, 1, 25, 'COL'),
('Marco', 'Rossi', 8, 1, 27, 'ITA');

-- Team 12: Tempest Titans
INSERT INTO player (First_Name, Last_Name, Position_ID, Team_ID, Age, Country_ID) VALUES
('Ethan', 'Johnson', 1, 2, 24, 'USA'),
('Carlos', 'Gomez', 1, 2, 29, 'DOM'),
('Javier', 'Martinez', 2, 2, 30, 'CUB'),
('Victor', 'Perez', 3, 2, 26, 'VEN'),
('Takeshi', 'Fujimoto', 4, 2, 23, 'JPN'),
('Jose', 'Mendez', 5, 2, 25, 'MEX'),
('Oliver', 'Brown', 6, 2, 22, 'CAN'),
('Jin', 'Kim', 7, 2, 23, 'KOR'),
('Esteban', 'Rodriguez', 8, 2, 21, 'PUR'),
('Diego', 'Martinez', 9, 2, 24, 'PAN'),
('Luis', 'Martinez', 2, 2, 25, 'COL'),
('Nico', 'Bianchi', 2, 2, 27, 'ITA');

-- Team 13: Quasar Comets
INSERT INTO player (First_Name, Last_Name, Position_ID, Team_ID, Age, Country_ID) VALUES
('Oliver', 'Taylor', 1, 3, 23, 'USA'),
('Juan', 'Gonzalez', 1, 3, 28, 'DOM'),
('Carlos', 'Perez', 2, 3, 30, 'CUB'),
('Javier', 'Lopez', 3, 3, 27, 'VEN'),
('Takashi', 'Sato', 4, 3, 24, 'JPN'),
('Luis', 'Hernandez', 5, 3, 26, 'MEX'),
('Ryan', 'Johnson', 6, 3, 23, 'CAN'),
('Minseok', 'Lee', 7, 3, 22, 'KOR'),
('Carlos', 'Gonzalez', 8, 3, 21, 'PUR'),
('Felipe', 'Rodriguez', 9, 3, 24, 'PAN'),
('Santiago', 'Mendez', 7, 3, 25, 'COL'),
('Matteo', 'Rossi', 8, 3, 27, 'ITA');

-- Team 14: Phantoms
INSERT INTO player (First_Name, Last_Name, Position_ID, Team_ID, Age, Country_ID) VALUES
('Isaac', 'Davis', 1, 4, 22, 'USA'),
('Carlos', 'Garcia', 1, 4, 29, 'DOM'),
('Jose', 'Serrano', 2, 4, 30, 'CUB'),
('Luis', 'Hernandez', 3, 4, 27, 'VEN'),
('Shinji', 'Tanaka', 4, 4, 24, 'JPN'),
('Eduardo', 'Lopez', 5, 4, 26, 'MEX'),
('Michael', 'Woods', 6, 4, 23, 'CAN'),
('Jiho', 'Choi', 7, 4, 22, 'KOR'),
('Antonio', 'Martinez', 8, 4, 21, 'PUR'),
('Diego', 'Rodriguez', 9, 4, 24, 'PAN'),
('Felipe', 'Perez', 3, 4, 25, 'COL'),
('Luca', 'Bianchi', 6, 4, 27, 'ITA');

-- Team 15: Eclipse
INSERT INTO player (First_Name, Last_Name, Position_ID, Team_ID, Age, Country_ID) VALUES
('Aiden', 'Scott', 1, 5, 23, 'USA'),
('Carlos', 'Alvarez', 1, 5, 28, 'DOM'),
('Rafael', 'Lopez', 2, 5, 30, 'CUB'),
('Victor', 'Gonzalez', 3, 5, 26, 'VEN'),
('Kenta', 'Nakamura', 4, 5, 24, 'JPN'),
('Juan', 'Martinez', 5, 5, 25, 'MEX'),
('Ryan', 'Taylor', 6, 5, 23, 'CAN'),
('Jin', 'Park', 7, 5, 22, 'KOR'),
('Carlos', 'Mendoza', 8, 5, 21, 'PUR'),
('Esteban', 'Hernandez', 9, 5, 24, 'PAN'),
('Luis', 'Cortes', 7, 5, 25, 'COL'),
('Marco', 'Silva', 5, 5, 27, 'BRA');

-- Team 16: Aether Hawks
INSERT INTO player (First_Name, Last_Name, Position_ID, Team_ID, Age, Country_ID) VALUES
('Noah', 'Martinez', 1, 6, 24, 'USA'),
('Pedro', 'Rodriguez', 1, 6, 29, 'DOM'),
('Javier', 'Gomez', 2, 6, 30, 'CUB'),
('Luis', 'Martinez', 3, 6, 27, 'VEN'),
('Haruto', 'Takahashi', 4, 6, 24, 'JPN'),
('Carlos', 'Hernandez', 5, 6, 26, 'MEX'),
('Ethan', 'Williams', 6, 6, 23, 'CAN'),
('Jiho', 'Lee', 7, 6, 22, 'KOR'),
('Antonio', 'Gonzalez', 8, 6, 21, 'PUR'),
('Emilio', 'Perez', 9, 6, 24, 'PAN'),
('Carlos', 'Lopez', 2, 6, 25, 'COL'),
('Matteo', 'Bianchi', 4, 6, 27, 'ITA');

-- Team 17: Mystic Mirages
INSERT INTO player (First_Name, Last_Name, Position_ID, Team_ID, Age, Country_ID) VALUES
('Lucas', 'Taylor', 1, 7, 23, 'USA'),
('Carlos', 'Martinez', 1, 7, 28, 'DOM'),
('Jose', 'Perez', 2, 7, 30, 'CUB'),
('Carlos', 'Rodriguez', 3, 7, 27, 'VEN'),
('Yuki', 'Kobayashi', 4, 7, 24, 'JPN'),
('Eduardo', 'Lopez', 5, 7, 26, 'MEX'),
('Zachary', 'Johnson', 6, 7, 23, 'CAN'),
('Minseok', 'Kim', 7, 7, 22, 'KOR'),
('Felipe', 'Gonzalez', 8, 7, 21, 'PUR'),
('Diego', 'Mendez', 9, 7, 24, 'PAN'),
('Juan', 'Garcia', 2, 3, 25, 'COL'),
('Matteo', 'Giordano', 5, 7, 27, 'ITA');

-- Team 18: Trailblazers
INSERT INTO player (First_Name, Last_Name, Position_ID, Team_ID, Age, Country_ID) VALUES
('Eli', 'Brown', 1, 8, 23, 'USA'),
('Carlos', 'Gomez', 1, 8, 29, 'DOM'),
('Javier', 'Martinez', 2, 8, 30, 'CUB'),
('Victor', 'Perez', 3, 8, 26, 'VEN'),
('Takeshi', 'Fujimoto', 4, 8, 24, 'JPN'),
('Jose', 'Mendez', 5, 8, 25, 'MEX'),
('Oliver', 'Johnson', 6, 8, 22, 'CAN'),
('Jin', 'Lee', 7, 8, 23, 'KOR'),
('Antonio', 'Martinez', 8, 8, 21, 'PUR'),
('Diego', 'Rodriguez', 9, 8, 24, 'PAN'),
('Felipe', 'Perez', 8, 8, 25, 'COL'),
('Luca', 'Bianchi', 9, 8, 27, 'ITA');

-- Team 19: Valkyries
INSERT INTO player (First_Name, Last_Name, Position_ID, Team_ID, Age, Country_ID) VALUES
('Isaac', 'Davis', 1, 9, 22, 'USA'),
('Carlos', 'Alvarez', 1, 9, 28, 'DOM'),
('Rafael', 'Lopez', 2, 9, 30, 'CUB'),
('Victor', 'Gonzalez', 3, 9, 26, 'VEN'),
('Kenta', 'Nakamura', 4, 9, 24, 'JPN'),
('Juan', 'Martinez', 5, 9, 25, 'MEX'),
('Ryan', 'Taylor', 6, 9, 23, 'CAN'),
('Jin', 'Park', 7, 9, 22, 'KOR'),
('Carlos', 'Mendoza', 8, 9, 21, 'PUR'),
('Esteban', 'Hernandez', 9, 9, 24, 'PAN'),
('Luis', 'Cortes', 6, 9, 25, 'COL'),
('Marco', 'Silva', 5, 9, 27, 'BRA');

-- Team 20: Iron Thunder
INSERT INTO player (First_Name, Last_Name, Position_ID, Team_ID, Age, Country_ID) VALUES
('Aiden', 'Scott', 1, 10, 23, 'USA'),
('Carlos', 'Alvarez', 1, 10, 28, 'DOM'),
('Rafael', 'Lopez', 2, 10, 30, 'CUB'),
('Victor', 'Gonzalez', 3, 10, 26, 'VEN'),
('Kenta', 'Nakamura', 4, 10, 24, 'JPN'),
('Juan', 'Martinez', 5, 10, 25, 'MEX'),
('Ryan', 'Taylor', 6, 10, 23, 'CAN'),
('Jin', 'Park', 7, 10, 22, 'KOR'),
('Carlos', 'Mendoza', 8, 10, 21, 'PUR'),
('Esteban', 'Hernandez', 9, 10, 24, 'PAN'),
('Luis', 'Cortes', 5, 10, 25, 'COL'),
('Marco', 'Silva', 8, 10, 27, 'BRA');


-- 60 Free Agent Players with FUN NAMES and NO TEAM (NULL)
INSERT INTO player (First_Name, Last_Name, Position_ID, Team_ID, Age, Country_ID) VALUES
('Luke', 'Skywalker', 1, NULL, 26, 'USA'),
('Max', 'Power', 2, NULL, 28, 'DOM'),
('Chris', 'Blaze', 3, NULL, 24, 'CUB'),
('Jason', 'Storm', 4, NULL, 30, 'VEN'),
('Tyler', 'Thunder', 5, NULL, 27, 'JPN'),
('Ethan', 'Lightning', 6, NULL, 29, 'MEX'),
('Oliver', 'Frost', 7, NULL, 23, 'CAN'),
('Mason', 'Vortex', 8, NULL, 25, 'KOR'),
('Ryan', 'Cyclone', 9, NULL, 26, 'PUR'),
('Jack', 'Tornado', 1, NULL, 30, 'BRA'),
('James', 'Tempest', 2, NULL, 27, 'PHI'),
('Daniel', 'Stratus', 3, NULL, 28, 'ITA'),
('Oliver', 'Zephyr', 5, NULL, 24, 'NED'),
('William', 'Zephyr', 6, NULL, 25, 'ESP'),
('Henry', 'Cloud', 7, NULL, 26, 'THA'),
('David', 'Nimbus', 8, NULL, 28, 'FRA'),
('Joseph', 'Solstice', 9, NULL, 23, 'SWE'),
('Ryan', 'Equinox', 1, NULL, 29, 'CHN'),
('Benjamin', 'Aurora', 2, NULL, 26, 'NOR'),
('Lucas', 'Pulsar', 3, NULL, 28, 'GER'),
('Alexander', 'Eclipse', 4, NULL, 30, 'RSA'),
('James', 'Comet', 5, NULL, 24, 'RUS'),
('Andrew', 'Quasar', 6, NULL, 27, 'EGY'),
('Michael', 'Meteor', 7, NULL, 25, 'IND'),
('Samuel', 'Radiance', 8, NULL, 29, 'POL'),
('Oliver', 'Nebula', 9, NULL, 30, 'KEN'),
('William', 'Zenith', 1, NULL, 26, 'UGA'),
('Adam', 'Horizon', 2, NULL, 28, 'TUR'),
('David', 'Orbit', 3, NULL, 27, 'BGR'),
('John', 'Galaxy', 4, NULL, 23, 'ARG'),
('Nathan', 'Celestial', 5, NULL, 29, 'BEL'),
('Jack', 'Titan', 1, NULL, 26, 'USA'),
('Isaac', 'Rogue', 2, NULL, 28, 'DOM'),
('Ben', 'Inferno', 3, NULL, 24, 'CUB'),
('Logan', 'Barrage', 4, NULL, 30, 'VEN'),
('Evan', 'Blaze', 5, NULL, 27, 'JPN'),
('Zach', 'Rider', 6, NULL, 29, 'MEX'),
('Nathan', 'Thunderstorm', 7, NULL, 23, 'CAN'),
('Oliver', 'Eruption', 8, NULL, 25, 'KOR'),
('Cole', 'Viper', 9, NULL, 26, 'PUR'),
('Liam', 'Inferno', 1, NULL, 30, 'BRA'),
('Owen', 'Cyclone', 2, NULL, 27, 'PHI'),
('Adam', 'Rogue', 3, NULL, 28, 'ITA'),
('Matthew', 'Dynamo', 4, NULL, 29, 'AUS'),
('Jake', 'Tempest', 5, NULL, 24, 'NED'),
('Kyle', 'Hurricane', 6, NULL, 25, 'ESP'),
('Leo', 'Storm', 8, NULL, 28, 'FRA'),
('Chris', 'Vortex', 9, NULL, 23, 'SWE'),
('Joshua', 'Quake', 1, NULL, 29, 'CHN'),
('Ryan', 'Thunder', 2, NULL, 26, 'NOR'),
('Max', 'Striker', 3, NULL, 28, 'GER'),
('Ethan', 'Meteor', 4, NULL, 30, 'RSA'),
('Cameron', 'Nebula', 6, NULL, 27, 'EGY'),
('Isaiah', 'Ranger', 7, NULL, 25, 'IND'),
('Samuel', 'Velocity', 8, NULL, 29, 'POL'),
('Daniel', 'Comet', 9, NULL, 30, 'KEN'),
('Hunter', 'Vortex', 1, NULL, 26, 'UGA'),
('David', 'Stellar', 2, NULL, 28, 'TUR'),
('Aaron', 'Nova', 3, NULL, 27, 'BGR'),
('Henry', 'Stratosphere', 4, NULL, 23, 'ARG'),
('Jackson', 'Phoenix', 5, NULL, 29, 'BEL');


SELECT * FROM Player WHERE Country_ID LIKE 'J%'AND Age >= 27;
