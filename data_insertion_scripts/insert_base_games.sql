USE baseball_game_db;

-- Insert statements set the designated team to play at Home.
-- That Home team then matches up with every other available team as Away with a total of 19 games.

-- Each team ends up playing 38 total games (38 * 20 = 760 games total)
-- Math: 19 matchups in their designated insert statement + (1 extra matchup * 19 other team inserts) = 38

-- There are 380 unique "Game" entities in the base table 

----------------------------------------------------------------------------------------
-- AL Teams 
----------------------------------------------------------------------------------------
-- Team 1: Crushers
INSERT INTO `game` (`Season_ID`, `Date`, `Home_Team`, `Home_Score`, `Away_Team`, `Away_Score`, `Winner`, `Loser`) VALUES
(1, '2023-09-06', 1, 8, 2, 7, 1, 2), -- Home Team: 1 => 8, Away Team: 2 => 7
(1, '2023-12-19', 1, 3, 3, 4, 3, 1), -- Home Team: 1 => 3, Away Team: 3 => 4
(1, '2023-03-11', 1, 9, 4, 11, 4, 1), -- Home Team: 1 => 9, Away Team: 4 => 11
(1, '2023-12-23', 1, 6, 5, 5, 1, 5), -- Home Team: 1 => 6, Away Team: 5 => 5
(1, '2023-11-14', 1, 11, 6, 12, 6, 1), -- Home Team: 1 => 11, Away Team: 6 => 12
(1, '2023-01-24', 1, 14, 7, 7, 1, 7), -- Home Team: 1 => 14, Away Team: 7 => 7
(1, '2023-12-20', 1, 2, 8, 5, 8, 1), -- Home Team: 1 => 2, Away Team: 8 => 5
(1, '2023-08-25', 1, 8, 9, 7, 1, 9), -- Home Team: 1 => 8, Away Team: 9 => 7
(1, '2023-07-16', 1, 14, 10, 4, 1, 10), -- Home Team: 1 => 14, Away Team: 10 => 4
(1, '2023-01-10', 1, 6, 11, 4, 1, 11), -- Home Team: 1 => 6, Away Team: 11 => 4
(1, '2023-12-24', 1, 10, 12, 15, 12, 1), -- Home Team: 1 => 10, Away Team: 12 => 15
(1, '2023-09-24', 1, 13, 13, 10, 1, 13), -- Home Team: 1 => 13, Away Team: 13 => 10
(1, '2023-04-21', 1, 15, 14, 12, 1, 14), -- Home Team: 1 => 15, Away Team: 14 => 12
(1, '2023-05-15', 1, 13, 15, 6, 1, 15), -- Home Team: 1 => 13, Away Team: 15 => 6
(1, '2023-07-30', 1, 8, 16, 12, 16, 1), -- Home Team: 1 => 8, Away Team: 16 => 12
(1, '2023-06-22', 1, 3, 17, 6, 17, 1), -- Home Team: 1 => 3, Away Team: 17 => 6
(1, '2023-10-04', 1, 7, 18, 10, 18, 1), -- Home Team: 1 => 7, Away Team: 18 => 10
(1, '2023-02-21', 1, 2, 19, 5, 19, 1), -- Home Team: 1 => 2, Away Team: 19 => 5
(1, '2023-08-04', 1, 13, 20, 4, 1, 20); -- Home Team: 1 => 13, Away Team: 20 => 4

-- Team 2: Phoenix 
INSERT INTO `game` (`Season_ID`, `Date`, `Home_Team`, `Home_Score`, `Away_Team`, `Away_Score`, `Winner`, `Loser`) VALUES
(1, '2023-06-13', 2, 5, 1, 1, 2, 1), -- Home Team: 2 => 5, Away Team: 1 => 1
(1, '2023-10-31', 2, 1, 3, 6, 3, 2), -- Home Team: 2 => 1, Away Team: 3 => 6
(1, '2023-10-31', 2, 8, 4, 7, 2, 4), -- Home Team: 2 => 8, Away Team: 4 => 7
(1, '2023-04-24', 2, 11, 5, 1, 2, 5), -- Home Team: 2 => 11, Away Team: 5 => 1
(1, '2023-01-26', 2, 5, 6, 9, 6, 2), -- Home Team: 2 => 5, Away Team: 6 => 9
(1, '2023-08-03', 2, 8, 7, 5, 2, 7), -- Home Team: 2 => 8, Away Team: 7 => 5
(1, '2023-09-16', 2, 9, 8, 4, 2, 8), -- Home Team: 2 => 9, Away Team: 8 => 4
(1, '2023-04-09', 2, 5, 9, 10, 9, 2), -- Home Team: 2 => 5, Away Team: 9 => 10
(1, '2023-01-18', 2, 8, 10, 11, 10, 2), -- Home Team: 2 => 8, Away Team: 10 => 11
(1, '2023-12-20', 2, 6, 11, 10, 11, 2), -- Home Team: 2 => 6, Away Team: 11 => 10
(1, '2023-12-31', 2, 15, 12, 8, 2, 12), -- Home Team: 2 => 15, Away Team: 12 => 8
(1, '2023-09-03', 2, 8, 13, 4, 2, 13), -- Home Team: 2 => 8, Away Team: 13 => 4
(1, '2023-08-26', 2, 6, 14, 15, 14, 2), -- Home Team: 2 => 6, Away Team: 14 => 15
(1, '2023-09-09', 2, 6, 15, 3, 2, 15), -- Home Team: 2 => 6, Away Team: 15 => 3
(1, '2023-05-31', 2, 6, 16, 2, 2, 16), -- Home Team: 2 => 6, Away Team: 16 => 2
(1, '2023-06-07', 2, 10, 17, 11, 17, 2), -- Home Team: 2 => 10, Away Team: 17 => 11
(1, '2023-08-07', 2, 2, 18, 4, 18, 2), -- Home Team: 2 => 2, Away Team: 18 => 4
(1, '2023-09-09', 2, 1, 19, 12, 19, 2), -- Home Team: 2 => 1, Away Team: 19 => 12
(1, '2023-03-03', 2, 2, 20, 10, 20, 2); -- Home Team: 2 => 2, Away Team: 20 => 10

-- Team 3: Stormbreakers
INSERT INTO `game` (`Season_ID`, `Date`, `Home_Team`, `Home_Score`, `Away_Team`, `Away_Score`, `Winner`, `Loser`) VALUES
(1, '2023-07-05', 3, 1, 1, 10, 1, 3), -- Home Team: 3 => 1, Away Team: 1 => 10
(1, '2023-03-02', 3, 10, 2, 4, 3, 2), -- Home Team: 3 => 10, Away Team: 2 => 4
(1, '2023-07-04', 3, 3, 4, 10, 4, 3), -- Home Team: 3 => 3, Away Team: 4 => 10
(1, '2023-11-06', 3, 10, 5, 6, 3, 5), -- Home Team: 3 => 10, Away Team: 5 => 6
(1, '2023-10-16', 3, 13, 6, 2, 3, 6), -- Home Team: 3 => 13, Away Team: 6 => 2
(1, '2023-10-11', 3, 8, 7, 7, 3, 7), -- Home Team: 3 => 8, Away Team: 7 => 7
(1, '2023-09-17', 3, 11, 8, 8, 3, 8), -- Home Team: 3 => 11, Away Team: 8 => 8
(1, '2023-03-12', 3, 10, 9, 7, 3, 9), -- Home Team: 3 => 10, Away Team: 9 => 7
(1, '2023-08-15', 3, 11, 10, 6, 3, 10), -- Home Team: 3 => 11, Away Team: 10 => 6
(1, '2023-10-10', 3, 9, 11, 2, 3, 11), -- Home Team: 3 => 9, Away Team: 11 => 2
(1, '2023-04-25', 3, 10, 12, 11, 12, 3), -- Home Team: 3 => 10, Away Team: 12 => 11
(1, '2023-01-10', 3, 4, 13, 3, 3, 13), -- Home Team: 3 => 4, Away Team: 13 => 3
(1, '2023-10-25', 3, 14, 14, 10, 3, 14), -- Home Team: 3 => 14, Away Team: 14 => 10
(1, '2023-04-26', 3, 14, 15, 4, 3, 15), -- Home Team: 3 => 14, Away Team: 15 => 4
(1, '2023-06-16', 3, 15, 16, 1, 3, 16), -- Home Team: 3 => 15, Away Team: 16 => 1
(1, '2023-06-02', 3, 14, 17, 9, 3, 17), -- Home Team: 3 => 14, Away Team: 17 => 9
(1, '2023-11-30', 3, 8, 18, 14, 18, 3), -- Home Team: 3 => 8, Away Team: 18 => 14
(1, '2023-11-10', 3, 12, 19, 6, 3, 19), -- Home Team: 3 => 12, Away Team: 19 => 6
(1, '2023-12-02', 3, 4, 20, 6, 20, 3); -- Home Team: 3 => 4, Away Team: 20 => 6

-- Team 4: Guardians of the Galaxy
INSERT INTO `game` (`Season_ID`, `Date`, `Home_Team`, `Home_Score`, `Away_Team`, `Away_Score`, `Winner`, `Loser`) VALUES
(1, '2023-03-03', 4, 4, 1, 14, 1, 4), -- Home Team: 4 => 4, Away Team: 1 => 14
(1, '2023-08-10', 4, 10, 2, 15, 2, 4), -- Home Team: 4 => 10, Away Team: 2 => 15
(1, '2023-04-16', 4, 11, 3, 1, 4, 3), -- Home Team: 4 => 11, Away Team: 3 => 1
(1, '2023-06-14', 4, 5, 5, 4, 4, 5), -- Home Team: 4 => 5, Away Team: 5 => 4
(1, '2023-10-17', 4, 3, 6, 4, 6, 4), -- Home Team: 4 => 3, Away Team: 6 => 4
(1, '2023-01-04', 4, 11, 7, 3, 4, 7), -- Home Team: 4 => 11, Away Team: 7 => 3
(1, '2023-12-04', 4, 4, 8, 11, 8, 4), -- Home Team: 4 => 4, Away Team: 8 => 11
(1, '2023-04-15', 4, 1, 9, 6, 9, 4), -- Home Team: 4 => 1, Away Team: 9 => 6
(1, '2023-02-25', 4, 14, 10, 1, 4, 10), -- Home Team: 4 => 14, Away Team: 10 => 1
(1, '2023-04-22', 4, 13, 11, 6, 4, 11), -- Home Team: 4 => 13, Away Team: 11 => 6
(1, '2023-10-24', 4, 12, 12, 4, 4, 12), -- Home Team: 4 => 12, Away Team: 12 => 4
(1, '2023-12-27', 4, 10, 13, 8, 4, 13), -- Home Team: 4 => 10, Away Team: 13 => 8
(1, '2023-01-14', 4, 15, 14, 13, 4, 14), -- Home Team: 4 => 15, Away Team: 14 => 13
(1, '2023-04-01', 4, 8, 15, 3, 4, 15), -- Home Team: 4 => 8, Away Team: 15 => 3
(1, '2023-11-14', 4, 11, 16, 1, 4, 16), -- Home Team: 4 => 11, Away Team: 16 => 1
(1, '2023-09-04', 4, 9, 17, 12, 17, 4), -- Home Team: 4 => 9, Away Team: 17 => 12
(1, '2023-11-10', 4, 12, 18, 9, 4, 18), -- Home Team: 4 => 12, Away Team: 18 => 9
(1, '2023-08-08', 4, 5, 19, 12, 19, 4), -- Home Team: 4 => 5, Away Team: 19 => 12
(1, '2023-06-20', 4, 14, 20, 5, 4, 20); -- Home Team: 4 => 14, Away Team: 20 => 5


-- Team 5: Flyers
INSERT INTO `game` (`Season_ID`, `Date`, `Home_Team`, `Home_Score`, `Away_Team`, `Away_Score`, `Winner`, `Loser`) VALUES
(1, '2023-02-11', 5, 13, 1, 10, 5, 1), -- Home Team: 5 => 13, Away Team: 1 => 10
(1, '2023-04-28', 5, 2, 2, 4, 2, 5), -- Home Team: 5 => 2, Away Team: 2 => 4
(1, '2023-12-14', 5, 3, 3, 15, 3, 5), -- Home Team: 5 => 3, Away Team: 3 => 15
(1, '2023-09-27', 5, 15, 4, 14, 5, 4), -- Home Team: 5 => 15, Away Team: 4 => 14
(1, '2023-07-26', 5, 2, 6, 10, 6, 5), -- Home Team: 5 => 2, Away Team: 6 => 10
(1, '2023-11-18', 5, 13, 7, 1, 5, 7), -- Home Team: 5 => 13, Away Team: 7 => 1
(1, '2023-05-25', 5, 15, 8, 1, 5, 8), -- Home Team: 5 => 15, Away Team: 8 => 1
(1, '2023-01-22', 5, 13, 9, 9, 5, 9), -- Home Team: 5 => 13, Away Team: 9 => 9
(1, '2023-08-22', 5, 11, 10, 14, 10, 5), -- Home Team: 5 => 11, Away Team: 10 => 14
(1, '2023-12-17', 5, 12, 11, 2, 5, 11), -- Home Team: 5 => 12, Away Team: 11 => 2
(1, '2023-09-21', 5, 3, 12, 8, 12, 5), -- Home Team: 5 => 3, Away Team: 12 => 8
(1, '2023-12-28', 5, 12, 13, 6, 5, 13), -- Home Team: 5 => 12, Away Team: 13 => 6
(1, '2023-02-21', 5, 9, 14, 10, 14, 5), -- Home Team: 5 => 9, Away Team: 14 => 10
(1, '2023-12-20', 5, 14, 15, 11, 5, 15), -- Home Team: 5 => 14, Away Team: 15 => 11
(1, '2023-01-31', 5, 11, 16, 12, 16, 5), -- Home Team: 5 => 11, Away Team: 16 => 12
(1, '2023-11-15', 5, 14, 17, 12, 5, 17), -- Home Team: 5 => 14, Away Team: 17 => 12
(1, '2023-05-29', 5, 2, 18, 12, 18, 5), -- Home Team: 5 => 2, Away Team: 18 => 12
(1, '2023-10-20', 5, 4, 19, 6, 19, 5), -- Home Team: 5 => 4, Away Team: 19 => 6
(1, '2023-12-15', 5, 15, 20, 7, 5, 20); -- Home Team: 5 => 15, Away Team: 20 => 7

-- Team 6: Knights
INSERT INTO `game` (`Season_ID`, `Date`, `Home_Team`, `Home_Score`, `Away_Team`, `Away_Score`, `Winner`, `Loser`) VALUES
(1, '2023-06-18', 6, 10, 1, 7, 6, 1), -- Home Team: 6 => 10, Away Team: 1 => 7
(1, '2023-12-08', 6, 14, 2, 15, 2, 6), -- Home Team: 6 => 14, Away Team: 2 => 15
(1, '2023-11-26', 6, 12, 3, 9, 6, 3), -- Home Team: 6 => 12, Away Team: 3 => 9
(1, '2023-03-14', 6, 8, 4, 5, 6, 4), -- Home Team: 6 => 8, Away Team: 4 => 5
(1, '2023-05-15', 6, 13, 5, 12, 6, 5), -- Home Team: 6 => 13, Away Team: 5 => 12
(1, '2023-02-11', 6, 11, 7, 10, 6, 7), -- Home Team: 6 => 11, Away Team: 7 => 10
(1, '2023-03-18', 6, 14, 8, 12, 6, 8), -- Home Team: 6 => 14, Away Team: 8 => 12
(1, '2023-03-14', 6, 10, 9, 4, 6, 9), -- Home Team: 6 => 10, Away Team: 9 => 4
(1, '2023-09-23', 6, 14, 10, 4, 6, 10), -- Home Team: 6 => 14, Away Team: 10 => 4
(1, '2023-07-18', 6, 3, 11, 5, 11, 6), -- Home Team: 6 => 3, Away Team: 11 => 5
(1, '2023-05-06', 6, 5, 12, 6, 12, 6), -- Home Team: 6 => 5, Away Team: 12 => 6
(1, '2023-01-15', 6, 13, 13, 14, 13, 6), -- Home Team: 6 => 13, Away Team: 13 => 14
(1, '2023-03-31', 6, 15, 14, 11, 6, 14), -- Home Team: 6 => 15, Away Team: 14 => 11
(1, '2023-06-13', 6, 6, 15, 5, 6, 15), -- Home Team: 6 => 6, Away Team: 15 => 5
(1, '2023-07-03', 6, 11, 16, 13, 16, 6), -- Home Team: 6 => 11, Away Team: 16 => 13
(1, '2023-12-27', 6, 11, 17, 7, 6, 17), -- Home Team: 6 => 11, Away Team: 17 => 7
(1, '2023-12-20', 6, 13, 18, 7, 6, 18), -- Home Team: 6 => 13, Away Team: 18 => 7
(1, '2023-08-23', 6, 14, 19, 11, 6, 19), -- Home Team: 6 => 14, Away Team: 19 => 11
(1, '2023-08-14', 6, 11, 20, 13, 20, 6); -- Home Team: 6 => 11, Away Team: 20 => 13

-- Team 7: Blaze Hounds
INSERT INTO `game` (`Season_ID`, `Date`, `Home_Team`, `Home_Score`, `Away_Team`, `Away_Score`, `Winner`, `Loser`) VALUES
(1, '2023-07-04', 7, 6, 1, 2, 7, 1), -- Home Team: 7 => 6, Away Team: 1 => 2
(1, '2023-02-18', 7, 1, 2, 2, 2, 7), -- Home Team: 7 => 1, Away Team: 2 => 2
(1, '2023-09-24', 7, 10, 3, 1, 3, 7), -- Home Team: 7 => 10, Away Team: 3 => 1
(1, '2023-10-15', 7, 7, 4, 2, 4, 7), -- Home Team: 7 => 7, Away Team: 4 => 2
(1, '2023-03-11', 7, 14, 5, 11, 5, 7), -- Home Team: 7 => 14, Away Team: 5 => 11
(1, '2023-06-08', 7, 6, 6, 5, 7, 6), -- Home Team: 7 => 6, Away Team: 6 => 5
(1, '2023-12-03', 7, 15, 8, 3, 7, 8), -- Home Team: 7 => 15, Away Team: 8 => 3
(1, '2023-04-02', 7, 6, 9, 2, 7, 9), -- Home Team: 7 => 6, Away Team: 9 => 2
(1, '2023-09-02', 7, 1, 10, 15, 10, 7), -- Home Team: 7 => 1, Away Team: 10 => 15
(1, '2023-11-11', 7, 2, 11, 7, 11, 7), -- Home Team: 7 => 2, Away Team: 11 => 7
(1, '2023-06-27', 7, 5, 12, 14, 12, 7), -- Home Team: 7 => 5, Away Team: 12 => 14
(1, '2023-02-03', 7, 6, 13, 12, 13, 7), -- Home Team: 7 => 6, Away Team: 13 => 12
(1, '2023-12-02', 7, 3, 14, 9, 14, 7), -- Home Team: 7 => 3, Away Team: 14 => 9
(1, '2023-11-16', 7, 15, 15, 4, 7, 15), -- Home Team: 7 => 15, Away Team: 15 => 4
(1, '2023-01-17', 7, 3, 16, 15, 16, 7), -- Home Team: 7 => 3, Away Team: 16 => 15
(1, '2023-07-23', 7, 9, 17, 3, 7, 17), -- Home Team: 7 => 9, Away Team: 17 => 3
(1, '2023-02-11', 7, 1, 18, 9, 18, 7), -- Home Team: 7 => 1, Away Team: 18 => 9
(1, '2023-03-18', 7, 11, 19, 3, 7, 19), -- Home Team: 7 => 11, Away Team: 19 => 3
(1, '2023-05-29', 7, 9, 20, 7, 7, 20); -- Home Team: 7 => 9, Away Team: 20 => 7

-- Team 8: Werewolves
INSERT INTO `game` (`Season_ID`, `Date`, `Home_Team`, `Home_Score`, `Away_Team`, `Away_Score`, `Winner`, `Loser`) VALUES
(1, '2023-09-01', 8, 2, 1, 1, 8, 1), -- Home Team: 8 => 2, Away Team: 1 => 1
(1, '2023-03-16', 8, 3, 2, 5, 2, 8), -- Home Team: 8 => 3, Away Team: 2 => 5
(1, '2023-11-18', 8, 8, 3, 15, 3, 8), -- Home Team: 8 => 8, Away Team: 3 => 15
(1, '2023-10-01', 8, 4, 4, 1, 4, 8), -- Home Team: 8 => 4, Away Team: 4 => 1
(1, '2023-10-13', 8, 7, 5, 4, 5, 8), -- Home Team: 8 => 7, Away Team: 5 => 4
(1, '2023-09-12', 8, 14, 6, 11, 8, 6), -- Home Team: 8 => 14, Away Team: 6 => 11
(1, '2023-12-15', 8, 10, 7, 6, 7, 8), -- Home Team: 8 => 10, Away Team: 7 => 6
(1, '2023-12-07', 8, 8, 9, 5, 8, 9), -- Home Team: 8 => 8, Away Team: 9 => 5
(1, '2023-02-12', 8, 12, 10, 4, 8, 10), -- Home Team: 8 => 12, Away Team: 10 => 4
(1, '2023-06-20', 8, 14, 11, 12, 11, 8), -- Home Team: 8 => 14, Away Team: 11 => 12
(1, '2023-10-03', 8, 10, 12, 5, 8, 12), -- Home Team: 8 => 10, Away Team: 12 => 5
(1, '2023-01-18', 8, 5, 13, 9, 13, 8), -- Home Team: 8 => 5, Away Team: 13 => 9
(1, '2023-07-24', 8, 15, 14, 9, 8, 14), -- Home Team: 8 => 15, Away Team: 14 => 9
(1, '2023-02-08', 8, 14, 15, 4, 8, 15), -- Home Team: 8 => 14, Away Team: 15 => 4
(1, '2023-03-11', 8, 13, 16, 6, 8, 16), -- Home Team: 8 => 13, Away Team: 16 => 6
(1, '2023-06-16', 8, 3, 17, 5, 17, 8), -- Home Team: 8 => 3, Away Team: 17 => 5
(1, '2023-10-31', 8, 3, 18, 12, 18, 8), -- Home Team: 8 => 3, Away Team: 18 => 12
(1, '2023-05-30', 8, 2, 19, 4, 19, 8), -- Home Team: 8 => 2, Away Team: 19 => 4
(1, '2023-01-16', 8, 7, 20, 2, 8, 20); -- Home Team: 8 => 7, Away Team: 20 => 2

-- Team 9: Dragons
INSERT INTO `game` (`Season_ID`, `Date`, `Home_Team`, `Home_Score`, `Away_Team`, `Away_Score`, `Winner`, `Loser`) VALUES
(1, '2023-03-07', 9, 10, 1, 7, 9, 1), -- Home Team: 9 => 10, Away Team: 1 => 7
(1, '2023-05-22', 9, 3, 2, 8, 2, 9), -- Home Team: 9 => 3, Away Team: 2 => 8
(1, '2023-04-09', 9, 11, 3, 8, 9, 3), -- Home Team: 9 => 11, Away Team: 3 => 8
(1, '2023-10-17', 9, 11, 4, 13, 4, 9), -- Home Team: 9 => 11, Away Team: 4 => 13
(1, '2023-11-22', 9, 6, 5, 7, 5, 9), -- Home Team: 9 => 6, Away Team: 5 => 7
(1, '2023-03-16', 9, 14, 6, 9, 9, 6), -- Home Team: 9 => 14, Away Team: 6 => 9
(1, '2023-11-15', 9, 10, 7, 7, 9, 7), -- Home Team: 9 => 10, Away Team: 7 => 7
(1, '2023-11-04', 9, 9, 8, 10, 8, 9), -- Home Team: 9 => 9, Away Team: 8 => 10
(1, '2023-12-25', 9, 5, 10, 15, 10, 9), -- Home Team: 9 => 5, Away Team: 10 => 15
(1, '2023-08-19', 9, 12, 11, 14, 11, 9), -- Home Team: 9 => 12, Away Team: 11 => 14
(1, '2023-10-13', 9, 12, 12, 2, 9, 12), -- Home Team: 9 => 12, Away Team: 12 => 2
(1, '2023-05-13', 9, 11, 13, 5, 9, 13), -- Home Team: 9 => 11, Away Team: 13 => 5
(1, '2023-09-01', 9, 2, 14, 3, 14, 9), -- Home Team: 9 => 2, Away Team: 14 => 3
(1, '2023-05-08', 9, 12, 15, 11, 9, 15), -- Home Team: 9 => 12, Away Team: 15 => 11
(1, '2023-02-27', 9, 15, 16, 2, 9, 16), -- Home Team: 9 => 15, Away Team: 16 => 2
(1, '2023-12-21', 9, 12, 17, 3, 9, 17), -- Home Team: 9 => 12, Away Team: 17 => 3
(1, '2023-06-24', 9, 12, 18, 5, 9, 18), -- Home Team: 9 => 12, Away Team: 18 => 5
(1, '2023-01-29', 9, 1, 19, 6, 19, 9), -- Home Team: 9 => 1, Away Team: 19 => 6
(1, '2023-10-06', 9, 2, 20, 4, 20, 9); -- Home Team: 9 => 2, Away Team: 20 => 4

-- Team 10: Pirates
INSERT INTO `game` (`Season_ID`, `Date`, `Home_Team`, `Home_Score`, `Away_Team`, `Away_Score`, `Winner`, `Loser`) VALUES
(1, '2023-09-13', 10, 6, 1, 2, 10, 1), -- Home Team: 10 => 6, Away Team: 1 => 2
(1, '2023-11-16', 10, 5, 2, 15, 2, 10), -- Home Team: 10 => 5, Away Team: 2 => 15
(1, '2023-02-11', 10, 15, 3, 12, 10, 3), -- Home Team: 10 => 15, Away Team: 3 => 12
(1, '2023-11-13', 10, 3, 4, 8, 4, 10), -- Home Team: 10 => 3, Away Team: 4 => 8
(1, '2023-02-08', 10, 13, 5, 9, 10, 5), -- Home Team: 10 => 13, Away Team: 5 => 9
(1, '2023-09-27', 10, 13, 6, 4, 10, 6), -- Home Team: 10 => 13, Away Team: 6 => 4
(1, '2023-02-28', 10, 8, 7, 2, 7, 10), -- Home Team: 10 => 8, Away Team: 7 => 2
(1, '2023-09-20', 10, 7, 8, 3, 8, 10), -- Home Team: 10 => 7, Away Team: 8 => 3
(1, '2023-04-22', 10, 10, 9, 11, 10, 9), -- Home Team: 10 => 10, Away Team: 9 => 11
(1, '2023-08-23', 10, 1, 11, 15, 11, 10), -- Home Team: 10 => 1, Away Team: 11 => 15
(1, '2023-10-22', 10, 14, 12, 9, 10, 12), -- Home Team: 10 => 14, Away Team: 12 => 9
(1, '2023-07-13', 10, 3, 13, 4, 13, 10), -- Home Team: 10 => 3, Away Team: 13 => 4
(1, '2023-01-28', 10, 12, 14, 10, 10, 14), -- Home Team: 10 => 12, Away Team: 14 => 10
(1, '2023-03-10', 10, 1, 15, 3, 15, 10), -- Home Team: 10 => 1, Away Team: 15 => 3
(1, '2023-04-15', 10, 12, 16, 11, 10, 16), -- Home Team: 10 => 12, Away Team: 16 => 11
(1, '2023-09-16', 10, 8, 17, 3, 10, 17), -- Home Team: 10 => 8, Away Team: 17 => 3
(1, '2023-03-08', 10, 2, 18, 12, 18, 10), -- Home Team: 10 => 2, Away Team: 18 => 12
(1, '2023-02-24', 10, 9, 19, 12, 19, 10), -- Home Team: 10 => 9, Away Team: 19 => 12
(1, '2023-12-06', 10, 13, 20, 4, 10, 20); -- Home Team: 10 => 13, Away Team: 20 => 4


----------------------------------------------------------------------------------------
-- NL Teams 
----------------------------------------------------------------------------------------
-- Team 11: Vortex Vipers
INSERT INTO `game` (`Season_ID`, `Date`, `Home_Team`, `Home_Score`, `Away_Team`, `Away_Score`, `Winner`, `Loser`) VALUES
(1, '2023-08-21', 11, 12, 1, 2, 11, 1), -- Home Team: 11 => 12, Away Team: 1 => 2
(1, '2023-11-16', 11, 2, 2, 5, 2, 11), -- Home Team: 11 => 2, Away Team: 2 => 5
(1, '2023-03-15', 11, 3, 3, 9, 3, 11), -- Home Team: 11 => 3, Away Team: 3 => 9
(1, '2023-09-15', 11, 15, 4, 2, 4, 11), -- Home Team: 11 => 15, Away Team: 4 => 2
(1, '2023-05-16', 11, 2, 5, 3, 11, 5), -- Home Team: 11 => 2, Away Team: 5 => 3
(1, '2023-09-12', 11, 14, 6, 4, 6, 11), -- Home Team: 11 => 14, Away Team: 6 => 4
(1, '2023-05-23', 11, 3, 7, 8, 11, 7), -- Home Team: 11 => 3, Away Team: 7 => 8
(1, '2023-11-04', 11, 6, 8, 11, 11, 8), -- Home Team: 11 => 6, Away Team: 8 => 11
(1, '2023-08-02', 11, 15, 9, 2, 9, 11), -- Home Team: 11 => 15, Away Team: 9 => 2
(1, '2023-07-09', 11, 13, 10, 1, 10, 11), -- Home Team: 11 => 13, Away Team: 10 => 1
(1, '2023-06-15', 11, 8, 12, 2, 11, 12), -- Home Team: 11 => 8, Away Team: 12 => 2
(1, '2023-12-21', 11, 4, 13, 13, 13, 11), -- Home Team: 11 => 4, Away Team: 13 => 13
(1, '2023-04-05', 11, 2, 14, 9, 14, 11), -- Home Team: 11 => 2, Away Team: 14 => 9
(1, '2023-07-06', 11, 8, 15, 4, 11, 15), -- Home Team: 11 => 8, Away Team: 15 => 4
(1, '2023-09-17', 11, 11, 16, 3, 11, 16), -- Home Team: 11 => 11, Away Team: 16 => 3
(1, '2023-02-15', 11, 12, 17, 9, 11, 17), -- Home Team: 11 => 12, Away Team: 17 => 9
(1, '2023-07-30', 11, 12, 18, 5, 11, 18), -- Home Team: 11 => 12, Away Team: 18 => 5
(1, '2023-01-28', 11, 9, 19, 14, 19, 11), -- Home Team: 11 => 9, Away Team: 19 => 14
(1, '2023-07-06', 11, 2, 20, 6, 20, 11); -- Home Team: 11 => 2, Away Team: 20 => 6

-- Team 12: Tempest Titans
INSERT INTO `game` (`Season_ID`, `Date`, `Home_Team`, `Home_Score`, `Away_Team`, `Away_Score`, `Winner`, `Loser`) VALUES
(1, '2023-06-27', 12, 13, 1, 1, 12, 1), -- Home Team: 12 => 13, Away Team: 1 => 1
(1, '2023-01-24', 12, 13, 2, 15, 2, 12), -- Home Team: 12 => 13, Away Team: 2 => 15
(1, '2023-06-10', 12, 12, 3, 5, 12, 3), -- Home Team: 12 => 12, Away Team: 3 => 5
(1, '2023-11-22', 12, 9, 4, 6, 12, 4), -- Home Team: 12 => 9, Away Team: 4 => 6
(1, '2023-10-17', 12, 8, 5, 7, 12, 5), -- Home Team: 12 => 8, Away Team: 5 => 7
(1, '2023-06-23', 12, 10, 6, 12, 6, 12), -- Home Team: 12 => 10, Away Team: 6 => 12
(1, '2023-07-10', 12, 8, 7, 1, 12, 7), -- Home Team: 12 => 8, Away Team: 7 => 1
(1, '2023-12-15', 12, 4, 8, 8, 12, 8), -- Home Team: 12 => 4, Away Team: 8 => 8
(1, '2023-05-28', 12, 2, 9, 5, 12, 9), -- Home Team: 12 => 2, Away Team: 9 => 5
(1, '2023-10-08', 12, 7, 10, 4, 10, 12), -- Home Team: 12 => 7, Away Team: 10 => 4
(1, '2023-01-15', 12, 15, 11, 14, 12, 11), -- Home Team: 12 => 15, Away Team: 11 => 14
(1, '2023-11-03', 12, 13, 13, 2, 12, 13), -- Home Team: 12 => 13, Away Team: 13 => 2
(1, '2023-03-23', 12, 5, 14, 14, 14, 12), -- Home Team: 12 => 5, Away Team: 14 => 14
(1, '2023-12-26', 12, 1, 15, 8, 15, 12), -- Home Team: 12 => 1, Away Team: 15 => 8
(1, '2023-11-25', 12, 10, 16, 11, 16, 12), -- Home Team: 12 => 10, Away Team: 16 => 11
(1, '2023-12-08', 12, 7, 17, 2, 12, 17), -- Home Team: 12 => 7, Away Team: 17 => 2
(1, '2023-12-30', 12, 13, 18, 3, 12, 18), -- Home Team: 12 => 13, Away Team: 18 => 3
(1, '2023-01-09', 12, 12, 19, 3, 12, 19), -- Home Team: 12 => 12, Away Team: 19 => 3
(1, '2023-05-20', 12, 15, 20, 10, 12, 20); -- Home Team: 12 => 15, Away Team: 20 => 10

-- Team 13: Quasar Comets
INSERT INTO `game` (`Season_ID`, `Date`, `Home_Team`, `Home_Score`, `Away_Team`, `Away_Score`, `Winner`, `Loser`) VALUES
(1, '2023-07-11', 13, 3, 1, 14, 1, 13), -- Home Team: 13 => 3, Away Team: 1 => 14
(1, '2023-03-05', 13, 11, 2, 4, 13, 2), -- Home Team: 13 => 11, Away Team: 2 => 4
(1, '2023-06-10', 13, 10, 3, 2, 13, 3), -- Home Team: 13 => 10, Away Team: 3 => 2
(1, '2023-12-08', 13, 13, 4, 1, 13, 4), -- Home Team: 13 => 13, Away Team: 4 => 1
(1, '2023-11-24', 13, 14, 5, 8, 13, 5), -- Home Team: 13 => 14, Away Team: 5 => 8
(1, '2023-11-17', 13, 8, 6, 3, 13, 6), -- Home Team: 13 => 8, Away Team: 6 => 3
(1, '2023-09-16', 13, 15, 7, 8, 13, 7), -- Home Team: 13 => 15, Away Team: 7 => 8
(1, '2023-08-26', 13, 15, 8, 12, 8, 13), -- Home Team: 13 => 15, Away Team: 8 => 12
(1, '2023-08-12', 13, 15, 9, 2, 13, 9), -- Home Team: 13 => 15, Away Team: 9 => 2
(1, '2023-11-22', 13, 15, 10, 1, 10, 13), -- Home Team: 13 => 15, Away Team: 10 => 1
(1, '2023-01-17', 13, 12, 11, 5, 13, 11), -- Home Team: 13 => 12, Away Team: 11 => 5
(1, '2023-12-29', 13, 15, 12, 5, 13, 12), -- Home Team: 13 => 15, Away Team: 12 => 5
(1, '2023-09-24', 13, 1, 14, 13, 14, 13), -- Home Team: 13 => 1, Away Team: 14 => 13
(1, '2023-05-09', 13, 13, 15, 7, 13, 15), -- Home Team: 13 => 13, Away Team: 15 => 7
(1, '2023-04-08', 13, 6, 16, 13, 16, 13), -- Home Team: 13 => 6, Away Team: 16 => 13
(1, '2023-10-12', 13, 5, 17, 2, 13, 17), -- Home Team: 13 => 5, Away Team: 17 => 2
(1, '2023-12-31', 13, 1, 18, 9, 18, 13), -- Home Team: 13 => 1, Away Team: 18 => 9
(1, '2023-02-08', 13, 3, 19, 5, 19, 13), -- Home Team: 13 => 3, Away Team: 19 => 5
(1, '2023-08-06', 13, 15, 20, 3, 13, 20); -- Home Team: 13 => 15, Away Team: 20 => 3

-- Team 14: Phantoms
INSERT INTO `game` (`Season_ID`, `Date`, `Home_Team`, `Home_Score`, `Away_Team`, `Away_Score`, `Winner`, `Loser`) VALUES
(1, '2023-10-30', 14, 13, 1, 15, 1, 14), -- Home Team: 14 => 13, Away Team: 1 => 15
(1, '2023-12-05', 14, 5, 2, 3, 14, 2), -- Home Team: 14 => 5, Away Team: 2 => 3
(1, '2023-08-21', 14, 3, 3, 5, 3, 14), -- Home Team: 14 => 3, Away Team: 3 => 5
(1, '2023-05-03', 14, 13, 4, 3, 14, 4), -- Home Team: 14 => 13, Away Team: 4 => 3
(1, '2023-01-26', 14, 11, 5, 12, 5, 14), -- Home Team: 14 => 11, Away Team: 5 => 12
(1, '2023-05-07', 14, 4, 6, 6, 6, 14), -- Home Team: 14 => 4, Away Team: 6 => 6
(1, '2023-11-17', 14, 8, 7, 2, 14, 7), -- Home Team: 14 => 8, Away Team: 7 => 2
(1, '2023-11-12', 14, 5, 8, 8, 14, 8), -- Home Team: 14 => 5, Away Team: 8 => 8
(1, '2023-10-14', 14, 3, 9, 15, 14, 9), -- Home Team: 14 => 3, Away Team: 9 => 15
(1, '2023-04-25', 14, 2, 10, 1, 10, 14), -- Home Team: 14 => 2, Away Team: 10 => 1
(1, '2023-05-04', 14, 6, 11, 1, 14, 11), -- Home Team: 14 => 6, Away Team: 11 => 1
(1, '2023-08-27', 14, 8, 12, 14, 12, 14), -- Home Team: 14 => 8, Away Team: 12 => 14
(1, '2023-04-15', 14, 3, 13, 1, 14, 13), -- Home Team: 14 => 3, Away Team: 13 => 1
(1, '2023-11-06', 14, 15, 15, 1, 14, 15), -- Home Team: 14 => 15, Away Team: 15 => 1
(1, '2023-10-24', 14, 13, 16, 15, 16, 14), -- Home Team: 14 => 13, Away Team: 16 => 15
(1, '2023-02-26', 14, 3, 17, 1, 14, 17), -- Home Team: 14 => 3, Away Team: 17 => 1
(1, '2023-04-11', 14, 9, 18, 6, 14, 18), -- Home Team: 14 => 9, Away Team: 18 => 6
(1, '2023-03-19', 14, 14, 19, 11, 14, 19), -- Home Team: 14 => 14, Away Team: 19 => 11
(1, '2023-02-16', 14, 8, 20, 15, 20, 14); -- Home Team: 14 => 8, Away Team: 20 => 15

-- Team 15: Eclipse
INSERT INTO `game` (`Season_ID`, `Date`, `Home_Team`, `Home_Score`, `Away_Team`, `Away_Score`, `Winner`, `Loser`) VALUES
(1, '2023-01-18', 15, 2, 1, 5, 1, 15), -- Home Team: 15 => 2, Away Team: 1 => 5
(1, '2023-05-22', 15, 10, 2, 7, 15, 2), -- Home Team: 15 => 10, Away Team: 2 => 7
(1, '2023-05-21', 15, 15, 3, 3, 15, 3), -- Home Team: 15 => 15, Away Team: 3 => 3
(1, '2023-11-25', 15, 5, 4, 11, 4, 15), -- Home Team: 15 => 5, Away Team: 4 => 11
(1, '2023-03-14', 15, 4, 5, 1, 5, 15), -- Home Team: 15 => 4, Away Team: 5 => 1
(1, '2023-04-23', 15, 15, 6, 2, 15, 6), -- Home Team: 15 => 15, Away Team: 6 => 2
(1, '2023-05-16', 15, 8, 7, 7, 15, 7), -- Home Team: 15 => 8, Away Team: 7 => 7
(1, '2023-08-08', 15, 8, 8, 7, 8, 15), -- Home Team: 15 => 8, Away Team: 8 => 7
(1, '2023-06-18', 15, 15, 9, 4, 9, 15), -- Home Team: 15 => 15, Away Team: 9 => 4
(1, '2023-04-10', 15, 6, 10, 12, 15, 10), -- Home Team: 15 => 6, Away Team: 10 => 12
(1, '2023-02-22', 15, 11, 11, 1, 15, 11), -- Home Team: 15 => 11, Away Team: 11 => 1
(1, '2023-06-09', 15, 2, 12, 12, 12, 15), -- Home Team: 15 => 2, Away Team: 12 => 12
(1, '2023-09-17', 15, 1, 13, 8, 13, 15), -- Home Team: 15 => 1, Away Team: 13 => 8
(1, '2023-12-15', 15, 3, 14, 8, 14, 15), -- Home Team: 15 => 3, Away Team: 14 => 8
(1, '2023-08-04', 15, 14, 16, 1, 15, 16), -- Home Team: 15 => 14, Away Team: 16 => 1
(1, '2023-04-18', 15, 2, 17, 8, 17, 15), -- Home Team: 15 => 2, Away Team: 17 => 8
(1, '2023-03-30', 15, 13, 18, 12, 15, 18), -- Home Team: 15 => 13, Away Team: 18 => 12
(1, '2023-12-11', 15, 5, 19, 15, 19, 15), -- Home Team: 15 => 5, Away Team: 19 => 15
(1, '2023-01-17', 15, 13, 20, 9, 15, 20); -- Home Team: 15 => 13, Away Team: 20 => 9

-- Team 16: Aether Hawks
INSERT INTO `game` (`Season_ID`, `Date`, `Home_Team`, `Home_Score`, `Away_Team`, `Away_Score`, `Winner`, `Loser`) VALUES
(1, '2023-03-09', 16, 9, 1, 12, 1, 16), -- Home Team: 16 => 9, Away Team: 1 => 12
(1, '2023-04-24', 16, 4, 2, 5, 2, 16), -- Home Team: 16 => 4, Away Team: 2 => 5
(1, '2023-01-06', 16, 7, 3, 2, 16, 3), -- Home Team: 16 => 7, Away Team: 3 => 2
(1, '2023-12-07', 16, 11, 4, 9, 16, 4), -- Home Team: 16 => 11, Away Team: 4 => 9
(1, '2023-08-24', 16, 6, 5, 1, 16, 5), -- Home Team: 16 => 6, Away Team: 5 => 1
(1, '2023-02-16', 16, 14, 6, 13, 16, 6), -- Home Team: 16 => 14, Away Team: 6 => 13
(1, '2023-10-26', 16, 6, 7, 14, 7, 16), -- Home Team: 16 => 6, Away Team: 7 => 14
(1, '2023-01-06', 16, 11, 8, 9, 8, 16), -- Home Team: 16 => 11, Away Team: 8 => 9
(1, '2023-12-31', 16, 15, 9, 14, 9, 16), -- Home Team: 16 => 15, Away Team: 9 => 14
(1, '2023-10-05', 16, 11, 10, 2, 16, 10), -- Home Team: 16 => 11, Away Team: 10 => 2
(1, '2023-10-05', 16, 15, 11, 5, 16, 11), -- Home Team: 16 => 15, Away Team: 11 => 5
(1, '2023-08-21', 16, 2, 12, 4, 12, 16), -- Home Team: 16 => 2, Away Team: 12 => 4
(1, '2023-05-24', 16, 15, 13, 4, 16, 13), -- Home Team: 16 => 15, Away Team: 13 => 4
(1, '2023-04-08', 16, 7, 14, 11, 14, 16), -- Home Team: 16 => 7, Away Team: 14 => 11
(1, '2023-09-23', 16, 13, 15, 5, 16, 15), -- Home Team: 16 => 13, Away Team: 15 => 5
(1, '2023-02-27', 16, 15, 17, 8, 16, 17), -- Home Team: 16 => 15, Away Team: 17 => 8
(1, '2023-10-29', 16, 14, 18, 9, 16, 18), -- Home Team: 16 => 14, Away Team: 18 => 9
(1, '2023-05-01', 16, 1, 19, 9, 19, 16), -- Home Team: 16 => 1, Away Team: 19 => 9
(1, '2023-07-08', 16, 7, 20, 15, 20, 16); -- Home Team: 16 => 7, Away Team: 20 => 15

-- Team 17: Mystic Mirages
INSERT INTO `game` (`Season_ID`, `Date`, `Home_Team`, `Home_Score`, `Away_Team`, `Away_Score`, `Winner`, `Loser`) VALUES
(1, '2023-01-02', 17, 10, 1, 6, 17, 1), -- Home Team: 17 => 10, Away Team: 1 => 6
(1, '2023-10-19', 17, 9, 2, 8, 17, 2), -- Home Team: 17 => 9, Away Team: 2 => 8
(1, '2023-04-29', 17, 13, 3, 7, 17, 3), -- Home Team: 17 => 13, Away Team: 3 => 7
(1, '2023-11-25', 17, 9, 4, 1, 4, 17), -- Home Team: 17 => 9, Away Team: 4 => 1
(1, '2023-08-13', 17, 15, 5, 6, 5, 17), -- Home Team: 17 => 15, Away Team: 5 => 6
(1, '2023-02-26', 17, 7, 6, 5, 6, 17), -- Home Team: 17 => 7, Away Team: 6 => 5
(1, '2023-02-06', 17, 7, 7, 5, 7, 17), -- Home Team: 17 => 7, Away Team: 7 => 5
(1, '2023-09-26', 17, 11, 8, 8, 17, 8), -- Home Team: 17 => 11, Away Team: 8 => 8
(1, '2023-07-13', 17, 14, 9, 4, 9, 17), -- Home Team: 17 => 14, Away Team: 9 => 4
(1, '2023-06-08', 17, 5, 10, 12, 17, 10), -- Home Team: 17 => 5, Away Team: 10 => 12
(1, '2023-01-09', 17, 15, 11, 1, 17, 11), -- Home Team: 17 => 15, Away Team: 11 => 1
(1, '2023-01-30', 17, 9, 12, 2, 17, 12), -- Home Team: 17 => 9, Away Team: 12 => 2
(1, '2023-04-12', 17, 1, 13, 10, 13, 17), -- Home Team: 17 => 1, Away Team: 13 => 10
(1, '2023-04-18', 17, 12, 14, 7, 17, 14), -- Home Team: 17 => 12, Away Team: 14 => 7
(1, '2023-05-29', 17, 6, 15, 8, 15, 17), -- Home Team: 17 => 6, Away Team: 15 => 8
(1, '2023-11-21', 17, 12, 16, 8, 17, 16), -- Home Team: 17 => 12, Away Team: 16 => 8
(1, '2023-02-22', 17, 4, 18, 10, 18, 17), -- Home Team: 17 => 4, Away Team: 18 => 10
(1, '2023-01-28', 17, 8, 19, 12, 19, 17), -- Home Team: 17 => 8, Away Team: 19 => 12
(1, '2023-11-21', 17, 13, 20, 5, 17, 20); -- Home Team: 17 => 13, Away Team: 20 => 5

-- Team 18: Trailblazers
INSERT INTO `game` (`Season_ID`, `Date`, `Home_Team`, `Home_Score`, `Away_Team`, `Away_Score`, `Winner`, `Loser`) VALUES
(1, '2023-06-21', 18, 3, 1, 11, 1, 18), -- Home Team: 18 => 3, Away Team: 1 => 11
(1, '2023-09-16', 18, 3, 2, 11, 2, 18), -- Home Team: 18 => 3, Away Team: 2 => 11
(1, '2023-10-20', 18, 9, 3, 2, 18, 3), -- Home Team: 18 => 9, Away Team: 3 => 2
(1, '2023-10-31', 18, 9, 4, 1, 18, 4), -- Home Team: 18 => 9, Away Team: 4 => 1
(1, '2023-11-23', 18, 9, 5, 7, 18, 5), -- Home Team: 18 => 9, Away Team: 5 => 7
(1, '2023-01-31', 18, 13, 6, 2, 18, 6), -- Home Team: 18 => 13, Away Team: 6 => 2
(1, '2023-06-30', 18, 9, 7, 4, 18, 7), -- Home Team: 18 => 9, Away Team: 7 => 4
(1, '2023-09-20', 18, 12, 8, 6, 8, 18), -- Home Team: 18 => 12, Away Team: 8 => 6
(1, '2023-06-20', 18, 13, 9, 10, 9, 18), -- Home Team: 18 => 13, Away Team: 9 => 10
(1, '2023-08-11', 18, 8, 10, 3, 10, 18), -- Home Team: 18 => 8, Away Team: 10 => 3
(1, '2023-11-25', 18, 4, 11, 15, 11, 18), -- Home Team: 18 => 4, Away Team: 11 => 15
(1, '2023-01-22', 18, 12, 12, 8, 18, 12), -- Home Team: 18 => 12, Away Team: 12 => 8
(1, '2023-02-03', 18, 13, 13, 5, 18, 13), -- Home Team: 18 => 13, Away Team: 13 => 5
(1, '2023-11-13', 18, 2, 14, 10, 14, 18), -- Home Team: 18 => 2, Away Team: 14 => 10
(1, '2023-07-02', 18, 7, 15, 5, 18, 15), -- Home Team: 18 => 7, Away Team: 15 => 5
(1, '2023-08-09', 18, 7, 16, 15, 16, 18), -- Home Team: 18 => 7, Away Team: 16 => 15
(1, '2023-10-12', 18, 10, 17, 2, 18, 17), -- Home Team: 18 => 10, Away Team: 17 => 2
(1, '2023-04-27', 18, 7, 19, 15, 19, 18), -- Home Team: 18 => 7, Away Team: 19 => 15
(1, '2023-10-20', 18, 14, 20, 12, 18, 20); -- Home Team: 18 => 14, Away Team: 20 => 

-- Team 19: Valkyries
INSERT INTO `game` (`Season_ID`, `Date`, `Home_Team`, `Home_Score`, `Away_Team`, `Away_Score`, `Winner`, `Loser`) VALUES
(1, '2023-10-07', 19, 9, 1, 1, 19, 1), -- Home Team: 19 => 9, Away Team: 1 => 1
(1, '2023-01-31', 19, 7, 2, 10, 2, 19), -- Home Team: 19 => 7, Away Team: 2 => 10
(1, '2023-05-21', 19, 13, 3, 3, 19, 3), -- Home Team: 19 => 13, Away Team: 3 => 3
(1, '2023-01-05', 19, 15, 4, 8, 19, 4), -- Home Team: 19 => 15, Away Team: 4 => 8
(1, '2023-07-14', 19, 4, 5, 3, 19, 5), -- Home Team: 19 => 4, Away Team: 5 => 3
(1, '2023-10-14', 19, 5, 6, 6, 6, 19), -- Home Team: 19 => 5, Away Team: 6 => 6
(1, '2023-10-11', 19, 3, 7, 2, 19, 7), -- Home Team: 19 => 3, Away Team: 7 => 2
(1, '2023-02-06', 19, 10, 8, 2, 19, 8), -- Home Team: 19 => 10, Away Team: 8 => 2
(1, '2023-09-14', 19, 7, 9, 2, 19, 9), -- Home Team: 19 => 7, Away Team: 9 => 2
(1, '2023-12-24', 19, 13, 10, 2, 10, 19), -- Home Team: 19 => 13, Away Team: 10 => 2
(1, '2023-09-21', 19, 8, 11, 7, 19, 11), -- Home Team: 19 => 8, Away Team: 11 => 7
(1, '2023-04-29', 19, 4, 12, 1, 19, 12), -- Home Team: 19 => 4, Away Team: 12 => 1
(1, '2023-08-17', 19, 5, 13, 3, 19, 13), -- Home Team: 19 => 5, Away Team: 13 => 3
(1, '2023-10-03', 19, 15, 14, 10, 19, 14), -- Home Team: 19 => 15, Away Team: 14 => 10
(1, '2023-02-04', 19, 12, 15, 15, 15, 19), -- Home Team: 19 => 12, Away Team: 15 => 15
(1, '2023-10-11', 19, 10, 16, 13, 16, 19), -- Home Team: 19 => 10, Away Team: 16 => 13
(1, '2023-10-23', 19, 12, 17, 2, 19, 17), -- Home Team: 19 => 12, Away Team: 17 => 2
(1, '2023-08-14', 19, 3, 18, 6, 18, 19), -- Home Team: 19 => 3, Away Team: 18 => 6
(1, '2023-08-17', 19, 2, 20, 7, 20, 19); -- Home Team: 19 => 2, Away Team: 20 => 7

-- Team 20: Iron Thunder
INSERT INTO `game` (`Season_ID`, `Date`, `Home_Team`, `Home_Score`, `Away_Team`, `Away_Score`, `Winner`, `Loser`) VALUES
(1, '2023-10-09', 20, 5, 1, 6, 1, 20), -- Home Team: 20 => 5, Away Team: 1 => 6
(1, '2023-05-19', 20, 5, 2, 7, 2, 20), -- Home Team: 20 => 5, Away Team: 2 => 7
(1, '2023-02-14', 20, 13, 3, 11, 20, 3), -- Home Team: 20 => 13, Away Team: 3 => 11
(1, '2023-11-14', 20, 5, 4, 3, 20, 4), -- Home Team: 20 => 5, Away Team: 4 => 3
(1, '2023-11-16', 20, 7, 5, 14, 5, 20), -- Home Team: 20 => 7, Away Team: 5 => 14
(1, '2023-05-06', 20, 5, 6, 9, 6, 20), -- Home Team: 20 => 5, Away Team: 6 => 9
(1, '2023-02-12', 20, 3, 7, 1, 20, 7), -- Home Team: 20 => 3, Away Team: 7 => 1
(1, '2023-12-01', 20, 6, 8, 7, 8, 20), -- Home Team: 20 => 6, Away Team: 8 => 7
(1, '2023-11-30', 20, 8, 9, 4, 20, 9), -- Home Team: 20 => 8, Away Team: 9 => 4
(1, '2023-03-30', 20, 5, 10, 2, 20, 10), -- Home Team: 20 => 5, Away Team: 10 => 2
(1, '2023-02-24', 20, 13, 11, 6, 20, 11), -- Home Team: 20 => 13, Away Team: 11 => 6
(1, '2023-11-03', 20, 1, 12, 14, 12, 20), -- Home Team: 20 => 1, Away Team: 12 => 14
(1, '2023-08-21', 20, 7, 13, 14, 13, 20), -- Home Team: 20 => 7, Away Team: 13 => 14
(1, '2023-07-19', 20, 11, 14, 8, 20, 14), -- Home Team: 20 => 11, Away Team: 14 => 8
(1, '2023-10-27', 20, 13, 15, 10, 20, 15), -- Home Team: 20 => 13, Away Team: 15 => 10
(1, '2023-08-13', 20, 3, 16, 2, 20, 16), -- Home Team: 20 => 3, Away Team: 16 => 2
(1, '2023-03-26', 20, 3, 17, 8, 17, 20), -- Home Team: 20 => 3, Away Team: 17 => 8
(1, '2023-07-05', 20, 7, 18, 9, 18, 20), -- Home Team: 20 => 7, Away Team: 18 => 9
(1, '2023-01-01', 20, 8, 19, 10, 19, 20); -- Home Team: 20 => 8, Away Team: 19 => 10




/*
SELECT 
    Team_ID,
    SUM(CASE WHEN Winner = Team_ID THEN 1 ELSE 0 END) AS Wins,
    SUM(CASE WHEN Loser = Team_ID THEN 1 ELSE 0 END) AS Losses
FROM (
    SELECT Home_Team AS Team_ID, Winner, Loser FROM game
    UNION ALL
    SELECT Away_Team AS Team_ID, Winner, Loser FROM game
) AS AllGames
GROUP BY Team_ID
ORDER BY Team_ID;
*/

-- Used this Query to debug all of the game records and find where Team 1 was getting a random extra 2 Losses
-- The Query SELECTS game entities that have a Winner or Loser of 1 and 1 is not a Home or Away Team!
/*
SELECT *
FROM game
WHERE (Winner = 1 OR Loser = 1)
  AND Home_Team <> 1
  AND Away_Team <> 1;
*/

-- This query sums the total amount of entries in the game table
/*
SELECT COUNT(*) FROM Game;
*/

-- This Query grabs most of its data from the game table and displays Win and Loss counts for every team!
SELECT 
    t.Team_ID,
    t.name AS Team_Name,
    (SELECT COUNT(*) FROM game WHERE Winner = t.Team_ID) AS Wins,
    (SELECT COUNT(*) FROM game WHERE Loser = t.Team_ID) AS Losses
FROM 
    team t
ORDER BY 
    t.Team_ID;