-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 31, 2023 at 03:36 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projekrpl`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_12_11_125355_create_motors_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `motors`
--

CREATE TABLE `motors` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `tahun_produksi` int(255) NOT NULL,
  `price` int(255) NOT NULL,
  `CC_Motor` varchar(255) NOT NULL,
  `Torsi` varchar(255) NOT NULL,
  `Tipe_Mesin` varchar(255) NOT NULL,
  `Transmisi` varchar(255) NOT NULL,
  `Kapasitas_Tangki` varchar(255) NOT NULL,
  `Rasio_Kompresi` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `motors`
--

INSERT INTO `motors` (`id`, `name`, `description`, `tahun_produksi`, `price`, `CC_Motor`, `Torsi`, `Tipe_Mesin`, `Transmisi`, `Kapasitas_Tangki`, `Rasio_Kompresi`, `image`, `created_at`, `updated_at`) VALUES
(2, 'Diavel', 'Naked Bike minimalis namun elegan', 2021, 100000000, '1000 CC', '12.8 kgm (126 Nm, 93 lb ft) @ 7,500 rpm', 'V4 Granturismo, V4 - 90°, 4 valves per cylinder, c...', '7 Speed', '16 L', '1:5', 'Diavel.png', NULL, '2023-12-30 08:14:45.000000'),
(7, 'Panigale V4R', 'Motor tercepat dengan suara yang gahar dan desain futuristik yang akan memanjakan mata', 2022, 890000000, '1299 CC', '48.1 lb-ft (65.2 Nm) @ 7,000 rpm', 'L-Twin, Desmodromic distribution, 2 valves per cylinder, air cooled', '6 speed', '13,5 l (3,57 US gal)', '1:11', 'PanigaleV4.png', '2023-12-27 21:29:22.000000', '2023-12-27 22:44:46.000000'),
(9, 'ducati', 'coab', 2222, 12345, '1299 CC', '1', 'L-Twin, Desmodromic distribution, 2 valves per cylinder, air cooled', '6 speed', '15 L', '1:8', 'Diavel.png', '2023-12-28 19:22:20.000000', '2023-12-28 19:22:20.000000'),
(25, 'Coba', 'percobaan', 2022, 1230214, '1000', '123 Nm (90.4 lb-ft) @ 8000 rpm', 'L-Twin, Desmodromic distribution, 2 valves per cylinder, air cooled', '6 speed', '13,5 l (3,57 US gal)', '32n1i', '1704032436.png', '2023-12-31 07:20:37.000000', '2023-12-31 07:20:37.000000');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'user',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'opal', 'opal@gmail.com', NULL, '$2y$12$bN2IlAtJUYw6Emlm7mkUueDWfZ19Jc9SKQS2YNXOJ5NONxNzZSazS', 'user', NULL, '2023-12-18 08:11:50', '2023-12-18 08:11:50'),
(2, 'Fhani', 'fhani@gmail.com', NULL, '$2y$12$HBcn4rOFfbFFuqtN1PmqqOC6xAo.v.WrwMFW1g4/0ByBJ26Lvazdu', 'admin', NULL, '2023-12-18 08:44:18', '2023-12-18 08:44:18'),
(3, 'Ghani', 'ghani@gmail.com', NULL, '$2y$12$z1AnPhZZTFVlAKpSsdR31O8DiU9..Logf6BWoyVv6jlSLXbn9eo0K', 'user', NULL, '2023-12-28 18:49:43', '2023-12-28 18:49:43'),
(4, 'naufal', 'naufal@gmail.com', NULL, '$2y$12$j3qzTADLjHCtUgDasR337uHxXjqS.jy.WKLYckdvIDUkp3oCTvqIy', 'user', NULL, '2023-12-28 21:22:36', '2023-12-28 21:22:36');

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
-- Indexes for table `motors`
--
ALTER TABLE `motors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `motors`
--
ALTER TABLE `motors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
