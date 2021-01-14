USE `essentialmode`;

INSERT INTO `addon_account` (name, label, shared) VALUES
	('society_aircraftdealer','Concessionnaire d\'aeronefs',1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
	('society_aircraftdealer','Concessionnaire d\'aeronefs',1)
;

INSERT INTO `jobs` (name, label) VALUES
	('aircraftdealer','Concessionnaire d\'aeronefs')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('aircraftdealer',0,'recruit','eleve Pilote',200,'{}','{}'),
	('aircraftdealer',1,'novice','Pilotes Professionnels',400,'{}','{}'),
	('aircraftdealer',2,'experienced','Co-Pilote',600,'{}','{}'),
	('aircraftdealer',3,'boss','Commandants de Bord',800,'{}','{}')
;

INSERT INTO `licenses` (type, label) VALUES
  ('aircraft', "Brevet de pilotage")
;

CREATE TABLE `aircraftdealer_aircrafts` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`vehicle` varchar(255) NOT NULL,
	`price` int(11) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `owned_aircrafts` (
	`owner` varchar(30) NOT NULL,
	`plate` varchar(12) NOT NULL,
	`vehicle` longtext,

	PRIMARY KEY (`plate`)
);

CREATE TABLE `rented_aircrafts` (
	`vehicle` varchar(60) NOT NULL,
	`plate` varchar(12) NOT NULL,
	`player_name` varchar(255) NOT NULL,
	`base_price` int(11) NOT NULL,
	`rent_price` int(11) NOT NULL,
	`owner` varchar(30) NOT NULL,

	PRIMARY KEY (`plate`)
);

CREATE TABLE `aircraft_categories` (
	`name` varchar(60) NOT NULL,
	`label` varchar(60) NOT NULL,

	PRIMARY KEY (`name`)
);

INSERT INTO `aircraft_categories` (name, label) VALUES
	('plane','Planes'),
	('heli','Helicopters')
;

CREATE TABLE `aircrafts` (
	`name` varchar(60) NOT NULL,
	`model` varchar(60) NOT NULL,
	`price` int(11) NOT NULL,
	`category` varchar(60) DEFAULT NULL,
	PRIMARY KEY (`model`)
);

INSERT INTO `aircrafts` (name, model, price, category) VALUES
	('Alpha Z1', 'alphaz1', 1200000, 'plane'),
	('Besra', 'besra', 2500000, 'plane'),
	('Cuban 800', 'cuban800', 850000, 'plane'),
	('Dodo', 'dodo', 575000, 'plane'),
	('Duster', 'duster', 350000, 'plane'),
	('Howard NX25', 'howard', 975000, 'plane'),
	('Luxor', 'luxor', 2250000, 'plane'),
	('Luxor Deluxe ', 'luxor2', 2350000, 'plane'),
	('Mallard', 'stunt', 390000, 'plane'),
	('Mammatus', 'mammatus', 400000, 'plane'),
	('Nimbus', 'nimbus', 1500000, 'plane'),
	('Rogue', 'rogue', 1450000, 'plane'),
	('Sea Breeze', 'seabreeze', 1100000, 'plane'),
	('Shamal', 'shamal', 1950000, 'plane'),
	('Ultra Light', 'microlight', 125000, 'plane'),
	('Velum', 'velum2', 850000, 'plane'),
	('Vestra', 'vestra', 1600000, 'plane'),
	('Buzzard', 'buzzard2', 850000, 'heli'),
	('Frogger', 'frogger', 1600000, 'heli'),
	('Havok', 'havok', 500000, 'heli'),
	('Maverick', 'maverick', 1300000, 'heli'),
	('Sea Sparrow', 'seasparrow', 875000, 'heli'),
	('SuperVolito', 'supervolito', 2250000, 'heli'),
	('SuperVolito Carbon', 'supervolito2', 2500000, 'heli'),
	('Swift', 'swift', 2700000, 'heli'),
	('Swift Deluxe', 'swift2', 3000000, 'heli'),
	('Volatus', 'volatus', 3800000, 'heli')
;