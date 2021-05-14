-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 14, 2021 at 03:22 PM
-- Server version: 10.5.9-MariaDB
-- PHP Version: 8.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mw_johngillen`
--

-- --------------------------------------------------------

--
-- Table structure for table `jg_commentmeta`
--

CREATE TABLE `jg_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jg_comments`
--

CREATE TABLE `jg_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jg_comments`
--

INSERT INTO `jg_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-05-11 12:54:47', '2021-05-11 12:54:47', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jg_links`
--

CREATE TABLE `jg_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jg_options`
--

CREATE TABLE `jg_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jg_options`
--

INSERT INTO `jg_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://johngillen.local', 'yes'),
(2, 'home', 'http://johngillen.local', 'yes'),
(3, 'blogname', 'John Gillen', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'michaelwilliams01@protonmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:94:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=2&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:33:\"classic-editor/classic-editor.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'johngillen', 'yes'),
(41, 'stylesheet', 'johngillen', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '49752', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '0', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:0:{}', 'yes'),
(78, 'widget_rss', 'a:0:{}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '2', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1636289686', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'initial_db_version', '49752', 'yes'),
(99, 'jg_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(100, 'fresh_site', '0', 'yes'),
(101, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(107, 'cron', 'a:7:{i:1621007688;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1621040088;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1621083287;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1621083293;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1621083294;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1621428888;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(108, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'recovery_keys', 'a:0:{}', 'yes'),
(119, 'https_detection_errors', 'a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:21:\"HTTPS request failed.\";}}', 'yes'),
(120, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:2:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.7.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.7.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.7.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.7.2-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.7.2-partial-1.zip\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.7.2\";s:7:\"version\";s:5:\"5.7.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:5:\"5.7.1\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.7.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.7.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.7.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.7.2-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.7.2-partial-1.zip\";s:8:\"rollback\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.7.2-rollback-1.zip\";}s:7:\"current\";s:5:\"5.7.2\";s:7:\"version\";s:5:\"5.7.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:5:\"5.7.1\";s:9:\"new_files\";s:0:\"\";}}s:12:\"last_checked\";i:1620996965;s:15:\"version_checked\";s:5:\"5.7.1\";s:12:\"translations\";a:0:{}}', 'no'),
(125, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1620996966;s:7:\"checked\";a:2:{s:10:\"johngillen\";s:5:\"1.0.0\";s:15:\"twentytwentyone\";s:3:\"1.3\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:1:{s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.3.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(126, 'theme_mods_twentytwentyone', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1620766459;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(127, '_site_transient_timeout_browser_c03f7c223f64b839523ee6de59d7481d', '1621342494', 'no'),
(128, '_site_transient_browser_c03f7c223f64b839523ee6de59d7481d', 'a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"89.0\";s:8:\"platform\";s:5:\"Linux\";s:10:\"update_url\";s:32:\"https://www.mozilla.org/firefox/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(129, '_site_transient_timeout_php_check_62ad80f1739dc9fe3abaa2e5cae471cd', '1621342494', 'no'),
(130, '_site_transient_php_check_62ad80f1739dc9fe3abaa2e5cae471cd', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(134, 'can_compress_scripts', '1', 'no'),
(147, 'finished_updating_comment_type', '1', 'yes'),
(152, 'current_theme', 'John Gillen Biography', 'yes'),
(153, 'theme_mods_johngillen', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(154, 'theme_switched', '', 'yes'),
(170, '_transient_health-check-site-status-result', '{\"good\":\"14\",\"recommended\":\"6\",\"critical\":\"0\"}', 'yes'),
(191, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(216, '_site_transient_timeout_community-events-1aecf33ab8525ff212ebdffbb438372e', '1621021207', 'no'),
(217, '_site_transient_community-events-1aecf33ab8525ff212ebdffbb438372e', 'a:4:{s:9:\"sandboxed\";b:0;s:5:\"error\";N;s:8:\"location\";a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}s:6:\"events\";a:7:{i:0;a:10:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:64:\"Demo + Discussion group: Creating and Registering Block Patterns\";s:3:\"url\";s:68:\"https://www.meetup.com/learn-wordpress-discussions/events/277669527/\";s:6:\"meetup\";s:27:\"Learn WordPress Discussions\";s:10:\"meetup_url\";s:51:\"https://www.meetup.com/learn-wordpress-discussions/\";s:4:\"date\";s:19:\"2021-05-14 11:00:00\";s:8:\"end_date\";s:19:\"2021-05-14 12:00:00\";s:20:\"start_unix_timestamp\";i:1621015200;s:18:\"end_unix_timestamp\";i:1621018800;s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"US\";s:8:\"latitude\";d:37.779998779297;s:9:\"longitude\";d:-122.41999816895;}}i:1;a:10:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:30:\"WordCamp Northeast Ohio Region\";s:3:\"url\";s:30:\"https://neo.wordcamp.org/2021/\";s:6:\"meetup\";N;s:10:\"meetup_url\";N;s:4:\"date\";s:19:\"2021-05-21 00:00:00\";s:8:\"end_date\";s:19:\"2021-05-23 00:00:00\";s:20:\"start_unix_timestamp\";i:1621569600;s:18:\"end_unix_timestamp\";i:1621742400;s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"US\";s:8:\"latitude\";d:41.2617873;s:9:\"longitude\";d:-81.1637245;}}i:2;a:10:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:39:\"WordPress Leeds Online - Monthly Meetup\";s:3:\"url\";s:60:\"https://www.meetup.com/WordPress-Leeds/events/fbjvtrycchbhc/\";s:6:\"meetup\";s:15:\"WordPress Leeds\";s:10:\"meetup_url\";s:39:\"https://www.meetup.com/WordPress-Leeds/\";s:4:\"date\";s:19:\"2021-05-25 17:30:00\";s:8:\"end_date\";s:19:\"2021-05-25 18:30:00\";s:20:\"start_unix_timestamp\";i:1621960200;s:18:\"end_unix_timestamp\";i:1621963800;s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"GB\";s:8:\"latitude\";d:53.790000915527;s:9:\"longitude\";d:-1.5499999523163;}}i:3;a:10:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:39:\"BeeWUG - Blackburn WordPress User Group\";s:3:\"url\";s:71:\"https://www.meetup.com/Blackburn-WordPress-Meetup/events/hwqkxryccjbmb/\";s:6:\"meetup\";s:26:\"Blackburn WordPress Meetup\";s:10:\"meetup_url\";s:50:\"https://www.meetup.com/Blackburn-WordPress-Meetup/\";s:4:\"date\";s:19:\"2021-06-09 18:30:00\";s:8:\"end_date\";s:19:\"2021-06-09 20:30:00\";s:20:\"start_unix_timestamp\";i:1623259800;s:18:\"end_unix_timestamp\";i:1623267000;s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"GB\";s:8:\"latitude\";d:53.75;s:9:\"longitude\";d:-2.4900000095367;}}i:4;a:10:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:39:\"WordPress Leeds Online - Monthly Meetup\";s:3:\"url\";s:60:\"https://www.meetup.com/WordPress-Leeds/events/fbjvtryccjbdc/\";s:6:\"meetup\";s:15:\"WordPress Leeds\";s:10:\"meetup_url\";s:39:\"https://www.meetup.com/WordPress-Leeds/\";s:4:\"date\";s:19:\"2021-06-22 17:30:00\";s:8:\"end_date\";s:19:\"2021-06-22 18:30:00\";s:20:\"start_unix_timestamp\";i:1624379400;s:18:\"end_unix_timestamp\";i:1624383000;s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"GB\";s:8:\"latitude\";d:53.790000915527;s:9:\"longitude\";d:-1.5499999523163;}}i:5;a:10:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:19:\"WordPress Sheffield\";s:3:\"url\";s:56:\"https://www.meetup.com/wpsheffield/events/cjjjhrycckbrb/\";s:6:\"meetup\";s:19:\"WordPress Sheffield\";s:10:\"meetup_url\";s:35:\"https://www.meetup.com/wpsheffield/\";s:4:\"date\";s:19:\"2021-07-13 18:00:00\";s:8:\"end_date\";s:19:\"2021-07-13 21:00:00\";s:20:\"start_unix_timestamp\";i:1626195600;s:18:\"end_unix_timestamp\";i:1626206400;s:8:\"location\";a:4:{s:8:\"location\";s:25:\"Sheffield, United Kingdom\";s:7:\"country\";s:2:\"gb\";s:8:\"latitude\";d:53.376914978027;s:9:\"longitude\";d:-1.467787027359;}}i:6;a:10:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:39:\"BeeWUG - Blackburn WordPress User Group\";s:3:\"url\";s:71:\"https://www.meetup.com/Blackburn-WordPress-Meetup/events/hwqkxrycckbsb/\";s:6:\"meetup\";s:26:\"Blackburn WordPress Meetup\";s:10:\"meetup_url\";s:50:\"https://www.meetup.com/Blackburn-WordPress-Meetup/\";s:4:\"date\";s:19:\"2021-07-14 18:30:00\";s:8:\"end_date\";s:19:\"2021-07-14 20:30:00\";s:20:\"start_unix_timestamp\";i:1626283800;s:18:\"end_unix_timestamp\";i:1626291000;s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"GB\";s:8:\"latitude\";d:53.75;s:9:\"longitude\";d:-2.4900000095367;}}}}', 'no'),
(218, 'recently_activated', 'a:0:{}', 'yes'),
(229, 'acf_version', '5.9.5', 'yes'),
(233, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1620996966;s:7:\"checked\";a:2:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.9.5\";s:33:\"classic-editor/classic-editor.php\";s:3:\"1.6\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.9.5\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.9.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(234, '_site_transient_timeout_available_translations', '1620999280', 'no');
INSERT INTO `jg_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(235, '_site_transient_available_translations', 'a:126:{s:2:\"af\";a:8:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-02-23 11:41:38\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.7.1/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Gaan voort\";}}s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-04-21 20:16:59\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.7.1/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:6:\"4.8.17\";s:7:\"updated\";s:19:\"2017-01-26 15:42:35\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.17/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"as\";a:8:{s:8:\"language\";s:2:\"as\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-05-04 13:19:36\";s:12:\"english_name\";s:8:\"Assamese\";s:11:\"native_name\";s:21:\"অসমীয়া\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.7.1/as.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"as\";i:2;s:3:\"asm\";i:3;s:3:\"asm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-12 20:34:31\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-06 00:09:27\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"bel\";a:8:{s:8:\"language\";s:3:\"bel\";s:7:\"version\";s:6:\"4.9.18\";s:7:\"updated\";s:19:\"2019-10-29 07:54:22\";s:12:\"english_name\";s:10:\"Belarusian\";s:11:\"native_name\";s:29:\"Беларуская мова\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.9.18/bel.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"be\";i:2;s:3:\"bel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Працягнуць\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:5:\"5.4.6\";s:7:\"updated\";s:19:\"2020-07-01 06:36:01\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.6/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:22:\"Продължение\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:5:\"5.4.6\";s:7:\"updated\";s:19:\"2020-10-31 08:48:37\";s:12:\"english_name\";s:20:\"Bengali (Bangladesh)\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.6/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:23:\"এগিয়ে চল.\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2020-10-30 03:24:38\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"བོད་ཡིག\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.7.1/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"མུ་མཐུད།\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-04-25 07:27:37\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-04-15 04:10:23\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.7.1/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-02 17:25:51\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-04-19 06:51:04\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-04-15 10:32:41\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.7.1/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-05-05 10:07:45\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Forts&#230;t\";}}s:5:\"de_AT\";a:8:{s:8:\"language\";s:5:\"de_AT\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-03-10 19:15:18\";s:12:\"english_name\";s:16:\"German (Austria)\";s:11:\"native_name\";s:21:\"Deutsch (Österreich)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/de_AT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-03-14 20:06:52\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/core/5.7.1/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-05-13 03:08:57\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/5.7.1/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Fortfahren\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-05-13 03:09:19\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Fortfahren\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-03-14 20:06:23\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Fortfahren\";}}s:3:\"dsb\";a:8:{s:8:\"language\";s:3:\"dsb\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-04-15 13:33:04\";s:12:\"english_name\";s:13:\"Lower Sorbian\";s:11:\"native_name\";s:16:\"Dolnoserbšćina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.7.1/dsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"dsb\";i:3;s:3:\"dsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Dalej\";}}s:3:\"dzo\";a:8:{s:8:\"language\";s:3:\"dzo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-06-29 08:59:03\";s:12:\"english_name\";s:8:\"Dzongkha\";s:11:\"native_name\";s:18:\"རྫོང་ཁ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"dz\";i:2;s:3:\"dzo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-05-12 07:19:08\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.7.1/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-04-15 04:12:40\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-04-15 07:31:22\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-04-15 04:12:51\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-04-15 04:12:28\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-04-15 07:22:30\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-04-18 09:35:35\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.7.1/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_CR\";a:8:{s:8:\"language\";s:5:\"es_CR\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-03-03 15:32:45\";s:12:\"english_name\";s:20:\"Spanish (Costa Rica)\";s:11:\"native_name\";s:22:\"Español de Costa Rica\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/es_CR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_EC\";a:8:{s:8:\"language\";s:5:\"es_EC\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-04-15 02:05:34\";s:12:\"english_name\";s:17:\"Spanish (Ecuador)\";s:11:\"native_name\";s:19:\"Español de Ecuador\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/es_EC.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-04-15 02:05:15\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/es_VE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-05-12 12:43:41\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/es_ES.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-03-11 17:28:23\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/es_CO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-03-10 15:04:44\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/es_CL.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:5:\"5.6.4\";s:7:\"updated\";s:19:\"2020-12-11 02:12:59\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.6.4/es_PE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PR\";a:8:{s:8:\"language\";s:5:\"es_PR\";s:7:\"version\";s:5:\"5.4.6\";s:7:\"updated\";s:19:\"2020-04-29 15:36:59\";s:12:\"english_name\";s:21:\"Spanish (Puerto Rico)\";s:11:\"native_name\";s:23:\"Español de Puerto Rico\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.6/es_PR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:6:\"5.2.11\";s:7:\"updated\";s:19:\"2019-03-02 06:35:01\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.2.11/es_GT.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-04-16 13:07:32\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/es_MX.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-04-16 02:17:21\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/es_AR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_UY\";a:8:{s:8:\"language\";s:5:\"es_UY\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-03-31 18:33:26\";s:12:\"english_name\";s:17:\"Spanish (Uruguay)\";s:11:\"native_name\";s:19:\"Español de Uruguay\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/es_UY.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2020-08-12 08:38:59\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.7.1/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-05-13 04:30:32\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.7.1/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-04-01 11:39:36\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"fa_AF\";a:8:{s:8:\"language\";s:5:\"fa_AF\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-05-10 13:20:19\";s:12:\"english_name\";s:21:\"Persian (Afghanistan)\";s:11:\"native_name\";s:31:\"(فارسی (افغانستان\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/fa_AF.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-05-06 05:21:48\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.7.1/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-05-10 09:59:27\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-02-22 13:54:46\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-04-30 13:29:35\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:3:\"fur\";a:8:{s:8:\"language\";s:3:\"fur\";s:7:\"version\";s:6:\"4.8.17\";s:7:\"updated\";s:19:\"2018-01-29 17:32:35\";s:12:\"english_name\";s:8:\"Friulian\";s:11:\"native_name\";s:8:\"Friulian\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.17/fur.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"fur\";i:3;s:3:\"fur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-04-15 18:17:43\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:6:\"4.9.18\";s:7:\"updated\";s:19:\"2018-09-14 12:33:48\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"ગુજરાતી\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.18/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:31:\"ચાલુ રાખવું\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:6:\"4.4.25\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.4.25/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-05-09 14:25:27\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"להמשיך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:5:\"5.4.6\";s:7:\"updated\";s:19:\"2020-11-06 12:34:38\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.6/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"जारी\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-04-27 09:02:30\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.7.1/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:3:\"hsb\";a:8:{s:8:\"language\";s:3:\"hsb\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-04-15 13:34:18\";s:12:\"english_name\";s:13:\"Upper Sorbian\";s:11:\"native_name\";s:17:\"Hornjoserbšćina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.7.1/hsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"hsb\";i:3;s:3:\"hsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:4:\"Dale\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-04-23 17:06:16\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Tovább\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-03 16:21:10\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-04-24 02:11:27\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:6:\"4.9.18\";s:7:\"updated\";s:19:\"2018-12-11 10:40:02\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.18/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-04-25 18:51:00\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-05-07 15:19:27\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.7.1/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"続ける\";}}s:5:\"jv_ID\";a:8:{s:8:\"language\";s:5:\"jv_ID\";s:7:\"version\";s:6:\"4.9.18\";s:7:\"updated\";s:19:\"2019-02-16 23:58:56\";s:12:\"english_name\";s:8:\"Javanese\";s:11:\"native_name\";s:9:\"Basa Jawa\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.18/jv_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"jv\";i:2;s:3:\"jav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nutugne\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-03-29 10:00:46\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:3:\"kab\";a:8:{s:8:\"language\";s:3:\"kab\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-05-06 18:16:02\";s:12:\"english_name\";s:6:\"Kabyle\";s:11:\"native_name\";s:9:\"Taqbaylit\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.7.1/kab.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"kab\";i:3;s:3:\"kab\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:2:\"kk\";a:8:{s:8:\"language\";s:2:\"kk\";s:7:\"version\";s:6:\"4.9.18\";s:7:\"updated\";s:19:\"2018-07-10 11:35:44\";s:12:\"english_name\";s:6:\"Kazakh\";s:11:\"native_name\";s:19:\"Қазақ тілі\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.18/kk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kk\";i:2;s:3:\"kaz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Жалғастыру\";}}s:2:\"km\";a:8:{s:8:\"language\";s:2:\"km\";s:7:\"version\";s:6:\"5.2.11\";s:7:\"updated\";s:19:\"2019-06-10 16:18:28\";s:12:\"english_name\";s:5:\"Khmer\";s:11:\"native_name\";s:27:\"ភាសាខ្មែរ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.2.11/km.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"km\";i:2;s:3:\"khm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"បន្ត\";}}s:2:\"kn\";a:8:{s:8:\"language\";s:2:\"kn\";s:7:\"version\";s:6:\"4.9.18\";s:7:\"updated\";s:19:\"2020-09-30 14:08:59\";s:12:\"english_name\";s:7:\"Kannada\";s:11:\"native_name\";s:15:\"ಕನ್ನಡ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.18/kn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kn\";i:2;s:3:\"kan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"ಮುಂದುವರೆಸಿ\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-05-11 04:54:59\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:3:\"ckb\";a:8:{s:8:\"language\";s:3:\"ckb\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-04-29 01:20:15\";s:12:\"english_name\";s:16:\"Kurdish (Sorani)\";s:11:\"native_name\";s:13:\"كوردی‎\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.7.1/ckb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ku\";i:3;s:3:\"ckb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"به‌رده‌وام به‌\";}}s:2:\"lo\";a:8:{s:8:\"language\";s:2:\"lo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 09:59:23\";s:12:\"english_name\";s:3:\"Lao\";s:11:\"native_name\";s:21:\"ພາສາລາວ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lo\";i:2;s:3:\"lao\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"ຕໍ່\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-03-23 12:35:40\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:2:\"lv\";a:8:{s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-04-16 19:35:51\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:16:\"Latviešu valoda\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.7.1/lv.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lv\";i:2;s:3:\"lav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Turpināt\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:5:\"5.4.6\";s:7:\"updated\";s:19:\"2020-07-01 09:16:57\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.6/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Продолжи\";}}s:5:\"ml_IN\";a:8:{s:8:\"language\";s:5:\"ml_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:43:32\";s:12:\"english_name\";s:9:\"Malayalam\";s:11:\"native_name\";s:18:\"മലയാളം\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ml\";i:2;s:3:\"mal\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"തുടരുക\";}}s:2:\"mn\";a:8:{s:8:\"language\";s:2:\"mn\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-12 07:29:35\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:12:\"Монгол\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/mn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mn\";i:2;s:3:\"mon\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"Үргэлжлүүлэх\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:6:\"4.9.18\";s:7:\"updated\";s:19:\"2019-11-22 15:32:08\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.18/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:6:\"4.9.18\";s:7:\"updated\";s:19:\"2018-08-31 11:57:07\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.18/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.2.30\";s:7:\"updated\";s:19:\"2017-12-26 11:57:10\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.2.30/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ေဆာင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-04-15 16:50:37\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"ne_NP\";a:8:{s:8:\"language\";s:5:\"ne_NP\";s:7:\"version\";s:6:\"5.2.11\";s:7:\"updated\";s:19:\"2020-05-31 16:07:59\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:18:\"नेपाली\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.2.11/ne_NP.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ne\";i:2;s:3:\"nep\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:31:\"जारीराख्नु \";}}s:5:\"nl_BE\";a:8:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-04-15 06:38:49\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-05-10 12:10:18\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-05-10 14:42:01\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/5.7.1/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-03-18 10:59:16\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:6:\"4.8.17\";s:7:\"updated\";s:19:\"2017-08-25 10:03:08\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.17/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pa_IN\";a:8:{s:8:\"language\";s:5:\"pa_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-16 05:19:43\";s:12:\"english_name\";s:7:\"Punjabi\";s:11:\"native_name\";s:18:\"ਪੰਜਾਬੀ\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pa\";i:2;s:3:\"pan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ਜਾਰੀ ਰੱਖੋ\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-04-26 06:40:10\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.3.26\";s:7:\"updated\";s:19:\"2015-12-02 21:41:29\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.3.26/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"دوام\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-04-22 11:19:45\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_AO\";a:8:{s:8:\"language\";s:5:\"pt_AO\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2020-12-08 14:21:04\";s:12:\"english_name\";s:19:\"Portuguese (Angola)\";s:11:\"native_name\";s:20:\"Português de Angola\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/pt_AO.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-04-26 17:10:08\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:10:\"pt_PT_ao90\";a:8:{s:8:\"language\";s:10:\"pt_PT_ao90\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-04-15 08:18:42\";s:12:\"english_name\";s:27:\"Portuguese (Portugal, AO90)\";s:11:\"native_name\";s:17:\"Português (AO90)\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/core/5.7.1/pt_PT_ao90.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"rhg\";a:8:{s:8:\"language\";s:3:\"rhg\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-16 13:03:18\";s:12:\"english_name\";s:8:\"Rohingya\";s:11:\"native_name\";s:8:\"Ruáinga\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"rhg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-05-11 10:28:00\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-04-15 04:46:07\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:3:\"sah\";a:8:{s:8:\"language\";s:3:\"sah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-21 02:06:41\";s:12:\"english_name\";s:5:\"Sakha\";s:11:\"native_name\";s:14:\"Сахалыы\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"sah\";i:3;s:3:\"sah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Салҕаа\";}}s:3:\"snd\";a:8:{s:8:\"language\";s:3:\"snd\";s:7:\"version\";s:5:\"5.4.6\";s:7:\"updated\";s:19:\"2020-07-07 01:53:37\";s:12:\"english_name\";s:6:\"Sindhi\";s:11:\"native_name\";s:8:\"سنڌي\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4.6/snd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"sd\";i:2;s:3:\"snd\";i:3;s:3:\"snd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"اڳتي هلو\";}}s:5:\"si_LK\";a:8:{s:8:\"language\";s:5:\"si_LK\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 06:00:52\";s:12:\"english_name\";s:7:\"Sinhala\";s:11:\"native_name\";s:15:\"සිංහල\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"si\";i:2;s:3:\"sin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:44:\"දිගටම කරගෙන යන්න\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-05-13 04:10:29\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:3:\"skr\";a:8:{s:8:\"language\";s:3:\"skr\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-04-23 11:54:14\";s:12:\"english_name\";s:7:\"Saraiki\";s:11:\"native_name\";s:14:\"سرائیکی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.7.1/skr.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"skr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"جاری رکھو\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:6:\"5.1.10\";s:7:\"updated\";s:19:\"2019-04-30 13:03:56\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.1.10/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Nadaljujte\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-04-15 09:02:54\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.7.1/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-04-14 22:03:48\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-04-29 13:05:40\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:2:\"sw\";a:8:{s:8:\"language\";s:2:\"sw\";s:7:\"version\";s:5:\"5.3.8\";s:7:\"updated\";s:19:\"2019-10-13 15:35:35\";s:12:\"english_name\";s:7:\"Swahili\";s:11:\"native_name\";s:9:\"Kiswahili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.3.8/sw.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sw\";i:2;s:3:\"swa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Endelea\";}}s:3:\"szl\";a:8:{s:8:\"language\";s:3:\"szl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-24 19:58:14\";s:12:\"english_name\";s:8:\"Silesian\";s:11:\"native_name\";s:17:\"Ślōnskŏ gŏdka\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"szl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:13:\"Kōntynuować\";}}s:5:\"ta_IN\";a:8:{s:8:\"language\";s:5:\"ta_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:22:47\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"தொடரவும்\";}}s:5:\"ta_LK\";a:8:{s:8:\"language\";s:5:\"ta_LK\";s:7:\"version\";s:6:\"4.2.30\";s:7:\"updated\";s:19:\"2015-12-03 01:07:44\";s:12:\"english_name\";s:17:\"Tamil (Sri Lanka)\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.2.30/ta_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"தொடர்க\";}}s:2:\"te\";a:8:{s:8:\"language\";s:2:\"te\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:47:39\";s:12:\"english_name\";s:6:\"Telugu\";s:11:\"native_name\";s:18:\"తెలుగు\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/te.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"te\";i:2;s:3:\"tel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"కొనసాగించు\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:5:\"5.5.5\";s:7:\"updated\";s:19:\"2021-04-22 18:43:36\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.5.5/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:6:\"4.8.17\";s:7:\"updated\";s:19:\"2017-09-30 09:04:29\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.17/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-04-15 03:34:29\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"tt_RU\";a:8:{s:8:\"language\";s:5:\"tt_RU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-20 20:20:50\";s:12:\"english_name\";s:5:\"Tatar\";s:11:\"native_name\";s:19:\"Татар теле\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tt\";i:2;s:3:\"tat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"дәвам итү\";}}s:3:\"tah\";a:8:{s:8:\"language\";s:3:\"tah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-06 18:39:39\";s:12:\"english_name\";s:8:\"Tahitian\";s:11:\"native_name\";s:10:\"Reo Tahiti\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ty\";i:2;s:3:\"tah\";i:3;s:3:\"tah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:6:\"4.9.18\";s:7:\"updated\";s:19:\"2018-05-16 07:36:13\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:16:\"ئۇيغۇرچە\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.18/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-05-08 18:31:20\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.7.1/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"ur\";a:8:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:5:\"5.4.6\";s:7:\"updated\";s:19:\"2020-04-09 11:17:33\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"اردو\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.4.6/ur.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ur\";i:2;s:3:\"urd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"جاری رکھیں\";}}s:5:\"uz_UZ\";a:8:{s:8:\"language\";s:5:\"uz_UZ\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-02-28 12:02:22\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:11:\"O‘zbekcha\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/uz_UZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uz\";i:2;s:3:\"uzb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-03-10 06:03:58\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.7.1/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-05-13 05:32:56\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-05-13 03:20:55\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_HK\";a:8:{s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:5:\"5.7.1\";s:7:\"updated\";s:19:\"2021-04-07 07:43:24\";s:12:\"english_name\";s:19:\"Chinese (Hong Kong)\";s:11:\"native_name\";s:16:\"香港中文版	\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.1/zh_HK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}}', 'no');
INSERT INTO `jg_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(240, '_site_transient_timeout_theme_roots', '1620998765', 'no'),
(241, '_site_transient_theme_roots', 'a:2:{s:10:\"johngillen\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `jg_postmeta`
--

CREATE TABLE `jg_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jg_postmeta`
--

INSERT INTO `jg_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'templates/homepage.php'),
(2, 3, '_wp_page_template', 'default'),
(3, 2, '_edit_lock', '1621003513:1'),
(13, 7, '_menu_item_type', 'custom'),
(14, 7, '_menu_item_menu_item_parent', '0'),
(15, 7, '_menu_item_object_id', '7'),
(16, 7, '_menu_item_object', 'custom'),
(17, 7, '_menu_item_target', ''),
(18, 7, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(19, 7, '_menu_item_xfn', ''),
(20, 7, '_menu_item_url', '/'),
(22, 8, '_menu_item_type', 'custom'),
(23, 8, '_menu_item_menu_item_parent', '0'),
(24, 8, '_menu_item_object_id', '8'),
(25, 8, '_menu_item_object', 'custom'),
(26, 8, '_menu_item_target', ''),
(27, 8, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(28, 8, '_menu_item_xfn', ''),
(29, 8, '_menu_item_url', '/'),
(31, 9, '_menu_item_type', 'custom'),
(32, 9, '_menu_item_menu_item_parent', '0'),
(33, 9, '_menu_item_object_id', '9'),
(34, 9, '_menu_item_object', 'custom'),
(35, 9, '_menu_item_target', ''),
(36, 9, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(37, 9, '_menu_item_xfn', ''),
(38, 9, '_menu_item_url', '/'),
(40, 10, '_edit_last', '1'),
(41, 10, '_edit_lock', '1621003513:1'),
(42, 2, '_edit_last', '1'),
(43, 2, 'hero_block_hero_header', 'John Gillen'),
(44, 2, '_hero_block_hero_header', 'field_609e516bc22ac'),
(45, 2, 'hero_block_hero_subheading', 'Helping the UK & Europe beat Drug & Alcohol addiction'),
(46, 2, '_hero_block_hero_subheading', 'field_609e5174c22ad'),
(47, 2, 'hero_block', ''),
(48, 2, '_hero_block', 'field_609e50dbc22ab'),
(49, 14, 'hero_block_hero_header', 'John Gillen'),
(50, 14, '_hero_block_hero_header', 'field_609e516bc22ac'),
(51, 14, 'hero_block_hero_subheading', 'Helping the UK & Europe beat Drug & Alcohol addiction'),
(52, 14, '_hero_block_hero_subheading', 'field_609e5174c22ad'),
(53, 14, 'hero_block', ''),
(54, 14, '_hero_block', 'field_609e50dbc22ab'),
(55, 16, '_wp_attached_file', '2021/05/angryimg.png'),
(56, 16, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:600;s:4:\"file\";s:20:\"2021/05/angryimg.png\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"angryimg-300x180.png\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"angryimg-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"angryimg-768x461.png\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(57, 16, '_wp_attachment_image_alt', 'Gradient'),
(58, 2, 'hero_block_hero_image', '16'),
(59, 2, '_hero_block_hero_image', 'field_609e53c951026'),
(60, 17, 'hero_block_hero_header', 'John Gillen'),
(61, 17, '_hero_block_hero_header', 'field_609e516bc22ac'),
(62, 17, 'hero_block_hero_subheading', 'Helping the UK & Europe beat Drug & Alcohol addiction'),
(63, 17, '_hero_block_hero_subheading', 'field_609e5174c22ad'),
(64, 17, 'hero_block', ''),
(65, 17, '_hero_block', 'field_609e50dbc22ab'),
(66, 17, 'hero_block_hero_image', '16'),
(67, 17, '_hero_block_hero_image', 'field_609e53c951026'),
(68, 2, 'intro_content', 'Visiting professor at Belgrade University, the inspiration behind the bestselling book \'The Secret Disease of Addiction\' and director of multiple rehabilitation centres around the whole of the UK.\r\n\r\nInteger commodo pellentesque sodales. Sed scelerisque lorem nunc, eget sollicitudin mi fringilla vel. Quisque id nisi congue est tempor pellentesque vel non ligula. Curabitur porta efficitur feugiat. Donec porta ligula non mattis pharetra. Nunc placerat, leo vel rutrum mollis, felis risus laoreet dui, vitae ornare nisi metus at nibh. Cras eget posuere est, sit amet ullamcorper ligula.\r\n\r\nSuspendisse egestas pellentesque ornare. Pellentesque egestas odio sed sapien convallis, vel pulvinar eros tristique. In hac habitasse platea dictumst. Aenean gravida tincidunt aliquam. Pellentesque enim arcu, dapibus eu lectus quis, dignissim efficitur urna. Mauris lectus augue, fringilla quis mi accumsan, scelerisque dictum lacus. Cras tempor blandit turpis at suscipit. Sed cursus ut tortor eu malesuada. Morbi sollicitudin, sapien id consequat placerat, leo tortor vehicula urna, in blandit eros sapien a eros.\r\n\r\nSed egestas nisi vitae nisi suscipit ullamcorper. Interdum et malesuada fames ac ante ipsum primis in faucibus. Donec accumsan tincidunt lacinia. Morbi consectetur ultricies consequat. Quisque blandit maximus velit eget rutrum. Donec nunc metus, facilisis sit amet lacus vel, consequat convallis nibh. In non arcu quis nisi ornare imperdiet.\r\n\r\n&nbsp;'),
(69, 2, '_intro_content', 'field_609e56eb4f806'),
(70, 21, 'hero_block_hero_header', 'John Gillen'),
(71, 21, '_hero_block_hero_header', 'field_609e516bc22ac'),
(72, 21, 'hero_block_hero_subheading', 'Helping the UK & Europe beat Drug & Alcohol addiction'),
(73, 21, '_hero_block_hero_subheading', 'field_609e5174c22ad'),
(74, 21, 'hero_block', ''),
(75, 21, '_hero_block', 'field_609e50dbc22ab'),
(76, 21, 'hero_block_hero_image', '16'),
(77, 21, '_hero_block_hero_image', 'field_609e53c951026'),
(78, 21, 'intro_content', 'Visiting professor at Belgrade University, the inspiration behind the bestselling book \'The Secret Disease of Addiction\' and director of multiple rehabilitation centres around the whole of the UK.\r\n\r\nInteger commodo pellentesque sodales. Sed scelerisque lorem nunc, eget sollicitudin mi fringilla vel. Quisque id nisi congue est tempor pellentesque vel non ligula. Curabitur porta efficitur feugiat. Donec porta ligula non mattis pharetra. Nunc placerat, leo vel rutrum mollis, felis risus laoreet dui, vitae ornare nisi metus at nibh. Cras eget posuere est, sit amet ullamcorper ligula.\r\n\r\nSuspendisse egestas pellentesque ornare. Pellentesque egestas odio sed sapien convallis, vel pulvinar eros tristique. In hac habitasse platea dictumst. Aenean gravida tincidunt aliquam. Pellentesque enim arcu, dapibus eu lectus quis, dignissim efficitur urna. Mauris lectus augue, fringilla quis mi accumsan, scelerisque dictum lacus. Cras tempor blandit turpis at suscipit. Sed cursus ut tortor eu malesuada. Morbi sollicitudin, sapien id consequat placerat, leo tortor vehicula urna, in blandit eros sapien a eros.\r\n\r\nSed egestas nisi vitae nisi suscipit ullamcorper. Interdum et malesuada fames ac ante ipsum primis in faucibus. Donec accumsan tincidunt lacinia. Morbi consectetur ultricies consequat. Quisque blandit maximus velit eget rutrum. Donec nunc metus, facilisis sit amet lacus vel, consequat convallis nibh. In non arcu quis nisi ornare imperdiet.\r\n\r\n&nbsp;'),
(79, 21, '_intro_content', 'field_609e56eb4f806'),
(80, 23, '_wp_attached_file', '2021/05/JohnGillen.png'),
(81, 23, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:675;s:6:\"height\";i:611;s:4:\"file\";s:22:\"2021/05/JohnGillen.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"JohnGillen-300x272.png\";s:5:\"width\";i:300;s:6:\"height\";i:272;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"JohnGillen-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(82, 23, '_wp_attachment_image_alt', 'Support Group'),
(83, 2, 'intro_image', '23'),
(84, 2, '_intro_image', 'field_609e6400bfcac'),
(85, 24, 'hero_block_hero_header', 'John Gillen'),
(86, 24, '_hero_block_hero_header', 'field_609e516bc22ac'),
(87, 24, 'hero_block_hero_subheading', 'Helping the UK & Europe beat Drug & Alcohol addiction'),
(88, 24, '_hero_block_hero_subheading', 'field_609e5174c22ad'),
(89, 24, 'hero_block', ''),
(90, 24, '_hero_block', 'field_609e50dbc22ab'),
(91, 24, 'hero_block_hero_image', '16'),
(92, 24, '_hero_block_hero_image', 'field_609e53c951026'),
(93, 24, 'intro_content', 'Visiting professor at Belgrade University, the inspiration behind the bestselling book \'The Secret Disease of Addiction\' and director of multiple rehabilitation centres around the whole of the UK.\r\n\r\nInteger commodo pellentesque sodales. Sed scelerisque lorem nunc, eget sollicitudin mi fringilla vel. Quisque id nisi congue est tempor pellentesque vel non ligula. Curabitur porta efficitur feugiat. Donec porta ligula non mattis pharetra. Nunc placerat, leo vel rutrum mollis, felis risus laoreet dui, vitae ornare nisi metus at nibh. Cras eget posuere est, sit amet ullamcorper ligula.\r\n\r\nSuspendisse egestas pellentesque ornare. Pellentesque egestas odio sed sapien convallis, vel pulvinar eros tristique. In hac habitasse platea dictumst. Aenean gravida tincidunt aliquam. Pellentesque enim arcu, dapibus eu lectus quis, dignissim efficitur urna. Mauris lectus augue, fringilla quis mi accumsan, scelerisque dictum lacus. Cras tempor blandit turpis at suscipit. Sed cursus ut tortor eu malesuada. Morbi sollicitudin, sapien id consequat placerat, leo tortor vehicula urna, in blandit eros sapien a eros.\r\n\r\nSed egestas nisi vitae nisi suscipit ullamcorper. Interdum et malesuada fames ac ante ipsum primis in faucibus. Donec accumsan tincidunt lacinia. Morbi consectetur ultricies consequat. Quisque blandit maximus velit eget rutrum. Donec nunc metus, facilisis sit amet lacus vel, consequat convallis nibh. In non arcu quis nisi ornare imperdiet.\r\n\r\n&nbsp;'),
(94, 24, '_intro_content', 'field_609e56eb4f806'),
(95, 24, 'intro_image', '23'),
(96, 24, '_intro_image', 'field_609e6400bfcac'),
(97, 29, '_wp_attached_file', '2021/05/Screenshot-2021-05-14-at-13-06-59-John-Gillen-Bio-Website.png'),
(98, 29, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:363;s:6:\"height\";i:172;s:4:\"file\";s:69:\"2021/05/Screenshot-2021-05-14-at-13-06-59-John-Gillen-Bio-Website.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:69:\"Screenshot-2021-05-14-at-13-06-59-John-Gillen-Bio-Website-300x142.png\";s:5:\"width\";i:300;s:6:\"height\";i:142;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:69:\"Screenshot-2021-05-14-at-13-06-59-John-Gillen-Bio-Website-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(99, 29, '_wp_attachment_image_alt', 'Step 1 Recovery'),
(100, 30, '_wp_attached_file', '2021/05/Screenshot-2021-05-14-at-13-06-53-John-Gillen-Bio-Website.png'),
(101, 30, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:362;s:6:\"height\";i:165;s:4:\"file\";s:69:\"2021/05/Screenshot-2021-05-14-at-13-06-53-John-Gillen-Bio-Website.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:69:\"Screenshot-2021-05-14-at-13-06-53-John-Gillen-Bio-Website-300x137.png\";s:5:\"width\";i:300;s:6:\"height\";i:137;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:69:\"Screenshot-2021-05-14-at-13-06-53-John-Gillen-Bio-Website-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(102, 30, '_wp_attachment_image_alt', 'Step 2 Nova Recovery'),
(103, 31, '_wp_attached_file', '2021/05/Screenshot-2021-05-14-at-13-06-46-John-Gillen-Bio-Website.png'),
(104, 31, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:361;s:6:\"height\";i:172;s:4:\"file\";s:69:\"2021/05/Screenshot-2021-05-14-at-13-06-46-John-Gillen-Bio-Website.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:69:\"Screenshot-2021-05-14-at-13-06-46-John-Gillen-Bio-Website-300x143.png\";s:5:\"width\";i:300;s:6:\"height\";i:143;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:69:\"Screenshot-2021-05-14-at-13-06-46-John-Gillen-Bio-Website-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(105, 31, '_wp_attachment_image_alt', 'Step 3 Asana Lodge'),
(106, 2, 'slider_group_slider_image_1', '29'),
(107, 2, '_slider_group_slider_image_1', 'field_609e679c9ce50'),
(108, 2, 'slider_group_slider_image_2', '30'),
(109, 2, '_slider_group_slider_image_2', 'field_609e67ae9ce51'),
(110, 2, 'slider_group_slider_image_3', '31'),
(111, 2, '_slider_group_slider_image_3', 'field_609e67b59ce52'),
(112, 2, 'slider_group', ''),
(113, 2, '_slider_group', 'field_609e678a9ce4f'),
(114, 32, 'hero_block_hero_header', 'John Gillen'),
(115, 32, '_hero_block_hero_header', 'field_609e516bc22ac'),
(116, 32, 'hero_block_hero_subheading', 'Helping the UK & Europe beat Drug & Alcohol addiction'),
(117, 32, '_hero_block_hero_subheading', 'field_609e5174c22ad'),
(118, 32, 'hero_block', ''),
(119, 32, '_hero_block', 'field_609e50dbc22ab'),
(120, 32, 'hero_block_hero_image', '16'),
(121, 32, '_hero_block_hero_image', 'field_609e53c951026'),
(122, 32, 'intro_content', 'Visiting professor at Belgrade University, the inspiration behind the bestselling book \'The Secret Disease of Addiction\' and director of multiple rehabilitation centres around the whole of the UK.\r\n\r\nInteger commodo pellentesque sodales. Sed scelerisque lorem nunc, eget sollicitudin mi fringilla vel. Quisque id nisi congue est tempor pellentesque vel non ligula. Curabitur porta efficitur feugiat. Donec porta ligula non mattis pharetra. Nunc placerat, leo vel rutrum mollis, felis risus laoreet dui, vitae ornare nisi metus at nibh. Cras eget posuere est, sit amet ullamcorper ligula.\r\n\r\nSuspendisse egestas pellentesque ornare. Pellentesque egestas odio sed sapien convallis, vel pulvinar eros tristique. In hac habitasse platea dictumst. Aenean gravida tincidunt aliquam. Pellentesque enim arcu, dapibus eu lectus quis, dignissim efficitur urna. Mauris lectus augue, fringilla quis mi accumsan, scelerisque dictum lacus. Cras tempor blandit turpis at suscipit. Sed cursus ut tortor eu malesuada. Morbi sollicitudin, sapien id consequat placerat, leo tortor vehicula urna, in blandit eros sapien a eros.\r\n\r\nSed egestas nisi vitae nisi suscipit ullamcorper. Interdum et malesuada fames ac ante ipsum primis in faucibus. Donec accumsan tincidunt lacinia. Morbi consectetur ultricies consequat. Quisque blandit maximus velit eget rutrum. Donec nunc metus, facilisis sit amet lacus vel, consequat convallis nibh. In non arcu quis nisi ornare imperdiet.\r\n\r\n&nbsp;'),
(123, 32, '_intro_content', 'field_609e56eb4f806'),
(124, 32, 'intro_image', '23'),
(125, 32, '_intro_image', 'field_609e6400bfcac'),
(126, 32, 'slider_group_slider_image_1', '29'),
(127, 32, '_slider_group_slider_image_1', 'field_609e679c9ce50'),
(128, 32, 'slider_group_slider_image_2', '30'),
(129, 32, '_slider_group_slider_image_2', 'field_609e67ae9ce51'),
(130, 32, 'slider_group_slider_image_3', '31'),
(131, 32, '_slider_group_slider_image_3', 'field_609e67b59ce52'),
(132, 32, 'slider_group', ''),
(133, 32, '_slider_group', 'field_609e678a9ce4f'),
(134, 2, 'slider_content', 'Over the past few years I\'ve been helping as many people as I can get over their addictions. No matter what they come to me with, I will do what I can to help and that why I\'ve set up a huge range of different recovery centres to help get people back on their feet.'),
(135, 2, '_slider_content', 'field_609e7097025a2'),
(136, 34, 'hero_block_hero_header', 'John Gillen'),
(137, 34, '_hero_block_hero_header', 'field_609e516bc22ac'),
(138, 34, 'hero_block_hero_subheading', 'Helping the UK & Europe beat Drug & Alcohol addiction'),
(139, 34, '_hero_block_hero_subheading', 'field_609e5174c22ad'),
(140, 34, 'hero_block', ''),
(141, 34, '_hero_block', 'field_609e50dbc22ab'),
(142, 34, 'hero_block_hero_image', '16'),
(143, 34, '_hero_block_hero_image', 'field_609e53c951026'),
(144, 34, 'intro_content', 'Visiting professor at Belgrade University, the inspiration behind the bestselling book \'The Secret Disease of Addiction\' and director of multiple rehabilitation centres around the whole of the UK.\r\n\r\nInteger commodo pellentesque sodales. Sed scelerisque lorem nunc, eget sollicitudin mi fringilla vel. Quisque id nisi congue est tempor pellentesque vel non ligula. Curabitur porta efficitur feugiat. Donec porta ligula non mattis pharetra. Nunc placerat, leo vel rutrum mollis, felis risus laoreet dui, vitae ornare nisi metus at nibh. Cras eget posuere est, sit amet ullamcorper ligula.\r\n\r\nSuspendisse egestas pellentesque ornare. Pellentesque egestas odio sed sapien convallis, vel pulvinar eros tristique. In hac habitasse platea dictumst. Aenean gravida tincidunt aliquam. Pellentesque enim arcu, dapibus eu lectus quis, dignissim efficitur urna. Mauris lectus augue, fringilla quis mi accumsan, scelerisque dictum lacus. Cras tempor blandit turpis at suscipit. Sed cursus ut tortor eu malesuada. Morbi sollicitudin, sapien id consequat placerat, leo tortor vehicula urna, in blandit eros sapien a eros.\r\n\r\nSed egestas nisi vitae nisi suscipit ullamcorper. Interdum et malesuada fames ac ante ipsum primis in faucibus. Donec accumsan tincidunt lacinia. Morbi consectetur ultricies consequat. Quisque blandit maximus velit eget rutrum. Donec nunc metus, facilisis sit amet lacus vel, consequat convallis nibh. In non arcu quis nisi ornare imperdiet.\r\n\r\n&nbsp;'),
(145, 34, '_intro_content', 'field_609e56eb4f806'),
(146, 34, 'intro_image', '23'),
(147, 34, '_intro_image', 'field_609e6400bfcac'),
(148, 34, 'slider_group_slider_image_1', '29'),
(149, 34, '_slider_group_slider_image_1', 'field_609e679c9ce50'),
(150, 34, 'slider_group_slider_image_2', '30'),
(151, 34, '_slider_group_slider_image_2', 'field_609e67ae9ce51'),
(152, 34, 'slider_group_slider_image_3', '31'),
(153, 34, '_slider_group_slider_image_3', 'field_609e67b59ce52'),
(154, 34, 'slider_group', ''),
(155, 34, '_slider_group', 'field_609e678a9ce4f'),
(156, 34, 'slider_content', 'Over the past few years I\'ve been helping as many people as I can get over their addictions. No matter what they come to me with, I will do what I can to help and that why I\'ve set up a huge range of different recovery centres to help get people back on their feet.'),
(157, 34, '_slider_content', 'field_609e7097025a2'),
(158, 40, '_wp_attached_file', '2021/05/Nadcell-Logo-Transparant.png'),
(159, 40, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1211;s:4:\"file\";s:36:\"2021/05/Nadcell-Logo-Transparant.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"Nadcell-Logo-Transparant-300x182.png\";s:5:\"width\";i:300;s:6:\"height\";i:182;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"Nadcell-Logo-Transparant-1024x620.png\";s:5:\"width\";i:1024;s:6:\"height\";i:620;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"Nadcell-Logo-Transparant-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:36:\"Nadcell-Logo-Transparant-768x465.png\";s:5:\"width\";i:768;s:6:\"height\";i:465;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:37:\"Nadcell-Logo-Transparant-1536x930.png\";s:5:\"width\";i:1536;s:6:\"height\";i:930;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(160, 41, '_wp_attached_file', '2021/05/bionad.png'),
(161, 41, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:666;s:4:\"file\";s:18:\"2021/05/bionad.png\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"bionad-300x195.png\";s:5:\"width\";i:300;s:6:\"height\";i:195;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"bionad-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"bionad-768x500.png\";s:5:\"width\";i:768;s:6:\"height\";i:500;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(162, 41, '_wp_attachment_image_alt', 'Bionad Clinic'),
(163, 40, '_wp_attachment_image_alt', 'Nadcell Mindcare'),
(164, 2, 'second_slider_content', 'Our levels of NAD+ help our body and mind to function in a healthy and optimal way. Our levels of NAD+ decline as we age, and this can be accelerated by the use of alcohol or drugs, poor nutrition and due to a stressful lifestyle.\r\n\r\nSuspendisse egestas pellentesque ornare. Pellentesque egestas odio sed sapien convallis, vel pulvinar eros tristique. In hac habitasse platea dictumst. Aenean gravida tincidunt aliquam. Pellentesque enim arcu, dapibus eu lectus quis, dignissim efficitur urna. Mauris lectus augue, fringilla quis mi accumsan, scelerisque dictum lacus. Cras tempor blandit turpis at suscipit. Sed cursus ut tortor eu malesuada. Morbi sollicitudin, sapien id consequat placerat, leo tortor vehicula urna, in blandit eros sapien a eros.'),
(165, 2, '_second_slider_content', 'field_609e72961be04'),
(166, 2, 'second_slider_group_slider_image_1', '41'),
(167, 2, '_second_slider_group_slider_image_1', 'field_609e72991be06'),
(168, 2, 'second_slider_group_slider_image_2', '40'),
(169, 2, '_second_slider_group_slider_image_2', 'field_609e72991be07'),
(170, 2, 'second_slider_group_slider_image_3', '41'),
(171, 2, '_second_slider_group_slider_image_3', 'field_609e72991be08'),
(172, 2, 'second_slider_group', ''),
(173, 2, '_second_slider_group', 'field_609e72991be05'),
(174, 42, 'hero_block_hero_header', 'John Gillen'),
(175, 42, '_hero_block_hero_header', 'field_609e516bc22ac'),
(176, 42, 'hero_block_hero_subheading', 'Helping the UK & Europe beat Drug & Alcohol addiction'),
(177, 42, '_hero_block_hero_subheading', 'field_609e5174c22ad'),
(178, 42, 'hero_block', ''),
(179, 42, '_hero_block', 'field_609e50dbc22ab'),
(180, 42, 'hero_block_hero_image', '16'),
(181, 42, '_hero_block_hero_image', 'field_609e53c951026'),
(182, 42, 'intro_content', 'Visiting professor at Belgrade University, the inspiration behind the bestselling book \'The Secret Disease of Addiction\' and director of multiple rehabilitation centres around the whole of the UK.\r\n\r\nInteger commodo pellentesque sodales. Sed scelerisque lorem nunc, eget sollicitudin mi fringilla vel. Quisque id nisi congue est tempor pellentesque vel non ligula. Curabitur porta efficitur feugiat. Donec porta ligula non mattis pharetra. Nunc placerat, leo vel rutrum mollis, felis risus laoreet dui, vitae ornare nisi metus at nibh. Cras eget posuere est, sit amet ullamcorper ligula.\r\n\r\nSuspendisse egestas pellentesque ornare. Pellentesque egestas odio sed sapien convallis, vel pulvinar eros tristique. In hac habitasse platea dictumst. Aenean gravida tincidunt aliquam. Pellentesque enim arcu, dapibus eu lectus quis, dignissim efficitur urna. Mauris lectus augue, fringilla quis mi accumsan, scelerisque dictum lacus. Cras tempor blandit turpis at suscipit. Sed cursus ut tortor eu malesuada. Morbi sollicitudin, sapien id consequat placerat, leo tortor vehicula urna, in blandit eros sapien a eros.\r\n\r\nSed egestas nisi vitae nisi suscipit ullamcorper. Interdum et malesuada fames ac ante ipsum primis in faucibus. Donec accumsan tincidunt lacinia. Morbi consectetur ultricies consequat. Quisque blandit maximus velit eget rutrum. Donec nunc metus, facilisis sit amet lacus vel, consequat convallis nibh. In non arcu quis nisi ornare imperdiet.\r\n\r\n&nbsp;'),
(183, 42, '_intro_content', 'field_609e56eb4f806'),
(184, 42, 'intro_image', '23'),
(185, 42, '_intro_image', 'field_609e6400bfcac'),
(186, 42, 'slider_group_slider_image_1', '29'),
(187, 42, '_slider_group_slider_image_1', 'field_609e679c9ce50'),
(188, 42, 'slider_group_slider_image_2', '30'),
(189, 42, '_slider_group_slider_image_2', 'field_609e67ae9ce51'),
(190, 42, 'slider_group_slider_image_3', '31'),
(191, 42, '_slider_group_slider_image_3', 'field_609e67b59ce52'),
(192, 42, 'slider_group', ''),
(193, 42, '_slider_group', 'field_609e678a9ce4f'),
(194, 42, 'slider_content', 'Over the past few years I\'ve been helping as many people as I can get over their addictions. No matter what they come to me with, I will do what I can to help and that why I\'ve set up a huge range of different recovery centres to help get people back on their feet.'),
(195, 42, '_slider_content', 'field_609e7097025a2'),
(196, 42, 'second_slider_content', 'Our levels of NAD+ help our body and mind to function in a healthy and optimal way. Our levels of NAD+ decline as we age, and this can be accelerated by the use of alcohol or drugs, poor nutrition and due to a stressful lifestyle.\r\n\r\nSuspendisse egestas pellentesque ornare. Pellentesque egestas odio sed sapien convallis, vel pulvinar eros tristique. In hac habitasse platea dictumst. Aenean gravida tincidunt aliquam. Pellentesque enim arcu, dapibus eu lectus quis, dignissim efficitur urna. Mauris lectus augue, fringilla quis mi accumsan, scelerisque dictum lacus.\r\n\r\nCras tempor blandit turpis at suscipit. Sed cursus ut tortor eu malesuada. Morbi sollicitudin, sapien id consequat placerat, leo tortor vehicula urna, in blandit eros sapien a eros.'),
(197, 42, '_second_slider_content', 'field_609e72961be04'),
(198, 42, 'second_slider_group_slider_image_1', '41'),
(199, 42, '_second_slider_group_slider_image_1', 'field_609e72991be06'),
(200, 42, 'second_slider_group_slider_image_2', '40'),
(201, 42, '_second_slider_group_slider_image_2', 'field_609e72991be07'),
(202, 42, 'second_slider_group_slider_image_3', '41'),
(203, 42, '_second_slider_group_slider_image_3', 'field_609e72991be08'),
(204, 42, 'second_slider_group', ''),
(205, 42, '_second_slider_group', 'field_609e72991be05'),
(206, 43, 'hero_block_hero_header', 'John Gillen'),
(207, 43, '_hero_block_hero_header', 'field_609e516bc22ac'),
(208, 43, 'hero_block_hero_subheading', 'Helping the UK & Europe beat Drug & Alcohol addiction'),
(209, 43, '_hero_block_hero_subheading', 'field_609e5174c22ad'),
(210, 43, 'hero_block', ''),
(211, 43, '_hero_block', 'field_609e50dbc22ab'),
(212, 43, 'hero_block_hero_image', '16'),
(213, 43, '_hero_block_hero_image', 'field_609e53c951026'),
(214, 43, 'intro_content', 'Visiting professor at Belgrade University, the inspiration behind the bestselling book \'The Secret Disease of Addiction\' and director of multiple rehabilitation centres around the whole of the UK.\r\n\r\nInteger commodo pellentesque sodales. Sed scelerisque lorem nunc, eget sollicitudin mi fringilla vel. Quisque id nisi congue est tempor pellentesque vel non ligula. Curabitur porta efficitur feugiat. Donec porta ligula non mattis pharetra. Nunc placerat, leo vel rutrum mollis, felis risus laoreet dui, vitae ornare nisi metus at nibh. Cras eget posuere est, sit amet ullamcorper ligula.\r\n\r\nSuspendisse egestas pellentesque ornare. Pellentesque egestas odio sed sapien convallis, vel pulvinar eros tristique. In hac habitasse platea dictumst. Aenean gravida tincidunt aliquam. Pellentesque enim arcu, dapibus eu lectus quis, dignissim efficitur urna. Mauris lectus augue, fringilla quis mi accumsan, scelerisque dictum lacus. Cras tempor blandit turpis at suscipit. Sed cursus ut tortor eu malesuada. Morbi sollicitudin, sapien id consequat placerat, leo tortor vehicula urna, in blandit eros sapien a eros.\r\n\r\nSed egestas nisi vitae nisi suscipit ullamcorper. Interdum et malesuada fames ac ante ipsum primis in faucibus. Donec accumsan tincidunt lacinia. Morbi consectetur ultricies consequat. Quisque blandit maximus velit eget rutrum. Donec nunc metus, facilisis sit amet lacus vel, consequat convallis nibh. In non arcu quis nisi ornare imperdiet.\r\n\r\n&nbsp;'),
(215, 43, '_intro_content', 'field_609e56eb4f806'),
(216, 43, 'intro_image', '23'),
(217, 43, '_intro_image', 'field_609e6400bfcac'),
(218, 43, 'slider_group_slider_image_1', '29'),
(219, 43, '_slider_group_slider_image_1', 'field_609e679c9ce50'),
(220, 43, 'slider_group_slider_image_2', '30'),
(221, 43, '_slider_group_slider_image_2', 'field_609e67ae9ce51'),
(222, 43, 'slider_group_slider_image_3', '31'),
(223, 43, '_slider_group_slider_image_3', 'field_609e67b59ce52'),
(224, 43, 'slider_group', ''),
(225, 43, '_slider_group', 'field_609e678a9ce4f'),
(226, 43, 'slider_content', 'Over the past few years I\'ve been helping as many people as I can get over their addictions. No matter what they come to me with, I will do what I can to help and that why I\'ve set up a huge range of different recovery centres to help get people back on their feet.'),
(227, 43, '_slider_content', 'field_609e7097025a2'),
(228, 43, 'second_slider_content', 'Our levels of NAD+ help our body and mind to function in a healthy and optimal way. Our levels of NAD+ decline as we age, and this can be accelerated by the use of alcohol or drugs, poor nutrition and due to a stressful lifestyle.\r\n\r\nSuspendisse egestas pellentesque ornare. Pellentesque egestas odio sed sapien convallis, vel pulvinar eros tristique. In hac habitasse platea dictumst. Aenean gravida tincidunt aliquam. Pellentesque enim arcu, dapibus eu lectus quis, dignissim efficitur urna. Mauris lectus augue, fringilla quis mi accumsan, scelerisque dictum lacus. Cras tempor blandit turpis at suscipit. Sed cursus ut tortor eu malesuada. Morbi sollicitudin, sapien id consequat placerat, leo tortor vehicula urna, in blandit eros sapien a eros.'),
(229, 43, '_second_slider_content', 'field_609e72961be04'),
(230, 43, 'second_slider_group_slider_image_1', '41'),
(231, 43, '_second_slider_group_slider_image_1', 'field_609e72991be06'),
(232, 43, 'second_slider_group_slider_image_2', '40'),
(233, 43, '_second_slider_group_slider_image_2', 'field_609e72991be07'),
(234, 43, 'second_slider_group_slider_image_3', '41'),
(235, 43, '_second_slider_group_slider_image_3', 'field_609e72991be08'),
(236, 43, 'second_slider_group', ''),
(237, 43, '_second_slider_group', 'field_609e72991be05'),
(238, 2, 'section_4_content', '<h1>Can I get NAD+ therapy treatment?</h1>\r\nOur levels of NAD+ help our body and mind to function in a healthy and optimal way.\r\n\r\nSuspendisse egestas pellentesque ornare. Pellentesque egestas odio sed sapien convallis, vel pulvinar eros tristique. In hac habitasse platea dictumst. Aenean gravida tincidunt aliquam. Pellentesque enim arcu, dapibus eu lectus quis, dignissim efficitur urna. Mauris lectus augue, fringilla quis mi accumsan, scelerisque dictum lacus. Cras tempor blandit turpis at suscipit. Sed cursus ut tortor eu malesuada. Morbi sollicitudin, sapien id consequat placerat, leo tortor vehicula urna, in blandit eros sapien a eros.\r\n\r\nSed egestas nisi vitae nisi suscipit ullamcorper. Interdum et malesuada fames ac ante ipsum primis in faucibus. Donec accumsan tincidunt lacinia. Morbi consectetur ultricies consequat. Quisque blandit maximus velit eget rutrum. Donec nunc metus, facilisis sit amet lacus vel, consequat convallis nibh. In non arcu quis nisi ornare imperdiet.'),
(239, 2, '_section_4_content', 'field_609e7cd65efa3'),
(240, 45, 'hero_block_hero_header', 'John Gillen'),
(241, 45, '_hero_block_hero_header', 'field_609e516bc22ac'),
(242, 45, 'hero_block_hero_subheading', 'Helping the UK & Europe beat Drug & Alcohol addiction'),
(243, 45, '_hero_block_hero_subheading', 'field_609e5174c22ad'),
(244, 45, 'hero_block', ''),
(245, 45, '_hero_block', 'field_609e50dbc22ab'),
(246, 45, 'hero_block_hero_image', '16'),
(247, 45, '_hero_block_hero_image', 'field_609e53c951026'),
(248, 45, 'intro_content', 'Visiting professor at Belgrade University, the inspiration behind the bestselling book \'The Secret Disease of Addiction\' and director of multiple rehabilitation centres around the whole of the UK.\r\n\r\nInteger commodo pellentesque sodales. Sed scelerisque lorem nunc, eget sollicitudin mi fringilla vel. Quisque id nisi congue est tempor pellentesque vel non ligula. Curabitur porta efficitur feugiat. Donec porta ligula non mattis pharetra. Nunc placerat, leo vel rutrum mollis, felis risus laoreet dui, vitae ornare nisi metus at nibh. Cras eget posuere est, sit amet ullamcorper ligula.\r\n\r\nSuspendisse egestas pellentesque ornare. Pellentesque egestas odio sed sapien convallis, vel pulvinar eros tristique. In hac habitasse platea dictumst. Aenean gravida tincidunt aliquam. Pellentesque enim arcu, dapibus eu lectus quis, dignissim efficitur urna. Mauris lectus augue, fringilla quis mi accumsan, scelerisque dictum lacus. Cras tempor blandit turpis at suscipit. Sed cursus ut tortor eu malesuada. Morbi sollicitudin, sapien id consequat placerat, leo tortor vehicula urna, in blandit eros sapien a eros.\r\n\r\nSed egestas nisi vitae nisi suscipit ullamcorper. Interdum et malesuada fames ac ante ipsum primis in faucibus. Donec accumsan tincidunt lacinia. Morbi consectetur ultricies consequat. Quisque blandit maximus velit eget rutrum. Donec nunc metus, facilisis sit amet lacus vel, consequat convallis nibh. In non arcu quis nisi ornare imperdiet.\r\n\r\n&nbsp;'),
(249, 45, '_intro_content', 'field_609e56eb4f806'),
(250, 45, 'intro_image', '23'),
(251, 45, '_intro_image', 'field_609e6400bfcac'),
(252, 45, 'slider_group_slider_image_1', '29'),
(253, 45, '_slider_group_slider_image_1', 'field_609e679c9ce50'),
(254, 45, 'slider_group_slider_image_2', '30'),
(255, 45, '_slider_group_slider_image_2', 'field_609e67ae9ce51'),
(256, 45, 'slider_group_slider_image_3', '31'),
(257, 45, '_slider_group_slider_image_3', 'field_609e67b59ce52'),
(258, 45, 'slider_group', ''),
(259, 45, '_slider_group', 'field_609e678a9ce4f'),
(260, 45, 'slider_content', 'Over the past few years I\'ve been helping as many people as I can get over their addictions. No matter what they come to me with, I will do what I can to help and that why I\'ve set up a huge range of different recovery centres to help get people back on their feet.'),
(261, 45, '_slider_content', 'field_609e7097025a2'),
(262, 45, 'second_slider_content', 'Our levels of NAD+ help our body and mind to function in a healthy and optimal way. Our levels of NAD+ decline as we age, and this can be accelerated by the use of alcohol or drugs, poor nutrition and due to a stressful lifestyle.\r\n\r\nSuspendisse egestas pellentesque ornare. Pellentesque egestas odio sed sapien convallis, vel pulvinar eros tristique. In hac habitasse platea dictumst. Aenean gravida tincidunt aliquam. Pellentesque enim arcu, dapibus eu lectus quis, dignissim efficitur urna. Mauris lectus augue, fringilla quis mi accumsan, scelerisque dictum lacus. Cras tempor blandit turpis at suscipit. Sed cursus ut tortor eu malesuada. Morbi sollicitudin, sapien id consequat placerat, leo tortor vehicula urna, in blandit eros sapien a eros.'),
(263, 45, '_second_slider_content', 'field_609e72961be04'),
(264, 45, 'second_slider_group_slider_image_1', '41'),
(265, 45, '_second_slider_group_slider_image_1', 'field_609e72991be06'),
(266, 45, 'second_slider_group_slider_image_2', '40'),
(267, 45, '_second_slider_group_slider_image_2', 'field_609e72991be07'),
(268, 45, 'second_slider_group_slider_image_3', '41'),
(269, 45, '_second_slider_group_slider_image_3', 'field_609e72991be08'),
(270, 45, 'second_slider_group', ''),
(271, 45, '_second_slider_group', 'field_609e72991be05'),
(272, 45, 'section_4_content', '<h1>Can I get NAD+ therapy treatment?</h1>\r\nOur levels of NAD+ help our body and mind to function in a healthy and optimal way.\r\n\r\nSuspendisse egestas pellentesque ornare. Pellentesque egestas odio sed sapien convallis, vel pulvinar eros tristique. In hac habitasse platea dictumst. Aenean gravida tincidunt aliquam. Pellentesque enim arcu, dapibus eu lectus quis, dignissim efficitur urna. Mauris lectus augue, fringilla quis mi accumsan, scelerisque dictum lacus. Cras tempor blandit turpis at suscipit. Sed cursus ut tortor eu malesuada. Morbi sollicitudin, sapien id consequat placerat, leo tortor vehicula urna, in blandit eros sapien a eros.\r\n\r\nSed egestas nisi vitae nisi suscipit ullamcorper. Interdum et malesuada fames ac ante ipsum primis in faucibus. Donec accumsan tincidunt lacinia. Morbi consectetur ultricies consequat. Quisque blandit maximus velit eget rutrum. Donec nunc metus, facilisis sit amet lacus vel, consequat convallis nibh. In non arcu quis nisi ornare imperdiet.'),
(273, 45, '_section_4_content', 'field_609e7cd65efa3'),
(274, 47, '_wp_attached_file', '2021/05/hiroshi-tsubono-kyknSeOD1H8-unsplash.jpg'),
(275, 47, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:425;s:4:\"file\";s:48:\"2021/05/hiroshi-tsubono-kyknSeOD1H8-unsplash.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"hiroshi-tsubono-kyknSeOD1H8-unsplash-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"hiroshi-tsubono-kyknSeOD1H8-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(276, 47, '_wp_attachment_image_alt', 'Drip'),
(277, 2, 'section_4_image', '47'),
(278, 2, '_section_4_image', 'field_609e7d76bf772'),
(279, 48, 'hero_block_hero_header', 'John Gillen'),
(280, 48, '_hero_block_hero_header', 'field_609e516bc22ac'),
(281, 48, 'hero_block_hero_subheading', 'Helping the UK & Europe beat Drug & Alcohol addiction'),
(282, 48, '_hero_block_hero_subheading', 'field_609e5174c22ad'),
(283, 48, 'hero_block', ''),
(284, 48, '_hero_block', 'field_609e50dbc22ab'),
(285, 48, 'hero_block_hero_image', '16'),
(286, 48, '_hero_block_hero_image', 'field_609e53c951026'),
(287, 48, 'intro_content', 'Visiting professor at Belgrade University, the inspiration behind the bestselling book \'The Secret Disease of Addiction\' and director of multiple rehabilitation centres around the whole of the UK.\r\n\r\nInteger commodo pellentesque sodales. Sed scelerisque lorem nunc, eget sollicitudin mi fringilla vel. Quisque id nisi congue est tempor pellentesque vel non ligula. Curabitur porta efficitur feugiat. Donec porta ligula non mattis pharetra. Nunc placerat, leo vel rutrum mollis, felis risus laoreet dui, vitae ornare nisi metus at nibh. Cras eget posuere est, sit amet ullamcorper ligula.\r\n\r\nSuspendisse egestas pellentesque ornare. Pellentesque egestas odio sed sapien convallis, vel pulvinar eros tristique. In hac habitasse platea dictumst. Aenean gravida tincidunt aliquam. Pellentesque enim arcu, dapibus eu lectus quis, dignissim efficitur urna. Mauris lectus augue, fringilla quis mi accumsan, scelerisque dictum lacus. Cras tempor blandit turpis at suscipit. Sed cursus ut tortor eu malesuada. Morbi sollicitudin, sapien id consequat placerat, leo tortor vehicula urna, in blandit eros sapien a eros.\r\n\r\nSed egestas nisi vitae nisi suscipit ullamcorper. Interdum et malesuada fames ac ante ipsum primis in faucibus. Donec accumsan tincidunt lacinia. Morbi consectetur ultricies consequat. Quisque blandit maximus velit eget rutrum. Donec nunc metus, facilisis sit amet lacus vel, consequat convallis nibh. In non arcu quis nisi ornare imperdiet.\r\n\r\n&nbsp;'),
(288, 48, '_intro_content', 'field_609e56eb4f806'),
(289, 48, 'intro_image', '23'),
(290, 48, '_intro_image', 'field_609e6400bfcac'),
(291, 48, 'slider_group_slider_image_1', '29'),
(292, 48, '_slider_group_slider_image_1', 'field_609e679c9ce50'),
(293, 48, 'slider_group_slider_image_2', '30'),
(294, 48, '_slider_group_slider_image_2', 'field_609e67ae9ce51'),
(295, 48, 'slider_group_slider_image_3', '31'),
(296, 48, '_slider_group_slider_image_3', 'field_609e67b59ce52'),
(297, 48, 'slider_group', ''),
(298, 48, '_slider_group', 'field_609e678a9ce4f'),
(299, 48, 'slider_content', 'Over the past few years I\'ve been helping as many people as I can get over their addictions. No matter what they come to me with, I will do what I can to help and that why I\'ve set up a huge range of different recovery centres to help get people back on their feet.'),
(300, 48, '_slider_content', 'field_609e7097025a2'),
(301, 48, 'second_slider_content', 'Our levels of NAD+ help our body and mind to function in a healthy and optimal way. Our levels of NAD+ decline as we age, and this can be accelerated by the use of alcohol or drugs, poor nutrition and due to a stressful lifestyle.\r\n\r\nSuspendisse egestas pellentesque ornare. Pellentesque egestas odio sed sapien convallis, vel pulvinar eros tristique. In hac habitasse platea dictumst. Aenean gravida tincidunt aliquam. Pellentesque enim arcu, dapibus eu lectus quis, dignissim efficitur urna. Mauris lectus augue, fringilla quis mi accumsan, scelerisque dictum lacus. Cras tempor blandit turpis at suscipit. Sed cursus ut tortor eu malesuada. Morbi sollicitudin, sapien id consequat placerat, leo tortor vehicula urna, in blandit eros sapien a eros.'),
(302, 48, '_second_slider_content', 'field_609e72961be04'),
(303, 48, 'second_slider_group_slider_image_1', '41'),
(304, 48, '_second_slider_group_slider_image_1', 'field_609e72991be06'),
(305, 48, 'second_slider_group_slider_image_2', '40'),
(306, 48, '_second_slider_group_slider_image_2', 'field_609e72991be07'),
(307, 48, 'second_slider_group_slider_image_3', '41'),
(308, 48, '_second_slider_group_slider_image_3', 'field_609e72991be08'),
(309, 48, 'second_slider_group', ''),
(310, 48, '_second_slider_group', 'field_609e72991be05'),
(311, 48, 'section_4_content', '<h1>Can I get NAD+ therapy treatment?</h1>\r\nOur levels of NAD+ help our body and mind to function in a healthy and optimal way.\r\n\r\nSuspendisse egestas pellentesque ornare. Pellentesque egestas odio sed sapien convallis, vel pulvinar eros tristique. In hac habitasse platea dictumst. Aenean gravida tincidunt aliquam. Pellentesque enim arcu, dapibus eu lectus quis, dignissim efficitur urna. Mauris lectus augue, fringilla quis mi accumsan, scelerisque dictum lacus. Cras tempor blandit turpis at suscipit. Sed cursus ut tortor eu malesuada. Morbi sollicitudin, sapien id consequat placerat, leo tortor vehicula urna, in blandit eros sapien a eros.\r\n\r\nSed egestas nisi vitae nisi suscipit ullamcorper. Interdum et malesuada fames ac ante ipsum primis in faucibus. Donec accumsan tincidunt lacinia. Morbi consectetur ultricies consequat. Quisque blandit maximus velit eget rutrum. Donec nunc metus, facilisis sit amet lacus vel, consequat convallis nibh. In non arcu quis nisi ornare imperdiet.'),
(312, 48, '_section_4_content', 'field_609e7cd65efa3'),
(313, 48, 'section_4_image', '47'),
(314, 48, '_section_4_image', 'field_609e7d76bf772');

-- --------------------------------------------------------

--
-- Table structure for table `jg_posts`
--

CREATE TABLE `jg_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jg_posts`
--

INSERT INTO `jg_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2021-05-11 12:54:47', '2021-05-11 12:54:47', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2021-05-11 12:54:47', '2021-05-11 12:54:47', '', 0, 'http://johngillen.local/?p=1', 0, 'post', '', 1),
(2, 1, '2021-05-11 12:54:47', '2021-05-11 12:54:47', '', 'Homepage', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2021-05-14 13:44:38', '2021-05-14 13:44:38', '', 0, 'http://johngillen.local/?page_id=2', 0, 'page', '', 0),
(3, 1, '2021-05-11 12:54:47', '2021-05-11 12:54:47', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://johngillen.local.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2021-05-11 12:54:47', '2021-05-11 12:54:47', '', 0, 'http://johngillen.local/?page_id=3', 0, 'page', '', 0),
(4, 1, '2021-05-11 12:54:54', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-05-11 12:54:54', '0000-00-00 00:00:00', '', 0, 'http://johngillen.local/?p=4', 0, 'post', '', 0),
(5, 1, '2021-05-12 20:03:13', '2021-05-12 20:03:13', '', 'Homepage', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-05-12 20:03:13', '2021-05-12 20:03:13', '', 2, 'http://johngillen.local/?p=5', 0, 'revision', '', 0),
(7, 1, '2021-05-12 20:38:46', '2021-05-12 20:38:46', '', 'Who is John Gillen', '', 'publish', 'closed', 'closed', '', 'who-is-john-gillen', '', '', '2021-05-12 20:38:46', '2021-05-12 20:38:46', '', 0, 'http://johngillen.local/?p=7', 1, 'nav_menu_item', '', 0),
(8, 1, '2021-05-12 20:38:46', '2021-05-12 20:38:46', '', 'My recovery centres', '', 'publish', 'closed', 'closed', '', 'my-recovery-centres', '', '', '2021-05-12 20:38:46', '2021-05-12 20:38:46', '', 0, 'http://johngillen.local/?p=8', 2, 'nav_menu_item', '', 0),
(9, 1, '2021-05-12 20:38:46', '2021-05-12 20:38:46', '', 'What is NAD+', '', 'publish', 'closed', 'closed', '', 'what-is-nad', '', '', '2021-05-12 20:38:46', '2021-05-12 20:38:46', '', 0, 'http://johngillen.local/?p=9', 3, 'nav_menu_item', '', 0),
(10, 1, '2021-05-14 10:31:40', '2021-05-14 10:31:40', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"post_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:22:\"templates/homepage.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Homepage Content', 'homepage-content', 'publish', 'closed', 'closed', '', 'group_609e50d2b0f52', '', '', '2021-05-14 13:39:15', '2021-05-14 13:39:15', '', 0, 'http://johngillen.local/?post_type=acf-field-group&#038;p=10', 0, 'acf-field-group', '', 0),
(11, 1, '2021-05-14 10:31:40', '2021-05-14 10:31:40', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Hero Block', 'hero_block', 'publish', 'closed', 'closed', '', 'field_609e50dbc22ab', '', '', '2021-05-14 10:56:34', '2021-05-14 10:56:34', '', 10, 'http://johngillen.local/?post_type=acf-field&#038;p=11', 1, 'acf-field', '', 0),
(12, 1, '2021-05-14 10:31:40', '2021-05-14 10:31:40', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Hero Header', 'hero_header', 'publish', 'closed', 'closed', '', 'field_609e516bc22ac', '', '', '2021-05-14 10:31:40', '2021-05-14 10:31:40', '', 11, 'http://johngillen.local/?post_type=acf-field&p=12', 0, 'acf-field', '', 0),
(13, 1, '2021-05-14 10:31:40', '2021-05-14 10:31:40', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Hero Subheading', 'hero_subheading', 'publish', 'closed', 'closed', '', 'field_609e5174c22ad', '', '', '2021-05-14 10:31:40', '2021-05-14 10:31:40', '', 11, 'http://johngillen.local/?post_type=acf-field&p=13', 1, 'acf-field', '', 0),
(14, 1, '2021-05-14 10:32:56', '2021-05-14 10:32:56', '', 'Homepage', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-05-14 10:32:56', '2021-05-14 10:32:56', '', 2, 'http://johngillen.local/?p=14', 0, 'revision', '', 0),
(15, 1, '2021-05-14 10:41:39', '2021-05-14 10:41:39', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Hero Image', 'hero_image', 'publish', 'closed', 'closed', '', 'field_609e53c951026', '', '', '2021-05-14 10:49:02', '2021-05-14 10:49:02', '', 11, 'http://johngillen.local/?post_type=acf-field&#038;p=15', 2, 'acf-field', '', 0),
(16, 1, '2021-05-14 10:41:52', '2021-05-14 10:41:52', '', '', '', 'inherit', 'open', 'closed', '', 'angryimg', '', '', '2021-05-14 10:42:00', '2021-05-14 10:42:00', '', 2, 'http://johngillen.local/wp-content/uploads/2021/05/angryimg.png', 0, 'attachment', 'image/png', 0),
(17, 1, '2021-05-14 10:42:02', '2021-05-14 10:42:02', '', 'Homepage', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-05-14 10:42:02', '2021-05-14 10:42:02', '', 2, 'http://johngillen.local/?p=17', 0, 'revision', '', 0),
(18, 1, '2021-05-14 10:56:33', '2021-05-14 10:56:33', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Hero Image', 'hero_field', 'publish', 'closed', 'closed', '', 'field_609e573a4f809', '', '', '2021-05-14 10:56:33', '2021-05-14 10:56:33', '', 10, 'http://johngillen.local/?post_type=acf-field&p=18', 0, 'acf-field', '', 0),
(19, 1, '2021-05-14 10:56:34', '2021-05-14 10:56:34', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Site Body', 'site_body', 'publish', 'closed', 'closed', '', 'field_609e57294f808', '', '', '2021-05-14 10:56:34', '2021-05-14 10:56:34', '', 10, 'http://johngillen.local/?post_type=acf-field&p=19', 2, 'acf-field', '', 0),
(20, 1, '2021-05-14 10:56:34', '2021-05-14 10:56:34', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Section 1 - Introduction Content', 'intro_content', 'publish', 'closed', 'closed', '', 'field_609e56eb4f806', '', '', '2021-05-14 11:50:55', '2021-05-14 11:50:55', '', 10, 'http://johngillen.local/?post_type=acf-field&#038;p=20', 3, 'acf-field', '', 0),
(21, 1, '2021-05-14 10:58:17', '2021-05-14 10:58:17', '', 'Homepage', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-05-14 10:58:17', '2021-05-14 10:58:17', '', 2, 'http://johngillen.local/?p=21', 0, 'revision', '', 0),
(22, 1, '2021-05-14 11:50:55', '2021-05-14 11:50:55', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Section 1 - Image', 'intro_image', 'publish', 'closed', 'closed', '', 'field_609e6400bfcac', '', '', '2021-05-14 11:50:55', '2021-05-14 11:50:55', '', 10, 'http://johngillen.local/?post_type=acf-field&p=22', 4, 'acf-field', '', 0),
(23, 1, '2021-05-14 11:51:44', '2021-05-14 11:51:44', '', 'JohnGillen', '', 'inherit', 'open', 'closed', '', 'johngillen', '', '', '2021-05-14 11:51:58', '2021-05-14 11:51:58', '', 2, 'http://johngillen.local/wp-content/uploads/2021/05/JohnGillen.png', 0, 'attachment', 'image/png', 0),
(24, 1, '2021-05-14 11:52:08', '2021-05-14 11:52:08', '', 'Homepage', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-05-14 11:52:08', '2021-05-14 11:52:08', '', 2, 'http://johngillen.local/?p=24', 0, 'revision', '', 0),
(25, 1, '2021-05-14 12:06:24', '2021-05-14 12:06:24', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"table\";s:10:\"sub_fields\";a:0:{}}', 'Section 2 - Slider', 'slider_group', 'publish', 'closed', 'closed', '', 'field_609e678a9ce4f', '', '', '2021-05-14 12:53:33', '2021-05-14 12:53:33', '', 10, 'http://johngillen.local/?post_type=acf-field&#038;p=25', 6, 'acf-field', '', 0),
(26, 1, '2021-05-14 12:06:24', '2021-05-14 12:06:24', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Slider Image 1', 'slider_image_1', 'publish', 'closed', 'closed', '', 'field_609e679c9ce50', '', '', '2021-05-14 12:06:24', '2021-05-14 12:06:24', '', 25, 'http://johngillen.local/?post_type=acf-field&p=26', 0, 'acf-field', '', 0),
(27, 1, '2021-05-14 12:06:24', '2021-05-14 12:06:24', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Slider Image 2', 'slider_image_2', 'publish', 'closed', 'closed', '', 'field_609e67ae9ce51', '', '', '2021-05-14 12:06:24', '2021-05-14 12:06:24', '', 25, 'http://johngillen.local/?post_type=acf-field&p=27', 1, 'acf-field', '', 0),
(28, 1, '2021-05-14 12:06:24', '2021-05-14 12:06:24', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Slider Image 3', 'slider_image_3', 'publish', 'closed', 'closed', '', 'field_609e67b59ce52', '', '', '2021-05-14 12:07:33', '2021-05-14 12:07:33', '', 25, 'http://johngillen.local/?post_type=acf-field&#038;p=28', 2, 'acf-field', '', 0),
(29, 1, '2021-05-14 12:07:52', '2021-05-14 12:07:52', '', 'Step1Recovery', '', 'inherit', 'open', 'closed', '', 'screenshot-2021-05-14-at-13-06-59-john-gillen-bio-website', '', '', '2021-05-14 12:08:08', '2021-05-14 12:08:08', '', 2, 'http://johngillen.local/wp-content/uploads/2021/05/Screenshot-2021-05-14-at-13-06-59-John-Gillen-Bio-Website.png', 0, 'attachment', 'image/png', 0),
(30, 1, '2021-05-14 12:08:12', '2021-05-14 12:08:12', '', 'Step2NovaRecovery', '', 'inherit', 'open', 'closed', '', 'screenshot-2021-05-14-at-13-06-53-john-gillen-bio-website', '', '', '2021-05-14 12:08:21', '2021-05-14 12:08:21', '', 2, 'http://johngillen.local/wp-content/uploads/2021/05/Screenshot-2021-05-14-at-13-06-53-John-Gillen-Bio-Website.png', 0, 'attachment', 'image/png', 0),
(31, 1, '2021-05-14 12:08:31', '2021-05-14 12:08:31', '', 'Step3AsanaLodge', '', 'inherit', 'open', 'closed', '', 'screenshot-2021-05-14-at-13-06-46-john-gillen-bio-website', '', '', '2021-05-14 12:08:41', '2021-05-14 12:08:41', '', 2, 'http://johngillen.local/wp-content/uploads/2021/05/Screenshot-2021-05-14-at-13-06-46-John-Gillen-Bio-Website.png', 0, 'attachment', 'image/png', 0),
(32, 1, '2021-05-14 12:08:54', '2021-05-14 12:08:54', '', 'Homepage', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-05-14 12:08:54', '2021-05-14 12:08:54', '', 2, 'http://johngillen.local/?p=32', 0, 'revision', '', 0),
(33, 1, '2021-05-14 12:44:30', '2021-05-14 12:44:30', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Section 2 - Content', 'slider_content', 'publish', 'closed', 'closed', '', 'field_609e7097025a2', '', '', '2021-05-14 12:44:30', '2021-05-14 12:44:30', '', 10, 'http://johngillen.local/?post_type=acf-field&p=33', 5, 'acf-field', '', 0),
(34, 1, '2021-05-14 12:48:18', '2021-05-14 12:48:18', '', 'Homepage', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-05-14 12:48:18', '2021-05-14 12:48:18', '', 2, 'http://johngillen.local/?p=34', 0, 'revision', '', 0),
(35, 1, '2021-05-14 12:53:33', '2021-05-14 12:53:33', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Section 3 - Content', 'second_slider_content', 'publish', 'closed', 'closed', '', 'field_609e72961be04', '', '', '2021-05-14 12:53:33', '2021-05-14 12:53:33', '', 10, 'http://johngillen.local/?post_type=acf-field&p=35', 7, 'acf-field', '', 0),
(36, 1, '2021-05-14 12:53:33', '2021-05-14 12:53:33', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"table\";s:10:\"sub_fields\";a:0:{}}', 'Section 3 - Slider', 'second_slider_group', 'publish', 'closed', 'closed', '', 'field_609e72991be05', '', '', '2021-05-14 12:53:33', '2021-05-14 12:53:33', '', 10, 'http://johngillen.local/?post_type=acf-field&p=36', 8, 'acf-field', '', 0),
(37, 1, '2021-05-14 12:53:33', '2021-05-14 12:53:33', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Slider Image 1', 'slider_image_1', 'publish', 'closed', 'closed', '', 'field_609e72991be06', '', '', '2021-05-14 12:53:33', '2021-05-14 12:53:33', '', 36, 'http://johngillen.local/?post_type=acf-field&p=37', 0, 'acf-field', '', 0),
(38, 1, '2021-05-14 12:53:33', '2021-05-14 12:53:33', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Slider Image 2', 'slider_image_2', 'publish', 'closed', 'closed', '', 'field_609e72991be07', '', '', '2021-05-14 12:53:33', '2021-05-14 12:53:33', '', 36, 'http://johngillen.local/?post_type=acf-field&p=38', 1, 'acf-field', '', 0),
(39, 1, '2021-05-14 12:53:33', '2021-05-14 12:53:33', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Slider Image 3', 'slider_image_3', 'publish', 'closed', 'closed', '', 'field_609e72991be08', '', '', '2021-05-14 12:53:33', '2021-05-14 12:53:33', '', 36, 'http://johngillen.local/?post_type=acf-field&p=39', 2, 'acf-field', '', 0),
(40, 1, '2021-05-14 13:05:53', '2021-05-14 13:05:53', '', 'Nadcell-Logo-Transparant', '', 'inherit', 'open', 'closed', '', 'nadcell-logo-transparant', '', '', '2021-05-14 13:06:21', '2021-05-14 13:06:21', '', 2, 'http://johngillen.local/wp-content/uploads/2021/05/Nadcell-Logo-Transparant.png', 0, 'attachment', 'image/png', 0),
(41, 1, '2021-05-14 13:05:55', '2021-05-14 13:05:55', '', 'bionad', '', 'inherit', 'open', 'closed', '', 'bionad', '', '', '2021-05-14 13:06:06', '2021-05-14 13:06:06', '', 2, 'http://johngillen.local/wp-content/uploads/2021/05/bionad.png', 0, 'attachment', 'image/png', 0),
(42, 1, '2021-05-14 13:06:33', '2021-05-14 13:06:33', '', 'Homepage', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-05-14 13:06:33', '2021-05-14 13:06:33', '', 2, 'http://johngillen.local/?p=42', 0, 'revision', '', 0),
(43, 1, '2021-05-14 13:10:06', '2021-05-14 13:10:06', '', 'Homepage', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-05-14 13:10:06', '2021-05-14 13:10:06', '', 2, 'http://johngillen.local/?p=43', 0, 'revision', '', 0),
(44, 1, '2021-05-14 13:37:06', '2021-05-14 13:37:06', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Section 4 - Content', 'section_4_content', 'publish', 'closed', 'closed', '', 'field_609e7cd65efa3', '', '', '2021-05-14 13:37:06', '2021-05-14 13:37:06', '', 10, 'http://johngillen.local/?post_type=acf-field&p=44', 9, 'acf-field', '', 0),
(45, 1, '2021-05-14 13:39:00', '2021-05-14 13:39:00', '', 'Homepage', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-05-14 13:39:00', '2021-05-14 13:39:00', '', 2, 'http://johngillen.local/?p=45', 0, 'revision', '', 0),
(46, 1, '2021-05-14 13:39:15', '2021-05-14 13:39:15', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Section 4 - Image', 'section_4_image', 'publish', 'closed', 'closed', '', 'field_609e7d76bf772', '', '', '2021-05-14 13:39:15', '2021-05-14 13:39:15', '', 10, 'http://johngillen.local/?post_type=acf-field&p=46', 10, 'acf-field', '', 0),
(47, 1, '2021-05-14 13:44:24', '2021-05-14 13:44:24', '', 'hiroshi-tsubono-kyknSeOD1H8-unsplash', '', 'inherit', 'open', 'closed', '', 'hiroshi-tsubono-kyknseod1h8-unsplash', '', '', '2021-05-14 13:44:33', '2021-05-14 13:44:33', '', 2, 'http://johngillen.local/wp-content/uploads/2021/05/hiroshi-tsubono-kyknSeOD1H8-unsplash.jpg', 0, 'attachment', 'image/jpeg', 0),
(48, 1, '2021-05-14 13:44:38', '2021-05-14 13:44:38', '', 'Homepage', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-05-14 13:44:38', '2021-05-14 13:44:38', '', 2, 'http://johngillen.local/?p=48', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `jg_termmeta`
--

CREATE TABLE `jg_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jg_terms`
--

CREATE TABLE `jg_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jg_terms`
--

INSERT INTO `jg_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Navbar', 'navbar', 0);

-- --------------------------------------------------------

--
-- Table structure for table `jg_term_relationships`
--

CREATE TABLE `jg_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jg_term_relationships`
--

INSERT INTO `jg_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(7, 2, 0),
(8, 2, 0),
(9, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jg_term_taxonomy`
--

CREATE TABLE `jg_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jg_term_taxonomy`
--

INSERT INTO `jg_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `jg_usermeta`
--

CREATE TABLE `jg_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jg_usermeta`
--

INSERT INTO `jg_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'mw_johngillen'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'jg_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'jg_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"9d56f8ba89813a79043edaa53e319eb4af00a5c74e8ecf1ff9662f3d3e946551\";a:4:{s:10:\"expiration\";i:1621150804;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:68:\"Mozilla/5.0 (X11; Linux x86_64; rv:89.0) Gecko/20100101 Firefox/89.0\";s:5:\"login\";i:1620978004;}}'),
(17, 1, 'jg_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(21, 1, 'jg_user-settings', 'libraryContent=browse'),
(22, 1, 'jg_user-settings-time', '1620988918');

-- --------------------------------------------------------

--
-- Table structure for table `jg_users`
--

CREATE TABLE `jg_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jg_users`
--

INSERT INTO `jg_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'mw_johngillen', '$P$BncbRBXBvEZUJjElEI9kv0libEZpDh/', 'mw_johngillen', 'michaelwilliams01@protonmail.com', 'http://johngillen.local', '2021-05-11 12:54:47', '', 0, 'mw_johngillen');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jg_commentmeta`
--
ALTER TABLE `jg_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `jg_comments`
--
ALTER TABLE `jg_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `jg_links`
--
ALTER TABLE `jg_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `jg_options`
--
ALTER TABLE `jg_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `jg_postmeta`
--
ALTER TABLE `jg_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `jg_posts`
--
ALTER TABLE `jg_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `jg_termmeta`
--
ALTER TABLE `jg_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `jg_terms`
--
ALTER TABLE `jg_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `jg_term_relationships`
--
ALTER TABLE `jg_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `jg_term_taxonomy`
--
ALTER TABLE `jg_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `jg_usermeta`
--
ALTER TABLE `jg_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `jg_users`
--
ALTER TABLE `jg_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jg_commentmeta`
--
ALTER TABLE `jg_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jg_comments`
--
ALTER TABLE `jg_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jg_links`
--
ALTER TABLE `jg_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jg_options`
--
ALTER TABLE `jg_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=244;

--
-- AUTO_INCREMENT for table `jg_postmeta`
--
ALTER TABLE `jg_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=315;

--
-- AUTO_INCREMENT for table `jg_posts`
--
ALTER TABLE `jg_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `jg_termmeta`
--
ALTER TABLE `jg_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jg_terms`
--
ALTER TABLE `jg_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `jg_term_taxonomy`
--
ALTER TABLE `jg_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `jg_usermeta`
--
ALTER TABLE `jg_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `jg_users`
--
ALTER TABLE `jg_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
