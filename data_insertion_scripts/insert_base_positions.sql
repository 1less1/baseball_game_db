USE baseball_game_db;

-- Inserting the 9 traditional positions on the baseball field with ther corresponding IDs that are put into a normal Baseball score book!
INSERT INTO position (Position_ID, Code, Name) VALUES
(1, 'P', 'Pitcher'),
(2, 'C', 'Catcher'),
(3, '1B', 'First Base'),
(4, '2B', 'Second Base'),
(5, 'SS', 'Shortstop'),
(6, '3B', 'Third Base'),
(7, 'LF', 'Left Field'),
(8, 'CF', 'Center Field'),
(9, 'RF', 'Right Field');

SELECT * FROM position;

