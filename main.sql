-- Hill Climb Racing 2 Adventure World Records database 

-- TABLE CREATION 

DROP TABLE IF EXISTS WorldRecord;
DROP TABLE IF EXISTS Player;
DROP TABLE IF EXISTS Vehicle;
DROP TABLE IF EXISTS Map;


CREATE TABLE Player(
    idPlayer INT PRIMARY KEY,
    namePlayer TEXT NOT NULL,
    country TEXT
);

CREATE TABLE Vehicle(
    idVehicle INT PRIMARY KEY,
    nameVehicle TEXT NOT NULL UNIQUE
);


CREATE TABLE Map(
    idMap INT PRIMARY KEY,
    nameMap TEXT NOT NULL UNIQUE,
    special TINYINT NOT NULL 
    CHECK (special == 0 or special == 1)
);

CREATE TABLE WorldRecord(
    idMap INT,
    idVehicle INT,
    idPlayer INT NOT NULL,
    distance INT NOT NULL,
    mastery TINYINT NOT NULL
    PRIMARY KEY (idVehicle, idMap, mastery),
    FOREIGN KEY (idVehicle) REFERENCES Vehicle(idVehicle),
    FOREIGN KEY (idMap) REFERENCES Map(idMap),
    FOREIGN KEY (idPlayer) REFERENCES Player(idPlayer),
    CHECK (distance > 0)
    CHECK (mastery == 0 or mastery == 1)
);

-- DATA INSERTION 

INSERT INTO Vehicle VALUES
(1, 'Hill Climber'),
(2, 'Scooter'),
(3, 'Bus'),
(4, 'Hill Climber Mk2'),
(5, 'Tractor'),
(6, 'Motocross'),
(7, 'Dune Buggy'),
(8, 'Sports Car'),
(9, 'Monster Truck'),
(10, 'Rock Bouncer'),
(11, 'Rotator'),
(12, 'Super Diesel'),
(13, 'Chopper'),
(14, 'Tank'),
(15, 'Snowmobile'),
(16, 'Hoverbike'),
(17, 'Lowrider'),
(18, 'Beast'),
(19, 'Monowheel'),
(20, 'Rally Car'),
(21, 'Raider'),
(22, 'Formula'),
(23, 'Muscle Car'),
(24, 'Racing Truck'),
(25, 'Hotrod'),
(26, 'CC-EV'),
(27, 'Glider'),
(28, 'Superbike'),
(29, 'Supercar'),
(30, 'Moonlander'),
(31, 'Bolt');


INSERT INTO Player VALUES
(0, '___','___'),
(1, 'Zorro', 'Germany'),
(2, 'Kosbow', 'Russia'),
(3, 'Illka', 'Russia'),
(4, 'HCR2GUY', 'Norway'),
(5, 'Lucas', 'France'),
(6, 'DaBell', 'Australia'),
(7, 'Crash77', 'USA'),
(8, 'Feifei', 'China'),
(9, 'Bir Insan', 'Turkiye'),
(10, 'Ndwg', 'New Zealand'),
(11, 'lpg', 'Brazil'),
(12, 'JumboVisma', 'Slovenia'),
(13, 'Cute', 'Germany'),
(14, 'MaxiGaming', 'Argentina'),
(15, 'Nasa PC', 'USA'),
(16, 'FunkyFries', 'New Zealand'),
(17, 'El Chiquitin', 'Argentina'),
(18, 'Zeus', 'Belgium'),
(19, 'Markus', 'Austria'),
(20, 'Sabeer', 'USA'),
(21, 'Raiden', 'Austria'),
(22, 'DanioDuck', 'Netherlands'),
(23, 'Delta', 'Romania'),
(24, 'Kacp', 'Poland'),
(25, 'Chip', 'France'),
(26, 'Djokovic','Serbia'),
(27, 'Plazma','Serbia'),
(28, 'Lebest','France'),
(29, 'Zium', 'Poland'),
(30, 'Jemo', 'USA'),
(31, 'Adam', 'Algeria'),
(32, 'Isalriz', 'Sweden'),
(33, 'PetrosG', 'Greece'),
(34, 'Krecek', 'Czechia'),
(35, 'Patbrick','UK'),
(36, 'Hedgehog','UK'),
(37, 'Happy', 'Poland'),
(38, 'Toast', 'Australia'),
(39, 'Mujigae', 'Russia'),
(40, 'ZoroxVN', 'Vietnam'),
(41, 'BadAtHcr', 'Netherlands'),
(42, 'Carlos', 'Brazil'),
(43, 'Pgy', 'China'),
(44, 'MonoVictor', 'Ireland'),
(45, 'Sporty', 'Russia'),
(46, 'Miksu', 'Finland'),
(47, 'Bomber', 'Finland'),
(48, 'TGM', 'UK'),
(49, 'Volic', 'Poland'),
(50, 'BlackyNeko', 'Indonesia'),
(51, 'Synix', 'France'),
(52, 'Pikachu', 'Poland'),
(53, 'Nikis', 'Finland'),
(54, 'Levi', 'Ukraine'),
(55, 'DAJ', 'USA'),
(56, 'Tobisus', 'Ireland'),
(57, 'DrFläsk', 'Sweden'),
(58, 'Narvik-Berra',  'Sweden'),
(59, 'Cobus', 'Netherlands'),
(60, 'ZombiX', 'Poland'),
(61, 'SebiStein', 'Romania'),
(62, 'Racer60604', 'Romania'),
(63, 'Bimi', 'Albania'),
(64, 'rocket guy', 'USA'),
(65, 'DaGoat', 'Russia'),
(66, 'NaturalWinner', 'China'),
(67, 'Gusgus', 'USA'),
(68, 'Lega', 'Ukraine'),
(69, 'AnonimChik', 'Russia'),
(70, 'XvGG', 'Malaysia'),
(71, 'Celsius', 'Romania'),
(72, 'Dusty', 'Canada'),
(73, 'Can Tapanç', 'Turkiye'),
(74, 'Gazou', 'France'),
(75, 'Treky', 'Australia'),
(76, 'Bucke jr', 'USA'),
(77, 'Hyped', 'New Zealand'),
(78, 'Amiguim', 'Brazil'),
(79, 'Chili', 'USA'),
(80, 'Eric', 'Germany'),
(81, 'Mapleshade', 'Sweden'),
(82, 'Dubstep', 'Russia'),
(83, 'Yonatanking', 'Israel'),
(84, 'Referee', 'Serbia'),
(85, 'Raking', 'Russia'),
(86, 'SteenDeSten', 'Netherlands'),
(87, 'SS', 'Estonia'),
(88, 'Gamerbro44', 'Canada'),
(89, 'V2V4', 'France'),
(90, 'Rocket', 'UK'),
(91, 'Nevnev', 'Switzerland'),
(92, 'Jeda', 'Netherlands'),
(93, 'Atlas', 'USA'),
(94, 'Lil Shapi', 'Latvia'),
(95, 'TocaADR', 'Philippines'),
(96, 'DinklySquink', 'UK'),
(97, 'Yanix', 'Russia'),
(98, 'Linus', 'Germany'),
(99, 'MJD', 'Syria'),
(100, 'Chinese Version', 'China'),
(101, 'TryWR', 'Germany'),
(102, 'Arnaud', 'Canada'),
(103, 'Michi2', 'Germany'),
(104, 'Lyewaz', 'France'),
(105, 'Yazi', 'USA'),
(106, 'BotLogic', 'Russia'),
(107, 'Cyan Skull', 'Brazil'),
(108, 'Evenub', 'Australia'),
(109, 'Danya', 'Ukraine'),
(110, 'Brrr', 'Ukraine'),
(111, 'Temu Cute', 'China'),
(112, 'lucas64', 'France'),
(113, 'Lore', 'Italy'),
(114, 'Nakkibiilo', 'Finland'),
(115, 'GEN', 'Germany'),
(116, 'Omega', 'Poland'),
(117, 'Blake', 'Australia'),
(118, 'Mushroom', 'Russia'),
(119, 'Kuba', 'Poland'),
(120, 'Joplin', 'USA'),
(121, 'Zoda', 'Belgium'),
(122, 'Humood', 'Saudi Arabia'),
(123, 'Yoyo14', 'France'),
(124, 'Puma', 'Austria'),
(125, 'Vereshchak', 'Ukraine'),
(126, 'Rico', 'UK'),
(127, 'Rolo', 'Hungary'),
(128, 'Rick Tripledick', 'USA'),
(129, 'Speed Michi', 'Austria'),
(130, 'Element', 'Australia'),
(131, 'Kuba', 'Poland'),
(132, '3XTR3M3', 'Poland'),
(133, 'Oscar', 'USA'),
(134, 'Peace', 'Czech Republic'),
(135, 'Fisch HCR2', 'Germany');

INSERT INTO Map VALUES 
(1, 'Countryside', 0), 
(2, 'Forest', 0), 
(3, 'City', 0), 
(4, 'Mountain', 0), 
(5, 'Rustbucket Reef', 0), 
(6, 'Winter', 0), 
(7, 'Mines', 0), 
(8, 'Desert Valley', 0), 
(9, 'Beach', 0), 
(10, 'Backwater Bog', 0), 
(11, 'Racer Glacier', 0), 
(12, 'Patchwork Plant', 0), 
(13, 'Switchback Savannah', 0), 
(14, 'Gloomvale', 0), 
(15, 'Overspill Fun Rig',0), 
(16, 'Canyon Arena', 0), 
(17, 'Cuptown', 0), 
(18, 'Sky Rock Outpost', 0), 
(19, 'Forest Trials', 1), 
(20, 'Intense City', 1),
(21, 'Raging Winter', 1); 

INSERT INTO WorldRecord VALUES 

--countryside 
(1, 1, 6, 15351,1), 
(1, 2, 6, 15374,1), 
(1, 3, 6, 17515,1), 
(1, 4, 1, 12082,1), 
(1, 5, 6, 17517,1), 
(1, 6, 6, 15385,1), 
(1, 7, 15, 14047,1), 
(1, 8, 6, 15362,1), 
(1, 9, 6, 15386,1), 
(1, 10, 6, 15349,1), 
(1, 11, 6, 11527,1), 
(1, 12, 6, 16771,1), 
(1, 13, 6, 20413,1), 
(1, 14, 33, 17516,1), 
(1, 15, 1, 12150,1), 
(1, 16, 36, 13604,1), 
(1, 17, 6, 12677,1), 
(1, 18, 24, 11875,1), 
(1, 19, 6, 10272,1), 
(1, 20, 15, 15867,1), 
(1, 21, 6, 14692,1), 
(1, 22, 6, 13348,1), 
(1, 23, 15, 14680,1), 
(1, 24, 24, 18975,1), 
(1, 25, 6, 8631,1), 
(1, 26, 15, 15375,1), 
(1, 27, 64, 28325,1), 
(1, 28, 11, 9584,1), 
(1, 29, 6, 9695,1), 
(1, 30, 6, 7696,1), 
(1, 31, 6, 14690,1),

--forest
(2, 1, 126, 40064,1), 
(2, 2, 30, 40248,1), 
(2, 3, 113, 40236,1), 
(2, 4, 50, 36785,1),
(2, 5, 86, 38538),
(2, 6, 30, 56881,1), 
(2, 7, 1, 38555,1), 
(2, 8, 2, 42719,1), 
(2, 9, 3, 39512,1),
(2, 10, 1, 40235,1), 
(2, 11, 19, 32151,1), 
(2, 12, 2, 52026,1), 
(2, 13, 70, 46369,1),
(2, 14, 70, 43737,1),
(2, 15, 4, 32150,1),
(2, 16, 36, 33682,1), 
(2, 17, 116, 29920,1),
(2, 18, 14, 18001,1), 
(2, 19, 134, 22323),
(2, 20, 64, 61212,1),
(2, 21, 70, 47346,1), 
(2, 22, 14, 25577,1), 
(2, 23, 2, 49188,1), 
(2, 24, 64, 50160,1),
(2, 25, 102, 18552,1),
(2, 26, 63, 89054,1),
(2, 27, 64, 134763,1), 
(2, 28, 74, 18608,1),
(2, 29, 2, 22218,1), 
(2, 30, 67, 19789,1),
(2, 31, 0, 25613,1),

--city
(3, 1, 3, 21747,1), 
(3, 2, 3, 25373,1), 
(3, 3, 21, 28896,1), 
(3, 4, 13, 17059,1), 
(3, 5, 3, 21294,1), 
(3, 6, 3, 25689,1), 
(3, 7, 13, 22136,1),
(3, 8, 111, 21103,1),
(3, 9, 3, 20589,1),
(3, 10, 3, 27233,1), 
(3, 11, 13, 22087),
(3, 12, 13, 22928,1),
(3, 13, 3, 25637,1), 
(3, 14, 13, 22366,1), 
(3, 15, 13, 21709,1), 
(3, 16, 13, 22226,1),
(3, 17, 3, 17866,1), 
(3, 18, 3, 18119,1), 
(3, 19, 3, 20524,1),
(3, 20, 13, 22930,1),
(3, 21, 3, 22141,1), 
(3, 22, 3, 18450,1),
(3, 23, 106, 22110,1),
(3, 24, 21, 25354,1),
(3, 25, 13, 19305,1),
(3, 26, 21, 25957,1), 
(3, 27, 82, 57499,1),
(3, 28, 13, 17819,1), 
(3, 29, 13, 19662,1),
(3, 30, 3, 11402,1), 
(3, 31, 0, 14924,1),

--mtn
(4, 1, 3, 10749,1), 
(4, 2, 36, 14328,1),
(4, 3, 9, 16199,1), 
(4, 4, 124, 12324,1), 
(4, 5, 3, 14421,1), 
(4, 6, 10, 10497,1), 
(4, 7, 1, 12760,1), 
(4, 8, 1, 14411,1),
(4, 9, 3, 12388,1),
(4, 10, 24, 17512,1),
(4, 11, 16, 12324,1), 
(4, 12, 1, 14413,1),
(4, 13, 26, 12705,1),
(4, 14, 10, 12335,1),
(4, 15, 8, 12771,1),
(4, 16, 36, 13221,1), 
(4, 17, 79, 12761,1),
(4, 18, 77, 12347,1),
(4, 19, 10, 10508,1), 
(4, 20, 105, 18051,1),
(4, 21, 105, 14402,1),
(4, 22, 119, 10534,1),
(4, 23, 8, 16237,1),
(4, 24, 105, 18485,1),
(4, 25, 1, 10498,1),
(4, 26, 1, 14406,1),
(4, 27, 5, 10492,1), 
(4, 28, 35, 10142,1), 
(4, 29, 1, 10514,1), 
(4, 30, 29, 10481,1), 
(4, 31, 135, 12333,1),

--reef
(5, 1, 32, 27441,1), 
(5, 2, 12, 36311,1), 
(5, 3, 32, 40451,1), 
(5, 4, 1, 16485,1), 
(5, 5, 32, 49173,1), 
(5, 6, 20, 18464,1), 
(5, 7, 52, 17307,1),
(5, 8, 20, 68775,1),
(5, 9, 45, 16492,1),
(5, 10, 12, 26387,1), 
(5, 11, 16, 22500,1), 
(5, 12, 1, 49165,1),
(5, 13, 45, 19846,1),
(5, 14, 1, 40249,1), 
(5, 15, 55, 14049,1), 
(5, 16, 1, 27330,1),
(5, 17, 32, 19816,1), 
(5, 18, 32, 18775,1), 
(5, 19, 3, 12512,1),
(5, 20, 32, 70542,1), 
(5, 21, 122, 40284,1), 
(5, 22, 32, 16430,1), 
(5, 23, 32, 56171,1), 
(5, 24, 32, 40437,1), 
(5, 25, 1, 12498,1),
(5, 26, 32, 102145,1), 
(5, 27, 45, 27133,1),
(5, 28, 34, 11283,1),
(5, 29, 6, 12594,1),
(5, 30, 107, 11209,1),
(5, 31, 135, 14056,1),

--winter 
(6, 1, 2, 23807,1), 
(6, 2, 3, 19186,1),
(6, 3, 2, 34090,1),
(6, 4, 2, 20423,1), 
(6, 5, 2, 34167,1), 
(6, 6, 2, 41096,1),
(6, 7, 2, 17923,1), 
(6, 8, 2, 34845,1), 
(6, 9, 46, 21811,1),
(6, 10, 1, 21784,1),
(6, 11, 1, 16647,1),
(6, 12, 2, 34110,1),
(6, 13, 2, 30793,1),
(6, 14, 19, 21831),
(6, 15, 2, 16657,1),
(6, 16, 3, 16650,1),
(6, 17, 2, 16650), 
(6, 18, 17, 14946), 
(6, 19, 2, 13754), 
(6, 20, 2, 46759), 
(6, 21, 2, 30783),
(6, 22, 2, 13181,1), 
(6, 23, 2, 33204,1), 
(6, 24, 2, 34044,1), 
(6, 25, 1, 10639),
(6, 26, 20, 31559,1), 
(6, 27, 64, 66981,1), 
(6, 28, 1, 10672),
(6, 29, 2, 11595,1), 
(6, 30, 1, 8792,1),
(6, 31, 107, 16646,1),

--mines
(7, 1, 7, 24856,1), 
(7, 2, 30, 30477,1), 
(7, 3, 7, 39910,1), 
(7, 4, 1, 16232,1), 
(7, 5, 7, 21542,1),
(7, 6, 30, 21708,1), 
(7, 7, 7, 23866,1), 
(7, 8, 7, 24841,1), 
(7, 9, 30, 21345,1),
(7, 10, 7, 21626,1),
(7, 11, 1, 21287,1),
(7, 12, 1, 21705,1),
(7, 13, 17, 21580,1), 
(7, 14, 1, 21571,1),
(7, 15, 130, 13225,1),
(7, 16, 36, 18383,1), 
(7, 17, 7, 21546,1), 
(7, 18, 17, 15433),
(7, 19, 7, 14643,1), 
(7, 20, 7, 45538,1), 
(7, 21, 7, 39903,1), 
(7, 22, 7, 19789,1),
(7, 23, 7, 36680,1), 
(7, 24, 7, 21703,1), 
(7, 25, 7, 12239,1),
(7, 26, 7, 65614,1), 
(7, 27, 22, 40694,1),
(7, 28, 66, 12157,1),
(7, 29, 6, 15621,1),
(7, 30, 7, 9458,1), 
(7, 31, 7, 28807,1),

--dv 
(8, 1, 14, 76398,1), 
(8, 2, 132, 50700,1), 
(8, 3, 14, 104819,1),
(8, 4, 14, 71949,1),
(8, 5, 14, 50752,1),
(8, 6, 14, 101620,1),
(8, 7, 94, 73535,1),
(8, 8, 5, 125173,1),
(8, 9, 5, 40040,1), 
(8, 10, 1, 41423,1), 
(8, 11, 16, 39374,1), 
(8, 12, 14, 84317,1),
(8, 13, 14, 63098,1), 
(8, 14, 2, 71776,1),
(8, 15, 1, 10952,1),
(8, 16, 3, 37698,1),
(8, 17, 48, 39222,1),
(8, 18, 14, 40022,1), 
(8, 19, 48, 39390,1), 
(8, 20, 5, 140740,1), 
(8, 21, 5, 106938,1),
(8, 22, 48, 49765,1), 
(8, 23, 5, 82880,1), 
(8, 24, 70, 73543,1),
(8, 25, 41, 27905,1), 
(8, 26, 5, 406911,1), 
(8, 27, 95, 319745,1), 
(8, 28, 81, 11013,1),
(8, 29, 2, 33682,1), 
(8, 30, 110, 10870,1),
(8, 31, 0, 71801,1),

--beach 
(9, 1, 53, 53711,1),
(9, 2, 53, 66935,1),
(9, 3, 29,  67090,1),
(9, 4, 24, 19080,1),
(9, 5, 5, 67155,1), 
(9, 6, 5, 120163,1),
(9, 7, 1, 26199,1),
(9, 8, 5, 83675,1), 
(9, 9, 53, 67155,1),
(9, 10, 3, 47329,1), 
(9, 11, 16, 47157,1), 
(9, 12, 100, 66922,1),
(9, 13, 100, 53363,1),
(9, 14, 1, 47338,1),
(9, 15, 1, 21962,1), 
(9, 16, 82, 36059,1),
(9, 17, 29, 26200,1), 
(9, 18, 14, 26431,1), 
(9, 19, 48, 26198,1), 
(9, 20, 97, 85910,1),
(9, 21, 82, 56821,1),
(9, 22, 53, 30188,1),
(9, 23, 1, 53708,1), 
(9, 24, 60, 85758,1),
(9, 25, 1, 20445,1),
(9, 26, 95, 118371,1),
(9, 27, 53, 107487,1), 
(9, 28, 55, 18854,1),
(9, 29, 75, 18861,1),
(9, 30, 29, 6584,1),
(9, 31, 53, 66739,1),

 --bog 
(10, 1, 5, 46036,1),
(10, 2, 121, 44894,1),
(10, 3, 14, 45083,1), 
(10, 4, 5, 26986,1), 
(10, 5, 120, 35937,1), 
(10, 6, 22, 63600,1), 
(10, 7, 8, 31749,1), 
(10, 8, 5, 48805,1),
(10, 9, 53, 35933,1),
(10, 10, 5, 33634,1), 
(10, 11, 16, 21106,1), 
(10, 12, 5, 45050,1),
(10, 13, 5, 25970,1),
(10, 14, 91, 33556,1),
(10, 15, 1, 17015,1),
(10, 16, 81, 18658,1),
(10, 17, 5, 21089,1),
(10, 18, 14, 21087,1), 
(10, 19, 88, 16977,1),
(10, 20, 81, 45080,1),
(10, 21, 82, 35820,1),
(10, 22, 127, 21800,1),
(10, 23, 81, 41156,1),
(10, 24, 5, 45039,1),
(10, 25, 8, 11637,1), 
(10, 26, 22, 117484,1), 
(10, 27, 64, 162473,1), 
(10, 28, 81, 15557,1),
(10, 29, 1, 15514,1), 
(10, 30, 6, 8151,1), 
(10, 31, 22, 21909,1),

--rg 
(11, 1, 10, 20650,1), 
(11, 2, 10, 23086,1), 
(11, 3, 10, 23114,1),
(11, 4, 5, 9839,1),
(11, 5, 10, 19914,1),
(11, 6, 10, 24935,1), 
(11, 7, 10, 11588,1),
(11, 8, 93, 21637,1),
(11, 9, 60, 11132,1),
(11, 10, 1, 10483,1), 
(11, 11, 1, 10498,1), 
(11, 12, 10, 19942,1),
(11, 13, 10, 10422,1), 
(11, 14, 10, 16160,1), 
(11, 15, 55, 10171,1),
(11, 16, 29, 8844,1),
(11, 17, 6, 10480,1),
(11, 18, 92, 10479,1), 
(11, 19, 34, 10031,1),
(11, 20, 93, 23234,1),
(11, 21, 10, 22286,1),
(11, 22, 60, 10222,1),
(11, 23, 1, 11679,1),
(11, 24, 10, 22329,1),
(11, 25, 104, 7899,1),
(11, 26, 10, 22331,1), 
(11, 27, 64, 50185,1), 
(11, 28, 1, 8319,1),
(11, 29, 1, 8332,1),
(11, 30, 1, 7258,1),
(11, 31, 92, 10004,1),

--patch 
(12, 1, 1, 14119,1), 
(12, 2, 24, 16274,1), 
(12, 3, 51, 15259,1),
(12, 4, 1, 12190,1),
(12, 5, 24, 14071,1),
(12, 6, 22, 16269,1),
(12, 7, 1, 12256,1),
(12, 8, 5, 13984,1),
(12, 9, 10, 12189),
(12, 10, 24, 14715,1),
(12, 11, 24, 11613,1),
(12, 12, 22, 14115,1),
(12, 13, 75, 11040,1),
(12, 14, 1, 12252,1),
(12, 15, 35, 10399,1), 
(12, 16, 36, 10454,1), 
(12, 17, 1, 11612,1),
(12, 18, 1, 10987,1),
(12, 19, 34, 10466,1),
(12, 20, 22, 14131,1),
(12, 21, 24, 10449,1),
(12, 22, 35, 10449,1),
(12, 23, 1, 14114,1),
(12, 24, 24, 14178,1),
(12, 25, 34, 9204,1),
(12, 26, 22, 16881,1),
(12, 27, 22, 23505,1), 
(12, 28, 1, 5423,1),
(12, 29, 6, 9337,1),
(12, 30, 6, 5456,1),
(12, 31, 22, 11922,1),

--ss 
(13, 1, 30, 21569,1), 
(13, 2, 30, 23736,1), 
(13, 3, 37, 20732,1),
(13, 4, 30, 17956,1), 
(13, 5, 30, 20732,1), 
(13, 6, 30, 30802,1), 
(13, 7, 30, 16715,1), 
(13, 8, 30, 19970,1), 
(13, 9, 47, 16181,1),
(13, 10, 30, 15694,1), 
(13, 11, 107, 12333,1),
(13, 12, 38, 20732,1),
(13, 13, 109, 16183,1),
(13, 14, 76, 16180,1),
(13, 15, 89, 10782,1),
(13, 16, 36, 11582,1), 
(13, 17, 37, 15688,1),
(13, 18, 10, 15175,1),
(13, 19, 30, 10784,1),
(13, 20, 30, 21073,1), 
(13, 21, 30, 20731,1), 
(13, 22, 30, 17945,1),
(13, 23, 37, 18108,1),
(13, 24, 30, 20274,1),
(13, 25, 10, 11234,1),
(13, 26, 47, 59337,1),
(13, 27, 38, 46643,1), 
(13, 28, 30, 11234,1), 
(13, 29, 38, 11383,1),
(13, 30, 6, 10558,1),

--gloom 
(14, 1, 29, 11887,1),
(14, 2, 10, 11892,1),
(14, 3, 29, 11901,1),
(14, 4, 29, 11705,1),
(14, 5, 71, 11899,1),
(14, 6, 71, 12103,1),
(14, 7, 10, 11697,1),
(14, 8, 37, 11865,1),
(14, 9, 1, 10446,1),
(14, 10, 3, 11014,1),
(14, 11, 16, 10480,1),
(14, 12, 98, 11895,1),
(14, 13, 17, 11883,1),
(14, 14, 1, 10446,1),
(14, 15, 55, 9186,1),
(14, 16, 1, 10493,1),
(14, 17, 1, 10503,1), 
(14, 18, 24, 10502),
(14, 19, 1, 10156,1),
(14, 20, 1, 11885,1),
(14, 21, 10, 11865,1),
(14, 22, 5, 11719,1),
(14, 23, 1, 11866,1),
(14, 24, 1, 12405,1), 
(14, 25, 1, 10571,1),
(14, 26, 20, 12272,1),
(14, 27, 23, 13943,1),
(14, 28, 11, 8510,1),
(14, 29, 1, 10494,1),
(14, 30, 110, 7499,1),

--ofr 
(15, 1, 25, 11158,1),
(15, 2, 1, 20699,1),
(15, 3, 17, 22397,1),
(15, 4, 1, 11161,1), 
(15, 5, 26, 22058,1),
(15, 6, 20, 20699,1),
(15, 7, 1, 22222,1), 
(15, 8, 20, 20699,1),
(15, 9, 1, 11172,1),
(15, 10, 26, 22079,1), 
(15, 11, 16, 22081,1), 
(15, 12, 5, 22084,1),
(15, 13, 25, 22038,1), 
(15, 14, 1, 19122,1),
(15, 15, 1, 11254,1),
(15, 16, 81, 10981,1),
(15, 17, 2, 12307,1),
(15, 18, 1, 11189,1),
(15, 19, 76, 10644,1), 
(15, 20, 5, 30331,1),
(15, 21, 5, 30332,1),
(15, 22, 27, 11159,1),
(15, 23, 5, 20725,1),
(15, 24, 5, 20699,1),
(15, 25, 6, 10571,1),
(15, 26, 20, 58836,1),
(15, 27, 20, 50724,1),
(15, 28, 1, 8663,1),
(15, 29, 1, 11082,1),
(15, 30, 6, 8665,1),

 --carena
(16, 1, 5, 16735,1),
(16, 2, 30, 16131,1),
(16, 3, 17, 16087,1),
(16, 4, 1, 16110,1),
(16, 5, 17, 16067,1),
(16, 6, 20, 18625,1),
(16, 7, 1, 15918,1),
(16, 8, 20, 16697,1),
(16, 9, 10, 13488,1),
(16, 10, 30, 13535,1), 
(16, 11, 1, 12197,1),
(16, 12, 5, 15834,1),
(16, 13, 24, 13534,1),
(16, 14, 76, 13911,1),
(16, 15, 1, 11482,1),
(16, 16, 1, 11580,1), 
(16, 17, 2, 13483,1),
(16, 18, 17, 11580,1), 
(16, 19, 1, 8403,1), 
(16, 20, 46, 16698,1),
(16, 21, 82, 15757,1),
(16, 22, 60, 13391,1),
(16, 23, 2, 15832,1),
(16, 24, 5, 15829,1),
(16, 25, 1, 8402,1),
(16, 26, 5, 18142,1),
(16, 27, 44, 20461,1), 
(16, 28, 1, 6497,1),
(16, 29, 1, 11408,1),
(16, 30, 84, 6252,1),

--cuptown 
(17, 1, 1, 10678,1), 
(17, 2, 30, 10708,1), 
(17, 3, 1, 11235,1), 
(17, 4, 1, 10597,1), 
(17, 5, 1, 10845,1), 
(17, 6, 1, 11850,1), 
(17, 8, 1, 10698,1), 
(17, 7, 1, 10639,1), 
(17, 9, 1, 10666,1), 
(17, 10, 62, 10722,1), 
(17, 11, 16, 10729,1), 
(17, 12, 1, 10809,1), 
(17, 13, 69, 10793,1),
(17, 14, 1, 10783,1), 
(17, 15, 1, 10633,1), 
(17, 16, 1, 10832,1), 
(17, 17, 1, 10643,1),
(17, 18, 1, 10800,1),
(17, 19, 59, 10669,1), 
(17, 20, 1, 10673,1),
(17, 21, 30, 10720,1),
(17, 22, 1, 10660,1),
(17, 23, 42, 10732,1),
(17, 24, 1, 11231,1), 
(17, 25, 1, 10507,1), 
(17, 26, 40, 10779,1), 
(17, 27, 44, 10776,1), 
(17, 28, 34, 8522,1),
(17, 29, 1, 10574,1),
(17, 30, 29, 7446,1),

--sro 
(18, 1, 6, 43901,1), 
(18, 2, 24, 37360,1),
(18, 3, 24, 38268,1),
(18, 4, 83, 27472,1),
(18, 5, 7, 32737,1),
(18, 6, 5, 40668,1),
(18, 7, 10, 35943,1), 
(18, 8, 83, 40663,1),
(18, 9, 129, 21277,1),
(18, 10, 24, 24096,1), 
(18, 11, 1, 13315,1), 
(18, 12, 78, 36279,1),
(18, 13, 107, 13470,1),
(18, 14, 7, 24091,1), 
(18, 15, 22, 11174,1), 
(18, 16, 36, 15000,1), 
(18, 17, 1, 13429,1),
(18, 18, 24, 13429,1),
(18, 19, 1, 12775,1),
(18, 20, 24, 92363,1),
(18, 21, 10, 27074,1), 
(18, 22, 5, 27483,1),
(18, 23, 20, 36008,1),
(18, 24, 24, 35664,1), 
(18, 25, 75, 10962,1),
(18, 26, 39, 153852,1), 
(18, 27, 22, 65536,1), 
(18, 28, 35, 10276,1),
(18, 29, 6, 23119,1),
(18, 30, 6, 9306,1), 
(18, 31, 24, 24095,1),

--ft 
(19, 1, 1, 5365), 
(19, 2, 1, 5638), 
(19, 3, 1, 5128), 
(19, 4, 1, 4035), 
(19, 5, 1, 5716), 
(19, 6, 30, 5898), 
(19, 7, 1, 5106), 
(19, 8, 1, 5079), 
(19, 9, 1, 5705), 
(19, 10, 1, 6526), 
(19, 11, 1, 4182), 
(19, 12, 27, 5162), 
(19, 13, 1, 5104), 
(19, 14, 1, 4977), 
(19, 15, 1, 3308), 
(19, 16, 3, 4159), 
(19, 17, 48, 3589), 
(19, 18, 1, 5163), 
(19, 19, 45, 3589),
(19, 20, 1, 5324), 
(19, 21, 24, 5123),
(19, 22, 27, 4240),
(19, 23, 1, 5079),
(19, 24, 73, 5719),
(19, 25, 7, 2765), 
(19, 26, 20, 5800), 
(19, 27, 38, 13382), 
(19, 28, 1, 2734), 
(19, 29, 1, 3263), 
(19, 30, 61, 2392),
(19, 31, 22, 4792),

--ic 
(20, 1, 1, 4741),
(20, 2, 1, 5082), 
(20, 3, 7, 4745), 
(20, 4, 1, 4256),
(20, 5, 1, 5051), 
(20, 6, 1, 4741), 
(20, 7, 1, 5066),
(20, 8, 18, 3921), 
(20, 9, 2, 4246), 
(20, 10, 2, 3973), 
(20, 11, 1, 4720), 
(20, 12, 27, 4766), 
(20, 13, 6, 4722), 
(20, 14, 58, 4720),
(20, 15, 1, 4252), 
(20, 16, 3, 4741), 
(20, 17, 6, 5051), 
(20, 18, 1, 5081),
(20, 19, 6, 4721), 
(20, 20, 56, 6704),
(20, 21, 24, 5051),
(20, 22, 1, 4721),
(20, 23, 6, 5081), 
(20, 24, 6, 4757), 
(20, 25, 1, 4721), 
(20, 26, 1, 5080), 
(20, 27, 22, 10304), 
(20, 28, 2, 3826), 
(20, 29, 1, 4723), 
(20, 30, 6, 3847), 
(20, 31, 131, 3824),

--rw 
(21, 1, 28, 3917), 
(21, 2, 1, 4675), 
(21, 3, 54, 3843),
(21, 4, 1, 3507),
(21, 5, 6, 4388),
(21, 6, 1, 3854), 
(21, 7, 1, 4013), 
(21, 8, 1, 3791), 
(21, 9, 60, 3792), 
(21, 10, 60, 4513), 
(21, 11, 16, 3530), 
(21, 12, 28, 3760),
(21, 13, 1, 3792),
(21, 14, 28, 3788),
(21, 15, 28, 3823),
(21, 16, 36, 4012), 
(21, 17, 28, 3788),
(21, 18, 6, 3355), 
(21, 19, 1, 3825), 
(21, 20, 57, 4416),
(21, 21, 28, 4137),
(21, 22, 27, 3634),
(21, 23, 1, 4095), 
(21, 24, 128, 3819),
(21, 25, 99, 3720),
(21, 26, 1, 4100), 
(21, 27, 24, 5458), 
(21, 28, 99, 3475),
(21, 29, 101, 3719),
(21, 30, 6, 3684),
(21, 31, 56, 2402);


/*
non mastery (unfinished)... 

(1, 9, 6, 14043, 0),
(1, 10, 6, 12146, 0),
(1, 17, 6, 9457, 0),
(1, 19, 11, 9105, 0),
(2, 19, 88, 18574, 0),
(3, 10, 3, 21095, 0),
(4, 3, 1, 12377, 0),
(4, 9, 1, 10540, 0),
(4, 13, 1, 10510, 0),
(5, 9, 2, 17923, 0),
(6, 1, 2, 23807, 0),
(6, 3, 2, 23923, 0),
(6, 6, 2, 17314, 0),
(6, 8, 2, 19186, 0),
(7, 10, 1, 21347, 0),
(8, 6, 5, 43590, 0),
(8, 17, 0, 17724, 0),
(8, 19, 133, 13966, 0),
(8, 22, 5, 41268, 0),
(9, 1, 5, 26202, 0),
(9, 10, 1, 40587, 0), 
(10, 10, 1, 26983, 0),
(12, 9, 1, 10987, 0),
(13, 10, 38, 15433, 0),
(14, 9, 1, 10446, 0),
(14, 10, 1, 10445, 0),
(15, 9, 9, 10571, 0),
(15, 10, 62, 11175, 0),
(17, 10, 1, 10706, 0), 
(18, 10, 1, 13483, 0),
(19, 10, 1, 4791, 0),
(21, 10, 1, 3792, 0),

*/



-- STATEMENTS

-- request to order all WRs by distance
/*
SELECT nameVehicle, nameMap, namePlayer, distance
    FROM Vehicle JOIN WorldRecord USING (idVehicle)
    JOIN Map USING (idMap) 
    JOIN Player USING (idPlayer)
    ORDER BY distance DESC;
*/
    
-- request to get a specific WR
/*
SELECT nameVehicle, nameMap, namePlayer, distance
    FROM Vehicle JOIN WorldRecord USING (idVehicle)
    JOIN Map USING (idMap) 
    JOIN Player USING (idPlayer)
    WHERE (nameMap = 'Countryside')
    ORDER BY distance DESC;
*/
    
 
-- request to list all players by WRs
/*
SELECT namePlayer, count(*) AS total_records
    FROM Player JOIN WorldRecord USING (idPlayer)
GROUP BY namePlayer
ORDER BY count(*) DESC;
*/

-- request to list all countries by WRs
/*
SELECT country, count(*) AS total_records
    FROM Player JOIN WorldRecord USING (idPlayer)
GROUP BY country
ORDER BY count(*) DESC;
*/

-- request to list all maps by all-vehicle
/*
SELECT nameMap, max(distance) AS all_vehicle, nameVehicle, namePlayer
    FROM Vehicle JOIN WorldRecord USING (idVehicle)
    JOIN Map USING (idMap) 
    JOIN Player USING (idPlayer)
GROUP BY nameMap
ORDER BY max(distance) DESC;
*/

-- request to list all vehicles by longest distance
/*
SELECT V.nameVehicle, WR.distance AS longest_distance, M.nameMap, P.namePlayer
FROM WorldRecord WR
JOIN Vehicle V ON WR.idVehicle = V.idVehicle
JOIN Map M ON WR.idMap = M.idMap
JOIN Player P ON WR.idPlayer = P.idPlayer
WHERE WR.distance = (
    SELECT MAX(distance)
    FROM WorldRecord
    WHERE idVehicle = WR.idVehicle
)
ORDER BY WR.distance DESC;
*/

-- request to get average distance of every vehicle 
/*
SELECT nameVehicle, round(avg(distance)) as average_distance 
FROM Vehicle JOIN WorldRecord USING (idVehicle)
    JOIN Map USING (idMap) 
GROUP BY nameVehicle 
ORDER BY average_distance DESC;
*/
-- request to get sum of all distances of every vehicle 
/*
SELECT nameVehicle, sum(distance) as sum_records
FROM Vehicle JOIN WorldRecord USING (idVehicle)
    JOIN Map USING (idMap) 
GROUP BY nameVehicle 
ORDER BY sum_records DESC;
*/

-- request to list all players by all-vehicle WRs
/*
WITH AllVehicle AS (
SELECT nameMap, max(distance) AS all_vehicle, nameVehicle, idPlayer
    FROM Vehicle JOIN WorldRecord USING (idVehicle)
    JOIN Map USING (idMap) 
    JOIN Player USING (idPlayer)
GROUP BY nameMap
)
SELECT namePlayer, count(*) AS total_allvehicles
    FROM Player JOIN AllVehicle USING (idPlayer)
GROUP BY namePlayer
ORDER BY count(*) DESC;
*/

-- request to list vehicles by all-vehicle WRs
/*
WITH AllVehicle AS (
SELECT nameMap, max(distance) AS all_vehicle, idVehicle 
    FROM Vehicle JOIN WorldRecord USING (idVehicle)
    JOIN Map USING (idMap) 
    JOIN Player USING (idPlayer)
GROUP BY nameMap
)
SELECT nameVehicle, count(*) AS total_allvehicles
    FROM Vehicle JOIN AllVehicle USING (idVehicle)
GROUP BY nameVehicle 
ORDER BY count(*) DES
*/

-- request to order vehicles by total 10ks
/*
SELECT nameVehicle, count(*) AS total_10ks
    FROM Vehicle JOIN WorldRecord USING (idVehicle)
    JOIN Map USING (idMap) 
    JOIN Player USING (idPlayer)
WHERE (distance >= 10000 AND special == 0)
GROUP BY nameVehicle
ORDER BY total_10ks DESC;
*/

-- request to order vehicles by total special map 5ks
/*
SELECT nameVehicle, count(*) AS total_special_5ks
    
    FROM Vehicle JOIN WorldRecord USING (idVehicle)
    JOIN Map USING (idMap) 
    JOIN Player USING (idPlayer)
WHERE (distance >= 5000 AND special == 1)
GROUP BY nameVehicle
ORDER BY total_special_5ks DESC;
*/

-- request to order vehicles by average placement in all maps 

/*
WITH Placements AS (
  SELECT nameVehicle, RANK() OVER (PARTITION BY idMap ORDER BY distance DESC) as place 
FROM Vehicle JOIN WorldRecord USING (idVehicle)
) 
SELECT nameVehicle, round(avg(place), 2) as average_place 
FROM Placements 
GROUP BY nameVehicle 
ORDER BY average_place;
*/

-- request to get worst map for each vehicle 

/*
WITH Placements AS (
  SELECT nameVehicle, idMap,
  RANK() OVER (PARTITION BY idMap ORDER BY distance DESC) as place 
  FROM Vehicle JOIN WorldRecord USING (idVehicle)
)

SELECT nameVehicle, max(place) as worst_place, nameMap 
FROM Placements 
JOIN Map USING (idMap)
GROUP BY nameVehicle
ORDER BY worst_place;
*/

-- request to get best map for each vehicle 

/*
WITH Placements AS (
  SELECT nameVehicle, idMap,
  RANK() OVER (PARTITION BY idMap ORDER BY distance DESC) as place 
  FROM Vehicle JOIN WorldRecord USING (idVehicle)
)

SELECT nameVehicle, min(place) as best_place, nameMap 
FROM Placements 
JOIN Map USING (idMap)
GROUP BY nameVehicle
ORDER BY best_place;
*/
