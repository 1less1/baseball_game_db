USE baseball_game_db;

-- Inserting the top 100 countries player's report as their origin in the MLB
INSERT INTO countries (Country_ID, Country_Name) VALUES
('USA', 'United States'),
('DOM', 'Dominican Republic'),
('CUB', 'Cuba'),
('VEN', 'Venezuela'),
('JPN', 'Japan'),
('MEX', 'Mexico'),
('CAN', 'Canada'),
('KOR', 'South Korea'),
('PUR', 'Puerto Rico'),
('PAN', 'Panama'),
('COL', 'Colombia'),
('AUS', 'Australia'),
('NED', 'Netherlands'),
('TPE', 'Chinese Taipei (Taiwan)'),
('ITA', 'Italy'),
('BRA', 'Brazil'),
('NIC', 'Nicaragua'),
('ESP', 'Spain'),
('HON', 'Honduras'),
('GUY', 'Guyana'),
('PHI', 'Philippines'),
('THA', 'Thailand'),
('CHN', 'China'),
('RSA', 'South Africa'),
('GER', 'Germany'),
('ISR', 'Israel'),
('GBR', 'United Kingdom'),
('CZE', 'Czech Republic'),
('ARG', 'Argentina'),
('CHL', 'Chile'),
('SUI', 'Switzerland'),
('SWE', 'Sweden'),
('NOR', 'Norway'),
('DEN', 'Denmark'),
('BEL', 'Belgium'),
('AUT', 'Austria'),
('FIN', 'Finland'),
('IRL', 'Ireland'),
('POL', 'Poland'),
('HUN', 'Hungary'),
('GUA', 'Guatemala'),
('ECU', 'Ecuador'),
('PER', 'Peru'),
('URY', 'Uruguay'),
('PAR', 'Paraguay'),
('BOL', 'Bolivia'),
('CRI', 'Costa Rica'),
('SLV', 'El Salvador'),
('JAM', 'Jamaica'),
('HTI', 'Haiti'),
('TTO', 'Trinidad and Tobago'),
('BAR', 'Barbados'),
('CRO', 'Croatia'),
('SRB', 'Serbia'),
('ROU', 'Romania'),
('BGR', 'Bulgaria'),
('GRC', 'Greece'),
('MLT', 'Malta'),
('EGY', 'Egypt'),
('TUN', 'Tunisia'),
('MAR', 'Morocco'),
('ALG', 'Algeria'),
('NGA', 'Nigeria'),
('KEN', 'Kenya'),
('UGA', 'Uganda'),
('TAN', 'Tanzania'),
('ETH', 'Ethiopia'),
('ZAF', 'Zimbabwe'),
('ANG', 'Angola'),
('CMR', 'Cameroon'),
('GHA', 'Ghana'),
('SEN', 'Senegal'),
('RUS', 'Russia'),
('UKR', 'Ukraine'),
('BLR', 'Belarus'),
('KAZ', 'Kazakhstan'),
('UZB', 'Uzbekistan'),
('TUR', 'Turkey'),
('IND', 'India'),
('PAK', 'Pakistan'),
('BGD', 'Bangladesh'),
('IDN', 'Indonesia'),
('MYS', 'Malaysia'),
('VNM', 'Vietnam'),
('SGP', 'Singapore'),
('LKA', 'Sri Lanka'),
('NZL', 'New Zealand'),
('PNG', 'Papua New Guinea'),
('FJI', 'Fiji'),
('SAM', 'Samoa'),
('TGA', 'Tonga'),
('VUT', 'Vanuatu'),
('KIR', 'Kiribati'),
('FSM', 'Micronesia'),
('PLW', 'Palau'),
('NRU', 'Nauru'),
('MHL', 'Marshall Islands'),
('SLB', 'Solomon Islands'),
('TLS', 'Timor-Leste'),
('FRA', 'France');

SELECT * FROM Countries WHERE Country_ID LIKE 'C%';