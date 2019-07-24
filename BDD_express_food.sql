-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3307
-- Généré le :  mer. 24 juil. 2019 à 16:08
-- Version du serveur :  10.3.14-MariaDB
-- Version de PHP :  7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `express_food`
--

-- --------------------------------------------------------

--
-- Structure de la table `administrateur`
--

DROP TABLE IF EXISTS `administrateur`;
CREATE TABLE IF NOT EXISTS `administrateur` (
  `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mot_de_passe` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `administrateur`
--

INSERT INTO `administrateur` (`id`, `nom`, `prenom`, `email`, `mot_de_passe`) VALUES
(1, 'Arpin', 'Thomas', 'arpin.t@expressfood.com', 'yjM46k6X2Y'),
(2, 'Pelland', 'Philippe', 'pelland.p@expressfood.com', '68UvT3Nrq9'),
(3, 'Lassaux', 'Colinne', 'lassaux.c@expressfood.com', 'dG678nD3Ea'),
(4, 'Langlet', 'Melisande', 'langlet.m@expressfood.com', 'sJ6p496BNx');

-- --------------------------------------------------------

--
-- Structure de la table `adresse_client`
--

DROP TABLE IF EXISTS `adresse_client`;
CREATE TABLE IF NOT EXISTS `adresse_client` (
  `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `rue` varchar(150) NOT NULL,
  `code_postal` int(5) DEFAULT NULL,
  `ville` varchar(45) NOT NULL,
  `pos_latitude` float DEFAULT NULL,
  `pos_longitude` float DEFAULT NULL,
  `client_id` smallint(5) UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user_id` (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `adresse_client`
--

INSERT INTO `adresse_client` (`id`, `rue`, `code_postal`, `ville`, `pos_latitude`, `pos_longitude`, `client_id`) VALUES
(1, '15 rue de l\'église', 75005, 'Paris', 1.12585, -54.1259, 3),
(2, '3 avenue Kleber', 75012, 'Paris', 22.5466, 33.1249, 4),
(3, '35 avenue des champs elysées', 75020, 'Paris', 44.1259, 44.125, 7),
(4, '37 rue de turbigo', 75008, 'Paris', -11.1585, -56.1586, 3),
(5, '28 place de la Nation', 75001, 'Paris', 45.1254, 12.1259, 9),
(6, '14 place des vosges', 75004, 'Paris', 57.5647, 45.2457, 4),
(7, '23 rue de montmartre', 75010, 'Paris', 57.5647, 45.2457, 7),
(8, '45 rue marboeuf', 75020, 'Paris', 57.5647, 45.2457, 1),
(9, '10 place du tertre', 75012, 'Paris', 57.5647, 45.2457, 7),
(10, '144 avenue de la république', 75017, 'Paris', 57.5647, 45.2457, 1),
(11, '22 rue de saint denis', 75018, 'Paris', 57.5647, 45.2457, 9),
(12, '364 avenue du faubourg du temple', 75010, 'Paris', 57.5647, 45.2457, 4),
(13, '30 Rue du Faubourg Saint-Denis', 75010, 'Paris', 48.8606, 2.3521, 2),
(14, '146 Avenue du Maine', 75014, 'Paris', 48.8607, 2.41024, 2),
(15, '32 Boulevard de Bonne Nouvelle', 75010, 'Paris', 48.8607, 2.4011, 5),
(16, '28 Rue Cler', 75007, 'Paris', 48.8602, 2.35278, 6),
(17, '343 Rue Lecourbe', 75015, 'Paris', 48.8602, 2.78978, 6),
(18, '166 Avenue de Suffren', 75015, 'Paris', 48.8608, 2.5001, 8);

-- --------------------------------------------------------

--
-- Structure de la table `carte_credit`
--

DROP TABLE IF EXISTS `carte_credit`;
CREATE TABLE IF NOT EXISTS `carte_credit` (
  `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `numero` bigint(20) NOT NULL,
  `cvv` smallint(3) NOT NULL,
  `date_expiration` varchar(50) DEFAULT NULL,
  `reseau` varchar(50) NOT NULL,
  `user` smallint(5) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user_id_cards` (`user`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `carte_credit`
--

INSERT INTO `carte_credit` (`id`, `nom`, `numero`, `cvv`, `date_expiration`, `reseau`, `user`) VALUES
(1, 'cornet', 4976912629610914, 761, '10/2019', 'Visa', 1),
(2, 'cornet', 4811029922339890, 169, '01/2020', 'Mastercard', 2),
(3, 'dupond', 4539093679976875, 487, '05/2021', 'Visa', 3),
(4, 'foucault', 4058803001118710, 102, '08/2022', 'Visa', 4),
(5, 'hanouna', 4110355613046777, 805, '12/2023', 'Mastercard', 5),
(6, 'dumerc', 4730694241426070, 701, '03/2019', 'Visa', 6),
(7, 'achouline', 4407357264043832, 658, '11/2021', 'American Express', 7),
(8, 'leblanc', 4778893252930359, 456, '04/2020', 'Visa', 8),
(9, 'cornet', 4976912629610914, 789, '04/2019', 'Visa', 1),
(10, 'leblanc', 4317828277151019, 123, '09/2025', 'Visa', 8),
(11, 'dumerc', 4852454057698193, 159, '11/2019', 'Mastercard', 6),
(12, 'dupond', 4693093212912694, 753, '07/2022', 'Visa', 3),
(13, 'andrieu', 4563246323181842, 654, '06/2022', 'Mastercard', 9),
(14, 'foucault', 4057902257760604, 987, '12/2024', 'Mastercard', 4),
(15, 'achouline', 4193868727175969, 321, '02/2020', 'American Express', 7);

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

DROP TABLE IF EXISTS `categorie`;
CREATE TABLE IF NOT EXISTS `categorie` (
  `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nom_categorie` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`id`, `nom_categorie`) VALUES
(1, 'plat principal'),
(2, 'dessert');

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `telephone` varchar(10) DEFAULT NULL,
  `date_inscription` date NOT NULL,
  `mot_de_passe` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`id`, `nom`, `prenom`, `email`, `telephone`, `date_inscription`, `mot_de_passe`) VALUES
(1, 'cornet', 'clement', 'cornet.clement@gmail.com', '0626824812', '2019-02-20', '6eAQ56Euk5'),
(2, 'cornet', 'adrien', 'cornet.adrien@gmail.com', '0624844747', '2019-06-02', '7Q6CZ26jnj'),
(3, 'dupond', 'françois', 'dupond.françois@gmail.com', '0726224882', '2019-04-22', '882pYuMSj2'),
(4, 'foucault', 'caroline', 'foucault.caroline@gmail.com', '0126474883', '2019-02-18', 'W5n67vcHF9'),
(5, 'hanouna', 'farid', 'hanouna.farid@gmail.com', '0610834801', '2019-01-12', '8m9b7Z7xWA'),
(6, 'dumerc', 'celine', 'dumerc.celine@gmail.com', '0144281678', '2019-05-05', '8Ff6MQ9xq4'),
(7, 'achouline', 'anissa', 'achouline.anissa@gmail.com', '0624789698', '2019-03-20', '5Hi2M4Eep9'),
(8, 'leblanc', 'edouard', 'leblanc.edouard@gmail.com', '0702252789', '2019-04-11', '6BRG69rse8'),
(9, 'andrieu', 'jennyfer', 'andrieu.jennyfer@gmail.com', '0658595412', '2019-02-28', 'q564Z2AYkp');

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

DROP TABLE IF EXISTS `commande`;
CREATE TABLE IF NOT EXISTS `commande` (
  `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `reference` varchar(50) NOT NULL,
  `nombre_plats` smallint(6) DEFAULT NULL,
  `prix_total` float DEFAULT NULL,
  `statut_paiement` tinyint(1) DEFAULT NULL,
  `client_id` smallint(5) UNSIGNED NOT NULL,
  `adresse_livraison` smallint(5) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user` (`client_id`),
  KEY `fk_adresse_client_id` (`adresse_livraison`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `commande`
--

INSERT INTO `commande` (`id`, `reference`, `nombre_plats`, `prix_total`, `statut_paiement`, `client_id`, `adresse_livraison`) VALUES
(1, 'przv8x011a', 3, 29.5, 1, 2, 13),
(2, '7stefp11ah', 3, 14.5, 1, 2, 13),
(3, 'ojfjwvjvt4', 1, 13.5, 1, 5, 15),
(4, 'jaf1p7ti6', 5, 9.5, 1, 3, 4),
(5, '9fmut13endq', 1, 40.5, 0, 3, 4),
(6, '79rjr51sysp', 2, 12, 1, 4, 6),
(7, 'mv4bpy4vcag', 4, 17.5, 1, 4, 12),
(8, 'l6hwi662ldh', 1, 28, 1, 6, 16),
(9, 'lj57ai0m3xn', 6, 3.5, 1, 6, 16),
(10, 'rmrg7hkchmi', 3, 29.5, 0, 9, 5);

-- --------------------------------------------------------

--
-- Structure de la table `commande_plats`
--

DROP TABLE IF EXISTS `commande_plats`;
CREATE TABLE IF NOT EXISTS `commande_plats` (
  `commande` smallint(5) UNSIGNED NOT NULL,
  `plat_du_jour` smallint(5) UNSIGNED NOT NULL,
  KEY `fk_commande_id` (`commande`),
  KEY `fk_plat_jour_id` (`plat_du_jour`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `commande_plats`
--

INSERT INTO `commande_plats` (`commande`, `plat_du_jour`) VALUES
(1, 2),
(1, 2),
(1, 3),
(2, 2),
(2, 1),
(2, 4),
(3, 2),
(4, 4),
(4, 4),
(4, 4),
(4, 4),
(4, 4),
(5, 1),
(6, 1),
(6, 3),
(7, 1),
(7, 2),
(7, 3),
(7, 4),
(8, 3),
(9, 2),
(9, 2),
(9, 2),
(9, 2),
(9, 2),
(9, 2),
(10, 1),
(10, 4),
(10, 4);

-- --------------------------------------------------------

--
-- Structure de la table `etat_commande`
--

DROP TABLE IF EXISTS `etat_commande`;
CREATE TABLE IF NOT EXISTS `etat_commande` (
  `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `etat` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `etat_commande`
--

INSERT INTO `etat_commande` (`id`, `etat`) VALUES
(1, 'en attente'),
(2, 'en cours'),
(3, 'livrée'),
(4, 'annulée');

-- --------------------------------------------------------

--
-- Structure de la table `livreur`
--

DROP TABLE IF EXISTS `livreur`;
CREATE TABLE IF NOT EXISTS `livreur` (
  `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `mot_de_passe` varchar(50) NOT NULL,
  `telephone` varchar(10) NOT NULL,
  `pos_latitude` float DEFAULT NULL,
  `pos_longitude` float DEFAULT NULL,
  `statut` smallint(5) UNSIGNED NOT NULL,
  `nb_commandes_livrees` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_statut_livreur_id` (`statut`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `livreur`
--

INSERT INTO `livreur` (`id`, `nom`, `prenom`, `mot_de_passe`, `telephone`, `pos_latitude`, `pos_longitude`, `statut`, `nb_commandes_livrees`) VALUES
(1, 'Chartier', 'Fred', 'sJ6p496BNx', '0625789610', 48.8595, 2.35736, 1, 0),
(2, 'Rossignol', 'Clément', '7Zbe89P8hK', '0645790622', 49.8595, 5.35564, 1, 0),
(3, 'Forlini', 'Philippe', 'h2Z2b4r6SC', '0618789647', 47.8595, 4.35456, 3, 3),
(4, 'Fortier', 'Laurent', '6K5B49gmjN', '0625809683', 47.8585, 2.35786, 3, 10),
(5, 'Endren', 'Kevin', 'wS54w74zBQ', '0725819602', 54.8599, 3.35745, 2, 5),
(6, 'Randall', 'Pedro', 'e9Q57mVd6K', '0625722601', 41.8592, 3.45836, 2, 7),
(7, 'Miller', 'Chris', '68UvT3Nrq9', '0725289644', 44.9995, 1.35459, 3, 1);

-- --------------------------------------------------------

--
-- Structure de la table `plat_du_jour`
--

DROP TABLE IF EXISTS `plat_du_jour`;
CREATE TABLE IF NOT EXISTS `plat_du_jour` (
  `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `date_ajout` date DEFAULT NULL,
  `numero_plat` varchar(50) NOT NULL,
  `produit` smallint(5) UNSIGNED DEFAULT NULL,
  `quantite` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_produit_id` (`produit`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `plat_du_jour`
--

INSERT INTO `plat_du_jour` (`id`, `date_ajout`, `numero_plat`, `produit`, `quantite`) VALUES
(1, '2019-07-01', 'plat n1', 3, 250),
(2, '2019-07-01', 'plat n2', 5, 180),
(3, '2019-07-01', 'plat n3', 7, 200),
(4, '2019-07-01', 'plat n4', 9, 220);

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

DROP TABLE IF EXISTS `produit`;
CREATE TABLE IF NOT EXISTS `produit` (
  `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `ingredients` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `prix` float DEFAULT NULL,
  `date_ajout` date DEFAULT NULL,
  `categorie` smallint(5) UNSIGNED DEFAULT NULL,
  `ajoute_par` smallint(5) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_categorie_id` (`categorie`),
  KEY `fk_admin_id` (`ajoute_par`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`id`, `nom`, `description`, `ingredients`, `image`, `prix`, `date_ajout`, `categorie`, `ajoute_par`) VALUES
(1, 'Boeuf bourguignon', 'Le bœuf bourguignon est une recette de cuisine d\'estouffade de bœuf, traditionnelle de la cuisine bourguignonne, cuisinée au vin rouge de Bourgogne, avec une garniture de champignons, de petits oignons et de lardons.', 'Boeuf français, champignons, oignons, vin rouge AOP', 'img/boeuf-bourguignon.jpg', 15.5, '2019-06-15', 1, 1),
(2, 'Tarte aux pommes', 'La tarte aux pommes est un type de tarte sucrée, faite d\'une pâte feuilletée ou brisée garnie de pommes émincées. Cette tarte peut être consommée chaude, tiède ou froide.', 'pâte feuilletée, pommes du limousin, beurre AOP, sucre vanillé', 'img/tarte_pommes.jpg', 3.5, '2019-12-12', 2, 1),
(3, 'Blanquette de veau', 'La blanquette ou blanquette de veau ou blanquette de veau à l\'ancienne est une recette de cuisine traditionnelle de la cuisine française, à base de ragoût de viande de veau marinée', 'Veau AOP, oeufs, lait, champignons, carottes, riz', 'img/blanquette_veau.jpg', 10.5, '2018-11-24', 1, 4),
(4, 'Fondant au chocolat', 'Fondant au chocolat ou moelleux tout choco, le succès de ce petit gâteau au coeur fondant ou coulant est incroyable.', 'chocolat superieur, beurre AOP, oeufs, sucre, vanille', 'img/fondant_chocolat.jpg', 3.5, '2018-09-26', 2, 4),
(5, 'Tajines aux legumes', 'Un mélange de légumes aux saveurs orientales qui vous met les papilles en folie.', 'Aubergines, carottes, navets, patates douces, epices', 'img/tajine_legumes.jpg', 8.5, '2018-07-14', 1, 2),
(6, 'Poulet basquaise', 'Le poulet basquaise ou poulet à la basquaise est une spécialité culinaire de cuisine traditionnelle emblématique de la cuisine basque.', 'Poulet fermier AOP, pommes de terre, piperade, piment d\'espelette, epices', 'img/poulet_basquaise.jpg', 12.5, '2018-06-23', 1, 3),
(7, 'Tarte au citron meringuée', 'La tarte au citron est une tarte sucrée garnie de crème à base de citron. Elle ne comprend aucun fruit. La crème est un mélange d\'œufs, de sucre, de jus de citron et de zeste de citron.', 'pâte brisée, citrons de menton, beurre AOP, meringue', 'img/tarte_citron.jpg', 4.5, '2019-01-12', 2, 3),
(8, 'Curry d\'agneau à l’indienne', 'Viande d\'agneau cuite à base température et son mélange d\'epices, voyage en Inde assuré !', 'Viande d\'agneau, riz, epices', 'img/curry_agneau.jpg', 13.5, '2019-02-18', 1, 4),
(9, 'Cheese cake', 'Dessert sucré composé d\'un mélange de fromage à la crème, d\'œufs, de sucre et de parfums de vanille et de citron, sur une croûte de miettes de biscuits.', 'fromage blanc, beurre AOP, sucre, oeufs, biscuit', 'img/cheese_cake.jpg', 3.5, '2018-11-23', 2, 1),
(10, 'Gratin dauphinois', 'Le gratin dauphinois, ou pommes de terre à la dauphinoise, est un mets français d\'origine dauphinoise, à base de pommes de terre et de lait.', 'pommes de terre, lait, emmental, muscade', 'img/gratin_dauphinois.jpg', 8.5, '2019-05-22', 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `statut_commande`
--

DROP TABLE IF EXISTS `statut_commande`;
CREATE TABLE IF NOT EXISTS `statut_commande` (
  `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `temps_livraison` time DEFAULT NULL,
  `commande_id` smallint(5) UNSIGNED NOT NULL,
  `livreur_id` smallint(5) UNSIGNED DEFAULT NULL,
  `etat` smallint(5) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `commande` (`commande_id`),
  KEY `fk_livreur` (`livreur_id`),
  KEY `fk_etat_commande` (`etat`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `statut_commande`
--

INSERT INTO `statut_commande` (`id`, `temps_livraison`, `commande_id`, `livreur_id`, `etat`) VALUES
(1, '15:00:00', 3, 4, 2),
(2, '00:00:00', 5, NULL, 1),
(3, '00:00:00', 7, 4, 3),
(4, '08:00:00', 6, 4, 2),
(5, '00:00:00', 10, NULL, 4),
(6, '05:30:00', 1, 7, 2),
(7, '00:00:00', 2, NULL, 1),
(8, '00:00:00', 4, NULL, 4),
(9, '00:00:00', 8, 5, 3),
(10, '07:30:00', 9, 3, 2);

-- --------------------------------------------------------

--
-- Structure de la table `statut_livreur`
--

DROP TABLE IF EXISTS `statut_livreur`;
CREATE TABLE IF NOT EXISTS `statut_livreur` (
  `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `statut` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `statut_livreur`
--

INSERT INTO `statut_livreur` (`id`, `statut`) VALUES
(1, 'offline'),
(2, 'en attente'),
(3, 'en livraison');

-- --------------------------------------------------------

--
-- Structure de la table `stock_livreur`
--

DROP TABLE IF EXISTS `stock_livreur`;
CREATE TABLE IF NOT EXISTS `stock_livreur` (
  `livreur_id` smallint(5) UNSIGNED NOT NULL,
  `plat_id` smallint(5) UNSIGNED NOT NULL,
  `quantite` smallint(6) DEFAULT NULL,
  KEY `fk_livreur_id` (`livreur_id`),
  KEY `fk_plat_id` (`plat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `stock_livreur`
--

INSERT INTO `stock_livreur` (`livreur_id`, `plat_id`, `quantite`) VALUES
(1, 1, 3),
(1, 2, 10),
(1, 3, 10),
(1, 4, 10),
(2, 1, 10),
(2, 2, 10),
(2, 3, 10),
(2, 4, 10),
(3, 1, 10),
(3, 2, 10),
(3, 3, 10),
(3, 4, 10),
(4, 1, 10),
(4, 2, 10),
(4, 3, 10),
(4, 4, 10),
(5, 1, 10),
(5, 2, 10),
(5, 3, 10),
(5, 4, 10),
(6, 1, 10),
(6, 2, 10),
(6, 3, 10),
(6, 4, 10),
(7, 1, 10),
(7, 2, 10),
(7, 3, 10),
(7, 4, 10);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `adresse_client`
--
ALTER TABLE `adresse_client`
  ADD CONSTRAINT `fk_user_id` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`);

--
-- Contraintes pour la table `carte_credit`
--
ALTER TABLE `carte_credit`
  ADD CONSTRAINT `fk_test` FOREIGN KEY (`user`) REFERENCES `client` (`id`),
  ADD CONSTRAINT `fk_user_id_cards` FOREIGN KEY (`user`) REFERENCES `client` (`id`);

--
-- Contraintes pour la table `commande`
--
ALTER TABLE `commande`
  ADD CONSTRAINT `fk_adresse_client_id` FOREIGN KEY (`adresse_livraison`) REFERENCES `adresse_client` (`id`),
  ADD CONSTRAINT `fk_user` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`);

--
-- Contraintes pour la table `commande_plats`
--
ALTER TABLE `commande_plats`
  ADD CONSTRAINT `fk_commande_id` FOREIGN KEY (`commande`) REFERENCES `commande` (`id`),
  ADD CONSTRAINT `fk_plat_jour_id` FOREIGN KEY (`plat_du_jour`) REFERENCES `plat_du_jour` (`id`);

--
-- Contraintes pour la table `livreur`
--
ALTER TABLE `livreur`
  ADD CONSTRAINT `fk_statut_livreur_id` FOREIGN KEY (`statut`) REFERENCES `statut_livreur` (`id`);

--
-- Contraintes pour la table `plat_du_jour`
--
ALTER TABLE `plat_du_jour`
  ADD CONSTRAINT `fk_produit_id` FOREIGN KEY (`produit`) REFERENCES `produit` (`id`);

--
-- Contraintes pour la table `produit`
--
ALTER TABLE `produit`
  ADD CONSTRAINT `fk_admin_id` FOREIGN KEY (`ajoute_par`) REFERENCES `administrateur` (`id`),
  ADD CONSTRAINT `fk_categorie_id` FOREIGN KEY (`categorie`) REFERENCES `categorie` (`id`);

--
-- Contraintes pour la table `statut_commande`
--
ALTER TABLE `statut_commande`
  ADD CONSTRAINT `fk_commande` FOREIGN KEY (`commande_id`) REFERENCES `commande` (`id`),
  ADD CONSTRAINT `fk_etat_commande` FOREIGN KEY (`etat`) REFERENCES `etat_commande` (`id`),
  ADD CONSTRAINT `fk_livreur` FOREIGN KEY (`livreur_id`) REFERENCES `livreur` (`id`);

--
-- Contraintes pour la table `stock_livreur`
--
ALTER TABLE `stock_livreur`
  ADD CONSTRAINT `fk_livreur_id` FOREIGN KEY (`livreur_id`) REFERENCES `livreur` (`id`),
  ADD CONSTRAINT `fk_plat_id` FOREIGN KEY (`plat_id`) REFERENCES `plat_du_jour` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
