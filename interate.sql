-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 27, 2022 lúc 11:20 AM
-- Phiên bản máy phục vụ: 10.4.25-MariaDB
-- Phiên bản PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `interate`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2022-12-22 02:23:09', '2022-12-22 02:23:09', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.', 0, 'post-trashed', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/interate', 'yes'),
(2, 'home', 'http://localhost/interate', 'yes'),
(3, 'blogname', 'Interate', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'thanhtrungtran8888@gmail.com', 'yes'),
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
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:91:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'INTERATE-CORP', 'yes'),
(41, 'stylesheet', 'INTERATE-CORP', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '53496', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
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
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '45', 'yes'),
(82, 'page_on_front', '0', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '48', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1687227789', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '53496', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'user_count', '1', 'no'),
(103, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:8:{i:1672136590;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1672150990;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1672151005;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1672194190;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1672194205;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1672194206;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1672366990;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(121, 'recovery_keys', 'a:1:{s:22:\"v3S17rOEDOgdGNiB84j7NH\";a:2:{s:10:\"hashed_key\";s:34:\"$P$BUkIsSMw6Ou.YQEkF3WIlRB3dTBWcr.\";s:10:\"created_at\";i:1672133430;}}', 'yes'),
(124, 'theme_mods_twentytwentythree', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1671676666;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(127, 'https_detection_errors', 'a:2:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}s:19:\"bad_response_source\";a:1:{i:0;s:55:\"It looks like the response did not come from this site.\";}}', 'yes'),
(128, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.1.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.1.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.1.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.1.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.1.1\";s:7:\"version\";s:5:\"6.1.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1672117237;s:15:\"version_checked\";s:5:\"6.1.1\";s:12:\"translations\";a:0:{}}', 'no'),
(135, '_site_transient_timeout_browser_a818ab359804517f2549e94c88d03c0b', '1672280606', 'no'),
(136, '_site_transient_browser_a818ab359804517f2549e94c88d03c0b', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"108.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(137, '_site_transient_timeout_php_check_2f5acf219326a8bc5331ee302b9812f4', '1672280606', 'no'),
(138, '_site_transient_php_check_2f5acf219326a8bc5331ee302b9812f4', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(140, 'can_compress_scripts', '1', 'no'),
(155, 'finished_updating_comment_type', '1', 'yes'),
(157, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1672133005;s:7:\"checked\";a:4:{s:13:\"INTERATE-CORP\";s:5:\"1.0.0\";s:15:\"twentytwentyone\";s:3:\"1.7\";s:17:\"twentytwentythree\";s:3:\"1.0\";s:15:\"twentytwentytwo\";s:3:\"1.3\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.7.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.0\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.0.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.3.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(158, 'current_theme', 'Interate Corp', 'yes'),
(159, 'theme_mods_INTERATE-CORP', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:3:{s:3:\"top\";i:7;s:6:\"social\";i:0;s:11:\"header-menu\";i:7;}s:18:\"custom_css_post_id\";i:-1;s:12:\"header_image\";s:64:\"http://localhost/interate/wp-content/uploads/2022/12/banner1.png\";}', 'yes'),
(160, 'theme_switched', '', 'yes'),
(176, 'wp_calendar_block_has_published_posts', '1', 'yes'),
(243, 'category_children', 'a:0:{}', 'yes'),
(264, '_transient_health-check-site-status-result', '{\"good\":15,\"recommended\":6,\"critical\":0}', 'yes'),
(287, 'recently_activated', 'a:0:{}', 'yes'),
(312, 'nav_menu_options', 'a:1:{s:8:\"auto_add\";a:0:{}}', 'yes'),
(323, '_site_transient_update_plugins', 'O:8:\"stdClass\":1:{s:12:\"last_checked\";i:1672117248;}', 'no'),
(324, '_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b', '1672160448', 'no'),
(325, '_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b', '<div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 28: Operation timed out after 10005 milliseconds with 29681 bytes received</p></div><div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 56: OpenSSL SSL_read: Connection was reset, errno 10054</p></div>', 'no'),
(328, '_site_transient_timeout_community-events-d41d8cd98f00b204e9800998ecf8427e', '1672176201', 'no'),
(329, '_site_transient_community-events-d41d8cd98f00b204e9800998ecf8427e', 'a:4:{s:9:\"sandboxed\";b:0;s:5:\"error\";N;s:8:\"location\";a:1:{s:2:\"ip\";b:0;}s:6:\"events\";a:0:{}}', 'no'),
(330, '_site_transient_timeout_theme_roots', '1672134804', 'no'),
(331, '_site_transient_theme_roots', 'a:4:{s:13:\"INTERATE-CORP\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}', 'no'),
(332, 'recovery_mode_email_last_sent', '1672133430', 'yes');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(5, 6, '_edit_lock', '1671692645:1'),
(8, 6, '_wp_trash_meta_status', 'publish'),
(9, 6, '_wp_trash_meta_time', '1671692653'),
(10, 6, '_wp_desired_post_slug', 'test'),
(11, 8, '_edit_lock', '1671692840:1'),
(12, 9, '_edit_lock', '1671693893:1'),
(13, 10, '_edit_lock', '1671693915:1'),
(14, 11, '_edit_lock', '1671761183:1'),
(19, 1, '_wp_trash_meta_status', 'publish'),
(20, 1, '_wp_trash_meta_time', '1671694140'),
(21, 1, '_wp_desired_post_slug', 'hello-world'),
(22, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(23, 14, '_edit_lock', '1671763606:1'),
(26, 17, '_edit_lock', '1671700288:1'),
(27, 18, '_edit_lock', '1671700303:1'),
(28, 19, '_edit_lock', '1671700321:1'),
(29, 20, '_edit_lock', '1671700344:1'),
(30, 21, '_edit_lock', '1671700361:1'),
(31, 22, '_edit_lock', '1671700382:1'),
(32, 23, '_edit_lock', '1671700890:1'),
(33, 24, '_edit_lock', '1671701027:1'),
(34, 25, '_edit_lock', '1671701035:1'),
(35, 26, '_edit_lock', '1671701064:1'),
(36, 27, '_wp_attached_file', '2022/12/newevent1.png'),
(37, 27, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:350;s:6:\"height\";i:175;s:4:\"file\";s:21:\"2022/12/newevent1.png\";s:8:\"filesize\";i:132790;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"newevent1-300x150.png\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:91851;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"newevent1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:50200;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(40, 11, '_thumbnail_id', '27'),
(43, 14, '_thumbnail_id', '28'),
(44, 28, '_wp_attached_file', '2022/12/newevent3.png'),
(45, 28, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:350;s:6:\"height\";i:175;s:4:\"file\";s:21:\"2022/12/newevent3.png\";s:8:\"filesize\";i:134745;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"newevent3-300x150.png\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:93214;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"newevent3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:47080;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(58, 36, '_edit_lock', '1671703388:1'),
(59, 37, '_wp_attached_file', '2022/12/vision.png'),
(60, 37, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:509;s:6:\"height\";i:328;s:4:\"file\";s:18:\"2022/12/vision.png\";s:8:\"filesize\";i:281410;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:18:\"vision-300x193.png\";s:5:\"width\";i:300;s:6:\"height\";i:193;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:106598;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:18:\"vision-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:45385;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(63, 36, '_thumbnail_id', '37'),
(64, 39, '_edit_lock', '1671763602:1'),
(65, 40, '_wp_attached_file', '2022/12/newevent2.png'),
(66, 40, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:350;s:6:\"height\";i:175;s:4:\"file\";s:21:\"2022/12/newevent2.png\";s:8:\"filesize\";i:148006;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"newevent2-300x150.png\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:101805;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"newevent2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:52011;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(69, 39, '_thumbnail_id', '40'),
(70, 36, '_wp_trash_meta_status', 'publish'),
(71, 36, '_wp_trash_meta_time', '1671703631'),
(72, 36, '_wp_desired_post_slug', 'adlsadlmakdmlsadsa'),
(73, 42, '_edit_lock', '1671703587:1'),
(80, 43, '_edit_lock', '1671761019:1'),
(81, 44, '_edit_lock', '1671761038:1'),
(82, 45, '_edit_lock', '1671761080:1'),
(83, 48, '_wp_attached_file', '2022/12/favicon.png'),
(84, 48, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:82;s:6:\"height\";i:82;s:4:\"file\";s:19:\"2022/12/favicon.png\";s:8:\"filesize\";i:2895;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(85, 49, '_wp_trash_meta_status', 'publish'),
(86, 49, '_wp_trash_meta_time', '1672026412'),
(87, 50, '_wp_trash_meta_status', 'publish'),
(88, 50, '_wp_trash_meta_time', '1672040843'),
(107, 53, '_menu_item_type', 'custom'),
(108, 53, '_menu_item_menu_item_parent', '0'),
(109, 53, '_menu_item_object_id', '53'),
(110, 53, '_menu_item_object', 'custom'),
(111, 53, '_menu_item_target', ''),
(112, 53, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(113, 53, '_menu_item_xfn', ''),
(114, 53, '_menu_item_url', '#about'),
(115, 53, '_menu_item_orphaned', '1672041512'),
(116, 54, '_menu_item_type', 'custom'),
(117, 54, '_menu_item_menu_item_parent', '0'),
(118, 54, '_menu_item_object_id', '54'),
(119, 54, '_menu_item_object', 'custom'),
(120, 54, '_menu_item_target', ''),
(121, 54, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(122, 54, '_menu_item_xfn', ''),
(123, 54, '_menu_item_url', '#member'),
(124, 54, '_menu_item_orphaned', '1672041526'),
(125, 55, '_menu_item_type', 'custom'),
(126, 55, '_menu_item_menu_item_parent', '0'),
(127, 55, '_menu_item_object_id', '55'),
(128, 55, '_menu_item_object', 'custom'),
(129, 55, '_menu_item_target', ''),
(130, 55, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(131, 55, '_menu_item_xfn', ''),
(132, 55, '_menu_item_url', '#about'),
(134, 56, '_menu_item_type', 'custom'),
(135, 56, '_menu_item_menu_item_parent', '0'),
(136, 56, '_menu_item_object_id', '56'),
(137, 56, '_menu_item_object', 'custom'),
(138, 56, '_menu_item_target', ''),
(139, 56, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(140, 56, '_menu_item_xfn', ''),
(141, 56, '_menu_item_url', '#member'),
(143, 57, '_menu_item_type', 'custom'),
(144, 57, '_menu_item_menu_item_parent', '0'),
(145, 57, '_menu_item_object_id', '57'),
(146, 57, '_menu_item_object', 'custom'),
(147, 57, '_menu_item_target', ''),
(148, 57, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(149, 57, '_menu_item_xfn', ''),
(150, 57, '_menu_item_url', '#news'),
(152, 58, '_menu_item_type', 'custom'),
(153, 58, '_menu_item_menu_item_parent', '0'),
(154, 58, '_menu_item_object_id', '58'),
(155, 58, '_menu_item_object', 'custom'),
(156, 58, '_menu_item_target', ''),
(157, 58, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(158, 58, '_menu_item_xfn', ''),
(159, 58, '_menu_item_url', 'https://www.facebook.com/interatevietnam'),
(161, 59, '_menu_item_type', 'custom'),
(162, 59, '_menu_item_menu_item_parent', '0'),
(163, 59, '_menu_item_object_id', '59'),
(164, 59, '_menu_item_object', 'custom'),
(165, 59, '_menu_item_target', ''),
(166, 59, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(167, 59, '_menu_item_xfn', ''),
(168, 59, '_menu_item_url', '#contact'),
(179, 61, '_wp_attached_file', '2022/12/2.png'),
(180, 61, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1440;s:6:\"height\";i:648;s:4:\"file\";s:13:\"2022/12/2.png\";s:8:\"filesize\";i:419774;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:13:\"2-300x135.png\";s:5:\"width\";i:300;s:6:\"height\";i:135;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:34406;}s:5:\"large\";a:5:{s:4:\"file\";s:14:\"2-1024x461.png\";s:5:\"width\";i:1024;s:6:\"height\";i:461;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:236641;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:13:\"2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:26887;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:13:\"2-768x346.png\";s:5:\"width\";i:768;s:6:\"height\";i:346;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:151480;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(181, 62, '_edit_lock', '1672133613:1'),
(182, 62, '_customize_restore_dismissed', '1'),
(183, 63, '_wp_attached_file', '2022/12/banner1.png'),
(184, 63, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:19:\"2022/12/banner1.png\";s:8:\"filesize\";i:2007999;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:19:\"banner1-300x169.png\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:64713;}s:5:\"large\";a:5:{s:4:\"file\";s:20:\"banner1-1024x576.png\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:632211;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:19:\"banner1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:25828;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:19:\"banner1-768x432.png\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:378315;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:20:\"banner1-1536x864.png\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:1283124;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(185, 64, '_wp_trash_meta_status', 'publish'),
(186, 64, '_wp_trash_meta_time', '1672134173');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(11, 1, '2022-12-22 07:28:25', '2022-12-22 07:28:25', '<!-- wp:paragraph -->\n<p>Sôi động, bùng nổ cảm xúc và những trận cầu nảy lửa là ấn tượng khó phai đọng lại trong mỗi thành viên tham dự Giải bóng đá giao hữu <a href=\"https://www.facebook.com/interatecorp?__cft__[0]=AZV6Lo4n2ga7dxg3xatDktWSITj_vBn9UWzF2yaBtXewdRW5DEqWXONA0JN6IQhk6W1297a82wzIossBPoqZkqtgOxnZ0pw665XG1gbNr0Q2D3R1vcgel9zoh_8pMo4oRhMu4zT3SMCVNApMWrSSrvfG&amp;__tn__=-]K-R\">Interate Corp</a> - <a href=\"https://www.facebook.com/WemoMediaVN?__cft__[0]=AZV6Lo4n2ga7dxg3xatDktWSITj_vBn9UWzF2yaBtXewdRW5DEqWXONA0JN6IQhk6W1297a82wzIossBPoqZkqtgOxnZ0pw665XG1gbNr0Q2D3R1vcgel9zoh_8pMo4oRhMu4zT3SMCVNApMWrSSrvfG&amp;__tn__=-]K-R\">WEMO</a> - <a href=\"https://www.facebook.com/ComosixMedia?__cft__[0]=AZV6Lo4n2ga7dxg3xatDktWSITj_vBn9UWzF2yaBtXewdRW5DEqWXONA0JN6IQhk6W1297a82wzIossBPoqZkqtgOxnZ0pw665XG1gbNr0Q2D3R1vcgel9zoh_8pMo4oRhMu4zT3SMCVNApMWrSSrvfG&amp;__tn__=-]K-R\">Comosix</a>!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Xuyên suốt 2 tuần diễn ra trận đấu với hơn 60 cầu thủ tham gia, 4 đội đã xuất sắc vượt qua vòng loại và hàng chục bàn thắng được ghi đã mang lại thật nhiều niềm vui và ý nghĩa.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Đặc biệt xin chúc mừng Quán quân vô địch mùa giải - IR T-Rex, với tỉ số chung cuộc như sau:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>️<img height=\"16\" width=\"16\" alt=\"⚽\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/taf/1/16/26bd.png\"> IR T-Rex - Hasagi: 1 - 0</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><img height=\"16\" width=\"16\" alt=\"⚽\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/taf/1/16/26bd.png\"> IR Beer - Midside Team: 0 - 1</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Một lần nữa xin chúc mừng tất cả những đội bóng, các bạn đều là người chiến thắng. Cảm ơn các bạn và những CĐV của hai công ty đã không ngại mưa gió để cháy hết mình cùng giải đấu <img height=\"16\" width=\"16\" alt=\"❣️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/teb/1/16/2763.png\"></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Còn bây giờ, cùng Interate Corp điểm lại những khoảnh khắc ấn tượng của giải đấu giao hữu đáng nhớ vừa qua nhé <img height=\"16\" width=\"16\" alt=\"👇\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t4f/1/16/1f447.png\"></p>\n<!-- /wp:paragraph -->', 'Giải bóng đá giao hữu đầu tiên đã chính thức xuất hiện.', '', 'publish', 'open', 'open', '', 'giai-bong-da-giao-huu-interate-corp-wemo-comosix-2022', '', '', '2022-12-22 10:09:28', '2022-12-22 10:09:28', '', 0, 'http://localhost/interate/?p=11', 0, 'post', '', 0),
(12, 1, '2022-12-22 07:28:25', '2022-12-22 07:28:25', '<!-- wp:paragraph -->\n<p>Sôi động, bùng nổ cảm xúc và những trận cầu nảy lửa là ấn tượng khó phai đọng lại trong mỗi thành viên tham dự Giải bóng đá giao hữu <a href=\"https://www.facebook.com/interatecorp?__cft__[0]=AZV6Lo4n2ga7dxg3xatDktWSITj_vBn9UWzF2yaBtXewdRW5DEqWXONA0JN6IQhk6W1297a82wzIossBPoqZkqtgOxnZ0pw665XG1gbNr0Q2D3R1vcgel9zoh_8pMo4oRhMu4zT3SMCVNApMWrSSrvfG&amp;__tn__=-]K-R\">Interate Corp</a> - <a href=\"https://www.facebook.com/WemoMediaVN?__cft__[0]=AZV6Lo4n2ga7dxg3xatDktWSITj_vBn9UWzF2yaBtXewdRW5DEqWXONA0JN6IQhk6W1297a82wzIossBPoqZkqtgOxnZ0pw665XG1gbNr0Q2D3R1vcgel9zoh_8pMo4oRhMu4zT3SMCVNApMWrSSrvfG&amp;__tn__=-]K-R\">WEMO</a> - <a href=\"https://www.facebook.com/ComosixMedia?__cft__[0]=AZV6Lo4n2ga7dxg3xatDktWSITj_vBn9UWzF2yaBtXewdRW5DEqWXONA0JN6IQhk6W1297a82wzIossBPoqZkqtgOxnZ0pw665XG1gbNr0Q2D3R1vcgel9zoh_8pMo4oRhMu4zT3SMCVNApMWrSSrvfG&amp;__tn__=-]K-R\">Comosix</a>!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Xuyên suốt 2 tuần diễn ra trận đấu với hơn 60 cầu thủ tham gia, 4 đội đã xuất sắc vượt qua vòng loại và hàng chục bàn thắng được ghi đã mang lại thật nhiều niềm vui và ý nghĩa.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Đặc biệt xin chúc mừng Quán quân vô địch mùa giải - IR T-Rex, với tỉ số chung cuộc như sau:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>️<img height=\"16\" width=\"16\" alt=\"⚽\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/taf/1/16/26bd.png\"> IR T-Rex - Hasagi: 1 - 0</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><img height=\"16\" width=\"16\" alt=\"⚽\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/taf/1/16/26bd.png\"> IR Beer - Midside Team: 0 - 1</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Một lần nữa xin chúc mừng tất cả những đội bóng, các bạn đều là người chiến thắng. Cảm ơn các bạn và những CĐV của hai công ty đã không ngại mưa gió để cháy hết mình cùng giải đấu <img height=\"16\" width=\"16\" alt=\"❣️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/teb/1/16/2763.png\"></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Còn bây giờ, cùng Interate Corp điểm lại những khoảnh khắc ấn tượng của giải đấu giao hữu đáng nhớ vừa qua nhé <img height=\"16\" width=\"16\" alt=\"👇\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t4f/1/16/1f447.png\"></p>\n<!-- /wp:paragraph -->', 'GIẢI BÓNG ĐÁ GIAO HỮU INTERATE CORP - WEMO - COMOSIX 2022', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2022-12-22 07:28:25', '2022-12-22 07:28:25', '', 11, 'http://localhost/interate/?p=12', 0, 'revision', '', 0),
(13, 1, '2022-12-22 07:29:00', '2022-12-22 07:29:00', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2022-12-22 07:29:00', '2022-12-22 07:29:00', '', 1, 'http://localhost/interate/?p=13', 0, 'revision', '', 0),
(14, 1, '2022-12-22 07:31:59', '2022-12-22 07:31:59', '<!-- wp:paragraph -->\n<p>Mùa lễ hội đang cận kề ngay cửa, và văn phòng Interate Corp chúng mình đã sẵn sàng chào đón Giáng sinh rồi đây <img height=\"16\" width=\"16\" alt=\"⛄\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t1e/1/16/26c4.png\"></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Hé lộ cho mọi người hình ảnh chiếc áo Giáng sinh mới siêu đẹp, được chính tay những IR-ers chuẩn bị cho ngôi nhà chung của chúng mình nè! Tháng 12 này tại Interate Corp còn nhiều bất ngờ lắm đó, cùng chờ đón nhé <img height=\"16\" width=\"16\" alt=\"🎄\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t7/1/16/1f384.png\"><img height=\"16\" width=\"16\" alt=\"⭐\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tb4/1/16/2b50.png\"><img height=\"16\" width=\"16\" alt=\"❄\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t2e/1/16/2744.png\"></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>__________________________</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>CÔNG TY CỔ PHẦN INTERATE VIỆT NAM</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><img height=\"16\" width=\"16\" alt=\"🏚\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t8/1/16/1f3da.png\">: 191 Lê Lợi, Hải Châu, Đà Nẵng</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><img height=\"16\" width=\"16\" alt=\"🏚\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t8/1/16/1f3da.png\">: Lô 9 Khu A3 Nguyễn Sinh Sắc, Liên Chiểu, Đà Nẵng</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><img height=\"16\" width=\"16\" alt=\"🏚\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t8/1/16/1f3da.png\">: 67 Hoàng Văn Thái, P. Tân Phú, Quận 7, TP.HCM</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><img height=\"16\" width=\"16\" alt=\"📩\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tc0/1/16/1f4e9.png\">: hr@dynuinmedia.com</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><img height=\"16\" width=\"16\" alt=\"☎\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t22/1/16/260e.png\">: 0707.162.222</p>\n<!-- /wp:paragraph -->', 'Trung thu đã về đến văn phòng Interate Corp', '', 'publish', 'open', 'open', '', 'khong-khi-giang-sinh-da-ve-den-nha-interate-corp', '', '', '2022-12-22 10:09:40', '2022-12-22 10:09:40', '', 0, 'http://localhost/interate/?p=14', 0, 'post', '', 0),
(15, 1, '2022-12-22 07:31:59', '2022-12-22 07:31:59', '<!-- wp:paragraph -->\n<p>Mùa lễ hội đang cận kề ngay cửa, và văn phòng Interate Corp chúng mình đã sẵn sàng chào đón Giáng sinh rồi đây <img height=\"16\" width=\"16\" alt=\"⛄\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t1e/1/16/26c4.png\"></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Hé lộ cho mọi người hình ảnh chiếc áo Giáng sinh mới siêu đẹp, được chính tay những IR-ers chuẩn bị cho ngôi nhà chung của chúng mình nè! Tháng 12 này tại Interate Corp còn nhiều bất ngờ lắm đó, cùng chờ đón nhé <img height=\"16\" width=\"16\" alt=\"🎄\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t7/1/16/1f384.png\"><img height=\"16\" width=\"16\" alt=\"⭐\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tb4/1/16/2b50.png\"><img height=\"16\" width=\"16\" alt=\"❄\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t2e/1/16/2744.png\"></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>__________________________</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>CÔNG TY CỔ PHẦN INTERATE VIỆT NAM</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><img height=\"16\" width=\"16\" alt=\"🏚\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t8/1/16/1f3da.png\">: 191 Lê Lợi, Hải Châu, Đà Nẵng</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><img height=\"16\" width=\"16\" alt=\"🏚\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t8/1/16/1f3da.png\">: Lô 9 Khu A3 Nguyễn Sinh Sắc, Liên Chiểu, Đà Nẵng</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><img height=\"16\" width=\"16\" alt=\"🏚\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t8/1/16/1f3da.png\">: 67 Hoàng Văn Thái, P. Tân Phú, Quận 7, TP.HCM</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><img height=\"16\" width=\"16\" alt=\"📩\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tc0/1/16/1f4e9.png\">: hr@dynuinmedia.com</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><img height=\"16\" width=\"16\" alt=\"☎\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t22/1/16/260e.png\">: 0707.162.222</p>\n<!-- /wp:paragraph -->', 'KHÔNG KHÍ GIÁNG SINH ĐÃ VỀ ĐẾN NHÀ INTERATE CORP', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2022-12-22 07:31:59', '2022-12-22 07:31:59', '', 14, 'http://localhost/interate/?p=15', 0, 'revision', '', 0),
(17, 1, '2022-12-22 09:09:27', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2022-12-22 09:09:27', '0000-00-00 00:00:00', '', 0, 'http://localhost/interate/?p=17', 0, 'post', '', 0),
(18, 1, '2022-12-22 09:13:41', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2022-12-22 09:13:41', '0000-00-00 00:00:00', '', 0, 'http://localhost/interate/?p=18', 0, 'post', '', 0),
(19, 1, '2022-12-22 09:14:08', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2022-12-22 09:14:08', '0000-00-00 00:00:00', '', 0, 'http://localhost/interate/?p=19', 0, 'post', '', 0),
(20, 1, '2022-12-22 09:14:32', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2022-12-22 09:14:32', '0000-00-00 00:00:00', '', 0, 'http://localhost/interate/?p=20', 0, 'post', '', 0),
(21, 1, '2022-12-22 09:14:50', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2022-12-22 09:14:50', '0000-00-00 00:00:00', '', 0, 'http://localhost/interate/?p=21', 0, 'post', '', 0),
(22, 1, '2022-12-22 09:15:07', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2022-12-22 09:15:07', '0000-00-00 00:00:00', '', 0, 'http://localhost/interate/?p=22', 0, 'post', '', 0),
(23, 1, '2022-12-22 09:15:27', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2022-12-22 09:15:27', '0000-00-00 00:00:00', '', 0, 'http://localhost/interate/?p=23', 0, 'post', '', 0),
(24, 1, '2022-12-22 09:25:30', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2022-12-22 09:25:30', '0000-00-00 00:00:00', '', 0, 'http://localhost/interate/?p=24', 0, 'post', '', 0),
(25, 1, '2022-12-22 09:26:12', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2022-12-22 09:26:12', '0000-00-00 00:00:00', '', 0, 'http://localhost/interate/?p=25', 0, 'post', '', 0),
(26, 1, '2022-12-22 09:26:20', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2022-12-22 09:26:20', '0000-00-00 00:00:00', '', 0, 'http://localhost/interate/?p=26', 0, 'post', '', 0),
(27, 1, '2022-12-22 09:26:46', '2022-12-22 09:26:46', '', 'newevent1', '', 'inherit', 'open', 'closed', '', 'newevent1', '', '', '2022-12-22 09:26:46', '2022-12-22 09:26:46', '', 26, 'http://localhost/interate/wp-content/uploads/2022/12/newevent1.png', 0, 'attachment', 'image/png', 0),
(28, 1, '2022-12-22 09:28:10', '2022-12-22 09:28:10', '', 'newevent3', '', 'inherit', 'open', 'closed', '', 'newevent3', '', '', '2022-12-22 09:28:10', '2022-12-22 09:28:10', '', 14, 'http://localhost/interate/wp-content/uploads/2022/12/newevent3.png', 0, 'attachment', 'image/png', 0),
(30, 1, '2022-12-22 09:38:46', '2022-12-22 09:38:46', '<!-- wp:paragraph -->\n<p>Mùa lễ hội đang cận kề ngay cửa, và văn phòng Interate Corp chúng mình đã sẵn sàng chào đón Giáng sinh rồi đây <img height=\"16\" width=\"16\" alt=\"⛄\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t1e/1/16/26c4.png\"></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Hé lộ cho mọi người hình ảnh chiếc áo Giáng sinh mới siêu đẹp, được chính tay những IR-ers chuẩn bị cho ngôi nhà chung của chúng mình nè! Tháng 12 này tại Interate Corp còn nhiều bất ngờ lắm đó, cùng chờ đón nhé <img height=\"16\" width=\"16\" alt=\"🎄\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t7/1/16/1f384.png\"><img height=\"16\" width=\"16\" alt=\"⭐\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tb4/1/16/2b50.png\"><img height=\"16\" width=\"16\" alt=\"❄\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t2e/1/16/2744.png\"></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>__________________________</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>CÔNG TY CỔ PHẦN INTERATE VIỆT NAM</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><img height=\"16\" width=\"16\" alt=\"🏚\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t8/1/16/1f3da.png\">: 191 Lê Lợi, Hải Châu, Đà Nẵng</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><img height=\"16\" width=\"16\" alt=\"🏚\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t8/1/16/1f3da.png\">: Lô 9 Khu A3 Nguyễn Sinh Sắc, Liên Chiểu, Đà Nẵng</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><img height=\"16\" width=\"16\" alt=\"🏚\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t8/1/16/1f3da.png\">: 67 Hoàng Văn Thái, P. Tân Phú, Quận 7, TP.HCM</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><img height=\"16\" width=\"16\" alt=\"📩\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tc0/1/16/1f4e9.png\">: hr@dynuinmedia.com</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><img height=\"16\" width=\"16\" alt=\"☎\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t22/1/16/260e.png\">: 0707.162.222</p>\n<!-- /wp:paragraph -->', 'Không khí giáng sinh đã về đến nhà Interate Corp', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2022-12-22 09:38:46', '2022-12-22 09:38:46', '', 14, 'http://localhost/interate/?p=30', 0, 'revision', '', 0),
(31, 1, '2022-12-22 09:40:19', '2022-12-22 09:40:19', '<!-- wp:paragraph -->\n<p>Sôi động, bùng nổ cảm xúc và những trận cầu nảy lửa là ấn tượng khó phai đọng lại trong mỗi thành viên tham dự Giải bóng đá giao hữu <a href=\"https://www.facebook.com/interatecorp?__cft__[0]=AZV6Lo4n2ga7dxg3xatDktWSITj_vBn9UWzF2yaBtXewdRW5DEqWXONA0JN6IQhk6W1297a82wzIossBPoqZkqtgOxnZ0pw665XG1gbNr0Q2D3R1vcgel9zoh_8pMo4oRhMu4zT3SMCVNApMWrSSrvfG&amp;__tn__=-]K-R\">Interate Corp</a> - <a href=\"https://www.facebook.com/WemoMediaVN?__cft__[0]=AZV6Lo4n2ga7dxg3xatDktWSITj_vBn9UWzF2yaBtXewdRW5DEqWXONA0JN6IQhk6W1297a82wzIossBPoqZkqtgOxnZ0pw665XG1gbNr0Q2D3R1vcgel9zoh_8pMo4oRhMu4zT3SMCVNApMWrSSrvfG&amp;__tn__=-]K-R\">WEMO</a> - <a href=\"https://www.facebook.com/ComosixMedia?__cft__[0]=AZV6Lo4n2ga7dxg3xatDktWSITj_vBn9UWzF2yaBtXewdRW5DEqWXONA0JN6IQhk6W1297a82wzIossBPoqZkqtgOxnZ0pw665XG1gbNr0Q2D3R1vcgel9zoh_8pMo4oRhMu4zT3SMCVNApMWrSSrvfG&amp;__tn__=-]K-R\">Comosix</a>!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Xuyên suốt 2 tuần diễn ra trận đấu với hơn 60 cầu thủ tham gia, 4 đội đã xuất sắc vượt qua vòng loại và hàng chục bàn thắng được ghi đã mang lại thật nhiều niềm vui và ý nghĩa.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Đặc biệt xin chúc mừng Quán quân vô địch mùa giải - IR T-Rex, với tỉ số chung cuộc như sau:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>️<img height=\"16\" width=\"16\" alt=\"⚽\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/taf/1/16/26bd.png\"> IR T-Rex - Hasagi: 1 - 0</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><img height=\"16\" width=\"16\" alt=\"⚽\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/taf/1/16/26bd.png\"> IR Beer - Midside Team: 0 - 1</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Một lần nữa xin chúc mừng tất cả những đội bóng, các bạn đều là người chiến thắng. Cảm ơn các bạn và những CĐV của hai công ty đã không ngại mưa gió để cháy hết mình cùng giải đấu <img height=\"16\" width=\"16\" alt=\"❣️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/teb/1/16/2763.png\"></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Còn bây giờ, cùng Interate Corp điểm lại những khoảnh khắc ấn tượng của giải đấu giao hữu đáng nhớ vừa qua nhé <img height=\"16\" width=\"16\" alt=\"👇\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t4f/1/16/1f447.png\"></p>\n<!-- /wp:paragraph -->', 'Giải bóng đá giao hữu Interate Corp- Wemo- Comosix 2022', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2022-12-22 09:40:19', '2022-12-22 09:40:19', '', 11, 'http://localhost/interate/?p=31', 0, 'revision', '', 0),
(32, 1, '2022-12-22 09:59:42', '2022-12-22 09:59:42', '<!-- wp:paragraph -->\n<p>Sôi động, bùng nổ cảm xúc và những trận cầu nảy lửa là ấn tượng khó phai đọng lại trong mỗi thành viên tham dự Giải bóng đá giao hữu <a href=\"https://www.facebook.com/interatecorp?__cft__[0]=AZV6Lo4n2ga7dxg3xatDktWSITj_vBn9UWzF2yaBtXewdRW5DEqWXONA0JN6IQhk6W1297a82wzIossBPoqZkqtgOxnZ0pw665XG1gbNr0Q2D3R1vcgel9zoh_8pMo4oRhMu4zT3SMCVNApMWrSSrvfG&amp;__tn__=-]K-R\">Interate Corp</a> - <a href=\"https://www.facebook.com/WemoMediaVN?__cft__[0]=AZV6Lo4n2ga7dxg3xatDktWSITj_vBn9UWzF2yaBtXewdRW5DEqWXONA0JN6IQhk6W1297a82wzIossBPoqZkqtgOxnZ0pw665XG1gbNr0Q2D3R1vcgel9zoh_8pMo4oRhMu4zT3SMCVNApMWrSSrvfG&amp;__tn__=-]K-R\">WEMO</a> - <a href=\"https://www.facebook.com/ComosixMedia?__cft__[0]=AZV6Lo4n2ga7dxg3xatDktWSITj_vBn9UWzF2yaBtXewdRW5DEqWXONA0JN6IQhk6W1297a82wzIossBPoqZkqtgOxnZ0pw665XG1gbNr0Q2D3R1vcgel9zoh_8pMo4oRhMu4zT3SMCVNApMWrSSrvfG&amp;__tn__=-]K-R\">Comosix</a>!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Xuyên suốt 2 tuần diễn ra trận đấu với hơn 60 cầu thủ tham gia, 4 đội đã xuất sắc vượt qua vòng loại và hàng chục bàn thắng được ghi đã mang lại thật nhiều niềm vui và ý nghĩa.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Đặc biệt xin chúc mừng Quán quân vô địch mùa giải - IR T-Rex, với tỉ số chung cuộc như sau:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>️<img height=\"16\" width=\"16\" alt=\"⚽\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/taf/1/16/26bd.png\"> IR T-Rex - Hasagi: 1 - 0</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><img height=\"16\" width=\"16\" alt=\"⚽\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/taf/1/16/26bd.png\"> IR Beer - Midside Team: 0 - 1</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Một lần nữa xin chúc mừng tất cả những đội bóng, các bạn đều là người chiến thắng. Cảm ơn các bạn và những CĐV của hai công ty đã không ngại mưa gió để cháy hết mình cùng giải đấu <img height=\"16\" width=\"16\" alt=\"❣️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/teb/1/16/2763.png\"></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Còn bây giờ, cùng Interate Corp điểm lại những khoảnh khắc ấn tượng của giải đấu giao hữu đáng nhớ vừa qua nhé <img height=\"16\" width=\"16\" alt=\"👇\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t4f/1/16/1f447.png\"></p>\n<!-- /wp:paragraph -->', 'Trung thu đã về đến văn phòng Interate Corp.', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2022-12-22 09:59:42', '2022-12-22 09:59:42', '', 11, 'http://localhost/interate/?p=32', 0, 'revision', '', 0),
(34, 1, '2022-12-22 10:01:12', '2022-12-22 10:01:12', '<!-- wp:paragraph -->\n<p>Sôi động, bùng nổ cảm xúc và những trận cầu nảy lửa là ấn tượng khó phai đọng lại trong mỗi thành viên tham dự Giải bóng đá giao hữu <a href=\"https://www.facebook.com/interatecorp?__cft__[0]=AZV6Lo4n2ga7dxg3xatDktWSITj_vBn9UWzF2yaBtXewdRW5DEqWXONA0JN6IQhk6W1297a82wzIossBPoqZkqtgOxnZ0pw665XG1gbNr0Q2D3R1vcgel9zoh_8pMo4oRhMu4zT3SMCVNApMWrSSrvfG&amp;__tn__=-]K-R\">Interate Corp</a> - <a href=\"https://www.facebook.com/WemoMediaVN?__cft__[0]=AZV6Lo4n2ga7dxg3xatDktWSITj_vBn9UWzF2yaBtXewdRW5DEqWXONA0JN6IQhk6W1297a82wzIossBPoqZkqtgOxnZ0pw665XG1gbNr0Q2D3R1vcgel9zoh_8pMo4oRhMu4zT3SMCVNApMWrSSrvfG&amp;__tn__=-]K-R\">WEMO</a> - <a href=\"https://www.facebook.com/ComosixMedia?__cft__[0]=AZV6Lo4n2ga7dxg3xatDktWSITj_vBn9UWzF2yaBtXewdRW5DEqWXONA0JN6IQhk6W1297a82wzIossBPoqZkqtgOxnZ0pw665XG1gbNr0Q2D3R1vcgel9zoh_8pMo4oRhMu4zT3SMCVNApMWrSSrvfG&amp;__tn__=-]K-R\">Comosix</a>!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Xuyên suốt 2 tuần diễn ra trận đấu với hơn 60 cầu thủ tham gia, 4 đội đã xuất sắc vượt qua vòng loại và hàng chục bàn thắng được ghi đã mang lại thật nhiều niềm vui và ý nghĩa.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Đặc biệt xin chúc mừng Quán quân vô địch mùa giải - IR T-Rex, với tỉ số chung cuộc như sau:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>️<img height=\"16\" width=\"16\" alt=\"⚽\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/taf/1/16/26bd.png\"> IR T-Rex - Hasagi: 1 - 0</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><img height=\"16\" width=\"16\" alt=\"⚽\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/taf/1/16/26bd.png\"> IR Beer - Midside Team: 0 - 1</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Một lần nữa xin chúc mừng tất cả những đội bóng, các bạn đều là người chiến thắng. Cảm ơn các bạn và những CĐV của hai công ty đã không ngại mưa gió để cháy hết mình cùng giải đấu <img height=\"16\" width=\"16\" alt=\"❣️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/teb/1/16/2763.png\"></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Còn bây giờ, cùng Interate Corp điểm lại những khoảnh khắc ấn tượng của giải đấu giao hữu đáng nhớ vừa qua nhé <img height=\"16\" width=\"16\" alt=\"👇\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t4f/1/16/1f447.png\"></p>\n<!-- /wp:paragraph -->', 'Giải bóng đá giao hữu đầu tiên đã chính thức xuất hiện.', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2022-12-22 10:01:12', '2022-12-22 10:01:12', '', 11, 'http://localhost/interate/?p=34', 0, 'revision', '', 0),
(35, 1, '2022-12-22 10:01:58', '2022-12-22 10:01:58', '<!-- wp:paragraph -->\n<p>Mùa lễ hội đang cận kề ngay cửa, và văn phòng Interate Corp chúng mình đã sẵn sàng chào đón Giáng sinh rồi đây <img height=\"16\" width=\"16\" alt=\"⛄\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t1e/1/16/26c4.png\"></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Hé lộ cho mọi người hình ảnh chiếc áo Giáng sinh mới siêu đẹp, được chính tay những IR-ers chuẩn bị cho ngôi nhà chung của chúng mình nè! Tháng 12 này tại Interate Corp còn nhiều bất ngờ lắm đó, cùng chờ đón nhé <img height=\"16\" width=\"16\" alt=\"🎄\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t7/1/16/1f384.png\"><img height=\"16\" width=\"16\" alt=\"⭐\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tb4/1/16/2b50.png\"><img height=\"16\" width=\"16\" alt=\"❄\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t2e/1/16/2744.png\"></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>__________________________</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>CÔNG TY CỔ PHẦN INTERATE VIỆT NAM</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><img height=\"16\" width=\"16\" alt=\"🏚\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t8/1/16/1f3da.png\">: 191 Lê Lợi, Hải Châu, Đà Nẵng</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><img height=\"16\" width=\"16\" alt=\"🏚\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t8/1/16/1f3da.png\">: Lô 9 Khu A3 Nguyễn Sinh Sắc, Liên Chiểu, Đà Nẵng</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><img height=\"16\" width=\"16\" alt=\"🏚\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t8/1/16/1f3da.png\">: 67 Hoàng Văn Thái, P. Tân Phú, Quận 7, TP.HCM</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><img height=\"16\" width=\"16\" alt=\"📩\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tc0/1/16/1f4e9.png\">: hr@dynuinmedia.com</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><img height=\"16\" width=\"16\" alt=\"☎\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t22/1/16/260e.png\">: 0707.162.222</p>\n<!-- /wp:paragraph -->', 'Trung thu đã về đến văn phòng Interate Corp', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2022-12-22 10:01:58', '2022-12-22 10:01:58', '', 14, 'http://localhost/interate/?p=35', 0, 'revision', '', 0),
(36, 1, '2022-12-22 10:02:50', '2022-12-22 10:02:50', '<!-- wp:paragraph -->\n<p>amdlkmasdlmadsk</p>\n<!-- /wp:paragraph -->', 'adlsadlmakdmlsadsa', '', 'trash', 'open', 'open', '', 'adlsadlmakdmlsadsa__trashed', '', '', '2022-12-22 10:07:11', '2022-12-22 10:07:11', '', 0, 'http://localhost/interate/?p=36', 0, 'post', '', 0),
(37, 1, '2022-12-22 10:02:46', '2022-12-22 10:02:46', '', 'vision', '', 'inherit', 'open', 'closed', '', 'vision', '', '', '2022-12-22 10:02:46', '2022-12-22 10:02:46', '', 36, 'http://localhost/interate/wp-content/uploads/2022/12/vision.png', 0, 'attachment', 'image/png', 0),
(38, 1, '2022-12-22 10:02:50', '2022-12-22 10:02:50', '<!-- wp:paragraph -->\n<p>amdlkmasdlmadsk</p>\n<!-- /wp:paragraph -->', 'adlsadlmakdmlsadsa', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2022-12-22 10:02:50', '2022-12-22 10:02:50', '', 36, 'http://localhost/interate/?p=38', 0, 'revision', '', 0),
(39, 1, '2022-12-22 10:04:01', '2022-12-22 10:04:01', '<!-- wp:paragraph -->\n<p>àasfvvxhfsfjsfjlmflsfl</p>\n<!-- /wp:paragraph -->', 'Đêm ca nhạc ngọt ngào nhà Interate Corp', '', 'publish', 'open', 'open', '', 'dem-ca-nhac-ngot-ngao-nha-interate-corp', '', '', '2022-12-22 10:09:47', '2022-12-22 10:09:47', '', 0, 'http://localhost/interate/?p=39', 0, 'post', '', 0),
(40, 1, '2022-12-22 10:03:55', '2022-12-22 10:03:55', '', 'newevent2', '', 'inherit', 'open', 'closed', '', 'newevent2', '', '', '2022-12-22 10:03:55', '2022-12-22 10:03:55', '', 39, 'http://localhost/interate/wp-content/uploads/2022/12/newevent2.png', 0, 'attachment', 'image/png', 0),
(41, 1, '2022-12-22 10:04:01', '2022-12-22 10:04:01', '<!-- wp:paragraph -->\n<p>àasfvvxhfsfjsfjlmflsfl</p>\n<!-- /wp:paragraph -->', 'Đêm ca nhạc ngọt ngào nhà Interate Corp', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2022-12-22 10:04:01', '2022-12-22 10:04:01', '', 39, 'http://localhost/interate/?p=41', 0, 'revision', '', 0),
(42, 1, '2022-12-22 10:08:50', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2022-12-22 10:08:50', '0000-00-00 00:00:00', '', 0, 'http://localhost/interate/?p=42', 0, 'post', '', 0),
(43, 1, '2022-12-23 02:06:01', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2022-12-23 02:06:01', '0000-00-00 00:00:00', '', 0, 'http://localhost/interate/?p=43', 0, 'post', '', 0),
(44, 1, '2022-12-23 02:06:10', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2022-12-23 02:06:10', '0000-00-00 00:00:00', '', 0, 'http://localhost/interate/?page_id=44', 0, 'page', '', 0),
(45, 1, '2022-12-23 02:06:53', '2022-12-23 02:06:53', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2022-12-23 02:06:53', '2022-12-23 02:06:53', '', 0, 'http://localhost/interate/?page_id=45', 0, 'page', '', 0),
(46, 1, '2022-12-23 02:06:53', '2022-12-23 02:06:53', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2022-12-23 02:06:53', '2022-12-23 02:06:53', '', 45, 'http://localhost/interate/?p=46', 0, 'revision', '', 0),
(47, 1, '2022-12-26 03:06:50', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2022-12-26 03:06:50', '0000-00-00 00:00:00', '', 0, 'http://localhost/interate/?p=47', 0, 'post', '', 0),
(48, 1, '2022-12-26 03:46:34', '2022-12-26 03:46:34', '', 'favicon', '', 'inherit', 'open', 'closed', '', 'favicon', '', '', '2022-12-26 03:46:34', '2022-12-26 03:46:34', '', 0, 'http://localhost/interate/wp-content/uploads/2022/12/favicon.png', 0, 'attachment', 'image/png', 0),
(49, 1, '2022-12-26 03:46:52', '2022-12-26 03:46:52', '{\n    \"site_icon\": {\n        \"value\": 48,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-12-26 03:46:52\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c96f6d47-e3eb-4e1e-968a-b2883f07d1a5', '', '', '2022-12-26 03:46:52', '2022-12-26 03:46:52', '', 0, 'http://localhost/interate/c96f6d47-e3eb-4e1e-968a-b2883f07d1a5/', 0, 'customize_changeset', '', 0),
(50, 1, '2022-12-26 07:47:23', '2022-12-26 07:47:23', '{\n    \"nav_menu[-4079919386468399000]\": {\n        \"value\": {\n            \"name\": \"V\\u1ec1 ch\\u00fang t\\u00f4i\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-12-26 07:47:23\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '7d68b156-bf66-4fbb-be7d-f9147856b032', '', '', '2022-12-26 07:47:23', '2022-12-26 07:47:23', '', 0, 'http://localhost/interate/7d68b156-bf66-4fbb-be7d-f9147856b032/', 0, 'customize_changeset', '', 0),
(53, 1, '2022-12-26 07:58:32', '0000-00-00 00:00:00', '', 'Về chúng tôi', '', 'draft', 'closed', 'closed', '', '', '', '', '2022-12-26 07:58:32', '0000-00-00 00:00:00', '', 0, 'http://localhost/interate/?p=53', 1, 'nav_menu_item', '', 0),
(54, 1, '2022-12-26 07:58:46', '0000-00-00 00:00:00', '', 'Các công ty thành viên', '', 'draft', 'closed', 'closed', '', '', '', '', '2022-12-26 07:58:46', '0000-00-00 00:00:00', '', 0, 'http://localhost/interate/?p=54', 1, 'nav_menu_item', '', 0),
(55, 1, '2022-12-26 08:48:33', '2022-12-26 08:10:07', '', 'Về chúng tôi', '', 'publish', 'closed', 'closed', '', 've-chung-toi', '', '', '2022-12-26 08:48:33', '2022-12-26 08:48:33', '', 0, 'http://localhost/interate/?p=55', 1, 'nav_menu_item', '', 0),
(56, 1, '2022-12-26 08:48:33', '2022-12-26 08:10:52', '', 'Các công ty thành viên', '', 'publish', 'closed', 'closed', '', 'cac-cong-ty-thanh-vien', '', '', '2022-12-26 08:48:33', '2022-12-26 08:48:33', '', 0, 'http://localhost/interate/?p=56', 2, 'nav_menu_item', '', 0),
(57, 1, '2022-12-26 08:48:33', '2022-12-26 08:19:56', '', 'Tin tức & Sự kiện', '', 'publish', 'closed', 'closed', '', 'tin-tuc-su-kien', '', '', '2022-12-26 08:48:33', '2022-12-26 08:48:33', '', 0, 'http://localhost/interate/?p=57', 3, 'nav_menu_item', '', 0),
(58, 1, '2022-12-26 08:48:33', '2022-12-26 08:19:56', '', 'Tuyển dụng', '', 'publish', 'closed', 'closed', '', 'tuyen-dung', '', '', '2022-12-26 08:48:33', '2022-12-26 08:48:33', '', 0, 'http://localhost/interate/?p=58', 4, 'nav_menu_item', '', 0),
(59, 1, '2022-12-26 08:48:33', '2022-12-26 08:19:56', '', 'Liên hệ', '', 'publish', 'closed', 'closed', '', 'lien-he', '', '', '2022-12-26 08:48:33', '2022-12-26 08:48:33', '', 0, 'http://localhost/interate/?p=59', 5, 'nav_menu_item', '', 0),
(61, 1, '2022-12-27 09:33:19', '2022-12-27 09:33:19', '', '2', '', 'inherit', 'open', 'closed', '', '2', '', '', '2022-12-27 09:33:19', '2022-12-27 09:33:19', '', 0, 'http://localhost/interate/wp-content/uploads/2022/12/2.png', 0, 'attachment', 'image/png', 0),
(62, 1, '2022-12-27 09:33:33', '0000-00-00 00:00:00', '{\n    \"INTERATE-CORP::header_image\": {\n        \"value\": \"http://localhost/interate/wp-content/uploads/2022/12/2.png\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-12-27 09:33:33\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', 'c6774040-b5ba-4803-9fda-028e653b51be', '', '', '2022-12-27 09:33:33', '0000-00-00 00:00:00', '', 0, 'http://localhost/interate/?p=62', 0, 'customize_changeset', '', 0),
(63, 1, '2022-12-27 09:42:34', '2022-12-27 09:42:34', '', 'banner1', '', 'inherit', 'open', 'closed', '', 'banner1', '', '', '2022-12-27 09:42:34', '2022-12-27 09:42:34', '', 0, 'http://localhost/interate/wp-content/uploads/2022/12/banner1.png', 0, 'attachment', 'image/png', 0),
(64, 1, '2022-12-27 09:42:53', '2022-12-27 09:42:53', '{\n    \"INTERATE-CORP::header_image\": {\n        \"value\": \"http://localhost/interate/wp-content/uploads/2022/12/banner1.png\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-12-27 09:42:53\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c080a4c6-374a-4f60-84b7-dc31b362c912', '', '', '2022-12-27 09:42:53', '2022-12-27 09:42:53', '', 0, 'http://localhost/interate/c080a4c6-374a-4f60-84b7-dc31b362c912/', 0, 'customize_changeset', '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Tin Tức', 'tin-tuc', 0),
(5, 'Sự kiện', 'su-kien', 0),
(7, 'Primary Menu', 'primary-menu', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(6, 1, 0),
(11, 5, 0),
(14, 5, 0),
(36, 1, 0),
(39, 5, 0),
(55, 7, 0),
(56, 7, 0),
(57, 7, 0),
(58, 7, 0),
(59, 7, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(5, 5, 'category', '', 0, 3),
(7, 7, 'nav_menu', '', 0, 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
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
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"7ff9ebfa381159dfdc836a6d1136a2122b132f8d418b31ced2b405f938b9c750\";a:4:{s:10:\"expiration\";i:1673233610;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36\";s:5:\"login\";i:1672024010;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '47'),
(18, 1, 'wp_persisted_preferences', 'a:2:{s:14:\"core/edit-post\";a:5:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;s:10:\"openPanels\";a:6:{i:0;s:11:\"post-status\";i:1;s:14:\"featured-image\";i:2;s:23:\"taxonomy-panel-category\";i:3;s:12:\"post-excerpt\";i:4;s:23:\"taxonomy-panel-post_tag\";i:5;s:16:\"discussion-panel\";}s:10:\"editorMode\";s:6:\"visual\";s:14:\"inactivePanels\";a:0:{}}s:9:\"_modified\";s:24:\"2022-12-22T10:34:47.522Z\";}'),
(19, 1, 'wp_user-settings', 'libraryContent=upload&mfold=o'),
(20, 1, 'wp_user-settings-time', '1672134032'),
(21, 1, 'nav_menu_recently_edited', '7'),
(22, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(23, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$Br8n4WCATBqp/lxudm10HnUWyhUSWh/', 'admin', 'thanhtrungtran8888@gmail.com', 'http://localhost/interate', '2022-12-22 02:23:09', '', 0, 'admin');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Chỉ mục cho bảng `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Chỉ mục cho bảng `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Chỉ mục cho bảng `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Chỉ mục cho bảng `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Chỉ mục cho bảng `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Chỉ mục cho bảng `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Chỉ mục cho bảng `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=333;

--
-- AUTO_INCREMENT cho bảng `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=187;

--
-- AUTO_INCREMENT cho bảng `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT cho bảng `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
