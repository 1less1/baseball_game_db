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

-- Team 13: Quasar Comets starting from Player_ID = 145
INSERT INTO ratings (Player_ID, Contact, Power, Eye, Speed, K_Per_Nine, BB_Per_Nine, HR_Per_Nine) VALUES
(145, 10, 7, 16, 12, 84, 65, 87),   -- Liam O’Connor (Pitcher)
(146, 3, 5, 19, 9, 72, 75, 90),     -- Juan Rodriguez (Pitcher)
(147, 78, 77, 91, 93, 10, 12, 9),   -- Hiroshi Tanaka (Batter)
(148, 98, 55, 85, 71, 7, 8, 13),    -- Javier Moreno (Batter)
(149, 42, 97, 79, 61, 14, 6, 11),   -- Carlos Jimenez (Batter)
(150, 95, 37, 88, 81, 5, 7, 8),     -- Andres Gomez (Batter)
(151, 62, 72, 89, 88, 8, 9, 11),    -- Ryan Miller (Batter)
(152, 81, 96, 93, 65, 6, 10, 8),    -- Jiwon Park (Batter)
(153, 50, 85, 90, 92, 7, 6, 10),    -- Carlos Vega (Batter)
(154, 99, 99, 99, 99, 9, 12, 11),   -- Felipe Alvarez (Batter)
(155, 55, 91, 84, 75, 5, 9, 6),     -- Santiago Diaz (Batter)
(156, 73, 79, 76, 63, 8, 10, 9);    -- James Thompson (Batter)

-- Team 14: Phantoms starting from Player_ID = 157
INSERT INTO ratings (Player_ID, Contact, Power, Eye, Speed, K_Per_Nine, BB_Per_Nine, HR_Per_Nine) VALUES
(157, 8, 4, 17, 12, 83, 55, 93),    -- Ethan Hughes (Pitcher)
(158, 5, 10, 14, 9, 88, 80, 85),    -- Miguel Mendez (Pitcher)
(159, 48, 88, 81, 77, 9, 7, 12),    -- Carlos Perez (Batter)
(160, 99, 30, 75, 68, 6, 8, 10),    -- Jose Castillo (Batter)
(161, 72, 99, 91, 84, 7, 5, 9),     -- Shinji Fujimoto (Batter)
(162, 66, 66, 88, 75, 8, 6, 11),    -- Brad Edwards (Batter)
(163, 64, 89, 85, 79, 6, 10, 8),    -- Liam O’Connor (Batter)
(164, 74, 93, 92, 68, 5, 6, 7),     -- Jiho Kim (Batter)
(165, 50, 85, 88, 90, 10, 9, 12),   -- Antonio Reyes (Batter)
(166, 92, 99, 99, 99, 11, 5, 6),    -- Cing Kim (Batter)
(167, 50, 74, 76, 65, 6, 8, 7),     -- Felipe Gonzalez (Batter)
(168, 77, 83, 80, 72, 8, 10, 9);    -- Luca Rossi (Batter)

-- Team 15: Eclipse starting from Player_ID = 169
INSERT INTO ratings (Player_ID, Contact, Power, Eye, Speed, K_Per_Nine, BB_Per_Nine, HR_Per_Nine) VALUES
(169, 11, 8, 14, 6, 65, 99, 81),    -- Dylan Smith (Pitcher)
(170, 5, 10, 17, 9, 90, 72, 88),    -- Carlos Sanchez (Pitcher)
(171, 64, 97, 80, 72, 6, 10, 7),    -- Rafael Martinez (Batter)
(172, 88, 55, 91, 60, 9, 7, 12),    -- Victor Pereira (Batter)
(173, 72, 87, 78, 75, 5, 6, 9),     -- Hiroshi Yamada (Batter)
(174, 92, 78, 88, 83, 10, 8, 6),    -- Juan Lopez (Batter)
(175, 82, 65, 76, 71, 6, 9, 10),    -- Ryan Singh (Batter)
(176, 60, 89, 95, 81, 9, 8, 11),    -- Minseok Park (Batter)
(177, 55, 87, 86, 84, 8, 7, 9),     -- Ming Han (Batter)
(178, 90, 99, 92, 95, 7, 5, 6),     -- Esteban Zuniga (Batter)
(179, 82, 55, 80, 72, 10, 6, 8),    -- Luca Bianchi (Batter)
(180, 79, 65, 88, 74, 8, 7, 11);    -- Marco Costa (Batter)

-- Team 16: Aether Hawks starting from Player_ID = 181
INSERT INTO ratings (Player_ID, Contact, Power, Eye, Speed, K_Per_Nine, BB_Per_Nine, HR_Per_Nine) VALUES
(181, 10, 15, 12, 8, 85, 65, 81),     -- Haruto Takahashi (Pitcher)
(182, 8, 10, 20, 14, 68, 86, 88),     -- Pedro Rodriguez (Pitcher)
(183, 97, 45, 74, 60, 6, 9, 3),       -- Javier Gomez (Batter)
(184, 77, 90, 91, 82, 5, 4, 10),      -- Luis Martinez (Batter)
(185, 65, 80, 63, 95, 8, 6, 7),       -- Noah Jackson (Batter)
(186, 84, 99, 85, 55, 9, 7, 5),       -- Carlos Hernandez (Batter)
(187, 40, 91, 96, 78, 10, 5, 8),      -- Ethan Williams (Batter)
(188, 95, 58, 99, 88, 7, 6, 11),      -- Jiho Lee (Batter)
(189, 72, 87, 92, 81, 6, 8, 10),      -- Antonio Gonzalez (Batter)
(190, 60, 88, 70, 66, 8, 9, 6),       -- Emilio Perez (Batter)
(191, 83, 45, 88, 90, 5, 10, 8),      -- Hiro Mataka (Batter)
(192, 99, 68, 78, 85, 9, 11, 7);      -- Matteo Bianchi (Batter)

-- Team 17: Mystic Mirages starting from Player_ID = 193
INSERT INTO ratings (Player_ID, Contact, Power, Eye, Speed, K_Per_Nine, BB_Per_Nine, HR_Per_Nine) VALUES
(193, 15, 10, 18, 12, 85, 93, 65),      -- Minseok Park (Pitcher)
(194, 12, 20, 9, 18, 87, 77, 76),       -- Ferdinand Bianchi (Pitcher)
(195, 72, 65, 78, 59, 6, 9, 3),         -- Jose Hernandez (Batter)
(196, 99, 90, 88, 79, 7, 5, 8),         -- Carlos Silva (Batter)
(197, 80, 74, 85, 95, 6, 8, 7),         -- Zachary Brown (Batter)
(198, 27, 99, 72, 91, 9, 7, 5),         -- Eduardo Martinez (Batter)
(199, 54, 70, 63, 65, 8, 9, 6),         -- Yuki Tanaka (Batter)
(200, 85, 87, 91, 93, 9, 6, 9),         -- Lucas Johnson (Batter)
(201, 91, 71, 83, 55, 7, 10, 8),        -- Felipe Mendes (Batter)
(202, 73, 92, 77, 92, 6, 5, 10),        -- Diego Gonzalez (Batter)
(203, 65, 55, 66, 84, 6, 8, 9),         -- Juan Lopez (Batter)
(204, 60, 83, 90, 70, 9, 6, 7);         -- Carlos Rodriguez (Batter)

-- Team 18: Trailblazers starting from Player_ID = 205
INSERT INTO ratings (Player_ID, Contact, Power, Eye, Speed, K_Per_Nine, BB_Per_Nine, HR_Per_Nine) VALUES
(205, 8, 12, 6, 15, 90, 48, 85),       -- Jose Mendez (Pitcher)
(206, 10, 7, 11, 14, 76, 57, 95),      -- Felipe Perez (Pitcher)
(207, 66, 95, 60, 87, 10, 5, 8),       -- Javier Martinez (Batter)
(208, 95, 84, 79, 90, 7, 6, 4),        -- Christian Yamamoto (Batter)
(209, 40, 99, 75, 98, 5, 9, 7),        -- Oliver Johnson (Batter)
(210, 72, 85, 60, 87, 10, 5, 8),       -- Eli Brown (Batter)
(211, 63, 92, 88, 81, 8, 5, 10),       -- Takeshi Fujimoto (Batter)
(212, 87, 73, 66, 91, 6, 9, 7),        -- Jin Lee-Ho (Batter)
(213, 74, 58, 82, 77, 9, 10, 6),       -- Antonio Martinez (Batter)
(214, 67, 81, 59, 72, 8, 7, 9),        -- Diego Warrior (Batter)
(215, 77, 69, 84, 88, 5, 6, 4),        -- Carlos Gomez (Batter)
(216, 78, 37, 75, 80, 9, 8, 7);        -- Lucas Oliver (Batter)

-- Team 19: Valkyries starting from Player_ID = 217
INSERT INTO ratings (Player_ID, Contact, Power, Eye, Speed, K_Per_Nine, BB_Per_Nine, HR_Per_Nine) VALUES
(217, 10, 12, 7, 15, 70, 99, 68),       -- Esteban Silva (Pitcher)
(218, 8, 11, 6, 13, 90, 81, 87),        -- Ryan Lee (Pitcher)
(219, 89, 75, 64, 76, 5, 7, 6),         -- Kenta Nakamura (Batter)
(220, 78, 77, 59, 82, 6, 4, 7),         -- Victor Martinez (Batter)
(221, 99, 84, 69, 84, 8, 9, 5),         -- Rafael Tay (Batter)
(222, 74, 60, 77, 73, 7, 5, 6),         -- Juan Lopez (Batter)
(223, 39, 97, 88, 91, 5, 4, 8),         -- Carlos Gomez (Batter)
(224, 69, 72, 80, 85, 6, 8, 7),         -- Jin Kang (Batter)
(225, 77, 55, 85, 88, 9, 6, 5),         -- Carlos Mendoza (Batter)
(226, 65, 70, 71, 75, 6, 9, 8),         -- Isaac Cortes (Batter)
(227, 88, 95, 67, 89, 7, 8, 6),         -- Luis Kozlov (Batter)
(228, 72, 90, 75, 80, 5, 7, 8);         -- Matty Chang (Batter)

-- Team 20: Iron Thunder starting from Player_ID = 229
INSERT INTO ratings (Player_ID, Contact, Power, Eye, Speed, K_Per_Nine, BB_Per_Nine, HR_Per_Nine) VALUES
(229, 12, 8, 9, 14, 99, 69, 90),        -- Yoshinobo Tanaka (Pitcher)
(230, 6, 10, 7, 13, 74, 88, 83),        -- Carlos Garcia (Pitcher)
(231, 91, 99, 70, 81, 6, 7, 9),         -- Rafael Martinez (Batter)
(232, 89, 77, 72, 80, 4, 6, 8),         -- Victor Santos (Batter)
(233, 85, 35, 63, 78, 8, 5, 6),         -- Carlos Ramos (Batter)
(234, 55, 82, 67, 88, 9, 7, 5),         -- Juan Torres (Batter)
(235, 65, 60, 91, 75, 7, 6, 9),         -- Ryan Miller (Batter)
(236, 72, 93, 86, 74, 5, 4, 7),         -- Jin Lee (Batter)
(237, 97, 80, 77, 89, 8, 9, 6),         -- Kenta Fujimoto (Batter)
(238, 88, 65, 81, 90, 6, 5, 4),         -- Esteban Zuniga (Batter)
(239, 72, 82, 92, 84, 7, 8, 5),         -- Luis Fernandez (Batter)
(240, 86, 93, 79, 87, 4, 6, 8);         -- Marco Costa (Batter)

INSERT INTO ratings (Player_ID, Contact, Power, Eye, Speed, K_Per_Nine, BB_Per_Nine, HR_Per_Nine) VALUES
(241, 10, 8, 7, 12, 81, 85, 79),        -- Johnny Mitchell (Pitcher)
(242, 75, 81, 72, 68, 4, 5, 6),         -- Ignacio DeLacruz (Catcher)
(243, 71, 77, 68, 80, 5, 6, 4),         -- Haruto Fukuda (First Baseman)
(244, 12, 9, 10, 14, 83, 79, 84),       -- Diego Valladares (Pitcher)
(245, 67, 73, 59, 76, 6, 5, 7),         -- Thiago Monteiro (Second Baseman)
(246, 65, 69, 74, 77, 5, 4, 6),         -- Sungmin Park (Third Baseman)
(247, 11, 13, 9, 10, 85, 83, 81),       -- Gabriel Mendoza (Pitcher)
(248, 72, 74, 76, 81, 4, 5, 6),         -- Orlando Quintero (Shortstop)
(249, 69, 79, 71, 75, 5, 6, 7),         -- Carter Grayson (Outfielder)
(250, 10, 11, 9, 13, 84, 82, 79),       -- Luciano Martinez (Pitcher)
(251, 74, 82, 70, 78, 6, 5, 4),         -- Takumi Nakamura (Catcher)
(252, 70, 78, 64, 72, 5, 4, 6),         -- Eli Briar (First Baseman)
(253, 9, 12, 11, 14, 82, 85, 78),       -- Salvador Arango (Pitcher)
(254, 69, 75, 68, 79, 5, 6, 7),         -- Santiago Fernandes (Second Baseman)
(255, 66, 72, 65, 73, 4, 5, 6),         -- Daichi Kobayashi (Third Baseman)
(256, 12, 8, 10, 12, 79, 83, 85),       -- Montserrat Villalobos (Pitcher)
(257, 77, 74, 79, 82, 5, 4, 6),         -- Lorenzo Gomes (Shortstop)
(258, 70, 78, 72, 75, 5, 6, 7),         -- Hinjun Choi (Outfielder)
(259, 13, 9, 8, 12, 84, 79, 83),        -- Devin Williams (Pitcher)
(260, 74, 80, 71, 77, 6, 4, 5),         -- Tobias Alvarez (Catcher)
(261, 73, 77, 69, 74, 5, 6, 7),         -- TJ Brady (First Baseman)
(262, 8, 12, 10, 13, 83, 81, 84),       -- Valeria Serrano (Pitcher)
(263, 70, 73, 66, 78, 6, 5, 4),         -- Riku Yamada (Second Baseman)
(264, 64, 72, 65, 71, 5, 4, 6),         -- PJ Wood (Third Baseman)
(265, 9, 14, 11, 15, 80, 85, 81),       -- Mateo Lozano (Pitcher)
(266, 72, 78, 68, 79, 4, 5, 6),         -- Hikaru Takahashi (Shortstop)
(267, 68, 74, 71, 77, 5, 6, 4),         -- Adam Sterling (Outfielder)
(268, 10, 11, 12, 14, 85, 80, 79),      -- Ben Ryan (Pitcher)
(269, 78, 81, 74, 72, 4, 5, 6),         -- Adam Jones (Outfielder)
(270, 75, 80, 72, 78, 5, 6, 7);         -- Javier Caraballo (First Baseman)

SELECT * FROM Ratings WHERE Contact > 90 and Power > 85;
















