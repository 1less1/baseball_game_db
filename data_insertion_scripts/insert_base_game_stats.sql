USE baseball_game_db;

-- Inserting game stats for all players that are assigned to a team for the 2023 season (Season_ID = 1)!
-- 240 Total Player will have Game Stats.

-- Game Stats for players on Team 1: Crushers starting from Player_ID = 1
INSERT INTO game_stats (Player_ID, Season_ID, Games_Played, At_Bats, Hits, RBIs, Runs, Innings_Pitched, Earned_Runs, Strikeouts) VALUES
(1, 1, 38, 0, 0, 0, 0, 158, 88, 144), -- Mitchell Walker (Pitcher)
(2, 1, 38, 0, 0, 0, 0, 167, 56, 119), -- Luis Sanchez (Pitcher)
(3, 1, 38, 155, 51, 39, 24, 0, 0, 0), -- Carlos Martinez (Batter)
(4, 1, 38, 136, 70, 29, 53, 0, 0, 0), -- Miguel Perez (Batter)
(5, 1, 38, 159, 38, 16, 43, 0, 0, 0), -- Tyler King (Batter)
(6, 1, 38, 141, 61, 18, 41, 0, 0, 0), -- Andres Hernandez (Batter)
(7, 1, 38, 117, 77, 36, 51, 0, 0, 0), -- Hiroshi Kobayashi (Batter)
(8, 1, 38, 110, 47, 29, 33, 0, 0, 0), -- Jin Choi (Batter)
(9, 1, 38, 128, 77, 41, 45, 0, 0, 0), -- Ji-Man Cho (Batter)
(10, 1, 38, 111, 77, 47, 60, 0, 0, 0), -- Esteban Lopez (Batter)
(11, 1, 38, 157, 46, 38, 23, 0, 0, 0), -- Santiago Martinez (Batter)
(12, 1, 38, 151, 38, 26, 21, 0, 0, 0); -- Ming-Ho Park (Batter)

-- Game Stats for players on Team 2: Phoenix starting from Player_ID = 13
INSERT INTO game_stats (Player_ID, Season_ID, Games_Played, At_Bats, Hits, RBIs, Runs, Innings_Pitched, Earned_Runs, Strikeouts) VALUES
(13, 1, 38, 0, 0, 0, 0, 170, 48, 189), -- Aiden Bryant (Pitcher)
(14, 1, 38, 0, 0, 0, 0, 137, 62, 161), -- Juan Gomez (Pitcher)
(15, 1, 38, 154, 54, 20, 48, 0, 0, 0), -- Hiroto Mieda (Batter)
(16, 1, 38, 138, 72, 17, 34, 0, 0, 0), -- Juan Martinez (Batter)
(17, 1, 38, 153, 40, 20, 36, 0, 0, 0), -- Tatsuya Yoshida (Batter)
(18, 1, 38, 113, 56, 12, 31, 0, 0, 0), -- Manuel Moreno (Batter)
(19, 1, 38, 137, 53, 37, 48, 0, 0, 0), -- Ethan Smith (Batter)
(20, 1, 38, 136, 46, 45, 22, 0, 0, 0), -- Minho Park (Batter)
(21, 1, 38, 143, 35, 17, 48, 0, 0, 0), -- Hasitaka Mori (Batter)
(22, 1, 38, 131, 34, 26, 33, 0, 0, 0), -- David Soto (Batter)
(23, 1, 38, 154, 73, 12, 36, 0, 0, 0), -- Felipe Cortez (Batter)
(24, 1, 38, 111, 39, 20, 26, 0, 0, 0); -- Daniel Schneider (Batter)

-- Game Stats for players on Team 3: Stormbreakers starting from Player_ID = 25
INSERT INTO game_stats (Player_ID, Season_ID, Games_Played, At_Bats, Hits, RBIs, Runs, Innings_Pitched, Earned_Runs, Strikeouts) VALUES
(25, 1, 38, 0, 0, 0, 0, 158, 83, 129), -- Evan Dupont (Pitcher)
(26, 1, 38, 0, 0, 0, 0, 154, 77, 123), -- Carlos Kovacs (Pitcher)
(27, 1, 38, 129, 56, 30, 38, 0, 0, 0), -- Luis Mutiso (Batter)
(28, 1, 38, 134, 78, 38, 29, 0, 0, 0), -- Nicolas Alvarado (Batter)
(29, 1, 38, 113, 39, 47, 37, 0, 0, 0), -- Andres Kowalski (Batter)
(30, 1, 38, 113, 70, 22, 54, 0, 0, 0), -- Pedro Schmidt (Batter)
(31, 1, 38, 117, 61, 20, 36, 0, 0, 0), -- Lucas Nikolic (Batter)
(32, 1, 38, 136, 61, 21, 57, 0, 0, 0), -- Jin Zewde (Batter)
(33, 1, 38, 132, 41, 27, 45, 0, 0, 0), -- Rafael Mendy (Batter)
(34, 1, 38, 131, 57, 22, 57, 0, 0, 0), -- Sho Nakamura (Batter)
(35, 1, 38, 135, 41, 23, 22, 0, 0, 0), -- Carlos Fernandez (Batter)
(36, 1, 38, 0, 0, 0, 0, 134, 49, 113); -- Marco Adeyemi (Pitcher)

-- Game Stats for players on Team 4: Guardians of the Galaxy starting from Player_ID = 37
INSERT INTO game_stats (Player_ID, Season_ID, Games_Played, At_Bats, Hits, RBIs, Runs, Innings_Pitched, Earned_Runs, Strikeouts) VALUES
(37, 1, 38, 0, 0, 0, 0, 167, 62, 146), -- Ethan Johnson (Pitcher)
(38, 1, 38, 0, 0, 0, 0, 137, 84, 173), -- Ryan Smith (Pitcher)
(39, 1, 38, 151, 59, 38, 39, 0, 0, 0), -- Carlos Morales (Batter)
(40, 1, 38, 132, 36, 40, 31, 0, 0, 0), -- Tim Walker (Batter)
(41, 1, 38, 116, 61, 39, 50, 0, 0, 0), -- Ryuji Tanaka (Batter)
(42, 1, 38, 123, 51, 48, 33, 0, 0, 0), -- James Williams (Batter)
(43, 1, 38, 139, 59, 19, 31, 0, 0, 0), -- David Garcia (Batter)
(44, 1, 38, 123, 71, 28, 31, 0, 0, 0), -- Hyun Kim (Batter)
(45, 1, 38, 119, 54, 49, 24, 0, 0, 0), -- Omar Viciedo (Batter)
(46, 1, 38, 151, 58, 50, 23, 0, 0, 0), -- Casey Folk (Batter)
(47, 1, 38, 144, 65, 32, 24, 0, 0, 0), -- Diego Morales (Batter)
(48, 1, 38, 132, 37, 43, 55, 0, 0, 0); -- Matteo Bianchi (Batter)

-- Game Stats for players on Team 5: Flyers starting from Player_ID = 49
INSERT INTO game_stats (Player_ID, Season_ID, Games_Played, At_Bats, Hits, RBIs, Runs, Innings_Pitched, Earned_Runs, Strikeouts) VALUES
(49, 1, 38, 0, 0, 0, 0, 135, 80, 162), -- Luca Ricci (Pitcher)
(50, 1, 38, 0, 0, 0, 0, 137, 56, 132), -- Santiago Martinez (Pitcher)
(51, 1, 38, 138, 46, 25, 45, 0, 0, 0), -- Masataka Yumori (Batter)
(52, 1, 38, 151, 57, 50, 33, 0, 0, 0), -- Ichiro Yoshida (Batter)
(53, 1, 38, 110, 47, 26, 27, 0, 0, 0), -- Giovanni Bianchi (Batter)
(54, 1, 38, 149, 51, 19, 26, 0, 0, 0), -- Emilio Lopez (Batter)
(55, 1, 38, 149, 47, 49, 23, 0, 0, 0), -- Liam Williams (Batter)
(56, 1, 38, 112, 44, 33, 53, 0, 0, 0), -- Jiwon Park (Batter)
(57, 1, 38, 114, 61, 50, 44, 0, 0, 0), -- Jim Ray (Batter)
(58, 1, 38, 153, 79, 42, 42, 0, 0, 0), -- Marcos Jiminez (Batter)
(59, 1, 38, 117, 53, 13, 41, 0, 0, 0), -- Andres Garcia (Batter)
(60, 1, 38, 0, 0, 0, 0, 140, 77, 190); -- Diego Gomez (Pitcher)

-- Game Stats for players on Team 6: Knights starting from Player_ID = 61
INSERT INTO game_stats (Player_ID, Season_ID, Games_Played, At_Bats, Hits, RBIs, Runs, Innings_Pitched, Earned_Runs, Strikeouts) VALUES
(61, 1, 38, 0, 0, 0, 0, 152, 90, 163), -- Alexander Brown (Pitcher)
(62, 1, 38, 0, 0, 0, 0, 148, 91, 180), -- Juan Rodriguez (Pitcher)
(63, 1, 38, 143, 57, 11, 34, 0, 0, 0), -- Mateo Fernandez (Batter)
(64, 1, 38, 129, 60, 40, 59, 0, 0, 0), -- Yuki Tanaka (Batter)
(65, 1, 38, 114, 56, 40, 20, 0, 0, 0), -- Jeffrey Lancelot (Batter)
(66, 1, 38, 110, 51, 24, 23, 0, 0, 0), -- Luca Ricci (Batter)
(67, 1, 38, 136, 63, 32, 24, 0, 0, 0), -- Ravi Patel (Batter)
(68, 1, 38, 117, 55, 19, 57, 0, 0, 0), -- Jiwon Park (Batter)
(69, 1, 38, 134, 55, 19, 22, 0, 0, 0), -- Carlos Lopez (Batter)
(70, 1, 38, 127, 61, 20, 28, 0, 0, 0), -- Matthew Monaghan (Batter)
(71, 1, 38, 151, 37, 29, 27, 0, 0, 0), -- Dmitri Ivanov (Batter)
(72, 1, 38, 133, 36, 39, 36, 0, 0, 0); -- James Miller (Batter)

-- Game Stats for players on Team 7: Blaze Hounds starting from Player_ID = 73
INSERT INTO game_stats (Player_ID, Season_ID, Games_Played, At_Bats, Hits, RBIs, Runs, Innings_Pitched, Earned_Runs, Strikeouts) VALUES
(73, 1, 38, 0, 0, 0, 0, 167, 88, 114), -- Samson Sok (Pitcher)
(74, 1, 38, 0, 0, 0, 0, 149, 78, 102), -- Juan Perez (Pitcher)
(75, 1, 38, 149, 46, 13, 35, 0, 0, 0), -- Diego Rodriguez (Batter)
(76, 1, 38, 113, 61, 26, 58, 0, 0, 0), -- Carlos Diaz (Batter)
(77, 1, 38, 136, 30, 48, 38, 0, 0, 0), -- Ryu Takahashi (Batter)
(78, 1, 38, 115, 78, 33, 33, 0, 0, 0), -- Tetsuya Hamada (Batter)
(79, 1, 38, 111, 62, 30, 53, 0, 0, 0), -- Juan Morales (Batter)
(80, 1, 38, 137, 75, 50, 55, 0, 0, 0), -- Liam Evans (Batter)
(81, 1, 38, 113, 39, 14, 56, 0, 0, 0), -- Hyeon Kim (Batter)
(82, 1, 38, 148, 66, 33, 50, 0, 0, 0), -- Juan Torres (Batter)
(83, 1, 38, 0, 0, 0, 0, 151, 91, 193), -- Javier Hernandez (Pitcher)
(84, 1, 38, 140, 42, 17, 23, 0, 0, 0); -- Nils Bauer (Batter);

-- Game Stats for players on Team 8: Werewolves starting from Player_ID = 85
INSERT INTO game_stats (Player_ID, Season_ID, Games_Played, At_Bats, Hits, RBIs, Runs, Innings_Pitched, Earned_Runs, Strikeouts) VALUES
(85, 1, 38, 0, 0, 0, 0, 162, 73, 128), -- David Manningham (Pitcher)
(86, 1, 38, 0, 0, 0, 0, 162, 58, 187), -- Jose Hernandez (Pitcher)
(87, 1, 38, 114, 55, 40, 40, 0, 0, 0), -- Carlos Perez (Batter)
(88, 1, 38, 120, 66, 38, 56, 0, 0, 0), -- Victor Garcia (Batter)
(89, 1, 38, 152, 79, 38, 60, 0, 0, 0), -- Takumi Kobayashi (Batter)
(90, 1, 38, 137, 66, 41, 59, 0, 0, 0), -- Luis Mendoza (Batter)
(91, 1, 38, 150, 61, 40, 56, 0, 0, 0), -- Michael Johnson (Batter)
(92, 1, 38, 140, 42, 27, 41, 0, 0, 0), -- Jin Kim (Batter)
(93, 1, 38, 149, 36, 32, 48, 0, 0, 0), -- Dick Applebee (Batter)
(94, 1, 38, 119, 31, 11, 60, 0, 0, 0), -- Esteban Rodriguez (Batter)
(95, 1, 38, 144, 55, 24, 42, 0, 0, 0), -- Felipe Cortez (Batter)
(96, 1, 38, 142, 75, 21, 45, 0, 0, 0); -- David Schneider (Batter)

-- Game Stats for players on Team 9: Dragons starting from Player_ID = 97
INSERT INTO game_stats (Player_ID, Season_ID, Games_Played, At_Bats, Hits, RBIs, Runs, Innings_Pitched, Earned_Runs, Strikeouts) VALUES
(97, 1, 38, 0, 0, 0, 0, 142, 45, 171), -- Carlos Perez (Pitcher)
(98, 1, 38, 0, 0, 0, 0, 133, 80, 132), -- Luca Gonzalez (Pitcher)
(99, 1, 38, 119, 69, 29, 24, 0, 0, 0), -- Liam Bianchi (Batter)
(100, 1, 38, 127, 37, 16, 57, 0, 0, 0), -- Josh Smith (Batter)
(101, 1, 38, 119, 69, 43, 25, 0, 0, 0), -- Shinji Rodriguez (Batter)
(102, 1, 38, 111, 74, 22, 37, 0, 0, 0), -- Juan Taylor (Batter)
(103, 1, 38, 159, 63, 16, 27, 0, 0, 0), -- Eduardo Kumar (Batter)
(104, 1, 38, 148, 41, 45, 43, 0, 0, 0), -- Seungjin Martinez (Batter)
(105, 1, 38, 120, 30, 25, 37, 0, 0, 0), -- Tyler Mendes (Batter)
(106, 1, 38, 125, 77, 28, 41, 0, 0, 0), -- Diana Lopez (Batter)
(107, 1, 38, 0, 0, 0, 0, 151, 84, 104), -- Boris Chang (Pitcher)
(108, 1, 38, 133, 65, 16, 26, 0, 0, 0); -- Victor Santos (Batter)

-- Game Stats for players on Team 10: Pirates starting from Player_ID = 109
INSERT INTO game_stats (Player_ID, Season_ID, Games_Played, At_Bats, Hits, RBIs, Runs, Innings_Pitched, Earned_Runs, Strikeouts) VALUES
(109, 1, 38, 0, 0, 0, 0, 140, 84, 147), -- Zach Taylor (Pitcher)
(110, 1, 38, 0, 0, 0, 0, 138, 75, 165), -- Carlos Martinez (Pitcher)
(111, 1, 38, 143, 38, 20, 25, 0, 0, 0), -- Fernando Lopez (Batter)
(112, 1, 38, 139, 60, 10, 33, 0, 0, 0), -- Ricardo Hernandez (Batter)
(113, 1, 38, 130, 61, 50, 33, 0, 0, 0), -- Yuji Ishida (Batter)
(114, 1, 38, 133, 36, 14, 39, 0, 0, 0), -- Antonio Freeman (Batter)
(115, 1, 38, 124, 36, 21, 58, 0, 0, 0), -- Ethan Davis (Batter)
(116, 1, 38, 158, 31, 21, 54, 0, 0, 0), -- Jiwon Choi (Batter)
(117, 1, 38, 150, 64, 37, 40, 0, 0, 0), -- Carlos Reyes (Batter)
(118, 1, 38, 154, 67, 28, 24, 0, 0, 0), -- Esteban Lopez (Batter)
(119, 1, 38, 110, 41, 43, 43, 0, 0, 0), -- Felipe Mendoza (Batter)
(120, 1, 38, 124, 69, 27, 22, 0, 0, 0); -- Matteo Rossi (Batter)

-- Game Stats for players on Team 11: Vortex Vipers starting from Player_ID = 121
INSERT INTO game_stats (Player_ID, Season_ID, Games_Played, At_Bats, Hits, RBIs, Runs, Innings_Pitched, Earned_Runs, Strikeouts) VALUES
(121, 1, 38, 0, 0, 0, 0, 165, 69, 117), -- Hiroshi Kobayashi (Pitcher)
(122, 1, 38, 0, 0, 0, 0, 158, 59, 100), -- Juan Martinez (Pitcher)
(123, 1, 38, 149, 40, 17, 50, 0, 0, 0), -- Carlos Diaz (Batter)
(124, 1, 38, 160, 79, 11, 35, 0, 0, 0), -- Luis Santos (Batter)
(125, 1, 38, 110, 32, 14, 57, 0, 0, 0), -- Evan O'Connor (Batter)
(126, 1, 38, 153, 61, 45, 27, 0, 0, 0), -- Pedro Jimenez (Batter)
(127, 1, 38, 139, 39, 18, 32, 0, 0, 0), -- Ryan Nguyen (Batter)
(128, 1, 38, 125, 66, 25, 26, 0, 0, 0), -- Jiho Choi (Batter)
(129, 1, 38, 148, 36, 42, 39, 0, 0, 0), -- Antonio Garcia (Batter)
(130, 1, 38, 125, 67, 23, 37, 0, 0, 0), -- Emilio Lopez (Batter)
(131, 1, 38, 146, 54, 31, 58, 0, 0, 0), -- Takeshi Saito (Batter)
(132, 1, 38, 113, 62, 36, 33, 0, 0, 0); -- Kenji Takahashi (Batter)

-- Game Stats for players on Team 12: Tempest Titans starting from Player_ID = 133
INSERT INTO game_stats (Player_ID, Season_ID, Games_Played, At_Bats, Hits, RBIs, Runs, Innings_Pitched, Earned_Runs, Strikeouts) VALUES
(133, 1, 38, 0, 0, 0, 0, 158, 94, 177), -- Liam O’Connor (Pitcher)
(134, 1, 38, 0, 0, 0, 0, 169, 49, 168), -- Juan Rodriguez (Pitcher)
(135, 1, 38, 133, 43, 39, 23, 0, 0, 0), -- Carlos Jimenez (Batter)
(136, 1, 38, 148, 74, 13, 22, 0, 0, 0), -- Victor Santos (Batter)
(137, 1, 38, 143, 41, 45, 52, 0, 0, 0), -- Takeshi Nakamura (Batter)
(138, 1, 38, 135, 33, 20, 29, 0, 0, 0), -- Jose Alvarez (Batter)
(139, 1, 38, 159, 65, 46, 35, 0, 0, 0), -- Oliver Wilson (Batter)
(140, 1, 38, 157, 57, 41, 36, 0, 0, 0), -- Jin Park (Batter)
(141, 1, 38, 140, 39, 21, 22, 0, 0, 0), -- Esteban Gutierrez (Batter)
(142, 1, 38, 173, 65, 67, 39, 0, 0, 0), -- Dominick Olhava (Batter)
(143, 1, 38, 138, 30, 48, 51, 0, 0, 0), -- Luis Martinez (Batter)
(144, 1, 38, 145, 73, 25, 60, 0, 0, 0); -- Nico Bianchi (Batter)

-- Game Stats for players on Team 13: Quasar Comets starting from Player_ID = 145
INSERT INTO game_stats (Player_ID, Season_ID, Games_Played, At_Bats, Hits, RBIs, Runs, Innings_Pitched, Earned_Runs, Strikeouts) VALUES
(145, 1, 38, 0, 0, 0, 0, 160, 84, 199), -- Brady Sullivan (Pitcher)
(146, 1, 38, 0, 0, 0, 0, 145, 61, 142), -- Juan Rodriguez (Pitcher)
(147, 1, 38, 157, 37, 47, 26, 0, 0, 0), -- Hiroshi Tanaka (Batter)
(148, 1, 38, 137, 59, 25, 27, 0, 0, 0), -- Javier Moreno (Batter)
(149, 1, 38, 156, 72, 19, 45, 0, 0, 0), -- Carlos Jimenez (Batter)
(150, 1, 38, 141, 52, 47, 29, 0, 0, 0), -- Andres Gomez (Batter)
(151, 1, 38, 138, 75, 39, 53, 0, 0, 0), -- Ryan Miller (Batter)
(152, 1, 38, 145, 42, 26, 24, 0, 0, 0), -- Jiwon Park (Batter)
(153, 1, 38, 120, 30, 41, 52, 0, 0, 0), -- Carlos Vega (Batter)
(154, 1, 38, 151, 74, 14, 59, 0, 0, 0), -- Felipe Alvarez (Batter)
(155, 1, 38, 127, 32, 15, 36, 0, 0, 0), -- Santiago Diaz (Batter)
(156, 1, 38, 123, 70, 13, 36, 0, 0, 0); -- James Thompson (Batter)

-- Game Stats for players on Team 14: Phantoms starting from Player_ID = 157
INSERT INTO game_stats (Player_ID, Season_ID, Games_Played, At_Bats, Hits, RBIs, Runs, Innings_Pitched, Earned_Runs, Strikeouts) VALUES
(157, 1, 38, 0, 0, 0, 0, 149, 57, 152), -- Ethan Hughes (Pitcher)
(158, 1, 38, 0, 0, 0, 0, 155, 80, 186), -- Miguel Mendez (Pitcher)
(159, 1, 38, 130, 67, 34, 43, 0, 0, 0), -- Carlos Perez (Batter)
(160, 1, 38, 144, 53, 28, 50, 0, 0, 0), -- Jose Castillo (Batter)
(161, 1, 38, 110, 46, 24, 53, 0, 0, 0), -- Shinji Fujimoto (Batter)
(162, 1, 38, 151, 36, 48, 59, 0, 0, 0), -- Brad Edwards (Batter)
(163, 1, 38, 122, 72, 15, 52, 0, 0, 0), -- Byron Haskins (Batter)
(164, 1, 38, 153, 71, 28, 53, 0, 0, 0), -- Jiho Kim (Batter)
(165, 1, 38, 145, 60, 10, 23, 0, 0, 0), -- Antonio Reyes (Batter)
(166, 1, 38, 123, 78, 39, 38, 0, 0, 0), -- Cing Kim (Batter)
(167, 1, 38, 137, 55, 12, 34, 0, 0, 0), -- Felipe Gonzalez (Batter)
(168, 1, 38, 141, 49, 48, 28, 0, 0, 0); -- Luca Rossi (Batter)

-- Game Stats for players on Team 15: Eclipse starting from Player_ID = 169
INSERT INTO game_stats (Player_ID, Season_ID, Games_Played, At_Bats, Hits, RBIs, Runs, Innings_Pitched, Earned_Runs, Strikeouts) VALUES
(169, 1, 38, 0, 0, 0, 0, 147, 89, 130), -- Dylan Smith (Pitcher)
(170, 1, 38, 0, 0, 0, 0, 147, 94, 100), -- Carlos Sanchez (Pitcher)
(171, 1, 38, 146, 31, 29, 57, 0, 0, 0), -- Rafael Martinez (Batter)
(172, 1, 38, 150, 66, 15, 43, 0, 0, 0), -- Victor Pereira (Batter)
(173, 1, 38, 159, 80, 41, 34, 0, 0, 0), -- Hiroshi Yamada (Batter)
(174, 1, 38, 156, 59, 18, 23, 0, 0, 0), -- Juan Lopez (Batter)
(175, 1, 38, 139, 75, 32, 45, 0, 0, 0), -- Ryan Singh (Batter)
(176, 1, 38, 152, 69, 38, 20, 0, 0, 0), -- Minseok Park (Batter)
(177, 1, 38, 131, 57, 22, 34, 0, 0, 0), -- Ming Han (Batter)
(178, 1, 38, 150, 68, 24, 28, 0, 0, 0), -- Esteban Zuniga (Batter)
(179, 1, 38, 112, 71, 21, 32, 0, 0, 0), -- Brandon Beckham (Batter)
(180, 1, 38, 119, 44, 15, 60, 0, 0, 0); -- Marco Costa (Batter)

-- Game Stats for players on Team 16: Aether Hawks starting from Player_ID = 181
INSERT INTO game_stats (Player_ID, Season_ID, Games_Played, At_Bats, Hits, RBIs, Runs, Innings_Pitched, Earned_Runs, Strikeouts) VALUES
(181, 1, 38, 0, 0, 0, 0, 136, 58, 128), -- Haruto Takahashi (Pitcher)
(182, 1, 38, 0, 0, 0, 0, 169, 57, 120), -- Pedro Rodriguez (Pitcher)
(183, 1, 38, 115, 35, 34, 54, 0, 0, 0), -- Javier Gomez (Batter)
(184, 1, 38, 116, 59, 26, 58, 0, 0, 0), -- Luis Martinez (Batter)
(185, 1, 38, 148, 55, 16, 35, 0, 0, 0), -- Noah Jackson (Batter)
(186, 1, 38, 130, 80, 24, 26, 0, 0, 0), -- Carlos Hernandez (Batter)
(187, 1, 38, 139, 80, 20, 54, 0, 0, 0), -- Ethan Williams (Batter)
(188, 1, 38, 132, 40, 38, 49, 0, 0, 0), -- Jiho Lee (Batter)
(189, 1, 38, 117, 56, 23, 24, 0, 0, 0), -- Antonio Gonzalez (Batter)
(190, 1, 38, 151, 55, 50, 40, 0, 0, 0), -- Emilio Perez (Batter)
(191, 1, 38, 131, 80, 47, 40, 0, 0, 0), -- Hiro Mataka (Batter)
(192, 1, 38, 151, 52, 29, 35, 0, 0, 0); -- Matteo Luzendo (Batter)

-- Game Stats for players on Team 17: Mystic Mirages starting from Player_ID = 193
INSERT INTO game_stats (Player_ID, Season_ID, Games_Played, At_Bats, Hits, RBIs, Runs, Innings_Pitched, Earned_Runs, Strikeouts) VALUES
(193, 1, 38, 0, 0, 0, 0, 154, 69, 158), -- Minseok Park (Pitcher)
(194, 1, 38, 0, 0, 0, 0, 134, 75, 187), -- Ferdinand Bianchi (Pitcher)
(195, 1, 38, 154, 47, 16, 36, 0, 0, 0), -- Jose Hernandez (Batter)
(196, 1, 38, 160, 32, 48, 44, 0, 0, 0), -- Carlos Silva (Batter)
(197, 1, 38, 121, 39, 48, 58, 0, 0, 0), -- Zachary Brown (Batter)
(198, 1, 38, 129, 53, 20, 33, 0, 0, 0), -- Eduardo Martinez (Batter)
(199, 1, 38, 112, 76, 44, 47, 0, 0, 0), -- Yuki Tanaka (Batter)
(200, 1, 38, 129, 60, 24, 26, 0, 0, 0), -- Lucas Johnson (Batter)
(201, 1, 38, 145, 60, 13, 37, 0, 0, 0), -- Felipe Mendes (Batter)
(202, 1, 38, 126, 67, 34, 60, 0, 0, 0), -- Diego Gonzalez (Batter)
(203, 1, 38, 156, 62, 35, 39, 0, 0, 0), -- Juan Lopez (Batter)
(204, 1, 38, 147, 45, 12, 35, 0, 0, 0); -- Carlos Rodriguez (Batter)

-- Game Stats for players on Team 18: Trailblazers starting from Player_ID = 205
INSERT INTO game_stats (Player_ID, Season_ID, Games_Played, At_Bats, Hits, RBIs, Runs, Innings_Pitched, Earned_Runs, Strikeouts) VALUES
(205, 1, 38, 0, 0, 0, 0, 159, 46, 131), -- Jose Mendez (Pitcher)
(206, 1, 38, 0, 0, 0, 0, 164, 45, 178), -- Felipe Perez (Pitcher)
(207, 1, 38, 160, 36, 47, 22, 0, 0, 0), -- Javier Martinez (Batter)
(208, 1, 38, 128, 43, 31, 41, 0, 0, 0), -- Christian Yamamoto (Batter)
(209, 1, 38, 150, 73, 31, 41, 0, 0, 0), -- Oliver Johnson (Batter)
(210, 1, 38, 113, 67, 30, 40, 0, 0, 0), -- Eli Brown (Batter)
(211, 1, 38, 121, 66, 25, 22, 0, 0, 0), -- Takeshi Fujimoto (Batter)
(212, 1, 38, 118, 75, 31, 43, 0, 0, 0), -- Jin Lee-Ho (Batter)
(213, 1, 38, 110, 65, 44, 20, 0, 0, 0), -- Antonio Martinez (Batter)
(214, 1, 38, 125, 80, 31, 27, 0, 0, 0), -- Diego Warrior (Batter)
(215, 1, 38, 141, 63, 18, 26, 0, 0, 0), -- Carlos Gomez (Batter)
(216, 1, 38, 152, 64, 42, 23, 0, 0, 0); -- Lucas Oliver (Batter)

-- Game Stats for players on Team 19: Valkyries starting from Player_ID = 217
INSERT INTO game_stats (Player_ID, Season_ID, Games_Played, At_Bats, Hits, RBIs, Runs, Innings_Pitched, Earned_Runs, Strikeouts) VALUES
(217, 1, 38, 0, 0, 0, 0, 157, 62, 165), -- Esteban Silva (Pitcher)
(218, 1, 38, 0, 0, 0, 0, 150, 51, 154), -- Ryan Lee (Pitcher)
(219, 1, 38, 146, 45, 24, 30, 0, 0, 0), -- Kenta Nakamura (Batter)
(220, 1, 38, 112, 63, 45, 35, 0, 0, 0), -- Victor Martinez (Batter)
(221, 1, 38, 125, 39, 16, 58, 0, 0, 0), -- Rafael Tay (Batter)
(222, 1, 38, 120, 41, 15, 35, 0, 0, 0), -- Juan Lopez (Batter)
(223, 1, 38, 128, 68, 28, 30, 0, 0, 0), -- Carlos Gomez (Batter)
(224, 1, 38, 138, 34, 31, 31, 0, 0, 0), -- Jin Kang (Batter)
(225, 1, 38, 125, 35, 13, 54, 0, 0, 0), -- JT Mendoza (Batter)
(226, 1, 38, 118, 76, 13, 21, 0, 0, 0), -- Isaac Cortes (Batter)
(227, 1, 38, 148, 79, 44, 28, 0, 0, 0), -- Luis Kozlov (Batter)
(228, 1, 38, 142, 52, 16, 60, 0, 0, 0); -- Matty Chang (Batter)

-- Game Stats for players on Team 20: Iron Thunder starting from Player_ID = 229
INSERT INTO game_stats (Player_ID, Season_ID, Games_Played, At_Bats, Hits, RBIs, Runs, Innings_Pitched, Earned_Runs, Strikeouts) VALUES
(229, 1, 38, 0, 0, 0, 0, 151, 76, 108), -- Yoshinobo Tanaka (Pitcher)
(230, 1, 38, 0, 0, 0, 0, 148, 52, 170), -- Dom Cruz (Pitcher)
(231, 1, 38, 110, 71, 16, 53, 0, 0, 0), -- Rafael Martinez (Batter)
(232, 1, 38, 118, 52, 19, 35, 0, 0, 0), -- Victor Santos (Batter)
(233, 1, 38, 158, 46, 33, 49, 0, 0, 0), -- Carlos Ramos (Batter)
(234, 1, 38, 112, 71, 37, 34, 0, 0, 0), -- Juan Torres (Batter)
(235, 1, 38, 140, 33, 25, 41, 0, 0, 0), -- Derrick Benter (Batter)
(236, 1, 38, 135, 55, 37, 33, 0, 0, 0), -- Jin Lee (Batter)
(237, 1, 38, 128, 77, 25, 47, 0, 0, 0), -- Kenta Fujimoto (Batter)
(238, 1, 38, 132, 70, 31, 33, 0, 0, 0), -- Esteban Zuniga (Batter)
(239, 1, 38, 118, 47, 29, 58, 0, 0, 0), -- Luis Fernandez (Batter)
(240, 1, 38, 132, 68, 23, 60, 0, 0, 0); -- TJ Henning (Batter)


-- Complex Query to Pull First and Last name of certain players that meet certain criteria in game_stats 
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
