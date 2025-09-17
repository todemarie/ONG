-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 17 sep. 2025 à 15:30
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `basededonnee`
--

-- --------------------------------------------------------

--
-- Structure de la table `adherent`
--

CREATE TABLE `adherent` (
  `immatriculationAdherent` varchar(11) NOT NULL,
  `nomAdherent` varchar(255) NOT NULL,
  `prenomAdherent` varchar(255) NOT NULL,
  `villeAdherent` varchar(255) NOT NULL DEFAULT '''Active''',
  `cniAdherent` varchar(15) NOT NULL,
  `telAdherent` int(9) NOT NULL,
  `quartierAdherent` varchar(255) NOT NULL,
  `IDAdherent` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `adherent`
--

INSERT INTO `adherent` (`immatriculationAdherent`, `nomAdherent`, `prenomAdherent`, `villeAdherent`, `cniAdherent`, `telAdherent`, `quartierAdherent`, `IDAdherent`) VALUES
('BGV_01', 'ANANI', 'CATHERINE ', 'ABIDJAN', 'CI00021324501', 74543230, 'ANAN', 12),
('ABB/01', 'DIBIA', 'KOROTOUMOU', 'ABIDJAN', 'CI000006767', 7777898, 'ANONKOI', 13),
('BGV_02', 'BERE', 'SABINE ', 'ABIDJAN', 'CI0000655446', 555556754, 'ADJIN', 15),
('ABB/02', 'GUESSA', 'BERTILLE', 'ABIDJAN', 'CI0005699990', 7212908, 'MARAHOUE', 16);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `IDutilisateur` int(11) NOT NULL,
  `nomutilisateur` varchar(255) NOT NULL,
  `pseudo` varchar(255) NOT NULL,
  `motdepasse` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`IDutilisateur`, `nomutilisateur`, `pseudo`, `motdepasse`) VALUES
(3, 'tode', 'marie', '8e73b27568cb3be29e2da74d42eab6dd'),
(4, 'TODE', 'RACHEL', '8aebf8b1eee21f47318d0fdef28145e2');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `adherent`
--
ALTER TABLE `adherent`
  ADD PRIMARY KEY (`IDAdherent`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`IDutilisateur`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `adherent`
--
ALTER TABLE `adherent`
  MODIFY `IDAdherent` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `IDutilisateur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
