-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 24 nov. 2025 à 00:20
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `omeka`
--

-- --------------------------------------------------------

--
-- Structure de la table `api_key`
--

CREATE TABLE `api_key` (
  `id` varchar(32) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `label` varchar(255) NOT NULL,
  `credential_hash` varchar(60) NOT NULL,
  `last_ip` varbinary(16) DEFAULT NULL COMMENT '(DC2Type:ip_address)',
  `last_accessed` datetime DEFAULT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `api_key`
--

INSERT INTO `api_key` (`id`, `owner_id`, `label`, `credential_hash`, `last_ip`, `last_accessed`, `created`) VALUES
('CkRbaJ8hFbW3bYAPbzTsevISzDu7SIw6', 1, 'key_identity', '$2y$10$dscYz6noo0PiIXAWyWFUu.xnfkkuy7c/CmpYWZlEIXVXISanmPTyO', 0x00000000000000000000000000000001, '2025-11-18 10:19:08', '2025-11-17 13:18:32');

-- --------------------------------------------------------

--
-- Structure de la table `asset`
--

CREATE TABLE `asset` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `media_type` varchar(255) NOT NULL,
  `storage_id` varchar(190) NOT NULL,
  `extension` varchar(255) DEFAULT NULL,
  `alt_text` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `csvimport_entity`
--

CREATE TABLE `csvimport_entity` (
  `id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `entity_id` int(11) NOT NULL,
  `resource_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `csvimport_entity`
--

INSERT INTO `csvimport_entity` (`id`, `job_id`, `entity_id`, `resource_type`) VALUES
(1, 4, 2, 'items'),
(2, 4, 3, 'items'),
(3, 4, 4, 'items'),
(4, 4, 5, 'items'),
(5, 4, 6, 'items'),
(6, 4, 7, 'items'),
(7, 4, 8, 'items'),
(8, 4, 9, 'items'),
(9, 4, 10, 'items'),
(10, 4, 11, 'items'),
(11, 4, 12, 'items'),
(12, 5, 23, 'items'),
(13, 5, 24, 'items'),
(14, 5, 25, 'items'),
(15, 5, 26, 'items'),
(16, 5, 27, 'items'),
(17, 5, 28, 'items'),
(18, 5, 29, 'items'),
(19, 5, 30, 'items'),
(20, 5, 31, 'items'),
(21, 5, 32, 'items'),
(22, 5, 33, 'items'),
(34, 8, 45, 'items'),
(35, 8, 46, 'items'),
(36, 8, 47, 'items'),
(37, 8, 48, 'items'),
(38, 8, 49, 'items'),
(39, 8, 50, 'items'),
(40, 8, 51, 'items'),
(41, 8, 52, 'items'),
(42, 8, 53, 'items'),
(43, 8, 54, 'items'),
(44, 8, 55, 'items');

-- --------------------------------------------------------

--
-- Structure de la table `csvimport_import`
--

CREATE TABLE `csvimport_import` (
  `id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `undo_job_id` int(11) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `resource_type` varchar(255) NOT NULL,
  `has_err` tinyint(1) NOT NULL,
  `stats` longtext NOT NULL COMMENT '(DC2Type:json_array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `csvimport_import`
--

INSERT INTO `csvimport_import` (`id`, `job_id`, `undo_job_id`, `comment`, `resource_type`, `has_err`, `stats`) VALUES
(1, 4, NULL, '', 'items', 0, '{\"added\":{\"items\":11}}'),
(2, 5, NULL, '', 'items', 0, '{\"added\":{\"items\":11}}'),
(3, 6, 7, '', 'items', 0, '{\"added\":{\"items\":11}}'),
(4, 8, NULL, '', 'items', 0, '{\"added\":{\"items\":11}}');

-- --------------------------------------------------------

--
-- Structure de la table `fulltext_search`
--

CREATE TABLE `fulltext_search` (
  `id` int(11) NOT NULL,
  `resource` varchar(190) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL,
  `title` longtext DEFAULT NULL,
  `text` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `fulltext_search`
--

INSERT INTO `fulltext_search` (`id`, `resource`, `owner_id`, `is_public`, `title`, `text`) VALUES
(1, 'items', 1, 1, 'salle de cours', 'salle de cours\nbatiment A'),
(2, 'items', 1, 1, NULL, 'Université de Paris 8 Saint-Denis'),
(13, 'item_sets', 1, 1, NULL, ''),
(14, 'item_sets', 1, 1, 'test', 'test'),
(21, 'items', 1, 1, 'test', 'test\ntest1\ntest'),
(22, 'media', 1, 1, 'test', 'test'),
(45, 'items', 1, 1, 'Université Paris 8', 'Université Paris 8\nUniversité\nUniversité de Paris 8 Saint-Denis'),
(46, 'items', 1, 1, 'Bâtiment A', 'Bâtiment A\nBâtiment\nBâtiment principal avec salles de cours'),
(47, 'items', 1, 1, 'Bâtiment B', 'Bâtiment B\nBâtiment\nBâtiment informatique et administratif'),
(48, 'items', 1, 1, 'Salle A101', 'Salle A101\nSalle\nBâtiment A\nSalle de cours licence informatique'),
(49, 'items', 1, 1, 'Salle B201', 'Salle B201\nSalle\nBâtiment B\nSalle de TD de traitement du signal'),
(50, 'items', 1, 1, 'Bureau Prof Durand', 'Bureau Prof Durand\nBureau\nBâtiment B\nBureau du Professeur Durand'),
(51, 'items', 1, 1, 'Département Info', 'Département Info\nDépartement\nDépartement Informatique'),
(52, 'items', 1, 1, 'Professeur Durand', 'Professeur Durand\nProfesseur\nBureau Prof Durand\nEnseignant en Réseaux et Systèmes'),
(53, 'items', 1, 1, 'Étudiant Saoud', 'Étudiant Saoud\nÉtudiant\nÉtudiant en Master 2 Signal et Image'),
(54, 'items', 1, 1, 'Itinéraire A101_B201', 'Itinéraire A101_B201\nItinéraire\nSalle A101\nSalle B201\n5\nChemin entre les deux salles principales'),
(55, 'items', 1, 1, 'Itinéraire B201_BureauDurand', 'Itinéraire B201_BureauDurand\nItinéraire\nSalle B201\nBureau Prof Durand\n3\nItinéraire entre la salle et le bureau'),
(62, 'items', 1, 1, 'nvtest', 'nvtest\ntest'),
(63, 'media', 1, 1, NULL, ''),
(64, 'items', 1, 1, 'nouveau', 'nouveau\nhoho');

-- --------------------------------------------------------

--
-- Structure de la table `item`
--

CREATE TABLE `item` (
  `id` int(11) NOT NULL,
  `primary_media_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `item`
--

INSERT INTO `item` (`id`, `primary_media_id`) VALUES
(1, NULL),
(2, NULL),
(21, NULL),
(45, NULL),
(46, NULL),
(47, NULL),
(48, NULL),
(49, NULL),
(50, NULL),
(51, NULL),
(52, NULL),
(53, NULL),
(54, NULL),
(55, NULL),
(62, NULL),
(64, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `item_item_set`
--

CREATE TABLE `item_item_set` (
  `item_id` int(11) NOT NULL,
  `item_set_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `item_item_set`
--

INSERT INTO `item_item_set` (`item_id`, `item_set_id`) VALUES
(21, 13),
(62, 14),
(64, 14);

-- --------------------------------------------------------

--
-- Structure de la table `item_set`
--

CREATE TABLE `item_set` (
  `id` int(11) NOT NULL,
  `is_open` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `item_set`
--

INSERT INTO `item_set` (`id`, `is_open`) VALUES
(13, 0),
(14, 0);

-- --------------------------------------------------------

--
-- Structure de la table `item_site`
--

CREATE TABLE `item_site` (
  `item_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `job`
--

CREATE TABLE `job` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `pid` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `class` varchar(255) NOT NULL,
  `args` longtext DEFAULT NULL COMMENT '(DC2Type:json_array)',
  `log` longtext DEFAULT NULL,
  `started` datetime NOT NULL,
  `ended` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `job`
--

INSERT INTO `job` (`id`, `owner_id`, `pid`, `status`, `class`, `args`, `log`, `started`, `ended`) VALUES
(1, 1, '3348', 'error', 'CSVImport\\Job\\Import', '{\"filename\":\"universite_paris8_donnees.csv\",\"filesize\":\"1055\",\"filepath\":\"C:\\\\Users\\\\T14s\\\\AppData\\\\Local\\\\Temp\\\\ome8163.tmp\",\"media_type\":\"text\\/csv\",\"resource_type\":\"items\",\"comment\":\"\",\"automap_check_names_alone\":false,\"column\":{\"2\":\"appartientA\",\"3\":\"estDans\",\"4\":\"aPourBureau\",\"5\":\"aPourDepart\",\"6\":\"aPourDestination\",\"7\":\"duree\",\"8\":\"description\"},\"generic-data\":\"default\",\"media-source\":\"default\",\"resource-identifier-property\":\"\",\"o:resource_template\":\"\",\"o:resource_class\":\"\",\"o:owner\":{\"o:id\":1},\"o:is_public\":1,\"multivalue_separator\":\",\",\"global_language\":\"\",\"action\":\"create\",\"identifier_column\":0,\"identifier_property\":\"\",\"action_unidentified\":\"skip\",\"rows_by_batch\":20,\"column-multivalue\":[],\"delimiter\":\",\",\"enclosure\":\"\\\"\",\"escape\":\"\\\\\"}', '2025-10-21T08:52:21+00:00 ERR (3): \'command\' n\'est pas reconnu en tant que commande interne\r\nou externe, un programme ex?cutable ou un fichier de commandes.\r\n\r\n2025-10-21T08:52:21+00:00 ERR (3): Command \"command -v \"php\"\" failed with status code 1.\r\n2025-10-21T08:52:21+00:00 ERR (3): Omeka\\Job\\Exception\\RuntimeException: PHP-CLI error: cannot determine path to PHP. in C:\\xampp\\htdocs\\omeka-s\\application\\src\\Job\\DispatchStrategy\\PhpCli.php:68\nStack trace:\n#0 C:\\xampp\\htdocs\\omeka-s\\application\\src\\Job\\Dispatcher.php(105): Omeka\\Job\\DispatchStrategy\\PhpCli->send(Object(Omeka\\Entity\\Job))\n#1 C:\\xampp\\htdocs\\omeka-s\\application\\src\\Job\\Dispatcher.php(91): Omeka\\Job\\Dispatcher->send(Object(Omeka\\Entity\\Job), Object(Omeka\\Job\\DispatchStrategy\\PhpCli))\n#2 C:\\xampp\\htdocs\\omeka-s\\modules\\CSVImport\\src\\Controller\\IndexController.php(160): Omeka\\Job\\Dispatcher->dispatch(\'CSVImport\\\\Job\\\\I...\', Array)\n#3 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\Controller\\AbstractActionController.php(71): CSVImport\\Controller\\IndexController->mapAction()\n#4 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(319): Laminas\\Mvc\\Controller\\AbstractActionController->onDispatch(Object(Laminas\\Mvc\\MvcEvent))\n#5 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(179): Laminas\\EventManager\\EventManager->triggerListeners(Object(Laminas\\Mvc\\MvcEvent), Object(Closure))\n#6 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\Controller\\AbstractController.php(97): Laminas\\EventManager\\EventManager->triggerEventUntil(Object(Closure), Object(Laminas\\Mvc\\MvcEvent))\n#7 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\DispatchListener.php(132): Laminas\\Mvc\\Controller\\AbstractController->dispatch(Object(Laminas\\Http\\PhpEnvironment\\Request), Object(Laminas\\Http\\PhpEnvironment\\Response))\n#8 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(319): Laminas\\Mvc\\DispatchListener->onDispatch(Object(Laminas\\Mvc\\MvcEvent))\n#9 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(179): Laminas\\EventManager\\EventManager->triggerListeners(Object(Laminas\\Mvc\\MvcEvent), Object(Closure))\n#10 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\Application.php(325): Laminas\\EventManager\\EventManager->triggerEventUntil(Object(Closure), Object(Laminas\\Mvc\\MvcEvent))\n#11 C:\\xampp\\htdocs\\omeka-s\\index.php(21): Laminas\\Mvc\\Application->run()\n#12 {main}\r\n', '2025-10-21 08:52:21', '2025-10-21 08:52:21'),
(2, 1, NULL, 'error', 'CSVImport\\Job\\Import', '{\"filename\":\"universite_paris8_donnees.csv\",\"filesize\":\"1055\",\"filepath\":\"C:\\\\Users\\\\T14s\\\\AppData\\\\Local\\\\Temp\\\\ome68BB.tmp\",\"media_type\":\"text\\/csv\",\"resource_type\":\"items\",\"comment\":\"\",\"automap_check_names_alone\":false,\"generic-data\":\"default\",\"media-source\":\"default\",\"resource-identifier-property\":\"\",\"o:resource_template\":{\"o:id\":3},\"o:resource_class\":\"\",\"o:owner\":{\"o:id\":1},\"o:is_public\":1,\"multivalue_separator\":\",\",\"global_language\":\"\",\"action\":\"create\",\"identifier_column\":0,\"identifier_property\":\"\",\"action_unidentified\":\"skip\",\"rows_by_batch\":20,\"column-multivalue\":[],\"delimiter\":\",\",\"enclosure\":\"\\\"\",\"escape\":\"\\\\\"}', '2025-11-04T08:25:55+00:00 ERR (3): \'command\' n\'est pas reconnu en tant que commande interne\r\nou externe, un programme ex?cutable ou un fichier de commandes.\r\n\r\n2025-11-04T08:25:55+00:00 ERR (3): Command \"command -v \"php\"\" failed with status code 1.\r\n2025-11-04T08:25:55+00:00 ERR (3): Omeka\\Job\\Exception\\RuntimeException: PHP-CLI error: cannot determine path to PHP. in C:\\xampp\\htdocs\\omeka-s\\application\\src\\Job\\DispatchStrategy\\PhpCli.php:68\nStack trace:\n#0 C:\\xampp\\htdocs\\omeka-s\\application\\src\\Job\\Dispatcher.php(105): Omeka\\Job\\DispatchStrategy\\PhpCli->send(Object(Omeka\\Entity\\Job))\n#1 C:\\xampp\\htdocs\\omeka-s\\application\\src\\Job\\Dispatcher.php(91): Omeka\\Job\\Dispatcher->send(Object(Omeka\\Entity\\Job), Object(Omeka\\Job\\DispatchStrategy\\PhpCli))\n#2 C:\\xampp\\htdocs\\omeka-s\\modules\\CSVImport\\src\\Controller\\IndexController.php(160): Omeka\\Job\\Dispatcher->dispatch(\'CSVImport\\\\Job\\\\I...\', Array)\n#3 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\Controller\\AbstractActionController.php(71): CSVImport\\Controller\\IndexController->mapAction()\n#4 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(319): Laminas\\Mvc\\Controller\\AbstractActionController->onDispatch(Object(Laminas\\Mvc\\MvcEvent))\n#5 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(179): Laminas\\EventManager\\EventManager->triggerListeners(Object(Laminas\\Mvc\\MvcEvent), Object(Closure))\n#6 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\Controller\\AbstractController.php(97): Laminas\\EventManager\\EventManager->triggerEventUntil(Object(Closure), Object(Laminas\\Mvc\\MvcEvent))\n#7 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\DispatchListener.php(132): Laminas\\Mvc\\Controller\\AbstractController->dispatch(Object(Laminas\\Http\\PhpEnvironment\\Request), Object(Laminas\\Http\\PhpEnvironment\\Response))\n#8 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(319): Laminas\\Mvc\\DispatchListener->onDispatch(Object(Laminas\\Mvc\\MvcEvent))\n#9 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(179): Laminas\\EventManager\\EventManager->triggerListeners(Object(Laminas\\Mvc\\MvcEvent), Object(Closure))\n#10 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\Application.php(325): Laminas\\EventManager\\EventManager->triggerEventUntil(Object(Closure), Object(Laminas\\Mvc\\MvcEvent))\n#11 C:\\xampp\\htdocs\\omeka-s\\index.php(21): Laminas\\Mvc\\Application->run()\n#12 {main}\r\n', '2025-11-04 08:25:55', '2025-11-04 08:25:55'),
(3, 1, NULL, 'error', 'CSVImport\\Job\\Import', '{\"filename\":\"universite_paris8_donnees.csv\",\"filesize\":\"1055\",\"filepath\":\"C:\\\\Users\\\\T14s\\\\AppData\\\\Local\\\\Temp\\\\omeAE68.tmp\",\"media_type\":\"text\\/csv\",\"resource_type\":\"items\",\"comment\":\"\",\"automap_check_names_alone\":false,\"generic-data\":\"default\",\"media-source\":\"default\",\"resource-identifier-property\":\"\",\"o:resource_template\":\"\",\"o:resource_class\":\"\",\"o:owner\":{\"o:id\":1},\"o:is_public\":1,\"multivalue_separator\":\",\",\"global_language\":\"\",\"action\":\"create\",\"identifier_column\":0,\"identifier_property\":\"\",\"action_unidentified\":\"skip\",\"rows_by_batch\":20,\"column-multivalue\":[],\"delimiter\":\",\",\"enclosure\":\"\\\"\",\"escape\":\"\\\\\"}', '2025-11-11T16:27:20+00:00 ERR (3): \'command\' n\'est pas reconnu en tant que commande interne\r\nou externe, un programme ex?cutable ou un fichier de commandes.\r\n\r\n2025-11-11T16:27:20+00:00 ERR (3): Command \"command -v \"php\"\" failed with status code 1.\r\n2025-11-11T16:27:20+00:00 ERR (3): Omeka\\Job\\Exception\\RuntimeException: PHP-CLI error: cannot determine path to PHP. in C:\\xampp\\htdocs\\omeka-s\\application\\src\\Job\\DispatchStrategy\\PhpCli.php:68\nStack trace:\n#0 C:\\xampp\\htdocs\\omeka-s\\application\\src\\Job\\Dispatcher.php(105): Omeka\\Job\\DispatchStrategy\\PhpCli->send(Object(Omeka\\Entity\\Job))\n#1 C:\\xampp\\htdocs\\omeka-s\\application\\src\\Job\\Dispatcher.php(91): Omeka\\Job\\Dispatcher->send(Object(Omeka\\Entity\\Job), Object(Omeka\\Job\\DispatchStrategy\\PhpCli))\n#2 C:\\xampp\\htdocs\\omeka-s\\modules\\CSVImport\\src\\Controller\\IndexController.php(160): Omeka\\Job\\Dispatcher->dispatch(\'CSVImport\\\\Job\\\\I...\', Array)\n#3 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\Controller\\AbstractActionController.php(71): CSVImport\\Controller\\IndexController->mapAction()\n#4 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(319): Laminas\\Mvc\\Controller\\AbstractActionController->onDispatch(Object(Laminas\\Mvc\\MvcEvent))\n#5 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(179): Laminas\\EventManager\\EventManager->triggerListeners(Object(Laminas\\Mvc\\MvcEvent), Object(Closure))\n#6 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\Controller\\AbstractController.php(97): Laminas\\EventManager\\EventManager->triggerEventUntil(Object(Closure), Object(Laminas\\Mvc\\MvcEvent))\n#7 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\DispatchListener.php(132): Laminas\\Mvc\\Controller\\AbstractController->dispatch(Object(Laminas\\Http\\PhpEnvironment\\Request), Object(Laminas\\Http\\PhpEnvironment\\Response))\n#8 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(319): Laminas\\Mvc\\DispatchListener->onDispatch(Object(Laminas\\Mvc\\MvcEvent))\n#9 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(179): Laminas\\EventManager\\EventManager->triggerListeners(Object(Laminas\\Mvc\\MvcEvent), Object(Closure))\n#10 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\Application.php(325): Laminas\\EventManager\\EventManager->triggerEventUntil(Object(Closure), Object(Laminas\\Mvc\\MvcEvent))\n#11 C:\\xampp\\htdocs\\omeka-s\\index.php(21): Laminas\\Mvc\\Application->run()\n#12 {main}\r\n', '2025-11-11 16:27:20', '2025-11-11 16:27:20'),
(4, 1, '27452', 'completed', 'CSVImport\\Job\\Import', '{\"filename\":\"universite_paris8_donnees.csv\",\"filesize\":\"1271\",\"filepath\":\"C:\\\\Users\\\\T14s\\\\AppData\\\\Local\\\\Temp\\\\ome4C01.tmp\",\"media_type\":\"text\\/csv\",\"resource_type\":\"items\",\"comment\":\"\",\"automap_check_names_alone\":true,\"column-property\":{\"3\":{\"up8:estDans\":210},\"4\":{\"up8:aPourBureau\":213},\"5\":{\"up8:aPourDepart\":215},\"6\":{\"up8:aPourDestination\":216},\"7\":{\"up8:duree\":217},\"8\":{\"dcterms:description\":4}},\"generic-data\":\"default\",\"media-source\":\"default\",\"resource-identifier-property\":\"\",\"o:resource_template\":\"\",\"o:resource_class\":\"\",\"o:owner\":{\"o:id\":1},\"o:is_public\":1,\"multivalue_separator\":\",\",\"global_language\":\"\",\"action\":\"create\",\"identifier_column\":0,\"identifier_property\":\"\",\"action_unidentified\":\"skip\",\"rows_by_batch\":20,\"column-multivalue\":[],\"delimiter\":\",\",\"enclosure\":\"\\\"\",\"escape\":\"\\\\\"}', NULL, '2025-11-11 19:48:56', '2025-11-11 19:48:57'),
(5, 1, '8764', 'completed', 'CSVImport\\Job\\Import', '{\"filename\":\"universite_paris8_donnees.csv\",\"filesize\":\"1218\",\"filepath\":\"C:\\\\Users\\\\T14s\\\\AppData\\\\Local\\\\Temp\\\\ome34C5.tmp\",\"media_type\":\"text\\/csv\",\"resource_type\":\"items\",\"comment\":\"\",\"automap_check_names_alone\":true,\"column-property\":{\"3\":{\"up8:estDans\":210},\"4\":{\"up8:aPourBureau\":213},\"5\":{\"up8:aPourDepart\":215},\"6\":{\"up8:aPourDestination\":216},\"7\":{\"up8:duree\":217},\"8\":{\"dcterms:description\":4}},\"generic-data\":\"default\",\"media-source\":\"default\",\"resource-identifier-property\":\"\",\"o:resource_template\":\"\",\"o:resource_class\":\"\",\"o:owner\":{\"o:id\":1},\"o:is_public\":1,\"multivalue_separator\":\",\",\"global_language\":\"\",\"action\":\"create\",\"identifier_column\":0,\"identifier_property\":\"\",\"action_unidentified\":\"skip\",\"rows_by_batch\":20,\"column-multivalue\":[],\"delimiter\":\",\",\"enclosure\":\"\\\"\",\"escape\":\"\\\\\"}', NULL, '2025-11-17 22:41:13', '2025-11-17 22:41:14'),
(6, 1, '20140', 'completed', 'CSVImport\\Job\\Import', '{\"filename\":\"universite_paris8_donnees.csv\",\"filesize\":\"1233\",\"filepath\":\"C:\\\\Users\\\\T14s\\\\AppData\\\\Local\\\\Temp\\\\omeDFEC.tmp\",\"media_type\":\"text\\/csv\",\"resource_type\":\"items\",\"comment\":\"\",\"automap_check_names_alone\":true,\"column-property\":{\"0\":{\"dcterms:title\":1},\"1\":{\"dcterms:type\":8},\"3\":{\"up8:estDans\":210},\"4\":{\"up8:aPourBureau\":213},\"5\":{\"up8:aPourDepart\":215},\"6\":{\"up8:aPourDestination\":216},\"7\":{\"up8:duree\":217},\"8\":{\"dcterms:description\":4}},\"generic-data\":\"default\",\"media-source\":\"default\",\"resource-identifier-property\":\"\",\"o:resource_template\":\"\",\"o:resource_class\":\"\",\"o:owner\":{\"o:id\":1},\"o:is_public\":1,\"multivalue_separator\":\",\",\"global_language\":\"\",\"action\":\"create\",\"identifier_column\":0,\"identifier_property\":\"\",\"action_unidentified\":\"skip\",\"rows_by_batch\":20,\"column-multivalue\":[],\"delimiter\":\",\",\"enclosure\":\"\\\"\",\"escape\":\"\\\\\"}', NULL, '2025-11-17 23:06:55', '2025-11-17 23:06:56'),
(7, 1, '4384', 'completed', 'CSVImport\\Job\\Undo', '{\"jobId\":\"6\"}', NULL, '2025-11-17 23:07:14', '2025-11-17 23:07:14'),
(8, 1, '13688', 'completed', 'CSVImport\\Job\\Import', '{\"filename\":\"universite_paris8_donnees.csv\",\"filesize\":\"1233\",\"filepath\":\"C:\\\\Users\\\\T14s\\\\AppData\\\\Local\\\\Temp\\\\ome7F99.tmp\",\"media_type\":\"text\\/csv\",\"resource_type\":\"items\",\"comment\":\"\",\"automap_check_names_alone\":true,\"column-property\":{\"0\":{\"dcterms:title\":1},\"1\":{\"dcterms:type\":8},\"3\":{\"up8:estDans\":210},\"4\":{\"up8:aPourBureau\":213},\"5\":{\"up8:aPourDepart\":215},\"6\":{\"up8:aPourDestination\":216},\"7\":{\"up8:duree\":217},\"8\":{\"dcterms:description\":4}},\"generic-data\":\"default\",\"media-source\":\"default\",\"resource-identifier-property\":\"\",\"o:resource_template\":\"\",\"o:resource_class\":\"\",\"o:owner\":{\"o:id\":1},\"o:is_public\":1,\"multivalue_separator\":\",\",\"global_language\":\"\",\"action\":\"create\",\"identifier_column\":0,\"identifier_property\":\"\",\"action_unidentified\":\"skip\",\"rows_by_batch\":20,\"column-multivalue\":[],\"delimiter\":\",\",\"enclosure\":\"\\\"\",\"escape\":\"\\\\\"}', NULL, '2025-11-17 23:07:36', '2025-11-17 23:07:36');

-- --------------------------------------------------------

--
-- Structure de la table `media`
--

CREATE TABLE `media` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `ingester` varchar(255) NOT NULL,
  `renderer` varchar(255) NOT NULL,
  `data` longtext DEFAULT NULL COMMENT '(DC2Type:json_array)',
  `source` longtext DEFAULT NULL,
  `media_type` varchar(255) DEFAULT NULL,
  `storage_id` varchar(190) DEFAULT NULL,
  `extension` varchar(255) DEFAULT NULL,
  `sha256` char(64) DEFAULT NULL,
  `size` bigint(20) DEFAULT NULL,
  `has_original` tinyint(1) NOT NULL,
  `has_thumbnails` tinyint(1) NOT NULL,
  `position` int(11) DEFAULT NULL,
  `lang` varchar(190) DEFAULT NULL,
  `alt_text` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `media`
--

INSERT INTO `media` (`id`, `item_id`, `ingester`, `renderer`, `data`, `source`, `media_type`, `storage_id`, `extension`, `sha256`, `size`, `has_original`, `has_thumbnails`, `position`, `lang`, `alt_text`) VALUES
(22, 21, 'upload', 'file', NULL, 'Recording.m4a', 'video/mp4', '5fbbf75e6f1d1e9ec7694dc6cfd2832fadddda41', 'm4a', '4a0a03c850cceeb52bda43d22e73a8193348fa9aeb914fa3ad9b0972f26f999a', 108703, 1, 0, NULL, NULL, NULL),
(63, 62, 'upload', 'file', NULL, 'test.m4a', 'video/mp4', 'd4c0bbe46c2e26557d230ee8f99185e0842b7c6d', 'm4a', 'd0ee50a6f224c0b76c476a01877187cd5759ee51b497c6d5dba64b895e2f54b6', 70739, 1, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migration`
--

INSERT INTO `migration` (`version`) VALUES
('20171128053327'),
('20180412035023'),
('20180919072656'),
('20180924033501'),
('20181002015551'),
('20181004043735'),
('20181106060421'),
('20190307043537'),
('20190319020708'),
('20190412090532'),
('20190423040354'),
('20190423071228'),
('20190514061351'),
('20190515055359'),
('20190729023728'),
('20190809092609'),
('20190815062003'),
('20200224022356'),
('20200226064602'),
('20200325091157'),
('20200326091310'),
('20200803000000'),
('20200831000000'),
('20210205101827'),
('20210225095734'),
('20210810083804'),
('20220718090449'),
('20220824103916'),
('20230124033031'),
('20230410074846'),
('20230523085358'),
('20230601060113'),
('20230713101012'),
('20231016000000'),
('20240103030617');

-- --------------------------------------------------------

--
-- Structure de la table `module`
--

CREATE TABLE `module` (
  `id` varchar(190) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `version` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `module`
--

INSERT INTO `module` (`id`, `is_active`, `version`) VALUES
('CSVImport', 1, '2.6.2'),
('TestModule', 1, '1.0.0');

-- --------------------------------------------------------

--
-- Structure de la table `password_creation`
--

CREATE TABLE `password_creation` (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `activate` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `password_creation`
--

INSERT INTO `password_creation` (`id`, `user_id`, `created`, `activate`) VALUES
('PLPpP7LjHB8BtzJJfPeZUuqxliQpsEPP', 1, '2025-11-03 11:48:43', 0),
('mh39ochuU4yd8mIdiPBfT7nl7bHOq2xN', 2, '2025-10-21 08:53:46', 1);

-- --------------------------------------------------------

--
-- Structure de la table `property`
--

CREATE TABLE `property` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `vocabulary_id` int(11) NOT NULL,
  `local_name` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(255) NOT NULL,
  `comment` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `property`
--

INSERT INTO `property` (`id`, `owner_id`, `vocabulary_id`, `local_name`, `label`, `comment`) VALUES
(1, NULL, 1, 'title', 'Title', 'A name given to the resource.'),
(2, NULL, 1, 'creator', 'Creator', 'An entity primarily responsible for making the resource.'),
(3, NULL, 1, 'subject', 'Subject', 'The topic of the resource.'),
(4, NULL, 1, 'description', 'Description', 'An account of the resource.'),
(5, NULL, 1, 'publisher', 'Publisher', 'An entity responsible for making the resource available.'),
(6, NULL, 1, 'contributor', 'Contributor', 'An entity responsible for making contributions to the resource.'),
(7, NULL, 1, 'date', 'Date', 'A point or period of time associated with an event in the lifecycle of the resource.'),
(8, NULL, 1, 'type', 'Type', 'The nature or genre of the resource.'),
(9, NULL, 1, 'format', 'Format', 'The file format, physical medium, or dimensions of the resource.'),
(10, NULL, 1, 'identifier', 'Identifier', 'An unambiguous reference to the resource within a given context.'),
(11, NULL, 1, 'source', 'Source', 'A related resource from which the described resource is derived.'),
(12, NULL, 1, 'language', 'Language', 'A language of the resource.'),
(13, NULL, 1, 'relation', 'Relation', 'A related resource.'),
(14, NULL, 1, 'coverage', 'Coverage', 'The spatial or temporal topic of the resource, the spatial applicability of the resource, or the jurisdiction under which the resource is relevant.'),
(15, NULL, 1, 'rights', 'Rights', 'Information about rights held in and over the resource.'),
(16, NULL, 1, 'audience', 'Audience', 'A class of entity for whom the resource is intended or useful.'),
(17, NULL, 1, 'alternative', 'Alternative Title', 'An alternative name for the resource.'),
(18, NULL, 1, 'tableOfContents', 'Table Of Contents', 'A list of subunits of the resource.'),
(19, NULL, 1, 'abstract', 'Abstract', 'A summary of the resource.'),
(20, NULL, 1, 'created', 'Date Created', 'Date of creation of the resource.'),
(21, NULL, 1, 'valid', 'Date Valid', 'Date (often a range) of validity of a resource.'),
(22, NULL, 1, 'available', 'Date Available', 'Date (often a range) that the resource became or will become available.'),
(23, NULL, 1, 'issued', 'Date Issued', 'Date of formal issuance (e.g., publication) of the resource.'),
(24, NULL, 1, 'modified', 'Date Modified', 'Date on which the resource was changed.'),
(25, NULL, 1, 'extent', 'Extent', 'The size or duration of the resource.'),
(26, NULL, 1, 'medium', 'Medium', 'The material or physical carrier of the resource.'),
(27, NULL, 1, 'isVersionOf', 'Is Version Of', 'A related resource of which the described resource is a version, edition, or adaptation.'),
(28, NULL, 1, 'hasVersion', 'Has Version', 'A related resource that is a version, edition, or adaptation of the described resource.'),
(29, NULL, 1, 'isReplacedBy', 'Is Replaced By', 'A related resource that supplants, displaces, or supersedes the described resource.'),
(30, NULL, 1, 'replaces', 'Replaces', 'A related resource that is supplanted, displaced, or superseded by the described resource.'),
(31, NULL, 1, 'isRequiredBy', 'Is Required By', 'A related resource that requires the described resource to support its function, delivery, or coherence.'),
(32, NULL, 1, 'requires', 'Requires', 'A related resource that is required by the described resource to support its function, delivery, or coherence.'),
(33, NULL, 1, 'isPartOf', 'Is Part Of', 'A related resource in which the described resource is physically or logically included.'),
(34, NULL, 1, 'hasPart', 'Has Part', 'A related resource that is included either physically or logically in the described resource.'),
(35, NULL, 1, 'isReferencedBy', 'Is Referenced By', 'A related resource that references, cites, or otherwise points to the described resource.'),
(36, NULL, 1, 'references', 'References', 'A related resource that is referenced, cited, or otherwise pointed to by the described resource.'),
(37, NULL, 1, 'isFormatOf', 'Is Format Of', 'A related resource that is substantially the same as the described resource, but in another format.'),
(38, NULL, 1, 'hasFormat', 'Has Format', 'A related resource that is substantially the same as the pre-existing described resource, but in another format.'),
(39, NULL, 1, 'conformsTo', 'Conforms To', 'An established standard to which the described resource conforms.'),
(40, NULL, 1, 'spatial', 'Spatial Coverage', 'Spatial characteristics of the resource.'),
(41, NULL, 1, 'temporal', 'Temporal Coverage', 'Temporal characteristics of the resource.'),
(42, NULL, 1, 'mediator', 'Mediator', 'An entity that mediates access to the resource and for whom the resource is intended or useful.'),
(43, NULL, 1, 'dateAccepted', 'Date Accepted', 'Date of acceptance of the resource.'),
(44, NULL, 1, 'dateCopyrighted', 'Date Copyrighted', 'Date of copyright.'),
(45, NULL, 1, 'dateSubmitted', 'Date Submitted', 'Date of submission of the resource.'),
(46, NULL, 1, 'educationLevel', 'Audience Education Level', 'A class of entity, defined in terms of progression through an educational or training context, for which the described resource is intended.'),
(47, NULL, 1, 'accessRights', 'Access Rights', 'Information about who can access the resource or an indication of its security status.'),
(48, NULL, 1, 'bibliographicCitation', 'Bibliographic Citation', 'A bibliographic reference for the resource.'),
(49, NULL, 1, 'license', 'License', 'A legal document giving official permission to do something with the resource.'),
(50, NULL, 1, 'rightsHolder', 'Rights Holder', 'A person or organization owning or managing rights over the resource.'),
(51, NULL, 1, 'provenance', 'Provenance', 'A statement of any changes in ownership and custody of the resource since its creation that are significant for its authenticity, integrity, and interpretation.'),
(52, NULL, 1, 'instructionalMethod', 'Instructional Method', 'A process, used to engender knowledge, attitudes and skills, that the described resource is designed to support.'),
(53, NULL, 1, 'accrualMethod', 'Accrual Method', 'The method by which items are added to a collection.'),
(54, NULL, 1, 'accrualPeriodicity', 'Accrual Periodicity', 'The frequency with which items are added to a collection.'),
(55, NULL, 1, 'accrualPolicy', 'Accrual Policy', 'The policy governing the addition of items to a collection.'),
(56, NULL, 3, 'affirmedBy', 'affirmedBy', 'A legal decision that affirms a ruling.'),
(57, NULL, 3, 'annotates', 'annotates', 'Critical or explanatory note for a Document.'),
(58, NULL, 3, 'authorList', 'list of authors', 'An ordered list of authors. Normally, this list is seen as a priority list that order authors by importance.'),
(59, NULL, 3, 'citedBy', 'cited by', 'Relates a document to another document that cites the\nfirst document.'),
(60, NULL, 3, 'cites', 'cites', 'Relates a document to another document that is cited\nby the first document as reference, comment, review, quotation or for\nanother purpose.'),
(61, NULL, 3, 'contributorList', 'list of contributors', 'An ordered list of contributors. Normally, this list is seen as a priority list that order contributors by importance.'),
(62, NULL, 3, 'court', 'court', 'A court associated with a legal document; for example, that which issues a decision.'),
(63, NULL, 3, 'degree', 'degree', 'The thesis degree.'),
(64, NULL, 3, 'director', 'director', 'A Film director.'),
(65, NULL, 3, 'distributor', 'distributor', 'Distributor of a document or a collection of documents.'),
(66, NULL, 3, 'editor', 'editor', 'A person having managerial and sometimes policy-making responsibility for the editorial part of a publishing firm or of a newspaper, magazine, or other publication.'),
(67, NULL, 3, 'editorList', 'list of editors', 'An ordered list of editors. Normally, this list is seen as a priority list that order editors by importance.'),
(68, NULL, 3, 'interviewee', 'interviewee', 'An agent that is interviewed by another agent.'),
(69, NULL, 3, 'interviewer', 'interviewer', 'An agent that interview another agent.'),
(70, NULL, 3, 'issuer', 'issuer', 'An entity responsible for issuing often informally published documents such as press releases, reports, etc.'),
(71, NULL, 3, 'organizer', 'organizer', 'The organizer of an event; includes conference organizers, but also government agencies or other bodies that are responsible for conducting hearings.'),
(72, NULL, 3, 'owner', 'owner', 'Owner of a document or a collection of documents.'),
(73, NULL, 3, 'performer', 'performer', NULL),
(74, NULL, 3, 'presentedAt', 'presented at', 'Relates a document to an event; for example, a paper to a conference.'),
(75, NULL, 3, 'presents', 'presents', 'Relates an event to associated documents; for example, conference to a paper.'),
(76, NULL, 3, 'producer', 'producer', 'Producer of a document or a collection of documents.'),
(77, NULL, 3, 'recipient', 'recipient', 'An agent that receives a communication document.'),
(78, NULL, 3, 'reproducedIn', 'reproducedIn', 'The resource in which another resource is reproduced.'),
(79, NULL, 3, 'reversedBy', 'reversedBy', 'A legal decision that reverses a ruling.'),
(80, NULL, 3, 'reviewOf', 'review of', 'Relates a review document to a reviewed thing (resource, item, etc.).'),
(81, NULL, 3, 'status', 'status', 'The publication status of (typically academic) content.'),
(82, NULL, 3, 'subsequentLegalDecision', 'subsequentLegalDecision', 'A legal decision on appeal that takes action on a case (affirming it, reversing it, etc.).'),
(83, NULL, 3, 'transcriptOf', 'transcript of', 'Relates a document to some transcribed original.'),
(84, NULL, 3, 'translationOf', 'translation of', 'Relates a translated document to the original document.'),
(85, NULL, 3, 'translator', 'translator', 'A person who translates written document from one language to another.'),
(86, NULL, 3, 'abstract', 'abstract', 'A summary of the resource.'),
(87, NULL, 3, 'argued', 'date argued', 'The date on which a legal case is argued before a court. Date is of format xsd:date'),
(88, NULL, 3, 'asin', 'asin', NULL),
(89, NULL, 3, 'chapter', 'chapter', 'An chapter number'),
(90, NULL, 3, 'coden', 'coden', NULL),
(91, NULL, 3, 'content', 'content', 'This property is for a plain-text rendering of the content of a Document. While the plain-text content of an entire document could be described by this property.'),
(92, NULL, 3, 'doi', 'doi', NULL),
(93, NULL, 3, 'eanucc13', 'eanucc13', NULL),
(94, NULL, 3, 'edition', 'edition', 'The name defining a special edition of a document. Normally its a literal value composed of a version number and words.'),
(95, NULL, 3, 'eissn', 'eissn', NULL),
(96, NULL, 3, 'gtin14', 'gtin14', NULL),
(97, NULL, 3, 'handle', 'handle', NULL),
(98, NULL, 3, 'identifier', 'identifier', NULL),
(99, NULL, 3, 'isbn', 'isbn', NULL),
(100, NULL, 3, 'isbn10', 'isbn10', NULL),
(101, NULL, 3, 'isbn13', 'isbn13', NULL),
(102, NULL, 3, 'issn', 'issn', NULL),
(103, NULL, 3, 'issue', 'issue', 'An issue number'),
(104, NULL, 3, 'lccn', 'lccn', NULL),
(105, NULL, 3, 'locator', 'locator', 'A description (often numeric) that locates an item within a containing document or collection.'),
(106, NULL, 3, 'numPages', 'number of pages', 'The number of pages contained in a document'),
(107, NULL, 3, 'numVolumes', 'number of volumes', 'The number of volumes contained in a collection of documents (usually a series, periodical, etc.).'),
(108, NULL, 3, 'number', 'number', 'A generic item or document number. Not to be confused with issue number.'),
(109, NULL, 3, 'oclcnum', 'oclcnum', NULL),
(110, NULL, 3, 'pageEnd', 'page end', 'Ending page number within a continuous page range.'),
(111, NULL, 3, 'pageStart', 'page start', 'Starting page number within a continuous page range.'),
(112, NULL, 3, 'pages', 'pages', 'A string of non-contiguous page spans that locate a Document within a Collection. Example: 23-25, 34, 54-56. For continuous page ranges, use the pageStart and pageEnd properties.'),
(113, NULL, 3, 'pmid', 'pmid', NULL),
(114, NULL, 3, 'prefixName', 'prefix name', 'The prefix of a name'),
(115, NULL, 3, 'section', 'section', 'A section number'),
(116, NULL, 3, 'shortDescription', 'shortDescription', NULL),
(117, NULL, 3, 'shortTitle', 'short title', 'The abbreviation of a title.'),
(118, NULL, 3, 'sici', 'sici', NULL),
(119, NULL, 3, 'suffixName', 'suffix name', 'The suffix of a name'),
(120, NULL, 3, 'upc', 'upc', NULL),
(121, NULL, 3, 'uri', 'uri', 'Universal Resource Identifier of a document'),
(122, NULL, 3, 'volume', 'volume', 'A volume number'),
(123, NULL, 4, 'mbox', 'personal mailbox', 'A  personal mailbox, ie. an Internet mailbox associated with exactly one owner, the first owner of this mailbox. This is a \'static inverse functional property\', in that  there is (across time and change) at most one individual that ever has any particular value for foaf:mbox.'),
(124, NULL, 4, 'mbox_sha1sum', 'sha1sum of a personal mailbox URI name', 'The sha1sum of the URI of an Internet mailbox associated with exactly one owner, the  first owner of the mailbox.'),
(125, NULL, 4, 'gender', 'gender', 'The gender of this Agent (typically but not necessarily \'male\' or \'female\').'),
(126, NULL, 4, 'geekcode', 'geekcode', 'A textual geekcode for this person, see http://www.geekcode.com/geek.html'),
(127, NULL, 4, 'dnaChecksum', 'DNA checksum', 'A checksum for the DNA of some thing. Joke.'),
(128, NULL, 4, 'sha1', 'sha1sum (hex)', 'A sha1sum hash, in hex.'),
(129, NULL, 4, 'based_near', 'based near', 'A location that something is based near, for some broadly human notion of near.'),
(130, NULL, 4, 'title', 'title', 'Title (Mr, Mrs, Ms, Dr. etc)'),
(131, NULL, 4, 'nick', 'nickname', 'A short informal nickname characterising an agent (includes login identifiers, IRC and other chat nicknames).'),
(132, NULL, 4, 'jabberID', 'jabber ID', 'A jabber ID for something.'),
(133, NULL, 4, 'aimChatID', 'AIM chat ID', 'An AIM chat ID'),
(134, NULL, 4, 'skypeID', 'Skype ID', 'A Skype ID'),
(135, NULL, 4, 'icqChatID', 'ICQ chat ID', 'An ICQ chat ID'),
(136, NULL, 4, 'yahooChatID', 'Yahoo chat ID', 'A Yahoo chat ID'),
(137, NULL, 4, 'msnChatID', 'MSN chat ID', 'An MSN chat ID'),
(138, NULL, 4, 'name', 'name', 'A name for some thing.'),
(139, NULL, 4, 'firstName', 'firstName', 'The first name of a person.'),
(140, NULL, 4, 'lastName', 'lastName', 'The last name of a person.'),
(141, NULL, 4, 'givenName', 'Given name', 'The given name of some person.'),
(142, NULL, 4, 'givenname', 'Given name', 'The given name of some person.'),
(143, NULL, 4, 'surname', 'Surname', 'The surname of some person.'),
(144, NULL, 4, 'family_name', 'family_name', 'The family name of some person.'),
(145, NULL, 4, 'familyName', 'familyName', 'The family name of some person.'),
(146, NULL, 4, 'phone', 'phone', 'A phone,  specified using fully qualified tel: URI scheme (refs: http://www.w3.org/Addressing/schemes.html#tel).'),
(147, NULL, 4, 'homepage', 'homepage', 'A homepage for some thing.'),
(148, NULL, 4, 'weblog', 'weblog', 'A weblog of some thing (whether person, group, company etc.).'),
(149, NULL, 4, 'openid', 'openid', 'An OpenID for an Agent.'),
(150, NULL, 4, 'tipjar', 'tipjar', 'A tipjar document for this agent, describing means for payment and reward.'),
(151, NULL, 4, 'plan', 'plan', 'A .plan comment, in the tradition of finger and \'.plan\' files.'),
(152, NULL, 4, 'made', 'made', 'Something that was made by this agent.'),
(153, NULL, 4, 'maker', 'maker', 'An agent that  made this thing.'),
(154, NULL, 4, 'img', 'image', 'An image that can be used to represent some thing (ie. those depictions which are particularly representative of something, eg. one\'s photo on a homepage).'),
(155, NULL, 4, 'depiction', 'depiction', 'A depiction of some thing.'),
(156, NULL, 4, 'depicts', 'depicts', 'A thing depicted in this representation.'),
(157, NULL, 4, 'thumbnail', 'thumbnail', 'A derived thumbnail image.'),
(158, NULL, 4, 'myersBriggs', 'myersBriggs', 'A Myers Briggs (MBTI) personality classification.'),
(159, NULL, 4, 'workplaceHomepage', 'workplace homepage', 'A workplace homepage of some person; the homepage of an organization they work for.'),
(160, NULL, 4, 'workInfoHomepage', 'work info homepage', 'A work info homepage of some person; a page about their work for some organization.'),
(161, NULL, 4, 'schoolHomepage', 'schoolHomepage', 'A homepage of a school attended by the person.'),
(162, NULL, 4, 'knows', 'knows', 'A person known by this person (indicating some level of reciprocated interaction between the parties).'),
(163, NULL, 4, 'interest', 'interest', 'A page about a topic of interest to this person.'),
(164, NULL, 4, 'topic_interest', 'topic_interest', 'A thing of interest to this person.'),
(165, NULL, 4, 'publications', 'publications', 'A link to the publications of this person.'),
(166, NULL, 4, 'currentProject', 'current project', 'A current project this person works on.'),
(167, NULL, 4, 'pastProject', 'past project', 'A project this person has previously worked on.'),
(168, NULL, 4, 'fundedBy', 'funded by', 'An organization funding a project or person.'),
(169, NULL, 4, 'logo', 'logo', 'A logo representing some thing.'),
(170, NULL, 4, 'topic', 'topic', 'A topic of some page or document.'),
(171, NULL, 4, 'primaryTopic', 'primary topic', 'The primary topic of some page or document.'),
(172, NULL, 4, 'focus', 'focus', 'The underlying or \'focal\' entity associated with some SKOS-described concept.'),
(173, NULL, 4, 'isPrimaryTopicOf', 'is primary topic of', 'A document that this thing is the primary topic of.'),
(174, NULL, 4, 'page', 'page', 'A page or document about this thing.'),
(175, NULL, 4, 'theme', 'theme', 'A theme.'),
(176, NULL, 4, 'account', 'account', 'Indicates an account held by this agent.'),
(177, NULL, 4, 'holdsAccount', 'account', 'Indicates an account held by this agent.'),
(178, NULL, 4, 'accountServiceHomepage', 'account service homepage', 'Indicates a homepage of the service provide for this online account.'),
(179, NULL, 4, 'accountName', 'account name', 'Indicates the name (identifier) associated with this online account.'),
(180, NULL, 4, 'member', 'member', 'Indicates a member of a Group'),
(181, NULL, 4, 'membershipClass', 'membershipClass', 'Indicates the class of individuals that are a member of a Group'),
(182, NULL, 4, 'birthday', 'birthday', 'The birthday of this Agent, represented in mm-dd string form, eg. \'12-31\'.'),
(183, NULL, 4, 'age', 'age', 'The age in years of some agent.'),
(184, NULL, 4, 'status', 'status', 'A string expressing what the user is happy for the general public (normally) to know about their current activity.'),
(185, 1, 5, 'x', 'x', NULL),
(186, 1, 5, 'y', 'y', NULL),
(187, 1, 5, 'xRatingValue', 'xRatingValue', NULL),
(188, 1, 5, 'yRatingValue', 'yRatingValue', NULL),
(189, 1, 5, 'degradName', 'degradName', NULL),
(190, 1, 5, 'degradColors', 'degradColors', NULL),
(191, 1, 5, 'creationDate', 'creationDate', NULL),
(192, 1, 5, 'hasExistence', 'a comme existence', NULL),
(193, 1, 5, 'hasActant', 'a comme actant', NULL),
(194, 1, 5, 'hasPhysique', 'a comme physique', NULL),
(195, 1, 5, 'hasConcept', 'a comme concept', NULL),
(196, 1, 5, 'hasRapport', 'a comme rapport', NULL),
(197, 1, 5, 'hasCrible', 'a comme crible', NULL),
(198, 1, 5, 'cribleLabel', 'cribleLabel', NULL),
(199, 1, 5, 'cribleId', 'cribleId', NULL),
(200, 1, 5, 'cribleRatingValue', 'cribleRatingValue', NULL),
(201, 1, 5, 'distanceCenter', 'distance du centre', NULL),
(202, 1, 5, 'distanceConcept', 'distance du concept', NULL),
(203, 1, 5, 'ordreCrible', 'Ordre dans le crible', NULL),
(204, 1, 5, 'hasCribleCarto', 'a comme cartographie', NULL),
(205, 1, 5, 'hasSujet', 'a comme sujet', NULL),
(206, 1, 5, 'hasObjet', 'a comme objet', NULL),
(207, 1, 5, 'hasPredicat', 'a comme prédicat', NULL),
(208, 1, 5, 'hasMenu', 'a comme menu', NULL),
(209, 1, 5, 'hasArchetype', 'a comme archetype', NULL),
(210, 1, 6, 'estDans', 'est dans', NULL),
(211, 1, 6, 'seSitueA', 'se situe à', NULL),
(212, 1, 6, 'contient', 'contient', NULL),
(213, 1, 6, 'aPourBureau', 'a pour bureau', NULL),
(214, 1, 6, 'faitPartie', 'fait partie', NULL),
(215, 1, 6, 'aPourDepart', 'a pour départ', NULL),
(216, 1, 6, 'aPourDestination', 'a pour destination', NULL),
(217, 1, 6, 'duree', 'durée en minutes', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `resource`
--

CREATE TABLE `resource` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `resource_class_id` int(11) DEFAULT NULL,
  `resource_template_id` int(11) DEFAULT NULL,
  `thumbnail_id` int(11) DEFAULT NULL,
  `title` longtext DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  `resource_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `resource`
--

INSERT INTO `resource` (`id`, `owner_id`, `resource_class_id`, `resource_template_id`, `thumbnail_id`, `title`, `is_public`, `created`, `modified`, `resource_type`) VALUES
(1, 1, 118, NULL, NULL, 'salle de cours', 1, '2025-11-11 16:25:39', '2025-11-11 16:25:39', 'Omeka\\Entity\\Item'),
(2, 1, NULL, NULL, NULL, NULL, 1, '2025-11-11 19:48:57', '2025-11-11 19:48:57', 'Omeka\\Entity\\Item'),
(13, 1, 118, NULL, NULL, NULL, 1, '2025-11-17 12:42:07', '2025-11-17 12:42:07', 'Omeka\\Entity\\ItemSet'),
(14, 1, 116, 1, NULL, 'test', 1, '2025-11-17 13:29:16', '2025-11-17 13:29:16', 'Omeka\\Entity\\ItemSet'),
(21, 1, NULL, NULL, NULL, 'test', 1, '2025-11-17 19:34:17', '2025-11-17 19:34:17', 'Omeka\\Entity\\Item'),
(22, 1, NULL, NULL, NULL, 'test', 1, '2025-11-17 19:37:45', '2025-11-17 19:37:45', 'Omeka\\Entity\\Media'),
(45, 1, NULL, NULL, NULL, 'Université Paris 8', 1, '2025-11-17 23:07:36', '2025-11-17 23:07:36', 'Omeka\\Entity\\Item'),
(46, 1, NULL, NULL, NULL, 'Bâtiment A', 1, '2025-11-17 23:07:36', '2025-11-17 23:07:36', 'Omeka\\Entity\\Item'),
(47, 1, NULL, NULL, NULL, 'Bâtiment B', 1, '2025-11-17 23:07:36', '2025-11-17 23:07:36', 'Omeka\\Entity\\Item'),
(48, 1, NULL, NULL, NULL, 'Salle A101', 1, '2025-11-17 23:07:36', '2025-11-17 23:07:36', 'Omeka\\Entity\\Item'),
(49, 1, NULL, NULL, NULL, 'Salle B201', 1, '2025-11-17 23:07:36', '2025-11-17 23:07:36', 'Omeka\\Entity\\Item'),
(50, 1, NULL, NULL, NULL, 'Bureau Prof Durand', 1, '2025-11-17 23:07:36', '2025-11-17 23:07:36', 'Omeka\\Entity\\Item'),
(51, 1, NULL, NULL, NULL, 'Département Info', 1, '2025-11-17 23:07:36', '2025-11-17 23:07:36', 'Omeka\\Entity\\Item'),
(52, 1, NULL, NULL, NULL, 'Professeur Durand', 1, '2025-11-17 23:07:36', '2025-11-17 23:07:36', 'Omeka\\Entity\\Item'),
(53, 1, NULL, NULL, NULL, 'Étudiant Saoud', 1, '2025-11-17 23:07:36', '2025-11-17 23:07:36', 'Omeka\\Entity\\Item'),
(54, 1, NULL, NULL, NULL, 'Itinéraire A101_B201', 1, '2025-11-17 23:07:36', '2025-11-17 23:07:36', 'Omeka\\Entity\\Item'),
(55, 1, NULL, NULL, NULL, 'Itinéraire B201_BureauDurand', 1, '2025-11-17 23:07:36', '2025-11-17 23:07:36', 'Omeka\\Entity\\Item'),
(62, 1, NULL, NULL, NULL, 'nvtest', 1, '2025-11-17 23:54:12', '2025-11-17 23:54:12', 'Omeka\\Entity\\Item'),
(63, 1, NULL, NULL, NULL, NULL, 1, '2025-11-17 23:54:41', '2025-11-17 23:54:41', 'Omeka\\Entity\\Media'),
(64, 1, NULL, NULL, NULL, 'nouveau', 1, '2025-11-18 10:19:00', '2025-11-18 10:19:00', 'Omeka\\Entity\\Item');

-- --------------------------------------------------------

--
-- Structure de la table `resource_class`
--

CREATE TABLE `resource_class` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `vocabulary_id` int(11) NOT NULL,
  `local_name` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(255) NOT NULL,
  `comment` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `resource_class`
--

INSERT INTO `resource_class` (`id`, `owner_id`, `vocabulary_id`, `local_name`, `label`, `comment`) VALUES
(1, NULL, 1, 'Agent', 'Agent', 'A resource that acts or has the power to act.'),
(2, NULL, 1, 'AgentClass', 'Agent Class', 'A group of agents.'),
(3, NULL, 1, 'BibliographicResource', 'Bibliographic Resource', 'A book, article, or other documentary resource.'),
(4, NULL, 1, 'FileFormat', 'File Format', 'A digital resource format.'),
(5, NULL, 1, 'Frequency', 'Frequency', 'A rate at which something recurs.'),
(6, NULL, 1, 'Jurisdiction', 'Jurisdiction', 'The extent or range of judicial, law enforcement, or other authority.'),
(7, NULL, 1, 'LicenseDocument', 'License Document', 'A legal document giving official permission to do something with a Resource.'),
(8, NULL, 1, 'LinguisticSystem', 'Linguistic System', 'A system of signs, symbols, sounds, gestures, or rules used in communication.'),
(9, NULL, 1, 'Location', 'Location', 'A spatial region or named place.'),
(10, NULL, 1, 'LocationPeriodOrJurisdiction', 'Location, Period, or Jurisdiction', 'A location, period of time, or jurisdiction.'),
(11, NULL, 1, 'MediaType', 'Media Type', 'A file format or physical medium.'),
(12, NULL, 1, 'MediaTypeOrExtent', 'Media Type or Extent', 'A media type or extent.'),
(13, NULL, 1, 'MethodOfInstruction', 'Method of Instruction', 'A process that is used to engender knowledge, attitudes, and skills.'),
(14, NULL, 1, 'MethodOfAccrual', 'Method of Accrual', 'A method by which resources are added to a collection.'),
(15, NULL, 1, 'PeriodOfTime', 'Period of Time', 'An interval of time that is named or defined by its start and end dates.'),
(16, NULL, 1, 'PhysicalMedium', 'Physical Medium', 'A physical material or carrier.'),
(17, NULL, 1, 'PhysicalResource', 'Physical Resource', 'A material thing.'),
(18, NULL, 1, 'Policy', 'Policy', 'A plan or course of action by an authority, intended to influence and determine decisions, actions, and other matters.'),
(19, NULL, 1, 'ProvenanceStatement', 'Provenance Statement', 'A statement of any changes in ownership and custody of a resource since its creation that are significant for its authenticity, integrity, and interpretation.'),
(20, NULL, 1, 'RightsStatement', 'Rights Statement', 'A statement about the intellectual property rights (IPR) held in or over a Resource, a legal document giving official permission to do something with a resource, or a statement about access rights.'),
(21, NULL, 1, 'SizeOrDuration', 'Size or Duration', 'A dimension or extent, or a time taken to play or execute.'),
(22, NULL, 1, 'Standard', 'Standard', 'A basis for comparison; a reference point against which other things can be evaluated.'),
(23, NULL, 2, 'Collection', 'Collection', 'An aggregation of resources.'),
(24, NULL, 2, 'Dataset', 'Dataset', 'Data encoded in a defined structure.'),
(25, NULL, 2, 'Event', 'Event', 'A non-persistent, time-based occurrence.'),
(26, NULL, 2, 'Image', 'Image', 'A visual representation other than text.'),
(27, NULL, 2, 'InteractiveResource', 'Interactive Resource', 'A resource requiring interaction from the user to be understood, executed, or experienced.'),
(28, NULL, 2, 'Service', 'Service', 'A system that provides one or more functions.'),
(29, NULL, 2, 'Software', 'Software', 'A computer program in source or compiled form.'),
(30, NULL, 2, 'Sound', 'Sound', 'A resource primarily intended to be heard.'),
(31, NULL, 2, 'Text', 'Text', 'A resource consisting primarily of words for reading.'),
(32, NULL, 2, 'PhysicalObject', 'Physical Object', 'An inanimate, three-dimensional object or substance.'),
(33, NULL, 2, 'StillImage', 'Still Image', 'A static visual representation.'),
(34, NULL, 2, 'MovingImage', 'Moving Image', 'A series of visual representations imparting an impression of motion when shown in succession.'),
(35, NULL, 3, 'AcademicArticle', 'Academic Article', 'A scholarly academic article, typically published in a journal.'),
(36, NULL, 3, 'Article', 'Article', 'A written composition in prose, usually nonfiction, on a specific topic, forming an independent part of a book or other publication, as a newspaper or magazine.'),
(37, NULL, 3, 'AudioDocument', 'audio document', 'An audio document; aka record.'),
(38, NULL, 3, 'AudioVisualDocument', 'audio-visual document', 'An audio-visual document; film, video, and so forth.'),
(39, NULL, 3, 'Bill', 'Bill', 'Draft legislation presented for discussion to a legal body.'),
(40, NULL, 3, 'Book', 'Book', 'A written or printed work of fiction or nonfiction, usually on sheets of paper fastened or bound together within covers.'),
(41, NULL, 3, 'BookSection', 'Book Section', 'A section of a book.'),
(42, NULL, 3, 'Brief', 'Brief', 'A written argument submitted to a court.'),
(43, NULL, 3, 'Chapter', 'Chapter', 'A chapter of a book.'),
(44, NULL, 3, 'Code', 'Code', 'A collection of statutes.'),
(45, NULL, 3, 'CollectedDocument', 'Collected Document', 'A document that simultaneously contains other documents.'),
(46, NULL, 3, 'Collection', 'Collection', 'A collection of Documents or Collections'),
(47, NULL, 3, 'Conference', 'Conference', 'A meeting for consultation or discussion.'),
(48, NULL, 3, 'CourtReporter', 'Court Reporter', 'A collection of legal cases.'),
(49, NULL, 3, 'Document', 'Document', 'A document (noun) is a bounded physical representation of body of information designed with the capacity (and usually intent) to communicate. A document may manifest symbolic, diagrammatic or sensory-representational information.'),
(50, NULL, 3, 'DocumentPart', 'document part', 'a distinct part of a larger document or collected document.'),
(51, NULL, 3, 'DocumentStatus', 'Document Status', 'The status of the publication of a document.'),
(52, NULL, 3, 'EditedBook', 'Edited Book', 'An edited book.'),
(53, NULL, 3, 'Email', 'EMail', 'A written communication addressed to a person or organization and transmitted electronically.'),
(54, NULL, 3, 'Event', 'Event', NULL),
(55, NULL, 3, 'Excerpt', 'Excerpt', 'A passage selected from a larger work.'),
(56, NULL, 3, 'Film', 'Film', 'aka movie.'),
(57, NULL, 3, 'Hearing', 'Hearing', 'An instance or a session in which testimony and arguments are presented, esp. before an official, as a judge in a lawsuit.'),
(58, NULL, 3, 'Image', 'Image', 'A document that presents visual or diagrammatic information.'),
(59, NULL, 3, 'Interview', 'Interview', 'A formalized discussion between two or more people.'),
(60, NULL, 3, 'Issue', 'Issue', 'something that is printed or published and distributed, esp. a given number of a periodical'),
(61, NULL, 3, 'Journal', 'Journal', 'A periodical of scholarly journal Articles.'),
(62, NULL, 3, 'LegalCaseDocument', 'Legal Case Document', 'A document accompanying a legal case.'),
(63, NULL, 3, 'LegalDecision', 'Decision', 'A document containing an authoritative determination (as a decree or judgment) made after consideration of facts or law.'),
(64, NULL, 3, 'LegalDocument', 'Legal Document', 'A legal document; for example, a court decision, a brief, and so forth.'),
(65, NULL, 3, 'Legislation', 'Legislation', 'A legal document proposing or enacting a law or a group of laws.'),
(66, NULL, 3, 'Letter', 'Letter', 'A written or printed communication addressed to a person or organization and usually transmitted by mail.'),
(67, NULL, 3, 'Magazine', 'Magazine', 'A periodical of magazine Articles. A magazine is a publication that is issued periodically, usually bound in a paper cover, and typically contains essays, stories, poems, etc., by many writers, and often photographs and drawings, frequently specializing in a particular subject or area, as hobbies, news, or sports.'),
(68, NULL, 3, 'Manual', 'Manual', 'A small reference book, especially one giving instructions.'),
(69, NULL, 3, 'Manuscript', 'Manuscript', 'An unpublished Document, which may also be submitted to a publisher for publication.'),
(70, NULL, 3, 'Map', 'Map', 'A graphical depiction of geographic features.'),
(71, NULL, 3, 'MultiVolumeBook', 'Multivolume Book', 'A loose, thematic, collection of Documents, often Books.'),
(72, NULL, 3, 'Newspaper', 'Newspaper', 'A periodical of documents, usually issued daily or weekly, containing current news, editorials, feature articles, and usually advertising.'),
(73, NULL, 3, 'Note', 'Note', 'Notes or annotations about a resource.'),
(74, NULL, 3, 'Patent', 'Patent', 'A document describing the exclusive right granted by a government to an inventor to manufacture, use, or sell an invention for a certain number of years.'),
(75, NULL, 3, 'Performance', 'Performance', 'A public performance.'),
(76, NULL, 3, 'Periodical', 'Periodical', 'A group of related documents issued at regular intervals.'),
(77, NULL, 3, 'PersonalCommunication', 'Personal Communication', 'A communication between an agent and one or more specific recipients.'),
(78, NULL, 3, 'PersonalCommunicationDocument', 'Personal Communication Document', 'A personal communication manifested in some document.'),
(79, NULL, 3, 'Proceedings', 'Proceedings', 'A compilation of documents published from an event, such as a conference.'),
(80, NULL, 3, 'Quote', 'Quote', 'An excerpted collection of words.'),
(81, NULL, 3, 'ReferenceSource', 'Reference Source', 'A document that presents authoritative reference information, such as a dictionary or encylopedia .'),
(82, NULL, 3, 'Report', 'Report', 'A document describing an account or statement describing in detail an event, situation, or the like, usually as the result of observation, inquiry, etc..'),
(83, NULL, 3, 'Series', 'Series', 'A loose, thematic, collection of Documents, often Books.'),
(84, NULL, 3, 'Slide', 'Slide', 'A slide in a slideshow'),
(85, NULL, 3, 'Slideshow', 'Slideshow', 'A presentation of a series of slides, usually presented in front of an audience with written text and images.'),
(86, NULL, 3, 'Standard', 'Standard', 'A document describing a standard'),
(87, NULL, 3, 'Statute', 'Statute', 'A bill enacted into law.'),
(88, NULL, 3, 'Thesis', 'Thesis', 'A document created to summarize research findings associated with the completion of an academic degree.'),
(89, NULL, 3, 'ThesisDegree', 'Thesis degree', 'The academic degree of a Thesis'),
(90, NULL, 3, 'Webpage', 'Webpage', 'A web page is an online document available (at least initially) on the world wide web. A web page is written first and foremost to appear on the web, as distinct from other online resources such as books, manuscripts or audio documents which use the web primarily as a distribution mechanism alongside other more traditional methods such as print.'),
(91, NULL, 3, 'Website', 'Website', 'A group of Webpages accessible on the Web.'),
(92, NULL, 3, 'Workshop', 'Workshop', 'A seminar, discussion group, or the like, that emphasizes zxchange of ideas and the demonstration and application of techniques, skills, etc.'),
(93, NULL, 4, 'LabelProperty', 'Label Property', 'A foaf:LabelProperty is any RDF property with texual values that serve as labels.'),
(94, NULL, 4, 'Person', 'Person', 'A person.'),
(95, NULL, 4, 'Document', 'Document', 'A document.'),
(96, NULL, 4, 'Organization', 'Organization', 'An organization.'),
(97, NULL, 4, 'Group', 'Group', 'A class of Agents.'),
(98, NULL, 4, 'Agent', 'Agent', 'An agent (eg. person, group, software or physical artifact).'),
(99, NULL, 4, 'Project', 'Project', 'A project (a collective endeavour of some kind).'),
(100, NULL, 4, 'Image', 'Image', 'An image.'),
(101, NULL, 4, 'PersonalProfileDocument', 'PersonalProfileDocument', 'A personal profile RDF document.'),
(102, NULL, 4, 'OnlineAccount', 'Online Account', 'An online account.'),
(103, NULL, 4, 'OnlineGamingAccount', 'Online Gaming Account', 'An online gaming account.'),
(104, NULL, 4, 'OnlineEcommerceAccount', 'Online E-commerce Account', 'An online e-commerce account.'),
(105, NULL, 4, 'OnlineChatAccount', 'Online Chat Account', 'An online chat account.'),
(106, 1, 5, 'SemanticPosition', 'SemanticPosition', NULL),
(107, 1, 5, 'Crible', 'Crible', NULL),
(108, 1, 5, 'CriblePosition', 'CriblePosition', NULL),
(109, 1, 5, 'CribleCarto', 'Cartographie d\'un crible', NULL),
(110, 1, 5, 'Actant', 'Actant', NULL),
(111, 1, 5, 'Existence', 'Existence', NULL),
(112, 1, 5, 'Physique', 'Physique', NULL),
(113, 1, 5, 'Rapport', 'Rapport', NULL),
(114, 1, 5, 'Archetype', 'Archetype', NULL),
(115, 1, 5, 'Concept', 'Concept', NULL),
(116, 1, 6, 'Universite', 'Université', NULL),
(117, 1, 6, 'Batiment', 'Bâtiment', NULL),
(118, 1, 6, 'Salle', 'Salle', NULL),
(119, 1, 6, 'Bureau', 'Bureau', NULL),
(120, 1, 6, 'Departement', 'Département', NULL),
(121, 1, 6, 'Personne', 'Personne', NULL),
(122, 1, 6, 'Etudiant', 'Étudiant', NULL),
(123, 1, 6, 'Professeur', 'Professeur', NULL),
(124, 1, 6, 'Personnel', 'Personnel administratif', NULL),
(125, 1, 6, 'Itineraire', 'Itinéraire', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `resource_template`
--

CREATE TABLE `resource_template` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `resource_class_id` int(11) DEFAULT NULL,
  `title_property_id` int(11) DEFAULT NULL,
  `description_property_id` int(11) DEFAULT NULL,
  `label` varchar(190) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `resource_template`
--

INSERT INTO `resource_template` (`id`, `owner_id`, `resource_class_id`, `title_property_id`, `description_property_id`, `label`) VALUES
(1, NULL, NULL, NULL, NULL, 'Base Resource'),
(14, 1, 116, 1, 4, 'Université'),
(15, 1, 117, 1, 4, 'Bâtiment'),
(16, 1, 118, 1, 4, 'Salle'),
(17, 1, 119, 1, 4, 'Bureau'),
(18, 1, 122, 1, 4, 'Étudiant'),
(19, 1, 123, 1, 4, 'Professeur'),
(20, 1, 124, 1, 4, 'Personnel administratif'),
(21, 1, 125, 1, 4, 'Itinéraire');

-- --------------------------------------------------------

--
-- Structure de la table `resource_template_property`
--

CREATE TABLE `resource_template_property` (
  `id` int(11) NOT NULL,
  `resource_template_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `alternate_label` varchar(255) DEFAULT NULL,
  `alternate_comment` longtext DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `data_type` longtext DEFAULT NULL COMMENT '(DC2Type:json_array)',
  `is_required` tinyint(1) NOT NULL,
  `is_private` tinyint(1) NOT NULL,
  `default_lang` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `resource_template_property`
--

INSERT INTO `resource_template_property` (`id`, `resource_template_id`, `property_id`, `alternate_label`, `alternate_comment`, `position`, `data_type`, `is_required`, `is_private`, `default_lang`) VALUES
(1, 1, 1, NULL, NULL, 1, NULL, 0, 0, NULL),
(2, 1, 15, NULL, NULL, 2, NULL, 0, 0, NULL),
(3, 1, 8, NULL, NULL, 3, NULL, 0, 0, NULL),
(4, 1, 2, NULL, NULL, 4, NULL, 0, 0, NULL),
(5, 1, 7, NULL, NULL, 5, NULL, 0, 0, NULL),
(6, 1, 4, NULL, NULL, 6, NULL, 0, 0, NULL),
(7, 1, 9, NULL, NULL, 7, NULL, 0, 0, NULL),
(8, 1, 12, NULL, NULL, 8, NULL, 0, 0, NULL),
(9, 1, 40, 'Place', NULL, 9, NULL, 0, 0, NULL),
(10, 1, 5, NULL, NULL, 10, NULL, 0, 0, NULL),
(11, 1, 17, NULL, NULL, 11, NULL, 0, 0, NULL),
(12, 1, 6, NULL, NULL, 12, NULL, 0, 0, NULL),
(13, 1, 25, NULL, NULL, 13, NULL, 0, 0, NULL),
(14, 1, 10, NULL, NULL, 14, NULL, 0, 0, NULL),
(15, 1, 13, NULL, NULL, 15, NULL, 0, 0, NULL),
(16, 1, 29, NULL, NULL, 16, NULL, 0, 0, NULL),
(17, 1, 30, NULL, NULL, 17, NULL, 0, 0, NULL),
(18, 1, 50, NULL, NULL, 18, NULL, 0, 0, NULL),
(19, 1, 3, NULL, NULL, 19, NULL, 0, 0, NULL),
(20, 1, 41, NULL, NULL, 20, NULL, 0, 0, NULL),
(48, 14, 1, NULL, NULL, 1, NULL, 0, 0, NULL),
(49, 14, 4, NULL, NULL, 2, NULL, 0, 0, NULL),
(50, 15, 1, NULL, NULL, 1, NULL, 0, 0, NULL),
(51, 15, 4, NULL, NULL, 2, NULL, 0, 0, NULL),
(52, 15, 212, NULL, NULL, 3, NULL, 0, 0, NULL),
(53, 15, 211, NULL, NULL, 4, NULL, 0, 0, NULL),
(54, 16, 1, NULL, NULL, 1, NULL, 0, 0, NULL),
(55, 16, 4, NULL, NULL, 2, NULL, 0, 0, NULL),
(56, 16, 210, NULL, NULL, 3, NULL, 0, 0, NULL),
(57, 17, 1, NULL, NULL, 1, NULL, 0, 0, NULL),
(58, 17, 4, NULL, NULL, 2, NULL, 0, 0, NULL),
(59, 17, 210, NULL, NULL, 3, NULL, 0, 0, NULL),
(60, 18, 1, NULL, NULL, 1, NULL, 0, 0, NULL),
(61, 18, 4, NULL, NULL, 2, NULL, 0, 0, NULL),
(62, 18, 214, NULL, NULL, 3, NULL, 0, 0, NULL),
(63, 19, 1, NULL, NULL, 1, NULL, 0, 0, NULL),
(64, 19, 4, NULL, NULL, 2, NULL, 0, 0, NULL),
(65, 19, 213, NULL, NULL, 3, NULL, 0, 0, NULL),
(66, 19, 214, NULL, NULL, 4, NULL, 0, 0, NULL),
(67, 20, 1, NULL, NULL, 1, NULL, 0, 0, NULL),
(68, 20, 4, NULL, NULL, 2, NULL, 0, 0, NULL),
(69, 20, 213, NULL, NULL, 3, NULL, 0, 0, NULL),
(70, 20, 214, NULL, NULL, 4, NULL, 0, 0, NULL),
(71, 21, 1, NULL, NULL, 1, NULL, 0, 0, NULL),
(72, 21, 4, NULL, NULL, 2, NULL, 0, 0, NULL),
(73, 21, 215, NULL, NULL, 3, NULL, 0, 0, NULL),
(74, 21, 216, NULL, NULL, 4, NULL, 0, 0, NULL),
(75, 21, 217, NULL, NULL, 5, NULL, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `session`
--

CREATE TABLE `session` (
  `id` varchar(190) NOT NULL,
  `data` longblob NOT NULL,
  `modified` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `session`
--

INSERT INTO `session` (`id`, `data`, `modified`) VALUES
('48crafdkdr1s63vpmu0rpmvl65', 0x5f5f4c616d696e61737c613a333a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313736323234373638372e3936333039313b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a2231626635757662383972706e31353374716f6566366734323566223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313736323239303837313b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223131343461633937656334343339663163326537336535613530373038656664223b733a33323a226532343661313937633261313036333832626638326465386661316162613036223b7d733a343a2268617368223b733a36353a2265323436613139376332613130363338326266383264653866613161626130362d3131343461633937656334343339663163326537336535613530373038656664223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f417574687c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4f6d656b614d657373656e6765727c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a313a7b733a383a226d65737361676573223b613a313a7b693a313b613a313a7b693a303b733a32333a225375636365737366756c6c79206c6f67676564206f7574223b7d7d7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d72656469726563745f75726c7c4e3b, 1762247687),
('9f9k8blbsupcu38t1b7s1snvu3', 0x5f5f4c616d696e61737c613a363a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313736333432333731342e3236393538373b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a22636a667374756b6e74766c756d73626573763938756a396b376d223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313736333431383332393b7d733a34343a224c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313736333436363931343b7d733a33323a224c616d696e61735f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313736333436343335353b7d733a35333a224c616d696e61735f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313736333436343130303b7d7d4f6d656b614d657373656e6765727c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226463386137333063623237313434653534323238326165333633386533386461223b733a33323a223932373461363866356131653933616635643439343839303732383637316233223b7d733a343a2268617368223b733a36353a2239323734613638663561316539336166356434393438393037323836373162332d6463386137333063623237313434653534323238326165333633386533386461223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f417574687c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d72656469726563745f75726c7c4e3b4c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a3139303a7b733a33323a226164373231656231373931336330303966336164353436303930376239363430223b733a33323a226263363439336635356534653336356334316264633064663863356164386631223b733a33323a223563343066396439663162353061656535633431643837383630653738626464223b733a33323a223336383466313335633231363930303933333764393233643465363934363538223b733a33323a223037396436363263303463643031303331383038363162613838323964316162223b733a33323a226664386333643561326139613334353337366163316562333066653338303766223b733a33323a226165636630386165393730616530353563633333356532633031306136666438223b733a33323a223364396665353838346563623731363039663761363031626232623963613038223b733a33323a223439656565313961366434323230343464383361326235386365366437653032223b733a33323a226664666335326665663132323738343837643366316333636638323030613762223b733a33323a223336316437633261393634646237316134633531646462386638633231663433223b733a33323a223465653837353262313738356562396434636364373037613434336639623639223b733a33323a223438306436336339386562336639623833633835353437393137396334626134223b733a33323a223139376565373335343130666466363139363964663637323664303635613337223b733a33323a226639623935346163636538396237313336653966646135353865316630643738223b733a33323a226439373037323334396530643636303865363038383565666233383339376632223b733a33323a223335336339353737623965636234613261343639653937343463633462336338223b733a33323a223162343939313639616131313665376363343463623362663663613331633765223b733a33323a226331353064653934333330376133643231643139343933616231303165336630223b733a33323a226530323531333732656231336566633536343233353738306436343436313038223b733a33323a226232616661316330323838663466663364636338623635383534643638306332223b733a33323a223639656331373238366137623439373166633164323131326165313437363462223b733a33323a223261613830396537336361643766653363653464383630626564306362653339223b733a33323a223536613462626332616266303236653639386666616463636532363037623362223b733a33323a223239306630353463616436666431373639366530623939343131386365353432223b733a33323a223936393931653830663132633535313733656463633336353066373236306137223b733a33323a223264353733343532363438663733393361383832343432373837656464613965223b733a33323a223230313831646537626533376230643034653366363539313438323237616130223b733a33323a223035353762346663393636373737626436373331363963356132313563396433223b733a33323a223639373964313963346464663536336638326438646365616231313633353939223b733a33323a223938643062653161626338313033316165373961326634303538313961623438223b733a33323a226264353965383166656263343066363235326165613530626237626138653031223b733a33323a223335393464613237373061366630646635373836616533336535373232633263223b733a33323a226334626538636232353362323961356338323431656431363930373364646235223b733a33323a223062653865656666373638343165633766373937646638643234616332653433223b733a33323a226138393835363266616236643831356237303239306365616466356531333134223b733a33323a223263643538353334626665313139393161333633343030663862373862653264223b733a33323a223535393533633865373136396563336536353337623966386532646564353032223b733a33323a223433366335383939306230306438656563623735626262373936636432623034223b733a33323a226439313031633330323666343761623934663364373630303132623164396135223b733a33323a223139326132316264353032383638356438646135333635646332666665306436223b733a33323a226534656136643332633666333631626339653761353965363764383338643439223b733a33323a223566653761363332303864666136383062336634383930646665303536363366223b733a33323a223661303533656266663037396239323833343632323438366463646539393635223b733a33323a226633653030623636343832623632623965333863366638323539663531623361223b733a33323a223961306430306365663035623638643737303138393830636437656332633033223b733a33323a226432343433613034336236653333666662663731316339376466313437366563223b733a33323a226261646339613937323630336131623738643961363134386232336436646466223b733a33323a226166386339636630353437396461646565616334333735363463363134656335223b733a33323a223366383337376264353838373430386562663666636565616262363432656636223b733a33323a223138303363306664316338666164343461623932636334356363643565383531223b733a33323a223766613130393461666138663033643838613963313566623035366537336339223b733a33323a226430316539333965366639383137373465643833326361656531353432336333223b733a33323a223032643330316635323336643136353161623164323965626261386464363838223b733a33323a226332303038396266306465646632373366316138656136323061346235353436223b733a33323a223361646437363635386132376565313137356164353364626535376539393332223b733a33323a223038323766373338383938636531646365626161306563333737326366386132223b733a33323a223162393366386634643263376566363936616134366334383961643964343866223b733a33323a223765396631333432343861343233346431366534383363653835373834663639223b733a33323a223662636337616330326232363431386630323337306439323039343730373734223b733a33323a223335313437346363643062623763376364303639353636613930613536336639223b733a33323a226263366263323638336565643064303838376466316561326434376135393663223b733a33323a226636323932373765363565656336323036316133646332373335356134646635223b733a33323a223865336435636633613832303163613162383864356537616133653334656465223b733a33323a223765303639616133636536306235316233656532646237306239326133376336223b733a33323a226337643937623863336535313865663839363237393030663634353736623435223b733a33323a226335366233323830376561363535386238616638616264343739363261303366223b733a33323a223932313338316263386430373863623834366637663638646161303461383132223b733a33323a223866366139336664363839326538326666376136373832613031373362373634223b733a33323a226532636232626631636334313238323864326433613264333232643263363066223b733a33323a226237636266633138383033306539353231343634653564393836353238313534223b733a33323a223361316265363037346533303565383965643534303264383931376539346433223b733a33323a223564666237363862613265656436376235646537666664326361333532646130223b733a33323a223935636632336166666630363730343337316432366236373630623733336436223b733a33323a223162383030653864393164306130356139623130353736313465666465613561223b733a33323a226262613032663432663365653231666431333434306332613135623663383366223b733a33323a226533616462653730366630383361383763633534613264343063363933633033223b733a33323a226238363662643765306565666337393434343232653530336236653263393863223b733a33323a223965333035366236653138313762366437383033306533666133663133363165223b733a33323a223566336661383130313466303762323464313533653230356264633533663762223b733a33323a223637636239383734313536366364313836623730353863363131663138356632223b733a33323a223738623936616439653436303133636238326330663538643739386234646361223b733a33323a223061393533363162366663393532363461343831356337653337316263386539223b733a33323a223438613330333262366566366562303965366139363934623464636631336630223b733a33323a223030313733373062303630323136353437613239363437313464653836356331223b733a33323a226164653237616630643863313434616233336538616361313264336534333439223b733a33323a223833656566616163383431623936373633393862366633623264386136616537223b733a33323a223764656363363434313335666235343735656136336466626532383836666630223b733a33323a226231626538356232326166343563653630383266663037653562613262613134223b733a33323a223631616432386339653931333036666662396132393639323466663937656264223b733a33323a226334616636643433313362663263306634343464633634323735373532393165223b733a33323a223764376562373261646633653835656534376566616465303561613835356634223b733a33323a226563376337646630626230333166306263383664353038386335323733383066223b733a33323a223736306263613539303636656262346631363537653739316563393161396538223b733a33323a223038663464633732623330393166316435346562356564366661356239306630223b733a33323a223330363032666566333730653132333038646238336662393230653565353063223b733a33323a226234646235623432306137376466313965363431383364366466646333373364223b733a33323a226438323630333033336533303839616166373365656335323034653033636331223b733a33323a223933383061316662373761663437323361363030396330363266343435636137223b733a33323a223564313237356262656665386463393739326663396666346563306238373937223b733a33323a226232383535613539366331383465363766663061633734666364353738666134223b733a33323a226435303335376465623561633830333662663331383762303338633332313762223b733a33323a226235316136633938653533396262303262313765616162623536343736306432223b733a33323a223861666662373136356237316465386335616664303236346265643337313262223b733a33323a226566376537663931626163643634396137316237666434336463323334346235223b733a33323a223639343034323634326462336230623235313237353037373631306463396437223b733a33323a223263633166646363346266313365386636653263636362623562343339636362223b733a33323a223338386165303231343835373731336537626561333835343730353632323662223b733a33323a223338303763323839303237343631616265313633396637383663643663353631223b733a33323a226332393162396565393035623035613832303034303761653135333831313432223b733a33323a223166353563613965353938336433636632633263353664303166366262623733223b733a33323a223266626530616135373365383332633661316533303433623034643734646430223b733a33323a223238386435353434306636633639636533376566366634663566316661396665223b733a33323a223566663937663836386234323933633866653931373732343565653033343731223b733a33323a226362313163383962346466613537623963316338333362356133386563633966223b733a33323a223364356135643936346531383461653030653830356433643736323232326531223b733a33323a223863636632363638373232343464323235656465313165343933313436373739223b733a33323a223561616134656337613533356662636465343139663739653635613533363363223b733a33323a226435313133383464383232373735333135373936323465346238623338663265223b733a33323a223831396434653630303932613038343330666330653331386663313236656633223b733a33323a223864363239383566333164363433393234633431316637633666623534326330223b733a33323a223432356364323466633863313136643636323562656234373232616533663865223b733a33323a226633623133383137376265353339363832373830303538343361656163323538223b733a33323a226662383961353562663761346537653037376634333635646664363164386134223b733a33323a226162366163346637303036656266626261613638323465626134623866333736223b733a33323a223838366631376438393130663536393464356161303564353063326463376337223b733a33323a223633633664656532373066323731623933306638306133653536373638633531223b733a33323a226530663233316338323638623466656539316535616561646530633234363363223b733a33323a223166343766383263336530666565643866373832336332636536303066333832223b733a33323a226566353038323461613535303663383761346465666430633639646534653531223b733a33323a223332313230623063623961633064336232343739383664376233373865316631223b733a33323a226361356331326338393233373866366562653733313137323762356231663630223b733a33323a226132633430623431363464306164663266363636643737333261396535336235223b733a33323a223638323662343063373163386463363266326465636336313336643630633762223b733a33323a223361336530643734353235643261303465366236303639623031616364666334223b733a33323a226530356339366535313237663962656431303561396136626632363532386438223b733a33323a223139336435643839386363626337626131643935633963666661306131343237223b733a33323a223436623832633334643764373331316161303161396261616365376264643832223b733a33323a226264366538336362353030333733323964373632393530353136393165626237223b733a33323a223666373362356465343261303337373437326461356561613666656564613162223b733a33323a223832626366343262663630346666373539393530623433643536623137643933223b733a33323a226265373165343364613063386539636263353763393837353563373830393635223b733a33323a223934613030366639616464376634623134626534653232353766623763663866223b733a33323a223761636237373931363361333764323031363038326134386438626637373632223b733a33323a226336626463346531323462393663346638643532666461666231353839386432223b733a33323a226361393837316238616365613966663836613534313365626539653564303336223b733a33323a223134393863636436383330316432366238653434616437393564646138313432223b733a33323a223765643530383735623937376333333265653366366664623030363862376338223b733a33323a223431653938626535353266376236303633336235373938396334643562323437223b733a33323a223563306561616631356231316135666232666639303030363833393635393436223b733a33323a226337363136663730303865383230653131316663663535616335383436373437223b733a33323a223937326439663461633962626132396664623466373233363138666436323230223b733a33323a226166323730343266366232323435303065636462376338383730386138306135223b733a33323a223166356665656237386463316337393136616638653062303133323238633036223b733a33323a223536646432323466643835623966346464373431383365623535613964383136223b733a33323a226332623064386235636466646333373736646536643833363735313631396238223b733a33323a223963306532653036303263393939316265633931323132616464383139646666223b733a33323a223532346438663231396630613437633630623735656566623938343537366135223b733a33323a223231353437346435316434623862383162303265323231303762633864386136223b733a33323a223163356664393930643139333738636235646437353764623630343961336362223b733a33323a223666366237303464326463383938343862333430323962613433623639316631223b733a33323a223964666230373231313231356635386535656639663835626263643039666666223b733a33323a223866653361616633373163323532333835303536386461316131656133303937223b733a33323a226563613232313636613633396262396566396136633934333330336231363435223b733a33323a226334303930333264386430643339333532323132366266656335633062303338223b733a33323a226139333565353531356231306238613964363366626530663665343533343235223b733a33323a226266306338313138613835376463633963623263643062623038333934363733223b733a33323a226365346437643630663662353661386338306131323463336461376633373934223b733a33323a226364363034613066356434306263386263353734303433666637663539666336223b733a33323a223061653830373839636537383331333433666366396361306163623433626633223b733a33323a226138396333373364646632366536636365376261373861646266623430353634223b733a33323a226562343933343238393262633735326165633138353462623839613137643730223b733a33323a223535616538666530376266626239353363616331346233636531663336333064223b733a33323a223439643033333239326662643135663731373237373539396563656534326461223b733a33323a223737316131326331626134653236623763396362646263633932346438613436223b733a33323a223938646431333132393237313835633362393561363730363934323534623662223b733a33323a223737373830333633666137643232356164393335656639626364616265343237223b733a33323a223039363537663632633262613938313461353738653261376330363138303861223b733a33323a223261656663623630383163386465303864666434383235623538383438333430223b733a33323a223966393032663931376162316438353134373261626536346465633239376234223b733a33323a226135613761343831346363366566653531626236343238326130373434336565223b733a33323a223639656436326366303765613933643132343262373761623731663361656134223b733a33323a223036353733356337326365613964393965346561643230656563373430616461223b733a33323a226132643966356238373634366538303138303564343162623137383061353131223b733a33323a223161366262656364653232656465346266326635613563663334346365313831223b733a33323a226261376438316336656662333131633636356533613262313566393130613862223b733a33323a223362353066616530363166633764343131323637393436616338326661333739223b733a33323a223436336334656438316266623266363764383938373937373133613330396161223b733a33323a223939313465303035623735623833316233366465626235636335346330323062223b733a33323a226635366161343138303635366530656438326531326361653738653231306162223b733a33323a226239376333303037313963363064373838333465316536343638303733383064223b733a33323a223261346535366461383962643633333939656337666330303363323330303063223b733a33323a223266376637643132336234383236666265663732646139396639666531636463223b733a33323a223631356136373438396438646161616263303430303639643661613262303661223b733a33323a223239313966336362633263386132366335333662643739656233383935663036223b733a33323a226661343838663930363132346130616363343965343530626236636439336663223b733a33323a226262343533313535316164366532613762343536353564663936313433323736223b733a33323a223039393235343765613366656266616162643738383963613365353630393431223b733a33323a226334626539356362633233316162643135636366356235623139383438313934223b733a33323a223232386163323465613531646665323038306337366132623962356663376233223b733a33323a226637636563386537323736396434623333336334366637373632373632356266223b733a33323a226565316131303934313032323032316133646438343931666637313266303666223b733a33323a226264646635363361363164303331343637653435346566353261633862353564223b733a33323a226466333563633030316431663433313137343463303731623461613338373435223b733a33323a223934646165323136636237643362393066326337323038366165393135643265223b733a33323a226531363965393730303036343536356234653434623533633331303038363130223b733a33323a223964336632323235646666643239333738333735653364303661333766646137223b733a33323a226431363536643864356536653866626439353832663336663630333061616261223b733a33323a223139323062383237663739653662323636353061613535633535313661313666223b733a33323a223132623330303164313835313930353564303362633530363731353661353836223b733a33323a223838656538653366333566653432633839326336326364373337356339656133223b733a33323a223036353630656565646231383334313834613730326363356161636237633565223b733a33323a223866623639316363346439323662383936393238623061653963646635363465223b733a33323a223565333630653732316430336566306630396463653561343531316362663339223b733a33323a223535326439303734653264666138303133363835353364306563643665373065223b733a33323a223264383539326563393333333037316431323338303461323630333837313636223b733a33323a223539623461623533333933653734616335333430656363373830653435383034223b733a33323a226434323532396638623531643162313533356136366162613137336133643636223b733a33323a226130613134613063643434663266613939303766356434623663613738623762223b733a33323a226638316537643461313663383261373236366563383638333261383165353539223b733a33323a223837396364303236366464663631316132326661373339386330613732383264223b733a33323a223366616464396235303563396361393763613335313230653937633963326263223b733a33323a223131353530646530336335613065303033373966346230643337656363323361223b733a33323a223036343664313064633737633334643039383738366564386466336231323663223b733a33323a223362633262653335396361323932356438316532663866396338316137326632223b733a33323a223232306563346539383364373863646436336664393736653864613838636138223b733a33323a226333633461633565623639376639396231393731636565396237613061646632223b733a33323a223730323462303938333962303566326664376162316365666434666361356565223b733a33323a223063303336393633656665633335623764393730633733303963623761353765223b733a33323a223265316631653866623932393230366133373364666165636165626563316161223b733a33323a223733666337663139303134326566343861616566656263666662366131613230223b733a33323a223831326539313365376336366630383261616166666131316465663038653938223b733a33323a223662656262633933323262633837343165363833656466343736373130656132223b733a33323a226638393130376664343432656134356239363430393761323233343064663338223b733a33323a223034326563303731363464386530613931373363333864373562623237393334223b733a33323a226231626233366664316561363162353738353733656664636634373731396265223b733a33323a223237366533393837383633363737373536323266646634306338653863616265223b733a33323a223866313033353131653464353163363861626262303966303038396339663966223b733a33323a223330386666356564393164396535626339313133616565653264323265333161223b733a33323a223337363835663364373434666537333363626665663832333165356438373132223b733a33323a223938363230623661386637376338666232663031653064303362656163646433223b733a33323a223234303832323332323332653935373638343035643065623966393938613037223b733a33323a223739623339346134363566333062363239336533316530323465626461306630223b733a33323a226436313961393639313266393232363438396664643763316137313733373065223b733a33323a223762643863303131343234373533666332373136336366393037393739356235223b733a33323a226334353263383434653930383137633037616662353266643633343939613836223b733a33323a223330626138323965393331623964333261376633666265326562353463373464223b733a33323a223236393161613139663839306664633239663232373239333131653330376632223b733a33323a223635633131393238646137316138623039346265316234383063393639393364223b733a33323a223035646161303239633562316662353032333630326337346466323165366539223b733a33323a223336613430333363373537383034383364653738616364333734353437336665223b733a33323a226435306537323734336230326537393366346338653965643365376430313339223b733a33323a223464393362333333393930396339663135333466326338626566373762356165223b733a33323a226361343135363562383132316662333334613638633134653830363731613564223b733a33323a226365303838393834393534643065306430343464613635353461376662613934223b733a33323a226635343637653664306337343235303832663039353432303061626235323363223b733a33323a223336386661303638666366333263636666653539376330646339333163373464223b733a33323a223966376562376632613166326365393134666439363237633865633762656262223b733a33323a223534316130333633393763613939333938666564646432646662336538363637223b733a33323a223934616336373734326437383661386261323433353336646434373434656635223b733a33323a223234383430326665306535353634316365653432653964316132636133373731223b733a33323a223637333338633133636264663932393937323561653739643935316661646537223b733a33323a223665313137656262636434386234346237313666663231326231623239303933223b733a33323a223165343836366430326261343962323163653664366466323364303566353163223b733a33323a223136366138666232373630393635663839653236666235643933373531646664223b733a33323a223262653639353463313939613866356336313133653031386439376333373864223b733a33323a223439383339306335666463653632383433653266636362633534616131316432223b733a33323a223030313130386238663163393234656166336434396436353133643162656464223b733a33323a226437386463383237323362383864316535373532366433373763626434626265223b733a33323a226632623630633034653563393362633434323864333732303161386636636433223b733a33323a223664393438623932643835346664383032396134373738666666383035656331223b733a33323a226561393335303333396361633633656236313463363330643731336566663532223b733a33323a226265346435643263333162643434346361393031656135626466333439616465223b733a33323a223761306662303635353135663733356636623566623639653564356334363163223b733a33323a223266616563383539646163373334613331616631633134333033323961323464223b733a33323a223663356134323930343261646561333863313163623462653633326266353237223b733a33323a223231613035343762326532323434386435636339653934373362623838303261223b733a33323a223039643662326131616536306436303532616266306234333863616638396139223b733a33323a223863653836666637356231323535343464303230653837643232376232356266223b733a33323a223238306238326262393461653634663432663065663339346263353764623265223b733a33323a223562633038616633663864653136393134653666336631623866343866363834223b733a33323a223639386537356337393962316563633837633263633332393234663238346463223b733a33323a223335303264643061303565393135333136326239626161643136646233333835223b733a33323a223533303162623237366232306238393434326364633438666630346561396461223b733a33323a223739353138393832623262366230336537393035646235306634633630356534223b733a33323a223632333737613631323134613334363935653164326538313763636462656234223b733a33323a223364323034356239393334313862363230333365323638653532313731303961223b733a33323a223330393731303432636532663938343931663736323131333761376539393431223b733a33323a223832666263636161326533636131356561306261356661376332323831623838223b733a33323a226330383231636438313436663434323066386330376530373334363532303861223b733a33323a226239613466616563306532313330343835626234616339336561316664333335223b733a33323a223134623639333838373136623632316365653463323362383636383534353164223b733a33323a223932633339613935623733373338613235636661626630303333363130366435223b733a33323a226165393234646161373339663630663266313638653632343763633837373730223b733a33323a223837363363326135636638343431633438653331653132396330373436346135223b733a33323a226132333234633161656630336331373331313630316161366465396339356263223b733a33323a223530373936326437363239366633366331366530386466376263636230613736223b733a33323a223039393064633965333763613032653839616466336232316135663035366135223b733a33323a223139323462623632366462343765626661363265313766393737386539356336223b733a33323a226664346566393364633337383265396663623038303431373738656464356265223b733a33323a223731646233653365366261636332666638663130616138653037663666636465223b733a33323a226163646162643961353535326263663262323636333761323239616665653332223b733a33323a223961393938376532363963353964393132313134313834393132616332356234223b733a33323a226639393864316464613139356266383038393835396361336131626637386239223b733a33323a226239643664323233633764613532353531666338666638373832313432636133223b733a33323a226133663135313035623831633833363632363766393838656437383136346432223b733a33323a226534313166613264656364306238613739353633643636636562653936363666223b733a33323a226264303261363762383339373636326135643165343962303637373962393363223b733a33323a226332303364646464376233333232306532633631373839316234393237313661223b733a33323a226561633936373163366231633539316235356531383632353466653331333331223b733a33323a226233323132396638623563326130363965383531613332666537316162626133223b733a33323a223166323837626438666434653136643939626434383863623839616231306239223b733a33323a223237383965376163316165353538376263326162626434343231396436363461223b733a33323a223038616632363737633466346635333632313735383631326137623166643364223b733a33323a223833663633393861653864346334353863343864303236666631396662383762223b733a33323a226639346163666433343537653232376162323164376233643734333030323264223b733a33323a223135326461376461383230343835633733386538666230363631346131643734223b733a33323a226561353538623738666662306534396532376231363538343634356162613638223b733a33323a223030333837633633343135303739336435333132373765343037623430393636223b733a33323a223962616334616130623934366264613839353139366638646561343838386532223b733a33323a226662666635346466313863333037666336323237363433396434323132613162223b733a33323a223332306162343765303966303664336636356435356664353635313634666533223b733a33323a223838653261663637353861633133356666613162666532643765313563636262223b733a33323a223861353331363532346165653839366362396561306630623637636538343465223b733a33323a223661313761646362363866303661643835333561306364366235363139613365223b733a33323a223535356330356463343031323164623861396637623239663232306531323738223b733a33323a223139393262326564633232356236646537353339393365636634336336323661223b733a33323a226239373930333262303336643163323465316165303635376436316634393961223b733a33323a223434303664316338393730646663373138656364353361333033316462343733223b733a33323a223537313130616439626537326461376165663530366666396336373237643035223b733a33323a223332663630313466363565333732636564323136363862386431383335333365223b733a33323a223437363331303731353033663530303862643433626330613037326465386361223b733a33323a223835356265333333386536306334313965393037326535303963386564373264223b733a33323a223239636166663730396234626264333263346361326635346262326435306362223b733a33323a223037366461636432383363323835626337353664646530333935383034356531223b733a33323a223264663531376366613661633464653431373334343763363333353964366532223b733a33323a223366376535353861616364383433353933636632353834323638663532306231223b733a33323a226564643766663633353834316136333761333339663430653363653633363966223b733a33323a223761343930346135366334326230616133323937626338383930393630363164223b733a33323a223531363864303136336633336132663465646262376534306634363038363539223b733a33323a223031303462666131653833366261383638323466363436323237636238666263223b733a33323a223162313561643262643637623539666631636464663334656666353530626134223b733a33323a223964336162626361643237363537326163383363353364363436366163656631223b733a33323a223733396364333434336239343639623264383462323333366235393130656661223b733a33323a223665323936646337363463386435303137303666643763613363333839616434223b733a33323a226161663134646430346665663261663934376334663466383536633037643934223b733a33323a226662383533313437663438626338636335626162343865323631386163376366223b733a33323a226562656537343565376565653464373135623738343137633163633666663539223b733a33323a223630393932353838626362316234346338626432646138373166303432623134223b733a33323a223630393864303030653562616265633762396431333632343535656538323537223b733a33323a223962623763653962346162373330393166393134626465633335356332376564223b733a33323a223236333039303762363863346234323564666534616134333633666633333235223b733a33323a223832383430656562393531356264376336613238396330636161336664376364223b733a33323a226565303865316232303966313033636437623862356666656335376534313266223b733a33323a223435646163373264643738616162326564633064383466616565383865333662223b733a33323a223264386465666465386232303234626339393461633735313164353536613232223b733a33323a223265643034316238313136633138643265313935623866653431633931613462223b733a33323a223430306166323635343331356131393733376465353238346165316365386535223b733a33323a223466396131336230633839626330383934303963636134623834363930643265223b733a33323a226337353333353263363234636438636439343766326661383032343632623435223b733a33323a223963303330386666373666383665653338323665346465336562326361306337223b733a33323a226666313831333431323761313337613532313064303535376233653235303065223b733a33323a223165623765356166326635323865346462613736346463383862383264306334223b733a33323a223565376561326562396334306235396631343335643061306632663135326665223b733a33323a223034323064396531323637373933616132633736396134313133653932313961223b733a33323a223939333564393130356435633838353466313337613861363938633037333038223b733a33323a223261396661663335643965636530363838373063656637396163306664363237223b733a33323a223863383939633263373738336432373136396361323663356362333137316464223b733a33323a226235313831353631306234653861363330303063613266336434353133623235223b733a33323a223035303564343439373935316133633338346531366661396534366438393161223b733a33323a223063386134613761346537613434626339353962306136656566643466333038223b733a33323a223766356661616339326331343130306630383939613466383265626335613363223b733a33323a226465656363313539646531656636626262623932346134353731626165323839223b733a33323a223033333863663266343361383336333932396434643566613462353131386235223b733a33323a223239323138343564653765393332386465666363636431326638643931633931223b733a33323a223333313030303962383265363061616133316139336362656635303935636632223b733a33323a223935633863383137633236373865653930313766306563613263353132313330223b733a33323a223835626564353934653533366364323365306666656131313966343062636339223b733a33323a223363336163313030326434323937653266383137373638323663613437623561223b733a33323a226264376534303538313238383538393430366263363936633766633033336462223b7d733a343a2268617368223b733a36353a2262643765343035383132383835383934303662633639366337666330333364622d3363336163313030326434323937653266383137373638323663613437623561223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a32303a7b733a33323a223733663838303264336235646630393661613031613937646164643364343630223b733a33323a226330323431636634346138343264343830666138323737306435633131616433223b733a33323a226264323931303263356662646266346130363236363138616161616632306530223b733a33323a223834643930326565366137323034316663626430626265303434306364656431223b733a33323a226464313639386666393238383232326537323262666564396265623063303132223b733a33323a226232393062303933653430656138366537666134653939326363663635643833223b733a33323a223766393230366134353562356631343239386331616231366530393864316361223b733a33323a223439316132363438356133343661633563636637666166313030353266316662223b733a33323a223937396266623133666365383365313763313632386230663361313932333833223b733a33323a223630323231623861343436663961636266326137383335626332336435653230223b733a33323a223463363738383665356266366662373432313166663164353164343861316665223b733a33323a223761346635633030373230643032633432303365363039626633633332663965223b733a33323a223430353632346334303963353732303766326435303536363439376562633730223b733a33323a226565613861326561326263343237643738616536363133303665313739363032223b733a33323a223262653361643934653061613239313130613435616131623232356131383265223b733a33323a226333303433383530313134653264383163656465623030353862303866373862223b733a33323a226430353566626464336632646166663735613138613662386163343665643061223b733a33323a226336363430653538623132363238343131616137616662393334313233653332223b733a33323a223336313434393338383866653437333935653039366336316261383562333535223b733a33323a223137353463393662336431633762356363313161356334323065656233613131223b733a33323a223237343466326136333962626630376566633334366435656636316564363862223b733a33323a226565633364356334396437353063343634633531333764393066646665326261223b733a33323a223765336564396135363764326565623336383138636534643432383666386563223b733a33323a226436613733323639343536356138646234633264666134303262666666663336223b733a33323a223734366339626262363631373137656234373530613866633362303364613136223b733a33323a223634653863633037313763343365336364353436353536356663353535353639223b733a33323a223830343161613366366538313536383137633138613830363136633466396632223b733a33323a226631656362663462636338326461326262653061313363333432326561666363223b733a33323a223032306633626366393837643364383861623961653935303561316534346531223b733a33323a223333326231383738363831373761623163363032393331363064616134613362223b733a33323a226565333635326262386139316462373536643136336562633137353638616531223b733a33323a223134636333306536666236653461303963303234346235316133666235643534223b733a33323a226636666637346136643861373961346333353064306135393962646665633462223b733a33323a223261643263303436326136643061313865313438393339656531316664656439223b733a33323a223934373761643561366135396638356437396661656133346438306138663333223b733a33323a226439353664613239346563366463333835376339303461383162393135616638223b733a33323a223734303134393164376434366633656539313333316235323933393964613361223b733a33323a223033643130333336376331336436623965373438653861396631383733653864223b733a33323a226635343335643731386232323965356264396465366365633362356331336139223b733a33323a226336306263316266626532373232663938356133656137376661633131343662223b7d733a343a2268617368223b733a36353a2263363062633162666265323732326639383561336561373766616331313436622d6635343335643731386232323965356264396465366365633362356331336139223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a32343a7b733a33323a226635373630653366666664666362353934363261326431376137336133313930223b733a33323a223733663863613831633136343136376564653561373036386365643365633461223b733a33323a226265363133383831663264333730303733633233643163653538343337643435223b733a33323a223535303531383136653866313830336365396665623832616362333436333433223b733a33323a223064633365636130653231623738373338373234336533336462343331646532223b733a33323a223061663931623132643735643737666439323539663763633763386430336335223b733a33323a226633393334626537343039376536616630653861306364663932313530656636223b733a33323a223765663338383436643165643235343738613232303766636636613237323663223b733a33323a226335663366653866396130376261613936323564323830346432386637633262223b733a33323a226232383661343736393963643162313163323762343333326339653464643838223b733a33323a226132343261353065633831306534653236393933656234623665313732396139223b733a33323a226139336336383730333437386666323832343830643639636133373433363138223b733a33323a226532633365346535656166326563666165323865623735376335383635613236223b733a33323a223931646536363261313939343563326630333330333562613762643837613534223b733a33323a223837386236383938376330323361363433346163643332616363623831353862223b733a33323a223630303561366236653730666463616361363137646637373166323533333634223b733a33323a226165663032643031323764613066646462333933313163363664653239613639223b733a33323a223238363035666461383462663830623366643734326365623838386662643636223b733a33323a226634363139346632626532386565313766343066313435613963353038393731223b733a33323a226161633162653430376365323134396535646237316664363932666465396463223b733a33323a226163326466356533643835613839393837616336303233323636666335343430223b733a33323a223564303433313833666534323261656632616436323262616630353531633163223b733a33323a223161336663386633626562636661353235336536356565303439326536326462223b733a33323a223833616634306365656231373565623064303231333237383436626237376137223b733a33323a226663613436343764306161366264396230373237306564626533343037353061223b733a33323a226435356530303862353462383331613936626564623236336564376261636333223b733a33323a223366623963643738613136653663363066346263313739386564393335643331223b733a33323a226138323632393764353266633838363731373837383362333031616430386631223b733a33323a226535616465653239316635366335353232366139333733666165343035633630223b733a33323a226565376332326332363562623337323131613833623764633337633834633066223b733a33323a223835313662636665323564383133356461626335333339353763616235303061223b733a33323a223934373535653365653063323366616638343163353463623935303462343136223b733a33323a223334663063343461333165383463663363346662616231346661613131386132223b733a33323a226164666665393036316331396262656562356562383931663161626233396632223b733a33323a223765323761343231326531646561646161326561343335396434303734663437223b733a33323a223466616463363963376163346665376439313735323966336566373138316335223b733a33323a226438376633363265363431366665633064646236346538363636643662303663223b733a33323a223662356232363130323462376463366561663765623334393638623733316438223b733a33323a226163313130663537663233316435373966306364623165343830623937343930223b733a33323a223336323237376636636565653962316238643938643431356137366361323332223b733a33323a226331623631623061356136336364663832366462616664373837646133643539223b733a33323a226262613332393661666236356563666432356530323163633164633131333135223b733a33323a226530346539616433393031376365636164336163316433376637656263636165223b733a33323a223330373765623831633538653536343864616663656464353331663566353036223b733a33323a223965663766626230643366356237666439616362336239393565316365343336223b733a33323a223663303433643633616362343035386638663966653963326439396466363061223b733a33323a223534373633653662303132353564373334373133353964326236646663336132223b733a33323a223639656661353463613262306435373361613965643935653361333466343834223b7d733a343a2268617368223b733a36353a2236396566613534636132623064353733616139656439356533613334663438342d3534373633653662303132353564373334373133353964326236646663336132223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d, 1763423714);
INSERT INTO `session` (`id`, `data`, `modified`) VALUES
('d5171e78d2kv2m4kfc500e4e1p', 0x5f5f4c616d696e61737c613a373a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313736323234373633362e3533343233363b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a22376236356e6a646a71386f6963703175376b6f73306675617668223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313736323231343233313b7d733a35313a224c616d696e61735f56616c696461746f725f437372665f73616c745f666f72676f7470617373776f7264666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313736323231333730363b7d733a35333a224c616d696e61735f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313736323238373339343b7d733a34343a224c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313736323238383439343b7d733a33323a224c616d696e61735f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313736323239303833373b7d7d72656469726563745f75726c7c733a33303a22687474703a2f2f6c6f63616c686f73742f6f6d656b612d732f61646d696e223b4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a32333a7b733a33323a223431646234653136376138336264663363613230373432306134346533616132223b733a33323a223162616534343033633435393038386630303734346232396130653533333535223b733a33323a223638666339383761353135363130393830346538303439346633343731356133223b733a33323a223335356334653635306239633064656663353564626231613935616265346362223b733a33323a226433356530326366393363646633386533323436346631656334663939653434223b733a33323a226664313939366539343164636530313165373139343939653631393864343136223b733a33323a223130616338323638346430316433336436636265376565643431326163336564223b733a33323a223438396661313237356561656432323664316161613933396265316361623362223b733a33323a223166376537313762656138656133646538396565303363313166336231323762223b733a33323a223262616139333435633936373665313132663966353138386236666136376431223b733a33323a226135653834343439343761343863333761386331366234373862373062383938223b733a33323a226235393864396431303433656331616264303464333162373838643864656539223b733a33323a223434613064336662313464636331636439306364343761333638313835613134223b733a33323a226539636339613737663735633231663765663264343432626235366333663331223b733a33323a226236333061613030366331393130303533383430666539373663356266366365223b733a33323a226235393335313962306430363837326537326264393861623562323132323833223b733a33323a226262656634623538653964663866656636616332386439396561653638643536223b733a33323a223262346265623265613066393861363532613364393662653266346637616135223b733a33323a226163363437613066336131303666313965636466376665613235633031316237223b733a33323a226634353732343663373763663038356330373836633163356261393961393534223b733a33323a223734643130303931356534633438653039633038396234633837333465306166223b733a33323a226239623637626438313435623737663362373635316536363837303435323061223b733a33323a223132376634636134666432393031393162366566633032316261396434383563223b733a33323a226131396562353265343961356234663634623565623632306235303337663938223b733a33323a226266363336376464666133626531303531376331366133356238663330633838223b733a33323a223563326237346362316638636466623039633839313230303537353733343430223b733a33323a223037616232326665643534333063373334386237396631373532623465636437223b733a33323a226464623633653135636134636434666165333739343437613030346365663234223b733a33323a226134396337376664376561393835366464613161636534333631313265666536223b733a33323a223534616563633038383833656635363166313261383939333835316335373437223b733a33323a223537343730343839653834393637396634623130313532376135316630633463223b733a33323a223538653561353463326434323562613065613261366265356662353763323163223b733a33323a226232313037653664326138623431326465396162643338653637326563623334223b733a33323a223164653561303266633864646431303530663166363832373239373636396231223b733a33323a223238643634373136363764663138653263616162663062373830306234306338223b733a33323a226234366236633832383332653633626438303935326166613639373563303530223b733a33323a223930383563666638356266663665343833333735653465626430363263386361223b733a33323a223163383562613462613237643837303465336437396661383639396235343237223b733a33323a223433376133623438643435323466613061613335623066383636643463633362223b733a33323a226533363334356635633264373230336436646432346234363631663462616263223b733a33323a226163613962313435376465316634303837323331333864383136643932643236223b733a33323a223834616438313566396533356364326265336231346363343137613639373530223b733a33323a223231313562356333633338303834616533666663643664383438326361346138223b733a33323a223932333463376231313133633434666135353230313664626564616561343632223b733a33323a223936363733376166373938663030646634356432376665333463323366343932223b733a33323a226133356238626236326364623761376634653466613863623736363033316132223b7d733a343a2268617368223b733a36353a2261333562386262363263646237613766346534666138636237363630333161322d3936363733376166373938663030646634356432376665333463323366343932223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4f6d656b614d657373656e6765727c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f666f72676f7470617373776f7264666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a333a7b733a33323a223664303931333266633466343731613261623038383164646336393562396534223b733a33323a226535343865363131373965613765623064666439353634303138663838333234223b733a33323a226234386537653532326436643866336231326234636534636166623334356265223b733a33323a223834346435363432366538333563623735356236613262643631623835336639223b733a33323a226164343937363738616366653139346231353162613630343230386537623838223b733a33323a223933656236316262303261663164373537393035306638653961663161666632223b7d733a343a2268617368223b733a36353a2239336562363162623032616631643735373930353066386539616631616666322d6164343937363738616366653139346231353162613630343230386537623838223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f417574687c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226531356166623366343230346633613039643033316631386338383539333332223b733a33323a223765663938353663663963656530333637626162646266306638343437396238223b7d733a343a2268617368223b733a36353a2237656639383536636639636565303336376261626462663066383434373962382d6531356166623366343230346633613039643033316631386338383539333332223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a343a7b733a33323a223636356232666363383732326363356366316363633162376465376363333630223b733a33323a226662653336343263643437623462636638666632653434373365656564653962223b733a33323a223864383435613039313139393666363330323131666434653961663033616166223b733a33323a226664626463326232376536613465366431663137346438366336653437646537223b733a33323a226436383837666364653830383435623938323764663065333739313933383330223b733a33323a223433326363633235303762363562313434366632643862343031343335663837223b733a33323a223434353634356464363830663164656164623836623662373962363039653962223b733a33323a223164306632646333333031376435383565613034623134326238316162643332223b7d733a343a2268617368223b733a36353a2231643066326463333330313764353835656130346231343262383161626433322d3434353634356464363830663164656164623836623662373962363039653962223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a363a7b733a33323a223562323439636163636231303036633534373164653930363565643664653264223b733a33323a223531633233336235383863323930393165653339323661623961373833386637223b733a33323a223633656265373864313432353864613863333531346235653135353231343634223b733a33323a226664613837393263653362383532353864366136366338343465306363363633223b733a33323a223037363238616535623431336166653632643633393265336633366561633736223b733a33323a223139653533366436633739363538303063613731646637306532383739393233223b733a33323a226139633166376331326164303064616661373738383538393561323336356639223b733a33323a223164333165326130373638396135646261383139326234626164373235623933223b733a33323a223064343162366339393662656131343536363734326334376463363261396663223b733a33323a223562393430666435666539323739376132623037316230373939663337626464223b733a33323a223237303731646163363939643832306236663230343439623438333264653663223b733a33323a226261313163343130393136363133613439656265393262313162353038623233223b7d733a343a2268617368223b733a36353a2262613131633431303931363631336134396562653932623131623530386232332d3237303731646163363939643832306236663230343439623438333264653663223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d, 1762247639),
('eepbab1f76iqvo7lbfun1465jn', 0x5f5f4c616d696e61737c613a353a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313736323839313936342e3135363733383b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a226a6c3476686c306b753767686267337165396f6d383137733536223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313736323239303838383b7d733a34343a224c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313736323933353136343b7d733a33323a224c616d696e61735f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313736323933353135343b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223466653565363433653865666435653132303439613137393738353533353035223b733a33323a223863666666303961643330656532353562643838613137356232373739373566223b7d733a343a2268617368223b733a36353a2238636666663039616433306565323535626438386131373562323737393735662d3466653565363433653865666435653132303439613137393738353533353035223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f417574687c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4f6d656b614d657373656e6765727c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d72656469726563745f75726c7c4e3b4c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a32353a7b733a33323a223336646565353364306666373832663561316463343433623366373330316663223b733a33323a223235653032376531373730666339363437396365666432643239366432653133223b733a33323a223862613138616462343136373332373731313761323061636532386138643966223b733a33323a223534353236313939333764613431643631323237633330383735633333623031223b733a33323a223962386261313432333038626265343939633032326432383761666237366332223b733a33323a226366363132626137633165383062613237366264373037353562363366616235223b733a33323a226661383561636662376138373765356435383861643136376332316633653065223b733a33323a223632393533333736353031366333663362636331336332383932653531363265223b733a33323a226536636636636635643564656630666432616364346636353731366165643932223b733a33323a223461323037393138323436323939306663323639366363323637643465326536223b733a33323a223561373631346134393262393733663834353830343032643530306262356435223b733a33323a226637666335366134346531393338643035336561653663623032373761346665223b733a33323a226230396237373861616136636233323732343934633239626138356361643237223b733a33323a223861393230653262613061613436633362376162656565366661383364346330223b733a33323a223636303766316231653766313465633136303538613862303436313263343262223b733a33323a226262653766366261366561663630393234383239373466376138316632383063223b733a33323a223766663830386162376239633663313362346133343539323534316433326534223b733a33323a226635336261663537623236383065346337373761393863376530356438323464223b733a33323a226239623330656530636334393035616632663061343563663938313861656233223b733a33323a226237363466363731623734656338393735316238366230396133316165343139223b733a33323a226530393866663837316362306166623566316334356362396539343939616130223b733a33323a223766343130626566643362316538616636643237363932313762366432653938223b733a33323a223462376436373030613933623462633236633864656235393334633038613437223b733a33323a223866663033393233326334356234393633383831653937363661383238323165223b733a33323a226631386266323538623065656435353431613836666334663839383136306466223b733a33323a226236356236343931346639666435356432343365663737643065373462316139223b733a33323a223536373030653439643964623265303561383464626636363933393032653339223b733a33323a223632623239396264633861363535623462376636313932626263643533646237223b733a33323a223734313862613764333736316363363739343533313364356563306431663061223b733a33323a226164626266343734383039333634316165323430373963336365306466653437223b733a33323a223834363561656139366632376334366166626339643835306634666236343539223b733a33323a223536636662306533636636616639636362346336326632306235353165303763223b733a33323a223834313832333531656265313365343862346336336532623763326133613236223b733a33323a223231313062666236383530633064383366636236373937386364343234653833223b733a33323a226138646338313436356334636264306265373238353564356438363834363631223b733a33323a223265363062306362623365303065303865396334643764643832636361313835223b733a33323a223930363136303562306231356434346135656536333930633236313939636535223b733a33323a223762643437303837633938323461376136623730373763326132666337623735223b733a33323a223132643464316339353736663735323237363334393933636437393031613133223b733a33323a223862333738653938613937663236626165363236653433663732353833316431223b733a33323a223037333239383364386363386333303364383937383433303533343134356131223b733a33323a226565646131386330326166383062306537323331313461616665623463346532223b733a33323a223964663761343362376332616333333431396330386231323966633230393630223b733a33323a223038656339643138653066373534376365346566616362303134343632643132223b733a33323a223532633232656436323963333533313765383838616161626264646661653766223b733a33323a223163383962373364613236363536383336613538326163393732646364396431223b733a33323a223738643562663265646262646233623432336162373136626530643366353266223b733a33323a223263383437633730646339333738653561363434396335353363643433356166223b733a33323a226361363265386234633262646530303866393938663431653164393133376464223b733a33323a223437373732396232356431386362353162333762626630336438373962633339223b7d733a343a2268617368223b733a36353a2234373737323962323564313863623531623337626266303364383739626333392d6361363265386234633262646530303866393938663431653164393133376464223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a32343a7b733a33323a226536613231373436356332343434666438373432363263313161616438656536223b733a33323a226264396463366461313131613137633731663235616364643635616138326432223b733a33323a226266303431373366333430363262316138373631666334396263353762323231223b733a33323a226436663439626234366538316235623539393262653866346230616633643133223b733a33323a223364616133333032653833313537326565663265646539333563623034326332223b733a33323a223538633237383831373731303732363961633562656661336637653437316331223b733a33323a223063313134663363616364646262363964616137626138626632393865333264223b733a33323a223832353261663237336335616630353463303635616532333766616232316334223b733a33323a223138306635633932613532663362383164386335396330626436326363613061223b733a33323a223137616466643566383632363633386330353432616637313963643862323830223b733a33323a223864623066366161626465313866373934363631663536313935323937346434223b733a33323a223662663662643061313531623335646235616463656265613038313838643734223b733a33323a223065393239643662356561636163643765363165326562663932376432626138223b733a33323a223334613439636661353633343237373362356162386638303761643364336437223b733a33323a226461613863646164613864336166306132623535653062393836313065306563223b733a33323a223530623064376538346539313732316466376438366436663963363966373165223b733a33323a223835323662383339623938333861613132366230323439313263343731326266223b733a33323a226134643337653638363932623335376461613730633565333161346432333234223b733a33323a226162306338636437383539636263366433643830306263613362383133393438223b733a33323a223431363633353038666232393038633839643237353131393033646465663037223b733a33323a223432333062366163383761386636343730313731666133353564626231333832223b733a33323a226162616164663030613936373735356336633265666336626332313836376165223b733a33323a223039383733343932353534653662386365663463643733653238616136623235223b733a33323a223762363237343037376436393431636566373230313964393961386631366265223b733a33323a223932366466326464353435623062313163613662343635343363383465616663223b733a33323a226339353466623233653730376630356332366232386438343330313161636237223b733a33323a223366393639323630313433666133346635373336363237623163613333636666223b733a33323a223131323366306362656539353538623332383431653338323437336534343562223b733a33323a223464613464363738653261333739346234383666646537623866653531393431223b733a33323a223231663430626539356433386366313563656539393937616330623338343565223b733a33323a223461353435396664663335633465323065306532303564616434313039633036223b733a33323a223132356366656134613031393231353931393839363365323639393935373035223b733a33323a226461346161666564353230663761326432636336313263663161623936663736223b733a33323a223331623739666432653965353261656432393230613465333262333665633333223b733a33323a223436306461373662303931613133396431633066373837666130616132326539223b733a33323a226331643866356137646662366461336239373032316138333530303037653166223b733a33323a223633646164373039643334336534646463656332623530366137386265346562223b733a33323a226464383935323238633736643265373835386666366436623332303338396562223b733a33323a223431643266303437336265613235383935356561643439306262363833316535223b733a33323a223631303034353761356131633166393539646133376239363961373735303464223b733a33323a226130343365613264623163363565636639373535633665366235376231313330223b733a33323a223661633463396137333232653335376664646234646561363363653232626632223b733a33323a223831636336623130336533376131643136333335643930333462393738386630223b733a33323a223265666632666435393238316365373566623561643863363833633733366163223b733a33323a226333653161616430366331623532396132313737623862613164313162303064223b733a33323a226439393231313039666633626437666663386431323338303637393436336465223b733a33323a223838306262623536666332306463383764353963376634346631633632623965223b733a33323a223663313562363838663765383938656466636337393961356665326464653439223b7d733a343a2268617368223b733a36353a2236633135623638386637653839386564666363373939613566653264646534392d3838306262623536666332306463383764353963376634346631633632623965223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d, 1762891964),
('paqecmd4uj5paub70com16tbg9', 0x5f5f4c616d696e61737c613a323a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313736323137303232362e3031383933383b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a2270617165636d6434756a35706175623730636f6d313674626739223b7d7d72656469726563745f75726c7c733a33393a22687474703a2f2f6c6f63616c686f73742f6f6d656b612d732f61646d696e2f6974656d2d736574223b, 1762170227),
('q24evh1pq47e6d15rk88aqg948', 0x5f5f4c616d696e61737c613a343a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313736323234373637302e3537303935363b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a22396536756b35306a6e72366662647375663930683961706b6331223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313736323239303834303b7d733a34343a224c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313736323239303835393b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226230626237313838663236353831383831613839656639336663656132633935223b733a33323a223033666464396264376635323865626137643061366133346431623630656139223b7d733a343a2268617368223b733a36353a2230336664643962643766353238656261376430613661333464316236306561392d6230626237313838663236353831383831613839656639336663656132633935223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f417574687c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4f6d656b614d657373656e6765727c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a313a7b733a383a226d65737361676573223b613a313a7b693a313b613a313a7b693a303b733a32333a225375636365737366756c6c79206c6f67676564206f7574223b7d7d7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d72656469726563745f75726c7c4e3b4c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a223237316232653331303836313065633166323464653464346665353761656438223b733a33323a226132386232303436626139363865613437633064636234363764666137353337223b733a33323a223462666166623830363362626262633534653734626439313662666232353636223b733a33323a223630623834363661316465313934326264343764313865373061353263653361223b7d733a343a2268617368223b733a36353a2236306238343636613164653139343262643437643138653730613532636533612d3462666166623830363362626262633534653734626439313662666232353636223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d, 1762247670),
('rot58o3kvm26rtaac3okj8q0cj', 0x5f5f4c616d696e61737c613a373a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313736313033383736322e3939393233333b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a22656466646d7074366b746c693764316f6f766633716d6d65686c223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313736313033323933333b7d733a33323a224c616d696e61735f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313736313038313936323b7d733a34343a224c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313736313038313932373b7d733a35333a224c616d696e61735f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313736313037393735343b7d733a35393a224c616d696e61735f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465696d706f7274666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313736313037393731343b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223664636332626535663162313730656265323134393863613535613166333663223b733a33323a223739316366626562633462613162643361313765656238303032393637653862223b7d733a343a2268617368223b733a36353a2237393163666265626334626131626433613137656562383030323936376538622d3664636332626535663162313730656265323134393863613535613166333663223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f417574687c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4f6d656b614d657373656e6765727c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d72656469726563745f75726c7c4e3b4c616d696e61735f56616c696461746f725f437372665f73616c745f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a34353a7b733a33323a223766346331613165393635363463633865373436643931303863653963396262223b733a33323a223934353437333563636262623630376565346531633238336164346364623430223b733a33323a226134323865663239326431313866613135316139323836343135666634303532223b733a33323a223539626361386537386133303239363037653364626665663933326335396163223b733a33323a223731383664633837643366663365653161373633643861376635383964633034223b733a33323a223461363862363433326463343733616161613466646132323632346131333334223b733a33323a223334313331666630336263653764653166386335356663623462343537393562223b733a33323a226534313538343964313335393266343766356134323839396361613139326364223b733a33323a226235626332353064623266393936636465316633653030316338303466643264223b733a33323a223939343163643465353665326366616461333637613331313064393964623866223b733a33323a223338303533393536613332656337623137363061363332383230346238666432223b733a33323a223933613463323666333763306561366162303665383632636239623331626262223b733a33323a223862613332363336346537333538396161633863623961633631363931353538223b733a33323a223536373961353663343030626134663631393334623565613735366131636137223b733a33323a226430313062616565306634323262343265633435336533323530633339313431223b733a33323a226136303764396336303936633438636264626636613762343133626630373133223b733a33323a223233393733383164643263363934313264663864366334663433323666386463223b733a33323a226238613731356366353030636431306639626431393465316231393632336230223b733a33323a223331373965373833373935303036643164373863316337356463376236643063223b733a33323a226139323563343336623564623465323436353061373338663961373164303736223b733a33323a223430353965383766386136393365636265386166383265303238396637326133223b733a33323a226437353433323861396131323363323534366563393230376436643364616461223b733a33323a226331333336613033653362626337613536383738636462396432626639303061223b733a33323a223736363262393963366565633062383062356339363734663738653434333063223b733a33323a223032333132336664376431313466613934373137323562666431303834313865223b733a33323a226364313039386536623636646132346337336462666336656438366135383233223b733a33323a223432316239366635653133393366356434306136333364343834333337616365223b733a33323a223437386537656561353634383561663466333031313363666265663731306232223b733a33323a223230333033373262316331366339363936363633323132633533666465306634223b733a33323a223866633330656138356565376466343463636532306462636337636234366239223b733a33323a223363363438613633653632666237356336323161646439646337636265333730223b733a33323a226463643538633838663761313661303365363232656439393332643830656164223b733a33323a226434313030373135366164353564393762643331373430393963656133343932223b733a33323a226161653038373632383161333132333463636439376130623530633438643066223b733a33323a226636336264363735333362643031336435626665326133653963643165616236223b733a33323a223164376164366564363139393866656262326566616531393533383933643032223b733a33323a223333306138636466316439613761373636323132653461613136303635366465223b733a33323a223538383633366131306661336231366661623662663762613064366537393233223b733a33323a223139396637333839633264323639663535323564373639656331323039653662223b733a33323a226166383138633339353265616631643833656466323631623535373363366261223b733a33323a226332356537373461356538386466616135623162616630363465303532376534223b733a33323a226664373631626361396263303033336232356339343062616465616335356464223b733a33323a223563373161633239393637643230653938306431386264353833356130383931223b733a33323a226264366661646461316537373737333330303533313137653230353533373663223b733a33323a223835626230666364323237626433343638323136336138316431396665373061223b733a33323a223130616337336230356638616665373432393233356566393736366332623134223b733a33323a223532623533383163616563353639613266376231636132643733386165626562223b733a33323a223561396430643138616364386465613162643530376530313236643432666661223b733a33323a226265626534356534653938616464316432386133663137326564333130303262223b733a33323a226565656264363536343735626534373337353837306138336532613266653730223b733a33323a223363303836643839623639633331666334303563653163663966623764626564223b733a33323a226130393334383338313866323130313736636135646532383962366465666639223b733a33323a223165383637646461636238626637613231666463633035316365363437333133223b733a33323a226230666239356365386663313233656161313532363266393139383730383764223b733a33323a223634666337633338646231373533363366306563376236383635613664323334223b733a33323a223263323532343339343264313466626339353262643136353537613639663165223b733a33323a226138396161363836343365346230373430656561346432653161383162666538223b733a33323a223835643237623331623438373764333938396237646337333231383034363531223b733a33323a226265333130643665623761636135353331626335396231353534323831383835223b733a33323a226466353535356639653634643938613330613036643936373862363035343635223b733a33323a223231313730663438353830323731386130383238653363373939313236613265223b733a33323a223265353933313637653132373738353765393338613466643363303232663930223b733a33323a223135353563386365633065303431326436346534633336643030363163323037223b733a33323a223632313565353839383638306263636435383731303939353434666435383863223b733a33323a226237613632613332663338363561656638633566323062353666313935313239223b733a33323a226138646337353534343833623065396335613632626465303161653738623338223b733a33323a226132336166636163656464333334633165646131636531613064633632383266223b733a33323a223762313364396237396561336135656138353161646635626366633366613733223b733a33323a223930336564363632313339666263623533386530663835663237303362656530223b733a33323a223465396631653035646366343561326265363531316436656462363763643166223b733a33323a223562393233643639306631383834323437313465306132303334663538383331223b733a33323a223766366363303763336331336366353933333361333365313337323265356438223b733a33323a223637316433323432343037333135373730363161363366613236666435313231223b733a33323a226661363262393164333832326562333665353137396235313365346434303265223b733a33323a226164633034363362336537373930343363373564613033366531386661653038223b733a33323a226435383131376531333231336439343365636664346334636434653931636532223b733a33323a226638626561616266313933633563336336616338353466623937326565616131223b733a33323a223836633136313235626661373966343363656663383030376366346162336539223b733a33323a226364616664353762396566643162326161353330663865663639396665616535223b733a33323a223765343661303133653430643762646436336336363634616237373637393032223b733a33323a223138326631323531663837366563373966343766653238346663346361396166223b733a33323a226537633130363237613730663631316162633138336564653638383039653932223b733a33323a223435656639373766396235326366643736623761343333643532643064346562223b733a33323a223639613666623935623839376234633662646639323732663239363133396565223b733a33323a223561666433393366343064636465653532313164623834393861656135623034223b733a33323a226136306361303861343335373435396231386238643061636461643665643639223b733a33323a223264363533333637393038376232653430383361386562326362623234313635223b733a33323a223364316362376263336361303635633130633064303064613362376131633038223b733a33323a226263363866356661643261396131613639323132333364626366346637363537223b733a33323a226133383262326335643465633462336435346464383461313632666236323533223b7d733a343a2268617368223b733a36353a2261333832623263356434656334623364353464643834613136326662363235332d6263363866356661643261396131613639323132333364626366346637363537223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a31353a7b733a33323a223963656235313736306465383436373831363461393932346262643061663337223b733a33323a226264336330353732653133363562336438346137343332373732316265623063223b733a33323a223635313932386338643932356465613862386232303338646361303933353864223b733a33323a223665333232383236386133613435626338313238313761393231633563623339223b733a33323a223961373463383632316232316234323762623733346638303533306265623531223b733a33323a226564646636643264666139383261626135663833386461653131363765376339223b733a33323a226536303634656238383337313530663361643566633636633136366335666635223b733a33323a223665386533636563336637336130653063326264343230616535383932613733223b733a33323a226639396133393662333831643535633833666339383861343438383462643062223b733a33323a226266316236616466316261636334376561373737303533653238653164653666223b733a33323a223962646438666335356439663265343363393465303430356430363435666436223b733a33323a223739353034326437353961636134393863646165316637366337636431356635223b733a33323a226333346664393831663463356531353961323566343132313862313133323136223b733a33323a226539366565313162373965376461653436376536303736343865376661363138223b733a33323a226237346539616438303965343564613634626463356437383535656363306432223b733a33323a223637333533663861653933326336653230376164663032383161376462373066223b733a33323a223066393265383963363236656533623964623563313363323236396232336235223b733a33323a226237383731313638313033346533373035313764343437396565373435363564223b733a33323a223166303563633239306662313337316230616333376535323765313231353566223b733a33323a223732326331643664343666616462626165386633636239636263343036326131223b733a33323a226536323930623937643566666361393234653433373964383164303033663165223b733a33323a223463323831633938643563353164306265383838343832383432626661633537223b733a33323a223136333437333131303636383033373965366332306263313063623338363438223b733a33323a223633383433663266363339646531323638626235363430323231303135383932223b733a33323a223261633630306434363534306164643163323463313362636165313662313662223b733a33323a223964656134633239366135383864396665313864333963363766373033393034223b733a33323a223033303765303465646233633865316462616139663761336130383261336461223b733a33323a226265343664303261393761643437633562333265373062343661626362633164223b733a33323a223633653937663766633934326235613732346564376135323865626334326339223b733a33323a226636343435383532636334313162633738343832666565373233313961353366223b7d733a343a2268617368223b733a36353a2266363434353835326363343131626337383438326665653732333139613533662d3633653937663766633934326235613732346564376135323865626334326339223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a31363a7b733a33323a226437393435316637633332623465663663636565303730353166623662393333223b733a33323a226263643236396663643261383333323437306630393363343537333665333430223b733a33323a223932306666326562346337346661396166303836336130396462353035626265223b733a33323a223663323762323661346161653537313838396363353835393537346637383964223b733a33323a223863626465366339386130326239323764346261316637313932616438356230223b733a33323a223661383866646430393733636436666663626331663530646135336366636264223b733a33323a223235373263373432376161386434333465366532393566383237623730383236223b733a33323a223838353863336636633532643466613765396332323037663165633565323538223b733a33323a223865383533353633333664353932613564396538633932323334353465363530223b733a33323a226339306566313663363766633465356464373631626134306465396665663665223b733a33323a223036373961616464633434376266643034303239393736353934623766373961223b733a33323a226334326439313164666630633333343033363538343834333361383363393763223b733a33323a223965393231376362303366376664616166646239653833373736303331666430223b733a33323a223835386635333233633539396130626465363137656565656535373562303865223b733a33323a226637623161643864383739376630373535303766623333313362303836623833223b733a33323a223530666235373031363532343631323632393230353637356665633263353463223b733a33323a226636336233336138336631643237643762303534666637373436306630356465223b733a33323a223333653135343166303831353637666231323065666161623065653166643531223b733a33323a223266376539356534313638343062353034383035363263646363366632386130223b733a33323a226431646435633535396163376165626363353433656538643961343865373537223b733a33323a223431373666376162666331303261363637393563393338303632366137366261223b733a33323a226565313234363231653432376634306333663934666239326365326432326131223b733a33323a223432326239653430653631333638366232633231333931343133376464393038223b733a33323a226536613466356662343434313862366134636436306461643737623832656634223b733a33323a223863633938383564383264303362373132643464646532616133303930366637223b733a33323a226339666438303931643839636633646137376564653866333634383836323362223b733a33323a223330313433326331333062323466316632356137633863613663656535383237223b733a33323a223936336131393561346433333464656131366533663932323039333239653933223b733a33323a226661633162393833636661336665636663353235353531333362633335383663223b733a33323a223430656131636361636562316663616364356435353633323766373864633431223b733a33323a226334656263343433316330353236326231663762336639323362613532333335223b733a33323a226563633637646363396564666265623732346436373861363434363732353165223b7d733a343a2268617368223b733a36353a2265636336376463633965646662656237323464363738613634343637323531652d6334656263343433316330353236326231663762336639323362613532333335223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465696d706f7274666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226565643736373462613535656535323461356637633830613262363339346335223b733a33323a226461343464623137613531656436613330396131303138653039316130663131223b7d733a343a2268617368223b733a36353a2264613434646231376135316564366133303961313031386530393161306631312d6565643736373462613535656535323461356637633830613262363339346335223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d, 1761038763);
INSERT INTO `session` (`id`, `data`, `modified`) VALUES
('s6e0blrk0i6049m13fusriciuv', 0x5f5f4c616d696e61737c613a353a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313736333933393237312e3137303539343b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a2231766631663839387363756d733638346b3330316e6e6a623869223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313736333935313439343b7d733a33323a224c616d696e61735f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313736333938323437313b7d733a34343a224c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313736333938323336373b7d7d72656469726563745f75726c7c733a35373a22687474703a2f2f6c6f63616c686f73742f6f6d6b5f746879705f32352d32365f636c6f6e652f61646d696e2f637376696d706f72742f6d6170223b4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223965616565363363336339343066333961666431633433323534313132616439223b733a33323a223434616534386435356666366539613138636461313836616338393963623435223b7d733a343a2268617368223b733a36353a2234346165343864353566663665396131386364613138366163383939636234352d3965616565363363336339343066333961666431633433323534313132616439223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f417574687c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4f6d656b614d657373656e6765727c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a36323a7b733a33323a223133626533393561356432306264666565383264373938643761393665333037223b733a33323a223735656234346261383839666430313132643366653538366561363764323533223b733a33323a223236383963613632356430656565373239626631626439666162333934343432223b733a33323a226663656139393035396330653165353863636264373736613464653639346165223b733a33323a223663376564623462373431363533656666366164363833373234326438373239223b733a33323a226466613764663937376339383962343465346131393538653633323965356165223b733a33323a226637356534346364343031333561643066633663653431653461663430313431223b733a33323a223230623061666535383535326265636563373639623062326232393334663039223b733a33323a223135346135323530613735646462346463383863663465623533623434336563223b733a33323a223961333066376162323534336463666666333634613239326636326430386466223b733a33323a223365616136646664643062636235613133383938323862303430353532633637223b733a33323a223639336439616663356462313961633664333737363961313864343137663237223b733a33323a226137643030376161303232313738633837303264626537393464303139353139223b733a33323a226437383536663165313235393930306462376461653635376139663462386538223b733a33323a223063346338376134636665353430623133616434353939313935326630396165223b733a33323a226161613465656232343661663336343963353763613462333163323430666439223b733a33323a226634663862383966643634663934363666633438633239396232386237343738223b733a33323a223761663539666337326535636531363832366536393661623439356330303337223b733a33323a223438616234356239386634323964383731663639356438656366653530333838223b733a33323a223035313534353938636366383066353366356238316638646361316166393165223b733a33323a226661643738373139373136343766373534313530313461363962303135643964223b733a33323a223263623766363735626435643338313963343064653165363562663736313934223b733a33323a223937333266316265313332653636373661346432613139316230623733666664223b733a33323a223066366166323662656635613930613866396261633464346536373835623166223b733a33323a226663643632663463326264303033363231323734646665323365643036323030223b733a33323a226534623535353438396333303436623164326463633364623139636633313738223b733a33323a226636653131633531303335303934376564663932366137313863376330626633223b733a33323a223563373238343935356262343138663831383031356439383738323864373532223b733a33323a223730346366363561366632653531366366633364373631383264313537383964223b733a33323a226633373032626133623164303932636239353430386164653266613139353765223b733a33323a223063333738313261326662303631653764333638376536613639643965313630223b733a33323a226566393531343935663538313463323663363934613430613437346239323465223b733a33323a223138626563333364313136393562613865623237633931333363363561313765223b733a33323a226438383866373432393231663432366537326235663236313563346137383235223b733a33323a226633373333336563613239333162363331383062613038303039353061656639223b733a33323a223235613566303464356564343565663966353765613431663862666237613132223b733a33323a226138656538633833303238663538353838363034376331303338363237626164223b733a33323a223637383335383833316661343430306233376139353432313835336435313865223b733a33323a223933336262613965346162346532303538336630353331393233613130663062223b733a33323a223538623534353361353961386236643861376261626366333963373465373633223b733a33323a223730313364316361316463613035306534666565643038336232376233653366223b733a33323a223330323635376361303730616535366135643031633238323266303135313561223b733a33323a226165306163386636323333313830356131373366316535643239663036633436223b733a33323a223761383831396437653661623765666664646563636439643536323032363233223b733a33323a223232383834646238663732303731333366313962383038333563383935313136223b733a33323a223931626534373336643365393761663265366137316635323336653639343838223b733a33323a223839306230353261663131313662626231616262326536316562653637376139223b733a33323a226462383435616130343465633933363734313935623861386335316336386264223b733a33323a226664336139663737663664323436336239323036306337356538346237316562223b733a33323a226664613539373833373661613833366235353135613534333661313234356131223b733a33323a223438396266393365623465653665613161643232653564653533366162353362223b733a33323a223966333761653237643539653965633033373430653464663233306433363538223b733a33323a226430396132383936373035653162303536343730353935626430653865646332223b733a33323a223762386464656231353334656264343233613238643632353139356366633035223b733a33323a223366323036336637336463393032323761646432303166346135343866366635223b733a33323a223565303962653164623766326333313530633664613966346639633634343034223b733a33323a223437303463336539323635613637303436643461626138656339393635663535223b733a33323a223565383636636262633933663164393433303265633039363830633635666336223b733a33323a223133636362613737376334626331363732376130386539616434613533656433223b733a33323a223432626366383538623566623839663133626333363566656537383731386661223b733a33323a223663373965376362653665653533663839636131343130336132343165626162223b733a33323a223337666261333233316437383564653437623561616666306563393637623838223b733a33323a223835663633613032373166333038373630323530336265333532366430396463223b733a33323a223033616461363538326638336266623134366338313663346564386339313765223b733a33323a223066646331356232666536616461313564373330316230316464633733613337223b733a33323a223737363037376532393161343433356434363335323534386130376132613866223b733a33323a223638613831396231373230666632353666393934623031323635636630646632223b733a33323a226436343861613164653861323762663861646531323463623430633034666661223b733a33323a226139313538393164326238633663653831626666646530663933333031376237223b733a33323a223531386538333233336639663866336532373530303635353364393563663730223b733a33323a226531626362333936326432356564666361626234363861356534613630313433223b733a33323a223433663464376163373865356536343965666364383564646663616533653238223b733a33323a223963623531656161666166303639393864643364336136623065363938323562223b733a33323a226366346262316333363064633664656564643061326539396333636463376437223b733a33323a226466313631626162636431363864656436663863346539613137656537633337223b733a33323a226239626461316237373431626635323962323837343133386433393363396465223b733a33323a223732383035663435316630353935353463323835303537666439646538663132223b733a33323a223962326262366665343132386335343230643632363934356666316666396538223b733a33323a223333383630303361623730346330383435356633326434316337356337653937223b733a33323a223362363365306638376130623839623932633331316161343039393861386632223b733a33323a223232613465306466616630623030616662653065326235303438393338366638223b733a33323a223464643661386632663232383532363236666137383135343465343430363033223b733a33323a223962663938363837336234303162316434393530356564653430633536366631223b733a33323a223537666135623262323561663736623337373964643135323832613838303538223b733a33323a223136306235333264383636343836393939616431356361333362303866653361223b733a33323a223935663731363962323661643931613966393664356565343066643263616635223b733a33323a223730316663353361656133363533636331356531333439396539653066616135223b733a33323a223034316337383364626566356439373535366666626465633935616164363830223b733a33323a223131343930636230303136396665666531656132303161343365653465353762223b733a33323a223839313338303865373030643434623732393332396231613163366530313763223b733a33323a223435343065666633343263363566633137613332643566393333393962356631223b733a33323a226336373362393630663834343962643164376563326633616163323030336635223b733a33323a223862366332333264643436303564643837626534343461656266653063343338223b733a33323a223731383530323163373730653430663334663938666234636633646338326361223b733a33323a223764346163336534306161616338613863626465376233323630613761356462223b733a33323a223639306231646634326363666332666237653666666163623364366539613033223b733a33323a223130363063623762613431666135633131303030396338666237323635333732223b733a33323a226230356637383666656633626437353738666366656465653330373632376166223b733a33323a226661373739626332656465646334643266636433663232663838356637626533223b733a33323a223061633665333939626337326630646531646238616562663163373963303333223b733a33323a226537656531376363313663663830666464306634323834353837613237643062223b733a33323a223537633334323134386565373764653465353033633739336231333632336238223b733a33323a223039383630316239656466356533393434326166393139633962653732383132223b733a33323a226361663535306633643534306162366538353961363363343963316633306137223b733a33323a223866656434383230303838343632323138666330623532663234373133643663223b733a33323a226634616339393132323433653531656530303331393336346230623333633531223b733a33323a223334303066353033633630653931616137646261626466616164353932346535223b733a33323a223765373932653630323666653265643632316238346233386533613461333334223b733a33323a226366393638663639323137636638313331663166343563313961376263386130223b733a33323a223030343865343231653335636261346132376237633564363862653435653438223b733a33323a223731323637633338356634306537343966366634366530373265386331326434223b733a33323a226138643136376639343531333132633733356138623632366332323133633463223b733a33323a223035353139343435336262343961663336613936363630303339333965333966223b733a33323a226462353930323432396566303866643237356530303262356130383732616563223b733a33323a226132663663306436356438653562613439353065323637643431353038303166223b733a33323a223964306431353335656233373737396533303239336130353031336635626161223b733a33323a226334636533646436616265373231633763356434333739343031633366363663223b733a33323a223837373537626637383963646635353366373031333734303137343134623334223b733a33323a226563663563653038666530316533363461333666646639316334393838366434223b733a33323a226236656335343432663664633766376537646232336139353136616134366161223b733a33323a223138373162333336363936333637643234613261356532313735623537343466223b733a33323a223030313230386163396337313363373365653033653735386130303262373466223b733a33323a223333323639646538636562616261386364646166386162643439366636613537223b733a33323a223837326438366236623261383631613962306535303238376633363338643539223b7d733a343a2268617368223b733a36353a2238373264383662366232613836316139623065353032383766333633386435392d3333323639646538636562616261386364646166386162643439366636613537223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a31313a7b733a33323a223639333239333766626533346563366631356166313164303364376433646266223b733a33323a226561643365663536636635633832613965653434326639626139363738306132223b733a33323a223532303035373065326639613131363535656639323762666131653765336634223b733a33323a226530646561613365356633326439623331663632313633663636653366396165223b733a33323a226331623264306335393961623865323663323965643431643838313435333033223b733a33323a223765363439626261636637396536663636343564643164613166343832626138223b733a33323a226139616633313834663535326633393962666236326135643939343838333537223b733a33323a226666623661663133313535393038386431636263306466643164333261346134223b733a33323a226661313761646262396137643062643435306537626639306238373265613862223b733a33323a226636303562633337373133626662333065666665303037343431393831646431223b733a33323a226664386138323062303262303032616464613638633330633164376436386461223b733a33323a223062613233626639386634663063643235393461636534626138633764393839223b733a33323a223039613061653737633833396436363830303366363432346632396261373932223b733a33323a226432396139623831656438306261356636633233336663343231633635326139223b733a33323a226665646561313661393137353965303131343962653261376163346435336233223b733a33323a223939633730343838633139376133373566616231343861303766363435303534223b733a33323a226262356263376538353839393836613830373838393365323663323663386139223b733a33323a226534383337376333613362313933663233613562336565376566333330343136223b733a33323a223839373761666561326332313962363165636465343834346633393538306264223b733a33323a223936653639633930306561653836613838626337363761316631643238636237223b733a33323a226335626133333963373331333262313437306462303139323834366561386538223b733a33323a226435313963313634363762323530626464616666333530373263353734343431223b7d733a343a2268617368223b733a36353a2264353139633136343637623235306264646166663335303732633537343434312d6335626133333963373331333262313437306462303139323834366561386538223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d, 1763939271),
('vtcok08bao9g4ifbm96p241217', 0x5f5f4c616d696e61737c613a333a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313736333337353131352e3131373039323b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a227674636f6b303862616f3967346966626d393670323431323137223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313736333431383331383b7d7d72656469726563745f75726c7c733a34343a22687474703a2f2f6c6f63616c686f73742f6f6d656b612d732f61646d696e2f637376696d706f72742f6d6170223b4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223938366137333664666265323362396430666638346533633062343433633036223b733a33323a226432363061396330326466363562333135623962343863623266356330306432223b7d733a343a2268617368223b733a36353a2264323630613963303264663635623331356239623438636232663563303064322d3938366137333664666265323362396430666638346533633062343433633036223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d, 1763375120);

-- --------------------------------------------------------

--
-- Structure de la table `setting`
--

CREATE TABLE `setting` (
  `id` varchar(190) NOT NULL,
  `value` longtext NOT NULL COMMENT '(DC2Type:json_array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `setting`
--

INSERT INTO `setting` (`id`, `value`) VALUES
('administrator_email', '\"hichemsaoud25@gmail.com\"'),
('extension_whitelist', '[\"aac\",\"aif\",\"aiff\",\"asf\",\"asx\",\"avi\",\"bmp\",\"c\",\"cc\",\"class\",\"css\",\"divx\",\"doc\",\"docx\",\"exe\",\"gif\",\"gz\",\"gzip\",\"h\",\"ico\",\"j2k\",\"jp2\",\"jpe\",\"jpeg\",\"jpg\",\"m4a\",\"m4v\",\"mdb\",\"mid\",\"midi\",\"mov\",\"mp2\",\"mp3\",\"mp4\",\"mpa\",\"mpe\",\"mpeg\",\"mpg\",\"mpp\",\"odb\",\"odc\",\"odf\",\"odg\",\"odp\",\"ods\",\"odt\",\"ogg\",\"opus\",\"pdf\",\"png\",\"pot\",\"pps\",\"ppt\",\"pptx\",\"qt\",\"ra\",\"ram\",\"rtf\",\"rtx\",\"swf\",\"tar\",\"tif\",\"tiff\",\"txt\",\"wav\",\"wax\",\"webm\",\"webp\",\"wma\",\"wmv\",\"wmx\",\"wri\",\"xla\",\"xls\",\"xlsx\",\"xlt\",\"xlw\",\"zip\"]'),
('installation_title', '\"omeka test\"'),
('locale', '\"fr\"'),
('media_type_whitelist', '[\"application\\/msword\",\"application\\/ogg\",\"application\\/pdf\",\"application\\/rtf\",\"application\\/vnd.ms-access\",\"application\\/vnd.ms-excel\",\"application\\/vnd.ms-powerpoint\",\"application\\/vnd.ms-project\",\"application\\/vnd.ms-write\",\"application\\/vnd.oasis.opendocument.chart\",\"application\\/vnd.oasis.opendocument.database\",\"application\\/vnd.oasis.opendocument.formula\",\"application\\/vnd.oasis.opendocument.graphics\",\"application\\/vnd.oasis.opendocument.presentation\",\"application\\/vnd.oasis.opendocument.spreadsheet\",\"application\\/vnd.oasis.opendocument.text\",\"application\\/vnd.openxmlformats-officedocument.wordprocessingml.document\",\"application\\/vnd.openxmlformats-officedocument.presentationml.presentation\",\"application\\/vnd.openxmlformats-officedocument.spreadsheetml.sheet\",\"application\\/x-gzip\",\"application\\/x-ms-wmp\",\"application\\/x-msdownload\",\"application\\/x-shockwave-flash\",\"application\\/x-tar\",\"application\\/zip\",\"audio\\/midi\",\"audio\\/mp4\",\"audio\\/mpeg\",\"audio\\/ogg\",\"audio\\/x-aac\",\"audio\\/x-aiff\",\"audio\\/x-ms-wma\",\"audio\\/x-ms-wax\",\"audio\\/x-realaudio\",\"audio\\/x-wav\",\"image\\/bmp\",\"image\\/gif\",\"image\\/jp2\",\"image\\/jpeg\",\"image\\/pjpeg\",\"image\\/png\",\"image\\/tiff\",\"image\\/webp\",\"image\\/x-icon\",\"text\\/css\",\"text\\/plain\",\"text\\/richtext\",\"video\\/divx\",\"video\\/mp4\",\"video\\/mpeg\",\"video\\/ogg\",\"video\\/quicktime\",\"video\\/webm\",\"video\\/x-ms-asf,\",\"video\\/x-msvideo\",\"video\\/x-ms-wmv\"]'),
('pagination_per_page', '25'),
('time_zone', '\"Europe\\/Paris\"'),
('use_htmlpurifier', '\"1\"'),
('version', '\"4.1.1\"'),
('version_notifications', '\"1\"');

-- --------------------------------------------------------

--
-- Structure de la table `site`
--

CREATE TABLE `site` (
  `id` int(11) NOT NULL,
  `thumbnail_id` int(11) DEFAULT NULL,
  `homepage_id` int(11) DEFAULT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `slug` varchar(190) NOT NULL,
  `theme` varchar(190) NOT NULL,
  `title` varchar(190) NOT NULL,
  `summary` longtext DEFAULT NULL,
  `navigation` longtext NOT NULL COMMENT '(DC2Type:json_array)',
  `item_pool` longtext NOT NULL COMMENT '(DC2Type:json_array)',
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL,
  `assign_new_items` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `site_block_attachment`
--

CREATE TABLE `site_block_attachment` (
  `id` int(11) NOT NULL,
  `block_id` int(11) NOT NULL,
  `item_id` int(11) DEFAULT NULL,
  `media_id` int(11) DEFAULT NULL,
  `caption` longtext NOT NULL,
  `position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `site_item_set`
--

CREATE TABLE `site_item_set` (
  `id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  `item_set_id` int(11) NOT NULL,
  `position` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `site_page`
--

CREATE TABLE `site_page` (
  `id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  `slug` varchar(190) NOT NULL,
  `title` varchar(190) NOT NULL,
  `is_public` tinyint(1) NOT NULL,
  `layout` varchar(255) DEFAULT NULL,
  `layout_data` longtext DEFAULT NULL COMMENT '(DC2Type:json)',
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `site_page_block`
--

CREATE TABLE `site_page_block` (
  `id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL,
  `layout` varchar(80) NOT NULL,
  `data` longtext NOT NULL COMMENT '(DC2Type:json_array)',
  `layout_data` longtext DEFAULT NULL COMMENT '(DC2Type:json)',
  `position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `site_permission`
--

CREATE TABLE `site_permission` (
  `id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `role` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `site_setting`
--

CREATE TABLE `site_setting` (
  `id` varchar(190) NOT NULL,
  `site_id` int(11) NOT NULL,
  `value` longtext NOT NULL COMMENT '(DC2Type:json_array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(190) NOT NULL,
  `name` varchar(190) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  `password_hash` varchar(60) DEFAULT NULL,
  `role` varchar(190) NOT NULL,
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `name`, `created`, `modified`, `password_hash`, `role`, `is_active`) VALUES
(1, 'hichemsaoud25@gmail.com', 'hichem saoud', '2025-10-20 19:48:51', '2025-10-21 07:25:49', '$2b$12$S9x/cdpMU8u00CWluyNKXOyezFgl4vRRp50K6DtGIrIVLd7mOzW9O', 'global_admin', 1),
(2, 'samuel.szoniecky@univ-paris8.fr', 'admin', '2025-10-21 08:53:46', '2025-10-21 08:54:17', '$2y$10$Ry8KABX.MSR0jH3c0StyPOxxbdgGocwHDSfzdE21.J4Ldmg9WaIt.', 'global_admin', 1);

-- --------------------------------------------------------

--
-- Structure de la table `user_setting`
--

CREATE TABLE `user_setting` (
  `id` varchar(190) NOT NULL,
  `user_id` int(11) NOT NULL,
  `value` longtext NOT NULL COMMENT '(DC2Type:json_array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user_setting`
--

INSERT INTO `user_setting` (`id`, `user_id`, `value`) VALUES
('browse_defaults_admin_item_sets', 1, '{\"sort_by\":\"created\",\"sort_order\":\"desc\"}'),
('browse_defaults_admin_item_sets', 2, '{\"sort_by\":\"created\",\"sort_order\":\"desc\"}'),
('browse_defaults_admin_items', 1, '{\"sort_by\":\"created\",\"sort_order\":\"desc\"}'),
('browse_defaults_admin_items', 2, '{\"sort_by\":\"created\",\"sort_order\":\"desc\"}'),
('browse_defaults_admin_media', 1, '{\"sort_by\":\"created\",\"sort_order\":\"desc\"}'),
('browse_defaults_admin_media', 2, '{\"sort_by\":\"created\",\"sort_order\":\"desc\"}'),
('browse_defaults_admin_sites', 1, '{\"sort_by\":\"title\",\"sort_order\":\"asc\"}'),
('browse_defaults_admin_sites', 2, '{\"sort_by\":\"title\",\"sort_order\":\"asc\"}'),
('columns_admin_item_sets', 1, '[{\"type\":\"resource_class\",\"default\":null,\"header\":null},{\"type\":\"owner\",\"default\":null,\"header\":null},{\"type\":\"created\",\"default\":null,\"header\":null}]'),
('columns_admin_item_sets', 2, '[{\"type\":\"resource_class\",\"default\":null,\"header\":null},{\"type\":\"owner\",\"default\":null,\"header\":null},{\"type\":\"created\",\"default\":null,\"header\":null}]'),
('columns_admin_items', 1, '[{\"type\":\"resource_class\",\"default\":null,\"header\":null},{\"type\":\"owner\",\"default\":null,\"header\":null},{\"type\":\"created\",\"default\":null,\"header\":null}]'),
('columns_admin_items', 2, '[{\"type\":\"resource_class\",\"default\":null,\"header\":null},{\"type\":\"owner\",\"default\":null,\"header\":null},{\"type\":\"created\",\"default\":null,\"header\":null}]'),
('columns_admin_media', 1, '[{\"type\":\"resource_class\",\"default\":null,\"header\":null},{\"type\":\"owner\",\"default\":null,\"header\":null},{\"type\":\"created\",\"default\":null,\"header\":null}]'),
('columns_admin_media', 2, '[{\"type\":\"resource_class\",\"default\":null,\"header\":null},{\"type\":\"owner\",\"default\":null,\"header\":null},{\"type\":\"created\",\"default\":null,\"header\":null}]'),
('columns_admin_sites', 1, '[{\"type\":\"slug\",\"default\":null,\"header\":null},{\"type\":\"owner\",\"default\":null,\"header\":null},{\"type\":\"created\",\"default\":null,\"header\":null}]'),
('columns_admin_sites', 2, '[{\"type\":\"slug\",\"default\":null,\"header\":null},{\"type\":\"owner\",\"default\":null,\"header\":null},{\"type\":\"created\",\"default\":null,\"header\":null}]'),
('csv_import_automap_check_names_alone', 1, 'true'),
('csv_import_delimiter', 1, '\",\"'),
('csv_import_enclosure', 1, '\"\\\"\"'),
('csv_import_global_language', 1, '\"\"'),
('csv_import_identifier_property', 1, '\"\"'),
('csv_import_multivalue_separator', 1, '\",\"'),
('csv_import_rows_by_batch', 1, '20'),
('default_resource_template', 1, '\"\"'),
('default_resource_template', 2, '\"\"'),
('locale', 1, '\"fr\"'),
('locale', 2, '\"fr\"');

-- --------------------------------------------------------

--
-- Structure de la table `value`
--

CREATE TABLE `value` (
  `id` int(11) NOT NULL,
  `resource_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `value_resource_id` int(11) DEFAULT NULL,
  `value_annotation_id` int(11) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `lang` varchar(255) DEFAULT NULL,
  `value` longtext DEFAULT NULL,
  `uri` longtext DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `value`
--

INSERT INTO `value` (`id`, `resource_id`, `property_id`, `value_resource_id`, `value_annotation_id`, `type`, `lang`, `value`, `uri`, `is_public`) VALUES
(1, 1, 1, NULL, NULL, 'literal', '', 'salle de cours', NULL, 1),
(2, 1, 210, NULL, NULL, 'literal', '', 'batiment A', NULL, 1),
(3, 2, 4, NULL, NULL, 'literal', NULL, 'Université de Paris 8 Saint-Denis', NULL, 1),
(24, 14, 1, NULL, NULL, 'literal', '', 'test', NULL, 1),
(37, 21, 1, NULL, NULL, 'literal', NULL, 'test', NULL, 1),
(38, 21, 4, NULL, NULL, 'literal', NULL, 'test1', NULL, 1),
(39, 22, 1, NULL, NULL, 'literal', NULL, 'test', NULL, 1),
(104, 45, 1, NULL, NULL, 'literal', NULL, 'Université Paris 8', NULL, 1),
(105, 45, 8, NULL, NULL, 'literal', NULL, 'Université', NULL, 1),
(106, 45, 4, NULL, NULL, 'literal', NULL, 'Université de Paris 8 Saint-Denis', NULL, 1),
(107, 46, 1, NULL, NULL, 'literal', NULL, 'Bâtiment A', NULL, 1),
(108, 46, 8, NULL, NULL, 'literal', NULL, 'Bâtiment', NULL, 1),
(109, 46, 4, NULL, NULL, 'literal', NULL, 'Bâtiment principal avec salles de cours', NULL, 1),
(110, 47, 1, NULL, NULL, 'literal', NULL, 'Bâtiment B', NULL, 1),
(111, 47, 8, NULL, NULL, 'literal', NULL, 'Bâtiment', NULL, 1),
(112, 47, 4, NULL, NULL, 'literal', NULL, 'Bâtiment informatique et administratif', NULL, 1),
(113, 48, 1, NULL, NULL, 'literal', NULL, 'Salle A101', NULL, 1),
(114, 48, 8, NULL, NULL, 'literal', NULL, 'Salle', NULL, 1),
(115, 48, 210, NULL, NULL, 'literal', NULL, 'Bâtiment A', NULL, 1),
(116, 48, 4, NULL, NULL, 'literal', NULL, 'Salle de cours licence informatique', NULL, 1),
(117, 49, 1, NULL, NULL, 'literal', NULL, 'Salle B201', NULL, 1),
(118, 49, 8, NULL, NULL, 'literal', NULL, 'Salle', NULL, 1),
(119, 49, 210, NULL, NULL, 'literal', NULL, 'Bâtiment B', NULL, 1),
(120, 49, 4, NULL, NULL, 'literal', NULL, 'Salle de TD de traitement du signal', NULL, 1),
(121, 50, 1, NULL, NULL, 'literal', NULL, 'Bureau Prof Durand', NULL, 1),
(122, 50, 8, NULL, NULL, 'literal', NULL, 'Bureau', NULL, 1),
(123, 50, 210, NULL, NULL, 'literal', NULL, 'Bâtiment B', NULL, 1),
(124, 50, 4, NULL, NULL, 'literal', NULL, 'Bureau du Professeur Durand', NULL, 1),
(125, 51, 1, NULL, NULL, 'literal', NULL, 'Département Info', NULL, 1),
(126, 51, 8, NULL, NULL, 'literal', NULL, 'Département', NULL, 1),
(127, 51, 4, NULL, NULL, 'literal', NULL, 'Département Informatique', NULL, 1),
(128, 52, 1, NULL, NULL, 'literal', NULL, 'Professeur Durand', NULL, 1),
(129, 52, 8, NULL, NULL, 'literal', NULL, 'Professeur', NULL, 1),
(130, 52, 213, NULL, NULL, 'literal', NULL, 'Bureau Prof Durand', NULL, 1),
(131, 52, 4, NULL, NULL, 'literal', NULL, 'Enseignant en Réseaux et Systèmes', NULL, 1),
(132, 53, 1, NULL, NULL, 'literal', NULL, 'Étudiant Saoud', NULL, 1),
(133, 53, 8, NULL, NULL, 'literal', NULL, 'Étudiant', NULL, 1),
(134, 53, 4, NULL, NULL, 'literal', NULL, 'Étudiant en Master 2 Signal et Image', NULL, 1),
(135, 54, 1, NULL, NULL, 'literal', NULL, 'Itinéraire A101_B201', NULL, 1),
(136, 54, 8, NULL, NULL, 'literal', NULL, 'Itinéraire', NULL, 1),
(137, 54, 215, NULL, NULL, 'literal', NULL, 'Salle A101', NULL, 1),
(138, 54, 216, NULL, NULL, 'literal', NULL, 'Salle B201', NULL, 1),
(139, 54, 217, NULL, NULL, 'literal', NULL, '5', NULL, 1),
(140, 54, 4, NULL, NULL, 'literal', NULL, 'Chemin entre les deux salles principales', NULL, 1),
(141, 55, 1, NULL, NULL, 'literal', NULL, 'Itinéraire B201_BureauDurand', NULL, 1),
(142, 55, 8, NULL, NULL, 'literal', NULL, 'Itinéraire', NULL, 1),
(143, 55, 215, NULL, NULL, 'literal', NULL, 'Salle B201', NULL, 1),
(144, 55, 216, NULL, NULL, 'literal', NULL, 'Bureau Prof Durand', NULL, 1),
(145, 55, 217, NULL, NULL, 'literal', NULL, '3', NULL, 1),
(146, 55, 4, NULL, NULL, 'literal', NULL, 'Itinéraire entre la salle et le bureau', NULL, 1),
(155, 62, 1, NULL, NULL, 'literal', NULL, 'nvtest', NULL, 1),
(156, 62, 4, NULL, NULL, 'literal', NULL, 'test', NULL, 1),
(157, 64, 1, NULL, NULL, 'literal', NULL, 'nouveau', NULL, 1),
(158, 64, 4, NULL, NULL, 'literal', NULL, 'hoho', NULL, 1);

-- --------------------------------------------------------

--
-- Structure de la table `value_annotation`
--

CREATE TABLE `value_annotation` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `vocabulary`
--

CREATE TABLE `vocabulary` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `namespace_uri` varchar(190) NOT NULL,
  `prefix` varchar(190) NOT NULL,
  `label` varchar(255) NOT NULL,
  `comment` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `vocabulary`
--

INSERT INTO `vocabulary` (`id`, `owner_id`, `namespace_uri`, `prefix`, `label`, `comment`) VALUES
(1, NULL, 'http://purl.org/dc/terms/', 'dcterms', 'Dublin Core', 'Basic resource metadata (DCMI Metadata Terms)'),
(2, NULL, 'http://purl.org/dc/dcmitype/', 'dctype', 'Dublin Core Type', 'Basic resource types (DCMI Type Vocabulary)'),
(3, NULL, 'http://purl.org/ontology/bibo/', 'bibo', 'Bibliographic Ontology', 'Bibliographic metadata (BIBO)'),
(4, NULL, 'http://xmlns.com/foaf/0.1/', 'foaf', 'Friend of a Friend', 'Relationships between people and organizations (FOAF)'),
(5, 1, 'https://jardindesconnaissances.univ-paris8.fr/onto/jdc#', 'orientation', 'orientation', ''),
(6, 1, 'https://univ-paris8.fr/onto/orientation#', 'up8', 'Université Paris 8 – Orientation', 'Vocabulaire pour représenter bâtiments, salles, bureaux, personnes et itinéraires sur le campus Paris 8.\r\n');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `api_key`
--
ALTER TABLE `api_key`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_C912ED9D7E3C61F9` (`owner_id`);

--
-- Index pour la table `asset`
--
ALTER TABLE `asset`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_2AF5A5C5CC5DB90` (`storage_id`),
  ADD KEY `IDX_2AF5A5C7E3C61F9` (`owner_id`);

--
-- Index pour la table `csvimport_entity`
--
ALTER TABLE `csvimport_entity`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_84D382F4BE04EA9` (`job_id`);

--
-- Index pour la table `csvimport_import`
--
ALTER TABLE `csvimport_import`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_17B50881BE04EA9` (`job_id`),
  ADD UNIQUE KEY `UNIQ_17B508814C276F75` (`undo_job_id`);

--
-- Index pour la table `fulltext_search`
--
ALTER TABLE `fulltext_search`
  ADD PRIMARY KEY (`id`,`resource`),
  ADD KEY `IDX_AA31FE4A7E3C61F9` (`owner_id`);
ALTER TABLE `fulltext_search` ADD FULLTEXT KEY `IDX_AA31FE4A2B36786B3B8BA7C7` (`title`,`text`);

--
-- Index pour la table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_1F1B251ECBE0B084` (`primary_media_id`);

--
-- Index pour la table `item_item_set`
--
ALTER TABLE `item_item_set`
  ADD PRIMARY KEY (`item_id`,`item_set_id`),
  ADD KEY `IDX_6D0C9625126F525E` (`item_id`),
  ADD KEY `IDX_6D0C9625960278D7` (`item_set_id`);

--
-- Index pour la table `item_set`
--
ALTER TABLE `item_set`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `item_site`
--
ALTER TABLE `item_site`
  ADD PRIMARY KEY (`item_id`,`site_id`),
  ADD KEY `IDX_A1734D1F126F525E` (`item_id`),
  ADD KEY `IDX_A1734D1FF6BD1646` (`site_id`);

--
-- Index pour la table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_FBD8E0F87E3C61F9` (`owner_id`);

--
-- Index pour la table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_6A2CA10C5CC5DB90` (`storage_id`),
  ADD KEY `IDX_6A2CA10C126F525E` (`item_id`),
  ADD KEY `item_position` (`item_id`,`position`);

--
-- Index pour la table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `module`
--
ALTER TABLE `module`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_creation`
--
ALTER TABLE `password_creation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_C77917B4A76ED395` (`user_id`);

--
-- Index pour la table `property`
--
ALTER TABLE `property`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8BF21CDEAD0E05F6623C14D5` (`vocabulary_id`,`local_name`),
  ADD KEY `IDX_8BF21CDE7E3C61F9` (`owner_id`),
  ADD KEY `IDX_8BF21CDEAD0E05F6` (`vocabulary_id`);

--
-- Index pour la table `resource`
--
ALTER TABLE `resource`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_BC91F4167E3C61F9` (`owner_id`),
  ADD KEY `IDX_BC91F416448CC1BD` (`resource_class_id`),
  ADD KEY `IDX_BC91F41616131EA` (`resource_template_id`),
  ADD KEY `IDX_BC91F416FDFF2E92` (`thumbnail_id`),
  ADD KEY `title` (`title`(190)),
  ADD KEY `is_public` (`is_public`);

--
-- Index pour la table `resource_class`
--
ALTER TABLE `resource_class`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_C6F063ADAD0E05F6623C14D5` (`vocabulary_id`,`local_name`),
  ADD KEY `IDX_C6F063AD7E3C61F9` (`owner_id`),
  ADD KEY `IDX_C6F063ADAD0E05F6` (`vocabulary_id`);

--
-- Index pour la table `resource_template`
--
ALTER TABLE `resource_template`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_39ECD52EEA750E8` (`label`),
  ADD KEY `IDX_39ECD52E7E3C61F9` (`owner_id`),
  ADD KEY `IDX_39ECD52E448CC1BD` (`resource_class_id`),
  ADD KEY `IDX_39ECD52E724734A3` (`title_property_id`),
  ADD KEY `IDX_39ECD52EB84E0D1D` (`description_property_id`);

--
-- Index pour la table `resource_template_property`
--
ALTER TABLE `resource_template_property`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_4689E2F116131EA549213EC` (`resource_template_id`,`property_id`),
  ADD KEY `IDX_4689E2F116131EA` (`resource_template_id`),
  ADD KEY `IDX_4689E2F1549213EC` (`property_id`);

--
-- Index pour la table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `site`
--
ALTER TABLE `site`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_694309E4989D9B62` (`slug`),
  ADD UNIQUE KEY `UNIQ_694309E4571EDDA` (`homepage_id`),
  ADD KEY `IDX_694309E4FDFF2E92` (`thumbnail_id`),
  ADD KEY `IDX_694309E47E3C61F9` (`owner_id`);

--
-- Index pour la table `site_block_attachment`
--
ALTER TABLE `site_block_attachment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_236473FEE9ED820C` (`block_id`),
  ADD KEY `IDX_236473FE126F525E` (`item_id`),
  ADD KEY `IDX_236473FEEA9FDD75` (`media_id`),
  ADD KEY `block_position` (`block_id`,`position`);

--
-- Index pour la table `site_item_set`
--
ALTER TABLE `site_item_set`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_D4CE134F6BD1646960278D7` (`site_id`,`item_set_id`),
  ADD KEY `IDX_D4CE134F6BD1646` (`site_id`),
  ADD KEY `IDX_D4CE134960278D7` (`item_set_id`),
  ADD KEY `position` (`position`);

--
-- Index pour la table `site_page`
--
ALTER TABLE `site_page`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_2F900BD9F6BD1646989D9B62` (`site_id`,`slug`),
  ADD KEY `is_public` (`is_public`),
  ADD KEY `IDX_2F900BD9F6BD1646` (`site_id`);

--
-- Index pour la table `site_page_block`
--
ALTER TABLE `site_page_block`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_C593E731C4663E4` (`page_id`),
  ADD KEY `page_position` (`page_id`,`position`);

--
-- Index pour la table `site_permission`
--
ALTER TABLE `site_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_C0401D6FF6BD1646A76ED395` (`site_id`,`user_id`),
  ADD KEY `IDX_C0401D6FF6BD1646` (`site_id`),
  ADD KEY `IDX_C0401D6FA76ED395` (`user_id`);

--
-- Index pour la table `site_setting`
--
ALTER TABLE `site_setting`
  ADD PRIMARY KEY (`id`,`site_id`),
  ADD KEY `IDX_64D05A53F6BD1646` (`site_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- Index pour la table `user_setting`
--
ALTER TABLE `user_setting`
  ADD PRIMARY KEY (`id`,`user_id`),
  ADD KEY `IDX_C779A692A76ED395` (`user_id`);

--
-- Index pour la table `value`
--
ALTER TABLE `value`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_1D7758349B66727E` (`value_annotation_id`),
  ADD KEY `IDX_1D77583489329D25` (`resource_id`),
  ADD KEY `IDX_1D775834549213EC` (`property_id`),
  ADD KEY `IDX_1D7758344BC72506` (`value_resource_id`),
  ADD KEY `value` (`value`(190)),
  ADD KEY `uri` (`uri`(190)),
  ADD KEY `is_public` (`is_public`);

--
-- Index pour la table `value_annotation`
--
ALTER TABLE `value_annotation`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `vocabulary`
--
ALTER TABLE `vocabulary`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_9099C97B9B267FDF` (`namespace_uri`),
  ADD UNIQUE KEY `UNIQ_9099C97B93B1868E` (`prefix`),
  ADD KEY `IDX_9099C97B7E3C61F9` (`owner_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `asset`
--
ALTER TABLE `asset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `csvimport_entity`
--
ALTER TABLE `csvimport_entity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT pour la table `csvimport_import`
--
ALTER TABLE `csvimport_import`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `job`
--
ALTER TABLE `job`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `property`
--
ALTER TABLE `property`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=218;

--
-- AUTO_INCREMENT pour la table `resource`
--
ALTER TABLE `resource`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT pour la table `resource_class`
--
ALTER TABLE `resource_class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT pour la table `resource_template`
--
ALTER TABLE `resource_template`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `resource_template_property`
--
ALTER TABLE `resource_template_property`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT pour la table `site`
--
ALTER TABLE `site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `site_block_attachment`
--
ALTER TABLE `site_block_attachment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `site_item_set`
--
ALTER TABLE `site_item_set`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `site_page`
--
ALTER TABLE `site_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `site_page_block`
--
ALTER TABLE `site_page_block`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `site_permission`
--
ALTER TABLE `site_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `value`
--
ALTER TABLE `value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- AUTO_INCREMENT pour la table `vocabulary`
--
ALTER TABLE `vocabulary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `api_key`
--
ALTER TABLE `api_key`
  ADD CONSTRAINT `FK_C912ED9D7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `asset`
--
ALTER TABLE `asset`
  ADD CONSTRAINT `FK_2AF5A5C7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `csvimport_entity`
--
ALTER TABLE `csvimport_entity`
  ADD CONSTRAINT `FK_84D382F4BE04EA9` FOREIGN KEY (`job_id`) REFERENCES `job` (`id`);

--
-- Contraintes pour la table `csvimport_import`
--
ALTER TABLE `csvimport_import`
  ADD CONSTRAINT `FK_17B508814C276F75` FOREIGN KEY (`undo_job_id`) REFERENCES `job` (`id`),
  ADD CONSTRAINT `FK_17B50881BE04EA9` FOREIGN KEY (`job_id`) REFERENCES `job` (`id`);

--
-- Contraintes pour la table `fulltext_search`
--
ALTER TABLE `fulltext_search`
  ADD CONSTRAINT `FK_AA31FE4A7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `item`
--
ALTER TABLE `item`
  ADD CONSTRAINT `FK_1F1B251EBF396750` FOREIGN KEY (`id`) REFERENCES `resource` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_1F1B251ECBE0B084` FOREIGN KEY (`primary_media_id`) REFERENCES `media` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `item_item_set`
--
ALTER TABLE `item_item_set`
  ADD CONSTRAINT `FK_6D0C9625126F525E` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_6D0C9625960278D7` FOREIGN KEY (`item_set_id`) REFERENCES `item_set` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `item_set`
--
ALTER TABLE `item_set`
  ADD CONSTRAINT `FK_1015EEEBF396750` FOREIGN KEY (`id`) REFERENCES `resource` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `item_site`
--
ALTER TABLE `item_site`
  ADD CONSTRAINT `FK_A1734D1F126F525E` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_A1734D1FF6BD1646` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `job`
--
ALTER TABLE `job`
  ADD CONSTRAINT `FK_FBD8E0F87E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `media`
--
ALTER TABLE `media`
  ADD CONSTRAINT `FK_6A2CA10C126F525E` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`),
  ADD CONSTRAINT `FK_6A2CA10CBF396750` FOREIGN KEY (`id`) REFERENCES `resource` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `password_creation`
--
ALTER TABLE `password_creation`
  ADD CONSTRAINT `FK_C77917B4A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `property`
--
ALTER TABLE `property`
  ADD CONSTRAINT `FK_8BF21CDE7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_8BF21CDEAD0E05F6` FOREIGN KEY (`vocabulary_id`) REFERENCES `vocabulary` (`id`);

--
-- Contraintes pour la table `resource`
--
ALTER TABLE `resource`
  ADD CONSTRAINT `FK_BC91F41616131EA` FOREIGN KEY (`resource_template_id`) REFERENCES `resource_template` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_BC91F416448CC1BD` FOREIGN KEY (`resource_class_id`) REFERENCES `resource_class` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_BC91F4167E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_BC91F416FDFF2E92` FOREIGN KEY (`thumbnail_id`) REFERENCES `asset` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `resource_class`
--
ALTER TABLE `resource_class`
  ADD CONSTRAINT `FK_C6F063AD7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_C6F063ADAD0E05F6` FOREIGN KEY (`vocabulary_id`) REFERENCES `vocabulary` (`id`);

--
-- Contraintes pour la table `resource_template`
--
ALTER TABLE `resource_template`
  ADD CONSTRAINT `FK_39ECD52E448CC1BD` FOREIGN KEY (`resource_class_id`) REFERENCES `resource_class` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_39ECD52E724734A3` FOREIGN KEY (`title_property_id`) REFERENCES `property` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_39ECD52E7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_39ECD52EB84E0D1D` FOREIGN KEY (`description_property_id`) REFERENCES `property` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `resource_template_property`
--
ALTER TABLE `resource_template_property`
  ADD CONSTRAINT `FK_4689E2F116131EA` FOREIGN KEY (`resource_template_id`) REFERENCES `resource_template` (`id`),
  ADD CONSTRAINT `FK_4689E2F1549213EC` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `site`
--
ALTER TABLE `site`
  ADD CONSTRAINT `FK_694309E4571EDDA` FOREIGN KEY (`homepage_id`) REFERENCES `site_page` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_694309E47E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_694309E4FDFF2E92` FOREIGN KEY (`thumbnail_id`) REFERENCES `asset` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `site_block_attachment`
--
ALTER TABLE `site_block_attachment`
  ADD CONSTRAINT `FK_236473FE126F525E` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_236473FEE9ED820C` FOREIGN KEY (`block_id`) REFERENCES `site_page_block` (`id`),
  ADD CONSTRAINT `FK_236473FEEA9FDD75` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `site_item_set`
--
ALTER TABLE `site_item_set`
  ADD CONSTRAINT `FK_D4CE134960278D7` FOREIGN KEY (`item_set_id`) REFERENCES `item_set` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_D4CE134F6BD1646` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `site_page`
--
ALTER TABLE `site_page`
  ADD CONSTRAINT `FK_2F900BD9F6BD1646` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`);

--
-- Contraintes pour la table `site_page_block`
--
ALTER TABLE `site_page_block`
  ADD CONSTRAINT `FK_C593E731C4663E4` FOREIGN KEY (`page_id`) REFERENCES `site_page` (`id`);

--
-- Contraintes pour la table `site_permission`
--
ALTER TABLE `site_permission`
  ADD CONSTRAINT `FK_C0401D6FA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_C0401D6FF6BD1646` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `site_setting`
--
ALTER TABLE `site_setting`
  ADD CONSTRAINT `FK_64D05A53F6BD1646` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `user_setting`
--
ALTER TABLE `user_setting`
  ADD CONSTRAINT `FK_C779A692A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `value`
--
ALTER TABLE `value`
  ADD CONSTRAINT `FK_1D7758344BC72506` FOREIGN KEY (`value_resource_id`) REFERENCES `resource` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_1D775834549213EC` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_1D77583489329D25` FOREIGN KEY (`resource_id`) REFERENCES `resource` (`id`),
  ADD CONSTRAINT `FK_1D7758349B66727E` FOREIGN KEY (`value_annotation_id`) REFERENCES `value_annotation` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `value_annotation`
--
ALTER TABLE `value_annotation`
  ADD CONSTRAINT `FK_C03BA4EBF396750` FOREIGN KEY (`id`) REFERENCES `resource` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `vocabulary`
--
ALTER TABLE `vocabulary`
  ADD CONSTRAINT `FK_9099C97B7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
