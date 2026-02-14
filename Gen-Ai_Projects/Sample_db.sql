-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 12, 2026 at 06:31 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ok`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(13, 'Panaflex', NULL, '2026-01-12 08:36:57', '2026-01-12 08:36:57'),
(14, 'INK', NULL, '2026-01-12 09:03:21', '2026-01-12 09:03:21'),
(15, 'Rings', NULL, '2026-01-12 09:42:10', '2026-01-12 09:42:10');

-- --------------------------------------------------------

--
-- Table structure for table `company_settings`
--

CREATE TABLE `company_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `tagline` varchar(255) DEFAULT NULL,
  `logo_path` varchar(255) DEFAULT NULL,
  `phone_1` varchar(255) DEFAULT NULL,
  `phone_2` varchar(255) DEFAULT NULL,
  `whatsapp_number` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `ntn` varchar(255) DEFAULT NULL,
  `sales_tax_no` varchar(255) DEFAULT NULL,
  `currency` varchar(10) NOT NULL DEFAULT 'PKR',
  `invoice_prefix` varchar(10) NOT NULL DEFAULT 'INV-',
  `footer_note` varchar(500) DEFAULT NULL,
  `print_footer_message` varchar(500) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company_settings`
--

INSERT INTO `company_settings` (`id`, `company_name`, `tagline`, `logo_path`, `phone_1`, `phone_2`, `whatsapp_number`, `email`, `address`, `website`, `ntn`, `sales_tax_no`, `currency`, `invoice_prefix`, `footer_note`, `print_footer_message`, `created_at`, `updated_at`) VALUES
(1, 'Al-Raza Graphics', 'Quality Printing Solutions', 'company/SqXnwuGds5NJcXfz5MwxWVHqcUIBuP0mmoGajkYo.jpg', '03067288442', '03016577642', '03067288442', 'alrazagrafix786@gmail.com', 'Near Meezan Bank, 50-A Timber Market, Vehari', NULL, NULL, NULL, 'PKR', 'INV-', 'Thank you for choosing our services!', 'Quality guaranteed! Visit us again.', '2025-11-08 10:47:33', '2026-02-03 21:00:54');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `whatsapp` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `postal_code` varchar(255) DEFAULT NULL,
  `customer_type` enum('individual','business') NOT NULL DEFAULT 'individual',
  `credit_limit` decimal(12,2) DEFAULT 0.00,
  `credit_used` decimal(12,2) NOT NULL DEFAULT 0.00,
  `notes` text DEFAULT NULL,
  `opening_balance` decimal(12,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `phone`, `email`, `whatsapp`, `address`, `city`, `postal_code`, `customer_type`, `credit_limit`, `credit_used`, `notes`, `opening_balance`, `created_at`, `updated_at`) VALUES
(36, 'Walk-in Customer', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 0.00, NULL, 0.00, '2026-01-12 08:33:09', '2026-02-01 16:00:38'),
(37, 'Waseem Saab', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 112300.00, NULL, 112300.00, '2026-01-12 08:46:27', '2026-01-12 08:47:06'),
(38, 'Sir Younas Watto', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 66720.00, NULL, 59620.00, '2026-01-12 08:48:32', '2026-01-12 08:53:05'),
(39, 'Usman Meo', '033334343164', NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 265968.75, '10-12-2025 remaining balance', 311645.00, '2026-01-12 09:27:30', '2026-02-12 18:20:34'),
(40, 'Qaser Saab', '03006383556', NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 24335.00, '9-9-2025 remaining balance', 24335.00, '2026-01-12 09:29:15', '2026-01-12 09:29:15'),
(41, 'Abdullah Saab', '03074992452', NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 28140.00, '6-11-2025 remining balance', 28140.00, '2026-01-12 09:30:43', '2026-01-12 09:30:43'),
(42, 'Asif Mari Saab', '03057684387', NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 38160.00, 'Bill no. 1610, 1619,', 36400.00, '2026-01-12 09:31:57', '2026-02-12 18:15:20'),
(43, 'Nadeem Butt Saab', '03037186200', NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 29908.00, '16-10-2025 remianing balance', 29908.00, '2026-01-12 09:34:35', '2026-01-12 09:34:35'),
(44, 'Ashraf Chawala', '03007735673', NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 122678.50, 'Mehfil bill 35000\nDHQ bill 25000', 60000.00, '2026-01-12 09:38:05', '2026-02-08 11:34:49'),
(45, 'Rana Khalil', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 10000.00, NULL, 10000.00, '2026-01-12 09:54:19', '2026-01-12 09:54:19'),
(47, 'Umar Ajmal', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 22.00, NULL, 0.00, '2026-01-13 11:21:41', '2026-01-24 04:41:55'),
(48, 'ahtasham', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 1600.00, NULL, 0.00, '2026-01-13 12:30:57', '2026-01-14 06:23:50'),
(49, 'azeem  F', '03059150748', NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 2373.50, NULL, 0.00, '2026-01-14 06:17:54', '2026-02-11 17:52:55'),
(50, 'zafar sab machiwal', '03007732483', NULL, NULL, 'machiwal', NULL, NULL, 'individual', 0.00, 14287.86, NULL, 0.00, '2026-01-14 06:49:55', '2026-02-12 18:24:18'),
(51, 'zeeshan painter ludden', '03085825199', NULL, NULL, 'ludden', NULL, NULL, 'individual', 0.00, 568.00, NULL, 0.00, '2026-01-14 07:29:06', '2026-02-09 19:11:16'),
(53, 'Mustansar khan', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 22540.80, NULL, 0.00, '2026-01-15 06:02:39', '2026-02-09 19:03:14'),
(54, 'iqbal dc', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 0.00, NULL, 0.00, '2026-01-15 07:15:45', '2026-01-15 07:15:45'),
(56, 'saleem pvc', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 2835.00, NULL, 0.00, '2026-01-15 07:37:48', '2026-02-01 18:56:27'),
(57, 'M. Sohail Grand Interior', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 6900.00, NULL, 0.00, '2026-01-15 08:57:16', '2026-01-15 08:58:11'),
(58, 'charag ul nabi', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 0.00, NULL, 0.00, '2026-01-15 09:14:57', '2026-01-15 09:14:57'),
(59, 'FIAZ POINEER GRAPHICS', '03336287113', NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 23220.80, NULL, 0.00, '2026-01-15 09:51:57', '2026-02-12 18:13:03'),
(60, 'FREEDI GRAPHICS', '03052085815', NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 17960.10, '1914', 14491.00, '2026-01-15 09:54:08', '2026-02-11 17:58:31'),
(61, 'ALI PRINTING VIJIANWALA', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 1667.20, NULL, 0.00, '2026-01-15 09:57:32', '2026-02-03 16:57:30'),
(62, 'AMIR PRINCE GRAPHICS', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 3073.40, NULL, 0.00, '2026-01-15 10:14:57', '2026-02-12 18:05:39'),
(67, 'shoeb bhatti', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 3062.50, NULL, 0.00, '2026-01-15 11:28:09', '2026-01-15 11:29:00'),
(68, 'Rana luqman', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 11619.40, NULL, 0.00, '2026-01-15 12:11:59', '2026-02-12 18:16:09'),
(70, 'majid bhatti press', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 72784.99, NULL, 0.00, '2026-01-15 18:29:13', '2026-02-12 18:16:45'),
(71, 'asif ajmal', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 2312.00, NULL, 0.00, '2026-01-15 18:41:55', '2026-02-11 17:56:39'),
(72, 'Asif khizer vijianwala', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 6877.00, NULL, 0.00, '2026-01-15 18:53:12', '2026-02-11 17:57:19'),
(73, 'ch hasnat', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 9509.20, NULL, 0.00, '2026-01-15 18:55:30', '2026-02-12 18:12:08'),
(74, 'Abid ali barki  sab', '03007722731', NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 117183.25, 'sabka acording to registor no 47\n30-12-2025', 157477.00, '2026-01-15 18:59:13', '2026-02-12 18:10:33'),
(75, 'Aspire College Vehari', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 33897.50, NULL, 0.00, '2026-01-17 16:28:03', '2026-02-07 18:29:53'),
(76, 'Qasim Fiter', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 803.00, NULL, 0.00, '2026-01-17 16:34:58', '2026-02-11 18:12:40'),
(78, 'sajid potry service', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 1650.00, NULL, 0.00, '2026-01-17 16:50:16', '2026-01-21 18:22:39'),
(79, 'Baba Abdul Rehman', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 0.00, NULL, 0.00, '2026-01-17 16:51:58', '2026-01-17 16:51:58'),
(80, 'Asad Printing Vijhanwala', '03240186715', NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 1201.50, NULL, 0.00, '2026-01-17 17:33:14', '2026-02-09 18:55:01'),
(81, 'Dr. Esha Sahani', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 800.00, NULL, 0.00, '2026-01-17 17:57:17', '2026-01-22 17:56:41'),
(82, 'Ashraf arts', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 5060.00, NULL, 0.00, '2026-01-17 18:22:12', '2026-02-12 18:07:10'),
(83, 'Majid Kayseria', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 0.00, NULL, 0.00, '2026-01-18 13:10:14', '2026-01-18 13:10:14'),
(84, 'nomi discount store', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 3150.00, NULL, 0.00, '2026-01-18 15:16:40', '2026-01-18 15:17:27'),
(85, 'arfan shehzad', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 0.00, NULL, 0.00, '2026-01-18 16:09:40', '2026-01-18 16:16:20'),
(86, 'King Dilnasheen', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 0.00, NULL, 0.00, '2026-01-18 17:27:17', '2026-01-18 17:27:17'),
(87, 'Shabir Tiles and Disply', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 0.00, NULL, 0.00, '2026-01-18 18:07:17', '2026-01-18 18:07:17'),
(88, 'daha brother', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 13050.00, NULL, 0.00, '2026-01-18 18:10:10', '2026-01-18 18:10:58'),
(89, 'baba saif', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 0.00, NULL, 0.00, '2026-01-18 18:11:41', '2026-01-18 18:11:41'),
(90, 'ms academy', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 1350.00, NULL, 0.00, '2026-01-18 18:16:26', '2026-01-18 18:16:56'),
(91, 'saqi', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 17714.50, NULL, 0.00, '2026-01-18 18:19:25', '2026-02-12 18:17:18'),
(92, 'Nisar khan  Aysha  academy', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 4620.00, NULL, 0.00, '2026-01-18 18:24:04', '2026-01-18 18:26:51'),
(93, 'hafiz electric store', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 0.00, NULL, 0.00, '2026-01-19 17:49:43', '2026-01-19 17:49:43'),
(94, 'Sajid Mughal', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 300.00, NULL, 0.00, '2026-01-19 18:01:19', '2026-01-19 18:01:47'),
(95, 'abbas sectry', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 512.50, NULL, 0.00, '2026-01-19 18:20:47', '2026-01-19 18:21:40'),
(96, 'Shahzad iqbal', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 1152.00, NULL, 0.00, '2026-01-20 10:50:27', '2026-01-20 10:51:09'),
(97, 'Sheikh Yousaf', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 975.00, NULL, 0.00, '2026-01-20 13:24:25', '2026-01-25 18:31:48'),
(98, 'imran bhai', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 0.00, NULL, 0.00, '2026-01-20 15:49:48', '2026-01-20 15:49:48'),
(99, 'Akram Aspire College', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 420.00, NULL, 0.00, '2026-01-20 15:57:36', '2026-02-03 18:29:18'),
(100, 'Kh School', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 8806.00, NULL, 0.00, '2026-01-20 16:00:33', '2026-01-20 16:03:41'),
(101, 'Al Hamd School', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 0.00, NULL, 0.00, '2026-01-20 17:21:03', '2026-01-20 17:21:03'),
(102, 'Distict Jail', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 180.00, NULL, 0.00, '2026-01-20 17:47:52', '2026-01-25 17:18:21'),
(103, 'Hafiz Graphics Vehari', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 350.00, NULL, 0.00, '2026-01-20 17:55:18', '2026-01-20 17:55:46'),
(104, 'Al tawakal Drink Corner', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 0.00, NULL, 0.00, '2026-01-21 15:20:23', '2026-01-21 15:20:23'),
(105, 'Vehari taaz gas agency', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 0.00, NULL, 0.00, '2026-01-21 16:53:55', '2026-01-21 16:53:55'),
(106, 'Al miraj Tikka shop', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 375.00, NULL, 0.00, '2026-01-21 16:55:00', '2026-01-21 16:55:13'),
(107, 'qureshi meat shop', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 226.00, NULL, 0.00, '2026-01-21 16:56:05', '2026-01-21 16:57:08'),
(108, 'hameed fiter', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 3942.40, NULL, 0.00, '2026-01-21 18:19:05', '2026-02-01 18:52:17'),
(109, 'RTA Office Vehari', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 2880.00, NULL, 0.00, '2026-01-22 11:48:13', '2026-02-04 18:38:21'),
(110, 'Sabir Piya chicken sale point', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 0.00, NULL, 0.00, '2026-01-22 11:58:01', '2026-01-22 11:58:01'),
(111, 'Zahid Center', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 94650.00, NULL, 0.00, '2026-01-22 12:38:41', '2026-01-22 12:44:24'),
(112, 'tufeel steel works', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 0.00, NULL, 0.00, '2026-01-22 15:29:25', '2026-01-22 15:29:25'),
(113, 'Usman grafix vehari', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 0.00, NULL, 0.00, '2026-01-22 16:07:02', '2026-01-22 16:07:02'),
(114, 'Sadakat khan sahib', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 14168.00, NULL, 0.00, '2026-01-22 16:58:13', '2026-01-22 17:00:23'),
(115, 'ch murtaza chakin shop', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 0.00, NULL, 0.00, '2026-01-22 17:42:34', '2026-01-22 17:42:34'),
(116, 'Gulam abbas', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 1140.00, NULL, 0.00, '2026-01-22 17:46:42', '2026-01-27 18:13:56'),
(117, 'UME', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 375.00, NULL, 0.00, '2026-01-22 17:50:34', '2026-01-22 17:51:02'),
(118, 'mehmood shab', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 61272.00, NULL, 0.00, '2026-01-22 18:13:51', '2026-01-22 18:19:41'),
(119, 'Ehsan Grafix', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 1500.00, NULL, 0.00, '2026-01-24 18:11:32', '2026-01-27 17:34:32'),
(120, 'Al Barkat Real state', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 0.00, NULL, 0.00, '2026-01-24 18:12:16', '2026-01-24 18:12:16'),
(121, 'Nazir Grafix', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 3238.00, NULL, 0.00, '2026-01-24 18:13:55', '2026-01-24 18:17:51'),
(122, 'Super Flex Luddan', '0304-0792062', NULL, NULL, NULL, 'Luddan', NULL, 'individual', 0.00, 29932.70, '23-01-2026', 24681.00, '2026-01-24 18:23:22', '2026-02-07 18:40:21'),
(123, 'tahir press', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 2568.00, NULL, 0.00, '2026-01-24 18:39:24', '2026-02-11 18:10:59'),
(124, 'jameel Mughal', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 4000.00, NULL, 0.00, '2026-01-25 16:33:51', '2026-01-25 17:12:02'),
(125, 'Mashallah drink corner', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 0.00, NULL, 0.00, '2026-01-26 17:49:10', '2026-01-26 17:49:10'),
(126, 'Allah Ho chicken shawarma', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 670.00, NULL, 0.00, '2026-01-26 17:50:02', '2026-01-26 17:50:18'),
(127, 'Makan Ibrar', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 0.00, NULL, 0.00, '2026-01-26 17:51:05', '2026-01-26 17:51:05'),
(128, 'Dr. Mumtaz', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 0.00, NULL, 0.00, '2026-01-27 17:10:36', '2026-01-27 17:10:36'),
(129, 'Sajid Studio', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 1325.00, NULL, 0.00, '2026-01-27 17:19:05', '2026-01-27 17:20:06'),
(130, 'City school Vehari', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 45861.90, NULL, 0.00, '2026-01-27 17:28:54', '2026-02-11 15:55:08'),
(131, 'adeel Malsi', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 12500.00, NULL, 0.00, '2026-01-27 17:35:51', '2026-01-27 17:36:16'),
(132, 'Rizwan Shah travel', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 1680.00, NULL, 0.00, '2026-01-27 18:10:09', '2026-01-27 18:10:31'),
(133, 'yums foods', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 6435.00, NULL, 0.00, '2026-01-28 13:56:54', '2026-01-28 13:58:17'),
(134, 'Ashraf Five Star Flex', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 10000.00, NULL, 0.00, '2026-01-28 15:17:57', '2026-01-28 15:21:36'),
(135, 'M. Aslam mughal steel works', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 300.00, NULL, 0.00, '2026-01-28 17:58:41', '2026-01-28 17:58:58'),
(136, 'Akbar Ismaeil Pailling Vehari', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 16146.00, NULL, 0.00, '2026-01-28 18:26:50', '2026-02-12 18:04:36'),
(137, 'The City school vehari', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 46214.52, NULL, 0.00, '2026-01-28 19:15:51', '2026-01-28 19:17:57'),
(138, 'The city school', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 15725.10, NULL, 0.00, '2026-01-28 19:19:17', '2026-01-28 19:20:39'),
(139, 'PSO Vehari', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 900.00, NULL, 0.00, '2026-01-29 17:10:23', '2026-01-29 17:10:51'),
(140, 'Makan 2x3', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 200.00, NULL, 0.00, '2026-01-29 17:11:53', '2026-01-29 17:12:12'),
(141, 'Al tawakal Drinks', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 680.00, NULL, 0.00, '2026-01-29 17:12:32', '2026-01-29 17:13:07'),
(142, 'Stylish Hair Salon (mani don)', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 10257.10, NULL, 0.00, '2026-01-29 17:17:02', '2026-01-29 17:19:37'),
(143, 'Orangzaib barki', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 2150.00, NULL, 0.00, '2026-01-29 17:40:50', '2026-01-29 17:45:26'),
(144, 'Orangzaib barki', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 0.00, NULL, 0.00, '2026-01-29 17:44:33', '2026-01-29 17:44:33'),
(145, 'khushali bank', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 0.00, NULL, 0.00, '2026-01-29 17:50:28', '2026-01-29 17:50:28'),
(146, 'Ganj shakar aata chaki', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 0.00, NULL, 0.00, '2026-01-31 11:58:07', '2026-01-31 11:58:07'),
(147, 'Dr. Aisf Livestock and pet n vet', '0318-2614187', NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 240.00, NULL, 0.00, '2026-01-31 12:58:33', '2026-01-31 12:58:51'),
(148, 'Pakistan Tyre Battery', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 0.00, NULL, 0.00, '2026-01-31 15:47:29', '2026-01-31 15:47:29'),
(149, 'Data Graphix', '0301-6575827', NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 18442.20, NULL, 0.00, '2026-01-31 17:39:44', '2026-01-31 17:42:35'),
(150, 'Mehmood brother', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 1220.00, NULL, 0.00, '2026-01-31 18:30:25', '2026-01-31 18:30:56'),
(151, 'Hussam chicken shop karampur', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 0.00, NULL, 0.00, '2026-01-31 18:34:04', '2026-01-31 18:34:04'),
(152, 'Arslan nashta point', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 0.00, NULL, 0.00, '2026-01-31 18:37:00', '2026-01-31 18:37:00'),
(153, 'The City School ...', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 2448.60, NULL, 0.00, '2026-01-31 18:39:11', '2026-01-31 18:39:33'),
(154, 'Hameed plai wood', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 1350.00, NULL, 0.00, '2026-01-31 18:42:19', '2026-02-08 19:03:34'),
(155, 'Rizwan Zaidi', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 360.00, NULL, 0.00, '2026-01-31 18:44:17', '2026-01-31 18:44:39'),
(156, 'Shahbaz Ali', '0307-4050632', NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 0.00, NULL, 0.00, '2026-02-01 19:07:06', '2026-02-01 19:07:06'),
(157, 'Waheed (shahbaz qalander)', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 280.00, NULL, 0.00, '2026-02-01 19:08:53', '2026-02-01 19:09:22'),
(158, 'Punjab Wildlife', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 0.00, NULL, 0.00, '2026-02-02 14:10:30', '2026-02-02 14:10:30'),
(159, 'Asif computer + wahab computer + MM Fast Food', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 40579.00, NULL, 0.00, '2026-02-03 14:37:19', '2026-02-03 14:45:42'),
(160, 'Al Madina Tuck Shop', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 0.00, NULL, 0.00, '2026-02-03 15:15:42', '2026-02-03 15:15:42'),
(161, 'Rizwan Wallpaper', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 0.30, NULL, 0.00, '2026-02-03 17:08:30', '2026-02-03 17:14:03'),
(162, 'Khan Sahib (beauty parlour)', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 0.00, NULL, 0.00, '2026-02-03 17:10:50', '2026-02-03 17:10:50'),
(163, 'Rizwan Wallpaper', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 0.00, NULL, 0.00, '2026-02-03 18:24:54', '2026-02-03 18:24:54'),
(164, 'Waseem Bholer', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 0.00, NULL, 0.00, '2026-02-04 18:19:56', '2026-02-04 18:19:56'),
(165, 'Bismillah steel works', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 0.00, NULL, 0.00, '2026-02-04 18:35:10', '2026-02-04 18:35:10'),
(166, 'Punjab Catle Feed', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 0.00, NULL, 0.00, '2026-02-04 18:36:31', '2026-02-04 18:36:31'),
(167, 'Younas Fitter', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 414.00, NULL, 0.00, '2026-02-04 18:38:47', '2026-02-04 18:39:10'),
(168, 'House of hair', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 0.00, NULL, 0.00, '2026-02-05 17:58:47', '2026-02-05 17:58:47'),
(169, 'King Smok shop', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 0.00, NULL, 0.00, '2026-02-05 17:59:42', '2026-02-05 17:59:42'),
(170, 'National Jewellers', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 0.00, NULL, 0.00, '2026-02-05 18:00:55', '2026-02-05 18:00:55'),
(171, 'South Sun power', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 750.00, NULL, 0.00, '2026-02-05 18:03:39', '2026-02-10 17:59:25'),
(172, 'Shahbaz qalander (shoaib bhatti)', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 0.00, NULL, 0.00, '2026-02-05 18:26:33', '2026-02-05 18:26:33'),
(173, 'the city school.......', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 27153.00, NULL, 0.00, '2026-02-07 14:18:48', '2026-02-07 14:20:05'),
(174, 'Malik Hameed MCV', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 0.00, NULL, 0.00, '2026-02-07 18:24:04', '2026-02-07 18:24:04'),
(175, 'Butt Biryani', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 600.00, NULL, 0.00, '2026-02-07 18:32:04', '2026-02-07 18:32:33'),
(176, 'sheikh', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 90.00, NULL, 0.00, '2026-02-07 18:38:34', '2026-02-07 18:38:46'),
(177, 'Ali (tehmina)', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 0.00, NULL, 0.00, '2026-02-07 19:02:44', '2026-02-07 19:02:44'),
(178, 'Sunahary Hatti', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 9870.00, NULL, 0.00, '2026-02-08 12:08:35', '2026-02-08 12:10:32'),
(179, 'abdul qayoom furniture', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 0.00, NULL, 0.00, '2026-02-08 18:56:22', '2026-02-08 18:56:22'),
(180, 'Al meer medical store', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 750.00, NULL, 0.00, '2026-02-08 18:57:35', '2026-02-08 18:57:51'),
(181, 'Al freed tile frosh', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 0.00, NULL, 0.00, '2026-02-08 18:58:18', '2026-02-08 18:58:18'),
(182, 'faizan', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 0.00, NULL, 0.00, '2026-02-08 19:01:08', '2026-02-08 19:01:08'),
(183, 'Imperial decore', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 0.00, NULL, 0.00, '2026-02-08 19:04:00', '2026-02-08 19:04:00'),
(184, 'Al Quddus Digital Hub', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 0.00, NULL, 0.00, '2026-02-09 16:54:14', '2026-02-09 16:54:14'),
(185, 'al qadir furniture house', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 300.00, NULL, 0.00, '2026-02-09 18:55:26', '2026-02-09 18:56:40'),
(186, 'Ali Cafe', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 1580.00, NULL, 0.00, '2026-02-09 18:56:50', '2026-02-09 18:57:24'),
(187, 'foji Electric Store', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 0.00, NULL, 0.00, '2026-02-09 18:59:02', '2026-02-09 18:59:02'),
(188, 'Waseem Grafix 24/WB', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 0.00, NULL, 0.00, '2026-02-09 18:59:30', '2026-02-09 18:59:30'),
(189, 'city school vehari (09-02-2026)', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 27729.60, NULL, 0.00, '2026-02-09 19:01:11', '2026-02-09 19:01:50'),
(190, 'Nadeem Ahmad', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 1276.00, NULL, 0.00, '2026-02-09 19:03:38', '2026-02-09 19:04:10'),
(191, 'Teez Gas agency', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 0.00, NULL, 0.00, '2026-02-10 16:01:36', '2026-02-10 16:01:36'),
(192, 'Usama sajad printing press', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 24425.00, '26-1-2026', 6825.00, '2026-02-10 16:58:15', '2026-02-10 17:05:00'),
(193, 'baba ashraf', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 0.00, NULL, 0.00, '2026-02-10 17:05:35', '2026-02-10 17:05:35'),
(194, 'Hamza Yaseen', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 0.00, NULL, 0.00, '2026-02-10 17:33:42', '2026-02-10 17:33:42'),
(195, 'City School Vehari (10-02-2026)', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 9603.60, NULL, 0.00, '2026-02-10 19:00:57', '2026-02-10 19:02:26'),
(196, 'National Bank Vehari', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 1675.00, NULL, 0.00, '2026-02-11 11:30:40', '2026-02-11 11:31:20'),
(197, 'Asif Sahib (University of Education Vehari )', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 6450.00, NULL, 0.00, '2026-02-11 12:43:20', '2026-02-11 12:46:45'),
(198, 'Haaq Bahoo sarkar hotel', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 1499.90, NULL, 0.00, '2026-02-11 12:47:46', '2026-02-11 12:48:38'),
(199, 'ch bashir (star asia news)', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 0.00, NULL, 0.00, '2026-02-11 16:57:00', '2026-02-11 16:57:00'),
(200, 'Islamia High School Vehari', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 27222.00, NULL, 0.00, '2026-02-11 18:15:54', '2026-02-11 18:16:37'),
(201, 'NRSP Bank', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 500.00, NULL, 0.00, '2026-02-12 11:07:01', '2026-02-12 11:07:35'),
(202, 'SAS crop sciences', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 0.00, NULL, 0.00, '2026-02-12 17:59:56', '2026-02-12 17:59:56'),
(203, 'Haaq Baho Tikka shop', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 0.00, NULL, 0.00, '2026-02-12 18:01:02', '2026-02-12 18:01:02'),
(204, 'A-One Furniture', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 0.00, NULL, 0.00, '2026-02-12 18:06:00', '2026-02-12 18:06:00'),
(205, 'M. Sunny', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 2325.00, NULL, 0.00, '2026-02-12 18:13:27', '2026-02-12 18:14:51'),
(206, 'Shahzad Food point', NULL, NULL, NULL, NULL, NULL, NULL, 'individual', 0.00, 43792.00, NULL, 0.00, '2026-02-12 18:39:59', '2026-02-12 18:46:03');

-- --------------------------------------------------------

--
-- Table structure for table `customer_advances`
--

CREATE TABLE `customer_advances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `amount` decimal(12,2) NOT NULL,
  `note` text DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_credit_payments`
--

CREATE TABLE `customer_credit_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `sale_id` bigint(20) UNSIGNED NOT NULL,
  `payment_date` date NOT NULL,
  `amount` decimal(12,2) NOT NULL,
  `note` text DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `expense_category_id` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `description` text DEFAULT NULL,
  `date` date NOT NULL,
  `payment_source` enum('drawer','external') NOT NULL DEFAULT 'drawer',
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `register_session_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `expense_category_id`, `amount`, `description`, `date`, `payment_source`, `user_id`, `register_session_id`, `created_at`, `updated_at`) VALUES
(5, 5, 4000.00, NULL, '2026-01-12', 'external', 2, NULL, '2026-01-12 08:45:05', '2026-01-12 08:45:05'),
(6, 6, 44000.00, '1 Carton Ink', '2026-01-12', 'external', 2, NULL, '2026-01-12 09:22:03', '2026-01-12 09:22:03'),
(8, 7, 3000.00, 'gar kharcha', '2026-01-13', 'external', 2, NULL, '2026-01-14 07:38:58', '2026-01-14 07:40:03'),
(9, 1, 1200.00, 'shayan sab', '2026-01-14', 'external', 2, NULL, '2026-01-14 07:39:40', '2026-01-14 07:39:40'),
(10, 8, 5500.00, 'visit mian trader vehari \nkhana etc', '2026-01-14', 'external', 2, NULL, '2026-01-14 07:41:44', '2026-01-14 07:41:44'),
(11, 1, 2000.00, 'bike maintennance zohaib', '2026-01-14', 'external', 2, NULL, '2026-01-14 07:43:18', '2026-01-14 07:43:18'),
(12, 8, 8000.00, 'solar plate saaf  karwain \n gola flex \nflour sheet', '2026-01-13', 'external', 2, NULL, '2026-01-14 07:44:34', '2026-01-14 07:45:01'),
(13, 7, 3000.00, NULL, '2026-01-15', 'external', 2, 8, '2026-01-15 11:26:47', '2026-01-15 20:52:31'),
(14, 1, 2000.00, 'bike ki service', '2026-01-15', 'external', 2, 8, '2026-01-15 12:40:41', '2026-01-15 20:52:31'),
(15, 7, 5000.00, '3000\nkharcha\n2000 insoline', '2026-01-16', 'external', 2, NULL, '2026-01-16 11:40:41', '2026-01-16 11:40:41'),
(16, 1, 3000.00, '1000 masjid\n2000 dad', '2026-01-16', 'external', 2, NULL, '2026-01-16 11:41:13', '2026-01-16 11:41:13'),
(17, 7, 3000.00, 'GAR', '2026-01-17', 'external', 2, 11, '2026-01-17 13:01:05', '2026-01-17 13:01:05'),
(18, 1, 1500.00, 'HOME', '2026-01-17', 'external', 2, 11, '2026-01-17 13:01:52', '2026-01-17 13:01:52'),
(19, 8, 850.00, 'RIM PAPER PRINTER', '2026-01-17', 'external', 2, NULL, '2026-01-17 13:02:19', '2026-01-17 13:02:39'),
(20, 2, 900.00, 'chae', '2026-01-17', 'drawer', 2, 11, '2026-01-17 18:10:58', '2026-01-17 18:10:58'),
(21, 9, 1510.00, 'bulty', '2026-01-17', 'drawer', 2, 11, '2026-01-17 18:12:10', '2026-01-17 18:12:10'),
(22, 1, 1500.00, 'zohaib ko diye', '2026-01-17', 'drawer', 2, 11, '2026-01-17 18:12:45', '2026-01-17 18:12:45'),
(23, 3, 350.00, NULL, '2026-01-18', 'drawer', 2, 13, '2026-01-18 17:29:15', '2026-01-18 17:29:15'),
(24, 8, 520.00, 'cloth + bulb 2', '2026-01-18', 'drawer', 2, 13, '2026-01-18 17:29:50', '2026-01-18 17:29:50'),
(25, 2, 1000.00, NULL, '2026-01-18', 'drawer', 2, 13, '2026-01-18 17:29:56', '2026-01-18 17:29:56'),
(26, 8, 5000.00, NULL, '2026-01-18', 'drawer', 2, 13, '2026-01-18 18:32:36', '2026-01-18 18:32:36'),
(27, 3, 680.00, NULL, '2026-01-19', 'drawer', 2, 14, '2026-01-19 18:35:43', '2026-01-19 18:35:43'),
(28, 2, 1000.00, NULL, '2026-01-19', 'drawer', 2, 14, '2026-01-19 18:35:53', '2026-01-19 18:35:53'),
(29, 3, 200.00, 'NASHTA', '2026-01-19', 'drawer', 2, 14, '2026-01-19 18:36:11', '2026-01-19 18:36:11'),
(30, 8, 350.00, 'ESAI SAFAI', '2026-01-19', 'drawer', 2, 14, '2026-01-19 18:36:24', '2026-01-19 18:36:24'),
(31, 3, 530.00, NULL, '2026-01-20', 'drawer', 2, 16, '2026-01-20 16:08:01', '2026-01-20 16:08:01'),
(32, 2, 1000.00, NULL, '2026-01-20', 'drawer', 2, 16, '2026-01-20 17:22:37', '2026-01-20 17:22:37'),
(33, 8, 200.00, 'Safai Brush', '2026-01-20', 'drawer', 2, 16, '2026-01-20 17:22:55', '2026-01-20 17:22:55'),
(34, 3, 500.00, NULL, '2026-01-21', 'drawer', 2, 17, '2026-01-21 16:57:53', '2026-01-21 16:57:53'),
(35, 2, 1000.00, 'Bakaya 1010', '2026-01-21', 'drawer', 2, 17, '2026-01-21 18:04:55', '2026-01-21 18:08:22'),
(36, 8, 300.00, 'Printer Repair', '2026-01-21', 'drawer', 2, 17, '2026-01-21 18:07:37', '2026-01-21 18:07:37'),
(37, 3, 500.00, 'Roti + cake', '2026-01-22', 'drawer', 2, 18, '2026-01-22 18:00:55', '2026-01-22 18:00:55'),
(38, 2, 1000.00, NULL, '2026-01-22', 'drawer', 2, 18, '2026-01-22 18:01:10', '2026-01-22 18:01:10'),
(39, 2, 800.00, '580 baqaya', '2026-01-24', 'drawer', 2, 21, '2026-01-24 18:08:00', '2026-01-24 18:08:00'),
(40, 3, 550.00, NULL, '2026-01-24', 'drawer', 2, 21, '2026-01-24 18:08:08', '2026-01-24 18:08:08'),
(44, 8, 1000.00, 'Raza Sahib', '2026-01-24', 'drawer', 2, 21, '2026-01-24 18:10:33', '2026-01-24 18:10:33'),
(45, 3, 400.00, NULL, '2026-01-25', 'drawer', 2, 23, '2026-01-25 17:33:36', '2026-01-25 17:33:36'),
(46, 8, 350.00, 'Safai waly ko', '2026-01-25', 'drawer', 2, 23, '2026-01-25 17:33:54', '2026-01-25 17:33:54'),
(47, 8, 500.00, 'Zohaib sahib ly kr gye', '2026-01-25', 'drawer', 2, 23, '2026-01-25 17:34:12', '2026-01-25 17:34:12'),
(48, 2, 650.00, '400 baqaya', '2026-01-25', 'drawer', 2, 23, '2026-01-25 17:36:18', '2026-01-25 17:39:13'),
(49, 2, 500.00, 'Lateef Chae', '2026-01-26', 'drawer', 2, 24, '2026-01-26 17:52:09', '2026-01-26 17:52:09'),
(50, 3, 500.00, NULL, '2026-01-26', 'drawer', 2, 24, '2026-01-26 17:52:19', '2026-01-26 17:52:19'),
(51, 2, 700.00, '470 baqaya', '2026-01-26', 'drawer', 2, 24, '2026-01-26 18:08:15', '2026-01-26 18:08:15'),
(52, 8, 100.00, 'elphi', '2026-01-27', 'drawer', 2, 25, '2026-01-27 18:07:09', '2026-01-27 18:07:09'),
(53, 3, 600.00, NULL, '2026-01-27', 'drawer', 2, 25, '2026-01-27 18:07:16', '2026-01-27 18:07:16'),
(54, 2, 700.00, '350 baqaya', '2026-01-27', 'drawer', 2, 25, '2026-01-27 18:14:36', '2026-01-27 18:14:36'),
(55, 2, 500.00, '270 baqaya', '2026-01-28', 'drawer', 2, 27, '2026-01-28 17:42:55', '2026-01-28 17:42:55'),
(56, 3, 500.00, NULL, '2026-01-28', 'drawer', 2, 27, '2026-01-28 17:43:05', '2026-01-28 17:43:05'),
(57, 8, 100.00, 'Arslan Nashta', '2026-01-28', 'drawer', 2, 27, '2026-01-28 17:43:23', '2026-01-28 17:43:23'),
(58, 2, 800.00, '550', '2026-01-29', 'drawer', 2, 28, '2026-01-29 18:00:37', '2026-01-29 18:00:37'),
(59, 3, 500.00, NULL, '2026-01-29', 'drawer', 2, 28, '2026-01-29 18:01:05', '2026-01-29 18:01:05'),
(60, 2, 700.00, '500 baqaya', '2026-01-31', 'drawer', 2, 29, '2026-01-31 18:20:59', '2026-01-31 18:20:59'),
(61, 3, 600.00, NULL, '2026-01-31', 'drawer', 2, 29, '2026-01-31 18:21:05', '2026-01-31 18:21:05'),
(62, 2, 700.00, '450 Baqaya', '2026-02-01', 'drawer', 2, 30, '2026-02-01 19:06:12', '2026-02-01 19:06:12'),
(63, 3, 200.00, NULL, '2026-02-01', 'drawer', 2, 30, '2026-02-01 19:06:17', '2026-02-01 19:06:17'),
(64, 8, 220.00, 'Fruit cake', '2026-02-01', 'drawer', 2, 30, '2026-02-01 19:06:29', '2026-02-01 19:06:29'),
(65, 3, 450.00, NULL, '2026-02-02', 'drawer', 2, 31, '2026-02-02 17:22:10', '2026-02-02 17:22:10'),
(66, 8, 860.00, 'office chapal 400\nsafai waly ko 350\nsaraf 50\nsaban 60', '2026-02-02', 'drawer', 2, 31, '2026-02-02 17:23:22', '2026-02-02 17:23:22'),
(67, 2, 800.00, '500', '2026-02-02', 'drawer', 2, 31, '2026-02-02 18:25:02', '2026-02-02 18:25:02'),
(68, 8, 500.00, 'Stamp Office', '2026-02-02', 'external', 2, NULL, '2026-02-02 18:51:01', '2026-02-02 18:51:01'),
(69, 2, 700.00, '400 baqaya', '2026-02-03', 'drawer', 2, 33, '2026-02-03 18:14:46', '2026-02-03 18:14:46'),
(70, 3, 530.00, NULL, '2026-02-03', 'drawer', 2, 33, '2026-02-03 18:14:52', '2026-02-03 18:14:52'),
(71, 8, 500.00, 'Raza sahib', '2026-02-03', 'drawer', 2, 33, '2026-02-03 18:15:02', '2026-02-03 18:15:02'),
(72, 2, 800.00, '400 baqaya', '2026-02-04', 'drawer', 2, 34, '2026-02-04 18:28:16', '2026-02-04 18:28:16'),
(73, 3, 500.00, NULL, '2026-02-04', 'drawer', 2, 34, '2026-02-04 18:28:31', '2026-02-04 18:28:31'),
(74, 8, 250.00, 'Elphi', '2026-02-04', 'drawer', 2, 35, '2026-02-04 19:01:05', '2026-02-04 19:01:05'),
(75, 4, 19873.00, 'bill bijli', '2026-02-04', 'external', 2, 35, '2026-02-04 22:13:29', '2026-02-04 22:13:29'),
(76, 6, 46000.00, 'ink', '2026-02-01', 'external', 2, 35, '2026-02-05 15:14:42', '2026-02-05 15:14:42'),
(77, 2, 1000.00, '680 baqaya', '2026-02-05', 'drawer', 2, 35, '2026-02-05 18:29:01', '2026-02-05 18:29:01'),
(78, 8, 450.00, '250 zohaib\n200 mithai', '2026-02-05', 'drawer', 2, 35, '2026-02-05 18:29:23', '2026-02-05 18:29:23'),
(79, 3, 450.00, NULL, '2026-02-05', 'drawer', 2, 35, '2026-02-05 18:29:37', '2026-02-05 18:29:37'),
(80, 8, 200.00, 'tamim', '2026-02-05', 'drawer', 2, 35, '2026-02-05 18:33:39', '2026-02-05 18:33:39'),
(81, 3, 600.00, NULL, '2026-02-07', 'drawer', 2, 36, '2026-02-07 18:23:10', '2026-02-07 18:23:10'),
(82, 2, 800.00, '900 baqaya', '2026-02-08', 'drawer', 2, 37, '2026-02-08 19:08:40', '2026-02-08 19:08:40'),
(83, 8, 300.00, 'safai waly ko', '2026-02-08', 'drawer', 2, 37, '2026-02-08 19:08:49', '2026-02-08 19:08:49'),
(84, 8, 100.00, 'spanch (bartan dhole wala)', '2026-02-08', 'drawer', 2, 37, '2026-02-08 19:09:05', '2026-02-08 19:09:05'),
(85, 3, 600.00, NULL, '2026-02-08', 'drawer', 2, 37, '2026-02-08 19:09:13', '2026-02-08 19:09:13'),
(86, 2, 850.00, '600 Baqaya', '2026-02-09', 'drawer', 2, 38, '2026-02-09 19:16:17', '2026-02-09 19:16:17'),
(87, 6, 41800.00, 'ink 19 liter', '2026-02-08', 'external', 2, 40, '2026-02-10 11:17:26', '2026-02-10 11:17:26'),
(88, 8, 5000.00, 'Faisal Computer repair', '2026-02-10', 'drawer', 2, 40, '2026-02-10 17:58:36', '2026-02-10 17:58:36'),
(89, 2, 1000.00, NULL, '2026-02-10', 'drawer', 2, 40, '2026-02-10 17:58:53', '2026-02-10 17:58:53'),
(90, 10, 15000.00, NULL, '2026-02-10', 'external', 2, NULL, '2026-02-10 19:36:21', '2026-02-10 19:36:21'),
(91, 8, 3000.00, 'Boss', '2026-02-11', 'drawer', 2, 41, '2026-02-11 18:18:46', '2026-02-11 18:18:46'),
(92, 8, 300.00, 'card builty', '2026-02-11', 'drawer', 2, 41, '2026-02-11 18:19:45', '2026-02-11 18:19:45'),
(93, 3, 480.00, NULL, '2026-02-11', 'drawer', 2, 41, '2026-02-11 19:06:04', '2026-02-11 19:06:04'),
(94, 2, 800.00, NULL, '2026-02-11', 'drawer', 2, 41, '2026-02-11 19:06:10', '2026-02-11 19:06:10'),
(95, 13, 500.00, NULL, '2026-02-11', 'drawer', 2, 41, '2026-02-11 19:21:58', '2026-02-11 19:21:58'),
(96, 8, 100.00, 'nasta', '2026-02-12', 'drawer', 2, 42, '2026-02-12 18:00:36', '2026-02-12 18:00:36'),
(97, 8, 500.00, 'Zohaib bhai', '2026-02-12', 'drawer', 2, 42, '2026-02-12 18:00:46', '2026-02-12 18:00:46'),
(98, 8, 160.00, 'Ballpoint', '2026-02-12', 'drawer', 2, 42, '2026-02-12 19:08:26', '2026-02-12 19:08:26'),
(99, 2, 800.00, 'nill', '2026-02-12', 'drawer', 2, 42, '2026-02-12 19:13:25', '2026-02-12 19:13:25'),
(100, 8, 200.00, 'tamim', '2026-02-12', 'drawer', 2, 42, '2026-02-12 19:14:08', '2026-02-12 19:14:08');

-- --------------------------------------------------------

--
-- Table structure for table `expense_categories`
--

CREATE TABLE `expense_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expense_categories`
--

INSERT INTO `expense_categories` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Entertainment', NULL, '2025-12-14 06:24:20', '2025-12-14 06:24:20'),
(2, 'chae', NULL, '2025-12-14 08:47:10', '2025-12-14 08:47:10'),
(3, 'roti', NULL, '2025-12-14 08:47:19', '2025-12-14 08:47:19'),
(4, 'bill bijli', NULL, '2025-12-14 08:48:28', '2025-12-14 08:48:28'),
(5, 'Internet Bill', NULL, '2026-01-12 08:43:47', '2026-01-12 08:43:47'),
(6, 'INk', NULL, '2026-01-12 09:18:37', '2026-01-12 09:18:37'),
(7, 'gar kharcha', NULL, '2026-01-14 07:38:17', '2026-01-14 07:38:17'),
(8, 'office expence', NULL, '2026-01-14 07:40:47', '2026-01-14 07:40:47'),
(9, 'builty', NULL, '2026-01-17 18:11:35', '2026-01-17 18:11:35'),
(10, 'Shabaz Ali', NULL, '2026-02-05 14:54:58', '2026-02-05 14:54:58'),
(11, 'Faisal', NULL, '2026-02-05 14:55:09', '2026-02-05 14:55:09'),
(12, 'Arslan', NULL, '2026-02-05 14:55:27', '2026-02-05 14:55:27'),
(13, 'Pani Bill', NULL, '2026-02-11 19:21:34', '2026-02-11 19:21:34');

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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_10_22_180745_create_company_settings_table', 1),
(5, '2025_10_22_184407_create_units_table', 1),
(6, '2025_10_22_184412_create_categories_table', 1),
(7, '2025_10_22_184718_create_products_table', 1),
(8, '2025_10_22_184722_create_panaflex_specs_table', 1),
(9, '2025_10_23_013921_create_customers_table', 1),
(10, '2025_10_23_013925_create_sales_table', 1),
(11, '2025_10_23_013930_create_sale_items_table', 1),
(12, '2025_10_23_013933_create_pending_payments_table', 1),
(13, '2025_10_23_123032_create_sale_returns_table', 1),
(14, '2025_10_23_123039_create_sale_return_items_table', 1),
(15, '2025_10_23_133539_create_suppliers_table', 1),
(16, '2025_10_23_133558_create_purchases_table', 1),
(17, '2025_10_23_133630_create_purchase_items_table', 1),
(18, '2025_10_23_133659_create_stock_batches_table', 1),
(19, '2025_10_23_133719_create_stock_moves_table', 1),
(20, '2025_10_23_133746_create_stock_adjustments_table', 1),
(21, '2025_10_23_133810_add_min_stock_fields_to_products_table', 1),
(22, '2025_10_23_164854_add_role_to_users_table', 1),
(23, '2025_10_24_000000_add_symbol_to_units_table', 1),
(24, '2025_10_24_000001_add_stock_columns_to_products_table', 1),
(25, '2025_10_24_000002_add_email_to_customers_table', 1),
(26, '2025_10_25_190410_add_description_to_products_table', 1),
(27, '2025_10_25_193116_add_additional_fields_to_customers_table', 1),
(28, '2025_10_25_193527_fix_credit_limit_nullable', 1),
(29, '2025_10_27_000001_add_advance_field_to_customers_table', 1),
(30, '2025_10_27_054431_add_contact_person_to_suppliers_table', 1),
(31, '2025_10_27_055417_add_is_active_to_suppliers_table', 1),
(32, '2025_10_27_055912_add_status_to_purchases_table', 1),
(33, '2025_10_27_193253_add_billing_fields_to_sales_table', 1),
(34, '2025_10_27_202420_add_advance_used_to_sales_table', 1),
(35, '2025_10_27_205410_add_credit_used_to_customers_table', 1),
(36, '2025_10_28_160620_remove_advance_field_from_customers_table', 1),
(37, '2025_10_28_161321_remove_advance_used_from_sales_table', 1),
(38, '2025_10_28_161940_create_customer_advances_table', 1),
(39, '2025_10_28_162009_create_customer_credit_payments_table', 1),
(40, '2025_10_28_165453_add_advance_used_to_sales_table', 1),
(41, '2025_11_06_000001_add_description_to_categories_table', 1),
(42, '2025_11_07_060244_add_expected_date_and_shipping_charges_to_purchases_table', 1),
(43, '2025_11_07_063059_add_received_quantity_to_purchase_items_table', 1),
(44, '2025_11_07_073101_add_unique_constraints_to_suppliers_table', 1),
(45, '2025_11_08_000001_create_permissions_table', 1),
(46, '2025_11_08_000002_create_roles_table', 1),
(47, '2025_11_08_000003_create_role_permissions_table', 1),
(48, '2025_11_08_000004_create_user_permissions_table', 1),
(49, '2025_11_08_073322_update_purchase_status_enum', 1),
(50, '2025_11_08_080717_create_register_sessions_table', 1),
(51, '2025_11_23_000001_add_supplier_prepayment_to_pending_payments', 1),
(52, '2025_11_26_000001_add_register_session_id_to_sales_table', 1),
(53, '2025_11_29_094257_add_opening_balance_to_suppliers_table', 1),
(54, '2025_12_14_000000_create_walk_in_customer', 2),
(55, '2025_12_14_105759_create_expense_categories_table', 3),
(56, '2025_12_14_105800_create_expenses_table', 3),
(57, '2025_12_15_022737_create_payments_table', 4),
(58, '2026_01_12_154203_make_product_id_nullable_in_sale_items_table', 5),
(59, '2026_01_12_162202_add_system_description_to_sales_table', 6),
(60, '2026_01_12_171247_change_rolls_count_to_decimal_in_purchase_items_table', 7),
(61, '2026_01_15_224500_update_payment_type_enum_in_sales_table', 8),
(62, '2026_01_24_085426_add_invoice_date_to_sales_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `panaflex_specs`
--

CREATE TABLE `panaflex_specs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `roll_width_inch` decimal(8,2) NOT NULL,
  `roll_length_meter` decimal(8,2) NOT NULL,
  `rate_per_sqft` decimal(12,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `panaflex_specs`
--

INSERT INTO `panaflex_specs` (`id`, `product_id`, `roll_width_inch`, `roll_length_meter`, `rate_per_sqft`, `created_at`, `updated_at`) VALUES
(17, 28, 126.00, 49.99, 22.00, '2026-01-12 08:38:32', '2026-01-12 08:38:32'),
(18, 31, 75.00, 49.99, 50.00, '2026-01-13 12:39:18', '2026-01-13 12:39:18'),
(19, 32, 54.00, 49.99, 85.00, '2026-01-15 10:21:50', '2026-01-15 10:21:50'),
(21, 34, 54.00, 49.99, 0.00, '2026-01-17 18:57:48', '2026-01-17 18:57:48'),
(22, 35, 52.20, 6.10, 0.00, '2026-01-25 17:52:55', '2026-01-25 17:52:55'),
(23, 36, 12.00, 28.80, 75.00, '2026-02-02 19:15:39', '2026-02-02 19:15:39');

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
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `supplier_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sale_id` bigint(20) UNSIGNED DEFAULT NULL,
  `purchase_id` bigint(20) UNSIGNED DEFAULT NULL,
  `type` enum('received','paid') NOT NULL,
  `amount` decimal(12,2) NOT NULL,
  `payment_date` date NOT NULL,
  `payment_method` varchar(255) NOT NULL DEFAULT 'cash',
  `note` text DEFAULT NULL,
  `current_balance` decimal(12,2) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `customer_id`, `supplier_id`, `sale_id`, `purchase_id`, `type`, `amount`, `payment_date`, `payment_method`, `note`, `current_balance`, `user_id`, `created_at`, `updated_at`) VALUES
(46, 38, NULL, NULL, NULL, 'received', 6000.00, '2026-01-12', 'cash', NULL, 60720.00, 2, '2026-01-12 12:19:27', '2026-01-12 12:19:27'),
(68, 49, NULL, 127, NULL, 'received', 25000.00, '2026-01-14', 'cash', 'Payment for Invoice #INV-0000005', 16124.00, 2, '2026-01-14 06:21:28', '2026-01-14 06:21:28'),
(69, 50, NULL, 129, NULL, 'received', 12606.00, '2026-01-14', 'cash', 'Payment for Invoice #INV-0000007', 0.00, 2, '2026-01-14 06:54:19', '2026-01-14 06:54:19'),
(71, NULL, NULL, 132, NULL, 'received', 550.00, '2026-01-14', 'cash', 'Payment for Invoice #INV-0000009', 0.00, 2, '2026-01-14 07:55:42', '2026-01-14 07:55:42'),
(72, 39, NULL, NULL, NULL, 'received', 41680.00, '2026-01-14', 'bank_transfer', 'cash recived', 311645.00, 2, '2026-01-14 08:29:32', '2026-01-14 08:29:32'),
(73, 54, NULL, 134, NULL, 'received', 450.00, '2026-01-15', 'cash', 'Payment for Invoice #INV-0000011', 0.00, 2, '2026-01-15 07:16:31', '2026-01-15 07:16:31'),
(75, NULL, NULL, 137, NULL, 'received', 25000.00, '2026-01-15', 'cash', 'Payment for Invoice #INV-0000012', 16953.00, 2, '2026-01-15 07:36:39', '2026-01-15 07:36:39'),
(76, 56, NULL, 138, NULL, 'received', 1900.00, '2026-01-15', 'cash', 'Payment for Invoice #INV-0000013', 0.00, 2, '2026-01-15 07:40:03', '2026-01-15 07:40:03'),
(77, 57, NULL, 139, NULL, 'received', 4000.00, '2026-01-15', 'cash', 'Payment for Updated Invoice #INV-0000014', 2900.00, 2, '2026-01-15 09:03:32', '2026-01-15 09:03:32'),
(78, 58, NULL, 140, NULL, 'received', 560.00, '2026-01-15', 'cash', 'Payment for Invoice #INV-0000015', 0.00, 2, '2026-01-15 09:16:30', '2026-01-15 09:16:30'),
(79, 61, NULL, 143, NULL, 'received', 1500.00, '2026-01-15', 'cash', 'Payment for Invoice #INV-0000017', 425.20, 2, '2026-01-15 09:59:00', '2026-01-15 09:59:00'),
(80, 60, NULL, 144, NULL, 'received', 4000.00, '2026-01-15', 'cash', 'Payment for Invoice #INV-0000018', 21084.00, 2, '2026-01-15 10:02:09', '2026-01-15 10:02:09'),
(82, 59, NULL, 147, NULL, 'received', 17000.00, '2026-01-15', 'cash', 'Payment for Invoice #INV-0000021', -17000.00, 2, '2026-01-15 10:47:23', '2026-02-03 14:55:21'),
(83, 60, NULL, NULL, NULL, 'received', 10500.00, '2026-01-15', 'bank_transfer', 'eazy paisa', 10584.00, 2, '2026-01-15 18:18:56', '2026-01-15 18:18:56'),
(84, 68, NULL, 150, NULL, 'received', 3500.00, '2026-01-15', 'cash', 'Payment for Invoice #INV-0000024', 8896.10, 2, '2026-01-15 18:28:19', '2026-01-15 18:28:19'),
(86, 70, NULL, 151, NULL, 'received', 15000.00, '2026-01-15', 'cash', 'Payment for Updated Invoice #INV-0000025', 39851.60, 2, '2026-01-15 18:36:12', '2026-01-15 18:36:12'),
(87, 71, NULL, 152, NULL, 'received', 4000.00, '2026-01-15', 'cash', 'Payment for Invoice #INV-0000026', 2908.00, 2, '2026-01-15 18:52:09', '2026-01-15 18:52:09'),
(88, 72, NULL, 153, NULL, 'received', 5000.00, '2026-01-15', 'cash', 'Payment for Invoice #INV-0000027', 2225.00, 2, '2026-01-15 18:54:26', '2026-01-15 18:54:26'),
(89, 74, NULL, 156, NULL, 'received', 4500.00, '2026-01-15', 'cash', 'Payment for Invoice #INV-0000029', 243925.00, 2, '2026-01-15 19:03:32', '2026-01-15 19:03:32'),
(90, 53, NULL, NULL, NULL, 'received', 10000.00, '2026-01-15', 'cash', 'sabir ko diya', 6347.00, 2, '2026-01-15 20:46:46', '2026-01-15 20:46:46'),
(91, 59, NULL, NULL, NULL, 'received', 8000.00, '2026-01-15', 'cash', 'recieve  meezan acount', -25000.00, 2, '2026-01-15 23:08:41', '2026-02-03 14:55:21'),
(96, 74, NULL, NULL, NULL, 'received', 100000.00, '2026-01-16', 'cash', '70000 acount\n30000', 143925.00, 2, '2026-01-16 10:51:34', '2026-01-16 10:51:34'),
(97, 75, NULL, 160, NULL, 'received', 10000.00, '2026-01-17', 'bank', 'Payment for Invoice #INV-0000031', 0.00, 2, '2026-01-17 16:30:36', '2026-01-17 16:30:36'),
(98, 76, NULL, 161, NULL, 'received', 6765.00, '2026-01-17', 'cash', 'Payment for Invoice #INV-0000032', 0.00, 2, '2026-01-17 16:37:46', '2026-01-17 16:37:46'),
(99, 78, NULL, 163, NULL, 'received', 3300.00, '2026-01-17', 'bank', 'Payment for Invoice #INV-0000034', 0.00, 2, '2026-01-17 16:50:43', '2026-01-17 16:50:43'),
(100, 79, NULL, 164, NULL, 'received', 900.00, '2026-01-17', 'cash', 'Payment for Invoice #INV-0000035', 0.00, 2, '2026-01-17 16:52:24', '2026-01-17 16:52:24'),
(101, 81, NULL, 166, NULL, 'received', 4500.00, '2026-01-18', 'bank', 'Payment for Updated Invoice #INV-0000037', 0.00, 2, '2026-01-18 11:42:23', '2026-01-18 11:42:23'),
(102, 39, NULL, NULL, NULL, 'received', 32371.00, '2026-01-18', 'bank_transfer', 'Meezan Bank', 311645.00, 2, '2026-01-18 11:43:11', '2026-01-18 11:43:11'),
(103, 83, NULL, 176, NULL, 'received', 800.00, '2026-01-18', 'cash', 'Payment for Invoice #INV-0000047', 0.00, 2, '2026-01-18 13:10:37', '2026-01-18 13:10:37'),
(104, 68, NULL, NULL, NULL, 'received', 5000.00, '2026-01-18', 'bank_transfer', 'Jazz Cash (Faisal Nadeem)', 4586.10, 2, '2026-01-18 13:29:25', '2026-01-18 13:29:25'),
(106, 86, NULL, 179, NULL, 'received', 590.00, '2026-01-18', 'cash', 'Payment for Invoice #INV-0000049', -2.50, 2, '2026-01-18 17:27:52', '2026-01-18 17:27:52'),
(107, 82, NULL, 180, NULL, 'received', 2900.00, '2026-01-18', 'cash', 'Payment for Invoice #INV-0000050', 2014.00, 2, '2026-01-18 18:01:30', '2026-01-18 18:01:30'),
(108, 84, NULL, 177, NULL, 'received', 3150.00, '2026-01-18', 'cash', 'Payment for Updated Invoice #INV-0000048', 0.00, 2, '2026-01-18 18:04:23', '2026-01-18 18:04:23'),
(109, 87, NULL, 182, NULL, 'received', 1700.00, '2026-01-18', 'cash', 'Payment for Invoice #INV-0000052', -50.00, 2, '2026-01-18 18:08:03', '2026-01-18 18:08:03'),
(110, 89, NULL, 184, NULL, 'received', 2200.00, '2026-01-18', 'cash', 'Payment for Invoice #INV-0000054', 0.00, 2, '2026-01-18 18:12:50', '2026-01-18 18:12:50'),
(111, 80, NULL, NULL, NULL, 'received', 1700.00, '2026-01-18', 'cash', 'zohaib bhai', 2004.00, 2, '2026-01-18 18:48:42', '2026-01-18 18:48:42'),
(112, 60, NULL, NULL, NULL, 'received', 4000.00, '2026-01-18', 'cash', 'eazypaisa', 8894.00, 2, '2026-01-18 19:17:21', '2026-01-18 19:17:21'),
(113, 73, NULL, NULL, NULL, 'received', 560.00, '2026-01-19', 'cash', 'Shahbaz Ali', 3.20, 2, '2026-01-19 12:57:48', '2026-01-19 12:57:48'),
(115, 93, NULL, 195, NULL, 'received', 300.00, '2026-01-19', 'cash', 'Payment for Invoice #INV-0000064', 0.00, 2, '2026-01-19 17:49:57', '2026-01-19 17:49:57'),
(117, NULL, NULL, 203, NULL, 'received', 25000.00, '2026-01-19', 'cash', 'Payment for Updated Invoice #INV-0000072', 39262.00, 2, '2026-01-19 18:29:10', '2026-01-19 18:29:10'),
(118, 76, NULL, 204, NULL, 'received', 1320.00, '2026-01-19', 'bank', 'Payment for Invoice #INV-0000073', 0.00, 2, '2026-01-19 18:30:59', '2026-01-19 18:30:59'),
(119, 90, NULL, NULL, NULL, 'received', 1350.00, '2026-01-19', 'cash', NULL, 0.00, 2, '2026-01-19 18:33:52', '2026-01-19 18:33:52'),
(120, 72, NULL, 198, NULL, 'received', 2225.00, '2026-01-19', 'cash', 'Payment for Updated Invoice #INV-0000067', 2225.00, 2, '2026-01-19 18:49:13', '2026-01-19 18:49:13'),
(121, 50, NULL, NULL, NULL, 'received', 43107.50, '2026-01-19', 'bank_transfer', 'Meezan Bank', 0.00, 2, '2026-01-19 20:02:31', '2026-01-19 20:02:31'),
(122, 39, NULL, 207, NULL, 'received', 4000.00, '2026-01-20', 'bank', 'Payment for Invoice #INV-0000076', 311645.00, 2, '2026-01-20 10:53:11', '2026-01-20 10:53:11'),
(123, 62, NULL, 169, NULL, 'received', 5900.00, '2026-01-20', 'bank', 'Payment for Updated Invoice #INV-0000040', 2182.00, 2, '2026-01-20 12:13:19', '2026-01-20 12:13:19'),
(124, 97, NULL, 208, NULL, 'received', 300.00, '2026-01-20', 'cash', 'Payment for Invoice #INV-0000077', 0.00, 2, '2026-01-20 13:24:50', '2026-01-20 13:24:50'),
(125, 73, NULL, 209, NULL, 'received', 6000.00, '2026-01-20', 'cash', 'Payment for Invoice #INV-0000078', -4544.80, 2, '2026-01-20 13:50:15', '2026-02-03 15:11:42'),
(126, 95, NULL, NULL, NULL, 'received', 512.50, '2026-01-20', 'cash', NULL, 0.00, 2, '2026-01-20 14:18:23', '2026-01-20 14:18:23'),
(127, 98, NULL, 210, NULL, 'received', 450.00, '2026-01-20', 'cash', 'Payment for Invoice #INV-0000079', 0.00, 2, '2026-01-20 15:50:14', '2026-01-20 15:50:14'),
(128, 68, NULL, 213, NULL, 'received', 2000.00, '2026-01-20', 'cash', 'Payment for Updated Invoice #INV-0000082', 6744.50, 2, '2026-01-20 16:27:07', '2026-01-20 16:27:07'),
(129, 91, NULL, 190, NULL, 'received', 43500.00, '2026-01-20', 'cash', 'Payment for Updated Invoice #INV-0000060', 22673.00, 2, '2026-01-20 16:34:33', '2026-01-20 16:34:33'),
(130, 101, NULL, 217, NULL, 'received', 1200.00, '2026-01-20', 'cash', 'Payment for Invoice #INV-0000086', 0.00, 2, '2026-01-20 17:21:28', '2026-01-20 17:21:28'),
(131, 95, NULL, 201, NULL, 'received', 500.00, '2026-01-20', 'cash', 'Payment for Updated Invoice #INV-0000070', -512.50, 2, '2026-01-20 17:22:21', '2026-01-20 17:22:21'),
(132, 103, NULL, NULL, NULL, 'received', 350.00, '2026-01-21', 'cash', NULL, 0.00, 2, '2026-01-21 10:14:12', '2026-01-21 10:14:12'),
(134, 39, NULL, 220, NULL, 'received', 3000.00, '2026-01-21', 'bank', 'Payment for Updated Invoice #INV-0000089', 311645.00, 2, '2026-01-21 11:18:18', '2026-01-21 11:18:18'),
(136, 104, NULL, 221, NULL, 'received', 500.00, '2026-01-21', 'cash', 'Payment for Updated Invoice #INV-0000090', 0.00, 2, '2026-01-21 15:34:09', '2026-01-21 15:34:09'),
(137, 68, NULL, NULL, NULL, 'received', 1500.00, '2026-01-21', 'bank', 'Payment for Invoice #INV-0000091', 6279.50, 2, '2026-01-21 15:36:25', '2026-02-08 07:26:10'),
(138, 103, NULL, 219, NULL, 'received', 350.00, '2026-01-21', 'cash', 'Payment for Updated Invoice #INV-0000088', -350.00, 2, '2026-01-21 15:38:07', '2026-01-21 15:38:07'),
(139, 105, NULL, 223, NULL, 'received', 200.00, '2026-01-21', 'cash', 'Payment for Invoice #INV-0000092', 0.00, 2, '2026-01-21 16:54:41', '2026-01-21 16:54:41'),
(140, 107, NULL, 225, NULL, 'received', 200.00, '2026-01-21', 'cash', 'Payment for Invoice #INV-0000094', 226.00, 2, '2026-01-21 16:57:08', '2026-01-21 16:57:08'),
(141, 102, NULL, 218, NULL, 'received', 500.00, '2026-01-21', 'cash', 'Payment for Updated Invoice #INV-0000087', 0.00, 2, '2026-01-21 18:02:09', '2026-01-21 18:02:09'),
(142, 96, NULL, 206, NULL, 'received', 900.00, '2026-01-21', 'cash', 'Payment for Updated Invoice #INV-0000075', 0.00, 2, '2026-01-21 18:04:42', '2026-01-21 18:04:42'),
(143, 88, NULL, NULL, NULL, 'received', 13050.00, '2026-01-22', 'cash', NULL, 0.00, 2, '2026-01-22 11:51:16', '2026-01-22 11:51:16'),
(144, 37, NULL, NULL, NULL, 'received', 112300.00, '2026-01-22', 'cash', NULL, 0.00, 2, '2026-01-22 11:52:01', '2026-01-22 11:52:01'),
(145, 110, NULL, 237, NULL, 'received', 2700.00, '2026-01-22', 'bank', 'Payment for Invoice #INV-0000106', 0.00, 2, '2026-01-22 12:01:16', '2026-01-22 12:01:16'),
(146, 78, NULL, 232, NULL, 'received', 1500.00, '2026-01-22', 'cash', 'Payment for Updated Invoice #INV-0000101', 0.00, 2, '2026-01-22 13:59:07', '2026-01-22 13:59:07'),
(147, 112, NULL, 239, NULL, 'received', 650.00, '2026-01-22', 'cash', 'Payment for Invoice #INV-0000108', 0.00, 2, '2026-01-22 15:29:42', '2026-01-22 15:29:42'),
(148, 60, NULL, NULL, NULL, 'received', 5000.00, '2026-01-22', 'bank_transfer', 'Jazzcash(zohaib siddique)', 8569.00, 2, '2026-01-22 15:35:55', '2026-01-22 15:35:55'),
(149, 70, NULL, NULL, NULL, 'received', 10000.00, '2026-01-22', 'bank_transfer', 'easypaisa (zohaib siddique)', 37466.60, 2, '2026-01-22 15:36:32', '2026-01-22 15:36:32'),
(150, 50, NULL, NULL, NULL, 'received', 6153.00, '2026-01-22', 'bank_transfer', 'meezan bank', 0.00, 2, '2026-01-22 15:38:22', '2026-01-22 15:38:22'),
(151, 73, NULL, NULL, NULL, 'received', 6630.00, '2026-01-22', 'cash', 'jazzcash (zohaib siddique)', 1.20, 2, '2026-01-22 15:48:08', '2026-01-22 15:48:08'),
(153, 113, NULL, 240, NULL, 'received', 450.00, '2026-01-22', 'bank', 'Payment for Updated Invoice #INV-0000109', 0.00, 2, '2026-01-22 16:09:26', '2026-01-22 16:09:26'),
(154, 109, NULL, NULL, NULL, 'received', 7650.00, '2026-01-22', 'bank_transfer', 'jazzcash (zohaib siddique)', 0.00, 2, '2026-01-22 16:20:56', '2026-01-22 16:20:56'),
(155, 99, NULL, 214, NULL, 'received', 17500.00, '2026-01-22', 'cash', 'Payment for Updated Invoice #INV-0000083', 0.00, 2, '2026-01-22 16:54:50', '2026-01-22 16:54:50'),
(156, 106, NULL, 224, NULL, 'received', 370.00, '2026-01-22', 'bank', 'Payment for Updated Invoice #INV-0000093', 0.00, 2, '2026-01-22 17:22:33', '2026-01-22 17:22:33'),
(157, 59, NULL, NULL, NULL, 'received', 10000.00, '2026-01-22', 'cash', 'Payment for Invoice #INV-0000111', 5438.80, 2, '2026-01-22 17:26:45', '2026-02-03 15:02:29'),
(158, 115, NULL, 243, NULL, 'received', 750.00, '2026-01-22', 'cash', 'Payment for Invoice #INV-0000112', 0.00, 2, '2026-01-22 17:43:20', '2026-01-22 17:43:20'),
(165, 62, NULL, NULL, NULL, 'received', 2182.00, '2026-01-24', 'cash', NULL, 0.00, 2, '2026-01-24 14:34:14', '2026-01-24 14:34:14'),
(166, 71, NULL, NULL, NULL, 'received', 20000.00, '2026-01-24', 'bank_transfer', 'jazzcash', 2664.00, 2, '2026-01-24 14:40:09', '2026-01-24 14:40:09'),
(167, 50, NULL, NULL, NULL, 'received', 19133.60, '2026-01-24', 'cash', NULL, 0.00, 2, '2026-01-24 15:31:50', '2026-01-24 15:31:50'),
(168, 119, NULL, 262, NULL, 'received', 1800.00, '2026-01-24', 'cash', 'Payment for Invoice #INV-0000125', 0.00, 2, '2026-01-24 18:11:54', '2026-01-24 18:11:54'),
(169, 120, NULL, 263, NULL, 'received', 700.00, '2026-01-24', 'cash', 'Payment for Invoice #INV-0000126', 0.00, 2, '2026-01-24 18:12:36', '2026-01-24 18:12:36'),
(170, 49, NULL, NULL, NULL, 'received', 29050.00, '2026-01-24', 'cash', NULL, 7739.50, 2, '2026-01-24 18:20:18', '2026-01-24 18:20:18'),
(171, 122, NULL, NULL, NULL, 'received', 20000.00, '2026-01-24', 'cash', NULL, 4681.00, 2, '2026-01-24 18:26:24', '2026-01-24 18:26:24'),
(173, NULL, NULL, 272, NULL, 'received', 396.00, '2026-01-24', 'cash', 'Payment for Updated Invoice #INV-0000133', 0.00, 2, '2026-01-24 19:08:21', '2026-01-24 19:08:21'),
(174, 68, NULL, 275, NULL, 'received', 3000.00, '2026-01-25', 'cash', 'Payment for Invoice #INV-0000136', 9915.40, 2, '2026-01-25 16:25:52', '2026-01-25 16:25:52'),
(175, 50, NULL, 279, NULL, 'received', 3724.00, '2026-01-25', 'cash', 'Payment for Updated Invoice #INV-0000140', 10264.00, 2, '2026-01-25 18:34:46', '2026-01-25 18:34:46'),
(176, 82, NULL, 286, NULL, 'received', 5629.00, '2026-01-25', 'cash', 'Payment for Updated Invoice #INV-0000147', 5629.00, 2, '2026-01-25 18:41:19', '2026-01-25 18:41:19'),
(177, 125, NULL, 287, NULL, 'received', 1000.00, '2026-01-26', 'cash', 'Payment for Invoice #INV-0000148', -0.12, 2, '2026-01-26 17:49:45', '2026-01-26 17:49:45'),
(178, 126, NULL, 288, NULL, 'received', 500.00, '2026-01-26', 'cash', 'Payment for Invoice #INV-0000149', 670.00, 2, '2026-01-26 17:50:18', '2026-01-26 17:50:18'),
(179, 127, NULL, 289, NULL, 'received', 200.00, '2026-01-26', 'cash', 'Payment for Invoice #INV-0000150', 0.00, 2, '2026-01-26 17:51:31', '2026-01-26 17:51:31'),
(180, 74, NULL, NULL, NULL, 'received', 5000.00, '2026-01-26', 'cash', 'Shahbaz Ali\n(Citizen school flex 20x10)', 138925.00, 2, '2026-01-26 17:53:38', '2026-01-26 17:53:38'),
(181, 50, NULL, 291, NULL, 'received', 10264.00, '2026-01-26', 'cash', 'Payment for Updated Invoice #INV-0000152', 13321.00, 2, '2026-01-26 18:02:51', '2026-01-26 18:02:51'),
(182, 59, NULL, NULL, NULL, 'received', 10000.00, '2026-01-26', 'cash', NULL, 1169.80, 2, '2026-01-26 18:05:10', '2026-02-03 14:55:21'),
(183, 80, NULL, 293, NULL, 'received', 1500.00, '2026-01-26', 'cash', 'Payment for Invoice #INV-0000154', 1792.00, 2, '2026-01-26 18:34:14', '2026-01-26 18:34:14'),
(186, 102, NULL, 294, NULL, 'received', 1200.00, '2026-01-26', 'cash', 'Payment for Updated Invoice #INV-0000155', 180.00, 2, '2026-01-26 18:41:19', '2026-01-26 18:41:19'),
(187, 126, NULL, NULL, NULL, 'received', 650.00, '2026-01-27', 'cash', '20 discount', 20.00, 2, '2026-01-27 17:10:16', '2026-01-27 17:10:16'),
(188, 128, NULL, 295, NULL, 'received', 1800.00, '2026-01-27', 'cash', 'Payment for Invoice #INV-0000156', 0.00, 2, '2026-01-27 17:18:34', '2026-01-27 17:18:34'),
(189, 72, NULL, NULL, NULL, 'received', 1840.00, '2026-01-27', 'bank_transfer', 'jazz cash', 385.00, 2, '2026-01-27 17:24:17', '2026-01-27 17:24:17'),
(190, 73, NULL, NULL, NULL, 'received', 8000.00, '2026-01-27', 'cash', 'Payment for Invoice #INV-0000160', -6744.80, 2, '2026-01-27 17:26:57', '2026-02-03 15:12:23'),
(191, 70, NULL, NULL, NULL, 'received', 10000.00, '2026-01-27', 'cash', NULL, 31954.60, 2, '2026-01-27 17:38:16', '2026-01-27 17:38:16'),
(192, 50, NULL, NULL, NULL, 'received', 13321.00, '2026-01-27', 'bank_transfer', 'Meezan Bank', 0.00, 2, '2026-01-27 17:47:39', '2026-01-27 17:47:39'),
(193, 127, NULL, 306, NULL, 'received', 200.00, '2026-01-27', 'cash', 'Payment for Invoice #INV-0000167', 0.00, 2, '2026-01-27 18:09:25', '2026-01-27 18:09:25'),
(194, 50, NULL, NULL, NULL, 'received', 15000.00, '2026-01-28', 'cash', 'zohaib', 29627.00, 2, '2026-01-28 12:44:31', '2026-01-28 12:44:31'),
(195, 50, NULL, NULL, NULL, 'received', 29627.00, '2026-01-28', 'bank_transfer', 'Meezan bank', 0.00, 2, '2026-01-28 12:44:41', '2026-01-28 12:44:41'),
(196, 131, NULL, NULL, NULL, 'received', 12500.00, '2026-01-28', 'bank_transfer', 'meezan bank', 0.00, 2, '2026-01-28 12:44:56', '2026-01-28 12:44:56'),
(197, 71, NULL, NULL, NULL, 'received', 4000.00, '2026-01-28', 'bank_transfer', 'jazzcahs (zohaib siddique)', 732.00, 2, '2026-01-28 12:45:28', '2026-01-28 12:45:28'),
(198, 60, NULL, NULL, NULL, 'received', 3000.00, '2026-01-26', 'cash', 'faridi dy kr gya tha (zohaib siddique)', 12099.40, 2, '2026-01-28 12:50:55', '2026-01-28 12:50:55'),
(199, 68, NULL, NULL, NULL, 'received', 7000.00, '2026-01-28', 'bank_transfer', 'Jazzcash (zohaib Siddique)', 2915.40, 2, '2026-01-28 13:45:46', '2026-01-28 13:45:46'),
(200, 74, NULL, NULL, NULL, 'received', 35000.00, '2026-01-28', 'bank_transfer', 'Meezan Bank', 103925.00, 2, '2026-01-28 13:49:39', '2026-01-28 13:49:39'),
(201, 134, NULL, 311, NULL, 'received', 9700.00, '2026-01-28', 'cash', 'Payment for Updated Invoice #INV-0000172', 0.00, 2, '2026-01-28 15:31:33', '2026-01-28 15:31:33'),
(202, 60, NULL, NULL, NULL, 'received', 5000.00, '2026-01-28', 'bank_transfer', 'Jazzcash (zohaib Siddique)', 7099.40, 2, '2026-01-28 16:42:45', '2026-01-28 16:42:45'),
(203, 99, NULL, NULL, NULL, 'received', 5600.00, '2026-01-28', 'cash', 'faisal nadeem', 0.00, 2, '2026-01-28 16:50:19', '2026-01-28 16:50:19'),
(204, 116, NULL, NULL, NULL, 'received', 1000.00, '2026-01-28', 'cash', NULL, 140.00, 2, '2026-01-28 16:58:49', '2026-01-28 16:58:49'),
(205, 45, NULL, NULL, NULL, 'received', 10000.00, '2026-01-28', 'cash', 'cash receive', 0.00, 2, '2026-01-28 17:08:39', '2026-01-28 17:08:39'),
(206, 53, NULL, NULL, NULL, 'received', 1150.00, '2026-01-25', 'bank_transfer', 'easypaisa (zohaib siddique)', 6481.80, 2, '2026-01-28 17:12:40', '2026-01-28 17:12:40'),
(207, 53, NULL, NULL, NULL, 'received', 10000.00, '2026-01-28', 'bank_transfer', 'jazzcash (zohaib siddique)', 12145.80, 2, '2026-01-28 17:51:50', '2026-01-28 17:51:50'),
(208, 72, NULL, NULL, NULL, 'received', 385.00, '2026-01-26', 'cash', 'difference', 1012.00, 2, '2026-01-28 18:01:17', '2026-01-28 18:01:17'),
(209, 135, NULL, 318, NULL, 'received', 300.00, '2026-01-28', 'cash', 'Payment for Updated Invoice #INV-0000179', 0.00, 2, '2026-01-28 18:09:19', '2026-01-28 18:09:19'),
(210, 129, NULL, NULL, NULL, 'received', 1325.00, '2026-01-28', 'cash', '25 discount', 0.00, 2, '2026-01-28 18:15:51', '2026-01-28 18:15:51'),
(211, 59, NULL, NULL, NULL, 'received', 12000.00, '2026-01-29', 'bank_transfer', 'meezan bank', -965.20, 2, '2026-01-29 10:27:29', '2026-02-03 14:55:21'),
(212, 50, NULL, NULL, NULL, 'received', 1317.36, '2026-01-29', 'bank_transfer', 'meezan bank', 0.00, 2, '2026-01-29 10:28:12', '2026-01-29 10:28:12'),
(213, 53, NULL, NULL, NULL, 'received', 6000.00, '2026-01-29', 'bank_transfer', 'Jazzcash (zohaib Siddique)', 6145.80, 2, '2026-01-29 14:10:28', '2026-01-29 14:10:28'),
(214, 141, NULL, 326, NULL, 'received', 1000.00, '2026-01-29', 'cash', 'Payment for Invoice #INV-0000187', 680.00, 2, '2026-01-29 17:13:07', '2026-01-29 17:13:07'),
(216, 107, NULL, NULL, NULL, 'received', 200.00, '2026-01-29', 'cash', '26 discount', 26.00, 2, '2026-01-29 17:22:25', '2026-01-29 17:22:25'),
(217, 56, NULL, 328, NULL, 'received', 18300.00, '2026-01-29', 'cash', 'Payment for Invoice #INV-0000189', 0.00, 2, '2026-01-29 17:23:59', '2026-01-29 17:23:59'),
(218, 62, NULL, NULL, NULL, 'received', 2500.00, '2026-01-26', 'bank_transfer', 'Zohaib siddique', 53.00, 2, '2026-01-29 17:32:55', '2026-01-29 17:32:55'),
(219, 82, NULL, NULL, NULL, 'received', 5629.00, '2026-01-23', 'bank_transfer', 'zohaib siddique', -6692.00, 2, '2026-01-29 17:37:58', '2026-02-12 16:41:09'),
(220, 80, NULL, NULL, NULL, 'received', 5000.00, '2026-01-29', 'cash', NULL, 408.00, 2, '2026-01-29 17:43:58', '2026-01-29 17:43:58'),
(221, 143, NULL, 332, NULL, 'received', 3000.00, '2026-01-29', 'cash', 'Payment for Invoice #INV-0000193', 2150.00, 2, '2026-01-29 17:45:26', '2026-01-29 17:45:26'),
(222, 145, NULL, 336, NULL, 'received', 400.00, '2026-01-29', 'cash', 'Payment for Invoice #INV-0000197', 0.00, 2, '2026-01-29 17:50:51', '2026-01-29 17:50:51'),
(223, 136, NULL, NULL, NULL, 'received', 14418.00, '2026-01-29', 'cash', '18 discount', 0.00, 2, '2026-01-29 18:13:16', '2026-01-29 18:13:16'),
(224, 140, NULL, 325, NULL, 'received', 200.00, '2026-01-29', 'cash', 'Payment for Updated Invoice #INV-0000186', 0.00, 2, '2026-01-29 18:14:07', '2026-01-29 18:14:07'),
(225, 51, NULL, NULL, NULL, 'received', 2587.50, '2026-01-15', 'bank_transfer', 'bank zohaib siddique', 1702.00, 2, '2026-01-29 18:31:00', '2026-01-29 18:31:00'),
(226, 51, NULL, 340, NULL, 'received', 5000.00, '2026-01-29', 'bank', 'Payment for Invoice #INV-0000199', 451.00, 2, '2026-01-29 18:33:09', '2026-01-29 18:33:09'),
(227, 50, NULL, NULL, NULL, 'received', 13016.00, '2026-01-29', 'bank_transfer', 'meezan bank', 0.00, 2, '2026-01-30 01:21:48', '2026-01-30 01:21:48'),
(228, 146, NULL, 341, NULL, 'received', 690.00, '2026-01-31', 'cash', 'Payment for Invoice #INV-0000200', 0.00, 2, '2026-01-31 11:58:37', '2026-01-31 11:58:37'),
(229, 139, NULL, 324, NULL, 'received', 900.00, '2026-01-31', 'cash', 'Payment for Updated Invoice #INV-0000185', 0.00, 2, '2026-01-31 12:06:42', '2026-01-31 12:06:42'),
(230, 70, NULL, NULL, NULL, 'received', 22000.00, '2026-01-31', 'bank_transfer', 'Jazzcash (zohaib siddique)\nirtaza', 26971.64, 2, '2026-01-31 12:09:52', '2026-01-31 12:09:52'),
(231, 68, NULL, NULL, NULL, 'received', 14000.00, '2026-01-31', 'cash', NULL, -3789.00, 2, '2026-01-31 12:10:56', '2026-01-31 12:10:56'),
(232, 141, NULL, NULL, NULL, 'received', 680.00, '2026-01-31', 'cash', '50 dicount', 0.00, 2, '2026-01-31 12:57:26', '2026-01-31 12:57:26'),
(234, 148, NULL, 344, NULL, 'received', 1600.00, '2026-01-31', 'cash', 'Payment for Invoice #INV-0000203', 0.00, 2, '2026-01-31 15:48:12', '2026-01-31 15:48:12'),
(235, 73, NULL, NULL, NULL, 'received', 3000.00, '2026-01-31', 'cash', NULL, -1472.80, 2, '2026-01-31 15:49:48', '2026-02-03 15:11:42'),
(236, 142, NULL, 327, NULL, 'received', 500.00, '2026-01-31', 'cash', 'Payment for Updated Invoice #INV-0000188', 10579.10, 2, '2026-01-31 16:06:47', '2026-01-31 16:06:47'),
(239, 149, NULL, 346, NULL, 'received', 37280.00, '2026-01-31', 'cash', 'Payment for Updated Invoice #INV-0000205', 0.00, 2, '2026-01-31 18:04:25', '2026-01-31 18:04:25'),
(240, 142, NULL, NULL, NULL, 'received', 10500.00, '2026-01-31', 'cash', NULL, 79.10, 2, '2026-01-31 18:21:49', '2026-01-31 18:21:49'),
(241, 151, NULL, 349, NULL, 'received', 700.00, '2026-01-31', 'cash', 'Payment for Invoice #INV-0000207', 0.00, 2, '2026-01-31 18:34:20', '2026-01-31 18:34:20'),
(242, 152, NULL, 352, NULL, 'received', 700.00, '2026-01-31', 'cash', 'Payment for Invoice #INV-0000210', 0.00, 2, '2026-01-31 18:37:11', '2026-01-31 18:37:11'),
(243, 136, NULL, NULL, NULL, 'received', 25500.00, '2026-02-01', 'cash', 'Shahbaz Ali', 252.06, 2, '2026-02-01 11:45:40', '2026-02-01 11:45:40'),
(244, 50, NULL, NULL, NULL, 'received', 18150.00, '2026-02-01', 'bank_transfer', 'meezan bank', 0.00, 2, '2026-02-01 12:48:56', '2026-02-01 12:48:56'),
(245, 154, NULL, NULL, NULL, 'received', 1500.00, '2026-02-01', 'cash', NULL, 0.00, 2, '2026-02-01 16:40:51', '2026-02-01 16:40:51'),
(246, 155, NULL, NULL, NULL, 'received', 360.00, '2026-02-01', 'cash', '10 discount', 0.00, 2, '2026-02-01 16:41:58', '2026-02-01 16:41:58'),
(249, 56, NULL, 372, NULL, 'received', 3000.00, '2026-02-01', 'cash', 'Payment for Invoice #INV-0000228', 0.00, 2, '2026-02-01 18:57:59', '2026-02-01 18:57:59'),
(250, 133, NULL, NULL, NULL, 'received', 6917.50, '2026-02-01', 'bank_transfer', 'Jazzcash(zohaib siddique)\n917.50 Discount', 0.00, 2, '2026-02-01 19:02:17', '2026-02-01 19:02:17'),
(251, 156, NULL, 376, NULL, 'received', 1500.00, '2026-02-01', 'cash', 'Payment for Invoice #INV-0000232', 0.00, 2, '2026-02-01 19:08:25', '2026-02-01 19:08:25'),
(252, 157, NULL, 377, NULL, 'received', 500.00, '2026-02-01', 'cash', 'Payment for Invoice #INV-0000233', 280.00, 2, '2026-02-01 19:09:22', '2026-02-01 19:09:22'),
(253, 143, NULL, NULL, NULL, 'received', 2150.00, '2026-02-01', 'cash', NULL, 0.00, 2, '2026-02-01 19:25:01', '2026-02-01 19:25:01'),
(254, NULL, 21, NULL, NULL, 'paid', 656661.00, '2026-01-31', 'cash', NULL, 109040.00, 2, '2026-02-01 19:52:05', '2026-02-01 19:52:05'),
(255, 62, NULL, NULL, NULL, 'received', 1433.00, '2026-02-01', 'cash', 'cash', 0.00, 2, '2026-02-02 12:34:53', '2026-02-02 12:34:53'),
(256, 136, NULL, NULL, NULL, 'received', 15237.06, '2026-02-02', 'bank_transfer', 'zohaib siddique', 0.00, 2, '2026-02-02 13:11:44', '2026-02-02 13:11:44'),
(257, 68, NULL, NULL, NULL, 'received', 7000.00, '2026-02-02', 'cash', 'Badast (azeem)', 34176.00, 2, '2026-02-02 13:23:31', '2026-02-02 13:23:31'),
(258, 122, NULL, NULL, NULL, 'received', 20000.00, '2026-02-02', 'cash', '17500 cash\n2500 jazzcash', 13051.50, 2, '2026-02-02 13:36:26', '2026-02-02 13:36:26'),
(259, 122, NULL, NULL, NULL, 'received', 3000.00, '2026-02-02', 'cash', 'discount', 10051.50, 2, '2026-02-02 13:37:36', '2026-02-02 13:37:36'),
(260, 158, NULL, 380, NULL, 'received', 1000.00, '2026-02-02', 'bank', 'Payment for Invoice #INV-0000236', 0.00, 2, '2026-02-02 14:12:54', '2026-02-02 14:12:54'),
(261, 76, NULL, 381, NULL, 'received', 3300.00, '2026-02-02', 'bank', 'Payment for Invoice #INV-0000237', 0.00, 2, '2026-02-02 17:08:07', '2026-02-02 17:08:07'),
(262, 154, NULL, 382, NULL, 'received', 1000.00, '2026-02-02', 'cash', 'Payment for Invoice #INV-0000238', 0.00, 2, '2026-02-02 17:35:02', '2026-02-02 17:35:02'),
(263, 50, NULL, NULL, NULL, 'received', 16214.00, '2026-02-02', 'bank_transfer', 'Meezan Bank', 0.00, 2, '2026-02-02 18:38:08', '2026-02-02 18:38:08'),
(264, 91, NULL, NULL, NULL, 'received', 3000.00, '2026-02-02', 'cash', 'zohaib siddique', 27213.00, 2, '2026-02-02 18:44:22', '2026-02-02 18:44:22'),
(265, 108, NULL, NULL, NULL, 'received', 1300.00, '2026-01-20', 'cash', 'Zahid Center mazdori', 2642.40, 2, '2026-02-02 18:53:40', '2026-02-02 18:53:40'),
(266, 72, NULL, NULL, NULL, 'received', 3795.00, '2026-02-02', 'cash', 'recieve', 0.00, 2, '2026-02-02 20:02:11', '2026-02-02 20:02:11'),
(267, 59, NULL, NULL, NULL, 'received', 8500.00, '2026-02-02', 'cash', 'meezan acount', -5263.20, 2, '2026-02-02 22:16:01', '2026-02-03 14:55:21'),
(268, 68, NULL, NULL, NULL, 'received', 23000.00, '2026-02-03', 'cash', 'Faisal Nadeem', 18954.60, 2, '2026-02-03 11:50:12', '2026-02-03 11:50:12'),
(270, 119, NULL, NULL, NULL, 'received', 1500.00, '2026-01-15', 'bank_transfer', NULL, 0.00, 2, '2026-02-03 13:54:23', '2026-02-03 13:54:23'),
(271, 119, NULL, 390, NULL, 'received', 1500.00, '2026-02-03', 'bank', 'Payment for Updated Invoice #INV-0000246', 0.00, 2, '2026-02-03 13:54:35', '2026-02-03 13:54:35'),
(272, 160, NULL, 392, NULL, 'received', 300.00, '2026-02-03', 'cash', 'Payment for Invoice #INV-0000248', 0.00, 2, '2026-02-03 15:16:16', '2026-02-03 15:16:16'),
(273, 49, NULL, NULL, NULL, 'received', 7000.00, '2026-02-03', 'cash', 'ashraf chawla bill', 739.50, 2, '2026-02-03 15:48:10', '2026-02-03 15:48:10'),
(274, 39, NULL, NULL, NULL, 'received', 58272.00, '2026-02-03', 'bank_transfer', 'Meezan Bank', 311645.00, 2, '2026-02-03 17:00:01', '2026-02-03 17:00:01'),
(275, 39, NULL, NULL, NULL, 'received', 100000.00, '2026-02-03', 'cash', 'Zohaib Siddique', 211645.00, 2, '2026-02-03 17:00:23', '2026-02-03 17:00:23'),
(276, 91, NULL, NULL, NULL, 'received', 1000.00, '2026-02-03', 'cash', 'Faisal Nadeem', 26213.00, 2, '2026-02-03 17:06:27', '2026-02-03 17:06:27'),
(279, 73, NULL, NULL, NULL, 'received', 5000.00, '2026-02-03', 'cash', 'Shahbaz Ali', 3977.20, 2, '2026-02-03 17:24:44', '2026-02-03 15:11:42'),
(280, 161, NULL, 403, NULL, 'received', 25000.00, '2026-02-03', 'cash', 'Payment for Invoice #INV-0000259', 0.30, 2, '2026-02-03 18:26:07', '2026-02-03 18:26:07'),
(281, 162, NULL, 402, NULL, 'received', 200.00, '2026-02-03', 'cash', 'Payment for Updated Invoice #INV-0000258', 0.00, 2, '2026-02-03 18:30:28', '2026-02-03 18:30:28'),
(282, 50, NULL, NULL, NULL, 'received', 8914.00, '2026-02-03', 'bank_transfer', 'meezan bank', 0.00, 2, '2026-02-04 01:26:53', '2026-02-04 01:26:53'),
(283, 42, NULL, NULL, NULL, 'received', 32500.00, '2026-02-04', 'bank_transfer', 'Meezan Bank (zohaib siddique)', 36790.00, 2, '2026-02-04 12:28:30', '2026-02-04 12:28:30'),
(284, 92, NULL, NULL, NULL, 'received', 4620.00, '2026-02-04', 'bank_transfer', 'Jazzcash (faisal nadeem)', 0.00, 2, '2026-02-04 13:19:50', '2026-02-04 13:19:50'),
(285, 73, NULL, NULL, NULL, 'received', 5000.00, '2026-02-04', 'cash', 'Faisal Nadeem', 1001.20, 2, '2026-02-04 17:01:49', '2026-02-04 17:01:49'),
(286, 164, NULL, 409, NULL, 'received', 1350.00, '2026-02-04', 'cash', 'Payment for Invoice #INV-0000265', 0.00, 2, '2026-02-04 18:21:01', '2026-02-04 18:21:01'),
(287, 60, NULL, NULL, NULL, 'received', 6500.00, '2026-02-04', 'cash', '4000  cash \n2500 jazzcash', 4472.40, 2, '2026-02-04 18:24:10', '2026-02-04 18:24:10'),
(288, 42, NULL, 410, NULL, 'received', 2600.00, '2026-02-04', 'bank', 'Payment for Invoice #INV-0000266', 36830.00, 2, '2026-02-04 18:26:26', '2026-02-04 18:26:26'),
(290, 165, NULL, 411, NULL, 'received', 1000.00, '2026-02-04', 'cash', 'Payment for Updated Invoice #INV-0000267', 1340.00, 2, '2026-02-04 18:36:08', '2026-02-04 18:36:08'),
(291, 166, NULL, 412, NULL, 'received', 900.00, '2026-02-04', 'cash', 'Payment for Invoice #INV-0000268', 0.00, 2, '2026-02-04 18:37:26', '2026-02-04 18:37:26'),
(292, 122, NULL, NULL, NULL, 'received', 9900.00, '2026-02-05', 'bank_transfer', 'jazzcash', 19408.70, 2, '2026-02-05 09:33:10', '2026-02-05 09:33:10'),
(293, 70, NULL, NULL, NULL, 'received', 8000.00, '2026-02-05', 'cash', 'irtaza', 29065.14, 2, '2026-02-05 12:30:37', '2026-02-05 12:30:37'),
(294, 50, NULL, NULL, NULL, 'received', 5720.00, '2026-02-05', 'bank_transfer', 'meezan bank', 0.00, 2, '2026-02-05 14:24:03', '2026-02-05 14:24:03'),
(295, 53, NULL, 424, NULL, 'received', 5000.00, '2026-02-05', 'cash', 'Payment for Invoice #INV-0000280', 8812.80, 2, '2026-02-05 14:35:19', '2026-02-05 14:35:19'),
(296, 73, NULL, NULL, NULL, 'received', 2000.00, '2026-02-05', 'cash', NULL, 1047.20, 2, '2026-02-05 17:54:18', '2026-02-05 17:54:18'),
(297, 154, NULL, 430, NULL, 'received', 950.00, '2026-02-05', 'cash', 'Payment for Invoice #INV-0000286', 0.00, 2, '2026-02-05 17:57:52', '2026-02-05 17:57:52'),
(298, 168, NULL, 431, NULL, 'received', 800.00, '2026-02-05', 'cash', 'Payment for Invoice #INV-0000287', 0.00, 2, '2026-02-05 17:59:21', '2026-02-05 17:59:21'),
(299, 169, NULL, 432, NULL, 'received', 950.00, '2026-02-05', 'cash', 'Payment for Invoice #INV-0000288', 0.00, 2, '2026-02-05 18:00:07', '2026-02-05 18:00:07'),
(300, 90, NULL, 433, NULL, 'received', 2100.00, '2026-02-05', 'cash', 'Payment for Invoice #INV-0000289', 0.00, 2, '2026-02-05 18:00:42', '2026-02-05 18:00:42'),
(301, 170, NULL, 434, NULL, 'received', 2400.00, '2026-02-05', 'cash', 'Payment for Invoice #INV-0000290', 0.00, 2, '2026-02-05 18:01:34', '2026-02-05 18:01:34'),
(302, 171, NULL, 437, NULL, 'received', 6000.00, '2026-02-05', 'cash', 'Payment for Updated Invoice #INV-0000293', 27688.00, 2, '2026-02-05 18:07:59', '2026-02-05 18:07:59'),
(303, 62, NULL, 426, NULL, 'received', 1200.00, '2026-02-05', 'cash', 'Payment for Updated Invoice #INV-0000282', 83.40, 2, '2026-02-05 18:08:24', '2026-02-05 18:08:24'),
(304, 165, NULL, NULL, NULL, 'received', 1300.00, '2026-02-05', 'cash', '40 discount', 40.00, 2, '2026-02-05 18:26:16', '2026-02-05 18:26:16'),
(305, 172, NULL, 442, NULL, 'received', 1150.00, '2026-02-05', 'cash', 'Payment for Invoice #INV-0000298', 0.00, 2, '2026-02-05 18:26:52', '2026-02-05 18:26:52'),
(306, 49, NULL, NULL, NULL, 'received', 9400.00, '2026-02-07', 'cash', 'cash', 585.50, 2, '2026-02-07 09:16:11', '2026-02-07 09:16:11'),
(307, 68, NULL, NULL, NULL, 'received', 10000.00, '2026-02-07', 'cash', 'Faisal Nadeem', 12386.20, 2, '2026-02-07 11:22:48', '2026-02-07 11:22:48'),
(308, 68, NULL, NULL, NULL, 'received', 1301.00, '2026-02-04', 'cash', 'diffenece', 11085.20, 2, '2026-02-07 14:59:01', '2026-02-07 14:59:01'),
(309, 68, NULL, NULL, NULL, 'received', 2000.00, '2026-02-04', 'cash', 'discount bill', 9085.20, 2, '2026-02-07 14:59:57', '2026-02-07 14:59:57'),
(310, 174, NULL, 446, NULL, 'received', 43570.00, '2026-02-07', 'cash', 'Payment for Invoice #INV-0000302', 0.00, 2, '2026-02-07 18:25:25', '2026-02-07 18:25:25'),
(311, 177, NULL, 456, NULL, 'received', 900.00, '2026-02-07', 'cash', 'Payment for Invoice #INV-0000312', 0.00, 2, '2026-02-07 19:04:15', '2026-02-07 19:04:15'),
(312, 44, NULL, NULL, NULL, 'received', 49000.00, '2026-02-08', 'bank_transfer', 'Jazzcash (zohaib Siddique)', 73678.50, 2, '2026-02-08 11:36:00', '2026-02-08 11:36:00'),
(313, 51, NULL, NULL, NULL, 'received', 1700.00, '2026-02-08', 'bank_transfer', 'Jazzcash (zohaib siddique)', -30.00, 2, '2026-02-08 12:03:02', '2026-02-08 12:03:02'),
(314, 171, NULL, NULL, NULL, 'received', 27688.00, '2026-02-08', 'bank_transfer', '2688 Dicount', 0.00, 2, '2026-02-08 12:03:54', '2026-02-08 12:03:54'),
(315, 159, NULL, 391, NULL, 'received', 15000.00, '2026-02-08', 'cash', 'Payment for Updated Invoice #INV-0000247', 19782.00, 2, '2026-02-08 12:05:33', '2026-02-08 12:05:33'),
(316, 72, NULL, NULL, NULL, 'received', 1288.00, '2026-02-08', 'bank_transfer', 'Jazzcash (zohaib siddique)', 690.00, 2, '2026-02-08 17:40:10', '2026-02-08 17:40:10'),
(317, 76, NULL, 459, NULL, 'received', 660.00, '2026-02-08', 'cash', 'Payment for Invoice #INV-0000315', 0.00, 2, '2026-02-08 18:35:12', '2026-02-08 18:35:12'),
(318, 179, NULL, 460, NULL, 'received', 1000.00, '2026-02-08', 'cash', 'Payment for Invoice #INV-0000316', 0.00, 2, '2026-02-08 18:56:40', '2026-02-08 18:56:40'),
(319, 181, NULL, 463, NULL, 'received', 450.00, '2026-02-08', 'cash', 'Payment for Invoice #INV-0000319', 0.00, 2, '2026-02-08 18:58:44', '2026-02-08 18:58:44'),
(320, 182, NULL, 465, NULL, 'received', 150.00, '2026-02-08', 'cash', 'Payment for Invoice #INV-0000321', 0.00, 2, '2026-02-08 19:01:27', '2026-02-08 19:01:27'),
(321, 183, NULL, 469, NULL, 'received', 900.00, '2026-02-08', 'cash', 'Payment for Invoice #INV-0000325', 0.00, 2, '2026-02-08 19:04:18', '2026-02-08 19:04:18'),
(322, 50, NULL, NULL, NULL, 'received', 6726.00, '2026-02-08', 'bank_transfer', 'recive', 0.00, 2, '2026-02-08 20:32:12', '2026-02-08 20:32:12'),
(323, 71, NULL, NULL, NULL, 'received', 3500.00, '2026-02-09', 'bank_transfer', 'Jazzcash (zohaib siddique)', 146.00, 2, '2026-02-09 10:41:58', '2026-02-09 10:41:58'),
(324, 60, NULL, NULL, NULL, 'received', 6000.00, '2026-02-09', 'cash', 'jazzcash recieve', 11256.70, 2, '2026-02-09 11:41:21', '2026-02-09 11:41:21'),
(325, 61, NULL, NULL, NULL, 'received', 1000.00, '2026-01-26', 'bank_transfer', 'Jazzcash (zohaib siddique)\n26-01-2026', 667.20, 2, '2026-02-09 13:04:35', '2026-02-09 13:04:35'),
(326, 61, NULL, NULL, NULL, 'received', 667.20, '2026-01-26', 'cash', '17.20 Discount', 0.00, 2, '2026-02-09 13:04:56', '2026-02-09 13:04:56'),
(327, 184, NULL, 472, NULL, 'received', 1064.00, '2026-02-09', 'bank', 'Payment for Invoice #INV-0000328', 0.00, 2, '2026-02-09 16:56:18', '2026-02-09 16:56:18'),
(328, 70, NULL, NULL, NULL, 'received', 10000.00, '2026-02-09', 'cash', 'cash recieve', 25832.59, 2, '2026-02-09 18:00:52', '2026-02-09 18:00:52'),
(329, 185, NULL, 475, NULL, 'received', 1000.00, '2026-02-09', 'cash', 'Payment for Invoice #INV-0000331', 300.00, 2, '2026-02-09 18:56:40', '2026-02-09 18:56:40'),
(330, 186, NULL, 476, NULL, 'received', 1000.00, '2026-02-09', 'cash', 'Payment for Invoice #INV-0000332', 1580.00, 2, '2026-02-09 18:57:24', '2026-02-09 18:57:24'),
(331, 187, NULL, 478, NULL, 'received', 1000.00, '2026-02-09', 'cash', 'Payment for Invoice #INV-0000334', 0.00, 2, '2026-02-09 18:59:18', '2026-02-09 18:59:18'),
(332, 188, NULL, 479, NULL, 'received', 730.00, '2026-02-09', 'cash', 'Payment for Invoice #INV-0000335', 0.00, 2, '2026-02-09 18:59:51', '2026-02-09 18:59:51'),
(333, 155, NULL, 488, NULL, 'received', 900.00, '2026-02-09', 'cash', 'Payment for Invoice #INV-0000344', 0.00, 2, '2026-02-09 19:10:07', '2026-02-09 19:10:07'),
(334, 49, NULL, 477, NULL, 'received', 10000.00, '2026-02-09', 'bank', 'Payment for Updated Invoice #INV-0000333', 11745.50, 2, '2026-02-09 19:30:21', '2026-02-09 19:30:21'),
(335, 68, NULL, NULL, NULL, 'received', 9000.00, '2026-02-10', 'cash', 'Faisal Nadeem', 9947.20, 2, '2026-02-10 10:25:05', '2026-02-10 10:25:05'),
(336, 50, NULL, NULL, NULL, 'received', 21965.60, '2026-02-10', 'cash', 'recieve  meezan bank', 0.00, 2, '2026-02-10 10:30:24', '2026-02-10 10:30:24'),
(337, 53, NULL, NULL, NULL, 'received', 13500.00, '2026-02-10', 'bank_transfer', 'meezan bank', 9040.80, 2, '2026-02-10 12:50:41', '2026-02-10 12:50:41'),
(338, 91, NULL, NULL, NULL, 'received', 1800.00, '2026-02-10', 'cash', 'Faisal Nadeem', 27012.00, 2, '2026-02-10 14:37:49', '2026-02-10 14:37:49'),
(339, 191, NULL, 491, NULL, 'received', 2100.00, '2026-02-10', 'cash', 'Payment for Invoice #INV-0000347', 0.00, 2, '2026-02-10 16:08:16', '2026-02-10 16:08:16'),
(340, 49, NULL, NULL, NULL, 'received', 11212.00, '2026-02-10', 'cash', 'cash', 533.50, 2, '2026-02-10 16:33:21', '2026-02-10 16:33:21'),
(341, 68, NULL, NULL, NULL, 'received', 1789.00, '2026-02-10', 'cash', 'azeem se liye wallpaper garamore desining', 8158.20, 2, '2026-02-10 16:34:11', '2026-02-10 16:34:11'),
(342, 193, NULL, 500, NULL, 'received', 2400.00, '2026-02-10', 'cash', 'Payment for Invoice #INV-0000353', 0.00, 2, '2026-02-10 17:06:18', '2026-02-10 17:06:18'),
(343, 194, NULL, 501, NULL, 'received', 4950.00, '2026-02-10', 'cash', 'Payment for Invoice #INV-0000354', 0.00, 2, '2026-02-10 17:34:22', '2026-02-10 17:34:22'),
(344, 185, NULL, NULL, NULL, 'received', 300.00, '2026-02-10', 'cash', NULL, 0.00, 2, '2026-02-10 17:51:51', '2026-02-10 17:51:51'),
(345, 171, NULL, 502, NULL, 'received', 5000.00, '2026-02-10', 'cash', 'Payment for Updated Invoice #INV-0000355', 5110.00, 2, '2026-02-10 18:39:51', '2026-02-10 18:39:51'),
(346, 42, NULL, NULL, NULL, 'received', 5000.00, '2026-02-10', 'cash', 'cash recieve', 37170.00, 2, '2026-02-10 19:47:00', '2026-02-10 19:47:00'),
(347, 50, NULL, NULL, NULL, 'received', 9559.00, '2026-02-10', 'cash', 'meezan bank', 0.00, 2, '2026-02-11 00:01:02', '2026-02-11 00:01:02'),
(348, 41, NULL, NULL, NULL, 'received', 15000.00, '2026-02-11', 'bank_transfer', 'meezan bank', 13140.00, 2, '2026-02-11 12:00:24', '2026-02-11 12:00:24'),
(349, 91, NULL, NULL, NULL, 'received', 10000.00, '2025-12-17', 'cash', 'recive', 18990.00, 2, '2026-02-11 12:14:53', '2026-02-11 12:14:53'),
(350, 91, NULL, NULL, NULL, 'received', 3000.00, '2026-02-10', 'cash', 'recieve hard cash', 15990.00, 2, '2026-02-11 12:15:47', '2026-02-11 12:15:47'),
(351, 198, NULL, 507, NULL, 'received', 2000.00, '2026-02-11', 'cash', 'Payment for Invoice #INV-0000360', 1499.90, 2, '2026-02-11 12:48:38', '2026-02-11 12:48:38'),
(352, 111, NULL, NULL, NULL, 'received', 78020.00, '2026-02-11', 'cash', 'zohaib siddique (cloth purchase)', 16630.00, 2, '2026-02-11 13:00:46', '2026-02-11 13:00:46'),
(353, 196, NULL, 505, NULL, 'received', 1670.00, '2026-02-11', 'cash', 'Payment for Updated Invoice #INV-0000358', 0.00, 2, '2026-02-11 14:37:17', '2026-02-11 14:37:17'),
(354, 137, NULL, 322, NULL, 'received', 46214.00, '2026-02-11', 'cash', 'Payment for Updated Invoice #INV-0000183', 0.00, 2, '2026-02-11 15:55:44', '2026-02-11 15:55:44'),
(355, 138, NULL, 323, NULL, 'received', 15725.00, '2026-02-11', 'cash', 'Payment for Updated Invoice #INV-0000184', 0.00, 2, '2026-02-11 15:56:19', '2026-02-11 15:56:19'),
(356, 153, NULL, 355, NULL, 'received', 2448.00, '2026-02-11', 'cash', 'Payment for Updated Invoice #INV-0000213', 0.00, 2, '2026-02-11 15:56:40', '2026-02-11 15:56:40'),
(357, 199, NULL, 508, NULL, 'received', 400.00, '2026-02-11', 'cash', 'Payment for Invoice #INV-0000361', 0.00, 2, '2026-02-11 16:57:47', '2026-02-11 16:57:47'),
(358, 60, NULL, NULL, NULL, 'received', 4000.00, '2026-02-11', 'cash', 'shahbaz ali', 13960.10, 2, '2026-02-11 17:59:02', '2026-02-11 17:59:02'),
(359, 201, NULL, 523, NULL, 'received', 500.00, '2026-02-12', 'cash', 'Payment for Updated Invoice #INV-0000376', 0.00, 2, '2026-02-12 11:08:39', '2026-02-12 11:08:39'),
(360, 68, NULL, NULL, NULL, 'received', 2000.00, '2026-02-12', 'cash', 'Faisal nadeem', 8950.40, 2, '2026-02-12 12:49:33', '2026-02-12 12:49:33'),
(361, 123, NULL, NULL, NULL, 'received', 2000.00, '2026-02-12', 'cash', 'Faisal Nadeem', 788.00, 2, '2026-02-12 13:39:27', '2026-02-12 13:39:27'),
(362, 198, NULL, NULL, NULL, 'received', 1500.00, '2026-02-12', 'cash', 'Faisal nadeem', -0.10, 2, '2026-02-12 17:56:56', '2026-02-12 17:56:56'),
(363, 200, NULL, NULL, NULL, 'received', 16200.00, '2026-02-12', 'cash', 'Faisal nadeem', 11022.00, 2, '2026-02-12 17:57:33', '2026-02-12 17:57:33'),
(364, 200, NULL, NULL, NULL, 'received', 10000.00, '2026-02-12', 'bank_transfer', 'Jazzcash (faisal nadeem)', 1022.00, 2, '2026-02-12 17:57:47', '2026-02-12 17:57:47'),
(365, 202, NULL, 524, NULL, 'received', 500.00, '2026-02-12', 'cash', 'Payment for Invoice #INV-0000377', 0.00, 2, '2026-02-12 18:00:18', '2026-02-12 18:00:18'),
(366, 203, NULL, 525, NULL, 'received', 1100.00, '2026-02-12', 'cash', 'Payment for Invoice #INV-0000378', 0.00, 2, '2026-02-12 18:02:54', '2026-02-12 18:02:54'),
(367, 204, NULL, 528, NULL, 'received', 700.00, '2026-02-12', 'cash', 'Payment for Invoice #INV-0000381', 0.00, 2, '2026-02-12 18:06:31', '2026-02-12 18:06:31'),
(368, 73, NULL, NULL, NULL, 'received', 3000.00, '2026-02-11', 'bank_transfer', 'Jazzcash (zohaib siddique)', 753.20, 2, '2026-02-12 18:11:25', '2026-02-12 18:11:25'),
(369, 205, NULL, 533, NULL, 'received', 1000.00, '2026-02-12', 'cash', 'Payment for Invoice #INV-0000386', 2325.00, 2, '2026-02-12 18:14:51', '2026-02-12 18:14:51'),
(370, 50, NULL, NULL, NULL, 'received', 8271.90, '2026-02-12', 'bank_transfer', 'Zohaib siddique', 0.00, 2, '2026-02-12 18:20:58', '2026-02-12 18:20:58'),
(372, 149, NULL, 540, NULL, 'received', 18800.00, '2026-02-12', 'cash', 'Payment for Updated Invoice #INV-0000393', 0.00, 2, '2026-02-12 18:33:59', '2026-02-12 18:33:59'),
(374, 156, NULL, 542, NULL, 'received', 4400.00, '2026-02-12', 'cash', 'Payment for Updated Invoice #INV-0000394', 0.00, 2, '2026-02-12 19:06:47', '2026-02-12 19:06:47');

-- --------------------------------------------------------

--
-- Table structure for table `pending_payments`
--

CREATE TABLE `pending_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sale_id` bigint(20) UNSIGNED DEFAULT NULL,
  `purchase_id` bigint(20) UNSIGNED DEFAULT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `supplier_id` bigint(20) UNSIGNED DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `amount_due` decimal(12,2) NOT NULL,
  `settled` tinyint(1) NOT NULL DEFAULT 0,
  `is_prepayment` tinyint(1) NOT NULL DEFAULT 0,
  `amount` decimal(12,2) NOT NULL DEFAULT 0.00,
  `payment_method` varchar(255) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pending_payments`
--

INSERT INTO `pending_payments` (`id`, `sale_id`, `purchase_id`, `customer_id`, `supplier_id`, `due_date`, `amount_due`, `settled`, `is_prepayment`, `amount`, `payment_method`, `note`, `created_at`, `updated_at`) VALUES
(76, 100, NULL, 37, NULL, NULL, 112300.00, 0, 0, 112300.00, NULL, 'Opening Balance', '2026-01-12 08:47:06', '2026-01-12 08:47:06'),
(77, 101, NULL, 38, NULL, NULL, 59620.00, 0, 0, 59620.00, NULL, 'Opening Balance', '2026-01-12 08:49:08', '2026-01-12 08:49:08'),
(78, 102, NULL, 38, NULL, '2026-02-11', 7100.00, 0, 0, 7100.00, NULL, NULL, '2026-01-12 08:53:05', '2026-01-12 08:53:05'),
(79, 103, NULL, 39, NULL, NULL, 311645.00, 0, 0, 311645.00, NULL, 'Opening Balance', '2026-01-12 09:27:30', '2026-01-12 09:27:30'),
(80, 104, NULL, 40, NULL, NULL, 24335.00, 0, 0, 24335.00, NULL, 'Opening Balance', '2026-01-12 09:29:15', '2026-01-12 09:29:15'),
(81, 105, NULL, 41, NULL, NULL, 28140.00, 0, 0, 28140.00, NULL, 'Opening Balance', '2026-01-12 09:30:43', '2026-01-12 09:30:43'),
(82, 106, NULL, 42, NULL, NULL, 36400.00, 0, 0, 36400.00, NULL, 'Opening Balance', '2026-01-12 09:31:57', '2026-01-12 09:31:57'),
(83, 107, NULL, 43, NULL, NULL, 29908.00, 0, 0, 29908.00, NULL, 'Opening Balance', '2026-01-12 09:34:35', '2026-01-12 09:34:35'),
(84, 108, NULL, 44, NULL, NULL, 60000.00, 0, 0, 60000.00, NULL, 'Opening Balance', '2026-01-12 09:38:05', '2026-01-12 09:38:05'),
(85, 109, NULL, 45, NULL, NULL, 10000.00, 0, 0, 10000.00, NULL, 'Opening Balance', '2026-01-12 09:54:19', '2026-01-12 09:54:19'),
(99, 126, NULL, 44, NULL, '2026-02-13', 21940.00, 0, 0, 21940.00, NULL, NULL, '2026-01-14 06:09:41', '2026-01-14 06:09:41'),
(100, 127, NULL, 49, NULL, '2026-02-13', 16124.00, 0, 0, 16124.00, NULL, NULL, '2026-01-14 06:21:28', '2026-01-14 06:21:28'),
(101, 128, NULL, 39, NULL, '2026-02-13', 41680.00, 0, 0, 41680.00, NULL, NULL, '2026-01-14 06:39:43', '2026-01-14 06:39:43'),
(103, 133, NULL, 53, NULL, '2026-02-14', 16347.00, 0, 0, 16347.00, NULL, NULL, '2026-01-15 06:05:45', '2026-01-15 06:05:45'),
(106, 139, NULL, 57, NULL, '2026-02-14', 2900.00, 0, 0, 2900.00, NULL, NULL, '2026-01-15 09:03:32', '2026-01-15 09:03:32'),
(107, 141, NULL, 39, NULL, '2026-02-14', 17971.00, 0, 0, 17971.00, NULL, NULL, '2026-01-15 09:49:22', '2026-01-15 09:49:22'),
(108, 142, NULL, 60, NULL, NULL, 14491.00, 0, 0, 14491.00, NULL, 'Opening Balance', '2026-01-15 09:55:35', '2026-01-15 09:55:35'),
(109, 143, NULL, 61, NULL, '2026-02-14', 425.20, 0, 0, 425.20, NULL, NULL, '2026-01-15 09:59:00', '2026-01-15 09:59:00'),
(110, 144, NULL, 60, NULL, '2026-02-14', 6593.00, 0, 0, 6593.00, NULL, NULL, '2026-01-15 10:02:09', '2026-01-15 10:02:09'),
(113, 147, NULL, 59, NULL, '2026-02-14', 11429.00, 0, 0, 11429.00, NULL, NULL, '2026-01-15 10:47:23', '2026-01-15 10:47:23'),
(114, 148, NULL, 67, NULL, '2026-02-14', 3062.50, 0, 0, 3062.50, NULL, NULL, '2026-01-15 11:29:00', '2026-01-15 11:29:00'),
(116, 150, NULL, 68, NULL, '2026-02-14', 8896.10, 0, 0, 8896.10, NULL, NULL, '2026-01-15 18:28:19', '2026-01-15 18:28:19'),
(118, 151, NULL, 70, NULL, '2026-02-14', 39851.60, 0, 0, 39851.60, NULL, NULL, '2026-01-15 18:36:12', '2026-01-15 18:36:12'),
(119, 152, NULL, 71, NULL, '2026-02-14', 2908.00, 0, 0, 2908.00, NULL, NULL, '2026-01-15 18:52:09', '2026-01-15 18:52:09'),
(120, 153, NULL, 72, NULL, '2026-02-14', 2225.00, 0, 0, 2225.00, NULL, NULL, '2026-01-15 18:54:26', '2026-01-15 18:54:26'),
(121, 154, NULL, 73, NULL, '2026-02-14', 563.20, 0, 0, 563.20, NULL, NULL, '2026-01-15 18:56:32', '2026-01-15 18:56:32'),
(122, 155, NULL, 74, NULL, NULL, 157477.00, 0, 0, 157477.00, NULL, 'Opening Balance', '2026-01-15 19:00:34', '2026-01-15 19:00:34'),
(123, 156, NULL, 74, NULL, '2026-02-14', 86448.00, 0, 0, 86448.00, NULL, NULL, '2026-01-15 19:03:32', '2026-01-15 19:03:32'),
(124, 130, NULL, 51, NULL, '2026-02-13', 2587.50, 0, 0, 2587.50, NULL, NULL, '2026-01-15 20:43:04', '2026-01-15 20:43:04'),
(125, 146, NULL, 62, NULL, '2026-02-14', 2182.00, 0, 0, 2182.00, NULL, NULL, '2026-01-15 20:43:04', '2026-01-15 20:43:04'),
(127, 159, NULL, 39, NULL, '2026-02-16', 6400.00, 0, 0, 6400.00, NULL, NULL, '2026-01-17 12:52:51', '2026-01-17 12:52:51'),
(129, 165, NULL, 80, NULL, '2026-02-16', 3704.00, 0, 0, 3704.00, NULL, NULL, '2026-01-17 17:36:03', '2026-01-17 17:36:03'),
(131, 167, NULL, 50, NULL, '2026-02-16', 18397.50, 0, 0, 18397.50, NULL, NULL, '2026-01-17 18:03:09', '2026-01-17 18:03:09'),
(132, 168, NULL, 70, NULL, '2026-02-16', 2766.50, 0, 0, 2766.50, NULL, NULL, '2026-01-17 18:06:56', '2026-01-17 18:06:56'),
(134, 170, NULL, 59, NULL, '2026-02-16', 3256.00, 0, 0, 3256.00, NULL, NULL, '2026-01-17 18:20:13', '2026-01-17 18:20:13'),
(135, 171, NULL, 68, NULL, '2026-02-16', 690.00, 0, 0, 690.00, NULL, NULL, '2026-01-17 18:21:23', '2026-01-17 18:21:23'),
(137, 173, NULL, 49, NULL, '2026-02-16', 1012.00, 0, 0, 1012.00, NULL, NULL, '2026-01-17 18:28:16', '2026-01-17 18:28:16'),
(138, 174, NULL, 82, NULL, '2026-02-16', 0.00, 1, 0, 3539.00, NULL, NULL, '2026-01-17 18:53:56', '2026-02-12 16:50:51'),
(139, 175, NULL, 39, NULL, '2026-02-17', 8000.00, 0, 0, 8000.00, NULL, NULL, '2026-01-18 11:12:57', '2026-01-18 11:12:57'),
(141, 181, NULL, 49, NULL, '2026-02-17', 736.00, 0, 0, 736.00, NULL, NULL, '2026-01-18 18:03:13', '2026-01-18 18:03:13'),
(142, 183, NULL, 88, NULL, '2026-02-17', 13050.00, 0, 0, 13050.00, NULL, NULL, '2026-01-18 18:10:58', '2026-01-18 18:10:58'),
(143, 185, NULL, 60, NULL, '2026-02-17', 2310.00, 0, 0, 2310.00, NULL, NULL, '2026-01-18 18:13:38', '2026-01-18 18:13:38'),
(144, 186, NULL, 59, NULL, '2026-02-17', 3608.00, 0, 0, 3608.00, NULL, NULL, '2026-01-18 18:15:40', '2026-01-18 18:15:40'),
(145, 187, NULL, 90, NULL, '2026-02-17', 1350.00, 0, 0, 1350.00, NULL, NULL, '2026-01-18 18:16:56', '2026-01-18 18:16:56'),
(146, 188, NULL, 53, NULL, '2026-02-17', 132.00, 0, 0, 132.00, NULL, NULL, '2026-01-18 18:17:21', '2026-01-18 18:17:21'),
(147, 189, NULL, 68, NULL, '2026-02-17', 1173.00, 0, 0, 1173.00, NULL, NULL, '2026-01-18 18:18:57', '2026-01-18 18:18:57'),
(149, 191, NULL, 92, NULL, '2026-02-17', 4620.00, 0, 0, 4620.00, NULL, NULL, '2026-01-18 18:26:51', '2026-01-18 18:26:51'),
(150, 192, NULL, 50, NULL, '2026-02-17', 15840.00, 0, 0, 15840.00, NULL, NULL, '2026-01-18 18:28:25', '2026-01-18 18:28:25'),
(151, 193, NULL, 49, NULL, '2026-02-18', 17859.50, 0, 0, 17859.50, NULL, NULL, '2026-01-19 12:59:29', '2026-01-19 12:59:29'),
(152, 196, NULL, 94, NULL, '2026-02-18', 300.00, 0, 0, 300.00, NULL, NULL, '2026-01-19 18:01:47', '2026-01-19 18:01:47'),
(153, 197, NULL, 82, NULL, '2026-02-18', 0.00, 1, 0, 66.00, NULL, NULL, '2026-01-19 18:02:34', '2026-02-12 16:50:51'),
(154, 199, NULL, 73, NULL, '2026-02-18', 1452.00, 0, 0, 1452.00, NULL, NULL, '2026-01-19 18:18:19', '2026-01-19 18:18:19'),
(155, 200, NULL, 59, NULL, '2026-02-18', 616.00, 0, 0, 616.00, NULL, NULL, '2026-01-19 18:19:46', '2026-01-19 18:19:46'),
(157, 202, NULL, 68, NULL, '2026-02-18', 184.00, 0, 0, 184.00, NULL, NULL, '2026-01-19 18:22:46', '2026-01-19 18:22:46'),
(159, 205, NULL, 50, NULL, '2026-02-18', 8870.00, 0, 0, 8870.00, NULL, NULL, '2026-01-19 18:33:35', '2026-01-19 18:33:35'),
(161, 209, NULL, 73, NULL, '2026-02-19', 5176.00, 0, 0, 5176.00, NULL, NULL, '2026-01-20 13:50:15', '2026-01-20 13:50:15'),
(162, 211, NULL, 49, NULL, '2026-02-19', 1058.00, 0, 0, 1058.00, NULL, NULL, '2026-01-20 15:51:29', '2026-01-20 15:51:29'),
(163, 212, NULL, 61, NULL, '2026-02-19', 920.00, 0, 0, 920.00, NULL, NULL, '2026-01-20 15:54:10', '2026-01-20 15:54:10'),
(166, 215, NULL, 100, NULL, '2026-02-19', 8806.00, 0, 0, 8806.00, NULL, NULL, '2026-01-20 16:03:41', '2026-01-20 16:03:41'),
(168, 213, NULL, 68, NULL, '2026-02-19', 801.40, 0, 0, 801.40, NULL, NULL, '2026-01-20 16:27:07', '2026-01-20 16:27:07'),
(169, 190, NULL, 91, NULL, '2026-02-19', 22673.00, 0, 0, 22673.00, NULL, NULL, '2026-01-20 16:34:33', '2026-01-20 16:34:33'),
(173, 225, NULL, 107, NULL, '2026-02-20', 226.00, 0, 0, 226.00, NULL, NULL, '2026-01-21 16:57:08', '2026-01-21 16:57:08'),
(175, 227, NULL, 82, NULL, '2026-02-20', 0.00, 1, 0, 594.00, NULL, NULL, '2026-01-21 18:06:11', '2026-02-12 16:50:51'),
(176, 228, NULL, 60, NULL, '2026-02-20', 4675.00, 0, 0, 4675.00, NULL, NULL, '2026-01-21 18:16:36', '2026-01-21 18:16:36'),
(177, 229, NULL, 59, NULL, '2026-02-20', 4529.80, 0, 0, 4529.80, NULL, NULL, '2026-01-21 18:18:29', '2026-01-21 18:18:29'),
(178, 230, NULL, 108, NULL, '2026-02-20', 1408.00, 0, 0, 1408.00, NULL, NULL, '2026-01-21 18:20:06', '2026-01-21 18:20:06'),
(179, 231, NULL, 70, NULL, '2026-02-20', 4848.50, 0, 0, 4848.50, NULL, NULL, '2026-01-21 18:21:46', '2026-01-21 18:21:46'),
(181, 233, NULL, 91, NULL, '2026-02-20', 690.00, 0, 0, 690.00, NULL, NULL, '2026-01-21 18:23:57', '2026-01-21 18:23:57'),
(182, 234, NULL, 50, NULL, '2026-02-20', 6153.00, 0, 0, 6153.00, NULL, NULL, '2026-01-21 18:26:31', '2026-01-21 18:26:31'),
(184, 236, NULL, 109, NULL, '2026-02-21', 7650.00, 0, 0, 7650.00, NULL, NULL, '2026-01-22 11:48:40', '2026-01-22 11:48:40'),
(185, 238, NULL, 111, NULL, '2026-02-21', 94650.00, 0, 0, 94650.00, NULL, NULL, '2026-01-22 12:44:24', '2026-01-22 12:44:24'),
(186, 241, NULL, 114, NULL, '2026-02-21', 14168.00, 0, 0, 14168.00, NULL, NULL, '2026-01-22 17:00:23', '2026-01-22 17:00:23'),
(187, 244, NULL, 82, NULL, '2026-02-21', 0.00, 1, 0, 1430.00, NULL, NULL, '2026-01-22 17:43:58', '2026-02-12 16:50:51'),
(188, 245, NULL, 73, NULL, '2026-02-21', 462.00, 0, 0, 462.00, NULL, NULL, '2026-01-22 17:44:44', '2026-01-22 17:44:44'),
(189, 246, NULL, 60, NULL, '2026-02-21', 2533.00, 0, 0, 2533.00, NULL, NULL, '2026-01-22 17:46:08', '2026-01-22 17:46:08'),
(190, 247, NULL, 116, NULL, '2026-02-21', 600.00, 0, 0, 600.00, NULL, NULL, '2026-01-22 17:47:02', '2026-01-22 17:47:02'),
(191, 248, NULL, 68, NULL, '2026-02-21', 432.40, 0, 0, 432.40, NULL, NULL, '2026-01-22 17:48:26', '2026-01-22 17:48:26'),
(192, 249, NULL, 91, NULL, '2026-02-21', 736.00, 0, 0, 736.00, NULL, NULL, '2026-01-22 17:50:00', '2026-01-22 17:50:00'),
(193, 250, NULL, 117, NULL, '2026-02-21', 375.00, 0, 0, 375.00, NULL, NULL, '2026-01-22 17:51:02', '2026-01-22 17:51:02'),
(194, 251, NULL, 50, NULL, '2026-02-21', 12293.60, 0, 0, 12293.60, NULL, NULL, '2026-01-22 17:55:37', '2026-01-22 17:55:37'),
(195, 252, NULL, 81, NULL, '2026-02-21', 800.00, 0, 0, 800.00, NULL, NULL, '2026-01-22 17:56:41', '2026-01-22 17:56:41'),
(197, 216, NULL, 50, NULL, NULL, 6840.00, 0, 0, 6840.00, NULL, NULL, '2026-01-20 16:06:40', '2026-01-20 16:06:40'),
(200, 259, NULL, 71, NULL, '2026-02-23', 19756.00, 0, 0, 19756.00, NULL, NULL, '2026-01-24 12:06:14', '2026-01-24 12:06:14'),
(203, 261, NULL, 62, NULL, '2026-02-23', 2001.00, 0, 0, 2001.00, NULL, NULL, '2026-01-24 14:35:21', '2026-01-24 14:35:21'),
(204, 264, NULL, 73, NULL, '2026-02-23', 792.00, 0, 0, 792.00, NULL, NULL, '2026-01-24 18:13:18', '2026-01-24 18:13:18'),
(205, 265, NULL, 121, NULL, '2026-02-23', 3238.00, 0, 0, 3238.00, NULL, NULL, '2026-01-24 18:17:51', '2026-01-24 18:17:51'),
(206, 266, NULL, 61, NULL, '2026-02-23', 46.00, 0, 0, 46.00, NULL, NULL, '2026-01-24 18:19:19', '2026-01-24 18:19:19'),
(207, 267, NULL, 122, NULL, NULL, 24681.00, 0, 0, 24681.00, NULL, 'Opening Balance', '2026-01-24 18:24:48', '2026-01-24 18:24:48'),
(208, 269, NULL, 60, NULL, '2026-02-23', 1056.00, 0, 0, 1056.00, NULL, NULL, '2026-01-24 18:36:24', '2026-01-24 18:36:24'),
(209, 270, NULL, 68, NULL, '2026-02-23', 1276.50, 0, 0, 1276.50, NULL, NULL, '2026-01-24 18:37:23', '2026-01-24 18:37:23'),
(210, 271, NULL, 70, NULL, '2026-02-23', 4488.00, 0, 0, 4488.00, NULL, NULL, '2026-01-24 18:39:00', '2026-01-24 18:39:00'),
(213, 274, NULL, 50, NULL, '2026-02-23', 3724.00, 0, 0, 3724.00, NULL, NULL, '2026-01-24 18:42:31', '2026-01-24 18:42:31'),
(214, 275, NULL, 68, NULL, '2026-02-24', 1462.00, 0, 0, 1462.00, NULL, NULL, '2026-01-25 16:25:52', '2026-01-25 16:25:52'),
(215, 276, NULL, 62, NULL, '2026-02-24', 552.00, 0, 0, 552.00, NULL, NULL, '2026-01-25 16:26:48', '2026-01-25 16:26:48'),
(216, 277, NULL, 53, NULL, '2026-02-24', 1152.80, 0, 0, 1152.80, NULL, NULL, '2026-01-25 16:27:50', '2026-01-25 16:27:50'),
(217, 278, NULL, 122, NULL, '2026-02-24', 19619.00, 0, 0, 19619.00, NULL, NULL, '2026-01-25 16:29:44', '2026-01-25 16:29:44'),
(219, 280, NULL, 124, NULL, '2026-02-24', 4000.00, 0, 0, 4000.00, NULL, NULL, '2026-01-25 17:12:02', '2026-01-25 17:12:02'),
(220, 281, NULL, NULL, NULL, '2026-02-24', 4000.00, 0, 0, 4000.00, NULL, NULL, '2026-01-25 17:12:25', '2026-01-25 17:12:25'),
(221, 282, NULL, 59, NULL, '2026-02-24', 3157.00, 0, 0, 3157.00, NULL, NULL, '2026-01-25 17:15:16', '2026-01-25 17:15:16'),
(222, 283, NULL, 60, NULL, '2026-02-24', 2941.40, 0, 0, 2941.40, NULL, NULL, '2026-01-25 17:17:05', '2026-01-25 17:17:05'),
(223, 284, NULL, 102, NULL, '2026-02-24', 180.00, 0, 0, 180.00, NULL, NULL, '2026-01-25 17:18:21', '2026-01-25 17:18:21'),
(225, 285, NULL, 97, NULL, '2026-02-24', 975.00, 0, 0, 975.00, NULL, NULL, '2026-01-25 18:31:48', '2026-01-25 18:31:48'),
(227, 279, NULL, 50, NULL, '2026-02-24', 6540.00, 0, 0, 6540.00, NULL, NULL, '2026-01-25 18:34:46', '2026-01-25 18:34:46'),
(228, 288, NULL, 126, NULL, '2026-02-25', 670.00, 0, 0, 670.00, NULL, NULL, '2026-01-26 17:50:18', '2026-01-26 17:50:18'),
(229, 290, NULL, 99, NULL, '2026-02-25', 5600.00, 0, 0, 5600.00, NULL, NULL, '2026-01-26 17:54:24', '2026-01-26 17:54:24'),
(232, 291, NULL, 50, NULL, '2026-02-25', 3057.00, 0, 0, 3057.00, NULL, NULL, '2026-01-26 18:02:51', '2026-01-26 18:02:51'),
(233, 292, NULL, 59, NULL, '2026-02-25', 1518.00, 0, 0, 1518.00, NULL, NULL, '2026-01-26 18:05:23', '2026-01-26 18:05:23'),
(235, 296, NULL, 129, NULL, '2026-02-26', 1325.00, 0, 0, 1325.00, NULL, NULL, '2026-01-27 17:20:06', '2026-01-27 17:20:06'),
(236, 297, NULL, 71, NULL, '2026-02-26', 2068.00, 0, 0, 2068.00, NULL, NULL, '2026-01-27 17:22:04', '2026-01-27 17:22:04'),
(237, 298, NULL, 72, NULL, '2026-02-26', 1012.00, 0, 0, 1012.00, NULL, NULL, '2026-01-27 17:24:24', '2026-01-27 17:24:24'),
(239, 301, NULL, 119, NULL, '2026-02-26', 1500.00, 0, 0, 1500.00, NULL, NULL, '2026-01-27 17:34:32', '2026-01-27 17:34:32'),
(240, 302, NULL, 131, NULL, '2026-02-26', 12500.00, 0, 0, 12500.00, NULL, NULL, '2026-01-27 17:36:16', '2026-01-27 17:36:16'),
(241, 303, NULL, 70, NULL, '2026-02-26', 2750.00, 0, 0, 2750.00, NULL, NULL, '2026-01-27 17:38:29', '2026-01-27 17:38:29'),
(242, 304, NULL, 122, NULL, '2026-02-26', 6727.50, 0, 0, 6727.50, NULL, NULL, '2026-01-27 17:39:44', '2026-01-27 17:39:44'),
(244, 307, NULL, 132, NULL, '2026-02-26', 1680.00, 0, 0, 1680.00, NULL, NULL, '2026-01-27 18:10:31', '2026-01-27 18:10:31'),
(245, 308, NULL, 116, NULL, '2026-02-26', 540.00, 0, 0, 540.00, NULL, NULL, '2026-01-27 18:13:56', '2026-01-27 18:13:56'),
(246, 309, NULL, 59, NULL, '2026-02-26', 4343.00, 0, 0, 4343.00, NULL, NULL, '2026-01-27 18:36:01', '2026-01-27 18:36:01'),
(247, 305, NULL, 50, NULL, '2026-02-26', 44627.00, 0, 0, 44627.00, NULL, NULL, '2026-01-27 19:17:35', '2026-01-27 19:17:35'),
(251, 312, NULL, 53, NULL, '2026-02-27', 15664.00, 0, 0, 15664.00, NULL, NULL, '2026-01-28 17:19:18', '2026-01-28 17:19:18'),
(252, 313, NULL, 73, NULL, '2026-02-27', 792.00, 0, 0, 792.00, NULL, NULL, '2026-01-28 17:51:17', '2026-01-28 17:51:17'),
(253, 314, NULL, 60, NULL, '2026-02-27', 3873.00, 0, 0, 3873.00, NULL, NULL, '2026-01-28 17:52:48', '2026-01-28 17:52:48'),
(254, 315, NULL, 59, NULL, '2026-02-27', 4004.00, 0, 0, 4004.00, NULL, NULL, '2026-01-28 17:54:19', '2026-01-28 17:54:19'),
(255, 316, NULL, 68, NULL, '2026-02-27', 4052.60, 0, 0, 4052.60, NULL, NULL, '2026-01-28 17:55:19', '2026-01-28 17:55:19'),
(256, 317, NULL, 70, NULL, '2026-02-27', 12778.04, 0, 0, 12778.04, NULL, NULL, '2026-01-28 17:56:47', '2026-01-28 17:56:47'),
(258, 319, NULL, 72, NULL, '2026-02-27', 483.00, 0, 0, 483.00, NULL, NULL, '2026-01-28 18:02:12', '2026-01-28 18:02:12'),
(259, 320, NULL, 136, NULL, '2026-02-27', 14418.00, 0, 0, 14418.00, NULL, NULL, '2026-01-28 18:27:43', '2026-01-28 18:27:43'),
(260, 321, NULL, 50, NULL, '2026-02-27', 1317.36, 0, 0, 1317.36, NULL, NULL, '2026-01-28 19:11:07', '2026-01-28 19:11:07'),
(265, 326, NULL, 141, NULL, '2026-02-28', 680.00, 0, 0, 680.00, NULL, NULL, '2026-01-29 17:13:07', '2026-01-29 17:13:07'),
(267, 329, NULL, 62, NULL, '2026-02-28', 1380.00, 0, 0, 1380.00, NULL, NULL, '2026-01-29 17:34:33', '2026-01-29 17:34:33'),
(268, 330, NULL, 80, NULL, '2026-02-28', 3404.00, 0, 0, 3404.00, NULL, NULL, '2026-01-29 17:36:54', '2026-01-29 17:36:54'),
(269, 331, NULL, 82, NULL, '2026-02-28', 0.00, 1, 0, 968.00, NULL, NULL, '2026-01-29 17:42:54', '2026-02-12 16:50:51'),
(270, 332, NULL, 143, NULL, '2026-02-28', 2150.00, 0, 0, 2150.00, NULL, NULL, '2026-01-29 17:45:26', '2026-01-29 17:45:26'),
(271, 333, NULL, 59, NULL, '2026-02-28', 2640.00, 0, 0, 2640.00, NULL, NULL, '2026-01-29 17:47:31', '2026-01-29 17:47:31'),
(272, 334, NULL, 68, NULL, '2026-02-28', 3243.00, 0, 0, 3243.00, NULL, NULL, '2026-01-29 17:48:36', '2026-01-29 17:48:36'),
(273, 335, NULL, 70, NULL, '2026-02-28', 1489.00, 0, 0, 1489.00, NULL, NULL, '2026-01-29 17:49:44', '2026-01-29 17:49:44'),
(279, 340, NULL, 51, NULL, '2026-02-28', 451.00, 0, 0, 451.00, NULL, NULL, '2026-01-29 18:33:09', '2026-01-29 18:33:09'),
(280, 338, NULL, 50, NULL, '2026-02-28', 13016.00, 0, 0, 13016.00, NULL, NULL, '2026-01-29 19:21:17', '2026-01-29 19:21:17'),
(281, 342, NULL, 147, NULL, '2026-03-02', 240.00, 0, 0, 240.00, NULL, NULL, '2026-01-31 12:58:51', '2026-01-31 12:58:51'),
(282, 343, NULL, 136, NULL, '2026-03-02', 25752.06, 0, 0, 25752.06, NULL, NULL, '2026-01-31 14:22:10', '2026-01-31 14:22:10'),
(284, 345, NULL, 73, NULL, '2026-03-02', 1320.00, 0, 0, 1320.00, NULL, NULL, '2026-01-31 15:48:50', '2026-01-31 15:48:50'),
(285, 327, NULL, 142, NULL, '2026-03-02', 10579.10, 0, 0, 10579.10, NULL, NULL, '2026-01-31 16:06:47', '2026-01-31 16:06:47'),
(288, 347, NULL, 150, NULL, '2026-03-02', 1220.00, 0, 0, 1220.00, NULL, NULL, '2026-01-31 18:30:56', '2026-01-31 18:30:56'),
(290, 350, NULL, 68, NULL, '2026-03-02', 14260.00, 0, 0, 14260.00, NULL, NULL, '2026-01-31 18:34:48', '2026-01-31 18:34:48'),
(292, 353, NULL, 82, NULL, '2026-03-02', 1753.00, 0, 0, 1848.00, NULL, NULL, '2026-01-31 18:37:39', '2026-02-12 16:50:51'),
(293, 354, NULL, 59, NULL, '2026-03-02', 264.00, 0, 0, 264.00, NULL, NULL, '2026-01-31 18:38:46', '2026-01-31 18:38:46'),
(295, 356, NULL, 154, NULL, '2026-03-02', 1500.00, 0, 0, 1500.00, NULL, NULL, '2026-01-31 18:42:38', '2026-01-31 18:42:38'),
(296, 357, NULL, 53, NULL, '2026-03-02', 1485.00, 0, 0, 1485.00, NULL, NULL, '2026-01-31 18:43:55', '2026-01-31 18:43:55'),
(297, 358, NULL, 155, NULL, '2026-03-02', 360.00, 0, 0, 360.00, NULL, NULL, '2026-01-31 18:44:39', '2026-01-31 18:44:39'),
(299, 360, NULL, 50, NULL, '2026-03-02', 18150.00, 0, 0, 18150.00, NULL, NULL, '2026-01-31 18:47:08', '2026-01-31 18:47:08'),
(300, 359, NULL, 39, NULL, '2026-03-02', 27500.00, 0, 0, 27500.00, NULL, NULL, '2026-01-31 18:52:48', '2026-01-31 18:52:48'),
(301, 310, NULL, 133, NULL, '2026-03-03', 6917.50, 0, 0, 6917.50, NULL, NULL, '2026-02-01 15:42:20', '2026-02-01 15:42:20'),
(302, 361, NULL, 74, NULL, '2026-03-03', 4400.00, 0, 0, 4400.00, NULL, NULL, '2026-02-01 15:58:00', '2026-02-01 15:58:00'),
(305, 363, NULL, 74, NULL, '2026-03-03', 506.25, 0, 0, 506.25, NULL, NULL, '2026-02-01 16:01:13', '2026-02-01 16:01:13'),
(306, 364, NULL, 71, NULL, '2026-03-03', 132.00, 0, 0, 132.00, NULL, NULL, '2026-02-01 18:48:22', '2026-02-01 18:48:22'),
(307, 365, NULL, 72, NULL, '2026-03-03', 2300.00, 0, 0, 2300.00, NULL, NULL, '2026-02-01 18:49:17', '2026-02-01 18:49:17'),
(308, 366, NULL, 74, NULL, '2026-03-03', 792.00, 0, 0, 792.00, NULL, NULL, '2026-02-01 18:49:40', '2026-02-01 18:49:40'),
(309, 367, NULL, 73, NULL, '2026-03-03', 7920.00, 0, 0, 7920.00, NULL, NULL, '2026-02-01 18:50:37', '2026-02-01 18:50:37'),
(310, 368, NULL, 59, NULL, '2026-03-03', 1298.00, 0, 0, 1298.00, NULL, NULL, '2026-02-01 18:51:42', '2026-02-01 18:51:42'),
(311, 369, NULL, 108, NULL, '2026-03-03', 2534.40, 0, 0, 2534.40, NULL, NULL, '2026-02-01 18:52:17', '2026-02-01 18:52:17'),
(313, 371, NULL, 68, NULL, '2026-03-03', 30705.00, 0, 0, 30705.00, NULL, NULL, '2026-02-01 18:57:17', '2026-02-01 18:57:17'),
(314, 373, NULL, 91, NULL, '2026-03-03', 5010.00, 0, 0, 5010.00, NULL, NULL, '2026-02-01 18:59:55', '2026-02-01 18:59:55'),
(315, 374, NULL, 122, NULL, '2026-03-03', 2024.00, 0, 0, 2024.00, NULL, NULL, '2026-02-01 19:02:46', '2026-02-01 19:02:46'),
(316, 375, NULL, 123, NULL, '2026-03-03', 720.00, 0, 0, 720.00, NULL, NULL, '2026-02-01 19:05:44', '2026-02-01 19:05:44'),
(317, 377, NULL, 157, NULL, '2026-03-03', 280.00, 0, 0, 280.00, NULL, NULL, '2026-02-01 19:09:22', '2026-02-01 19:09:22'),
(318, 378, NULL, 50, NULL, '2026-03-03', 15334.00, 0, 0, 15334.00, NULL, NULL, '2026-02-01 19:11:03', '2026-02-01 19:11:03'),
(319, 379, NULL, 136, NULL, '2026-03-04', 14985.00, 0, 0, 14985.00, NULL, NULL, '2026-02-02 13:02:53', '2026-02-02 13:02:53'),
(320, 383, NULL, 73, NULL, '2026-03-04', 1210.00, 0, 0, 1210.00, NULL, NULL, '2026-02-02 17:35:54', '2026-02-02 17:35:54'),
(321, 384, NULL, 68, NULL, '2026-03-04', 7778.60, 0, 0, 7778.60, NULL, NULL, '2026-02-02 17:38:25', '2026-02-02 17:38:25'),
(322, 385, NULL, 91, NULL, '2026-03-04', 1104.00, 0, 0, 1104.00, NULL, NULL, '2026-02-02 17:39:13', '2026-02-02 17:39:13'),
(323, 386, NULL, 39, NULL, '2026-03-04', 8372.00, 0, 0, 8372.00, NULL, NULL, '2026-02-02 17:40:25', '2026-02-02 17:40:25'),
(324, 387, NULL, 50, NULL, '2026-03-04', 880.00, 0, 0, 880.00, NULL, NULL, '2026-02-02 17:40:59', '2026-02-02 17:40:59'),
(326, 388, NULL, 122, NULL, '2026-03-04', 16957.20, 0, 0, 16957.20, NULL, NULL, '2026-02-02 18:36:12', '2026-02-02 18:36:12'),
(327, 389, NULL, 70, NULL, '2026-03-04', 8032.50, 0, 0, 8032.50, NULL, NULL, '2026-02-02 19:16:46', '2026-02-02 19:16:46'),
(329, 393, NULL, 39, NULL, '2026-03-05', 22400.00, 0, 0, 22400.00, NULL, NULL, '2026-02-03 16:44:42', '2026-02-03 16:44:42'),
(330, 394, NULL, 61, NULL, '2026-03-05', 276.00, 0, 0, 276.00, NULL, NULL, '2026-02-03 16:57:30', '2026-02-03 16:57:30'),
(331, 395, NULL, 82, NULL, '2026-03-05', 264.00, 0, 0, 264.00, NULL, NULL, '2026-02-03 16:58:29', '2026-02-03 16:58:29'),
(332, 396, NULL, 71, NULL, '2026-03-05', 132.00, 0, 0, 132.00, NULL, NULL, '2026-02-03 16:59:19', '2026-02-03 16:59:19'),
(333, 397, NULL, 53, NULL, '2026-03-05', 1100.00, 0, 0, 1100.00, NULL, NULL, '2026-02-03 17:03:20', '2026-02-03 17:03:20'),
(334, 398, NULL, 70, NULL, '2026-03-05', 1122.00, 0, 0, 1122.00, NULL, NULL, '2026-02-03 17:05:28', '2026-02-03 17:05:28'),
(335, 399, NULL, 91, NULL, '2026-03-05', 897.00, 0, 0, 897.00, NULL, NULL, '2026-02-03 17:06:37', '2026-02-03 17:06:37'),
(336, 400, NULL, 123, NULL, '2026-03-05', 264.00, 0, 0, 264.00, NULL, NULL, '2026-02-03 17:07:42', '2026-02-03 17:07:42'),
(338, 403, NULL, 161, NULL, '2026-03-05', 0.30, 0, 0, 0.30, NULL, NULL, '2026-02-03 18:26:07', '2026-02-03 18:26:07'),
(339, 404, NULL, 99, NULL, '2026-03-05', 420.00, 0, 0, 420.00, NULL, NULL, '2026-02-03 18:29:18', '2026-02-03 18:29:18'),
(340, 405, NULL, 50, NULL, '2026-03-05', 8914.00, 0, 0, 8914.00, NULL, NULL, '2026-02-03 18:34:37', '2026-02-03 18:34:37'),
(341, 406, NULL, 73, NULL, '2026-03-05', 2024.00, 0, 0, 2024.00, NULL, NULL, '2026-02-03 18:37:55', '2026-02-03 18:37:55'),
(342, 407, NULL, 59, NULL, '2026-03-05', 836.00, 0, 0, 836.00, NULL, NULL, '2026-02-03 18:38:39', '2026-02-03 18:38:39'),
(343, 242, NULL, 59, NULL, NULL, 2574.00, 0, 0, 0.00, NULL, NULL, '2026-02-03 15:02:29', '2026-02-03 15:02:29'),
(344, 299, NULL, 73, NULL, NULL, 7480.00, 0, 0, 0.00, NULL, NULL, '2026-02-03 15:12:23', '2026-02-03 15:12:23'),
(345, 408, NULL, 42, NULL, '2026-03-06', 32890.00, 0, 0, 32890.00, NULL, NULL, '2026-02-04 11:57:24', '2026-02-04 11:57:24'),
(346, 410, NULL, 42, NULL, '2026-03-06', 40.00, 0, 0, 40.00, NULL, NULL, '2026-02-04 18:26:26', '2026-02-04 18:26:26'),
(347, 411, NULL, 165, NULL, '2026-03-06', 1340.00, 0, 0, 1340.00, NULL, NULL, '2026-02-04 18:36:08', '2026-02-04 18:36:08'),
(348, 413, NULL, 109, NULL, '2026-03-06', 2880.00, 0, 0, 2880.00, NULL, NULL, '2026-02-04 18:38:21', '2026-02-04 18:38:21'),
(349, 414, NULL, 167, NULL, '2026-03-06', 414.00, 0, 0, 414.00, NULL, NULL, '2026-02-04 18:39:10', '2026-02-04 18:39:10'),
(350, 415, NULL, 72, NULL, '2026-03-06', 1288.00, 0, 0, 1288.00, NULL, NULL, '2026-02-04 18:39:59', '2026-02-04 18:39:59'),
(351, 416, NULL, 73, NULL, '2026-03-06', 2046.00, 0, 0, 2046.00, NULL, NULL, '2026-02-04 18:40:36', '2026-02-04 18:40:36'),
(352, 417, NULL, 60, NULL, '2026-03-06', 7609.90, 0, 0, 7609.90, NULL, NULL, '2026-02-04 18:42:44', '2026-02-04 18:42:44'),
(353, 418, NULL, 59, NULL, '2026-03-06', 385.00, 0, 0, 385.00, NULL, NULL, '2026-02-04 18:43:29', '2026-02-04 18:43:29'),
(354, 419, NULL, 68, NULL, '2026-03-06', 1301.80, 0, 0, 1301.80, NULL, NULL, '2026-02-04 18:45:06', '2026-02-04 18:45:06'),
(355, 420, NULL, 68, NULL, '2026-03-06', 1301.80, 0, 0, 1301.80, NULL, NULL, '2026-02-04 18:45:10', '2026-02-04 18:45:10'),
(356, 421, NULL, 70, NULL, '2026-03-06', 939.00, 0, 0, 939.00, NULL, NULL, '2026-02-04 18:45:57', '2026-02-04 18:45:57'),
(357, 422, NULL, 122, NULL, '2026-03-06', 2300.00, 0, 0, 2300.00, NULL, NULL, '2026-02-04 18:46:55', '2026-02-04 18:46:55'),
(358, 423, NULL, 50, NULL, '2026-03-06', 5720.00, 0, 0, 5720.00, NULL, NULL, '2026-02-04 18:48:47', '2026-02-04 18:48:47'),
(359, 424, NULL, 53, NULL, '2026-03-07', 82.00, 0, 0, 82.00, NULL, NULL, '2026-02-05 14:35:19', '2026-02-05 14:35:19'),
(363, 428, NULL, 73, NULL, '2026-03-07', 2178.00, 0, 0, 2178.00, NULL, NULL, '2026-02-05 17:55:17', '2026-02-05 17:55:17'),
(364, 429, NULL, 60, NULL, '2026-03-07', 2358.40, 0, 0, 2358.40, NULL, NULL, '2026-02-05 17:56:51', '2026-02-05 17:56:51'),
(365, 435, NULL, 68, NULL, '2026-03-07', 828.00, 0, 0, 828.00, NULL, NULL, '2026-02-05 18:02:03', '2026-02-05 18:02:03'),
(366, 436, NULL, 70, NULL, '2026-03-07', 396.00, 0, 0, 396.00, NULL, NULL, '2026-02-05 18:02:23', '2026-02-05 18:02:23'),
(368, 437, NULL, 171, NULL, '2026-03-07', 27688.00, 0, 0, 27688.00, NULL, NULL, '2026-02-05 18:07:59', '2026-02-05 18:07:59'),
(369, 426, NULL, 62, NULL, '2026-03-07', 83.40, 0, 0, 83.40, NULL, NULL, '2026-02-05 18:08:24', '2026-02-05 18:08:24'),
(370, 438, NULL, 50, NULL, '2026-03-07', 3278.00, 0, 0, 3278.00, NULL, NULL, '2026-02-05 18:10:29', '2026-02-05 18:10:29'),
(372, 440, NULL, 122, NULL, '2026-03-07', 5970.00, 0, 0, 5970.00, NULL, NULL, '2026-02-05 18:13:28', '2026-02-05 18:13:28'),
(373, 439, NULL, 51, NULL, '2026-03-07', 1219.00, 0, 0, 1219.00, NULL, NULL, '2026-02-05 18:15:44', '2026-02-05 18:15:44'),
(375, 441, NULL, 59, NULL, '2026-03-07', 6682.00, 0, 0, 6682.00, NULL, NULL, '2026-02-05 18:23:07', '2026-02-05 18:23:07'),
(376, 425, NULL, 39, NULL, '2026-03-07', 17000.00, 0, 0, 17000.00, NULL, NULL, '2026-02-05 19:16:40', '2026-02-05 19:16:40'),
(377, 443, NULL, 82, NULL, '2026-03-07', 132.00, 0, 0, 132.00, NULL, NULL, '2026-02-05 19:17:28', '2026-02-05 19:17:28'),
(378, 444, NULL, 49, NULL, '2026-03-07', 9246.00, 0, 0, 9246.00, NULL, NULL, '2026-02-05 19:19:18', '2026-02-05 19:19:18'),
(379, 445, NULL, 173, NULL, '2026-03-09', 27153.00, 0, 0, 27153.00, NULL, NULL, '2026-02-07 14:20:05', '2026-02-07 14:20:05'),
(380, 447, NULL, 75, NULL, '2026-03-09', 33897.50, 0, 0, 33897.50, NULL, NULL, '2026-02-07 18:29:53', '2026-02-07 18:29:53'),
(383, 450, NULL, 60, NULL, '2026-03-09', 1628.00, 0, 0, 1628.00, NULL, NULL, '2026-02-07 18:33:26', '2026-02-07 18:33:26'),
(384, 451, NULL, 59, NULL, '2026-03-09', 1496.00, 0, 0, 1496.00, NULL, NULL, '2026-02-07 18:34:51', '2026-02-07 18:34:51'),
(385, 452, NULL, 68, NULL, '2026-03-09', 322.00, 0, 0, 322.00, NULL, NULL, '2026-02-07 18:36:57', '2026-02-07 18:36:57'),
(386, 453, NULL, 70, NULL, '2026-03-09', 5865.20, 0, 0, 5865.20, NULL, NULL, '2026-02-07 18:38:12', '2026-02-07 18:38:12'),
(387, 454, NULL, 176, NULL, '2026-03-09', 90.00, 0, 0, 90.00, NULL, NULL, '2026-02-07 18:38:46', '2026-02-07 18:38:46'),
(388, 455, NULL, 122, NULL, '2026-03-09', 4554.00, 0, 0, 4554.00, NULL, NULL, '2026-02-07 18:40:21', '2026-02-07 18:40:21'),
(389, 457, NULL, 44, NULL, '2026-03-10', 40738.50, 0, 0, 40738.50, NULL, NULL, '2026-02-08 11:34:49', '2026-02-08 11:34:49'),
(390, 391, NULL, 159, NULL, '2026-03-10', 19782.00, 0, 0, 19782.00, NULL, NULL, '2026-02-08 12:05:33', '2026-02-08 12:05:33'),
(392, 222, NULL, 68, NULL, '2026-02-20', 1035.00, 0, 0, 1035.00, NULL, 'Restored ledger balance for INV-0000091', '2026-02-08 07:34:39', '2026-02-08 07:34:39'),
(393, 458, NULL, 178, NULL, '2026-03-10', 10850.00, 0, 0, 10850.00, NULL, NULL, '2026-02-08 15:55:53', '2026-02-08 15:55:53'),
(394, 427, NULL, 72, NULL, '2026-03-10', 690.00, 0, 0, 690.00, NULL, NULL, '2026-02-08 17:40:30', '2026-02-08 17:40:30'),
(395, 449, NULL, 175, NULL, '2026-03-10', 780.00, 0, 0, 780.00, NULL, NULL, '2026-02-08 18:50:15', '2026-02-08 18:50:15'),
(396, 461, NULL, 68, NULL, '2026-03-10', 9200.00, 0, 0, 9200.00, NULL, NULL, '2026-02-08 18:57:07', '2026-02-08 18:57:07'),
(397, 462, NULL, 180, NULL, '2026-03-10', 750.00, 0, 0, 750.00, NULL, NULL, '2026-02-08 18:57:51', '2026-02-08 18:57:51'),
(399, 464, NULL, 73, NULL, '2026-03-10', 528.00, 0, 0, 528.00, NULL, NULL, '2026-02-08 19:00:41', '2026-02-08 19:00:41'),
(400, 466, NULL, 60, NULL, '2026-03-10', 1188.00, 0, 0, 1188.00, NULL, NULL, '2026-02-08 19:02:07', '2026-02-08 19:02:07'),
(401, 467, NULL, 59, NULL, '2026-03-10', 1958.00, 0, 0, 1958.00, NULL, NULL, '2026-02-08 19:03:09', '2026-02-08 19:03:09'),
(402, 468, NULL, 154, NULL, '2026-03-10', 1350.00, 0, 0, 1350.00, NULL, NULL, '2026-02-08 19:03:34', '2026-02-08 19:03:34'),
(403, 470, NULL, 70, NULL, '2026-03-10', 506.25, 0, 0, 506.25, NULL, NULL, '2026-02-08 19:04:54', '2026-02-08 19:04:54'),
(404, 471, NULL, 50, NULL, '2026-03-10', 3448.00, 0, 0, 3448.00, NULL, NULL, '2026-02-08 19:06:36', '2026-02-08 19:06:36'),
(405, 448, NULL, 71, NULL, '2026-03-11', 2550.00, 0, 0, 2550.00, NULL, NULL, '2026-02-09 10:43:41', '2026-02-09 10:43:41'),
(406, 473, NULL, 82, NULL, '2026-03-11', 1320.00, 0, 0, 1320.00, NULL, NULL, '2026-02-09 18:52:13', '2026-02-09 18:52:13'),
(407, 474, NULL, 80, NULL, '2026-03-11', 793.50, 0, 0, 793.50, NULL, NULL, '2026-02-09 18:55:01', '2026-02-09 18:55:01'),
(408, 475, NULL, 185, NULL, '2026-03-11', 300.00, 0, 0, 300.00, NULL, NULL, '2026-02-09 18:56:40', '2026-02-09 18:56:40'),
(409, 476, NULL, 186, NULL, '2026-03-11', 1580.00, 0, 0, 1580.00, NULL, NULL, '2026-02-09 18:57:24', '2026-02-09 18:57:24'),
(411, 480, NULL, 72, NULL, '2026-03-11', 3151.00, 0, 0, 3151.00, NULL, NULL, '2026-02-09 19:00:45', '2026-02-09 19:00:45'),
(412, 481, NULL, 189, NULL, '2026-03-11', 27729.60, 0, 0, 27729.60, NULL, NULL, '2026-02-09 19:01:50', '2026-02-09 19:01:50'),
(413, 482, NULL, 59, NULL, '2026-03-11', 5764.00, 0, 0, 5764.00, NULL, NULL, '2026-02-09 19:02:44', '2026-02-09 19:02:44'),
(414, 483, NULL, 53, NULL, '2026-03-11', 13728.00, 0, 0, 13728.00, NULL, NULL, '2026-02-09 19:03:14', '2026-02-09 19:03:14'),
(415, 484, NULL, 190, NULL, '2026-03-11', 1276.00, 0, 0, 1276.00, NULL, NULL, '2026-02-09 19:04:10', '2026-02-09 19:04:10'),
(416, 485, NULL, 68, NULL, '2026-03-11', 805.00, 0, 0, 805.00, NULL, NULL, '2026-02-09 19:04:53', '2026-02-09 19:04:53'),
(417, 486, NULL, 91, NULL, '2026-03-11', 1702.00, 0, 0, 1702.00, NULL, NULL, '2026-02-09 19:05:51', '2026-02-09 19:05:51'),
(418, 487, NULL, 39, NULL, '2026-03-11', 11983.75, 0, 0, 11983.75, NULL, NULL, '2026-02-09 19:09:26', '2026-02-09 19:09:26'),
(419, 489, NULL, 51, NULL, '2026-03-11', 598.00, 0, 0, 598.00, NULL, NULL, '2026-02-09 19:11:16', '2026-02-09 19:11:16'),
(420, 490, NULL, 50, NULL, '2026-03-11', 21965.60, 0, 0, 21965.60, NULL, NULL, '2026-02-09 19:15:05', '2026-02-09 19:15:05'),
(421, 477, NULL, 49, NULL, '2026-03-11', 11160.00, 0, 0, 11160.00, NULL, NULL, '2026-02-09 19:30:21', '2026-02-09 19:30:21'),
(425, 493, NULL, 60, NULL, '2026-03-12', 4558.40, 0, 0, 4558.40, NULL, NULL, '2026-02-10 16:53:51', '2026-02-10 16:53:51'),
(426, 494, NULL, 42, NULL, '2026-03-12', 5340.00, 0, 0, 5340.00, NULL, NULL, '2026-02-10 16:55:06', '2026-02-10 16:55:06'),
(427, 495, NULL, 91, NULL, '2026-03-12', 1978.00, 0, 0, 1978.00, NULL, NULL, '2026-02-10 16:56:08', '2026-02-10 16:56:08'),
(429, 497, NULL, 192, NULL, NULL, 6825.00, 0, 0, 6825.00, NULL, 'Opening Balance', '2026-02-10 17:02:29', '2026-02-10 17:02:29'),
(430, 499, NULL, 192, NULL, '2026-03-12', 17600.00, 0, 0, 17600.00, NULL, NULL, '2026-02-10 17:05:00', '2026-02-10 17:05:00'),
(432, 496, NULL, 50, NULL, '2026-03-12', 9559.00, 0, 0, 9559.00, NULL, NULL, '2026-02-10 18:38:23', '2026-02-10 18:38:23'),
(433, 502, NULL, 171, NULL, '2026-03-12', 5110.00, 0, 0, 5110.00, NULL, NULL, '2026-02-10 18:39:51', '2026-02-10 18:39:51'),
(434, 503, NULL, 39, NULL, '2026-03-12', 5040.00, 0, 0, 5040.00, NULL, NULL, '2026-02-10 18:57:11', '2026-02-10 18:57:11'),
(435, 504, NULL, 195, NULL, '2026-03-12', 9603.60, 0, 0, 9603.60, NULL, NULL, '2026-02-10 19:02:26', '2026-02-10 19:02:26'),
(437, 506, NULL, 197, NULL, '2026-03-13', 6450.00, 0, 0, 6450.00, NULL, NULL, '2026-02-11 12:46:45', '2026-02-11 12:46:45'),
(438, 507, NULL, 198, NULL, '2026-03-13', 1499.90, 0, 0, 1499.90, NULL, NULL, '2026-02-11 12:48:38', '2026-02-11 12:48:38'),
(439, 322, NULL, 137, NULL, '2026-03-13', 0.00, 0, 0, 0.00, NULL, NULL, '2026-02-11 15:55:44', '2026-02-11 15:55:44'),
(440, 355, NULL, 153, NULL, '2026-03-13', 0.00, 0, 0, 0.00, NULL, NULL, '2026-02-11 15:56:40', '2026-02-11 15:56:40'),
(441, 509, NULL, 49, NULL, '2026-03-13', 1840.00, 0, 0, 1840.00, NULL, NULL, '2026-02-11 17:52:55', '2026-02-11 17:52:55'),
(443, 511, NULL, 71, NULL, '2026-03-13', 2266.00, 0, 0, 2266.00, NULL, NULL, '2026-02-11 17:56:39', '2026-02-11 17:56:39'),
(444, 512, NULL, 72, NULL, '2026-03-13', 3036.00, 0, 0, 3036.00, NULL, NULL, '2026-02-11 17:57:19', '2026-02-11 17:57:19'),
(445, 513, NULL, 60, NULL, '2026-03-13', 2145.00, 0, 0, 2145.00, NULL, NULL, '2026-02-11 17:58:31', '2026-02-11 17:58:31'),
(446, 514, NULL, 59, NULL, '2026-03-13', 5049.00, 0, 0, 5049.00, NULL, NULL, '2026-02-11 18:00:37', '2026-02-11 18:00:37'),
(447, 515, NULL, 68, NULL, '2026-03-13', 2792.20, 0, 0, 2792.20, NULL, NULL, '2026-02-11 18:02:02', '2026-02-11 18:02:02'),
(448, 516, NULL, 70, NULL, '2026-03-13', 46277.40, 0, 0, 46277.40, NULL, NULL, '2026-02-11 18:06:17', '2026-02-11 18:06:17'),
(451, 519, NULL, 76, NULL, '2026-03-13', 803.00, 0, 0, 803.00, NULL, NULL, '2026-02-11 18:12:40', '2026-02-11 18:12:40'),
(453, 521, NULL, 200, NULL, '2026-03-13', 27222.00, 0, 0, 27222.00, NULL, NULL, '2026-02-11 18:16:37', '2026-02-11 18:16:37'),
(454, 520, NULL, 50, NULL, '2026-03-13', 8271.90, 0, 0, 8271.90, NULL, NULL, '2026-02-11 19:10:46', '2026-02-11 19:10:46'),
(455, 517, NULL, 91, NULL, '2026-03-13', 1379.50, 0, 0, 1379.50, NULL, NULL, '2026-02-11 19:14:03', '2026-02-11 19:14:03'),
(456, 510, NULL, 62, NULL, '2026-03-13', 2852.00, 0, 0, 2852.00, NULL, NULL, '2026-02-11 19:20:36', '2026-02-11 19:20:36'),
(457, 522, NULL, 39, NULL, '2026-03-13', 900.00, 0, 0, 900.00, NULL, NULL, '2026-02-11 19:38:00', '2026-02-11 19:38:00'),
(459, 518, NULL, 123, NULL, '2026-03-14', 1804.00, 0, 0, 1804.00, NULL, NULL, '2026-02-12 13:37:58', '2026-02-12 13:37:58'),
(460, 526, NULL, 136, NULL, '2026-03-14', 16146.00, 0, 0, 16146.00, NULL, NULL, '2026-02-12 18:04:36', '2026-02-12 18:04:36'),
(461, 527, NULL, 62, NULL, '2026-03-14', 138.00, 0, 0, 138.00, NULL, NULL, '2026-02-12 18:05:39', '2026-02-12 18:05:39'),
(462, 529, NULL, 82, NULL, '2026-03-14', 528.00, 0, 0, 528.00, NULL, NULL, '2026-02-12 18:07:10', '2026-02-12 18:07:10'),
(463, 530, NULL, 74, NULL, '2026-03-14', 7560.00, 0, 0, 7560.00, NULL, NULL, '2026-02-12 18:10:33', '2026-02-12 18:10:33'),
(464, 531, NULL, 73, NULL, '2026-03-14', 8756.00, 0, 0, 8756.00, NULL, NULL, '2026-02-12 18:12:08', '2026-02-12 18:12:08'),
(465, 532, NULL, 59, NULL, '2026-03-14', 6314.00, 0, 0, 6314.00, NULL, NULL, '2026-02-12 18:13:03', '2026-02-12 18:13:03'),
(466, 533, NULL, 205, NULL, '2026-03-14', 2325.00, 0, 0, 2325.00, NULL, NULL, '2026-02-12 18:14:51', '2026-02-12 18:14:51'),
(467, 534, NULL, 42, NULL, '2026-03-14', 990.00, 0, 0, 990.00, NULL, NULL, '2026-02-12 18:15:20', '2026-02-12 18:15:20'),
(468, 535, NULL, 68, NULL, '2026-03-14', 2669.00, 0, 0, 2669.00, NULL, NULL, '2026-02-12 18:16:09', '2026-02-12 18:16:09'),
(469, 536, NULL, 70, NULL, '2026-03-14', 675.00, 0, 0, 675.00, NULL, NULL, '2026-02-12 18:16:45', '2026-02-12 18:16:45'),
(470, 537, NULL, 91, NULL, '2026-03-14', 345.00, 0, 0, 345.00, NULL, NULL, '2026-02-12 18:17:18', '2026-02-12 18:17:18'),
(471, 538, NULL, 39, NULL, '2026-03-14', 19400.00, 0, 0, 19400.00, NULL, NULL, '2026-02-12 18:20:34', '2026-02-12 18:20:34'),
(472, 539, NULL, 50, NULL, '2026-03-14', 14287.86, 0, 0, 14287.86, NULL, NULL, '2026-02-12 18:24:18', '2026-02-12 18:24:18');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `module` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `slug`, `description`, `module`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'View Users', 'users.view', 'View list of users', 'users', 1, '2025-11-08 10:47:31', '2025-11-08 10:47:31'),
(2, 'Create Users', 'users.create', 'Create new users', 'users', 1, '2025-11-08 10:47:31', '2025-11-08 10:47:31'),
(3, 'Edit Users', 'users.edit', 'Edit existing users', 'users', 1, '2025-11-08 10:47:31', '2025-11-08 10:47:31'),
(4, 'Delete Users', 'users.delete', 'Delete users', 'users', 1, '2025-11-08 10:47:31', '2025-11-08 10:47:31'),
(5, 'Manage User Roles', 'users.roles', 'Manage user roles and permissions', 'users', 1, '2025-11-08 10:47:31', '2025-11-08 10:47:31'),
(6, 'View Products', 'products.view', 'View product listings', 'products', 1, '2025-11-08 10:47:31', '2025-11-08 10:47:31'),
(7, 'Create Products', 'products.create', 'Create new products', 'products', 1, '2025-11-08 10:47:31', '2025-11-08 10:47:31'),
(8, 'Edit Products', 'products.edit', 'Edit existing products', 'products', 1, '2025-11-08 10:47:31', '2025-11-08 10:47:31'),
(9, 'Delete Products', 'products.delete', 'Delete products', 'products', 1, '2025-11-08 10:47:31', '2025-11-08 10:47:31'),
(10, 'Manage Product Categories', 'products.categories', 'Manage product categories', 'products', 1, '2025-11-08 10:47:31', '2025-11-08 10:47:31'),
(11, 'Manage Product Units', 'products.units', 'Manage product units', 'products', 1, '2025-11-08 10:47:31', '2025-11-08 10:47:31'),
(12, 'Import/Export Products', 'products.import_export', 'Import and export products', 'products', 1, '2025-11-08 10:47:31', '2025-11-08 10:47:31'),
(13, 'View Customers', 'customers.view', 'View customer list', 'customers', 1, '2025-11-08 10:47:31', '2025-11-08 10:47:31'),
(14, 'Create Customers', 'customers.create', 'Create new customers', 'customers', 1, '2025-11-08 10:47:31', '2025-11-08 10:47:31'),
(15, 'Edit Customers', 'customers.edit', 'Edit customer information', 'customers', 1, '2025-11-08 10:47:31', '2025-11-08 10:47:31'),
(16, 'Delete Customers', 'customers.delete', 'Delete customers', 'customers', 1, '2025-11-08 10:47:31', '2025-11-08 10:47:31'),
(17, 'Manage Customer Payments', 'customers.payments', 'Manage customer advance payments', 'customers', 1, '2025-11-08 10:47:31', '2025-11-08 10:47:31'),
(18, 'View All Sales', 'sales.view_all', 'View all sales records', 'sales', 1, '2025-11-08 10:47:31', '2025-11-08 10:47:31'),
(19, 'View Own Sales', 'sales.view_own', 'View only own sales records', 'sales', 1, '2025-11-08 10:47:31', '2025-11-08 10:47:31'),
(20, 'Create Sales', 'sales.create', 'Create new sales/invoices', 'sales', 1, '2025-11-08 10:47:31', '2025-11-08 10:47:31'),
(21, 'Edit Sales', 'sales.edit', 'Edit sales records', 'sales', 1, '2025-11-08 10:47:31', '2025-11-08 10:47:31'),
(22, 'Delete Sales', 'sales.delete', 'Delete sales records', 'sales', 1, '2025-11-08 10:47:31', '2025-11-08 10:47:31'),
(23, 'Process Returns', 'sales.returns', 'Process sales returns', 'sales', 1, '2025-11-08 10:47:31', '2025-11-08 10:47:31'),
(24, 'Use POS System', 'sales.pos', 'Access POS system', 'sales', 1, '2025-11-08 10:47:31', '2025-11-08 10:47:31'),
(25, 'Print Invoices', 'sales.print', 'Print sales invoices', 'sales', 1, '2025-11-08 10:47:31', '2025-11-08 10:47:31'),
(26, 'View Suppliers', 'suppliers.view', 'View supplier list', 'suppliers', 1, '2025-11-08 10:47:31', '2025-11-08 10:47:31'),
(27, 'Create Suppliers', 'suppliers.create', 'Create new suppliers', 'suppliers', 1, '2025-11-08 10:47:31', '2025-11-08 10:47:31'),
(28, 'Edit Suppliers', 'suppliers.edit', 'Edit supplier information', 'suppliers', 1, '2025-11-08 10:47:31', '2025-11-08 10:47:31'),
(29, 'Delete Suppliers', 'suppliers.delete', 'Delete suppliers', 'suppliers', 1, '2025-11-08 10:47:31', '2025-11-08 10:47:31'),
(30, 'View Purchases', 'purchases.view', 'View purchase records', 'purchases', 1, '2025-11-08 10:47:31', '2025-11-08 10:47:31'),
(31, 'Create Purchases', 'purchases.create', 'Create purchase orders', 'purchases', 1, '2025-11-08 10:47:31', '2025-11-08 10:47:31'),
(32, 'Edit Purchases', 'purchases.edit', 'Edit purchase orders', 'purchases', 1, '2025-11-08 10:47:31', '2025-11-08 10:47:31'),
(33, 'Delete Purchases', 'purchases.delete', 'Delete purchase orders', 'purchases', 1, '2025-11-08 10:47:31', '2025-11-08 10:47:31'),
(34, 'Receive Purchases', 'purchases.receive', 'Receive and process purchases', 'purchases', 1, '2025-11-08 10:47:31', '2025-11-08 10:47:31'),
(35, 'View Inventory', 'inventory.view', 'View inventory levels', 'inventory', 1, '2025-11-08 10:47:31', '2025-11-08 10:47:31'),
(36, 'Adjust Stock', 'inventory.adjust', 'Make stock adjustments', 'inventory', 1, '2025-11-08 10:47:31', '2025-11-08 10:47:31'),
(37, 'View Stock History', 'inventory.history', 'View stock movement history', 'inventory', 1, '2025-11-08 10:47:31', '2025-11-08 10:47:31'),
(38, 'View Sales Reports', 'reports.sales', 'View sales reports and analytics', 'reports', 1, '2025-11-08 10:47:31', '2025-11-08 10:47:31'),
(39, 'View Purchase Reports', 'reports.purchases', 'View purchase reports', 'reports', 1, '2025-11-08 10:47:31', '2025-11-08 10:47:31'),
(40, 'View Financial Reports', 'reports.financial', 'View financial and profit/loss reports', 'reports', 1, '2025-11-08 10:47:31', '2025-11-08 10:47:31'),
(41, 'View Inventory Reports', 'reports.inventory', 'View inventory reports', 'reports', 1, '2025-11-08 10:47:31', '2025-11-08 10:47:31'),
(42, 'Export Reports', 'reports.export', 'Export reports to various formats', 'reports', 1, '2025-11-08 10:47:31', '2025-11-08 10:47:31'),
(43, 'Manage Company Settings', 'settings.company', 'Manage company information and settings', 'settings', 1, '2025-11-08 10:47:31', '2025-11-08 10:47:31'),
(44, 'Manage Tax Settings', 'settings.tax', 'Configure tax rates and settings', 'settings', 1, '2025-11-08 10:47:31', '2025-11-08 10:47:31'),
(45, 'Manage System Settings', 'settings.system', 'Configure system-wide settings', 'settings', 1, '2025-11-08 10:47:31', '2025-11-08 10:47:31'),
(46, 'Create Backups', 'system.backup', 'Create system backups', 'system', 1, '2025-11-08 10:47:31', '2025-11-08 10:47:31'),
(47, 'Restore Backups', 'system.restore', 'Restore system from backups', 'system', 1, '2025-11-08 10:47:31', '2025-11-08 10:47:31'),
(48, 'Database Cleanup', 'system.cleanup', 'Perform database cleanup operations', 'system', 1, '2025-11-08 10:47:31', '2025-11-08 10:47:31'),
(49, 'View System Info', 'system.info', 'View system information', 'system', 1, '2025-11-08 10:47:31', '2025-11-08 10:47:31'),
(50, 'Approve Transactions', 'transactions.approve', 'Approve or reject transactions', 'transactions', 1, '2025-11-08 10:47:31', '2025-11-08 10:47:31'),
(51, 'View Payment Entries', 'payments.view', 'View payment entries', 'payments', 1, '2025-11-08 10:47:31', '2025-11-08 10:47:31'),
(52, 'Approve Payments', 'payments.approve', 'Approve or reject payment entries', 'payments', 1, '2025-11-08 10:47:31', '2025-11-08 10:47:31');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `sku` varchar(255) NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `type` enum('simple','panaflex_roll') NOT NULL,
  `unit_id` bigint(20) UNSIGNED DEFAULT NULL,
  `description` text DEFAULT NULL,
  `sale_rate` decimal(12,2) NOT NULL DEFAULT 0.00,
  `purchase_rate` decimal(12,2) NOT NULL DEFAULT 0.00,
  `taxable` tinyint(1) NOT NULL DEFAULT 0,
  `barcode` varchar(255) DEFAULT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `stock_quantity` decimal(12,2) NOT NULL DEFAULT 0.00,
  `stock_meters` decimal(12,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `min_qty` int(11) DEFAULT NULL,
  `min_meters` decimal(12,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `sku`, `category_id`, `type`, `unit_id`, `description`, `sale_rate`, `purchase_rate`, `taxable`, `barcode`, `image_path`, `active`, `stock_quantity`, `stock_meters`, `created_at`, `updated_at`, `min_qty`, `min_meters`) VALUES
(28, 'China FLC', 'PFCHI9555', 13, 'panaflex_roll', NULL, '', 22.00, 13.50, 0, 'SPCHI1018', NULL, 1, 2638.97, 259.64, '2026-01-12 08:38:32', '2026-02-12 19:06:47', 0, 49.99),
(29, 'Rings', 'SPRIN3237', 15, 'simple', 15, '', 10.00, 2.50, 0, 'SPRIN4942', NULL, 1, 0.00, 0.00, '2026-01-12 09:47:08', '2026-01-12 09:47:08', 0, 0.00),
(31, 'Star', 'PFSTA4388', 13, 'panaflex_roll', NULL, '6 fit star', 50.00, 25.00, 0, 'SPSTA7611', NULL, 1, 149.96, 40.43, '2026-01-13 12:39:18', '2026-02-12 18:16:09', 0, 9.75),
(32, 'ONE WAY VISSION', 'PFONE2267', 13, 'panaflex_roll', NULL, '', 85.00, 40.00, 0, 'SPONE8290', NULL, 1, 0.00, 0.00, '2026-01-15 10:21:50', '2026-02-11 18:06:17', 0, 0.00),
(34, 'VYNAL', 'PFVYN9575', 13, 'panaflex_roll', NULL, 'VYNAL', 0.00, 35.00, 0, 'SPVYN5092', NULL, 1, 49.99, 28.35, '2026-01-17 18:57:48', '2026-02-12 18:16:45', 0, 6.77),
(35, 'Reflector', 'PFREF1951', 13, 'panaflex_roll', NULL, '', 0.00, 35.00, 0, 'SPREF5824', NULL, 1, 6.10, 0.91, '2026-01-25 17:52:55', '2026-02-09 19:09:26', 0, 0.00),
(36, 'Backlight', 'PFBAC6126', 13, 'panaflex_roll', NULL, '', 75.00, 45.00, 0, 'SPBAC0399', NULL, 1, 28.80, 0.00, '2026-02-02 19:15:39', '2026-02-02 19:16:46', 0, 0.00),
(37, 'INK', 'SPINK9247', 14, 'simple', 14, '', 0.00, 41800.00, 0, 'SPINK8861', NULL, 1, 2.00, 0.00, '2026-02-05 15:21:27', '2026-02-10 11:10:37', 0, 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_no` varchar(255) NOT NULL,
  `supplier_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `purchased_at` datetime NOT NULL,
  `expected_date` datetime DEFAULT NULL,
  `subtotal` decimal(12,2) NOT NULL DEFAULT 0.00,
  `discount_total` decimal(12,2) NOT NULL DEFAULT 0.00,
  `tax_total` decimal(12,2) NOT NULL DEFAULT 0.00,
  `other_charges` decimal(12,2) NOT NULL DEFAULT 0.00,
  `shipping_charges` decimal(12,2) NOT NULL DEFAULT 0.00,
  `grand_total` decimal(12,2) NOT NULL DEFAULT 0.00,
  `status` enum('pending','ordered','received','cancelled') DEFAULT 'pending',
  `notes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`id`, `purchase_no`, `supplier_id`, `user_id`, `purchased_at`, `expected_date`, `subtotal`, `discount_total`, `tax_total`, `other_charges`, `shipping_charges`, `grand_total`, `status`, `notes`, `created_at`, `updated_at`) VALUES
(38, 'PUR-0000001', 21, 2, '2026-01-12 00:00:00', '2026-01-12 00:00:00', 92988.00, 0.00, 0.00, 0.00, 0.00, 92988.00, 'received', NULL, '2026-01-12 08:40:35', '2026-01-12 08:40:35'),
(47, 'PUR-0000002', 21, 2, '2026-01-13 00:00:00', '2026-01-13 00:00:00', 23247.00, 0.00, 0.00, 0.00, 0.00, 23247.00, 'received', '10 fit  roll china', '2026-01-13 12:36:49', '2026-01-13 12:36:49'),
(48, 'PUR-0000003', 21, 2, '2026-01-13 00:00:00', '2026-01-13 00:00:00', 25625.00, 0.00, 0.00, 0.00, 0.00, 25625.00, 'received', '6 fit star', '2026-01-13 12:40:16', '2026-01-13 12:40:16'),
(49, 'PUR-0000004', 21, 2, '2026-01-15 00:00:00', '2026-01-13 00:00:00', 23247.00, 0.00, 0.00, 0.00, 0.00, 23247.00, 'received', '10 fit roll', '2026-01-15 18:44:31', '2026-01-15 18:44:31'),
(50, 'PUR-0000005', 21, 2, '2026-01-15 00:00:00', '2026-01-15 00:00:00', 23247.00, 0.00, 0.00, 0.00, 0.00, 23247.00, 'received', '10 fit...1', '2026-01-15 18:45:34', '2026-01-15 18:45:34'),
(51, 'PUR-0000006', 21, 2, '2026-01-15 00:00:00', '2026-01-15 00:00:00', 21033.00, 0.00, 0.00, 0.00, 0.00, 21033.00, 'received', NULL, '2026-01-15 18:47:26', '2026-01-15 18:47:26'),
(52, 'PUR-0000007', 21, 2, '2026-01-17 00:00:00', '2026-01-17 00:00:00', 23247.00, 0.00, 0.00, 0.00, 0.00, 23247.00, 'received', '10  fit ...1 roll', '2026-01-17 17:27:57', '2026-01-17 17:27:57'),
(53, 'PUR-0000008', 21, 2, '2026-01-17 00:00:00', '2026-01-17 00:00:00', 22386.00, 0.00, 0.00, 0.00, 0.00, 22386.00, 'received', 'sabri ...1 roll', '2026-01-17 17:28:43', '2026-01-17 17:28:43'),
(54, 'PUR-0000009', 21, 2, '2026-01-17 00:00:00', '2026-01-17 00:00:00', 25830.00, 0.00, 0.00, 0.00, 0.00, 25830.00, 'received', 'VYNAL ...1 ROLL', '2026-01-17 18:50:38', '2026-01-17 18:50:38'),
(55, 'PUR-0000010', 21, 2, '2026-01-18 00:00:00', NULL, 23247.00, 0.00, 0.00, 0.00, 0.00, 23247.00, 'received', '10 fit....atech', '2026-01-18 11:48:32', '2026-01-18 11:48:32'),
(56, 'PUR-0000011', 21, 2, '2026-01-19 00:00:00', '2026-01-19 00:00:00', 64651.50, 0.00, 0.00, 0.00, 0.00, 64651.50, 'received', '1009 BILL NO TAK STOCK UPDATE HAI', '2026-01-19 17:33:13', '2026-01-19 17:33:13'),
(57, 'PUR-0000012', 21, 2, '2026-01-19 00:00:00', '2026-01-19 00:00:00', 21033.00, 0.00, 0.00, 0.00, 0.00, 21033.00, 'received', 'bill no 1010 ... 9 feet roll', '2026-01-19 20:01:54', '2026-01-19 20:01:54'),
(58, 'PUR-0000013', 21, 2, '2026-01-21 00:00:00', '2026-01-21 00:00:00', 7749.00, 0.00, 0.00, 0.00, 0.00, 7749.00, 'received', NULL, '2026-01-22 12:16:58', '2026-01-22 12:16:58'),
(59, 'PUR-0000014', 21, 2, '2026-01-22 00:00:00', '2026-01-22 00:00:00', 11623.50, 0.00, 0.00, 0.00, 0.00, 11623.50, 'received', NULL, '2026-01-22 12:18:14', '2026-01-22 12:18:14'),
(60, 'PUR-0000015', 21, 2, '2026-01-22 00:00:00', '2026-01-22 00:00:00', 4981.50, 0.00, 0.00, 0.00, 0.00, 4981.50, 'received', '2 feet', '2026-01-22 12:19:00', '2026-01-22 12:19:00'),
(61, 'PUR-0000016', 21, 2, '2026-01-21 00:00:00', '2026-01-21 00:00:00', 7195.50, 0.00, 0.00, 0.00, 0.00, 7195.50, 'received', '3 feet', '2026-01-22 12:19:48', '2026-01-22 12:19:48'),
(62, 'PUR-0000017', 21, 2, '2026-01-24 00:00:00', '2026-01-24 00:00:00', 9225.00, 0.00, 0.00, 0.00, 0.00, 9225.00, 'received', '2 feet', '2026-01-24 18:16:27', '2026-01-24 18:16:27'),
(63, 'PUR-0000018', 21, 2, '2026-01-25 00:00:00', '2026-01-25 00:00:00', 3045.00, 0.00, 0.00, 0.00, 0.00, 3045.00, 'received', 'Reflector', '2026-01-25 17:53:22', '2026-01-25 17:53:22'),
(64, 'PUR-0000019', 21, 2, '2026-01-27 00:00:00', '2026-01-27 00:00:00', 116235.00, 0.00, 0.00, 0.00, 0.00, 116235.00, 'received', '10 feet ... 5 roll', '2026-01-27 17:16:58', '2026-01-27 17:16:58'),
(65, 'PUR-0000020', 21, 2, '2026-01-27 00:00:00', '2026-01-27 00:00:00', 21033.00, 0.00, 0.00, 0.00, 0.00, 21033.00, 'received', '9 feet ATS', '2026-01-27 17:17:52', '2026-01-27 17:17:52'),
(66, 'PUR-0000021', 21, 2, '2026-01-28 00:00:00', '2026-01-28 00:00:00', 46494.00, 0.00, 0.00, 0.00, 0.00, 46494.00, 'received', '10 feet roll ..... 2', '2026-01-28 18:17:40', '2026-01-28 18:17:40'),
(67, 'PUR-0000022', 21, 2, '2026-01-29 00:00:00', '2026-01-29 00:00:00', 23247.00, 0.00, 0.00, 0.00, 0.00, 23247.00, 'received', '10 feet rool .... 1', '2026-01-29 14:10:02', '2026-01-29 14:10:02'),
(68, 'PUR-0000023', 21, 2, '2026-01-29 00:00:00', '2026-01-29 00:00:00', 16051.50, 0.00, 0.00, 0.00, 0.00, 16051.50, 'received', '1 ... 7 feet rool', '2026-01-29 14:13:37', '2026-01-29 14:13:37'),
(69, 'PUR-0000024', 21, 2, '2026-01-31 00:00:00', '2026-01-31 00:00:00', 69741.00, 0.00, 0.00, 0.00, 0.00, 69741.00, 'received', '3 rool .... 10 feet', '2026-02-01 13:31:44', '2026-02-01 13:31:44'),
(70, 'PUR-0000025', 21, 2, '2026-01-31 00:00:00', '2026-01-31 00:00:00', 21033.00, 0.00, 0.00, 0.00, 0.00, 21033.00, 'received', '9 feet ... 1 roll', '2026-02-01 13:33:01', '2026-02-01 13:33:01'),
(71, 'PUR-0000026', 21, 2, '2026-02-01 00:00:00', '2026-02-01 00:00:00', 18265.50, 0.00, 0.00, 0.00, 0.00, 18265.50, 'received', '8 feet ...1 rool', '2026-02-01 16:25:44', '2026-02-01 16:25:44'),
(72, 'PUR-0000027', 21, 2, '2026-02-02 00:00:00', '2026-02-02 00:00:00', 23247.00, 0.00, 0.00, 0.00, 0.00, 23247.00, 'received', '10 feet ...1 roll', '2026-02-02 18:21:37', '2026-02-02 18:21:37'),
(73, 'PUR-0000028', 21, 2, '2026-02-02 00:00:00', '2026-02-02 00:00:00', 23247.00, 0.00, 0.00, 0.00, 0.00, 23247.00, 'received', '10 feet .... 1 roll', '2026-02-02 18:35:44', '2026-02-02 18:35:44'),
(74, 'PUR-0000029', 21, 2, '2026-02-02 00:00:00', '2026-02-02 00:00:00', 4252.50, 0.00, 0.00, 0.00, 0.00, 4252.50, 'received', 'Backlight', '2026-02-02 19:16:11', '2026-02-02 19:16:11'),
(75, 'PUR-0000030', 21, 2, '2026-02-04 00:00:00', '2026-02-04 00:00:00', 46494.00, 0.00, 0.00, 0.00, 0.00, 46494.00, 'received', '2 rool 10 feet', '2026-02-04 12:53:05', '2026-02-04 12:53:05'),
(76, 'PUR-0000031', 21, 2, '2026-02-05 00:00:00', '2026-02-04 00:00:00', 23247.00, 0.00, 0.00, 0.00, 0.00, 23247.00, 'received', '1 rool 10 feet', '2026-02-05 11:48:07', '2026-02-05 11:48:07'),
(77, 'PUR-0000032', 21, 2, '2026-02-05 00:00:00', '2026-02-05 00:00:00', 23247.00, 0.00, 0.00, 0.00, 0.00, 23247.00, 'received', '1 roll 10 feet', '2026-02-05 11:48:43', '2026-02-05 11:48:43'),
(78, 'PUR-0000033', 21, 2, '2026-02-05 00:00:00', '2026-02-05 00:00:00', 13837.50, 0.00, 0.00, 0.00, 0.00, 13837.50, 'received', '1 roll 6 feet', '2026-02-05 11:49:06', '2026-02-05 11:49:06'),
(79, 'PUR-0000034', 21, 2, '2026-02-01 00:00:00', '2026-02-01 00:00:00', 46000.00, 0.00, 0.00, 0.00, 0.00, 46000.00, 'received', '20 LITER INK', '2026-02-05 15:22:34', '2026-02-05 15:22:34'),
(80, 'PUR-0000035', 21, 2, '2026-02-07 00:00:00', '2026-02-07 00:00:00', 25830.00, 0.00, 0.00, 0.00, 0.00, 25830.00, 'received', 'vynal...1', '2026-02-07 14:16:27', '2026-02-07 14:16:27'),
(81, 'PUR-0000036', 21, 2, '2026-02-07 00:00:00', '2026-02-07 00:00:00', 63898.50, 0.00, 0.00, 0.00, 0.00, 63898.50, 'received', 'nsl...1 roll\n atech ...1\natech......8', '2026-02-08 13:57:20', '2026-02-08 13:57:20'),
(82, 'PUR-0000037', 21, 2, '2026-02-09 00:00:00', '2026-02-09 00:00:00', 46494.00, 0.00, 0.00, 0.00, 0.00, 46494.00, 'received', '10 fit...2\ninvoice no 1035', '2026-02-09 20:57:38', '2026-02-09 20:57:38'),
(83, 'PUR-0000038', 21, 2, '2026-02-09 00:00:00', '2026-02-09 00:00:00', 41800.00, 0.00, 0.00, 0.00, 0.00, 41800.00, 'received', '19 liter ink', '2026-02-10 11:10:37', '2026-02-10 11:10:37'),
(84, 'PUR-0000039', 21, 2, '2026-02-10 00:00:00', '2026-02-10 00:00:00', 23247.00, 0.00, 0.00, 0.00, 0.00, 23247.00, 'received', '10 feet 1-Roll .... invoice no 1037', '2026-02-11 18:26:51', '2026-02-11 18:26:51'),
(85, 'PUR-0000040', 21, 2, '2026-02-11 00:00:00', '2026-02-11 00:00:00', 97416.41, 0.00, 0.00, 0.00, 0.00, 97416.41, 'received', '10 feet 1-Roll\n8 Feet 1-Roll\n7 feet  1-Roll\n4 feet 1-Roll\n3 feet 1-Roll\n10 feet 1-Roll\nInvoice No 1038', '2026-02-11 18:29:14', '2026-02-11 18:29:14'),
(86, 'PUR-0000041', 21, 2, '2026-02-12 00:00:00', '2026-02-12 00:00:00', 13324.25, 0.00, 0.00, 0.00, 0.00, 13324.25, 'received', 'star', '2026-02-12 18:10:08', '2026-02-12 18:10:08');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_items`
--

CREATE TABLE `purchase_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `received_quantity` int(11) NOT NULL DEFAULT 0,
  `roll_width_inch` decimal(8,2) DEFAULT NULL,
  `roll_length_meter` decimal(8,2) DEFAULT NULL,
  `rolls_count` decimal(10,2) DEFAULT NULL,
  `rate` decimal(12,2) NOT NULL DEFAULT 0.00,
  `line_total` decimal(12,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchase_items`
--

INSERT INTO `purchase_items` (`id`, `purchase_id`, `product_id`, `quantity`, `received_quantity`, `roll_width_inch`, `roll_length_meter`, `rolls_count`, `rate`, `line_total`, `created_at`, `updated_at`) VALUES
(46, 38, 28, 6888, 6888, 126.00, 49.99, 4.00, 13.50, 92988.00, '2026-01-12 08:40:35', '2026-01-12 08:40:35'),
(55, 47, 28, 1722, 1722, 126.00, 49.99, 1.00, 13.50, 23247.00, '2026-01-13 12:36:49', '2026-01-13 12:36:49'),
(56, 48, 31, 1025, 1025, 75.00, 49.99, 1.00, 25.00, 25625.00, '2026-01-13 12:40:16', '2026-01-13 12:40:16'),
(57, 49, 28, 1722, 1722, 126.00, 49.99, 1.00, 13.50, 23247.00, '2026-01-15 18:44:31', '2026-01-15 18:44:31'),
(58, 50, 28, 1722, 1722, 126.00, 49.99, 1.00, 13.50, 23247.00, '2026-01-15 18:45:34', '2026-01-15 18:45:34'),
(59, 51, 28, 1558, 1558, 114.00, 49.99, 1.00, 13.50, 21033.00, '2026-01-15 18:47:26', '2026-01-15 18:47:26'),
(60, 52, 28, 1722, 1722, 126.00, 49.99, 1.00, 13.50, 23247.00, '2026-01-17 17:27:57', '2026-01-17 17:27:57'),
(61, 53, 28, 1722, 1722, 126.00, 49.99, 1.00, 13.00, 22386.00, '2026-01-17 17:28:43', '2026-01-17 17:28:43'),
(63, 55, 28, 1722, 1722, 126.00, 49.99, 1.00, 13.50, 23247.00, '2026-01-18 11:48:32', '2026-01-18 11:48:32'),
(64, 56, 28, 4789, 4789, 126.00, 49.99, 2.79, 13.50, 64651.50, '2026-01-19 17:33:13', '2026-01-19 17:33:13'),
(65, 57, 28, 1558, 1558, 114.00, 49.99, 1.00, 13.50, 21033.00, '2026-01-19 20:01:54', '2026-01-19 20:01:54'),
(66, 58, 28, 574, 574, 42.00, 49.99, 1.00, 13.50, 7749.00, '2026-01-22 12:16:58', '2026-01-22 12:16:58'),
(67, 59, 28, 861, 861, 63.00, 49.99, 1.00, 13.50, 11623.50, '2026-01-22 12:18:14', '2026-01-22 12:18:14'),
(68, 60, 28, 369, 369, 27.00, 49.99, 1.00, 13.50, 4981.50, '2026-01-22 12:19:00', '2026-01-22 12:19:00'),
(69, 61, 28, 533, 533, 39.00, 49.99, 1.00, 13.50, 7195.50, '2026-01-22 12:19:48', '2026-01-22 12:19:48'),
(70, 62, 31, 369, 369, 27.00, 49.99, 1.00, 25.00, 9225.00, '2026-01-24 18:16:27', '2026-01-24 18:16:27'),
(71, 63, 35, 87, 87, 52.20, 6.10, 1.00, 35.00, 3045.00, '2026-01-25 17:53:22', '2026-01-25 17:53:22'),
(72, 64, 28, 8610, 8610, 126.00, 49.99, 5.00, 13.50, 116235.00, '2026-01-27 17:16:58', '2026-01-27 17:16:58'),
(73, 65, 28, 1558, 1558, 114.00, 49.99, 1.00, 13.50, 21033.00, '2026-01-27 17:17:52', '2026-01-27 17:17:52'),
(74, 66, 28, 3444, 3444, 126.00, 49.99, 2.00, 13.50, 46494.00, '2026-01-28 18:17:40', '2026-01-28 18:17:40'),
(75, 67, 28, 1722, 1722, 126.00, 49.99, 1.00, 13.50, 23247.00, '2026-01-29 14:10:02', '2026-01-29 14:10:02'),
(76, 68, 28, 1189, 1189, 87.00, 49.99, 1.00, 13.50, 16051.50, '2026-01-29 14:13:37', '2026-01-29 14:13:37'),
(77, 69, 28, 5166, 5166, 126.00, 49.99, 3.00, 13.50, 69741.00, '2026-02-01 13:31:44', '2026-02-01 13:31:44'),
(78, 70, 28, 1558, 1558, 114.00, 49.99, 1.00, 13.50, 21033.00, '2026-02-01 13:33:01', '2026-02-01 13:33:01'),
(79, 71, 28, 1353, 1353, 99.00, 49.99, 1.00, 13.50, 18265.50, '2026-02-01 16:25:44', '2026-02-01 16:25:44'),
(80, 72, 28, 1722, 1722, 126.00, 49.99, 1.00, 13.50, 23247.00, '2026-02-02 18:21:37', '2026-02-02 18:21:38'),
(81, 73, 28, 1722, 1722, 126.00, 49.99, 1.00, 13.50, 23247.00, '2026-02-02 18:35:44', '2026-02-02 18:35:44'),
(82, 74, 36, 95, 95, 12.00, 28.80, 1.00, 45.00, 4252.50, '2026-02-02 19:16:11', '2026-02-02 19:16:11'),
(83, 75, 28, 3444, 3444, 126.00, 49.99, 2.00, 13.50, 46494.00, '2026-02-04 12:53:05', '2026-02-04 12:53:05'),
(84, 76, 28, 1722, 1722, 126.00, 49.99, 1.00, 13.50, 23247.00, '2026-02-05 11:48:07', '2026-02-05 11:48:07'),
(85, 77, 28, 1722, 1722, 126.00, 49.99, 1.00, 13.50, 23247.00, '2026-02-05 11:48:43', '2026-02-05 11:48:43'),
(86, 78, 28, 1025, 1025, 75.00, 49.99, 1.00, 13.50, 13837.50, '2026-02-05 11:49:06', '2026-02-05 11:49:06'),
(87, 79, 37, 1, 1, NULL, NULL, NULL, 46000.00, 46000.00, '2026-02-05 15:22:34', '2026-02-05 15:22:34'),
(88, 80, 34, 738, 738, 54.00, 49.99, 1.00, 35.00, 25830.00, '2026-02-07 14:16:27', '2026-02-07 14:16:27'),
(89, 81, 28, 1722, 1722, 126.00, 49.99, 1.00, 13.00, 22386.00, '2026-02-08 13:57:20', '2026-02-08 13:57:20'),
(90, 81, 28, 1722, 1722, 126.00, 49.99, 1.00, 13.50, 23247.00, '2026-02-08 13:57:20', '2026-02-08 13:57:20'),
(91, 81, 28, 1353, 1353, 99.00, 49.99, 1.00, 13.50, 18265.50, '2026-02-08 13:57:20', '2026-02-08 13:57:20'),
(92, 82, 28, 3444, 3444, 126.00, 49.99, 2.00, 13.50, 46494.00, '2026-02-09 20:57:38', '2026-02-09 20:57:38'),
(93, 83, 37, 1, 1, NULL, NULL, NULL, 41800.00, 41800.00, '2026-02-10 11:10:37', '2026-02-10 11:10:37'),
(94, 84, 28, 1722, 1722, 126.00, 49.99, 1.00, 13.50, 23247.00, '2026-02-11 18:26:51', '2026-02-11 18:26:51'),
(95, 85, 28, 1722, 1722, 126.00, 49.99, 1.00, 13.50, 23247.00, '2026-02-11 18:29:14', '2026-02-11 18:29:14'),
(96, 85, 28, 1353, 1353, 99.00, 49.99, 1.00, 13.50, 18265.50, '2026-02-11 18:29:14', '2026-02-11 18:29:14'),
(97, 85, 28, 1189, 1189, 87.00, 49.99, 1.00, 13.50, 16051.50, '2026-02-11 18:29:14', '2026-02-11 18:29:14'),
(98, 85, 28, 697, 697, 51.00, 49.99, 1.00, 13.50, 9409.50, '2026-02-11 18:29:14', '2026-02-11 18:29:14'),
(99, 85, 28, 533, 533, 39.00, 49.99, 1.00, 13.50, 7195.91, '2026-02-11 18:29:14', '2026-02-11 18:29:14'),
(100, 85, 28, 1722, 1722, 126.00, 49.99, 1.00, 13.50, 23247.00, '2026-02-11 18:29:14', '2026-02-11 18:29:14'),
(101, 86, 31, 533, 533, 39.00, 49.98, 1.00, 25.00, 13324.25, '2026-02-12 18:10:08', '2026-02-12 18:10:08');

-- --------------------------------------------------------

--
-- Table structure for table `register_sessions`
--

CREATE TABLE `register_sessions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `opening_cash` decimal(10,2) NOT NULL,
  `closing_cash` decimal(10,2) DEFAULT NULL,
  `expected_cash` decimal(10,2) DEFAULT NULL,
  `cash_difference` decimal(10,2) DEFAULT NULL,
  `opening_notes` text DEFAULT NULL,
  `closing_notes` text DEFAULT NULL,
  `opened_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `closed_at` timestamp NULL DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'open',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `register_sessions`
--

INSERT INTO `register_sessions` (`id`, `user_id`, `opening_cash`, `closing_cash`, `expected_cash`, `cash_difference`, `opening_notes`, `closing_notes`, `opened_at`, `closed_at`, `status`, `created_at`, `updated_at`) VALUES
(8, 2, 500.00, 125066.00, 280556.90, -155490.90, NULL, NULL, '2026-01-15 14:11:55', '2026-01-15 19:11:55', 'closed', '2025-12-17 13:10:55', '2026-01-15 20:51:10'),
(9, 2, 0.00, 0.00, 0.00, 0.00, NULL, NULL, '2026-01-15 14:12:29', '2026-01-15 19:12:29', 'closed', '2026-01-15 19:12:18', '2026-01-15 20:51:10'),
(10, 2, 0.00, 0.00, 0.00, 0.00, NULL, NULL, '2026-01-16 02:27:39', '2026-01-16 02:36:41', 'closed', '2026-01-16 02:27:39', '2026-01-16 02:36:41'),
(11, 2, 0.00, 3755.00, 3755.00, 0.00, NULL, NULL, '2026-01-17 12:51:03', '2026-01-17 18:16:01', 'closed', '2026-01-17 12:51:03', '2026-01-17 18:16:01'),
(12, 2, 0.00, 0.00, 3539.00, -3539.00, NULL, NULL, '2026-01-17 18:19:14', '2026-01-17 18:59:48', 'closed', '2026-01-17 18:19:14', '2026-01-17 18:59:48'),
(13, 2, 0.00, 4470.00, 2892.50, 1577.50, NULL, NULL, '2026-01-18 10:53:21', '2026-01-18 18:36:09', 'closed', '2026-01-18 10:53:21', '2026-01-18 18:36:09'),
(14, 2, 0.00, 25295.00, 9501.00, 15794.00, NULL, NULL, '2026-01-19 12:04:54', '2026-01-19 18:38:06', 'closed', '2026-01-19 12:04:54', '2026-01-19 18:38:06'),
(15, 2, 0.00, 0.00, 0.00, 0.00, NULL, NULL, '2026-01-19 18:47:43', '2026-01-19 20:00:59', 'closed', '2026-01-19 18:47:43', '2026-01-19 20:00:59'),
(16, 2, 0.00, 8220.00, 15117.40, -6897.40, NULL, NULL, '2026-01-20 10:50:06', '2026-01-20 18:30:02', 'closed', '2026-01-20 10:50:06', '2026-01-20 18:30:02'),
(17, 2, 0.00, 900.00, -674.00, 1574.00, NULL, NULL, '2026-01-21 10:13:53', '2026-01-21 18:39:16', 'closed', '2026-01-21 10:13:53', '2026-01-21 18:39:16'),
(18, 2, 0.00, 9900.00, 2474.00, 7426.00, NULL, NULL, '2026-01-22 11:36:08', '2026-01-22 18:29:33', 'closed', '2026-01-22 11:36:08', '2026-01-22 18:29:33'),
(19, 2, 0.00, 0.00, 0.00, 0.00, NULL, NULL, '2026-01-22 18:35:25', '2026-01-22 18:36:13', 'closed', '2026-01-22 18:35:25', '2026-01-22 18:36:13'),
(20, 2, 1000.00, 1000.00, 1000.00, 0.00, NULL, NULL, '2026-01-23 17:16:27', '2026-01-24 04:42:08', 'closed', '2026-01-23 17:16:27', '2026-01-24 04:42:08'),
(21, 2, 0.00, 150.00, 150.00, 0.00, NULL, NULL, '2026-01-24 12:04:15', '2026-01-24 18:44:52', 'closed', '2026-01-24 12:04:15', '2026-01-24 18:44:52'),
(22, 2, 0.00, 0.00, 0.00, 0.00, NULL, NULL, '2026-01-24 19:07:59', '2026-01-24 19:09:47', 'closed', '2026-01-24 19:07:59', '2026-01-24 19:09:47'),
(23, 2, 0.00, 10453.00, 13288.00, -2835.00, NULL, NULL, '2026-01-25 11:18:20', '2026-01-25 19:07:07', 'closed', '2026-01-25 11:18:20', '2026-01-25 19:07:07'),
(24, 2, 0.00, 12964.00, 16418.88, -3454.88, NULL, NULL, '2026-01-26 11:44:51', '2026-01-26 19:04:05', 'closed', '2026-01-26 11:44:51', '2026-01-26 19:04:05'),
(25, 2, 0.00, 8600.00, 8080.00, 520.00, NULL, NULL, '2026-01-27 17:09:30', '2026-01-27 18:36:58', 'closed', '2026-01-27 17:09:30', '2026-01-27 18:36:58'),
(26, 2, 0.00, 0.00, 0.00, 0.00, NULL, NULL, '2026-01-27 19:15:42', '2026-01-27 19:21:55', 'closed', '2026-01-27 19:15:42', '2026-01-27 19:21:55'),
(27, 2, 0.00, 8900.00, 8900.00, 0.00, NULL, NULL, '2026-01-28 12:50:17', '2026-01-28 19:27:04', 'closed', '2026-01-28 12:50:17', '2026-01-28 19:27:04'),
(28, 2, 0.00, 22100.00, 35187.08, -13087.08, NULL, NULL, '2026-01-29 14:09:30', '2026-01-29 19:26:42', 'closed', '2026-01-29 14:09:30', '2026-01-29 19:26:42'),
(29, 2, 0.00, 39670.00, 39670.00, 0.00, NULL, NULL, '2026-01-31 10:45:14', '2026-01-31 19:15:54', 'closed', '2026-01-31 10:45:14', '2026-01-31 19:15:54'),
(30, 2, 0.00, 3880.00, 4160.00, -280.00, NULL, NULL, '2026-02-01 11:44:49', '2026-02-01 19:34:47', 'closed', '2026-02-01 11:44:49', '2026-02-01 19:34:47'),
(31, 2, 0.00, 1110.00, -1110.00, 2220.00, NULL, NULL, '2026-02-02 12:58:46', '2026-02-02 18:47:33', 'closed', '2026-02-02 12:58:46', '2026-02-02 18:47:33'),
(32, 2, 0.00, 0.00, 0.00, 0.00, NULL, NULL, '2026-02-02 19:10:57', '2026-02-02 19:18:55', 'closed', '2026-02-02 19:10:57', '2026-02-02 19:18:55'),
(33, 2, 0.00, 23770.00, 23770.30, -0.30, NULL, NULL, '2026-02-03 11:49:45', '2026-02-03 15:49:35', 'closed', '2026-02-03 11:49:45', '2026-02-03 15:49:35'),
(34, 2, 0.00, 1950.00, 3290.00, -1340.00, NULL, NULL, '2026-02-04 00:15:53', '2026-02-04 18:54:30', 'closed', '2026-02-04 00:15:53', '2026-02-04 18:54:30'),
(35, 2, 0.00, 18200.00, 46053.40, -27853.40, NULL, NULL, '2026-02-04 18:58:47', '2026-02-05 19:26:09', 'closed', '2026-02-04 18:58:47', '2026-02-05 19:26:09'),
(36, 2, 0.00, 43870.00, 43870.00, 0.00, NULL, NULL, '2026-02-07 11:20:58', '2026-02-07 19:08:14', 'closed', '2026-02-07 11:20:58', '2026-02-07 19:08:14'),
(37, 2, 0.00, 1360.00, 1360.00, 0.00, NULL, NULL, '2026-02-08 11:30:31', '2026-02-08 19:13:08', 'closed', '2026-02-08 11:30:31', '2026-02-08 19:13:08'),
(38, 2, 0.00, 3780.00, 5660.00, -1880.00, NULL, NULL, '2026-02-09 10:41:34', '2026-02-09 19:25:15', 'closed', '2026-02-09 10:41:34', '2026-02-09 19:25:15'),
(39, 2, 0.00, 0.00, 0.00, 0.00, NULL, NULL, '2026-02-09 19:29:20', '2026-02-09 19:45:53', 'closed', '2026-02-09 19:29:20', '2026-02-09 19:45:53'),
(40, 2, 0.00, 8450.00, 13560.00, -5110.00, NULL, NULL, '2026-02-10 10:22:47', '2026-02-10 19:03:23', 'closed', '2026-02-10 10:22:47', '2026-02-10 19:03:23'),
(41, 2, 0.00, 0.00, 489.90, -489.90, NULL, NULL, '2026-02-11 11:19:06', '2026-02-12 00:03:56', 'closed', '2026-02-11 11:19:06', '2026-02-12 00:03:56'),
(42, 2, 0.00, 25240.00, 27564.74, -2324.74, NULL, NULL, '2026-02-12 11:02:20', '2026-02-12 20:50:26', 'closed', '2026-02-12 11:02:20', '2026-02-12 20:50:26');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `description`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'admin', 'Full system access with all permissions', 1, '2025-11-08 10:47:31', '2025-11-08 10:47:31'),
(2, 'Sales Staff', 'sales', 'Limited access focused on sales operations', 1, '2025-11-08 10:47:31', '2025-11-08 10:47:31'),
(3, 'Accountant', 'accountant', 'Access to financial data and reports', 1, '2025-11-08 10:47:31', '2025-11-08 10:47:31');

-- --------------------------------------------------------

--
-- Table structure for table `role_permissions`
--

CREATE TABLE `role_permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_permissions`
--

INSERT INTO `role_permissions` (`id`, `role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 2, 13, '2025-11-08 10:47:31', '2025-11-08 10:47:31'),
(2, 2, 14, '2025-11-08 10:47:31', '2025-11-08 10:47:31'),
(3, 2, 15, '2025-11-08 10:47:31', '2025-11-08 10:47:31'),
(4, 2, 17, '2025-11-08 10:47:31', '2025-11-08 10:47:31'),
(5, 2, 19, '2025-11-08 10:47:31', '2025-11-08 10:47:31'),
(6, 2, 20, '2025-11-08 10:47:31', '2025-11-08 10:47:31'),
(7, 2, 24, '2025-11-08 10:47:31', '2025-11-08 10:47:31'),
(8, 2, 25, '2025-11-08 10:47:31', '2025-11-08 10:47:31'),
(9, 2, 6, '2025-11-08 10:47:31', '2025-11-08 10:47:31'),
(10, 2, 35, '2025-11-08 10:47:31', '2025-11-08 10:47:31'),
(11, 2, 38, '2025-11-08 10:47:31', '2025-11-08 10:47:31'),
(12, 3, 38, '2025-11-08 10:47:31', '2025-11-08 10:47:31'),
(13, 3, 39, '2025-11-08 10:47:31', '2025-11-08 10:47:31'),
(14, 3, 40, '2025-11-08 10:47:31', '2025-11-08 10:47:31'),
(15, 3, 41, '2025-11-08 10:47:31', '2025-11-08 10:47:31'),
(16, 3, 42, '2025-11-08 10:47:31', '2025-11-08 10:47:31'),
(17, 3, 51, '2025-11-08 10:47:31', '2025-11-08 10:47:31'),
(18, 3, 52, '2025-11-08 10:47:31', '2025-11-08 10:47:31'),
(19, 3, 50, '2025-11-08 10:47:31', '2025-11-08 10:47:31'),
(20, 3, 18, '2025-11-08 10:47:31', '2025-11-08 10:47:31'),
(21, 3, 30, '2025-11-08 10:47:31', '2025-11-08 10:47:31'),
(22, 3, 13, '2025-11-08 10:47:31', '2025-11-08 10:47:31'),
(23, 3, 26, '2025-11-08 10:47:31', '2025-11-08 10:47:31'),
(24, 3, 6, '2025-11-08 10:47:31', '2025-11-08 10:47:31'),
(25, 3, 35, '2025-11-08 10:47:31', '2025-11-08 10:47:31'),
(28, 3, 14, '2025-12-16 07:11:21', '2025-12-16 07:11:21'),
(31, 3, 20, '2025-12-16 07:29:01', '2025-12-16 07:29:01');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_no` varchar(255) NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `register_session_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sold_at` datetime NOT NULL,
  `invoice_date` date DEFAULT NULL,
  `payment_type` enum('cash','credit','bank') NOT NULL,
  `subtotal` decimal(12,2) NOT NULL DEFAULT 0.00,
  `discount_total` decimal(12,2) NOT NULL DEFAULT 0.00,
  `tax_total` decimal(12,2) NOT NULL DEFAULT 0.00,
  `utilities_charges` decimal(10,2) NOT NULL DEFAULT 0.00,
  `other_charges` decimal(12,2) NOT NULL DEFAULT 0.00,
  `bill_total` decimal(10,2) NOT NULL DEFAULT 0.00,
  `previous_balance` decimal(10,2) NOT NULL DEFAULT 0.00,
  `grand_total` decimal(12,2) NOT NULL DEFAULT 0.00,
  `paid_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `current_balance` decimal(10,2) NOT NULL DEFAULT 0.00,
  `advance_used` decimal(10,2) NOT NULL DEFAULT 0.00,
  `notes` text DEFAULT NULL,
  `system_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `invoice_no`, `customer_id`, `user_id`, `register_session_id`, `sold_at`, `invoice_date`, `payment_type`, `subtotal`, `discount_total`, `tax_total`, `utilities_charges`, `other_charges`, `bill_total`, `previous_balance`, `grand_total`, `paid_amount`, `current_balance`, `advance_used`, `notes`, `system_description`, `created_at`, `updated_at`) VALUES
(100, 'OPB-00037', 37, 2, NULL, '2026-01-12 08:47:06', NULL, 'credit', 112300.00, 0.00, 0.00, 0.00, 0.00, 112300.00, 0.00, 112300.00, 0.00, -112300.00, 0.00, 'Opening Balance', NULL, '2026-01-12 08:47:06', '2026-01-12 08:47:06'),
(101, 'OPB-00038', 38, 2, NULL, '2026-01-12 08:49:08', NULL, 'credit', 59620.00, 0.00, 0.00, 0.00, 0.00, 59620.00, 0.00, 59620.00, 0.00, -59620.00, 0.00, 'Opening Balance', NULL, '2026-01-12 08:49:08', '2026-01-12 08:49:08'),
(102, 'INV-0000001', 38, 2, 8, '2026-01-12 08:53:05', NULL, 'credit', 7100.80, 0.80, 0.00, 0.00, 0.00, 7100.00, 59620.00, 66720.00, 0.00, 66720.00, 0.00, NULL, NULL, '2026-01-12 08:53:05', '2026-01-12 08:53:05'),
(103, 'OPB-00039', 39, 2, NULL, '2026-01-12 09:27:30', NULL, 'credit', 311645.00, 0.00, 0.00, 0.00, 0.00, 311645.00, 0.00, 311645.00, 0.00, -311645.00, 0.00, 'Opening Balance', NULL, '2026-01-12 09:27:30', '2026-01-12 09:27:30'),
(104, 'OPB-00040', 40, 2, NULL, '2026-01-12 09:29:15', NULL, 'credit', 24335.00, 0.00, 0.00, 0.00, 0.00, 24335.00, 0.00, 24335.00, 0.00, -24335.00, 0.00, 'Opening Balance', NULL, '2026-01-12 09:29:15', '2026-01-12 09:29:15'),
(105, 'OPB-00041', 41, 2, NULL, '2026-01-12 09:30:43', NULL, 'credit', 28140.00, 0.00, 0.00, 0.00, 0.00, 28140.00, 0.00, 28140.00, 0.00, -28140.00, 0.00, 'Opening Balance', NULL, '2026-01-12 09:30:43', '2026-01-12 09:30:43'),
(106, 'OPB-00042', 42, 2, NULL, '2026-01-12 09:31:57', NULL, 'credit', 36400.00, 0.00, 0.00, 0.00, 0.00, 36400.00, 0.00, 36400.00, 0.00, -36400.00, 0.00, 'Opening Balance', NULL, '2026-01-12 09:31:57', '2026-01-12 09:31:57'),
(107, 'OPB-00043', 43, 2, NULL, '2026-01-12 09:34:35', NULL, 'credit', 29908.00, 0.00, 0.00, 0.00, 0.00, 29908.00, 0.00, 29908.00, 0.00, -29908.00, 0.00, 'Opening Balance', NULL, '2026-01-12 09:34:35', '2026-01-12 09:34:35'),
(108, 'OPB-00044', 44, 2, NULL, '2026-01-12 09:38:05', NULL, 'credit', 60000.00, 0.00, 0.00, 0.00, 0.00, 60000.00, 0.00, 60000.00, 0.00, -60000.00, 0.00, 'Opening Balance', NULL, '2026-01-12 09:38:05', '2026-01-12 09:38:05'),
(109, 'OPB-00045', 45, 2, NULL, '2026-01-12 09:54:19', NULL, 'credit', 10000.00, 0.00, 0.00, 0.00, 0.00, 10000.00, 0.00, 10000.00, 0.00, -10000.00, 0.00, 'Opening Balance', NULL, '2026-01-12 09:54:19', '2026-01-12 09:54:19'),
(126, 'INV-0000004', 44, 2, 8, '2026-01-14 06:09:41', NULL, 'credit', 21940.00, 0.00, 0.00, 0.00, 0.00, 21940.00, 60000.00, 81940.00, 0.00, 81940.00, 0.00, NULL, NULL, '2026-01-14 06:09:41', '2026-01-14 06:09:41'),
(127, 'INV-0000005', 49, 2, 8, '2026-01-14 06:21:28', NULL, 'cash', 41124.00, 0.00, 0.00, 0.00, 0.00, 41124.00, 0.00, 41124.00, 25000.00, 16124.00, 0.00, NULL, NULL, '2026-01-14 06:21:28', '2026-01-14 06:21:28'),
(128, 'INV-0000006', 39, 2, 8, '2026-01-14 06:39:43', NULL, 'credit', 41680.00, 0.00, 0.00, 0.00, 0.00, 41680.00, 311645.00, 353325.00, 0.00, 353325.00, 0.00, NULL, NULL, '2026-01-14 06:39:43', '2026-01-14 06:39:43'),
(129, 'INV-0000007', 50, 2, 8, '2026-01-14 06:54:19', NULL, 'cash', 12606.00, 0.00, 0.00, 0.00, 0.00, 12606.00, 0.00, 12606.00, 12606.00, 0.00, 0.00, NULL, NULL, '2026-01-14 06:54:19', '2026-01-14 06:54:19'),
(130, 'INV-0000008', 51, 2, 8, '2026-01-14 07:32:27', NULL, 'credit', 2587.50, 0.00, 0.00, 0.00, 0.00, 2587.50, 0.00, 2587.50, 0.00, 2587.50, 0.00, NULL, NULL, '2026-01-14 07:32:27', '2026-01-14 08:15:45'),
(132, 'INV-0000009', NULL, 2, 8, '2026-01-14 07:55:42', NULL, 'cash', 550.00, 0.00, 0.00, 0.00, 0.00, 550.00, 0.00, 550.00, 550.00, 0.00, 0.00, NULL, NULL, '2026-01-14 07:55:42', '2026-01-14 07:55:42'),
(133, 'INV-0000010', 53, 2, 8, '2026-01-15 06:05:45', NULL, 'credit', 16347.00, 0.00, 0.00, 0.00, 0.00, 16347.00, 0.00, 16347.00, 0.00, 16347.00, 0.00, NULL, NULL, '2026-01-15 06:05:45', '2026-01-15 06:05:45'),
(134, 'INV-0000011', 54, 2, 8, '2026-01-15 07:16:31', NULL, 'cash', 450.00, 0.00, 0.00, 0.00, 0.00, 450.00, 0.00, 450.00, 450.00, 0.00, 0.00, NULL, NULL, '2026-01-15 07:16:31', '2026-01-15 07:16:31'),
(136, 'OPB-00055', NULL, 2, NULL, '2026-01-15 07:33:44', NULL, 'credit', 39262.00, 0.00, 0.00, 0.00, 0.00, 39262.00, 0.00, 39262.00, 0.00, -39262.00, 0.00, 'Opening Balance', NULL, '2026-01-15 07:33:44', '2026-01-15 07:33:44'),
(137, 'INV-0000012', NULL, 2, 8, '2026-01-15 07:36:39', NULL, 'cash', 2691.00, 0.00, 0.00, 0.00, 0.00, 2691.00, 39262.00, 2691.00, 25000.00, 16953.00, 0.00, NULL, NULL, '2026-01-15 07:36:39', '2026-01-15 07:36:39'),
(138, 'INV-0000013', 56, 2, 8, '2026-01-15 07:40:03', NULL, 'cash', 1944.00, 44.00, 0.00, 0.00, 0.00, 1900.00, 0.00, 1900.00, 1900.00, 0.00, 0.00, NULL, NULL, '2026-01-15 07:40:03', '2026-01-15 07:40:03'),
(139, 'INV-0000014', 57, 2, 8, '2026-01-15 08:58:11', NULL, 'cash', 6900.00, 0.00, 0.00, 0.00, 0.00, 6900.00, 0.00, 6900.00, 4000.00, 2900.00, 0.00, NULL, NULL, '2026-01-15 08:58:11', '2026-01-15 09:03:32'),
(140, 'INV-0000015', 58, 2, 8, '2026-01-15 09:16:30', NULL, 'cash', 562.50, 2.50, 0.00, 0.00, 0.00, 560.00, 0.00, 560.00, 560.00, 0.00, 0.00, NULL, NULL, '2026-01-15 09:16:30', '2026-01-15 09:16:30'),
(141, 'INV-0000016', 39, 2, 8, '2026-01-15 09:49:22', NULL, 'credit', 17971.00, 0.00, 0.00, 0.00, 0.00, 17971.00, 311645.00, 329616.00, 0.00, 329616.00, 0.00, NULL, NULL, '2026-01-15 09:49:22', '2026-01-15 09:49:22'),
(142, 'OPB-00060', 60, 2, NULL, '2026-01-15 09:55:35', NULL, 'credit', 14491.00, 0.00, 0.00, 0.00, 0.00, 14491.00, 0.00, 14491.00, 0.00, -14491.00, 0.00, 'Opening Balance', NULL, '2026-01-15 09:55:35', '2026-01-15 09:55:35'),
(143, 'INV-0000017', 61, 2, 8, '2026-01-15 09:59:00', NULL, 'cash', 1925.20, 0.00, 0.00, 0.00, 0.00, 1925.20, 0.00, 1925.20, 1500.00, 425.20, 0.00, NULL, NULL, '2026-01-15 09:59:00', '2026-01-15 09:59:00'),
(144, 'INV-0000018', 60, 2, 8, '2026-01-15 10:02:09', NULL, 'cash', 10593.00, 0.00, 0.00, 0.00, 0.00, 10593.00, 14491.00, 10593.00, 4000.00, 21084.00, 0.00, NULL, NULL, '2026-01-15 10:02:09', '2026-01-15 10:02:09'),
(145, 'INV-0000019', NULL, 2, 8, '2026-01-15 10:17:01', NULL, 'credit', 3454.00, 0.00, 0.00, 0.00, 0.00, 3454.00, 0.00, 3454.00, 0.00, 3454.00, 0.00, NULL, NULL, '2026-01-15 10:17:01', '2026-01-15 10:17:01'),
(146, 'INV-0000020', 62, 2, 8, '2026-01-15 10:26:40', NULL, 'credit', 2182.00, 0.00, 0.00, 0.00, 0.00, 2182.00, 0.00, 2182.00, 0.00, 2182.00, 0.00, NULL, NULL, '2026-01-15 10:26:40', '2026-01-15 10:59:41'),
(147, 'INV-0000021', 59, 2, 8, '2026-01-15 10:47:23', NULL, 'cash', 28429.00, 0.00, 0.00, 0.00, 0.00, 28429.00, -25000.00, 3429.00, 17000.00, -13571.00, 0.00, NULL, NULL, '2026-01-15 10:47:23', '2026-02-03 14:43:32'),
(148, 'INV-0000022', 67, 2, 8, '2026-01-15 11:29:00', NULL, 'credit', 3062.50, 0.00, 0.00, 0.00, 0.00, 3062.50, 0.00, 3062.50, 0.00, 3062.50, 0.00, NULL, NULL, '2026-01-15 11:29:00', '2026-01-15 11:29:00'),
(150, 'INV-0000024', 68, 2, 8, '2026-01-15 18:28:19', NULL, 'cash', 12396.10, 0.00, 0.00, 0.00, 0.00, 12396.10, 0.00, 12396.10, 3500.00, 8896.10, 0.00, NULL, NULL, '2026-01-15 18:28:19', '2026-01-15 18:28:19'),
(151, 'INV-0000025', 70, 2, 8, '2026-01-15 18:35:15', NULL, 'cash', 54851.60, 0.00, 0.00, 0.00, 0.00, 54851.60, 0.00, 54851.60, 15000.00, 39851.60, 0.00, NULL, NULL, '2026-01-15 18:35:15', '2026-01-15 18:36:12'),
(152, 'INV-0000026', 71, 2, 8, '2026-01-15 18:52:09', NULL, 'cash', 6908.00, 0.00, 0.00, 0.00, 0.00, 6908.00, 0.00, 6908.00, 4000.00, 2908.00, 0.00, NULL, NULL, '2026-01-15 18:52:09', '2026-01-15 18:52:09'),
(153, 'INV-0000027', 72, 2, 8, '2026-01-15 18:54:26', NULL, 'cash', 7225.00, 0.00, 0.00, 0.00, 0.00, 7225.00, 0.00, 7225.00, 5000.00, 2225.00, 0.00, NULL, NULL, '2026-01-15 18:54:26', '2026-01-15 18:54:26'),
(154, 'INV-0000028', 73, 2, 8, '2026-01-15 18:56:32', NULL, 'credit', 563.20, 0.00, 0.00, 0.00, 0.00, 563.20, 0.00, 563.20, 0.00, 563.20, 0.00, NULL, NULL, '2026-01-15 18:56:32', '2026-01-15 18:56:32'),
(155, 'OPB-00074', 74, 2, NULL, '2026-01-15 19:00:34', NULL, 'credit', 157477.00, 0.00, 0.00, 0.00, 0.00, 157477.00, 0.00, 157477.00, 0.00, -157477.00, 0.00, 'Opening Balance', NULL, '2026-01-15 19:00:34', '2026-01-15 19:00:34'),
(156, 'INV-0000029', 74, 2, 8, '2026-01-15 19:03:32', NULL, 'cash', 90948.00, 0.00, 0.00, 0.00, 0.00, 90948.00, 157477.00, 90948.00, 4500.00, 243925.00, 0.00, NULL, NULL, '2026-01-15 19:03:32', '2026-01-15 19:03:32'),
(159, 'INV-0000030', 39, 2, 11, '2026-01-17 12:52:51', NULL, 'credit', 6400.00, 0.00, 0.00, 0.00, 0.00, 6400.00, 329616.00, 336016.00, 0.00, 336016.00, 0.00, NULL, NULL, '2026-01-17 12:52:51', '2026-01-17 12:52:51'),
(160, 'INV-0000031', 75, 2, 11, '2026-01-17 16:30:36', NULL, 'bank', 10000.00, 0.00, 0.00, 0.00, 0.00, 10000.00, 0.00, 10000.00, 10000.00, 0.00, 0.00, NULL, 'Jazz Cash', '2026-01-17 16:30:36', '2026-01-17 16:30:36'),
(161, 'INV-0000032', 76, 2, 11, '2026-01-17 16:37:46', NULL, 'cash', 6765.00, 0.00, 0.00, 0.00, 0.00, 6765.00, 0.00, 6765.00, 6765.00, 0.00, 0.00, NULL, NULL, '2026-01-17 16:37:46', '2026-01-17 16:37:46'),
(162, 'INV-0000033', NULL, 2, 11, '2026-01-17 16:41:57', NULL, 'credit', 361.20, 0.00, 0.00, 0.00, 0.00, 361.20, 0.00, 361.20, 0.00, 361.20, 0.00, NULL, NULL, '2026-01-17 16:41:57', '2026-01-17 16:41:57'),
(163, 'INV-0000034', 78, 2, 11, '2026-01-17 16:50:43', NULL, 'bank', 3300.00, 0.00, 0.00, 0.00, 0.00, 3300.00, 0.00, 3300.00, 3300.00, 0.00, 0.00, NULL, 'Jazz Cash (Faisal Nadeem)', '2026-01-17 16:50:43', '2026-01-17 16:50:43'),
(164, 'INV-0000035', 79, 2, 11, '2026-01-17 16:52:24', NULL, 'cash', 900.00, 0.00, 0.00, 0.00, 0.00, 900.00, 0.00, 900.00, 900.00, 0.00, 0.00, NULL, NULL, '2026-01-17 16:52:24', '2026-01-17 16:52:24'),
(165, 'INV-0000036', 80, 2, 11, '2026-01-17 17:36:03', NULL, 'credit', 3704.00, 0.00, 0.00, 0.00, 0.00, 3704.00, 0.00, 3704.00, 0.00, 3704.00, 0.00, NULL, NULL, '2026-01-17 17:36:03', '2026-01-17 17:36:03'),
(166, 'INV-0000037', 81, 2, 11, '2026-01-17 17:57:38', NULL, 'bank', 4500.00, 0.00, 0.00, 0.00, 0.00, 4500.00, 0.00, 4500.00, 4500.00, 0.00, 0.00, NULL, 'Jazz Cash (faisal nadeem)', '2026-01-17 17:57:38', '2026-01-18 11:42:23'),
(167, 'INV-0000038', 50, 2, 11, '2026-01-17 18:03:09', NULL, 'credit', 18397.50, 0.00, 0.00, 0.00, 0.00, 18397.50, 0.00, 18397.50, 0.00, 18397.50, 0.00, NULL, NULL, '2026-01-17 18:03:09', '2026-01-17 18:03:09'),
(168, 'INV-0000039', 70, 2, 11, '2026-01-17 18:06:56', NULL, 'credit', 2766.50, 0.00, 0.00, 0.00, 0.00, 2766.50, 39851.60, 42618.10, 0.00, 42618.10, 0.00, NULL, NULL, '2026-01-17 18:06:56', '2026-01-17 18:06:56'),
(169, 'INV-0000040', 62, 2, 11, '2026-01-17 18:09:53', NULL, 'bank', 3726.00, 8.00, 0.00, 0.00, 0.00, 3718.00, 2182.00, 3718.00, 5900.00, 2182.00, 0.00, NULL, NULL, '2026-01-17 18:09:53', '2026-01-20 12:13:19'),
(170, 'INV-0000041', 59, 2, 12, '2026-01-17 18:20:13', NULL, 'credit', 3256.00, 0.00, 0.00, 0.00, 0.00, 3256.00, 3429.00, 6685.00, 0.00, 6685.00, 0.00, NULL, NULL, '2026-01-17 18:20:13', '2026-01-17 18:20:13'),
(171, 'INV-0000042', 68, 2, 12, '2026-01-17 18:21:23', NULL, 'credit', 690.00, 0.00, 0.00, 0.00, 0.00, 690.00, 8896.10, 9586.10, 0.00, 9586.10, 0.00, NULL, NULL, '2026-01-17 18:21:23', '2026-01-17 18:21:23'),
(173, 'INV-0000044', 49, 2, 12, '2026-01-17 18:28:16', NULL, 'credit', 1012.00, 0.00, 0.00, 0.00, 0.00, 1012.00, 16124.00, 17136.00, 0.00, 17136.00, 0.00, NULL, 'CITIZEN SCHOOL', '2026-01-17 18:28:16', '2026-01-17 18:28:16'),
(174, 'INV-0000045', 82, 2, 12, '2026-01-17 18:53:56', NULL, 'cash', 3539.00, 0.00, 0.00, 0.00, 0.00, 3539.00, 0.00, 3539.00, 0.00, 3539.00, 0.00, NULL, NULL, '2026-01-17 18:53:56', '2026-01-17 18:53:56'),
(175, 'INV-0000046', 39, 2, 13, '2026-01-18 11:12:57', NULL, 'credit', 8000.00, 0.00, 0.00, 0.00, 0.00, 8000.00, 336016.00, 344016.00, 0.00, 344016.00, 0.00, NULL, NULL, '2026-01-18 11:12:57', '2026-01-18 11:12:57'),
(176, 'INV-0000047', 83, 2, 13, '2026-01-18 13:10:37', NULL, 'cash', 810.00, 10.00, 0.00, 0.00, 0.00, 800.00, 0.00, 800.00, 800.00, 0.00, 0.00, NULL, NULL, '2026-01-18 13:10:37', '2026-01-18 13:10:37'),
(177, 'INV-0000048', 84, 2, 13, '2026-01-18 15:17:27', NULL, 'cash', 3150.00, 0.00, 0.00, 0.00, 0.00, 3150.00, 0.00, 3150.00, 3150.00, 0.00, 0.00, NULL, NULL, '2026-01-18 15:17:27', '2026-01-18 18:04:23'),
(179, 'INV-0000049', 86, 2, 13, '2026-01-18 17:27:52', NULL, 'cash', 587.50, 0.00, 0.00, 0.00, 0.00, 587.50, 0.00, 587.50, 590.00, -2.50, 0.00, NULL, NULL, '2026-01-18 17:27:52', '2026-01-18 17:27:52'),
(180, 'INV-0000050', 82, 2, 13, '2026-01-18 18:01:30', NULL, 'cash', 1375.00, 0.00, 0.00, 0.00, 0.00, 1375.00, 3539.00, 1375.00, 2900.00, 2014.00, 0.00, NULL, NULL, '2026-01-18 18:01:30', '2026-01-18 18:01:30'),
(181, 'INV-0000051', 49, 2, 13, '2026-01-18 18:03:13', NULL, 'credit', 736.00, 0.00, 0.00, 0.00, 0.00, 736.00, 17136.00, 17872.00, 0.00, 17872.00, 0.00, NULL, NULL, '2026-01-18 18:03:13', '2026-01-18 18:03:13'),
(182, 'INV-0000052', 87, 2, 13, '2026-01-18 18:08:03', NULL, 'cash', 1650.00, 0.00, 0.00, 0.00, 0.00, 1650.00, 0.00, 1650.00, 1700.00, -50.00, 0.00, NULL, NULL, '2026-01-18 18:08:03', '2026-01-18 18:08:03'),
(183, 'INV-0000053', 88, 2, 13, '2026-01-18 18:10:58', NULL, 'credit', 13050.00, 0.00, 0.00, 0.00, 0.00, 13050.00, 0.00, 13050.00, 0.00, 13050.00, 0.00, NULL, NULL, '2026-01-18 18:10:58', '2026-01-18 18:10:58'),
(184, 'INV-0000054', 89, 2, 13, '2026-01-18 18:12:50', NULL, 'cash', 2205.00, 5.00, 0.00, 0.00, 0.00, 2200.00, 0.00, 2200.00, 2200.00, 0.00, 0.00, NULL, NULL, '2026-01-18 18:12:50', '2026-01-18 18:12:50'),
(185, 'INV-0000055', 60, 2, 13, '2026-01-18 18:13:38', NULL, 'credit', 2310.00, 0.00, 0.00, 0.00, 0.00, 2310.00, 10584.00, 12894.00, 0.00, 12894.00, 0.00, NULL, NULL, '2026-01-18 18:13:38', '2026-01-18 18:13:38'),
(186, 'INV-0000056', 59, 2, 13, '2026-01-18 18:15:40', NULL, 'credit', 3608.00, 0.00, 0.00, 0.00, 0.00, 3608.00, 6685.00, 10293.00, 0.00, 10293.00, 0.00, NULL, NULL, '2026-01-18 18:15:40', '2026-01-18 18:15:40'),
(187, 'INV-0000057', 90, 2, 13, '2026-01-18 18:16:56', NULL, 'credit', 1350.00, 0.00, 0.00, 0.00, 0.00, 1350.00, 0.00, 1350.00, 0.00, 1350.00, 0.00, NULL, NULL, '2026-01-18 18:16:56', '2026-01-18 18:16:56'),
(188, 'INV-0000058', 53, 2, 13, '2026-01-18 18:17:21', NULL, 'credit', 132.00, 0.00, 0.00, 0.00, 0.00, 132.00, 6347.00, 6479.00, 0.00, 6479.00, 0.00, NULL, NULL, '2026-01-18 18:17:21', '2026-01-18 18:17:21'),
(189, 'INV-0000059', 68, 2, 13, '2026-01-18 18:18:57', NULL, 'credit', 1173.00, 0.00, 0.00, 0.00, 0.00, 1173.00, 4586.10, 5759.10, 0.00, 5759.10, 0.00, NULL, NULL, '2026-01-18 18:18:57', '2026-01-18 18:18:57'),
(190, 'INV-0000060', 91, 2, 13, '2026-01-18 18:23:32', NULL, 'cash', 66173.00, 0.00, 0.00, 0.00, 0.00, 66173.00, 0.00, 66173.00, 43500.00, 22673.00, 0.00, NULL, '2500+12000+10000+10000+4000+5000', '2026-01-18 18:23:32', '2026-01-20 16:34:33'),
(191, 'INV-0000061', 92, 2, 13, '2026-01-18 18:26:51', NULL, 'credit', 4620.00, 0.00, 0.00, 0.00, 0.00, 4620.00, 0.00, 4620.00, 0.00, 4620.00, 0.00, NULL, NULL, '2026-01-18 18:26:51', '2026-01-18 18:26:51'),
(192, 'INV-0000062', 50, 2, 13, '2026-01-18 18:28:25', NULL, 'credit', 15840.00, 0.00, 0.00, 0.00, 0.00, 15840.00, 18397.50, 34237.50, 0.00, 34237.50, 0.00, NULL, NULL, '2026-01-18 18:28:25', '2026-01-18 18:28:25'),
(193, 'INV-0000063', 49, 2, 14, '2026-01-19 12:59:29', NULL, 'credit', 17859.50, 0.00, 0.00, 0.00, 0.00, 17859.50, 17872.00, 35731.50, 0.00, 35731.50, 0.00, NULL, NULL, '2026-01-19 12:59:29', '2026-01-19 12:59:29'),
(195, 'INV-0000064', 93, 2, 14, '2026-01-19 17:49:57', NULL, 'cash', 300.00, 0.00, 0.00, 0.00, 0.00, 300.00, 0.00, 300.00, 300.00, 0.00, 0.00, NULL, NULL, '2026-01-19 17:49:57', '2026-01-19 17:49:57'),
(196, 'INV-0000065', 94, 2, 14, '2026-01-19 18:01:47', NULL, 'credit', 300.00, 0.00, 0.00, 0.00, 0.00, 300.00, 0.00, 300.00, 0.00, 300.00, 0.00, NULL, NULL, '2026-01-19 18:01:47', '2026-01-19 18:01:47'),
(197, 'INV-0000066', 82, 2, 14, '2026-01-19 18:02:34', NULL, 'credit', 66.00, 0.00, 0.00, 0.00, 0.00, 66.00, 2014.00, 3605.00, 0.00, 2080.00, 0.00, NULL, NULL, '2026-01-19 18:02:34', '2026-02-12 16:41:09'),
(198, 'INV-0000067', 72, 2, 14, '2026-01-19 18:16:27', NULL, 'cash', 1840.00, 0.00, 0.00, 0.00, 0.00, 1840.00, 2225.00, 1840.00, 2225.00, 2225.00, 0.00, NULL, NULL, '2026-01-19 18:16:27', '2026-01-19 18:49:13'),
(199, 'INV-0000068', 73, 2, 14, '2026-01-19 18:18:19', NULL, 'credit', 1452.00, 0.00, 0.00, 0.00, 0.00, 1452.00, 3.20, 1455.20, 0.00, 1455.20, 0.00, NULL, NULL, '2026-01-19 18:18:19', '2026-01-19 18:18:19'),
(200, 'INV-0000069', 59, 2, 14, '2026-01-19 18:19:46', NULL, 'credit', 616.00, 0.00, 0.00, 0.00, 0.00, 616.00, 10293.00, 10909.00, 0.00, 10909.00, 0.00, NULL, NULL, '2026-01-19 18:19:46', '2026-01-19 18:19:46'),
(201, 'INV-0000070', 95, 2, 14, '2026-01-19 18:21:40', NULL, 'cash', 500.00, 0.00, 0.00, 0.00, 0.00, 500.00, -512.50, 500.00, 500.00, -512.50, 0.00, NULL, NULL, '2026-01-19 18:21:40', '2026-01-20 17:22:21'),
(202, 'INV-0000071', 68, 2, 14, '2026-01-19 18:22:46', NULL, 'credit', 184.00, 0.00, 0.00, 0.00, 0.00, 184.00, 5759.10, 5943.10, 0.00, 5943.10, 0.00, NULL, NULL, '2026-01-19 18:22:46', '2026-01-19 18:22:46'),
(203, 'INV-0000072', NULL, 2, 14, '2026-01-19 18:25:47', NULL, 'cash', 10419.00, 0.00, 0.00, 0.00, 0.00, 10419.00, 39262.00, 10419.00, 25000.00, 39262.00, 0.00, NULL, NULL, '2026-01-19 18:25:47', '2026-01-19 18:29:10'),
(204, 'INV-0000073', 76, 2, 14, '2026-01-19 18:30:59', NULL, 'bank', 1320.00, 0.00, 0.00, 0.00, 0.00, 1320.00, 0.00, 1320.00, 1320.00, 0.00, 0.00, NULL, NULL, '2026-01-19 18:30:59', '2026-01-19 18:30:59'),
(205, 'INV-0000074', 50, 2, 14, '2026-01-19 18:33:35', NULL, 'credit', 8870.00, 0.00, 0.00, 0.00, 0.00, 8870.00, 34237.50, 43107.50, 0.00, 43107.50, 0.00, NULL, NULL, '2026-01-19 18:33:35', '2026-01-19 18:33:35'),
(206, 'INV-0000075', 96, 2, 16, '2026-01-20 10:51:09', NULL, 'cash', 960.00, 60.00, 0.00, 0.00, 0.00, 900.00, 0.00, 900.00, 900.00, 0.00, 0.00, NULL, NULL, '2026-01-20 10:51:09', '2026-01-21 18:04:42'),
(207, 'INV-0000076', 39, 2, 16, '2026-01-20 10:53:11', NULL, 'bank', 4000.00, 0.00, 0.00, 0.00, 0.00, 4000.00, 311645.00, 4000.00, 4000.00, 311645.00, 0.00, NULL, NULL, '2026-01-20 10:53:11', '2026-01-20 10:53:11'),
(208, 'INV-0000077', 97, 2, 16, '2026-01-20 13:24:50', NULL, 'cash', 300.00, 0.00, 0.00, 0.00, 0.00, 300.00, 0.00, 300.00, 300.00, 0.00, 0.00, NULL, NULL, '2026-01-20 13:24:50', '2026-01-20 13:24:50'),
(209, 'INV-0000078', 73, 2, 16, '2026-01-20 13:50:15', NULL, 'cash', 11176.00, 0.00, 0.00, 0.00, 0.00, 11176.00, -4544.80, 6631.20, 6000.00, 631.20, 0.00, NULL, NULL, '2026-01-20 13:50:15', '2026-02-03 15:11:42'),
(210, 'INV-0000079', 98, 2, 16, '2026-01-20 15:50:14', NULL, 'cash', 450.00, 0.00, 0.00, 0.00, 0.00, 450.00, 0.00, 450.00, 450.00, 0.00, 0.00, NULL, NULL, '2026-01-20 15:50:14', '2026-01-20 15:50:14'),
(211, 'INV-0000080', 49, 2, 16, '2026-01-20 15:51:29', NULL, 'credit', 1058.00, 0.00, 0.00, 0.00, 0.00, 1058.00, 35731.50, 36789.50, 0.00, 36789.50, 0.00, NULL, NULL, '2026-01-20 15:51:29', '2026-01-20 15:51:29'),
(212, 'INV-0000081', 61, 2, 16, '2026-01-20 15:54:10', NULL, 'cash', 920.00, 0.00, 0.00, 0.00, 0.00, 920.00, 425.20, 920.00, 0.00, 1345.20, 0.00, NULL, NULL, '2026-01-20 15:54:10', '2026-01-20 15:54:10'),
(213, 'INV-0000082', 68, 2, 16, '2026-01-20 15:56:21', NULL, 'cash', 2801.40, 0.00, 0.00, 0.00, 0.00, 2801.40, 5943.10, 2801.40, 2000.00, 6744.50, 0.00, NULL, NULL, '2026-01-20 15:56:21', '2026-01-20 16:27:07'),
(214, 'INV-0000083', 99, 2, 16, '2026-01-20 16:00:01', NULL, 'cash', 17500.00, 0.00, 0.00, 0.00, 0.00, 17500.00, 0.00, 17500.00, 17500.00, 0.00, 0.00, NULL, NULL, '2026-01-20 16:00:01', '2026-01-22 16:54:50'),
(215, 'INV-0000084', 100, 2, 16, '2026-01-20 16:03:41', NULL, 'credit', 8806.00, 0.00, 0.00, 0.00, 0.00, 8806.00, 0.00, 8806.00, 0.00, 8806.00, 0.00, NULL, NULL, '2026-01-20 16:03:41', '2026-01-20 16:03:41'),
(216, 'INV-0000085', 50, 2, 16, '2026-01-20 16:06:40', NULL, 'credit', 6840.00, 0.00, 0.00, 0.00, 0.00, 6840.00, 0.00, 6840.00, 0.00, 6840.00, 0.00, NULL, NULL, '2026-01-20 16:06:40', '2026-01-20 17:33:23'),
(217, 'INV-0000086', 101, 2, 16, '2026-01-20 17:21:28', NULL, 'cash', 1200.00, 0.00, 0.00, 0.00, 0.00, 1200.00, 0.00, 1200.00, 1200.00, 0.00, 0.00, NULL, NULL, '2026-01-20 17:21:28', '2026-01-20 17:21:28'),
(218, 'INV-0000087', 102, 2, 16, '2026-01-20 17:48:12', NULL, 'cash', 525.00, 25.00, 0.00, 0.00, 0.00, 500.00, 0.00, 500.00, 500.00, 0.00, 0.00, NULL, NULL, '2026-01-20 17:48:12', '2026-01-21 18:02:09'),
(219, 'INV-0000088', 103, 2, 16, '2026-01-20 17:55:46', NULL, 'cash', 350.00, 0.00, 0.00, 0.00, 0.00, 350.00, -350.00, 350.00, 350.00, -350.00, 0.00, NULL, NULL, '2026-01-20 17:55:46', '2026-01-21 15:38:07'),
(220, 'INV-0000089', 39, 2, 17, '2026-01-21 11:13:36', NULL, 'bank', 3000.00, 0.00, 0.00, 0.00, 0.00, 3000.00, 311645.00, 3000.00, 3000.00, 311645.00, 0.00, NULL, 'meezan bank (zohaib siddique)', '2026-01-21 11:13:36', '2026-01-21 11:18:18'),
(221, 'INV-0000090', 104, 2, 17, '2026-01-21 15:21:19', NULL, 'cash', 540.00, 40.00, 0.00, 0.00, 0.00, 500.00, 0.00, 500.00, 500.00, 0.00, 0.00, NULL, NULL, '2026-01-21 15:21:19', '2026-01-21 15:34:09'),
(222, 'INV-0000091', 68, 2, 17, '2026-01-21 15:36:25', NULL, 'credit', 1035.00, 0.00, 0.00, 0.00, 0.00, 1035.00, 6744.50, 1035.00, 0.00, 6279.50, 0.00, NULL, 'Jazz cash (Faisal Nadeem)', '2026-01-21 15:36:25', '2026-02-08 07:34:39'),
(223, 'INV-0000092', 105, 2, 17, '2026-01-21 16:54:41', NULL, 'cash', 200.03, 0.03, 0.00, 0.00, 0.00, 200.00, 0.00, 200.00, 200.00, 0.00, 0.00, NULL, NULL, '2026-01-21 16:54:41', '2026-01-21 16:54:41'),
(224, 'INV-0000093', 106, 2, 17, '2026-01-21 16:55:13', NULL, 'bank', 375.00, 5.00, 0.00, 0.00, 0.00, 370.00, 0.00, 370.00, 370.00, 0.00, 0.00, NULL, 'Jazzcash (faisal nadeem)', '2026-01-21 16:55:13', '2026-01-22 17:22:33'),
(225, 'INV-0000094', 107, 2, 17, '2026-01-21 16:57:08', NULL, 'cash', 426.00, 0.00, 0.00, 0.00, 0.00, 426.00, 0.00, 426.00, 200.00, 226.00, 0.00, NULL, NULL, '2026-01-21 16:57:08', '2026-01-21 16:57:08'),
(226, 'INV-0000095', 80, 2, 17, '2026-01-21 18:01:45', NULL, 'credit', 644.00, 0.00, 0.00, 0.00, 0.00, 644.00, 2004.00, 2648.00, 0.00, 2648.00, 0.00, NULL, NULL, '2026-01-21 18:01:45', '2026-01-21 18:01:45'),
(227, 'INV-0000096', 82, 2, 17, '2026-01-21 18:06:11', NULL, 'credit', 594.00, 0.00, 0.00, 0.00, 0.00, 594.00, 2080.00, 4199.00, 0.00, 2674.00, 0.00, NULL, NULL, '2026-01-21 18:06:11', '2026-02-12 16:41:09'),
(228, 'INV-0000097', 60, 2, 17, '2026-01-21 18:16:36', NULL, 'credit', 4675.00, 0.00, 0.00, 0.00, 0.00, 4675.00, 8894.00, 13569.00, 0.00, 13569.00, 0.00, NULL, NULL, '2026-01-21 18:16:36', '2026-01-21 18:16:36'),
(229, 'INV-0000098', 59, 2, 17, '2026-01-21 18:18:29', NULL, 'credit', 4529.80, 0.00, 0.00, 0.00, 0.00, 4529.80, 10909.00, 15438.80, 0.00, 15438.80, 0.00, NULL, NULL, '2026-01-21 18:18:29', '2026-01-21 18:18:29'),
(230, 'INV-0000099', 108, 2, 17, '2026-01-21 18:20:06', NULL, 'credit', 1408.00, 0.00, 0.00, 0.00, 0.00, 1408.00, 0.00, 1408.00, 0.00, 1408.00, 0.00, NULL, NULL, '2026-01-21 18:20:06', '2026-01-21 18:20:06'),
(231, 'INV-0000100', 70, 2, 17, '2026-01-21 18:21:46', NULL, 'credit', 4848.50, 0.00, 0.00, 0.00, 0.00, 4848.50, 42618.10, 47466.60, 0.00, 47466.60, 0.00, NULL, NULL, '2026-01-21 18:21:46', '2026-01-21 18:21:46'),
(232, 'INV-0000101', 78, 2, 17, '2026-01-21 18:22:39', NULL, 'cash', 1650.00, 150.00, 0.00, 0.00, 0.00, 1500.00, 0.00, 1500.00, 1500.00, 0.00, 0.00, NULL, NULL, '2026-01-21 18:22:39', '2026-01-22 13:59:07'),
(233, 'INV-0000102', 91, 2, 17, '2026-01-21 18:23:57', NULL, 'credit', 690.00, 0.00, 0.00, 0.00, 0.00, 690.00, 22673.00, 23363.00, 0.00, 23363.00, 0.00, NULL, NULL, '2026-01-21 18:23:57', '2026-01-21 18:23:57'),
(234, 'INV-0000103', 50, 2, 17, '2026-01-21 18:26:31', NULL, 'credit', 6153.00, 0.00, 0.00, 0.00, 0.00, 6153.00, 0.00, 6153.00, 0.00, 6153.00, 0.00, NULL, NULL, '2026-01-21 18:26:31', '2026-01-21 18:26:31'),
(235, 'INV-0000104', NULL, 2, 17, '2026-01-21 18:27:14', NULL, 'credit', 1008.00, 0.00, 0.00, 0.00, 0.00, 1008.00, 361.20, 1369.20, 0.00, 1369.20, 0.00, NULL, NULL, '2026-01-21 18:27:14', '2026-01-21 18:27:14'),
(236, 'INV-0000105', 109, 2, 18, '2026-01-22 11:48:40', NULL, 'credit', 7650.00, 0.00, 0.00, 0.00, 0.00, 7650.00, 0.00, 7650.00, 0.00, 7650.00, 0.00, NULL, NULL, '2026-01-22 11:48:40', '2026-01-22 11:48:40'),
(237, 'INV-0000106', 110, 2, 18, '2026-01-22 12:01:16', NULL, 'bank', 2700.00, 0.00, 0.00, 0.00, 0.00, 2700.00, 0.00, 2700.00, 2700.00, 0.00, 0.00, NULL, 'Jazzcash (faisal nadeem)', '2026-01-22 12:01:16', '2026-01-22 12:01:16'),
(238, 'INV-0000107', 111, 2, 18, '2026-01-22 12:44:24', NULL, 'credit', 94650.00, 0.00, 0.00, 0.00, 0.00, 94650.00, 0.00, 94650.00, 0.00, 94650.00, 0.00, NULL, NULL, '2026-01-22 12:44:24', '2026-01-22 12:44:24'),
(239, 'INV-0000108', 112, 2, 18, '2026-01-22 15:29:42', NULL, 'cash', 720.00, 70.00, 0.00, 0.00, 0.00, 650.00, 0.00, 650.00, 650.00, 0.00, 0.00, NULL, NULL, '2026-01-22 15:29:42', '2026-01-22 15:29:42'),
(240, 'INV-0000109', 113, 2, 18, '2026-01-22 16:08:59', NULL, 'bank', 450.00, 0.00, 0.00, 0.00, 0.00, 450.00, 0.00, 450.00, 450.00, 0.00, 0.00, NULL, 'Jazzcash (faisal nadeem)', '2026-01-22 16:08:59', '2026-01-22 16:09:26'),
(241, 'INV-0000110', 114, 2, 18, '2026-01-22 17:00:23', NULL, 'credit', 14168.00, 0.00, 0.00, 0.00, 0.00, 14168.00, 0.00, 14168.00, 0.00, 14168.00, 0.00, NULL, NULL, '2026-01-22 17:00:23', '2026-01-22 17:00:23'),
(242, 'INV-0000111', 59, 2, 18, '2026-01-22 17:26:45', NULL, 'cash', 2574.00, 0.00, 0.00, 0.00, 0.00, 2574.00, 5438.80, 8012.80, 0.00, -1987.20, 0.00, NULL, NULL, '2026-01-22 17:26:45', '2026-02-03 15:02:29'),
(243, 'INV-0000112', 115, 2, 18, '2026-01-22 17:43:20', NULL, 'cash', 750.00, 0.00, 0.00, 0.00, 0.00, 750.00, 0.00, 750.00, 750.00, 0.00, 0.00, NULL, NULL, '2026-01-22 17:43:20', '2026-01-22 17:43:20'),
(244, 'INV-0000113', 82, 2, 18, '2026-01-22 17:43:58', NULL, 'credit', 1430.00, 0.00, 0.00, 0.00, 0.00, 1430.00, 2674.00, 5629.00, 0.00, 4104.00, 0.00, NULL, NULL, '2026-01-22 17:43:58', '2026-02-12 16:41:09'),
(245, 'INV-0000114', 73, 2, 18, '2026-01-22 17:44:44', NULL, 'credit', 462.00, 0.00, 0.00, 0.00, 0.00, 462.00, 1.20, 463.20, 0.00, 463.20, 0.00, NULL, NULL, '2026-01-22 17:44:44', '2026-01-22 17:44:44'),
(246, 'INV-0000115', 60, 2, 18, '2026-01-22 17:46:08', NULL, 'credit', 2533.00, 0.00, 0.00, 0.00, 0.00, 2533.00, 8569.00, 11102.00, 0.00, 11102.00, 0.00, NULL, NULL, '2026-01-22 17:46:08', '2026-01-22 17:46:08'),
(247, 'INV-0000116', 116, 2, 18, '2026-01-22 17:47:02', NULL, 'credit', 600.00, 0.00, 0.00, 0.00, 0.00, 600.00, 0.00, 600.00, 0.00, 600.00, 0.00, NULL, NULL, '2026-01-22 17:47:02', '2026-01-22 17:47:02'),
(248, 'INV-0000117', 68, 2, 18, '2026-01-22 17:48:26', NULL, 'credit', 432.40, 0.00, 0.00, 0.00, 0.00, 432.40, 6744.50, 7176.90, 0.00, 7176.90, 0.00, NULL, NULL, '2026-01-22 17:48:26', '2026-01-22 17:48:26'),
(249, 'INV-0000118', 91, 2, 18, '2026-01-22 17:50:00', NULL, 'credit', 736.00, 0.00, 0.00, 0.00, 0.00, 736.00, 23363.00, 24099.00, 0.00, 24099.00, 0.00, NULL, NULL, '2026-01-22 17:50:00', '2026-01-22 17:50:00'),
(250, 'INV-0000119', 117, 2, 18, '2026-01-22 17:51:02', NULL, 'credit', 375.00, 0.00, 0.00, 0.00, 0.00, 375.00, 0.00, 375.00, 0.00, 375.00, 0.00, NULL, NULL, '2026-01-22 17:51:02', '2026-01-22 17:51:02'),
(251, 'INV-0000120', 50, 2, 18, '2026-01-22 17:55:37', NULL, 'credit', 12293.60, 0.00, 0.00, 0.00, 0.00, 12293.60, 0.00, 12293.60, 0.00, 12293.60, 0.00, NULL, NULL, '2026-01-22 17:55:37', '2026-01-22 17:55:37'),
(252, 'INV-0000121', 81, 2, 18, '2026-01-22 17:56:41', NULL, 'credit', 800.00, 0.00, 0.00, 0.00, 0.00, 800.00, 0.00, 800.00, 0.00, 800.00, 0.00, NULL, NULL, '2026-01-22 17:56:41', '2026-01-22 17:56:41'),
(253, 'INV-0000122', 118, 2, 18, '2026-01-22 18:19:41', NULL, 'credit', 61232.00, 0.00, 0.00, 0.00, 0.00, 61232.00, 0.00, 61232.00, 0.00, 61232.00, 0.00, NULL, NULL, '2026-01-22 18:19:41', '2026-01-22 18:35:39'),
(259, 'INV-0000123', 71, 2, 21, '2026-01-24 12:06:14', '2026-01-24', 'credit', 19756.00, 0.00, 0.00, 0.00, 0.00, 19756.00, 2908.00, 22664.00, 0.00, 22664.00, 0.00, NULL, NULL, '2026-01-24 12:06:14', '2026-01-24 12:06:14'),
(261, 'INV-0000124', 62, 2, 21, '2026-01-24 14:35:21', '2026-01-24', 'credit', 2001.00, 0.00, 0.00, 0.00, 0.00, 2001.00, 0.00, 2001.00, 0.00, 2001.00, 0.00, NULL, NULL, '2026-01-24 14:35:21', '2026-01-24 14:35:21'),
(262, 'INV-0000125', 119, 2, 21, '2026-01-24 18:11:54', '2026-01-24', 'cash', 1800.00, 0.00, 0.00, 0.00, 0.00, 1800.00, 0.00, 1800.00, 1800.00, 0.00, 0.00, NULL, NULL, '2026-01-24 18:11:54', '2026-01-24 18:11:54'),
(263, 'INV-0000126', 120, 2, 21, '2026-01-24 18:12:36', '2026-01-24', 'cash', 750.00, 50.00, 0.00, 0.00, 0.00, 700.00, 0.00, 700.00, 700.00, 0.00, 0.00, NULL, NULL, '2026-01-24 18:12:36', '2026-01-24 18:12:36'),
(264, 'INV-0000127', 73, 2, 21, '2026-01-24 18:13:18', '2026-01-24', 'credit', 792.00, 0.00, 0.00, 0.00, 0.00, 792.00, 463.20, 1255.20, 0.00, 1255.20, 0.00, NULL, NULL, '2026-01-24 18:13:18', '2026-01-24 18:13:18'),
(265, 'INV-0000128', 121, 2, 21, '2026-01-24 18:17:51', '2026-01-24', 'credit', 3238.00, 0.00, 0.00, 0.00, 0.00, 3238.00, 0.00, 3238.00, 0.00, 3238.00, 0.00, NULL, NULL, '2026-01-24 18:17:51', '2026-01-24 18:17:51'),
(266, 'INV-0000129', 61, 2, 21, '2026-01-24 18:19:19', '2026-01-24', 'credit', 46.00, 0.00, 0.00, 0.00, 0.00, 46.00, 1345.20, 1391.20, 0.00, 1391.20, 0.00, NULL, NULL, '2026-01-24 18:19:19', '2026-01-24 18:19:19'),
(267, 'OPB-00122', 122, 2, NULL, '2026-01-24 18:24:48', NULL, 'credit', 24681.00, 0.00, 0.00, 0.00, 0.00, 24681.00, 0.00, 24681.00, 0.00, -24681.00, 0.00, 'Opening Balance', NULL, '2026-01-24 18:24:48', '2026-01-24 18:24:48'),
(269, 'INV-0000130', 60, 2, 21, '2026-01-24 18:36:24', '2026-01-24', 'credit', 1056.00, 0.00, 0.00, 0.00, 0.00, 1056.00, 11102.00, 12158.00, 0.00, 12158.00, 0.00, NULL, NULL, '2026-01-24 18:36:24', '2026-01-24 18:36:24'),
(270, 'INV-0000131', 68, 2, 21, '2026-01-24 18:37:23', '2026-01-24', 'credit', 1276.50, 0.00, 0.00, 0.00, 0.00, 1276.50, 7176.90, 8453.40, 0.00, 8453.40, 0.00, NULL, NULL, '2026-01-24 18:37:23', '2026-01-24 18:37:23'),
(271, 'INV-0000132', 70, 2, 21, '2026-01-24 18:39:00', '2026-01-24', 'credit', 4488.00, 0.00, 0.00, 0.00, 0.00, 4488.00, 37466.60, 41954.60, 0.00, 41954.60, 0.00, NULL, NULL, '2026-01-24 18:39:00', '2026-01-24 18:39:00'),
(272, 'INV-0000133', NULL, 2, 21, '2026-01-24 18:40:05', '2026-01-24', 'cash', 396.00, 0.00, 0.00, 0.00, 0.00, 396.00, 0.00, 396.00, 396.00, 0.00, 0.00, NULL, NULL, '2026-01-24 18:40:05', '2026-01-24 19:08:21'),
(274, 'INV-0000135', 50, 2, 21, '2026-01-24 18:42:31', '2026-01-24', 'credit', 3724.00, 0.00, 0.00, 0.00, 0.00, 3724.00, 0.00, 3724.00, 0.00, 3724.00, 0.00, NULL, NULL, '2026-01-24 18:42:31', '2026-01-24 18:42:31'),
(275, 'INV-0000136', 68, 2, 23, '2026-01-25 16:25:52', '2026-01-25', 'cash', 4462.00, 0.00, 0.00, 0.00, 0.00, 4462.00, 8453.40, 4462.00, 3000.00, 9915.40, 0.00, NULL, NULL, '2026-01-25 16:25:52', '2026-01-25 16:25:52'),
(276, 'INV-0000137', 62, 2, 23, '2026-01-25 16:26:48', '2026-01-25', 'credit', 552.00, 0.00, 0.00, 0.00, 0.00, 552.00, 2001.00, 2553.00, 0.00, 2553.00, 0.00, NULL, NULL, '2026-01-25 16:26:48', '2026-01-25 16:26:48'),
(277, 'INV-0000138', 53, 2, 23, '2026-01-25 16:27:50', '2026-01-25', 'credit', 1152.80, 0.00, 0.00, 0.00, 0.00, 1152.80, 6479.00, 7631.80, 0.00, 7631.80, 0.00, NULL, NULL, '2026-01-25 16:27:50', '2026-01-25 16:27:50'),
(278, 'INV-0000139', 122, 2, 23, '2026-01-25 16:29:44', '2026-01-25', 'credit', 19619.00, 0.00, 0.00, 0.00, 0.00, 19619.00, 4681.00, 24300.00, 0.00, 24300.00, 0.00, NULL, NULL, '2026-01-25 16:29:44', '2026-01-25 16:29:44'),
(279, 'INV-0000140', 50, 2, 23, '2026-01-25 16:32:47', '2026-01-25', 'cash', 10264.00, 0.00, 0.00, 0.00, 0.00, 10264.00, 3724.00, 10264.00, 3724.00, 10264.00, 0.00, NULL, NULL, '2026-01-25 16:32:47', '2026-01-25 18:34:46'),
(280, 'INV-0000141', 124, 2, 23, '2026-01-25 17:12:02', '2026-01-25', 'credit', 4000.00, 0.00, 0.00, 0.00, 0.00, 4000.00, 0.00, 4000.00, 0.00, 4000.00, 0.00, NULL, NULL, '2026-01-25 17:12:02', '2026-01-25 17:12:02'),
(281, 'INV-0000142', 36, 2, 23, '2026-01-25 17:12:25', '2026-01-25', 'credit', 4000.00, 0.00, 0.00, 0.00, 0.00, 4000.00, 0.00, 4000.00, 0.00, 4000.00, 0.00, NULL, NULL, '2026-01-25 17:12:25', '2026-01-25 17:12:25'),
(282, 'INV-0000143', 59, 2, 23, '2026-01-25 17:15:16', '2026-01-25', 'credit', 3157.00, 0.00, 0.00, 0.00, 0.00, 3157.00, 8012.80, 11169.80, 0.00, 11169.80, 0.00, NULL, NULL, '2026-01-25 17:15:16', '2026-02-03 14:43:32'),
(283, 'INV-0000144', 60, 2, 23, '2026-01-25 17:17:05', '2026-01-25', 'credit', 2941.40, 0.00, 0.00, 0.00, 0.00, 2941.40, 12158.00, 15099.40, 0.00, 15099.40, 0.00, NULL, NULL, '2026-01-25 17:17:05', '2026-01-25 17:17:05'),
(284, 'INV-0000145', 102, 2, 23, '2026-01-25 17:18:21', '2026-01-25', 'credit', 180.00, 0.00, 0.00, 0.00, 0.00, 180.00, 0.00, 180.00, 0.00, 180.00, 0.00, NULL, NULL, '2026-01-25 17:18:21', '2026-01-25 17:18:21'),
(285, 'INV-0000146', 97, 2, 23, '2026-01-25 18:31:48', '2026-01-25', 'credit', 975.00, 0.00, 0.00, 0.00, 0.00, 975.00, 0.00, 975.00, 0.00, 975.00, 0.00, NULL, NULL, '2026-01-25 18:31:48', '2026-01-25 18:31:48'),
(286, 'INV-0000147', 82, 2, 23, '2026-01-25 18:33:11', '2026-01-25', 'cash', 462.00, 0.00, 0.00, 0.00, 0.00, 462.00, 4104.00, 462.00, 5629.00, -1063.00, 0.00, NULL, NULL, '2026-01-25 18:33:11', '2026-02-12 16:41:09'),
(287, 'INV-0000148', 125, 2, 24, '2026-01-26 17:49:45', '2026-01-26', 'cash', 999.88, 0.00, 0.00, 0.00, 0.00, 999.88, 0.00, 999.88, 1000.00, -0.12, 0.00, NULL, NULL, '2026-01-26 17:49:45', '2026-01-26 17:49:45'),
(288, 'INV-0000149', 126, 2, 24, '2026-01-26 17:50:18', '2026-01-26', 'cash', 1170.00, 0.00, 0.00, 0.00, 0.00, 1170.00, 0.00, 1170.00, 500.00, 670.00, 0.00, NULL, NULL, '2026-01-26 17:50:18', '2026-01-26 17:50:18'),
(289, 'INV-0000150', 127, 2, 24, '2026-01-26 17:51:31', '2026-01-26', 'cash', 200.00, 0.00, 0.00, 0.00, 0.00, 200.00, 0.00, 200.00, 200.00, 0.00, 0.00, NULL, NULL, '2026-01-26 17:51:31', '2026-01-26 17:51:31'),
(290, 'INV-0000151', 99, 2, 24, '2026-01-26 17:54:24', '2026-01-26', 'credit', 5600.00, 0.00, 0.00, 0.00, 0.00, 5600.00, 0.00, 5600.00, 0.00, 5600.00, 0.00, NULL, NULL, '2026-01-26 17:54:24', '2026-01-26 17:54:24'),
(291, 'INV-0000152', 50, 2, 24, '2026-01-26 17:58:43', '2026-01-26', 'cash', 13321.00, 0.00, 0.00, 0.00, 0.00, 13321.00, 10264.00, 13321.00, 10264.00, 13321.00, 0.00, NULL, NULL, '2026-01-26 17:58:43', '2026-01-26 18:02:51'),
(292, 'INV-0000153', 59, 2, 24, '2026-01-26 17:59:41', '2026-01-26', 'credit', 1518.00, 0.00, 0.00, 0.00, 0.00, 1518.00, 1169.80, 2687.80, 0.00, 2687.80, 0.00, NULL, NULL, '2026-01-26 17:59:41', '2026-02-03 14:43:32'),
(293, 'INV-0000154', 80, 2, 24, '2026-01-26 18:34:14', '2026-01-26', 'cash', 1288.00, 0.00, 0.00, 0.00, 0.00, 1288.00, 2004.00, 1288.00, 1500.00, 1792.00, 0.00, NULL, NULL, '2026-01-26 18:34:14', '2026-01-26 18:34:14'),
(294, 'INV-0000155', 102, 2, 24, '2026-01-26 18:37:11', '2026-01-26', 'cash', 1140.00, 0.00, 0.00, 0.00, 0.00, 1140.00, 180.00, 1140.00, 1200.00, 180.00, 0.00, NULL, NULL, '2026-01-26 18:37:11', '2026-01-26 18:41:19'),
(295, 'INV-0000156', 128, 2, 25, '2026-01-27 17:18:34', '2026-01-27', 'cash', 1800.00, 0.00, 0.00, 0.00, 0.00, 1800.00, 0.00, 1800.00, 1800.00, 0.00, 0.00, NULL, NULL, '2026-01-27 17:18:34', '2026-01-27 17:18:34'),
(296, 'INV-0000157', 129, 2, 25, '2026-01-27 17:20:05', '2026-01-27', 'credit', 1325.00, 0.00, 0.00, 0.00, 0.00, 1325.00, 0.00, 1325.00, 0.00, 1325.00, 0.00, NULL, NULL, '2026-01-27 17:20:05', '2026-01-27 17:20:05'),
(297, 'INV-0000158', 71, 2, 25, '2026-01-27 17:22:04', '2026-01-27', 'credit', 2068.00, 0.00, 0.00, 0.00, 0.00, 2068.00, 2664.00, 4732.00, 0.00, 4732.00, 0.00, NULL, NULL, '2026-01-27 17:22:04', '2026-01-27 17:22:04'),
(298, 'INV-0000159', 72, 2, 25, '2026-01-27 17:24:24', '2026-01-27', 'credit', 1012.00, 0.00, 0.00, 0.00, 0.00, 1012.00, 385.00, 1397.00, 0.00, 1397.00, 0.00, NULL, NULL, '2026-01-27 17:24:24', '2026-01-27 17:24:24'),
(299, 'INV-0000160', 73, 2, 25, '2026-01-27 17:26:57', '2026-01-27', 'cash', 7480.00, 0.00, 0.00, 0.00, 0.00, 7480.00, -6744.80, 735.20, 0.00, -7264.80, 0.00, NULL, '3000 jaza cash zuhaib    5000  cash', '2026-01-27 17:26:57', '2026-02-03 15:12:23'),
(301, 'INV-0000162', 119, 2, 25, '2026-01-27 17:34:32', '2026-01-27', 'credit', 1500.00, 0.00, 0.00, 0.00, 0.00, 1500.00, 0.00, 1500.00, 0.00, 1500.00, 0.00, NULL, NULL, '2026-01-27 17:34:32', '2026-01-27 17:34:32'),
(302, 'INV-0000163', 131, 2, 25, '2026-01-27 17:36:16', '2026-01-27', 'credit', 12500.00, 0.00, 0.00, 0.00, 0.00, 12500.00, 0.00, 12500.00, 0.00, 12500.00, 0.00, NULL, NULL, '2026-01-27 17:36:16', '2026-01-27 17:36:16'),
(303, 'INV-0000164', 70, 2, 25, '2026-01-27 17:38:29', '2026-01-27', 'credit', 2750.00, 0.00, 0.00, 0.00, 0.00, 2750.00, 31954.60, 34704.60, 0.00, 34704.60, 0.00, NULL, NULL, '2026-01-27 17:38:29', '2026-01-27 17:38:29'),
(304, 'INV-0000165', 122, 2, 25, '2026-01-27 17:39:44', '2026-01-27', 'credit', 6727.50, 0.00, 0.00, 0.00, 0.00, 6727.50, 24300.00, 31027.50, 0.00, 31027.50, 0.00, NULL, NULL, '2026-01-27 17:39:44', '2026-01-27 17:39:44'),
(305, 'INV-0000166', 50, 2, 25, '2026-01-27 18:06:27', '2026-01-27', 'credit', 44627.00, 0.00, 0.00, 0.00, 0.00, 44627.00, 0.00, 44627.00, 0.00, 44627.00, 0.00, NULL, NULL, '2026-01-27 18:06:27', '2026-01-27 19:17:35'),
(306, 'INV-0000167', 127, 2, 25, '2026-01-27 18:09:25', '2026-01-27', 'cash', 200.00, 0.00, 0.00, 0.00, 0.00, 200.00, 0.00, 200.00, 200.00, 0.00, 0.00, NULL, NULL, '2026-01-27 18:09:25', '2026-01-27 18:09:25'),
(307, 'INV-0000168', 132, 2, 25, '2026-01-27 18:10:30', '2026-01-27', 'credit', 1680.00, 0.00, 0.00, 0.00, 0.00, 1680.00, 0.00, 1680.00, 0.00, 1680.00, 0.00, NULL, NULL, '2026-01-27 18:10:30', '2026-01-27 18:10:30'),
(308, 'INV-0000169', 116, 2, 25, '2026-01-27 18:13:56', '2026-01-27', 'credit', 540.00, 0.00, 0.00, 0.00, 0.00, 540.00, 600.00, 1140.00, 0.00, 1140.00, 0.00, NULL, NULL, '2026-01-27 18:13:56', '2026-01-27 18:13:56'),
(309, 'INV-0000170', 59, 2, 25, '2026-01-27 18:36:01', '2026-01-27', 'credit', 4343.00, 0.00, 0.00, 0.00, 0.00, 4343.00, 2687.80, 7030.80, 0.00, 7030.80, 0.00, NULL, NULL, '2026-01-27 18:36:01', '2026-02-03 14:43:32'),
(310, 'INV-0000171', 133, 2, 27, '2026-01-28 13:58:17', '2026-02-01', 'credit', 6917.50, 0.00, 0.00, 0.00, 0.00, 6917.50, 0.00, 6917.50, 0.00, 6917.50, 0.00, NULL, NULL, '2026-01-28 13:58:17', '2026-02-01 15:42:20'),
(311, 'INV-0000172', 134, 2, 27, '2026-01-28 15:21:36', '2026-01-28', 'cash', 9780.00, 80.00, 0.00, 0.00, 0.00, 9700.00, 0.00, 9700.00, 9700.00, 0.00, 0.00, NULL, '3700 cash + 6000 jazzcash (faisal nadeem)', '2026-01-28 15:21:36', '2026-01-28 15:31:33'),
(312, 'INV-0000173', 53, 2, 27, '2026-01-28 17:19:18', '2026-01-28', 'credit', 15664.00, 0.00, 0.00, 0.00, 0.00, 15664.00, 6481.80, 22145.80, 0.00, 22145.80, 0.00, NULL, NULL, '2026-01-28 17:19:18', '2026-01-28 17:19:18'),
(313, 'INV-0000174', 73, 2, 27, '2026-01-28 17:51:17', '2026-01-28', 'credit', 792.00, 0.00, 0.00, 0.00, 0.00, 792.00, 735.20, 1527.20, 0.00, 1527.20, 0.00, NULL, NULL, '2026-01-28 17:51:17', '2026-02-03 15:11:42'),
(314, 'INV-0000175', 60, 2, 27, '2026-01-28 17:52:48', '2026-01-28', 'credit', 3873.00, 0.00, 0.00, 0.00, 0.00, 3873.00, 7099.40, 10972.40, 0.00, 10972.40, 0.00, NULL, NULL, '2026-01-28 17:52:48', '2026-01-28 17:52:48'),
(315, 'INV-0000176', 59, 2, 27, '2026-01-28 17:54:19', '2026-01-28', 'credit', 4004.00, 0.00, 0.00, 0.00, 0.00, 4004.00, 7030.80, 11034.80, 0.00, 11034.80, 0.00, NULL, NULL, '2026-01-28 17:54:19', '2026-02-03 14:43:32'),
(316, 'INV-0000177', 68, 2, 27, '2026-01-28 17:55:19', '2026-01-28', 'credit', 4052.60, 0.00, 0.00, 0.00, 0.00, 4052.60, 2915.40, 6968.00, 0.00, 6968.00, 0.00, NULL, NULL, '2026-01-28 17:55:19', '2026-01-28 17:55:19'),
(317, 'INV-0000178', 70, 2, 27, '2026-01-28 17:56:47', '2026-01-28', 'credit', 12778.04, 0.00, 0.00, 0.00, 0.00, 12778.04, 34704.60, 47482.64, 0.00, 47482.64, 0.00, NULL, NULL, '2026-01-28 17:56:47', '2026-01-28 17:56:47'),
(318, 'INV-0000179', 135, 2, 27, '2026-01-28 17:58:58', '2026-01-28', 'cash', 300.00, 0.00, 0.00, 0.00, 0.00, 300.00, 0.00, 300.00, 300.00, 0.00, 0.00, NULL, NULL, '2026-01-28 17:58:58', '2026-01-28 18:09:19'),
(319, 'INV-0000180', 72, 2, 27, '2026-01-28 18:02:12', '2026-01-28', 'credit', 483.00, 0.00, 0.00, 0.00, 0.00, 483.00, 1012.00, 1495.00, 0.00, 1495.00, 0.00, NULL, NULL, '2026-01-28 18:02:12', '2026-01-28 18:02:12'),
(320, 'INV-0000181', 136, 2, 27, '2026-01-28 18:27:43', '2026-01-28', 'credit', 14418.00, 0.00, 0.00, 0.00, 0.00, 14418.00, 0.00, 14418.00, 0.00, 14418.00, 0.00, NULL, NULL, '2026-01-28 18:27:43', '2026-01-28 18:27:43'),
(321, 'INV-0000182', 50, 2, 27, '2026-01-28 19:11:07', '2026-01-28', 'credit', 1317.36, 0.00, 0.00, 0.00, 0.00, 1317.36, 0.00, 1317.36, 0.00, 1317.36, 0.00, NULL, NULL, '2026-01-28 19:11:07', '2026-01-28 19:11:07'),
(322, 'INV-0000183', 137, 2, 27, '2026-01-28 19:17:57', '2026-01-27', 'cash', 46214.52, 0.52, 0.00, 0.00, 0.00, 46214.00, 0.00, 46214.00, 46214.00, 0.00, 0.00, NULL, NULL, '2026-01-28 19:17:57', '2026-02-11 15:55:44'),
(323, 'INV-0000184', 138, 2, 27, '2026-01-28 19:20:39', '2026-01-27', 'cash', 15725.10, 0.10, 0.00, 0.00, 0.00, 15725.00, 0.00, 15725.00, 15725.00, 0.00, 0.00, NULL, NULL, '2026-01-28 19:20:39', '2026-02-11 15:56:19'),
(324, 'INV-0000185', 139, 2, 28, '2026-01-29 17:10:51', '2026-01-31', 'cash', 900.00, 0.00, 0.00, 0.00, 0.00, 900.00, 0.00, 900.00, 900.00, 0.00, 0.00, NULL, NULL, '2026-01-29 17:10:51', '2026-01-31 12:06:42'),
(325, 'INV-0000186', 140, 2, 28, '2026-01-29 17:12:12', '2026-01-29', 'cash', 199.98, 0.00, 0.00, 0.00, 0.00, 199.98, 0.00, 199.98, 200.00, 0.00, 0.00, NULL, NULL, '2026-01-29 17:12:12', '2026-01-29 18:14:07'),
(326, 'INV-0000187', 141, 2, 28, '2026-01-29 17:13:07', '2026-01-29', 'cash', 1680.00, 0.00, 0.00, 0.00, 0.00, 1680.00, 0.00, 1680.00, 1000.00, 680.00, 0.00, NULL, NULL, '2026-01-29 17:13:07', '2026-01-29 17:13:07'),
(327, 'INV-0000188', 142, 2, 28, '2026-01-29 17:19:37', '2026-01-29', 'cash', 11079.10, 0.00, 0.00, 0.00, 0.00, 11079.10, 0.00, 11079.10, 500.00, 10579.10, 0.00, NULL, NULL, '2026-01-29 17:19:37', '2026-01-31 15:25:31'),
(328, 'INV-0000189', 56, 2, 28, '2026-01-29 17:23:59', '2026-01-29', 'cash', 18360.00, 60.00, 0.00, 0.00, 0.00, 18300.00, 0.00, 18300.00, 18300.00, 0.00, 0.00, NULL, NULL, '2026-01-29 17:23:59', '2026-01-29 17:23:59'),
(329, 'INV-0000190', 62, 2, 28, '2026-01-29 17:34:33', '2026-01-29', 'credit', 1380.00, 0.00, 0.00, 0.00, 0.00, 1380.00, 53.00, 1433.00, 0.00, 1433.00, 0.00, NULL, NULL, '2026-01-29 17:34:33', '2026-01-29 17:34:33'),
(330, 'INV-0000191', 80, 2, 28, '2026-01-29 17:36:54', '2026-01-29', 'credit', 3404.00, 0.00, 0.00, 0.00, 0.00, 3404.00, 2004.00, 5408.00, 0.00, 5408.00, 0.00, NULL, NULL, '2026-01-29 17:36:54', '2026-01-29 17:36:54'),
(331, 'INV-0000192', 82, 2, 28, '2026-01-29 17:42:54', '2026-01-29', 'credit', 968.00, 0.00, 0.00, 0.00, 0.00, 968.00, -6692.00, 968.00, 0.00, -5724.00, 0.00, NULL, NULL, '2026-01-29 17:42:54', '2026-02-12 16:41:09'),
(332, 'INV-0000193', 143, 2, 28, '2026-01-29 17:45:26', '2026-01-29', 'cash', 5150.00, 0.00, 0.00, 0.00, 0.00, 5150.00, 0.00, 5150.00, 3000.00, 2150.00, 0.00, NULL, NULL, '2026-01-29 17:45:26', '2026-01-29 17:45:26'),
(333, 'INV-0000194', 59, 2, 28, '2026-01-29 17:47:31', '2026-01-29', 'credit', 2640.00, 0.00, 0.00, 0.00, 0.00, 2640.00, -965.20, 1674.80, 0.00, 1674.80, 0.00, NULL, NULL, '2026-01-29 17:47:31', '2026-02-03 14:43:32'),
(334, 'INV-0000195', 68, 2, 28, '2026-01-29 17:48:36', '2026-01-29', 'credit', 3243.00, 0.00, 0.00, 0.00, 0.00, 3243.00, 6968.00, 10211.00, 0.00, 10211.00, 0.00, NULL, NULL, '2026-01-29 17:48:36', '2026-01-29 17:48:36'),
(335, 'INV-0000196', 70, 2, 28, '2026-01-29 17:49:44', '2026-01-29', 'credit', 1489.00, 0.00, 0.00, 0.00, 0.00, 1489.00, 47482.64, 48971.64, 0.00, 48971.64, 0.00, NULL, NULL, '2026-01-29 17:49:44', '2026-01-29 17:49:44'),
(336, 'INV-0000197', 145, 2, 28, '2026-01-29 17:50:51', '2026-01-29', 'cash', 400.00, 0.00, 0.00, 0.00, 0.00, 400.00, 0.00, 400.00, 400.00, 0.00, 0.00, NULL, NULL, '2026-01-29 17:50:51', '2026-01-29 17:50:51'),
(338, 'INV-0000198', 50, 2, 28, '2026-01-29 17:59:10', NULL, 'credit', 13016.00, 0.00, 0.00, 0.00, 0.00, 13016.00, 0.00, 13016.00, 0.00, 13016.00, 0.00, NULL, NULL, '2026-01-29 17:59:10', '2026-01-29 19:21:17'),
(340, 'INV-0000199', 51, 2, 28, '2026-01-29 18:33:09', '2026-01-29', 'bank', 5451.00, 0.00, 0.00, 0.00, 0.00, 5451.00, 0.00, 5451.00, 5000.00, 451.00, 0.00, NULL, 'easypaisa (zohaib siddique)', '2026-01-29 18:33:09', '2026-01-29 18:33:09'),
(341, 'INV-0000200', 146, 2, 29, '2026-01-31 11:58:37', '2026-01-31', 'cash', 690.00, 0.00, 0.00, 0.00, 0.00, 690.00, 0.00, 690.00, 690.00, 0.00, 0.00, NULL, NULL, '2026-01-31 11:58:37', '2026-01-31 11:58:37'),
(342, 'INV-0000201', 147, 2, 29, '2026-01-31 12:58:51', '2026-01-31', 'credit', 240.00, 0.00, 0.00, 0.00, 0.00, 240.00, 0.00, 240.00, 0.00, 240.00, 0.00, NULL, NULL, '2026-01-31 12:58:51', '2026-01-31 12:58:51'),
(343, 'INV-0000202', 136, 2, 29, '2026-01-31 14:22:10', '2026-01-31', 'credit', 25752.06, 0.00, 0.00, 0.00, 0.00, 25752.06, 0.00, 25752.06, 0.00, 25752.06, 0.00, NULL, NULL, '2026-01-31 14:22:10', '2026-01-31 14:22:10'),
(344, 'INV-0000203', 148, 2, 29, '2026-01-31 15:48:12', '2026-01-31', 'cash', 1680.00, 80.00, 0.00, 0.00, 0.00, 1600.00, 0.00, 1600.00, 1600.00, 0.00, 0.00, NULL, NULL, '2026-01-31 15:48:12', '2026-01-31 15:48:12'),
(345, 'INV-0000204', 73, 2, 29, '2026-01-31 15:48:50', '2026-01-31', 'credit', 1320.00, 0.00, 0.00, 0.00, 0.00, 1320.00, -1472.80, -152.80, 0.00, -152.80, 0.00, NULL, NULL, '2026-01-31 15:48:50', '2026-02-03 15:11:42'),
(346, 'INV-0000205', 149, 2, 29, '2026-01-31 17:42:35', '2026-01-31', 'cash', 37287.60, 7.60, 0.00, 0.00, 0.00, 37280.00, 0.00, 37280.00, 37280.00, 0.00, 0.00, NULL, NULL, '2026-01-31 17:42:35', '2026-01-31 18:04:25'),
(347, 'INV-0000206', 150, 2, 29, '2026-01-31 18:30:56', '2026-01-31', 'credit', 1220.00, 0.00, 0.00, 0.00, 0.00, 1220.00, 0.00, 1220.00, 0.00, 1220.00, 0.00, NULL, NULL, '2026-01-31 18:30:56', '2026-01-31 18:30:56'),
(349, 'INV-0000207', 151, 2, 29, '2026-01-31 18:34:20', '2026-01-31', 'cash', 720.00, 20.00, 0.00, 0.00, 0.00, 700.00, 0.00, 700.00, 700.00, 0.00, 0.00, NULL, NULL, '2026-01-31 18:34:20', '2026-01-31 18:34:20'),
(350, 'INV-0000208', 68, 2, 29, '2026-01-31 18:34:48', '2026-01-31', 'credit', 14260.00, 0.00, 0.00, 0.00, 0.00, 14260.00, -3789.00, 10471.00, 0.00, 10471.00, 0.00, NULL, NULL, '2026-01-31 18:34:48', '2026-01-31 18:34:48'),
(352, 'INV-0000210', 152, 2, 29, '2026-01-31 18:37:11', '2026-01-31', 'cash', 700.00, 0.00, 0.00, 0.00, 0.00, 700.00, 0.00, 700.00, 700.00, 0.00, 0.00, NULL, NULL, '2026-01-31 18:37:11', '2026-01-31 18:37:11'),
(353, 'INV-0000211', 82, 2, 29, '2026-01-31 18:37:39', '2026-01-31', 'credit', 1848.00, 0.00, 0.00, 0.00, 0.00, 1848.00, -5724.00, 2816.00, 0.00, -3876.00, 0.00, NULL, NULL, '2026-01-31 18:37:39', '2026-02-12 16:41:09'),
(354, 'INV-0000212', 59, 2, 29, '2026-01-31 18:38:46', '2026-01-31', 'credit', 264.00, 0.00, 0.00, 0.00, 0.00, 264.00, 1674.80, 1938.80, 0.00, 1938.80, 0.00, NULL, NULL, '2026-01-31 18:38:46', '2026-02-03 14:43:32'),
(355, 'INV-0000213', 153, 2, 29, '2026-01-31 18:39:33', '2026-01-31', 'cash', 2448.60, 0.60, 0.00, 0.00, 0.00, 2448.00, 0.00, 2448.00, 2448.00, 0.00, 0.00, NULL, NULL, '2026-01-31 18:39:33', '2026-02-11 15:56:40'),
(356, 'INV-0000214', 154, 2, 29, '2026-01-31 18:42:38', '2026-01-31', 'credit', 1500.00, 0.00, 0.00, 0.00, 0.00, 1500.00, 0.00, 1500.00, 0.00, 1500.00, 0.00, NULL, NULL, '2026-01-31 18:42:38', '2026-01-31 18:42:38'),
(357, 'INV-0000215', 53, 2, 29, '2026-01-31 18:43:55', '2026-01-31', 'credit', 1485.00, 0.00, 0.00, 0.00, 0.00, 1485.00, 6145.80, 7630.80, 0.00, 7630.80, 0.00, NULL, NULL, '2026-01-31 18:43:55', '2026-01-31 18:43:55'),
(358, 'INV-0000216', 155, 2, 29, '2026-01-31 18:44:39', '2026-01-31', 'credit', 360.00, 0.00, 0.00, 0.00, 0.00, 360.00, 0.00, 360.00, 0.00, 360.00, 0.00, NULL, NULL, '2026-01-31 18:44:39', '2026-01-31 18:44:39'),
(359, 'INV-0000217', 39, 2, 29, '2026-01-31 18:45:51', '2026-01-31', 'credit', 27500.00, 0.00, 0.00, 0.00, 0.00, 27500.00, 311645.00, 339145.00, 0.00, 339145.00, 0.00, NULL, NULL, '2026-01-31 18:45:51', '2026-01-31 18:52:48'),
(360, 'INV-0000218', 50, 2, 29, '2026-01-31 18:47:08', '2026-01-31', 'credit', 18150.00, 0.00, 0.00, 0.00, 0.00, 18150.00, 0.00, 18150.00, 0.00, 18150.00, 0.00, NULL, NULL, '2026-01-31 18:47:08', '2026-01-31 18:47:08'),
(361, 'INV-0000219', 74, 2, 30, '2026-02-01 15:58:00', '2026-01-27', 'credit', 4400.00, 0.00, 0.00, 0.00, 0.00, 4400.00, 103925.00, 108325.00, 0.00, 108325.00, 0.00, NULL, NULL, '2026-02-01 15:58:00', '2026-02-01 15:58:00'),
(363, 'INV-0000220', 74, 2, 30, '2026-02-01 16:01:13', '2026-01-29', 'credit', 506.25, 0.00, 0.00, 0.00, 0.00, 506.25, 108325.00, 108831.25, 0.00, 108831.25, 0.00, NULL, NULL, '2026-02-01 16:01:13', '2026-02-01 16:01:13'),
(364, 'INV-0000221', 71, 2, 30, '2026-02-01 18:48:22', '2026-02-01', 'credit', 132.00, 0.00, 0.00, 0.00, 0.00, 132.00, 732.00, 864.00, 0.00, 864.00, 0.00, NULL, NULL, '2026-02-01 18:48:22', '2026-02-01 18:48:22'),
(365, 'INV-0000222', 72, 2, 30, '2026-02-01 18:49:17', '2026-02-01', 'credit', 2300.00, 0.00, 0.00, 0.00, 0.00, 2300.00, 1495.00, 3795.00, 0.00, 3795.00, 0.00, NULL, NULL, '2026-02-01 18:49:17', '2026-02-01 18:49:17'),
(366, 'INV-0000223', 74, 2, 30, '2026-02-01 18:49:40', '2026-02-01', 'credit', 792.00, 0.00, 0.00, 0.00, 0.00, 792.00, 108831.25, 109623.25, 0.00, 109623.25, 0.00, NULL, NULL, '2026-02-01 18:49:40', '2026-02-01 18:49:40'),
(367, 'INV-0000224', 73, 2, 30, '2026-02-01 18:50:37', '2026-02-01', 'credit', 7920.00, 0.00, 0.00, 0.00, 0.00, 7920.00, -152.80, 7767.20, 0.00, 7767.20, 0.00, NULL, NULL, '2026-02-01 18:50:37', '2026-02-03 15:11:42'),
(368, 'INV-0000225', 59, 2, 30, '2026-02-01 18:51:42', '2026-02-01', 'credit', 1298.00, 0.00, 0.00, 0.00, 0.00, 1298.00, 1938.80, 3236.80, 0.00, 3236.80, 0.00, NULL, NULL, '2026-02-01 18:51:42', '2026-02-03 14:43:32'),
(369, 'INV-0000226', 108, 2, 30, '2026-02-01 18:52:17', '2026-02-01', 'credit', 2534.40, 0.00, 0.00, 0.00, 0.00, 2534.40, 1408.00, 3942.40, 0.00, 3942.40, 0.00, NULL, NULL, '2026-02-01 18:52:17', '2026-02-01 18:52:17');
INSERT INTO `sales` (`id`, `invoice_no`, `customer_id`, `user_id`, `register_session_id`, `sold_at`, `invoice_date`, `payment_type`, `subtotal`, `discount_total`, `tax_total`, `utilities_charges`, `other_charges`, `bill_total`, `previous_balance`, `grand_total`, `paid_amount`, `current_balance`, `advance_used`, `notes`, `system_description`, `created_at`, `updated_at`) VALUES
(371, 'INV-0000227', 68, 2, 30, '2026-02-01 18:57:17', '2026-02-01', 'credit', 30705.00, 0.00, 0.00, 0.00, 0.00, 30705.00, 10471.00, 41176.00, 0.00, 41176.00, 0.00, NULL, NULL, '2026-02-01 18:57:17', '2026-02-01 18:57:17'),
(372, 'INV-0000228', 56, 2, 30, '2026-02-01 18:57:59', '2026-02-01', 'cash', 3017.25, 17.25, 0.00, 0.00, 0.00, 3000.00, 0.00, 3000.00, 3000.00, 0.00, 0.00, NULL, NULL, '2026-02-01 18:57:59', '2026-02-01 18:57:59'),
(373, 'INV-0000229', 91, 2, 30, '2026-02-01 18:59:55', '2026-02-01', 'credit', 5010.00, 0.00, 0.00, 0.00, 0.00, 5010.00, 24099.00, 29109.00, 0.00, 29109.00, 0.00, NULL, NULL, '2026-02-01 18:59:55', '2026-02-01 18:59:55'),
(374, 'INV-0000230', 122, 2, 30, '2026-02-01 19:02:46', '2026-02-01', 'credit', 2024.00, 0.00, 0.00, 0.00, 0.00, 2024.00, 31027.50, 33051.50, 0.00, 33051.50, 0.00, NULL, NULL, '2026-02-01 19:02:46', '2026-02-01 19:02:46'),
(375, 'INV-0000231', 123, 2, 30, '2026-02-01 19:05:44', '2026-02-01', 'credit', 720.00, 0.00, 0.00, 0.00, 0.00, 720.00, 0.00, 720.00, 0.00, 720.00, 0.00, NULL, NULL, '2026-02-01 19:05:44', '2026-02-01 19:05:44'),
(376, 'INV-0000232', 156, 2, 30, '2026-02-01 19:08:25', '2026-02-01', 'cash', 1522.50, 22.50, 0.00, 0.00, 0.00, 1500.00, 0.00, 1500.00, 1500.00, 0.00, 0.00, NULL, NULL, '2026-02-01 19:08:25', '2026-02-01 19:08:25'),
(377, 'INV-0000233', 157, 2, 30, '2026-02-01 19:09:22', '2026-02-01', 'cash', 780.00, 0.00, 0.00, 0.00, 0.00, 780.00, 0.00, 780.00, 500.00, 280.00, 0.00, NULL, NULL, '2026-02-01 19:09:22', '2026-02-01 19:09:22'),
(378, 'INV-0000234', 50, 2, 30, '2026-02-01 19:11:03', '2026-02-01', 'credit', 15334.00, 0.00, 0.00, 0.00, 0.00, 15334.00, 0.00, 15334.00, 0.00, 15334.00, 0.00, NULL, NULL, '2026-02-01 19:11:03', '2026-02-01 19:11:03'),
(379, 'INV-0000235', 136, 2, 31, '2026-02-02 13:02:53', '2026-02-02', 'credit', 14985.00, 0.00, 0.00, 0.00, 0.00, 14985.00, 252.06, 15237.06, 0.00, 15237.06, 0.00, NULL, NULL, '2026-02-02 13:02:53', '2026-02-02 13:02:53'),
(380, 'INV-0000236', 158, 2, 31, '2026-02-02 14:12:54', '2026-02-02', 'bank', 1000.00, 0.00, 0.00, 0.00, 0.00, 1000.00, 0.00, 1000.00, 1000.00, 0.00, 0.00, NULL, 'Jazzcash (faisal nadeem)', '2026-02-02 14:12:54', '2026-02-02 14:12:54'),
(381, 'INV-0000237', 76, 2, 31, '2026-02-02 17:08:07', '2026-02-02', 'bank', 3300.00, 0.00, 0.00, 0.00, 0.00, 3300.00, 0.00, 3300.00, 3300.00, 0.00, 0.00, NULL, 'Jazzcash (faisal nadeem)', '2026-02-02 17:08:07', '2026-02-02 17:08:07'),
(382, 'INV-0000238', 154, 2, 31, '2026-02-02 17:35:02', '2026-02-02', 'cash', 1080.00, 80.00, 0.00, 0.00, 0.00, 1000.00, 0.00, 1000.00, 1000.00, 0.00, 0.00, NULL, NULL, '2026-02-02 17:35:02', '2026-02-02 17:35:02'),
(383, 'INV-0000239', 73, 2, 31, '2026-02-02 17:35:54', '2026-02-02', 'credit', 1210.00, 0.00, 0.00, 0.00, 0.00, 1210.00, 7767.20, 8977.20, 0.00, 8977.20, 0.00, NULL, NULL, '2026-02-02 17:35:54', '2026-02-03 15:11:42'),
(384, 'INV-0000240', 68, 2, 31, '2026-02-02 17:38:25', '2026-02-02', 'credit', 7778.60, 0.00, 0.00, 0.00, 0.00, 7778.60, 34176.00, 41954.60, 0.00, 41954.60, 0.00, NULL, NULL, '2026-02-02 17:38:25', '2026-02-02 17:38:25'),
(385, 'INV-0000241', 91, 2, 31, '2026-02-02 17:39:13', '2026-02-02', 'credit', 1104.00, 0.00, 0.00, 0.00, 0.00, 1104.00, 29109.00, 30213.00, 0.00, 30213.00, 0.00, NULL, NULL, '2026-02-02 17:39:13', '2026-02-02 17:39:13'),
(386, 'INV-0000242', 39, 2, 31, '2026-02-02 17:40:25', '2026-02-02', 'credit', 8372.00, 0.00, 0.00, 0.00, 0.00, 8372.00, 339145.00, 347517.00, 0.00, 347517.00, 0.00, NULL, NULL, '2026-02-02 17:40:25', '2026-02-02 17:40:25'),
(387, 'INV-0000243', 50, 2, 31, '2026-02-02 17:40:59', '2026-02-02', 'credit', 880.00, 0.00, 0.00, 0.00, 0.00, 880.00, 15334.00, 16214.00, 0.00, 16214.00, 0.00, NULL, NULL, '2026-02-02 17:40:59', '2026-02-02 17:40:59'),
(388, 'INV-0000244', 122, 2, 31, '2026-02-02 17:56:30', '2026-02-02', 'credit', 16957.20, 0.00, 0.00, 0.00, 0.00, 16957.20, 10051.50, 27008.70, 0.00, 27008.70, 0.00, NULL, NULL, '2026-02-02 17:56:30', '2026-02-02 18:36:12'),
(389, 'INV-0000245', 70, 2, 32, '2026-02-02 19:16:46', '2026-02-02', 'credit', 8032.50, 0.00, 0.00, 0.00, 0.00, 8032.50, 26971.64, 35004.14, 0.00, 35004.14, 0.00, NULL, NULL, '2026-02-02 19:16:46', '2026-02-02 19:16:46'),
(390, 'INV-0000246', 119, 2, 33, '2026-02-03 13:53:35', '2026-02-03', 'bank', 1500.00, 0.00, 0.00, 0.00, 0.00, 1500.00, 0.00, 1500.00, 1500.00, 0.00, 0.00, NULL, 'Jazzcash (shahbaz ali)..', '2026-02-03 13:53:35', '2026-02-03 13:54:35'),
(391, 'INV-0000247', 159, 2, 33, '2026-02-03 14:45:42', '2026-02-03', 'cash', 40579.00, 5797.00, 0.00, 0.00, 0.00, 34782.00, 0.00, 34782.00, 15000.00, 19782.00, 0.00, NULL, NULL, '2026-02-03 14:45:42', '2026-02-08 12:05:33'),
(392, 'INV-0000248', 160, 2, 33, '2026-02-03 15:16:16', '2026-02-03', 'cash', 300.00, 0.00, 0.00, 0.00, 0.00, 300.00, 0.00, 300.00, 300.00, 0.00, 0.00, NULL, NULL, '2026-02-03 15:16:16', '2026-02-03 15:16:16'),
(393, 'INV-0000249', 39, 2, 33, '2026-02-03 16:44:42', '2026-02-03', 'credit', 22400.00, 0.00, 0.00, 0.00, 0.00, 22400.00, 347517.00, 369917.00, 0.00, 369917.00, 0.00, NULL, NULL, '2026-02-03 16:44:42', '2026-02-03 16:44:42'),
(394, 'INV-0000250', 61, 2, 33, '2026-02-03 16:57:30', '2026-02-03', 'credit', 276.00, 0.00, 0.00, 0.00, 0.00, 276.00, 1391.20, 1667.20, 0.00, 1667.20, 0.00, NULL, NULL, '2026-02-03 16:57:30', '2026-02-03 16:57:30'),
(395, 'INV-0000251', 82, 2, 33, '2026-02-03 16:58:29', '2026-02-03', 'credit', 264.00, 0.00, 0.00, 0.00, 0.00, 264.00, -3876.00, 3080.00, 0.00, -3612.00, 0.00, NULL, NULL, '2026-02-03 16:58:29', '2026-02-12 16:41:09'),
(396, 'INV-0000252', 71, 2, 33, '2026-02-03 16:59:19', '2026-02-03', 'credit', 132.00, 0.00, 0.00, 0.00, 0.00, 132.00, 864.00, 996.00, 0.00, 996.00, 0.00, NULL, NULL, '2026-02-03 16:59:19', '2026-02-03 16:59:19'),
(397, 'INV-0000253', 53, 2, 33, '2026-02-03 17:03:20', '2026-02-03', 'credit', 1100.00, 0.00, 0.00, 0.00, 0.00, 1100.00, 7630.80, 8730.80, 0.00, 8730.80, 0.00, NULL, NULL, '2026-02-03 17:03:20', '2026-02-03 17:03:20'),
(398, 'INV-0000254', 70, 2, 33, '2026-02-03 17:05:28', '2026-02-03', 'credit', 1122.00, 0.00, 0.00, 0.00, 0.00, 1122.00, 35004.14, 36126.14, 0.00, 36126.14, 0.00, NULL, NULL, '2026-02-03 17:05:28', '2026-02-03 17:05:28'),
(399, 'INV-0000255', 91, 2, 33, '2026-02-03 17:06:37', '2026-02-03', 'credit', 897.00, 0.00, 0.00, 0.00, 0.00, 897.00, 26213.00, 27110.00, 0.00, 27110.00, 0.00, NULL, NULL, '2026-02-03 17:06:37', '2026-02-03 17:06:37'),
(400, 'INV-0000256', 123, 2, 33, '2026-02-03 17:07:42', '2026-02-03', 'credit', 264.00, 0.00, 0.00, 0.00, 0.00, 264.00, 720.00, 984.00, 0.00, 984.00, 0.00, NULL, NULL, '2026-02-03 17:07:42', '2026-02-03 17:07:42'),
(402, 'INV-0000258', 162, 2, 33, '2026-02-03 17:11:46', '2026-02-03', 'cash', 200.00, 0.00, 0.00, 0.00, 0.00, 200.00, 0.00, 200.00, 200.00, 0.00, 0.00, NULL, NULL, '2026-02-03 17:11:46', '2026-02-03 17:11:46'),
(403, 'INV-0000259', 161, 2, 33, '2026-02-03 18:26:07', '2026-02-03', 'cash', 25083.30, 83.00, 0.00, 0.00, 0.00, 25000.30, 0.00, 25000.30, 25000.00, 0.30, 0.00, NULL, NULL, '2026-02-03 18:26:07', '2026-02-03 18:26:07'),
(404, 'INV-0000260', 99, 2, 33, '2026-02-03 18:29:18', '2026-02-03', 'credit', 420.00, 0.00, 0.00, 0.00, 0.00, 420.00, 0.00, 420.00, 0.00, 420.00, 0.00, NULL, NULL, '2026-02-03 18:29:18', '2026-02-03 18:29:18'),
(405, 'INV-0000261', 50, 2, 33, '2026-02-03 18:34:37', '2026-02-03', 'credit', 8914.00, 0.00, 0.00, 0.00, 0.00, 8914.00, 0.00, 8914.00, 0.00, 8914.00, 0.00, NULL, NULL, '2026-02-03 18:34:37', '2026-02-03 18:34:37'),
(406, 'INV-0000262', 73, 2, 33, '2026-02-03 18:37:55', '2026-02-03', 'credit', 2024.00, 0.00, 0.00, 0.00, 0.00, 2024.00, 3977.20, 6001.20, 0.00, 6001.20, 0.00, NULL, NULL, '2026-02-03 18:37:55', '2026-02-03 15:11:42'),
(407, 'INV-0000263', 59, 2, 33, '2026-02-03 18:38:39', '2026-02-03', 'credit', 836.00, 0.00, 0.00, 0.00, 0.00, 836.00, -5263.20, -4427.20, 0.00, -4427.20, 0.00, NULL, NULL, '2026-02-03 18:38:39', '2026-02-03 14:43:32'),
(408, 'INV-0000264', 42, 2, 34, '2026-02-04 11:57:24', '2026-02-04', 'credit', 32890.00, 0.00, 0.00, 0.00, 0.00, 32890.00, 36400.00, 69290.00, 0.00, 69290.00, 0.00, NULL, NULL, '2026-02-04 11:57:24', '2026-02-04 11:57:24'),
(409, 'INV-0000265', 164, 2, 34, '2026-02-04 18:21:01', '2026-02-04', 'cash', 1350.00, 0.00, 0.00, 0.00, 0.00, 1350.00, 0.00, 1350.00, 1350.00, 0.00, 0.00, NULL, NULL, '2026-02-04 18:21:01', '2026-02-04 18:21:01'),
(410, 'INV-0000266', 42, 2, 34, '2026-02-04 18:26:26', '2026-02-04', 'bank', 2640.00, 0.00, 0.00, 0.00, 0.00, 2640.00, 36790.00, 2640.00, 2600.00, 36830.00, 0.00, NULL, 'Jazzcash (faisal nadeem)', '2026-02-04 18:26:26', '2026-02-04 18:26:26'),
(411, 'INV-0000267', 165, 2, 34, '2026-02-04 18:35:49', '2026-02-04', 'cash', 2340.00, 0.00, 0.00, 0.00, 0.00, 2340.00, 0.00, 2340.00, 1000.00, 1340.00, 0.00, NULL, NULL, '2026-02-04 18:35:49', '2026-02-04 18:36:08'),
(412, 'INV-0000268', 166, 2, 34, '2026-02-04 18:37:26', '2026-02-04', 'cash', 960.00, 60.00, 0.00, 0.00, 0.00, 900.00, 0.00, 900.00, 900.00, 0.00, 0.00, NULL, NULL, '2026-02-04 18:37:26', '2026-02-04 18:37:26'),
(413, 'INV-0000269', 109, 2, 34, '2026-02-04 18:38:21', '2026-02-04', 'credit', 2880.00, 0.00, 0.00, 0.00, 0.00, 2880.00, 0.00, 2880.00, 0.00, 2880.00, 0.00, NULL, NULL, '2026-02-04 18:38:21', '2026-02-04 18:38:21'),
(414, 'INV-0000270', 167, 2, 34, '2026-02-04 18:39:10', '2026-02-04', 'credit', 414.00, 0.00, 0.00, 0.00, 0.00, 414.00, 0.00, 414.00, 0.00, 414.00, 0.00, NULL, NULL, '2026-02-04 18:39:10', '2026-02-04 18:39:10'),
(415, 'INV-0000271', 72, 2, 34, '2026-02-04 18:39:59', '2026-02-04', 'credit', 1288.00, 0.00, 0.00, 0.00, 0.00, 1288.00, 0.00, 1288.00, 0.00, 1288.00, 0.00, NULL, NULL, '2026-02-04 18:39:59', '2026-02-04 18:39:59'),
(416, 'INV-0000272', 73, 2, 34, '2026-02-04 18:40:36', '2026-02-04', 'credit', 2046.00, 0.00, 0.00, 0.00, 0.00, 2046.00, 1001.20, 3047.20, 0.00, 3047.20, 0.00, NULL, NULL, '2026-02-04 18:40:36', '2026-02-04 18:40:36'),
(417, 'INV-0000273', 60, 2, 34, '2026-02-04 18:42:44', '2026-02-04', 'credit', 7609.90, 0.00, 0.00, 0.00, 0.00, 7609.90, 4472.40, 12082.30, 0.00, 12082.30, 0.00, NULL, NULL, '2026-02-04 18:42:44', '2026-02-04 18:42:44'),
(418, 'INV-0000274', 59, 2, 34, '2026-02-04 18:43:29', '2026-02-04', 'credit', 385.00, 0.00, 0.00, 0.00, 0.00, 385.00, -4427.20, -4042.20, 0.00, -4042.20, 0.00, NULL, NULL, '2026-02-04 18:43:29', '2026-02-04 18:43:29'),
(419, 'INV-0000275', 68, 2, 34, '2026-02-04 18:45:06', '2026-02-04', 'credit', 1301.80, 0.00, 0.00, 0.00, 0.00, 1301.80, 18954.60, 20256.40, 0.00, 20256.40, 0.00, NULL, NULL, '2026-02-04 18:45:06', '2026-02-04 18:45:06'),
(420, 'INV-0000276', 68, 2, 34, '2026-02-04 18:45:10', '2026-02-04', 'credit', 1301.80, 0.00, 0.00, 0.00, 0.00, 1301.80, 20256.40, 21558.20, 0.00, 21558.20, 0.00, NULL, NULL, '2026-02-04 18:45:10', '2026-02-04 18:45:10'),
(421, 'INV-0000277', 70, 2, 34, '2026-02-04 18:45:57', '2026-02-04', 'credit', 939.00, 0.00, 0.00, 0.00, 0.00, 939.00, 36126.14, 37065.14, 0.00, 37065.14, 0.00, NULL, NULL, '2026-02-04 18:45:57', '2026-02-04 18:45:57'),
(422, 'INV-0000278', 122, 2, 34, '2026-02-04 18:46:55', '2026-02-04', 'credit', 2300.00, 0.00, 0.00, 0.00, 0.00, 2300.00, 27008.70, 29308.70, 0.00, 29308.70, 0.00, NULL, NULL, '2026-02-04 18:46:55', '2026-02-04 18:46:55'),
(423, 'INV-0000279', 50, 2, 34, '2026-02-04 18:48:47', '2026-02-04', 'credit', 5720.00, 0.00, 0.00, 0.00, 0.00, 5720.00, 0.00, 5720.00, 0.00, 5720.00, 0.00, NULL, NULL, '2026-02-04 18:48:47', '2026-02-04 18:48:47'),
(424, 'INV-0000280', 53, 2, 35, '2026-02-05 14:35:19', '2026-02-05', 'cash', 5082.00, 0.00, 0.00, 0.00, 0.00, 5082.00, 8730.80, 5082.00, 5000.00, 8812.80, 0.00, NULL, 'Badast Younas fitter (zohaib siddique)', '2026-02-05 14:35:19', '2026-02-05 14:35:19'),
(425, 'INV-0000281', 39, 2, 35, '2026-02-05 17:52:19', '2026-02-05', 'credit', 17000.00, 0.00, 0.00, 0.00, 0.00, 17000.00, 211645.00, 228645.00, 0.00, 228645.00, 0.00, NULL, NULL, '2026-02-05 17:52:19', '2026-02-05 19:16:40'),
(426, 'INV-0000282', 62, 2, 35, '2026-02-05 17:53:28', '2026-02-05', 'cash', 1283.40, 0.00, 0.00, 0.00, 0.00, 1283.40, 0.00, 1283.40, 1200.00, 83.40, 0.00, NULL, NULL, '2026-02-05 17:53:28', '2026-02-05 18:08:24'),
(427, 'INV-0000283', 72, 2, 35, '2026-02-05 17:54:01', '2026-02-05', 'credit', 690.00, 0.00, 0.00, 0.00, 0.00, 690.00, 0.00, 690.00, 0.00, 690.00, 0.00, NULL, NULL, '2026-02-05 17:54:01', '2026-02-08 17:40:30'),
(428, 'INV-0000284', 73, 2, 35, '2026-02-05 17:55:17', '2026-02-05', 'credit', 2178.00, 0.00, 0.00, 0.00, 0.00, 2178.00, 1047.20, 3225.20, 0.00, 3225.20, 0.00, NULL, NULL, '2026-02-05 17:55:17', '2026-02-05 17:55:17'),
(429, 'INV-0000285', 60, 2, 35, '2026-02-05 17:56:51', '2026-02-05', 'credit', 2358.40, 0.00, 0.00, 0.00, 0.00, 2358.40, 12082.30, 14440.70, 0.00, 14440.70, 0.00, NULL, NULL, '2026-02-05 17:56:51', '2026-02-05 17:56:51'),
(430, 'INV-0000286', 154, 2, 35, '2026-02-05 17:57:52', '2026-02-05', 'cash', 960.00, 10.00, 0.00, 0.00, 0.00, 950.00, 0.00, 950.00, 950.00, 0.00, 0.00, NULL, NULL, '2026-02-05 17:57:52', '2026-02-05 17:57:52'),
(431, 'INV-0000287', 168, 2, 35, '2026-02-05 17:59:21', '2026-02-05', 'cash', 840.00, 40.00, 0.00, 0.00, 0.00, 800.00, 0.00, 800.00, 800.00, 0.00, 0.00, NULL, NULL, '2026-02-05 17:59:21', '2026-02-05 17:59:21'),
(432, 'INV-0000288', 169, 2, 35, '2026-02-05 18:00:07', '2026-02-05', 'cash', 960.00, 10.00, 0.00, 0.00, 0.00, 950.00, 0.00, 950.00, 950.00, 0.00, 0.00, NULL, NULL, '2026-02-05 18:00:07', '2026-02-05 18:00:07'),
(433, 'INV-0000289', 90, 2, 35, '2026-02-05 18:00:42', '2026-02-05', 'cash', 2125.00, 25.00, 0.00, 0.00, 0.00, 2100.00, 0.00, 2100.00, 2100.00, 0.00, 0.00, NULL, NULL, '2026-02-05 18:00:42', '2026-02-05 18:00:42'),
(434, 'INV-0000290', 170, 2, 35, '2026-02-05 18:01:34', '2026-02-05', 'cash', 2400.00, 0.00, 0.00, 0.00, 0.00, 2400.00, 0.00, 2400.00, 2400.00, 0.00, 0.00, NULL, NULL, '2026-02-05 18:01:34', '2026-02-05 18:01:34'),
(435, 'INV-0000291', 68, 2, 35, '2026-02-05 18:02:03', '2026-02-05', 'credit', 828.00, 0.00, 0.00, 0.00, 0.00, 828.00, 21558.20, 22386.20, 0.00, 22386.20, 0.00, NULL, NULL, '2026-02-05 18:02:03', '2026-02-05 18:02:03'),
(436, 'INV-0000292', 70, 2, 35, '2026-02-05 18:02:23', '2026-02-05', 'credit', 396.00, 0.00, 0.00, 0.00, 0.00, 396.00, 29065.14, 29461.14, 0.00, 29461.14, 0.00, NULL, NULL, '2026-02-05 18:02:23', '2026-02-05 18:02:23'),
(437, 'INV-0000293', 171, 2, 35, '2026-02-05 18:07:35', '2026-02-05', 'cash', 33688.00, 0.00, 0.00, 0.00, 0.00, 33688.00, 0.00, 33688.00, 6000.00, 27688.00, 0.00, NULL, NULL, '2026-02-05 18:07:35', '2026-02-05 18:07:59'),
(438, 'INV-0000294', 50, 2, 35, '2026-02-05 18:10:29', '2026-02-05', 'credit', 3278.00, 0.00, 0.00, 0.00, 0.00, 3278.00, 0.00, 3278.00, 0.00, 3278.00, 0.00, NULL, NULL, '2026-02-05 18:10:29', '2026-02-05 18:10:29'),
(439, 'INV-0000295', 51, 2, 35, '2026-02-05 18:11:03', '2026-02-05', 'credit', 1219.00, 0.00, 0.00, 0.00, 0.00, 1219.00, 451.00, 1670.00, 0.00, 1670.00, 0.00, NULL, NULL, '2026-02-05 18:11:03', '2026-02-05 18:15:44'),
(440, 'INV-0000296', 122, 2, 35, '2026-02-05 18:13:28', '2026-02-05', 'credit', 5970.00, 0.00, 0.00, 0.00, 0.00, 5970.00, 19408.70, 25378.70, 0.00, 25378.70, 0.00, NULL, NULL, '2026-02-05 18:13:28', '2026-02-05 18:13:28'),
(441, 'INV-0000297', 59, 2, 35, '2026-02-05 18:23:07', '2026-02-05', 'credit', 6682.00, 0.00, 0.00, 0.00, 0.00, 6682.00, -4042.20, 2639.80, 0.00, 2639.80, 0.00, NULL, NULL, '2026-02-05 18:23:07', '2026-02-05 18:23:07'),
(442, 'INV-0000298', 172, 2, 35, '2026-02-05 18:26:52', '2026-02-05', 'cash', 1150.00, 0.00, 0.00, 0.00, 0.00, 1150.00, 0.00, 1150.00, 1150.00, 0.00, 0.00, NULL, NULL, '2026-02-05 18:26:52', '2026-02-05 18:26:52'),
(443, 'INV-0000299', 82, 2, 35, '2026-02-05 19:17:28', '2026-02-05', 'credit', 132.00, 0.00, 0.00, 0.00, 0.00, 132.00, -3612.00, 3212.00, 0.00, -3480.00, 0.00, NULL, NULL, '2026-02-05 19:17:28', '2026-02-12 16:41:09'),
(444, 'INV-0000300', 49, 2, 35, '2026-02-05 19:19:18', '2026-02-05', 'credit', 9246.00, 0.00, 0.00, 0.00, 0.00, 9246.00, 739.50, 9985.50, 0.00, 9985.50, 0.00, NULL, NULL, '2026-02-05 19:19:18', '2026-02-05 19:19:18'),
(445, 'INV-0000301', 173, 2, 36, '2026-02-07 14:20:05', NULL, 'credit', 27153.00, 0.00, 0.00, 0.00, 0.00, 27153.00, 0.00, 27153.00, 0.00, 27153.00, 0.00, NULL, NULL, '2026-02-07 14:20:05', '2026-02-07 14:20:05'),
(446, 'INV-0000302', 174, 2, 36, '2026-02-07 18:25:25', '2026-02-07', 'cash', 43570.00, 0.00, 0.00, 0.00, 0.00, 43570.00, 0.00, 43570.00, 43570.00, 0.00, 0.00, NULL, NULL, '2026-02-07 18:25:25', '2026-02-07 18:25:25'),
(447, 'INV-0000303', 75, 2, 36, '2026-02-07 18:29:53', '2026-02-07', 'credit', 33897.50, 0.00, 0.00, 0.00, 0.00, 33897.50, 0.00, 33897.50, 0.00, 33897.50, 0.00, NULL, NULL, '2026-02-07 18:29:53', '2026-02-07 18:29:53'),
(448, 'INV-0000304', 71, 2, 36, '2026-02-07 18:31:37', '2026-02-08', 'credit', 2550.00, 0.00, 0.00, 0.00, 0.00, 2550.00, -2504.00, 46.00, 0.00, 46.00, 0.00, NULL, NULL, '2026-02-07 18:31:37', '2026-02-09 10:43:41'),
(449, 'INV-0000305', 175, 2, 36, '2026-02-07 18:32:32', '2026-02-08', 'credit', 780.00, 0.00, 0.00, 0.00, 0.00, 780.00, 0.00, 780.00, 0.00, 780.00, 0.00, NULL, NULL, '2026-02-07 18:32:32', '2026-02-08 18:50:15'),
(450, 'INV-0000306', 60, 2, 36, '2026-02-07 18:33:26', '2026-02-07', 'credit', 1628.00, 0.00, 0.00, 0.00, 0.00, 1628.00, 14440.70, 16068.70, 0.00, 16068.70, 0.00, NULL, NULL, '2026-02-07 18:33:26', '2026-02-07 18:33:26'),
(451, 'INV-0000307', 59, 2, 36, '2026-02-07 18:34:51', '2026-02-07', 'credit', 1496.00, 0.00, 0.00, 0.00, 0.00, 1496.00, 2639.80, 4135.80, 0.00, 4135.80, 0.00, NULL, NULL, '2026-02-07 18:34:51', '2026-02-07 18:34:51'),
(452, 'INV-0000308', 68, 2, 36, '2026-02-07 18:36:57', '2026-02-07', 'credit', 322.00, 0.00, 0.00, 0.00, 0.00, 322.00, 9085.20, 9407.20, 0.00, 9407.20, 0.00, NULL, NULL, '2026-02-07 18:36:57', '2026-02-07 18:36:57'),
(453, 'INV-0000309', 70, 2, 36, '2026-02-07 18:38:12', '2026-02-07', 'credit', 5865.20, 0.00, 0.00, 0.00, 0.00, 5865.20, 29461.14, 35326.34, 0.00, 35326.34, 0.00, NULL, NULL, '2026-02-07 18:38:12', '2026-02-07 18:38:12'),
(454, 'INV-0000310', 176, 2, 36, '2026-02-07 18:38:46', '2026-02-07', 'credit', 90.00, 0.00, 0.00, 0.00, 0.00, 90.00, 0.00, 90.00, 0.00, 90.00, 0.00, NULL, NULL, '2026-02-07 18:38:46', '2026-02-07 18:38:46'),
(455, 'INV-0000311', 122, 2, 36, '2026-02-07 18:40:21', '2026-02-07', 'credit', 4554.00, 0.00, 0.00, 0.00, 0.00, 4554.00, 25378.70, 29932.70, 0.00, 29932.70, 0.00, NULL, NULL, '2026-02-07 18:40:21', '2026-02-07 18:40:21'),
(456, 'INV-0000312', 177, 2, 36, '2026-02-07 19:04:15', '2026-02-07', 'cash', 900.00, 0.00, 0.00, 0.00, 0.00, 900.00, 0.00, 900.00, 900.00, 0.00, 0.00, NULL, NULL, '2026-02-07 19:04:15', '2026-02-07 19:04:15'),
(457, 'INV-0000313', 44, 2, 37, '2026-02-08 11:34:49', '2026-02-08', 'credit', 40738.50, 0.00, 0.00, 0.00, 0.00, 40738.50, 81940.00, 122678.50, 0.00, 122678.50, 0.00, NULL, NULL, '2026-02-08 11:34:49', '2026-02-08 11:34:49'),
(458, 'INV-0000314', 178, 2, 37, '2026-02-08 12:10:32', '2026-02-08', 'credit', 10850.00, 0.00, 0.00, 0.00, 0.00, 10850.00, 0.00, 10850.00, 0.00, 10850.00, 0.00, NULL, NULL, '2026-02-08 12:10:32', '2026-02-08 15:55:53'),
(459, 'INV-0000315', 76, 2, 37, '2026-02-08 18:35:12', '2026-02-08', 'cash', 660.00, 0.00, 0.00, 0.00, 0.00, 660.00, 0.00, 660.00, 660.00, 0.00, 0.00, NULL, NULL, '2026-02-08 18:35:12', '2026-02-08 18:35:12'),
(460, 'INV-0000316', 179, 2, 37, '2026-02-08 18:56:40', '2026-02-08', 'cash', 1020.00, 20.00, 0.00, 0.00, 0.00, 1000.00, 0.00, 1000.00, 1000.00, 0.00, 0.00, NULL, NULL, '2026-02-08 18:56:40', '2026-02-08 18:56:40'),
(461, 'INV-0000317', 68, 2, 37, '2026-02-08 18:57:07', '2026-02-08', 'credit', 9200.00, 0.00, 0.00, 0.00, 0.00, 9200.00, 8942.20, 18142.20, 0.00, 18142.20, 0.00, NULL, NULL, '2026-02-08 18:57:07', '2026-02-08 18:57:07'),
(462, 'INV-0000318', 180, 2, 37, '2026-02-08 18:57:51', '2026-02-08', 'credit', 750.00, 0.00, 0.00, 0.00, 0.00, 750.00, 0.00, 750.00, 0.00, 750.00, 0.00, NULL, NULL, '2026-02-08 18:57:51', '2026-02-08 18:57:51'),
(463, 'INV-0000319', 181, 2, 37, '2026-02-08 18:58:44', '2026-02-08', 'cash', 480.00, 30.00, 0.00, 0.00, 0.00, 450.00, 0.00, 450.00, 450.00, 0.00, 0.00, NULL, NULL, '2026-02-08 18:58:44', '2026-02-08 18:58:44'),
(464, 'INV-0000320', 73, 2, 37, '2026-02-08 19:00:41', '2026-02-08', 'credit', 528.00, 0.00, 0.00, 0.00, 0.00, 528.00, 3225.20, 3753.20, 0.00, 3753.20, 0.00, NULL, NULL, '2026-02-08 19:00:41', '2026-02-08 19:00:41'),
(465, 'INV-0000321', 182, 2, 37, '2026-02-08 19:01:27', '2026-02-08', 'cash', 150.00, 0.00, 0.00, 0.00, 0.00, 150.00, 0.00, 150.00, 150.00, 0.00, 0.00, NULL, NULL, '2026-02-08 19:01:27', '2026-02-08 19:01:27'),
(466, 'INV-0000322', 60, 2, 37, '2026-02-08 19:02:07', '2026-02-08', 'credit', 1188.00, 0.00, 0.00, 0.00, 0.00, 1188.00, 16068.70, 17256.70, 0.00, 17256.70, 0.00, NULL, NULL, '2026-02-08 19:02:07', '2026-02-08 19:02:07'),
(467, 'INV-0000323', 59, 2, 37, '2026-02-08 19:03:09', '2026-02-08', 'credit', 1958.00, 0.00, 0.00, 0.00, 0.00, 1958.00, 4135.80, 6093.80, 0.00, 6093.80, 0.00, NULL, NULL, '2026-02-08 19:03:09', '2026-02-08 19:03:09'),
(468, 'INV-0000324', 154, 2, 37, '2026-02-08 19:03:34', '2026-02-08', 'credit', 1350.00, 0.00, 0.00, 0.00, 0.00, 1350.00, 0.00, 1350.00, 0.00, 1350.00, 0.00, NULL, NULL, '2026-02-08 19:03:34', '2026-02-08 19:03:34'),
(469, 'INV-0000325', 183, 2, 37, '2026-02-08 19:04:18', '2026-02-08', 'cash', 900.00, 0.00, 0.00, 0.00, 0.00, 900.00, 0.00, 900.00, 900.00, 0.00, 0.00, NULL, 'zohaib bhai', '2026-02-08 19:04:18', '2026-02-08 19:04:18'),
(470, 'INV-0000326', 70, 2, 37, '2026-02-08 19:04:54', '2026-02-08', 'credit', 506.25, 0.00, 0.00, 0.00, 0.00, 506.25, 35326.34, 35832.59, 0.00, 35832.59, 0.00, NULL, NULL, '2026-02-08 19:04:54', '2026-02-08 19:04:54'),
(471, 'INV-0000327', 50, 2, 37, '2026-02-08 19:06:36', '2026-02-08', 'credit', 3448.00, 0.00, 0.00, 0.00, 0.00, 3448.00, 3278.00, 6726.00, 0.00, 6726.00, 0.00, NULL, NULL, '2026-02-08 19:06:36', '2026-02-08 19:06:36'),
(472, 'INV-0000328', 184, 2, 38, '2026-02-09 16:56:18', '2026-02-09', 'bank', 1064.00, 0.00, 0.00, 0.00, 0.00, 1064.00, 0.00, 1064.00, 1064.00, 0.00, 0.00, NULL, 'Jazzcash (faisal nadeem)', '2026-02-09 16:56:18', '2026-02-09 16:56:18'),
(473, 'INV-0000329', 82, 2, 38, '2026-02-09 18:52:13', '2026-02-09', 'credit', 1320.00, 0.00, 0.00, 0.00, 0.00, 1320.00, -3480.00, 4532.00, 0.00, -2160.00, 0.00, NULL, NULL, '2026-02-09 18:52:13', '2026-02-12 16:41:09'),
(474, 'INV-0000330', 80, 2, 38, '2026-02-09 18:55:01', '2026-02-09', 'credit', 793.50, 0.00, 0.00, 0.00, 0.00, 793.50, 408.00, 1201.50, 0.00, 1201.50, 0.00, NULL, NULL, '2026-02-09 18:55:01', '2026-02-09 18:55:01'),
(475, 'INV-0000331', 185, 2, 38, '2026-02-09 18:56:40', '2026-02-09', 'cash', 1300.00, 0.00, 0.00, 0.00, 0.00, 1300.00, 0.00, 1300.00, 1000.00, 300.00, 0.00, NULL, NULL, '2026-02-09 18:56:40', '2026-02-09 18:56:40'),
(476, 'INV-0000332', 186, 2, 38, '2026-02-09 18:57:24', '2026-02-09', 'cash', 2580.00, 0.00, 0.00, 0.00, 0.00, 2580.00, 0.00, 2580.00, 1000.00, 1580.00, 0.00, NULL, NULL, '2026-02-09 18:57:24', '2026-02-09 18:57:24'),
(477, 'INV-0000333', 49, 2, 38, '2026-02-09 18:58:41', '2026-02-09', 'bank', 21160.00, 0.00, 0.00, 0.00, 0.00, 21160.00, 585.50, 21160.00, 10000.00, 11745.50, 0.00, NULL, 'Zohaib Siddique (easy paisa)', '2026-02-09 18:58:41', '2026-02-09 19:30:21'),
(478, 'INV-0000334', 187, 2, 38, '2026-02-09 18:59:18', '2026-02-09', 'cash', 1020.00, 20.00, 0.00, 0.00, 0.00, 1000.00, 0.00, 1000.00, 1000.00, 0.00, 0.00, NULL, NULL, '2026-02-09 18:59:18', '2026-02-09 18:59:18'),
(479, 'INV-0000335', 188, 2, 38, '2026-02-09 18:59:51', '2026-02-09', 'cash', 736.00, 6.00, 0.00, 0.00, 0.00, 730.00, 0.00, 730.00, 730.00, 0.00, 0.00, NULL, NULL, '2026-02-09 18:59:51', '2026-02-09 18:59:51'),
(480, 'INV-0000336', 72, 2, 38, '2026-02-09 19:00:45', '2026-02-09', 'credit', 3151.00, 0.00, 0.00, 0.00, 0.00, 3151.00, 690.00, 3841.00, 0.00, 3841.00, 0.00, NULL, NULL, '2026-02-09 19:00:45', '2026-02-09 19:00:45'),
(481, 'INV-0000337', 189, 2, 38, '2026-02-09 19:01:50', '2026-02-09', 'credit', 27729.60, 0.00, 0.00, 0.00, 0.00, 27729.60, 0.00, 27729.60, 0.00, 27729.60, 0.00, NULL, NULL, '2026-02-09 19:01:50', '2026-02-09 19:01:50'),
(482, 'INV-0000338', 59, 2, 38, '2026-02-09 19:02:44', '2026-02-09', 'credit', 5764.00, 0.00, 0.00, 0.00, 0.00, 5764.00, 6093.80, 11857.80, 0.00, 11857.80, 0.00, NULL, NULL, '2026-02-09 19:02:44', '2026-02-09 19:02:44'),
(483, 'INV-0000339', 53, 2, 38, '2026-02-09 19:03:14', '2026-02-09', 'credit', 13728.00, 0.00, 0.00, 0.00, 0.00, 13728.00, 8812.80, 22540.80, 0.00, 22540.80, 0.00, NULL, NULL, '2026-02-09 19:03:14', '2026-02-09 19:03:14'),
(484, 'INV-0000340', 190, 2, 38, '2026-02-09 19:04:10', '2026-02-09', 'credit', 1276.00, 0.00, 0.00, 0.00, 0.00, 1276.00, 0.00, 1276.00, 0.00, 1276.00, 0.00, NULL, NULL, '2026-02-09 19:04:10', '2026-02-09 19:04:10'),
(485, 'INV-0000341', 68, 2, 38, '2026-02-09 19:04:53', '2026-02-09', 'credit', 805.00, 0.00, 0.00, 0.00, 0.00, 805.00, 18142.20, 18947.20, 0.00, 18947.20, 0.00, NULL, NULL, '2026-02-09 19:04:53', '2026-02-09 19:04:53'),
(486, 'INV-0000342', 91, 2, 38, '2026-02-09 19:05:51', '2026-02-09', 'credit', 1702.00, 0.00, 0.00, 0.00, 0.00, 1702.00, 27110.00, 28812.00, 0.00, 28812.00, 0.00, NULL, NULL, '2026-02-09 19:05:51', '2026-02-09 19:05:51'),
(487, 'INV-0000343', 39, 2, 38, '2026-02-09 19:09:26', '2026-02-09', 'credit', 11983.75, 0.00, 0.00, 0.00, 0.00, 11983.75, 228645.00, 240628.75, 0.00, 240628.75, 0.00, NULL, NULL, '2026-02-09 19:09:26', '2026-02-09 19:09:26'),
(488, 'INV-0000344', 155, 2, 38, '2026-02-09 19:10:07', '2026-02-09', 'cash', 900.00, 0.00, 0.00, 0.00, 0.00, 900.00, 0.00, 900.00, 900.00, 0.00, 0.00, NULL, NULL, '2026-02-09 19:10:07', '2026-02-09 19:10:07'),
(489, 'INV-0000345', 51, 2, 38, '2026-02-09 19:11:16', '2026-02-09', 'credit', 598.00, 0.00, 0.00, 0.00, 0.00, 598.00, -30.00, 568.00, 0.00, 568.00, 0.00, NULL, NULL, '2026-02-09 19:11:16', '2026-02-09 19:11:16'),
(490, 'INV-0000346', 50, 2, 38, '2026-02-09 19:15:05', '2026-02-09', 'credit', 21965.60, 0.00, 0.00, 0.00, 0.00, 21965.60, 0.00, 21965.60, 0.00, 21965.60, 0.00, NULL, NULL, '2026-02-09 19:15:05', '2026-02-09 19:15:05'),
(491, 'INV-0000347', 191, 2, 40, '2026-02-10 16:08:16', '2026-02-10', 'cash', 2160.00, 60.00, 0.00, 0.00, 0.00, 2100.00, 0.00, 2100.00, 2100.00, 0.00, 0.00, NULL, NULL, '2026-02-10 16:08:16', '2026-02-10 16:08:16'),
(493, 'INV-0000348', 60, 2, 40, '2026-02-10 16:53:51', '2026-02-10', 'credit', 4558.40, 0.00, 0.00, 0.00, 0.00, 4558.40, 11256.70, 15815.10, 0.00, 15815.10, 0.00, NULL, NULL, '2026-02-10 16:53:51', '2026-02-10 16:53:51'),
(494, 'INV-0000349', 42, 2, 40, '2026-02-10 16:55:06', '2026-02-10', 'credit', 5340.00, 0.00, 0.00, 0.00, 0.00, 5340.00, 36830.00, 42170.00, 0.00, 42170.00, 0.00, NULL, NULL, '2026-02-10 16:55:06', '2026-02-10 16:55:06'),
(495, 'INV-0000350', 91, 2, 40, '2026-02-10 16:56:08', '2026-02-10', 'credit', 1978.00, 0.00, 0.00, 0.00, 0.00, 1978.00, 27012.00, 28990.00, 0.00, 28990.00, 0.00, NULL, NULL, '2026-02-10 16:56:08', '2026-02-10 16:56:08'),
(496, 'INV-0000351', 50, 2, 40, '2026-02-10 16:57:41', '2026-02-10', 'credit', 9559.00, 0.00, 0.00, 0.00, 0.00, 9559.00, 0.00, 9559.00, 0.00, 9559.00, 0.00, NULL, NULL, '2026-02-10 16:57:41', '2026-02-10 18:38:23'),
(497, 'OPB-00192', 192, 2, NULL, '2026-02-10 17:02:29', NULL, 'credit', 6825.00, 0.00, 0.00, 0.00, 0.00, 6825.00, 0.00, 6825.00, 0.00, -6825.00, 0.00, 'Opening Balance', NULL, '2026-02-10 17:02:29', '2026-02-10 17:02:29'),
(499, 'INV-0000352', 192, 2, 40, '2026-02-10 17:05:00', '2026-02-10', 'credit', 17600.00, 0.00, 0.00, 0.00, 0.00, 17600.00, 6825.00, 24425.00, 0.00, 24425.00, 0.00, NULL, NULL, '2026-02-10 17:05:00', '2026-02-10 17:05:00'),
(500, 'INV-0000353', 193, 2, 40, '2026-02-10 17:06:18', NULL, 'cash', 2400.00, 0.00, 0.00, 0.00, 0.00, 2400.00, 0.00, 2400.00, 2400.00, 0.00, 0.00, NULL, NULL, '2026-02-10 17:06:18', '2026-02-10 17:06:18'),
(501, 'INV-0000354', 194, 2, 40, '2026-02-10 17:34:22', '2026-02-10', 'cash', 4950.00, 0.00, 0.00, 0.00, 0.00, 4950.00, 0.00, 4950.00, 4950.00, 0.00, 0.00, NULL, NULL, '2026-02-10 17:34:22', '2026-02-10 17:34:22'),
(502, 'INV-0000355', 171, 2, 40, '2026-02-10 17:59:25', '2026-02-10', 'cash', 10110.00, 0.00, 0.00, 0.00, 0.00, 10110.00, 0.00, 10110.00, 5000.00, 5110.00, 0.00, NULL, NULL, '2026-02-10 17:59:25', '2026-02-10 18:39:51'),
(503, 'INV-0000356', 39, 2, 40, '2026-02-10 18:57:11', '2026-02-10', 'credit', 5040.00, 0.00, 0.00, 0.00, 0.00, 5040.00, 240628.75, 245668.75, 0.00, 245668.75, 0.00, NULL, NULL, '2026-02-10 18:57:11', '2026-02-10 18:57:11'),
(504, 'INV-0000357', 195, 2, 40, '2026-02-10 19:02:26', '2026-02-10', 'credit', 9603.60, 0.00, 0.00, 0.00, 0.00, 9603.60, 0.00, 9603.60, 0.00, 9603.60, 0.00, NULL, NULL, '2026-02-10 19:02:26', '2026-02-10 19:02:26'),
(505, 'INV-0000358', 196, 2, 41, '2026-02-11 11:31:20', '2026-02-11', 'cash', 1675.00, 5.00, 0.00, 0.00, 0.00, 1670.00, 0.00, 1670.00, 1670.00, 0.00, 0.00, NULL, NULL, '2026-02-11 11:31:20', '2026-02-11 14:37:17'),
(506, 'INV-0000359', 197, 2, 41, '2026-02-11 12:46:45', '2026-02-11', 'credit', 6450.00, 0.00, 0.00, 0.00, 0.00, 6450.00, 0.00, 6450.00, 0.00, 6450.00, 0.00, NULL, NULL, '2026-02-11 12:46:45', '2026-02-11 12:46:45'),
(507, 'INV-0000360', 198, 2, 41, '2026-02-11 12:48:38', '2026-02-11', 'cash', 3499.90, 0.00, 0.00, 0.00, 0.00, 3499.90, 0.00, 3499.90, 2000.00, 1499.90, 0.00, NULL, NULL, '2026-02-11 12:48:38', '2026-02-11 12:48:38'),
(508, 'INV-0000361', 199, 2, 41, '2026-02-11 16:57:47', '2026-02-11', 'cash', 400.00, 0.00, 0.00, 0.00, 0.00, 400.00, 0.00, 400.00, 400.00, 0.00, 0.00, NULL, NULL, '2026-02-11 16:57:47', '2026-02-11 16:57:47'),
(509, 'INV-0000362', 49, 2, 41, '2026-02-11 17:52:55', '2026-02-11', 'credit', 1840.00, 0.00, 0.00, 0.00, 0.00, 1840.00, 533.50, 2373.50, 0.00, 2373.50, 0.00, NULL, NULL, '2026-02-11 17:52:55', '2026-02-11 17:52:55'),
(510, 'INV-0000363', 62, 2, 41, '2026-02-11 17:55:10', '2026-02-11', 'credit', 2852.00, 0.00, 0.00, 0.00, 0.00, 2852.00, 83.40, 2935.40, 0.00, 2935.40, 0.00, NULL, NULL, '2026-02-11 17:55:10', '2026-02-11 19:20:36'),
(511, 'INV-0000364', 71, 2, 41, '2026-02-11 17:56:39', '2026-02-11', 'credit', 2266.00, 0.00, 0.00, 0.00, 0.00, 2266.00, 46.00, 2312.00, 0.00, 2312.00, 0.00, NULL, NULL, '2026-02-11 17:56:39', '2026-02-11 17:56:39'),
(512, 'INV-0000365', 72, 2, 41, '2026-02-11 17:57:19', '2026-02-11', 'credit', 3036.00, 0.00, 0.00, 0.00, 0.00, 3036.00, 3841.00, 6877.00, 0.00, 6877.00, 0.00, NULL, NULL, '2026-02-11 17:57:19', '2026-02-11 17:57:19'),
(513, 'INV-0000366', 60, 2, 41, '2026-02-11 17:58:31', '2026-02-11', 'credit', 2145.00, 0.00, 0.00, 0.00, 0.00, 2145.00, 15815.10, 17960.10, 0.00, 17960.10, 0.00, NULL, NULL, '2026-02-11 17:58:31', '2026-02-11 17:58:31'),
(514, 'INV-0000367', 59, 2, 41, '2026-02-11 18:00:37', '2026-02-11', 'credit', 5049.00, 0.00, 0.00, 0.00, 0.00, 5049.00, 11857.80, 16906.80, 0.00, 16906.80, 0.00, NULL, NULL, '2026-02-11 18:00:37', '2026-02-11 18:00:37'),
(515, 'INV-0000368', 68, 2, 41, '2026-02-11 18:02:02', '2026-02-11', 'credit', 2792.20, 0.00, 0.00, 0.00, 0.00, 2792.20, 8158.20, 10950.40, 0.00, 10950.40, 0.00, NULL, NULL, '2026-02-11 18:02:02', '2026-02-11 18:02:02'),
(516, 'INV-0000369', 70, 2, 41, '2026-02-11 18:06:17', '2026-02-11', 'credit', 46277.40, 0.00, 0.00, 0.00, 0.00, 46277.40, 25832.59, 72109.99, 0.00, 72109.99, 0.00, NULL, NULL, '2026-02-11 18:06:17', '2026-02-11 18:06:17'),
(517, 'INV-0000370', 91, 2, 41, '2026-02-11 18:06:49', '2026-02-11', 'credit', 1379.50, 0.00, 0.00, 0.00, 0.00, 1379.50, 15990.00, 17369.50, 0.00, 17369.50, 0.00, NULL, NULL, '2026-02-11 18:06:49', '2026-02-11 19:14:03'),
(518, 'INV-0000371', 123, 2, 41, '2026-02-11 18:10:59', '2026-02-12', 'credit', 1804.00, 0.00, 0.00, 0.00, 0.00, 1804.00, 984.00, 2788.00, 0.00, 2788.00, 0.00, NULL, NULL, '2026-02-11 18:10:59', '2026-02-12 13:37:58'),
(519, 'INV-0000372', 76, 2, 41, '2026-02-11 18:12:40', '2026-02-11', 'credit', 803.00, 0.00, 0.00, 0.00, 0.00, 803.00, 0.00, 803.00, 0.00, 803.00, 0.00, NULL, NULL, '2026-02-11 18:12:40', '2026-02-11 18:12:40'),
(520, 'INV-0000373', 50, 2, 41, '2026-02-11 18:14:38', '2026-02-11', 'credit', 8271.90, 0.00, 0.00, 0.00, 0.00, 8271.90, 0.00, 8271.90, 0.00, 8271.90, 0.00, NULL, NULL, '2026-02-11 18:14:38', '2026-02-11 19:10:46'),
(521, 'INV-0000374', 200, 2, 41, '2026-02-11 18:16:37', '2026-02-11', 'credit', 27222.00, 0.00, 0.00, 0.00, 0.00, 27222.00, 0.00, 27222.00, 0.00, 27222.00, 0.00, NULL, NULL, '2026-02-11 18:16:37', '2026-02-11 18:16:37'),
(522, 'INV-0000375', 39, 2, 41, '2026-02-11 19:38:00', '2026-02-11', 'credit', 900.00, 0.00, 0.00, 0.00, 0.00, 900.00, 245668.75, 246568.75, 0.00, 246568.75, 0.00, NULL, NULL, '2026-02-11 19:38:00', '2026-02-11 19:38:00'),
(523, 'INV-0000376', 201, 2, 42, '2026-02-12 11:07:35', '2026-02-12', 'cash', 499.95, 0.00, 0.00, 0.00, 0.00, 499.95, 0.00, 499.95, 500.00, 0.00, 0.00, NULL, NULL, '2026-02-12 11:07:35', '2026-02-12 11:08:39'),
(524, 'INV-0000377', 202, 2, 42, '2026-02-12 18:00:18', '2026-02-12', 'cash', 500.00, 0.00, 0.00, 0.00, 0.00, 500.00, 0.00, 500.00, 500.00, 0.00, 0.00, NULL, NULL, '2026-02-12 18:00:18', '2026-02-12 18:00:18'),
(525, 'INV-0000378', 203, 2, 42, '2026-02-12 18:02:54', '2026-02-12', 'cash', 1100.00, 0.00, 0.00, 0.00, 0.00, 1100.00, 0.00, 1100.00, 1100.00, 0.00, 0.00, NULL, NULL, '2026-02-12 18:02:54', '2026-02-12 18:02:54'),
(526, 'INV-0000379', 136, 2, 42, '2026-02-12 18:04:36', '2026-02-12', 'credit', 16146.00, 0.00, 0.00, 0.00, 0.00, 16146.00, 0.00, 16146.00, 0.00, 16146.00, 0.00, NULL, NULL, '2026-02-12 18:04:36', '2026-02-12 18:04:36'),
(527, 'INV-0000380', 62, 2, 42, '2026-02-12 18:05:39', '2026-02-12', 'credit', 138.00, 0.00, 0.00, 0.00, 0.00, 138.00, 2935.40, 3073.40, 0.00, 3073.40, 0.00, NULL, NULL, '2026-02-12 18:05:39', '2026-02-12 18:05:39'),
(528, 'INV-0000381', 204, 2, 42, '2026-02-12 18:06:31', '2026-02-12', 'cash', 704.00, 4.00, 0.00, 0.00, 0.00, 700.00, 0.00, 700.00, 700.00, 0.00, 0.00, NULL, NULL, '2026-02-12 18:06:31', '2026-02-12 18:06:31'),
(529, 'INV-0000382', 82, 2, 42, '2026-02-12 18:07:10', '2026-02-12', 'credit', 528.00, 0.00, 0.00, 0.00, 0.00, 528.00, -2160.00, 5060.00, 0.00, -1632.00, 0.00, NULL, NULL, '2026-02-12 18:07:10', '2026-02-12 16:41:09'),
(530, 'INV-0000383', 74, 2, 42, '2026-02-12 18:10:33', '2026-02-12', 'credit', 7560.00, 0.00, 0.00, 0.00, 0.00, 7560.00, 109623.25, 117183.25, 0.00, 117183.25, 0.00, NULL, NULL, '2026-02-12 18:10:33', '2026-02-12 18:10:33'),
(531, 'INV-0000384', 73, 2, 42, '2026-02-12 18:12:08', '2026-02-12', 'credit', 8756.00, 0.00, 0.00, 0.00, 0.00, 8756.00, 753.20, 9509.20, 0.00, 9509.20, 0.00, NULL, NULL, '2026-02-12 18:12:08', '2026-02-12 18:12:08'),
(532, 'INV-0000385', 59, 2, 42, '2026-02-12 18:13:03', '2026-02-12', 'credit', 6314.00, 0.00, 0.00, 0.00, 0.00, 6314.00, 16906.80, 23220.80, 0.00, 23220.80, 0.00, NULL, NULL, '2026-02-12 18:13:03', '2026-02-12 18:13:03'),
(533, 'INV-0000386', 205, 2, 42, '2026-02-12 18:14:51', '2026-02-12', 'cash', 3325.00, 0.00, 0.00, 0.00, 0.00, 3325.00, 0.00, 3325.00, 1000.00, 2325.00, 0.00, NULL, NULL, '2026-02-12 18:14:51', '2026-02-12 18:14:51'),
(534, 'INV-0000387', 42, 2, 42, '2026-02-12 18:15:20', '2026-02-12', 'credit', 990.00, 0.00, 0.00, 0.00, 0.00, 990.00, 37170.00, 38160.00, 0.00, 38160.00, 0.00, NULL, NULL, '2026-02-12 18:15:20', '2026-02-12 18:15:20'),
(535, 'INV-0000388', 68, 2, 42, '2026-02-12 18:16:09', '2026-02-12', 'credit', 2669.00, 0.00, 0.00, 0.00, 0.00, 2669.00, 8950.40, 11619.40, 0.00, 11619.40, 0.00, NULL, NULL, '2026-02-12 18:16:09', '2026-02-12 18:16:09'),
(536, 'INV-0000389', 70, 2, 42, '2026-02-12 18:16:45', '2026-02-12', 'credit', 675.00, 0.00, 0.00, 0.00, 0.00, 675.00, 72109.99, 72784.99, 0.00, 72784.99, 0.00, NULL, NULL, '2026-02-12 18:16:45', '2026-02-12 18:16:45'),
(537, 'INV-0000390', 91, 2, 42, '2026-02-12 18:17:18', '2026-02-12', 'credit', 345.00, 0.00, 0.00, 0.00, 0.00, 345.00, 17369.50, 17714.50, 0.00, 17714.50, 0.00, NULL, NULL, '2026-02-12 18:17:18', '2026-02-12 18:17:18'),
(538, 'INV-0000391', 39, 2, 42, '2026-02-12 18:20:34', '2026-02-12', 'credit', 19400.00, 0.00, 0.00, 0.00, 0.00, 19400.00, 246568.75, 265968.75, 0.00, 265968.75, 0.00, NULL, NULL, '2026-02-12 18:20:34', '2026-02-12 18:20:34'),
(539, 'INV-0000392', 50, 2, 42, '2026-02-12 18:24:18', '2026-02-12', 'credit', 14287.86, 0.00, 0.00, 0.00, 0.00, 14287.86, 0.00, 14287.86, 0.00, 14287.86, 0.00, NULL, NULL, '2026-02-12 18:24:18', '2026-02-12 18:24:18'),
(540, 'INV-0000393', 149, 2, 42, '2026-02-12 18:30:56', '2026-02-12', 'cash', 18844.20, 44.20, 0.00, 0.00, 0.00, 18800.00, 0.00, 18800.00, 18800.00, 0.00, 0.00, NULL, NULL, '2026-02-12 18:30:56', '2026-02-12 18:33:59'),
(542, 'INV-0000394', 156, 2, 42, '2026-02-12 19:06:13', '2026-02-12', 'cash', 4494.00, 94.21, 0.00, 0.00, 0.00, 4399.79, 0.00, 4399.79, 4400.00, 0.00, 0.00, NULL, 'welcome fast food', '2026-02-12 19:06:13', '2026-02-12 19:06:47');

-- --------------------------------------------------------

--
-- Table structure for table `sale_items`
--

CREATE TABLE `sale_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sale_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `rate` decimal(12,2) NOT NULL,
  `discount` decimal(12,2) NOT NULL DEFAULT 0.00,
  `tax` decimal(12,2) NOT NULL DEFAULT 0.00,
  `units_sqft` decimal(12,2) NOT NULL DEFAULT 0.00,
  `line_total` decimal(12,2) NOT NULL,
  `length_input` decimal(12,4) DEFAULT NULL,
  `length_unit` enum('m','ft') DEFAULT NULL,
  `width_input` decimal(12,4) DEFAULT NULL,
  `width_unit` enum('in','ft') DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sale_items`
--

INSERT INTO `sale_items` (`id`, `sale_id`, `product_id`, `description`, `quantity`, `rate`, `discount`, `tax`, `units_sqft`, `line_total`, `length_input`, `length_unit`, `width_input`, `width_unit`, `created_at`, `updated_at`) VALUES
(122, 102, 28, '4ft ?? 2ft ?? 20', 20, 28.00, 0.00, 0.00, 160.00, 4480.00, 4.0000, 'ft', 2.0000, 'ft', '2026-01-12 08:53:05', '2026-01-12 08:53:05'),
(123, 102, 28, '8ft ?? 11.7ft ?? 1', 1, 28.00, 0.00, 0.00, 93.60, 2620.80, 8.0000, 'ft', 11.7000, 'ft', '2026-01-12 08:53:05', '2026-01-12 08:53:05'),
(202, 126, 28, NULL, 1, 24.00, 0.00, 0.00, 56.00, 1344.00, 4.0000, 'ft', 14.0000, 'ft', '2026-01-14 06:09:41', '2026-01-14 06:09:41'),
(203, 126, 28, NULL, 1, 24.00, 0.00, 0.00, 140.00, 3360.00, 4.0000, 'ft', 35.0000, 'ft', '2026-01-14 06:09:41', '2026-01-14 06:09:41'),
(204, 126, 28, NULL, 1, 24.00, 0.00, 0.00, 48.00, 1152.00, 3.0000, 'ft', 16.0000, 'ft', '2026-01-14 06:09:41', '2026-01-14 06:09:41'),
(205, 126, 28, NULL, 2, 24.00, 0.00, 0.00, 56.00, 1344.00, 2.0000, 'ft', 14.0000, 'ft', '2026-01-14 06:09:41', '2026-01-14 06:09:41'),
(206, 126, 28, NULL, 12, 24.00, 0.00, 0.00, 120.00, 2880.00, 5.0000, 'ft', 2.0000, 'ft', '2026-01-14 06:09:41', '2026-01-14 06:09:41'),
(207, 126, NULL, 'ring|xtend ring 12 standy', 1, 500.00, 0.00, 0.00, 0.00, 500.00, NULL, NULL, NULL, NULL, '2026-01-14 06:09:41', '2026-01-14 06:09:41'),
(208, 126, NULL, 'labour installation|back light labour 14x4.', 1, 50.00, 0.00, 0.00, 56.00, 2800.00, 4.0000, 'ft', 14.0000, 'ft', '2026-01-14 06:09:41', '2026-01-14 06:09:41'),
(209, 126, NULL, 'labour instalation|35x4', 1, 50.00, 0.00, 0.00, 140.00, 7000.00, 4.0000, 'ft', 35.0000, 'ft', '2026-01-14 06:09:41', '2026-01-14 06:09:41'),
(210, 126, NULL, 'labour|china flex', 1, 15.00, 0.00, 0.00, 104.00, 1560.00, 1.0000, 'ft', 104.0000, 'ft', '2026-01-14 06:09:41', '2026-01-14 06:09:41'),
(211, 127, 28, NULL, 4, 23.00, 0.00, 0.00, 500.00, 11500.00, 10.0000, 'ft', 12.5000, 'ft', '2026-01-14 06:21:28', '2026-01-14 06:21:28'),
(212, 127, 28, 'Room 1', 4, 23.00, 0.00, 0.00, 500.00, 11500.00, 10.0000, 'ft', 12.5000, 'ft', '2026-01-14 06:21:28', '2026-01-14 06:21:28'),
(213, 127, 28, 'room 2', 3, 23.00, 0.00, 0.00, 378.00, 8694.00, 10.5000, 'ft', 12.0000, 'ft', '2026-01-14 06:21:28', '2026-01-14 06:21:28'),
(214, 127, 28, 'kitchen', 1, 23.00, 0.00, 0.00, 120.00, 2760.00, 10.0000, 'ft', 12.0000, 'ft', '2026-01-14 06:21:28', '2026-01-14 06:21:28'),
(215, 127, 28, 'room 3', 1, 23.00, 0.00, 0.00, 180.00, 4140.00, 10.0000, 'ft', 18.0000, 'ft', '2026-01-14 06:21:28', '2026-01-14 06:21:28'),
(216, 127, 28, 'room 3', 1, 23.00, 0.00, 0.00, 110.00, 2530.00, 10.0000, 'ft', 11.0000, 'ft', '2026-01-14 06:21:28', '2026-01-14 06:21:28'),
(217, 128, 28, 'fifth avenu', 1, 20.00, 0.00, 0.00, 600.00, 12000.00, 40.0000, 'ft', 15.0000, 'ft', '2026-01-14 06:39:43', '2026-01-14 06:39:43'),
(218, 128, 28, '?????????? ?????????? ??????????', 3, 20.00, 0.00, 0.00, 600.00, 12000.00, 10.0000, 'ft', 20.0000, 'ft', '2026-01-14 06:39:43', '2026-01-14 06:39:43'),
(219, 128, 28, '?????? ????????', 15, 20.00, 0.00, 0.00, 90.00, 1800.00, 3.0000, 'ft', 2.0000, 'ft', '2026-01-14 06:39:43', '2026-01-14 06:39:43'),
(220, 128, 28, '?????? ????????', 1, 20.00, 0.00, 0.00, 40.00, 800.00, 4.0000, 'ft', 10.0000, 'ft', '2026-01-14 06:39:43', '2026-01-14 06:39:43'),
(221, 128, 28, 'Rios', 2, 20.00, 0.00, 0.00, 400.00, 8000.00, 10.0000, 'ft', 20.0000, 'ft', '2026-01-14 06:39:43', '2026-01-14 06:39:43'),
(222, 128, 28, '?????? ?????? ??????', 1, 20.00, 0.00, 0.00, 96.00, 1920.00, 8.0000, 'ft', 12.0000, 'ft', '2026-01-14 06:39:43', '2026-01-14 06:39:43'),
(223, 128, 28, 'beyond beauty', 1, 20.00, 0.00, 0.00, 48.00, 960.00, 4.0000, 'ft', 12.0000, 'ft', '2026-01-14 06:39:43', '2026-01-14 06:39:43'),
(224, 128, 28, '???????? ???? ????????????????', 4, 20.00, 0.00, 0.00, 96.00, 1920.00, 6.0000, 'ft', 4.0000, 'ft', '2026-01-14 06:39:43', '2026-01-14 06:39:43'),
(225, 128, 31, '?????? ?????? ??????', 2, 40.00, 0.00, 0.00, 12.00, 480.00, 3.0000, 'ft', 2.0000, 'ft', '2026-01-14 06:39:43', '2026-01-14 06:39:43'),
(226, 128, 31, '?????? ?????? ??????', 10, 40.00, 0.00, 0.00, 45.00, 1800.00, 3.0000, 'ft', 1.5000, 'ft', '2026-01-14 06:39:43', '2026-01-14 06:39:43'),
(227, 129, 28, NULL, 2, 22.00, 0.00, 0.00, 15.00, 330.00, 3.0000, 'ft', 2.5000, 'ft', '2026-01-14 06:54:19', '2026-01-14 06:54:19'),
(228, 129, 28, NULL, 1, 22.00, 0.00, 0.00, 15.00, 330.00, 2.5000, 'ft', 6.0000, 'ft', '2026-01-14 06:54:19', '2026-01-14 06:54:19'),
(229, 129, 28, NULL, 1, 22.00, 0.00, 0.00, 15.00, 330.00, 1.5000, 'ft', 10.0000, 'ft', '2026-01-14 06:54:19', '2026-01-14 06:54:19'),
(230, 129, 28, NULL, 1, 22.00, 0.00, 0.00, 48.00, 1056.00, 4.0000, 'ft', 12.0000, 'ft', '2026-01-14 06:54:19', '2026-01-14 06:54:19'),
(231, 129, 31, NULL, 1, 40.00, 0.00, 0.00, 84.00, 3360.00, 6.0000, 'ft', 14.0000, 'ft', '2026-01-14 06:54:19', '2026-01-14 06:54:19'),
(232, 129, 31, NULL, 2, 40.00, 0.00, 0.00, 180.00, 7200.00, 6.0000, 'ft', 15.0000, 'ft', '2026-01-14 06:54:19', '2026-01-14 06:54:19'),
(242, 132, 28, NULL, 1, 22.00, 0.00, 0.00, 9.00, 198.00, 1.0000, 'ft', 9.0000, 'ft', '2026-01-14 07:55:42', '2026-01-14 07:55:42'),
(243, 132, 28, NULL, 1, 22.00, 0.00, 0.00, 16.00, 352.00, 2.0000, 'ft', 8.0000, 'ft', '2026-01-14 07:55:42', '2026-01-14 07:55:42'),
(244, 130, 28, NULL, 2, 23.00, 0.00, 0.00, 12.00, 276.00, 3.0000, 'ft', 2.0000, 'ft', '2026-01-14 08:15:45', '2026-01-14 08:15:45'),
(245, 130, 28, NULL, 1, 23.00, 0.00, 0.00, 12.00, 276.00, 1.5000, 'ft', 8.0000, 'ft', '2026-01-14 08:15:45', '2026-01-14 08:15:45'),
(246, 130, 28, NULL, 1, 23.00, 0.00, 0.00, 40.00, 920.00, 2.0000, 'ft', 20.0000, 'ft', '2026-01-14 08:15:45', '2026-01-14 08:15:45'),
(247, 130, 28, NULL, 1, 23.00, 0.00, 0.00, 21.00, 483.00, 3.0000, 'ft', 7.0000, 'ft', '2026-01-14 08:15:45', '2026-01-14 08:15:45'),
(248, 130, 28, NULL, 1, 23.00, 0.00, 0.00, 10.00, 230.00, 2.0000, 'ft', 5.0000, 'ft', '2026-01-14 08:15:45', '2026-01-14 08:15:45'),
(249, 130, 28, NULL, 1, 23.00, 0.00, 0.00, 17.50, 402.50, 2.5000, 'ft', 7.0000, 'ft', '2026-01-14 08:15:45', '2026-01-14 08:15:45'),
(250, 133, 28, NULL, 1, 22.00, 0.00, 0.00, 72.00, 1584.00, 3.0000, 'ft', 24.0000, 'ft', '2026-01-15 06:05:45', '2026-01-15 06:05:45'),
(251, 133, 28, NULL, 1, 22.00, 0.00, 0.00, 168.00, 3696.00, 7.0000, 'ft', 24.0000, 'ft', '2026-01-15 06:05:45', '2026-01-15 06:05:45'),
(252, 133, 28, NULL, 2, 22.00, 0.00, 0.00, 16.00, 352.00, 1.0000, 'ft', 8.0000, 'ft', '2026-01-15 06:05:45', '2026-01-15 06:05:45'),
(253, 133, 28, NULL, 2, 22.00, 0.00, 0.00, 24.00, 528.00, 3.0000, 'ft', 4.0000, 'ft', '2026-01-15 06:05:45', '2026-01-15 06:05:45'),
(254, 133, 28, NULL, 1, 22.00, 0.00, 0.00, 20.00, 440.00, 2.5000, 'ft', 8.0000, 'ft', '2026-01-15 06:05:45', '2026-01-15 06:05:45'),
(255, 133, 28, NULL, 1, 22.00, 0.00, 0.00, 27.00, 594.00, 3.0000, 'ft', 9.0000, 'ft', '2026-01-15 06:05:45', '2026-01-15 06:05:45'),
(256, 133, 28, NULL, 1, 22.00, 0.00, 0.00, 30.00, 660.00, 3.0000, 'ft', 10.0000, 'ft', '2026-01-15 06:05:45', '2026-01-15 06:05:45'),
(257, 133, 28, NULL, 1, 22.00, 0.00, 0.00, 85.00, 1870.00, 8.5000, 'ft', 10.0000, 'ft', '2026-01-15 06:05:45', '2026-01-15 06:05:45'),
(258, 133, 28, NULL, 1, 22.00, 0.00, 0.00, 36.00, 792.00, 3.0000, 'ft', 12.0000, 'ft', '2026-01-15 06:05:45', '2026-01-15 06:05:45'),
(259, 133, 28, NULL, 1, 22.00, 0.00, 0.00, 108.00, 2376.00, 9.0000, 'ft', 12.0000, 'ft', '2026-01-15 06:05:45', '2026-01-15 06:05:45'),
(260, 133, 28, NULL, 1, 22.00, 0.00, 0.00, 120.00, 2640.00, 10.0000, 'ft', 12.0000, 'ft', '2026-01-15 06:05:45', '2026-01-15 06:05:45'),
(261, 133, 28, NULL, 1, 22.00, 0.00, 0.00, 18.00, 396.00, 2.0000, 'ft', 9.0000, 'ft', '2026-01-15 06:05:45', '2026-01-15 06:05:45'),
(262, 133, NULL, 'sabqa baqia', 1, 419.00, 0.00, 0.00, 0.00, 419.00, NULL, NULL, NULL, NULL, '2026-01-15 06:05:45', '2026-01-15 06:05:45'),
(263, 134, 28, NULL, 1, 30.00, 0.00, 0.00, 15.00, 450.00, 3.0000, 'ft', 5.0000, 'ft', '2026-01-15 07:16:31', '2026-01-15 07:16:31'),
(265, 137, 28, NULL, 1, 23.00, 0.00, 0.00, 39.00, 897.00, 6.5000, 'ft', 6.0000, 'ft', '2026-01-15 07:36:39', '2026-01-15 07:36:39'),
(266, 137, 28, NULL, 1, 23.00, 0.00, 0.00, 54.00, 1242.00, 6.0000, 'ft', 9.0000, 'ft', '2026-01-15 07:36:39', '2026-01-15 07:36:39'),
(267, 137, 28, NULL, 1, 23.00, 0.00, 0.00, 24.00, 552.00, 1.5000, 'ft', 16.0000, 'ft', '2026-01-15 07:36:39', '2026-01-15 07:36:39'),
(268, 138, 28, NULL, 2, 30.00, 0.00, 0.00, 42.80, 1284.00, 2.0000, 'ft', 10.7000, 'ft', '2026-01-15 07:40:03', '2026-01-15 07:40:03'),
(269, 138, 28, NULL, 1, 30.00, 0.00, 0.00, 22.00, 660.00, 2.0000, 'ft', 11.0000, 'ft', '2026-01-15 07:40:03', '2026-01-15 07:40:03'),
(273, 139, 28, NULL, 1, 25.00, 0.00, 0.00, 170.00, 4250.00, 10.0000, 'ft', 17.0000, 'ft', '2026-01-15 09:03:32', '2026-01-15 09:03:32'),
(274, 139, 28, NULL, 1, 25.00, 0.00, 0.00, 55.00, 1375.00, 5.0000, 'ft', 11.0000, 'ft', '2026-01-15 09:03:32', '2026-01-15 09:03:32'),
(275, 139, 28, NULL, 1, 25.00, 0.00, 0.00, 51.00, 1275.00, 3.0000, 'ft', 17.0000, 'ft', '2026-01-15 09:03:32', '2026-01-15 09:03:32'),
(276, 140, 28, NULL, 1, 25.00, 0.00, 0.00, 22.50, 562.50, 3.0000, 'ft', 7.5000, 'ft', '2026-01-15 09:16:30', '2026-01-15 09:16:30'),
(277, 141, 28, NULL, 1, 20.00, 0.00, 0.00, 256.00, 5120.00, 16.0000, 'ft', 16.0000, 'ft', '2026-01-15 09:49:22', '2026-01-15 09:49:22'),
(278, 141, 28, 'RIOS', 1, 20.00, 0.00, 0.00, 308.55, 6171.00, 16.5000, 'ft', 18.7000, 'ft', '2026-01-15 09:49:22', '2026-01-15 09:49:22'),
(279, 141, 31, 'HP CABLE', 1, 40.00, 0.00, 0.00, 27.00, 1080.00, 3.0000, 'ft', 9.0000, 'ft', '2026-01-15 09:49:22', '2026-01-15 09:49:22'),
(280, 141, 31, 'HP CABLE', 1, 40.00, 0.00, 0.00, 52.00, 2080.00, 4.0000, 'ft', 13.0000, 'ft', '2026-01-15 09:49:22', '2026-01-15 09:49:22'),
(281, 141, 31, 'HP CABLE', 1, 40.00, 0.00, 0.00, 60.00, 2400.00, 6.0000, 'ft', 10.0000, 'ft', '2026-01-15 09:49:22', '2026-01-15 09:49:22'),
(282, 141, 31, 'MAHNDI', 1, 20.00, 0.00, 0.00, 6.00, 120.00, 3.0000, 'ft', 2.0000, 'ft', '2026-01-15 09:49:22', '2026-01-15 09:49:22'),
(283, 141, NULL, 'SAABKA', 1, 1000.00, 0.00, 0.00, 0.00, 1000.00, NULL, NULL, NULL, NULL, '2026-01-15 09:49:22', '2026-01-15 09:49:22'),
(284, 143, 28, NULL, 2, 23.00, 0.00, 0.00, 10.00, 230.00, 1.0000, 'ft', 5.0000, 'ft', '2026-01-15 09:59:00', '2026-01-15 09:59:00'),
(285, 143, 28, NULL, 1, 23.00, 0.00, 0.00, 8.00, 184.00, 1.0000, 'ft', 8.0000, 'ft', '2026-01-15 09:59:00', '2026-01-15 09:59:00'),
(286, 143, 28, NULL, 1, 23.00, 0.00, 0.00, 5.00, 115.00, 2.0000, 'ft', 2.5000, 'ft', '2026-01-15 09:59:00', '2026-01-15 09:59:00'),
(287, 143, 28, NULL, 1, 23.00, 0.00, 0.00, 11.40, 262.20, 3.0000, 'ft', 3.8000, 'ft', '2026-01-15 09:59:00', '2026-01-15 09:59:00'),
(288, 143, NULL, 'SAABKA', 1, 1134.00, 0.00, 0.00, 0.00, 1134.00, NULL, NULL, NULL, NULL, '2026-01-15 09:59:00', '2026-01-15 09:59:00'),
(289, 144, 28, NULL, 1, 22.00, 0.00, 0.00, 8.00, 176.00, 1.0000, 'ft', 8.0000, 'ft', '2026-01-15 10:02:09', '2026-01-15 10:02:09'),
(290, 144, 28, NULL, 1, 22.00, 0.00, 0.00, 43.50, 957.00, 3.0000, 'ft', 14.5000, 'ft', '2026-01-15 10:02:09', '2026-01-15 10:02:09'),
(291, 144, 28, NULL, 2, 22.00, 0.00, 0.00, 300.00, 6600.00, 10.0000, 'ft', 15.0000, 'ft', '2026-01-15 10:02:09', '2026-01-15 10:02:09'),
(292, 144, 28, NULL, 1, 22.00, 0.00, 0.00, 130.00, 2860.00, 10.0000, 'ft', 13.0000, 'ft', '2026-01-15 10:02:09', '2026-01-15 10:02:09'),
(293, 145, 28, NULL, 1, 22.00, 0.00, 0.00, 128.00, 2816.00, 8.0000, 'ft', 16.0000, 'ft', '2026-01-15 10:17:01', '2026-01-15 10:17:01'),
(294, 145, 28, NULL, 1, 22.00, 0.00, 0.00, 20.00, 440.00, 2.0000, 'ft', 10.0000, 'ft', '2026-01-15 10:17:01', '2026-01-15 10:17:01'),
(295, 145, 28, NULL, 1, 22.00, 0.00, 0.00, 9.00, 198.00, 3.0000, 'ft', 3.0000, 'ft', '2026-01-15 10:17:01', '2026-01-15 10:17:01'),
(302, 147, 28, NULL, 1, 22.00, 0.00, 0.00, 22.00, 484.00, 2.0000, 'ft', 11.0000, 'ft', '2026-01-15 10:47:23', '2026-01-15 10:47:23'),
(303, 147, 28, NULL, 1, 22.00, 0.00, 0.00, 9.00, 198.00, 3.0000, 'ft', 3.0000, 'ft', '2026-01-15 10:47:23', '2026-01-15 10:47:23'),
(304, 147, 28, NULL, 1, 22.00, 0.00, 0.00, 16.50, 363.00, 3.0000, 'ft', 5.5000, 'ft', '2026-01-15 10:47:23', '2026-01-15 10:47:23'),
(305, 147, 28, NULL, 1, 22.00, 0.00, 0.00, 81.00, 1782.00, 9.0000, 'ft', 9.0000, 'ft', '2026-01-15 10:47:23', '2026-01-15 10:47:23'),
(306, 147, 28, NULL, 1, 22.00, 0.00, 0.00, 50.00, 1100.00, 10.0000, 'ft', 5.0000, 'ft', '2026-01-15 10:47:23', '2026-01-15 10:47:23'),
(307, 147, 28, NULL, 1, 22.00, 0.00, 0.00, 6.00, 132.00, 2.0000, 'ft', 3.0000, 'ft', '2026-01-15 10:47:23', '2026-01-15 10:47:23'),
(308, 147, 28, NULL, 2, 22.00, 0.00, 0.00, 6.00, 132.00, 2.0000, 'ft', 1.5000, 'ft', '2026-01-15 10:47:23', '2026-01-15 10:47:23'),
(309, 147, NULL, 'SAABKA', 1, 24238.00, 0.00, 0.00, 0.00, 24238.00, NULL, NULL, NULL, NULL, '2026-01-15 10:47:23', '2026-01-15 10:47:23'),
(310, 146, 28, NULL, 3, 23.00, 0.00, 0.00, 18.00, 414.00, 2.0000, 'ft', 3.0000, 'ft', '2026-01-15 10:59:41', '2026-01-15 10:59:41'),
(311, 146, 31, 'STAR', 1, 45.00, 0.00, 0.00, 9.00, 405.00, 3.0000, 'ft', 3.0000, 'ft', '2026-01-15 10:59:41', '2026-01-15 10:59:41'),
(312, 146, 32, 'ONE WAY VISSION', 1, 85.00, 0.00, 0.00, 9.00, 765.00, 4.5000, 'ft', 2.0000, 'ft', '2026-01-15 10:59:41', '2026-01-15 10:59:41'),
(313, 146, 28, NULL, 1, 23.00, 0.00, 0.00, 8.00, 184.00, 2.0000, 'ft', 4.0000, 'ft', '2026-01-15 10:59:41', '2026-01-15 10:59:41'),
(314, 146, 28, NULL, 1, 23.00, 0.00, 0.00, 6.00, 138.00, 2.0000, 'ft', 3.0000, 'ft', '2026-01-15 10:59:41', '2026-01-15 10:59:41'),
(315, 146, 28, NULL, 2, 23.00, 0.00, 0.00, 12.00, 276.00, 3.0000, 'ft', 2.0000, 'ft', '2026-01-15 10:59:41', '2026-01-15 10:59:41'),
(316, 148, 28, NULL, 1, 25.00, 0.00, 0.00, 60.00, 1500.00, 5.0000, 'ft', 12.0000, 'ft', '2026-01-15 11:29:00', '2026-01-15 11:29:00'),
(317, 148, 28, NULL, 1, 25.00, 0.00, 0.00, 40.00, 1000.00, 4.0000, 'ft', 10.0000, 'ft', '2026-01-15 11:29:00', '2026-01-15 11:29:00'),
(318, 148, 28, NULL, 1, 25.00, 0.00, 0.00, 22.50, 562.50, 3.0000, 'ft', 7.5000, 'ft', '2026-01-15 11:29:00', '2026-01-15 11:29:00'),
(323, 150, 28, NULL, 1, 23.00, 0.00, 0.00, 8.00, 184.00, 1.0000, 'ft', 8.0000, 'ft', '2026-01-15 18:28:19', '2026-01-15 18:28:19'),
(324, 150, 28, NULL, 1, 23.00, 0.00, 0.00, 4.00, 92.00, 2.0000, 'ft', 2.0000, 'ft', '2026-01-15 18:28:19', '2026-01-15 18:28:19'),
(325, 150, 28, NULL, 1, 23.00, 0.00, 0.00, 4.20, 96.60, 1.4000, 'ft', 3.0000, 'ft', '2026-01-15 18:28:19', '2026-01-15 18:28:19'),
(326, 150, 28, NULL, 4, 23.00, 0.00, 0.00, 24.00, 552.00, 3.0000, 'ft', 2.0000, 'ft', '2026-01-15 18:28:19', '2026-01-15 18:28:19'),
(327, 150, 28, NULL, 1, 23.00, 0.00, 0.00, 20.00, 460.00, 4.0000, 'ft', 5.0000, 'ft', '2026-01-15 18:28:19', '2026-01-15 18:28:19'),
(328, 150, 28, NULL, 1, 23.00, 0.00, 0.00, 24.00, 552.00, 4.0000, 'ft', 6.0000, 'ft', '2026-01-15 18:28:19', '2026-01-15 18:28:19'),
(329, 150, 28, NULL, 1, 23.00, 0.00, 0.00, 15.00, 345.00, 3.0000, 'ft', 5.0000, 'ft', '2026-01-15 18:28:19', '2026-01-15 18:28:19'),
(330, 150, 28, NULL, 1, 23.00, 0.00, 0.00, 12.00, 276.00, 3.0000, 'ft', 4.0000, 'ft', '2026-01-15 18:28:19', '2026-01-15 18:28:19'),
(331, 150, 28, NULL, 1, 23.00, 0.00, 0.00, 7.00, 161.00, 1.0000, 'ft', 7.0000, 'ft', '2026-01-15 18:28:19', '2026-01-15 18:28:19'),
(332, 150, 28, NULL, 1, 23.00, 0.00, 0.00, 20.00, 460.00, 2.5000, 'ft', 8.0000, 'ft', '2026-01-15 18:28:19', '2026-01-15 18:28:19'),
(333, 150, 28, NULL, 1, 23.00, 0.00, 0.00, 14.50, 333.50, 1.0000, 'ft', 14.5000, 'ft', '2026-01-15 18:28:19', '2026-01-15 18:28:19'),
(334, 150, 28, NULL, 1, 23.00, 0.00, 0.00, 27.00, 621.00, 2.0000, 'ft', 13.5000, 'ft', '2026-01-15 18:28:19', '2026-01-15 18:28:19'),
(335, 150, 28, NULL, 2, 23.00, 0.00, 0.00, 48.00, 1104.00, 3.0000, 'ft', 8.0000, 'ft', '2026-01-15 18:28:19', '2026-01-15 18:28:19'),
(336, 150, 28, NULL, 1, 23.00, 0.00, 0.00, 33.00, 759.00, 3.0000, 'ft', 11.0000, 'ft', '2026-01-15 18:28:19', '2026-01-15 18:28:19'),
(337, 150, NULL, 'saabka', 1, 6400.00, 0.00, 0.00, 0.00, 6400.00, NULL, NULL, NULL, NULL, '2026-01-15 18:28:19', '2026-01-15 18:28:19'),
(353, 151, 28, NULL, 11, 22.00, 0.00, 0.00, 165.00, 3630.00, 3.0000, 'ft', 5.0000, 'ft', '2026-01-15 18:36:12', '2026-01-15 18:36:12'),
(354, 151, 28, NULL, 1, 22.00, 0.00, 0.00, 13.50, 297.00, 4.5000, 'ft', 3.0000, 'ft', '2026-01-15 18:36:12', '2026-01-15 18:36:12'),
(355, 151, 28, NULL, 1, 22.00, 0.00, 0.00, 65.00, 1430.00, 10.0000, 'ft', 6.5000, 'ft', '2026-01-15 18:36:12', '2026-01-15 18:36:12'),
(356, 151, 28, NULL, 1, 22.00, 0.00, 0.00, 50.00, 1100.00, 4.0000, 'ft', 12.5000, 'ft', '2026-01-15 18:36:12', '2026-01-15 18:36:12'),
(357, 151, 28, NULL, 1, 22.00, 0.00, 0.00, 270.00, 5940.00, 10.0000, 'ft', 27.0000, 'ft', '2026-01-15 18:36:12', '2026-01-15 18:36:12'),
(358, 151, 28, NULL, 5, 22.00, 0.00, 0.00, 67.50, 1485.00, 4.5000, 'ft', 3.0000, 'ft', '2026-01-15 18:36:12', '2026-01-15 18:36:12'),
(359, 151, 28, NULL, 1, 22.00, 0.00, 0.00, 22.80, 501.60, 5.7000, 'ft', 4.0000, 'ft', '2026-01-15 18:36:12', '2026-01-15 18:36:12'),
(360, 151, 28, NULL, 1, 22.00, 0.00, 0.00, 4.00, 88.00, 1.0000, 'ft', 4.0000, 'ft', '2026-01-15 18:36:12', '2026-01-15 18:36:12'),
(361, 151, 28, NULL, 1, 22.00, 0.00, 0.00, 12.00, 264.00, 3.0000, 'ft', 4.0000, 'ft', '2026-01-15 18:36:12', '2026-01-15 18:36:12'),
(362, 151, 28, NULL, 1, 22.00, 0.00, 0.00, 12.50, 275.00, 2.5000, 'ft', 5.0000, 'ft', '2026-01-15 18:36:12', '2026-01-15 18:36:12'),
(363, 151, 28, NULL, 2, 22.00, 0.00, 0.00, 216.00, 4752.00, 9.0000, 'ft', 12.0000, 'ft', '2026-01-15 18:36:12', '2026-01-15 18:36:12'),
(364, 151, 28, NULL, 2, 22.00, 0.00, 0.00, 243.00, 5346.00, 9.0000, 'ft', 13.5000, 'ft', '2026-01-15 18:36:12', '2026-01-15 18:36:12'),
(365, 151, 28, NULL, 1, 22.00, 0.00, 0.00, 10.00, 220.00, 5.0000, 'ft', 2.0000, 'ft', '2026-01-15 18:36:12', '2026-01-15 18:36:12'),
(366, 151, 28, NULL, 1, 22.00, 0.00, 0.00, 14.00, 308.00, 4.0000, 'ft', 3.5000, 'ft', '2026-01-15 18:36:12', '2026-01-15 18:36:12'),
(367, 151, 28, NULL, 1, 22.00, 0.00, 0.00, 15.00, 330.00, 3.0000, 'ft', 5.0000, 'ft', '2026-01-15 18:36:12', '2026-01-15 18:36:12'),
(368, 151, NULL, 'saabka', 1, 28885.00, 0.00, 0.00, 0.00, 28885.00, NULL, NULL, NULL, NULL, '2026-01-15 18:36:12', '2026-01-15 18:36:12'),
(369, 152, 28, NULL, 1, 22.00, 0.00, 0.00, 12.00, 264.00, 4.0000, 'ft', 3.0000, 'ft', '2026-01-15 18:52:09', '2026-01-15 18:52:09'),
(370, 152, 28, NULL, 1, 22.00, 0.00, 0.00, 16.00, 352.00, 2.0000, 'ft', 8.0000, 'ft', '2026-01-15 18:52:09', '2026-01-15 18:52:09'),
(371, 152, 28, NULL, 1, 22.00, 0.00, 0.00, 10.00, 220.00, 1.0000, 'ft', 10.0000, 'ft', '2026-01-15 18:52:09', '2026-01-15 18:52:09'),
(372, 152, 28, NULL, 1, 22.00, 0.00, 0.00, 14.00, 308.00, 4.0000, 'ft', 3.5000, 'ft', '2026-01-15 18:52:09', '2026-01-15 18:52:09'),
(373, 152, 28, NULL, 1, 22.00, 0.00, 0.00, 8.00, 176.00, 1.0000, 'ft', 8.0000, 'ft', '2026-01-15 18:52:09', '2026-01-15 18:52:09'),
(374, 152, 28, NULL, 1, 22.00, 0.00, 0.00, 36.00, 792.00, 4.0000, 'ft', 9.0000, 'ft', '2026-01-15 18:52:09', '2026-01-15 18:52:09'),
(375, 152, NULL, 'saabka', 1, 4796.00, 0.00, 0.00, 0.00, 4796.00, NULL, NULL, NULL, NULL, '2026-01-15 18:52:09', '2026-01-15 18:52:09'),
(376, 153, 28, NULL, 6, 22.00, 0.00, 0.00, 24.00, 528.00, 2.0000, 'ft', 2.0000, 'ft', '2026-01-15 18:54:26', '2026-01-15 18:54:26'),
(377, 153, 28, NULL, 1, 22.00, 0.00, 0.00, 50.00, 1100.00, 5.0000, 'ft', 10.0000, 'ft', '2026-01-15 18:54:26', '2026-01-15 18:54:26'),
(378, 153, NULL, 'sabka  bill no 1795', 1, 5597.00, 0.00, 0.00, 0.00, 5597.00, NULL, NULL, NULL, NULL, '2026-01-15 18:54:26', '2026-01-15 18:54:26'),
(379, 154, 28, NULL, 1, 22.00, 0.00, 0.00, 2.00, 44.00, 1.0000, 'ft', 2.0000, 'ft', '2026-01-15 18:56:32', '2026-01-15 18:56:32'),
(380, 154, 28, NULL, 1, 22.00, 0.00, 0.00, 10.80, 237.60, 2.7000, 'ft', 4.0000, 'ft', '2026-01-15 18:56:32', '2026-01-15 18:56:32'),
(381, 154, 28, NULL, 1, 22.00, 0.00, 0.00, 12.80, 281.60, 2.0000, 'ft', 6.4000, 'ft', '2026-01-15 18:56:32', '2026-01-15 18:56:32'),
(382, 156, 28, 'super white creame', 19, 22.00, 0.00, 0.00, 3800.00, 83600.00, 10.0000, 'ft', 20.0000, 'ft', '2026-01-15 19:03:32', '2026-01-15 19:03:32'),
(383, 156, 28, NULL, 1, 22.00, 0.00, 0.00, 6.00, 132.00, 3.0000, 'ft', 2.0000, 'ft', '2026-01-15 19:03:32', '2026-01-15 19:03:32'),
(384, 156, 28, NULL, 4, 22.00, 0.00, 0.00, 120.00, 2640.00, 3.0000, 'ft', 10.0000, 'ft', '2026-01-15 19:03:32', '2026-01-15 19:03:32'),
(385, 156, 28, 'neopon', 2, 22.00, 0.00, 0.00, 36.00, 792.00, 3.0000, 'ft', 6.0000, 'ft', '2026-01-15 19:03:32', '2026-01-15 19:03:32'),
(386, 156, 28, NULL, 1, 22.00, 0.00, 0.00, 64.00, 1408.00, 8.0000, 'ft', 8.0000, 'ft', '2026-01-15 19:03:32', '2026-01-15 19:03:32'),
(387, 156, 28, NULL, 1, 22.00, 0.00, 0.00, 72.00, 1584.00, 8.0000, 'ft', 9.0000, 'ft', '2026-01-15 19:03:32', '2026-01-15 19:03:32'),
(388, 156, 28, 'rana javed trader', 1, 22.00, 0.00, 0.00, 36.00, 792.00, 4.0000, 'ft', 9.0000, 'ft', '2026-01-15 19:03:32', '2026-01-15 19:03:32'),
(391, 159, 28, NULL, 1, 20.00, 0.00, 0.00, 320.00, 6400.00, 20.0000, 'ft', 16.0000, 'ft', '2026-01-17 12:52:51', '2026-01-17 12:52:51'),
(392, 160, NULL, 'Remove 10x20 Double Side Hording Board (College Front)|Labour', 1, 5000.00, 0.00, 0.00, 0.00, 5000.00, NULL, NULL, NULL, NULL, '2026-01-17 16:30:36', '2026-01-17 16:30:36'),
(393, 160, NULL, '7x4 Backlight Board Removing|Labour', 1, 2500.00, 0.00, 0.00, 0.00, 2500.00, NULL, NULL, NULL, NULL, '2026-01-17 16:30:36', '2026-01-17 16:30:36'),
(394, 160, NULL, 'Sheid Remove|Labour', 1, 2500.00, 0.00, 0.00, 0.00, 2500.00, NULL, NULL, NULL, NULL, '2026-01-17 16:30:36', '2026-01-17 16:30:36'),
(395, 161, 28, NULL, 50, 22.00, 0.00, 0.00, 300.00, 6600.00, 3.0000, 'ft', 2.0000, 'ft', '2026-01-17 16:37:46', '2026-01-17 16:37:46'),
(396, 161, 28, NULL, 1, 22.00, 0.00, 0.00, 7.50, 165.00, 2.5000, 'ft', 3.0000, 'ft', '2026-01-17 16:37:46', '2026-01-17 16:37:46'),
(397, 162, 28, NULL, 1, 21.00, 0.00, 0.00, 12.60, 264.60, 2.0000, 'ft', 6.3000, 'ft', '2026-01-17 16:41:57', '2026-01-17 16:41:57'),
(398, 162, 28, NULL, 1, 21.00, 0.00, 0.00, 4.60, 96.60, 2.3000, 'ft', 2.0000, 'ft', '2026-01-17 16:41:57', '2026-01-17 16:41:57'),
(399, 163, 31, NULL, 2, 55.00, 0.00, 0.00, 60.00, 3300.00, 3.0000, 'ft', 10.0000, 'ft', '2026-01-17 16:50:43', '2026-01-17 16:50:43'),
(400, 164, 28, NULL, 2, 30.00, 0.00, 0.00, 30.00, 900.00, 3.0000, 'ft', 5.0000, 'ft', '2026-01-17 16:52:24', '2026-01-17 16:52:24'),
(401, 165, 28, NULL, 1, 23.00, 0.00, 0.00, 13.20, 303.60, 3.3000, 'ft', 4.0000, 'ft', '2026-01-17 17:36:03', '2026-01-17 17:36:03'),
(402, 165, 28, NULL, 1, 23.00, 0.00, 0.00, 8.00, 184.00, 1.0000, 'ft', 8.0000, 'ft', '2026-01-17 17:36:03', '2026-01-17 17:36:03'),
(403, 165, 28, NULL, 1, 23.00, 0.00, 0.00, 12.00, 276.00, 3.0000, 'ft', 4.0000, 'ft', '2026-01-17 17:36:03', '2026-01-17 17:36:03'),
(404, 165, 28, NULL, 1, 23.00, 0.00, 0.00, 19.20, 441.60, 3.0000, 'ft', 6.4000, 'ft', '2026-01-17 17:36:03', '2026-01-17 17:36:03'),
(405, 165, 28, NULL, 1, 23.00, 0.00, 0.00, 15.60, 358.80, 2.0000, 'ft', 7.8000, 'ft', '2026-01-17 17:36:03', '2026-01-17 17:36:03'),
(406, 165, NULL, 'Sabqa bill no:1924', 1, 2140.00, 0.00, 0.00, 0.00, 2140.00, NULL, NULL, NULL, NULL, '2026-01-17 17:36:03', '2026-01-17 17:36:03'),
(408, 167, 28, NULL, 1, 22.00, 0.00, 0.00, 96.00, 2112.00, 8.0000, 'ft', 12.0000, 'ft', '2026-01-17 18:03:09', '2026-01-17 18:03:09'),
(409, 167, 28, NULL, 1, 22.00, 0.00, 0.00, 18.00, 396.00, 3.0000, 'ft', 6.0000, 'ft', '2026-01-17 18:03:09', '2026-01-17 18:03:09'),
(410, 167, 28, NULL, 2, 22.00, 0.00, 0.00, 20.00, 440.00, 1.0000, 'ft', 10.0000, 'ft', '2026-01-17 18:03:09', '2026-01-17 18:03:09'),
(411, 167, 28, NULL, 1, 22.00, 0.00, 0.00, 15.00, 330.00, 5.0000, 'ft', 3.0000, 'ft', '2026-01-17 18:03:09', '2026-01-17 18:03:09'),
(412, 167, 28, NULL, 1, 22.00, 0.00, 0.00, 16.25, 357.50, 3.2500, 'ft', 5.0000, 'ft', '2026-01-17 18:03:09', '2026-01-17 18:03:09'),
(413, 167, 28, NULL, 1, 22.00, 0.00, 0.00, 80.00, 1760.00, 8.0000, 'ft', 10.0000, 'ft', '2026-01-17 18:03:09', '2026-01-17 18:03:09'),
(414, 167, 28, NULL, 1, 22.00, 0.00, 0.00, 10.00, 220.00, 1.0000, 'ft', 10.0000, 'ft', '2026-01-17 18:03:09', '2026-01-17 18:03:09'),
(415, 167, 28, NULL, 1, 22.00, 0.00, 0.00, 27.00, 594.00, 3.0000, 'ft', 9.0000, 'ft', '2026-01-17 18:03:09', '2026-01-17 18:03:09'),
(416, 167, 28, NULL, 1, 22.00, 0.00, 0.00, 200.00, 4400.00, 20.0000, 'ft', 10.0000, 'ft', '2026-01-17 18:03:09', '2026-01-17 18:03:09'),
(417, 167, 28, NULL, 1, 22.00, 0.00, 0.00, 28.00, 616.00, 2.0000, 'ft', 14.0000, 'ft', '2026-01-17 18:03:09', '2026-01-17 18:03:09'),
(418, 167, 28, NULL, 1, 22.00, 0.00, 0.00, 40.00, 880.00, 2.0000, 'ft', 20.0000, 'ft', '2026-01-17 18:03:09', '2026-01-17 18:03:09'),
(419, 167, 28, NULL, 1, 22.00, 0.00, 0.00, 286.00, 6292.00, 28.6000, 'ft', 10.0000, 'ft', '2026-01-17 18:03:09', '2026-01-17 18:03:09'),
(420, 168, 28, NULL, 3, 22.00, 0.00, 0.00, 6.75, 148.50, 1.5000, 'ft', 1.5000, 'ft', '2026-01-17 18:06:56', '2026-01-17 18:06:56'),
(421, 168, 28, NULL, 8, 22.00, 0.00, 0.00, 80.00, 1760.00, 4.0000, 'ft', 2.5000, 'ft', '2026-01-17 18:06:56', '2026-01-17 18:06:56'),
(422, 168, 28, NULL, 2, 22.00, 0.00, 0.00, 24.00, 528.00, 3.0000, 'ft', 4.0000, 'ft', '2026-01-17 18:06:56', '2026-01-17 18:06:56'),
(423, 168, 28, NULL, 1, 22.00, 0.00, 0.00, 15.00, 330.00, 3.0000, 'ft', 5.0000, 'ft', '2026-01-17 18:06:56', '2026-01-17 18:06:56'),
(426, 170, 28, NULL, 2, 22.00, 0.00, 0.00, 60.00, 1320.00, 3.0000, 'ft', 10.0000, 'ft', '2026-01-17 18:20:13', '2026-01-17 18:20:13'),
(427, 170, 28, NULL, 1, 22.00, 0.00, 0.00, 33.00, 726.00, 3.0000, 'ft', 11.0000, 'ft', '2026-01-17 18:20:13', '2026-01-17 18:20:13'),
(428, 170, 28, NULL, 1, 22.00, 0.00, 0.00, 55.00, 1210.00, 5.0000, 'ft', 11.0000, 'ft', '2026-01-17 18:20:13', '2026-01-17 18:20:13'),
(429, 171, 28, NULL, 1, 23.00, 0.00, 0.00, 4.50, 103.50, 3.0000, 'ft', 1.5000, 'ft', '2026-01-17 18:21:23', '2026-01-17 18:21:23'),
(430, 171, 28, NULL, 1, 23.00, 0.00, 0.00, 13.50, 310.50, 3.0000, 'ft', 4.5000, 'ft', '2026-01-17 18:21:23', '2026-01-17 18:21:23'),
(431, 171, 28, NULL, 1, 23.00, 0.00, 0.00, 12.00, 276.00, 3.0000, 'ft', 4.0000, 'ft', '2026-01-17 18:21:23', '2026-01-17 18:21:23'),
(439, 173, 28, NULL, 1, 22.00, 0.00, 0.00, 22.00, 484.00, 4.0000, 'ft', 5.5000, 'ft', '2026-01-17 18:28:16', '2026-01-17 18:28:16'),
(440, 173, 28, NULL, 1, 22.00, 0.00, 0.00, 24.00, 528.00, 4.0000, 'ft', 6.0000, 'ft', '2026-01-17 18:28:16', '2026-01-17 18:28:16'),
(465, 174, 28, NULL, 1, 22.00, 0.00, 0.00, 3.00, 66.00, 2.0000, 'ft', 1.5000, 'ft', '2026-01-17 18:53:56', '2026-01-17 18:53:56'),
(467, 174, 28, NULL, 2, 22.00, 0.00, 0.00, 20.00, 440.00, 4.0000, 'ft', 2.5000, 'ft', '2026-01-17 18:53:56', '2026-01-17 18:53:56'),
(468, 174, 28, NULL, 2, 22.00, 0.00, 0.00, 20.00, 440.00, 5.0000, 'ft', 2.0000, 'ft', '2026-01-17 18:53:56', '2026-01-17 18:53:56'),
(469, 174, 28, NULL, 1, 22.00, 0.00, 0.00, 24.00, 528.00, 4.0000, 'ft', 6.0000, 'ft', '2026-01-17 18:53:56', '2026-01-17 18:53:56'),
(470, 174, 28, NULL, 4, 22.00, 0.00, 0.00, 40.00, 880.00, 5.0000, 'ft', 2.0000, 'ft', '2026-01-17 18:53:56', '2026-01-17 18:53:56'),
(472, 174, NULL, 'RING|24 RING', 1, 240.00, 0.00, 0.00, 0.00, 240.00, NULL, NULL, NULL, NULL, '2026-01-17 18:53:56', '2026-01-17 18:53:56'),
(481, 175, 28, 'Rios', 2, 20.00, 0.00, 0.00, 400.00, 8000.00, 10.0000, 'ft', 20.0000, 'ft', '2026-01-18 11:12:57', '2026-01-18 11:12:57'),
(482, 166, 28, NULL, 30, 25.00, 0.00, 0.00, 180.00, 4500.00, 3.0000, 'ft', 2.0000, 'ft', '2026-01-18 11:42:23', '2026-01-18 11:42:23'),
(483, 176, 28, NULL, 1, 30.00, 0.00, 0.00, 27.00, 810.00, 3.0000, 'ft', 9.0000, 'ft', '2026-01-18 13:10:37', '2026-01-18 13:10:37'),
(489, 179, 28, NULL, 1, 25.00, 0.00, 0.00, 15.00, 375.00, 3.0000, 'ft', 5.0000, 'ft', '2026-01-18 17:27:52', '2026-01-18 17:27:52'),
(490, 179, 28, NULL, 1, 25.00, 0.00, 0.00, 4.00, 100.00, 2.0000, 'ft', 2.0000, 'ft', '2026-01-18 17:27:52', '2026-01-18 17:27:52'),
(491, 179, 28, NULL, 1, 25.00, 0.00, 0.00, 4.50, 112.50, 3.0000, 'ft', 1.5000, 'ft', '2026-01-18 17:27:52', '2026-01-18 17:27:52'),
(492, 180, 28, NULL, 1, 22.00, 0.00, 0.00, 10.00, 220.00, 2.5000, 'ft', 4.0000, 'ft', '2026-01-18 18:01:30', '2026-01-18 18:01:30'),
(493, 180, 28, NULL, 1, 22.00, 0.00, 0.00, 12.50, 275.00, 2.5000, 'ft', 5.0000, 'ft', '2026-01-18 18:01:30', '2026-01-18 18:01:30'),
(494, 180, 28, NULL, 1, 22.00, 0.00, 0.00, 15.00, 330.00, 3.0000, 'ft', 5.0000, 'ft', '2026-01-18 18:01:30', '2026-01-18 18:01:30'),
(495, 180, 28, NULL, 1, 22.00, 0.00, 0.00, 25.00, 550.00, 2.5000, 'ft', 10.0000, 'ft', '2026-01-18 18:01:30', '2026-01-18 18:01:30'),
(496, 181, 28, NULL, 2, 23.00, 0.00, 0.00, 32.00, 736.00, 4.0000, 'ft', 4.0000, 'ft', '2026-01-18 18:03:13', '2026-01-18 18:03:13'),
(497, 177, 28, NULL, 1, 30.00, 0.00, 0.00, 36.00, 1080.00, 8.0000, 'ft', 4.5000, 'ft', '2026-01-18 18:04:23', '2026-01-18 18:04:23'),
(498, 177, 28, NULL, 1, 30.00, 0.00, 0.00, 33.00, 990.00, 3.0000, 'ft', 11.0000, 'ft', '2026-01-18 18:04:23', '2026-01-18 18:04:23'),
(499, 177, 28, NULL, 1, 30.00, 0.00, 0.00, 6.00, 180.00, 2.0000, 'ft', 3.0000, 'ft', '2026-01-18 18:04:23', '2026-01-18 18:04:23'),
(500, 177, 28, NULL, 3, 30.00, 0.00, 0.00, 30.00, 900.00, 10.0000, 'ft', 1.0000, 'ft', '2026-01-18 18:04:23', '2026-01-18 18:04:23'),
(501, 182, 31, NULL, 1, 55.00, 0.00, 0.00, 30.00, 1650.00, 6.0000, 'ft', 5.0000, 'ft', '2026-01-18 18:08:03', '2026-01-18 18:08:03'),
(502, 183, 28, NULL, 1, 30.00, 0.00, 0.00, 9.00, 270.00, 3.0000, 'ft', 3.0000, 'ft', '2026-01-18 18:10:58', '2026-01-18 18:10:58'),
(503, 183, NULL, 'sabka bill mo 23', 1, 12780.00, 0.00, 0.00, 0.00, 12780.00, NULL, NULL, NULL, NULL, '2026-01-18 18:10:58', '2026-01-18 18:10:58'),
(504, 184, 28, NULL, 3, 26.25, 0.00, 0.00, 84.00, 2205.00, 4.0000, 'ft', 7.0000, 'ft', '2026-01-18 18:12:50', '2026-01-18 18:12:50'),
(505, 185, 28, NULL, 1, 22.00, 0.00, 0.00, 18.00, 396.00, 6.0000, 'ft', 3.0000, 'ft', '2026-01-18 18:13:38', '2026-01-18 18:13:38'),
(506, 185, 28, NULL, 6, 22.00, 0.00, 0.00, 36.00, 792.00, 3.0000, 'ft', 2.0000, 'ft', '2026-01-18 18:13:38', '2026-01-18 18:13:38'),
(507, 185, 28, NULL, 1, 22.00, 0.00, 0.00, 51.00, 1122.00, 3.0000, 'ft', 17.0000, 'ft', '2026-01-18 18:13:38', '2026-01-18 18:13:38'),
(508, 186, 28, NULL, 2, 22.00, 0.00, 0.00, 16.00, 352.00, 4.0000, 'ft', 2.0000, 'ft', '2026-01-18 18:15:40', '2026-01-18 18:15:40'),
(509, 186, 28, NULL, 2, 22.00, 0.00, 0.00, 18.00, 396.00, 3.0000, 'ft', 3.0000, 'ft', '2026-01-18 18:15:40', '2026-01-18 18:15:40'),
(510, 186, 28, NULL, 2, 22.00, 0.00, 0.00, 12.00, 264.00, 3.0000, 'ft', 2.0000, 'ft', '2026-01-18 18:15:40', '2026-01-18 18:15:40'),
(511, 186, 28, NULL, 5, 22.00, 0.00, 0.00, 40.00, 880.00, 2.0000, 'ft', 4.0000, 'ft', '2026-01-18 18:15:40', '2026-01-18 18:15:40'),
(512, 186, 28, NULL, 1, 22.00, 0.00, 0.00, 6.00, 132.00, 3.0000, 'ft', 2.0000, 'ft', '2026-01-18 18:15:40', '2026-01-18 18:15:40'),
(513, 186, 28, NULL, 3, 22.00, 0.00, 0.00, 72.00, 1584.00, 3.0000, 'ft', 8.0000, 'ft', '2026-01-18 18:15:40', '2026-01-18 18:15:40'),
(514, 187, 28, NULL, 15, 30.00, 0.00, 0.00, 45.00, 1350.00, 2.0000, 'ft', 1.5000, 'ft', '2026-01-18 18:16:56', '2026-01-18 18:16:56'),
(515, 188, 28, NULL, 1, 22.00, 0.00, 0.00, 6.00, 132.00, 1.0000, 'ft', 6.0000, 'ft', '2026-01-18 18:17:21', '2026-01-18 18:17:21'),
(516, 189, 28, NULL, 1, 23.00, 0.00, 0.00, 12.00, 276.00, 3.0000, 'ft', 4.0000, 'ft', '2026-01-18 18:18:57', '2026-01-18 18:18:57'),
(517, 189, 28, NULL, 1, 23.00, 0.00, 0.00, 15.00, 345.00, 3.0000, 'ft', 5.0000, 'ft', '2026-01-18 18:18:57', '2026-01-18 18:18:57'),
(518, 189, 28, NULL, 2, 23.00, 0.00, 0.00, 12.00, 276.00, 3.0000, 'ft', 2.0000, 'ft', '2026-01-18 18:18:57', '2026-01-18 18:18:57'),
(519, 189, 28, NULL, 1, 23.00, 0.00, 0.00, 12.00, 276.00, 3.0000, 'ft', 4.0000, 'ft', '2026-01-18 18:18:57', '2026-01-18 18:18:57'),
(535, 191, 28, NULL, 2, 30.00, 0.00, 0.00, 48.00, 1440.00, 6.0000, 'ft', 4.0000, 'ft', '2026-01-18 18:26:51', '2026-01-18 18:26:51'),
(536, 191, 28, NULL, 2, 30.00, 0.00, 0.00, 50.00, 1500.00, 5.0000, 'ft', 5.0000, 'ft', '2026-01-18 18:26:51', '2026-01-18 18:26:51'),
(537, 191, 28, NULL, 2, 30.00, 0.00, 0.00, 40.00, 1200.00, 5.0000, 'ft', 4.0000, 'ft', '2026-01-18 18:26:51', '2026-01-18 18:26:51'),
(538, 191, NULL, 'labour', 2, 10.00, 0.00, 0.00, 48.00, 480.00, 4.0000, 'ft', 6.0000, 'ft', '2026-01-18 18:26:51', '2026-01-18 18:26:51'),
(539, 192, 28, NULL, 2, 22.00, 0.00, 0.00, 230.00, 5060.00, 10.0000, 'ft', 11.5000, 'ft', '2026-01-18 18:28:25', '2026-01-18 18:28:25'),
(540, 192, 28, NULL, 1, 22.00, 0.00, 0.00, 190.00, 4180.00, 10.0000, 'ft', 19.0000, 'ft', '2026-01-18 18:28:25', '2026-01-18 18:28:25'),
(541, 192, 28, NULL, 1, 22.00, 0.00, 0.00, 200.00, 4400.00, 20.0000, 'ft', 10.0000, 'ft', '2026-01-18 18:28:25', '2026-01-18 18:28:25'),
(542, 192, 28, NULL, 10, 22.00, 0.00, 0.00, 60.00, 1320.00, 3.0000, 'ft', 2.0000, 'ft', '2026-01-18 18:28:25', '2026-01-18 18:28:25'),
(543, 192, 28, NULL, 1, 22.00, 0.00, 0.00, 40.00, 880.00, 4.0000, 'ft', 10.0000, 'ft', '2026-01-18 18:28:25', '2026-01-18 18:28:25'),
(544, 193, 28, NULL, 2, 23.00, 0.00, 0.00, 360.00, 8280.00, 9.0000, 'ft', 20.0000, 'ft', '2026-01-19 12:59:29', '2026-01-19 12:59:29'),
(545, 193, 28, NULL, 10, 23.00, 0.00, 0.00, 200.00, 4600.00, 4.0000, 'ft', 5.0000, 'ft', '2026-01-19 12:59:29', '2026-01-19 12:59:29'),
(546, 193, 28, NULL, 1, 23.00, 0.00, 0.00, 111.60, 2566.80, 9.0000, 'ft', 12.4000, 'ft', '2026-01-19 12:59:29', '2026-01-19 12:59:29'),
(547, 193, 28, NULL, 1, 23.00, 0.00, 0.00, 39.90, 917.70, 3.0000, 'ft', 13.3000, 'ft', '2026-01-19 12:59:29', '2026-01-19 12:59:29'),
(548, 193, 28, NULL, 1, 23.00, 0.00, 0.00, 42.00, 966.00, 10.0000, 'ft', 4.2000, 'ft', '2026-01-19 12:59:29', '2026-01-19 12:59:29'),
(549, 193, 28, NULL, 1, 23.00, 0.00, 0.00, 23.00, 529.00, 10.0000, 'ft', 2.3000, 'ft', '2026-01-19 12:59:29', '2026-01-19 12:59:29'),
(551, 195, 28, NULL, 1, 37.50, 0.00, 0.00, 8.00, 300.00, 1.0000, 'ft', 8.0000, 'ft', '2026-01-19 17:49:57', '2026-01-19 17:49:57'),
(552, 196, 28, NULL, 1, 25.00, 0.00, 0.00, 12.00, 300.00, 3.0000, 'ft', 4.0000, 'ft', '2026-01-19 18:01:47', '2026-01-19 18:01:47'),
(553, 197, 28, NULL, 1, 22.00, 0.00, 0.00, 3.00, 66.00, 2.0000, 'ft', 1.5000, 'ft', '2026-01-19 18:02:34', '2026-01-19 18:02:34'),
(557, 199, 28, NULL, 1, 22.00, 0.00, 0.00, 6.00, 132.00, 3.0000, 'ft', 2.0000, 'ft', '2026-01-19 18:18:19', '2026-01-19 18:18:19'),
(558, 199, 28, NULL, 3, 22.00, 0.00, 0.00, 60.00, 1320.00, 2.5000, 'ft', 8.0000, 'ft', '2026-01-19 18:18:19', '2026-01-19 18:18:19'),
(559, 200, 28, NULL, 1, 22.00, 0.00, 0.00, 28.00, 616.00, 2.0000, 'ft', 14.0000, 'ft', '2026-01-19 18:19:46', '2026-01-19 18:19:46'),
(561, 202, 28, NULL, 2, 23.00, 0.00, 0.00, 8.00, 184.00, 2.0000, 'ft', 2.0000, 'ft', '2026-01-19 18:22:46', '2026-01-19 18:22:46'),
(572, 203, 28, NULL, 2, 23.00, 0.00, 0.00, 320.00, 7360.00, 10.0000, 'ft', 16.0000, 'ft', '2026-01-19 18:29:10', '2026-01-19 18:29:10'),
(573, 203, 28, NULL, 2, 23.00, 0.00, 0.00, 40.00, 920.00, 5.0000, 'ft', 4.0000, 'ft', '2026-01-19 18:29:10', '2026-01-19 18:29:10'),
(574, 203, 28, NULL, 1, 23.00, 0.00, 0.00, 27.00, 621.00, 3.0000, 'ft', 9.0000, 'ft', '2026-01-19 18:29:10', '2026-01-19 18:29:10'),
(575, 203, 28, NULL, 1, 23.00, 0.00, 0.00, 36.00, 828.00, 3.0000, 'ft', 12.0000, 'ft', '2026-01-19 18:29:10', '2026-01-19 18:29:10'),
(576, 203, 28, NULL, 1, 23.00, 0.00, 0.00, 30.00, 690.00, 5.0000, 'ft', 6.0000, 'ft', '2026-01-19 18:29:10', '2026-01-19 18:29:10'),
(577, 204, 28, NULL, 2, 22.00, 0.00, 0.00, 48.00, 1056.00, 2.0000, 'ft', 12.0000, 'ft', '2026-01-19 18:30:59', '2026-01-19 18:30:59'),
(578, 204, 28, NULL, 2, 22.00, 0.00, 0.00, 12.00, 264.00, 3.0000, 'ft', 2.0000, 'ft', '2026-01-19 18:30:59', '2026-01-19 18:30:59'),
(579, 205, 28, NULL, 1, 22.00, 0.00, 0.00, 60.00, 1320.00, 3.0000, 'ft', 20.0000, 'ft', '2026-01-19 18:33:35', '2026-01-19 18:33:35'),
(580, 205, 28, NULL, 1, 22.00, 0.00, 0.00, 8.00, 176.00, 1.0000, 'ft', 8.0000, 'ft', '2026-01-19 18:33:35', '2026-01-19 18:33:35'),
(581, 205, 28, NULL, 1, 22.00, 0.00, 0.00, 16.00, 352.00, 4.0000, 'ft', 4.0000, 'ft', '2026-01-19 18:33:35', '2026-01-19 18:33:35'),
(582, 205, 28, NULL, 1, 22.00, 0.00, 0.00, 33.00, 726.00, 3.0000, 'ft', 11.0000, 'ft', '2026-01-19 18:33:35', '2026-01-19 18:33:35'),
(583, 205, 28, NULL, 1, 22.00, 0.00, 0.00, 24.00, 528.00, 4.0000, 'ft', 6.0000, 'ft', '2026-01-19 18:33:35', '2026-01-19 18:33:35'),
(584, 205, 28, NULL, 2, 22.00, 0.00, 0.00, 36.00, 792.00, 3.0000, 'ft', 6.0000, 'ft', '2026-01-19 18:33:35', '2026-01-19 18:33:35'),
(585, 205, 28, NULL, 2, 22.00, 0.00, 0.00, 48.00, 1056.00, 4.0000, 'ft', 6.0000, 'ft', '2026-01-19 18:33:35', '2026-01-19 18:33:35'),
(586, 205, 28, NULL, 1, 22.00, 0.00, 0.00, 40.00, 880.00, 4.0000, 'ft', 10.0000, 'ft', '2026-01-19 18:33:35', '2026-01-19 18:33:35'),
(587, 205, 31, NULL, 1, 40.00, 0.00, 0.00, 3.00, 120.00, 1.5000, 'ft', 2.0000, 'ft', '2026-01-19 18:33:35', '2026-01-19 18:33:35'),
(588, 205, 31, NULL, 1, 40.00, 0.00, 0.00, 3.00, 120.00, 1.0000, 'ft', 3.0000, 'ft', '2026-01-19 18:33:35', '2026-01-19 18:33:35'),
(589, 205, 31, NULL, 2, 40.00, 0.00, 0.00, 70.00, 2800.00, 5.0000, 'ft', 7.0000, 'ft', '2026-01-19 18:33:35', '2026-01-19 18:33:35'),
(590, 198, 28, NULL, 1, 23.00, 0.00, 0.00, 8.00, 184.00, 1.0000, 'ft', 8.0000, 'ft', '2026-01-19 18:49:13', '2026-01-19 18:49:13'),
(591, 198, 28, NULL, 2, 23.00, 0.00, 0.00, 48.00, 1104.00, 4.0000, 'ft', 6.0000, 'ft', '2026-01-19 18:49:13', '2026-01-19 18:49:13'),
(592, 198, 28, NULL, 2, 23.00, 0.00, 0.00, 24.00, 552.00, 3.0000, 'ft', 4.0000, 'ft', '2026-01-19 18:49:13', '2026-01-19 18:49:13'),
(595, 207, 28, NULL, 1, 20.00, 0.00, 0.00, 200.00, 4000.00, 10.0000, 'ft', 20.0000, 'ft', '2026-01-20 10:53:11', '2026-01-20 10:53:11'),
(598, 169, 28, NULL, 1, 23.00, 0.00, 0.00, 30.00, 690.00, 3.0000, 'ft', 10.0000, 'ft', '2026-01-20 12:13:19', '2026-01-20 12:13:19'),
(599, 169, 28, NULL, 1, 23.00, 0.00, 0.00, 132.00, 3036.00, 4.0000, 'ft', 33.0000, 'ft', '2026-01-20 12:13:19', '2026-01-20 12:13:19'),
(600, 208, 28, NULL, 1, 25.00, 0.00, 0.00, 12.00, 300.00, 4.0000, 'ft', 3.0000, 'ft', '2026-01-20 13:24:50', '2026-01-20 13:24:50'),
(601, 209, 28, NULL, 1, 22.00, 0.00, 0.00, 14.00, 308.00, 7.0000, 'ft', 2.0000, 'ft', '2026-01-20 13:50:15', '2026-01-20 13:50:15'),
(602, 209, 28, NULL, 1, 22.00, 0.00, 0.00, 2.00, 44.00, 1.0000, 'ft', 2.0000, 'ft', '2026-01-20 13:50:15', '2026-01-20 13:50:15'),
(603, 209, 28, NULL, 2, 22.00, 0.00, 0.00, 56.00, 1232.00, 7.0000, 'ft', 4.0000, 'ft', '2026-01-20 13:50:15', '2026-01-20 13:50:15'),
(604, 209, 28, NULL, 1, 22.00, 0.00, 0.00, 44.00, 968.00, 5.5000, 'ft', 8.0000, 'ft', '2026-01-20 13:50:15', '2026-01-20 13:50:15'),
(605, 209, 28, NULL, 1, 22.00, 0.00, 0.00, 8.00, 176.00, 1.0000, 'ft', 8.0000, 'ft', '2026-01-20 13:50:15', '2026-01-20 13:50:15'),
(606, 209, 28, NULL, 1, 22.00, 0.00, 0.00, 24.00, 528.00, 2.0000, 'ft', 12.0000, 'ft', '2026-01-20 13:50:15', '2026-01-20 13:50:15'),
(607, 209, 28, NULL, 3, 22.00, 0.00, 0.00, 360.00, 7920.00, 10.0000, 'ft', 12.0000, 'ft', '2026-01-20 13:50:15', '2026-01-20 13:50:15'),
(608, 210, 28, NULL, 1, 30.00, 0.00, 0.00, 15.00, 450.00, 3.0000, 'ft', 5.0000, 'ft', '2026-01-20 15:50:14', '2026-01-20 15:50:14'),
(609, 211, 28, NULL, 1, 23.00, 0.00, 0.00, 24.00, 552.00, 4.0000, 'ft', 6.0000, 'ft', '2026-01-20 15:51:29', '2026-01-20 15:51:29'),
(610, 211, 28, NULL, 1, 23.00, 0.00, 0.00, 22.00, 506.00, 4.0000, 'ft', 5.5000, 'ft', '2026-01-20 15:51:29', '2026-01-20 15:51:29'),
(611, 212, 28, NULL, 2, 23.00, 0.00, 0.00, 40.00, 920.00, 5.0000, 'ft', 4.0000, 'ft', '2026-01-20 15:54:10', '2026-01-20 15:54:10'),
(621, 215, 28, NULL, 1, 35.00, 0.00, 0.00, 10.00, 350.00, 5.0000, 'ft', 2.0000, 'ft', '2026-01-20 16:03:41', '2026-01-20 16:03:41'),
(622, 215, 28, NULL, 1, 35.00, 0.00, 0.00, 12.00, 420.00, 1.5000, 'ft', 8.0000, 'ft', '2026-01-20 16:03:41', '2026-01-20 16:03:41'),
(623, 215, 28, NULL, 1, 35.00, 0.00, 0.00, 64.00, 2240.00, 4.0000, 'ft', 16.0000, 'ft', '2026-01-20 16:03:41', '2026-01-20 16:03:41'),
(624, 215, 28, NULL, 1, 35.00, 0.00, 0.00, 25.60, 896.00, 4.0000, 'ft', 6.4000, 'ft', '2026-01-20 16:03:41', '2026-01-20 16:03:41'),
(625, 215, 28, NULL, 1, 35.00, 0.00, 0.00, 64.00, 2240.00, 4.0000, 'ft', 16.0000, 'ft', '2026-01-20 16:03:41', '2026-01-20 16:03:41'),
(626, 215, 28, NULL, 2, 35.00, 0.00, 0.00, 12.00, 420.00, 3.0000, 'ft', 2.0000, 'ft', '2026-01-20 16:03:41', '2026-01-20 16:03:41'),
(627, 215, 28, NULL, 2, 35.00, 0.00, 0.00, 32.00, 1120.00, 2.0000, 'ft', 8.0000, 'ft', '2026-01-20 16:03:41', '2026-01-20 16:03:41'),
(628, 215, 28, NULL, 2, 35.00, 0.00, 0.00, 32.00, 1120.00, 4.0000, 'ft', 4.0000, 'ft', '2026-01-20 16:03:41', '2026-01-20 16:03:41'),
(635, 213, 28, NULL, 1, 23.00, 0.00, 0.00, 13.80, 317.40, 2.3000, 'ft', 6.0000, 'ft', '2026-01-20 16:27:07', '2026-01-20 16:27:07'),
(636, 213, 28, NULL, 4, 23.00, 0.00, 0.00, 72.00, 1656.00, 3.0000, 'ft', 6.0000, 'ft', '2026-01-20 16:27:07', '2026-01-20 16:27:07'),
(637, 213, 28, NULL, 1, 23.00, 0.00, 0.00, 36.00, 828.00, 3.0000, 'ft', 12.0000, 'ft', '2026-01-20 16:27:07', '2026-01-20 16:27:07'),
(638, 190, 28, NULL, 2, 23.00, 0.00, 0.00, 351.00, 8073.00, 19.5000, 'ft', 9.0000, 'ft', '2026-01-20 16:34:33', '2026-01-20 16:34:33'),
(639, 190, 28, NULL, 1, 23.00, 0.00, 0.00, 126.00, 2898.00, 9.0000, 'ft', 14.0000, 'ft', '2026-01-20 16:34:33', '2026-01-20 16:34:33'),
(640, 190, 28, NULL, 1, 23.00, 0.00, 0.00, 56.00, 1288.00, 4.0000, 'ft', 14.0000, 'ft', '2026-01-20 16:34:33', '2026-01-20 16:34:33'),
(641, 190, 28, NULL, 1, 23.00, 0.00, 0.00, 31.50, 724.50, 9.0000, 'ft', 3.5000, 'ft', '2026-01-20 16:34:33', '2026-01-20 16:34:33'),
(642, 190, 28, NULL, 1, 23.00, 0.00, 0.00, 18.00, 414.00, 2.0000, 'ft', 9.0000, 'ft', '2026-01-20 16:34:33', '2026-01-20 16:34:33'),
(643, 190, 28, NULL, 45, 23.00, 0.00, 0.00, 270.00, 6210.00, 3.0000, 'ft', 2.0000, 'ft', '2026-01-20 16:34:33', '2026-01-20 16:34:33'),
(644, 190, 28, NULL, 1, 23.00, 0.00, 0.00, 27.00, 621.00, 3.0000, 'ft', 9.0000, 'ft', '2026-01-20 16:34:33', '2026-01-20 16:34:33'),
(645, 190, 28, NULL, 1, 23.00, 0.00, 0.00, 200.00, 4600.00, 20.0000, 'ft', 10.0000, 'ft', '2026-01-20 16:34:33', '2026-01-20 16:34:33'),
(646, 190, 28, NULL, 3, 23.00, 0.00, 0.00, 150.00, 3450.00, 5.0000, 'ft', 10.0000, 'ft', '2026-01-20 16:34:33', '2026-01-20 16:34:33'),
(647, 190, 28, NULL, 5, 23.00, 0.00, 0.00, 30.00, 690.00, 3.0000, 'ft', 2.0000, 'ft', '2026-01-20 16:34:33', '2026-01-20 16:34:33'),
(648, 190, 28, NULL, 1, 23.00, 0.00, 0.00, 19.50, 448.50, 3.0000, 'ft', 6.5000, 'ft', '2026-01-20 16:34:33', '2026-01-20 16:34:33'),
(649, 190, 28, NULL, 1, 23.00, 0.00, 0.00, 28.00, 644.00, 2.0000, 'ft', 14.0000, 'ft', '2026-01-20 16:34:33', '2026-01-20 16:34:33'),
(650, 190, 28, NULL, 1, 23.00, 0.00, 0.00, 8.00, 184.00, 2.0000, 'ft', 4.0000, 'ft', '2026-01-20 16:34:33', '2026-01-20 16:34:33'),
(651, 190, NULL, 'back light|back light', 2, 80.00, 0.00, 0.00, 40.00, 3200.00, 5.0000, 'ft', 4.0000, 'ft', '2026-01-20 16:34:33', '2026-01-20 16:34:33'),
(652, 190, 28, 'naksha', 1, 23.00, 0.00, 0.00, 12.00, 276.00, 3.0000, 'ft', 4.0000, 'ft', '2026-01-20 16:34:33', '2026-01-20 16:34:33'),
(653, 190, 28, NULL, 5, 23.00, 0.00, 0.00, 40.00, 920.00, 2.0000, 'ft', 4.0000, 'ft', '2026-01-20 16:34:33', '2026-01-20 16:34:33'),
(654, 190, 28, NULL, 2, 23.00, 0.00, 0.00, 60.00, 1380.00, 3.0000, 'ft', 10.0000, 'ft', '2026-01-20 16:34:33', '2026-01-20 16:34:33'),
(655, 190, 28, NULL, 1, 23.00, 0.00, 0.00, 60.00, 1380.00, 5.0000, 'ft', 12.0000, 'ft', '2026-01-20 16:34:33', '2026-01-20 16:34:33'),
(656, 190, 28, NULL, 2, 23.00, 0.00, 0.00, 468.00, 10764.00, 12.0000, 'ft', 19.5000, 'ft', '2026-01-20 16:34:33', '2026-01-20 16:34:33'),
(657, 190, 28, NULL, 2, 23.00, 0.00, 0.00, 312.00, 7176.00, 12.0000, 'ft', 13.0000, 'ft', '2026-01-20 16:34:33', '2026-01-20 16:34:33'),
(658, 190, 32, NULL, 1, 80.00, 0.00, 0.00, 13.50, 1080.00, 3.0000, 'ft', 4.5000, 'ft', '2026-01-20 16:34:33', '2026-01-20 16:34:33'),
(659, 190, 32, NULL, 5, 80.00, 0.00, 0.00, 52.50, 4200.00, 3.0000, 'ft', 3.5000, 'ft', '2026-01-20 16:34:33', '2026-01-20 16:34:33'),
(660, 190, 32, NULL, 1, 80.00, 0.00, 0.00, 12.00, 960.00, 1.0000, 'ft', 12.0000, 'ft', '2026-01-20 16:34:33', '2026-01-20 16:34:33'),
(661, 190, 32, NULL, 1, 80.00, 0.00, 0.00, 13.50, 1080.00, 3.0000, 'ft', 4.5000, 'ft', '2026-01-20 16:34:33', '2026-01-20 16:34:33'),
(662, 190, 32, NULL, 1, 80.00, 0.00, 0.00, 13.50, 1080.00, 3.0000, 'ft', 4.5000, 'ft', '2026-01-20 16:34:33', '2026-01-20 16:34:33'),
(663, 190, 34, NULL, 1, 80.00, 0.00, 0.00, 68.40, 5472.00, 15.2000, 'ft', 4.5000, 'ft', '2026-01-20 16:34:33', '2026-01-20 16:34:33'),
(664, 217, 28, NULL, 8, 25.00, 0.00, 0.00, 48.00, 1200.00, 3.0000, 'ft', 2.0000, 'ft', '2026-01-20 17:21:28', '2026-01-20 17:21:28'),
(665, 201, 28, NULL, 1, 25.00, 0.00, 0.00, 20.00, 500.00, 5.0000, 'ft', 4.0000, 'ft', '2026-01-20 17:22:21', '2026-01-20 17:22:21'),
(666, 216, 31, NULL, 1, 40.00, 0.00, 0.00, 24.40, 976.00, 4.0000, 'ft', 6.1000, 'ft', '2026-01-20 17:33:23', '2026-01-20 17:33:23'),
(667, 216, 31, NULL, 1, 40.00, 0.00, 0.00, 22.00, 880.00, 2.0000, 'ft', 11.0000, 'ft', '2026-01-20 17:33:23', '2026-01-20 17:33:23'),
(668, 216, 28, NULL, 1, 22.00, 0.00, 0.00, 4.00, 88.00, 2.0000, 'ft', 2.0000, 'ft', '2026-01-20 17:33:23', '2026-01-20 17:33:23'),
(669, 216, 28, NULL, 1, 22.00, 0.00, 0.00, 21.00, 462.00, 3.0000, 'ft', 7.0000, 'ft', '2026-01-20 17:33:23', '2026-01-20 17:33:23'),
(670, 216, 28, NULL, 1, 22.00, 0.00, 0.00, 33.00, 726.00, 3.0000, 'ft', 11.0000, 'ft', '2026-01-20 17:33:23', '2026-01-20 17:33:23'),
(671, 216, 28, NULL, 1, 22.00, 0.00, 0.00, 36.00, 792.00, 3.0000, 'ft', 12.0000, 'ft', '2026-01-20 17:33:23', '2026-01-20 17:33:23'),
(672, 216, 28, NULL, 13, 22.00, 0.00, 0.00, 78.00, 1716.00, 3.0000, 'ft', 2.0000, 'ft', '2026-01-20 17:33:23', '2026-01-20 17:33:23'),
(673, 216, 31, NULL, 1, 40.00, 0.00, 0.00, 20.00, 800.00, 2.0000, 'ft', 10.0000, 'ft', '2026-01-20 17:33:23', '2026-01-20 17:33:23'),
(674, 216, 31, NULL, 1, 40.00, 0.00, 0.00, 10.00, 400.00, 1.0000, 'ft', 10.0000, 'ft', '2026-01-20 17:33:23', '2026-01-20 17:33:23'),
(680, 220, 31, NULL, 4, 40.00, 0.00, 0.00, 40.00, 1600.00, 5.0000, 'ft', 2.0000, 'ft', '2026-01-21 11:18:18', '2026-01-21 11:18:18'),
(681, 220, NULL, 'standees|4 standees|standees|4 standees', 1, 1400.00, 0.00, 0.00, 0.00, 1400.00, NULL, NULL, NULL, NULL, '2026-01-21 11:18:18', '2026-01-21 11:18:18'),
(683, 221, 28, NULL, 1, 30.00, 0.00, 0.00, 18.00, 540.00, 3.0000, 'ft', 6.0000, 'ft', '2026-01-21 15:34:09', '2026-01-21 15:34:09'),
(684, 222, 28, NULL, 1, 23.00, 0.00, 0.00, 3.00, 69.00, 1.0000, 'ft', 3.0000, 'ft', '2026-01-21 15:36:25', '2026-01-21 15:36:25'),
(685, 222, 28, NULL, 1, 23.00, 0.00, 0.00, 14.00, 322.00, 1.0000, 'ft', 14.0000, 'ft', '2026-01-21 15:36:25', '2026-01-21 15:36:25'),
(686, 222, 28, NULL, 1, 23.00, 0.00, 0.00, 28.00, 644.00, 2.0000, 'ft', 14.0000, 'ft', '2026-01-21 15:36:25', '2026-01-21 15:36:25'),
(687, 219, 28, NULL, 1, 25.00, 0.00, 0.00, 8.00, 200.00, 1.0000, 'ft', 8.0000, 'ft', '2026-01-21 15:38:07', '2026-01-21 15:38:07'),
(688, 219, 28, NULL, 2, 25.00, 0.00, 0.00, 6.00, 150.00, 1.5000, 'ft', 2.0000, 'ft', '2026-01-21 15:38:07', '2026-01-21 15:38:07'),
(689, 223, 28, NULL, 1, 44.45, 0.00, 0.00, 4.50, 200.03, 1.5000, 'ft', 3.0000, 'ft', '2026-01-21 16:54:41', '2026-01-21 16:54:41'),
(691, 225, 28, NULL, 1, 30.00, 0.00, 0.00, 10.00, 300.00, 2.5000, 'ft', 4.0000, 'ft', '2026-01-21 16:57:08', '2026-01-21 16:57:08'),
(692, 225, 28, NULL, 1, 30.00, 0.00, 0.00, 4.20, 126.00, 1.0000, 'ft', 4.2000, 'ft', '2026-01-21 16:57:08', '2026-01-21 16:57:08'),
(696, 218, 28, NULL, 1, 30.00, 0.00, 0.00, 17.50, 525.00, 5.0000, 'ft', 3.5000, 'ft', '2026-01-21 18:02:09', '2026-01-21 18:02:09'),
(697, 206, 28, NULL, 1, 25.00, 0.00, 0.00, 14.40, 360.00, 2.4000, 'ft', 6.0000, 'ft', '2026-01-21 18:04:42', '2026-01-21 18:04:42'),
(698, 206, 28, NULL, 2, 25.00, 0.00, 0.00, 24.00, 600.00, 2.0000, 'ft', 6.0000, 'ft', '2026-01-21 18:04:42', '2026-01-21 18:04:42'),
(699, 227, 28, NULL, 2, 22.00, 0.00, 0.00, 12.00, 264.00, 3.0000, 'ft', 2.0000, 'ft', '2026-01-21 18:06:11', '2026-01-21 18:06:11'),
(700, 227, 28, NULL, 1, 22.00, 0.00, 0.00, 15.00, 330.00, 3.0000, 'ft', 5.0000, 'ft', '2026-01-21 18:06:11', '2026-01-21 18:06:11'),
(701, 228, 28, NULL, 1, 22.00, 0.00, 0.00, 10.00, 220.00, 5.0000, 'ft', 2.0000, 'ft', '2026-01-21 18:16:36', '2026-01-21 18:16:36'),
(702, 228, 28, NULL, 3, 22.00, 0.00, 0.00, 27.00, 594.00, 3.0000, 'ft', 3.0000, 'ft', '2026-01-21 18:16:36', '2026-01-21 18:16:36'),
(703, 228, 28, NULL, 2, 22.00, 0.00, 0.00, 20.00, 440.00, 2.5000, 'ft', 4.0000, 'ft', '2026-01-21 18:16:36', '2026-01-21 18:16:36'),
(704, 228, 28, NULL, 1, 22.00, 0.00, 0.00, 12.00, 264.00, 3.0000, 'ft', 4.0000, 'ft', '2026-01-21 18:16:36', '2026-01-21 18:16:36'),
(705, 228, 28, NULL, 1, 22.00, 0.00, 0.00, 15.00, 330.00, 3.0000, 'ft', 5.0000, 'ft', '2026-01-21 18:16:36', '2026-01-21 18:16:36'),
(706, 228, 28, NULL, 1, 22.00, 0.00, 0.00, 21.00, 462.00, 3.0000, 'ft', 7.0000, 'ft', '2026-01-21 18:16:36', '2026-01-21 18:16:36'),
(707, 228, 28, NULL, 2, 22.00, 0.00, 0.00, 16.00, 352.00, 1.0000, 'ft', 8.0000, 'ft', '2026-01-21 18:16:36', '2026-01-21 18:16:36'),
(708, 228, 28, NULL, 1, 22.00, 0.00, 0.00, 18.00, 396.00, 2.0000, 'ft', 9.0000, 'ft', '2026-01-21 18:16:36', '2026-01-21 18:16:36'),
(709, 228, 28, NULL, 1, 22.00, 0.00, 0.00, 30.00, 660.00, 3.0000, 'ft', 10.0000, 'ft', '2026-01-21 18:16:36', '2026-01-21 18:16:36'),
(710, 228, 28, NULL, 1, 22.00, 0.00, 0.00, 43.50, 957.00, 3.0000, 'ft', 14.5000, 'ft', '2026-01-21 18:16:36', '2026-01-21 18:16:36'),
(711, 229, 28, NULL, 1, 22.00, 0.00, 0.00, 3.00, 66.00, 1.5000, 'ft', 2.0000, 'ft', '2026-01-21 18:18:29', '2026-01-21 18:18:29'),
(712, 229, 28, NULL, 1, 22.00, 0.00, 0.00, 6.00, 132.00, 3.0000, 'ft', 2.0000, 'ft', '2026-01-21 18:18:29', '2026-01-21 18:18:29'),
(713, 229, 28, NULL, 2, 22.00, 0.00, 0.00, 16.40, 360.80, 4.1000, 'ft', 2.0000, 'ft', '2026-01-21 18:18:29', '2026-01-21 18:18:29'),
(714, 229, 28, NULL, 1, 22.00, 0.00, 0.00, 18.00, 396.00, 3.0000, 'ft', 6.0000, 'ft', '2026-01-21 18:18:29', '2026-01-21 18:18:29'),
(715, 229, 28, NULL, 1, 22.00, 0.00, 0.00, 24.00, 528.00, 3.0000, 'ft', 8.0000, 'ft', '2026-01-21 18:18:29', '2026-01-21 18:18:29'),
(716, 229, 28, NULL, 1, 22.00, 0.00, 0.00, 20.00, 440.00, 2.0000, 'ft', 10.0000, 'ft', '2026-01-21 18:18:29', '2026-01-21 18:18:29'),
(717, 229, 28, NULL, 1, 22.00, 0.00, 0.00, 33.00, 726.00, 3.0000, 'ft', 11.0000, 'ft', '2026-01-21 18:18:29', '2026-01-21 18:18:29'),
(718, 229, 28, NULL, 1, 22.00, 0.00, 0.00, 39.00, 858.00, 3.0000, 'ft', 13.0000, 'ft', '2026-01-21 18:18:29', '2026-01-21 18:18:29'),
(719, 229, 28, NULL, 1, 22.00, 0.00, 0.00, 46.50, 1023.00, 3.0000, 'ft', 15.5000, 'ft', '2026-01-21 18:18:29', '2026-01-21 18:18:29');
INSERT INTO `sale_items` (`id`, `sale_id`, `product_id`, `description`, `quantity`, `rate`, `discount`, `tax`, `units_sqft`, `line_total`, `length_input`, `length_unit`, `width_input`, `width_unit`, `created_at`, `updated_at`) VALUES
(720, 230, 28, NULL, 2, 22.00, 0.00, 0.00, 64.00, 1408.00, 8.0000, 'ft', 4.0000, 'ft', '2026-01-21 18:20:06', '2026-01-21 18:20:06'),
(721, 231, 32, NULL, 1, 75.00, 0.00, 0.00, 31.50, 2362.50, 7.0000, 'ft', 4.5000, 'ft', '2026-01-21 18:21:46', '2026-01-21 18:21:46'),
(722, 231, 28, NULL, 1, 22.00, 0.00, 0.00, 8.00, 176.00, 2.0000, 'ft', 4.0000, 'ft', '2026-01-21 18:21:46', '2026-01-21 18:21:46'),
(723, 231, 28, NULL, 2, 22.00, 0.00, 0.00, 48.00, 1056.00, 4.0000, 'ft', 6.0000, 'ft', '2026-01-21 18:21:46', '2026-01-21 18:21:46'),
(724, 231, 28, NULL, 1, 22.00, 0.00, 0.00, 57.00, 1254.00, 3.0000, 'ft', 19.0000, 'ft', '2026-01-21 18:21:46', '2026-01-21 18:21:46'),
(726, 233, 28, NULL, 1, 23.00, 0.00, 0.00, 30.00, 690.00, 3.0000, 'ft', 10.0000, 'ft', '2026-01-21 18:23:57', '2026-01-21 18:23:57'),
(727, 234, 28, NULL, 1, 22.00, 0.00, 0.00, 6.00, 132.00, 3.0000, 'ft', 2.0000, 'ft', '2026-01-21 18:26:31', '2026-01-21 18:26:31'),
(728, 234, 28, NULL, 1, 22.00, 0.00, 0.00, 21.00, 462.00, 3.5000, 'ft', 6.0000, 'ft', '2026-01-21 18:26:31', '2026-01-21 18:26:31'),
(729, 234, 28, NULL, 1, 22.00, 0.00, 0.00, 9.00, 198.00, 1.0000, 'ft', 9.0000, 'ft', '2026-01-21 18:26:31', '2026-01-21 18:26:31'),
(730, 234, 28, NULL, 1, 22.00, 0.00, 0.00, 6.00, 132.00, 2.0000, 'ft', 3.0000, 'ft', '2026-01-21 18:26:31', '2026-01-21 18:26:31'),
(731, 234, 28, NULL, 2, 22.00, 0.00, 0.00, 42.00, 924.00, 3.0000, 'ft', 7.0000, 'ft', '2026-01-21 18:26:31', '2026-01-21 18:26:31'),
(732, 234, 28, NULL, 1, 22.00, 0.00, 0.00, 32.00, 704.00, 4.0000, 'ft', 8.0000, 'ft', '2026-01-21 18:26:31', '2026-01-21 18:26:31'),
(733, 234, 28, NULL, 1, 22.00, 0.00, 0.00, 11.00, 242.00, 1.0000, 'ft', 11.0000, 'ft', '2026-01-21 18:26:31', '2026-01-21 18:26:31'),
(734, 234, 28, NULL, 1, 22.00, 0.00, 0.00, 10.50, 231.00, 3.5000, 'ft', 3.0000, 'ft', '2026-01-21 18:26:31', '2026-01-21 18:26:31'),
(735, 234, 28, NULL, 1, 22.00, 0.00, 0.00, 80.00, 1760.00, 8.0000, 'ft', 10.0000, 'ft', '2026-01-21 18:26:31', '2026-01-21 18:26:31'),
(736, 234, 31, NULL, 1, 40.00, 0.00, 0.00, 12.60, 504.00, 2.1000, 'ft', 6.0000, 'ft', '2026-01-21 18:26:31', '2026-01-21 18:26:31'),
(737, 234, 31, NULL, 2, 40.00, 0.00, 0.00, 21.60, 864.00, 2.7000, 'ft', 4.0000, 'ft', '2026-01-21 18:26:31', '2026-01-21 18:26:31'),
(738, 235, 28, NULL, 1, 21.00, 0.00, 0.00, 48.00, 1008.00, 4.0000, 'ft', 12.0000, 'ft', '2026-01-21 18:27:14', '2026-01-21 18:27:14'),
(739, 226, 28, NULL, 4, 23.00, 0.00, 0.00, 12.00, 276.00, 2.0000, 'ft', 1.5000, 'ft', '2026-01-21 18:32:49', '2026-01-21 18:32:49'),
(740, 226, 28, NULL, 4, 23.00, 0.00, 0.00, 4.00, 92.00, 1.0000, 'ft', 1.0000, 'ft', '2026-01-21 18:32:49', '2026-01-21 18:32:49'),
(741, 226, 28, NULL, 2, 23.00, 0.00, 0.00, 12.00, 276.00, 3.0000, 'ft', 2.0000, 'ft', '2026-01-21 18:32:49', '2026-01-21 18:32:49'),
(742, 236, 28, NULL, 5, 50.00, 0.00, 0.00, 105.00, 5250.00, 3.0000, 'ft', 7.0000, 'ft', '2026-01-22 11:48:40', '2026-01-22 11:48:40'),
(743, 236, 28, NULL, 2, 50.00, 0.00, 0.00, 48.00, 2400.00, 4.0000, 'ft', 6.0000, 'ft', '2026-01-22 11:48:40', '2026-01-22 11:48:40'),
(744, 237, 28, NULL, 3, 25.00, 0.00, 0.00, 90.00, 2250.00, 3.0000, 'ft', 10.0000, 'ft', '2026-01-22 12:01:16', '2026-01-22 12:01:16'),
(745, 237, 28, NULL, 1, 25.00, 0.00, 0.00, 18.00, 450.00, 3.0000, 'ft', 6.0000, 'ft', '2026-01-22 12:01:16', '2026-01-22 12:01:16'),
(746, 238, 28, NULL, 2, 30.00, 0.00, 0.00, 60.00, 1800.00, 3.0000, 'ft', 10.0000, 'ft', '2026-01-22 12:44:24', '2026-01-22 12:44:24'),
(747, 238, 28, NULL, 60, 40.00, 0.00, 0.00, 600.00, 24000.00, 4.0000, 'ft', 2.5000, 'ft', '2026-01-22 12:44:24', '2026-01-22 12:44:24'),
(748, 238, NULL, 'Banner Labour|10x3 ..2 piece', 2, 300.00, 0.00, 0.00, 0.00, 600.00, NULL, NULL, NULL, NULL, '2026-01-22 12:44:24', '2026-01-22 12:44:24'),
(749, 238, NULL, 'Sabqa bill no: 1942', 1, 7200.00, 0.00, 0.00, 0.00, 7200.00, NULL, NULL, NULL, NULL, '2026-01-22 12:44:24', '2026-01-22 12:44:24'),
(750, 238, NULL, 'Sabqa bill no: 1943', 1, 15575.00, 0.00, 0.00, 0.00, 15575.00, NULL, NULL, NULL, NULL, '2026-01-22 12:44:24', '2026-01-22 12:44:24'),
(751, 238, NULL, 'Sabqa Bill no: 1944', 1, 3400.00, 0.00, 0.00, 0.00, 3400.00, NULL, NULL, NULL, NULL, '2026-01-22 12:44:24', '2026-01-22 12:44:24'),
(752, 238, NULL, 'Sabqa Bill no: 1945', 1, 8400.00, 0.00, 0.00, 0.00, 8400.00, NULL, NULL, NULL, NULL, '2026-01-22 12:44:24', '2026-01-22 12:44:24'),
(753, 238, NULL, 'Sabqa Bill No: 1946', 1, 7200.00, 0.00, 0.00, 0.00, 7200.00, NULL, NULL, NULL, NULL, '2026-01-22 12:44:24', '2026-01-22 12:44:24'),
(754, 238, NULL, 'Sabqa Bill No: 1947', 1, 1200.00, 0.00, 0.00, 0.00, 1200.00, NULL, NULL, NULL, NULL, '2026-01-22 12:44:24', '2026-01-22 12:44:24'),
(755, 238, 31, NULL, 1, 80.00, 0.00, 0.00, 105.00, 8400.00, 5.0000, 'ft', 21.0000, 'ft', '2026-01-22 12:44:24', '2026-01-22 12:44:24'),
(756, 238, 34, NULL, 1, 150.00, 0.00, 0.00, 112.50, 16875.00, 12.5000, 'ft', 9.0000, 'ft', '2026-01-22 12:44:24', '2026-01-22 12:44:24'),
(757, 232, 31, NULL, 1, 55.00, 0.00, 0.00, 30.00, 1650.00, 3.0000, 'ft', 10.0000, 'ft', '2026-01-22 13:59:07', '2026-01-22 13:59:07'),
(758, 239, 28, NULL, 1, 30.00, 0.00, 0.00, 24.00, 720.00, 3.0000, 'ft', 8.0000, 'ft', '2026-01-22 15:29:42', '2026-01-22 15:29:42'),
(760, 240, 28, NULL, 1, 25.00, 0.00, 0.00, 18.00, 450.00, 3.0000, 'ft', 6.0000, 'ft', '2026-01-22 16:09:26', '2026-01-22 16:09:26'),
(771, 214, 28, NULL, 1, 28.00, 0.00, 0.00, 70.00, 1960.00, 7.0000, 'ft', 10.0000, 'ft', '2026-01-22 16:54:50', '2026-01-22 16:54:50'),
(772, 214, 28, NULL, 5, 28.00, 0.00, 0.00, 35.00, 980.00, 2.0000, 'ft', 3.5000, 'ft', '2026-01-22 16:54:50', '2026-01-22 16:54:50'),
(773, 214, 28, NULL, 7, 28.00, 0.00, 0.00, 56.00, 1568.00, 2.0000, 'ft', 4.0000, 'ft', '2026-01-22 16:54:50', '2026-01-22 16:54:50'),
(774, 214, 28, NULL, 4, 28.00, 0.00, 0.00, 44.00, 1232.00, 2.0000, 'ft', 5.5000, 'ft', '2026-01-22 16:54:50', '2026-01-22 16:54:50'),
(775, 214, 28, NULL, 20, 28.00, 0.00, 0.00, 60.00, 1680.00, 2.0000, 'ft', 1.5000, 'ft', '2026-01-22 16:54:50', '2026-01-22 16:54:50'),
(776, 214, NULL, 'mazdori|10x7.........|mazdori|10x7.........|mazdori|10x7.........|mazdori|10x7.........', 1, 700.00, 0.00, 0.00, 0.00, 700.00, NULL, NULL, NULL, NULL, '2026-01-22 16:54:50', '2026-01-22 16:54:50'),
(777, 214, 28, NULL, 5, 28.00, 0.00, 0.00, 35.00, 980.00, 3.5000, 'ft', 2.0000, 'ft', '2026-01-22 16:54:50', '2026-01-22 16:54:50'),
(778, 214, 28, NULL, 7, 28.00, 0.00, 0.00, 56.00, 1568.00, 4.0000, 'ft', 2.0000, 'ft', '2026-01-22 16:54:50', '2026-01-22 16:54:50'),
(779, 214, 28, NULL, 4, 28.00, 0.00, 0.00, 44.00, 1232.00, 2.0000, 'ft', 5.5000, 'ft', '2026-01-22 16:54:50', '2026-01-22 16:54:50'),
(780, 214, 28, NULL, 1, 28.00, 0.00, 0.00, 200.00, 5600.00, 10.0000, 'ft', 20.0000, 'ft', '2026-01-22 16:54:50', '2026-01-22 16:54:50'),
(781, 241, 28, NULL, 1, 40.00, 0.00, 0.00, 16.00, 640.00, 8.0000, 'ft', 2.0000, 'ft', '2026-01-22 17:00:23', '2026-01-22 17:00:23'),
(782, 241, 28, NULL, 1, 40.00, 0.00, 0.00, 8.00, 320.00, 8.0000, 'ft', 1.0000, 'ft', '2026-01-22 17:00:23', '2026-01-22 17:00:23'),
(783, 241, 28, NULL, 1, 40.00, 0.00, 0.00, 16.00, 640.00, 8.0000, 'ft', 2.0000, 'ft', '2026-01-22 17:00:23', '2026-01-22 17:00:23'),
(784, 241, 28, NULL, 1, 40.00, 0.00, 0.00, 18.00, 720.00, 2.0000, 'ft', 9.0000, 'ft', '2026-01-22 17:00:23', '2026-01-22 17:00:23'),
(785, 241, 28, NULL, 1, 40.00, 0.00, 0.00, 156.00, 6240.00, 10.0000, 'ft', 15.6000, 'ft', '2026-01-22 17:00:23', '2026-01-22 17:00:23'),
(786, 241, 28, NULL, 1, 40.00, 0.00, 0.00, 24.00, 960.00, 8.0000, 'ft', 3.0000, 'ft', '2026-01-22 17:00:23', '2026-01-22 17:00:23'),
(787, 241, 28, NULL, 1, 40.00, 0.00, 0.00, 31.20, 1248.00, 2.0000, 'ft', 15.6000, 'ft', '2026-01-22 17:00:23', '2026-01-22 17:00:23'),
(788, 241, 28, NULL, 1, 40.00, 0.00, 0.00, 85.00, 3400.00, 10.0000, 'ft', 8.5000, 'ft', '2026-01-22 17:00:23', '2026-01-22 17:00:23'),
(789, 224, 28, NULL, 1, 25.00, 0.00, 0.00, 15.00, 375.00, 2.5000, 'ft', 6.0000, 'ft', '2026-01-22 17:22:33', '2026-01-22 17:22:33'),
(790, 242, 28, NULL, 1, 22.00, 0.00, 0.00, 24.00, 528.00, 3.0000, 'ft', 8.0000, 'ft', '2026-01-22 17:26:45', '2026-01-22 17:26:45'),
(791, 242, 28, NULL, 1, 22.00, 0.00, 0.00, 18.00, 396.00, 3.0000, 'ft', 6.0000, 'ft', '2026-01-22 17:26:45', '2026-01-22 17:26:45'),
(792, 242, 28, NULL, 1, 22.00, 0.00, 0.00, 55.00, 1210.00, 5.0000, 'ft', 11.0000, 'ft', '2026-01-22 17:26:45', '2026-01-22 17:26:45'),
(793, 242, 28, NULL, 4, 22.00, 0.00, 0.00, 20.00, 440.00, 2.5000, 'ft', 2.0000, 'ft', '2026-01-22 17:26:45', '2026-01-22 17:26:45'),
(794, 243, 28, NULL, 1, 25.00, 0.00, 0.00, 18.00, 450.00, 2.0000, 'ft', 9.0000, 'ft', '2026-01-22 17:43:20', '2026-01-22 17:43:20'),
(795, 243, 28, NULL, 2, 25.00, 0.00, 0.00, 12.00, 300.00, 3.0000, 'ft', 2.0000, 'ft', '2026-01-22 17:43:20', '2026-01-22 17:43:20'),
(796, 244, 28, NULL, 1, 22.00, 0.00, 0.00, 65.00, 1430.00, 5.0000, 'ft', 13.0000, 'ft', '2026-01-22 17:43:58', '2026-01-22 17:43:58'),
(797, 245, 28, NULL, 1, 22.00, 0.00, 0.00, 21.00, 462.00, 7.0000, 'ft', 3.0000, 'ft', '2026-01-22 17:44:44', '2026-01-22 17:44:44'),
(798, 246, 28, NULL, 1, 22.00, 0.00, 0.00, 28.00, 616.00, 2.0000, 'ft', 14.0000, 'ft', '2026-01-22 17:46:08', '2026-01-22 17:46:08'),
(799, 246, 31, NULL, 1, 45.00, 0.00, 0.00, 12.60, 567.00, 2.0000, 'ft', 6.3000, 'ft', '2026-01-22 17:46:08', '2026-01-22 17:46:08'),
(800, 246, 31, NULL, 1, 45.00, 0.00, 0.00, 30.00, 1350.00, 3.0000, 'ft', 10.0000, 'ft', '2026-01-22 17:46:08', '2026-01-22 17:46:08'),
(801, 247, 28, NULL, 1, 30.00, 0.00, 0.00, 20.00, 600.00, 5.0000, 'ft', 4.0000, 'ft', '2026-01-22 17:47:02', '2026-01-22 17:47:02'),
(802, 248, 28, NULL, 1, 23.00, 0.00, 0.00, 8.00, 184.00, 1.0000, 'ft', 8.0000, 'ft', '2026-01-22 17:48:26', '2026-01-22 17:48:26'),
(803, 248, 28, NULL, 1, 23.00, 0.00, 0.00, 10.80, 248.40, 2.7000, 'ft', 4.0000, 'ft', '2026-01-22 17:48:26', '2026-01-22 17:48:26'),
(804, 249, 28, NULL, 2, 23.00, 0.00, 0.00, 12.00, 276.00, 3.0000, 'ft', 2.0000, 'ft', '2026-01-22 17:50:00', '2026-01-22 17:50:00'),
(805, 249, 28, NULL, 2, 23.00, 0.00, 0.00, 20.00, 460.00, 2.5000, 'ft', 4.0000, 'ft', '2026-01-22 17:50:00', '2026-01-22 17:50:00'),
(806, 250, 28, NULL, 1, 25.00, 0.00, 0.00, 15.00, 375.00, 3.0000, 'ft', 5.0000, 'ft', '2026-01-22 17:51:02', '2026-01-22 17:51:02'),
(807, 251, 28, NULL, 1, 22.00, 0.00, 0.00, 4.50, 99.00, 3.0000, 'ft', 1.5000, 'ft', '2026-01-22 17:55:37', '2026-01-22 17:55:37'),
(808, 251, 28, NULL, 1, 22.00, 0.00, 0.00, 10.50, 231.00, 3.0000, 'ft', 3.5000, 'ft', '2026-01-22 17:55:37', '2026-01-22 17:55:37'),
(809, 251, 28, NULL, 1, 22.00, 0.00, 0.00, 8.00, 176.00, 1.0000, 'ft', 8.0000, 'ft', '2026-01-22 17:55:37', '2026-01-22 17:55:37'),
(810, 251, 28, NULL, 1, 22.00, 0.00, 0.00, 30.00, 660.00, 3.0000, 'ft', 10.0000, 'ft', '2026-01-22 17:55:37', '2026-01-22 17:55:37'),
(811, 251, 28, NULL, 1, 22.00, 0.00, 0.00, 55.00, 1210.00, 5.0000, 'ft', 11.0000, 'ft', '2026-01-22 17:55:37', '2026-01-22 17:55:37'),
(812, 251, 28, NULL, 1, 22.00, 0.00, 0.00, 21.00, 462.00, 3.0000, 'ft', 7.0000, 'ft', '2026-01-22 17:55:37', '2026-01-22 17:55:37'),
(813, 251, 28, NULL, 1, 22.00, 0.00, 0.00, 25.50, 561.00, 3.0000, 'ft', 8.5000, 'ft', '2026-01-22 17:55:37', '2026-01-22 17:55:37'),
(814, 251, 28, NULL, 1, 22.00, 0.00, 0.00, 3.00, 66.00, 1.5000, 'ft', 2.0000, 'ft', '2026-01-22 17:55:37', '2026-01-22 17:55:37'),
(815, 251, 28, NULL, 13, 22.00, 0.00, 0.00, 78.00, 1716.00, 3.0000, 'ft', 2.0000, 'ft', '2026-01-22 17:55:37', '2026-01-22 17:55:37'),
(816, 251, 28, NULL, 1, 22.00, 0.00, 0.00, 12.30, 270.60, 4.1000, 'ft', 3.0000, 'ft', '2026-01-22 17:55:37', '2026-01-22 17:55:37'),
(817, 251, 28, NULL, 1, 22.00, 0.00, 0.00, 14.00, 308.00, 4.0000, 'ft', 3.5000, 'ft', '2026-01-22 17:55:37', '2026-01-22 17:55:37'),
(818, 251, 28, NULL, 3, 22.00, 0.00, 0.00, 72.00, 1584.00, 6.0000, 'ft', 4.0000, 'ft', '2026-01-22 17:55:37', '2026-01-22 17:55:37'),
(819, 251, 28, NULL, 2, 22.00, 0.00, 0.00, 60.00, 1320.00, 6.0000, 'ft', 5.0000, 'ft', '2026-01-22 17:55:37', '2026-01-22 17:55:37'),
(820, 251, 28, NULL, 2, 22.00, 0.00, 0.00, 90.00, 1980.00, 5.0000, 'ft', 9.0000, 'ft', '2026-01-22 17:55:37', '2026-01-22 17:55:37'),
(821, 251, 28, NULL, 1, 22.00, 0.00, 0.00, 66.00, 1452.00, 6.0000, 'ft', 11.0000, 'ft', '2026-01-22 17:55:37', '2026-01-22 17:55:37'),
(822, 251, 28, NULL, 3, 22.00, 0.00, 0.00, 9.00, 198.00, 2.0000, 'ft', 1.5000, 'ft', '2026-01-22 17:55:37', '2026-01-22 17:55:37'),
(823, 252, 28, NULL, 1, 25.00, 0.00, 0.00, 32.00, 800.00, 4.0000, 'ft', 8.0000, 'ft', '2026-01-22 17:56:41', '2026-01-22 17:56:41'),
(836, 253, 28, NULL, 1, 40.00, 0.00, 0.00, 40.00, 1600.00, 10.0000, 'ft', 4.0000, 'ft', '2026-01-22 18:35:39', '2026-01-22 18:35:39'),
(837, 253, 28, NULL, 1, 40.00, 0.00, 0.00, 12.00, 480.00, 3.0000, 'ft', 4.0000, 'ft', '2026-01-22 18:35:39', '2026-01-22 18:35:39'),
(838, 253, 28, NULL, 1, 40.00, 0.00, 0.00, 3.00, 120.00, 1.0000, 'ft', 3.0000, 'ft', '2026-01-22 18:35:39', '2026-01-22 18:35:39'),
(839, 253, 28, NULL, 1, 40.00, 0.00, 0.00, 109.80, 4392.00, 9.0000, 'ft', 12.2000, 'ft', '2026-01-22 18:35:39', '2026-01-22 18:35:39'),
(840, 253, 28, NULL, 1, 40.00, 0.00, 0.00, 70.00, 2800.00, 7.0000, 'ft', 10.0000, 'ft', '2026-01-22 18:35:39', '2026-01-22 18:35:39'),
(841, 253, 28, NULL, 1, 40.00, 0.00, 0.00, 126.00, 5040.00, 9.0000, 'ft', 14.0000, 'ft', '2026-01-22 18:35:39', '2026-01-22 18:35:39'),
(842, 253, 28, NULL, 1, 40.00, 0.00, 0.00, 108.00, 4320.00, 9.0000, 'ft', 12.0000, 'ft', '2026-01-22 18:35:39', '2026-01-22 18:35:39'),
(843, 253, 28, NULL, 2, 40.00, 0.00, 0.00, 360.00, 14400.00, 9.0000, 'ft', 20.0000, 'ft', '2026-01-22 18:35:39', '2026-01-22 18:35:39'),
(844, 253, 28, NULL, 2, 40.00, 0.00, 0.00, 225.00, 9000.00, 9.0000, 'ft', 12.5000, 'ft', '2026-01-22 18:35:39', '2026-01-22 18:35:39'),
(845, 253, 28, 'Room No 2', 2, 40.00, 0.00, 0.00, 252.00, 10080.00, 9.0000, 'ft', 14.0000, 'ft', '2026-01-22 18:35:39', '2026-01-22 18:35:39'),
(846, 253, 28, 'Room No 2', 2, 40.00, 0.00, 0.00, 225.00, 9000.00, 9.0000, 'ft', 12.5000, 'ft', '2026-01-22 18:35:39', '2026-01-22 18:35:39'),
(855, 259, 28, NULL, 1, 22.00, 0.00, 0.00, 426.00, 9372.00, 12.0000, 'ft', 35.5000, 'ft', '2026-01-24 12:06:14', '2026-01-24 12:06:14'),
(856, 259, 28, NULL, 1, 22.00, 0.00, 0.00, 408.00, 8976.00, 12.0000, 'ft', 34.0000, 'ft', '2026-01-24 12:06:14', '2026-01-24 12:06:14'),
(857, 259, 28, NULL, 1, 22.00, 0.00, 0.00, 42.00, 924.00, 6.0000, 'ft', 7.0000, 'ft', '2026-01-24 12:06:14', '2026-01-24 12:06:14'),
(858, 259, 28, NULL, 1, 22.00, 0.00, 0.00, 8.00, 176.00, 1.0000, 'ft', 8.0000, 'ft', '2026-01-24 12:06:14', '2026-01-24 12:06:14'),
(859, 259, 28, NULL, 1, 22.00, 0.00, 0.00, 14.00, 308.00, 2.0000, 'ft', 7.0000, 'ft', '2026-01-24 12:06:14', '2026-01-24 12:06:14'),
(866, 261, 28, NULL, 1, 23.00, 0.00, 0.00, 24.50, 563.50, 3.5000, 'ft', 7.0000, 'ft', '2026-01-24 14:35:21', '2026-01-24 14:35:21'),
(867, 261, 28, NULL, 2, 23.00, 0.00, 0.00, 40.00, 920.00, 2.5000, 'ft', 8.0000, 'ft', '2026-01-24 14:35:21', '2026-01-24 14:35:21'),
(868, 261, 28, NULL, 1, 23.00, 0.00, 0.00, 22.50, 517.50, 2.5000, 'ft', 9.0000, 'ft', '2026-01-24 14:35:21', '2026-01-24 14:35:21'),
(869, 262, 28, NULL, 12, 25.00, 0.00, 0.00, 72.00, 1800.00, 3.0000, 'ft', 2.0000, 'ft', '2026-01-24 18:11:54', '2026-01-24 18:11:54'),
(870, 263, 28, NULL, 2, 30.00, 0.00, 0.00, 25.00, 750.00, 5.0000, 'ft', 2.5000, 'ft', '2026-01-24 18:12:36', '2026-01-24 18:12:36'),
(871, 264, 28, NULL, 1, 22.00, 0.00, 0.00, 36.00, 792.00, 3.0000, 'ft', 12.0000, 'ft', '2026-01-24 18:13:18', '2026-01-24 18:13:18'),
(872, 265, 31, NULL, 1, 40.00, 0.00, 0.00, 76.00, 3040.00, 4.0000, 'ft', 19.0000, 'ft', '2026-01-24 18:17:51', '2026-01-24 18:17:51'),
(873, 265, 28, NULL, 1, 22.00, 0.00, 0.00, 9.00, 198.00, 3.0000, 'ft', 3.0000, 'ft', '2026-01-24 18:17:51', '2026-01-24 18:17:51'),
(874, 266, 28, NULL, 2, 23.00, 0.00, 0.00, 2.00, 46.00, 1.0000, 'ft', 1.0000, 'ft', '2026-01-24 18:19:19', '2026-01-24 18:19:19'),
(875, 269, 28, NULL, 1, 22.00, 0.00, 0.00, 48.00, 1056.00, 3.0000, 'ft', 16.0000, 'ft', '2026-01-24 18:36:24', '2026-01-24 18:36:24'),
(876, 270, 28, NULL, 1, 23.00, 0.00, 0.00, 18.00, 414.00, 3.0000, 'ft', 6.0000, 'ft', '2026-01-24 18:37:23', '2026-01-24 18:37:23'),
(877, 270, 28, NULL, 1, 23.00, 0.00, 0.00, 7.50, 172.50, 2.0000, 'ft', 3.7500, 'ft', '2026-01-24 18:37:23', '2026-01-24 18:37:23'),
(878, 270, 28, NULL, 1, 23.00, 0.00, 0.00, 30.00, 690.00, 2.0000, 'ft', 15.0000, 'ft', '2026-01-24 18:37:23', '2026-01-24 18:37:23'),
(879, 271, 28, NULL, 4, 22.00, 0.00, 0.00, 64.00, 1408.00, 5.0000, 'ft', 3.2000, 'ft', '2026-01-24 18:39:00', '2026-01-24 18:39:00'),
(880, 271, 28, NULL, 1, 22.00, 0.00, 0.00, 27.00, 594.00, 5.4000, 'ft', 5.0000, 'ft', '2026-01-24 18:39:00', '2026-01-24 18:39:00'),
(881, 271, 28, NULL, 1, 22.00, 0.00, 0.00, 30.00, 660.00, 3.0000, 'ft', 10.0000, 'ft', '2026-01-24 18:39:00', '2026-01-24 18:39:00'),
(882, 271, 28, NULL, 1, 22.00, 0.00, 0.00, 50.00, 1100.00, 5.0000, 'ft', 10.0000, 'ft', '2026-01-24 18:39:00', '2026-01-24 18:39:00'),
(883, 271, 28, NULL, 1, 22.00, 0.00, 0.00, 33.00, 726.00, 2.0000, 'ft', 16.5000, 'ft', '2026-01-24 18:39:00', '2026-01-24 18:39:00'),
(890, 274, 28, NULL, 1, 22.00, 0.00, 0.00, 14.00, 308.00, 3.5000, 'ft', 4.0000, 'ft', '2026-01-24 18:42:31', '2026-01-24 18:42:31'),
(891, 274, 28, NULL, 10, 22.00, 0.00, 0.00, 60.00, 1320.00, 3.0000, 'ft', 2.0000, 'ft', '2026-01-24 18:42:31', '2026-01-24 18:42:31'),
(892, 274, 28, NULL, 1, 22.00, 0.00, 0.00, 4.00, 88.00, 2.0000, 'ft', 2.0000, 'ft', '2026-01-24 18:42:31', '2026-01-24 18:42:31'),
(893, 274, 28, NULL, 20, 22.00, 0.00, 0.00, 40.00, 880.00, 1.0000, 'ft', 2.0000, 'ft', '2026-01-24 18:42:31', '2026-01-24 18:42:31'),
(894, 274, 28, NULL, 1, 22.00, 0.00, 0.00, 24.00, 528.00, 3.0000, 'ft', 8.0000, 'ft', '2026-01-24 18:42:31', '2026-01-24 18:42:31'),
(895, 274, 31, NULL, 5, 40.00, 0.00, 0.00, 15.00, 600.00, 2.0000, 'ft', 1.5000, 'ft', '2026-01-24 18:42:31', '2026-01-24 18:42:31'),
(898, 272, 28, NULL, 2, 22.00, 0.00, 0.00, 10.00, 220.00, 1.0000, 'ft', 5.0000, 'ft', '2026-01-24 19:08:21', '2026-01-24 19:08:21'),
(899, 272, 28, NULL, 1, 22.00, 0.00, 0.00, 8.00, 176.00, 4.0000, 'ft', 2.0000, 'ft', '2026-01-24 19:08:21', '2026-01-24 19:08:21'),
(900, 275, 28, NULL, 2, 23.00, 0.00, 0.00, 80.00, 1840.00, 5.0000, 'ft', 8.0000, 'ft', '2026-01-25 16:25:52', '2026-01-25 16:25:52'),
(901, 275, 28, NULL, 1, 23.00, 0.00, 0.00, 60.00, 1380.00, 6.0000, 'ft', 10.0000, 'ft', '2026-01-25 16:25:52', '2026-01-25 16:25:52'),
(902, 275, 28, NULL, 1, 23.00, 0.00, 0.00, 24.00, 552.00, 4.0000, 'ft', 6.0000, 'ft', '2026-01-25 16:25:52', '2026-01-25 16:25:52'),
(903, 275, 28, NULL, 5, 23.00, 0.00, 0.00, 30.00, 690.00, 3.0000, 'ft', 2.0000, 'ft', '2026-01-25 16:25:52', '2026-01-25 16:25:52'),
(904, 276, 28, NULL, 1, 23.00, 0.00, 0.00, 24.00, 552.00, 3.0000, 'ft', 8.0000, 'ft', '2026-01-25 16:26:48', '2026-01-25 16:26:48'),
(905, 277, 28, NULL, 1, 22.00, 0.00, 0.00, 24.00, 528.00, 3.0000, 'ft', 8.0000, 'ft', '2026-01-25 16:27:50', '2026-01-25 16:27:50'),
(906, 277, 28, NULL, 1, 22.00, 0.00, 0.00, 10.00, 220.00, 1.0000, 'ft', 10.0000, 'ft', '2026-01-25 16:27:50', '2026-01-25 16:27:50'),
(907, 277, 28, NULL, 1, 22.00, 0.00, 0.00, 18.40, 404.80, 2.0000, 'ft', 9.2000, 'ft', '2026-01-25 16:27:50', '2026-01-25 16:27:50'),
(908, 278, 28, NULL, 1, 23.00, 0.00, 0.00, 8.00, 184.00, 8.0000, 'ft', 1.0000, 'ft', '2026-01-25 16:29:44', '2026-01-25 16:29:44'),
(909, 278, 28, NULL, 1, 23.00, 0.00, 0.00, 12.00, 276.00, 8.0000, 'ft', 1.5000, 'ft', '2026-01-25 16:29:44', '2026-01-25 16:29:44'),
(910, 278, 28, NULL, 2, 23.00, 0.00, 0.00, 40.00, 920.00, 10.0000, 'ft', 2.0000, 'ft', '2026-01-25 16:29:44', '2026-01-25 16:29:44'),
(911, 278, 28, NULL, 1, 23.00, 0.00, 0.00, 8.00, 184.00, 1.0000, 'ft', 8.0000, 'ft', '2026-01-25 16:29:44', '2026-01-25 16:29:44'),
(912, 278, 28, NULL, 1, 23.00, 0.00, 0.00, 20.00, 460.00, 2.5000, 'ft', 8.0000, 'ft', '2026-01-25 16:29:44', '2026-01-25 16:29:44'),
(913, 278, 28, NULL, 1, 23.00, 0.00, 0.00, 32.00, 736.00, 4.0000, 'ft', 8.0000, 'ft', '2026-01-25 16:29:44', '2026-01-25 16:29:44'),
(914, 278, 28, NULL, 1, 23.00, 0.00, 0.00, 105.00, 2415.00, 10.0000, 'ft', 10.5000, 'ft', '2026-01-25 16:29:44', '2026-01-25 16:29:44'),
(915, 278, 28, NULL, 1, 23.00, 0.00, 0.00, 28.00, 644.00, 2.0000, 'ft', 14.0000, 'ft', '2026-01-25 16:29:44', '2026-01-25 16:29:44'),
(916, 278, 28, NULL, 1, 23.00, 0.00, 0.00, 60.00, 1380.00, 4.0000, 'ft', 15.0000, 'ft', '2026-01-25 16:29:44', '2026-01-25 16:29:44'),
(917, 278, 28, NULL, 1, 23.00, 0.00, 0.00, 120.00, 2760.00, 6.0000, 'ft', 20.0000, 'ft', '2026-01-25 16:29:44', '2026-01-25 16:29:44'),
(918, 278, 28, NULL, 2, 23.00, 0.00, 0.00, 420.00, 9660.00, 10.0000, 'ft', 21.0000, 'ft', '2026-01-25 16:29:44', '2026-01-25 16:29:44'),
(934, 280, 31, NULL, 4, 50.00, 0.00, 0.00, 80.00, 4000.00, 5.0000, 'ft', 4.0000, 'ft', '2026-01-25 17:12:02', '2026-01-25 17:12:02'),
(935, 281, 31, NULL, 4, 50.00, 0.00, 0.00, 80.00, 4000.00, 4.0000, 'ft', 5.0000, 'ft', '2026-01-25 17:12:25', '2026-01-25 17:12:25'),
(936, 282, 28, NULL, 1, 22.00, 0.00, 0.00, 21.00, 462.00, 3.0000, 'ft', 7.0000, 'ft', '2026-01-25 17:15:16', '2026-01-25 17:15:16'),
(937, 282, 28, NULL, 1, 22.00, 0.00, 0.00, 12.50, 275.00, 2.5000, 'ft', 5.0000, 'ft', '2026-01-25 17:15:16', '2026-01-25 17:15:16'),
(938, 282, 28, NULL, 1, 22.00, 0.00, 0.00, 8.00, 176.00, 1.0000, 'ft', 8.0000, 'ft', '2026-01-25 17:15:16', '2026-01-25 17:15:16'),
(939, 282, 28, NULL, 1, 22.00, 0.00, 0.00, 34.00, 748.00, 2.0000, 'ft', 17.0000, 'ft', '2026-01-25 17:15:16', '2026-01-25 17:15:16'),
(940, 282, 28, NULL, 1, 22.00, 0.00, 0.00, 68.00, 1496.00, 4.0000, 'ft', 17.0000, 'ft', '2026-01-25 17:15:16', '2026-01-25 17:15:16'),
(941, 283, 28, NULL, 2, 22.00, 0.00, 0.00, 36.00, 792.00, 9.0000, 'ft', 2.0000, 'ft', '2026-01-25 17:17:05', '2026-01-25 17:17:05'),
(942, 283, 28, NULL, 1, 22.00, 0.00, 0.00, 16.50, 363.00, 5.5000, 'ft', 3.0000, 'ft', '2026-01-25 17:17:05', '2026-01-25 17:17:05'),
(943, 283, 28, NULL, 1, 22.00, 0.00, 0.00, 9.20, 202.40, 2.3000, 'ft', 4.0000, 'ft', '2026-01-25 17:17:05', '2026-01-25 17:17:05'),
(944, 283, 28, NULL, 1, 22.00, 0.00, 0.00, 18.00, 396.00, 3.0000, 'ft', 6.0000, 'ft', '2026-01-25 17:17:05', '2026-01-25 17:17:05'),
(945, 283, 28, NULL, 1, 22.00, 0.00, 0.00, 30.00, 660.00, 3.0000, 'ft', 10.0000, 'ft', '2026-01-25 17:17:05', '2026-01-25 17:17:05'),
(946, 283, 28, NULL, 1, 22.00, 0.00, 0.00, 24.00, 528.00, 2.0000, 'ft', 12.0000, 'ft', '2026-01-25 17:17:05', '2026-01-25 17:17:05'),
(947, 284, 28, NULL, 1, 30.00, 0.00, 0.00, 6.00, 180.00, 3.0000, 'ft', 2.0000, 'ft', '2026-01-25 17:18:21', '2026-01-25 17:18:21'),
(964, 285, 28, NULL, 2, 25.00, 0.00, 0.00, 24.00, 600.00, 4.0000, 'ft', 3.0000, 'ft', '2026-01-25 18:31:48', '2026-01-25 18:31:48'),
(965, 285, 28, NULL, 1, 25.00, 0.00, 0.00, 15.00, 375.00, 5.0000, 'ft', 3.0000, 'ft', '2026-01-25 18:31:48', '2026-01-25 18:31:48'),
(968, 279, 28, NULL, 1, 22.00, 0.00, 0.00, 45.00, 990.00, 5.0000, 'ft', 9.0000, 'ft', '2026-01-25 18:34:46', '2026-01-25 18:34:46'),
(969, 279, 28, NULL, 1, 22.00, 0.00, 0.00, 24.00, 528.00, 2.0000, 'ft', 12.0000, 'ft', '2026-01-25 18:34:46', '2026-01-25 18:34:46'),
(970, 279, 28, NULL, 1, 22.00, 0.00, 0.00, 35.00, 770.00, 5.0000, 'ft', 7.0000, 'ft', '2026-01-25 18:34:46', '2026-01-25 18:34:46'),
(971, 279, 28, NULL, 1, 22.00, 0.00, 0.00, 48.00, 1056.00, 4.0000, 'ft', 12.0000, 'ft', '2026-01-25 18:34:46', '2026-01-25 18:34:46'),
(972, 279, 28, NULL, 1, 22.00, 0.00, 0.00, 2.50, 55.00, 2.0000, 'ft', 1.2500, 'ft', '2026-01-25 18:34:46', '2026-01-25 18:34:46'),
(973, 279, 28, NULL, 1, 22.00, 0.00, 0.00, 2.00, 44.00, 2.0000, 'ft', 1.0000, 'ft', '2026-01-25 18:34:46', '2026-01-25 18:34:46'),
(974, 279, 28, NULL, 2, 22.00, 0.00, 0.00, 10.00, 220.00, 2.0000, 'ft', 2.5000, 'ft', '2026-01-25 18:34:46', '2026-01-25 18:34:46'),
(975, 279, 28, NULL, 1, 22.00, 0.00, 0.00, 4.00, 88.00, 2.0000, 'ft', 2.0000, 'ft', '2026-01-25 18:34:46', '2026-01-25 18:34:46'),
(976, 279, 28, NULL, 2, 22.00, 0.00, 0.00, 14.00, 308.00, 2.0000, 'ft', 3.5000, 'ft', '2026-01-25 18:34:46', '2026-01-25 18:34:46'),
(977, 279, 28, NULL, 1, 22.00, 0.00, 0.00, 12.00, 264.00, 2.0000, 'ft', 6.0000, 'ft', '2026-01-25 18:34:46', '2026-01-25 18:34:46'),
(978, 279, 28, NULL, 1, 22.00, 0.00, 0.00, 18.00, 396.00, 2.0000, 'ft', 9.0000, 'ft', '2026-01-25 18:34:46', '2026-01-25 18:34:46'),
(979, 279, 28, NULL, 1, 22.00, 0.00, 0.00, 20.00, 440.00, 2.0000, 'ft', 10.0000, 'ft', '2026-01-25 18:34:46', '2026-01-25 18:34:46'),
(980, 279, 28, NULL, 1, 22.00, 0.00, 0.00, 24.00, 528.00, 2.0000, 'ft', 12.0000, 'ft', '2026-01-25 18:34:46', '2026-01-25 18:34:46'),
(981, 279, 28, NULL, 1, 22.00, 0.00, 0.00, 53.00, 1166.00, 2.0000, 'ft', 26.5000, 'ft', '2026-01-25 18:34:46', '2026-01-25 18:34:46'),
(982, 279, 28, NULL, 3, 22.00, 0.00, 0.00, 72.00, 1584.00, 2.0000, 'ft', 12.0000, 'ft', '2026-01-25 18:34:46', '2026-01-25 18:34:46'),
(983, 279, 35, NULL, 2, 70.00, 0.00, 0.00, 26.10, 1827.00, 3.0000, 'ft', 4.3500, 'ft', '2026-01-25 18:34:46', '2026-01-25 18:34:46'),
(984, 286, 28, NULL, 2, 22.00, 0.00, 0.00, 10.00, 220.00, 2.0000, 'ft', 2.5000, 'ft', '2026-01-25 18:41:19', '2026-01-25 18:41:19'),
(985, 286, 28, NULL, 1, 22.00, 0.00, 0.00, 11.00, 242.00, 2.0000, 'ft', 5.5000, 'ft', '2026-01-25 18:41:19', '2026-01-25 18:41:19'),
(986, 287, 28, NULL, 1, 35.71, 0.00, 0.00, 28.00, 999.88, 2.0000, 'ft', 14.0000, 'ft', '2026-01-26 17:49:45', '2026-01-26 17:49:45'),
(987, 288, 28, NULL, 1, 30.00, 0.00, 0.00, 39.00, 1170.00, 3.0000, 'ft', 13.0000, 'ft', '2026-01-26 17:50:18', '2026-01-26 17:50:18'),
(988, 289, 28, NULL, 1, 33.33, 0.00, 0.00, 6.00, 200.00, 3.0000, 'ft', 2.0000, 'ft', '2026-01-26 17:51:31', '2026-01-26 17:51:31'),
(989, 290, 28, NULL, 1, 28.00, 0.00, 0.00, 200.00, 5600.00, 10.0000, 'ft', 20.0000, 'ft', '2026-01-26 17:54:24', '2026-01-26 17:54:24'),
(1005, 291, 28, NULL, 21, 22.00, 0.00, 0.00, 126.00, 2772.00, 3.0000, 'ft', 2.0000, 'ft', '2026-01-26 18:02:51', '2026-01-26 18:02:51'),
(1006, 291, 28, NULL, 10, 22.00, 0.00, 0.00, 32.00, 704.00, 1.6000, 'ft', 2.0000, 'ft', '2026-01-26 18:02:51', '2026-01-26 18:02:51'),
(1007, 291, 28, NULL, 13, 22.00, 0.00, 0.00, 78.00, 1716.00, 3.0000, 'ft', 2.0000, 'ft', '2026-01-26 18:02:51', '2026-01-26 18:02:51'),
(1008, 291, 28, NULL, 1, 22.00, 0.00, 0.00, 15.00, 330.00, 3.0000, 'ft', 5.0000, 'ft', '2026-01-26 18:02:51', '2026-01-26 18:02:51'),
(1009, 291, 28, NULL, 1, 22.00, 0.00, 0.00, 30.00, 660.00, 6.0000, 'ft', 5.0000, 'ft', '2026-01-26 18:02:51', '2026-01-26 18:02:51'),
(1010, 291, 28, NULL, 1, 22.00, 0.00, 0.00, 24.00, 528.00, 4.0000, 'ft', 6.0000, 'ft', '2026-01-26 18:02:51', '2026-01-26 18:02:51'),
(1011, 291, 28, NULL, 2, 22.00, 0.00, 0.00, 50.00, 1100.00, 5.0000, 'ft', 5.0000, 'ft', '2026-01-26 18:02:51', '2026-01-26 18:02:51'),
(1012, 291, 28, NULL, 2, 22.00, 0.00, 0.00, 20.00, 440.00, 4.0000, 'ft', 2.5000, 'ft', '2026-01-26 18:02:51', '2026-01-26 18:02:51'),
(1013, 291, 28, NULL, 1, 22.00, 0.00, 0.00, 31.50, 693.00, 3.0000, 'ft', 10.5000, 'ft', '2026-01-26 18:02:51', '2026-01-26 18:02:51'),
(1014, 291, 28, NULL, 1, 22.00, 0.00, 0.00, 55.00, 1210.00, 5.0000, 'ft', 11.0000, 'ft', '2026-01-26 18:02:51', '2026-01-26 18:02:51'),
(1015, 291, 28, NULL, 1, 22.00, 0.00, 0.00, 24.00, 528.00, 2.0000, 'ft', 12.0000, 'ft', '2026-01-26 18:02:51', '2026-01-26 18:02:51'),
(1016, 291, 28, NULL, 1, 22.00, 0.00, 0.00, 60.00, 1320.00, 4.0000, 'ft', 15.0000, 'ft', '2026-01-26 18:02:51', '2026-01-26 18:02:51'),
(1017, 291, 28, NULL, 1, 22.00, 0.00, 0.00, 60.00, 1320.00, 3.0000, 'ft', 20.0000, 'ft', '2026-01-26 18:02:51', '2026-01-26 18:02:51'),
(1018, 292, 28, NULL, 2, 22.00, 0.00, 0.00, 24.00, 528.00, 4.0000, 'ft', 3.0000, 'ft', '2026-01-26 18:05:23', '2026-01-26 18:05:23'),
(1019, 292, 28, NULL, 3, 22.00, 0.00, 0.00, 45.00, 990.00, 3.0000, 'ft', 5.0000, 'ft', '2026-01-26 18:05:23', '2026-01-26 18:05:23'),
(1020, 293, 28, NULL, 2, 23.00, 0.00, 0.00, 24.00, 552.00, 3.0000, 'ft', 4.0000, 'ft', '2026-01-26 18:34:14', '2026-01-26 18:34:14'),
(1021, 293, 28, NULL, 2, 23.00, 0.00, 0.00, 32.00, 736.00, 4.0000, 'ft', 4.0000, 'ft', '2026-01-26 18:34:14', '2026-01-26 18:34:14'),
(1028, 294, 28, NULL, 1, 30.00, 0.00, 0.00, 32.00, 960.00, 4.0000, 'ft', 8.0000, 'ft', '2026-01-26 18:41:19', '2026-01-26 18:41:19'),
(1029, 294, 28, NULL, 1, 30.00, 0.00, 0.00, 6.00, 180.00, 3.0000, 'ft', 2.0000, 'ft', '2026-01-26 18:41:19', '2026-01-26 18:41:19'),
(1030, 295, 28, NULL, 3, 25.00, 0.00, 0.00, 72.00, 1800.00, 4.0000, 'ft', 6.0000, 'ft', '2026-01-27 17:18:34', '2026-01-27 17:18:34'),
(1031, 296, 28, NULL, 1, 25.00, 0.00, 0.00, 8.00, 200.00, 1.0000, 'ft', 8.0000, 'ft', '2026-01-27 17:20:05', '2026-01-27 17:20:05'),
(1032, 296, 28, NULL, 1, 25.00, 0.00, 0.00, 16.00, 400.00, 2.0000, 'ft', 8.0000, 'ft', '2026-01-27 17:20:05', '2026-01-27 17:20:05'),
(1033, 296, 28, NULL, 1, 25.00, 0.00, 0.00, 8.00, 200.00, 1.0000, 'ft', 8.0000, 'ft', '2026-01-27 17:20:05', '2026-01-27 17:20:05'),
(1034, 296, 28, NULL, 1, 25.00, 0.00, 0.00, 6.00, 150.00, 2.0000, 'ft', 3.0000, 'ft', '2026-01-27 17:20:05', '2026-01-27 17:20:05'),
(1035, 296, 28, NULL, 5, 25.00, 0.00, 0.00, 15.00, 375.00, 1.5000, 'ft', 2.0000, 'ft', '2026-01-27 17:20:06', '2026-01-27 17:20:06'),
(1036, 297, 28, NULL, 1, 22.00, 0.00, 0.00, 21.00, 462.00, 7.0000, 'ft', 3.0000, 'ft', '2026-01-27 17:22:04', '2026-01-27 17:22:04'),
(1037, 297, 28, NULL, 1, 22.00, 0.00, 0.00, 15.00, 330.00, 3.0000, 'ft', 5.0000, 'ft', '2026-01-27 17:22:04', '2026-01-27 17:22:04'),
(1038, 297, 28, NULL, 1, 22.00, 0.00, 0.00, 14.00, 308.00, 2.0000, 'ft', 7.0000, 'ft', '2026-01-27 17:22:04', '2026-01-27 17:22:04'),
(1039, 297, 28, NULL, 1, 22.00, 0.00, 0.00, 8.00, 176.00, 1.0000, 'ft', 8.0000, 'ft', '2026-01-27 17:22:04', '2026-01-27 17:22:04'),
(1040, 297, 28, NULL, 1, 22.00, 0.00, 0.00, 36.00, 792.00, 3.0000, 'ft', 12.0000, 'ft', '2026-01-27 17:22:04', '2026-01-27 17:22:04'),
(1041, 298, 28, NULL, 1, 23.00, 0.00, 0.00, 8.00, 184.00, 1.0000, 'ft', 8.0000, 'ft', '2026-01-27 17:24:24', '2026-01-27 17:24:24'),
(1042, 298, 28, NULL, 1, 23.00, 0.00, 0.00, 36.00, 828.00, 4.0000, 'ft', 9.0000, 'ft', '2026-01-27 17:24:24', '2026-01-27 17:24:24'),
(1043, 299, 28, NULL, 12, 22.00, 0.00, 0.00, 288.00, 6336.00, 3.0000, 'ft', 8.0000, 'ft', '2026-01-27 17:26:57', '2026-01-27 17:26:57'),
(1044, 299, 28, NULL, 1, 22.00, 0.00, 0.00, 12.00, 264.00, 1.0000, 'ft', 12.0000, 'ft', '2026-01-27 17:26:57', '2026-01-27 17:26:57'),
(1045, 299, 28, NULL, 4, 22.00, 0.00, 0.00, 40.00, 880.00, 5.0000, 'ft', 2.0000, 'ft', '2026-01-27 17:26:57', '2026-01-27 17:26:57'),
(1055, 301, 28, NULL, 10, 25.00, 0.00, 0.00, 60.00, 1500.00, 3.0000, 'ft', 2.0000, 'ft', '2026-01-27 17:34:32', '2026-01-27 17:34:32'),
(1056, 302, 28, NULL, 1, 25.00, 0.00, 0.00, 500.00, 12500.00, 25.0000, 'ft', 20.0000, 'ft', '2026-01-27 17:36:16', '2026-01-27 17:36:16'),
(1057, 303, 28, NULL, 1, 22.00, 0.00, 0.00, 45.00, 990.00, 3.0000, 'ft', 15.0000, 'ft', '2026-01-27 17:38:29', '2026-01-27 17:38:29'),
(1058, 303, 28, NULL, 2, 22.00, 0.00, 0.00, 80.00, 1760.00, 4.0000, 'ft', 10.0000, 'ft', '2026-01-27 17:38:29', '2026-01-27 17:38:29'),
(1059, 304, 28, NULL, 1, 23.00, 0.00, 0.00, 4.50, 103.50, 3.0000, 'ft', 1.5000, 'ft', '2026-01-27 17:39:44', '2026-01-27 17:39:44'),
(1060, 304, 28, NULL, 1, 23.00, 0.00, 0.00, 27.00, 621.00, 3.0000, 'ft', 9.0000, 'ft', '2026-01-27 17:39:44', '2026-01-27 17:39:44'),
(1061, 304, 28, NULL, 1, 23.00, 0.00, 0.00, 33.00, 759.00, 3.0000, 'ft', 11.0000, 'ft', '2026-01-27 17:39:44', '2026-01-27 17:39:44'),
(1062, 304, 28, NULL, 1, 23.00, 0.00, 0.00, 120.00, 2760.00, 10.0000, 'ft', 12.0000, 'ft', '2026-01-27 17:39:44', '2026-01-27 17:39:44'),
(1063, 304, 28, NULL, 2, 23.00, 0.00, 0.00, 108.00, 2484.00, 3.0000, 'ft', 18.0000, 'ft', '2026-01-27 17:39:44', '2026-01-27 17:39:44'),
(1097, 306, 28, NULL, 1, 33.33, 0.00, 0.00, 6.00, 200.00, 3.0000, 'ft', 2.0000, 'ft', '2026-01-27 18:09:25', '2026-01-27 18:09:25'),
(1098, 307, 28, NULL, 10, 28.00, 0.00, 0.00, 60.00, 1680.00, 3.0000, 'ft', 2.0000, 'ft', '2026-01-27 18:10:30', '2026-01-27 18:10:30'),
(1099, 308, 28, NULL, 1, 30.00, 0.00, 0.00, 18.00, 540.00, 3.0000, 'ft', 6.0000, 'ft', '2026-01-27 18:13:56', '2026-01-27 18:13:56'),
(1100, 309, 28, NULL, 1, 22.00, 0.00, 0.00, 6.00, 132.00, 1.0000, 'ft', 6.0000, 'ft', '2026-01-27 18:36:01', '2026-01-27 18:36:01'),
(1101, 309, 28, NULL, 1, 22.00, 0.00, 0.00, 9.00, 198.00, 1.5000, 'ft', 6.0000, 'ft', '2026-01-27 18:36:01', '2026-01-27 18:36:01'),
(1102, 309, 28, NULL, 5, 22.00, 0.00, 0.00, 20.00, 440.00, 2.0000, 'ft', 2.0000, 'ft', '2026-01-27 18:36:01', '2026-01-27 18:36:01'),
(1103, 309, 28, NULL, 1, 22.00, 0.00, 0.00, 17.50, 385.00, 3.5000, 'ft', 5.0000, 'ft', '2026-01-27 18:36:01', '2026-01-27 18:36:01'),
(1104, 309, 28, NULL, 1, 22.00, 0.00, 0.00, 4.00, 88.00, 2.0000, 'ft', 2.0000, 'ft', '2026-01-27 18:36:01', '2026-01-27 18:36:01'),
(1105, 309, 28, NULL, 1, 22.00, 0.00, 0.00, 8.00, 176.00, 2.0000, 'ft', 4.0000, 'ft', '2026-01-27 18:36:01', '2026-01-27 18:36:01'),
(1106, 309, 28, NULL, 2, 22.00, 0.00, 0.00, 42.00, 924.00, 3.0000, 'ft', 7.0000, 'ft', '2026-01-27 18:36:01', '2026-01-27 18:36:01'),
(1107, 309, 31, NULL, 1, 50.00, 0.00, 0.00, 40.00, 2000.00, 5.0000, 'ft', 8.0000, 'ft', '2026-01-27 18:36:01', '2026-01-27 18:36:01'),
(1108, 305, 28, NULL, 1, 22.00, 0.00, 0.00, 8.00, 176.00, 1.0000, 'ft', 8.0000, 'ft', '2026-01-27 19:17:35', '2026-01-27 19:17:35'),
(1109, 305, 28, NULL, 1, 22.00, 0.00, 0.00, 16.00, 352.00, 4.0000, 'ft', 4.0000, 'ft', '2026-01-27 19:17:35', '2026-01-27 19:17:35'),
(1110, 305, 28, NULL, 1, 22.00, 0.00, 0.00, 150.00, 3300.00, 15.0000, 'ft', 10.0000, 'ft', '2026-01-27 19:17:35', '2026-01-27 19:17:35'),
(1111, 305, 28, NULL, 3, 22.00, 0.00, 0.00, 633.00, 13926.00, 21.1000, 'ft', 10.0000, 'ft', '2026-01-27 19:17:35', '2026-01-27 19:17:35'),
(1112, 305, 28, NULL, 2, 22.00, 0.00, 0.00, 501.00, 11022.00, 3.0000, 'ft', 83.5000, 'ft', '2026-01-27 19:17:35', '2026-01-27 19:17:35'),
(1113, 305, 28, NULL, 1, 22.00, 0.00, 0.00, 6.00, 132.00, 3.0000, 'ft', 2.0000, 'ft', '2026-01-27 19:17:35', '2026-01-27 19:17:35'),
(1114, 305, 28, NULL, 1, 22.00, 0.00, 0.00, 3.00, 66.00, 1.0000, 'ft', 3.0000, 'ft', '2026-01-27 19:17:35', '2026-01-27 19:17:35'),
(1115, 305, 28, NULL, 2, 22.00, 0.00, 0.00, 32.00, 704.00, 4.0000, 'ft', 4.0000, 'ft', '2026-01-27 19:17:35', '2026-01-27 19:17:35'),
(1116, 305, 28, NULL, 2, 22.00, 0.00, 0.00, 48.00, 1056.00, 4.0000, 'ft', 6.0000, 'ft', '2026-01-27 19:17:35', '2026-01-27 19:17:35'),
(1117, 305, 28, NULL, 1, 22.00, 0.00, 0.00, 46.00, 1012.00, 4.0000, 'ft', 11.5000, 'ft', '2026-01-27 19:17:35', '2026-01-27 19:17:35'),
(1118, 305, 28, NULL, 1, 22.00, 0.00, 0.00, 84.00, 1848.00, 6.0000, 'ft', 14.0000, 'ft', '2026-01-27 19:17:35', '2026-01-27 19:17:35'),
(1119, 305, 28, NULL, 1, 22.00, 0.00, 0.00, 45.00, 990.00, 3.0000, 'ft', 15.0000, 'ft', '2026-01-27 19:17:35', '2026-01-27 19:17:35'),
(1120, 305, 28, NULL, 1, 22.00, 0.00, 0.00, 8.00, 176.00, 1.0000, 'ft', 8.0000, 'ft', '2026-01-27 19:17:35', '2026-01-27 19:17:35'),
(1121, 305, 28, NULL, 1, 22.00, 0.00, 0.00, 9.00, 198.00, 6.0000, 'ft', 1.5000, 'ft', '2026-01-27 19:17:35', '2026-01-27 19:17:35'),
(1122, 305, 28, NULL, 3, 22.00, 0.00, 0.00, 9.00, 198.00, 2.0000, 'ft', 1.5000, 'ft', '2026-01-27 19:17:35', '2026-01-27 19:17:35'),
(1123, 305, 28, NULL, 1, 22.00, 0.00, 0.00, 16.80, 369.60, 2.0000, 'ft', 8.4000, 'ft', '2026-01-27 19:17:35', '2026-01-27 19:17:35'),
(1124, 305, 28, NULL, 1, 22.00, 0.00, 0.00, 16.20, 356.40, 8.1000, 'ft', 2.0000, 'ft', '2026-01-27 19:17:35', '2026-01-27 19:17:35'),
(1125, 305, 28, NULL, 1, 22.00, 0.00, 0.00, 25.20, 554.40, 8.4000, 'ft', 3.0000, 'ft', '2026-01-27 19:17:35', '2026-01-27 19:17:35'),
(1126, 305, 28, NULL, 1, 22.00, 0.00, 0.00, 26.00, 572.00, 6.5000, 'ft', 4.0000, 'ft', '2026-01-27 19:17:35', '2026-01-27 19:17:35'),
(1127, 305, 28, NULL, 2, 22.00, 0.00, 0.00, 12.00, 264.00, 2.0000, 'ft', 3.0000, 'ft', '2026-01-27 19:17:35', '2026-01-27 19:17:35'),
(1128, 305, 28, NULL, 1, 22.00, 0.00, 0.00, 7.20, 158.40, 1.8000, 'ft', 4.0000, 'ft', '2026-01-27 19:17:35', '2026-01-27 19:17:35'),
(1129, 305, 28, NULL, 1, 22.00, 0.00, 0.00, 8.00, 176.00, 1.0000, 'ft', 8.0000, 'ft', '2026-01-27 19:17:35', '2026-01-27 19:17:35'),
(1130, 305, 28, NULL, 1, 22.00, 0.00, 0.00, 35.00, 770.00, 2.0000, 'ft', 17.5000, 'ft', '2026-01-27 19:17:35', '2026-01-27 19:17:35'),
(1131, 305, 28, NULL, 1, 22.00, 0.00, 0.00, 41.00, 902.00, 2.0000, 'ft', 20.5000, 'ft', '2026-01-27 19:17:35', '2026-01-27 19:17:35'),
(1132, 305, 28, NULL, 1, 22.00, 0.00, 0.00, 9.00, 198.00, 1.5000, 'ft', 6.0000, 'ft', '2026-01-27 19:17:35', '2026-01-27 19:17:35'),
(1133, 305, 28, NULL, 1, 22.00, 0.00, 0.00, 25.00, 550.00, 2.5000, 'ft', 10.0000, 'ft', '2026-01-27 19:17:35', '2026-01-27 19:17:35'),
(1134, 305, 28, NULL, 1, 22.00, 0.00, 0.00, 60.00, 1320.00, 4.0000, 'ft', 15.0000, 'ft', '2026-01-27 19:17:35', '2026-01-27 19:17:35'),
(1135, 305, 28, NULL, 1, 22.00, 0.00, 0.00, 64.00, 1408.00, 4.0000, 'ft', 16.0000, 'ft', '2026-01-27 19:17:35', '2026-01-27 19:17:35'),
(1136, 305, 28, NULL, 1, 22.00, 0.00, 0.00, 8.10, 178.20, 2.7000, 'ft', 3.0000, 'ft', '2026-01-27 19:17:35', '2026-01-27 19:17:35'),
(1137, 305, 28, NULL, 1, 22.00, 0.00, 0.00, 17.50, 385.00, 2.5000, 'ft', 7.0000, 'ft', '2026-01-27 19:17:35', '2026-01-27 19:17:35'),
(1138, 305, 28, NULL, 1, 22.00, 0.00, 0.00, 10.50, 231.00, 1.5000, 'ft', 7.0000, 'ft', '2026-01-27 19:17:35', '2026-01-27 19:17:35'),
(1139, 305, 28, NULL, 5, 22.00, 0.00, 0.00, 35.00, 770.00, 1.0000, 'ft', 7.0000, 'ft', '2026-01-27 19:17:35', '2026-01-27 19:17:35'),
(1140, 305, 28, NULL, 2, 22.00, 0.00, 0.00, 14.00, 308.00, 1.0000, 'ft', 7.0000, 'ft', '2026-01-27 19:17:35', '2026-01-27 19:17:35'),
(1163, 311, 28, NULL, 1, 25.00, 0.00, 0.00, 140.00, 3500.00, 10.0000, 'ft', 14.0000, 'ft', '2026-01-28 15:31:33', '2026-01-28 15:31:33'),
(1164, 311, 28, NULL, 1, 25.00, 0.00, 0.00, 150.00, 3750.00, 10.0000, 'ft', 15.0000, 'ft', '2026-01-28 15:31:33', '2026-01-28 15:31:33'),
(1165, 311, 28, NULL, 1, 23.00, 0.00, 0.00, 110.00, 2530.00, 11.0000, 'ft', 10.0000, 'ft', '2026-01-28 15:31:33', '2026-01-28 15:31:33'),
(1166, 312, 28, NULL, 5, 22.00, 0.00, 0.00, 60.00, 1320.00, 3.0000, 'ft', 4.0000, 'ft', '2026-01-28 17:19:18', '2026-01-28 17:19:18'),
(1167, 312, 28, NULL, 1, 22.00, 0.00, 0.00, 64.00, 1408.00, 8.0000, 'ft', 8.0000, 'ft', '2026-01-28 17:19:18', '2026-01-28 17:19:18'),
(1168, 312, 28, NULL, 2, 22.00, 0.00, 0.00, 100.00, 2200.00, 5.0000, 'ft', 10.0000, 'ft', '2026-01-28 17:19:18', '2026-01-28 17:19:18'),
(1169, 312, 28, NULL, 2, 22.00, 0.00, 0.00, 208.00, 4576.00, 8.0000, 'ft', 13.0000, 'ft', '2026-01-28 17:19:18', '2026-01-28 17:19:18'),
(1170, 312, 28, NULL, 2, 22.00, 0.00, 0.00, 280.00, 6160.00, 8.0000, 'ft', 17.5000, 'ft', '2026-01-28 17:19:18', '2026-01-28 17:19:18'),
(1171, 313, 28, NULL, 4, 22.00, 0.00, 0.00, 24.00, 528.00, 3.0000, 'ft', 2.0000, 'ft', '2026-01-28 17:51:17', '2026-01-28 17:51:17'),
(1172, 313, 28, NULL, 1, 22.00, 0.00, 0.00, 12.00, 264.00, 3.0000, 'ft', 4.0000, 'ft', '2026-01-28 17:51:17', '2026-01-28 17:51:17'),
(1173, 314, 28, NULL, 6, 22.00, 0.00, 0.00, 36.00, 792.00, 3.0000, 'ft', 2.0000, 'ft', '2026-01-28 17:52:48', '2026-01-28 17:52:48'),
(1174, 314, 28, NULL, 1, 22.00, 0.00, 0.00, 48.00, 1056.00, 4.0000, 'ft', 12.0000, 'ft', '2026-01-28 17:52:48', '2026-01-28 17:52:48'),
(1175, 314, 32, NULL, 2, 75.00, 0.00, 0.00, 27.00, 2025.00, 3.0000, 'ft', 4.5000, 'ft', '2026-01-28 17:52:48', '2026-01-28 17:52:48'),
(1176, 315, 28, NULL, 2, 22.00, 0.00, 0.00, 12.00, 264.00, 3.0000, 'ft', 2.0000, 'ft', '2026-01-28 17:54:19', '2026-01-28 17:54:19'),
(1177, 315, 28, NULL, 1, 22.00, 0.00, 0.00, 20.00, 440.00, 4.0000, 'ft', 5.0000, 'ft', '2026-01-28 17:54:19', '2026-01-28 17:54:19'),
(1178, 315, 28, NULL, 1, 22.00, 0.00, 0.00, 150.00, 3300.00, 10.0000, 'ft', 15.0000, 'ft', '2026-01-28 17:54:19', '2026-01-28 17:54:19'),
(1179, 316, 28, NULL, 1, 23.00, 0.00, 0.00, 6.00, 138.00, 3.0000, 'ft', 2.0000, 'ft', '2026-01-28 17:55:19', '2026-01-28 17:55:19'),
(1180, 316, 28, NULL, 5, 23.00, 0.00, 0.00, 75.00, 1725.00, 3.0000, 'ft', 5.0000, 'ft', '2026-01-28 17:55:19', '2026-01-28 17:55:19'),
(1181, 316, 28, NULL, 1, 23.00, 0.00, 0.00, 24.00, 552.00, 4.0000, 'ft', 6.0000, 'ft', '2026-01-28 17:55:19', '2026-01-28 17:55:19'),
(1182, 316, 28, NULL, 1, 23.00, 0.00, 0.00, 20.00, 460.00, 2.0000, 'ft', 10.0000, 'ft', '2026-01-28 17:55:19', '2026-01-28 17:55:19'),
(1183, 316, 28, NULL, 1, 23.00, 0.00, 0.00, 9.20, 211.60, 2.3000, 'ft', 4.0000, 'ft', '2026-01-28 17:55:19', '2026-01-28 17:55:19'),
(1184, 316, 28, NULL, 1, 23.00, 0.00, 0.00, 42.00, 966.00, 6.0000, 'ft', 7.0000, 'ft', '2026-01-28 17:55:19', '2026-01-28 17:55:19'),
(1185, 317, 28, NULL, 1, 22.00, 0.00, 0.00, 8.82, 194.04, 2.1000, 'ft', 4.2000, 'ft', '2026-01-28 17:56:47', '2026-01-28 17:56:47'),
(1186, 317, 28, NULL, 4, 22.00, 0.00, 0.00, 100.00, 2200.00, 5.0000, 'ft', 5.0000, 'ft', '2026-01-28 17:56:47', '2026-01-28 17:56:47'),
(1187, 317, 28, NULL, 1, 22.00, 0.00, 0.00, 60.00, 1320.00, 10.0000, 'ft', 6.0000, 'ft', '2026-01-28 17:56:47', '2026-01-28 17:56:47'),
(1188, 317, 28, NULL, 1, 22.00, 0.00, 0.00, 96.00, 2112.00, 16.0000, 'ft', 6.0000, 'ft', '2026-01-28 17:56:47', '2026-01-28 17:56:47'),
(1189, 317, 28, NULL, 2, 22.00, 0.00, 0.00, 32.00, 704.00, 2.0000, 'ft', 8.0000, 'ft', '2026-01-28 17:56:47', '2026-01-28 17:56:47'),
(1190, 317, 28, NULL, 1, 22.00, 0.00, 0.00, 84.00, 1848.00, 7.0000, 'ft', 12.0000, 'ft', '2026-01-28 17:56:47', '2026-01-28 17:56:47'),
(1191, 317, 28, NULL, 1, 22.00, 0.00, 0.00, 200.00, 4400.00, 10.0000, 'ft', 20.0000, 'ft', '2026-01-28 17:56:47', '2026-01-28 17:56:47'),
(1193, 319, 28, NULL, 1, 23.00, 0.00, 0.00, 6.00, 138.00, 3.0000, 'ft', 2.0000, 'ft', '2026-01-28 18:02:12', '2026-01-28 18:02:12'),
(1194, 319, 28, NULL, 1, 23.00, 0.00, 0.00, 15.00, 345.00, 3.0000, 'ft', 5.0000, 'ft', '2026-01-28 18:02:12', '2026-01-28 18:02:12'),
(1195, 318, 28, NULL, 1, 30.00, 0.00, 0.00, 10.00, 300.00, 1.0000, 'ft', 10.0000, 'ft', '2026-01-28 18:09:19', '2026-01-28 18:09:19'),
(1196, 320, 28, NULL, 1, 27.00, 0.00, 0.00, 30.00, 810.00, 3.0000, 'ft', 10.0000, 'ft', '2026-01-28 18:27:43', '2026-01-28 18:27:43'),
(1197, 320, 28, NULL, 2, 27.00, 0.00, 0.00, 210.00, 5670.00, 10.0000, 'ft', 10.5000, 'ft', '2026-01-28 18:27:43', '2026-01-28 18:27:43'),
(1198, 320, 28, NULL, 2, 27.00, 0.00, 0.00, 294.00, 7938.00, 10.0000, 'ft', 14.7000, 'ft', '2026-01-28 18:27:43', '2026-01-28 18:27:43'),
(1199, 321, 28, NULL, 1, 22.00, 0.00, 0.00, 6.00, 132.00, 3.0000, 'ft', 2.0000, 'ft', '2026-01-28 19:11:07', '2026-01-28 19:11:07'),
(1200, 321, 28, NULL, 1, 22.00, 0.00, 0.00, 10.50, 231.00, 3.5000, 'ft', 3.0000, 'ft', '2026-01-28 19:11:07', '2026-01-28 19:11:07'),
(1201, 321, 28, NULL, 1, 22.00, 0.00, 0.00, 11.38, 250.36, 3.5000, 'ft', 3.2500, 'ft', '2026-01-28 19:11:07', '2026-01-28 19:11:07'),
(1202, 321, 28, NULL, 1, 22.00, 0.00, 0.00, 20.00, 440.00, 2.0000, 'ft', 10.0000, 'ft', '2026-01-28 19:11:07', '2026-01-28 19:11:07'),
(1203, 321, 28, NULL, 1, 22.00, 0.00, 0.00, 12.00, 264.00, 3.0000, 'ft', 4.0000, 'ft', '2026-01-28 19:11:07', '2026-01-28 19:11:07'),
(1219, 326, 28, NULL, 2, 30.00, 0.00, 0.00, 32.00, 960.00, 2.0000, 'ft', 8.0000, 'ft', '2026-01-29 17:13:07', '2026-01-29 17:13:07'),
(1220, 326, 28, NULL, 1, 30.00, 0.00, 0.00, 24.00, 720.00, 3.0000, 'ft', 8.0000, 'ft', '2026-01-29 17:13:07', '2026-01-29 17:13:07'),
(1229, 328, 28, NULL, 1, 27.00, 0.00, 0.00, 50.00, 1350.00, 5.0000, 'ft', 10.0000, 'ft', '2026-01-29 17:23:59', '2026-01-29 17:23:59'),
(1230, 328, 28, NULL, 1, 27.00, 0.00, 0.00, 24.00, 648.00, 2.0000, 'ft', 12.0000, 'ft', '2026-01-29 17:23:59', '2026-01-29 17:23:59'),
(1231, 328, 28, NULL, 1, 27.00, 0.00, 0.00, 48.00, 1296.00, 4.0000, 'ft', 12.0000, 'ft', '2026-01-29 17:23:59', '2026-01-29 17:23:59'),
(1232, 328, 28, NULL, 1, 27.00, 0.00, 0.00, 26.00, 702.00, 2.0000, 'ft', 13.0000, 'ft', '2026-01-29 17:23:59', '2026-01-29 17:23:59'),
(1233, 328, 28, NULL, 1, 27.00, 0.00, 0.00, 52.00, 1404.00, 4.0000, 'ft', 13.0000, 'ft', '2026-01-29 17:23:59', '2026-01-29 17:23:59'),
(1234, 328, 28, NULL, 4, 27.00, 0.00, 0.00, 480.00, 12960.00, 10.0000, 'ft', 12.0000, 'ft', '2026-01-29 17:23:59', '2026-01-29 17:23:59'),
(1235, 329, 28, NULL, 10, 23.00, 0.00, 0.00, 60.00, 1380.00, 3.0000, 'ft', 2.0000, 'ft', '2026-01-29 17:34:33', '2026-01-29 17:34:33'),
(1236, 330, 28, NULL, 2, 23.00, 0.00, 0.00, 16.00, 368.00, 1.0000, 'ft', 8.0000, 'ft', '2026-01-29 17:36:54', '2026-01-29 17:36:54'),
(1237, 330, 28, NULL, 1, 23.00, 0.00, 0.00, 20.00, 460.00, 2.5000, 'ft', 8.0000, 'ft', '2026-01-29 17:36:54', '2026-01-29 17:36:54'),
(1238, 330, 28, NULL, 5, 23.00, 0.00, 0.00, 48.00, 1104.00, 1.2000, 'ft', 8.0000, 'ft', '2026-01-29 17:36:54', '2026-01-29 17:36:54'),
(1239, 330, 28, NULL, 1, 23.00, 0.00, 0.00, 64.00, 1472.00, 4.0000, 'ft', 16.0000, 'ft', '2026-01-29 17:36:54', '2026-01-29 17:36:54'),
(1240, 331, 28, NULL, 2, 22.00, 0.00, 0.00, 44.00, 968.00, 4.0000, 'ft', 5.5000, 'ft', '2026-01-29 17:42:54', '2026-01-29 17:42:54'),
(1241, 332, 28, NULL, 1, 25.00, 0.00, 0.00, 25.00, 625.00, 5.0000, 'ft', 5.0000, 'ft', '2026-01-29 17:45:26', '2026-01-29 17:45:26'),
(1242, 332, 28, NULL, 1, 25.00, 0.00, 0.00, 64.00, 1600.00, 8.0000, 'ft', 8.0000, 'ft', '2026-01-29 17:45:26', '2026-01-29 17:45:26'),
(1243, 332, 28, NULL, 1, 25.00, 0.00, 0.00, 72.00, 1800.00, 9.0000, 'ft', 8.0000, 'ft', '2026-01-29 17:45:26', '2026-01-29 17:45:26'),
(1244, 332, 28, NULL, 1, 25.00, 0.00, 0.00, 45.00, 1125.00, 5.0000, 'ft', 9.0000, 'ft', '2026-01-29 17:45:26', '2026-01-29 17:45:26'),
(1245, 333, 28, NULL, 1, 22.00, 0.00, 0.00, 24.00, 528.00, 6.0000, 'ft', 4.0000, 'ft', '2026-01-29 17:47:31', '2026-01-29 17:47:31'),
(1246, 333, 28, NULL, 1, 22.00, 0.00, 0.00, 6.00, 132.00, 1.0000, 'ft', 6.0000, 'ft', '2026-01-29 17:47:31', '2026-01-29 17:47:31'),
(1247, 333, 28, NULL, 2, 22.00, 0.00, 0.00, 12.00, 264.00, 2.0000, 'ft', 3.0000, 'ft', '2026-01-29 17:47:31', '2026-01-29 17:47:31'),
(1248, 333, 28, NULL, 2, 22.00, 0.00, 0.00, 48.00, 1056.00, 6.0000, 'ft', 4.0000, 'ft', '2026-01-29 17:47:31', '2026-01-29 17:47:31'),
(1249, 333, 28, NULL, 1, 22.00, 0.00, 0.00, 30.00, 660.00, 3.0000, 'ft', 10.0000, 'ft', '2026-01-29 17:47:31', '2026-01-29 17:47:31'),
(1250, 334, 28, NULL, 3, 23.00, 0.00, 0.00, 72.00, 1656.00, 4.0000, 'ft', 6.0000, 'ft', '2026-01-29 17:48:36', '2026-01-29 17:48:36'),
(1251, 334, 28, NULL, 1, 23.00, 0.00, 0.00, 42.00, 966.00, 6.0000, 'ft', 7.0000, 'ft', '2026-01-29 17:48:36', '2026-01-29 17:48:36'),
(1252, 334, 28, NULL, 1, 23.00, 0.00, 0.00, 27.00, 621.00, 2.0000, 'ft', 13.5000, 'ft', '2026-01-29 17:48:36', '2026-01-29 17:48:36'),
(1253, 335, 28, NULL, 1, 22.00, 0.00, 0.00, 25.00, 550.00, 5.0000, 'ft', 5.0000, 'ft', '2026-01-29 17:49:44', '2026-01-29 17:49:44'),
(1254, 335, 28, NULL, 1, 22.00, 0.00, 0.00, 12.00, 264.00, 3.0000, 'ft', 4.0000, 'ft', '2026-01-29 17:49:44', '2026-01-29 17:49:44'),
(1255, 335, 32, NULL, 1, 75.00, 0.00, 0.00, 9.00, 675.00, 2.0000, 'ft', 4.5000, 'ft', '2026-01-29 17:49:44', '2026-01-29 17:49:44'),
(1256, 336, 28, NULL, 1, 40.00, 0.00, 0.00, 10.00, 400.00, 5.0000, 'ft', 2.0000, 'ft', '2026-01-29 17:50:51', '2026-01-29 17:50:51'),
(1286, 325, 28, NULL, 1, 33.33, 0.00, 0.00, 6.00, 199.98, 3.0000, 'ft', 2.0000, 'ft', '2026-01-29 18:14:07', '2026-01-29 18:14:07'),
(1287, 340, 28, NULL, 1, 23.00, 0.00, 0.00, 10.00, 230.00, 1.0000, 'ft', 10.0000, 'ft', '2026-01-29 18:33:09', '2026-01-29 18:33:09'),
(1288, 340, 28, NULL, 2, 23.00, 0.00, 0.00, 42.00, 966.00, 3.0000, 'ft', 7.0000, 'ft', '2026-01-29 18:33:09', '2026-01-29 18:33:09'),
(1289, 340, 28, NULL, 1, 23.00, 0.00, 0.00, 33.00, 759.00, 3.0000, 'ft', 11.0000, 'ft', '2026-01-29 18:33:09', '2026-01-29 18:33:09'),
(1290, 340, 28, NULL, 1, 23.00, 0.00, 0.00, 10.00, 230.00, 1.0000, 'ft', 10.0000, 'ft', '2026-01-29 18:33:09', '2026-01-29 18:33:09'),
(1291, 340, 28, NULL, 2, 23.00, 0.00, 0.00, 30.00, 690.00, 3.0000, 'ft', 5.0000, 'ft', '2026-01-29 18:33:09', '2026-01-29 18:33:09'),
(1292, 340, 28, NULL, 1, 23.00, 0.00, 0.00, 112.00, 2576.00, 8.0000, 'ft', 14.0000, 'ft', '2026-01-29 18:33:09', '2026-01-29 18:33:09'),
(1293, 338, 31, NULL, 4, 40.00, 0.00, 0.00, 24.00, 960.00, 2.0000, 'ft', 3.0000, 'ft', '2026-01-29 19:21:17', '2026-01-29 19:21:17'),
(1294, 338, 28, NULL, 1, 22.00, 0.00, 0.00, 13.50, 297.00, 9.0000, 'ft', 1.5000, 'ft', '2026-01-29 19:21:17', '2026-01-29 19:21:17'),
(1295, 338, 28, NULL, 1, 22.00, 0.00, 0.00, 24.00, 528.00, 6.0000, 'ft', 4.0000, 'ft', '2026-01-29 19:21:17', '2026-01-29 19:21:17'),
(1296, 338, 28, NULL, 1, 22.00, 0.00, 0.00, 12.50, 275.00, 2.5000, 'ft', 5.0000, 'ft', '2026-01-29 19:21:17', '2026-01-29 19:21:17'),
(1297, 338, 28, NULL, 4, 22.00, 0.00, 0.00, 36.00, 792.00, 1.0000, 'ft', 9.0000, 'ft', '2026-01-29 19:21:17', '2026-01-29 19:21:17'),
(1298, 338, 28, NULL, 1, 22.00, 0.00, 0.00, 18.00, 396.00, 2.0000, 'ft', 9.0000, 'ft', '2026-01-29 19:21:17', '2026-01-29 19:21:17'),
(1299, 338, 28, NULL, 1, 22.00, 0.00, 0.00, 60.00, 1320.00, 6.0000, 'ft', 10.0000, 'ft', '2026-01-29 19:21:17', '2026-01-29 19:21:17'),
(1300, 338, 28, NULL, 1, 22.00, 0.00, 0.00, 42.00, 924.00, 2.0000, 'ft', 21.0000, 'ft', '2026-01-29 19:21:17', '2026-01-29 19:21:17'),
(1301, 338, 28, NULL, 1, 22.00, 0.00, 0.00, 110.00, 2420.00, 10.0000, 'ft', 11.0000, 'ft', '2026-01-29 19:21:17', '2026-01-29 19:21:17'),
(1302, 338, 28, NULL, 1, 22.00, 0.00, 0.00, 160.00, 3520.00, 10.0000, 'ft', 16.0000, 'ft', '2026-01-29 19:21:17', '2026-01-29 19:21:17'),
(1303, 338, 28, NULL, 1, 22.00, 0.00, 0.00, 72.00, 1584.00, 4.0000, 'ft', 18.0000, 'ft', '2026-01-29 19:21:17', '2026-01-29 19:21:17'),
(1304, 341, 28, NULL, 1, 30.00, 0.00, 0.00, 12.00, 360.00, 4.0000, 'ft', 3.0000, 'ft', '2026-01-31 11:58:37', '2026-01-31 11:58:37'),
(1305, 341, 28, NULL, 1, 30.00, 0.00, 0.00, 11.00, 330.00, 1.0000, 'ft', 11.0000, 'ft', '2026-01-31 11:58:37', '2026-01-31 11:58:37'),
(1306, 324, 28, NULL, 4, 30.00, 0.00, 0.00, 12.00, 360.00, 2.0000, 'ft', 1.5000, 'ft', '2026-01-31 12:06:42', '2026-01-31 12:06:42'),
(1307, 324, 28, NULL, 3, 30.00, 0.00, 0.00, 18.00, 540.00, 3.0000, 'ft', 2.0000, 'ft', '2026-01-31 12:06:42', '2026-01-31 12:06:42'),
(1308, 342, 28, NULL, 1, 30.00, 0.00, 0.00, 8.00, 240.00, 4.0000, 'ft', 2.0000, 'ft', '2026-01-31 12:58:51', '2026-01-31 12:58:51'),
(1309, 343, 28, NULL, 1, 27.00, 0.00, 0.00, 103.00, 2781.00, 10.3000, 'ft', 10.0000, 'ft', '2026-01-31 14:22:10', '2026-01-31 14:22:10'),
(1310, 343, 28, NULL, 2, 27.00, 0.00, 0.00, 247.20, 6674.40, 10.3000, 'ft', 12.0000, 'ft', '2026-01-31 14:22:10', '2026-01-31 14:22:10');
INSERT INTO `sale_items` (`id`, `sale_id`, `product_id`, `description`, `quantity`, `rate`, `discount`, `tax`, `units_sqft`, `line_total`, `length_input`, `length_unit`, `width_input`, `width_unit`, `created_at`, `updated_at`) VALUES
(1311, 343, 28, NULL, 1, 27.00, 0.00, 0.00, 133.90, 3615.30, 10.3000, 'ft', 13.0000, 'ft', '2026-01-31 14:22:10', '2026-01-31 14:22:10'),
(1312, 343, 28, NULL, 1, 27.00, 0.00, 0.00, 204.97, 5534.19, 10.3000, 'ft', 19.9000, 'ft', '2026-01-31 14:22:10', '2026-01-31 14:22:10'),
(1313, 343, 28, NULL, 1, 27.00, 0.00, 0.00, 264.71, 7147.17, 10.3000, 'ft', 25.7000, 'ft', '2026-01-31 14:22:10', '2026-01-31 14:22:10'),
(1324, 344, 28, NULL, 1, 30.00, 0.00, 0.00, 56.00, 1680.00, 7.0000, 'ft', 8.0000, 'ft', '2026-01-31 15:48:12', '2026-01-31 15:48:12'),
(1325, 345, 28, NULL, 5, 22.00, 0.00, 0.00, 30.00, 660.00, 3.0000, 'ft', 2.0000, 'ft', '2026-01-31 15:48:50', '2026-01-31 15:48:50'),
(1326, 345, 28, NULL, 3, 22.00, 0.00, 0.00, 30.00, 660.00, 5.0000, 'ft', 2.0000, 'ft', '2026-01-31 15:48:50', '2026-01-31 15:48:50'),
(1327, 327, 28, NULL, 1, 23.00, 0.00, 0.00, 12.80, 294.40, 8.0000, 'ft', 1.6000, 'ft', '2026-01-31 16:06:47', '2026-01-31 16:06:47'),
(1328, 327, 28, NULL, 1, 23.00, 0.00, 0.00, 14.40, 331.20, 8.0000, 'ft', 1.8000, 'ft', '2026-01-31 16:06:47', '2026-01-31 16:06:47'),
(1329, 327, 28, NULL, 1, 23.00, 0.00, 0.00, 20.00, 460.00, 2.0000, 'ft', 10.0000, 'ft', '2026-01-31 16:06:47', '2026-01-31 16:06:47'),
(1330, 327, 28, NULL, 1, 23.00, 0.00, 0.00, 38.00, 874.00, 4.0000, 'ft', 9.5000, 'ft', '2026-01-31 16:06:47', '2026-01-31 16:06:47'),
(1331, 327, 28, NULL, 1, 23.00, 0.00, 0.00, 85.50, 1966.50, 9.0000, 'ft', 9.5000, 'ft', '2026-01-31 16:06:47', '2026-01-31 16:06:47'),
(1332, 327, 28, NULL, 1, 23.00, 0.00, 0.00, 27.00, 621.00, 2.0000, 'ft', 13.5000, 'ft', '2026-01-31 16:06:47', '2026-01-31 16:06:47'),
(1333, 327, 28, NULL, 2, 23.00, 0.00, 0.00, 243.00, 5589.00, 9.0000, 'ft', 13.5000, 'ft', '2026-01-31 16:06:47', '2026-01-31 16:06:47'),
(1334, 327, 28, NULL, 1, 23.00, 0.00, 0.00, 27.00, 621.00, 2.0000, 'ft', 13.5000, 'ft', '2026-01-31 16:06:47', '2026-01-31 16:06:47'),
(1335, 327, 28, NULL, 1, 23.00, 0.00, 0.00, 8.00, 184.00, 1.0000, 'ft', 8.0000, 'ft', '2026-01-31 16:06:47', '2026-01-31 16:06:47'),
(1336, 327, 28, NULL, 1, 23.00, 0.00, 0.00, 6.00, 138.00, 3.0000, 'ft', 2.0000, 'ft', '2026-01-31 16:06:47', '2026-01-31 16:06:47'),
(1417, 346, 28, NULL, 2, 21.00, 0.00, 0.00, 12.00, 252.00, 2.0000, 'ft', 3.0000, 'ft', '2026-01-31 18:04:25', '2026-01-31 18:04:25'),
(1418, 346, 28, NULL, 2, 21.00, 0.00, 0.00, 10.00, 210.00, 1.0000, 'ft', 5.0000, 'ft', '2026-01-31 18:04:25', '2026-01-31 18:04:25'),
(1419, 346, 28, NULL, 1, 21.00, 0.00, 0.00, 11.00, 231.00, 2.0000, 'ft', 5.5000, 'ft', '2026-01-31 18:04:25', '2026-01-31 18:04:25'),
(1420, 346, 28, NULL, 1, 21.00, 0.00, 0.00, 10.00, 210.00, 2.0000, 'ft', 5.0000, 'ft', '2026-01-31 18:04:25', '2026-01-31 18:04:25'),
(1421, 346, 28, NULL, 1, 21.00, 0.00, 0.00, 7.00, 147.00, 1.0000, 'ft', 7.0000, 'ft', '2026-01-31 18:04:25', '2026-01-31 18:04:25'),
(1422, 346, 28, NULL, 2, 21.00, 0.00, 0.00, 11.60, 243.60, 2.0000, 'ft', 2.9000, 'ft', '2026-01-31 18:04:25', '2026-01-31 18:04:25'),
(1423, 346, 28, NULL, 2, 21.00, 0.00, 0.00, 70.00, 1470.00, 7.0000, 'ft', 5.0000, 'ft', '2026-01-31 18:04:25', '2026-01-31 18:04:25'),
(1424, 346, 28, NULL, 1, 21.00, 0.00, 0.00, 11.00, 231.00, 1.1000, 'ft', 10.0000, 'ft', '2026-01-31 18:04:25', '2026-01-31 18:04:25'),
(1425, 346, 28, NULL, 1, 21.00, 0.00, 0.00, 40.00, 840.00, 4.0000, 'ft', 10.0000, 'ft', '2026-01-31 18:04:25', '2026-01-31 18:04:25'),
(1426, 346, 28, NULL, 1, 21.00, 0.00, 0.00, 15.60, 327.60, 1.3000, 'ft', 12.0000, 'ft', '2026-01-31 18:04:25', '2026-01-31 18:04:25'),
(1427, 346, 28, NULL, 1, 21.00, 0.00, 0.00, 84.00, 1764.00, 7.0000, 'ft', 12.0000, 'ft', '2026-01-31 18:04:25', '2026-01-31 18:04:25'),
(1428, 346, 28, NULL, 2, 21.00, 0.00, 0.00, 340.00, 7140.00, 10.0000, 'ft', 17.0000, 'ft', '2026-01-31 18:04:25', '2026-01-31 18:04:25'),
(1429, 346, 28, NULL, 2, 21.00, 0.00, 0.00, 36.00, 756.00, 2.0000, 'ft', 9.0000, 'ft', '2026-01-31 18:04:25', '2026-01-31 18:04:25'),
(1430, 346, 28, NULL, 1, 21.00, 0.00, 0.00, 38.50, 808.50, 3.5000, 'ft', 11.0000, 'ft', '2026-01-31 18:04:25', '2026-01-31 18:04:25'),
(1431, 346, 28, NULL, 2, 21.00, 0.00, 0.00, 216.00, 4536.00, 9.0000, 'ft', 12.0000, 'ft', '2026-01-31 18:04:25', '2026-01-31 18:04:25'),
(1432, 346, 28, NULL, 2, 21.00, 0.00, 0.00, 252.00, 5292.00, 9.0000, 'ft', 14.0000, 'ft', '2026-01-31 18:04:25', '2026-01-31 18:04:25'),
(1433, 346, 28, NULL, 1, 21.00, 0.00, 0.00, 6.50, 136.50, 1.0000, 'ft', 6.5000, 'ft', '2026-01-31 18:04:25', '2026-01-31 18:04:25'),
(1434, 346, 28, NULL, 1, 21.00, 0.00, 0.00, 12.00, 252.00, 2.0000, 'ft', 6.0000, 'ft', '2026-01-31 18:04:25', '2026-01-31 18:04:25'),
(1435, 346, 28, NULL, 1, 21.00, 0.00, 0.00, 7.00, 147.00, 1.0000, 'ft', 7.0000, 'ft', '2026-01-31 18:04:25', '2026-01-31 18:04:25'),
(1436, 346, 28, NULL, 1, 21.00, 0.00, 0.00, 4.00, 84.00, 4.0000, 'ft', 1.0000, 'ft', '2026-01-31 18:04:25', '2026-01-31 18:04:25'),
(1437, 346, 28, NULL, 2, 21.00, 0.00, 0.00, 10.00, 210.00, 5.0000, 'ft', 1.0000, 'ft', '2026-01-31 18:04:25', '2026-01-31 18:04:25'),
(1438, 346, 28, NULL, 2, 21.00, 0.00, 0.00, 15.00, 315.00, 3.0000, 'ft', 2.5000, 'ft', '2026-01-31 18:04:25', '2026-01-31 18:04:25'),
(1439, 346, 28, NULL, 1, 21.00, 0.00, 0.00, 5.60, 117.60, 2.0000, 'ft', 2.8000, 'ft', '2026-01-31 18:04:25', '2026-01-31 18:04:25'),
(1440, 346, 28, NULL, 1, 21.00, 0.00, 0.00, 24.00, 504.00, 3.0000, 'ft', 8.0000, 'ft', '2026-01-31 18:04:25', '2026-01-31 18:04:25'),
(1441, 346, 28, NULL, 2, 21.00, 0.00, 0.00, 12.00, 252.00, 3.0000, 'ft', 2.0000, 'ft', '2026-01-31 18:04:25', '2026-01-31 18:04:25'),
(1442, 346, 28, NULL, 1, 21.00, 0.00, 0.00, 10.00, 210.00, 5.0000, 'ft', 2.0000, 'ft', '2026-01-31 18:04:25', '2026-01-31 18:04:25'),
(1443, 346, 28, NULL, 2, 21.00, 0.00, 0.00, 6.00, 126.00, 2.0000, 'ft', 1.5000, 'ft', '2026-01-31 18:04:25', '2026-01-31 18:04:25'),
(1444, 346, 28, NULL, 1, 21.00, 0.00, 0.00, 12.00, 252.00, 2.0000, 'ft', 6.0000, 'ft', '2026-01-31 18:04:25', '2026-01-31 18:04:25'),
(1445, 346, 28, NULL, 1, 21.00, 0.00, 0.00, 40.00, 840.00, 8.0000, 'ft', 5.0000, 'ft', '2026-01-31 18:04:25', '2026-01-31 18:04:25'),
(1446, 346, 28, NULL, 1, 21.00, 0.00, 0.00, 160.00, 3360.00, 10.0000, 'ft', 16.0000, 'ft', '2026-01-31 18:04:25', '2026-01-31 18:04:25'),
(1447, 346, 28, NULL, 1, 21.00, 0.00, 0.00, 25.80, 541.80, 2.0000, 'ft', 12.9000, 'ft', '2026-01-31 18:04:25', '2026-01-31 18:04:25'),
(1448, 346, 28, NULL, 1, 21.00, 0.00, 0.00, 6.00, 126.00, 1.0000, 'ft', 6.0000, 'ft', '2026-01-31 18:04:25', '2026-01-31 18:04:25'),
(1449, 346, 28, NULL, 1, 21.00, 0.00, 0.00, 35.00, 735.00, 3.5000, 'ft', 10.0000, 'ft', '2026-01-31 18:04:25', '2026-01-31 18:04:25'),
(1450, 346, 28, NULL, 2, 21.00, 0.00, 0.00, 220.00, 4620.00, 10.0000, 'ft', 11.0000, 'ft', '2026-01-31 18:04:25', '2026-01-31 18:04:25'),
(1451, 347, 28, NULL, 1, 25.00, 0.00, 0.00, 36.80, 920.00, 3.2000, 'ft', 11.5000, 'ft', '2026-01-31 18:30:56', '2026-01-31 18:30:56'),
(1452, 347, 28, NULL, 1, 25.00, 0.00, 0.00, 12.00, 300.00, 3.0000, 'ft', 4.0000, 'ft', '2026-01-31 18:30:56', '2026-01-31 18:30:56'),
(1455, 349, 28, NULL, 1, 30.00, 0.00, 0.00, 24.00, 720.00, 2.0000, 'ft', 12.0000, 'ft', '2026-01-31 18:34:20', '2026-01-31 18:34:20'),
(1456, 350, 28, NULL, 2, 23.00, 0.00, 0.00, 260.00, 5980.00, 10.0000, 'ft', 13.0000, 'ft', '2026-01-31 18:34:48', '2026-01-31 18:34:48'),
(1457, 350, 28, NULL, 2, 23.00, 0.00, 0.00, 360.00, 8280.00, 10.0000, 'ft', 18.0000, 'ft', '2026-01-31 18:34:48', '2026-01-31 18:34:48'),
(1459, 352, 28, NULL, 1, 25.00, 0.00, 0.00, 28.00, 700.00, 2.0000, 'ft', 14.0000, 'ft', '2026-01-31 18:37:11', '2026-01-31 18:37:11'),
(1460, 353, 28, NULL, 2, 22.00, 0.00, 0.00, 20.00, 440.00, 5.0000, 'ft', 2.0000, 'ft', '2026-01-31 18:37:39', '2026-01-31 18:37:39'),
(1461, 353, 28, NULL, 1, 22.00, 0.00, 0.00, 24.00, 528.00, 3.0000, 'ft', 8.0000, 'ft', '2026-01-31 18:37:39', '2026-01-31 18:37:39'),
(1462, 353, 28, NULL, 1, 22.00, 0.00, 0.00, 40.00, 880.00, 4.0000, 'ft', 10.0000, 'ft', '2026-01-31 18:37:39', '2026-01-31 18:37:39'),
(1463, 354, 28, NULL, 2, 22.00, 0.00, 0.00, 12.00, 264.00, 3.0000, 'ft', 2.0000, 'ft', '2026-01-31 18:38:46', '2026-01-31 18:38:46'),
(1466, 356, 28, NULL, 5, 30.00, 0.00, 0.00, 50.00, 1500.00, 4.0000, 'ft', 2.5000, 'ft', '2026-01-31 18:42:38', '2026-01-31 18:42:38'),
(1467, 357, 28, NULL, 1, 22.00, 0.00, 0.00, 6.00, 132.00, 3.0000, 'ft', 2.0000, 'ft', '2026-01-31 18:43:55', '2026-01-31 18:43:55'),
(1468, 357, 28, NULL, 1, 22.00, 0.00, 0.00, 30.00, 660.00, 3.0000, 'ft', 10.0000, 'ft', '2026-01-31 18:43:55', '2026-01-31 18:43:55'),
(1469, 357, 28, NULL, 1, 22.00, 0.00, 0.00, 31.50, 693.00, 3.0000, 'ft', 10.5000, 'ft', '2026-01-31 18:43:55', '2026-01-31 18:43:55'),
(1470, 358, 28, NULL, 1, 30.00, 0.00, 0.00, 6.00, 180.00, 2.0000, 'ft', 3.0000, 'ft', '2026-01-31 18:44:39', '2026-01-31 18:44:39'),
(1471, 358, 28, NULL, 1, 60.00, 0.00, 0.00, 3.00, 180.00, 1.5000, 'ft', 2.0000, 'ft', '2026-01-31 18:44:39', '2026-01-31 18:44:39'),
(1473, 360, 28, NULL, 1, 22.00, 0.00, 0.00, 60.00, 1320.00, 6.0000, 'ft', 10.0000, 'ft', '2026-01-31 18:47:08', '2026-01-31 18:47:08'),
(1474, 360, 28, NULL, 3, 22.00, 0.00, 0.00, 60.00, 1320.00, 2.0000, 'ft', 10.0000, 'ft', '2026-01-31 18:47:08', '2026-01-31 18:47:08'),
(1475, 360, 28, NULL, 1, 22.00, 0.00, 0.00, 9.00, 198.00, 1.0000, 'ft', 9.0000, 'ft', '2026-01-31 18:47:08', '2026-01-31 18:47:08'),
(1476, 360, 28, NULL, 1, 22.00, 0.00, 0.00, 120.00, 2640.00, 10.0000, 'ft', 12.0000, 'ft', '2026-01-31 18:47:08', '2026-01-31 18:47:08'),
(1477, 360, 28, NULL, 2, 22.00, 0.00, 0.00, 480.00, 10560.00, 10.0000, 'ft', 24.0000, 'ft', '2026-01-31 18:47:08', '2026-01-31 18:47:08'),
(1478, 360, 28, NULL, 2, 22.00, 0.00, 0.00, 96.00, 2112.00, 2.0000, 'ft', 24.0000, 'ft', '2026-01-31 18:47:08', '2026-01-31 18:47:08'),
(1479, 359, 28, 'Zoro broast', 5, 20.00, 0.00, 0.00, 1000.00, 20000.00, 10.0000, 'ft', 20.0000, 'ft', '2026-01-31 18:52:48', '2026-01-31 18:52:48'),
(1480, 359, 28, NULL, 1, 20.00, 0.00, 0.00, 375.00, 7500.00, 12.5000, 'ft', 30.0000, 'ft', '2026-01-31 18:52:48', '2026-01-31 18:52:48'),
(1481, 310, 28, NULL, 1, 25.00, 0.00, 0.00, 29.20, 730.00, 2.0000, 'ft', 14.6000, 'ft', '2026-02-01 15:42:20', '2026-02-01 15:42:20'),
(1482, 310, 28, NULL, 1, 25.00, 0.00, 0.00, 18.00, 450.00, 1.8000, 'ft', 10.0000, 'ft', '2026-02-01 15:42:20', '2026-02-01 15:42:20'),
(1483, 310, 28, NULL, 1, 25.00, 0.00, 0.00, 44.00, 1100.00, 4.0000, 'ft', 11.0000, 'ft', '2026-02-01 15:42:20', '2026-02-01 15:42:20'),
(1484, 310, 28, NULL, 1, 25.00, 0.00, 0.00, 42.00, 1050.00, 4.2000, 'ft', 10.0000, 'ft', '2026-02-01 15:42:20', '2026-02-01 15:42:20'),
(1485, 310, 28, NULL, 1, 25.00, 0.00, 0.00, 27.20, 680.00, 6.8000, 'ft', 4.0000, 'ft', '2026-02-01 15:42:20', '2026-02-01 15:42:20'),
(1486, 310, 28, NULL, 1, 25.00, 0.00, 0.00, 16.00, 400.00, 4.0000, 'ft', 4.0000, 'ft', '2026-02-01 15:42:20', '2026-02-01 15:42:20'),
(1487, 310, 28, NULL, 1, 25.00, 0.00, 0.00, 39.00, 975.00, 3.0000, 'ft', 13.0000, 'ft', '2026-02-01 15:42:20', '2026-02-01 15:42:20'),
(1488, 310, 28, NULL, 1, 25.00, 0.00, 0.00, 42.00, 1050.00, 3.0000, 'ft', 14.0000, 'ft', '2026-02-01 15:42:20', '2026-02-01 15:42:20'),
(1489, 310, 28, NULL, 1, 25.00, 0.00, 0.00, 8.80, 220.00, 4.0000, 'ft', 2.2000, 'ft', '2026-02-01 15:42:20', '2026-02-01 15:42:20'),
(1490, 310, 28, NULL, 1, 25.00, 0.00, 0.00, 10.50, 262.50, 1.5000, 'ft', 7.0000, 'ft', '2026-02-01 15:42:20', '2026-02-01 15:42:20'),
(1491, 361, 28, 'Citizen school', 1, 22.00, 0.00, 0.00, 200.00, 4400.00, 10.0000, 'ft', 20.0000, 'ft', '2026-02-01 15:58:00', '2026-02-01 15:58:00'),
(1494, 363, 34, NULL, 1, 75.00, 0.00, 0.00, 6.75, 506.25, 1.5000, 'ft', 4.5000, 'ft', '2026-02-01 16:01:13', '2026-02-01 16:01:13'),
(1495, 364, 28, NULL, 6, 22.00, 0.00, 0.00, 6.00, 132.00, 1.0000, 'ft', 1.0000, 'ft', '2026-02-01 18:48:22', '2026-02-01 18:48:22'),
(1496, 365, 28, NULL, 1, 23.00, 0.00, 0.00, 100.00, 2300.00, 10.0000, 'ft', 10.0000, 'ft', '2026-02-01 18:49:17', '2026-02-01 18:49:17'),
(1497, 366, 28, NULL, 1, 22.00, 0.00, 0.00, 36.00, 792.00, 4.0000, 'ft', 9.0000, 'ft', '2026-02-01 18:49:40', '2026-02-01 18:49:40'),
(1498, 367, 28, NULL, 15, 22.00, 0.00, 0.00, 360.00, 7920.00, 3.0000, 'ft', 8.0000, 'ft', '2026-02-01 18:50:37', '2026-02-01 18:50:37'),
(1499, 368, 28, NULL, 2, 22.00, 0.00, 0.00, 21.00, 462.00, 3.0000, 'ft', 3.5000, 'ft', '2026-02-01 18:51:42', '2026-02-01 18:51:42'),
(1500, 368, 28, NULL, 2, 22.00, 0.00, 0.00, 30.00, 660.00, 3.0000, 'ft', 5.0000, 'ft', '2026-02-01 18:51:42', '2026-02-01 18:51:42'),
(1501, 368, 28, NULL, 1, 22.00, 0.00, 0.00, 8.00, 176.00, 1.0000, 'ft', 8.0000, 'ft', '2026-02-01 18:51:42', '2026-02-01 18:51:42'),
(1502, 369, 28, NULL, 1, 22.00, 0.00, 0.00, 115.20, 2534.40, 8.0000, 'ft', 14.4000, 'ft', '2026-02-01 18:52:17', '2026-02-01 18:52:17'),
(1511, 371, 28, NULL, 1, 23.00, 0.00, 0.00, 33.00, 759.00, 3.0000, 'ft', 11.0000, 'ft', '2026-02-01 18:57:17', '2026-02-01 18:57:17'),
(1512, 371, 28, NULL, 1, 23.00, 0.00, 0.00, 32.00, 736.00, 2.0000, 'ft', 16.0000, 'ft', '2026-02-01 18:57:17', '2026-02-01 18:57:17'),
(1513, 371, 28, NULL, 1, 23.00, 0.00, 0.00, 640.00, 14720.00, 8.0000, 'ft', 80.0000, 'ft', '2026-02-01 18:57:17', '2026-02-01 18:57:17'),
(1514, 371, 28, NULL, 1, 23.00, 0.00, 0.00, 630.00, 14490.00, 10.0000, 'ft', 63.0000, 'ft', '2026-02-01 18:57:17', '2026-02-01 18:57:17'),
(1515, 372, 28, NULL, 1, 27.00, 0.00, 0.00, 99.75, 2693.25, 9.5000, 'ft', 10.5000, 'ft', '2026-02-01 18:57:59', '2026-02-01 18:57:59'),
(1516, 372, 28, NULL, 1, 27.00, 0.00, 0.00, 12.00, 324.00, 3.0000, 'ft', 4.0000, 'ft', '2026-02-01 18:57:59', '2026-02-01 18:57:59'),
(1517, 373, 28, NULL, 1, 22.00, 0.00, 0.00, 15.00, 330.00, 2.5000, 'ft', 6.0000, 'ft', '2026-02-01 18:59:55', '2026-02-01 18:59:55'),
(1518, 373, 34, NULL, 13, 80.00, 0.00, 0.00, 58.50, 4680.00, 1.0000, 'ft', 4.5000, 'ft', '2026-02-01 18:59:55', '2026-02-01 18:59:55'),
(1519, 374, 28, NULL, 1, 23.00, 0.00, 0.00, 44.00, 1012.00, 4.0000, 'ft', 11.0000, 'ft', '2026-02-01 19:02:46', '2026-02-01 19:02:46'),
(1520, 374, 28, NULL, 2, 23.00, 0.00, 0.00, 44.00, 1012.00, 4.0000, 'ft', 5.5000, 'ft', '2026-02-01 19:02:46', '2026-02-01 19:02:46'),
(1521, 375, 28, NULL, 1, 22.00, 0.00, 0.00, 10.00, 220.00, 5.0000, 'ft', 2.0000, 'ft', '2026-02-01 19:05:44', '2026-02-01 19:05:44'),
(1522, 375, NULL, 'standee', 1, 500.00, 0.00, 0.00, 0.00, 500.00, NULL, NULL, NULL, NULL, '2026-02-01 19:05:44', '2026-02-01 19:05:44'),
(1523, 376, 28, NULL, 1, 21.00, 0.00, 0.00, 10.00, 210.00, 5.0000, 'ft', 2.0000, 'ft', '2026-02-01 19:08:25', '2026-02-01 19:08:25'),
(1524, 376, 28, NULL, 1, 21.00, 0.00, 0.00, 25.00, 525.00, 5.0000, 'ft', 5.0000, 'ft', '2026-02-01 19:08:25', '2026-02-01 19:08:25'),
(1525, 376, 28, NULL, 1, 21.00, 0.00, 0.00, 37.50, 787.50, 7.5000, 'ft', 5.0000, 'ft', '2026-02-01 19:08:25', '2026-02-01 19:08:25'),
(1526, 377, 28, NULL, 2, 30.00, 0.00, 0.00, 20.00, 600.00, 2.0000, 'ft', 5.0000, 'ft', '2026-02-01 19:09:22', '2026-02-01 19:09:22'),
(1527, 377, 28, NULL, 1, 30.00, 0.00, 0.00, 6.00, 180.00, 3.0000, 'ft', 2.0000, 'ft', '2026-02-01 19:09:22', '2026-02-01 19:09:22'),
(1528, 378, 28, NULL, 2, 22.00, 0.00, 0.00, 20.00, 440.00, 2.0000, 'ft', 5.0000, 'ft', '2026-02-01 19:11:03', '2026-02-01 19:11:03'),
(1529, 378, 28, NULL, 2, 22.00, 0.00, 0.00, 36.00, 792.00, 3.0000, 'ft', 6.0000, 'ft', '2026-02-01 19:11:03', '2026-02-01 19:11:03'),
(1530, 378, 28, NULL, 1, 22.00, 0.00, 0.00, 46.00, 1012.00, 5.7500, 'ft', 8.0000, 'ft', '2026-02-01 19:11:03', '2026-02-01 19:11:03'),
(1531, 378, 28, NULL, 2, 22.00, 0.00, 0.00, 225.00, 4950.00, 10.0000, 'ft', 11.2500, 'ft', '2026-02-01 19:11:03', '2026-02-01 19:11:03'),
(1532, 378, 28, NULL, 2, 22.00, 0.00, 0.00, 370.00, 8140.00, 10.0000, 'ft', 18.5000, 'ft', '2026-02-01 19:11:03', '2026-02-01 19:11:03'),
(1533, 379, 28, NULL, 1, 27.00, 0.00, 0.00, 80.00, 2160.00, 10.0000, 'ft', 8.0000, 'ft', '2026-02-02 13:02:53', '2026-02-02 13:02:53'),
(1534, 379, 28, NULL, 1, 27.00, 0.00, 0.00, 125.00, 3375.00, 10.0000, 'ft', 12.5000, 'ft', '2026-02-02 13:02:53', '2026-02-02 13:02:53'),
(1535, 379, 28, NULL, 2, 27.00, 0.00, 0.00, 206.00, 5562.00, 10.3000, 'ft', 10.0000, 'ft', '2026-02-02 13:02:53', '2026-02-02 13:02:53'),
(1536, 379, 28, NULL, 1, 27.00, 0.00, 0.00, 101.00, 2727.00, 10.0000, 'ft', 10.1000, 'ft', '2026-02-02 13:02:53', '2026-02-02 13:02:53'),
(1537, 379, 28, NULL, 1, 27.00, 0.00, 0.00, 43.00, 1161.00, 10.0000, 'ft', 4.3000, 'ft', '2026-02-02 13:02:53', '2026-02-02 13:02:53'),
(1538, 380, 28, NULL, 1, 33.33, 0.00, 0.00, 30.00, 1000.00, 3.0000, 'ft', 10.0000, 'ft', '2026-02-02 14:12:54', '2026-02-02 14:12:54'),
(1539, 381, 28, NULL, 15, 22.00, 0.00, 0.00, 150.00, 3300.00, 4.0000, 'ft', 2.5000, 'ft', '2026-02-02 17:08:07', '2026-02-02 17:08:07'),
(1540, 382, 28, NULL, 12, 30.00, 0.00, 0.00, 36.00, 1080.00, 2.0000, 'ft', 1.5000, 'ft', '2026-02-02 17:35:02', '2026-02-02 17:35:02'),
(1541, 383, 28, NULL, 1, 22.00, 0.00, 0.00, 55.00, 1210.00, 5.5000, 'ft', 10.0000, 'ft', '2026-02-02 17:35:54', '2026-02-02 17:35:54'),
(1542, 384, 28, NULL, 2, 23.00, 0.00, 0.00, 20.00, 460.00, 4.0000, 'ft', 2.5000, 'ft', '2026-02-02 17:38:25', '2026-02-02 17:38:25'),
(1543, 384, 28, NULL, 1, 23.00, 0.00, 0.00, 9.00, 207.00, 1.0000, 'ft', 9.0000, 'ft', '2026-02-02 17:38:25', '2026-02-02 17:38:25'),
(1544, 384, 28, NULL, 2, 23.00, 0.00, 0.00, 50.00, 1150.00, 2.5000, 'ft', 10.0000, 'ft', '2026-02-02 17:38:25', '2026-02-02 17:38:25'),
(1545, 384, 28, NULL, 1, 23.00, 0.00, 0.00, 30.00, 690.00, 3.0000, 'ft', 10.0000, 'ft', '2026-02-02 17:38:25', '2026-02-02 17:38:25'),
(1546, 384, 28, NULL, 1, 23.00, 0.00, 0.00, 25.20, 579.60, 2.2500, 'ft', 11.2000, 'ft', '2026-02-02 17:38:25', '2026-02-02 17:38:25'),
(1547, 384, 28, NULL, 1, 23.00, 0.00, 0.00, 40.00, 920.00, 2.0000, 'ft', 20.0000, 'ft', '2026-02-02 17:38:25', '2026-02-02 17:38:25'),
(1548, 384, 28, NULL, 2, 23.00, 0.00, 0.00, 164.00, 3772.00, 4.0000, 'ft', 20.5000, 'ft', '2026-02-02 17:38:25', '2026-02-02 17:38:25'),
(1549, 385, 28, NULL, 2, 23.00, 0.00, 0.00, 48.00, 1104.00, 4.0000, 'ft', 6.0000, 'ft', '2026-02-02 17:39:13', '2026-02-02 17:39:13'),
(1550, 386, 28, 'PSO pump', 1, 20.00, 0.00, 0.00, 200.00, 4000.00, 10.0000, 'ft', 20.0000, 'ft', '2026-02-02 17:40:25', '2026-02-02 17:40:25'),
(1551, 386, 28, NULL, 15, 20.00, 0.00, 0.00, 90.00, 1800.00, 3.0000, 'ft', 2.0000, 'ft', '2026-02-02 17:40:25', '2026-02-02 17:40:25'),
(1552, 386, 28, NULL, 1, 20.00, 0.00, 0.00, 8.60, 172.00, 4.3000, 'ft', 2.0000, 'ft', '2026-02-02 17:40:25', '2026-02-02 17:40:25'),
(1553, 386, 28, NULL, 2, 20.00, 0.00, 0.00, 40.00, 800.00, 4.0000, 'ft', 5.0000, 'ft', '2026-02-02 17:40:25', '2026-02-02 17:40:25'),
(1554, 386, 28, NULL, 2, 20.00, 0.00, 0.00, 80.00, 1600.00, 4.0000, 'ft', 10.0000, 'ft', '2026-02-02 17:40:25', '2026-02-02 17:40:25'),
(1555, 387, 28, NULL, 1, 22.00, 0.00, 0.00, 40.00, 880.00, 5.0000, 'ft', 8.0000, 'ft', '2026-02-02 17:40:59', '2026-02-02 17:40:59'),
(1572, 388, 28, NULL, 1, 23.00, 0.00, 0.00, 19.50, 448.50, 3.0000, 'ft', 6.5000, 'ft', '2026-02-02 18:36:12', '2026-02-02 18:36:12'),
(1573, 388, 28, NULL, 1, 23.00, 0.00, 0.00, 8.40, 193.20, 1.2000, 'ft', 7.0000, 'ft', '2026-02-02 18:36:12', '2026-02-02 18:36:12'),
(1574, 388, 28, NULL, 1, 23.00, 0.00, 0.00, 14.00, 322.00, 2.0000, 'ft', 7.0000, 'ft', '2026-02-02 18:36:12', '2026-02-02 18:36:12'),
(1575, 388, 28, NULL, 1, 23.00, 0.00, 0.00, 68.00, 1564.00, 4.0000, 'ft', 17.0000, 'ft', '2026-02-02 18:36:12', '2026-02-02 18:36:12'),
(1576, 388, 28, NULL, 2, 23.00, 0.00, 0.00, 16.00, 368.00, 2.0000, 'ft', 4.0000, 'ft', '2026-02-02 18:36:12', '2026-02-02 18:36:12'),
(1577, 388, 28, NULL, 1, 23.00, 0.00, 0.00, 20.00, 460.00, 8.0000, 'ft', 2.5000, 'ft', '2026-02-02 18:36:12', '2026-02-02 18:36:12'),
(1578, 388, 28, NULL, 1, 23.00, 0.00, 0.00, 6.00, 138.00, 2.0000, 'ft', 3.0000, 'ft', '2026-02-02 18:36:12', '2026-02-02 18:36:12'),
(1579, 388, 28, NULL, 1, 23.00, 0.00, 0.00, 45.00, 1035.00, 10.0000, 'ft', 4.5000, 'ft', '2026-02-02 18:36:12', '2026-02-02 18:36:12'),
(1580, 388, 28, NULL, 1, 23.00, 0.00, 0.00, 32.00, 736.00, 8.0000, 'ft', 4.0000, 'ft', '2026-02-02 18:36:12', '2026-02-02 18:36:12'),
(1581, 388, 28, NULL, 1, 23.00, 0.00, 0.00, 65.00, 1495.00, 10.0000, 'ft', 6.5000, 'ft', '2026-02-02 18:36:12', '2026-02-02 18:36:12'),
(1582, 388, 28, NULL, 2, 23.00, 0.00, 0.00, 48.00, 1104.00, 3.0000, 'ft', 8.0000, 'ft', '2026-02-02 18:36:12', '2026-02-02 18:36:12'),
(1583, 388, 28, NULL, 1, 23.00, 0.00, 0.00, 100.00, 2300.00, 10.0000, 'ft', 10.0000, 'ft', '2026-02-02 18:36:12', '2026-02-02 18:36:12'),
(1584, 388, 28, NULL, 1, 23.00, 0.00, 0.00, 50.00, 1150.00, 5.0000, 'ft', 10.0000, 'ft', '2026-02-02 18:36:12', '2026-02-02 18:36:12'),
(1585, 388, 28, NULL, 1, 23.00, 0.00, 0.00, 22.00, 506.00, 2.0000, 'ft', 11.0000, 'ft', '2026-02-02 18:36:12', '2026-02-02 18:36:12'),
(1586, 388, 28, NULL, 1, 23.00, 0.00, 0.00, 110.00, 2530.00, 10.0000, 'ft', 11.0000, 'ft', '2026-02-02 18:36:12', '2026-02-02 18:36:12'),
(1587, 388, 28, NULL, 2, 23.00, 0.00, 0.00, 40.00, 920.00, 10.0000, 'ft', 2.0000, 'ft', '2026-02-02 18:36:12', '2026-02-02 18:36:12'),
(1588, 388, 34, NULL, 1, 75.00, 0.00, 0.00, 22.50, 1687.50, 5.0000, 'ft', 4.5000, 'ft', '2026-02-02 18:36:12', '2026-02-02 18:36:12'),
(1589, 389, 36, NULL, 1, 85.00, 0.00, 0.00, 60.00, 5100.00, 5.0000, 'ft', 12.0000, 'ft', '2026-02-02 19:16:46', '2026-02-02 19:16:46'),
(1590, 389, 36, NULL, 1, 85.00, 0.00, 0.00, 34.50, 2932.50, 3.0000, 'ft', 11.5000, 'ft', '2026-02-02 19:16:46', '2026-02-02 19:16:46'),
(1592, 390, 28, NULL, 10, 25.00, 0.00, 0.00, 60.00, 1500.00, 3.0000, 'ft', 2.0000, 'ft', '2026-02-03 13:54:35', '2026-02-03 13:54:35'),
(1614, 392, 28, NULL, 1, 42.86, 0.00, 0.00, 7.00, 300.00, 1.0000, 'ft', 7.0000, 'ft', '2026-02-03 15:16:16', '2026-02-03 15:16:16'),
(1615, 393, 28, 'Zoro', 5, 20.00, 0.00, 0.00, 1000.00, 20000.00, 10.0000, 'ft', 20.0000, 'ft', '2026-02-03 16:44:42', '2026-02-03 16:44:42'),
(1616, 393, 28, NULL, 2, 20.00, 0.00, 0.00, 96.00, 1920.00, 6.0000, 'ft', 8.0000, 'ft', '2026-02-03 16:44:42', '2026-02-03 16:44:42'),
(1617, 393, 28, NULL, 1, 20.00, 0.00, 0.00, 24.00, 480.00, 4.0000, 'ft', 6.0000, 'ft', '2026-02-03 16:44:42', '2026-02-03 16:44:42'),
(1618, 394, 28, NULL, 2, 23.00, 0.00, 0.00, 12.00, 276.00, 2.0000, 'ft', 3.0000, 'ft', '2026-02-03 16:57:30', '2026-02-03 16:57:30'),
(1619, 395, 28, NULL, 2, 22.00, 0.00, 0.00, 12.00, 264.00, 3.0000, 'ft', 2.0000, 'ft', '2026-02-03 16:58:29', '2026-02-03 16:58:29'),
(1620, 396, 28, NULL, 1, 22.00, 0.00, 0.00, 6.00, 132.00, 3.0000, 'ft', 2.0000, 'ft', '2026-02-03 16:59:19', '2026-02-03 16:59:19'),
(1621, 397, 28, NULL, 1, 22.00, 0.00, 0.00, 50.00, 1100.00, 5.0000, 'ft', 10.0000, 'ft', '2026-02-03 17:03:20', '2026-02-03 17:03:20'),
(1622, 398, 28, NULL, 3, 22.00, 0.00, 0.00, 21.00, 462.00, 2.0000, 'ft', 3.5000, 'ft', '2026-02-03 17:05:28', '2026-02-03 17:05:28'),
(1623, 398, 28, NULL, 6, 22.00, 0.00, 0.00, 30.00, 660.00, 1.0000, 'ft', 5.0000, 'ft', '2026-02-03 17:05:28', '2026-02-03 17:05:28'),
(1624, 399, 28, NULL, 1, 23.00, 0.00, 0.00, 15.00, 345.00, 3.0000, 'ft', 5.0000, 'ft', '2026-02-03 17:06:37', '2026-02-03 17:06:37'),
(1625, 399, 28, NULL, 1, 23.00, 0.00, 0.00, 24.00, 552.00, 4.0000, 'ft', 6.0000, 'ft', '2026-02-03 17:06:37', '2026-02-03 17:06:37'),
(1626, 400, 28, NULL, 2, 22.00, 0.00, 0.00, 12.00, 264.00, 3.0000, 'ft', 2.0000, 'ft', '2026-02-03 17:07:42', '2026-02-03 17:07:42'),
(1638, 403, 28, NULL, 1, 33.00, 0.00, 0.00, 52.00, 1716.00, 4.0000, 'ft', 13.0000, 'ft', '2026-02-03 18:26:07', '2026-02-03 18:26:07'),
(1639, 403, 28, NULL, 1, 33.00, 0.00, 0.00, 26.00, 858.00, 2.0000, 'ft', 13.0000, 'ft', '2026-02-03 18:26:07', '2026-02-03 18:26:07'),
(1640, 403, 28, NULL, 1, 33.00, 0.00, 0.00, 108.00, 3564.00, 9.0000, 'ft', 12.0000, 'ft', '2026-02-03 18:26:07', '2026-02-03 18:26:07'),
(1641, 403, 28, NULL, 1, 33.00, 0.00, 0.00, 22.50, 742.50, 4.5000, 'ft', 5.0000, 'ft', '2026-02-03 18:26:07', '2026-02-03 18:26:07'),
(1642, 403, 28, NULL, 1, 33.00, 0.00, 0.00, 72.00, 2376.00, 9.0000, 'ft', 8.0000, 'ft', '2026-02-03 18:26:07', '2026-02-03 18:26:07'),
(1643, 403, 28, NULL, 1, 33.00, 0.00, 0.00, 101.70, 3356.10, 9.0000, 'ft', 11.3000, 'ft', '2026-02-03 18:26:07', '2026-02-03 18:26:07'),
(1644, 403, 28, NULL, 1, 33.00, 0.00, 0.00, 57.50, 1897.50, 5.0000, 'ft', 11.5000, 'ft', '2026-02-03 18:26:07', '2026-02-03 18:26:07'),
(1645, 403, 28, NULL, 1, 33.00, 0.00, 0.00, 110.70, 3653.10, 9.0000, 'ft', 12.3000, 'ft', '2026-02-03 18:26:07', '2026-02-03 18:26:07'),
(1646, 403, 28, NULL, 1, 33.00, 0.00, 0.00, 72.00, 2376.00, 6.0000, 'ft', 12.0000, 'ft', '2026-02-03 18:26:07', '2026-02-03 18:26:07'),
(1647, 403, 28, NULL, 1, 33.00, 0.00, 0.00, 137.70, 4544.10, 9.0000, 'ft', 15.3000, 'ft', '2026-02-03 18:26:07', '2026-02-03 18:26:07'),
(1648, 404, 28, NULL, 1, 28.00, 0.00, 0.00, 15.00, 420.00, 3.0000, 'ft', 5.0000, 'ft', '2026-02-03 18:29:18', '2026-02-03 18:29:18'),
(1649, 402, 28, NULL, 2, 25.00, 0.00, 0.00, 8.00, 200.00, 2.0000, 'ft', 2.0000, 'ft', '2026-02-03 18:30:28', '2026-02-03 18:30:28'),
(1650, 405, 31, NULL, 1, 40.00, 0.00, 0.00, 5.00, 200.00, 1.0000, 'ft', 5.0000, 'ft', '2026-02-03 18:34:37', '2026-02-03 18:34:37'),
(1651, 405, 31, NULL, 3, 40.00, 0.00, 0.00, 24.00, 960.00, 1.0000, 'ft', 8.0000, 'ft', '2026-02-03 18:34:37', '2026-02-03 18:34:37'),
(1652, 405, 31, NULL, 2, 40.00, 0.00, 0.00, 48.00, 1920.00, 3.0000, 'ft', 8.0000, 'ft', '2026-02-03 18:34:37', '2026-02-03 18:34:37'),
(1653, 405, 31, NULL, 1, 40.00, 0.00, 0.00, 60.00, 2400.00, 5.0000, 'ft', 12.0000, 'ft', '2026-02-03 18:34:37', '2026-02-03 18:34:37'),
(1654, 405, 31, NULL, 1, 40.00, 0.00, 0.00, 10.50, 420.00, 3.0000, 'ft', 3.5000, 'ft', '2026-02-03 18:34:37', '2026-02-03 18:34:37'),
(1655, 405, 28, NULL, 4, 22.00, 0.00, 0.00, 40.00, 880.00, 4.0000, 'ft', 2.5000, 'ft', '2026-02-03 18:34:37', '2026-02-03 18:34:37'),
(1656, 405, 28, NULL, 1, 22.00, 0.00, 0.00, 6.00, 132.00, 2.0000, 'ft', 3.0000, 'ft', '2026-02-03 18:34:37', '2026-02-03 18:34:37'),
(1657, 405, 28, NULL, 1, 22.00, 0.00, 0.00, 12.00, 264.00, 4.0000, 'ft', 3.0000, 'ft', '2026-02-03 18:34:37', '2026-02-03 18:34:37'),
(1658, 405, 28, NULL, 1, 22.00, 0.00, 0.00, 24.00, 528.00, 4.0000, 'ft', 6.0000, 'ft', '2026-02-03 18:34:37', '2026-02-03 18:34:37'),
(1659, 405, 28, NULL, 1, 22.00, 0.00, 0.00, 28.00, 616.00, 4.0000, 'ft', 7.0000, 'ft', '2026-02-03 18:34:37', '2026-02-03 18:34:37'),
(1660, 405, 28, NULL, 1, 22.00, 0.00, 0.00, 27.00, 594.00, 3.0000, 'ft', 9.0000, 'ft', '2026-02-03 18:34:37', '2026-02-03 18:34:37'),
(1661, 406, 28, NULL, 1, 22.00, 0.00, 0.00, 9.00, 198.00, 6.0000, 'ft', 1.5000, 'ft', '2026-02-03 18:37:55', '2026-02-03 18:37:55'),
(1662, 406, 28, NULL, 1, 22.00, 0.00, 0.00, 12.00, 264.00, 6.0000, 'ft', 2.0000, 'ft', '2026-02-03 18:37:55', '2026-02-03 18:37:55'),
(1663, 406, 28, NULL, 1, 22.00, 0.00, 0.00, 15.00, 330.00, 3.0000, 'ft', 5.0000, 'ft', '2026-02-03 18:37:55', '2026-02-03 18:37:55'),
(1664, 406, 28, NULL, 1, 22.00, 0.00, 0.00, 44.00, 968.00, 4.0000, 'ft', 11.0000, 'ft', '2026-02-03 18:37:55', '2026-02-03 18:37:55'),
(1665, 406, 28, NULL, 1, 22.00, 0.00, 0.00, 12.00, 264.00, 1.0000, 'ft', 12.0000, 'ft', '2026-02-03 18:37:55', '2026-02-03 18:37:55'),
(1666, 407, 28, NULL, 1, 22.00, 0.00, 0.00, 8.00, 176.00, 1.0000, 'ft', 8.0000, 'ft', '2026-02-03 18:38:39', '2026-02-03 18:38:39'),
(1667, 407, 28, NULL, 1, 22.00, 0.00, 0.00, 30.00, 660.00, 3.0000, 'ft', 10.0000, 'ft', '2026-02-03 18:38:39', '2026-02-03 18:38:39'),
(1668, 408, 28, NULL, 1, 22.00, 0.00, 0.00, 200.00, 4400.00, 10.0000, 'ft', 20.0000, 'ft', '2026-02-04 11:57:24', '2026-02-04 11:57:24'),
(1669, 408, 28, NULL, 12, 22.00, 0.00, 0.00, 480.00, 10560.00, 4.0000, 'ft', 10.0000, 'ft', '2026-02-04 11:57:24', '2026-02-04 11:57:24'),
(1670, 408, 28, NULL, 60, 22.00, 0.00, 0.00, 750.00, 16500.00, 5.0000, 'ft', 2.5000, 'ft', '2026-02-04 11:57:24', '2026-02-04 11:57:24'),
(1671, 408, 28, NULL, 1, 22.00, 0.00, 0.00, 45.00, 990.00, 3.0000, 'ft', 15.0000, 'ft', '2026-02-04 11:57:24', '2026-02-04 11:57:24'),
(1672, 408, 28, NULL, 5, 22.00, 0.00, 0.00, 20.00, 440.00, 2.0000, 'ft', 2.0000, 'ft', '2026-02-04 11:57:24', '2026-02-04 11:57:24'),
(1673, 409, 32, NULL, 1, 100.00, 0.00, 0.00, 13.50, 1350.00, 3.0000, 'ft', 4.5000, 'ft', '2026-02-04 18:21:01', '2026-02-04 18:21:01'),
(1674, 410, 28, NULL, 3, 22.00, 0.00, 0.00, 120.00, 2640.00, 4.0000, 'ft', 10.0000, 'ft', '2026-02-04 18:26:26', '2026-02-04 18:26:26'),
(1677, 411, 28, NULL, 2, 30.00, 0.00, 0.00, 48.00, 1440.00, 6.0000, 'ft', 4.0000, 'ft', '2026-02-04 18:36:08', '2026-02-04 18:36:08'),
(1678, 411, 28, NULL, 1, 30.00, 0.00, 0.00, 30.00, 900.00, 3.0000, 'ft', 10.0000, 'ft', '2026-02-04 18:36:08', '2026-02-04 18:36:08'),
(1679, 412, 28, NULL, 1, 30.00, 0.00, 0.00, 32.00, 960.00, 4.0000, 'ft', 8.0000, 'ft', '2026-02-04 18:37:26', '2026-02-04 18:37:26'),
(1680, 413, 28, NULL, 10, 40.00, 0.00, 0.00, 20.00, 800.00, 2.0000, 'ft', 1.0000, 'ft', '2026-02-04 18:38:21', '2026-02-04 18:38:21'),
(1681, 413, 28, NULL, 3, 40.00, 0.00, 0.00, 36.00, 1440.00, 3.0000, 'ft', 4.0000, 'ft', '2026-02-04 18:38:21', '2026-02-04 18:38:21'),
(1682, 413, 28, NULL, 1, 40.00, 0.00, 0.00, 16.00, 640.00, 2.0000, 'ft', 8.0000, 'ft', '2026-02-04 18:38:21', '2026-02-04 18:38:21'),
(1683, 414, 28, NULL, 3, 23.00, 0.00, 0.00, 18.00, 414.00, 3.0000, 'ft', 2.0000, 'ft', '2026-02-04 18:39:10', '2026-02-04 18:39:10'),
(1684, 415, 28, NULL, 5, 23.00, 0.00, 0.00, 30.00, 690.00, 3.0000, 'ft', 2.0000, 'ft', '2026-02-04 18:39:59', '2026-02-04 18:39:59'),
(1685, 415, 28, NULL, 1, 23.00, 0.00, 0.00, 8.00, 184.00, 2.0000, 'ft', 4.0000, 'ft', '2026-02-04 18:39:59', '2026-02-04 18:39:59'),
(1686, 415, 28, NULL, 1, 23.00, 0.00, 0.00, 18.00, 414.00, 3.0000, 'ft', 6.0000, 'ft', '2026-02-04 18:39:59', '2026-02-04 18:39:59'),
(1687, 416, 28, NULL, 1, 22.00, 0.00, 0.00, 6.00, 132.00, 3.0000, 'ft', 2.0000, 'ft', '2026-02-04 18:40:36', '2026-02-04 18:40:36'),
(1688, 416, 28, NULL, 1, 22.00, 0.00, 0.00, 9.00, 198.00, 1.5000, 'ft', 6.0000, 'ft', '2026-02-04 18:40:36', '2026-02-04 18:40:36'),
(1689, 416, 28, NULL, 1, 22.00, 0.00, 0.00, 15.00, 330.00, 2.5000, 'ft', 6.0000, 'ft', '2026-02-04 18:40:36', '2026-02-04 18:40:36'),
(1690, 416, 28, NULL, 1, 22.00, 0.00, 0.00, 48.00, 1056.00, 6.0000, 'ft', 8.0000, 'ft', '2026-02-04 18:40:36', '2026-02-04 18:40:36'),
(1691, 416, 28, NULL, 1, 22.00, 0.00, 0.00, 15.00, 330.00, 3.0000, 'ft', 5.0000, 'ft', '2026-02-04 18:40:36', '2026-02-04 18:40:36'),
(1692, 417, 32, NULL, 1, 75.00, 0.00, 0.00, 29.25, 2193.75, 6.5000, 'ft', 4.5000, 'ft', '2026-02-04 18:42:44', '2026-02-04 18:42:44'),
(1693, 417, 32, NULL, 1, 75.00, 0.00, 0.00, 29.25, 2193.75, 6.5000, 'ft', 4.5000, 'ft', '2026-02-04 18:42:44', '2026-02-04 18:42:44'),
(1694, 417, 32, NULL, 4, 75.00, 0.00, 0.00, 23.40, 1755.00, 1.3000, 'ft', 4.5000, 'ft', '2026-02-04 18:42:44', '2026-02-04 18:42:44'),
(1695, 417, 28, NULL, 2, 22.00, 0.00, 0.00, 16.00, 352.00, 2.0000, 'ft', 4.0000, 'ft', '2026-02-04 18:42:44', '2026-02-04 18:42:44'),
(1696, 417, 28, NULL, 1, 22.00, 0.00, 0.00, 10.00, 220.00, 2.5000, 'ft', 4.0000, 'ft', '2026-02-04 18:42:44', '2026-02-04 18:42:44'),
(1697, 417, 28, NULL, 1, 22.00, 0.00, 0.00, 8.00, 176.00, 2.0000, 'ft', 4.0000, 'ft', '2026-02-04 18:42:44', '2026-02-04 18:42:44'),
(1698, 417, 28, NULL, 1, 22.00, 0.00, 0.00, 6.00, 132.00, 1.0000, 'ft', 6.0000, 'ft', '2026-02-04 18:42:44', '2026-02-04 18:42:44'),
(1699, 417, 28, NULL, 1, 22.00, 0.00, 0.00, 11.40, 250.80, 1.9000, 'ft', 6.0000, 'ft', '2026-02-04 18:42:44', '2026-02-04 18:42:44'),
(1700, 417, 28, NULL, 1, 22.00, 0.00, 0.00, 15.30, 336.60, 1.7000, 'ft', 9.0000, 'ft', '2026-02-04 18:42:44', '2026-02-04 18:42:44'),
(1701, 418, 28, NULL, 2, 22.00, 0.00, 0.00, 17.50, 385.00, 2.5000, 'ft', 3.5000, 'ft', '2026-02-04 18:43:29', '2026-02-04 18:43:29'),
(1702, 419, 28, NULL, 1, 23.00, 0.00, 0.00, 3.00, 69.00, 1.0000, 'ft', 3.0000, 'ft', '2026-02-04 18:45:06', '2026-02-04 18:45:06'),
(1703, 419, 28, NULL, 2, 23.00, 0.00, 0.00, 9.60, 220.80, 2.0000, 'ft', 2.4000, 'ft', '2026-02-04 18:45:06', '2026-02-04 18:45:06'),
(1704, 419, 28, NULL, 1, 23.00, 0.00, 0.00, 6.00, 138.00, 2.0000, 'ft', 3.0000, 'ft', '2026-02-04 18:45:06', '2026-02-04 18:45:06'),
(1705, 419, 28, NULL, 1, 23.00, 0.00, 0.00, 6.00, 138.00, 3.0000, 'ft', 2.0000, 'ft', '2026-02-04 18:45:06', '2026-02-04 18:45:06'),
(1706, 419, 28, NULL, 2, 23.00, 0.00, 0.00, 32.00, 736.00, 4.0000, 'ft', 4.0000, 'ft', '2026-02-04 18:45:06', '2026-02-04 18:45:06'),
(1707, 420, 28, NULL, 1, 23.00, 0.00, 0.00, 3.00, 69.00, 1.0000, 'ft', 3.0000, 'ft', '2026-02-04 18:45:10', '2026-02-04 18:45:10'),
(1708, 420, 28, NULL, 2, 23.00, 0.00, 0.00, 9.60, 220.80, 2.0000, 'ft', 2.4000, 'ft', '2026-02-04 18:45:10', '2026-02-04 18:45:10'),
(1709, 420, 28, NULL, 1, 23.00, 0.00, 0.00, 6.00, 138.00, 2.0000, 'ft', 3.0000, 'ft', '2026-02-04 18:45:10', '2026-02-04 18:45:10'),
(1710, 420, 28, NULL, 1, 23.00, 0.00, 0.00, 6.00, 138.00, 3.0000, 'ft', 2.0000, 'ft', '2026-02-04 18:45:10', '2026-02-04 18:45:10'),
(1711, 420, 28, NULL, 2, 23.00, 0.00, 0.00, 32.00, 736.00, 4.0000, 'ft', 4.0000, 'ft', '2026-02-04 18:45:10', '2026-02-04 18:45:10'),
(1712, 421, 32, NULL, 1, 75.00, 0.00, 0.00, 9.00, 675.00, 2.0000, 'ft', 4.5000, 'ft', '2026-02-04 18:45:57', '2026-02-04 18:45:57'),
(1713, 421, 28, NULL, 2, 22.00, 0.00, 0.00, 12.00, 264.00, 3.0000, 'ft', 2.0000, 'ft', '2026-02-04 18:45:57', '2026-02-04 18:45:57'),
(1714, 422, 28, NULL, 2, 23.00, 0.00, 0.00, 40.00, 920.00, 10.0000, 'ft', 2.0000, 'ft', '2026-02-04 18:46:55', '2026-02-04 18:46:55'),
(1715, 422, 28, NULL, 1, 23.00, 0.00, 0.00, 50.00, 1150.00, 5.0000, 'ft', 10.0000, 'ft', '2026-02-04 18:46:55', '2026-02-04 18:46:55'),
(1716, 422, 28, NULL, 1, 23.00, 0.00, 0.00, 10.00, 230.00, 2.0000, 'ft', 5.0000, 'ft', '2026-02-04 18:46:55', '2026-02-04 18:46:55'),
(1717, 423, 28, NULL, 1, 22.00, 0.00, 0.00, 60.00, 1320.00, 5.0000, 'ft', 12.0000, 'ft', '2026-02-04 18:48:47', '2026-02-04 18:48:47'),
(1718, 423, 28, NULL, 1, 22.00, 0.00, 0.00, 200.00, 4400.00, 10.0000, 'ft', 20.0000, 'ft', '2026-02-04 18:48:47', '2026-02-04 18:48:47'),
(1719, 424, 28, NULL, 1, 22.00, 0.00, 0.00, 18.00, 396.00, 2.0000, 'ft', 9.0000, 'ft', '2026-02-05 14:35:19', '2026-02-05 14:35:19'),
(1720, 424, 28, NULL, 1, 22.00, 0.00, 0.00, 21.00, 462.00, 3.0000, 'ft', 7.0000, 'ft', '2026-02-05 14:35:19', '2026-02-05 14:35:19'),
(1721, 424, 28, NULL, 1, 22.00, 0.00, 0.00, 68.00, 1496.00, 8.5000, 'ft', 8.0000, 'ft', '2026-02-05 14:35:19', '2026-02-05 14:35:19'),
(1722, 424, 28, NULL, 1, 22.00, 0.00, 0.00, 30.00, 660.00, 3.0000, 'ft', 10.0000, 'ft', '2026-02-05 14:35:19', '2026-02-05 14:35:19'),
(1723, 424, 28, NULL, 1, 22.00, 0.00, 0.00, 80.50, 1771.00, 11.5000, 'ft', 7.0000, 'ft', '2026-02-05 14:35:19', '2026-02-05 14:35:19'),
(1724, 424, 28, NULL, 1, 22.00, 0.00, 0.00, 13.50, 297.00, 1.5000, 'ft', 9.0000, 'ft', '2026-02-05 14:35:19', '2026-02-05 14:35:19'),
(1742, 428, 28, NULL, 1, 22.00, 0.00, 0.00, 84.00, 1848.00, 6.0000, 'ft', 14.0000, 'ft', '2026-02-05 17:55:17', '2026-02-05 17:55:17'),
(1743, 428, 28, NULL, 1, 22.00, 0.00, 0.00, 15.00, 330.00, 3.0000, 'ft', 5.0000, 'ft', '2026-02-05 17:55:17', '2026-02-05 17:55:17'),
(1744, 429, 28, NULL, 2, 22.00, 0.00, 0.00, 12.00, 264.00, 3.0000, 'ft', 2.0000, 'ft', '2026-02-05 17:56:51', '2026-02-05 17:56:51'),
(1745, 429, 28, NULL, 1, 22.00, 0.00, 0.00, 6.00, 132.00, 1.0000, 'ft', 6.0000, 'ft', '2026-02-05 17:56:51', '2026-02-05 17:56:51'),
(1746, 429, 28, NULL, 2, 22.00, 0.00, 0.00, 52.00, 1144.00, 4.0000, 'ft', 6.5000, 'ft', '2026-02-05 17:56:51', '2026-02-05 17:56:51'),
(1747, 429, 28, NULL, 1, 22.00, 0.00, 0.00, 37.20, 818.40, 4.0000, 'ft', 9.3000, 'ft', '2026-02-05 17:56:51', '2026-02-05 17:56:51'),
(1748, 430, 28, NULL, 1, 30.00, 0.00, 0.00, 32.00, 960.00, 4.0000, 'ft', 8.0000, 'ft', '2026-02-05 17:57:52', '2026-02-05 17:57:52'),
(1749, 431, 28, NULL, 1, 30.00, 0.00, 0.00, 28.00, 840.00, 3.5000, 'ft', 8.0000, 'ft', '2026-02-05 17:59:21', '2026-02-05 17:59:21'),
(1750, 432, 28, NULL, 1, 30.00, 0.00, 0.00, 8.00, 240.00, 1.0000, 'ft', 8.0000, 'ft', '2026-02-05 18:00:07', '2026-02-05 18:00:07'),
(1751, 432, 28, NULL, 1, 30.00, 0.00, 0.00, 24.00, 720.00, 3.0000, 'ft', 8.0000, 'ft', '2026-02-05 18:00:07', '2026-02-05 18:00:07'),
(1752, 433, 28, NULL, 15, 25.00, 0.00, 0.00, 45.00, 1125.00, 2.0000, 'ft', 1.5000, 'ft', '2026-02-05 18:00:42', '2026-02-05 18:00:42'),
(1753, 433, 28, NULL, 1, 25.00, 0.00, 0.00, 40.00, 1000.00, 5.0000, 'ft', 8.0000, 'ft', '2026-02-05 18:00:42', '2026-02-05 18:00:42'),
(1754, 434, 28, NULL, 1, 25.00, 0.00, 0.00, 64.00, 1600.00, 8.0000, 'ft', 8.0000, 'ft', '2026-02-05 18:01:34', '2026-02-05 18:01:34'),
(1755, 434, NULL, 'Sabqa bill', 1, 800.00, 0.00, 0.00, 0.00, 800.00, NULL, NULL, NULL, NULL, '2026-02-05 18:01:34', '2026-02-05 18:01:34'),
(1756, 435, 28, NULL, 1, 23.00, 0.00, 0.00, 36.00, 828.00, 3.0000, 'ft', 12.0000, 'ft', '2026-02-05 18:02:03', '2026-02-05 18:02:03'),
(1757, 436, 28, NULL, 1, 22.00, 0.00, 0.00, 18.00, 396.00, 3.0000, 'ft', 6.0000, 'ft', '2026-02-05 18:02:23', '2026-02-05 18:02:23'),
(1764, 437, 28, 'With Installation', 1, 40.00, 0.00, 0.00, 255.60, 10224.00, 12.0000, 'ft', 21.3000, 'ft', '2026-02-05 18:07:59', '2026-02-05 18:07:59'),
(1765, 437, 28, NULL, 1, 40.00, 0.00, 0.00, 231.60, 9264.00, 12.0000, 'ft', 19.3000, 'ft', '2026-02-05 18:07:59', '2026-02-05 18:07:59'),
(1766, 437, 28, NULL, 1, 40.00, 0.00, 0.00, 72.00, 2880.00, 6.0000, 'ft', 12.0000, 'ft', '2026-02-05 18:07:59', '2026-02-05 18:07:59'),
(1767, 437, 28, NULL, 1, 40.00, 0.00, 0.00, 120.00, 4800.00, 12.0000, 'ft', 10.0000, 'ft', '2026-02-05 18:07:59', '2026-02-05 18:07:59'),
(1768, 437, 28, NULL, 1, 40.00, 0.00, 0.00, 24.00, 960.00, 2.0000, 'ft', 12.0000, 'ft', '2026-02-05 18:07:59', '2026-02-05 18:07:59'),
(1769, 437, NULL, 'Frame 12x6|Frame 12x6', 1, 5560.00, 0.00, 0.00, 0.00, 5560.00, NULL, NULL, NULL, NULL, '2026-02-05 18:07:59', '2026-02-05 18:07:59'),
(1770, 426, 28, NULL, 1, 23.00, 0.00, 0.00, 34.80, 800.40, 3.0000, 'ft', 11.6000, 'ft', '2026-02-05 18:08:24', '2026-02-05 18:08:24'),
(1771, 426, 28, NULL, 1, 23.00, 0.00, 0.00, 8.00, 184.00, 4.0000, 'ft', 2.0000, 'ft', '2026-02-05 18:08:24', '2026-02-05 18:08:24'),
(1772, 426, 28, NULL, 1, 23.00, 0.00, 0.00, 13.00, 299.00, 1.0000, 'ft', 13.0000, 'ft', '2026-02-05 18:08:24', '2026-02-05 18:08:24'),
(1773, 438, 28, NULL, 20, 22.00, 0.00, 0.00, 120.00, 2640.00, 3.0000, 'ft', 2.0000, 'ft', '2026-02-05 18:10:29', '2026-02-05 18:10:29'),
(1774, 438, 28, NULL, 2, 22.00, 0.00, 0.00, 16.00, 352.00, 4.0000, 'ft', 2.0000, 'ft', '2026-02-05 18:10:29', '2026-02-05 18:10:29'),
(1775, 438, 28, NULL, 1, 22.00, 0.00, 0.00, 6.00, 132.00, 2.0000, 'ft', 3.0000, 'ft', '2026-02-05 18:10:29', '2026-02-05 18:10:29'),
(1776, 438, 28, NULL, 1, 22.00, 0.00, 0.00, 7.00, 154.00, 1.0000, 'ft', 7.0000, 'ft', '2026-02-05 18:10:29', '2026-02-05 18:10:29'),
(1778, 440, 31, NULL, 1, 44.00, 0.00, 0.00, 24.00, 1056.00, 3.0000, 'ft', 8.0000, 'ft', '2026-02-05 18:13:28', '2026-02-05 18:13:28'),
(1779, 440, 31, NULL, 1, 44.00, 0.00, 0.00, 36.00, 1584.00, 4.0000, 'ft', 9.0000, 'ft', '2026-02-05 18:13:28', '2026-02-05 18:13:28'),
(1780, 440, 31, NULL, 1, 44.00, 0.00, 0.00, 45.00, 1980.00, 3.0000, 'ft', 15.0000, 'ft', '2026-02-05 18:13:28', '2026-02-05 18:13:28'),
(1781, 440, NULL, '4.5x4 ... vynial', 1, 75.00, 0.00, 0.00, 18.00, 1350.00, 4.0000, 'ft', 4.5000, 'ft', '2026-02-05 18:13:28', '2026-02-05 18:13:28'),
(1782, 439, 28, NULL, 1, 23.00, 0.00, 0.00, 26.00, 598.00, 2.0000, 'ft', 13.0000, 'ft', '2026-02-05 18:15:44', '2026-02-05 18:15:44'),
(1783, 439, 28, NULL, 1, 23.00, 0.00, 0.00, 27.00, 621.00, 3.0000, 'ft', 9.0000, 'ft', '2026-02-05 18:15:44', '2026-02-05 18:15:44'),
(1798, 441, 31, NULL, 1, 50.00, 0.00, 0.00, 21.00, 1050.00, 3.0000, 'ft', 7.0000, 'ft', '2026-02-05 18:23:07', '2026-02-05 18:23:07'),
(1799, 441, 28, NULL, 2, 22.00, 0.00, 0.00, 60.00, 1320.00, 3.0000, 'ft', 10.0000, 'ft', '2026-02-05 18:23:07', '2026-02-05 18:23:07'),
(1800, 441, 28, NULL, 1, 22.00, 0.00, 0.00, 60.00, 1320.00, 6.0000, 'ft', 10.0000, 'ft', '2026-02-05 18:23:07', '2026-02-05 18:23:07'),
(1801, 441, 28, NULL, 1, 22.00, 0.00, 0.00, 136.00, 2992.00, 4.0000, 'ft', 34.0000, 'ft', '2026-02-05 18:23:07', '2026-02-05 18:23:07'),
(1802, 442, 28, NULL, 1, 23.00, 0.00, 0.00, 50.00, 1150.00, 5.0000, 'ft', 10.0000, 'ft', '2026-02-05 18:26:52', '2026-02-05 18:26:52'),
(1803, 425, 28, NULL, 8, 20.00, 0.00, 0.00, 88.00, 1760.00, 1.0000, 'ft', 11.0000, 'ft', '2026-02-05 19:16:40', '2026-02-05 19:16:40'),
(1804, 425, 28, NULL, 1, 20.00, 0.00, 0.00, 45.50, 910.00, 3.5000, 'ft', 13.0000, 'ft', '2026-02-05 19:16:40', '2026-02-05 19:16:40'),
(1805, 425, 28, NULL, 1, 20.00, 0.00, 0.00, 18.00, 360.00, 3.6000, 'ft', 5.0000, 'ft', '2026-02-05 19:16:40', '2026-02-05 19:16:40'),
(1806, 425, 28, NULL, 1, 20.00, 0.00, 0.00, 55.00, 1100.00, 5.0000, 'ft', 11.0000, 'ft', '2026-02-05 19:16:40', '2026-02-05 19:16:40'),
(1807, 425, 28, NULL, 2, 20.00, 0.00, 0.00, 44.00, 880.00, 2.0000, 'ft', 11.0000, 'ft', '2026-02-05 19:16:40', '2026-02-05 19:16:40'),
(1808, 425, 28, NULL, 1, 20.00, 0.00, 0.00, 16.50, 330.00, 1.5000, 'ft', 11.0000, 'ft', '2026-02-05 19:16:40', '2026-02-05 19:16:40'),
(1809, 425, 28, NULL, 1, 20.00, 0.00, 0.00, 7.20, 144.00, 1.2000, 'ft', 6.0000, 'ft', '2026-02-05 19:16:40', '2026-02-05 19:16:40'),
(1810, 425, 28, NULL, 1, 20.00, 0.00, 0.00, 3.40, 68.00, 1.7000, 'ft', 2.0000, 'ft', '2026-02-05 19:16:40', '2026-02-05 19:16:40'),
(1811, 425, 28, NULL, 2, 20.00, 0.00, 0.00, 34.40, 688.00, 4.3000, 'ft', 4.0000, 'ft', '2026-02-05 19:16:40', '2026-02-05 19:16:40'),
(1812, 425, 28, NULL, 1, 20.00, 0.00, 0.00, 25.00, 500.00, 5.0000, 'ft', 5.0000, 'ft', '2026-02-05 19:16:40', '2026-02-05 19:16:40'),
(1813, 425, 28, NULL, 2, 20.00, 0.00, 0.00, 297.00, 5940.00, 16.5000, 'ft', 9.0000, 'ft', '2026-02-05 19:16:40', '2026-02-05 19:16:40'),
(1814, 425, 28, NULL, 2, 20.00, 0.00, 0.00, 192.00, 3840.00, 12.0000, 'ft', 8.0000, 'ft', '2026-02-05 19:16:40', '2026-02-05 19:16:40'),
(1815, 425, 28, NULL, 2, 22.00, 0.00, 0.00, 20.00, 440.00, 5.0000, 'ft', 2.0000, 'ft', '2026-02-05 19:16:40', '2026-02-05 19:16:40'),
(1816, 425, 28, NULL, 1, 20.00, 0.00, 0.00, 2.00, 40.00, 1.0000, 'ft', 2.0000, 'ft', '2026-02-05 19:16:40', '2026-02-05 19:16:40'),
(1817, 443, 28, NULL, 1, 22.00, 0.00, 0.00, 6.00, 132.00, 1.0000, 'ft', 6.0000, 'ft', '2026-02-05 19:17:28', '2026-02-05 19:17:28'),
(1818, 444, 28, NULL, 2, 23.00, 0.00, 0.00, 210.00, 4830.00, 7.0000, 'ft', 15.0000, 'ft', '2026-02-05 19:19:18', '2026-02-05 19:19:18'),
(1819, 444, 28, NULL, 2, 23.00, 0.00, 0.00, 168.00, 3864.00, 7.0000, 'ft', 12.0000, 'ft', '2026-02-05 19:19:18', '2026-02-05 19:19:18'),
(1820, 444, 28, NULL, 1, 23.00, 0.00, 0.00, 24.00, 552.00, 4.0000, 'ft', 6.0000, 'ft', '2026-02-05 19:19:18', '2026-02-05 19:19:18'),
(1821, 445, 34, NULL, 22, 170.00, 0.00, 0.00, 148.50, 25245.00, 1.5000, 'ft', 4.5000, 'ft', '2026-02-07 14:20:05', '2026-02-07 14:20:05'),
(1822, 445, 28, NULL, 20, 31.80, 0.00, 0.00, 60.00, 1908.00, 2.0000, 'ft', 1.5000, 'ft', '2026-02-07 14:20:05', '2026-02-07 14:20:05'),
(1823, 446, 28, NULL, 84, 25.00, 0.00, 0.00, 840.00, 21000.00, 4.0000, 'ft', 2.5000, 'ft', '2026-02-07 18:25:25', '2026-02-07 18:25:25'),
(1824, 446, 28, NULL, 2, 25.00, 0.00, 0.00, 400.00, 10000.00, 20.0000, 'ft', 10.0000, 'ft', '2026-02-07 18:25:25', '2026-02-07 18:25:25'),
(1825, 446, 28, NULL, 2, 25.00, 0.00, 0.00, 90.00, 2250.00, 3.0000, 'ft', 15.0000, 'ft', '2026-02-07 18:25:25', '2026-02-07 18:25:25'),
(1826, 446, 28, NULL, 2, 25.00, 0.00, 0.00, 64.00, 1600.00, 4.0000, 'ft', 8.0000, 'ft', '2026-02-07 18:25:25', '2026-02-07 18:25:25'),
(1827, 446, NULL, 'Steamer Mazdori|80x84', 84, 80.00, 0.00, 0.00, 0.00, 6720.00, NULL, NULL, NULL, NULL, '2026-02-07 18:25:25', '2026-02-07 18:25:25'),
(1828, 446, NULL, '20x10 labour', 2, 1000.00, 0.00, 0.00, 0.00, 2000.00, NULL, NULL, NULL, NULL, '2026-02-07 18:25:25', '2026-02-07 18:25:25'),
(1829, 447, 28, NULL, 4, 40.00, 0.00, 0.00, 112.00, 4480.00, 4.0000, 'ft', 7.0000, 'ft', '2026-02-07 18:29:53', '2026-02-07 18:29:53'),
(1830, 447, 28, NULL, 1, 40.00, 0.00, 0.00, 70.00, 2800.00, 7.0000, 'ft', 10.0000, 'ft', '2026-02-07 18:29:53', '2026-02-07 18:29:53'),
(1831, 447, 32, NULL, 4, 130.00, 0.00, 0.00, 63.00, 8190.00, 3.5000, 'ft', 4.5000, 'ft', '2026-02-07 18:29:53', '2026-02-07 18:29:53'),
(1832, 447, 32, NULL, 3, 130.00, 0.00, 0.00, 141.75, 18427.50, 10.5000, 'ft', 4.5000, 'ft', '2026-02-07 18:29:53', '2026-02-07 18:29:53'),
(1836, 450, 28, NULL, 1, 22.00, 0.00, 0.00, 38.00, 836.00, 3.8000, 'ft', 10.0000, 'ft', '2026-02-07 18:33:26', '2026-02-07 18:33:26'),
(1837, 450, 28, NULL, 1, 22.00, 0.00, 0.00, 36.00, 792.00, 3.0000, 'ft', 12.0000, 'ft', '2026-02-07 18:33:26', '2026-02-07 18:33:26'),
(1838, 451, 28, NULL, 1, 22.00, 0.00, 0.00, 8.00, 176.00, 2.0000, 'ft', 4.0000, 'ft', '2026-02-07 18:34:51', '2026-02-07 18:34:51'),
(1839, 451, 28, NULL, 2, 22.00, 0.00, 0.00, 12.00, 264.00, 3.0000, 'ft', 2.0000, 'ft', '2026-02-07 18:34:51', '2026-02-07 18:34:51'),
(1840, 451, 28, NULL, 1, 22.00, 0.00, 0.00, 6.00, 132.00, 1.5000, 'ft', 4.0000, 'ft', '2026-02-07 18:34:51', '2026-02-07 18:34:51'),
(1841, 451, 28, NULL, 1, 22.00, 0.00, 0.00, 4.00, 88.00, 1.0000, 'ft', 4.0000, 'ft', '2026-02-07 18:34:51', '2026-02-07 18:34:51'),
(1842, 451, 28, NULL, 2, 22.00, 0.00, 0.00, 12.00, 264.00, 1.0000, 'ft', 6.0000, 'ft', '2026-02-07 18:34:51', '2026-02-07 18:34:51'),
(1843, 451, 28, NULL, 2, 22.00, 0.00, 0.00, 18.00, 396.00, 1.5000, 'ft', 6.0000, 'ft', '2026-02-07 18:34:51', '2026-02-07 18:34:51'),
(1844, 451, 28, NULL, 1, 22.00, 0.00, 0.00, 8.00, 176.00, 1.0000, 'ft', 8.0000, 'ft', '2026-02-07 18:34:51', '2026-02-07 18:34:51'),
(1845, 452, 28, NULL, 1, 23.00, 0.00, 0.00, 6.00, 138.00, 3.0000, 'ft', 2.0000, 'ft', '2026-02-07 18:36:57', '2026-02-07 18:36:57'),
(1846, 452, 28, NULL, 1, 23.00, 0.00, 0.00, 8.00, 184.00, 1.0000, 'ft', 8.0000, 'ft', '2026-02-07 18:36:57', '2026-02-07 18:36:57'),
(1847, 453, 28, NULL, 1, 22.00, 0.00, 0.00, 15.00, 330.00, 2.0000, 'ft', 7.5000, 'ft', '2026-02-07 18:38:12', '2026-02-07 18:38:12'),
(1848, 453, 28, NULL, 1, 22.00, 0.00, 0.00, 104.00, 2288.00, 8.0000, 'ft', 13.0000, 'ft', '2026-02-07 18:38:12', '2026-02-07 18:38:12'),
(1849, 453, 28, NULL, 1, 22.00, 0.00, 0.00, 126.00, 2772.00, 7.0000, 'ft', 18.0000, 'ft', '2026-02-07 18:38:12', '2026-02-07 18:38:12'),
(1850, 453, 28, NULL, 2, 22.00, 0.00, 0.00, 21.60, 475.20, 1.2000, 'ft', 9.0000, 'ft', '2026-02-07 18:38:12', '2026-02-07 18:38:12'),
(1851, 454, 28, NULL, 1, 30.00, 0.00, 0.00, 3.00, 90.00, 1.5000, 'ft', 2.0000, 'ft', '2026-02-07 18:38:46', '2026-02-07 18:38:46'),
(1852, 455, 28, NULL, 2, 23.00, 0.00, 0.00, 9.00, 207.00, 3.0000, 'ft', 1.5000, 'ft', '2026-02-07 18:40:21', '2026-02-07 18:40:21'),
(1853, 455, 28, NULL, 1, 23.00, 0.00, 0.00, 10.00, 230.00, 1.0000, 'ft', 10.0000, 'ft', '2026-02-07 18:40:21', '2026-02-07 18:40:21'),
(1854, 455, 28, NULL, 1, 23.00, 0.00, 0.00, 15.00, 345.00, 3.0000, 'ft', 5.0000, 'ft', '2026-02-07 18:40:21', '2026-02-07 18:40:21'),
(1855, 455, 28, NULL, 2, 23.00, 0.00, 0.00, 50.00, 1150.00, 2.5000, 'ft', 10.0000, 'ft', '2026-02-07 18:40:21', '2026-02-07 18:40:21'),
(1856, 455, 28, NULL, 1, 23.00, 0.00, 0.00, 39.00, 897.00, 3.0000, 'ft', 13.0000, 'ft', '2026-02-07 18:40:21', '2026-02-07 18:40:21'),
(1857, 455, 28, NULL, 1, 23.00, 0.00, 0.00, 75.00, 1725.00, 5.0000, 'ft', 15.0000, 'ft', '2026-02-07 18:40:21', '2026-02-07 18:40:21'),
(1858, 456, 28, NULL, 2, 30.00, 0.00, 0.00, 30.00, 900.00, 3.0000, 'ft', 5.0000, 'ft', '2026-02-07 19:04:15', '2026-02-07 19:04:15'),
(1859, 457, 34, 'Sehri wali vynial', 1, 110.00, 0.00, 0.00, 36.00, 3960.00, 8.0000, 'ft', 4.5000, 'ft', '2026-02-08 11:34:49', '2026-02-08 11:34:49'),
(1860, 457, 34, 'police counter', 1, 110.00, 0.00, 0.00, 18.00, 1980.00, 4.0000, 'ft', 4.5000, 'ft', '2026-02-08 11:34:49', '2026-02-08 11:34:49'),
(1861, 457, 34, 'Malomati Counter', 1, 110.00, 0.00, 0.00, 45.00, 4950.00, 10.0000, 'ft', 4.5000, 'ft', '2026-02-08 11:34:49', '2026-02-08 11:34:49'),
(1862, 457, 34, 'Waste', 3, 110.00, 0.00, 0.00, 222.75, 24502.50, 16.5000, 'ft', 4.5000, 'ft', '2026-02-08 11:34:49', '2026-02-08 11:34:49'),
(1863, 457, 34, 'Emergency', 2, 110.00, 0.00, 0.00, 21.60, 2376.00, 2.4000, 'ft', 4.5000, 'ft', '2026-02-08 11:34:49', '2026-02-08 11:34:49'),
(1864, 457, 34, 'Emergency Vynial', 2, 110.00, 0.00, 0.00, 27.00, 2970.00, 3.0000, 'ft', 4.5000, 'ft', '2026-02-08 11:34:49', '2026-02-08 11:34:49'),
(1865, 391, 28, 'Asif Computer', 2, 35.00, 0.00, 0.00, 18.00, 630.00, 3.0000, 'ft', 3.0000, 'ft', '2026-02-08 12:05:33', '2026-02-08 12:05:33'),
(1866, 391, 28, NULL, 1, 35.00, 0.00, 0.00, 24.00, 840.00, 6.0000, 'ft', 4.0000, 'ft', '2026-02-08 12:05:33', '2026-02-08 12:05:33'),
(1867, 391, 28, NULL, 2, 35.00, 0.00, 0.00, 18.80, 658.00, 2.0000, 'ft', 4.7000, 'ft', '2026-02-08 12:05:33', '2026-02-08 12:05:33'),
(1868, 391, 28, NULL, 1, 35.00, 0.00, 0.00, 10.00, 350.00, 1.0000, 'ft', 10.0000, 'ft', '2026-02-08 12:05:33', '2026-02-08 12:05:33'),
(1869, 391, 28, NULL, 1, 35.00, 0.00, 0.00, 30.00, 1050.00, 3.0000, 'ft', 10.0000, 'ft', '2026-02-08 12:05:33', '2026-02-08 12:05:33'),
(1870, 391, 28, NULL, 1, 35.00, 0.00, 0.00, 109.00, 3815.00, 10.0000, 'ft', 10.9000, 'ft', '2026-02-08 12:05:33', '2026-02-08 12:05:33'),
(1871, 391, 28, 'Wahab Computer', 1, 35.00, 0.00, 0.00, 23.20, 812.00, 2.9000, 'ft', 8.0000, 'ft', '2026-02-08 12:05:33', '2026-02-08 12:05:33'),
(1872, 391, 28, NULL, 1, 35.00, 0.00, 0.00, 31.20, 1092.00, 3.0000, 'ft', 10.4000, 'ft', '2026-02-08 12:05:33', '2026-02-08 12:05:33'),
(1873, 391, 28, NULL, 1, 35.00, 0.00, 0.00, 28.00, 980.00, 2.0000, 'ft', 14.0000, 'ft', '2026-02-08 12:05:33', '2026-02-08 12:05:33'),
(1874, 391, 28, NULL, 1, 35.00, 0.00, 0.00, 10.40, 364.00, 8.0000, 'ft', 1.3000, 'ft', '2026-02-08 12:05:33', '2026-02-08 12:05:33'),
(1875, 391, 28, NULL, 1, 35.00, 0.00, 0.00, 160.00, 5600.00, 10.0000, 'ft', 16.0000, 'ft', '2026-02-08 12:05:33', '2026-02-08 12:05:33'),
(1876, 391, 28, 'limca', 1, 35.00, 0.00, 0.00, 24.00, 840.00, 3.0000, 'ft', 8.0000, 'ft', '2026-02-08 12:05:33', '2026-02-08 12:05:33'),
(1877, 391, 28, 'MM fast food', 1, 35.00, 0.00, 0.00, 136.00, 4760.00, 8.0000, 'ft', 17.0000, 'ft', '2026-02-08 12:05:33', '2026-02-08 12:05:33'),
(1878, 391, 28, NULL, 1, 35.00, 0.00, 0.00, 9.00, 315.00, 1.0000, 'ft', 9.0000, 'ft', '2026-02-08 12:05:33', '2026-02-08 12:05:33'),
(1879, 391, 28, NULL, 1, 35.00, 0.00, 0.00, 10.80, 378.00, 9.0000, 'ft', 1.2000, 'ft', '2026-02-08 12:05:33', '2026-02-08 12:05:33'),
(1880, 391, 28, NULL, 1, 35.00, 0.00, 0.00, 13.50, 472.50, 9.0000, 'ft', 1.5000, 'ft', '2026-02-08 12:05:33', '2026-02-08 12:05:33');
INSERT INTO `sale_items` (`id`, `sale_id`, `product_id`, `description`, `quantity`, `rate`, `discount`, `tax`, `units_sqft`, `line_total`, `length_input`, `length_unit`, `width_input`, `width_unit`, `created_at`, `updated_at`) VALUES
(1881, 391, 28, NULL, 1, 35.00, 0.00, 0.00, 180.00, 6300.00, 10.0000, 'ft', 18.0000, 'ft', '2026-02-08 12:05:33', '2026-02-08 12:05:33'),
(1882, 391, 28, NULL, 1, 35.00, 0.00, 0.00, 190.00, 6650.00, 10.0000, 'ft', 19.0000, 'ft', '2026-02-08 12:05:33', '2026-02-08 12:05:33'),
(1883, 391, 28, NULL, 1, 35.00, 0.00, 0.00, 22.50, 787.50, 3.0000, 'ft', 7.5000, 'ft', '2026-02-08 12:05:33', '2026-02-08 12:05:33'),
(1884, 391, 28, NULL, 1, 35.00, 0.00, 0.00, 91.00, 3185.00, 9.1000, 'ft', 10.0000, 'ft', '2026-02-08 12:05:33', '2026-02-08 12:05:33'),
(1885, 391, 28, NULL, 1, 35.00, 0.00, 0.00, 20.00, 700.00, 2.0000, 'ft', 10.0000, 'ft', '2026-02-08 12:05:33', '2026-02-08 12:05:33'),
(1893, 458, 28, NULL, 1, 35.00, 0.00, 0.00, 90.00, 3150.00, 9.0000, 'ft', 10.0000, 'ft', '2026-02-08 15:55:53', '2026-02-08 15:55:53'),
(1894, 458, 28, NULL, 1, 35.00, 0.00, 0.00, 54.00, 1890.00, 9.0000, 'ft', 6.0000, 'ft', '2026-02-08 15:55:53', '2026-02-08 15:55:53'),
(1895, 458, 28, NULL, 1, 35.00, 0.00, 0.00, 40.00, 1400.00, 5.0000, 'ft', 8.0000, 'ft', '2026-02-08 15:55:53', '2026-02-08 15:55:53'),
(1896, 458, 28, NULL, 1, 35.00, 0.00, 0.00, 26.00, 910.00, 2.0000, 'ft', 13.0000, 'ft', '2026-02-08 15:55:53', '2026-02-08 15:55:53'),
(1897, 458, 28, NULL, 1, 35.00, 0.00, 0.00, 32.00, 1120.00, 8.0000, 'ft', 4.0000, 'ft', '2026-02-08 15:55:53', '2026-02-08 15:55:53'),
(1898, 458, 28, NULL, 2, 35.00, 0.00, 0.00, 32.00, 1120.00, 8.0000, 'ft', 2.0000, 'ft', '2026-02-08 15:55:53', '2026-02-08 15:55:53'),
(1899, 458, 28, NULL, 1, 35.00, 0.00, 0.00, 8.00, 280.00, 1.0000, 'ft', 8.0000, 'ft', '2026-02-08 15:55:53', '2026-02-08 15:55:53'),
(1900, 458, 28, NULL, 1, 35.00, 0.00, 0.00, 16.00, 560.00, 2.0000, 'ft', 8.0000, 'ft', '2026-02-08 15:55:53', '2026-02-08 15:55:53'),
(1901, 458, 28, NULL, 1, 35.00, 0.00, 0.00, 12.00, 420.00, 2.0000, 'ft', 6.0000, 'ft', '2026-02-08 15:55:53', '2026-02-08 15:55:53'),
(1902, 427, 28, NULL, 5, 23.00, 0.00, 0.00, 30.00, 690.00, 3.0000, 'ft', 2.0000, 'ft', '2026-02-08 17:40:30', '2026-02-08 17:40:30'),
(1903, 459, 28, NULL, 1, 22.00, 0.00, 0.00, 30.00, 660.00, 3.0000, 'ft', 10.0000, 'ft', '2026-02-08 18:35:12', '2026-02-08 18:35:12'),
(1904, 449, 28, NULL, 2, 30.00, 0.00, 0.00, 20.00, 600.00, 5.0000, 'ft', 2.0000, 'ft', '2026-02-08 18:50:15', '2026-02-08 18:50:15'),
(1905, 449, 28, NULL, 1, 30.00, 0.00, 0.00, 6.00, 180.00, 1.0000, 'ft', 6.0000, 'ft', '2026-02-08 18:50:15', '2026-02-08 18:50:15'),
(1906, 460, 28, NULL, 1, 30.00, 0.00, 0.00, 8.00, 240.00, 2.0000, 'ft', 4.0000, 'ft', '2026-02-08 18:56:40', '2026-02-08 18:56:40'),
(1907, 460, 28, NULL, 1, 30.00, 0.00, 0.00, 26.00, 780.00, 2.0000, 'ft', 13.0000, 'ft', '2026-02-08 18:56:40', '2026-02-08 18:56:40'),
(1908, 461, 28, NULL, 1, 23.00, 0.00, 0.00, 400.00, 9200.00, 5.0000, 'ft', 80.0000, 'ft', '2026-02-08 18:57:07', '2026-02-08 18:57:07'),
(1909, 462, 28, NULL, 2, 30.00, 0.00, 0.00, 25.00, 750.00, 2.5000, 'ft', 5.0000, 'ft', '2026-02-08 18:57:51', '2026-02-08 18:57:51'),
(1910, 463, 28, NULL, 1, 30.00, 0.00, 0.00, 16.00, 480.00, 2.0000, 'ft', 8.0000, 'ft', '2026-02-08 18:58:44', '2026-02-08 18:58:44'),
(1916, 464, 28, NULL, 1, 22.00, 0.00, 0.00, 24.00, 528.00, 3.0000, 'ft', 8.0000, 'ft', '2026-02-08 19:00:41', '2026-02-08 19:00:41'),
(1917, 465, 28, NULL, 1, 25.00, 0.00, 0.00, 6.00, 150.00, 3.0000, 'ft', 2.0000, 'ft', '2026-02-08 19:01:27', '2026-02-08 19:01:27'),
(1918, 466, 28, NULL, 1, 22.00, 0.00, 0.00, 3.00, 66.00, 2.0000, 'ft', 1.5000, 'ft', '2026-02-08 19:02:07', '2026-02-08 19:02:07'),
(1919, 466, 28, NULL, 1, 22.00, 0.00, 0.00, 6.00, 132.00, 2.0000, 'ft', 3.0000, 'ft', '2026-02-08 19:02:07', '2026-02-08 19:02:07'),
(1920, 466, 28, NULL, 1, 22.00, 0.00, 0.00, 15.00, 330.00, 2.5000, 'ft', 6.0000, 'ft', '2026-02-08 19:02:07', '2026-02-08 19:02:07'),
(1921, 466, 28, NULL, 1, 22.00, 0.00, 0.00, 30.00, 660.00, 5.0000, 'ft', 6.0000, 'ft', '2026-02-08 19:02:07', '2026-02-08 19:02:07'),
(1922, 467, 28, NULL, 1, 22.00, 0.00, 0.00, 3.00, 66.00, 1.5000, 'ft', 2.0000, 'ft', '2026-02-08 19:03:09', '2026-02-08 19:03:09'),
(1923, 467, 28, NULL, 1, 22.00, 0.00, 0.00, 6.00, 132.00, 1.0000, 'ft', 6.0000, 'ft', '2026-02-08 19:03:09', '2026-02-08 19:03:09'),
(1924, 467, 28, NULL, 1, 22.00, 0.00, 0.00, 80.00, 1760.00, 8.0000, 'ft', 10.0000, 'ft', '2026-02-08 19:03:09', '2026-02-08 19:03:09'),
(1925, 468, 28, NULL, 15, 30.00, 0.00, 0.00, 45.00, 1350.00, 2.0000, 'ft', 1.5000, 'ft', '2026-02-08 19:03:34', '2026-02-08 19:03:34'),
(1926, 469, 34, NULL, 1, 100.00, 0.00, 0.00, 9.00, 900.00, 2.0000, 'ft', 4.5000, 'ft', '2026-02-08 19:04:18', '2026-02-08 19:04:18'),
(1927, 470, 34, NULL, 1, 75.00, 0.00, 0.00, 6.75, 506.25, 1.5000, 'ft', 4.5000, 'ft', '2026-02-08 19:04:54', '2026-02-08 19:04:54'),
(1928, 471, 28, NULL, 4, 22.00, 0.00, 0.00, 16.00, 352.00, 2.0000, 'ft', 2.0000, 'ft', '2026-02-08 19:06:36', '2026-02-08 19:06:36'),
(1929, 471, 28, NULL, 1, 22.00, 0.00, 0.00, 60.00, 1320.00, 6.0000, 'ft', 10.0000, 'ft', '2026-02-08 19:06:36', '2026-02-08 19:06:36'),
(1930, 471, 28, NULL, 2, 22.00, 0.00, 0.00, 17.60, 387.20, 2.2000, 'ft', 4.0000, 'ft', '2026-02-08 19:06:36', '2026-02-08 19:06:36'),
(1931, 471, 28, NULL, 2, 22.00, 0.00, 0.00, 30.40, 668.80, 3.8000, 'ft', 4.0000, 'ft', '2026-02-08 19:06:36', '2026-02-08 19:06:36'),
(1932, 471, 31, NULL, 1, 40.00, 0.00, 0.00, 18.00, 720.00, 2.0000, 'ft', 9.0000, 'ft', '2026-02-08 19:06:36', '2026-02-08 19:06:36'),
(1933, 448, 28, NULL, 3, 22.00, 0.00, 0.00, 24.00, 528.00, 1.0000, 'ft', 8.0000, 'ft', '2026-02-09 10:43:41', '2026-02-09 10:43:41'),
(1934, 448, 28, NULL, 2, 22.00, 0.00, 0.00, 12.00, 264.00, 3.0000, 'ft', 2.0000, 'ft', '2026-02-09 10:43:41', '2026-02-09 10:43:41'),
(1935, 448, 28, NULL, 2, 22.00, 0.00, 0.00, 20.00, 440.00, 4.0000, 'ft', 2.5000, 'ft', '2026-02-09 10:43:41', '2026-02-09 10:43:41'),
(1936, 448, 28, NULL, 1, 22.00, 0.00, 0.00, 19.00, 418.00, 2.0000, 'ft', 9.5000, 'ft', '2026-02-09 10:43:41', '2026-02-09 10:43:41'),
(1937, 448, 31, NULL, 2, 45.00, 0.00, 0.00, 20.00, 900.00, 4.0000, 'ft', 2.5000, 'ft', '2026-02-09 10:43:41', '2026-02-09 10:43:41'),
(1938, 472, 28, NULL, 1, 28.00, 0.00, 0.00, 4.00, 112.00, 2.0000, 'ft', 2.0000, 'ft', '2026-02-09 16:56:18', '2026-02-09 16:56:18'),
(1939, 472, 28, NULL, 1, 28.00, 0.00, 0.00, 14.00, 392.00, 2.0000, 'ft', 7.0000, 'ft', '2026-02-09 16:56:18', '2026-02-09 16:56:18'),
(1940, 472, 28, NULL, 1, 28.00, 0.00, 0.00, 20.00, 560.00, 4.0000, 'ft', 5.0000, 'ft', '2026-02-09 16:56:18', '2026-02-09 16:56:18'),
(1941, 473, 28, NULL, 1, 22.00, 0.00, 0.00, 60.00, 1320.00, 10.0000, 'ft', 6.0000, 'ft', '2026-02-09 18:52:13', '2026-02-09 18:52:13'),
(1942, 474, 28, NULL, 3, 23.00, 0.00, 0.00, 9.00, 207.00, 1.5000, 'ft', 2.0000, 'ft', '2026-02-09 18:55:01', '2026-02-09 18:55:01'),
(1943, 474, 28, NULL, 4, 23.00, 0.00, 0.00, 16.00, 368.00, 2.0000, 'ft', 2.0000, 'ft', '2026-02-09 18:55:01', '2026-02-09 18:55:01'),
(1944, 474, 28, NULL, 5, 23.00, 0.00, 0.00, 5.00, 115.00, 1.0000, 'ft', 1.0000, 'ft', '2026-02-09 18:55:01', '2026-02-09 18:55:01'),
(1945, 474, 28, NULL, 1, 23.00, 0.00, 0.00, 3.00, 69.00, 2.0000, 'ft', 1.5000, 'ft', '2026-02-09 18:55:01', '2026-02-09 18:55:01'),
(1946, 474, 28, NULL, 1, 23.00, 0.00, 0.00, 1.50, 34.50, 1.5000, 'ft', 1.0000, 'ft', '2026-02-09 18:55:01', '2026-02-09 18:55:01'),
(1947, 475, 28, NULL, 2, 25.00, 0.00, 0.00, 16.00, 400.00, 1.0000, 'ft', 8.0000, 'ft', '2026-02-09 18:56:40', '2026-02-09 18:56:40'),
(1948, 475, 28, NULL, 1, 25.00, 0.00, 0.00, 36.00, 900.00, 3.0000, 'ft', 12.0000, 'ft', '2026-02-09 18:56:40', '2026-02-09 18:56:40'),
(1949, 476, 28, NULL, 1, 30.00, 0.00, 0.00, 16.00, 480.00, 2.0000, 'ft', 8.0000, 'ft', '2026-02-09 18:57:24', '2026-02-09 18:57:24'),
(1950, 476, 28, NULL, 1, 30.00, 0.00, 0.00, 20.00, 600.00, 2.0000, 'ft', 10.0000, 'ft', '2026-02-09 18:57:24', '2026-02-09 18:57:24'),
(1951, 476, NULL, 'Sabqa Bill', 1, 1500.00, 0.00, 0.00, 0.00, 1500.00, NULL, NULL, NULL, NULL, '2026-02-09 18:57:24', '2026-02-09 18:57:24'),
(1957, 478, 28, NULL, 1, 30.00, 0.00, 0.00, 34.00, 1020.00, 2.0000, 'ft', 17.0000, 'ft', '2026-02-09 18:59:18', '2026-02-09 18:59:18'),
(1958, 479, 28, NULL, 2, 23.00, 0.00, 0.00, 32.00, 736.00, 2.0000, 'ft', 8.0000, 'ft', '2026-02-09 18:59:51', '2026-02-09 18:59:51'),
(1959, 480, 28, NULL, 1, 23.00, 0.00, 0.00, 8.00, 184.00, 1.0000, 'ft', 8.0000, 'ft', '2026-02-09 19:00:45', '2026-02-09 19:00:45'),
(1960, 480, 28, NULL, 1, 23.00, 0.00, 0.00, 20.00, 460.00, 2.5000, 'ft', 8.0000, 'ft', '2026-02-09 19:00:45', '2026-02-09 19:00:45'),
(1961, 480, 28, NULL, 1, 23.00, 0.00, 0.00, 9.00, 207.00, 1.0000, 'ft', 9.0000, 'ft', '2026-02-09 19:00:45', '2026-02-09 19:00:45'),
(1962, 480, 28, NULL, 2, 23.00, 0.00, 0.00, 60.00, 1380.00, 3.0000, 'ft', 10.0000, 'ft', '2026-02-09 19:00:45', '2026-02-09 19:00:45'),
(1963, 480, 28, NULL, 1, 23.00, 0.00, 0.00, 40.00, 920.00, 4.0000, 'ft', 10.0000, 'ft', '2026-02-09 19:00:45', '2026-02-09 19:00:45'),
(1964, 481, 28, NULL, 95, 31.80, 0.00, 0.00, 380.00, 12084.00, 1.0000, 'ft', 4.0000, 'ft', '2026-02-09 19:01:50', '2026-02-09 19:01:50'),
(1965, 481, 28, NULL, 1, 31.80, 0.00, 0.00, 28.00, 890.40, 7.0000, 'ft', 4.0000, 'ft', '2026-02-09 19:01:50', '2026-02-09 19:01:50'),
(1966, 481, 28, NULL, 1, 31.80, 0.00, 0.00, 64.00, 2035.20, 8.0000, 'ft', 8.0000, 'ft', '2026-02-09 19:01:50', '2026-02-09 19:01:50'),
(1967, 481, 28, NULL, 2, 31.80, 0.00, 0.00, 400.00, 12720.00, 10.0000, 'ft', 20.0000, 'ft', '2026-02-09 19:01:50', '2026-02-09 19:01:50'),
(1968, 482, 28, NULL, 43, 22.00, 0.00, 0.00, 258.00, 5676.00, 3.0000, 'ft', 2.0000, 'ft', '2026-02-09 19:02:44', '2026-02-09 19:02:44'),
(1969, 482, 28, NULL, 1, 22.00, 0.00, 0.00, 4.00, 88.00, 1.0000, 'ft', 4.0000, 'ft', '2026-02-09 19:02:44', '2026-02-09 19:02:44'),
(1970, 483, 28, NULL, 100, 22.00, 0.00, 0.00, 600.00, 13200.00, 3.0000, 'ft', 2.0000, 'ft', '2026-02-09 19:03:14', '2026-02-09 19:03:14'),
(1971, 483, 28, NULL, 2, 22.00, 0.00, 0.00, 24.00, 528.00, 3.0000, 'ft', 4.0000, 'ft', '2026-02-09 19:03:14', '2026-02-09 19:03:14'),
(1972, 484, 28, NULL, 1, 22.00, 0.00, 0.00, 9.00, 198.00, 3.0000, 'ft', 3.0000, 'ft', '2026-02-09 19:04:10', '2026-02-09 19:04:10'),
(1973, 484, 28, NULL, 1, 22.00, 0.00, 0.00, 49.00, 1078.00, 7.0000, 'ft', 7.0000, 'ft', '2026-02-09 19:04:10', '2026-02-09 19:04:10'),
(1974, 485, 28, NULL, 4, 23.00, 0.00, 0.00, 4.00, 92.00, 1.0000, 'ft', 1.0000, 'ft', '2026-02-09 19:04:53', '2026-02-09 19:04:53'),
(1975, 485, 28, NULL, 1, 23.00, 0.00, 0.00, 7.00, 161.00, 2.0000, 'ft', 3.5000, 'ft', '2026-02-09 19:04:53', '2026-02-09 19:04:53'),
(1976, 485, 28, NULL, 1, 23.00, 0.00, 0.00, 24.00, 552.00, 3.0000, 'ft', 8.0000, 'ft', '2026-02-09 19:04:53', '2026-02-09 19:04:53'),
(1977, 486, 28, NULL, 6, 23.00, 0.00, 0.00, 12.00, 276.00, 1.0000, 'ft', 2.0000, 'ft', '2026-02-09 19:05:51', '2026-02-09 19:05:51'),
(1978, 486, 28, NULL, 4, 23.00, 0.00, 0.00, 24.00, 552.00, 1.0000, 'ft', 6.0000, 'ft', '2026-02-09 19:05:51', '2026-02-09 19:05:51'),
(1979, 486, 28, NULL, 5, 23.00, 0.00, 0.00, 20.00, 460.00, 2.0000, 'ft', 2.0000, 'ft', '2026-02-09 19:05:51', '2026-02-09 19:05:51'),
(1980, 486, 28, NULL, 1, 23.00, 0.00, 0.00, 18.00, 414.00, 3.0000, 'ft', 6.0000, 'ft', '2026-02-09 19:05:51', '2026-02-09 19:05:51'),
(1981, 487, 34, NULL, 1, 65.00, 0.00, 0.00, 6.75, 438.75, 1.5000, 'ft', 4.5000, 'ft', '2026-02-09 19:09:26', '2026-02-09 19:09:26'),
(1982, 487, 34, NULL, 1, 65.00, 0.00, 0.00, 9.00, 585.00, 2.0000, 'ft', 4.5000, 'ft', '2026-02-09 19:09:26', '2026-02-09 19:09:26'),
(1983, 487, 35, NULL, 2, 80.00, 0.00, 0.00, 48.00, 3840.00, 6.0000, 'ft', 4.0000, 'ft', '2026-02-09 19:09:26', '2026-02-09 19:09:26'),
(1984, 487, 28, NULL, 1, 20.00, 0.00, 0.00, 48.00, 960.00, 4.0000, 'ft', 12.0000, 'ft', '2026-02-09 19:09:26', '2026-02-09 19:09:26'),
(1985, 487, 31, NULL, 8, 40.00, 0.00, 0.00, 36.00, 1440.00, 3.0000, 'ft', 1.5000, 'ft', '2026-02-09 19:09:26', '2026-02-09 19:09:26'),
(1986, 487, 31, NULL, 3, 40.00, 0.00, 0.00, 18.00, 720.00, 3.0000, 'ft', 2.0000, 'ft', '2026-02-09 19:09:26', '2026-02-09 19:09:26'),
(1987, 487, 28, 'ذائقہ لائج', 1, 20.00, 0.00, 0.00, 200.00, 4000.00, 10.0000, 'ft', 20.0000, 'ft', '2026-02-09 19:09:26', '2026-02-09 19:09:26'),
(1988, 488, 28, NULL, 5, 30.00, 0.00, 0.00, 30.00, 900.00, 3.0000, 'ft', 2.0000, 'ft', '2026-02-09 19:10:07', '2026-02-09 19:10:07'),
(1989, 489, 28, NULL, 1, 23.00, 0.00, 0.00, 4.00, 92.00, 2.0000, 'ft', 2.0000, 'ft', '2026-02-09 19:11:16', '2026-02-09 19:11:16'),
(1990, 489, 28, NULL, 2, 23.00, 0.00, 0.00, 12.00, 276.00, 3.0000, 'ft', 2.0000, 'ft', '2026-02-09 19:11:16', '2026-02-09 19:11:16'),
(1991, 489, 28, NULL, 1, 23.00, 0.00, 0.00, 10.00, 230.00, 2.0000, 'ft', 5.0000, 'ft', '2026-02-09 19:11:16', '2026-02-09 19:11:16'),
(1992, 490, 28, NULL, 1, 22.00, 0.00, 0.00, 13.00, 286.00, 2.0000, 'ft', 6.5000, 'ft', '2026-02-09 19:15:05', '2026-02-09 19:15:05'),
(1993, 490, 28, NULL, 1, 22.00, 0.00, 0.00, 24.00, 528.00, 3.0000, 'ft', 8.0000, 'ft', '2026-02-09 19:15:05', '2026-02-09 19:15:05'),
(1994, 490, 28, NULL, 1, 22.00, 0.00, 0.00, 40.00, 880.00, 5.0000, 'ft', 8.0000, 'ft', '2026-02-09 19:15:05', '2026-02-09 19:15:05'),
(1995, 490, 28, NULL, 1, 22.00, 0.00, 0.00, 60.80, 1337.60, 4.0000, 'ft', 15.2000, 'ft', '2026-02-09 19:15:05', '2026-02-09 19:15:05'),
(1996, 490, 28, NULL, 1, 22.00, 0.00, 0.00, 10.00, 220.00, 4.0000, 'ft', 2.5000, 'ft', '2026-02-09 19:15:05', '2026-02-09 19:15:05'),
(1997, 490, 28, NULL, 2, 22.00, 0.00, 0.00, 16.00, 352.00, 2.0000, 'ft', 4.0000, 'ft', '2026-02-09 19:15:05', '2026-02-09 19:15:05'),
(1998, 490, 28, NULL, 1, 22.00, 0.00, 0.00, 12.00, 264.00, 4.0000, 'ft', 3.0000, 'ft', '2026-02-09 19:15:05', '2026-02-09 19:15:05'),
(1999, 490, 28, NULL, 3, 22.00, 0.00, 0.00, 48.00, 1056.00, 4.0000, 'ft', 4.0000, 'ft', '2026-02-09 19:15:05', '2026-02-09 19:15:05'),
(2000, 490, 28, NULL, 1, 22.00, 0.00, 0.00, 20.00, 440.00, 4.0000, 'ft', 5.0000, 'ft', '2026-02-09 19:15:05', '2026-02-09 19:15:05'),
(2001, 490, 28, NULL, 3, 22.00, 0.00, 0.00, 90.00, 1980.00, 4.0000, 'ft', 7.5000, 'ft', '2026-02-09 19:15:05', '2026-02-09 19:15:05'),
(2002, 490, 28, NULL, 1, 22.00, 0.00, 0.00, 42.00, 924.00, 4.0000, 'ft', 10.5000, 'ft', '2026-02-09 19:15:05', '2026-02-09 19:15:05'),
(2003, 490, 28, NULL, 1, 22.00, 0.00, 0.00, 40.00, 880.00, 4.0000, 'ft', 10.0000, 'ft', '2026-02-09 19:15:05', '2026-02-09 19:15:05'),
(2004, 490, 28, NULL, 4, 22.00, 0.00, 0.00, 176.00, 3872.00, 4.0000, 'ft', 11.0000, 'ft', '2026-02-09 19:15:05', '2026-02-09 19:15:05'),
(2005, 490, 28, NULL, 1, 22.00, 0.00, 0.00, 48.00, 1056.00, 4.0000, 'ft', 12.0000, 'ft', '2026-02-09 19:15:05', '2026-02-09 19:15:05'),
(2006, 490, 28, NULL, 1, 22.00, 0.00, 0.00, 54.00, 1188.00, 4.0000, 'ft', 13.5000, 'ft', '2026-02-09 19:15:05', '2026-02-09 19:15:05'),
(2007, 490, 28, NULL, 1, 22.00, 0.00, 0.00, 58.00, 1276.00, 4.0000, 'ft', 14.5000, 'ft', '2026-02-09 19:15:05', '2026-02-09 19:15:05'),
(2008, 490, 28, NULL, 1, 22.00, 0.00, 0.00, 90.00, 1980.00, 6.0000, 'ft', 15.0000, 'ft', '2026-02-09 19:15:05', '2026-02-09 19:15:05'),
(2009, 490, 28, NULL, 1, 22.00, 0.00, 0.00, 64.00, 1408.00, 4.0000, 'ft', 16.0000, 'ft', '2026-02-09 19:15:05', '2026-02-09 19:15:05'),
(2010, 490, 28, NULL, 1, 22.00, 0.00, 0.00, 64.00, 1408.00, 4.0000, 'ft', 16.0000, 'ft', '2026-02-09 19:15:05', '2026-02-09 19:15:05'),
(2011, 490, NULL, 'Backlight', 1, 70.00, 0.00, 0.00, 9.00, 630.00, 2.0000, 'ft', 4.5000, 'ft', '2026-02-09 19:15:05', '2026-02-09 19:15:05'),
(2012, 477, 28, NULL, 2, 23.00, 0.00, 0.00, 100.00, 2300.00, 5.0000, 'ft', 10.0000, 'ft', '2026-02-09 19:30:21', '2026-02-09 19:30:21'),
(2013, 477, 28, NULL, 1, 23.00, 0.00, 0.00, 200.00, 4600.00, 10.0000, 'ft', 20.0000, 'ft', '2026-02-09 19:30:21', '2026-02-09 19:30:21'),
(2014, 477, 28, NULL, 2, 23.00, 0.00, 0.00, 620.00, 14260.00, 10.0000, 'ft', 31.0000, 'ft', '2026-02-09 19:30:21', '2026-02-09 19:30:21'),
(2015, 491, 28, NULL, 1, 30.00, 0.00, 0.00, 72.00, 2160.00, 6.0000, 'ft', 12.0000, 'ft', '2026-02-10 16:08:16', '2026-02-10 16:08:16'),
(2032, 493, 28, NULL, 3, 22.00, 0.00, 0.00, 9.60, 211.20, 1.6000, 'ft', 2.0000, 'ft', '2026-02-10 16:53:51', '2026-02-10 16:53:51'),
(2033, 493, 28, NULL, 6, 22.00, 0.00, 0.00, 36.00, 792.00, 3.0000, 'ft', 2.0000, 'ft', '2026-02-10 16:53:51', '2026-02-10 16:53:51'),
(2034, 493, 28, NULL, 1, 22.00, 0.00, 0.00, 4.00, 88.00, 1.0000, 'ft', 4.0000, 'ft', '2026-02-10 16:53:51', '2026-02-10 16:53:51'),
(2035, 493, 28, NULL, 1, 22.00, 0.00, 0.00, 5.20, 114.40, 1.3000, 'ft', 4.0000, 'ft', '2026-02-10 16:53:51', '2026-02-10 16:53:51'),
(2036, 493, 28, NULL, 1, 22.00, 0.00, 0.00, 11.40, 250.80, 3.0000, 'ft', 3.8000, 'ft', '2026-02-10 16:53:51', '2026-02-10 16:53:51'),
(2037, 493, 28, NULL, 1, 22.00, 0.00, 0.00, 3.90, 85.80, 1.3000, 'ft', 3.0000, 'ft', '2026-02-10 16:53:51', '2026-02-10 16:53:51'),
(2038, 493, 28, NULL, 1, 22.00, 0.00, 0.00, 12.90, 283.80, 3.0000, 'ft', 4.3000, 'ft', '2026-02-10 16:53:51', '2026-02-10 16:53:51'),
(2039, 493, 28, NULL, 2, 22.00, 0.00, 0.00, 16.00, 352.00, 2.0000, 'ft', 4.0000, 'ft', '2026-02-10 16:53:51', '2026-02-10 16:53:51'),
(2040, 493, 28, NULL, 2, 22.00, 0.00, 0.00, 18.20, 400.40, 1.3000, 'ft', 7.0000, 'ft', '2026-02-10 16:53:51', '2026-02-10 16:53:51'),
(2041, 493, 28, NULL, 2, 22.00, 0.00, 0.00, 90.00, 1980.00, 3.0000, 'ft', 15.0000, 'ft', '2026-02-10 16:53:51', '2026-02-10 16:53:51'),
(2042, 494, 28, NULL, 3, 22.00, 0.00, 0.00, 120.00, 2640.00, 4.0000, 'ft', 10.0000, 'ft', '2026-02-10 16:55:06', '2026-02-10 16:55:06'),
(2043, 494, 28, NULL, 10, 22.00, 0.00, 0.00, 100.00, 2200.00, 5.0000, 'ft', 2.0000, 'ft', '2026-02-10 16:55:06', '2026-02-10 16:55:06'),
(2044, 494, NULL, 'ring flex  50 ring', 1, 500.00, 0.00, 0.00, 0.00, 500.00, NULL, NULL, NULL, NULL, '2026-02-10 16:55:06', '2026-02-10 16:55:06'),
(2045, 495, 28, NULL, 2, 23.00, 0.00, 0.00, 20.00, 460.00, 5.0000, 'ft', 2.0000, 'ft', '2026-02-10 16:56:08', '2026-02-10 16:56:08'),
(2046, 495, 28, NULL, 1, 23.00, 0.00, 0.00, 6.00, 138.00, 1.0000, 'ft', 6.0000, 'ft', '2026-02-10 16:56:08', '2026-02-10 16:56:08'),
(2047, 495, 28, NULL, 1, 23.00, 0.00, 0.00, 60.00, 1380.00, 5.0000, 'ft', 12.0000, 'ft', '2026-02-10 16:56:08', '2026-02-10 16:56:08'),
(2054, 499, 31, NULL, 16, 45.00, 0.00, 0.00, 384.00, 17280.00, 3.0000, 'ft', 8.0000, 'ft', '2026-02-10 17:05:00', '2026-02-10 17:05:00'),
(2055, 499, NULL, 'ring flex  32', 1, 320.00, 0.00, 0.00, 0.00, 320.00, NULL, NULL, NULL, NULL, '2026-02-10 17:05:00', '2026-02-10 17:05:00'),
(2056, 500, 28, NULL, 1, 25.00, 0.00, 0.00, 96.00, 2400.00, 8.0000, 'ft', 12.0000, 'ft', '2026-02-10 17:06:18', '2026-02-10 17:06:18'),
(2057, 501, 28, NULL, 5, 25.00, 0.00, 0.00, 30.00, 750.00, 3.0000, 'ft', 2.0000, 'ft', '2026-02-10 17:34:22', '2026-02-10 17:34:22'),
(2058, 501, 28, NULL, 5, 25.00, 0.00, 0.00, 100.00, 2500.00, 5.0000, 'ft', 4.0000, 'ft', '2026-02-10 17:34:22', '2026-02-10 17:34:22'),
(2059, 501, 28, NULL, 2, 25.00, 0.00, 0.00, 60.00, 1500.00, 3.0000, 'ft', 10.0000, 'ft', '2026-02-10 17:34:22', '2026-02-10 17:34:22'),
(2060, 501, 28, NULL, 1, 25.00, 0.00, 0.00, 8.00, 200.00, 2.0000, 'ft', 4.0000, 'ft', '2026-02-10 17:34:23', '2026-02-10 17:34:23'),
(2062, 496, 28, NULL, 1, 22.00, 0.00, 0.00, 4.00, 88.00, 1.0000, 'ft', 4.0000, 'ft', '2026-02-10 18:38:23', '2026-02-10 18:38:23'),
(2063, 496, 28, NULL, 2, 22.00, 0.00, 0.00, 24.00, 528.00, 2.0000, 'ft', 6.0000, 'ft', '2026-02-10 18:38:23', '2026-02-10 18:38:23'),
(2064, 496, 28, NULL, 1, 22.00, 0.00, 0.00, 20.00, 440.00, 2.0000, 'ft', 10.0000, 'ft', '2026-02-10 18:38:23', '2026-02-10 18:38:23'),
(2065, 496, 28, NULL, 1, 22.00, 0.00, 0.00, 22.00, 484.00, 2.7500, 'ft', 8.0000, 'ft', '2026-02-10 18:38:23', '2026-02-10 18:38:23'),
(2066, 496, 28, NULL, 1, 22.00, 0.00, 0.00, 27.50, 605.00, 2.7500, 'ft', 10.0000, 'ft', '2026-02-10 18:38:23', '2026-02-10 18:38:23'),
(2067, 496, 28, NULL, 1, 22.00, 0.00, 0.00, 200.00, 4400.00, 20.0000, 'ft', 10.0000, 'ft', '2026-02-10 18:38:23', '2026-02-10 18:38:23'),
(2068, 496, 28, NULL, 2, 22.00, 0.00, 0.00, 60.00, 1320.00, 3.0000, 'ft', 10.0000, 'ft', '2026-02-10 18:38:23', '2026-02-10 18:38:23'),
(2069, 496, 28, NULL, 1, 22.00, 0.00, 0.00, 30.00, 660.00, 3.0000, 'ft', 10.0000, 'ft', '2026-02-10 18:38:23', '2026-02-10 18:38:23'),
(2070, 496, 28, NULL, 10, 22.00, 0.00, 0.00, 30.00, 660.00, 2.0000, 'ft', 1.5000, 'ft', '2026-02-10 18:38:23', '2026-02-10 18:38:23'),
(2071, 496, 28, NULL, 1, 22.00, 0.00, 0.00, 12.00, 264.00, 4.0000, 'ft', 3.0000, 'ft', '2026-02-10 18:38:23', '2026-02-10 18:38:23'),
(2072, 496, 28, NULL, 1, 22.00, 0.00, 0.00, 5.00, 110.00, 1.0000, 'ft', 5.0000, 'ft', '2026-02-10 18:38:23', '2026-02-10 18:38:23'),
(2073, 502, 28, NULL, 10, 25.00, 0.00, 0.00, 30.00, 750.00, 2.0000, 'ft', 1.5000, 'ft', '2026-02-10 18:39:51', '2026-02-10 18:39:51'),
(2074, 502, 28, NULL, 10, 22.00, 0.00, 0.00, 30.00, 660.00, 2.0000, 'ft', 1.5000, 'ft', '2026-02-10 18:39:51', '2026-02-10 18:39:51'),
(2075, 502, NULL, 'Bill Book 10', 1, 4500.00, 0.00, 0.00, 0.00, 4500.00, NULL, NULL, NULL, NULL, '2026-02-10 18:39:51', '2026-02-10 18:39:51'),
(2076, 502, NULL, 'Visiting Card', 1, 4200.00, 0.00, 0.00, 0.00, 4200.00, NULL, NULL, NULL, NULL, '2026-02-10 18:39:51', '2026-02-10 18:39:51'),
(2077, 503, 32, NULL, 2, 70.00, 0.00, 0.00, 72.00, 5040.00, 8.0000, 'ft', 4.5000, 'ft', '2026-02-10 18:57:11', '2026-02-10 18:57:11'),
(2078, 504, 28, NULL, 2, 31.80, 0.00, 0.00, 6.00, 190.80, 1.5000, 'ft', 2.0000, 'ft', '2026-02-10 19:02:26', '2026-02-10 19:02:26'),
(2079, 504, 28, NULL, 1, 31.80, 0.00, 0.00, 10.00, 318.00, 2.0000, 'ft', 5.0000, 'ft', '2026-02-10 19:02:26', '2026-02-10 19:02:26'),
(2080, 504, 28, NULL, 1, 31.80, 0.00, 0.00, 100.00, 3180.00, 5.0000, 'ft', 20.0000, 'ft', '2026-02-10 19:02:26', '2026-02-10 19:02:26'),
(2081, 504, 28, NULL, 2, 31.80, 0.00, 0.00, 56.00, 1780.80, 4.0000, 'ft', 7.0000, 'ft', '2026-02-10 19:02:26', '2026-02-10 19:02:26'),
(2082, 504, 28, NULL, 2, 31.80, 0.00, 0.00, 64.00, 2035.20, 4.0000, 'ft', 8.0000, 'ft', '2026-02-10 19:02:26', '2026-02-10 19:02:26'),
(2083, 504, 28, NULL, 1, 31.80, 0.00, 0.00, 2.00, 63.60, 1.0000, 'ft', 2.0000, 'ft', '2026-02-10 19:02:26', '2026-02-10 19:02:26'),
(2084, 504, 28, NULL, 1, 31.80, 0.00, 0.00, 64.00, 2035.20, 8.0000, 'ft', 8.0000, 'ft', '2026-02-10 19:02:26', '2026-02-10 19:02:26'),
(2088, 506, 28, NULL, 3, 25.00, 0.00, 0.00, 72.00, 1800.00, 3.0000, 'ft', 8.0000, 'ft', '2026-02-11 12:46:45', '2026-02-11 12:46:45'),
(2089, 506, 28, NULL, 3, 25.00, 0.00, 0.00, 36.00, 900.00, 4.0000, 'ft', 3.0000, 'ft', '2026-02-11 12:46:45', '2026-02-11 12:46:45'),
(2090, 506, 28, NULL, 1, 25.00, 0.00, 0.00, 150.00, 3750.00, 10.0000, 'ft', 15.0000, 'ft', '2026-02-11 12:46:45', '2026-02-11 12:46:45'),
(2091, 507, 28, NULL, 1, 27.34, 0.00, 0.00, 80.00, 2187.44, 4.0000, 'ft', 20.0000, 'ft', '2026-02-11 12:48:38', '2026-02-11 12:48:38'),
(2092, 507, 28, NULL, 8, 27.34, 0.00, 0.00, 48.00, 1312.46, 3.0000, 'ft', 2.0000, 'ft', '2026-02-11 12:48:38', '2026-02-11 12:48:38'),
(2093, 505, 28, NULL, 1, 35.00, 0.00, 0.00, 27.00, 945.00, 3.0000, 'ft', 9.0000, 'ft', '2026-02-11 14:37:17', '2026-02-11 14:37:17'),
(2094, 505, 28, NULL, 1, 35.00, 0.00, 0.00, 18.00, 630.00, 3.0000, 'ft', 6.0000, 'ft', '2026-02-11 14:37:17', '2026-02-11 14:37:17'),
(2095, 505, NULL, 'Ring|Ring', 1, 100.00, 0.00, 0.00, 0.00, 100.00, NULL, NULL, NULL, NULL, '2026-02-11 14:37:17', '2026-02-11 14:37:17'),
(2096, 322, 28, NULL, 1, 31.80, 0.00, 0.00, 26.40, 839.52, 6.6000, 'ft', 4.0000, 'ft', '2026-02-11 15:55:44', '2026-02-11 15:55:44'),
(2097, 322, 28, NULL, 1, 31.80, 0.00, 0.00, 200.00, 6360.00, 20.0000, 'ft', 10.0000, 'ft', '2026-02-11 15:55:44', '2026-02-11 15:55:44'),
(2098, 322, 34, NULL, 20, 170.00, 0.00, 0.00, 135.00, 22950.00, 1.5000, 'ft', 4.5000, 'ft', '2026-02-11 15:55:44', '2026-02-11 15:55:44'),
(2099, 322, 34, NULL, 1, 170.00, 0.00, 0.00, 90.00, 15300.00, 4.5000, 'ft', 20.0000, 'ft', '2026-02-11 15:55:44', '2026-02-11 15:55:44'),
(2100, 322, 34, NULL, 1, 170.00, 0.00, 0.00, 4.50, 765.00, 1.0000, 'ft', 4.5000, 'ft', '2026-02-11 15:55:44', '2026-02-11 15:55:44'),
(2101, 323, 28, NULL, 20, 31.80, 0.00, 0.00, 60.00, 1908.00, 1.0000, 'ft', 3.0000, 'ft', '2026-02-11 15:56:19', '2026-02-11 15:56:19'),
(2102, 323, 28, NULL, 1, 31.80, 0.00, 0.00, 10.00, 318.00, 5.0000, 'ft', 2.0000, 'ft', '2026-02-11 15:56:19', '2026-02-11 15:56:19'),
(2103, 323, 28, NULL, 1, 31.80, 0.00, 0.00, 28.00, 890.40, 7.0000, 'ft', 4.0000, 'ft', '2026-02-11 15:56:19', '2026-02-11 15:56:19'),
(2104, 323, 28, NULL, 1, 31.80, 0.00, 0.00, 64.00, 2035.20, 8.0000, 'ft', 8.0000, 'ft', '2026-02-11 15:56:19', '2026-02-11 15:56:19'),
(2105, 323, 28, NULL, 1, 31.80, 0.00, 0.00, 70.00, 2226.00, 7.0000, 'ft', 10.0000, 'ft', '2026-02-11 15:56:19', '2026-02-11 15:56:19'),
(2106, 323, 28, NULL, 1, 31.80, 0.00, 0.00, 62.50, 1987.50, 5.0000, 'ft', 12.5000, 'ft', '2026-02-11 15:56:19', '2026-02-11 15:56:19'),
(2107, 323, 28, NULL, 1, 31.80, 0.00, 0.00, 200.00, 6360.00, 10.0000, 'ft', 20.0000, 'ft', '2026-02-11 15:56:19', '2026-02-11 15:56:19'),
(2108, 355, 28, NULL, 19, 31.80, 0.00, 0.00, 57.00, 1812.60, 1.0000, 'ft', 3.0000, 'ft', '2026-02-11 15:56:40', '2026-02-11 15:56:40'),
(2109, 355, 28, NULL, 1, 31.80, 0.00, 0.00, 20.00, 636.00, 1.0000, 'ft', 20.0000, 'ft', '2026-02-11 15:56:40', '2026-02-11 15:56:40'),
(2110, 508, 28, NULL, 1, 42.11, 0.00, 0.00, 6.00, 252.63, 1.5000, 'ft', 4.0000, 'ft', '2026-02-11 16:57:47', '2026-02-11 16:57:47'),
(2111, 508, 28, NULL, 1, 42.11, 0.00, 0.00, 3.50, 147.37, 2.0000, 'ft', 1.7500, 'ft', '2026-02-11 16:57:47', '2026-02-11 16:57:47'),
(2112, 509, 28, NULL, 1, 23.00, 0.00, 0.00, 28.00, 644.00, 4.0000, 'ft', 7.0000, 'ft', '2026-02-11 17:52:55', '2026-02-11 17:52:55'),
(2113, 509, 28, NULL, 1, 23.00, 0.00, 0.00, 32.00, 736.00, 4.0000, 'ft', 8.0000, 'ft', '2026-02-11 17:52:55', '2026-02-11 17:52:55'),
(2114, 509, 28, NULL, 2, 23.00, 0.00, 0.00, 20.00, 460.00, 4.0000, 'ft', 2.5000, 'ft', '2026-02-11 17:52:55', '2026-02-11 17:52:55'),
(2120, 511, 28, NULL, 1, 22.00, 0.00, 0.00, 30.00, 660.00, 3.0000, 'ft', 10.0000, 'ft', '2026-02-11 17:56:39', '2026-02-11 17:56:39'),
(2121, 511, 28, NULL, 1, 22.00, 0.00, 0.00, 40.00, 880.00, 4.0000, 'ft', 10.0000, 'ft', '2026-02-11 17:56:39', '2026-02-11 17:56:39'),
(2122, 511, 28, NULL, 1, 22.00, 0.00, 0.00, 33.00, 726.00, 3.0000, 'ft', 11.0000, 'ft', '2026-02-11 17:56:39', '2026-02-11 17:56:39'),
(2123, 512, 28, NULL, 1, 23.00, 0.00, 0.00, 4.00, 92.00, 2.0000, 'ft', 2.0000, 'ft', '2026-02-11 17:57:19', '2026-02-11 17:57:19'),
(2124, 512, 28, NULL, 16, 23.00, 0.00, 0.00, 96.00, 2208.00, 3.0000, 'ft', 2.0000, 'ft', '2026-02-11 17:57:19', '2026-02-11 17:57:19'),
(2125, 512, 28, NULL, 1, 23.00, 0.00, 0.00, 32.00, 736.00, 4.0000, 'ft', 8.0000, 'ft', '2026-02-11 17:57:19', '2026-02-11 17:57:19'),
(2126, 513, 28, NULL, 1, 22.00, 0.00, 0.00, 60.00, 1320.00, 6.0000, 'ft', 10.0000, 'ft', '2026-02-11 17:58:31', '2026-02-11 17:58:31'),
(2127, 513, 28, NULL, 2, 22.00, 0.00, 0.00, 16.00, 352.00, 2.0000, 'ft', 4.0000, 'ft', '2026-02-11 17:58:31', '2026-02-11 17:58:31'),
(2128, 513, 28, NULL, 1, 22.00, 0.00, 0.00, 13.50, 297.00, 5.0000, 'ft', 2.7000, 'ft', '2026-02-11 17:58:31', '2026-02-11 17:58:31'),
(2129, 513, 28, NULL, 1, 22.00, 0.00, 0.00, 8.00, 176.00, 1.0000, 'ft', 8.0000, 'ft', '2026-02-11 17:58:31', '2026-02-11 17:58:31'),
(2130, 514, 28, NULL, 2, 22.00, 0.00, 0.00, 12.00, 264.00, 3.0000, 'ft', 2.0000, 'ft', '2026-02-11 18:00:37', '2026-02-11 18:00:37'),
(2131, 514, 28, NULL, 2, 22.00, 0.00, 0.00, 15.00, 330.00, 2.5000, 'ft', 3.0000, 'ft', '2026-02-11 18:00:37', '2026-02-11 18:00:37'),
(2132, 514, 28, NULL, 2, 22.00, 0.00, 0.00, 28.00, 616.00, 2.0000, 'ft', 7.0000, 'ft', '2026-02-11 18:00:37', '2026-02-11 18:00:37'),
(2133, 514, 28, NULL, 1, 22.00, 0.00, 0.00, 13.50, 297.00, 9.0000, 'ft', 1.5000, 'ft', '2026-02-11 18:00:37', '2026-02-11 18:00:37'),
(2134, 514, 28, NULL, 1, 22.00, 0.00, 0.00, 17.00, 374.00, 8.5000, 'ft', 2.0000, 'ft', '2026-02-11 18:00:37', '2026-02-11 18:00:37'),
(2135, 514, 28, NULL, 2, 22.00, 0.00, 0.00, 24.00, 528.00, 4.0000, 'ft', 3.0000, 'ft', '2026-02-11 18:00:37', '2026-02-11 18:00:37'),
(2136, 514, 28, NULL, 1, 22.00, 0.00, 0.00, 8.00, 176.00, 1.0000, 'ft', 8.0000, 'ft', '2026-02-11 18:00:37', '2026-02-11 18:00:37'),
(2137, 514, 28, NULL, 1, 22.00, 0.00, 0.00, 37.50, 825.00, 3.0000, 'ft', 12.5000, 'ft', '2026-02-11 18:00:37', '2026-02-11 18:00:37'),
(2138, 514, 28, NULL, 1, 22.00, 0.00, 0.00, 15.00, 330.00, 3.0000, 'ft', 5.0000, 'ft', '2026-02-11 18:00:37', '2026-02-11 18:00:37'),
(2139, 514, 28, NULL, 1, 22.00, 0.00, 0.00, 19.50, 429.00, 3.0000, 'ft', 6.5000, 'ft', '2026-02-11 18:00:37', '2026-02-11 18:00:37'),
(2140, 514, 28, NULL, 1, 22.00, 0.00, 0.00, 40.00, 880.00, 4.0000, 'ft', 10.0000, 'ft', '2026-02-11 18:00:37', '2026-02-11 18:00:37'),
(2141, 515, 28, NULL, 1, 23.00, 0.00, 0.00, 15.90, 365.70, 5.3000, 'ft', 3.0000, 'ft', '2026-02-11 18:02:02', '2026-02-11 18:02:02'),
(2142, 515, 28, NULL, 1, 23.00, 0.00, 0.00, 28.00, 644.00, 4.0000, 'ft', 7.0000, 'ft', '2026-02-11 18:02:02', '2026-02-11 18:02:02'),
(2143, 515, 28, NULL, 2, 23.00, 0.00, 0.00, 20.00, 460.00, 5.0000, 'ft', 2.0000, 'ft', '2026-02-11 18:02:02', '2026-02-11 18:02:02'),
(2144, 515, 28, NULL, 1, 23.00, 0.00, 0.00, 6.00, 138.00, 3.0000, 'ft', 2.0000, 'ft', '2026-02-11 18:02:02', '2026-02-11 18:02:02'),
(2145, 515, 28, NULL, 2, 23.00, 0.00, 0.00, 20.00, 460.00, 4.0000, 'ft', 2.5000, 'ft', '2026-02-11 18:02:02', '2026-02-11 18:02:02'),
(2146, 515, 28, NULL, 1, 23.00, 0.00, 0.00, 31.50, 724.50, 2.5000, 'ft', 12.6000, 'ft', '2026-02-11 18:02:02', '2026-02-11 18:02:02'),
(2147, 516, 28, NULL, 9, 22.00, 0.00, 0.00, 216.00, 4752.00, 6.0000, 'ft', 4.0000, 'ft', '2026-02-11 18:06:17', '2026-02-11 18:06:17'),
(2148, 516, 28, NULL, 6, 22.00, 0.00, 0.00, 288.00, 6336.00, 4.0000, 'ft', 12.0000, 'ft', '2026-02-11 18:06:17', '2026-02-11 18:06:17'),
(2149, 516, 28, NULL, 2, 22.00, 0.00, 0.00, 20.00, 440.00, 5.0000, 'ft', 2.0000, 'ft', '2026-02-11 18:06:17', '2026-02-11 18:06:17'),
(2150, 516, 28, NULL, 1, 22.00, 0.00, 0.00, 96.00, 2112.00, 8.0000, 'ft', 12.0000, 'ft', '2026-02-11 18:06:17', '2026-02-11 18:06:17'),
(2151, 516, 28, NULL, 1, 22.00, 0.00, 0.00, 160.00, 3520.00, 8.0000, 'ft', 20.0000, 'ft', '2026-02-11 18:06:17', '2026-02-11 18:06:17'),
(2152, 516, 28, NULL, 2, 22.00, 0.00, 0.00, 256.00, 5632.00, 16.0000, 'ft', 8.0000, 'ft', '2026-02-11 18:06:17', '2026-02-11 18:06:17'),
(2153, 516, 28, NULL, 3, 22.00, 0.00, 0.00, 127.20, 2798.40, 4.0000, 'ft', 10.6000, 'ft', '2026-02-11 18:06:17', '2026-02-11 18:06:17'),
(2154, 516, 28, NULL, 1, 22.00, 0.00, 0.00, 44.00, 968.00, 4.0000, 'ft', 11.0000, 'ft', '2026-02-11 18:06:17', '2026-02-11 18:06:17'),
(2155, 516, 28, NULL, 1, 22.00, 0.00, 0.00, 162.00, 3564.00, 9.0000, 'ft', 18.0000, 'ft', '2026-02-11 18:06:17', '2026-02-11 18:06:17'),
(2156, 516, 28, NULL, 1, 22.00, 0.00, 0.00, 90.00, 1980.00, 3.0000, 'ft', 30.0000, 'ft', '2026-02-11 18:06:17', '2026-02-11 18:06:17'),
(2157, 516, 32, NULL, 3, 75.00, 0.00, 0.00, 29.70, 2227.50, 2.2000, 'ft', 4.5000, 'ft', '2026-02-11 18:06:17', '2026-02-11 18:06:17'),
(2158, 516, 32, NULL, 1, 75.00, 0.00, 0.00, 10.35, 776.25, 2.3000, 'ft', 4.5000, 'ft', '2026-02-11 18:06:17', '2026-02-11 18:06:17'),
(2159, 516, 32, NULL, 2, 75.00, 0.00, 0.00, 63.00, 4725.00, 7.0000, 'ft', 4.5000, 'ft', '2026-02-11 18:06:17', '2026-02-11 18:06:17'),
(2160, 516, 32, NULL, 1, 75.00, 0.00, 0.00, 42.75, 3206.25, 9.5000, 'ft', 4.5000, 'ft', '2026-02-11 18:06:17', '2026-02-11 18:06:17'),
(2161, 516, 32, NULL, 2, 75.00, 0.00, 0.00, 43.20, 3240.00, 4.8000, 'ft', 4.5000, 'ft', '2026-02-11 18:06:17', '2026-02-11 18:06:17'),
(2165, 519, 28, NULL, 1, 22.00, 0.00, 0.00, 15.00, 330.00, 3.0000, 'ft', 5.0000, 'ft', '2026-02-11 18:12:40', '2026-02-11 18:12:40'),
(2166, 519, 28, NULL, 1, 22.00, 0.00, 0.00, 7.50, 165.00, 1.5000, 'ft', 5.0000, 'ft', '2026-02-11 18:12:40', '2026-02-11 18:12:40'),
(2167, 519, 28, NULL, 1, 22.00, 0.00, 0.00, 14.00, 308.00, 2.0000, 'ft', 7.0000, 'ft', '2026-02-11 18:12:40', '2026-02-11 18:12:40'),
(2181, 521, 28, NULL, 12, 26.00, 0.00, 0.00, 541.20, 14071.20, 4.1000, 'ft', 11.0000, 'ft', '2026-02-11 18:16:37', '2026-02-11 18:16:37'),
(2182, 521, 28, NULL, 12, 26.00, 0.00, 0.00, 432.00, 11232.00, 3.0000, 'ft', 12.0000, 'ft', '2026-02-11 18:16:37', '2026-02-11 18:16:37'),
(2183, 521, 28, NULL, 2, 26.00, 0.00, 0.00, 73.80, 1918.80, 4.1000, 'ft', 9.0000, 'ft', '2026-02-11 18:16:37', '2026-02-11 18:16:37'),
(2184, 520, 28, NULL, 1, 22.00, 0.00, 0.00, 60.00, 1320.00, 6.0000, 'ft', 10.0000, 'ft', '2026-02-11 19:10:46', '2026-02-11 19:10:46'),
(2185, 520, 28, NULL, 5, 22.00, 0.00, 0.00, 120.00, 2640.00, 3.0000, 'ft', 8.0000, 'ft', '2026-02-11 19:10:46', '2026-02-11 19:10:46'),
(2186, 520, 28, NULL, 13, 22.00, 0.00, 0.00, 39.00, 858.00, 1.5000, 'ft', 2.0000, 'ft', '2026-02-11 19:10:46', '2026-02-11 19:10:46'),
(2187, 520, 28, NULL, 1, 22.00, 0.00, 0.00, 6.00, 132.00, 3.0000, 'ft', 2.0000, 'ft', '2026-02-11 19:10:46', '2026-02-11 19:10:46'),
(2188, 520, 28, NULL, 1, 22.00, 0.00, 0.00, 12.00, 264.00, 6.0000, 'ft', 2.0000, 'ft', '2026-02-11 19:10:46', '2026-02-11 19:10:46'),
(2189, 520, 28, NULL, 1, 22.00, 0.00, 0.00, 19.60, 431.20, 2.8000, 'ft', 7.0000, 'ft', '2026-02-11 19:10:46', '2026-02-11 19:10:46'),
(2190, 520, 28, NULL, 1, 22.00, 0.00, 0.00, 20.30, 446.60, 2.9000, 'ft', 7.0000, 'ft', '2026-02-11 19:10:46', '2026-02-11 19:10:46'),
(2191, 520, 28, NULL, 1, 22.00, 0.00, 0.00, 16.00, 352.00, 2.0000, 'ft', 8.0000, 'ft', '2026-02-11 19:10:46', '2026-02-11 19:10:46'),
(2192, 520, 28, NULL, 2, 22.00, 0.00, 0.00, 18.00, 396.00, 1.0000, 'ft', 9.0000, 'ft', '2026-02-11 19:10:46', '2026-02-11 19:10:46'),
(2193, 520, 28, NULL, 1, 22.00, 0.00, 0.00, 33.75, 742.50, 3.7500, 'ft', 9.0000, 'ft', '2026-02-11 19:10:46', '2026-02-11 19:10:46'),
(2194, 520, 28, NULL, 1, 22.00, 0.00, 0.00, 4.00, 88.00, 1.0000, 'ft', 4.0000, 'ft', '2026-02-11 19:10:46', '2026-02-11 19:10:46'),
(2195, 520, 28, NULL, 2, 22.00, 0.00, 0.00, 14.00, 308.00, 1.0000, 'ft', 7.0000, 'ft', '2026-02-11 19:10:46', '2026-02-11 19:10:46'),
(2196, 520, 28, NULL, 1, 22.00, 0.00, 0.00, 8.80, 193.60, 2.0000, 'ft', 4.4000, 'ft', '2026-02-11 19:10:46', '2026-02-11 19:10:46'),
(2197, 520, NULL, 'Bus Karaya', 1, 100.00, 0.00, 0.00, 0.00, 100.00, NULL, NULL, NULL, NULL, '2026-02-11 19:10:46', '2026-02-11 19:10:46'),
(2198, 517, 28, NULL, 1, 23.00, 0.00, 0.00, 4.50, 103.50, 3.0000, 'ft', 1.5000, 'ft', '2026-02-11 19:14:03', '2026-02-11 19:14:03'),
(2199, 517, 28, NULL, 1, 23.00, 0.00, 0.00, 12.00, 276.00, 3.0000, 'ft', 4.0000, 'ft', '2026-02-11 19:14:03', '2026-02-11 19:14:03'),
(2200, 517, NULL, '2 x-stand', 2, 500.00, 0.00, 0.00, 0.00, 1000.00, NULL, NULL, NULL, NULL, '2026-02-11 19:14:03', '2026-02-11 19:14:03'),
(2201, 510, 28, NULL, 3, 23.00, 0.00, 0.00, 18.00, 414.00, 2.0000, 'ft', 3.0000, 'ft', '2026-02-11 19:20:36', '2026-02-11 19:20:36'),
(2202, 510, 28, NULL, 1, 23.00, 0.00, 0.00, 8.00, 184.00, 1.0000, 'ft', 8.0000, 'ft', '2026-02-11 19:20:36', '2026-02-11 19:20:36'),
(2203, 510, 28, NULL, 1, 23.00, 0.00, 0.00, 16.00, 368.00, 2.0000, 'ft', 8.0000, 'ft', '2026-02-11 19:20:36', '2026-02-11 19:20:36'),
(2204, 510, 28, NULL, 1, 23.00, 0.00, 0.00, 14.00, 322.00, 1.0000, 'ft', 14.0000, 'ft', '2026-02-11 19:20:36', '2026-02-11 19:20:36'),
(2205, 510, 28, NULL, 1, 23.00, 0.00, 0.00, 28.00, 644.00, 2.0000, 'ft', 14.0000, 'ft', '2026-02-11 19:20:36', '2026-02-11 19:20:36'),
(2206, 510, 28, '03-02-2025 ko nikli thi bill me nhii add thi', 1, 23.00, 0.00, 0.00, 40.00, 920.00, 4.0000, 'ft', 10.0000, 'ft', '2026-02-11 19:20:36', '2026-02-11 19:20:36'),
(2207, 522, NULL, '5x2 .... star 2 piece', 2, 45.00, 0.00, 0.00, 20.00, 900.00, 5.0000, 'ft', 2.0000, 'ft', '2026-02-11 19:38:00', '2026-02-11 19:38:00'),
(2209, 523, 28, NULL, 1, 33.33, 0.00, 0.00, 15.00, 499.95, 3.0000, 'ft', 5.0000, 'ft', '2026-02-12 11:08:39', '2026-02-12 11:08:39'),
(2210, 518, 28, NULL, 4, 22.00, 0.00, 0.00, 72.00, 1584.00, 3.0000, 'ft', 6.0000, 'ft', '2026-02-12 13:37:58', '2026-02-12 13:37:58'),
(2211, 518, 28, NULL, 1, 22.00, 0.00, 0.00, 10.00, 220.00, 5.0000, 'ft', 2.0000, 'ft', '2026-02-12 13:37:58', '2026-02-12 13:37:58'),
(2212, 524, 28, NULL, 1, 27.78, 0.00, 0.00, 18.00, 500.00, 3.0000, 'ft', 6.0000, 'ft', '2026-02-12 18:00:18', '2026-02-12 18:00:18'),
(2213, 525, 28, NULL, 1, 25.00, 0.00, 0.00, 15.00, 375.00, 3.0000, 'ft', 5.0000, 'ft', '2026-02-12 18:02:54', '2026-02-12 18:02:54'),
(2214, 525, 28, NULL, 2, 25.00, 0.00, 0.00, 18.00, 450.00, 3.0000, 'ft', 3.0000, 'ft', '2026-02-12 18:02:54', '2026-02-12 18:02:54'),
(2215, 525, 28, NULL, 1, 25.00, 0.00, 0.00, 5.00, 125.00, 1.0000, 'ft', 5.0000, 'ft', '2026-02-12 18:02:54', '2026-02-12 18:02:54'),
(2216, 525, 28, NULL, 2, 25.00, 0.00, 0.00, 6.00, 150.00, 1.0000, 'ft', 3.0000, 'ft', '2026-02-12 18:02:54', '2026-02-12 18:02:54'),
(2217, 526, 28, NULL, 2, 27.00, 0.00, 0.00, 240.00, 6480.00, 10.0000, 'ft', 12.0000, 'ft', '2026-02-12 18:04:36', '2026-02-12 18:04:36'),
(2218, 526, 28, NULL, 2, 27.00, 0.00, 0.00, 358.00, 9666.00, 10.0000, 'ft', 17.9000, 'ft', '2026-02-12 18:04:36', '2026-02-12 18:04:36'),
(2219, 527, 28, NULL, 1, 23.00, 0.00, 0.00, 6.00, 138.00, 2.0000, 'ft', 3.0000, 'ft', '2026-02-12 18:05:39', '2026-02-12 18:05:39'),
(2220, 528, 28, NULL, 1, 22.00, 0.00, 0.00, 32.00, 704.00, 4.0000, 'ft', 8.0000, 'ft', '2026-02-12 18:06:31', '2026-02-12 18:06:31'),
(2221, 529, 28, NULL, 2, 22.00, 0.00, 0.00, 12.00, 264.00, 2.0000, 'ft', 3.0000, 'ft', '2026-02-12 18:07:10', '2026-02-12 18:07:10'),
(2222, 529, 28, NULL, 1, 22.00, 0.00, 0.00, 12.00, 264.00, 1.5000, 'ft', 8.0000, 'ft', '2026-02-12 18:07:10', '2026-02-12 18:07:10'),
(2223, 530, 31, NULL, 9, 40.00, 0.00, 0.00, 189.00, 7560.00, 7.0000, 'ft', 3.0000, 'ft', '2026-02-12 18:10:33', '2026-02-12 18:10:33'),
(2224, 531, 28, NULL, 1, 22.00, 0.00, 0.00, 30.00, 660.00, 3.0000, 'ft', 10.0000, 'ft', '2026-02-12 18:12:08', '2026-02-12 18:12:08'),
(2225, 531, 28, NULL, 1, 22.00, 0.00, 0.00, 39.00, 858.00, 3.0000, 'ft', 13.0000, 'ft', '2026-02-12 18:12:08', '2026-02-12 18:12:08'),
(2226, 531, 28, NULL, 1, 22.00, 0.00, 0.00, 91.00, 2002.00, 7.0000, 'ft', 13.0000, 'ft', '2026-02-12 18:12:08', '2026-02-12 18:12:08'),
(2227, 531, 28, NULL, 2, 22.00, 0.00, 0.00, 228.00, 5016.00, 6.0000, 'ft', 19.0000, 'ft', '2026-02-12 18:12:08', '2026-02-12 18:12:08'),
(2228, 531, 28, NULL, 1, 22.00, 0.00, 0.00, 10.00, 220.00, 5.0000, 'ft', 2.0000, 'ft', '2026-02-12 18:12:08', '2026-02-12 18:12:08'),
(2229, 532, 28, NULL, 1, 22.00, 0.00, 0.00, 12.00, 264.00, 1.0000, 'ft', 12.0000, 'ft', '2026-02-12 18:13:03', '2026-02-12 18:13:03'),
(2230, 532, 28, NULL, 1, 22.00, 0.00, 0.00, 8.00, 176.00, 1.0000, 'ft', 8.0000, 'ft', '2026-02-12 18:13:03', '2026-02-12 18:13:03'),
(2231, 532, 28, NULL, 1, 22.00, 0.00, 0.00, 20.00, 440.00, 5.0000, 'ft', 4.0000, 'ft', '2026-02-12 18:13:03', '2026-02-12 18:13:03'),
(2232, 532, 28, NULL, 1, 22.00, 0.00, 0.00, 15.00, 330.00, 7.5000, 'ft', 2.0000, 'ft', '2026-02-12 18:13:03', '2026-02-12 18:13:03'),
(2233, 532, 28, NULL, 2, 22.00, 0.00, 0.00, 144.00, 3168.00, 8.0000, 'ft', 9.0000, 'ft', '2026-02-12 18:13:03', '2026-02-12 18:13:03'),
(2234, 532, 28, NULL, 1, 22.00, 0.00, 0.00, 88.00, 1936.00, 8.0000, 'ft', 11.0000, 'ft', '2026-02-12 18:13:03', '2026-02-12 18:13:03'),
(2235, 533, 31, NULL, 1, 45.00, 0.00, 0.00, 8.00, 360.00, 2.0000, 'ft', 4.0000, 'ft', '2026-02-12 18:14:51', '2026-02-12 18:14:51'),
(2236, 533, 31, NULL, 1, 45.00, 0.00, 0.00, 9.00, 405.00, 2.0000, 'ft', 4.5000, 'ft', '2026-02-12 18:14:51', '2026-02-12 18:14:51'),
(2237, 533, NULL, 'Sabqa Bill', 1, 2560.00, 0.00, 0.00, 0.00, 2560.00, NULL, NULL, NULL, NULL, '2026-02-12 18:14:51', '2026-02-12 18:14:51'),
(2238, 534, 28, NULL, 1, 22.00, 0.00, 0.00, 45.00, 990.00, 3.0000, 'ft', 15.0000, 'ft', '2026-02-12 18:15:20', '2026-02-12 18:15:20'),
(2239, 535, 31, NULL, 1, 50.00, 0.00, 0.00, 6.00, 300.00, 3.0000, 'ft', 2.0000, 'ft', '2026-02-12 18:16:09', '2026-02-12 18:16:09'),
(2240, 535, 28, NULL, 1, 23.00, 0.00, 0.00, 15.00, 345.00, 1.5000, 'ft', 10.0000, 'ft', '2026-02-12 18:16:09', '2026-02-12 18:16:09'),
(2241, 535, 28, NULL, 4, 23.00, 0.00, 0.00, 16.00, 368.00, 2.0000, 'ft', 2.0000, 'ft', '2026-02-12 18:16:09', '2026-02-12 18:16:09'),
(2242, 535, 28, NULL, 1, 23.00, 0.00, 0.00, 72.00, 1656.00, 3.0000, 'ft', 24.0000, 'ft', '2026-02-12 18:16:09', '2026-02-12 18:16:09'),
(2243, 536, 34, NULL, 1, 75.00, 0.00, 0.00, 9.00, 675.00, 2.0000, 'ft', 4.5000, 'ft', '2026-02-12 18:16:45', '2026-02-12 18:16:45'),
(2244, 537, 28, NULL, 1, 23.00, 0.00, 0.00, 6.00, 138.00, 4.0000, 'ft', 1.5000, 'ft', '2026-02-12 18:17:18', '2026-02-12 18:17:18'),
(2245, 537, 28, NULL, 1, 23.00, 0.00, 0.00, 9.00, 207.00, 3.0000, 'ft', 3.0000, 'ft', '2026-02-12 18:17:18', '2026-02-12 18:17:18'),
(2246, 538, 28, NULL, 70, 20.00, 0.00, 0.00, 420.00, 8400.00, 3.0000, 'ft', 2.0000, 'ft', '2026-02-12 18:20:34', '2026-02-12 18:20:34'),
(2247, 538, 28, NULL, 4, 20.00, 0.00, 0.00, 150.00, 3000.00, 5.0000, 'ft', 7.5000, 'ft', '2026-02-12 18:20:34', '2026-02-12 18:20:34'),
(2248, 538, 28, 'RIOS', 2, 20.00, 0.00, 0.00, 400.00, 8000.00, 10.0000, 'ft', 20.0000, 'ft', '2026-02-12 18:20:34', '2026-02-12 18:20:34'),
(2249, 539, 28, NULL, 1, 22.00, 0.00, 0.00, 17.50, 385.00, 10.0000, 'ft', 1.7500, 'ft', '2026-02-12 18:24:18', '2026-02-12 18:24:18'),
(2250, 539, 28, NULL, 1, 22.00, 0.00, 0.00, 20.00, 440.00, 10.0000, 'ft', 2.0000, 'ft', '2026-02-12 18:24:18', '2026-02-12 18:24:18'),
(2251, 539, 28, NULL, 1, 22.00, 0.00, 0.00, 50.00, 1100.00, 10.0000, 'ft', 5.0000, 'ft', '2026-02-12 18:24:18', '2026-02-12 18:24:18'),
(2252, 539, 28, NULL, 3, 22.00, 0.00, 0.00, 27.00, 594.00, 1.0000, 'ft', 9.0000, 'ft', '2026-02-12 18:24:18', '2026-02-12 18:24:18'),
(2253, 539, 28, NULL, 1, 22.00, 0.00, 0.00, 8.00, 176.00, 1.0000, 'ft', 8.0000, 'ft', '2026-02-12 18:24:18', '2026-02-12 18:24:18'),
(2254, 539, 28, NULL, 2, 22.00, 0.00, 0.00, 18.00, 396.00, 1.0000, 'ft', 9.0000, 'ft', '2026-02-12 18:24:18', '2026-02-12 18:24:18'),
(2255, 539, 28, NULL, 1, 22.00, 0.00, 0.00, 17.50, 385.00, 2.5000, 'ft', 7.0000, 'ft', '2026-02-12 18:24:18', '2026-02-12 18:24:18'),
(2256, 539, 28, NULL, 1, 22.00, 0.00, 0.00, 27.50, 605.00, 2.5000, 'ft', 11.0000, 'ft', '2026-02-12 18:24:18', '2026-02-12 18:24:18'),
(2257, 539, 28, NULL, 1, 22.00, 0.00, 0.00, 14.63, 321.86, 2.2500, 'ft', 6.5000, 'ft', '2026-02-12 18:24:18', '2026-02-12 18:24:18'),
(2258, 539, 28, NULL, 1, 22.00, 0.00, 0.00, 13.50, 297.00, 2.2500, 'ft', 6.0000, 'ft', '2026-02-12 18:24:18', '2026-02-12 18:24:18'),
(2259, 539, 28, NULL, 1, 22.00, 0.00, 0.00, 10.00, 220.00, 2.0000, 'ft', 5.0000, 'ft', '2026-02-12 18:24:18', '2026-02-12 18:24:18'),
(2260, 539, 28, NULL, 1, 22.00, 0.00, 0.00, 100.00, 2200.00, 10.0000, 'ft', 10.0000, 'ft', '2026-02-12 18:24:18', '2026-02-12 18:24:18'),
(2261, 539, 28, NULL, 4, 22.00, 0.00, 0.00, 36.00, 792.00, 3.0000, 'ft', 3.0000, 'ft', '2026-02-12 18:24:18', '2026-02-12 18:24:18'),
(2262, 539, 28, NULL, 1, 22.00, 0.00, 0.00, 24.00, 528.00, 4.0000, 'ft', 6.0000, 'ft', '2026-02-12 18:24:18', '2026-02-12 18:24:18'),
(2263, 539, 28, NULL, 1, 22.00, 0.00, 0.00, 84.00, 1848.00, 7.0000, 'ft', 12.0000, 'ft', '2026-02-12 18:24:18', '2026-02-12 18:24:18'),
(2264, 539, NULL, 'standees 10', 10, 400.00, 0.00, 0.00, 0.00, 4000.00, NULL, NULL, NULL, NULL, '2026-02-12 18:24:18', '2026-02-12 18:24:18'),
(2275, 540, 28, NULL, 1, 21.00, 0.00, 0.00, 52.00, 1092.00, 6.5000, 'ft', 8.0000, 'ft', '2026-02-12 18:33:59', '2026-02-12 18:33:59'),
(2276, 540, 28, NULL, 1, 21.00, 0.00, 0.00, 80.00, 1680.00, 4.0000, 'ft', 20.0000, 'ft', '2026-02-12 18:33:59', '2026-02-12 18:33:59'),
(2277, 540, 28, NULL, 2, 21.00, 0.00, 0.00, 60.00, 1260.00, 6.0000, 'ft', 5.0000, 'ft', '2026-02-12 18:33:59', '2026-02-12 18:33:59'),
(2278, 540, 28, NULL, 1, 21.00, 0.00, 0.00, 48.00, 1008.00, 3.0000, 'ft', 16.0000, 'ft', '2026-02-12 18:33:59', '2026-02-12 18:33:59'),
(2279, 540, 28, 'Zahid online center', 2, 21.00, 0.00, 0.00, 220.00, 4620.00, 11.0000, 'ft', 10.0000, 'ft', '2026-02-12 18:33:59', '2026-02-12 18:33:59'),
(2280, 540, 28, 'Naseem and brothers', 1, 21.00, 0.00, 0.00, 45.00, 945.00, 3.0000, 'ft', 15.0000, 'ft', '2026-02-12 18:33:59', '2026-02-12 18:33:59'),
(2281, 540, 28, 'Barkah food', 2, 21.00, 0.00, 0.00, 40.00, 840.00, 4.0000, 'ft', 5.0000, 'ft', '2026-02-12 18:33:59', '2026-02-12 18:33:59'),
(2282, 540, 28, NULL, 4, 21.00, 0.00, 0.00, 160.00, 3360.00, 5.0000, 'ft', 8.0000, 'ft', '2026-02-12 18:33:59', '2026-02-12 18:33:59'),
(2283, 540, 28, 'Sultan pansar store', 1, 21.00, 0.00, 0.00, 66.00, 1386.00, 3.0000, 'ft', 22.0000, 'ft', '2026-02-12 18:33:59', '2026-02-12 18:33:59'),
(2284, 540, 28, 'The educator school', 2, 22.00, 0.00, 0.00, 120.60, 2653.20, 6.7000, 'ft', 9.0000, 'ft', '2026-02-12 18:33:59', '2026-02-12 18:33:59'),
(2297, 542, 28, NULL, 1, 21.00, 0.00, 0.00, 12.75, 267.75, 1.5000, 'ft', 8.5000, 'ft', '2026-02-12 19:06:47', '2026-02-12 19:06:47'),
(2298, 542, 28, NULL, 2, 21.00, 0.00, 0.00, 180.00, 3780.00, 10.0000, 'ft', 9.0000, 'ft', '2026-02-12 19:06:47', '2026-02-12 19:06:47'),
(2299, 542, 28, NULL, 2, 21.00, 0.00, 0.00, 21.25, 446.25, 1.2500, 'ft', 8.5000, 'ft', '2026-02-12 19:06:47', '2026-02-12 19:06:47');

-- --------------------------------------------------------

--
-- Table structure for table `sale_returns`
--

CREATE TABLE `sale_returns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sale_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `return_no` varchar(255) NOT NULL,
  `returned_at` datetime NOT NULL,
  `subtotal` decimal(12,2) NOT NULL DEFAULT 0.00,
  `discount_total` decimal(12,2) NOT NULL DEFAULT 0.00,
  `tax_total` decimal(12,2) NOT NULL DEFAULT 0.00,
  `other_adjustments` decimal(12,2) NOT NULL DEFAULT 0.00,
  `grand_total` decimal(12,2) NOT NULL DEFAULT 0.00,
  `reason` varchar(500) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sale_return_items`
--

CREATE TABLE `sale_return_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sale_return_id` bigint(20) UNSIGNED NOT NULL,
  `sale_item_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `units_sqft` decimal(12,2) NOT NULL DEFAULT 0.00,
  `rate` decimal(12,2) NOT NULL DEFAULT 0.00,
  `line_total` decimal(12,2) NOT NULL DEFAULT 0.00,
  `note` varchar(255) DEFAULT NULL,
  `length_input` decimal(12,4) DEFAULT NULL,
  `length_unit` enum('m','ft') DEFAULT NULL,
  `width_input` decimal(12,4) DEFAULT NULL,
  `width_unit` enum('in','ft') DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stock_adjustments`
--

CREATE TABLE `stock_adjustments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `reason` enum('damage','shrinkage','correction','other') NOT NULL,
  `qty_delta` decimal(12,2) DEFAULT NULL,
  `meters_delta` decimal(12,2) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stock_batches`
--

CREATE TABLE `stock_batches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `batch_no` varchar(255) DEFAULT NULL,
  `purchase_item_id` bigint(20) UNSIGNED DEFAULT NULL,
  `qty_total` int(11) DEFAULT NULL,
  `qty_remaining` int(11) DEFAULT NULL,
  `roll_width_inch` decimal(8,2) DEFAULT NULL,
  `meters_total` decimal(12,2) DEFAULT NULL,
  `meters_remaining` decimal(12,2) DEFAULT NULL,
  `received_at` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stock_batches`
--

INSERT INTO `stock_batches` (`id`, `product_id`, `batch_no`, `purchase_item_id`, `qty_total`, `qty_remaining`, `roll_width_inch`, `meters_total`, `meters_remaining`, `received_at`, `created_at`, `updated_at`) VALUES
(36, 28, 'PFCHI9555-20260112-001', 46, NULL, NULL, 126.00, 199.96, 199.96, '2026-01-12', '2026-01-12 08:40:35', '2026-01-12 08:40:35'),
(45, 28, 'PFCHI9555-20260113-001', 55, NULL, NULL, 126.00, 49.99, 49.99, '2026-01-13', '2026-01-13 12:36:49', '2026-01-13 12:36:49'),
(46, 31, 'PFSTA4388-20260113-001', 56, NULL, NULL, 75.00, 49.99, 49.99, '2026-01-13', '2026-01-13 12:40:16', '2026-01-13 12:40:16'),
(47, 28, 'PFCHI9555-20260115-001', 57, NULL, NULL, 126.00, 49.99, 49.99, '2026-01-15', '2026-01-15 18:44:31', '2026-01-15 18:44:31'),
(48, 28, 'PFCHI9555-20260115-002', 58, NULL, NULL, 126.00, 49.99, 49.99, '2026-01-15', '2026-01-15 18:45:34', '2026-01-15 18:45:34'),
(49, 28, 'PFCHI9555-20260115-003', 59, NULL, NULL, 114.00, 49.99, 49.99, '2026-01-15', '2026-01-15 18:47:26', '2026-01-15 18:47:26'),
(50, 28, 'PFCHI9555-20260117-001', 60, NULL, NULL, 126.00, 49.99, 49.99, '2026-01-17', '2026-01-17 17:27:57', '2026-01-17 17:27:57'),
(51, 28, 'PFCHI9555-20260117-002', 61, NULL, NULL, 126.00, 49.99, 49.99, '2026-01-17', '2026-01-17 17:28:43', '2026-01-17 17:28:43'),
(53, 28, 'PFCHI9555-20260118-001', 63, NULL, NULL, 126.00, 49.99, 49.99, '2026-01-18', '2026-01-18 11:48:32', '2026-01-18 11:48:32'),
(54, 28, 'PFCHI9555-20260119-001', 64, NULL, NULL, 126.00, 139.47, 139.47, '2026-01-19', '2026-01-19 17:33:13', '2026-01-19 17:33:13'),
(55, 28, 'PFCHI9555-20260119-002', 65, NULL, NULL, 114.00, 49.99, 49.99, '2026-01-19', '2026-01-19 20:01:54', '2026-01-19 20:01:54'),
(56, 28, 'PFCHI9555-20260122-001', 66, NULL, NULL, 42.00, 49.99, 49.99, '2026-01-21', '2026-01-22 12:16:58', '2026-01-22 12:16:58'),
(57, 28, 'PFCHI9555-20260122-002', 67, NULL, NULL, 63.00, 49.99, 49.99, '2026-01-22', '2026-01-22 12:18:14', '2026-01-22 12:18:14'),
(58, 28, 'PFCHI9555-20260122-003', 68, NULL, NULL, 27.00, 49.99, 49.99, '2026-01-22', '2026-01-22 12:19:00', '2026-01-22 12:19:00'),
(59, 28, 'PFCHI9555-20260122-004', 69, NULL, NULL, 39.00, 49.99, 49.99, '2026-01-21', '2026-01-22 12:19:48', '2026-01-22 12:19:48'),
(60, 31, 'PFSTA4388-20260124-001', 70, NULL, NULL, 27.00, 49.99, 49.99, '2026-01-24', '2026-01-24 18:16:27', '2026-01-24 18:16:27'),
(61, 35, 'PFREF1951-20260125-001', 71, NULL, NULL, 52.20, 6.10, 6.10, '2026-01-25', '2026-01-25 17:53:22', '2026-01-25 17:53:22'),
(62, 28, 'PFCHI9555-20260127-001', 72, NULL, NULL, 126.00, 249.95, 249.95, '2026-01-27', '2026-01-27 17:16:58', '2026-01-27 17:16:58'),
(63, 28, 'PFCHI9555-20260127-002', 73, NULL, NULL, 114.00, 49.99, 49.99, '2026-01-27', '2026-01-27 17:17:52', '2026-01-27 17:17:52'),
(64, 28, 'PFCHI9555-20260128-001', 74, NULL, NULL, 126.00, 99.98, 99.98, '2026-01-28', '2026-01-28 18:17:40', '2026-01-28 18:17:40'),
(65, 28, 'PFCHI9555-20260129-001', 75, NULL, NULL, 126.00, 49.99, 49.99, '2026-01-29', '2026-01-29 14:10:02', '2026-01-29 14:10:02'),
(66, 28, 'PFCHI9555-20260129-002', 76, NULL, NULL, 87.00, 49.99, 49.99, '2026-01-29', '2026-01-29 14:13:37', '2026-01-29 14:13:37'),
(67, 28, 'PFCHI9555-20260201-001', 77, NULL, NULL, 126.00, 149.97, 149.97, '2026-01-31', '2026-02-01 13:31:44', '2026-02-01 13:31:44'),
(68, 28, 'PFCHI9555-20260201-002', 78, NULL, NULL, 114.00, 49.99, 49.99, '2026-01-31', '2026-02-01 13:33:01', '2026-02-01 13:33:01'),
(69, 28, 'PFCHI9555-20260201-003', 79, NULL, NULL, 99.00, 49.99, 49.99, '2026-02-01', '2026-02-01 16:25:44', '2026-02-01 16:25:44'),
(70, 28, 'PFCHI9555-20260202-001', 80, NULL, NULL, 126.00, 49.99, 49.99, '2026-02-02', '2026-02-02 18:21:38', '2026-02-02 18:21:38'),
(71, 28, 'PFCHI9555-20260202-002', 81, NULL, NULL, 126.00, 49.99, 49.99, '2026-02-02', '2026-02-02 18:35:44', '2026-02-02 18:35:44'),
(72, 36, 'PFBAC6126-20260202-001', 82, NULL, NULL, 12.00, 28.80, 28.80, '2026-02-02', '2026-02-02 19:16:11', '2026-02-02 19:16:11'),
(73, 28, 'PFCHI9555-20260204-001', 83, NULL, NULL, 126.00, 99.98, 99.98, '2026-02-04', '2026-02-04 12:53:05', '2026-02-04 12:53:05'),
(74, 28, 'PFCHI9555-20260205-001', 84, NULL, NULL, 126.00, 49.99, 49.99, '2026-02-05', '2026-02-05 11:48:07', '2026-02-05 11:48:07'),
(75, 28, 'PFCHI9555-20260205-002', 85, NULL, NULL, 126.00, 49.99, 49.99, '2026-02-05', '2026-02-05 11:48:43', '2026-02-05 11:48:43'),
(76, 28, 'PFCHI9555-20260205-003', 86, NULL, NULL, 75.00, 49.99, 49.99, '2026-02-05', '2026-02-05 11:49:06', '2026-02-05 11:49:06'),
(77, 37, 'SPINK9247-20260205-001', 87, 1, 1, NULL, NULL, NULL, '2026-02-01', '2026-02-05 15:22:34', '2026-02-05 15:22:34'),
(78, 34, 'PFVYN9575-20260207-001', 88, NULL, NULL, 54.00, 49.99, 49.99, '2026-02-07', '2026-02-07 14:16:27', '2026-02-07 14:16:27'),
(79, 28, 'PFCHI9555-20260208-001', 89, NULL, NULL, 126.00, 49.99, 49.99, '2026-02-07', '2026-02-08 13:57:20', '2026-02-08 13:57:20'),
(80, 28, 'PFCHI9555-20260208-002', 90, NULL, NULL, 126.00, 49.99, 49.99, '2026-02-07', '2026-02-08 13:57:20', '2026-02-08 13:57:20'),
(81, 28, 'PFCHI9555-20260208-003', 91, NULL, NULL, 99.00, 49.99, 49.99, '2026-02-07', '2026-02-08 13:57:20', '2026-02-08 13:57:20'),
(82, 28, 'PFCHI9555-20260209-001', 92, NULL, NULL, 126.00, 99.98, 99.98, '2026-02-09', '2026-02-09 20:57:38', '2026-02-09 20:57:38'),
(83, 37, 'SPINK9247-20260210-001', 93, 1, 1, NULL, NULL, NULL, '2026-02-09', '2026-02-10 11:10:37', '2026-02-10 11:10:37'),
(84, 28, 'PFCHI9555-20260211-001', 94, NULL, NULL, 126.00, 49.99, 49.99, '2026-02-10', '2026-02-11 18:26:51', '2026-02-11 18:26:51'),
(85, 28, 'PFCHI9555-20260211-002', 95, NULL, NULL, 126.00, 49.99, 49.99, '2026-02-11', '2026-02-11 18:29:14', '2026-02-11 18:29:14'),
(86, 28, 'PFCHI9555-20260211-003', 96, NULL, NULL, 99.00, 49.99, 49.99, '2026-02-11', '2026-02-11 18:29:14', '2026-02-11 18:29:14'),
(87, 28, 'PFCHI9555-20260211-004', 97, NULL, NULL, 87.00, 49.99, 49.99, '2026-02-11', '2026-02-11 18:29:14', '2026-02-11 18:29:14'),
(88, 28, 'PFCHI9555-20260211-005', 98, NULL, NULL, 51.00, 49.99, 49.99, '2026-02-11', '2026-02-11 18:29:14', '2026-02-11 18:29:14'),
(89, 28, 'PFCHI9555-20260211-006', 99, NULL, NULL, 39.00, 49.99, 49.99, '2026-02-11', '2026-02-11 18:29:14', '2026-02-11 18:29:14'),
(90, 28, 'PFCHI9555-20260211-007', 100, NULL, NULL, 126.00, 49.99, 49.99, '2026-02-11', '2026-02-11 18:29:14', '2026-02-11 18:29:14'),
(91, 31, 'PFSTA4388-20260212-001', 101, NULL, NULL, 39.00, 49.98, 49.98, '2026-02-12', '2026-02-12 18:10:09', '2026-02-12 18:10:09');

-- --------------------------------------------------------

--
-- Table structure for table `stock_moves`
--

CREATE TABLE `stock_moves` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `type` enum('purchase','sale','return','adjustment') NOT NULL,
  `ref_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ref_table` varchar(255) DEFAULT NULL,
  `batch_id` bigint(20) UNSIGNED DEFAULT NULL,
  `qty_change` decimal(12,2) DEFAULT NULL,
  `meters_change` decimal(12,2) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stock_moves`
--

INSERT INTO `stock_moves` (`id`, `product_id`, `type`, `ref_id`, `ref_table`, `batch_id`, `qty_change`, `meters_change`, `user_id`, `note`, `created_at`, `updated_at`) VALUES
(27, 28, 'purchase', 38, 'purchases', 36, NULL, 199.96, 2, 'Purchase received - 4 rolls', '2026-01-12 08:40:35', '2026-01-12 08:40:35'),
(30, 28, 'purchase', 49, 'purchase_items', NULL, NULL, 154969.00, 2, 'Received purchase item - Batch: 2', '2026-01-12 12:30:47', '2026-01-12 12:30:47'),
(36, 28, 'purchase', 47, 'purchases', 45, NULL, 49.99, 2, 'Purchase received - 1.00 rolls', '2026-01-13 12:36:49', '2026-01-13 12:36:49'),
(37, 31, 'purchase', 48, 'purchases', 46, NULL, 49.99, 2, 'Purchase received - 1.00 rolls', '2026-01-13 12:40:16', '2026-01-13 12:40:16'),
(38, 28, 'purchase', 49, 'purchases', 47, NULL, 49.99, 2, 'Purchase received - 1.00 rolls', '2026-01-15 18:44:31', '2026-01-15 18:44:31'),
(39, 28, 'purchase', 50, 'purchases', 48, NULL, 49.99, 2, 'Purchase received - 1.00 rolls', '2026-01-15 18:45:34', '2026-01-15 18:45:34'),
(40, 28, 'purchase', 51, 'purchases', 49, NULL, 49.99, 2, 'Purchase received - 1.00 rolls', '2026-01-15 18:47:26', '2026-01-15 18:47:26'),
(41, 28, 'purchase', 52, 'purchases', 50, NULL, 49.99, 2, 'Purchase received - 1.00 rolls', '2026-01-17 17:27:57', '2026-01-17 17:27:57'),
(42, 28, 'purchase', 53, 'purchases', 51, NULL, 49.99, 2, 'Purchase received - 1.00 rolls', '2026-01-17 17:28:43', '2026-01-17 17:28:43'),
(44, 28, 'purchase', 55, 'purchases', 53, NULL, 49.99, 2, 'Purchase received - 1.00 rolls', '2026-01-18 11:48:32', '2026-01-18 11:48:32'),
(45, 28, 'purchase', 56, 'purchases', 54, NULL, 139.47, 2, 'Purchase received - 2.79 rolls', '2026-01-19 17:33:13', '2026-01-19 17:33:13'),
(46, 28, 'purchase', 57, 'purchases', 55, NULL, 49.99, 2, 'Purchase received - 1.00 rolls', '2026-01-19 20:01:54', '2026-01-19 20:01:54'),
(47, 28, 'purchase', 58, 'purchases', 56, NULL, 49.99, 2, 'Purchase received - 1.00 rolls', '2026-01-22 12:16:58', '2026-01-22 12:16:58'),
(48, 28, 'purchase', 59, 'purchases', 57, NULL, 49.99, 2, 'Purchase received - 1.00 rolls', '2026-01-22 12:18:14', '2026-01-22 12:18:14'),
(49, 28, 'purchase', 60, 'purchases', 58, NULL, 49.99, 2, 'Purchase received - 1.00 rolls', '2026-01-22 12:19:00', '2026-01-22 12:19:00'),
(50, 28, 'purchase', 61, 'purchases', 59, NULL, 49.99, 2, 'Purchase received - 1.00 rolls', '2026-01-22 12:19:48', '2026-01-22 12:19:48'),
(51, 31, 'purchase', 62, 'purchases', 60, NULL, 49.99, 2, 'Purchase received - 1.00 rolls', '2026-01-24 18:16:27', '2026-01-24 18:16:27'),
(52, 35, 'purchase', 63, 'purchases', 61, NULL, 6.10, 2, 'Purchase received - 1.00 rolls', '2026-01-25 17:53:22', '2026-01-25 17:53:22'),
(53, 28, 'purchase', 64, 'purchases', 62, NULL, 249.95, 2, 'Purchase received - 5.00 rolls', '2026-01-27 17:16:58', '2026-01-27 17:16:58'),
(54, 28, 'purchase', 65, 'purchases', 63, NULL, 49.99, 2, 'Purchase received - 1.00 rolls', '2026-01-27 17:17:52', '2026-01-27 17:17:52'),
(55, 28, 'purchase', 66, 'purchases', 64, NULL, 99.98, 2, 'Purchase received - 2.00 rolls', '2026-01-28 18:17:40', '2026-01-28 18:17:40'),
(56, 28, 'purchase', 67, 'purchases', 65, NULL, 49.99, 2, 'Purchase received - 1.00 rolls', '2026-01-29 14:10:02', '2026-01-29 14:10:02'),
(57, 28, 'purchase', 68, 'purchases', 66, NULL, 49.99, 2, 'Purchase received - 1.00 rolls', '2026-01-29 14:13:37', '2026-01-29 14:13:37'),
(58, 28, 'purchase', 69, 'purchases', 67, NULL, 149.97, 2, 'Purchase received - 3.00 rolls', '2026-02-01 13:31:44', '2026-02-01 13:31:44'),
(59, 28, 'purchase', 70, 'purchases', 68, NULL, 49.99, 2, 'Purchase received - 1.00 rolls', '2026-02-01 13:33:01', '2026-02-01 13:33:01'),
(60, 28, 'purchase', 71, 'purchases', 69, NULL, 49.99, 2, 'Purchase received - 1.00 rolls', '2026-02-01 16:25:44', '2026-02-01 16:25:44'),
(61, 28, 'purchase', 72, 'purchases', 70, NULL, 49.99, 2, 'Purchase received - 1.00 rolls', '2026-02-02 18:21:38', '2026-02-02 18:21:38'),
(62, 28, 'purchase', 73, 'purchases', 71, NULL, 49.99, 2, 'Purchase received - 1.00 rolls', '2026-02-02 18:35:44', '2026-02-02 18:35:44'),
(63, 36, 'purchase', 74, 'purchases', 72, NULL, 28.80, 2, 'Purchase received - 1.00 rolls', '2026-02-02 19:16:11', '2026-02-02 19:16:11'),
(64, 28, 'purchase', 75, 'purchases', 73, NULL, 99.98, 2, 'Purchase received - 2.00 rolls', '2026-02-04 12:53:05', '2026-02-04 12:53:05'),
(65, 28, 'purchase', 76, 'purchases', 74, NULL, 49.99, 2, 'Purchase received - 1.00 rolls', '2026-02-05 11:48:07', '2026-02-05 11:48:07'),
(66, 28, 'purchase', 77, 'purchases', 75, NULL, 49.99, 2, 'Purchase received - 1.00 rolls', '2026-02-05 11:48:43', '2026-02-05 11:48:43'),
(67, 28, 'purchase', 78, 'purchases', 76, NULL, 49.99, 2, 'Purchase received - 1.00 rolls', '2026-02-05 11:49:06', '2026-02-05 11:49:06'),
(68, 37, 'purchase', 79, 'purchases', 77, 1.00, NULL, 2, 'Purchase received', '2026-02-05 15:22:34', '2026-02-05 15:22:34'),
(69, 34, 'purchase', 80, 'purchases', 78, NULL, 49.99, 2, 'Purchase received - 1.00 rolls', '2026-02-07 14:16:27', '2026-02-07 14:16:27'),
(70, 28, 'purchase', 81, 'purchases', 79, NULL, 49.99, 2, 'Purchase received - 1.00 rolls', '2026-02-08 13:57:20', '2026-02-08 13:57:20'),
(71, 28, 'purchase', 81, 'purchases', 80, NULL, 49.99, 2, 'Purchase received - 1.00 rolls', '2026-02-08 13:57:20', '2026-02-08 13:57:20'),
(72, 28, 'purchase', 81, 'purchases', 81, NULL, 49.99, 2, 'Purchase received - 1.00 rolls', '2026-02-08 13:57:20', '2026-02-08 13:57:20'),
(73, 28, 'purchase', 82, 'purchases', 82, NULL, 99.98, 2, 'Purchase received - 2.00 rolls', '2026-02-09 20:57:38', '2026-02-09 20:57:38'),
(74, 37, 'purchase', 83, 'purchases', 83, 1.00, NULL, 2, 'Purchase received', '2026-02-10 11:10:37', '2026-02-10 11:10:37'),
(75, 28, 'purchase', 84, 'purchases', 84, NULL, 49.99, 2, 'Purchase received - 1.00 rolls', '2026-02-11 18:26:51', '2026-02-11 18:26:51'),
(76, 28, 'purchase', 85, 'purchases', 85, NULL, 49.99, 2, 'Purchase received - 1.00 rolls', '2026-02-11 18:29:14', '2026-02-11 18:29:14'),
(77, 28, 'purchase', 85, 'purchases', 86, NULL, 49.99, 2, 'Purchase received - 1.00 rolls', '2026-02-11 18:29:14', '2026-02-11 18:29:14'),
(78, 28, 'purchase', 85, 'purchases', 87, NULL, 49.99, 2, 'Purchase received - 1.00 rolls', '2026-02-11 18:29:14', '2026-02-11 18:29:14'),
(79, 28, 'purchase', 85, 'purchases', 88, NULL, 49.99, 2, 'Purchase received - 1.00 rolls', '2026-02-11 18:29:14', '2026-02-11 18:29:14'),
(80, 28, 'purchase', 85, 'purchases', 89, NULL, 49.99, 2, 'Purchase received - 1.00 rolls', '2026-02-11 18:29:14', '2026-02-11 18:29:14'),
(81, 28, 'purchase', 85, 'purchases', 90, NULL, 49.99, 2, 'Purchase received - 1.00 rolls', '2026-02-11 18:29:14', '2026-02-11 18:29:14'),
(82, 31, 'purchase', 86, 'purchases', 91, NULL, 49.98, 2, 'Purchase received - 1.00 rolls', '2026-02-12 18:10:09', '2026-02-12 18:10:09');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `whatsapp` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `opening_balance` decimal(12,2) NOT NULL DEFAULT 0.00,
  `contact_person` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `phone`, `whatsapp`, `email`, `address`, `opening_balance`, `contact_person`, `is_active`, `created_at`, `updated_at`) VALUES
(21, 'Al-Raza Trader', '03067288442', '03067288442', NULL, NULL, 0.00, 'Zohaib Siddiqe', 1, '2026-01-12 08:35:31', '2026-01-12 08:35:31');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `symbol` varchar(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `code`, `name`, `symbol`, `created_at`, `updated_at`) VALUES
(13, '0001', 'Feet', 'ft', '2026-01-12 08:36:45', '2026-01-12 08:36:45'),
(14, '0002', 'Litter', 'Ltr', '2026-01-12 09:03:12', '2026-01-12 09:03:12'),
(15, '0003', 'Pieces', 'Pcs', '2026-01-12 09:42:00', '2026-01-12 09:42:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` enum('admin','sales','accountant') NOT NULL DEFAULT 'sales',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Narmer Solutions', 'narmersolutionsadmin@pos.com', 'admin', '2025-11-08 10:47:32', '$2y$12$svsuYElNQJ6ZngbNlmiOneqnsG7rrq4XHWb/udpDiuV8P5GEZRZn2', 'sf1pscEajcgb5XHkivlspsZyM8HpUEO4bzwohEV4Cak1E9aT7jc5LuWsSO42', '2025-11-08 10:47:32', '2026-01-10 17:19:32'),
(2, 'Zohaib Siddique', 'zohaibsiddiqui@ns.com', 'admin', NULL, '$2y$12$4OhFjWVwFOn1PK9beitMpeVyuAqfpSzTCBPz.zQzgRW4Cil/JrDba', '8Q3NlRh7srOSKfjWPj47u4gfXZYvnaB5jR1OduCnFMZr853agINgLOl1aj9w', '2025-12-16 06:37:45', '2026-01-23 14:20:42'),
(6, 'SHABAZ ALI', 'shabazali@ns.com', 'sales', NULL, '$2y$12$7xlFRWXsWNcMUxisL1i0mu.jB/7Loqy5GCMvNeWTgpCddOCDJUO5i', NULL, '2026-01-15 11:18:59', '2026-01-15 11:18:59');

-- --------------------------------------------------------

--
-- Table structure for table `user_permissions`
--

CREATE TABLE `user_permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

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
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_settings`
--
ALTER TABLE `company_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_advances`
--
ALTER TABLE `customer_advances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_advances_customer_id_foreign` (`customer_id`),
  ADD KEY `customer_advances_user_id_foreign` (`user_id`);

--
-- Indexes for table `customer_credit_payments`
--
ALTER TABLE `customer_credit_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_credit_payments_customer_id_foreign` (`customer_id`),
  ADD KEY `customer_credit_payments_sale_id_foreign` (`sale_id`),
  ADD KEY `customer_credit_payments_user_id_foreign` (`user_id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expenses_expense_category_id_foreign` (`expense_category_id`),
  ADD KEY `expenses_user_id_foreign` (`user_id`),
  ADD KEY `expenses_register_session_id_foreign` (`register_session_id`);

--
-- Indexes for table `expense_categories`
--
ALTER TABLE `expense_categories`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `panaflex_specs`
--
ALTER TABLE `panaflex_specs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `panaflex_specs_product_id_unique` (`product_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_customer_id_foreign` (`customer_id`),
  ADD KEY `payments_supplier_id_foreign` (`supplier_id`),
  ADD KEY `payments_sale_id_foreign` (`sale_id`),
  ADD KEY `payments_purchase_id_foreign` (`purchase_id`),
  ADD KEY `payments_user_id_foreign` (`user_id`);

--
-- Indexes for table `pending_payments`
--
ALTER TABLE `pending_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pending_payments_sale_id_foreign` (`sale_id`),
  ADD KEY `pending_payments_customer_id_foreign` (`customer_id`),
  ADD KEY `pending_payments_supplier_id_foreign` (`supplier_id`),
  ADD KEY `pending_payments_purchase_id_foreign` (`purchase_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_slug_unique` (`slug`),
  ADD KEY `permissions_module_is_active_index` (`module`,`is_active`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_sku_unique` (`sku`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_unit_id_foreign` (`unit_id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `purchases_purchase_no_unique` (`purchase_no`),
  ADD KEY `purchases_supplier_id_foreign` (`supplier_id`),
  ADD KEY `purchases_user_id_foreign` (`user_id`);

--
-- Indexes for table `purchase_items`
--
ALTER TABLE `purchase_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_items_purchase_id_foreign` (`purchase_id`),
  ADD KEY `purchase_items_product_id_foreign` (`product_id`);

--
-- Indexes for table `register_sessions`
--
ALTER TABLE `register_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `register_sessions_user_id_foreign` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`);

--
-- Indexes for table `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `role_permissions_role_id_permission_id_unique` (`role_id`,`permission_id`),
  ADD KEY `role_permissions_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sales_invoice_no_unique` (`invoice_no`),
  ADD KEY `sales_customer_id_foreign` (`customer_id`),
  ADD KEY `sales_user_id_foreign` (`user_id`),
  ADD KEY `sales_register_session_id_foreign` (`register_session_id`);

--
-- Indexes for table `sale_items`
--
ALTER TABLE `sale_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sale_items_sale_id_foreign` (`sale_id`),
  ADD KEY `sale_items_product_id_foreign` (`product_id`);

--
-- Indexes for table `sale_returns`
--
ALTER TABLE `sale_returns`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sale_returns_return_no_unique` (`return_no`),
  ADD KEY `sale_returns_sale_id_foreign` (`sale_id`),
  ADD KEY `sale_returns_user_id_foreign` (`user_id`);

--
-- Indexes for table `sale_return_items`
--
ALTER TABLE `sale_return_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sale_return_items_sale_return_id_foreign` (`sale_return_id`),
  ADD KEY `sale_return_items_sale_item_id_foreign` (`sale_item_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `stock_adjustments`
--
ALTER TABLE `stock_adjustments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stock_adjustments_product_id_foreign` (`product_id`),
  ADD KEY `stock_adjustments_user_id_foreign` (`user_id`);

--
-- Indexes for table `stock_batches`
--
ALTER TABLE `stock_batches`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stock_batches_product_id_foreign` (`product_id`),
  ADD KEY `stock_batches_purchase_item_id_foreign` (`purchase_item_id`);

--
-- Indexes for table `stock_moves`
--
ALTER TABLE `stock_moves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stock_moves_product_id_foreign` (`product_id`),
  ADD KEY `stock_moves_batch_id_foreign` (`batch_id`),
  ADD KEY `stock_moves_user_id_foreign` (`user_id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `suppliers_name_unique` (`name`),
  ADD KEY `suppliers_email_index` (`email`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_permissions`
--
ALTER TABLE `user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_permissions_user_id_permission_id_unique` (`user_id`,`permission_id`),
  ADD KEY `user_permissions_permission_id_foreign` (`permission_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `company_settings`
--
ALTER TABLE `company_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=207;

--
-- AUTO_INCREMENT for table `customer_advances`
--
ALTER TABLE `customer_advances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customer_credit_payments`
--
ALTER TABLE `customer_credit_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `expense_categories`
--
ALTER TABLE `expense_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `panaflex_specs`
--
ALTER TABLE `panaflex_specs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=375;

--
-- AUTO_INCREMENT for table `pending_payments`
--
ALTER TABLE `pending_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=474;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `purchase_items`
--
ALTER TABLE `purchase_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `register_sessions`
--
ALTER TABLE `register_sessions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `role_permissions`
--
ALTER TABLE `role_permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=543;

--
-- AUTO_INCREMENT for table `sale_items`
--
ALTER TABLE `sale_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2300;

--
-- AUTO_INCREMENT for table `sale_returns`
--
ALTER TABLE `sale_returns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sale_return_items`
--
ALTER TABLE `sale_return_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `stock_adjustments`
--
ALTER TABLE `stock_adjustments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stock_batches`
--
ALTER TABLE `stock_batches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `stock_moves`
--
ALTER TABLE `stock_moves`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_permissions`
--
ALTER TABLE `user_permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customer_advances`
--
ALTER TABLE `customer_advances`
  ADD CONSTRAINT `customer_advances_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `customer_advances_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `customer_credit_payments`
--
ALTER TABLE `customer_credit_payments`
  ADD CONSTRAINT `customer_credit_payments_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `customer_credit_payments_sale_id_foreign` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `customer_credit_payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `expenses`
--
ALTER TABLE `expenses`
  ADD CONSTRAINT `expenses_expense_category_id_foreign` FOREIGN KEY (`expense_category_id`) REFERENCES `expense_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `expenses_register_session_id_foreign` FOREIGN KEY (`register_session_id`) REFERENCES `register_sessions` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `expenses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `panaflex_specs`
--
ALTER TABLE `panaflex_specs`
  ADD CONSTRAINT `panaflex_specs_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `payments_purchase_id_foreign` FOREIGN KEY (`purchase_id`) REFERENCES `purchases` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `payments_sale_id_foreign` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `payments_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `pending_payments`
--
ALTER TABLE `pending_payments`
  ADD CONSTRAINT `pending_payments_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pending_payments_purchase_id_foreign` FOREIGN KEY (`purchase_id`) REFERENCES `purchases` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pending_payments_sale_id_foreign` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pending_payments_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `products_unit_id_foreign` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `purchases`
--
ALTER TABLE `purchases`
  ADD CONSTRAINT `purchases_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `purchases_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `purchase_items`
--
ALTER TABLE `purchase_items`
  ADD CONSTRAINT `purchase_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `purchase_items_purchase_id_foreign` FOREIGN KEY (`purchase_id`) REFERENCES `purchases` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `register_sessions`
--
ALTER TABLE `register_sessions`
  ADD CONSTRAINT `register_sessions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD CONSTRAINT `role_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `sales_register_session_id_foreign` FOREIGN KEY (`register_session_id`) REFERENCES `register_sessions` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `sales_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sale_items`
--
ALTER TABLE `sale_items`
  ADD CONSTRAINT `sale_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sale_items_sale_id_foreign` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sale_returns`
--
ALTER TABLE `sale_returns`
  ADD CONSTRAINT `sale_returns_sale_id_foreign` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sale_returns_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sale_return_items`
--
ALTER TABLE `sale_return_items`
  ADD CONSTRAINT `sale_return_items_sale_item_id_foreign` FOREIGN KEY (`sale_item_id`) REFERENCES `sale_items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sale_return_items_sale_return_id_foreign` FOREIGN KEY (`sale_return_id`) REFERENCES `sale_returns` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `stock_adjustments`
--
ALTER TABLE `stock_adjustments`
  ADD CONSTRAINT `stock_adjustments_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `stock_adjustments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `stock_batches`
--
ALTER TABLE `stock_batches`
  ADD CONSTRAINT `stock_batches_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `stock_batches_purchase_item_id_foreign` FOREIGN KEY (`purchase_item_id`) REFERENCES `purchase_items` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `stock_moves`
--
ALTER TABLE `stock_moves`
  ADD CONSTRAINT `stock_moves_batch_id_foreign` FOREIGN KEY (`batch_id`) REFERENCES `stock_batches` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `stock_moves_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `stock_moves_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `user_permissions`
--
ALTER TABLE `user_permissions`
  ADD CONSTRAINT `user_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
