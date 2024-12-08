USE baseball_game_db;

-- Team 1: Crimson Crushers
INSERT INTO player (First_Name, Last_Name, Position_ID, Team_ID, Age, Country_ID) VALUES
('Tyler', 'Crimson', 1, 1, 28, 'USA'),
('Jake', 'Crusher', 2, 1, 26, 'CUB'),
('Ethan', 'Stone', 3, 1, 27, 'VEN'),
('Ben', 'Blaze', 4, 1, 30, 'MEX'),
('Chris', 'Fury', 5, 1, 25, 'DOM'),
('David', 'Viper', 6, 1, 29, 'PAN'),
('Matt', 'Thunder', 7, 1, 24, 'KOR'),
('Nick', 'Cannon', 8, 1, 28, 'TPE'),
('Jon', 'Rage', 9, 1, 23, 'BRA'),
('Ryan', 'Vortex', 2, 1, 28, 'GBR'),
('Tyson', 'Flash', 5, 1, 27, 'GER');

-- Team 2: Silver Strikers
INSERT INTO player (First_Name, Last_Name, Position_ID, Team_ID, Age, Country_ID) VALUES
('Zach', 'Silver', 1, 2, 26, 'USA'),
('Jason', 'Striker', 2, 2, 29, 'TUR'),
('Chris', 'Steel', 3, 2, 28, 'CUB'),
('Tyler', 'Bolt', 4, 2, 25, 'VEN'),
('Ben', 'Hammer', 5, 2, 27, 'KOR'),
('Ryan', 'Lightning', 6, 2, 30, 'MEX'),
('Matt', 'Iron', 7, 2, 23, 'CAN'),
('Jon', 'Sparks', 8, 2, 24, 'PUR'),
('David', 'Crash', 9, 2, 26, 'ARG'),
('Eli', 'Fire', 3, 2, 27, 'JPN'),
('Kyle', 'Shocker', 1, 2, 28, 'NED');

-- Team 3: Phoenix Blaze
INSERT INTO player (First_Name, Last_Name, Position_ID, Team_ID, Age, Country_ID) VALUES
('Ryan', 'Phoenix', 1, 3, 27, 'NZL'),
('Nick', 'Blaze', 2, 3, 30, 'DOM'),
('Tyson', 'Inferno', 3, 3, 25, 'CUB'),
('Jon', 'Ember', 4, 3, 29, 'VEN'),
('David', 'Flare', 5, 3, 28, 'JPN'),
('Eli', 'Ash', 6, 3, 24, 'MEX'),
('Chris', 'Firestorm', 7, 3, 23, 'CAN'),
('Matt', 'Torch', 8, 3, 26, 'THA'),
('Ben', 'Smolder', 9, 3, 27, 'PUR'),
('Zach', 'Blazing', 1, 3, 29, 'ARG'),
('Tyler', 'Cinder', 2, 3, 28, 'ITA');

-- Team 4: Stormbreakers
INSERT INTO player (First_Name, Last_Name, Position_ID, Team_ID, Age, Country_ID) VALUES
('Matt', 'Storm', 1, 4, 28, 'USA'),
('Tyson', 'Breaker', 2, 4, 26, 'DOM'),
('Ryan', 'Thunderstrike', 3, 4, 30, 'KEN'),
('Ben', 'Lightning', 4, 4, 27, 'VEN'),
('Jon', 'Hurricane', 5, 4, 29, 'JPN'),
('David', 'Tornado', 6, 4, 25, 'MEX'),
('Chris', 'Whirlwind', 7, 4, 24, 'CAN'),
('Tyler', 'Cyclone', 8, 4, 28, 'SUI'),
('Eli', 'Gale', 9, 4, 27, 'PUR'),
('Kyle', 'Blizzard', 3, 4, 26, 'CHN'),
('Zach', 'Typhoon', 2, 4, 25, 'RUS');

-- Team 5: Galaxy Guardians
INSERT INTO player (First_Name, Last_Name, Position_ID, Team_ID, Age, Country_ID) VALUES
('Jon', 'Galaxy', 1, 5, 29, 'USA'),
('Ben', 'Star', 2, 5, 26, 'DOM'),
('Ryan', 'Nebula', 3, 5, 28, 'CUB'),
('Ethan', 'Stellar', 4, 5, 30, 'VEN'),
('David', 'Nova', 5, 5, 27, 'JPN'),
('Tyson', 'Orbit', 6, 5, 24, 'MEX'),
('Kyle', 'Comet', 7, 5, 25, 'CAN'),
('Chris', 'Meteor', 8, 5, 23, 'KOR'),
('Zach', 'Astro', 9, 5, 27, 'PUR'),
('Eli', 'Eclipse', 1, 5, 28, 'BRA'),
('Matt', 'Lunar', 2, 5, 29, 'GER');

-- Team 6: Echo Rangers
INSERT INTO player (First_Name, Last_Name, Position_ID, Team_ID, Age, Country_ID) VALUES
('Eli', 'Echo', 1, 6, 26, 'KOR'),
('Ben', 'Ranger', 2, 6, 29, 'CUB'),
('Tyson', 'Signal', 3, 6, 27, 'GER'),
('Zach', 'Whisper', 4, 6, 30, 'MEX'),
('Kyle', 'Sound', 5, 6, 24, 'JPN'),
('Matt', 'Wave', 6, 6, 25, 'PUR'),
('David', 'Pulse', 7, 6, 28, 'USA'),
('Chris', 'Harmonic', 8, 6, 23, 'CAN'),
('Ryan', 'Resonance', 9, 6, 29, 'VEN'),
('Jon', 'Vibe', 3, 6, 28, 'DOM'),
('Tyler', 'Tuning', 2, 6, 27, 'BRA');

-- Team 7: Zenith Flyers
INSERT INTO player (First_Name, Last_Name, Position_ID, Team_ID, Age, Country_ID) VALUES
('Matt', 'Zenith', 1, 7, 27, 'USA'),
('David', 'Flyer', 2, 7, 26, 'CAN'),
('Ryan', 'Aero', 3, 7, 28, 'ARG'),
('Tyson', 'Skyrider', 4, 7, 30, 'MEX'),
('Eli', 'Altitude', 5, 7, 25, 'PUR'),
('Kyle', 'Wing', 6, 7, 23, 'JPN'),
('Jon', 'Jetstream', 7, 7, 29, 'KOR'),
('Ben', 'Propel', 8, 7, 28, 'CUB'),
('Zach', 'Glide', 9, 7, 24, 'VEN'),
('Tyler', 'Lift', 3, 7, 27, 'BRA'),
('Chris', 'Cloud', 2, 7, 26, 'DOM');

-- Team 8: Knights
INSERT INTO player (First_Name, Last_Name, Position_ID, Team_ID, Age, Country_ID) VALUES
('Tyler', 'Knight', 1, 8, 28, 'USA'),
('Matt', 'Sword', 2, 8, 26, 'CUB'),
('Ben', 'Shield', 3, 8, 30, 'GER'),
('Eli', 'Castle', 4, 8, 25, 'VEN'),
('David', 'Lance', 5, 8, 29, 'MEX'),
('Kyle', 'Armor', 6, 8, 24, 'KOR'),
('Jon', 'Valor', 7, 8, 27, 'PUR'),
('Ryan', 'Crest', 8, 8, 23, 'BRA'),
('Zach', 'Paladin', 9, 8, 26, 'DOM'),
('Chris', 'Quest', 3, 8, 27, 'CAN'),
('Tyson', 'Joust', 2, 8, 28, 'GBR');

-- Team 9: Blaze Hounds
INSERT INTO player (First_Name, Last_Name, Position_ID, Team_ID, Age, Country_ID) VALUES
('Jon', 'Blaze', 1, 9, 27, 'USA'),
('David', 'Hound', 2, 9, 26, 'KOR'),
('Ryan', 'Inferno', 3, 9, 29, 'BRA'),
('Matt', 'Flame', 4, 9, 25, 'VEN'),
('Ben', 'Ash', 5, 9, 28, 'JPN'),
('Tyler', 'Ember', 6, 9, 24, 'CUB'),
('Eli', 'Scorch', 7, 9, 23, 'MEX'),
('Chris', 'Blaze', 8, 9, 30, 'ARG'),
('Zach', 'Cinder', 9, 9, 26, 'PUR'),
('Kyle', 'Torch', 3, 9, 28, 'DOM'),
('Tyson', 'Sear', 2, 9, 27, 'GBR');

-- Team 10: Starlight Spirits
INSERT INTO player (First_Name, Last_Name, Position_ID, Team_ID, Age, Country_ID) VALUES
('Eli', 'Star', 1, 10, 25, 'USA'),
('Jon', 'Moon', 2, 10, 28, 'CAN'),
('Chris', 'Nebula', 3, 10, 27, 'MEX'),
('Tyson', 'Comet', 4, 10, 29, 'VEN'),
('Zach', 'Glow', 5, 10, 30, 'JPN'),
('Ryan', 'Radiance', 6, 10, 24, 'PUR'),
('Ben', 'Lunar', 7, 10, 28, 'BRA'),
('David', 'Glare', 8, 10, 23, 'KOR'),
('Kyle', 'Twilight', 9, 10, 26, 'DOM'),
('Matt', 'Eclipse', 1, 10, 27, 'ARG'),
('Tyler', 'Solar', 2, 10, 29, 'GBR');

-- Team 11: Cobalt Chargers
INSERT INTO player (First_Name, Last_Name, Position_ID, Team_ID, Age, Country_ID) VALUES
('Chris', 'Cobalt', 1, 11, 28, 'USA'),
('Ben', 'Charge', 2, 11, 26, 'DOM'),
('Tyson', 'Volt', 3, 11, 30, 'CUB'),
('Jon', 'Shock', 4, 11, 27, 'VEN'),
('David', 'Current', 5, 11, 29, 'JPN'),
('Ryan', 'Surge', 6, 11, 25, 'MEX'),
('Eli', 'Power', 7, 11, 24, 'CAN'),
('Matt', 'Watt', 8, 11, 28, 'KOR'),
('Zach', 'Flash', 9, 11, 27, 'PUR'),
('Kyle', 'Spark', 3, 11, 26, 'ARG'),
('Tyler', 'Electric', 2, 11, 28, 'GER');

-- Team 12: Ember Dragons
INSERT INTO player (First_Name, Last_Name, Position_ID, Team_ID, Age, Country_ID) VALUES
('David', 'Ember', 1, 12, 27, 'USA'),
('Jon', 'Dragon', 2, 12, 29, 'DOM'),
('Matt', 'Blaze', 3, 12, 28, 'CUB'),
('Ryan', 'Firestorm', 4, 12, 26, 'VEN'),
('Tyson', 'Inferno', 5, 12, 30, 'JPN'),
('Zach', 'Fury', 6, 12, 24, 'MEX'),
('Ben', 'Cinder', 7, 12, 25, 'CAN'),
('Kyle', 'Ash', 8, 12, 23, 'KOR'),
('Eli', 'Scorch', 9, 12, 27, 'PUR'),
('Tyler', 'Smoke', 3, 12, 28, 'BRA'),
('Chris', 'Flare', 2, 12, 26, 'GBR');

-- Team 13: Rogue Pirates
INSERT INTO player (First_Name, Last_Name, Position_ID, Team_ID, Age, Country_ID) VALUES
('Ryan', 'Rogue', 1, 13, 26, 'USA'),
('Zach', 'Pirate', 2, 13, 29, 'DOM'),
('Matt', 'Scallywag', 3, 13, 28, 'CUB'),
('Ben', 'Corsair', 4, 13, 27, 'VEN'),
('Tyson', 'Swashbuckler', 5, 13, 30, 'JPN'),
('Chris', 'Buccaneer', 6, 13, 24, 'MEX'),
('Kyle', 'Privateer', 7, 13, 25, 'CAN'),
('Eli', 'Captain', 8, 13, 23, 'KOR'),
('Jon', 'Raider', 9, 13, 27, 'PUR'),
('David', 'Plunder', 3, 13, 28, 'BRA'),
('Tyler', 'Sloop', 2, 13, 26, 'GBR');

-- Team 14: Ironclad Sentinels
INSERT INTO player (First_Name, Last_Name, Position_ID, Team_ID, Age, Country_ID) VALUES
('Matt', 'Ironclad', 1, 14, 28, 'USA'),
('Jon', 'Sentinel', 2, 14, 26, 'DOM'),
('Ryan', 'Steel', 3, 14, 29, 'CUB'),
('Zach', 'Guard', 4, 14, 27, 'VEN'),
('Ben', 'Defender', 5, 14, 30, 'JPN'),
('Kyle', 'Titan', 6, 14, 24, 'MEX'),
('Tyson', 'Shield', 7, 14, 25, 'CAN'),
('David', 'Wall', 8, 14, 23, 'KOR'),
('Chris', 'Barrier', 9, 14, 26, 'PUR'),
('Eli', 'Fortress', 3, 14, 28, 'BRA'),
('Tyler', 'Bastion', 2, 14, 27, 'GBR');

-- Team 15: Solstice Suns
INSERT INTO player (First_Name, Last_Name, Position_ID, Team_ID, Age, Country_ID) VALUES
('Tyler', 'Solstice', 1, 15, 27, 'USA'),
('Matt', 'Sundown', 2, 15, 29, 'DOM'),
('Ryan', 'Solaris', 3, 15, 28, 'CUB'),
('Jon', 'Daylight', 4, 15, 26, 'VEN'),
('Zach', 'Equinox', 5, 15, 30, 'JPN'),
('Chris', 'Helios', 6, 15, 24, 'MEX'),
('Kyle', 'Sunbeam', 7, 15, 25, 'CAN'),
('Eli', 'Radiance', 8, 15, 23, 'KOR'),
('Ben', 'Twilight', 9, 15, 27, 'PUR'),
('Tyson', 'Dawn', 3, 15, 28, 'BRA'),
('David', 'Zenith', 2, 15, 26, 'GBR');

-- Team 16: Vortex Vipers
INSERT INTO player (First_Name, Last_Name, Position_ID, Team_ID, Age, Country_ID) VALUES
('Jon', 'Vortex', 1, 16, 28, 'USA'),
('Chris', 'Viper', 2, 16, 26, 'DOM'),
('Tyler', 'Whirlwind', 3, 16, 30, 'CUB'),
('Ryan', 'Cyclone', 4, 16, 27, 'VEN'),
('Ben', 'Tempest', 5, 16, 29, 'JPN'),
('Zach', 'Storm', 6, 16, 24, 'MEX'),
('Matt', 'Tornado', 7, 16, 25, 'CAN'),
('Kyle', 'Gale', 8, 16, 23, 'KOR'),
('Eli', 'Twister', 9, 16, 27, 'BRA'),
('David', 'Breeze', 3, 16, 28, 'ARG'),
('Tyson', 'Gust', 2, 16, 26, 'COL');

-- Team 17: Tempest Titans
INSERT INTO player (First_Name, Last_Name, Position_ID, Team_ID, Age, Country_ID) VALUES
('Tyson', 'Tempest', 1, 17, 28, 'USA'),
('Matt', 'Titan', 2, 17, 30, 'DOM'),
('Jon', 'Thunder', 3, 17, 27, 'CUB'),
('Zach', 'Lightning', 4, 17, 29, 'VEN'),
('Chris', 'Storm', 5, 17, 25, 'JPN'),
('Ben', 'Zephyr', 6, 17, 24, 'MEX'),
('Kyle', 'Cyclone', 7, 17, 28, 'CAN'),
('David', 'Volt', 8, 17, 23, 'KOR'),
('Ryan', 'Stratus', 9, 17, 27, 'PER'),
('Eli', 'Squall', 3, 17, 26, 'PUR'),
('Tyler', 'Hurricane', 2, 17, 27, 'CHL');

-- Team 18: Quasar Comets
INSERT INTO player (First_Name, Last_Name, Position_ID, Team_ID, Age, Country_ID) VALUES
('Zach', 'Quasar', 1, 18, 26, 'USA'),
('Jon', 'Comet', 2, 18, 29, 'DOM'),
('Chris', 'Meteor', 3, 18, 28, 'CUB'),
('Ben', 'Star', 4, 18, 27, 'VEN'),
('Tyler', 'Nebula', 5, 18, 30, 'JPN'),
('Eli', 'Astro', 6, 18, 25, 'MEX'),
('David', 'Orbit', 7, 18, 24, 'CAN'),
('Ryan', 'Cosmos', 8, 18, 23, 'KOR'),
('Kyle', 'Lunar', 9, 18, 27, 'COL'),
('Matt', 'Galaxy', 3, 18, 26, 'ITA'),
('Tyson', 'Nova', 2, 18, 28, 'ESP');

-- Team 19: Eclipse Phantoms
INSERT INTO player (First_Name, Last_Name, Position_ID, Team_ID, Age, Country_ID) VALUES
('Chris', 'Eclipse', 1, 19, 27, 'USA'),
('Tyler', 'Shadow', 2, 19, 29, 'DOM'),
('Ben', 'Specter', 3, 19, 26, 'CUB'),
('Jon', 'Phantom', 4, 19, 28, 'VEN'),
('Zach', 'Ghost', 5, 19, 30, 'JPN'),
('Ryan', 'Wraith', 6, 19, 25, 'MEX'),
('Matt', 'Apparition', 7, 19, 24, 'CAN'),
('David', 'Vanish', 8, 19, 23, 'KOR'),
('Kyle', 'Shade', 9, 19, 27, 'BRA'),
('Tyson', 'Specter', 3, 19, 26, 'ARG'),
('Eli', 'Haunt', 2, 19, 28, 'GBR');

-- Team 20: Pinnacle Panthers
INSERT INTO player (First_Name, Last_Name, Position_ID, Team_ID, Age, Country_ID) VALUES
('Tyler', 'Pinnacle', 1, 20, 27, 'USA'),
('Matt', 'Climb', 2, 20, 29, 'DOM'),
('Zach', 'Summit', 3, 20, 30, 'CUB'),
('Ryan', 'Peak', 4, 20, 28, 'VEN'),
('Ben', 'Altitude', 5, 20, 26, 'JPN'),
('Jon', 'Ascent', 6, 20, 25, 'MEX'),
('Kyle', 'Crest', 7, 20, 24, 'CAN'),
('Chris', 'Range', 8, 20, 23, 'KOR'),
('David', 'Horizon', 9, 20, 27, 'PUR'),
('Eli', 'Ridge', 3, 20, 28, 'ARG'),
('Tyson', 'Valley', 2, 20, 27, 'COL');

-- Team 21: Majestic Moons
INSERT INTO player (First_Name, Last_Name, Position_ID, Team_ID, Age, Country_ID) VALUES
('Chris', 'Lunar', 1, 21, 27, 'USA'),
('Tyler', 'Moon', 2, 21, 29, 'DOM'),
('Ben', 'Orbit', 3, 21, 28, 'CUB'),
('Jon', 'Crater', 4, 21, 26, 'VEN'),
('Zach', 'Eclipse', 5, 21, 30, 'JPN'),
('Kyle', 'Galaxy', 6, 21, 25, 'MEX'),
('David', 'Astral', 7, 21, 24, 'CAN'),
('Ryan', 'Meteor', 8, 21, 23, 'KOR'),
('Matt', 'Stellar', 9, 21, 27, 'PUR'),
('Tyson', 'Celestial', 3, 21, 26, 'ARG'),
('Eli', 'Comet', 2, 21, 28, 'ITA');

-- Team 22: Aether Hawks
INSERT INTO player (First_Name, Last_Name, Position_ID, Team_ID, Age, Country_ID) VALUES
('Tyler', 'Aether', 1, 22, 28, 'USA'),
('Matt', 'Hawk', 2, 22, 29, 'DOM'),
('Zach', 'Zephyr', 3, 22, 30, 'CUB'),
('Jon', 'Breeze', 4, 22, 27, 'VEN'),
('Ryan', 'Gale', 5, 22, 25, 'JPN'),
('Ben', 'Storm', 6, 22, 24, 'MEX'),
('Kyle', 'Wind', 7, 22, 28, 'CAN'),
('David', 'Cumulus', 8, 22, 23, 'KOR'),
('Chris', 'Nimbus', 9, 22, 27, 'BRA'),
('Eli', 'Stratus', 3, 22, 26, 'ARG'),
('Tyson', 'Vortex', 2, 22, 27, 'CHL');

-- Team 23: Mirage Mystics
INSERT INTO player (First_Name, Last_Name, Position_ID, Team_ID, Age, Country_ID) VALUES
('Ryan', 'Mirage', 1, 23, 27, 'USA'),
('Tyson', 'Mystic', 2, 23, 29, 'DOM'),
('Zach', 'Phantom', 3, 23, 28, 'CUB'),
('Ben', 'Shade', 4, 23, 26, 'VEN'),
('Kyle', 'Illusion', 5, 23, 30, 'JPN'),
('David', 'Glimmer', 6, 23, 25, 'MEX'),
('Chris', 'Specter', 7, 23, 24, 'CAN'),
('Eli', 'Flicker', 8, 23, 23, 'KOR'),
('Matt', 'Vanish', 9, 23, 27, 'BRA'),
('Jon', 'Shadow', 3, 23, 26, 'ARG'),
('Tyler', 'Mirage', 2, 23, 28, 'ESP');

-- Team 24: Tornado Trailblazers
INSERT INTO player (First_Name, Last_Name, Position_ID, Team_ID, Age, Country_ID) VALUES
('Zach', 'Tornado', 1, 24, 28, 'USA'),
('Ryan', 'Trail', 2, 24, 30, 'DOM'),
('Jon', 'Whirlwind', 3, 24, 27, 'CUB'),
('Chris', 'Cyclone', 4, 24, 29, 'VEN'),
('Tyler', 'Twister', 5, 24, 25, 'JPN'),
('Matt', 'Storm', 6, 24, 24, 'MEX'),
('David', 'Hurricane', 7, 24, 28, 'CAN'),
('Kyle', 'Vortex', 8, 24, 23, 'KOR'),
('Eli', 'Gale', 9, 24, 27, 'BRA'),
('Ben', 'Zephyr', 3, 24, 26, 'ARG'),
('Tyson', 'Whirl', 2, 24, 27, 'COL');

-- Team 25: Vigilant Valkyries
INSERT INTO player (First_Name, Last_Name, Position_ID, Team_ID, Age, Country_ID) VALUES
('Tyler', 'Valkyrie', 1, 25, 27, 'USA'),
('Matt', 'Vigilant', 2, 25, 29, 'ARG'),
('Ryan', 'Guardian', 3, 25, 28, 'CUB'),
('Ben', 'Protector', 4, 25, 26, 'VEN'),
('Jon', 'Sentinel', 5, 25, 30, 'JPN'),
('Zach', 'Defender', 6, 25, 25, 'MEX'),
('David', 'Sentry', 7, 25, 24, 'CAN'),
('Kyle', 'Watch', 8, 25, 23, 'KOR'),
('Chris', 'Warden', 9, 25, 27, 'PUR'),
('Eli', 'Patrol', 3, 25, 26, 'BRA'),
('Tyson', 'Shield', 2, 25, 28, 'AUS');

-- Team 26: Skyward Soarers
INSERT INTO player (First_Name, Last_Name, Position_ID, Team_ID, Age, Country_ID) VALUES
('Ben', 'Skyward', 1, 26, 27, 'USA'),
('Kyle', 'Soar', 2, 26, 29, 'COL'),
('David', 'Flyer', 3, 26, 28, 'CHN'),
('Jon', 'Altitude', 4, 26, 26, 'VEN'),
('Chris', 'Wings', 5, 26, 30, 'JPN'),
('Tyler', 'Cloud', 6, 26, 25, 'MEX'),
('Ryan', 'Glide', 7, 26, 24, 'CAN'),
('Matt', 'Lift', 8, 26, 23, 'KOR'),
('Eli', 'Zephyr', 9, 26, 27, 'PUR'),
('Ben', 'Drift', 3, 26, 26, 'BRA'),
('Tyson', 'Horizon', 2, 26, 28, 'FIN');

-- Team 27: Titanium Blizzards
INSERT INTO player (First_Name, Last_Name, Position_ID, Team_ID, Age, Country_ID) VALUES
('Ryan', 'Titanium', 1, 27, 28, 'USA'),
('Zach', 'Blizzard', 2, 27, 29, 'DOM'),
('Jon', 'Storm', 3, 27, 27, 'CUB'),
('Chris', 'Snow', 4, 27, 30, 'ARG'),
('Matt', 'Ice', 5, 27, 26, 'JPN'),
('Kyle', 'Frost', 6, 27, 25, 'MEX'),
('David', 'Hail', 7, 27, 24, 'CAN'),
('Eli', 'Flurry', 8, 27, 23, 'NZL'),
('Tyson', 'Drift', 9, 27, 27, 'PUR'),
('Ben', 'Chill', 3, 27, 26, 'BRA'),
('Tyler', 'Glacier', 2, 27, 28, 'SWE');

-- Team 28: Infinity Navigators
INSERT INTO player (First_Name, Last_Name, Position_ID, Team_ID, Age, Country_ID) VALUES
('Tyson', 'Infinity', 1, 28, 27, 'USA'),
('Ryan', 'Navigator', 2, 28, 29, 'DOM'),
('Zach', 'Horizon', 3, 28, 28, 'CUB'),
('Kyle', 'Compass', 4, 28, 26, 'VEN'),
('Jon', 'Direction', 5, 28, 30, 'JPN'),
('Ben', 'Pathfinder', 6, 28, 25, 'MEX'),
('David', 'Star', 7, 28, 24, 'CAN'),
('Matt', 'Trajectory', 8, 28, 23, 'KOR'),
('Chris', 'Vector', 9, 28, 27, 'PUR'),
('Eli', 'Map', 3, 28, 26, 'BRA'),
('Tyler', 'Orbit', 2, 28, 28, 'POL');

-- Team 29: Iron Thunder
INSERT INTO player (First_Name, Last_Name, Position_ID, Team_ID, Age, Country_ID) VALUES
('Ben', 'Ironclad', 1, 29, 27, 'USA'),
('Kyle', 'Thunder', 2, 29, 29, 'DOM'),
('David', 'Forge', 3, 29, 28, 'CHN'),
('Jon', 'Bolt', 4, 29, 26, 'VEN'),
('Tyson', 'Spark', 5, 29, 30, 'JPN'),
('Chris', 'Storm', 6, 29, 25, 'MEX'),
('Zach', 'Power', 7, 29, 24, 'CAN'),
('Ryan', 'Flash', 8, 29, 23, 'KOR'),
('Matt', 'Surge', 9, 29, 27, 'PUR'),
('Eli', 'Charge', 3, 29, 26, 'BRA'),
('Tyler', 'Current', 2, 29, 28, 'NOR');

-- Team 30: Radiant Royals
INSERT INTO player (First_Name, Last_Name, Position_ID, Team_ID, Age, Country_ID) VALUES
('Chris', 'Radiant', 1, 30, 27, 'USA'),
('Ben', 'Royal', 2, 30, 29, 'DOM'),
('Zach', 'Majesty', 3, 30, 28, 'GBR'),
('Tyson', 'Sovereign', 4, 30, 26, 'VEN'),
('Ryan', 'Regal', 5, 30, 30, 'JPN'),
('Matt', 'Noble', 6, 30, 25, 'MEX'),
('Jon', 'King', 7, 30, 24, 'CAN'),
('Kyle', 'Crown', 8, 30, 23, 'KOR'),
('David', 'Throne', 9, 30, 27, 'PUR'),
('Eli', 'Emperor', 3, 30, 26, 'BRA'),
('Tyler', 'Empress', 2, 30, 28, 'ITA');

-- 60 Free Agent Players with no team (NULL)
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
