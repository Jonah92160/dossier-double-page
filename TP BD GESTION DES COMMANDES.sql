-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Serveur: 127.0.0.1
-- Généré le : Jeu 12 Janvier 2023 à 10:41
-- Version du serveur: 5.5.10
-- Version de PHP: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `nouveau`
--

-- --------------------------------------------------------

--
-- Structure de la table `catégorie`
--

CREATE TABLE IF NOT EXISTS `catégorie` (
  `num_categorie` int(11) NOT NULL,
  `nom_categorie` varchar(50) NOT NULL,
  `def_reference` varchar(50) NOT NULL,
  `cat_remise` varchar(50) NOT NULL,
  PRIMARY KEY (`num_categorie`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `catégorie`
--

INSERT INTO `catégorie` (`num_categorie`, `nom_categorie`, `def_reference`, `cat_remise`) VALUES
(1, 'Electronique', 'EL	', '10%'),
(2, 'Maison', 'MH', '15%');

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE IF NOT EXISTS `clients` (
  `client_id` int(11) NOT NULL,
  `client_civilité` varchar(50) NOT NULL,
  `client_nom` varchar(50) NOT NULL,
  `client_prenom` varchar(50) NOT NULL,
  `client_ville` varchar(50) NOT NULL,
  `client_num` int(11) NOT NULL,
  `date_naissance` date NOT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `clients`
--

INSERT INTO `clients` (`client_id`, `client_civilité`, `client_nom`, `client_prenom`, `client_ville`, `client_num`, `date_naissance`) VALUES
(1, 'M.', 'Dupont', 'Jean', 'Lille', 7344, '0000-00-00'),
(2, 'Mme', 'Martin', 'Sophie', 'Paris', 6655, '0000-00-00');

-- --------------------------------------------------------

--
-- Structure de la table `commandes`
--

CREATE TABLE IF NOT EXISTS `commandes` (
  `com_num` int(11) NOT NULL,
  `com_client` int(11) NOT NULL,
  `date_commande` date NOT NULL,
  `com_montant` double NOT NULL,
  `client_id` int(11) NOT NULL,
  `produit_ref` int(11) NOT NULL,
  PRIMARY KEY (`com_num`),
  KEY `client_id` (`client_id`),
  KEY `produit_ref` (`produit_ref`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `commandes`
--

INSERT INTO `commandes` (`com_num`, `com_client`, `date_commande`, `com_montant`, `client_id`, `produit_ref`) VALUES
(1, 1, '2021-01-01', 1000, 1, 1),
(2, 2, '2021-02-01', 800, 2, 2);

-- --------------------------------------------------------

--
-- Structure de la table `produits`
--

CREATE TABLE IF NOT EXISTS `produits` (
  `produit_ref` int(11) NOT NULL,
  `produit_nom` varchar(50) NOT NULL,
  `produit_prix` double NOT NULL,
  `produit_poids` varchar(50) NOT NULL,
  `produit_vues` varchar(50) NOT NULL,
  `produit_stock` varchar(50) NOT NULL,
  `produit_code` varchar(50) NOT NULL,
  `num_categorie` int(11) NOT NULL,
  PRIMARY KEY (`produit_ref`),
  KEY `num_categorie` (`num_categorie`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `produits`
--

INSERT INTO `produits` (`produit_ref`, `produit_nom`, `produit_prix`, `produit_poids`, `produit_vues`, `produit_stock`, `produit_code`, `num_categorie`) VALUES
(1, 'Téléviseur', 1000, '20kg	', '100', '50', 'EL1', 1),
(2, 'Canapé', 500, '35kg', '50', '30	', 'MH1', 2);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `commandes`
--
ALTER TABLE `commandes`
  ADD CONSTRAINT `commandes_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `clients` (`client_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `commandes_ibfk_2` FOREIGN KEY (`produit_ref`) REFERENCES `produits` (`produit_ref`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `produits`
--
ALTER TABLE `produits`
  ADD CONSTRAINT `produits_ibfk_1` FOREIGN KEY (`num_categorie`) REFERENCES `catégorie` (`num_categorie`) ON DELETE CASCADE ON UPDATE CASCADE;
