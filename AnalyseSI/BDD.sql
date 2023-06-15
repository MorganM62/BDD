-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : db
-- Généré le : jeu. 15 juin 2023 à 10:13
-- Version du serveur : 8.0.29
-- Version de PHP : 8.0.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `Marvel`
--

-- --------------------------------------------------------

--
-- Structure de la table `Actor`
--

CREATE TABLE `Actor` (
  `ID_Actor` int NOT NULL,
  `Name_Actor` varchar(255) DEFAULT NULL,
  `Surname_Actor` varchar(255) DEFAULT NULL,
  `Role_Actor` varchar(255) DEFAULT NULL,
  `Sexe_Actor` varchar(255) DEFAULT NULL,
  `Birthday_Actor` year DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `Actor`
--

INSERT INTO `Actor` (`ID_Actor`, `Name_Actor`, `Surname_Actor`, `Role_Actor`, `Sexe_Actor`, `Birthday_Actor`) VALUES
(1, 'Chris', 'Pratt', 'Star Lord', 'Male', 1979),
(2, 'Chris', 'Evans', 'Captain America', 'Male', 1981),
(3, 'Scarlett', 'Johansson', 'Black Widow', 'Female', 1984),
(4, 'Robert', 'Downey.Jr', 'Iron Man', 'Male', 1965);

-- --------------------------------------------------------

--
-- Structure de la table `Movie`
--

CREATE TABLE `Movie` (
  `ID` int NOT NULL,
  `Title_Movie` varchar(255) DEFAULT NULL,
  `Runing_time_Movie` varchar(255) DEFAULT NULL,
  `Realease_Date_Movie` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `Movie`
--

INSERT INTO `Movie` (`ID`, `Title_Movie`, `Runing_time_Movie`, `Realease_Date_Movie`) VALUES
(1, 'Les gardiens de la galaxie', '121 Minutes', '13 août 2014'),
(2, 'Captain America', '124 minutes', '17 août 2011'),
(3, 'Black Widow', '134 Minutes', '7 juillet 2021');

-- --------------------------------------------------------

--
-- Structure de la table `Play_in`
--

CREATE TABLE `Play_in` (
  `ID_Actor` int NOT NULL,
  `ID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `Realisator`
--

CREATE TABLE `Realisator` (
  `ID_Realisator` int NOT NULL,
  `Name_Realisator` varchar(255) DEFAULT NULL,
  `Surname_Realisator` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `Realisator`
--

INSERT INTO `Realisator` (`ID_Realisator`, `Name_Realisator`, `Surname_Realisator`) VALUES
(1, 'James', 'Gunn'),
(2, 'Cate', 'Shortland'),
(3, 'Joe', 'Johnston');

-- --------------------------------------------------------

--
-- Structure de la table `Realise`
--

CREATE TABLE `Realise` (
  `ID_Realisator` int NOT NULL,
  `ID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `Use`
--

CREATE TABLE `Use` (
  `ID_user` int NOT NULL,
  `ID` int NOT NULL,
  `ID_Actor` int NOT NULL,
  `ID_Realisator` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `User`
--

CREATE TABLE `User` (
  `ID_user` int NOT NULL,
  `Admin_user` int DEFAULT NULL,
  `Visitor_user` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `User`
--

INSERT INTO `User` (`ID_user`, `Admin_user`, `Visitor_user`) VALUES
(1, 1, 2);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Actor`
--
ALTER TABLE `Actor`
  ADD PRIMARY KEY (`ID_Actor`);

--
-- Index pour la table `Movie`
--
ALTER TABLE `Movie`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `Play_in`
--
ALTER TABLE `Play_in`
  ADD PRIMARY KEY (`ID_Actor`,`ID`),
  ADD KEY `ID` (`ID`);

--
-- Index pour la table `Realisator`
--
ALTER TABLE `Realisator`
  ADD PRIMARY KEY (`ID_Realisator`);

--
-- Index pour la table `Realise`
--
ALTER TABLE `Realise`
  ADD PRIMARY KEY (`ID_Realisator`,`ID`),
  ADD KEY `ID` (`ID`);

--
-- Index pour la table `Use`
--
ALTER TABLE `Use`
  ADD PRIMARY KEY (`ID_user`,`ID`,`ID_Actor`,`ID_Realisator`),
  ADD KEY `ID` (`ID`),
  ADD KEY `ID_Actor` (`ID_Actor`),
  ADD KEY `ID_Realisator` (`ID_Realisator`);

--
-- Index pour la table `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`ID_user`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `Actor`
--
ALTER TABLE `Actor`
  MODIFY `ID_Actor` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `Movie`
--
ALTER TABLE `Movie`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `Play_in`
--
ALTER TABLE `Play_in`
  MODIFY `ID_Actor` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `Realisator`
--
ALTER TABLE `Realisator`
  MODIFY `ID_Realisator` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `Realise`
--
ALTER TABLE `Realise`
  MODIFY `ID_Realisator` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `Use`
--
ALTER TABLE `Use`
  MODIFY `ID_user` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `User`
--
ALTER TABLE `User`
  MODIFY `ID_user` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `Play_in`
--
ALTER TABLE `Play_in`
  ADD CONSTRAINT `Play_in_ibfk_1` FOREIGN KEY (`ID_Actor`) REFERENCES `Actor` (`ID_Actor`),
  ADD CONSTRAINT `Play_in_ibfk_2` FOREIGN KEY (`ID`) REFERENCES `Movie` (`ID`);

--
-- Contraintes pour la table `Realise`
--
ALTER TABLE `Realise`
  ADD CONSTRAINT `Realise_ibfk_1` FOREIGN KEY (`ID_Realisator`) REFERENCES `Realisator` (`ID_Realisator`),
  ADD CONSTRAINT `Realise_ibfk_2` FOREIGN KEY (`ID`) REFERENCES `Movie` (`ID`);

--
-- Contraintes pour la table `Use`
--
ALTER TABLE `Use`
  ADD CONSTRAINT `Use_ibfk_1` FOREIGN KEY (`ID_user`) REFERENCES `User` (`ID_user`),
  ADD CONSTRAINT `Use_ibfk_2` FOREIGN KEY (`ID`) REFERENCES `Movie` (`ID`),
  ADD CONSTRAINT `Use_ibfk_3` FOREIGN KEY (`ID_Actor`) REFERENCES `Actor` (`ID_Actor`),
  ADD CONSTRAINT `Use_ibfk_4` FOREIGN KEY (`ID_Realisator`) REFERENCES `Realisator` (`ID_Realisator`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
