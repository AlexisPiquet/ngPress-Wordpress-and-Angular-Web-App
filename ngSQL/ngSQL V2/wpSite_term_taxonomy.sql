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
-- Structure de la table `wpCours_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wpCours_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=174 ;

--
-- Contenu de la table `wpCours_term_taxonomy`
--

INSERT INTO IF NOT EXISTS `wpCours_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(96, 96, 'category', 'thumbs-01', 55, 0),
(92, 92, 'category', 'content-02', 55, 0),
(91, 91, 'category', 'content-01', 55, 0),
(90, 90, 'category', 'thumbs-05', 54, 0),
(88, 88, 'category', 'thumbs-03', 54, 0),
(89, 89, 'category', 'thumbs-04', 54, 0),
(95, 95, 'category', 'content-05', 55, 0),
(94, 94, 'category', 'content-04', 55, 0),
(93, 93, 'category', 'content-03', 55, 0),
(87, 87, 'category', 'thumbs-02', 54, 0),
(86, 86, 'category', 'thumbs-01', 54, 0),
(85, 85, 'category', 'content-05', 54, 0),
(84, 84, 'category', 'content-04', 54, 0),
(82, 82, 'category', 'content-03', 54, 0),
(81, 81, 'category', 'content-02', 54, 0),
(80, 80, 'category', 'content-01', 54, 0),
(79, 79, 'category', 'thumbs-05', 53, 0),
(78, 78, 'category', 'thumbs-04', 53, 0),
(77, 77, 'category', 'thumbs-03', 53, 0),
(76, 76, 'category', 'thumbs-02', 53, 3),
(75, 75, 'category', 'thumbs-01', 53, 3),
(73, 73, 'category', 'content-05', 53, 0),
(69, 69, 'category', 'content-01', 53, 2),
(70, 70, 'category', 'content-02', 53, 0),
(53, 53, 'category', 'angular-01', 0, 8),
(54, 54, 'category', 'angular-02', 0, 0),
(55, 55, 'category', 'angular-03', 0, 0),
(56, 56, 'category', 'angular-04', 0, 0),
(57, 57, 'category', 'angular-05', 0, 0),
(72, 72, 'category', 'content-04', 53, 0),
(71, 71, 'category', 'content-03', 53, 0),
(97, 97, 'category', 'thumbs-02', 55, 0),
(98, 98, 'category', 'thumbs-03', 55, 0),
(99, 99, 'category', 'thumbs-04', 55, 0),
(100, 100, 'category', 'thumbs-05', 55, 0),
(101, 101, 'category', 'content-01', 56, 0),
(102, 102, 'category', 'content-02', 56, 0),
(103, 103, 'category', 'content-03', 56, 0),
(104, 104, 'category', 'content-04', 56, 0),
(105, 105, 'category', 'content-05', 56, 0),
(106, 106, 'category', 'thumbs-01', 56, 0),
(107, 107, 'category', 'thumbs-02', 56, 0),
(108, 108, 'category', 'thumbs-03', 56, 0),
(109, 109, 'category', 'thumbs-04', 56, 0),
(110, 110, 'category', 'thumbs-05', 56, 0),
(111, 111, 'category', 'content-01', 57, 0),
(112, 112, 'category', 'content-02', 57, 0),
(113, 113, 'category', 'content-03', 57, 0),
(114, 114, 'category', 'content-04', 57, 0),
(115, 115, 'category', 'content-05', 57, 0),
(116, 116, 'category', 'thumbs-01', 57, 0),
(117, 117, 'category', 'thumbs-02', 57, 0),
(118, 118, 'category', 'thumbs-03', 57, 0),
(119, 119, 'category', 'thumbs-04', 57, 0),
(120, 120, 'category', 'thumbs-05', 57, 0),
(121, 121, 'category', 'parallax-01', 53, 0),
(122, 122, 'category', 'parallax-02', 53, 0),
(123, 123, 'category', 'parallax-03', 53, 0),
(124, 124, 'category', 'parallax-04', 53, 0),
(125, 125, 'category', 'parallax-05', 53, 0),
(126, 126, 'category', 'parallax-01', 54, 0),
(127, 127, 'category', 'parallax-02', 54, 0),
(128, 128, 'category', 'parallax-03', 54, 0),
(129, 129, 'category', 'parallax-04', 54, 0),
(130, 130, 'category', 'parallax-05', 54, 0),
(131, 131, 'category', 'parallax-01', 55, 0),
(132, 132, 'category', 'parallax-02', 55, 0),
(133, 133, 'category', 'parallax-03', 55, 0),
(134, 134, 'category', 'parallax-04', 55, 0),
(135, 135, 'category', 'parallax-05', 55, 0),
(136, 136, 'category', 'parallax-01', 56, 0),
(137, 137, 'category', 'parallax-02', 56, 0),
(138, 138, 'category', 'parallax-03', 56, 0),
(139, 139, 'category', 'parallax-04', 56, 0),
(140, 140, 'category', 'parallax-05', 56, 0),
(141, 141, 'category', 'parallax-01', 57, 0),
(142, 142, 'category', 'parallax-02', 57, 0),
(143, 143, 'category', 'parallax-03', 57, 0),
(144, 144, 'category', 'parallax-04', 57, 0),
(145, 145, 'category', 'parallax-05', 57, 0),
(146, 146, 'category', 'modal-01', 53, 0),
(147, 147, 'category', 'modal-02', 53, 0),
(148, 148, 'category', 'modal-03', 53, 0),
(149, 149, 'category', 'modal-01', 54, 0),
(150, 150, 'category', 'modal-02', 54, 0),
(151, 151, 'category', 'modal-03', 54, 0),
(152, 152, 'category', 'modal-01', 55, 0),
(153, 153, 'category', 'modal-02', 55, 0),
(154, 154, 'category', 'modal-03', 55, 0),
(155, 155, 'category', 'modal-01', 56, 0),
(156, 156, 'category', 'modal-02', 56, 0),
(157, 157, 'category', 'modal-03', 56, 0),
(158, 158, 'category', 'modal-01', 57, 0),
(159, 159, 'category', 'slider-01', 53, 0),
(160, 160, 'category', 'slider-02', 53, 0),
(161, 161, 'category', 'slider-03', 53, 0),
(162, 162, 'category', 'slider-01', 54, 0),
(163, 163, 'category', 'slider-02', 54, 0),
(164, 164, 'category', 'slider-03', 54, 0),
(165, 165, 'category', 'slider-01', 55, 0),
(166, 166, 'category', 'slider-02', 55, 0),
(167, 167, 'category', 'slider-03', 55, 0),
(168, 168, 'category', 'slider-01', 56, 0),
(169, 169, 'category', 'slider-02', 56, 0),
(170, 170, 'category', 'slider-03', 56, 0),
(171, 171, 'category', 'slider-01', 57, 0),
(172, 172, 'category', 'slider-02', 57, 0),
(173, 173, 'category', 'slider-03', 57, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
