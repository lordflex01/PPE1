-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 04 avr. 2022 à 15:28
-- Version du serveur :  5.7.31
-- Version de PHP : 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `autoecole`
--
DROP DATABASE IF EXISTS `autoecole`;
CREATE DATABASE `autoecole`;
USE autoecole;

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `idA` int(11) NOT NULL AUTO_INCREMENT,
  `logA` varchar(30) NOT NULL,
  `mdpA` varchar(30) NOT NULL,
  PRIMARY KEY (`idA`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`idA`, `logA`, `mdpA`) VALUES
(1, 'admin0', 'C4st4ut0');

-- --------------------------------------------------------

--
-- Structure de la table `chat`
--

DROP TABLE IF EXISTS `chat`;
CREATE TABLE IF NOT EXISTS `chat` (
  `idC` int(11) NOT NULL AUTO_INCREMENT,
  `message` varchar(1500) NOT NULL,
  `date` datetime NOT NULL,
  `expediteur` varchar(50) NOT NULL,
  PRIMARY KEY (`idC`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `chat`
--

INSERT INTO `chat` (`idC`, `message`, `date`, `expediteur`) VALUES
(1, 'Bonjour Christian', '2022-01-31 17:17:59', 'Benzema'),
(2, 'Bonjour Christian', '2022-01-31 17:19:44', 'Benzema'),
(3, 'test1', '2022-01-31 17:26:20', 'Benzema'),
(4, 'salut', '2022-01-31 17:34:33', 'christian'),
(5, 'Bonjour', '2022-03-23 17:53:21', 'Benzema');

-- --------------------------------------------------------

--
-- Structure de la table `eleve`
--

DROP TABLE IF EXISTS `eleve`;
CREATE TABLE IF NOT EXISTS `eleve` (
  `ide` int(11) NOT NULL AUTO_INCREMENT,
  `civilite` varchar(15) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `adresse` varchar(60) NOT NULL,
  `datenaisse` date NOT NULL,
  `tel` int(11) NOT NULL,
  `mail` varchar(100) NOT NULL,
  `type_de_permis` varchar(30) NOT NULL,
  `mdp` varchar(40) NOT NULL,
  `niveau` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ide`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `eleve`
--

INSERT INTO `eleve` (`ide`, `civilite`, `nom`, `prenom`, `adresse`, `datenaisse`, `tel`, `mail`, `type_de_permis`, `mdp`, `niveau`) VALUES
(1, 'Mr', 'Mbappe', 'Christian', '25 rue du 18 juin 93220 gagny', '2001-03-12', 769822979, 'christian-mbappe@outlook.fr', 'permisb', 'user02', 1),
(2, 'Mr', 'Diene', 'Abass', '59 avenue de la convention 78500', '2001-10-10', 753608246, 'abassdienne@gmail.com', 'permisa1', 'user01', 1),
(6, 'Mr', 'Chouaky', 'Benzema', '6/8 IMPASSE DES DEUX COUSINS', '2000-01-01', 659348311, 'chouakybenzema@gmail.com', 'permisb', 'iris', 1),
(7, 'Mr', 'Malouf', 'Sonia', '17 rue de Affre', '2001-01-18', 123456789, 'sonia.malouf@yahoo.fr', 'permisb', 'malouf3', 1);

-- --------------------------------------------------------

--
-- Structure de la table `examen`
--

DROP TABLE IF EXISTS `examen`;
CREATE TABLE IF NOT EXISTS `examen` (
  `idEX` int(11) NOT NULL AUTO_INCREMENT,
  `nomEX` varchar(50) NOT NULL,
  `dateEX` date NOT NULL,
  PRIMARY KEY (`idEX`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `lecon`
--

DROP TABLE IF EXISTS `lecon`;
CREATE TABLE IF NOT EXISTS `lecon` (
  `idL` int(11) NOT NULL AUTO_INCREMENT,
  `nomL` varchar(30) NOT NULL,
  `dureeL` time(2) NOT NULL,
  PRIMARY KEY (`idL`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `lecon`
--

INSERT INTO `lecon` (`idL`, `nomL`, `dureeL`) VALUES
(1, 'Les règles de conduite', '01:00:00.00');

-- --------------------------------------------------------

--
-- Structure de la table `moniteur`
--

DROP TABLE IF EXISTS `moniteur`;
CREATE TABLE IF NOT EXISTS `moniteur` (
  `idM` int(11) NOT NULL AUTO_INCREMENT,
  `nomM` varchar(30) NOT NULL,
  `prenomM` varchar(30) NOT NULL,
  `telM` int(11) NOT NULL,
  `mailM` varchar(30) NOT NULL,
  `mdp` varchar(50) NOT NULL,
  `date_embauche` date NOT NULL,
  PRIMARY KEY (`idM`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `moniteur`
--

INSERT INTO `moniteur` (`idM`, `nomM`, `prenomM`, `telM`, `mailM`, `mdp`, `date_embauche`) VALUES
(1, 'Pépain', 'Jean-Pierre', 762443511, 'jp.pepain@castellane.fr', 'j2p4p6', '2021-04-14'),
(2, 'Arnaud', 'Bernard', 634567890, 'b.arnaud@castellane.fr', 'b3a6', '2022-01-21');

-- --------------------------------------------------------

--
-- Structure de la table `planning`
--

DROP TABLE IF EXISTS `planning`;
CREATE TABLE IF NOT EXISTS `planning` (
  `idP` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(300) NOT NULL,
  `Date` date NOT NULL,
  `heure_deb` datetime NOT NULL,
  `heure_fin` datetime NOT NULL,
  PRIMARY KEY (`idP`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `planning`
--

INSERT INTO `planning` (`idP`, `titre`, `Date`, `heure_deb`, `heure_fin`) VALUES
(1, 'Cours', '2022-04-04', '2022-04-04 17:00:00', '2022-04-04 17:45:00'),
(2, 'Conduite', '2022-04-05', '2022-04-05 15:00:00', '2022-04-05 16:00:00'),
(3, 'Cours', '2022-04-06', '2022-04-06 17:00:00', '2022-04-06 17:45:00'),
(4, 'Conduite', '2022-04-07', '2022-04-07 15:00:00', '2022-04-07 16:00:00'),
(5, 'Cours', '2022-04-08', '2022-04-08 17:00:00', '2022-04-08 17:45:00'),
(6, 'Cours', '2022-04-11', '2022-04-11 17:00:00', '2022-04-11 17:45:00'),
(7, 'Conduite', '2022-04-12', '2022-04-12 15:00:00', '2022-04-12 16:00:00'),
(8, 'Cours', '2022-04-13', '2022-04-13 17:00:00', '2022-04-13 17:45:00'),
(9, 'Conduite', '2022-04-14', '2022-04-14 15:00:00', '2022-04-14 16:00:00'),
(10, 'Cours', '2022-04-15', '2022-04-15 17:00:00', '2022-04-15 17:45:00');

-- --------------------------------------------------------

--
-- Structure de la table `questions`
--

DROP TABLE IF EXISTS `questions`;
CREATE TABLE IF NOT EXISTS `questions` (
  `idq` int(11) NOT NULL AUTO_INCREMENT,
  `photos` varchar(300) NOT NULL,
  PRIMARY KEY (`idq`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `questions`
--

INSERT INTO `questions` (`idq`, `photos`) VALUES
(1, '1.jpg'),
(2, '2.jpg'),
(3, '3.jpg'),
(4, '4.jpg'),
(5, '5.jpg'),
(6, '6.jpg'),
(7, '7.jpg'),
(8, '8.jpg'),
(9, '9.jpg'),
(10, '10.jpg'),
(11, '11.jpg'),
(12, '12.jpg'),
(13, '13.jpg'),
(14, '14.jpg'),
(15, '15.jpg'),
(17, '17.jpg'),
(16, '16.jpg'),
(18, '18.jpg'),
(19, '19.jpg'),
(20, '20.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `reponses`
--

DROP TABLE IF EXISTS `reponses`;
CREATE TABLE IF NOT EXISTS `reponses` (
  `idr` int(11) NOT NULL AUTO_INCREMENT,
  `libeller` varchar(300) NOT NULL,
  `idq` int(11) NOT NULL,
  `verite` int(11) NOT NULL,
  PRIMARY KEY (`idr`)
) ENGINE=MyISAM AUTO_INCREMENT=69 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `reponses`
--

INSERT INTO `reponses` (`idr`, `libeller`, `idq`, `verite`) VALUES
(1, 'AC', 1, 0),
(2, 'AB', 1, 1),
(3, 'AD', 1, 0),
(4, 'AC', 2, 1),
(5, 'AD', 2, 0),
(6, 'BC', 2, 0),
(7, 'BD', 2, 0),
(8, 'AD', 3, 0),
(9, 'AC', 3, 1),
(10, 'BD', 3, 0),
(11, 'BC', 3, 0),
(12, 'AC', 4, 1),
(13, 'AD', 4, 1),
(14, 'BC', 4, 0),
(15, 'BD', 4, 0),
(16, 'AC', 5, 0),
(17, 'AD', 5, 1),
(18, 'BC', 5, 0),
(19, 'BD', 5, 0),
(20, 'A', 6, 1),
(21, 'B', 6, 0),
(22, 'A', 7, 1),
(23, 'B', 7, 0),
(24, 'AC', 8, 1),
(25, 'AD', 8, 0),
(26, 'BD', 8, 0),
(27, 'BC', 8, 0),
(28, 'A', 9, 0),
(29, 'B', 9, 1),
(30, 'C', 9, 0),
(31, 'AC', 10, 0),
(32, 'AD', 10, 0),
(33, 'BC', 10, 1),
(34, 'BD', 10, 0),
(35, 'AC', 11, 1),
(36, 'AD', 11, 0),
(37, 'BC', 11, 0),
(38, 'BD', 11, 0),
(39, 'AC', 12, 0),
(40, 'AD', 12, 0),
(41, 'BC', 12, 0),
(42, 'BD', 12, 1),
(43, 'AC', 13, 0),
(44, 'AD', 13, 0),
(45, 'BC', 13, 0),
(46, 'BD', 13, 1),
(47, 'AB', 14, 0),
(48, 'AC', 14, 1),
(49, 'AC', 15, 1),
(50, 'AD', 15, 0),
(51, 'BC', 15, 0),
(52, 'BD', 15, 0),
(53, 'A', 16, 1),
(54, 'B', 16, 0),
(55, 'AC', 17, 0),
(56, 'AD', 17, 1),
(57, 'BC', 17, 0),
(58, 'BD', 17, 0),
(59, 'AC', 18, 1),
(60, 'AD', 18, 0),
(61, 'BC', 18, 0),
(62, 'BD', 18, 0),
(63, 'AC', 19, 0),
(64, 'AD', 19, 0),
(65, 'BC', 19, 0),
(66, 'BD', 19, 1),
(67, 'A', 20, 0),
(68, 'B', 20, 1);

-- --------------------------------------------------------

--
-- Structure de la table `resultats`
--

DROP TABLE IF EXISTS `resultats`;
CREATE TABLE IF NOT EXISTS `resultats` (
  `idR` int(11) NOT NULL AUTO_INCREMENT,
  `resultat` varchar(9) NOT NULL,
  `idE` int(11) NOT NULL,
  `idEX` int(11) NOT NULL,
  PRIMARY KEY (`idR`),
  KEY `idE` (`idE`),
  KEY `idEX` (`idEX`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `vehicule`
--

DROP TABLE IF EXISTS `vehicule`;
CREATE TABLE IF NOT EXISTS `vehicule` (
  `idV` int(11) NOT NULL AUTO_INCREMENT,
  `voiture` varchar(50) NOT NULL,
  `moto` varchar(50) NOT NULL,
  `immatriculation` varchar(7) NOT NULL,
  PRIMARY KEY (`idV`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
