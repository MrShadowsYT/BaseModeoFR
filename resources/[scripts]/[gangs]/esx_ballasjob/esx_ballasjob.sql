INSERT INTO `addon_account` (name, label, shared) VALUES 
	('society_ballas','ballas',1)
;

INSERT INTO `datastore` (name, label, shared) VALUES 
	('society_ballas','ballas',1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES 
	('society_ballas', 'ballas', 1)
;

INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
('ballas', "Ballas", 1);

--
-- Déchargement des données de la table `jobs_grades`
--

INSERT INTO `job_grades` (`job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
('ballas', 0, 'recru', "Recrue", 0, '{}', '{}'),
('ballas', 0, 'soldat', "Soldat", 0, '{}', '{}'),
('ballas', 2, 'bras-droit', "Bras Droits", 0, '{}', '{}'),
('ballas', 3, 'boss', "Boss", 0, '{}', '{}');