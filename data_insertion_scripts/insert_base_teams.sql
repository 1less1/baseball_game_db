USE baseball_game_db;

-- Inserting 15 AL baseball teams and 15 NL baseball teams with randomly generated names!
INSERT INTO team (Name, Home_Town, League, Salary_Cap, Stadium_ID) VALUES
-- AL Teams
('Crimson Crushers', 'Canyon City', 'AL', 7500000.00, 2),
('Silver Strikers', 'Fort Argent', 'AL', 6700000.00, 3),
('Phoenix Blaze', 'Sun Valley', 'AL', 5800000.00, 5),
('Stormbreakers', 'Cyclone Bay', 'AL', 7200000.00, 6),
('Galaxy Guardians', 'Nova Town', 'AL', 6500000.00, 8),
('Echo Rangers', 'Whisper Woods', 'AL', 6200000.00, 9),
('Zenith Flyers', 'Summit Heights', 'AL', 8000000.00, 12),
('Knights', 'Avalon', 'AL', 5600000.00, 14),
('Blaze Hounds', 'Ember Hills', 'AL', 6700000.00, 15),
('Starlight Spirits', 'Twilight Falls', 'AL', 5900000.00, 16),
('Cobalt Chargers', 'Indigo Point', 'AL', 5500000.00, 17),
('Ember Dragons', 'Ember Ridge', 'AL', 6100000.00, 21),
('Rogue Pirates', 'Blackwater', 'AL', 5400000.00, 22),
('Ironclad Sentinels', 'Forge City', 'AL', 7100000.00, 23),
('Solstice Suns', 'Summerfield', 'AL', 6800000.00, 25),

-- NL Teams
('Vortex Vipers', 'Tornado City', 'NL', 7200000.00, 7),
('Tempest Titans', 'Thunder Hollow', 'NL', 6900000.00, 27),
('Quasar Comets', 'Orbit City', 'NL', 6500000.00, 20),
('Eclipse Phantoms', 'Shadow Creek', 'NL', 6000000.00, 13),
('Pinnacle Panthers', 'Apexville', 'NL', 5800000.00, 34),
('Majestic Moons', 'Lunar Bay', 'NL', 5100000.00, 36),
('Aether Hawks', 'Stratos Ridge', 'NL', 7600000.00, 38),
('Mirage Mystics', 'Oasis Valley', 'NL', 6100000.00, 39),
('Tornado Trailblazers', 'Storm Hollow', 'NL', 6800000.00, 40),
('Vigilant Valkyries', 'Watchtower City', 'NL', 7500000.00, 42),
('Skyward Soarers', 'Skyline Peaks', 'NL', 5900000.00, 31),
('Titanium Blizzards', 'Glacier Falls', 'NL', 6400000.00, 45),
('Infinity Navigators', 'Horizon Harbor', 'NL', 8000000.00, 46),
('Iron Thunder', 'Forge Town', 'NL', 7200000.00, 47),
('Radiant Royals', 'Brilliance Bay', 'NL', 6100000.00, 49);

SELECT * FROM Team WHERE League = 'AL';
SELECT * FROM Team WHERE Stadium_ID IN (SELECT Stadium_ID FROM stadium WHERE Field_Size >= 400);
