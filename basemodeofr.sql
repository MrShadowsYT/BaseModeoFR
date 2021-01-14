-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 14 jan. 2021 à 19:11
-- Version du serveur :  10.4.13-MariaDB
-- Version de PHP : 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `basemodeofr`
--

-- --------------------------------------------------------

--
-- Structure de la table `addon_account`
--

CREATE TABLE `addon_account` (
  `name` varchar(60) NOT NULL,
  `label` varchar(100) NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `addon_account`
--

INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
('caution', 'Caution', 0),
('property_black_money', 'Argent Sale Propriété', 0),
('society_aircraftdealer', 'Concessionnaire d\'aeronefs', 1),
('society_ambulance', 'Ambulance', 1),
('society_bahama', 'bahama', 1),
('society_ballas', 'ballas', 1),
('society_cardealer', 'Concessionnaire', 1),
('society_dir', 'DIR', 1),
('society_Dolce', 'La Dolce Vita', 1),
('society_families', 'families', 1),
('society_mechanic', 'Mécano', 1),
('society_police', 'Police', 1),
('society_sheriff', 'Sheriff', 1),
('society_taxi', 'Taxi', 1),
('society_unicorn', 'Unicorn', 1),
('society_vigne', 'Vigneron', 1);

-- --------------------------------------------------------

--
-- Structure de la table `addon_account_data`
--

CREATE TABLE `addon_account_data` (
  `id` int(11) NOT NULL,
  `account_name` varchar(100) DEFAULT NULL,
  `money` int(11) NOT NULL,
  `owner` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `addon_account_data`
--

INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
(1, 'property_black_money', 0, 'steam:110000134bc8c01'),
(2, 'property_black_money', 0, 'steam:110000116d9cec8'),
(3, 'property_black_money', 0, 'steam:11000011b6f4f81'),
(4, 'society_aircraftdealer', 0, NULL),
(5, 'society_ambulance', 0, NULL),
(6, 'society_bahama', 0, NULL),
(7, 'society_cardealer', 0, NULL),
(8, 'society_Dolce', 0, NULL),
(9, 'society_mairie', 0, NULL),
(10, 'society_mechanic', 0, NULL),
(11, 'society_police', 0, NULL),
(12, 'society_sheriff', 0, NULL),
(13, 'society_taxi', 0, NULL),
(14, 'society_unicorn', 0, NULL),
(15, 'society_vigne', 0, NULL),
(16, 'caution', 0, 'steam:11000011b6f4f81'),
(17, 'society_dir', 0, NULL),
(18, 'society_policenationale', 0, NULL),
(19, 'society_ballas', 0, NULL),
(20, 'society_families', 0, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `addon_inventory`
--

CREATE TABLE `addon_inventory` (
  `name` varchar(60) NOT NULL,
  `label` varchar(100) NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `addon_inventory`
--

INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
('property', 'Propriété', 0),
('society_aircraftdealer', 'Concessionnaire d\'aeronefs', 1),
('society_ambulance', 'Ambulance', 1),
('society_bahama', 'bahama', 1),
('society_bahama_fridge', 'bahama (frigo)', 1),
('society_ballas', 'ballas', 1),
('society_cardealer', 'Concesionnaire', 1),
('society_dir', 'DIR', 1),
('society_Dolce', 'La Dolce Vita', 1),
('society_Dolce_fridge', 'La Dolce Vita (frigo)', 1),
('society_families', 'families', 1),
('society_mairie', 'Mairie', 1),
('society_mechanic', 'Mécano', 1),
('society_police', 'Police', 1),
('society_policenationale', 'police nationale', 1),
('society_sheriff', 'Sheriff', 1),
('society_taxi', 'Taxi', 1),
('society_unicorn', 'Unicorn', 1),
('society_unicorn_fridge', 'Unicorn (frigo)', 1),
('society_vigne', 'Vigneron', 1);

-- --------------------------------------------------------

--
-- Structure de la table `addon_inventory_items`
--

CREATE TABLE `addon_inventory_items` (
  `id` int(11) NOT NULL,
  `inventory_name` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `count` int(11) NOT NULL,
  `owner` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `adr`
--

CREATE TABLE `adr` (
  `id` int(11) NOT NULL,
  `author` text NOT NULL,
  `date` text NOT NULL,
  `firstname` text NOT NULL,
  `lastname` text NOT NULL,
  `reason` text NOT NULL,
  `dangerosity` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `aircraftdealer_aircrafts`
--

CREATE TABLE `aircraftdealer_aircrafts` (
  `id` int(11) NOT NULL,
  `vehicle` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `aircrafts`
--

CREATE TABLE `aircrafts` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `aircrafts`
--

INSERT INTO `aircrafts` (`name`, `model`, `price`, `category`) VALUES
('Alpha Z1', 'alphaz1', 1200000, 'plane'),
('Besra', 'besra', 2500000, 'plane'),
('Buzzard', 'buzzard2', 850000, 'heli'),
('Cuban 800', 'cuban800', 850000, 'plane'),
('Dodo', 'dodo', 575000, 'plane'),
('Duster', 'duster', 350000, 'plane'),
('Frogger', 'frogger', 1600000, 'heli'),
('Havok', 'havok', 500000, 'heli'),
('Howard NX25', 'howard', 975000, 'plane'),
('Luxor', 'luxor', 2250000, 'plane'),
('Luxor Deluxe ', 'luxor2', 2350000, 'plane'),
('Mammatus', 'mammatus', 400000, 'plane'),
('Maverick', 'maverick', 1300000, 'heli'),
('Ultra Light', 'microlight', 125000, 'plane'),
('Nimbus', 'nimbus', 1500000, 'plane'),
('Rogue', 'rogue', 1450000, 'plane'),
('Sea Breeze', 'seabreeze', 1100000, 'plane'),
('Sea Sparrow', 'seasparrow', 875000, 'heli'),
('Shamal', 'shamal', 1950000, 'plane'),
('Mallard', 'stunt', 390000, 'plane'),
('SuperVolito', 'supervolito', 2250000, 'heli'),
('SuperVolito Carbon', 'supervolito2', 2500000, 'heli'),
('Swift', 'swift', 2700000, 'heli'),
('Swift Deluxe', 'swift2', 3000000, 'heli'),
('Velum', 'velum2', 850000, 'plane'),
('Vestra', 'vestra', 1600000, 'plane'),
('Volatus', 'volatus', 3800000, 'heli');

-- --------------------------------------------------------

--
-- Structure de la table `aircraft_categories`
--

CREATE TABLE `aircraft_categories` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `aircraft_categories`
--

INSERT INTO `aircraft_categories` (`name`, `label`) VALUES
('heli', 'Helicopters'),
('plane', 'Planes');

-- --------------------------------------------------------

--
-- Structure de la table `billing`
--

CREATE TABLE `billing` (
  `id` int(11) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `target_type` varchar(50) NOT NULL,
  `target` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `characters`
--

CREATE TABLE `characters` (
  `id` int(11) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `dateofbirth` varchar(255) NOT NULL,
  `sex` varchar(1) NOT NULL DEFAULT 'M',
  `height` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `characters`
--

INSERT INTO `characters` (`id`, `identifier`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`) VALUES
(1, 'steam:11000011b6f4f81', 'John', 'Coks', '1998/09/09', 'm', '180'),
(2, 'steam:11000011b6f4f81', 'John', 'Coks', '09-09-1998', 'm', '180');

-- --------------------------------------------------------

--
-- Structure de la table `datastore`
--

CREATE TABLE `datastore` (
  `name` varchar(60) NOT NULL,
  `label` varchar(100) NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `datastore`
--

INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
('property', 'Propriété', 0),
('society_ambulance', 'Ambulance', 1),
('society_bahama', 'bahama', 1),
('society_ballas', 'ballas', 1),
('society_Dolce', 'La Dolce Vita', 1),
('society_families', 'families', 1),
('society_mairie', 'Mairie', 1),
('society_police', 'Police', 1),
('society_policenationale', 'police nationale', 1),
('society_sheriff', 'Sheriff', 1),
('society_taxi', 'Taxi', 1),
('society_unicorn', 'Unicorn', 1),
('society_vigne', 'Vigneron', 1),
('user_ears', 'Ears', 0),
('user_glasses', 'Glasses', 0),
('user_helmet', 'Helmet', 0),
('user_mask', 'Mask', 0);

-- --------------------------------------------------------

--
-- Structure de la table `datastore_data`
--

CREATE TABLE `datastore_data` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `data` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `datastore_data`
--

INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
(1, 'property', 'steam:110000134bc8c01', '{}'),
(2, 'user_ears', 'steam:110000134bc8c01', '{}'),
(3, 'user_glasses', 'steam:110000134bc8c01', '{}'),
(4, 'user_helmet', 'steam:110000134bc8c01', '{}'),
(5, 'user_mask', 'steam:110000134bc8c01', '{}'),
(6, 'property', 'steam:110000116d9cec8', '{}'),
(7, 'user_ears', 'steam:110000116d9cec8', '{}'),
(8, 'user_helmet', 'steam:110000116d9cec8', '{}'),
(9, 'user_mask', 'steam:110000116d9cec8', '{}'),
(10, 'user_glasses', 'steam:110000116d9cec8', '{}'),
(11, 'property', 'steam:11000011b6f4f81', '{}'),
(12, 'user_ears', 'steam:11000011b6f4f81', '{}'),
(13, 'user_glasses', 'steam:11000011b6f4f81', '{}'),
(14, 'user_helmet', 'steam:11000011b6f4f81', '{}'),
(15, 'user_mask', 'steam:11000011b6f4f81', '{}'),
(16, 'society_ambulance', NULL, '{}'),
(17, 'society_bahama', NULL, '{}'),
(18, 'society_Dolce', NULL, '{}'),
(19, 'society_mairie', NULL, '{}'),
(20, 'society_police', NULL, '{}'),
(21, 'society_sheriff', NULL, '{}'),
(22, 'society_taxi', NULL, '{}'),
(23, 'society_unicorn', NULL, '{}'),
(24, 'society_vigne', NULL, '{}'),
(25, 'society_policenationale', NULL, '{}'),
(26, 'society_ballas', NULL, '{}'),
(27, 'society_families', NULL, '{}');

-- --------------------------------------------------------

--
-- Structure de la table `entreprises_data`
--

CREATE TABLE `entreprises_data` (
  `label` varchar(80) NOT NULL,
  `items` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `entreprises_data`
--

INSERT INTO `entreprises_data` (`label`, `items`) VALUES
('aircraftdealer', '[]'),
('ambulance', '[]'),
('bahama', '[]'),
('ballas', '[]'),
('cardealer', '[]'),
('dir', '[]'),
('Dolce', '[]'),
('families', '[]'),
('fisherman', '[]'),
('fueler', '[]'),
('lumberjack', '[]'),
('mairie', '[]'),
('mechanic', '[]'),
('miner', '[]'),
('police', '[]'),
('reporter', '[]'),
('sheriff', '[]'),
('slaughterer', '[]'),
('tailor', '[]'),
('taxi', '[]'),
('unemployed', '[]'),
('unemployed2', '[]'),
('unicorn', '[]'),
('vigne', '[]');

-- --------------------------------------------------------

--
-- Structure de la table `fine_types`
--

CREATE TABLE `fine_types` (
  `id` int(11) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `fine_types`
--

INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
(1, 'Usage abusif du klaxon', 30, 0),
(2, 'Franchir une ligne continue', 40, 0),
(3, 'Circulation à contresens', 250, 0),
(4, 'Demi-tour non autorisé', 250, 0),
(5, 'Circulation hors-route', 170, 0),
(6, 'Non-respect des distances de sécurité', 30, 0),
(7, 'Arrêt dangereux / interdit', 150, 0),
(8, 'Stationnement gênant / interdit', 70, 0),
(9, 'Non respect  de la priorité à droite', 70, 0),
(10, 'Non-respect à un véhicule prioritaire', 90, 0),
(11, 'Non-respect d\'un stop', 105, 0),
(12, 'Non-respect d\'un feu rouge', 130, 0),
(13, 'Dépassement dangereux', 100, 0),
(14, 'Véhicule non en état', 100, 0),
(15, 'Conduite sans permis', 1500, 0),
(16, 'Délit de fuite', 800, 0),
(17, 'Excès de vitesse < 5 kmh', 90, 0),
(18, 'Excès de vitesse 5-15 kmh', 120, 0),
(19, 'Excès de vitesse 15-30 kmh', 180, 0),
(20, 'Excès de vitesse > 30 kmh', 300, 0),
(21, 'Entrave de la circulation', 110, 1),
(22, 'Dégradation de la voie publique', 90, 1),
(23, 'Trouble à l\'ordre publique', 90, 1),
(24, 'Entrave opération de police', 130, 1),
(25, 'Insulte envers / entre civils', 75, 1),
(26, 'Outrage à agent de police', 110, 1),
(27, 'Menace verbale ou intimidation envers civil', 90, 1),
(28, 'Menace verbale ou intimidation envers policier', 150, 1),
(29, 'Manifestation illégale', 250, 1),
(30, 'Tentative de corruption', 1500, 1),
(31, 'Arme blanche sortie en ville', 120, 2),
(32, 'Arme léthale sortie en ville', 300, 2),
(33, 'Port d\'arme non autorisé (défaut de license)', 600, 2),
(34, 'Port d\'arme illégal', 700, 2),
(35, 'Pris en flag lockpick', 300, 2),
(36, 'Vol de voiture', 1800, 2),
(37, 'Vente de drogue', 1500, 2),
(38, 'Fabriquation de drogue', 1500, 2),
(39, 'Possession de drogue', 650, 2),
(40, 'Prise d\'ôtage civil', 1500, 2),
(41, 'Prise d\'ôtage agent de l\'état', 2000, 2),
(42, 'Braquage particulier', 650, 2),
(43, 'Braquage magasin', 650, 2),
(44, 'Braquage de banque', 1500, 2),
(45, 'Tir sur civil', 2000, 3),
(46, 'Tir sur agent de l\'état', 2500, 3),
(47, 'Tentative de meurtre sur civil', 3000, 3),
(48, 'Tentative de meurtre sur agent de l\'état', 5000, 3),
(49, 'Meurtre sur civil', 10000, 3),
(50, 'Meurte sur agent de l\'état', 30000, 3),
(51, 'Meurtre involontaire', 1800, 3),
(52, 'Escroquerie à l\'entreprise', 2000, 2),
(53, 'Usage abusif du klaxon', 30, 0),
(54, 'Franchir une ligne continue', 40, 0),
(55, 'Circulation à contresens', 250, 0),
(56, 'Demi-tour non autorisé', 250, 0),
(57, 'Circulation hors-route', 170, 0),
(58, 'Non-respect des distances de sécurité', 30, 0),
(59, 'Arrêt dangereux / interdit', 150, 0),
(60, 'Stationnement gênant / interdit', 70, 0),
(61, 'Non respect  de la priorité à droite', 70, 0),
(62, 'Non-respect à un véhicule prioritaire', 90, 0),
(63, 'Non-respect d\'un stop', 105, 0),
(64, 'Non-respect d\'un feu rouge', 130, 0),
(65, 'Dépassement dangereux', 100, 0),
(66, 'Véhicule non en état', 100, 0),
(67, 'Conduite sans permis', 1500, 0),
(68, 'Délit de fuite', 800, 0),
(69, 'Excès de vitesse < 5 kmh', 90, 0),
(70, 'Excès de vitesse 5-15 kmh', 120, 0),
(71, 'Excès de vitesse 15-30 kmh', 180, 0),
(72, 'Excès de vitesse > 30 kmh', 300, 0),
(73, 'Entrave de la circulation', 110, 1),
(74, 'Dégradation de la voie publique', 90, 1),
(75, 'Trouble à l\'ordre publique', 90, 1),
(76, 'Entrave opération de police', 130, 1),
(77, 'Insulte envers / entre civils', 75, 1),
(78, 'Outrage à agent de police', 110, 1),
(79, 'Menace verbale ou intimidation envers civil', 90, 1),
(80, 'Menace verbale ou intimidation envers policier', 150, 1),
(81, 'Manifestation illégale', 250, 1),
(82, 'Tentative de corruption', 1500, 1),
(83, 'Arme blanche sortie en ville', 120, 2),
(84, 'Arme léthale sortie en ville', 300, 2),
(85, 'Port d\'arme non autorisé (défaut de license)', 600, 2),
(86, 'Port d\'arme illégal', 700, 2),
(87, 'Pris en flag lockpick', 300, 2),
(88, 'Vol de voiture', 1800, 2),
(89, 'Vente de drogue', 1500, 2),
(90, 'Fabriquation de drogue', 1500, 2),
(91, 'Possession de drogue', 650, 2),
(92, 'Prise d\'ôtage civil', 1500, 2),
(93, 'Prise d\'ôtage agent de l\'état', 2000, 2),
(94, 'Braquage particulier', 650, 2),
(95, 'Braquage magasin', 650, 2),
(96, 'Braquage de banque', 1500, 2),
(97, 'Tir sur civil', 2000, 3),
(98, 'Tir sur agent de l\'état', 2500, 3),
(99, 'Tentative de meurtre sur civil', 3000, 3),
(100, 'Tentative de meurtre sur agent de l\'état', 5000, 3),
(101, 'Meurtre sur civil', 10000, 3),
(102, 'Meurte sur agent de l\'état', 30000, 3),
(103, 'Meurtre involontaire', 1800, 3),
(104, 'Escroquerie à l\'entreprise', 2000, 2);

-- --------------------------------------------------------

--
-- Structure de la table `fine_types_ballas`
--

CREATE TABLE `fine_types_ballas` (
  `id` int(11) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `fine_types_ballas`
--

INSERT INTO `fine_types_ballas` (`id`, `label`, `amount`, `category`) VALUES
(1, 'Raket', 3000, 0),
(2, 'Raket', 5000, 0),
(3, 'Raket', 10000, 1),
(4, 'Raket', 20000, 1),
(5, 'Raket', 50000, 2),
(6, 'Raket', 150000, 3),
(7, 'Raket', 350000, 3);

-- --------------------------------------------------------

--
-- Structure de la table `items`
--

CREATE TABLE `items` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  `limit` int(11) NOT NULL DEFAULT -1,
  `rare` int(11) NOT NULL DEFAULT 0,
  `can_remove` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `items`
--

INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`) VALUES
('affaires', 'Document classées', 100, 0, 1),
('alcool', 'Baileys', 5, 0, 1),
('alive_chicken', 'Poulet vivant', 25, 0, 1),
('bandage', 'Bandage', -1, 0, 1),
('battery', 'Vehicle Battery', -1, 0, 1),
('blowpipe', 'Chalumeaux', 10, 0, 1),
('bolcacahuetes', 'Bol de cacahuètes', 5, 0, 1),
('bolchips', 'Bol de chips', 5, 0, 1),
('bolnoixcajou', 'Bol de noix de cajou', 5, 0, 1),
('bolpistache', 'Bol de pistaches', 5, 0, 1),
('bonnet', 'Vehicle Bonnet', -1, 0, 1),
('bread', 'Pain', 10, 0, 1),
('caisse_alcool', 'Caisse d\'Alcool', -1, 0, 1),
('caisse_traiter', 'Caisse d\'Alcool traitée', -1, 0, 1),
('carokit', 'Kit carosserie', 3, 0, 1),
('carotool', 'outils carosserie', 4, 0, 1),
('cartebanque', 'Carte De Banque', 10, 0, 1),
('cheesecake', 'Cheesecake', 3, 0, 1),
('cigarette', 'cigarette', 10, 0, 1),
('clothe', 'Vêtement', 50, 0, 1),
('coffee', 'Café', 5, 0, 1),
('contract', 'Contract de vente', 5, 0, 1),
('copper', 'Cuivre', 50, 0, 1),
('cutted_wood', 'Bois coupé', 25, 0, 1),
('diamond', 'Diamant', 1, 0, 1),
('door', 'Vehicle Door', -1, 0, 1),
('drpepper', 'Dr. Pepper', 5, 0, 1),
('energy', 'Monster', 5, 0, 1),
('engine_0', 'Compact Engine Block', -1, 0, 1),
('engine_1', 'Sedan Engine Block', -1, 0, 1),
('engine_12', 'Van Engine Block', -1, 0, 1),
('engine_18', 'Emergency Engine Block', -1, 0, 1),
('engine_19', 'Military Engine Block', -1, 0, 1),
('engine_2', 'SUV Engine Block', -1, 0, 1),
('engine_3', 'Coupe Engine Block', -1, 0, 1),
('engine_4', 'Muscle Engine Block', -1, 0, 1),
('engine_5', 'Sports Classics Engine Block', -1, 0, 1),
('engine_6', 'Sports Engine Block', -1, 0, 1),
('engine_7', 'Super Engine Block', -1, 0, 1),
('engine_8', 'Motorcycle Engine Block', -1, 0, 1),
('engine_9', 'Off-road Engine Block', -1, 0, 1),
('enquetes', 'Documents administratif', 100, 0, 1),
('essence', 'Essence', 50, 0, 1),
('exhaust', 'Exhaust Pipe', -1, 0, 1),
('fabric', 'Tissu', 25, 0, 1),
('fish', 'Poisson', 50, 0, 1),
('fixkit', 'Kit réparation', 5, 0, 1),
('fixtool', 'outils réparation', 6, 0, 1),
('gazbottle', 'bouteille de gaz', 11, 0, 1),
('get', 'Get 27', 3, 0, 1),
('gold', 'Or', 20, 0, 1),
('golem', 'Golem', 5, 0, 1),
('grand_cru', 'Grand cru', -1, 0, 1),
('grapperaisin', 'Grappe de raisin', 5, 0, 1),
('gym_membership', 'Licence de Boxe', -1, 0, 1),
('ice', 'Glaçon', 5, 0, 1),
('icetea', 'Ice Tea', 5, 0, 1),
('iron', 'Fer', 40, 0, 1),
('jager', 'Jägermeister', 5, 0, 1),
('jagerbomb', 'Jägerbomb', 5, 0, 1),
('jagercerbere', 'Jäger Cerbère', 3, 0, 1),
('jusfruit', 'Jus de fruits', 5, 0, 1),
('jus_raisin', 'Jus de raisin', -1, 0, 1),
('limonade', 'Limonade', 5, 0, 1),
('magnum', 'Alyssa Magnum', 3, 0, 1),
('martini', 'Martini blanc', 5, 0, 1),
('medikit', 'Medikit', -1, 0, 1),
('menthe', 'Feuille de menthe', 10, 0, 1),
('menu1', 'Moules Frites', 3, 0, 1),
('menu2', 'Pavé de Saumon Tagliatelles', 3, 0, 1),
('menu3', 'Frites Burger', 3, 0, 1),
('metreshooter', 'Mètre de shooter', 3, 0, 1),
('mixapero', 'Mix Apéro', 5, 0, 1),
('mojito', 'Mojito', 5, 0, 1),
('myrtealcool', 'Alcool de Myrte', 5, 0, 1),
('packaged_chicken', 'Poulet en barquette', 50, 0, 1),
('packaged_plank', 'Paquet de planches', 50, 0, 1),
('pastis', 'Pastis 51', 3, 0, 1),
('petrol', 'Pétrole', 25, 0, 1),
('petrol_raffin', 'Pétrole Raffiné', 25, 0, 1),
('pizza', 'Pizza', -1, 0, 1),
('powerade', 'Boisson powerade', -1, 0, 1),
('protein_shake', 'Boisson protéinée', -1, 0, 1),
('raisin', 'Raisin', -1, 0, 1),
('redbull', 'RedBull', 5, 0, 1),
('rhum', 'Rhum', 5, 0, 1),
('rhumcoca', 'Rhum-coca', 5, 0, 1),
('rhumfruit', 'Rhum-jus de fruits', 5, 0, 1),
('salade', 'Salade du Coin', 5, 0, 1),
('saucisson', 'Saucisson', 5, 0, 1),
('seat', 'Vehicle Seat', -1, 0, 1),
('sim', 'Carte SIM', 10, 0, 1),
('slaughtered_chicken', 'Poulet abattu', 25, 0, 1),
('soda', 'Coca-Cola', 5, 0, 1),
('sportlunch', 'Barre protéiné', -1, 0, 1),
('stone', 'Pierre', 10, 0, 1),
('tapas', 'Tapas Fruit de Mer', 5, 0, 1),
('tel', 'Téléphone', 10, 0, 1),
('teqpaf', 'Teq\'paf', 5, 0, 1),
('tequila', 'Tequila', 5, 0, 1),
('trunk', 'Vehicle Trunk', -1, 0, 1),
('vine', 'Vin', -1, 0, 1),
('vodka', 'Vodka', 5, 0, 1),
('vodkaenergy', 'Vodka-Monster', 5, 0, 1),
('vodkafruit', 'Vodka-jus de fruits', 5, 0, 1),
('vodkrb', 'Vodka RedBull', 5, 0, 1),
('washed_stone', 'Pierre Lavée', 10, 0, 1),
('water', 'Eau', 5, 0, 1),
('wheel', 'Vehicle Wheel', -1, 0, 1),
('whisky', 'Whisky', 5, 0, 1),
('whiskycoc', 'Whisky-coca', 5, 0, 1),
('whiskycoca', 'Whisky-coca', 5, 0, 1),
('wood', 'Bois', 25, 0, 1),
('wool', 'Laine', 25, 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `jobs`
--

CREATE TABLE `jobs` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) DEFAULT NULL,
  `whitelisted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `jobs`
--

INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
('aircraftdealer', 'Concessionnaire d\'aeronefs', 0),
('ambulance', 'Ambulance', 0),
('bahama', 'bahama', 1),
('ballas', 'Ballas', 0),
('cardealer', 'Concessionnaire', 0),
('dir', 'DIR', 0),
('Dolce', 'La Dolce Vita', 1),
('families', 'families', 1),
('fisherman', 'Pêcheur', 0),
('fueler', 'Raffineur', 0),
('lumberjack', 'Bûcheron', 0),
('mairie', 'Mairie', 0),
('mechanic', 'Mécano', 0),
('miner', 'Mineur', 0),
('police', 'Police Nationale', 0),
('reporter', 'Journaliste', 0),
('sheriff', 'Sheriff', 0),
('slaughterer', 'Abatteur', 0),
('tailor', 'Couturier', 0),
('taxi', 'Taxi', 0),
('unemployed', '• Chomeur', 0),
('unemployed2', 'Etat', 1),
('unicorn', 'Unicorn', 0),
('vigne', 'Vigneron', 1);

-- --------------------------------------------------------

--
-- Structure de la table `job_grades`
--

CREATE TABLE `job_grades` (
  `id` int(11) NOT NULL,
  `job_name` varchar(50) DEFAULT NULL,
  `grade` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  `salary` int(11) NOT NULL,
  `skin_male` longtext NOT NULL,
  `skin_female` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `job_grades`
--

INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
(1, 'unemployed', 0, 'unemployed', 'Pole emploi', 50, '{}', '{}'),
(256, 'unemployed2', 0, 'rsa', 'Civil', 5, '{}', '{}'),
(1479, 'lumberjack', 0, 'employee', 'Intérimaire', 0, '{}', '{}'),
(1480, 'fisherman', 0, 'employee', 'Intérimaire', 0, '{}', '{}'),
(1481, 'fueler', 0, 'employee', 'Intérimaire', 0, '{}', '{}'),
(1482, 'reporter', 0, 'employee', 'Intérimaire', 0, '{}', '{}'),
(1483, 'tailor', 0, 'employee', 'Intérimaire', 0, '{\"mask_1\":0,\"arms\":1,\"glasses_1\":0,\"hair_color_2\":4,\"makeup_1\":0,\"face\":19,\"glasses\":0,\"mask_2\":0,\"makeup_3\":0,\"skin\":29,\"helmet_2\":0,\"lipstick_4\":0,\"sex\":0,\"torso_1\":24,\"makeup_2\":0,\"bags_2\":0,\"chain_2\":0,\"ears_1\":-1,\"bags_1\":0,\"bproof_1\":0,\"shoes_2\":0,\"lipstick_2\":0,\"chain_1\":0,\"tshirt_1\":0,\"eyebrows_3\":0,\"pants_2\":0,\"beard_4\":0,\"torso_2\":0,\"beard_2\":6,\"ears_2\":0,\"hair_2\":0,\"shoes_1\":36,\"tshirt_2\":0,\"beard_3\":0,\"hair_1\":2,\"hair_color_1\":0,\"pants_1\":48,\"helmet_1\":-1,\"bproof_2\":0,\"eyebrows_4\":0,\"eyebrows_2\":0,\"decals_1\":0,\"age_2\":0,\"beard_1\":5,\"shoes\":10,\"lipstick_1\":0,\"eyebrows_1\":0,\"glasses_2\":0,\"makeup_4\":0,\"decals_2\":0,\"lipstick_3\":0,\"age_1\":0}', '{\"mask_1\":0,\"arms\":5,\"glasses_1\":5,\"hair_color_2\":4,\"makeup_1\":0,\"face\":19,\"glasses\":0,\"mask_2\":0,\"makeup_3\":0,\"skin\":29,\"helmet_2\":0,\"lipstick_4\":0,\"sex\":1,\"torso_1\":52,\"makeup_2\":0,\"bags_2\":0,\"chain_2\":0,\"ears_1\":-1,\"bags_1\":0,\"bproof_1\":0,\"shoes_2\":1,\"lipstick_2\":0,\"chain_1\":0,\"tshirt_1\":23,\"eyebrows_3\":0,\"pants_2\":0,\"beard_4\":0,\"torso_2\":0,\"beard_2\":6,\"ears_2\":0,\"hair_2\":0,\"shoes_1\":42,\"tshirt_2\":4,\"beard_3\":0,\"hair_1\":2,\"hair_color_1\":0,\"pants_1\":36,\"helmet_1\":-1,\"bproof_2\":0,\"eyebrows_4\":0,\"eyebrows_2\":0,\"decals_1\":0,\"age_2\":0,\"beard_1\":5,\"shoes\":10,\"lipstick_1\":0,\"eyebrows_1\":0,\"glasses_2\":0,\"makeup_4\":0,\"decals_2\":0,\"lipstick_3\":0,\"age_1\":0}'),
(1484, 'miner', 0, 'employee', 'Intérimaire', 0, '{\"tshirt_2\":1,\"ears_1\":8,\"glasses_1\":15,\"torso_2\":0,\"ears_2\":2,\"glasses_2\":3,\"shoes_2\":1,\"pants_1\":75,\"shoes_1\":51,\"bags_1\":0,\"helmet_2\":0,\"pants_2\":7,\"torso_1\":71,\"tshirt_1\":59,\"arms\":2,\"bags_2\":0,\"helmet_1\":0}', '{}'),
(1485, 'slaughterer', 0, 'employee', 'Intérimaire', 0, '{\"age_1\":0,\"glasses_2\":0,\"beard_1\":5,\"decals_2\":0,\"beard_4\":0,\"shoes_2\":0,\"tshirt_2\":0,\"lipstick_2\":0,\"hair_2\":0,\"arms\":67,\"pants_1\":36,\"skin\":29,\"eyebrows_2\":0,\"shoes\":10,\"helmet_1\":-1,\"lipstick_1\":0,\"helmet_2\":0,\"hair_color_1\":0,\"glasses\":0,\"makeup_4\":0,\"makeup_1\":0,\"hair_1\":2,\"bproof_1\":0,\"bags_1\":0,\"mask_1\":0,\"lipstick_3\":0,\"chain_1\":0,\"eyebrows_4\":0,\"sex\":0,\"torso_1\":56,\"beard_2\":6,\"shoes_1\":12,\"decals_1\":0,\"face\":19,\"lipstick_4\":0,\"tshirt_1\":15,\"mask_2\":0,\"age_2\":0,\"eyebrows_3\":0,\"chain_2\":0,\"glasses_1\":0,\"ears_1\":-1,\"bags_2\":0,\"ears_2\":0,\"torso_2\":0,\"bproof_2\":0,\"makeup_2\":0,\"eyebrows_1\":0,\"makeup_3\":0,\"pants_2\":0,\"beard_3\":0,\"hair_color_2\":4}', '{\"age_1\":0,\"glasses_2\":0,\"beard_1\":5,\"decals_2\":0,\"beard_4\":0,\"shoes_2\":0,\"tshirt_2\":0,\"lipstick_2\":0,\"hair_2\":0,\"arms\":72,\"pants_1\":45,\"skin\":29,\"eyebrows_2\":0,\"shoes\":10,\"helmet_1\":-1,\"lipstick_1\":0,\"helmet_2\":0,\"hair_color_1\":0,\"glasses\":0,\"makeup_4\":0,\"makeup_1\":0,\"hair_1\":2,\"bproof_1\":0,\"bags_1\":0,\"mask_1\":0,\"lipstick_3\":0,\"chain_1\":0,\"eyebrows_4\":0,\"sex\":1,\"torso_1\":49,\"beard_2\":6,\"shoes_1\":24,\"decals_1\":0,\"face\":19,\"lipstick_4\":0,\"tshirt_1\":9,\"mask_2\":0,\"age_2\":0,\"eyebrows_3\":0,\"chain_2\":0,\"glasses_1\":5,\"ears_1\":-1,\"bags_2\":0,\"ears_2\":0,\"torso_2\":0,\"bproof_2\":0,\"makeup_2\":0,\"eyebrows_1\":0,\"makeup_3\":0,\"pants_2\":0,\"beard_3\":0,\"hair_color_2\":4}'),
(1486, 'unicorn', 0, 'barman', 'Agent d\'accueil', 1200, '{}', '{}'),
(1487, 'unicorn', 1, 'dancer', 'Barman / Danseur', 1400, '{}', '{}'),
(1488, 'unicorn', 2, 'viceboss', 'Manager', 1600, '{}', '{}'),
(1489, 'unicorn', 3, 'boss', 'Gérant', 2000, '{}', '{}'),
(1490, 'aircraftdealer', 0, 'recruit', 'eleve Pilote', 200, '{}', '{}'),
(1491, 'aircraftdealer', 1, 'novice', 'Pilotes Professionnels', 400, '{}', '{}'),
(1492, 'aircraftdealer', 2, 'experienced', 'Co-Pilote', 600, '{}', '{}'),
(1493, 'aircraftdealer', 3, 'boss', 'Commandants de Bord', 800, '{}', '{}'),
(1494, 'ambulance', 0, 'ambulance', 'Ambulancier', 20, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(1495, 'ambulance', 1, 'doctor', 'Medecin', 40, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(1496, 'ambulance', 2, 'chief_doctor', 'Medecin-chef', 60, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(1497, 'ambulance', 3, 'boss', 'Chirurgien', 80, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(1502, 'bahama', 0, 'barman', 'Barman', 300, '{}', '{}'),
(1503, 'bahama', 1, 'dj', 'DJ', 300, '{}', '{}'),
(1504, 'bahama', 2, 'secu', 'Sécurité', 300, '{}', '{}'),
(1505, 'bahama', 3, 'viceboss', 'Co-gérant', 500, '{}', '{}'),
(1506, 'bahama', 4, 'boss', 'Gérant', 600, '{}', '{}'),
(1512, 'Dolce', 0, 'barman', 'Serveur', 300, '{}', '{}'),
(1513, 'Dolce', 1, 'dancer', 'Cuisinier', 300, '{}', '{}'),
(1514, 'Dolce', 2, 'viceboss', 'Co-gérant', 500, '{}', '{}'),
(1515, 'Dolce', 3, 'boss', 'Gérant', 600, '{}', '{}'),
(1521, 'mechanic', 0, 'recrue', 'Recrue', 12, '{}', '{}'),
(1522, 'mechanic', 1, 'novice', 'Novice', 24, '{}', '{}'),
(1523, 'mechanic', 2, 'experimente', 'Experimente', 36, '{}', '{}'),
(1524, 'mechanic', 3, 'chief', 'Chef d\'équipe', 48, '{}', '{}'),
(1525, 'mechanic', 4, 'boss', 'Patron', 0, '{}', '{}'),
(1532, 'police', 6, 'boss', 'Commissaire', 900, '{}', '{}'),
(1533, 'sheriff', 0, 'recruit', 'Recrue', 20, '{}', '{}'),
(1534, 'sheriff', 1, 'officer', 'Deputy', 40, '{}', '{}'),
(1535, 'sheriff', 2, 'sergeant', 'Major', 60, '{}', '{}'),
(1536, 'sheriff', 4, 'lieutenant', 'Sheriff-Adjoint', 85, '{}', '{}'),
(1537, 'sheriff', 5, 'boss', 'Sheriff', 100, '{}', '{}'),
(1541, 'sheriff', 4, 'lieutenant', 'Sheriff-Adjoint', 85, '{}', '{}'),
(1542, 'sheriff', 5, 'boss', 'Sheriff', 100, '{}', '{}'),
(1543, 'taxi', 0, 'recrue', 'Recrue', 100, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":32,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":0,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":27,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(1544, 'taxi', 1, 'novice', 'Novice', 200, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":32,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":0,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":27,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(1545, 'taxi', 2, 'experimente', 'Experimente', 300, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":26,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":57,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":11,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(1546, 'taxi', 3, 'uber', 'Uber', 400, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":26,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":57,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":11,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(1547, 'taxi', 4, 'boss', 'Patron', 500, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":29,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":1,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":4,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(1548, 'cardealer', 0, 'recruit', 'Recrue', 200, '{}', '{}'),
(1549, 'cardealer', 1, 'novice', 'Novice', 300, '{}', '{}'),
(1550, 'cardealer', 2, 'experienced', 'Experimente', 400, '{}', '{}'),
(1551, 'cardealer', 3, 'boss', 'Patron', 500, '{}', '{}'),
(1552, 'vigne', 0, 'recrue', 'Intérimaire', 500, '{\"tshirt_1\":59,\"tshirt_2\":0,\"torso_1\":12,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":1, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(1553, 'vigne', 1, 'novice', 'Vigneron', 750, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(1554, 'vigne', 2, 'cdisenior', 'Chef de chai', 1200, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(1555, 'vigne', 3, 'boss', 'Patron', 1600, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":15,\"tshirt_2\":0,\"torso_1\":14,\"torso_2\":15,\"shoes_1\":12,\"shoes_2\":0,\"pants_1\":9, \"pants_2\":5, \"arms\":1, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(1556, 'dir', 0, 'recrue', 'Recrue', 12, '{}', '{}'),
(1557, 'dir', 1, 'novice', 'Novice', 24, '{}', '{}'),
(1558, 'dir', 2, 'experimente', 'Experimente', 36, '{}', '{}'),
(1559, 'dir', 3, 'chief', 'Chef d\'équipe', 48, '{}', '{}'),
(1560, 'dir', 4, 'boss', 'Patron', 0, '{}', '{}'),
(1571, 'police', 0, 'recruit', 'Recrue', 500, '{}', '{}'),
(1572, 'police', 1, 'officer', 'Officier', 40, '{}', '{}'),
(1573, 'police', 2, 'sergeant', 'Sergent', 60, '{}', '{}'),
(1574, 'police', 3, 'lieutenant', 'Lieutenant', 85, '{}', '{}'),
(1575, 'police', 4, 'boss', 'Commissaire', 100, '{}', '{}'),
(1576, 'ballas', 0, 'recruit', 'Recrue', 20, '{}', '{}'),
(1577, 'ballas', 1, 'gangster', 'Gangster', 40, '{}', '{}'),
(1578, 'ballas', 2, 'bandit', 'Bandit', 60, '{}', '{}'),
(1579, 'ballas', 3, 'boss', 'Chef du Gang', 100, '{}', '{}'),
(1580, 'families', 0, 'recru', 'Recrue', 0, '{}', '{}'),
(1581, 'families', 0, 'soldat', 'Soldat', 0, '{}', '{}'),
(1582, 'families', 2, 'bras-droit', 'Bras Droits', 0, '{}', '{}'),
(1583, 'families', 3, 'boss', 'Boss', 0, '{}', '{}');

-- --------------------------------------------------------

--
-- Structure de la table `licenses`
--

CREATE TABLE `licenses` (
  `type` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `licenses`
--

INSERT INTO `licenses` (`type`, `label`) VALUES
('aircraft', 'Brevet de pilotage'),
('boat', 'Permis plaisance hauturiere'),
('weapon2', 'PPA');

-- --------------------------------------------------------

--
-- Structure de la table `opod_projectcars`
--

CREATE TABLE `opod_projectcars` (
  `plate` varchar(12) NOT NULL,
  `model` varchar(12) DEFAULT NULL,
  `coords` varchar(60) DEFAULT NULL,
  `heading` float DEFAULT NULL,
  `data` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `owned_aircrafts`
--

CREATE TABLE `owned_aircrafts` (
  `owner` varchar(30) NOT NULL,
  `plate` varchar(12) NOT NULL,
  `vehicle` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `owned_properties`
--

CREATE TABLE `owned_properties` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `rented` int(11) NOT NULL,
  `owner` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `owned_vehicles`
--

CREATE TABLE `owned_vehicles` (
  `owner` varchar(30) NOT NULL,
  `plate` varchar(12) NOT NULL,
  `vehicle` longtext DEFAULT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'car',
  `job` varchar(20) DEFAULT NULL,
  `stored` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `phone_app_chat`
--

CREATE TABLE `phone_app_chat` (
  `id` int(11) NOT NULL,
  `channel` varchar(20) NOT NULL,
  `message` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `phone_calls`
--

CREATE TABLE `phone_calls` (
  `id` int(11) NOT NULL,
  `owner` varchar(10) NOT NULL COMMENT 'Num tel proprio',
  `num` varchar(10) NOT NULL COMMENT 'Num reférence du contact',
  `incoming` int(11) NOT NULL COMMENT 'Défini si on est à l''origine de l''appels',
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `accepts` int(11) NOT NULL COMMENT 'Appels accepter ou pas'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `phone_messages`
--

CREATE TABLE `phone_messages` (
  `id` int(11) NOT NULL,
  `transmitter` varchar(10) NOT NULL,
  `receiver` varchar(10) NOT NULL,
  `message` varchar(255) NOT NULL DEFAULT '0',
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `isRead` int(11) NOT NULL DEFAULT 0,
  `owner` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `phone_users_contacts`
--

CREATE TABLE `phone_users_contacts` (
  `id` int(11) NOT NULL,
  `identifier` varchar(60) CHARACTER SET utf8mb4 DEFAULT NULL,
  `number` varchar(10) CHARACTER SET utf8mb4 DEFAULT NULL,
  `display` varchar(64) CHARACTER SET utf8mb4 NOT NULL DEFAULT '-1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `properties`
--

CREATE TABLE `properties` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `entering` varchar(255) DEFAULT NULL,
  `exit` varchar(255) DEFAULT NULL,
  `inside` varchar(255) DEFAULT NULL,
  `outside` varchar(255) DEFAULT NULL,
  `ipls` varchar(255) DEFAULT '[]',
  `gateway` varchar(255) DEFAULT NULL,
  `is_single` int(11) DEFAULT NULL,
  `is_room` int(11) DEFAULT NULL,
  `is_gateway` int(11) DEFAULT NULL,
  `room_menu` varchar(255) DEFAULT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `properties`
--

INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
(1, 'WhispymoundDrive', '2677 Whispymound Drive', '{\"y\":564.89,\"z\":182.959,\"x\":119.384}', '{\"x\":117.347,\"y\":559.506,\"z\":183.304}', '{\"y\":557.032,\"z\":183.301,\"x\":118.037}', '{\"y\":567.798,\"z\":182.131,\"x\":119.249}', '[]', NULL, 1, 1, 0, '{\"x\":118.748,\"y\":566.573,\"z\":175.697}', 1500000),
(2, 'NorthConkerAvenue2045', '2045 North Conker Avenue', '{\"x\":372.796,\"y\":428.327,\"z\":144.685}', '{\"x\":373.548,\"y\":422.982,\"z\":144.907},', '{\"y\":420.075,\"z\":145.904,\"x\":372.161}', '{\"x\":372.454,\"y\":432.886,\"z\":143.443}', '[]', NULL, 1, 1, 0, '{\"x\":377.349,\"y\":429.422,\"z\":137.3}', 1500000),
(3, 'RichardMajesticApt2', 'Richard Majestic, Apt 2', '{\"y\":-379.165,\"z\":37.961,\"x\":-936.363}', '{\"y\":-365.476,\"z\":113.274,\"x\":-913.097}', '{\"y\":-367.637,\"z\":113.274,\"x\":-918.022}', '{\"y\":-382.023,\"z\":37.961,\"x\":-943.626}', '[]', NULL, 1, 1, 0, '{\"x\":-927.554,\"y\":-377.744,\"z\":112.674}', 1700000),
(4, 'NorthConkerAvenue2044', '2044 North Conker Avenue', '{\"y\":440.8,\"z\":146.702,\"x\":346.964}', '{\"y\":437.456,\"z\":148.394,\"x\":341.683}', '{\"y\":435.626,\"z\":148.394,\"x\":339.595}', '{\"x\":350.535,\"y\":443.329,\"z\":145.764}', '[]', NULL, 1, 1, 0, '{\"x\":337.726,\"y\":436.985,\"z\":140.77}', 1500000),
(5, 'WildOatsDrive', '3655 Wild Oats Drive', '{\"y\":502.696,\"z\":136.421,\"x\":-176.003}', '{\"y\":497.817,\"z\":136.653,\"x\":-174.349}', '{\"y\":495.069,\"z\":136.666,\"x\":-173.331}', '{\"y\":506.412,\"z\":135.0664,\"x\":-177.927}', '[]', NULL, 1, 1, 0, '{\"x\":-174.725,\"y\":493.095,\"z\":129.043}', 1500000),
(6, 'HillcrestAvenue2862', '2862 Hillcrest Avenue', '{\"y\":596.58,\"z\":142.641,\"x\":-686.554}', '{\"y\":591.988,\"z\":144.392,\"x\":-681.728}', '{\"y\":590.608,\"z\":144.392,\"x\":-680.124}', '{\"y\":599.019,\"z\":142.059,\"x\":-689.492}', '[]', NULL, 1, 1, 0, '{\"x\":-680.46,\"y\":588.6,\"z\":136.769}', 1500000),
(7, 'LowEndApartment', 'Appartement de base', '{\"y\":-1078.735,\"z\":28.4031,\"x\":292.528}', '{\"y\":-1007.152,\"z\":-102.002,\"x\":265.845}', '{\"y\":-1002.802,\"z\":-100.008,\"x\":265.307}', '{\"y\":-1078.669,\"z\":28.401,\"x\":296.738}', '[]', NULL, 1, 1, 0, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 562500),
(8, 'MadWayneThunder', '2113 Mad Wayne Thunder', '{\"y\":454.955,\"z\":96.462,\"x\":-1294.433}', '{\"x\":-1289.917,\"y\":449.541,\"z\":96.902}', '{\"y\":446.322,\"z\":96.899,\"x\":-1289.642}', '{\"y\":455.453,\"z\":96.517,\"x\":-1298.851}', '[]', NULL, 1, 1, 0, '{\"x\":-1287.306,\"y\":455.901,\"z\":89.294}', 1500000),
(9, 'HillcrestAvenue2874', '2874 Hillcrest Avenue', '{\"x\":-853.346,\"y\":696.678,\"z\":147.782}', '{\"y\":690.875,\"z\":151.86,\"x\":-859.961}', '{\"y\":688.361,\"z\":151.857,\"x\":-859.395}', '{\"y\":701.628,\"z\":147.773,\"x\":-855.007}', '[]', NULL, 1, 1, 0, '{\"x\":-858.543,\"y\":697.514,\"z\":144.253}', 1500000),
(10, 'HillcrestAvenue2868', '2868 Hillcrest Avenue', '{\"y\":620.494,\"z\":141.588,\"x\":-752.82}', '{\"y\":618.62,\"z\":143.153,\"x\":-759.317}', '{\"y\":617.629,\"z\":143.153,\"x\":-760.789}', '{\"y\":621.281,\"z\":141.254,\"x\":-750.919}', '[]', NULL, 1, 1, 0, '{\"x\":-762.504,\"y\":618.992,\"z\":135.53}', 1500000),
(11, 'TinselTowersApt12', 'Tinsel Towers, Apt 42', '{\"y\":37.025,\"z\":42.58,\"x\":-618.299}', '{\"y\":58.898,\"z\":97.2,\"x\":-603.301}', '{\"y\":58.941,\"z\":97.2,\"x\":-608.741}', '{\"y\":30.603,\"z\":42.524,\"x\":-620.017}', '[]', NULL, 1, 1, 0, '{\"x\":-622.173,\"y\":54.585,\"z\":96.599}', 1700000),
(12, 'MiltonDrive', 'Milton Drive', '{\"x\":-775.17,\"y\":312.01,\"z\":84.658}', NULL, NULL, '{\"x\":-775.346,\"y\":306.776,\"z\":84.7}', '[]', NULL, 0, 0, 1, NULL, 0),
(13, 'Modern1Apartment', 'Appartement Moderne 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_01_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.661,\"y\":327.672,\"z\":210.396}', 1300000),
(14, 'Modern2Apartment', 'Appartement Moderne 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_01_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.735,\"y\":326.757,\"z\":186.313}', 1300000),
(15, 'Modern3Apartment', 'Appartement Moderne 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_01_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.386,\"y\":330.782,\"z\":195.08}', 1300000),
(16, 'Mody1Apartment', 'Appartement Mode 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_02_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.615,\"y\":327.878,\"z\":210.396}', 1300000),
(17, 'Mody2Apartment', 'Appartement Mode 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_02_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.297,\"y\":327.092,\"z\":186.313}', 1300000),
(18, 'Mody3Apartment', 'Appartement Mode 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_02_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.303,\"y\":330.932,\"z\":195.085}', 1300000),
(19, 'Vibrant1Apartment', 'Appartement Vibrant 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_03_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.885,\"y\":327.641,\"z\":210.396}', 1300000),
(20, 'Vibrant2Apartment', 'Appartement Vibrant 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_03_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.607,\"y\":327.344,\"z\":186.313}', 1300000),
(21, 'Vibrant3Apartment', 'Appartement Vibrant 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_03_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.525,\"y\":330.851,\"z\":195.085}', 1300000),
(22, 'Sharp1Apartment', 'Appartement Persan 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_04_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.527,\"y\":327.89,\"z\":210.396}', 1300000),
(23, 'Sharp2Apartment', 'Appartement Persan 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_04_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.642,\"y\":326.497,\"z\":186.313}', 1300000),
(24, 'Sharp3Apartment', 'Appartement Persan 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_04_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.503,\"y\":331.318,\"z\":195.085}', 1300000),
(25, 'Monochrome1Apartment', 'Appartement Monochrome 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_05_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.289,\"y\":328.086,\"z\":210.396}', 1300000),
(26, 'Monochrome2Apartment', 'Appartement Monochrome 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_05_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.692,\"y\":326.762,\"z\":186.313}', 1300000),
(27, 'Monochrome3Apartment', 'Appartement Monochrome 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_05_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.094,\"y\":330.976,\"z\":195.085}', 1300000),
(28, 'Seductive1Apartment', 'Appartement Séduisant 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_06_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.263,\"y\":328.104,\"z\":210.396}', 1300000),
(29, 'Seductive2Apartment', 'Appartement Séduisant 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_06_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.655,\"y\":326.611,\"z\":186.313}', 1300000),
(30, 'Seductive3Apartment', 'Appartement Séduisant 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_06_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.3,\"y\":331.414,\"z\":195.085}', 1300000),
(31, 'Regal1Apartment', 'Appartement Régal 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_07_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.956,\"y\":328.257,\"z\":210.396}', 1300000),
(32, 'Regal2Apartment', 'Appartement Régal 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_07_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.545,\"y\":326.659,\"z\":186.313}', 1300000),
(33, 'Regal3Apartment', 'Appartement Régal 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_07_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.087,\"y\":331.429,\"z\":195.123}', 1300000),
(34, 'Aqua1Apartment', 'Appartement Aqua 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_08_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.187,\"y\":328.47,\"z\":210.396}', 1300000),
(35, 'Aqua2Apartment', 'Appartement Aqua 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_08_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.658,\"y\":326.563,\"z\":186.313}', 1300000),
(36, 'Aqua3Apartment', 'Appartement Aqua 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_08_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.287,\"y\":331.084,\"z\":195.086}', 1300000),
(37, 'IntegrityWay', '4 Integrity Way', '{\"x\":-47.804,\"y\":-585.867,\"z\":36.956}', NULL, NULL, '{\"x\":-54.178,\"y\":-583.762,\"z\":35.798}', '[]', NULL, 0, 0, 1, NULL, 0),
(38, 'IntegrityWay28', '4 Integrity Way - Apt 28', NULL, '{\"x\":-31.409,\"y\":-594.927,\"z\":79.03}', '{\"x\":-26.098,\"y\":-596.909,\"z\":79.03}', NULL, '[]', 'IntegrityWay', 0, 1, 0, '{\"x\":-11.923,\"y\":-597.083,\"z\":78.43}', 1700000),
(39, 'IntegrityWay30', '4 Integrity Way - Apt 30', NULL, '{\"x\":-17.702,\"y\":-588.524,\"z\":89.114}', '{\"x\":-16.21,\"y\":-582.569,\"z\":89.114}', NULL, '[]', 'IntegrityWay', 0, 1, 0, '{\"x\":-26.327,\"y\":-588.384,\"z\":89.123}', 1700000),
(40, 'DellPerroHeights', 'Dell Perro Heights', '{\"x\":-1447.06,\"y\":-538.28,\"z\":33.74}', NULL, NULL, '{\"x\":-1440.022,\"y\":-548.696,\"z\":33.74}', '[]', NULL, 0, 0, 1, NULL, 0),
(41, 'DellPerroHeightst4', 'Dell Perro Heights - Apt 28', NULL, '{\"x\":-1452.125,\"y\":-540.591,\"z\":73.044}', '{\"x\":-1455.435,\"y\":-535.79,\"z\":73.044}', NULL, '[]', 'DellPerroHeights', 0, 1, 0, '{\"x\":-1467.058,\"y\":-527.571,\"z\":72.443}', 1700000),
(42, 'DellPerroHeightst7', 'Dell Perro Heights - Apt 30', NULL, '{\"x\":-1451.562,\"y\":-523.535,\"z\":55.928}', '{\"x\":-1456.02,\"y\":-519.209,\"z\":55.929}', NULL, '[]', 'DellPerroHeights', 0, 1, 0, '{\"x\":-1457.026,\"y\":-530.219,\"z\":55.937}', 1700000),
(43, 'MazeBankBuilding', 'Maze Bank Building', '{\"x\":-79.18,\"y\":-795.92,\"z\":43.35}', NULL, NULL, '{\"x\":-72.50,\"y\":-786.92,\"z\":43.40}', '[]', NULL, 0, 0, 1, NULL, 0),
(44, 'OldSpiceWarm', 'Old Spice Warm', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_01a\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(45, 'OldSpiceClassical', 'Old Spice Classical', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_01b\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(46, 'OldSpiceVintage', 'Old Spice Vintage', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_01c\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(47, 'ExecutiveRich', 'Executive Rich', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_02b\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(48, 'ExecutiveCool', 'Executive Cool', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_02c\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(49, 'ExecutiveContrast', 'Executive Contrast', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_02a\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(50, 'PowerBrokerIce', 'Power Broker Ice', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_03a\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(51, 'PowerBrokerConservative', 'Power Broker Conservative', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_03b\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(52, 'PowerBrokerPolished', 'Power Broker Polished', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_03c\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(53, 'LomBank', 'Lom Bank', '{\"x\":-1581.36,\"y\":-558.23,\"z\":34.07}', NULL, NULL, '{\"x\":-1583.60,\"y\":-555.12,\"z\":34.07}', '[]', NULL, 0, 0, 1, NULL, 0),
(54, 'LBOldSpiceWarm', 'LB Old Spice Warm', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_01a\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(55, 'LBOldSpiceClassical', 'LB Old Spice Classical', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_01b\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(56, 'LBOldSpiceVintage', 'LB Old Spice Vintage', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_01c\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(57, 'LBExecutiveRich', 'LB Executive Rich', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_02b\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(58, 'LBExecutiveCool', 'LB Executive Cool', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_02c\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(59, 'LBExecutiveContrast', 'LB Executive Contrast', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_02a\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(60, 'LBPowerBrokerIce', 'LB Power Broker Ice', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_03a\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(61, 'LBPowerBrokerConservative', 'LB Power Broker Conservative', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_03b\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(62, 'LBPowerBrokerPolished', 'LB Power Broker Polished', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_03c\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(63, 'MazeBankWest', 'Maze Bank West', '{\"x\":-1379.58,\"y\":-499.63,\"z\":32.22}', NULL, NULL, '{\"x\":-1378.95,\"y\":-502.82,\"z\":32.22}', '[]', NULL, 0, 0, 1, NULL, 0),
(64, 'MBWOldSpiceWarm', 'MBW Old Spice Warm', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_01a\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(65, 'MBWOldSpiceClassical', 'MBW Old Spice Classical', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_01b\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(66, 'MBWOldSpiceVintage', 'MBW Old Spice Vintage', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_01c\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(67, 'MBWExecutiveRich', 'MBW Executive Rich', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_02b\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(68, 'MBWExecutiveCool', 'MBW Executive Cool', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_02c\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(69, 'MBWExecutive Contrast', 'MBW Executive Contrast', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_02a\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(70, 'MBWPowerBrokerIce', 'MBW Power Broker Ice', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_03a\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(71, 'MBWPowerBrokerConvservative', 'MBW Power Broker Convservative', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_03b\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(72, 'MBWPowerBrokerPolished', 'MBW Power Broker Polished', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_03c\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000);

-- --------------------------------------------------------

--
-- Structure de la table `rented_aircrafts`
--

CREATE TABLE `rented_aircrafts` (
  `vehicle` varchar(60) NOT NULL,
  `plate` varchar(12) NOT NULL,
  `player_name` varchar(255) NOT NULL,
  `base_price` int(11) NOT NULL,
  `rent_price` int(11) NOT NULL,
  `owner` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `rented_vehicles`
--

CREATE TABLE `rented_vehicles` (
  `vehicle` varchar(60) NOT NULL,
  `plate` varchar(12) NOT NULL,
  `player_name` varchar(255) NOT NULL,
  `base_price` int(11) NOT NULL,
  `rent_price` int(11) NOT NULL,
  `owner` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `sim`
--

CREATE TABLE `sim` (
  `id` int(11) NOT NULL,
  `identifier` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `phone_number` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `sim`
--

INSERT INTO `sim` (`id`, `identifier`, `phone_number`, `label`) VALUES
(0, 'steam:11000011b6f4f81', '555-8719', 'SIM 555-8719');

-- --------------------------------------------------------

--
-- Structure de la table `society_moneywash`
--

CREATE TABLE `society_moneywash` (
  `id` int(11) NOT NULL,
  `identifier` varchar(60) NOT NULL,
  `society` varchar(60) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `twitter_accounts`
--

CREATE TABLE `twitter_accounts` (
  `id` int(11) NOT NULL,
  `username` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `password` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `avatar_url` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `twitter_likes`
--

CREATE TABLE `twitter_likes` (
  `id` int(11) NOT NULL,
  `authorId` int(11) DEFAULT NULL,
  `tweetId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `twitter_tweets`
--

CREATE TABLE `twitter_tweets` (
  `id` int(11) NOT NULL,
  `authorId` int(11) NOT NULL,
  `realUser` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `likes` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `identifier` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `license` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin DEFAULT '',
  `skin` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `job` varchar(255) COLLATE utf8mb4_bin DEFAULT 'unemployed',
  `job_grade` int(11) DEFAULT 0,
  `job2` varchar(255) COLLATE utf8mb4_bin DEFAULT 'unemployed2',
  `job2_grade` int(11) DEFAULT 0,
  `org` varchar(255) COLLATE utf8mb4_bin DEFAULT 'freecity',
  `org_gradeorg` int(11) DEFAULT 0,
  `loadout` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `position` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `permission_level` int(11) DEFAULT NULL,
  `group` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `firstname` varchar(50) COLLATE utf8mb4_bin DEFAULT '',
  `lastname` varchar(50) COLLATE utf8mb4_bin DEFAULT '',
  `dateofbirth` varchar(25) COLLATE utf8mb4_bin DEFAULT '',
  `sex` varchar(10) COLLATE utf8mb4_bin DEFAULT '',
  `height` varchar(5) COLLATE utf8mb4_bin DEFAULT '',
  `status` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `isDead` bit(1) DEFAULT b'0',
  `last_property` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `animal` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `vote` varchar(254) COLLATE utf8mb4_bin DEFAULT NULL,
  `jail` int(11) NOT NULL DEFAULT 0,
  `phone_number` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  `is_dead` tinyint(1) DEFAULT 0,
  `skills` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `money` int(11) DEFAULT NULL,
  `bank` int(11) DEFAULT NULL,
  `vip` tinyint(1) DEFAULT 0,
  `zetony` int(11) DEFAULT NULL,
  `tattoos` longtext COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`identifier`, `license`, `name`, `skin`, `job`, `job_grade`, `job2`, `job2_grade`, `org`, `org_gradeorg`, `loadout`, `position`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `status`, `isDead`, `last_property`, `animal`, `vote`, `jail`, `phone_number`, `is_dead`, `skills`, `money`, `bank`, `vip`, `zetony`, `tattoos`) VALUES
('steam:11000011b6f4f81', 'license:929172c9dd9a23ce0998f6ab90ade49e8d75155e', 'Mødeo', '{\"hair_color_2\":0,\"sex\":0,\"chain_1\":0,\"bproof_1\":0,\"moles_2\":0,\"blemishes_2\":0,\"bproof_2\":0,\"mask_1\":0,\"blush_2\":0,\"lipstick_1\":0,\"hair_color_1\":0,\"blemishes_1\":0,\"moles_1\":0,\"beard_1\":0,\"mask_2\":0,\"helmet_2\":0,\"age_2\":0,\"eyebrows_1\":0,\"bodyb_1\":0,\"skin\":0,\"arms_2\":0,\"age_1\":0,\"makeup_1\":0,\"eyebrows_2\":0,\"arms\":0,\"blush_3\":0,\"chest_3\":0,\"complexion_2\":0,\"hair_2\":0,\"makeup_4\":0,\"beard_3\":0,\"pants_1\":0,\"beard_2\":0,\"eyebrows_4\":0,\"glasses_2\":0,\"eye_color\":0,\"watches_1\":-1,\"glasses_1\":0,\"blush_1\":0,\"ears_2\":0,\"pants_2\":0,\"makeup_2\":0,\"lipstick_4\":0,\"complexion_1\":0,\"bodyb_2\":0,\"lipstick_3\":0,\"lipstick_2\":0,\"tshirt_2\":0,\"chest_1\":0,\"sun_1\":0,\"beard_4\":0,\"hair_1\":2,\"ears_1\":-1,\"bags_1\":0,\"torso_2\":0,\"face\":0,\"watches_2\":0,\"sun_2\":0,\"helmet_1\":-1,\"chest_2\":0,\"decals_2\":0,\"bracelets_1\":-1,\"bracelets_2\":0,\"eyebrows_3\":0,\"decals_1\":0,\"bags_2\":0,\"makeup_3\":0,\"shoes_2\":0,\"shoes_1\":0,\"torso_1\":0,\"tshirt_1\":2,\"chain_2\":0}', 'police', 2, 'unemployed2', 0, 'freecity', 0, '[{\"label\":\"Pistolet de combat\",\"components\":[\"clip_default\"],\"name\":\"WEAPON_COMBATPISTOL\",\"ammo\":241}]', '{\"x\":161.6,\"y\":-1036.7,\"z\":29.3}', 0, 'user', 'John', 'Coks', '09-09-1998', 'm', '180', '[{\"percent\":0.0,\"name\":\"drunk\",\"val\":0},{\"percent\":67.67999999999999,\"name\":\"hunger\",\"val\":676800},{\"percent\":40.760000000000008,\"name\":\"thirst\",\"val\":407600},{\"percent\":18.06515,\"name\":\"stress\",\"val\":180651.5}]', b'0', NULL, NULL, NULL, 0, '555-8328', 0, NULL, 8000, 16540, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `user_accounts`
--

CREATE TABLE `user_accounts` (
  `id` int(11) NOT NULL,
  `identifier` varchar(22) NOT NULL,
  `name` varchar(50) NOT NULL,
  `money` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `user_accounts`
--

INSERT INTO `user_accounts` (`id`, `identifier`, `name`, `money`) VALUES
(4, 'steam:11000011b6f4f81', 'black_money', 0);

-- --------------------------------------------------------

--
-- Structure de la table `user_inventory`
--

CREATE TABLE `user_inventory` (
  `id` int(11) NOT NULL,
  `identifier` varchar(22) NOT NULL,
  `item` varchar(50) NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `user_inventory`
--

INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
(10, 'steam:11000011b6f4f81', 'cartebanque', 0),
(11, 'steam:11000011b6f4f81', 'water', 0),
(12, 'steam:11000011b6f4f81', 'bread', 0),
(13, 'steam:11000011b6f4f81', 'gold', 0),
(14, 'steam:11000011b6f4f81', 'vodka', 0),
(15, 'steam:11000011b6f4f81', 'carotool', 0),
(16, 'steam:11000011b6f4f81', 'fixkit', 0),
(17, 'steam:11000011b6f4f81', 'copper', 0),
(18, 'steam:11000011b6f4f81', 'tapas', 0),
(19, 'steam:11000011b6f4f81', 'iron', 0),
(20, 'steam:11000011b6f4f81', 'fabric', 0),
(21, 'steam:11000011b6f4f81', 'ice', 0),
(22, 'steam:11000011b6f4f81', 'mojito', 0),
(23, 'steam:11000011b6f4f81', 'bolcacahuetes', 1),
(24, 'steam:11000011b6f4f81', 'jagerbomb', 0),
(25, 'steam:11000011b6f4f81', 'enquetes', 0),
(26, 'steam:11000011b6f4f81', 'caisse_traiter', 0),
(27, 'steam:11000011b6f4f81', 'bolpistache', 0),
(28, 'steam:11000011b6f4f81', 'get', 0),
(29, 'steam:11000011b6f4f81', 'jus_raisin', 0),
(30, 'steam:11000011b6f4f81', 'drpepper', 0),
(31, 'steam:11000011b6f4f81', 'teqpaf', 0),
(32, 'steam:11000011b6f4f81', 'washed_stone', 0),
(33, 'steam:11000011b6f4f81', 'blowpipe', 1),
(34, 'steam:11000011b6f4f81', 'clothe', 0),
(35, 'steam:11000011b6f4f81', 'packaged_chicken', 0),
(36, 'steam:11000011b6f4f81', 'gazbottle', 0),
(37, 'steam:11000011b6f4f81', 'slaughtered_chicken', 0),
(38, 'steam:11000011b6f4f81', 'menu2', 0),
(39, 'steam:11000011b6f4f81', 'fish', 0),
(40, 'steam:11000011b6f4f81', 'rhum', 0),
(41, 'steam:11000011b6f4f81', 'bolnoixcajou', 0),
(42, 'steam:11000011b6f4f81', 'mixapero', 0),
(43, 'steam:11000011b6f4f81', 'petrol_raffin', 0),
(44, 'steam:11000011b6f4f81', 'alive_chicken', 1),
(45, 'steam:11000011b6f4f81', 'saucisson', 0),
(46, 'steam:11000011b6f4f81', 'packaged_plank', 0),
(47, 'steam:11000011b6f4f81', 'pizza', 0),
(48, 'steam:11000011b6f4f81', 'wood', 0),
(49, 'steam:11000011b6f4f81', 'tequila', 0),
(50, 'steam:11000011b6f4f81', 'magnum', 0),
(51, 'steam:11000011b6f4f81', 'whiskycoca', 0),
(52, 'steam:11000011b6f4f81', 'menu3', 0),
(53, 'steam:11000011b6f4f81', 'whiskycoc', 0),
(54, 'steam:11000011b6f4f81', 'martini', 0),
(55, 'steam:11000011b6f4f81', 'whisky', 0),
(56, 'steam:11000011b6f4f81', 'cutted_wood', 0),
(57, 'steam:11000011b6f4f81', 'bandage', 1),
(58, 'steam:11000011b6f4f81', 'bolchips', 0),
(59, 'steam:11000011b6f4f81', 'vodkrb', 0),
(60, 'steam:11000011b6f4f81', 'grand_cru', 0),
(61, 'steam:11000011b6f4f81', 'pastis', 0),
(62, 'steam:11000011b6f4f81', 'vodkafruit', 0),
(63, 'steam:11000011b6f4f81', 'salade', 0),
(64, 'steam:11000011b6f4f81', 'vodkaenergy', 0),
(65, 'steam:11000011b6f4f81', 'vine', 0),
(66, 'steam:11000011b6f4f81', 'affaires', 1),
(67, 'steam:11000011b6f4f81', 'soda', 1),
(68, 'steam:11000011b6f4f81', 'rhumfruit', 0),
(69, 'steam:11000011b6f4f81', 'rhumcoca', 0),
(70, 'steam:11000011b6f4f81', 'fixtool', 0),
(71, 'steam:11000011b6f4f81', 'wool', 0),
(72, 'steam:11000011b6f4f81', 'alcool', 1),
(73, 'steam:11000011b6f4f81', 'redbull', 0),
(74, 'steam:11000011b6f4f81', 'diamond', 0),
(75, 'steam:11000011b6f4f81', 'raisin', 0),
(76, 'steam:11000011b6f4f81', 'petrol', 0),
(77, 'steam:11000011b6f4f81', 'caisse_alcool', 0),
(78, 'steam:11000011b6f4f81', 'jager', 0),
(79, 'steam:11000011b6f4f81', 'myrtealcool', 0),
(80, 'steam:11000011b6f4f81', 'jusfruit', 0),
(81, 'steam:11000011b6f4f81', 'menu1', 0),
(82, 'steam:11000011b6f4f81', 'metreshooter', 0),
(83, 'steam:11000011b6f4f81', 'stone', 0),
(84, 'steam:11000011b6f4f81', 'medikit', 0),
(85, 'steam:11000011b6f4f81', 'cheesecake', 0),
(86, 'steam:11000011b6f4f81', 'coffee', 0),
(87, 'steam:11000011b6f4f81', 'energy', 0),
(88, 'steam:11000011b6f4f81', 'menthe', 0),
(89, 'steam:11000011b6f4f81', 'limonade', 0),
(90, 'steam:11000011b6f4f81', 'jagercerbere', 0),
(91, 'steam:11000011b6f4f81', 'carokit', 0),
(92, 'steam:11000011b6f4f81', 'essence', 0),
(93, 'steam:11000011b6f4f81', 'grapperaisin', 0),
(94, 'steam:11000011b6f4f81', 'icetea', 0),
(95, 'steam:11000011b6f4f81', 'golem', 0),
(96, 'steam:11000011b6f4f81', 'contract', 0),
(97, 'steam:11000011b6f4f81', 'gym_membership', 0),
(98, 'steam:11000011b6f4f81', 'protein_shake', 0),
(99, 'steam:11000011b6f4f81', 'sportlunch', 0),
(100, 'steam:11000011b6f4f81', 'powerade', 0),
(101, 'steam:11000011b6f4f81', 'engine_5', 0),
(102, 'steam:11000011b6f4f81', 'engine_1', 0),
(103, 'steam:11000011b6f4f81', 'bonnet', 0),
(104, 'steam:11000011b6f4f81', 'engine_4', 0),
(105, 'steam:11000011b6f4f81', 'wheel', 0),
(106, 'steam:11000011b6f4f81', 'engine_6', 0),
(107, 'steam:11000011b6f4f81', 'seat', 0),
(108, 'steam:11000011b6f4f81', 'battery', 1),
(109, 'steam:11000011b6f4f81', 'trunk', 0),
(110, 'steam:11000011b6f4f81', 'engine_9', 0),
(111, 'steam:11000011b6f4f81', 'engine_7', 0),
(112, 'steam:11000011b6f4f81', 'engine_19', 0),
(113, 'steam:11000011b6f4f81', 'engine_8', 0),
(114, 'steam:11000011b6f4f81', 'engine_2', 0),
(115, 'steam:11000011b6f4f81', 'engine_12', 0),
(116, 'steam:11000011b6f4f81', 'engine_0', 0),
(117, 'steam:11000011b6f4f81', 'engine_3', 0),
(118, 'steam:11000011b6f4f81', 'exhaust', 0),
(119, 'steam:11000011b6f4f81', 'door', 0),
(120, 'steam:11000011b6f4f81', 'engine_18', 0),
(121, 'steam:11000011b6f4f81', 'cigarette', 0),
(122, 'steam:11000011b6f4f81', 'tel', 1),
(123, 'steam:11000011b6f4f81', 'sim', 0);

-- --------------------------------------------------------

--
-- Structure de la table `user_licenses`
--

CREATE TABLE `user_licenses` (
  `id` int(11) NOT NULL,
  `type` varchar(60) NOT NULL,
  `owner` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `user_tenue`
--

CREATE TABLE `user_tenue` (
  `id` int(11) NOT NULL,
  `identifier` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `tenue` longtext COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `vehicles`
--

CREATE TABLE `vehicles` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `vehicles`
--

INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
('Renault Clio 4', '17cliofl', 24000, 'Import'),
('Peugeot 206 GTI', '206', 30000, 'Import'),
('Adder', 'adder', 300999, 'super'),
('Akuma', 'AKUMA', 29998, 'motorcycles'),
('Alpha', 'alpha', 145650, 'sports'),
('Ardent', 'ardent', 270000, 'sportsclassics'),
('Asea', 'asea', 5500, 'sedans'),
('Opel Astra', 'astraj', 15000, 'Import'),
('Autarch', 'autarch', 375999, 'super'),
('Avarus', 'avarus', 19000, 'motorcycles'),
('Bagger', 'bagger', 24524, 'motorcycles'),
('Baller', 'baller2', 85980, 'suvs'),
('Baller Sport', 'baller3', 94890, 'suvs'),
('Banshee', 'banshee', 110000, 'sports'),
('Banshee 900R', 'banshee2', 275000, 'super'),
('Bati 801', 'bati', 30000, 'motorcycles'),
('Bati 801RR', 'bati2', 34000, 'motorcycles'),
('Bestia GTS', 'bestiagts', 115850, 'sports'),
('BF400', 'bf400', 47505, 'motorcycles'),
('Bf Injection', 'bfinjection', 36000, 'offroad'),
('Bifta', 'bifta', 12000, 'offroad'),
('Bison', 'bison', 85900, 'vans'),
('Blade', 'blade', 32187, 'muscle'),
('Blazer', 'blazer', 16500, 'offroad'),
('Blazer Sport', 'blazer4', 18564, 'offroad'),
('Blista', 'blista', 12000, 'compacts'),
('BMX (velo)', 'bmx', 160, 'motorcycles'),
('Bobcat XL', 'bobcatxl', 52000, 'vans'),
('Brawler', 'brawler', 75210, 'offroad'),
('Brioso R/A', 'brioso', 28000, 'compacts'),
('Btype', 'btype', 112090, 'collection'),
('Btype Hotroad', 'btype2', 206950, 'collection'),
('Btype Luxe', 'btype3', 125350, 'collection'),
('Buccaneer', 'buccaneer', 38740, 'muscle'),
('Buccaneer Rider', 'buccaneer2', 42510, 'muscle'),
('Buffalo', 'buffalo', 52698, 'sports'),
('Buffalo S', 'buffalo2', 60565, 'sports'),
('Bullet', 'bullet', 135690, 'super'),
('Burrito', 'burrito3', 39000, 'vans'),
('Camper', 'camper', 45000, 'vans'),
('Carbonizzare', 'carbonizzare', 115000, 'sports'),
('Carbon RS', 'carbonrs', 19099, 'motorcycles'),
('Casco', 'casco', 95000, 'sportsclassics'),
('Cavalcade', 'cavalcade2', 75000, 'suvs'),
('Cheburek', 'cheburek', 60000, 'collection'),
('Cheetah', 'cheetah', 295999, 'super'),
('Cheetah R', 'cheetah2', 130000, 'sportsclassics'),
('Chimera', 'chimera', 39000, 'motorcycles'),
('Chino', 'chino', 32999, 'muscle'),
('Chino Luxe', 'chino2', 39999, 'muscle'),
('Cliffhanger', 'cliffhanger', 29000, 'motorcycles'),
('Renault Clio Williams', 'clio', 35999, 'Import'),
('Clique', 'clique', 65000, 'collection'),
('Volkswagen Club GTR', 'clubgtr', 24000, 'Import'),
('Cognoscenti Cabrio', 'cogcabrio', 55000, 'coupes'),
('Cognoscenti', 'cognoscenti', 55050, 'sedans'),
('Comet', 'comet2', 119999, 'sports'),
('Comet Tout-Terrain', 'comet4', 180000, 'offroad'),
('Comet 5', 'comet5', 165999, 'sports'),
('Contender', 'contender', 100000, 'suvs'),
('Coquette', 'coquette', 115999, 'sports'),
('Coquette Classic', 'coquette2', 103999, 'sportsclassics'),
('Coquette BlackFin', 'coquette3', 55099, 'muscle'),
('Cruiser (velo)', 'cruiser', 510, 'motorcycles'),
('Cyclone', 'cyclone', 510999, 'super'),
('Daemon', 'daemon', 24500, 'motorcycles'),
('Daemon High', 'daemon2', 31099, 'motorcycles'),
('Deathbike', 'deathbike', 27000, 'motorcycles'),
('Defiler', 'defiler', 30800, 'motorcycles'),
('Deviant', 'deviant', 75000, 'muscle'),
('Diablous', 'diablous', 55000, 'motorcycles'),
('Duneloader', 'dloader', 4500, 'occasion'),
('Dominator', 'dominator', 45000, 'muscle'),
('Dominator V3', 'dominator3', 85000, 'muscle'),
('Double T', 'double', 39000, 'motorcycles'),
('Dubsta', 'dubsta', 65000, 'suvs'),
('Dubsta Luxuary', 'dubsta2', 100999, 'suvs'),
('Bubsta 6x6', 'dubsta3', 130130, 'offroad'),
('Dukes', 'dukes', 45000, 'muscle'),
('Elegy Rétro', 'elegy', 85000, 'sports'),
('Elegy RH8', 'elegy2', 98550, 'sports'),
('Ellie', 'ellie', 75000, 'muscle'),
('Emperor', 'emperor', 8500, 'sedans'),
('Enduro', 'enduro', 16500, 'motorcycles'),
('Entity V2', 'entity2', 270000, 'super'),
('Entity XF', 'entityxf', 315650, 'super'),
('Esskey', 'esskey', 10290, 'motorcycles'),
('Exemplar', 'exemplar', 40000, 'coupes'),
('F620', 'f620', 40000, 'coupes'),
('Faction', 'faction', 44110, 'muscle'),
('Faction Rider', 'faction2', 48256, 'muscle'),
('Faction XL', 'faction3', 48256, 'muscle'),
('Fagaloa', 'fagaloa', 5000, 'collection'),
('Faggio', 'faggio', 1599, 'motorcycles'),
('Faggio', 'faggio3', 2000, 'collection'),
('FCR', 'fcr', 38000, 'motorcycles'),
('Felon', 'felon', 35000, 'coupes'),
('Felon GT', 'felon2', 55000, 'coupes'),
('Feltzer', 'feltzer2', 105645, 'sports'),
('Stirling GT', 'feltzer3', 118350, 'sportsclassics'),
('Fixter (velo)', 'fixter', 225, 'motorcycles'),
('Flash GT', 'flashgt', 50000, 'sports'),
('FMJ', 'fmj', 305999, 'super'),
('Volkswagen Fox', 'fox', 44000, 'Import'),
('Fhantom', 'fq2', 42999, 'suvs'),
('Freecrawler', 'freecrawler', 80000, 'offroad'),
('Fugitive', 'fugitive', 12540, 'sedans'),
('Furore GT', 'furoregt', 112999, 'sports'),
('Fusilade', 'fusilade', 70999, 'sports'),
('Gargoyle', 'gargoyle', 38850, 'motorcycles'),
('Gauntlet', 'gauntlet', 32150, 'muscle'),
('GB200', 'gb200', 75000, 'sports'),
('Burrito gang', 'gburrito2', 56000, 'vans'),
('Glendale', 'glendale', 26500, 'sedans'),
('Volkswagen Golf 4', 'golf4', 34000, 'Import'),
('Progen GP1', 'gp1', 175000, 'super'),
('Grabger', 'granger', 70980, 'suvs'),
('Gresley', 'gresley', 55365, 'suvs'),
('GT 500', 'gt500', 115999, 'sportsclassics'),
('Guardian', 'guardian', 225000, 'offroad'),
('Hakuchou', 'hakuchou', 32990, 'motorcycles'),
('Hakuchou Sport', 'hakuchou2', 56000, 'motorcycles'),
('Hermes', 'hermes', 135000, 'muscle'),
('Hexer', 'hexer', 32999, 'motorcycles'),
('Hotknife', 'hotknife', 65870, 'muscle'),
('Huntley S', 'huntley', 60000, 'suvs'),
('Hustler', 'hustler', 62999, 'muscle'),
('Impaler', 'impaler', 40000, 'muscle'),
('Infernus', 'infernus', 200000, 'super'),
('Infernus V2', 'infernus2', 300000, 'sports'),
('Innovation', 'innovation', 34500, 'motorcycles'),
('Intruder', 'intruder', 17500, 'sedans'),
('Issi', 'issi2', 17250, 'compacts'),
('Issi Classic', 'issi3', 6000, 'collection'),
('Itali GTB', 'italigtb', 400000, 'sportsclassics'),
('Grotti Itali GTO', 'italigto', 245000, 'super'),
('Jackal', 'jackal', 38000, 'coupes'),
('Jester', 'jester', 98000, 'sports'),
('Jester(Racecar)', 'jester2', 155999, 'sports'),
('Journey', 'journey', 10800, 'vans'),
('kalahari', 'Kalahari', 2000, 'collection'),
('Kamacho', 'kamacho', 175999, 'offroad'),
('Khamelion', 'khamelion', 58000, 'sports'),
('Kuruma', 'kuruma', 82357, 'sports'),
('Landstalker', 'landstalker', 55890, 'suvs'),
('RE-7B', 'le7b', 375999, 'super'),
('Lynx', 'lynx', 88000, 'sports'),
('Mamba', 'mamba', 98999, 'sports'),
('Manana', 'manana', 42800, 'sportsclassics'),
('Manchez', 'manchez', 9999, 'motorcycles'),
('Massacro', 'massacro', 85000, 'sports'),
('Massacro(Racecar)', 'massacro2', 150000, 'sports'),
('Mesa', 'mesa', 36000, 'suvs'),
('Mesa Trail', 'mesa3', 100999, 'suvs'),
('Michelli GT', 'michelli', 70800, 'sportsclassics'),
('Minivan', 'minivan', 38000, 'vans'),
('Monroe', 'monroe', 75000, 'sportsclassics'),
('Moonbeam', 'moonbeam', 45999, 'vans'),
('Moonbeam Rider', 'moonbeam2', 55000, 'vans'),
('Nemesis', 'nemesis', 10899, 'motorcycles'),
('Neon', 'neon', 430000, 'sports'),
('Nero', 'nero', 650000, 'muscle'),
('Nightblade', 'nightblade', 40500, 'motorcycles'),
('Nightshade', 'nightshade', 100890, 'muscle'),
('9F', 'ninef', 103250, 'sports'),
('9F Cabrio', 'ninef2', 124000, 'sports'),
('Omnis', 'omnis', 118999, 'sports'),
('Oracle XS', 'oracle2', 35000, 'coupes'),
('Osiris', 'osiris', 310222, 'super'),
('Renault Espace', 'pacev', 24000, 'Import'),
('Panto', 'panto', 5000, 'compacts'),
('Paradise', 'paradise', 39000, 'vans'),
('Pariah', 'pariah', 140999, 'sports'),
('Patriot', 'patriot', 75000, 'suvs'),
('PCJ-600', 'pcj', 11255, 'motorcycles'),
('Penetrator', 'penetrator', 275000, 'sportsclassics'),
('Penumbra', 'penumbra', 48320, 'sports'),
('Pfister', 'pfister811', 305999, 'super'),
('Phoenix', 'phoenix', 22983, 'muscle'),
('Picador', 'picador', 28235, 'muscle'),
('Pigalle', 'pigalle', 50000, 'sportsclassics'),
('Prairie', 'prairie', 12000, 'compacts'),
('Premier', 'premier', 8000, 'sedans'),
('Primo Custom', 'primo2', 30123, 'sedans'),
('Toyota Prius', 'prius', 20000, 'Import'),
('X80 Proto', 'prototipo', 580999, 'super'),
('Fiat Punto', 'punto1', 15000, 'Import'),
('Radius', 'radi', 49000, 'suvs'),
('raiden', 'raiden', 195999, 'sports'),
('Rapid GT', 'rapidgt', 55000, 'sports'),
('Rapid GT Convertible', 'rapidgt2', 65000, 'sports'),
('Rapid GT3', 'rapidgt3', 305999, 'sportsclassics'),
('Rat-Loader', 'ratloader', 4500, 'occasion'),
('Reaper', 'reaper', 270999, 'super'),
('Rebel', 'rebel2', 35000, 'offroad'),
('Regina', 'regina', 5000, 'sedans'),
('Renault Capture', 'rencaptur', 24000, 'Import'),
('Retinue', 'retinue', 135999, 'sportsclassics'),
('Revolter', 'revolter', 148999, 'sports'),
('riata', 'riata', 140568, 'offroad'),
('Rocoto', 'rocoto', 85900, 'suvs'),
('Ruffian', 'ruffian', 11890, 'motorcycles'),
('Rumpo', 'rumpo', 39000, 'vans'),
('Rumpo Trail', 'rumpo3', 69850, 'vans'),
('Ruston', 'ruston', 175000, 'sports'),
('Sabre Turbo', 'sabregt', 30640, 'muscle'),
('Sabre GT', 'sabregt2', 35125, 'muscle'),
('Sanchez', 'sanchez', 10399, 'motorcycles'),
('Sanchez Sport', 'sanchez2', 12500, 'motorcycles'),
('Sanctus', 'sanctus', 59250, 'motorcycles'),
('Sandking', 'sandking', 75250, 'offroad'),
('Savestra', 'savestra', 110999, 'sportsclassics'),
('SC 1', 'sc1', 200989, 'super'),
('Schafter', 'schafter2', 42199, 'sedans'),
('Schafter V12', 'schafter3', 120999, 'sports'),
('Schlagen', 'schlagen', 250000, 'sports'),
('Scorcher (velo)', 'scorcher', 280, 'motorcycles'),
('Seminole', 'seminole', 58999, 'suvs'),
('Sentinel', 'sentinel', 32000, 'coupes'),
('Sentinel XS', 'sentinel2', 40000, 'coupes'),
('Sentinel classic', 'sentinel3', 145999, 'sports'),
('Seven 70', 'seven70', 109599, 'sports'),
('ETR1', 'sheava', 340300, 'super'),
('Slam Van', 'slamvan3', 41520, 'muscle'),
('Sovereign', 'sovereign', 29540, 'motorcycles'),
('Specter', 'specter', 190000, 'sports'),
('Stafford', 'stafford', 75000, 'collection'),
('Stinger', 'stinger', 112999, 'sportsclassics'),
('Stinger GT', 'stingergt', 135000, 'sportsclassics'),
('Streiter', 'streiter', 120999, 'sports'),
('Sultan', 'sultan', 62999, 'sports'),
('Sultan RS', 'sultanrs', 108999, 'super'),
('Super Diamond', 'superd', 130000, 'sedans'),
('Surano', 'surano', 86099, 'sports'),
('Surfer', 'surfer', 32000, 'vans'),
('Ocelot Swinger', 'swinger', 210000, 'sportsclassics'),
('T20', 't20', 220000, 'super'),
('Tailgater', 'tailgater', 30000, 'sedans'),
('Tampa', 'tampa', 16000, 'muscle'),
('Drift Tampa', 'tampa2', 120999, 'sports'),
('Tempesta', 'tempesta', 380000, 'super'),
('Thrust', 'thrust', 29090, 'motorcycles'),
('Yamaha T Max', 'tmaxDX', 44000, 'Import'),
('Torero', 'torero', 180000, 'sportsclassics'),
('Toros', 'toros', 350000, 'suvs'),
('Tri bike (velo)', 'tribike3', 520, 'motorcycles'),
('Tropos', 'tropos', 90840, 'sports'),
('Tulip', 'tulip', 40000, 'muscle'),
('Turismo V2', 'turismo2', 245000, 'super'),
('Turismo R', 'turismor', 270999, 'super'),
('Renault Twizy', 'twizy', 15000, 'Import'),
('Tyrant', 'tyrant', 245000, 'super'),
('Tyrus', 'tyrus', 470000, 'super'),
('Porsche Macan', 'ursa', 137000, 'Import'),
('Vacca', 'vacca', 140000, 'super'),
('Vader', 'vader', 20200, 'motorcycles'),
('Vamos', 'vamos', 50000, 'muscle'),
('Verlierer', 'verlierer2', 125999, 'sports'),
('Vigero', 'vigero', 28500, 'muscle'),
('Virgo', 'virgo', 30000, 'muscle'),
('Viseris', 'viseris', 295999, 'sportsclassics'),
('Visione', 'visione', 445000, 'super'),
('Voltic', 'voltic', 130599, 'super'),
('Voodoo', 'voodoo', 9200, 'muscle'),
('Voodoo', 'voodoo2', 3500, 'occasion'),
('Vortex', 'vortex', 30899, 'motorcycles'),
('Volkswagen Passat', 'vwstance', 33000, 'Import'),
('Warrener', 'warrener', 12000, 'sedans'),
('Washington', 'washington', 9000, 'sedans'),
('Windsor', 'windsor', 145000, 'coupes'),
('Windsor Drop', 'windsor2', 175000, 'coupes'),
('Woflsbane', 'wolfsbane', 26125, 'motorcycles'),
('XA-21', 'xa21', 265000, 'super'),
('Honda XADV', 'xadv', 44000, 'Import'),
('Citroen Xantia', 'xantiafn', 19000, 'Import'),
('XLS', 'xls', 68999, 'suvs'),
('Toyota Yaris', 'yaris08', 19000, 'Import'),
('Yosemite', 'yosemite', 85997, 'muscle'),
('Youga', 'youga', 10800, 'vans'),
('Youga Luxuary', 'youga2', 34500, 'vans'),
('Peugeot 205 GTI Rally', 'yPG205t16A', 45000, 'Import'),
('Peugeot 205 GTI', 'yPG205t16B', 35000, 'Import'),
('Z190', 'z190', 110999, 'sportsclassics'),
('Zentorno', 'zentorno', 580999, 'super'),
('Zion', 'zion', 46000, 'coupes'),
('Zion Cabrio', 'zion2', 45000, 'coupes'),
('Zombie', 'zombiea', 28235, 'motorcycles'),
('Zombie Luxuary', 'zombieb', 31090, 'motorcycles'),
('Z-Type', 'ztype', 265999, 'sportsclassics');

-- --------------------------------------------------------

--
-- Structure de la table `vehicle_categories`
--

CREATE TABLE `vehicle_categories` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `vehicle_categories`
--

INSERT INTO `vehicle_categories` (`name`, `label`) VALUES
('collection', 'Véhicule de collection'),
('compacts', 'Compacts'),
('coupes', 'Coupés'),
('Import', 'Import'),
('motorcycles', 'Motos'),
('muscle', 'Muscle'),
('occasion', 'Occasion'),
('offroad', 'Off Road'),
('sedans', 'Sedans'),
('sports', 'Sports'),
('sportsclassics', 'Sports Classics'),
('super', 'Super'),
('suvs', 'SUVs'),
('vans', 'Vans');

-- --------------------------------------------------------

--
-- Structure de la table `vehicle_sold`
--

CREATE TABLE `vehicle_sold` (
  `client` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `plate` varchar(50) NOT NULL,
  `soldby` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `addon_account`
--
ALTER TABLE `addon_account`
  ADD PRIMARY KEY (`name`);

--
-- Index pour la table `addon_account_data`
--
ALTER TABLE `addon_account_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_addon_account_data_account_name_owner` (`account_name`,`owner`),
  ADD KEY `index_addon_account_data_account_name` (`account_name`);

--
-- Index pour la table `addon_inventory`
--
ALTER TABLE `addon_inventory`
  ADD PRIMARY KEY (`name`);

--
-- Index pour la table `addon_inventory_items`
--
ALTER TABLE `addon_inventory_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_addon_inventory_items_inventory_name_name` (`inventory_name`,`name`),
  ADD KEY `index_addon_inventory_items_inventory_name_name_owner` (`inventory_name`,`name`,`owner`),
  ADD KEY `index_addon_inventory_inventory_name` (`inventory_name`);

--
-- Index pour la table `adr`
--
ALTER TABLE `adr`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `aircraftdealer_aircrafts`
--
ALTER TABLE `aircraftdealer_aircrafts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `aircrafts`
--
ALTER TABLE `aircrafts`
  ADD PRIMARY KEY (`model`);

--
-- Index pour la table `aircraft_categories`
--
ALTER TABLE `aircraft_categories`
  ADD PRIMARY KEY (`name`);

--
-- Index pour la table `billing`
--
ALTER TABLE `billing`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `characters`
--
ALTER TABLE `characters`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `datastore`
--
ALTER TABLE `datastore`
  ADD PRIMARY KEY (`name`);

--
-- Index pour la table `datastore_data`
--
ALTER TABLE `datastore_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_datastore_data_name_owner` (`name`,`owner`),
  ADD KEY `index_datastore_data_name` (`name`);

--
-- Index pour la table `entreprises_data`
--
ALTER TABLE `entreprises_data`
  ADD PRIMARY KEY (`label`);

--
-- Index pour la table `fine_types`
--
ALTER TABLE `fine_types`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `fine_types_ballas`
--
ALTER TABLE `fine_types_ballas`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`name`);

--
-- Index pour la table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`name`);

--
-- Index pour la table `job_grades`
--
ALTER TABLE `job_grades`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `licenses`
--
ALTER TABLE `licenses`
  ADD PRIMARY KEY (`type`);

--
-- Index pour la table `opod_projectcars`
--
ALTER TABLE `opod_projectcars`
  ADD PRIMARY KEY (`plate`) USING BTREE;

--
-- Index pour la table `owned_aircrafts`
--
ALTER TABLE `owned_aircrafts`
  ADD PRIMARY KEY (`plate`);

--
-- Index pour la table `owned_properties`
--
ALTER TABLE `owned_properties`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `owned_vehicles`
--
ALTER TABLE `owned_vehicles`
  ADD PRIMARY KEY (`plate`);

--
-- Index pour la table `phone_app_chat`
--
ALTER TABLE `phone_app_chat`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `phone_calls`
--
ALTER TABLE `phone_calls`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `phone_messages`
--
ALTER TABLE `phone_messages`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `phone_users_contacts`
--
ALTER TABLE `phone_users_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `rented_aircrafts`
--
ALTER TABLE `rented_aircrafts`
  ADD PRIMARY KEY (`plate`);

--
-- Index pour la table `rented_vehicles`
--
ALTER TABLE `rented_vehicles`
  ADD PRIMARY KEY (`plate`);

--
-- Index pour la table `society_moneywash`
--
ALTER TABLE `society_moneywash`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`identifier`);

--
-- Index pour la table `user_accounts`
--
ALTER TABLE `user_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user_inventory`
--
ALTER TABLE `user_inventory`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user_licenses`
--
ALTER TABLE `user_licenses`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`model`);

--
-- Index pour la table `vehicle_categories`
--
ALTER TABLE `vehicle_categories`
  ADD PRIMARY KEY (`name`);

--
-- Index pour la table `vehicle_sold`
--
ALTER TABLE `vehicle_sold`
  ADD PRIMARY KEY (`plate`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `addon_account_data`
--
ALTER TABLE `addon_account_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `addon_inventory_items`
--
ALTER TABLE `addon_inventory_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `adr`
--
ALTER TABLE `adr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `aircraftdealer_aircrafts`
--
ALTER TABLE `aircraftdealer_aircrafts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `billing`
--
ALTER TABLE `billing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `characters`
--
ALTER TABLE `characters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `datastore_data`
--
ALTER TABLE `datastore_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT pour la table `fine_types`
--
ALTER TABLE `fine_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT pour la table `fine_types_ballas`
--
ALTER TABLE `fine_types_ballas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `job_grades`
--
ALTER TABLE `job_grades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1584;

--
-- AUTO_INCREMENT pour la table `owned_properties`
--
ALTER TABLE `owned_properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `phone_app_chat`
--
ALTER TABLE `phone_app_chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT pour la table `phone_calls`
--
ALTER TABLE `phone_calls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT pour la table `phone_messages`
--
ALTER TABLE `phone_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT pour la table `phone_users_contacts`
--
ALTER TABLE `phone_users_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `properties`
--
ALTER TABLE `properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT pour la table `society_moneywash`
--
ALTER TABLE `society_moneywash`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `user_accounts`
--
ALTER TABLE `user_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `user_inventory`
--
ALTER TABLE `user_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT pour la table `user_licenses`
--
ALTER TABLE `user_licenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
