-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 03, 2023 at 10:45 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--
CREATE DATABASE IF NOT EXISTS `ecommerce` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ecommerce`;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `users_id` int(11) NOT NULL,
  `users_name` varchar(100) NOT NULL,
  `users_email` varchar(100) NOT NULL,
  `users_password` varchar(255) NOT NULL,
  `users_phone` varchar(100) NOT NULL,
  `users_verifycode` int(11) NOT NULL,
  `users_approve` tinyint(4) NOT NULL DEFAULT 0,
  `users_create` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`users_id`, `users_name`, `users_email`, `users_password`, `users_phone`, `users_verifycode`, `users_approve`, `users_create`) VALUES
(4, 'alvin', 'alvingumatay@gmail.com', '', '32145', 324343, 0, '2023-08-16 12:20:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`users_id`),
  ADD UNIQUE KEY `users_phone` (`users_phone`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `users_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Database: `eshop`
--
CREATE DATABASE IF NOT EXISTS `eshop` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `eshop`;

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_qty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `prod_id`, `prod_qty`, `created_at`, `updated_at`) VALUES
(61, '1', '18', '1', '2023-08-09 02:35:24', '2023-08-09 02:35:24');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `popular` tinyint(4) NOT NULL DEFAULT 0,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_descrip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `status`, `popular`, `image`, `meta_title`, `meta_descrip`, `meta_keywords`, `created_at`, `updated_at`) VALUES
(21, 'XIAOMI PHONE', '1', 'Redmi Android Phone', 0, 1, '1687789096.jpg', 'Android Phones', 'Lolipop OS, High Speed Android Phone w/ maximum  5g data', 'Mi', '2023-06-26 06:18:16', '2023-07-19 07:00:57'),
(23, 'HP LAPTOP', '2', 'mini computer', 0, 1, '1688647549.png', 'Hawlett - Packard', 'Laptop', 'HP', '2023-07-06 04:45:49', '2023-07-19 07:01:14');

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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_04_23_085423_create_products_table', 1),
(6, '2023_04_23_090302_create_categories_table', 2),
(7, '2023_04_23_091716_create_products_table', 3),
(9, '2023_06_27_161124_create_carts_table', 4),
(10, '2023_07_16_091451_create_orders_table', 5),
(11, '2023_07_16_092431_create_order_items_table', 5),
(12, '2023_07_30_113149_create_wishlists_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pincode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_mode` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `fname`, `lname`, `email`, `address1`, `address2`, `phone`, `city`, `state`, `country`, `pincode`, `total_price`, `payment_mode`, `payment_id`, `status`, `message`, `tracking_no`, `created_at`, `updated_at`) VALUES
(16, '1', 'Als Deped T', 'Pherist', 'alsdeped13@gmail.com', 'sdsds', 'dsds', '08976564646', 'Millwowky', 'CA', 'America', '3797797', '6700', 'COD', NULL, 0, NULL, 'sharma4590', '2023-08-05 17:59:02', '2023-08-05 17:59:02'),
(17, '1', 'Als Deped T', 'Pherist', 'alsdeped13@gmail.com', 'sdsds', 'dsds', '08976564646', 'Millwowky', 'CA', 'America', '3797797', '91798', 'COD', NULL, 0, NULL, 'sharma3949', '2023-08-09 02:33:34', '2023-08-09 02:33:34');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `prod_id`, `qty`, `price`, `created_at`, `updated_at`) VALUES
(64, '16', '18', '1', '6700', '2023-08-05 17:59:02', '2023-08-05 17:59:02'),
(65, '17', '19', '1', '7699', '2023-08-09 02:33:34', '2023-08-09 02:33:34'),
(66, '17', '24', '1', '84099', '2023-08-09 02:33:34', '2023-08-09 02:33:34');

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cate_id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `small_description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `original_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `selling_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `trending` tinyint(4) NOT NULL,
  `meta_title` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keywords` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `cate_id`, `name`, `slug`, `small_description`, `description`, `original_price`, `selling_price`, `image`, `qty`, `tax`, `status`, `trending`, `meta_title`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`) VALUES
(18, 21, 'RedMi Note 10', '1', 'Mi XIAOMI Phone', 'Android Phone', '7800', '6700', '1687789205.png', '1', '1', 0, 1, 'Android Phone OS Candy', 'XIAOMI', 'China Phone', '2023-06-26 06:20:05', '2023-08-05 17:59:02'),
(19, 21, 'RedMi 9T', '2', 'RedMi Note 11 5G', 'android Phone', '7866', '7699', '1687877200.jpg', '0', '3', 0, 1, 'XIAOMI PHONE', 'MI2', 'Android 9T', '2023-06-27 06:46:40', '2023-08-09 02:33:34'),
(20, 21, 'RedMi Note 11 5G', '3', 'RedMi Note 11 5G', 'China Phone', '9900', '8900', '1687877811.jpg', '1', '6', 0, 1, 'Android Phone OS Gelly Ace', 'Xiaomi3', 'Android Phone', '2023-06-27 06:56:51', '2023-07-24 04:49:32'),
(23, 23, 'HP Spectre x360 16', '4', 'HP Spectre x360 16', 'Packed with premium features', '120000', '100049', '1688649211.png', '1', '1200', 0, 1, 'Hawlett - Packard', 'HP1', 'Latop', '2023-07-06 05:13:31', '2023-08-03 00:32:38'),
(24, 23, 'OMEN 16', '5', 'OMEN 16', 'Ultimate gaming performance', '999000', '84099', '1688649350.png', '0', '1200', 0, 1, 'Hawlett - Packard', 'HP 2', 'Laptop', '2023-07-06 05:15:50', '2023-08-09 02:33:34'),
(25, 23, 'Dragonfly Pro', '6', 'Dragonfly Pro', 'The power to simply', '10002021', '999990', '1688649500.png', '1', '1200', 0, 1, 'Hawlett - Packard', 'HP3', 'Laptop', '2023-07-06 05:18:20', '2023-07-24 04:49:32');

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
  `lname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address2` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pincode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_as` tinyint(4) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `lname`, `phone`, `address1`, `address2`, `city`, `state`, `country`, `pincode`, `role_as`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Als Deped T', 'alsdeped13@gmail.com', NULL, '$2y$10$3zS2581Ylwl1ax3fJyLExe/77bubCiNHSL.FKQQl7Py0xuAF2NEWO', 'Pherist', '08976564646', 'sdsds', 'dsds', 'Millwowky', 'CA', 'America', '3797797', 1, NULL, '2023-04-23 01:10:04', '2023-07-17 06:04:10');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `prod_id`, `created_at`, `updated_at`) VALUES
(7, '1', '23', '2023-08-11 07:15:07', '2023-08-11 07:15:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Database: `hcpms`
--
CREATE DATABASE IF NOT EXISTS `hcpms` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `hcpms`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(12) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `middlename` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `password`, `firstname`, `middlename`, `lastname`) VALUES
(2, 'admin', 'admin', 'Admin', 'M', 'Nistrator'),
(4, 'admino', 'admino', 'admino', '', 'strator');

-- --------------------------------------------------------

--
-- Table structure for table `antrian_administrasi_save`
--

CREATE TABLE `antrian_administrasi_save` (
  `id` int(11) NOT NULL,
  `nomor_antrian` varchar(50) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `no_telpon` varchar(20) NOT NULL,
  `created_by` varchar(50) NOT NULL,
  `created` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `antrian_administrasi_save`
--

INSERT INTO `antrian_administrasi_save` (`id`, `nomor_antrian`, `nama`, `jenis_kelamin`, `no_telpon`, `created_by`, `created`) VALUES
(1, 'A321', 'tes', 'LAKI-LAKI', '798798', '1', '2015-12-19 23:02:07'),
(2, 'A322', 'test2', 'LAKI-LAKI', '779789', '1', '2015-12-19 23:04:54'),
(3, 'A323', 'testw', 'LAKI-LAKI', '79789787', '', '2015-12-19 23:05:50'),
(4, 'A324', '77', 'PEREMPUAN', '6876767', 'admin', '2015-12-19 23:07:27');

-- --------------------------------------------------------

--
-- Table structure for table `antrian_transaksi_save`
--

CREATE TABLE `antrian_transaksi_save` (
  `id` int(11) NOT NULL,
  `nomor_antrian` varchar(50) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `no_telpon` varchar(20) NOT NULL,
  `created_by` varchar(50) NOT NULL,
  `created` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `antrian_transaksi_save`
--

INSERT INTO `antrian_transaksi_save` (`id`, `nomor_antrian`, `nama`, `jenis_kelamin`, `no_telpon`, `created_by`, `created`) VALUES
(1, 'A321', 'tes', 'LAKI-LAKI', '798798', '1', '2015-12-19 23:02:07'),
(2, 'A322', 'test2', 'LAKI-LAKI', '779789', '1', '2015-12-19 23:04:54'),
(3, 'A323', 'testw', 'LAKI-LAKI', '79789787', '', '2015-12-19 23:05:50'),
(4, 'A324', '77', 'PEREMPUAN', '6876767', 'admin', '2015-12-19 23:07:27'),
(5, 'T$', 'dkdakj', 'LAKI-LAKI', '67878', '1', '2015-12-20 09:42:07');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `appoint_id` int(11) NOT NULL,
  `itr_no` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `servtype` varchar(50) NOT NULL,
  `tdate` date NOT NULL,
  `dtime` varchar(40) NOT NULL,
  `status` enum('pending','accepted','done') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`appoint_id`, `itr_no`, `firstname`, `lastname`, `contact`, `servtype`, `tdate`, `dtime`, `status`) VALUES
(10, 20, 'Alvin', 'Gumatay', '09462886584', 'Fecalysis - Regular: Php 50', '2020-07-21', '5:00 PM', 'accepted'),
(11, 19, 'Alvin', 'Gumatay', '09462886584', 'Fecalysis - Regular: Php 50', '2020-08-31', '8:30 PM', 'accepted'),
(12, 20, 'Alvin', 'Gumatay', '09462886584', 'Xray Lombo-sacral-Sen: PHP640', '2021-02-08', '11:30 PM', 'accepted'),
(13, 20, 'Alvin', 'Gumatay', '09462886584', '', '2021-02-08', '9:00 PM', 'accepted'),
(14, 19, 'Alvin', 'Gumatay', '09462886584', 'Urinalysys - Senior: Php 50', '2021-06-22', '11:00 AM', 'accepted'),
(15, 19, 'Alvin', 'Gumatay', '09462886584', 'Fecalysis - Regular: Php 50', '2021-06-09', '11:00 AM', 'accepted'),
(16, 19, 'Alvin', 'Gumatay', '09462886584', 'Hematology - Senior: Php 100', '2021-06-09', '11:00 AM', 'accepted'),
(18, 20, 'Alvin', 'Gumatay', '09462886584', 'Fecalysis - Regular: Php 50', '2022-02-11', '9:00 PM', 'accepted'),
(19, 20, 'Alvin', 'Gumatay', '09462886584', 'Consultation - Regular: Php 300', '2022-03-04', '11:00 AM', 'done'),
(20, 21, 'bukas', 'laba', '09606100779', 'Hematology - Regular: Php 175', '2022-03-18', '7:00 PM', 'pending'),
(21, 22, 'borgart', 'gahaman', '09462886584', 'Urinalysys - Senior: Php 50', '2022-03-18', '7:00 PM', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE `complaints` (
  `com_id` int(50) NOT NULL,
  `date` varchar(20) NOT NULL,
  `complaints` varchar(255) NOT NULL,
  `remark` varchar(255) NOT NULL,
  `itr_no` varchar(50) NOT NULL,
  `section` varchar(20) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complaints`
--

INSERT INTO `complaints` (`com_id`, `date`, `complaints`, `remark`, `itr_no`, `section`, `status`) VALUES
(2, '03/18/2022', 'cssvsfs', 'csssss', '19', 'Rehabilitation', 'Pending'),
(3, '03/18/2022', '', '', '19', 'Rehabilitation', 'Pending'),
(4, '03/18/2022', '', '', '19', 'Rehabilitation', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `dislocation`
--

CREATE TABLE `dislocation` (
  `dislocation_id` int(11) NOT NULL,
  `price` int(10) NOT NULL,
  `diagnosis` varchar(50) NOT NULL,
  `type_of_disability` varchar(50) NOT NULL,
  `assessment` varchar(100) NOT NULL,
  `plan` varchar(100) NOT NULL,
  `medical_doctor` varchar(100) NOT NULL,
  `date` varchar(10) NOT NULL,
  `itr_no` varchar(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `month` varchar(10) NOT NULL,
  `year` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fecalisys`
--

CREATE TABLE `fecalisys` (
  `fecalysis_id` int(11) NOT NULL,
  `date_of_request` date NOT NULL,
  `price` int(11) NOT NULL,
  `requested_by` varchar(30) NOT NULL,
  `color` varchar(15) NOT NULL,
  `consistency` varchar(15) NOT NULL,
  `pus_cells` varchar(15) NOT NULL,
  `RBC` varchar(15) NOT NULL,
  `fat_globules` varchar(15) NOT NULL,
  `occult_blood` varchar(15) NOT NULL,
  `others_chem` varchar(15) NOT NULL,
  `ova` varchar(15) NOT NULL,
  `larva` varchar(15) NOT NULL,
  `adult_forms` varchar(15) NOT NULL,
  `cyst` varchar(15) NOT NULL,
  `trophozoites` varchar(15) NOT NULL,
  `others_pro` varchar(15) NOT NULL,
  `remarks` varchar(100) NOT NULL,
  `date_reported` date NOT NULL,
  `pathologist` varchar(30) NOT NULL,
  `medical_technologist` varchar(30) NOT NULL,
  `itr_no` varchar(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `month` varchar(10) NOT NULL,
  `year` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hematology`
--

CREATE TABLE `hematology` (
  `hem_id` int(11) NOT NULL,
  `date_requested` date NOT NULL,
  `price` int(10) NOT NULL,
  `requested_by` varchar(30) NOT NULL,
  `hemoglobin` varchar(15) NOT NULL,
  `hematocrit` varchar(15) NOT NULL,
  `RBC_count` varchar(15) NOT NULL,
  `WBC_count` varchar(15) NOT NULL,
  `platelet` varchar(15) NOT NULL,
  `bleeding_time` varchar(15) NOT NULL,
  `clotting_time` varchar(15) NOT NULL,
  `neutrophil` varchar(15) NOT NULL,
  `segmenters` varchar(15) NOT NULL,
  `stabs` varchar(15) NOT NULL,
  `lymphocytes` varchar(15) NOT NULL,
  `monocyte` varchar(15) NOT NULL,
  `eosinophil` varchar(15) NOT NULL,
  `basophil` varchar(15) NOT NULL,
  `total` varchar(15) NOT NULL,
  `ABO_group` varchar(15) NOT NULL,
  `Rh_group` varchar(15) NOT NULL,
  `remarks` varchar(100) NOT NULL,
  `pathologist` varchar(30) NOT NULL,
  `medical_technologist` varchar(30) NOT NULL,
  `itr_no` varchar(50) NOT NULL,
  `user_id` int(50) NOT NULL,
  `month` varchar(20) NOT NULL,
  `year` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `itr`
--

CREATE TABLE `itr` (
  `itr_no` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `phil_health_no` varchar(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `middlename` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `birthdate` varchar(20) NOT NULL,
  `age` varchar(50) NOT NULL,
  `address` varchar(255) NOT NULL,
  `contact` text NOT NULL,
  `civil_status` varchar(10) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `bp` varchar(10) NOT NULL,
  `temp` varchar(10) NOT NULL,
  `pr` varchar(10) NOT NULL,
  `rr` varchar(10) NOT NULL,
  `wt` varchar(10) NOT NULL,
  `ht` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `itr`
--

INSERT INTO `itr` (`itr_no`, `email`, `password`, `phil_health_no`, `firstname`, `middlename`, `lastname`, `birthdate`, `age`, `address`, `contact`, `civil_status`, `gender`, `bp`, `temp`, `pr`, `rr`, `wt`, `ht`) VALUES
(20, 'alvingumatay13@gmail.com', '123', '0', 'Alvin', 'Tumbokon', 'Gumatay', '02/13/1992', '28', '7 orovista village,  concepcion ', '09462886584', 'Single', 'Male', '0', '0&deg;C', '0', '0', '0kg', '0'),
(19, 'alvingumatay@gmail.com', '12345678', '0', 'Alvin', 'Tumbokon', 'Gumatay', '07/13/1992', '28', '7 orovista village,  concepcion ', '09462886584', 'Single', 'Male', '0', '0&deg;C', '0', '0', '0kg', '0'),
(21, 'bukas@laba.com', '123', '0', 'bukas', 'm', 'laba', '03/02/1994', '28', 'village st., cpncusbcus', '09606100779', 'Single', 'Male', '0', '0&deg;C', '0', '0', '0kg', '0'),
(22, 'hiwagaalias@gmail.com', '123', '0', 'borgart', 't', 'gahaman', '03/03/2022', '0', 'village st., cpncusbcus', '09462886584', 'Married', 'Male', '0', '0&deg;C', '0', '0', '0kg', '0');

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `LEVEL_ID` int(11) DEFAULT NULL,
  `NAME` varchar(20) DEFAULT NULL,
  `CREATED` date DEFAULT NULL,
  `MODIFIED` datetime DEFAULT NULL,
  `CREATED_BY` tinyint(4) DEFAULT NULL,
  `MODIFIED_BY` tinyint(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 PACK_KEYS=0;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`LEVEL_ID`, `NAME`, `CREATED`, `MODIFIED`, `CREATED_BY`, `MODIFIED_BY`) VALUES
(1, 'admin', '2014-05-10', NULL, 1, NULL),
(2, 'loket administrasi', '2014-05-10', '2014-07-18 02:20:13', 1, NULL),
(3, 'loket pas', '2014-05-12', '2014-07-18 06:27:14', 1, NULL),
(4, 'print', '2014-07-26', NULL, 1, NULL),
(4, 'loket consultation', '2019-10-21', '2019-10-21 01:45:00', 1, 4),
(5, 'loket hematology', '2019-10-21', '2019-10-21 00:00:00', 1, 5),
(6, 'loket urinalysis', '2019-10-21', '2019-10-21 04:09:00', 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `loket`
--

CREATE TABLE `loket` (
  `id` int(11) NOT NULL,
  `no_loket` varchar(255) NOT NULL,
  `nama_loket` varchar(255) NOT NULL,
  `aktif` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loket`
--

INSERT INTO `loket` (`id`, `no_loket`, `nama_loket`, `aktif`) VALUES
(1, 'xray', 'TRANSAKSI', 1),
(2, 'fecalysis', 'ADMINISTRASI', 1),
(3, 'consultation', 'CONSULTATION', 1),
(4, 'urinalysis', 'URINALYSIS', 1),
(5, 'hematology', 'HEMATOLOGY', 1);

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `menus_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `url` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `enable` tinyint(4) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `lft` int(11) NOT NULL,
  `created` int(11) NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`menus_id`, `name`, `url`, `title`, `enable`, `parent_id`, `lft`, `created`, `created_by`) VALUES
(2, 'pengguna akun', 'system.php?link=pengguna-akun', 'pengguna akun', 1, 1, 0, 2015, 1),
(3, 'Pengaturan Menu', 'system.php?link=menus', 'Setting Menu', 1, 1, 0, 2015, 1),
(4, 'Pengaturan Video LCD', 'system.php?link=video', 'Pengaturan Video LCD', 1, 1, 0, 2015, 1),
(5, 'Pengaturan Running Text', 'system.php?link=running-text', 'Pengaturan Running Text', 1, 1, 1, 2015, 1),
(8, 'Counter Fecalysis', 'system.php?link=menu-antrian-administrasi', 'Counter Fecalysis', 1, 10, 1, 2015, 1),
(9, 'Loket', 'system.php?link=loket', 'loket', 1, 1, 0, 2015, 1),
(10, 'OPTION MENU', '#', 'OPTION MENU', 1, 0, 1, 2015, 1),
(12, 'Counter Xray', 'system.php?link=menu-antrian-transaksi', 'Counter Xray', 1, 10, 1, 2015, 1),
(14, 'Counter  Consultation', 'system.php?link=menu-antrian-consultation', 'Counter Consultation', 1, 10, 1, 2019, 1),
(15, 'Counter Hematology', 'system.php?link=menu-antrian-hematology ', 'Counter Hematology', 1, 10, 1, 2019, 1),
(17, 'Counter Urinalysis', 'system.php?link=menu-antrian-urinalysis ', 'Counter Urinalysis', 1, 10, 1, 2019, 1);

-- --------------------------------------------------------

--
-- Table structure for table `minor_surgery`
--

CREATE TABLE `minor_surgery` (
  `surgery_id` int(11) NOT NULL,
  `price` int(10) NOT NULL,
  `diagnosis` varchar(50) NOT NULL,
  `type_of_disability` varchar(50) NOT NULL,
  `assessment` varchar(100) NOT NULL,
  `plan` varchar(100) NOT NULL,
  `medical_doctor` varchar(100) NOT NULL,
  `date` varchar(10) NOT NULL,
  `itr_no` varchar(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `month` varchar(10) NOT NULL,
  `year` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `radiological`
--

CREATE TABLE `radiological` (
  `rad_id` int(11) NOT NULL,
  `case_no` varchar(12) NOT NULL,
  `referred_by` varchar(30) NOT NULL,
  `clinical_impression` varchar(100) NOT NULL,
  `room_bed_no` varchar(11) NOT NULL,
  `type_of_examination` varchar(30) NOT NULL,
  `date_taken` date NOT NULL,
  `remark` varchar(255) NOT NULL,
  `radiologist` varchar(30) NOT NULL,
  `itr_no` varchar(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `month` varchar(10) NOT NULL,
  `price` int(10) NOT NULL,
  `year` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rehabilitation`
--

CREATE TABLE `rehabilitation` (
  `rehab_id` int(11) NOT NULL,
  `price` int(10) NOT NULL,
  `diagnosis` varchar(50) NOT NULL,
  `type_of_disability` varchar(50) NOT NULL,
  `assessment` varchar(100) NOT NULL,
  `plan` varchar(100) NOT NULL,
  `medical_doctor` varchar(100) NOT NULL,
  `date` varchar(10) NOT NULL,
  `itr_no` varchar(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `month` varchar(10) NOT NULL,
  `year` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `running_text`
--

CREATE TABLE `running_text` (
  `id` int(11) NOT NULL,
  `isi_text` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `running_text`
--

INSERT INTO `running_text` (`id`, `isi_text`) VALUES
(1, 'Welcome To MOSC clinic we serve you to care !!!... |'),
(2, 'Please wait while you stay and before you call a number.... |'),
(3, ' Thank you for understanding while wait god bless us .... |');

-- --------------------------------------------------------

--
-- Table structure for table `secretary`
--

CREATE TABLE `secretary` (
  `sec_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(12) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `middlename` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `secretary`
--

INSERT INTO `secretary` (`sec_id`, `username`, `password`, `firstname`, `middlename`, `lastname`) VALUES
(2, 'secretary', '123', 'sec', 'R', 'Tary'),
(3, 'secxs', 'secx', 'secx', 'secx', 'secx');

-- --------------------------------------------------------

--
-- Table structure for table `temp_administrasi`
--

CREATE TABLE `temp_administrasi` (
  `id` int(11) NOT NULL,
  `nomor_antrian` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `temp_administrasi`
--

INSERT INTO `temp_administrasi` (`id`, `nomor_antrian`, `time`) VALUES
(1, '2', '');

-- --------------------------------------------------------

--
-- Table structure for table `temp_consultation`
--

CREATE TABLE `temp_consultation` (
  `id` int(11) NOT NULL,
  `nomor_antrian` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `temp_consultation`
--

INSERT INTO `temp_consultation` (`id`, `nomor_antrian`, `time`) VALUES
(1, '1', '');

-- --------------------------------------------------------

--
-- Table structure for table `temp_hematology`
--

CREATE TABLE `temp_hematology` (
  `id` int(11) NOT NULL,
  `nomor_antrian` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `temp_hematology`
--

INSERT INTO `temp_hematology` (`id`, `nomor_antrian`, `time`) VALUES
(1, '1', '');

-- --------------------------------------------------------

--
-- Table structure for table `temp_transaksi`
--

CREATE TABLE `temp_transaksi` (
  `id` int(11) NOT NULL,
  `nomor_antrian` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `temp_transaksi`
--

INSERT INTO `temp_transaksi` (`id`, `nomor_antrian`, `time`) VALUES
(1, '1', '');

-- --------------------------------------------------------

--
-- Table structure for table `temp_urinalysis`
--

CREATE TABLE `temp_urinalysis` (
  `id` int(11) NOT NULL,
  `nomor_antrian` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `temp_urinalysis`
--

INSERT INTO `temp_urinalysis` (`id`, `nomor_antrian`, `time`) VALUES
(1, '3', '');

-- --------------------------------------------------------

--
-- Table structure for table `urinalysis`
--

CREATE TABLE `urinalysis` (
  `urinalysis_id` int(11) NOT NULL,
  `date_of_request` varchar(20) NOT NULL,
  `price` int(10) NOT NULL,
  `color` varchar(15) NOT NULL,
  `transparency` varchar(15) NOT NULL,
  `specific_gravity` varchar(15) NOT NULL,
  `ph` varchar(15) NOT NULL,
  `sugar` varchar(15) NOT NULL,
  `protein` varchar(15) NOT NULL,
  `pregnancy_test` varchar(15) NOT NULL,
  `pus_cells` varchar(15) NOT NULL,
  `rbc` varchar(15) NOT NULL,
  `cast` varchar(15) NOT NULL,
  `urates` varchar(15) NOT NULL,
  `uric_acid` varchar(15) NOT NULL,
  `cal_ox` varchar(15) NOT NULL,
  `epith_cells` varchar(15) NOT NULL,
  `mucus_threads` varchar(15) NOT NULL,
  `others` varchar(15) NOT NULL,
  `pathologist` varchar(30) NOT NULL,
  `medical_technologist` varchar(30) NOT NULL,
  `itr_no` varchar(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `month` varchar(10) NOT NULL,
  `year` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(12) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `middlename` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `section` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `firstname`, `middlename`, `lastname`, `section`) VALUES
(29, 'doctorc', '123', 'Albert', 'T', 'Fernia', 'DoctorApp'),
(30, 'doctorh', 'doctorh', 'doctorh', 'H', 'Hematology', 'Hematology'),
(31, 'doctord', 'doctord', 'doctord', 'doctord', 'doctord', 'DoctorApp');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `USER_ID` int(11) NOT NULL,
  `USERNAME` varchar(20) DEFAULT NULL,
  `PASSWORD` varchar(40) DEFAULT NULL,
  `NIP` varchar(20) DEFAULT NULL,
  `NAMA_LENGKAP` varchar(50) DEFAULT NULL,
  `JENIS_KELAMIN_ID` tinyint(4) DEFAULT NULL,
  `TEMPAT_LAHIR` varchar(100) NOT NULL,
  `TGL_LAHIR` date NOT NULL,
  `FOTO` varchar(200) DEFAULT NULL,
  `ALAMAT` varchar(20) DEFAULT NULL,
  `TELPON` varchar(20) DEFAULT NULL,
  `LEVEL_ID` tinyint(4) DEFAULT NULL,
  `BLOKIR` tinyint(4) DEFAULT NULL,
  `CREATED` date DEFAULT NULL,
  `MODIFIED` datetime DEFAULT NULL,
  `CREATED_BY` tinyint(4) DEFAULT NULL,
  `MODIFIED_BY` tinyint(4) DEFAULT NULL,
  `session_id` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 PACK_KEYS=0;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`USER_ID`, `USERNAME`, `PASSWORD`, `NIP`, `NAMA_LENGKAP`, `JENIS_KELAMIN_ID`, `TEMPAT_LAHIR`, `TGL_LAHIR`, `FOTO`, `ALAMAT`, `TELPON`, `LEVEL_ID`, `BLOKIR`, `CREATED`, `MODIFIED`, `CREATED_BY`, `MODIFIED_BY`, `session_id`) VALUES
(1, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'xxxxxxxxxxxx', 'administrator', 1, 'AMDMAD', '1991-06-09', '23Photo_00004.jpg', 'makassar', '81243324689', 1, 0, '2014-05-10', '2014-07-18 21:13:53', 1, 1, ''),
(20, 'myprint', 'bebaec246afd2b4ccd42b6f977a4a25a2baedb8f', 'xxxx', 'printer', 1, 'jakarta', '2013-11-05', '9CPU-icon.png', 'MAKASSAR', '0808707779', 4, 0, '2014-07-26', NULL, 1, NULL, ''),
(19, 'administrasi', 'e5c6ba3abff1db4479bb60c5d79cc1c2a0689dcb', 'xxxxxx', 'admin administrasi', 1, 'JAKARTA', '1991-06-12', '94guard-icon.png', 'MAKASSAR', '093729272', 2, 0, '2014-07-18', '2014-07-18 22:22:39', 1, 1, ''),
(18, 'pas', '19c2a0dbd8e3a41b25d504744c57df8853e36677', 'xxxxx', 'admin pas', 1, 'JAKARTA', '1991-06-09', '12acid.MP4', 'MAKASSAR', '08927638282', 3, 0, '2014-07-18', '2014-07-20 21:14:03', 1, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `id` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `nama_file` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  `hits` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id`, `judul`, `nama_file`, `tgl_posting`, `hits`) VALUES
(1, 'my video e', 'video1.mp4', '0000-00-00', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `antrian_administrasi_save`
--
ALTER TABLE `antrian_administrasi_save`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `antrian_transaksi_save`
--
ALTER TABLE `antrian_transaksi_save`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`appoint_id`);

--
-- Indexes for table `complaints`
--
ALTER TABLE `complaints`
  ADD PRIMARY KEY (`com_id`);

--
-- Indexes for table `dislocation`
--
ALTER TABLE `dislocation`
  ADD PRIMARY KEY (`dislocation_id`);

--
-- Indexes for table `fecalisys`
--
ALTER TABLE `fecalisys`
  ADD PRIMARY KEY (`fecalysis_id`);

--
-- Indexes for table `hematology`
--
ALTER TABLE `hematology`
  ADD PRIMARY KEY (`hem_id`);

--
-- Indexes for table `itr`
--
ALTER TABLE `itr`
  ADD PRIMARY KEY (`itr_no`),
  ADD UNIQUE KEY `itr_no` (`itr_no`);

--
-- Indexes for table `loket`
--
ALTER TABLE `loket`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`menus_id`);

--
-- Indexes for table `minor_surgery`
--
ALTER TABLE `minor_surgery`
  ADD PRIMARY KEY (`surgery_id`);

--
-- Indexes for table `radiological`
--
ALTER TABLE `radiological`
  ADD PRIMARY KEY (`rad_id`);

--
-- Indexes for table `rehabilitation`
--
ALTER TABLE `rehabilitation`
  ADD PRIMARY KEY (`rehab_id`);

--
-- Indexes for table `running_text`
--
ALTER TABLE `running_text`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `secretary`
--
ALTER TABLE `secretary`
  ADD PRIMARY KEY (`sec_id`);

--
-- Indexes for table `temp_administrasi`
--
ALTER TABLE `temp_administrasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `temp_consultation`
--
ALTER TABLE `temp_consultation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `temp_hematology`
--
ALTER TABLE `temp_hematology`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `temp_transaksi`
--
ALTER TABLE `temp_transaksi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `temp_urinalysis`
--
ALTER TABLE `temp_urinalysis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `urinalysis`
--
ALTER TABLE `urinalysis`
  ADD PRIMARY KEY (`urinalysis_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`USER_ID`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `antrian_administrasi_save`
--
ALTER TABLE `antrian_administrasi_save`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `antrian_transaksi_save`
--
ALTER TABLE `antrian_transaksi_save`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `appoint_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `complaints`
--
ALTER TABLE `complaints`
  MODIFY `com_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `dislocation`
--
ALTER TABLE `dislocation`
  MODIFY `dislocation_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fecalisys`
--
ALTER TABLE `fecalisys`
  MODIFY `fecalysis_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hematology`
--
ALTER TABLE `hematology`
  MODIFY `hem_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `itr`
--
ALTER TABLE `itr`
  MODIFY `itr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `loket`
--
ALTER TABLE `loket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `menus_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `minor_surgery`
--
ALTER TABLE `minor_surgery`
  MODIFY `surgery_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `radiological`
--
ALTER TABLE `radiological`
  MODIFY `rad_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rehabilitation`
--
ALTER TABLE `rehabilitation`
  MODIFY `rehab_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `running_text`
--
ALTER TABLE `running_text`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `secretary`
--
ALTER TABLE `secretary`
  MODIFY `sec_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `temp_administrasi`
--
ALTER TABLE `temp_administrasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `temp_consultation`
--
ALTER TABLE `temp_consultation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `temp_hematology`
--
ALTER TABLE `temp_hematology`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `temp_transaksi`
--
ALTER TABLE `temp_transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `temp_urinalysis`
--
ALTER TABLE `temp_urinalysis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `urinalysis`
--
ALTER TABLE `urinalysis`
  MODIFY `urinalysis_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `USER_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"ecommerce\",\"table\":\"users\"},{\"db\":\"eshop\",\"table\":\"users\"},{\"db\":\"exprod\",\"table\":\"users\"},{\"db\":\"sdoelibro\",\"table\":\"activity\"},{\"db\":\"sdoelibro\",\"table\":\"user_info\"},{\"db\":\"eshop\",\"table\":\"orders\"},{\"db\":\"eshop\",\"table\":\"products\"},{\"db\":\"eshop\",\"table\":\"order_items\"},{\"db\":\"eshop\",\"table\":\"carts\"},{\"db\":\"eshop\",\"table\":\"categories\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2023-09-03 08:44:11', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `sdoelibro`
--
CREATE DATABASE IF NOT EXISTS `sdoelibro` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `sdoelibro`;

-- --------------------------------------------------------

--
-- Table structure for table `accessform`
--

CREATE TABLE `accessform` (
  `access_id` int(11) NOT NULL,
  `fullname` text NOT NULL,
  `email` text NOT NULL,
  `address` text NOT NULL,
  `typdevice` text NOT NULL,
  `namdev` text NOT NULL,
  `osname` text NOT NULL,
  `dataconnect` text NOT NULL,
  `bandwidth` text NOT NULL,
  `icondition` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accessform`
--

INSERT INTO `accessform` (`access_id`, `fullname`, `email`, `address`, `typdevice`, `namdev`, `osname`, `dataconnect`, `bandwidth`, `icondition`) VALUES
(1, 'Alvin Gumatay', 'alsdeped13@gmail.com', '7 Ephesians St., Orovista', 'Laptop', 'HP 15', 'Windows 10', 'Wifi', '500 mbps', 'Good'),
(2, 'mira  flores', 'miraflores@yahoo.com', 'Florencia ST., Daang bato MIlagros City', 'PC', 'Acer', 'Windows 7', 'data', '200mbps', 'Good'),
(3, 'mirapo', 'scsc@gmail.com', 'csssss', 'Tablet', 'Google   Tablet', 'Windows 7', 'Wifi', '500 mbps', 'Good'),
(4, 'piocshu', 'piocshu@gmail.com', 'sfsfsfs', 'Laptop', 'HP 15', 'Windows 10', 'Wifi', '500 mbps', 'Good'),
(5, 'gygy', 'xahuhux', '090909', '', '', '', '', '', ''),
(6, 'mirapo', 'mirapo@gmail.com', 'Florencia ST., Daang bato MIlagros City', 'Laptop', 'HP 15', 'Windows 10', 'Wifi', '500 mbps', 'Good'),
(7, 'mimi', 'mimi@gmail.com', 'sfsfsfs', 'PC', 'HP 15', 'Windows 10', 'Wifi', '500 mbps', 'Good');

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

CREATE TABLE `activity` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `month` varchar(11) DEFAULT NULL,
  `user_accounts` text DEFAULT NULL,
  `time_loged` time NOT NULL,
  `date_in` date NOT NULL,
  `time_logout` time NOT NULL,
  `date_out` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `activity`
--

INSERT INTO `activity` (`id`, `user_id`, `month`, `user_accounts`, `time_loged`, `date_in`, `time_logout`, `date_out`) VALUES
(300, 1, 'Aug', 'admin@admin.com', '09:03:00', '2023-08-13', '09:16:00', '2023-08-13'),
(301, 8, '08', 'alsdeped13@gmail.com', '09:09:00', '2023-08-13', '09:12:00', '2023-08-13'),
(302, 1, 'Aug', 'admin@admin.com', '09:09:00', '2023-08-13', '09:16:00', '2023-08-13'),
(303, 8, '08', 'alsdeped13@gmail.com', '09:09:00', '2023-08-13', '09:12:00', '2023-08-13'),
(304, 1, 'Aug', 'admin@admin.com', '09:13:00', '2023-08-13', '09:16:00', '2023-08-13'),
(305, 1, 'Aug', 'admin@admin.com', '09:15:00', '2023-08-13', '09:16:00', '2023-08-13'),
(306, 8, '08', 'alsdeped13@gmail.com', '09:16:00', '2023-08-13', '00:00:00', '0000-00-00'),
(307, 1, 'Aug', 'admin@admin.com', '12:38:00', '2023-08-18', '00:00:00', '0000-00-00'),
(308, 1, 'Aug', 'admin@admin.com', '08:49:00', '2023-08-31', '00:00:00', '0000-00-00'),
(309, 8, '08', 'alsdeped13@gmail.com', '08:54:00', '2023-08-31', '00:00:00', '0000-00-00'),
(310, 1, 'Sep', 'admin@admin.com', '07:26:00', '2023-09-01', '00:00:00', '0000-00-00'),
(311, 8, '09', 'alsdeped13@gmail.com', '07:27:00', '2023-09-01', '00:00:00', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `articleleft2_post`
--

CREATE TABLE `articleleft2_post` (
  `post_id` int(11) NOT NULL,
  `post_content` text NOT NULL,
  `post_date` date NOT NULL,
  `post_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `articleleft2_post`
--

INSERT INTO `articleleft2_post` (`post_id`, `post_content`, `post_date`, `post_image`) VALUES
(1, '            <p>Educations Program Supervisor Mr. Joseph T. Santos talks about setting the vision, discipline, good taste, and excellence.</p>\r\n', '2023-05-07', 'capture.png');

-- --------------------------------------------------------

--
-- Table structure for table `articleleft_post`
--

CREATE TABLE `articleleft_post` (
  `post_id` int(11) NOT NULL,
  `post_content` text NOT NULL,
  `post_date` date NOT NULL,
  `post_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `articleleft_post`
--

INSERT INTO `articleleft_post` (`post_id`, `post_content`, `post_date`, `post_image`) VALUES
(2, '                                                <p>Schools Division Superitendent Ms Sheryll T. Gayola recognizes outstanding employees and service awardees for their dedicated, loyalty, commitment, and hard work for this division to succeed. Ms. Gayola is also a service awardee who celebrates her 25th anniversary at the Department of Education.</p>\r\n', '2023-05-07', 'image.png');

-- --------------------------------------------------------

--
-- Table structure for table `articleright_post`
--

CREATE TABLE `articleright_post` (
  `contid` int(11) NOT NULL,
  `poster_content` text NOT NULL,
  `poster_date` date NOT NULL,
  `poster_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `articleright_post`
--

INSERT INTO `articleright_post` (`contid`, `poster_content`, `poster_date`, `poster_image`) VALUES
(1, '<p>Chief Educations Supervisor - SGOD Dr. ELizalde Q. Cena, Schools Division SuperitendentMs. Sheryll T. Gayola are flanked by City Government Department Head II and Acting Assistant Schools Division Superitendent Dr. Elisa O. Cerveza. and Public Schools District Supervisor, and Officer-in Charge, Chief Education Supervisor - CID Ms. Remia L. Recabar, who award their plaques and certificates of recognition</p>\r\n', '2023-05-07', 'v3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `article_post`
--

CREATE TABLE `article_post` (
  `article_id` int(11) NOT NULL,
  `post_no` text NOT NULL,
  `post_content` text NOT NULL,
  `post_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `article_post`
--

INSERT INTO `article_post` (`article_id`, `post_no`, `post_content`, `post_date`) VALUES
(5, '1', '<p>Quality of work performances and longevity of service were emphasized in the speeches of the newly - appointed Schools Division Superitendent Ms. Sheryll T. Gayola and Schools and Governance and Operation Division Chief Dr. Elizalde Q. Cena</p>\r\n\r\n<p>Ms. Gayola, who started out as values education teacher in 1996, said that quality and quantity signify our contributions and the years we have dutifully carried out responsibilities in our work<br />\r\n&nbsp;</p>\r\n', '2023-05-07'),
(6, '2', '<p>The reason why the Filipinos are being loved all over the world is because most of us, if not all, are working not for ourselves, but for our family. Hindi lahat ay nabibigyan ng pagkakataon maglingkod sa gobyerno at ito ay isang biyaya para sa ating lahat. We serve na hindi naghihintay ng kapalit, because that&#39;s our expression of love Ms. GAyola, who has been with the Department of Education for 25 years, stated in her speech</p>\r\n', '2023-04-10'),
(7, '3', '<p>The best of the best of the past year were&nbsp; also cited&nbsp; as awards were given to Mr. Angelo E. Libuton (Master Teacher&nbsp; I -&nbsp; CES) for the most Outstanding&nbsp; Teacher in&nbsp; the Elementary&nbsp;Level, Ms. Jossa Margarette. A Francisco (Teacher III - MSHS) for the most Outstanding Teacher in the Secondary Level, Ms Adelwisa&nbsp; P. Mendoza (Head Teacher III - CIS -SL.)</p>\r\n', '2023-04-10');

-- --------------------------------------------------------

--
-- Table structure for table `audiobooks`
--

CREATE TABLE `audiobooks` (
  `audio_id` int(11) NOT NULL,
  `audio_title` text NOT NULL,
  `audio_content` text NOT NULL,
  `audio_link` text NOT NULL,
  `images` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `audiobooks`
--

INSERT INTO `audiobooks` (`audio_id`, `audio_title`, `audio_content`, `audio_link`, `images`) VALUES
(2, 'Ang Dapat Mabatid ng mga Tagalog by Andres Bonifacio', 'hfhhfhf', 'https://ia902908.us.archive.org/19/items/multilingual_shorts_005_1212/msw005_18_angdapatmabatid_bonifacio_ls_64kb.mp3', '2.fw.png'),
(3, 'The Rainbow Book: Tales of Fun and Fancy', ' (18 Tagalog - Ang Dapat Mabatid ng mga Tagalog by Andres Bonifacio (1863-1897)', 'https://ia902908.us.archive.org/19/items/multilingual_shorts_005_1212/msw005_18_angdapatmabatid_bonifacio_ls_64kb.mp3', 'untitled-3.fw.png');

-- --------------------------------------------------------

--
-- Table structure for table `blrlrms`
--

CREATE TABLE `blrlrms` (
  `module_id` int(11) NOT NULL,
  `title` text NOT NULL,
  `author` text NOT NULL,
  `book_images` text NOT NULL,
  `module_link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blrlrms`
--

INSERT INTO `blrlrms` (`module_id`, `title`, `author`, `book_images`, `module_link`) VALUES
(2, 'Dalawampung Pirasong Hopia', 'by: Camille Jewel L. Garcia', 'dalawampung-pirasong-hopia.fw.png', 'https://drive.google.com/file/d/1voiIAmimOLT3wRExwX_QluwM7F2NLhYe/view'),
(5, 'Ako at ang Aking Karapatan', 'by:Maria Cecilia B. Caǹete', 'ako-at-ang-aking-karapatan.fw.png', 'https://drive.google.com/file/d/1UJ_WiV2nOzSwmEbnS7wl7zvosydnQqjN/view'),
(6, 'Si Amber Independent ', ' by: Josylyn A. Palma', 'si-amber-independent.fw.png', 'https://drive.google.com/file/d/1ozo3wMag4O5_IVPIxDeM4Vfa-Vt9p9K6/view'),
(15, 'Si Monica Dalosdalos', 'by: Knowledge Channel/ Adarna House', 'image_2021-10-05_144125.png', 'https://www.knowledgechannel.org/week3/BKCA000135A_BKCA000135A.mp4'),
(16, 'Ang Mahiwagang Alcohol', 'by: April Ann C. Perez', 'capture.png', 'https://drive.google.com/file/d/1eFKLVYdbY2R9L7vuoykPKPHH-EuzWmZT/view');

-- --------------------------------------------------------

--
-- Table structure for table `carousel_post`
--

CREATE TABLE `carousel_post` (
  `carousel_id` int(11) NOT NULL,
  `carousel_img1` varchar(255) NOT NULL,
  `carousel_img2` varchar(255) NOT NULL,
  `carousel_img3` varchar(255) NOT NULL,
  `carousel_background` varchar(255) NOT NULL,
  `post_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `carousel_post`
--

INSERT INTO `carousel_post` (`carousel_id`, `carousel_img1`, `carousel_img2`, `carousel_img3`, `carousel_background`, `post_date`) VALUES
(1, 'brigada.jpg', 'dep-ed.jpg', 'edukalidad.png', 'logo-images.png', '2023-02-14');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(11) NOT NULL,
  `cat_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'php'),
(2, 'javascript');

-- --------------------------------------------------------

--
-- Table structure for table `co_developed`
--

CREATE TABLE `co_developed` (
  `module_id` int(11) NOT NULL,
  `module_title` text NOT NULL,
  `module_content` text NOT NULL,
  `module_link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `co_developed`
--

INSERT INTO `co_developed` (`module_id`, `module_title`, `module_content`, `module_link`) VALUES
(1, 'depcenor', 'NHCP-Pre recorded Virtual Museums in Metro Manila-2022', 'https://drive.google.com/drive/folders/13q8-rM2VIUKi44LuNlGXYyYJRwqfFx41');

-- --------------------------------------------------------

--
-- Table structure for table `depedtvlessons`
--

CREATE TABLE `depedtvlessons` (
  `module_id` int(11) NOT NULL,
  `grade_level` varchar(50) NOT NULL,
  `quarter` varchar(50) NOT NULL,
  `grade_link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `depedtvlessons`
--

INSERT INTO `depedtvlessons` (`module_id`, `grade_level`, `quarter`, `grade_link`) VALUES
(1, 'grade1', '1st Quarter', 'http://localhost/eLibro/grade1vid.php'),
(2, 'grade2', '1st Quarter', 'http://localhost/eLibro/grade2vid.php'),
(3, 'grade3', '1st Quarter', 'http://localhost/eLibro/grade3vid.php'),
(4, 'grade4', '1st Quarter', 'http://localhost/eLibro/grade4vid.php'),
(5, 'grade4', '1st Quarter', 'http://localhost/eLibro/grade4vid.php'),
(6, 'grade5', '1st Quarter', 'http://localhost/eLibro/grade5vid.php'),
(7, 'grade6', '1st Quarter', 'http://localhost/eLibro/grade6vid.php'),
(8, 'grade7', '1st Quarter', 'http://localhost/eLibro/grade7vid.php'),
(9, 'grade8', '1st Quarter', 'http://localhost/eLibro/grade8vid.php'),
(10, 'grade9', '1st Quarter', 'http://localhost/eLibro/grade9vid.php'),
(11, 'grade10', '1st Quarter', 'http://localhost/eLibro/grade10vid.php'),
(12, 'shs', '1st Quarter', 'http://localhost/eLibro/shsvid.php');

-- --------------------------------------------------------

--
-- Table structure for table `depedvideos`
--

CREATE TABLE `depedvideos` (
  `video_id` int(11) NOT NULL,
  `emodule_title` text NOT NULL,
  `subjectarea` text NOT NULL,
  `grade_level` text NOT NULL,
  `quarter` text NOT NULL,
  `grade_link` text NOT NULL,
  `grade_images` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `depedvideos`
--

INSERT INTO `depedvideos` (`video_id`, `emodule_title`, `subjectarea`, `grade_level`, `quarter`, `grade_link`, `grade_images`) VALUES
(1, 'Grade 1 Araling Panlipunan Q1 Ep1: Mga Batayang Impormasyon Tungkol sa Sarili', 'AP', 'Grade1', '1st Quarter', 'https://www.youtube.com/watch?v=OIIif0L_3rg', 'image1.jpg'),
(4, 'Grade 1 Araling Panlipunan Q1 Ep3: Mga Mahalagang pangyayari at Pagbabago sa Buhay', 'AP', 'Grade1', '1st Quarter', 'https://www.youtube.com/watch?app=desktop&v=F-se11aawsU', '2.jpg'),
(5, 'Grade 1 ESP Q1 Ep1: Pagkilala sa Sarili', 'EsP', 'Grade1', '1st Quarter', 'https://www.youtube.com/watch?v=vjwwnvm1dXc', 'sddefault[1]-(1).jpg'),
(6, 'Grade 1 ESP Q1 Ep2: Pagpapahalaga sa Sarili', 'EsP', 'Grade1', '1st Quarter', 'https://www.youtube.com/watch?v=aXy4I5qNbPE', 'sddefault[1]-(2).jpg'),
(8, 'Grade 1 ESP Q1 Ep3: Pagpapahalaga sa Sarili', 'EsP', 'Grade1', '1st Quarter', 'https://www.youtube.com/watch?v=2LdYEaWzRd0', 'sddefault[1]-(3).jpg'),
(10, 'Grade 1 ESP Q1 Ep5: Pagtukoy sa mga Kilos at Gawain na Nagpapakita ng Pagmamahal', 'EsP', 'Grade1', '1st Quarter', 'https://www.youtube.com/watch?app=desktop&v=Nu5O7_WeTYI', 'sddefault[1]-(4).jpg'),
(12, 'Grade 1 Math Q1 Ep1: Bilang 1 - 50', 'MATH', 'Grade1', '1st Quarter', 'https://www.youtube.com/watch?app=desktop&v=hT02FM2JOos&list=PLt4fcXk5_zMyQpJsQo2nJW4C_qUxRXFP8&index=47', 'sddefault[1]-(5).jpg'),
(13, 'Grade 1 Math Q1 Ep2: Bilang 1-100', 'MATH', 'Grade1', '1st Quarter', 'https://www.youtube.com/watch?app=desktop&v=mJfInXiIXfw&list=PLt4fcXk5_zMyQpJsQo2nJW4C_qUxRXFP8&index=46', 'sddefault[1]-(6).jpg'),
(14, 'Grade 1 Music and Arts Q1 Ep 2 Kilalanin ang Mga gamit', 'MAPEH', 'Grade1', '1st Quarter', 'https://www.youtube.com/watch?v=3dUJ-_LLlX8', 'image_2021-10-12_140240.png'),
(15, 'Grade 2 Araling Panlipunan Q1 Ep1: Mga Batayang Impormasyon Tungkol sa Sarili', 'AP', 'Grade2', '1st Quarter', 'https://www.youtube.com/watch?v=OIIif0L_3rg', 'image1.jpg'),
(16, 'Grade 2 ESP Q1 Ep1: Pagkilala sa Sarili', 'EsP', 'Grade2', '1st Quarter', 'https://www.youtube.com/watch?v=vjwwnvm1dXc', 'sddefault[1]-(1).jpg'),
(17, 'Grade 2 Math Q1 Ep1: Bilang 1 - 50', 'MATH', 'Grade2', '1st Quarter', 'https://www.youtube.com/watch?app=desktop&v=hT02FM2JOos&list=PLt4fcXk5_zMyQpJsQo2nJW4C_qUxRXFP8&index=47', 'sddefault[1]-(5).jpg'),
(18, 'Grade 2 Music and Arts Q1 Ep 2 Kilalanin ang Mga gamit', 'MAPEH', 'Grade2', '1st Quarter', 'https://www.youtube.com/watch?v=3dUJ-_LLlX8', 'image_2021-10-18_204850.png'),
(19, 'Grade 3 Araling Panlipunan Q1 Ep1: Mga Batayang Impormasyon Tungkol sa Sarili', 'AP', 'Grade3', '1st Quarter', 'https://www.youtube.com/watch?v=OIIif0L_3rg', 'image1.jpg'),
(20, 'Grade 1 ESP Q1 Ep2: Pagpapahalaga sa Sarili', 'EsP', 'Grade3', '1st Quarter', 'https://www.youtube.com/watch?v=aXy4I5qNbPE', 'sddefault[1]-(2).jpg'),
(21, 'Grade 1 Math Q1 Ep1: Bilang 1 - 50', 'MATH', 'Grade3', '1st Quarter', 'https://www.youtube.com/watch?app=desktop&v=hT02FM2JOos&list=PLt4fcXk5_zMyQpJsQo2nJW4C_qUxRXFP8&index=47', 'image_2021-10-18_204850.png'),
(22, 'Grade 3 Music and Arts Q1 Ep 3 Iba\'t ibang Kasangkapan at Kagamitan sa Pagguhit ', 'MAPEH', 'Grade3', '1st Quarter', 'https://www.youtube.com/watch?v=F2ptqUVjKZA', 'sddefault[1].jpg');

-- --------------------------------------------------------

--
-- Table structure for table `depsubvid`
--

CREATE TABLE `depsubvid` (
  `video_id` int(11) NOT NULL,
  `title` text NOT NULL,
  `subjectarea` text NOT NULL,
  `quarter` text NOT NULL,
  `grade_level` text NOT NULL,
  `video_link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `depsubvid`
--

INSERT INTO `depsubvid` (`video_id`, `title`, `subjectarea`, `quarter`, `grade_level`, `video_link`) VALUES
(2, 'Grade 4_AP Q2 EP01 Pakinabang Pang-ekonomiko ng Likas na Yaman ng Pilipinas (Unang Bahagi)', 'AP', '2nd Quarter', 'grade 4', 'https://drive.google.com/file/d/1ZCN7BCKMKKu5VdzLPb4a7dF4r3B1azfJ/view'),
(3, 'Grade 3 DTV ESP Q2 Eps01 Mga may Karamdaman Tulungan at Alagaan', 'EsP', '2nd Quarter', 'grade 3', 'https://drive.google.com/file/d/1Y2ErPwVuSJB3UCtjr0wuLSosqMQtMtHs/view'),
(4, 'Grade 3 DTV ESP Q2 Eps01 Mga may Karamdaman Tulungan at Alagaan', 'english', '2nd Quarter', 'grade 3', 'https://drive.google.com/file/d/1Y2ErPwVuSJB3UCtjr0wuLSosqMQtMtHs/view'),
(5, 'Grade 4 DTV FILIPINO Q2 E09 Paglalarawan sa Elemento ng Kuwento', 'filipino', '2nd Quarter', 'grade 4', 'https://drive.google.com/file/d/1XUZklsZA0o9PAfOWu3bzFDfHJJr6FQwH/view'),
(6, 'Grade 3 DTV MUSIC Q2 Eps 01 Pitch O Tinis', 'mapeh', '2nd Quarter', 'grade 3', 'https://drive.google.com/file/d/17HU0iNMLd5rOA1flZOAcZ35vR4wSVXnW/view'),
(7, 'Grade 4 DTV MATH Q2 EP04 Lease Common Multiple', 'math', '2nd Quarter', 'grade 4', 'https://drive.google.com/file/d/14vUsbIixIfZ6jDXuVAqvk4fCBh7XE243/view'),
(8, 'Grade 3 SCIENCE Q2__Eps 01 Human Sense Organs (Part 1)', 'science', '2nd Quarter', 'grade 3', 'https://drive.google.com/file/d/1bZYFiQcmgTtWQq47O3SrZvLkxgEkCAb1/view'),
(9, 'Grade 4 Q2 DTV EPP Eps01 Mga Halamang Ornamental', 'tle epp', '2nd Quarter', 'grade 4', 'https://drive.google.com/file/d/1GJfutNDU3uSY6f2O9kjHWz-K4XOQdzAU/view');

-- --------------------------------------------------------

--
-- Table structure for table `emodules`
--

CREATE TABLE `emodules` (
  `module_id` int(11) NOT NULL,
  `subjectarea` varchar(255) NOT NULL,
  `quarter` varchar(255) NOT NULL,
  `emoduletitle` varchar(255) NOT NULL,
  `grade_level` text NOT NULL,
  `pdf` text NOT NULL,
  `ppt` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emodules`
--

INSERT INTO `emodules` (`module_id`, `subjectarea`, `quarter`, `emoduletitle`, `grade_level`, `pdf`, `ppt`) VALUES
(61, 'AP', '1st Quarter', 'Synonyms and Antonyms', 'grade2', 'msa-training-program.pdf', ''),
(62, 'Fil', '3rd Quarter', 'Tagalog', 'grade1', 'ncr_final_q1_eng10_m6_val.pdf', 'eng10_q4_module5.pptx');

-- --------------------------------------------------------

--
-- Table structure for table `emodule_links`
--

CREATE TABLE `emodule_links` (
  `emd_id` int(11) NOT NULL,
  `grade_links` text NOT NULL,
  `grade_images` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emodule_links`
--

INSERT INTO `emodule_links` (`emd_id`, `grade_links`, `grade_images`) VALUES
(2, 'https://sciencekids.co.nz/', 'image-(1).png'),
(3, 'https://askabiologist.asu.edu/', 'image-(9).png'),
(4, 'https://phet.colorado.edu/', 'image.png'),
(5, 'https://www.gamestolearnenglish.com/', 'image-(3).png'),
(6, 'https://filipinoforkids.com/', 'image-(4).png'),
(7, 'https://www.ck12.org/student/', 'image-(5).png'),
(8, 'https://www.mathsisfun.com/puzzles/measuring-puzzles-index.html?fbclid=IwAR2dPeWtXg7dcMdIfaOReuo8FTpjJh34D8xOc1Yah52WPr9WCDNqPBBvb_A', 'image-(6).png'),
(9, 'http://mathplusresources.com/guest/dashboard', 'image-(7).png'),
(10, 'https://online-go.com/', 'image-(8).png');

-- --------------------------------------------------------

--
-- Table structure for table `emodule_pdfpost`
--

CREATE TABLE `emodule_pdfpost` (
  `emodule_id` int(11) NOT NULL,
  `grade_link` text NOT NULL,
  `grade_images` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emodule_pdfpost`
--

INSERT INTO `emodule_pdfpost` (`emodule_id`, `grade_link`, `grade_images`) VALUES
(10, 'http://localhost/eLibro/view_pdf1.php', 'kidergarten.jpg'),
(11, 'http://localhost/eLibro/view_pdf2.php', '1.jpg'),
(15, 'http://localhost/eLibro/view_pdf3.php', '2.jpg'),
(16, 'http://localhost/eLibro/view_pdf12.php', '12.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `emodule_videos`
--

CREATE TABLE `emodule_videos` (
  `emod_id` int(11) NOT NULL,
  `grade_link` text NOT NULL,
  `grade_images` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emodule_videos`
--

INSERT INTO `emodule_videos` (`emod_id`, `grade_link`, `grade_images`) VALUES
(3, 'https://drive.google.com/file/d/1v_MYaCBTf5DRRdUCTH8BamiR6uSnWbbs/view', 'untitled-1.jpg'),
(4, 'http://localhost/eLibro/sdo_produced_videos.php', 'untitled-1.png'),
(5, 'https://drive.google.com/file/d/1v_MYaCBTf5DRRdUCTH8BamiR6uSnWbbs/view', 'other2.jpg'),
(7, 'http://localhost/elibro/admin/manage_videos.php', '5.fw.png');

-- --------------------------------------------------------

--
-- Table structure for table `emodule_view`
--

CREATE TABLE `emodule_view` (
  `module_id` int(11) NOT NULL,
  `subjectarea` varchar(50) NOT NULL,
  `quarter` varchar(50) NOT NULL,
  `grade_level` varchar(50) NOT NULL,
  `emoduletitle` varchar(50) NOT NULL,
  `pdf` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emodule_view`
--

INSERT INTO `emodule_view` (`module_id`, `subjectarea`, `quarter`, `grade_level`, `emoduletitle`, `pdf`) VALUES
(1, 'English', '1st Quarter', 'kindergarten', 'scscscscscscs', 'accomplish-report.pdf'),
(2, 'APsd', '2nd Quarter', 'kindergarten', 'xcscss', 'accomplish-report.pdf'),
(3, 'EsP', '1st Quarter', 'grade1', 'Pagbilang mula isa hanggang sampu', 'img20220128_11035772.pdf'),
(4, 'AP', '1st Quarter', 'grade1', 'Geograpy', 'alvingumatay1.pdf'),
(5, 'Filipino', '1st Quarter', 'grade1', 'Bayan Kong Sinilangan', 'doc-2022-01-31-12.36.04---copy.pdf'),
(6, 'hrg', '1st Quarter', 'homeroomguidance', 'xcssfsfsf', 'accomplish-report---copy.pdf'),
(7, 'hrg', '2nd Quarter', 'homeroomguidance', 'ddfdf', 'accomplish-report.pdf'),
(8, 'hrg', '2nd Quarter', 'kindergarten', 'vddvd', 'accomplish-report.pdf'),
(9, 'AP', '2nd Quarter', 'grade2', 'Geograpy', 'ar_gumatay.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `emodule_viewpost`
--

CREATE TABLE `emodule_viewpost` (
  `emod_id` int(11) NOT NULL,
  `grade_link` text NOT NULL,
  `grade_images` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emodule_viewpost`
--

INSERT INTO `emodule_viewpost` (`emod_id`, `grade_link`, `grade_images`) VALUES
(29, 'http://localhost/eLibro/kindergarten.php', 'kidergarten.jpg'),
(30, 'http://localhost/eLibro/grade1.php', '1.jpg'),
(31, 'http://localhost/eLibro/grade2.php', 'g2.jpg'),
(32, 'http://localhost/eLibro/grade3.php', '3.jpg'),
(34, 'http://localhost/eLibro/grade4.php', 'untitled.jpg'),
(35, 'http://localhost/eLibro/grade5.php', '11.jpg'),
(36, 'http://localhost/eLibro/grade6.php', '5.jpg'),
(37, 'http://localhost/eLibro/grade7.php', '6.jpg'),
(38, 'http://localhost/eLibro/grade8.php', '7.jpg'),
(39, 'http://localhost/eLibro/grade9.php', '9.jpg'),
(40, 'http://localhost/eLibro/grade9.php', '9.jpg'),
(41, 'http://localhost/eLibro/grade10.php', '10.jpg'),
(42, 'http://localhost/eLibro/homeroomguidance.php', '12.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `fiction`
--

CREATE TABLE `fiction` (
  `module_id` int(11) NOT NULL,
  `module_title` text NOT NULL,
  `module_content` text NOT NULL,
  `module_link` text NOT NULL,
  `book_images` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fiction`
--

INSERT INTO `fiction` (`module_id`, `module_title`, `module_content`, `module_link`, `book_images`) VALUES
(1, 'The Great Gatsby', 'Francis Scott Fitzgerald', 'https://www.pdfbooksworld.com/bibi/pre.html?book=50.epub', 'the-great-gatsby.fw.png'),
(2, 'Romeo and Juliet', 'William Shakespeare', 'https://www.pdfbooksworld.com/bibi/pre.html?book=52.epub', 'romeo-and-juliet.fw-(1).png'),
(3, 'The Adventures of Sherlock Holmes', 'Arthur Conan Doyle', 'https://www.pdfbooksworld.com/bibi/pre.html?book=54.epub', 'romeo-and-juliet.fw-(2).png'),
(4, 'The Wonderful Wizard of Oz', 'Lyman Frank Baum', 'https://www.pdfbooksworld.com/bibi/pre.html?book=58.epub', 'romeo-and-juliet.png'),
(5, 'The Jungle Book', 'Rudyard Kipling', 'https://www.pdfbooksworld.com/bibi/pre.html?book=104.epub', 'romeo-and-juliet.fw.png');

-- --------------------------------------------------------

--
-- Table structure for table `foreign_link`
--

CREATE TABLE `foreign_link` (
  `module_id` int(11) NOT NULL,
  `module_title` text NOT NULL,
  `module_content` text NOT NULL,
  `module_link` text NOT NULL,
  `book_images` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `foreign_link`
--

INSERT INTO `foreign_link` (`module_id`, `module_title`, `module_content`, `module_link`, `book_images`) VALUES
(1, 'Deped Commons', 'CC Search is a tool that allows openly licensed and public domain works to be discovered and used by everyone. Creative Commons, the nonprofit behind CC Search, is the maker of the CC licenses, used over 1.4 billion times to help creators share knowledge and creativity online. CC Search searches across more than 300 million images from open APIs and the Common Crawl dataset. It goes beyond simple search to aggregate results across multiple public repositories into a single catalog, and facilitates reuse through features like machine-generated tags and one-click attribution.', 'https://creativecommons.org/', 'shs-(2).jpg'),
(2, 'OER Commons (teacher resources)', 'OER for K-12 Educators. With the shared teaching tools and strategies, educators are able to adjust their content, pedagogies, and approach based on their learners, without the limitations of “all rights reserved”.', 'https://www.oercommons.org/', 'shs-(3).jpg'),
(3, 'Project Gutenberg', 'Project Gutenberg eBooks require no special apps to read, just the regular Web browsers or eBook readers that are included with computers and mobile devices. You will find the world’s great literature here, with focus on older works under public domain.\r\n\r\nProject Gutenberg was the first provider of free electronic books, or eBooks. Michael Hart, founder of Project Gutenberg, invented eBooks in 1971 and his memory continues to inspire the creation of eBooks and related content today.', 'https://www.gutenberg.org/', 'shs-(4).jpg');

-- --------------------------------------------------------

--
-- Table structure for table `illustration_library`
--

CREATE TABLE `illustration_library` (
  `emodule_id` int(11) NOT NULL,
  `image_link` text NOT NULL,
  `images` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `illustration_library`
--

INSERT INTO `illustration_library` (`emodule_id`, `image_link`, `images`) VALUES
(1, 'https://drive.google.com/file/d/1wn2zHZAXBCJ18Z7U0Kg3Ifo5NHqLL7iM/view?usp=sharing', 'agriculture.fw.png'),
(2, 'https://drive.google.com/file/d/14eANRduMz1SWXP4IX8Oo7bjHSBaeHIu0/view?usp=sharing', 'animals.fw.png'),
(3, 'https://drive.google.com/file/d/15cl6ZUPvBGe4RB7IJ9wQL4DQXg5MsGS2/view?usp=sharing', 'buildings.fw.png'),
(4, 'https://drive.google.com/file/d/1cRs4yUb2q_FZ25_GHOTyVOhtdsw3eCKn/view?usp=sharing', 'food.fw.png'),
(5, 'https://drive.google.com/file/d/1cQb4XCs9MirzwGgdkQ-BFT7bIhC5Wd7k/view?usp=sharing', 'geography.jpg'),
(6, 'https://drive.google.com/file/d/1cKgSZT199cqu_n93CGpYx5_7jK7FLZca/view?usp=sharing', 'lr.jpg'),
(7, 'https://drive.google.com/file/d/1gPq9b5wlG75RH7b5gNzI8zXGr-2V6VPu/view?usp=sharing', 'mapeh.jpg'),
(8, 'https://drive.google.com/file/d/1pUm4aG91HloXwFj43JFoW6b51n61BOK1/view?usp=sharing', 'objects.jpg'),
(9, 'https://drive.google.com/file/d/1bxQLJd2Xn1At-_uD8fKugRGS1fD7T8WJ/view?usp=sharing', 'people.jpg'),
(10, 'https://drive.google.com/file/d/1RQxu8JjlMr3_JySw4iia2XoZQQRG7XRZ/view?usp=sharing', 'places.jpg'),
(11, 'https://drive.google.com/file/d/10FucwsP3ou2VG6_HoIuIyZD7IsB-At50/view?usp=sharing', 'shapes.jpg'),
(12, 'https://drive.google.com/file/d/1itqmRfFo5M0qNJk2duuUm-IIag7CicL7/view?usp=sharing', 'transportation.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `kuwentongpambata`
--

CREATE TABLE `kuwentongpambata` (
  `module_id` int(11) NOT NULL,
  `title` text NOT NULL,
  `author` text NOT NULL,
  `learncompetency` text NOT NULL,
  `book_images` text NOT NULL,
  `module_link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kuwentongpambata`
--

INSERT INTO `kuwentongpambata` (`module_id`, `title`, `author`, `learncompetency`, `book_images`, `module_link`) VALUES
(1, 'Asul na Araw', 'by: Knowledge Channel/ Adarna House', 'Learning Competency: Sort and classify objects according to one attribute/property (shape, color, size, function/use)', 'image_2021-09-21_110216.png', 'https://www.knowledgechannel.org/week1/BKCA000107A_BKCA000107A.mp4'),
(2, 'Si Monica Dalosdalos', 'by: Knowledge Channel/ Adarna House', 'Learning Competency: Nakikilala ang mga pangunahing emosyon', 'image_2021-10-05_144125.png', 'https://www.knowledgechannel.org/week3/BKCA000135A_BKCA000135A.mp4'),
(3, 'Magnificent Benito', 'by: Knowledge Channel/ Adarna House', 'Learning Competency:  Identify one’s basic body parts', 'image_2021-10-05_144734.png', 'https://www.knowledgechannel.org/week3/BKCA000095A_BKCA000095A.mp4'),
(4, 'Filemon Mamon', 'by: Knowledge Channel/ Adarna House', 'Learning Competency:  Practice ways to care for one’s body ', 'image_2021-10-05_145031.png', 'https://www.knowledgechannel.org/week4/BKCA000112A.mp4'),
(5, 'Si Pilong Patago-tago', 'by: Knowledge Channel/ Adarna House', 'Learning Competency:  Natutukoy kung sino-sino ang bumubuo ng pamilya ', 'image_2021-10-05_145256.png', 'https://www.knowledgechannel.org/week5/BKCA000137A.mp4');

-- --------------------------------------------------------

--
-- Table structure for table `lasenglish`
--

CREATE TABLE `lasenglish` (
  `module_id` int(11) NOT NULL,
  `module_title` text NOT NULL,
  `module_content` text NOT NULL,
  `module_link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lasenglish`
--

INSERT INTO `lasenglish` (`module_id`, `module_title`, `module_content`, `module_link`) VALUES
(1, 'Fuller Approach', 'Lesson 1 - Short e - en Family', 'https://drive.google.com/file/d/17NqM2jYCHjodNWeOHA6vlDCTi1sUMVcs/view'),
(2, 'Fuller Approach', 'Lesson 2 - Short e - ed  Family', 'https://drive.google.com/file/d/1ANAYv5x9aSJ2e1K_0dMOVN9bP-uWpWaj/view'),
(3, 'Phonemic Awareness', 'Learning Activity Sheets (LAS) Phonemic Awareness - Lesson 1', 'https://drive.google.com/file/d/1Et9oofB29meryBNYaw1nCOAVfkWbBLfx/view');

-- --------------------------------------------------------

--
-- Table structure for table `lasmtb-mle`
--

CREATE TABLE `lasmtb-mle` (
  `module_id` int(11) NOT NULL,
  `module_title` text NOT NULL,
  `module_content` text NOT NULL,
  `module_link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `lasmtbmle`
--

CREATE TABLE `lasmtbmle` (
  `module_id` int(11) NOT NULL,
  `module_title` text NOT NULL,
  `module_content` text NOT NULL,
  `module_link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lasmtbmle`
--

INSERT INTO `lasmtbmle` (`module_id`, `module_title`, `module_content`, `module_link`) VALUES
(1, 'Murungko Approach', 'Learning Activity Sheets (LAS) Murungko Awareness - Lesson 1', 'https://drive.google.com/file/d/1ozo3wMag4O5_IVPIxDeM4Vfa-Vt9p9K6/view');

-- --------------------------------------------------------

--
-- Table structure for table `lasworksheets`
--

CREATE TABLE `lasworksheets` (
  `module_id` int(11) NOT NULL,
  `subjectarea` text NOT NULL,
  `quarter` text NOT NULL,
  `grade_level` text NOT NULL,
  `emoduletitle` text NOT NULL,
  `module_link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lasworksheets`
--

INSERT INTO `lasworksheets` (`module_id`, `subjectarea`, `quarter`, `grade_level`, `emoduletitle`, `module_link`) VALUES
(1, 'English', '1st Quarter', 'grade1', 'The Pronounciation and linking verbs', 'https://drive.google.com/file/d/1ozo3wMag4O5_IVPIxDeM4Vfa-Vt9p9K6/view');

-- --------------------------------------------------------

--
-- Table structure for table `local_link`
--

CREATE TABLE `local_link` (
  `module_id` int(11) NOT NULL,
  `module_title` text NOT NULL,
  `module_content` text NOT NULL,
  `module_link` text NOT NULL,
  `book_images` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `local_link`
--

INSERT INTO `local_link` (`module_id`, `module_title`, `module_content`, `module_link`, `book_images`) VALUES
(2, 'Deped Commons', 'DepEd’s new online educational platform for teachers and learners that supports alternative learning modalities, also accessible to ALS and private school students. Click and log-in with School ID/Name and email address to access eBooks and video lessons.\r\n\r\nMobile subscribers can have a FREE access to the site. However, links that require access to the internet outside the Commons Domain may incur standard data charges.', 'https://commons.deped.gov.ph/', 'shs.jpg'),
(3, 'DepEd Learning Resources portal', 'the LR Portal is a web based catalogue and repository of learning, teaching and professional development resources. It functions as a clearinghouse. That is, it provides information about the location of resources and allows users of the system to access directly digitized versions of resources that are published and stored within the LR Portal repository. It is also a quality assurance system providing support to DepED Regions, Divisions and Schools in the selection and acquisition of quality digital and non-digital resources in response to identified local educational needs.', 'https://lrmds.deped.gov.ph/', 'shs-(1).jpg'),
(5, 'PCAARRD eLibrary', 'The Philippine Council for Agriculture, Aquatic and Natural Resources Research and Development (DOST-PCAARRD) publications in agriculture, aquatic, and natural resources (AANR) sector can be accessed and downloaded online for free.', 'http://pcaarrd.dost.gov.ph/', 'shs-(6).jpg'),
(6, 'fbfb', 'bffb', 'fbfb', 'untitled.png');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `action_made` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `lr_trainings_activities`
--

CREATE TABLE `lr_trainings_activities` (
  `module_id` int(11) NOT NULL,
  `activitytitle` text NOT NULL,
  `activity_link` text NOT NULL,
  `date_created` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lr_trainings_activities`
--

INSERT INTO `lr_trainings_activities` (`module_id`, `activitytitle`, `activity_link`, `date_created`) VALUES
(2, 'Division Training of Trainers to Accomodate Learning-Needs via Effective Delivery (Total Ed)', 'http://localhost/elibro/lr_trainings&activities.php', 'August 9-22, 2022'),
(3, 'Alignment of Available Learning Resources cum Workshop on Curriculum Mapping Q2', 'http://localhost/elibro/index.php', 'April 2, 2023');

-- --------------------------------------------------------

--
-- Table structure for table `mr_post`
--

CREATE TABLE `mr_post` (
  `mrpost_id` int(11) NOT NULL,
  `cont_img` varchar(255) NOT NULL,
  `content_header` varchar(255) NOT NULL,
  `content_title` varchar(255) NOT NULL,
  `content_credits` varchar(255) NOT NULL,
  `date_by` varchar(255) NOT NULL,
  `content_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mr_post`
--

INSERT INTO `mr_post` (`mrpost_id`, `cont_img`, `content_header`, `content_title`, `content_credits`, `date_by`, `content_date`) VALUES
(1, '', 'Advocacy Video', '<p>Vote Wisely: the 16 Presidents of the Republic of the Philippines</p>\r\n', 'credits to: Marikina City eLearning Program', 'April 13, 2021', '2023-05-07');

-- --------------------------------------------------------

--
-- Table structure for table `ncrworksheets`
--

CREATE TABLE `ncrworksheets` (
  `module_id` int(11) NOT NULL,
  `subjectarea` text NOT NULL,
  `quarter` text NOT NULL,
  `grade_level` text NOT NULL,
  `emoduletitle` text NOT NULL,
  `module_link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ncrworksheets`
--

INSERT INTO `ncrworksheets` (`module_id`, `subjectarea`, `quarter`, `grade_level`, `emoduletitle`, `module_link`) VALUES
(1, 'English', '1st Quarter', 'grade1', 'Final Worksheets Grade 1 Familiar WOrds', 'https://drive.google.com/file/d/1A13Jo8xzmZkKVusu4KDEGK5vtfIHSdKY/view');

-- --------------------------------------------------------

--
-- Table structure for table `ncr_developed`
--

CREATE TABLE `ncr_developed` (
  `module_id` int(11) NOT NULL,
  `module_title` text NOT NULL,
  `module_content` text NOT NULL,
  `module_link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ncr_developed`
--

INSERT INTO `ncr_developed` (`module_id`, `module_title`, `module_content`, `module_link`) VALUES
(1, 'documents_guide', 'Deped NCR PRIME Grid for Sepetember 2021', 'https://drive.google.com/file/d/15WNmS029JJsGMYuaqlC06FwUUSm4LUAI/view'),
(3, 'ncr_developed_worksheets', 'Grade1', 'http://localhost/eLibro/view_ncrworksheets1.php'),
(4, 'USLeM', 'Grade1', 'http://localhost/eLibro/view_uslem1.php'),
(5, 'LAS', 'Grade1', 'http://localhost/eLibro/view_las1.php');

-- --------------------------------------------------------

--
-- Table structure for table `nonfiction`
--

CREATE TABLE `nonfiction` (
  `module_id` int(11) NOT NULL,
  `module_title` text NOT NULL,
  `content` text NOT NULL,
  `module_link` text NOT NULL,
  `book_images` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nonfiction`
--

INSERT INTO `nonfiction` (`module_id`, `module_title`, `content`, `module_link`, `book_images`) VALUES
(3, 'Historical Dictionary of the Philippines, 2nd Edition ', '617 Pages', 'https://www.pdfdrive.com/historical-dictionary-of-the-philippines-2nd-edition-historical-dictionaries-of-asia-oceania-and-the-middle-east-e185173101.html', 'historical-dictionary-of-the-philippines,-2nd-edition.png'),
(4, 'The History of the Philippines (The Greenwood Histories of the Modern Nations)', '160 pages 2008 ed.', 'https://www.pdfdrive.com/the-history-of-the-philippines-the-greenwood-histories-of-the-modern-nations-e186052105.html', '2.fw.png'),
(5, 'Philippine Literature - Philippine Culture', '286 pp. 2010 ed.', 'https://www.pdfdrive.com/philippine-literature-philippine-culture-e5139869.html', '3.fw.png'),
(6, 'Tagalog Grammar', '115 pp. 2016 ed.', 'https://www.pdfdrive.com/galo-tagalog-grammar-e187644423.html', '5.fw.png'),
(7, 'The Social Cancer: A Complete English Version of Noli Me Tangere, by José Rizal', '82 pp', 'https://www.pdfdrive.com/the-social-cancer-a-complete-english-version-of-noli-me-tangere-by-jos%C3%A9-rizal-e44775568.html', '4.fw.png');

-- --------------------------------------------------------

--
-- Table structure for table `pdm`
--

CREATE TABLE `pdm` (
  `module_id` int(11) NOT NULL,
  `pdm_title` text NOT NULL,
  `pdm_link` text NOT NULL,
  `pdm_images` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pdm`
--

INSERT INTO `pdm` (`module_id`, `pdm_title`, `pdm_link`, `pdm_images`) VALUES
(1, 'The Flipped Classroom Model', 'https://www.youtube.com/watch?v=qdKzSq_t8k8&embeds_euri=https%3A%2F%2Fsites.google.com%2F&feature=emb_logo&ab_channel=Sprouts', 'capture.jpg'),
(2, 'Copyright Reference book Intellectual Property Office - Philippines', 'https://drive.google.com/drive/u/1/folders/1VlB-KEdZBxcpgFOItdFW9f0JQpf9AdAY', 'capture2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `poster_id` int(11) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_content` text NOT NULL,
  `post_date` date NOT NULL,
  `post_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`poster_id`, `post_title`, `post_content`, `post_date`, `post_image`) VALUES
(66, 'Overview', '                                                <p>Programs SPEAR&rsquo;s flagship initiative called eLibRO serves as a repository of print and non-print localized and contextualized modules, books, scholarly journals, online resources, government sources, multimedia, and audio-video files that aimed at enhancing knowledge and harnessing skills of its users. This user-friendly general reference tool addresses the learning needs of the students who are expected to develop or meet the 21st century skills to succeed in the so-called Information Age.</p>\r\n', '2023-05-18', 'elibro.gif');

-- --------------------------------------------------------

--
-- Table structure for table `readingguidancematerials`
--

CREATE TABLE `readingguidancematerials` (
  `rguidmat_id` int(11) NOT NULL,
  `reading_title` text NOT NULL,
  `reading_desc` text NOT NULL,
  `reading_link` text NOT NULL,
  `reading_images` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `readingguidancematerials`
--

INSERT INTO `readingguidancematerials` (`rguidmat_id`, `reading_title`, `reading_desc`, `reading_link`, `reading_images`) VALUES
(2, 'Psychological Support Activity Pack', '\r\nFor Teachers (Kinder, Grades 1-3, and Senior High School)', 'https://drive.google.com/file/d/1bnyVSqiN4hvnAjYHACh5qEKbs_fJPtJ1/view', '1.png'),
(3, 'Remote Psychosocial Support through play', 'For Elementary Learners', 'https://drive.google.com/file/d/1pW2FqPvgxjWV9aHwkbo3H-kAhZin2LGr/view', '2.png'),
(4, 'The 2020 Online and Self-Guided PFA Modules', 'Supplemental to the SEES Manual', 'https://drive.google.com/file/d/1pW2FqPvgxjWV9aHwkbo3H-kAhZin2LGr/view', '3.png'),
(5, '4 Psychosocial Support Evaluation Guide', '', 'https://drive.google.com/file/d/1drhBnTeoZHKIE2r09dzZqukDKBlBg26M/view', '4.png'),
(6, ' The Philippine Informal Reading Inventory Manual (PHIL-IRI) 2018 ', 'Philippine Informal Reading Inventory Manual', 'D.O. # 14, S. 2018      PHIL-IRI Full Package (v1)      Essential Information about PHIL-IRI      General Directions for the Administration of PHIL-IRI      The four stages in the Administration of PHIL-IRI 2018', '5.png'),
(7, 'Alternative Delivery Mode Learning Resource Standards', '', 'https://drive.google.com/file/d/1bnyVSqiN4hvnAjYHACh5qEKbs_fJPtJ1/view', '6.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `scistory`
--

CREATE TABLE `scistory` (
  `module_id` int(11) NOT NULL,
  `title` text NOT NULL,
  `author` text NOT NULL,
  `book_images` text NOT NULL,
  `module_link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `scistory`
--

INSERT INTO `scistory` (`module_id`, `title`, `author`, `book_images`, `module_link`) VALUES
(1, 'Ang Mahiwagang Alcohol', 'by: April Ann C. Perez', 'capture.png', 'https://drive.google.com/file/d/1eFKLVYdbY2R9L7vuoykPKPHH-EuzWmZT/view'),
(2, 'Misteryosong Pagkawala ng Tubig', 'by: Michelle R. Doromal', 'capture-(1).png', 'https://drive.google.com/file/d/1_ARBOWSWHgB9D6fRUEYoW0OPSIn2HQcM/view'),
(3, 'Pag-asa sa Gitna ng Pandemya', 'by: April Ann C. Perez', 'capture-(2).png', 'https://sites.google.com/depedmarikina.ph/elibroproject/e-resources/storybooks/scistory'),
(4, 'Mga Halamang Nagpapaligsahan', 'by: Maynardita S. Timpac', 'capture-(3).png', 'https://drive.google.com/file/d/1QKi8cjhnZNxV2LBx3rRwC8M0ilCnm3u3/view'),
(5, 'Ang Paglusaw ng Kandila', 'by: Geraldine G. Paredes', 'capture-(4).png', 'https://drive.google.com/file/d/1NMpsvpGIpNoCD7vU_q0U7PK7yedswFEr/view');

-- --------------------------------------------------------

--
-- Table structure for table `sdomarwebrec`
--

CREATE TABLE `sdomarwebrec` (
  `module_id` int(11) NOT NULL,
  `webrec_title` text NOT NULL,
  `webrec_author` text NOT NULL,
  `webrec_link` text NOT NULL,
  `webrec_images` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sdomarwebrec`
--

INSERT INTO `sdomarwebrec` (`module_id`, `webrec_title`, `webrec_author`, `webrec_link`, `webrec_images`) VALUES
(1, 'Basic Hosting', 'Paulo Bediones', 'https://drive.google.com/file/d/1MzG4qL4qQprfvnSctswGkT49MxhyPxWL/view', 'capture3.jpg'),
(2, 'Building Confidence in front of the Camera ', 'by Mr. Marco Paolo Victoriano', 'https://drive.google.com/file/d/1ETxKWRFMGwqDTwGNy8dUThWbhbJbvR4N/view', 'capture4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `sdovideo`
--

CREATE TABLE `sdovideo` (
  `video_id` int(11) NOT NULL,
  `emodule_title` varchar(50) NOT NULL,
  `grade_link` text NOT NULL,
  `grade_images` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sdovideo`
--

INSERT INTO `sdovideo` (`video_id`, `emodule_title`, `grade_link`, `grade_images`) VALUES
(4, 'G2 English Musical Instruments', 'https://www.youtube.com/watch?v=UZqmlLU_SjY&feature=youtu.be', 'image_2021-10-18_204426.png'),
(5, 'G2 English Animal Sounds', 'https://www.youtube.com/watch?v=7gUUIhnwkvo&feature=youtu.be', 'image_2021-10-18_204624.png'),
(6, 'Araling Panlipunan Video Lesson 1', 'https://www.youtube.com/watch?v=4UvQKAXqEZw&feature=youtu.be', 'image_2021-10-18_204747.png'),
(7, 'Araling Panlipunan Video Lesson 2', 'https://www.youtube.com/watch?v=513yB-THn-M&feature=youtu.be', 'image_2021-10-18_204850.png');

-- --------------------------------------------------------

--
-- Table structure for table `sdo_developed`
--

CREATE TABLE `sdo_developed` (
  `module_id` int(11) NOT NULL,
  `module_title` text NOT NULL,
  `module_author` text NOT NULL,
  `module_link` text NOT NULL,
  `book_images` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sdo_developed`
--

INSERT INTO `sdo_developed` (`module_id`, `module_title`, `module_author`, `module_link`, `book_images`) VALUES
(1, 'Distance Learning Teachers\' Handbook', '2020 edition', 'https://drive.google.com/file/d/184C7u3s5K0FLrZ3XdwNFW11zmKVim3Iy/view', 'image.png'),
(2, 'Gabay sa Paggamit ng Modyul at elearning Platform', 'Grades 7-12, ALS', 'https://drive.google.com/file/d/1sBYZ3vAtgV7-_vW66ZxkqLdyLa8entAp/view', 'image2.png'),
(3, 'Gabay sa Paggamit ng Modyul', 'Kinder-6,ALS', 'https://drive.google.com/file/d/1MXPY2FiuW4-yoKpB-sH5nii0Efqi4yBQ/view', 'image3.png'),
(4, 'Distance Education: Manwal para sa Magulang', 'none', 'https://drive.google.com/file/d/1sBYZ3vAtgV7-_vW66ZxkqLdyLa8entAp/view', 'image4.png'),
(5, 'Reading Matters 1 - Developing Reading Skills for Grade 7 Learners', 'by: Mr. Cyril P. Santos and  Ms. Kendra Fe I. Adordionisio', 'https://drive.google.com/file/d/1sBYZ3vAtgV7-_vW66ZxkqLdyLa8entAp/view', 'reading-matters-1.fw.png'),
(6, '2021 National Reading Month Virtual Culminating Program', 'by: JDPNHS-English Department', 'https://drive.google.com/file/d/1sBYZ3vAtgV7-_vW66ZxkqLdyLa8entAp/view', 'image_2021-12-06_100650.png');

-- --------------------------------------------------------

--
-- Table structure for table `search`
--

CREATE TABLE `search` (
  `src_id` int(11) NOT NULL,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `search`
--

INSERT INTO `search` (`src_id`, `title`, `content`, `url`) VALUES
(1, 'Home', 'About Elibro Home Page it is the main page of ebook', 'http://localhost/elibro/index.php'),
(2, 'About Us', 'The page more details about elibro and excutives of deped marikina contributes for project development for teachers and students', 'http://localhost/elibro/aboutus.php'),
(3, 'emodule', 'the page all about the emodules alternative studies and interactive modules for students', 'http://localhost/elibro/emodules_index.php'),
(4, 'emodules', 'more content is available on elibro', 'http://localhost/elibro/emodules_view.php'),
(5, 'Local video lessons', 'it is  local made from videos in deped marikina and other school ', 'http://localhost/elibro/videos_library.php'),
(6, 'Deped TV', 'This is about deped tv lessons from national for teachers and professional teachers who teach students for video lessons', 'http://localhost/elibro/depedtv_lessons.php');

-- --------------------------------------------------------

--
-- Table structure for table `suggestform`
--

CREATE TABLE `suggestform` (
  `suggest_id` int(11) NOT NULL,
  `fullname` text NOT NULL,
  `complaints` text NOT NULL,
  `suggestion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `suggestform`
--

INSERT INTO `suggestform` (`suggest_id`, `fullname`, `complaints`, `suggestion`) VALUES
(1, 'Alvin Gumatay', ' css', ' sff');

-- --------------------------------------------------------

--
-- Table structure for table `surveyform`
--

CREATE TABLE `surveyform` (
  `surv_id` int(11) NOT NULL,
  `fullname` text NOT NULL,
  `question2` text NOT NULL,
  `question3` text NOT NULL,
  `question4` text NOT NULL,
  `question5` text NOT NULL,
  `question6` text NOT NULL,
  `question7` text NOT NULL,
  `question8` text NOT NULL,
  `question9` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `surveyform`
--

INSERT INTO `surveyform` (`surv_id`, `fullname`, `question2`, `question3`, `question4`, `question5`, `question6`, `question7`, `question8`, `question9`) VALUES
(1, 'Alvin Gumatay', 'yes i know it', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes'),
(2, '', '', '', '', '', '', '', '', ''),
(3, '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `mobile` text NOT NULL,
  `image` text DEFAULT NULL,
  `usertype` enum('admin','teacher','student','') NOT NULL,
  `status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`id`, `name`, `email`, `password`, `gender`, `mobile`, `image`, `usertype`, `status`) VALUES
(1, 'Alv T Gyts', 'admin@admin.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Male', '', '', 'admin', 1),
(2, 'juan dela cruz', 'juandelacruz@gmail.com', '202cb962ac59075b964b07152d234b70', 'male', '09222222888', '', 'admin', 1),
(8, 'Als Dep', 'alsdeped13@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Male', '09868686867', 'agriculture.fw.png', 'teacher', 1);

-- --------------------------------------------------------

--
-- Table structure for table `uslemworksheets`
--

CREATE TABLE `uslemworksheets` (
  `module_id` int(11) NOT NULL,
  `subjectarea` text NOT NULL,
  `quarter` text DEFAULT NULL,
  `grade_level` text NOT NULL,
  `emoduletitle` text NOT NULL,
  `module_link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `uslemworksheets`
--

INSERT INTO `uslemworksheets` (`module_id`, `subjectarea`, `quarter`, `grade_level`, `emoduletitle`, `module_link`) VALUES
(2, 'English', '1st Quarter', 'grade1', 'Module1 - Rhyming Words', 'https://drive.google.com/file/d/1mnrLmDVJbNGoNOUwNqG-faaM-3WmsoNM/view'),
(3, 'English', '1st Quarter', 'grade1', 'Recognizing sentences', 'https://drive.google.com/file/d/13JViofkSiSdT_zhs585t9p_1Ojwien8w/view'),
(4, 'Filipino', '2nd Quarter', 'grade1', 'Modyul 1: Pagsagot sa mga Tanong Tungkol sa Napakinggang Pabula, Tugma/Tula at Tekstong Pang-impormasyon', 'https://drive.google.com/file/d/1DwqDTr9x_NzcfzWG51dkH-TZqXaUUEBX/view'),
(5, 'mtb-mle', '1st Quarter', 'grade1', 'Unang Markahan-Modyul 1: Pagsasabi Tungkol sa Sarili at Personal na Karanasan', 'https://drive.google.com/file/d/1RNPafxBW35OtnEOeRaxuvN7oAxN2S_IW/view'),
(6, 'mtb-mle', '1st Quarter', 'grade1', 'Unang Markahan-Modyul 1: Pagsasabi Tungkol sa Sarili at Personal na Karanasan', 'https://drive.google.com/file/d/1RNPafxBW35OtnEOeRaxuvN7oAxN2S_IW/view');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accessform`
--
ALTER TABLE `accessform`
  ADD PRIMARY KEY (`access_id`);

--
-- Indexes for table `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `articleleft2_post`
--
ALTER TABLE `articleleft2_post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `articleleft_post`
--
ALTER TABLE `articleleft_post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `articleright_post`
--
ALTER TABLE `articleright_post`
  ADD PRIMARY KEY (`contid`),
  ADD UNIQUE KEY `content_id` (`contid`);

--
-- Indexes for table `article_post`
--
ALTER TABLE `article_post`
  ADD PRIMARY KEY (`article_id`),
  ADD UNIQUE KEY `article_id` (`article_id`);

--
-- Indexes for table `audiobooks`
--
ALTER TABLE `audiobooks`
  ADD PRIMARY KEY (`audio_id`);

--
-- Indexes for table `blrlrms`
--
ALTER TABLE `blrlrms`
  ADD PRIMARY KEY (`module_id`);

--
-- Indexes for table `carousel_post`
--
ALTER TABLE `carousel_post`
  ADD PRIMARY KEY (`carousel_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `co_developed`
--
ALTER TABLE `co_developed`
  ADD PRIMARY KEY (`module_id`);

--
-- Indexes for table `depedtvlessons`
--
ALTER TABLE `depedtvlessons`
  ADD PRIMARY KEY (`module_id`);

--
-- Indexes for table `depedvideos`
--
ALTER TABLE `depedvideos`
  ADD PRIMARY KEY (`video_id`);

--
-- Indexes for table `depsubvid`
--
ALTER TABLE `depsubvid`
  ADD PRIMARY KEY (`video_id`);

--
-- Indexes for table `emodules`
--
ALTER TABLE `emodules`
  ADD PRIMARY KEY (`module_id`),
  ADD UNIQUE KEY `module_id` (`module_id`);

--
-- Indexes for table `emodule_links`
--
ALTER TABLE `emodule_links`
  ADD PRIMARY KEY (`emd_id`),
  ADD UNIQUE KEY `emodule_id` (`emd_id`);

--
-- Indexes for table `emodule_pdfpost`
--
ALTER TABLE `emodule_pdfpost`
  ADD PRIMARY KEY (`emodule_id`),
  ADD UNIQUE KEY `emodule_id` (`emodule_id`);

--
-- Indexes for table `emodule_videos`
--
ALTER TABLE `emodule_videos`
  ADD PRIMARY KEY (`emod_id`);

--
-- Indexes for table `emodule_view`
--
ALTER TABLE `emodule_view`
  ADD PRIMARY KEY (`module_id`),
  ADD UNIQUE KEY `module_id` (`module_id`);

--
-- Indexes for table `emodule_viewpost`
--
ALTER TABLE `emodule_viewpost`
  ADD PRIMARY KEY (`emod_id`),
  ADD UNIQUE KEY `id` (`emod_id`);

--
-- Indexes for table `fiction`
--
ALTER TABLE `fiction`
  ADD PRIMARY KEY (`module_id`);

--
-- Indexes for table `foreign_link`
--
ALTER TABLE `foreign_link`
  ADD PRIMARY KEY (`module_id`);

--
-- Indexes for table `illustration_library`
--
ALTER TABLE `illustration_library`
  ADD PRIMARY KEY (`emodule_id`),
  ADD UNIQUE KEY `emodule_id` (`emodule_id`);

--
-- Indexes for table `kuwentongpambata`
--
ALTER TABLE `kuwentongpambata`
  ADD PRIMARY KEY (`module_id`);

--
-- Indexes for table `lasenglish`
--
ALTER TABLE `lasenglish`
  ADD PRIMARY KEY (`module_id`);

--
-- Indexes for table `lasmtb-mle`
--
ALTER TABLE `lasmtb-mle`
  ADD PRIMARY KEY (`module_id`),
  ADD UNIQUE KEY `module_id` (`module_id`);

--
-- Indexes for table `lasmtbmle`
--
ALTER TABLE `lasmtbmle`
  ADD PRIMARY KEY (`module_id`);

--
-- Indexes for table `lasworksheets`
--
ALTER TABLE `lasworksheets`
  ADD PRIMARY KEY (`module_id`),
  ADD UNIQUE KEY `module_id` (`module_id`);

--
-- Indexes for table `local_link`
--
ALTER TABLE `local_link`
  ADD PRIMARY KEY (`module_id`);

--
-- Indexes for table `lr_trainings_activities`
--
ALTER TABLE `lr_trainings_activities`
  ADD PRIMARY KEY (`module_id`);

--
-- Indexes for table `mr_post`
--
ALTER TABLE `mr_post`
  ADD PRIMARY KEY (`mrpost_id`);

--
-- Indexes for table `ncrworksheets`
--
ALTER TABLE `ncrworksheets`
  ADD PRIMARY KEY (`module_id`),
  ADD UNIQUE KEY `module_id` (`module_id`);

--
-- Indexes for table `ncr_developed`
--
ALTER TABLE `ncr_developed`
  ADD PRIMARY KEY (`module_id`);

--
-- Indexes for table `nonfiction`
--
ALTER TABLE `nonfiction`
  ADD PRIMARY KEY (`module_id`);

--
-- Indexes for table `pdm`
--
ALTER TABLE `pdm`
  ADD PRIMARY KEY (`module_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`poster_id`);

--
-- Indexes for table `readingguidancematerials`
--
ALTER TABLE `readingguidancematerials`
  ADD PRIMARY KEY (`rguidmat_id`);

--
-- Indexes for table `scistory`
--
ALTER TABLE `scistory`
  ADD PRIMARY KEY (`module_id`);

--
-- Indexes for table `sdomarwebrec`
--
ALTER TABLE `sdomarwebrec`
  ADD PRIMARY KEY (`module_id`);

--
-- Indexes for table `sdovideo`
--
ALTER TABLE `sdovideo`
  ADD PRIMARY KEY (`video_id`);

--
-- Indexes for table `sdo_developed`
--
ALTER TABLE `sdo_developed`
  ADD PRIMARY KEY (`module_id`);

--
-- Indexes for table `search`
--
ALTER TABLE `search`
  ADD PRIMARY KEY (`src_id`);

--
-- Indexes for table `suggestform`
--
ALTER TABLE `suggestform`
  ADD PRIMARY KEY (`suggest_id`);

--
-- Indexes for table `surveyform`
--
ALTER TABLE `surveyform`
  ADD PRIMARY KEY (`surv_id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uslemworksheets`
--
ALTER TABLE `uslemworksheets`
  ADD PRIMARY KEY (`module_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accessform`
--
ALTER TABLE `accessform`
  MODIFY `access_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `activity`
--
ALTER TABLE `activity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=312;

--
-- AUTO_INCREMENT for table `articleleft2_post`
--
ALTER TABLE `articleleft2_post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `articleleft_post`
--
ALTER TABLE `articleleft_post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `articleright_post`
--
ALTER TABLE `articleright_post`
  MODIFY `contid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `article_post`
--
ALTER TABLE `article_post`
  MODIFY `article_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `audiobooks`
--
ALTER TABLE `audiobooks`
  MODIFY `audio_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `blrlrms`
--
ALTER TABLE `blrlrms`
  MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `carousel_post`
--
ALTER TABLE `carousel_post`
  MODIFY `carousel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `co_developed`
--
ALTER TABLE `co_developed`
  MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `depedtvlessons`
--
ALTER TABLE `depedtvlessons`
  MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `depedvideos`
--
ALTER TABLE `depedvideos`
  MODIFY `video_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `depsubvid`
--
ALTER TABLE `depsubvid`
  MODIFY `video_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `emodules`
--
ALTER TABLE `emodules`
  MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `emodule_links`
--
ALTER TABLE `emodule_links`
  MODIFY `emd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `emodule_pdfpost`
--
ALTER TABLE `emodule_pdfpost`
  MODIFY `emodule_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `emodule_videos`
--
ALTER TABLE `emodule_videos`
  MODIFY `emod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `emodule_view`
--
ALTER TABLE `emodule_view`
  MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `emodule_viewpost`
--
ALTER TABLE `emodule_viewpost`
  MODIFY `emod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `fiction`
--
ALTER TABLE `fiction`
  MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `foreign_link`
--
ALTER TABLE `foreign_link`
  MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `illustration_library`
--
ALTER TABLE `illustration_library`
  MODIFY `emodule_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `kuwentongpambata`
--
ALTER TABLE `kuwentongpambata`
  MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `lasenglish`
--
ALTER TABLE `lasenglish`
  MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `lasmtbmle`
--
ALTER TABLE `lasmtbmle`
  MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lasworksheets`
--
ALTER TABLE `lasworksheets`
  MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `local_link`
--
ALTER TABLE `local_link`
  MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `lr_trainings_activities`
--
ALTER TABLE `lr_trainings_activities`
  MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mr_post`
--
ALTER TABLE `mr_post`
  MODIFY `mrpost_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `ncrworksheets`
--
ALTER TABLE `ncrworksheets`
  MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ncr_developed`
--
ALTER TABLE `ncr_developed`
  MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `nonfiction`
--
ALTER TABLE `nonfiction`
  MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pdm`
--
ALTER TABLE `pdm`
  MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `poster_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `readingguidancematerials`
--
ALTER TABLE `readingguidancematerials`
  MODIFY `rguidmat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `scistory`
--
ALTER TABLE `scistory`
  MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sdomarwebrec`
--
ALTER TABLE `sdomarwebrec`
  MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sdovideo`
--
ALTER TABLE `sdovideo`
  MODIFY `video_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sdo_developed`
--
ALTER TABLE `sdo_developed`
  MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `search`
--
ALTER TABLE `search`
  MODIFY `src_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `suggestform`
--
ALTER TABLE `suggestform`
  MODIFY `suggest_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `surveyform`
--
ALTER TABLE `surveyform`
  MODIFY `surv_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `uslemworksheets`
--
ALTER TABLE `uslemworksheets`
  MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
