USE baseball_game_db;
-- Inserting 12 players for each of the 20 base teams as well as 30 free agent players with no assigned team (NULL)!
-- 270 Players Total

----------------------------------------------------------------------------------------
-- AL Teams 
----------------------------------------------------------------------------------------
-- Team 1: Crushers
INSERT INTO player (First_Name, Last_Name, Position_ID, Team_ID, Age, Country_ID) VALUES
('Mitchell', 'Walker', 1, 1, 26, 'USA'),
('Luis', 'Sanchez', 1, 1, 28, 'CUB'),
('Carlos', 'Martinez', 2, 1, 30, 'DOM'),
('Miguel', 'Perez', 3, 1, 27, 'VEN'),
('Tyler', 'King', 4, 1, 22, 'USA'),
('Andres', 'Hernandez', 5, 1, 25, 'MEX'),
('Hiroshi', 'Kobayashi', 6, 1, 24, 'JPN'),
('Jin', 'Choi', 7, 1, 23, 'KOR'),
('Ji-Man', 'Cho', 8, 1, 21, 'KOR'),
('Esteban', 'Lopez', 9, 1, 24, 'PAN'),
('Santiago', 'Martinez', 2, 1, 26, 'COL'),
('Ming-Ho', 'Park', 5, 1, 27, 'CHN');

-- Team 2: Phoenix
INSERT INTO player (First_Name, Last_Name, Position_ID, Team_ID, Age, Country_ID) VALUES
('Aiden', 'Bryant', 1, 2, 23, 'USA'),
('Juan', 'Gomez', 1, 2, 29, 'DOM'),
('Hiroto', 'Mieda', 2, 2, 24, 'JPN'),
('Juan', 'Martinez', 3, 2, 27, 'VEN'),
('Tatsuya', 'Yoshida', 4, 2, 24, 'JPN'),
('Manuel', 'Moreno', 5, 2, 25, 'MEX'),
('Ethan', 'Smith', 6, 2, 22, 'USA'),
('Minho', 'Park', 7, 2, 23, 'KOR'),
('Hasitaka', 'Mori', 8, 2, 24, 'JPN'),
('David', 'Soto', 9, 2, 24, 'PAN'),
('Felipe', 'Cortez', 7, 2, 24, 'COL'),
('Daniel', 'Schneider', 9, 2, 27, 'USA');

-- Team 3: Stormbreakers
INSERT INTO player (First_Name, Last_Name, Position_ID, Team_ID, Age, Country_ID) VALUES
('Evan', 'Dupont', 1, 3, 25, 'FRA'),
('Carlos', 'Kovacs', 1, 3, 28, 'HUN'),
('Luis', 'Mutiso', 2, 3, 30, 'KEN'),
('Nicolas', 'Alvarado', 3, 3, 26, 'BOL'),
('Andres', 'Kowalski', 4, 3, 24, 'POL'),
('Pedro', 'Schmidt', 5, 3, 27, 'SUI'),
('Lucas', 'Nikolic', 6, 3, 23, 'SRB'),
('Jin', 'Zewde', 7, 3, 23, 'ETH'),
('Rafael', 'Mendy', 8, 3, 21, 'SEN'),
('Sho', 'Nakamura', 9, 3, 24, 'JPN'),
('Carlos', 'Fernandez', 2, 3, 25, 'ARG'),
('Marco', 'Adeyemi', 1, 3, 27, 'NGA');

-- Team 4: Guardians of the Galaxy
INSERT INTO player (First_Name, Last_Name, Position_ID, Team_ID, Age, Country_ID) VALUES
('Ethan', 'Johnson', 1, 4, 24, 'USA'),
('Ryan', 'Smith', 1, 4, 29, 'USA'),
('Carlos', 'Morales', 2, 4, 27, 'CUB'),
('Tim', 'Walker', 3, 4, 28, 'USA'),
('Ryuji', 'Tanaka', 4, 4, 23, 'JPN'),
('James', 'Williams', 5, 4, 26, 'USA'),
('David', 'Garcia', 6, 4, 25, 'USA'),
('Hyun', 'Kim', 7, 4, 22, 'KOR'),
('Omar', 'Viciedo', 8, 4, 21, 'DOM'),
('Casey', 'Folk', 9, 4, 24, 'USA'),
('Diego', 'Morales', 5, 4, 23, 'MEX'),
('Matteo', 'Bianchi', 5, 4, 27, 'ITA');

-- Team 5: Flyers
INSERT INTO player (First_Name, Last_Name, Position_ID, Team_ID, Age, Country_ID) VALUES
('Luca', 'Ricci', 1, 5, 22, 'ITA'),
('Santiago', 'Martinez', 1, 5, 28, 'ARG'),
('Masataka', 'Yumori', 2, 5, 30, 'JPN'),
('Ichiro', 'Yoshida', 3, 5, 27, 'JPN'),
('Giovanni', 'Bianchi', 4, 5, 24, 'ITA'),
('Emilio', 'Lopez', 5, 5, 26, 'MEX'),
('Liam', 'Williams', 6, 5, 23, 'USA'),
('Jiwon', 'Park', 7, 5, 22, 'KOR'),
('Jim', 'Ray', 8, 5, 21, 'USA'),
('Marcos', 'Jiminez', 9, 5, 24, 'BRA'),
('Andres', 'Garcia', 4, 5, 25, 'PER'),
('Diego', 'Gomez', 1, 5, 27, 'ESP');

-- Team 6: Knights
INSERT INTO player (First_Name, Last_Name, Position_ID, Team_ID, Age, Country_ID) VALUES
('Alexander', 'Brown', 1, 6, 25, 'GBR'),
('Juan', 'Rodriguez', 1, 6, 28, 'ESP'),
('Mateo', 'Fernandez', 2, 6, 30, 'ARG'),
('Yuki', 'Tanaka', 3, 6, 27, 'JPN'),
('Jeffrey', 'Lancelot', 4, 6, 24, 'GBR'),
('Luca', 'Ricci', 5, 6, 26, 'ITA'),
('Ravi', 'Patel', 6, 6, 23, 'IND'),
('Jiwon', 'Park', 7, 6, 22, 'KOR'),
('Carlos', 'Lopez', 8, 6, 21, 'MEX'),
('Matthew', 'Monaghan', 9, 6, 24, 'GBR'),
('Dmitri', 'Ivanov', 4, 6, 25, 'RUS'),
('James', 'Miller', 3, 6, 27, 'GBR');

-- Team 7: Blaze Hounds
INSERT INTO player (First_Name, Last_Name, Position_ID, Team_ID, Age, Country_ID) VALUES
('Samson', 'Sok', 1, 7, 24, 'THA'),
('Juan', 'Perez', 1, 7, 28, 'ESP'), 
('Diego', 'Rodriguez', 2, 7, 26, 'ARG'),
('Carlos', 'Diaz', 3, 7, 21, 'PAN'),
('Ryu', 'Takahashi', 4, 7, 30, 'JPN'),
('Tetsuya', 'Hamada', 5, 7, 29, 'JPN'),
('Juan', 'Morales', 6, 7, 27, 'NIC'),
('Liam', 'Evans', 7, 7, 25, 'USA'),
('Hyeon', 'Kim', 8, 7, 25, 'KOR'),
('Juan', 'Torres', 9, 7, 22, 'CUB'),
('Javier', 'Hernandez', 1, 7, 24, 'VEN'),
('Nils', 'Bauer', 4, 7, 27, 'GER');

-- Team 8: Werewolves
INSERT INTO player (First_Name, Last_Name, Position_ID, Team_ID, Age, Country_ID) VALUES
('David', 'Manningham', 1, 8, 23, 'USA'),
('Jose', 'Hernandez', 1, 8, 28, 'DOM'),
('Carlos', 'Perez', 2, 8, 30, 'CUB'),
('Victor', 'Garcia', 3, 8, 27, 'VEN'),
('Takumi', 'Kobayashi', 4, 8, 24, 'JPN'),
('Luis', 'Mendoza', 5, 8, 26, 'MEX'),
('Michael', 'Johnson', 6, 8, 23, 'USA'),
('Jin', 'Kim', 7, 8, 22, 'KOR'),
('Dick', 'Applebee', 8, 8, 21, 'USA'),
('Esteban', 'Rodriguez', 9, 8, 24, 'PAN'),
('Felipe', 'Cortez', 3, 8, 24, 'COL'),
('David', 'Schneider', 9, 8, 27, 'USA');

-- Team 9: Dragons
INSERT INTO player (First_Name, Last_Name, Position_ID, Team_ID, Age, Country_ID) VALUES
('Carlos', 'Perez', 1, 9, 22, 'PHI'),
('Luca', 'Gonzalez', 1, 9, 28, 'PER'),
('Liam', 'Bianchi', 2, 9, 30, 'ITA'),
('Josh', 'Smith', 3, 9, 27, 'USA'),
('Shinji', 'Rodriguez', 4, 9, 24, 'JPN'),
('Juan', 'Taylor', 5, 9, 25, 'TTO'),
('Eduardo', 'Kumar', 6, 9, 23, 'IND'),
('Seungjin', 'Martinez', 7, 9, 22, 'BRA'),
('Tyler', 'Mendes', 8, 9, 21, 'USA'),
('Diana', 'Lopez', 9, 9, 24, 'MEX'),
('Boris', 'Chang', 1, 9, 25, 'CHN'),
('Victor', 'Santos', 4, 9, 27, 'CUB');

-- Team 10: Pirates
INSERT INTO player (First_Name, Last_Name, Position_ID, Team_ID, Age, Country_ID) VALUES
('Zach', 'Taylor', 1, 10, 23, 'USA'),
('Carlos', 'Martinez', 1, 10, 29, 'DOM'),
('Fernando', 'Lopez', 2, 10, 30, 'CUB'),
('Ricardo', 'Hernandez', 3, 10, 27, 'VEN'),
('Yuji', 'Ishida', 4, 10, 24, 'JPN'),
('Antonio', 'Freeman', 5, 10, 26, 'USA'),
('Ethan', 'Davis', 6, 10, 23, 'USA'),
('Jiwon', 'Choi', 7, 10, 22, 'KOR'),
('Carlos', 'Reyes', 8, 10, 21, 'THA'),
('Esteban', 'Lopez', 9, 10, 24, 'GHA'),
('Felipe', 'Mendoza', 9, 10, 25, 'KEN'),
('Matteo', 'Rossi', 7, 10, 27, 'BRA');


----------------------------------------------------------------------------------------
-- NL Teams 
----------------------------------------------------------------------------------------
-- Team 11: Vortex Vipers
INSERT INTO player (First_Name, Last_Name, Position_ID, Team_ID, Age, Country_ID) VALUES
('Hiroshi', 'Kobayashi', 1, 11, 24, 'JPN'),
('Juan', 'Martinez', 1, 11, 26, 'CUB'),
('Carlos', 'Diaz', 2, 11, 30, 'ARG'),
('Luis', 'Santos', 3, 11, 27, 'BRA'),
('Evan', 'O’Connor', 4, 11, 23, 'IRL'),
('Pedro', 'Jimenez', 5, 11, 28, 'PHI'),
('Ryan', 'Nguyen', 6, 11, 23, 'VNM'),
('Jiho', 'Choi', 7, 11, 22, 'KOR'),
('Antonio', 'Garcia', 8, 11, 21, 'ESP'),
('Emilio', 'Lopez', 9, 11, 24, 'COL'),
('Takeshi', 'Saito', 4, 11, 25, 'JPN'),
('Kenji', 'Takahashi', 8, 11, 27, 'JPN');

-- Team 12: Tempest Titans
INSERT INTO player (First_Name, Last_Name, Position_ID, Team_ID, Age, Country_ID) VALUES
('Liam', 'O’Connor', 1, 12, 24, 'USA'),
('Juan', 'Rodriguez', 1, 12, 29, 'ESP'),
('Carlos', 'Jimenez', 2, 12, 30, 'PHI'),
('Victor', 'Santos', 3, 12, 26, 'BRA'),
('Takeshi', 'Nakamura', 4, 12, 23, 'JPN'),
('Jose', 'Alvarez', 5, 12, 25, 'ARG'),
('Oliver', 'Wilson', 6, 12, 22, 'USA'),
('Jin', 'Park', 7, 12, 23, 'KOR'),
('Esteban', 'Gutierrez', 9, 12, 21, 'CUB'),
('Dominick', 'Olhava', 8, 12, 21, 'USA'),
('Luis', 'Martinez', 2, 12, 25, 'TTO'),
('Nico', 'Bianchi', 2, 12, 27, 'ITA');

-- Team 13: Quasar Comets
INSERT INTO player (First_Name, Last_Name, Position_ID, Team_ID, Age, Country_ID) VALUES
('Brady', 'Sullivan', 1, 13, 23, 'USA'),
('Juan', 'Rodriguez', 1, 13, 28, 'ESP'),
('Hiroshi', 'Tanaka', 2, 13, 24, 'JPN'),
('Javier', 'Moreno', 3, 13, 27, 'VEN'),
('Carlos', 'Jimenez', 4, 13, 30, 'PHI'),
('Andres', 'Gomez', 5, 13, 26, 'COL'),
('Ryan', 'Miller', 6, 13, 23, 'USA'),
('Jiwon', 'Park', 7, 13, 22, 'KOR'),
('Carlos', 'Vega', 8, 13, 21, 'CUB'),
('Felipe', 'Alvarez', 9, 13, 24, 'PER'),
('Santiago', 'Diaz', 7, 13, 25, 'ARG'),
('James', 'Thompson', 6, 13, 25, 'USA');


-- Team 14: Phantoms
INSERT INTO player (First_Name, Last_Name, Position_ID, Team_ID, Age, Country_ID) VALUES
('Ethan', 'Hughes', 1, 14, 22, 'AUS'),
('Miguel', 'Mendez', 1, 14, 29, 'ARG'),
('Carlos', 'Perez', 2, 14, 30, 'ESP'),
('Jose', 'Castillo', 3, 14, 27, 'VEN'),
('Shinji', 'Fujimoto', 4, 14, 24, 'JPN'),
('Brad', 'Edwards', 5, 14, 26, 'USA'),
('Byron', 'Haskins', 6, 14, 23, 'USA'),
('Jiho', 'Kim', 7, 14, 22, 'KOR'),
('Antonio', 'Reyes', 8, 14, 21, 'CUB'),
('Cing', 'Kim', 9, 14, 24, 'KOR'),
('Felipe', 'Gonzalez', 3, 14, 25, 'COL'),
('Luca', 'Rossi', 6, 14, 27, 'ITA');


-- Team 15: Eclipse
INSERT INTO player (First_Name, Last_Name, Position_ID, Team_ID, Age, Country_ID) VALUES
('Dylan', 'Smith', 1, 15, 23, 'USA'),
('Carlos', 'Sanchez', 1, 15, 28, 'COL'),
('Rafael', 'Martinez', 2, 15, 30, 'DOM'),
('Victor', 'Pereira', 3, 15, 26, 'BRA'),
('Hiroshi', 'Yamada', 4, 15, 24, 'JPN'),
('Juan', 'Lopez', 5, 15, 25, 'MEX'),
('Ryan', 'Singh', 6, 15, 23, 'IND'),
('Minseok', 'Park', 7, 15, 22, 'KOR'),
('Ming', 'Han', 8, 15, 21, 'CHN'),
('Esteban', 'Zuniga', 9, 15, 24, 'PAN'),
('Brandon', 'Beckham', 7, 15, 25, 'USA'),
('Marco', 'Costa', 5, 15, 27, 'ESP');

-- Team 16: Aether Hawks
INSERT INTO player (First_Name, Last_Name, Position_ID, Team_ID, Age, Country_ID) VALUES
('Haruto', 'Takahashi', 1, 16, 24, 'JPN'),
('Pedro', 'Rodriguez', 1, 16, 29, 'DOM'),
('Javier', 'Gomez', 2, 16, 30, 'CUB'),
('Luis', 'Martinez', 3, 16, 27, 'VEN'),
('Noah', 'Jackson', 4, 16, 24, 'USA'), 
('Carlos', 'Hernandez', 5, 16, 26, 'MEX'),
('Ethan', 'Williams', 6, 16, 23, 'CAN'),
('Jiho', 'Lee', 7, 16, 22, 'KOR'),
('Antonio', 'Gonzalez', 8, 16, 21, 'PUR'),
('Emilio', 'Perez', 9, 16, 24, 'PAN'),
('Hiro', 'Mataka', 2, 16, 25, 'JPN'),
('Matteo', 'Luzendo', 4, 16, 27, 'ITA');

-- Team 17: Mystic Mirages
INSERT INTO player (First_Name, Last_Name, Position_ID, Team_ID, Age, Country_ID) VALUES
('Minseok', 'Park', 1, 17, 22, 'KOR'),
('Ferdinand', 'Bianchi', 1, 17, 27, 'ITA'),
('Jose', 'Hernandez', 2, 17, 30, 'DOM'),
('Carlos', 'Silva', 3, 17, 27, 'BRA'),
('Zachary', 'Brown', 4, 17, 23, 'USA'),
('Eduardo', 'Martinez', 5, 17, 26, 'ARG'),
('Yuki', 'Tanaka', 6, 17, 24, 'JPN'),
('Lucas', 'Johnson', 7, 17, 23, 'USA'),
('Felipe', 'Mendes', 8, 17, 21, 'BRA'),
('Diego', 'Gonzalez', 9, 17, 24, 'CHL'),
('Juan', 'Lopez', 2, 17, 25, 'COL'),
('Carlos', 'Rodriguez', 5, 17, 28, 'MEX');

-- Team 18: Trailblazers
INSERT INTO player (First_Name, Last_Name, Position_ID, Team_ID, Age, Country_ID) VALUES
('Jose', 'Mendez', 1, 18, 25, 'MEX'),
('Felipe', 'Perez', 1, 18, 25, 'COL'),
('Javier', 'Martinez', 2, 18, 30, 'CUB'),
('Christian', 'Yamamoto', 3, 18, 26, 'JPN'),
('Oliver', 'Johnson', 4, 18, 22, 'CAN'),
('Eli', 'Brown', 5, 18, 23, 'USA'),
('Takeshi', 'Fujimoto', 6, 18, 24, 'JPN'),
('Jin', 'Lee-Ho', 7, 18, 23, 'KOR'),
('Antonio', 'Martinez', 8, 18, 21, 'PUR'),
('Diego', 'Warrior', 9, 18, 24, 'USA'),
('Carlos', 'Gomez', 8, 18, 29, 'DOM'),
('Lucas', 'Oliver', 8, 18, 27, 'USA');

-- Team 19: Valkyries
INSERT INTO player (First_Name, Last_Name, Position_ID, Team_ID, Age, Country_ID) VALUES
('Esteban', 'Silva', 1, 19, 24, 'BRA'),
('Ryan', 'Lee', 1, 19, 23, 'KOR'),
('Kenta', 'Nakamura', 2, 19, 24, 'JPN'),
('Victor', 'Martinez', 3, 19, 26, 'VEN'),
('Rafael', 'Tay', 4, 19, 30, 'CHN'),
('Juan', 'Lopez', 5, 19, 25, 'MEX'),
('Carlos', 'Gomez', 6, 19, 28, 'ARG'),
('Jin', 'Kang', 7, 19, 22, 'TUR'),
('JT', 'Mendoza', 8, 19, 21, 'PER'),
('Isaac', 'Cortes', 9, 19, 22, 'COL'),
('Luis', 'Kozlov', 6, 19, 25, 'RUS'),
('Matty', 'Chang', 5, 19, 27, 'CHN');

-- Team 20: Iron Thunder
INSERT INTO player (First_Name, Last_Name, Position_ID, Team_ID, Age, Country_ID) VALUES
('Yoshinobo', 'Tanaka', 1, 20, 23, 'JPN'),
('Dom', 'Cruz', 1, 20, 28, 'PHI'),
('Rafael', 'Martinez', 2, 20, 30, 'ARG'),
('Victor', 'Santos', 3, 20, 26, 'BRA'),
('Carlos', 'Ramos', 4, 20, 21, 'COL'),
('Juan', 'Torres', 5, 20, 25, 'MEX'),
('Derrick', 'Benter', 6, 20, 23, 'USA'),
('Jin', 'Lee', 7, 20, 22, 'KOR'),
('Kenta', 'Fujimoto', 8, 20, 24, 'JPN'),
('Esteban', 'Zuniga', 9, 20, 24, 'CRI'),
('Luis', 'Fernandez', 5, 20, 25, 'CHL'),
('TJ', 'Henning', 8, 20, 27, 'USA');

-- 30 Free Agent Players with FUN NAMES and NO TEAM (NULL)
INSERT INTO player (First_Name, Last_Name, Position_ID, Team_ID, Age, Country_ID) VALUES
('Johnny', 'Mitchell', 1, NULL, 24, 'USA'),
('Ignacio', 'DeLacruz', 2, NULL, 30, 'DOM'),
('Haruto', 'Fukuda', 3, NULL, 21, 'JPN'),
('Diego', 'Valladares', 1, NULL, 28, 'ESP'),
('Thiago', 'Monteiro', 5, NULL, 25, 'BRA'),
('Sungmin', 'Park', 6, NULL, 26, 'KOR'),
('Gabriel', 'Mendoza', 7, NULL, 22, 'MEX'),
('Orlando', 'Quintero', 8, NULL, 27, 'VEN'),
('Carter', 'Grayson', 9, NULL, 23, 'CAN'),
('Luciano', 'Martinez', 1, NULL, 24, 'ARG'),
('Takumi', 'Nakamura', 2, NULL, 28, 'JPN'),
('Eli', 'Briar', 3, NULL, 20, 'USA'),
('Salvador', 'Arango', 1, NULL, 31, 'COL'),
('Santiago', 'Fernandes', 5, NULL, 29, 'PER'),
('Daichi', 'Kobayashi', 6, NULL, 21, 'JPN'),
('Montserrat', 'Villalobos', 7, NULL, 24, 'MEX'),
('Lorenzo', 'Gomes', 8, NULL, 30, 'BRA'),
('Hinjun', 'Choi', 9, NULL, 25, 'KOR'),
('Devin', 'Williams', 1, NULL, 22, 'USA'),
('Tobias', 'Alvarez', 2, NULL, 28, 'CHL'),
('TJ', 'Brady', 3, NULL, 23, 'USA'),
('Valeria', 'Serrano', 4, NULL, 26, 'PUR'),
('Riku', 'Yamada', 5, NULL, 25, 'JPN'),
('PJ', 'Wood', 6, NULL, 20, 'USA'),
('Mateo', 'Lozano', 7, NULL, 29, 'ARG'),
('Hikaru', 'Takahashi', 8, NULL, 28, 'JPN'),
('Adam', 'Sterling', 9, NULL, 24, 'USA'),
('Ben', 'Ryan', 1, NULL, 27, 'USA'),
('Adam', 'Jones', 8, NULL, 30, 'USA'),
('Javier', 'Caraballo', 3, NULL, 22, 'VEN');



SELECT * FROM Player WHERE Country_ID LIKE 'J%'AND Age >= 25 ORDER BY Age DESC;
