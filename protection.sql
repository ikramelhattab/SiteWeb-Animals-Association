-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3305
-- Généré le :  lun. 10 fév. 2020 à 22:51
-- Version du serveur :  5.7.17-log
-- Version de PHP :  7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `protection`
--

-- --------------------------------------------------------

--
-- Structure de la table `actualites`
--

CREATE TABLE `actualites` (
  `id` int(10) UNSIGNED NOT NULL,
  `titre` text COLLATE utf8mb4_unicode_ci,
  `image` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `animals`
--

CREATE TABLE `animals` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_type` int(11) DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `annee_naiss` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `situation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prix` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `animals`
--

INSERT INTO `animals` (`id`, `id_type`, `image`, `annee_naiss`, `situation`, `prix`, `created_at`, `updated_at`, `deleted_at`, `description`) VALUES
(1, 1, '[\"animals\\\\December2019\\\\0mZfh1gshHq5z66I7TIl.jpg\"]', '2019', 'option2', 300, '2019-12-17 11:18:00', '2020-01-12 20:17:51', NULL, 'Le chihuahua est le chien le plus petit du monde. Son nom vient de l’état mexicain homonyme. Il pèse quelquefois moins d’un kilogramme mais la fourchette idéale est comprise entre 1,5 et 3 kg. Le standard n\'admet pas de chien de poids plus élevé'),
(2, 1, '[\"animals\\\\December2019\\\\RXZ6cRlSusChhVNO97PT.jpg\",\"animals\\\\January2020\\\\6jzQCif6aRm8nQKmenpW.jpg\"]', '2020', 'option2', 2400, '2019-12-17 11:19:00', '2020-01-12 20:16:42', NULL, 'Le carlin est une race de chien provenant de Chine et existant en Europe depuis au moins le XVIᵉ siècle. Il est connu sous l\'appellation de Pug aux États-Unis, au Brésil en Australie et en Angleterre et de Mops en Allemagne et en Russie. W'),
(3, 1, '[\"animals\\\\December2019\\\\GoAVGCHvd0wdovF6PJ7n.jpg\",\"animals\\\\January2020\\\\9UBqyWcaVfQTA05dgRlw.png\"]', '2019', 'option2', 750, '2019-12-17 11:19:00', '2020-01-12 20:17:31', NULL, 'Le chihuahua est le chien le plus petit du monde. Son nom vient de l’état mexicain homonyme. Il pèse quelquefois moins d’un kilogramme mais la fourchette idéale est comprise entre 1,5 et 3 kg. Le standard n\'admet pas de chien de poids plus élevé'),
(4, 2, '[\"animals\\\\January2020\\\\Pg3lGtscAIiisiqT2UsG.PNG\",\"animals\\\\January2020\\\\JZh8eQsE6tXKMc5mJmWZ.jpg\"]', '2020', 'option1', 1500, '2020-01-12 08:42:00', '2020-01-12 20:16:12', NULL, 'Le retriever du Labrador, plus communément appelé labrador retriever ou plus simplement labrador, est une race de chiens originaire du Royaume-Uni. C\'est un chien de taille moyenne, à l\'allure ronde et robuste, de couleur entièrement sable, chocolat'),
(5, NULL, '[\"animals\\\\January2020\\\\fXLyWkvdFb0qt2Hy7Wet.jpg\",\"animals\\\\January2020\\\\I6sge7QBFxZcn6fUbnyp.jpg\",\"animals\\\\January2020\\\\wHUBgbs3Ze9ytvA0GnJu.jpg\"]', '2020', 'option1', 750, '2020-01-13 07:04:32', '2020-01-13 07:04:32', NULL, 'Le chihuahua est le chien le plus petit du monde. Son nom vient de l’état mexicain homonyme. Il pèse quelquefois moins d’un kilogramme mais la fourchette idéale est comprise entre 1,5 et 3 kg. Le standard n\'admet pas de chien de poids plus élevé');

-- --------------------------------------------------------

--
-- Structure de la table `ausecours`
--

CREATE TABLE `ausecours` (
  `id` int(10) UNSIGNED NOT NULL,
  `adress_mail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` time DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2019-12-12 17:43:53', '2019-12-12 17:43:53'),
(2, NULL, 1, 'Category 2', 'category-2', '2019-12-12 17:43:53', '2019-12-12 17:43:53');

-- --------------------------------------------------------

--
-- Structure de la table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 3),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 5),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, '{}', 7),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, '{}', 15),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 12),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 13),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, '{}', 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\",\"taggable\":\"0\"}', 16),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 17),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, '{}', 14),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 0, 1, 1, 1, 1, 1, '{}', 2),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(31, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(48, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(70, 9, 'id', 'number', 'Id', 1, 0, 0, 0, 1, 0, '{}', 1),
(71, 9, 'type', 'text', 'Type', 0, 1, 1, 1, 1, 1, '{}', 2),
(72, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(73, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(74, 9, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 1, 0, 1, '{}', 5),
(75, 10, 'id', 'number', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(76, 10, 'id_type', 'number', 'Id Type', 0, 1, 1, 1, 1, 1, '{}', 2),
(77, 10, 'image', 'multiple_images', 'Image', 0, 1, 1, 1, 1, 1, '{}', 3),
(78, 10, 'annee_naiss', 'text', 'Annee Naiss', 0, 1, 1, 1, 1, 1, '{\"default\":\"2020\",\"options\":{\"option1\":\"2020\",\"option2\":\"2019\",\"option3\":\"2018\",\"option4\":\"2017\",\"option5\":\"2016\",\"option6\":\"2015\",\"option7\":\"2014\",\"option8\":\"2013\",\"option9\":\"2012\",\"option10\":\"2011\",\"option11\":\"2010\",\"option12\":\"2009\"}}', 4),
(79, 10, 'situation', 'select_dropdown', 'Situation', 0, 1, 1, 1, 1, 1, '{\"default\":\"sain\",\"options\":{\"option1\":\"sain\",\"option2\":\"malade\"}}', 5),
(80, 10, 'prix', 'text', 'Prix', 0, 1, 1, 1, 1, 1, '{}', 7),
(81, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 8),
(82, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(83, 10, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 0, 0, 0, '{}', 10),
(84, 10, 'animal_belongsto_types_animal_relationship', 'relationship', 'types_animals', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\TypesAnimal\",\"table\":\"types_animals\",\"type\":\"belongsTo\",\"column\":\"id_type\",\"key\":\"id\",\"label\":\"type\",\"pivot_table\":\"animals\",\"pivot\":\"0\",\"taggable\":\"0\"}', 11),
(85, 11, 'id', 'number', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(86, 11, 'titre', 'text', 'Titre', 0, 1, 1, 1, 1, 1, '{}', 2),
(87, 11, 'image', 'multiple_images', 'Image', 0, 1, 1, 1, 1, 1, '{}', 3),
(88, 11, 'description', 'text', 'Description', 0, 1, 1, 1, 1, 1, '{}', 4),
(89, 11, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(90, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(91, 11, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 1, 1, 1, '{}', 7),
(92, 12, 'id', 'number', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(93, 12, 'id_user', 'number', 'Id User', 0, 1, 1, 1, 1, 1, '{}', 2),
(94, 12, 'id_animal', 'number', 'Id Animal', 0, 1, 1, 1, 1, 1, '{}', 3),
(95, 12, 'date_achat', 'date', 'Date Achat', 0, 1, 1, 1, 1, 1, '{}', 4),
(96, 12, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(97, 12, 'updated_at', 'timestamp', 'Updated At', 0, 1, 1, 0, 0, 0, '{}', 6),
(98, 12, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 1, 1, 1, '{}', 7),
(99, 12, 'vent_belongsto_user_relationship', 'relationship', 'users', 0, 0, 0, 0, 0, 0, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"id_user\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"actualites\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(100, 12, 'vent_belongsto_animal_relationship', 'relationship', 'animals', 0, 0, 0, 0, 0, 0, '{\"model\":\"App\\\\Animal\",\"table\":\"animals\",\"type\":\"belongsTo\",\"column\":\"id_animal\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"actualites\",\"pivot\":\"0\",\"taggable\":\"0\"}', 9),
(101, 13, 'id', 'number', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(102, 13, 'id_user', 'number', 'Id User', 0, 1, 1, 1, 1, 1, '{}', 2),
(103, 13, 'prix', 'number', 'Prix', 0, 1, 1, 1, 1, 1, '{}', 3),
(104, 13, 'date_dona', 'date', 'Date Dona', 0, 1, 1, 1, 1, 1, '{}', 4),
(105, 13, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(106, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(107, 13, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 1, 1, 1, '{}', 7),
(108, 13, 'donation_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"id_user\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"actualites\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(109, 1, 'email_verified_at', 'timestamp', 'Email Verified At', 0, 1, 1, 1, 1, 1, '{}', 6),
(110, 1, 'prenom', 'text', 'Prenom', 0, 1, 1, 1, 1, 1, '{}', 4),
(111, 1, 'cin', 'text', 'Cin', 0, 1, 1, 1, 1, 1, '{}', 9),
(112, 1, 'telephone', 'text', 'Telephone', 0, 1, 1, 1, 1, 1, '{}', 10),
(113, 1, 'adress', 'text', 'Adress', 0, 1, 1, 1, 1, 1, '{}', 11),
(114, 10, 'description', 'text', 'Description', 0, 1, 1, 1, 1, 1, '{}', 6),
(115, 14, 'id', 'number', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(116, 14, 'adress_mail', 'text', 'Adress Mail', 0, 1, 1, 1, 1, 1, '{}', 2),
(117, 14, 'password', 'text', 'Password', 0, 1, 1, 1, 1, 1, '{}', 3),
(118, 14, 'subject', 'text', 'Subject', 0, 1, 1, 1, 1, 1, '{}', 4),
(119, 14, 'message', 'text', 'Message', 0, 1, 1, 1, 1, 1, '{}', 5),
(120, 14, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(121, 14, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(122, 14, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 1, 1, 1, '{}', 8);

-- --------------------------------------------------------

--
-- Structure de la table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2019-12-12 17:43:43', '2019-12-17 07:53:47'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2019-12-12 17:43:43', '2019-12-12 17:43:43'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2019-12-12 17:43:43', '2019-12-12 17:43:43'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2019-12-12 17:43:52', '2019-12-12 17:43:52'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2019-12-12 17:43:53', '2019-12-12 17:43:53'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2019-12-12 17:43:55', '2019-12-12 17:43:55'),
(9, 'types_animals', 'types-animals', 'Types Animal', 'Types Animals', NULL, 'App\\TypesAnimal', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-12-12 18:24:03', '2019-12-17 11:06:46'),
(10, 'animals', 'animals', 'Animal', 'Animals', NULL, 'App\\Animal', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-12-12 18:31:46', '2020-01-12 20:13:11'),
(11, 'actualites', 'actualites', 'Actualite', 'Actualites', NULL, 'App\\Actualite', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-12-12 18:52:33', '2019-12-12 18:52:33'),
(12, 'vents', 'vents', 'Vent', 'Vents', NULL, 'App\\Vent', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-12-12 19:11:33', '2019-12-13 00:06:52'),
(13, 'donations', 'donations', 'Donation', 'Donations', NULL, 'App\\Donation', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-12-12 19:16:26', '2019-12-13 00:05:47'),
(14, 'ausecours', 'ausecours', 'Ausecour', 'Ausecours', NULL, 'App\\Ausecour', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-01-12 20:33:28', '2020-01-12 20:33:28');

-- --------------------------------------------------------

--
-- Structure de la table `donations`
--

CREATE TABLE `donations` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `prix` double DEFAULT NULL,
  `date_dona` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2019-12-12 17:43:45', '2019-12-12 17:43:45');

-- --------------------------------------------------------

--
-- Structure de la table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2019-12-12 17:43:45', '2019-12-12 17:43:45', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2019-12-12 17:43:45', '2019-12-12 17:43:45', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2019-12-12 17:43:45', '2019-12-12 17:43:45', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2019-12-12 17:43:45', '2019-12-12 17:43:45', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2019-12-12 17:43:45', '2019-12-12 17:43:45', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 10, '2019-12-12 17:43:45', '2019-12-12 17:43:45', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 11, '2019-12-12 17:43:45', '2019-12-12 17:43:45', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 12, '2019-12-12 17:43:45', '2019-12-12 17:43:45', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 13, '2019-12-12 17:43:46', '2019-12-12 17:43:46', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 14, '2019-12-12 17:43:46', '2019-12-12 17:43:46', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 8, '2019-12-12 17:43:52', '2019-12-12 17:43:52', 'voyager.categories.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 6, '2019-12-12 17:43:54', '2019-12-12 17:43:54', 'voyager.posts.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 7, '2019-12-12 17:43:56', '2019-12-12 17:43:56', 'voyager.pages.index', NULL),
(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 13, '2019-12-12 17:43:59', '2019-12-12 17:43:59', 'voyager.hooks', NULL),
(17, 1, 'Types Animals', '', '_self', NULL, NULL, NULL, 16, '2019-12-12 18:24:03', '2019-12-12 18:24:03', 'voyager.types-animals.index', NULL),
(18, 1, 'Animals', '', '_self', NULL, NULL, NULL, 17, '2019-12-12 18:31:46', '2019-12-12 18:31:46', 'voyager.animals.index', NULL),
(19, 1, 'Actualites', '', '_self', NULL, NULL, NULL, 18, '2019-12-12 18:52:33', '2019-12-12 18:52:33', 'voyager.actualites.index', NULL),
(20, 1, 'Vents', '', '_self', NULL, NULL, NULL, 19, '2019-12-12 19:11:33', '2019-12-12 19:11:33', 'voyager.vents.index', NULL),
(21, 1, 'Donations', '', '_self', NULL, NULL, NULL, 20, '2019-12-12 19:16:27', '2019-12-12 19:16:27', 'voyager.donations.index', NULL),
(22, 1, 'Ausecours', '', '_self', NULL, NULL, NULL, 21, '2020-01-12 20:33:29', '2020-01-12 20:33:29', 'voyager.ausecours.index', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_01_01_000000_create_pages_table', 1),
(6, '2016_01_01_000000_create_posts_table', 1),
(7, '2016_02_15_204651_create_categories_table', 1),
(8, '2016_05_19_173453_create_menu_table', 1),
(9, '2016_10_21_190000_create_roles_table', 1),
(10, '2016_10_21_190000_create_settings_table', 1),
(11, '2016_11_30_135954_create_permission_table', 1),
(12, '2016_11_30_141208_create_permission_role_table', 1),
(13, '2016_12_26_201236_data_types__add__server_side', 1),
(14, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(15, '2017_01_14_005015_create_translations_table', 1),
(16, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(17, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(18, '2017_04_11_000000_alter_post_nullable_fields_table', 1),
(19, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(20, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(21, '2017_08_05_000000_add_group_to_settings_table', 1),
(22, '2017_11_26_013050_add_user_role_relationship', 1),
(23, '2017_11_26_015000_create_user_roles_table', 1),
(24, '2018_03_11_000000_add_user_settings', 1),
(25, '2018_03_14_000000_add_details_to_data_types_table', 1),
(26, '2018_03_16_000000_make_settings_value_nullable', 1);

-- --------------------------------------------------------

--
-- Structure de la table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2019-12-12 17:43:56', '2019-12-12 17:43:56');

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Structure de la table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2019-12-12 17:43:46', '2019-12-12 17:43:46'),
(2, 'browse_bread', NULL, '2019-12-12 17:43:46', '2019-12-12 17:43:46'),
(3, 'browse_database', NULL, '2019-12-12 17:43:46', '2019-12-12 17:43:46'),
(4, 'browse_media', NULL, '2019-12-12 17:43:46', '2019-12-12 17:43:46'),
(5, 'browse_compass', NULL, '2019-12-12 17:43:46', '2019-12-12 17:43:46'),
(6, 'browse_menus', 'menus', '2019-12-12 17:43:46', '2019-12-12 17:43:46'),
(7, 'read_menus', 'menus', '2019-12-12 17:43:46', '2019-12-12 17:43:46'),
(8, 'edit_menus', 'menus', '2019-12-12 17:43:46', '2019-12-12 17:43:46'),
(9, 'add_menus', 'menus', '2019-12-12 17:43:46', '2019-12-12 17:43:46'),
(10, 'delete_menus', 'menus', '2019-12-12 17:43:46', '2019-12-12 17:43:46'),
(11, 'browse_roles', 'roles', '2019-12-12 17:43:46', '2019-12-12 17:43:46'),
(12, 'read_roles', 'roles', '2019-12-12 17:43:47', '2019-12-12 17:43:47'),
(13, 'edit_roles', 'roles', '2019-12-12 17:43:47', '2019-12-12 17:43:47'),
(14, 'add_roles', 'roles', '2019-12-12 17:43:47', '2019-12-12 17:43:47'),
(15, 'delete_roles', 'roles', '2019-12-12 17:43:47', '2019-12-12 17:43:47'),
(16, 'browse_users', 'users', '2019-12-12 17:43:47', '2019-12-12 17:43:47'),
(17, 'read_users', 'users', '2019-12-12 17:43:47', '2019-12-12 17:43:47'),
(18, 'edit_users', 'users', '2019-12-12 17:43:47', '2019-12-12 17:43:47'),
(19, 'add_users', 'users', '2019-12-12 17:43:47', '2019-12-12 17:43:47'),
(20, 'delete_users', 'users', '2019-12-12 17:43:47', '2019-12-12 17:43:47'),
(21, 'browse_settings', 'settings', '2019-12-12 17:43:47', '2019-12-12 17:43:47'),
(22, 'read_settings', 'settings', '2019-12-12 17:43:47', '2019-12-12 17:43:47'),
(23, 'edit_settings', 'settings', '2019-12-12 17:43:47', '2019-12-12 17:43:47'),
(24, 'add_settings', 'settings', '2019-12-12 17:43:47', '2019-12-12 17:43:47'),
(25, 'delete_settings', 'settings', '2019-12-12 17:43:47', '2019-12-12 17:43:47'),
(26, 'browse_categories', 'categories', '2019-12-12 17:43:52', '2019-12-12 17:43:52'),
(27, 'read_categories', 'categories', '2019-12-12 17:43:52', '2019-12-12 17:43:52'),
(28, 'edit_categories', 'categories', '2019-12-12 17:43:53', '2019-12-12 17:43:53'),
(29, 'add_categories', 'categories', '2019-12-12 17:43:53', '2019-12-12 17:43:53'),
(30, 'delete_categories', 'categories', '2019-12-12 17:43:53', '2019-12-12 17:43:53'),
(31, 'browse_posts', 'posts', '2019-12-12 17:43:54', '2019-12-12 17:43:54'),
(32, 'read_posts', 'posts', '2019-12-12 17:43:54', '2019-12-12 17:43:54'),
(33, 'edit_posts', 'posts', '2019-12-12 17:43:54', '2019-12-12 17:43:54'),
(34, 'add_posts', 'posts', '2019-12-12 17:43:54', '2019-12-12 17:43:54'),
(35, 'delete_posts', 'posts', '2019-12-12 17:43:54', '2019-12-12 17:43:54'),
(36, 'browse_pages', 'pages', '2019-12-12 17:43:56', '2019-12-12 17:43:56'),
(37, 'read_pages', 'pages', '2019-12-12 17:43:56', '2019-12-12 17:43:56'),
(38, 'edit_pages', 'pages', '2019-12-12 17:43:56', '2019-12-12 17:43:56'),
(39, 'add_pages', 'pages', '2019-12-12 17:43:56', '2019-12-12 17:43:56'),
(40, 'delete_pages', 'pages', '2019-12-12 17:43:56', '2019-12-12 17:43:56'),
(41, 'browse_hooks', NULL, '2019-12-12 17:43:59', '2019-12-12 17:43:59'),
(52, 'browse_types_animals', 'types_animals', '2019-12-12 18:24:03', '2019-12-12 18:24:03'),
(53, 'read_types_animals', 'types_animals', '2019-12-12 18:24:03', '2019-12-12 18:24:03'),
(54, 'edit_types_animals', 'types_animals', '2019-12-12 18:24:03', '2019-12-12 18:24:03'),
(55, 'add_types_animals', 'types_animals', '2019-12-12 18:24:03', '2019-12-12 18:24:03'),
(56, 'delete_types_animals', 'types_animals', '2019-12-12 18:24:03', '2019-12-12 18:24:03'),
(57, 'browse_animals', 'animals', '2019-12-12 18:31:46', '2019-12-12 18:31:46'),
(58, 'read_animals', 'animals', '2019-12-12 18:31:46', '2019-12-12 18:31:46'),
(59, 'edit_animals', 'animals', '2019-12-12 18:31:46', '2019-12-12 18:31:46'),
(60, 'add_animals', 'animals', '2019-12-12 18:31:46', '2019-12-12 18:31:46'),
(61, 'delete_animals', 'animals', '2019-12-12 18:31:46', '2019-12-12 18:31:46'),
(62, 'browse_actualites', 'actualites', '2019-12-12 18:52:33', '2019-12-12 18:52:33'),
(63, 'read_actualites', 'actualites', '2019-12-12 18:52:33', '2019-12-12 18:52:33'),
(64, 'edit_actualites', 'actualites', '2019-12-12 18:52:33', '2019-12-12 18:52:33'),
(65, 'add_actualites', 'actualites', '2019-12-12 18:52:33', '2019-12-12 18:52:33'),
(66, 'delete_actualites', 'actualites', '2019-12-12 18:52:33', '2019-12-12 18:52:33'),
(67, 'browse_vents', 'vents', '2019-12-12 19:11:33', '2019-12-12 19:11:33'),
(68, 'read_vents', 'vents', '2019-12-12 19:11:33', '2019-12-12 19:11:33'),
(69, 'edit_vents', 'vents', '2019-12-12 19:11:33', '2019-12-12 19:11:33'),
(70, 'add_vents', 'vents', '2019-12-12 19:11:33', '2019-12-12 19:11:33'),
(71, 'delete_vents', 'vents', '2019-12-12 19:11:33', '2019-12-12 19:11:33'),
(72, 'browse_donations', 'donations', '2019-12-12 19:16:26', '2019-12-12 19:16:26'),
(73, 'read_donations', 'donations', '2019-12-12 19:16:26', '2019-12-12 19:16:26'),
(74, 'edit_donations', 'donations', '2019-12-12 19:16:26', '2019-12-12 19:16:26'),
(75, 'add_donations', 'donations', '2019-12-12 19:16:26', '2019-12-12 19:16:26'),
(76, 'delete_donations', 'donations', '2019-12-12 19:16:26', '2019-12-12 19:16:26'),
(77, 'browse_ausecours', 'ausecours', '2020-01-12 20:33:28', '2020-01-12 20:33:28'),
(78, 'read_ausecours', 'ausecours', '2020-01-12 20:33:28', '2020-01-12 20:33:28'),
(79, 'edit_ausecours', 'ausecours', '2020-01-12 20:33:29', '2020-01-12 20:33:29'),
(80, 'add_ausecours', 'ausecours', '2020-01-12 20:33:29', '2020-01-12 20:33:29'),
(81, 'delete_ausecours', 'ausecours', '2020-01-12 20:33:29', '2020-01-12 20:33:29');

-- --------------------------------------------------------

--
-- Structure de la table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1);

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-12-12 17:43:55', '2019-12-12 17:43:55'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-12-12 17:43:55', '2019-12-12 17:43:55'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-12-12 17:43:55', '2019-12-12 17:43:55'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-12-12 17:43:55', '2019-12-12 17:43:55');

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2019-12-12 17:43:46', '2019-12-12 17:43:46'),
(2, 'user', 'Normal User', '2019-12-12 17:43:46', '2019-12-12 17:43:46');

-- --------------------------------------------------------

--
-- Structure de la table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Structure de la table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2019-12-12 17:43:56', '2019-12-12 17:43:56'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2019-12-12 17:43:56', '2019-12-12 17:43:56'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2019-12-12 17:43:56', '2019-12-12 17:43:56'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2019-12-12 17:43:56', '2019-12-12 17:43:56'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2019-12-12 17:43:56', '2019-12-12 17:43:56'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2019-12-12 17:43:56', '2019-12-12 17:43:56'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2019-12-12 17:43:57', '2019-12-12 17:43:57'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2019-12-12 17:43:57', '2019-12-12 17:43:57'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2019-12-12 17:43:57', '2019-12-12 17:43:57'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2019-12-12 17:43:57', '2019-12-12 17:43:57'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2019-12-12 17:43:57', '2019-12-12 17:43:57'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2019-12-12 17:43:57', '2019-12-12 17:43:57'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2019-12-12 17:43:57', '2019-12-12 17:43:57'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2019-12-12 17:43:57', '2019-12-12 17:43:57'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2019-12-12 17:43:57', '2019-12-12 17:43:57'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2019-12-12 17:43:57', '2019-12-12 17:43:57'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2019-12-12 17:43:57', '2019-12-12 17:43:57'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2019-12-12 17:43:57', '2019-12-12 17:43:57'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2019-12-12 17:43:57', '2019-12-12 17:43:57'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2019-12-12 17:43:57', '2019-12-12 17:43:57'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2019-12-12 17:43:57', '2019-12-12 17:43:57'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2019-12-12 17:43:58', '2019-12-12 17:43:58'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2019-12-12 17:43:58', '2019-12-12 17:43:58'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2019-12-12 17:43:58', '2019-12-12 17:43:58'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2019-12-12 17:43:58', '2019-12-12 17:43:58'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2019-12-12 17:43:58', '2019-12-12 17:43:58'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2019-12-12 17:43:58', '2019-12-12 17:43:58'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2019-12-12 17:43:58', '2019-12-12 17:43:58'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2019-12-12 17:43:58', '2019-12-12 17:43:58'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2019-12-12 17:43:58', '2019-12-12 17:43:58');

-- --------------------------------------------------------

--
-- Structure de la table `types_animals`
--

CREATE TABLE `types_animals` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `types_animals`
--

INSERT INTO `types_animals` (`id`, `type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'chien', '2019-12-17 11:04:09', '2019-12-17 11:04:09', NULL),
(2, 'chat', '2019-12-17 11:04:21', '2019-12-17 11:04:21', NULL),
(3, 'autre', '2019-12-17 11:04:32', '2019-12-17 11:04:32', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `prenom` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cin` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(189) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adress` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`, `prenom`, `cin`, `telephone`, `adress`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$sY.qUkgfM7TTFDX5uR6UFeulpAykxIa7u73ZlcUun1aCxzlpIAjbu', 'H87wzN6hleZbDG307w5C2DnHFthYNkNk6WiTgUU01lFsMjDCjcwjvxDgqAs3', '{\"locale\":\"en\"}', '2019-12-12 17:43:53', '2020-01-11 22:43:35', NULL, NULL, NULL, NULL),
(2, NULL, 'hhh', 'boutheinahaddad205@gmail.com', 'users/default.png', NULL, '$2y$10$a3uHdhOgm2ywUqrvTZXScelBv/zu5yuE39adJjAuepPOhAS3zZ01O', NULL, '{\"locale\":\"en\"}', '2019-12-17 08:35:36', '2019-12-17 08:35:36', 'jjj', NULL, NULL, NULL),
(3, 2, 'bouthi', 'bouthi@gmail.com', 'users/default.png', NULL, '$2y$10$7EqDcVbCNwr3LgZAOKCmMOITo4Hrte1DTcFWMpt7sdezxYwq1g6WC', NULL, '{\"locale\":\"en\"}', '2019-12-17 08:52:33', '2019-12-17 08:52:33', 'bouthi', '123456', '123456', '123'),
(4, 2, 'ikram', 'ikramelhattab9@gmail.com', 'users/default.png', NULL, '$2y$10$EnXglwmp.oxh4QD.VH8hf.UJW55lRlhKlZQ0U1RuIQt36kMWpGAhG', NULL, NULL, '2020-01-12 17:34:36', '2020-01-12 17:34:36', NULL, NULL, NULL, NULL),
(5, 2, 'ikram', 'dlpro@gmail.com', 'users/default.png', NULL, '$2y$10$9FJYbnWyU.LAWkd1arG8d..rxDqkPLvfmT0EmqHC/R8or6Cq0iMR.', NULL, NULL, '2020-01-13 07:09:43', '2020-01-13 07:09:44', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Structure de la table `vents`
--

CREATE TABLE `vents` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_animal` int(11) DEFAULT NULL,
  `date_achat` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `actualites`
--
ALTER TABLE `actualites`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `animals`
--
ALTER TABLE `animals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `animals_id_type_index` (`id_type`);

--
-- Index pour la table `ausecours`
--
ALTER TABLE `ausecours`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Index pour la table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Index pour la table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Index pour la table `donations`
--
ALTER TABLE `donations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `donations_id_user_index` (`id_user`);

--
-- Index pour la table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Index pour la table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Index pour la table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Index pour la table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Index pour la table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Index pour la table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Index pour la table `types_animals`
--
ALTER TABLE `types_animals`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Index pour la table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- Index pour la table `vents`
--
ALTER TABLE `vents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vents_id_user_index` (`id_user`),
  ADD KEY `vents_id_animal_index` (`id_animal`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `actualites`
--
ALTER TABLE `actualites`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `animals`
--
ALTER TABLE `animals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `ausecours`
--
ALTER TABLE `ausecours`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT pour la table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `donations`
--
ALTER TABLE `donations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT pour la table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT pour la table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `types_animals`
--
ALTER TABLE `types_animals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `vents`
--
ALTER TABLE `vents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Contraintes pour la table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Contraintes pour la table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
