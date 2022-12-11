-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Serveur: 127.0.0.1
-- Généré le : Jeu 08 Décembre 2022 à 10:58
-- Version du serveur: 5.5.10
-- Version de PHP: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `agece_location_2023`
--

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE IF NOT EXISTS `client` (
  `code_client` varchar(20) NOT NULL,
  `nom_prenom` varchar(20) NOT NULL,
  `date_naissance` date NOT NULL,
  `profession` varchar(20) NOT NULL,
  `num_tel` int(11) NOT NULL,
  `adresse` varchar(20) NOT NULL,
  `code_postal` int(11) NOT NULL,
  `ville` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  PRIMARY KEY (`code_client`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `client`
--

INSERT INTO `client` (`code_client`, `nom_prenom`, `date_naissance`, `profession`, `num_tel`, `adresse`, `code_postal`, `ville`, `email`) VALUES
('aaa1', 'None', '1999-12-10', 'mécano', 608090708, '2 rue des rose', 91240, 'Saint-Michel-sur-Org', 'None1235@gmail.com'),
('aaa2', 'Noni', '1999-12-25', 'informatique', 685848789, '2 rue des fleches', 95210, 'Saint-Gratien', 'noni.stgratien@gmail');
