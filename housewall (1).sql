-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 27 mai 2024 à 09:15
-- Version du serveur : 8.0.31
-- Version de PHP : 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `housewall`
--

-- --------------------------------------------------------

--
-- Structure de la table `albums`
--

DROP TABLE IF EXISTS `albums`;
CREATE TABLE IF NOT EXISTS `albums` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titre` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `artiste` int NOT NULL,
  `genre` int NOT NULL,
  `artAlbum` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `albums`
--

INSERT INTO `albums` (`id`, `titre`, `artiste`, `genre`, `artAlbum`) VALUES
(1, 'Advance', 24, 8, 'assets/images/Art_albums/Advance.png'),
(2, 'Beyond Space', 23, 14, 'assets/images/Art_albums/Beyondspace.png'),
(3, 'David Bowie', 35, 10, 'assets/images/Art_albums/davidbowie.png'),
(4, 'The Legend', 9, 5, 'assets/images/Art_albums/FuserBeat.png'),
(5, 'Oxy Music', 20, 5, 'assets/images/Art_albums/oxy.png'),
(6, 'Retrospect', 25, 12, 'assets/images/Art_albums/Retrospect.png'),
(7, 'SF Explus a', 21, 17, 'assets/images/Art_albums/SF_Explus_a.png'),
(8, 'Source Experience', 33, 12, 'assets/images/Art_albums/SourceExperience.png'),
(9, 'Streets of Wrath 1', 14, 17, 'assets/images/Art_albums/sow1 iceferno.png'),
(10, 'Streets of Wrath 2', 14, 17, 'assets/images/Art_albums/sow2 iceferno.png'),
(11, 'Streets of Wrath 3', 14, 17, 'assets/images/Art_albums/sow3 iceferno.png'),
(12, 'stolen moments', 19, 5, 'assets/images/Art_albums/stolen-moments.png'),
(13, 'Streets of Paradise', 14, 5, 'assets/images/Art_albums/streets.jpg'),
(14, 'Whenever', 22, 16, 'assets/images/Art_albums/Whenever.png'),
(15, 'French electro', 26, 4, 'assets/images/Art_albums/french_electro.jpg'),
(16, 'Paradise - 1989', 13, 5, 'assets/images/Art_albums/inner city.jpg\r\n'),
(17, 'MashUp Mix (2023)', 34, 7, 'assets\\images\\Art_albums\\mashup.jpg'),
(18, 'Phonk compilation', 36, 9, 'assets\\images\\Art_albums\\phonk.jpg'),
(19, 'The red charriot', 37, 10, 'assets\\images\\art_albums\\red.png'),
(20, 'Nightshade', 38, 6, 'assets\\images\\Art_albums\\night.png'),
(21, 'House mix 95', 11, 5, 'assets\\images\\Art_albums\\house.png'),
(22, 'Chansons FR', 40, 2, 'assets\\images\\Art_albums\\chansonFR.jpg');
-- --------------------------------------------------------

--
-- Structure de la table `artists`
--

DROP TABLE IF EXISTS `artists`;
CREATE TABLE IF NOT EXISTS `artists` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nomA` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `img_artiste` varchar(100) NOT NULL,
  `pays_origine` varchar(20) NOT NULL,
  `bio` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `artists`
--

INSERT INTO `artists` (`id`, `nomA`, `img_artiste`, `pays_origine`, `bio`) VALUES
(1, 'After Hours', 'assets/images/artiste/AFTERHOURS.jpg', 'Italie', 'Afterhours est un groupe italien de house alternatif, originaire de Milan. Avec Marlene Kuntz, ils sont consid�r�s comme les porte-drapeaux du house alternatif italien.'),
(2, 'Angelheart', '0', '', ''),
(3, 'Blackwood', '0', '', ''),
(4, 'Bottom Dollar', '0', '', ''),
(5, 'C.V.O.', '0', '', ''),
(6, 'Civilles & Cole', '0', '', ''),
(7, 'Di Q', '0', '', ''),
(8, 'Don Carlos', 'assets\\images\\artiste\\DonCarlos.jpg', 'Italie', 'DJ et producteur house/deep house italien basé à Varese, Italie du Nord. Actif depuis la fin des années 70. Ses productions mélangent des rythmes house avec des sonorités de jazz afro-américain, frisant parfois le disco.'),
(9, 'Fuser Beat', '0', '', ''),
(10, 'Gabrielle', '0', '', ''),
(11, 'Glenn Underground', '0', '', ''),
(12, 'Happy Trax', '0', '', ''),
(13, 'Inner City', '0', '', ''),
(14, 'Iceferno', 'assets/images/artiste/iceferno.jpg', '', ''),
(15, 'Mash!', '0', '', ''),
(16, 'MARSHALL JEFFERSON', '0', '', ''),
(17, 'Mr. Monday', '0', '', ''),
(18, 'Magoria', '0', '', ''),
(19, 'Onirico', '0', '', ''),
(20, 'OXY', 'assets/images/artiste/oxy.png', '', ''),
(21, 'Capcom', 'assets/images/artiste/capcom.png', 'Japon', ''),
(22, 'Rick Ashley', 'assets/images/artiste/rick_ashley.png', 'USA', ''),
(23, 'Lulucas', 'assets/images/artsites/lulucas.jpg', 'Belgique', ''),
(24, 'Bass bumpers', 'assets/images/artiste/bassbumper.png', 'USA (Est)', ''),
(25, 'Lange', 'assets/images/artiste/lange.jpg', 'Angleterre', ''),
(26, 'Discobitch', '', 'France', 'Discobitch est un duo de musique électronique français composé de Thierry Scheffer et de Kris Menace. Leur single C est beau la bourgeoisie a connu un grand succès en 2008.'),
(27, 'DJ Snake', '', 'France', 'DJ Snake, de son vrai nom William Grigahcine, est un DJ et producteur français né le 13 juin 1986 à Paris. Il a connu un grand succès avec des titres tels que - Bird Machine, - Turn Down for What et - Lean On.'),
(28, 'Étienne de Crécy', '', 'France', 'Étienne de Crécy est un DJ et producteur français de musique électronique, né le 19 février 1969 à Lyon. Il a commencé sa carrière dans les années 1990 et a depuis sorti plusieurs albums et singles à succès.'),
(29, 'Kavinsky', '', 'France', 'Kavinsky, de son vrai nom Vincent Belorgey, est un DJ et producteur français de musique électronique, né le 31 juillet 1975 à Paris. Il s\'est fait connaître avec son album - OutRun sorti en 2013.'),
(30, 'L’Impératrice', '', 'France', 'L’Impératrice est un groupe de musique électronique français formé en 2012. Leur musique mélange des influences disco, funk et pop.'),
(31, 'Madeon', '', 'France', 'Madeon, de son vrai nom Hugo Leclercq, est un DJ et producteur français de musique électronique, né le 30 mai 1994 à Nantes. Il s\'est fait connaître avec son remix de - The Island de Pendulum et son single - Pop Culture.'),
(32, 'The Parakit', '', 'France', 'The Parakit est un duo de musique électronique français composé de Maxime et Thibault. Ils se sont fait connaître avec leur single Save Me sorti en 2019.'),
(33, 'Robert Leiner', 'assets\\images\\artiste\\Robert.png', 'Suède', 'L\'un des meilleurs producteurs suédois. Un vrai renégat de la techno. Vous tous, amoureux de Goa et de psy, voici votre droit de naissance. Les genres auraient dû s\'arrêter là car personne n\'a jamais pu surpasser Robert en science-fiction techno/trance.'),
(34, 'Joxazy', 'assets/images/artiste/joxa.png', 'France', 'Jeune remixeur de 21ans, à éditer quelques morceaux. '),
(35, 'David Bowie', 'assets/images/artiste/David-bowie.PNG', 'Angleterre', 'David Robert Jones, dit David Bowie, né le 8 janvier 1947 à Londres et mort le 10 janvier 2016 à New York, est un auteur-compositeur-interprète'),
(36, 'WERVE ', 'assets\\images\\artiste\\werve.png', 'Brazil', 'Jeune compositeur de Phonk, né en 1996 proche de Manaus. Aime les rythme energetique et puissants.'),
(37, 'Black sky giant', 'assets\\images\\artiste\\black.png', 'USA', 'Petit groupe de rock de 5 membres.'),
(38, 'Greg Foat', '', 'Amérique', 'Compositeur amateur de Jazz, et de soul jazz'),
(40, 'Chansons FR cultes', '', 'France', 'Groupe d Artistes qui ont marqu� la chanson fran�aise');

-- --------------------------------------------------------

--
-- Structure de la table `commentaire`
--

DROP TABLE IF EXISTS `commentaire`;
CREATE TABLE IF NOT EXISTS `commentaire` (
  `id` int NOT NULL AUTO_INCREMENT,
  `utilisateur_id` int NOT NULL,
  `NumPiste` int NOT NULL,
  `comTexte` text NOT NULL,
  `rating` int NOT NULL,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `utilisateur_id` (`utilisateur_id`),
  KEY `NumPiste` (`NumPiste`)
) ;

-- --------------------------------------------------------

--
-- Structure de la table `genres`
--

DROP TABLE IF EXISTS `genres`;
CREATE TABLE IF NOT EXISTS `genres` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `Nbr_musiques_disponibles` int DEFAULT NULL,
  `Image_genre` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `genres`
--

INSERT INTO `genres` (`id`, `nom`, `Nbr_musiques_disponibles`, `Image_genre`) VALUES
(1, 'Celtique', 9, 'img/image_celtique.jpg'),
(2, 'Chansons françaises', 2, 'img/image_chansons_francaises.jpg'),
(3, 'Drum & bass', 0, 'img/image_drum_and_bass.jpg'),
(4, 'French electro', 21, 'img/image_french_electro.jpg'),
(5, 'House 90s', 34, 'img/image_house_90s.jpg'),
(6, 'Jazz', 9, 'img/image_jazz.jpg'),
(7, 'Mash-Up', 2, 'img/image_mashup.jpg'),
(8, 'Old School 90s dance', 5, 'img/image_old_school_dance.jpg'),
(9, 'Phonk', 2, 'img/image_phonk.jpg'),
(10, 'Rock', 8, 'img/image_rock.jpg'),
(11, 'Soul', 6, 'img/image_soul.jpg'),
(12, 'Trance 2000s', 8, 'img/image_trance_2000s.jpg'),
(13, 'Eurobeat', NULL, 'img/image_eurobeat.jpg'),
(14, 'Pop', 14, 'img/image_Pop.jpg'),
(15, 'Blues', 1, 'img/image_blues.jpg'),
(16, 'Musique classique', 2, 'img/image_musique_classique.jpg'),
(17, 'OST', 30, 'img/OST logo.png');

-- --------------------------------------------------------

--
-- Structure de la table `musique`
--

DROP TABLE IF EXISTS `musique`;
CREATE TABLE IF NOT EXISTS `musique` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titre` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `artiste` int NOT NULL,
  `album` int NOT NULL,
  `genre` int NOT NULL,
  `duration` varchar(8) NOT NULL,
  `lienFichier` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `OrdreAlbum` int NOT NULL,
  `NbLecture` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=148 DEFAULT CHARSET=latin1;


--
-- Structure de la table `playlists`
--

DROP TABLE IF EXISTS `playlists`;
CREATE TABLE IF NOT EXISTS `playlists` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nomP` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `auteur` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `dateCreation` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `playlistsongs`
--

DROP TABLE IF EXISTS `playlistsongs`;
CREATE TABLE IF NOT EXISTS `playlistsongs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `MusiqueId` int NOT NULL,
  `playlistId` int NOT NULL,
  `playlistOrdre` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `updates`
--

DROP TABLE IF EXISTS `updates`;
CREATE TABLE IF NOT EXISTS `updates` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `artist` varchar(255) NOT NULL,
  `date_updated` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `updates`
--

INSERT INTO `updates` (`id`, `title`, `artist`, `date_updated`) VALUES
(1, 'Happy park', 'Iceferno', '2024-05-01'),
(2, 'Serious wave', 'Iceferno', '2024-05-02'),
(3, 'At the new bar', 'Iceferno', '2024-05-03'),
(4, 'Speed highway train', 'Iceferno', '2024-05-04'),
(5, 'Behold the boss', 'Iceferno', '2024-05-05'),
(6, 'Capitaine abandonn�', 'Gold', '2024-05-10');


-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nomU` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nom` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `prenom` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(32) NOT NULL,
  `DateIns` datetime NOT NULL,
  `profilePic` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `nomU`, `nom`, `prenom`, `email`, `password`, `DateIns`, `profilePic`) VALUES
(3, 'testoo', 'Joachim', 'Rome', 'Arcadejoxa@gmail.com', '2c39c6e4543a1a34ef08bb66d9f0d32c', '2024-04-27 00:00:00', 'assets/images/profile-pics/emerald.png'),
(4, 'Lu2o', 'Serra', 'Ludovic', 'Ludovic.serra@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '2024-04-28 00:00:00', 'assets/images/profile-pics/blitzoo.jpg'),
(5, 'Adminvip', 'Admin', 'Vip', 'Adminsql@gmail.com', '2814d6bba71ca06bfc88a3047f143ae3', '2024-05-26 00:00:00', 'assets/images/profile-pics/Fizzyfrog.png');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
