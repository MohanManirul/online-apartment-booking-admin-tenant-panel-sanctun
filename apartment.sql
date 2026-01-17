-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 17, 2026 at 06:11 PM
-- Server version: 8.0.30
-- PHP Version: 8.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apartment`
--

-- --------------------------------------------------------

--
-- Table structure for table `apartments`
--

CREATE TABLE `apartments` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rent` decimal(10,2) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `descriptions` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `apartments`
--

INSERT INTO `apartments` (`id`, `name`, `rent`, `image`, `status`, `descriptions`, `created_at`, `updated_at`) VALUES
(1, 'Test', 2500.00, 'apartment/Nb9T5jfnAAZB6fN0Xqn1wOZcU98ffz17ZhlnQJCA.png', 1, 'Descriptions', '2026-01-16 10:32:55', '2026-01-17 12:03:07'),
(3, 'Lake View', 6300.00, 'apartment/TqvulkVGlk4G5QoFtZyBvg2il7aaSHdCnDSxUSsd.jpg', 1, 'hello', '2026-01-17 07:47:53', '2026-01-17 07:48:30');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` bigint UNSIGNED NOT NULL,
  `apartment_id` bigint UNSIGNED NOT NULL,
  `tenant_id` bigint UNSIGNED NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `apartment_id`, `tenant_id`, `start_date`, `end_date`, `created_at`, `updated_at`) VALUES
(9, 1, 1, '2026-01-19', '2026-01-21', '2026-01-17 12:03:07', '2026-01-17 12:03:07');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_12_23_160145_create_apartments_table', 1),
(5, '2025_12_23_160200_create_tenants_table', 1),
(6, '2025_12_23_160212_create_bookings_table', 1),
(7, '2025_12_23_161820_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(3, 'App\\Models\\User', 1, 'auth_token', '41375a5637f62154e2776d8e6986d70b75a19ff4e0ef93601bff0e82d6406c23', '[\"*\"]', '2026-01-16 11:15:07', NULL, '2026-01-16 11:15:05', '2026-01-16 11:15:07'),
(4, 'App\\Models\\User', 1, 'auth_token', '6bd02db918beb50c5bedcaa51c4b534cd7cd6cd1566c045d43d8a7ed20a68251', '[\"*\"]', '2026-01-17 02:14:07', NULL, '2026-01-17 02:01:52', '2026-01-17 02:14:07'),
(5, 'App\\Models\\User', 1, 'auth_token', 'ab4d1abd920ddd52c860d70850a6ae13b937faf8900aa879d5fd82e741b71631', '[\"*\"]', '2026-01-17 02:14:38', NULL, '2026-01-17 02:14:29', '2026-01-17 02:14:38'),
(6, 'App\\Models\\User', 1, 'auth_token', '207f418a708a4d6885f0ac3df4377e2b8c322b05fd14df5aaedbbfb38ae4ac9a', '[\"*\"]', '2026-01-17 02:18:47', NULL, '2026-01-17 02:16:41', '2026-01-17 02:18:47'),
(8, 'App\\Models\\Tenant', 1, 'auth_token', '228b8a1ccf63cbbc0d90faba5f8eac41fa7df876d4d0c852c951caf6d87a4f26', '[\"*\"]', NULL, NULL, '2026-01-17 03:09:18', '2026-01-17 03:09:18'),
(9, 'App\\Models\\Tenant', 1, 'auth_token', '77d6c6c37cab87441bde4ec9c53e4f02fe3b09085bf66651b2df20e075d064bf', '[\"*\"]', NULL, NULL, '2026-01-17 03:09:52', '2026-01-17 03:09:52'),
(10, 'App\\Models\\Tenant', 1, 'auth_token', 'a5ec88577d61acfbb2e1910378fdd2d7ddb5814c8affcdf6cf2312e237f4f6f6', '[\"*\"]', NULL, NULL, '2026-01-17 03:10:16', '2026-01-17 03:10:16'),
(11, 'App\\Models\\Tenant', 1, 'auth_token', '9f59f487a6936fde03db48e3b5da4db74e5e2cee5c450d2d8053d09fd31a23fa', '[\"*\"]', NULL, NULL, '2026-01-17 03:10:36', '2026-01-17 03:10:36'),
(12, 'App\\Models\\Tenant', 1, 'auth_token', '051aa4527027117bf8a37b63c14773a084a3a626220a5e03d59a3a99af7f041d', '[\"*\"]', NULL, NULL, '2026-01-17 03:11:38', '2026-01-17 03:11:38'),
(13, 'App\\Models\\Tenant', 1, 'auth_token', 'cb2f3377ce8c3871fbb1a8c51e5ce4957a4ad854a20ae95bb806ea2235efcf8c', '[\"*\"]', NULL, NULL, '2026-01-17 03:11:45', '2026-01-17 03:11:45'),
(14, 'App\\Models\\Tenant', 1, 'auth_token', '21d28902f0eb09d05291060939c277f28c47a48cff3718e11af4d123a6c3750d', '[\"*\"]', NULL, NULL, '2026-01-17 03:11:54', '2026-01-17 03:11:54'),
(15, 'App\\Models\\Tenant', 1, 'auth_token', '50c3c0a7c0640decea29bd06097f12d7248214e2ca5e7aa848f313b6d3210932', '[\"*\"]', NULL, NULL, '2026-01-17 03:12:33', '2026-01-17 03:12:33'),
(16, 'App\\Models\\Tenant', 1, 'auth_token', '576eea96a6ca6ccfdfc4600fd0e2604b7f05f7517727ec681125c937992215b6', '[\"*\"]', NULL, NULL, '2026-01-17 03:13:06', '2026-01-17 03:13:06'),
(20, 'App\\Models\\Tenant', 1, 'auth_token', '97d5b6fab0e7f47f7ff5dbaa51455f6f5c51809d9a5e8164866c918863b57c60', '[\"*\"]', '2026-01-17 03:25:52', NULL, '2026-01-17 03:23:18', '2026-01-17 03:25:52'),
(23, 'App\\Models\\User', 1, 'auth_token', '433477c1e6e6bff67cf2829e8fcea3429aaa8646b1b88148e44f770f9c2448ec', '[\"*\"]', '2026-01-17 07:45:14', NULL, '2026-01-17 07:45:13', '2026-01-17 07:45:14'),
(27, 'App\\Models\\User', 1, 'auth_token', '17050b5dd6bab7083193cb266659f14fec35cfca2322a9bc6e8e793701b8f93c', '[\"*\"]', '2026-01-17 08:58:59', NULL, '2026-01-17 08:26:25', '2026-01-17 08:58:59'),
(29, 'App\\Models\\Tenant', 1, 'auth_token', '740b25feace60705a49d272bb52ab7bac4bb096d90dae60ed47a171a0f30992c', '[\"*\"]', NULL, NULL, '2026-01-17 10:48:16', '2026-01-17 10:48:16'),
(30, 'App\\Models\\Tenant', 1, 'auth_token', '330df7aefaaca117551c1a7de5b8fc6540a2be87233b6722e37c05b2f22b6828', '[\"*\"]', NULL, NULL, '2026-01-17 10:53:43', '2026-01-17 10:53:43'),
(31, 'App\\Models\\Tenant', 1, 'auth_token', '0396565ef1e511a254403b1a42eee2e43f13777dfc849122350db9f830cc56b4', '[\"*\"]', NULL, NULL, '2026-01-17 10:54:13', '2026-01-17 10:54:13'),
(32, 'App\\Models\\Tenant', 1, 'auth_token', '57951ce97afac21631be227fb7fe015959c31c76a3dda3fcc2b0ef87b239083d', '[\"*\"]', NULL, NULL, '2026-01-17 10:55:42', '2026-01-17 10:55:42'),
(33, 'App\\Models\\Tenant', 1, 'auth_token', 'c3ed536c3342e3a255f4eae5efc011e85cbe89c93759bc26772dc70a7ac7a414', '[\"*\"]', NULL, NULL, '2026-01-17 11:01:57', '2026-01-17 11:01:57'),
(34, 'App\\Models\\Tenant', 1, 'auth_token', 'f76526b2a65ab4d4b4fff594883cb8978f26efb5e1ad49d4047b390056ac4a12', '[\"*\"]', NULL, NULL, '2026-01-17 11:05:47', '2026-01-17 11:05:47'),
(35, 'App\\Models\\Tenant', 1, 'auth_token', '74a588f78fb7f9b7991809ca776e2eec3e9313cdce6504d69326016893b72989', '[\"*\"]', NULL, NULL, '2026-01-17 11:12:49', '2026-01-17 11:12:49'),
(39, 'App\\Models\\User', 1, 'auth_token', '05a6d2b9ac08f7239ffd3c69962f906895c70e4ba89232266615ca312be24e69', '[\"*\"]', '2026-01-17 12:07:27', NULL, '2026-01-17 12:07:02', '2026-01-17 12:07:27');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('281P5jSaBBoNfZ5w8QXkoqX9C6Bb07XPM5Zry9IE', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:147.0) Gecko/20100101 Firefox/147.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoib2NwMXVpcFBNRVdzdzFET1g1VzZiNUd4aHp4OGt4OWpKUzFSNGoySCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NDk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9kYXNoYm9hcmQvdGVuYW50LWxpc3QiO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1768673245),
('7h8CikVLEGPnxmGWLDc9hl5pEmRWvFpKQJTsh91l', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:147.0) Gecko/20100101 Firefox/147.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRzBpRTd1Nm1aSmlnU2ZtUkV1a0tDWEF6cDdWZmJKNDVVOWVQcWI2RCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1768673035);

-- --------------------------------------------------------

--
-- Table structure for table `tenants`
--

CREATE TABLE `tenants` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tenants`
--

INSERT INTO `tenants` (`id`, `name`, `phone`, `password`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Mr.Rahman', '01515989898', '$2y$12$agc2IuiyxtuE8f5fWo6yx.gcRMssTOg3oxZ.de7Qx03OLfsc1A2/6', NULL, '2026-01-17 03:00:41', '2026-01-17 03:00:41'),
(2, 'Mr.Sobuj', '01515989890', '$2y$12$agc2IuiyxtuE8f5fWo6yx.gcRMssTOg3oxZ.de7Qx03OLfsc1A2/6', NULL, '2026-01-17 03:00:41', '2026-01-17 03:00:41');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
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
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$12$NAlgxf8ACcMR4dkA3pB9KOeKaEqlr0Fwqefhk1ZmhN5NOUcpS.UkK', NULL, '2026-01-16 10:13:50', '2026-01-16 10:13:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `apartments`
--
ALTER TABLE `apartments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `apartments_name_unique` (`name`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookings_apartment_id_foreign` (`apartment_id`),
  ADD KEY `bookings_tenant_id_foreign` (`tenant_id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
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
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`),
  ADD KEY `personal_access_tokens_expires_at_index` (`expires_at`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `tenants`
--
ALTER TABLE `tenants`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tenants_phone_unique` (`phone`);

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
-- AUTO_INCREMENT for table `apartments`
--
ALTER TABLE `apartments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `tenants`
--
ALTER TABLE `tenants`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_apartment_id_foreign` FOREIGN KEY (`apartment_id`) REFERENCES `apartments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bookings_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
