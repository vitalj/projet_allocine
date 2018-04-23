-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le :  lun. 23 avr. 2018 à 07:52
-- Version du serveur :  5.6.38
-- Version de PHP :  7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `allocine`
--

-- --------------------------------------------------------

--
-- Structure de la table `acteur`
--

CREATE TABLE `acteur` (
  `ID` int(10) NOT NULL,
  `nom_acteur` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `acteur`
--

INSERT INTO `acteur` (`ID`, `nom_acteur`) VALUES
(1, 'Woody Harrelson'),
(2, 'Juliette Lewis'),
(3, 'Harvey Kaitei'),
(4, 'Tim Roth'),
(5, 'Christian Slater'),
(6, 'Patricia Arquette'),
(7, 'Gene Hackman'),
(8, 'Gwyneth Paltrow'),
(9, 'Brad Pitt'),
(10, 'Edward Norton'),
(11, 'Ryan Gosling'),
(12, 'Carey Mulligan'),
(13, 'Julie Andrews'),
(14, 'Dick Van Dyke'),
(15, 'Jamie Bell'),
(16, 'Julie Walters'),
(17, 'Nicole Kidman'),
(18, 'Christopher Eccleston'),
(19, 'Omar Sy'),
(20, 'Clémence Poésy'),
(21, 'Jean-Paul Rouve'),
(22, ' Isabelle Nanty'),
(23, 'Ilya Malakov'),
(24, 'Aleksey Serebryakov'),
(25, 'Emir Kusturica'),
(26, 'Monica Bellucci'),
(27, 'Antonio Banderas'),
(28, 'Milos Bikovic');

-- --------------------------------------------------------

--
-- Structure de la table `acteur/film`
--

CREATE TABLE `acteur/film` (
  `id` int(10) NOT NULL,
  `acteur_id` int(10) NOT NULL,
  `film_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `acteur/film`
--

INSERT INTO `acteur/film` (`id`, `acteur_id`, `film_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 2),
(4, 4, 2),
(5, 5, 5),
(6, 6, 6),
(7, 7, 6),
(8, 8, 6),
(9, 9, 7),
(10, 10, 7),
(11, 11, 8),
(12, 12, 8),
(13, 13, 9),
(14, 14, 9),
(15, 15, 10),
(16, 16, 10),
(17, 17, 11),
(18, 18, 11),
(19, 19, 12),
(20, 20, 12),
(21, 21, 13),
(22, 22, 13),
(23, 23, 14),
(24, 24, 14),
(25, 25, 15),
(26, 26, 15),
(27, 27, 16),
(28, 28, 16);

-- --------------------------------------------------------

--
-- Structure de la table `film`
--

CREATE TABLE `film` (
  `id_film` int(255) NOT NULL,
  `titre` varchar(256) NOT NULL,
  `description` text NOT NULL,
  `annee_sortie` year(4) NOT NULL,
  `realisateur` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `film`
--

INSERT INTO `film` (`id_film`, `titre`, `description`, `annee_sortie`, `realisateur`) VALUES
(1, 'Tueurs née', 'Un couple de tueurs, Mickey et Mallory, se servent des médias jusqu\'à devenir des stars de l\'actualité', 1994, 'Olivier Stone'),
(2, 'Reservoir Dogs', 'Apres un hold-up manque, des cambrioleurs de haut vol font leurs comptes dans une confrontation violente, pour decouvrir lequel d\'entre eux les a trahis.', 1992, 'Quentin Tarantino'),
(5, 'True Romance', 'Le jour de son anniversaire, Clarence Worley rencontre la splendide Alabama dans un cinéma miteux. Coup de foudre immédiat. Après une nuit d\'amour, Alabama avoue a Clarence qu\'elle a été en fait engagée par ', 1993, 'Tony Scoot'),
(6, 'The Royal Tenenbaum', 'Pour rassembler sa famille, Royal Tenenbaum fait croire à son ex-femme et à ses enfants qu\'il est atteint d\'un mal incurable et qu\'il ne lui reste que quelques semaines à vivre.', 2001, 'Wess Anderson'),
(7, 'Fight club', 'Le film démarre sur le plan du personnage principal (Edward Norton) à qui on a enfoncé un pistolet dans la bouche et dont on entend la voix en monologue qui se remémore comment il en est arrivé là', 1999, 'David Fincher'),
(8, 'Drive', 'Un jeune homme solitaire, conduit le jour à Hollywood pour le cinéma en tant que cascadeur et la nuit pour des truands', 2011, 'Nicolas Winding Refn'),
(9, 'Mary Poppins', 'Rien ne va plus dans la famille Banks. La nurse vient de donner ses huit jours. Et ni M. Banks, banquier d affaire, ni son épouse, suffragette active, ne peuvent s\'occuper des enfants Jane et Michaël. Ces derniers passent alors une annonce tout à fait fantaisiste pour trouver une nouvelle nurse. C\'est Mary Poppins qui répond et apparaît dès le lendemain, portée par le vent d\'Est. Elle entraîne aussitôt les enfants dans son univers merveilleux. Un des plus célèbres films de la production Disney.', 1965, 'Robert Stevenson'),
(10, 'Billy Elliot', 'Dans un petit village minier du Nord-Est de l\'Angleterre, Billy, onze ans, découvre avec stupeur qu\'un cours de danse partage désormais les mêmes locaux que son club de boxe. D\'abord effaré, il devient peu à peu fasciné par la magie de la gestuelle du ballet, activité pourtant trop peu virile au regard de son père et de son frère Tony, mineurs en grève. Billy abandonne les gants de cuir pour assister discrètement aux leçons de danse professées par Mme Wilkinson. Repérant immédiatement un talent potentiel, elle retrouve une nouvelle énergie devant les espoirs que constitue Billy.Les frustrations larvées explosent au grand jour quand son père et son frère découvrent que Billy a dépensé l\'argent consacré au cours de boxe pour des cours de danse.Partagé entre une famille en situation de crise et un professeur de ballet têtu, le jeune garçon embarque alors dans un voyage à la découverte de lui-même', 1999, 'Stephen Daldry'),
(11, 'Les autres', 'En 1945, dans une immense demeure victorienne isolée sur l\'île de Jersey située au large de la Normandie, vit Grace, une jeune femme pieuse, et ses deux enfants, Anne et Nicholas. Les journées sont longues pour cette mère de famille qui passe tout son temps à éduquer ses enfants en leur inculquant ses principes religieux. Atteints d\'un mal étrange, Anne et Nicholas ne doivent en aucun cas être exposés à la lumière du jour. Ils vivent donc reclus dans ce manoir obscur, tous rideaux tirés.Un jour d\'épais brouillard, trois personnes frappent à la porte du manoir isolé, en quête d’un travail. Grace, qui a justement besoin d\'aide pour l\'entretien du parc ainsi que d’une nouvelle nounou pour ses enfants, les engage. Dès lors, des événements étranges surviennent dans la demeure...', 2001, 'Alejandro Amenábar'),
(12, 'Demain tout commence', 'Samuel vit sa vie sans attaches ni responsabilités, au bord de la mer sous le soleil du sud de la France, près des gens qu’il aime et avec qui il travaille sans trop se fatiguer. Jusqu’à ce qu’une de ses anciennes conquêtes lui laisse sur les bras un bébé de quelques mois, Gloria : sa fille ! Incapable de s’occuper d’un bébé et bien décidé à rendre l’enfant à sa mère, Samuel se précipite à Londres pour tenter de la retrouver, sans succès. 8 ans plus tard, alors que Samuel et Gloria ont fait leur vie à Londres et sont devenus inséparables, la mère de Gloria revient dans leur vie pour récupérer sa fille…', 2016, 'Hugo Gelin'),
(13, 'Les tuches', '', 2010, 'Olivier Baroux'),
(14, 'Legende de Kolovrat', 'Au 13eme siècle, un soldat amnesique fait vœu de se venger de l\'armee mongole qui a fouille son village', 2017, 'Dzhanik Fayziev'),
(15, 'On the Milky Road', 'Sous le feu des balles	Kosta	un laitier	traverse la ligne de front chaque jour au péril de sa vie pour livrer ses précieux vivres aux soldats.', 2017, 'Emir Kusturica'),
(16, 'Au-dela du bord', 'Moscou contemporain Un joueur talentueux rassemble une équipe de personnes avec des pouvoirs surnaturels pour gagner gros dans un casino.', 2018, 'Aleksandr Boguslavski');

-- --------------------------------------------------------

--
-- Structure de la table `genre`
--

CREATE TABLE `genre` (
  `id_genre` int(10) NOT NULL,
  `Genre` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `genre`
--

INSERT INTO `genre` (`id_genre`, `Genre`) VALUES
(1, 'Action'),
(2, 'Policier'),
(3, 'Judiciaire'),
(4, 'Satire'),
(5, 'Thriller'),
(6, 'Comédie'),
(7, 'Drame'),
(8, 'Film noir'),
(9, 'Film musical'),
(10, 'Fantastique'),
(11, 'histoire');

-- --------------------------------------------------------

--
-- Structure de la table `genre/id`
--

CREATE TABLE `genre/id` (
  `ID` int(10) NOT NULL,
  `film/ID` int(10) NOT NULL,
  `genre/ID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `genre/id`
--

INSERT INTO `genre/id` (`ID`, `film/ID`, `genre/ID`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 2, 2),
(6, 2, 5),
(7, 2, 1),
(8, 5, 1),
(9, 6, 7),
(10, 6, 6),
(11, 7, 4),
(12, 7, 8),
(13, 8, 8),
(14, 8, 5);

-- --------------------------------------------------------

--
-- Structure de la table `realisateur`
--

CREATE TABLE `realisateur` (
  `id` int(150) NOT NULL,
  `nom` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `realisateur`
--

INSERT INTO `realisateur` (`id`, `nom`) VALUES
(1, 'Oliver Stone'),
(2, 'Quentin Tarantino'),
(3, 'Tony Scott'),
(4, 'Wess Anderson'),
(5, 'David Fincher'),
(6, 'Nicolas Winding Refn'),
(7, 'Robert Stevenson'),
(8, 'Stephen Daldry'),
(9, 'Alejandro Amenábar'),
(10, 'Hugo Gelin'),
(11, 'Olivier Baroux'),
(12, 'Dzhanik Fayziev'),
(13, 'Emir Kusturica'),
(14, 'Aleksandr Boguslavski');

-- --------------------------------------------------------

--
-- Structure de la table `realisateur/film`
--

CREATE TABLE `realisateur/film` (
  `id` int(11) NOT NULL,
  `realisateur_id` int(10) NOT NULL,
  `film_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `realisateur/film`
--

INSERT INTO `realisateur/film` (`id`, `realisateur_id`, `film_id`) VALUES
(16, 1, 1),
(17, 2, 2),
(18, 3, 5),
(19, 4, 6),
(20, 5, 7),
(21, 6, 8),
(22, 7, 9),
(23, 8, 10),
(24, 9, 11),
(25, 10, 12),
(26, 11, 13),
(27, 12, 14),
(28, 13, 15),
(29, 14, 16),
(30, 1, 1),
(31, 2, 2),
(32, 3, 5),
(33, 4, 6),
(34, 5, 7),
(35, 6, 8),
(36, 7, 9),
(37, 8, 10),
(38, 9, 11),
(39, 10, 12),
(40, 11, 13),
(41, 12, 14),
(42, 13, 15),
(43, 14, 16);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `acteur`
--
ALTER TABLE `acteur`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `acteur/film`
--
ALTER TABLE `acteur/film`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`id_film`) USING BTREE;

--
-- Index pour la table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id_genre`);

--
-- Index pour la table `genre/id`
--
ALTER TABLE `genre/id`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `realisateur`
--
ALTER TABLE `realisateur`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `realisateur/film`
--
ALTER TABLE `realisateur/film`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `acteur`
--
ALTER TABLE `acteur`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT pour la table `acteur/film`
--
ALTER TABLE `acteur/film`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT pour la table `film`
--
ALTER TABLE `film`
  MODIFY `id_film` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `genre`
--
ALTER TABLE `genre`
  MODIFY `id_genre` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `genre/id`
--
ALTER TABLE `genre/id`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `realisateur`
--
ALTER TABLE `realisateur`
  MODIFY `id` int(150) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `realisateur/film`
--
ALTER TABLE `realisateur/film`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
