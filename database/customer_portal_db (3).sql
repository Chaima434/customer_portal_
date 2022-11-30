-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2022 at 11:00 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `customer_portal_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `appspecifications`
--

CREATE TABLE `appspecifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(11) DEFAULT NULL,
  `app_global` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `app_custom` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `appspecifications`
--

INSERT INTO `appspecifications` (`id`, `client_id`, `app_global`, `app_custom`, `price`, `created_at`, `updated_at`, `deleted_at`) VALUES
(46, 60, '{\"1\":2,\"2\":20,\"3\":17,\"4\":22,\"5\":[5,7],\"6\":24,\"7\":8,\"8\":26,\"9\":[12,13],\"10\":28,\"11\":31,\"12\":33,\"13\":34}', NULL, '900', '2022-08-29 21:26:51', '2022-08-29 21:26:51', NULL),
(49, 65, '{\"1\":4,\"2\":21,\"3\":0,\"4\":22,\"5\":[5,7,6],\"6\":25,\"7\":8,\"8\":26,\"9\":[36],\"10\":28,\"11\":31,\"12\":33,\"13\":34}', NULL, '850', '2022-08-31 06:56:11', '2022-08-31 06:58:36', NULL),
(52, 66, '{\"1\":2,\"2\":21,\"3\":0,\"4\":22,\"5\":[7,5],\"6\":25,\"7\":0,\"8\":26,\"9\":[12,13],\"10\":28,\"11\":31,\"12\":33,\"13\":34}', NULL, '770', '2022-09-01 02:47:11', '2022-09-01 02:47:11', NULL),
(53, 67, '{\"1\":1,\"2\":20,\"3\":17,\"4\":22,\"5\":[5,6],\"6\":24,\"7\":8,\"8\":26,\"9\":[12],\"10\":28,\"11\":31,\"12\":33,\"13\":34}', NULL, '\"760\"', '2022-09-02 22:10:12', '2022-09-02 22:10:12', NULL),
(59, 78, '{\"1\":4,\"2\":20,\"3\":19,\"4\":22,\"5\":[7],\"6\":24,\"7\":10,\"8\":26,\"9\":[12],\"10\":28,\"11\":30,\"12\":32,\"13\":34}', NULL, '870', '2022-10-18 08:14:29', '2022-10-18 08:15:12', NULL),
(66, 77, '{\"1\":1,\"2\":20,\"3\":17,\"4\":22,\"5\":[5],\"6\":24,\"7\":8,\"8\":26,\"9\":[13],\"10\":28,\"11\":30,\"12\":32,\"13\":34}', '{\"nom\":\"hi\",\"font\":\"hiii\",\"icon\":\"undefined\",\"color1\":\"#eb60cb\",\"color2\":\"#08ef3f\",\"color3\":\"#5395db\",\"logo\":\"logo1666297552_601716.png\"}', '810', '2022-10-20 08:21:46', '2022-10-20 19:25:52', NULL),
(71, 86, '{\"1\":2,\"2\":20,\"3\":14,\"4\":22,\"5\":[6],\"6\":24,\"7\":9,\"8\":26,\"9\":[36],\"10\":28,\"11\":30,\"12\":32,\"13\":34}', '{\"nom\":\"Eos ut minima fugit\",\"font\":\"In esse odio culpa\",\"color1\":\"#24add5\",\"color2\":\"#cabb7a\",\"color3\":\"#bbbcb1\",\"logo\":\"logo1666526103_429173.png\",\"icon\":\"icon1666526103_911933.png\"}', '850', '2022-10-20 14:19:56', '2022-10-23 10:55:03', NULL),
(72, 86, '{\"1\":2,\"2\":20,\"3\":18,\"4\":22,\"5\":[6],\"6\":24,\"7\":9,\"8\":26,\"9\":[13,36],\"10\":28,\"11\":30,\"12\":32,\"13\":34}', '{\"nom\":\"Aut fuga Sed aliqua\",\"font\":\"Debitis maxime quis\",\"color1\":\"#04cba4\",\"color2\":\"#eb340f\",\"color3\":\"#a7d103\",\"logo\":\"logo1666526191_392710.jpg\",\"icon\":\"icon1666526191_700385.jpg\"}', '960', '2022-10-21 08:54:00', '2022-10-23 10:56:31', NULL),
(73, 77, '{\"1\":3,\"2\":20,\"3\":17,\"4\":22,\"5\":[],\"6\":24,\"7\":8,\"8\":26,\"9\":[],\"10\":28,\"11\":30,\"12\":32,\"13\":34}', '{\"nom\":\"Sed distinctio Quae\",\"font\":\"Sunt molestiae ut i\",\"color1\":\"#f2861e\",\"color2\":\"#3da765\",\"color3\":\"#fcd409\",\"logo\":\"logo1666556684_882181.png\",\"icon\":\"icon1666556684_421144.png\"}', '645', '2022-10-23 19:23:54', '2022-10-23 19:24:44', NULL),
(74, 86, '{\"1\":2,\"2\":20,\"3\":18,\"4\":22,\"5\":[7],\"6\":24,\"7\":8,\"8\":26,\"9\":[12],\"10\":28,\"11\":30,\"12\":32,\"13\":34}', '{\"nom\":\"Cupiditate quas recu\",\"font\":\"Ea eum repellendus\",\"color1\":\"#0eba68\",\"color2\":\"#bb88d0\",\"color3\":\"#7562f9\",\"logo\":\"logo1668090439_425754.png\",\"icon\":\"icon1668090439_597663.png\"}', '850', '2022-11-10 13:13:09', '2022-11-10 13:27:19', NULL),
(75, 86, '{\"1\":3,\"2\":20,\"3\":16,\"4\":22,\"5\":[6],\"6\":24,\"7\":10,\"8\":26,\"9\":[13,11],\"10\":28,\"11\":30,\"12\":32,\"13\":34}', NULL, '772', '2022-11-14 09:00:20', '2022-11-14 09:00:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
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
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2022-06-13 07:37:40', '2022-06-13 07:37:40'),
(2, NULL, 1, 'Category 2', 'category-2', '2022-06-13 07:37:40', '2022-06-13 07:37:40');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phoneNumber` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `name`, `lastName`, `email`, `password`, `phoneNumber`, `created_at`, `updated_at`, `deleted_at`) VALUES
(64, 'Ryan Herman', 'Kerr', 'henev@mailinator.com', '$2y$10$HIrMuta0oT2GtOk2ZMJ4X.pRruAOt83o90GPpLWz6WAiD4TF2i.m.', '7852829', '2022-08-29 19:02:59', '2022-08-29 19:02:59', NULL),
(66, 'Wa7ida', 'Manich wa7ida', 'wa7ida@omkalthoum.com', '$2y$10$loY/t/td5KnWtNsruklIpuoiC.7T1iahljFiJb1FBtApAICnU.0Xi', '70908765', '2022-09-01 02:46:16', '2022-09-01 02:46:16', NULL),
(68, 'Foulen', 'fouleni', 'foulen@gmail.com', '$2y$10$Y6jM86ymCxa1Wt4bAJLJjuFgIhnMUd3pGd692ZgDYedj7p90iVuvy', '23555666', '2022-09-10 00:21:32', '2022-09-10 00:21:32', NULL),
(69, 'foulen', 'ben foulen', 'foulen.fouleni@gmail.com', '$2y$10$ioA7OVBNIbf//Of/Uyfbh.vCXcUuen5rL8ToilvnuvSMu8K1.urw.', '22554334', '2022-09-10 00:33:04', '2022-09-10 00:33:04', NULL),
(77, 'chaima', 'ben nasr', 'chaima.b.nasr@gmail.com', '$2y$10$B7ZkVNNk3tcmlqQHJlQgYOBNFXEXZAoqByXeoA0tI.J/32w5PoDUa', '22336655', '2022-10-17 15:50:24', '2022-10-17 15:50:24', NULL),
(86, 'ouday', 'ouday', 'mcom@mcom.com', '$2y$10$ueMcNGeGuqNlhhvBjv5uF..khe5PXo2IxMCHMcznwroyj6sLaXyTO', '22222222', '2022-10-20 13:39:02', '2022-10-20 13:39:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
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
-- Dumping data for table `data_rows`
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
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
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
(99, 16, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(100, 16, 'formname', 'text', 'FormName', 0, 1, 1, 1, 1, 1, '{}', 2),
(101, 16, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(102, 16, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(103, 16, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 0, 0, 0, '{}', 5),
(104, 17, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(105, 17, 'client_id', 'text', 'Client Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(107, 17, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(108, 17, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(109, 17, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 8),
(110, 19, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(111, 19, 'label_id', 'text', 'Label Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(112, 19, 'options', 'text', 'Options', 0, 1, 1, 1, 1, 1, '{}', 3),
(113, 19, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(114, 19, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(115, 19, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 1, 1, 1, '{}', 6),
(116, 18, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(117, 18, 'label', 'text', 'Label', 0, 1, 1, 1, 1, 1, '{}', 2),
(118, 18, 'type', 'select_dropdown', 'Type', 0, 1, 1, 1, 1, 1, '{\"default\":\"text\",\"options\":{\"select\":\"select\",\"radio\":\"radio\",\"number\":\"number\",\"image\":\"image\",\"checkbox\":\"checkbox\",\"text\":\"text\",\"color\":\"color\"}}', 3),
(119, 18, 'step', 'text', 'Step', 0, 1, 1, 1, 1, 1, '{}', 4),
(120, 18, 'parent', 'number', 'Parent', 0, 1, 1, 1, 1, 0, '{}', 6),
(121, 18, 'enabled', 'select_dropdown', 'Enabled', 0, 1, 1, 1, 1, 1, '{\"default\":\"1\",\"options\":{\"0\":\"non\",\"1\":\"oui\"}}', 9),
(122, 18, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 12),
(123, 18, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 13),
(124, 18, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 1, 0, 0, 0, '{}', 14),
(126, 18, 'field_belongsto_field_relationship', 'relationship', 'Parent', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Field\",\"table\":\"fields\",\"type\":\"belongsTo\",\"column\":\"parent\",\"key\":\"id\",\"label\":\"label\",\"pivot_table\":\"appspecifications\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(140, 22, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(141, 22, 'field_id', 'text', 'Field Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(142, 22, 'option', 'text', 'Option', 0, 1, 1, 1, 1, 1, '{}', 4),
(143, 22, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 6),
(144, 22, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(145, 22, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 8),
(146, 22, 'fieldoption_belongsto_field_relationship', 'relationship', 'field', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Field\",\"table\":\"fields\",\"type\":\"belongsTo\",\"column\":\"field_id\",\"key\":\"id\",\"label\":\"label\",\"pivot_table\":\"appspecifications\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(147, 18, 'field_belongsto_form_relationship', 'relationship', 'form', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Form\",\"table\":\"forms\",\"type\":\"belongsTo\",\"column\":\"form\",\"key\":\"id\",\"label\":\"formname\",\"pivot_table\":\"appspecifications\",\"pivot\":\"0\",\"taggable\":\"0\"}', 11),
(148, 18, 'form', 'text', 'Form', 1, 1, 1, 1, 1, 1, '{}', 5),
(149, 23, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(150, 23, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(151, 23, 'lastName', 'text', 'LastName', 0, 1, 1, 1, 1, 1, '{}', 3),
(152, 23, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 4),
(153, 23, 'password', 'password', 'Password', 0, 0, 0, 1, 0, 0, '{}', 6),
(154, 23, 'phoneNumber', 'text', 'PhoneNumber', 0, 1, 1, 1, 1, 1, '{}', 5),
(155, 23, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(156, 23, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(157, 23, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 1, 1, 1, '{}', 9),
(159, 22, 'price', 'text', 'Price', 0, 1, 1, 1, 1, 1, '{}', 5),
(160, 17, 'app_global', 'text', 'App Global', 0, 1, 1, 1, 1, 1, '{}', 3),
(161, 17, 'app_custom', 'text', 'App Custom', 0, 1, 1, 1, 1, 1, '{}', 4),
(162, 17, 'price', 'text', 'Price', 1, 1, 1, 1, 1, 1, '{}', 5),
(164, 18, 'rank', 'text', 'Rank', 1, 1, 1, 1, 1, 1, '{}', 8),
(165, 18, 'field_belongsto_fieldoption_relationship', 'relationship', 'Defult value', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Fieldoption\",\"table\":\"fieldoptions\",\"type\":\"belongsTo\",\"column\":\"id\",\"key\":\"id\",\"label\":\"option\",\"pivot_table\":\"appspecifications\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
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
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2022-06-13 07:37:28', '2022-06-13 07:37:28'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2022-06-13 07:37:28', '2022-06-13 07:37:28'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2022-06-13 07:37:28', '2022-06-13 07:37:28'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2022-06-13 07:37:38', '2022-06-13 07:37:38'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2022-06-13 07:37:40', '2022-06-13 07:37:40'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2022-06-13 07:37:41', '2022-06-13 07:37:41'),
(16, 'forms', 'forms', 'Form', 'Forms', NULL, 'App\\Models\\Form', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-07-28 07:35:17', '2022-08-26 10:14:55'),
(17, 'appspecifications', 'appspecifications', 'Appspecification', 'Appspecifications', NULL, 'App\\Models\\Appspecification', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-07-28 07:40:36', '2022-08-26 10:00:22'),
(18, 'fields', 'fields', 'Field', 'Fields', NULL, 'App\\Models\\Field', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-07-28 07:52:41', '2022-08-29 16:42:27'),
(19, 'labeloptions', 'labeloptions', 'Labeloption', 'Labeloptions', NULL, 'App\\Models\\Labeloption', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2022-07-28 07:59:55', '2022-07-28 07:59:55'),
(22, 'fieldoptions', 'fieldoptions', 'Fieldoption', 'Fieldoptions', NULL, 'App\\Models\\Fieldoption', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-07-28 09:22:30', '2022-08-01 09:49:45'),
(23, 'clients', 'clients', 'Client', 'Clients', NULL, 'App\\Models\\Client', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-07-28 12:45:42', '2022-10-17 15:35:22');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `fieldoptions`
--

CREATE TABLE `fieldoptions` (
  `id` int(10) UNSIGNED NOT NULL,
  `field_id` int(11) DEFAULT NULL,
  `option` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fieldoptions`
--

INSERT INTO `fieldoptions` (`id`, `field_id`, `option`, `price`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'restauration', 250, '2022-07-28 09:33:33', '2022-07-28 09:33:33', NULL),
(2, 1, 'tourisme', 350, '2022-07-28 09:33:51', '2022-07-28 09:33:51', NULL),
(3, 1, 'prêt à porter', 215, '2022-07-28 09:34:05', '2022-07-28 09:34:05', NULL),
(4, 1, 'hightech', 350, '2022-07-28 09:34:17', '2022-07-28 09:34:17', NULL),
(5, 5, 'Français', 80, '2022-07-28 09:34:47', '2022-07-28 09:34:47', NULL),
(6, 5, 'Anglais', 60, '2022-07-28 09:35:11', '2022-07-28 09:35:11', NULL),
(7, 5, 'Arabe', 50, '2022-07-28 09:36:08', '2022-07-28 09:36:08', NULL),
(8, 7, 'PrestaShop', 30, '2022-07-28 09:36:33', '2022-07-28 09:36:33', NULL),
(9, 7, 'Woo commerce', 40, '2022-07-28 09:36:59', '2022-07-28 09:36:59', NULL),
(10, 7, 'Magento', 40, '2022-07-28 09:37:14', '2022-07-28 09:37:14', NULL),
(11, 9, 'monétique', 17, '2022-07-29 07:31:10', '2022-07-29 07:31:10', NULL),
(12, 9, 'GpgCheckout', 10, '2022-07-29 07:31:55', '2022-08-01 09:52:39', NULL),
(13, 9, 'sobflous', 50, '2022-07-29 07:32:18', '2022-08-01 09:52:30', NULL),
(14, 3, '1', 50, '2022-08-02 09:59:35', '2022-08-02 09:59:35', NULL),
(16, 3, '2', 90, '2022-08-02 10:14:30', '2022-08-02 10:14:30', NULL),
(17, 3, '3', 100, '2022-08-02 10:20:28', '2022-08-02 10:20:28', NULL),
(18, 3, '4', 110, '2022-08-02 10:21:32', '2022-08-02 10:21:32', NULL),
(19, 3, '5', 120, '2022-08-02 10:23:16', '2022-08-02 10:23:16', NULL),
(20, 2, 'Oui', 0, '2022-08-02 10:29:39', '2022-08-02 10:29:39', NULL),
(21, 2, 'Non', 0, '2022-08-02 10:30:49', '2022-08-02 10:30:49', NULL),
(22, 4, 'Oui', 0, '2022-08-02 10:33:13', '2022-08-02 10:33:13', NULL),
(23, 4, 'Non', 0, '2022-08-02 10:34:29', '2022-08-02 10:34:29', NULL),
(24, 6, 'Oui', 0, '2022-08-02 10:36:32', '2022-08-02 10:36:32', NULL),
(25, 6, 'Non', 0, '2022-08-02 10:37:48', '2022-08-02 10:37:48', NULL),
(26, 8, 'Oui', 0, '2022-08-02 10:38:49', '2022-08-02 10:38:49', NULL),
(27, 8, 'Non', 0, '2022-08-02 10:39:11', '2022-08-02 10:40:06', NULL),
(28, 10, 'Oui', 100, '2022-08-02 10:40:43', '2022-08-02 10:40:43', NULL),
(29, 10, 'Non', 0, '2022-08-02 10:41:29', '2022-08-02 10:41:29', NULL),
(30, 11, 'Oui', 150, '2022-08-02 10:41:51', '2022-08-02 10:41:51', NULL),
(31, 11, 'Non', 0, '2022-08-02 10:43:44', '2022-08-02 10:43:44', NULL),
(32, 12, 'Oui', 0, '2022-08-02 10:44:37', '2022-08-02 10:44:37', NULL),
(33, 12, 'Non', 80, '2022-08-02 10:45:40', '2022-08-02 10:45:40', NULL),
(34, 13, 'Oui', 50, '2022-08-02 10:47:36', '2022-08-02 10:47:36', NULL),
(35, 13, 'Non', 0, '2022-08-02 10:49:14', '2022-08-02 10:49:14', NULL),
(36, 9, 'paymee', 50, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fields`
--

CREATE TABLE `fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `step` tinyint(4) DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  `enabled` tinyint(4) DEFAULT NULL,
  `rank` int(11) NOT NULL,
  `form` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fields`
--

INSERT INTO `fields` (`id`, `label`, `type`, `step`, `parent`, `enabled`, `rank`, `form`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Secteur d\'activité ?', 'select', 1, NULL, 1, 0, 1, '2022-07-28 08:18:43', '2022-07-28 08:18:43', NULL),
(2, 'Multi point de vente ?', 'radio', 1, NULL, 1, 0, 1, '2022-07-28 08:20:32', '2022-07-28 08:20:32', NULL),
(3, 'Nombre de point de vente', 'select', 1, 2, 1, 0, 1, '2022-07-28 08:45:00', '2022-07-28 10:12:39', NULL),
(4, 'Multilangue ?', 'radio', 1, NULL, 1, 0, 1, '2022-07-28 08:46:00', '2022-07-28 10:13:06', NULL),
(5, 'Langues', 'checkbox', 1, 4, 1, 0, 1, '2022-07-28 08:48:00', '2022-07-28 10:13:20', NULL),
(6, 'Synchronisation CMS', 'radio', 1, NULL, 1, 0, 1, '2022-07-28 08:49:00', '2022-07-28 10:13:30', NULL),
(7, 'CMS', 'select', 2, 6, 1, 0, 1, '2022-07-28 08:50:00', '2022-07-28 10:13:41', NULL),
(8, 'Paiement en ligne', 'radio', 2, NULL, 1, 0, 1, '2022-07-28 08:51:00', '2022-07-28 10:13:48', NULL),
(9, 'Type de paiement', 'checkbox', 2, 8, 1, 0, 1, '2022-07-28 08:52:00', '2022-07-28 10:14:06', NULL),
(10, 'Hébergement', 'radio', 2, NULL, 1, 0, 1, '2022-07-28 08:56:00', '2022-07-28 10:14:15', NULL),
(11, 'Market place', 'radio', 2, NULL, 1, 0, 1, '2022-07-28 08:57:00', '2022-07-28 10:14:23', NULL),
(12, 'Google ADS', 'radio', 2, NULL, 1, 0, 1, '2022-07-28 08:58:00', '2022-07-28 10:14:30', NULL),
(13, 'Pack SMS', 'radio', 2, NULL, 1, 0, 1, '2022-07-28 08:59:00', '2022-07-28 12:26:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `forms`
--

CREATE TABLE `forms` (
  `id` int(10) UNSIGNED NOT NULL,
  `formname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `forms`
--

INSERT INTO `forms` (`id`, `formname`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'create Application', '2022-07-28 12:20:00', '2022-10-17 17:41:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2022-06-13 07:37:30', '2022-06-13 07:37:30');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
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
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2022-06-13 07:37:30', '2022-06-13 07:37:30', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 9, '2022-06-13 07:37:30', '2022-10-18 10:10:32', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 8, '2022-06-13 07:37:30', '2022-10-18 10:10:32', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 7, '2022-06-13 07:37:30', '2022-10-18 10:10:32', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 14, '2022-06-13 07:37:30', '2022-10-18 10:10:32', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2022-06-13 07:37:30', '2022-06-13 08:44:29', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2022-06-13 07:37:30', '2022-06-13 08:44:29', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2022-06-13 07:37:31', '2022-06-13 08:44:29', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2022-06-13 07:37:31', '2022-06-13 08:44:29', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 15, '2022-06-13 07:37:31', '2022-10-18 10:10:32', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 12, '2022-06-13 07:37:39', '2022-10-18 10:10:32', 'voyager.categories.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 10, '2022-06-13 07:37:41', '2022-10-18 10:10:32', 'voyager.posts.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 11, '2022-06-13 07:37:42', '2022-10-18 10:10:32', 'voyager.pages.index', NULL),
(17, 1, 'form', '', '_self', 'voyager-logbook', '#000000', NULL, 13, '2022-06-14 07:13:55', '2022-10-18 10:10:32', NULL, ''),
(21, 1, 'Forms', '', '_self', 'voyager-window-list', '#000000', NULL, 4, '2022-07-28 07:35:18', '2022-10-18 10:28:36', 'voyager.forms.index', 'null'),
(22, 1, 'Appspecifications', '', '_self', 'voyager-wand', '#000000', NULL, 3, '2022-07-28 07:40:37', '2022-10-18 10:23:53', 'voyager.appspecifications.index', 'null'),
(23, 1, 'Fields', '', '_self', 'voyager-file-text', '#000000', NULL, 5, '2022-07-28 07:52:41', '2022-10-18 10:25:31', 'voyager.fields.index', 'null'),
(27, 1, 'Fieldoptions', '', '_self', 'voyager-documentation', '#000000', NULL, 6, '2022-07-28 09:22:30', '2022-10-18 10:25:31', 'voyager.fieldoptions.index', 'null'),
(28, 1, 'Clients', '', '_self', 'voyager-people', '#000000', NULL, 2, '2022-07-28 12:45:43', '2022-10-18 10:19:52', 'voyager.clients.index', 'null');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
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
-- Table structure for table `pages`
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
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2022-06-13 07:37:42', '2022-06-13 07:37:42');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`id`, `email`, `token`, `created_at`, `updated_at`) VALUES
(5, 'negy@mailinator.com', '74189', '2022-08-18 08:12:11', '2022-08-18 08:12:11'),
(7, 'khaled.mediouni@gmail.com', '889989', '2022-10-17 15:17:40', '2022-10-17 15:17:40');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2022-06-13 07:37:31', '2022-06-13 07:37:31'),
(2, 'browse_bread', NULL, '2022-06-13 07:37:31', '2022-06-13 07:37:31'),
(3, 'browse_database', NULL, '2022-06-13 07:37:31', '2022-06-13 07:37:31'),
(4, 'browse_media', NULL, '2022-06-13 07:37:31', '2022-06-13 07:37:31'),
(5, 'browse_compass', NULL, '2022-06-13 07:37:31', '2022-06-13 07:37:31'),
(6, 'browse_menus', 'menus', '2022-06-13 07:37:31', '2022-06-13 07:37:31'),
(7, 'read_menus', 'menus', '2022-06-13 07:37:31', '2022-06-13 07:37:31'),
(8, 'edit_menus', 'menus', '2022-06-13 07:37:31', '2022-06-13 07:37:31'),
(9, 'add_menus', 'menus', '2022-06-13 07:37:32', '2022-06-13 07:37:32'),
(10, 'delete_menus', 'menus', '2022-06-13 07:37:32', '2022-06-13 07:37:32'),
(11, 'browse_roles', 'roles', '2022-06-13 07:37:32', '2022-06-13 07:37:32'),
(12, 'read_roles', 'roles', '2022-06-13 07:37:32', '2022-06-13 07:37:32'),
(13, 'edit_roles', 'roles', '2022-06-13 07:37:32', '2022-06-13 07:37:32'),
(14, 'add_roles', 'roles', '2022-06-13 07:37:32', '2022-06-13 07:37:32'),
(15, 'delete_roles', 'roles', '2022-06-13 07:37:32', '2022-06-13 07:37:32'),
(16, 'browse_users', 'users', '2022-06-13 07:37:32', '2022-06-13 07:37:32'),
(17, 'read_users', 'users', '2022-06-13 07:37:32', '2022-06-13 07:37:32'),
(18, 'edit_users', 'users', '2022-06-13 07:37:32', '2022-06-13 07:37:32'),
(19, 'add_users', 'users', '2022-06-13 07:37:32', '2022-06-13 07:37:32'),
(20, 'delete_users', 'users', '2022-06-13 07:37:32', '2022-06-13 07:37:32'),
(21, 'browse_settings', 'settings', '2022-06-13 07:37:32', '2022-06-13 07:37:32'),
(22, 'read_settings', 'settings', '2022-06-13 07:37:32', '2022-06-13 07:37:32'),
(23, 'edit_settings', 'settings', '2022-06-13 07:37:32', '2022-06-13 07:37:32'),
(24, 'add_settings', 'settings', '2022-06-13 07:37:32', '2022-06-13 07:37:32'),
(25, 'delete_settings', 'settings', '2022-06-13 07:37:32', '2022-06-13 07:37:32'),
(26, 'browse_categories', 'categories', '2022-06-13 07:37:39', '2022-06-13 07:37:39'),
(27, 'read_categories', 'categories', '2022-06-13 07:37:39', '2022-06-13 07:37:39'),
(28, 'edit_categories', 'categories', '2022-06-13 07:37:39', '2022-06-13 07:37:39'),
(29, 'add_categories', 'categories', '2022-06-13 07:37:39', '2022-06-13 07:37:39'),
(30, 'delete_categories', 'categories', '2022-06-13 07:37:39', '2022-06-13 07:37:39'),
(31, 'browse_posts', 'posts', '2022-06-13 07:37:41', '2022-06-13 07:37:41'),
(32, 'read_posts', 'posts', '2022-06-13 07:37:41', '2022-06-13 07:37:41'),
(33, 'edit_posts', 'posts', '2022-06-13 07:37:41', '2022-06-13 07:37:41'),
(34, 'add_posts', 'posts', '2022-06-13 07:37:41', '2022-06-13 07:37:41'),
(35, 'delete_posts', 'posts', '2022-06-13 07:37:41', '2022-06-13 07:37:41'),
(36, 'browse_pages', 'pages', '2022-06-13 07:37:42', '2022-06-13 07:37:42'),
(37, 'read_pages', 'pages', '2022-06-13 07:37:42', '2022-06-13 07:37:42'),
(38, 'edit_pages', 'pages', '2022-06-13 07:37:42', '2022-06-13 07:37:42'),
(39, 'add_pages', 'pages', '2022-06-13 07:37:42', '2022-06-13 07:37:42'),
(40, 'delete_pages', 'pages', '2022-06-13 07:37:42', '2022-06-13 07:37:42'),
(66, 'browse_forms', 'forms', '2022-07-28 07:35:17', '2022-07-28 07:35:17'),
(67, 'read_forms', 'forms', '2022-07-28 07:35:17', '2022-07-28 07:35:17'),
(68, 'edit_forms', 'forms', '2022-07-28 07:35:17', '2022-07-28 07:35:17'),
(69, 'add_forms', 'forms', '2022-07-28 07:35:17', '2022-07-28 07:35:17'),
(70, 'delete_forms', 'forms', '2022-07-28 07:35:17', '2022-07-28 07:35:17'),
(71, 'browse_appspecifications', 'appspecifications', '2022-07-28 07:40:37', '2022-07-28 07:40:37'),
(72, 'read_appspecifications', 'appspecifications', '2022-07-28 07:40:37', '2022-07-28 07:40:37'),
(73, 'edit_appspecifications', 'appspecifications', '2022-07-28 07:40:37', '2022-07-28 07:40:37'),
(74, 'add_appspecifications', 'appspecifications', '2022-07-28 07:40:37', '2022-07-28 07:40:37'),
(75, 'delete_appspecifications', 'appspecifications', '2022-07-28 07:40:37', '2022-07-28 07:40:37'),
(76, 'browse_fields', 'fields', '2022-07-28 07:52:41', '2022-07-28 07:52:41'),
(77, 'read_fields', 'fields', '2022-07-28 07:52:41', '2022-07-28 07:52:41'),
(78, 'edit_fields', 'fields', '2022-07-28 07:52:41', '2022-07-28 07:52:41'),
(79, 'add_fields', 'fields', '2022-07-28 07:52:41', '2022-07-28 07:52:41'),
(80, 'delete_fields', 'fields', '2022-07-28 07:52:41', '2022-07-28 07:52:41'),
(81, 'browse_labeloptions', 'labeloptions', '2022-07-28 07:59:55', '2022-07-28 07:59:55'),
(82, 'read_labeloptions', 'labeloptions', '2022-07-28 07:59:55', '2022-07-28 07:59:55'),
(83, 'edit_labeloptions', 'labeloptions', '2022-07-28 07:59:55', '2022-07-28 07:59:55'),
(84, 'add_labeloptions', 'labeloptions', '2022-07-28 07:59:55', '2022-07-28 07:59:55'),
(85, 'delete_labeloptions', 'labeloptions', '2022-07-28 07:59:55', '2022-07-28 07:59:55'),
(96, 'browse_fieldoptions', 'fieldoptions', '2022-07-28 09:22:30', '2022-07-28 09:22:30'),
(97, 'read_fieldoptions', 'fieldoptions', '2022-07-28 09:22:30', '2022-07-28 09:22:30'),
(98, 'edit_fieldoptions', 'fieldoptions', '2022-07-28 09:22:30', '2022-07-28 09:22:30'),
(99, 'add_fieldoptions', 'fieldoptions', '2022-07-28 09:22:30', '2022-07-28 09:22:30'),
(100, 'delete_fieldoptions', 'fieldoptions', '2022-07-28 09:22:30', '2022-07-28 09:22:30'),
(101, 'browse_clients', 'clients', '2022-07-28 12:45:42', '2022-07-28 12:45:42'),
(102, 'read_clients', 'clients', '2022-07-28 12:45:42', '2022-07-28 12:45:42'),
(103, 'edit_clients', 'clients', '2022-07-28 12:45:42', '2022-07-28 12:45:42'),
(104, 'add_clients', 'clients', '2022-07-28 12:45:42', '2022-07-28 12:45:42'),
(105, 'delete_clients', 'clients', '2022-07-28 12:45:42', '2022-07-28 12:45:42');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
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
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 1);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
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
-- Table structure for table `posts`
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
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2022-06-13 07:37:41', '2022-06-13 07:37:41'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2022-06-13 07:37:41', '2022-06-13 07:37:41'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2022-06-13 07:37:41', '2022-06-13 07:37:41'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2022-06-13 07:37:41', '2022-06-13 07:37:41');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2022-06-13 07:37:31', '2022-06-13 07:37:31'),
(2, 'user', 'Normal User', '2022-06-13 07:37:31', '2022-06-13 07:37:31');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
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
-- Dumping data for table `settings`
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
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin'),
(11, 'forms.form_create_application', 'form create Application', '1', NULL, 'text', 6, 'forms');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
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
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2022-06-13 07:37:42', '2022-06-13 07:37:42'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2022-06-13 07:37:42', '2022-06-13 07:37:42'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2022-06-13 07:37:42', '2022-06-13 07:37:42'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2022-06-13 07:37:42', '2022-06-13 07:37:42'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2022-06-13 07:37:42', '2022-06-13 07:37:42'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2022-06-13 07:37:42', '2022-06-13 07:37:42'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2022-06-13 07:37:42', '2022-06-13 07:37:42'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2022-06-13 07:37:42', '2022-06-13 07:37:42'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2022-06-13 07:37:42', '2022-06-13 07:37:42'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2022-06-13 07:37:42', '2022-06-13 07:37:42'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2022-06-13 07:37:43', '2022-06-13 07:37:43'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2022-06-13 07:37:43', '2022-06-13 07:37:43'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2022-06-13 07:37:43', '2022-06-13 07:37:43'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2022-06-13 07:37:43', '2022-06-13 07:37:43'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2022-06-13 07:37:43', '2022-06-13 07:37:43'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2022-06-13 07:37:43', '2022-06-13 07:37:43'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2022-06-13 07:37:43', '2022-06-13 07:37:43'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2022-06-13 07:37:43', '2022-06-13 07:37:43'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2022-06-13 07:37:43', '2022-06-13 07:37:43'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2022-06-13 07:37:43', '2022-06-13 07:37:43'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2022-06-13 07:37:44', '2022-06-13 07:37:44'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2022-06-13 07:37:44', '2022-06-13 07:37:44'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2022-06-13 07:37:45', '2022-06-13 07:37:45'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2022-06-13 07:37:45', '2022-06-13 07:37:45'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2022-06-13 07:37:45', '2022-06-13 07:37:45'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2022-06-13 07:37:45', '2022-06-13 07:37:45'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2022-06-13 07:37:45', '2022-06-13 07:37:45'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2022-06-13 07:37:45', '2022-06-13 07:37:45'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2022-06-13 07:37:45', '2022-06-13 07:37:45'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2022-06-13 07:37:45', '2022-06-13 07:37:45');

-- --------------------------------------------------------

--
-- Table structure for table `users`
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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@mcom.com', 'users\\October2022\\RQeHhjktm8W62qLI8y9Y.jpg', NULL, '$2y$10$1Sz/.X4u2CiXx1MdH9oAAeMKudVyyQE/suVcnit8655cU2JklHGFS', 'YSZE3UQBq7Gk0U6ZsDXApW4U5T0q1gpYaSUQ0pYbvQKzHndU8BxJCRJ9vHkS', '{\"locale\":\"en\"}', '2022-06-13 07:37:40', '2022-10-18 12:22:06'),
(2, 2, 'ouday', 'ouday@gmail.com', 'users\\October2022\\wdxjSSzUQ1BEpE1jYmYr.png', NULL, '$2y$10$jZHXqGR2EsfYWUjHeZNoKO3cbpDCetIQIdiWkGJXUXgrlMOJMQTSG', NULL, '{\"locale\":\"en\"}', '2022-07-04 12:35:45', '2022-10-18 12:21:36');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES
(2, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appspecifications`
--
ALTER TABLE `appspecifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cliens_email_unique` (`email`),
  ADD UNIQUE KEY `cliens_phonenumber_unique` (`phoneNumber`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `fieldoptions`
--
ALTER TABLE `fieldoptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fields`
--
ALTER TABLE `fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forms`
--
ALTER TABLE `forms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appspecifications`
--
ALTER TABLE `appspecifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fieldoptions`
--
ALTER TABLE `fieldoptions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `fields`
--
ALTER TABLE `fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `forms`
--
ALTER TABLE `forms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
