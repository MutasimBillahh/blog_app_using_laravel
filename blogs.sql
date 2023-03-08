-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 08, 2023 at 04:30 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blogs`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `image`, `created_at`, `updated_at`) VALUES
(3, 'JAVA', 'java', 'java-2023-01-18-63c7aa0012761.png', '2023-01-05 03:17:16', '2023-01-18 02:12:48'),
(4, 'CSS', 'css', 'css-2023-01-18-63c7a9f74d4bf.png', '2023-01-05 03:21:37', '2023-01-18 02:12:39'),
(6, 'PHP', 'php', 'php-2023-01-18-63c7a9edac93f.jpg', '2023-01-05 03:22:50', '2023-01-18 02:12:30'),
(7, 'C++', 'c', 'c-2023-01-18-63c7a9d5b06fa.png', '2023-01-05 07:39:28', '2023-01-18 02:12:06'),
(8, 'LARAVEL', 'laravel', 'laravel-2023-01-18-63c7a9cc74c33.jpg', '2023-01-06 07:58:43', '2023-01-18 02:11:56'),
(9, 'VIEW JS', 'view-js', 'view-js-2023-01-18-63c7a9c375c50.png', '2023-01-07 03:13:45', '2023-01-18 02:11:48'),
(10, 'JAVA SCRIPT', 'java-script', 'java-script-2023-01-18-63c7a9bb92a1e.jpeg', '2023-01-07 08:29:09', '2023-01-18 02:11:39');

-- --------------------------------------------------------

--
-- Table structure for table `category_post`
--

CREATE TABLE `category_post` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_post`
--

INSERT INTO `category_post` (`id`, `post_id`, `category_id`, `created_at`, `updated_at`) VALUES
(15, 11, 8, '2023-01-07 10:28:26', '2023-01-07 10:28:26'),
(19, 18, 6, '2023-01-08 09:02:43', '2023-01-08 09:02:43'),
(21, 20, 7, '2023-01-08 09:19:37', '2023-01-08 09:19:37'),
(22, 22, 4, '2023-01-08 09:24:04', '2023-01-08 09:24:04'),
(23, 22, 9, '2023-01-08 09:24:04', '2023-01-08 09:24:04'),
(30, 33, 7, '2023-01-09 06:55:56', '2023-01-09 06:55:56'),
(31, 33, 9, '2023-01-09 06:55:56', '2023-01-09 06:55:56'),
(32, 33, 10, '2023-01-09 06:55:56', '2023-01-09 06:55:56'),
(39, 38, 4, '2023-01-09 07:24:31', '2023-01-09 07:24:31'),
(40, 38, 6, '2023-01-09 07:24:31', '2023-01-09 07:24:31'),
(41, 38, 7, '2023-01-09 07:24:31', '2023-01-09 07:24:31'),
(42, 38, 8, '2023-01-09 07:24:31', '2023-01-09 07:24:31'),
(43, 39, 7, '2023-01-09 07:47:22', '2023-01-09 07:47:22'),
(44, 39, 9, '2023-01-09 07:47:22', '2023-01-09 07:47:22'),
(45, 40, 4, '2023-01-09 07:48:15', '2023-01-09 07:48:15'),
(49, 40, 10, '2023-01-09 07:48:15', '2023-01-09 07:48:15'),
(50, 41, 4, '2023-01-18 02:17:30', '2023-01-18 02:17:30');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `user_id`, `comment`, `created_at`, `updated_at`) VALUES
(1, 39, 1, 'This IS nEW cOMMENT', '2023-01-11 09:28:00', '2023-01-11 09:28:00'),
(2, 39, 1, 'Another Comment', '2023-01-11 09:31:10', '2023-01-11 09:31:10');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(1, 'default', '{\"displayName\":\"App\\\\Notifications\\\\NewAuthorPost\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":6:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":2:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewAuthorPost\\\":5:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":2:{s:5:\\\"class\\\";s:8:\\\"App\\\\Post\\\";s:2:\\\"id\\\";i:41;}s:2:\\\"id\\\";s:36:\\\"94a1558a-a2c3-4425-858e-66d841ab7373\\\";s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;}\"}}', 0, NULL, 1674029850, 1674029850),
(2, 'default', '{\"displayName\":\"App\\\\Notifications\\\\AuthorPostApproved\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":6:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":2:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\AuthorPostApproved\\\":5:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":2:{s:5:\\\"class\\\";s:8:\\\"App\\\\Post\\\";s:2:\\\"id\\\";i:41;}s:2:\\\"id\\\";s:36:\\\"e13ff326-fe68-4939-b2cd-f4181486bc6a\\\";s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;}\"}}', 0, NULL, 1674029875, 1674029875);

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
(3, '2022_12_16_101259_create_roles_table', 1),
(4, '2022_12_18_085617_create_tags_table', 2),
(5, '2022_12_20_130247_create_categories_table', 3),
(6, '2023_01_05_154820_create_posts_table', 4),
(7, '2023_01_06_121842_create_category_post_table', 4),
(8, '2023_01_06_121859_create_post_tag_table', 4),
(9, '2023_01_08_133349_create_subscribers_table', 5),
(10, '2023_01_09_150145_create_jobs_table', 6),
(11, '2023_01_10_153534_create_user_table', 7),
(12, '2023_01_10_154442_create_post_user_table', 8),
(13, '2023_01_11_150311_create_comments_table', 9);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `view_count` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `is_approve` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `slug`, `image`, `body`, `view_count`, `status`, `is_approve`, `created_at`, `updated_at`) VALUES
(11, 1, 'FAVOURITE POSTS DETAILS', 'favourite-posts-details', 'favourite-posts-details-2023-01-18-63c7a985567d7.png', '<div>\r\n<p>un testo segnaposto utilizzato nel settore della tipografia e della stampa. Lorem Ipsum &egrave; considerato il testo segnaposto standard sin dal sedicesimo secolo, quando un anonimo tipografo prese una cassetta di caratteri e li assembl&ograve; per preparare un testo campione. &Egrave; sopravvissuto non solo a pi&ugrave; di cinque secoli, ma anche al passaggio alla videoimpaginazione, pervenendoci sostanzialmente inalterato. Fu reso popolare, negli anni &rsquo;60, con la diffusione dei fogli di caratteri trasferibili &ldquo;Letraset&rdquo;, che contenevano passaggi del Lorem Ipsum, e pi&ugrave; recentemente da software di impaginazione come Aldus PageMaker, che includeva versioni del Lorem Ipsum.</p>\r\n</div>\r\n<div>\r\n<div>\r\n<p>un testo segnaposto utilizzato nel settore della tipografia e della stampa. Lorem Ipsum &egrave; considerato il testo segnaposto standard sin dal sedicesimo secolo, quando un anonimo tipografo prese una cassetta di caratteri e li assembl&ograve; per preparare un testo campione. &Egrave; sopravvissuto non solo a pi&ugrave; di cinque secoli, ma anche al passaggio alla videoimpaginazione, pervenendoci sostanzialmente inalterato. Fu reso popolare, negli anni &rsquo;60, con la diffusione dei fogli di caratteri trasferibili &ldquo;Letraset&rdquo;, che contenevano passaggi del Lorem Ipsum, e pi&ugrave; recentemente da software di impaginazione come Aldus PageMaker, che includeva versioni del Lorem Ipsum.</p>\r\n</div>\r\n<div>\r\n<div>\r\n<p>un testo segnaposto utilizzato nel settore della tipografia e della stampa. Lorem Ipsum &egrave; considerato il testo segnaposto standard sin dal sedicesimo secolo, quando un anonimo tipografo prese una cassetta di caratteri e li assembl&ograve; per preparare un testo campione. &Egrave; sopravvissuto non solo a pi&ugrave; di cinque secoli, ma anche al passaggio alla videoimpaginazione, pervenendoci sostanzialmente inalterato. Fu reso popolare, negli anni &rsquo;60, con la diffusione dei fogli di caratteri trasferibili &ldquo;Letraset&rdquo;, che contenevano passaggi del Lorem Ipsum, e pi&ugrave; recentemente da software di impaginazione come Aldus PageMaker, che includeva versioni del Lorem Ipsum.</p>\r\n</div>\r\n<div>\r\n<div>\r\n<p>un testo segnaposto utilizzato nel settore della tipografia e della stampa. Lorem Ipsum &egrave; considerato il testo segnaposto standard sin dal sedicesimo secolo, quando un anonimo tipografo prese una cassetta di caratteri e li assembl&ograve; per preparare un testo campione. &Egrave; sopravvissuto non solo a pi&ugrave; di cinque secoli, ma anche al passaggio alla videoimpaginazione, pervenendoci sostanzialmente inalterato. Fu reso popolare, negli anni &rsquo;60, con la diffusione dei fogli di caratteri trasferibili &ldquo;Letraset&rdquo;, che contenevano passaggi del Lorem Ipsum, e pi&ugrave; recentemente da software di impaginazione come Aldus PageMaker, che includeva versioni del Lorem Ipsum.</p>\r\n</div>\r\n<div>&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>', 0, 1, 1, '2023-01-07 10:28:26', '2023-01-18 02:10:46'),
(18, 1, 'LARAVEL WITH THE FUTURE', 'laravel-with-the-future', 'laravel-with-the-future-2023-01-18-63c7a9627a1c1.jpeg', '<div>\r\n<p>un testo segnaposto utilizzato nel settore della tipografia e della stampa. Lorem Ipsum &egrave; considerato il testo segnaposto standard sin dal sedicesimo secolo, quando un anonimo tipografo prese una cassetta di caratteri e li assembl&ograve; per preparare un testo campione. &Egrave; sopravvissuto non solo a pi&ugrave; di cinque secoli, ma anche al passaggio alla videoimpaginazione, pervenendoci sostanzialmente inalterato. Fu reso popolare, negli anni &rsquo;60, con la diffusione dei fogli di caratteri trasferibili &ldquo;Letraset&rdquo;, che contenevano passaggi del Lorem Ipsum, e pi&ugrave; recentemente da software di impaginazione come Aldus PageMaker, che includeva versioni del Lorem Ipsum.</p>\r\n</div>\r\n<div>\r\n<div>\r\n<p>un testo segnaposto utilizzato nel settore della tipografia e della stampa. Lorem Ipsum &egrave; considerato il testo segnaposto standard sin dal sedicesimo secolo, quando un anonimo tipografo prese una cassetta di caratteri e li assembl&ograve; per preparare un testo campione. &Egrave; sopravvissuto non solo a pi&ugrave; di cinque secoli, ma anche al passaggio alla videoimpaginazione, pervenendoci sostanzialmente inalterato. Fu reso popolare, negli anni &rsquo;60, con la diffusione dei fogli di caratteri trasferibili &ldquo;Letraset&rdquo;, che contenevano passaggi del Lorem Ipsum, e pi&ugrave; recentemente da software di impaginazione come Aldus PageMaker, che includeva versioni del Lorem Ipsum.</p>\r\n</div>\r\n<div>\r\n<div>\r\n<p>un testo segnaposto utilizzato nel settore della tipografia e della stampa. Lorem Ipsum &egrave; considerato il testo segnaposto standard sin dal sedicesimo secolo, quando un anonimo tipografo prese una cassetta di caratteri e li assembl&ograve; per preparare un testo campione. &Egrave; sopravvissuto non solo a pi&ugrave; di cinque secoli, ma anche al passaggio alla videoimpaginazione, pervenendoci sostanzialmente inalterato. Fu reso popolare, negli anni &rsquo;60, con la diffusione dei fogli di caratteri trasferibili &ldquo;Letraset&rdquo;, che contenevano passaggi del Lorem Ipsum, e pi&ugrave; recentemente da software di impaginazione come Aldus PageMaker, che includeva versioni del Lorem Ipsum.</p>\r\n</div>\r\n<div>\r\n<div>\r\n<p>un testo segnaposto utilizzato nel settore della tipografia e della stampa. Lorem Ipsum &egrave; considerato il testo segnaposto standard sin dal sedicesimo secolo, quando un anonimo tipografo prese una cassetta di caratteri e li assembl&ograve; per preparare un testo campione. &Egrave; sopravvissuto non solo a pi&ugrave; di cinque secoli, ma anche al passaggio alla videoimpaginazione, pervenendoci sostanzialmente inalterato. Fu reso popolare, negli anni &rsquo;60, con la diffusione dei fogli di caratteri trasferibili &ldquo;Letraset&rdquo;, che contenevano passaggi del Lorem Ipsum, e pi&ugrave; recentemente da software di impaginazione come Aldus PageMaker, che includeva versioni del Lorem Ipsum.</p>\r\n</div>\r\n<div>\r\n<div>\r\n<p>un testo segnaposto utilizzato nel settore della tipografia e della stampa. Lorem Ipsum &egrave; considerato il testo segnaposto standard sin dal sedicesimo secolo, quando un anonimo tipografo prese una cassetta di caratteri e li assembl&ograve; per preparare un testo campione. &Egrave; sopravvissuto non solo a pi&ugrave; di cinque secoli, ma anche al passaggio alla videoimpaginazione, pervenendoci sostanzialmente inalterato. Fu reso popolare, negli anni &rsquo;60, con la diffusione dei fogli di caratteri trasferibili &ldquo;Letraset&rdquo;, che contenevano passaggi del Lorem Ipsum, e pi&ugrave; recentemente da software di impaginazione come Aldus PageMaker, che includeva versioni del Lorem Ipsum.</p>\r\n</div>\r\n<div>&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 2, 1, 1, '2023-01-08 09:02:43', '2023-03-05 01:49:18'),
(20, 1, 'SECTION CONTENT DETAILS', 'section-content-details', 'section-content-details-2023-01-18-63c7a9483df11.png', '<div>\r\n<p>un testo segnaposto utilizzato nel settore della tipografia e della stampa. Lorem Ipsum &egrave; considerato il testo segnaposto standard sin dal sedicesimo secolo, quando un anonimo tipografo prese una cassetta di caratteri e li assembl&ograve; per preparare un testo campione. &Egrave; sopravvissuto non solo a pi&ugrave; di cinque secoli, ma anche al passaggio alla videoimpaginazione, pervenendoci sostanzialmente inalterato. Fu reso popolare, negli anni &rsquo;60, con la diffusione dei fogli di caratteri trasferibili &ldquo;Letraset&rdquo;, che contenevano passaggi del Lorem Ipsum, e pi&ugrave; recentemente da software di impaginazione come Aldus PageMaker, che includeva versioni del Lorem Ipsum.</p>\r\n</div>\r\n<div>\r\n<div>\r\n<p>un testo segnaposto utilizzato nel settore della tipografia e della stampa. Lorem Ipsum &egrave; considerato il testo segnaposto standard sin dal sedicesimo secolo, quando un anonimo tipografo prese una cassetta di caratteri e li assembl&ograve; per preparare un testo campione. &Egrave; sopravvissuto non solo a pi&ugrave; di cinque secoli, ma anche al passaggio alla videoimpaginazione, pervenendoci sostanzialmente inalterato. Fu reso popolare, negli anni &rsquo;60, con la diffusione dei fogli di caratteri trasferibili &ldquo;Letraset&rdquo;, che contenevano passaggi del Lorem Ipsum, e pi&ugrave; recentemente da software di impaginazione come Aldus PageMaker, che includeva versioni del Lorem Ipsum.</p>\r\n</div>\r\n<div>\r\n<div>\r\n<p>un testo segnaposto utilizzato nel settore della tipografia e della stampa. Lorem Ipsum &egrave; considerato il testo segnaposto standard sin dal sedicesimo secolo, quando un anonimo tipografo prese una cassetta di caratteri e li assembl&ograve; per preparare un testo campione. &Egrave; sopravvissuto non solo a pi&ugrave; di cinque secoli, ma anche al passaggio alla videoimpaginazione, pervenendoci sostanzialmente inalterato. Fu reso popolare, negli anni &rsquo;60, con la diffusione dei fogli di caratteri trasferibili &ldquo;Letraset&rdquo;, che contenevano passaggi del Lorem Ipsum, e pi&ugrave; recentemente da software di impaginazione come Aldus PageMaker, che includeva versioni del Lorem Ipsum.</p>\r\n</div>\r\n<div>\r\n<div>\r\n<p>un testo segnaposto utilizzato nel settore della tipografia e della stampa. Lorem Ipsum &egrave; considerato il testo segnaposto standard sin dal sedicesimo secolo, quando un anonimo tipografo prese una cassetta di caratteri e li assembl&ograve; per preparare un testo campione. &Egrave; sopravvissuto non solo a pi&ugrave; di cinque secoli, ma anche al passaggio alla videoimpaginazione, pervenendoci sostanzialmente inalterato. Fu reso popolare, negli anni &rsquo;60, con la diffusione dei fogli di caratteri trasferibili &ldquo;Letraset&rdquo;, che contenevano passaggi del Lorem Ipsum, e pi&ugrave; recentemente da software di impaginazione come Aldus PageMaker, che includeva versioni del Lorem Ipsum.</p>\r\n</div>\r\n<div>\r\n<div>\r\n<p>un testo segnaposto utilizzato nel settore della tipografia e della stampa. Lorem Ipsum &egrave; considerato il testo segnaposto standard sin dal sedicesimo secolo, quando un anonimo tipografo prese una cassetta di caratteri e li assembl&ograve; per preparare un testo campione. &Egrave; sopravvissuto non solo a pi&ugrave; di cinque secoli, ma anche al passaggio alla videoimpaginazione, pervenendoci sostanzialmente inalterato. Fu reso popolare, negli anni &rsquo;60, con la diffusione dei fogli di caratteri trasferibili &ldquo;Letraset&rdquo;, che contenevano passaggi del Lorem Ipsum, e pi&ugrave; recentemente da software di impaginazione come Aldus PageMaker, che includeva versioni del Lorem Ipsum.</p>\r\n</div>\r\n<div>&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 0, 1, 1, '2023-01-08 09:19:37', '2023-01-18 02:09:45'),
(22, 1, 'PENDING POST DETAILS', 'pending-post-details', 'pending-post-details-2023-01-18-63c7a92b92bb8.jpg', '<div>\r\n<p>un testo segnaposto utilizzato nel settore della tipografia e della stampa. Lorem Ipsum &egrave; considerato il testo segnaposto standard sin dal sedicesimo secolo, quando un anonimo tipografo prese una cassetta di caratteri e li assembl&ograve; per preparare un testo campione. &Egrave; sopravvissuto non solo a pi&ugrave; di cinque secoli, ma anche al passaggio alla videoimpaginazione, pervenendoci sostanzialmente inalterato. Fu reso popolare, negli anni &rsquo;60, con la diffusione dei fogli di caratteri trasferibili &ldquo;Letraset&rdquo;, che contenevano passaggi del Lorem Ipsum, e pi&ugrave; recentemente da software di impaginazione come Aldus PageMaker, che includeva versioni del Lorem Ipsum.</p>\r\n</div>\r\n<div>\r\n<div>\r\n<p>un testo segnaposto utilizzato nel settore della tipografia e della stampa. Lorem Ipsum &egrave; considerato il testo segnaposto standard sin dal sedicesimo secolo, quando un anonimo tipografo prese una cassetta di caratteri e li assembl&ograve; per preparare un testo campione. &Egrave; sopravvissuto non solo a pi&ugrave; di cinque secoli, ma anche al passaggio alla videoimpaginazione, pervenendoci sostanzialmente inalterato. Fu reso popolare, negli anni &rsquo;60, con la diffusione dei fogli di caratteri trasferibili &ldquo;Letraset&rdquo;, che contenevano passaggi del Lorem Ipsum, e pi&ugrave; recentemente da software di impaginazione come Aldus PageMaker, che includeva versioni del Lorem Ipsum.</p>\r\n</div>\r\n<div>\r\n<div>\r\n<p>un testo segnaposto utilizzato nel settore della tipografia e della stampa. Lorem Ipsum &egrave; considerato il testo segnaposto standard sin dal sedicesimo secolo, quando un anonimo tipografo prese una cassetta di caratteri e li assembl&ograve; per preparare un testo campione. &Egrave; sopravvissuto non solo a pi&ugrave; di cinque secoli, ma anche al passaggio alla videoimpaginazione, pervenendoci sostanzialmente inalterato. Fu reso popolare, negli anni &rsquo;60, con la diffusione dei fogli di caratteri trasferibili &ldquo;Letraset&rdquo;, che contenevano passaggi del Lorem Ipsum, e pi&ugrave; recentemente da software di impaginazione come Aldus PageMaker, che includeva versioni del Lorem Ipsum.</p>\r\n</div>\r\n<div>\r\n<div>\r\n<p>un testo segnaposto utilizzato nel settore della tipografia e della stampa. Lorem Ipsum &egrave; considerato il testo segnaposto standard sin dal sedicesimo secolo, quando un anonimo tipografo prese una cassetta di caratteri e li assembl&ograve; per preparare un testo campione. &Egrave; sopravvissuto non solo a pi&ugrave; di cinque secoli, ma anche al passaggio alla videoimpaginazione, pervenendoci sostanzialmente inalterato. Fu reso popolare, negli anni &rsquo;60, con la diffusione dei fogli di caratteri trasferibili &ldquo;Letraset&rdquo;, che contenevano passaggi del Lorem Ipsum, e pi&ugrave; recentemente da software di impaginazione come Aldus PageMaker, che includeva versioni del Lorem Ipsum.</p>\r\n</div>\r\n<div>\r\n<div>\r\n<p>un testo segnaposto utilizzato nel settore della tipografia e della stampa. Lorem Ipsum &egrave; considerato il testo segnaposto standard sin dal sedicesimo secolo, quando un anonimo tipografo prese una cassetta di caratteri e li assembl&ograve; per preparare un testo campione. &Egrave; sopravvissuto non solo a pi&ugrave; di cinque secoli, ma anche al passaggio alla videoimpaginazione, pervenendoci sostanzialmente inalterato. Fu reso popolare, negli anni &rsquo;60, con la diffusione dei fogli di caratteri trasferibili &ldquo;Letraset&rdquo;, che contenevano passaggi del Lorem Ipsum, e pi&ugrave; recentemente da software di impaginazione come Aldus PageMaker, che includeva versioni del Lorem Ipsum.</p>\r\n</div>\r\n<div>&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 0, 1, 1, '2023-01-08 09:24:04', '2023-01-18 02:09:16'),
(33, 1, 'PYTHON PROJECT', 'python-project', 'python-project-2023-01-18-63c7a90cc27d5.png', '<div>\r\n<p>un testo segnaposto utilizzato nel settore della tipografia e della stampa. Lorem Ipsum &egrave; considerato il testo segnaposto standard sin dal sedicesimo secolo, quando un anonimo tipografo prese una cassetta di caratteri e li assembl&ograve; per preparare un testo campione. &Egrave; sopravvissuto non solo a pi&ugrave; di cinque secoli, ma anche al passaggio alla videoimpaginazione, pervenendoci sostanzialmente inalterato. Fu reso popolare, negli anni &rsquo;60, con la diffusione dei fogli di caratteri trasferibili &ldquo;Letraset&rdquo;, che contenevano passaggi del Lorem Ipsum, e pi&ugrave; recentemente da software di impaginazione come Aldus PageMaker, che includeva versioni del Lorem Ipsum.</p>\r\n</div>\r\n<div>\r\n<div>\r\n<p>un testo segnaposto utilizzato nel settore della tipografia e della stampa. Lorem Ipsum &egrave; considerato il testo segnaposto standard sin dal sedicesimo secolo, quando un anonimo tipografo prese una cassetta di caratteri e li assembl&ograve; per preparare un testo campione. &Egrave; sopravvissuto non solo a pi&ugrave; di cinque secoli, ma anche al passaggio alla videoimpaginazione, pervenendoci sostanzialmente inalterato. Fu reso popolare, negli anni &rsquo;60, con la diffusione dei fogli di caratteri trasferibili &ldquo;Letraset&rdquo;, che contenevano passaggi del Lorem Ipsum, e pi&ugrave; recentemente da software di impaginazione come Aldus PageMaker, che includeva versioni del Lorem Ipsum.</p>\r\n</div>\r\n<div>\r\n<div>\r\n<p>un testo segnaposto utilizzato nel settore della tipografia e della stampa. Lorem Ipsum &egrave; considerato il testo segnaposto standard sin dal sedicesimo secolo, quando un anonimo tipografo prese una cassetta di caratteri e li assembl&ograve; per preparare un testo campione. &Egrave; sopravvissuto non solo a pi&ugrave; di cinque secoli, ma anche al passaggio alla videoimpaginazione, pervenendoci sostanzialmente inalterato. Fu reso popolare, negli anni &rsquo;60, con la diffusione dei fogli di caratteri trasferibili &ldquo;Letraset&rdquo;, che contenevano passaggi del Lorem Ipsum, e pi&ugrave; recentemente da software di impaginazione come Aldus PageMaker, che includeva versioni del Lorem Ipsum.</p>\r\n</div>\r\n<div>\r\n<div>\r\n<p>un testo segnaposto utilizzato nel settore della tipografia e della stampa. Lorem Ipsum &egrave; considerato il testo segnaposto standard sin dal sedicesimo secolo, quando un anonimo tipografo prese una cassetta di caratteri e li assembl&ograve; per preparare un testo campione. &Egrave; sopravvissuto non solo a pi&ugrave; di cinque secoli, ma anche al passaggio alla videoimpaginazione, pervenendoci sostanzialmente inalterato. Fu reso popolare, negli anni &rsquo;60, con la diffusione dei fogli di caratteri trasferibili &ldquo;Letraset&rdquo;, che contenevano passaggi del Lorem Ipsum, e pi&ugrave; recentemente da software di impaginazione come Aldus PageMaker, che includeva versioni del Lorem Ipsum.</p>\r\n</div>\r\n<div>\r\n<div>\r\n<p>un testo segnaposto utilizzato nel settore della tipografia e della stampa. Lorem Ipsum &egrave; considerato il testo segnaposto standard sin dal sedicesimo secolo, quando un anonimo tipografo prese una cassetta di caratteri e li assembl&ograve; per preparare un testo campione. &Egrave; sopravvissuto non solo a pi&ugrave; di cinque secoli, ma anche al passaggio alla videoimpaginazione, pervenendoci sostanzialmente inalterato. Fu reso popolare, negli anni &rsquo;60, con la diffusione dei fogli di caratteri trasferibili &ldquo;Letraset&rdquo;, che contenevano passaggi del Lorem Ipsum, e pi&ugrave; recentemente da software di impaginazione come Aldus PageMaker, che includeva versioni del Lorem Ipsum.</p>\r\n</div>\r\n<div>&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 2, 1, 1, '2023-01-09 06:55:56', '2023-03-05 01:48:25'),
(38, 1, 'LEARN LARAVEL WITH VIEW', 'learn-laravel-with-view', 'learn-laravel-with-view-2023-01-18-63c7a8f1988fe.jpg', '<div>\r\n<p>un testo segnaposto utilizzato nel settore della tipografia e della stampa. Lorem Ipsum &egrave; considerato il testo segnaposto standard sin dal sedicesimo secolo, quando un anonimo tipografo prese una cassetta di caratteri e li assembl&ograve; per preparare un testo campione. &Egrave; sopravvissuto non solo a pi&ugrave; di cinque secoli, ma anche al passaggio alla videoimpaginazione, pervenendoci sostanzialmente inalterato. Fu reso popolare, negli anni &rsquo;60, con la diffusione dei fogli di caratteri trasferibili &ldquo;Letraset&rdquo;, che contenevano passaggi del Lorem Ipsum, e pi&ugrave; recentemente da software di impaginazione come Aldus PageMaker, che includeva versioni del Lorem Ipsum.</p>\r\n</div>\r\n<div>&nbsp;</div>\r\n<div>&nbsp;</div>\r\n<div>\r\n<div>\r\n<p>un testo segnaposto utilizzato nel settore della tipografia e della stampa. Lorem Ipsum &egrave; considerato il testo segnaposto standard sin dal sedicesimo secolo, quando un anonimo tipografo prese una cassetta di caratteri e li assembl&ograve; per preparare un testo campione. &Egrave; sopravvissuto non solo a pi&ugrave; di cinque secoli, ma anche al passaggio alla videoimpaginazione, pervenendoci sostanzialmente inalterato. Fu reso popolare, negli anni &rsquo;60, con la diffusione dei fogli di caratteri trasferibili &ldquo;Letraset&rdquo;, che contenevano passaggi del Lorem Ipsum, e pi&ugrave; recentemente da software di impaginazione come Aldus PageMaker, che includeva versioni del Lorem Ipsum.</p>\r\n</div>\r\n<div>&nbsp;</div>\r\n<div>&nbsp;</div>\r\n<div>&nbsp;</div>\r\n<div>\r\n<div>\r\n<p>un testo segnaposto utilizzato nel settore della tipografia e della stampa. Lorem Ipsum &egrave; considerato il testo segnaposto standard sin dal sedicesimo secolo, quando un anonimo tipografo prese una cassetta di caratteri e li assembl&ograve; per preparare un testo campione. &Egrave; sopravvissuto non solo a pi&ugrave; di cinque secoli, ma anche al passaggio alla videoimpaginazione, pervenendoci sostanzialmente inalterato. Fu reso popolare, negli anni &rsquo;60, con la diffusione dei fogli di caratteri trasferibili &ldquo;Letraset&rdquo;, che contenevano passaggi del Lorem Ipsum, e pi&ugrave; recentemente da software di impaginazione come Aldus PageMaker, che includeva versioni del Lorem Ipsum.</p>\r\n</div>\r\n<div>&nbsp;</div>\r\n<div>&nbsp;</div>\r\n<div>\r\n<div>\r\n<p>un testo segnaposto utilizzato nel settore della tipografia e della stampa. Lorem Ipsum &egrave; considerato il testo segnaposto standard sin dal sedicesimo secolo, quando un anonimo tipografo prese una cassetta di caratteri e li assembl&ograve; per preparare un testo campione. &Egrave; sopravvissuto non solo a pi&ugrave; di cinque secoli, ma anche al passaggio alla videoimpaginazione, pervenendoci sostanzialmente inalterato. Fu reso popolare, negli anni &rsquo;60, con la diffusione dei fogli di caratteri trasferibili &ldquo;Letraset&rdquo;, che contenevano passaggi del Lorem Ipsum, e pi&ugrave; recentemente da software di impaginazione come Aldus PageMaker, che includeva versioni del Lorem Ipsum.</p>\r\n</div>\r\n<div>&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>', 1, 1, 1, '2023-01-09 07:24:31', '2023-01-18 02:08:18'),
(39, 1, 'WEB DEVELOPMENT', 'web-development', 'web-development-2023-01-18-63c7a8ce2e89b.png', '<div>\r\n<p>un testo segnaposto utilizzato nel settore della tipografia e della stampa. Lorem Ipsum &egrave; considerato il testo segnaposto standard sin dal sedicesimo secolo, quando un anonimo tipografo prese una cassetta di caratteri e li assembl&ograve; per preparare un testo campione. &Egrave; sopravvissuto non solo a pi&ugrave; di cinque secoli, ma anche al passaggio alla videoimpaginazione, pervenendoci sostanzialmente inalterato. Fu reso popolare, negli anni &rsquo;60, con la diffusione dei fogli di caratteri trasferibili &ldquo;Letraset&rdquo;, che contenevano passaggi del Lorem Ipsum, e pi&ugrave; recentemente da software di impaginazione come Aldus PageMaker, che includeva versioni del Lorem Ipsum.</p>\r\n</div>\r\n<div>&nbsp;</div>\r\n<div>&nbsp;</div>\r\n<div>\r\n<div>\r\n<p>un testo segnaposto utilizzato nel settore della tipografia e della stampa. Lorem Ipsum &egrave; considerato il testo segnaposto standard sin dal sedicesimo secolo, quando un anonimo tipografo prese una cassetta di caratteri e li assembl&ograve; per preparare un testo campione. &Egrave; sopravvissuto non solo a pi&ugrave; di cinque secoli, ma anche al passaggio alla videoimpaginazione, pervenendoci sostanzialmente inalterato. Fu reso popolare, negli anni &rsquo;60, con la diffusione dei fogli di caratteri trasferibili &ldquo;Letraset&rdquo;, che contenevano passaggi del Lorem Ipsum, e pi&ugrave; recentemente da software di impaginazione come Aldus PageMaker, che includeva versioni del Lorem Ipsum.</p>\r\n</div>\r\n<div>&nbsp;</div>\r\n<div>&nbsp;</div>\r\n<div>\r\n<div>\r\n<p>un testo segnaposto utilizzato nel settore della tipografia e della stampa. Lorem Ipsum &egrave; considerato il testo segnaposto standard sin dal sedicesimo secolo, quando un anonimo tipografo prese una cassetta di caratteri e li assembl&ograve; per preparare un testo campione. &Egrave; sopravvissuto non solo a pi&ugrave; di cinque secoli, ma anche al passaggio alla videoimpaginazione, pervenendoci sostanzialmente inalterato. Fu reso popolare, negli anni &rsquo;60, con la diffusione dei fogli di caratteri trasferibili &ldquo;Letraset&rdquo;, che contenevano passaggi del Lorem Ipsum, e pi&ugrave; recentemente da software di impaginazione come Aldus PageMaker, che includeva versioni del Lorem Ipsum.</p>\r\n</div>\r\n<div>&nbsp;</div>\r\n<div>&nbsp;</div>\r\n<div>\r\n<div>\r\n<p>un testo segnaposto utilizzato nel settore della tipografia e della stampa. Lorem Ipsum &egrave; considerato il testo segnaposto standard sin dal sedicesimo secolo, quando un anonimo tipografo prese una cassetta di caratteri e li assembl&ograve; per preparare un testo campione. &Egrave; sopravvissuto non solo a pi&ugrave; di cinque secoli, ma anche al passaggio alla videoimpaginazione, pervenendoci sostanzialmente inalterato. Fu reso popolare, negli anni &rsquo;60, con la diffusione dei fogli di caratteri trasferibili &ldquo;Letraset&rdquo;, che contenevano passaggi del Lorem Ipsum, e pi&ugrave; recentemente da software di impaginazione come Aldus PageMaker, che includeva versioni del Lorem Ipsum.</p>\r\n</div>\r\n<div>&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>', 6, 1, 1, '2023-01-09 07:47:22', '2023-01-18 02:07:42'),
(40, 1, 'Lorem Ipsum', 'lorem-ipsum', 'lorem-ipsum-2023-01-18-63c7a85425292.png', '<p>Lorem Ipsum</p>\r\n<p>&nbsp;</p>\r\n<div>\r\n<p>un testo segnaposto utilizzato nel settore della tipografia e della stampa. Lorem Ipsum &egrave; considerato il testo segnaposto standard sin dal sedicesimo secolo, quando un anonimo tipografo prese una cassetta di caratteri e li assembl&ograve; per preparare un testo campione. &Egrave; sopravvissuto non solo a pi&ugrave; di cinque secoli, ma anche al passaggio alla videoimpaginazione, pervenendoci sostanzialmente inalterato. Fu reso popolare, negli anni &rsquo;60, con la diffusione dei fogli di caratteri trasferibili &ldquo;Letraset&rdquo;, che contenevano passaggi del Lorem Ipsum, e pi&ugrave; recentemente da software di impaginazione come Aldus PageMaker, che includeva versioni del Lorem Ipsum.</p>\r\n</div>\r\n<div>\r\n<div>\r\n<p>un testo segnaposto utilizzato nel settore della tipografia e della stampa. Lorem Ipsum &egrave; considerato il testo segnaposto standard sin dal sedicesimo secolo, quando un anonimo tipografo prese una cassetta di caratteri e li assembl&ograve; per preparare un testo campione. &Egrave; sopravvissuto non solo a pi&ugrave; di cinque secoli, ma anche al passaggio alla videoimpaginazione, pervenendoci sostanzialmente inalterato. Fu reso popolare, negli anni &rsquo;60, con la diffusione dei fogli di caratteri trasferibili &ldquo;Letraset&rdquo;, che contenevano passaggi del Lorem Ipsum, e pi&ugrave; recentemente da software di impaginazione come Aldus PageMaker, che includeva versioni del Lorem Ipsum.</p>\r\n</div>\r\n<div>\r\n<div>\r\n<p>un testo segnaposto utilizzato nel settore della tipografia e della stampa. Lorem Ipsum &egrave; considerato il testo segnaposto standard sin dal sedicesimo secolo, quando un anonimo tipografo prese una cassetta di caratteri e li assembl&ograve; per preparare un testo campione. &Egrave; sopravvissuto non solo a pi&ugrave; di cinque secoli, ma anche al passaggio alla videoimpaginazione, pervenendoci sostanzialmente inalterato. Fu reso popolare, negli anni &rsquo;60, con la diffusione dei fogli di caratteri trasferibili &ldquo;Letraset&rdquo;, che contenevano passaggi del Lorem Ipsum, e pi&ugrave; recentemente da software di impaginazione come Aldus PageMaker, che includeva versioni del Lorem Ipsum.</p>\r\n</div>\r\n<div>&nbsp;</div>\r\n</div>\r\n</div>', 1, 1, 1, '2023-01-09 07:48:15', '2023-01-18 02:06:22'),
(41, 2, 'AUTHOR NEW POST', 'author-new-post', 'author-new-post-2023-01-18-63c7ab19a98c2.jpg', '<div>\r\n<p>un testo segnaposto utilizzato nel settore della tipografia e della stampa. Lorem Ipsum &egrave; considerato il testo segnaposto standard sin dal sedicesimo secolo, quando un anonimo tipografo prese una cassetta di caratteri e li assembl&ograve; per preparare un testo campione. &Egrave; sopravvissuto non solo a pi&ugrave; di cinque secoli, ma anche al passaggio alla videoimpaginazione, pervenendoci sostanzialmente inalterato. Fu reso popolare, negli anni &rsquo;60, con la diffusione dei fogli di caratteri trasferibili &ldquo;Letraset&rdquo;, che contenevano passaggi del Lorem Ipsum, e pi&ugrave; recentemente da software di impaginazione come Aldus PageMaker, che includeva versioni del Lorem Ipsum.</p>\r\n</div>\r\n<div>\r\n<div>\r\n<p>un testo segnaposto utilizzato nel settore della tipografia e della stampa. Lorem Ipsum &egrave; considerato il testo segnaposto standard sin dal sedicesimo secolo, quando un anonimo tipografo prese una cassetta di caratteri e li assembl&ograve; per preparare un testo campione. &Egrave; sopravvissuto non solo a pi&ugrave; di cinque secoli, ma anche al passaggio alla videoimpaginazione, pervenendoci sostanzialmente inalterato. Fu reso popolare, negli anni &rsquo;60, con la diffusione dei fogli di caratteri trasferibili &ldquo;Letraset&rdquo;, che contenevano passaggi del Lorem Ipsum, e pi&ugrave; recentemente da software di impaginazione come Aldus PageMaker, che includeva versioni del Lorem Ipsum.</p>\r\n</div>\r\n<div>\r\n<div>\r\n<p>un testo segnaposto utilizzato nel settore della tipografia e della stampa. Lorem Ipsum &egrave; considerato il testo segnaposto standard sin dal sedicesimo secolo, quando un anonimo tipografo prese una cassetta di caratteri e li assembl&ograve; per preparare un testo campione. &Egrave; sopravvissuto non solo a pi&ugrave; di cinque secoli, ma anche al passaggio alla videoimpaginazione, pervenendoci sostanzialmente inalterato. Fu reso popolare, negli anni &rsquo;60, con la diffusione dei fogli di caratteri trasferibili &ldquo;Letraset&rdquo;, che contenevano passaggi del Lorem Ipsum, e pi&ugrave; recentemente da software di impaginazione come Aldus PageMaker, che includeva versioni del Lorem Ipsum.</p>\r\n</div>\r\n<div>&nbsp;</div>\r\n</div>\r\n</div>', 2, 1, 1, '2023-01-18 02:17:30', '2023-01-21 06:06:10');

-- --------------------------------------------------------

--
-- Table structure for table `post_tag`
--

CREATE TABLE `post_tag` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tag`
--

INSERT INTO `post_tag` (`id`, `post_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(15, 11, 6, '2023-01-07 10:28:26', '2023-01-07 10:28:26'),
(19, 18, 3, '2023-01-08 09:02:43', '2023-01-08 09:02:43'),
(21, 20, 3, '2023-01-08 09:19:37', '2023-01-08 09:19:37'),
(22, 22, 3, '2023-01-08 09:24:04', '2023-01-08 09:24:04'),
(23, 22, 6, '2023-01-08 09:24:04', '2023-01-08 09:24:04'),
(30, 33, 5, '2023-01-09 06:55:56', '2023-01-09 06:55:56'),
(31, 33, 6, '2023-01-09 06:55:56', '2023-01-09 06:55:56'),
(37, 38, 3, '2023-01-09 07:24:31', '2023-01-09 07:24:31'),
(38, 38, 5, '2023-01-09 07:24:31', '2023-01-09 07:24:31'),
(39, 38, 6, '2023-01-09 07:24:31', '2023-01-09 07:24:31'),
(40, 39, 5, '2023-01-09 07:47:22', '2023-01-09 07:47:22'),
(41, 39, 6, '2023-01-09 07:47:22', '2023-01-09 07:47:22'),
(42, 40, 3, '2023-01-09 07:48:15', '2023-01-09 07:48:15'),
(43, 41, 2, '2023-01-18 02:17:30', '2023-01-18 02:17:30');

-- --------------------------------------------------------

--
-- Table structure for table `post_user`
--

CREATE TABLE `post_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_user`
--

INSERT INTO `post_user` (`id`, `post_id`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 40, 1, '2023-01-10 10:58:54', '2023-01-10 10:58:54'),
(3, 39, 1, '2023-01-10 11:07:05', '2023-01-10 11:07:05'),
(8, 11, 1, '2023-01-18 02:13:21', '2023-01-18 02:13:21');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', NULL, NULL),
(2, 'Author', 'author', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `created_at`, `updated_at`) VALUES
(2, 'tamimshahriar85@gmail.com', '2023-01-08 08:04:42', '2023-01-08 08:04:42');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'COMPUTER', 'computer', '2022-12-18 04:53:09', '2023-01-18 02:04:49'),
(2, 'COOL', 'cool', '2022-12-18 04:54:07', '2023-01-18 02:04:33'),
(3, 'NEWS', 'news', '2022-12-18 05:24:43', '2023-01-18 02:04:26'),
(5, 'UNIT', 'unit', '2023-01-07 03:11:57', '2023-01-18 02:04:20'),
(6, 'AWESOME', 'awesome', '2023-01-07 03:12:06', '2023-01-18 02:04:10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(11) NOT NULL DEFAULT 2,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `about` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `username`, `email`, `password`, `image`, `about`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'MD.Tamim', 'admin', 'admin2@gmail.com', '$2y$10$dJjQg8zokUyu1f2.B2FiQ.QbtJGVCQCjfXuM3DGvtJBvefK4Yh4yi', 'mdtamim-2023-01-18-63c7aac39566d.jpeg', 'This is Tamim', 'O4tOjUwii1GI1U7gqTVu5MbO3872iy8a2Av0dFhbZSmTQYpBI5vpFEbOhN7u', NULL, '2023-01-18 02:16:03'),
(2, 2, 'MD.Author2', 'author', 'author@gmail.com', '$2y$10$YRJV0l2xnaU2c5I56RPFXupufbf8f5xVQqgPNYiznJp6ln74dk34e', 'mdauthor2-2023-01-10-63bd7e3a8048d.jpg', 'erewr', 'F4kRHodlDKl26XfKxiitKbSKxVk6xtBUlLsrAGgNwxaOk06fdGcUeBgvUWal', NULL, '2023-01-10 09:03:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_post`
--
ALTER TABLE `category_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_post_id_foreign` (`post_id`),
  ADD KEY `comments_user_id_foreign` (`user_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_reserved_at_index` (`queue`,`reserved_at`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_user`
--
ALTER TABLE `post_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_user_post_id_foreign` (`post_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `category_post`
--
ALTER TABLE `category_post`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `post_user`
--
ALTER TABLE `post_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post_user`
--
ALTER TABLE `post_user`
  ADD CONSTRAINT `post_user_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
