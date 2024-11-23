-- Créer la base de données si elle n'existe pas
CREATE DATABASE IF NOT EXISTS todolist;

-- Créer l'utilisateur 'todolist' avec un mot de passe
CREATE USER IF NOT EXISTS 'todolist'@'localhost' IDENTIFIED WITH mysql_native_password BY 'G4!tS@r5@2Lw';

-- Accorder tous les privilèges à l'utilisateur 'todolist' pour la base 'todolist'
GRANT ALL PRIVILEGES ON todolist.* TO 'todolist'@'localhost';

-- Appliquer les changements
FLUSH PRIVILEGES;

-- Utiliser la base de données 'todolist'
USE todolist;

-- Créer la table 'todo' si elle n'existe pas
CREATE TABLE IF NOT EXISTS `todo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(2048) NOT NULL,
  `done` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
);
