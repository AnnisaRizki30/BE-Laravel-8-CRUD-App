-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 23, 2021 at 07:36 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fullstack_annisa`
--

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_09_23_043822_create_posts_table', 1);

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
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `desc`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 12, 'What is Lorem Ipsum?', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2021-09-22 21:59:43', '2021-09-22 21:59:43', NULL),
(2, 12, 'Where can I get some?', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.', '2021-09-22 22:00:46', '2021-09-22 22:00:46', NULL),
(3, 13, 'Where does it come from?', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.', '2021-09-22 22:02:20', '2021-09-22 22:02:20', NULL),
(4, 13, 'Lorem ipsum began as scrambled, nonsensical Latin derived from Cicero\'s 1st-century BC text De Finibus Bonorum et Malorum.', 'Until recently, the prevailing view assumed lorem ipsum was born as a nonsense text. “It\'s not Latin, though it looks like it, and it actually says nothing,” Before & After magazine answered a curious reader, “Its ‘words’ loosely approximate the frequency with which letters occur in English, which is why at a glance it looks pretty real.”', '2021-09-22 22:03:36', '2021-09-22 22:03:36', NULL),
(5, 11, 'Lorem ipsum was popularized in the 1960s with Letraset\'s dry-transfer sheets, and later entered the digital world via Aldus PageMaker.', 'The decade that brought us Star Trek and Doctor Who also resurrected Cicero—or at least what used to be Cicero—in an attempt to make the days before computerized design a little less painstaking. The French lettering company Letraset manufactured a set of dry-transfer sheets which included the lorem ipsum filler text in a variety of fonts, sizes, and layouts. These sheets of lettering could be rubbed on anywhere and were quickly adopted by graphic artists, printers, architects, and advertisers for their professional look and ease of use.', '2021-09-22 22:34:49', '2021-09-22 22:34:49', NULL),
(6, 11, 'Some claim lorem ipsum threatens to promote design over content, while others defend its value in the process of planning.', 'Among design professionals, there\'s a bit of controversy surrounding the filler text. Controversy, as in Death to Lorem Ipsum. Strength of lorem ipsum is its weakness: it doesn\'t communicate. To some, designing a website around placeholder text is unacceptable, akin to sewing a custom suit without taking measurements.', '2021-09-22 22:35:41', '2021-09-22 22:35:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Kariane Bogisich', 'xbreitenberg@example.com', '2021-09-22 21:50:17', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'FFg4GNWUTN', '2021-09-22 21:50:17', '2021-09-22 21:50:17'),
(2, 'Prof. Wilhelm DuBuque', 'herminio51@example.org', '2021-09-22 21:50:17', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'j3SLSdbJOM', '2021-09-22 21:50:17', '2021-09-22 21:50:17'),
(3, 'Prof. Kathryn Monahan I', 'emmett.armstrong@example.com', '2021-09-22 21:50:17', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'tucUluNxu5', '2021-09-22 21:50:17', '2021-09-22 21:50:17'),
(4, 'Breanne Treutel', 'jaida.klocko@example.com', '2021-09-22 21:50:17', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'XJtdLQw2kq', '2021-09-22 21:50:17', '2021-09-22 21:50:17'),
(5, 'Rubie McLaughlin', 'presley67@example.org', '2021-09-22 21:50:17', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '29hHwCaDEo', '2021-09-22 21:50:17', '2021-09-22 21:50:17'),
(6, 'Kurt Champlin', 'smitham.jayde@example.com', '2021-09-22 21:50:17', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'VEzZcmALTQ', '2021-09-22 21:50:17', '2021-09-22 21:50:17'),
(7, 'Kellen Kunde', 'dean82@example.org', '2021-09-22 21:50:17', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'VfYkvOYce0', '2021-09-22 21:50:17', '2021-09-22 21:50:17'),
(8, 'Antonina Barton', 'carson.satterfield@example.com', '2021-09-22 21:50:17', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6Z3Dn3ptyb', '2021-09-22 21:50:17', '2021-09-22 21:50:17'),
(9, 'Dino Harris', 'gunnar05@example.com', '2021-09-22 21:50:17', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'OaRKLFqcWl', '2021-09-22 21:50:17', '2021-09-22 21:50:17'),
(10, 'Jackeline Ernser', 'ngrant@example.org', '2021-09-22 21:50:17', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'FCYXxMKE8o', '2021-09-22 21:50:17', '2021-09-22 21:50:17'),
(11, 'Administrator', 'admin@gmail.com', NULL, '$2y$10$3Ca7nqZQSk2/bUUM8FYI6e1neyW7IQtHL93.vGXYuA8cHSSF/Iqwe', NULL, NULL, NULL),
(12, 'Annisa Lianda', 'annisalianda@gmail.com', NULL, '$2y$10$dV72qzN1jG/8jMgQ3pN0d.xPw6fWJKgiIMLfhrzcrohAIoYHeqFPG', NULL, NULL, NULL),
(13, 'Dennis Candra', 'denniscandraw@gmail.com', NULL, '$2y$10$aMhLCtm2DWXEtEBR4wF12ObLwy6jGwBA/S1DIy0t5QMXQwR.8fQgy', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
