USE baseball_game_db;

-- Inserting 10 AL baseball teams and 10 NL baseball teams with randomly generated names!
INSERT INTO team (Name, Home_Town, League, Salary_Cap, Stadium_ID) VALUES
-- AL Teams
('Crushers', 'Canyon City', 'AL', 7500000.00, 2),
('Phoenix', 'Sun Valley', 'AL', 5800000.00, 5),
('Stormbreakers', 'Cyclone Bay', 'AL', 7200000.00, 6),
('Guardians of the Galaxy', 'Nova Town', 'AL', 6500000.00, 8),
('Flyers', 'Summit Heights', 'AL', 8000000.00, 12),
('Knights', 'Avalon', 'AL', 5600000.00, 14),
('Blaze Hounds', 'Ember Hills', 'AL', 6700000.00, 15),
('Werewolves', 'Twilight Falls', 'AL', 5900000.00, 16),
('Dragons', 'Ember Ridge', 'AL', 6100000.00, 21),
('Pirates', 'Blackwater', 'AL', 5400000.00, 22),

-- NL Teams
('Vortex Vipers', 'Tornado City', 'NL', 7200000.00, 7),
('Tempest Titans', 'Thunder Hollow', 'NL', 6900000.00, 27),
('Quasar Comets', 'Orbit City', 'NL', 6500000.00, 20),
('Phantoms', 'Shadow Creek', 'NL', 6000000.00, 13),
('Eclipse', 'Lunar Bay', 'NL', 5100000.00, 36),
('Aether Hawks', 'Stratos Ridge', 'NL', 7600000.00, 38),
('Mystic Mirages', 'Oasis Valley', 'NL', 6100000.00, 39),
('Trailblazers', 'Storm Hollow', 'NL', 6800000.00, 40),
('Valkyries', 'Watchtower City', 'NL', 7500000.00, 42),
('Iron Thunder', 'Forge Town', 'NL', 7200000.00, 47);

SELECT * FROM Team WHERE League = 'AL';
SELECT * FROM Team WHERE Stadium_ID IN (SELECT Stadium_ID FROM stadium WHERE Field_Size >= 400);
