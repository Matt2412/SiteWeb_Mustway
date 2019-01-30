-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Ven 25 Novembre 2016 à 12:23
-- Version du serveur :  10.1.16-MariaDB
-- Version de PHP :  5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `projet_yohanmatthieu`
--

-- --------------------------------------------------------

--
-- Structure de la table `composer`
--

CREATE TABLE `composer` (
  `QuantiteProduit` float DEFAULT NULL,
  `NomIngredient` varchar(25) NOT NULL,
  `titre` varchar(50) NOT NULL,
  `NomUnite` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `contenir`
--

CREATE TABLE `contenir` (
  `QuantiteIngredient` float DEFAULT NULL,
  `NomProduit` varchar(50) NOT NULL,
  `titre` varchar(50) NOT NULL,
  `NomUnite` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `etape`
--

CREATE TABLE `etape` (
  `idEtape` int(11) NOT NULL,
  `Instruction` longtext,
  `Numero` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `fabriquer`
--

CREATE TABLE `fabriquer` (
  `QuantiteProduitImporte` float DEFAULT NULL,
  `NomProduit` varchar(50) NOT NULL,
  `idLieu` int(11) NOT NULL,
  `idImportation` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `importation`
--

CREATE TABLE `importation` (
  `NomImportation` varchar(50) DEFAULT NULL,
  `idImportation` int(11) NOT NULL,
  `DateImportation` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `ingredient`
--

CREATE TABLE `ingredient` (
  `NomIngredient` varchar(25) NOT NULL,
  `CategorieIngredient` varchar(25) DEFAULT NULL,
  `QuantiteIngredient` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `lieu`
--

CREATE TABLE `lieu` (
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `idLieu` int(11) NOT NULL,
  `Continent` varchar(50) DEFAULT NULL,
  `PaysZ` varchar(50) DEFAULT NULL,
  `Ville` varchar(50) DEFAULT NULL,
  `CodePostal` varchar(50) DEFAULT NULL,
  `Voie` varchar(50) DEFAULT NULL,
  `NumeroDeVoie` int(11) DEFAULT NULL,
  `PaysA` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `NomProduit` varchar(50) NOT NULL,
  `categorieProduit` varchar(50) DEFAULT NULL,
  `QuantiteProduit` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `provenir`
--

CREATE TABLE `provenir` (
  `QuantiteIngredientImportee` float DEFAULT NULL,
  `idLieu` int(11) NOT NULL,
  `idImportation` int(11) NOT NULL,
  `NomIngredient` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `recette`
--

CREATE TABLE `recette` (
  `titre` varchar(50) NOT NULL,
  `categorieRecette` varchar(50) DEFAULT NULL,
  `descriptionRecette` varchar(50) DEFAULT NULL,
  `nbPers` int(11) DEFAULT NULL,
  `DateProposition` date DEFAULT NULL,
  `prenomUtilisatrice` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `transformer`
--

CREATE TABLE `transformer` (
  `QuantiteTransformation` float DEFAULT NULL,
  `NomIngredient` varchar(25) NOT NULL,
  `NomProduit` varchar(50) NOT NULL,
  `NomUnite` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `unite`
--

CREATE TABLE `unite` (
  `NomUnite` varchar(25) NOT NULL,
  `Abreviation` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `ustensile`
--

CREATE TABLE `ustensile` (
  `nomUstensile` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `utilisatrice`
--

CREATE TABLE `utilisatrice` (
  `nomUtilisatrice` varchar(50) DEFAULT NULL,
  `prenomUtilisatrice` varchar(50) NOT NULL,
  `DateNaissance` date DEFAULT NULL,
  `genre` tinyint(1) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `DateInscription` date DEFAULT NULL,
  `idLieu` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `composer`
--
ALTER TABLE `composer`
  ADD PRIMARY KEY (`NomIngredient`,`titre`,`NomUnite`);

--
-- Index pour la table `contenir`
--
ALTER TABLE `contenir`
  ADD PRIMARY KEY (`NomProduit`,`titre`,`NomUnite`);

--
-- Index pour la table `etape`
--
ALTER TABLE `etape`
  ADD PRIMARY KEY (`idEtape`);

--
-- Index pour la table `fabriquer`
--
ALTER TABLE `fabriquer`
  ADD PRIMARY KEY (`NomProduit`,`idLieu`,`idImportation`);

--
-- Index pour la table `importation`
--
ALTER TABLE `importation`
  ADD PRIMARY KEY (`idImportation`);

--
-- Index pour la table `ingredient`
--
ALTER TABLE `ingredient`
  ADD PRIMARY KEY (`NomIngredient`);

--
-- Index pour la table `lieu`
--
ALTER TABLE `lieu`
  ADD PRIMARY KEY (`idLieu`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`NomProduit`);

--
-- Index pour la table `provenir`
--
ALTER TABLE `provenir`
  ADD PRIMARY KEY (`idLieu`,`idImportation`,`NomIngredient`);

--
-- Index pour la table `recette`
--
ALTER TABLE `recette`
  ADD PRIMARY KEY (`titre`),
  ADD KEY `FK_Recette_prenomUtilisatrice` (`prenomUtilisatrice`);

--
-- Index pour la table `transformer`
--
ALTER TABLE `transformer`
  ADD PRIMARY KEY (`NomIngredient`,`NomProduit`,`NomUnite`),
  ADD KEY `FK_Transformer_NomProduit` (`NomProduit`);

--
-- Index pour la table `unite`
--
ALTER TABLE `unite`
  ADD PRIMARY KEY (`NomUnite`);

--
-- Index pour la table `ustensile`
--
ALTER TABLE `ustensile`
  ADD PRIMARY KEY (`nomUstensile`);

--
-- Index pour la table `utilisatrice`
--
ALTER TABLE `utilisatrice`
  ADD PRIMARY KEY (`prenomUtilisatrice`),
  ADD KEY `FK_Utilisatrice_idLieu` (`idLieu`);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `recette`
--
ALTER TABLE `recette`
  ADD CONSTRAINT `FK_Recette_prenomUtilisatrice` FOREIGN KEY (`prenomUtilisatrice`) REFERENCES `utilisatrice` (`prenomUtilisatrice`);

--
-- Contraintes pour la table `transformer`
--
ALTER TABLE `transformer`
  ADD CONSTRAINT `FK_Transformer_NomIngredient` FOREIGN KEY (`NomIngredient`) REFERENCES `ingredient` (`NomIngredient`),
  ADD CONSTRAINT `FK_Transformer_NomProduit` FOREIGN KEY (`NomProduit`) REFERENCES `produit` (`NomProduit`);

--
-- Contraintes pour la table `utilisatrice`
--
ALTER TABLE `utilisatrice`
  ADD CONSTRAINT `FK_Utilisatrice_idLieu` FOREIGN KEY (`idLieu`) REFERENCES `lieu` (`idLieu`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
