-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 27 mai 2024 à 08:35
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
-- Déchargement des données de la table `musique`
--

INSERT INTO `musique` (`id`, `titre`, `artiste`, `album`, `genre`, `duration`, `lienFichier`, `OrdreAlbum`, `NbLecture`) VALUES
(1, 'Waterfalls (4am Mix)', 1, 21, 5, '7:49', 'assets/music/house90/Waterfalls (4am Mix).mp3', 1, 9),
(2, 'Come Back to Me (Lisa Marie Experience Mix)', 2, 21, 5, '6:56', 'assets/music/house90/Come Back to Me (Lisa Marie Experience Mix).mp3', 1, 1),
(3, 'I Feel You (N.Y.Mix)', 3, 21, 5, '4:45', 'assets/music/house90/I Feel You (N.Y.Mix).mp3', 1, 2),
(4, 'You Cant Turn Around (Original Mix)', 4, 21, 5, '5:11', 'assets/music/house90/You Cant Turn Around (Original Mix).mp3', 1, 1),
(5, 'Just Cant Stop', 5, 21, 5, '4:14', 'assets/music/house90/Just Cant Stop.mp3', 1, 10),
(6, 'A Deeper Love: A Deeper Feeling Mix', 6, 21, 5, '5:21', 'assets/music/house90/A Deeper Love A Deeper Feeling Mix.mp3', 1, 3),
(7, 'Optimum Thinking 1999', 7, 4, 5, '4:49', 'assets/music/house90/Optimum Thinking 1999.mp3', 1, 0),
(8, 'Alone Flute House', 8, 4, 5, '6:10', 'assets/music/house90/Alone Flute House.mp3', 2, 7),
(9, 'The Legend Global Version', 9, 4, 5, '6:49', 'assets/music/house90/The Legend Global Version.mp3', 3, 0),
(10, 'Going Nowhere Bass Team mix by Alex Neri & Marco Baroni', 10, 21, 5, '7:11', 'assets/music/house90/Going Nowhere Bass Team mix by Alex Neri & Marco Baroni.mp3', 1, 4),
(11, 'Detroitism', 11, 21, 5, '4:23', 'assets/music/house90/Detroitism.mp3', 1, 2),
(12, 'Happy Trax 5 D-HA', 12, 5, 5, '6:32', 'assets/music/house90/Happy Trax 5.mp3', 1, 14),
(13, 'Good Life', 13, 16, 5, '9:58', 'assets/music/house90/Good Life.mp3', 1, 5),
(14, 'U Dont Have To Say U Love Me 1994', 15, 21, 5, '5:55', 'assets/music/house90/U Dont Have To Say U Love Me 1994.mp3', 1, 6),
(15, 'Move Your Body To The Sound Club Mix', 16, 21, 5, '6:10', 'assets/music/house90/Move Your Body To The Sound Club Mix.mp3', 1, 6),
(16, 'Keep On Piano Groove', 17, 21, 5, '4:10', 'assets/music/house90/Keep On Piano Groove.mp3', 1, 11),
(17, 'Dance Version', 18, 21, 5, '3:59', 'assets/music/house90/Dance Version.mp3', 1, 3),
(18, 'Onirico', 19, 12, 5, '5:11', 'assets/music/house90/Onirico.mp3', 1, 5),
(19, 'Stolen moments', 19, 12, 5, '5:05', 'assets/music/house90/Stolen Moments.mp3', 2, 3),
(20, 'Benvenuti In Paradiso', 14, 13, 5, '1:44', 'assets/music/Benvenuti In Paradiso.mp3', 1, 9),
(21, 'Buona Notte', 14, 13, 5, '2:40', 'assets/music/Buona Notte.mp3', 2, 3),
(22, 'Cammina Con Me (Gli Alberi Di Susa)', 14, 13, 5, '6:10', 'assets/music/Iceferno/Streets Of Paradise/Cammina Con Me (Gli Alberi Di Susa).mp3', 3, 1),
(23, 'Di Notte', 14, 13, 5, '5:42', 'assets/music/Di Notte.mp3', 4, 1),
(24, 'Finalmente Addormentato', 14, 13, 5, '7:00', 'assets/music/Iceferno/Streets Of Paradise/Finalmente Addormentato.mp3', 5, 1),
(25, 'Linate Aeroporto M4', 14, 13, 5, '6:51', 'assets/music/Iceferno/Streets Of Paradise/Linate Aeroporto M4.mp3', 6, 3),
(26, 'Navigli', 14, 13, 5, '5:51', 'assets/music/Navigli.mp3', 7, 7),
(27, 'Passaggio Verso La Città', 14, 13, 5, '4:40', 'assets/music/Iceferno/Streets Of Paradise/Passaggio Verso La Città.mp3', 8, 1),
(28, 'Percorsi Poco Chiari', 14, 13, 5, '6:21', 'assets/music/Iceferno/Streets Of Paradise/Percorsi Poco Chiari.mp3', 9, 2),
(29, 'Sole Basso.mp3', 14, 13, 5, '7:45', 'assets/music/Iceferno/Streets Of Paradise/Sole Basso.mp3', 10, 0),
(30, 'Sondrio M3 _ Signora Tramonto', 14, 13, 5, '10:50', 'assets/music/Iceferno/Streets Of Paradise/Sondrio M3 _ Signora Tramonto.mp3', 11, 3),
(31, 'Tunnel Verde', 14, 13, 5, '6:01', 'assets/music/Iceferno/Streets Of Paradise/Tunnel Verde.mp3', 12, 5),
(32, 'Una Serata In Stazione Centrale', 14, 13, 5, '10:10', 'assets/music/Iceferno/Streets Of Paradise/Una Serata In Stazione Centrale.mp3', 13, 1),
(33, 'Viola', 14, 13, 5, '8:25', 'assets/music/Iceferno/Streets Of Paradise/Viola.mp3', 14, 1),
(34, 'Yellow Silhouette (Milano Version).mp', 14, 13, 5, '9:35', 'assets/music/Iceferno/Streets Of Paradise/Yellow Silhouette.mp3', 15, 2),
(35, 'Arabesque Pullum Purna', 21, 7, 17, '3:37', 'assets/music/sfexa/Arabesque Pullum Purna.mp3', 1, 3),
(36, 'Cold Pipe', 21, 7, 17, '3:32', 'assets/music/sfexa/Cold Pipe.mp3', 2, 0),
(37, 'Continue', 21, 7, 17, '1:20', 'assets/music/sfexa/Continue.mp3', 3, 0),
(38, 'Ending', 21, 7, 17, '2:20', 'assets/music/sfexa/Ending.mp3', 4, 0),
(39, 'Future Objects Cycloid', 21, 7, 17, '3:39', 'assets/music/sfexa/Future Objects Cycloid.mp3', 5, 0),
(40, 'Garnet Sky Jack & Blaire', 21, 7, 17, '3:21', 'assets/music/sfexa/Garnet Sky Jack & Blaire.mp3', 6, 0),
(41, 'God Hands Akuma', 21, 7, 17, '3:32', 'assets/music/sfexa/God Hands Akuma.mp3', 7, 0),
(42, 'Heat Wind Dhalsim', 21, 7, 17, '3:09', 'assets/music/sfexa/Heat Wind Dhalsim.mp3', 8, 0),
(43, 'Irreconcilably M. Bison', 21, 7, 17, '3:05', 'assets/music/sfexa/Irreconcilably M. Bison.mp3', 9, 0),
(44, 'Light Guardian Ken', 21, 7, 17, '3:26', 'assets/music/sfexa/Light Guardian Ken.mp3', 10, 0),
(45, 'Player Select', 21, 7, 17, '2:50', 'assets/music/sfexa/Player Select.mp3', 11, 0),
(46, 'Precious Heart Sakura', 21, 7, 17, '3:06', 'assets/music/sfexa/Precious Heart Sakura.mp3', 12, 0),
(47, 'Result', 21, 7, 17, '2:10', 'assets/music/sfexa/Result.mp3', 13, 0),
(48, 'Rising Dragoon Ryu', 21, 7, 17, '3:20', 'assets/music/sfexa/Rising Dragoon Ryu.mp3', 14, 0),
(49, 'Sakura Mankai Hokuto & Kairi', 21, 7, 17, '3:26', 'assets/music/sfexa/Sakura Mankai Hokuto & Kairi.mp3', 15, 2),
(50, 'Spinning Bird Chun-Li', 21, 7, 17, '3:11', 'assets/music/sfexa/Spinning Bird Chun-Li.mp3', 16, 1),
(51, 'Strange Sunset Guile', 21, 7, 17, '3:11', 'assets/music/sfexa/Strange Sunset Guile.mp3', 17, 2),
(52, 'Stronger', 21, 7, 17, '2:59', 'assets/music/sfexa/Stronger.mp3', 18, 2),
(53, 'Under Tube D. Dark', 21, 7, 17, '3:05', 'assets/music/sfexa/Under Tube D. Dark.mp3', 19, 0),
(54, 'C’est beau la bourgeoisie', 26, 15, 4, '4:10', 'assets\music\frenchelectro\1.mp3', 1, 0),
(55, 'Birthday Song (Parisian Vision)', 27, 15, 4, '6:11', 'assets\music\frenchelectro\2.mp3', 2, 0),
(56, 'Move Your Feet (Parisian Vision)', 27, 15, 4, '4:32', 'assets\music\frenchelectro\3.mp3', 3, 0),
(57, 'BeatCrush (Long Version)', 28, 15, 4, '3:56', 'assets\music\frenchelectro\4.mp3', 4, 0),
(58, 'France', 28, 15, 4, '3:33', 'assets\music\frenchelectro\5.mp3', 5, 0),
(59, 'Nightcall (Drive Original Movie)', 29, 15, 4, '4:01', 'assets\music\frenchelectro\6.mp3', 6, 0),
(60, 'Pacific Coast Highway (Official)', 29, 15, 4, '4:17', 'assets\music\frenchelectro\7.mp3', 7, 0),
(61, 'Roadgame (Official Audio)', 29, 15, 4, '3:58', 'assets\music\frenchelectro\8.mp3', 8, 0),
(62, 'VANILLE FRAISE', 30, 15, 4, '3:31', 'assets\music\frenchelectro\9.mp3', 9, 0),
(63, 'Nonsense (Official Video)', 31, 15, 4, '3:56', 'assets\music\frenchelectro\10.mp3', 10, 0),
(64, 'The City (Official Video)', 31, 15, 4, '2:57', 'assets\music\frenchelectro\11.mp3', 11, 0),
(65, 'Save Me (feat. Alden Jacob)', 32, 15, 4, '3:34', 'assets\music\frenchelectro\12.mp3', 12, 0),
(66, 'Save Me (Live Session)', 32, 15, 4, '4:23', 'assets\music\frenchelectro\13.mp3', 13, 0),
(67, 'Rock To The Beat (Rock The House Mix)', 20, 5, 5, '5:10', 'assets/music/oxy/Oxy - Rock To The Beat.mp3', 1, 0),
(68, 'sensual motion', 20, 5, 5, '6:45', 'assets/music/oxy/Oxy - sensual motion.mp3', 2, 0),
(69, 'The Feeling (Original Instrumental Mix)', 20, 5, 5, '4:38', 'assets/music/oxy/Oxy - The Feeling.mp3', 3, 0),
(70, 'Agenda - Heaven 1999', 25, 6, 12, '7:22', 'assets/music/retrospect/1.mp3', 1, 0),
(71, 'Drifting Away (Lange Sunset Mix)', 25, 6, 12, '5:30', 'assets\\music\\retrospect\\2.mp3', 2, 0),
(72, 'Lange - Angel Falls [Official]', 25, 6, 12, '3:48', 'assets\\music\\retrospect\\3.mp3', 3, 0),
(73, 'Lange - Hold That Sucker Down (Original Mix)', 25, 6, 12, '5:56', 'assets\\music\\retrospect\\4.mp3', 4, 0),
(74, 'Lange - Sci Fi Hero (Original Mix)', 25, 6, 12, '3:35', 'assets\\music\\retrospect\\5.mp3', 5, 0),
(75, 'Our Way Home (Album Mix)', 25, 6, 12, '4:23', 'assets\\music\\retrospect\\6.mp3', 6, 0),
(76, 'Fireflies (Original Mix)', 25, 6, 12, '4:11', 'assets\\music\\retrospect\\7.mp3', 7, 0),
(77, 'Follow Me (Lange Dub Mix)', 25, 6, 12, '3:46', 'assets\\music\\retrospect\\8.mp3', 8, 0),
(78, 'Strong Believer', 25, 6, 12, '4:38', 'assets\\music\\retrospect\\9.mp3', 9, 0),
(79, 'Hold Me In Your Arms', 22, 14, 14, '3:50', 'assets\\music\\whenever\\hold_me_in_your_arms.mp3', 1, 0),
(80, 'Hopelessly', 22, 14, 14, '3:45', 'assets\\music\\whenever\\hopelessly.mp3', 2, 0),
(81, 'Never Gonna Give You Up', 22, 14, 14, '3:24', 'assets\\music\\whenever\\never_gonna_give_you_up.mp3', 3, 0),
(82, 'Cry for Help', 22, 14, 14, '3:23', 'assets\\music\\whenever\\cry_for_help.mp3', 4, 0),
(83, 'Dont Say Goodbye', 22, 14, 14, '2:59', 'assets\\music\\whenever\\dont_say_goodbye.mp3', 5, 0),
(84, 'Giving Up On Love', 22, 14, 14, '3:07', 'assets\\music\\whenever\\giving_up_on_love.mp3', 6, 0),
(85, 'No More Looking for Love', 22, 14, 14, '3:45', 'assets\\music\\whenever\\no_more_looking_for_love.mp3', 7, 0),
(86, 'She Wants To Dance With Me', 22, 14, 14, '3:27', 'assets\\music\\whenever\\she_wants_to_dance_with_me.mp3', 8, 0),
(87, 'Slipping Away', 22, 14, 14, '3:33', 'assets\\music\\whenever\\slipping_away.mp3', 9, 0),
(88, 'Take Me to Your Heart', 22, 14, 14, '2:56', 'assets\\music\\whenever\\take_me_to_your_heart.mp3', 10, 0),
(89, 'Together Forever', 22, 14, 14, '3:23', 'assets\\music\\whenever\\together_forever.mp3', 11, 0),
(90, 'When I Fall in Love', 22, 14, 14, '3:11', 'assets\\music\\whenever\\when_i_fall_in_love.mp3', 12, 0),
(91, 'Whenever You Need Somebody', 22, 14, 14, '4:10', 'assets\\music\\whenever\\whenever_you_need_somebody.mp3', 13, 0),
(92, 'You Move Me', 22, 14, 14, '3:56', 'assets\\music\\whenever\\you_move_me.mp3', 14, 0),
(93, 'SOR4 x Pakito Tech', 34, 17, 7, '2:55', 'assets\\music\\mashup\\SOR4xtechno.mp3', 1, 0),
(94, 'The Warth Begins', 14, 9, 17, '1:33', 'assets\\music\\Iceferno\\sow1\\1.mp3', 1, 0),
(95, 'Who will save the day?', 14, 9, 17, '0:55', 'assets\\music\\Iceferno\\sow1\\2.mp3', 2, 0),
(96, 'The Return Intro', 14, 10, 17, '1:33', 'assets\\music\\Iceferno\\sow2\\01.mp3', 1, 0),
(97, 'Player select groove', 14, 10, 17, '0:57', 'assets\\music\\Iceferno\\sow2\\02.mp3', 2, 0),
(98, 'Avenue of violence', 14, 10, 17, '5:00', 'assets\\music\\Iceferno\\sow2\\03.mp3', 3, 0),
(99, 'Happy park', 14, 10, 17, '2:40', 'assets\\music\\Iceferno\\sow2\\04.mp3', 4, 0),
(100, 'Serious wave', 14, 10, 17, '4:13', 'assets\\music\\Iceferno\\sow2\\05.mp3', 5, 0),
(101, 'At the new bar', 14, 10, 17, '3:40', 'assets\\music\\Iceferno\\sow2\\06.mp3', 6, 0),
(102, 'Speed highway train', 14, 10, 17, '4:15', 'assets\\music\\Iceferno\\sow2\\07.mp3', 7, 0),
(103, 'Behold the boss', 14, 10, 17, '3:14', 'assets\\music\\Iceferno\\sow2\\boss1.mp3', 8, 0),
(104, 'Imprevious', 36, 18, 9, '2:10', 'assets\\music\\Phonk\\Imprevious.mp3', 1, 0),
(105, 'Mind control', 36, 18, 9, '2:29', 'assets\\music\\Phonk\\Mind Control.mp3', 2, 0),
(106, 'The machine', 14, 11, 17, '1:15', 'assets\\music\\Iceferno\\sow3\\01.mp3', 1, 0),
(107, 'Past memory', 14, 11, 17, '3:39', 'assets\\music\\Iceferno\\sow3\\02.mp3', 2, 0),
(108, 'Calamity wave', 14, 11, 17, '5:11', 'assets\\music\\Iceferno\\sow3\\03.mp3', 3, 0),
(109, 'New Cycle after battle', 14, 11, 17, '4:10', 'assets\\music\\Iceferno\\sow3\\04.mp3', 4, 0),
(110, 'Wather Route', 14, 11, 17, '3:50', 'assets\\music\\Iceferno\\sow3\\05.mp3', 5, 0),
(111, 'The M.E.L.L.O.', 24, 1, 8, '4:46', 'assets\\music\\advance\\The M.E.L.L.O..mp3', 1, 0),
(112, 'The Musics Got Me', 0, 24, 8, '4:01', 'assets\\music\\advance\\The Musics Got Me.mp3', 2, 0),
(113, 'Touch Me (Factory Dub Mix)', 0, 24, 8, '4:17', 'assets\\music\\advance\\Touch Me (Factory Dub Mix).mp3', 3, 0),
(114, 'Touch Me', 0, 24, 8, '4:10', 'assets\\music\\advance\\Touch Me.mp3', 4, 0),
(115, 'Breaking News', 23, 2, 3, '2:14', 'assets/music/Lulucas/Breaking News.mp3', 1, 0),
(116, 'Good Day', 23, 2, 3, '3:03', 'assets/music/Lulucas/Good Day.mp3', 2, 0),
(117, 'Happy Day', 23, 2, 3, '3:11', 'assets/music/Lulucas/Happy Day.mp3', 3, 0),
(118, 'Hear This', 23, 2, 3, '2:56', 'assets/music/Lulucas/Hear This.mp3', 4, 0),
(119, 'Hope All Is Well', 23, 2, 3, '258', 'assets/music/Lulucas/Hope All Is Well.mp3', 5, 0),
(120, 'Imagination', 23, 2, 3, '269', 'assets/music/Lulucas/Imagination.mp3', 6, 0),
(121, 'Incident Scene', 23, 2, 3, '3:21', 'assets/music/Lulucas/Incident Scene.mp3', 7, 0),
(122, 'Lake Annecy', 23, 2, 3, '3:25', 'assets/music/Lulucas/Lake Annecy.mp3', 8, 0),
(123, 'Last Summer', 23, 2, 3, '3:45', 'assets/music/Lulucas/Last Summer.mp3', 9, 0),
(124, 'Lovely Day', 23, 2, 3, '3:03', 'assets/music/Lulucas/Lovely Day.mp3', 10, 0),
(125, 'Peace Of Mind', 23, 2, 3, '3:14', 'assets/music/Lulucas/Peace Of Mind.mp3', 11, 0),
(126, 'Summer', 23, 2, 3, '3:29', 'assets/music/Lulucas/Summer.mp3', 12, 0),
(127, 'The Internet', 23, 2, 3, '3:36', 'assets/music/Lulucas/The Internet.mp3', 13, 0),
(128, 'The Red Chariot', 37, 19, 10, '3:10', 'assets\\music\\rock\\1.mp3', 1, 0),
(129, 'Path', 37, 19, 10, '3:20', 'assets\\music\\rock\\2.mp3', 2, 0),
(130, 'A Timeless Oracle', 37, 19, 10, '3:01', 'assetsmusic\rock3.mp3', 3, 0),
(131, 'Illuminated By Reflection', 37, 19, 10, '2:01', 'assetsmusic\rock4.mp3', 4, 0),
(132, 'Submerged Towers', 37, 19, 10, '1:59', 'assetsmusic\rock5.mp3', 5, 0),
(133, 'Electrical Civilization', 37, 19, 10, '2:34', 'assetsmusic\rock6.mp3', 6, 0),
(134, 'Augury', 37, 19, 10, '2:50', 'assetsmusic\rock7.mp3', 7, 0),
(135, 'In The Sight Of The Mount...', 37, 19, 10, '2:34', 'assetsmusic\rock8.mp3', 8, 0),
(136, 'Jasmine', 38, 20, 6, '2:00', 'assets\\music\\Jazz\\1.mp3', 1, 0),
(137, 'Mariposa Lily', 38, 20, 6, '2:49', 'assets\\music\\Jazz\\2.mp3', 2, 0),
(138, 'Antonio\'s Theme', 38, 20, 6, '2:02', 'assets\\music\\Jazz\\3.mp3', 3, 0),
(139, 'Coastal Drive', 38, 20, 6, '0', 'assets\\music\\Jazz\\4.mp3', 4, 0),
(140, 'Lost In Nostalgia', 38, 20, 6, '3:10', 'assets\\music\\Jazz5.mp3', 5, 0),
(141, 'Nightshade (Introduction)', 38, 20, 6, '2:30', 'assets\\music\\Jazz\\6.mp3', 6, 0),
(142, 'Nightshade (Echo Flute )', 38, 20, 6, '3:20', 'assets\\music\\Jazz\\7.mp3', 7, 0),
(143, 'Nightshade (Main Theme)', 38, 20, 6, '2:10', 'assets\\music\\Jazz\\8.mp3', 8, 0),
(144, 'Nightshade (Solo Strings)', 38, 20, 6, '2:40', 'assets\\music\\Jazz\\9.mp3', 9, 0),
(145, 'Nightshade (Pizzicato Strike)', 38, 20, 6, '2:48', 'assets\\music\\Jazz\\10.mp3', 10, 0),
(146, 'Nightshade (Multi-Tracker)', 38, 20, 6, '2:23', 'assets\\music\\Jazz\\11.mp3', 11, 0),
(147, 'Main Theme (Reprise)', 38, 20, 6, '3:10', 'assets\\music\\Jazz\\12.mp3', 12, 0),
(148, 'Je te survivrai', 40, 22, 2, '4:01', 'assets\music\ChansonFR\Je te survivrai.mp3', 1, 0),
(149, 'Capitaine abandonne', 40, 22, 2, '3:45', 'assets\music\ChansonFR\Capitaine abandonn�.mp3', 2, 0),
(150, 'The Source Experience - Elektra (1993)', 33, 8, 12, '8:10', 'assets\\music\\sourceEx\\The Source Experience - Elektra (1993).mp3', 1, 0),
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
