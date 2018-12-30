-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 30, 2018 at 08:52 PM
-- Server version: 5.7.19
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mainapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
CREATE TABLE IF NOT EXISTS `admins` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int(11) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admins_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `role_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@dollarpharmacy.com.ng', 'Qwerty345.', 1, NULL, '2018-03-26 13:58:28', '2018-03-26 13:58:28'),
(2, 'Ifeanyi Ezikpe', 'ifyinbox@gmail.com', '$2y$10$ZGKda9FbLzyTTDoeaj/TBeMVNq3zEFvOZpsAEc3eecB8LtuUzdk12', 3, 'ryajtc3wHwq2OU6cTCsHAwpTJpIO5hax1JuYTKoUCJPWLPcgrljVzc2esdkN', '2018-03-27 06:30:35', '2018-03-27 06:30:35'),
(3, 'admin', 'admin@dollarpharmacy.ng', '$2y$10$evzMzi5rGrujxODwGC1KNuEykJQ2wZfkhWMi.zmTeStVPDkugqklq', 3, NULL, '2018-04-19 15:41:10', '2018-04-19 15:41:10'),
(4, 'stevo', 'j.bosco@gmail.com', '$2y$10$i3pSXx5fDol3neY7CeIEE.azCQ7WMs2F.n98wxTKvQokvVjRtni1.', 1, '6K1jgho5o7O2T04ry2ly0YPuVsiFPtXFxhN1OZggVvFCWO6X3l1VOCPPTQB0', '2018-07-04 00:00:00', '2018-07-04 00:00:00'),
(5, 'Speed Darlington', 'speed@bang.com', 'Password1', 1, NULL, '2018-09-13 12:49:51', '2018-09-13 12:49:51'),
(6, 'Dollapo', 'dollapo@gmail.com', 'Root1234', 4, NULL, '2018-09-17 07:45:08', '2018-09-17 09:21:11');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
CREATE TABLE IF NOT EXISTS `blogs` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumb` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbsmall` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `description`, `image`, `thumb`, `thumbsmall`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Health Benefits of Fruits', '<p>Fruit has been recognized as a good source of vitamins and minerals, and for their role in preventing vitamin C and vitamin A deficiencies. People who eat fruit as part of an overall healthy diet generally have a reduced risk of chronic diseases.&nbsp;USDA&#39;s MyPlate encourages making half your plate fruits and vegetables for healthy eating.</p>\r\n\r\n<p>Fruit are important sources of many nutrients, including potassium, fiber, vitamin C and folate (folic acid). Try incorporating&nbsp;<a href=\"https://www.healthyeating.org/Healthy-Eating/All-Star-Foods/Fruits/Article-Viewer/Article/199/Health-Benefits-of-Blueberries.aspx\">blueberries</a>,&nbsp;<a href=\"https://www.healthyeating.org/Healthy-Eating/All-Star-Foods/Fruits/Article-Viewer/Article/204/Health-Benefits-of-Citrus-Fruit.aspx\">citrus fruit</a>,&nbsp;<a href=\"https://www.healthyeating.org/Healthy-Eating/All-Star-Foods/Fruits/Article-Viewer/Article/205/Health-Benefits-of-Cranberries.aspx\">cranberries</a>or&nbsp;<a href=\"https://www.healthyeating.org/Healthy-Eating/All-Star-Foods/Fruits/Article-Viewer/Article/206/Health-Benefits-of-Strawberries.aspx\">strawberries</a>&nbsp;which contain phytochemicals that are being studied for added health benefits.&nbsp;</p>\r\n\r\n<p>The nutrients in fruit are vital for health and maintenance of your body. The potassium in fruit can reduce your risk of heart disease and stroke. Potassium may also reduce the risk of developing kidney stones and help to decrease bone loss as you age.</p>\r\n\r\n<p>Folate (folic acid) helps the body form red blood cells. Women of childbearing age who may become pregnant and those in the first trimester of pregnancy need adequate folate. Folate helps prevent neural tube birth defects, such as spina bifida.</p>\r\n\r\n<p>Source: Diary Council of Carlifonia</p>', 'blog/fruit.jpg', 'blog/thumb/thumb_fruit.jpg', 'blog/thumbsmall/thumb_fruit.jpg', 'health-benefits-of-fruits1524142453', '2018-04-19 11:47:41', '2018-04-19 11:47:41'),
(2, '5 Eating Strategies To Loose Weight', '<p>You&nbsp;<em>know</em>&nbsp;you should savor your dinner slowly at the kitchen table, but honestly, it&#39;s so much more fun to eat it in front of the TV. But if you&#39;re trying to lose weight, forcing yourself to focus on your food instead of the Knicks game can pay off in a pretty huge way.</p>\r\n\r\n<p><a href=\"https://link.springer.com/article/10.1007/s13679-018-0299-6\" target=\"_blank\">New research</a>&nbsp;that looked at multiple studies on mindful eating found that participants ended up losing weight in every. Single. Study. Not only that, but people usually continued to drop pounds over a follow-up period.</p>\r\n\r\n<p>That&#39;s key, say researchers, because&nbsp;while most people can lose about five percent of their bodyweight by following a&nbsp;<a href=\"https://www.womenshealthmag.com/tags/nutrition\" target=\"_blank\">healthy eating</a>&nbsp;plan for a few months, they&#39;ll typically gain it back. But not if they&#39;re making an effort to eat mindfully!</p>\r\n\r\n<p>But, again: Knowing you should do something and actually doing it are two different things. Luckily, lead study researcher Carolyn Dunn, Ph.D., has a handy doc called called &quot;12 Mindful Eating Strategies&rdquo; she gives people who want to lose weight and keep it off.</p>\r\n\r\n<p>While these tips weren&rsquo;t part of the latest paper promoting mindful eating, they definitely give some solid advice. Here are some examples:</p>\r\n\r\n<p><strong>1. Load up your plate with&nbsp;<a href=\"https://www.womenshealthmag.com/food/high-protein-veggies\" target=\"_blank\">plant-based proteins</a>, like beans.&nbsp;</strong>They&#39;re super filling, so it&#39;s harder to over-eat.&nbsp;</p>\r\n\r\n<p><strong>2. Challenge yourself to make meals last at least 20 minutes</strong><strong>.&nbsp;</strong>Slowing down helps you get in touch with your hunger and fullness cues&mdash;and if you look at it as a game instead of a mandate, you&#39;ll be able to have more fun with it. Some strategies that can help you get there: putting down your fork between bites and starting with a smaller serving than you&#39;d normally get (you can always grab seconds if you&#39;re still hungry later).</p>\r\n\r\n<p><strong>3. Ask yourself if you want to eat because you&rsquo;re stressed&nbsp;<em>before</em>&nbsp;you dive face-first into a bag of Cheetos.</strong>&nbsp;If you are, that&#39;s totally normal! But maybe try something else first&mdash;like yoga, journaling, or even just taking a few deep breaths&mdash;to see if that helps.</p>\r\n\r\n<p><strong>4. If you&rsquo;re planning to splurge on a treat, make it something you really love.</strong>&nbsp;Make sure to savor each bite and stop when you&#39;re not really enjoying it anymore. The most pleasure usually comes from the first bite, so you may not even need to eat the whole thing to feel satisfied.</p>\r\n\r\n<p><strong>5. Don&#39;t eat when you&#39;re working, reading, or watching TV.</strong>&nbsp;No way around this tip. It&#39;ll take some practice and may feel weird at first, but it&#39;ll become easier with time.</p>\r\n\r\n<p>Source: <a href=\"https://www.menshealth.com/weight-loss/a19549719/mindful-eating-tips-for-weight-loss/\">Men&#39;s Health</a></p>', 'blog/food.jpg', 'blog/thumb/thumb_food.jpg', 'blog/thumbsmall/thumb_food.jpg', '5-eating-strategies-to-loose-weight1524143081', '2018-04-19 12:04:41', '2018-04-19 12:12:04'),
(3, 'Health Benefits of Exercise', '<p>Exercise is good, and to keep feet we need to do exercise often in order to be fit and get the body active.c diseases.&nbsp;USDA&#39;s MyPlate encourages making half your plate fruits and vegetables for healthy eating.</p>\r\n\r\n<p>Fruit are important sources of many nutrients, including potassium, fiber, vitamin C and folate (folic acid). Try incorporating&nbsp;<a href=\"https://www.healthyeating.org/Healthy-Eating/All-Star-Foods/Fruits/Article-Viewer/Article/199/Health-Benefits-of-Blueberries.aspx\">blueberries</a>,&nbsp;<a href=\"https://www.healthyeating.org/Healthy-Eating/All-Star-Foods/Fruits/Article-Viewer/Article/204/Health-Benefits-of-Citrus-Fruit.aspx\">citrus fruit</a>,&nbsp;<a href=\"https://www.healthyeating.org/Healthy-Eating/All-Star-Foods/Fruits/Article-Viewer/Article/205/Health-Benefits-of-Cranberries.aspx\">cranberries</a>or&nbsp;<a href=\"https://www.healthyeating.org/Healthy-Eating/All-Star-Foods/Fruits/Article-Viewer/Article/206/Health-Benefits-of-Strawberries.aspx\">strawberries</a>&nbsp;which contain phytochemicals that are being studied for added health benefits.&nbsp;</p>\r\n\r\n<p>The nutrients in fruit are vital for health and maintenance of your body. The potassium in fruit can reduce your risk of heart disease and stroke. Potassium may also reduce the risk of developing kidney stones and help to decrease bone loss as you age.</p>\r\n\r\n<p>Folate (folic acid) helps the body form red blood cells. Women of childbearing age who may become pregnant and those in the first trimester of pregnancy need adequate folate. Folate helps prevent neural tube birth defects, such as spina bifida.</p>\r\n\r\n<p>Source: Diary Council of Carlifonia</p>', 'blog/health2.jpg', 'blog/thumb/thumb_health2.jpg', 'blog/thumbsmall/thumb_health2.jpg', 'Health-Benefits-of-Exercise1524142060', '2018-12-25 11:47:41', '2018-12-25 11:47:41'),
(4, 'Medicine and how it works', '<p>Exercise is good, and to keep feet we need to do exercise often in order to be fit and get the body active.c diseases.&nbsp;USDA&#39;s MyPlate encourages making half your plate fruits and vegetables for healthy eating.</p>\r\n\r\n<p>Fruit are important sources of many nutrients, including potassium, fiber, vitamin C and folate (folic acid). Try incorporating&nbsp;<a href=\"https://www.healthyeating.org/Healthy-Eating/All-Star-Foods/Fruits/Article-Viewer/Article/199/Health-Benefits-of-Blueberries.aspx\">blueberries</a>,&nbsp;<a href=\"https://www.healthyeating.org/Healthy-Eating/All-Star-Foods/Fruits/Article-Viewer/Article/204/Health-Benefits-of-Citrus-Fruit.aspx\">citrus fruit</a>,&nbsp;<a href=\"https://www.healthyeating.org/Healthy-Eating/All-Star-Foods/Fruits/Article-Viewer/Article/205/Health-Benefits-of-Cranberries.aspx\">cranberries</a>or&nbsp;<a href=\"https://www.healthyeating.org/Healthy-Eating/All-Star-Foods/Fruits/Article-Viewer/Article/206/Health-Benefits-of-Strawberries.aspx\">strawberries</a>&nbsp;which contain phytochemicals that are being studied for added health benefits.&nbsp;</p>\r\n\r\n<p>The nutrients in fruit are vital for health and maintenance of your body. The potassium in fruit can reduce your risk of heart disease and stroke. Potassium may also reduce the risk of developing kidney stones and help to decrease bone loss as you age.</p>\r\n\r\n<p>Folate (folic acid) helps the body form red blood cells. Women of childbearing age who may become pregnant and those in the first trimester of pregnancy need adequate folate. Folate helps prevent neural tube birth defects, such as spina bifida.</p>\r\n\r\n<p>Source: Diary Council of Carlifonia</p>', 'blog/drug.jpg', 'blog/thumb/thumb_drug.jpg', 'blog/thumbsmall/thumb_drug.jpg', 'Medicine-and-how-it-works1524142054', '2018-12-25 11:47:41', '2018-12-25 11:47:41');

-- --------------------------------------------------------

--
-- Table structure for table `bookappointments`
--

DROP TABLE IF EXISTS `bookappointments`;
CREATE TABLE IF NOT EXISTS `bookappointments` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `fname` char(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lname` char(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `schedule` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `icon`, `created_at`, `updated_at`) VALUES
(1, 'Pharmaceuticals', NULL, NULL, NULL),
(2, 'Toiletries', NULL, NULL, NULL),
(5, 'Pastry & Beverages', NULL, NULL, NULL),
(6, 'Bags & Toys', NULL, NULL, NULL),
(7, 'Accessories', NULL, NULL, NULL),
(8, 'Stationery', NULL, NULL, NULL),
(9, 'Drinks & Wines', NULL, NULL, NULL),
(11, 'Cosmetics', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
CREATE TABLE IF NOT EXISTS `contacts` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` int(11) NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `contacts_email_unique` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

DROP TABLE IF EXISTS `coupons`;
CREATE TABLE IF NOT EXISTS `coupons` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `coupon_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
CREATE TABLE IF NOT EXISTS `likes` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `like` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
CREATE TABLE IF NOT EXISTS `messages` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int(11) NOT NULL DEFAULT '1' COMMENT '1:text,2:pdf,3:zip,4:image',
  `file_path` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `message`, `type`, `file_path`, `file_name`, `created_at`, `updated_at`, `status`) VALUES
(1, 2, 'hi', 1, NULL, NULL, '2018-12-18 15:23:36', '2018-12-18 15:23:36', 1),
(2, 1, 'how you', 1, NULL, NULL, '2018-12-18 15:24:20', '2018-12-18 15:24:20', 1),
(3, 2, 'file', 4, 'http://mainapp/uploads/chats/c6.jpg', 'c6.jpg', '2018-12-18 15:52:26', '2018-12-18 15:52:26', 1),
(4, 2, 'hi', 1, NULL, NULL, '2018-12-18 15:53:52', '2018-12-18 15:53:52', 1),
(5, 2, 'file', 4, 'http://mainapp/uploads/chats/cat-widget2.jpg', 'cat-widget2.jpg', '2018-12-18 15:53:59', '2018-12-18 15:53:59', 1),
(6, 5, 'hi', 1, NULL, NULL, '2018-12-20 13:29:41', '2018-12-20 13:29:41', 1),
(7, 5, 'hello how are you', 1, NULL, NULL, '2018-12-20 13:29:50', '2018-12-20 13:29:50', 1),
(8, 5, 'file', 4, 'http://mainapp/uploads/chats/pp4.jpg', 'pp4.jpg', '2018-12-20 13:30:10', '2018-12-20 13:30:10', 1),
(9, 4, 'am ok', 1, NULL, NULL, '2018-12-20 13:37:28', '2018-12-20 13:37:28', 1),
(10, 5, 'hello', 1, NULL, NULL, '2018-12-28 14:33:41', '2018-12-28 14:33:41', 1);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(2, '2014_10_12_100000_create_password_resets_table', 1),
(6, '2017_12_20_161442_create_categories_table', 1),
(8, '2017_12_21_015734_create_product_categories_table', 1),
(12, '2017_12_20_161352_create_prescriptions_table', 3),
(16, '2017_12_20_164046_create_wallet_transactions_table', 4),
(18, '2014_10_12_000000_create_users_table', 5),
(19, '2017_12_22_091157_create_wallets_table', 5),
(20, '2017_12_20_161314_create_orders_table', 6),
(21, '2016_06_01_000001_create_oauth_auth_codes_table', 7),
(22, '2016_06_01_000002_create_oauth_access_tokens_table', 7),
(23, '2016_06_01_000003_create_oauth_refresh_tokens_table', 7),
(24, '2016_06_01_000004_create_oauth_clients_table', 7),
(25, '2016_06_01_000005_create_oauth_personal_access_clients_table', 7),
(26, '2018_03_02_122555_create_sub_categories_table', 8),
(28, '2017_12_20_161247_create_products_table', 9),
(29, '2018_03_05_134740_add_unit_to_products_table', 10),
(30, '2018_03_26_130604_create_admins_table', 11),
(31, '2018_04_19_115301_create_blogs_table', 12),
(32, '2018_04_19_115553_create_site_settings_table', 12),
(33, '2018_12_01_180033_create_orders_table', 13),
(34, '2018_12_01_201712_create_orders_table', 14),
(35, '2018_12_01_204020_create_coupons_table', 15),
(36, '2018_12_12_195505_create_messages_table', 16),
(37, '2018_12_14_185054_create_messages_table', 17),
(38, '2018_12_14_185304_create_receivers_table', 18),
(39, '2017_06_13_101135_create_messages_table', 19),
(40, '2017_06_21_032341_create_receivers_table', 20),
(41, '2018_12_18_193744_create_appointments_table', 21),
(42, '2018_12_18_232541_create_bookappointments_table', 22),
(43, '2018_12_19_131103_create_role_table', 23),
(44, '2018_12_27_213225_create_posts_table', 24),
(45, '2018_12_28_171619_create_bloglikes_table', 25),
(46, '2018_12_28_212806_create_likes_table', 26),
(47, '2018_12_30_093455_create_contacts_table', 27);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE IF NOT EXISTS `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
CREATE TABLE IF NOT EXISTS `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE IF NOT EXISTS `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'WVOwrC7OHi5pQKLPX3GkagczFolRMRYRdiAZxq1s', 'http://localhost', 1, 0, 0, '2018-02-12 13:22:27', '2018-02-12 13:22:27'),
(2, NULL, 'Laravel Password Grant Client', 'h0XIzkYh1p64xZbrJi3l5wfHDl3xiM41LVMlBP30', 'http://localhost', 0, 1, 0, '2018-02-12 13:22:27', '2018-02-12 13:22:27');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
CREATE TABLE IF NOT EXISTS `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_personal_access_clients_client_id_index` (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2018-02-12 13:22:27', '2018-02-12 13:22:27');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE IF NOT EXISTS `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `reference` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` bigint(20) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pickup_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pickup_time` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cart` longtext COLLATE utf8mb4_unicode_ci,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `orders_reference_unique` (`reference`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders_content`
--

DROP TABLE IF EXISTS `orders_content`;
CREATE TABLE IF NOT EXISTS `orders_content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reference` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `price` float NOT NULL,
  `qty` int(11) NOT NULL,
  `picture` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `products_view` varchar(3) NOT NULL DEFAULT 'no',
  `products_edit` varchar(3) NOT NULL DEFAULT 'no',
  `products_delete` varchar(3) NOT NULL DEFAULT 'no',
  `orders_view` varchar(3) NOT NULL DEFAULT 'no',
  `orders_edit` varchar(3) NOT NULL DEFAULT 'no',
  `orders_delete` varchar(3) NOT NULL DEFAULT 'No',
  `prescriptions_view` varchar(3) NOT NULL DEFAULT 'no',
  `prescriptions_edit` varchar(3) NOT NULL DEFAULT 'no',
  `prescriptions_delete` varchar(3) NOT NULL DEFAULT 'no',
  `blog_add` varchar(3) NOT NULL DEFAULT 'no',
  `create_account` varchar(3) NOT NULL DEFAULT 'no',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role_id` (`role_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `role_id`, `products_view`, `products_edit`, `products_delete`, `orders_view`, `orders_edit`, `orders_delete`, `prescriptions_view`, `prescriptions_edit`, `prescriptions_delete`, `blog_add`, `create_account`, `created_at`, `updated_at`) VALUES
(1, 1, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '2018-09-13 11:12:12', '2018-09-13 11:12:12'),
(2, 2, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'no', 'yes', 'no', '2018-09-13 11:22:00', '2018-09-17 07:43:07'),
(3, 3, 'no', 'no', 'no', 'no', 'no', 'no', 'yes', 'yes', 'yes', 'no', 'no', '2018-09-13 11:22:00', '2018-09-13 11:00:13'),
(4, 4, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'yes', '2018-09-17 09:15:15', '2018-09-17 09:16:02');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `comment`, `created_at`, `updated_at`) VALUES
(9, 4, 'i hope this works fo rme', '2018-12-28 14:22:46', '2018-12-28 14:22:46'),
(3, 4, 'nice work', '2018-12-27 22:30:14', '2018-12-27 22:30:14'),
(6, 4, 'better', '2018-12-27 22:54:43', '2018-12-27 22:54:43');

-- --------------------------------------------------------

--
-- Table structure for table `prescriptions`
--

DROP TABLE IF EXISTS `prescriptions`;
CREATE TABLE IF NOT EXISTS `prescriptions` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` bigint(20) NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `response` text COLLATE utf8mb4_unicode_ci,
  `amount` bigint(20) DEFAULT NULL,
  `reference` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `doctors_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `doctors_phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `clinic` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prescriptions`
--

INSERT INTO `prescriptions` (`id`, `user_id`, `name`, `title`, `phone`, `email`, `age`, `description`, `response`, `amount`, `reference`, `created_at`, `updated_at`, `doctors_name`, `doctors_phone`, `clinic`, `status`, `file`) VALUES
(3, 133, 'Red Sparrow', 'First Prescription', 8123456789, 'sparrow@gmail.com', 12, '', 'Pending', 3000, 'F3aOjO', '2018-09-06 00:55:06', '2018-10-21 14:28:58', 'Lasisi', '08123456789', 'Istrategy Tech.', 4, 'first-prescription1536198906.jpg'),
(4, 133, 'Red Sparrow', 'Prescription for Malaria', 8123456789, 'sparrow@gmail.com', 12, '', 'Some prescriptions are not available.', 5000, 'LBxcwP', '2018-09-11 13:47:11', '2018-10-21 15:21:02', 'John Paul', '09056130658', 'John and JOhn Hospital', 4, 'prescription-for-malaria1536677231.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `prescription_payments`
--

DROP TABLE IF EXISTS `prescription_payments`;
CREATE TABLE IF NOT EXISTS `prescription_payments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `prescription_id` int(11) NOT NULL,
  `payment_type` varchar(20) NOT NULL,
  `amount_paid` double NOT NULL,
  `status` int(11) NOT NULL,
  `status_text` text,
  `receipt_name` varchar(191) NOT NULL,
  `receipt_address` text,
  `receipt_phone` varchar(15) NOT NULL,
  `receipt_email` varchar(100) NOT NULL,
  `pickup_date` date DEFAULT NULL,
  `pickup_time` varchar(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prescription_payments`
--

INSERT INTO `prescription_payments` (`id`, `prescription_id`, `payment_type`, `amount_paid`, `status`, `status_text`, `receipt_name`, `receipt_address`, `receipt_phone`, `receipt_email`, `pickup_date`, `pickup_time`, `created_at`, `updated_at`) VALUES
(1, 3, 'Wallet', 3000, 1, 'Paid', 'Red Sparrow', NULL, '09056130658', 'sparrow@gmail.com', NULL, NULL, '2018-10-21 14:19:15', '2018-10-21 14:19:15'),
(3, 4, 'Card', 5000, 1, 'Paid', 'Red Sparrow', NULL, '09056130658', 'sparrow@gmail.com', NULL, NULL, '2018-10-21 15:20:30', '2018-10-21 15:20:30');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `sub_category_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` bigint(20) NOT NULL,
  `overview` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `availability` tinyint(1) NOT NULL DEFAULT '1',
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumb1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `small1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumb2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `small2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumb3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `small3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumb4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `small4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating_cache` float(2,1) DEFAULT NULL,
  `rating_count` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `unit` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `sku`, `category_id`, `sub_category_id`, `title`, `price`, `overview`, `description`, `availability`, `slug`, `image1`, `thumb1`, `small1`, `image2`, `thumb2`, `small2`, `image3`, `thumb3`, `small3`, `image4`, `thumb4`, `small4`, `rating_cache`, `rating_count`, `created_at`, `updated_at`, `unit`) VALUES
(1, 'SKU326237402571', 1, 1, 'Miniplus 0.5mg Prazosin, 12.5mg Hydrochlerothiazid', 1400, NULL, '<p>Miniplus 0.5mg Prazosin, 12.5mg Hydrochlerothiazid</p>', 1, 'miniplus-05mg-prazosin-125mg-hydrochlerothiazid1520254830', 'products/miniplus-05mg-prazosin-125mg-hydrochlerothiazid1520254830.jpg', 'products/thumbs/product-thumb1520254830.jpg', 'products/smallest/product-small1520254830.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 0, '2018-03-05 12:00:31', '2018-11-13 06:06:09', NULL),
(2, 'SKU962167378585', 1, 1, 'Benadryl Allergy Relief Acrivastine', 3100, NULL, NULL, 1, 'benadryl-allergy-relief-acrivastine1520257117', 'products/benadryl-allergy-relief-acrivastine1520257117.jpg', 'products/thumbs/product-thumb1520257117.jpg', 'products/smallest/product-small1520257117.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 0, '2018-03-05 12:38:37', '2018-11-13 06:06:09', NULL),
(3, 'SKU672070716082', 1, 1, 'Actified Cold Tablets 2.5mg', 800, NULL, NULL, 1, 'actified-cold-tablets-25mg1520257239', 'products/actified-cold-tablets-25mg1520257239.jpg', 'products/thumbs/product-thumb1520257239.jpg', 'products/smallest/product-small1520257239.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 1, '2018-03-05 12:40:39', '2018-11-13 06:06:10', NULL),
(4, 'SKU792469546314', 1, 1, 'Sinufed Triprolidine 2.5mg / Tablet', 250, NULL, NULL, 1, 'sinufed-triprolidine-25mgtablet1520258635', 'products/sinufed-triprolidine-25mgtablet1520258635.jpg', 'products/thumbs/product-thumb1520258635.jpg', 'products/smallest/product-small1520258635.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 0, '2018-03-05 13:03:55', '2018-11-13 06:06:10', 'Card'),
(5, 'SKU882357793288', 1, 1, 'Piriton Allergy Tablets', 1500, NULL, NULL, 1, 'piriton-allergy-tablets1520259506', 'products/piriton-allergy-tablets1520259506.jpg', 'products/thumbs/product-thumb1520259506.jpg', 'products/smallest/product-small1520259506.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 0, '2018-03-05 13:18:26', '2018-11-13 06:06:10', NULL),
(6, 'SKU773606672585', 1, 1, 'Loratyn 10mg', 350, NULL, NULL, 1, 'loratyn-10mg1520259649', 'products/loratyn-10mg1520259649.jpg', 'products/thumbs/product-thumb1520259649.jpg', 'products/smallest/product-small1520259649.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 1, '2018-03-05 13:20:49', '2018-12-27 23:58:58', 'Card'),
(7, 'SKU410107119683', 1, 2, 'Cataflam 50mg', 800, NULL, NULL, 1, 'cataflam-50mg1520259883', 'products/cataflam-50mg1520259883.jpg', 'products/thumbs/product-thumb1520259883.jpg', 'products/smallest/product-small1520259883.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 0, '2018-03-05 13:24:43', '2018-11-13 06:06:10', 'Card'),
(8, 'SKU460590260714', 1, 2, 'Diamicron MR 30mg', 1100, NULL, NULL, 1, 'diamicron-mr-30mg1520260213', 'products/diamicron-mr-30mg1520260213.jpg', 'products/thumbs/product-thumb1520260213.jpg', 'products/smallest/product-small1520260213.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 0, '2018-03-05 13:30:14', '2018-11-13 06:06:10', 'Card'),
(9, 'SKU353527688228', 1, 2, 'Finasteride 5mg', 950, NULL, NULL, 1, 'finasteride-5mg1520262888', 'products/finasteride-5mg1520262888.jpg', 'products/thumbs/product-thumb1520262888.jpg', 'products/smallest/product-small1520262888.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 1, '2018-03-05 14:14:48', '2018-12-30 08:08:16', NULL),
(10, 'SKU689024429578', 1, 2, 'Mepiryl 2mg', 650, NULL, NULL, 1, 'mepiryl-2mg1520262962', 'products/mepiryl-2mg1520262962.jpg', 'products/thumbs/product-thumb1520262962.jpg', 'products/smallest/product-small1520262962.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 0, '2018-03-05 14:16:02', '2018-11-13 06:06:10', 'Card'),
(11, 'SKU668214019074', 1, 2, 'Voltfast 50mg', 200, NULL, NULL, 1, 'voltfast-50mg1520263276', 'products/voltfast-50mg1520323980.jpg', 'products/thumbs/product-thumb1520323980.jpg', 'products/smallest/product-small1520323980.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 0, '2018-03-05 14:21:17', '2018-11-13 06:06:10', 'Card'),
(12, 'SKU268496865079', 1, 2, 'NorVASC 10mg', 2200, NULL, NULL, 1, 'norvasc-10mg1520325290', 'products/norvasc-10mg1520325290.jpg', 'products/thumbs/product-thumb1520325290.jpg', 'products/smallest/product-small1520325290.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 6, '2018-03-06 07:34:51', '2018-12-24 22:44:07', 'Card'),
(13, 'SKU254534399694', 1, 2, 'Arthrotec 75mg', 800, NULL, NULL, 1, 'arthrotec-75mg1520325367', 'products/arthrotec-75mg1520325367.jpg', 'products/thumbs/product-thumb1520325367.jpg', 'products/smallest/product-small1520325367.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 0, '2018-03-06 07:36:08', '2018-11-13 06:06:10', 'Card'),
(14, 'SKU65178845258', 1, 2, 'Celebrex 200mg', 2300, NULL, NULL, 1, 'celebrex-200mg1520325424', 'products/celebrex-200mg1520325424.jpg', 'products/thumbs/product-thumb1520325424.jpg', 'products/smallest/product-small1520325424.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 1, '2018-03-06 07:37:04', '2018-11-13 06:06:10', NULL),
(15, 'SKU436302866636', 1, 2, 'Galvus Met 50mg/1000mg', 2300, NULL, NULL, 1, 'galvus-met-50mg1000mg1520325503', 'products/galvus-met-50mg1000mg1520325503.jpg', 'products/thumbs/product-thumb1520325503.jpg', 'products/smallest/product-small1520325503.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 0, '2018-03-06 07:38:24', '2018-11-13 06:06:10', 'Card'),
(16, 'SKU864525352172', 1, 2, 'Clofenac 100mg', 350, NULL, NULL, 1, 'clofenac-100mg1520325560', 'products/clofenac-100mg1520325560.jpg', 'products/thumbs/product-thumb1520325560.jpg', 'products/smallest/product-small1520325560.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 0, '2018-03-06 07:39:20', '2018-11-13 06:06:10', 'Card'),
(17, 'SKU852271253550', 1, 2, 'Voltaren Retard 100mg', 1150, NULL, NULL, 1, 'voltaren-retard-100mg1520326282', 'products/voltaren-retard-100mg1520326282.jpg', 'products/thumbs/product-thumb1520326282.jpg', 'products/smallest/product-small1520326282.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 0, '2018-03-06 07:51:22', '2018-11-13 06:06:10', 'Card'),
(18, 'SKU540755238007', 9, NULL, 'Best London Dry Gin', 400, NULL, NULL, 1, 'best-london-dry-gin1524313397', 'products/best-london-dry-gin1524328672.jpg', 'products/thumbs/product-thumb1524328672.jpg', 'products/smallest/product-small1524328672.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 0, '2018-04-21 12:23:17', '2018-11-13 06:06:10', NULL),
(19, 'SKU627511385805', 11, NULL, 'Philips Avent Natural Breast Pump Manual', 24850, NULL, NULL, 1, 'philips-avent-natural-breast-pump-manual1524314463', 'products/philips-avent-natural-breast-pump-manual1524314463.jpg', 'products/thumbs/product-thumb1524314463.jpg', 'products/smallest/product-small1524314463.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 0, '2018-04-21 12:41:04', '2018-11-13 06:06:10', NULL),
(20, 'SKU122933277121', 11, NULL, 'Philips Avent Natural Breast Pump Single Electric', 74000, NULL, NULL, 1, 'philips-avent-natural-breast-pump-single-electric1524314830', 'products/philips-avent-natural-breast-pump-single-electric1524314830.jpg', 'products/thumbs/product-thumb1524314830.jpg', 'products/smallest/product-small1524314830.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 0, '2018-04-21 12:47:10', '2018-11-13 06:06:10', NULL),
(21, 'SKU180630120607', 11, NULL, 'Pretty Cotton Bud', 300, NULL, NULL, 1, 'pretty-cotton-bud1524314908', 'products/pretty-cotton-bud1524314908.jpg', 'products/thumbs/product-thumb1524314908.jpg', 'products/smallest/product-small1524314908.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 0, '2018-04-21 12:48:28', '2018-11-13 06:06:11', NULL),
(22, 'SKU779544497923', 11, NULL, 'Pretty Cotton Bud', 200, NULL, NULL, 1, 'pretty-cotton-bud1524314937', 'products/pretty-cotton-bud1524314937.jpg', 'products/thumbs/product-thumb1524314937.jpg', 'products/smallest/product-small1524314937.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 0, '2018-04-21 12:48:57', '2018-11-13 06:06:11', NULL),
(23, 'SKU886804066673', 11, NULL, 'Clearasil Deep Cleanse Wipes', 650, NULL, NULL, 1, 'clearasil-deep-cleanse-wipes1524315004', 'products/clearasil-deep-cleanse-wipes1524315004.jpg', 'products/thumbs/product-thumb1524315004.jpg', 'products/smallest/product-small1524315004.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 0, '2018-04-21 12:50:04', '2018-11-13 06:06:11', NULL),
(24, 'SKU637910823776', 11, NULL, 'Pure Sensitive Wipes', 650, NULL, NULL, 1, 'pure-sensitive-wipes1524315032', 'products/pure-sensitive-wipes1524315032.jpg', 'products/thumbs/product-thumb1524315032.jpg', 'products/smallest/product-small1524315032.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 0, '2018-04-21 12:50:32', '2018-11-13 06:06:11', NULL),
(25, 'SKU609901788944', 11, NULL, 'Pure Feminine Wipes', 450, NULL, NULL, 1, 'pure-feminine-wipes1524315084', 'products/pure-feminine-wipes1524315084.jpg', 'products/thumbs/product-thumb1524315084.jpg', 'products/smallest/product-small1524315084.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 0, '2018-04-21 12:51:24', '2018-11-13 06:06:11', NULL),
(26, 'SKU933315426704', 11, NULL, 'Leocrema Wipes', 1900, NULL, NULL, 1, 'leocrema-wipes1524315445', 'products/leocrema-wipes1524315445.jpg', 'products/thumbs/product-thumb1524315445.jpg', 'products/smallest/product-small1524315445.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 0, '2018-04-21 12:57:25', '2018-11-13 06:06:11', NULL),
(27, 'SKU753295537341', 11, NULL, 'Tea Tree Facial Wipes', 700, NULL, NULL, 1, 'tea-tree-facial-wipes1524315490', 'products/tea-tree-facial-wipes1524315490.jpg', 'products/thumbs/product-thumb1524315490.jpg', 'products/smallest/product-small1524315490.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 0, '2018-04-21 12:58:10', '2018-11-13 06:06:11', NULL),
(28, 'SKU684000205320', 11, NULL, 'Pamper Fresh Clean Baby Wipes', 650, NULL, NULL, 1, 'pamper-fresh-clean-baby-wipes1524315549', 'products/pamper-fresh-clean-baby-wipes1524315549.jpg', 'products/thumbs/product-thumb1524315549.jpg', 'products/smallest/product-small1524315549.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 0, '2018-04-21 12:59:09', '2018-11-13 06:06:11', NULL),
(29, 'SKU268512168231', 11, NULL, 'Prince & Princess Baby Wipes', 700, NULL, NULL, 1, 'prince-princess-baby-wipes1524315966', 'products/prince-princess-baby-wipes1524315966.jpg', 'products/thumbs/product-thumb1524315966.jpg', 'products/smallest/product-small1524315966.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 0, '2018-04-21 13:06:06', '2018-11-13 06:06:11', NULL),
(31, 'SKU650758088387', 11, NULL, 'Angel Baby wipes', 650, NULL, NULL, 1, 'angel-baby-wipes1524316096', 'products/angel-baby-wipes1524316096.jpg', 'products/thumbs/product-thumb1524316096.jpg', 'products/smallest/product-small1524316096.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 0, '2018-04-21 13:08:16', '2018-11-13 06:06:11', NULL),
(32, 'SKU943578753006', 11, NULL, 'Astonish Descaler Remover', 650, NULL, NULL, 1, 'astonish-descaler-remover1524319049', 'products/astonish-descaler-remover1524319049.jpg', 'products/thumbs/product-thumb1524319049.jpg', 'products/smallest/product-small1524319049.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 0, '2018-04-21 13:57:29', '2018-11-13 06:06:11', NULL),
(33, 'SKU726862606650', 11, NULL, 'UB Relaxer s/s', 700, NULL, NULL, 1, 'ub-relaxer-ss1524320337', 'products/ub-relaxer-ss1524320337.jpg', 'products/thumbs/product-thumb1524320337.jpg', 'products/smallest/product-small1524320337.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 0, '2018-04-21 14:18:57', '2018-11-13 06:06:11', NULL),
(34, 'SKU727180511421', 11, NULL, 'Eden Extra Whitening Face & Body Scrub', 4500, NULL, NULL, 1, 'eden-extra-whitening-face-body-scrub1524320410', 'products/eden-extra-whitening-face-body-scrub1524320410.jpg', 'products/thumbs/product-thumb1524320410.jpg', 'products/smallest/product-small1524320410.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 0, '2018-04-21 14:20:10', '2018-11-13 06:06:11', NULL),
(35, 'SKU10869509636', 11, NULL, 'Allows Extra nail Desolver', 250, NULL, NULL, 1, 'allows-extra-nail-desolver1524320475', 'products/allows-extra-nail-desolver1524320475.jpg', 'products/thumbs/product-thumb1524320475.jpg', 'products/smallest/product-small1524320475.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 0, '2018-04-21 14:21:15', '2018-11-13 06:06:11', NULL),
(36, 'SKU250083408012', 11, NULL, 'CT+ Cleanser', 800, NULL, NULL, 1, 'ct-cleanser1524320542', 'products/ct-cleanser1524320542.jpg', 'products/thumbs/product-thumb1524320542.jpg', 'products/smallest/product-small1524320542.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 0, '2018-04-21 14:22:22', '2018-11-13 06:06:11', NULL),
(37, 'SKU824175935460', 11, NULL, 'Amos White Cream', 400, NULL, NULL, 1, 'amos-white-cream1524320584', 'products/amos-white-cream1524320584.jpg', 'products/thumbs/product-thumb1524320584.jpg', 'products/smallest/product-small1524320584.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 0, '2018-04-21 14:23:04', '2018-11-13 06:06:12', NULL),
(38, 'SKU28866315091', 5, NULL, 'Beef Rolls', 200, NULL, NULL, 1, 'beef-rolls1524321482', 'products/beef-rolls1524329073.jpg', 'products/thumbs/product-thumb1524329073.jpg', 'products/smallest/product-small1524329073.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 2, '2018-04-21 14:38:02', '2018-11-13 06:06:12', NULL),
(39, 'SKU975674164491', 2, NULL, 'Colgate Maxwhite Toothpaste', 800, NULL, NULL, 1, 'colgate-maxwhite-toothpaste1524323070', 'products/colgate-maxwhite-toothpaste1524323070.jpg', 'products/thumbs/product-thumb1524323070.jpg', 'products/smallest/product-small1524323070.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 0, '2018-04-21 15:04:31', '2018-11-13 06:06:12', NULL),
(40, 'SKU280845785524', 2, NULL, 'Oral B pro-Health Toothpaste', 350, NULL, NULL, 1, 'oral-b-pro-health-toothpaste1524323338', 'products/oral-b-pro-health-toothpaste1524323338.jpg', 'products/thumbs/product-thumb1524323338.jpg', 'products/smallest/product-small1524323338.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 1, '2018-04-21 15:08:59', '2018-11-13 06:06:12', NULL),
(41, 'SKU317674522936', 2, NULL, 'Listerine Total care 250ml', 1350, NULL, NULL, 1, 'listerine-total-care-250ml1524323608', 'products/listerine-total-care-250ml1524323608.jpg', 'products/thumbs/product-thumb1524323608.jpg', 'products/smallest/product-small1524323608.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5.0, 1, '2018-04-21 15:13:28', '2018-11-13 06:06:12', NULL),
(42, 'SKU339826425526', 7, NULL, 'Children G-SHOCK (RED)', 4500, NULL, NULL, 1, 'children-g-shock-red1524323784', 'products/children-g-shock-red1524323784.jpg', 'products/thumbs/product-thumb1524323784.jpg', 'products/smallest/product-small1524323784.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 0, '2018-04-21 15:16:24', '2018-11-13 06:06:12', NULL),
(43, 'SKU209485878999', 7, NULL, 'Kingston 8GB SD Card', 4500, NULL, NULL, 1, 'kingston-8gb-sd-card1524324127', 'products/kingston-8gb-sd-card1524324127.jpg', 'products/thumbs/product-thumb1524324127.jpg', 'products/smallest/product-small1524324127.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 0, '2018-04-21 15:22:07', '2018-11-13 06:06:12', NULL),
(44, 'SKU130559582374', 7, NULL, 'Sandisk Flash Drive (32GB)', 8000, NULL, NULL, 1, 'sandisk-flash-drive-32gb1524324417', 'products/sandisk-flash-drive-32gb1524324417.jpg', 'products/thumbs/product-thumb1524324417.jpg', 'products/smallest/product-small1524324417.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 0, '2018-04-21 15:26:57', '2018-11-13 06:06:12', NULL),
(45, 'SKU405062566205', 6, NULL, 'Big Hero Bag', 7500, NULL, NULL, 1, 'big-hero-bag1524325030', 'products/big-hero-bag1524325030.jpg', 'products/thumbs/product-thumb1524325030.jpg', 'products/smallest/product-small1524325030.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 0, '2018-04-21 15:37:10', '2018-11-13 06:06:12', NULL),
(46, 'SKU809678880095', 6, NULL, 'Landups Bag Blue', 10000, NULL, NULL, 1, 'landups-bag-blue1524325539', 'products/landups-bag-blue1524325539.jpg', 'products/thumbs/product-thumb1524325539.jpg', 'products/smallest/product-small1524325539.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 0, '2018-04-21 15:45:39', '2018-11-13 06:06:12', NULL),
(47, 'SKU136493658018', 6, NULL, 'Avangers Bag', 5000, NULL, NULL, 1, 'avangers-bag1524326467', 'products/avangers-bag1524326467.jpg', 'products/thumbs/product-thumb1524326467.jpg', 'products/smallest/product-small1524326467.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 0, '2018-04-21 16:01:07', '2018-11-13 06:06:12', NULL),
(48, 'SKU934969879446', 9, NULL, 'McDowells', 2600, NULL, NULL, 1, 'mcdowells1524328260', 'products/mcdowells1524328260.png', 'products/thumbs/product-thumb1524328260.png', 'products/smallest/product-small1524328260.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 0, '2018-04-21 16:31:01', '2018-11-13 06:06:12', NULL),
(49, 'SKU733340037810', 9, NULL, 'Absolut Raspberry', 5400, NULL, NULL, 1, 'absolut-vodka1524328318', 'products/absolut-raspberry1524328551.jpg', 'products/thumbs/product-thumb1524328551.jpg', 'products/smallest/product-small1524328551.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 0, '2018-04-21 16:31:58', '2018-11-13 06:06:12', NULL),
(50, 'SKU529408596738', 5, NULL, 'Olympic Milk', 150, NULL, NULL, 1, 'olympic-milk1524328865', 'products/olympic-milk1524328865.jpg', 'products/thumbs/product-thumb1524328865.jpg', 'products/smallest/product-small1524328865.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 0, '2018-04-21 16:41:05', '2018-11-13 06:06:12', NULL),
(51, 'SKU624544385490', 5, NULL, 'Pringles (original)', 600, NULL, NULL, 1, 'pringles-original1524329243', 'products/pringles-original1524329243.jpg', 'products/thumbs/product-thumb1524329243.jpg', 'products/smallest/product-small1524329243.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 0, '2018-04-21 16:47:24', '2018-11-13 06:06:12', NULL),
(52, 'SKU734483194133', 8, NULL, 'Uniable Note Book', 1500, NULL, NULL, 1, 'uniable-note-book1524329981', 'products/uniable-note-book1524329981.jpg', 'products/thumbs/product-thumb1524329981.jpg', 'products/smallest/product-small1524329981.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 0, '2018-04-21 16:59:41', '2018-11-13 06:06:12', NULL),
(56, 'SKU563637629484', 9, NULL, 'Pink Lady', 1400, NULL, NULL, 1, 'pink-lady1524492355', 'products/pink-lady1524492355.jpg', 'products/thumbs/product-thumb1524492355.jpg', 'products/smallest/product-small1524492355.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0, 0, '2018-08-28 14:45:24', '2018-11-13 06:06:12', NULL),
(57, 'SKU941636689271', 1, 1, 'Poki Poki', 2000, 'Enhancement', '<p>Alabi poki poki</p>\r\n\r\n<p>Gives you Poki.</p>', 1, 'poki-poki1535467843', 'products/poki-poki1535467843.jpg', 'products/thumbs/product-thumb1535467843.jpg', 'products/smallest/product-small1535467843.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-08-28 13:50:44', '2018-11-13 06:06:12', 'Card'),
(58, 'SKU868705422330', 6, NULL, 'Sample Product', 200, 'A sample product.', '<p>Sample product for sale.</p>', 1, 'llkdlksdlk-lksdlkml1535535477', 'products/sample-product1536677886.png', 'products/thumbs/product-thumb1536677886.png', 'products/smallest/product-small1536677886.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-08-29 08:37:59', '2018-11-13 06:06:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `receivers`
--

DROP TABLE IF EXISTS `receivers`;
CREATE TABLE IF NOT EXISTS `receivers` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `message_id` int(10) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `receivers`
--

INSERT INTO `receivers` (`id`, `user_id`, `message_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '2018-12-18 15:23:36', '2018-12-18 15:23:36'),
(2, 2, 2, 1, '2018-12-18 15:24:20', '2018-12-18 15:24:20'),
(3, 1, 3, 1, '2018-12-18 15:52:26', '2018-12-18 15:52:26'),
(4, 1, 4, 1, '2018-12-18 15:53:52', '2018-12-18 15:53:52'),
(5, 1, 5, 1, '2018-12-18 15:53:59', '2018-12-18 15:53:59'),
(6, 4, 6, 1, '2018-12-20 13:29:41', '2018-12-20 13:29:41'),
(7, 4, 7, 1, '2018-12-20 13:29:50', '2018-12-20 13:29:50'),
(8, 4, 8, 1, '2018-12-20 13:30:10', '2018-12-20 13:30:10'),
(9, 5, 9, 1, '2018-12-20 13:37:28', '2018-12-20 13:37:28'),
(10, 4, 10, 1, '2018-12-28 14:33:41', '2018-12-28 14:33:41');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
CREATE TABLE IF NOT EXISTS `reviews` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `approved` tinyint(4) DEFAULT NULL,
  `spam` tinyint(4) DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `product_id`, `user_id`, `rating`, `approved`, `spam`, `comment`, `created_at`, `updated_at`) VALUES
(24, 40, NULL, NULL, NULL, NULL, 'i love oral b', '2018-12-30 08:24:16', '2018-12-30 08:24:16'),
(23, 9, NULL, NULL, NULL, NULL, 'nice', '2018-12-30 08:08:16', '2018-12-30 08:08:16'),
(22, 6, NULL, NULL, NULL, NULL, 'ok', '2018-12-27 23:58:58', '2018-12-27 23:58:58'),
(21, 12, NULL, NULL, NULL, NULL, 'helo', '2018-12-24 22:44:07', '2018-12-24 22:44:07'),
(20, 12, NULL, NULL, NULL, NULL, 'its good', '2018-12-24 22:41:23', '2018-12-24 22:41:23'),
(19, 12, NULL, NULL, NULL, NULL, 'hhhhhhhhh', '2018-12-24 22:22:31', '2018-12-24 22:22:31'),
(16, 12, NULL, NULL, NULL, NULL, 'trr', '2018-12-24 21:42:19', '2018-12-24 21:42:19'),
(17, 12, NULL, NULL, NULL, NULL, 'ok it worked', '2018-12-24 21:44:36', '2018-12-24 21:44:36'),
(18, 12, NULL, NULL, NULL, NULL, 'ok it worked', '2018-12-24 21:45:55', '2018-12-24 21:45:55');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(191) NOT NULL,
  `description` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', NULL, '2018-09-13 09:44:11', '2018-09-13 09:44:11'),
(2, 'User', NULL, '2018-09-13 09:44:11', '2018-09-13 09:44:11'),
(3, 'Pharmacist', NULL, '2018-09-13 09:44:11', '2018-09-13 09:44:11');

-- --------------------------------------------------------

--
-- Table structure for table `site_settings`
--

DROP TABLE IF EXISTS `site_settings`;
CREATE TABLE IF NOT EXISTS `site_settings` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `hotline` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_address` text COLLATE utf8mb4_unicode_ci,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pinterest` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_settings`
--

INSERT INTO `site_settings` (`id`, `hotline`, `site_name`, `site_email`, `site_address`, `facebook`, `twitter`, `google`, `pinterest`, `instagram`, `youtube`, `logo`, `created_at`, `updated_at`) VALUES
(1, '08147068805', 'Dollar Pharmacy', 'hello@dollarpharmacy.com', '37 Julius Nyerere Cres, Asokoro, Abuja', NULL, NULL, NULL, NULL, NULL, NULL, 'logos/Logo1542969093.png', '2018-11-23 05:48:27', '2018-11-23 09:31:33');

-- --------------------------------------------------------

--
-- Table structure for table `stocks`
--

DROP TABLE IF EXISTS `stocks`;
CREATE TABLE IF NOT EXISTS `stocks` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `product_count` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stocks`
--

INSERT INTO `stocks` (`id`, `product_id`, `product_count`, `created_at`, `updated_at`) VALUES
(3, 53, 20, '2018-08-28 13:05:58', '2018-08-28 13:05:58'),
(4, 57, 20, '2018-08-28 13:50:44', '2018-08-28 13:50:44'),
(5, 58, 20, '2018-08-29 08:38:00', '2018-08-29 08:38:00');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

DROP TABLE IF EXISTS `sub_categories`;
CREATE TABLE IF NOT EXISTS `sub_categories` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `name`, `icon`, `created_at`, `updated_at`) VALUES
(1, 1, 'Allergy', NULL, NULL, NULL),
(2, 1, 'Anagesic', NULL, NULL, NULL),
(3, 1, 'Antacid', NULL, NULL, NULL),
(4, 1, 'Anti Biotics', NULL, NULL, NULL),
(5, 1, 'Anti Diabetes', NULL, NULL, NULL),
(6, 1, 'Anti Epileptic', NULL, NULL, NULL),
(7, 1, 'Anti Malaria', NULL, NULL, NULL),
(8, 1, 'Anti Poison', NULL, NULL, NULL),
(9, 1, 'Asthmatic Drugs', NULL, NULL, NULL),
(10, 1, 'Cough Syrup', NULL, NULL, NULL),
(11, 1, 'Cream & Ointments', NULL, NULL, NULL),
(12, 1, 'Multi-Vitamins', NULL, NULL, NULL),
(13, 1, 'Deworming Drugs', NULL, NULL, NULL),
(14, 1, 'Sex Enhancement', NULL, NULL, NULL),
(15, 1, 'Surgicals', NULL, NULL, NULL),
(16, 1, 'Anti Poison', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` char(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int(11) NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `role_id`, `email`, `image`, `image_path`, `phone`, `address`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(4, 'ikeri ebenezer', 2, 'ikbenezer@gmail.com', 'uploads/user/c3.jpg', NULL, 'ikbenezer@gmail.com', 'block 4 plot 4 jaremy street Guri Wuse,Aabuja', '$2y$10$v0kWMnhAcYh3KHfC8p5ote6daebg1f/QYqDXdgfWP2n3NiDuykRiy', 'r3lyIkFl3fHOCLXOOQGeoPzejGdCg9ZwOJ2UtVqaVMmQwx8t2jOgFFqmaWb1', '2018-12-18 17:15:31', '2018-12-18 17:15:31'),
(5, 'pharm', 3, 'toniapharm@yahoo.com', 'uploads/user/index.png', 'http://mainapp/uploads/user/index.png', '08033455545', 'block 10 agudu Abuja', '$2y$10$v0kWMnhAcYh3KHfC8p5ote6daebg1f/QYqDXdgfWP2n3NiDuykRiy', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wallets`
--

DROP TABLE IF EXISTS `wallets`;
CREATE TABLE IF NOT EXISTS `wallets` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `balance` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wallets`
--

INSERT INTO `wallets` (`id`, `user_id`, `balance`, `created_at`, `updated_at`) VALUES
(1, 135, 0, '2018-12-10 07:56:56', '2018-12-10 07:56:56'),
(2, 136, 0, '2018-12-11 10:58:41', '2018-12-11 10:58:41'),
(3, 137, 0, '2018-12-17 18:32:39', '2018-12-17 18:32:39'),
(4, 138, 0, '2018-12-17 22:20:52', '2018-12-17 22:20:52'),
(5, 1, 0, '2018-12-18 15:20:27', '2018-12-18 15:20:27'),
(6, 2, 0, '2018-12-18 15:23:13', '2018-12-18 15:23:13'),
(7, 3, 0, '2018-12-18 17:01:46', '2018-12-18 17:01:46'),
(8, 4, 0, '2018-12-18 17:15:31', '2018-12-18 17:15:31');

-- --------------------------------------------------------

--
-- Table structure for table `wallet_transactions`
--

DROP TABLE IF EXISTS `wallet_transactions`;
CREATE TABLE IF NOT EXISTS `wallet_transactions` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `wallet_id` int(11) NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
