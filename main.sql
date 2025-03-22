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
    PRIMARY KEY (idVehicle, idMap),
    FOREIGN KEY (idVehicle) REFERENCES Vehicle(idVehicle),
    FOREIGN KEY (idMap) REFERENCES Map(idMap),
    FOREIGN KEY (idPlayer) REFERENCES Player(idPlayer),
    CHECK (distance > 0)
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
(121, 'Zoda', 'Belgium');

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
(1, 1, 6, 15351), 
(1, 2, 6, 15374), 
(1, 3, 6, 17515), 
(1, 4, 1, 12082), 
(1, 5, 6, 17517), 
(1, 6, 6, 15385), 
(1, 7, 15, 14047), 
(1, 8, 37, 15351), 
(1, 9, 6, 14043), 
(1, 10, 6, 12146), 
(1, 11, 6, 11527), 
(1, 12, 6, 16771), 
(1, 13, 6, 20413), 
(1, 14, 33, 17516), 
(1, 15, 1, 12150), 
(1, 16, 36, 13604), 
(1, 17, 6, 12677), 
(1, 18, 24, 11875), 
(1, 19, 6, 10272), 
(1, 20, 15, 15387), 
(1, 21, 6, 14692), 
(1, 22, 24, 11443), 
(1, 23, 15, 14680), 
(1, 24, 24, 18975), 
(1, 25, 6, 8631), 
(1, 26, 15, 15375), 
(1, 27, 6, 27662), 
(1, 28, 11, 9584), 
(1, 29, 6, 9695), 
(1, 30, 6, 7696), 

--forest
(2, 1, 3, 37321), 
(2, 2, 30, 40248), 
(2, 3, 113, 40236), 
(2, 4, 50, 36785),
(2, 5, 86, 38538),
(2, 6, 30, 56881), 
(2, 7, 1, 38555), 
(2, 8, 2, 42719), 
(2, 9, 70, 30600),
(2, 10, 1, 40235), 
(2, 11, 19, 32151), 
(2, 12, 2, 52026), 
(2, 13, 70, 46369),
(2, 14, 70, 43737),
(2, 15, 4, 32150),
(2, 16, 36, 33682), 
(2, 17, 116, 29920),
(2, 18, 14, 18001), 
(2, 19, 88, 21215),
(2, 20, 64, 61212),
(2, 21, 1, 43625), 
(2, 22, 14, 25577), 
(2, 23, 2, 49188), 
(2, 24, 64, 50156),
(2, 25, 102, 18552),
(2, 26, 63, 89054),
(2, 27, 64, 134763), 
(2, 28, 74, 18608),
(2, 29, 2, 22218), 
(2, 30, 67, 19789),

--city
(3, 1, 3, 21747), 
(3, 2, 13, 22260), 
(3, 3, 21, 28896), 
(3, 4, 13, 17059), 
(3, 5, 3, 21294), 
(3, 6, 3, 25689), 
(3, 7, 13, 22136),
(3, 8, 111, 21103),
(3, 9, 13, 19881),
(3, 10, 3, 21095), 
(3, 11, 13, 22087),
(3, 12, 13, 22928),
(3, 13, 3, 25637), 
(3, 14, 13, 22366), 
(3, 15, 13, 21709), 
(3, 16, 13, 22226),
(3, 17, 3, 17600), 
(3, 18, 3, 18119), 
(3, 19, 3, 20524),
(3, 20, 13, 22930),
(3, 21, 3, 22141), 
(3, 22, 13, 18444),
(3, 23, 106, 22110),
(3, 24, 21, 25354),
(3, 25, 13, 19305),
(3, 26, 21, 25957), 
(3, 27, 80, 53644),
(3, 28, 13, 17819), 
(3, 29, 13, 19662),
(3, 30, 3, 11402), 

--mtn
(4, 1, 3, 10749), 
(4, 2, 36, 14328),
(4, 3, 9, 16199), 
(4, 4, 1, 10482), 
(4, 5, 3, 14421), 
(4, 6, 10, 10497), 
(4, 7, 1, 12760), 
(4, 8, 1, 14411),
(4, 9, 1, 10540),
(4, 10, 108, 15482),
(4, 11, 16, 12324), 
(4, 12, 1, 14413),
(4, 13, 26, 12705),
(4, 14, 10, 12335),
(4, 15, 8, 12771),
(4, 16, 36, 13221), 
(4, 17, 79, 12761),
(4, 18, 77, 12347),
(4, 19, 10, 10508), 
(4, 20, 105, 18051),
(4, 21, 105, 14402),
(4, 22, 119, 10534),
(4, 23, 8, 16237),
(4, 24, 105, 18485),
(4, 25, 1, 10498),
(4, 26, 1, 14406),
(4, 27, 5, 10492), 
(4, 28, 35, 10142), 
(4, 29, 1, 10514), 
(4, 30, 29, 10481), 

--reef
(5, 1, 32, 27441), 
(5, 2, 20, 24338), 
(5, 3, 32, 40451), 
(5, 4, 1, 16485), 
(5, 5, 32, 49173), 
(5, 6, 20, 18464), 
(5, 7, 52, 17307),
(5, 8, 20, 68775),
(5, 9, 2, 17923),
(5, 10, 1, 18907), 
(5, 11, 16, 22500), 
(5, 12, 1, 49165),
(5, 13, 45, 19846),
(5, 14, 1, 40249), 
(5, 15, 55, 14049), 
(5, 16, 1, 27330),
(5, 17, 32, 19816), 
(5, 18, 32, 18775), 
(5, 19, 3, 12512),
(5, 20, 32, 70542), 
(5, 21, 12, 40249), 
(5, 22, 32, 16430), 
(5, 23, 32, 56171), 
(5, 24, 32, 40437), 
(5, 25, 1, 12498),
(5, 26, 32, 102145), 
(5, 27, 45, 27133),
(5, 28, 34, 11283),
(5, 29, 6, 12594),
(5, 30, 107, 11209),

--winter 
(6, 1, 2, 23807), 
(6, 2, 3, 19186),
(6, 3, 2, 34090),
(6, 4, 2, 20423), 
(6, 5, 2, 34167), 
(6, 6, 2, 41096),
(6, 7, 2, 17923), 
(6, 8, 2, 34845), 
(6, 9, 2, 17923),
(6, 10, 1, 21784),
(6, 11, 1, 16647),
(6, 12, 2, 34110),
(6, 13, 2, 30793),
(6, 14, 19, 21831),
(6, 15, 2, 16657),
(6, 16, 3, 16650),
(6, 17, 2, 16650), 
(6, 18, 2, 12374), 
(6, 19, 2, 13754), 
(6, 20, 2, 46759), 
(6, 21, 2, 30783),
(6, 22, 2, 13181), 
(6, 23, 2, 33204), 
(6, 24, 2, 34044), 
(6, 25, 1, 10639),
(6, 26, 20, 31559), 
(6, 27, 64, 66981), 
(6, 28, 1, 10672),
(6, 29, 2, 11595), 
(6, 30, 1, 8792),

--mines
(7, 1, 7, 24856), 
(7, 2, 36, 17670), 
(7, 3, 7, 39910), 
(7, 4, 1, 16232), 
(7, 5, 7, 21542),
(7, 6, 24, 17674), 
(7, 7, 7, 23866), 
(7, 8, 7, 24841), 
(7, 9, 1, 14642),
(7, 10, 1, 21347),
(7, 11, 1, 21287),
(7, 12, 1, 21705),
(7, 13, 17, 21580), 
(7, 14, 1, 21571),
(7, 15, 103, 11525),
(7, 16, 36, 18383), 
(7, 17, 7, 21546), 
(7, 18, 1, 11937),
(7, 19, 7, 14643), 
(7, 20, 7, 45538), 
(7, 21, 7, 39903), 
(7, 22, 24, 12155),
(7, 23, 7, 36680), 
(7, 24, 7, 21703), 
(7, 25, 7, 12239),
(7, 26, 7, 65614), 
(7, 27, 22, 40694),
(7, 28, 66, 12157),
(7, 29, 6, 15621),
(7, 30, 7, 9458), 

--dv 
(8, 1, 14, 76398), 
(8, 2, 14, 44707), 
(8, 3, 14, 104819),
(8, 4, 14, 71949),
(8, 5, 14, 50752),
(8, 6, 14, 101620),
(8, 7, 94, 73535),
(8, 8, 5, 125173),
(8, 9, 5, 40040), 
(8, 10, 1, 41423), 
(8, 11, 16, 39374), 
(8, 12, 14, 84317),
(8, 13, 14, 63098), 
(8, 14, 2, 71776),
(8, 15, 1, 10952),
(8, 16, 3, 37698),
(8, 17, 48, 39222),
(8, 18, 14, 40022), 
(8, 19, 48, 39390), 
(8, 20, 20, 125434), 
(8, 21, 82, 79668),
(8, 22, 5, 41268), 
(8, 23, 5, 82880), 
(8, 24, 70, 73543),
(8, 25, 41, 27905), 
(8, 26, 5, 406911), 
(8, 27, 95, 319745), 
(8, 28, 81, 11013),
(8, 29, 2, 33682), 
(8, 30, 110, 10870),

--beach 
(9, 1, 53, 53711),
(9, 2, 53, 66434),
(9, 3, 29,  67090),
(9, 4, 24, 19080),
(9, 5, 5, 67155), 
(9, 6, 5, 120163),
(9, 7, 1, 26199),
(9, 8, 5, 83675), 
(9, 9, 1, 26192),
(9, 10, 1, 40587), 
(9, 11, 16, 47157), 
(9, 12, 100, 66922),
(9, 13, 100, 53363),
(9, 14, 1, 47338),
(9, 15, 1, 21962), 
(9, 16, 1, 35050),
(9, 17, 29, 26200), 
(9, 18, 14, 26431), 
(9, 19, 48, 26195), 
(9, 20, 97, 85910),
(9, 21, 82, 56821),
(9, 22, 44, 30170),
(9, 23, 1, 53708), 
(9, 24, 60, 85758),
(9, 25, 1, 20445),
(9, 26, 95, 118371),
(9, 27, 5, 95793), 
(9, 28, 55, 18854),
(9, 29, 75, 18861),
(9, 30, 29, 6584),

 --bog 
(10, 1, 5, 46036),
(10, 2, 85, 32434),
(10, 3, 14, 45083), 
(10, 4, 5, 26986), 
(10, 5, 120, 35937), 
(10, 6, 22, 63600), 
(10, 7, 8, 31749), 
(10, 8, 5, 48805),
(10, 9, 1, 21090),
(10, 10, 1, 26983), 
(10, 11, 16, 21106), 
(10, 12, 5, 45050),
(10, 13, 5, 25970),
(10, 14, 91, 33556),
(10, 15, 1, 17015),
(10, 16, 81, 18658),
(10, 17, 5, 21089),
(10, 18, 14, 21087), 
(10, 19, 88, 16977),
(10, 20, 81, 45080),
(10, 21, 82, 35820),
(10, 22, 5, 21088),
(10, 23, 81, 41156),
(10, 24, 5, 45039),
(10, 25, 8, 11637), 
(10, 26, 22, 117484), 
(10, 27, 60, 153823), 
(10, 28, 81, 15557),
(10, 29, 1, 15514), 
(10, 30, 6, 8151), 

--rg 
(11, 1, 10, 20650), 
(11, 2, 10, 23086), 
(11, 3, 10, 23114), 
(11, 4, 5, 9839),
(11, 5, 10, 19914),
(11, 6, 10, 24935), 
(11, 7, 10, 11588),
(11, 8, 93, 21637),
(11, 9, 1, 10409),
(11, 10, 1, 10483), 
(11, 11, 1, 10498), 
(11, 12, 10, 19942),
(11, 13, 10, 10422), 
(11, 14, 10, 16160), 
(11, 15, 55, 10171),
(11, 16, 29, 8844),
(11, 17, 6, 8872),
(11, 18, 92, 10479), 
(11, 19, 34, 10031),
(11, 20, 93, 23234),
(11, 21, 10, 22286),
(11, 22, 24, 10005),
(11, 23, 1, 11679),
(11, 24, 10, 22329),
(11, 25, 104, 7899),
(11, 26, 10, 22331), 
(11, 27, 10, 32520), 
(11, 28, 1, 8319),
(11, 29, 1, 8332),
(11, 30, 1, 7258),

--patch 
(12, 1, 1, 14119), 
(12, 2, 10, 14800), 
(12, 3, 51, 15259),
(12, 4, 1, 12190),
(12, 5, 24, 14071),
(12, 6, 22, 15845),
(12, 7, 1, 12256),
(12, 8, 5, 13984),
(12, 9, 1, 10987),
(12, 10, 1, 12236),
(12, 11, 24, 11613),
(12, 12, 22, 14115),
(12, 13, 75, 11040),
(12, 14, 1, 12252),
(12, 15, 35, 10399), 
(12, 16, 36, 10454), 
(12, 17, 1, 11612),
(12, 18, 1, 10987),
(12, 19, 34, 10466),
(12, 20, 22, 14131),
(12, 21, 24, 10449),
(12, 22, 35, 10449),
(12, 23, 1, 14114),
(12, 24, 24, 14178),
(12, 25, 34, 9204),
(12, 26, 22, 16881),
(12, 27, 22, 23505), 
(12, 28, 1, 5423),
(12, 29, 6, 9337),
(12, 30, 6, 5456),


--ss 
(13, 1, 30, 21569), 
(13, 2, 30, 23736), 
(13, 3, 37, 20732), 
(13, 4, 30, 17956), 
(13, 5, 30, 20732), 
(13, 6, 30, 30802), 
(13, 7, 30, 16715), 
(13, 8, 30, 19970), 
(13, 9, 45, 15428),
(13, 10, 38, 15433), 
(13, 11, 107, 12333),
(13, 12, 38, 20732),
(13, 13, 109, 16183),
(13, 14, 76, 16180),
(13, 15, 89, 10782),
(13, 16, 36, 11582), 
(13, 17, 37, 15688),
(13, 18, 6, 11950),
(13, 19, 30, 10784),
(13, 20, 30, 21073), 
(13, 21, 30, 20731), 
(13, 22, 30, 17945),
(13, 23, 37, 18108),
(13, 24, 30, 20274),
(13, 25, 10, 11234),
(13, 26, 47, 59337),
(13, 27, 38, 46643), 
(13, 28, 30, 11234), 
(13, 29, 38, 11383),
(13, 30, 6, 10558),

--gloom 
(14, 1, 29, 11887),
(14, 2, 10, 11892),
(14, 3, 29, 11901),
(14, 4, 29, 11705),
(14, 5, 71, 11899),
(14, 6, 71, 12103),
(14, 7, 10, 11697),
(14, 8, 37, 11865),
(14, 9, 1, 10446),
(14, 10, 1, 10445),
(14, 11, 16, 10480),
(14, 12, 98, 11895),
(14, 13, 17, 11883),
(14, 14, 1, 10446),
(14, 15, 55, 9186),
(14, 16, 1, 10493),
(14, 17, 1, 10503), 
(14, 18, 24, 10502),
(14, 19, 1, 10156),
(14, 20, 1, 11885),
(14, 21, 10, 11865),
(14, 22, 5, 11719),
(14, 23, 1, 11866),
(14, 24, 1, 12405), 
(14, 25, 1, 10571),
(14, 26, 20, 12272),
(14, 27, 23, 13943),
(14, 28, 55, 8399),
(14, 29, 1, 10494),
(14, 30, 110, 7499),

--ofr 
(15, 1, 25, 11158),
(15, 2, 1, 20699),
(15, 3, 17, 22397),
(15, 4, 1, 11161), 
(15, 5, 26, 22058),
(15, 6, 20, 20699),
(15, 7, 1, 22222), 
(15, 8, 20, 20699),
(15, 9, 1, 11172),
(15, 10, 62, 11175), 
(15, 11, 16, 22081), 
(15, 12, 1, 22082),
(15, 13, 25, 22038), 
(15, 14, 1, 19122),
(15, 15, 1, 11254),
(15, 16, 81, 10981),
(15, 17, 2, 12307),
(15, 18, 1, 11189),
(15, 19, 1, 10643), 
(15, 20, 8, 22833),
(15, 21, 10, 20536),
(15, 22, 26, 11138),
(15, 23, 5, 20725),
(15, 24, 5, 20699),
(15, 25, 6, 10571),
(15, 26, 20, 58836),
(15, 27, 114, 36543),
(15, 28, 1, 8663),
(15, 29, 1, 11082),
(15, 30, 6, 8665),

 --carena
(16, 1, 5, 16735),
(16, 2, 10, 15069),
(16, 3, 17, 16087),
(16, 4, 1, 16110),
(16, 5, 17, 16067),
(16, 6, 20, 18625),
(16, 7, 1, 15918),
(16, 8, 20, 16697),
(16, 9, 1, 13392),
(16, 10, 15, 11581), 
(16, 11, 1, 12197),
(16, 12, 5, 15834),
(16, 13, 24, 13534),
(16, 14, 76, 13911),
(16, 15, 1, 11482),
(16, 16, 1, 11580), 
(16, 17, 2, 13483),
(16, 18, 31, 11538), 
(16, 19, 1, 8403), 
(16, 20, 20, 16394),
(16, 21, 82, 15757),
(16, 22, 60, 13391),
(16, 23, 2, 15832),
(16, 24, 5, 15829),
(16, 25, 1, 8402),
(16, 26, 5, 18142),
(16, 27, 44, 20461), 
(16, 28, 1, 6497),
(16, 29, 1, 11408),
(16, 30, 84, 6252),

--cuptown 
(17, 1, 1, 10678), 
(17, 2, 30, 10708), 
(17, 3, 1, 11235), 
(17, 4, 1, 10597), 
(17, 5, 1, 10845), 
(17, 6, 1, 11850), 
(17, 8, 1, 10698), 
(17, 7, 1, 10639), 
(17, 9, 1, 10666), 
(17, 10, 1, 10706), 
(17, 11, 16, 10729), 
(17, 12, 1, 10809), 
(17, 13, 69, 10793),
(17, 14, 1, 10783), 
(17, 15, 1, 10633), 
(17, 16, 1, 10832), 
(17, 17, 1, 10643),
(17, 18, 1, 10800),
(17, 19, 59, 10669), 
(17, 20, 1, 10673),
(17, 21, 30, 10720),
(17, 22, 1, 10660),
(17, 23, 42, 10732),
(17, 24, 1, 11231), 
(17, 25, 1, 10507), 
(17, 26, 40, 10779), 
(17, 27, 44, 10776), 
(17, 28, 34, 8522),
(17, 29, 1, 10574),
(17, 30, 29, 7446),

--sro 
(18, 1, 6, 43901), 
(18, 2, 24, 37360),
(18, 3, 22, 29796),
(18, 4, 83, 27472),
(18, 5, 7, 32737),
(18, 6, 5, 40668),
(18, 7, 10, 35943), 
(18, 8, 83, 40663),
(18, 9, 6, 16940),
(18, 10, 1, 13483), 
(18, 11, 1, 13315), 
(18, 12, 78, 36279),
(18, 13, 71, 13318),
(18, 14, 7, 24091), 
(18, 15, 22, 11174), 
(18, 16, 36, 15000), 
(18, 17, 1, 13429),
(18, 18, 24, 13429),
(18, 19, 1, 12775),
(18, 20, 24, 92363),
(18, 21, 10, 27074), 
(18, 22, 5, 27483),
(18, 23, 20, 36008),
(18, 24, 24, 35664), 
(18, 25, 75, 10962),
(18, 26, 39, 153852), 
(18, 27, 22, 65536), 
(18, 28, 35, 10276),
(18, 29, 6, 23119),
(18, 30, 6, 9306), 

--ft 
(19, 1, 1, 5365), 
(19, 2, 1, 5638), 
(19, 3, 1, 5128), 
(19, 4, 1, 4035), 
(19, 5, 1, 5716), 
(19, 6, 30, 5898), 
(19, 7, 1, 5106), 
(19, 8, 1, 5079), 
(19, 9, 1, 4228), 
(19, 10, 1, 4791), 
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
(19, 29, 1, 2813), 
(19, 30, 61, 2392),

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
(20, 17, 1, 5000), 
(20, 18, 1, 5081),
(20, 19, 6, 4721), 
(20, 20, 56, 6704),
(20, 21, 24, 5051),
(20, 22, 27, 4702),
(20, 23, 6, 5081), 
(20, 24, 6, 4757), 
(20, 25, 1, 4721), 
(20, 26, 1, 5080), 
(20, 27, 22, 10304), 
(20, 28, 2, 3826), 
(20, 29, 1, 4723), 
(20, 30, 6, 3847), 

--rw 
(21, 1, 28, 3917), 
(21, 2, 1, 4675), 
(21, 3, 54, 3843),
(21, 4, 1, 3507),
(21, 5, 6, 4388),
(21, 6, 1, 3854), 
(21, 7, 1, 4013), 
(21, 8, 1, 3791), 
(21, 9, 28, 3665), 
(21, 10, 1, 3792), 
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
(21, 24, 1, 3694 ),
(21, 25, 99, 3720),
(21, 26, 1, 4100), 
(21, 27, 24, 5458), 
(21, 28, 99, 3475),
(21, 29, 101, 3719),
(21, 30, 6, 3684);

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
