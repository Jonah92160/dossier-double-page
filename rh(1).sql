-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Serveur: 127.0.0.1
-- Généré le : Jeu 15 Décembre 2022 à 10:59
-- Version du serveur: 5.5.10
-- Version de PHP: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `rh`
--

-- --------------------------------------------------------

--
-- Structure de la table `employe`
--

CREATE TABLE IF NOT EXISTS `employe` (
  `NoEmp` int(11) NOT NULL,
  `Nom` varchar(20) NOT NULL,
  `Prénom` varchar(20) NOT NULL,
  `sexe` varchar(20) NOT NULL,
  `Salaire` int(11) NOT NULL,
  `Type de Contrat` varchar(20) NOT NULL,
  `Fonction` varchar(20) NOT NULL,
  `Site` varchar(20) NOT NULL,
  `Date d'embauche` date NOT NULL,
  `Date de naissance` date NOT NULL,
  `NoSrv` int(11) NOT NULL,
  PRIMARY KEY (`NoEmp`),
  KEY `NoSrv` (`NoSrv`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `employe`
--

INSERT INTO `employe` (`NoEmp`, `Nom`, `Prénom`, `sexe`, `Salaire`, `Type de Contrat`, `Fonction`, `Site`, `Date d'embauche`, `Date de naissance`, `NoSrv`) VALUES
(1, 'Pocelin', 'Pspair', 'Femme', 1200, 'CDD', 'Intervention réseaux', 'blbla.com', '2022-11-23', '1999-03-24', 1),
(2, 'Panouar', 'Pouighi', 'Femme', 1300, 'CDD', 'Intervention Dévelop', 'Blabla.com', '2022-11-14', '1999-06-22', 2);

-- --------------------------------------------------------

--
-- Structure de la table `intervenir`
--

CREATE TABLE IF NOT EXISTS `intervenir` (
  `Num_Interv` int(11) NOT NULL,
  `NoProj` int(11) NOT NULL,
  `NoEmploye` int(11) NOT NULL,
  `NbHeures` int(11) NOT NULL,
  PRIMARY KEY (`Num_Interv`),
  KEY `NoProj` (`NoProj`,`NoEmploye`),
  KEY `NoEmploye` (`NoEmploye`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `intervenir`
--

INSERT INTO `intervenir` (`Num_Interv`, `NoProj`, `NoEmploye`, `NbHeures`) VALUES
(11, 8, 2, 17),
(12, 8, 1, 18);

-- --------------------------------------------------------

--
-- Structure de la table `projet`
--

CREATE TABLE IF NOT EXISTS `projet` (
  `NoProjet` int(11) NOT NULL,
  `LibelleProjet` varchar(20) NOT NULL,
  `NoSrv` int(11) NOT NULL,
  PRIMARY KEY (`NoProjet`),
  KEY `NoSrv` (`NoSrv`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `projet`
--

INSERT INTO `projet` (`NoProjet`, `LibelleProjet`, `NoSrv`) VALUES
(7, 'Courir', 2),
(8, 'Marcher', 1);

-- --------------------------------------------------------

--
-- Structure de la table `service`
--

CREATE TABLE IF NOT EXISTS `service` (
  `NoSrv` int(11) NOT NULL,
  `NomSrv` varchar(20) NOT NULL,
  PRIMARY KEY (`NoSrv`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `service`
--

INSERT INTO `service` (`NoSrv`, `NomSrv`) VALUES
(1, 'Réseaux'),
(2, 'Dévellopement');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `employe`
--
ALTER TABLE `employe`
  ADD CONSTRAINT `employe_ibfk_1` FOREIGN KEY (`NoSrv`) REFERENCES `service` (`NoSrv`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `intervenir`
--
ALTER TABLE `intervenir`
  ADD CONSTRAINT `intervenir_ibfk_2` FOREIGN KEY (`NoEmploye`) REFERENCES `employe` (`NoEmp`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `intervenir_ibfk_1` FOREIGN KEY (`NoProj`) REFERENCES `projet` (`NoProjet`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `projet`
--
ALTER TABLE `projet`
  ADD CONSTRAINT `projet_ibfk_1` FOREIGN KEY (`NoSrv`) REFERENCES `service` (`NoSrv`) ON DELETE CASCADE ON UPDATE CASCADE;
