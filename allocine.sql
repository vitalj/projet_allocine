-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le :  mer. 25 avr. 2018 à 09:54
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
  `id` int(10) NOT NULL,
  `nom_acteur` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `acteur`
--

INSERT INTO `acteur` (`id`, `nom_acteur`) VALUES
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
-- Structure de la table `acteur_film`
--

CREATE TABLE `acteur_film` (
  `id` int(10) NOT NULL,
  `acteur_id` int(10) NOT NULL,
  `film_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `acteur_film`
--

INSERT INTO `acteur_film` (`id`, `acteur_id`, `film_id`) VALUES
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
  `annee_sortie` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `film`
--

INSERT INTO `film` (`id_film`, `titre`, `description`, `annee_sortie`) VALUES
(1, 'Tueurs nés', 'Un couple de tueurs, Mickey et Mallory, se servent des médias jusqu\'à devenir des stars de l\'actualité', 1994),
(2, 'Reservoir Dogs', 'Apres un hold-up manque, des cambrioleurs de haut vol font leurs comptes dans une confrontation violente, pour decouvrir lequel d\'entre eux les a trahis.', 1992),
(5, 'True Romance', 'Le jour de son anniversaire, Clarence Worley rencontre la splendide Alabama dans un cinéma miteux. Coup de foudre immédiat. Après une nuit d\'amour, Alabama avoue a Clarence qu\'elle a été en fait engagée par ', 1993),
(6, 'The Royal Tenenbaum', 'Pour rassembler sa famille, Royal Tenenbaum fait croire à son ex-femme et à ses enfants qu\'il est atteint d\'un mal incurable et qu\'il ne lui reste que quelques semaines à vivre.', 2001),
(7, 'Fight club', 'Le film démarre sur le plan du personnage principal (Edward Norton) à qui on a enfoncé un pistolet dans la bouche et dont on entend la voix en monologue qui se remémore comment il en est arrivé là', 1999),
(8, 'Drive', 'Un jeune homme solitaire, conduit le jour à Hollywood pour le cinéma en tant que cascadeur et la nuit pour des truands', 2011),
(9, 'Mary Poppins', 'Rien ne va plus dans la famille Banks. La nurse vient de donner ses huit jours. Et ni M. Banks, banquier d affaire, ni son épouse, suffragette active, ne peuvent s\'occuper des enfants Jane et Michaël. Ces derniers passent alors une annonce tout à fait fantaisiste pour trouver une nouvelle nurse. C\'est Mary Poppins qui répond et apparaît dès le lendemain, portée par le vent d\'Est. Elle entraîne aussitôt les enfants dans son univers merveilleux. Un des plus célèbres films de la production Disney.', 1965),
(10, 'Billy Elliot', 'Dans un petit village minier du Nord-Est de l\'Angleterre, Billy, onze ans, découvre avec stupeur qu\'un cours de danse partage désormais les mêmes locaux que son club de boxe. D\'abord effaré, il devient peu à peu fasciné par la magie de la gestuelle du ballet, activité pourtant trop peu virile au regard de son père et de son frère Tony, mineurs en grève. Billy abandonne les gants de cuir pour assister discrètement aux leçons de danse professées par Mme Wilkinson. Repérant immédiatement un talent potentiel, elle retrouve une nouvelle énergie devant les espoirs que constitue Billy.Les frustrations larvées explosent au grand jour quand son père et son frère découvrent que Billy a dépensé l\'argent consacré au cours de boxe pour des cours de danse.Partagé entre une famille en situation de crise et un professeur de ballet têtu, le jeune garçon embarque alors dans un voyage à la découverte de lui-même', 1999),
(11, 'Les autres', 'En 1945, dans une immense demeure victorienne isolée sur l\'île de Jersey située au large de la Normandie, vit Grace, une jeune femme pieuse, et ses deux enfants, Anne et Nicholas. Les journées sont longues pour cette mère de famille qui passe tout son temps à éduquer ses enfants en leur inculquant ses principes religieux. Atteints d\'un mal étrange, Anne et Nicholas ne doivent en aucun cas être exposés à la lumière du jour. Ils vivent donc reclus dans ce manoir obscur, tous rideaux tirés.Un jour d\'épais brouillard, trois personnes frappent à la porte du manoir isolé, en quête d’un travail. Grace, qui a justement besoin d\'aide pour l\'entretien du parc ainsi que d’une nouvelle nounou pour ses enfants, les engage. Dès lors, des événements étranges surviennent dans la demeure...', 2001),
(12, 'Demain tout commence', 'Samuel vit sa vie sans attaches ni responsabilités, au bord de la mer sous le soleil du sud de la France, près des gens qu’il aime et avec qui il travaille sans trop se fatiguer. Jusqu’à ce qu’une de ses anciennes conquêtes lui laisse sur les bras un bébé de quelques mois, Gloria : sa fille ! Incapable de s’occuper d’un bébé et bien décidé à rendre l’enfant à sa mère, Samuel se précipite à Londres pour tenter de la retrouver, sans succès. 8 ans plus tard, alors que Samuel et Gloria ont fait leur vie à Londres et sont devenus inséparables, la mère de Gloria revient dans leur vie pour récupérer sa fille…', 2016),
(13, 'Les tuches', '', 2010),
(14, 'Legende de Kolovrat', 'Au 13eme siècle, un soldat amnesique fait vœu de se venger de l\'armee mongole qui a fouille son village', 2017),
(15, 'On the Milky Road', 'Sous le feu des balles	Kosta	un laitier	traverse la ligne de front chaque jour au péril de sa vie pour livrer ses précieux vivres aux soldats.', 2017),
(16, 'Beyond the Edge', 'Moscou contemporain Un joueur talentueux rassemble une équipe de personnes avec des pouvoirs surnaturels pour gagner gros dans un casino.', 2018);

-- --------------------------------------------------------

--
-- Structure de la table `genre`
--

CREATE TABLE `genre` (
  `id_genre` int(10) NOT NULL,
  `genre` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `genre`
--

INSERT INTO `genre` (`id_genre`, `genre`) VALUES
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
(11, 'Histoire'),
(12, 'Romance');

-- --------------------------------------------------------

--
-- Structure de la table `genre_id`
--

CREATE TABLE `genre_id` (
  `id` int(10) NOT NULL,
  `film_id` int(10) NOT NULL,
  `genre_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `genre_id`
--

INSERT INTO `genre_id` (`id`, `film_id`, `genre_id`) VALUES
(15, 1, 1),
(16, 1, 2),
(17, 1, 3),
(18, 2, 2),
(19, 2, 5),
(20, 5, 5),
(21, 5, 1),
(22, 5, 12),
(23, 6, 6),
(24, 6, 7),
(25, 7, 5),
(26, 7, 7),
(27, 8, 1),
(28, 8, 5),
(29, 9, 9),
(30, 9, 6),
(31, 9, 10),
(32, 10, 7),
(33, 11, 10),
(34, 11, 7),
(35, 11, 8),
(36, 12, 6),
(37, 12, 7),
(38, 13, 6),
(39, 14, 11),
(40, 15, 7),
(41, 16, 1),
(42, 16, 10);

-- --------------------------------------------------------

--
-- Structure de la table `image`
--

CREATE TABLE `image` (
  `id_image` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `image`
--

INSERT INTO `image` (`id_image`, `image`) VALUES
(1, 'projet_allocine\\assets\\image\\medias\\1.jpg'),
(2, 'projet_allocine\\assets\\image\\medias\\2.png'),
(3, 'projet_allocine\\assets\\image\\medias\\3.jpg\r\n'),
(4, 'projet_allocine\\assets\\image\\medias\\4.jpg'),
(5, 'projet_allocine\\assets\\image\\medias\\5.jpg'),
(6, 'projet_allocine\\assets\\image\\medias\\6.jpg'),
(7, 'projet_allocine\\assets\\image\\medias\\7.jpg'),
(8, 'projet_allocine\\assets\\image\\medias\\8.jpg'),
(9, 'projet_allocine\\assets\\image\\medias\\9.jpg'),
(10, 'projet_allocine\\assets\\image\\medias\\10.jpg'),
(11, 'projet_allocine\\assets\\image\\medias\\11.jpg'),
(12, 'projet_allocine\\assets\\image\\medias\\12.jpg'),
(13, 'projet_allocine\\assets\\image\\medias\\13.jpg'),
(14, 'projet_allocine\\assets\\image\\medias\\14.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `image_film`
--

CREATE TABLE `image_film` (
  `id` int(11) NOT NULL,
  `id_film` int(11) NOT NULL,
  `id_image` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `image_film`
--

INSERT INTO `image_film` (`id`, `id_film`, `id_image`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 5, 3),
(4, 6, 4),
(5, 7, 5),
(6, 8, 6),
(7, 9, 7),
(8, 10, 8),
(9, 11, 9),
(10, 12, 10),
(11, 13, 11),
(12, 14, 12),
(13, 15, 13),
(14, 16, 14);

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
-- Structure de la table `realisateur_film`
--

CREATE TABLE `realisateur_film` (
  `id` int(11) NOT NULL,
  `realisateur_id` int(10) NOT NULL,
  `film_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `realisateur_film`
--

INSERT INTO `realisateur_film` (`id`, `realisateur_id`, `film_id`) VALUES
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
(42, 13, 15);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `acteur`
--
ALTER TABLE `acteur`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `acteur_film`
--
ALTER TABLE `acteur_film`
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
-- Index pour la table `genre_id`
--
ALTER TABLE `genre_id`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id_image`);

--
-- Index pour la table `image_film`
--
ALTER TABLE `image_film`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `realisateur`
--
ALTER TABLE `realisateur`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `realisateur_film`
--
ALTER TABLE `realisateur_film`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `acteur`
--
ALTER TABLE `acteur`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT pour la table `acteur_film`
--
ALTER TABLE `acteur_film`
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
  MODIFY `id_genre` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `genre_id`
--
ALTER TABLE `genre_id`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT pour la table `image`
--
ALTER TABLE `image`
  MODIFY `id_image` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `image_film`
--
ALTER TABLE `image_film`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `realisateur`
--
ALTER TABLE `realisateur`
  MODIFY `id` int(150) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `realisateur_film`
--
ALTER TABLE `realisateur_film`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
