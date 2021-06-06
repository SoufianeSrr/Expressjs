-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 23 avr. 2021 à 12:05
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP : 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `expressdb`
--

-- --------------------------------------------------------

--
-- Structure de la table `etudiant`
--

CREATE TABLE `etudiant` (
  `id` int(10) NOT NULL,
  `nom` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `etudiant`
--

INSERT INTO `etudiant` (`id`, `nom`) VALUES
(1, 'Soufiane'),
(2, 'Zakaria'),
(3, 'Mohammed'),
(4, 'chaymae');

-- --------------------------------------------------------

--
-- Structure de la table `monument`
--
CREATE TABLE `visite` (
  `id` int(11) NOT NULL,
  `visteurs` varchar(100) NOT NULL,
  `monuments` varchar(100) NOT NULL,
  `dateDeVisite` varchar(100) NOT NULL,
  `valid` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `visite`
--

INSERT INTO `visite` (`id`, `visteurs`, `monuments`, `dateDeVisite`, `valid`) VALUES
(1, 'soufiane', 'C\'EST ENSA JDIDA', 'Tue May 04 2021 23:04:38 GMT+0000 (UTC)', 'valid'),
(2, 'sorour', 'C\'EST ENSA JDIDA', 'Tue May 04 2021 23:06:48 GMT+0000 (UTC)', 'valid');


CREATE TABLE `monuments` (
  `id` int(11) NOT NULL,
  `latitude` float NOT NULL,
  `longitude` float NOT NULL,
  `ville` varchar(85) NOT NULL,
  `nom` varchar(85) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Index pour les tables déchargées
--
INSERT INTO `monuments` (`id`, `nom`, `latitude`, `longitude`, `ville`) VALUES
(0, 'cité portugaise', '33.25651787660205', '-8.5035433490295', 'El jadida'),
(1, 'ENSA JDIDA', '33.25106749322618', '-8.434053890142799', 'El jadida'),
(2, 'home', '33.241621', '-8.536601', 'El jadida');

--
-- Index pour la table `etudiant`
--
ALTER TABLE `etudiant`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `monument`
--
ALTER TABLE `monuments`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `visite`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `visite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
