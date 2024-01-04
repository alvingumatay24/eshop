-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 04, 2024 at 04:57 PM
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

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `cart_usersid` int(11) NOT NULL,
  `cart_itemsid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `cart_usersid`, `cart_itemsid`) VALUES
(12, 56, 1),
(13, 56, 1),
(15, 56, 1),
(16, 56, 1),
(17, 56, 1),
(18, 56, 1),
(20, 56, 6),
(21, 56, 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `cartview`
-- (See below for the actual view)
--
CREATE TABLE `cartview` (
`itemsprice` double
,`countitems` bigint(21)
,`cart_id` int(11)
,`cart_usersid` int(11)
,`cart_itemsid` int(11)
,`items_id` int(11)
,`items_name` varchar(100)
,`items_name_ar` varchar(100)
,`items_desc` varchar(255)
,`items_desc_ar` varchar(255)
,`items_image` varchar(255)
,`items_count` int(11)
,`items_active` tinyint(4)
,`items_price` float
,`items_discount` smallint(6)
,`items_date` timestamp
,`items_cat` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `categories_id` int(11) NOT NULL,
  `categories_name` varchar(255) NOT NULL,
  `categories_name_ar` varchar(255) NOT NULL,
  `categories_image` varchar(255) NOT NULL,
  `categories_datetime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categories_id`, `categories_name`, `categories_name_ar`, `categories_image`, `categories_datetime`) VALUES
(1, 'mktea1', 'lightblue', 'mk.svg', '2023-09-24 12:11:40'),
(2, 'mktea2', 'greenapple', 'mk2.svg', '2023-09-24 12:11:40'),
(3, 'mktea3', 'lemon orange', 'mk3.svg', '2023-11-04 14:10:57'),
(4, 'mktea4', 'redsapphire', 'mk4.svg', '2023-09-24 12:12:58'),
(5, 'mktea5', 'mappletea', 'mk5.svg', '2023-09-24 12:12:58');

-- --------------------------------------------------------

--
-- Table structure for table `favorite`
--

CREATE TABLE `favorite` (
  `favorite_id` int(11) NOT NULL,
  `favorite_usersid` int(11) NOT NULL,
  `favorite_itemsid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `favorite`
--

INSERT INTO `favorite` (`favorite_id`, `favorite_usersid`, `favorite_itemsid`) VALUES
(5, 56, 4);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `items_id` int(11) NOT NULL,
  `items_name` varchar(100) NOT NULL,
  `items_name_ar` varchar(100) NOT NULL,
  `items_desc` varchar(255) NOT NULL,
  `items_desc_ar` varchar(255) NOT NULL,
  `items_image` varchar(255) NOT NULL,
  `items_count` int(11) NOT NULL,
  `items_active` tinyint(4) NOT NULL,
  `items_price` float NOT NULL,
  `items_discount` smallint(6) NOT NULL,
  `items_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `items_cat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`items_id`, `items_name`, `items_name_ar`, `items_desc`, `items_desc_ar`, `items_image`, `items_count`, `items_active`, `items_price`, `items_discount`, `items_date`, `items_cat`) VALUES
(1, 'Mapple Tea', 'Apple plus Milk Tea', 'milk tea 1', 'Light drink for thirst', 'tea2.png', 1, 1, 45, 6, '2023-11-19 01:28:43', 1),
(2, 'Grape Tea', 'Grapes + Milk Tea', 'milk tea 2', 'grapes added milktea super flavors', 'tea3.png', 2, 2, 49, 3, '2023-11-19 02:42:57', 2),
(3, 'Regular Milk Tea', 'A Pure Milk w/ calcium Vitamin A', 'Milk Tea 1', 'a bright delicious milk tea', 'tea.png', 3, 3, 39, 8, '2023-11-19 01:20:49', 3),
(4, 'Coco vanilla Tea', 'Milktea plus Coconut and Vanilla', 'milk tea 4', 'Coconut, Milk tea + Vanilla', 'tea6.png', 4, 4, 55, 9, '2023-11-19 02:47:41', 4),
(5, 'Orange Tea', 'milk tea 5', 'Orange + Milk Tea', 'Orange Vitamins C ', 'tea5.png', 5, 5, 56, 2, '2023-11-19 02:51:37', 5),
(6, 'Water Melon Tea', 'Water Red Melon + Milk Tea', 'milk tea 6', 'Fruits plus milk juice', 'tea7.png', 6, 6, 44, 7, '2023-11-19 02:51:43', 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `items1view`
-- (See below for the actual view)
--
CREATE TABLE `items1view` (
`items_id` int(11)
,`items_name` varchar(100)
,`items_name_ar` varchar(100)
,`items_desc` varchar(255)
,`items_desc_ar` varchar(255)
,`items_image` varchar(255)
,`items_count` int(11)
,`items_active` tinyint(4)
,`items_price` float
,`items_discount` smallint(6)
,`items_date` timestamp
,`items_cat` int(11)
,`categories_id` int(11)
,`categories_name` varchar(255)
,`categories_name_ar` varchar(255)
,`categories_image` varchar(255)
,`categories_datetime` timestamp
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `itemsview`
-- (See below for the actual view)
--
CREATE TABLE `itemsview` (
`items_id` int(11)
,`items_name` varchar(100)
,`items_name_ar` varchar(100)
,`items_desc` varchar(255)
,`items_desc_ar` varchar(255)
,`items_image` varchar(255)
,`items_count` int(11)
,`items_active` tinyint(4)
,`items_price` float
,`items_discount` smallint(6)
,`items_date` timestamp
,`items_cat` int(11)
,`categories_id` int(11)
,`categories_name` varchar(255)
,`categories_name_ar` varchar(255)
,`categories_image` varchar(255)
,`categories_datetime` timestamp
);

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
(56, 'alseed', 'alsdeped13@gmail.com', 'c6efae9869218c6d45b92a3090bce129f27c070d', '09925804253', 98209, 1, '2023-09-24 01:39:12'),
(57, 'alvin', 'alvingumatay13@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964', '09462886584', 99116, 0, '2023-09-21 14:30:04');

-- --------------------------------------------------------

--
-- Structure for view `cartview`
--
DROP TABLE IF EXISTS `cartview`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `cartview`  AS  select sum(`items`.`items_price`) AS `itemsprice`,count(`cart`.`cart_itemsid`) AS `countitems`,`cart`.`cart_id` AS `cart_id`,`cart`.`cart_usersid` AS `cart_usersid`,`cart`.`cart_itemsid` AS `cart_itemsid`,`items`.`items_id` AS `items_id`,`items`.`items_name` AS `items_name`,`items`.`items_name_ar` AS `items_name_ar`,`items`.`items_desc` AS `items_desc`,`items`.`items_desc_ar` AS `items_desc_ar`,`items`.`items_image` AS `items_image`,`items`.`items_count` AS `items_count`,`items`.`items_active` AS `items_active`,`items`.`items_price` AS `items_price`,`items`.`items_discount` AS `items_discount`,`items`.`items_date` AS `items_date`,`items`.`items_cat` AS `items_cat` from (`cart` join `items` on(`items`.`items_id` = `cart`.`cart_itemsid`)) group by `cart`.`cart_itemsid`,`cart`.`cart_usersid` ;

-- --------------------------------------------------------

--
-- Structure for view `items1view`
--
DROP TABLE IF EXISTS `items1view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `items1view`  AS  select `items`.`items_id` AS `items_id`,`items`.`items_name` AS `items_name`,`items`.`items_name_ar` AS `items_name_ar`,`items`.`items_desc` AS `items_desc`,`items`.`items_desc_ar` AS `items_desc_ar`,`items`.`items_image` AS `items_image`,`items`.`items_count` AS `items_count`,`items`.`items_active` AS `items_active`,`items`.`items_price` AS `items_price`,`items`.`items_discount` AS `items_discount`,`items`.`items_date` AS `items_date`,`items`.`items_cat` AS `items_cat`,`categories`.`categories_id` AS `categories_id`,`categories`.`categories_name` AS `categories_name`,`categories`.`categories_name_ar` AS `categories_name_ar`,`categories`.`categories_image` AS `categories_image`,`categories`.`categories_datetime` AS `categories_datetime` from (`items` join `categories` on(`items`.`items_cat` = `categories`.`categories_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `itemsview`
--
DROP TABLE IF EXISTS `itemsview`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `itemsview`  AS  select `items`.`items_id` AS `items_id`,`items`.`items_name` AS `items_name`,`items`.`items_name_ar` AS `items_name_ar`,`items`.`items_desc` AS `items_desc`,`items`.`items_desc_ar` AS `items_desc_ar`,`items`.`items_image` AS `items_image`,`items`.`items_count` AS `items_count`,`items`.`items_active` AS `items_active`,`items`.`items_price` AS `items_price`,`items`.`items_discount` AS `items_discount`,`items`.`items_date` AS `items_date`,`items`.`items_cat` AS `items_cat`,`categories`.`categories_id` AS `categories_id`,`categories`.`categories_name` AS `categories_name`,`categories`.`categories_name_ar` AS `categories_name_ar`,`categories`.`categories_image` AS `categories_image`,`categories`.`categories_datetime` AS `categories_datetime` from (`items` join `categories` on(`items`.`items_cat` = `categories`.`categories_id`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `cart_ibfk_1` (`cart_usersid`),
  ADD KEY `cart_ibfk_2` (`cart_itemsid`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categories_id`);

--
-- Indexes for table `favorite`
--
ALTER TABLE `favorite`
  ADD PRIMARY KEY (`favorite_id`),
  ADD KEY `favorite_itemsid` (`favorite_itemsid`),
  ADD KEY `favorite_usersid` (`favorite_usersid`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`items_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`users_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `favorite`
--
ALTER TABLE `favorite`
  MODIFY `favorite_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`cart_usersid`) REFERENCES `users` (`users_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`cart_itemsid`) REFERENCES `items` (`items_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `favorite`
--
ALTER TABLE `favorite`
  ADD CONSTRAINT `favorite_ibfk_1` FOREIGN KEY (`favorite_itemsid`) REFERENCES `items` (`items_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `favorite_ibfk_2` FOREIGN KEY (`favorite_usersid`) REFERENCES `users` (`users_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
