-- phpMyAdmin SQL Dump
-- version 4.1.14.8
-- http://www.phpmyadmin.net
--
-- Client :  db634054870.db.1and1.com
-- Généré le :  Mer 06 Juillet 2016 à 10:23
-- Version du serveur :  5.5.49-0+deb7u1-log
-- Version de PHP :  5.4.45-0+deb7u4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `db634054870`
--

-- --------------------------------------------------------

--
-- Structure de la table `wpCours_terms`
--

CREATE TABLE IF NOT EXISTS `wpCours_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=174 ;

--
-- Contenu de la table `wpCours_terms`
--

INSERT INTO IF NOT EXISTS `wpCours_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0),
(2, 'main-content-1', 'main-content-1', 0),
(94, 'content-04', 'content-04-page-03', 0),
(93, 'content-03', 'content-03-page-03', 0),
(92, 'content-02', 'content-02-page-03', 0),
(91, 'content-01', 'content-01-page-03', 0),
(90, 'thumbs-05', 'thumbs-05-page-02', 0),
(89, 'thumbs-04', 'thumbs-04-page-02', 0),
(100, 'thumbs-05', 'thumbs-05-page-03', 0),
(99, 'thumbs-04', 'thumbs-04-page-03', 0),
(98, 'thumbs-03', 'thumbs-03-page-03', 0),
(97, 'thumbs-02', 'thumbs-02-page-03', 0),
(96, 'thumbs-01', 'thumbs-01-page-03', 0),
(95, 'content-05', 'content-05-page-03', 0),
(88, 'thumbs-03', 'thumbs-03-page-02', 0),
(87, 'thumbs-02', 'thumbs-02-page-02', 0),
(86, 'thumbs-01', 'thumbs-01-page-02', 0),
(85, 'content-05', 'content-05-page-02', 0),
(84, 'content-04', 'content-04-page-02', 0),
(82, 'content-03', 'content-03-page-02', 0),
(81, 'content-02', 'content-02-page-02', 0),
(80, 'content-01', 'content-01-page-02', 0),
(79, 'thumbs-05', 'thumbs-05', 0),
(78, 'thumbs-04', 'thumbs-04', 0),
(77, 'thumbs-03', 'thumbs-03', 0),
(76, 'thumbs-02', 'thumbs-02', 0),
(75, 'thumbs-01', 'thumbs-01', 0),
(69, 'content-01', 'content-01', 0),
(53, 'angular-01', 'angular-01', 0),
(54, 'angular-02', 'angular-02', 0),
(55, 'angular-03', 'angular-03', 0),
(56, 'angular-04', 'angular-04', 0),
(57, 'angular-05', 'angular-05', 0),
(73, 'content-05', 'content-05', 0),
(72, 'content-04', 'content-04', 0),
(71, 'content-03', 'content-03', 0),
(70, 'content-02', 'content-02', 0),
(101, 'content-01', 'content-01-page-04', 0),
(102, 'content-02', 'content-02-page-04', 0),
(103, 'content-03', 'content-03-page-04', 0),
(104, 'content-04', 'content-04-page-04', 0),
(105, 'content-05', 'content-05-page-04', 0),
(106, 'thumbs-01', 'thumbs-01-page-04', 0),
(107, 'thumbs-02', 'thumbs-02-page-04', 0),
(108, 'thumbs-03', 'thumbs-03-page-04', 0),
(109, 'thumbs-04', 'thumbs-04-page-04', 0),
(110, 'thumbs-05', 'thumbs-05-page-04', 0),
(111, 'content-01', 'content-01-page-05', 0),
(112, 'content-02', 'content-02-page-05', 0),
(113, 'content-03', 'content-03-page-05', 0),
(114, 'content-04', 'content-04-page-05', 0),
(115, 'content-05', 'content-05-page-05', 0),
(116, 'thumbs-01', 'thumbs-01-page-05', 0),
(117, 'thumbs-02', 'thumbs-02-page-05', 0),
(118, 'thumbs-03', 'thumbs-03-page-05', 0),
(119, 'thumbs-04', 'thumbs-04-page-05', 0),
(120, 'thumbs-05', 'thumbs-05-page-05', 0),
(121, 'parallax-01', 'parallax-01', 0),
(122, 'parallax-02', 'parallax-02', 0),
(123, 'parallax-03', 'parallax-03', 0),
(124, 'parallax-04', 'parallax-04', 0),
(125, 'parallax-05', 'parallax-05', 0),
(126, 'parallax-01', 'parallax-01-angular-02', 0),
(127, 'parallax-02', 'parallax-02-angular-02', 0),
(128, 'parallax-03', 'parallax-03-angular-02', 0),
(129, 'parallax-04', 'parallax-04-angular-02', 0),
(130, 'parallax-05', 'parallax-05-angular-02', 0),
(131, 'parallax-01', 'parallax-01-angular-03', 0),
(132, 'parallax-02', 'parallax-02-angular-03', 0),
(133, 'parallax-03', 'parallax-03-angular-03', 0),
(134, 'parallax-04', 'parallax-04-angular-03', 0),
(135, 'parallax-05', 'parallax-05-angular-03', 0),
(136, 'parallax-01', 'parallax-01-angular-04', 0),
(137, 'parallax-02', 'parallax-02-angular-04', 0),
(138, 'parallax-03', 'parallax-03-angular-04', 0),
(139, 'parallax-04', 'parallax-04-angular-04', 0),
(140, 'parallax-05', 'parallax-05-angular-04', 0),
(141, 'parallax-01', 'parallax-01-angular-05', 0),
(142, 'parallax-02', 'parallax-02-angular-05', 0),
(143, 'parallax-03', 'parallax-03-angular-05', 0),
(144, 'parallax-04', 'parallax-04-angular-05', 0),
(145, 'parallax-05', 'parallax-05-angular-05', 0),
(146, 'modal-01', 'modal-01', 0),
(147, 'modal-02', 'modal-02', 0),
(148, 'modal-03', 'modal-03', 0),
(149, 'modal-01', 'modal-01-angular-02', 0),
(150, 'modal-02', 'modal-02-angular-02', 0),
(151, 'modal-03', 'modal-03-angular-02', 0),
(152, 'modal-01', 'modal-01-angular-03', 0),
(153, 'modal-02', 'modal-02-angular-03', 0),
(154, 'modal-03', 'modal-03-angular-03', 0),
(155, 'modal-01', 'modal-01-angular-04', 0),
(156, 'modal-02', 'modal-02-angular-04', 0),
(157, 'modal-03', 'modal-03-angular-04', 0),
(158, 'modal-01', 'modal-01-angular-05', 0),
(159, 'slider-01', 'slider-01', 0),
(160, 'slider-02', 'slider-02', 0),
(161, 'slider-03', 'slider-03', 0),
(162, 'slider-01', 'slider-01-angular-02', 0),
(163, 'slider-02', 'slider-02-angular-02', 0),
(164, 'slider-03', 'slider-03-angular-02', 0),
(165, 'slider-01', 'slider-01-angular-03', 0),
(166, 'slider-02', 'slider-02-angular-03', 0),
(167, 'slider-03', 'slider-03-angular-03', 0),
(168, 'slider-01', 'slider-01-angular-04', 0),
(169, 'slider-02', 'slider-02-angular-04', 0),
(170, 'slider-03', 'slider-03-angular-04', 0),
(171, 'slider-01', 'slider-01-angular-05', 0),
(172, 'slider-02', 'slider-02-angular-05', 0),
(173, 'slider-03', 'slider-03-angular-05', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
