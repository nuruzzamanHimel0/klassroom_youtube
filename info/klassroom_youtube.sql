-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 19, 2021 at 04:05 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `klassroom_youtube`
--

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
(3, '2021_09_18_161606_add_last_login_column_to_users_table', 2);

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `last_login`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Nuruzzaman Himel', 'nuruzzaman.himel147@gmail.com', NULL, '2021-09-18 18:00:00', '$2y$10$yTywqaCjVK1YkUOoSJCp8./oSKpETi7KyBQp6Dlx982/nVjB64OCy', 'FbD0HPwygKegeBUADm0WBjgXXX0vKkA9NaZZDd02jhK3zPOVQCNTO5s58E1K', '2021-09-18 10:09:47', '2021-09-19 09:00:00'),
(2, 'Angeline Schulist', 'kirstin.howell@example.org', '2021-09-18 10:11:14', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'GGap3lJRX3', '2021-09-18 10:11:14', '2021-09-18 10:11:14'),
(3, 'Verna Lockman', 'gonzalo78@example.com', '2021-09-18 10:11:14', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '8IflzZgmpr', '2021-09-18 10:11:14', '2021-09-18 10:11:14'),
(4, 'Stefanie Carter', 'fconn@example.com', '2021-09-18 10:11:14', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'eLTzasbK2e', '2021-09-18 10:11:14', '2021-09-18 10:11:14'),
(5, 'Miss Helen Huels IV', 'jsauer@example.com', '2021-09-18 10:11:14', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'KIWAWoKWyU', '2021-09-18 10:11:15', '2021-09-18 10:11:15'),
(6, 'Kyle McClure', 'schulist.karson@example.org', '2021-09-18 10:11:14', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '47MBWf8mbf', '2021-09-18 10:11:15', '2021-09-18 10:11:15'),
(7, 'Melany Kerluke', 'jamie.gulgowski@example.net', '2021-09-18 10:11:14', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bhAOirIR5B', '2021-09-18 10:11:15', '2021-09-18 10:11:15'),
(8, 'Drake Blick', 'keyshawn33@example.org', '2021-09-18 10:11:14', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ARauNuUen9', '2021-09-18 10:11:15', '2021-09-18 10:11:15'),
(9, 'Erich Lowe', 'scasper@example.net', '2021-09-18 10:11:14', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'YkctjMS1VF', '2021-09-18 10:11:15', '2021-09-18 10:11:15'),
(10, 'Mrs. Anjali DuBuque Jr.', 'camron60@example.com', '2021-09-18 10:11:14', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'mTPUjdo914', '2021-09-18 10:11:15', '2021-09-18 10:11:15'),
(11, 'Kristina Abshire', 'qgaylord@example.net', '2021-09-18 10:11:14', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'eikibCo1P2', '2021-09-18 10:11:15', '2021-09-18 10:11:15'),
(12, 'Mr. Guido Hand', 'ilesch@example.com', '2021-09-18 10:11:14', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'UpFADTmcw3', '2021-09-18 10:11:15', '2021-09-18 10:11:15'),
(13, 'Mr. Jettie Wilkinson Sr.', 'adeline15@example.org', '2021-09-18 10:11:14', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2ApdXRcL3d', '2021-09-18 10:11:15', '2021-09-18 10:11:15'),
(14, 'Dr. Raven Reinger IV', 'ularkin@example.com', '2021-09-18 10:11:14', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Am2y1gWEnv', '2021-09-18 10:11:15', '2021-09-18 10:11:15'),
(15, 'Karli Price', 'bernhard.arnold@example.net', '2021-09-18 10:11:14', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'X2odABDmPW', '2021-09-18 10:11:15', '2021-09-18 10:11:15'),
(16, 'Kayleigh Kub', 'lily43@example.com', '2021-09-18 10:11:14', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'kA1iuFdF0U', '2021-09-18 10:11:15', '2021-09-18 10:11:15'),
(17, 'Jarred Larkin', 'huel.kenneth@example.net', '2021-09-18 10:11:14', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BaG0UU184I', '2021-09-18 10:11:15', '2021-09-18 10:11:15'),
(18, 'Prof. Elenora Ondricka PhD', 'weissnat.jesus@example.net', '2021-09-18 10:11:14', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'z4nTBl7dPY', '2021-09-18 10:11:15', '2021-09-18 10:11:15'),
(19, 'Prof. Fredrick Tromp', 'carley.hilpert@example.org', '2021-09-18 10:11:14', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'YDqxdPeorb', '2021-09-18 10:11:15', '2021-09-18 10:11:15'),
(20, 'Franco Gorczany', 'ole.weissnat@example.com', '2021-09-18 10:11:14', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'O9Tu14A67b', '2021-09-18 10:11:15', '2021-09-18 10:11:15'),
(21, 'Prof. Eloise Botsford III', 'chasity.legros@example.com', '2021-09-18 10:11:14', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fFHkzHOfSk', '2021-09-18 10:11:15', '2021-09-18 10:11:15');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
