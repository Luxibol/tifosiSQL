-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 26 fév. 2025 à 08:58
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `tifosi`
--

USE tifosi;

--
-- Déchargement des données de la table `marque`
--

INSERT INTO `marque` (`id_marque`, `nom`) VALUES
(1, 'Coca-cola'),
(2, 'Cristalline'),
(3, 'Monster'),
(4, 'Pepsico');


--
-- Déchargement des données de la table `boisson`
--

INSERT INTO `boisson` (`id_boisson`, `nom`, `id_marque`) VALUES
(1, 'Coca-cola zéro', 1),
(2, 'Coca-cola original', 1),
(3, 'Fanta citron', 1),
(4, 'Fanta orange', 1),
(5, 'Capri-sun', 1),
(6, 'Pepsi', 4),
(7, 'Pepsi Max Zéro', 4),
(8, 'Lipton zéro citron', 4),
(9, 'Lipton Peach', 4),
(10, 'Monster energy ultra gold', 3),
(11, 'Monster energy ultra blue', 3),
(12, 'Eau de source', 2);

--
-- Déchargement des données de la table `focaccia`
--

INSERT INTO `focaccia` (`id_focaccia`, `nom`, `prix`) VALUES
(1, 'Mozaccia', 9.80),
(2, 'Gorgonzollaccia', 10.80),
(3, 'Raclaccia', 8.90),
(4, 'Emmentalaccia', 9.80),
(5, 'Tradizione', 8.90),
(6, 'Hawaienne', 11.20),
(7, 'Américaine', 10.80),
(8, 'Paysanne', 12.80);

--
-- Déchargement des données de la table `ingredient`
--

INSERT INTO `ingredient` (`id_ingredient`, `nom`) VALUES
(1, 'Ail'),
(2, 'Ananas'),
(3, 'Artichaut'),
(4, 'Bacon'),
(6, 'Base crème'),
(5, 'Base Tomate'),
(7, 'Champignon'),
(8, 'Chevre'),
(9, 'Cresson'),
(10, 'Emmental'),
(11, 'Gorgonzola'),
(12, 'Jambon cuit'),
(13, 'Jambon fumé'),
(25, 'Mozarella'),
(14, 'Oeuf'),
(15, 'Oignon'),
(16, 'Olive noire'),
(17, 'Olive verte'),
(18, 'Parmesan'),
(19, 'Piment'),
(20, 'Poivre'),
(21, 'Pomme de terre'),
(22, 'Raclette'),
(23, 'Salami'),
(24, 'Tomate cerise');

--
-- Déchargement des données de la table `comprend`
--

INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`, `quantite`) VALUES
(1, 1, 2),
(1, 3, 20),
(1, 5, 200),
(1, 7, 40),
(1, 9, 20),
(1, 13, 80),
(1, 16, 20),
(1, 18, 50),
(1, 20, 1),
(1, 25, 50),
(2, 1, 2),
(2, 5, 200),
(2, 7, 40),
(2, 9, 20),
(2, 11, 50),
(2, 16, 20),
(2, 18, 50),
(2, 20, 1),
(3, 1, 2),
(3, 5, 200),
(3, 7, 40),
(3, 9, 20),
(3, 18, 50),
(3, 20, 1),
(3, 22, 50),
(4, 6, 200),
(4, 7, 40),
(4, 9, 20),
(4, 10, 50),
(4, 15, 20),
(4, 18, 50),
(4, 20, 1),
(5, 5, 200),
(5, 7, 80),
(5, 9, 20),
(5, 12, 80),
(5, 16, 10),
(5, 17, 10),
(5, 18, 50),
(5, 20, 1),
(5, 25, 50),
(6, 2, 40),
(6, 4, 80),
(6, 5, 200),
(6, 9, 20),
(6, 16, 20),
(6, 18, 50),
(6, 19, 2),
(6, 20, 1),
(6, 25, 50),
(7, 4, 80),
(7, 5, 200),
(7, 9, 20),
(7, 16, 20),
(7, 18, 50),
(7, 20, 1),
(7, 21, 40),
(7, 25, 50),
(8, 1, 2),
(8, 3, 20),
(8, 6, 200),
(8, 7, 40),
(8, 8, 50),
(8, 9, 20),
(8, 13, 80),
(8, 14, 50),
(8, 16, 20),
(8, 18, 50),
(8, 20, 1),
(8, 21, 80);

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
