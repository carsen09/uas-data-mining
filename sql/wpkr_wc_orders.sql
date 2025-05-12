-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 07, 2025 at 04:24 PM
-- Server version: 10.6.21-MariaDB
-- PHP Version: 8.3.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `datamini_wpdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `wpkr_wc_orders`
--

CREATE TABLE `wpkr_wc_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(20) DEFAULT NULL,
  `currency` varchar(10) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `tax_amount` decimal(26,8) DEFAULT NULL,
  `total_amount` decimal(26,8) DEFAULT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `billing_email` varchar(320) DEFAULT NULL,
  `date_created_gmt` datetime DEFAULT NULL,
  `date_updated_gmt` datetime DEFAULT NULL,
  `parent_order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payment_method` varchar(100) DEFAULT NULL,
  `payment_method_title` text DEFAULT NULL,
  `transaction_id` varchar(100) DEFAULT NULL,
  `ip_address` varchar(100) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `customer_note` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wpkr_wc_orders`
--

INSERT INTO `wpkr_wc_orders` (`id`, `status`, `currency`, `type`, `tax_amount`, `total_amount`, `customer_id`, `billing_email`, `date_created_gmt`, `date_updated_gmt`, `parent_order_id`, `payment_method`, `payment_method_title`, `transaction_id`, `ip_address`, `user_agent`, `customer_note`) VALUES
(444, 'wc-processing', 'IDR', 'shop_order', 0.00000000, 38.00000000, 1, 'admin@datamininguntan.my.id', '2025-05-07 07:55:32', '2025-05-07 07:55:33', 0, 'cod', 'Cash on delivery', '', '180.242.238.49', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', ''),
(446, 'wc-processing', 'IDR', 'shop_order', 0.00000000, 19.00000000, 0, 'leoprangs@gmail.com', '2025-05-07 08:03:40', '2025-05-07 08:03:41', 0, 'cod', 'Cash on delivery', '', '180.242.238.49', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wpkr_wc_orders`
--
ALTER TABLE `wpkr_wc_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`),
  ADD KEY `date_created` (`date_created_gmt`),
  ADD KEY `customer_id_billing_email` (`customer_id`,`billing_email`(171)),
  ADD KEY `billing_email` (`billing_email`(191)),
  ADD KEY `type_status_date` (`type`,`status`,`date_created_gmt`),
  ADD KEY `parent_order_id` (`parent_order_id`),
  ADD KEY `date_updated` (`date_updated_gmt`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
