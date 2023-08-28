-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 21 sep. 2021 à 12:04
-- Version du serveur :  10.4.13-MariaDB
-- Version de PHP : 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `auto_ecole`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2021-09-06 16:13:23', '2021-09-06 16:13:23'),
(2, NULL, 1, 'Category 2', 'category-2', '2021-09-06 16:13:23', '2021-09-06 16:13:23');

-- --------------------------------------------------------

--
-- Structure de la table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'voyager::seeders.data_rows.roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
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
(56, 7, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(57, 7, 'num_serie', 'text', 'Num Serie', 0, 1, 1, 1, 1, 1, '{}', 2),
(58, 7, 'description', 'text', 'Description', 0, 1, 1, 1, 1, 1, '{}', 3),
(59, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(60, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(61, 8, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(62, 8, 'num_diapositive', 'text', 'Num Diapositive', 0, 1, 1, 1, 1, 1, '{}', 2),
(63, 8, 'description', 'text', 'Description', 0, 1, 1, 1, 1, 1, '{}', 3),
(64, 8, 'image_simple', 'image', 'Image Simple', 0, 1, 1, 1, 1, 1, '{}', 4),
(65, 8, 'image_corrige', 'image', 'Image Corrige', 0, 1, 1, 1, 1, 1, '{}', 5),
(66, 8, 'lecture_audio_fr', 'file', 'Lecture Audio Fr', 0, 1, 1, 1, 1, 1, '{}', 6),
(67, 8, 'lecture_audio_dl', 'file', 'Lecture Audio Dl', 0, 1, 1, 1, 1, 1, '{}', 7),
(68, 8, 'lecture_audio_mr', 'file', 'Lecture Audio Mr', 0, 1, 1, 1, 1, 1, '{}', 8),
(69, 8, 'explication_text', 'text', 'Explication Text', 0, 1, 1, 1, 1, 1, '{}', 9),
(70, 8, 'explication_audio_fr', 'file', 'Explication Audio Fr', 0, 1, 1, 1, 1, 1, '{}', 10),
(71, 8, 'explication_audio_dl', 'file', 'Explication Audio Dl', 0, 1, 1, 1, 1, 1, '{}', 11),
(72, 8, 'explication_audio_mr', 'file', 'Explication Audio Mr', 0, 1, 1, 1, 1, 1, '{}', 12),
(73, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 13),
(74, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 14),
(75, 8, 'serie', 'select_dropdown', 'Serie', 0, 1, 1, 1, 1, 1, '{}', 15),
(76, 8, 'diapositive_belongsto_series_relationship', 'relationship', 'series', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Series\",\"table\":\"series\",\"type\":\"belongsTo\",\"column\":\"serie\",\"key\":\"id\",\"label\":\"num_serie\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 16),
(77, 9, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(78, 9, 'libelle_question', 'text', 'Libelle Question', 0, 1, 1, 1, 1, 1, '{}', 2),
(79, 9, 'choix_a', 'text', 'Choix A', 0, 1, 1, 1, 1, 1, '{}', 3),
(80, 9, 'choix_b', 'text', 'Choix B', 0, 1, 1, 1, 1, 1, '{}', 4),
(81, 9, 'choix_c', 'text', 'Choix C', 0, 1, 1, 1, 1, 1, '{}', 5),
(82, 9, 'choix_d', 'text', 'Choix D', 0, 1, 1, 1, 1, 1, '{}', 6),
(83, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(84, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(85, 9, 'diapositive', 'select_dropdown', 'Diapositive', 0, 1, 1, 1, 1, 1, '{}', 9),
(86, 9, 'reponse_a', 'checkbox', 'Reponse A', 0, 1, 1, 1, 1, 1, '{\"on\":\"Bonne r\\u00e9ponse\",\"off\":\"Mauvaise r\\u00e9ponse\",\"checked\":1}', 10),
(87, 9, 'reponse_b', 'checkbox', 'Reponse B', 0, 1, 1, 1, 1, 1, '{\"on\":\"Bonne r\\u00e9ponse\",\"off\":\"Mauvaise r\\u00e9ponse\",\"checked\":1}', 11),
(88, 9, 'reponse_c', 'checkbox', 'Reponse C', 0, 1, 1, 1, 1, 1, '{\"on\":\"Bonne r\\u00e9ponse\",\"off\":\"Mauvaise r\\u00e9ponse\",\"checked\":1}', 12),
(89, 9, 'reponse_d', 'checkbox', 'Reponse D', 0, 1, 1, 1, 1, 1, '{\"on\":\"Bonne r\\u00e9ponse\",\"off\":\"Mauvaise r\\u00e9ponse\",\"checked\":1}', 13),
(90, 9, 'question_belongsto_diapositive_relationship', 'relationship', 'diapositives', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Diapositive\",\"table\":\"diapositives\",\"type\":\"belongsTo\",\"column\":\"diapositive\",\"key\":\"id\",\"label\":\"num_diapositive\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 14),
(91, 10, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(92, 10, 'date', 'timestamp', 'Date', 0, 1, 1, 1, 1, 1, '{}', 2),
(93, 10, 'diapositive', 'select_dropdown', 'Diapositive', 0, 1, 1, 1, 1, 1, '{}', 3),
(94, 10, 'utilisateur', 'select_dropdown', 'Utilisateur', 0, 1, 1, 1, 1, 1, '{}', 4),
(95, 10, 'reponse_a', 'checkbox', 'Reponse A', 0, 1, 1, 1, 1, 1, '{}', 5),
(96, 10, 'reponse_b', 'checkbox', 'Reponse B', 0, 1, 1, 1, 1, 1, '{}', 6),
(97, 10, 'reponse_c', 'checkbox', 'Reponse C', 0, 1, 1, 1, 1, 1, '{}', 7),
(98, 10, 'reponce_d', 'checkbox', 'Reponce D', 0, 1, 1, 1, 1, 1, '{}', 8),
(99, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 9),
(100, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 10),
(101, 10, 'reponses_utilisateur_belongsto_diapositive_relationship', 'relationship', 'diapositives', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Diapositive\",\"table\":\"diapositives\",\"type\":\"belongsTo\",\"column\":\"diapositive\",\"key\":\"id\",\"label\":\"num_diapositive\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 11),
(102, 10, 'reponses_utilisateur_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"utilisateur\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":null}', 12),
(103, 9, 'libelle_1', 'text', 'Libelle 1', 0, 1, 1, 1, 1, 1, '{}', 3),
(104, 9, 'libelle_2', 'text', 'Libelle 2', 0, 1, 1, 1, 1, 1, '{}', 4),
(105, 11, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(106, 11, 'denomination', 'text', 'Denomination', 0, 1, 1, 1, 1, 1, '{}', 2),
(107, 11, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 3),
(108, 11, 'telephone1', 'text', 'Telephone1', 0, 1, 1, 1, 1, 1, '{}', 4),
(109, 11, 'telephone2', 'text', 'Telephone2', 0, 1, 1, 1, 1, 1, '{}', 5),
(110, 11, 'telephone3', 'text', 'Telephone3', 0, 1, 1, 1, 1, 1, '{}', 6),
(111, 11, 'telephone4', 'text', 'Telephone4', 0, 1, 1, 1, 1, 1, '{}', 7),
(112, 11, 'description', 'text', 'Description', 0, 1, 1, 1, 1, 1, '{}', 8),
(113, 11, 'slogan', 'text', 'Slogan', 0, 1, 1, 1, 1, 1, '{}', 9),
(114, 11, 'facebook', 'text', 'Facebook', 0, 1, 1, 1, 1, 1, '{}', 10),
(115, 11, 'youtube', 'text', 'Youtube', 0, 1, 1, 1, 1, 1, '{}', 11),
(116, 11, 'instagramme', 'text', 'Instagramme', 0, 1, 1, 1, 1, 1, '{}', 12),
(117, 11, 'linkdil', 'text', 'Linkdil', 0, 1, 1, 1, 1, 1, '{}', 13),
(118, 11, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 14),
(119, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 15);

-- --------------------------------------------------------

--
-- Structure de la table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2021-09-06 16:13:03', '2021-09-06 16:13:03'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2021-09-06 16:13:03', '2021-09-06 16:13:03'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2021-09-06 16:13:03', '2021-09-06 16:13:03'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2021-09-06 16:13:21', '2021-09-06 16:13:21'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2021-09-06 16:13:24', '2021-09-06 16:13:24'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2021-09-06 16:13:28', '2021-09-06 16:13:28'),
(7, 'series', 'series', 'Series', 'Series', NULL, 'App\\Series', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-09-06 17:02:52', '2021-09-06 17:02:52'),
(8, 'diapositives', 'diapositives', 'Diapositive', 'Diapositives', NULL, 'App\\Diapositive', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-09-06 17:07:54', '2021-09-06 17:12:06'),
(9, 'questions', 'questions', 'Question', 'Questions', NULL, 'App\\Question', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-09-06 17:13:52', '2021-09-09 12:14:22'),
(10, 'reponses_utilisateurs', 'reponses-utilisateurs', 'Reponses Utilisateur', 'Reponses Utilisateurs', NULL, 'App\\ReponsesUtilisateur', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-09-06 17:21:58', '2021-09-06 17:24:50'),
(11, 'infos', 'infos', 'Info', 'Infos', NULL, 'App\\Info', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-09-20 11:25:36', '2021-09-20 11:25:36');

-- --------------------------------------------------------

--
-- Structure de la table `diapositives`
--

CREATE TABLE `diapositives` (
  `id` int(10) UNSIGNED NOT NULL,
  `num_diapositive` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_simple` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_corrige` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lecture_audio_fr` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lecture_audio_dl` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lecture_audio_mr` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `explication_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `explication_audio_fr` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `explication_audio_dl` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `explication_audio_mr` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `serie` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `diapositives`
--

INSERT INTO `diapositives` (`id`, `num_diapositive`, `description`, `image_simple`, `image_corrige`, `lecture_audio_fr`, `lecture_audio_dl`, `lecture_audio_mr`, `explication_text`, `explication_audio_fr`, `explication_audio_dl`, `explication_audio_mr`, `created_at`, `updated_at`, `serie`) VALUES
(2, 'Serie 50  Diapo 1', NULL, 'diapositives\\September2021\\9P6nwuqujBTCJ6CEOWXc.png', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-07 12:53:00', '2021-09-07 12:54:58', 3),
(3, 'Serie 48 Diapo 1', NULL, 'diapositives\\September2021\\c71HgyQKUDeU9v6pUiif.JPG', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-07 12:54:14', '2021-09-07 12:54:14', 1),
(4, 'Serie 50  Diapo 2', NULL, 'diapositives\\September2021\\TjyB9YFK5gT6QoIxauUu.png', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-07 12:54:00', '2021-09-07 12:54:42', 3),
(5, 'Serie 50  Diapo 3', NULL, 'diapositives\\September2021\\sWtbdgXklP8EuwHmr5kO.png', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-07 12:56:11', '2021-09-07 12:56:11', 3),
(6, 'Serie 48 Diapo 2', NULL, 'diapositives\\September2021\\Avrkn7vyChOpbzxdkcqu.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-07 12:56:22', '2021-09-07 12:56:22', 1),
(7, 'Serie 50  Diapo 4', NULL, 'diapositives\\September2021\\2s9KP0TFrIkAmAQAobPs.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-07 12:56:00', '2021-09-07 12:58:02', 3),
(8, 'Serie 48 Diapo 3', NULL, 'diapositives\\September2021\\VMwtkP5zVhp8yo1U2VZW.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-07 12:56:52', '2021-09-07 12:56:52', 1),
(9, 'Serie 50  Diapo 5', NULL, 'diapositives\\September2021\\RvoxTz0SBy5eS3bwzkAw.png', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-07 12:58:34', '2021-09-07 12:58:34', 3),
(10, 'Serie 48 Diapo 4', NULL, 'diapositives\\September2021\\jYMsdaIFeX26kKO8iIti.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-07 12:58:36', '2021-09-07 12:58:36', 1),
(11, 'Serie 48 Diapo 5', NULL, 'diapositives\\September2021\\sYYm5RVYQHBPTckmiKUe.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-07 12:59:08', '2021-09-07 12:59:08', 1),
(12, 'Serie 50  Diapo 6', NULL, 'diapositives\\September2021\\ADumREhe8CTKdGNOO28r.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-07 12:59:26', '2021-09-07 12:59:26', 3),
(13, 'Serie 48 Diapo 6', NULL, 'diapositives\\September2021\\oVnoWOV5e0ibAq6aa6Zv.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-07 12:59:41', '2021-09-07 12:59:41', 1),
(14, 'Serie 50  Diapo 7', NULL, 'diapositives\\September2021\\LaOkyVgvEajK9EkyLqUd.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-07 12:59:50', '2021-09-07 12:59:50', 3),
(15, 'Serie 48 Diapo 7', NULL, 'diapositives\\September2021\\0lt7HZJ1KduIE4HRBrZF.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-07 13:00:42', '2021-09-07 13:00:42', 1),
(16, 'Serie 50  Diapo 8', NULL, 'diapositives\\September2021\\Ls8W9n7ur7eoQwwh80QI.png', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-07 13:00:45', '2021-09-07 13:00:45', 3),
(17, 'Serie 50  Diapo 9', NULL, 'diapositives\\September2021\\5uMsWD7PgsonQBXjSjNr.png', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-07 13:01:32', '2021-09-07 13:01:32', 3),
(18, 'Serie 48 Diapo 8', NULL, 'diapositives\\September2021\\tlfHUzMDnD1VNLZzFqxU.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-07 13:01:50', '2021-09-07 13:01:50', 1),
(19, 'Serie 50  Diapo 10', NULL, 'diapositives\\September2021\\pQQl1NbRKAM8yvOL9yPB.png', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-07 13:02:13', '2021-09-07 13:02:13', 3),
(20, 'Serie 48 Diapo 9', NULL, 'diapositives\\September2021\\j2RDFnTsKBsTaEp3oKHC.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-07 13:02:29', '2021-09-07 13:02:29', 1),
(21, 'Serie 50  Diapo 11', NULL, 'diapositives\\September2021\\yB7TuKxUHvVVzXDaseCZ.png', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-07 13:02:51', '2021-09-07 13:02:51', 3),
(22, 'Serie 48 Diapo 10', NULL, 'diapositives\\September2021\\NdYNxGcujPaivMffR9kL.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-07 13:02:59', '2021-09-07 13:02:59', 1),
(23, 'Serie 48 Diapo 11', NULL, 'diapositives\\September2021\\XQC57SPb0YMkdf0XYCNf.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-07 13:03:26', '2021-09-07 13:03:26', 1),
(24, 'Serie 50  Diapo 12', NULL, 'diapositives\\September2021\\kD541f8pjO43HgMpshU8.png', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-07 13:03:33', '2021-09-07 13:03:33', 3),
(25, 'Serie 50  Diapo 13', NULL, 'diapositives\\September2021\\IGtUHRKkmb6ZrvTXPJ3F.png', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-07 13:04:00', '2021-09-07 13:05:24', 3),
(26, 'Serie 48 Diapo 12', NULL, 'diapositives\\September2021\\3EyLZkPk93Qj0nkLdUDx.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-07 13:04:09', '2021-09-07 13:04:09', 1),
(27, 'Serie 50  Diapo 14', NULL, 'diapositives\\September2021\\KzyRA0bltE9AFrXdX2OU.png', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-07 13:04:44', '2021-09-07 13:04:44', 3),
(28, 'Serie 50  Diapo 15', NULL, 'diapositives\\September2021\\e3sy6yaB74AoS6beyh29.png', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-07 13:06:46', '2021-09-07 13:06:46', 3),
(29, 'Serie 48 Diapo 13', NULL, 'diapositives\\September2021\\DfFU6ptq7MCgIgdO344b.png', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-07 13:07:20', '2021-09-07 13:07:20', 1),
(30, 'Serie 50  Diapo 16', NULL, 'diapositives\\September2021\\bj0JDarQaiYyKPo1dyZ0.png', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-07 13:07:28', '2021-09-07 13:07:28', 3),
(31, 'Serie 48 Diapo 14', NULL, 'diapositives\\September2021\\9emPSrLVIgFTuGRfKKM6.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-07 13:07:44', '2021-09-07 13:07:44', 1),
(32, 'Serie 50  Diapo 17', NULL, 'diapositives\\September2021\\50JJU8XrrkLAG4hx411w.png', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-07 13:07:57', '2021-09-07 13:07:57', 3),
(33, 'Serie 48 Diapo 15', NULL, 'diapositives\\September2021\\NgG1fNCljFPc0ZgXnHLC.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-07 13:08:19', '2021-09-07 13:08:19', 1),
(34, 'Serie 50  Diapo 18', NULL, 'diapositives\\September2021\\mrF9CZtaU6qwA5CfYhYM.png', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-07 13:08:36', '2021-09-07 13:08:36', 3),
(35, 'Serie 48 Diapo 16', NULL, 'diapositives\\September2021\\9xv4Cm83pOrIVMY5VcL5.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-07 13:08:48', '2021-09-07 13:08:48', 1),
(36, 'Serie 50  Diapo 19', NULL, 'diapositives\\September2021\\TNAOuhDEkrJSX7Ko4ozi.png', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-07 13:09:07', '2021-09-07 13:09:07', 3),
(37, 'Serie 48 Diapo 17', NULL, 'diapositives\\September2021\\akBDceGzLlrS7HAnVLcd.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-07 13:09:22', '2021-09-07 13:09:22', 1),
(38, 'Serie 50  Diapo 20', NULL, 'diapositives\\September2021\\x9zQ9HCJsrh225tXN4iU.png', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-07 13:09:42', '2021-09-07 13:09:42', 3),
(39, 'Serie 48 Diapo 18', NULL, 'diapositives\\September2021\\ZTgnZ0MT5TvSBfe5Tizn.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-07 13:10:03', '2021-09-07 13:10:03', 1),
(40, 'Serie 50  Diapo 21', NULL, 'diapositives\\September2021\\gGbBHaVwHaeIKWeJha1L.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-07 13:10:20', '2021-09-07 13:10:20', 3),
(41, 'Serie 48 Diapo 19', NULL, 'diapositives\\September2021\\De0SP5N6Oxv4nelv653e.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-07 13:10:30', '2021-09-07 13:10:30', 1),
(42, 'Serie 50  Diapo 22', NULL, 'diapositives\\September2021\\mRp4Fj1dRsNoa5WIWVO2.png', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-07 13:10:46', '2021-09-07 13:10:46', 3),
(43, 'Serie 48 Diapo 20', NULL, 'diapositives\\September2021\\0W147wlDWvurWBgc1A3p.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-07 13:11:02', '2021-09-07 13:11:02', 1),
(44, 'Serie 50  Diapo 23', NULL, 'diapositives\\September2021\\0HNKFefGG1grbWl7yzYJ.png', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-07 13:11:15', '2021-09-07 13:11:15', 3),
(45, 'Serie 48 Diapo 21', NULL, 'diapositives\\September2021\\XyNxO6OmRUmTTbcsULEN.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-07 13:11:27', '2021-09-07 13:11:27', 1),
(46, 'Serie 50  Diapo 24', NULL, 'diapositives\\September2021\\rWbxNZjvDXl3T0EMxPbq.png', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-07 13:11:53', '2021-09-07 13:11:53', 3),
(47, 'Serie 48 Diapo 22', NULL, 'diapositives\\September2021\\Q8k4g0iRrt0wEhDaodEW.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-07 13:11:59', '2021-09-07 13:11:59', 1),
(48, 'Serie 50  Diapo 25', NULL, 'diapositives\\September2021\\F6GdfOc7Bqtl0RIA6W5l.png', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-07 13:12:33', '2021-09-07 13:12:33', 3),
(49, 'Serie 48 Diapo 23', NULL, 'diapositives\\September2021\\OkkHiWx9Dni8JxCEMQG4.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-07 13:12:38', '2021-09-07 13:12:38', 1),
(50, 'Serie 50  Diapo 26', NULL, 'diapositives\\September2021\\njd3cCgBIXB58jyXlEUR.png', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-07 13:13:02', '2021-09-07 13:13:02', 3),
(51, 'Serie 48 Diapo 24', NULL, 'diapositives\\September2021\\n8wAtLI53k1MZoUufwLx.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-07 13:13:06', '2021-09-07 13:13:06', 1),
(52, 'Serie 48 Diapo 25', NULL, 'diapositives\\September2021\\xayOhko1Zt95m8rxWhb2.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-07 13:13:35', '2021-09-07 13:13:35', 1),
(53, 'Serie 50  Diapo 28', NULL, 'diapositives\\September2021\\JVry5PxHhOVTnojhfWsc.png', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-07 13:13:50', '2021-09-07 13:13:50', 3),
(54, 'Serie 48 Diapo 26', NULL, 'diapositives\\September2021\\t8iTUbMCGBHg3wo4ZFNf.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-07 13:14:06', '2021-09-07 13:14:06', 1),
(55, 'Serie 50  Diapo 27', NULL, 'diapositives\\September2021\\GRGJO2IItMNgyO3uNWfo.png', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-07 13:14:22', '2021-09-07 13:14:22', 3),
(56, 'Serie 48 Diapo 27', NULL, 'diapositives\\September2021\\wCTzXKsa1xn01UM4zyF9.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-07 13:14:35', '2021-09-07 13:14:35', 1),
(57, 'Serie 50  Diapo 29', NULL, 'diapositives\\September2021\\JZNym89saAvvdy9X7gLO.png', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-07 13:14:48', '2021-09-07 13:14:48', 3),
(58, 'Serie 48 Diapo 28', NULL, 'diapositives\\September2021\\etkyrqxJhbcaDAU6PHqQ.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-07 13:15:04', '2021-09-07 13:15:04', 1),
(59, 'Serie 50  Diapo 30', NULL, 'diapositives\\September2021\\ONlRT06ogFES9kGzB3Xw.png', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-07 13:15:13', '2021-09-07 13:15:13', 3),
(60, 'Serie 48 Diapo 29', NULL, 'diapositives\\September2021\\80hgKJGLbPsGNGr5avAJ.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-07 13:15:30', '2021-09-07 13:15:30', 1),
(61, 'Serie 50  Diapo 31', NULL, 'diapositives\\September2021\\RlJNd4ZNdR6YtzyDeq6P.png', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-07 13:15:42', '2021-09-07 13:15:42', 3),
(62, 'Serie 50  Diapo 32', NULL, 'diapositives\\September2021\\McfTYGA7N3K7IlwwXBP2.png', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-07 13:16:05', '2021-09-07 13:16:05', 3),
(63, 'Serie 48 Diapo 30', NULL, 'diapositives\\September2021\\YkOsqLFmtr568mQSo4CU.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-07 13:16:26', '2021-09-07 13:16:26', 1),
(64, 'Serie 50  Diapo 33', NULL, 'diapositives\\September2021\\eQveVGUjjEQFBlKzmGhr.png', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-07 13:16:31', '2021-09-07 13:16:31', 3),
(65, 'Serie 50  Diapo 34', NULL, 'diapositives\\September2021\\pIP52aQtqp1yiyNvJnQr.png', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-07 13:16:56', '2021-09-07 13:16:56', 3),
(66, 'Serie 48 Diapo 31', NULL, 'diapositives\\September2021\\dXFox8ocuoqfrENVIahC.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-07 13:17:00', '2021-09-07 13:17:00', 1),
(67, 'Serie 50  Diapo 36', NULL, 'diapositives\\September2021\\kiGEMuPt2bBbMqVwVh9D.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-07 13:17:40', '2021-09-07 13:17:40', 3),
(68, 'Serie 48 Diapo 32', NULL, 'diapositives\\September2021\\KMQXxYGOcnKQd8bi4As9.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-07 13:18:05', '2021-09-07 13:18:05', 1),
(69, 'Serie 50  Diapo 35', NULL, 'diapositives\\September2021\\XKIOw5rzXTvRXgfupxYn.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-07 13:18:20', '2021-09-07 13:18:20', 3),
(70, 'Serie 48 Diapo 33', NULL, 'diapositives\\September2021\\Ovb4r2IPP6TM0FAdfJt3.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-07 13:18:32', '2021-09-07 13:18:32', 1),
(71, 'Serie 50  Diapo 37', NULL, 'diapositives\\September2021\\dvmIrTcVwUIl2x9Isaui.png', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-07 13:18:56', '2021-09-07 13:18:56', 3),
(72, 'Serie 48 Diapo 34', NULL, 'diapositives\\September2021\\yOYZ9eQoLqSK1QyGhWN2.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-07 13:19:06', '2021-09-07 13:19:06', 1),
(73, 'Serie 48 Diapo 35', NULL, 'diapositives\\September2021\\cddZzYiXWbbGd6EmVDtS.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-07 13:19:38', '2021-09-07 13:19:38', 1),
(74, 'Serie 50  Diapo 38', NULL, 'diapositives\\September2021\\FWc34bLhCmMFpcBlGhpw.png', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-07 13:19:52', '2021-09-07 13:19:52', 3),
(75, 'Serie 48 Diapo 36', NULL, 'diapositives\\September2021\\sMwEVaJxTmEcEkp5mm6G.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-07 13:20:07', '2021-09-07 13:20:07', 1),
(76, 'Serie 50  Diapo 39', NULL, 'diapositives\\September2021\\YWZYTMT2E5JPuPYPKpvC.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-07 13:20:21', '2021-09-07 13:20:21', 3),
(77, 'Serie 50  Diapo 40', NULL, 'diapositives\\September2021\\CAALPKSew32j6CoZgMkW.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-07 13:20:46', '2021-09-07 13:20:46', 3),
(78, 'Serie 48 Diapo 38', NULL, 'diapositives\\September2021\\jycIaR48TSRGvh0tASe4.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-07 13:20:51', '2021-09-07 13:20:51', 1),
(79, 'Serie 48 Diapo 37', NULL, 'diapositives\\September2021\\Geq2vaqGM2wxggUizxOw.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-07 13:22:02', '2021-09-07 13:22:02', 1),
(80, 'Serie 48 Diapo 39', NULL, 'diapositives\\September2021\\UcqLRhzQVxuLbRGf2Q4f.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-07 13:22:33', '2021-09-07 13:22:33', 1),
(81, 'Serie 48 Diapo 40', NULL, 'diapositives\\September2021\\KfON7R8pJ6s16fMoETY2.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-07 13:23:00', '2021-09-07 13:23:00', 1),
(82, 'Serie 49 Diapo 1', NULL, 'diapositives\\September2021\\frjXLh7rO5j1KFVCUGfm.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 13:36:25', '2021-09-09 13:36:25', 2),
(83, 'Serie 49 Diapo 2', NULL, 'diapositives\\September2021\\ngpRmcZfAs4QdLjtbLdT.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 13:36:59', '2021-09-09 13:36:59', 2),
(84, 'Serie 49 Diapo 3', NULL, 'diapositives\\September2021\\qbFuq2UNh4lpRBv7OQvS.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 13:37:33', '2021-09-09 13:37:33', 2),
(85, 'Serie 49 Diapo 4', NULL, 'diapositives\\September2021\\H6uB1TNDbqKGuxBo4HLn.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 13:38:27', '2021-09-09 13:38:27', 2),
(86, 'Serie 49 Diapo 5', NULL, 'diapositives\\September2021\\qFYsK1w2BRBMCYlQcDC7.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 13:39:27', '2021-09-09 13:39:27', 2),
(87, 'Serie 49 Diapo 6', NULL, 'diapositives\\September2021\\ohcJ4ArwgXe17LokgJR5.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 13:40:07', '2021-09-09 13:40:07', 2),
(88, 'Serie 49 Diapo 7', NULL, 'diapositives\\September2021\\iPwOHl0nJ2k6ZjTb5DJA.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 13:52:12', '2021-09-09 13:52:12', 2),
(89, 'Serie 49 Diapo 8', NULL, 'diapositives\\September2021\\DPPz6d7N7PQ9mOJ8K5al.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 13:52:44', '2021-09-09 13:52:44', 2),
(90, 'Serie 49 Diapo 9', NULL, 'diapositives\\September2021\\T1jqRDaffpb0xJXAScIV.JPG', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 13:53:16', '2021-09-09 13:53:16', 2),
(91, 'Serie 49 Diapo 10', NULL, 'diapositives\\September2021\\L7ZzJgo9onUocoirD5KD.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 13:54:43', '2021-09-09 13:54:43', 2),
(92, 'Serie 49 Diapo 11', NULL, 'diapositives\\September2021\\kWL5RvSHXKn9C5cLVaPq.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 13:55:30', '2021-09-09 13:55:30', 2),
(93, 'Serie 49 Diapo 12', NULL, 'diapositives\\September2021\\5GbLR4CdCbgYi78yYRmp.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 13:56:04', '2021-09-09 13:56:04', 2),
(94, 'Serie 49 Diapo 13', NULL, 'diapositives\\September2021\\Oz07oYWRMMM2nah0ynH8.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 13:57:04', '2021-09-09 13:57:04', 2),
(95, 'Serie 49 Diapo 14', NULL, 'diapositives\\September2021\\WT8OMHTN0JLYOSbLCP9o.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 13:57:34', '2021-09-09 13:57:34', 2),
(96, 'Serie 49 Diapo 15', NULL, 'diapositives\\September2021\\rXdHk254ypBLDEdZO4m2.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 13:58:10', '2021-09-09 13:58:10', 2),
(97, 'Serie 49 Diapo 16', NULL, 'diapositives\\September2021\\dKZ0FUgyp3ffj5d9YgO0.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 13:58:43', '2021-09-09 13:58:43', 2),
(98, 'Serie 49 Diapo 17', NULL, 'diapositives\\September2021\\41ICjKmvKkxrrjTtX4rV.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 13:59:49', '2021-09-09 13:59:49', 2),
(99, 'Serie 52 Diapo 1', NULL, 'diapositives\\September2021\\JIA1aGWoZX63gFItsuNT.png', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 14:00:00', '2021-09-09 14:01:30', 5),
(100, 'Serie 49 Diapo 18', NULL, 'diapositives\\September2021\\kI5maIJtMg18KVVOJerb.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 14:00:43', '2021-09-09 14:00:43', 2),
(101, 'Serie 49 Diapo 19', NULL, 'diapositives\\September2021\\ZUMdfC2hUauxd0tVvKge.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 14:01:39', '2021-09-09 14:01:39', 2),
(102, 'Serie 49 Diapo 20', NULL, 'diapositives\\September2021\\EKbJqLoN6QsGxbHgCa13.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 14:02:13', '2021-09-09 14:02:13', 2),
(103, 'Serie 52 Diapo 2', NULL, 'diapositives\\September2021\\bWdGi6foqRn7T8MbtXnx.png', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 14:02:37', '2021-09-09 14:02:37', 5),
(104, 'Serie 49 Diapo 21', NULL, 'diapositives\\September2021\\kw33sbcOfnHNPxoqmPW2.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 14:02:49', '2021-09-09 14:02:49', 2),
(105, 'Serie 52 Diapo 3', NULL, 'diapositives\\September2021\\L2t3W4aqWsI6cjBYvayS.png', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 14:03:33', '2021-09-09 14:03:33', 5),
(106, 'Serie 49 Diapo 22', NULL, 'diapositives\\September2021\\9DCYP1vwYvneaM1ps4hw.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 14:03:37', '2021-09-09 14:03:37', 2),
(107, 'Serie 49 Diapo 23', NULL, 'diapositives\\September2021\\AocmBSHOm0ox2fwT2wA7.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 14:04:27', '2021-09-09 14:04:27', 2),
(108, 'Serie 52 Diapo 4', NULL, 'diapositives\\September2021\\7ypCN4cHWAbLWXXvLads.png', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 14:04:33', '2021-09-09 14:04:33', 5),
(109, 'Serie 49 Diapo 24', NULL, 'diapositives\\September2021\\ugzC1WFEqNhOWTyFyiMW.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 14:05:01', '2021-09-09 14:05:01', 2),
(110, 'Serie 49 Diapo 25', NULL, 'diapositives\\September2021\\9Sf1FbTIwqWyDjNBfIKX.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 14:05:48', '2021-09-09 14:05:48', 2),
(111, 'Serie 52 Diapo 5', NULL, 'diapositives\\September2021\\9j4HADY6iKZg4pSzTrAb.png', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 14:05:57', '2021-09-09 14:05:57', 5),
(112, 'Serie 52 Diapo 6', NULL, 'diapositives\\September2021\\GS3bSyRkwlLw3iTohVK1.png', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 14:09:43', '2021-09-09 14:09:43', 5),
(113, 'Serie 52 Diapo 7', NULL, 'diapositives\\September2021\\cN9fKjd2SY10CjFq94NX.png', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 14:10:30', '2021-09-09 14:10:30', 5),
(114, 'Serie 49 Diapo 26', NULL, 'diapositives\\September2021\\Tnx4qomVSRCnvrN9IVZ4.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 14:10:43', '2021-09-09 14:10:43', 2),
(115, 'Serie 52 Diapo 8', NULL, 'diapositives\\September2021\\CDVWUOCh63jhnACl5TuT.png', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 14:11:13', '2021-09-09 14:11:13', 5),
(116, 'Serie 49 Diapo 27', NULL, 'diapositives\\September2021\\PEYRLkzwTUSEiEskCZ3Z.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 14:11:25', '2021-09-09 14:11:25', 2),
(117, 'Serie 52 Diapo 9', NULL, 'diapositives\\September2021\\UFs2qzO8IM668tmj89IO.png', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 14:11:51', '2021-09-09 14:11:51', 5),
(118, 'Serie 49 Diapo 28', NULL, 'diapositives\\September2021\\Hx6GJhILDSmDNss5nSFx.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 14:11:59', '2021-09-09 14:11:59', 2),
(119, 'Serie 49 Diapo 29', NULL, 'diapositives\\September2021\\V6vm0bxfptxNU0qSUuwM.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 14:12:31', '2021-09-09 14:12:31', 2),
(120, 'Serie 52 Diapo 10', NULL, 'diapositives\\September2021\\mSIOo6cpflDjmrWM7tqI.png', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 14:12:42', '2021-09-09 14:12:42', 5),
(121, 'Serie 49 Diapo 30', NULL, 'diapositives\\September2021\\dUSKRZEAlO3cu4qaQ6Lm.JPG', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 14:13:02', '2021-09-09 14:13:02', 2),
(122, 'Serie 49 Diapo 31', NULL, 'diapositives\\September2021\\jWYfeDvh9n7k5YeQ1UM8.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 14:13:43', '2021-09-09 14:13:43', 2),
(123, 'Serie 49 Diapo 32', NULL, 'diapositives\\September2021\\CJFBAvIVbdKciKFJGFjt.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 14:17:54', '2021-09-09 14:17:54', 2),
(124, 'Serie 49 Diapo 33', NULL, 'diapositives\\September2021\\BIOmX86LKKR87oX77EcQ.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 14:18:29', '2021-09-09 14:18:29', 2),
(125, 'Serie 49 Diapo 34', NULL, 'diapositives\\September2021\\Uc9OjHndMnxYmueKVVlw.png', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 14:19:03', '2021-09-09 14:19:03', 2),
(126, 'Serie 49 Diapo 35', NULL, 'diapositives\\September2021\\h4ssMDIYmJEglW9h5fIk.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 14:19:57', '2021-09-09 14:19:57', 2),
(127, 'Serie 52 Diapo 11', NULL, 'diapositives\\September2021\\Vqitrr9UPdvQmMAVW8i8.png', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 14:20:26', '2021-09-09 14:20:26', 5),
(128, 'Serie 52 Diapo 12', NULL, 'diapositives\\September2021\\c3DbzTH7XFmz8EaouqWm.png', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 14:21:17', '2021-09-09 14:21:17', 5),
(129, 'Serie 49 Diapo 36', NULL, 'diapositives\\September2021\\6vpX3D81CksjrOAsEJ7l.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 14:21:38', '2021-09-09 14:21:38', 2),
(130, 'Serie 52 Diapo 13', NULL, 'diapositives\\September2021\\WNAK2DDvgp9LJm2l5ouY.png', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 14:22:41', '2021-09-09 14:22:41', 5),
(131, 'Serie 49 Diapo 37', NULL, 'diapositives\\September2021\\egKIGC35rGcXvk2qvhQT.png', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 14:23:02', '2021-09-09 14:23:02', 2),
(132, 'Serie 52 Diapo 14', NULL, 'diapositives\\September2021\\OzVU1IzCbyKvGkoY96ix.png', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 14:23:00', '2021-09-09 14:24:35', 5),
(133, 'Serie 49 Diapo 38', NULL, 'diapositives\\September2021\\w2ZboYkjO3F4Juaqwr06.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 14:25:35', '2021-09-09 14:25:35', 2),
(134, 'Serie 49 Diapo 39', NULL, 'diapositives\\September2021\\cBmmJCdnadXODbo3c3gW.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 14:26:08', '2021-09-09 14:26:08', 2),
(135, 'Serie 52 Diapo 14', NULL, 'diapositives\\September2021\\B2KDU5OPGwvTvHRrRiOh.png', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 14:26:22', '2021-09-09 14:26:22', 5),
(136, 'Serie 49 Diapo 40', NULL, 'diapositives\\September2021\\BnuiTCyF7YeTfyKHA38I.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 14:26:39', '2021-09-09 14:26:39', 2),
(137, 'Serie 52 Diapo 15', NULL, 'diapositives\\September2021\\DTMuVG2Jy7wCLY47MCJp.png', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 14:27:30', '2021-09-09 14:27:30', 5),
(138, 'Serie 52 Diapo 16', NULL, 'diapositives\\September2021\\7oFwEjruTzVbAAv2aZo6.png', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 14:28:17', '2021-09-09 14:28:17', 5),
(139, 'Serie 54 Diapo 1', NULL, 'diapositives\\September2021\\rPcnmMeyDlH1cHzOMPe5.png', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 14:29:00', '2021-09-09 14:32:39', 7),
(140, 'Serie 52 Diapo 17', NULL, 'diapositives\\September2021\\jVkYJ4idSzYTQmEBf3Gt.png', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 14:29:17', '2021-09-09 14:29:17', 5),
(141, 'Serie 54 Diapo 2', NULL, 'diapositives\\September2021\\sbDbJub4Pppq0vmyDc7A.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 14:29:00', '2021-09-09 14:35:12', 7),
(142, 'Serie 52 Diapo 18', NULL, 'diapositives\\September2021\\sNbpVfpBIuKs6GH1hPrk.png', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 14:30:14', '2021-09-09 14:30:14', 5),
(143, 'Serie 52 Diapo 19', NULL, 'diapositives\\September2021\\NsUrmixPFH6DRJHHVNYl.png', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 14:31:29', '2021-09-09 14:31:29', 5),
(144, 'Serie 52 Diapo 20', NULL, 'diapositives\\September2021\\kbHjKBc4ekvhQodeZfXy.png', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 14:32:28', '2021-09-09 14:32:28', 5),
(145, 'Serie 54 Diapo 3', NULL, 'diapositives\\September2021\\1SiIM7TDUzqFkLKsEHjO.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 14:40:00', '2021-09-09 14:40:00', 7),
(146, 'Serie 52 Diapo 21', NULL, 'diapositives\\September2021\\2QPTiQSO73FD5BmfqC4O.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 14:40:06', '2021-09-09 14:40:06', 5),
(147, 'Serie 52 Diapo 22', NULL, 'diapositives\\September2021\\XjxgQ2QAMc6MN6PaXS76.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 14:41:22', '2021-09-09 14:41:22', 5),
(148, 'Serie 54 Diapo 4', NULL, 'diapositives\\September2021\\tylrvVdDtQAYZzgBqKCi.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 14:41:59', '2021-09-09 14:41:59', 7),
(149, 'Serie 54 Diapo 5', NULL, 'diapositives\\September2021\\LgubL3HELIYIQzWWm5bQ.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 14:42:33', '2021-09-09 14:42:33', 7),
(150, 'Serie 54 Diapo 6', NULL, 'diapositives\\September2021\\0ztWVk1z4Mxblq9IQWG5.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 14:43:17', '2021-09-09 14:43:17', 7),
(151, 'Serie 54 Diapo 7', NULL, 'diapositives\\September2021\\RJlmmnugjB0LxUYTH1qG.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 14:43:51', '2021-09-09 14:43:51', 7),
(152, 'Serie 54 Diapo 8', NULL, 'diapositives\\September2021\\VPiz55goHqVOrVtK3b6j.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 14:44:21', '2021-09-09 14:44:21', 7),
(153, 'Serie 52 Diapo 23', NULL, 'diapositives\\September2021\\6tuoijjd8K7K9bJWLJzG.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 14:44:39', '2021-09-09 14:44:39', 5),
(154, 'Serie 54 Diapo 9', NULL, 'diapositives\\September2021\\srg41rxyJKAL9wdOKq7x.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 14:45:01', '2021-09-09 14:45:01', 7),
(155, 'Serie 54 Diapo 10', NULL, 'diapositives\\September2021\\OzdqaSjmgrxno9LGcBEw.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 14:45:50', '2021-09-09 14:45:50', 7),
(156, 'Serie 54 Diapo 11', NULL, 'diapositives\\September2021\\926MFwuAjM4qdfHivf7I.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 14:46:38', '2021-09-09 14:46:38', 7),
(157, 'Serie 52 Diapo 24', NULL, 'diapositives\\September2021\\kYtjUJYYmsmf87SgmYEz.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 14:47:03', '2021-09-09 14:47:03', 5),
(158, 'Serie 54 Diapo 12', NULL, 'diapositives\\September2021\\nLoWDrq1EWEk25R8PaXL.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 14:47:15', '2021-09-09 14:47:15', 7),
(159, 'Serie 54 Diapo 13', NULL, 'diapositives\\September2021\\1FJLqzp3GAFyThXXr47T.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 14:47:58', '2021-09-09 14:47:58', 7),
(160, 'Serie 54 Diapo 14', NULL, 'diapositives\\September2021\\Ao1ds0kdoaPL4xiUrVKC.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 14:48:38', '2021-09-09 14:48:38', 7),
(161, 'Serie 52 Diapo 25', NULL, 'diapositives\\September2021\\jfFr7JDvdI9VxRZTJDQT.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 14:49:00', '2021-09-09 14:49:00', 5),
(162, 'Serie 54 Diapo 15', NULL, 'diapositives\\September2021\\8ESoGZs8FQGJzBUM9uyi.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 14:49:17', '2021-09-09 14:49:17', 7),
(163, 'Serie 52 Diapo 26', NULL, 'diapositives\\September2021\\Ooj6I4gqQSGLO91NeijY.png', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 14:50:20', '2021-09-09 14:50:20', 5),
(164, 'Serie 54 Diapo 16', NULL, 'diapositives\\September2021\\CxiGSYryCgQ78qs8FWTM.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 14:51:16', '2021-09-09 14:51:16', 7),
(165, 'Serie 52 Diapo 26', NULL, 'diapositives\\September2021\\z3Wgg4i7Lgx5C8awl47g.png', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 14:51:23', '2021-09-09 14:51:23', 5),
(166, 'Serie 54 Diapo 17', NULL, 'diapositives\\September2021\\66pKIypSfg1J223gp9D5.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 14:51:55', '2021-09-09 14:51:55', 7),
(167, 'Serie 52 Diapo 27', NULL, 'diapositives\\September2021\\ZphP0hctccLuMdgCgWD0.png', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 14:52:50', '2021-09-09 14:52:50', 5),
(168, 'Serie 54 Diapo 18', NULL, 'diapositives\\September2021\\f3lbRuG6PfxMWNElvjYS.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 14:53:02', '2021-09-09 14:53:02', 7),
(169, 'Serie 54 Diapo 19', NULL, 'diapositives\\September2021\\cGWAIKaLf9pX22uhtiCC.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 14:53:46', '2021-09-09 14:53:46', 7),
(170, 'Serie 52 Diapo 28', NULL, 'diapositives\\September2021\\FkdgoIfw0uEBCF61wh7I.png', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 14:54:01', '2021-09-09 14:54:01', 5),
(171, 'Serie 54 Diapo 20', NULL, 'diapositives\\September2021\\AC3w2LQnrQJKIhCPDnvP.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 14:54:31', '2021-09-09 14:54:31', 7),
(172, 'Serie 52 Diapo 29', NULL, 'diapositives\\September2021\\BG9EAhUs0o25zLmCIidk.png', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 14:54:50', '2021-09-09 14:54:50', 5),
(173, 'Serie 54 Diapo 21', NULL, 'diapositives\\September2021\\6G86kKVvhcYiSKTnT14A.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 14:56:24', '2021-09-09 14:56:24', 7),
(174, 'Serie 54 Diapo 22', NULL, 'diapositives\\September2021\\qQuDyoO7XNVQvEeQSW2D.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 14:57:04', '2021-09-09 14:57:04', 7),
(175, 'Serie 52 Diapo 30', NULL, 'diapositives\\September2021\\cBHC6RQjkZ1x6UB1Ss17.png', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 14:57:21', '2021-09-09 14:57:21', 5),
(176, 'Serie 54 Diapo 23', NULL, 'diapositives\\September2021\\a2wd6pbv6J6EH8GHf5Rc.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 14:57:59', '2021-09-09 14:57:59', 7),
(177, 'Serie 52 Diapo 31', NULL, 'diapositives\\September2021\\uymEnfQ6qt1mmnOtuMOt.png', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 14:58:21', '2021-09-09 14:58:21', 5),
(178, 'Serie 54 Diapo 24', NULL, 'diapositives\\September2021\\nPo30d4CUc2nTJdhL9XP.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 14:58:42', '2021-09-09 14:58:42', 7),
(179, 'Serie 52 Diapo 32', NULL, 'diapositives\\September2021\\L6RH1R8sPOoSvzWvxV56.png', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 14:59:16', '2021-09-09 14:59:16', 5),
(180, 'Serie 54 Diapo 25', NULL, 'diapositives\\September2021\\CH3qYhQvkLrcyaChrrbZ.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 14:59:27', '2021-09-09 14:59:27', 7),
(181, 'Serie 52 Diapo 33', NULL, 'diapositives\\September2021\\3rsZ7WUZ6oiwQpUktfrB.png', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 15:00:09', '2021-09-09 15:00:09', 5),
(182, 'Serie 54 Diapo 26', NULL, 'diapositives\\September2021\\BHYkTh5VvBGsIvwHdWrc.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 15:00:10', '2021-09-09 15:00:10', 7),
(183, 'Serie 54 Diapo 27', NULL, 'diapositives\\September2021\\87IJnkWTLiNhtg9kSQmJ.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 15:01:01', '2021-09-09 15:01:01', 7),
(184, 'Serie 52 Diapo 34', NULL, 'diapositives\\September2021\\LW5imFZyIFg03ZMh0TIP.png', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 15:01:09', '2021-09-09 15:01:09', 5),
(185, 'Serie 54 Diapo 28', NULL, 'diapositives\\September2021\\zWdWJAhGQBPGUE6bQxse.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 15:02:08', '2021-09-09 15:02:08', 7),
(186, 'Serie 52 Diapo 35', NULL, 'diapositives\\September2021\\iywH0oWjJrdXEGoPTrsK.png', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 15:02:16', '2021-09-09 15:02:16', 5),
(187, 'Serie 54 Diapo 36', NULL, 'diapositives\\September2021\\1SUX1VbSlXV4uG5f8TSN.JPG', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 15:03:06', '2021-09-09 15:03:06', 7),
(188, 'Serie 52 Diapo 36', NULL, 'diapositives\\September2021\\xR60lK1CBiXE3PLJX95O.png', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 15:03:22', '2021-09-09 15:03:22', 5),
(189, 'Serie 54 Diapo 37', NULL, 'diapositives\\September2021\\cu4os0thhMS90Gr30x7p.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 15:03:48', '2021-09-09 15:03:48', 7),
(190, 'Serie 52 Diapo 37', NULL, 'diapositives\\September2021\\XAtlguxhwcIo6mQoE6bj.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 15:04:25', '2021-09-09 15:04:25', 5),
(191, 'Serie 54 Diapo 38', NULL, 'diapositives\\September2021\\m2NMgJRHV5CYICBAho3k.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 15:05:01', '2021-09-09 15:05:01', 7),
(192, 'Serie 52 Diapo 38', NULL, 'diapositives\\September2021\\7492j24CuCtMbUoORD1K.png', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 15:05:16', '2021-09-09 15:05:16', 5),
(193, 'Serie 54 Diapo 39', NULL, 'diapositives\\September2021\\zrnUNf0BASjGH4fyhGn2.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 15:06:03', '2021-09-09 15:06:03', 7),
(194, 'Serie 54 Diapo 40', NULL, 'diapositives\\September2021\\WSbkLcnDMTcvoGbZPHo5.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 15:06:46', '2021-09-09 15:06:46', 7),
(195, 'Serie 55 Diapo 1', NULL, 'diapositives\\September2021\\TjEKasGxW4vuFIJUIoFA.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 15:07:00', '2021-09-09 15:08:50', 8),
(196, 'Serie 55 Diapo 2', NULL, 'diapositives\\September2021\\BeKNW1vk1jg4G90376S8.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 15:08:21', '2021-09-09 15:08:21', 8),
(197, 'Serie 55 Diapo 3', NULL, 'diapositives\\September2021\\mtnRehG4rLSgIM7CHSgD.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 15:09:33', '2021-09-09 15:09:33', 8),
(198, 'Serie 55 Diapo 4', NULL, 'diapositives\\September2021\\8MgHbrssDPIFPJfkMSXo.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 15:10:10', '2021-09-09 15:10:10', 8),
(199, 'Serie 55 Diapo 5', NULL, 'diapositives\\September2021\\3Je453OcpnMVkdJBu3Pg.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 15:11:11', '2021-09-09 15:11:11', 8),
(200, 'Serie 55 Diapo 6', NULL, 'diapositives\\September2021\\8T1l1kGRie0tH0daWq11.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 15:11:57', '2021-09-09 15:11:57', 8),
(201, 'Serie 55 Diapo 7', NULL, 'diapositives\\September2021\\uop2XC5lIzBFNyw0P1i2.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 15:12:33', '2021-09-09 15:12:33', 8),
(202, 'Serie 55 Diapo 8', NULL, 'diapositives\\September2021\\40XygqLk8xK68DV39GHD.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 15:13:09', '2021-09-09 15:13:09', 8),
(203, 'Serie 55 Diapo 9', NULL, 'diapositives\\September2021\\ZX4LLkij0kq27HPfKKDB.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 15:13:41', '2021-09-09 15:13:41', 8),
(204, 'Serie 55 Diapo 10', NULL, 'diapositives\\September2021\\tfkR4VV0DHvgNOwSUj75.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 15:15:47', '2021-09-09 15:15:47', 8),
(205, 'Serie 55 Diapo 11', NULL, 'diapositives\\September2021\\BFCwHfL6ux049l1ILKle.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 15:16:25', '2021-09-09 15:16:25', 8),
(206, 'Serie 55 Diapo 12', NULL, 'diapositives\\September2021\\xakkwECKZJs0cPTrP7Z4.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 15:17:03', '2021-09-09 15:17:03', 8),
(207, 'Serie 55 Diapo 13', NULL, 'diapositives\\September2021\\OmH8mfKy3JOhH486Mz5R.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 15:17:45', '2021-09-09 15:17:45', 8),
(208, 'Serie 52 Diapo 39', NULL, 'diapositives\\September2021\\HHc2cLLbLMhane67NGCJ.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 15:18:10', '2021-09-09 15:18:10', 5),
(209, 'Serie 55 Diapo 14', NULL, 'diapositives\\September2021\\bipuNHbnIJUqHO4754St.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 15:18:25', '2021-09-09 15:18:25', 8),
(210, 'Serie 55 Diapo 15', NULL, 'diapositives\\September2021\\s9tSacmgnzJPD2n4DGV4.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 15:19:06', '2021-09-09 15:19:06', 8),
(211, 'Serie 52 Diapo 40', NULL, 'diapositives\\September2021\\6CBk1dHtHkRrhMWQoi2C.png', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 15:19:07', '2021-09-09 15:19:07', 5),
(212, 'Serie 55 Diapo 16', NULL, 'diapositives\\September2021\\IgfApliIAMcu5jxuh6If.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 15:19:54', '2021-09-09 15:19:54', 8),
(213, 'Serie 53 Diapo 1', NULL, 'diapositives\\September2021\\PHjkPzuQQQH6fMY94D3n.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 15:21:00', '2021-09-09 15:22:11', 6),
(214, 'Serie 55 Diapo 17', NULL, 'diapositives\\September2021\\F2JOnU3plrCV0uLL9Awh.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 15:21:18', '2021-09-09 15:21:18', 8),
(215, 'Serie 55 Diapo 18', NULL, 'diapositives\\September2021\\MKfcaS2R7jyK9w1Kezvy.bmp', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 15:21:56', '2021-09-09 15:21:56', 8),
(216, 'Serie 55 Diapo 19', NULL, 'diapositives\\September2021\\fNrKl3muaBM5ESJicGyk.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 15:23:12', '2021-09-09 15:23:12', 8),
(217, 'Serie 55 Diapo 20', NULL, 'diapositives\\September2021\\l3UsUCAV5yaEq7zPgR7N.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 15:23:00', '2021-09-09 15:24:11', 8),
(218, 'Serie 55 Diapo 21', NULL, 'diapositives\\September2021\\pxTLv7ySzKDI8Dl6uaTL.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 15:25:26', '2021-09-09 15:25:26', 8),
(219, 'Serie 55 Diapo 22', NULL, 'diapositives\\September2021\\tAW6iziW1lGI2d65nsBz.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 15:26:07', '2021-09-09 15:26:07', 8),
(220, 'Serie 55 Diapo 23', NULL, 'diapositives\\September2021\\qna1omoOZziffyOdafu5.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 15:26:44', '2021-09-09 15:26:44', 8),
(221, 'Serie 53 Diapo 2', NULL, 'diapositives\\September2021\\GK8DeKH27ficvmKNEk6o.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 15:27:10', '2021-09-09 15:27:10', 6),
(222, 'Serie 55 Diapo 24', NULL, 'diapositives\\September2021\\d6IdlKVBCjBTaDhjsx7v.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 15:27:38', '2021-09-09 15:27:38', 8),
(223, 'Serie 55 Diapo 25', NULL, 'diapositives\\September2021\\sFHePua87eJG9jLpQJ3I.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 15:28:19', '2021-09-09 15:28:19', 8),
(224, 'Serie 53 Diapo 3', NULL, 'diapositives\\September2021\\YVqyArxuJYFZKQliWnZZ.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 15:28:27', '2021-09-09 15:28:27', 6),
(225, 'Serie 55 Diapo 26', NULL, 'diapositives\\September2021\\Cvb1vcuKKYRwA8To3v4x.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 15:29:13', '2021-09-09 15:29:13', 8),
(226, 'Serie 55 Diapo 27', NULL, 'diapositives\\September2021\\Gou4rZnLJ6GpYz6F2XYf.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 15:29:59', '2021-09-09 15:29:59', 8),
(227, 'Serie 55 Diapo 28', NULL, 'diapositives\\September2021\\WJbtmhIZphawaUBCwCJh.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 15:32:09', '2021-09-09 15:32:09', 8),
(228, 'Serie 55 Diapo 29', NULL, 'diapositives\\September2021\\nJSHytirgdll2CBiUn4Y.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 15:33:52', '2021-09-09 15:33:52', 8),
(229, 'Serie 55 Diapo 30', NULL, 'diapositives\\September2021\\XGTmm2qENUxfPyM1H1Mz.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 15:45:51', '2021-09-09 15:45:51', 8),
(230, 'Serie 55 Diapo 31', NULL, 'diapositives\\September2021\\7kOARCLsXzZaNfRXGS4T.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 15:47:00', '2021-09-09 15:47:00', 8),
(231, 'Serie 55 Diapo 32', NULL, 'diapositives\\September2021\\IWcdb07MdqLn3MoEo6Vq.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 15:48:04', '2021-09-09 15:48:04', 8),
(232, 'Serie 55 Diapo 33', NULL, 'diapositives\\September2021\\e3YeOrCmrDKlAk1ghV6u.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 15:50:00', '2021-09-09 15:51:37', 8),
(233, 'Serie 55 Diapo 34', NULL, 'diapositives\\September2021\\4nbVlE0e4Z0RuPwzFcLV.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 15:53:12', '2021-09-09 15:53:12', 8),
(234, 'Serie 53 Diapo 4', NULL, 'diapositives\\September2021\\9GTJ2wquKvS3OLwqRksW.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 15:55:39', '2021-09-09 15:55:39', 6),
(235, 'Serie 55 Diapo 35', NULL, 'diapositives\\September2021\\ZNnbr3mL3k9OUGutgP7y.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 15:56:06', '2021-09-09 15:56:06', 8),
(236, 'Serie 53 Diapo 5', NULL, 'diapositives\\September2021\\7lD5QeiWNBkX7Wi0PmLg.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 15:56:53', '2021-09-09 15:56:53', 6),
(237, 'Serie 55 Diapo 36', NULL, 'diapositives\\September2021\\aCpdmYqRxR0bh6vep3T8.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 15:57:26', '2021-09-09 15:57:26', 8),
(238, 'Serie 55 Diapo 37', NULL, 'diapositives\\September2021\\XGwCfohHJ8B7dJHAB1oe.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 15:58:36', '2021-09-09 15:58:36', 8),
(239, 'Serie 53 Diapo 6', NULL, 'diapositives\\September2021\\v9KftpRaagTLCDPv3ajU.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 15:58:52', '2021-09-09 15:58:52', 6),
(240, 'Serie 55 Diapo 38', NULL, 'diapositives\\September2021\\CMMpZj9GDtk1sDQjgC1D.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 15:59:20', '2021-09-09 15:59:20', 8),
(241, 'Serie 55 Diapo 39', NULL, 'diapositives\\September2021\\An7gqj44E1iRft4VDRog.bmp', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 16:00:02', '2021-09-09 16:00:02', 8),
(242, 'Serie 53 Diapo 7', NULL, 'diapositives\\September2021\\CdfYE03UQNpWRWptXF8T.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 16:00:42', '2021-09-09 16:00:42', 6),
(243, 'Serie 55 Diapo 40', NULL, 'diapositives\\September2021\\FLo89ABetcceivMCYbH5.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 16:00:49', '2021-09-09 16:00:49', 8),
(244, 'Serie 53 Diapo 8', NULL, 'diapositives\\September2021\\TUP7Z11uugjjEojsfmQd.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 16:01:47', '2021-09-09 16:01:47', 6),
(245, 'Serie 53 Diapo 9', NULL, 'diapositives\\September2021\\Bp3IHOfcNOyPdH0qnWyX.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 16:03:42', '2021-09-09 16:03:42', 6),
(246, 'Serie 53 Diapo 10', NULL, 'diapositives\\September2021\\AyEERemQn5MdcRUV5lOM.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 16:04:53', '2021-09-09 16:04:53', 6),
(247, 'Serie 53 Diapo 11', NULL, 'diapositives\\September2021\\VlCNSxcBr8VSqYZAyslg.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 16:06:36', '2021-09-09 16:06:36', 6),
(248, 'Serie 53 Diapo 12', NULL, 'diapositives\\September2021\\JnTyQuORivq3bVYUQONY.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 16:07:50', '2021-09-09 16:07:50', 6),
(250, 'Serie 53 Diapo 13', NULL, 'diapositives\\September2021\\3OwyoCUstnAEKkvXmioO.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 16:22:14', '2021-09-09 16:22:14', 6),
(251, 'Serie 53 Diapo 14', NULL, 'diapositives\\September2021\\4bU2V2yYyuJBbd2Ub1Hw.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 16:23:14', '2021-09-09 16:23:14', 6),
(253, 'Serie 53 Diapo 15', NULL, 'diapositives\\September2021\\1n99ZgyPvp81bnY4ZRfv.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 16:25:26', '2021-09-09 16:25:26', 6),
(254, 'Serie 53 Diapo 16', NULL, 'diapositives\\September2021\\zJpYcZkOQC3YC5YSUXy7.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 16:26:32', '2021-09-09 16:26:32', 6),
(255, 'Serie 53 Diapo 17', NULL, 'diapositives\\September2021\\yFKa6zSGcVKqWu3zKFf3.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 16:27:38', '2021-09-09 16:27:38', 6),
(256, 'Serie 53 Diapo 18', NULL, 'diapositives\\September2021\\4Adp6kR0632xaa87xdjv.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 16:28:37', '2021-09-09 16:28:37', 6),
(257, 'Serie 53 Diapo 19', NULL, 'diapositives\\September2021\\zjhicGgAz2Nf5eRG11p5.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 16:29:45', '2021-09-09 16:29:45', 6),
(258, 'Serie 51  Diapo 1', NULL, 'diapositives\\September2021\\dfHlaaMNwJNgjUKLQqgv.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 16:30:03', '2021-09-09 16:30:03', 4),
(259, 'Serie 53 Diapo 20', NULL, 'diapositives\\September2021\\bPkWHc15hX1u9tYQGeqH.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 16:30:56', '2021-09-09 16:30:56', 6),
(260, 'Serie 51  Diapo 2', NULL, 'diapositives\\September2021\\9JgC06HSQLP6Qf6MSqaP.JPG', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 16:31:37', '2021-09-09 16:31:37', 4),
(261, 'Serie 53 Diapo 21', NULL, 'diapositives\\September2021\\gIQoa1261Kknqv7uTjWJ.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 16:32:05', '2021-09-09 16:32:05', 6),
(262, 'Serie 51  Diapo 3', NULL, 'diapositives\\September2021\\3jaKgugZ7xouPVRLROsl.JPG', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 16:32:23', '2021-09-09 16:32:23', 4),
(263, 'Serie 53 Diapo 22', NULL, 'diapositives\\September2021\\99ywKCXRueEOIkmNlB1E.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 16:33:13', '2021-09-09 16:33:13', 6),
(264, 'Serie 51  Diapo 4', NULL, 'diapositives\\September2021\\PxijWSRT8rQpoIqKVx6g.JPG', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 16:33:26', '2021-09-09 16:33:26', 4),
(265, 'Serie 51  Diapo 5', NULL, 'diapositives\\September2021\\nftRUrLFGmscRp49QNea.JPG', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 16:34:16', '2021-09-09 16:34:16', 4),
(266, 'Serie 53 Diapo 23', NULL, 'diapositives\\September2021\\kfydSOhsHlLgjQAXz7RF.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 16:34:27', '2021-09-09 16:34:27', 6),
(267, 'Serie 51  Diapo 6', NULL, 'diapositives\\September2021\\vax4FxHCTlw0MHCDINAr.JPG', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 16:35:02', '2021-09-09 16:35:02', 4),
(268, 'Serie 53 Diapo 24', NULL, 'diapositives\\September2021\\zci2dZIjibP6NcpKPhUL.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 16:35:28', '2021-09-09 16:35:28', 6),
(269, 'Serie 51  Diapo 7', NULL, 'diapositives\\September2021\\9kV9pnXLwptljeIKTfWt.JPG', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 16:35:55', '2021-09-09 16:35:55', 4),
(270, 'Serie 53 Diapo 25', NULL, 'diapositives\\September2021\\C3bGg7W0BQo0daYaNtH1.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 16:36:42', '2021-09-09 16:36:42', 6);
INSERT INTO `diapositives` (`id`, `num_diapositive`, `description`, `image_simple`, `image_corrige`, `lecture_audio_fr`, `lecture_audio_dl`, `lecture_audio_mr`, `explication_text`, `explication_audio_fr`, `explication_audio_dl`, `explication_audio_mr`, `created_at`, `updated_at`, `serie`) VALUES
(271, 'Serie 51  Diapo 8', NULL, 'diapositives\\September2021\\Zj9tP7xespleZST76Tyq.JPG', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 16:36:50', '2021-09-09 16:36:50', 4),
(272, 'Serie 51  Diapo 9', NULL, 'diapositives\\September2021\\zIaDPR8LLr4OKZnI9Jsx.JPG', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 16:37:36', '2021-09-09 16:37:36', 4),
(273, 'Serie 53 Diapo 27', NULL, 'diapositives\\September2021\\uiQ5a3G1GEpXnB5Loqwl.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 16:37:46', '2021-09-09 16:37:46', 6),
(274, 'Serie 51  Diapo 10', NULL, 'diapositives\\September2021\\lHLg0kSaF55ZbXHBj3FA.JPG', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 16:39:17', '2021-09-09 16:39:17', 4),
(275, 'Serie 51  Diapo 12', NULL, 'diapositives\\September2021\\W8oEHKzt9iadFoZKDaio.JPG', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 16:41:22', '2021-09-09 16:41:22', 4),
(276, 'Serie 51  Diapo 11', NULL, 'diapositives\\September2021\\d61sMuTX37YbDjz4wjxr.JPG', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 16:42:32', '2021-09-09 16:42:32', 4),
(277, 'Serie 51  Diapo 13', NULL, 'diapositives\\September2021\\dHSlkw7Nq67Uhw3H2jPj.JPG', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 16:44:13', '2021-09-09 16:44:13', 4),
(278, 'Serie 51  Diapo 14', NULL, 'diapositives\\September2021\\Sumd7yrw1hZZEKfMP5Si.JPG', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 16:44:54', '2021-09-09 16:44:54', 5),
(279, 'Serie 51  Diapo 15', NULL, 'diapositives\\September2021\\r61OoQpPgTQ4FpyRIvV9.JPG', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 16:45:44', '2021-09-09 16:45:44', 4),
(280, 'Serie 51  Diapo 16', NULL, 'diapositives\\September2021\\5kn5vZ7BoEfLMtop6XXG.JPG', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 16:46:20', '2021-09-09 16:46:20', 4),
(281, 'Serie 51  Diapo 17', NULL, 'diapositives\\September2021\\qFsredJMFKUDoS5z4cRG.JPG', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 16:47:38', '2021-09-09 16:47:38', 4),
(282, 'Serie 51  Diapo 18', NULL, 'diapositives\\September2021\\VZBng2ve4kzH7mg4ybl7.JPG', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 16:48:26', '2021-09-09 16:48:26', 3),
(283, 'Serie 51  Diapo 19', NULL, 'diapositives\\September2021\\187uaw6f2PNswVFcgDGj.JPG', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 16:49:11', '2021-09-09 16:49:11', 4),
(284, 'Serie 51  Diapo 20', NULL, 'diapositives\\September2021\\LttAQqNLhUBd2N2GasEd.JPG', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 16:49:52', '2021-09-09 16:49:52', 4),
(285, 'Serie 51  Diapo 21', NULL, 'diapositives\\September2021\\ZnYlrYVrVIg36osuHgwR.JPG', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 16:50:51', '2021-09-09 16:50:51', 4),
(286, 'Serie 51  Diapo 22', NULL, 'diapositives\\September2021\\4sHvXqw9WPbIJYEzxJiz.JPG', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 16:51:43', '2021-09-09 16:51:43', 4),
(287, 'Serie 51  Diapo 23', NULL, 'diapositives\\September2021\\tK1tykeuqfYlEAIVDq11.JPG', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 16:52:30', '2021-09-09 16:52:30', 4),
(288, 'Serie 51  Diapo 24', NULL, 'diapositives\\September2021\\9n6OGp5x6EEN9OlOuxqR.JPG', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 16:53:15', '2021-09-09 16:53:15', 4),
(289, 'Serie 51  Diapo 25', NULL, 'diapositives\\September2021\\jzoylaeABkpRGUBr7F70.JPG', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 16:53:53', '2021-09-09 16:53:53', 4),
(290, 'Serie 51  Diapo 26', NULL, 'diapositives\\September2021\\V7TeIdui0Q47np5GYb6K.JPG', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 16:54:42', '2021-09-09 16:54:42', 4),
(291, 'Serie 51  Diapo 27', NULL, 'diapositives\\September2021\\vSCFLbLdaDCtB5VwWCof.JPG', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 16:55:22', '2021-09-09 16:55:22', 4),
(292, 'Serie 51  Diapo 28', NULL, 'diapositives\\September2021\\Bd5cC6kBBCmg4wWdL1SZ.JPG', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 16:56:00', '2021-09-09 16:56:00', 4),
(293, 'Serie 51  Diapo 29', NULL, 'diapositives\\September2021\\eZBSJuQqj0F8mLDHlHoh.JPG', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 16:56:37', '2021-09-09 16:56:37', 4),
(294, 'Serie 51  Diapo 30', NULL, 'diapositives\\September2021\\tDbnEgLUcW8bQ1SNEQ4E.JPG', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 16:57:19', '2021-09-09 16:57:19', 4),
(295, 'Serie 51  Diapo 31', NULL, 'diapositives\\September2021\\5oS7XY82AkBFuxodbAJP.JPG', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 16:57:57', '2021-09-09 16:57:57', 4),
(296, 'Serie 51  Diapo 32', NULL, 'diapositives\\September2021\\wKRZjpbhSj0WZ4GIZNPV.JPG', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 16:58:54', '2021-09-09 16:58:54', 4),
(297, 'Serie 51  Diapo 33', NULL, 'diapositives\\September2021\\MvZFdwJb1cX4ZDr3Ft1g.JPG', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 16:59:41', '2021-09-09 16:59:41', 4),
(298, 'Serie 51  Diapo 35', NULL, 'diapositives\\September2021\\384DyivfpEW9QL4qZ11X.JPG', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 17:00:20', '2021-09-09 17:00:20', 4),
(299, 'Serie 53 Diapo 28', NULL, 'diapositives\\September2021\\VvuMpTz4kOpZpuHnRDNx.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 17:03:55', '2021-09-09 17:03:55', 6),
(300, 'Serie 51  Diapo 36', NULL, 'diapositives\\September2021\\6FgixGeB1QokcCFTtetG.JPG', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 17:05:00', '2021-09-09 17:05:00', 4),
(301, 'Serie 53 Diapo 29', NULL, 'diapositives\\September2021\\wZWEnrKCgbFom2oNR4RF.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 17:05:22', '2021-09-09 17:05:22', 6),
(302, 'Serie 51  Diapo 37', NULL, 'diapositives\\September2021\\CUAeaIhMHZvjmxLjmJV2.JPG', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 17:05:48', '2021-09-09 17:05:48', 4),
(303, 'Serie 51  Diapo 38', NULL, 'diapositives\\September2021\\OAnmyk81SSZiOqs1Jp0w.JPG', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 17:06:36', '2021-09-09 17:06:36', 4),
(304, 'Serie 53 Diapo 30', NULL, 'diapositives\\September2021\\6W1noDMcTRnyNdSsgtrP.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 17:06:47', '2021-09-09 17:06:47', 6),
(305, 'Serie 51  Diapo 39', NULL, 'diapositives\\September2021\\FNmEIpTuf1d54cFf67HR.JPG', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 17:07:18', '2021-09-09 17:07:18', 4),
(306, 'Serie 51  Diapo 40', NULL, 'diapositives\\September2021\\aCVaJVzK5oY6aCX7q6jR.JPG', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 17:08:13', '2021-09-09 17:08:13', 4),
(307, 'Serie 53 Diapo 31', NULL, 'diapositives\\September2021\\o7UDQ69udd2mM2LPDmkL.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 17:08:36', '2021-09-09 17:08:36', 6),
(308, 'Serie 53 Diapo 32', NULL, 'diapositives\\September2021\\L7ZIghMQ5lbN7HuQtycW.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 17:10:28', '2021-09-09 17:10:28', 6),
(309, 'Serie 53 Diapo 33', NULL, 'diapositives\\September2021\\Ph3NwnQeEpgSKJatcJpM.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 17:11:55', '2021-09-09 17:11:55', 6),
(310, 'Serie 53 Diapo 34', NULL, 'diapositives\\September2021\\hl7nkRvrSWkBw2Hctgqh.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 17:12:54', '2021-09-09 17:12:54', 6),
(311, 'Serie 51  Diapo 34', NULL, 'diapositives\\September2021\\6hwqLNermcr1QF5F3EH6.JPG', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 17:13:31', '2021-09-09 17:13:31', 4),
(312, 'Serie 53 Diapo 35', NULL, 'diapositives\\September2021\\iHrqbtg6V7GFw86U3b8g.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 17:14:02', '2021-09-09 17:14:02', 6),
(313, 'Serie 53 Diapo 36', NULL, 'diapositives\\September2021\\nqE0g7byaq8XghHGHnZw.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 17:15:42', '2021-09-09 17:15:42', 6),
(314, 'Serie 53 Diapo 37', NULL, 'diapositives\\September2021\\nUh3oDzIP5PbPhnfqliI.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 17:17:11', '2021-09-09 17:17:11', 6),
(315, 'Serie 53 Diapo 38', NULL, 'diapositives\\September2021\\OPvXDrhNZDY8hxE1R7yH.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 17:18:27', '2021-09-09 17:18:27', 6),
(316, 'Serie 53 Diapo 39', NULL, 'diapositives\\September2021\\PJJ6HvZ2C66S9AvJUgvA.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 17:19:43', '2021-09-09 17:19:43', 6),
(317, 'Serie 53 Diapo 40', NULL, 'diapositives\\September2021\\IwkHBE3pqOVGcGIEkNGj.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 17:20:34', '2021-09-09 17:20:34', 6),
(318, 'Serie 53 Diapo 26', NULL, 'diapositives\\September2021\\NmlO0qU8BmkMVCDxmKdl.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-09 17:28:34', '2021-09-09 17:28:34', 6),
(319, 'Panneaux cochés Diapo 1', NULL, 'diapositives\\September2021\\Rf69hvpsltlpiAIO5cyI.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-10 11:44:36', '2021-09-10 11:44:36', 12),
(320, 'Panneaux cochés Diapo 2', NULL, 'diapositives\\September2021\\FnjS5pctlkDXR5aweLqy.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-10 11:46:59', '2021-09-10 11:46:59', 12),
(321, 'Panneaux cochés Diapo 3', NULL, 'diapositives\\September2021\\ZWOzva4EUOhbPiRZSwBK.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-10 11:48:55', '2021-09-10 11:48:55', 12),
(322, 'Panneaux cochés Diapo 4', NULL, 'diapositives\\September2021\\NqZg2NAUaFL4Fmq5hSn8.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-10 11:50:41', '2021-09-10 11:50:41', 12),
(323, 'Panneaux cochés Diapo 5', NULL, 'diapositives\\September2021\\1nj0oPW25xG2D47mnG3U.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-10 11:55:02', '2021-09-10 11:55:02', 12),
(324, 'Panneaux cochés Diapo 6', NULL, 'diapositives\\September2021\\iAmAcl97rqbbFees30c1.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-10 11:56:15', '2021-09-10 11:56:15', 12),
(325, 'Panneaux cochés Diapo 7', NULL, 'diapositives\\September2021\\BqXvRU8sZUcuStQ84NL3.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-10 11:57:31', '2021-09-10 11:57:31', 12),
(326, 'Panneaux cochés Diapo 8', NULL, 'diapositives\\September2021\\9mUzu6wi3K2BXLftTtdP.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-10 11:58:41', '2021-09-10 11:58:41', 12),
(327, 'Panneaux cochés Diapo 9', NULL, 'diapositives\\September2021\\ytezZL0lvkEc1AKKb9bz.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-10 11:59:48', '2021-09-10 11:59:48', 12),
(328, 'Panneaux cochés Diapo 10', NULL, 'diapositives\\September2021\\tDfVx0urlr7YS6QIu9WH.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-10 12:00:56', '2021-09-10 12:00:56', 12),
(330, 'Panneaux cochés Diapo 11', NULL, 'diapositives\\September2021\\O2WkniuvPwGNQZ29cmhO.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-10 12:03:16', '2021-09-10 12:03:16', 12),
(331, 'Panneaux cochés Diapo 12', NULL, 'diapositives\\September2021\\Uayy7Rg2hdaIr0VhYidt.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-10 12:04:17', '2021-09-10 12:04:17', 12),
(332, 'Panneaux cochés Diapo 13', NULL, 'diapositives\\September2021\\xfVHQWlXSXRIfukyc2Zl.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-10 12:05:36', '2021-09-10 12:05:36', 12),
(333, 'Panneaux cochés Diapo 14', NULL, 'diapositives\\September2021\\Qtm4mI12fiB3iZABIbCk.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-10 12:06:52', '2021-09-10 12:06:52', 12),
(334, 'Panneaux cochés Diapo 15', NULL, 'diapositives\\September2021\\tNpJcfbny0KfPe0Cxny1.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-10 12:08:04', '2021-09-10 12:08:04', 12),
(335, 'Panneaux cochés Diapo 16', NULL, 'diapositives\\September2021\\XgbFEZc82HOpH8BznODz.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-10 12:08:59', '2021-09-10 12:08:59', 12),
(336, 'Panneaux cochés Diapo 17', NULL, 'diapositives\\September2021\\PGkMW0y3uzIWsle4HJC2.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-10 12:10:12', '2021-09-10 12:10:12', 12),
(337, 'Panneaux cochés Diapo 18', NULL, 'diapositives\\September2021\\oAi8EtkrSbj9sz58ZDrr.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-10 12:46:38', '2021-09-10 12:46:38', 12),
(338, 'Panneaux cochés Diapo 19', NULL, 'diapositives\\September2021\\nT7SRQzHdVmJqEU4Nr2C.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-10 12:49:03', '2021-09-10 12:49:03', 12),
(339, 'Panneaux cochés Diapo 20', NULL, 'diapositives\\September2021\\AviHZ03Y18YiHADpqisb.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-10 12:50:36', '2021-09-10 12:50:36', 12),
(340, 'Panneaux cochés Diapo 21', NULL, 'diapositives\\September2021\\sY5xAzpSkwqbP2KJRcXZ.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-10 12:52:21', '2021-09-10 12:52:21', 12),
(341, 'Panneaux cochés Diapo 22', NULL, 'diapositives\\September2021\\ipOlBC6U7egMfPqXha3D.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-10 12:55:20', '2021-09-10 12:55:20', 12),
(342, 'Panneaux cochés Diapo 23', NULL, 'diapositives\\September2021\\KSOg5cNavfRpPYp73Dny.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-10 12:57:10', '2021-09-10 12:57:10', 12),
(343, 'Panneaux cochés Diapo 24', NULL, 'diapositives\\September2021\\TGtWKhCngrABtRqenjlm.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-10 12:59:05', '2021-09-10 12:59:05', 12),
(344, 'Panneaux cochés Diapo 25', NULL, 'diapositives\\September2021\\jRcB9pmzgz2W1ncjkArd.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-10 13:00:18', '2021-09-10 13:00:18', 12),
(345, 'Panneaux cochés Diapo 26', NULL, 'diapositives\\September2021\\PaLSSJFlHswDp2pxUqNc.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-10 13:01:56', '2021-09-10 13:01:56', NULL),
(346, 'Panneaux cochés Diapo 27', NULL, 'diapositives\\September2021\\DLQMzLIsesrK1BvGiDjT.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-10 13:03:31', '2021-09-10 13:03:31', 12),
(347, 'Panneaux cochés Diapo 28', NULL, 'diapositives\\September2021\\kypJqG3G8sEbgQQLgBSd.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-10 13:58:38', '2021-09-10 13:58:38', 12),
(348, 'Panneaux cochés Diapo 29', NULL, 'diapositives\\September2021\\mC7MFuaFn5d3VZi1GEBq.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-10 13:59:57', '2021-09-10 13:59:57', 12),
(351, 'Panneaux cochés Diapo 30', NULL, 'diapositives\\September2021\\LK2kPsgKruadBCCmKPYL.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-10 14:09:21', '2021-09-10 14:09:21', 12),
(352, 'Panneaux cochés Diapo 31', NULL, 'diapositives\\September2021\\TXgSFCCGyYCTzvudktEZ.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-10 14:11:05', '2021-09-10 14:11:05', 12),
(353, 'Panneaux cochés Diapo 32', NULL, 'diapositives\\September2021\\rH0EkukBHRjUIFVu5K0i.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-10 14:12:56', '2021-09-10 14:12:56', 12),
(354, 'Panneaux cochés Diapo 33', NULL, 'diapositives\\September2021\\3oARj35vOaualrAtdmbs.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-10 14:15:13', '2021-09-10 14:15:13', 12),
(355, 'Panneaux cochés Diapo 34', NULL, 'diapositives\\September2021\\xRmJU7zOYWQUrFpSNvI7.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-10 14:16:46', '2021-09-10 14:16:46', 12),
(356, 'Panneaux cochés Diapo 35', NULL, 'diapositives\\September2021\\ielsJeEeFZV7CPEKxnNM.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-10 14:18:07', '2021-09-10 14:18:07', 12),
(357, 'Panneaux cochés Diapo 36', NULL, 'diapositives\\September2021\\UMjFHkCiEAsRxjh0oRkE.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-10 14:19:46', '2021-09-10 14:19:46', 12),
(358, 'Panneaux cochés Diapo 37', NULL, 'diapositives\\September2021\\ORsYzWmYrcPMnJ8laIFq.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-10 14:21:34', '2021-09-10 14:21:34', 12),
(359, 'Panneaux cochés Diapo 38', NULL, 'diapositives\\September2021\\QcZ9QOyFhPUT1rM2nhDA.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-10 14:23:19', '2021-09-10 14:23:19', 12),
(360, 'Panneaux cochés Diapo 39', NULL, 'diapositives\\September2021\\Emy3TohxHgLn8N457cCd.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-10 14:24:00', '2021-09-10 14:29:49', 12),
(361, 'Panneaux cochés Diapo 40', NULL, 'diapositives\\September2021\\zOQExVkgczBZoG871IBe.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-10 14:27:16', '2021-09-10 14:27:16', 12),
(362, 'Panneaux cochés Diapo 41', NULL, 'diapositives\\September2021\\1kU0vFmzxg7s29GJo6UU.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-10 14:38:15', '2021-09-10 14:38:15', 12),
(363, 'Panneaux cochés Diapo 42', NULL, 'diapositives\\September2021\\TUwMThZvBuxRs3YAdcMl.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-10 14:41:20', '2021-09-10 14:41:20', 12),
(364, 'Panneaux cochés Diapo 43', NULL, 'diapositives\\September2021\\rcIdn15kTBxD2PETQIFi.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-10 14:43:00', '2021-09-10 14:43:00', 12),
(365, 'Panneaux cochés Diapo 44', NULL, 'diapositives\\September2021\\jdjR7RXpAQk9ClhyoSqi.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-10 14:44:28', '2021-09-10 14:44:28', 12),
(366, 'Panneaux cochés Diapo 45', NULL, 'diapositives\\September2021\\5h0sVBjzLPiEHKHaUIoG.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-10 14:46:47', '2021-09-10 14:46:47', 12),
(367, 'Panneaux cochés Diapo 46', NULL, 'diapositives\\September2021\\LGbbRtY6rRtZVbpgbcHq.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-10 14:48:42', '2021-09-10 14:48:42', 12),
(368, 'Panneaux cochés Diapo 47', NULL, 'diapositives\\September2021\\RObtCuXjTtoDJsBN14JR.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-10 14:50:27', '2021-09-10 14:50:27', 12),
(369, 'Panneaux cochés Diapo 48', NULL, 'diapositives\\September2021\\Ampq1LTBUtjPswiAKINZ.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-10 14:52:06', '2021-09-10 14:52:06', 12),
(370, 'Panneaux cochés Diapo 49', NULL, 'diapositives\\September2021\\XigUNwElORpCNH7kesmG.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-10 14:56:30', '2021-09-10 14:56:30', 12),
(371, 'Panneaux cochés Diapo 50', NULL, 'diapositives\\September2021\\yKTfp9zWzmAnrVArQmyW.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-10 14:58:35', '2021-09-10 14:58:35', 12),
(372, 'Panneaux cochés Diapo 51', NULL, 'diapositives\\September2021\\tEd0yaFedjJ0qBUzEO5J.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-10 15:00:39', '2021-09-10 15:00:39', 12),
(373, 'Panneaux cochés Diapo 52', NULL, 'diapositives\\September2021\\8qzAPzP7RoRefJiBbqb7.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-10 15:02:41', '2021-09-10 15:02:41', 12),
(374, 'Panneaux cochés Diapo 53', NULL, 'diapositives\\September2021\\Yk6W0PVBTQPwkq9dzNYA.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-10 15:04:17', '2021-09-10 15:04:17', 12),
(375, 'Panneaux cochés Diapo 54', NULL, 'diapositives\\September2021\\EZ2PhTdZPNoQlySTGA4Q.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-10 15:05:43', '2021-09-10 15:05:43', 12),
(376, 'Panneaux cochés Diapo 55', NULL, 'diapositives\\September2021\\mWo7QfXPCGTfqQjGah0t.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-10 15:07:01', '2021-09-10 15:07:01', 12),
(377, 'Panneaux cochés Diapo 56', NULL, 'diapositives\\September2021\\kYMnlI0FwAnZB5rRVcZs.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-10 15:08:36', '2021-09-10 15:08:36', 12),
(378, 'Panneaux cochés Diapo 57', NULL, 'diapositives\\September2021\\PluT0lcTzDTv5X4gAe3T.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-10 15:10:07', '2021-09-10 15:10:07', 12),
(379, 'Panneaux cochés Diapo 58', NULL, 'diapositives\\September2021\\KOsuB5m4gJXpvh7rbmyp.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-10 15:11:47', '2021-09-10 15:11:47', 12),
(380, 'Panneaux cochés Diapo 59', NULL, 'diapositives\\September2021\\taxdBhiXZbARWti9dLu0.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-10 15:13:10', '2021-09-10 15:13:10', 12),
(381, 'Panneaux cochés Diapo 60', NULL, 'diapositives\\September2021\\n7mQ7XttNhWcsomt3zBg.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-10 15:15:07', '2021-09-10 15:15:07', 12),
(382, 'Panneaux cochés Diapo 61', NULL, 'diapositives\\September2021\\nCk1vn2I0LCXJFEdzJ8x.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-10 15:16:44', '2021-09-10 15:16:44', 12),
(383, 'Panneaux cochés Diapo 62', NULL, 'diapositives\\September2021\\QtkJgGqquInBGFrL1Fmh.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-10 15:18:19', '2021-09-10 15:18:19', 12),
(384, 'Panneaux cochés Diapo 63', NULL, 'diapositives\\September2021\\M4D6kpTCBQBNrzZAyhpq.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-10 15:20:30', '2021-09-10 15:20:30', 12),
(385, 'Panneaux cochés Diapo 64', NULL, 'diapositives\\September2021\\aZwF1LAzoOAcmzAZmljs.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-10 15:22:30', '2021-09-10 15:22:30', 12),
(386, 'Panneaux cochés Diapo 65', NULL, 'diapositives\\September2021\\DKvNpC1BAb8wYOqsAtKu.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-10 15:24:25', '2021-09-10 15:24:25', 12),
(387, 'Panneaux cochés Diapo 66', NULL, 'diapositives\\September2021\\pBBXHzynKmG1Bmw5pdd3.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-10 15:26:24', '2021-09-10 15:26:24', 12),
(388, 'Panneaux cochés Diapo 67', NULL, 'diapositives\\September2021\\1p32pUWgYizMsCMR1yDB.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-10 15:27:52', '2021-09-10 15:27:52', 12),
(389, 'Panneaux cochés Diapo 68', NULL, 'diapositives\\September2021\\EEoHxTfxUxv2GTlZVHAb.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-10 15:29:23', '2021-09-10 15:29:23', 12),
(390, 'Panneaux cochés Diapo 69', NULL, 'diapositives\\September2021\\4R6bRgsavIHwkID5jfhf.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-10 15:30:47', '2021-09-10 15:30:47', 12),
(391, 'Panneaux cochés Diapo 70', NULL, 'diapositives\\September2021\\cENa5iow35ursFtUMG2Q.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-10 15:32:26', '2021-09-10 15:32:26', 12),
(392, 'Panneaux cochés Diapo 71', NULL, 'diapositives\\September2021\\OvUAEoML81PjMVbYliSR.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-10 15:36:32', '2021-09-10 15:36:32', 12),
(393, 'Panneaux cochés Diapo 72', NULL, 'diapositives\\September2021\\chBDx480gmj4Ih6zNpKA.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-10 15:38:28', '2021-09-10 15:38:28', 12),
(394, 'Panneaux cochés Diapo 73', NULL, 'diapositives\\September2021\\4Hm5KebWs7lv6PTiruUn.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-10 15:40:08', '2021-09-10 15:40:08', 12),
(395, 'Panneaux cochés Diapo 74', NULL, 'diapositives\\September2021\\6FlYqttXaP25379BHCO7.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-10 15:42:05', '2021-09-10 15:42:05', 12),
(396, 'Panneaux cochés Diapo 75', NULL, 'diapositives\\September2021\\neIB5vENdHHIBRcGrzjP.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-10 15:44:51', '2021-09-10 15:44:51', 12),
(397, 'Panneaux cochés Diapo 76', NULL, 'diapositives\\September2021\\z81PUxFYfqx5EqIEjvka.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-10 15:47:44', '2021-09-10 15:47:44', 12),
(398, 'Panneaux cochés Diapo 77', NULL, 'diapositives\\September2021\\ZPQkpwimShQlqtPxaXPx.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-10 15:50:57', '2021-09-10 15:50:57', 12),
(399, 'Panneaux cochés Diapo 78', NULL, 'diapositives\\September2021\\jWBHHrxu57GZnT91FAtx.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-10 15:52:34', '2021-09-10 15:52:34', 12),
(400, 'Panneaux cochés Diapo 79', NULL, 'diapositives\\September2021\\STO9rO2OcwdXNHyPYiUy.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-10 15:54:09', '2021-09-10 15:54:09', 12),
(401, 'Panneaux cochés Diapo 80', NULL, 'diapositives\\September2021\\6EEkd02x3jCpFQRbR1PA.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-10 15:55:49', '2021-09-10 15:55:49', 12),
(402, 'Panneaux cochés Diapo 81', NULL, 'diapositives\\September2021\\TTdhcMIDi4AM0BSjiXlb.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-10 15:57:16', '2021-09-10 15:57:16', 12),
(403, 'Panneaux cochés Diapo 82', NULL, 'diapositives\\September2021\\pNymQ0ZmOh9HuOOgwKen.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-10 15:58:58', '2021-09-10 15:58:58', 12),
(404, 'Panneaux cochés Diapo 83', NULL, 'diapositives\\September2021\\dHFVfm3iyWWH27Zj8OJJ.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-10 16:00:22', '2021-09-10 16:00:22', 12),
(405, 'Panneaux cochés Diapo 84', NULL, 'diapositives\\September2021\\w03nWKDNGGdd05jXAYmQ.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-10 16:02:23', '2021-09-10 16:02:23', 12),
(406, 'Panneaux cochés Diapo 85', NULL, 'diapositives\\September2021\\x6hzj2hMocqufqYT1qmq.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-10 16:04:06', '2021-09-10 16:04:06', 12),
(407, 'Panneaux cochés Diapo 86', NULL, 'diapositives\\September2021\\v9m05XjrLli0Kof4eZog.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-10 16:05:43', '2021-09-10 16:05:43', 12),
(408, 'Panneaux cochés Diapo 87', NULL, 'diapositives\\September2021\\urbZ4D8Q6KIyC06tnUFU.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-10 16:07:25', '2021-09-10 16:07:25', 12),
(409, 'Panneaux cochés Diapo 88', NULL, 'diapositives\\September2021\\16fiUhJOJJMLwBZ15QsT.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-10 16:09:14', '2021-09-10 16:09:14', 12),
(410, 'Panneaux cochés Diapo 89', NULL, 'diapositives\\September2021\\JlblCfNh3RC3UQSOdGpC.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-10 16:11:22', '2021-09-10 16:11:22', 12),
(411, 'Panneaux cochés Diapo 90', NULL, 'diapositives\\September2021\\1NhrcvUnlnow8fSs4PQl.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-10 16:13:20', '2021-09-10 16:13:20', 12),
(412, 'Panneaux cochés Diapo 91', NULL, 'diapositives\\September2021\\brh6ByddZ5BxVgkgC1On.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-10 16:15:55', '2021-09-10 16:15:55', 12),
(413, 'Panneaux cochés Diapo 92', NULL, 'diapositives\\September2021\\cJnzaJIe4Q350Q6IbExf.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-10 16:17:33', '2021-09-10 16:17:33', 12),
(414, 'Panneaux cochés Diapo 93', NULL, 'diapositives\\September2021\\mUrpUcAaRFT0Fj8Nfgje.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-10 16:19:07', '2021-09-10 16:19:07', 12),
(415, 'Panneaux cochés Diapo 94', NULL, 'diapositives\\September2021\\MWNxY8wlrXyJwcZTvqEu.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-10 16:20:44', '2021-09-10 16:20:44', 12),
(416, 'Panneaux cochés Diapo 95', NULL, 'diapositives\\September2021\\vKTIPog160M0TcP44dpx.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-10 16:22:08', '2021-09-10 16:22:08', 12),
(417, 'Panneaux cochés Diapo 96', NULL, 'diapositives\\September2021\\pvnAQZDuqhvSlwpxU1f8.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-10 16:23:47', '2021-09-10 16:23:47', 12),
(418, 'Panneaux cochés Diapo 97', NULL, 'diapositives\\September2021\\coeqpFnL2rqy6KwyBtlR.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-10 16:25:24', '2021-09-10 16:25:24', 12),
(419, 'Panneaux cochés Diapo 98', NULL, 'diapositives\\September2021\\EM5yebWYIZNtIwG1Mpm3.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-10 16:27:15', '2021-09-10 16:27:15', 12),
(420, 'Panneaux cochés Diapo 99', NULL, 'diapositives\\September2021\\eUsf3XIwTsr14XoGp7R8.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-10 16:28:58', '2021-09-10 16:28:58', 12),
(421, 'Panneaux cochés Diapo 100', NULL, 'diapositives\\September2021\\rWboiyVI3wQA14svFCr8.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-10 16:30:32', '2021-09-10 16:30:32', 12),
(422, 'Panneaux cochés Diapo 101', NULL, 'diapositives\\September2021\\YWE9AAqxarvxlyXHLD9N.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-10 16:35:08', '2021-09-10 16:35:08', 12),
(423, 'Serie 56 Diapo 1', NULL, 'diapositives\\September2021\\XkosTKDPrRWMGBGHtOlr.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-11 17:01:58', '2021-09-11 17:01:58', 9),
(424, 'Serie 56 Diapo 2', NULL, 'diapositives\\September2021\\3gUuxvPc10QlTJbJQ5Rl.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-11 17:04:12', '2021-09-11 17:04:12', 9),
(425, 'Serie 56 Diapo 3', NULL, 'diapositives\\September2021\\kkoCbnbdYhiB9E8LjuEY.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-11 17:05:52', '2021-09-11 17:05:52', 9),
(426, 'Serie 56 Diapo 4', NULL, 'diapositives\\September2021\\p7HNqAylZvin0ffqmxeo.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-11 17:07:28', '2021-09-11 17:07:28', 9),
(427, 'Serie 56 Diapo 5', NULL, 'diapositives\\September2021\\dcxcoY3V2n0vwlUJWT6G.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-11 17:08:57', '2021-09-11 17:08:57', 9),
(428, 'Serie 56 Diapo 6', NULL, 'diapositives\\September2021\\p16dUS12C8jN1FWFL9MY.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-11 17:10:10', '2021-09-11 17:10:10', 9),
(429, 'Serie 56 Diapo 7', NULL, 'diapositives\\September2021\\3rsl3UJH09OTouAGFu1a.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-11 17:11:23', '2021-09-11 17:11:23', 9),
(430, 'Serie 56 Diapo 8', NULL, 'diapositives\\September2021\\ceJn4Ay0AH3ZFgHOIjef.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-11 17:15:31', '2021-09-11 17:15:31', 9),
(431, 'Serie 56 Diapo 9', NULL, 'diapositives\\September2021\\biTUSPyYki2GvjHgMqGQ.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-11 17:17:11', '2021-09-11 17:17:11', 9),
(432, 'Serie 56 Diapo 10', NULL, 'diapositives\\September2021\\CRwjxhEPL1Tomz7fpeBv.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-11 17:18:37', '2021-09-11 17:18:37', 9),
(433, 'Serie 56 Diapo 11', NULL, 'diapositives\\September2021\\RFlPmp7wjOjJUlnsDGs3.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-11 17:19:53', '2021-09-11 17:19:53', 9),
(434, 'Serie 56 Diapo 12', NULL, 'diapositives\\September2021\\If7cScvGJy9hJKeFg0Gq.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-11 17:21:31', '2021-09-11 17:21:31', 9),
(435, 'Serie 56 Diapo 13', NULL, 'diapositives\\September2021\\QfZHgdmUvoJtd57ZsSGZ.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-11 17:23:30', '2021-09-11 17:23:30', 9),
(436, 'Serie 56 Diapo 14', NULL, 'diapositives\\September2021\\K9LyCmsIFx76HelwP5zJ.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-11 17:24:53', '2021-09-11 17:24:53', 9),
(437, 'Serie 56 Diapo 15', NULL, 'diapositives\\September2021\\RwU0yZgEDiFVetWXhYxo.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-11 17:26:28', '2021-09-11 17:26:28', 9),
(438, 'Serie 56 Diapo 16', NULL, 'diapositives\\September2021\\T4qeFOCqYU1VA2Lh9pDE.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-11 17:27:53', '2021-09-11 17:27:53', 9),
(439, 'Serie 56 Diapo 17', NULL, 'diapositives\\September2021\\octHmqqHXekhbF09HBgY.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-11 17:29:22', '2021-09-11 17:29:22', 9),
(440, 'Serie 56 Diapo 18', NULL, 'diapositives\\September2021\\hjiRYKMqikN132moDvUi.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-11 17:30:53', '2021-09-11 17:30:53', 9),
(441, 'Serie 56 Diapo 20', NULL, 'diapositives\\September2021\\5hadIsA5SoDMBHbo0VAZ.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-11 17:32:35', '2021-09-11 17:32:35', 9),
(442, 'Serie 56 Diapo 19', NULL, 'diapositives\\September2021\\tUx81Z4DSqKaKlgzeqf0.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-11 17:36:11', '2021-09-11 17:36:11', 9),
(443, 'Serie 56 Diapo 21', NULL, 'diapositives\\September2021\\bWNTg891ITkTKDl0kRT7.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-11 17:37:53', '2021-09-11 17:37:53', 9),
(444, 'Serie 56 Diapo 22', NULL, 'diapositives\\September2021\\PaHLpgVVtSWs93cvczJp.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-11 17:39:32', '2021-09-11 17:39:32', 9),
(445, 'Serie 56 Diapo 23', NULL, 'diapositives\\September2021\\33pSH4fduEA9177K6Doa.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-11 17:41:14', '2021-09-11 17:41:14', 9),
(446, 'Serie 56 Diapo 24', NULL, 'diapositives\\September2021\\l3ySIQ37jfzmjeUpG1iX.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-11 17:42:49', '2021-09-11 17:42:49', 9),
(447, 'Serie 56 Diapo 25', NULL, 'diapositives\\September2021\\szb912qUNTUUeauVecAz.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-11 17:45:49', '2021-09-11 17:45:49', 9),
(448, 'Serie 56 Diapo 26', NULL, 'diapositives\\September2021\\DCha5FzmcDDtNphfHboG.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-11 17:47:35', '2021-09-11 17:47:35', 9),
(449, 'Serie 56 Diapo 27', NULL, 'diapositives\\September2021\\ECZSPYFnaIMRH2Vjzosl.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-11 17:49:17', '2021-09-11 17:49:17', 9),
(450, 'Serie 56 Diapo 28', NULL, 'diapositives\\September2021\\O3Y4WL7OsGfJx4VEq3j4.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-11 17:51:11', '2021-09-11 17:51:11', 9),
(451, 'Serie 56 Diapo 29', NULL, 'diapositives\\September2021\\63XmZTAvg0PVlC3U4x0v.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-11 17:53:13', '2021-09-11 17:53:13', 9),
(452, 'Serie 56 Diapo 30', NULL, 'diapositives\\September2021\\kMYIHZvSrmwcYrh16qDJ.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-11 18:06:26', '2021-09-11 18:06:26', 9),
(453, 'Serie 56 Diapo 31', NULL, 'diapositives\\September2021\\rvSCzEexHecv8Sq5todk.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-11 18:08:45', '2021-09-11 18:08:45', 9),
(454, 'Serie 56 Diapo 32', NULL, 'diapositives\\September2021\\y9qSBbVvepYVtVodjP7I.png', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-11 18:11:19', '2021-09-11 18:11:19', 9),
(455, 'Serie 56 Diapo 33', NULL, 'diapositives\\September2021\\HrCPPFoxVW9crfXWWR7y.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-11 18:13:47', '2021-09-11 18:13:47', 9),
(456, 'Serie 56 Diapo 34', NULL, 'diapositives\\September2021\\jADQMYidCHETkQGVBHDx.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-11 18:20:09', '2021-09-11 18:20:09', 9),
(457, 'Serie 56 Diapo 35', NULL, 'diapositives\\September2021\\wcU52VQ7q9mXfkKeLOLD.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-11 18:21:42', '2021-09-11 18:21:42', 9),
(458, 'Serie 56 Diapo 36', NULL, 'diapositives\\September2021\\47TliRKKjBQYGKaNHbNR.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-11 18:23:54', '2021-09-11 18:23:54', 9),
(459, 'Serie 56 Diapo 38', NULL, 'diapositives\\September2021\\4M2lzBx3y150QjAqSZAG.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-11 18:25:29', '2021-09-11 18:25:29', 9),
(460, 'Serie 56 Diapo 37', NULL, 'diapositives\\September2021\\heXpDIInKzW6aMJtF4SJ.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-11 18:27:00', '2021-09-11 18:27:00', 9),
(461, 'Serie 56 Diapo 39', NULL, 'diapositives\\September2021\\VHO6GOTBKFANm4CUZjZf.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-11 18:28:37', '2021-09-11 18:28:37', 9),
(462, 'Serie 56 Diapo 40', NULL, 'diapositives\\September2021\\d5Sszd56DD5676as7qKI.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-11 18:30:23', '2021-09-11 18:30:23', 9),
(463, 'Serie 57 Diapo 1', NULL, 'diapositives\\September2021\\ckldX8OoMvsIds4rDx53.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-11 18:32:19', '2021-09-11 18:32:19', 10),
(464, 'Serie 57 Diapo 2', NULL, 'diapositives\\September2021\\GBiW9jewOxVTXdFemttg.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-11 18:34:12', '2021-09-11 18:34:12', 10),
(465, 'Serie 57 Diapo 3', NULL, 'diapositives\\September2021\\KNiXJICIvOgePfemXX11.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-11 18:35:39', '2021-09-11 18:35:39', 10),
(466, 'Serie 57 Diapo 4', NULL, 'diapositives\\September2021\\dScxniAzGTNwmL8Pm5fi.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-11 18:37:33', '2021-09-11 18:37:33', 10),
(467, 'Serie 57 Diapo 5', NULL, 'diapositives\\September2021\\f4jCtb0ERzNd6pWKFjXU.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-11 18:40:45', '2021-09-11 18:40:45', 10),
(468, 'Serie 57 Diapo 6', NULL, 'diapositives\\September2021\\OUIFur1n8XUs0k6YpgiS.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-11 18:42:08', '2021-09-11 18:42:08', 10),
(469, 'Serie 57 Diapo 7', NULL, 'diapositives\\September2021\\kfkqMd8Z0m5UMGsEqGKv.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-11 18:43:00', '2021-09-11 18:45:09', 10),
(470, 'Serie 57 Diapo 8', NULL, 'diapositives\\September2021\\Tzl60aECyh0HsPbz8yOI.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-11 18:46:35', '2021-09-11 18:46:35', 10),
(471, 'Serie 57 Diapo 9', NULL, 'diapositives\\September2021\\DFCwWvS2dmRgiWcmSgHy.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-11 18:48:00', '2021-09-20 11:55:24', 10),
(472, 'Serie 57 Diapo 10', NULL, 'diapositives\\September2021\\gbcFVXX9Yg7EAHijkKsJ.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-11 18:50:41', '2021-09-11 18:50:41', 10),
(473, 'Serie 57 Diapo 11', NULL, 'diapositives\\September2021\\36b24O0VxlkuNotkmKht.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-11 18:52:13', '2021-09-11 18:52:13', 10),
(474, 'Serie 57 Diapo 12', NULL, 'diapositives\\September2021\\lhsqn4GlK3wTdpkBLqvg.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-11 18:54:38', '2021-09-11 18:54:38', 10),
(475, 'Serie 57 Diapo 13', NULL, 'diapositives\\September2021\\txaOT6AYAYnMEoN5pGUR.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-11 18:56:49', '2021-09-11 18:56:49', 10),
(476, 'Serie 57 Diapo 14', NULL, 'diapositives\\September2021\\9lSoAJ2HqwwSjFW0EgKW.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-11 18:58:30', '2021-09-11 18:58:30', 10),
(477, 'Serie 57 Diapo 15', NULL, 'diapositives\\September2021\\j5KHW6aPes5ho3ZJpomD.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-11 19:03:49', '2021-09-11 19:03:49', 10),
(478, 'Serie 57 Diapo 16', NULL, 'diapositives\\September2021\\gi3vqnVFA6OWmDvPX5gX.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-11 19:05:31', '2021-09-11 19:05:31', 10),
(479, 'Serie 57 Diapo 17', NULL, 'diapositives\\September2021\\3icjUFsVyokNyJTcj2L2.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-11 19:07:06', '2021-09-11 19:07:06', 10),
(480, 'Serie 57 Diapo 18', NULL, 'diapositives\\September2021\\jlOCdVd9uSpBpopB7QTz.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-11 19:08:47', '2021-09-11 19:08:47', 10),
(481, 'Serie 57 Diapo 19', NULL, 'diapositives\\September2021\\v8eCpsjE1CsuIkCDrrlV.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-11 19:10:23', '2021-09-11 19:10:23', 10),
(482, 'Serie 57 Diapo 20', NULL, 'diapositives\\September2021\\7h20XQjV5TCK33II1I0w.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-11 19:11:53', '2021-09-11 19:11:53', 10),
(483, 'Serie 57 Diapo 21', NULL, 'diapositives\\September2021\\N2hIB3pPUBb6mW5C2I0Q.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-11 19:13:27', '2021-09-11 19:13:27', 10),
(484, 'Serie 57 Diapo 22', NULL, 'diapositives\\September2021\\GgIIKDAbsgbHQz8jHfv4.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-11 19:14:56', '2021-09-11 19:14:56', 10),
(485, 'Serie 57 Diapo 23', NULL, 'diapositives\\September2021\\e2YiqfakZh5RAOXoFItc.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-11 19:16:18', '2021-09-11 19:16:18', 10),
(486, 'Serie 57 Diapo 24', NULL, 'diapositives\\September2021\\snUxn9mtX02hD8vzxoqb.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-11 19:17:59', '2021-09-11 19:17:59', 10),
(487, 'Serie 57 Diapo 25', NULL, 'diapositives\\September2021\\7L53emWoZ8mr5RETbiCD.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-11 19:19:28', '2021-09-11 19:19:28', 10),
(488, 'Serie 57 Diapo 26', NULL, 'diapositives\\September2021\\zvMMVh8I5NB8xPDajexH.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-11 19:23:45', '2021-09-11 19:23:45', 10),
(489, 'Serie 57 Diapo 27', NULL, 'diapositives\\September2021\\2prdIIrTpjvfx9Am2SZu.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-11 19:25:22', '2021-09-11 19:25:22', 10),
(490, 'Serie 57 Diapo 28', NULL, 'diapositives\\September2021\\jaKNGAP4l4I85hcep1cu.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-11 19:27:59', '2021-09-11 19:27:59', NULL),
(491, 'Serie 57 Diapo 29', NULL, 'diapositives\\September2021\\UlA7tlGpFnoN3fIa4ajJ.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-11 19:29:43', '2021-09-11 19:29:43', 10),
(492, 'Serie 57 Diapo 30', NULL, 'diapositives\\September2021\\xiIDKcyRO6ytRBJsUYFd.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-11 19:31:29', '2021-09-11 19:31:29', 10),
(493, 'Serie 57 Diapo 32', NULL, 'diapositives\\September2021\\GLznoo9v3mtwOsCfs4k6.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-11 19:33:36', '2021-09-11 19:33:36', 10),
(494, 'Serie 57 Diapo 31', NULL, 'diapositives\\September2021\\3A7qfW3P4mZUKSRXiF4W.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-11 19:35:13', '2021-09-11 19:35:13', 10),
(495, 'Serie 57 Diapo 33', NULL, 'diapositives\\September2021\\K0b2sYrFg7PjbSjBfPKX.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-11 19:36:45', '2021-09-11 19:36:45', 10),
(496, 'Serie 57 Diapo 34', NULL, 'diapositives\\September2021\\Xugw2dng2aqFCaBh1Ypu.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-11 19:38:14', '2021-09-11 19:38:14', 10),
(497, 'Serie 57 Diapo 35', NULL, 'diapositives\\September2021\\MGm3m0dLYbBYwOJedxBN.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-11 19:39:29', '2021-09-11 19:39:29', 10),
(498, 'Serie 57 Diapo 36', NULL, 'diapositives\\September2021\\YFhs3CjS1MxiyA14m91n.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-11 19:42:33', '2021-09-11 19:42:33', 10),
(499, 'Serie 57 Diapo 37', NULL, 'diapositives\\September2021\\17uhsQdnqC8VZ1TEZqP6.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-11 19:44:00', '2021-09-11 19:49:48', 10),
(500, 'Serie 57 Diapo 38', NULL, 'diapositives\\September2021\\1xNqvmgueMB0NLancdhx.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-11 19:46:24', '2021-09-11 19:46:24', 10),
(501, 'Serie 57 Diapo 39', NULL, 'diapositives\\September2021\\fn36jz5djyqHHlJ4UVDl.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-11 19:48:29', '2021-09-11 19:48:29', 10),
(502, 'Serie 57 Diapo 40', NULL, 'diapositives\\September2021\\po3YWCYsb6KNj0MLVKw9.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-11 19:51:35', '2021-09-11 19:51:35', 10),
(503, 'PL Diapo 1', NULL, 'diapositives\\September2021\\0tj0F2T5NrbmZjJFPKiC.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-14 13:14:01', '2021-09-14 13:14:01', 11),
(504, 'PL Diapo 2', NULL, 'diapositives\\September2021\\xQ9eLgoAESlttCKjo88a.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-14 13:15:44', '2021-09-14 13:15:44', 11),
(505, 'PL Diapo 3', NULL, 'diapositives\\September2021\\0NLjh7pFZSJDNn6abGe6.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-14 13:16:38', '2021-09-14 13:16:38', 11),
(506, 'PL Diapo 4', NULL, 'diapositives\\September2021\\SZWMGO6hpGDNo6QzHWNT.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-14 13:17:37', '2021-09-14 13:17:37', 11),
(507, 'PL Diapo 5', NULL, 'diapositives\\September2021\\MaClJ0Gi9NBYneA31MAO.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-14 13:18:38', '2021-09-14 13:18:38', 11),
(508, 'PL Diapo 6', NULL, 'diapositives\\September2021\\bdJER9oymViDWvzz0V8h.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-14 13:46:35', '2021-09-14 13:46:35', 11),
(509, 'PL Diapo 7', NULL, 'diapositives\\September2021\\36QbZZxwiagwlkWE7uru.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-14 13:47:37', '2021-09-14 13:47:37', 11),
(510, 'PL Diapo 8', NULL, 'diapositives\\September2021\\BUOTauSNY4uALwKyH6mV.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-14 13:48:25', '2021-09-14 13:48:25', 11),
(511, 'PL Diapo 9', NULL, 'diapositives\\September2021\\WF9rPNZsLFYFbtioUMnN.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-14 13:49:22', '2021-09-14 13:49:22', 11),
(512, 'PL Diapo 10', NULL, 'diapositives\\September2021\\5flohJKkfCANi4JslKpp.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-14 13:50:33', '2021-09-14 13:50:33', 11),
(513, 'PL Diapo 11', NULL, 'diapositives\\September2021\\TZaKcgZDPH8lMBTAAJ0z.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-14 13:51:23', '2021-09-14 13:51:23', 11),
(514, 'PL Diapo 12', NULL, 'diapositives\\September2021\\vaolWkRa99q1tU1aZIDU.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-14 13:52:48', '2021-09-14 13:52:48', 11),
(515, 'PL Diapo 13', NULL, 'diapositives\\September2021\\oWZqkm7bMAzP7qv2Qc04.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-14 13:53:00', '2021-09-14 13:55:34', 11),
(516, 'PL Diapo 14', NULL, 'diapositives\\September2021\\v2TYdz2NcoyFy4g1xkmw.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-14 13:55:03', '2021-09-14 13:55:03', 11),
(517, 'PL Diapo 15', NULL, 'diapositives\\September2021\\XkIS7ycHHLs1sf18aaMb.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-14 13:56:23', '2021-09-14 13:56:23', 11),
(518, 'PL Diapo 16', NULL, 'diapositives\\September2021\\KnNtWqNEOy9x3Dgk6mxu.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-14 13:57:12', '2021-09-14 13:57:12', 11),
(519, 'PL Diapo 17', NULL, 'diapositives\\September2021\\FbB8JBpx3zvTGRkfjHHn.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-14 13:58:39', '2021-09-14 13:58:39', 11),
(520, 'PL Diapo 18', NULL, 'diapositives\\September2021\\GAVXHgc422L413q6EeeR.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-14 13:59:14', '2021-09-14 13:59:14', 11),
(521, 'PL Diapo 19', NULL, 'diapositives\\September2021\\oE3AfKlXIUP5KCuYXUhO.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-14 14:00:21', '2021-09-14 14:00:21', 11),
(522, 'PL Diapo 20', NULL, 'diapositives\\September2021\\fPiT0QnG9nYCSExqTcI7.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-14 14:01:07', '2021-09-14 14:01:07', 11),
(523, 'PL Diapo 21', NULL, 'diapositives\\September2021\\2zoSoeOAlSXmbRQ75fDb.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-14 14:01:51', '2021-09-14 14:01:51', 11),
(524, 'PL Diapo 22', NULL, 'diapositives\\September2021\\fy8TwmZB5N34Am0k80PU.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-14 14:02:33', '2021-09-14 14:02:33', 11),
(525, 'PL Diapo 23', NULL, 'diapositives\\September2021\\0jMU1SEdofw5MimK5dpm.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-14 14:03:47', '2021-09-14 14:03:47', 11),
(526, 'PL Diapo 24', NULL, 'diapositives\\September2021\\Kg2HG5BmxRBIzjZrKEtq.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-14 14:04:52', '2021-09-14 14:04:52', 11),
(527, 'PL Diapo 25', NULL, 'diapositives\\September2021\\vK96bwJjMUaxmWgftrDG.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-14 14:07:00', '2021-09-14 14:08:47', 11),
(528, 'PL Diapo 26', NULL, 'diapositives\\September2021\\h4b49xnfriEkGQHo8zwP.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-14 14:09:14', '2021-09-14 14:09:14', 11),
(529, 'PL Diapo 27', NULL, 'diapositives\\September2021\\ve40G2gP4un8xLuqtaiE.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-14 14:09:59', '2021-09-14 14:09:59', 11),
(530, 'PL Diapo 28', NULL, 'diapositives\\September2021\\nQvQh80w7iLQtafeSsso.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-14 14:11:13', '2021-09-14 14:11:13', 11),
(531, 'PL Diapo 29', NULL, 'diapositives\\September2021\\avCoAO5CBJOs3EdRJKEX.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-14 14:12:09', '2021-09-14 14:12:09', 11),
(532, 'PL Diapo 30', NULL, 'diapositives\\September2021\\q1LjhmZT99MMzsd4Ebns.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-14 14:13:35', '2021-09-14 14:13:35', 11),
(533, 'PL Diapo 31', NULL, 'diapositives\\September2021\\kLPnWNe4oTFidmvwXFu1.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-14 14:14:08', '2021-09-14 14:14:08', 11),
(534, 'PL Diapo 32', NULL, 'diapositives\\September2021\\o1VSWXTbGTpM7QAF2izx.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-14 14:14:55', '2021-09-14 14:14:55', 11),
(535, 'PL Diapo 33', NULL, 'diapositives\\September2021\\LG9cKQ5xodXBcAHYB7Mr.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-14 14:15:36', '2021-09-14 14:15:36', 11),
(536, 'PL Diapo 34', NULL, 'diapositives\\September2021\\ESnN3mXmbTAKBMvNj6pp.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-14 14:16:20', '2021-09-14 14:16:20', 11);
INSERT INTO `diapositives` (`id`, `num_diapositive`, `description`, `image_simple`, `image_corrige`, `lecture_audio_fr`, `lecture_audio_dl`, `lecture_audio_mr`, `explication_text`, `explication_audio_fr`, `explication_audio_dl`, `explication_audio_mr`, `created_at`, `updated_at`, `serie`) VALUES
(537, 'PL Diapo 35', NULL, 'diapositives\\September2021\\FMC0srhpeoYc2QR2GR6y.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-14 14:17:14', '2021-09-14 14:17:14', 11),
(538, 'PL Diapo 36', NULL, 'diapositives\\September2021\\bU5kDWbHKOXWwyQbjfXb.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-14 14:17:53', '2021-09-14 14:17:53', 11),
(539, 'PL Diapo 37', NULL, 'diapositives\\September2021\\WumnLCwjDdcY0ccSEezx.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-14 14:18:46', '2021-09-14 14:18:46', 11),
(540, 'PL Diapo 38', NULL, 'diapositives\\September2021\\9iei05JiEEMNBqx8AG9h.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-14 14:19:26', '2021-09-14 14:19:26', 11),
(541, 'PL Diapo 39', NULL, 'diapositives\\September2021\\eniLKJa2Nn3K1DxKEuVl.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-14 14:19:56', '2021-09-14 14:19:56', 11),
(542, 'PL Diapo 40', NULL, 'diapositives\\September2021\\hRMuwa5WyH66VMEssq3D.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-14 14:20:50', '2021-09-14 14:20:50', 11),
(543, 'PL Diapo 41', NULL, 'diapositives\\September2021\\Reei7asCvKujeDbCJDJG.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-14 14:21:41', '2021-09-14 14:21:41', 11),
(544, 'PL Diapo 42', NULL, 'diapositives\\September2021\\1HDTrUoT8x5blbP3wtzm.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-14 14:22:23', '2021-09-14 14:22:23', 11),
(545, 'PL Diapo 43', NULL, 'diapositives\\September2021\\4ostORRBzrslJqLpbz5p.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-14 14:23:05', '2021-09-14 14:23:05', 11),
(546, 'PL Diapo 44', NULL, 'diapositives\\September2021\\Yzl8Fa7qoXdInS5UqCXl.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-14 14:23:49', '2021-09-14 14:23:49', 11),
(547, 'PL Diapo 45', NULL, 'diapositives\\September2021\\4FJSM1dQkw6U40ZN2VBt.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-14 14:24:43', '2021-09-14 14:24:43', 11),
(548, 'PL Diapo 46', NULL, 'diapositives\\September2021\\eBkCJMolhexpKvdBUhAJ.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-14 14:25:27', '2021-09-14 14:25:27', 11),
(549, 'PL Diapo 47', NULL, 'diapositives\\September2021\\N1Lu4ezR3vhyvTgVaKfm.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-14 14:26:13', '2021-09-14 14:26:13', 11),
(550, 'PL Diapo 48', NULL, 'diapositives\\September2021\\oBUHJ776DsKU3Htjd3tG.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-14 14:26:54', '2021-09-14 14:26:54', 11),
(551, 'PL Diapo 49', NULL, 'diapositives\\September2021\\pMqMbOb3Vt1fcEz3x2Va.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-14 14:27:37', '2021-09-14 14:27:37', 11),
(552, 'PL Diapo 50', NULL, 'diapositives\\September2021\\Zn0IImYNZM2Pqv7ryoPJ.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-14 14:28:26', '2021-09-14 14:28:26', 11),
(553, 'PL Diapo 51', NULL, 'diapositives\\September2021\\U0G4nSbElRPbyryUoXuS.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-14 14:29:12', '2021-09-14 14:29:12', 11),
(554, 'PL Diapo 52', NULL, 'diapositives\\September2021\\NLLFf1lZ4ScGaikau6tg.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-14 14:29:53', '2021-09-14 14:29:53', 11),
(555, 'Panneaux cochés Diapo 102', NULL, 'diapositives\\September2021\\JIoueygYzGo3vj07JhDu.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-16 21:37:54', '2021-09-16 21:37:54', 12),
(556, 'Panneaux cochés Diapo 103', NULL, 'diapositives\\September2021\\EZ7IN5f5VIvtthYsfzLt.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-16 21:38:35', '2021-09-16 21:38:35', 12),
(557, 'Panneaux cochés Diapo 104', NULL, 'diapositives\\September2021\\Qcp7HrNfMx9iHRkg26GY.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-16 21:39:31', '2021-09-16 21:39:31', 12),
(558, 'Panneaux cochés Diapo 105', NULL, 'diapositives\\September2021\\EDJdC9Gij4U9UIzXFRbL.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-16 21:41:01', '2021-09-16 21:41:01', 12),
(559, 'Panneaux cochés Diapo 106', NULL, 'diapositives\\September2021\\qUsPvZsZFl0ztMUgsrO3.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-16 21:42:04', '2021-09-16 21:42:04', 12),
(560, 'Panneaux cochés Diapo 107', NULL, 'diapositives\\September2021\\64r7Y2SxNYEJU8FKepyJ.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-16 21:42:52', '2021-09-16 21:42:52', 12),
(561, 'Panneaux cochés Diapo 108', NULL, 'diapositives\\September2021\\Wkl7HMGUxfA75pQdvq3j.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-16 21:43:56', '2021-09-16 21:43:56', 12),
(562, 'Panneaux cochés Diapo 109', NULL, 'diapositives\\September2021\\l9nv3if131zgywtoMHT5.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-16 21:44:55', '2021-09-16 21:44:55', 12),
(563, 'Panneaux cochés Diapo 110', NULL, 'diapositives\\September2021\\zMPSko8fiFJFsVniA2kZ.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-16 21:45:43', '2021-09-16 21:45:43', 12),
(564, 'Panneaux cochés Diapo 111', NULL, 'diapositives\\September2021\\6qCpAoxPKMlwkNdjFTxk.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-16 21:46:34', '2021-09-16 21:46:34', 12),
(565, 'Panneaux cochés Diapo 112', NULL, 'diapositives\\September2021\\cPnvafBZ4bIJ6zFdqcuv.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-16 21:48:26', '2021-09-16 21:48:26', 12),
(566, 'Panneaux cochés Diapo 113', NULL, 'diapositives\\September2021\\ySnNDylSd5BZZdC4o0Nf.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-16 21:49:15', '2021-09-16 21:49:15', 12),
(567, 'Panneaux cochés Diapo 114', NULL, 'diapositives\\September2021\\Ou3eSs7pl0TXUuwK8RDl.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-16 21:50:03', '2021-09-16 21:50:03', 12),
(568, 'Panneaux cochés Diapo 115', NULL, 'diapositives\\September2021\\SYy0cF8ufnKoV3PlLIEE.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-16 21:50:55', '2021-09-16 21:50:55', 12),
(569, 'Panneaux cochés Diapo 116', NULL, 'diapositives\\September2021\\lBXXwr0u1jV2E26MHrmK.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-16 21:51:50', '2021-09-16 21:51:50', 12),
(570, 'Panneaux cochés Diapo 117', NULL, 'diapositives\\September2021\\BvfyVdFAYSkC4GpTFbUM.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-16 21:52:48', '2021-09-16 21:52:48', 12),
(571, 'Panneaux cochés Diapo 118', NULL, 'diapositives\\September2021\\VpsK6tg3MlgAKIFaaq8Z.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-16 21:53:39', '2021-09-16 21:53:39', 12),
(572, 'Panneaux cochés Diapo 119', NULL, 'diapositives\\September2021\\Ma63nlqTiqZPCWJRB24l.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-16 21:54:44', '2021-09-16 21:54:44', 12),
(573, 'Panneaux cochés Diapo 120', NULL, 'diapositives\\September2021\\HTXxUlVIYDKmtnV11Qbl.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-16 21:55:34', '2021-09-16 21:55:34', 12),
(574, 'Panneaux cochés Diapo 121', NULL, 'diapositives\\September2021\\R6WC85L2RQCfd5duPxgN.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-16 21:56:27', '2021-09-16 21:56:27', 12),
(575, 'Panneaux cochés Diapo 122', NULL, 'diapositives\\September2021\\FHecMldwuhBNSzNWswcv.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-16 21:57:21', '2021-09-16 21:57:21', 12),
(576, 'Panneaux cochés Diapo 123', NULL, 'diapositives\\September2021\\IWfVVKpyG66lgWN6FZ2f.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-16 21:58:11', '2021-09-16 21:58:11', 12),
(577, 'Panneaux cochés Diapo 124', NULL, 'diapositives\\September2021\\vXPgwVdJeRsP70FJR6W8.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-16 21:59:09', '2021-09-16 21:59:09', 12),
(578, 'Panneaux cochés Diapo 125', NULL, 'diapositives\\September2021\\Ae8kwhsUwnP6QZaZ5rwi.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-16 21:59:52', '2021-09-16 21:59:52', 12),
(579, 'Panneaux cochés Diapo 126', NULL, 'diapositives\\September2021\\8vgAvtEShrbmJg38qh3A.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-16 22:00:53', '2021-09-16 22:00:53', 12),
(580, 'Panneaux cochés Diapo 127', NULL, 'diapositives\\September2021\\txUkZn8N9rW4X2xplAkg.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-16 22:01:39', '2021-09-16 22:01:39', 12),
(581, 'Panneaux cochés Diapo 128', NULL, 'diapositives\\September2021\\czEdNaou1y5fJenjVD9M.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-16 22:02:24', '2021-09-16 22:02:24', 12),
(582, 'Panneaux cochés Diapo 129', NULL, 'diapositives\\September2021\\iht62E2cZcCECTp88h9J.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-16 22:03:12', '2021-09-16 22:03:12', 12),
(583, 'Panneaux cochés Diapo 130', NULL, 'diapositives\\September2021\\CeUguXqvhdozpgcO2nhz.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-16 22:04:02', '2021-09-16 22:04:02', 12),
(584, 'Panneaux cochés Diapo 131', NULL, 'diapositives\\September2021\\V0OBQgR0sP8uHYZ6A9W0.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-16 22:05:02', '2021-09-16 22:05:02', 12),
(585, 'Panneaux cochés Diapo 132', NULL, 'diapositives\\September2021\\hKwmXvUKxapFCwgWd8XP.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-16 22:05:42', '2021-09-16 22:05:42', 12),
(586, 'Panneaux cochés Diapo 133', NULL, 'diapositives\\September2021\\UuKMdaGsr38afHNsMOOa.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-16 22:06:24', '2021-09-16 22:06:24', 12),
(587, 'Panneaux cochés Diapo 134', NULL, 'diapositives\\September2021\\CvMpsrTpWcIvWhLicWpE.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-16 22:07:10', '2021-09-16 22:07:10', 12),
(588, 'Panneaux cochés Diapo 135', NULL, 'diapositives\\September2021\\JRRmJnNXT2TpBFAw2PVT.jpg', NULL, '[]', '[]', '[]', NULL, '[]', '[]', '[]', '2021-09-16 22:08:09', '2021-09-16 22:08:09', 12);

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `infos`
--

CREATE TABLE `infos` (
  `id` int(10) UNSIGNED NOT NULL,
  `denomination` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone1` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone2` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone3` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone4` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slogan` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagramme` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkdil` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `infos`
--

INSERT INTO `infos` (`id`, `denomination`, `email`, `telephone1`, `telephone2`, `telephone3`, `telephone4`, `description`, `slogan`, `facebook`, `youtube`, `instagramme`, `linkdil`, `created_at`, `updated_at`) VALUES
(1, 'BurkCode', 'burcoke@gmail.com', '76 84 83 55', '63 89 66 56', '78 94 33 44', NULL, NULL, 'La route une ecole', NULL, NULL, NULL, NULL, '2021-09-20 11:31:44', '2021-09-20 11:31:44');

-- --------------------------------------------------------

--
-- Structure de la table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2021-09-06 16:13:06', '2021-09-06 16:13:06');

-- --------------------------------------------------------

--
-- Structure de la table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2021-09-06 16:13:07', '2021-09-06 16:13:07', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2021-09-06 16:13:07', '2021-09-06 16:13:07', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2021-09-06 16:13:07', '2021-09-06 16:13:07', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2021-09-06 16:13:07', '2021-09-06 16:13:07', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2021-09-06 16:13:07', '2021-09-06 16:13:07', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 10, '2021-09-06 16:13:07', '2021-09-06 16:13:07', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 11, '2021-09-06 16:13:07', '2021-09-06 16:13:07', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 12, '2021-09-06 16:13:07', '2021-09-06 16:13:07', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 13, '2021-09-06 16:13:08', '2021-09-06 16:13:08', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 14, '2021-09-06 16:13:08', '2021-09-06 16:13:08', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 8, '2021-09-06 16:13:22', '2021-09-06 16:13:22', 'voyager.categories.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 6, '2021-09-06 16:13:26', '2021-09-06 16:13:26', 'voyager.posts.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 7, '2021-09-06 16:13:31', '2021-09-06 16:13:31', 'voyager.pages.index', NULL),
(14, 1, 'Series', '', '_self', NULL, NULL, NULL, 15, '2021-09-06 17:02:52', '2021-09-06 17:02:52', 'voyager.series.index', NULL),
(15, 1, 'Diapositives', '', '_self', NULL, NULL, NULL, 16, '2021-09-06 17:07:54', '2021-09-06 17:07:54', 'voyager.diapositives.index', NULL),
(16, 1, 'Questions', '', '_self', NULL, NULL, NULL, 17, '2021-09-06 17:13:52', '2021-09-06 17:13:52', 'voyager.questions.index', NULL),
(17, 1, 'Reponses Utilisateurs', '', '_self', NULL, NULL, NULL, 18, '2021-09-06 17:21:59', '2021-09-06 17:21:59', 'voyager.reponses-utilisateurs.index', NULL),
(18, 1, 'Infos', '', '_self', NULL, NULL, NULL, 19, '2021-09-20 11:25:37', '2021-09-20 11:25:37', 'voyager.infos.index', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(25, '2016_01_01_000000_create_pages_table', 2),
(26, '2016_01_01_000000_create_posts_table', 2),
(27, '2016_02_15_204651_create_categories_table', 2),
(28, '2017_04_11_000000_alter_post_nullable_fields_table', 2);

-- --------------------------------------------------------

--
-- Structure de la table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2021-09-06 16:13:32', '2021-09-06 16:13:32');

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2021-09-06 16:13:08', '2021-09-06 16:13:08'),
(2, 'browse_bread', NULL, '2021-09-06 16:13:08', '2021-09-06 16:13:08'),
(3, 'browse_database', NULL, '2021-09-06 16:13:09', '2021-09-06 16:13:09'),
(4, 'browse_media', NULL, '2021-09-06 16:13:09', '2021-09-06 16:13:09'),
(5, 'browse_compass', NULL, '2021-09-06 16:13:09', '2021-09-06 16:13:09'),
(6, 'browse_menus', 'menus', '2021-09-06 16:13:09', '2021-09-06 16:13:09'),
(7, 'read_menus', 'menus', '2021-09-06 16:13:09', '2021-09-06 16:13:09'),
(8, 'edit_menus', 'menus', '2021-09-06 16:13:09', '2021-09-06 16:13:09'),
(9, 'add_menus', 'menus', '2021-09-06 16:13:09', '2021-09-06 16:13:09'),
(10, 'delete_menus', 'menus', '2021-09-06 16:13:09', '2021-09-06 16:13:09'),
(11, 'browse_roles', 'roles', '2021-09-06 16:13:09', '2021-09-06 16:13:09'),
(12, 'read_roles', 'roles', '2021-09-06 16:13:09', '2021-09-06 16:13:09'),
(13, 'edit_roles', 'roles', '2021-09-06 16:13:09', '2021-09-06 16:13:09'),
(14, 'add_roles', 'roles', '2021-09-06 16:13:10', '2021-09-06 16:13:10'),
(15, 'delete_roles', 'roles', '2021-09-06 16:13:10', '2021-09-06 16:13:10'),
(16, 'browse_users', 'users', '2021-09-06 16:13:10', '2021-09-06 16:13:10'),
(17, 'read_users', 'users', '2021-09-06 16:13:10', '2021-09-06 16:13:10'),
(18, 'edit_users', 'users', '2021-09-06 16:13:10', '2021-09-06 16:13:10'),
(19, 'add_users', 'users', '2021-09-06 16:13:10', '2021-09-06 16:13:10'),
(20, 'delete_users', 'users', '2021-09-06 16:13:10', '2021-09-06 16:13:10'),
(21, 'browse_settings', 'settings', '2021-09-06 16:13:10', '2021-09-06 16:13:10'),
(22, 'read_settings', 'settings', '2021-09-06 16:13:10', '2021-09-06 16:13:10'),
(23, 'edit_settings', 'settings', '2021-09-06 16:13:10', '2021-09-06 16:13:10'),
(24, 'add_settings', 'settings', '2021-09-06 16:13:11', '2021-09-06 16:13:11'),
(25, 'delete_settings', 'settings', '2021-09-06 16:13:11', '2021-09-06 16:13:11'),
(26, 'browse_categories', 'categories', '2021-09-06 16:13:23', '2021-09-06 16:13:23'),
(27, 'read_categories', 'categories', '2021-09-06 16:13:23', '2021-09-06 16:13:23'),
(28, 'edit_categories', 'categories', '2021-09-06 16:13:23', '2021-09-06 16:13:23'),
(29, 'add_categories', 'categories', '2021-09-06 16:13:23', '2021-09-06 16:13:23'),
(30, 'delete_categories', 'categories', '2021-09-06 16:13:23', '2021-09-06 16:13:23'),
(31, 'browse_posts', 'posts', '2021-09-06 16:13:26', '2021-09-06 16:13:26'),
(32, 'read_posts', 'posts', '2021-09-06 16:13:27', '2021-09-06 16:13:27'),
(33, 'edit_posts', 'posts', '2021-09-06 16:13:27', '2021-09-06 16:13:27'),
(34, 'add_posts', 'posts', '2021-09-06 16:13:27', '2021-09-06 16:13:27'),
(35, 'delete_posts', 'posts', '2021-09-06 16:13:27', '2021-09-06 16:13:27'),
(36, 'browse_pages', 'pages', '2021-09-06 16:13:31', '2021-09-06 16:13:31'),
(37, 'read_pages', 'pages', '2021-09-06 16:13:32', '2021-09-06 16:13:32'),
(38, 'edit_pages', 'pages', '2021-09-06 16:13:32', '2021-09-06 16:13:32'),
(39, 'add_pages', 'pages', '2021-09-06 16:13:32', '2021-09-06 16:13:32'),
(40, 'delete_pages', 'pages', '2021-09-06 16:13:32', '2021-09-06 16:13:32'),
(41, 'browse_series', 'series', '2021-09-06 17:02:52', '2021-09-06 17:02:52'),
(42, 'read_series', 'series', '2021-09-06 17:02:52', '2021-09-06 17:02:52'),
(43, 'edit_series', 'series', '2021-09-06 17:02:52', '2021-09-06 17:02:52'),
(44, 'add_series', 'series', '2021-09-06 17:02:52', '2021-09-06 17:02:52'),
(45, 'delete_series', 'series', '2021-09-06 17:02:52', '2021-09-06 17:02:52'),
(46, 'browse_diapositives', 'diapositives', '2021-09-06 17:07:54', '2021-09-06 17:07:54'),
(47, 'read_diapositives', 'diapositives', '2021-09-06 17:07:54', '2021-09-06 17:07:54'),
(48, 'edit_diapositives', 'diapositives', '2021-09-06 17:07:54', '2021-09-06 17:07:54'),
(49, 'add_diapositives', 'diapositives', '2021-09-06 17:07:54', '2021-09-06 17:07:54'),
(50, 'delete_diapositives', 'diapositives', '2021-09-06 17:07:54', '2021-09-06 17:07:54'),
(51, 'browse_questions', 'questions', '2021-09-06 17:13:52', '2021-09-06 17:13:52'),
(52, 'read_questions', 'questions', '2021-09-06 17:13:52', '2021-09-06 17:13:52'),
(53, 'edit_questions', 'questions', '2021-09-06 17:13:52', '2021-09-06 17:13:52'),
(54, 'add_questions', 'questions', '2021-09-06 17:13:52', '2021-09-06 17:13:52'),
(55, 'delete_questions', 'questions', '2021-09-06 17:13:52', '2021-09-06 17:13:52'),
(56, 'browse_reponses_utilisateurs', 'reponses_utilisateurs', '2021-09-06 17:21:59', '2021-09-06 17:21:59'),
(57, 'read_reponses_utilisateurs', 'reponses_utilisateurs', '2021-09-06 17:21:59', '2021-09-06 17:21:59'),
(58, 'edit_reponses_utilisateurs', 'reponses_utilisateurs', '2021-09-06 17:21:59', '2021-09-06 17:21:59'),
(59, 'add_reponses_utilisateurs', 'reponses_utilisateurs', '2021-09-06 17:21:59', '2021-09-06 17:21:59'),
(60, 'delete_reponses_utilisateurs', 'reponses_utilisateurs', '2021-09-06 17:21:59', '2021-09-06 17:21:59'),
(61, 'browse_infos', 'infos', '2021-09-20 11:25:37', '2021-09-20 11:25:37'),
(62, 'read_infos', 'infos', '2021-09-20 11:25:37', '2021-09-20 11:25:37'),
(63, 'edit_infos', 'infos', '2021-09-20 11:25:37', '2021-09-20 11:25:37'),
(64, 'add_infos', 'infos', '2021-09-20 11:25:37', '2021-09-20 11:25:37'),
(65, 'delete_infos', 'infos', '2021-09-20 11:25:37', '2021-09-20 11:25:37');

-- --------------------------------------------------------

--
-- Structure de la table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 3),
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
(41, 1),
(41, 3),
(42, 1),
(42, 3),
(43, 1),
(43, 3),
(44, 1),
(44, 3),
(45, 1),
(45, 3),
(46, 1),
(46, 3),
(47, 1),
(47, 3),
(48, 1),
(48, 3),
(49, 1),
(49, 3),
(50, 1),
(50, 3),
(51, 1),
(51, 3),
(52, 1),
(52, 3),
(53, 1),
(53, 3),
(54, 1),
(54, 3),
(55, 1),
(55, 3),
(56, 1),
(56, 3),
(57, 1),
(57, 3),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1);

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2021-09-06 16:13:27', '2021-09-06 16:13:27'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2021-09-06 16:13:27', '2021-09-06 16:13:27'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2021-09-06 16:13:28', '2021-09-06 16:13:28'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2021-09-06 16:13:28', '2021-09-06 16:13:28');

-- --------------------------------------------------------

--
-- Structure de la table `questions`
--

CREATE TABLE `questions` (
  `id` int(10) UNSIGNED NOT NULL,
  `libelle_question` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `libelle_1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `libelle_2` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `choix_a` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `choix_b` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `choix_c` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `choix_d` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `diapositive` int(11) DEFAULT NULL,
  `reponse_a` int(11) DEFAULT NULL,
  `reponse_b` int(11) DEFAULT NULL,
  `reponse_c` int(11) DEFAULT NULL,
  `reponse_d` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `questions`
--

INSERT INTO `questions` (`id`, `libelle_question`, `libelle_1`, `libelle_2`, `choix_a`, `choix_b`, `choix_c`, `choix_d`, `created_at`, `updated_at`, `diapositive`, `reponse_a`, `reponse_b`, `reponse_c`, `reponse_d`) VALUES
(2, 'Je circule sur un itinéraire bis', NULL, NULL, 'Oui', 'Non', NULL, NULL, '2021-09-09 12:06:58', '2021-09-09 12:06:58', 2, 1, 0, 0, 0),
(3, 'Je vais tout droit', 'Je cède le passage à droite', 'j\'entre sur une autoroute', 'Oui', 'Non', 'Oui', 'Non', '2021-09-09 12:17:51', '2021-09-09 12:17:51', 4, 0, 1, 0, 1),
(4, NULL, NULL, NULL, 'Je m\'engage', 'j\'attends', NULL, NULL, '2021-09-09 12:19:19', '2021-09-09 12:19:19', 5, 1, 0, 0, 0),
(5, 'Ces balises :', NULL, NULL, 'annoncent un passage à niveau', 'signalent un virage dangereux', 'sont des délinéateurs', NULL, '2021-09-09 12:21:50', '2021-09-09 12:21:50', 7, 0, 0, 1, 0),
(6, NULL, NULL, NULL, 'je passe', 'je m\'arrête', NULL, NULL, '2021-09-09 12:23:37', '2021-09-09 12:23:37', 9, 0, 1, 0, 0),
(7, 'Je tourne à gauche', 'Je passe avant la voiture :', 'avant le camion :', 'Oui', 'Non', 'Oui', 'Non', '2021-09-09 12:25:00', '2021-09-09 12:26:40', 12, 1, 0, 0, 1),
(8, 'je peux dépasser', NULL, NULL, 'Oui', 'Non', NULL, NULL, '2021-09-09 13:46:00', '2021-09-09 13:46:00', 14, 0, 1, 0, 0),
(9, 'Dans cette situation, je circule', 'Sans eu', 'Avec les seuls eux de positions', 'Oui', 'Non', 'Oui', 'Non', '2021-09-09 13:48:38', '2021-09-09 13:48:38', 16, 0, 1, 0, 1),
(10, 'Le stationnement est limité à:', NULL, NULL, '30 minutes', '1 heure', '1 heure 30', NULL, '2021-09-09 13:50:00', '2021-09-09 13:51:06', 17, 0, 0, 1, 0),
(11, 'Pour torner à gauche, je céderai le passage :', 'aux véhicules venant de face', 'aux véhicules venant de face sur la route prioritaire', 'Oui', 'Non', 'Oui', 'Non', '2021-09-09 13:58:36', '2021-09-09 13:58:36', 19, 0, 1, 1, 0),
(12, 'Les feux des véhicules, sur l\'autre chaussée, peuvent être un indice annonçant :', NULL, NULL, 'Un contrôle de police', 'Un accident', 'Une zone de mauvaise visibilité', NULL, '2021-09-09 14:05:07', '2021-09-09 14:05:07', 21, 0, 0, 1, 0),
(13, NULL, 'La circulation est en files ininterompues', 'Dès que possible, je pourrai changé de voie pour dépasser', 'Oui', 'Non', 'Oui', 'Non', '2021-09-09 14:12:46', '2021-09-09 14:12:46', 24, 0, 1, 1, 0),
(14, 'Je tourne à droite, je cède le passage à la voiture', NULL, NULL, 'Oui', 'Non', NULL, NULL, '2021-09-09 14:17:34', '2021-09-09 14:17:34', 25, 0, 1, 0, 0),
(15, 'Je circule sur une route', NULL, NULL, 'départementale', 'non classée à priorité', 'qui traverse un lieu dit', NULL, '2021-09-09 14:20:48', '2021-09-09 14:20:48', 27, 1, 1, 0, 0),
(16, 'Je dépasse', NULL, NULL, 'Oui', 'Non', NULL, NULL, '2021-09-09 14:22:22', '2021-09-09 14:22:22', 28, 0, 1, 0, 0),
(17, 'Dans cette période dite entre \"chien et loup\", il est préférable', 'd\'allumer ses feux de croisement', 'de rouler sans feux', 'Oui', 'Non', 'Oui', 'Non', '2021-09-09 14:27:40', '2021-09-09 14:27:40', 30, 1, 0, 0, 1),
(18, 'je peux stationner sur le parking de gauche', NULL, NULL, 'Oui', 'Non', NULL, NULL, '2021-09-09 14:29:00', '2021-09-09 14:32:34', 32, 0, 1, 0, 0),
(19, NULL, 'La route est à caractère prioritaire', 'je serai prioritaire dans toute la traversée de l\'agglomération', 'Oui', 'Non', 'Oui', 'Non', '2021-09-09 14:41:33', '2021-09-09 14:41:33', 34, 0, 1, 1, 0),
(20, 'En prenant la voie de droite, je pouurrai circuler à 100 km/h  maximum :', NULL, NULL, 'Oui', 'Non', NULL, NULL, '2021-09-09 14:53:43', '2021-09-09 14:53:43', 36, 0, 1, 0, 0),
(21, NULL, 'Je circule sur route prioritaire', 'En tournant à droite, je prendrai obligatoirement l\'autoroute', 'Oui', 'Non', 'Oui', 'Non', '2021-09-09 14:59:42', '2021-09-09 14:59:42', 38, 1, 0, 0, 1),
(22, 'Pour stationner, j\'utiliserai un disque de stationnement', NULL, NULL, 'Oui', 'Non', NULL, NULL, '2021-09-09 15:02:22', '2021-09-09 15:02:22', 40, 0, 1, 0, 0),
(23, 'Le véhicule que je vais croiser peut être :', NULL, NULL, 'une motocyclette', 'un vehicule automobile \"borgne\"', 'j\'allume mes feux de route', NULL, '2021-09-09 15:04:22', '2021-09-09 15:04:22', 42, 1, 1, 0, 0),
(24, NULL, NULL, NULL, 'Je sors d\'une autoroute', 'j\'entre dans une agglomération', 'je peux rouler à 80km/h', 'je suis bien placé', '2021-09-09 15:08:00', '2021-09-09 15:08:00', 44, 0, 0, 1, 0),
(25, 'Lorsque le feux sera vert pour suivre l\'itinéraire prioritaire, je pourrai continuer tout droit', NULL, NULL, 'Oui', 'Non', NULL, NULL, '2021-09-09 15:10:44', '2021-09-09 15:10:44', 46, 0, 1, 0, 0),
(26, 'Je cède le passage :', 'à gauche', 'à droite', 'Oui', 'Non', 'Oui', 'Non', '2021-09-09 15:16:13', '2021-09-09 15:16:13', 48, 0, 1, 0, 1),
(27, NULL, NULL, NULL, 'J\'utilise seulement le frein moteur', 'Je freinerai progressivement sans à coup', NULL, NULL, '2021-09-09 15:18:00', '2021-09-09 15:19:35', 50, 0, 1, 0, 0),
(28, 'Ce passage à niveau est :', NULL, NULL, 'sans barrière', 'à une voie', 'à plusieurs voies', NULL, '2021-09-09 15:23:01', '2021-09-09 15:23:01', 55, 1, 0, 1, 0),
(29, NULL, 'Je ralentis', 'Le piéton sur la chaussée devrait être sur l\'accotement', 'Oui', 'Non', 'Oui', 'Non', '2021-09-09 15:26:00', '2021-09-09 15:26:53', 53, 1, 0, 1, 0),
(30, 'La signalisation m\'indique', NULL, NULL, 'une direction vers l\'autoroute', 'une sortie routière', 'une sortie autoritière', NULL, '2021-09-09 15:29:52', '2021-09-09 15:29:52', 57, 0, 1, 0, 0),
(31, 'Je tourne à gauche, je cederai le passage', NULL, NULL, 'Oui', 'Non', NULL, NULL, '2021-09-09 15:32:32', '2021-09-09 15:32:32', 59, 1, 0, 0, 0),
(32, 'A partir du panneau :', 'la route est prioritaire', 'la vitesse est limitée à 90km/h', 'Oui', 'Non', 'Oui', 'Non', '2021-09-09 15:36:01', '2021-09-09 15:36:01', 61, 0, 1, 1, 0),
(33, 'A partir de ce panneau, le stationnement :', NULL, NULL, 'est interdit à 9 mètres', 'est interdit sur 9 mètres', NULL, NULL, '2021-09-09 15:38:52', '2021-09-09 15:38:52', 62, 0, 1, 0, 0),
(34, 'Pour dépasser ce véhicule, je dois laisser un intervalle :', NULL, NULL, 'suffisant', 'd\'au moins 0.50 m', 'd\'au moins  1 m', NULL, '2021-09-09 15:42:47', '2021-09-09 15:42:47', 64, 1, 0, 0, 0),
(35, NULL, 'je circule sur itinéraire bis', 'je suis à 82 km de l\'itinéraire  bis', 'Oui', 'Non', 'Oui', 'Non', '2021-09-09 15:46:31', '2021-09-09 15:46:31', 65, 1, 0, 0, 1),
(36, 'Je suis bien placé si je circule à', NULL, NULL, '80 km/h', '70 km/h', '60 km/h', '55 km/h', '2021-09-09 15:48:36', '2021-09-09 15:48:36', 69, 0, 0, 0, 1),
(37, 'En règle générale,  est considéré comme abusif, le satationnement inintorrompu d\'un véhicule en un même endroit de la voie publique ou de ses dépendances à une durée supérieure à :', NULL, NULL, '2 jours', '3 jours', '5 jours', '7 jours', '2021-09-09 15:58:16', '2021-09-09 15:58:16', 67, 0, 0, 0, 1),
(38, 'Le certificat d\'assurance est apposée sur pare-brise. En cas de contrôle de police ou de gendarmerie,  je dois aussi présenter mon attestation d\'assurance', NULL, NULL, 'Oui', 'Non', NULL, NULL, '2021-09-09 15:59:00', '2021-09-09 16:05:18', 71, 1, 0, 0, 0),
(39, 'Le panneau annonce un fort vent venant de droite uniquement :', NULL, NULL, 'OUI', 'NON', NULL, NULL, '2021-09-09 16:11:43', '2021-09-09 16:11:43', 3, 0, 1, 0, 0),
(40, 'Je peux suivre la voiture :', NULL, NULL, 'OUI', 'NON', NULL, NULL, '2021-09-09 16:13:15', '2021-09-09 16:13:15', 6, 0, 1, 0, 0),
(41, 'Vous circulez depuis 2heures,. En vous arrêtant à une station service, Vous controlez vos pneus et vous constatez que la pression est uniforme sur les quatres pneus mais supérieur à la normale. Que faites vous :', NULL, NULL, 'rien', 'vous dégonflez les quatres pneus pour avoir la bonne pression', 'vous dégonffler seulement les pneus avant', NULL, '2021-09-09 16:16:20', '2021-09-09 16:16:20', 74, 1, 0, 0, 0),
(42, 'Je peux :', 'continuer tout droit:', 'tourner à droite:', 'OUI', 'NON', 'OUI', 'NON', '2021-09-09 16:21:46', '2021-09-09 16:21:46', 8, 1, 1, 1, 1),
(43, 'Je dois céder le passage au deux roues :', NULL, NULL, 'OUI', 'NON', NULL, NULL, '2021-09-09 16:22:00', '2021-09-09 16:23:24', 10, 0, 1, 0, 0),
(44, 'La nuit :', 'la vision des couleurs est meilleure', 'les lunettes teintées empêchent l\'éblouissement', 'Oui', 'Non', 'Oui', 'Non', '2021-09-09 16:23:46', '2021-09-09 16:23:46', 76, 0, 1, 0, 1),
(45, NULL, NULL, NULL, 'La route perd son caractère prioritaire', 'Je dois circuler à 60 Km/h', 'Je peux circuler à 50 Km/h', NULL, '2021-09-09 16:25:40', '2021-09-09 16:25:40', 11, 0, 0, 1, 0),
(46, 'L\'étylomètre permet :', 'd\'éviter les désagréments de la prise de sang', 'de déterminer, en quelques minutes, le taux d\'alcool du conducteur', 'Oui', 'Non', 'Oui', 'Non', '2021-09-09 16:27:29', '2021-09-09 16:27:29', 77, 1, 0, 1, 0),
(47, 'Je suis bien placé :', 'pour aller tout droit:', 'pour aller à gauche :', 'OUI', 'NON', 'OUI', 'NON', '2021-09-09 16:27:52', '2021-09-09 16:27:52', 13, 1, 0, 1, 0),
(48, 'Je dépasse :', NULL, NULL, 'OUI', 'NON', NULL, NULL, '2021-09-09 16:28:59', '2021-09-09 16:28:59', 15, 1, 0, 0, 0),
(49, NULL, 'Dans cette situation, je ralentis :', 'Si je continue tout droit, je cèderai le passage à droite :', 'OUI', 'NON', 'OUI', 'NON', '2021-09-09 16:31:54', '2021-09-09 16:31:54', 18, 1, 0, 1, 0),
(50, 'La signalisation ne concerne que les véhicules lourds :', NULL, NULL, 'OUI', 'NON', NULL, NULL, '2021-09-09 16:33:59', '2021-09-09 16:33:59', 20, 0, 1, 0, 0),
(51, 'L\'interdiction de dépasser concerne :', 'les poids lourds uniquement :', 'tous les véhicules qui circulent dans la voie de droite :', 'OUI', 'NON', 'OUI', 'NON', '2021-09-09 16:36:35', '2021-09-09 16:36:35', 22, 0, 1, 1, 0),
(52, 'En marche normal, je suis bien placé', NULL, NULL, 'Oui', 'Non', NULL, NULL, '2021-09-10 11:59:44', '2021-09-10 11:59:44', 258, 0, 1, 0, 0),
(53, 'La descente dangereuse :', NULL, NULL, 'commence à partir du panneau', 'commence 150 m après le panneau', 'commence 700 m après le panneau', 'durera pendant 700 m', '2021-09-10 12:02:04', '2021-09-10 12:02:04', 260, 0, 1, 0, 1),
(54, 'Je dépasse', NULL, NULL, 'Oui', 'Non', NULL, NULL, '2021-09-10 12:03:00', '2021-09-10 12:04:38', 262, 1, 0, 0, 0),
(55, NULL, 'Le camion aurait dû me céder le passage :', 'Je peux prendre la voie de gauche', 'Oui', 'Non', 'Oui', 'Non', '2021-09-10 12:07:07', '2021-09-10 12:07:07', 264, 1, 0, 1, 0),
(56, 'Pendant la première quinzaine, je stationnerai du côté :', NULL, NULL, 'des numéros pairs', 'des numéros impairs', NULL, NULL, '2021-09-10 12:10:48', '2021-09-10 12:10:48', 265, 0, 1, 0, 0),
(57, NULL, 'Le premier panneau m\'oblige à tourner à gauche', 'je cederai le passage à droite', 'Oui', 'Non', 'Oui', 'Non', '2021-09-10 12:20:29', '2021-09-10 12:20:29', 267, 0, 1, 0, 1),
(58, 'Sur cette route de montagne, j\'effectuearai la marche arrière si le croisement est impossible  :', NULL, NULL, 'Oui', 'Non', NULL, NULL, '2021-09-10 12:23:09', '2021-09-10 12:23:09', 269, 1, 0, 0, 0),
(59, 'Je vais arriver :', 'à une biffurcation', 'à une sortie', 'Oui', 'Non', 'Oui', 'Non', '2021-09-10 12:26:08', '2021-09-10 12:26:08', 271, 1, 0, 0, 1),
(60, 'Je dépasse', NULL, NULL, 'Oui', 'Non', NULL, NULL, '2021-09-10 12:26:59', '2021-09-10 12:26:59', 272, 0, 1, 0, 0),
(61, 'Dans cette situation, je peux allumer :', 'mes feux de brouillard avant', 'mes feux de brouillard arrière', 'Oui', 'Non', 'Oui', 'Non', '2021-09-10 12:29:46', '2021-09-10 12:29:46', 274, 0, 1, 0, 1),
(62, 'La limitation de vitesse concerne :', NULL, NULL, 'toute l\'agglomération', 'seulement cette route', NULL, NULL, '2021-09-10 12:32:19', '2021-09-10 12:32:19', 276, 0, 1, 0, 0),
(63, NULL, NULL, NULL, 'je céderai le passage à gauche', 'je céderai le passage à droite', 'je pourrai tourner à gauche', 'je pourrai tourner à droite', '2021-09-10 12:34:00', '2021-09-10 12:34:00', 275, 1, 0, 0, 1),
(64, 'La route sur laquelle je circule est à double sens', NULL, NULL, 'Oui', 'Non', NULL, NULL, '2021-09-10 12:35:17', '2021-09-10 12:35:17', 277, 1, 0, 0, 0),
(65, 'Pour dépasser ce cycliste', 'je laisse au moins 1 m latéralement', 'je peux franchir la ligne discontinue', 'Oui', 'Non', 'Oui', 'Non', '2021-09-10 12:37:14', '2021-09-10 12:37:14', 278, 1, 0, 1, 0),
(66, NULL, NULL, NULL, 'je passe', 'je m\'arrête', NULL, NULL, '2021-09-10 12:38:04', '2021-09-10 12:38:04', 279, 1, 0, 0, 0),
(67, 'A droite devant la voiture,', 'je peux : stationner', 'm\'arrêter', 'Oui', 'Non', 'Oui', 'Non', '2021-09-10 12:39:33', '2021-09-10 12:39:33', 280, 0, 1, 0, 1),
(68, 'Je peux m\'engager devant ce camion qui arrive lentement', NULL, NULL, 'Oui', 'Non', NULL, NULL, '2021-09-10 12:40:52', '2021-09-10 12:40:52', 281, 1, 0, 0, 0),
(69, 'Pour sortir :', NULL, NULL, 'je mets mon clignotant immédiatement', 'je prendrai la voie de sortie à son début', 'je commence à freiner', NULL, '2021-09-10 12:43:49', '2021-09-10 12:43:49', 282, 1, 1, 0, 0),
(70, 'Quand le feu sera vert, je pourrai tourner à droite', NULL, NULL, 'Oui', 'Non', NULL, NULL, '2021-09-10 12:46:02', '2021-09-10 12:46:02', 283, 0, 1, 0, 0),
(71, 'Pour être mieux vu, j\'allume', 'mes feux de croisement', 'mon feu de brouillard arrière', 'Oui', 'Non', 'Oui', 'Non', '2021-09-10 12:48:08', '2021-09-10 12:48:08', 284, 1, 0, 0, 1),
(72, 'Je me suis trompé, je peux encore prendre la route de droite :', NULL, NULL, 'Oui', 'Non', NULL, NULL, '2021-09-10 14:00:44', '2021-09-10 14:00:44', 285, 0, 1, 0, 0),
(73, 'La signalisation m\'annonce', NULL, NULL, 'vitesse limitée à 50 km/h dans toute l\'agglomomération', 'passage pour piéton', 'endroit fréquenté par les enfants', NULL, '2021-09-10 14:10:02', '2021-09-10 14:10:02', 286, 1, 0, 1, 0),
(74, 'Pour tourner à gauche', NULL, NULL, 'je tourne devant la voiture', 'derrière la voiture', NULL, NULL, '2021-09-10 14:11:53', '2021-09-10 14:11:53', 287, 1, 0, 0, 0),
(75, 'Mon ensemble de véhicule fait 8 m de long :', 'ma  distance de sécurité doit être d\'au moins 50 mètres', 'je pourrai prendre la voie de gauche pour dépasser', 'Oui', 'Non', 'Oui', 'Non', '2021-09-10 14:16:03', '2021-09-10 14:16:03', 288, 1, 0, 0, 1),
(76, 'Je peux continuer', NULL, NULL, 'à pied', 'en voiture', NULL, NULL, '2021-09-10 14:18:32', '2021-09-10 14:18:32', 289, 1, 0, 0, 0),
(77, 'Pour aller à Angers, au prochain carrefour :', 'je tournerai à droite', 'j\'emprunterai un itinéraire bis', 'Oui', 'Non', 'Oui', 'Non', '2021-09-10 14:20:56', '2021-09-10 14:20:56', 290, 1, 0, 0, 1),
(78, 'je suis tenu de ralentir ou de m\'arrêter pour faciliter le passage', NULL, NULL, 'Oui', 'Non', NULL, NULL, '2021-09-10 14:22:43', '2021-09-10 14:22:43', 291, 0, 1, 0, 0),
(79, NULL, 'La circulation est déviée', 'j\'allume mes feux de détresse', 'Oui', 'Non', 'Oui', 'Non', '2021-09-10 14:25:20', '2021-09-10 14:25:20', 292, 1, 0, 0, 1),
(80, 'Je circule sur un autoroute de dégagement', NULL, NULL, 'Oui', 'Non', NULL, NULL, '2021-09-10 14:27:27', '2021-09-10 14:27:27', 293, 0, 1, 0, 0),
(81, 'Après cette signalisation, je peux :', 'm\'arrêter', 'stationner', 'Oui', 'Non', 'Oui', 'Non', '2021-09-10 14:55:03', '2021-09-10 14:55:03', 294, 1, 0, 0, 1),
(82, 'Je roule à 90 km/h. Je dépasse :', NULL, NULL, 'par la gauche', 'par la droite', NULL, NULL, '2021-09-10 14:56:26', '2021-09-10 14:56:26', 295, 1, 0, 0, 0),
(83, 'Dans cette situation, il est préférable', NULL, NULL, 'de serrer à droite', 'de rouler dans les traces des véhicules', 'd\'allumer les feux de croisement', NULL, '2021-09-10 15:01:23', '2021-09-10 15:01:23', 296, 0, 1, 1, 0),
(84, 'Mon alcootest est celui de droite. Je peux conduire', NULL, NULL, 'Oui', 'Non', NULL, NULL, '2021-09-10 15:03:42', '2021-09-10 15:03:42', 297, 1, 0, 0, 0),
(85, NULL, 'je dois dès maintenant choisir ma direction', 'Pour tourner à gauche, je dois prendre la voie de stockage', 'Oui', 'Non', 'Oui', 'Non', '2021-09-10 15:06:37', '2021-09-10 15:06:37', 311, 1, 0, 1, 0),
(86, NULL, NULL, NULL, 'je passe', 'je cède le passage', NULL, NULL, '2021-09-10 15:07:58', '2021-09-10 15:07:58', 298, 1, 0, 0, 0),
(87, 'La mauvaise façon de conduire est un facteur de consommation de carburant', NULL, NULL, 'Oui', 'Non', NULL, NULL, '2021-09-10 15:24:36', '2021-09-10 15:24:36', 300, 1, 0, 0, 0),
(88, 'Le port de la ceinture de sécurité est obligatoire', NULL, NULL, 'aux places avant', 'aux places arrière', 'la nuit seulement', 'hors agglomération seulement', '2021-09-10 15:29:01', '2021-09-10 15:29:01', 302, 1, 1, 0, 0),
(89, 'Vous circulez par temps de pluie. Malgré l\'utilisation des essuie-glaces et du lave -glace, le pare-brise reste sale. Que faites vous :', NULL, NULL, 'vous continuez en réduisant votre vitesse', 'vous vous arrêter pour le nettoyer', 'vous continuez jusqu\'au prochain garage', NULL, '2021-09-10 15:34:28', '2021-09-10 15:34:28', 303, 0, 1, 0, 0),
(90, 'A minuit, j\'ai arrêté de boire des boissons alcoolisées et mon taux d\'alcool est de 2 g/l. A  7 heures du matin, en cas de contrôle, mon taux d\'alcool sera :', NULL, NULL, 'positif', 'négatif', NULL, NULL, '2021-09-10 15:40:47', '2021-09-10 15:40:47', 305, 1, 0, 0, 0),
(91, 'Même en abscence d\'infraction ou d\'accident, les agents de la police de la circulation routière, peuvent soumettre un conducteur à un contrôle de taux d\'alcool :', NULL, NULL, 'Oui', 'Non', NULL, NULL, '2021-09-10 15:46:20', '2021-09-10 15:46:20', 306, 1, 0, 0, 0),
(92, 'Ce panneau annonce l’entrée d’une zone à stationnement', NULL, NULL, 'interdit', 'payant', 'à durée limité', NULL, '2021-09-11 17:04:55', '2021-09-11 17:04:55', 319, 0, 0, 1, 0),
(93, 'Les panneaux de forme triangulaire annoncent', NULL, 'une indication ou une direction', 'un danger', 'une interdiction ou une obligation', NULL, NULL, '2021-09-11 17:06:12', '2021-09-11 17:06:12', 320, 1, 0, 0, 0),
(94, 'Cette balise indique', NULL, NULL, 'une intersection', 'un virage sur route fréquemment enneigé', 'elle est à 150 m du virage hors agglomeration', NULL, '2021-09-11 17:07:56', '2021-09-11 17:07:56', 321, 0, 1, 0, 0),
(95, 'Cette limitation de vitesse prend fin', 'à partir du panneau fin des prescriptions précédemment signalées', 'à la prochaine intersection', 'Oui', 'Non', 'Oui', 'Non', '2021-09-11 17:09:17', '2021-09-11 17:09:17', 322, 1, 0, 1, 0),
(96, 'Sur cette chaussée á sens unique', 'je peux tourner à gauche ou  à  droite', 'faire demi-tours', 'Oui', 'Non', 'Oui', 'Non', '2021-09-11 17:10:35', '2021-09-11 17:10:35', 323, 1, 0, 0, 1),
(97, 'A partir de ce panneau, j’aurai la priorité', 'à toutes les intersections', 'à la prochaine intersection seulement', 'Oui', 'Non', 'Oui', 'Non', '2021-09-11 17:12:14', '2021-09-11 17:12:14', 324, 0, 1, 1, 0),
(98, 'A partir de ce panneau, sur cette route j’aurai la priorité', 'à toutes les intersections', 'à la prochaine intersection', 'Oui', 'Non', 'Oui', 'Non', '2021-09-11 17:16:27', '2021-09-11 17:16:27', 325, 1, 0, 1, 0),
(99, 'La bande d’arrêt d’urgence permet', NULL, NULL, 'l’arrêt en cas de nécessité', 'de faire une pause', 'l’intervention des véhicules de secours et de sécurité', NULL, '2021-09-11 17:19:05', '2021-09-11 17:19:05', 326, 1, 0, 0, 0),
(100, NULL, 'Ce panneau signale', 'Ce panneau prend effet', 'une circulation alternée', 'une circulation dans les deux sens', 'à 150 mètre environ', 'à hauteur du panneau', '2021-09-11 17:21:00', '2021-09-11 17:24:29', 327, 0, 1, 0, 1),
(101, NULL, 'Ce panneau annonce l\'entrée d\'un tunnel dans lequel l\'arrêt et le stationnement sont interdit', 'A l’entrée d’un tunnel j’allume', 'Oui', 'Non', 'mes feux de position seuls', 'mes feux de croisement', '2021-09-11 17:23:47', '2021-09-11 17:23:47', 328, 1, 0, 0, 1),
(102, 'Ce symbole interdit l’accès aux', NULL, NULL, 'véhicules transportant des matières inflammables ou explosives', 'véhicules transportant des matières dangereuses', 'véhicules transportant des matières de nature à polluer les eaux', NULL, '2021-09-11 17:26:00', '2021-09-11 17:27:18', 330, 0, 1, 0, 0),
(103, 'Sur autoroute, lorsque la chaussée comporte 3 voies, la voie la plus à gauche est interdite', NULL, NULL, 'aux véhicules de plus de 3,5 tonnes', 'véhicules de plus de 7 mètres de long', 'aux motocyclettes', NULL, '2021-09-11 17:28:55', '2021-09-11 17:28:55', 331, 1, 1, 0, 0),
(104, 'Je peux franchir ce panneau si je conduis une camionnette affectée au transport de marchandises dont le PTAC est inférieur à 3,5 tonnes', NULL, NULL, 'Oui', 'Non', NULL, NULL, '2021-09-11 17:30:24', '2021-09-11 17:30:24', 332, 0, 1, 0, 0),
(105, 'Sur les routes à forte déclivité, pour deux véhicules de même catégorie', 'Si le croisement est difficile, le véhicule descendant doit  		  s\'arrêter le premier', 'Si le croisement est impossible, la marche arrière s\'impose au véhicule montant', 'Oui', 'Non', 'Oui', 'Non', '2021-09-11 17:31:42', '2021-09-11 17:31:42', 333, 1, 0, 0, 1),
(106, 'Après ce panneau je peux', NULL, NULL, 'Circuler avec un autocar', 'Circuler avec un tracteur agricole', 'Circuler à pieds', 'Circuler avec une motocyclette', '2021-09-11 17:36:52', '2021-09-11 17:36:52', 334, 1, 0, 0, 1),
(107, NULL, 'Le triangle de pré-signalisation est placé à', 'Il doit être visible à', '50 mètres', '30 mètres', '100 mètres', '150 mètres', '2021-09-11 17:38:31', '2021-09-11 17:38:31', 335, 0, 1, 1, 0),
(108, 'L’utilisation du klaxon est possible en agglomération', NULL, NULL, 'de jour tout le temps', 'de jour en cas de danger', 'de nuit en cas de danger', 'est interdite', '2021-09-11 17:42:38', '2021-09-11 17:42:38', 336, 0, 1, 1, 0),
(109, 'Les poids lourds peuvent-ils accéder à une voie où est implanté ce panneau ?', NULL, NULL, 'Oui', 'Non', NULL, NULL, '2021-09-11 17:44:20', '2021-09-11 17:44:20', 337, 0, 1, 0, 0),
(110, 'Ce panneau annonce', NULL, NULL, 'une chaussée glissant', 'un accident sur la chaussé', 'un secteur où les accidents sont fréquents', NULL, '2021-09-11 17:46:11', '2021-09-11 17:46:11', 338, 0, 1, 0, 0),
(111, 'Ce panneau indique', NULL, NULL, 'Un point de vue', 'Le point de départ d’un itinéraire pédestre', 'Qu’il faut allumer les feux de route', NULL, '2021-09-11 17:48:12', '2021-09-11 17:48:12', 339, 1, 0, 0, 0),
(112, 'Lorsque je vois ce symbole, je me prépare à', NULL, NULL, 'ralentir fortement', 'allumer les feux de croisement', 'allumer les feux de détresse', NULL, '2021-09-11 17:49:49', '2021-09-11 17:49:49', 340, 1, 0, 1, 0),
(113, 'Ce symbole interdit l’accès', NULL, NULL, 'à tous les camions citerne', 'aux véhicules transportant des matières dangereuses', 'aux véhicules transportant des matières de nature à polluer les eaux', NULL, '2021-09-11 17:53:09', '2021-09-11 17:53:09', 341, 0, 0, 1, 0),
(114, 'Hors agglomération les panneaux annonçant  un danger sont placés à', NULL, NULL, '50 mètres', '100 mètres', '150 mètres', NULL, '2021-09-11 17:59:52', '2021-09-11 17:59:52', 342, 0, 0, 1, 0),
(115, 'Il est possible de rencontrer un feu rouge clignotant', NULL, NULL, 'sur un passage à niveau', 'avec un feu tricolore', 'sur une zone de danger aérien', NULL, '2021-09-11 18:01:16', '2021-09-11 18:01:16', 343, 1, 0, 1, 0),
(116, 'Avec mon permis de conduire de la catégorie « B », je peux transporter, sans le compter le conducteur', NULL, NULL, '7 personnes', '8 personnes', '9 personnes', NULL, '2021-09-11 18:03:07', '2021-09-11 18:03:07', 344, 0, 1, 0, 0),
(117, 'Ce panneau interdit le stationnement', NULL, NULL, 'des deux côtés de la chaussée', 'uniquement du côté du panneau', NULL, NULL, '2021-09-11 18:05:15', '2021-09-11 18:05:15', 345, 0, 1, 0, 0),
(118, 'Ce panneau met fin', NULL, NULL, 'aux précédentes limitations de vitesse', 'à l’interdiction de dépasser', 'à l’interdiction de stationner', NULL, '2021-09-11 18:06:39', '2021-09-11 18:06:39', 449, 0, 1, 0, 0),
(119, 'Sur autoroute, la vitesse minimale imposée sur la file  la plus à gauche est de', NULL, NULL, '100 km/h', '90 km/h', '80 km/h', NULL, '2021-09-11 18:08:33', '2021-09-11 18:08:33', 347, 1, 0, 0, 0),
(120, 'Ce panneau signifie', NULL, NULL, 'zone de rassemblement', 'zone de courtoisie', 'Zone de rencontre', 'obligation de rouler à 20 km/h', '2021-09-11 18:10:05', '2021-09-11 18:10:05', 348, 0, 0, 1, 0),
(121, 'Une borne kilométrique sur le bord d’une route avec le sommet jaune m’indique que je suis sur une route', NULL, NULL, 'nationale', 'départementale', 'communale', 'Forestière', '2021-09-11 18:12:09', '2021-09-11 18:12:09', 351, 0, 1, 0, 0),
(122, 'En présence d’un stop, je dois', NULL, NULL, 'marquer l’arrêt au niveau du panneau', 'marquer l’arrêt au niveau de la ligne', 'cédez le passage à gauche et à droite', 'seulement ralentir', '2021-09-11 18:16:53', '2021-09-11 18:16:53', 352, 1, 1, 1, 0),
(123, 'Dans un tunnel éclairé, hors agglomération, je peux allumer', NULL, NULL, 'les feux de position seuls', 'les feux de croisement', 'les feux de route', NULL, '2021-09-11 18:19:33', '2021-09-11 18:19:33', 353, 0, 1, 0, 0),
(124, 'Nous sommes le 8 du mois. Je stationne du côte', NULL, NULL, 'des numéros impairs', 'des numéros pairs', NULL, NULL, '2021-09-11 18:20:33', '2021-09-11 18:20:33', 354, 1, 0, 0, 0),
(125, 'Après ce signal je vais obligatoirement céder le passage à droite', NULL, NULL, 'Oui', 'Non', NULL, NULL, '2021-09-11 18:23:11', '2021-09-11 18:23:11', 355, 0, 1, 0, 0),
(126, 'En agglomération, pour dépasser un cycliste, je laisse un écart de', NULL, NULL, '0, 50 mètre', '1 mètre', '1, 50 mètre', NULL, '2021-09-11 18:24:18', '2021-09-11 18:24:18', 356, 0, 1, 0, 0),
(127, 'Ce panneau est implanté en agglomération à environ', NULL, NULL, '50 mètres', '100 mètres', '150 mètres', NULL, '2021-09-11 18:31:41', '2021-09-11 18:31:41', 357, 1, 0, 0, 0),
(128, 'Ce panneau indique', NULL, NULL, 'un stationnement interdit', 'un arrêt et stationnement interdit', NULL, NULL, '2021-09-11 18:32:46', '2021-09-11 18:32:46', 358, 0, 1, 0, 0),
(129, 'Dans les zones de rencontre la vitesse est limitée', NULL, NULL, 'à 20 km/h', 'à 30 km/h', NULL, NULL, '2021-09-11 18:33:45', '2021-09-11 18:33:45', 359, 1, 0, 0, 0),
(130, 'La limitation de vitesse sur autoroute par temps de pluie est de', NULL, NULL, '110 km/h', '120 km/h', '130 km/h', NULL, '2021-09-11 18:35:27', '2021-09-11 18:35:27', 360, 1, 0, 0, 0),
(131, 'Len signes des forces de l’ordre prévalent sur la signalisation', NULL, NULL, 'Oui', 'Non', NULL, NULL, '2021-09-11 18:36:14', '2021-09-11 18:36:14', 361, 1, 0, 0, 0),
(132, 'En agglomération dans une rue à double sens de circulation, il est possible de stationner le long du bord gauche de la chaussée', NULL, NULL, 'Oui', 'Non', NULL, NULL, '2021-09-11 18:37:11', '2021-09-11 18:37:11', 362, 0, 1, 0, 0),
(133, NULL, 'Ce panneau interdit l’accès aux autobus', 'Indique un arrêt de bus', 'Oui', 'Non', 'Oui', 'Non', '2021-09-11 18:39:48', '2021-09-11 18:39:48', 363, 0, 1, 0, 1),
(134, 'Je stationne à proximité d’une intersection sans visibilité, mon stationnement est considéré par le code de la route comme', NULL, NULL, 'gênant', 'dangereux', 'abusif', NULL, '2021-09-11 18:41:06', '2021-09-11 18:41:06', 364, 0, 1, 0, 0),
(135, 'Ce panneau signale', NULL, NULL, 'un terrain de golf à proximité', 'un risque fort de vent latéral', 'un aéroport à proximité', NULL, '2021-09-11 18:42:27', '2021-09-11 18:42:27', 365, 0, 1, 0, 0),
(136, 'D’après ce panneau ci-dessous, une voie de détresse est  	réservée aux véhicules', NULL, NULL, 'ayant actionner leurs feux de détresse', 'qui forment un convoi exceptionnel', 'donc les freins sont défaillants', NULL, '2021-09-11 18:43:29', '2021-09-11 18:43:29', 366, 0, 0, 1, 0),
(137, 'Hors agglomération, lorsqu’ils se suivent à la même vitesse, les véhicules de plus de 3,5 tonnes ou de plus de 7 mètres de long doivent respecter, entre eux, un intervalle équivalent à', NULL, NULL, '25 mètres', '50 mètres', '75 mètres', '100 mètres', '2021-09-11 18:46:02', '2021-09-11 18:46:02', 367, 0, 1, 0, 0),
(138, 'Le poids total autorisé en charge d’un véhicule à moteur  à deux essieux ou remorque à deux essieux ne doit  pas dépasser les limites suivantes', NULL, NULL, '7,5 tonnes', '19 tonnes', '26 tonnes', '32 tonnes', '2021-09-11 18:49:01', '2021-09-11 18:49:01', 368, 0, 1, 0, 0),
(139, NULL, 'Ce panneau indique une chaussée à double sens', 'J’ai la priorité par rapport à ceux venant en sens inverse', 'Oui', 'Non', 'Oui', 'Non', '2021-09-11 18:50:54', '2021-09-11 18:50:54', 369, 0, 1, 1, 0),
(140, 'En général, le chargement d’un véhicule peut dépasser  au maximum à l’arrière de', NULL, NULL, '1 mètre', '2 mètres', '3 mètres', NULL, '2021-09-11 18:52:33', '2021-09-11 18:52:33', 370, 0, 0, 1, 0),
(141, 'L’essieu le plus chargé d’un véhicule ne doit pas supporter  une charge supérieure à', NULL, NULL, '7 tonnes', '10 tonnes', '13 tonnes', NULL, '2021-09-11 18:54:12', '2021-09-11 18:54:12', 371, 0, 0, 1, 0),
(142, 'Je dois posséder un permis de transport en commun au delà de', NULL, NULL, '8 personnes', '9 personnes', '10 personnes', NULL, '2021-09-11 18:56:43', '2021-09-11 18:56:43', 372, 0, 1, 0, 0),
(143, 'Le voyant bleu sur le tableau de bord indique le fonctionnement', NULL, NULL, 'des feux de route', 'des clignotants', 'des feux de brouillard avant', NULL, '2021-09-11 18:58:43', '2021-09-11 18:58:43', 373, 1, 0, 0, 0),
(144, 'Je peux utiliser le feu de brouillard arrière en cas de forte pluie', NULL, NULL, 'Oui', 'Non', NULL, NULL, '2021-09-11 19:01:12', '2021-09-11 19:01:12', 374, 0, 1, 0, 0),
(145, 'Un chargement placé sur le toit peut dépasser l’aplomb avant du véhicule', NULL, NULL, 'Oui', 'Non', NULL, NULL, '2021-09-11 19:01:59', '2021-09-11 19:01:59', 375, 0, 1, 0, 0),
(146, 'Ce panneau annonce', 'un risque de présence de pierres sur la chaussée', 'Un risque de chute de pierres sur la chaussée', 'Oui', 'Non', 'Oui', 'Non', '2021-09-11 19:06:00', '2021-09-11 19:06:00', 376, 1, 0, 1, 0),
(147, 'Les panneaux indiquant les itinéraires reliant des villes importantes par la route sont de couleur', NULL, NULL, 'verte', 'blanche', 'bleue', NULL, '2021-09-11 19:08:03', '2021-09-11 19:08:03', 377, 1, 0, 0, 0),
(148, 'Quelle est la signification de ce panneau  ?', NULL, NULL, 'route à accès réglementé', 'route à accès libre', 'route à accès payant', 'Route à caractère obligatoire', '2021-09-11 19:10:11', '2021-09-11 19:10:11', 378, 1, 0, 0, 0),
(149, 'Cette signalisation m’annonce', NULL, NULL, 'une zone de détresse', 'un pont', 'un tunnel', 'que je dois allumer mes feux de croisement', '2021-09-11 19:12:16', '2021-09-11 19:12:16', 379, 0, 0, 1, 1),
(150, 'Ce panneau signale', NULL, NULL, 'un accès interdit aux véhicules dont le PTAC (ou PTRA) est supérieur à 5,5tonnes', 'une limitation de vitesse pour les  véhicules dont le PTAC (ou PTRA) est supérieur à 5,5 tonnes', 'une obligation de maintenir une distance de sécurité de 70 m entre les  véhicules dont le PTAC (ou PTRA) est supérieur à 5,5 tonnes', NULL, '2021-09-11 19:13:55', '2021-09-11 19:13:55', 380, 0, 1, 0, 0),
(151, 'Ce panneau me signale', NULL, NULL, 'une succession de virage', 'une chaussée rétrécie', 'une chaussée glissante', 'un ralentisseur', '2021-09-11 19:15:23', '2021-09-11 19:15:23', 381, 0, 0, 1, 0),
(152, 'Sur l’emplacement indiqué par ce signal, je peux m’arrêter pour', NULL, NULL, 'lire une carte routière', 'changer un pneu crevé', 'répondre à un appel téléphonique', NULL, '2021-09-11 19:16:49', '2021-09-11 19:16:49', 382, 0, 1, 0, 0),
(153, 'Ce panneau signale', NULL, NULL, 'un risque de crevaison', 'un risque de projection de gravillons', 'une interdiction de transporter des matières explosives', NULL, '2021-09-11 19:19:15', '2021-09-11 19:19:15', 383, 0, 1, 0, 0),
(154, 'En règle générale, de nuit, hors agglomération :', NULL, NULL, 'Je dois circuler en feux de route', 'Je dois circuler en feux de croisement', NULL, NULL, '2021-09-11 19:20:16', '2021-09-11 19:20:16', 384, 0, 1, 0, 0),
(155, 'Ce panneau annonce une route à caractère prioritaire', NULL, NULL, 'Oui', 'Non', NULL, NULL, '2021-09-11 19:23:38', '2021-09-11 19:23:38', 385, 0, 1, 0, 0),
(156, 'En agglomération, la règle générale veut qu’un panneau de danger 	soit placés à une distance de la zone de danger de', NULL, NULL, '25 mètres', '100 mètres', '150 mètres', '50 mètres', '2021-09-11 19:24:56', '2021-09-11 19:24:56', 386, 0, 0, 0, 1),
(157, 'Ce panneau annonce', NULL, NULL, 'stationnement interdit', 'fin d’interdiction de stationnement', 'arrêt et stationnement interdit', 'fin de zone bleue', '2021-09-11 19:30:13', '2021-09-11 19:30:13', 387, 1, 0, 0, 0),
(158, 'Pour dépasser un cycliste en agglomération, je dois laisser un intervalle d’au moins', NULL, NULL, '0, 50 mètre', '1,50 mètre', '1 mètre', 'il est interdit de dépasser un cycliste en agglomération', '2021-09-11 19:32:13', '2021-09-11 19:32:13', 388, 0, 0, 1, 0),
(159, 'A l’intersection, je m’arrêterai seulement si des véhicules arrivent de gauche ou de droite', NULL, NULL, 'Oui', 'Non', NULL, NULL, '2021-09-11 19:35:45', '2021-09-11 19:35:45', 389, 0, 1, 0, 0),
(160, 'Nous sommes le 16, je stationne', 'Directement à gauche', 'Après le panneau', 'Oui', 'Non', 'Oui', 'Non', '2021-09-11 19:37:05', '2021-09-11 19:37:05', 390, 1, 1, 1, 1),
(161, 'Ce passage à niveau est', NULL, NULL, 'à une voie', 'à plusieurs voies', 'sans barrière', NULL, '2021-09-11 19:38:35', '2021-09-11 19:38:35', 391, 0, 1, 1, 0),
(162, 'A partir du panneau', 'la route est prioritaire', 'ma vitesse est limitée à 90 km/h', 'Oui', 'Non', 'Oui', 'Non', '2021-09-11 19:39:55', '2021-09-11 19:39:55', 392, 0, 1, 1, 0),
(163, NULL, 'Dans cette situation, je ralentis', 'Si je continue tout droit, je céderai la priorité à droite', 'Oui', 'Non', 'Oui', 'Non', '2021-09-11 19:43:11', '2021-09-11 19:43:11', 393, 1, 0, 1, 0),
(164, NULL, NULL, NULL, 'Ce panneau indique un lieu-dit', 'La vitesse est limitée à 70 km/h', 'Je dois seulement ralentir', NULL, '2021-09-11 19:44:07', '2021-09-11 19:44:07', 394, 1, 0, 1, 0),
(165, 'Ce panneau signale', NULL, NULL, 'une priorité de passage', 'une chaussée à double sens de circulation', 'une chaussée à une voie', 'ce danger commence à partir du panneau', '2021-09-11 19:49:02', '2021-09-11 19:49:02', 395, 0, 1, 0, 1),
(166, 'La distance me séparant du passage à niveau est d’environ', NULL, NULL, '100 mètres', '50 mètres', '150 mètres', NULL, '2021-09-11 19:50:25', '2021-09-11 19:50:25', 396, 0, 1, 0, 0),
(167, 'Je céderai le passage', 'à gauche seulement', 'à gauche et à droite', 'Oui', 'Non', 'Oui', 'Non', '2021-09-11 19:55:30', '2021-09-11 19:55:30', 397, 0, 1, 1, 0),
(168, 'Je céderai le passage', 'à gauche seulement', 'à gauche et à droite', 'Oui', 'Non', 'Oui', 'Non', '2021-09-11 20:03:10', '2021-09-11 20:03:10', 398, 0, 1, 1, 0),
(169, 'Si je rencontre ce panneau, je pois allumer les feux de', NULL, NULL, 'position uniquement', 'croisement', 'route', NULL, '2021-09-11 20:06:02', '2021-09-11 20:06:02', 399, 0, 1, 0, 0),
(170, 'Ce panneau annonce un passage à niveau avec des barrières à fonctionnement manuel', NULL, NULL, 'Oui', 'Non', NULL, NULL, '2021-09-11 20:07:38', '2021-09-11 20:07:38', 400, 1, 0, 0, 0),
(171, 'Ce panneau m’informe que le parking est', NULL, NULL, 'gratuit sans durée limitée', 'gratuit et à durée limitée', 'payant', NULL, '2021-09-11 20:09:18', '2021-09-11 20:09:18', 401, 1, 0, 0, 0),
(172, 'j\'ai klaxonné;les cycliste doivent se mettre en fil simple', NULL, NULL, 'oui', 'non', NULL, NULL, '2021-09-11 20:19:04', '2021-09-11 20:19:04', 213, 1, 0, 0, 0),
(173, 'A la prochaine intersection', NULL, NULL, 'j\'aurai la priorité', 'je cèderai le passage à droite', 'je cèderai le passage à gauche', NULL, '2021-09-11 20:28:00', '2021-09-11 20:31:25', 221, 0, 0, 1, 0),
(174, 'Au besoin je dois m\'arreter pour faciliter le passage à cet autobus', NULL, NULL, 'Oui', 'Non', NULL, NULL, '2021-09-11 20:36:51', '2021-09-11 20:36:51', 224, 1, 0, 0, 0),
(175, 'En marche normale, je suis bien placé', 'Pour aller à la station service', 'Pour aller à Dreux', 'Oui', 'Non', 'Oui', 'Non', '2021-09-11 20:43:10', '2021-09-11 20:43:10', 234, 0, 1, 0, 1),
(176, 'Je céderai le passage à gauche', NULL, NULL, 'Oui', 'Non', NULL, NULL, '2021-09-11 20:45:20', '2021-09-11 20:45:20', 236, 0, 1, 0, 0),
(177, 'Je peux circuler', 'A plus de 80  km/h', 'A plus de 90 km/h', 'Oui', 'Non', 'Oui', 'Non', '2021-09-11 20:53:35', '2021-09-11 20:53:35', 239, 1, 0, 0, 1),
(178, 'Je depasse', NULL, NULL, 'Oui', 'Non', NULL, NULL, '2021-09-11 20:55:23', '2021-09-11 20:55:23', 242, 0, 1, 0, 0),
(179, 'Nous sommes le 16,je stationne', 'Après le panneau', 'Directement à gauche', 'Oui', 'Non', 'Oui', 'Non', '2021-09-11 20:58:58', '2021-09-11 20:58:58', 244, 0, 1, 0, 1),
(180, NULL, NULL, NULL, 'Ce panneau inddique un lieu-dit', 'La vitesse est limitée à 50 km/h', 'Je dois seulement ralentir', NULL, '2021-09-11 21:04:37', '2021-09-11 21:04:37', 245, 1, 0, 1, 0),
(181, 'Pour depasser', 'je dois serrer au maximum à gauche', 'Un intervalle de moins d\'un metre suffit', 'Oui', 'Non', 'Oui', 'Non', '2021-09-11 21:07:59', '2021-09-11 21:07:59', 246, 1, 0, 0, 1),
(182, 'Pour aller à Rennes, je circulerai sur autoroute:', NULL, NULL, 'OUI', 'NON', NULL, NULL, '2021-09-14 14:11:00', '2021-09-14 14:11:00', 23, 1, 0, 0, 0),
(183, 'Je tourne à gauche.', NULL, NULL, 'Je cède le passage à droite', 'Je passe', NULL, NULL, '2021-09-14 14:13:28', '2021-09-14 14:13:28', 26, 1, 0, 0, 0),
(184, 'Je dépasse:', NULL, NULL, 'OUI', 'NON', NULL, NULL, '2021-09-14 14:14:35', '2021-09-14 14:14:35', 29, 0, 1, 0, 0),
(185, 'A cette intersection, le véhicule de gauche doit me céder le passage:', NULL, NULL, 'OUI', 'NON', NULL, NULL, '2021-09-14 14:18:10', '2021-09-14 14:18:10', 31, 0, 0, 0, 0),
(186, NULL, NULL, NULL, 'Je passe', 'Je m\'arrête', NULL, NULL, '2021-09-14 14:19:18', '2021-09-14 14:19:18', 33, 1, 0, 0, 0),
(187, 'Sur cette chaussée, la vitesse est limitée à:', NULL, NULL, '110 km / h', '100 km / h', '90 km / h', NULL, '2021-09-14 14:21:27', '2021-09-14 14:21:27', 35, 0, 0, 1, 0),
(188, 'La circulation peut être interrompue :', 'Par des feux:', 'par un piquet mobile:', 'OUI', 'NON', 'OUI', 'NON', '2021-09-14 14:23:30', '2021-09-14 14:23:30', 37, 1, 0, 1, 0),
(189, 'La traversée du passage à niveau est interdite aux véhicules de plus de 10 tonnes :', NULL, NULL, 'OUI', 'NON', NULL, NULL, '2021-09-14 14:25:28', '2021-09-14 14:25:28', 39, 0, 1, 0, 0),
(190, NULL, NULL, NULL, 'Je dois me rabattre entre les camions', 'Je poursuis mon dépassement', NULL, NULL, '2021-09-14 14:27:55', '2021-09-14 14:27:55', 41, 0, 1, 0, 0),
(191, 'Je tourne à droite, je passe avant le véhicule qui arrive de face:', NULL, NULL, 'OUI', 'NON', NULL, NULL, '2021-09-14 14:29:31', '2021-09-14 14:29:31', 43, 1, 0, 0, 0),
(192, 'Dans cette zone, je pourrai:', 'stationner:', 'm\'arrêter:', 'OUI', 'NON', 'OUI', 'NON', '2021-09-14 14:31:17', '2021-09-14 14:31:17', 45, 1, 0, 1, 0),
(193, 'A 200 mètres :', 'je circulerai sur une autoroute:', 'je pourrai rouler à 110 km / h', 'OUI', 'NON', 'OUI', 'NON', '2021-09-14 14:33:35', '2021-09-14 14:33:35', 47, 0, 1, 0, 1),
(194, 'La signalisation annonce :', NULL, NULL, 'une sortie', 'une confirmation de direction', NULL, NULL, '2021-09-14 14:35:05', '2021-09-14 14:35:05', 49, 1, 0, 0, 0),
(195, NULL, NULL, NULL, 'Je cède le passage à droite', 'Je passe', NULL, NULL, '2021-09-14 14:36:08', '2021-09-14 14:36:08', 51, 0, 1, 0, 0),
(196, 'Pour faire des économies de carburant, je me mets au point mort:', NULL, NULL, 'OUI', 'NON', NULL, NULL, '2021-09-14 14:37:32', '2021-09-14 14:37:32', 52, 0, 1, 0, 0),
(197, 'Après le dépassement de cette voiture :', 'je pourrai rester dans la voix centrale:', 'je devrai revenir à droite :', 'OUI', 'NON', 'OUI', 'NON', '2021-09-14 14:39:36', '2021-09-14 14:39:36', 54, 0, 1, 1, 0),
(198, 'Ce véhicule :', 'transporte des enfants :', 'est arrêté', 'OUI', 'NON', 'OUI', 'NON', '2021-09-14 14:41:02', '2021-09-14 14:41:02', 56, 1, 0, 1, 0),
(199, 'La signalisation annonce :', NULL, NULL, 'une déviation de circulation', 'une bifurcation', 'une voie de détresse', NULL, '2021-09-14 14:42:37', '2021-09-14 14:42:37', 58, 0, 0, 1, 0),
(200, 'Je peux stationner derrière la voiture verte :', NULL, NULL, 'OUI', 'NON', NULL, NULL, '2021-09-14 14:43:43', '2021-09-14 14:43:43', 60, 1, 0, 0, 0),
(201, 'Je cèderai le passage :', 'à gauche :', 'à droite :', 'OUI', 'NON', 'OUI', 'NON', '2021-09-14 14:45:03', '2021-09-14 14:45:03', 63, 1, 0, 0, 1),
(202, NULL, NULL, NULL, 'Je passe', 'Je m\'arrête', NULL, NULL, '2021-09-14 14:45:58', '2021-09-14 14:45:58', 66, 0, 1, 0, 0),
(203, 'Je dépasse:', NULL, NULL, 'OUI', 'NON', NULL, NULL, '2021-09-14 14:46:46', '2021-09-14 14:46:46', 68, 0, 1, 0, 0),
(204, 'Je peux circuler à :', NULL, NULL, '100 km / h', '90 km / h', '80 km / h', NULL, '2021-09-14 14:47:58', '2021-09-14 14:47:58', 70, 0, 1, 1, 0),
(205, 'Je dois céder le passage à la voiture qui arrive de droite:', NULL, NULL, 'OUI', 'NON', NULL, NULL, '2021-09-14 14:49:11', '2021-09-14 14:49:11', 72, 0, 1, 0, 0),
(206, NULL, 'Cette signalisation annonce :', 'je peux la rencontrer :', 'une sortie', 'une bifurcation', 'sur une route', 'sur une autoroute', '2021-09-14 14:51:14', '2021-09-14 14:51:14', 73, 1, 0, 1, 1),
(207, NULL, NULL, NULL, 'je m\'engage prudemment en klaxonnant', 'j\'attends', NULL, NULL, '2021-09-14 14:52:46', '2021-09-14 14:52:46', 247, 0, 1, 0, 0),
(208, 'Tant qu\'on n\'atteint pas le taux d\'alcool de 0,80 g/l ou de 0,40 mg/l, le risque d\'accident est tout à fait négligeable :', NULL, NULL, 'OUI', 'NON', NULL, NULL, '2021-09-14 14:53:23', '2021-09-14 14:53:23', 75, 0, 1, 0, 0),
(209, 'Vous stationnez sur un emplacement réservé aux véhicules de transport en commun.', 'un agent de la compagnie de transport :', 'le conducteur d\'autobus :', 'OUI', 'NON', 'OUI', 'NON', '2021-09-14 14:55:52', '2021-09-14 14:55:52', 79, 1, 0, 0, 1),
(210, 'je vais tout droit et le feu clignote', NULL, NULL, 'je cède le passage à droite', 'je quitte la route prioritaire', 'je m\'arrete', NULL, '2021-09-14 14:58:12', '2021-09-14 14:58:12', 248, 1, 1, 0, 0),
(211, 'Après la date indiquée comme étant celle de la transaction, l\'acquéreur d\'un véhicule d\'occasion peut circuler avec l\'ancienne carte grise pendant :', NULL, NULL, '10 jours', '15 jours', '1 mois', '2 mois', '2021-09-14 14:58:28', '2021-09-14 14:58:28', 78, 0, 1, 0, 0),
(212, 'Vous circulez de nuit. Etes-vous autorisé à utiliser vos feux de brouillard avant:', 'hors agglomération, sur une route en ligne droite :', 'en agglomération', 'OUI', 'NON', 'OUI', 'NON', '2021-09-14 15:00:52', '2021-09-14 15:00:52', 80, 0, 1, 0, 1),
(213, 'Je circule sur autoroute', NULL, NULL, 'Oui', 'Non', NULL, NULL, '2021-09-14 15:01:26', '2021-09-14 15:01:26', 250, 1, 0, 0, 0),
(214, 'Lorsqu\'on mesure la profondeur des rainures principales d\'un pneumatique en quatre points répartis sur la circonférence, il ne doit pas exister plus d\'un point où la profondeur soit inférieure à :', NULL, NULL, '1 millimètre', '1,6 millimètre', '2 millimètres', NULL, '2021-09-14 15:06:26', '2021-09-14 15:06:26', 81, 1, 0, 0, 0),
(215, NULL, NULL, NULL, 'Seule la bande ciclable est prioritaire', 'Toute la route est prioritaire', 'Je peux m\'arreter sut la bande un court instant', 'Seule les cyclistes peuvent emprunter la bande', '2021-09-14 15:07:00', '2021-09-14 15:08:01', 251, 0, 1, 0, 1),
(216, NULL, NULL, NULL, 'Je passe en feu de route', 'Je freine', 'je maintiens mon allure', 'Je serre à droite', '2021-09-14 15:11:10', '2021-09-14 15:11:10', 253, 0, 0, 1, 1),
(217, 'Pour eviter un accident, je pourrai utiliser l\'avertisseur sonor', NULL, NULL, 'Oui', 'Non', NULL, NULL, '2021-09-14 15:13:37', '2021-09-14 15:13:37', 254, 1, 0, 0, 0),
(218, 'Je dépasse ce véhicule qui est arrêté :', NULL, NULL, 'OUI', 'NON', NULL, NULL, '2021-09-14 15:13:54', '2021-09-14 15:13:54', 82, 0, 1, 0, 0),
(219, 'Le panneau interdit la circulation :', NULL, NULL, 'dans un sens seulement', 'dans les deux sens', 'seulement aux véhicules à moteur', 'à tous les véhicules', '2021-09-14 15:16:24', '2021-09-14 15:16:24', 83, 0, 1, 0, 1),
(220, 'Si je stationne comme la voiture,je serai', NULL, NULL, 'Seulement en stationnement génant', 'En stationnement dangereux', 'En stationnement abusif', NULL, '2021-09-14 15:17:36', '2021-09-14 15:17:36', 255, 0, 1, 0, 0),
(221, 'Je cèderai le passage à droite :', NULL, NULL, 'OUI', 'NON', NULL, NULL, '2021-09-14 15:17:56', '2021-09-14 15:17:56', 84, 0, 1, 0, 0),
(222, 'Dans cette agglomération, ma vitesse est limitée à :', NULL, NULL, '60 km/h', '50 km/h', '45 km/h', NULL, '2021-09-14 15:19:41', '2021-09-14 15:19:41', 85, 0, 1, 0, 0),
(223, 'Je m\'arrête immédiatement à droite par curiosité :', NULL, NULL, 'OUI', 'NON', NULL, NULL, '2021-09-14 15:21:16', '2021-09-14 15:21:16', 86, 0, 1, 0, 0),
(224, NULL, 'Le piéton devrait marcher à gauche:', 'Pour dépasser, je laisse un intervalle d\'au moins 1 m :', 'OUI', 'NON', 'OUI', 'NON', '2021-09-14 15:23:20', '2021-09-14 15:23:20', 87, 1, 0, 1, 0),
(225, 'La signalisation m\'indique l\'entrée :', NULL, NULL, 'de l\'agglomération', 'd\'une zone à stationnement règlementé', NULL, NULL, '2021-09-14 15:25:39', '2021-09-14 15:25:39', 88, 0, 1, 0, 0),
(226, NULL, 'Je dois circuler en feux de croisement :', 'Je peux dépasser :', 'OUI', 'NON', 'OUI', 'NON', '2021-09-14 15:27:34', '2021-09-14 15:27:34', 89, 1, 0, 0, 1),
(227, 'Je cède le passage à droite', NULL, NULL, 'Oui', 'Non', NULL, NULL, '2021-09-14 15:28:00', '2021-09-14 15:29:19', 256, 1, 0, 0, 0),
(228, 'Pour aller à Barcelone :', NULL, NULL, 'je reste dans cette voie', 'je prends la voie de gauche', NULL, NULL, '2021-09-14 15:29:12', '2021-09-14 15:29:12', 90, 1, 0, 0, 0),
(229, 'Je peux :', 'tourner à gauche :', 'tourner à droite:', 'OUI', 'NON', 'OUI', 'NON', '2021-09-14 15:33:32', '2021-09-14 15:33:32', 91, 1, 0, 0, 1),
(230, NULL, NULL, NULL, 'Je passe avec prudence', 'Je m\'arrête', NULL, NULL, '2021-09-14 15:35:07', '2021-09-14 15:35:07', 92, 1, 0, 0, 0),
(231, 'Les balises m\'indiquent :', 'la position de l\'intersection :', 'priorité à droite :', 'OUI', 'NON', 'OUI', 'NON', '2021-09-14 15:37:45', '2021-09-14 15:37:45', 93, 1, 0, 0, 1),
(232, 'Même par temps de pluie, je pourrai circuler à 50 km/h :', NULL, NULL, 'OUI', 'NON', NULL, NULL, '2021-09-14 15:39:13', '2021-09-14 15:39:13', 94, 1, 0, 0, 0),
(233, NULL, 'La ligne jaune discontinue interdit le stationnement', 'Je peux m\'arrêter', 'OUI', 'NON', 'OUI', 'NON', '2021-09-14 15:40:52', '2021-09-14 15:40:52', 95, 1, 0, 0, 1),
(234, 'Ce panneau signale', NULL, NULL, 'Une priorité de passage', 'Une chaussée à une voie', 'Une chaussée à double sens', 'ce danger commence à partir du panneau', '2021-09-14 15:43:47', '2021-09-14 15:43:47', 257, 0, 0, 1, 1),
(235, 'Cette ligne remplace une ligne continue et ce véhicule roule lentement :', 'je dépasse :', NULL, 'OUI', 'NON', NULL, NULL, '2021-09-14 15:43:54', '2021-09-14 15:43:54', 96, 1, 0, 0, 0),
(236, 'Ces balises m\'indiquent :', NULL, NULL, 'une succession de virages :', 'une intersection', 'une région fréquemment enneigée', NULL, '2021-09-14 15:46:03', '2021-09-14 15:46:03', 97, 0, 1, 1, 0),
(237, 'Dans ce tunnel non éclairé, je pourrai circuler :', NULL, NULL, 'en feux de position seuls', 'en feux de croisement', NULL, NULL, '2021-09-14 15:47:59', '2021-09-14 15:47:59', 98, 0, 1, 0, 0),
(238, 'Comme la voiture devant moi ,je circule à 90 km/h.Je depasse', NULL, NULL, 'Oui', 'Non', NULL, NULL, '2021-09-14 15:50:42', '2021-09-14 15:50:42', 259, 0, 1, 0, 0),
(239, 'La signalisation annonce :', 'une ligne continue :', 'un changement de chaussée :', 'OUI', 'NON', 'OUI', 'NON', '2021-09-14 15:52:04', '2021-09-14 15:52:04', 100, 1, 0, 1, 0),
(240, 'Je peux suivre la voiture blanche, pour dépasser :', NULL, NULL, 'OUI', 'NON', NULL, NULL, '2021-09-14 15:53:24', '2021-09-14 15:53:24', 101, 0, 1, 0, 0),
(241, 'Ce panneau indique :', NULL, NULL, 'un lieu dit :', 'la limite d\'un département', 'un cours d\'eau', NULL, '2021-09-14 15:54:59', '2021-09-14 15:54:59', 104, 0, 0, 1, 0),
(242, NULL, 'Le premier panneau me concerne :', 'Je m\'apprête à céder le passage', 'OUI', 'NON', 'OUI', 'NON', '2021-09-14 15:56:24', '2021-09-14 15:56:24', 106, 1, 0, 0, 1),
(243, 'Sur cette chaussée à double sens de circulation, je dépasse :', 'à gauche :', 'à droite :', 'OUI', 'NON', 'OUI', 'NON', '2021-09-14 15:58:09', '2021-09-14 15:58:09', 107, 0, 1, 1, 0),
(244, 'Je passe :', NULL, NULL, 'le premier', 'le deuxième', 'le troisième', NULL, '2021-09-14 15:59:18', '2021-09-14 15:59:18', 109, 1, 0, 0, 0),
(245, 'En roulant à 75 km/h, je peux prendre la voie de gauche pour dépasser :', NULL, NULL, 'OUI', 'NON', NULL, NULL, '2021-09-14 16:00:48', '2021-09-14 16:00:48', 110, 0, 1, 0, 0),
(246, 'La voie de droite est', 'une voie d\'insertion', 'une voie reservée aux vehicules lents', 'Oui', 'Non', 'Oui', 'Non', '2021-09-14 16:02:15', '2021-09-14 16:02:15', 261, 0, 1, 1, 0),
(247, 'Pour croiser :', 'je roule au pas', 'je serre à droite au maximum', 'OUI', 'NON', 'OUI', 'NON', '2021-09-14 16:02:23', '2021-09-14 16:02:23', 114, 1, 0, 1, 0),
(248, 'Je cède le passage à droite :', NULL, NULL, 'OUI', 'NON', NULL, NULL, '2021-09-14 16:03:22', '2021-09-14 16:03:22', 116, 1, 0, 0, 0),
(249, 'Il sera interdit de dépasser :', NULL, NULL, 'dans toute l\'agglomération', 'seulement sur cette route', 'jusqu\'à la prochaine intersection', NULL, '2021-09-14 16:05:06', '2021-09-14 16:05:06', 118, 0, 1, 1, 0),
(250, 'La route n\'est plus prioritaire :', NULL, NULL, 'à partir de ce panneau', 'à 300 m', NULL, NULL, '2021-09-14 16:08:21', '2021-09-14 16:08:21', 119, 0, 1, 0, 0),
(251, 'Le marquage rouge et blanc m\'indique :', NULL, NULL, 'une voie réservée aux véhicules de secours', 'une voie pour véhicules privés de freinage', 'une voie de détresse', NULL, '2021-09-14 16:10:33', '2021-09-14 16:10:33', 121, 0, 1, 1, 0),
(252, NULL, NULL, NULL, 'je passe', 'j\'attends', NULL, NULL, '2021-09-14 16:12:13', '2021-09-14 16:12:13', 263, 0, 1, 0, 0),
(253, NULL, 'Je circule sur une chaussée à sens unique :', 'Ma vitesse est limitée à 110 km/h :', 'OUI', 'NON', 'OUI', 'NON', '2021-09-14 16:12:21', '2021-09-14 16:12:21', 122, 1, 0, 0, 1),
(254, 'Je continue tout droit. Je m\'apprête à céder le passage :', 'à droit :', 'aux véhicules venant de face et qui tournent', 'OUI', 'NON', 'OUI', 'NON', '2021-09-14 16:16:15', '2021-09-14 16:16:15', 123, 1, 0, 1, 0),
(255, NULL, NULL, NULL, 'La chaussée va etre reduite à une voie', 'Je reste dans cette voie', 'Je pendrai la voie de gauche', 'La signalistion est temporaire', '2021-09-14 16:17:24', '2021-09-14 16:17:24', 266, 1, 0, 1, 1),
(256, 'Sur cette route à caractère prioritaire, je dépasse :', NULL, NULL, 'OUI', 'NON', NULL, NULL, '2021-09-14 16:17:32', '2021-09-14 16:17:32', 124, 1, 0, 0, 0);
INSERT INTO `questions` (`id`, `libelle_question`, `libelle_1`, `libelle_2`, `choix_a`, `choix_b`, `choix_c`, `choix_d`, `created_at`, `updated_at`, `diapositive`, `reponse_a`, `reponse_b`, `reponse_c`, `reponse_d`) VALUES
(257, 'Pour depasser je peux emprunter la voie de gauche', NULL, NULL, 'Oui', 'Non', NULL, NULL, '2021-09-14 16:19:04', '2021-09-14 16:19:04', 268, 1, 0, 0, 0),
(258, 'Le panneau m\'indique :', 'rue sans issue à droite :', 'interdiction de tourner à droite :', 'OUI', 'NON', 'OUI', 'NON', '2021-09-14 16:19:19', '2021-09-14 16:19:19', 125, 1, 0, 0, 1),
(259, 'Je dois :', 'tourner à gauche :', 'céder le passage au véhicule qui arrive de face :', 'OUI', 'NON', 'OUI', 'NON', '2021-09-14 16:20:54', '2021-09-14 16:20:54', 126, 1, 0, 1, 0),
(260, 'Je peux circuler avec', NULL, NULL, 'les feux de brouillard avant', 'les feux de brouillard arrière', 'les feux de route', NULL, '2021-09-14 16:23:03', '2021-09-14 16:23:03', 270, 1, 1, 0, 0),
(261, 'Apprenti conducteur, en cas de contrôle sur route par les agents de la police ou de la gendarmerie, je suis tenu de présenter mon livret d\'apprentissage :', NULL, NULL, 'OUI', 'NON', NULL, NULL, '2021-09-14 16:23:20', '2021-09-14 16:23:20', 129, 1, 0, 0, 0),
(262, 'Ma voiture particulière doit obligatoirement être équipée de ceintures de sécurité à l\'arrière, si elle a été mise en circulation :', 'à partir du 1er septembre 1967 :', 'à partir du 1er octobre 1978 :', 'OUI', 'NON', 'OUI', 'NON', '2021-09-14 16:26:23', '2021-09-14 16:26:23', 131, 0, 1, 1, 0),
(263, 'La signalisation annonce une bifurcation', NULL, NULL, 'avec afectation des voies', 'sans affectation des voies', NULL, NULL, '2021-09-14 16:26:31', '2021-09-14 16:26:31', 318, 1, 0, 0, 0),
(264, NULL, 'je peux aller tout droit', 'je peux tournr à gauche', 'Oui', 'Non', 'Oui', 'Non', '2021-09-14 16:28:46', '2021-09-14 16:28:46', 273, 1, 0, 0, 1),
(265, 'A 22 heures, j\'ai arrêté de boire des boissons alcoolisées et mon taux d\'alcool est de 1,10 g/l. A 6 heures du matin, en cas de contrôle par alcootest, ce dernier sera :', NULL, NULL, 'négatif', 'positif', NULL, NULL, '2021-09-14 16:29:12', '2021-09-14 16:29:12', 133, 1, 0, 0, 0),
(266, 'je me prepare à céder le passage aux vehicules', NULL, NULL, 'Oui', 'Non', NULL, NULL, '2021-09-14 16:30:40', '2021-09-14 16:30:40', 299, 1, 0, 0, 0),
(267, NULL, 'L\'inscription \"tubeless\" sur les flancs d\'un pneumatique indique qu\'il a une chambre à air :', 'Ce pneu est en général à structure radiale :', 'OUI', 'NON', 'OUI', 'NON', '2021-09-14 16:31:47', '2021-09-14 16:31:47', 134, 0, 1, 1, 0),
(268, 'Le constat amiable, rempli à la suite d\'un accident matériel, doit être envoyé à l\'assurance :', NULL, NULL, 'dans un délai de 10 jours', 'dans un délai de 5 jours', 'sans délai précis', NULL, '2021-09-14 16:34:06', '2021-09-14 16:34:06', 136, 0, 1, 0, 0),
(269, 'A droite ,après le passage pour piéton', 'je peux faire un arret', 'je peux stationner', 'Oui', 'Non', 'Oui', 'Non', '2021-09-14 16:34:14', '2021-09-14 16:34:14', 301, 0, 1, 0, 1),
(270, 'Ce panneau annonce :', NULL, NULL, 'un danger permanent', 'un danger temporaire', NULL, NULL, '2021-09-14 16:40:37', '2021-09-14 16:40:37', 139, 1, 0, 0, 0),
(271, NULL, NULL, NULL, 'je passe', 'je cède le passage', NULL, NULL, '2021-09-14 16:40:45', '2021-09-14 16:40:45', 304, 1, 0, 0, 0),
(272, 'Je peux rouler :', 'à plus de 100 km/h', 'à 100 km/h maximum', 'OUI', 'NON', 'OUI', 'NON', '2021-09-14 16:42:38', '2021-09-14 16:42:38', 141, 0, 1, 0, 1),
(273, 'Je tourne à droite. Je cède le passage en face :', NULL, NULL, 'OUI', 'NON', NULL, NULL, '2021-09-14 16:43:51', '2021-09-14 16:43:51', 145, 0, 1, 0, 0),
(274, NULL, 'lorsque le feu sera vert ,je pourrais tourer à gauche', 'mon itineraire est prioritaire', 'Oui', 'Non', 'Oui', 'Non', '2021-09-14 16:43:59', '2021-09-14 16:43:59', 307, 0, 1, 1, 0),
(275, 'je peux emprunter la déviation', NULL, NULL, 'Oui', 'Non', NULL, NULL, '2021-09-14 16:45:42', '2021-09-14 16:45:42', 308, 1, 0, 0, 0),
(276, 'Sur cette route, je pourrai rencontrer :', NULL, NULL, 'des cyclomoteurs', 'des motocyclettes', 'des voiturettes', 'des camionnettes', '2021-09-14 16:46:04', '2021-09-14 16:46:04', 148, 0, 1, 0, 1),
(277, NULL, NULL, NULL, 'Je cède le passage', 'Je passe', NULL, NULL, '2021-09-14 16:47:13', '2021-09-14 16:47:13', 149, 0, 1, 0, 0),
(278, 'je rique de rencontrer', 'un vehicule en panne', 'un chargement tombé sur la chaussée', 'Oui', 'Non', 'Oui', 'Non', '2021-09-14 16:48:18', '2021-09-14 16:48:18', 309, 1, 0, 1, 0),
(279, 'Derrière la camionnette :', 'Je peux stationner :', 'je peux m\'arrêter', 'OUI', 'NON', 'OUI', 'NON', '2021-09-14 16:49:09', '2021-09-14 16:49:09', 150, 0, 1, 1, 0),
(280, 'je dépasse', NULL, NULL, 'Oui', 'Non', NULL, NULL, '2021-09-14 16:49:30', '2021-09-14 16:49:30', 310, 1, 0, 0, 0),
(281, 'A l\'intersection, je m\'arrêterai seulement si des véhicules arrivent de gauche ou de droite :', NULL, NULL, 'OUI', 'NON', NULL, NULL, '2021-09-14 16:50:46', '2021-09-14 16:50:46', 151, 0, 1, 0, 0),
(282, 'Un de mes pneus vient de crever.', NULL, NULL, 'J\'allume mes feux de détresse', 'Je m\'arrête dans la voie de droite', 'Je dois continuer jusqu\'au parking', NULL, '2021-09-14 16:53:24', '2021-09-14 16:53:24', 152, 1, 1, 0, 0),
(283, NULL, 'Je ralentis', 'Je fais un écart :', 'OUI', 'NON', 'OUI', 'NON', '2021-09-14 16:55:52', '2021-09-14 16:55:52', 154, 1, 0, 1, 0),
(284, 'je suis bien placé', NULL, NULL, 'en marche normal', 'pour depasser si je roule à 90 km/h', 'pour depasser si je roule 80 km/h', NULL, '2021-09-14 16:56:00', '2021-09-14 16:57:25', 312, 0, 1, 1, 0),
(285, 'Je dépasse :', NULL, NULL, 'OUI', 'NON', NULL, NULL, '2021-09-14 16:57:04', '2021-09-14 16:57:04', 155, 0, 1, 0, 0),
(286, 'Je peux:', NULL, NULL, 'tourner à gauche', 'tourner à droite', 'continuer tout droit', NULL, '2021-09-14 16:58:30', '2021-09-14 16:58:30', 156, 0, 0, 1, 0),
(287, 'la distance me séparant du passage à niveau est d\'environ', NULL, NULL, '50 m', '100 m', '150 m', NULL, '2021-09-14 16:59:30', '2021-09-14 16:59:30', 313, 1, 0, 0, 0),
(288, 'Les conducteurs des véhicules arrivant sur ma gauche doivent me céder le passage:', NULL, NULL, 'OUI', 'NON', NULL, NULL, '2021-09-14 17:00:33', '2021-09-14 17:00:33', 158, 0, 1, 0, 0),
(289, 'Je risque de rencontrer des animaux:', NULL, NULL, 'domestiques', 'sauvages', 'de taille importante', 'seulement la nuit', '2021-09-14 17:02:25', '2021-09-14 17:02:25', 159, 0, 1, 1, 0),
(290, 'Je passe:', NULL, NULL, 'avant la voiture', 'après la voiture', NULL, NULL, '2021-09-14 17:03:43', '2021-09-14 17:03:43', 160, 1, 0, 0, 0),
(291, 'Des amortisseurs en mauvais etat peuvent provoquer', 'une usure prématurée des pneumatiques', 'des difficultés à maintenir le véhicule en ligne par vent  lateral', 'Oui', 'Non', 'Oui', 'Non', '2021-09-14 17:04:26', '2021-09-14 17:04:26', 314, 1, 0, 1, 0),
(292, NULL, NULL, NULL, 'Le stationnement est interdit avant le panneau', 'Le stationnement est interdit après le panneau', 'Je peux m\'arrêter après le panneau', NULL, '2021-09-14 17:05:59', '2021-09-14 17:05:59', 162, 1, 1, 0, 0),
(293, 'L\'utilisation prolongée du starter', NULL, NULL, 'n\' a pas d\'incidence sur la consommation du vehicule', 'a une incidence sur la consommation du vehicule', NULL, NULL, '2021-09-14 17:08:16', '2021-09-14 17:08:16', 315, 0, 1, 0, 0),
(294, 'Je dois respecter l\'intervalle d\'au moins 50 m avec cette caravane:', NULL, NULL, 'OUI', 'NON', NULL, NULL, '2021-09-14 17:08:37', '2021-09-14 17:08:37', 164, 0, 1, 0, 0),
(295, NULL, NULL, NULL, 'Je sors d\'une autoroute', 'J\'entre sur une autoroute de dégagement', 'J\'entre sur une route réservée seulement aux véhicules automobiles', NULL, '2021-09-14 17:10:45', '2021-09-14 17:10:45', 166, 1, 0, 0, 0),
(296, 'Mon véhicule est équipé de pneus à crampons. Je peux circuler à 90 km/h', NULL, NULL, 'OUI', 'NON', NULL, NULL, '2021-09-14 17:13:17', '2021-09-14 17:13:17', 168, 0, 1, 0, 0),
(297, 'Un constat amiable d\'accidentt de model européen redigé n francais', 'comporte les meme rubriques que les autres modèleS des pays de la CEE', 'peut etre utilisé dans les autres pays de la CEE', 'Oui', 'Non', 'Oui', 'Non', '2021-09-14 17:13:51', '2021-09-14 17:13:51', 316, 1, 0, 1, 0),
(298, 'Je tourne à gauche. Je passe:', NULL, NULL, 'le premier', 'le deuxième', 'le troisième', NULL, '2021-09-14 17:14:52', '2021-09-14 17:14:52', 169, 0, 0, 1, 0),
(299, 'Pour tourner à droite à la prochaine intersection, je pourrai emprunter la voie située à ma droite:', NULL, NULL, 'OUI', 'NON', NULL, NULL, '2021-09-14 17:16:22', '2021-09-14 17:16:22', 171, 0, 1, 0, 0),
(300, 'Pour preparer un depassemnt, il vaut mieux', NULL, NULL, 'Etre le plus près possible de celui qu\'on veut depasser', 'Se tenir à une certaine distance pour avoir une meilleur visibilité', NULL, NULL, '2021-09-14 17:18:36', '2021-09-14 17:18:36', 317, 1, 0, 0, 0),
(301, 'Ce panneau m\'interdit de dépasser:', 'seulement les véhicules légers', 'tous les véhicules à moteur sauf ceux à 2 roues:', 'OUI', 'NON', 'OUI', 'NON', '2021-09-14 17:18:56', '2021-09-14 17:18:56', 173, 0, 1, 1, 0),
(302, NULL, NULL, NULL, 'Je passe', 'Je cède le passage', NULL, NULL, '2021-09-14 17:19:50', '2021-09-14 17:19:50', 174, 1, 0, 0, 0),
(303, 'D\'après ces panneaux:', 'je rencontrerai une bifurcation:', 'quelle que soit la direction choisie, je resterai sur l\'autoroute:', 'OUI', 'NON', 'OUI', 'NON', '2021-09-14 17:21:58', '2021-09-14 17:21:58', 176, 1, 0, 1, 0),
(304, 'Nous sommes le 2 du mois. Dans cette rue à stationnement unilatéral alterné, le stationnement est autorisé le long du trottoir', NULL, NULL, 'OUI', 'NON', NULL, NULL, '2021-09-14 17:24:18', '2021-09-14 17:24:18', 178, 1, 0, 0, 0),
(305, NULL, 'Je peux m\'arrêter à cet endroit:', 'Je pourrai tourner à droite:', 'OUI', 'NON', 'OUI', 'NON', '2021-09-14 17:25:51', '2021-09-14 17:25:51', 180, 0, 1, 0, 1),
(306, 'Sur cette route,j\'utilise le frein moteur', NULL, NULL, 'Oui', 'Non', NULL, NULL, '2021-09-16 20:40:29', '2021-09-16 20:40:29', 423, 1, 0, 0, 0),
(307, NULL, NULL, NULL, 'Je me dirrige vers une autoroute', 'je circule déjà sur une autoroute', 'je circule sur une route', 'La vitesse est limitée à 90 km/h', '2021-09-16 20:45:20', '2021-09-16 20:45:20', 424, 1, 0, 1, 1),
(308, 'Les feux de croisement éclairent au minimum à', NULL, NULL, '30 mètres', '50 mètres', '100 mètres', NULL, '2021-09-16 20:46:16', '2021-09-16 20:46:16', 402, 1, 0, 0, 0),
(309, 'Les feux de route éclairent au minimum à', NULL, NULL, '50 mètres', '200 mètres', '100 mètres', NULL, '2021-09-16 20:48:14', '2021-09-16 20:48:14', 403, 0, 0, 1, 0),
(310, 'Dans le rond-point je pourrai', 'tourner à droite ou à gauche', 'revenir sur cette route', 'Oui', 'Non', 'Oui', 'Non', '2021-09-16 20:48:42', '2021-09-16 20:48:42', 426, 1, 0, 1, 0),
(311, 'Le chargement de mon véhicule peut dépasser', NULL, NULL, 'à l\'avant', 'à l\'arrière', 'les deux', NULL, '2021-09-16 20:53:10', '2021-09-16 20:53:10', 404, 0, 1, 0, 0),
(312, NULL, 'Ce panneau m’oblige à tourner à droite', 'M’interdit d’aller tout droit ou de tourner à gauche', 'Oui', 'Non', 'Oui', 'Non', '2021-09-16 20:54:17', '2021-09-16 20:54:17', 405, 1, 0, 1, 0),
(313, 'Dns cette voie, je suis bien placé', NULL, NULL, 'en marche normale', 'pour tourner à gauche', 'pour tourner à droite', 'pour dépasser', '2021-09-16 20:54:34', '2021-09-16 20:54:34', 427, 0, 1, 0, 1),
(314, 'La périodicité du contrôle technique d’un véhicule après le premier contrôle est de', NULL, NULL, '2 ans', '1 an', '3 ans', NULL, '2021-09-16 20:56:08', '2021-09-16 20:56:08', 406, 1, 0, 0, 0),
(315, 'Ce marquage au sol m’indique', NULL, NULL, 'un passage pour piétons', 'un ralentisseur', 'une piste cyclable', 'un arrêt de bus', '2021-09-16 20:57:32', '2021-09-16 20:57:32', 407, 0, 0, 0, 1),
(316, 'Sur un poids lourd, quelle charge maximale autorisée peut  supporter un essieu isolé', NULL, NULL, '10 tonnes', '13 tonnes', '15 tonnes', NULL, '2021-09-16 20:59:22', '2021-09-16 20:59:22', 408, 0, 1, 0, 0),
(317, 'Sur autoroute, vous conduisez un poids lourd et vous roulez  à 70 km/h, êtes vous autorisé à emprunter la voie réservée aux véhicules lents', NULL, NULL, 'Oui', 'Non', NULL, NULL, '2021-09-16 21:02:02', '2021-09-16 21:02:02', 409, 0, 1, 0, 0),
(318, 'Je circule', NULL, NULL, 'sur une route départementale', 'sur une route prioritaire', 'je cède le passage à droite OUI', 'je cède le passage à droite Non', '2021-09-16 21:04:00', '2021-09-16 21:09:03', 428, 0, 0, 0, 1),
(319, NULL, 'Ce panneau m’oblige à céder le passage à gauche et à droite', 'Je m’arrêtais obligatoirement à l’intersection', 'Oui', 'Non', 'Oui', 'Non', '2021-09-16 21:04:26', '2021-09-16 21:04:26', 410, 1, 0, 0, 1),
(320, 'En présence d’un marquage jaune et d’un marquage blanc, je respecte', NULL, NULL, 'le marquage jaune', 'le marquage blanc', NULL, NULL, '2021-09-16 21:05:35', '2021-09-16 21:05:35', 411, 1, 0, 0, 0),
(321, 'Suite à un accident, je dispose de 7 jours pour envoyer le constat à l’assurance', NULL, NULL, 'Oui', 'Non', NULL, NULL, '2021-09-16 21:06:57', '2021-09-16 21:06:57', 412, 0, 1, 0, 0),
(322, 'Ce marquage au sol m’indique', NULL, NULL, 'des flèches de rabattement', 'une voie de stockage', 'une voie d’insertion', NULL, '2021-09-16 21:08:17', '2021-09-16 21:08:17', 413, 0, 1, 0, 0),
(323, 'Pour le renouvellement de la validité d’un permis de conduire de la catégorie C, quelle est la périodicité des visites médicales obligatoires pour un conducteur âgé de moins de 60 ans', NULL, NULL, 'tous les 2 ans', 'tous les 5 ans', 'tous les 10 ans', NULL, '2021-09-16 21:11:21', '2021-09-16 21:11:21', 414, 0, 0, 1, 0),
(324, 'La réglementation dans un lieu -dit est la même que dans une agglomération', NULL, NULL, 'Oui', 'Non', NULL, NULL, '2021-09-16 21:13:10', '2021-09-16 21:13:10', 415, 0, 1, 0, 0),
(325, NULL, NULL, NULL, 'je passe', 'je céde le passage', NULL, NULL, '2021-09-16 21:13:39', '2021-09-16 21:13:39', 429, 1, 0, 0, 0),
(326, 'Cette balise m’indique', NULL, NULL, 'que le passage à niveau comporte uniquement deux voies', 'que le passage à niveau comporte au moins deux voies', NULL, NULL, '2021-09-16 21:14:42', '2021-09-16 21:14:42', 416, 0, 1, 0, 0),
(327, NULL, NULL, NULL, 'je passe, si je vais à droite', 'tout droit', 'à gauche', 'je m\'arrete', '2021-09-16 21:19:05', '2021-09-16 21:19:05', 430, 0, 0, 0, 1),
(328, NULL, NULL, NULL, 'je m\'engage', 'j\'attends', NULL, NULL, '2021-09-16 21:21:12', '2021-09-16 21:21:12', 431, 0, 1, 0, 0),
(329, 'Ce panneau m’oblige tourner', NULL, NULL, 'à droite avant le panneau', 'à droite à la prochaine intersection', NULL, NULL, '2021-09-16 21:22:42', '2021-09-16 21:22:42', 417, 1, 0, 0, 0),
(330, 'Ce symbole indique', NULL, NULL, 'un échangeur', 'un stade', 'une rocade', NULL, '2021-09-16 21:23:57', '2021-09-16 21:23:57', 418, 0, 1, 0, 0),
(331, NULL, 'Ce panneau m’oblige à aller tout droit ou à tourner à droite à la prochaine intersection', 'Interdit de tourner à gauche à la prochaine intersection', 'Oui', 'Non', 'Oui', 'Non', '2021-09-16 21:25:53', '2021-09-16 21:25:53', 419, 1, 0, 1, 0),
(332, 'Sur cette route,je pourrai rencontrer', NULL, NULL, 'des piétons', 'des voiturettes', 'des motos avec ou sans side-car', NULL, '2021-09-16 21:26:22', '2021-09-16 21:26:22', 432, 0, 0, 1, 0),
(333, 'Je suis bien stationné', NULL, NULL, 'Oui', 'Non', NULL, NULL, '2021-09-16 21:27:00', '2021-09-16 21:36:56', 433, 0, 1, 0, 0),
(334, NULL, 'Ce panneau m’oblige à rouler 50 km/h', 'M’interdit de rouler à plus de 50 km/h', 'Oui', 'Non', 'Oui', 'Non', '2021-09-16 21:28:35', '2021-09-16 21:28:35', 420, 0, 1, 0, 1),
(335, 'Le marquage jaune discontinue le long du trottoir', NULL, NULL, 'm’interdit l’arrêt et le stationnement', 'm’interdit seulement le stationnement', NULL, NULL, '2021-09-16 21:29:45', '2021-09-16 21:29:45', 421, 0, 1, 0, 0),
(336, 'Dans cette situation, pour aller à droite', NULL, NULL, 'je ralenti', 'je suis bien placé', 'je devrais déjà etre dans la voie de droite', NULL, '2021-09-16 21:31:00', '2021-09-16 21:38:23', 434, 0, 0, 1, 0),
(337, 'je conduis un véhicule poids lourd, est ce que je suis concerné par l’interdiction ?', NULL, NULL, 'Oui', 'Non', NULL, NULL, '2021-09-16 21:32:59', '2021-09-16 21:32:59', 422, 1, 0, 0, 0),
(338, 'Dans ce virage sans visiilité,je poursuis mon depassement', NULL, NULL, 'Oui', 'Non', NULL, NULL, '2021-09-16 21:34:00', '2021-09-16 21:40:00', 435, 1, 0, 0, 0),
(339, 'La signalisation m\'indique', NULL, NULL, 'des travaux', 'des postes d\'appels d\'urgence sur 300 m', 'je suis bien placé Oui', 'je suis bien placé Non', '2021-09-16 21:44:43', '2021-09-16 21:44:43', 436, 1, 0, 1, 0),
(340, 'Je tourne à droite', NULL, NULL, 'je passe', 'je céde le passage', NULL, NULL, '2021-09-16 21:47:48', '2021-09-16 21:47:48', 437, 1, 0, 0, 0),
(341, 'La vitesse est limitée', NULL, NULL, '130 Km/h', '110 Km/h', '100 Km/h', '90 Km/h', '2021-09-16 21:50:30', '2021-09-16 21:50:30', 438, 0, 1, 0, 0),
(342, 'Pour dépasser, je peux prendre le voie de gauche', NULL, NULL, 'Oui', 'Non', NULL, NULL, '2021-09-16 21:52:00', '2021-09-16 21:53:37', 439, 1, 0, 0, 0),
(343, 'Je peux allumer mes feux de brouillard', 'à l\'avant', 'à l\'arrière', 'Oui', 'Non', 'Oui', 'Non', '2021-09-16 21:56:46', '2021-09-16 21:56:46', 440, 1, 0, 0, 1),
(344, 'A 200 m,la circulation est interdite à tout vehicule,dans les deux sens', NULL, NULL, 'Oui', 'Non', NULL, NULL, '2021-09-16 21:59:33', '2021-09-16 21:59:33', 442, 0, 1, 0, 0),
(345, NULL, 'je peux encore depasser', 'je reste à droite', 'Oui', 'Non', 'Oui', 'Non', '2021-09-16 22:02:43', '2021-09-16 22:02:43', 441, 0, 1, 1, 0),
(346, 'Je m\'arrete juste derrière la voiture', NULL, NULL, 'Oui', 'Non', NULL, NULL, '2021-09-16 22:04:41', '2021-09-16 22:04:41', 443, 0, 1, 0, 0),
(347, 'La signalisation', 'interdit de dépasser', 'annonce une déviation', 'Oui', 'Non', 'Oui', 'Non', '2021-09-16 22:07:59', '2021-09-16 22:07:59', 444, 0, 1, 0, 1),
(348, 'Titulaire d\'un permis AL depuis un an et demi,je viens juste de passe mon permis B.Sur cette autoroute, je peux circuler à 130 km/h', NULL, NULL, 'Oui', 'Non', NULL, NULL, '2021-09-16 22:11:33', '2021-09-16 22:11:33', 445, 1, 0, 0, 0),
(349, 'Ce panneau annonce', NULL, NULL, 'une circulation dans les deux sens', 'une interdiction de faire demi-tour', 'une interdiction de tourner à gauche', NULL, '2021-09-16 22:12:27', '2021-09-16 22:12:27', 555, 0, 1, 0, 0),
(350, 'Ce panneau m’annonce un ralentisseur', NULL, NULL, 'à 50 mètres', 'au panneau', '30 mètres', NULL, '2021-09-16 22:15:25', '2021-09-16 22:15:25', 556, 0, 1, 0, 0),
(351, 'Le panneau annonce', 'chaussée retrécie des deux cotés', 'hauteur limitée', 'Oui', 'Non', 'Oui', 'Non', '2021-09-16 22:15:59', '2021-09-16 22:15:59', 446, 1, 1, 1, 1),
(352, 'Dans cette zone, je pourrai', 'stationner', 'm’arrêter', 'Oui', 'Non', 'Oui', 'Non', '2021-09-16 22:17:40', '2021-09-16 22:17:40', 557, 1, 0, 1, 0),
(353, 'Après cette signalisation, je peux', 'stationner', 'm\'arrêter', 'Oui', 'Non', 'Oui', 'Non', '2021-09-16 22:19:16', '2021-09-16 22:19:16', 558, 0, 1, 1, 0),
(354, NULL, NULL, NULL, 'je dois attendre pour tourner à droite', 'Le conducteur devant moi doit avancer pour me laisser passer', NULL, NULL, '2021-09-16 22:20:17', '2021-09-16 22:20:17', 447, 1, 0, 0, 0),
(355, 'Ce panneau indique', NULL, NULL, 'une limitation de vitesse à 30 km/h', 'une vitesse minimale obligatoire à 30km/h', 'une fin de limitation de vitesse à 30 km/h', NULL, '2021-09-16 22:20:37', '2021-09-16 22:20:37', 559, 0, 1, 0, 0),
(356, 'Cette balise annonce', NULL, NULL, 'un passage à niveau', 'un virage dangereux', 'un délinéateur', NULL, '2021-09-16 22:22:35', '2021-09-16 22:22:35', 560, 0, 0, 1, 0),
(357, 'Ce signal interdit', NULL, NULL, 'l’accès aux véhicules de plus de 3,5 m de haut', 'l’accès aux véhicules de plus de 3,5 tonnes', NULL, NULL, '2021-09-16 22:23:49', '2021-09-16 22:23:49', 561, 1, 0, 0, 0),
(358, 'Ce panneau m’indique', NULL, NULL, 'un arrêt de bus', 'une voie réservée aux bus', 'fin de voie réservée aux bus', NULL, '2021-09-16 22:24:00', '2021-09-16 22:27:56', 562, 0, 1, 0, 0),
(359, 'Je dépasse', NULL, NULL, 'Oui', 'Non', NULL, NULL, '2021-09-16 22:25:15', '2021-09-16 22:25:15', 425, 0, 1, 0, 0),
(360, 'Dans cette situation, je dois tenir compte', NULL, NULL, 'Du marquage jaune et de la signalisation verticale', 'Du marquage blanc et de la signalisation verticale', 'Uniquement des marquages au sol', 'Uniquement de la signalisation verticale', '2021-09-16 22:27:33', '2021-09-16 22:27:33', 563, 1, 0, 0, 0),
(361, 'De quel panneau de signalisation ce marquage au sol est-il accompagné ?', NULL, NULL, '.', '.', '.', '.', '2021-09-16 22:31:14', '2021-09-16 22:31:14', 564, 1, 0, 0, 0),
(362, 'Ce panneau peut indiquer', NULL, NULL, 'le début de la route prioritaire', 'le rappel de la route prioritaire', 'la fin de la route prioritaire', 'que la vitesse est limitée à 70 km/h', '2021-09-16 22:33:03', '2021-09-16 22:33:03', 448, 1, 1, 0, 0),
(363, 'Je conduis une voiture attelée d’ une remorque de 750 kg, à 200 m je pourrai continuer tout droit', NULL, NULL, 'Oui', 'Non', NULL, NULL, '2021-09-16 22:34:22', '2021-09-16 22:34:22', 565, 0, 1, 0, 0),
(364, 'Ce panneau annonce', NULL, NULL, 'une sortie d’école', 'un passage piéton', 'une entrée d’aire piétonne', NULL, '2021-09-16 22:35:00', '2021-09-16 22:37:55', 566, 0, 0, 1, 0),
(365, 'Ce signal annonce', NULL, NULL, 'une zone de rencontre', 'une voie verte', 'une aire de jeux', 'un circuit de randonnée', '2021-09-16 22:37:00', '2021-09-16 22:38:27', 567, 0, 1, 0, 0),
(366, 'Ce panneau annonce', NULL, NULL, 'un hôpital', 'un poste de secours', NULL, NULL, '2021-09-16 22:40:07', '2021-09-16 22:40:07', 568, 0, 1, 0, 0),
(367, 'Après ce panneau à la prochaine intersection', NULL, NULL, 'je pourrai tourner à droite', 'continuer tout droit', 'tourner à gauche', NULL, '2021-09-16 22:41:00', '2021-09-17 22:16:58', 569, 1, 1, 0, 0),
(368, 'Comme le vehicule devant moi, je roule à 50 km/h. Ma distance de securité est suffisante', NULL, NULL, 'Oui', 'Non', NULL, NULL, '2021-09-16 22:42:15', '2021-09-16 22:42:15', 449, 0, 1, 0, 0),
(369, 'Le marquage jaune discontinue le long du trottoir', NULL, NULL, 'Présignalisation d\'une borne de retrait de ticket de péage', 'm’interdit seulement le stationnement', NULL, NULL, '2021-09-16 22:43:00', '2021-09-17 22:15:41', 570, 0, 1, 0, 0),
(370, 'Le marquage jaune discontinue le long du trottoir', NULL, NULL, 'm’interdit l’arrêt et le stationnement', 'm’interdit seulement le stationnement', NULL, NULL, '2021-09-16 22:43:00', '2021-09-17 22:14:08', 571, 0, 1, 0, 0),
(371, 'Je cèderai le pssage', 'à gauche seulement', 'à gauche et à droite', 'Oui', 'Non', 'Oui', 'Non', '2021-09-16 22:44:37', '2021-09-16 22:44:37', 450, 0, 1, 1, 0),
(372, 'Après ce panneau  je pourrais dépasser', NULL, NULL, 'un cyclomoteur', 'un tricycle', 'véhicule automobile', NULL, '2021-09-16 22:45:00', '2021-09-17 22:12:51', 572, 1, 0, 0, 0),
(373, 'Je peux m\'arreter à droite', NULL, NULL, 'Oui', 'Non', NULL, NULL, '2021-09-16 22:46:10', '2021-09-16 22:46:10', 451, 0, 1, 0, 0),
(374, NULL, 'Après ce panneau  je cederais le passage', 'je rencontrerais un panneaux de stop', 'à gauche', 'à droite', 'Oui', 'Non', '2021-09-16 22:46:00', '2021-09-17 22:11:57', 573, 0, 1, 0, 1),
(375, 'Je stationne du coté des numéros pairs des immeules', NULL, NULL, 'le 2 du mois', 'le 7 du mois', 'le 14 du mois', 'le 21 du mois', '2021-09-16 22:49:20', '2021-09-16 22:49:20', 452, 0, 0, 0, 1),
(376, NULL, 'Au vu de ce panneau, je pourrai tourner à droite', 'Ce panneaux interdit de tourner à droite', 'Oui', 'Non', 'Oui', 'Non', '2021-09-16 23:35:00', '2021-09-17 22:10:45', 574, 1, 0, 0, 1),
(377, NULL, 'Ce panneau m’oblige à tourner à droite', 'M\'interdit d\'aller tout droit ou de tourner à gauche', 'Oui', 'Non', 'Oui', 'Non', '2021-09-16 23:37:00', '2021-09-17 22:09:50', 575, 1, 0, 1, 0),
(378, 'Après ce panneau  je pourrais rencontrer', NULL, NULL, 'un cyclomoteur', 'une motocyclette', 'je pourrai faire demi tour', NULL, '2021-09-16 23:39:00', '2021-09-17 22:09:10', 576, 0, 1, 0, 0),
(379, NULL, 'Ce panneau annonce un risque de présence de pierre sur la chaussée', 'Un risque de chutte de pierre', 'Oui', 'Non', 'Oui', 'Non', '2021-09-16 23:43:00', '2021-09-17 22:07:49', 577, 1, 0, 1, 0),
(380, NULL, 'Ce panneau interdit l\'accès aux autobus', 'Indique un arrêt de bus', 'Oui', 'Non', 'Oui', 'Non', '2021-09-16 23:44:00', '2021-09-17 22:07:10', 578, 0, 1, 0, 1),
(381, 'Après ce panneau  je pourrais rouler', NULL, NULL, 'à 50 km/h', 'à 45 km/h', NULL, NULL, '2021-09-16 23:46:00', '2021-09-17 22:05:23', 579, 1, 1, 0, 0),
(382, 'Ce panneau interdit l\'accès aux pietons', NULL, NULL, 'Oui', 'Non', NULL, NULL, '2021-09-16 23:47:00', '2021-09-17 21:53:30', 580, 0, 1, 0, 0),
(383, 'Ce panneau indique', NULL, NULL, 'une route à grande circulation', 'une route prioritaire', NULL, NULL, '2021-09-16 23:49:00', '2021-09-17 21:52:22', 581, 0, 1, 0, 0),
(384, NULL, 'le ralentisseur se trouve à 50 m', 'au panneau', 'Oui', 'Non', 'Oui', 'Non', '2021-09-16 23:50:00', '2021-09-17 21:51:44', 582, 0, 1, 1, 0),
(385, 'Ce panneau', 'm\'oblige à aller tout droit ou à tourner à droite à la prochaine intersection', 'Interdit de tourner à gauche à la prochaine intersection', 'Oui', 'Non', 'Oui', 'Non', '2021-09-16 23:53:00', '2021-09-17 21:50:33', 583, 1, 0, 1, 0),
(386, 'Le 04 du mois, je pourrais', 'stationner', 'm\'arrêter', 'Oui', 'Non', 'Oui', 'Non', '2021-09-16 23:54:00', '2021-09-17 21:48:50', 584, 0, 1, 1, 0),
(387, NULL, 'Ce panneau m’oblige à céder le passage à gauche et à droite', 'Je m\'arreterais obligatoirement à l\'intersection', 'Oui', 'Non', 'Oui', 'Non', '2021-09-16 23:57:00', '2021-09-17 21:47:43', 585, 0, 1, 1, 0),
(388, 'Ce panneau', 'interdit la circulation dans un sens seulement', 'Interdit la circulation seulement aux véhicules automobile', 'Oui', 'Non', 'Oui', 'Non', '2021-09-17 00:00:00', '2021-09-17 21:46:39', 586, 0, 1, 0, 1),
(389, 'Après ce panneau  je pourrais rencontrer', NULL, NULL, 'un feu clignotant', 'un feu rouge fixe', NULL, NULL, '2021-09-17 00:01:00', '2021-09-17 21:45:39', 587, 0, 1, 0, 0),
(390, NULL, 'Ce panneau indique une chaussée à double sens', 'j\'ai la priorité par rapport à ceux du sens inverse', 'Oui', 'Non', 'Oui', 'Non', '2021-09-17 00:03:00', '2021-09-17 21:44:37', 588, 0, 1, 1, 0),
(391, 'L\'immobilisation de mon véhicule peut être ordonnée', 'pour dépassement du temps de conduite', 'pour circulation en période d\'interdiction', 'Oui', 'Non', 'Oui', 'Non', '2021-09-17 00:08:02', '2021-09-17 00:08:02', 503, 0, 0, 0, 0),
(392, 'En suivant ce véhicule à 80 km/h, je dois laisser un intervalle d\'au moins', NULL, NULL, '25 mètres', '50 mètres', '75 mètres', NULL, '2021-09-17 00:09:32', '2021-09-17 00:09:32', 504, 0, 0, 0, 0),
(393, 'Avec un permis C limité, je peux conduire', NULL, NULL, 'un tricycle ou quadricycle à moteur', 'une motocyclette de 250 cm3', 'un véhicule de tourisme', 'un véhicule de transport en commun', '2021-09-17 00:12:43', '2021-09-17 00:12:43', 505, 0, 0, 0, 0),
(394, 'je peux prendre la route à droite si je conduis un véhicule dont le PTAC est', NULL, NULL, 'inférieur à 15 tonnes', 'égale à 15 tonnes', 'supérieur à 15 tonnes', NULL, '2021-09-17 00:15:06', '2021-09-17 00:15:06', 506, 0, 0, 0, 0),
(395, 'La largeur maximale d\'un véhicule est limité à', NULL, NULL, '2,10 m', '2,30 m', '2,50 m', '2,70 m', '2021-09-17 00:16:26', '2021-09-17 00:16:26', 507, 0, 0, 0, 0),
(396, 'Le PTAC maximum des véhicules à 3 éssieux est limité à', NULL, NULL, '12 tonnes', '19 tonnes', '26 tonnes', '38 tonnes', '2021-09-17 00:18:04', '2021-09-17 00:18:04', 508, 0, 0, 0, 0),
(397, 'Sur les véhicules récents, la protection contre l\'encastrement doit', 'être située à 45 cm maximum de l\'extrémité arrière', 'descendre au moins 55 cm au dessus du sol', 'Oui', 'Non', 'Oui', 'Non', '2021-09-17 00:21:20', '2021-09-17 00:21:20', 509, 0, 0, 0, 0),
(398, NULL, 'Le flexible rouge est', 'Il alimente en air comprimé le réservoir de la semi-remorque', 'la conduite automatique', 'la conduite de service', 'Oui', 'Non', '2021-09-17 00:23:51', '2021-09-17 00:23:51', 510, 0, 0, 0, 0),
(399, NULL, 'Le flexible jaune est', 'Il alimente en air comprimé le réservoir de la semi-remorque', 'la conduite automatique', 'la conduite de service', 'Oui', 'Non', '2021-09-17 00:25:12', '2021-09-17 00:25:12', 511, 0, 0, 0, 0),
(400, 'Les feux d\'encombrement sont obligatoires lorsque la largeur du véhicule est de', NULL, NULL, '2 m', '2,10 m', '2,20 m', '2,50 m', '2021-09-17 00:27:07', '2021-09-17 00:27:07', 512, 0, 0, 0, 0),
(401, 'Lorque les rétroviseurs sont à 2 mètres de hauteur, ils peuvent dépasser de plus de 0,20 m de chaque côté', 'en dehors de la cabine', 'en dehors de la semi-remorque', 'Oui', 'Non', 'Oui', 'Non', '2021-09-17 00:29:42', '2021-09-17 00:29:42', 513, 0, 0, 0, 0),
(402, NULL, 'Le frein de service (ou frein principal) est actionné', 'Il agit', 'par le pied du conducteur', 'par la main du conduceur', 'sur les roues motrices seulement', 'sur l\'ensemble des roues', '2021-09-17 00:31:57', '2021-09-17 00:31:57', 514, 0, 0, 0, 0),
(403, 'Lorqu\'un chargement dépasse de plus d\'un mètre à l\'arrière, son extrémité doit, lorsque la visibilité est réduite, être signalée par', NULL, NULL, 'un fanion ou un chiffon rouge', 'un dispositif réflechissant rouge', 'un feu rouge', 'un feu jaune', '2021-09-17 00:35:05', '2021-09-17 00:35:05', 515, 0, 0, 0, 0),
(404, 'Sur un véhicule articulé, le dispositif de freinage continu assure', NULL, NULL, 'le freinage du tracteur seul', 'le freinage de la semi-remorque seule', 'le freinage pratiquement simultané du tracteur et de la semi-remorque', NULL, '2021-09-17 00:39:08', '2021-09-17 00:39:08', 516, 0, 0, 0, 0),
(405, 'Le triangle de présignalisation doit être placé de façon à être visible à', NULL, NULL, 'c', '50 mètres au moins', '100 mètres au moins', '150 mètres au moins', '2021-09-17 00:41:54', '2021-09-17 00:41:54', 517, 0, 0, 0, 0),
(406, 'La longueur et la largeur d\'un véhicule de transport de marchandises sont indiquées', 'sur la plaque de tare et de surface', 'sur la plaque du constructeur', 'Oui', 'Non', 'Oui', 'Non', '2021-09-17 00:44:52', '2021-09-17 00:44:52', 518, 0, 0, 0, 0),
(407, 'Le poids réel d\'un véhicule est indiqué', NULL, NULL, 'sur la carte grise', 'par une bascule', 'sur la fiche de chargement', NULL, '2021-09-17 00:46:41', '2021-09-17 00:46:41', 519, 0, 0, 0, 0),
(408, 'Lorsqu\'un camion-citerne transporte une matières dangereuse, des plaques étiquettes de danger doivent être placées', NULL, NULL, 'à l\'avant du véhicule', 'à l\'arrière du véhicule', 'sur chaque côté', NULL, '2021-09-17 00:49:27', '2021-09-17 00:49:27', 520, 0, 0, 0, 0),
(409, 'Mon permis porte la mention restrictive <<verres de contact>>. Lorsque je conduis, je dois avoir à bord du véhicule une paire de lunettes correctrces', NULL, NULL, 'Oui', 'Non', NULL, NULL, '2021-09-17 00:52:04', '2021-09-17 00:52:04', 521, 0, 0, 0, 0),
(410, 'Ce véhicule articulé a un PTRA de 38 tonnes. Il doit porter à l\'arrière des disques indiquant', NULL, NULL, '60', '70', '80', '90', '2021-09-17 00:53:56', '2021-09-17 00:53:56', 522, 0, 0, 0, 0),
(411, 'Dans ce véhicule de 26 tonnes de PTAC, on peut transporter 26 tonnes de marchandises', NULL, NULL, 'Oui', 'Non', NULL, NULL, '2021-09-17 00:55:38', '2021-09-17 00:55:38', 523, 0, 0, 0, 0),
(412, 'Je reste dans la voie ou je circule si je roule à', '50 km/heure', '70 km/heure', 'Oui', 'Non', 'Oui', 'Non', '2021-09-17 00:57:41', '2021-09-17 00:57:41', 524, 0, 0, 0, 0),
(413, 'Je conduis un véhicule isolé de 7 tonnes de poids à vide et de 19 tonnes de PTAC. Je peux prendre la route à gauche', 'Si je circle à vide', 'Si je circule à pleine charge', 'Oui', 'Non', 'Oui', 'Non', '2021-09-17 01:04:49', '2021-09-17 01:04:49', 525, 0, 0, 0, 0),
(414, 'Ce véhicule a un PTAC de 12 t et un PTRA de 21 t. Je peux conduire avec un permis C limité', 'Si je circle en solo', 'SI je tracte une remorque de 2 t de PTAC', 'Oui', 'Non', 'Oui', 'Non', '2021-09-17 01:09:04', '2021-09-17 01:09:04', 526, 0, 0, 0, 0),
(415, 'Je peux aller dans la rue en face si je conduis', 'un ensemble de véhicules', 'un tracteur routier solo', 'Oui', 'Non', 'Oui', 'Non', '2021-09-17 01:10:34', '2021-09-17 01:10:34', 527, 0, 0, 0, 0),
(416, 'La voiture bleu circule rapidement. Je peux dépasser le camion', NULL, NULL, 'Oui', 'Non', NULL, NULL, '2021-09-17 01:12:11', '2021-09-17 01:12:11', 528, 0, 0, 0, 0),
(417, 'Le poids à vide est le poids du véhicule vide, en ordre de marche avec', 'le conducteur à bord', 'les différents réservoirs pleins', 'Oui', 'Non', NULL, NULL, '2021-09-17 01:14:17', '2021-09-17 01:14:17', 529, 0, 0, 0, 0),
(418, 'Un véhicule peut être immobilisé s\'il émet des fumées nettement teintées', 'de façon permanente', 'de façon fugitive', 'Oui', 'Non', 'Oui', 'Non', '2021-09-17 01:16:13', '2021-09-17 01:16:13', 530, 0, 0, 0, 0),
(419, 'En chargeant ce véhicule articulé, il faut veiller à ne pas dépasser', NULL, NULL, 'le poids de l\'ensemble', 'le PTAC de la semi-remorque', 'le PTRA du tracteur', NULL, '2021-09-17 01:19:11', '2021-09-17 01:19:11', 531, 0, 0, 0, 0),
(420, 'Pour le renouvellement d\'un permis C l\'acuité visuelle minimale pour les 2 yeux doit être', NULL, NULL, 'd\'au moins 13/10e', 'd\'au moins 14/10e', 'd\'au moins 15/10e', 'd\'au moins 16/10e', '2021-09-17 01:21:26', '2021-09-17 01:21:26', 532, 0, 0, 0, 0),
(421, 'Le PTRA maximum d\'un véhicule articulé est limité à', NULL, NULL, '19 tonnes', '26 tonnes', '38 tonnes', '42 tonnes', '2021-09-17 20:33:47', '2021-09-17 20:33:47', 533, 0, 0, 0, 0),
(422, 'La hauteur libre sous ce pont est d\'au moins', NULL, NULL, '4,30 mètres', '5 mètres', '6 mètres', NULL, '2021-09-17 20:36:11', '2021-09-17 20:36:11', 534, 0, 0, 0, 0),
(423, 'La longueur maximale d\'un camion ou d\'une remorque peut atteindre', NULL, NULL, '11 m', '12 m', '13,50 m', '16,50 m', '2021-09-17 20:40:29', '2021-09-17 20:40:29', 535, 0, 0, 0, 0),
(424, 'Ce vehecule tourne à gauche.Je lui cède le passage', NULL, NULL, 'Oui', 'Non', NULL, NULL, '2021-09-17 20:42:57', '2021-09-17 20:42:57', 453, 1, 0, 0, 0),
(425, 'La longueur maximale d\'un camion ou d\'une remorque peut atteindre', NULL, NULL, '10 m', '11 m', '12 m', '15,50 m', '2021-09-17 20:43:33', '2021-09-17 20:43:33', 536, 0, 0, 0, 0),
(426, 'Ce véhicule tourne à gauche.Je lui cède le passage', NULL, NULL, 'Oui', 'Non', NULL, NULL, '2021-09-17 20:43:47', '2021-09-17 20:43:47', 453, 1, 0, 0, 0),
(427, 'Dans cette voie; je pourrai', NULL, NULL, 'tourner à droite', 'aller tout droit', 'tourner à gauche', NULL, '2021-09-17 20:46:33', '2021-09-17 20:46:33', 454, 0, 1, 0, 0),
(428, 'Ce véhicule articulé est équipé d\'un signal de détresse. Il doit en plus être muni de', NULL, NULL, '2 triangles de présignalisation', '1 seul triangle', 'aucun triangle', NULL, '2021-09-17 20:46:47', '2021-09-17 20:46:47', 537, 0, 0, 0, 0),
(429, 'Le conducteur de ce véhicule est autorisé à emprunter momentanément la partie gauche de la chaussée', NULL, NULL, 'Oui', 'Non', NULL, NULL, '2021-09-17 20:49:18', '2021-09-17 20:49:18', 538, 0, 0, 0, 0),
(430, NULL, NULL, NULL, 'je passe', 'je m\'arrete', NULL, NULL, '2021-09-17 20:49:33', '2021-09-17 20:49:33', 455, 1, 0, 0, 0),
(431, NULL, NULL, NULL, 'je passe', 'je m\'arrete', NULL, NULL, '2021-09-17 20:53:55', '2021-09-17 20:53:55', 455, 1, 0, 0, 0),
(432, 'Je conduis un véhicule articulé de 19 tonnes de PTRA. Je peux continuer tout droit', NULL, NULL, 'Oui', 'Non', NULL, NULL, '2021-09-17 20:56:00', '2021-09-17 20:58:24', 539, 0, 0, 0, 0),
(433, NULL, 'je peux encore changer de direction', 'je dois continuer dans ma voie', 'Oui', 'Non', 'Oui', 'Non', '2021-09-17 20:58:03', '2021-09-17 20:58:03', 456, 0, 1, 1, 0),
(434, 'Je passe', NULL, NULL, 'Oui', 'Non', NULL, NULL, '2021-09-17 21:00:10', '2021-09-17 21:00:10', 457, 1, 0, 0, 0),
(435, 'A l\'approche de cette descente, j\'utilise mon ralentisseur sur échappement. Il agit', NULL, NULL, 'sur toutes les roues du véhicule', 'uniquement sur les roues motrices', NULL, NULL, '2021-09-17 21:01:01', '2021-09-17 21:01:01', 540, 0, 0, 0, 0),
(436, 'Je m\'apprete à cèder le passage', 'à gauche', 'à droite', 'Oui', 'Non', 'Oui', 'Non', '2021-09-17 21:02:58', '2021-09-17 21:02:58', 458, 0, 1, 0, 1),
(437, 'Jusqu\'à 60 ans, un conducteur titulaire d\'un permis C dois passer une visite médicale', NULL, NULL, 'tous les ans', 'tous les 2 ans', 'tous les 3 ans', 'tous les 5 ans', '2021-09-17 21:03:40', '2021-09-17 21:03:40', 541, 0, 0, 0, 0),
(438, 'La largeur maximale d\'un véhicule carrosé un fourgon  est limité à', NULL, NULL, '2,10 m', '2,50 m', '2,55 m', '2,60 m', '2021-09-17 21:05:45', '2021-09-17 21:05:45', 542, 0, 0, 0, 0),
(439, 'Lors d\'un controle routier éffectué par les forces de l\'ordre; je peux présenter la photocopie des documents de mon véhicule', NULL, NULL, 'Oui', 'Non', NULL, NULL, '2021-09-17 21:06:00', '2021-09-17 21:10:51', 460, 0, 1, 0, 0),
(440, 'Le train-double est', NULL, NULL, 'l\'ensemble A', 'l\'ensemble B', 'l\'ensemble C', NULL, '2021-09-17 21:07:15', '2021-09-17 21:07:15', 543, 0, 0, 0, 0),
(441, 'Ce panneau interdit l\'accès à tous les camions-citernes', NULL, NULL, 'Oui', 'Non', NULL, NULL, '2021-09-17 21:10:35', '2021-09-17 21:10:35', 544, 0, 0, 0, 0),
(442, 'Un véhicule articulé possède', NULL, NULL, '1 carte grise', '2 cartes grise', NULL, NULL, '2021-09-17 21:12:08', '2021-09-17 21:12:08', 545, 0, 0, 0, 0),
(443, 'Le PTRA d\'un véhicule articulé à 5 essieux, n\'effectuant pas de transport combiné, est lilmité à', NULL, NULL, '26 tonnes', '38 tonnes', '40 tonnes', '44 tonnes', '2021-09-17 21:15:20', '2021-09-17 21:15:20', 546, 0, 0, 0, 0),
(444, 'Lorsque le conducteur d\'un transport de matières dangereuse quitte son véhicule en stationnement, il doit inscrire sur une pancarte, lisible de l\'exterieur, son nom, l\'adresse et le numéro de téléphone ou l\'on peut le joindre', NULL, NULL, 'Oui', 'Non', NULL, NULL, '2021-09-17 21:18:46', '2021-09-17 21:18:46', 547, 0, 0, 0, 0),
(445, 'Ma voiture particulière a été mise en circulation le 7 janvier 1990.Je devrai la presenter au controle technique', NULL, NULL, 'à partir du 7 janvier 1995', 'avant le 7 janvier 1995', 'au cours de l\'année1995,quelle que soit la date de mise en circulation', NULL, '2021-09-17 21:19:56', '2021-09-17 21:19:56', 459, 0, 1, 0, 0),
(446, 'La longueur maximale d\'un véhicule articulé est limitée à', NULL, NULL, '11 m', '12 m', '16,50 m', '18 m', '2021-09-17 21:20:44', '2021-09-17 21:20:44', 548, 0, 0, 0, 0),
(447, 'Les convois exceptionnels de grandes dimensions sont toujours accompagnées par une escorte de motocyclistes de la police ou de la gendarmerie', NULL, NULL, 'Oui', 'Non', NULL, NULL, '2021-09-17 21:23:32', '2021-09-17 21:23:32', 549, 0, 0, 0, 0),
(448, 'Ou trouve -t-on les indictions concernant l\'entretien du véhicule ?', 'sur la carte grise', 'sur la notice du constructeur', 'Oui', 'Non', 'Oui', 'Non', '2021-09-17 21:23:00', '2021-09-17 21:27:09', 461, 0, 1, 1, 0),
(449, 'Je conduis un véhicule isolé. Le croisement est impossible', NULL, NULL, 'Je dois faire une marche arrière', 'C\'est l\'autre véhicule qui doit reculer', NULL, NULL, '2021-09-17 21:26:31', '2021-09-17 21:26:31', 550, 0, 0, 0, 0),
(450, 'Ce véhicule a un PTAC de 12 t et un PTRA de 21 t. Je peux le conduire avec un permis C', 'Si je circle en solo', 'SI je tracte une remorque de 2 t de PTAC', 'Oui', 'Non', 'Oui', 'Non', '2021-09-17 21:31:17', '2021-09-17 21:31:17', 551, 0, 0, 0, 0),
(451, 'La couleur émise par les feux de croisement, de route et de brouillard avant', 'doit etre jaune exclusivement', 'peut etre jaune ou blanche', 'Oui', 'Non', 'Oui', 'Non', '2021-09-17 21:33:23', '2021-09-17 21:33:23', 462, 0, 1, 1, 0),
(452, 'Avec un permis C limité, je peux conduire', NULL, NULL, 'un tricycle ou quadricycle à moteur', 'une motocyclette de 250 cm3', 'un véhicule de tourisme', 'un véhicule de transport en commun', '2021-09-17 21:33:37', '2021-09-17 21:33:37', 552, 0, 0, 0, 0),
(453, 'L\'expert chargé de la visite technique fait mention de cette visite sur', NULL, NULL, 'le permis de conduire', 'la carte grise', 'l\'attestation d\'assurance', 'le carnet d\'entretien', '2021-09-17 21:36:25', '2021-09-17 21:36:25', 553, 0, 0, 0, 0),
(454, 'Un infractus du myocarde est incompatible avec l\'obtention ou le maintien du permis C', 'pendant la période de la maladie', 'après guérison', 'Oui', 'Non', 'Oui', 'Non', '2021-09-17 21:39:16', '2021-09-17 21:39:16', 554, 0, 0, 0, 0),
(455, 'Ce panneau annonce le passage éventuel', NULL, NULL, 'd\'animaux domestiques', 'd\'animaux sauvages', NULL, NULL, '2021-09-20 11:14:26', '2021-09-20 11:14:26', 463, 1, 0, 0, 0),
(456, 'La signalisation m\'annonce', NULL, NULL, 'une intersection', 'la perte de priorité de la route', 'un carrefour à sens giratoire', 'priorité à droite', '2021-09-20 11:17:16', '2021-09-20 11:17:16', 464, 1, 1, 1, 0),
(457, 'Pour quitter mon stationnement, je recule immédiatement', NULL, NULL, 'Oui', 'Non', NULL, NULL, '2021-09-20 11:19:07', '2021-09-20 11:19:07', 465, 0, 1, 0, 0),
(458, NULL, 'je m\'arrete et j\'attends', 'je m\'engage en klaxonnant', 'Oui', 'Non', 'Oui', 'Non', '2021-09-20 11:21:06', '2021-09-20 11:21:06', 466, 0, 1, 1, 0),
(459, NULL, NULL, NULL, 'je passe', 'je m\'arrete', NULL, NULL, '2021-09-20 11:22:24', '2021-09-20 11:22:24', 467, 0, 1, 0, 0),
(460, 'La signalisation m\'annonce', NULL, NULL, 'un ilot directionnel', 'vitesse limitée à 60 km/h', 'un passage à niveau à 50 mètre', NULL, '2021-09-20 11:33:46', '2021-09-20 11:33:46', 468, 1, 0, 0, 0),
(461, 'Je vais tout droit', 'je m\'engage dans la voie du milieu', NULL, 'Oui', 'Non', NULL, NULL, '2021-09-20 11:35:56', '2021-09-20 11:35:56', 469, 1, 0, 0, 0),
(462, NULL, NULL, NULL, 'je dépasse seulement la prémière voiture', 'je dois revenir à droite', 'je peux dépasser plusieurs voitures', NULL, '2021-09-20 11:41:17', '2021-09-20 11:41:17', 470, 0, 0, 1, 0),
(463, 'Dans cette agglomération sauf sur cette route,la vitesse est limitée à 50km/h', NULL, NULL, 'Oui', 'Non', NULL, NULL, '2021-09-20 11:49:00', '2021-09-20 11:57:01', 471, 1, 0, 0, 0),
(464, 'Je peux stationner', 'à droite', 'à gauche', 'Oui', 'Non', 'Oui', 'Non', '2021-09-20 11:59:14', '2021-09-20 11:59:14', 472, 1, 0, 0, 1),
(465, 'Je peux dépasser', NULL, NULL, 'Oui', 'Non', NULL, NULL, '2021-09-20 12:00:46', '2021-09-20 12:00:46', 473, 0, 1, 0, 0),
(466, 'Je tourne à droite', NULL, NULL, 'je cède le passage à gauche et à droite', 'je passe sans m\'arreter', 'je m\'arrete et je passe', NULL, '2021-09-20 12:03:19', '2021-09-20 12:03:19', 474, 1, 0, 1, 0),
(467, 'Dans cette situation,pour dépasser, je suis oligé d\'emprunter la voie la plus à gauche', NULL, NULL, 'Oui', 'Non', NULL, NULL, '2021-09-20 12:07:16', '2021-09-20 12:07:16', 475, 1, 0, 0, 0),
(468, 'A l\'intersection, je tourne à gauche', NULL, NULL, 'je cèderai le passage en face', 'je ne cèderai pas le passage', 'je suis prioritaire', NULL, '2021-09-20 12:15:15', '2021-09-20 12:15:15', 476, 1, 1, 1, 1),
(469, 'La signalisation m\'indique', 'une sortie d\'autoroute', 'une bifurcation d\'autoroute', 'Oui', 'Non', 'Oui', 'Non', '2021-09-20 12:20:10', '2021-09-20 12:20:10', 477, 0, 1, 1, 0),
(470, NULL, NULL, NULL, 'je passe', 'je céde le passage', NULL, NULL, '2021-09-20 12:26:59', '2021-09-20 12:26:59', 478, 1, 0, 0, 0),
(471, 'Dans cette situation', NULL, NULL, 'je peux utiliser l\'avertisseur sonor', 'je poursuis mon dépassement', 'je dois céder le passage', NULL, '2021-09-20 12:33:00', '2021-09-20 12:34:45', 479, 1, 1, 0, 0),
(472, 'Dans cette sitution,la vitesse est limitée à 50km/h', NULL, NULL, 'Oui', 'Non', NULL, NULL, '2021-09-20 12:37:00', '2021-09-20 12:39:27', 480, 0, 1, 0, 0),
(473, 'Je dépasse', NULL, NULL, 'Oui', 'Non', NULL, NULL, '2021-09-20 12:41:10', '2021-09-20 12:41:10', 481, 0, 1, 0, 0),
(474, 'Je tourne à gauche', NULL, NULL, 'j\'avance dans l\'intersection', 'je m\'arrete avant le passage pour piétons', NULL, NULL, '2021-09-20 12:43:48', '2021-09-20 12:43:48', 482, 0, 1, 0, 0),
(475, NULL, NULL, NULL, 'je dépasse', 'je reste derrière le tracteur', NULL, NULL, '2021-09-20 12:46:57', '2021-09-20 12:46:57', 483, 1, 0, 0, 0),
(476, NULL, 'la chaussée est à sens unique', 'je suis bien placé pour aller à gauche', 'Oui', 'Non', 'Oui', 'Non', '2021-09-20 12:51:02', '2021-09-20 12:51:02', 484, 1, 0, 1, 0),
(477, 'Je peux changer de file pour sortir', NULL, NULL, 'Oui', 'Non', NULL, NULL, '2021-09-20 12:54:29', '2021-09-20 12:54:29', 485, 1, 0, 0, 0),
(478, 'La route est', NULL, NULL, 'nationale', 'à caractère prioritaire', 'la vitesse va etre limitée à 90km/h.Oui', 'la vitesse va etre limitée à 90km/h.Non', '2021-09-20 12:59:47', '2021-09-20 12:59:47', 486, 1, 1, 1, 0),
(479, 'Si aucun véhicule n\'arrive de droite ,je peux dépasser', NULL, NULL, 'Oui', 'Non', NULL, NULL, '2021-09-20 13:03:35', '2021-09-20 13:03:35', 487, 1, 0, 0, 0),
(480, NULL, 'je circule sur autoroute', 'ma vitesse est limitée à 90km/h', 'Oui', 'Non', 'Oui', 'Non', '2021-09-20 13:06:41', '2021-09-20 13:06:41', 488, 1, 0, 1, 0),
(481, 'La circulation est très ralentie,je laisse tourner la voiture', NULL, NULL, 'Oui', 'Non', NULL, NULL, '2021-09-20 13:08:58', '2021-09-20 13:08:58', 489, 1, 0, 0, 0),
(482, 'Il y\'a un risque de controle par radar', 'avant les panneaux', 'après les panneaux', 'Oui', 'Non', 'Oui', 'Non', '2021-09-20 13:11:50', '2021-09-20 13:11:50', 490, 1, 0, 1, 0),
(483, 'Un de mes pneus vient de creuver,je m\'arrete à gauche', NULL, NULL, 'Oui', 'Non', NULL, NULL, '2021-09-20 13:13:33', '2021-09-20 13:13:33', NULL, 0, 1, 0, 0),
(484, 'Les chevrons bleus et blancs indiquent', NULL, NULL, 'un rétrécisement de chaussée', 'que la chaussée devient à sens unique', 'un virage dangereux à 150 m.Oui', 'un virage dangereux à 150 m.Non', '2021-09-20 13:18:48', '2021-09-20 13:18:48', 492, 0, 0, 0, 1),
(485, 'Je peux revenir à droite', NULL, NULL, 'Oui', 'Non', NULL, NULL, '2021-09-20 13:20:31', '2021-09-20 13:20:31', 494, 1, 0, 0, 0),
(486, NULL, NULL, NULL, 'je ralenti et je passe', 'je passe sans ralentir', 'je m\'arrete', NULL, '2021-09-20 13:22:46', '2021-09-20 13:22:46', 493, 1, 0, 0, 0),
(487, 'Je tourne devant le véhicule qui arrive de face', NULL, NULL, 'Oui', 'Non', NULL, NULL, '2021-09-20 13:24:48', '2021-09-20 13:24:48', 495, 1, 0, 0, 0),
(488, 'Je suis bien placé', 'pour m\'arreter', 'pour stationner', 'Oui', 'Non', 'Oui', 'Non', '2021-09-20 13:27:17', '2021-09-20 13:27:17', 496, 0, 1, 0, 1),
(489, 'Je vais tout droit,je cède le passage à droite', NULL, NULL, 'Oui', 'Non', NULL, NULL, '2021-09-20 13:28:54', '2021-09-20 13:28:54', 497, 1, 0, 0, 0),
(490, 'Dans cette rue, je pourrai stationner', 'à droite seulement', 'à droite et à gauche', 'Oui', 'Non', 'Oui', 'Non', '2021-09-20 13:32:44', '2021-09-20 13:32:44', NULL, 0, 1, 1, 0),
(491, 'Si je perds tous mes points,mon permis de conduire est annulé.Je pourrai quand meme conduire ma moto de 80 cm3', NULL, NULL, 'Oui', 'Non', NULL, NULL, '2021-09-20 13:38:02', '2021-09-20 13:38:02', 499, 0, 1, 0, 0),
(492, 'Le temps de réaction peut etre influencé par', 'l\'asorption d\'alcool', 'l\'absorption de médicaents d\'usage courant', 'Oui', 'Non', 'Oui', 'Non', '2021-09-20 13:42:02', '2021-09-20 13:42:02', 500, 1, 0, 1, 0),
(493, 'Je suis en infraction,si sur un de mes pneus,il existe plus d\'un point ou la profondeur de rainures principales est', NULL, NULL, 'de 2 millimètre', 'de 1,6 millimètre', 'de moins de 1,6 millimètre', 'de moins de 1 millimètre', '2021-09-20 13:46:22', '2021-09-20 13:46:22', 501, 0, 0, 1, 1),
(494, 'L\'assurance indemnisera la victime d\'un accident si le conducteur responsable', 'titulaire seulement du permis catégorie B,conduit une motocyclette', 'conduis sans lunette alors que son permis mentionne \"port de verres correcteurs\"', 'Oui', 'Non', 'Oui', 'Non', '2021-09-20 13:51:47', '2021-09-20 13:51:47', 502, 1, 0, 1, 0),
(495, 'Je depasse', NULL, NULL, 'Oui', 'Non', NULL, NULL, '2021-09-20 13:53:22', '2021-09-20 13:53:22', 99, 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `reponses_utilisateurs`
--

CREATE TABLE `reponses_utilisateurs` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `diapositive` int(11) DEFAULT NULL,
  `utilisateur` int(11) DEFAULT NULL,
  `reponse_a` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reponse_b` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reponse_c` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reponce_d` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2021-09-06 16:13:08', '2021-09-06 16:13:08'),
(2, 'user', 'Normal User', '2021-09-06 16:13:08', '2021-09-06 16:13:08'),
(3, 'agent', 'agent', '2021-09-06 17:29:11', '2021-09-06 17:29:11');

-- --------------------------------------------------------

--
-- Structure de la table `series`
--

CREATE TABLE `series` (
  `id` int(10) UNSIGNED NOT NULL,
  `num_serie` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `series`
--

INSERT INTO `series` (`id`, `num_serie`, `description`, `created_at`, `updated_at`) VALUES
(1, 'serie 48', NULL, '2021-09-06 17:33:32', '2021-09-06 17:33:32'),
(2, 'serie 49', NULL, '2021-09-06 17:33:00', '2021-09-06 17:34:01'),
(3, 'serie 50', NULL, '2021-09-06 17:34:12', '2021-09-06 17:34:12'),
(4, 'serie 51', NULL, '2021-09-06 17:34:24', '2021-09-06 17:34:24'),
(5, 'serie 52', NULL, '2021-09-06 17:34:37', '2021-09-06 17:34:37'),
(6, 'serie 53', NULL, '2021-09-06 17:34:50', '2021-09-06 17:34:50'),
(7, 'serie 54', '', NULL, NULL),
(8, 'serie 55', NULL, NULL, NULL),
(9, 'serie 56', NULL, NULL, NULL),
(10, 'serie 57', NULL, NULL, NULL),
(11, 'PL', NULL, NULL, NULL),
(12, 'Panneaux cochés', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2021-09-06 16:13:33', '2021-09-06 16:13:33'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2021-09-06 16:13:33', '2021-09-06 16:13:33'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2021-09-06 16:13:33', '2021-09-06 16:13:33'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2021-09-06 16:13:33', '2021-09-06 16:13:33'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2021-09-06 16:13:34', '2021-09-06 16:13:34'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2021-09-06 16:13:34', '2021-09-06 16:13:34'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2021-09-06 16:13:34', '2021-09-06 16:13:34'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2021-09-06 16:13:34', '2021-09-06 16:13:34'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2021-09-06 16:13:34', '2021-09-06 16:13:34'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2021-09-06 16:13:35', '2021-09-06 16:13:35'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2021-09-06 16:13:35', '2021-09-06 16:13:35'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2021-09-06 16:13:35', '2021-09-06 16:13:35'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2021-09-06 16:13:35', '2021-09-06 16:13:35'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2021-09-06 16:13:35', '2021-09-06 16:13:35'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2021-09-06 16:13:36', '2021-09-06 16:13:36'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2021-09-06 16:13:36', '2021-09-06 16:13:36'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2021-09-06 16:13:36', '2021-09-06 16:13:36'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2021-09-06 16:13:36', '2021-09-06 16:13:36'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2021-09-06 16:13:36', '2021-09-06 16:13:36'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2021-09-06 16:13:36', '2021-09-06 16:13:36'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2021-09-06 16:13:36', '2021-09-06 16:13:36'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2021-09-06 16:13:36', '2021-09-06 16:13:36'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2021-09-06 16:13:36', '2021-09-06 16:13:36'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2021-09-06 16:13:37', '2021-09-06 16:13:37'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2021-09-06 16:13:37', '2021-09-06 16:13:37'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2021-09-06 16:13:37', '2021-09-06 16:13:37'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2021-09-06 16:13:37', '2021-09-06 16:13:37'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2021-09-06 16:13:38', '2021-09-06 16:13:38'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2021-09-06 16:13:38', '2021-09-06 16:13:38'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2021-09-06 16:13:39', '2021-09-06 16:13:39');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$K3m52w0x2Yx4PtG7QaCAgu64Swnw7ZAnbko2a8HWwgvKEUuDwA.tu', 'uykOVZTmViwWZahgz58xf4qLeHyKObuxNWB3QnJZ90L04J0b5YMDhSjy3afM', NULL, '2021-09-06 16:13:24', '2021-09-06 16:13:24'),
(2, 3, 'Thierry Belem', 'thierrybelem1998@gmail.com', 'users/default.png', NULL, '$2y$10$Y8JnTSzTq5BEC3w2i0aL/un5lle2FB9G4e0vf542feanp6DV0YoQu', NULL, '{\"locale\":\"fr\"}', '2021-09-07 09:34:30', '2021-09-07 10:43:44'),
(3, 1, 'Dama Theodore', 'damatheo8@gmail.com', 'users/default.png', NULL, '$2y$10$e8WH.0.VzDgeX.4bdOxT6uT9MPm/wPYJJJr6Z.uh4txbhD4kkxrs.', NULL, '{\"locale\":\"fr\"}', '2021-09-07 10:42:31', '2021-09-07 10:42:31'),
(4, 3, 'agent de saisi', 'agent@saisir.com', 'users/default.png', NULL, '$2y$10$dT5YqrjOcjNGlnm.QgKwlun1hUFSJAGdmnGlEDRRlsSCORTRMmqjG', NULL, '{\"locale\":\"fr\"}', '2021-09-10 11:36:40', '2021-09-10 11:36:40');

-- --------------------------------------------------------

--
-- Structure de la table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

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
-- Index pour la table `diapositives`
--
ALTER TABLE `diapositives`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `infos`
--
ALTER TABLE `infos`
  ADD PRIMARY KEY (`id`);

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
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Index pour la table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `reponses_utilisateurs`
--
ALTER TABLE `reponses_utilisateurs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Index pour la table `series`
--
ALTER TABLE `series`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT pour la table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `diapositives`
--
ALTER TABLE `diapositives`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=589;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `infos`
--
ALTER TABLE `infos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT pour la table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=496;

--
-- AUTO_INCREMENT pour la table `reponses_utilisateurs`
--
ALTER TABLE `reponses_utilisateurs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `series`
--
ALTER TABLE `series`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

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
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
