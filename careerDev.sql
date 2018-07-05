-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 05, 2018 at 03:36 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `careerDev`
--

-- --------------------------------------------------------

--
-- Table structure for table `crdev_assets`
--

CREATE TABLE `crdev_assets` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) UNSIGNED NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `crdev_assets`
--

INSERT INTO `crdev_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 0, 181, 0, 'root.1', 'Root Asset', '{\"core.login.site\":{\"6\":1,\"2\":1},\"core.login.admin\":{\"6\":1},\"core.login.offline\":{\"6\":1},\"core.admin\":{\"8\":1},\"core.manage\":{\"7\":1},\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(8, 1, 17, 40, 1, 'com_content', 'com_content', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1}}'),
(9, 1, 41, 42, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 43, 44, 1, 'com_installer', 'com_installer', '{\"core.manage\":{\"7\":0},\"core.delete\":{\"7\":0},\"core.edit.state\":{\"7\":0}}'),
(11, 1, 45, 46, 1, 'com_languages', 'com_languages', '{\"core.admin\":{\"7\":1}}'),
(12, 1, 47, 48, 1, 'com_login', 'com_login', '{}'),
(13, 1, 49, 50, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 51, 52, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 53, 54, 1, 'com_media', 'com_media', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":{\"5\":1}}'),
(16, 1, 55, 58, 1, 'com_menus', 'com_menus', '{\"core.admin\":{\"7\":1}}'),
(17, 1, 59, 60, 1, 'com_messages', 'com_messages', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(18, 1, 61, 142, 1, 'com_modules', 'com_modules', '{\"core.admin\":{\"7\":1}}'),
(19, 1, 143, 146, 1, 'com_newsfeeds', 'com_newsfeeds', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(20, 1, 147, 148, 1, 'com_plugins', 'com_plugins', '{\"core.admin\":{\"7\":1}}'),
(21, 1, 149, 150, 1, 'com_redirect', 'com_redirect', '{\"core.admin\":{\"7\":1}}'),
(22, 1, 151, 152, 1, 'com_search', 'com_search', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(23, 1, 153, 154, 1, 'com_templates', 'com_templates', '{\"core.admin\":{\"7\":1}}'),
(24, 1, 155, 158, 1, 'com_users', 'com_users', '{\"core.admin\":{\"7\":1}}'),
(26, 1, 159, 160, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 21, 2, 'com_content.category.2', 'Mission and Vision', '{}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{}'),
(30, 19, 144, 145, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{}'),
(32, 24, 156, 157, 2, 'com_users.category.7', 'Uncategorised', '{}'),
(33, 1, 161, 162, 1, 'com_finder', 'com_finder', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(34, 1, 163, 164, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{}'),
(35, 1, 165, 166, 1, 'com_tags', 'com_tags', '{}'),
(36, 1, 167, 168, 1, 'com_contenthistory', 'com_contenthistory', '{}'),
(37, 1, 169, 170, 1, 'com_ajax', 'com_ajax', '{}'),
(38, 1, 171, 172, 1, 'com_postinstall', 'com_postinstall', '{}'),
(39, 18, 62, 63, 2, 'com_modules.module.1', 'Main Menu', '{}'),
(40, 18, 64, 65, 2, 'com_modules.module.2', 'Login', '{}'),
(41, 18, 66, 67, 2, 'com_modules.module.3', 'Popular Articles', '{}'),
(42, 18, 68, 69, 2, 'com_modules.module.4', 'Recently Added Articles', '{}'),
(43, 18, 70, 71, 2, 'com_modules.module.8', 'Toolbar', '{}'),
(44, 18, 72, 73, 2, 'com_modules.module.9', 'Quick Icons', '{}'),
(45, 18, 74, 75, 2, 'com_modules.module.10', 'Logged-in Users', '{}'),
(46, 18, 76, 77, 2, 'com_modules.module.12', 'Admin Menu', '{}'),
(47, 18, 78, 79, 2, 'com_modules.module.13', 'Admin Submenu', '{}'),
(48, 18, 80, 81, 2, 'com_modules.module.14', 'User Status', '{}'),
(49, 18, 82, 83, 2, 'com_modules.module.15', 'Title', '{}'),
(50, 18, 84, 85, 2, 'com_modules.module.16', 'Login Form', '{}'),
(51, 18, 86, 87, 2, 'com_modules.module.17', 'Breadcrumbs', '{}'),
(52, 18, 88, 89, 2, 'com_modules.module.79', 'Multilanguage status', '{}'),
(53, 18, 90, 91, 2, 'com_modules.module.86', 'Joomla Version', '{}'),
(54, 16, 56, 57, 2, 'com_menus.menu.1', 'Main Menu', '{}'),
(55, 18, 92, 93, 2, 'com_modules.module.87', 'Sample Data', '{}'),
(56, 1, 173, 174, 1, 'com_iquix', 'com_iquix', '{}'),
(57, 18, 94, 95, 2, 'com_modules.module.88', 'Gantry 5 Particle', '{}'),
(58, 1, 175, 176, 1, 'com_gantry5', 'com_gantry5', '{}'),
(59, 18, 96, 97, 2, 'com_modules.module.89', 'JMG Img Hover Modul', '{}'),
(60, 18, 98, 99, 2, 'com_modules.module.90', 'Xpert Scroller', '{}'),
(61, 1, 177, 178, 1, 'com_jce', 'COM_JCE', '{}'),
(62, 1, 179, 180, 1, 'com_slider', 'COM_SLIDER', '{}'),
(63, 18, 100, 101, 2, 'com_modules.module.91', 'slideshow', '{}'),
(64, 18, 102, 103, 2, 'com_modules.module.92', 'slideshow', '{}'),
(65, 18, 104, 105, 2, 'com_modules.module.93', 'First Image', '{}'),
(66, 18, 106, 107, 2, 'com_modules.module.94', 'image hover effect', '{}'),
(67, 18, 108, 109, 2, 'com_modules.module.95', 'The Image', '{}'),
(68, 18, 110, 111, 2, 'com_modules.module.96', 'Third', '{}'),
(69, 18, 112, 113, 2, 'com_modules.module.97', 'our mission', '{}'),
(70, 27, 19, 20, 3, 'com_content.article.1', 'Mission', '{}'),
(71, 18, 114, 115, 2, 'com_modules.module.98', 'JM Best Features', '{}'),
(72, 18, 116, 117, 2, 'com_modules.module.99', 'vision', '{}'),
(73, 18, 118, 119, 2, 'com_modules.module.100', 'What we do - Pay Visit', '{}'),
(74, 18, 120, 121, 2, 'com_modules.module.101', 'Mission and Vision', '{}'),
(75, 18, 122, 123, 2, 'com_modules.module.102', 'About us', '{}'),
(76, 18, 124, 125, 2, 'com_modules.module.103', 'Visit CrDev', '{}'),
(77, 18, 126, 127, 2, 'com_modules.module.104', 'Link to what we do', '{}'),
(78, 18, 128, 129, 2, 'com_modules.module.105', 'What we do - Internship Ended', '{}'),
(79, 18, 130, 131, 2, 'com_modules.module.106', 'What we do - Accepting Offer', '{}'),
(80, 18, 132, 133, 2, 'com_modules.module.107', 'Send a message', '{}'),
(81, 18, 134, 135, 2, 'com_modules.module.108', 'Quick Links', '{}'),
(82, 18, 136, 137, 2, 'com_modules.module.109', 'Find us', '{}'),
(83, 18, 138, 139, 2, 'com_modules.module.110', 'Logo', '{}'),
(84, 8, 22, 25, 2, 'com_content.category.8', 'What we do - Pay Visit', '{}'),
(85, 8, 26, 27, 2, 'com_content.category.9', 'What we do - Internship Ended', '{}'),
(86, 8, 28, 29, 2, 'com_content.category.10', 'What we do - Accepting Offer', '{}'),
(87, 84, 23, 24, 3, 'com_content.article.2', 'Pay Visit to career Development office', '{}'),
(88, 18, 140, 141, 2, 'com_modules.module.111', 'New article', '{}'),
(89, 8, 30, 33, 2, 'com_content.category.11', 'Pay Visit', '{}'),
(90, 8, 34, 35, 2, 'com_content.category.12', 'Internship Ended', '{}'),
(91, 8, 36, 37, 2, 'com_content.category.13', 'Accepting Offer', '{}'),
(92, 8, 38, 39, 2, 'com_content.category.14', 'General', '{}'),
(93, 89, 31, 32, 3, 'com_content.article.3', 'why pay visit', '{}');

-- --------------------------------------------------------

--
-- Table structure for table `crdev_associations`
--

CREATE TABLE `crdev_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crdev_banners`
--

CREATE TABLE `crdev_banners` (
  `id` int(11) NOT NULL,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custombannercode` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sticky` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crdev_banner_clients`
--

CREATE TABLE `crdev_banner_clients` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extrainfo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crdev_banner_tracks`
--

CREATE TABLE `crdev_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) UNSIGNED NOT NULL,
  `banner_id` int(10) UNSIGNED NOT NULL,
  `count` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crdev_categories`
--

CREATE TABLE `crdev_categories` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `crdev_categories`
--

INSERT INTO `crdev_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1, 0, 0, 0, 25, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '{}', 906, '2018-06-28 18:11:52', 0, '0000-00-00 00:00:00', 0, '*', 1),
(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Mission and Vision', 'uncategorised', '', '', -2, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 906, '2018-06-28 18:11:52', 906, '2018-07-01 22:49:41', 0, '*', 1),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 906, '2018-06-28 18:11:52', 0, '0000-00-00 00:00:00', 0, '*', 1),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 906, '2018-06-28 18:11:52', 0, '0000-00-00 00:00:00', 0, '*', 1),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 906, '2018-06-28 18:11:52', 0, '0000-00-00 00:00:00', 0, '*', 1),
(7, 32, 1, 9, 10, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 906, '2018-06-28 18:11:52', 0, '0000-00-00 00:00:00', 0, '*', 1),
(8, 84, 1, 11, 12, 1, 'what-we-do-pay-visit', 'com_content', 'What we do - Pay Visit', 'what-we-do-pay-visit', '', '', -2, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 906, '2018-07-01 22:49:13', 0, '2018-07-01 22:49:13', 0, '*', 1),
(9, 85, 1, 13, 14, 1, 'what-we-do-internship-ended', 'com_content', 'What we do - Internship Ended', 'what-we-do-internship-ended', '', '', -2, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 906, '2018-07-01 22:49:24', 0, '2018-07-01 22:49:24', 0, '*', 1),
(10, 86, 1, 15, 16, 1, 'what-we-do-accepting-offer', 'com_content', 'What we do - Accepting Offer', 'what-we-do-accepting-offer', '', '', -2, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 906, '2018-07-01 22:49:30', 0, '2018-07-01 22:49:30', 0, '*', 1),
(11, 89, 1, 19, 20, 1, 'pay-visit', 'com_content', 'Pay Visit', 'pay-visit', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 906, '2018-07-04 16:36:56', 0, '2018-07-04 16:36:56', 0, '*', 1),
(12, 90, 1, 21, 22, 1, 'internship-ended', 'com_content', 'Internship Ended', 'internship-ended', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 906, '2018-07-04 16:37:17', 0, '2018-07-04 16:37:17', 0, '*', 1),
(13, 91, 1, 23, 24, 1, 'accepting-offer', 'com_content', 'Accepting Offer', 'accepting-offer', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 906, '2018-07-04 16:37:33', 0, '2018-07-04 16:37:33', 0, '*', 1),
(14, 92, 1, 17, 18, 1, 'general', 'com_content', 'General', 'general', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 906, '2018-07-04 16:37:58', 0, '2018-07-04 16:37:58', 0, '*', 1);

-- --------------------------------------------------------

--
-- Table structure for table `crdev_contact_details`
--

CREATE TABLE `crdev_contact_details` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `con_position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `suburb` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `misc` mediumtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_con` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `webpage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Set if contact is featured.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crdev_content`
--

CREATE TABLE `crdev_content` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `introtext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `fulltext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribs` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `crdev_content`
--

INSERT INTO `crdev_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(1, 70, 'Mission', 'mission', '<p>Remember, form follows function, in mission statements, as in all business. Make it work for your business. ...</p>\r\n<p>Having great customer service is way harder than writing that into a mission statement.</p>\r\n<p>Read other companies\' mission statements, but write a statement that is about you and</p>\r\n<p>not some other company.</p>\r\n<p> </p>', '', -2, 2, '2018-06-28 22:26:04', 906, '', '2018-06-29 22:11:07', 906, 0, '0000-00-00 00:00:00', '2018-06-28 22:26:04', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 3, 0, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 1, '*', ''),
(2, 87, 'Pay Visit to career Development office', 'pay-visit-to-career-development-office', '<h3>WHY SHOULD I PAY A VISIT TO THE CAREER DEVELOPMENT OFFICE?</h3>\r\n<ol>\r\n<li>Get access to professionals who are specifically trained to assist you with your career-related concerns.</li>\r\n<li>It’s the appropriate office on campus that provides useful information to enable you figure out what you want to do with your life, not only when you’re about to start your job hunt, but also when you want to learn more about yourself - your interests, skills, values, personality.</li>\r\n<li>We work closely with employers who may someday hire you in order to develop internship and full-time opportunities for your future career.</li>\r\n<li>Our Career Development staffs are ever ready to interact with you on daily basis so as to be conversant with your skills, strengths, weaknesses, potential, growth and development areas, etc. for reference to an employer who may be looking for your caliber to fill a specific position.</li>\r\n<li>Career Development Office will not offer you a job; job searching is hard work and requires much effort on your part. We will expose you to a world of opportunities, resources and needed guidance which you will utilise to explore and develop yourself, in order to carve a thriving career.</li>\r\n<li>Attend workshops offered by Career Development Office starting in your first year. The Career Development Office is for all students in the university, not just final year students. If you wait until your last semester to start visiting the Career Development Office, you have waited too long and may not find the assistance you are looking for. Get in early - meet the staff - and start developing your career early, and you will be put miles ahead of your mates.</li>\r\n</ol>\r\n<p><strong>You are paying for it! Your fees have paid for the support the Career Development Office provides. Therefore, not taking advantage of it simply means you are not utilising some part of your fees. If you are struggling with a career decision, and you need help on your resume, or you aren’t sure how to get started with the internship and job search, you must contact Career Development Office to schedule an appointment at Room 2, Annan Block, next to the Procurement Office or send a mail to career development.office@ttu.edu.gh or career development.office@gmail.com. Let us know if we are not making you feel welcome.</strong></p>', '', -2, 8, '2018-07-01 22:55:19', 906, '', '2018-07-01 23:03:53', 906, 0, '0000-00-00 00:00:00', '2018-07-01 22:55:19', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 3, 0, '', '', 1, 2, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(3, 93, 'why pay visit', 'why-pay-visit', '<p>WHY SHOULD I PAY A VISIT TO THE CAREER DEVELOPMENT OFFICE?</p>\r\n<p>1. Get access to professionals who are specifically trained to assist you with your career-related concerns.</p>\r\n<p>2. It’s the appropriate office on campus that provides useful information to enable you figure out what you want to do with your life, not only when you’re about to start your job hunt, but also when you want to learn more about yourself - your interests, skills, values, personality.</p>\r\n<p>3. We work closely with employers who may someday hire you in order to develop internship and full-time opportunities for your future career.</p>\r\n<p>4. Our Career Development staffs are ever ready to interact with you on daily basis so as to be conversant with your skills, strengths, weaknesses, potential, growth and development areas, etc. for reference to an employer who may be looking for your caliber to fill a specific position.</p>\r\n<p>5. Career Development Office will not offer you a job; job searching is hard work and requires much effort on your part. We will expose you to a world of opportunities, resources and needed guidance which you will utilise to explore and develop yourself, in order to carve a thriving career.</p>\r\n<p>6. Attend workshops offered by Career Development Office starting in your first year. The Career Development Office is for all students in the university, not just final year students. If you wait until your last semester to start visiting the Career Development Office, you have waited too long and may not find the assistance you are looking for. Get in early - meet the staff - and start developing your career early, and you will be put miles ahead of your mates.</p>\r\n<p>7. You are paying for it! Your fees have paid for the support the Career Development Office provides. Therefore, not taking advantage of it simply means you are not utilising some part of your fees.</p>\r\n<p>If you are struggling with a career decision, and you need help on your resume, or you aren’t sure how to get started with the internship and job search, you must contact Career Development Office to schedule an appointment at Room 2, Annan Block, next to the Procurement Office or send a mail to career development.office@ttu.edu.gh or career <a href=\"mailto:development.office@gmail.com.\">development.office@gmail.com. </a></p>\r\n<p>Let us know if we are not making you feel welcome.</p>', '', 1, 11, '2018-07-04 17:01:50', 906, '', '2018-07-04 17:01:50', 0, 0, '0000-00-00 00:00:00', '2018-07-04 17:01:50', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 1, 0, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', '');

-- --------------------------------------------------------

--
-- Table structure for table `crdev_contentitem_tag_map`
--

CREATE TABLE `crdev_contentitem_tag_map` (
  `type_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_content_id` int(10) UNSIGNED NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) UNSIGNED NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Maps items from content tables to tags';

-- --------------------------------------------------------

--
-- Table structure for table `crdev_content_frontpage`
--

CREATE TABLE `crdev_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `crdev_content_frontpage`
--

INSERT INTO `crdev_content_frontpage` (`content_id`, `ordering`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `crdev_content_rating`
--

CREATE TABLE `crdev_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `rating_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lastip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crdev_content_types`
--

CREATE TABLE `crdev_content_types` (
  `type_id` int(10) UNSIGNED NOT NULL,
  `type_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rules` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_mappings` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `router` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'JSON string for com_contenthistory options'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `crdev_content_types`
--

INSERT INTO `crdev_content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`) VALUES
(1, 'Article', 'com_content.article', '{\"special\":{\"dbtable\":\"#__content\",\"key\":\"id\",\"type\":\"Content\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"state\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"introtext\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"attribs\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"asset_id\"}, \"special\":{\"fulltext\":\"fulltext\"}}', 'ContentHelperRoute::getArticleRoute', '{\"formFile\":\"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(2, 'Contact', 'com_contact.contact', '{\"special\":{\"dbtable\":\"#__contact_details\",\"key\":\"id\",\"type\":\"Contact\",\"prefix\":\"ContactTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"address\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"image\", \"core_urls\":\"webpage\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"con_position\":\"con_position\",\"suburb\":\"suburb\",\"state\":\"state\",\"country\":\"country\",\"postcode\":\"postcode\",\"telephone\":\"telephone\",\"fax\":\"fax\",\"misc\":\"misc\",\"email_to\":\"email_to\",\"default_con\":\"default_con\",\"user_id\":\"user_id\",\"mobile\":\"mobile\",\"sortname1\":\"sortname1\",\"sortname2\":\"sortname2\",\"sortname3\":\"sortname3\"}}', 'ContactHelperRoute::getContactRoute', '{\"formFile\":\"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml\",\"hideFields\":[\"default_con\",\"checked_out\",\"checked_out_time\",\"version\",\"xreference\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"], \"displayLookup\":[ {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ] }'),
(3, 'Newsfeed', 'com_newsfeeds.newsfeed', '{\"special\":{\"dbtable\":\"#__newsfeeds\",\"key\":\"id\",\"type\":\"Newsfeed\",\"prefix\":\"NewsfeedsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"numarticles\":\"numarticles\",\"cache_time\":\"cache_time\",\"rtl\":\"rtl\"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute', '{\"formFile\":\"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml\",\"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(4, 'User', 'com_users.user', '{\"special\":{\"dbtable\":\"#__users\",\"key\":\"id\",\"type\":\"User\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"null\",\"core_alias\":\"username\",\"core_created_time\":\"registerdate\",\"core_modified_time\":\"lastvisitDate\",\"core_body\":\"null\", \"core_hits\":\"null\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"access\":\"null\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"null\", \"core_language\":\"null\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"null\", \"core_ordering\":\"null\", \"core_metakey\":\"null\", \"core_metadesc\":\"null\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{}}', 'UsersHelperRoute::getUserRoute', ''),
(5, 'Article Category', 'com_content.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'ContentHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(6, 'Contact Category', 'com_contact.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'ContactHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(7, 'Newsfeeds Category', 'com_newsfeeds.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'NewsfeedsHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(8, 'Tag', 'com_tags.tag', '{\"special\":{\"dbtable\":\"#__tags\",\"key\":\"tag_id\",\"type\":\"Tag\",\"prefix\":\"TagsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\"}}', 'TagsHelperRoute::getTagRoute', '{\"formFile\":\"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"lft\", \"rgt\", \"level\", \"path\", \"urls\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),
(9, 'Banner', 'com_banners.banner', '{\"special\":{\"dbtable\":\"#__banners\",\"key\":\"id\",\"type\":\"Banner\",\"prefix\":\"BannersTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"null\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"imptotal\":\"imptotal\", \"impmade\":\"impmade\", \"clicks\":\"clicks\", \"clickurl\":\"clickurl\", \"custombannercode\":\"custombannercode\", \"cid\":\"cid\", \"purchase_type\":\"purchase_type\", \"track_impressions\":\"track_impressions\", \"track_clicks\":\"track_clicks\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"reset\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"imptotal\", \"impmade\", \"reset\"], \"convertToInt\":[\"publish_up\", \"publish_down\", \"ordering\"], \"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"cid\",\"targetTable\":\"#__banner_clients\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(10, 'Banners Category', 'com_banners.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\": {\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(11, 'Banner Client', 'com_banners.client', '{\"special\":{\"dbtable\":\"#__banner_clients\",\"key\":\"id\",\"type\":\"Client\",\"prefix\":\"BannersTable\"}}', '', '', '', '{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\"], \"ignoreChanges\":[\"checked_out\", \"checked_out_time\"], \"convertToInt\":[], \"displayLookup\":[]}'),
(12, 'User Notes', 'com_users.note', '{\"special\":{\"dbtable\":\"#__user_notes\",\"key\":\"id\",\"type\":\"Note\",\"prefix\":\"UsersTable\"}}', '', '', '', '{\"formFile\":\"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\"], \"convertToInt\":[\"publish_up\", \"publish_down\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),
(13, 'User Notes Category', 'com_users.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');

-- --------------------------------------------------------

--
-- Table structure for table `crdev_core_log_searches`
--

CREATE TABLE `crdev_core_log_searches` (
  `search_term` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crdev_extensions`
--

CREATE TABLE `crdev_extensions` (
  `extension_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Parent package ID for extensions installed as a package.',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `system_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `crdev_extensions`
--

INSERT INTO `crdev_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 0, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{\"name\":\"com_mailto\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MAILTO_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mailto\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 0, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{\"name\":\"com_wrapper\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"wrapper\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 0, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{\"name\":\"com_admin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_ADMIN_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 0, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{\"name\":\"com_banners\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"banners\"}', '{\"purchase_type\":\"3\",\"track_impressions\":\"0\",\"track_clicks\":\"0\",\"metakey_prefix\":\"\",\"save_history\":\"1\",\"history_limit\":10}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 0, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{\"name\":\"com_cache\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CACHE_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 0, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{\"name\":\"com_categories\",\"type\":\"component\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 0, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{\"name\":\"com_checkin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CHECKIN_XML_DESCRIPTION\",\"group\":\"\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 0, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{\"name\":\"com_contact\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}', '{\"contact_layout\":\"_:default\",\"show_contact_category\":\"hide\",\"save_history\":\"1\",\"history_limit\":10,\"show_contact_list\":\"0\",\"presentation_style\":\"sliders\",\"show_tags\":\"1\",\"show_info\":\"1\",\"show_name\":\"1\",\"show_position\":\"1\",\"show_email\":\"0\",\"show_street_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"1\",\"show_postcode\":\"1\",\"show_country\":\"1\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"1\",\"show_webpage\":\"1\",\"show_image\":\"1\",\"show_misc\":\"1\",\"image\":\"\",\"allow_vcard\":\"0\",\"show_articles\":\"0\",\"articles_display_num\":\"10\",\"show_profile\":\"0\",\"show_user_custom_fields\":[\"-1\"],\"show_links\":\"0\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"contact_icons\":\"0\",\"icon_address\":\"\",\"icon_email\":\"\",\"icon_telephone\":\"\",\"icon_mobile\":\"\",\"icon_fax\":\"\",\"icon_misc\":\"\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"0\",\"maxLevel\":\"-1\",\"show_subcat_desc\":\"1\",\"show_empty_categories\":\"0\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_subcat_desc_cat\":\"1\",\"show_empty_categories_cat\":\"0\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"0\",\"show_pagination_limit\":\"0\",\"show_headings\":\"1\",\"show_image_heading\":\"0\",\"show_position_headings\":\"1\",\"show_email_headings\":\"0\",\"show_telephone_headings\":\"1\",\"show_mobile_headings\":\"0\",\"show_fax_headings\":\"0\",\"show_suburb_headings\":\"1\",\"show_state_headings\":\"1\",\"show_country_headings\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"initial_sort\":\"ordering\",\"captcha\":\"\",\"show_email_form\":\"1\",\"show_email_copy\":\"0\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"1\",\"custom_reply\":\"0\",\"redirect\":\"\",\"show_feed_link\":\"1\",\"sef_advanced\":0,\"sef_ids\":0,\"custom_fields_enable\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 0, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{\"name\":\"com_cpanel\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CPANEL_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 0, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{\"name\":\"com_installer\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_INSTALLER_XML_DESCRIPTION\",\"group\":\"\"}', '{\"show_jed_info\":\"1\",\"cachetimeout\":\"6\",\"minimum_stability\":\"4\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 0, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{\"name\":\"com_languages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}', '{\"administrator\":\"en-GB\",\"site\":\"en-GB\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 0, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{\"name\":\"com_login\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 0, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{\"name\":\"com_media\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"media\"}', '{\"upload_extensions\":\"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,TXT,XCF,XLS\",\"upload_maxsize\":\"10\",\"file_path\":\"images\",\"image_path\":\"images\",\"restrict_uploads\":\"1\",\"allowed_media_usergroup\":\"3\",\"check_mime\":\"1\",\"image_extensions\":\"bmp,gif,jpg,png\",\"ignore_extensions\":\"\",\"upload_mime\":\"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip\",\"upload_mime_illegal\":\"text\\/html\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 0, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{\"name\":\"com_menus\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MENUS_XML_DESCRIPTION\",\"group\":\"\"}', '{\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 0, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{\"name\":\"com_messages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MESSAGES_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 0, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{\"name\":\"com_modules\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MODULES_XML_DESCRIPTION\",\"group\":\"\"}', '{\"redirect_edit\":\"site\",\"adminlangfilter\":0}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 0, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{\"name\":\"com_newsfeeds\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}', '{\"newsfeed_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_feed_image\":\"1\",\"show_feed_description\":\"1\",\"show_item_description\":\"1\",\"feed_character_count\":\"0\",\"feed_display_order\":\"des\",\"float_first\":\"right\",\"float_second\":\"right\",\"show_tags\":\"1\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"0\",\"show_subcat_desc\":\"1\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_headings\":\"1\",\"show_articles\":\"0\",\"show_link\":\"1\",\"show_pagination\":\"1\",\"show_pagination_results\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 0, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{\"name\":\"com_plugins\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_PLUGINS_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 0, 'com_search', 'component', 'com_search', '', 1, 1, 1, 0, '{\"name\":\"com_search\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_SEARCH_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"search\"}', '{\"enabled\":\"0\",\"search_phrases\":\"1\",\"search_areas\":\"1\",\"show_date\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 0, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{\"name\":\"com_templates\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\"}', '{\"template_positions_display\":\"1\",\"upload_limit\":\"10\",\"image_formats\":\"gif,bmp,jpg,jpeg,png\",\"source_formats\":\"txt,less,ini,xml,js,php,css,scss,sass,yaml,twig\",\"font_formats\":\"woff,ttf,otf,eot,svg\",\"compressed_formats\":\"zip\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 0, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{\"name\":\"com_content\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}', '{\"article_layout\":\"_:default\",\"show_title\":\"1\",\"link_titles\":\"1\",\"show_intro\":\"1\",\"info_block_position\":\"0\",\"info_block_show_title\":\"1\",\"show_category\":\"1\",\"link_category\":\"1\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_associations\":\"0\",\"flags\":\"1\",\"show_author\":\"1\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"1\",\"show_item_navigation\":\"1\",\"show_vote\":\"0\",\"show_readmore\":\"1\",\"show_readmore_title\":\"1\",\"readmore_limit\":\"100\",\"show_tags\":\"1\",\"show_icons\":\"1\",\"show_print_icon\":\"1\",\"show_email_icon\":\"0\",\"show_hits\":\"1\",\"show_noauth\":\"0\",\"urls_position\":\"0\",\"captcha\":\"\",\"show_publishing_options\":\"1\",\"show_article_options\":\"1\",\"save_history\":\"1\",\"history_limit\":10,\"show_urls_images_frontend\":\"0\",\"show_urls_images_backend\":\"1\",\"targeta\":0,\"targetb\":0,\"targetc\":0,\"float_intro\":\"left\",\"float_fulltext\":\"left\",\"category_layout\":\"_:blog\",\"show_category_heading_title_text\":\"1\",\"show_category_title\":\"0\",\"show_description\":\"0\",\"show_description_image\":\"0\",\"maxLevel\":\"1\",\"show_empty_categories\":\"0\",\"show_no_articles\":\"1\",\"show_subcat_desc\":\"1\",\"show_cat_num_articles\":\"0\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_articles_cat\":\"1\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"0\",\"show_subcategory_content\":\"0\",\"show_pagination_limit\":\"1\",\"filter_field\":\"hide\",\"show_headings\":\"1\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"1\",\"list_show_author\":\"1\",\"orderby_pri\":\"order\",\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_featured\":\"show\",\"show_feed_link\":\"1\",\"feed_summary\":\"0\",\"feed_show_readmore\":\"0\",\"sef_advanced\":0,\"sef_ids\":0,\"custom_fields_enable\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 0, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{\"name\":\"com_config\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONFIG_XML_DESCRIPTION\",\"group\":\"\"}', '{\"filters\":{\"1\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"9\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"6\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"7\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"2\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"3\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"4\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"5\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"8\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 0, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{\"name\":\"com_redirect\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 0, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{\"name\":\"com_users\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_USERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"users\"}', '{\"allowUserRegistration\":\"0\",\"new_usertype\":\"2\",\"guest_usergroup\":\"9\",\"sendpassword\":\"0\",\"useractivation\":\"2\",\"mail_to_admin\":\"1\",\"captcha\":\"\",\"frontend_userparams\":\"1\",\"site_language\":\"0\",\"change_login_name\":\"0\",\"reset_count\":\"10\",\"reset_time\":\"1\",\"minimum_length\":\"4\",\"minimum_integers\":\"0\",\"minimum_symbols\":\"0\",\"minimum_uppercase\":\"0\",\"save_history\":\"1\",\"history_limit\":5,\"mailSubjectPrefix\":\"\",\"mailBodySuffix\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 0, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{\"name\":\"com_finder\",\"type\":\"component\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"finder\"}', '{\"enabled\":\"0\",\"show_description\":\"1\",\"description_length\":255,\"allow_empty_query\":\"0\",\"show_url\":\"1\",\"show_autosuggest\":\"1\",\"show_suggested_query\":\"1\",\"show_explained_query\":\"1\",\"show_advanced\":\"1\",\"show_advanced_tips\":\"1\",\"expand_advanced\":\"0\",\"show_date_filters\":\"0\",\"sort_order\":\"relevance\",\"sort_direction\":\"desc\",\"highlight_terms\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\",\"batch_size\":\"50\",\"memory_table_limit\":30000,\"title_multiplier\":\"1.7\",\"text_multiplier\":\"0.7\",\"meta_multiplier\":\"1.2\",\"path_multiplier\":\"2.0\",\"misc_multiplier\":\"0.3\",\"stem\":\"1\",\"stemmer\":\"snowball\",\"enable_logging\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 0, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{\"name\":\"com_joomlaupdate\",\"type\":\"component\",\"creationDate\":\"February 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.2\",\"description\":\"COM_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}', '{\"updatesource\":\"default\",\"customurl\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(29, 0, 'com_tags', 'component', 'com_tags', '', 1, 1, 1, 1, '{\"name\":\"com_tags\",\"type\":\"component\",\"creationDate\":\"December 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"COM_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}', '{\"tag_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_tag_title\":\"0\",\"tag_list_show_tag_image\":\"0\",\"tag_list_show_tag_description\":\"0\",\"tag_list_image\":\"\",\"tag_list_orderby\":\"title\",\"tag_list_orderby_direction\":\"ASC\",\"show_headings\":\"0\",\"tag_list_show_date\":\"0\",\"tag_list_show_item_image\":\"0\",\"tag_list_show_item_description\":\"0\",\"tag_list_item_maximum_characters\":0,\"return_any_or_all\":\"1\",\"include_children\":\"0\",\"maximum\":200,\"tag_list_language_filter\":\"all\",\"tags_layout\":\"_:default\",\"all_tags_orderby\":\"title\",\"all_tags_orderby_direction\":\"ASC\",\"all_tags_show_tag_image\":\"0\",\"all_tags_show_tag_descripion\":\"0\",\"all_tags_tag_maximum_characters\":20,\"all_tags_show_tag_hits\":\"0\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"tag_field_ajax_mode\":\"1\",\"show_feed_link\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(30, 0, 'com_contenthistory', 'component', 'com_contenthistory', '', 1, 1, 1, 0, '{\"name\":\"com_contenthistory\",\"type\":\"component\",\"creationDate\":\"May 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_CONTENTHISTORY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contenthistory\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(31, 0, 'com_ajax', 'component', 'com_ajax', '', 1, 1, 1, 1, '{\"name\":\"com_ajax\",\"type\":\"component\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_AJAX_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"ajax\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(32, 0, 'com_postinstall', 'component', 'com_postinstall', '', 1, 1, 1, 1, '{\"name\":\"com_postinstall\",\"type\":\"component\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_POSTINSTALL_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(33, 0, 'com_fields', 'component', 'com_fields', '', 1, 1, 1, 0, '{\"name\":\"com_fields\",\"type\":\"component\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"COM_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(34, 0, 'com_associations', 'component', 'com_associations', '', 1, 1, 1, 0, '{\"name\":\"com_associations\",\"type\":\"component\",\"creationDate\":\"Januar 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"COM_ASSOCIATIONS_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 0, 'LIB_PHPUTF8', 'library', 'phputf8', '', 0, 1, 1, 1, '{\"name\":\"LIB_PHPUTF8\",\"type\":\"library\",\"creationDate\":\"2006\",\"author\":\"Harry Fuecks\",\"copyright\":\"Copyright various authors\",\"authorEmail\":\"hfuecks@gmail.com\",\"authorUrl\":\"http:\\/\\/sourceforge.net\\/projects\\/phputf8\",\"version\":\"0.5\",\"description\":\"LIB_PHPUTF8_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phputf8\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 0, 'LIB_JOOMLA', 'library', 'joomla', '', 0, 1, 1, 1, '{\"name\":\"LIB_JOOMLA\",\"type\":\"library\",\"creationDate\":\"2008\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"https:\\/\\/www.joomla.org\",\"version\":\"13.1\",\"description\":\"LIB_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '{\"mediaversion\":\"76cee6faa50260dcbd137909f7c9d3bc\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(104, 0, 'LIB_IDNA', 'library', 'idna_convert', '', 0, 1, 1, 1, '{\"name\":\"LIB_IDNA\",\"type\":\"library\",\"creationDate\":\"2004\",\"author\":\"phlyLabs\",\"copyright\":\"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de\",\"authorEmail\":\"phlymail@phlylabs.de\",\"authorUrl\":\"http:\\/\\/phlylabs.de\",\"version\":\"0.8.0\",\"description\":\"LIB_IDNA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"idna_convert\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(105, 0, 'FOF', 'library', 'fof', '', 0, 1, 1, 1, '{\"name\":\"FOF\",\"type\":\"library\",\"creationDate\":\"2015-04-22 13:15:32\",\"author\":\"Nicholas K. Dionysopoulos \\/ Akeeba Ltd\",\"copyright\":\"(C)2011-2015 Nicholas K. Dionysopoulos\",\"authorEmail\":\"nicholas@akeebabackup.com\",\"authorUrl\":\"https:\\/\\/www.akeebabackup.com\",\"version\":\"2.4.3\",\"description\":\"LIB_FOF_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fof\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(106, 0, 'LIB_PHPASS', 'library', 'phpass', '', 0, 1, 1, 1, '{\"name\":\"LIB_PHPASS\",\"type\":\"library\",\"creationDate\":\"2004-2006\",\"author\":\"Solar Designer\",\"copyright\":\"\",\"authorEmail\":\"solar@openwall.com\",\"authorUrl\":\"http:\\/\\/www.openwall.com\\/phpass\\/\",\"version\":\"0.3\",\"description\":\"LIB_PHPASS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phpass\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 0, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_archive\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_archive\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 0, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_latest\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 0, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_popular\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_popular\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 0, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '{\"name\":\"mod_banners\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_banners\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 0, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{\"name\":\"mod_breadcrumbs\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BREADCRUMBS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_breadcrumbs\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 0, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_custom\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 0, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 0, '{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_feed\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 0, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 0, '{\"name\":\"mod_footer\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FOOTER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_footer\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 0, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_login\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 0, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_menu\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 0, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_news\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_news\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 0, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{\"name\":\"mod_random_image\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RANDOM_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_random_image\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 0, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{\"name\":\"mod_related_items\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RELATED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_related_items\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 0, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{\"name\":\"mod_search\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SEARCH_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_search\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 0, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{\"name\":\"mod_stats\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_stats\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 0, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{\"name\":\"mod_syndicate\",\"type\":\"module\",\"creationDate\":\"May 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SYNDICATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_syndicate\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 0, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 0, '{\"name\":\"mod_users_latest\",\"type\":\"module\",\"creationDate\":\"December 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_USERS_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_users_latest\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 0, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{\"name\":\"mod_whosonline\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WHOSONLINE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_whosonline\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 0, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{\"name\":\"mod_wrapper\",\"type\":\"module\",\"creationDate\":\"October 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_wrapper\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 0, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_category\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_category\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 0, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_categories\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_categories\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 0, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{\"name\":\"mod_languages\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"MOD_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_languages\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 0, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{\"name\":\"mod_finder\",\"type\":\"module\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_finder\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 0, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_custom\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 0, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_feed\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 0, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{\"name\":\"mod_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_latest\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 0, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{\"name\":\"mod_logged\",\"type\":\"module\",\"creationDate\":\"January 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGGED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_logged\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 0, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"March 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_login\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 0, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_menu\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 0, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{\"name\":\"mod_popular\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_popular\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 0, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{\"name\":\"mod_quickicon\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_QUICKICON_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_quickicon\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 0, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{\"name\":\"mod_status\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_status\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 0, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{\"name\":\"mod_submenu\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SUBMENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_submenu\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 0, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{\"name\":\"mod_title\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TITLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_title\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 0, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{\"name\":\"mod_toolbar\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TOOLBAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_toolbar\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 0, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{\"name\":\"mod_multilangstatus\",\"type\":\"module\",\"creationDate\":\"September 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MULTILANGSTATUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_multilangstatus\"}', '{\"cache\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 0, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{\"name\":\"mod_version\",\"type\":\"module\",\"creationDate\":\"January 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_VERSION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_version\"}', '{\"format\":\"short\",\"product\":\"1\",\"cache\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(315, 0, 'mod_stats_admin', 'module', 'mod_stats_admin', '', 1, 1, 1, 0, '{\"name\":\"mod_stats_admin\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_stats_admin\"}', '{\"serverinfo\":\"0\",\"siteinfo\":\"0\",\"counter\":\"0\",\"increase\":\"0\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(316, 0, 'mod_tags_popular', 'module', 'mod_tags_popular', '', 0, 1, 1, 0, '{\"name\":\"mod_tags_popular\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_tags_popular\"}', '{\"maximum\":\"5\",\"timeframe\":\"alltime\",\"owncache\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(317, 0, 'mod_tags_similar', 'module', 'mod_tags_similar', '', 0, 1, 1, 0, '{\"name\":\"mod_tags_similar\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_SIMILAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_tags_similar\"}', '{\"maximum\":\"5\",\"matchtype\":\"any\",\"owncache\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(318, 0, 'mod_sampledata', 'module', 'mod_sampledata', '', 1, 1, 1, 0, '{\"name\":\"mod_sampledata\",\"type\":\"module\",\"creationDate\":\"July 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.0\",\"description\":\"MOD_SAMPLEDATA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_sampledata\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 0, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{\"name\":\"plg_authentication_gmail\",\"type\":\"plugin\",\"creationDate\":\"February 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_GMAIL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"gmail\"}', '{\"applysuffix\":\"0\",\"suffix\":\"\",\"verifypeer\":\"1\",\"user_blacklist\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 0, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{\"name\":\"plg_authentication_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 0, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{\"name\":\"plg_authentication_ldap\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LDAP_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"ldap\"}', '{\"host\":\"\",\"port\":\"389\",\"use_ldapV3\":\"0\",\"negotiate_tls\":\"0\",\"no_referrals\":\"0\",\"auth_method\":\"bind\",\"base_dn\":\"\",\"search_string\":\"\",\"users_dn\":\"\",\"username\":\"admin\",\"password\":\"bobby7\",\"ldap_fullname\":\"fullName\",\"ldap_email\":\"mail\",\"ldap_uid\":\"uid\"}', '', '', 0, '0000-00-00 00:00:00', 3, 0);
INSERT INTO `crdev_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(403, 0, 'plg_content_contact', 'plugin', 'contact', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_contact\",\"type\":\"plugin\",\"creationDate\":\"January 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.2\",\"description\":\"PLG_CONTENT_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(404, 0, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_emailcloak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"emailcloak\"}', '{\"mode\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(406, 0, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_loadmodule\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOADMODULE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"loadmodule\"}', '{\"style\":\"xhtml\"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 0, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagebreak\"}', '{\"title\":\"1\",\"multipage_toc\":\"1\",\"showall\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 0, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_pagenavigation\",\"type\":\"plugin\",\"creationDate\":\"January 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_PAGENAVIGATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagenavigation\"}', '{\"position\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 0, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 0, 1, 0, '{\"name\":\"plg_content_vote\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_VOTE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"vote\"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 0, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{\"name\":\"plg_editors_codemirror\",\"type\":\"plugin\",\"creationDate\":\"28 March 2011\",\"author\":\"Marijn Haverbeke\",\"copyright\":\"Copyright (C) 2014 - 2017 by Marijn Haverbeke <marijnh@gmail.com> and others\",\"authorEmail\":\"marijnh@gmail.com\",\"authorUrl\":\"http:\\/\\/codemirror.net\\/\",\"version\":\"5.38.0\",\"description\":\"PLG_CODEMIRROR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"codemirror\"}', '{\"lineNumbers\":\"1\",\"lineWrapping\":\"1\",\"matchTags\":\"1\",\"matchBrackets\":\"1\",\"marker-gutter\":\"1\",\"autoCloseTags\":\"1\",\"autoCloseBrackets\":\"1\",\"autoFocus\":\"1\",\"theme\":\"default\",\"tabmode\":\"indent\"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 0, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{\"name\":\"plg_editors_none\",\"type\":\"plugin\",\"creationDate\":\"September 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_NONE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"none\"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 0, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 0, '{\"name\":\"plg_editors_tinymce\",\"type\":\"plugin\",\"creationDate\":\"2005-2017\",\"author\":\"Ephox Corporation\",\"copyright\":\"Ephox Corporation\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"http:\\/\\/www.tinymce.com\",\"version\":\"4.5.8\",\"description\":\"PLG_TINY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tinymce\"}', '{\"configuration\":{\"toolbars\":{\"2\":{\"toolbar1\":[\"bold\",\"underline\",\"strikethrough\",\"|\",\"undo\",\"redo\",\"|\",\"bullist\",\"numlist\",\"|\",\"pastetext\"]},\"1\":{\"menu\":[\"edit\",\"insert\",\"view\",\"format\",\"table\",\"tools\"],\"toolbar1\":[\"bold\",\"italic\",\"underline\",\"strikethrough\",\"|\",\"alignleft\",\"aligncenter\",\"alignright\",\"alignjustify\",\"|\",\"formatselect\",\"|\",\"bullist\",\"numlist\",\"|\",\"outdent\",\"indent\",\"|\",\"undo\",\"redo\",\"|\",\"link\",\"unlink\",\"anchor\",\"code\",\"|\",\"hr\",\"table\",\"|\",\"subscript\",\"superscript\",\"|\",\"charmap\",\"pastetext\",\"preview\"]},\"0\":{\"menu\":[\"edit\",\"insert\",\"view\",\"format\",\"table\",\"tools\"],\"toolbar1\":[\"bold\",\"italic\",\"underline\",\"strikethrough\",\"|\",\"alignleft\",\"aligncenter\",\"alignright\",\"alignjustify\",\"|\",\"styleselect\",\"|\",\"formatselect\",\"fontselect\",\"fontsizeselect\",\"|\",\"searchreplace\",\"|\",\"bullist\",\"numlist\",\"|\",\"outdent\",\"indent\",\"|\",\"undo\",\"redo\",\"|\",\"link\",\"unlink\",\"anchor\",\"image\",\"|\",\"code\",\"|\",\"forecolor\",\"backcolor\",\"|\",\"fullscreen\",\"|\",\"table\",\"|\",\"subscript\",\"superscript\",\"|\",\"charmap\",\"emoticons\",\"media\",\"hr\",\"ltr\",\"rtl\",\"|\",\"cut\",\"copy\",\"paste\",\"pastetext\",\"|\",\"visualchars\",\"visualblocks\",\"nonbreaking\",\"blockquote\",\"template\",\"|\",\"print\",\"preview\",\"codesample\",\"insertdatetime\",\"removeformat\"]}},\"setoptions\":{\"2\":{\"access\":[\"1\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"0\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"},\"1\":{\"access\":[\"6\",\"2\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"0\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"},\"0\":{\"access\":[\"7\",\"4\",\"8\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"1\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"}}},\"sets_amount\":3,\"html_height\":\"550\",\"html_width\":\"750\"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 0, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_article\",\"type\":\"plugin\",\"creationDate\":\"October 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_ARTICLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"article\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 0, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_image\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"image\"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 0, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagebreak\"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 0, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_readmore\",\"type\":\"plugin\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_READMORE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"readmore\"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(417, 0, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_categories\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"categories\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 0, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_contacts\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contacts\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 0, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_content\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 0, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 0, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{\"name\":\"plg_system_languagefilter\",\"type\":\"plugin\",\"creationDate\":\"July 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"languagefilter\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 0, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 0, 1, 0, '{\"name\":\"plg_system_p3p\",\"type\":\"plugin\",\"creationDate\":\"September 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_P3P_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"p3p\"}', '{\"headers\":\"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM\"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 0, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{\"name\":\"plg_system_cache\",\"type\":\"plugin\",\"creationDate\":\"February 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CACHE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"cache\"}', '{\"browsercache\":\"0\",\"cachetime\":\"15\"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 0, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_debug\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_DEBUG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"debug\"}', '{\"profile\":\"1\",\"queries\":\"1\",\"memory\":\"1\",\"language_files\":\"1\",\"language_strings\":\"1\",\"strip-first\":\"1\",\"strip-prefix\":\"\",\"strip-suffix\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 0, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{\"name\":\"plg_system_log\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"log\"}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 0, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 0, 1, 1, '{\"name\":\"plg_system_redirect\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"redirect\"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(428, 0, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{\"name\":\"plg_system_remember\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_REMEMBER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"remember\"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 0, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_sef\",\"type\":\"plugin\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEF_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sef\"}', '', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 0, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{\"name\":\"plg_system_logout\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"logout\"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(431, 0, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 0, '{\"name\":\"plg_user_contactcreator\",\"type\":\"plugin\",\"creationDate\":\"August 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTACTCREATOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contactcreator\"}', '{\"autowebpage\":\"\",\"category\":\"34\",\"autopublish\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 0, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{\"name\":\"plg_user_joomla\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '{\"autoregister\":\"1\",\"mail_to_user\":\"1\",\"forceLogout\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 0, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 0, '{\"name\":\"plg_user_profile\",\"type\":\"plugin\",\"creationDate\":\"January 2008\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_PROFILE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"profile\"}', '{\"register-require_address1\":\"1\",\"register-require_address2\":\"1\",\"register-require_city\":\"1\",\"register-require_region\":\"1\",\"register-require_country\":\"1\",\"register-require_postal_code\":\"1\",\"register-require_phone\":\"1\",\"register-require_website\":\"1\",\"register-require_favoritebook\":\"1\",\"register-require_aboutme\":\"1\",\"register-require_tos\":\"1\",\"register-require_dob\":\"1\",\"profile-require_address1\":\"1\",\"profile-require_address2\":\"1\",\"profile-require_city\":\"1\",\"profile-require_region\":\"1\",\"profile-require_country\":\"1\",\"profile-require_postal_code\":\"1\",\"profile-require_phone\":\"1\",\"profile-require_website\":\"1\",\"profile-require_favoritebook\":\"1\",\"profile-require_aboutme\":\"1\",\"profile-require_tos\":\"1\",\"profile-require_dob\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 0, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{\"name\":\"plg_extension_joomla\",\"type\":\"plugin\",\"creationDate\":\"May 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 0, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 0, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{\"name\":\"plg_system_languagecode\",\"type\":\"plugin\",\"creationDate\":\"November 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"languagecode\"}', '', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 0, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{\"name\":\"plg_quickicon_joomlaupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomlaupdate\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 0, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{\"name\":\"plg_quickicon_extensionupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"extensionupdate\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 0, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 0, 1, 0, '{\"name\":\"plg_captcha_recaptcha\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.4.0\",\"description\":\"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"recaptcha\"}', '{\"public_key\":\"\",\"private_key\":\"\",\"theme\":\"clean\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 0, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_highlight\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"highlight\"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 0, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_finder\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"finder\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 0, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_categories\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"categories\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 0, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_contacts\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contacts\"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 0, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_content\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 0, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(447, 0, 'plg_finder_tags', 'plugin', 'tags', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_tags\",\"type\":\"plugin\",\"creationDate\":\"February 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(448, 0, 'plg_twofactorauth_totp', 'plugin', 'totp', 'twofactorauth', 0, 0, 1, 0, '{\"name\":\"plg_twofactorauth_totp\",\"type\":\"plugin\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"totp\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(449, 0, 'plg_authentication_cookie', 'plugin', 'cookie', 'authentication', 0, 1, 1, 0, '{\"name\":\"plg_authentication_cookie\",\"type\":\"plugin\",\"creationDate\":\"July 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_COOKIE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"cookie\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(450, 0, 'plg_twofactorauth_yubikey', 'plugin', 'yubikey', 'twofactorauth', 0, 0, 1, 0, '{\"name\":\"plg_twofactorauth_yubikey\",\"type\":\"plugin\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"yubikey\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(451, 0, 'plg_search_tags', 'plugin', 'tags', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_tags\",\"type\":\"plugin\",\"creationDate\":\"March 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}', '{\"search_limit\":\"50\",\"show_tagged_items\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(452, 0, 'plg_system_updatenotification', 'plugin', 'updatenotification', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_updatenotification\",\"type\":\"plugin\",\"creationDate\":\"May 2015\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_SYSTEM_UPDATENOTIFICATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"updatenotification\"}', '{\"lastrun\":1530803966}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(453, 0, 'plg_editors-xtd_module', 'plugin', 'module', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_module\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_MODULE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"module\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(454, 0, 'plg_system_stats', 'plugin', 'stats', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_stats\",\"type\":\"plugin\",\"creationDate\":\"November 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_SYSTEM_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"stats\"}', '{\"mode\":1,\"lastrun\":1530804041,\"unique_id\":\"64bdff30c23563553b7acbe74a0585f7efe25283\",\"interval\":12}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(455, 0, 'plg_installer_packageinstaller', 'plugin', 'packageinstaller', 'installer', 0, 1, 1, 1, '{\"name\":\"plg_installer_packageinstaller\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_PACKAGEINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"packageinstaller\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(456, 0, 'PLG_INSTALLER_FOLDERINSTALLER', 'plugin', 'folderinstaller', 'installer', 0, 1, 1, 1, '{\"name\":\"PLG_INSTALLER_FOLDERINSTALLER\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_FOLDERINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"folderinstaller\"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(457, 0, 'PLG_INSTALLER_URLINSTALLER', 'plugin', 'urlinstaller', 'installer', 0, 1, 1, 1, '{\"name\":\"PLG_INSTALLER_URLINSTALLER\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_URLINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"urlinstaller\"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(458, 0, 'plg_quickicon_phpversioncheck', 'plugin', 'phpversioncheck', 'quickicon', 0, 1, 1, 1, '{\"name\":\"plg_quickicon_phpversioncheck\",\"type\":\"plugin\",\"creationDate\":\"August 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_QUICKICON_PHPVERSIONCHECK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phpversioncheck\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(459, 0, 'plg_editors-xtd_menu', 'plugin', 'menu', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_menu\",\"type\":\"plugin\",\"creationDate\":\"August 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"menu\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(460, 0, 'plg_editors-xtd_contact', 'plugin', 'contact', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_contact\",\"type\":\"plugin\",\"creationDate\":\"October 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(461, 0, 'plg_system_fields', 'plugin', 'fields', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_fields\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_SYSTEM_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(462, 0, 'plg_fields_calendar', 'plugin', 'calendar', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_calendar\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_CALENDAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"calendar\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(463, 0, 'plg_fields_checkboxes', 'plugin', 'checkboxes', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_checkboxes\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_CHECKBOXES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"checkboxes\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(464, 0, 'plg_fields_color', 'plugin', 'color', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_color\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_COLOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"color\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(465, 0, 'plg_fields_editor', 'plugin', 'editor', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_editor\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_EDITOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"editor\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(466, 0, 'plg_fields_imagelist', 'plugin', 'imagelist', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_imagelist\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_IMAGELIST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"imagelist\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(467, 0, 'plg_fields_integer', 'plugin', 'integer', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_integer\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_INTEGER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"integer\"}', '{\"multiple\":\"0\",\"first\":\"1\",\"last\":\"100\",\"step\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(468, 0, 'plg_fields_list', 'plugin', 'list', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_list\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_LIST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"list\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(469, 0, 'plg_fields_media', 'plugin', 'media', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_media\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"media\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(470, 0, 'plg_fields_radio', 'plugin', 'radio', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_radio\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_RADIO_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"radio\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(471, 0, 'plg_fields_sql', 'plugin', 'sql', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_sql\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_SQL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sql\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(472, 0, 'plg_fields_text', 'plugin', 'text', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_text\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_TEXT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"text\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(473, 0, 'plg_fields_textarea', 'plugin', 'textarea', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_textarea\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_TEXTAREA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"textarea\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(474, 0, 'plg_fields_url', 'plugin', 'url', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_url\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_URL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"url\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(475, 0, 'plg_fields_user', 'plugin', 'user', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_user\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_USER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"user\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(476, 0, 'plg_fields_usergrouplist', 'plugin', 'usergrouplist', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_usergrouplist\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_USERGROUPLIST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"usergrouplist\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(477, 0, 'plg_content_fields', 'plugin', 'fields', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_fields\",\"type\":\"plugin\",\"creationDate\":\"February 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_CONTENT_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(478, 0, 'plg_editors-xtd_fields', 'plugin', 'fields', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_fields\",\"type\":\"plugin\",\"creationDate\":\"February 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(479, 0, 'plg_sampledata_blog', 'plugin', 'blog', 'sampledata', 0, 1, 1, 0, '{\"name\":\"plg_sampledata_blog\",\"type\":\"plugin\",\"creationDate\":\"July 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.0\",\"description\":\"PLG_SAMPLEDATA_BLOG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"blog\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(480, 0, 'plg_system_sessiongc', 'plugin', 'sessiongc', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_sessiongc\",\"type\":\"plugin\",\"creationDate\":\"February 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.6\",\"description\":\"PLG_SYSTEM_SESSIONGC_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sessiongc\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(503, 0, 'beez3', 'template', 'beez3', '', 0, 1, 1, 0, '{\"name\":\"beez3\",\"type\":\"template\",\"creationDate\":\"25 November 2009\",\"author\":\"Angie Radtke\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"a.radtke@derauftritt.de\",\"authorUrl\":\"http:\\/\\/www.der-auftritt.de\",\"version\":\"3.1.0\",\"description\":\"TPL_BEEZ3_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"navposition\":\"center\",\"templatecolor\":\"nature\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 0, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{\"name\":\"hathor\",\"type\":\"template\",\"creationDate\":\"May 2010\",\"author\":\"Andrea Tarr\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"3.0.0\",\"description\":\"TPL_HATHOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"showSiteName\":\"0\",\"colourChoice\":\"0\",\"boldText\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(506, 0, 'protostar', 'template', 'protostar', '', 0, 1, 1, 0, '{\"name\":\"protostar\",\"type\":\"template\",\"creationDate\":\"4\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_PROTOSTAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(507, 0, 'isis', 'template', 'isis', '', 1, 1, 1, 0, '{\"name\":\"isis\",\"type\":\"template\",\"creationDate\":\"3\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_ISIS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"templateColor\":\"\",\"logoFile\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 802, 'English (en-GB)', 'language', 'en-GB', '', 0, 1, 1, 1, '{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"June 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.10\",\"description\":\"en-GB site language\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 802, 'English (en-GB)', 'language', 'en-GB', '', 1, 1, 1, 1, '{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"June 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.10\",\"description\":\"en-GB administrator language\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 0, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{\"name\":\"files_joomla\",\"type\":\"file\",\"creationDate\":\"June 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.10\",\"description\":\"FILES_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(802, 0, 'English (en-GB) Language Pack', 'package', 'pkg_en-GB', '', 0, 1, 1, 1, '{\"name\":\"English (en-GB) Language Pack\",\"type\":\"package\",\"creationDate\":\"June 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.10.1\",\"description\":\"en-GB language pack\",\"group\":\"\",\"filename\":\"pkg_en-GB\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10000, 0, 'plg_installer_webinstaller', 'plugin', 'webinstaller', 'installer', 0, 1, 1, 0, '{\"name\":\"plg_installer_webinstaller\",\"type\":\"plugin\",\"creationDate\":\"28 April 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2013-2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.1.1\",\"description\":\"PLG_INSTALLER_WEBINSTALLER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"webinstaller\"}', '{\"tab_position\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10001, 0, 'com_iquix', 'component', 'com_iquix', '', 1, 1, 0, 0, '{\"name\":\"com_iquix\",\"type\":\"component\",\"creationDate\":\"11th April 2018\",\"author\":\"ThemeXpert\",\"copyright\":\"Copyright (C) 2015. All rights reserved.\",\"authorEmail\":\"info@themexpert.com\",\"authorUrl\":\"http:\\/\\/www.themexpert.com\",\"version\":\"1.1.0\",\"description\":\"Page builder for Joomla\",\"group\":\"\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `crdev_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(10002, 10009, 'plg_system_gantry5', 'plugin', 'gantry5', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_gantry5\",\"type\":\"plugin\",\"creationDate\":\"February 20, 2018\",\"author\":\"RocketTheme, LLC\",\"copyright\":\"(C) 2005 - 2017 RocketTheme, LLC. All rights reserved.\",\"authorEmail\":\"support@rockettheme.com\",\"authorUrl\":\"http:\\/\\/www.rockettheme.com\",\"version\":\"5.4.23\",\"description\":\"PLG_SYSTEM_GANTRY5_DESCRIPTION\",\"group\":\"\",\"filename\":\"gantry5\"}', '{\"production\":\"1\",\"use_media_folder\":\"0\",\"asset_timestamps\":\"1\",\"asset_timestamps_period\":\"7\",\"compile_yaml\":\"1\",\"compile_twig\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10003, 10009, 'plg_quickicon_gantry5', 'plugin', 'gantry5', 'quickicon', 0, 1, 1, 0, '{\"name\":\"plg_quickicon_gantry5\",\"type\":\"plugin\",\"creationDate\":\"February 20, 2018\",\"author\":\"RocketTheme, LLC\",\"copyright\":\"(C) 2005 - 2017 RocketTheme, LLC. All rights reserved.\",\"authorEmail\":\"support@rockettheme.com\",\"authorUrl\":\"http:\\/\\/www.rockettheme.com\",\"version\":\"5.4.23\",\"description\":\"PLG_QUICKICON_GANTRY5_DESCRIPTION\",\"group\":\"\",\"filename\":\"gantry5\"}', '{\"context\":\"mod_quickicon\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10004, 10009, 'plg_gantry5_preset', 'plugin', 'preset', 'gantry5', 0, 1, 1, 0, '{\"name\":\"plg_gantry5_preset\",\"type\":\"plugin\",\"creationDate\":\"February 20, 2018\",\"author\":\"RocketTheme, LLC\",\"copyright\":\"(C) 2005 - 2017 RocketTheme, LLC. All rights reserved.\",\"authorEmail\":\"support@rockettheme.com\",\"authorUrl\":\"http:\\/\\/www.rockettheme.com\",\"version\":\"5.4.23\",\"description\":\"PLG_GANTRY5_PRESET_DESCRIPTION\",\"group\":\"\",\"filename\":\"preset\"}', '{\"preset\":\"presets\",\"reset\":\"reset-settings\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10005, 10009, 'mod_gantry5_particle', 'module', 'mod_gantry5_particle', '', 0, 1, 0, 0, '{\"name\":\"mod_gantry5_particle\",\"type\":\"module\",\"creationDate\":\"February 20, 2018\",\"author\":\"RocketTheme, LLC\",\"copyright\":\"(C) 2005 - 2017 RocketTheme, LLC. All rights reserved.\",\"authorEmail\":\"support@rockettheme.com\",\"authorUrl\":\"http:\\/\\/www.rockettheme.com\",\"version\":\"5.4.23\",\"description\":\"MOD_GANTRY5_PARTICLE_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_gantry5_particle\"}', '{\"owncache\":\"0\",\"cache_time\":\"900\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10006, 10009, 'Gantry 5 Framework', 'library', 'gantry5', '', 0, 1, 1, 0, '{\"name\":\"Gantry 5 Framework\",\"type\":\"library\",\"creationDate\":\"February 20, 2018\",\"author\":\"RocketTheme, LLC\",\"copyright\":\"(C) 2005 - 2017 RocketTheme, LLC. All rights reserved.\",\"authorEmail\":\"support@rockettheme.com\",\"authorUrl\":\"http:\\/\\/www.rockettheme.com\",\"version\":\"5.4.23\",\"description\":\"LIB_GANTRY5_DESCRIPTION\",\"group\":\"\",\"filename\":\"gantry5\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10007, 10009, 'gantry5_nucleus', 'file', 'gantry5_nucleus', '', 0, 1, 0, 0, '{\"name\":\"gantry5_nucleus\",\"type\":\"file\",\"creationDate\":\"February 20, 2018\",\"author\":\"RocketTheme, LLC\",\"copyright\":\"(C) 2005 - 2017 RocketTheme, LLC. All rights reserved.\",\"authorEmail\":\"support@rockettheme.com\",\"authorUrl\":\"http:\\/\\/www.rockettheme.com\",\"version\":\"5.4.23\",\"description\":\"GANTRY5_NUCLEUS_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10008, 10009, 'com_gantry5', 'component', 'com_gantry5', '', 1, 1, 0, 0, '{\"name\":\"com_gantry5\",\"type\":\"component\",\"creationDate\":\"February 20, 2018\",\"author\":\"RocketTheme, LLC\",\"copyright\":\"(C) 2005 - 2017 RocketTheme, LLC. All rights reserved.\",\"authorEmail\":\"support@rockettheme.com\",\"authorUrl\":\"http:\\/\\/www.rockettheme.com\",\"version\":\"5.4.23\",\"description\":\"COM_GANTRY5_DESCRIPTION\",\"group\":\"\",\"filename\":\"gantry5\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10009, 0, 'pkg_gantry5', 'package', 'pkg_gantry5', '', 0, 1, 1, 0, '{\"name\":\"pkg_gantry5\",\"type\":\"package\",\"creationDate\":\"February 20, 2018\",\"author\":\"RocketTheme, LLC\",\"copyright\":\"(C) 2005 - 2017 RocketTheme, LLC. All rights reserved.\",\"authorEmail\":\"support@rockettheme.com\",\"authorUrl\":\"http:\\/\\/www.rockettheme.com\",\"version\":\"5.4.23\",\"description\":\"PKG_GANTRY5_DESCRIPTION\",\"group\":\"\",\"filename\":\"pkg_gantry5\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10010, 0, 'jl_bostan_free', 'template', 'jl_bostan_free', '', 0, 1, 1, 0, '{\"name\":\"jl_bostan_free\",\"type\":\"template\",\"creationDate\":\"May 31, 2017\",\"author\":\"JoomLead\",\"copyright\":\"Copyright (C) JoomLead.\",\"authorEmail\":\"support@joomlead.com\",\"authorUrl\":\"https:\\/\\/www.joomlead.com\",\"version\":\"1.0.4\",\"description\":\"TPL_JL_BOSTAN_FREE_DESC\",\"group\":\"\",\"filename\":\"templateDetails\"}', '[]', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10011, 0, 'jl_fix_free', 'template', 'jl_fix_free', '', 0, 1, 1, 0, '{\"name\":\"jl_fix_free\",\"type\":\"template\",\"creationDate\":\"05 March, 2018\",\"author\":\"JoomLead\",\"copyright\":\"(C) 2015 - 2018 JoomLead. All rights reserved.\",\"authorEmail\":\"support@joomlead.com\",\"authorUrl\":\"http:\\/\\/www.joomlead.com\",\"version\":\"1.0.1\",\"description\":\"TPL_JL_FIX_FREE_DESC\",\"group\":\"\",\"filename\":\"templateDetails\"}', '[]', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10012, 0, 'JMG Img Hover Modul', 'module', 'mod_jmg_imghover', '', 0, 1, 0, 0, '{\"name\":\"JMG Img Hover Modul\",\"type\":\"module\",\"creationDate\":\"Unknown\",\"author\":\"Otto Szekeres\",\"copyright\":\"\",\"authorEmail\":\"\",\"authorUrl\":\"\",\"version\":\"1.1.0\",\"description\":\"JMG Image Hover Modul is based on Pure CSS Image Hover Effect Library allowing you to easily implement scaleable image hover effects.<br \\/><br \\/>&copy;&nbsp;2016&nbsp;Joomla! dewelopment&nbsp;<a href=\\\"http:\\/\\/www.doc-seo.com\\\" target=\\\"_blank\\\">Otto Szekeres<\\/a> - CSS development&nbsp;<a href=\\\"http:\\/\\/imagehover.io\\\" target=\\\"_blank\\\">imagehover.io<\\/a>\",\"group\":\"\",\"filename\":\"mod_jmg_imghover\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10013, 0, 'lib_xef', 'library', 'lib_xef', '', 0, 1, 1, 0, '{\"name\":\"lib_xef\",\"type\":\"library\",\"creationDate\":\"03\\/16\\/2014\",\"author\":\"Parvez Akther\",\"copyright\":\"Copyright (C) 2011 - 2011 ThemeXpert\",\"authorEmail\":\"parvez@themexpert.com\",\"authorUrl\":\"http:\\/\\/themexpert.com\\/\",\"version\":\"1.4.4\",\"description\":\"\\n        ThemeXpert Extension Framework (XEF) \\u2013 A rapid extension development framework for all ThemeXpert extensions.\\n    \",\"group\":\"\",\"filename\":\"lib_xef\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10014, 0, 'Xpert Scroller', 'module', 'mod_xpertscroller', '', 0, 1, 0, 0, '{\"name\":\"Xpert Scroller\",\"type\":\"module\",\"creationDate\":\"${build.date}\",\"author\":\"ThemeXpert\",\"copyright\":\"Copyright (C) 20010 - 2011 ThemeXpert. All rights reserved.\",\"authorEmail\":\"support@themexpert.com\",\"authorUrl\":\"www.themexpert.com\",\"version\":\"3.10-1-GFF3CA2D\",\"description\":\"XS_DESC\",\"group\":\"\",\"filename\":\"mod_xpertscroller\"}', '{\"content_source\":\"joomla\",\"count\":\"3\",\"routing_type\":\"default\",\"menuitemid\":\"\",\"title\":\"1\",\"link\":\"0\",\"category\":\"0\",\"category_link\":\"0\",\"intro\":\"1\",\"intro_limit_type\":\"words\",\"intro_limit\":\"30\",\"readmore\":\"1\",\"readmore_text\":\"Readmore..\",\"target\":\"_self\",\"image\":\"1\",\"image_link\":\"1\",\"image_resize\":\"0\",\"image_width\":\"400\",\"image_height\":\"300\",\"jomcatfilter\":\"0\",\"jom_ordering\":\"p_dsc\",\"jom_user_id\":\"0\",\"jom_show_featured\":\"\",\"k2_catfilter\":\"0\",\"k2_catid\":\"\",\"k2_get_children\":\"1\",\"k2_items_ordering\":\"\",\"k2_featured_items\":\"1\",\"k2_popularity_range\":\"\",\"scroller_layout\":\"basic_h\",\"mod_height\":\"200\",\"col_amount\":\"5\",\"image_position\":\"top\",\"control\":\"1\",\"control_margin\":\"40px 10px\",\"animation_style\":\"animation_h\",\"animation_speed\":\"1000\",\"repeat\":\"1\",\"keyboard_navigation\":\"1\",\"auto_play\":\"0\",\"navigator\":\"1\",\"interval\":\"1000\",\"auto_pause\":\"1\",\"moduleclass_sfx\":\"\",\"auto_module_id\":\"1\",\"module_unique_id\":\"xs_1\",\"load_jquery\":\"1\",\"jquery_source\":\"local\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10016, 10024, 'COM_JCE', 'component', 'com_jce', '', 1, 1, 0, 0, '{\"name\":\"COM_JCE\",\"type\":\"component\",\"creationDate\":\"21-06-2018\",\"author\":\"Ryan Demmer\",\"copyright\":\"Copyright (C) 2006 - 2018 Ryan Demmer. All rights reserved\",\"authorEmail\":\"info@joomlacontenteditor.net\",\"authorUrl\":\"www.joomlacontenteditor.net\",\"version\":\"2.6.31\",\"description\":\"COM_JCE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"jce\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10017, 10024, 'plg_editors_jce', 'plugin', 'jce', 'editors', 0, 1, 1, 0, '{\"name\":\"plg_editors_jce\",\"type\":\"plugin\",\"creationDate\":\"21-06-2018\",\"author\":\"Ryan Demmer\",\"copyright\":\"Copyright (C) 2006 - 2018 Ryan Demmer. All rights reserved\",\"authorEmail\":\"info@joomlacontenteditor.net\",\"authorUrl\":\"http:\\/\\/www.joomlacontenteditor.net\",\"version\":\"2.6.31\",\"description\":\"WF_EDITOR_PLUGIN_DESC\",\"group\":\"\",\"filename\":\"jce\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10018, 10024, 'plg_content_jce', 'plugin', 'jce', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_jce\",\"type\":\"plugin\",\"creationDate\":\"21-06-2018\",\"author\":\"Ryan Demmer\",\"copyright\":\"Copyright (C) 2006 - 2018 Ryan Demmer. All rights reserved\",\"authorEmail\":\"info@joomlacontenteditor.net\",\"authorUrl\":\"http:\\/\\/www.joomlacontenteditor.net\",\"version\":\"2.6.31\",\"description\":\"PLG_CONTENT_JCE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"jce\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10019, 10024, 'plg_extension_jce', 'plugin', 'jce', 'extension', 0, 1, 1, 0, '{\"name\":\"plg_extension_jce\",\"type\":\"plugin\",\"creationDate\":\"21-06-2018\",\"author\":\"Ryan Demmer\",\"copyright\":\"Copyright (C) 2006 - 2018 Ryan Demmer. All rights reserved\",\"authorEmail\":\"info@joomlacontenteditor.net\",\"authorUrl\":\"http:\\/\\/www.joomlacontenteditor.net\",\"version\":\"2.6.31\",\"description\":\"PLG_EXTENSION_JCE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"jce\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10020, 10024, 'plg_fields_mediajce', 'plugin', 'mediajce', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_mediajce\",\"type\":\"plugin\",\"creationDate\":\"21-06-2018\",\"author\":\"Ryan Demmer\",\"copyright\":\"Copyright (C) 2006 - 2018 Ryan Demmer. All rights reserved\",\"authorEmail\":\"info@joomlacontenteditor.net\",\"authorUrl\":\"https:\\/\\/www.joomlacontenteditor.net\",\"version\":\"2.6.31\",\"description\":\"PLG_FIELDS_MEDIAJCE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mediajce\"}', '[]', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10021, 10024, 'plg_installer_jce', 'plugin', 'jce', 'installer', 0, 1, 1, 0, '{\"name\":\"plg_installer_jce\",\"type\":\"plugin\",\"creationDate\":\"21-06-2018\",\"author\":\"Ryan Demmer\",\"copyright\":\"Copyright (C) 2006 - 2018 Ryan Demmer. All rights reserved\",\"authorEmail\":\"info@joomlacontenteditor.net\",\"authorUrl\":\"http:\\/\\/www.joomlacontenteditor.net\",\"version\":\"2.6.31\",\"description\":\"PLG_INSTALLER_JCE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"jce\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10022, 10024, 'plg_quickicon_jce', 'plugin', 'jce', 'quickicon', 0, 1, 1, 0, '{\"name\":\"plg_quickicon_jce\",\"type\":\"plugin\",\"creationDate\":\"21-06-2018\",\"author\":\"Ryan Demmer\",\"copyright\":\"Copyright (C) 2006 - 2018 Ryan Demmer. All rights reserved\",\"authorEmail\":\"info@joomlacontenteditor.net\",\"authorUrl\":\"http:\\/\\/www.joomlacontenteditor.net\",\"version\":\"2.6.31\",\"description\":\"PLG_QUICKICON_JCE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"jce\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10023, 10024, 'plg_system_jce', 'plugin', 'jce', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_jce\",\"type\":\"plugin\",\"creationDate\":\"21-06-2018\",\"author\":\"Ryan Demmer\",\"copyright\":\"Copyright (C) 2006 - 2018 Ryan Demmer. All rights reserved\",\"authorEmail\":\"info@joomlacontenteditor.net\",\"authorUrl\":\"http:\\/\\/www.joomlacontenteditor.net\",\"version\":\"2.6.31\",\"description\":\"PLG_SYSTEM_JCE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"jce\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10024, 0, 'PKG_JCE', 'package', 'pkg_jce', '', 0, 1, 1, 0, '{\"name\":\"PKG_JCE\",\"type\":\"package\",\"creationDate\":\"21-06-2018\",\"author\":\"Ryan Demmer\",\"copyright\":\"\",\"authorEmail\":\"\",\"authorUrl\":\"\",\"version\":\"2.6.31\",\"description\":\"PKG_JCE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pkg_jce\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10025, 10028, 'COM_SLIDER', 'component', 'com_slider', '', 1, 1, 0, 0, '{\"name\":\"COM_SLIDER\",\"type\":\"component\",\"creationDate\":\"January 2015\",\"author\":\"Huge-IT\",\"copyright\":\"Copyright (C) 2013 Huge-IT.com 2013. All rights reserved.\",\"authorEmail\":\"info@huge-it.com\",\"authorUrl\":\"http:\\/\\/www.huge-it.com\",\"version\":\"1.1.1\",\"description\":\"COM_SLIDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"slider\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10026, 10028, 'Huge-IT Slider Module', 'module', 'mod_slider', '', 0, 1, 0, 0, '{\"name\":\"Huge-IT Slider Module\",\"type\":\"module\",\"creationDate\":\"January 2015\",\"author\":\"Huge-IT\",\"copyright\":\"Copyright (C) 2013 Huge-IT.com 2013. All rights reserved.\",\"authorEmail\":\"info@huge-it.com\",\"authorUrl\":\"http:\\/\\/www.huge-it.com\",\"version\":\"1.1.1\",\"description\":\"\",\"group\":\"\",\"filename\":\"mod_slider\"}', '[]', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10027, 10028, 'Huge-IT Slider Plugin', 'plugin', 'slider', 'system', 0, 1, 1, 0, '{\"name\":\"Huge-IT Slider Plugin\",\"type\":\"plugin\",\"creationDate\":\"January 2015\",\"author\":\"Huge-IT\",\"copyright\":\"Copyright (C) 2013 Huge-IT.com 2013. All rights reserved.\",\"authorEmail\":\"info@huge-it.com\",\"authorUrl\":\"http:\\/\\/www.huge-it.com\",\"version\":\"1.1.1\",\"description\":\"\",\"group\":\"\",\"filename\":\"slider\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10028, 0, 'Huge-IT Slider Package', 'package', 'pkg_slider', '', 0, 1, 1, 0, '{\"name\":\"Huge-IT Slider Package\",\"type\":\"package\",\"creationDate\":\"January 2015\",\"author\":\"Huge-IT\",\"copyright\":\"Copyright (C) 2013 Huge-IT.com 2013. All rights reserved.\",\"authorEmail\":\"info@huge-it.com\",\"authorUrl\":\"http:\\/\\/www.huge-it.com\",\"version\":\"1.1.1\",\"description\":\"\",\"group\":\"\",\"filename\":\"pkg_slider\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10029, 0, 'image hover effect', 'module', 'mod_image_hover_effect', '', 0, 1, 0, 0, '{\"name\":\"image hover effect\",\"type\":\"module\",\"creationDate\":\"Junly 2016\",\"author\":\"joombest.com\",\"copyright\":\"Copyright (C) 2016 joombest.com. All rights reserved.\",\"authorEmail\":\"support@joombest.com\",\"authorUrl\":\"www.joombest.com\",\"version\":\"1.2\",\"description\":\"EXC_DESC\",\"group\":\"\",\"filename\":\"mod_image_hover_effect\"}', '{\"sp_style\":\"Imghoveeffec\",\"enablejQuery\":\"1\",\"width_module\":\"100\",\"height_module\":\"500\",\"choose_style\":\"1\",\"change_text\":\"40\",\"font_size_title\":\"90\",\"color_hover\":\"#4f90cf\",\"color_title\":\"#CF0000\",\"module_cache\":\"1\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10030, 0, 'jl_raiseup_free', 'template', 'jl_raiseup_free', '', 0, 1, 1, 0, '{\"name\":\"jl_raiseup_free\",\"type\":\"template\",\"creationDate\":\"13 Oct, 2017\",\"author\":\"JoomLead\",\"copyright\":\"(C) 2015 - 2018 JoomLead. All rights reserved.\",\"authorEmail\":\"support@joomlead.com\",\"authorUrl\":\"http:\\/\\/www.joomlead.com\",\"version\":\"1.0.1\",\"description\":\"TPL_JL_RAISEUP_FREE_DESC\",\"group\":\"\",\"filename\":\"templateDetails\"}', '[]', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10031, 0, 'MOD_JM_BEST_FEATURES', 'module', 'mod_jm_best_features', '', 0, 1, 0, 0, '{\"name\":\"MOD_JM_BEST_FEATURES\",\"type\":\"module\",\"creationDate\":\"01\\/08\\/2017\",\"author\":\"Joomla-Monster.com\",\"copyright\":\"Copyright (C) 2017 Joomla-Monster.com, All rights reserved.\",\"authorEmail\":\"artur.kaczmarek@joomla-monster.com\",\"authorUrl\":\"https:\\/\\/joomla-monster.com\",\"version\":\"1.03\",\"description\":\"MOD_JM_BEST_FEATURES_DESC\",\"group\":\"\",\"filename\":\"mod_jm_best_features\"}', '{\"title\":\"\",\"url\":\"\",\"alt\":\"\",\"icon\":\"\",\"color\":\"\",\"text\":\"\",\"view\":\"1\",\"link_icon\":\"0\",\"span_size\":\"6\",\"theme\":\"1\",\"load_fontawesome\":\"0\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `crdev_fields`
--

CREATE TABLE `crdev_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `default_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `fieldparams` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crdev_fields_categories`
--

CREATE TABLE `crdev_fields_categories` (
  `field_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crdev_fields_groups`
--

CREATE TABLE `crdev_fields_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crdev_fields_values`
--

CREATE TABLE `crdev_fields_values` (
  `field_id` int(10) UNSIGNED NOT NULL,
  `item_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Allow references to items which have strings as ids, eg. none db systems.',
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crdev_finder_filters`
--

CREATE TABLE `crdev_finder_filters` (
  `filter_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `crdev_finder_links`
--

CREATE TABLE `crdev_finder_links` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(400) DEFAULT NULL,
  `description` text,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double UNSIGNED NOT NULL DEFAULT '0',
  `sale_price` double UNSIGNED NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `crdev_finder_links`
--

INSERT INTO `crdev_finder_links` (`link_id`, `url`, `route`, `title`, `description`, `indexdate`, `md5sum`, `published`, `state`, `access`, `language`, `publish_start_date`, `publish_end_date`, `start_date`, `end_date`, `list_price`, `sale_price`, `type_id`, `object`) VALUES
(1, 'index.php?option=com_content&view=category&id=8', 'index.php?option=com_content&view=category&id=8', 'What we do - Pay Visit', '', '2018-07-04 16:35:40', '39b7219c78cb6da1f874f92526e19864', 1, 0, 1, '*', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2018-07-01 22:49:13', '0000-00-00 00:00:00', 0, 0, 2, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31393a7b733a31313a22002a00656c656d656e7473223b613a31383a7b733a323a226964223b733a313a2238223b733a353a22616c696173223b733a32303a22776861742d77652d646f2d7061792d7669736974223b733a373a2273756d6d617279223b733a303a22223b733a393a22657874656e73696f6e223b733a31313a22636f6d5f636f6e74656e74223b733a31303a22637265617465645f6279223b733a333a22393036223b733a383a226d6f646966696564223b733a31393a22323031382d30372d30312032323a34393a3133223b733a31313a226d6f6469666965645f6279223b733a313a2230223b733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a323a7b733a363a22617574686f72223b733a303a22223b733a363a22726f626f7473223b733a303a22223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a393a22736570617261746f72223b733a313a222e223b7d733a333a226c6674223b733a323a223131223b733a393a22706172656e745f6964223b733a313a2231223b733a353a226c6576656c223b733a313a2231223b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a333a7b733a31353a2263617465676f72795f6c61796f7574223b733a303a22223b733a353a22696d616765223b733a303a22223b733a393a22696d6167655f616c74223b733a303a22223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a393a22736570617261746f72223b733a313a222e223b7d733a343a22736c7567223b733a32323a22383a776861742d77652d646f2d7061792d7669736974223b733a363a226c61796f7574223b733a383a2263617465676f7279223b733a31303a226d657461617574686f72223b4e3b733a343a2270617468223b733a35323a22696e6465782e7068702f636f6d706f6e656e742f636f6e74656e742f63617465676f72793f69643d38264974656d69643d313031223b7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a343a226c696e6b223b693a343b733a373a226d6574616b6579223b693a353b733a383a226d65746164657363223b693a363b733a31303a226d657461617574686f72223b693a373b733a363a22617574686f72223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a323a7b733a343a2254797065223b613a313a7b733a383a2243617465676f7279223b4f3a32373a224a6f6f6d6c615c434d535c4f626a6563745c434d534f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a383a2243617465676f7279223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a224c616e6775616765223b613a313a7b733a313a222a223b4f3a32373a224a6f6f6d6c615c434d535c4f626a6563745c434d534f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a34373a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d63617465676f72792669643d38223b733a353a22726f757465223b733a34373a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d63617465676f72792669643d38223b733a353a227469746c65223b733a32323a225768617420776520646f202d20506179205669736974223b733a31313a226465736372697074696f6e223b733a303a22223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b693a303b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a313a222a223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22323031382d30372d30312032323a34393a3133223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a323b733a31353a2264656661756c744c616e6775616765223b733a353a22656e2d4742223b7d),
(2, 'index.php?option=com_content&view=category&id=9', 'index.php?option=com_content&view=category&id=9', 'What we do - Internship Ended', '', '2018-07-04 16:35:41', '754ff1b6f3e13c98ca3c5511eb469488', 1, 0, 1, '*', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2018-07-01 22:49:24', '0000-00-00 00:00:00', 0, 0, 2, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31393a7b733a31313a22002a00656c656d656e7473223b613a31383a7b733a323a226964223b733a313a2239223b733a353a22616c696173223b733a32373a22776861742d77652d646f2d696e7465726e736869702d656e646564223b733a373a2273756d6d617279223b733a303a22223b733a393a22657874656e73696f6e223b733a31313a22636f6d5f636f6e74656e74223b733a31303a22637265617465645f6279223b733a333a22393036223b733a383a226d6f646966696564223b733a31393a22323031382d30372d30312032323a34393a3234223b733a31313a226d6f6469666965645f6279223b733a313a2230223b733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a323a7b733a363a22617574686f72223b733a303a22223b733a363a22726f626f7473223b733a303a22223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a393a22736570617261746f72223b733a313a222e223b7d733a333a226c6674223b733a323a223133223b733a393a22706172656e745f6964223b733a313a2231223b733a353a226c6576656c223b733a313a2231223b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a333a7b733a31353a2263617465676f72795f6c61796f7574223b733a303a22223b733a353a22696d616765223b733a303a22223b733a393a22696d6167655f616c74223b733a303a22223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a393a22736570617261746f72223b733a313a222e223b7d733a343a22736c7567223b733a32393a22393a776861742d77652d646f2d696e7465726e736869702d656e646564223b733a363a226c61796f7574223b733a383a2263617465676f7279223b733a31303a226d657461617574686f72223b4e3b733a343a2270617468223b733a35323a22696e6465782e7068702f636f6d706f6e656e742f636f6e74656e742f63617465676f72793f69643d39264974656d69643d313031223b7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a343a226c696e6b223b693a343b733a373a226d6574616b6579223b693a353b733a383a226d65746164657363223b693a363b733a31303a226d657461617574686f72223b693a373b733a363a22617574686f72223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a323a7b733a343a2254797065223b613a313a7b733a383a2243617465676f7279223b4f3a32373a224a6f6f6d6c615c434d535c4f626a6563745c434d534f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a383a2243617465676f7279223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a224c616e6775616765223b613a313a7b733a313a222a223b4f3a32373a224a6f6f6d6c615c434d535c4f626a6563745c434d534f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a34373a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d63617465676f72792669643d39223b733a353a22726f757465223b733a34373a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d63617465676f72792669643d39223b733a353a227469746c65223b733a32393a225768617420776520646f202d20496e7465726e7368697020456e646564223b733a31313a226465736372697074696f6e223b733a303a22223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b693a303b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a313a222a223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22323031382d30372d30312032323a34393a3234223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a323b733a31353a2264656661756c744c616e6775616765223b733a353a22656e2d4742223b7d),
(3, 'index.php?option=com_content&view=category&id=10', 'index.php?option=com_content&view=category&id=10', 'What we do - Accepting Offer', '', '2018-07-04 16:35:41', '61bd084fe680feda0622ef7ee68cdaa2', 1, 0, 1, '*', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2018-07-01 22:49:30', '0000-00-00 00:00:00', 0, 0, 2, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31393a7b733a31313a22002a00656c656d656e7473223b613a31383a7b733a323a226964223b733a323a223130223b733a353a22616c696173223b733a32363a22776861742d77652d646f2d616363657074696e672d6f66666572223b733a373a2273756d6d617279223b733a303a22223b733a393a22657874656e73696f6e223b733a31313a22636f6d5f636f6e74656e74223b733a31303a22637265617465645f6279223b733a333a22393036223b733a383a226d6f646966696564223b733a31393a22323031382d30372d30312032323a34393a3330223b733a31313a226d6f6469666965645f6279223b733a313a2230223b733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a323a7b733a363a22617574686f72223b733a303a22223b733a363a22726f626f7473223b733a303a22223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a393a22736570617261746f72223b733a313a222e223b7d733a333a226c6674223b733a323a223135223b733a393a22706172656e745f6964223b733a313a2231223b733a353a226c6576656c223b733a313a2231223b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a333a7b733a31353a2263617465676f72795f6c61796f7574223b733a303a22223b733a353a22696d616765223b733a303a22223b733a393a22696d6167655f616c74223b733a303a22223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a393a22736570617261746f72223b733a313a222e223b7d733a343a22736c7567223b733a32393a2231303a776861742d77652d646f2d616363657074696e672d6f66666572223b733a363a226c61796f7574223b733a383a2263617465676f7279223b733a31303a226d657461617574686f72223b4e3b733a343a2270617468223b733a35333a22696e6465782e7068702f636f6d706f6e656e742f636f6e74656e742f63617465676f72793f69643d3130264974656d69643d313031223b7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a343a226c696e6b223b693a343b733a373a226d6574616b6579223b693a353b733a383a226d65746164657363223b693a363b733a31303a226d657461617574686f72223b693a373b733a363a22617574686f72223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a323a7b733a343a2254797065223b613a313a7b733a383a2243617465676f7279223b4f3a32373a224a6f6f6d6c615c434d535c4f626a6563745c434d534f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a383a2243617465676f7279223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a224c616e6775616765223b613a313a7b733a313a222a223b4f3a32373a224a6f6f6d6c615c434d535c4f626a6563745c434d534f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a34383a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d63617465676f72792669643d3130223b733a353a22726f757465223b733a34383a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d63617465676f72792669643d3130223b733a353a227469746c65223b733a32383a225768617420776520646f202d20416363657074696e67204f66666572223b733a31313a226465736372697074696f6e223b733a303a22223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b693a303b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a313a222a223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22323031382d30372d30312032323a34393a3330223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a323b733a31353a2264656661756c744c616e6775616765223b733a353a22656e2d4742223b7d),
(4, 'index.php?option=com_content&view=category&id=2', 'index.php?option=com_content&view=category&id=2', 'Mission and Vision', '', '2018-07-01 22:49:47', '9a0f4e6be6a8b61116f5cf5cd2508d0d', 1, 0, 1, '*', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2018-06-28 18:11:52', '0000-00-00 00:00:00', 0, 0, 2, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31393a7b733a31313a22002a00656c656d656e7473223b613a31383a7b733a323a226964223b733a313a2232223b733a353a22616c696173223b733a31333a22756e63617465676f7269736564223b733a373a2273756d6d617279223b733a303a22223b733a393a22657874656e73696f6e223b733a31313a22636f6d5f636f6e74656e74223b733a31303a22637265617465645f6279223b733a333a22393036223b733a383a226d6f646966696564223b733a31393a22323031382d30372d30312032323a34393a3431223b733a31313a226d6f6469666965645f6279223b733a333a22393036223b733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a323a7b733a363a22617574686f72223b733a303a22223b733a363a22726f626f7473223b733a303a22223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a393a22736570617261746f72223b733a313a222e223b7d733a333a226c6674223b733a313a2231223b733a393a22706172656e745f6964223b733a313a2231223b733a353a226c6576656c223b733a313a2231223b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a333a7b733a31353a2263617465676f72795f6c61796f7574223b733a303a22223b733a353a22696d616765223b733a303a22223b733a393a22696d6167655f616c74223b733a303a22223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a393a22736570617261746f72223b733a313a222e223b7d733a343a22736c7567223b733a31353a22323a756e63617465676f7269736564223b733a363a226c61796f7574223b733a383a2263617465676f7279223b733a31303a226d657461617574686f72223b4e3b733a343a2270617468223b733a35323a22696e6465782e7068702f636f6d706f6e656e742f636f6e74656e742f63617465676f72793f69643d32264974656d69643d313031223b7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a343a226c696e6b223b693a343b733a373a226d6574616b6579223b693a353b733a383a226d65746164657363223b693a363b733a31303a226d657461617574686f72223b693a373b733a363a22617574686f72223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a323a7b733a343a2254797065223b613a313a7b733a383a2243617465676f7279223b4f3a32373a224a6f6f6d6c615c434d535c4f626a6563745c434d534f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a383a2243617465676f7279223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a224c616e6775616765223b613a313a7b733a313a222a223b4f3a32373a224a6f6f6d6c615c434d535c4f626a6563745c434d534f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a34373a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d63617465676f72792669643d32223b733a353a22726f757465223b733a34373a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d63617465676f72792669643d32223b733a353a227469746c65223b733a31383a224d697373696f6e20616e6420566973696f6e223b733a31313a226465736372697074696f6e223b733a303a22223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b693a303b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a313a222a223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22323031382d30362d32382031383a31313a3532223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a323b733a31353a2264656661756c744c616e6775616765223b733a353a22656e2d4742223b7d),
(6, 'index.php?option=com_content&view=article&id=1', 'index.php?option=com_content&view=article&id=1:mission&catid=2', 'Mission', ' Remember, form follows function, in mission statements, as in all business. Make it work for your business. ... Having great customer service is way harder than writing that into a mission statement. Read other companies\' mission statements, but write a statement that is about you and not some other company. ', '2018-07-01 22:50:00', 'e7426974a0090935cb2058f6294919f3', 1, 0, 1, '*', '2018-06-28 22:26:04', '0000-00-00 00:00:00', '2018-06-28 22:26:04', '0000-00-00 00:00:00', 0, 0, 4, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31393a7b733a31313a22002a00656c656d656e7473223b613a32353a7b733a323a226964223b733a313a2231223b733a353a22616c696173223b733a373a226d697373696f6e223b733a373a2273756d6d617279223b733a3335313a223c703e52656d656d6265722c20666f726d20666f6c6c6f77732066756e6374696f6e2c20696e206d697373696f6e2073746174656d656e74732c20617320696e20616c6c20627573696e6573732e204d616b6520697420776f726b20666f7220796f757220627573696e6573732e202e2e2e3c2f703e0d0a3c703e486176696e6720677265617420637573746f6d657220736572766963652069732077617920686172646572207468616e2077726974696e67207468617420696e746f2061206d697373696f6e2073746174656d656e742e3c2f703e0d0a3c703e52656164206f7468657220636f6d70616e69657327206d697373696f6e2073746174656d656e74732c2062757420777269746520612073746174656d656e7420746861742069732061626f757420796f7520616e643c2f703e0d0a3c703e6e6f7420736f6d65206f7468657220636f6d70616e792e3c2f703e0d0a3c703ec2a03c2f703e223b733a343a22626f6479223b733a303a22223b733a353a226361746964223b733a313a2232223b733a31303a22637265617465645f6279223b733a333a22393036223b733a31363a22637265617465645f62795f616c696173223b733a303a22223b733a383a226d6f646966696564223b733a31393a22323031382d30362d32392032323a31313a3037223b733a31313a226d6f6469666965645f6279223b733a333a22393036223b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a38323a7b733a31343a2261727469636c655f6c61796f7574223b733a393a225f3a64656661756c74223b733a31303a2273686f775f7469746c65223b733a313a2231223b733a31313a226c696e6b5f7469746c6573223b733a313a2231223b733a31303a2273686f775f696e74726f223b733a313a2231223b733a31393a22696e666f5f626c6f636b5f706f736974696f6e223b733a313a2230223b733a32313a22696e666f5f626c6f636b5f73686f775f7469746c65223b733a313a2231223b733a31333a2273686f775f63617465676f7279223b733a313a2231223b733a31333a226c696e6b5f63617465676f7279223b733a313a2231223b733a32303a2273686f775f706172656e745f63617465676f7279223b733a313a2230223b733a32303a226c696e6b5f706172656e745f63617465676f7279223b733a313a2230223b733a31373a2273686f775f6173736f63696174696f6e73223b733a313a2230223b733a353a22666c616773223b733a313a2231223b733a31313a2273686f775f617574686f72223b733a313a2231223b733a31313a226c696e6b5f617574686f72223b733a313a2230223b733a31363a2273686f775f6372656174655f64617465223b733a313a2230223b733a31363a2273686f775f6d6f646966795f64617465223b733a313a2230223b733a31373a2273686f775f7075626c6973685f64617465223b733a313a2231223b733a32303a2273686f775f6974656d5f6e617669676174696f6e223b733a313a2231223b733a393a2273686f775f766f7465223b733a313a2230223b733a31333a2273686f775f726561646d6f7265223b733a313a2231223b733a31393a2273686f775f726561646d6f72655f7469746c65223b733a313a2231223b733a31343a22726561646d6f72655f6c696d6974223b733a333a22313030223b733a393a2273686f775f74616773223b733a313a2231223b733a31303a2273686f775f69636f6e73223b733a313a2231223b733a31353a2273686f775f7072696e745f69636f6e223b733a313a2231223b733a31353a2273686f775f656d61696c5f69636f6e223b733a313a2230223b733a393a2273686f775f68697473223b733a313a2231223b733a31313a2273686f775f6e6f61757468223b733a313a2230223b733a31333a2275726c735f706f736974696f6e223b733a313a2230223b733a373a2263617074636861223b733a303a22223b733a32333a2273686f775f7075626c697368696e675f6f7074696f6e73223b733a313a2231223b733a32303a2273686f775f61727469636c655f6f7074696f6e73223b733a313a2231223b733a31323a22736176655f686973746f7279223b733a313a2231223b733a31333a22686973746f72795f6c696d6974223b693a31303b733a32353a2273686f775f75726c735f696d616765735f66726f6e74656e64223b733a313a2230223b733a32343a2273686f775f75726c735f696d616765735f6261636b656e64223b733a313a2231223b733a373a2274617267657461223b693a303b733a373a2274617267657462223b693a303b733a373a2274617267657463223b693a303b733a31313a22666c6f61745f696e74726f223b733a343a226c656674223b733a31343a22666c6f61745f66756c6c74657874223b733a343a226c656674223b733a31353a2263617465676f72795f6c61796f7574223b733a363a225f3a626c6f67223b733a33323a2273686f775f63617465676f72795f68656164696e675f7469746c655f74657874223b733a313a2231223b733a31393a2273686f775f63617465676f72795f7469746c65223b733a313a2230223b733a31363a2273686f775f6465736372697074696f6e223b733a313a2230223b733a32323a2273686f775f6465736372697074696f6e5f696d616765223b733a313a2230223b733a383a226d61784c6576656c223b733a313a2231223b733a32313a2273686f775f656d7074795f63617465676f72696573223b733a313a2230223b733a31363a2273686f775f6e6f5f61727469636c6573223b733a313a2231223b733a31363a2273686f775f7375626361745f64657363223b733a313a2231223b733a32313a2273686f775f6361745f6e756d5f61727469636c6573223b733a313a2230223b733a31333a2273686f775f6361745f74616773223b733a313a2231223b733a32313a2273686f775f626173655f6465736372697074696f6e223b733a313a2231223b733a31313a226d61784c6576656c636174223b733a323a222d31223b733a32353a2273686f775f656d7074795f63617465676f726965735f636174223b733a313a2230223b733a32303a2273686f775f7375626361745f646573635f636174223b733a313a2231223b733a32353a2273686f775f6361745f6e756d5f61727469636c65735f636174223b733a313a2231223b733a32303a226e756d5f6c656164696e675f61727469636c6573223b733a313a2231223b733a31383a226e756d5f696e74726f5f61727469636c6573223b733a313a2234223b733a31313a226e756d5f636f6c756d6e73223b733a313a2232223b733a393a226e756d5f6c696e6b73223b733a313a2234223b733a31383a226d756c74695f636f6c756d6e5f6f72646572223b733a313a2230223b733a32343a2273686f775f73756263617465676f72795f636f6e74656e74223b733a313a2230223b733a32313a2273686f775f706167696e6174696f6e5f6c696d6974223b733a313a2231223b733a31323a2266696c7465725f6669656c64223b733a343a2268696465223b733a31333a2273686f775f68656164696e6773223b733a313a2231223b733a31343a226c6973745f73686f775f64617465223b733a313a2230223b733a31313a22646174655f666f726d6174223b733a303a22223b733a31343a226c6973745f73686f775f68697473223b733a313a2231223b733a31363a226c6973745f73686f775f617574686f72223b733a313a2231223b733a31313a226f7264657262795f707269223b733a353a226f72646572223b733a31313a226f7264657262795f736563223b733a353a227264617465223b733a31303a226f726465725f64617465223b733a393a227075626c6973686564223b733a31353a2273686f775f706167696e6174696f6e223b733a313a2232223b733a32333a2273686f775f706167696e6174696f6e5f726573756c7473223b733a313a2231223b733a31333a2273686f775f6665617475726564223b733a343a2273686f77223b733a31343a2273686f775f666565645f6c696e6b223b733a313a2231223b733a31323a22666565645f73756d6d617279223b733a313a2230223b733a31383a22666565645f73686f775f726561646d6f7265223b733a313a2230223b733a31323a227365665f616476616e636564223b693a303b733a373a227365665f696473223b693a303b733a32303a22637573746f6d5f6669656c64735f656e61626c65223b733a313a2231223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a393a22736570617261746f72223b733a313a222e223b7d733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a343a7b733a363a22726f626f7473223b733a303a22223b733a363a22617574686f72223b733a303a22223b733a363a22726967687473223b733a303a22223b733a31303a22787265666572656e6365223b733a303a22223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a393a22736570617261746f72223b733a313a222e223b7d733a373a2276657273696f6e223b733a313a2233223b733a383a226f72646572696e67223b733a313a2230223b733a383a2263617465676f7279223b733a31383a224d697373696f6e20616e6420566973696f6e223b733a393a226361745f7374617465223b733a323a222d32223b733a31303a226361745f616363657373223b733a313a2231223b733a343a22736c7567223b733a393a22313a6d697373696f6e223b733a373a22636174736c7567223b733a31353a22323a756e63617465676f7269736564223b733a363a22617574686f72223b733a31303a2253757065722055736572223b733a363a226c61796f7574223b733a373a2261727469636c65223b733a373a22636f6e74657874223b733a31393a22636f6d5f636f6e74656e742e61727469636c65223b733a343a2270617468223b733a36373a22696e6465782e7068702f636f6d706f6e656e742f636f6e74656e742f61727469636c653f69643d313a6d697373696f6e2663617469643d32264974656d69643d313031223b733a31303a226d657461617574686f72223b4e3b7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a373a226d6574616b6579223b693a343b733a383a226d65746164657363223b693a353b733a31303a226d657461617574686f72223b693a363b733a363a22617574686f72223b693a373b733a31363a22637265617465645f62795f616c696173223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a343a7b733a343a2254797065223b613a313a7b733a373a2241727469636c65223b4f3a32373a224a6f6f6d6c615c434d535c4f626a6563745c434d534f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a373a2241727469636c65223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a363a22417574686f72223b613a313a7b733a31303a2253757065722055736572223b4f3a32373a224a6f6f6d6c615c434d535c4f626a6563745c434d534f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a31303a2253757065722055736572223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a2243617465676f7279223b613a313a7b733a31383a224d697373696f6e20616e6420566973696f6e223b4f3a32373a224a6f6f6d6c615c434d535c4f626a6563745c434d534f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a31383a224d697373696f6e20616e6420566973696f6e223b733a353a227374617465223b693a2d323b733a363a22616363657373223b693a313b7d7d733a383a224c616e6775616765223b613a313a7b733a313a222a223b4f3a32373a224a6f6f6d6c615c434d535c4f626a6563745c434d534f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a34363a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d31223b733a353a22726f757465223b733a36323a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d313a6d697373696f6e2663617469643d32223b733a353a227469746c65223b733a373a224d697373696f6e223b733a31313a226465736372697074696f6e223b733a3331313a222052656d656d6265722c20666f726d20666f6c6c6f77732066756e6374696f6e2c20696e206d697373696f6e2073746174656d656e74732c20617320696e20616c6c20627573696e6573732e204d616b6520697420776f726b20666f7220796f757220627573696e6573732e202e2e2e20486176696e6720677265617420637573746f6d657220736572766963652069732077617920686172646572207468616e2077726974696e67207468617420696e746f2061206d697373696f6e2073746174656d656e742e2052656164206f7468657220636f6d70616e69657327206d697373696f6e2073746174656d656e74732c2062757420777269746520612073746174656d656e7420746861742069732061626f757420796f7520616e64206e6f7420736f6d65206f7468657220636f6d70616e792e20223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b693a303b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a313a222a223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22323031382d30362d32382032323a32363a3034223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22323031382d30362d32382032323a32363a3034223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a343b733a31353a2264656661756c744c616e6775616765223b733a353a22656e2d4742223b7d);
INSERT INTO `crdev_finder_links` (`link_id`, `url`, `route`, `title`, `description`, `indexdate`, `md5sum`, `published`, `state`, `access`, `language`, `publish_start_date`, `publish_end_date`, `start_date`, `end_date`, `list_price`, `sale_price`, `type_id`, `object`) VALUES
(11, 'index.php?option=com_content&view=article&id=2', 'index.php?option=com_content&view=article&id=2:pay-visit-to-career-development-office&catid=8', 'Pay Visit to career Development office', ' WHY SHOULD I PAY A VISIT TO THE CAREER DEVELOPMENT OFFICE? Get access to professionals who are specifically trained to assist you with your career-related concerns. It’s the appropriate office on campus that provides useful information to enable you figure out what you want to do with your life, not only when you’re about to start your job hunt, but also when you want to learn more about yourself - your interests, skills, values, personality. We work closely with employers who may someday hire you in order to develop internship and full-time opportunities for your future career. Our Career Development staffs are ever ready to interact with you on daily basis so as to be conversant with your skills, strengths, weaknesses, potential, growth and development areas, etc. for reference to an employer who may be looking for your caliber to fill a specific position. Career Development Office will not offer you a job; job searching is hard work and requires much effort on your part. We will expose you to a world of opportunities, resources and needed guidance which you will utilise to explore and develop yourself, in order to carve a thriving career. Attend workshops offered by Career Development Office starting in your first year. The Career Development Office is for all students in the university, not just final year students. If you wait until your last semester to start visiting the Career Development Office, you have waited too long and may not find the assistance you are looking for. Get in early - meet the staff - and start developing your career early, and you will be put miles ahead of your mates. You are paying for it! Your fees have paid for the support the Career Development Office provides. Therefore, not taking advantage of it simply means you are not utilising some part of your fees. If you are struggling with a career decision, and you need help on your resume, or you aren’t sure how to get started with the internship and job search, you must contact Career DevelopmentOffice to schedule an appointment at Room 2, Annan Block, next to the Procurement Office or send a mail to career development.office@ttu.edu.gh or career development.office@gmail.com. Let us know if we are not making you feel welcome. ', '2018-07-04 16:35:57', '01338ad4da3d2638c56ecb10694c8518', 1, 0, 1, '*', '2018-07-01 22:55:19', '0000-00-00 00:00:00', '2018-07-01 22:55:19', '0000-00-00 00:00:00', 0, 0, 4, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31393a7b733a31313a22002a00656c656d656e7473223b613a32353a7b733a323a226964223b733a313a2232223b733a353a22616c696173223b733a33383a227061792d76697369742d746f2d6361726565722d646576656c6f706d656e742d6f6666696365223b733a373a2273756d6d617279223b733a323335383a223c68333e5748592053484f554c44204920504159204120564953495420544f205448452043415245455220444556454c4f504d454e54204f46464943453f3c2f68333e0d0a3c6f6c3e0d0a3c6c693e4765742061636365737320746f2070726f66657373696f6e616c732077686f20617265207370656369666963616c6c7920747261696e656420746f2061737369737420796f75207769746820796f7572206361726565722d72656c6174656420636f6e6365726e732e3c2f6c693e0d0a3c6c693e4974e28099732074686520617070726f707269617465206f6666696365206f6e2063616d70757320746861742070726f76696465732075736566756c20696e666f726d6174696f6e20746f20656e61626c6520796f7520666967757265206f7574207768617420796f752077616e7420746f20646f207769746820796f7572206c6966652c206e6f74206f6e6c79207768656e20796f75e2809972652061626f757420746f20737461727420796f7572206a6f622068756e742c2062757420616c736f207768656e20796f752077616e7420746f206c6561726e206d6f72652061626f757420796f757273656c66202d20796f757220696e746572657374732c20736b696c6c732c2076616c7565732c20706572736f6e616c6974792e3c2f6c693e0d0a3c6c693e576520776f726b20636c6f73656c79207769746820656d706c6f796572732077686f206d617920736f6d65646179206869726520796f7520696e206f7264657220746f20646576656c6f7020696e7465726e7368697020616e642066756c6c2d74696d65206f70706f7274756e697469657320666f7220796f757220667574757265206361726565722e3c2f6c693e0d0a3c6c693e4f75722043617265657220446576656c6f706d656e742073746166667320617265206576657220726561647920746f20696e746572616374207769746820796f75206f6e206461696c7920626173697320736f20617320746f20626520636f6e76657273616e74207769746820796f757220736b696c6c732c20737472656e677468732c207765616b6e65737365732c20706f74656e7469616c2c2067726f77746820616e6420646576656c6f706d656e742061726561732c206574632e20666f72207265666572656e636520746f20616e20656d706c6f7965722077686f206d6179206265206c6f6f6b696e6720666f7220796f75722063616c6962657220746f2066696c6c206120737065636966696320706f736974696f6e2e3c2f6c693e0d0a3c6c693e43617265657220446576656c6f706d656e74204f66666963652077696c6c206e6f74206f6666657220796f752061206a6f623b206a6f6220736561726368696e67206973206861726420776f726b20616e64207265717569726573206d756368206566666f7274206f6e20796f757220706172742e2057652077696c6c206578706f736520796f7520746f206120776f726c64206f66206f70706f7274756e69746965732c207265736f757263657320616e64206e65656465642067756964616e636520776869636820796f752077696c6c207574696c69736520746f206578706c6f726520616e6420646576656c6f7020796f757273656c662c20696e206f7264657220746f2063617276652061207468726976696e67206361726565722e3c2f6c693e0d0a3c6c693e417474656e6420776f726b73686f7073206f6666657265642062792043617265657220446576656c6f706d656e74204f6666696365207374617274696e6720696e20796f757220666972737420796561722e205468652043617265657220446576656c6f706d656e74204f666669636520697320666f7220616c6c2073747564656e747320696e2074686520756e69766572736974792c206e6f74206a7573742066696e616c20796561722073747564656e74732e20496620796f75207761697420756e74696c20796f7572206c6173742073656d657374657220746f207374617274207669736974696e67207468652043617265657220446576656c6f706d656e74204f66666963652c20796f7520686176652077616974656420746f6f206c6f6e6720616e64206d6179206e6f742066696e642074686520617373697374616e636520796f7520617265206c6f6f6b696e6720666f722e2047657420696e206561726c79202d206d65657420746865207374616666202d20616e6420737461727420646576656c6f70696e6720796f757220636172656572206561726c792c20616e6420796f752077696c6c20626520707574206d696c6573206168656164206f6620796f7572206d617465732e3c2f6c693e0d0a3c2f6f6c3e0d0a3c703e3c7374726f6e673e596f752061726520706179696e6720666f722069742120596f757220666565732068617665207061696420666f722074686520737570706f7274207468652043617265657220446576656c6f706d656e74204f66666963652070726f76696465732e205468657265666f72652c206e6f742074616b696e6720616476616e74616765206f662069742073696d706c79206d65616e7320796f7520617265206e6f74207574696c6973696e6720736f6d652070617274206f6620796f757220666565732e20496620796f7520617265207374727567676c696e672077697468206120636172656572206465636973696f6e2c20616e6420796f75206e6565642068656c70206f6e20796f757220726573756d652c206f7220796f75206172656ee2809974207375726520686f7720746f20676574207374617274656420776974682074686520696e7465726e7368697020616e64206a6f62207365617263682c20796f75206d75737420636f6e746163742043617265657220446576656c6f706d656e74204f666669636520746f207363686564756c6520616e206170706f696e746d656e7420617420526f6f6d20322c20416e6e616e20426c6f636b2c206e65787420746f207468652050726f637572656d656e74204f6666696365206f722073656e642061206d61696c20746f2063617265657220646576656c6f706d656e742e6f6666696365407474752e6564752e6768206f722063617265657220646576656c6f706d656e742e6f666669636540676d61696c2e636f6d2e204c6574207573206b6e6f7720696620776520617265206e6f74206d616b696e6720796f75206665656c2077656c636f6d652e3c2f7374726f6e673e3c2f703e223b733a343a22626f6479223b733a303a22223b733a353a226361746964223b733a313a2238223b733a31303a22637265617465645f6279223b733a333a22393036223b733a31363a22637265617465645f62795f616c696173223b733a303a22223b733a383a226d6f646966696564223b733a31393a22323031382d30372d30312032333a30333a3533223b733a31313a226d6f6469666965645f6279223b733a333a22393036223b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a38323a7b733a31343a2261727469636c655f6c61796f7574223b733a393a225f3a64656661756c74223b733a31303a2273686f775f7469746c65223b733a313a2231223b733a31313a226c696e6b5f7469746c6573223b733a313a2231223b733a31303a2273686f775f696e74726f223b733a313a2231223b733a31393a22696e666f5f626c6f636b5f706f736974696f6e223b733a313a2230223b733a32313a22696e666f5f626c6f636b5f73686f775f7469746c65223b733a313a2231223b733a31333a2273686f775f63617465676f7279223b733a313a2231223b733a31333a226c696e6b5f63617465676f7279223b733a313a2231223b733a32303a2273686f775f706172656e745f63617465676f7279223b733a313a2230223b733a32303a226c696e6b5f706172656e745f63617465676f7279223b733a313a2230223b733a31373a2273686f775f6173736f63696174696f6e73223b733a313a2230223b733a353a22666c616773223b733a313a2231223b733a31313a2273686f775f617574686f72223b733a313a2231223b733a31313a226c696e6b5f617574686f72223b733a313a2230223b733a31363a2273686f775f6372656174655f64617465223b733a313a2230223b733a31363a2273686f775f6d6f646966795f64617465223b733a313a2230223b733a31373a2273686f775f7075626c6973685f64617465223b733a313a2231223b733a32303a2273686f775f6974656d5f6e617669676174696f6e223b733a313a2231223b733a393a2273686f775f766f7465223b733a313a2230223b733a31333a2273686f775f726561646d6f7265223b733a313a2231223b733a31393a2273686f775f726561646d6f72655f7469746c65223b733a313a2231223b733a31343a22726561646d6f72655f6c696d6974223b733a333a22313030223b733a393a2273686f775f74616773223b733a313a2231223b733a31303a2273686f775f69636f6e73223b733a313a2231223b733a31353a2273686f775f7072696e745f69636f6e223b733a313a2231223b733a31353a2273686f775f656d61696c5f69636f6e223b733a313a2230223b733a393a2273686f775f68697473223b733a313a2231223b733a31313a2273686f775f6e6f61757468223b733a313a2230223b733a31333a2275726c735f706f736974696f6e223b733a313a2230223b733a373a2263617074636861223b733a303a22223b733a32333a2273686f775f7075626c697368696e675f6f7074696f6e73223b733a313a2231223b733a32303a2273686f775f61727469636c655f6f7074696f6e73223b733a313a2231223b733a31323a22736176655f686973746f7279223b733a313a2231223b733a31333a22686973746f72795f6c696d6974223b693a31303b733a32353a2273686f775f75726c735f696d616765735f66726f6e74656e64223b733a313a2230223b733a32343a2273686f775f75726c735f696d616765735f6261636b656e64223b733a313a2231223b733a373a2274617267657461223b693a303b733a373a2274617267657462223b693a303b733a373a2274617267657463223b693a303b733a31313a22666c6f61745f696e74726f223b733a343a226c656674223b733a31343a22666c6f61745f66756c6c74657874223b733a343a226c656674223b733a31353a2263617465676f72795f6c61796f7574223b733a363a225f3a626c6f67223b733a33323a2273686f775f63617465676f72795f68656164696e675f7469746c655f74657874223b733a313a2231223b733a31393a2273686f775f63617465676f72795f7469746c65223b733a313a2230223b733a31363a2273686f775f6465736372697074696f6e223b733a313a2230223b733a32323a2273686f775f6465736372697074696f6e5f696d616765223b733a313a2230223b733a383a226d61784c6576656c223b733a313a2231223b733a32313a2273686f775f656d7074795f63617465676f72696573223b733a313a2230223b733a31363a2273686f775f6e6f5f61727469636c6573223b733a313a2231223b733a31363a2273686f775f7375626361745f64657363223b733a313a2231223b733a32313a2273686f775f6361745f6e756d5f61727469636c6573223b733a313a2230223b733a31333a2273686f775f6361745f74616773223b733a313a2231223b733a32313a2273686f775f626173655f6465736372697074696f6e223b733a313a2231223b733a31313a226d61784c6576656c636174223b733a323a222d31223b733a32353a2273686f775f656d7074795f63617465676f726965735f636174223b733a313a2230223b733a32303a2273686f775f7375626361745f646573635f636174223b733a313a2231223b733a32353a2273686f775f6361745f6e756d5f61727469636c65735f636174223b733a313a2231223b733a32303a226e756d5f6c656164696e675f61727469636c6573223b733a313a2231223b733a31383a226e756d5f696e74726f5f61727469636c6573223b733a313a2234223b733a31313a226e756d5f636f6c756d6e73223b733a313a2232223b733a393a226e756d5f6c696e6b73223b733a313a2234223b733a31383a226d756c74695f636f6c756d6e5f6f72646572223b733a313a2230223b733a32343a2273686f775f73756263617465676f72795f636f6e74656e74223b733a313a2230223b733a32313a2273686f775f706167696e6174696f6e5f6c696d6974223b733a313a2231223b733a31323a2266696c7465725f6669656c64223b733a343a2268696465223b733a31333a2273686f775f68656164696e6773223b733a313a2231223b733a31343a226c6973745f73686f775f64617465223b733a313a2230223b733a31313a22646174655f666f726d6174223b733a303a22223b733a31343a226c6973745f73686f775f68697473223b733a313a2231223b733a31363a226c6973745f73686f775f617574686f72223b733a313a2231223b733a31313a226f7264657262795f707269223b733a353a226f72646572223b733a31313a226f7264657262795f736563223b733a353a227264617465223b733a31303a226f726465725f64617465223b733a393a227075626c6973686564223b733a31353a2273686f775f706167696e6174696f6e223b733a313a2232223b733a32333a2273686f775f706167696e6174696f6e5f726573756c7473223b733a313a2231223b733a31333a2273686f775f6665617475726564223b733a343a2273686f77223b733a31343a2273686f775f666565645f6c696e6b223b733a313a2231223b733a31323a22666565645f73756d6d617279223b733a313a2230223b733a31383a22666565645f73686f775f726561646d6f7265223b733a313a2230223b733a31323a227365665f616476616e636564223b693a303b733a373a227365665f696473223b693a303b733a32303a22637573746f6d5f6669656c64735f656e61626c65223b733a313a2231223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a393a22736570617261746f72223b733a313a222e223b7d733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a343a7b733a363a22726f626f7473223b733a303a22223b733a363a22617574686f72223b733a303a22223b733a363a22726967687473223b733a303a22223b733a31303a22787265666572656e6365223b733a303a22223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a393a22736570617261746f72223b733a313a222e223b7d733a373a2276657273696f6e223b733a313a2233223b733a383a226f72646572696e67223b733a313a2230223b733a383a2263617465676f7279223b733a32323a225768617420776520646f202d20506179205669736974223b733a393a226361745f7374617465223b733a323a222d32223b733a31303a226361745f616363657373223b733a313a2231223b733a343a22736c7567223b733a34303a22323a7061792d76697369742d746f2d6361726565722d646576656c6f706d656e742d6f6666696365223b733a373a22636174736c7567223b733a32323a22383a776861742d77652d646f2d7061792d7669736974223b733a363a22617574686f72223b733a31303a2253757065722055736572223b733a363a226c61796f7574223b733a373a2261727469636c65223b733a373a22636f6e74657874223b733a31393a22636f6d5f636f6e74656e742e61727469636c65223b733a343a2270617468223b733a39383a22696e6465782e7068702f636f6d706f6e656e742f636f6e74656e742f61727469636c653f69643d323a7061792d76697369742d746f2d6361726565722d646576656c6f706d656e742d6f66666963652663617469643d38264974656d69643d313031223b733a31303a226d657461617574686f72223b4e3b7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a373a226d6574616b6579223b693a343b733a383a226d65746164657363223b693a353b733a31303a226d657461617574686f72223b693a363b733a363a22617574686f72223b693a373b733a31363a22637265617465645f62795f616c696173223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a343a7b733a343a2254797065223b613a313a7b733a373a2241727469636c65223b4f3a32373a224a6f6f6d6c615c434d535c4f626a6563745c434d534f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a373a2241727469636c65223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a363a22417574686f72223b613a313a7b733a31303a2253757065722055736572223b4f3a32373a224a6f6f6d6c615c434d535c4f626a6563745c434d534f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a31303a2253757065722055736572223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a2243617465676f7279223b613a313a7b733a32323a225768617420776520646f202d20506179205669736974223b4f3a32373a224a6f6f6d6c615c434d535c4f626a6563745c434d534f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a32323a225768617420776520646f202d20506179205669736974223b733a353a227374617465223b693a2d323b733a363a22616363657373223b693a313b7d7d733a383a224c616e6775616765223b613a313a7b733a313a222a223b4f3a32373a224a6f6f6d6c615c434d535c4f626a6563745c434d534f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a34363a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d32223b733a353a22726f757465223b733a39333a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d323a7061792d76697369742d746f2d6361726565722d646576656c6f706d656e742d6f66666963652663617469643d38223b733a353a227469746c65223b733a33383a2250617920566973697420746f2063617265657220446576656c6f706d656e74206f6666696365223b733a31313a226465736372697074696f6e223b733a323235323a22205748592053484f554c44204920504159204120564953495420544f205448452043415245455220444556454c4f504d454e54204f46464943453f204765742061636365737320746f2070726f66657373696f6e616c732077686f20617265207370656369666963616c6c7920747261696e656420746f2061737369737420796f75207769746820796f7572206361726565722d72656c6174656420636f6e6365726e732e204974e28099732074686520617070726f707269617465206f6666696365206f6e2063616d70757320746861742070726f76696465732075736566756c20696e666f726d6174696f6e20746f20656e61626c6520796f7520666967757265206f7574207768617420796f752077616e7420746f20646f207769746820796f7572206c6966652c206e6f74206f6e6c79207768656e20796f75e2809972652061626f757420746f20737461727420796f7572206a6f622068756e742c2062757420616c736f207768656e20796f752077616e7420746f206c6561726e206d6f72652061626f757420796f757273656c66202d20796f757220696e746572657374732c20736b696c6c732c2076616c7565732c20706572736f6e616c6974792e20576520776f726b20636c6f73656c79207769746820656d706c6f796572732077686f206d617920736f6d65646179206869726520796f7520696e206f7264657220746f20646576656c6f7020696e7465726e7368697020616e642066756c6c2d74696d65206f70706f7274756e697469657320666f7220796f757220667574757265206361726565722e204f75722043617265657220446576656c6f706d656e742073746166667320617265206576657220726561647920746f20696e746572616374207769746820796f75206f6e206461696c7920626173697320736f20617320746f20626520636f6e76657273616e74207769746820796f757220736b696c6c732c20737472656e677468732c207765616b6e65737365732c20706f74656e7469616c2c2067726f77746820616e6420646576656c6f706d656e742061726561732c206574632e20666f72207265666572656e636520746f20616e20656d706c6f7965722077686f206d6179206265206c6f6f6b696e6720666f7220796f75722063616c6962657220746f2066696c6c206120737065636966696320706f736974696f6e2e2043617265657220446576656c6f706d656e74204f66666963652077696c6c206e6f74206f6666657220796f752061206a6f623b206a6f6220736561726368696e67206973206861726420776f726b20616e64207265717569726573206d756368206566666f7274206f6e20796f757220706172742e2057652077696c6c206578706f736520796f7520746f206120776f726c64206f66206f70706f7274756e69746965732c207265736f757263657320616e64206e65656465642067756964616e636520776869636820796f752077696c6c207574696c69736520746f206578706c6f726520616e6420646576656c6f7020796f757273656c662c20696e206f7264657220746f2063617276652061207468726976696e67206361726565722e20417474656e6420776f726b73686f7073206f6666657265642062792043617265657220446576656c6f706d656e74204f6666696365207374617274696e6720696e20796f757220666972737420796561722e205468652043617265657220446576656c6f706d656e74204f666669636520697320666f7220616c6c2073747564656e747320696e2074686520756e69766572736974792c206e6f74206a7573742066696e616c20796561722073747564656e74732e20496620796f75207761697420756e74696c20796f7572206c6173742073656d657374657220746f207374617274207669736974696e67207468652043617265657220446576656c6f706d656e74204f66666963652c20796f7520686176652077616974656420746f6f206c6f6e6720616e64206d6179206e6f742066696e642074686520617373697374616e636520796f7520617265206c6f6f6b696e6720666f722e2047657420696e206561726c79202d206d65657420746865207374616666202d20616e6420737461727420646576656c6f70696e6720796f757220636172656572206561726c792c20616e6420796f752077696c6c20626520707574206d696c6573206168656164206f6620796f7572206d617465732e20596f752061726520706179696e6720666f722069742120596f757220666565732068617665207061696420666f722074686520737570706f7274207468652043617265657220446576656c6f706d656e74204f66666963652070726f76696465732e205468657265666f72652c206e6f742074616b696e6720616476616e74616765206f662069742073696d706c79206d65616e7320796f7520617265206e6f74207574696c6973696e6720736f6d652070617274206f6620796f757220666565732e20496620796f7520617265207374727567676c696e672077697468206120636172656572206465636973696f6e2c20616e6420796f75206e6565642068656c70206f6e20796f757220726573756d652c206f7220796f75206172656ee2809974207375726520686f7720746f20676574207374617274656420776974682074686520696e7465726e7368697020616e64206a6f62207365617263682c20796f75206d75737420636f6e746163742043617265657220446576656c6f706d656e744f666669636520746f207363686564756c6520616e206170706f696e746d656e7420617420526f6f6d20322c20416e6e616e20426c6f636b2c206e65787420746f207468652050726f637572656d656e74204f6666696365206f722073656e642061206d61696c20746f2063617265657220646576656c6f706d656e742e6f6666696365407474752e6564752e6768206f722063617265657220646576656c6f706d656e742e6f666669636540676d61696c2e636f6d2e204c6574207573206b6e6f7720696620776520617265206e6f74206d616b696e6720796f75206665656c2077656c636f6d652e20223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b693a303b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a313a222a223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22323031382d30372d30312032323a35353a3139223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22323031382d30372d30312032323a35353a3139223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a343b733a31353a2264656661756c744c616e6775616765223b733a353a22656e2d4742223b7d),
(12, 'index.php?option=com_content&view=category&id=11', 'index.php?option=com_content&view=category&id=11', 'Pay Visit', '', '2018-07-04 16:36:56', 'c0fa62fad8321b1353dc80186394e8b5', 1, 1, 1, '*', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2018-07-04 16:36:56', '0000-00-00 00:00:00', 0, 0, 2, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31393a7b733a31313a22002a00656c656d656e7473223b613a31383a7b733a323a226964223b733a323a223131223b733a353a22616c696173223b733a393a227061792d7669736974223b733a373a2273756d6d617279223b733a303a22223b733a393a22657874656e73696f6e223b733a31313a22636f6d5f636f6e74656e74223b733a31303a22637265617465645f6279223b733a333a22393036223b733a383a226d6f646966696564223b733a31393a22323031382d30372d30342031363a33363a3536223b733a31313a226d6f6469666965645f6279223b733a313a2230223b733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a323a7b733a363a22617574686f72223b733a303a22223b733a363a22726f626f7473223b733a303a22223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a393a22736570617261746f72223b733a313a222e223b7d733a333a226c6674223b733a323a223137223b733a393a22706172656e745f6964223b733a313a2231223b733a353a226c6576656c223b733a313a2231223b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a333a7b733a31353a2263617465676f72795f6c61796f7574223b733a303a22223b733a353a22696d616765223b733a303a22223b733a393a22696d6167655f616c74223b733a303a22223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a393a22736570617261746f72223b733a313a222e223b7d733a343a22736c7567223b733a31323a2231313a7061792d7669736974223b733a363a226c61796f7574223b733a383a2263617465676f7279223b733a31303a226d657461617574686f72223b4e3b733a343a2270617468223b733a36303a22696e6465782e7068702f636f6d706f6e656e742f636f6e74656e742f63617465676f72792f31312d7061792d76697369743f4974656d69643d313031223b7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a343a226c696e6b223b693a343b733a373a226d6574616b6579223b693a353b733a383a226d65746164657363223b693a363b733a31303a226d657461617574686f72223b693a373b733a363a22617574686f72223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a323a7b733a343a2254797065223b613a313a7b733a383a2243617465676f7279223b4f3a32373a224a6f6f6d6c615c434d535c4f626a6563745c434d534f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a383a2243617465676f7279223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a224c616e6775616765223b613a313a7b733a313a222a223b4f3a32373a224a6f6f6d6c615c434d535c4f626a6563745c434d534f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a34383a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d63617465676f72792669643d3131223b733a353a22726f757465223b733a34383a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d63617465676f72792669643d3131223b733a353a227469746c65223b733a393a22506179205669736974223b733a31313a226465736372697074696f6e223b733a303a22223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b693a313b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a313a222a223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22323031382d30372d30342031363a33363a3536223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a323b733a31353a2264656661756c744c616e6775616765223b733a353a22656e2d4742223b7d),
(13, 'index.php?option=com_content&view=category&id=12', 'index.php?option=com_content&view=category&id=12', 'Internship Ended', '', '2018-07-04 16:37:17', 'b69465f363dcac7eae1b3b8d6268d85d', 1, 1, 1, '*', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2018-07-04 16:37:17', '0000-00-00 00:00:00', 0, 0, 2, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31393a7b733a31313a22002a00656c656d656e7473223b613a31383a7b733a323a226964223b733a323a223132223b733a353a22616c696173223b733a31363a22696e7465726e736869702d656e646564223b733a373a2273756d6d617279223b733a303a22223b733a393a22657874656e73696f6e223b733a31313a22636f6d5f636f6e74656e74223b733a31303a22637265617465645f6279223b733a333a22393036223b733a383a226d6f646966696564223b733a31393a22323031382d30372d30342031363a33373a3137223b733a31313a226d6f6469666965645f6279223b733a313a2230223b733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a323a7b733a363a22617574686f72223b733a303a22223b733a363a22726f626f7473223b733a303a22223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a393a22736570617261746f72223b733a313a222e223b7d733a333a226c6674223b733a323a223139223b733a393a22706172656e745f6964223b733a313a2231223b733a353a226c6576656c223b733a313a2231223b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a333a7b733a31353a2263617465676f72795f6c61796f7574223b733a303a22223b733a353a22696d616765223b733a303a22223b733a393a22696d6167655f616c74223b733a303a22223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a393a22736570617261746f72223b733a313a222e223b7d733a343a22736c7567223b733a31393a2231323a696e7465726e736869702d656e646564223b733a363a226c61796f7574223b733a383a2263617465676f7279223b733a31303a226d657461617574686f72223b4e3b733a343a2270617468223b733a36373a22696e6465782e7068702f636f6d706f6e656e742f636f6e74656e742f63617465676f72792f31322d696e7465726e736869702d656e6465643f4974656d69643d313031223b7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a343a226c696e6b223b693a343b733a373a226d6574616b6579223b693a353b733a383a226d65746164657363223b693a363b733a31303a226d657461617574686f72223b693a373b733a363a22617574686f72223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a323a7b733a343a2254797065223b613a313a7b733a383a2243617465676f7279223b4f3a32373a224a6f6f6d6c615c434d535c4f626a6563745c434d534f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a383a2243617465676f7279223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a224c616e6775616765223b613a313a7b733a313a222a223b4f3a32373a224a6f6f6d6c615c434d535c4f626a6563745c434d534f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a34383a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d63617465676f72792669643d3132223b733a353a22726f757465223b733a34383a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d63617465676f72792669643d3132223b733a353a227469746c65223b733a31363a22496e7465726e7368697020456e646564223b733a31313a226465736372697074696f6e223b733a303a22223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b693a313b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a313a222a223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22323031382d30372d30342031363a33373a3137223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a323b733a31353a2264656661756c744c616e6775616765223b733a353a22656e2d4742223b7d),
(14, 'index.php?option=com_content&view=category&id=13', 'index.php?option=com_content&view=category&id=13', 'Accepting Offer', '', '2018-07-04 16:37:33', 'd8cfdb8797734c2c581fabf0a8840ab4', 1, 1, 1, '*', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2018-07-04 16:37:33', '0000-00-00 00:00:00', 0, 0, 2, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31393a7b733a31313a22002a00656c656d656e7473223b613a31383a7b733a323a226964223b733a323a223133223b733a353a22616c696173223b733a31353a22616363657074696e672d6f66666572223b733a373a2273756d6d617279223b733a303a22223b733a393a22657874656e73696f6e223b733a31313a22636f6d5f636f6e74656e74223b733a31303a22637265617465645f6279223b733a333a22393036223b733a383a226d6f646966696564223b733a31393a22323031382d30372d30342031363a33373a3333223b733a31313a226d6f6469666965645f6279223b733a313a2230223b733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a323a7b733a363a22617574686f72223b733a303a22223b733a363a22726f626f7473223b733a303a22223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a393a22736570617261746f72223b733a313a222e223b7d733a333a226c6674223b733a323a223231223b733a393a22706172656e745f6964223b733a313a2231223b733a353a226c6576656c223b733a313a2231223b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a333a7b733a31353a2263617465676f72795f6c61796f7574223b733a303a22223b733a353a22696d616765223b733a303a22223b733a393a22696d6167655f616c74223b733a303a22223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a393a22736570617261746f72223b733a313a222e223b7d733a343a22736c7567223b733a31383a2231333a616363657074696e672d6f66666572223b733a363a226c61796f7574223b733a383a2263617465676f7279223b733a31303a226d657461617574686f72223b4e3b733a343a2270617468223b733a36363a22696e6465782e7068702f636f6d706f6e656e742f636f6e74656e742f63617465676f72792f31332d616363657074696e672d6f666665723f4974656d69643d313031223b7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a343a226c696e6b223b693a343b733a373a226d6574616b6579223b693a353b733a383a226d65746164657363223b693a363b733a31303a226d657461617574686f72223b693a373b733a363a22617574686f72223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a323a7b733a343a2254797065223b613a313a7b733a383a2243617465676f7279223b4f3a32373a224a6f6f6d6c615c434d535c4f626a6563745c434d534f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a383a2243617465676f7279223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a224c616e6775616765223b613a313a7b733a313a222a223b4f3a32373a224a6f6f6d6c615c434d535c4f626a6563745c434d534f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a34383a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d63617465676f72792669643d3133223b733a353a22726f757465223b733a34383a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d63617465676f72792669643d3133223b733a353a227469746c65223b733a31353a22416363657074696e67204f66666572223b733a31313a226465736372697074696f6e223b733a303a22223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b693a313b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a313a222a223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22323031382d30372d30342031363a33373a3333223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a323b733a31353a2264656661756c744c616e6775616765223b733a353a22656e2d4742223b7d),
(15, 'index.php?option=com_content&view=category&id=14', 'index.php?option=com_content&view=category&id=14', 'General', '', '2018-07-04 16:37:58', '63c9673e6990ef31e5d470fb9f08dba7', 1, 1, 1, '*', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2018-07-04 16:37:58', '0000-00-00 00:00:00', 0, 0, 2, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31393a7b733a31313a22002a00656c656d656e7473223b613a31383a7b733a323a226964223b733a323a223134223b733a353a22616c696173223b733a373a2267656e6572616c223b733a373a2273756d6d617279223b733a303a22223b733a393a22657874656e73696f6e223b733a31313a22636f6d5f636f6e74656e74223b733a31303a22637265617465645f6279223b733a333a22393036223b733a383a226d6f646966696564223b733a31393a22323031382d30372d30342031363a33373a3538223b733a31313a226d6f6469666965645f6279223b733a313a2230223b733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a323a7b733a363a22617574686f72223b733a303a22223b733a363a22726f626f7473223b733a303a22223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a393a22736570617261746f72223b733a313a222e223b7d733a333a226c6674223b733a323a223233223b733a393a22706172656e745f6964223b733a313a2231223b733a353a226c6576656c223b733a313a2231223b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a333a7b733a31353a2263617465676f72795f6c61796f7574223b733a303a22223b733a353a22696d616765223b733a303a22223b733a393a22696d6167655f616c74223b733a303a22223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a393a22736570617261746f72223b733a313a222e223b7d733a343a22736c7567223b733a31303a2231343a67656e6572616c223b733a363a226c61796f7574223b733a383a2263617465676f7279223b733a31303a226d657461617574686f72223b4e3b733a343a2270617468223b733a35383a22696e6465782e7068702f636f6d706f6e656e742f636f6e74656e742f63617465676f72792f31342d67656e6572616c3f4974656d69643d313031223b7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a343a226c696e6b223b693a343b733a373a226d6574616b6579223b693a353b733a383a226d65746164657363223b693a363b733a31303a226d657461617574686f72223b693a373b733a363a22617574686f72223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a323a7b733a343a2254797065223b613a313a7b733a383a2243617465676f7279223b4f3a32373a224a6f6f6d6c615c434d535c4f626a6563745c434d534f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a383a2243617465676f7279223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a224c616e6775616765223b613a313a7b733a313a222a223b4f3a32373a224a6f6f6d6c615c434d535c4f626a6563745c434d534f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a34383a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d63617465676f72792669643d3134223b733a353a22726f757465223b733a34383a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d63617465676f72792669643d3134223b733a353a227469746c65223b733a373a2247656e6572616c223b733a31313a226465736372697074696f6e223b733a303a22223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b693a313b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a313a222a223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22323031382d30372d30342031363a33373a3538223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a323b733a31353a2264656661756c744c616e6775616765223b733a353a22656e2d4742223b7d);
INSERT INTO `crdev_finder_links` (`link_id`, `url`, `route`, `title`, `description`, `indexdate`, `md5sum`, `published`, `state`, `access`, `language`, `publish_start_date`, `publish_end_date`, `start_date`, `end_date`, `list_price`, `sale_price`, `type_id`, `object`) VALUES
(16, 'index.php?option=com_content&view=article&id=3', 'index.php?option=com_content&view=article&id=3:why-pay-visit&catid=11', 'why pay visit', ' WHY SHOULD I PAY A VISIT TO THE CAREER DEVELOPMENT OFFICE? 1. Get access to professionals who are specifically trained to assist you with your career-related concerns. 2. It’s the appropriate office on campus that provides useful information to enable you figure out what you want to do with your life, not only when you’re about to start your job hunt, but also when you want to learn more about yourself - your interests, skills, values, personality. 3. We work closely with employers who may someday hire you in order to develop internship and full-time opportunities for your future career. 4. Our Career Development staffs are ever ready to interact with you on daily basis so as to be conversant with your skills, strengths, weaknesses, potential, growth and development areas, etc. for reference to an employer who may be looking for your caliber to fill a specific position. 5. Career Development Office will not offer you a job; job searching is hard work and requires much effort on your part. We will expose you to a world of opportunities, resources and needed guidance which you will utilise to explore and develop yourself, in order to carve a thriving career. 6. Attend workshops offered by Career Development Office starting in your first year. The Career Development Office is for all students in the university, not just final year students. If you wait until your last semester to start visiting the Career Development Office, you have waited too long and may not find the assistance you are looking for. Get in early - meet the staff - and start developing your career early, and you will be put miles ahead of your mates. 7. You are paying for it! Your fees have paid for the support the Career Development Office provides. Therefore, not taking advantage of it simply means you are not utilising some part of your fees. If you are struggling with a career decision, and you need help on your resume, or you aren’t sure how to get started with the internship and job search, you must contactCareer Development Office to schedule an appointment at Room 2, Annan Block, next to the Procurement Office or send a mail to career development.office@ttu.edu.gh or career development.office@gmail.com. Let us know if we are not making you feel welcome. ', '2018-07-04 17:01:50', '05c0340eccc5433dcbbefa9e13047009', 1, 1, 1, '*', '2018-07-04 17:01:50', '0000-00-00 00:00:00', '2018-07-04 17:01:50', '0000-00-00 00:00:00', 0, 0, 4, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31393a7b733a31313a22002a00656c656d656e7473223b613a32353a7b733a323a226964223b733a313a2233223b733a353a22616c696173223b733a31333a227768792d7061792d7669736974223b733a373a2273756d6d617279223b733a323430333a223c703e5748592053484f554c44204920504159204120564953495420544f205448452043415245455220444556454c4f504d454e54204f46464943453f3c2f703e0d0a3c703e312e204765742061636365737320746f2070726f66657373696f6e616c732077686f20617265207370656369666963616c6c7920747261696e656420746f2061737369737420796f75207769746820796f7572206361726565722d72656c6174656420636f6e6365726e732e3c2f703e0d0a3c703e322e204974e28099732074686520617070726f707269617465206f6666696365206f6e2063616d70757320746861742070726f76696465732075736566756c20696e666f726d6174696f6e20746f20656e61626c6520796f7520666967757265206f7574207768617420796f752077616e7420746f20646f207769746820796f7572206c6966652c206e6f74206f6e6c79207768656e20796f75e2809972652061626f757420746f20737461727420796f7572206a6f622068756e742c2062757420616c736f207768656e20796f752077616e7420746f206c6561726e206d6f72652061626f757420796f757273656c66202d20796f757220696e746572657374732c20736b696c6c732c2076616c7565732c20706572736f6e616c6974792e3c2f703e0d0a3c703e332e20576520776f726b20636c6f73656c79207769746820656d706c6f796572732077686f206d617920736f6d65646179206869726520796f7520696e206f7264657220746f20646576656c6f7020696e7465726e7368697020616e642066756c6c2d74696d65206f70706f7274756e697469657320666f7220796f757220667574757265206361726565722e3c2f703e0d0a3c703e342e204f75722043617265657220446576656c6f706d656e742073746166667320617265206576657220726561647920746f20696e746572616374207769746820796f75206f6e206461696c7920626173697320736f20617320746f20626520636f6e76657273616e74207769746820796f757220736b696c6c732c20737472656e677468732c207765616b6e65737365732c20706f74656e7469616c2c2067726f77746820616e6420646576656c6f706d656e742061726561732c206574632e20666f72207265666572656e636520746f20616e20656d706c6f7965722077686f206d6179206265206c6f6f6b696e6720666f7220796f75722063616c6962657220746f2066696c6c206120737065636966696320706f736974696f6e2e3c2f703e0d0a3c703e352e2043617265657220446576656c6f706d656e74204f66666963652077696c6c206e6f74206f6666657220796f752061206a6f623b206a6f6220736561726368696e67206973206861726420776f726b20616e64207265717569726573206d756368206566666f7274206f6e20796f757220706172742e2057652077696c6c206578706f736520796f7520746f206120776f726c64206f66206f70706f7274756e69746965732c207265736f757263657320616e64206e65656465642067756964616e636520776869636820796f752077696c6c207574696c69736520746f206578706c6f726520616e6420646576656c6f7020796f757273656c662c20696e206f7264657220746f2063617276652061207468726976696e67206361726565722e3c2f703e0d0a3c703e362e20417474656e6420776f726b73686f7073206f6666657265642062792043617265657220446576656c6f706d656e74204f6666696365207374617274696e6720696e20796f757220666972737420796561722e205468652043617265657220446576656c6f706d656e74204f666669636520697320666f7220616c6c2073747564656e747320696e2074686520756e69766572736974792c206e6f74206a7573742066696e616c20796561722073747564656e74732e20496620796f75207761697420756e74696c20796f7572206c6173742073656d657374657220746f207374617274207669736974696e67207468652043617265657220446576656c6f706d656e74204f66666963652c20796f7520686176652077616974656420746f6f206c6f6e6720616e64206d6179206e6f742066696e642074686520617373697374616e636520796f7520617265206c6f6f6b696e6720666f722e2047657420696e206561726c79202d206d65657420746865207374616666202d20616e6420737461727420646576656c6f70696e6720796f757220636172656572206561726c792c20616e6420796f752077696c6c20626520707574206d696c6573206168656164206f6620796f7572206d617465732e3c2f703e0d0a3c703e372e20596f752061726520706179696e6720666f722069742120596f757220666565732068617665207061696420666f722074686520737570706f7274207468652043617265657220446576656c6f706d656e74204f66666963652070726f76696465732e205468657265666f72652c206e6f742074616b696e6720616476616e74616765206f662069742073696d706c79206d65616e7320796f7520617265206e6f74207574696c6973696e6720736f6d652070617274206f6620796f757220666565732e3c2f703e0d0a3c703e496620796f7520617265207374727567676c696e672077697468206120636172656572206465636973696f6e2c20616e6420796f75206e6565642068656c70206f6e20796f757220726573756d652c206f7220796f75206172656ee2809974207375726520686f7720746f20676574207374617274656420776974682074686520696e7465726e7368697020616e64206a6f62207365617263682c20796f75206d75737420636f6e746163742043617265657220446576656c6f706d656e74204f666669636520746f207363686564756c6520616e206170706f696e746d656e7420617420526f6f6d20322c20416e6e616e20426c6f636b2c206e65787420746f207468652050726f637572656d656e74204f6666696365206f722073656e642061206d61696c20746f2063617265657220646576656c6f706d656e742e6f6666696365407474752e6564752e6768206f7220636172656572203c6120687265663d226d61696c746f3a646576656c6f706d656e742e6f666669636540676d61696c2e636f6d2e223e646576656c6f706d656e742e6f666669636540676d61696c2e636f6d2e203c2f613e3c2f703e0d0a3c703e4c6574207573206b6e6f7720696620776520617265206e6f74206d616b696e6720796f75206665656c2077656c636f6d652e3c2f703e223b733a343a22626f6479223b733a303a22223b733a353a226361746964223b733a323a223131223b733a31303a22637265617465645f6279223b733a333a22393036223b733a31363a22637265617465645f62795f616c696173223b733a303a22223b733a383a226d6f646966696564223b733a31393a22323031382d30372d30342031373a30313a3530223b733a31313a226d6f6469666965645f6279223b733a313a2230223b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a38323a7b733a31343a2261727469636c655f6c61796f7574223b733a393a225f3a64656661756c74223b733a31303a2273686f775f7469746c65223b733a313a2231223b733a31313a226c696e6b5f7469746c6573223b733a313a2231223b733a31303a2273686f775f696e74726f223b733a313a2231223b733a31393a22696e666f5f626c6f636b5f706f736974696f6e223b733a313a2230223b733a32313a22696e666f5f626c6f636b5f73686f775f7469746c65223b733a313a2231223b733a31333a2273686f775f63617465676f7279223b733a313a2231223b733a31333a226c696e6b5f63617465676f7279223b733a313a2231223b733a32303a2273686f775f706172656e745f63617465676f7279223b733a313a2230223b733a32303a226c696e6b5f706172656e745f63617465676f7279223b733a313a2230223b733a31373a2273686f775f6173736f63696174696f6e73223b733a313a2230223b733a353a22666c616773223b733a313a2231223b733a31313a2273686f775f617574686f72223b733a313a2231223b733a31313a226c696e6b5f617574686f72223b733a313a2230223b733a31363a2273686f775f6372656174655f64617465223b733a313a2230223b733a31363a2273686f775f6d6f646966795f64617465223b733a313a2230223b733a31373a2273686f775f7075626c6973685f64617465223b733a313a2231223b733a32303a2273686f775f6974656d5f6e617669676174696f6e223b733a313a2231223b733a393a2273686f775f766f7465223b733a313a2230223b733a31333a2273686f775f726561646d6f7265223b733a313a2231223b733a31393a2273686f775f726561646d6f72655f7469746c65223b733a313a2231223b733a31343a22726561646d6f72655f6c696d6974223b733a333a22313030223b733a393a2273686f775f74616773223b733a313a2231223b733a31303a2273686f775f69636f6e73223b733a313a2231223b733a31353a2273686f775f7072696e745f69636f6e223b733a313a2231223b733a31353a2273686f775f656d61696c5f69636f6e223b733a313a2230223b733a393a2273686f775f68697473223b733a313a2231223b733a31313a2273686f775f6e6f61757468223b733a313a2230223b733a31333a2275726c735f706f736974696f6e223b733a313a2230223b733a373a2263617074636861223b733a303a22223b733a32333a2273686f775f7075626c697368696e675f6f7074696f6e73223b733a313a2231223b733a32303a2273686f775f61727469636c655f6f7074696f6e73223b733a313a2231223b733a31323a22736176655f686973746f7279223b733a313a2231223b733a31333a22686973746f72795f6c696d6974223b693a31303b733a32353a2273686f775f75726c735f696d616765735f66726f6e74656e64223b733a313a2230223b733a32343a2273686f775f75726c735f696d616765735f6261636b656e64223b733a313a2231223b733a373a2274617267657461223b693a303b733a373a2274617267657462223b693a303b733a373a2274617267657463223b693a303b733a31313a22666c6f61745f696e74726f223b733a343a226c656674223b733a31343a22666c6f61745f66756c6c74657874223b733a343a226c656674223b733a31353a2263617465676f72795f6c61796f7574223b733a363a225f3a626c6f67223b733a33323a2273686f775f63617465676f72795f68656164696e675f7469746c655f74657874223b733a313a2231223b733a31393a2273686f775f63617465676f72795f7469746c65223b733a313a2230223b733a31363a2273686f775f6465736372697074696f6e223b733a313a2230223b733a32323a2273686f775f6465736372697074696f6e5f696d616765223b733a313a2230223b733a383a226d61784c6576656c223b733a313a2231223b733a32313a2273686f775f656d7074795f63617465676f72696573223b733a313a2230223b733a31363a2273686f775f6e6f5f61727469636c6573223b733a313a2231223b733a31363a2273686f775f7375626361745f64657363223b733a313a2231223b733a32313a2273686f775f6361745f6e756d5f61727469636c6573223b733a313a2230223b733a31333a2273686f775f6361745f74616773223b733a313a2231223b733a32313a2273686f775f626173655f6465736372697074696f6e223b733a313a2231223b733a31313a226d61784c6576656c636174223b733a323a222d31223b733a32353a2273686f775f656d7074795f63617465676f726965735f636174223b733a313a2230223b733a32303a2273686f775f7375626361745f646573635f636174223b733a313a2231223b733a32353a2273686f775f6361745f6e756d5f61727469636c65735f636174223b733a313a2231223b733a32303a226e756d5f6c656164696e675f61727469636c6573223b733a313a2231223b733a31383a226e756d5f696e74726f5f61727469636c6573223b733a313a2234223b733a31313a226e756d5f636f6c756d6e73223b733a313a2232223b733a393a226e756d5f6c696e6b73223b733a313a2234223b733a31383a226d756c74695f636f6c756d6e5f6f72646572223b733a313a2230223b733a32343a2273686f775f73756263617465676f72795f636f6e74656e74223b733a313a2230223b733a32313a2273686f775f706167696e6174696f6e5f6c696d6974223b733a313a2231223b733a31323a2266696c7465725f6669656c64223b733a343a2268696465223b733a31333a2273686f775f68656164696e6773223b733a313a2231223b733a31343a226c6973745f73686f775f64617465223b733a313a2230223b733a31313a22646174655f666f726d6174223b733a303a22223b733a31343a226c6973745f73686f775f68697473223b733a313a2231223b733a31363a226c6973745f73686f775f617574686f72223b733a313a2231223b733a31313a226f7264657262795f707269223b733a353a226f72646572223b733a31313a226f7264657262795f736563223b733a353a227264617465223b733a31303a226f726465725f64617465223b733a393a227075626c6973686564223b733a31353a2273686f775f706167696e6174696f6e223b733a313a2232223b733a32333a2273686f775f706167696e6174696f6e5f726573756c7473223b733a313a2231223b733a31333a2273686f775f6665617475726564223b733a343a2273686f77223b733a31343a2273686f775f666565645f6c696e6b223b733a313a2231223b733a31323a22666565645f73756d6d617279223b733a313a2230223b733a31383a22666565645f73686f775f726561646d6f7265223b733a313a2230223b733a31323a227365665f616476616e636564223b693a303b733a373a227365665f696473223b693a303b733a32303a22637573746f6d5f6669656c64735f656e61626c65223b733a313a2231223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a393a22736570617261746f72223b733a313a222e223b7d733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a343a7b733a363a22726f626f7473223b733a303a22223b733a363a22617574686f72223b733a303a22223b733a363a22726967687473223b733a303a22223b733a31303a22787265666572656e6365223b733a303a22223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a393a22736570617261746f72223b733a313a222e223b7d733a373a2276657273696f6e223b733a313a2231223b733a383a226f72646572696e67223b733a313a2230223b733a383a2263617465676f7279223b733a393a22506179205669736974223b733a393a226361745f7374617465223b733a313a2231223b733a31303a226361745f616363657373223b733a313a2231223b733a343a22736c7567223b733a31353a22333a7768792d7061792d7669736974223b733a373a22636174736c7567223b733a31323a2231313a7061792d7669736974223b733a363a22617574686f72223b733a31303a2253757065722055736572223b733a363a226c61796f7574223b733a373a2261727469636c65223b733a373a22636f6e74657874223b733a31393a22636f6d5f636f6e74656e742e61727469636c65223b733a343a2270617468223b733a37353a22696e6465782e7068702f636f6d706f6e656e742f636f6e74656e742f61727469636c652f31312d7061792d76697369742f332d7768792d7061792d76697369743f4974656d69643d313031223b733a31303a226d657461617574686f72223b4e3b7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a373a226d6574616b6579223b693a343b733a383a226d65746164657363223b693a353b733a31303a226d657461617574686f72223b693a363b733a363a22617574686f72223b693a373b733a31363a22637265617465645f62795f616c696173223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a343a7b733a343a2254797065223b613a313a7b733a373a2241727469636c65223b4f3a32373a224a6f6f6d6c615c434d535c4f626a6563745c434d534f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a373a2241727469636c65223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a363a22417574686f72223b613a313a7b733a31303a2253757065722055736572223b4f3a32373a224a6f6f6d6c615c434d535c4f626a6563745c434d534f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a31303a2253757065722055736572223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a2243617465676f7279223b613a313a7b733a393a22506179205669736974223b4f3a32373a224a6f6f6d6c615c434d535c4f626a6563745c434d534f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a393a22506179205669736974223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a224c616e6775616765223b613a313a7b733a313a222a223b4f3a32373a224a6f6f6d6c615c434d535c4f626a6563745c434d534f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a34363a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d33223b733a353a22726f757465223b733a36393a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d333a7768792d7061792d76697369742663617469643d3131223b733a353a227469746c65223b733a31333a2277687920706179207669736974223b733a31313a226465736372697074696f6e223b733a323237333a22205748592053484f554c44204920504159204120564953495420544f205448452043415245455220444556454c4f504d454e54204f46464943453f20312e204765742061636365737320746f2070726f66657373696f6e616c732077686f20617265207370656369666963616c6c7920747261696e656420746f2061737369737420796f75207769746820796f7572206361726565722d72656c6174656420636f6e6365726e732e20322e204974e28099732074686520617070726f707269617465206f6666696365206f6e2063616d70757320746861742070726f76696465732075736566756c20696e666f726d6174696f6e20746f20656e61626c6520796f7520666967757265206f7574207768617420796f752077616e7420746f20646f207769746820796f7572206c6966652c206e6f74206f6e6c79207768656e20796f75e2809972652061626f757420746f20737461727420796f7572206a6f622068756e742c2062757420616c736f207768656e20796f752077616e7420746f206c6561726e206d6f72652061626f757420796f757273656c66202d20796f757220696e746572657374732c20736b696c6c732c2076616c7565732c20706572736f6e616c6974792e20332e20576520776f726b20636c6f73656c79207769746820656d706c6f796572732077686f206d617920736f6d65646179206869726520796f7520696e206f7264657220746f20646576656c6f7020696e7465726e7368697020616e642066756c6c2d74696d65206f70706f7274756e697469657320666f7220796f757220667574757265206361726565722e20342e204f75722043617265657220446576656c6f706d656e742073746166667320617265206576657220726561647920746f20696e746572616374207769746820796f75206f6e206461696c7920626173697320736f20617320746f20626520636f6e76657273616e74207769746820796f757220736b696c6c732c20737472656e677468732c207765616b6e65737365732c20706f74656e7469616c2c2067726f77746820616e6420646576656c6f706d656e742061726561732c206574632e20666f72207265666572656e636520746f20616e20656d706c6f7965722077686f206d6179206265206c6f6f6b696e6720666f7220796f75722063616c6962657220746f2066696c6c206120737065636966696320706f736974696f6e2e20352e2043617265657220446576656c6f706d656e74204f66666963652077696c6c206e6f74206f6666657220796f752061206a6f623b206a6f6220736561726368696e67206973206861726420776f726b20616e64207265717569726573206d756368206566666f7274206f6e20796f757220706172742e2057652077696c6c206578706f736520796f7520746f206120776f726c64206f66206f70706f7274756e69746965732c207265736f757263657320616e64206e65656465642067756964616e636520776869636820796f752077696c6c207574696c69736520746f206578706c6f726520616e6420646576656c6f7020796f757273656c662c20696e206f7264657220746f2063617276652061207468726976696e67206361726565722e20362e20417474656e6420776f726b73686f7073206f6666657265642062792043617265657220446576656c6f706d656e74204f6666696365207374617274696e6720696e20796f757220666972737420796561722e205468652043617265657220446576656c6f706d656e74204f666669636520697320666f7220616c6c2073747564656e747320696e2074686520756e69766572736974792c206e6f74206a7573742066696e616c20796561722073747564656e74732e20496620796f75207761697420756e74696c20796f7572206c6173742073656d657374657220746f207374617274207669736974696e67207468652043617265657220446576656c6f706d656e74204f66666963652c20796f7520686176652077616974656420746f6f206c6f6e6720616e64206d6179206e6f742066696e642074686520617373697374616e636520796f7520617265206c6f6f6b696e6720666f722e2047657420696e206561726c79202d206d65657420746865207374616666202d20616e6420737461727420646576656c6f70696e6720796f757220636172656572206561726c792c20616e6420796f752077696c6c20626520707574206d696c6573206168656164206f6620796f7572206d617465732e20372e20596f752061726520706179696e6720666f722069742120596f757220666565732068617665207061696420666f722074686520737570706f7274207468652043617265657220446576656c6f706d656e74204f66666963652070726f76696465732e205468657265666f72652c206e6f742074616b696e6720616476616e74616765206f662069742073696d706c79206d65616e7320796f7520617265206e6f74207574696c6973696e6720736f6d652070617274206f6620796f757220666565732e20496620796f7520617265207374727567676c696e672077697468206120636172656572206465636973696f6e2c20616e6420796f75206e6565642068656c70206f6e20796f757220726573756d652c206f7220796f75206172656ee2809974207375726520686f7720746f20676574207374617274656420776974682074686520696e7465726e7368697020616e64206a6f62207365617263682c20796f75206d75737420636f6e7461637443617265657220446576656c6f706d656e74204f666669636520746f207363686564756c6520616e206170706f696e746d656e7420617420526f6f6d20322c20416e6e616e20426c6f636b2c206e65787420746f207468652050726f637572656d656e74204f6666696365206f722073656e642061206d61696c20746f2063617265657220646576656c6f706d656e742e6f6666696365407474752e6564752e6768206f722063617265657220646576656c6f706d656e742e6f666669636540676d61696c2e636f6d2e204c6574207573206b6e6f7720696620776520617265206e6f74206d616b696e6720796f75206665656c2077656c636f6d652e20223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b693a313b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a313a222a223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22323031382d30372d30342031373a30313a3530223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22323031382d30372d30342031373a30313a3530223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a343b733a31353a2264656661756c744c616e6775616765223b733a353a22656e2d4742223b7d);

-- --------------------------------------------------------

--
-- Table structure for table `crdev_finder_links_terms0`
--

CREATE TABLE `crdev_finder_links_terms0` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `crdev_finder_links_terms0`
--

INSERT INTO `crdev_finder_links_terms0` (`link_id`, `term_id`, `weight`) VALUES
(3, 40, 2.22),
(14, 40, 2.22),
(3, 41, 5.55),
(14, 41, 5.55),
(4, 47, 0.0425),
(6, 47, 0.0475),
(11, 47, 0.175),
(16, 47, 0.175),
(6, 48, 1.59996),
(4, 48, 2.26661),
(6, 317, 0.01162),
(11, 317, 0.04067),
(16, 317, 0.04067),
(6, 318, 0.91),
(6, 319, 1.14331),
(6, 320, 0.95669),
(6, 321, 1.07331),
(6, 322, 0.02919),
(11, 322, 0.05838),
(16, 322, 0.05838),
(6, 323, 0.91),
(6, 324, 1.00331),
(6, 325, 0.0175),
(11, 325, 0.0175),
(16, 325, 0.0175),
(6, 326, 0.98),
(6, 327, 1.09669),
(6, 328, 0.86331),
(6, 329, 0.98),
(6, 330, 0.56004),
(11, 330, 0.56004),
(16, 330, 0.56004),
(6, 331, 0.01169),
(11, 331, 0.01169),
(16, 331, 0.01169),
(6, 332, 0.81669),
(6, 333, 0.91),
(6, 407, 0.32669),
(6, 408, 0.93331),
(6, 409, 1.02669),
(6, 410, 0.02331),
(11, 410, 0.02331),
(16, 410, 0.02331),
(6, 411, 0.93331),
(6, 412, 1.12),
(6, 413, 0.84),
(6, 414, 1.02669),
(6, 415, 1.16669),
(6, 416, 1.02669),
(6, 417, 1.09669),
(6, 418, 0.93338),
(6, 419, 1.00331),
(6, 420, 1.07331),
(6, 421, 1.02669),
(6, 422, 1.16669),
(6, 423, 0.79992),
(11, 423, 0.79992),
(16, 423, 0.79992),
(6, 424, 3.19992),
(11, 424, 3.19992),
(16, 424, 3.19992),
(11, 4525, 0.88669),
(16, 4525, 0.88669),
(11, 4526, 1.09669),
(16, 4526, 1.09669),
(11, 4527, 0.81669),
(16, 4527, 0.81669),
(11, 4528, 0.91),
(16, 4528, 0.91),
(11, 4529, 0.84),
(16, 4529, 0.84),
(11, 4530, 0.91),
(16, 4530, 0.91),
(11, 4531, 0.93331),
(16, 4531, 0.93331),
(11, 4532, 1.14331),
(16, 4532, 1.14331),
(11, 4533, 0.93331),
(16, 4533, 0.93331),
(11, 4534, 1.09669),
(16, 4534, 1.09669),
(11, 4535, 0.86331),
(16, 4535, 0.86331),
(11, 4536, 0.93331),
(16, 4536, 0.93331),
(11, 4537, 0.86331),
(16, 4537, 0.86331),
(11, 4538, 0.93331),
(16, 4538, 0.93331),
(11, 4539, 0.88669),
(16, 4539, 0.88669),
(11, 4540, 1.02669),
(16, 4540, 1.02669),
(11, 4541, 1.02669),
(16, 4541, 1.02669),
(11, 4542, 1.14331),
(16, 4542, 1.14331),
(11, 4543, 0.28),
(16, 4543, 0.28),
(11, 4544, 0.91),
(16, 4544, 0.91),
(11, 4545, 1.23669),
(16, 4545, 1.23669),
(11, 4546, 0.42),
(16, 4546, 0.42),
(11, 4547, 0.98),
(16, 4547, 0.98),
(11, 4548, 1.05),
(16, 4548, 1.05),
(11, 4549, 0.23331),
(16, 4549, 0.23331),
(11, 4550, 0.88669),
(16, 4550, 0.88669),
(11, 4551, 1.00331),
(16, 4551, 1.00331),
(11, 4552, 0.98),
(16, 4552, 0.98),
(11, 4553, 1.05),
(16, 4553, 1.05),
(11, 4554, 0.18669),
(16, 4554, 0.18669),
(11, 4555, 0.91),
(16, 4555, 0.91),
(11, 4556, 1.00331),
(16, 4556, 1.00331),
(11, 4557, 0.02338),
(16, 4557, 0.02338),
(11, 4558, 1.02669),
(16, 4558, 1.02669),
(11, 4559, 1.09669),
(16, 4559, 1.09669),
(11, 4560, 0.95669),
(16, 4560, 0.95669),
(11, 4561, 1.05),
(16, 4561, 1.05),
(11, 4562, 0.95669),
(16, 4562, 0.95669),
(11, 4563, 1.16669),
(16, 4563, 1.16669),
(11, 4564, 1.05),
(16, 4564, 1.05),
(11, 4565, 1.19),
(16, 4565, 1.19),
(11, 4566, 1.00331),
(16, 4566, 1.00331),
(11, 4567, 1.33),
(16, 4567, 1.33),
(11, 4568, 0.86331),
(16, 4568, 0.86331),
(11, 4569, 1.02669),
(16, 4569, 1.02669),
(11, 4570, 0.86331),
(16, 4570, 0.86331),
(11, 4571, 0.95669),
(16, 4571, 0.95669),
(11, 4572, 0.93331),
(16, 4572, 0.93331),
(11, 4573, 1.14331),
(16, 4573, 1.14331),
(11, 4574, 0.98),
(16, 4574, 0.98),
(11, 4575, 1.09669),
(16, 4575, 1.09669),
(11, 4576, 0.91),
(16, 4576, 0.91),
(11, 4577, 1.16669),
(16, 4577, 1.16669),
(11, 4578, 1.72662),
(16, 4578, 1.72662),
(11, 4579, 0.98),
(16, 4579, 0.98),
(11, 4580, 0.98),
(16, 4580, 0.98),
(11, 4581, 0.23331),
(16, 4581, 0.23331),
(11, 4582, 0.95669),
(16, 4582, 0.95669),
(11, 4583, 1.07331),
(16, 4583, 1.07331),
(11, 4584, 0.51331),
(16, 4584, 0.51331),
(11, 4585, 1.02669),
(16, 4585, 1.02669),
(11, 4586, 1.14331),
(16, 4586, 1.14331),
(11, 4587, 0.51331),
(16, 4587, 0.51331),
(11, 4588, 1.12),
(16, 4588, 1.12),
(11, 4589, 1.19),
(16, 4589, 1.19),
(11, 4590, 0.1225),
(16, 4590, 0.1225),
(11, 4591, 0.88669),
(16, 4591, 0.88669),
(11, 4592, 1.02669),
(16, 4592, 1.02669),
(11, 4593, 0.95669),
(16, 4593, 0.95669),
(11, 4594, 1.05),
(16, 4594, 1.05),
(11, 4595, 1.72662),
(16, 4595, 1.72662),
(11, 4596, 1.02669),
(16, 4596, 1.02669),
(11, 4597, 1.09669),
(16, 4597, 1.09669),
(11, 4598, 0.93331),
(16, 4598, 0.93331),
(11, 4599, 1.02669),
(16, 4599, 1.02669),
(11, 4600, 1.07331),
(16, 4600, 1.07331),
(11, 4601, 1.26),
(16, 4601, 1.26),
(11, 4602, 1.02669),
(16, 4602, 1.02669),
(11, 4603, 1.14331),
(16, 4603, 1.14331),
(11, 4604, 0.23331),
(16, 4604, 0.23331),
(11, 4605, 0.91),
(16, 4605, 0.91),
(11, 4606, 1.00331),
(16, 4606, 1.00331),
(11, 4607, 0.035),
(16, 4607, 0.035),
(11, 4608, 0.95669),
(16, 4608, 0.95669),
(11, 4609, 1.05),
(16, 4609, 1.05),
(11, 4610, 0.81669),
(16, 4610, 0.81669),
(11, 4611, 0.88669),
(16, 4611, 0.88669),
(11, 4612, 0.28),
(16, 4612, 0.28),
(11, 4613, 0.93331),
(16, 4613, 0.93331),
(11, 4614, 1.05),
(16, 4614, 1.05),
(11, 4615, 0.46669),
(16, 4615, 0.46669),
(11, 4616, 1.02669),
(16, 4616, 1.02669),
(11, 4617, 1.12),
(16, 4617, 1.12),
(11, 4618, 0.01169),
(16, 4618, 0.01169),
(11, 4619, 0.86331),
(16, 4619, 0.86331),
(11, 4620, 0.91),
(16, 4620, 0.91),
(11, 4621, 0.28),
(16, 4621, 0.28),
(11, 4622, 1.07331),
(16, 4622, 1.07331),
(11, 4623, 1.26),
(16, 4623, 1.26),
(11, 5080, 0.37331),
(16, 5080, 0.37331),
(11, 5081, 0.95669),
(16, 5081, 0.95669),
(11, 5082, 1.23669),
(16, 5082, 1.23669),
(11, 5083, 0.28),
(16, 5083, 0.28),
(11, 5084, 0.93331),
(16, 5084, 0.93331),
(11, 5085, 1.05),
(16, 5085, 1.05),
(11, 5086, 0.42),
(16, 5086, 0.42),
(11, 5087, 0.98),
(16, 5087, 0.98),
(11, 5088, 1.09669),
(16, 5088, 1.09669),
(11, 5089, 0.37331),
(16, 5089, 0.37331),
(11, 5090, 0.95669),
(16, 5090, 0.95669),
(11, 5091, 1.09669),
(16, 5091, 1.09669),
(11, 5092, 0.18669),
(16, 5092, 0.18669),
(11, 5093, 0.84),
(16, 5093, 0.84),
(11, 5094, 0.95669),
(16, 5094, 0.95669),
(11, 5095, 0.035),
(16, 5095, 0.035),
(11, 5096, 0.88669),
(16, 5096, 0.88669),
(11, 5097, 0.98),
(16, 5097, 0.98),
(11, 5098, 0.28),
(16, 5098, 0.28),
(11, 5099, 0.98),
(16, 5099, 0.98),
(11, 5100, 1.07331),
(16, 5100, 1.07331),
(11, 5101, 0.56),
(16, 5101, 0.56),
(11, 5102, 1.07331),
(16, 5102, 1.07331),
(11, 5103, 1.33),
(16, 5103, 1.33),
(11, 5104, 1.00331),
(16, 5104, 1.00331),
(11, 5105, 1.28331),
(16, 5105, 1.28331),
(11, 5106, 0.01169),
(16, 5106, 0.01169),
(11, 5107, 0.81669),
(16, 5107, 0.81669),
(11, 5108, 0.88669),
(16, 5108, 0.88669),
(11, 5109, 0.91),
(16, 5109, 0.91),
(11, 5110, 0.98),
(16, 5110, 0.98),
(11, 5111, 0.32669),
(16, 5111, 0.32669),
(11, 5112, 0.98),
(16, 5112, 0.98),
(11, 5113, 1.07331),
(16, 5113, 1.07331),
(11, 5114, 0.37331),
(16, 5114, 0.37331),
(11, 5115, 1.09669),
(16, 5115, 1.09669),
(11, 5116, 1.26),
(11, 5117, 0.56),
(16, 5117, 0.56),
(11, 5118, 1.16669),
(16, 5118, 1.16669),
(11, 5119, 1.23669),
(16, 5119, 1.23669),
(11, 5120, 0.23331),
(16, 5120, 0.23331),
(11, 5121, 0.91),
(16, 5121, 0.91),
(11, 5122, 1.05),
(16, 5122, 1.05),
(11, 5123, 0.28),
(16, 5123, 0.28),
(11, 5124, 0.93331),
(16, 5124, 0.93331),
(11, 5125, 1.05),
(16, 5125, 1.05),
(11, 5126, 0.69993),
(16, 5126, 0.69993),
(11, 5127, 1.07331),
(16, 5127, 1.07331),
(11, 5128, 1.19),
(16, 5128, 1.19),
(11, 5129, 1.02669),
(16, 5129, 1.02669),
(11, 5130, 1.12),
(16, 5130, 1.12),
(11, 5131, 0.93331),
(16, 5131, 0.93331),
(11, 5132, 1.02669),
(16, 5132, 1.02669),
(11, 5133, 0.32669),
(16, 5133, 0.32669),
(11, 5134, 0.98),
(16, 5134, 0.98),
(11, 5135, 1.07331),
(16, 5135, 1.07331),
(11, 5136, 0.37331),
(16, 5136, 0.37331),
(11, 5137, 0.95669),
(16, 5137, 0.95669),
(11, 5138, 1.07331),
(16, 5138, 1.07331),
(11, 5139, 0.42),
(16, 5139, 0.42),
(11, 5140, 1.16669),
(16, 5140, 1.16669),
(11, 5141, 1.4),
(16, 5141, 1.4),
(11, 5142, 0.46669),
(16, 5142, 0.46669),
(11, 5143, 1.05),
(16, 5143, 1.05),
(11, 5144, 1.09669),
(16, 5144, 1.09669),
(11, 5145, 0.74662),
(16, 5145, 0.74662),
(11, 5146, 0.95669),
(16, 5146, 0.95669),
(11, 5147, 1.05),
(16, 5147, 1.05),
(11, 5148, 0.95669),
(16, 5148, 0.95669),
(11, 5149, 1.05),
(16, 5149, 1.05),
(11, 5150, 0.32669),
(16, 5150, 0.32669),
(11, 5151, 0.95669),
(16, 5151, 0.95669),
(11, 5152, 1.12),
(16, 5152, 1.12),
(11, 5153, 0.18669),
(16, 5153, 0.18669),
(11, 5154, 0.88669),
(16, 5154, 0.88669),
(11, 5155, 0.95669),
(16, 5155, 0.95669),
(16, 5596, 1.14331);

-- --------------------------------------------------------

--
-- Table structure for table `crdev_finder_links_terms1`
--

CREATE TABLE `crdev_finder_links_terms1` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `crdev_finder_links_terms1`
--

INSERT INTO `crdev_finder_links_terms1` (`link_id`, `term_id`, `weight`) VALUES
(16, 5565, 0.07),
(16, 5566, 0.88669),
(16, 5567, 1.12);

-- --------------------------------------------------------

--
-- Table structure for table `crdev_finder_links_terms2`
--

CREATE TABLE `crdev_finder_links_terms2` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `crdev_finder_links_terms2`
--

INSERT INTO `crdev_finder_links_terms2` (`link_id`, `term_id`, `weight`) VALUES
(6, 364, 0.28),
(6, 365, 0.95669),
(6, 366, 1.14331),
(6, 367, 0.28),
(6, 368, 0.98),
(6, 369, 1.19),
(11, 4807, 0.18669),
(16, 4807, 0.18669),
(11, 4808, 0.91),
(16, 4808, 0.91),
(11, 4809, 1.00331),
(16, 4809, 1.00331),
(11, 4810, 0.37338),
(16, 4810, 0.37338),
(11, 4811, 0.91),
(16, 4811, 0.91),
(11, 4812, 1.00331),
(16, 4812, 1.00331),
(11, 4813, 0.95669),
(16, 4813, 0.95669),
(11, 4814, 1.05),
(16, 4814, 1.05),
(11, 4815, 0.18669),
(16, 4815, 0.18669),
(11, 4816, 0.86331),
(16, 4816, 0.86331),
(11, 4817, 0.98),
(16, 4817, 0.98),
(11, 4818, 0.18669),
(16, 4818, 0.18669),
(11, 4819, 0.88669),
(16, 4819, 0.88669),
(11, 4820, 0.95669),
(16, 4820, 0.95669),
(11, 4821, 0.0175),
(16, 4821, 0.0175),
(11, 4822, 0.84),
(16, 4822, 0.84),
(11, 4823, 0.93331),
(16, 4823, 0.93331),
(11, 4824, 0.18669),
(16, 4824, 0.18669),
(11, 4825, 0.88669),
(16, 4825, 0.88669),
(11, 4826, 1.00331),
(16, 4826, 1.00331),
(11, 4882, 0.18669),
(16, 4882, 0.18669),
(11, 4883, 1.00331),
(16, 4883, 1.00331),
(11, 4884, 1.07331),
(16, 4884, 1.07331),
(11, 4885, 0.23331),
(16, 4885, 0.23331),
(11, 4886, 0.93331),
(16, 4886, 0.93331),
(11, 4887, 1.07331),
(16, 4887, 1.07331),
(11, 4888, 0.14),
(16, 4888, 0.14),
(11, 4889, 0.84),
(16, 4889, 0.84),
(11, 4890, 0.95669),
(16, 4890, 0.95669),
(11, 4891, 0.18669),
(16, 4891, 0.18669),
(11, 4892, 0.88669),
(16, 4892, 0.88669),
(11, 4893, 1.00331),
(16, 4893, 1.00331),
(11, 4894, 0.18669),
(16, 4894, 0.18669),
(11, 4895, 0.88669),
(16, 4895, 0.88669),
(11, 4896, 0.98),
(16, 4896, 0.98),
(11, 4897, 0.65338),
(16, 4897, 0.65338),
(11, 4898, 1.91338),
(16, 4898, 1.91338),
(11, 4899, 1.05),
(16, 4899, 1.05),
(11, 4900, 1.07331),
(16, 4900, 1.07331);

-- --------------------------------------------------------

--
-- Table structure for table `crdev_finder_links_terms3`
--

CREATE TABLE `crdev_finder_links_terms3` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `crdev_finder_links_terms3`
--

INSERT INTO `crdev_finder_links_terms3` (`link_id`, `term_id`, `weight`) VALUES
(11, 4867, 0.56),
(16, 4867, 0.56),
(11, 4868, 0.88669),
(16, 4868, 0.88669),
(11, 4869, 0.98),
(16, 4869, 0.98),
(11, 4870, 0.86331),
(16, 4870, 0.86331),
(11, 4871, 1.09669),
(16, 4871, 1.09669),
(11, 4872, 0.93331),
(16, 4872, 0.93331),
(11, 4873, 1.02669),
(16, 4873, 1.02669),
(11, 4874, 1.00331),
(16, 4874, 1.00331),
(11, 4875, 1.07331),
(16, 4875, 1.07331),
(11, 4876, 0.18669),
(16, 4876, 0.18669),
(11, 4877, 0.93331),
(16, 4877, 0.93331),
(11, 4878, 1.05),
(16, 4878, 1.05);

-- --------------------------------------------------------

--
-- Table structure for table `crdev_finder_links_terms4`
--

CREATE TABLE `crdev_finder_links_terms4` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `crdev_finder_links_terms4`
--

INSERT INTO `crdev_finder_links_terms4` (`link_id`, `term_id`, `weight`) VALUES
(1, 3, 0.63996),
(2, 3, 0.63996),
(3, 3, 0.63996),
(4, 3, 0.63996),
(12, 3, 0.63996),
(13, 3, 0.63996),
(14, 3, 0.63996),
(15, 3, 0.63996),
(2, 32, 0.17),
(6, 342, 0.46669),
(6, 343, 1.12),
(6, 344, 1.37669),
(6, 345, 0.32669),
(6, 346, 0.37331),
(6, 347, 1.07331),
(6, 348, 1.14331),
(6, 401, 0.18669),
(6, 402, 0.93331),
(6, 403, 1.19),
(6, 404, 0.37331),
(6, 405, 1.00331),
(6, 406, 1.19),
(6, 446, 0.0175),
(11, 446, 0.35),
(16, 446, 0.35),
(6, 447, 0.86331),
(6, 448, 0.95669),
(6, 449, 0.02331),
(11, 449, 0.34965),
(16, 449, 0.34965),
(6, 450, 1.00331),
(6, 451, 1.16669),
(11, 4642, 0.32669),
(16, 4642, 0.32669),
(11, 4643, 0.93331),
(16, 4643, 0.93331),
(11, 4644, 1.05),
(16, 4644, 1.05),
(11, 4645, 0.28),
(16, 4645, 0.28),
(11, 4646, 0.95669),
(16, 4646, 0.95669),
(11, 4647, 1.16669),
(16, 4647, 1.16669),
(16, 4648, 3.64),
(11, 4648, 5.4),
(11, 4649, 1.00331),
(11, 4650, 1.23669),
(11, 4651, 1.05),
(16, 4651, 1.05),
(11, 4652, 1.14331),
(16, 4652, 1.14331),
(16, 4653, 10.08),
(11, 4653, 16),
(16, 4654, 10.2665),
(11, 4654, 17.0497),
(11, 4655, 1.28331),
(16, 4655, 1.28331),
(11, 4656, 1.26),
(11, 4657, 1.33),
(11, 4658, 0.98),
(16, 4658, 0.98),
(11, 4659, 1.07331),
(16, 4659, 1.07331),
(11, 4660, 0.93331),
(11, 4661, 1.09669),
(11, 4662, 0.65331),
(16, 4662, 0.65331),
(11, 4663, 1.23669),
(16, 4663, 1.23669),
(11, 4664, 1.35331),
(11, 4665, 0.23331),
(16, 4665, 0.23331),
(11, 4666, 0.86331),
(16, 4666, 0.86331),
(11, 4667, 1.07331),
(16, 4667, 1.07331),
(11, 4668, 0.32669),
(16, 4668, 0.32669),
(11, 4669, 0.98),
(16, 4669, 0.98),
(11, 4670, 1.21331),
(16, 4670, 1.21331),
(11, 4671, 0.14),
(16, 4671, 0.14),
(11, 4672, 0.86331),
(16, 4672, 0.86331),
(11, 4673, 0.93331),
(16, 4673, 0.93331),
(11, 4674, 0.37331),
(16, 4674, 0.37331),
(11, 4675, 1.00331),
(11, 4676, 1.09669),
(11, 4677, 0.32669),
(11, 4678, 1.02669),
(11, 4679, 1.4),
(11, 4680, 0.46669),
(16, 4680, 0.46669),
(11, 4681, 1.05),
(16, 4681, 1.05),
(11, 4682, 1.16669),
(16, 4682, 1.16669),
(11, 5062, 0.23331),
(16, 5062, 0.23331),
(11, 5063, 0.88669),
(16, 5063, 0.88669),
(11, 5064, 1.09669),
(16, 5064, 1.09669),
(11, 5065, 0.42),
(16, 5065, 0.42),
(11, 5066, 0.98),
(16, 5066, 0.98),
(11, 5067, 1.05),
(16, 5067, 1.05),
(11, 5068, 0.37331),
(16, 5068, 0.37331),
(11, 5069, 1.00331),
(16, 5069, 1.00331),
(11, 5070, 1.16669),
(16, 5070, 1.16669),
(11, 5071, 0.42),
(16, 5071, 0.42),
(11, 5072, 1.00331),
(16, 5072, 1.00331),
(11, 5073, 1.16669),
(16, 5073, 1.16669),
(11, 5074, 0.28),
(16, 5074, 0.28),
(11, 5075, 0.91),
(16, 5075, 0.91),
(11, 5076, 1.00331),
(16, 5076, 1.00331),
(11, 5077, 0.18669),
(16, 5077, 0.18669),
(11, 5078, 0.84),
(16, 5078, 0.84),
(11, 5079, 0.98),
(16, 5079, 0.98),
(11, 5330, 0.37338),
(16, 5330, 0.37338),
(11, 5331, 1.00331),
(16, 5331, 1.00331),
(11, 5332, 1.07331),
(16, 5332, 1.07331),
(11, 5333, 0.88669),
(16, 5333, 0.88669),
(11, 5334, 1.05),
(16, 5334, 1.05),
(11, 5335, 0.81669),
(16, 5335, 0.81669),
(11, 5336, 0.91),
(16, 5336, 0.91),
(11, 5337, 3.45324),
(16, 5337, 3.45324),
(11, 5338, 1.05),
(16, 5338, 1.05),
(11, 5339, 0.95669),
(16, 5339, 0.95669),
(11, 5340, 1.02669),
(16, 5340, 1.02669),
(11, 5341, 1.12),
(16, 5341, 1.12),
(11, 5342, 0.93331),
(16, 5342, 0.93331),
(11, 5343, 1.05),
(16, 5343, 1.05),
(11, 5344, 0.88669),
(16, 5344, 0.88669),
(11, 5345, 1.07331),
(16, 5345, 1.07331),
(11, 5346, 0.93331),
(16, 5346, 0.93331),
(11, 5347, 1.02669),
(16, 5347, 1.02669),
(11, 5348, 0.88669),
(16, 5348, 0.88669),
(11, 5349, 1.05),
(16, 5349, 1.05),
(11, 5350, 0.84),
(16, 5350, 0.84),
(11, 5351, 0.98),
(16, 5351, 0.98),
(11, 5352, 0.88669),
(16, 5352, 0.88669),
(11, 5353, 1.07331),
(11, 5354, 0.88669),
(16, 5354, 0.88669),
(11, 5355, 1.00331),
(16, 5355, 1.00331),
(11, 5356, 0.84),
(16, 5356, 0.84),
(11, 5357, 0.98),
(16, 5357, 0.98),
(11, 5358, 0.84),
(16, 5358, 0.84),
(11, 5359, 0.88669),
(16, 5359, 0.88669),
(11, 5360, 0.88669),
(16, 5360, 0.88669),
(11, 5361, 1.02669),
(16, 5361, 1.02669),
(11, 5362, 1.77338),
(16, 5362, 1.77338),
(11, 5363, 1.91338),
(16, 5363, 1.91338),
(11, 5364, 1.77338),
(16, 5364, 1.77338),
(11, 5365, 0.95669),
(16, 5365, 0.95669),
(11, 5366, 1.07331),
(16, 5366, 1.07331),
(11, 5367, 0.88669),
(16, 5367, 0.88669),
(11, 5368, 1.00331),
(16, 5368, 1.00331),
(11, 5369, 0.28),
(16, 5369, 0.28),
(11, 5370, 0.98),
(16, 5370, 0.98),
(11, 5371, 1.05),
(16, 5371, 1.05),
(11, 5372, 0.98),
(16, 5372, 0.98),
(11, 5373, 1.05),
(16, 5373, 1.05),
(11, 5374, 0.95669),
(16, 5374, 0.95669),
(11, 5375, 1.09669),
(16, 5375, 1.09669),
(11, 5376, 1.14331),
(16, 5376, 1.14331),
(11, 5377, 1.35331),
(16, 5377, 1.35331),
(11, 5378, 1.82),
(16, 5378, 1.82),
(11, 5379, 1.02669),
(16, 5379, 1.02669),
(11, 5380, 0.98),
(16, 5380, 0.98),
(11, 5381, 0.93331),
(16, 5381, 0.93331),
(11, 5382, 1.05),
(16, 5382, 1.05),
(11, 5383, 0.95669),
(16, 5383, 0.95669),
(11, 5384, 1.12),
(16, 5384, 1.12),
(11, 5385, 1.02669),
(16, 5385, 1.02669),
(11, 5386, 1.19),
(16, 5386, 1.19),
(11, 5387, 0.88669),
(16, 5387, 0.88669),
(11, 5388, 1.00331),
(16, 5388, 1.00331),
(11, 5389, 0.91),
(16, 5389, 0.91),
(11, 5390, 1.12),
(16, 5390, 1.12),
(11, 5391, 0.91),
(16, 5391, 0.91),
(11, 5392, 1.00331),
(16, 5392, 1.00331),
(11, 5393, 0.93331),
(16, 5393, 0.93331),
(11, 5394, 1.02669),
(11, 5395, 0.91),
(16, 5395, 0.91),
(11, 5396, 0.98),
(16, 5396, 0.98),
(11, 5397, 0.95669),
(16, 5397, 0.95669),
(11, 5398, 1.02669),
(16, 5398, 1.02669),
(11, 5399, 0.95669),
(16, 5399, 0.95669),
(11, 5400, 1.19),
(16, 5400, 1.19),
(11, 5401, 0.74662),
(16, 5401, 0.74662),
(11, 5402, 0.95669),
(16, 5402, 0.95669),
(11, 5403, 1.09669),
(16, 5403, 1.09669),
(11, 5404, 1.00331),
(16, 5404, 1.00331),
(11, 5405, 1.23669),
(16, 5405, 1.23669),
(16, 5571, 0.88669),
(16, 5572, 0.98),
(16, 5573, 0.88669),
(16, 5574, 1.05),
(16, 5575, 1.28331),
(16, 5576, 0.93331),
(16, 5577, 1.05),
(16, 5578, 0.60669),
(16, 5579, 1.28331),
(16, 5580, 1.4),
(16, 5601, 1.21331),
(16, 5602, 0.98);

-- --------------------------------------------------------

--
-- Table structure for table `crdev_finder_links_terms5`
--

CREATE TABLE `crdev_finder_links_terms5` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `crdev_finder_links_terms6`
--

CREATE TABLE `crdev_finder_links_terms6` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `crdev_finder_links_terms6`
--

INSERT INTO `crdev_finder_links_terms6` (`link_id`, `term_id`, `weight`) VALUES
(4, 49, 0.79339),
(6, 49, 3.2669),
(6, 50, 1.64004),
(4, 50, 2.32339),
(6, 51, 1.92),
(4, 51, 2.72),
(6, 386, 0.18669),
(6, 387, 0.86331),
(6, 388, 0.98),
(6, 389, 1.09669),
(6, 390, 1.21331),
(6, 391, 2.24),
(6, 392, 1.19),
(6, 393, 1.21331),
(11, 4901, 0.18669),
(16, 4901, 0.18669),
(11, 4902, 0.86331),
(16, 4902, 0.86331),
(11, 4903, 1.02669),
(16, 4903, 1.02669),
(11, 4904, 0.28),
(16, 4904, 0.28),
(11, 4905, 0.93331),
(16, 4905, 0.93331),
(11, 4906, 1.05),
(16, 4906, 1.05),
(11, 4907, 0.23331),
(16, 4907, 0.23331),
(11, 4908, 0.91),
(11, 4909, 1.00331),
(11, 4910, 0.42),
(16, 4910, 0.42),
(11, 4911, 0.84),
(16, 4911, 0.84),
(11, 4912, 1.02669),
(16, 4912, 1.02669),
(11, 4913, 0.86331),
(16, 4913, 0.86331),
(11, 4914, 0.98),
(16, 4914, 0.98),
(11, 4915, 0.95669),
(16, 4915, 0.95669),
(11, 4916, 1.07331),
(16, 4916, 1.07331),
(11, 4917, 0.23331),
(16, 4917, 0.23331),
(11, 4918, 0.91),
(16, 4918, 0.91),
(11, 4919, 1.00331),
(16, 4919, 1.00331),
(11, 4920, 0.18669),
(16, 4920, 0.18669),
(11, 4921, 0.88669),
(16, 4921, 0.88669),
(11, 4922, 1.02669),
(16, 4922, 1.02669),
(11, 4923, 0.23331),
(16, 4923, 0.23331),
(11, 4924, 0.95669),
(16, 4924, 0.95669),
(11, 4925, 1.02669),
(16, 4925, 1.02669),
(11, 4926, 0.02331),
(16, 4926, 0.02331),
(11, 4927, 0.93331),
(16, 4927, 0.93331),
(11, 4928, 1.14331),
(16, 4928, 1.14331),
(11, 4929, 0.18669),
(16, 4929, 0.18669),
(11, 4930, 0.95669),
(16, 4930, 0.95669),
(11, 4931, 1.02669),
(16, 4931, 1.02669),
(11, 4932, 0.02331),
(16, 4932, 0.02331),
(11, 4933, 0.98),
(11, 4934, 1.14331),
(16, 5584, 0.86331),
(16, 5585, 0.95669),
(16, 5586, 1.12),
(16, 5587, 1.4);

-- --------------------------------------------------------

--
-- Table structure for table `crdev_finder_links_terms7`
--

CREATE TABLE `crdev_finder_links_terms7` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `crdev_finder_links_terms7`
--

INSERT INTO `crdev_finder_links_terms7` (`link_id`, `term_id`, `weight`) VALUES
(4, 52, 1.7334),
(6, 394, 0.0175),
(11, 394, 0.1225),
(16, 394, 0.1225),
(6, 395, 0.88669),
(6, 396, 1.02669),
(6, 433, 0.07992),
(11, 433, 0.07992),
(16, 433, 0.07992),
(11, 4935, 0.18669),
(16, 4935, 0.18669),
(11, 4936, 0.91),
(16, 4936, 0.91),
(11, 4937, 0.98),
(16, 4937, 0.98),
(11, 4938, 0.28),
(16, 4938, 0.28),
(11, 4939, 1.05),
(16, 4939, 1.05),
(11, 4940, 1.19),
(16, 4940, 1.19),
(11, 4941, 0.18669),
(16, 4941, 0.18669),
(11, 4942, 0.86331),
(16, 4942, 0.86331),
(11, 4943, 0.95669),
(16, 4943, 0.95669),
(11, 4944, 0.88669),
(16, 4944, 0.88669),
(11, 4945, 0.98),
(16, 4945, 0.98),
(11, 4946, 0.88669),
(16, 4946, 0.88669),
(11, 4947, 1.02669),
(16, 4947, 1.02669),
(11, 4948, 0.93331),
(16, 4948, 0.93331),
(11, 4949, 1.02669),
(16, 4949, 1.02669),
(11, 4950, 0.91),
(16, 4950, 0.91),
(11, 4951, 1.00331),
(16, 4951, 1.00331),
(11, 4952, 0.88669),
(16, 4952, 0.88669),
(11, 4953, 1.00331),
(16, 4953, 1.00331),
(11, 4954, 0.93331),
(16, 4954, 0.93331),
(11, 4955, 1.16669),
(16, 4955, 1.16669),
(11, 4956, 1.00331),
(16, 4956, 1.00331),
(11, 4957, 1.12),
(16, 4957, 1.12),
(11, 5232, 0.46669),
(16, 5232, 0.46669),
(11, 5233, 1.02669),
(16, 5233, 1.02669),
(11, 5234, 1.14331),
(16, 5234, 1.14331),
(11, 5235, 0.02919),
(16, 5235, 0.02919),
(11, 5236, 0.93331),
(16, 5236, 0.93331),
(11, 5237, 1.05),
(16, 5237, 1.05),
(11, 5238, 0.09331),
(16, 5238, 0.09331),
(11, 5239, 0.86331),
(16, 5239, 0.86331),
(11, 5240, 0.93331),
(16, 5240, 0.93331),
(11, 5241, 0.28),
(16, 5241, 0.28),
(11, 5242, 1.12),
(16, 5242, 1.12),
(11, 5243, 1.19),
(16, 5243, 1.19),
(11, 5244, 0.32669),
(16, 5244, 0.32669),
(11, 5245, 0.93331),
(16, 5245, 0.93331),
(11, 5246, 1.12),
(16, 5246, 1.12),
(11, 5247, 0.42),
(16, 5247, 0.42),
(11, 5248, 1.02669),
(16, 5248, 1.02669),
(11, 5249, 1.14331),
(16, 5249, 1.14331);

-- --------------------------------------------------------

--
-- Table structure for table `crdev_finder_links_terms8`
--

CREATE TABLE `crdev_finder_links_terms8` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `crdev_finder_links_terms8`
--

INSERT INTO `crdev_finder_links_terms8` (`link_id`, `term_id`, `weight`) VALUES
(16, 4, 0.09331),
(11, 4, 0.25327),
(1, 4, 0.49321),
(2, 4, 0.49321),
(3, 4, 0.49321),
(11, 5, 1.44),
(1, 5, 4.44),
(11, 6, 1.68),
(1, 6, 5.18),
(1, 7, 0.6666),
(2, 7, 0.6666),
(3, 7, 0.6666),
(4, 7, 0.6666),
(6, 7, 0.6666),
(11, 7, 0.6666),
(12, 7, 0.6666),
(13, 7, 0.6666),
(14, 7, 0.6666),
(15, 7, 0.6666),
(16, 7, 0.6666),
(1, 8, 0.74),
(12, 8, 0.74),
(11, 8, 1.12),
(16, 8, 1.12),
(1, 9, 4.81),
(12, 9, 4.81),
(11, 9, 6.37),
(16, 9, 6.37),
(2, 33, 5.30321),
(2, 34, 6.04321),
(11, 36, 0.93338),
(16, 36, 0.93338),
(2, 36, 2.46679),
(13, 36, 2.46679),
(2, 37, 5.67321),
(13, 37, 5.67321),
(3, 42, 5.18),
(3, 43, 5.92),
(6, 349, 0.32669),
(6, 350, 1.07331),
(6, 351, 1.14331),
(6, 352, 0.0175),
(11, 352, 0.1225),
(16, 352, 0.1225),
(6, 353, 0.88669),
(11, 353, 1.77338),
(16, 353, 1.77338),
(6, 354, 1.09669),
(6, 355, 0.18669),
(6, 356, 0.98),
(6, 357, 1.19),
(6, 358, 0.37331),
(6, 359, 0.95669),
(6, 360, 1.14331),
(6, 370, 0.02338),
(11, 370, 0.05845),
(16, 370, 0.05845),
(6, 371, 0.84),
(6, 372, 1.05),
(6, 373, 0.93331),
(6, 374, 1.19),
(6, 375, 0.02331),
(6, 376, 0.84),
(6, 377, 1.02669),
(6, 378, 0.02338),
(11, 378, 0.02338),
(16, 378, 0.02338),
(6, 379, 0.88669),
(6, 380, 0.98),
(6, 381, 0.84),
(6, 382, 1.00331),
(6, 383, 0.01169),
(11, 383, 0.02338),
(16, 383, 0.02338),
(6, 384, 0.86331),
(6, 385, 0.95669),
(11, 4683, 0.23331),
(16, 4683, 0.23331),
(11, 4684, 0.95669),
(16, 4684, 0.95669),
(11, 4685, 1.02669),
(16, 4685, 1.02669),
(11, 4686, 0.37331),
(16, 4686, 0.37331),
(11, 4687, 0.98),
(16, 4687, 0.98),
(11, 4688, 1.07331),
(16, 4688, 1.07331),
(11, 4689, 0.65338),
(16, 4689, 0.65338),
(11, 4690, 1.12),
(16, 4690, 1.12),
(11, 4691, 1.21331),
(16, 4691, 1.21331),
(11, 4692, 1.07331),
(16, 4692, 1.07331),
(11, 4693, 1.14331),
(16, 4693, 1.14331),
(11, 4694, 0.46669),
(16, 4694, 0.46669),
(11, 4695, 1.05),
(16, 4695, 1.05),
(11, 4696, 1.21331),
(16, 4696, 1.21331),
(16, 4697, 5.64641),
(11, 4697, 7.84631),
(11, 4698, 1.09669),
(16, 4698, 1.09669),
(11, 4699, 1.19),
(16, 4699, 1.19),
(16, 4700, 10.08),
(11, 4700, 14.88),
(11, 4701, 1.21331),
(11, 4702, 1.26),
(16, 4702, 1.26),
(11, 4703, 1.19),
(16, 4703, 1.19),
(11, 4704, 1.33),
(16, 4704, 1.33),
(11, 4705, 1.33),
(16, 4705, 1.33),
(11, 4706, 1.21331),
(16, 4706, 1.21331),
(11, 4707, 1.23669),
(16, 4707, 1.23669),
(11, 4708, 1.21331),
(16, 4708, 1.21331),
(11, 4709, 1.12),
(16, 4709, 1.12),
(11, 4710, 1.21331),
(16, 4710, 1.21331),
(11, 4711, 0.7),
(11, 4712, 1.16669),
(11, 4713, 1.37669),
(11, 4714, 0.86331),
(16, 4714, 0.86331),
(11, 4715, 0.98),
(16, 4715, 0.98),
(11, 4748, 0.18669),
(16, 4748, 0.18669),
(11, 4749, 0.98),
(16, 4749, 0.98),
(11, 4750, 0.37338),
(16, 4750, 0.37338),
(11, 4751, 0.91),
(16, 4751, 0.91),
(11, 4752, 1.02669),
(16, 4752, 1.02669),
(11, 4753, 0.86331),
(16, 4753, 0.86331),
(11, 4754, 0.95669),
(16, 4754, 0.95669),
(11, 4755, 0.28),
(16, 4755, 0.28),
(11, 4756, 0.93331),
(16, 4756, 0.93331),
(11, 4757, 1.05),
(16, 4757, 1.05),
(11, 4758, 0.18669),
(16, 4758, 0.18669),
(11, 4759, 0.84),
(16, 4759, 0.84),
(11, 4760, 1.05),
(16, 4760, 1.05),
(11, 4761, 0.23331),
(16, 4761, 0.23331),
(11, 4762, 0.93331),
(16, 4762, 0.93331),
(11, 4763, 1.14331),
(16, 4763, 1.14331),
(11, 4764, 0.18669),
(16, 4764, 0.18669),
(11, 4765, 0.88669),
(16, 4765, 0.88669),
(11, 4766, 1.14331),
(16, 4766, 1.14331),
(11, 4767, 0.23331),
(16, 4767, 0.23331),
(11, 4768, 0.93331),
(16, 4768, 0.93331),
(11, 4769, 1.02669),
(16, 4769, 1.02669),
(11, 4770, 0.86331),
(16, 4770, 0.86331),
(11, 4771, 1.07331),
(16, 4771, 1.07331),
(11, 4772, 0.86331),
(16, 4772, 0.86331),
(11, 4773, 0.93331),
(16, 4773, 0.93331),
(11, 4774, 0.84),
(16, 4774, 0.84),
(11, 4775, 0.95669),
(16, 4775, 0.95669),
(11, 4776, 1.00331),
(16, 4776, 1.00331),
(11, 4777, 1.07331),
(16, 4777, 1.07331),
(11, 4778, 0.86331),
(16, 4778, 0.86331),
(11, 4779, 1.05),
(16, 4779, 1.05),
(11, 4780, 1.07331),
(16, 4780, 1.07331),
(11, 4781, 1.05),
(16, 4781, 1.05),
(11, 4782, 0.42),
(16, 4782, 0.42),
(11, 4783, 1.23669),
(16, 4783, 1.23669),
(11, 4784, 1.33),
(16, 4784, 1.33),
(11, 4785, 0.28),
(16, 4785, 0.28),
(11, 4786, 1.00331),
(16, 4786, 1.00331),
(11, 4787, 1.09669),
(11, 4827, 0.04669),
(16, 4827, 0.04669),
(11, 4828, 0.81669),
(16, 4828, 0.81669),
(11, 4829, 0.86331),
(16, 4829, 0.86331),
(11, 4830, 0.03507),
(16, 4830, 0.03507),
(11, 4831, 0.81669),
(16, 4831, 0.81669),
(11, 4832, 0.91),
(16, 4832, 0.91),
(11, 4833, 1.68),
(16, 4833, 1.68),
(11, 4834, 0.93331),
(16, 4834, 0.93331),
(11, 4835, 0.95669),
(16, 4835, 0.95669),
(11, 4836, 0.88669),
(16, 4836, 0.88669),
(11, 4837, 1.00331),
(16, 4837, 1.00331),
(11, 4838, 1.77338),
(16, 4838, 1.77338),
(11, 4839, 1.91338),
(16, 4839, 1.91338),
(11, 4840, 0.84),
(16, 4840, 0.84),
(11, 4841, 1.09669),
(16, 4841, 1.09669),
(11, 4842, 0.86331),
(16, 4842, 0.86331),
(11, 4843, 1.00331),
(16, 4843, 1.00331),
(11, 4844, 0.51331),
(16, 4844, 0.51331),
(11, 4845, 1.02669),
(16, 4845, 1.02669),
(11, 4846, 1.19),
(16, 4846, 1.19),
(11, 4847, 0.37331),
(16, 4847, 0.37331),
(11, 4848, 1.00331),
(16, 4848, 1.00331),
(11, 4849, 1.09669),
(16, 4849, 1.09669),
(11, 4850, 0.42),
(16, 4850, 0.42),
(11, 4851, 1.07331),
(16, 4851, 1.07331),
(11, 4852, 1.23669),
(16, 4852, 1.23669),
(11, 4853, 2.05338),
(16, 4853, 2.05338),
(11, 4854, 1.26),
(16, 4854, 1.26),
(11, 4855, 1.12),
(16, 4855, 1.12),
(11, 4856, 0.84),
(16, 4856, 0.84),
(11, 4857, 0.93331),
(16, 4857, 0.93331),
(11, 4858, 0.86331),
(16, 4858, 0.86331),
(11, 4859, 0.98),
(16, 4859, 0.98),
(11, 4860, 0.91),
(16, 4860, 0.91),
(11, 4861, 1.05),
(16, 4861, 1.05),
(11, 4862, 0.86331),
(16, 4862, 0.86331),
(11, 4863, 0.98),
(16, 4863, 0.98),
(11, 4864, 0.18669),
(16, 4864, 0.18669),
(11, 4865, 0.88669),
(16, 4865, 0.88669),
(11, 4866, 1.16669),
(16, 4866, 1.16669),
(11, 4879, 0.18669),
(16, 4879, 0.18669),
(11, 4880, 0.86331),
(16, 4880, 0.86331),
(11, 4881, 0.93331),
(16, 4881, 0.93331),
(11, 5025, 0.18669),
(16, 5025, 0.18669),
(11, 5026, 0.88669),
(16, 5026, 0.88669),
(11, 5027, 0.98),
(16, 5027, 0.98),
(11, 5028, 0.37338),
(16, 5028, 0.37338),
(11, 5029, 0.86331),
(16, 5029, 0.86331),
(11, 5030, 0.98),
(16, 5030, 0.98),
(11, 5031, 0.86331),
(16, 5031, 0.86331),
(11, 5032, 0.98),
(16, 5032, 0.98),
(11, 5033, 0.81669),
(16, 5033, 0.81669),
(11, 5034, 0.95669),
(16, 5034, 0.95669),
(11, 5035, 5.18),
(11, 5036, 0.28),
(16, 5036, 0.28),
(11, 5037, 0.93331),
(16, 5037, 0.93331),
(11, 5038, 1.00331),
(16, 5038, 1.00331),
(11, 5039, 0.51331),
(16, 5039, 0.51331),
(11, 5040, 1.02669),
(11, 5041, 1.14331),
(11, 5042, 0.37331),
(16, 5042, 0.37331),
(11, 5043, 1.05),
(11, 5044, 1.33),
(11, 5045, 0.42),
(16, 5045, 0.42),
(11, 5046, 1.07331),
(16, 5046, 1.07331),
(11, 5047, 1.16669),
(16, 5047, 1.16669),
(11, 5048, 0.51331),
(16, 5048, 0.51331),
(11, 5049, 1.12),
(16, 5049, 1.12),
(11, 5050, 1.19),
(16, 5050, 1.19),
(11, 5051, 0.60669),
(16, 5051, 0.60669),
(11, 5052, 1.09669),
(16, 5052, 1.09669),
(11, 5053, 1.19),
(16, 5053, 1.19),
(11, 5054, 0.74662),
(16, 5054, 0.74662),
(11, 5055, 1.12),
(16, 5055, 1.12),
(11, 5056, 1.21331),
(16, 5056, 1.21331),
(11, 5057, 1.05),
(16, 5057, 1.05),
(11, 5058, 1.33),
(16, 5058, 1.33),
(11, 5059, 0.14),
(16, 5059, 0.14),
(11, 5060, 0.91),
(16, 5060, 0.91),
(11, 5061, 1.05),
(16, 5061, 1.05),
(16, 5568, 0.07),
(16, 5569, 0.81669),
(16, 5570, 0.91),
(16, 5581, 1.16669),
(16, 5582, 1.19),
(16, 5583, 1.05),
(16, 5592, 1.00331),
(16, 5593, 1.07331),
(16, 5594, 0.93331),
(16, 5595, 1.09669);

-- --------------------------------------------------------

--
-- Table structure for table `crdev_finder_links_terms9`
--

CREATE TABLE `crdev_finder_links_terms9` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `crdev_finder_links_terms9`
--

INSERT INTO `crdev_finder_links_terms9` (`link_id`, `term_id`, `weight`) VALUES
(1, 10, 1.23321),
(12, 10, 1.23321),
(11, 10, 1.86648),
(16, 10, 1.86648),
(6, 53, 0.48),
(4, 53, 0.68),
(6, 334, 0.74662),
(6, 335, 1.05),
(6, 336, 1.19),
(6, 337, 1.00331),
(6, 338, 1.07331),
(6, 339, 0.0175),
(11, 339, 0.0175),
(16, 339, 0.0175),
(6, 340, 0.91),
(6, 341, 0.95669),
(11, 4624, 0.23331),
(16, 4624, 0.23331),
(11, 4625, 0.88669),
(16, 4625, 0.88669),
(11, 4626, 0.95669),
(16, 4626, 0.95669),
(11, 4627, 0.03507),
(16, 4627, 0.03507),
(11, 4628, 1.00331),
(16, 4628, 1.00331),
(11, 4629, 1.12),
(16, 4629, 1.12),
(11, 4630, 0.93331),
(16, 4630, 0.93331),
(11, 4631, 1.02669),
(16, 4631, 1.02669),
(11, 4632, 0.84),
(16, 4632, 0.84),
(11, 4633, 0.98),
(16, 4633, 0.98),
(11, 4634, 0.23331),
(16, 4634, 0.23331),
(11, 4635, 0.93331),
(16, 4635, 0.93331),
(11, 4636, 1.00331),
(16, 4636, 1.00331),
(11, 4637, 0.88669),
(16, 4637, 0.88669),
(11, 4638, 1.00331),
(16, 4638, 1.00331),
(11, 4639, 0.01169),
(16, 4639, 0.01169),
(11, 4640, 0.91),
(16, 4640, 0.91),
(11, 4641, 1.19),
(16, 4641, 1.19),
(11, 5250, 0.28),
(16, 5250, 0.28),
(11, 5251, 1.12),
(16, 5251, 1.12),
(11, 5252, 1.19),
(16, 5253, 0.88669),
(11, 5253, 5.57348),
(11, 5254, 5.55),
(11, 5255, 0.98),
(16, 5255, 0.98),
(11, 5256, 0.37331),
(16, 5256, 0.37331),
(11, 5257, 0.98),
(16, 5257, 0.98),
(11, 5258, 1.14331),
(16, 5258, 1.14331),
(16, 5598, 1.16669);

-- --------------------------------------------------------

--
-- Table structure for table `crdev_finder_links_termsa`
--

CREATE TABLE `crdev_finder_links_termsa` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `crdev_finder_links_termsa`
--

INSERT INTO `crdev_finder_links_termsa` (`link_id`, `term_id`, `weight`) VALUES
(16, 5559, 0.07),
(16, 5560, 0.81669),
(16, 5561, 0.98);

-- --------------------------------------------------------

--
-- Table structure for table `crdev_finder_links_termsb`
--

CREATE TABLE `crdev_finder_links_termsb` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `crdev_finder_links_termsb`
--

INSERT INTO `crdev_finder_links_termsb` (`link_id`, `term_id`, `weight`) VALUES
(6, 361, 0.23331),
(6, 362, 1.02669),
(6, 363, 1.21331),
(11, 4788, 0.0525),
(16, 4788, 0.0525),
(11, 4789, 0.93331),
(16, 4789, 0.93331),
(11, 4790, 1.00331),
(16, 4790, 1.00331),
(11, 4791, 0.84),
(16, 4791, 0.84),
(11, 4792, 0.98),
(16, 4792, 0.98),
(11, 4793, 0.95669),
(16, 4793, 0.95669),
(11, 4794, 1.07331),
(16, 4794, 1.07331),
(11, 4795, 0.09331),
(16, 4795, 0.09331),
(11, 4796, 0.81669),
(16, 4796, 0.81669),
(11, 4797, 0.98),
(16, 4797, 0.98),
(11, 4798, 0.23331),
(16, 4798, 0.23331),
(11, 4799, 0.91),
(16, 4799, 0.91),
(11, 4800, 1.00331),
(16, 4800, 1.00331),
(11, 4801, 0.28),
(16, 4801, 0.28),
(11, 4802, 0.93331),
(16, 4802, 0.93331),
(11, 4803, 1.21331),
(16, 4803, 1.21331),
(11, 4804, 0.37331),
(16, 4804, 0.37331),
(11, 4805, 1.02669),
(16, 4805, 1.02669),
(11, 4806, 1.12),
(16, 4806, 1.12),
(15, 5550, 1.72679);

-- --------------------------------------------------------

--
-- Table structure for table `crdev_finder_links_termsc`
--

CREATE TABLE `crdev_finder_links_termsc` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `crdev_finder_links_termsc`
--

INSERT INTO `crdev_finder_links_termsc` (`link_id`, `term_id`, `weight`) VALUES
(1, 2, 0.17),
(3, 39, 0.34),
(16, 46, 0.14),
(4, 46, 0.17),
(11, 46, 0.24),
(16, 316, 0.07),
(6, 316, 0.17),
(11, 4523, 0.86331),
(16, 4523, 0.86331),
(11, 4524, 1.00331),
(16, 4524, 1.00331),
(12, 5546, 0.34),
(13, 5547, 0.34),
(14, 5548, 0.34),
(15, 5549, 0.34),
(16, 5552, 0.81669),
(16, 5553, 0.98),
(16, 5554, 0.84),
(16, 5555, 0.93331);

-- --------------------------------------------------------

--
-- Table structure for table `crdev_finder_links_termsd`
--

CREATE TABLE `crdev_finder_links_termsd` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `crdev_finder_links_termsd`
--

INSERT INTO `crdev_finder_links_termsd` (`link_id`, `term_id`, `weight`) VALUES
(1, 1, 0),
(2, 1, 0),
(3, 1, 0),
(4, 1, 0),
(6, 1, 0),
(11, 1, 0),
(12, 1, 0),
(13, 1, 0),
(14, 1, 0),
(15, 1, 0),
(16, 1, 0),
(11, 44, 0.23331),
(16, 44, 0.23331),
(3, 44, 1.23321),
(14, 44, 1.23321),
(6, 397, 0.05838),
(6, 398, 1.07331),
(6, 399, 1.26),
(6, 400, 1.00331),
(11, 4958, 0.04676),
(16, 4958, 0.04676),
(11, 4959, 0.81669),
(16, 4959, 0.81669),
(11, 4960, 0.98),
(16, 4960, 0.98),
(11, 4961, 1.07331),
(16, 4961, 1.07331),
(11, 4962, 1.30669),
(16, 4962, 1.30669),
(11, 4963, 1.72662),
(16, 4963, 1.72662),
(11, 4964, 0.98),
(16, 4964, 0.98),
(11, 4965, 1.00331),
(16, 4965, 1.00331),
(11, 4966, 0.91),
(16, 4966, 0.91),
(11, 4967, 0.95669),
(16, 4967, 0.95669),
(11, 4968, 0.32669),
(16, 4968, 0.32669),
(11, 4969, 0.93331),
(16, 4969, 0.93331),
(11, 4970, 1.09669),
(16, 4970, 1.09669),
(16, 4971, 3.08),
(11, 4971, 4.28),
(11, 4972, 0.93331),
(11, 4973, 1.09669),
(11, 4974, 0.98),
(16, 4974, 0.98),
(11, 4975, 1.07331),
(16, 4975, 1.07331),
(11, 4976, 0.91),
(16, 4976, 0.91),
(11, 4977, 1.00331),
(16, 4977, 1.00331),
(11, 4978, 0.91),
(16, 4978, 0.91),
(11, 4979, 1.07331),
(16, 4979, 1.07331),
(11, 4980, 0.91),
(16, 4980, 0.91),
(11, 4981, 1.02669),
(16, 4981, 1.02669),
(11, 4982, 1.05),
(16, 4982, 1.05),
(11, 4983, 1.28331),
(16, 4983, 1.28331),
(11, 4984, 1.05),
(16, 4984, 1.05),
(11, 4985, 1.12),
(16, 4985, 1.12),
(11, 4986, 0.93331),
(16, 4986, 0.93331),
(11, 4987, 1.02669),
(16, 4987, 1.02669),
(11, 4988, 0.95669),
(16, 4988, 0.95669),
(11, 4989, 1.05),
(16, 4989, 1.05),
(11, 4990, 0.93331),
(16, 4990, 0.93331),
(11, 4991, 1.05),
(16, 4991, 1.05),
(11, 4992, 0.04676),
(16, 4992, 0.04676),
(11, 4993, 0.91),
(16, 4993, 0.91),
(11, 4994, 1.02669),
(16, 4994, 1.02669),
(11, 4995, 0.88669),
(16, 4995, 0.88669),
(11, 4996, 1.02669),
(16, 4996, 1.02669),
(11, 4997, 1.72662),
(16, 4997, 1.72662),
(11, 4998, 0.98),
(16, 4998, 0.98),
(11, 4999, 1.02669),
(16, 4999, 1.02669),
(11, 5000, 0.02331),
(16, 5000, 0.02331),
(11, 5001, 0.91),
(16, 5001, 0.91),
(11, 5002, 1.07331),
(16, 5002, 1.07331),
(11, 5003, 1.21338),
(16, 5003, 1.21338),
(11, 5004, 1.09669),
(16, 5004, 1.09669),
(11, 5005, 1.21331),
(16, 5005, 1.21331),
(11, 5006, 1.23669),
(16, 5006, 1.23669),
(11, 5007, 1.33),
(16, 5007, 1.33),
(11, 5008, 0.03507),
(16, 5008, 0.03507),
(11, 5009, 0.91),
(16, 5009, 0.91),
(11, 5010, 1.19),
(16, 5010, 1.19),
(11, 5011, 0.86331),
(16, 5011, 0.86331),
(11, 5012, 0.91),
(16, 5012, 0.91),
(11, 5013, 0.84),
(16, 5013, 0.84),
(11, 5014, 1.00331),
(16, 5014, 1.00331),
(11, 5015, 0.46662),
(16, 5015, 0.46662),
(11, 5016, 1.77338),
(16, 5016, 1.77338),
(11, 5017, 1.02669),
(16, 5017, 1.02669),
(11, 5018, 1.07331),
(16, 5018, 1.07331),
(11, 5019, 0.0175),
(16, 5019, 0.0175),
(11, 5020, 0.93331),
(16, 5020, 0.93331),
(11, 5021, 1.21331),
(16, 5021, 1.21331),
(11, 5022, 0.0175),
(16, 5022, 0.0175),
(11, 5023, 0.88669),
(16, 5023, 0.88669),
(11, 5024, 0.98),
(16, 5024, 0.98),
(16, 5588, 0.88669),
(16, 5589, 0.98),
(16, 5590, 0.91),
(16, 5591, 1.12);

-- --------------------------------------------------------

--
-- Table structure for table `crdev_finder_links_termse`
--

CREATE TABLE `crdev_finder_links_termse` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `crdev_finder_links_termse`
--

INSERT INTO `crdev_finder_links_termse` (`link_id`, `term_id`, `weight`) VALUES
(2, 35, 1.23321),
(13, 35, 1.23321),
(6, 425, 0.02331),
(6, 426, 0.98),
(6, 427, 1.09669),
(11, 428, 0.02331),
(16, 428, 0.02331),
(6, 428, 0.04662),
(6, 429, 0.91),
(6, 430, 0.95669),
(6, 431, 0.86331),
(6, 432, 1.00331),
(11, 4716, 0.46662),
(16, 4716, 0.46662),
(11, 4717, 0.91),
(16, 4717, 0.91),
(11, 4718, 1.00331),
(16, 4718, 1.00331),
(11, 4719, 0.93331),
(16, 4719, 0.93331),
(11, 4720, 1.02669),
(16, 4720, 1.02669),
(11, 4721, 0.14),
(16, 4721, 0.14),
(11, 4722, 0.84),
(16, 4722, 0.84),
(11, 4723, 0.91),
(16, 4723, 0.91),
(11, 4724, 0.28),
(16, 4724, 0.28),
(11, 4725, 0.91),
(16, 4725, 0.91),
(11, 4726, 1.02669),
(16, 4726, 1.02669),
(11, 4727, 0.37331),
(16, 4727, 0.37331),
(11, 4728, 0.98),
(16, 4728, 0.98),
(11, 4729, 1.07331),
(16, 4729, 1.07331),
(11, 4730, 0.42),
(16, 4730, 0.42),
(11, 4731, 1.00331),
(16, 4731, 1.00331),
(11, 4732, 1.09669),
(16, 4732, 1.09669),
(11, 4733, 0.28),
(16, 4733, 0.28),
(11, 4734, 0.93331),
(16, 4734, 0.93331),
(11, 4735, 1.09669),
(16, 4735, 1.09669),
(11, 4736, 0.14),
(16, 4736, 0.14),
(11, 4737, 0.86331),
(16, 4737, 0.86331),
(11, 4738, 1.09669),
(16, 4738, 1.09669),
(11, 4739, 0.18669),
(16, 4739, 0.18669),
(11, 4740, 0.93331),
(16, 4740, 0.93331),
(11, 4741, 1.00331),
(16, 4741, 1.00331),
(11, 4742, 0.32669),
(16, 4742, 0.32669),
(11, 4743, 0.95669),
(16, 4743, 0.95669),
(11, 4744, 1.14331),
(16, 4744, 1.14331),
(11, 4745, 0.28),
(16, 4745, 0.28),
(11, 4746, 0.93331),
(16, 4746, 0.93331),
(11, 4747, 1.00331),
(16, 4747, 1.00331),
(11, 5156, 0.28),
(16, 5156, 0.28),
(11, 5157, 1.07331),
(16, 5157, 1.07331),
(11, 5158, 1.14331),
(16, 5158, 1.14331),
(11, 5159, 1.00331),
(16, 5159, 1.00331),
(11, 5160, 1.16669),
(16, 5160, 1.16669),
(11, 5161, 0.1925),
(16, 5161, 0.1925),
(11, 5162, 1.05),
(16, 5162, 1.05),
(11, 5163, 1.21331),
(16, 5163, 1.21331),
(11, 5164, 1.02669),
(16, 5164, 1.02669),
(11, 5165, 1.12),
(16, 5165, 1.12),
(11, 5166, 3.73324),
(16, 5166, 3.73324),
(11, 5167, 4.85324),
(16, 5167, 4.85324),
(11, 5168, 1.02669),
(16, 5168, 1.02669),
(11, 5169, 1.12),
(16, 5169, 1.12),
(11, 5170, 1.05),
(16, 5170, 1.05),
(11, 5171, 1.21331),
(16, 5171, 1.21331),
(11, 5172, 0.91),
(16, 5172, 0.91),
(11, 5173, 1.00331),
(16, 5173, 1.00331),
(11, 5174, 0.95669),
(16, 5174, 0.95669),
(11, 5175, 1.05),
(16, 5175, 1.05),
(11, 5176, 1.02669),
(16, 5176, 1.02669),
(11, 5177, 1.12),
(16, 5177, 1.12),
(11, 5178, 0.42),
(16, 5178, 0.42),
(11, 5179, 1.00331),
(16, 5179, 1.00331),
(11, 5180, 1.16669),
(16, 5180, 1.16669),
(11, 5181, 0.37331),
(16, 5181, 0.37331),
(11, 5182, 1.05),
(16, 5182, 1.05),
(11, 5183, 1.21331),
(16, 5184, 0.2338),
(11, 5184, 0.29559),
(11, 5185, 0.79331),
(16, 5185, 0.79331),
(11, 5186, 0.93331),
(16, 5186, 0.93331),
(11, 5187, 0.81669),
(16, 5187, 0.81669),
(11, 5188, 1.02669),
(16, 5188, 1.02669),
(11, 5189, 0.91),
(16, 5189, 0.91),
(11, 5190, 1.00331),
(16, 5190, 1.00331),
(11, 5191, 0.81669),
(16, 5191, 0.81669),
(11, 5192, 1.07331),
(16, 5192, 1.07331),
(16, 5193, 0.91),
(11, 5193, 5.72),
(16, 5194, 1.19),
(11, 5194, 7.48),
(11, 5195, 0.88669),
(16, 5195, 0.88669),
(11, 5196, 0.93331),
(16, 5196, 0.93331),
(11, 5197, 0.93331),
(16, 5197, 0.93331),
(11, 5198, 1.19),
(16, 5198, 1.19),
(11, 5199, 0.81669),
(16, 5199, 0.81669),
(11, 5200, 0.93331),
(16, 5200, 0.93331),
(11, 5201, 0.91),
(16, 5201, 0.91),
(11, 5202, 1.00331),
(16, 5202, 1.00331),
(11, 5203, 0.93331),
(16, 5203, 0.93331),
(11, 5204, 1.02669),
(16, 5204, 1.02669),
(11, 5205, 0.86331),
(16, 5205, 0.86331),
(11, 5206, 0.91),
(16, 5206, 0.91),
(11, 5207, 0.84),
(16, 5207, 0.84),
(11, 5208, 1.02669),
(16, 5208, 1.02669),
(11, 5209, 0.95669),
(16, 5209, 0.95669),
(11, 5210, 1.07331),
(16, 5210, 1.07331),
(11, 5211, 0.88669),
(16, 5211, 0.88669),
(11, 5212, 1.00331),
(16, 5212, 1.00331),
(11, 5213, 1.07331),
(16, 5213, 1.07331),
(11, 5214, 1.16669),
(16, 5214, 1.16669),
(11, 5215, 0.95669),
(16, 5215, 0.95669),
(11, 5216, 1.02669),
(16, 5216, 1.02669),
(11, 5217, 1.77338),
(16, 5217, 1.77338),
(11, 5218, 1.09669),
(16, 5218, 1.09669),
(11, 5219, 1.00331),
(16, 5219, 1.00331),
(11, 5220, 1.68),
(16, 5220, 1.68),
(11, 5221, 1.00331),
(16, 5221, 1.00331),
(11, 5222, 1.12),
(16, 5222, 1.12),
(11, 5223, 0.0175),
(16, 5223, 0.0175),
(11, 5224, 0.88669),
(16, 5224, 0.88669),
(11, 5225, 0.98),
(16, 5225, 0.98),
(11, 5226, 0.32669),
(16, 5226, 0.32669),
(11, 5227, 0.93331),
(16, 5227, 0.93331),
(11, 5228, 1.09669),
(16, 5228, 1.09669),
(11, 5229, 0.14),
(16, 5229, 0.14),
(11, 5230, 0.86331),
(16, 5230, 0.86331),
(11, 5231, 0.93331),
(16, 5231, 0.93331),
(16, 5556, 0.24),
(16, 5557, 0.79331),
(16, 5558, 0.91),
(16, 5562, 0.07),
(16, 5563, 0.88669),
(16, 5564, 1.16669),
(16, 5597, 1.09669);

-- --------------------------------------------------------

--
-- Table structure for table `crdev_finder_links_termsf`
--

CREATE TABLE `crdev_finder_links_termsf` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `crdev_finder_links_termsf`
--

INSERT INTO `crdev_finder_links_termsf` (`link_id`, `term_id`, `weight`) VALUES
(16, 11, 0.27993),
(11, 11, 0.43989),
(1, 11, 0.49321),
(2, 11, 0.49321),
(3, 11, 0.49321),
(11, 12, 1.40004),
(1, 12, 4.31679),
(2, 12, 4.31679),
(3, 12, 4.31679),
(11, 13, 1.56),
(1, 13, 4.81),
(16, 14, 0.02331),
(11, 14, 0.06327),
(1, 14, 0.12321),
(2, 14, 0.12321),
(3, 14, 0.12321),
(11, 15, 1.47996),
(1, 15, 4.56321),
(2, 15, 4.56321),
(3, 15, 4.56321),
(11, 16, 1.59996),
(1, 16, 4.93321),
(2, 16, 4.93321),
(3, 16, 4.93321),
(2, 38, 5.67321),
(3, 45, 5.55),
(6, 434, 0.0175),
(6, 435, 0.93331),
(6, 436, 1.05),
(6, 437, 0.18669),
(11, 437, 0.37338),
(16, 437, 0.37338),
(6, 438, 0.88669),
(6, 439, 1.00331),
(6, 440, 0.23331),
(6, 441, 0.86331),
(6, 442, 1.09669),
(6, 443, 0.32669),
(6, 444, 0.98),
(6, 445, 1.09669),
(11, 5259, 0.18669),
(16, 5259, 0.18669),
(11, 5260, 0.93331),
(16, 5260, 0.93331),
(11, 5261, 1.05),
(16, 5261, 1.05),
(11, 5262, 0.28),
(16, 5262, 0.28),
(11, 5263, 0.93331),
(16, 5263, 0.93331),
(11, 5264, 1.05),
(16, 5264, 1.05),
(11, 5265, 0.04662),
(16, 5265, 0.04662),
(11, 5266, 1.72662),
(16, 5266, 1.72662),
(11, 5267, 0.93331),
(16, 5267, 0.93331),
(11, 5268, 1.00331),
(16, 5268, 1.00331),
(11, 5269, 0.84),
(16, 5269, 0.84),
(11, 5270, 0.93331),
(16, 5270, 0.93331),
(11, 5271, 0.86331),
(16, 5271, 0.86331),
(11, 5272, 1.02669),
(16, 5272, 1.02669),
(11, 5273, 0.86331),
(16, 5273, 0.86331),
(11, 5274, 1.05),
(16, 5274, 1.05),
(11, 5275, 0.46669),
(16, 5275, 0.46669),
(11, 5276, 1.16669),
(16, 5276, 1.16669),
(11, 5277, 1.33),
(16, 5277, 1.33),
(11, 5278, 0.32669),
(16, 5278, 0.32669),
(11, 5279, 0.88669),
(16, 5279, 0.88669),
(11, 5280, 1.00331),
(16, 5280, 1.00331),
(11, 5281, 0.04662),
(16, 5281, 0.04662),
(11, 5282, 0.88669),
(16, 5282, 0.88669),
(11, 5283, 1.00331),
(16, 5283, 1.00331),
(11, 5284, 0.95669),
(16, 5284, 0.95669),
(11, 5285, 1.09669),
(16, 5285, 1.09669),
(11, 5286, 0.02919),
(16, 5286, 0.02919),
(11, 5287, 0.91),
(16, 5287, 0.91),
(11, 5288, 1.02669),
(16, 5288, 1.02669),
(11, 5289, 0.0525),
(16, 5289, 0.0525),
(11, 5290, 0.86331),
(16, 5290, 0.86331),
(11, 5291, 1.16669),
(16, 5291, 1.16669),
(11, 5292, 1.72662),
(16, 5292, 1.72662),
(11, 5293, 0.93331),
(16, 5293, 0.93331),
(11, 5294, 1.05),
(16, 5294, 1.05),
(11, 5295, 0.0175),
(16, 5295, 0.11),
(11, 5296, 0.93331),
(16, 5296, 0.93331),
(11, 5297, 0.98),
(16, 5297, 0.98),
(11, 5298, 0.09324),
(16, 5298, 0.09324),
(11, 5299, 0.86331),
(16, 5299, 0.86331),
(11, 5300, 0.95669),
(16, 5300, 0.95669),
(11, 5301, 0.95669),
(16, 5301, 0.95669),
(11, 5302, 1.05),
(16, 5302, 1.05),
(11, 5303, 0.88669),
(16, 5303, 0.88669),
(11, 5304, 1.02669),
(16, 5304, 1.02669),
(11, 5305, 0.98),
(16, 5305, 0.98),
(11, 5306, 1.05),
(16, 5306, 1.05),
(11, 5307, 0.16317),
(16, 5307, 0.16317),
(11, 5308, 0.84),
(16, 5308, 0.84),
(11, 5309, 1.00331),
(16, 5309, 1.00331),
(11, 5310, 1.02669),
(16, 5310, 1.02669),
(11, 5311, 1.12),
(16, 5311, 1.12),
(11, 5312, 0.88669),
(16, 5312, 0.88669),
(11, 5313, 1.14331),
(16, 5313, 1.14331),
(11, 5314, 0.88669),
(16, 5314, 0.88669),
(11, 5315, 0.95669),
(16, 5315, 0.95669),
(11, 5316, 2.73),
(16, 5316, 2.73),
(11, 5317, 1.26),
(16, 5317, 1.26),
(11, 5318, 1.02669),
(16, 5318, 1.02669),
(11, 5319, 1.07331),
(16, 5319, 1.07331),
(11, 5320, 0.88669),
(16, 5320, 0.88669),
(11, 5321, 1.09669),
(16, 5321, 1.09669),
(11, 5322, 0.98),
(16, 5322, 0.98),
(11, 5323, 1.09669),
(16, 5323, 1.09669),
(11, 5324, 0.42),
(16, 5324, 0.42),
(11, 5325, 1.09669),
(16, 5325, 1.09669),
(11, 5326, 1.16669),
(16, 5326, 1.16669),
(11, 5327, 0.23331),
(16, 5327, 0.23331),
(11, 5328, 0.88669),
(16, 5328, 0.88669),
(11, 5329, 1.21331),
(16, 5329, 1.21331),
(16, 5599, 4.56321),
(16, 5600, 5.30321);

-- --------------------------------------------------------

--
-- Table structure for table `crdev_finder_taxonomy`
--

CREATE TABLE `crdev_finder_taxonomy` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `access` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `crdev_finder_taxonomy`
--

INSERT INTO `crdev_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0),
(2, 1, 'Type', 1, 1, 0),
(3, 2, 'Category', 1, 1, 0),
(4, 1, 'Language', 1, 1, 0),
(5, 4, '*', 1, 1, 0),
(7, 1, 'Author', 1, 1, 0),
(9, 1, 'Category', 1, 1, 0),
(11, 2, 'Article', 1, 1, 0),
(12, 7, 'Super User', 1, 1, 0),
(13, 9, 'Mission and Vision', 0, 1, 0),
(18, 9, 'What we do - Pay Visit', 0, 1, 0),
(19, 9, 'Pay Visit', 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `crdev_finder_taxonomy_map`
--

CREATE TABLE `crdev_finder_taxonomy_map` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `node_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `crdev_finder_taxonomy_map`
--

INSERT INTO `crdev_finder_taxonomy_map` (`link_id`, `node_id`) VALUES
(1, 3),
(1, 5),
(2, 3),
(2, 5),
(3, 3),
(3, 5),
(4, 3),
(4, 5),
(6, 5),
(6, 11),
(6, 12),
(6, 13),
(11, 5),
(11, 11),
(11, 12),
(11, 18),
(12, 3),
(12, 5),
(13, 3),
(13, 5),
(14, 3),
(14, 5),
(15, 3),
(15, 5),
(16, 5),
(16, 11),
(16, 12),
(16, 19);

-- --------------------------------------------------------

--
-- Table structure for table `crdev_finder_terms`
--

CREATE TABLE `crdev_finder_terms` (
  `term_id` int(10) UNSIGNED NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `weight` float UNSIGNED NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `crdev_finder_terms`
--

INSERT INTO `crdev_finder_terms` (`term_id`, `term`, `stem`, `common`, `phrase`, `weight`, `soundex`, `links`, `language`) VALUES
(1, '', '', 0, 0, 0, '', 15, '*'),
(2, '8', '8', 0, 0, 0.1, '', 2, '*'),
(3, 'category', 'category', 0, 0, 0.5333, 'C326', 12, '*'),
(4, 'do', 'do', 0, 0, 0.1333, 'D000', 8, '*'),
(5, 'do pay', 'do pay', 0, 1, 1.2, 'D100', 3, '*'),
(6, 'do pay visit', 'do pay visit', 0, 1, 1.4, 'D123', 3, '*'),
(7, 'index', 'index', 0, 0, 0.3333, 'I532', 15, '*'),
(8, 'pay', 'pay', 0, 0, 0.2, 'P000', 5, '*'),
(9, 'pay visit', 'pay visit', 0, 1, 1.3, 'P230', 5, '*'),
(10, 'visit', 'visit', 0, 0, 0.3333, 'V230', 5, '*'),
(11, 'we', 'we', 0, 0, 0.1333, 'W000', 8, '*'),
(12, 'we do', 'we do', 0, 1, 1.1667, 'W300', 7, '*'),
(13, 'we do pay', 'we do pay', 0, 1, 1.3, 'W310', 3, '*'),
(14, 'what', 'what', 1, 0, 0.0333, 'W300', 8, '*'),
(15, 'what we', 'what we', 0, 1, 1.2333, 'W300', 7, '*'),
(16, 'what we do', 'what we do', 0, 1, 1.3333, 'W300', 7, '*'),
(32, '9', '9', 0, 0, 0.1, '', 2, '*'),
(33, 'do internship', 'do internship', 0, 1, 1.4333, 'D536521', 2, '*'),
(34, 'do internship ended', 'do internship ended', 0, 1, 1.6333, 'D53652153', 2, '*'),
(35, 'ended', 'ended', 0, 0, 0.3333, 'E530', 3, '*'),
(36, 'internship', 'internship', 0, 0, 0.6667, 'I536521', 5, '*'),
(37, 'internship ended', 'internship ended', 0, 1, 1.5333, 'I53652153', 3, '*'),
(38, 'we do internship', 'we do internship', 0, 1, 1.5333, 'W3536521', 2, '*'),
(39, '10', '10', 0, 0, 0.2, '', 2, '*'),
(40, 'accepting', 'accepting', 0, 0, 0.6, 'A21352', 3, '*'),
(41, 'accepting offer', 'accepting offer', 0, 1, 1.5, 'A2135216', 3, '*'),
(42, 'do accepting', 'do accepting', 0, 1, 1.4, 'D21352', 2, '*'),
(43, 'do accepting offer', 'do accepting offer', 0, 1, 1.6, 'D2135216', 2, '*'),
(44, 'offer', 'offer', 0, 0, 0.3333, 'O160', 5, '*'),
(45, 'we do accepting', 'we do accepting', 0, 1, 1.5, 'W321352', 2, '*'),
(46, '2', '2', 0, 0, 0.1, '', 4, '*'),
(47, 'and', 'and', 1, 0, 0.025, 'A530', 5, '*'),
(48, 'and vision', 'and vision', 0, 1, 1.3333, 'A53125', 3, '*'),
(49, 'mission', 'mission', 0, 0, 0.4667, 'M250', 3, '*'),
(50, 'mission and', 'mission and', 0, 1, 1.3667, 'M253', 3, '*'),
(51, 'mission and vision', 'mission and vision', 0, 1, 1.6, 'M253125', 3, '*'),
(52, 'uncategorised', 'uncategorised', 0, 0, 0.8667, 'U5232623', 2, '*'),
(53, 'vision', 'vision', 0, 0, 0.4, 'V250', 3, '*'),
(316, '1', '1', 0, 0, 0.1, '', 2, '*'),
(317, 'a', 'a', 1, 0, 0.0083, 'A000', 3, '*'),
(318, 'a mission', 'a mission', 0, 1, 1.3, 'A525', 1, '*'),
(319, 'a mission statement', 'a mission statement', 0, 1, 1.6333, 'A5252353', 1, '*'),
(320, 'a statement', 'a statement', 0, 1, 1.3667, 'A2353', 1, '*'),
(321, 'a statement that', 'a statement that', 0, 1, 1.5333, 'A2353', 1, '*'),
(322, 'about', 'about', 1, 0, 0.0417, 'A130', 3, '*'),
(323, 'about you', 'about you', 0, 1, 1.3, 'A130', 1, '*'),
(324, 'about you and', 'about you and', 0, 1, 1.4333, 'A1353', 1, '*'),
(325, 'all', 'all', 1, 0, 0.025, 'A400', 3, '*'),
(326, 'all business', 'all business', 0, 1, 1.4, 'A41252', 1, '*'),
(327, 'all business make', 'all business make', 0, 1, 1.5667, 'A4125252', 1, '*'),
(328, 'and not', 'and not', 0, 1, 1.2333, 'A5353', 1, '*'),
(329, 'and not some', 'and not some', 0, 1, 1.4, 'A535325', 1, '*'),
(330, 'article', 'article', 0, 0, 0.4667, 'A6324', 3, '*'),
(331, 'as', 'as', 1, 0, 0.0167, 'A200', 3, '*'),
(332, 'as in', 'as in', 0, 1, 1.1667, 'A250', 1, '*'),
(333, 'as in all', 'as in all', 0, 1, 1.3, 'A254', 1, '*'),
(334, 'business', 'business', 0, 0, 0.5333, 'B252', 1, '*'),
(335, 'business having', 'business having', 0, 1, 1.5, 'B252152', 1, '*'),
(336, 'business having great', 'business having great', 0, 1, 1.7, 'B25215263', 1, '*'),
(337, 'business make', 'business make', 0, 1, 1.4333, 'B25252', 1, '*'),
(338, 'business make it', 'business make it', 0, 1, 1.5333, 'B252523', 1, '*'),
(339, 'but', 'but', 1, 0, 0.025, 'B300', 3, '*'),
(340, 'but write', 'but write', 0, 1, 1.3, 'B363', 1, '*'),
(341, 'but write a', 'but write a', 0, 1, 1.3667, 'B363', 1, '*'),
(342, 'companies\'', 'companies', 0, 0, 0.6667, 'C5152', 1, '*'),
(343, 'companies\' mission', 'companies mission', 0, 1, 1.6, 'C5152525', 1, '*'),
(344, 'companies\' mission statements', 'companies mission statements', 0, 1, 1.9667, 'C515252523532', 1, '*'),
(345, 'company', 'company', 0, 0, 0.4667, 'C515', 1, '*'),
(346, 'customer', 'customer', 0, 0, 0.5333, 'C356', 1, '*'),
(347, 'customer service', 'customer service', 0, 1, 1.5333, 'C3562612', 1, '*'),
(348, 'customer service is', 'customer service is', 0, 1, 1.6333, 'C3562612', 1, '*'),
(349, 'follows', 'follows', 0, 0, 0.4667, 'F420', 1, '*'),
(350, 'follows function', 'follows function', 0, 1, 1.5333, 'F4215235', 1, '*'),
(351, 'follows function in', 'follows function in', 0, 1, 1.6333, 'F4215235', 1, '*'),
(352, 'for', 'for', 1, 0, 0.025, 'F600', 3, '*'),
(353, 'for your', 'for your', 0, 1, 1.2667, 'F600', 3, '*'),
(354, 'for your business', 'for your business', 0, 1, 1.5667, 'F61252', 1, '*'),
(355, 'form', 'form', 0, 0, 0.2667, 'F650', 1, '*'),
(356, 'form follows', 'form follows', 0, 1, 1.4, 'F65142', 1, '*'),
(357, 'form follows function', 'form follows function', 0, 1, 1.7, 'F6514215235', 1, '*'),
(358, 'function', 'function', 0, 0, 0.5333, 'F5235', 1, '*'),
(359, 'function in', 'function in', 0, 1, 1.3667, 'F5235', 1, '*'),
(360, 'function in mission', 'function in mission', 0, 1, 1.6333, 'F523525', 1, '*'),
(361, 'great', 'great', 0, 0, 0.3333, 'G630', 1, '*'),
(362, 'great customer', 'great customer', 0, 1, 1.4667, 'G632356', 1, '*'),
(363, 'great customer service', 'great customer service', 0, 1, 1.7333, 'G6323562612', 1, '*'),
(364, 'harder', 'harder', 0, 0, 0.4, 'H636', 1, '*'),
(365, 'harder than', 'harder than', 0, 1, 1.3667, 'H63635', 1, '*'),
(366, 'harder than writing', 'harder than writing', 0, 1, 1.6333, 'H636356352', 1, '*'),
(367, 'having', 'having', 0, 0, 0.4, 'H152', 1, '*'),
(368, 'having great', 'having great', 0, 1, 1.4, 'H15263', 1, '*'),
(369, 'having great customer', 'having great customer', 0, 1, 1.7, 'H152632356', 1, '*'),
(370, 'in', 'in', 1, 0, 0.0167, 'I500', 3, '*'),
(371, 'in all', 'in all', 0, 1, 1.2, 'I540', 1, '*'),
(372, 'in all business', 'in all business', 0, 1, 1.5, 'I541252', 1, '*'),
(373, 'in mission', 'in mission', 0, 1, 1.3333, 'I525', 1, '*'),
(374, 'in mission statements', 'in mission statements', 0, 1, 1.7, 'I52523532', 1, '*'),
(375, 'into', 'into', 1, 0, 0.0333, 'I530', 1, '*'),
(376, 'into a', 'into a', 0, 1, 1.2, 'I530', 1, '*'),
(377, 'into a mission', 'into a mission', 0, 1, 1.4667, 'I53525', 1, '*'),
(378, 'is', 'is', 1, 0, 0.0167, 'I200', 3, '*'),
(379, 'is about', 'is about', 0, 1, 1.2667, 'I213', 1, '*'),
(380, 'is about you', 'is about you', 0, 1, 1.4, 'I213', 1, '*'),
(381, 'is way', 'is way', 0, 1, 1.2, 'I200', 1, '*'),
(382, 'is way harder', 'is way harder', 0, 1, 1.4333, 'I2636', 1, '*'),
(383, 'it', 'it', 1, 0, 0.0167, 'I300', 3, '*'),
(384, 'it work', 'it work', 0, 1, 1.2333, 'I362', 1, '*'),
(385, 'it work for', 'it work for', 0, 1, 1.3667, 'I36216', 1, '*'),
(386, 'make', 'make', 0, 0, 0.2667, 'M200', 1, '*'),
(387, 'make it', 'make it', 0, 1, 1.2333, 'M230', 1, '*'),
(388, 'make it work', 'make it work', 0, 1, 1.4, 'M2362', 1, '*'),
(389, 'mission statement', 'mission statement', 0, 1, 1.5667, 'M252353', 1, '*'),
(390, 'mission statement read', 'mission statement read', 0, 1, 1.7333, 'M25235363', 1, '*'),
(391, 'mission statements', 'mission statements', 0, 1, 1.6, 'M2523532', 1, '*'),
(392, 'mission statements as', 'mission statements as', 0, 1, 1.7, 'M2523532', 1, '*'),
(393, 'mission statements but', 'mission statements but', 0, 1, 1.7333, 'M252353213', 1, '*'),
(394, 'not', 'not', 1, 0, 0.025, 'N300', 3, '*'),
(395, 'not some', 'not some', 0, 1, 1.2667, 'N325', 1, '*'),
(396, 'not some other', 'not some other', 0, 1, 1.4667, 'N32536', 1, '*'),
(397, 'other', 'other', 1, 0, 0.0417, 'O360', 1, '*'),
(398, 'other companies\'', 'other companies', 0, 1, 1.5333, 'O3625152', 1, '*'),
(399, 'other companies\' mission', 'other companies mission', 0, 1, 1.8, 'O3625152525', 1, '*'),
(400, 'other company', 'other company', 0, 1, 1.4333, 'O362515', 1, '*'),
(401, 'read', 'read', 0, 0, 0.2667, 'R300', 1, '*'),
(402, 'read other', 'read other', 0, 1, 1.3333, 'R360', 1, '*'),
(403, 'read other companies\'', 'read other companies', 0, 1, 1.7, 'R3625152', 1, '*'),
(404, 'remember', 'remember', 0, 0, 0.5333, 'R516', 1, '*'),
(405, 'remember form', 'remember form', 0, 1, 1.4333, 'R516165', 1, '*'),
(406, 'remember form follows', 'remember form follows', 0, 1, 1.7, 'R516165142', 1, '*'),
(407, 'service', 'service', 0, 0, 0.4667, 'S612', 1, '*'),
(408, 'service is', 'service is', 0, 1, 1.3333, 'S612', 1, '*'),
(409, 'service is way', 'service is way', 0, 1, 1.4667, 'S612', 1, '*'),
(410, 'some', 'some', 1, 0, 0.0333, 'S500', 3, '*'),
(411, 'some other', 'some other', 0, 1, 1.3333, 'S536', 1, '*'),
(412, 'some other company', 'some other company', 0, 1, 1.6, 'S5362515', 1, '*'),
(413, 'statement', 'statement', 0, 0, 0.6, 'S353', 1, '*'),
(414, 'statement read', 'statement read', 0, 1, 1.4667, 'S35363', 1, '*'),
(415, 'statement read other', 'statement read other', 0, 1, 1.6667, 'S353636', 1, '*'),
(416, 'statement that', 'statement that', 0, 1, 1.4667, 'S353', 1, '*'),
(417, 'statement that is', 'statement that is', 0, 1, 1.5667, 'S3532', 1, '*'),
(418, 'statements', 'statements', 0, 0, 0.6667, 'S3532', 1, '*'),
(419, 'statements as', 'statements as', 0, 1, 1.4333, 'S3532', 1, '*'),
(420, 'statements as in', 'statements as in', 0, 1, 1.5333, 'S35325', 1, '*'),
(421, 'statements but', 'statements but', 0, 1, 1.4667, 'S353213', 1, '*'),
(422, 'statements but write', 'statements but write', 0, 1, 1.6667, 'S35321363', 1, '*'),
(423, 'super', 'super', 0, 0, 0.3333, 'S160', 3, '*'),
(424, 'super user', 'super user', 0, 1, 1.3333, 'S1626', 3, '*'),
(425, 'than', 'than', 1, 0, 0.0333, 'T500', 1, '*'),
(426, 'than writing', 'than writing', 0, 1, 1.4, 'T56352', 1, '*'),
(427, 'than writing that', 'than writing that', 0, 1, 1.5667, 'T563523', 1, '*'),
(428, 'that', 'that', 1, 0, 0.0333, 'T000', 3, '*'),
(429, 'that into', 'that into', 0, 1, 1.3, 'T530', 1, '*'),
(430, 'that into a', 'that into a', 0, 1, 1.3667, 'T530', 1, '*'),
(431, 'that is', 'that is', 0, 1, 1.2333, 'T200', 1, '*'),
(432, 'that is about', 'that is about', 0, 1, 1.4333, 'T213', 1, '*'),
(433, 'user', 'user', 1, 0, 0.0333, 'U260', 3, '*'),
(434, 'way', 'way', 1, 0, 0.025, 'W000', 1, '*'),
(435, 'way harder', 'way harder', 0, 1, 1.3333, 'W636', 1, '*'),
(436, 'way harder than', 'way harder than', 0, 1, 1.5, 'W63635', 1, '*'),
(437, 'work', 'work', 0, 0, 0.2667, 'W620', 3, '*'),
(438, 'work for', 'work for', 0, 1, 1.2667, 'W6216', 1, '*'),
(439, 'work for your', 'work for your', 0, 1, 1.4333, 'W6216', 1, '*'),
(440, 'write', 'write', 0, 0, 0.3333, 'W630', 1, '*'),
(441, 'write a', 'write a', 0, 1, 1.2333, 'W630', 1, '*'),
(442, 'write a statement', 'write a statement', 0, 1, 1.5667, 'W632353', 1, '*'),
(443, 'writing', 'writing', 0, 0, 0.4667, 'W6352', 1, '*'),
(444, 'writing that', 'writing that', 0, 1, 1.4, 'W63523', 1, '*'),
(445, 'writing that into', 'writing that into', 0, 1, 1.5667, 'W6352353', 1, '*'),
(446, 'you', 'you', 1, 0, 0.025, 'Y000', 3, '*'),
(447, 'you and', 'you and', 0, 1, 1.2333, 'Y530', 1, '*'),
(448, 'you and not', 'you and not', 0, 1, 1.3667, 'Y5353', 1, '*'),
(449, 'your', 'your', 1, 0, 0.0333, 'Y600', 3, '*'),
(450, 'your business', 'your business', 0, 1, 1.4333, 'Y61252', 1, '*'),
(451, 'your business having', 'your business having', 0, 1, 1.6667, 'Y61252152', 1, '*'),
(4523, '2 annan', '2 annan', 0, 1, 1.2333, 'A500', 2, '*'),
(4524, '2 annan block', '2 annan block', 0, 1, 1.4333, 'A5142', 2, '*'),
(4525, 'a career', 'a career', 0, 1, 1.2667, 'A260', 2, '*'),
(4526, 'a career decision', 'a career decision', 0, 1, 1.5667, 'A26325', 2, '*'),
(4527, 'a job', 'a job', 0, 1, 1.1667, 'A210', 2, '*'),
(4528, 'a job job', 'a job job', 0, 1, 1.3, 'A2121', 2, '*'),
(4529, 'a mail', 'a mail', 0, 1, 1.2, 'A540', 2, '*'),
(4530, 'a mail to', 'a mail to', 0, 1, 1.3, 'A543', 2, '*'),
(4531, 'a specific', 'a specific', 0, 1, 1.3333, 'A21212', 2, '*'),
(4532, 'a specific position', 'a specific position', 0, 1, 1.6333, 'A212121235', 2, '*'),
(4533, 'a thriving', 'a thriving', 0, 1, 1.3333, 'A36152', 2, '*'),
(4534, 'a thriving career', 'a thriving career', 0, 1, 1.5667, 'A361526', 2, '*'),
(4535, 'a visit', 'a visit', 0, 1, 1.2333, 'A123', 2, '*'),
(4536, 'a visit to', 'a visit to', 0, 1, 1.3333, 'A123', 2, '*'),
(4537, 'a world', 'a world', 0, 1, 1.2333, 'A643', 2, '*'),
(4538, 'a world of', 'a world of', 0, 1, 1.3333, 'A6431', 2, '*'),
(4539, 'about to', 'about to', 0, 1, 1.2667, 'A130', 2, '*'),
(4540, 'about to start', 'about to start', 0, 1, 1.4667, 'A132363', 2, '*'),
(4541, 'about yourself', 'about yourself', 0, 1, 1.4667, 'A136241', 2, '*'),
(4542, 'about yourself your', 'about yourself your', 0, 1, 1.6333, 'A1362416', 2, '*'),
(4543, 'access', 'access', 0, 0, 0.4, 'A200', 2, '*'),
(4544, 'access to', 'access to', 0, 1, 1.3, 'A230', 2, '*'),
(4545, 'access to professionals', 'access to professionals', 0, 1, 1.7667, 'A231612542', 2, '*'),
(4546, 'advantage', 'advantage', 0, 0, 0.6, 'A31532', 2, '*'),
(4547, 'advantage of', 'advantage of', 0, 1, 1.4, 'A315321', 2, '*'),
(4548, 'advantage of it', 'advantage of it', 0, 1, 1.5, 'A3153213', 2, '*'),
(4549, 'ahead', 'ahead', 0, 0, 0.3333, 'A300', 2, '*'),
(4550, 'ahead of', 'ahead of', 0, 1, 1.2667, 'A310', 2, '*'),
(4551, 'ahead of your', 'ahead of your', 0, 1, 1.4333, 'A316', 2, '*'),
(4552, 'all students', 'all students', 0, 1, 1.4, 'A423532', 2, '*'),
(4553, 'all students in', 'all students in', 0, 1, 1.5, 'A4235325', 2, '*'),
(4554, 'also', 'also', 0, 0, 0.2667, 'A420', 2, '*'),
(4555, 'also when', 'also when', 0, 1, 1.3, 'A425', 2, '*'),
(4556, 'also when you', 'also when you', 0, 1, 1.4333, 'A425', 2, '*'),
(4557, 'an', 'an', 1, 0, 0.0167, 'A500', 2, '*'),
(4558, 'an appointment', 'an appointment', 0, 1, 1.4667, 'A515353', 2, '*'),
(4559, 'an appointment at', 'an appointment at', 0, 1, 1.5667, 'A515353', 2, '*'),
(4560, 'an employer', 'an employer', 0, 1, 1.3667, 'A5146', 2, '*'),
(4561, 'an employer who', 'an employer who', 0, 1, 1.5, 'A5146', 2, '*'),
(4562, 'and develop', 'and develop', 0, 1, 1.3667, 'A53141', 2, '*'),
(4563, 'and develop yourself', 'and develop yourself', 0, 1, 1.6667, 'A531416241', 2, '*'),
(4564, 'and development', 'and development', 0, 1, 1.5, 'A5314153', 2, '*'),
(4565, 'and development areas', 'and development areas', 0, 1, 1.7, 'A531415362', 2, '*'),
(4566, 'and full-time', 'and full-time', 0, 1, 1.4333, 'A531435', 2, '*'),
(4567, 'and full-time opportunities', 'and full-time opportunities', 0, 1, 1.9, 'A531435163532', 2, '*'),
(4568, 'and job', 'and job', 0, 1, 1.2333, 'A5321', 2, '*'),
(4569, 'and job search', 'and job search', 0, 1, 1.4667, 'A5321262', 2, '*'),
(4570, 'and may', 'and may', 0, 1, 1.2333, 'A535', 2, '*'),
(4571, 'and may not', 'and may not', 0, 1, 1.3667, 'A5353', 2, '*'),
(4572, 'and needed', 'and needed', 0, 1, 1.3333, 'A5353', 2, '*'),
(4573, 'and needed guidance', 'and needed guidance', 0, 1, 1.6333, 'A53532352', 2, '*'),
(4574, 'and requires', 'and requires', 0, 1, 1.4, 'A536262', 2, '*'),
(4575, 'and requires much', 'and requires much', 0, 1, 1.5667, 'A53626252', 2, '*'),
(4576, 'and start', 'and start', 0, 1, 1.3, 'A532363', 2, '*'),
(4577, 'and start developing', 'and start developing', 0, 1, 1.6667, 'A53236314152', 2, '*'),
(4578, 'and you', 'and you', 0, 1, 1.2333, 'A530', 2, '*'),
(4579, 'and you need', 'and you need', 0, 1, 1.4, 'A5353', 2, '*'),
(4580, 'and you will', 'and you will', 0, 1, 1.4, 'A534', 2, '*'),
(4581, 'annan', 'annan', 0, 0, 0.3333, 'A500', 2, '*'),
(4582, 'annan block', 'annan block', 0, 1, 1.3667, 'A5142', 2, '*'),
(4583, 'annan block next', 'annan block next', 0, 1, 1.5333, 'A5142523', 2, '*'),
(4584, 'appointment', 'appointment', 0, 0, 0.7333, 'A15353', 2, '*'),
(4585, 'appointment at', 'appointment at', 0, 1, 1.4667, 'A15353', 2, '*'),
(4586, 'appointment at room', 'appointment at room', 0, 1, 1.6333, 'A1535365', 2, '*'),
(4587, 'appropriate', 'appropriate', 0, 0, 0.7333, 'A16163', 2, '*'),
(4588, 'appropriate office', 'appropriate office', 0, 1, 1.6, 'A1616312', 2, '*'),
(4589, 'appropriate office on', 'appropriate office on', 0, 1, 1.7, 'A16163125', 2, '*'),
(4590, 'are', 'are', 1, 0, 0.025, 'A600', 2, '*'),
(4591, 'are ever', 'are ever', 0, 1, 1.2667, 'A616', 2, '*'),
(4592, 'are ever ready', 'are ever ready', 0, 1, 1.4667, 'A6163', 2, '*'),
(4593, 'are looking', 'are looking', 0, 1, 1.3667, 'A64252', 2, '*'),
(4594, 'are looking for', 'are looking for', 0, 1, 1.5, 'A6425216', 2, '*'),
(4595, 'are not', 'are not', 0, 1, 1.2333, 'A653', 2, '*'),
(4596, 'are not making', 'are not making', 0, 1, 1.4667, 'A6535252', 2, '*'),
(4597, 'are not utilising', 'are not utilising', 0, 1, 1.5667, 'A6534252', 2, '*'),
(4598, 'are paying', 'are paying', 0, 1, 1.3333, 'A6152', 2, '*'),
(4599, 'are paying for', 'are paying for', 0, 1, 1.4667, 'A615216', 2, '*'),
(4600, 'are specifically', 'are specifically', 0, 1, 1.5333, 'A6212124', 2, '*'),
(4601, 'are specifically trained', 'are specifically trained', 0, 1, 1.8, 'A62121243653', 2, '*'),
(4602, 'are struggling', 'are struggling', 0, 1, 1.4667, 'A62362452', 2, '*'),
(4603, 'are struggling with', 'are struggling with', 0, 1, 1.6333, 'A623624523', 2, '*'),
(4604, 'areas', 'areas', 0, 0, 0.3333, 'A620', 2, '*'),
(4605, 'areas etc', 'areas etc', 0, 1, 1.3, 'A6232', 2, '*'),
(4606, 'areas etc for', 'areas etc for', 0, 1, 1.4333, 'A623216', 2, '*'),
(4607, 'aren\'t', 'aren', 1, 0, 0.05, 'A653', 2, '*'),
(4608, 'aren\'t sure', 'aren sure', 0, 1, 1.3667, 'A65326', 2, '*'),
(4609, 'aren\'t sure how', 'aren sure how', 0, 1, 1.5, 'A65326', 2, '*'),
(4610, 'as to', 'as to', 0, 1, 1.1667, 'A230', 2, '*'),
(4611, 'as to be', 'as to be', 0, 1, 1.2667, 'A231', 2, '*'),
(4612, 'assist', 'assist', 0, 0, 0.4, 'A230', 2, '*'),
(4613, 'assist you', 'assist you', 0, 1, 1.3333, 'A230', 2, '*'),
(4614, 'assist you with', 'assist you with', 0, 1, 1.5, 'A230', 2, '*'),
(4615, 'assistance', 'assistance', 0, 0, 0.6667, 'A2352', 2, '*'),
(4616, 'assistance you', 'assistance you', 0, 1, 1.4667, 'A2352', 2, '*'),
(4617, 'assistance you are', 'assistance you are', 0, 1, 1.6, 'A23526', 2, '*'),
(4618, 'at', 'at', 1, 0, 0.0167, 'A300', 2, '*'),
(4619, 'at room', 'at room', 0, 1, 1.2333, 'A365', 2, '*'),
(4620, 'at room 2', 'at room 2', 0, 1, 1.3, 'A365', 2, '*'),
(4621, 'attend', 'attend', 0, 0, 0.4, 'A353', 2, '*'),
(4622, 'attend workshops', 'attend workshops', 0, 1, 1.5333, 'A3536212', 2, '*'),
(4623, 'attend workshops offered', 'attend workshops offered', 0, 1, 1.8, 'A3536212163', 2, '*'),
(4624, 'basis', 'basis', 0, 0, 0.3333, 'B200', 2, '*'),
(4625, 'basis so', 'basis so', 0, 1, 1.2667, 'B200', 2, '*'),
(4626, 'basis so as', 'basis so as', 0, 1, 1.3667, 'B200', 2, '*'),
(4627, 'be', 'be', 1, 0, 0.0167, 'B000', 2, '*'),
(4628, 'be conversant', 'be conversant', 0, 1, 1.4333, 'B2516253', 2, '*'),
(4629, 'be conversant with', 'be conversant with', 0, 1, 1.6, 'B2516253', 2, '*'),
(4630, 'be looking', 'be looking', 0, 1, 1.3333, 'B4252', 2, '*'),
(4631, 'be looking for', 'be looking for', 0, 1, 1.4667, 'B425216', 2, '*'),
(4632, 'be put', 'be put', 0, 1, 1.2, 'B300', 2, '*'),
(4633, 'be put miles', 'be put miles', 0, 1, 1.4, 'B3542', 2, '*'),
(4634, 'block', 'block', 0, 0, 0.3333, 'B420', 2, '*'),
(4635, 'block next', 'block next', 0, 1, 1.3333, 'B42523', 2, '*'),
(4636, 'block next to', 'block next to', 0, 1, 1.4333, 'B42523', 2, '*'),
(4637, 'but also', 'but also', 0, 1, 1.2667, 'B342', 2, '*'),
(4638, 'but also when', 'but also when', 0, 1, 1.4333, 'B3425', 2, '*'),
(4639, 'by', 'by', 1, 0, 0.0167, 'B000', 2, '*'),
(4640, 'by career', 'by career', 0, 1, 1.3, 'B260', 2, '*'),
(4641, 'by career development', 'by career development', 0, 1, 1.7, 'B26314153', 2, '*'),
(4642, 'caliber', 'caliber', 0, 0, 0.4667, 'C416', 2, '*'),
(4643, 'caliber to', 'caliber to', 0, 1, 1.3333, 'C4163', 2, '*'),
(4644, 'caliber to fill', 'caliber to fill', 0, 1, 1.5, 'C416314', 2, '*'),
(4645, 'campus', 'campus', 0, 0, 0.4, 'C512', 2, '*'),
(4646, 'campus that', 'campus that', 0, 1, 1.3667, 'C5123', 2, '*'),
(4647, 'campus that provides', 'campus that provides', 0, 1, 1.6667, 'C512316132', 2, '*'),
(4648, 'career', 'career', 0, 0, 0.4, 'C600', 2, '*'),
(4649, 'career attend', 'career attend', 0, 1, 1.4333, 'C6353', 1, '*'),
(4650, 'career attend workshops', 'career attend workshops', 0, 1, 1.7667, 'C63536212', 1, '*'),
(4651, 'career decision', 'career decision', 0, 1, 1.5, 'C6325', 2, '*'),
(4652, 'career decision and', 'career decision and', 0, 1, 1.6333, 'C63253', 2, '*'),
(4653, 'career development', 'career development', 0, 1, 1.6, 'C6314153', 2, '*'),
(4654, 'career development office', 'career development office', 0, 1, 1.8333, 'C631415312', 2, '*'),
(4655, 'career development staffs', 'career development staffs', 0, 1, 1.8333, 'C63141532312', 2, '*'),
(4656, 'career developmentoffice', 'career developmentoffice', 0, 1, 1.8, 'C631415312', 1, '*'),
(4657, 'career developmentoffice to', 'career developmentoffice to', 0, 1, 1.9, 'C6314153123', 1, '*'),
(4658, 'career early', 'career early', 0, 1, 1.4, 'C640', 2, '*'),
(4659, 'career early and', 'career early and', 0, 1, 1.5333, 'C6453', 2, '*'),
(4660, 'career our', 'career our', 0, 1, 1.3333, 'C600', 1, '*'),
(4661, 'career our career', 'career our career', 0, 1, 1.5667, 'C626', 1, '*'),
(4662, 'career-related', 'career-related', 0, 0, 0.9333, 'C643', 2, '*'),
(4663, 'career-related concerns', 'career-related concerns', 0, 1, 1.7667, 'C643252652', 2, '*'),
(4664, 'career-related concerns it\'s', 'career-related concerns it', 0, 1, 1.9333, 'C64325265232', 1, '*'),
(4665, 'carve', 'carve', 0, 0, 0.3333, 'C610', 2, '*'),
(4666, 'carve a', 'carve a', 0, 1, 1.2333, 'C610', 2, '*'),
(4667, 'carve a thriving', 'carve a thriving', 0, 1, 1.5333, 'C6136152', 2, '*'),
(4668, 'closely', 'closely', 0, 0, 0.4667, 'C424', 2, '*'),
(4669, 'closely with', 'closely with', 0, 1, 1.4, 'C4243', 2, '*'),
(4670, 'closely with employers', 'closely with employers', 0, 1, 1.7333, 'C424351462', 2, '*'),
(4671, 'com', 'com', 0, 0, 0.2, 'C500', 2, '*'),
(4672, 'com let', 'com let', 0, 1, 1.2333, 'C543', 2, '*'),
(4673, 'com let us', 'com let us', 0, 1, 1.3333, 'C5432', 2, '*'),
(4674, 'concerns', 'concerns', 0, 0, 0.5333, 'C52652', 2, '*'),
(4675, 'concerns it\'s', 'concerns it', 0, 1, 1.4333, 'C5265232', 1, '*'),
(4676, 'concerns it\'s the', 'concerns it the', 0, 1, 1.5667, 'C52652323', 1, '*'),
(4677, 'contact', 'contact', 0, 0, 0.4667, 'C5323', 1, '*'),
(4678, 'contact career', 'contact career', 0, 1, 1.4667, 'C532326', 1, '*'),
(4679, 'contact career developmentoffice', 'contact career developmentoffice', 0, 1, 2, 'C53232631415312', 1, '*'),
(4680, 'conversant', 'conversant', 0, 0, 0.6667, 'C516253', 2, '*'),
(4681, 'conversant with', 'conversant with', 0, 1, 1.5, 'C516253', 2, '*'),
(4682, 'conversant with your', 'conversant with your', 0, 1, 1.6667, 'C5162536', 2, '*'),
(4683, 'daily', 'daily', 0, 0, 0.3333, 'D400', 2, '*'),
(4684, 'daily basis', 'daily basis', 0, 1, 1.3667, 'D412', 2, '*'),
(4685, 'daily basis so', 'daily basis so', 0, 1, 1.4667, 'D412', 2, '*'),
(4686, 'decision', 'decision', 0, 0, 0.5333, 'D250', 2, '*'),
(4687, 'decision and', 'decision and', 0, 1, 1.4, 'D253', 2, '*'),
(4688, 'decision and you', 'decision and you', 0, 1, 1.5333, 'D253', 2, '*'),
(4689, 'develop', 'develop', 0, 0, 0.4667, 'D141', 2, '*'),
(4690, 'develop internship', 'develop internship', 0, 1, 1.6, 'D141536521', 2, '*'),
(4691, 'develop internship and', 'develop internship and', 0, 1, 1.7333, 'D14153652153', 2, '*'),
(4692, 'develop yourself', 'develop yourself', 0, 1, 1.5333, 'D1416241', 2, '*'),
(4693, 'develop yourself in', 'develop yourself in', 0, 1, 1.6333, 'D14162415', 2, '*'),
(4694, 'developing', 'developing', 0, 0, 0.6667, 'D14152', 2, '*'),
(4695, 'developing your', 'developing your', 0, 1, 1.5, 'D141526', 2, '*'),
(4696, 'developing your career', 'developing your career', 0, 1, 1.7333, 'D14152626', 2, '*'),
(4697, 'development', 'development', 0, 0, 0.7333, 'D14153', 2, '*'),
(4698, 'development areas', 'development areas', 0, 1, 1.5667, 'D1415362', 2, '*'),
(4699, 'development areas etc', 'development areas etc', 0, 1, 1.7, 'D141536232', 2, '*'),
(4700, 'development office', 'development office', 0, 1, 1.6, 'D1415312', 2, '*'),
(4701, 'development office get', 'development office get', 0, 1, 1.7333, 'D14153123', 1, '*'),
(4702, 'development office gmail', 'development office gmail', 0, 1, 1.8, 'D141531254', 2, '*'),
(4703, 'development office is', 'development office is', 0, 1, 1.7, 'D1415312', 2, '*'),
(4704, 'development office provides', 'development office provides', 0, 1, 1.9, 'D141531216132', 2, '*'),
(4705, 'development office starting', 'development office starting', 0, 1, 1.9, 'D141531236352', 2, '*'),
(4706, 'development office ttu', 'development office ttu', 0, 1, 1.7333, 'D14153123', 2, '*'),
(4707, 'development office will', 'development office will', 0, 1, 1.7667, 'D14153124', 2, '*'),
(4708, 'development office you', 'development office you', 0, 1, 1.7333, 'D1415312', 2, '*'),
(4709, 'development staffs', 'development staffs', 0, 1, 1.6, 'D141532312', 2, '*'),
(4710, 'development staffs are', 'development staffs are', 0, 1, 1.7333, 'D1415323126', 2, '*'),
(4711, 'developmentoffice', 'developmentoffice', 0, 0, 1, 'D1415312', 1, '*'),
(4712, 'developmentoffice to', 'developmentoffice to', 0, 1, 1.6667, 'D14153123', 1, '*'),
(4713, 'developmentoffice to schedule', 'developmentoffice to schedule', 0, 1, 1.9667, 'D14153123234', 1, '*'),
(4714, 'do with', 'do with', 0, 1, 1.2333, 'D000', 2, '*'),
(4715, 'do with your', 'do with your', 0, 1, 1.4, 'D600', 2, '*'),
(4716, 'early', 'early', 0, 0, 0.3333, 'E640', 2, '*'),
(4717, 'early and', 'early and', 0, 1, 1.3, 'E6453', 2, '*'),
(4718, 'early and you', 'early and you', 0, 1, 1.4333, 'E6453', 2, '*'),
(4719, 'early meet', 'early meet', 0, 1, 1.3333, 'E6453', 2, '*'),
(4720, 'early meet the', 'early meet the', 0, 1, 1.4667, 'E6453', 2, '*'),
(4721, 'edu', 'edu', 0, 0, 0.2, 'E300', 2, '*'),
(4722, 'edu gh', 'edu gh', 0, 1, 1.2, 'E320', 2, '*'),
(4723, 'edu gh or', 'edu gh or', 0, 1, 1.3, 'E326', 2, '*'),
(4724, 'effort', 'effort', 0, 0, 0.4, 'E163', 2, '*'),
(4725, 'effort on', 'effort on', 0, 1, 1.3, 'E1635', 2, '*'),
(4726, 'effort on your', 'effort on your', 0, 1, 1.4667, 'E16356', 2, '*'),
(4727, 'employer', 'employer', 0, 0, 0.5333, 'E5146', 2, '*'),
(4728, 'employer who', 'employer who', 0, 1, 1.4, 'E5146', 2, '*'),
(4729, 'employer who may', 'employer who may', 0, 1, 1.5333, 'E51465', 2, '*'),
(4730, 'employers', 'employers', 0, 0, 0.6, 'E51462', 2, '*'),
(4731, 'employers who', 'employers who', 0, 1, 1.4333, 'E51462', 2, '*'),
(4732, 'employers who may', 'employers who may', 0, 1, 1.5667, 'E514625', 2, '*'),
(4733, 'enable', 'enable', 0, 0, 0.4, 'E514', 2, '*'),
(4734, 'enable you', 'enable you', 0, 1, 1.3333, 'E514', 2, '*'),
(4735, 'enable you figure', 'enable you figure', 0, 1, 1.5667, 'E514126', 2, '*'),
(4736, 'etc', 'etc', 0, 0, 0.2, 'E320', 2, '*'),
(4737, 'etc for', 'etc for', 0, 1, 1.2333, 'E3216', 2, '*'),
(4738, 'etc for reference', 'etc for reference', 0, 1, 1.5667, 'E32161652', 2, '*'),
(4739, 'ever', 'ever', 0, 0, 0.2667, 'E160', 2, '*'),
(4740, 'ever ready', 'ever ready', 0, 1, 1.3333, 'E163', 2, '*'),
(4741, 'ever ready to', 'ever ready to', 0, 1, 1.4333, 'E163', 2, '*'),
(4742, 'explore', 'explore', 0, 0, 0.4667, 'E2146', 2, '*'),
(4743, 'explore and', 'explore and', 0, 1, 1.3667, 'E214653', 2, '*'),
(4744, 'explore and develop', 'explore and develop', 0, 1, 1.6333, 'E214653141', 2, '*'),
(4745, 'expose', 'expose', 0, 0, 0.4, 'E212', 2, '*'),
(4746, 'expose you', 'expose you', 0, 1, 1.3333, 'E212', 2, '*'),
(4747, 'expose you to', 'expose you to', 0, 1, 1.4333, 'E2123', 2, '*'),
(4748, 'feel', 'feel', 0, 0, 0.2667, 'F400', 2, '*'),
(4749, 'feel welcome', 'feel welcome', 0, 1, 1.4, 'F425', 2, '*'),
(4750, 'fees', 'fees', 0, 0, 0.2667, 'F200', 2, '*'),
(4751, 'fees have', 'fees have', 0, 1, 1.3, 'F210', 2, '*'),
(4752, 'fees have paid', 'fees have paid', 0, 1, 1.4667, 'F213', 2, '*'),
(4753, 'fees if', 'fees if', 0, 1, 1.2333, 'F210', 2, '*'),
(4754, 'fees if you', 'fees if you', 0, 1, 1.3667, 'F210', 2, '*'),
(4755, 'figure', 'figure', 0, 0, 0.4, 'F260', 2, '*'),
(4756, 'figure out', 'figure out', 0, 1, 1.3333, 'F263', 2, '*'),
(4757, 'figure out what', 'figure out what', 0, 1, 1.5, 'F263', 2, '*'),
(4758, 'fill', 'fill', 0, 0, 0.2667, 'F400', 2, '*'),
(4759, 'fill a', 'fill a', 0, 1, 1.2, 'F400', 2, '*'),
(4760, 'fill a specific', 'fill a specific', 0, 1, 1.5, 'F421212', 2, '*'),
(4761, 'final', 'final', 0, 0, 0.3333, 'F540', 2, '*'),
(4762, 'final year', 'final year', 0, 1, 1.3333, 'F546', 2, '*'),
(4763, 'final year students', 'final year students', 0, 1, 1.6333, 'F54623532', 2, '*'),
(4764, 'find', 'find', 0, 0, 0.2667, 'F530', 2, '*'),
(4765, 'find the', 'find the', 0, 1, 1.2667, 'F530', 2, '*'),
(4766, 'find the assistance', 'find the assistance', 0, 1, 1.6333, 'F532352', 2, '*'),
(4767, 'first', 'first', 0, 0, 0.3333, 'F623', 2, '*'),
(4768, 'first year', 'first year', 0, 1, 1.3333, 'F6236', 2, '*'),
(4769, 'first year the', 'first year the', 0, 1, 1.4667, 'F62363', 2, '*'),
(4770, 'for all', 'for all', 0, 1, 1.2333, 'F640', 2, '*'),
(4771, 'for all students', 'for all students', 0, 1, 1.5333, 'F6423532', 2, '*'),
(4772, 'for get', 'for get', 0, 1, 1.2333, 'F623', 2, '*'),
(4773, 'for get in', 'for get in', 0, 1, 1.3333, 'F6235', 2, '*'),
(4774, 'for it', 'for it', 0, 1, 1.2, 'F630', 2, '*'),
(4775, 'for it your', 'for it your', 0, 1, 1.3667, 'F636', 2, '*'),
(4776, 'for reference', 'for reference', 0, 1, 1.4333, 'F61652', 2, '*'),
(4777, 'for reference to', 'for reference to', 0, 1, 1.5333, 'F616523', 2, '*'),
(4778, 'for the', 'for the', 0, 1, 1.2333, 'F630', 2, '*'),
(4779, 'for the support', 'for the support', 0, 1, 1.5, 'F632163', 2, '*'),
(4780, 'for your caliber', 'for your caliber', 0, 1, 1.5333, 'F62416', 2, '*'),
(4781, 'for your future', 'for your future', 0, 1, 1.5, 'F6136', 2, '*'),
(4782, 'full-time', 'full-time', 0, 0, 0.6, 'F435', 2, '*'),
(4783, 'full-time opportunities', 'full-time opportunities', 0, 1, 1.7667, 'F435163532', 2, '*'),
(4784, 'full-time opportunities for', 'full-time opportunities for', 0, 1, 1.9, 'F43516353216', 2, '*'),
(4785, 'future', 'future', 0, 0, 0.4, 'F360', 2, '*'),
(4786, 'future career', 'future career', 0, 1, 1.4333, 'F3626', 2, '*'),
(4787, 'future career our', 'future career our', 0, 1, 1.5667, 'F3626', 1, '*'),
(4788, 'get', 'get', 1, 0, 0.025, 'G300', 2, '*'),
(4789, 'get access', 'get access', 0, 1, 1.3333, 'G320', 2, '*'),
(4790, 'get access to', 'get access to', 0, 1, 1.4333, 'G323', 2, '*'),
(4791, 'get in', 'get in', 0, 1, 1.2, 'G350', 2, '*'),
(4792, 'get in early', 'get in early', 0, 1, 1.4, 'G3564', 2, '*'),
(4793, 'get started', 'get started', 0, 1, 1.3667, 'G32363', 2, '*'),
(4794, 'get started with', 'get started with', 0, 1, 1.5333, 'G32363', 2, '*'),
(4795, 'gh', 'gh', 0, 0, 0.1333, 'G000', 2, '*'),
(4796, 'gh or', 'gh or', 0, 1, 1.1667, 'G600', 2, '*'),
(4797, 'gh or career', 'gh or career', 0, 1, 1.4, 'G626', 2, '*'),
(4798, 'gmail', 'gmail', 0, 0, 0.3333, 'G540', 2, '*'),
(4799, 'gmail com', 'gmail com', 0, 1, 1.3, 'G5425', 2, '*'),
(4800, 'gmail com let', 'gmail com let', 0, 1, 1.4333, 'G542543', 2, '*'),
(4801, 'growth', 'growth', 0, 0, 0.4, 'G630', 2, '*'),
(4802, 'growth and', 'growth and', 0, 1, 1.3333, 'G6353', 2, '*'),
(4803, 'growth and development', 'growth and development', 0, 1, 1.7333, 'G635314153', 2, '*'),
(4804, 'guidance', 'guidance', 0, 0, 0.5333, 'G352', 2, '*'),
(4805, 'guidance which', 'guidance which', 0, 1, 1.4667, 'G352', 2, '*'),
(4806, 'guidance which you', 'guidance which you', 0, 1, 1.6, 'G352', 2, '*'),
(4807, 'hard', 'hard', 0, 0, 0.2667, 'H630', 2, '*'),
(4808, 'hard work', 'hard work', 0, 1, 1.3, 'H6362', 2, '*'),
(4809, 'hard work and', 'hard work and', 0, 1, 1.4333, 'H636253', 2, '*'),
(4810, 'have', 'have', 0, 0, 0.2667, 'H100', 2, '*'),
(4811, 'have paid', 'have paid', 0, 1, 1.3, 'H130', 2, '*'),
(4812, 'have paid for', 'have paid for', 0, 1, 1.4333, 'H1316', 2, '*'),
(4813, 'have waited', 'have waited', 0, 1, 1.3667, 'H130', 2, '*'),
(4814, 'have waited too', 'have waited too', 0, 1, 1.5, 'H130', 2, '*'),
(4815, 'help', 'help', 0, 0, 0.2667, 'H410', 2, '*'),
(4816, 'help on', 'help on', 0, 1, 1.2333, 'H415', 2, '*'),
(4817, 'help on your', 'help on your', 0, 1, 1.4, 'H4156', 2, '*'),
(4818, 'hire', 'hire', 0, 0, 0.2667, 'H600', 2, '*'),
(4819, 'hire you', 'hire you', 0, 1, 1.2667, 'H600', 2, '*'),
(4820, 'hire you in', 'hire you in', 0, 1, 1.3667, 'H650', 2, '*'),
(4821, 'how', 'how', 1, 0, 0.025, 'H000', 2, '*'),
(4822, 'how to', 'how to', 0, 1, 1.2, 'H300', 2, '*'),
(4823, 'how to get', 'how to get', 0, 1, 1.3333, 'H323', 2, '*'),
(4824, 'hunt', 'hunt', 0, 0, 0.2667, 'H530', 2, '*'),
(4825, 'hunt but', 'hunt but', 0, 1, 1.2667, 'H5313', 2, '*'),
(4826, 'hunt but also', 'hunt but also', 0, 1, 1.4333, 'H531342', 2, '*'),
(4827, 'i', 'i', 0, 0, 0.0667, 'I000', 2, '*'),
(4828, 'i pay', 'i pay', 0, 1, 1.1667, 'I100', 2, '*'),
(4829, 'i pay a', 'i pay a', 0, 1, 1.2333, 'I100', 2, '*'),
(4830, 'if', 'if', 1, 0, 0.0167, 'I100', 2, '*'),
(4831, 'if we', 'if we', 0, 1, 1.1667, 'I100', 2, '*'),
(4832, 'if we are', 'if we are', 0, 1, 1.3, 'I160', 2, '*'),
(4833, 'if you', 'if you', 0, 1, 1.2, 'I100', 2, '*'),
(4834, 'if you are', 'if you are', 0, 1, 1.3333, 'I160', 2, '*'),
(4835, 'if you wait', 'if you wait', 0, 1, 1.3667, 'I130', 2, '*'),
(4836, 'in early', 'in early', 0, 1, 1.2667, 'I564', 2, '*'),
(4837, 'in early meet', 'in early meet', 0, 1, 1.4333, 'I56453', 2, '*'),
(4838, 'in order', 'in order', 0, 1, 1.2667, 'I5636', 2, '*'),
(4839, 'in order to', 'in order to', 0, 1, 1.3667, 'I56363', 2, '*'),
(4840, 'in the', 'in the', 0, 1, 1.2, 'I530', 2, '*'),
(4841, 'in the university', 'in the university', 0, 1, 1.5667, 'I5351623', 2, '*'),
(4842, 'in your', 'in your', 0, 1, 1.2333, 'I560', 2, '*'),
(4843, 'in your first', 'in your first', 0, 1, 1.4333, 'I561623', 2, '*'),
(4844, 'information', 'information', 0, 0, 0.7333, 'I516535', 2, '*'),
(4845, 'information to', 'information to', 0, 1, 1.4667, 'I5165353', 2, '*'),
(4846, 'information to enable', 'information to enable', 0, 1, 1.7, 'I5165353514', 2, '*'),
(4847, 'interact', 'interact', 0, 0, 0.5333, 'I53623', 2, '*'),
(4848, 'interact with', 'interact with', 0, 1, 1.4333, 'I53623', 2, '*'),
(4849, 'interact with you', 'interact with you', 0, 1, 1.5667, 'I53623', 2, '*'),
(4850, 'interests', 'interests', 0, 0, 0.6, 'I536232', 2, '*'),
(4851, 'interests skills', 'interests skills', 0, 1, 1.5333, 'I53623242', 2, '*'),
(4852, 'interests skills values', 'interests skills values', 0, 1, 1.7667, 'I53623242142', 2, '*'),
(4853, 'internship and', 'internship and', 0, 1, 1.4667, 'I53652153', 2, '*'),
(4854, 'internship and full-time', 'internship and full-time', 0, 1, 1.8, 'I536521531435', 2, '*'),
(4855, 'internship and job', 'internship and job', 0, 1, 1.6, 'I5365215321', 2, '*'),
(4856, 'is for', 'is for', 0, 1, 1.2, 'I216', 2, '*'),
(4857, 'is for all', 'is for all', 0, 1, 1.3333, 'I2164', 2, '*'),
(4858, 'is hard', 'is hard', 0, 1, 1.2333, 'I263', 2, '*'),
(4859, 'is hard work', 'is hard work', 0, 1, 1.4, 'I26362', 2, '*'),
(4860, 'it simply', 'it simply', 0, 1, 1.3, 'I32514', 2, '*'),
(4861, 'it simply means', 'it simply means', 0, 1, 1.5, 'I3251452', 2, '*'),
(4862, 'it your', 'it your', 0, 1, 1.2333, 'I360', 2, '*'),
(4863, 'it your fees', 'it your fees', 0, 1, 1.4, 'I3612', 2, '*'),
(4864, 'it\'s', 'it', 0, 0, 0.2667, 'I320', 2, '*'),
(4865, 'it\'s the', 'it the', 0, 1, 1.2667, 'I323', 2, '*'),
(4866, 'it\'s the appropriate', 'it the appropriate', 0, 1, 1.6667, 'I32316163', 2, '*'),
(4867, 'job', 'job', 0, 0, 0.2, 'J100', 2, '*'),
(4868, 'job hunt', 'job hunt', 0, 1, 1.2667, 'J153', 2, '*'),
(4869, 'job hunt but', 'job hunt but', 0, 1, 1.4, 'J15313', 2, '*'),
(4870, 'job job', 'job job', 0, 1, 1.2333, 'J121', 2, '*'),
(4871, 'job job searching', 'job job searching', 0, 1, 1.5667, 'J12126252', 2, '*'),
(4872, 'job search', 'job search', 0, 1, 1.3333, 'J1262', 2, '*'),
(4873, 'job search you', 'job search you', 0, 1, 1.4667, 'J1262', 2, '*'),
(4874, 'job searching', 'job searching', 0, 1, 1.4333, 'J126252', 2, '*'),
(4875, 'job searching is', 'job searching is', 0, 1, 1.5333, 'J126252', 2, '*'),
(4876, 'just', 'just', 0, 0, 0.2667, 'J300', 2, '*'),
(4877, 'just final', 'just final', 0, 1, 1.3333, 'J3154', 2, '*'),
(4878, 'just final year', 'just final year', 0, 1, 1.5, 'J31546', 2, '*'),
(4879, 'know', 'know', 0, 0, 0.2667, 'K500', 2, '*'),
(4880, 'know if', 'know if', 0, 1, 1.2333, 'K510', 2, '*'),
(4881, 'know if we', 'know if we', 0, 1, 1.3333, 'K510', 2, '*'),
(4882, 'last', 'last', 0, 0, 0.2667, 'L230', 2, '*'),
(4883, 'last semester', 'last semester', 0, 1, 1.4333, 'L2325236', 2, '*'),
(4884, 'last semester to', 'last semester to', 0, 1, 1.5333, 'L23252363', 2, '*'),
(4885, 'learn', 'learn', 0, 0, 0.3333, 'L650', 2, '*'),
(4886, 'learn more', 'learn more', 0, 1, 1.3333, 'L656', 2, '*'),
(4887, 'learn more about', 'learn more about', 0, 1, 1.5333, 'L65613', 2, '*'),
(4888, 'let', 'let', 0, 0, 0.2, 'L300', 2, '*'),
(4889, 'let us', 'let us', 0, 1, 1.2, 'L320', 2, '*'),
(4890, 'let us know', 'let us know', 0, 1, 1.3667, 'L325', 2, '*'),
(4891, 'life', 'life', 0, 0, 0.2667, 'L100', 2, '*'),
(4892, 'life not', 'life not', 0, 1, 1.2667, 'L153', 2, '*'),
(4893, 'life not only', 'life not only', 0, 1, 1.4333, 'L15354', 2, '*'),
(4894, 'long', 'long', 0, 0, 0.2667, 'L520', 2, '*'),
(4895, 'long and', 'long and', 0, 1, 1.2667, 'L5253', 2, '*'),
(4896, 'long and may', 'long and may', 0, 1, 1.4, 'L52535', 2, '*'),
(4897, 'looking', 'looking', 0, 0, 0.4667, 'L252', 2, '*'),
(4898, 'looking for', 'looking for', 0, 1, 1.3667, 'L25216', 2, '*'),
(4899, 'looking for get', 'looking for get', 0, 1, 1.5, 'L2521623', 2, '*'),
(4900, 'looking for your', 'looking for your', 0, 1, 1.5333, 'L25216', 2, '*'),
(4901, 'mail', 'mail', 0, 0, 0.2667, 'M400', 2, '*'),
(4902, 'mail to', 'mail to', 0, 1, 1.2333, 'M430', 2, '*'),
(4903, 'mail to career', 'mail to career', 0, 1, 1.4667, 'M4326', 2, '*'),
(4904, 'making', 'making', 0, 0, 0.4, 'M252', 2, '*'),
(4905, 'making you', 'making you', 0, 1, 1.3333, 'M252', 2, '*'),
(4906, 'making you feel', 'making you feel', 0, 1, 1.5, 'M25214', 2, '*'),
(4907, 'mates', 'mates', 0, 0, 0.3333, 'M320', 2, '*'),
(4908, 'mates you', 'mates you', 0, 1, 1.3, 'M320', 1, '*'),
(4909, 'mates you are', 'mates you are', 0, 1, 1.4333, 'M326', 1, '*'),
(4910, 'may', 'may', 0, 0, 0.2, 'M000', 2, '*'),
(4911, 'may be', 'may be', 0, 1, 1.2, 'M100', 2, '*'),
(4912, 'may be looking', 'may be looking', 0, 1, 1.4667, 'M14252', 2, '*'),
(4913, 'may not', 'may not', 0, 1, 1.2333, 'M300', 2, '*'),
(4914, 'may not find', 'may not find', 0, 1, 1.4, 'M3153', 2, '*'),
(4915, 'may someday', 'may someday', 0, 1, 1.3667, 'M253', 2, '*'),
(4916, 'may someday hire', 'may someday hire', 0, 1, 1.5333, 'M2536', 2, '*'),
(4917, 'means', 'means', 0, 0, 0.3333, 'M200', 2, '*'),
(4918, 'means you', 'means you', 0, 1, 1.3, 'M200', 2, '*'),
(4919, 'means you are', 'means you are', 0, 1, 1.4333, 'M260', 2, '*'),
(4920, 'meet', 'meet', 0, 0, 0.2667, 'M300', 2, '*'),
(4921, 'meet the', 'meet the', 0, 1, 1.2667, 'M300', 2, '*'),
(4922, 'meet the staff', 'meet the staff', 0, 1, 1.4667, 'M3231', 2, '*'),
(4923, 'miles', 'miles', 0, 0, 0.3333, 'M420', 2, '*'),
(4924, 'miles ahead', 'miles ahead', 0, 1, 1.3667, 'M423', 2, '*'),
(4925, 'miles ahead of', 'miles ahead of', 0, 1, 1.4667, 'M4231', 2, '*'),
(4926, 'more', 'more', 1, 0, 0.0333, 'M600', 2, '*'),
(4927, 'more about', 'more about', 0, 1, 1.3333, 'M613', 2, '*'),
(4928, 'more about yourself', 'more about yourself', 0, 1, 1.6333, 'M6136241', 2, '*'),
(4929, 'much', 'much', 0, 0, 0.2667, 'M200', 2, '*'),
(4930, 'much effort', 'much effort', 0, 1, 1.3667, 'M2163', 2, '*'),
(4931, 'much effort on', 'much effort on', 0, 1, 1.4667, 'M21635', 2, '*'),
(4932, 'must', 'must', 1, 0, 0.0333, 'M230', 2, '*'),
(4933, 'must contact', 'must contact', 0, 1, 1.4, 'M2325323', 1, '*'),
(4934, 'must contact career', 'must contact career', 0, 1, 1.6333, 'M232532326', 1, '*'),
(4935, 'need', 'need', 0, 0, 0.2667, 'N300', 2, '*'),
(4936, 'need help', 'need help', 0, 1, 1.3, 'N341', 2, '*'),
(4937, 'need help on', 'need help on', 0, 1, 1.4, 'N3415', 2, '*'),
(4938, 'needed', 'needed', 0, 0, 0.4, 'N300', 2, '*'),
(4939, 'needed guidance', 'needed guidance', 0, 1, 1.5, 'N32352', 2, '*'),
(4940, 'needed guidance which', 'needed guidance which', 0, 1, 1.7, 'N32352', 2, '*'),
(4941, 'next', 'next', 0, 0, 0.2667, 'N230', 2, '*'),
(4942, 'next to', 'next to', 0, 1, 1.2333, 'N230', 2, '*'),
(4943, 'next to the', 'next to the', 0, 1, 1.3667, 'N230', 2, '*'),
(4944, 'not find', 'not find', 0, 1, 1.2667, 'N3153', 2, '*'),
(4945, 'not find the', 'not find the', 0, 1, 1.4, 'N3153', 2, '*'),
(4946, 'not just', 'not just', 0, 1, 1.2667, 'N323', 2, '*'),
(4947, 'not just final', 'not just final', 0, 1, 1.4667, 'N323154', 2, '*'),
(4948, 'not making', 'not making', 0, 1, 1.3333, 'N35252', 2, '*'),
(4949, 'not making you', 'not making you', 0, 1, 1.4667, 'N35252', 2, '*'),
(4950, 'not offer', 'not offer', 0, 1, 1.3, 'N316', 2, '*'),
(4951, 'not offer you', 'not offer you', 0, 1, 1.4333, 'N316', 2, '*'),
(4952, 'not only', 'not only', 0, 1, 1.2667, 'N354', 2, '*'),
(4953, 'not only when', 'not only when', 0, 1, 1.4333, 'N3545', 2, '*'),
(4954, 'not taking', 'not taking', 0, 1, 1.3333, 'N3252', 2, '*'),
(4955, 'not taking advantage', 'not taking advantage', 0, 1, 1.6667, 'N325231532', 2, '*'),
(4956, 'not utilising', 'not utilising', 0, 1, 1.4333, 'N34252', 2, '*'),
(4957, 'not utilising some', 'not utilising some', 0, 1, 1.6, 'N342525', 2, '*'),
(4958, 'of', 'of', 1, 0, 0.0167, 'O100', 2, '*'),
(4959, 'of it', 'of it', 0, 1, 1.1667, 'O130', 2, '*'),
(4960, 'of it simply', 'of it simply', 0, 1, 1.4, 'O132514', 2, '*'),
(4961, 'of opportunities', 'of opportunities', 0, 1, 1.5333, 'O163532', 2, '*'),
(4962, 'of opportunities resources', 'of opportunities resources', 0, 1, 1.8667, 'O1635326262', 2, '*'),
(4963, 'of your', 'of your', 0, 1, 1.2333, 'O160', 2, '*'),
(4964, 'of your fees', 'of your fees', 0, 1, 1.4, 'O1612', 2, '*'),
(4965, 'of your mates', 'of your mates', 0, 1, 1.4333, 'O16532', 2, '*'),
(4966, 'offer you', 'offer you', 0, 1, 1.3, 'O160', 2, '*'),
(4967, 'offer you a', 'offer you a', 0, 1, 1.3667, 'O160', 2, '*'),
(4968, 'offered', 'offered', 0, 0, 0.4667, 'O163', 2, '*'),
(4969, 'offered by', 'offered by', 0, 1, 1.3333, 'O1631', 2, '*'),
(4970, 'offered by career', 'offered by career', 0, 1, 1.5667, 'O163126', 2, '*'),
(4971, 'office', 'office', 0, 0, 0.4, 'O120', 2, '*'),
(4972, 'office get', 'office get', 0, 1, 1.3333, 'O123', 1, '*'),
(4973, 'office get access', 'office get access', 0, 1, 1.5667, 'O1232', 1, '*'),
(4974, 'office gmail', 'office gmail', 0, 1, 1.4, 'O1254', 2, '*'),
(4975, 'office gmail com', 'office gmail com', 0, 1, 1.5333, 'O125425', 2, '*'),
(4976, 'office is', 'office is', 0, 1, 1.3, 'O120', 2, '*'),
(4977, 'office is for', 'office is for', 0, 1, 1.4333, 'O1216', 2, '*'),
(4978, 'office on', 'office on', 0, 1, 1.3, 'O125', 2, '*'),
(4979, 'office on campus', 'office on campus', 0, 1, 1.5333, 'O1252512', 2, '*'),
(4980, 'office or', 'office or', 0, 1, 1.3, 'O126', 2, '*'),
(4981, 'office or send', 'office or send', 0, 1, 1.4667, 'O126253', 2, '*'),
(4982, 'office provides', 'office provides', 0, 1, 1.5, 'O1216132', 2, '*'),
(4983, 'office provides therefore', 'office provides therefore', 0, 1, 1.8333, 'O12161323616', 2, '*'),
(4984, 'office starting', 'office starting', 0, 1, 1.5, 'O1236352', 2, '*'),
(4985, 'office starting in', 'office starting in', 0, 1, 1.6, 'O12363525', 2, '*'),
(4986, 'office ttu', 'office ttu', 0, 1, 1.3333, 'O123', 2, '*'),
(4987, 'office ttu edu', 'office ttu edu', 0, 1, 1.4667, 'O123', 2, '*'),
(4988, 'office will', 'office will', 0, 1, 1.3667, 'O124', 2, '*'),
(4989, 'office will not', 'office will not', 0, 1, 1.5, 'O12453', 2, '*'),
(4990, 'office you', 'office you', 0, 1, 1.3333, 'O120', 2, '*'),
(4991, 'office you have', 'office you have', 0, 1, 1.5, 'O121', 2, '*'),
(4992, 'on', 'on', 1, 0, 0.0167, 'O500', 2, '*'),
(4993, 'on campus', 'on campus', 0, 1, 1.3, 'O52512', 2, '*'),
(4994, 'on campus that', 'on campus that', 0, 1, 1.4667, 'O525123', 2, '*'),
(4995, 'on daily', 'on daily', 0, 1, 1.2667, 'O534', 2, '*'),
(4996, 'on daily basis', 'on daily basis', 0, 1, 1.4667, 'O53412', 2, '*'),
(4997, 'on your', 'on your', 0, 1, 1.2333, 'O560', 2, '*'),
(4998, 'on your part', 'on your part', 0, 1, 1.4, 'O56163', 2, '*'),
(4999, 'on your resume', 'on your resume', 0, 1, 1.4667, 'O5625', 2, '*'),
(5000, 'only', 'only', 1, 0, 0.0333, 'O540', 2, '*'),
(5001, 'only when', 'only when', 0, 1, 1.3, 'O545', 2, '*'),
(5002, 'only when you\'re', 'only when you', 0, 1, 1.5333, 'O5456', 2, '*'),
(5003, 'opportunities', 'opportunities', 0, 0, 0.8667, 'O163532', 2, '*'),
(5004, 'opportunities for', 'opportunities for', 0, 1, 1.5667, 'O16353216', 2, '*'),
(5005, 'opportunities for your', 'opportunities for your', 0, 1, 1.7333, 'O16353216', 2, '*'),
(5006, 'opportunities resources', 'opportunities resources', 0, 1, 1.7667, 'O1635326262', 2, '*'),
(5007, 'opportunities resources and', 'opportunities resources and', 0, 1, 1.9, 'O163532626253', 2, '*'),
(5008, 'or', 'or', 1, 0, 0.0167, 'O600', 2, '*'),
(5009, 'or career', 'or career', 0, 1, 1.3, 'O626', 2, '*'),
(5010, 'or career development', 'or career development', 0, 1, 1.7, 'O626314153', 2, '*'),
(5011, 'or send', 'or send', 0, 1, 1.2333, 'O6253', 2, '*'),
(5012, 'or send a', 'or send a', 0, 1, 1.3, 'O6253', 2, '*'),
(5013, 'or you', 'or you', 0, 1, 1.2, 'O600', 2, '*'),
(5014, 'or you aren\'t', 'or you aren', 0, 1, 1.4333, 'O653', 2, '*'),
(5015, 'order', 'order', 0, 0, 0.3333, 'O636', 2, '*'),
(5016, 'order to', 'order to', 0, 1, 1.2667, 'O6363', 2, '*'),
(5017, 'order to carve', 'order to carve', 0, 1, 1.4667, 'O6363261', 2, '*'),
(5018, 'order to develop', 'order to develop', 0, 1, 1.5333, 'O6363141', 2, '*'),
(5019, 'our', 'our', 1, 0, 0.025, 'O600', 2, '*'),
(5020, 'our career', 'our career', 0, 1, 1.3333, 'O626', 2, '*'),
(5021, 'our career development', 'our career development', 0, 1, 1.7333, 'O626314153', 2, '*'),
(5022, 'out', 'out', 1, 0, 0.025, 'O300', 2, '*'),
(5023, 'out what', 'out what', 0, 1, 1.2667, 'O300', 2, '*'),
(5024, 'out what you', 'out what you', 0, 1, 1.4, 'O300', 2, '*'),
(5025, 'paid', 'paid', 0, 0, 0.2667, 'P300', 2, '*'),
(5026, 'paid for', 'paid for', 0, 1, 1.2667, 'P316', 2, '*'),
(5027, 'paid for the', 'paid for the', 0, 1, 1.4, 'P3163', 2, '*'),
(5028, 'part', 'part', 0, 0, 0.2667, 'P630', 2, '*'),
(5029, 'part of', 'part of', 0, 1, 1.2333, 'P631', 2, '*'),
(5030, 'part of your', 'part of your', 0, 1, 1.4, 'P6316', 2, '*'),
(5031, 'part we', 'part we', 0, 1, 1.2333, 'P630', 2, '*'),
(5032, 'part we will', 'part we will', 0, 1, 1.4, 'P634', 2, '*'),
(5033, 'pay a', 'pay a', 0, 1, 1.1667, 'P000', 2, '*'),
(5034, 'pay a visit', 'pay a visit', 0, 1, 1.3667, 'P230', 2, '*'),
(5035, 'pay visit to', 'pay visit to', 0, 1, 1.4, 'P230', 1, '*'),
(5036, 'paying', 'paying', 0, 0, 0.4, 'P520', 2, '*'),
(5037, 'paying for', 'paying for', 0, 1, 1.3333, 'P5216', 2, '*'),
(5038, 'paying for it', 'paying for it', 0, 1, 1.4333, 'P52163', 2, '*'),
(5039, 'personality', 'personality', 0, 0, 0.7333, 'P62543', 2, '*'),
(5040, 'personality we', 'personality we', 0, 1, 1.4667, 'P62543', 1, '*'),
(5041, 'personality we work', 'personality we work', 0, 1, 1.6333, 'P6254362', 1, '*'),
(5042, 'position', 'position', 0, 0, 0.5333, 'P235', 2, '*'),
(5043, 'position career', 'position career', 0, 1, 1.5, 'P23526', 1, '*'),
(5044, 'position career development', 'position career development', 0, 1, 1.9, 'P23526314153', 1, '*'),
(5045, 'potential', 'potential', 0, 0, 0.6, 'P3534', 2, '*'),
(5046, 'potential growth', 'potential growth', 0, 1, 1.5333, 'P3534263', 2, '*'),
(5047, 'potential growth and', 'potential growth and', 0, 1, 1.6667, 'P353426353', 2, '*'),
(5048, 'procurement', 'procurement', 0, 0, 0.7333, 'P62653', 2, '*'),
(5049, 'procurement office', 'procurement office', 0, 1, 1.6, 'P6265312', 2, '*'),
(5050, 'procurement office or', 'procurement office or', 0, 1, 1.7, 'P62653126', 2, '*'),
(5051, 'professionals', 'professionals', 0, 0, 0.8667, 'P612542', 2, '*'),
(5052, 'professionals who', 'professionals who', 0, 1, 1.5667, 'P612542', 2, '*'),
(5053, 'professionals who are', 'professionals who are', 0, 1, 1.7, 'P6125426', 2, '*'),
(5054, 'provides', 'provides', 0, 0, 0.5333, 'P6132', 2, '*'),
(5055, 'provides therefore', 'provides therefore', 0, 1, 1.6, 'P61323616', 2, '*'),
(5056, 'provides therefore not', 'provides therefore not', 0, 1, 1.7333, 'P6132361653', 2, '*'),
(5057, 'provides useful', 'provides useful', 0, 1, 1.5, 'P613214', 2, '*'),
(5058, 'provides useful information', 'provides useful information', 0, 1, 1.9, 'P613214516535', 2, '*'),
(5059, 'put', 'put', 0, 0, 0.2, 'P300', 2, '*'),
(5060, 'put miles', 'put miles', 0, 1, 1.3, 'P3542', 2, '*'),
(5061, 'put miles ahead', 'put miles ahead', 0, 1, 1.5, 'P35423', 2, '*'),
(5062, 'ready', 'ready', 0, 0, 0.3333, 'R300', 2, '*'),
(5063, 'ready to', 'ready to', 0, 1, 1.2667, 'R300', 2, '*'),
(5064, 'ready to interact', 'ready to interact', 0, 1, 1.5667, 'R353623', 2, '*'),
(5065, 'reference', 'reference', 0, 0, 0.6, 'R1652', 2, '*'),
(5066, 'reference to', 'reference to', 0, 1, 1.4, 'R16523', 2, '*'),
(5067, 'reference to an', 'reference to an', 0, 1, 1.5, 'R165235', 2, '*'),
(5068, 'requires', 'requires', 0, 0, 0.5333, 'R262', 2, '*'),
(5069, 'requires much', 'requires much', 0, 1, 1.4333, 'R26252', 2, '*'),
(5070, 'requires much effort', 'requires much effort', 0, 1, 1.6667, 'R26252163', 2, '*'),
(5071, 'resources', 'resources', 0, 0, 0.6, 'R262', 2, '*'),
(5072, 'resources and', 'resources and', 0, 1, 1.4333, 'R26253', 2, '*'),
(5073, 'resources and needed', 'resources and needed', 0, 1, 1.6667, 'R2625353', 2, '*'),
(5074, 'resume', 'resume', 0, 0, 0.4, 'R250', 2, '*'),
(5075, 'resume or', 'resume or', 0, 1, 1.3, 'R256', 2, '*'),
(5076, 'resume or you', 'resume or you', 0, 1, 1.4333, 'R256', 2, '*'),
(5077, 'room', 'room', 0, 0, 0.2667, 'R500', 2, '*'),
(5078, 'room 2', 'room 2', 0, 1, 1.2, 'R500', 2, '*'),
(5079, 'room 2 annan', 'room 2 annan', 0, 1, 1.4, 'R500', 2, '*'),
(5080, 'schedule', 'schedule', 0, 0, 0.5333, 'S340', 2, '*'),
(5081, 'schedule an', 'schedule an', 0, 1, 1.3667, 'S345', 2, '*'),
(5082, 'schedule an appointment', 'schedule an appointment', 0, 1, 1.7667, 'S34515353', 2, '*'),
(5083, 'search', 'search', 0, 0, 0.4, 'S620', 2, '*'),
(5084, 'search you', 'search you', 0, 1, 1.3333, 'S620', 2, '*'),
(5085, 'search you must', 'search you must', 0, 1, 1.5, 'S62523', 2, '*'),
(5086, 'searching', 'searching', 0, 0, 0.6, 'S6252', 2, '*'),
(5087, 'searching is', 'searching is', 0, 1, 1.4, 'S6252', 2, '*'),
(5088, 'searching is hard', 'searching is hard', 0, 1, 1.5667, 'S625263', 2, '*');
INSERT INTO `crdev_finder_terms` (`term_id`, `term`, `stem`, `common`, `phrase`, `weight`, `soundex`, `links`, `language`) VALUES
(5089, 'semester', 'semester', 0, 0, 0.5333, 'S5236', 2, '*'),
(5090, 'semester to', 'semester to', 0, 1, 1.3667, 'S52363', 2, '*'),
(5091, 'semester to start', 'semester to start', 0, 1, 1.5667, 'S523632363', 2, '*'),
(5092, 'send', 'send', 0, 0, 0.2667, 'S530', 2, '*'),
(5093, 'send a', 'send a', 0, 1, 1.2, 'S530', 2, '*'),
(5094, 'send a mail', 'send a mail', 0, 1, 1.3667, 'S5354', 2, '*'),
(5095, 'should', 'should', 1, 0, 0.05, 'S430', 2, '*'),
(5096, 'should i', 'should i', 0, 1, 1.2667, 'S430', 2, '*'),
(5097, 'should i pay', 'should i pay', 0, 1, 1.4, 'S431', 2, '*'),
(5098, 'simply', 'simply', 0, 0, 0.4, 'S514', 2, '*'),
(5099, 'simply means', 'simply means', 0, 1, 1.4, 'S51452', 2, '*'),
(5100, 'simply means you', 'simply means you', 0, 1, 1.5333, 'S51452', 2, '*'),
(5101, 'skills', 'skills', 0, 0, 0.4, 'S420', 2, '*'),
(5102, 'skills strengths', 'skills strengths', 0, 1, 1.5333, 'S42365232', 2, '*'),
(5103, 'skills strengths weaknesses', 'skills strengths weaknesses', 0, 1, 1.9, 'S4236523252', 2, '*'),
(5104, 'skills values', 'skills values', 0, 1, 1.4333, 'S42142', 2, '*'),
(5105, 'skills values personality', 'skills values personality', 0, 1, 1.8333, 'S42142162543', 2, '*'),
(5106, 'so', 'so', 1, 0, 0.0167, 'S000', 2, '*'),
(5107, 'so as', 'so as', 0, 1, 1.1667, 'S000', 2, '*'),
(5108, 'so as to', 'so as to', 0, 1, 1.2667, 'S300', 2, '*'),
(5109, 'some part', 'some part', 0, 1, 1.3, 'S5163', 2, '*'),
(5110, 'some part of', 'some part of', 0, 1, 1.4, 'S51631', 2, '*'),
(5111, 'someday', 'someday', 0, 0, 0.4667, 'S530', 2, '*'),
(5112, 'someday hire', 'someday hire', 0, 1, 1.4, 'S536', 2, '*'),
(5113, 'someday hire you', 'someday hire you', 0, 1, 1.5333, 'S536', 2, '*'),
(5114, 'specific', 'specific', 0, 0, 0.5333, 'S1212', 2, '*'),
(5115, 'specific position', 'specific position', 0, 1, 1.5667, 'S12121235', 2, '*'),
(5116, 'specific position career', 'specific position career', 0, 1, 1.8, 'S1212123526', 1, '*'),
(5117, 'specifically', 'specifically', 0, 0, 0.8, 'S12124', 2, '*'),
(5118, 'specifically trained', 'specifically trained', 0, 1, 1.6667, 'S121243653', 2, '*'),
(5119, 'specifically trained to', 'specifically trained to', 0, 1, 1.7667, 'S121243653', 2, '*'),
(5120, 'staff', 'staff', 0, 0, 0.3333, 'S310', 2, '*'),
(5121, 'staff and', 'staff and', 0, 1, 1.3, 'S3153', 2, '*'),
(5122, 'staff and start', 'staff and start', 0, 1, 1.5, 'S31532363', 2, '*'),
(5123, 'staffs', 'staffs', 0, 0, 0.4, 'S312', 2, '*'),
(5124, 'staffs are', 'staffs are', 0, 1, 1.3333, 'S3126', 2, '*'),
(5125, 'staffs are ever', 'staffs are ever', 0, 1, 1.5, 'S312616', 2, '*'),
(5126, 'start', 'start', 0, 0, 0.3333, 'S363', 2, '*'),
(5127, 'start developing', 'start developing', 0, 1, 1.5333, 'S36314152', 2, '*'),
(5128, 'start developing your', 'start developing your', 0, 1, 1.7, 'S363141526', 2, '*'),
(5129, 'start visiting', 'start visiting', 0, 1, 1.4667, 'S36312352', 2, '*'),
(5130, 'start visiting the', 'start visiting the', 0, 1, 1.6, 'S363123523', 2, '*'),
(5131, 'start your', 'start your', 0, 1, 1.3333, 'S3636', 2, '*'),
(5132, 'start your job', 'start your job', 0, 1, 1.4667, 'S363621', 2, '*'),
(5133, 'started', 'started', 0, 0, 0.4667, 'S363', 2, '*'),
(5134, 'started with', 'started with', 0, 1, 1.4, 'S363', 2, '*'),
(5135, 'started with the', 'started with the', 0, 1, 1.5333, 'S363', 2, '*'),
(5136, 'starting', 'starting', 0, 0, 0.5333, 'S36352', 2, '*'),
(5137, 'starting in', 'starting in', 0, 1, 1.3667, 'S363525', 2, '*'),
(5138, 'starting in your', 'starting in your', 0, 1, 1.5333, 'S3635256', 2, '*'),
(5139, 'strengths', 'strengths', 0, 0, 0.6, 'S365232', 2, '*'),
(5140, 'strengths weaknesses', 'strengths weaknesses', 0, 1, 1.6667, 'S36523252', 2, '*'),
(5141, 'strengths weaknesses potential', 'strengths weaknesses potential', 0, 1, 2, 'S3652325213534', 2, '*'),
(5142, 'struggling', 'struggling', 0, 0, 0.6667, 'S362452', 2, '*'),
(5143, 'struggling with', 'struggling with', 0, 1, 1.5, 'S3624523', 2, '*'),
(5144, 'struggling with a', 'struggling with a', 0, 1, 1.5667, 'S3624523', 2, '*'),
(5145, 'students', 'students', 0, 0, 0.5333, 'S3532', 2, '*'),
(5146, 'students if', 'students if', 0, 1, 1.3667, 'S35321', 2, '*'),
(5147, 'students if you', 'students if you', 0, 1, 1.5, 'S35321', 2, '*'),
(5148, 'students in', 'students in', 0, 1, 1.3667, 'S35325', 2, '*'),
(5149, 'students in the', 'students in the', 0, 1, 1.5, 'S353253', 2, '*'),
(5150, 'support', 'support', 0, 0, 0.4667, 'S163', 2, '*'),
(5151, 'support the', 'support the', 0, 1, 1.3667, 'S163', 2, '*'),
(5152, 'support the career', 'support the career', 0, 1, 1.6, 'S16326', 2, '*'),
(5153, 'sure', 'sure', 0, 0, 0.2667, 'S600', 2, '*'),
(5154, 'sure how', 'sure how', 0, 1, 1.2667, 'S600', 2, '*'),
(5155, 'sure how to', 'sure how to', 0, 1, 1.3667, 'S630', 2, '*'),
(5156, 'taking', 'taking', 0, 0, 0.4, 'T252', 2, '*'),
(5157, 'taking advantage', 'taking advantage', 0, 1, 1.5333, 'T25231532', 2, '*'),
(5158, 'taking advantage of', 'taking advantage of', 0, 1, 1.6333, 'T252315321', 2, '*'),
(5159, 'that provides', 'that provides', 0, 1, 1.4333, 'T16132', 2, '*'),
(5160, 'that provides useful', 'that provides useful', 0, 1, 1.6667, 'T1613214', 2, '*'),
(5161, 'the', 'the', 1, 0, 0.025, 'T000', 2, '*'),
(5162, 'the appropriate', 'the appropriate', 0, 1, 1.5, 'T16163', 2, '*'),
(5163, 'the appropriate office', 'the appropriate office', 0, 1, 1.7333, 'T1616312', 2, '*'),
(5164, 'the assistance', 'the assistance', 0, 1, 1.4667, 'T2352', 2, '*'),
(5165, 'the assistance you', 'the assistance you', 0, 1, 1.6, 'T2352', 2, '*'),
(5166, 'the career', 'the career', 0, 1, 1.3333, 'T260', 2, '*'),
(5167, 'the career development', 'the career development', 0, 1, 1.7333, 'T26314153', 2, '*'),
(5168, 'the internship', 'the internship', 0, 1, 1.4667, 'T536521', 2, '*'),
(5169, 'the internship and', 'the internship and', 0, 1, 1.6, 'T53652153', 2, '*'),
(5170, 'the procurement', 'the procurement', 0, 1, 1.5, 'T162653', 2, '*'),
(5171, 'the procurement office', 'the procurement office', 0, 1, 1.7333, 'T16265312', 2, '*'),
(5172, 'the staff', 'the staff', 0, 1, 1.3, 'T231', 2, '*'),
(5173, 'the staff and', 'the staff and', 0, 1, 1.4333, 'T23153', 2, '*'),
(5174, 'the support', 'the support', 0, 1, 1.3667, 'T2163', 2, '*'),
(5175, 'the support the', 'the support the', 0, 1, 1.5, 'T2163', 2, '*'),
(5176, 'the university', 'the university', 0, 1, 1.4667, 'T51623', 2, '*'),
(5177, 'the university not', 'the university not', 0, 1, 1.6, 'T5162353', 2, '*'),
(5178, 'therefore', 'therefore', 0, 0, 0.6, 'T616', 2, '*'),
(5179, 'therefore not', 'therefore not', 0, 1, 1.4333, 'T61653', 2, '*'),
(5180, 'therefore not taking', 'therefore not taking', 0, 1, 1.6667, 'T61653252', 2, '*'),
(5181, 'thriving', 'thriving', 0, 0, 0.5333, 'T6152', 2, '*'),
(5182, 'thriving career', 'thriving career', 0, 1, 1.5, 'T61526', 2, '*'),
(5183, 'thriving career attend', 'thriving career attend', 0, 1, 1.7333, 'T61526353', 1, '*'),
(5184, 'to', 'to', 1, 0, 0.0167, 'T000', 2, '*'),
(5185, 'to a', 'to a', 0, 1, 1.1333, 'T000', 2, '*'),
(5186, 'to a world', 'to a world', 0, 1, 1.3333, 'T643', 2, '*'),
(5187, 'to an', 'to an', 0, 1, 1.1667, 'T500', 2, '*'),
(5188, 'to an employer', 'to an employer', 0, 1, 1.4667, 'T5146', 2, '*'),
(5189, 'to assist', 'to assist', 0, 1, 1.3, 'T230', 2, '*'),
(5190, 'to assist you', 'to assist you', 0, 1, 1.4333, 'T230', 2, '*'),
(5191, 'to be', 'to be', 0, 1, 1.1667, 'T100', 2, '*'),
(5192, 'to be conversant', 'to be conversant', 0, 1, 1.5333, 'T12516253', 2, '*'),
(5193, 'to career', 'to career', 0, 1, 1.3, 'T260', 2, '*'),
(5194, 'to career development', 'to career development', 0, 1, 1.7, 'T26314153', 2, '*'),
(5195, 'to carve', 'to carve', 0, 1, 1.2667, 'T261', 2, '*'),
(5196, 'to carve a', 'to carve a', 0, 1, 1.3333, 'T261', 2, '*'),
(5197, 'to develop', 'to develop', 0, 1, 1.3333, 'T141', 2, '*'),
(5198, 'to develop internship', 'to develop internship', 0, 1, 1.7, 'T141536521', 2, '*'),
(5199, 'to do', 'to do', 0, 1, 1.1667, 'T000', 2, '*'),
(5200, 'to do with', 'to do with', 0, 1, 1.3333, 'T000', 2, '*'),
(5201, 'to enable', 'to enable', 0, 1, 1.3, 'T514', 2, '*'),
(5202, 'to enable you', 'to enable you', 0, 1, 1.4333, 'T514', 2, '*'),
(5203, 'to explore', 'to explore', 0, 1, 1.3333, 'T2146', 2, '*'),
(5204, 'to explore and', 'to explore and', 0, 1, 1.4667, 'T214653', 2, '*'),
(5205, 'to fill', 'to fill', 0, 1, 1.2333, 'T140', 2, '*'),
(5206, 'to fill a', 'to fill a', 0, 1, 1.3, 'T140', 2, '*'),
(5207, 'to get', 'to get', 0, 1, 1.2, 'T230', 2, '*'),
(5208, 'to get started', 'to get started', 0, 1, 1.4667, 'T232363', 2, '*'),
(5209, 'to interact', 'to interact', 0, 1, 1.3667, 'T53623', 2, '*'),
(5210, 'to interact with', 'to interact with', 0, 1, 1.5333, 'T53623', 2, '*'),
(5211, 'to learn', 'to learn', 0, 1, 1.2667, 'T465', 2, '*'),
(5212, 'to learn more', 'to learn more', 0, 1, 1.4333, 'T4656', 2, '*'),
(5213, 'to professionals', 'to professionals', 0, 1, 1.5333, 'T1612542', 2, '*'),
(5214, 'to professionals who', 'to professionals who', 0, 1, 1.6667, 'T1612542', 2, '*'),
(5215, 'to schedule', 'to schedule', 0, 1, 1.3667, 'T234', 2, '*'),
(5216, 'to schedule an', 'to schedule an', 0, 1, 1.4667, 'T2345', 2, '*'),
(5217, 'to start', 'to start', 0, 1, 1.2667, 'T2363', 2, '*'),
(5218, 'to start visiting', 'to start visiting', 0, 1, 1.5667, 'T236312352', 2, '*'),
(5219, 'to start your', 'to start your', 0, 1, 1.4333, 'T23636', 2, '*'),
(5220, 'to the', 'to the', 0, 1, 1.2, 'T000', 2, '*'),
(5221, 'to the career', 'to the career', 0, 1, 1.4333, 'T260', 2, '*'),
(5222, 'to the procurement', 'to the procurement', 0, 1, 1.6, 'T162653', 2, '*'),
(5223, 'too', 'too', 1, 0, 0.025, 'T000', 2, '*'),
(5224, 'too long', 'too long', 0, 1, 1.2667, 'T452', 2, '*'),
(5225, 'too long and', 'too long and', 0, 1, 1.4, 'T45253', 2, '*'),
(5226, 'trained', 'trained', 0, 0, 0.4667, 'T653', 2, '*'),
(5227, 'trained to', 'trained to', 0, 1, 1.3333, 'T653', 2, '*'),
(5228, 'trained to assist', 'trained to assist', 0, 1, 1.5667, 'T65323', 2, '*'),
(5229, 'ttu', 'ttu', 0, 0, 0.2, 'T000', 2, '*'),
(5230, 'ttu edu', 'ttu edu', 0, 1, 1.2333, 'T000', 2, '*'),
(5231, 'ttu edu gh', 'ttu edu gh', 0, 1, 1.3333, 'T200', 2, '*'),
(5232, 'university', 'university', 0, 0, 0.6667, 'U51623', 2, '*'),
(5233, 'university not', 'university not', 0, 1, 1.4667, 'U5162353', 2, '*'),
(5234, 'university not just', 'university not just', 0, 1, 1.6333, 'U516235323', 2, '*'),
(5235, 'until', 'until', 1, 0, 0.0417, 'U534', 2, '*'),
(5236, 'until your', 'until your', 0, 1, 1.3333, 'U5346', 2, '*'),
(5237, 'until your last', 'until your last', 0, 1, 1.5, 'U5346423', 2, '*'),
(5238, 'us', 'us', 0, 0, 0.1333, 'U200', 2, '*'),
(5239, 'us know', 'us know', 0, 1, 1.2333, 'U250', 2, '*'),
(5240, 'us know if', 'us know if', 0, 1, 1.3333, 'U251', 2, '*'),
(5241, 'useful', 'useful', 0, 0, 0.4, 'U214', 2, '*'),
(5242, 'useful information', 'useful information', 0, 1, 1.6, 'U214516535', 2, '*'),
(5243, 'useful information to', 'useful information to', 0, 1, 1.7, 'U2145165353', 2, '*'),
(5244, 'utilise', 'utilise', 0, 0, 0.4667, 'U342', 2, '*'),
(5245, 'utilise to', 'utilise to', 0, 1, 1.3333, 'U3423', 2, '*'),
(5246, 'utilise to explore', 'utilise to explore', 0, 1, 1.6, 'U34232146', 2, '*'),
(5247, 'utilising', 'utilising', 0, 0, 0.6, 'U34252', 2, '*'),
(5248, 'utilising some', 'utilising some', 0, 1, 1.4667, 'U342525', 2, '*'),
(5249, 'utilising some part', 'utilising some part', 0, 1, 1.6333, 'U342525163', 2, '*'),
(5250, 'values', 'values', 0, 0, 0.4, 'V420', 2, '*'),
(5251, 'values personality', 'values personality', 0, 1, 1.6, 'V42162543', 2, '*'),
(5252, 'values personality we', 'values personality we', 0, 1, 1.7, 'V42162543', 1, '*'),
(5253, 'visit to', 'visit to', 0, 1, 1.2667, 'V230', 2, '*'),
(5254, 'visit to career', 'visit to career', 0, 1, 1.5, 'V2326', 1, '*'),
(5255, 'visit to the', 'visit to the', 0, 1, 1.4, 'V230', 2, '*'),
(5256, 'visiting', 'visiting', 0, 0, 0.5333, 'V2352', 2, '*'),
(5257, 'visiting the', 'visiting the', 0, 1, 1.4, 'V23523', 2, '*'),
(5258, 'visiting the career', 'visiting the career', 0, 1, 1.6333, 'V2352326', 2, '*'),
(5259, 'wait', 'wait', 0, 0, 0.2667, 'W300', 2, '*'),
(5260, 'wait until', 'wait until', 0, 1, 1.3333, 'W3534', 2, '*'),
(5261, 'wait until your', 'wait until your', 0, 1, 1.5, 'W35346', 2, '*'),
(5262, 'waited', 'waited', 0, 0, 0.4, 'W300', 2, '*'),
(5263, 'waited too', 'waited too', 0, 1, 1.3333, 'W300', 2, '*'),
(5264, 'waited too long', 'waited too long', 0, 1, 1.5, 'W3452', 2, '*'),
(5265, 'want', 'want', 1, 0, 0.0333, 'W530', 2, '*'),
(5266, 'want to', 'want to', 0, 1, 1.2333, 'W530', 2, '*'),
(5267, 'want to do', 'want to do', 0, 1, 1.3333, 'W530', 2, '*'),
(5268, 'want to learn', 'want to learn', 0, 1, 1.4333, 'W53465', 2, '*'),
(5269, 'we are', 'we are', 0, 1, 1.2, 'W600', 2, '*'),
(5270, 'we are not', 'we are not', 0, 1, 1.3333, 'W653', 2, '*'),
(5271, 'we will', 'we will', 0, 1, 1.2333, 'W400', 2, '*'),
(5272, 'we will expose', 'we will expose', 0, 1, 1.4667, 'W4212', 2, '*'),
(5273, 'we work', 'we work', 0, 1, 1.2333, 'W620', 2, '*'),
(5274, 'we work closely', 'we work closely', 0, 1, 1.5, 'W62424', 2, '*'),
(5275, 'weaknesses', 'weaknesses', 0, 0, 0.6667, 'W252', 2, '*'),
(5276, 'weaknesses potential', 'weaknesses potential', 0, 1, 1.6667, 'W25213534', 2, '*'),
(5277, 'weaknesses potential growth', 'weaknesses potential growth', 0, 1, 1.9, 'W25213534263', 2, '*'),
(5278, 'welcome', 'welcome', 0, 0, 0.4667, 'W425', 2, '*'),
(5279, 'what you', 'what you', 0, 1, 1.2667, 'W300', 2, '*'),
(5280, 'what you want', 'what you want', 0, 1, 1.4333, 'W353', 2, '*'),
(5281, 'when', 'when', 1, 0, 0.0333, 'W500', 2, '*'),
(5282, 'when you', 'when you', 0, 1, 1.2667, 'W500', 2, '*'),
(5283, 'when you want', 'when you want', 0, 1, 1.4333, 'W530', 2, '*'),
(5284, 'when you\'re', 'when you', 0, 1, 1.3667, 'W560', 2, '*'),
(5285, 'when you\'re about', 'when you about', 0, 1, 1.5667, 'W5613', 2, '*'),
(5286, 'which', 'which', 1, 0, 0.0417, 'W200', 2, '*'),
(5287, 'which you', 'which you', 0, 1, 1.3, 'W200', 2, '*'),
(5288, 'which you will', 'which you will', 0, 1, 1.4667, 'W240', 2, '*'),
(5289, 'who', 'who', 1, 0, 0.025, 'W000', 2, '*'),
(5290, 'who are', 'who are', 0, 1, 1.2333, 'W600', 2, '*'),
(5291, 'who are specifically', 'who are specifically', 0, 1, 1.6667, 'W6212124', 2, '*'),
(5292, 'who may', 'who may', 0, 1, 1.2333, 'W500', 2, '*'),
(5293, 'who may be', 'who may be', 0, 1, 1.3333, 'W510', 2, '*'),
(5294, 'who may someday', 'who may someday', 0, 1, 1.5, 'W5253', 2, '*'),
(5295, 'why', 'why', 1, 0, 0.025, 'W000', 2, '*'),
(5296, 'why should', 'why should', 0, 1, 1.3333, 'W243', 2, '*'),
(5297, 'why should i', 'why should i', 0, 1, 1.4, 'W243', 2, '*'),
(5298, 'will', 'will', 1, 0, 0.0333, 'W400', 2, '*'),
(5299, 'will be', 'will be', 0, 1, 1.2333, 'W410', 2, '*'),
(5300, 'will be put', 'will be put', 0, 1, 1.3667, 'W413', 2, '*'),
(5301, 'will expose', 'will expose', 0, 1, 1.3667, 'W4212', 2, '*'),
(5302, 'will expose you', 'will expose you', 0, 1, 1.5, 'W4212', 2, '*'),
(5303, 'will not', 'will not', 0, 1, 1.2667, 'W453', 2, '*'),
(5304, 'will not offer', 'will not offer', 0, 1, 1.4667, 'W45316', 2, '*'),
(5305, 'will utilise', 'will utilise', 0, 1, 1.4, 'W4342', 2, '*'),
(5306, 'will utilise to', 'will utilise to', 0, 1, 1.5, 'W43423', 2, '*'),
(5307, 'with', 'with', 1, 0, 0.0333, 'W300', 2, '*'),
(5308, 'with a', 'with a', 0, 1, 1.2, 'W300', 2, '*'),
(5309, 'with a career', 'with a career', 0, 1, 1.4333, 'W326', 2, '*'),
(5310, 'with employers', 'with employers', 0, 1, 1.4667, 'W351462', 2, '*'),
(5311, 'with employers who', 'with employers who', 0, 1, 1.6, 'W351462', 2, '*'),
(5312, 'with the', 'with the', 0, 1, 1.2667, 'W300', 2, '*'),
(5313, 'with the internship', 'with the internship', 0, 1, 1.6333, 'W3536521', 2, '*'),
(5314, 'with you', 'with you', 0, 1, 1.2667, 'W300', 2, '*'),
(5315, 'with you on', 'with you on', 0, 1, 1.3667, 'W350', 2, '*'),
(5316, 'with your', 'with your', 0, 1, 1.3, 'W360', 2, '*'),
(5317, 'with your career-related', 'with your career-related', 0, 1, 1.8, 'W362643', 2, '*'),
(5318, 'with your life', 'with your life', 0, 1, 1.4667, 'W3641', 2, '*'),
(5319, 'with your skills', 'with your skills', 0, 1, 1.5333, 'W36242', 2, '*'),
(5320, 'work and', 'work and', 0, 1, 1.2667, 'W6253', 2, '*'),
(5321, 'work and requires', 'work and requires', 0, 1, 1.5667, 'W62536262', 2, '*'),
(5322, 'work closely', 'work closely', 0, 1, 1.4, 'W62424', 2, '*'),
(5323, 'work closely with', 'work closely with', 0, 1, 1.5667, 'W624243', 2, '*'),
(5324, 'workshops', 'workshops', 0, 0, 0.6, 'W6212', 2, '*'),
(5325, 'workshops offered', 'workshops offered', 0, 1, 1.5667, 'W6212163', 2, '*'),
(5326, 'workshops offered by', 'workshops offered by', 0, 1, 1.6667, 'W62121631', 2, '*'),
(5327, 'world', 'world', 0, 0, 0.3333, 'W643', 2, '*'),
(5328, 'world of', 'world of', 0, 1, 1.2667, 'W6431', 2, '*'),
(5329, 'world of opportunities', 'world of opportunities', 0, 1, 1.7333, 'W643163532', 2, '*'),
(5330, 'year', 'year', 0, 0, 0.2667, 'Y600', 2, '*'),
(5331, 'year students', 'year students', 0, 1, 1.4333, 'Y623532', 2, '*'),
(5332, 'year students if', 'year students if', 0, 1, 1.5333, 'Y6235321', 2, '*'),
(5333, 'year the', 'year the', 0, 1, 1.2667, 'Y630', 2, '*'),
(5334, 'year the career', 'year the career', 0, 1, 1.5, 'Y6326', 2, '*'),
(5335, 'you a', 'you a', 0, 1, 1.1667, 'Y000', 2, '*'),
(5336, 'you a job', 'you a job', 0, 1, 1.3, 'Y210', 2, '*'),
(5337, 'you are', 'you are', 0, 1, 1.2333, 'Y600', 2, '*'),
(5338, 'you are looking', 'you are looking', 0, 1, 1.5, 'Y64252', 2, '*'),
(5339, 'you are not', 'you are not', 0, 1, 1.3667, 'Y653', 2, '*'),
(5340, 'you are paying', 'you are paying', 0, 1, 1.4667, 'Y6152', 2, '*'),
(5341, 'you are struggling', 'you are struggling', 0, 1, 1.6, 'Y62362452', 2, '*'),
(5342, 'you aren\'t', 'you aren', 0, 1, 1.3333, 'Y653', 2, '*'),
(5343, 'you aren\'t sure', 'you aren sure', 0, 1, 1.5, 'Y65326', 2, '*'),
(5344, 'you feel', 'you feel', 0, 1, 1.2667, 'Y140', 2, '*'),
(5345, 'you feel welcome', 'you feel welcome', 0, 1, 1.5333, 'Y1425', 2, '*'),
(5346, 'you figure', 'you figure', 0, 1, 1.3333, 'Y126', 2, '*'),
(5347, 'you figure out', 'you figure out', 0, 1, 1.4667, 'Y1263', 2, '*'),
(5348, 'you have', 'you have', 0, 1, 1.2667, 'Y100', 2, '*'),
(5349, 'you have waited', 'you have waited', 0, 1, 1.5, 'Y130', 2, '*'),
(5350, 'you in', 'you in', 0, 1, 1.2, 'Y500', 2, '*'),
(5351, 'you in order', 'you in order', 0, 1, 1.4, 'Y5636', 2, '*'),
(5352, 'you must', 'you must', 0, 1, 1.2667, 'Y523', 2, '*'),
(5353, 'you must contact', 'you must contact', 0, 1, 1.5333, 'Y52325323', 1, '*'),
(5354, 'you need', 'you need', 0, 1, 1.2667, 'Y530', 2, '*'),
(5355, 'you need help', 'you need help', 0, 1, 1.4333, 'Y5341', 2, '*'),
(5356, 'you on', 'you on', 0, 1, 1.2, 'Y500', 2, '*'),
(5357, 'you on daily', 'you on daily', 0, 1, 1.4, 'Y534', 2, '*'),
(5358, 'you to', 'you to', 0, 1, 1.2, 'Y300', 2, '*'),
(5359, 'you to a', 'you to a', 0, 1, 1.2667, 'Y300', 2, '*'),
(5360, 'you wait', 'you wait', 0, 1, 1.2667, 'Y300', 2, '*'),
(5361, 'you wait until', 'you wait until', 0, 1, 1.4667, 'Y3534', 2, '*'),
(5362, 'you want', 'you want', 0, 1, 1.2667, 'Y530', 2, '*'),
(5363, 'you want to', 'you want to', 0, 1, 1.3667, 'Y530', 2, '*'),
(5364, 'you will', 'you will', 0, 1, 1.2667, 'Y400', 2, '*'),
(5365, 'you will be', 'you will be', 0, 1, 1.3667, 'Y410', 2, '*'),
(5366, 'you will utilise', 'you will utilise', 0, 1, 1.5333, 'Y4342', 2, '*'),
(5367, 'you with', 'you with', 0, 1, 1.2667, 'Y300', 2, '*'),
(5368, 'you with your', 'you with your', 0, 1, 1.4333, 'Y360', 2, '*'),
(5369, 'you\'re', 'you', 0, 0, 0.4, 'Y600', 2, '*'),
(5370, 'you\'re about', 'you about', 0, 1, 1.4, 'Y613', 2, '*'),
(5371, 'you\'re about to', 'you about to', 0, 1, 1.5, 'Y613', 2, '*'),
(5372, 'your caliber', 'your caliber', 0, 1, 1.4, 'Y62416', 2, '*'),
(5373, 'your caliber to', 'your caliber to', 0, 1, 1.5, 'Y624163', 2, '*'),
(5374, 'your career', 'your career', 0, 1, 1.3667, 'Y626', 2, '*'),
(5375, 'your career early', 'your career early', 0, 1, 1.5667, 'Y6264', 2, '*'),
(5376, 'your career-related', 'your career-related', 0, 1, 1.6333, 'Y62643', 2, '*'),
(5377, 'your career-related concerns', 'your career-related concerns', 0, 1, 1.9333, 'Y62643252652', 2, '*'),
(5378, 'your fees', 'your fees', 0, 1, 1.3, 'Y612', 2, '*'),
(5379, 'your fees have', 'your fees have', 0, 1, 1.4667, 'Y6121', 2, '*'),
(5380, 'your fees if', 'your fees if', 0, 1, 1.4, 'Y6121', 2, '*'),
(5381, 'your first', 'your first', 0, 1, 1.3333, 'Y61623', 2, '*'),
(5382, 'your first year', 'your first year', 0, 1, 1.5, 'Y616236', 2, '*'),
(5383, 'your future', 'your future', 0, 1, 1.3667, 'Y6136', 2, '*'),
(5384, 'your future career', 'your future career', 0, 1, 1.6, 'Y613626', 2, '*'),
(5385, 'your interests', 'your interests', 0, 1, 1.4667, 'Y6536232', 2, '*'),
(5386, 'your interests skills', 'your interests skills', 0, 1, 1.7, 'Y653623242', 2, '*'),
(5387, 'your job', 'your job', 0, 1, 1.2667, 'Y621', 2, '*'),
(5388, 'your job hunt', 'your job hunt', 0, 1, 1.4333, 'Y62153', 2, '*'),
(5389, 'your last', 'your last', 0, 1, 1.3, 'Y6423', 2, '*'),
(5390, 'your last semester', 'your last semester', 0, 1, 1.6, 'Y642325236', 2, '*'),
(5391, 'your life', 'your life', 0, 1, 1.3, 'Y641', 2, '*'),
(5392, 'your life not', 'your life not', 0, 1, 1.4333, 'Y64153', 2, '*'),
(5393, 'your mates', 'your mates', 0, 1, 1.3333, 'Y6532', 2, '*'),
(5394, 'your mates you', 'your mates you', 0, 1, 1.4667, 'Y6532', 1, '*'),
(5395, 'your part', 'your part', 0, 1, 1.3, 'Y6163', 2, '*'),
(5396, 'your part we', 'your part we', 0, 1, 1.4, 'Y6163', 2, '*'),
(5397, 'your resume', 'your resume', 0, 1, 1.3667, 'Y625', 2, '*'),
(5398, 'your resume or', 'your resume or', 0, 1, 1.4667, 'Y6256', 2, '*'),
(5399, 'your skills', 'your skills', 0, 1, 1.3667, 'Y6242', 2, '*'),
(5400, 'your skills strengths', 'your skills strengths', 0, 1, 1.7, 'Y6242365232', 2, '*'),
(5401, 'yourself', 'yourself', 0, 0, 0.5333, 'Y6241', 2, '*'),
(5402, 'yourself in', 'yourself in', 0, 1, 1.3667, 'Y62415', 2, '*'),
(5403, 'yourself in order', 'yourself in order', 0, 1, 1.5667, 'Y62415636', 2, '*'),
(5404, 'yourself your', 'yourself your', 0, 1, 1.4333, 'Y62416', 2, '*'),
(5405, 'yourself your interests', 'yourself your interests', 0, 1, 1.7667, 'Y62416536232', 2, '*'),
(5546, '11', '11', 0, 0, 0.2, '', 1, '*'),
(5547, '12', '12', 0, 0, 0.2, '', 1, '*'),
(5548, '13', '13', 0, 0, 0.2, '', 1, '*'),
(5549, '14', '14', 0, 0, 0.2, '', 1, '*'),
(5550, 'general', 'general', 0, 0, 0.4667, 'G564', 1, '*'),
(5552, '1 get', '1 get', 0, 1, 1.1667, 'G300', 1, '*'),
(5553, '1 get access', '1 get access', 0, 1, 1.4, 'G320', 1, '*'),
(5554, '2 it\'s', '2 it', 0, 1, 1.2, 'I320', 1, '*'),
(5555, '2 it\'s the', '2 it the', 0, 1, 1.3333, 'I323', 1, '*'),
(5556, '3', '3', 0, 0, 0.1, '', 1, '*'),
(5557, '3 we', '3 we', 0, 1, 1.1333, 'W000', 1, '*'),
(5558, '3 we work', '3 we work', 0, 1, 1.3, 'W620', 1, '*'),
(5559, '4', '4', 0, 0, 0.1, '', 1, '*'),
(5560, '4 our', '4 our', 0, 1, 1.1667, 'O600', 1, '*'),
(5561, '4 our career', '4 our career', 0, 1, 1.4, 'O626', 1, '*'),
(5562, '5', '5', 0, 0, 0.1, '', 1, '*'),
(5563, '5 career', '5 career', 0, 1, 1.2667, 'C600', 1, '*'),
(5564, '5 career development', '5 career development', 0, 1, 1.6667, 'C6314153', 1, '*'),
(5565, '6', '6', 0, 0, 0.1, '', 1, '*'),
(5566, '6 attend', '6 attend', 0, 1, 1.2667, 'A353', 1, '*'),
(5567, '6 attend workshops', '6 attend workshops', 0, 1, 1.6, 'A3536212', 1, '*'),
(5568, '7', '7', 0, 0, 0.1, '', 1, '*'),
(5569, '7 you', '7 you', 0, 1, 1.1667, 'Y000', 1, '*'),
(5570, '7 you are', '7 you are', 0, 1, 1.3, 'Y600', 1, '*'),
(5571, 'career 4', 'career 4', 0, 1, 1.2667, 'C600', 1, '*'),
(5572, 'career 4 our', 'career 4 our', 0, 1, 1.4, 'C600', 1, '*'),
(5573, 'career 6', 'career 6', 0, 1, 1.2667, 'C600', 1, '*'),
(5574, 'career 6 attend', 'career 6 attend', 0, 1, 1.5, 'C6353', 1, '*'),
(5575, 'career-related concerns 2', 'career-related concerns 2', 0, 1, 1.8333, 'C643252652', 1, '*'),
(5576, 'concerns 2', 'concerns 2', 0, 1, 1.3333, 'C52652', 1, '*'),
(5577, 'concerns 2 it\'s', 'concerns 2 it', 0, 1, 1.5, 'C5265232', 1, '*'),
(5578, 'contactcareer', 'contactcareer', 0, 0, 0.8667, 'C532326', 1, '*'),
(5579, 'contactcareer development', 'contactcareer development', 0, 1, 1.8333, 'C532326314153', 1, '*'),
(5580, 'contactcareer development office', 'contactcareer development office', 0, 1, 2, 'C53232631415312', 1, '*'),
(5581, 'development office 1', 'development office 1', 0, 1, 1.6667, 'D1415312', 1, '*'),
(5582, 'development office to', 'development office to', 0, 1, 1.7, 'D14153123', 1, '*'),
(5583, 'future career 4', 'future career 4', 0, 1, 1.5, 'F3626', 1, '*'),
(5584, 'mates 7', 'mates 7', 0, 1, 1.2333, 'M320', 1, '*'),
(5585, 'mates 7 you', 'mates 7 you', 0, 1, 1.3667, 'M320', 1, '*'),
(5586, 'must contactcareer', 'must contactcareer', 0, 1, 1.6, 'M232532326', 1, '*'),
(5587, 'must contactcareer development', 'must contactcareer development', 0, 1, 2, 'M232532326314153', 1, '*'),
(5588, 'office 1', 'office 1', 0, 1, 1.2667, 'O120', 1, '*'),
(5589, 'office 1 get', 'office 1 get', 0, 1, 1.4, 'O123', 1, '*'),
(5590, 'office to', 'office to', 0, 1, 1.3, 'O123', 1, '*'),
(5591, 'office to schedule', 'office to schedule', 0, 1, 1.6, 'O123234', 1, '*'),
(5592, 'personality 3', 'personality 3', 0, 1, 1.4333, 'P62543', 1, '*'),
(5593, 'personality 3 we', 'personality 3 we', 0, 1, 1.5333, 'P62543', 1, '*'),
(5594, 'position 5', 'position 5', 0, 1, 1.3333, 'P235', 1, '*'),
(5595, 'position 5 career', 'position 5 career', 0, 1, 1.5667, 'P23526', 1, '*'),
(5596, 'specific position 5', 'specific position 5', 0, 1, 1.6333, 'S12121235', 1, '*'),
(5597, 'thriving career 6', 'thriving career 6', 0, 1, 1.5667, 'T61526', 1, '*'),
(5598, 'values personality 3', 'values personality 3', 0, 1, 1.6667, 'V42162543', 1, '*'),
(5599, 'why pay', 'why pay', 0, 1, 1.2333, 'W100', 1, '*'),
(5600, 'why pay visit', 'why pay visit', 0, 1, 1.4333, 'W123', 1, '*'),
(5601, 'you must contactcareer', 'you must contactcareer', 0, 1, 1.7333, 'Y5232532326', 1, '*'),
(5602, 'your mates 7', 'your mates 7', 0, 1, 1.4, 'Y6532', 1, '*');

-- --------------------------------------------------------

--
-- Table structure for table `crdev_finder_terms_common`
--

CREATE TABLE `crdev_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `crdev_finder_terms_common`
--

INSERT INTO `crdev_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('any', 'en'),
('are', 'en'),
('aren\'t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn\'t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `crdev_finder_tokens`
--

CREATE TABLE `crdev_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `weight` float UNSIGNED NOT NULL DEFAULT '1',
  `context` tinyint(1) UNSIGNED NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `crdev_finder_tokens_aggregate`
--

CREATE TABLE `crdev_finder_tokens_aggregate` (
  `term_id` int(10) UNSIGNED NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `term_weight` float UNSIGNED NOT NULL,
  `context` tinyint(1) UNSIGNED NOT NULL DEFAULT '2',
  `context_weight` float UNSIGNED NOT NULL,
  `total_weight` float UNSIGNED NOT NULL,
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `crdev_finder_types`
--

CREATE TABLE `crdev_finder_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `crdev_finder_types`
--

INSERT INTO `crdev_finder_types` (`id`, `title`, `mime`) VALUES
(1, 'Tag', ''),
(2, 'Category', ''),
(3, 'Contact', ''),
(4, 'Article', ''),
(5, 'News Feed', '');

-- --------------------------------------------------------

--
-- Table structure for table `crdev_huge_itslider_images`
--

CREATE TABLE `crdev_huge_itslider_images` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `slider_id` varchar(200) DEFAULT NULL,
  `description` text,
  `image_url` text,
  `sl_url` varchar(128) DEFAULT NULL,
  `sl_type` text NOT NULL,
  `link_target` text NOT NULL,
  `sl_stitle` text NOT NULL,
  `sl_sdesc` text NOT NULL,
  `sl_postlink` text NOT NULL,
  `ordering` int(11) NOT NULL,
  `published` tinyint(4) UNSIGNED DEFAULT NULL,
  `published_in_sl_width` tinyint(4) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `crdev_huge_itslider_images`
--

INSERT INTO `crdev_huge_itslider_images` (`id`, `name`, `slider_id`, `description`, `image_url`, `sl_url`, `sl_type`, `link_target`, `sl_stitle`, `sl_sdesc`, `sl_postlink`, `ordering`, `published`, `published_in_sl_width`) VALUES
(1, '', '1', '', 'http://localhost/careerDev/images/img/slide1.jpg', 'http://huge-it.com', 'image', 'on', '', '', '', 1, 1, NULL),
(4, '', '1', '', 'images/img/slide2.jpg', '', 'image', '', '', '', '', 2, NULL, NULL),
(5, '', '1', '', 'images/img/slide3.jpg', '', 'image', '', '', '', '', 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `crdev_huge_itslider_params`
--

CREATE TABLE `crdev_huge_itslider_params` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `title` varchar(200) CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL,
  `value` varchar(200) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crdev_huge_itslider_params`
--

INSERT INTO `crdev_huge_itslider_params` (`id`, `name`, `title`, `description`, `value`) VALUES
(200, 'slider_crop_image', 'Slider crop image', 'Slider crop image', 'resize'),
(201, 'slider_title_color', 'Slider title color', 'Slider title color', '000000'),
(202, 'slider_title_font_size', 'Slider title font size', 'Slider title font size', '13'),
(203, 'slider_description_color', 'Slider description color', 'Slider description color', 'ffffff'),
(204, 'slider_description_font_size', 'Slider description font size', 'Slider description font size', '13'),
(205, 'slider_title_position', 'Slider title position', 'Slider title position', 'right-top'),
(206, 'slider_description_position', 'Slider description position', 'Slider description position', 'right-bottom'),
(207, 'slider_title_border_size', 'Slider Title border size', 'Slider Title border size', '0'),
(208, 'slider_title_border_color', 'Slider title border color', 'Slider title border color', 'ffffff'),
(209, 'slider_title_border_radius', 'Slider title border radius', 'Slider title border radius', '4'),
(210, 'slider_description_border_size', 'Slider description border size', 'Slider description border size', '0'),
(211, 'slider_description_border_color', 'Slider description border color', 'Slider description border color', 'ffffff'),
(212, 'slider_description_border_radius', 'Slider description border radius', 'Slider description border radius', '0'),
(213, 'slider_slideshow_border_size', 'Slider border size', 'Slider border size', '0'),
(214, 'slider_slideshow_border_color', 'Slider border color', 'Slider border color', 'ffffff'),
(215, 'slider_slideshow_border_radius', 'Slider border radius', 'Slider border radius', '0'),
(216, 'slider_navigation_type', 'Slider navigation type', 'Slider navigation type', '1'),
(217, 'slider_navigation_position', 'Slider navigation position', 'Slider navigation position', 'bottom'),
(218, 'slider_title_background_color', 'Slider title background color', 'Slider title background color', 'ffffff'),
(219, 'slider_description_background_color', 'Slider description background color', 'Slider description background color', '000000'),
(220, 'slider_title_transparent', 'Slider title has background', 'Slider title has background', 'on'),
(221, 'slider_description_transparent', 'Slider description has background', 'Slider description has background', 'on'),
(222, 'slider_slider_background_color', 'Slider slider background color', 'Slider slider background color', 'ffffff'),
(223, 'slider_dots_position', 'slider dots position', 'slider dots position', 'top'),
(224, 'slider_active_dot_color', 'slider active dot color', '', 'ffffff'),
(225, 'slider_dots_color', 'slider dots color', '', '000000'),
(226, 'slider_description_width', 'Slider description width', 'Slider description width', '70'),
(227, 'slider_description_height', 'Slider description height', 'Slider description height', '50'),
(228, 'slider_description_background_transparency', 'slider description background transparency', 'slider description background transparency', '70'),
(229, 'slider_description_text_align', 'description text-align', 'description text-align', 'justify'),
(230, 'slider_title_width', 'slider title width', 'slider title width', '30'),
(231, 'slider_title_height', 'slider title height', 'slider title height', '50'),
(232, 'slider_title_background_transparency', 'slider title background transparency', 'slider title background transparency', '70'),
(233, 'slider_title_text_align', 'title text-align', 'title text-align', 'right'),
(234, 'slider_title_has_margin', 'title has margin', 'title has margin', 'on'),
(235, 'slider_description_has_margin', 'description has margin', 'description has margin', 'on'),
(236, 'slider_show_arrows', 'Slider show left right arrows', 'Slider show left right arrows', 'on');

-- --------------------------------------------------------

--
-- Table structure for table `crdev_huge_itslider_sliders`
--

CREATE TABLE `crdev_huge_itslider_sliders` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL,
  `sl_height` int(11) UNSIGNED DEFAULT NULL,
  `sl_width` int(11) UNSIGNED DEFAULT NULL,
  `pause_on_hover` text,
  `slider_list_effects_s` text,
  `description` text,
  `param` text,
  `sl_position` text NOT NULL,
  `ordering` int(11) NOT NULL,
  `published` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `crdev_huge_itslider_sliders`
--

INSERT INTO `crdev_huge_itslider_sliders` (`id`, `name`, `sl_height`, `sl_width`, `pause_on_hover`, `slider_list_effects_s`, `description`, `param`, `sl_position`, `ordering`, `published`) VALUES
(1, 'My First Slider', 900, 2020, 'on', 'random', '4000', '1000', 'center', 1, '300');

-- --------------------------------------------------------

--
-- Table structure for table `crdev_languages`
--

CREATE TABLE `crdev_languages` (
  `lang_id` int(11) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lang_code` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_native` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sef` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sitename` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `crdev_languages`
--

INSERT INTO `crdev_languages` (`lang_id`, `asset_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 0, 'en-GB', 'English (en-GB)', 'English (United Kingdom)', 'en', 'en_gb', '', '', '', '', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `crdev_menu`
--

CREATE TABLE `crdev_menu` (
  `id` int(11) NOT NULL,
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `crdev_menu`
--

INSERT INTO `crdev_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 73, 0, '*', 0),
(2, 'main', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 1, 1, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1),
(3, 'main', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1),
(4, 'main', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 1, 2, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1),
(5, 'main', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1),
(6, 'main', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1),
(7, 'main', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 1, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 11, 16, 0, '*', 1),
(8, 'main', 'com_contact_contacts', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 1, 7, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 12, 13, 0, '*', 1),
(9, 'main', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 1, 7, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 14, 15, 0, '*', 1),
(10, 'main', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 1, 1, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 17, 20, 0, '*', 1),
(11, 'main', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 1, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 18, 19, 0, '*', 1),
(13, 'main', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 1, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 21, 26, 0, '*', 1),
(14, 'main', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 1, 13, 2, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 22, 23, 0, '*', 1),
(15, 'main', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 1, 13, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 24, 25, 0, '*', 1),
(16, 'main', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 1, 1, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 27, 28, 0, '*', 1),
(17, 'main', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 1, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 29, 30, 0, '*', 1),
(18, 'main', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 1, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 31, 32, 0, '*', 1),
(19, 'main', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 1, 1, 1, 28, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 33, 34, 0, '*', 1),
(20, 'main', 'com_tags', 'Tags', '', 'Tags', 'index.php?option=com_tags', 'component', 1, 1, 1, 29, 0, '0000-00-00 00:00:00', 0, 1, 'class:tags', 0, '', 35, 36, 0, '', 1),
(21, 'main', 'com_postinstall', 'Post-installation messages', '', 'Post-installation messages', 'index.php?option=com_postinstall', 'component', 1, 1, 1, 32, 0, '0000-00-00 00:00:00', 0, 1, 'class:postinstall', 0, '', 37, 38, 0, '*', 1),
(22, 'main', 'com_associations', 'Multilingual Associations', '', 'Multilingual Associations', 'index.php?option=com_associations', 'component', 1, 1, 1, 34, 0, '0000-00-00 00:00:00', 0, 0, 'class:associations', 0, '', 39, 40, 0, '*', 1),
(101, 'mainmenu', 'Home', 'home', '', 'home', 'index.php?option=com_gantry5&view=custom', 'component', 1, 1, 1, 10008, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"particle\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"1\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 41, 42, 1, '*', 0),
(102, 'main', 'COM_GANTRY5', 'com-gantry5', '', 'com-gantry5', 'index.php?option=com_gantry5', 'component', 1, 1, 1, 10008, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 43, 48, 0, '', 1),
(103, 'main', 'COM_GANTRY5_ADMIN_MENU_THEMES', 'com-gantry5-admin-menu-themes', '', 'com-gantry5/com-gantry5-admin-menu-themes', 'index.php?option=com_gantry5&view=themes', 'component', 1, 102, 2, 10008, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 44, 45, 0, '', 1),
(104, 'main', 'COM_GANTRY5_ADMIN_MENU_THEME', 'com-gantry5-admin-menu-theme', '', 'com-gantry5/com-gantry5-admin-menu-theme', 'index.php?option=com_gantry5', 'component', 1, 102, 2, 10008, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 46, 47, 0, '', 1),
(105, 'main', 'COM_JCE', 'com-jce', '', 'com-jce', 'index.php?option=com_jce', 'component', 1, 1, 1, 10016, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jce/media/img/menu/logo.png', 0, '{}', 49, 56, 0, '', 1),
(106, 'main', 'COM_JCE_MENU_CPANEL', 'com-jce-menu-cpanel', '', 'com-jce/com-jce-menu-cpanel', 'index.php?option=com_jce', 'component', 1, 105, 2, 10016, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 50, 51, 0, '', 1),
(107, 'main', 'COM_JCE_MENU_CONFIG', 'com-jce-menu-config', '', 'com-jce/com-jce-menu-config', 'index.php?option=com_jce&view=config', 'component', 1, 105, 2, 10016, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 52, 53, 0, '', 1),
(108, 'main', 'COM_JCE_MENU_PROFILES', 'com-jce-menu-profiles', '', 'com-jce/com-jce-menu-profiles', 'index.php?option=com_jce&view=profiles', 'component', 1, 105, 2, 10016, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 54, 55, 0, '', 1),
(109, 'main', 'COM_SLIDER', 'com-slider', '', 'com-slider', 'index.php?option=com_slider', 'component', 1, 1, 1, 10025, 0, '0000-00-00 00:00:00', 0, 1, '../media/com_slider/images/huge.png', 0, '{}', 57, 64, 0, '', 1),
(110, 'main', 'COM_SLIDER', 'com-slider', '', 'com-slider/com-slider', 'index.php?option=com_slider&view=sliders', 'component', 1, 109, 2, 10025, 0, '0000-00-00 00:00:00', 0, 1, '../media/com_slider/images/huge.png', 0, '{}', 58, 59, 0, '', 1),
(111, 'main', 'COM_GENERAL', 'com-general', '', 'com-slider/com-general', 'index.php?option=com_slider&view=general', 'component', 1, 109, 2, 10025, 0, '0000-00-00 00:00:00', 0, 1, '../media/com_slider/images/huge.png', 0, '{}', 60, 61, 0, '', 1),
(112, 'main', 'COM_FEATURED', 'com-featured', '', 'com-slider/com-featured', 'index.php?option=com_slider&view=featured', 'component', 1, 109, 2, 10025, 0, '0000-00-00 00:00:00', 0, 1, '../media/com_slider/images/huge.png', 0, '{}', 62, 63, 0, '', 1),
(113, 'mainmenu', 'What we do', 'what-we-do', '', 'what-we-do', 'index.php?option=com_gantry5&view=custom', 'component', 1, 1, 1, 10008, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"particle\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 65, 66, 0, '*', 0),
(114, 'mainmenu', 'About us', 'about-us', '', 'about-us', 'index.php?option=com_gantry5&view=custom', 'component', 1, 1, 1, 10008, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"particle\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 67, 68, 0, '*', 0),
(115, 'mainmenu', 'Contact us', 'contact-us', '', 'contact-us', 'index.php?option=com_gantry5&view=custom', 'component', 1, 1, 1, 10008, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"particle\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 69, 70, 0, '*', 0),
(116, 'mainmenu', 'link', 'link', '', 'link', 'index.php?Itemid=', 'alias', -2, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1}', 71, 72, 0, '*', 0);

-- --------------------------------------------------------

--
-- Table structure for table `crdev_menu_types`
--

CREATE TABLE `crdev_menu_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `crdev_menu_types`
--

INSERT INTO `crdev_menu_types` (`id`, `asset_id`, `menutype`, `title`, `description`, `client_id`) VALUES
(1, 54, 'mainmenu', 'Main Menu', 'The main menu for the site', 0);

-- --------------------------------------------------------

--
-- Table structure for table `crdev_messages`
--

CREATE TABLE `crdev_messages` (
  `message_id` int(10) UNSIGNED NOT NULL,
  `user_id_from` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_id_to` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crdev_messages_cfg`
--

CREATE TABLE `crdev_messages_cfg` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cfg_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crdev_modules`
--

CREATE TABLE `crdev_modules` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `crdev_modules`
--

INSERT INTO `crdev_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 39, 'Main Menu', '', '', 1, 'debug', 0, '0000-00-00 00:00:00', '2018-06-29 22:19:45', '0000-00-00 00:00:00', -2, 'mod_menu', 1, 1, '{\"menutype\":\"mainmenu\",\"base\":\"\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"_menu\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(2, 40, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 41, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(4, 42, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(8, 43, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 44, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 45, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(12, 46, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{\"layout\":\"\",\"moduleclass_sfx\":\"\",\"shownew\":\"1\",\"showhelp\":\"1\",\"cache\":\"0\"}', 1, '*'),
(13, 47, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 48, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 49, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 50, 'Login Form', '', '', 7, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '{\"greeting\":\"1\",\"name\":\"0\"}', 0, '*'),
(17, 51, 'Breadcrumbs', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 1, 1, '{\"moduleclass_sfx\":\"\",\"showHome\":\"1\",\"homeText\":\"\",\"showComponent\":\"1\",\"separator\":\"\",\"cache\":\"0\",\"cache_time\":\"0\",\"cachemode\":\"itemid\"}', 0, '*'),
(79, 52, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(86, 53, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{\"format\":\"short\",\"product\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(87, 55, 'Sample Data', '', '', 0, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_sampledata', 6, 1, '{}', 1, '*'),
(88, 57, 'Gantry 5 Particle', '', '', 0, '', 0, '0000-00-00 00:00:00', '2018-06-28 18:59:13', '0000-00-00 00:00:00', -2, 'mod_gantry5_particle', 1, 1, '', 0, '*'),
(89, 59, 'JMG Img Hover Modul', '', '', 0, '', 0, '0000-00-00 00:00:00', '2018-06-28 18:59:13', '0000-00-00 00:00:00', -2, 'mod_jmg_imghover', 1, 1, '', 0, '*'),
(90, 60, 'Xpert Scroller', '', '', 0, '', 0, '0000-00-00 00:00:00', '2018-06-28 18:59:13', '0000-00-00 00:00:00', -2, 'mod_xpertscroller', 1, 1, '', 0, '*'),
(91, 63, 'slideshow', '', '', 1, 'slideshow', 0, '0000-00-00 00:00:00', '2018-06-28 18:57:24', '0000-00-00 00:00:00', -2, 'mod_slider', 1, 0, '{\"choose_slider\":\"1\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(92, 64, 'slideshow', '', '', 1, 'slideshow', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_slider', 1, 0, '{\"choose_slider\":\"1\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(93, 65, 'First Image', '', '', 1, 'firstImage', 0, '0000-00-00 00:00:00', '2018-06-29 10:49:15', '0000-00-00 00:00:00', -2, 'mod_gantry5_particle', 1, 0, '{\"particle\":\"{\\\"type\\\":\\\"particle\\\",\\\"particle\\\":\\\"logo\\\",\\\"title\\\":\\\"Logo \\\\\\/ Image\\\",\\\"options\\\":{\\\"particle\\\":{\\\"enabled\\\":\\\"1\\\",\\\"url\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"image\\\":\\\"gantry-media:\\\\\\/\\\\\\/img\\\\\\/slider_4.jpg\\\",\\\"link\\\":\\\"1\\\",\\\"svg\\\":\\\"\\\",\\\"text\\\":\\\"\\\",\\\"class\\\":\\\"\\\"}}}\",\"moduleclass_sfx\":\"\",\"owncache\":\"0\",\"cache_time\":\"900\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(94, 66, 'image hover effect', '', '', 0, '', 0, '0000-00-00 00:00:00', '2018-06-30 20:07:03', '0000-00-00 00:00:00', -2, 'mod_image_hover_effect', 1, 1, '', 0, '*'),
(95, 67, 'The Image', '', '', 1, 'secondPic', 0, '0000-00-00 00:00:00', '2018-06-29 10:49:15', '0000-00-00 00:00:00', -2, 'mod_jmg_imghover', 1, 0, '{\"mod_jmg_imghover_image\":\"images\\/img\\/slider_4.jpg\",\"mod_jmg_imghover_head\":\"The Image\",\"mod_jmg_imghover_text\":\"This is it\",\"mod_jmg_imghover_effect\":\"imghvr-push-up\",\"mod_jmg_imghover_background_color\":\"#ffffff\",\"mod_jmg_imghover_menu_id\":\"101\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(96, 68, 'Third', '', '', 1, 'our-mission', 0, '0000-00-00 00:00:00', '2018-06-29 10:49:15', '0000-00-00 00:00:00', -2, 'mod_gantry5_particle', 1, 0, '{\"particle\":\"{\\\"type\\\":\\\"particle\\\",\\\"particle\\\":\\\"logo\\\",\\\"title\\\":\\\"Logo \\\\\\/ Image\\\",\\\"options\\\":{\\\"particle\\\":{\\\"enabled\\\":\\\"1\\\",\\\"url\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"image\\\":\\\"gantry-media:\\\\\\/\\\\\\/img\\\\\\/slider_3a.jpg\\\",\\\"link\\\":\\\"1\\\",\\\"svg\\\":\\\"\\\",\\\"text\\\":\\\"\\\",\\\"class\\\":\\\"\\\"}}}\",\"moduleclass_sfx\":\"\",\"owncache\":\"0\",\"cache_time\":\"900\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(97, 69, 'our mission', '', '', 1, 'our-mission', 0, '0000-00-00 00:00:00', '2018-06-28 22:19:29', '0000-00-00 00:00:00', -2, 'mod_gantry5_particle', 1, 0, '{\"particle\":\"{\\\"type\\\":\\\"particle\\\",\\\"particle\\\":\\\"contentarray\\\",\\\"title\\\":\\\"Joomla Articles\\\",\\\"options\\\":{\\\"particle\\\":{\\\"enabled\\\":\\\"1\\\",\\\"article\\\":{\\\"filter\\\":{\\\"categories\\\":\\\"2\\\",\\\"articles\\\":\\\"Our Mission\\\",\\\"featured\\\":\\\"include\\\"},\\\"limit\\\":{\\\"total\\\":\\\"2\\\",\\\"columns\\\":\\\"2\\\",\\\"start\\\":\\\"0\\\"},\\\"display\\\":{\\\"pagination_buttons\\\":\\\"\\\",\\\"image\\\":{\\\"enabled\\\":\\\"intro\\\"},\\\"text\\\":{\\\"type\\\":\\\"intro\\\",\\\"limit\\\":\\\"\\\",\\\"formatting\\\":\\\"text\\\"},\\\"title\\\":{\\\"enabled\\\":\\\"show\\\",\\\"limit\\\":\\\"\\\"},\\\"date\\\":{\\\"enabled\\\":\\\"\\\",\\\"format\\\":\\\"l, F d, Y\\\"},\\\"read_more\\\":{\\\"enabled\\\":\\\"show\\\",\\\"label\\\":\\\"\\\",\\\"css\\\":\\\"\\\"},\\\"author\\\":{\\\"enabled\\\":\\\"\\\"},\\\"category\\\":{\\\"enabled\\\":\\\"\\\"},\\\"hits\\\":{\\\"enabled\\\":\\\"\\\"}},\\\"sort\\\":{\\\"orderby\\\":\\\"publish_up\\\",\\\"ordering\\\":\\\"ASC\\\"}},\\\"css\\\":{\\\"class\\\":\\\"\\\"},\\\"extra\\\":[]}}}\",\"moduleclass_sfx\":\"\",\"owncache\":\"0\",\"cache_time\":\"900\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(98, 71, 'JM Best Features', '', '', 0, '', 0, '0000-00-00 00:00:00', '2018-06-30 20:07:03', '0000-00-00 00:00:00', -2, 'mod_jm_best_features', 1, 1, '', 0, '*'),
(99, 72, 'vision', '', '', 1, 'our-vision', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_jm_best_features', 1, 0, '{\"items\":\"[[{\\\"name\\\":\\\"jform[params][title]\\\",\\\"value\\\":\\\"\\\"},{\\\"name\\\":\\\"jform[params][url]\\\",\\\"value\\\":\\\"\\\"},{\\\"name\\\":\\\"jform[params][image_icon]\\\",\\\"value\\\":\\\"images\\/img\\/slider_3a.jpg\\\"},{\\\"name\\\":\\\"jform[params][alt]\\\",\\\"value\\\":\\\"\\\"},{\\\"name\\\":\\\"jform[params][icon]\\\",\\\"value\\\":\\\"\\\"},{\\\"name\\\":\\\"jform[params][color]\\\",\\\"value\\\":\\\"\\\"},{\\\"name\\\":\\\"jform[params][text]\\\",\\\"value\\\":\\\" Mission statement examples. Life is Good: \\\\\\\"To spread the power of optimism\\\\\\\" sweetgreen: \\\\\\\"To inspire healthier communities by connecting people to real food.\\\\\\\" Patagonia: \\\\\\\"Build the best product, cause no unnecessary harm, use business to inspire and implement solutions to the environmental crisis.\\\\\\\"\\\"}]]\",\"title\":\"\",\"url\":\"\",\"image_icon\":\"\",\"alt\":\"\",\"icon\":\"\",\"color\":\"\",\"text\":\"\",\"image_file\":\"\",\"view\":\"5\",\"link_icon\":\"1\",\"span_size\":\"3\",\"theme\":\"1\",\"load_fontawesome\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(100, 73, 'What we do - Pay Visit', '', '', 1, 'whatWeDo-payVisit', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_gantry5_particle', 1, 0, '{\"particle\":\"{\\\"type\\\":\\\"particle\\\",\\\"particle\\\":\\\"custom\\\",\\\"title\\\":\\\"Custom HTML\\\",\\\"options\\\":{\\\"particle\\\":{\\\"enabled\\\":\\\"1\\\",\\\"html\\\":\\\"<div class=\\\\\\\"uk-section-default \\\\\\\" id=\\\\\\\"payVisit\\\\\\\">\\\\n\\\\t<div class=\\\\\\\"uk-section uk-background-cover\\\\\\\" style=\\\\\\\"background-image: url(bg-site.png)\\\\\\\">\\\\n\\\\t\\\\t<div class=\\\\\\\"uk-container\\\\\\\">\\\\n\\\\t\\\\t\\\\t<h2 style=\\\\\\\"color: black; font-size: 20px; font-weight: 300\\\\\\\" class=\\\\\\\"uk-text-large\\\\\\\">WHY SHOULD I PAY A VISIT TO THE CAREER DEVELOPMENT OFFICE?<\\\\\\/h2>\\\\n\\\\t\\\\t\\\\t<hr class=\\\\\\\"uk-divider-icon\\\\\\\">\\\\n\\\\t\\\\t\\\\t<div class=\\\\\\\"uk-grid-match uk-child-width-1-2@m\\\\\\\" uk-grid>\\\\n\\\\t\\\\t\\\\t\\\\t<div style=\\\\\\\"color: black\\\\\\\">\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t<ul class=\\\\\\\"uk-list uk-list-striped\\\\\\\">\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<li><span uk-icon=\\\\\\\"triangle-right\\\\\\\"><\\\\\\/span>Get access to <strong class=\\\\\\\"uk-text-primary\\\\\\\">professionals<\\\\\\/strong> who are specifically trained to assist you with your career-related concerns.<\\\\\\/li>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<li>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<span uk-icon=\\\\\\\"triangle-right\\\\\\\"><\\\\\\/span>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tIt\\u2019s the appropriate office on campus that provides useful information to enable you\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<strong class=\\\\\\\"uk-text-primary\\\\\\\">figure out what you want to do with your life,<\\\\\\/strong>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tnot only when you\\u2019re about to start your job hunt, but also when you want to learn more about yourself - your interests, skills, values,\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tpersonality.\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<\\\\\\/li>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<li>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<span uk-icon=\\\\\\\"triangle-right\\\\\\\"><\\\\\\/span>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<strong class=\\\\\\\"uk-text-primary\\\\\\\">We work closely with employers<\\\\\\/strong> who may someday hire you in order to develop\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tinternship and full-time opportunities for your future career.\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<\\\\\\/li>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<li>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<span uk-icon=\\\\\\\"triangle-right\\\\\\\"><\\\\\\/span>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tOur Career Development staffs are ever ready to interact with you on\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tdaily basis so as to be conversant with your skills, strengths, weaknesses,\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tpotential, growth and development areas, etc.\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tfor reference to <strong class=\\\\\\\"uk-text-primary\\\\\\\">an employer who may be looking for your caliber to fill a specific position.<\\\\\\/strong>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<\\\\\\/li>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t<\\\\\\/ul>\\\\n\\\\t\\\\t\\\\t\\\\t<\\\\\\/div>\\\\n\\\\t\\\\t\\\\t\\\\t<div class=\\\\\\\"uk-text-center\\\\\\\">\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t<div class=\\\\\\\"uk-inline-clip \\\\\\\" tabindex=\\\\\\\"0\\\\\\\">\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<img src=\\\\\\\"crDev.jpg\\\\\\\" style=\\\\\\\"height: 300px; \\\\\\\" alt=\\\\\\\"\\\\\\\">\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t<\\\\\\/div>\\\\n\\\\t\\\\t\\\\t\\\\t<\\\\\\/div>\\\\n\\\\t\\\\t\\\\t<\\\\\\/div>\\\\n\\\\t\\\\t\\\\t<div class=\\\\\\\"uk-grid-match uk-child-width-1-1@m\\\\\\\" uk-grid>\\\\n\\\\t\\\\t\\\\t\\\\t<div style=\\\\\\\"color: black\\\\\\\">\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t<ul class=\\\\\\\"uk-list uk-list-striped\\\\\\\">\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<li>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<span uk-icon=\\\\\\\"triangle-right\\\\\\\"><\\\\\\/span>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<strong class=\\\\\\\"uk-text-primary\\\\\\\">Career Development Office will not offer you a job;<\\\\\\/strong>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tjob searching is hard work and requires much effort on your part. We will expose you to a world of opportunities, resources and needed guidance which you will utilise to explore and develop yourself, in order to carve a thriving career.<\\\\\\/li>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<li>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<span uk-icon=\\\\\\\"triangle-right\\\\\\\"><\\\\\\/span>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<strong class=\\\\\\\"uk-text-primary\\\\\\\">Attend workshops offered by Career Development Office starting in your first year.<\\\\\\/strong>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tThe Career Development Office is for all students in the university, not just final year students. If you wait until your last semester to start visiting the Career Development Office, you have waited too long and may not find the assistance you are looking for. Get in early - meet the staff - and start developing your career early, and you will be put miles ahead of your mates.<\\\\\\/li>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<li>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<span uk-icon=\\\\\\\"triangle-right\\\\\\\"><\\\\\\/span>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<strong class=\\\\\\\"uk-text-primary\\\\\\\">You are paying for it!<\\\\\\/strong>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tYour fees have paid for the support the Career Development Office provides.\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tTherefore, not taking advantage of it simply means you are not utilising some\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tpart of your fees.\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<\\\\\\/li>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t<\\\\\\/ul>\\\\n\\\\t\\\\t\\\\t\\\\t<\\\\\\/div>\\\\n\\\\t\\\\t\\\\t<\\\\\\/div>\\\\n\\\\t\\\\t\\\\t<div class=\\\\\\\"uk-grid-match uk-child-width-1-1@m uk-text-center\\\\\\\" uk-grid>\\\\n\\\\t\\\\t\\\\t\\\\t<p style=\\\\\\\"color: black\\\\\\\">\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t<strong>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tIf you are struggling with a career decision, and you need help on your resume, or you aren\\u2019t sure how to get started with the internship and job search, you must contact Career Development Office to schedule an appointment at Room 2, Annan Block, next to the Procurement Office or send a mail to career development.office@ttu.edu.gh or career development.office@gmail.com.\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<br>Let us know if we are not making you feel welcome.\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t<\\\\\\/strong>\\\\n\\\\t\\\\t\\\\t\\\\t<\\\\\\/p>\\\\n\\\\t\\\\t\\\\t<\\\\\\/div>\\\\n\\\\t\\\\t<\\\\\\/div>\\\\n\\\\t<\\\\\\/div>\\\\n<\\\\\\/div>\\\",\\\"twig\\\":\\\"0\\\",\\\"filter\\\":\\\"0\\\"}}}\",\"moduleclass_sfx\":\"\",\"owncache\":\"0\",\"cache_time\":\"900\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(101, 74, 'Mission and Vision', '', '', 1, 'missionAndVision', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_gantry5_particle', 1, 0, '{\"particle\":\"{\\\"type\\\":\\\"particle\\\",\\\"particle\\\":\\\"custom\\\",\\\"title\\\":\\\"Custom HTML\\\",\\\"options\\\":{\\\"particle\\\":{\\\"enabled\\\":\\\"1\\\",\\\"html\\\":\\\"<div class=\\\\\\\"uk-section-default\\\\\\\">\\\\n\\\\t<div class=\\\\\\\"uk-section uk-light\\\\\\\">\\\\n\\\\t\\\\t<div class=\\\\\\\"uk-container\\\\\\\">\\\\n\\\\t\\\\t\\\\t<div class=\\\\\\\"uk-grid-match uk-child-width-1-2@m\\\\\\\" uk-grid>\\\\n\\\\t\\\\t\\\\t\\\\t<div class=\\\\\\\"uk-card uk-card-default uk-card-hover uk-card-body uk-text-center\\\\\\\">\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t<div class=\\\\\\\"uk-card-header uk-text-center\\\\\\\">\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<div class=\\\\\\\"uk-grid-small uk-flex-middle\\\\\\\" uk-grid>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<div class=\\\\\\\"uk-width-expand\\\\\\\">\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<h3 class=\\\\\\\"uk-card-title uk-margin-remove-bottom\\\\\\\">Our Mission<\\/h3>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<p class=\\\\\\\"uk-text-meta uk-margin-remove-top\\\\\\\"><time datetime=\\\\\\\"2016-04-01T19:00\\\\\\\">April 01, 2016<\\/time><\\/p>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<\\/div>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<\\/div>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t<\\/div>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t<p>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tLorem ipsum dolor sit amet, consectetur adipisicing elit. Lorem ipsum dolor sit amet,\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tconsectetur adipisicing elit. Assumenda nostrum quidem sequi similique sunt. Dolorem\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tex laudantium voluptates. At corporis dicta,\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\texercitationem harum iste laboriosam laudantium quod recusandae similique ullam.\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\n\\\\t\\\\t\\\\t\\\\t<\\/p>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\n\\\\t\\\\t\\\\t\\\\t<\\/div>\\\\n\\\\t\\\\t\\\\t\\\\t<div class=\\\\\\\"uk-card uk-card-default uk-card-hover uk-card-body uk-text-center\\\\\\\">\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t<div class=\\\\\\\"uk-card-header uk-text-center\\\\\\\">\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<div class=\\\\\\\"uk-grid-small uk-flex-middle \\\\\\\" uk-grid>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<div class=\\\\\\\"uk-width-expand\\\\\\\">\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<h3 class=\\\\\\\"uk-card-title uk-margin-remove-bottom\\\\\\\">Our Vision<\\/h3>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<p class=\\\\\\\"uk-text-meta uk-margin-remove-top\\\\\\\"><time datetime=\\\\\\\"2016-04-01T19:00\\\\\\\">April 01, 2016<\\/time><\\/p>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<\\/div>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<\\/div>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t<\\/div>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t<p>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tLorem ipsum dolor sit amet, consectetur adipisicing elit. Lorem ipsum dolor sit amet,\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tconsectetur adipisicing elit. Assumenda nostrum quidem sequi similique sunt. Dolorem\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tex laudantium voluptates. At corporis dicta,\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\texercitationem harum iste laboriosam laudantium quod recusandae similique ullam.\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t<\\/p>\\\\n\\\\t\\\\t\\\\t\\\\t<\\/div>\\\\n\\\\t\\\\t\\\\t<\\/div>\\\\n\\\\t\\\\t<\\/div>\\\\n\\\\t<\\/div>\\\\n<\\/div>\\\",\\\"twig\\\":\\\"0\\\",\\\"filter\\\":\\\"0\\\"}}}\",\"moduleclass_sfx\":\"\",\"owncache\":\"0\",\"cache_time\":\"900\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(102, 75, 'About us', '', '', 1, 'about-us', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_gantry5_particle', 1, 0, '{\"particle\":\"{\\\"type\\\":\\\"particle\\\",\\\"particle\\\":\\\"custom\\\",\\\"title\\\":\\\"Custom HTML\\\",\\\"options\\\":{\\\"particle\\\":{\\\"enabled\\\":\\\"1\\\",\\\"html\\\":\\\"<div class=\\\\\\\"uk-section-default\\\\\\\" id=\\\\\\\"about-us\\\\\\\">\\\\n\\\\t<div class=\\\\\\\"uk-section uk-light uk-background-cover\\\\\\\" style=\\\\\\\"background-image: url(firstSection.jpg)\\\\\\\">\\\\n\\\\t\\\\t<div class=\\\\\\\"uk-container\\\\\\\">\\\\n\\\\t\\\\t\\\\t<h2 style=\\\\\\\"color: black; font-size: 40px; font-weight: 300\\\\\\\" class=\\\\\\\"uk-text-large\\\\\\\">About Us<\\\\\\/h2>\\\\n\\\\t\\\\t\\\\t<hr class=\\\\\\\"uk-divider-small\\\\\\\">\\\\n\\\\t\\\\t\\\\t<div class=\\\\\\\"uk-grid-match uk-child-width-1-2@m\\\\\\\" uk-grid>\\\\n\\\\t\\\\t\\\\t\\\\t<div>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t<p style=\\\\\\\"color: black\\\\\\\">\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tLorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorum eum veritatis\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tvoluptates? Ab accusamus aperiam culpa, cum cumque dolore esse iste molestiae nam,\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tquibusdam repellendus similique totam ut velit voluptatem. Lorem ipsum dolor sit amet,\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tconsectetur adipisicing elit. Dolore earum enim labore molestiae nostrum perspiciatis porro\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tveritatis. A ad autem consequatur ea labore, possimus quaerat ratione saepe,\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\ttempora, vero voluptatum!\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t<\\\\\\/p>\\\\n\\\\t\\\\t\\\\t\\\\t<\\\\\\/div>\\\\n\\\\t\\\\t\\\\t\\\\t<div>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t<div class=\\\\\\\"uk-text-center\\\\\\\">\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<div class=\\\\\\\"uk-inline-clip uk-transition-toggle\\\\\\\" tabindex=\\\\\\\"0\\\\\\\">\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<img src=\\\\\\\"pic.jpg\\\\\\\" style=\\\\\\\"height: 500px; width: 350px;\\\\\\\" alt=\\\\\\\"\\\\\\\">\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<div class=\\\\\\\"uk-transition-slide-bottom uk-position-bottom uk-overlay uk-overlay-default\\\\\\\">\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<p style=\\\\\\\"color: black\\\\\\\" class=\\\\\\\"uk-h4 uk-margin-remove\\\\\\\">Bottom<\\\\\\/p>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<\\\\\\/div>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<\\\\\\/div>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t<\\\\\\/div>\\\\n\\\\t\\\\t\\\\t\\\\t<\\\\\\/div>\\\\n\\\\t\\\\t\\\\t<\\\\\\/div>\\\\n\\\\t\\\\t<\\\\\\/div>\\\\n\\\\t<\\\\\\/div>\\\\n<\\\\\\/div>\\\\n\\\\n\\\"}}}\",\"moduleclass_sfx\":\"\",\"owncache\":\"0\",\"cache_time\":\"900\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(103, 76, 'Visit CrDev', '', '', 1, 'whyVisitCrDev', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_gantry5_particle', 1, 0, '{\"particle\":\"{\\\"type\\\":\\\"particle\\\",\\\"particle\\\":\\\"custom\\\",\\\"title\\\":\\\"Custom HTML\\\",\\\"options\\\":{\\\"particle\\\":{\\\"enabled\\\":\\\"1\\\",\\\"html\\\":\\\"<div class=\\\\\\\"uk-section-default\\\\\\\">\\\\n\\\\t<div class=\\\\\\\"uk-section\\\\\\\">\\\\n\\\\t\\\\t<div class=\\\\\\\"uk-container\\\\\\\">\\\\n\\\\t\\\\t\\\\t<div class=\\\\\\\"uk-grid-match uk-child-width-1-3@m\\\\\\\" uk-grid>\\\\n\\\\t\\\\t\\\\t\\\\t<div class=\\\\\\\"uk-card uk-card-hover uk-card-body uk-text-center\\\\\\\">\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t<div class=\\\\\\\"uk-card-header\\\\\\\">\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<div class=\\\\\\\"uk-grid-small uk-flex-middle\\\\\\\" uk-grid>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<div class=\\\\\\\"uk-width-expand\\\\\\\">\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<h3 class=\\\\\\\"uk-card-title uk-margin-remove-bottom\\\\\\\">Title<\\\\\\/h3>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<p class=\\\\\\\"uk-text-meta uk-margin-remove-top\\\\\\\"><time datetime=\\\\\\\"2016-04-01T19:00\\\\\\\">April 01, 2016<\\\\\\/time><\\\\\\/p>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<\\\\\\/div>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<\\\\\\/div>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t<\\\\\\/div>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t<div class=\\\\\\\"uk-card-body\\\\\\\">\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<p>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tGet access to professionals who are specifically trained to assist you with your career-related concerns.\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<\\\\\\/p>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t<\\\\\\/div>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t<div class=\\\\\\\"uk-card-footer\\\\\\\">\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<a href=\\\\\\\"#what-we-do\\\\\\\" class=\\\\\\\"uk-button uk-button-text\\\\\\\">Read more<\\\\\\/a>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t<\\\\\\/div>\\\\n\\\\t\\\\t\\\\t\\\\t<\\\\\\/div>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\n\\\\t\\\\t\\\\t\\\\t<div class=\\\\\\\"uk-card uk-card-hover uk-card-body uk-text-center\\\\\\\">\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t<div class=\\\\\\\"uk-card-header\\\\\\\">\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<div class=\\\\\\\"uk-grid-small uk-flex-middle\\\\\\\" uk-grid>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<div class=\\\\\\\"uk-width-expand\\\\\\\">\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<h3 class=\\\\\\\"uk-card-title uk-margin-remove-bottom\\\\\\\">Title<\\\\\\/h3>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<p class=\\\\\\\"uk-text-meta uk-margin-remove-top\\\\\\\"><time datetime=\\\\\\\"2016-04-01T19:00\\\\\\\">April 01, 2016<\\\\\\/time><\\\\\\/p>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<\\\\\\/div>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<\\\\\\/div>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t<\\\\\\/div>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t<div class=\\\\\\\"uk-card-body\\\\\\\">\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.<\\\\\\/p>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t<\\\\\\/div>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t<div class=\\\\\\\"uk-card-footer\\\\\\\">\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<a href=\\\\\\\"#\\\\\\\" class=\\\\\\\"uk-button uk-button-text\\\\\\\">Read more<\\\\\\/a>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t<\\\\\\/div>\\\\n\\\\t\\\\t\\\\t\\\\t<\\\\\\/div>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\n\\\\t\\\\t\\\\t\\\\t<div class=\\\\\\\"uk-card uk-card-hover uk-card-body uk-text-center\\\\\\\">\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t<div class=\\\\\\\"uk-card-header\\\\\\\">\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<div class=\\\\\\\"uk-grid-small uk-flex-middle\\\\\\\" uk-grid>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<div class=\\\\\\\"uk-width-expand\\\\\\\">\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<h3 class=\\\\\\\"uk-card-title uk-margin-remove-bottom\\\\\\\">Title<\\\\\\/h3>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<p class=\\\\\\\"uk-text-meta uk-margin-remove-top\\\\\\\"><time datetime=\\\\\\\"2016-04-01T19:00\\\\\\\">April 01, 2016<\\\\\\/time><\\\\\\/p>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<\\\\\\/div>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<\\\\\\/div>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t<\\\\\\/div>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t<div class=\\\\\\\"uk-card-body\\\\\\\">\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.<\\\\\\/p>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t<\\\\\\/div>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t<div class=\\\\\\\"uk-card-footer\\\\\\\">\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<a href=\\\\\\\"#\\\\\\\" class=\\\\\\\"uk-button uk-button-text\\\\\\\">Read more<\\\\\\/a>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t<\\\\\\/div>\\\\n\\\\t\\\\t\\\\t\\\\t<\\\\\\/div>\\\\n\\\\t\\\\t\\\\t<\\\\\\/div>\\\\n\\\\t\\\\t<\\\\\\/div>\\\\n\\\\t<\\\\\\/div>\\\\n<\\\\\\/div>\\\\n\\\",\\\"twig\\\":\\\"0\\\",\\\"filter\\\":\\\"0\\\"}}}\",\"moduleclass_sfx\":\"\",\"owncache\":\"0\",\"cache_time\":\"900\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(104, 77, 'Link to what we do', '', '', 1, 'linkToWhatWeDo', 906, '2018-07-04 17:05:53', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_gantry5_particle', 1, 0, '{\"particle\":\"{\\\"type\\\":\\\"particle\\\",\\\"particle\\\":\\\"custom\\\",\\\"title\\\":\\\"Custom HTML\\\",\\\"options\\\":{\\\"particle\\\":{\\\"enabled\\\":\\\"1\\\",\\\"html\\\":\\\"<div class=\\\\\\\"uk-section-default\\\\\\\">\\\\n\\\\t<div class=\\\\\\\"uk-section uk-background-cover\\\\\\\" style=\\\\\\\"background-image: url(bg.png)\\\\\\\">\\\\n\\\\t\\\\t<div class=\\\\\\\"uk-container uk-text-center\\\\\\\">\\\\n\\\\t\\\\t\\\\t<h3 class=\\\\\\\"uk-text-uppercase\\\\\\\">FAQ\'s<\\/h3>\\\\n\\\\t\\\\t\\\\t<hr class=\\\\\\\"uk-divider-small\\\\\\\">\\\\n\\\\t\\\\t\\\\t<div class=\\\\\\\"uk-grid-match uk-child-width-1-3@m\\\\\\\" uk-grid>\\\\n\\\\t\\\\t\\\\t\\\\t<div class=\\\\\\\"uk-card uk-card-hover uk-card-body uk-text-center\\\\\\\">\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t<div class=\\\\\\\"uk-card-header\\\\\\\">\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<div class=\\\\\\\"uk-grid-small uk-flex-middle\\\\\\\" uk-grid>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<div class=\\\\\\\"uk-width-expand\\\\\\\">\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<h5 class=\\\\\\\"uk-card-title uk-margin-remove-bottom\\\\\\\">Why should I pay visit to the career Development Office?<\\/h5>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<hr class=\\\\\\\"uk-divider-small\\\\\\\">\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<\\/div>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<\\/div>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t<\\/div>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t<div class=\\\\\\\"uk-card-body uk-margin-remove-top\\\\\\\">\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<p >\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tGet access to professionals who are specifically trained to assist you with your career-related concerns.\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<\\/p>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t<\\/div>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t<div class=\\\\\\\"uk-card-footer\\\\\\\">\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<a href=\\\\\\\"http:\\/\\/localhost\\/careerDev\\/index.php\\/what-we-do#payVisit\\\\\\\" class=\\\\\\\"uk-button uk-button-text\\\\\\\">Read more<\\/a>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t<\\/div>\\\\n\\\\t\\\\t\\\\t\\\\t<\\/div>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\n\\\\t\\\\t\\\\t\\\\t<div class=\\\\\\\"uk-card uk-card-hover uk-card-body uk-text-center\\\\\\\">\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t<div class=\\\\\\\"uk-card-header\\\\\\\">\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<div class=\\\\\\\"uk-grid-small uk-flex-middle\\\\\\\" uk-grid>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<div class=\\\\\\\"uk-width-expand\\\\\\\">\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<h5 class=\\\\\\\"uk-card-title uk-margin-remove-bottom\\\\\\\">My Internship has ended, Now wat next?<\\/h5>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<\\/div>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<\\/div>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t<\\/div>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t<div class=\\\\\\\"uk-card-body\\\\\\\">\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<p>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tDon\\u2019t forget to say thank you. \\u2013 It is your duty to personally thank everyone you worked\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tclosely with during the attachment period.\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tRecognition is important, even if you didn\\u2019t thoroughly enjoy the working experience.\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<\\/p>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t<\\/div>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t<div class=\\\\\\\"uk-card-footer\\\\\\\">\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<a href=\\\\\\\"http:\\/\\/localhost\\/careerDev\\/index.php\\/what-we-do#internshipEnded\\\\\\\" class=\\\\\\\"uk-button uk-button-text\\\\\\\">Read more<\\/a>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t<\\/div>\\\\n\\\\t\\\\t\\\\t\\\\t<\\/div>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\n\\\\t\\\\t\\\\t\\\\t<div class=\\\\\\\"uk-card uk-card-hover uk-card-body uk-text-center\\\\\\\">\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t<div class=\\\\\\\"uk-card-header\\\\\\\">\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<div class=\\\\\\\"uk-grid-small uk-flex-middle\\\\\\\" uk-grid>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<div class=\\\\\\\"uk-width-expand\\\\\\\">\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<h5 class=\\\\\\\"uk-card-title uk-margin-remove-bottom\\\\\\\">Accepting, Declining and Reneging Internship\\/Job Offers<\\/h5>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<\\/div>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<\\/div>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t<\\/div>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t<div class=\\\\\\\"uk-card-body\\\\\\\">\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<p>The Career development office encourages all students to be upfront and ethical in their\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\taction with employer. To maintain one\\u2019s professional\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\treputation and of the University, please adhere to these guidelines. <\\/p>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t<\\/div>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t<div class=\\\\\\\"uk-card-footer\\\\\\\">\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<a href=\\\\\\\"http:\\/\\/localhost\\/careerDev\\/index.php\\/what-we-do#acceptingOffer\\\\\\\" class=\\\\\\\"uk-button uk-button-text\\\\\\\">Read more<\\/a>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t<\\/div>\\\\n\\\\t\\\\t\\\\t\\\\t<\\/div>\\\\n\\\\t\\\\t\\\\t<\\/div>\\\\n\\\\t\\\\t<\\/div>\\\\n\\\\t<\\/div>\\\\n<\\/div>\\\",\\\"twig\\\":\\\"0\\\",\\\"filter\\\":\\\"0\\\"}}}\",\"moduleclass_sfx\":\"\",\"owncache\":\"0\",\"cache_time\":\"900\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(105, 78, 'What we do - Internship Ended', '', '', 1, 'whatWeDo-internshipEnded', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_gantry5_particle', 1, 0, '{\"particle\":\"{\\\"type\\\":\\\"particle\\\",\\\"particle\\\":\\\"custom\\\",\\\"title\\\":\\\"Custom HTML\\\",\\\"options\\\":{\\\"particle\\\":{\\\"enabled\\\":\\\"1\\\",\\\"html\\\":\\\"<div class=\\\\\\\"uk-section-default \\\\\\\" id=\\\\\\\"internshipEnded\\\\\\\">\\\\n\\\\t<div class=\\\\\\\"uk-section uk-background-cover\\\\\\\" style=\\\\\\\"background-image: url(bg-site.png)\\\\\\\">\\\\n\\\\t\\\\t<div class=\\\\\\\"uk-container\\\\\\\">\\\\n\\\\t\\\\t\\\\t<h2 style=\\\\\\\"color: black; font-size: 20px; font-weight: 300\\\\\\\" class=\\\\\\\"uk-text-large\\\\\\\">My Internship Has Ended \\u2013 Now What Next?<\\/h2>\\\\n\\\\t\\\\t\\\\t<hr class=\\\\\\\"uk-divider-icon\\\\\\\">\\\\n\\\\t\\\\t\\\\t<div class=\\\\\\\"uk-grid-match uk-child-width-1-2@m\\\\\\\" uk-grid>\\\\n\\\\t\\\\t\\\\t\\\\t<div style=\\\\\\\"color: black\\\\\\\">\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t<ul class=\\\\\\\"uk-list uk-list-striped\\\\\\\">\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<li><span uk-icon=\\\\\\\"triangle-right\\\\\\\"><\\/span>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<strong class=\\\\\\\"uk-text-primary\\\\\\\">Submit your Industrial Attachment log Book<\\/strong>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tat the Industrial Liaison and Career  Development Office<\\/li>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<li>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<span uk-icon=\\\\\\\"triangle-right\\\\\\\"><\\/span>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<strong class=\\\\\\\"uk-text-primary\\\\\\\">Don\\u2019t forget to say thank you.<\\/strong>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\u2013 It is your duty to personally thank everyone you worked closely with during the attachment period. Recognition\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tis important, even if you didn\\u2019t thoroughly enjoy the working experience.\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tVerbal \\u201cthank you\\u2019s\\u201d aren\\u2019t enough, either. Go with handwritten thank you note. To each person you write,\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tprovide specifics about what you appreciated. Maybe they showed you the rope on a new project or made your\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tlunch break more bearable by sharing a table with you. Whatever it is, avoid a canned response.\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<\\/li>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<li>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<span uk-icon=\\\\\\\"triangle-right\\\\\\\"><\\/span>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<strong class=\\\\\\\"uk-text-primary\\\\\\\"> Take stock of what you learned-<\\/strong>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tWrite down which soft skills you\\u2019ve developed, what responsibilities you took on at the office and your daily\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tand long-term contribution to the team. Think about how you became more adaptable, more communicative and more\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tmulticultural, etc. After taking stock of what you learned, which skills you honed and also the contributions\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tyou made to the organisation, then..\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<\\/li>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t<\\/ul>\\\\n\\\\t\\\\t\\\\t\\\\t<\\/div>\\\\n\\\\t\\\\t\\\\t\\\\t<div class=\\\\\\\"uk-text-center\\\\\\\">\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t<div class=\\\\\\\"uk-inline-clip \\\\\\\" tabindex=\\\\\\\"0\\\\\\\">\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<img src=\\\\\\\"internship.jpg\\\\\\\" style=\\\\\\\"height: 300px; \\\\\\\" alt=\\\\\\\"\\\\\\\">\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t<\\/div>\\\\n\\\\t\\\\t\\\\t\\\\t<\\/div>\\\\n\\\\t\\\\t\\\\t<\\/div>\\\\n\\\\t\\\\t\\\\t<div class=\\\\\\\"uk-grid-match uk-child-width-1-1@m\\\\\\\" uk-grid>\\\\n\\\\t\\\\t\\\\t\\\\t<div style=\\\\\\\"color: black\\\\\\\">\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t<ul class=\\\\\\\"uk-list uk-list-striped\\\\\\\">\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<li>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<span uk-icon=\\\\\\\"triangle-right\\\\\\\"><\\/span>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tIn updating your CV \\/ In crafting your elevator pitch \\/ In your next internship \\/ job search, etc. Look at that\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tand compare it to the job description and duties involved with the position that you want. Look at the company\\u2019s\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tvalues and mission, too. See how the skills you gained and your past experience make you a great candidate and\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tmake you stand out as a good fit. See how these can excellently sell you in an elevator pitch or can help you\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tcraft a self-selling resume.\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<\\/li>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<li>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<span uk-icon=\\\\\\\"triangle-right\\\\\\\"><\\/span>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<strong class=\\\\\\\"uk-text-primary\\\\\\\">Update your resume<\\/strong>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\twith your experience and newly developed skills.\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<\\/li>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<li>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<span uk-icon=\\\\\\\"triangle-right\\\\\\\"><\\/span>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<strong class=\\\\\\\"uk-text-primary\\\\\\\">\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tCreate or update your portfolio\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<\\/strong>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tto the able to show future employers,\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tevidence of the work you completed during your attachment.\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<\\/li>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<li>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<span uk-icon=\\\\\\\"triangle-right\\\\\\\"><\\/span>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tAsk your supervisor, if he or she is willing\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<strong class=\\\\\\\"uk-text-primary\\\\\\\">to serve as a reference for you<\\/strong>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<\\/li>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<li>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<span uk-icon=\\\\\\\"triangle-right\\\\\\\"><\\/span>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<strong class=\\\\\\\"uk-text-primary\\\\\\\">\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tBuild upon the experience.\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<\\/strong>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tIf you liked your internship, consider what you can do next to keep gaining\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\texperience in the field. Consider opportunities even on campus that can help\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tyou further develop your skills. Take initiative and start something or request\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tfor opportunities that may not even be opened up yet.\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<\\/li>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<li>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<span uk-icon=\\\\\\\"triangle-right\\\\\\\"><\\/span>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tIf you didn\\u2019t like the internship setting, job duties, or the industry as a whole, meet\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<strong class=\\\\\\\"uk-text-primary\\\\\\\">\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\twith a career counsellor to explore your next steps.\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<\\/strong>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<\\/li>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<li>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<span uk-icon=\\\\\\\"triangle-right\\\\\\\"><\\/span>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<strong class=\\\\\\\"uk-text-primary\\\\\\\">\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tDon\\u2019t lose touch\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<\\/strong>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tBuilding your network is essential to the future of your career. Everyone you\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tcame in contact with during your internship is a potentially valuable connection\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tfor another internship, job opening or professional development opportunity.\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<br>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tStay in touch with your fellow interns, co-workers and manager by connecting with\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tthem on social media sites. For instance, you can shoot your previous attachment\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tmanager an email, if you see the company has won an award, or check in with a former\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tco-worker to see how things are going since you left.\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<\\/li>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<li>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<span uk-icon=\\\\\\\"triangle-right\\\\\\\"><\\/span>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<strong class=\\\\\\\"uk-text-primary\\\\\\\">\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tIf you absolutely hated your internship, all\\u2019s not lost.\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<\\/strong>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tAt the very least, you now know which career path is definitely not for\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tyou and open up your option and explore some more. You can also meet with a\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tcareer counsellor to explore your next steps.\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<\\/li>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t<\\/ul>\\\\n\\\\t\\\\t\\\\t\\\\t<\\/div>\\\\n\\\\t\\\\t\\\\t<\\/div>\\\\n\\\\t\\\\t<\\/div>\\\\n\\\\t<\\/div>\\\\n<\\/div>\\\",\\\"twig\\\":\\\"0\\\",\\\"filter\\\":\\\"0\\\"}}}\",\"moduleclass_sfx\":\"\",\"owncache\":\"0\",\"cache_time\":\"900\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*');
INSERT INTO `crdev_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(106, 79, 'What we do - Accepting Offer', '', '', 1, 'whatWeDo-acceptOffer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_gantry5_particle', 1, 0, '{\"particle\":\"{\\\"type\\\":\\\"particle\\\",\\\"particle\\\":\\\"custom\\\",\\\"title\\\":\\\"Custom HTML\\\",\\\"options\\\":{\\\"particle\\\":{\\\"enabled\\\":\\\"1\\\",\\\"html\\\":\\\"<div class=\\\\\\\"uk-section-default \\\\\\\" id=\\\\\\\"acceptingOffer\\\\\\\">\\\\n\\\\t<div class=\\\\\\\"uk-section uk-background-cover\\\\\\\" style=\\\\\\\"background-image: url(bg-site.png)\\\\\\\">\\\\n\\\\t\\\\t<div class=\\\\\\\"uk-container\\\\\\\">\\\\n\\\\t\\\\t\\\\t<h2 style=\\\\\\\"color: black; font-size: 20px; font-weight: 300\\\\\\\" class=\\\\\\\"uk-text-large\\\\\\\">Accepting, Declining and Reneging Internship\\\\\\/Job Offers<\\\\\\/h2>\\\\n\\\\t\\\\t\\\\t<hr class=\\\\\\\"uk-divider-icon\\\\\\\">\\\\n\\\\t\\\\t\\\\t<div class=\\\\\\\"uk-grid-match uk-child-width-1-2@m\\\\\\\" uk-grid>\\\\n\\\\t\\\\t\\\\t\\\\t<div style=\\\\\\\"color: black\\\\\\\">\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t<p>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tThe Career development office encourages all students to be upfront\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tand ethical in their     action with employer. To maintain one\\u2019s\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tprofessional reputation and of the University, please adhere to\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tthese guidelines.\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t<\\\\\\/p>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t<h3>When should I accept an attachment\\\\\\/job offer?<\\\\\\/h3>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t<ul class=\\\\\\\"uk-list uk-list-bullet\\\\\\\">\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<li>Student should receive a written offer with specific job\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\ttitle\\\\\\/location\\\\\\/salary\\\\\\/benefits. Do not accept an offer until it is put in writing.\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<li>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tIf an organization give you a verbal offer,\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\trequest a written offer. A written letter is an acceptable offer.\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<\\\\\\/li>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t<\\\\\\/ul>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t<h3>How should I accept an offer?<\\\\\\/h3>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t<ul class=\\\\\\\"uk-list uk-list-bullet\\\\\\\">\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<li>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tCall the HR contact \\\\\\/ supervisor directly to let them know your decision.\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<li>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tRegardless of your decision, follow up with a letter.\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<\\\\\\/li>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t<\\\\\\/ul>\\\\n\\\\t\\\\t\\\\t\\\\t<\\\\\\/div>\\\\n\\\\t\\\\t\\\\t\\\\t<div class=\\\\\\\"uk-text-center\\\\\\\">\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t<div class=\\\\\\\"uk-inline-clip \\\\\\\" tabindex=\\\\\\\"0\\\\\\\">\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<img src=\\\\\\\"job-offer.jpg\\\\\\\" style=\\\\\\\"height: 300px; \\\\\\\" alt=\\\\\\\"\\\\\\\">\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t<\\\\\\/div>\\\\n\\\\t\\\\t\\\\t\\\\t<\\\\\\/div>\\\\n\\\\t\\\\t\\\\t<\\\\\\/div>\\\\n\\\\t\\\\t\\\\t<div class=\\\\\\\"uk-grid-match uk-child-width-1-1@m\\\\\\\" uk-grid>\\\\n\\\\t\\\\t\\\\t\\\\t<div style=\\\\\\\"color: black\\\\\\\">\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t<h3>Is my offer binding once I\\u2019ve accepting an offer?<\\\\\\/h3>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t<ul class=\\\\\\\"uk-list uk-list-bullet\\\\\\\">\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<li>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tOnce you have accepted a position, stay firm in your decision.\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tIf you have signed a contract with an organization, they might have\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tspecific penalties for students who renege the offer. It also reflects\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tpoorly on you and will block opportunities for fellow Takoradi Technical\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tUniversity students if you renege on accepted offer.\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<\\\\\\/li>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t<\\\\\\/ul>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t<h3>What do I do if I\\u2019m juggling multiple offers?<\\\\\\/h3>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t<ul class=\\\\\\\"uk-list uk-list-bullet\\\\\\\">\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<li>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tPrioritize what you are looking for in an attachment\\\\\\/job and think of the\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\taspects thereof. Consider work-life balance, your commute, salary, supervisor,\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tbenefits, flexible hours, available promotions, and the future of the organisation.\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<\\\\\\/li>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t<\\\\\\/ul>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t<h3> What should I do if I\\u2019ve already received one offer but I haven\\u2019t heard from my dream organization?<\\\\\\/h3>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t<ul class=\\\\\\\"uk-list uk-list-bullet\\\\\\\">\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<li>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tCommunicate with both parties.\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<\\\\\\/li>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<li>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tThe organization that has offered you the position: Notify that you are in the process of\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tfinishing up with the recruiting process and you hope to finalise your decision by a\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tspecific date (usually not more than 2-3 weeks).\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<\\\\\\/li>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t<\\\\\\/ul>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t<h3> What should I do if I\\u2019ve already received one offer but I haven\\u2019t heard from my dream organization?<\\\\\\/h3>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t<ul class=\\\\\\\"uk-list uk-list-bullet\\\\\\\">\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<li>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tCommunicate with both parties.\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<\\\\\\/li>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<li>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tThe organization that has offered you the position: Notify that you are in the process of\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tfinishing up with the recruiting process and you hope to finalise your decision by a\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tspecific date (usually not more than 2-3 weeks).\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<\\\\\\/li>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t<\\\\\\/ul>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t<h3>Are there any consequences to reneging an offer?<\\\\\\/h3>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t<ul class=\\\\\\\"uk-list uk-list-bullet\\\\\\\">\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<li>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tAbsolutely. Industries are few and recruiters are well connected-\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tyou could potentially harm your professional reputation, resulting in\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tlimited opportunities for you in the future.\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<\\\\\\/li>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t<\\\\\\/ul>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t<h3>I\\u2019ve already accepted an offer, but my dream organization just came through and offered me a position. What should I do?<\\\\\\/h3>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t<ul class=\\\\\\\"uk-list uk-list-bullet\\\\\\\">\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<li>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tSince you have accepted the first offer in good faith, it is not recommended that you accept the second offer .\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tIf you choose to accept the second offer, there can be negative consequences.\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<\\\\\\/li>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t<\\\\\\/ul>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t<h3>I\\u2019ve accepted an offer. What should I do next?<\\\\\\/h3>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t<ul class=\\\\\\\"uk-list uk-list-bullet\\\\\\\">\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<li>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tRemove yourself from the attachment\\\\\\/job search\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<\\\\\\/li>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<li>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tPolitely decline all remaining offers  by calling and emailing \\\\\\/writing to the recruiter\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<\\\\\\/li>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<li>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tCancel all remaining interviews.\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<\\\\\\/li>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t<\\\\\\/ul>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t<h3>How do I turn down an offer?<\\\\\\/h3>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t<ul class=\\\\\\\"uk-list uk-list-bullet\\\\\\\">\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<li>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tOnce you accepted and \\\\\\/or signed a formal contract with an employer accepting a job offer,\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\twrite all other organisations\\\\\\/companies that have made offers, and inform them of your decision.\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<\\\\\\/li>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<li>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tBe sure not to burn any bridges- at a future date you may have to work with the organisation\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tprofessionally, or you may want to contact them again for employment.\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<\\\\\\/li>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<li>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tBe positive and polite when declining an offer.\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<\\\\\\/li>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<li>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tAlways express your appreciation for any offer extended to you and also the interest and\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tconfidence the employer has shown to you.\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<\\\\\\/li>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t<\\\\\\/ul>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t<h3>How do I turn down an offer?<\\\\\\/h3>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t<ul class=\\\\\\\"uk-list uk-list-bullet\\\\\\\">\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<li>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tOnce you accepted and \\\\\\/or signed a formal contract with an employer accepting a job offer,\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\twrite all other organisations\\\\\\/companies that have made offers, and inform them of your decision.\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<\\\\\\/li>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<li>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tBe sure not to burn any bridges- at a future date you may have to work with the organisation\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tprofessionally, or you may want to contact them again for employment.\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<\\\\\\/li>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<li>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tBe positive and polite when declining an offer.\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<\\\\\\/li>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<li>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tAlways express your appreciation for any offer extended to you and also the interest and\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tconfidence the employer has shown to you.\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\t<\\\\\\/li>\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t<\\\\\\/ul>\\\\n\\\\t\\\\t\\\\t\\\\t<\\\\\\/div>\\\\n\\\\t\\\\t\\\\t<\\\\\\/div>\\\\n\\\\t\\\\t<\\\\\\/div>\\\\n\\\\t<\\\\\\/div>\\\\n<\\\\\\/div>\\\",\\\"twig\\\":\\\"0\\\",\\\"filter\\\":\\\"0\\\"}}}\",\"moduleclass_sfx\":\"\",\"owncache\":\"0\",\"cache_time\":\"900\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(107, 80, 'Send a message', '', '', 1, 'send-a-message', 906, '2018-07-05 15:24:28', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_gantry5_particle', 1, 0, '{\"particle\":\"{\\\"type\\\":\\\"particle\\\",\\\"particle\\\":\\\"custom\\\",\\\"title\\\":\\\"Custom HTML\\\",\\\"options\\\":{\\\"particle\\\":{\\\"enabled\\\":\\\"1\\\",\\\"html\\\":\\\"<div class=\\\\\\\"abovefooter-link\\\\\\\">\\\\n\\\\t<form>\\\\n\\\\t\\\\t<fieldset class=\\\\\\\"uk-fieldset\\\\\\\">\\\\n\\\\t\\\\t\\\\t\\\\n\\\\t\\\\t\\\\t<h3 class=\\\\\\\"abovefooter-title\\\\\\\">Send a message<\\/h3>\\\\n\\\\t\\\\t\\\\t<div class=\\\\\\\"uk-margin\\\\\\\">\\\\n\\\\t\\\\t\\\\t\\\\t<input class=\\\\\\\"uk-input\\\\\\\" type=\\\\\\\"email\\\\\\\" required placeholder=\\\\\\\"Enter your email\\\\\\\" aria-required=\\\\\\\"true\\\\\\\">\\\\n\\\\t\\\\t\\\\t<\\/div>\\\\n\\\\t\\\\t\\\\t\\\\n\\\\t\\\\t\\\\t<div class=\\\\\\\"uk-margin\\\\\\\">\\\\n\\\\t\\\\t\\\\t\\\\t<textarea class=\\\\\\\"uk-textarea\\\\\\\" rows=\\\\\\\"3\\\\\\\" placeholder=\\\\\\\"Message\\\\\\\" required><\\/textarea>\\\\n\\\\t\\\\t\\\\t<\\/div>\\\\n\\\\t\\\\t\\\\t\\\\n\\\\t\\\\t\\\\t<button class=\\\\\\\"uk-button-primary uk-button-small\\\\\\\">Send Message<\\/button>\\\\n\\\\t\\\\t<\\/fieldset>\\\\n\\\\t<\\/form>\\\\n<\\/div>\\\",\\\"twig\\\":\\\"0\\\",\\\"filter\\\":\\\"0\\\"}}}\",\"moduleclass_sfx\":\"\",\"owncache\":\"0\",\"cache_time\":\"900\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(108, 81, 'Quick Links', '', '', 1, 'quik-links', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_gantry5_particle', 1, 0, '{\"particle\":\"{\\\"type\\\":\\\"particle\\\",\\\"particle\\\":\\\"custom\\\",\\\"title\\\":\\\"Custom HTML\\\",\\\"options\\\":{\\\"particle\\\":{\\\"enabled\\\":\\\"1\\\",\\\"html\\\":\\\"<div class=\\\\\\\"abovefooter-link\\\\\\\">\\\\n\\\\t<h3 class=\\\\\\\"abovefooter-title\\\\\\\">Quick Links<\\/h3>\\\\n\\\\t<div class=\\\\\\\"uk-grid\\\\\\\">\\\\n\\\\t\\\\t<div class=\\\\\\\"uk-width-2-6\\\\\\\">\\\\n\\\\t\\\\t\\\\t<ul class=\\\\\\\"footer-links\\\\\\\">\\\\n\\\\t\\\\t\\\\t\\\\t<li><a href=http:\\/\\/localhost\\/careerDev\\/index.php\\/about-us>About us<\\/a><\\/li>\\\\n\\\\t\\\\t\\\\t\\\\t<li><a href=\\\\\\\"http:\\/\\/localhost\\/careerDev\\/index.php\\/what-we-do\\\\\\\">What we do<\\/a><\\/li>\\\\n\\\\t\\\\t\\\\t\\\\t<li><a href=\\\\\\\"#\\\\\\\">Latest News<\\/a><\\/li>\\\\n\\\\t\\\\t\\\\t\\\\t<li><a href=\\\\\\\"http:\\/\\/localhost\\/careerDev\\/index.php\\/contact-us\\\\\\\">Contact us<\\/a><\\/li>\\\\n\\\\t\\\\t\\\\t<\\/ul>\\\\n\\\\t\\\\t<\\/div>\\\\n\\\\t<\\/div>\\\\n<\\/div>\\\",\\\"twig\\\":\\\"0\\\",\\\"filter\\\":\\\"0\\\"}}}\",\"moduleclass_sfx\":\"\",\"owncache\":\"0\",\"cache_time\":\"900\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(109, 82, 'Find us', '', '', 1, 'find-us', 906, '2018-07-01 14:14:24', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_gantry5_particle', 1, 0, '{\"particle\":\"{\\\"type\\\":\\\"particle\\\",\\\"particle\\\":\\\"custom\\\",\\\"title\\\":\\\"Custom HTML\\\",\\\"options\\\":{\\\"particle\\\":{\\\"enabled\\\":\\\"1\\\",\\\"html\\\":\\\"<div class=\\\\\\\"abovefooter-ct\\\\\\\">\\\\n\\\\t<div class=\\\\\\\"abovefooter-link\\\\\\\">\\\\n\\\\t\\\\t<h3 class=\\\\\\\"abovefooter-title\\\\\\\">Find us<\\/h3>\\\\n\\\\t<\\/div>\\\\n\\\\t<div class=\\\\\\\"text\\\\\\\">\\\\n\\\\t\\\\t<ul class=\\\\\\\"footer-links\\\\\\\">\\\\n\\\\t\\\\t\\\\t<li><span class=\\\\\\\"fa fa-phone\\\\\\\"><\\/span> 0249051415<\\/li>\\\\n\\\\t\\\\t\\\\t<li><span class=\\\\\\\"fa fa-email\\\\\\\"> <\\/span>israelnkum@gmail.com<\\/li>\\\\n\\\\t\\\\t\\\\t<li>List item 3<\\/li>\\\\n\\\\t\\\\t<\\/ul>\\\\n\\\\t<\\/div>\\\\n\\\\t<ul class=\\\\\\\"social-icon-one\\\\\\\">\\\\n\\\\t\\\\t<li><a href=\\\\\\\"#\\\\\\\"><span class=\\\\\\\"fa fa-facebook-f\\\\\\\"><\\/span><\\/a><\\/li>\\\\n\\\\t\\\\t<li><a href=\\\\\\\"#\\\\\\\"><span class=\\\\\\\"fa fa-twitter\\\\\\\"><\\/span><\\/a><\\/li>\\\\n\\\\t\\\\t<li><a href=\\\\\\\"#\\\\\\\"><span class=\\\\\\\"fa fa-instagram\\\\\\\"><\\/span><\\/a><\\/li>\\\\n\\\\t\\\\t<li><a href=\\\\\\\"#\\\\\\\"><span class=\\\\\\\"fa fa-linkedin\\\\\\\"><\\/span><\\/a><\\/li>\\\\n\\\\t<\\/ul>\\\\n<\\/div>\\\",\\\"twig\\\":\\\"0\\\",\\\"filter\\\":\\\"0\\\"}}}\",\"moduleclass_sfx\":\"\",\"owncache\":\"0\",\"cache_time\":\"900\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(110, 83, 'Logo', '', '', 1, 'cr-logo', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_gantry5_particle', 1, 0, '{\"particle\":\"{\\\"type\\\":\\\"particle\\\",\\\"particle\\\":\\\"custom\\\",\\\"title\\\":\\\"Custom HTML\\\",\\\"options\\\":{\\\"particle\\\":{\\\"enabled\\\":\\\"1\\\",\\\"html\\\":\\\"<div class=\\\\\\\"abovefooter-ct\\\\\\\">\\\\n\\\\t<img src=\\\\\\\"logo1.png\\\\\\\" alt=\\\\\\\"\\\\\\\" \\\\\\/>\\\\n<\\\\\\/div>\\\"}}}\",\"moduleclass_sfx\":\"\",\"owncache\":\"0\",\"cache_time\":\"900\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(111, 88, 'New article', '', '', 1, 'whatWeDo-payVisit', 0, '0000-00-00 00:00:00', '2018-07-04 16:35:09', '0000-00-00 00:00:00', -2, 'mod_gantry5_particle', 1, 0, '{\"particle\":\"{\\\"type\\\":\\\"particle\\\",\\\"particle\\\":\\\"contentarray\\\",\\\"title\\\":\\\"Joomla Articles\\\",\\\"options\\\":{\\\"particle\\\":{\\\"enabled\\\":\\\"1\\\",\\\"article\\\":{\\\"filter\\\":{\\\"categories\\\":\\\"8\\\",\\\"articles\\\":\\\"\\\",\\\"featured\\\":\\\"include\\\"},\\\"limit\\\":{\\\"total\\\":\\\"2\\\",\\\"columns\\\":\\\"2\\\",\\\"start\\\":\\\"0\\\"},\\\"display\\\":{\\\"pagination_buttons\\\":\\\"\\\",\\\"image\\\":{\\\"enabled\\\":\\\"intro\\\"},\\\"text\\\":{\\\"type\\\":\\\"intro\\\",\\\"limit\\\":\\\"\\\",\\\"formatting\\\":\\\"text\\\"},\\\"title\\\":{\\\"enabled\\\":\\\"show\\\",\\\"limit\\\":\\\"\\\"},\\\"date\\\":{\\\"enabled\\\":\\\"published\\\",\\\"format\\\":\\\"l, F d, Y\\\"},\\\"read_more\\\":{\\\"enabled\\\":\\\"show\\\",\\\"label\\\":\\\"\\\",\\\"css\\\":\\\"\\\"},\\\"author\\\":{\\\"enabled\\\":\\\"show\\\"},\\\"category\\\":{\\\"enabled\\\":\\\"link\\\"},\\\"hits\\\":{\\\"enabled\\\":\\\"show\\\"}},\\\"sort\\\":{\\\"orderby\\\":\\\"publish_up\\\",\\\"ordering\\\":\\\"ASC\\\"}},\\\"css\\\":{\\\"class\\\":\\\"\\\"},\\\"extra\\\":[]}}}\",\"moduleclass_sfx\":\"\",\"owncache\":\"0\",\"cache_time\":\"900\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*');

-- --------------------------------------------------------

--
-- Table structure for table `crdev_modules_menu`
--

CREATE TABLE `crdev_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `crdev_modules_menu`
--

INSERT INTO `crdev_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(79, 0),
(86, 0),
(87, 0),
(92, 101),
(93, 0),
(95, 0),
(96, 0),
(97, 0),
(99, 0),
(100, 113),
(101, 101),
(102, 101),
(102, 114),
(103, 0),
(104, 101),
(105, 113),
(106, 113),
(107, 0),
(108, 0),
(109, 0),
(110, 0),
(111, 113);

-- --------------------------------------------------------

--
-- Table structure for table `crdev_newsfeeds`
--

CREATE TABLE `crdev_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `link` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `cache_time` int(10) UNSIGNED NOT NULL DEFAULT '3600',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crdev_overrider`
--

CREATE TABLE `crdev_overrider` (
  `id` int(10) NOT NULL COMMENT 'Primary Key',
  `constant` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `string` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crdev_postinstall_messages`
--

CREATE TABLE `crdev_postinstall_messages` (
  `postinstall_message_id` bigint(20) UNSIGNED NOT NULL,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language_extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `crdev_postinstall_messages`
--

INSERT INTO `crdev_postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`) VALUES
(1, 700, 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION', 'plg_twofactorauth_totp', 1, 'action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_condition', '3.2.0', 1),
(2, 700, 'COM_CPANEL_WELCOME_BEGINNERS_TITLE', 'COM_CPANEL_WELCOME_BEGINNERS_MESSAGE', '', 'com_cpanel', 1, 'message', '', '', '', '', '3.2.0', 1),
(3, 700, 'COM_CPANEL_MSG_STATS_COLLECTION_TITLE', 'COM_CPANEL_MSG_STATS_COLLECTION_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/statscollection.php', 'admin_postinstall_statscollection_condition', '3.5.0', 1),
(4, 700, 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME', 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_BODY', 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_ACTION', 'plg_system_updatenotification', 1, 'action', 'site://plugins/system/updatenotification/postinstall/updatecachetime.php', 'updatecachetime_postinstall_action', 'site://plugins/system/updatenotification/postinstall/updatecachetime.php', 'updatecachetime_postinstall_condition', '3.6.3', 1),
(5, 700, 'COM_CPANEL_MSG_JOOMLA40_PRE_CHECKS_TITLE', 'COM_CPANEL_MSG_JOOMLA40_PRE_CHECKS_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/joomla40checks.php', 'admin_postinstall_joomla40checks_condition', '3.7.0', 1),
(6, 700, 'TPL_HATHOR_MESSAGE_POSTINSTALL_TITLE', 'TPL_HATHOR_MESSAGE_POSTINSTALL_BODY', 'TPL_HATHOR_MESSAGE_POSTINSTALL_ACTION', 'tpl_hathor', 1, 'action', 'admin://templates/hathor/postinstall/hathormessage.php', 'hathormessage_postinstall_action', 'admin://templates/hathor/postinstall/hathormessage.php', 'hathormessage_postinstall_condition', '3.7.0', 1),
(7, 700, 'PLG_PLG_RECAPTCHA_VERSION_1_POSTINSTALL_TITLE', 'PLG_PLG_RECAPTCHA_VERSION_1_POSTINSTALL_BODY', 'PLG_PLG_RECAPTCHA_VERSION_1_POSTINSTALL_ACTION', 'plg_captcha_recaptcha', 1, 'action', 'site://plugins/captcha/recaptcha/postinstall/actions.php', 'recaptcha_postinstall_action', 'site://plugins/captcha/recaptcha/postinstall/actions.php', 'recaptcha_postinstall_condition', '3.8.6', 1);

-- --------------------------------------------------------

--
-- Table structure for table `crdev_quix_configs`
--

CREATE TABLE `crdev_quix_configs` (
  `name` varchar(255) NOT NULL,
  `params` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COMMENT='Store any configuration in key => params maps';

--
-- Dumping data for table `crdev_quix_configs`
--

INSERT INTO `crdev_quix_configs` (`name`, `params`) VALUES
('username', 'israelnkum'),
('key', '359433312b993b9a80b9448470d1da0d');

-- --------------------------------------------------------

--
-- Table structure for table `crdev_redirect_links`
--

CREATE TABLE `crdev_redirect_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `old_url` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `new_url` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `header` smallint(3) NOT NULL DEFAULT '301'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crdev_schemas`
--

CREATE TABLE `crdev_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `crdev_schemas`
--

INSERT INTO `crdev_schemas` (`extension_id`, `version_id`) VALUES
(700, '3.8.9-2018-06-19'),
(10025, '0.0.4');

-- --------------------------------------------------------

--
-- Table structure for table `crdev_session`
--

CREATE TABLE `crdev_session` (
  `session_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(3) UNSIGNED DEFAULT NULL,
  `guest` tinyint(4) UNSIGNED DEFAULT '1',
  `time` varchar(14) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` mediumtext COLLATE utf8mb4_unicode_ci,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `crdev_session`
--

INSERT INTO `crdev_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`) VALUES
('1dddcd46a1993d78f3d7a7e30377fd82', 1, 0, '1530804269', 'joomla|s:1256:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjo0OntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aTozMTtzOjU6InRva2VuIjtzOjMyOiJYZmRBWGxVY05EMkNxWHUxYXl0RUU4QTBOeVY2RHVQQiI7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNTMwNzk1NjM3O3M6NDoibGFzdCI7aToxNTMwODA0MjY4O3M6Mzoibm93IjtpOjE1MzA4MDQyNjk7fX1zOjg6InJlZ2lzdHJ5IjtPOjI0OiJKb29tbGFcUmVnaXN0cnlcUmVnaXN0cnkiOjM6e3M6NzoiACoAZGF0YSI7Tzo4OiJzdGRDbGFzcyI6Mjp7czoxMzoiY29tX2luc3RhbGxlciI7Tzo4OiJzdGRDbGFzcyI6Mjp7czo3OiJtZXNzYWdlIjtzOjA6IiI7czoxNzoiZXh0ZW5zaW9uX21lc3NhZ2UiO3M6MDoiIjt9czoxMToiY29tX21vZHVsZXMiO086ODoic3RkQ2xhc3MiOjI6e3M6NDoiZWRpdCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo2OiJtb2R1bGUiO086ODoic3RkQ2xhc3MiOjI6e3M6MjoiaWQiO2E6MTp7aTowO2k6MTA3O31zOjQ6ImRhdGEiO047fX1zOjM6ImFkZCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo2OiJtb2R1bGUiO086ODoic3RkQ2xhc3MiOjI6e3M6MTI6ImV4dGVuc2lvbl9pZCI7TjtzOjY6InBhcmFtcyI7Tjt9fX19czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7czozOiI5MDYiO31zOjExOiJhcHBsaWNhdGlvbiI7Tzo4OiJzdGRDbGFzcyI6MTp7czo1OiJxdWV1ZSI7YTowOnt9fX19czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9\";', 906, 'root'),
('923513cdf926280ea2844733d2a59d4b', 0, 1, '1530804841', 'joomla|s:668:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjI6e3M6NzoiY291bnRlciI7aToxNDtzOjU6InRpbWVyIjtPOjg6InN0ZENsYXNzIjozOntzOjU6InN0YXJ0IjtpOjE1MzA4MDQxMjk7czo0OiJsYXN0IjtpOjE1MzA4MDQ4MDU7czozOiJub3ciO2k6MTUzMDgwNDg0MTt9fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mzp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjowOnt9czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7aTowO319fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `crdev_tags`
--

CREATE TABLE `crdev_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `crdev_tags`
--

INSERT INTO `crdev_tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES
(1, 0, 0, 1, 0, '', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '', 906, '2018-06-28 18:11:52', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `crdev_template_styles`
--

CREATE TABLE `crdev_template_styles` (
  `id` int(10) UNSIGNED NOT NULL,
  `template` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `home` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `crdev_template_styles`
--

INSERT INTO `crdev_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(4, 'beez3', 0, '0', 'Beez3 - Default', '{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"logo\":\"images\\/joomla_black.png\",\"sitetitle\":\"Joomla!\",\"sitedescription\":\"Open Source Content Management\",\"navposition\":\"left\",\"templatecolor\":\"personal\",\"html5\":\"0\"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{\"showSiteName\":\"0\",\"colourChoice\":\"\",\"boldText\":\"0\"}'),
(7, 'protostar', 0, '0', 'protostar - Default', '{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}'),
(8, 'isis', 1, '1', 'isis - Default', '{\"templateColor\":\"\",\"logoFile\":\"\"}'),
(9, 'jl_bostan_free', 0, '0', 'Bostan Free - Default', '{\"preset\":null}'),
(10, 'jl_fix_free', 0, '0', 'Fix Free - Default', '{\"preset\":null}'),
(11, 'jl_raiseup_free', 0, '1', 'Raiseup Free - Default', '{\"preset\":null}');

-- --------------------------------------------------------

--
-- Table structure for table `crdev_ucm_base`
--

CREATE TABLE `crdev_ucm_base` (
  `ucm_id` int(10) UNSIGNED NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crdev_ucm_content`
--

CREATE TABLE `crdev_ucm_content` (
  `core_content_id` int(10) UNSIGNED NOT NULL,
  `core_type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `core_body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_checked_out_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_featured` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_content_item_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'ID from the individual type table',
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `core_images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Contains core content data in name spaced fields';

-- --------------------------------------------------------

--
-- Table structure for table `crdev_ucm_history`
--

CREATE TABLE `crdev_ucm_history` (
  `version_id` int(10) UNSIGNED NOT NULL,
  `ucm_item_id` int(10) UNSIGNED NOT NULL,
  `ucm_type_id` int(10) UNSIGNED NOT NULL,
  `version_note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `character_count` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `crdev_ucm_history`
--

INSERT INTO `crdev_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(1, 2, 5, '', '2018-06-28 22:22:45', 906, 962, '30ee5d64cc11be753ef91af69017daa1f158b1d6', '{\"id\":2,\"asset_id\":\"27\",\"parent_id\":\"1\",\"lft\":\"1\",\"rgt\":\"2\",\"level\":\"1\",\"path\":\"uncategorised\",\"extension\":\"com_content\",\"title\":\"Mission and Vision\",\"alias\":\"uncategorised\",\"note\":\"\",\"description\":\"<p>Remember, form follows function, in mission statements, as in all business.<\\/p>\\r\\n<p>Make it work for your business. ... Having great customer service is way<\\/p>\\r\\n<p>harder than writing that into a mission statement. Read other companies\'<\\/p>\\r\\n<p>mission statements, but write a statement that is about you and not some<\\/p>\\r\\n<p>other company.<\\/p>\",\"published\":\"1\",\"checked_out\":\"906\",\"checked_out_time\":\"2018-06-28 22:20:11\",\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"906\",\"created_time\":\"2018-06-28 18:11:52\",\"modified_user_id\":\"906\",\"modified_time\":\"2018-06-28 22:22:45\",\"hits\":\"0\",\"language\":\"*\",\"version\":\"1\"}', 0),
(2, 2, 5, '', '2018-06-28 22:23:32', 906, 601, '4ba85e44a723a4fa55f9d234076e1aaeb00d59ce', '{\"id\":2,\"asset_id\":\"27\",\"parent_id\":\"1\",\"lft\":\"1\",\"rgt\":\"2\",\"level\":\"1\",\"path\":\"uncategorised\",\"extension\":\"com_content\",\"title\":\"Mission and Vision\",\"alias\":\"uncategorised\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":\"906\",\"checked_out_time\":\"2018-06-28 22:22:45\",\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"906\",\"created_time\":\"2018-06-28 18:11:52\",\"modified_user_id\":\"906\",\"modified_time\":\"2018-06-28 22:23:32\",\"hits\":\"0\",\"language\":\"*\",\"version\":\"1\"}', 0),
(3, 1, 1, '', '2018-06-28 22:26:04', 906, 2108, 'a2a1dbc44fbbd642c2c49a2c2b9d977867a172b9', '{\"id\":1,\"asset_id\":70,\"title\":\"Mission\",\"alias\":\"mission\",\"introtext\":\"<p>Remember, form follows function, in mission statements, as in all business. Make it work for your business. ...<\\/p>\\r\\n<p>Having great customer service is way harder than writing that into a mission statement.<\\/p>\\r\\n<p>Read other companies\' mission statements, but write a statement that is about you and<\\/p>\\r\\n<p>not some other company.<\\/p>\\r\\n<p>\\u00a0<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2018-06-28 22:26:04\",\"created_by\":\"906\",\"created_by_alias\":\"\",\"modified\":\"2018-06-28 22:26:04\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2018-06-28 22:26:04\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(4, 1, 1, '', '2018-06-29 22:11:07', 906, 2127, '6901b867792c486dcbce7fd10623a8fc60c710a6', '{\"id\":1,\"asset_id\":\"70\",\"title\":\"Mission\",\"alias\":\"mission\",\"introtext\":\"<p>Remember, form follows function, in mission statements, as in all business. Make it work for your business. ...<\\/p>\\r\\n<p>Having great customer service is way harder than writing that into a mission statement.<\\/p>\\r\\n<p>Read other companies\' mission statements, but write a statement that is about you and<\\/p>\\r\\n<p>not some other company.<\\/p>\\r\\n<p>\\u00a0<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2018-06-28 22:26:04\",\"created_by\":\"906\",\"created_by_alias\":\"\",\"modified\":\"2018-06-29 22:11:07\",\"modified_by\":\"906\",\"checked_out\":\"906\",\"checked_out_time\":\"2018-06-29 22:10:28\",\"publish_up\":\"2018-06-28 22:26:04\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":3,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"0\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"1\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(5, 8, 5, '', '2018-07-01 22:49:13', 906, 579, '0c6fbfd6bfec3673db12be8c78e39c51bfbddb35', '{\"id\":8,\"asset_id\":84,\"parent_id\":\"1\",\"lft\":\"11\",\"rgt\":12,\"level\":1,\"path\":null,\"extension\":\"com_content\",\"title\":\"What we do - Pay Visit\",\"alias\":\"what-we-do-pay-visit\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"906\",\"created_time\":\"2018-07-01 22:49:13\",\"modified_user_id\":null,\"modified_time\":\"2018-07-01 22:49:13\",\"hits\":\"0\",\"language\":\"*\",\"version\":null}', 0),
(6, 9, 5, '', '2018-07-01 22:49:24', 906, 593, '69a0c05cecab15562d1feaf605be073b3e9a49ce', '{\"id\":9,\"asset_id\":85,\"parent_id\":\"1\",\"lft\":\"13\",\"rgt\":14,\"level\":1,\"path\":null,\"extension\":\"com_content\",\"title\":\"What we do - Internship Ended\",\"alias\":\"what-we-do-internship-ended\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"906\",\"created_time\":\"2018-07-01 22:49:24\",\"modified_user_id\":null,\"modified_time\":\"2018-07-01 22:49:24\",\"hits\":\"0\",\"language\":\"*\",\"version\":null}', 0),
(7, 10, 5, '', '2018-07-01 22:49:30', 906, 592, 'f274848e7695b690182ba636e09f2231f760b509', '{\"id\":10,\"asset_id\":86,\"parent_id\":\"1\",\"lft\":\"15\",\"rgt\":16,\"level\":1,\"path\":null,\"extension\":\"com_content\",\"title\":\"What we do - Accepting Offer\",\"alias\":\"what-we-do-accepting-offer\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"906\",\"created_time\":\"2018-07-01 22:49:30\",\"modified_user_id\":null,\"modified_time\":\"2018-07-01 22:49:30\",\"hits\":\"0\",\"language\":\"*\",\"version\":null}', 0),
(8, 2, 1, '', '2018-07-01 22:55:19', 906, 4197, 'b2b8d552765fa8a41bfda5a7dae41d4c9c48df04', '{\"id\":2,\"asset_id\":87,\"title\":\"Pay Visit to career Development office\",\"alias\":\"pay-visit-to-career-development-office\",\"introtext\":\"<h3>WHY SHOULD I PAY A VISIT TO THE CAREER DEVELOPMENT OFFICE?<\\/h3>\\r\\n<ol>\\r\\n<li>Get access to professionals who are specifically trained to assist you with your career-related concerns.<\\/li>\\r\\n<li>It\\u2019s the appropriate office on campus that provides useful information to enable you figure out what you want to do with your life, not only when you\\u2019re about to start your job hunt, but also when you want to learn more about yourself - your interests, skills, values, personality.<\\/li>\\r\\n<li>We work closely with employers who may someday hire you in order to develop internship and full-time opportunities for your future career.<\\/li>\\r\\n<li>Our Career Development staffs are ever ready to interact with you on daily basis so as to be conversant with your skills, strengths, weaknesses, potential, growth and development areas, etc. for reference to an employer who may be looking for your caliber to fill a specific position.<\\/li>\\r\\n<li>Career Development Office will not offer you a job; job searching is hard work and requires much effort on your part. We will expose you to a world of opportunities, resources and needed guidance which you will utilise to explore and develop yourself, in order to carve a thriving career.<\\/li>\\r\\n<li>Attend workshops offered by Career Development Office starting in your first year. The Career Development Office is for all students in the university, not just final year students. If you wait until your last semester to start visiting the Career Development Office, you have waited too long and may not find the assistance you are looking for. Get in early - meet the staff - and start developing your career early, and you will be put miles ahead of your mates.<\\/li>\\r\\n<\\/ol>\\r\\n<p><strong>You are paying for it! Your fees have paid for the support the Career Development Office provides. Therefore, not taking advantage of it simply means you are not utilising some part of your fees. If you are struggling with a career decision, and you need help on your resume, or you aren\\u2019t sure how to get started with the internship and job search, you must contact Career Development Office to schedule an appointment at Room 2, Annan Block, next to the Procurement Office or send a mail to career development.office@ttu.edu.gh or career development.office@gmail.com. Let us know if we are not making you feel welcome.<\\/strong><\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"8\",\"created\":\"2018-07-01 22:55:19\",\"created_by\":\"906\",\"created_by_alias\":\"\",\"modified\":\"2018-07-01 22:55:19\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2018-07-01 22:55:19\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(9, 11, 5, '', '2018-07-04 16:36:56', 906, 556, '23a9b720cf0e750fded7852ba9d4e1a13b502765', '{\"id\":11,\"asset_id\":89,\"parent_id\":\"1\",\"lft\":\"17\",\"rgt\":18,\"level\":1,\"path\":null,\"extension\":\"com_content\",\"title\":\"Pay Visit\",\"alias\":\"pay-visit\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"906\",\"created_time\":\"2018-07-04 16:36:56\",\"modified_user_id\":null,\"modified_time\":\"2018-07-04 16:36:56\",\"hits\":\"0\",\"language\":\"*\",\"version\":null}', 0),
(10, 12, 5, '', '2018-07-04 16:37:17', 906, 570, 'f8897b9e0a4b44c135ba25ef8932c5b6c46d2ee7', '{\"id\":12,\"asset_id\":90,\"parent_id\":\"1\",\"lft\":\"19\",\"rgt\":20,\"level\":1,\"path\":null,\"extension\":\"com_content\",\"title\":\"Internship Ended\",\"alias\":\"internship-ended\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"906\",\"created_time\":\"2018-07-04 16:37:17\",\"modified_user_id\":null,\"modified_time\":\"2018-07-04 16:37:17\",\"hits\":\"0\",\"language\":\"*\",\"version\":null}', 0),
(11, 13, 5, '', '2018-07-04 16:37:33', 906, 568, 'bff151a1f238dc2b8bd4af96505c5ce32f9544c0', '{\"id\":13,\"asset_id\":91,\"parent_id\":\"1\",\"lft\":\"21\",\"rgt\":22,\"level\":1,\"path\":null,\"extension\":\"com_content\",\"title\":\"Accepting Offer\",\"alias\":\"accepting-offer\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"906\",\"created_time\":\"2018-07-04 16:37:33\",\"modified_user_id\":null,\"modified_time\":\"2018-07-04 16:37:33\",\"hits\":\"0\",\"language\":\"*\",\"version\":null}', 0),
(12, 14, 5, '', '2018-07-04 16:37:58', 906, 552, 'a63f26381b0b21c80873ba09d0835e64d2cf6e17', '{\"id\":14,\"asset_id\":92,\"parent_id\":\"1\",\"lft\":\"23\",\"rgt\":24,\"level\":1,\"path\":null,\"extension\":\"com_content\",\"title\":\"General\",\"alias\":\"general\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"906\",\"created_time\":\"2018-07-04 16:37:58\",\"modified_user_id\":null,\"modified_time\":\"2018-07-04 16:37:58\",\"hits\":\"0\",\"language\":\"*\",\"version\":null}', 0),
(13, 3, 1, '', '2018-07-04 17:01:50', 906, 4196, '6b22eb153ca2646a2713179102173d26ff49a8d9', '{\"id\":3,\"asset_id\":93,\"title\":\"why pay visit\",\"alias\":\"why-pay-visit\",\"introtext\":\"<p>WHY SHOULD I PAY A VISIT TO THE CAREER DEVELOPMENT OFFICE?<\\/p>\\r\\n<p>1. Get access to professionals who are specifically trained to assist you with your career-related concerns.<\\/p>\\r\\n<p>2. It\\u2019s the appropriate office on campus that provides useful information to enable you figure out what you want to do with your life, not only when you\\u2019re about to start your job hunt, but also when you want to learn more about yourself - your interests, skills, values, personality.<\\/p>\\r\\n<p>3. We work closely with employers who may someday hire you in order to develop internship and full-time opportunities for your future career.<\\/p>\\r\\n<p>4. Our Career Development staffs are ever ready to interact with you on daily basis so as to be conversant with your skills, strengths, weaknesses, potential, growth and development areas, etc. for reference to an employer who may be looking for your caliber to fill a specific position.<\\/p>\\r\\n<p>5. Career Development Office will not offer you a job; job searching is hard work and requires much effort on your part. We will expose you to a world of opportunities, resources and needed guidance which you will utilise to explore and develop yourself, in order to carve a thriving career.<\\/p>\\r\\n<p>6. Attend workshops offered by Career Development Office starting in your first year. The Career Development Office is for all students in the university, not just final year students. If you wait until your last semester to start visiting the Career Development Office, you have waited too long and may not find the assistance you are looking for. Get in early - meet the staff - and start developing your career early, and you will be put miles ahead of your mates.<\\/p>\\r\\n<p>7. You are paying for it! Your fees have paid for the support the Career Development Office provides. Therefore, not taking advantage of it simply means you are not utilising some part of your fees.<\\/p>\\r\\n<p>If you are struggling with a career decision, and you need help on your resume, or you aren\\u2019t sure how to get started with the internship and job search, you must contact Career Development Office to schedule an appointment at Room 2, Annan Block, next to the Procurement Office or send a mail to career development.office@ttu.edu.gh or career <a href=\\\"mailto:development.office@gmail.com.\\\">development.office@gmail.com. <\\/a><\\/p>\\r\\n<p>Let us know if we are not making you feel welcome.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"11\",\"created\":\"2018-07-04 17:01:50\",\"created_by\":\"906\",\"created_by_alias\":\"\",\"modified\":\"2018-07-04 17:01:50\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2018-07-04 17:01:50\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `crdev_updates`
--

CREATE TABLE `crdev_updates` (
  `update_id` int(11) NOT NULL,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `folder` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detailsurl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `infourl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Available Updates';

--
-- Dumping data for table `crdev_updates`
--

INSERT INTO `crdev_updates` (`update_id`, `update_site_id`, `extension_id`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`, `extra_query`) VALUES
(1, 2, 0, 'Armenian', '', 'pkg_hy-AM', 'package', '', 0, '3.4.4.1', '', 'https://update.joomla.org/language/details3/hy-AM_details.xml', '', ''),
(2, 2, 0, 'Malay', '', 'pkg_ms-MY', 'package', '', 0, '3.4.1.2', '', 'https://update.joomla.org/language/details3/ms-MY_details.xml', '', ''),
(3, 2, 0, 'Romanian', '', 'pkg_ro-RO', 'package', '', 0, '3.7.3.1', '', 'https://update.joomla.org/language/details3/ro-RO_details.xml', '', ''),
(4, 2, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '3.8.10.1', '', 'https://update.joomla.org/language/details3/nl-BE_details.xml', '', ''),
(5, 2, 0, 'Chinese Traditional', '', 'pkg_zh-TW', 'package', '', 0, '3.8.0.1', '', 'https://update.joomla.org/language/details3/zh-TW_details.xml', '', ''),
(6, 2, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '3.8.10.1', '', 'https://update.joomla.org/language/details3/fr-FR_details.xml', '', ''),
(7, 2, 0, 'Galician', '', 'pkg_gl-ES', 'package', '', 0, '3.3.1.2', '', 'https://update.joomla.org/language/details3/gl-ES_details.xml', '', ''),
(8, 2, 0, 'Georgian', '', 'pkg_ka-GE', 'package', '', 0, '3.8.10.1', '', 'https://update.joomla.org/language/details3/ka-GE_details.xml', '', ''),
(9, 2, 0, 'Greek', '', 'pkg_el-GR', 'package', '', 0, '3.8.10.1', '', 'https://update.joomla.org/language/details3/el-GR_details.xml', '', ''),
(10, 2, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '3.8.10.1', '', 'https://update.joomla.org/language/details3/ja-JP_details.xml', '', ''),
(11, 2, 0, 'Hebrew', '', 'pkg_he-IL', 'package', '', 0, '3.1.1.2', '', 'https://update.joomla.org/language/details3/he-IL_details.xml', '', ''),
(12, 2, 0, 'Bengali', '', 'pkg_bn-BD', 'package', '', 0, '3.8.5.1', '', 'https://update.joomla.org/language/details3/bn-BD_details.xml', '', ''),
(13, 2, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '3.8.7.1', '', 'https://update.joomla.org/language/details3/hu-HU_details.xml', '', ''),
(14, 2, 0, 'Afrikaans', '', 'pkg_af-ZA', 'package', '', 0, '3.8.10.1', '', 'https://update.joomla.org/language/details3/af-ZA_details.xml', '', ''),
(15, 2, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '3.7.5.1', '', 'https://update.joomla.org/language/details3/ar-AA_details.xml', '', ''),
(16, 2, 0, 'Belarusian', '', 'pkg_be-BY', 'package', '', 0, '3.2.1.2', '', 'https://update.joomla.org/language/details3/be-BY_details.xml', '', ''),
(17, 2, 0, 'Bulgarian', '', 'pkg_bg-BG', 'package', '', 0, '3.6.5.2', '', 'https://update.joomla.org/language/details3/bg-BG_details.xml', '', ''),
(18, 2, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '3.8.3.3', '', 'https://update.joomla.org/language/details3/ca-ES_details.xml', '', ''),
(19, 2, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '3.8.10.1', '', 'https://update.joomla.org/language/details3/zh-CN_details.xml', '', ''),
(20, 2, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '3.8.5.1', '', 'https://update.joomla.org/language/details3/hr-HR_details.xml', '', ''),
(21, 2, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '3.8.10.1', '', 'https://update.joomla.org/language/details3/cs-CZ_details.xml', '', ''),
(22, 2, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '3.8.10.1', '', 'https://update.joomla.org/language/details3/da-DK_details.xml', '', ''),
(23, 2, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '3.8.9.1', '', 'https://update.joomla.org/language/details3/nl-NL_details.xml', '', ''),
(24, 2, 0, 'Esperanto', '', 'pkg_eo-XX', 'package', '', 0, '3.8.8.1', '', 'https://update.joomla.org/language/details3/eo-XX_details.xml', '', ''),
(25, 2, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '3.8.10.1', '', 'https://update.joomla.org/language/details3/et-EE_details.xml', '', ''),
(26, 2, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '3.8.10.1', '', 'https://update.joomla.org/language/details3/it-IT_details.xml', '', ''),
(27, 2, 0, 'Khmer', '', 'pkg_km-KH', 'package', '', 0, '3.4.5.1', '', 'https://update.joomla.org/language/details3/km-KH_details.xml', '', ''),
(28, 2, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '3.8.7.3', '', 'https://update.joomla.org/language/details3/ko-KR_details.xml', '', ''),
(29, 2, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '3.7.3.1', '', 'https://update.joomla.org/language/details3/lv-LV_details.xml', '', ''),
(30, 2, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/mk-MK_details.xml', '', ''),
(31, 2, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '3.8.9.1', '', 'https://update.joomla.org/language/details3/nb-NO_details.xml', '', ''),
(32, 2, 0, 'Norwegian Nynorsk', '', 'pkg_nn-NO', 'package', '', 0, '3.4.2.1', '', 'https://update.joomla.org/language/details3/nn-NO_details.xml', '', ''),
(33, 2, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '3.8.8.1', '', 'https://update.joomla.org/language/details3/fa-IR_details.xml', '', ''),
(34, 2, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '3.8.8.2', '', 'https://update.joomla.org/language/details3/pl-PL_details.xml', '', ''),
(35, 2, 0, 'Portuguese', '', 'pkg_pt-PT', 'package', '', 0, '3.8.2.1', '', 'https://update.joomla.org/language/details3/pt-PT_details.xml', '', ''),
(36, 2, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '3.8.2.1', '', 'https://update.joomla.org/language/details3/ru-RU_details.xml', '', ''),
(37, 2, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '3.8.10.1', '', 'https://update.joomla.org/language/details3/en-AU_details.xml', '', ''),
(38, 2, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '3.8.10.1', '', 'https://update.joomla.org/language/details3/sk-SK_details.xml', '', ''),
(39, 2, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '3.8.10.1', '', 'https://update.joomla.org/language/details3/en-US_details.xml', '', ''),
(40, 2, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '3.8.10.1', '', 'https://update.joomla.org/language/details3/sv-SE_details.xml', '', ''),
(41, 2, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '3.4.5.1', '', 'https://update.joomla.org/language/details3/sy-IQ_details.xml', '', ''),
(42, 2, 0, 'Tamil', '', 'pkg_ta-IN', 'package', '', 0, '3.8.10.1', '', 'https://update.joomla.org/language/details3/ta-IN_details.xml', '', ''),
(43, 2, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '3.8.10.1', '', 'https://update.joomla.org/language/details3/th-TH_details.xml', '', ''),
(44, 2, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '3.8.2.1', '', 'https://update.joomla.org/language/details3/tr-TR_details.xml', '', ''),
(45, 2, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '3.7.1.1', '', 'https://update.joomla.org/language/details3/uk-UA_details.xml', '', ''),
(46, 2, 0, 'Uyghur', '', 'pkg_ug-CN', 'package', '', 0, '3.7.5.1', '', 'https://update.joomla.org/language/details3/ug-CN_details.xml', '', ''),
(47, 2, 0, 'Albanian', '', 'pkg_sq-AL', 'package', '', 0, '3.1.1.2', '', 'https://update.joomla.org/language/details3/sq-AL_details.xml', '', ''),
(48, 2, 0, 'Basque', '', 'pkg_eu-ES', 'package', '', 0, '3.7.5.1', '', 'https://update.joomla.org/language/details3/eu-ES_details.xml', '', ''),
(49, 2, 0, 'Hindi', '', 'pkg_hi-IN', 'package', '', 0, '3.3.6.2', '', 'https://update.joomla.org/language/details3/hi-IN_details.xml', '', ''),
(50, 2, 0, 'German DE', '', 'pkg_de-DE', 'package', '', 0, '3.8.10.2', '', 'https://update.joomla.org/language/details3/de-DE_details.xml', '', ''),
(51, 2, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '3.8.10.1', '', 'https://update.joomla.org/language/details3/pt-BR_details.xml', '', ''),
(52, 2, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '3.8.10.1', '', 'https://update.joomla.org/language/details3/sr-YU_details.xml', '', ''),
(53, 2, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '3.8.8.1', '', 'https://update.joomla.org/language/details3/es-ES_details.xml', '', ''),
(54, 2, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '3.8.8.1', '', 'https://update.joomla.org/language/details3/bs-BA_details.xml', '', ''),
(55, 2, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '3.8.10.1', '', 'https://update.joomla.org/language/details3/sr-RS_details.xml', '', ''),
(56, 2, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '3.2.1.2', '', 'https://update.joomla.org/language/details3/vi-VN_details.xml', '', ''),
(57, 2, 0, 'Bahasa Indonesia', '', 'pkg_id-ID', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/id-ID_details.xml', '', ''),
(58, 2, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '3.8.1.1', '', 'https://update.joomla.org/language/details3/fi-FI_details.xml', '', ''),
(59, 2, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '3.8.8.1', '', 'https://update.joomla.org/language/details3/sw-KE_details.xml', '', ''),
(60, 2, 0, 'Montenegrin', '', 'pkg_srp-ME', 'package', '', 0, '3.3.1.2', '', 'https://update.joomla.org/language/details3/srp-ME_details.xml', '', ''),
(61, 2, 0, 'English CA', '', 'pkg_en-CA', 'package', '', 0, '3.8.10.1', '', 'https://update.joomla.org/language/details3/en-CA_details.xml', '', ''),
(62, 2, 0, 'French CA', '', 'pkg_fr-CA', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/fr-CA_details.xml', '', ''),
(63, 2, 0, 'Welsh', '', 'pkg_cy-GB', 'package', '', 0, '3.8.5.1', '', 'https://update.joomla.org/language/details3/cy-GB_details.xml', '', ''),
(64, 2, 0, 'Sinhala', '', 'pkg_si-LK', 'package', '', 0, '3.3.1.2', '', 'https://update.joomla.org/language/details3/si-LK_details.xml', '', ''),
(65, 2, 0, 'Dari Persian', '', 'pkg_prs-AF', 'package', '', 0, '3.4.4.2', '', 'https://update.joomla.org/language/details3/prs-AF_details.xml', '', ''),
(66, 2, 0, 'Turkmen', '', 'pkg_tk-TM', 'package', '', 0, '3.5.0.2', '', 'https://update.joomla.org/language/details3/tk-TM_details.xml', '', ''),
(67, 2, 0, 'Irish', '', 'pkg_ga-IE', 'package', '', 0, '3.8.7.1', '', 'https://update.joomla.org/language/details3/ga-IE_details.xml', '', ''),
(68, 2, 0, 'Dzongkha', '', 'pkg_dz-BT', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/dz-BT_details.xml', '', ''),
(69, 2, 0, 'Slovenian', '', 'pkg_sl-SI', 'package', '', 0, '3.8.10.1', '', 'https://update.joomla.org/language/details3/sl-SI_details.xml', '', ''),
(70, 2, 0, 'Spanish CO', '', 'pkg_es-CO', 'package', '', 0, '3.8.6.1', '', 'https://update.joomla.org/language/details3/es-CO_details.xml', '', ''),
(71, 2, 0, 'German CH', '', 'pkg_de-CH', 'package', '', 0, '3.8.10.2', '', 'https://update.joomla.org/language/details3/de-CH_details.xml', '', ''),
(72, 2, 0, 'German AT', '', 'pkg_de-AT', 'package', '', 0, '3.8.10.2', '', 'https://update.joomla.org/language/details3/de-AT_details.xml', '', ''),
(73, 2, 0, 'German LI', '', 'pkg_de-LI', 'package', '', 0, '3.8.10.2', '', 'https://update.joomla.org/language/details3/de-LI_details.xml', '', ''),
(74, 2, 0, 'German LU', '', 'pkg_de-LU', 'package', '', 0, '3.8.10.2', '', 'https://update.joomla.org/language/details3/de-LU_details.xml', '', ''),
(75, 2, 0, 'English NZ', '', 'pkg_en-NZ', 'package', '', 0, '3.8.10.1', '', 'https://update.joomla.org/language/details3/en-NZ_details.xml', '', ''),
(76, 6, 10009, 'pkg_gantry5', 'Gantry Framework', 'pkg_gantry5', 'package', '', 0, '5.4.24', '', 'http://updates.gantry.org/5.0/joomla/pkg_gantry5.xml', 'http://docs.gantry.org/gantry5', ''),
(77, 7, 0, 'Hydrogen', 'Hydrogen Template', 'g5_hydrogen', 'template', '', 0, '5.4.24', '', 'http://updates.gantry.org/5.0/joomla/tpl_g5_hydrogen.xml', '', ''),
(78, 7, 0, 'Helium', 'Helium Template', 'g5_helium', 'template', '', 0, '5.4.24', '', 'http://updates.gantry.org/5.0/joomla/tpl_g5_helium.xml', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `crdev_update_sites`
--

CREATE TABLE `crdev_update_sites` (
  `update_site_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `location` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Update Sites';

--
-- Dumping data for table `crdev_update_sites`
--

INSERT INTO `crdev_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`) VALUES
(1, 'Joomla! Core', 'collection', 'https://update.joomla.org/core/list.xml', 1, 1530804044, ''),
(2, 'Accredited Joomla! Translations', 'collection', 'https://update.joomla.org/language/translationlist_3.xml', 1, 1530804046, ''),
(3, 'Joomla! Update Component Update Site', 'extension', 'https://update.joomla.org/core/extensions/com_joomlaupdate.xml', 1, 1530804047, ''),
(4, 'WebInstaller Update Site', 'extension', 'https://appscdn.joomla.org/webapps/jedapps/webinstaller.xml', 1, 1530804047, ''),
(5, 'iQuix', 'extension', 'https://raw.githubusercontent.com/themexpert/iquix/master/mainfest.xml', 1, 1530804049, ''),
(6, 'Gantry 5', 'extension', 'http://updates.gantry.org/5.0/joomla/pkg_gantry5.xml', 1, 1530804050, ''),
(7, 'Gantry 5', 'collection', 'http://updates.gantry.org/5.0/joomla/list.xml', 1, 1530804050, ''),
(8, 'JMG Image Hover\'s Updates', 'extension', 'http://joomega.com/updates/mod_jmg_imghover/extension.xml', 1, 1530804070, ''),
(9, 'Xpert Scroller Update', 'extension', 'http://www.themexpert.com/ustreams/extensions/xpertscroller.xml', 1, 1530804079, ''),
(10, 'JCE Editor Package', 'collection', 'https://cdn.joomlacontenteditor.net/updates/xml/pkg_jce.xml', 1, 1530804080, ''),
(11, 'MOD_JM_BEST_FEATURES', 'extension', 'https://joomla-monster.com/updates/mod_jm_best_features.xml', 1, 1530804091, '');

-- --------------------------------------------------------

--
-- Table structure for table `crdev_update_sites_extensions`
--

CREATE TABLE `crdev_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Links extensions to update sites';

--
-- Dumping data for table `crdev_update_sites_extensions`
--

INSERT INTO `crdev_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 802),
(3, 28),
(4, 10000),
(5, 10001),
(6, 10009),
(7, 10009),
(8, 10012),
(9, 10014),
(10, 10024),
(11, 10031);

-- --------------------------------------------------------

--
-- Table structure for table `crdev_usergroups`
--

CREATE TABLE `crdev_usergroups` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `crdev_usergroups`
--

INSERT INTO `crdev_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 18, 'Public'),
(2, 1, 8, 15, 'Registered'),
(3, 2, 9, 14, 'Author'),
(4, 3, 10, 13, 'Editor'),
(5, 4, 11, 12, 'Publisher'),
(6, 1, 4, 7, 'Manager'),
(7, 6, 5, 6, 'Administrator'),
(8, 1, 16, 17, 'Super Users'),
(9, 1, 2, 3, 'Guest');

-- --------------------------------------------------------

--
-- Table structure for table `crdev_users`
--

CREATE TABLE `crdev_users` (
  `id` int(11) NOT NULL,
  `name` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `crdev_users`
--

INSERT INTO `crdev_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `otpKey`, `otep`, `requireReset`) VALUES
(906, 'Super User', 'root', 'israelnkum@gmail.com', '$2y$10$w5yVaVmrIFohU5VHadywLuaGTS1xfkpZyMMaypLOhUAdeB4ECsSEC', 0, 1, '2018-06-28 18:11:52', '2018-07-05 15:20:39', '0', '', '0000-00-00 00:00:00', 0, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `crdev_user_keys`
--

CREATE TABLE `crdev_user_keys` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `series` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uastring` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crdev_user_notes`
--

CREATE TABLE `crdev_user_notes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) UNSIGNED NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crdev_user_profiles`
--

CREATE TABLE `crdev_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Table structure for table `crdev_user_usergroup_map`
--

CREATE TABLE `crdev_user_usergroup_map` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `crdev_user_usergroup_map`
--

INSERT INTO `crdev_user_usergroup_map` (`user_id`, `group_id`) VALUES
(906, 8);

-- --------------------------------------------------------

--
-- Table structure for table `crdev_utf8_conversion`
--

CREATE TABLE `crdev_utf8_conversion` (
  `converted` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `crdev_utf8_conversion`
--

INSERT INTO `crdev_utf8_conversion` (`converted`) VALUES
(2);

-- --------------------------------------------------------

--
-- Table structure for table `crdev_viewlevels`
--

CREATE TABLE `crdev_viewlevels` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `crdev_viewlevels`
--

INSERT INTO `crdev_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 2, '[6,2,8]'),
(3, 'Special', 3, '[6,3,8]'),
(5, 'Guest', 1, '[9]'),
(6, 'Super Users', 4, '[8]');

-- --------------------------------------------------------

--
-- Table structure for table `crdev_wf_profiles`
--

CREATE TABLE `crdev_wf_profiles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `users` text NOT NULL,
  `types` text NOT NULL,
  `components` text NOT NULL,
  `area` tinyint(3) NOT NULL,
  `device` varchar(255) NOT NULL,
  `rows` text NOT NULL,
  `plugins` text NOT NULL,
  `published` tinyint(3) NOT NULL,
  `ordering` int(11) NOT NULL,
  `checked_out` tinyint(3) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `params` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `crdev_wf_profiles`
--

INSERT INTO `crdev_wf_profiles` (`id`, `name`, `description`, `users`, `types`, `components`, `area`, `device`, `rows`, `plugins`, `published`, `ordering`, `checked_out`, `checked_out_time`, `params`) VALUES
(1, 'Default', 'Default Profile for all users', '', '3,4,5,6,8,7', '', 0, 'desktop,tablet,phone', 'help,newdocument,undo,redo,spacer,bold,italic,underline,strikethrough,justifyfull,justifycenter,justifyleft,justifyright,spacer,blockquote,formatselect,styleselect,removeformat,cleanup;fontselect,fontsizeselect,fontcolor,spacer,clipboard,indent,outdent,lists,sub,sup,textcase,charmap,hr;directionality,fullscreen,print,searchreplace,spacer,table,style,xhtmlxtras;visualaid,visualchars,visualblocks,nonbreaking,anchor,unlink,link,imgmanager,spellchecker,article', 'formatselect,styleselect,cleanup,fontselect,fontsizeselect,fontcolor,clipboard,lists,textcase,charmap,hr,directionality,fullscreen,print,searchreplace,table,style,xhtmlxtras,visualchars,visualblocks,nonbreaking,anchor,link,imgmanager,spellchecker,article,spellchecker,article,browser,contextmenu,inlinepopups,media,preview,source', 1, 1, 0, '0000-00-00 00:00:00', ''),
(2, 'Front End', 'Sample Front-end Profile', '', '3,4,5', '', 1, 'desktop,tablet,phone', 'help,newdocument,undo,redo,spacer,bold,italic,underline,strikethrough,justifyfull,justifycenter,justifyleft,justifyright,spacer,formatselect,styleselect;clipboard,searchreplace,indent,outdent,lists,cleanup,charmap,removeformat,hr,sub,sup,textcase,nonbreaking,visualchars,visualblocks;fullscreen,print,visualaid,style,xhtmlxtras,anchor,unlink,link,imgmanager,spellchecker,article', 'charmap,contextmenu,inlinepopups,help,clipboard,searchreplace,fullscreen,preview,print,style,textcase,nonbreaking,visualchars,visualblocks,xhtmlxtras,imgmanager,anchor,link,spellchecker,article,lists,formatselect,styleselect,hr', 0, 2, 0, '0000-00-00 00:00:00', ''),
(3, 'Blogger', 'Simple Blogging Profile', '', '3,4,5,6,8,7', '', 0, 'desktop,tablet,phone', 'bold,italic,strikethrough,lists,blockquote,spacer,justifyleft,justifycenter,justifyright,spacer,link,unlink,imgmanager,article,spellchecker,fullscreen,kitchensink;formatselect,styleselect,underline,justifyfull,clipboard,removeformat,charmap,indent,outdent,undo,redo,help', 'link,imgmanager,article,spellchecker,fullscreen,kitchensink,clipboard,contextmenu,inlinepopups,lists,formatselect,styleselect,textpattern', 0, 3, 0, '0000-00-00 00:00:00', '{\"editor\":{\"toggle\":\"0\"}}'),
(4, 'Mobile', 'Sample Mobile Profile', '', '3,4,5,6,8,7', '', 0, 'tablet,phone', 'undo,redo,spacer,bold,italic,underline,formatselect,spacer,justifyleft,justifycenter,justifyfull,justifyright,spacer,fullscreen,kitchensink;styleselect,lists,spellchecker,article,link,unlink', 'fullscreen,kitchensink,spellchecker,article,link,inlinepopups,lists,formatselect,styleselect,textpattern', 0, 4, 0, '0000-00-00 00:00:00', '{\"editor\":{\"toolbar_theme\":\"mobile\",\"resizing\":\"0\",\"resize_horizontal\":\"0\",\"resizing_use_cookie\":\"0\",\"toggle\":\"0\",\"links\":{\"popups\":{\"default\":\"\",\"jcemediabox\":{\"enable\":\"0\"},\"window\":{\"enable\":\"0\"}}}}}'),
(5, 'Markdown', 'Sample Markdown Profile', '', '6,7,3,4,5,8', '', 0, 'desktop,tablet,phone', 'fullscreen,justifyleft,justifycenter,justifyfull,justifyright,link,unlink,imgmanager,styleselect', 'fullscreen,link,imgmanager,styleselect,inlinepopups,media,textpattern', 0, 5, 0, '0000-00-00 00:00:00', '{\"editor\":{\"toolbar_theme\":\"mobile\"}}');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `crdev_assets`
--
ALTER TABLE `crdev_assets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_asset_name` (`name`),
  ADD KEY `idx_lft_rgt` (`lft`,`rgt`),
  ADD KEY `idx_parent_id` (`parent_id`);

--
-- Indexes for table `crdev_associations`
--
ALTER TABLE `crdev_associations`
  ADD PRIMARY KEY (`context`,`id`),
  ADD KEY `idx_key` (`key`);

--
-- Indexes for table `crdev_banners`
--
ALTER TABLE `crdev_banners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100)),
  ADD KEY `idx_banner_catid` (`catid`),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `crdev_banner_clients`
--
ALTER TABLE `crdev_banner_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100));

--
-- Indexes for table `crdev_banner_tracks`
--
ALTER TABLE `crdev_banner_tracks`
  ADD PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  ADD KEY `idx_track_date` (`track_date`),
  ADD KEY `idx_track_type` (`track_type`),
  ADD KEY `idx_banner_id` (`banner_id`);

--
-- Indexes for table `crdev_categories`
--
ALTER TABLE `crdev_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_idx` (`extension`,`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `crdev_contact_details`
--
ALTER TABLE `crdev_contact_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `crdev_content`
--
ALTER TABLE `crdev_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`),
  ADD KEY `idx_alias` (`alias`(191));

--
-- Indexes for table `crdev_contentitem_tag_map`
--
ALTER TABLE `crdev_contentitem_tag_map`
  ADD UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  ADD KEY `idx_tag_type` (`tag_id`,`type_id`),
  ADD KEY `idx_date_id` (`tag_date`,`tag_id`),
  ADD KEY `idx_core_content_id` (`core_content_id`);

--
-- Indexes for table `crdev_content_frontpage`
--
ALTER TABLE `crdev_content_frontpage`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `crdev_content_rating`
--
ALTER TABLE `crdev_content_rating`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `crdev_content_types`
--
ALTER TABLE `crdev_content_types`
  ADD PRIMARY KEY (`type_id`),
  ADD KEY `idx_alias` (`type_alias`(100));

--
-- Indexes for table `crdev_extensions`
--
ALTER TABLE `crdev_extensions`
  ADD PRIMARY KEY (`extension_id`),
  ADD KEY `element_clientid` (`element`,`client_id`),
  ADD KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  ADD KEY `extension` (`type`,`element`,`folder`,`client_id`);

--
-- Indexes for table `crdev_fields`
--
ALTER TABLE `crdev_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_created_user_id` (`created_user_id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_context` (`context`(191)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `crdev_fields_categories`
--
ALTER TABLE `crdev_fields_categories`
  ADD PRIMARY KEY (`field_id`,`category_id`);

--
-- Indexes for table `crdev_fields_groups`
--
ALTER TABLE `crdev_fields_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_created_by` (`created_by`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_context` (`context`(191)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `crdev_fields_values`
--
ALTER TABLE `crdev_fields_values`
  ADD KEY `idx_field_id` (`field_id`),
  ADD KEY `idx_item_id` (`item_id`(191));

--
-- Indexes for table `crdev_finder_filters`
--
ALTER TABLE `crdev_finder_filters`
  ADD PRIMARY KEY (`filter_id`);

--
-- Indexes for table `crdev_finder_links`
--
ALTER TABLE `crdev_finder_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `idx_type` (`type_id`),
  ADD KEY `idx_title` (`title`(100)),
  ADD KEY `idx_md5` (`md5sum`),
  ADD KEY `idx_url` (`url`(75)),
  ADD KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  ADD KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`);

--
-- Indexes for table `crdev_finder_links_terms0`
--
ALTER TABLE `crdev_finder_links_terms0`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `crdev_finder_links_terms1`
--
ALTER TABLE `crdev_finder_links_terms1`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `crdev_finder_links_terms2`
--
ALTER TABLE `crdev_finder_links_terms2`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `crdev_finder_links_terms3`
--
ALTER TABLE `crdev_finder_links_terms3`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `crdev_finder_links_terms4`
--
ALTER TABLE `crdev_finder_links_terms4`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `crdev_finder_links_terms5`
--
ALTER TABLE `crdev_finder_links_terms5`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `crdev_finder_links_terms6`
--
ALTER TABLE `crdev_finder_links_terms6`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `crdev_finder_links_terms7`
--
ALTER TABLE `crdev_finder_links_terms7`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `crdev_finder_links_terms8`
--
ALTER TABLE `crdev_finder_links_terms8`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `crdev_finder_links_terms9`
--
ALTER TABLE `crdev_finder_links_terms9`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `crdev_finder_links_termsa`
--
ALTER TABLE `crdev_finder_links_termsa`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `crdev_finder_links_termsb`
--
ALTER TABLE `crdev_finder_links_termsb`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `crdev_finder_links_termsc`
--
ALTER TABLE `crdev_finder_links_termsc`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `crdev_finder_links_termsd`
--
ALTER TABLE `crdev_finder_links_termsd`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `crdev_finder_links_termse`
--
ALTER TABLE `crdev_finder_links_termse`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `crdev_finder_links_termsf`
--
ALTER TABLE `crdev_finder_links_termsf`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `crdev_finder_taxonomy`
--
ALTER TABLE `crdev_finder_taxonomy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `state` (`state`),
  ADD KEY `ordering` (`ordering`),
  ADD KEY `access` (`access`),
  ADD KEY `idx_parent_published` (`parent_id`,`state`,`access`);

--
-- Indexes for table `crdev_finder_taxonomy_map`
--
ALTER TABLE `crdev_finder_taxonomy_map`
  ADD PRIMARY KEY (`link_id`,`node_id`),
  ADD KEY `link_id` (`link_id`),
  ADD KEY `node_id` (`node_id`);

--
-- Indexes for table `crdev_finder_terms`
--
ALTER TABLE `crdev_finder_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD UNIQUE KEY `idx_term` (`term`),
  ADD KEY `idx_term_phrase` (`term`,`phrase`),
  ADD KEY `idx_stem_phrase` (`stem`,`phrase`),
  ADD KEY `idx_soundex_phrase` (`soundex`,`phrase`);

--
-- Indexes for table `crdev_finder_terms_common`
--
ALTER TABLE `crdev_finder_terms_common`
  ADD KEY `idx_word_lang` (`term`,`language`),
  ADD KEY `idx_lang` (`language`);

--
-- Indexes for table `crdev_finder_tokens`
--
ALTER TABLE `crdev_finder_tokens`
  ADD KEY `idx_word` (`term`),
  ADD KEY `idx_context` (`context`);

--
-- Indexes for table `crdev_finder_tokens_aggregate`
--
ALTER TABLE `crdev_finder_tokens_aggregate`
  ADD KEY `token` (`term`),
  ADD KEY `keyword_id` (`term_id`);

--
-- Indexes for table `crdev_finder_types`
--
ALTER TABLE `crdev_finder_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `crdev_huge_itslider_images`
--
ALTER TABLE `crdev_huge_itslider_images`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `crdev_huge_itslider_params`
--
ALTER TABLE `crdev_huge_itslider_params`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crdev_huge_itslider_sliders`
--
ALTER TABLE `crdev_huge_itslider_sliders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `crdev_languages`
--
ALTER TABLE `crdev_languages`
  ADD PRIMARY KEY (`lang_id`),
  ADD UNIQUE KEY `idx_sef` (`sef`),
  ADD UNIQUE KEY `idx_langcode` (`lang_code`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_ordering` (`ordering`);

--
-- Indexes for table `crdev_menu`
--
ALTER TABLE `crdev_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`(100),`language`),
  ADD KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  ADD KEY `idx_menutype` (`menutype`),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `crdev_menu_types`
--
ALTER TABLE `crdev_menu_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_menutype` (`menutype`);

--
-- Indexes for table `crdev_messages`
--
ALTER TABLE `crdev_messages`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `useridto_state` (`user_id_to`,`state`);

--
-- Indexes for table `crdev_messages_cfg`
--
ALTER TABLE `crdev_messages_cfg`
  ADD UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`);

--
-- Indexes for table `crdev_modules`
--
ALTER TABLE `crdev_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `published` (`published`,`access`),
  ADD KEY `newsfeeds` (`module`,`published`),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `crdev_modules_menu`
--
ALTER TABLE `crdev_modules_menu`
  ADD PRIMARY KEY (`moduleid`,`menuid`);

--
-- Indexes for table `crdev_newsfeeds`
--
ALTER TABLE `crdev_newsfeeds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `crdev_overrider`
--
ALTER TABLE `crdev_overrider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crdev_postinstall_messages`
--
ALTER TABLE `crdev_postinstall_messages`
  ADD PRIMARY KEY (`postinstall_message_id`);

--
-- Indexes for table `crdev_redirect_links`
--
ALTER TABLE `crdev_redirect_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_old_url` (`old_url`(100)),
  ADD KEY `idx_link_modifed` (`modified_date`);

--
-- Indexes for table `crdev_schemas`
--
ALTER TABLE `crdev_schemas`
  ADD PRIMARY KEY (`extension_id`,`version_id`);

--
-- Indexes for table `crdev_session`
--
ALTER TABLE `crdev_session`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `time` (`time`);

--
-- Indexes for table `crdev_tags`
--
ALTER TABLE `crdev_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tag_idx` (`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `crdev_template_styles`
--
ALTER TABLE `crdev_template_styles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_template` (`template`),
  ADD KEY `idx_home` (`home`);

--
-- Indexes for table `crdev_ucm_base`
--
ALTER TABLE `crdev_ucm_base`
  ADD PRIMARY KEY (`ucm_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_item_id`),
  ADD KEY `idx_ucm_type_id` (`ucm_type_id`),
  ADD KEY `idx_ucm_language_id` (`ucm_language_id`);

--
-- Indexes for table `crdev_ucm_content`
--
ALTER TABLE `crdev_ucm_content`
  ADD PRIMARY KEY (`core_content_id`),
  ADD KEY `tag_idx` (`core_state`,`core_access`),
  ADD KEY `idx_access` (`core_access`),
  ADD KEY `idx_alias` (`core_alias`(100)),
  ADD KEY `idx_language` (`core_language`),
  ADD KEY `idx_title` (`core_title`(100)),
  ADD KEY `idx_modified_time` (`core_modified_time`),
  ADD KEY `idx_created_time` (`core_created_time`),
  ADD KEY `idx_content_type` (`core_type_alias`(100)),
  ADD KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  ADD KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  ADD KEY `idx_core_created_user_id` (`core_created_user_id`),
  ADD KEY `idx_core_type_id` (`core_type_id`);

--
-- Indexes for table `crdev_ucm_history`
--
ALTER TABLE `crdev_ucm_history`
  ADD PRIMARY KEY (`version_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  ADD KEY `idx_save_date` (`save_date`);

--
-- Indexes for table `crdev_updates`
--
ALTER TABLE `crdev_updates`
  ADD PRIMARY KEY (`update_id`);

--
-- Indexes for table `crdev_update_sites`
--
ALTER TABLE `crdev_update_sites`
  ADD PRIMARY KEY (`update_site_id`);

--
-- Indexes for table `crdev_update_sites_extensions`
--
ALTER TABLE `crdev_update_sites_extensions`
  ADD PRIMARY KEY (`update_site_id`,`extension_id`);

--
-- Indexes for table `crdev_usergroups`
--
ALTER TABLE `crdev_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  ADD KEY `idx_usergroup_title_lookup` (`title`),
  ADD KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  ADD KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE;

--
-- Indexes for table `crdev_users`
--
ALTER TABLE `crdev_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_name` (`name`(100)),
  ADD KEY `idx_block` (`block`),
  ADD KEY `username` (`username`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `crdev_user_keys`
--
ALTER TABLE `crdev_user_keys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `series` (`series`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `crdev_user_notes`
--
ALTER TABLE `crdev_user_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_category_id` (`catid`);

--
-- Indexes for table `crdev_user_profiles`
--
ALTER TABLE `crdev_user_profiles`
  ADD UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`);

--
-- Indexes for table `crdev_user_usergroup_map`
--
ALTER TABLE `crdev_user_usergroup_map`
  ADD PRIMARY KEY (`user_id`,`group_id`);

--
-- Indexes for table `crdev_viewlevels`
--
ALTER TABLE `crdev_viewlevels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_assetgroup_title_lookup` (`title`);

--
-- Indexes for table `crdev_wf_profiles`
--
ALTER TABLE `crdev_wf_profiles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `crdev_assets`
--
ALTER TABLE `crdev_assets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `crdev_banners`
--
ALTER TABLE `crdev_banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crdev_banner_clients`
--
ALTER TABLE `crdev_banner_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crdev_categories`
--
ALTER TABLE `crdev_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `crdev_contact_details`
--
ALTER TABLE `crdev_contact_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crdev_content`
--
ALTER TABLE `crdev_content`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `crdev_content_types`
--
ALTER TABLE `crdev_content_types`
  MODIFY `type_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `crdev_extensions`
--
ALTER TABLE `crdev_extensions`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10032;

--
-- AUTO_INCREMENT for table `crdev_fields`
--
ALTER TABLE `crdev_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crdev_fields_groups`
--
ALTER TABLE `crdev_fields_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crdev_finder_filters`
--
ALTER TABLE `crdev_finder_filters`
  MODIFY `filter_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crdev_finder_links`
--
ALTER TABLE `crdev_finder_links`
  MODIFY `link_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `crdev_finder_taxonomy`
--
ALTER TABLE `crdev_finder_taxonomy`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `crdev_finder_terms`
--
ALTER TABLE `crdev_finder_terms`
  MODIFY `term_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5615;

--
-- AUTO_INCREMENT for table `crdev_finder_types`
--
ALTER TABLE `crdev_finder_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `crdev_huge_itslider_images`
--
ALTER TABLE `crdev_huge_itslider_images`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `crdev_huge_itslider_params`
--
ALTER TABLE `crdev_huge_itslider_params`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=237;

--
-- AUTO_INCREMENT for table `crdev_huge_itslider_sliders`
--
ALTER TABLE `crdev_huge_itslider_sliders`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `crdev_languages`
--
ALTER TABLE `crdev_languages`
  MODIFY `lang_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `crdev_menu`
--
ALTER TABLE `crdev_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `crdev_menu_types`
--
ALTER TABLE `crdev_menu_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `crdev_messages`
--
ALTER TABLE `crdev_messages`
  MODIFY `message_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crdev_modules`
--
ALTER TABLE `crdev_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `crdev_newsfeeds`
--
ALTER TABLE `crdev_newsfeeds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crdev_overrider`
--
ALTER TABLE `crdev_overrider`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';

--
-- AUTO_INCREMENT for table `crdev_postinstall_messages`
--
ALTER TABLE `crdev_postinstall_messages`
  MODIFY `postinstall_message_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `crdev_redirect_links`
--
ALTER TABLE `crdev_redirect_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crdev_tags`
--
ALTER TABLE `crdev_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `crdev_template_styles`
--
ALTER TABLE `crdev_template_styles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `crdev_ucm_content`
--
ALTER TABLE `crdev_ucm_content`
  MODIFY `core_content_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crdev_ucm_history`
--
ALTER TABLE `crdev_ucm_history`
  MODIFY `version_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `crdev_updates`
--
ALTER TABLE `crdev_updates`
  MODIFY `update_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `crdev_update_sites`
--
ALTER TABLE `crdev_update_sites`
  MODIFY `update_site_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `crdev_usergroups`
--
ALTER TABLE `crdev_usergroups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `crdev_users`
--
ALTER TABLE `crdev_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=907;

--
-- AUTO_INCREMENT for table `crdev_user_keys`
--
ALTER TABLE `crdev_user_keys`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crdev_user_notes`
--
ALTER TABLE `crdev_user_notes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crdev_viewlevels`
--
ALTER TABLE `crdev_viewlevels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `crdev_wf_profiles`
--
ALTER TABLE `crdev_wf_profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
