USE baseball_game_db;

-- Inserting ratings for every single base player! Oof this was a lot of work to properly ask AI to randomly generate this data!!!

-- Ratings for Team 1: Crushers starting from Player_ID = 1
INSERT INTO ratings (Player_ID, Contact, Power, Eye, Speed, K_Per_Nine, BB_Per_Nine, HR_Per_Nine) VALUES
(1, 40, 80, 50, 55, 82, 65, 85),  -- Mitchell Walker (Pitcher)
(2, 35, 85, 45, 52, 73, 95, 65),  -- Luis Sanchez (Pitcher)
(3, 55, 95, 70, 75, 10, 8, 6),    -- Carlos Martinez (Batter)
(4, 60, 93, 72, 80, 12, 10, 7),   -- Miguel Perez (Batter)
(5, 50, 90, 74, 85, 8, 7, 9),     -- Tyler King (Batter)
(6, 52, 96, 65, 78, 5, 12, 10),   -- Andres Hernandez (Batter)
(7, 48, 92, 62, 77, 7, 11, 8),    -- Hiroshi Kobayashi (Batter)
(8, 60, 98, 79, 84, 10, 6, 11),   -- Jin Choi (Batter)
(9, 45, 94, 85, 72, 8, 12, 9),    -- Ji-Man Cho (Batter)
(10, 50, 96, 70, 75, 7, 11, 10),  -- Esteban Lopez (Batter)
(11, 53, 99, 78, 68, 11, 8, 7),   -- Santiago Martinez (Batter)
(12, 55, 91, 65, 80, 9, 10, 6);   -- Ming-Ho Park (Batter)

-- Ratings for Team 2: Phoenix starting from Player_ID = 13
INSERT INTO ratings (Player_ID, Contact, Power, Eye, Speed, K_Per_Nine, BB_Per_Nine, HR_Per_Nine) VALUES
(13, 14, 17, 22, 21, 93, 82, 77),  -- Aiden Bryant (Pitcher)
(14, 16, 19, 12, 14, 89, 74, 81),  -- Juan Gomez (Pitcher)
(15, 65, 82, 80, 86, 15, 70, 73),  -- Hiroto Mieda (Batter)
(16, 55, 60, 68, 79, 13, 56, 79),  -- Juan Martinez (Batter)
(17, 60, 77, 70, 83, 11, 55, 70),  -- Tatsuya Yoshida (Batter)
(18, 70, 99, 78, 82, 18, 69, 72),  -- Manuel Moreno (Batter)
(19, 50, 55, 74, 81, 17, 63, 71),  -- Ethan Smith (Batter)
(20, 68, 65, 75, 84, 14, 72, 69),  -- Minho Park (Batter)
(21, 60, 90, 78, 78, 12, 67, 74),  -- Hasitaka Mori (Batter)
(22, 72, 85, 82, 90, 19, 65, 65), -- David Soto (Batter)
(23, 55, 92, 80, 85, 16, 71, 68), -- Felipe Cortez (Batter)
(24, 62, 70, 73, 87, 20, 60, 77); -- Daniel Schneider (Batter)

-- Ratings for Team 3: Stormbreakers starting from Player_ID = 25
INSERT INTO ratings (Player_ID, Contact, Power, Eye, Speed, K_Per_Nine, BB_Per_Nine, HR_Per_Nine) VALUES
(25, 18, 12, 17, 15, 72, 63, 80),   -- Evan Dupont (Pitcher)
(26, 19, 14, 16, 14, 68, 70, 73),   -- Carlos Kovacs (Pitcher)
(27, 81, 92, 88, 67, 5, 7, 10),    -- Luis Mutiso (Batter)
(28, 62, 99, 85, 79, 3, 5, 8),     -- Nicolas Alvarado (Batter)
(29, 55, 91, 72, 76, 4, 8, 11),    -- Andres Kowalski (Batter)
(30, 96, 79, 90, 84, 5, 7, 9),     -- Pedro Schmidt (Batter)
(31, 79, 88, 76, 71, 7, 9, 12),    -- Lucas Nikolic (Batter)
(32, 95, 94, 87, 80, 6, 8, 10),    -- Jin Zewde (Batter)
(33, 60, 82, 74, 88, 2, 4, 7),     -- Rafael Mendy (Batter)
(34, 77, 85, 80, 70, 6, 10, 15),   -- Sho Nakamura (Batter)
(35, 58, 69, 78, 77, 1, 3, 6),     -- Carlos Fernandez (Batter)
(36, 17, 13, 15, 18, 73, 80, 85);  -- Marco Adeyemi (Pitcher)

-- Ratings for Team 4: Guardians of the Galaxy starting from Player_ID = 37
INSERT INTO ratings (Player_ID, Contact, Power, Eye, Speed, K_Per_Nine, BB_Per_Nine, HR_Per_Nine) VALUES
(37, 12, 15, 18, 10, 85, 72, 79),  -- Ethan Johnson (Pitcher)
(38, 16, 19, 14, 9, 80, 78, 67),   -- Ryan Smith (Pitcher)
(39, 78, 92, 80, 85, 7, 15, 10),   -- Carlos Morales (Batter)
(40, 66, 84, 72, 88, 5, 18, 6),    -- Tim Walker (Batter)
(41, 82, 91, 75, 77, 9, 12, 14),   -- Ryuji Tanaka (Batter)
(42, 90, 87, 80, 89, 10, 13, 12),  -- James Williams (Batter)
(43, 73, 95, 82, 76, 8, 19, 11),   -- David Garcia (Batter)
(44, 68, 85, 78, 70, 6, 9, 9),     -- Hyun Kim (Batter)
(45, 93, 99, 81, 90, 5, 11, 10),   -- Omar Viciedo (Batter)
(46, 79, 87, 80, 95, 7, 13, 8),    -- Casey Folk (Batter)
(47, 63, 81, 76, 80, 9, 17, 12),   -- Diego Morales (Batter)
(48, 78, 94, 83, 88, 8, 15, 13);   -- Matteo Bianchi (Batter)

-- Ratings for Team 5: Flyers starting from Player_ID = 49
INSERT INTO ratings (Player_ID, Contact, Power, Eye, Speed, K_Per_Nine, BB_Per_Nine, HR_Per_Nine) VALUES
(49, 16, 18, 14, 10, 82, 75, 60),  -- Luca Ricci (Pitcher)
(50, 12, 19, 15, 13, 77, 80, 70),  -- Santiago Martinez (Pitcher)
(51, 87, 60, 78, 85, 6, 10, 15),   -- Masataka Yumori (Batter)
(52, 64, 89, 74, 90, 8, 16, 12),   -- Ichiro Yoshida (Batter)
(53, 82, 98, 91, 94, 10, 14, 11),  -- Giovanni Bianchi (Batter)
(54, 72, 78, 65, 88, 9, 11, 18),   -- Emilio Lopez (Batter)
(55, 63, 88, 64, 90, 7, 18, 6),    -- Liam Williams (Batter)
(56, 92, 95, 85, 84, 5, 9, 19),    -- Jiwon Park (Batter)
(57, 79, 91, 88, 91, 4, 11, 9),    -- Jim Ray (Batter)
(58, 91, 99, 87, 83, 8, 14, 12),   -- Marcos Jiminez (Batter)
(59, 80, 94, 79, 88, 7, 11, 14),   -- Andres Garcia (Batter)
(60, 13, 15, 18, 14, 85, 77, 68);  -- Diego Gomez (Pitcher)

-- Ratings for Team 6: Knights starting from Player_ID = 61
INSERT INTO ratings (Player_ID, Contact, Power, Eye, Speed, K_Per_Nine, BB_Per_Nine, HR_Per_Nine) VALUES
(61, 15, 19, 12, 9, 82, 75, 67),  -- Alexander Brown (Pitcher)
(62, 17, 14, 11, 15, 90, 80, 72),  -- Juan Rodriguez (Pitcher)
(63, 83, 58, 79, 62, 10, 9, 11),  -- Mateo Fernandez (Batter)
(64, 62, 97, 71, 91, 9, 11, 12),  -- Yuki Tanaka (Batter)
(65, 77, 45, 60, 66, 8, 10, 9),   -- Jeffrey Lancelot (Batter)
(66, 55, 88, 69, 89, 7, 15, 6),   -- Luca Ricci (Batter)
(67, 82, 61, 90, 71, 6, 12, 14),  -- Ravi Patel (Batter)
(68, 92, 50, 83, 80, 5, 14, 16),  -- Jiwon Park (Batter)
(69, 71, 94, 85, 93, 6, 16, 10),  -- Carlos Lopez (Batter)
(70, 89, 97, 90, 70, 4, 11, 13),  -- Matthew Monaghan (Batter)
(71, 85, 60, 78, 74, 7, 12, 10),  -- Dmitri Ivanov (Batter)
(72, 90, 65, 88, 92, 6, 13, 15);  -- James Miller (Batter)

-- Team 7: Blaze Hounds - Player Ratings starting from Player_ID = 73
INSERT INTO ratings (Player_ID, Contact, Power, Eye, Speed, K_Per_Nine, BB_Per_Nine, HR_Per_Nine) VALUES
(73, 17, 13, 10, 18, 75, 82, 69),  -- Samson Sok (Pitcher)
(74, 16, 12, 15, 19, 68, 84, 72),  -- Juan Perez (Pitcher)
(75, 85, 78, 91, 65, 8, 15, 10),   -- Diego Rodriguez (Batter)
(76, 90, 88, 92, 80, 6, 18, 13),   -- Carlos Diaz (Batter)
(77, 91, 80, 95, 83, 9, 10, 12),   -- Ryu Takahashi (Batter)
(78, 93, 95, 98, 85, 7, 12, 8),    -- Tetsuya Hamada (Batter)
(79, 92, 91, 96, 79, 10, 14, 11),   -- Juan Morales (Batter)
(80, 88, 85, 91, 72, 11, 13, 15),   -- Liam Evans (Batter)
(81, 94, 90, 97, 90, 9, 17, 10),    -- Hyeon Kim (Batter)
(82, 97, 92, 98, 95, 12, 14, 9),    -- Juan Torres (Batter)
(83, 19, 17, 13, 20, 76, 80, 68),   -- Javier Hernandez (Pitcher)
(84, 90, 87, 93, 78, 10, 18, 14);   -- Nils Bauer (Batter)

-- Team 8: Werewolves Ratings starting from Player_ID = 85
INSERT INTO ratings (Player_ID, Contact, Power, Eye, Speed, K_Per_Nine, BB_Per_Nine, HR_Per_Nine) VALUES
(85, 18, 15, 10, 12, 80, 72, 99),  -- David Manningham (Pitcher)
(86, 20, 19, 15, 11, 85, 87, 62),  -- Jose Hernandez (Pitcher)
(87, 78, 88, 72, 82, 10, 15, 19),  -- Carlos Perez (Batter)
(88, 63, 90, 68, 75, 10, 18, 17),  -- Victor Garcia (Batter)
(89, 53, 77, 62, 64, 10, 16, 19),  -- Takumi Kobayashi (Batter)
(90, 47, 69, 55, 61, 10, 14, 13),  -- Luis Mendoza (Batter)
(91, 62, 58, 65, 70, 10, 15, 11),  -- Michael Johnson (Batter)
(92, 74, 81, 79, 85, 10, 19, 12),  -- Jin Kim (Batter)
(93, 91, 95, 82, 92, 10, 18, 15),  -- Dick Applebee (Batter)
(94, 65, 72, 80, 67, 10, 17, 14),  -- Esteban Rodriguez (Batter)
(95, 59, 77, 63, 80, 10, 14, 19),  -- Felipe Cortez (Batter)
(96, 82, 89, 72, 88, 10, 15, 17);  -- David Schneider (Batter)

-- Team 9: Dragons starting from Player_ID = 97
INSERT INTO ratings (Player_ID, Contact, Power, Eye, Speed, K_Per_Nine, BB_Per_Nine, HR_Per_Nine) VALUES
(97, 18, 14, 15, 19, 84, 75, 61), -- Carlos Perez (Pitcher)
(98, 20, 16, 19, 18, 78, 81, 68), -- Luca Gonzalez (Pitcher)
(99, 93, 89, 96, 80, 5, 10, 8),   -- Liam Bianchi (Batter)
(100, 25, 99, 80, 77, 6, 11, 9),  -- Nia Smith (Batter)
(101, 90, 88, 91, 85, 7, 13, 10), -- Shinji Rodriguez (Batter)
(102, 87, 81, 85, 84, 6, 10, 12), -- Juan Taylor (Batter)
(103, 93, 89, 88, 87, 6, 10, 12), -- Eduardo Kumar (Batter)
(104, 85, 78, 82, 80, 8, 14, 7),  -- Seungjin Martinez (Batter)
(105, 99, 45, 84, 79, 9, 12, 11), -- Tyler Mendes (Batter)
(106, 88, 90, 87, 84, 7, 11, 13), -- Diana Lopez (Batter)
(107, 17, 18, 19, 15, 88, 99, 72), -- Boris Chang (Pitcher)
(108, 91, 85, 90, 89, 7, 12, 10); -- Victor Santos (Batter)

-- Team 10: Pirates starting from Player_ID = 109
INSERT INTO ratings (Player_ID, Contact, Power, Eye, Speed, K_Per_Nine, BB_Per_Nine, HR_Per_Nine) VALUES
(109, 10, 12, 15, 19, 85, 80, 72),  -- Zach Taylor (Pitcher)
(110, 13, 14, 17, 18, 88, 99, 90),  -- Carlos Martinez (Pitcher)
(111, 97, 95, 92, 76, 9, 13, 8),   -- Fernando Lopez (Batter)
(112, 89, 59, 75, 67, 8, 12, 14),  -- Ricardo Hernandez (Batter)
(113, 55, 68, 50, 78, 7, 9, 15),   -- Yuji Ishida (Batter)
(114, 77, 61, 85, 70, 9, 10, 18),  -- Antonio Freeman (Batter)
(115, 98, 96, 91, 86, 6, 15, 9),   -- Ethan Davis (Batter)
(116, 82, 80, 79, 94, 8, 11, 12),  -- Jiwon Choi (Batter)
(117, 92, 85, 88, 91, 7, 11, 10),  -- Carlos Reyes (Batter)
(118, 91, 84, 83, 87, 6, 14, 13),  -- Esteban Lopez (Batter)
(119, 87, 73, 70, 80, 8, 12, 11),  -- Felipe Mendoza (Batter)
(120, 80, 88, 92, 90, 7, 13, 8);   -- Matteo Rossi (Batter)

-- Team 11: Vortex Vipers starting from Player_ID = 121
INSERT INTO ratings (Player_ID, Contact, Power, Eye, Speed, K_Per_Nine, BB_Per_Nine, HR_Per_Nine) VALUES
(121, 15, 14, 19, 12, 85, 77, 90),  -- Hiroshi Kobayashi (Pitcher)
(122, 10, 13, 17, 15, 88, 82, 72),  -- Juan Martinez (Pitcher)
(123, 91, 68, 90, 82, 7, 12, 14),  -- Carlos Diaz (Batter)
(124, 96, 50, 86, 76, 5, 10, 18),  -- Luis Santos (Batter)
(125, 74, 71, 59, 62, 8, 13, 16),  -- Evan O'Connor (Batter)
(126, 63, 88, 79, 80, 9, 15, 13),  -- Pedro Jimenez (Batter)
(127, 77, 57, 95, 69, 6, 14, 12),  -- Ryan Nguyen (Batter)
(128, 81, 99, 78, 92, 7, 11, 10),  -- Jiho Choi (Batter)
(129, 70, 92, 94, 65, 6, 13, 17),  -- Antonio Garcia (Batter)
(130, 89, 81, 83, 84, 5, 12, 14),  -- Emilio Lopez (Batter)
(131, 60, 66, 52, 75, 8, 14, 19),  -- Takeshi Saito (Batter)
(132, 83, 58, 64, 70, 9, 13, 15);  -- Kenji Takahashi (Batter)

-- Team 12: Tempest Titans starting from Player_ID = 133
INSERT INTO ratings (Player_ID, Contact, Power, Eye, Speed, K_Per_Nine, BB_Per_Nine, HR_Per_Nine) VALUES
(133, 5, 9, 12, 10, 88, 91, 80),    -- Liam O’Connor (Pitcher)
(134, 6, 7, 10, 8, 90, 92, 85),    -- Juan Rodriguez (Pitcher)
(135, 99, 98, 95, 92, 7, 9, 5),    -- Carlos Jimenez (Batter)
(136, 84, 45, 77, 61, 6, 10, 8),    -- Victor Santos (Batter)
(137, 50, 64, 85, 70, 9, 8, 12),    -- Takeshi Nakamura (Batter)
(138, 99, 75, 91, 95, 5, 7, 6),    -- Jose Alvarez (Batter)
(139, 60, 89, 80, 55, 6, 13, 9),    -- Oliver Wilson (Batter)
(140, 92, 83, 86, 77, 7, 10, 11),   -- Jin Park (Batter)
(141, 70, 91, 89, 68, 5, 12, 10),   -- Esteban Gutierrez (Batter)
(142, 99, 99, 99, 99, 99, 99, 99),    -- Dominick Olhava (Batter)
(143, 60, 79, 72, 85, 9, 8, 15),    -- Luis Martinez (Batter)
(144, 77, 55, 92, 60, 8, 9, 7);     -- Nico Bianchi (Batter)




