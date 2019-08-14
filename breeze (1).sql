-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 20, 2018 at 06:49 AM
-- Server version: 5.7.22-0ubuntu0.16.04.1
-- PHP Version: 7.0.30-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `breeze`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
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
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'heat', 'heat', '2018-05-19 07:44:16', '2018-05-19 07:44:16'),
(2, NULL, 1, 'Сауна', 'sauna', '2018-05-19 07:53:24', '2018-05-19 07:53:24'),
(3, NULL, 1, 'бассейн', 'бассейн', '2018-05-19 08:01:53', '2018-05-19 08:02:03'),
(4, NULL, 1, 'Усан Ориглуур', 'usan-origluur', '2018-05-19 08:03:47', '2018-05-19 08:03:47'),
(5, NULL, 1, 'Бусад', 'busad', '2018-05-19 08:04:55', '2018-05-19 08:04:55'),
(6, NULL, 1, 'Бойлер', 'Бойлер', '2018-05-19 08:13:44', '2018-05-19 08:13:44'),
(7, NULL, 1, 'Шалны халаалт', 'shalny-halaalt', '2018-05-19 10:00:28', '2018-05-19 10:00:28');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
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
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '', 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, '', 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, '', 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '', 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, '', 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{"model":"TCG\\\\Voyager\\\\Models\\\\Role","table":"roles","type":"belongsTo","column":"role_id","key":"id","label":"display_name","pivot_table":"roles","pivot":"0"}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{"model":"TCG\\\\Voyager\\\\Models\\\\Role","table":"roles","type":"belongsToMany","column":"id","key":"id","label":"display_name","pivot_table":"user_roles","pivot":"1","taggable":"0"}', 11),
(11, 1, 'locale', 'text', 'Locale', 0, 1, 1, 1, 1, 0, '', 12),
(12, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, '', 12),
(13, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(14, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(15, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '', 3),
(16, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 4),
(17, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(18, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(19, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '', 3),
(20, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 4),
(21, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, '', 5),
(22, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, '', 9),
(23, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(24, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{"default":"","null":"","options":{"":"-- None --"},"relationship":{"key":"id","label":"name"}}', 2),
(25, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{"default":1}', 3),
(26, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(27, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{"slugify":{"origin":"name"}}', 5),
(28, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(29, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(30, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(31, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, '', 2),
(32, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, '', 3),
(33, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '', 4),
(34, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, '', 5),
(35, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, '', 6),
(36, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{"resize":{"width":"1000","height":"null"},"quality":"70%","upsize":true,"thumbnails":[{"name":"medium","scale":"50%"},{"name":"small","scale":"25%"},{"name":"cropped","crop":{"width":"300","height":"250"}}]}', 7),
(37, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{"slugify":{"origin":"title","forceUpdate":true},"validation":{"rule":"unique:posts,slug"}}', 8),
(38, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, '', 9),
(39, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, '', 10),
(40, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{"default":"DRAFT","options":{"PUBLISHED":"published","DRAFT":"draft","PENDING":"pending"}}', 11),
(41, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '', 12),
(42, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 13),
(43, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, '', 14),
(44, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, '', 15),
(45, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(46, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, '', 2),
(47, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '', 3),
(48, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, '', 4),
(49, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, '', 5),
(50, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{"slugify":{"origin":"title"},"validation":{"rule":"unique:pages,slug"}}', 6),
(51, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, '', 7),
(52, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, '', 8),
(53, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{"default":"INACTIVE","options":{"INACTIVE":"INACTIVE","ACTIVE":"ACTIVE"}}', 9),
(54, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, '', 10),
(55, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, '', 11),
(56, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, '', 12),
(57, 7, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(58, 7, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{"display":{"width":"9","id":"custom_id"}}', 2),
(59, 7, 'body', 'rich_text_box', 'Body', 0, 1, 1, 1, 1, 1, '{"display":{"width":"9","id":"custom_id"}}', 3),
(61, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 11),
(62, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 12),
(63, 7, 'product_belongsto_user_relationship', 'relationship', 'Users', 0, 1, 1, 1, 1, 1, '{"model":"App\\\\User","table":"users","type":"belongsTo","column":"user_id","key":"id","label":"name","pivot_table":"categories","pivot":"0","taggable":"0"}', 10),
(64, 7, 'user_id', 'text', 'User Id', 0, 1, 1, 1, 1, 1, NULL, 5),
(65, 7, 'price', 'number', 'Price', 0, 1, 1, 1, 1, 1, '{"display":{"width":"3","id":"custom_id"}}', 4),
(67, 7, 'shortdesc', 'text_area', 'Shortdesc', 0, 1, 1, 1, 1, 1, '{"display":{"width":"3","id":"custom_id"}}', 6),
(68, 7, 'image1', 'image', 'Image1', 0, 1, 1, 1, 1, 1, '{"resize":{"width":"600","height":null},"display":{"width":"3","id":"custom_id"}}', 7),
(69, 7, 'image2', 'image', 'Image2', 0, 0, 1, 1, 1, 1, '{"resize":{"width":"600","height":null},"display":{"width":"3","id":"custom_id"}}', 8),
(70, 7, 'image3', 'image', 'Image3', 0, 0, 1, 1, 1, 1, '{"resize":{"width":"600","height":null},"display":{"width":"3","id":"custom_id"}}', 9),
(71, 7, 'category_id', 'hidden', 'Category Id', 0, 1, 1, 1, 1, 1, NULL, 13),
(72, 4, 'category_hasmany_product_relationship', 'relationship', 'products', 0, 1, 1, 1, 1, 1, '{"model":"App\\\\Product","table":"products","type":"hasMany","column":"id","key":"category_id","label":"name","pivot_table":"categories","pivot":"0","taggable":"0"}', 8),
(73, 7, 'product_belongsto_category_relationship', 'relationship', 'categories', 0, 1, 1, 1, 1, 1, '{"model":"App\\\\Category","table":"categories","type":"belongsTo","column":"category_id","key":"id","label":"name","pivot_table":"categories","pivot":"0","taggable":"0"}', 14),
(74, 7, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 13),
(75, 7, 'slug', 'text', 'Slug', 0, 0, 1, 1, 1, 1, '{"slugify":{"origin":"name","forceUpdate":true},"validation":{"rule":"unique:products,slug"}}', 14);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
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
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', '', '', 1, 0, NULL, '2018-05-04 22:53:54', '2018-05-04 22:53:54'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2018-05-04 22:53:54', '2018-05-04 22:53:54'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2018-05-04 22:53:54', '2018-05-04 22:53:54'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'App\\Category', NULL, NULL, NULL, 1, 0, '{"order_column":null,"order_display_column":null}', '2018-05-04 22:54:01', '2018-05-06 04:01:21'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2018-05-04 22:54:02', '2018-05-04 22:54:02'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2018-05-04 22:54:03', '2018-05-04 22:54:03'),
(7, 'products', 'products', 'Product', 'Products', 'voyager-bag', 'App\\Product', NULL, NULL, NULL, 1, 0, '{"order_column":null,"order_display_column":null}', '2018-05-04 23:05:46', '2018-05-19 07:59:45');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2018-05-04 22:53:55', '2018-05-04 22:53:55');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
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
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2018-05-04 22:53:55', '2018-05-04 22:53:55', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2018-05-04 22:53:55', '2018-05-04 22:53:55', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 4, '2018-05-04 22:53:55', '2018-05-06 19:52:17', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 3, '2018-05-04 22:53:55', '2018-05-06 19:52:17', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2018-05-04 22:53:55', '2018-05-04 22:53:55', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2018-05-04 22:53:55', '2018-05-06 19:52:17', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2018-05-04 22:53:55', '2018-05-06 19:52:17', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2018-05-04 22:53:55', '2018-05-06 19:52:17', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2018-05-04 22:53:55', '2018-05-06 19:52:17', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 10, '2018-05-04 22:53:55', '2018-05-06 19:52:17', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 8, '2018-05-04 22:54:02', '2018-05-04 22:54:02', 'voyager.categories.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 6, '2018-05-04 22:54:03', '2018-05-04 22:54:03', 'voyager.posts.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 7, '2018-05-04 22:54:04', '2018-05-04 22:54:04', 'voyager.pages.index', NULL),
(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2018-05-04 22:54:05', '2018-05-06 19:52:17', 'voyager.hooks', NULL),
(16, 1, 'Products', '/admin/products', '_self', 'voyager-bag', '#000000', NULL, 2, '2018-05-04 23:10:10', '2018-05-06 19:52:17', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

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
(33, '2016_01_01_000000_create_pages_table', 2),
(34, '2016_01_01_000000_create_posts_table', 2),
(35, '2016_02_15_204651_create_categories_table', 2),
(36, '2017_04_11_000000_alter_post_nullable_fields_table', 2),
(37, '2018_05_19_073016_add_product_slug', 3);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
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

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2018-05-04 22:53:55', '2018-05-04 22:53:55'),
(2, 'browse_bread', NULL, '2018-05-04 22:53:55', '2018-05-04 22:53:55'),
(3, 'browse_database', NULL, '2018-05-04 22:53:55', '2018-05-04 22:53:55'),
(4, 'browse_media', NULL, '2018-05-04 22:53:55', '2018-05-04 22:53:55'),
(5, 'browse_compass', NULL, '2018-05-04 22:53:55', '2018-05-04 22:53:55'),
(6, 'browse_menus', 'menus', '2018-05-04 22:53:55', '2018-05-04 22:53:55'),
(7, 'read_menus', 'menus', '2018-05-04 22:53:55', '2018-05-04 22:53:55'),
(8, 'edit_menus', 'menus', '2018-05-04 22:53:56', '2018-05-04 22:53:56'),
(9, 'add_menus', 'menus', '2018-05-04 22:53:56', '2018-05-04 22:53:56'),
(10, 'delete_menus', 'menus', '2018-05-04 22:53:56', '2018-05-04 22:53:56'),
(11, 'browse_roles', 'roles', '2018-05-04 22:53:56', '2018-05-04 22:53:56'),
(12, 'read_roles', 'roles', '2018-05-04 22:53:56', '2018-05-04 22:53:56'),
(13, 'edit_roles', 'roles', '2018-05-04 22:53:56', '2018-05-04 22:53:56'),
(14, 'add_roles', 'roles', '2018-05-04 22:53:56', '2018-05-04 22:53:56'),
(15, 'delete_roles', 'roles', '2018-05-04 22:53:56', '2018-05-04 22:53:56'),
(16, 'browse_users', 'users', '2018-05-04 22:53:56', '2018-05-04 22:53:56'),
(17, 'read_users', 'users', '2018-05-04 22:53:56', '2018-05-04 22:53:56'),
(18, 'edit_users', 'users', '2018-05-04 22:53:56', '2018-05-04 22:53:56'),
(19, 'add_users', 'users', '2018-05-04 22:53:56', '2018-05-04 22:53:56'),
(20, 'delete_users', 'users', '2018-05-04 22:53:56', '2018-05-04 22:53:56'),
(21, 'browse_settings', 'settings', '2018-05-04 22:53:56', '2018-05-04 22:53:56'),
(22, 'read_settings', 'settings', '2018-05-04 22:53:56', '2018-05-04 22:53:56'),
(23, 'edit_settings', 'settings', '2018-05-04 22:53:56', '2018-05-04 22:53:56'),
(24, 'add_settings', 'settings', '2018-05-04 22:53:56', '2018-05-04 22:53:56'),
(25, 'delete_settings', 'settings', '2018-05-04 22:53:56', '2018-05-04 22:53:56'),
(26, 'browse_categories', 'categories', '2018-05-04 22:54:02', '2018-05-04 22:54:02'),
(27, 'read_categories', 'categories', '2018-05-04 22:54:02', '2018-05-04 22:54:02'),
(28, 'edit_categories', 'categories', '2018-05-04 22:54:02', '2018-05-04 22:54:02'),
(29, 'add_categories', 'categories', '2018-05-04 22:54:02', '2018-05-04 22:54:02'),
(30, 'delete_categories', 'categories', '2018-05-04 22:54:02', '2018-05-04 22:54:02'),
(31, 'browse_posts', 'posts', '2018-05-04 22:54:03', '2018-05-04 22:54:03'),
(32, 'read_posts', 'posts', '2018-05-04 22:54:03', '2018-05-04 22:54:03'),
(33, 'edit_posts', 'posts', '2018-05-04 22:54:03', '2018-05-04 22:54:03'),
(34, 'add_posts', 'posts', '2018-05-04 22:54:03', '2018-05-04 22:54:03'),
(35, 'delete_posts', 'posts', '2018-05-04 22:54:03', '2018-05-04 22:54:03'),
(36, 'browse_pages', 'pages', '2018-05-04 22:54:04', '2018-05-04 22:54:04'),
(37, 'read_pages', 'pages', '2018-05-04 22:54:04', '2018-05-04 22:54:04'),
(38, 'edit_pages', 'pages', '2018-05-04 22:54:04', '2018-05-04 22:54:04'),
(39, 'add_pages', 'pages', '2018-05-04 22:54:04', '2018-05-04 22:54:04'),
(40, 'delete_pages', 'pages', '2018-05-04 22:54:04', '2018-05-04 22:54:04'),
(41, 'browse_hooks', NULL, '2018-05-04 22:54:05', '2018-05-04 22:54:05'),
(42, 'browse_products', 'products', '2018-05-04 23:05:46', '2018-05-04 23:05:46'),
(43, 'read_products', 'products', '2018-05-04 23:05:46', '2018-05-04 23:05:46'),
(44, 'edit_products', 'products', '2018-05-04 23:05:46', '2018-05-04 23:05:46'),
(45, 'add_products', 'products', '2018-05-04 23:05:46', '2018-05-04 23:05:46'),
(46, 'delete_products', 'products', '2018-05-04 23:05:46', '2018-05-04 23:05:46');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 4),
(2, 1),
(3, 1),
(4, 1),
(4, 4),
(5, 1),
(5, 4),
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
(16, 4),
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
(26, 2),
(26, 4),
(27, 1),
(27, 2),
(27, 4),
(28, 1),
(28, 2),
(28, 4),
(29, 1),
(29, 2),
(29, 4),
(30, 1),
(30, 2),
(30, 4),
(31, 1),
(31, 2),
(31, 4),
(32, 1),
(32, 2),
(32, 4),
(33, 1),
(33, 2),
(33, 4),
(34, 1),
(34, 2),
(34, 4),
(35, 1),
(35, 2),
(35, 4),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 4),
(42, 1),
(42, 2),
(42, 4),
(43, 1),
(43, 2),
(43, 4),
(44, 1),
(44, 2),
(44, 4),
(45, 1),
(45, 2),
(45, 4),
(46, 1),
(46, 2),
(46, 4);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
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

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `image1` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `shortdesc` tinytext COLLATE utf8_unicode_ci,
  `image2` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image3` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_id` text COLLATE utf8_unicode_ci,
  `featured` tinyint(4) NOT NULL,
  `slug` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `body`, `image1`, `created_at`, `updated_at`, `user_id`, `price`, `shortdesc`, `image2`, `image3`, `category_id`, `featured`, `slug`) VALUES
(23, 'Дээврийн усны хаялгын систем', '<p>Дээврийн усны хаялгын систем нь бороо болон хайлмал усыг цуглуулж зайлуулсанаар байшин барилгын хана фундамыг хамгаалах үүрэгтэй. Мөн борооны усыг цуглуулж хэрэглэснээр ногоо модоо усалж эргэн тойрноо сайжрулах боломжтой.<br /> Дараах давуу талууд :<br /> &bull; Материал PVC <br /> &bull; Зузаан давхар ханатай <br /> &bull; Угсархад хялбар, хөнгөн<span class="text_exposed_show"><br /> &bull; Удаан эдэлгээтэй<br /> &bull; Температуурын өөрчлөлтөнд маш сайн тэсвэртэй<br /> &bull; Хагарч хугарахгүй хэлбэрээ алдахгүй<br /> &bull; Зэвэрдэггүй, өнгө алдахгүй<br /> &bull; Үзэмж сайтай, байшингийн дизайн үзэмжийг сайжруулж өгнө нэмнэ.</span></p>', 'products\\May2018\\dfN37tXYWCY8Jpds5sxi.png', '2018-05-13 08:35:01', '2018-05-13 08:35:01', 1, NULL, NULL, 'products\\May2018\\bi7icbFyYXid7vtnDrZA.png', NULL, '1', 0, NULL),
(24, 'ШАЛНЫ ДУЛААЛГА', '<p>&nbsp;0,5mm зузаантай 1м-ийн үнэ 6000₮</p>', 'products\\May2018\\SC0qkB33uoxFrAs3EHdh.jpg', '2018-05-13 08:37:48', '2018-05-13 08:37:48', 1, 6000, '0,5mm зузаантай 1м-ийн үнэ 6000₮', 'products\\May2018\\e7cNUSnfuGcBriCU9OoL.jpg', NULL, '1', 0, NULL),
(26, 'Чийг тусгаарлагч сайуны материал', '<p>Чийг болон конденсацын тухай</p>\r\n<p>Өрөөн доторх температур болон таазаас дээш температурын зөрүүгээс конденсацын хэлбэрүүд гардаг. Энэ конденсат нь шаланд нэвтэрч, улмаас гаждаг. Эндээс харахад банз нь хэлбэрээ алдаж, цэврүүтэн ялзардаг. Уур нь хана, таазны хананд нэвт шингэж, тэндээ үлддэг. Цаг хугацаа өнгөрөх тусам дотоод засал нь муудах бөгөөд ханын цаас нь харлаж салж эхэлдэг.</p>\r\n<ul>\r\n<li>&nbsp;Шалыг доороос чийгнээс хамгаална.</li>\r\n<li>Чийг тусгаарлагчаар конденсатаас хамгаалахлах шаардлагатай.</li>\r\n<li>Конденсатаас дээврийн доорх орон зайг хамгаалвал та өрөөн доторх "нэвчилт" -ийг хэзээ ч үзэхгүй.</li>\r\n<li>Чийг тусгаарлагч сайуны материал нь агаар халаагч, чийг, конденсац, нэвчилтээс халаагч болон дотоод бүтцийг хамгаална.</li>\r\n</ul>', 'products/May2018/IzYXgBJHVd381ced9fie.jpg', '2018-05-19 06:16:00', '2018-05-19 06:32:12', 1, 2500, '1,2М:1М=2500₮\r\nҮйлдвэрлэсэн газар: Орос', 'products/May2018/7XwQ9f9UObuanboctmch.jpg', 'products/May2018/Aw9WmpVPUUpWTk9wfVUG.jpg', '5', 0, NULL),
(27, 'Цонхны тавцан', NULL, 'products/May2018/2unQPUe3rN12hVuzxt7A.jpg', '2018-05-19 06:29:00', '2018-05-19 08:05:34', 1, 25000, 'Хэмжээ: 100СМ х 30СМ = 25000₮\r\nҮйлдвэрлэсэн газар: Хятад\r\nӨнгө: Цагаан', NULL, NULL, '5', 0, 'Цонхны-тавцан'),
(28, 'Усан ориглуурын гэрэл', NULL, 'products/May2018/Jxqt9uTdQWP7cL8JZtY5.jpg', '2018-05-19 06:34:00', '2018-05-19 08:04:37', 1, 35000, 'Үйлдвэрлэсэн газар: Хятад', 'products/May2018/WFcXgIgFGXp7S36zQxfD.jpg', NULL, '4', 0, 'usan-origluuryn-gerel'),
(29, 'Бассейны PH-хлор хэмжигч', NULL, 'products/May2018/no5LLq9b15dLWEWIAzU9.jpg', '2018-05-19 06:37:00', '2018-05-19 08:04:15', 1, 33000, 'Үйлдвэрлэсэн газар: Хятад', NULL, NULL, '3', 0, 'bassejny-ph-hlor-hemzhigch'),
(30, 'Бассейны усны термометр', NULL, 'products/May2018/XbdGv7oMnf8JoQBWqAQq.jpg', '2018-05-19 06:39:00', '2018-05-19 08:03:01', 1, 15000, 'Үйлдвэрлэсэн газар: Хятад', NULL, NULL, '3', 0, 'bassejny-usny-termometr'),
(31, 'Бассейны ус тунгалагжуулагч', '<p>Хэмжээ: 1л = 75000₮</p>', 'products/May2018/HLFqnLDKdfSPJUCwl7zt.jpg', '2018-05-19 06:41:00', '2018-05-19 08:02:58', 1, 75000, 'Үйлдвэрлэсэн газар: Хятад', NULL, NULL, '3', 0, 'bassejny-us-tungalagzhuulagch'),
(32, 'Бассейны ус ариутгагч таблетан хлор', '<ul>\r\n<li>1кг-ын үнэ 16000₮</li>\r\n<li>90%тай&nbsp;</li>\r\n</ul>', 'products/May2018/Q36tevcPXdFmC2JJ476F.jpg', '2018-05-19 06:43:00', '2018-05-19 08:02:54', 1, 16000, 'Үйлдвэрлэсэн газар: Хятад', NULL, NULL, '3', 0, 'bassejny-us-ariutgagch-tabletan-hlor'),
(33, 'Сауны уурын тень удирдлагатай', '<p>Хүчин чадал:</p>\r\n<p>3кв - 450,000₮</p>\r\n<p>6кв - 680,000₮</p>\r\n<p>9кв - 750,000₮</p>', 'products/May2018/H16Eh5xVxdhmiIcPdqhd.jpg', '2018-05-19 07:10:00', '2018-05-19 09:43:28', 1, 450000, 'Үйлдвэрлэсэн газар: Хятад', NULL, NULL, '2', 1, 'sauny-uuryn-ten-udirdlagataj'),
(34, 'Сауны тень', '<p>Хүчин чадал:</p>\r\n<ul>\r\n<li>3кв - 330,000₮</li>\r\n<li>6кв - 430,000₮</li>\r\n<li>9кв - 480,000₮</li>\r\n<li>15кв - 790,000₮</li>\r\n</ul>', 'products/May2018/aiybPX6kyPEpaSPlPMqq.jpg', '2018-05-19 07:13:00', '2018-05-19 09:43:24', 1, 330000, 'Үйлдвэрлэсэн газар: Хятад', 'products/May2018/Z6cqtPJyBXDsWfEJ4GK5.jpg', 'products/May2018/p9JvV1dFXvt7tRC6toIg.jpg', '2', 1, 'sauny-ten'),
(35, 'Сауны дижитал удирдлага', '<p>Хүчин чадал:</p>\r\n<p>3-9кв = 250,000₮</p>\r\n<p>10-15км = 290,000₮</p>', 'products/May2018/s2mxkEqL48RHzOYCsl46.jpg', '2018-05-19 07:15:00', '2018-05-19 08:00:26', 1, 250000, 'Үйлдвэрлэсэн газар: Хятад', NULL, NULL, '2', 0, 'sauny-dizhital-udirdlaga'),
(36, 'Сауны тены запас', NULL, 'products/May2018/T8LZkkDdiQwY7BhSK4BU.jpg', '2018-05-19 07:16:00', '2018-05-19 07:56:27', 1, 25000, 'Үйлдвэрлэсэн улс: Хятад', NULL, NULL, '2', 0, 'hoorog'),
(37, 'Сауны хувин халбагатай', NULL, 'products/May2018/hrIzlFF4iNJZvP9QzSqe.jpg', '2018-05-19 07:17:00', '2018-05-19 07:58:11', 1, 45000, 'Үйлдвэрлэсэн газар: Хятад', 'products/May2018/rzKqlJ0d3drKYFZApi02.jpg', NULL, '2', 0, 'Сауны-хувин-халбагатай'),
(38, 'Хор цацагч (машин угааж бас болно)', '<p>8л=45,000₮</p>\r\n<p>12л=65,000₮</p>', 'products/May2018/FfLc6lxiSSBGNqc8s7Wg.jpg', '2018-05-19 08:13:25', '2018-05-19 08:13:25', 1, 45000, 'Үйлдвэрлэсэн орон: Хятад', NULL, NULL, '5', 0, 'Хор-Цацагч'),
(39, 'Халаалтын насос 220v', '<p>220вольт - Үнэ: 75,000₮</p>', 'products/May2018/Z3PLRY7dOFqIXrbEuKAu.JPG', '2018-05-19 08:16:00', '2018-05-19 09:01:31', 1, 70000, 'Үйлдвэрлэсэн улс: Хятад\r\nСэлбэх чадал 20, 30, 40 Л/Мин', 'products/May2018/H4GsGyrAVkO4ANCWEumd.jpg', NULL, '6', 0, 'halaaltyn-nasos-220v'),
(40, 'Ваакум насос 450v', '<p>Хүчин чадал: 450v</p>', 'products/May2018/6Ld8gIiO91pFm5FpbLWw.jpg', '2018-05-19 08:32:00', '2018-05-19 08:34:14', 1, 210000, 'Үйлдвэрлэсэн улс: Хятад\r\nБрэнд: Тайфу (Taifu)', 'products/May2018/7BsRxRxLrJJ8miIUjLjC.jpg', 'products/May2018/CcPRR6AlMeQLDTIdLq7b.jpg', '6', 0, 'Вааку- насос-450v'),
(41, 'Ваакум насос 370ват', NULL, 'products/May2018/F81VVDcgHdAJUwmB7N5S.jpg', '2018-05-19 08:36:08', '2018-05-19 08:36:08', 1, 210000, 'Үйлдвэрлэсэн улс: Хятад', 'products/May2018/t2h3XqyL7NWLJ3S4ppmY.jpg', 'products/May2018/0FgLon9fIeiNi6dRmfhw.jpg', '6', 0, 'Ваакум-насос-370ват'),
(42, 'Агшин зуурын ус халаагч Герман 5,5кв', '<p>Агшин зуур (шууд халаагч) ус халаагч дотор байгаа тень дамжин өнгөрч байгаа усыг богино хугацаанд халаадагаараа онцлогтой юм</p>\r\n<ul>\r\n<li>Давуу тал: усаа богино хугацаанд халаадаг авсааархан хэмжээ</li>\r\n<li>Муу тал : цахилгаан өндөр хэрэглэнэ</li>\r\n</ul>\r\n<p>Хэрэглэх нөхцөл:</p>\r\n<ul>\r\n<li>Угаалтур: 3-6квт</li>\r\n<li>Душ:- 6-8квт</li>\r\n<li>Угаалтуур+душ :8,5квт+</li>\r\n</ul>', 'products/May2018/wiuU2vgvMACQdj1SlO3E.jpg', '2018-05-19 08:38:00', '2018-05-19 08:57:28', 1, 295000, 'Үйлдвэрлэсэн улс: Герман\r\nБрэнд: WAHLBACH', 'products/May2018/U4jK3SjAuGOBJknUWrWn.jpg', 'products/May2018/u3T1LWEWhwXLh67Wh4Dm.jpg', '6', 1, 'Агшин-зуурын-ус-халаагч-Герман-5,5кв'),
(43, 'Нөөцийн савтай бойлер 50л', '<p style="margin: 0px 0px 6px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;">&nbsp;ДОТОР ТАЛЫН УСНЫ САВ НЬ БИОШИЛЭН ШААЗАН БҮРХҮҮЛТЭЙ, МӨНГӨН ХАЛААГЧ ЭЛЕМЕНТ БҮХИЙ ХОСГҮЙ УС ХАЛААГЧ</p>\r\n<p style="margin: 6px 0px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;">БИОШИЛЭН ШААЗАН БҮРХҮҮЛ НЬ БАКТЕРИ ЭСЭРГҮҮЦЭХ ЧАНАРТАЙ<span class="text_exposed_show" style="display: inline; font-family: inherit;"><br />Дотор талын усны савны патент бүхий бүрхүүл нь зэврэлтээс илүү сайн хамгаалах агаад, халуун усны ариун цэврийг хангана</span></p>\r\n<div class="text_exposed_show" style="display: inline; font-family: Helvetica, Arial, sans-serif; color: #1d2129;">\r\n<p style="margin: 0px 0px 6px; font-family: inherit;">OXYGEN FREE SYSTEM<br />Идэвхигүй хийтэй орчинд биошилэн шаазангаар бүрхэх хосгүй технологи нь зэврэл үүсэхэд хүргэдэг бүрхүүл дэх бичил хий болон бусад согогууд үүсэхээс сэргийлнэ</p>\r\n<p style="margin: 6px 0px; font-family: inherit;">ULTRASONIC TEST<br />Дотор талын усны савны бүрхүүлийн чанарыг шалгах үр дүн сайнтай технологи. Хамгийн үл ялим ч согогыг түргэн илрүүлэн засах боломж олгоно.</p>\r\n<p style="margin: 6px 0px; font-family: inherit;">ДЭЛХИЙН АНХНЫ МӨНГӨН ХАЛААГЧ ЭЛЕМЕНТ<br />Мөнгөн бүрхүүл бүхий хосгүй халаагч элемент нь өнгөр суухаас хамгаалж, бактерийг устган, ус халаагчийн нйдвартай байдлыг нэмэгдүүлдэг&nbsp;<br />&bull; ЗЭВРЭХЭЭС ХАМГААЛАЛТТАЙ&nbsp;<br />&bull; УДААН ЭДЭЛГЭЭТЭЙ<br />&bull; ХЭМНЭЛТТЭЙ<br />&bull; БАКТЕРИ УСТГАНА</p>\r\n<p style="margin: 6px 0px; font-family: inherit;">ХЯЛГАСАН СУДАСТ ШИНЭ ТЕРМОСТАТ НЬ<br />Ус халаалтын хэмийг хянана,<br />Халаагч элементийн цахилгаан тэжээлийг автоматаар асааж унтраана&nbsp;<br />&bull;тохируулга илүү нарийн нягт болсон&nbsp;<br />&bull;халуун хүйтэн өөрчлөгдөхийг түргэн мэдэрнэ&nbsp;<br />&bull;найдвартай байдал нь нэмэгдсэн&nbsp;<br />&bull;хэт халахаас хоёр давхар хамгаалалттай.&nbsp;</p>\r\n<p style="margin: 6px 0px; font-family: inherit;">Нөөцийн савтай халаагч нь халаасан усаа нөөцөлж байнгын халуунусаар хангах зорилготой юм</p>\r\n<ul>\r\n<li style="margin: 6px 0px; font-family: inherit;">Давуу тал : тог бага хэрэглэнэ ердөө 1.5квт нэг халаасан усны температурыг 2хоног барина.</li>\r\n<li style="margin: 6px 0px; font-family: inherit;">Муу тал: эхний халаалт 30-40минут овор ихтэй</li>\r\n<li style="margin: 6px 0px; font-family: inherit;">Хэрэглэх нөхцөл: байнга хэрэглэх,гал тогоо душ нэгэн зэрэг байнга ажилуулах</li>\r\n</ul>\r\n</div>', 'products/May2018/9f3U2JiIefZ5fTbya5F1.jpg', '2018-05-19 08:44:00', '2018-05-19 09:03:57', 1, 320000, 'Хүчин чадал: 1,5кв\r\nҮйлдвэрлэсэн улс: Хятад', NULL, NULL, '6', 0, 'n-cijn-savtaj-bojler-50l'),
(44, 'Нөөцийн савтай бойлер 100л', '<p style="margin: 0px 0px 6px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;">&nbsp;ДОТОР ТАЛЫН УСНЫ САВ НЬ БИОШИЛЭН ШААЗАН БҮРХҮҮЛТЭЙ, МӨНГӨН ХАЛААГЧ ЭЛЕМЕНТ БҮХИЙ ХОСГҮЙ УС ХАЛААГЧ</p>\r\n<p style="margin: 6px 0px; font-family: Helvetica, Arial, sans-serif; color: #1d2129;">БИОШИЛЭН ШААЗАН БҮРХҮҮЛ НЬ БАКТЕРИ ЭСЭРГҮҮЦЭХ ЧАНАРТАЙ<span class="text_exposed_show" style="display: inline; font-family: inherit;"><br />Дотор талын усны савны патент бүхий бүрхүүл нь зэврэлтээс илүү сайн хамгаалах агаад, халуун усны ариун цэврийг хангана</span></p>\r\n<div class="text_exposed_show" style="display: inline; font-family: Helvetica, Arial, sans-serif; color: #1d2129;">\r\n<p style="margin: 0px 0px 6px; font-family: inherit;">OXYGEN FREE SYSTEM<br />Идэвхигүй хийтэй орчинд биошилэн шаазангаар бүрхэх хосгүй технологи нь зэврэл үүсэхэд хүргэдэг бүрхүүл дэх бичил хий болон бусад согогууд үүсэхээс сэргийлнэ</p>\r\n<p style="margin: 6px 0px; font-family: inherit;">ULTRASONIC TEST<br />Дотор талын усны савны бүрхүүлийн чанарыг шалгах үр дүн сайнтай технологи. Хамгийн үл ялим ч согогыг түргэн илрүүлэн засах боломж олгоно.</p>\r\n<p style="margin: 6px 0px; font-family: inherit;">ДЭЛХИЙН АНХНЫ МӨНГӨН ХАЛААГЧ ЭЛЕМЕНТ<br />Мөнгөн бүрхүүл бүхий хосгүй халаагч элемент нь өнгөр суухаас хамгаалж, бактерийг устган, ус халаагчийн нйдвартай байдлыг нэмэгдүүлдэг&nbsp;<br />&bull; ЗЭВРЭХЭЭС ХАМГААЛАЛТТАЙ&nbsp;<br />&bull; УДААН ЭДЭЛГЭЭТЭЙ<br />&bull; ХЭМНЭЛТТЭЙ<br />&bull; БАКТЕРИ УСТГАНА</p>\r\n<p style="margin: 6px 0px; font-family: inherit;">ХЯЛГАСАН СУДАСТ ШИНЭ ТЕРМОСТАТ НЬ<br />Ус халаалтын хэмийг хянана,<br />Халаагч элементийн цахилгаан тэжээлийг автоматаар асааж унтраана&nbsp;<br />&bull;тохируулга илүү нарийн нягт болсон&nbsp;<br />&bull;халуун хүйтэн өөрчлөгдөхийг түргэн мэдэрнэ&nbsp;<br />&bull;найдвартай байдал нь нэмэгдсэн&nbsp;<br />&bull;хэт халахаас хоёр давхар хамгаалалттай.&nbsp;</p>\r\n<p style="margin: 6px 0px; font-family: inherit;">Нөөцийн савтай халаагч нь халаасан усаа нөөцөлж байнгын халуунусаар хангах зорилготой юм</p>\r\n<ul>\r\n<li style="margin: 6px 0px; font-family: inherit;">Давуу тал : тог бага хэрэглэнэ ердөө 1.5квт нэг халаасан усны температурыг 2хоног барина.</li>\r\n<li style="margin: 6px 0px; font-family: inherit;">Муу тал: эхний халаалт 30-40минут овор ихтэй</li>\r\n<li style="margin: 6px 0px; font-family: inherit;">Хэрэглэх нөхцөл: байнга хэрэглэх,гал тогоо душ нэгэн зэрэг байнга ажилуулах</li>\r\n</ul>\r\n</div>', 'products/May2018/rOgdGpW6RQ0f39e2pxXn.jpg', '2018-05-19 08:45:00', '2018-05-19 09:03:40', 1, 390000, 'Үйлдвэрлэсэн улс: Хятад\r\nХүчин чадал: 1,5кв', NULL, NULL, '6', 1, 'Нөөцийн-савтай-бойлер-100л'),
(45, 'Нөөцийн савтай бойлер 10л', '<ul>\r\n<li>Галт тогооны зориулалттай.</li>\r\n<li>Даралттай</li>\r\n</ul>', 'products/May2018/K7PVMQ0wAf2q2d3SnpX7.jpg', '2018-05-19 09:06:00', '2018-05-19 09:11:25', 1, 330000, 'Галт тогооны зориулалттай.\r\nХүчин чадал: 1,5кв\r\nҮйлдвэрлэсэн улс: Герман', 'products/May2018/skneYA0Z3YWlDDECXB6l.jpg', NULL, '6', 1, 'n-cijn-savtaj-bojler-10l'),
(46, 'Нөөцийн савтай бойлер 10л', '<p>Даралтгүй шугаманд зориулагдсан</p>', 'products/May2018/e2FzhlOIrLJyq8836Yhe.jpg', '2018-05-19 09:13:07', '2018-05-19 09:13:07', 1, 230000, 'Насосоор ус шахаж өгнө\r\nҮйлдвэрлэсэн: улс: Герман', 'products/May2018/UWlyhRRZ9ZnTjbISpVaS.jpg', NULL, '6', 1, 'Нөөцийн-савтай-бойлер-10л'),
(47, '30л-ийн нөөцийн савтай бойлер', '<p>Хүчин чадал: 2кв</p>', 'products/May2018/axfV3bzDr2huIMayOB3c.jpg', '2018-05-19 09:15:00', '2018-05-19 09:43:19', 1, 420000, 'Үйлдвэрлэсэн улс: Герман', NULL, NULL, '6', 1, '30л-ийн-нөөцийн-савтай-бойлер'),
(48, 'Нөөцийн савтай бойлер 30л, 20л', '<p>30л = 320,000₮<br />Хүчин чадал: 3кв</p>\r\n<p>20л = 280,000₮</p>\r\n<p>Хүчин чадал:&nbsp;</p>', 'products/May2018/M98m8Z4XMO5jDCF8OrYV.jpg', '2018-05-19 09:27:00', '2018-05-19 09:43:15', 1, 280000, 'Үйлдвэрлэсэн улс: Хятад', NULL, NULL, '6', 1, 'Нөөцийн-савтай-бойлер-30л-20л'),
(49, 'Агшин зуур халаагч', '<p>Хүчин чадал:</p>\r\n<ul>\r\n<li>24кв</li>\r\n<li>380v</li>\r\n</ul>', 'products/May2018/kICUXwyuU2a2HHY8Zs6r.jpg', '2018-05-19 09:38:13', '2018-05-19 09:38:13', 1, 980000, 'Үйлдвэрлэсэн улс: Герман', 'products/May2018/uT9dd4ng1nYLKB1Yk7tq.jpg', NULL, '6', 1, 'Агшин-зуур-халаагч'),
(50, 'Гүний насос', '<p>Хүчин чадал: 370ват</p>', 'products/May2018/uJoFbwc9US7ZgtDOquZP.jpg', '2018-05-19 09:40:17', '2018-05-19 09:40:17', 1, 550000, 'Үйлдвэрлэсэн улс: Хятад', 'products/May2018/DZMm3AREdQRaJpfJ8VMS.jpg', 'products/May2018/nRa6oVwPhoAVSUYod4Sn.jpg', '5', 0, 'Гүний-насос'),
(51, 'Усан ориглуурын хошуу', NULL, 'products/May2018/NCGtOw0RGZuZlZ0Kawr6.jpg', '2018-05-19 09:42:24', '2018-05-19 09:42:24', 1, 250000, 'Үйлдвэрлэсэн улс: Хятад', NULL, NULL, '4', 0, 'Усан-ориглуурын-хошуу'),
(52, 'Зүлэг услагч', NULL, 'products/May2018/jSdGAOyucIgWVNZiUmPR.jpg', '2018-05-19 09:49:41', '2018-05-19 09:49:41', 1, 6500, 'Үйлдвэрлэсэн улс: Хятад', 'products/May2018/6X7Q0dhw9jdAupZRbduw.jpg', NULL, '4', 0, 'Зүлэг-услагч'),
(53, 'Усан-орилуурын-насос', '<p>Хүчин чадал: 1,5кв</p>', 'products/May2018/GCIhqUYK5xmiEvhMP99C.JPG', '2018-05-19 09:55:45', '2018-05-19 09:55:45', 1, 250000, 'Үйлдвэрлэсэн орон: Хятад', 'products/May2018/5LU8xHz6CGby7m0lN5HQ.jpg', NULL, '4', 0, 'Усан-орилуурын-насос'),
(54, 'Шалны халаалтны термостат', NULL, 'products/May2018/gLiPVG6ru8Ivo8CD7tWp.jpg', '2018-05-19 09:59:00', '2018-05-19 10:00:41', 1, 65000, 'Үйлдвэрлэсэн улс: Солонгос', NULL, NULL, '7', 0, 'Шалны-халаалтны-термостат'),
(55, 'Шалны халаалтны дулаан тусгаарлагч материал', '<p>1м2 = 8000₮</p>', 'products/May2018/YnizHK4s5sj2FgY7jZrt.jpg', '2018-05-19 10:06:00', '2018-05-19 10:06:46', 1, 8000, 'Үйлдвэрлэсэн улс: Солонгос', NULL, NULL, '7', 1, 'Шалны-халаалтны-дулаан-тусгаарлагч-материал'),
(56, 'Шалны плёнкан халаагуур', '<p><span style="color: #333333; font-family: Arial; font-size: 12px;">Дулаан тусгаарлагч болон туслах материал дагалдана</span><br style="color: #333333; font-family: Arial; font-size: 12px;" /><span style="color: #333333; font-family: Arial; font-size: 12px;">Эрчим хүч 20-25% хэмнэлттэй</span><br style="color: #333333; font-family: Arial; font-size: 12px;" /><span style="color: #333333; font-family: Arial; font-size: 12px;">Угсралт хурдан бөгөөд амархан</span><br style="color: #333333; font-family: Arial; font-size: 12px;" /><span style="color: #333333; font-family: Arial; font-size: 12px;">Шал болон хана, таазанд хэрэглэх боломжтой</span><br style="color: #333333; font-family: Arial; font-size: 12px;" /><span style="color: #333333; font-family: Arial; font-size: 12px;">Өвлийн улиралд хөлдөх аюулгүй</span><br style="color: #333333; font-family: Arial; font-size: 12px;" /><span style="color: #333333; font-family: Arial; font-size: 12px;">Агаар бохирдуулахгүй</span><br style="color: #333333; font-family: Arial; font-size: 12px;" /><span style="color: #333333; font-family: Arial; font-size: 12px;">Эрүүл мэндэнд сайн (инфра улаан туяа)</span></p>', 'products/May2018/MdSgaKU0TF4pSgtwXloM.jpg', '2018-05-19 10:09:41', '2018-05-19 10:09:41', 1, NULL, 'Үйлдвэрлэсэн улс: Солонгос', 'products/May2018/4iMcxRacHyqx7ZgcUfoS.jpg', NULL, '7', 1, 'Шалны-плёнкан-халаагуур'),
(57, 'Шалны халаалт', '<p><span style="color: #333333; font-family: Arial;"><span style="font-size: 12px;">м2= 40,000₮</span></span></p>\r\n<p><span style="color: #333333; font-family: Arial; font-size: 12px;">Дулаан тусгаарлагч болон туслах материал дагалдана</span><br style="color: #333333; font-family: Arial; font-size: 12px;" /><span style="color: #333333; font-family: Arial; font-size: 12px;">Эрчим хүч 20-25% хэмнэлттэй</span><br style="color: #333333; font-family: Arial; font-size: 12px;" /><span style="color: #333333; font-family: Arial; font-size: 12px;">Угсралт хурдан бөгөөд амархан</span><br style="color: #333333; font-family: Arial; font-size: 12px;" /><span style="color: #333333; font-family: Arial; font-size: 12px;">Шал болон хана, таазанд хэрэглэх боломжтой</span><br style="color: #333333; font-family: Arial; font-size: 12px;" /><span style="color: #333333; font-family: Arial; font-size: 12px;">Өвлийн улиралд хөлдөх аюулгүй</span><br style="color: #333333; font-family: Arial; font-size: 12px;" /><span style="color: #333333; font-family: Arial; font-size: 12px;">Агаар бохирдуулахгүй</span><br style="color: #333333; font-family: Arial; font-size: 12px;" /><span style="color: #333333; font-family: Arial; font-size: 12px;">Эрүүл мэндэнд сайн (инфра улаан туяа)</span></p>', 'products/May2018/g2WcW2BtGXk0d3CcRg5G.jpg', '2018-05-19 10:12:57', '2018-05-19 10:12:57', 1, 40000, 'Үйлдвэрлэсэн улс: Солонгос', 'products/May2018/xtwszOOhuhfK6diD3lsZ.jpg', 'products/May2018/OxkyVxLl7KxajObmrvnJ.jpg', '7', 1, 'shalny-halaalt'),
(58, 'Тэлэлтийн сав 24л, 60л', '<p>24л = 130,000₮</p>\r\n<p>60л = 190,000₮</p>', 'products/May2018/Lr7jpJPKfOtRgnFhSip8.jpg', '2018-05-19 10:17:43', '2018-05-19 10:17:43', 1, 130000, 'Үйлдвэрлэсэн улс: Хятад', NULL, NULL, '6', 0, 'Тэлэлтийн-сав'),
(59, 'Тэлэлтийн сав 100л, 150л', '<p>100л = 390,000₮</p>\r\n<p>150л = 510,000₮</p>', 'products/May2018/F9TM8cr2Oozb4EPgNIdE.jpg', '2018-05-19 10:18:47', '2018-05-19 10:18:47', 1, 390000, 'Үйлдвэрлэсэн улс: Хятад', 'products/May2018/4RGLkDuatifRRwd2famD.jpg', NULL, '6', 0, 'Тэлэлтийн-сав-100л'),
(60, 'Аяны дүш', NULL, 'products/May2018/2Q6cME0Kxe5bDJdcnBor.jpg', '2018-05-19 10:36:17', '2018-05-19 10:36:17', 1, 20000, 'Аянд авч явахад авсаархан. Өөрөө наранд хална.', 'products/May2018/GXHZkCRtK5A4k4UJky2V.jpg', 'products/May2018/098iPoodVYqeNshfPnR6.jpg', '5', 0, 'Аяны-дүш'),
(61, 'Аяны зөөврийн угаалтуур', NULL, 'products/May2018/G3tlFkrNiPoDbxuNHr5b.jpg', '2018-05-19 10:38:41', '2018-05-19 10:38:41', 1, 20000, 'Наранд өөрөө ус хална. Бага зай эзэлнэ, авсаархан.', 'products/May2018/6q7jmgrIiqDEyxlM1CiN.jpg', NULL, '5', 0, 'Аяны-зөөврийн-угаалтуур'),
(62, 'Сауны термометр', NULL, 'products/May2018/mOC0ntXYzSzPJRP3iDuf.jpg', '2018-05-19 10:40:36', '2018-05-19 10:40:36', 1, 15000, 'Сауны дулаан хэмжигч', NULL, NULL, '2', 0, 'Сауны-термометр');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2018-05-04 22:53:55', '2018-05-04 22:53:55'),
(2, 'user', 'Normal User', '2018-05-04 22:53:55', '2018-05-04 22:53:55'),
(4, 'Manager', 'Manager', '2018-05-06 09:12:29', '2018-05-06 09:12:29');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
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
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Барилгын материал', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Барилгын материалын дэлгүүр', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings/May2018/9SPqLfvPi39dkW8iXYQL.png', '', 'image', 3, 'Site'),
(4, 'admin.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Admin'),
(5, 'admin.bg_image', 'Admin Background Image', NULL, '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', NULL, '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', NULL, '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '297342841202-pr9uvbhppe5lp6hnb9qq0erebae6g654.apps.googleusercontent.com', '', 'text', 1, 'Admin'),
(12, 'additional.name', 'Name', 'Мэдкүү', NULL, 'text', 6, 'Additional');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
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
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2018-05-04 22:54:04', '2018-05-04 22:54:04'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2018-05-04 22:54:04', '2018-05-04 22:54:04'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2018-05-04 22:54:04', '2018-05-04 22:54:04'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2018-05-04 22:54:04', '2018-05-04 22:54:04'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2018-05-04 22:54:04', '2018-05-04 22:54:04'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2018-05-04 22:54:04', '2018-05-04 22:54:04'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2018-05-04 22:54:04', '2018-05-04 22:54:04'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2018-05-04 22:54:04', '2018-05-04 22:54:04'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2018-05-04 22:54:04', '2018-05-04 22:54:04'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2018-05-04 22:54:04', '2018-05-04 22:54:04'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2018-05-04 22:54:04', '2018-05-04 22:54:04'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2018-05-04 22:54:04', '2018-05-04 22:54:04'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2018-05-04 22:54:04', '2018-05-04 22:54:04'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2018-05-04 22:54:04', '2018-05-04 22:54:04'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2018-05-04 22:54:04', '2018-05-04 22:54:04'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2018-05-04 22:54:04', '2018-05-04 22:54:04'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2018-05-04 22:54:04', '2018-05-04 22:54:04'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2018-05-04 22:54:05', '2018-05-04 22:54:05'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2018-05-04 22:54:05', '2018-05-04 22:54:05'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2018-05-04 22:54:05', '2018-05-04 22:54:05'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2018-05-04 22:54:05', '2018-05-04 22:54:05'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2018-05-04 22:54:05', '2018-05-04 22:54:05'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2018-05-04 22:54:05', '2018-05-04 22:54:05'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2018-05-04 22:54:05', '2018-05-04 22:54:05'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2018-05-04 22:54:05', '2018-05-04 22:54:05'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2018-05-04 22:54:05', '2018-05-04 22:54:05'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2018-05-04 22:54:05', '2018-05-04 22:54:05'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2018-05-04 22:54:05', '2018-05-04 22:54:05'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2018-05-04 22:54:05', '2018-05-04 22:54:05'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2018-05-04 22:54:05', '2018-05-04 22:54:05');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users\\May2018\\EiwYks3BJUHBULPVRRfb.jpg', '$2y$10$k.EkEJnTqC4idDosGfiI2O0K3Yfh9zqJJefZ8Y8fIRMGW8KNDpm2e', 'TDjC3TCLNchECSqNv8qEjanQWHBZgbsNfyfS6ZuxLBrsEaZ1cX0S5svoFSeR', '{"locale":"en"}', '2018-05-04 22:54:02', '2018-05-05 02:50:21'),
(2, 4, 'Jani', 'b.jani93@yahoo.com', 'users/default.png', '$2y$10$jIbsT0Mfym7Md5iK8urftelPI1vZXgeHhuWyNUUrlux.GwF3Xq3E2', 'cSvdf06P6w1NlbgnbwGxXSn9XL12EcsrqLE9P7dU8EDgu28wUyv7EnhfG42L', '{"locale":"en"}', '2018-05-05 00:58:42', '2018-05-06 09:14:40'),
(3, 1, 'Jani', 'b.jani94@yahoo.com', 'users/default.png', '$2y$10$507QfF2jl.97hEUkAU9oIOJSr.qYiskB28TaJlk7B4pzyXp/mqWvK', NULL, '{"locale":"en"}', '2018-05-06 09:08:54', '2018-05-06 09:11:23');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

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
  ADD KEY `password_resets_email_index` (`email`);

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;
--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
