-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 01, 2021 at 11:22 AM
-- Server version: 10.3.30-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `itqplusglobal_fandataxi`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `account_password_resets`
--

CREATE TABLE `account_password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `mobile`, `password`, `picture`, `language`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'demoride', 'admin@demo.com', NULL, '$2y$10$PbZfxFm2imd4ZnWlM0QzbOIVsaxzOHXvtb8euyQusoGr4pItJ4sLu', 'admin/profile/cRipIHCF05lqGseIT0SuHLpRwbTomDf4sgwg7gZm.png', 'en', NULL, '2021-02-22 07:46:27', '2021-06-04 10:39:12'),
(2, 'Demo Dispatcher', 'dispatcher@demo.com', NULL, '$2y$10$XzUhtLx4vEBnLz.Z4Ty8c.cEgaotaQBr63vAO3FssxZlezI44YFX.', NULL, NULL, NULL, '2021-02-22 07:46:27', '2021-02-22 07:46:27'),
(3, 'Demo Account', 'account@demo.com', NULL, '$2y$10$gSQ7CynVyna/MbeBHgIn.OvNSWtkLOALln5ci42Rk4yqPRkhR83Ky', NULL, NULL, NULL, '2021-02-22 07:46:28', '2021-02-22 07:46:28'),
(4, 'Demo Dispute', 'dispute@demo.com', NULL, '$2y$10$54ImxgVI3.pA3w6UceiQ6.4xS1Ya8rcH5zSxMS8jXBy8B4y4Eu2qO', NULL, NULL, NULL, '2021-02-22 07:46:28', '2021-02-22 07:46:28'),
(5, 'dd', 'hh@gmail.com', '123353636', '$2y$10$8Mr4MrxI/ztgN3u0crhBgOqgnoM/4EdPqh4SsJa9dvCvZuaAwJurS', NULL, NULL, NULL, '2021-04-29 08:49:07', '2021-04-29 08:49:07'),
(6, 'nisar', 'nisar@itqplus.com', '921234567890', '$2y$10$tFgjTebfcox9TlBnD53vfudajU9GH4R6.Uxk4L5wgcMm1aVPq/AgW', NULL, NULL, NULL, '2021-06-01 11:33:05', '2021-06-01 11:33:05'),
(7, 'mydispatcher', 'dispatcher1@demo.com', '121454545', '$2y$10$Dbwk0CrOi.GCswtD9dY6HefYcvf0sUrC5ZbcQIuMFNaLP9Od.Pj.e', NULL, NULL, NULL, '2021-06-21 13:17:16', '2021-06-21 13:17:16'),
(8, 'accountssection', 'accounts@demo.com', '45646442513', '$2y$10$WffGhXiX65jKaJwXwSTixuMbQXN0.zqK9HvrpGXs1hDEpvXz8zBmG', NULL, NULL, NULL, '2021-06-21 13:17:48', '2021-06-21 13:17:48'),
(9, 'disputecenter', 'dispute1@demo.com', '125132321231', '$2y$10$SFdObUwe0qVj5GVA64GFu.gKsJULQNyqfTQBXjOAstFBoM16DeCd2', NULL, NULL, NULL, '2021-06-21 13:18:23', '2021-06-21 13:18:23');

-- --------------------------------------------------------

--
-- Table structure for table `admin_wallet`
--

CREATE TABLE `admin_wallet` (
  `id` int(10) UNSIGNED NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `transaction_alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `transaction_desc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `transaction_type` int(11) DEFAULT NULL COMMENT '1-commission,2-userrecharge,3-tripdebit,4-providerrecharge,5-providersettle,6-fleetrecharge,7-fleetcommission,8-fleetsettle,9-taxcredit,10-discountdebit,11-discountrecharge,12-userreferral,13-providerreferral,14-peakcommission,15-waitingcommission,16-userdispute,17-providerdispute',
  `type` enum('C','D') COLLATE utf8_unicode_ci NOT NULL,
  `amount` double(15,8) NOT NULL DEFAULT 0.00000000,
  `open_balance` double(15,8) NOT NULL DEFAULT 0.00000000,
  `close_balance` double(15,8) NOT NULL DEFAULT 0.00000000,
  `payment_mode` enum('BRAINTREE','CARD','PAYPAL','PAYUMONEY','PAYTM') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin_wallet`
--

INSERT INTO `admin_wallet` (`id`, `transaction_id`, `transaction_alias`, `transaction_desc`, `transaction_type`, `type`, `amount`, `open_balance`, `close_balance`, `payment_mode`, `created_at`, `updated_at`) VALUES
(1, 3, 'fandataxi705564', 'admin commission', 1, 'C', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-09 14:15:13', '2021-06-09 14:15:13'),
(2, 3, 'fandataxi705564', 'discount applied', 10, 'D', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-09 14:15:13', '2021-06-09 14:15:13'),
(3, 3, 'fandataxi705564', 'provider discount amount recharge', 11, 'C', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-09 14:15:13', '2021-06-09 14:15:13'),
(4, 3, 'fandataxi705564', 'tax amount credited', 9, 'C', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-09 14:15:13', '2021-06-09 14:15:13'),
(5, 3, 'fandataxi705564', 'Peak hours commission', 14, 'C', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-09 14:15:13', '2021-06-09 14:15:13'),
(6, 3, 'fandataxi705564', 'Waiting charges commission', 15, 'C', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-09 14:15:13', '2021-06-09 14:15:13'),
(7, 4, 'fandataxi202330', 'admin commission', 1, 'C', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-09 15:40:20', '2021-06-09 15:40:20'),
(8, 4, 'fandataxi202330', 'discount applied', 10, 'D', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-09 15:40:20', '2021-06-09 15:40:20'),
(9, 4, 'fandataxi202330', 'provider discount amount recharge', 11, 'C', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-09 15:40:20', '2021-06-09 15:40:20'),
(10, 4, 'fandataxi202330', 'tax amount credited', 9, 'C', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-09 15:40:20', '2021-06-09 15:40:20'),
(11, 4, 'fandataxi202330', 'Peak hours commission', 14, 'C', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-09 15:40:20', '2021-06-09 15:40:20'),
(12, 4, 'fandataxi202330', 'Waiting charges commission', 15, 'C', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-09 15:40:20', '2021-06-09 15:40:20'),
(13, 8, 'fandataxi644265', 'admin commission', 1, 'C', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-10 10:20:40', '2021-06-10 10:20:40'),
(14, 8, 'fandataxi644265', 'discount applied', 10, 'D', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-10 10:20:41', '2021-06-10 10:20:41'),
(15, 8, 'fandataxi644265', 'provider discount amount recharge', 11, 'C', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-10 10:20:41', '2021-06-10 10:20:41'),
(16, 8, 'fandataxi644265', 'tax amount credited', 9, 'C', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-10 10:20:41', '2021-06-10 10:20:41'),
(17, 8, 'fandataxi644265', 'Peak hours commission', 14, 'C', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-10 10:20:41', '2021-06-10 10:20:41'),
(18, 8, 'fandataxi644265', 'Waiting charges commission', 15, 'C', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-10 10:20:41', '2021-06-10 10:20:41'),
(19, 9, 'fandataxi401226', 'admin commission', 1, 'C', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-10 11:25:52', '2021-06-10 11:25:52'),
(20, 9, 'fandataxi401226', 'discount applied', 10, 'D', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-10 11:25:52', '2021-06-10 11:25:52'),
(21, 9, 'fandataxi401226', 'provider discount amount recharge', 11, 'C', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-10 11:25:52', '2021-06-10 11:25:52'),
(22, 9, 'fandataxi401226', 'tax amount credited', 9, 'C', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-10 11:25:52', '2021-06-10 11:25:52'),
(23, 9, 'fandataxi401226', 'Peak hours commission', 14, 'C', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-10 11:25:52', '2021-06-10 11:25:52'),
(24, 9, 'fandataxi401226', 'Waiting charges commission', 15, 'C', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-10 11:25:52', '2021-06-10 11:25:52'),
(25, 10, 'fandataxi593301', 'admin commission', 1, 'C', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-10 12:06:26', '2021-06-10 12:06:26'),
(26, 10, 'fandataxi593301', 'discount applied', 10, 'D', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-10 12:06:26', '2021-06-10 12:06:26'),
(27, 10, 'fandataxi593301', 'provider discount amount recharge', 11, 'C', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-10 12:06:26', '2021-06-10 12:06:26'),
(28, 10, 'fandataxi593301', 'tax amount credited', 9, 'C', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-10 12:06:26', '2021-06-10 12:06:26'),
(29, 10, 'fandataxi593301', 'Peak hours commission', 14, 'C', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-10 12:06:26', '2021-06-10 12:06:26'),
(30, 10, 'fandataxi593301', 'Waiting charges commission', 15, 'C', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-10 12:06:26', '2021-06-10 12:06:26'),
(31, 11, 'fandataxi986269', 'admin commission', 1, 'C', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-10 12:30:21', '2021-06-10 12:30:21'),
(32, 11, 'fandataxi986269', 'discount applied', 10, 'D', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-10 12:30:21', '2021-06-10 12:30:21'),
(33, 11, 'fandataxi986269', 'provider discount amount recharge', 11, 'C', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-10 12:30:21', '2021-06-10 12:30:21'),
(34, 11, 'fandataxi986269', 'tax amount credited', 9, 'C', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-10 12:30:21', '2021-06-10 12:30:21'),
(35, 11, 'fandataxi986269', 'Peak hours commission', 14, 'C', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-10 12:30:21', '2021-06-10 12:30:21'),
(36, 11, 'fandataxi986269', 'Waiting charges commission', 15, 'C', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-10 12:30:21', '2021-06-10 12:30:21'),
(37, 13, 'fandataxi921568', 'admin commission', 1, 'C', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-10 12:41:36', '2021-06-10 12:41:36'),
(38, 13, 'fandataxi921568', 'discount applied', 10, 'D', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-10 12:41:36', '2021-06-10 12:41:36'),
(39, 13, 'fandataxi921568', 'provider discount amount recharge', 11, 'C', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-10 12:41:36', '2021-06-10 12:41:36'),
(40, 13, 'fandataxi921568', 'tax amount credited', 9, 'C', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-10 12:41:36', '2021-06-10 12:41:36'),
(41, 13, 'fandataxi921568', 'Peak hours commission', 14, 'C', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-10 12:41:36', '2021-06-10 12:41:36'),
(42, 13, 'fandataxi921568', 'Waiting charges commission', 15, 'C', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-10 12:41:36', '2021-06-10 12:41:36'),
(43, 14, 'fandataxi787742', 'admin commission', 1, 'C', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-10 12:58:27', '2021-06-10 12:58:27'),
(44, 14, 'fandataxi787742', 'discount applied', 10, 'D', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-10 12:58:27', '2021-06-10 12:58:27'),
(45, 14, 'fandataxi787742', 'provider discount amount recharge', 11, 'C', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-10 12:58:27', '2021-06-10 12:58:27'),
(46, 14, 'fandataxi787742', 'tax amount credited', 9, 'C', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-10 12:58:27', '2021-06-10 12:58:27'),
(47, 14, 'fandataxi787742', 'Peak hours commission', 14, 'C', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-10 12:58:27', '2021-06-10 12:58:27'),
(48, 14, 'fandataxi787742', 'Waiting charges commission', 15, 'C', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-10 12:58:27', '2021-06-10 12:58:27'),
(49, 15, 'fandataxi400392', 'admin commission', 1, 'C', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-10 13:16:17', '2021-06-10 13:16:17'),
(50, 15, 'fandataxi400392', 'discount applied', 10, 'D', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-10 13:16:17', '2021-06-10 13:16:17'),
(51, 15, 'fandataxi400392', 'provider discount amount recharge', 11, 'C', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-10 13:16:17', '2021-06-10 13:16:17'),
(52, 15, 'fandataxi400392', 'tax amount credited', 9, 'C', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-10 13:16:17', '2021-06-10 13:16:17'),
(53, 15, 'fandataxi400392', 'Peak hours commission', 14, 'C', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-10 13:16:17', '2021-06-10 13:16:17'),
(54, 15, 'fandataxi400392', 'Waiting charges commission', 15, 'C', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-10 13:16:17', '2021-06-10 13:16:17'),
(55, 20, 'fandataxi293179', 'admin commission', 1, 'C', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-10 13:37:14', '2021-06-10 13:37:14'),
(56, 20, 'fandataxi293179', 'discount applied', 10, 'D', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-10 13:37:14', '2021-06-10 13:37:14'),
(57, 20, 'fandataxi293179', 'provider discount amount recharge', 11, 'C', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-10 13:37:14', '2021-06-10 13:37:14'),
(58, 20, 'fandataxi293179', 'tax amount credited', 9, 'C', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-10 13:37:14', '2021-06-10 13:37:14'),
(59, 20, 'fandataxi293179', 'Peak hours commission', 14, 'C', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-10 13:37:14', '2021-06-10 13:37:14'),
(60, 20, 'fandataxi293179', 'Waiting charges commission', 15, 'C', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-10 13:37:14', '2021-06-10 13:37:14'),
(61, 2, 'fandataxi169398', 'admin commission', 1, 'C', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-10 14:01:57', '2021-06-10 14:01:57'),
(62, 2, 'fandataxi169398', 'discount applied', 10, 'D', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-10 14:01:58', '2021-06-10 14:01:58'),
(63, 2, 'fandataxi169398', 'provider discount amount recharge', 11, 'C', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-10 14:01:58', '2021-06-10 14:01:58'),
(64, 2, 'fandataxi169398', 'tax amount credited', 9, 'C', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-10 14:01:58', '2021-06-10 14:01:58'),
(65, 2, 'fandataxi169398', 'Peak hours commission', 14, 'C', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-10 14:01:58', '2021-06-10 14:01:58'),
(66, 2, 'fandataxi169398', 'Waiting charges commission', 15, 'C', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-10 14:01:58', '2021-06-10 14:01:58');

-- --------------------------------------------------------

--
-- Table structure for table `advertisements`
--

CREATE TABLE `advertisements` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('active','block') COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cards`
--

CREATE TABLE `cards` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `last_four` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `card_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `brand` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_default` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE `chats` (
  `id` int(10) UNSIGNED NOT NULL,
  `request_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `provider_id` int(11) NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('up','pu') COLLATE utf8_unicode_ci NOT NULL,
  `delivered` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `custom_pushes`
--

CREATE TABLE `custom_pushes` (
  `id` int(10) UNSIGNED NOT NULL,
  `send_to` enum('ALL','USERS','PROVIDERS') COLLATE utf8_unicode_ci NOT NULL,
  `condition` enum('ACTIVE','LOCATION','RIDES','AMOUNT') COLLATE utf8_unicode_ci NOT NULL,
  `condition_data` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sent_to` int(11) NOT NULL DEFAULT 0,
  `schedule_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dispatchers`
--

CREATE TABLE `dispatchers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dispatcher_password_resets`
--

CREATE TABLE `dispatcher_password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `disputes`
--

CREATE TABLE `disputes` (
  `id` int(10) UNSIGNED NOT NULL,
  `dispute_type` enum('user','provider') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'user',
  `dispute_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `disputes`
--

INSERT INTO `disputes` (`id`, `dispute_type`, `dispute_name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'provider', 'User not familiar with route and changed route', 'active', '2021-02-22 07:46:43', '2021-02-22 07:46:43'),
(2, 'provider', 'User arrogant and rude', 'active', '2021-02-22 07:46:43', '2021-02-22 07:46:43'),
(3, 'provider', 'User not paid amount', 'active', '2021-02-22 07:46:43', '2021-02-22 07:46:43'),
(4, 'user', 'I didn\'t feel safe during the ride', 'active', '2021-02-22 07:46:43', '2021-02-22 07:46:43'),
(5, 'user', 'Driver Unprofessional', 'active', '2021-02-22 07:46:43', '2021-02-22 07:46:43'),
(6, 'user', 'Driver took long and incorrect route', 'active', '2021-02-22 07:46:43', '2021-02-22 07:46:43'),
(7, 'user', 'Driver Delayed Pickup', 'active', '2021-02-22 07:46:43', '2021-02-22 07:46:43'),
(8, 'user', 'Driver changed route and charged extra amont', 'active', '2021-02-22 07:46:43', '2021-02-22 07:46:43');

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('DRIVER','VEHICLE') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`id`, `name`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Driving Licence', 'DRIVER', NULL, '2021-05-06 15:49:10'),
(5, 'Vehicle Registration Certificate', 'VEHICLE', NULL, '2021-05-11 14:03:27');

-- --------------------------------------------------------

--
-- Table structure for table `eventcontacts`
--

CREATE TABLE `eventcontacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favourite_locations`
--

CREATE TABLE `favourite_locations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `latitude` double(15,8) DEFAULT NULL,
  `longitude` double(15,8) DEFAULT NULL,
  `type` enum('home','work','recent','others') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'others',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fleets`
--

CREATE TABLE `fleets` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `commission` double(5,2) NOT NULL DEFAULT 0.00,
  `wallet_balance` double(10,2) NOT NULL DEFAULT 0.00,
  `stripe_cust_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `fleets`
--

INSERT INTO `fleets` (`id`, `name`, `email`, `password`, `company`, `mobile`, `logo`, `remember_token`, `commission`, `wallet_balance`, `stripe_cust_id`, `language`, `created_at`, `updated_at`) VALUES
(1, 'Demo', 'fleet@demo.com', '$2y$10$9p9g4z5KlvZvl6tgD8//Wu/IcjO/4Ge5OtQiq4MNtkD6tQ812pWnu', 'Fanda', '03162218244', NULL, NULL, 0.00, 0.00, NULL, NULL, '2021-02-22 07:46:28', '2021-06-04 12:26:12'),
(2, 'my fleet', 'fleet1@demo.com', '$2y$10$cUMqtvIgMzf6hRjquzSDheKS09whxjOLX/UuKh2/UdzDpeTGzNYVq', 'fandataxi', '425454545', NULL, NULL, 0.00, 0.00, NULL, NULL, '2021-06-21 13:16:14', '2021-06-21 13:16:14');

-- --------------------------------------------------------

--
-- Table structure for table `fleet_cards`
--

CREATE TABLE `fleet_cards` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `last_four` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `card_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `brand` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_default` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fleet_password_resets`
--

CREATE TABLE `fleet_password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fleet_wallet`
--

CREATE TABLE `fleet_wallet` (
  `id` int(10) UNSIGNED NOT NULL,
  `fleet_id` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `transaction_alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `transaction_desc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` enum('C','D') COLLATE utf8_unicode_ci NOT NULL,
  `amount` double(15,8) NOT NULL DEFAULT 0.00000000,
  `open_balance` double(15,8) NOT NULL DEFAULT 0.00000000,
  `close_balance` double(15,8) NOT NULL DEFAULT 0.00000000,
  `payment_mode` enum('BRAINTREE','CARD','PAYPAL','PAYUMONEY','PAYTM') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ltm_translations`
--

CREATE TABLE `ltm_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `group` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ltm_translations`
--

INSERT INTO `ltm_translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 1, 'ar', 'admin', 'back', 'الى الخلف', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(2, 1, 'ar', 'admin', 'demomode', '\"تم تعطيل ميزة CRUD \"على لوحة المشرف التوضيحية. سيتم تمكين هذه الميزة على منتجك الذي ستقوم بشرائه ، وفي الوقت نفسه إذا كان لديك أي استفسارات لا تتردد في الاتصال بدعم 24/7 على info@appdupe.com.', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(3, 1, 'ar', 'admin', 'fleet.fleet_owners', 'مالك أسطول', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(4, 1, 'ar', 'admin', 'fleet.add_new_fleet_owner', 'اضف جديد مالك أسطول', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(5, 1, 'ar', 'admin', 'fleet.show_provider', 'إظهار موفر\r\n', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(6, 1, 'ar', 'admin', 'fleet.add_fleet_owner', 'إضافة مالك أسطول', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(7, 1, 'ar', 'admin', 'fleet.company_name', 'اسم الشركة', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(8, 1, 'ar', 'admin', 'fleet.company_logo', 'شعار الشركة', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(9, 1, 'ar', 'admin', 'fleet.fleet_commission', 'عمولة', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(10, 1, 'ar', 'admin', 'fleet.update_fleet_owner', 'تحديث مالك أسطول', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(11, 1, 'ar', 'admin', 'fleet.update_fleet', 'تحديث سريع', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(12, 1, 'ar', 'admin', 'fleet.fleet_name', 'اسم الاسطول', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(13, 1, 'ar', 'admin', 'edit', 'تصحيح', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(14, 1, 'ar', 'admin', 'delete', 'حذف', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(15, 1, 'ar', 'admin', 'something_wrong', 'هناك خطأ ما!', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(16, 1, 'ar', 'admin', 'something_wrong_dashboard', 'شيء ما خاطئ مع لوحة القيادة!', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(17, 1, 'ar', 'admin', 'request_delete', 'طلب المحذوفة', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(18, 1, 'ar', 'admin', 'profile_update', 'تحديث الملف الشخصي', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(19, 1, 'ar', 'admin', 'password_update', 'تم تحديث كلمة السر', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(20, 1, 'ar', 'admin', 'password_not_match', 'كلمة المرور التي تم إدخالها غير متطابقة الصحيحة', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(21, 1, 'ar', 'admin', 'password_error', 'يرجى إدخال كلمة المرور', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(22, 1, 'ar', 'admin', 'location_updated', 'تم تحديث الموقع بنجاح', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(23, 1, 'ar', 'admin', 'service.per_hour', 'في الساعة', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(24, 1, 'ar', 'admin', 'service.total_hour', 'مجموع الساعات', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(25, 1, 'ar', 'admin', 'service.Base_Price', 'السعر الأساسي', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(26, 1, 'ar', 'admin', 'service.Base_Distance', 'المسافة الأساسية', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(27, 1, 'ar', 'admin', 'service.per_minute', 'لكل دقيقة', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(28, 1, 'ar', 'admin', 'service.total_minute', 'مجموع الدقائق', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(29, 1, 'ar', 'admin', 'service.per', 'لكل', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(30, 1, 'ar', 'admin', 'service.total', 'مجموع', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(31, 1, 'ar', 'admin', 'service.Service_Image', 'صورة الخدمة', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(32, 1, 'ar', 'admin', 'service.Add_Service_Type', 'أضف نوع الخدمة', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(33, 1, 'ar', 'admin', 'service.Service_Name', 'اسم الخدمة', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(34, 1, 'ar', 'admin', 'service.Provider_Name', 'اسم المزود', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(35, 1, 'ar', 'admin', 'service.hourly_Price', 'سعر الساعة', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(36, 1, 'ar', 'admin', 'service.unit_time', 'تسعير وحدة الوقت (For Rental amount per hour / 60) ', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(37, 1, 'ar', 'admin', 'service.unit', 'سعر وحدة المسافة', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(38, 1, 'ar', 'admin', 'service.Seat_Capacity', 'سعة المقعد', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(39, 1, 'ar', 'admin', 'service.Pricing_Logic', 'منطق التسعير', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(40, 1, 'ar', 'admin', 'service.Description', 'وصف', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(41, 1, 'ar', 'admin', 'service.Update_User', 'تحديث المستخدم', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(42, 1, 'ar', 'admin', 'service.Update_Service_Type', 'تحديث نوع الخدمة', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(43, 1, 'ar', 'admin', 'service.peak_title', 'Peak Time (Minute Fare)', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(44, 1, 'ar', 'admin', 'service.peak_id', 'ID', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(45, 1, 'ar', 'admin', 'service.peak_time', 'Time', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(46, 1, 'ar', 'admin', 'service.peak_price', 'Peak Price', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(47, 1, 'ar', 'admin', 'service.waiting_title', 'Waiting Charges', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(48, 1, 'ar', 'admin', 'service.waiting_wave', 'Waive off minutes', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(49, 1, 'ar', 'admin', 'service.waiting_charge', 'Per Minute Fare', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(50, 1, 'ar', 'admin', 'setting.map_key', 'فتاح خريطة جوجل', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(51, 1, 'ar', 'admin', 'setting.fb_app_version', 'نسخة التطبيق FB', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(52, 1, 'ar', 'admin', 'setting.fb_app_id', 'معرف التطبيق FB', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(53, 1, 'ar', 'admin', 'setting.fb_app_secret', 'FB التطبيق السري', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(54, 1, 'ar', 'admin', 'setting.Android_user_link', 'رابط المستخدم Playstore', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(55, 1, 'ar', 'admin', 'setting.Android_provider_link', 'رابط مزود Playstore', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(56, 1, 'ar', 'admin', 'setting.Ios_user_Link', 'رابط المستخدم Appstore', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(57, 1, 'ar', 'admin', 'setting.Ios_provider_Link', 'رابط مزود Appstore', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(58, 1, 'ar', 'admin', 'setting.Facebook_Link', 'رابط الفيس بوك', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(59, 1, 'ar', 'admin', 'setting.Twitter_Link', 'رابط تويتر', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(60, 1, 'ar', 'admin', 'setting.Site_Settings', 'إعدادات الموقع', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(61, 1, 'ar', 'admin', 'setting.Site_Name', 'اسم الموقع', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(62, 1, 'ar', 'admin', 'setting.Site_Logo', 'شعار الموقع', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(63, 1, 'ar', 'admin', 'setting.Site_Icon', 'أيقونة الموقع', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(64, 1, 'ar', 'admin', 'setting.Copyright_Content', 'محتوى حقوق الطبع البحث مقدم الشعاع', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(65, 1, 'ar', 'admin', 'setting.Provider_Accept_Timeout', 'موفر قبول مهلة', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(66, 1, 'ar', 'admin', 'setting.Provider_Search_Radius', 'البحث مقدم الشعاع', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(67, 1, 'ar', 'admin', 'setting.SOS_Number', 'رقم استغاثة', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(68, 1, 'ar', 'admin', 'setting.Contact_Number', 'رقم الاتصال', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(69, 1, 'ar', 'admin', 'setting.Contact_Email', 'تواصل بالبريد الاكتروني', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(70, 1, 'ar', 'admin', 'setting.Social_Login', 'تسجيل الدخول الاجتماعي', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(71, 1, 'ar', 'admin', 'setting.Update_Site_Settings', 'تحديث إعدادات الموقع', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(72, 1, 'ar', 'admin', 'setting.distance', 'مسافه: بعد', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(73, 1, 'ar', 'admin', 'setting.referral', 'Referral', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(74, 1, 'ar', 'admin', 'setting.referral_count', 'Referral count', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(75, 1, 'ar', 'admin', 'setting.referral_amount', 'Referral amount', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(76, 1, 'ar', 'admin', 'setting.send_mail', 'Send Mail', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(77, 1, 'ar', 'admin', 'setting.mail_host', 'Host', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(78, 1, 'ar', 'admin', 'setting.mail_username', 'Username', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(79, 1, 'ar', 'admin', 'setting.mail_password', 'Password', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(80, 1, 'ar', 'admin', 'setting.mail_from_address', 'From Address', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(81, 1, 'ar', 'admin', 'setting.mail_from_name', 'From Name', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(82, 1, 'ar', 'admin', 'setting.mail_port', 'Port', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(83, 1, 'ar', 'admin', 'setting.mail_encryption', 'Encryption', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(84, 1, 'ar', 'admin', 'setting.mail_domain', 'Domain', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(85, 1, 'ar', 'admin', 'setting.mail_secret', 'Secret', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(86, 1, 'ar', 'admin', 'setting.mail_driver', 'Driver', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(87, 1, 'ar', 'admin', 'payment.card_payments', 'شريط (مدفوعات بطاقة)', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(88, 1, 'ar', 'admin', 'payment.cash_payments', 'التسديد نقذا', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(89, 1, 'ar', 'admin', 'payment.payment_history', 'تاريخ الدفع', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(90, 1, 'ar', 'admin', 'payment.request_id', 'طلب معرف', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(91, 1, 'ar', 'admin', 'payment.transaction_id', 'معرف المعاملة', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(92, 1, 'ar', 'admin', 'payment.from', 'من عند', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(93, 1, 'ar', 'admin', 'payment.to', 'إلى', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(94, 1, 'ar', 'admin', 'payment.total_amount', 'المبلغ الإجمالي', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(95, 1, 'ar', 'admin', 'payment.provider_amount', 'كمية مقدم الخدمة', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(96, 1, 'ar', 'admin', 'payment.payment_mode', 'طريقة الدفع', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(97, 1, 'ar', 'admin', 'payment.payment_status', 'حالة السداد', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(98, 1, 'ar', 'admin', 'payment.payment_modes', 'طرق الدفع', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(99, 1, 'ar', 'admin', 'payment.stripe_secret_key', 'شريط سر مفتاح', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(100, 1, 'ar', 'admin', 'payment.stripe_publishable_key', 'شريط للنشر الرئيسية', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(101, 1, 'ar', 'admin', 'payment.payment_settings', 'إعدادات الدفع', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(102, 1, 'ar', 'admin', 'payment.daily_target', 'الهدف اليومي', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(103, 1, 'ar', 'admin', 'payment.tax_percentage', 'نسبة الضريبة (%)', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(104, 1, 'ar', 'admin', 'payment.surge_trigger_point', 'نقطة تصاعد الزناد', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(105, 1, 'ar', 'admin', 'payment.surge_percentage', 'النسبة المئوية للزيادة(%)', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(106, 1, 'ar', 'admin', 'payment.commission_percentage', 'نسبة العمولة(%)', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(107, 1, 'ar', 'admin', 'payment.provider_commission_percentage', 'نسبة عمولة مقدمي الخدمة(%)', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(108, 1, 'ar', 'admin', 'payment.fleet_commission_percentage', 'نسبة اسطول اللجنة(%)', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(109, 1, 'ar', 'admin', 'payment.booking_id_prefix', 'معرف الحجز البادئة', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(110, 1, 'ar', 'admin', 'payment.currency', 'دقة', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(111, 1, 'ar', 'admin', 'payment.update_site_settings', 'تحديث إعدادات الموقع', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(112, 1, 'ar', 'admin', 'addsettle', 'مستوطنة', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(113, 1, 'ar', 'admin', 'prd_settle', 'تسوية المزود', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(114, 1, 'ar', 'admin', 'flt_settle', 'تسوية الأسطول', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(115, 1, 'ar', 'admin', 'document.add_Document', 'إضافة وثيقة', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(116, 1, 'ar', 'admin', 'document.document_name', 'اسم الملف', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(117, 1, 'ar', 'admin', 'document.document_type', 'نوع الوثيقة', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(118, 1, 'ar', 'admin', 'document.driver_review', 'استعراض سائق', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(119, 1, 'ar', 'admin', 'document.vehicle_review', 'استعراض السيارة', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(120, 1, 'ar', 'admin', 'document.update_document', 'تحديث الوثيقة', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(121, 1, 'ar', 'admin', 'document.document', 'وثيقة', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(122, 1, 'ar', 'admin', 'account-manager.account_manager', 'إدارة حساب المستخدم', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(123, 1, 'ar', 'admin', 'account-manager.add_new_account_manager', 'اضف جديد إدارة حساب المستخدم', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(124, 1, 'ar', 'admin', 'account-manager.add_account_manager', 'أضف مدير الحساب', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(125, 1, 'ar', 'admin', 'account-manager.full_name', 'الاسم الكامل', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(126, 1, 'ar', 'admin', 'account-manager.password_confirmation', 'تأكيد كلمة المرور', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(127, 1, 'ar', 'admin', 'account-manager.update_account_manager', 'تحديث مدير الحساب', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(128, 1, 'ar', 'admin', 'dispatcher.dispatcher', 'المرسل', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(129, 1, 'ar', 'admin', 'dispatcher.add_new_dispatcher', 'اضف جديد المرسل', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(130, 1, 'ar', 'admin', 'dispatcher.add_dispatcher', 'أضف المرسل', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(131, 1, 'ar', 'admin', 'dispatcher.update_dispatcher', 'تحديث المرسل', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(132, 1, 'ar', 'admin', 'provides.download', 'تحميل', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(133, 1, 'ar', 'admin', 'provides.providers', 'مقدمي', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(134, 1, 'ar', 'admin', 'provides.provider_name', 'اسم المزود', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(135, 1, 'ar', 'admin', 'provides.approve', 'يوافق', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(136, 1, 'ar', 'admin', 'provides.delete', 'حذف', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(137, 1, 'ar', 'admin', 'provides.add_provider', 'أضف موفر', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(138, 1, 'ar', 'admin', 'provides.password_confirmation', 'تأكيد كلمة المرور', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(139, 1, 'ar', 'admin', 'provides.update_provider', 'تحديث موفر', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(140, 1, 'ar', 'admin', 'provides.type_allocation', 'موفر خدمة نوع التخصيص', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(141, 1, 'ar', 'admin', 'provides.service_name', 'اسم الخدمة', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(142, 1, 'ar', 'admin', 'provides.service_number', 'رقم الخدمة', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(143, 1, 'ar', 'admin', 'provides.service_model', 'نموذج الخدمة', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(144, 1, 'ar', 'admin', 'provides.provider_documents', 'وثائق مقدم الخدمة', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(145, 1, 'ar', 'admin', 'provides.document_type', 'نوع الوثيقة', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(146, 1, 'ar', 'admin', 'provides.add_new_provider', 'اضف جديد مزود', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(147, 1, 'ar', 'admin', 'provides.total_requests', 'مجموع الطلبات', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(148, 1, 'ar', 'admin', 'provides.full_name', 'الاسم الكامل', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(149, 1, 'ar', 'admin', 'provides.accepted_requests', 'الطلبات المقبولة', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(150, 1, 'ar', 'admin', 'provides.cancelled_requests', 'الطلبات الملغاة', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(151, 1, 'ar', 'admin', 'provides.service_type', 'المستندات / نوع الخدمة', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(152, 1, 'ar', 'admin', 'provides.online', 'عبر الانترنت', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(153, 1, 'ar', 'admin', 'provides.Provider_Details', 'تفاصيل مقدم الخدمة', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(154, 1, 'ar', 'admin', 'provides.Approved', 'وافق', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(155, 1, 'ar', 'admin', 'provides.Not_Approved', 'غير مقبول', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(156, 1, 'ar', 'admin', 'provides.Total_Rides', 'إجمالي ركوب الخيل', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(157, 1, 'ar', 'admin', 'provides.Total_Earning', 'مجموع الأرباح', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(158, 1, 'ar', 'admin', 'provides.Commission', 'عمولة', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(159, 1, 'ar', 'admin', 'provides.Joined_at', 'انضم في', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(160, 1, 'ar', 'admin', 'provides.Details', 'تفاصيل', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(161, 1, 'ar', 'admin', 'History', 'التاريخ', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(162, 1, 'ar', 'admin', 'Statements', 'صياغات', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(163, 1, 'ar', 'admin', 'include.profile', 'الملف الشخصي', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(164, 1, 'ar', 'admin', 'include.sign_out', 'خروج', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(165, 1, 'ar', 'admin', 'include.reviews', 'التعليقات', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(166, 1, 'ar', 'admin', 'include.add_new_promocode', 'اضف جديد رمز ترويجي', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(167, 1, 'ar', 'admin', 'include.admin_dashboard', 'لوحة تحكم المشرف', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(168, 1, 'ar', 'admin', 'include.dashboard', 'لوحة القيادة', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(169, 1, 'ar', 'admin', 'include.fleet_dashboard', 'لوحة القيادة', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(170, 1, 'ar', 'admin', 'include.dispatcher_dashboard', 'لوحة المرسل', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(171, 1, 'ar', 'admin', 'include.account_dashboard', 'لوحة حساب', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(172, 1, 'ar', 'admin', 'include.account_statements', 'بيانات الحسابات', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(173, 1, 'ar', 'admin', 'include.dispatcher_panel', 'لوحة مرسل', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(174, 1, 'ar', 'admin', 'include.heat_map', 'خريطة الحرارة', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(175, 1, 'ar', 'admin', 'include.members', 'أفراد\r\n', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(176, 1, 'ar', 'admin', 'include.users', 'المستخدمين', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(177, 1, 'ar', 'admin', 'include.list_users', 'قائمة المستخدمين', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(178, 1, 'ar', 'admin', 'include.add_new_user', 'اضف جديد المستعمل', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(179, 1, 'ar', 'admin', 'include.providers', 'مقدمي', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(180, 1, 'ar', 'admin', 'include.list_providers', 'قائمة مقدمي الخدمات', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(181, 1, 'ar', 'admin', 'include.add_new_provider', 'اضف جديد مزود', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(182, 1, 'ar', 'admin', 'include.dispatcher', 'المرسل', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(183, 1, 'ar', 'admin', 'include.list_dispatcher', 'قائمة مرسل', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(184, 1, 'ar', 'admin', 'include.add_new_dispatcher', 'اضف جديد المرسل', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(185, 1, 'ar', 'admin', 'include.fleet_owner', 'مالك أسطول', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(186, 1, 'ar', 'admin', 'include.list_fleets', 'قائمة الاساطيل', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(187, 1, 'ar', 'admin', 'include.add_new_fleet_owner', 'اضف جديد مالك أسطول', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(188, 1, 'ar', 'admin', 'include.account_manager', 'إدارة حساب المستخدم', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(189, 1, 'ar', 'admin', 'include.list_account_managers', 'قائمة مدراء الحسابات', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(190, 1, 'ar', 'admin', 'include.add_new_account_manager', 'اضف جديد إدارة حساب المستخدم', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(191, 1, 'ar', 'admin', 'include.accounts', 'حسابات', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(192, 1, 'ar', 'admin', 'include.statements', 'صياغات', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(193, 1, 'ar', 'admin', 'include.overall_ride_statments', 'بيانات ركوب العام', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(194, 1, 'ar', 'admin', 'include.provider_statement', 'بيان مزود', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(195, 1, 'ar', 'admin', 'include.daily_statement', 'البيان اليومي', '2021-05-25 15:50:31', '2021-05-25 15:50:31'),
(196, 1, 'ar', 'admin', 'include.today_statement', 'بيان اليوم', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(197, 1, 'ar', 'admin', 'include.monthly_statement', 'البيان الشهري', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(198, 1, 'ar', 'admin', 'include.yearly_statement', 'بيان سنوي', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(199, 1, 'ar', 'admin', 'include.overall_ride_earnings', 'إجمالي أرباح ركوب', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(200, 1, 'ar', 'admin', 'include.provider_earnings', 'أرباح مزود', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(201, 1, 'ar', 'admin', 'include.daily_earnings', 'الأرباح اليومية', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(202, 1, 'ar', 'admin', 'include.today_earnings', 'أرباح اليوم', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(203, 1, 'ar', 'admin', 'include.monthly_earnings', 'الدخل الشهري', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(204, 1, 'ar', 'admin', 'include.yearly_earnings', 'بيان سنوي', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(205, 1, 'ar', 'admin', 'include.statement_from', 'ركوب بيان من', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(206, 1, 'ar', 'admin', 'include.statement_to', 'إلى', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(207, 1, 'ar', 'admin', 'include.details', 'تفاصيل', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(208, 1, 'ar', 'admin', 'include.map', 'خريطة', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(209, 1, 'ar', 'admin', 'include.ratings', 'تصنيفات', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(210, 1, 'ar', 'admin', 'include.user_ratings', 'تقييم المستخدم', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(211, 1, 'ar', 'admin', 'include.provider_ratings', 'تقييمات موفر', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(212, 1, 'ar', 'admin', 'include.requests', 'طلبات', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(213, 1, 'ar', 'admin', 'include.request_history', 'طلب التاريخ', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(214, 1, 'ar', 'admin', 'include.scheduled_rides', 'رحلات مجدولة', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(215, 1, 'ar', 'admin', 'include.general', 'جنرال لواء', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(216, 1, 'ar', 'admin', 'include.service_types', 'أنواع الخدمات', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(217, 1, 'ar', 'admin', 'include.list_service_types', 'قائمة أنواع الخدمات', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(218, 1, 'ar', 'admin', 'include.add_new_service_type', 'اضف جديد نوع الخدمة', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(219, 1, 'ar', 'admin', 'include.documents', 'مستندات', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(220, 1, 'ar', 'admin', 'include.list_documents', 'قائمة الوثائق', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(221, 1, 'ar', 'admin', 'include.add_new_document', 'اضف جديد وثيقة', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(222, 1, 'ar', 'admin', 'include.promocodes', 'Promocodes', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(223, 1, 'ar', 'admin', 'include.list_promocodes', 'قائمة Promocodes', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(224, 1, 'ar', 'admin', 'include.payment_details', 'بيانات الدفع', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(225, 1, 'ar', 'admin', 'include.payment_history', 'تاريخ الدفع', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(226, 1, 'ar', 'admin', 'include.payment_settings', 'إعدادات الدفع', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(227, 1, 'ar', 'admin', 'include.settings', 'الإعدادات', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(228, 1, 'ar', 'admin', 'include.site_settings', 'إعداد الموقع', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(229, 1, 'ar', 'admin', 'include.others', 'الآخرين', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(230, 1, 'ar', 'admin', 'include.cms_pages', 'Cms Pages', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(231, 1, 'ar', 'admin', 'include.help', 'مساعدة', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(232, 1, 'ar', 'admin', 'include.custom_push', 'دفع مخصص', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(233, 1, 'ar', 'admin', 'include.translations', 'ترجمة', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(234, 1, 'ar', 'admin', 'include.account', 'الحساب', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(235, 1, 'ar', 'admin', 'include.account_settings', 'إعدادت الحساب', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(236, 1, 'ar', 'admin', 'include.change_password', 'غير كلمة السر', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(237, 1, 'ar', 'admin', 'include.transaction', 'المستوطنات', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(238, 1, 'ar', 'admin', 'include.provider_request', 'مستودعات المزود', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(239, 1, 'ar', 'admin', 'include.fleet_request', 'مستوطنات الأسطول', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(240, 1, 'ar', 'admin', 'include.all_transaction', 'كل الحركات المالية', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(241, 1, 'ar', 'admin', 'include.wallet', 'محفظة نقود', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(242, 1, 'ar', 'admin', 'include.debit_card', 'بطاقات الخصم', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(243, 1, 'ar', 'admin', 'include.transfer', 'نقل', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(244, 1, 'ar', 'admin', 'include.logout', 'الخروج', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(245, 1, 'ar', 'admin', 'include.reason', 'Cancel Reasons', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(246, 1, 'ar', 'admin', 'include.peaktime', 'Peak Times', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(247, 1, 'ar', 'admin', 'account.change_password', 'غير كلمة السر', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(248, 1, 'ar', 'admin', 'account.old_password', 'كلمة المرور القديمة', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(249, 1, 'ar', 'admin', 'account.password', 'كلمه السر ', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(250, 1, 'ar', 'admin', 'account.password_confirmation', 'تأكيد كلمة المرور', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(251, 1, 'ar', 'admin', 'account.update_profile', 'تحديث الملف', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(252, 1, 'ar', 'admin', 'account.new_password', 'كلمة السر الجديدة', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(253, 1, 'ar', 'admin', 'account.retype_password', 'أعد كتابة كلمة السر الجديدة', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(254, 1, 'ar', 'admin', 'help', 'مساعدة', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(255, 1, 'ar', 'admin', 'email', 'البريد الإلكتروني', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(256, 1, 'ar', 'admin', 'password', 'كلمه السر ', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(257, 1, 'ar', 'admin', 'auth.remember_me', 'تذكرنى', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(258, 1, 'ar', 'admin', 'auth.reset_password', 'إعادة ضبط كلمة المرور', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(259, 1, 'ar', 'admin', 'auth.admin_login', 'اتسجيل الدخول', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(260, 1, 'ar', 'admin', 'auth.login_here', 'تسجيل الدخول هنا', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(261, 1, 'ar', 'admin', 'auth.sign_in', 'تسجيل الدخول', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(262, 1, 'ar', 'admin', 'auth.forgot_your_password', 'نسيت رقمك السري', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(263, 1, 'ar', 'admin', 'auth.request_scheduled', 'الركوب المقرر', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(264, 1, 'ar', 'admin', 'auth.request_already_scheduled', 'ركوب المقرر بالفعل', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(265, 1, 'ar', 'admin', 'promocode.add_promocode', 'أضف الرمز الترويجي', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(266, 1, 'ar', 'admin', 'promocode.discount', 'خصم', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(267, 1, 'ar', 'admin', 'promocode.expiration', 'انتهاء الصلاحية', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(268, 1, 'ar', 'admin', 'promocode.promocode', 'رمز ترويجي', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(269, 1, 'ar', 'admin', 'promocode.update_promocode', 'تحديث الرمز الترويجي', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(270, 1, 'ar', 'admin', 'promocode.used_count', 'العد المستخدم', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(271, 1, 'ar', 'admin', 'promocode.promocodes', 'الرموز الترويجية', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(272, 1, 'ar', 'admin', 'promocode.discount_type', 'الرمز الترويجي الاستخدام ', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(273, 1, 'ar', 'admin', 'promocode.percentage', 'النسبة المئوية', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(274, 1, 'ar', 'admin', 'promocode.max_amount', 'أقصى مبلغ', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(275, 1, 'ar', 'admin', 'promocode.promo_description', 'وصف', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(276, 1, 'ar', 'admin', 'reason.title', 'Cancel Reasons', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(277, 1, 'ar', 'admin', 'reason.add_reason', 'Add Reason', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(278, 1, 'ar', 'admin', 'reason.update_reason', 'Update Reason', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(279, 1, 'ar', 'admin', 'reason.reason', 'Reason', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(280, 1, 'ar', 'admin', 'reason.type', 'Type', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(281, 1, 'ar', 'admin', 'reason.status', 'Status', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(282, 1, 'ar', 'admin', 'peaktime.title', 'Peak Times', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(283, 1, 'ar', 'admin', 'peaktime.add_time', 'Add Peak Time', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(284, 1, 'ar', 'admin', 'peaktime.update_time', 'Update Peak Time', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(285, 1, 'ar', 'admin', 'peaktime.start_time', 'Start Time', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(286, 1, 'ar', 'admin', 'peaktime.end_time', 'End Time', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(287, 1, 'ar', 'admin', 'users.Users', 'المستخدمين', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(288, 1, 'ar', 'admin', 'users.Add_User', 'أضف المستخدم', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(289, 1, 'ar', 'admin', 'users.Update_User', 'تحديث المستخدم', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(290, 1, 'ar', 'admin', 'users.Rating', 'تقييم', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(291, 1, 'ar', 'admin', 'users.Wallet_Amount', 'مبلغ المحفظة', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(292, 1, 'ar', 'admin', 'users.User_Details', 'بيانات المستخدم', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(293, 1, 'ar', 'admin', 'users.Wallet_Balance', 'رصيد المحفظة', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(294, 1, 'ar', 'admin', 'name', 'اسم', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(295, 1, 'ar', 'admin', 'first_name', 'الاسم الاول', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(296, 1, 'ar', 'admin', 'last_name', 'الكنية', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(297, 1, 'ar', 'admin', 'picture', 'صورة', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(298, 1, 'ar', 'admin', 'mobile', 'التليفون المحمول', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(299, 1, 'ar', 'admin', 'cancel', 'إلغاء', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(300, 1, 'ar', 'admin', 'view', 'رأي', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(301, 1, 'ar', 'admin', 'update', 'تحديث\r\n', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(302, 1, 'ar', 'admin', 'id', 'هوية شخصية', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(303, 1, 'ar', 'admin', 'gender', 'جنس', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(304, 1, 'ar', 'admin', 'address', 'عنوان', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(305, 1, 'ar', 'admin', 'action', 'عمل', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(306, 1, 'ar', 'admin', 'Enable', 'مكن', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(307, 1, 'ar', 'admin', 'Disable', 'تعطيل', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(308, 1, 'ar', 'admin', 'type', 'نوع', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(309, 1, 'ar', 'admin', 'status', 'الحالة', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(310, 1, 'ar', 'admin', 'message', 'رسالة', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(311, 1, 'ar', 'admin', 'amount', 'كمية', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(312, 1, 'ar', 'admin', 'company', 'شركة', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(313, 1, 'ar', 'admin', 'logo', 'شعار', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(314, 1, 'ar', 'admin', 'service_select', 'يرجى إنشاء نوع الخدمة', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(315, 1, 'ar', 'admin', 'pages.pages', 'صفحات', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(316, 1, 'ar', 'admin', 'request.Booking_ID', 'معرف الحجز', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(317, 1, 'ar', 'admin', 'request.User_Name', 'اسم المستخدم', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(318, 1, 'ar', 'admin', 'request.Date_Time', 'التاريخ & amp؛ زمن', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(319, 1, 'ar', 'admin', 'request.Provider_Name', 'اسم المزود', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(320, 0, 'ar', 'admin', 'request.Payment_Mode', 'طريقة الدفع', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(321, 1, 'ar', 'admin', 'request.Payment_Status', 'حالة السداد', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(322, 1, 'ar', 'admin', 'request.Request_Id', 'طلب معرف', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(323, 1, 'ar', 'admin', 'request.Scheduled_Date_Time', 'تاريخ ووقت مجدول', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(324, 1, 'ar', 'admin', 'request.picked_up', 'التقط', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(325, 1, 'ar', 'admin', 'request.dropped', 'إسقاط', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(326, 1, 'ar', 'admin', 'request.request_details', 'طلب تفاصيل', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(327, 1, 'ar', 'admin', 'request.commission', 'عمولة', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(328, 1, 'ar', 'admin', 'request.date', 'بتاريخ', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(329, 1, 'ar', 'admin', 'request.status', 'الحالة', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(330, 1, 'ar', 'admin', 'request.earned', 'حصل', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(331, 1, 'ar', 'admin', 'request.provider_not_assigned', 'موفر لم يتم تعيينه بعد!', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(332, 1, 'ar', 'admin', 'request.total_distance', 'المسافة الكلية', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(333, 1, 'ar', 'admin', 'request.ride_scheduled_time', 'ركوب الوقت المجدول', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(334, 1, 'ar', 'admin', 'request.ride_start_time', 'Ride Start Time', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(335, 1, 'ar', 'admin', 'request.ride_end_time', 'ركوب نهاية الوقت', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(336, 1, 'ar', 'admin', 'request.pickup_address', 'عنوان لاقط', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(337, 1, 'ar', 'admin', 'request.drop_address', 'إسقاط العنوان', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(338, 1, 'ar', 'admin', 'request.base_price', 'السعر الأساسي', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(339, 1, 'ar', 'admin', 'request.minutes_price', 'سعر الدقيقة', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(340, 1, 'ar', 'admin', 'request.hours_price', 'سعر الساعات', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(341, 1, 'ar', 'admin', 'request.distance_price', 'المسافة السعر', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(342, 1, 'ar', 'admin', 'request.fleet_commission', 'لجنة الاسطول', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(343, 1, 'ar', 'admin', 'request.discount_price', 'سعر الخصم', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(344, 1, 'ar', 'admin', 'request.tax_price', 'سعر الضريبة', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(345, 1, 'ar', 'admin', 'request.surge_price', 'السعر المفاجئ', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(346, 1, 'ar', 'admin', 'request.tips', 'نصائح', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(347, 1, 'ar', 'admin', 'request.total_amount', 'المبلغ الإجمالي', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(348, 1, 'ar', 'admin', 'request.wallet_deduction', 'خصم المحفظة', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(349, 1, 'ar', 'admin', 'request.paid_amount', 'المبلغ المدفوع', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(350, 1, 'ar', 'admin', 'request.provider_earnings', 'أرباح مزود', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(351, 1, 'ar', 'admin', 'request.ride_status', 'وضع الركوب', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(352, 1, 'ar', 'admin', 'request.cash_amount', 'مبلغ نقدي', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(353, 1, 'ar', 'admin', 'request.card_amount', 'مبلغ البطاقة', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(354, 1, 'ar', 'admin', 'request.item_to_deliver', 'Item To Deliver', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(355, 1, 'ar', 'admin', 'request.delivery_address', 'Delivery Address', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(356, 1, 'ar', 'admin', 'request.receiver_name', 'Receiver Name', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(357, 1, 'ar', 'admin', 'request.receiver_mobile', 'Receiver Mobile', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(358, 1, 'ar', 'admin', 'request.any_instructions', 'Any Instructions', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(359, 1, 'ar', 'admin', 'review.Request_ID', 'طلب معرف', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(360, 1, 'ar', 'admin', 'review.Rating', 'تقييم', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(361, 1, 'ar', 'admin', 'review.Comments', 'تعليقات', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(362, 1, 'ar', 'admin', 'review.Provider_Reviews', 'موفر مراجعات', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(363, 1, 'ar', 'admin', 'review.User_Reviews', 'مراجعات المستخدم', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(364, 1, 'ar', 'admin', 'dashboard.Rides', 'العدد الإجمالي للركوب', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(365, 1, 'ar', 'admin', 'dashboard.Revenue', 'إيرادات', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(366, 1, 'ar', 'admin', 'dashboard.service', 'عدد أنواع الخدمات', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(367, 1, 'ar', 'admin', 'dashboard.cancel_count', 'مستخدم تم إلغاء العد', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(368, 1, 'ar', 'admin', 'dashboard.provider_cancel_count', 'مقدم إلغاء ملغى', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(369, 1, 'ar', 'admin', 'dashboard.fleets', 'عدد الاساطيل', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(370, 1, 'ar', 'admin', 'dashboard.providers', 'عدد مقدمي الخدمات', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(371, 1, 'ar', 'admin', 'dashboard.scheduled', 'عدد رحلات المجدولة', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(372, 1, 'ar', 'admin', 'dashboard.Recent_Rides', 'ركوب الأخيرة', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(373, 1, 'ar', 'admin', 'dashboard.View_Ride_Details', 'عرض تفاصيل القيادة', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(374, 1, 'ar', 'admin', 'dashboard.No_Details_Found', 'لا توجد تفاصيل وجدت', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(375, 1, 'ar', 'admin', 'dashboard.cancel_rides', 'جولات ملغاة', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(376, 1, 'ar', 'admin', 'dashboard.over_earning', 'على كل الكسب', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(377, 1, 'ar', 'admin', 'dashboard.over_commission', 'على جميع اللجان', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(378, 1, 'ar', 'admin', 'heatmap.Ride_Heatmap', 'ركوب هيت', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(379, 1, 'ar', 'admin', 'push.Push_Notification', 'دفع الإخطار', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(380, 1, 'ar', 'admin', 'push.Sent_to', 'ارسل الى', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(381, 1, 'ar', 'admin', 'push.message', 'الرسالة المرسلة', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(382, 1, 'ar', 'admin', 'push.Push_Now', 'ادفع الآن', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(383, 1, 'ar', 'admin', 'push.Schedule_Push', 'الجدول الزمني دفع', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(384, 1, 'ar', 'admin', 'push.Condition', 'شرط', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(385, 1, 'ar', 'admin', 'push.Notification_History', 'تاريخ الإخطار', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(386, 1, 'ar', 'admin', 'push.Sent_on', 'أرسلت في', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(387, 1, 'ar', 'admin', 'transaction_ref', 'معرف المعاملة', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(388, 1, 'ar', 'admin', 'transaction_desc', 'وصف', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(389, 1, 'ar', 'admin', 'sno', 'سنو', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(390, 1, 'ar', 'admin', 'by', 'إرسال / استقبال', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(391, 1, 'ar', 'admin', 'current_balance', 'الرصيد الحالي', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(392, 1, 'ar', 'admin', 'transfer', 'نقل', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(393, 1, 'ar', 'admin', 'send', 'إرسال', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(394, 1, 'ar', 'admin', 'datetime', 'التاريخ & amp؛ زمن', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(395, 1, 'ar', 'admin', 'approve', 'إرسال', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(396, 1, 'ar', 'admin', 'settle', 'تستقر', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(397, 1, 'ar', 'admin', 'account_manager_msgs.account_saved', 'تفاصيل مدير الحسابات المحفوظة بنجاح', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(398, 1, 'ar', 'admin', 'account_manager_msgs.account_not_found', 'مدير الحساب غير موجود', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(399, 1, 'ar', 'admin', 'account_manager_msgs.account_update', 'تم تحديث مدير الحساب بنجاح', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(400, 1, 'ar', 'admin', 'account_manager_msgs.account_delete', 'تم حذف مدير الحساب بنجاح', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(401, 1, 'ar', 'admin', 'dispatcher_msgs.dispatcher_saved', 'تفاصيل مرسل المحفوظة بنجاح', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(402, 1, 'ar', 'admin', 'dispatcher_msgs.dispatcher_not_found', 'مرسل غير موجود', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(403, 1, 'ar', 'admin', 'dispatcher_msgs.dispatcher_update', 'المرسل تحديث بنجاح', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(404, 1, 'ar', 'admin', 'dispatcher_msgs.dispatcher_delete', 'المرسل المحذوف بنجاح', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(405, 1, 'ar', 'admin', 'dispatcher_msgs.request_assigned', 'طلب معين للموفر', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(406, 1, 'ar', 'admin', 'fleet_msgs.fleet_saved', 'تفاصيل الأسطول المحفوظة بنجاح', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(407, 1, 'ar', 'admin', 'fleet_msgs.fleet_not_found', 'الأسطول غير موجود', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(408, 1, 'ar', 'admin', 'fleet_msgs.fleet_update', 'تحديث الأسطول بنجاح', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(409, 1, 'ar', 'admin', 'fleet_msgs.fleet_delete', 'الأسطول المحذوف بنجاح', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(410, 1, 'ar', 'admin', 'provider_msgs.provider_saved', 'تفاصيل موفر المحفوظة بنجاح', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(411, 1, 'ar', 'admin', 'provider_msgs.provider_not_found', 'موفر غير موجود', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(412, 1, 'ar', 'admin', 'provider_msgs.provider_update', 'موفر تم تحديثه بنجاح', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(413, 1, 'ar', 'admin', 'provider_msgs.provider_delete', 'تم حذف مقدم بنجاح', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(414, 1, 'ar', 'admin', 'provider_msgs.provider_approve', 'وافق مزود', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(415, 1, 'ar', 'admin', 'provider_msgs.provider_disapprove', 'موفر الرفض', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(416, 1, 'ar', 'admin', 'provider_msgs.document_pending', 'المستندات verfication المعلقةg', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(417, 1, 'ar', 'admin', 'provider_msgs.document_approved', '\r\nتمت الموافقة على وثيقة مقدم الخدمة', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(418, 1, 'ar', 'admin', 'provider_msgs.document_delete', 'تم حذف مستند الموفر', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(419, 1, 'ar', 'admin', 'provider_msgs.document_not_found', 'لم يتم العثور على وثيقة مقدم الخدمة', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(420, 1, 'ar', 'admin', 'provider_msgs.service_type_pending', 'لم يتم تعيين نوع الخدمة لمزود الخدمة', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(421, 1, 'ar', 'admin', 'provider_msgs.provider_pending', 'لم يتم تعيين نوع الخدمة أو مستندات التحقق المعلقة لموفر الخدمة', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(422, 1, 'ar', 'admin', 'provider_msgs.provider_service_update', 'تم تحديث نوع خدمة الموفر بنجاح', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(423, 1, 'ar', 'admin', 'provider_msgs.provider_service_delete', 'تم حذف خدمة المزود', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(424, 1, 'ar', 'admin', 'provider_msgs.provider_service_not_found', 'لم يتم العثور على خدمة المزود', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(425, 1, 'ar', 'admin', 'provider_msgs.trip_cancelled', 'رحلة ملغاة بنجاح', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(426, 1, 'ar', 'admin', 'user_msgs.user_saved', 'المستخدم المحفوظة بنجاح', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(427, 1, 'ar', 'admin', 'user_msgs.user_not_found', 'المستخدم ليس موجود', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(428, 1, 'ar', 'admin', 'user_msgs.user_update', 'تم تحديث المستخدم بنجاح', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(429, 1, 'ar', 'admin', 'user_msgs.user_delete', 'تم حذف المستخدم بنجاح', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(430, 1, 'ar', 'admin', 'document_msgs.document_saved', 'تم حفظ المستند بنجاح', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(431, 1, 'ar', 'admin', 'document_msgs.document_not_found', 'المستند غير موجود', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(432, 1, 'ar', 'admin', 'document_msgs.document_update', 'تم تحديث المستند بنجاح', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(433, 1, 'ar', 'admin', 'document_msgs.document_delete', 'تم حذف المستند بنجاح', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(434, 1, 'ar', 'admin', 'favourite_location_msgs.favourite_saved', 'المكان المفضل تم الحفظ بنجاح', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(435, 1, 'ar', 'admin', 'favourite_location_msgs.favourite_not_found', 'المكان المفضل غير موجود', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(436, 1, 'ar', 'admin', 'favourite_location_msgs.favourite_exists', 'المكان المفضل بالفعل موجود', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(437, 1, 'ar', 'admin', 'favourite_location_msgs.favourite_update', 'تم تحديث الموقع المفضل بنجاح', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(438, 1, 'ar', 'admin', 'favourite_location_msgs.favourite_delete', 'المكان المفضل المحذوفة بنجاح', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(439, 1, 'ar', 'admin', 'promocode_msgs.promocode_saved', 'تم حفظ الرمز الترويجي بنجاح', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(440, 1, 'ar', 'admin', 'promocode_msgs.promocode_not_found', 'الرمز الترويجي غير موجود', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(441, 1, 'ar', 'admin', 'promocode_msgs.promocode_exists', 'الرمز الترويجي موجود بالفعل', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(442, 1, 'ar', 'admin', 'promocode_msgs.promocode_update', 'الرمز الترويجي تم تحديثه بنجاح', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(443, 1, 'ar', 'admin', 'promocode_msgs.promocode_delete', 'تم حذف الرمز الترويجي بنجاح', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(444, 1, 'ar', 'admin', 'peakhour_msgs.peakhour_saved', 'Peak Hour Saved Successfully', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(445, 1, 'ar', 'admin', 'peakhour_msgs.peakhour_not_found', 'Peak Hour Not Found', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(446, 1, 'ar', 'admin', 'peakhour_msgs.peakhour_exists', 'Peak Hour Already Exists', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(447, 1, 'ar', 'admin', 'peakhour_msgs.peakhour_update', 'Peak Hour Updated Successfully', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(448, 1, 'ar', 'admin', 'peakhour_msgs.peakhour_delete', 'Peak Hour Deleted Successfully', '2021-05-25 15:50:32', '2021-05-25 15:50:32');
INSERT INTO `ltm_translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(449, 1, 'ar', 'admin', 'reason_msgs.reason_saved', 'Reason Saved Successfully', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(450, 1, 'ar', 'admin', 'reason_msgs.reason_not_found', 'Reason Not Found', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(451, 1, 'ar', 'admin', 'reason_msgs.reason_exists', 'Reason Already Exists', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(452, 1, 'ar', 'admin', 'reason_msgs.reason_update', 'Reason Updated Successfully', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(453, 1, 'ar', 'admin', 'reason_msgs.reason_delete', 'Reason Deleted Successfully', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(454, 1, 'ar', 'admin', 'service_type_msgs.service_type_saved', 'تم حفظ نوع الخدمة بنجاح', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(455, 1, 'ar', 'admin', 'service_type_msgs.service_type_not_found', 'نوع الخدمة غير موجود', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(456, 1, 'ar', 'admin', 'service_type_msgs.service_type_exists', 'نوع الخدمة بالفعل موجود', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(457, 1, 'ar', 'admin', 'service_type_msgs.service_type_update', 'تم تحديث نوع الخدمة بنجاح', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(458, 1, 'ar', 'admin', 'service_type_msgs.service_type_delete', 'تم حذف نوع الخدمة بنجاح', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(459, 1, 'ar', 'admin', 'service_type_msgs.service_type_using', 'موفر استخدام هذه الخدمة ، لا يمكنك حذفها', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(460, 1, 'ar', 'admin', 'payment_msgs.amount_send', 'المبلغ ترسل بنجاح', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(461, 1, 'ar', 'admin', 'payment_msgs.account_not_found', 'حساب الشريط غير موجود', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(462, 1, 'ar', 'admin', 'payment_msgs.amount_added', ' وأضاف إلى محفظتك', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(463, 1, 'ar', 'api', 'record_updated', 'Record Updated Successfully', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(464, 1, 'ar', 'api', 'user.incorrect_password', 'كلمة سر خاطئة', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(465, 1, 'ar', 'api', 'user.incorrect_old_password', 'كلمة السر القديمة غير صحيحة', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(466, 1, 'ar', 'api', 'user.change_password', 'المطلوب هو كلمة المرور الجديدة يجب\r\nلا تكون نفس كلمة المرور القديمة', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(467, 1, 'ar', 'api', 'user.password_updated', 'تم تحديث كلمة السر', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(468, 1, 'ar', 'api', 'user.location_updated', 'تحديث الموقع', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(469, 1, 'ar', 'api', 'user.language_updated', 'تحديث اللغة', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(470, 1, 'ar', 'api', 'user.profile_updated', 'تحديث الملف الشخصي', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(471, 1, 'ar', 'api', 'user.user_not_found', 'المستخدم ليس موجود', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(472, 1, 'ar', 'api', 'user.not_paid', 'المستخدم غير مدفوع', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(473, 1, 'ar', 'api', 'user.referral_amount', 'مبلغ الإحالة', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(474, 1, 'ar', 'api', 'user.referral_count', 'عدد الإحالات', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(475, 1, 'ar', 'api', 'user.invite_friends', '<p style=\'color:#FDFEFE;\'>أحضر 0 صديقًا<br>واكسب <span color=\'#00E4C5\'>₹0</span> لكل رئيس</p>', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(476, 1, 'ar', 'api', 'provider.incorrect_password', 'كلمة سر خاطئة', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(477, 1, 'ar', 'api', 'provider.incorrect_old_password', 'كلمة السر القديمة غير صحيحة', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(478, 1, 'ar', 'api', 'provider.change_password', 'المطلوب هو كلمة المرور الجديدة يجب لا تكون نفس كلمة المرور القديمة', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(479, 1, 'ar', 'api', 'provider.password_updated', 'تم تحديث كلمة السر', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(480, 1, 'ar', 'api', 'provider.location_updated', 'تحديث الموقع', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(481, 1, 'ar', 'api', 'provider.language_updated', 'تحديث اللغة', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(482, 1, 'ar', 'api', 'provider.profile_updated', 'تحديث الملف الشخصي', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(483, 1, 'ar', 'api', 'provider.provider_not_found', 'موفر غير موجود', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(484, 1, 'ar', 'api', 'provider.not_approved', 'لم تتم الموافقة على حسابك للقيادة', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(485, 1, 'ar', 'api', 'provider.incorrect_email', 'عنوان البريد الإلكتروني أو كلمة المرور التي أدخلتها غير صحيح', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(486, 1, 'ar', 'api', 'provider.referral_amount', 'مبلغ الإحالة', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(487, 1, 'ar', 'api', 'provider.referral_count', 'عدد الإحالات', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(488, 1, 'ar', 'api', 'provider.invite_friends', '<p style=\'color:#FDFEFE;\'>أحضر 0 صديقًا<br>واكسب <span color=\'#00E4C5\'>₹0</span> لكل رئيس</p>', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(489, 1, 'ar', 'api', 'ride.request_inprogress', 'طلب بالفعل في التقدم', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(490, 1, 'ar', 'api', 'ride.no_providers_found', 'لا يوجد سائقين', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(491, 1, 'ar', 'api', 'ride.request_cancelled', 'Your Ride Cancelled', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(492, 1, 'ar', 'api', 'ride.already_cancelled', 'بالفعل ركوب ملغاة', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(493, 1, 'ar', 'api', 'ride.ride_cancelled', 'ركوب ملغى', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(494, 1, 'ar', 'api', 'ride.already_onride', 'أنت بالفعل غير متواجد', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(495, 1, 'ar', 'api', 'ride.provider_rated', 'سائق تقييمه', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(496, 1, 'ar', 'api', 'ride.request_scheduled', 'الركوب المقرر', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(497, 1, 'ar', 'api', 'ride.request_already_scheduled', 'ركوب المقرر بالفعل', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(498, 1, 'ar', 'api', 'ride.request_modify_location', 'المستخدم تغيير عنوان الوجهة', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(499, 1, 'ar', 'api', 'ride.request_completed', 'اكتمل الطلب', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(500, 1, 'ar', 'api', 'ride.request_not_completed', 'طلب لم يكتمل بعد', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(501, 1, 'ar', 'api', 'ride.request_rejected', 'تم رفض الطلب بنجاح', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(502, 1, 'ar', 'api', 'invalid', 'بيانات الاعتماد غير صالحة', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(503, 1, 'ar', 'api', 'unauthenticated', 'غير مصدق', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(504, 1, 'ar', 'api', 'destination_changed', 'تم تغيير موقع الوجهة', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(505, 1, 'ar', 'api', 'unable_accept', 'غير قادر على القبول ، يرجى المحاولة مرة أخرى في وقت لاحق', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(506, 1, 'ar', 'api', 'connection_err', 'خطأ في الإتصال', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(507, 1, 'ar', 'api', 'logout_success', 'تم تسجيل الخروج بنجاح', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(508, 1, 'ar', 'api', 'email_available', 'البريد الإلكتروني المتاحة', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(509, 1, 'ar', 'api', 'email_not_available', 'البريد الإلكتروني غير متوفر', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(510, 1, 'ar', 'api', 'services_not_found', 'الخدمات غير موجودة', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(511, 1, 'ar', 'api', 'promocode_applied', 'الرمز الترويجي المطبق', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(512, 1, 'ar', 'api', 'promocode_expired', 'انتهاء مدة العرضd', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(513, 1, 'ar', 'api', 'promocode_already_in_use', '\r\nالرمز الترويجي موجود بالفعل في الاستخدام', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(514, 1, 'ar', 'api', 'paid', 'دفع', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(515, 1, 'ar', 'api', 'added_to_your_wallet', 'تمت إضافته إلى محفظتك', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(516, 1, 'ar', 'api', 'amount_success', 'طلب المبلغ المضافة', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(517, 1, 'ar', 'api', 'amount_cancel', 'تم إلغاء الطلب', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(518, 1, 'ar', 'api', 'amount_max', 'قد لا يكون المبلغ أكبر من ', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(519, 1, 'ar', 'api', 'card_already', 'البطاقة مضافة بالفعل', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(520, 1, 'ar', 'api', 'card_added', 'تمت إضافة البطاقة', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(521, 1, 'ar', 'api', 'card_deleted', 'بطاقة المحذوفة', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(522, 1, 'ar', 'api', 'push.request_accepted', 'ركوبك مقبول من قبل سائق', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(523, 1, 'ar', 'api', 'push.arrived', 'وصل السائق في موقعك', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(524, 1, 'ar', 'api', 'push.pickedup', 'ركوب بدأ', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(525, 1, 'ar', 'api', 'push.complete', 'اكتمل الركوب', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(526, 1, 'ar', 'api', 'push.rate', 'تم تقييمه بنجاح', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(527, 1, 'ar', 'api', 'push.dropped', 'اكتمال رحلتك بنجاح. عليك أن تدفع', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(528, 1, 'ar', 'api', 'push.incoming_request', 'جولة جديدة واردة', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(529, 1, 'ar', 'api', 'push.added_money_to_wallet', ' تمت إضافته إلى محفظتك', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(530, 1, 'ar', 'api', 'push.charged_from_wallet', ' مشحونة من محفظتك', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(531, 1, 'ar', 'api', 'push.document_verfied', 'يتم التحقق من المستندات الخاصة بك ، أنت الآن على استعداد لبدء عملك', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(532, 1, 'ar', 'api', 'push.user_cancelled', 'مستخدم ألغى ركوب', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(533, 1, 'ar', 'api', 'push.provider_cancelled', 'سائق ألغى ركوب', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(534, 1, 'ar', 'api', 'push.schedule_start', 'لقد بدأت رحلة الجدول الزمني الخاص بك', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(535, 1, 'ar', 'api', 'transaction.admin_commission', 'عمولة المشرف', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(536, 1, 'ar', 'api', 'transaction.fleet_debit', 'دفعت لجنة الاسطول', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(537, 1, 'ar', 'api', 'transaction.fleet_add', 'تمت إضافة عمولة الأسطول', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(538, 1, 'ar', 'api', 'transaction.fleet_recharge', 'اعادة تكليف الاسطول', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(539, 1, 'ar', 'api', 'transaction.discount_apply', 'الخصم قد تم', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(540, 1, 'ar', 'api', 'transaction.discount_refund', 'خصم مبلغ الاسترداد', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(541, 1, 'ar', 'api', 'transaction.discount_recharge', 'موفر خصم كمية الشحن', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(542, 1, 'ar', 'api', 'transaction.tax_credit', 'مبلغ الضريبة المدين', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(543, 1, 'ar', 'api', 'transaction.tax_debit', 'مبلغ الضريبة', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(544, 1, 'ar', 'api', 'transaction.provider_credit', 'إضافة كمية الركوب', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(545, 1, 'ar', 'api', 'transaction.provider_recharge', 'مزود ركوب كمية التغذية', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(546, 1, 'ar', 'api', 'transaction.user_recharge', 'تعبئة رصيد', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(547, 1, 'ar', 'api', 'transaction.user_trip', 'رحلة قصيرة', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(548, 1, 'ar', 'auth', 'failed', 'لا تتطابق بيانات الاعتماد هذه مع سجلاتنا.', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(549, 1, 'ar', 'auth', 'throttle', 'عدد محاولات تسجيل الدخول أكثر من اللازم. يرجى المحاولة مرة أخرى: ثانية ثانية.', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(550, 1, 'ar', 'pagination', 'previous', 'وقوو]؛ سابق', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(551, 1, 'ar', 'pagination', 'next', 'التالي & raquo;', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(552, 1, 'ar', 'passwords', 'password', 'يجب أن تتكون كلمات المرور من ستة أحرف على الأقل وتتطابق مع التأكيد.', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(553, 1, 'ar', 'passwords', 'reset', 'تم إعادة تعيين كلمة المرور الخاصة بك!', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(554, 1, 'ar', 'passwords', 'sent', 'لقد أرسلنا عبر البريد الإلكتروني رابط إعادة تعيين كلمة المرور الخاص بك!', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(555, 1, 'ar', 'passwords', 'token', 'رمز إعادة تعيين كلمة المرور هذا غير صالح.', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(556, 1, 'ar', 'passwords', 'user', 'لا يمكننا العثور على مستخدم لديه عنوان البريد الإلكتروني هذا.', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(557, 1, 'ar', 'provider', 'profile.help', 'مساعدة', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(558, 1, 'ar', 'provider', 'profile.my_profile', 'ملفي', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(559, 1, 'ar', 'provider', 'profile.change_password', 'غير كلمة السر', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(560, 1, 'ar', 'provider', 'profile.logout', 'الخروج', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(561, 1, 'ar', 'provider', 'profile.profile', 'الملف الشخصي', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(562, 1, 'ar', 'provider', 'profile.manage_documents', 'إدارة المستندات', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(563, 1, 'ar', 'provider', 'profile.update_location', 'تحديث الموقع', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(564, 1, 'ar', 'provider', 'profile.first_name', 'الاسم الاول', '2021-05-25 15:50:32', '2021-05-25 15:50:32'),
(565, 1, 'ar', 'provider', 'profile.last_name', 'الكنية', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(566, 1, 'ar', 'provider', 'profile.avatar', 'الصورة الرمزية', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(567, 1, 'ar', 'provider', 'profile.phone', 'هاتف', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(568, 1, 'ar', 'provider', 'profile.language', 'لغة', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(569, 1, 'ar', 'provider', 'profile.address', 'عنوان', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(570, 1, 'ar', 'provider', 'profile.full_address', 'ادخل الجناح ، الطابق ، الشقة (اختياري)', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(571, 1, 'ar', 'provider', 'profile.city', 'مدينة', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(572, 1, 'ar', 'provider', 'profile.country', 'بلد', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(573, 1, 'ar', 'provider', 'profile.pin', 'الرمز البريدي', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(574, 1, 'ar', 'provider', 'profile.service_type', 'نوع الخدمة', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(575, 1, 'ar', 'provider', 'profile.car_number', 'رقم السياره', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(576, 1, 'ar', 'provider', 'profile.car_model', 'طراز السيارة', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(577, 1, 'ar', 'provider', 'profile.driver_document', 'وثائق السائق', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(578, 1, 'ar', 'provider', 'profile.vehicle_document', 'وثائق السيارة', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(579, 1, 'ar', 'provider', 'profile.enter_location', 'أدخل الموقع', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(580, 1, 'ar', 'provider', 'profile.update', 'تحديث', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(581, 1, 'ar', 'provider', 'profile.change_mobile', 'تغيير رقم الجوال', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(582, 1, 'ar', 'provider', 'profile.verify', 'التحقق', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(583, 1, 'ar', 'provider', 'profile.verified', 'التحقق', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(584, 1, 'ar', 'provider', 'profile.ride', 'اركب', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(585, 1, 'ar', 'provider', 'profile.drive', 'قيادة', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(586, 1, 'ar', 'provider', 'profile.cities', 'مدن', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(587, 1, 'ar', 'provider', 'profile.fare_estimate', 'تقدير الأجرة', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(588, 1, 'ar', 'provider', 'profile.signup_to_ride', 'اشترك في ركوب', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(589, 1, 'ar', 'provider', 'profile.become_a_driver', 'كن سائق', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(590, 1, 'ar', 'provider', 'profile.ride_now', 'اركب الآن', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(591, 1, 'ar', 'provider', 'profile.get_app_on', 'الحصول على التطبيقات على', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(592, 1, 'ar', 'provider', 'profile.connect_us', 'تواصل معنا', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(593, 1, 'ar', 'provider', 'profile.home', 'الصفحة الرئيسية', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(594, 1, 'ar', 'provider', 'profile.my_trips', 'رحلاتي', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(595, 1, 'ar', 'provider', 'profile.partner_earnings', 'أرباح الشريك', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(596, 1, 'ar', 'provider', 'profile.incoming_request', 'طلب وارد', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(597, 1, 'ar', 'provider', 'profile.paul_walker', 'Paul Walker', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(598, 1, 'ar', 'provider', 'profile.accept', 'قبول', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(599, 1, 'ar', 'provider', 'profile.cancel', 'إلغاء', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(600, 1, 'ar', 'provider', 'profile.wallet_transaction', 'معاملة المحفظة', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(601, 1, 'ar', 'provider', 'profile.transfer', 'نقل', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(602, 1, 'ar', 'provider', 'profile.upload', 'رفع', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(603, 1, 'ar', 'provider', 'profile.error_msg', 'يمكن أن تحتوي فقط على أحرف أبجدية رقمية و. - المساحات', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(604, 1, 'ar', 'provider', 'profile.error_phone', 'رقم هاتف غير صحيح', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(605, 1, 'ar', 'provider', 'partner.payment', 'بيانات الدفع', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(606, 1, 'ar', 'provider', 'partner.upcoming', 'القادمة', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(607, 1, 'ar', 'provider', 'partner.total_earnings', 'الأرباح الكلية', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(608, 1, 'ar', 'provider', 'partner.trips_completed', 'تريبس استكمل اليوم', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(609, 1, 'ar', 'provider', 'partner.daily_trip', 'هدف الرحلة اليومي', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(610, 1, 'ar', 'provider', 'partner.fully_completed', 'رحلات التاجر كاملة', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(611, 1, 'ar', 'provider', 'partner.acceptance', 'معدل القبول', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(612, 1, 'ar', 'provider', 'partner.driver_cancel', 'إلغاء السائقين', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(613, 1, 'ar', 'provider', 'partner.weekly_earning', 'الأرباح الأسبوعية', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(614, 1, 'ar', 'provider', 'partner.trip_earning', 'أرباح الرحلة', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(615, 1, 'ar', 'provider', 'partner.estimate_payout', 'العائد التقديري', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(616, 1, 'ar', 'provider', 'partner.daily_earnings', 'الأرباح اليومية', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(617, 1, 'ar', 'provider', 'partner.status', 'الحالة', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(618, 1, 'ar', 'provider', 'partner.all_trip', 'جميع الرحلات', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(619, 1, 'ar', 'provider', 'partner.completed', 'منجز', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(620, 1, 'ar', 'provider', 'partner.pending', 'قيد الانتظار', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(621, 1, 'ar', 'provider', 'partner.pickup', 'اختار المعاد', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(622, 1, 'ar', 'provider', 'partner.booking_id', 'رقم الحجز', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(623, 1, 'ar', 'provider', 'partner.vehicle', 'مركبة', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(624, 1, 'ar', 'provider', 'partner.duration', 'المدة الزمنية', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(625, 1, 'ar', 'provider', 'partner.distance(km)', 'مسافه: بعد', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(626, 1, 'ar', 'provider', 'partner.invoice_amount', 'قيمة الفاتورة', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(627, 1, 'ar', 'provider', 'partner.cash_collected', 'النقدية المجمعة', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(628, 1, 'ar', 'provider', 'partner.upcoming_tips', 'الرحلات القادمة', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(629, 1, 'ar', 'provider', 'partner.pickup_time', 'اختار المعاد', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(630, 1, 'ar', 'provider', 'partner.pickup_address', 'عنوان لاقط', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(631, 1, 'ar', 'provider', 'partner.action', 'عمل', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(632, 1, 'ar', 'provider', 'signup.already_register', 'هل أنت مسجل بالفعل؟', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(633, 1, 'ar', 'provider', 'signup.sign_up', 'سجل', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(634, 1, 'ar', 'provider', 'signup.enter_phone', 'أدخل رقم الهاتف', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(635, 1, 'ar', 'provider', 'signup.email_address', 'عنوان بريد الكتروني', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(636, 1, 'ar', 'provider', 'signup.male', 'الذكر', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(637, 1, 'ar', 'provider', 'signup.female', 'إناثا', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(638, 1, 'ar', 'provider', 'signup.password', 'كلمه السر', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(639, 1, 'ar', 'provider', 'signup.confirm_password', 'تأكيد كلمة المرور', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(640, 1, 'ar', 'provider', 'signup.register', 'تسجيل', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(641, 1, 'ar', 'provider', 'signup.create_new_acc', 'انشاء حساب جديد', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(642, 1, 'ar', 'provider', 'signup.sign_in', 'تسجيل الدخول', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(643, 1, 'ar', 'provider', 'signup.remember_me', 'تذكرنى', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(644, 1, 'ar', 'provider', 'signup.login', 'تسجيل الدخول', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(645, 1, 'ar', 'provider', 'signup.forgot_password', 'نسيت رقمك السري?', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(646, 1, 'ar', 'provider', 'signup.login_facebook', 'تسجيل الدخول باستخدام الفيسبوك', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(647, 1, 'ar', 'provider', 'signup.login_google', 'تسجيل الدخول باستخدام GOOGLE +', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(648, 1, 'ar', 'provider', 'signup.reset_password', 'إعادة ضبط كلمة المرور', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(649, 1, 'ar', 'provider', 'signup.already_have_acc', 'هل لديك حساب?', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(650, 1, 'ar', 'provider', 'signup.send_password_reset_link', 'إرسال كلمة المرور رابط إعادة تعيين', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(651, 1, 'ar', 'provider', 'card.fullname', 'الاسم الكامل', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(652, 1, 'ar', 'provider', 'card.card_no', 'رقم البطاقة', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(653, 1, 'ar', 'provider', 'card.cvv', 'CVV', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(654, 1, 'ar', 'provider', 'card.add_card', 'إضافة بطاقة', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(655, 1, 'ar', 'provider', 'card.add_debit_card', 'إضافة بطاقة الخصم', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(656, 1, 'ar', 'provider', 'card.delete', 'حذف', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(657, 1, 'ar', 'provider', 'card.month', 'شهر', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(658, 1, 'ar', 'provider', 'card.year', 'عام', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(659, 1, 'ar', 'provider', 'card.default', 'افتراضي', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(660, 1, 'ar', 'provider', 'card.list', 'بطاقات الخصم', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(661, 1, 'ar', 'provider', 'card.type', 'نوع البطاقة', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(662, 1, 'ar', 'provider', 'card.four', 'آخر أربعة', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(663, 1, 'ar', 'provider', 'card.set', 'الوضع الإفتراضي', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(664, 1, 'ar', 'provider', 'card.notfound', 'لم يتم إضافة بطاقة خصم حتى الآن', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(665, 1, 'ar', 'provider', 'transaction_ref', 'معرف المعاملة', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(666, 1, 'ar', 'provider', 'transaction_desc', 'وصف', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(667, 1, 'ar', 'provider', 'sno', 'سنو', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(668, 1, 'ar', 'provider', 'amount', 'كمية', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(669, 1, 'ar', 'provider', 'status', 'الحالة', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(670, 1, 'ar', 'provider', 'current_balance', 'الرصيد الحالي', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(671, 1, 'ar', 'provider', 'transfer', 'نقل', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(672, 1, 'ar', 'provider', 'datetime', 'التاريخ & amp؛ زمن', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(673, 1, 'ar', 'provider', 'cancel', 'إلغاء', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(674, 1, 'ar', 'provider', 'document_pending', 'التحقق من المستندات في انتظار المراجعة', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(675, 1, 'ar', 'provider', 'document_upload', 'رفع', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(676, 1, 'ar', 'provider', 'card_pending', 'قسم بطاقة الخصم', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(677, 1, 'ar', 'provider', 'drive_now', 'قد الآن', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(678, 1, 'ar', 'provider', 'offline', 'الذهاب دون اتصال', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(679, 1, 'ar', 'provider', 'online', 'اتصل بالانترنت', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(680, 1, 'ar', 'provider', 'hours', 'ساعات', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(681, 1, 'ar', 'provider', 'minutes', 'الدقائق', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(682, 1, 'ar', 'provider', 'credit', 'ائتمان', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(683, 1, 'ar', 'provider', 'debit', 'مدين', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(684, 1, 'ar', 'provider', 'lang', 'ar', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(685, 1, 'ar', 'provider', 'enter_location', 'أدخل الموقع', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(686, 1, 'ar', 'provider', 'your_location', 'موقعك', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(687, 1, 'ar', 'provider', 'expires', 'تنتهي', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(688, 1, 'ar', 'servicetypes', 'MIN', 'في التسعير الدقيقة', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(689, 1, 'ar', 'servicetypes', 'HOUR', 'سعر لكل ساعة', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(690, 1, 'ar', 'servicetypes', 'DISTANCE', 'التسعير المسافة', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(691, 1, 'ar', 'servicetypes', 'DISTANCEMIN', 'المسافة والسعر في الدقيقة', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(692, 1, 'ar', 'servicetypes', 'DISTANCEHOUR', 'المسافة والسعر لكل ساعة', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(693, 1, 'ar', 'user', 'profile.old_password', 'كلمة المرور القديمة', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(694, 1, 'ar', 'user', 'profile.password', 'كلمه السر', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(695, 1, 'ar', 'user', 'profile.confirm_password', 'تأكيد كلمة المرور', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(696, 1, 'ar', 'user', 'profile.first_name', 'الاسم الاول', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(697, 1, 'ar', 'user', 'profile.last_name', 'الكنية', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(698, 1, 'ar', 'user', 'profile.email', 'البريد الإلكتروني', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(699, 1, 'ar', 'user', 'profile.mobile', 'التليفون المحمول', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(700, 1, 'ar', 'user', 'profile.general_information', 'معلومات عامة', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(701, 1, 'ar', 'user', 'profile.profile_picture', 'الصوره الشخصيه', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(702, 1, 'ar', 'user', 'profile.wallet_balance', 'رصيد المحفظة', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(703, 1, 'ar', 'user', 'profile.edit', 'تصحيح', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(704, 1, 'ar', 'user', 'profile.save', 'حفظ', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(705, 1, 'ar', 'user', 'profile.edit_information', 'تعديل المعلومات', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(706, 1, 'ar', 'user', 'profile.change_password', 'غير كلمة السر', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(707, 1, 'ar', 'user', 'profile.profile', 'الملف الشخصي', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(708, 1, 'ar', 'user', 'profile.change_mobile', 'تغيير رقم الجوال', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(709, 1, 'ar', 'user', 'profile.verify', 'التحقق', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(710, 1, 'ar', 'user', 'profile.verified', 'التحقق', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(711, 1, 'ar', 'user', 'profile.settings', 'الإعدادات', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(712, 1, 'ar', 'user', 'profile.logout', 'الخروج', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(713, 1, 'ar', 'user', 'profile.name', 'اسم', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(714, 1, 'ar', 'user', 'profile.language', 'لغة', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(715, 1, 'ar', 'user', 'cash', 'السيولة النقدية', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(716, 1, 'ar', 'user', 'booking_id', 'رقم الحجز', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(717, 1, 'ar', 'user', 'service_number', 'رقم السياره', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(718, 1, 'ar', 'user', 'service_model', 'طراز السيارة', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(719, 1, 'ar', 'user', 'service_type', 'نوع الخدمة', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(720, 1, 'ar', 'user', 'card.fullname', 'الاسم الكامل', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(721, 1, 'ar', 'user', 'card.card_no', 'رقم البطاقة', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(722, 1, 'ar', 'user', 'card.cvv', 'CVV', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(723, 1, 'ar', 'user', 'card.add_card', 'إضافة بطاقة', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(724, 1, 'ar', 'user', 'card.delete', 'حذف', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(725, 1, 'ar', 'user', 'card.month', 'شهر', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(726, 1, 'ar', 'user', 'card.year', 'عام', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(727, 1, 'ar', 'user', 'card.default', 'افتراضي', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(728, 1, 'ar', 'user', 'card.delete_msg', 'هل أنت متأكد من حذف هذه البطاقة?', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(729, 1, 'ar', 'user', 'fare_breakdown', 'انفلات الأجرة', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(730, 1, 'ar', 'user', 'ride.finding_driver', 'العثور على سائق الخاص بك', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(731, 1, 'ar', 'user', 'ride.accepted_ride', 'قبلت رحلتك', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(732, 1, 'ar', 'user', 'ride.arrived_ride', 'وصلت في موقعك', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(733, 1, 'ar', 'user', 'ride.onride', 'استمتع بالركوب الخاص بك', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(734, 1, 'ar', 'user', 'ride.waiting_payment', 'في انتظار الدفع', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(735, 1, 'ar', 'user', 'ride.rate_and_review', 'معدل ومراجعة', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(736, 1, 'ar', 'user', 'ride.ride_now', 'اركب الآن', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(737, 1, 'ar', 'user', 'ride.cancel_request', 'إلغاء الطلب', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(738, 1, 'ar', 'user', 'ride.ride_status', 'وضع الركوب', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(739, 1, 'ar', 'user', 'ride.dropped_ride', 'اكتمال ركوب الخاص بك', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(740, 1, 'ar', 'user', 'ride.ride_details', 'تفاصيل ركوب', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(741, 1, 'ar', 'user', 'ride.invoice', 'فاتورة', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(742, 1, 'ar', 'user', 'ride.base_price', 'الاجرة الاساسية', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(743, 1, 'ar', 'user', 'ride.tax_price', 'تسعيرة التاكسي', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(744, 1, 'ar', 'user', 'ride.distance_price', 'المسافة أجرة', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(745, 1, 'ar', 'user', 'ride.minutes_price', 'دقائق', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(746, 1, 'ar', 'user', 'ride.hours_price', 'ساعات الأجرة', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(747, 1, 'ar', 'user', 'ride.distance_travelled', 'المسافة المقطوعة', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(748, 1, 'ar', 'user', 'ride.tips', 'نصائح', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(749, 1, 'ar', 'user', 'ride.comment', 'تعليق', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(750, 1, 'ar', 'user', 'ride.detection_wallet', 'كشف المحفظة', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(751, 1, 'ar', 'user', 'ride.rating', 'تقييم', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(752, 1, 'ar', 'user', 'ride.km', 'كيلومتر', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(753, 1, 'ar', 'user', 'ride.total', 'مجموع', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(754, 1, 'ar', 'user', 'ride.amount_paid', 'المبلغ المستحق للدفع', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(755, 1, 'ar', 'user', 'ride.promotion_applied', 'العرض المقدم', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(756, 1, 'ar', 'user', 'ride.request_inprogress', 'الركوب بالفعل في التقدم', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(757, 1, 'ar', 'user', 'ride.request_scheduled', 'ركوب المقرر بالفعل في هذا الوقت', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(758, 1, 'ar', 'user', 'ride.cancel_reason', 'الغاء السبب', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(759, 1, 'ar', 'user', 'ride.wallet_deduction', 'خصم المحفظة', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(760, 1, 'ar', 'user', 'dashboard', 'لوحة القيادة', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(761, 1, 'ar', 'user', 'payment', 'دفع', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(762, 1, 'ar', 'user', 'wallet', 'محفظة نقود', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(763, 1, 'ar', 'user', 'my_wallet', 'محفظتى', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(764, 1, 'ar', 'user', 'my_trips', 'رحلاتي', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(765, 1, 'ar', 'user', 'in_your_wallet', 'في محفظتك', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(766, 1, 'ar', 'user', 'status', 'الحالة', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(767, 1, 'ar', 'user', 'driver_name', 'اسم السائق', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(768, 1, 'ar', 'user', 'driver_rating', 'تقييم السائق', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(769, 1, 'ar', 'user', 'payment_mode', 'طريقة الدفع', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(770, 1, 'ar', 'user', 'otp', 'مكتب المدعي العام', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(771, 1, 'ar', 'user', 'add_money', 'إضافة المال', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(772, 1, 'ar', 'user', 'date', 'تاريخ', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(773, 1, 'ar', 'user', 'schedule_date', 'تاريخ', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(774, 1, 'ar', 'user', 'amount', 'المبلغ الإجمالي', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(775, 1, 'ar', 'user', 'type', 'نوع', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(776, 1, 'ar', 'user', 'time', 'زمن', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(777, 1, 'ar', 'user', 'request_id', 'طلب معرف', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(778, 1, 'ar', 'user', 'paid_via', 'دفع عن طريق', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(779, 1, 'ar', 'user', 'from', 'من عند', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(780, 1, 'ar', 'user', 'total_distance', 'المسافة الكلية', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(781, 1, 'ar', 'user', 'eta', 'ETA', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(782, 1, 'ar', 'user', 'to', 'إلى', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(783, 1, 'ar', 'user', 'use_wallet_balance', 'استخدم رصيد المحفظة', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(784, 1, 'ar', 'user', 'available_wallet_balance', 'رصيد المحفظة المتاح', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(785, 1, 'ar', 'user', 'estimated_fare', 'الأجرة المقدرة', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(786, 1, 'ar', 'user', 'charged', 'متهم', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(787, 1, 'ar', 'user', 'payment_method', 'طرق الدفع', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(788, 1, 'ar', 'user', 'promotion', 'الترقيات', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(789, 1, 'ar', 'user', 'promocode', 'الرموز الترويجية', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(790, 1, 'ar', 'user', 'add_promocode', 'أضف الرمز الترويجي', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(791, 1, 'ar', 'user', 'upcoming_trips', 'الرحلات القادمة', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(792, 1, 'ar', 'user', 'total', 'مجموع', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(793, 1, 'ar', 'user', 'promocode_select', 'حدد الرمز الترويجي', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(794, 1, 'ar', 'user', 'schedule_title', 'جدولة ركوب', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(795, 1, 'ar', 'user', 'schedule', 'الجدول الزمني لاحقا', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(796, 1, 'ar', 'user', 'schedule_time', 'زمن', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(797, 1, 'ar', 'user', 'schedule_ride', 'جدول الركوب', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(798, 1, 'ar', 'user', 'demand_node', 'ملاحظة: نظرًا لارتفاع الطلب ، قد تختلف الأجرة!', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(799, 1, 'ar', 'user', 'no_trips', 'لا رحلات المتاحة', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(800, 1, 'ar', 'user', 'provider_details', 'تفاصيل مقدم الخدمة', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(801, 1, 'ar', 'user', 'ride_cancel', 'إلغاء ركوب', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(802, 1, 'ar', 'user', 'enter_amount', 'أدخل المبلغ', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(803, 1, 'ar', 'user', 'please', 'رجاء', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(804, 1, 'ar', 'user', 'add_card', 'إضافة بطاقة', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(805, 1, 'ar', 'user', 'to_continue', 'لاستكمال', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(806, 1, 'ar', 'user', 'credit', 'ائتمان', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(807, 1, 'ar', 'user', 'debit', 'مدين', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(808, 1, 'ar', 'user', 'maperror', 'Invalid Map Key', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(809, 1, 'ar', 'user', 'referral', 'Refer a Friend', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(810, 1, 'ar', 'validation', 'accepted', 'يجب قبول السمة.', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(811, 1, 'ar', 'validation', 'active_url', 'السمة: ليست عنوان URL صالحًا.', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(812, 1, 'ar', 'validation', 'after', 'يجب أن تكون السمة: تاريخًا بعد: التاريخ.', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(813, 1, 'ar', 'validation', 'after_or_equal', 'يجب أن تكون السمة: تاريخًا بعد أو يساوي: التاريخ.', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(814, 1, 'ar', 'validation', 'alpha', 'قد تحتوي السمة: على أحرف فقط.', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(815, 1, 'ar', 'validation', 'alpha_dash', 'قد تحتوي السمة: على أحرف وأرقام وشرطات فقط.', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(816, 1, 'ar', 'validation', 'alpha_num', 'قد تحتوي السمة: على أحرف وأرقام فقط.', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(817, 1, 'ar', 'validation', 'array', 'يجب أن تكون السمة: مصفوفة.', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(818, 1, 'ar', 'validation', 'before', 'ال :attribute يجب أن يكون تاريخ من قبل :date.', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(819, 1, 'ar', 'validation', 'before_or_equal', 'ال :attribute يجب أن يكون تاريخًا قبل أو يساوي :date.', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(820, 1, 'ar', 'validation', 'between.numeric', 'ال :attribute يجب ان يكون بين :min و :max.', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(821, 1, 'ar', 'validation', 'between.file', 'ال :attribute يجب ان يكون بين :min و :max kilobytes.', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(822, 1, 'ar', 'validation', 'between.string', 'ال :attribute يجب ان يكون بين :min و :max characters.', '2021-05-25 15:50:33', '2021-05-25 15:50:33'),
(823, 1, 'ar', 'validation', 'between.array', 'ال :attribute يجب أن يكون بين :min و :max items.', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(824, 1, 'ar', 'validation', 'boolean', 'يجب أن يكون حقل السمة: true أو false.', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(825, 1, 'ar', 'validation', 'confirmed', 'لا يتطابق تأكيد السمة.', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(826, 1, 'ar', 'validation', 'date', 'السمة: ليست تاريخًا صالحًا.', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(827, 1, 'ar', 'validation', 'date_format', 'السمة: لا تتطابق مع التنسيق: format.', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(828, 1, 'ar', 'validation', 'different', 'يجب أن تكون السمة و: أخرى مختلفة.', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(829, 1, 'ar', 'validation', 'digits', 'يجب أن تكون السمة: أرقام أرقام.', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(830, 1, 'ar', 'validation', 'digits_between', 'يجب أن تتراوح السمة: بين: min و: max numbers.', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(831, 1, 'ar', 'validation', 'dimensions', 'تحتوي السمة: على أبعاد صور غير صالحة.', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(832, 1, 'ar', 'validation', 'distinct', 'يحتوي حقل السمة على قيمة مكررة.', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(833, 1, 'ar', 'validation', 'email', 'يجب أن تكون السمة: عنوان بريد إلكتروني صالحًا.', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(834, 1, 'ar', 'validation', 'exists', 'السمة المحددة: غير صالحة.', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(835, 1, 'ar', 'validation', 'file', 'السمة المحددة: غير صالحة', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(836, 1, 'ar', 'validation', 'filled', 'حقل السمة مطلوب.', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(837, 1, 'ar', 'validation', 'image', 'يجب أن تكون السمة: صورة.', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(838, 1, 'ar', 'validation', 'in', 'السمة المحددة: غير صالحة.', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(839, 1, 'ar', 'validation', 'in_array', 'حقل السمة: غير موجود في: other.', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(840, 1, 'ar', 'validation', 'integer', 'يجب أن تكون الخاصية المميزة: عدد صحيح.', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(841, 1, 'ar', 'validation', 'ip', 'يجب أن تكون السمة: عنوان IP صالحًا.', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(842, 1, 'ar', 'validation', 'json', 'يجب أن تكون السمة: عبارة عن سلسلة JSON صالحة.', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(843, 1, 'ar', 'validation', 'max.numeric', 'يجب أن تكون السمة: عبارة عن سلسلة JSON صالحة', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(844, 1, 'ar', 'validation', 'max.file', 'قد لا تكون السمة: أكبر من: max kilobytes.', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(845, 1, 'ar', 'validation', 'max.string', 'قد لا تكون السمة: أكبر من: max characters.', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(846, 1, 'ar', 'validation', 'max.array', 'قد لا تحتوي السمة: على أكثر من: الحد الأقصى للعناصر.', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(847, 1, 'ar', 'validation', 'mimes', 'يجب أن تكون السمة: ملف من النوع:: القيم.', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(848, 1, 'ar', 'validation', 'mimetypes', 'يجب أن تكون السمة: ملف من النوع:: القيم.', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(849, 1, 'ar', 'validation', 'min.numeric', 'لا :attribute لا بد أن يكون على الأقل :min.', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(850, 1, 'ar', 'validation', 'min.file', 'لا :attribute لا بد أن يكون على الأقل :min kilobytes.', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(851, 1, 'ar', 'validation', 'min.string', 'لا :attribute لا بد أن يكون على الأقل :min characters.', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(852, 1, 'ar', 'validation', 'min.array', 'لا :attribute لا بد أن يكون على الأقل :min items.', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(853, 1, 'ar', 'validation', 'not_in', 'السمة المحددة: غير صالحة.', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(854, 1, 'ar', 'validation', 'numeric', 'يجب أن تكون السمة: رقمًا.', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(855, 1, 'ar', 'validation', 'present', 'يجب أن يكون حقل السمة موجودًا.', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(856, 1, 'ar', 'validation', 'regex', 'شكل السمة: غير صالح.', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(857, 1, 'ar', 'validation', 'required', 'حقل السمة مطلوب.', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(858, 1, 'ar', 'validation', 'required_if', 'حقل السمة مطلوب عندما: الآخر هو: القيمة.', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(859, 1, 'ar', 'validation', 'required_unless', 'حقل السمة مطلوب ما لم: الآخر في: القيم.', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(860, 1, 'ar', 'validation', 'required_with', 'حقل السمة مطلوب عندما: تكون القيم موجودة.', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(861, 1, 'ar', 'validation', 'required_with_all', 'حقل السمة مطلوب عندما: تكون القيم موجودة.', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(862, 1, 'ar', 'validation', 'required_without', 'حقل السمة مطلوب عندما: تكون القيم prThe: حقل السمة مطلوب عندما: تكون القيم غير موجودة.', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(863, 1, 'ar', 'validation', 'required_without_all', 'حقل السمة مطلوب عند عدم وجود أي من: القيم.', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(864, 1, 'ar', 'validation', 'same', 'يجب أن تتطابق السمة و: other.', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(865, 1, 'ar', 'validation', 'size.numeric', 'يجب أن تكون السمة: الحجم.', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(866, 1, 'ar', 'validation', 'size.file', 'يجب أن تكون السمة: حجم الكيلوبايت.', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(867, 1, 'ar', 'validation', 'size.string', 'السمة يجب أن تكون: حجم الحروف.', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(868, 1, 'ar', 'validation', 'size.array', 'يجب أن تحتوي السمة: على عناصر الحجم.', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(869, 1, 'ar', 'validation', 'string', 'يجب أن تكون السمة: سلسلة.', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(870, 1, 'ar', 'validation', 'timezone', 'يجب أن تكون السمة: منطقة صالحة.', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(871, 1, 'ar', 'validation', 'unique', 'لقد تم بالفعل اتخاذ الخاصية المميزة:.', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(872, 1, 'ar', 'validation', 'uploaded', 'أخفق تحميل السمة.', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(873, 1, 'ar', 'validation', 'url', 'لا :attribute التنسيق غير صالح.', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(874, 1, 'ar', 'validation', 'custom.s_latitude.required', 'عنوان المصدر مطلوب', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(875, 1, 'ar', 'validation', 'custom.d_latitude.required', 'عنوان الوجهة مطلوب', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(876, 1, 'en', 'admin', 'back', 'Back', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(877, 1, 'en', 'admin', 'db_backup', 'DB Backup', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(878, 1, 'en', 'admin', 'db_backup_btn', 'DB Backup Download', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(879, 1, 'en', 'admin', 'demomode', '\"CRUD Feature\" has been disabled on the Demo Admin Panel. This feature will be enabled on your product which you will be purchasing, meahwhile if you have any queries feel free to contact our 24/7 support at info@appdupe.com.', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(880, 1, 'en', 'admin', 'fleet.fleet_owners', 'Fleet Owners', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(881, 1, 'en', 'admin', 'fleet.add_new_fleet_owner', 'Add New Fleet Owner', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(882, 1, 'en', 'admin', 'fleet.show_provider', 'Show Provider', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(883, 1, 'en', 'admin', 'fleet.add_fleet_owner', 'Add Fleet Owner', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(884, 1, 'en', 'admin', 'fleet.company_name', 'Company Name', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(885, 1, 'en', 'admin', 'fleet.company_logo', 'Company Logo', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(886, 1, 'en', 'admin', 'fleet.fleet_commission', 'Commission', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(887, 1, 'en', 'admin', 'fleet.update_fleet_owner', 'Update Fleet Owner', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(888, 1, 'en', 'admin', 'fleet.update_fleet', 'Update Fleet', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(889, 1, 'en', 'admin', 'fleet.fleet_name', 'Fleet Name', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(890, 1, 'en', 'admin', 'edit', 'Edit', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(891, 1, 'en', 'admin', 'delete', 'Delete', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(892, 1, 'en', 'admin', 'something_wrong', 'Something Went Wrong!', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(893, 1, 'en', 'admin', 'something_wrong_dashboard', 'Something Went Wrong with Dashboard!', '2021-05-25 15:50:34', '2021-05-25 15:50:34');
INSERT INTO `ltm_translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(894, 1, 'en', 'admin', 'request_delete', 'Request Deleted', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(895, 1, 'en', 'admin', 'profile_update', 'Profile Updated', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(896, 1, 'en', 'admin', 'password', 'Password ', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(897, 1, 'en', 'admin', 'password_confirmation', 'Confirm Password', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(898, 1, 'en', 'admin', 'password_update', 'Password Updated', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(899, 1, 'en', 'admin', 'password_not_match', 'Password entered doesn\'t match', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(900, 1, 'en', 'admin', 'password_error', 'Please enter correct password', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(901, 1, 'en', 'admin', 'role', 'Roles', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(902, 1, 'en', 'admin', 'location_updated', 'Location Updated successfully', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(903, 1, 'en', 'admin', 'service.per_hour', 'Per Hour', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(904, 1, 'en', 'admin', 'service.total_hour', 'Total Hours', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(905, 1, 'en', 'admin', 'service.Base_Price', 'Base Price', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(906, 1, 'en', 'admin', 'service.Base_Distance', 'Base Distance', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(907, 1, 'en', 'admin', 'service.per_minute', 'Per Minute', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(908, 1, 'en', 'admin', 'service.total_minute', 'Total Minutes', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(909, 1, 'en', 'admin', 'service.per', 'Per', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(910, 1, 'en', 'admin', 'service.total', 'Total', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(911, 1, 'en', 'admin', 'service.Service_Image', 'Service Image', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(912, 1, 'en', 'admin', 'service.Service_marker_Image', 'Service Marker Image', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(913, 1, 'en', 'admin', 'service.Add_Service_Type', 'Add Service Type', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(914, 1, 'en', 'admin', 'service.Service_Name', 'Service Name', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(915, 1, 'en', 'admin', 'service.Provider_Name', 'Provider Name', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(916, 1, 'en', 'admin', 'service.hourly_Price', 'Hour Price', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(917, 1, 'en', 'admin', 'service.unit_time', 'Unit Time Pricing (For Rental amount per hour / 60) ', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(918, 1, 'en', 'admin', 'service.unit', 'Unit Distance Price', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(919, 1, 'en', 'admin', 'service.Seat_Capacity', 'Seat Capacity', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(920, 1, 'en', 'admin', 'service.Pricing_Logic', 'Pricing Logic', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(921, 1, 'en', 'admin', 'service.Description', 'Description', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(922, 1, 'en', 'admin', 'service.Update_User', 'Update User', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(923, 1, 'en', 'admin', 'service.Update_Service_Type', 'Update Service Type', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(924, 1, 'en', 'admin', 'service.peak_title', 'Peak Time', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(925, 1, 'en', 'admin', 'service.peak_id', 'ID', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(926, 1, 'en', 'admin', 'service.peak_time', 'Time', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(927, 1, 'en', 'admin', 'service.peak_price', 'Peak Price(%) - Ride fare x Peak price(%)', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(928, 1, 'en', 'admin', 'service.waiting_title', 'Waiting Charges', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(929, 1, 'en', 'admin', 'service.waiting_wave', 'Waive off minutes', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(930, 1, 'en', 'admin', 'service.waiting_charge', 'Per Minute Fare', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(931, 1, 'en', 'admin', 'setting.map_key', 'Google Map Key', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(932, 1, 'en', 'admin', 'setting.fb_app_version', 'FB App Version', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(933, 1, 'en', 'admin', 'setting.fb_app_id', 'FB App ID', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(934, 1, 'en', 'admin', 'setting.fb_app_secret', 'FB App Secret', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(935, 1, 'en', 'admin', 'setting.facebook_client_id', 'Facebook Client ID', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(936, 1, 'en', 'admin', 'setting.facebook_client_secret', 'Facebook Client Secret', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(937, 1, 'en', 'admin', 'setting.facebook_redirect', 'Facebook Redirect URL', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(938, 1, 'en', 'admin', 'setting.google_client_id', 'Google Client ID', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(939, 1, 'en', 'admin', 'setting.google_client_secret', 'Google Client Secret', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(940, 1, 'en', 'admin', 'setting.google_redirect', 'Google Redirect URL', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(941, 1, 'en', 'admin', 'setting.Android_user_link', 'Playstore User link', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(942, 1, 'en', 'admin', 'setting.Android_provider_link', 'Playstore Provider link', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(943, 1, 'en', 'admin', 'setting.Ios_user_Link', 'Appstore User Link', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(944, 1, 'en', 'admin', 'setting.Ios_provider_Link', 'Appstore Provider Link', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(945, 1, 'en', 'admin', 'setting.Facebook_Link', 'Facebook Link', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(946, 1, 'en', 'admin', 'setting.Twitter_Link', 'Twitter Link', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(947, 1, 'en', 'admin', 'setting.Site_Settings', 'Site Settings', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(948, 1, 'en', 'admin', 'setting.Site_Name', 'Site Name', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(949, 1, 'en', 'admin', 'setting.Site_Logo', 'Site Logo', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(950, 1, 'en', 'admin', 'setting.Site_Icon', 'Site Icon', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(951, 1, 'en', 'admin', 'setting.Copyright_Content', 'Copyright Content', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(952, 1, 'en', 'admin', 'setting.Provider_Accept_Timeout', 'Provider Accept Timeout', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(953, 1, 'en', 'admin', 'setting.Provider_Search_Radius', 'Provider Search Radius', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(954, 1, 'en', 'admin', 'setting.SOS_Number', 'SOS Number', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(955, 1, 'en', 'admin', 'setting.Contact_Number', 'Contact Number', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(956, 1, 'en', 'admin', 'setting.Contact_Email', 'Contact Email', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(957, 1, 'en', 'admin', 'setting.Social_Login', 'Social Login', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(958, 1, 'en', 'admin', 'setting.Update_Site_Settings', 'Update Site Settings', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(959, 1, 'en', 'admin', 'setting.distance', 'Distance', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(960, 1, 'en', 'admin', 'setting.referral', 'Referral', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(961, 1, 'en', 'admin', 'setting.referral_count', 'Referral count', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(962, 1, 'en', 'admin', 'setting.referral_amount', 'Referral amount', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(963, 1, 'en', 'admin', 'setting.send_mail', 'Send Mail', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(964, 1, 'en', 'admin', 'setting.mail_host', 'Host', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(965, 1, 'en', 'admin', 'setting.mail_username', 'Username', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(966, 1, 'en', 'admin', 'setting.mail_password', 'Password', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(967, 1, 'en', 'admin', 'setting.mail_from_address', 'From Address', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(968, 1, 'en', 'admin', 'setting.mail_from_name', 'From Name', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(969, 1, 'en', 'admin', 'setting.mail_port', 'Port', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(970, 1, 'en', 'admin', 'setting.mail_encryption', 'Encryption', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(971, 1, 'en', 'admin', 'setting.mail_domain', 'Domain', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(972, 1, 'en', 'admin', 'setting.mail_secret', 'Secret', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(973, 1, 'en', 'admin', 'setting.mail_driver', 'Driver', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(974, 1, 'en', 'admin', 'setting.environment', 'IOS Push Environment', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(975, 1, 'en', 'admin', 'setting.ios_push_password', 'IOS Push Passwords', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(976, 1, 'en', 'admin', 'setting.ios_push_user_pem', 'IOS Push User Pem', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(977, 1, 'en', 'admin', 'setting.ios_push_provider_pem', 'IOS Push Provider Pem', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(978, 1, 'en', 'admin', 'setting.android_push_key', 'Android Push Key', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(979, 1, 'en', 'admin', 'setting.timezone', 'Time Zone', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(980, 1, 'en', 'admin', 'setting.smtp', 'SMTP', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(981, 1, 'en', 'admin', 'setting.mailgun', 'Mail Gun', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(982, 1, 'en', 'admin', 'payment.card_payments', 'Stripe (Card Payments)', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(983, 1, 'en', 'admin', 'payment.cash_payments', 'Cash Payments', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(984, 1, 'en', 'admin', 'payment.stripe_secret_key', 'Stripe Secret key', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(985, 1, 'en', 'admin', 'payment.stripe_publishable_key', 'Stripe Publishable key', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(986, 1, 'en', 'admin', 'payment.payumoney', 'Payumoney', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(987, 1, 'en', 'admin', 'payment.payumoney_environment', 'Environment', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(988, 1, 'en', 'admin', 'payment.payumoney_key', 'Key', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(989, 1, 'en', 'admin', 'payment.payumoney_salt', 'Salt', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(990, 1, 'en', 'admin', 'payment.payumoney_auth', 'Auth', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(991, 1, 'en', 'admin', 'payment.paypal', 'Paypal', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(992, 1, 'en', 'admin', 'payment.paypal_environment', 'Environment', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(993, 1, 'en', 'admin', 'payment.paypal_client_id', 'Client ID', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(994, 1, 'en', 'admin', 'payment.paypal_client_secret', 'Client Secret', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(995, 1, 'en', 'admin', 'payment.paypal_adaptive', 'Paypal Adaptive', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(996, 1, 'en', 'admin', 'payment.paypal_adaptive_environment', 'Environment', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(997, 1, 'en', 'admin', 'payment.paypal_username', 'Username', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(998, 1, 'en', 'admin', 'payment.paypal_password', 'Password', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(999, 1, 'en', 'admin', 'payment.paypal_secret', 'Secret', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1000, 1, 'en', 'admin', 'payment.paypal_certificate', 'Certificate', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1001, 1, 'en', 'admin', 'payment.paypal_app_id', 'APP Id', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1002, 1, 'en', 'admin', 'payment.paypal_adaptive_currency', 'Currency', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1003, 1, 'en', 'admin', 'payment.paypal_email', 'johndoe@example.com', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1004, 1, 'en', 'admin', 'payment.braintree', 'Braintree', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1005, 1, 'en', 'admin', 'payment.braintree_environment', 'Environment', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1006, 1, 'en', 'admin', 'payment.braintree_merchant_id', 'Merchant ID', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1007, 1, 'en', 'admin', 'payment.braintree_public_key', 'Public Key', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1008, 1, 'en', 'admin', 'payment.braintree_private_key', 'Private Key', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1009, 1, 'en', 'admin', 'payment.paytm', 'Paytm', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1010, 1, 'en', 'admin', 'payment.paytm_environment', 'Environment', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1011, 1, 'en', 'admin', 'payment.paytm_merchant_id', 'Merchant ID', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1012, 1, 'en', 'admin', 'payment.paytm_merchant_key', 'Merchant Key', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1013, 1, 'en', 'admin', 'payment.paytm_website', 'Website', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1014, 1, 'en', 'admin', 'payment.payment_history', 'Payment History', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1015, 1, 'en', 'admin', 'payment.request_id', 'Request ID', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1016, 1, 'en', 'admin', 'payment.transaction_id', 'Transaction ID', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1017, 1, 'en', 'admin', 'payment.from', 'From', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1018, 1, 'en', 'admin', 'payment.to', 'To', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1019, 1, 'en', 'admin', 'payment.total_amount', 'Total Amount', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1020, 1, 'en', 'admin', 'payment.provider_amount', 'Provider Amount', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1021, 1, 'en', 'admin', 'payment.payment_mode', 'Payment Mode', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1022, 1, 'en', 'admin', 'payment.payment_status', 'Payment Status', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1023, 1, 'en', 'admin', 'payment.payment_modes', 'Payment Modes', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1024, 1, 'en', 'admin', 'payment.payment_settings', 'Payment Settings', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1025, 1, 'en', 'admin', 'payment.daily_target', 'Daily Target', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1026, 1, 'en', 'admin', 'payment.tax_percentage', 'Tax percentage(%)', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1027, 1, 'en', 'admin', 'payment.surge_trigger_point', 'Surge Trigger Point', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1028, 1, 'en', 'admin', 'payment.surge_percentage', 'Surge Percentage(%)', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1029, 1, 'en', 'admin', 'payment.commission_percentage', 'Commission (%)', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1030, 1, 'en', 'admin', 'payment.provider_commission_percentage', 'Provider Commission (%)', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1031, 1, 'en', 'admin', 'payment.peak_percentage', 'Peak Hours Commission (%)', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1032, 1, 'en', 'admin', 'payment.waiting_percentage', 'Waiting Charges Commission (%)', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1033, 1, 'en', 'admin', 'payment.fleet_commission_percentage', 'Fleet Commission (%)', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1034, 1, 'en', 'admin', 'payment.booking_id_prefix', 'Booking ID Prefix', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1035, 1, 'en', 'admin', 'payment.currency', 'Currency', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1036, 1, 'en', 'admin', 'payment.update_site_settings', 'Update Site Settings', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1037, 1, 'en', 'admin', 'payment.minimum_negative_balance', 'Minimum Negative Balance', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1038, 1, 'en', 'admin', 'addsettle', 'Settlement', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1039, 1, 'en', 'admin', 'prd_settle', 'Provider Settlement', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1040, 1, 'en', 'admin', 'flt_settle', 'Fleet Settlement', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1041, 1, 'en', 'admin', 'document.add_Document', 'Add Document', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1042, 1, 'en', 'admin', 'document.document_name', 'Document Name', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1043, 1, 'en', 'admin', 'document.document_type', 'Document Type', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1044, 1, 'en', 'admin', 'document.driver_review', 'Driver Review', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1045, 1, 'en', 'admin', 'document.vehicle_review', 'Vehicle Review', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1046, 1, 'en', 'admin', 'document.update_document', 'Update Document', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1047, 1, 'en', 'admin', 'document.document', 'Document', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1048, 1, 'en', 'admin', 'account-manager.account_manager', 'Account Manager', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1049, 1, 'en', 'admin', 'account-manager.add_new_account_manager', 'Add New Account Manager', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1050, 1, 'en', 'admin', 'account-manager.add_account_manager', 'Add Account Manager', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1051, 1, 'en', 'admin', 'account-manager.full_name', 'Full Name', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1052, 1, 'en', 'admin', 'account-manager.password_confirmation', 'Password Confirmation', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1053, 1, 'en', 'admin', 'account-manager.update_account_manager', 'Update Account Manager', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1054, 1, 'en', 'admin', 'dispute-manager.dispute_manager', 'Dispute Manager', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1055, 1, 'en', 'admin', 'dispute-manager.add_new_dispute_manager', 'Add New Dispute Manager', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1056, 1, 'en', 'admin', 'dispute-manager.add_dispute_manager', 'Add Dispute Manager', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1057, 1, 'en', 'admin', 'dispute-manager.full_name', 'Full Name', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1058, 1, 'en', 'admin', 'dispute-manager.password_confirmation', 'Password Confirmation', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1059, 1, 'en', 'admin', 'dispute-manager.update_dispute_manager', 'Update Dispute Manager', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1060, 1, 'en', 'admin', 'dispatcher.dispatcher', 'Dispatcher', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1061, 1, 'en', 'admin', 'dispatcher.add_new_dispatcher', 'Add New Dispatcher', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1062, 1, 'en', 'admin', 'dispatcher.add_dispatcher', 'Add Dispatcher', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1063, 1, 'en', 'admin', 'dispatcher.update_dispatcher', 'Update Dispatcher', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1064, 1, 'en', 'admin', 'provides.download', 'Download', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1065, 1, 'en', 'admin', 'provides.providers', 'Providers', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1066, 1, 'en', 'admin', 'provides.provider_name', 'Provider Name', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1067, 1, 'en', 'admin', 'provides.approve', 'Approve', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1068, 1, 'en', 'admin', 'provides.delete', 'Delete', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1069, 1, 'en', 'admin', 'provides.add_provider', 'Add Provider', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1070, 1, 'en', 'admin', 'provides.password_confirmation', 'Password Confirmation', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1071, 1, 'en', 'admin', 'provides.update_provider', 'Update Provider', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1072, 1, 'en', 'admin', 'provides.type_allocation', 'Provider Service Type Allocation', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1073, 1, 'en', 'admin', 'provides.service_name', 'Service Name', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1074, 1, 'en', 'admin', 'provides.service_number', 'Service Number', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1075, 1, 'en', 'admin', 'provides.service_model', 'Service Model', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1076, 1, 'en', 'admin', 'provides.provider_documents', 'Provider Documents', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1077, 1, 'en', 'admin', 'provides.document_type', 'Document Type', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1078, 1, 'en', 'admin', 'provides.add_new_provider', 'Add New Provider', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1079, 1, 'en', 'admin', 'provides.total_requests', 'Total Requests', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1080, 1, 'en', 'admin', 'provides.full_name', 'Full Name', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1081, 1, 'en', 'admin', 'provides.accepted_requests', 'Accepted Requests', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1082, 1, 'en', 'admin', 'provides.cancelled_requests', 'Cancelled Requests', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1083, 1, 'en', 'admin', 'provides.service_type', 'Documents / Service Type', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1084, 1, 'en', 'admin', 'provides.online', 'Online', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1085, 1, 'en', 'admin', 'provides.Provider_Details', 'Provider Details', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1086, 1, 'en', 'admin', 'provides.Approved', 'Approved', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1087, 1, 'en', 'admin', 'provides.Not_Approved', 'Not Approved', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1088, 1, 'en', 'admin', 'provides.Total_Rides', 'Total Rides', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1089, 1, 'en', 'admin', 'provides.Total_Earning', 'Total Earning', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1090, 1, 'en', 'admin', 'provides.Commission', 'Commission', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1091, 1, 'en', 'admin', 'provides.Joined_at', 'Joined at', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1092, 1, 'en', 'admin', 'provides.Details', 'Details', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1093, 1, 'en', 'admin', 'History', 'History', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1094, 1, 'en', 'admin', 'Statements', 'Statements', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1095, 1, 'en', 'admin', 'include.profile', 'Profile', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1096, 1, 'en', 'admin', 'include.sign_out', 'Sign out', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1097, 1, 'en', 'admin', 'include.reviews', 'Reviews', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1098, 1, 'en', 'admin', 'include.add_new_promocode', 'Add New Promocode', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1099, 1, 'en', 'admin', 'include.admin_dashboard', 'Admin Dashboard', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1100, 1, 'en', 'admin', 'include.dashboard', 'Dashboard', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1101, 1, 'en', 'admin', 'include.fleet_dashboard', 'Fleet Dashboard', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1102, 1, 'en', 'admin', 'include.dispatcher_dashboard', 'Dispatcher Dashboard', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1103, 1, 'en', 'admin', 'include.account_dashboard', 'Account Dashboard', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1104, 1, 'en', 'admin', 'include.account_statements', 'Accounts Statements', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1105, 1, 'en', 'admin', 'include.dispatcher_panel', 'Dispatcher Panel', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1106, 1, 'en', 'admin', 'include.heat_map', 'Heat Map', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1107, 1, 'en', 'admin', 'include.members', 'Members', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1108, 1, 'en', 'admin', 'include.users', 'Users', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1109, 1, 'en', 'admin', 'include.list_users', 'List Users', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1110, 1, 'en', 'admin', 'include.add_new_user', 'Add New User', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1111, 1, 'en', 'admin', 'include.providers', 'Providers', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1112, 1, 'en', 'admin', 'include.list_providers', 'List Providers', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1113, 1, 'en', 'admin', 'include.add_new_provider', 'Add New Provider', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1114, 1, 'en', 'admin', 'include.dispatcher', 'Dispatcher', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1115, 1, 'en', 'admin', 'include.list_dispatcher', 'List Dispatcher', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1116, 1, 'en', 'admin', 'include.add_new_dispatcher', 'Add New Dispatcher', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1117, 1, 'en', 'admin', 'include.fleet_owner', 'Fleet Owner', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1118, 1, 'en', 'admin', 'include.list_fleets', 'List Fleets', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1119, 1, 'en', 'admin', 'include.add_new_fleet_owner', 'Add New Fleet Owner', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1120, 1, 'en', 'admin', 'include.account_manager', 'Account Manager', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1121, 1, 'en', 'admin', 'include.list_account_managers', 'List Account Managers', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1122, 1, 'en', 'admin', 'include.add_new_account_manager', 'Add New Account Manager', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1123, 1, 'en', 'admin', 'include.accounts', 'Accounts', '2021-05-25 15:50:34', '2021-05-25 15:50:34'),
(1124, 1, 'en', 'admin', 'include.dispute_manager', 'Dispute Manager', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1125, 1, 'en', 'admin', 'include.list_dispute_managers', 'List Dispute Managers', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1126, 1, 'en', 'admin', 'include.add_new_dispute_manager', 'Add New Dispute Manager', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1127, 1, 'en', 'admin', 'include.statements', 'Statements', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1128, 1, 'en', 'admin', 'include.overall_ride_statments', 'Overall Ride Statements', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1129, 1, 'en', 'admin', 'include.provider_statement', 'Provider Statement', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1130, 1, 'en', 'admin', 'include.user_statement', 'User Statement', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1131, 1, 'en', 'admin', 'include.fleet_statement', 'Fleet Statement', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1132, 1, 'en', 'admin', 'include.daily_statement', 'Daily Statement', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1133, 1, 'en', 'admin', 'include.today_statement', 'Today Statement', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1134, 1, 'en', 'admin', 'include.monthly_statement', 'Monthly Statement', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1135, 1, 'en', 'admin', 'include.yearly_statement', 'Yearly Statement', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1136, 1, 'en', 'admin', 'include.overall_ride_earnings', 'Overall Ride Earnings', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1137, 1, 'en', 'admin', 'include.provider_earnings', 'Provider Earnings', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1138, 1, 'en', 'admin', 'include.user_ride_histroy', 'User Ride Histroy', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1139, 1, 'en', 'admin', 'include.fleet_ride_histroy', 'Fleet Ride Histroy', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1140, 1, 'en', 'admin', 'include.daily_earnings', 'Daily Earnings', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1141, 1, 'en', 'admin', 'include.today_earnings', 'Today Earnings', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1142, 1, 'en', 'admin', 'include.monthly_earnings', 'Monthly Earnings', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1143, 1, 'en', 'admin', 'include.yearly_earnings', 'Yearly Earnings', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1144, 1, 'en', 'admin', 'include.statement_from', 'Ride Statement from', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1145, 1, 'en', 'admin', 'include.statement_to', 'to', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1146, 1, 'en', 'admin', 'include.details', 'Details', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1147, 1, 'en', 'admin', 'include.map', 'Map', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1148, 1, 'en', 'admin', 'include.ratings', 'Ratings', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1149, 1, 'en', 'admin', 'include.user_ratings', 'User Ratings', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1150, 1, 'en', 'admin', 'include.provider_ratings', 'Provider Ratings', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1151, 1, 'en', 'admin', 'include.requests', 'Requests', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1152, 1, 'en', 'admin', 'include.request_history', 'Request History', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1153, 1, 'en', 'admin', 'include.scheduled_rides', 'Scheduled Rides', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1154, 1, 'en', 'admin', 'include.general', 'General', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1155, 1, 'en', 'admin', 'include.service_types', 'Service Types', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1156, 1, 'en', 'admin', 'include.list_service_types', 'List Service Types', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1157, 1, 'en', 'admin', 'include.add_new_service_type', 'Add New Service Type', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1158, 1, 'en', 'admin', 'include.documents', 'Documents', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1159, 1, 'en', 'admin', 'include.list_documents', 'List Documents', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1160, 1, 'en', 'admin', 'include.add_new_document', 'Add New Document', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1161, 1, 'en', 'admin', 'include.promocodes', 'Promocodes', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1162, 1, 'en', 'admin', 'include.list_promocodes', 'List Promocodes', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1163, 1, 'en', 'admin', 'include.payment_details', 'Payment Details', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1164, 1, 'en', 'admin', 'include.payment_history', 'Payment History', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1165, 1, 'en', 'admin', 'include.payment_settings', 'Payment Settings', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1166, 1, 'en', 'admin', 'include.settings', 'Settings', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1167, 1, 'en', 'admin', 'include.site_settings', 'Site Settings', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1168, 1, 'en', 'admin', 'include.others', 'Others', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1169, 1, 'en', 'admin', 'include.cms_pages', 'Cms Pages', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1170, 1, 'en', 'admin', 'include.help', 'Help', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1171, 1, 'en', 'admin', 'include.custom_push', 'Custom Push', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1172, 1, 'en', 'admin', 'include.translations', 'Translations', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1173, 1, 'en', 'admin', 'include.account', 'Account', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1174, 1, 'en', 'admin', 'include.account_settings', 'Account Settings', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1175, 1, 'en', 'admin', 'include.change_password', 'Change Password', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1176, 1, 'en', 'admin', 'include.transaction', 'Settlements', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1177, 1, 'en', 'admin', 'include.provider_request', 'Provider Settlements', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1178, 1, 'en', 'admin', 'include.fleet_request', 'Fleet Settlements', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1179, 1, 'en', 'admin', 'include.all_transaction', 'All Transactions', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1180, 1, 'en', 'admin', 'include.wallet', 'Wallet', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1181, 1, 'en', 'admin', 'include.debit_card', 'Debit Cards', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1182, 1, 'en', 'admin', 'include.transfer', 'Transfer', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1183, 1, 'en', 'admin', 'include.logout', 'Logout', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1184, 1, 'en', 'admin', 'include.reason', 'Cancel Reasons', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1185, 1, 'en', 'admin', 'include.list_reasons', 'List Reasons', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1186, 1, 'en', 'admin', 'include.add_new_reason', 'Add New Reason', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1187, 1, 'en', 'admin', 'include.peakhour', 'Peak Hours', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1188, 1, 'en', 'admin', 'include.dispute', 'Disputes', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1189, 1, 'en', 'admin', 'include.dispute_panel', 'Dispute Panel', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1190, 1, 'en', 'admin', 'include.dispute_type', 'Dispute Types', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1191, 1, 'en', 'admin', 'include.dispute_request', 'Dispute Requests', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1192, 1, 'en', 'admin', 'include.userdispute', 'User Disputes', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1193, 1, 'en', 'admin', 'include.lostitem', 'Lost Items', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1194, 1, 'en', 'admin', 'include.notify', 'Notifications', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1195, 1, 'en', 'admin', 'include.list_notifications', 'List Notifications', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1196, 1, 'en', 'admin', 'include.add_new_notification', 'Add New Notification', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1197, 1, 'en', 'admin', 'include.offer', 'Offer', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1198, 1, 'en', 'admin', 'include.rides', 'Rides', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1199, 1, 'en', 'admin', 'include.ride_history', 'Ride History', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1200, 1, 'en', 'admin', 'include.roles', 'Roles', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1201, 1, 'en', 'admin', 'include.role_types', 'Roles Types', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1202, 1, 'en', 'admin', 'include.sub_admins', 'Adminstrators', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1203, 1, 'en', 'admin', 'account.change_password', 'Change Password', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1204, 1, 'en', 'admin', 'account.old_password', 'Old Password', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1205, 1, 'en', 'admin', 'account.password', 'Password ', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1206, 1, 'en', 'admin', 'account.password_confirmation', 'Password Confirmation', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1207, 1, 'en', 'admin', 'account.update_profile', 'Update Profile', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1208, 1, 'en', 'admin', 'account.new_password', 'New Password', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1209, 1, 'en', 'admin', 'account.retype_password', 'Re-type New Password', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1210, 1, 'en', 'admin', 'help', 'Help', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1211, 1, 'en', 'admin', 'email', 'Email', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1212, 1, 'en', 'admin', 'auth.remember_me', 'Remember Me', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1213, 1, 'en', 'admin', 'auth.reset_password', 'Reset Password', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1214, 1, 'en', 'admin', 'auth.admin_login', 'Admin Login', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1215, 1, 'en', 'admin', 'auth.login_here', 'Login Here', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1216, 1, 'en', 'admin', 'auth.sign_in', 'Sign In', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1217, 1, 'en', 'admin', 'auth.forgot_your_password', 'Forgot Your Password', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1218, 1, 'en', 'admin', 'auth.request_scheduled', 'Ride Scheduled', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1219, 1, 'en', 'admin', 'auth.request_already_scheduled', 'Ride Already Scheduled', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1220, 1, 'en', 'admin', 'promocode.add_promocode', 'Add Promocode', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1221, 1, 'en', 'admin', 'promocode.discount', 'Discount', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1222, 1, 'en', 'admin', 'promocode.expiration', 'Expiration', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1223, 1, 'en', 'admin', 'promocode.promocode', 'Promocode', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1224, 1, 'en', 'admin', 'promocode.update_promocode', 'Update Promocode', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1225, 1, 'en', 'admin', 'promocode.used_count', 'Used Count', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1226, 1, 'en', 'admin', 'promocode.promocodes', 'Promocodes', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1227, 1, 'en', 'admin', 'promocode.discount_type', 'Promocode Use ', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1228, 1, 'en', 'admin', 'promocode.percentage', 'Percentage', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1229, 1, 'en', 'admin', 'promocode.max_amount', 'Max Amount', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1230, 1, 'en', 'admin', 'promocode.promo_description', 'Description', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1231, 1, 'en', 'admin', 'reason.title', 'Cancel Reasons', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1232, 1, 'en', 'admin', 'reason.add_reason', 'Add Reason', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1233, 1, 'en', 'admin', 'reason.update_reason', 'Update Reason', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1234, 1, 'en', 'admin', 'reason.reason', 'Reason', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1235, 1, 'en', 'admin', 'reason.type', 'Type', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1236, 1, 'en', 'admin', 'reason.status', 'Status', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1237, 1, 'en', 'admin', 'peakhour.title', 'Peak Hours', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1238, 1, 'en', 'admin', 'peakhour.add_time', 'Add Peak Hour', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1239, 1, 'en', 'admin', 'peakhour.update_time', 'Update Peak Hour', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1240, 1, 'en', 'admin', 'peakhour.start_time', 'Start Time', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1241, 1, 'en', 'admin', 'peakhour.end_time', 'End Time', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1242, 1, 'en', 'admin', 'notification.title', 'Notifications', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1243, 1, 'en', 'admin', 'notification.add', 'Add Notification', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1244, 1, 'en', 'admin', 'notification.update', 'Update Notification', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1245, 1, 'en', 'admin', 'notification.notify_type', 'Type', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1246, 1, 'en', 'admin', 'notification.notify_image', 'Image', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1247, 1, 'en', 'admin', 'notification.notify_desc', 'Description', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1248, 1, 'en', 'admin', 'notification.notify_expiry', 'Expiry Date', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1249, 1, 'en', 'admin', 'notification.notify_status', 'Status', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1250, 1, 'en', 'admin', 'lostitem.title', 'Lost Items', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1251, 1, 'en', 'admin', 'lostitem.add', 'Add Lost Item', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1252, 1, 'en', 'admin', 'lostitem.update', 'Update Lost Item', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1253, 1, 'en', 'admin', 'lostitem.lost_id', 'Request Id', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1254, 1, 'en', 'admin', 'lostitem.request', 'Request Details', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1255, 1, 'en', 'admin', 'lostitem.lost_user', 'User', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1256, 1, 'en', 'admin', 'lostitem.lost_item', 'Lost Item Name', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1257, 1, 'en', 'admin', 'lostitem.lost_comments', 'Comments', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1258, 1, 'en', 'admin', 'lostitem.lost_status', 'Status', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1259, 1, 'en', 'admin', 'dispute.title', 'Disputes', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1260, 1, 'en', 'admin', 'dispute.title1', 'Request Disputes', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1261, 1, 'en', 'admin', 'dispute.add_dispute', 'Add Dispute', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1262, 1, 'en', 'admin', 'dispute.update_dispute', 'Update Dispute', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1263, 1, 'en', 'admin', 'dispute.update_dispute1', 'Update Request Dispute', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1264, 1, 'en', 'admin', 'dispute.dispute_type', 'Dispute Type', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1265, 1, 'en', 'admin', 'dispute.dispute_id', 'Id', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1266, 1, 'en', 'admin', 'dispute.dispute_request_id', 'Request Id', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1267, 1, 'en', 'admin', 'dispute.dispute_request', 'Request By', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1268, 1, 'en', 'admin', 'dispute.dispute_user', 'User', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1269, 1, 'en', 'admin', 'dispute.dispute_provider', 'Provider', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1270, 1, 'en', 'admin', 'dispute.dispute_name', 'Dispute Name', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1271, 1, 'en', 'admin', 'dispute.dispute_refund', 'Refund Amount', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1272, 1, 'en', 'admin', 'dispute.dispute_comments', 'Comments', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1273, 1, 'en', 'admin', 'dispute.dispute_status', 'Status', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1274, 1, 'en', 'admin', 'dispute.new_dispute', 'New dispute created!', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1275, 1, 'en', 'admin', 'users.Users', 'Users', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1276, 1, 'en', 'admin', 'users.Add_User', 'Add User', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1277, 1, 'en', 'admin', 'users.Update_User', 'Update User', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1278, 1, 'en', 'admin', 'users.Rating', 'Rating', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1279, 1, 'en', 'admin', 'users.Wallet_Amount', 'Wallet Amount', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1280, 1, 'en', 'admin', 'users.User_Details', 'User Details', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1281, 1, 'en', 'admin', 'users.name', 'User Name', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1282, 1, 'en', 'admin', 'users.Total_Rides', 'Total Rides', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1283, 1, 'en', 'admin', 'users.Total_Spending', 'Total Spending', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1284, 1, 'en', 'admin', 'users.Joined_at', 'Joined at', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1285, 1, 'en', 'admin', 'users.Details', 'Details', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1286, 1, 'en', 'admin', 'fleets.name', 'Fleet Name', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1287, 1, 'en', 'admin', 'fleets.Total_Rides', 'Total Rides', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1288, 1, 'en', 'admin', 'fleets.Total_Earnings', 'Total Earnings', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1289, 1, 'en', 'admin', 'fleets.Joined_at', 'Joined at', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1290, 1, 'en', 'admin', 'fleets.Details', 'Details', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1291, 1, 'en', 'admin', 'name', 'Name', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1292, 1, 'en', 'admin', 'first_name', 'First Name', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1293, 1, 'en', 'admin', 'last_name', 'Last Name', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1294, 1, 'en', 'admin', 'picture', 'Picture', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1295, 1, 'en', 'admin', 'mobile', 'Mobile', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1296, 1, 'en', 'admin', 'cancel', 'Cancel', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1297, 1, 'en', 'admin', 'view', 'View', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1298, 1, 'en', 'admin', 'update', 'Update', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1299, 1, 'en', 'admin', 'id', 'ID', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1300, 1, 'en', 'admin', 'gender', 'Gender', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1301, 1, 'en', 'admin', 'address', 'Address', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1302, 1, 'en', 'admin', 'action', 'Action', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1303, 1, 'en', 'admin', 'Enable', 'Enable', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1304, 1, 'en', 'admin', 'Disable', 'Disable', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1305, 1, 'en', 'admin', 'type', 'Type', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1306, 1, 'en', 'admin', 'status', 'Status', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1307, 1, 'en', 'admin', 'message', 'Message', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1308, 1, 'en', 'admin', 'amount', 'Amount', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1309, 1, 'en', 'admin', 'company', 'Company', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1310, 1, 'en', 'admin', 'logo', 'Logo', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1311, 1, 'en', 'admin', 'service_select', 'Please Create a Service Type', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1312, 1, 'en', 'admin', 'pages.pages', 'Pages', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1313, 1, 'en', 'admin', 'request.Booking_ID', 'Booking ID', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1314, 1, 'en', 'admin', 'request.User_Name', 'User Name', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1315, 1, 'en', 'admin', 'request.Date_Time', 'Date &amp; Time', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1316, 1, 'en', 'admin', 'request.Provider_Name', 'Provider Name', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1317, 0, 'en', 'admin', 'request.Payment_Mode', 'Payment Mode', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1318, 1, 'en', 'admin', 'request.Payment_Status', 'Payment Status', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1319, 1, 'en', 'admin', 'request.Request_Id', 'Request Id', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1320, 1, 'en', 'admin', 'request.Scheduled_Date_Time', 'Scheduled Date & Time', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1321, 1, 'en', 'admin', 'request.picked_up', 'Picked up', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1322, 1, 'en', 'admin', 'request.dropped', 'Dropped', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1323, 1, 'en', 'admin', 'request.request_details', 'Request Details', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1324, 1, 'en', 'admin', 'request.commission', 'Commission', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1325, 1, 'en', 'admin', 'request.date', 'Dated on', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1326, 1, 'en', 'admin', 'request.status', 'Status', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1327, 1, 'en', 'admin', 'request.earned', 'Earned', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1328, 1, 'en', 'admin', 'request.provider_not_assigned', 'Provider not yet assigned!', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1329, 1, 'en', 'admin', 'request.total_distance', 'Total Distance', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1330, 1, 'en', 'admin', 'request.ride_scheduled_time', 'Ride Scheduled Time', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1331, 1, 'en', 'admin', 'request.ride_start_time', 'Ride Start Time', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1332, 1, 'en', 'admin', 'request.ride_end_time', 'Ride End Time', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1333, 1, 'en', 'admin', 'request.pickup_address', 'Pickup Address', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1334, 1, 'en', 'admin', 'request.drop_address', 'Drop Address', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1335, 1, 'en', 'admin', 'request.base_price', 'Base Price', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1336, 1, 'en', 'admin', 'request.minutes_price', 'Minutes Price', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1337, 1, 'en', 'admin', 'request.hours_price', 'Hours Price', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1338, 1, 'en', 'admin', 'request.distance_price', 'Distance Price', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1339, 1, 'en', 'admin', 'request.fleet_commission', 'Fleet Commission', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1340, 1, 'en', 'admin', 'request.discount_price', 'Discount Price', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1341, 1, 'en', 'admin', 'request.tax_price', 'Tax Price', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1342, 1, 'en', 'admin', 'request.surge_price', 'Surge Price', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1343, 1, 'en', 'admin', 'request.tips', 'Tips', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1344, 1, 'en', 'admin', 'request.total_amount', 'Total Amount', '2021-05-25 15:50:35', '2021-05-25 15:50:35');
INSERT INTO `ltm_translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1345, 1, 'en', 'admin', 'request.wallet_deduction', 'Wallet Deduction', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1346, 1, 'en', 'admin', 'request.paid_amount', 'Paid Amount', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1347, 1, 'en', 'admin', 'request.provider_earnings', 'Provider Earnings', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1348, 1, 'en', 'admin', 'request.ride_status', 'Ride Status', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1349, 1, 'en', 'admin', 'request.cash_amount', 'Cash Amount', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1350, 1, 'en', 'admin', 'request.card_amount', 'Card Amount', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1351, 1, 'en', 'admin', 'request.waiting_charge', 'Waiting Charge', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1352, 1, 'en', 'admin', 'request.peak_amount', 'Peak Hours Charge', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1353, 1, 'en', 'admin', 'request.peak_commission', 'Peak Hours Commission', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1354, 1, 'en', 'admin', 'request.waiting_commission', 'Waiting Charge Commission', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1355, 1, 'en', 'admin', 'request.transaction_id', 'Transaction ID', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1356, 1, 'en', 'admin', 'request.user_rating', 'User Rating', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1357, 1, 'en', 'admin', 'request.provider_rating', 'Provider Rating', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1358, 1, 'en', 'admin', 'request.user_comment', 'User Comment', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1359, 1, 'en', 'admin', 'request.provider_comment', 'Provider Comment', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1360, 1, 'en', 'admin', 'request.item_to_deliver', 'Item To Deliver', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1361, 1, 'en', 'admin', 'request.delivery_address', 'Delivery Address', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1362, 1, 'en', 'admin', 'request.receiver_name', 'Receiver Name', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1363, 1, 'en', 'admin', 'request.receiver_mobile', 'Receiver Mobile', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1364, 1, 'en', 'admin', 'request.any_instructions', 'Any Instructions', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1365, 1, 'en', 'admin', 'review.Request_ID', 'Request ID', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1366, 1, 'en', 'admin', 'review.Rating', 'Rating', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1367, 1, 'en', 'admin', 'review.Comments', 'Comments', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1368, 1, 'en', 'admin', 'review.Provider_Reviews', 'Provider Reviews', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1369, 1, 'en', 'admin', 'review.User_Reviews', 'User Reviews', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1370, 1, 'en', 'admin', 'review.transaction_id', 'Transaction ID', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1371, 1, 'en', 'admin', 'dashboard.Rides', 'Total No. of Rides', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1372, 1, 'en', 'admin', 'dashboard.Revenue', 'Revenue', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1373, 1, 'en', 'admin', 'dashboard.service', 'No. of Service Types', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1374, 1, 'en', 'admin', 'dashboard.cancel_count', 'User Cancelled Count', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1375, 1, 'en', 'admin', 'dashboard.provider_cancel_count', 'Provider Cancelled Count', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1376, 1, 'en', 'admin', 'dashboard.fleets', 'No. of Fleets', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1377, 1, 'en', 'admin', 'dashboard.providers', 'No. of Providers', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1378, 1, 'en', 'admin', 'dashboard.scheduled', 'No. of Scheduled Rides', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1379, 1, 'en', 'admin', 'dashboard.Recent_Rides', 'Recent Rides', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1380, 1, 'en', 'admin', 'dashboard.View_Ride_Details', 'View Ride Details', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1381, 1, 'en', 'admin', 'dashboard.No_Details_Found', 'No Details Found', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1382, 1, 'en', 'admin', 'dashboard.cancel_rides', 'Cancelled Rides', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1383, 1, 'en', 'admin', 'dashboard.over_earning', 'Over All Earning', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1384, 1, 'en', 'admin', 'dashboard.over_commission', 'Over All Commission', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1385, 1, 'en', 'admin', 'dashboard.total', 'Total', '2021-05-25 15:50:35', '2021-05-25 15:50:35'),
(1386, 1, 'en', 'admin', 'heatmap.Ride_Heatmap', 'Heatmap', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1387, 1, 'en', 'admin', 'heatmap.godseye', 'Godseye', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1388, 1, 'en', 'admin', 'push.Push_Notification', 'Push Notification', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1389, 1, 'en', 'admin', 'push.Sent_to', 'Sent to', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1390, 1, 'en', 'admin', 'push.message', 'Sent Message', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1391, 1, 'en', 'admin', 'push.Push_Now', 'Push Now', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1392, 1, 'en', 'admin', 'push.Schedule_Push', 'Schedule Push', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1393, 1, 'en', 'admin', 'push.Condition', 'Condition', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1394, 1, 'en', 'admin', 'push.Notification_History', 'Notification History', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1395, 1, 'en', 'admin', 'push.Sent_on', 'Sent on', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1396, 1, 'en', 'admin', 'transaction_ref', 'Transaction Id', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1397, 1, 'en', 'admin', 'transaction_desc', 'Description', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1398, 1, 'en', 'admin', 'sno', 'Sno', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1399, 1, 'en', 'admin', 'by', 'Send / Receive By', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1400, 1, 'en', 'admin', 'current_balance', 'Current Balance', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1401, 1, 'en', 'admin', 'transfer', 'Transfer', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1402, 1, 'en', 'admin', 'send', 'Send', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1403, 1, 'en', 'admin', 'datetime', 'Date &amp; Time', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1404, 1, 'en', 'admin', 'approve', 'Send', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1405, 1, 'en', 'admin', 'settle', 'Settle', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1406, 1, 'en', 'admin', 'account_manager_msgs.account_saved', 'Account Manager Details Saved Successfully', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1407, 1, 'en', 'admin', 'account_manager_msgs.account_not_found', 'Account Manager Not Found', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1408, 1, 'en', 'admin', 'account_manager_msgs.account_update', 'Account Manager Updated Successfully', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1409, 1, 'en', 'admin', 'account_manager_msgs.account_delete', 'Account Manager Deleted Successfully', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1410, 1, 'en', 'admin', 'dispute_manager_msgs.dispute_saved', 'Dispute Manager Details Saved Successfully', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1411, 1, 'en', 'admin', 'dispute_manager_msgs.dispute_not_found', 'Dispute Manager Not Found', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1412, 1, 'en', 'admin', 'dispute_manager_msgs.dispute_update', 'Dispute Manager Updated Successfully', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1413, 1, 'en', 'admin', 'dispute_manager_msgs.dispute_delete', 'Dispute Manager Deleted Successfully', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1414, 1, 'en', 'admin', 'dispatcher_msgs.dispatcher_saved', 'Dispatcher Details Saved Successfully', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1415, 1, 'en', 'admin', 'dispatcher_msgs.dispatcher_not_found', 'Dispatcher Not Found', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1416, 1, 'en', 'admin', 'dispatcher_msgs.dispatcher_update', 'Dispatcher Updated Successfully', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1417, 1, 'en', 'admin', 'dispatcher_msgs.dispatcher_delete', 'Dispatcher Deleted Successfully', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1418, 1, 'en', 'admin', 'dispatcher_msgs.request_assigned', 'Request Assigned to Provider', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1419, 1, 'en', 'admin', 'fleet_msgs.fleet_saved', 'Fleet Details Saved Successfully', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1420, 1, 'en', 'admin', 'fleet_msgs.fleet_not_found', 'Fleet Not Found', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1421, 1, 'en', 'admin', 'fleet_msgs.fleet_update', 'Fleet Updated Successfully', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1422, 1, 'en', 'admin', 'fleet_msgs.fleet_delete', 'Fleet Deleted Successfully', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1423, 1, 'en', 'admin', 'fleet_msgs.fleet_settlement', 'Fleet settlement pending, you could not able to delete', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1424, 1, 'en', 'admin', 'provider_msgs.provider_saved', 'Provider Details Saved Successfully', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1425, 1, 'en', 'admin', 'provider_msgs.provider_not_found', 'Provider Not Found', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1426, 1, 'en', 'admin', 'provider_msgs.provider_update', 'Provider Updated Successfully', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1427, 1, 'en', 'admin', 'provider_msgs.provider_delete', 'Provider Deleted Successfully', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1428, 1, 'en', 'admin', 'provider_msgs.provider_approve', 'Provider approved', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1429, 1, 'en', 'admin', 'provider_msgs.provider_disapprove', 'Provider disapproved', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1430, 1, 'en', 'admin', 'provider_msgs.document_pending', 'Documents verfication pending', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1431, 1, 'en', 'admin', 'provider_msgs.document_approved', 'Provider document has been approved', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1432, 1, 'en', 'admin', 'provider_msgs.document_delete', 'Provider document has been deleted', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1433, 1, 'en', 'admin', 'provider_msgs.document_not_found', 'Provider document not found', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1434, 1, 'en', 'admin', 'provider_msgs.provider_settlement', 'Provider settlement pending, you could not able to delete', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1435, 1, 'en', 'admin', 'provider_msgs.service_type_pending', 'Provider has not been assigned a service type', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1436, 1, 'en', 'admin', 'provider_msgs.provider_pending', 'Provider has not been assigned a service type or documents verfication pending', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1437, 1, 'en', 'admin', 'provider_msgs.provider_service_update', 'Provider service type updated successfully', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1438, 1, 'en', 'admin', 'provider_msgs.provider_service_delete', 'Provider service has been deleted', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1439, 1, 'en', 'admin', 'provider_msgs.provider_service_not_found', 'Provider service not found', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1440, 1, 'en', 'admin', 'provider_msgs.trip_cancelled', 'Trip Cancelled Successfully', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1441, 1, 'en', 'admin', 'admins.user_saved', 'Sub Admin Saved Successfully', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1442, 1, 'en', 'admin', 'admins.user_not_found', 'Sub Admin Not Found', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1443, 1, 'en', 'admin', 'admins.Add_User', 'Add Admin', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1444, 1, 'en', 'admin', 'admins.update_User', 'Update Admin', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1445, 1, 'en', 'admin', 'admins.user_delete', 'Sub Admin Deleted Successfully', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1446, 1, 'en', 'admin', 'admins.role_not_found', 'Role Not Found', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1447, 1, 'en', 'admin', 'user_msgs.user_saved', 'User Saved Successfully', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1448, 1, 'en', 'admin', 'user_msgs.user_not_found', 'User Not Found', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1449, 1, 'en', 'admin', 'user_msgs.user_update', 'User Updated Successfully', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1450, 1, 'en', 'admin', 'user_msgs.user_delete', 'User Deleted Successfully', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1451, 1, 'en', 'admin', 'document_msgs.document_saved', 'Document Saved Successfully', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1452, 1, 'en', 'admin', 'document_msgs.document_not_found', 'Document Not Found', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1453, 1, 'en', 'admin', 'document_msgs.document_update', 'Document Updated Successfully', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1454, 1, 'en', 'admin', 'document_msgs.document_delete', 'Document Deleted Successfully', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1455, 1, 'en', 'admin', 'favourite_location_msgs.favourite_saved', 'Favourite Location Saved Successfully', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1456, 1, 'en', 'admin', 'favourite_location_msgs.favourite_not_found', 'Favourite Location Not Found', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1457, 1, 'en', 'admin', 'favourite_location_msgs.favourite_exists', 'Favourite Location Already Exists', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1458, 1, 'en', 'admin', 'favourite_location_msgs.favourite_update', 'Favourite Location Updated Successfully', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1459, 1, 'en', 'admin', 'favourite_location_msgs.favourite_delete', 'Favourite Location Deleted Successfully', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1460, 1, 'en', 'admin', 'promocode_msgs.promocode_saved', 'Promocode Saved Successfully', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1461, 1, 'en', 'admin', 'promocode_msgs.promocode_not_found', 'Promocode Not Found', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1462, 1, 'en', 'admin', 'promocode_msgs.promocode_exists', 'Promocode Already Exists', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1463, 1, 'en', 'admin', 'promocode_msgs.promocode_update', 'Promocode Updated Successfully', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1464, 1, 'en', 'admin', 'promocode_msgs.promocode_delete', 'Promocode Deleted Successfully', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1465, 1, 'en', 'admin', 'peakhour_msgs.peakhour_saved', 'Peak Hour Saved Successfully', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1466, 1, 'en', 'admin', 'peakhour_msgs.peakhour_not_found', 'Peak Hour Not Found', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1467, 1, 'en', 'admin', 'peakhour_msgs.peakhour_exists', 'Peak Hour Already Exists', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1468, 1, 'en', 'admin', 'peakhour_msgs.peakhour_update', 'Peak Hour Updated Successfully', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1469, 1, 'en', 'admin', 'peakhour_msgs.peakhour_delete', 'Peak Hour Deleted Successfully', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1470, 1, 'en', 'admin', 'dispute_msgs.saved', 'Dispute Saved Successfully', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1471, 1, 'en', 'admin', 'dispute_msgs.not_found', 'Dispute Not Found', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1472, 1, 'en', 'admin', 'dispute_msgs.exists', 'Dispute Already Exists', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1473, 1, 'en', 'admin', 'dispute_msgs.update', 'Dispute Updated Successfully', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1474, 1, 'en', 'admin', 'dispute_msgs.delete', 'Dispute Deleted Successfully', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1475, 1, 'en', 'admin', 'notification_msgs.saved', 'Notification Saved Successfully', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1476, 1, 'en', 'admin', 'notification_msgs.not_found', 'Notification Not Found', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1477, 1, 'en', 'admin', 'notification_msgs.exists', 'Notification Already Exists', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1478, 1, 'en', 'admin', 'notification_msgs.update', 'Notification Updated Successfully', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1479, 1, 'en', 'admin', 'notification_msgs.delete', 'Notification Deleted Successfully', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1480, 1, 'en', 'admin', 'lostitem_msgs.saved', 'Lost Item Request Saved Successfully', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1481, 1, 'en', 'admin', 'lostitem_msgs.not_found', 'Lost Item Request Not Found', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1482, 1, 'en', 'admin', 'lostitem_msgs.exists', 'Lost Item Request Already Exists', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1483, 1, 'en', 'admin', 'lostitem_msgs.update', 'Lost Item Request Updated Successfully', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1484, 1, 'en', 'admin', 'lostitem_msgs.delete', 'Lost Item Request Deleted Successfully', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1485, 1, 'en', 'admin', 'reason_msgs.reason_saved', 'Reason Saved Successfully', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1486, 1, 'en', 'admin', 'reason_msgs.reason_not_found', 'Reason Not Found', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1487, 1, 'en', 'admin', 'reason_msgs.reason_exists', 'Reason Already Exists', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1488, 1, 'en', 'admin', 'reason_msgs.reason_update', 'Reason Updated Successfully', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1489, 1, 'en', 'admin', 'reason_msgs.reason_delete', 'Reason Deleted Successfully', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1490, 1, 'en', 'admin', 'service_type_msgs.service_type_saved', 'Service Type Saved Successfully', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1491, 1, 'en', 'admin', 'service_type_msgs.service_type_not_found', 'Service Type Not Found', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1492, 1, 'en', 'admin', 'service_type_msgs.service_type_exists', 'Service Type Already Exists', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1493, 1, 'en', 'admin', 'service_type_msgs.service_type_update', 'Service Type Updated Successfully', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1494, 1, 'en', 'admin', 'service_type_msgs.service_type_delete', 'Service Type Deleted Successfully', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1495, 1, 'en', 'admin', 'service_type_msgs.service_type_using', 'Provider using this service, you cannot able to delete', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1496, 1, 'en', 'admin', 'payment_msgs.amount_send', 'Amount successfully send', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1497, 1, 'en', 'admin', 'payment_msgs.account_not_found', 'Strip Account not found', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1498, 1, 'en', 'admin', 'payment_msgs.amount_added', ' added to your wallet', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1499, 1, 'en', 'admin', 'permissions', 'Permissions', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1500, 1, 'en', 'admin', 'roles.role_saved', 'Role Saved Successfully', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1501, 1, 'en', 'admin', 'roles.role_not_found', 'Role Not Found', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1502, 1, 'en', 'admin', 'roles.role_update', 'Role Updated Successfully', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1503, 1, 'en', 'admin', 'roles.role_delete', 'Role Deleted Successfully', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1504, 1, 'en', 'admin', 'roles.role_name', 'Role', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1505, 1, 'en', 'admin', 'roles.add_role', 'Add Role', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1506, 1, 'en', 'admin', 'roles.update_role', 'Update Role', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1507, 1, 'en', 'api', 'record_updated', 'Record Updated Successfully', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1508, 1, 'en', 'api', 'user.incorrect_password', 'Incorrect Password', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1509, 1, 'en', 'api', 'user.incorrect_old_password', 'Incorrect old Password', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1510, 1, 'en', 'api', 'user.change_password', 'Required is new password should \r\nnot be same as old password', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1511, 1, 'en', 'api', 'user.password_updated', 'Password Updated', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1512, 1, 'en', 'api', 'user.location_updated', 'Location Updated', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1513, 1, 'en', 'api', 'user.language_updated', 'Language Updated', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1514, 1, 'en', 'api', 'user.profile_updated', 'Profile Updated', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1515, 1, 'en', 'api', 'user.user_not_found', 'User Not Found', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1516, 1, 'en', 'api', 'user.not_paid', 'User Not Paid', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1517, 1, 'en', 'api', 'user.referral_amount', 'Referral Amount', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1518, 1, 'en', 'api', 'user.referral_count', 'Referral Count', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1519, 1, 'en', 'api', 'user.invite_friends', '<p style=\'color:##FDFEFE;\'>Refer your 0 friends<br>and earn <span style=\'color:#f06292\'>₹0</span> per head</p>', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1520, 1, 'en', 'api', 'provider.incorrect_password', 'Incorrect Password', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1521, 1, 'en', 'api', 'provider.incorrect_old_password', 'Incorrect old Password', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1522, 1, 'en', 'api', 'provider.change_password', 'Required is new password should \r\nnot be same as old password', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1523, 1, 'en', 'api', 'provider.password_updated', 'Password Updated', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1524, 1, 'en', 'api', 'provider.location_updated', 'Location Updated', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1525, 1, 'en', 'api', 'provider.language_updated', 'Language Updated', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1526, 1, 'en', 'api', 'provider.profile_updated', 'Profile Updated', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1527, 1, 'en', 'api', 'provider.provider_not_found', 'Provider Not Found', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1528, 1, 'en', 'api', 'provider.not_approved', 'You account has not been approved for driving', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1529, 1, 'en', 'api', 'provider.incorrect_email', 'The email address or password you entered is incorrect', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1530, 1, 'en', 'api', 'provider.referral_amount', 'Referral Amount', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1531, 1, 'en', 'api', 'provider.referral_count', 'Referral Count', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1532, 1, 'en', 'api', 'provider.invite_friends', '<p style=\'color:##FDFEFE;\'>Refer your 0 friends<br>and earn <span style=\'color:#f06292\'>₹0</span> per head</p>', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1533, 1, 'en', 'api', 'ride.request_inprogress', 'Already Request in Progress', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1534, 1, 'en', 'api', 'ride.no_providers_found', 'No Drivers Found', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1535, 1, 'en', 'api', 'ride.request_cancelled', 'Your Ride Cancelled', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1536, 1, 'en', 'api', 'ride.already_cancelled', 'Already Ride Cancelled', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1537, 1, 'en', 'api', 'ride.ride_cancelled', 'Ride Cancelled', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1538, 1, 'en', 'api', 'ride.already_onride', 'Already You are Onride', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1539, 1, 'en', 'api', 'ride.provider_rated', 'Driver Rated', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1540, 1, 'en', 'api', 'ride.request_scheduled', 'Ride Scheduled', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1541, 1, 'en', 'api', 'ride.request_already_scheduled', 'Ride Already Scheduled', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1542, 1, 'en', 'api', 'ride.request_modify_location', 'User Changed Destination Address', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1543, 1, 'en', 'api', 'ride.request_completed', 'Request Completed', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1544, 1, 'en', 'api', 'ride.request_not_completed', 'Request not yet completed', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1545, 1, 'en', 'api', 'ride.request_rejected', 'Request Rejected Successfully', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1546, 1, 'en', 'api', 'payment_success', 'Payment Success', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1547, 1, 'en', 'api', 'invalid', 'Invalid credentials', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1548, 1, 'en', 'api', 'unauthenticated', 'Unauthenticated', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1549, 1, 'en', 'api', 'something_went_wrong', 'Something Went Wrong', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1550, 1, 'en', 'api', 'destination_changed', 'Destination location changed', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1551, 1, 'en', 'api', 'unable_accept', 'Unable to accept, Please try again later', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1552, 1, 'en', 'api', 'connection_err', 'Connection Error', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1553, 1, 'en', 'api', 'logout_success', 'Logged out Successfully', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1554, 1, 'en', 'api', 'email_available', 'Email Available', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1555, 1, 'en', 'api', 'email_not_available', 'Email Not Available', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1556, 1, 'en', 'api', 'mobile_exist', 'Mobile Number Already Exists', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1557, 1, 'en', 'api', 'country_code', 'Country code is required.', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1558, 1, 'en', 'api', 'email_exist', 'Email Already Exists', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1559, 1, 'en', 'api', 'available', 'Data Available', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1560, 1, 'en', 'api', 'services_not_found', 'Services Not Found', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1561, 1, 'en', 'api', 'promocode_applied', 'Promocode Applied', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1562, 1, 'en', 'api', 'promocode_expired', 'Promocode Expired', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1563, 1, 'en', 'api', 'promocode_already_in_use', 'Promocode Already in Use', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1564, 1, 'en', 'api', 'paid', 'Paid', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1565, 1, 'en', 'api', 'added_to_your_wallet', 'Added to your Wallet', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1566, 1, 'en', 'api', 'amount_success', 'Request amount added', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1567, 1, 'en', 'api', 'amount_cancel', 'Request has been cancelled', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1568, 1, 'en', 'api', 'amount_max', 'The amount may not be greater than ', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1569, 1, 'en', 'api', 'card_already', 'Card Already Added', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1570, 1, 'en', 'api', 'card_added', 'Card Added', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1571, 1, 'en', 'api', 'card_deleted', 'Card Deleted', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1572, 1, 'en', 'api', 'otp', 'Otp Is Wrong', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1573, 1, 'en', 'api', 'push.request_accepted', 'Your Ride Accepted by a Driver', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1574, 1, 'en', 'api', 'push.arrived', 'Driver Arrived at your Location', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1575, 1, 'en', 'api', 'push.pickedup', 'Ride Started', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1576, 1, 'en', 'api', 'push.complete', 'Ride Completed', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1577, 1, 'en', 'api', 'push.rate', 'Rated Successfully', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1578, 1, 'en', 'api', 'push.dropped', 'Your ride is completed successfully. you have to pay', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1579, 1, 'en', 'api', 'push.incoming_request', 'New Incoming Ride', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1580, 1, 'en', 'api', 'push.added_money_to_wallet', ' Added to your Wallet', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1581, 1, 'en', 'api', 'push.charged_from_wallet', ' Charged from your Wallet', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1582, 1, 'en', 'api', 'push.document_verfied', 'Your Documents are verified, Now you are ready to Start your Business', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1583, 1, 'en', 'api', 'push.provider_not_available', 'Sorry for inconvience time, Our partner or busy. Please try after some time', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1584, 1, 'en', 'api', 'push.user_cancelled', 'User Cancelled the Ride', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1585, 1, 'en', 'api', 'push.provider_cancelled', 'Driver Cancelled the Ride', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1586, 1, 'en', 'api', 'push.schedule_start', 'Your schedule ride has been started', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1587, 1, 'en', 'api', 'push.provider_waiting_start', 'Driver Started the Waiting Time', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1588, 1, 'en', 'api', 'push.provider_waiting_end', 'Driver Stopped the Waiting Time', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1589, 1, 'en', 'api', 'push.provider_status_hold', 'Go Offline if you want to have a rest', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1590, 1, 'en', 'api', 'transaction.admin_commission', 'admin commission', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1591, 1, 'en', 'api', 'transaction.fleet_debit', 'fleet commission debited', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1592, 1, 'en', 'api', 'transaction.fleet_add', 'fleet commission added', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1593, 1, 'en', 'api', 'transaction.fleet_recharge', 'fleet commission recharge', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1594, 1, 'en', 'api', 'transaction.discount_apply', 'discount applied', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1595, 1, 'en', 'api', 'transaction.discount_refund', 'discount amount refund', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1596, 1, 'en', 'api', 'transaction.discount_recharge', 'provider discount amount recharge', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1597, 1, 'en', 'api', 'transaction.tax_credit', 'tax amount debited', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1598, 1, 'en', 'api', 'transaction.tax_debit', 'tax amount credited', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1599, 1, 'en', 'api', 'transaction.provider_credit', 'ride amount added', '2021-05-25 15:50:36', '2021-05-25 15:50:36'),
(1600, 1, 'en', 'api', 'transaction.provider_recharge', 'provider ride amount recharge', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1601, 1, 'en', 'api', 'transaction.user_recharge', 'recharge', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1602, 1, 'en', 'api', 'transaction.user_trip', 'trip', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1603, 1, 'en', 'api', 'transaction.referal_recharge', 'Referal recharge', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1604, 1, 'en', 'api', 'transaction.dispute_refund', 'Dispute refund', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1605, 1, 'en', 'api', 'transaction.peak_commission', 'Peak hours commission', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1606, 1, 'en', 'api', 'transaction.waiting_commission', 'Waiting charges commission', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1607, 1, 'en', 'auth', 'failed', 'These credentials do not match our records.', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1608, 1, 'en', 'auth', 'throttle', 'Too many login attempts. Please try again in :seconds seconds.', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1609, 1, 'en', 'pagination', 'previous', '&laquo; Previous', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1610, 1, 'en', 'pagination', 'next', 'Next &raquo;', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1611, 1, 'en', 'passwords', 'password', 'Passwords must be at least six characters and match the confirmation.', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1612, 1, 'en', 'passwords', 'reset', 'Your password has been reset!', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1613, 1, 'en', 'passwords', 'sent', 'We have e-mailed your password reset link!', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1614, 1, 'en', 'passwords', 'token', 'This password reset token is invalid.', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1615, 1, 'en', 'passwords', 'user', 'We can\'t find a user with that e-mail address.', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1616, 1, 'en', 'provider', 'profile.help', 'Help', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1617, 1, 'en', 'provider', 'profile.my_profile', 'My Profile', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1618, 1, 'en', 'provider', 'profile.change_password', 'Change Password', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1619, 1, 'en', 'provider', 'profile.logout', 'Logout', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1620, 1, 'en', 'provider', 'profile.profile', 'Profile', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1621, 1, 'en', 'provider', 'profile.manage_documents', 'Manage Documents', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1622, 1, 'en', 'provider', 'profile.update_location', 'Update Location', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1623, 1, 'en', 'provider', 'profile.first_name', 'First Name', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1624, 1, 'en', 'provider', 'profile.last_name', 'Last Name', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1625, 1, 'en', 'provider', 'profile.avatar', 'Avatar', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1626, 1, 'en', 'provider', 'profile.phone', 'Phone', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1627, 1, 'en', 'provider', 'profile.language', 'Language', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1628, 1, 'en', 'provider', 'profile.address', 'Address', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1629, 1, 'en', 'provider', 'profile.full_address', 'Enter Suite, Floor, Apt (optional)', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1630, 1, 'en', 'provider', 'profile.city', 'City', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1631, 1, 'en', 'provider', 'profile.country', 'Country', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1632, 1, 'en', 'provider', 'profile.pin', 'Postal Code', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1633, 1, 'en', 'provider', 'profile.service_type', 'Service Type', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1634, 1, 'en', 'provider', 'profile.car_number', 'Car Number', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1635, 1, 'en', 'provider', 'profile.car_model', 'Car Model', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1636, 1, 'en', 'provider', 'profile.driver_document', 'Driver Documents', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1637, 1, 'en', 'provider', 'profile.vehicle_document', 'Vehicle Documents', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1638, 1, 'en', 'provider', 'profile.enter_location', 'Enter a location', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1639, 1, 'en', 'provider', 'profile.update', 'Update', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1640, 1, 'en', 'provider', 'profile.change_mobile', 'Change Mobile Number', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1641, 1, 'en', 'provider', 'profile.verify', 'Verify', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1642, 1, 'en', 'provider', 'profile.verified', 'Verified', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1643, 1, 'en', 'provider', 'profile.ride', 'Ride', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1644, 1, 'en', 'provider', 'profile.drive', 'Drive', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1645, 1, 'en', 'provider', 'profile.cities', 'Cities', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1646, 1, 'en', 'provider', 'profile.fare_estimate', 'Fare Estimate', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1647, 1, 'en', 'provider', 'profile.signup_to_ride', 'Signup to Ride', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1648, 1, 'en', 'provider', 'profile.become_a_driver', 'Become a Driver', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1649, 1, 'en', 'provider', 'profile.ride_now', 'Ride Now', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1650, 1, 'en', 'provider', 'profile.get_app_on', 'Get App on', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1651, 1, 'en', 'provider', 'profile.connect_us', 'Connect us', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1652, 1, 'en', 'provider', 'profile.home', 'Home', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1653, 1, 'en', 'provider', 'profile.my_trips', 'My Trips', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1654, 1, 'en', 'provider', 'profile.notifications', 'Notifications', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1655, 1, 'en', 'provider', 'profile.partner_earnings', 'Partner Earnings', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1656, 1, 'en', 'provider', 'profile.incoming_request', 'Incoming Request', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1657, 1, 'en', 'provider', 'profile.paul_walker', 'Paul Walker', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1658, 1, 'en', 'provider', 'profile.accept', 'Accept', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1659, 1, 'en', 'provider', 'profile.cancel', 'Cancel', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1660, 1, 'en', 'provider', 'profile.wallet_transaction', 'Wallet Transaction', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1661, 1, 'en', 'provider', 'profile.transfer', 'Transfer', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1662, 1, 'en', 'provider', 'profile.upload', 'Upload', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1663, 1, 'en', 'provider', 'profile.error_msg', 'can only contain alphanumeric characters and . - spaces', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1664, 1, 'en', 'provider', 'profile.error_phone', 'Incorrect phone number', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1665, 1, 'en', 'provider', 'profile.refer_friend', 'Refer a Friend', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1666, 1, 'en', 'provider', 'profile.notify', 'Notifications', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1667, 1, 'en', 'provider', 'profile.qr_code', 'QR Code', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1668, 1, 'en', 'provider', 'profile.paypal_email', 'Paypal Email', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1669, 1, 'en', 'provider', 'partner.payment', 'Payment Statements', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1670, 1, 'en', 'provider', 'partner.upcoming', 'Upcoming', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1671, 1, 'en', 'provider', 'partner.total_earnings', 'Total Earnings', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1672, 1, 'en', 'provider', 'partner.trips_completed', 'TRIPS COMPLETED TODAY', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1673, 1, 'en', 'provider', 'partner.daily_trip', 'DAILY TRIP TARGET', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1674, 1, 'en', 'provider', 'partner.fully_completed', 'FULLY COMPLETED TRIPS', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1675, 1, 'en', 'provider', 'partner.acceptance', 'ACCEPTANCE RATE', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1676, 1, 'en', 'provider', 'partner.driver_cancel', 'DRIVER CANCELLATIONS', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1677, 1, 'en', 'provider', 'partner.weekly_earning', 'Weekly Earnings', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1678, 1, 'en', 'provider', 'partner.trip_earning', 'Trip Earnings', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1679, 1, 'en', 'provider', 'partner.estimate_payout', 'Estimated Payout', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1680, 1, 'en', 'provider', 'partner.daily_earnings', 'Daily Earnings', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1681, 1, 'en', 'provider', 'partner.status', 'Status', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1682, 1, 'en', 'provider', 'partner.all_trip', 'All Trips', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1683, 1, 'en', 'provider', 'partner.completed', 'Completed', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1684, 1, 'en', 'provider', 'partner.pending', 'Pending', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1685, 1, 'en', 'provider', 'partner.pickup', 'Pickup Time', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1686, 1, 'en', 'provider', 'partner.booking_id', 'Booking Id', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1687, 1, 'en', 'provider', 'partner.vehicle', 'Vehicle', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1688, 1, 'en', 'provider', 'partner.duration', 'Duration', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1689, 1, 'en', 'provider', 'partner.distance(km)', 'Distance', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1690, 1, 'en', 'provider', 'partner.invoice_amount', 'Invoice Amount', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1691, 1, 'en', 'provider', 'partner.cash_collected', 'Cash Collected', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1692, 1, 'en', 'provider', 'partner.upcoming_tips', 'Upcoming Trips', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1693, 1, 'en', 'provider', 'partner.pickup_time', 'Pickup Time', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1694, 1, 'en', 'provider', 'partner.pickup_address', 'Pickup Address', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1695, 1, 'en', 'provider', 'partner.action', 'Action', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1696, 1, 'en', 'provider', 'signup.already_register', 'ALREADY REGISTERED?', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1697, 1, 'en', 'provider', 'signup.sign_up', 'Sign Up', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1698, 1, 'en', 'provider', 'signup.enter_phone', 'Enter Phone Number', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1699, 1, 'en', 'provider', 'signup.email_address', 'E-Mail Address', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1700, 1, 'en', 'provider', 'signup.male', 'Male', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1701, 1, 'en', 'provider', 'signup.female', 'Female', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1702, 1, 'en', 'provider', 'signup.password', 'Password', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1703, 1, 'en', 'provider', 'signup.confirm_password', 'Confirm Password', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1704, 1, 'en', 'provider', 'signup.register', 'Register', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1705, 1, 'en', 'provider', 'signup.create_new_acc', 'CREATE NEW ACCOUNT', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1706, 1, 'en', 'provider', 'signup.sign_in', 'Sign In', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1707, 1, 'en', 'provider', 'signup.remember_me', 'Remember Me', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1708, 1, 'en', 'provider', 'signup.login', 'Login', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1709, 1, 'en', 'provider', 'signup.forgot_password', 'Forgot Your Password?', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1710, 1, 'en', 'provider', 'signup.login_facebook', 'LOGIN WITH FACEBOOK', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1711, 1, 'en', 'provider', 'signup.login_google', 'LOGIN WITH GOOGLE+', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1712, 1, 'en', 'provider', 'signup.reset_password', 'Reset Password', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1713, 1, 'en', 'provider', 'signup.already_have_acc', 'ALREADY HAVE AN ACCOUNT?', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1714, 1, 'en', 'provider', 'signup.send_password_reset_link', 'SEND PASSWORD RESET LINK', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1715, 1, 'en', 'provider', 'card.fullname', 'Full Name', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1716, 1, 'en', 'provider', 'card.card_no', 'Card Number', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1717, 1, 'en', 'provider', 'card.cvv', 'CVV', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1718, 1, 'en', 'provider', 'card.add_card', 'Add Card', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1719, 1, 'en', 'provider', 'card.add_debit_card', 'Add Debit Card', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1720, 1, 'en', 'provider', 'card.delete', 'Delete', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1721, 1, 'en', 'provider', 'card.month', 'Month', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1722, 1, 'en', 'provider', 'card.year', 'Year', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1723, 1, 'en', 'provider', 'card.default', 'Default', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1724, 1, 'en', 'provider', 'card.list', 'Debit Cards', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1725, 1, 'en', 'provider', 'card.type', 'Card Type', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1726, 1, 'en', 'provider', 'card.four', 'Last Four', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1727, 1, 'en', 'provider', 'card.set', 'Set Default', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1728, 1, 'en', 'provider', 'card.notfound', 'No Debit Card Added Yet', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1729, 1, 'en', 'provider', 'transaction_ref', 'Transaction Id', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1730, 1, 'en', 'provider', 'transaction_desc', 'Description', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1731, 1, 'en', 'provider', 'sno', 'Sno', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1732, 1, 'en', 'provider', 'amount', 'Amount', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1733, 1, 'en', 'provider', 'status', 'Status', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1734, 1, 'en', 'provider', 'current_balance', 'Current Balance', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1735, 1, 'en', 'provider', 'transfer', 'Transfer', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1736, 1, 'en', 'provider', 'datetime', 'Date &amp; Time', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1737, 1, 'en', 'provider', 'cancel', 'Cancel', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1738, 1, 'en', 'provider', 'document_pending', 'Document Verification Pending', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1739, 1, 'en', 'provider', 'document_upload', 'UPLOAD', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1740, 1, 'en', 'provider', 'card_pending', 'Debit Card Section', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1741, 1, 'en', 'provider', 'negative_balance', 'Wallet balance is below minimum level', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1742, 1, 'en', 'provider', 'drive_now', 'Drive Now', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1743, 1, 'en', 'provider', 'offline', 'GO OFFLINE', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1744, 1, 'en', 'provider', 'online', 'GO ONLINE', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1745, 1, 'en', 'provider', 'hours', 'Hours', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1746, 1, 'en', 'provider', 'minutes', 'Minutes', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1747, 1, 'en', 'provider', 'credit', 'Credit', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1748, 1, 'en', 'provider', 'debit', 'Debit', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1749, 1, 'en', 'provider', 'lang', 'en', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1750, 1, 'en', 'provider', 'enter_location', 'Enter a location', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1751, 1, 'en', 'provider', 'your_location', 'Your Location', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1752, 1, 'en', 'provider', 'expires', 'Expires', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1753, 1, 'en', 'servicetypes', 'MIN', 'Per Minute Pricing', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1754, 1, 'en', 'servicetypes', 'HOUR', 'Per Hour Pricing', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1755, 1, 'en', 'servicetypes', 'DISTANCE', 'Distance Pricing', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1756, 1, 'en', 'servicetypes', 'DISTANCEMIN', 'Distance and Per Minute Pricing', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1757, 1, 'en', 'servicetypes', 'DISTANCEHOUR', 'Distance and Per Hour Pricing', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1758, 1, 'en', 'user', 'profile.old_password', 'Old Password', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1759, 1, 'en', 'user', 'profile.password', 'Password', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1760, 1, 'en', 'user', 'profile.confirm_password', 'Confirm Password', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1761, 1, 'en', 'user', 'profile.first_name', 'First Name', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1762, 1, 'en', 'user', 'profile.last_name', 'Last Name', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1763, 1, 'en', 'user', 'profile.email', 'Email', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1764, 1, 'en', 'user', 'profile.mobile', 'Mobile', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1765, 1, 'en', 'user', 'profile.general_information', 'General Information', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1766, 1, 'en', 'user', 'profile.profile_picture', 'Profile Picture', '2021-05-25 15:50:37', '2021-05-25 15:50:37');
INSERT INTO `ltm_translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1767, 1, 'en', 'user', 'profile.wallet_balance', 'Wallet Balance', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1768, 1, 'en', 'user', 'profile.edit', 'Edit', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1769, 1, 'en', 'user', 'profile.save', 'Save', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1770, 1, 'en', 'user', 'profile.edit_information', 'Edit Information', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1771, 1, 'en', 'user', 'profile.change_password', 'Change Password', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1772, 1, 'en', 'user', 'profile.profile', 'Profile', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1773, 1, 'en', 'user', 'profile.change_mobile', 'Change Mobile Number', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1774, 1, 'en', 'user', 'profile.verify', 'Verify', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1775, 1, 'en', 'user', 'profile.verified', 'Verified', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1776, 1, 'en', 'user', 'profile.settings', 'Settings', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1777, 1, 'en', 'user', 'profile.logout', 'Logout', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1778, 1, 'en', 'user', 'profile.name', 'Name', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1779, 1, 'en', 'user', 'profile.language', 'Language', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1780, 1, 'en', 'user', 'profile.notify', 'Notifications', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1781, 1, 'en', 'user', 'profile.qr_code', 'QR Code', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1782, 1, 'en', 'user', 'profile.country_code', 'Country Code', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1783, 1, 'en', 'user', 'cash', 'CASH', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1784, 1, 'en', 'user', 'booking_id', 'Booking Id', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1785, 1, 'en', 'user', 'service_number', 'Car Number', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1786, 1, 'en', 'user', 'service_model', 'Car Model', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1787, 1, 'en', 'user', 'service_type', 'Service Type', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1788, 1, 'en', 'user', 'card.fullname', 'Full Name', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1789, 1, 'en', 'user', 'card.card_no', 'Card Number', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1790, 1, 'en', 'user', 'card.cvv', 'CVV', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1791, 1, 'en', 'user', 'card.add_card', 'Add Card', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1792, 1, 'en', 'user', 'card.delete', 'Delete', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1793, 1, 'en', 'user', 'card.month', 'Month', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1794, 1, 'en', 'user', 'card.year', 'Year', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1795, 1, 'en', 'user', 'card.default', 'Default', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1796, 1, 'en', 'user', 'card.delete_msg', 'Are you sure want to delete this card?', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1797, 1, 'en', 'user', 'fare_breakdown', 'FARE BREAKDOWN', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1798, 1, 'en', 'user', 'ride.finding_driver', 'Finding your Driver', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1799, 1, 'en', 'user', 'ride.accepted_ride', 'Accepted Your Ride', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1800, 1, 'en', 'user', 'ride.arrived_ride', 'Arrived At your Location', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1801, 1, 'en', 'user', 'ride.onride', 'Enjoy your Ride', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1802, 1, 'en', 'user', 'ride.waiting_payment', 'Waiting for Payment', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1803, 1, 'en', 'user', 'ride.rate_and_review', 'Rate and Review', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1804, 1, 'en', 'user', 'ride.ride_now', 'Ride Now', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1805, 1, 'en', 'user', 'ride.change_drop_location', 'Change Drop Location', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1806, 1, 'en', 'user', 'ride.cancel_request', 'Cancel Request', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1807, 1, 'en', 'user', 'ride.ride_status', 'Ride Status', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1808, 1, 'en', 'user', 'ride.dropped_ride', 'Your Ride is Completed', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1809, 1, 'en', 'user', 'ride.ride_details', 'Ride Details', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1810, 1, 'en', 'user', 'ride.invoice', 'Invoice', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1811, 1, 'en', 'user', 'ride.base_price', 'Base Fare', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1812, 1, 'en', 'user', 'ride.tax_price', 'Tax Fare', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1813, 1, 'en', 'user', 'ride.toll_charge', 'Toll Charge', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1814, 1, 'en', 'user', 'ride.waiting_price', 'Waiting Charge', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1815, 1, 'en', 'user', 'ride.distance_price', 'Distance Fare', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1816, 1, 'en', 'user', 'ride.minutes_price', 'Minutes Fare', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1817, 1, 'en', 'user', 'ride.hours_price', 'Hours Fare', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1818, 1, 'en', 'user', 'ride.distance_travelled', 'Distance Travelled', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1819, 1, 'en', 'user', 'ride.tips', 'Tips', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1820, 1, 'en', 'user', 'ride.comment', 'Comment', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1821, 1, 'en', 'user', 'ride.detection_wallet', 'Wallet Detection', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1822, 1, 'en', 'user', 'ride.rating', 'Rating', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1823, 1, 'en', 'user', 'ride.km', 'Kilometer', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1824, 1, 'en', 'user', 'ride.total', 'Total', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1825, 1, 'en', 'user', 'ride.amount_paid', 'Amount to be Paid', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1826, 1, 'en', 'user', 'ride.round_off', 'Round off amount', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1827, 1, 'en', 'user', 'ride.promotion_applied', 'Promotion Applied', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1828, 1, 'en', 'user', 'ride.request_inprogress', 'Ride Already in Progress', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1829, 1, 'en', 'user', 'ride.request_scheduled', 'Ride Already Scheduled on this time', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1830, 1, 'en', 'user', 'ride.cancel_reason', 'Cancel Reason', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1831, 1, 'en', 'user', 'ride.wallet_deduction', 'Wallet Deduction', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1832, 1, 'en', 'user', 'dashboard', 'Dashboard', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1833, 1, 'en', 'user', 'payment', 'Payment', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1834, 1, 'en', 'user', 'wallet', 'Wallet', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1835, 1, 'en', 'user', 'my_wallet', 'My Wallet', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1836, 1, 'en', 'user', 'my_trips', 'My Trips', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1837, 1, 'en', 'user', 'notifications', 'Notifications', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1838, 1, 'en', 'user', 'user', 'User', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1839, 1, 'en', 'user', 'title', 'Title', '2021-05-25 15:50:37', '2021-05-25 15:50:37'),
(1840, 1, 'en', 'user', 'description', 'Description', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1841, 1, 'en', 'user', 'updated', 'Updated', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1842, 1, 'en', 'user', 'in_your_wallet', 'in your wallet', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1843, 1, 'en', 'user', 'status', 'Status', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1844, 1, 'en', 'user', 'driver_name', 'Driver Name', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1845, 1, 'en', 'user', 'driver_rating', 'Driver Rating', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1846, 1, 'en', 'user', 'payment_mode', 'Payment Mode', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1847, 1, 'en', 'user', 'otp', 'Otp', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1848, 1, 'en', 'user', 'add_money', 'Add Money', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1849, 1, 'en', 'user', 'date', 'Date', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1850, 1, 'en', 'user', 'schedule_date', 'Date', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1851, 1, 'en', 'user', 'amount', 'Total Amount', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1852, 1, 'en', 'user', 'dispute', 'Dispute', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1853, 1, 'en', 'user', 'type', 'Type', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1854, 1, 'en', 'user', 'time', 'Time', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1855, 1, 'en', 'user', 'request_id', 'Request ID', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1856, 1, 'en', 'user', 'paid_via', 'PAID VIA', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1857, 1, 'en', 'user', 'from', 'From', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1858, 1, 'en', 'user', 'total_distance', 'Total Distance', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1859, 1, 'en', 'user', 'eta', 'ETA', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1860, 1, 'en', 'user', 'to', 'To', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1861, 1, 'en', 'user', 'use_wallet_balance', 'Use Wallet Balance', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1862, 1, 'en', 'user', 'available_wallet_balance', 'Available Wallet Balance', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1863, 1, 'en', 'user', 'estimated_fare', 'Estimated Fare', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1864, 1, 'en', 'user', 'charged', 'CHARGED', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1865, 1, 'en', 'user', 'payment_method', 'Payment Methods', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1866, 1, 'en', 'user', 'promotion', 'Promotions', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1867, 1, 'en', 'user', 'promocode', 'Promocodes', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1868, 1, 'en', 'user', 'add_promocode', 'Add Promocode', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1869, 1, 'en', 'user', 'upcoming_trips', 'Upcoming trips', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1870, 1, 'en', 'user', 'total', 'Total', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1871, 1, 'en', 'user', 'promocode_select', 'Select Promocode', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1872, 1, 'en', 'user', 'schedule_title', 'Schedule a Ride', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1873, 1, 'en', 'user', 'schedule', 'Schedule Later', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1874, 1, 'en', 'user', 'schedule_time', 'Time', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1875, 1, 'en', 'user', 'schedule_ride', 'Schedule Ride', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1876, 1, 'en', 'user', 'demand_node', 'Note : Due to High Demand the fare may vary!', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1877, 1, 'en', 'user', 'no_trips', 'No trips Available', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1878, 1, 'en', 'user', 'provider_details', 'Provider Details', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1879, 1, 'en', 'user', 'ride_cancel', 'Cancel Ride', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1880, 1, 'en', 'user', 'enter_amount', 'Enter Amount', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1881, 1, 'en', 'user', 'please', 'Please', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1882, 1, 'en', 'user', 'add_card', 'add card', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1883, 1, 'en', 'user', 'to_continue', 'to continue', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1884, 1, 'en', 'user', 'credit', 'Credit', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1885, 1, 'en', 'user', 'debit', 'Debit', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1886, 1, 'en', 'user', 'maperror', 'Invalid Map Key', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1887, 1, 'en', 'user', 'referral', 'Refer a Friend', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1888, 1, 'en', 'validation', 'accepted', 'The :attribute must be accepted.', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1889, 1, 'en', 'validation', 'active_url', 'The :attribute is not a valid URL.', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1890, 1, 'en', 'validation', 'after', 'The :attribute must be a date after :date.', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1891, 1, 'en', 'validation', 'after_or_equal', 'The :attribute must be a date after or equal to :date.', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1892, 1, 'en', 'validation', 'alpha', 'The :attribute may only contain letters.', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1893, 1, 'en', 'validation', 'alpha_dash', 'The :attribute may only contain letters, numbers, and dashes.', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1894, 1, 'en', 'validation', 'alpha_num', 'The :attribute may only contain letters and numbers.', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1895, 1, 'en', 'validation', 'array', 'The :attribute must be an array.', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1896, 1, 'en', 'validation', 'before', 'The :attribute must be a date before :date.', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1897, 1, 'en', 'validation', 'before_or_equal', 'The :attribute must be a date before or equal to :date.', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1898, 1, 'en', 'validation', 'between.numeric', 'The :attribute must be between :min and :max.', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1899, 1, 'en', 'validation', 'between.file', 'The :attribute must be between :min and :max kilobytes.', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1900, 1, 'en', 'validation', 'between.string', 'The :attribute must be between :min and :max characters.', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1901, 1, 'en', 'validation', 'between.array', 'The :attribute must have between :min and :max items.', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1902, 1, 'en', 'validation', 'boolean', 'The :attribute field must be true or false.', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1903, 1, 'en', 'validation', 'confirmed', 'The :attribute confirmation does not match.', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1904, 1, 'en', 'validation', 'date', 'The :attribute is not a valid date.', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1905, 1, 'en', 'validation', 'date_format', 'The :attribute does not match the format :format.', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1906, 1, 'en', 'validation', 'different', 'The :attribute and :other must be different.', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1907, 1, 'en', 'validation', 'digits', 'The :attribute must be :digits digits.', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1908, 1, 'en', 'validation', 'digits_between', 'The :attribute must be between :min and :max digits.', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1909, 1, 'en', 'validation', 'dimensions', 'The :attribute has invalid image dimensions.', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1910, 1, 'en', 'validation', 'distinct', 'The :attribute field has a duplicate value.', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1911, 1, 'en', 'validation', 'email', 'The :attribute must be a valid email address.', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1912, 1, 'en', 'validation', 'exists', 'The selected :attribute is invalid.', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1913, 1, 'en', 'validation', 'file', 'The :attribute must be a file.', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1914, 1, 'en', 'validation', 'filled', 'The :attribute field is required.', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1915, 1, 'en', 'validation', 'image', 'The :attribute must be an image.', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1916, 1, 'en', 'validation', 'in', 'The selected :attribute is invalid.', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1917, 1, 'en', 'validation', 'in_array', 'The :attribute field does not exist in :other.', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1918, 1, 'en', 'validation', 'integer', 'The :attribute must be an integer.', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1919, 1, 'en', 'validation', 'ip', 'The :attribute must be a valid IP address.', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1920, 1, 'en', 'validation', 'json', 'The :attribute must be a valid JSON string.', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1921, 1, 'en', 'validation', 'max.numeric', 'The :attribute may not be greater than :max.', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1922, 1, 'en', 'validation', 'max.file', 'The :attribute may not be greater than :max kilobytes.', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1923, 1, 'en', 'validation', 'max.string', 'The :attribute may not be greater than :max characters.', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1924, 1, 'en', 'validation', 'max.array', 'The :attribute may not have more than :max items.', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1925, 1, 'en', 'validation', 'mimes', 'The :attribute must be a file of type: :values.', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1926, 1, 'en', 'validation', 'mimetypes', 'The :attribute must be a file of type: :values.', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1927, 1, 'en', 'validation', 'min.numeric', 'The :attribute must be at least :min.', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1928, 1, 'en', 'validation', 'min.file', 'The :attribute must be at least :min kilobytes.', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1929, 1, 'en', 'validation', 'min.string', 'The :attribute must be at least :min characters.', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1930, 1, 'en', 'validation', 'min.array', 'The :attribute must have at least :min items.', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1931, 1, 'en', 'validation', 'not_in', 'The selected :attribute is invalid.', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1932, 1, 'en', 'validation', 'numeric', 'The :attribute must be a number.', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1933, 1, 'en', 'validation', 'present', 'The :attribute field must be present.', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1934, 1, 'en', 'validation', 'regex', 'The :attribute format is invalid.', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1935, 1, 'en', 'validation', 'required', 'The :attribute field is required.', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1936, 1, 'en', 'validation', 'required_if', 'The :attribute field is required when :other is :value.', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1937, 1, 'en', 'validation', 'required_unless', 'The :attribute field is required unless :other is in :values.', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1938, 1, 'en', 'validation', 'required_with', 'The :attribute field is required when :values is present.', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1939, 1, 'en', 'validation', 'required_with_all', 'The :attribute field is required when :values is present.', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1940, 1, 'en', 'validation', 'required_without', 'The :attribute field is required when :values is not present.', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1941, 1, 'en', 'validation', 'required_without_all', 'The :attribute field is required when none of :values are present.', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1942, 1, 'en', 'validation', 'same', 'The :attribute and :other must match.', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1943, 1, 'en', 'validation', 'size.numeric', 'The :attribute must be :size.', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1944, 1, 'en', 'validation', 'size.file', 'The :attribute must be :size kilobytes.', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1945, 1, 'en', 'validation', 'size.string', 'The :attribute must be :size characters.', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1946, 1, 'en', 'validation', 'size.array', 'The :attribute must contain :size items.', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1947, 1, 'en', 'validation', 'string', 'The :attribute must be a string.', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1948, 1, 'en', 'validation', 'timezone', 'The :attribute must be a valid zone.', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1949, 1, 'en', 'validation', 'unique', 'The :attribute has already been taken.', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1950, 1, 'en', 'validation', 'uploaded', 'The :attribute failed to upload.', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1951, 1, 'en', 'validation', 'url', 'The :attribute format is invalid.', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1952, 1, 'en', 'validation', 'custom.s_latitude.required', 'Source address required', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1953, 1, 'en', 'validation', 'custom.d_latitude.required', 'Destination address required', '2021-05-25 15:50:38', '2021-05-25 15:50:38'),
(1954, 0, 'en', 'admin', 'admins.user_update', NULL, '2021-05-25 15:50:51', '2021-05-25 15:50:51'),
(1955, 0, 'en', 'api', 'user.not_approved', NULL, '2021-05-25 15:50:51', '2021-05-25 15:50:51'),
(1956, 0, 'en', 'api', 'user.incorrect_login', NULL, '2021-05-25 15:50:51', '2021-05-25 15:50:51'),
(1957, 0, 'en', 'user', 'ride.trips.saved', NULL, '2021-05-25 15:50:51', '2021-05-25 15:50:51'),
(1958, 0, 'en', 'user', 'ride.trips.not_found', NULL, '2021-05-25 15:50:51', '2021-05-25 15:50:51'),
(1959, 0, 'en', 'admin', 'payment.payumoney_merchant_id', NULL, '2021-05-25 15:50:51', '2021-05-25 15:50:51'),
(1960, 0, 'en', '_json', 'No Records', NULL, '2021-05-25 15:50:51', '2021-05-25 15:50:51'),
(1961, 0, 'en', '_json', 'Disable', NULL, '2021-05-25 15:50:51', '2021-05-25 15:50:51'),
(1962, 0, 'en', '_json', 'Enable', NULL, '2021-05-25 15:50:51', '2021-05-25 15:50:51'),
(1963, 0, 'en', '_json', 'provider.partner.distance(km)', NULL, '2021-05-25 15:50:51', '2021-05-25 15:50:51'),
(1964, 0, 'en', '_json', 'Too Many Requests', NULL, '2021-05-25 15:50:51', '2021-05-25 15:50:51'),
(1965, 0, 'en', '_json', 'Sorry, you are making too many requests to our servers.', NULL, '2021-05-25 15:50:51', '2021-05-25 15:50:51'),
(1966, 0, 'en', '_json', 'Forbidden', NULL, '2021-05-25 15:50:51', '2021-05-25 15:50:51'),
(1967, 0, 'en', '_json', 'Page Expired', NULL, '2021-05-25 15:50:51', '2021-05-25 15:50:51'),
(1968, 0, 'en', '_json', 'Sorry, your session has expired. Please refresh and try again.', NULL, '2021-05-25 15:50:51', '2021-05-25 15:50:51'),
(1969, 0, 'en', '_json', 'Oh no', NULL, '2021-05-25 15:50:51', '2021-05-25 15:50:51'),
(1970, 0, 'en', '_json', 'Go Home', NULL, '2021-05-25 15:50:51', '2021-05-25 15:50:51'),
(1971, 0, 'en', '_json', 'Unauthorized', NULL, '2021-05-25 15:50:51', '2021-05-25 15:50:51'),
(1972, 0, 'en', '_json', 'Sorry, you are not authorized to access this page.', NULL, '2021-05-25 15:50:51', '2021-05-25 15:50:51'),
(1973, 0, 'en', '_json', 'Error', NULL, '2021-05-25 15:50:51', '2021-05-25 15:50:51'),
(1974, 0, 'en', '_json', 'Whoops, something went wrong on our servers.', NULL, '2021-05-25 15:50:51', '2021-05-25 15:50:51');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_04_02_193005_create_translations_table', 1),
(2, '2014_10_12_000000_create_users_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2015_08_25_172600_create_settings_table', 1),
(5, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(6, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(7, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(8, '2016_06_01_000004_create_oauth_clients_table', 1),
(9, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(10, '2016_12_03_000000_create_payu_payments_table', 1),
(11, '2016_12_03_000000_create_permission_tables', 1),
(12, '2017_01_11_180503_create_admins_table', 1),
(13, '2017_01_11_180511_create_providers_table', 1),
(14, '2017_01_11_181312_create_cards_table', 1),
(15, '2017_01_11_181357_create_chats_table', 1),
(16, '2017_01_11_181558_create_promocodes_table', 1),
(17, '2017_01_11_182454_create_provider_documents_table', 1),
(18, '2017_01_11_182536_create_provider_services_table', 1),
(19, '2017_01_11_182649_create_user_requests_table', 1),
(20, '2017_01_11_182717_create_request_filters_table', 1),
(21, '2017_01_11_182738_create_service_types_table', 1),
(22, '2017_01_25_172422_create_documents_table', 1),
(23, '2017_01_31_122021_create_provider_devices_table', 1),
(24, '2017_02_02_192703_create_user_request_ratings_table', 1),
(25, '2017_02_06_080124_create_user_request_payments_table', 1),
(26, '2017_02_14_135859_create_provider_profiles_table', 1),
(27, '2017_02_21_131429_create_promocode_usages_table', 1),
(28, '2017_06_17_151030_create_dispatchers_table', 1),
(29, '2017_06_17_151031_create_dispatcher_password_resets_table', 1),
(30, '2017_06_17_151145_create_fleets_table', 1),
(31, '2017_06_17_151146_create_fleet_password_resets_table', 1),
(32, '2017_06_20_154148_create_accounts_table', 1),
(33, '2017_06_20_154149_create_account_password_resets_table', 1),
(34, '2017_08_03_194354_create_custom_pushes_table', 1),
(35, '2017_09_01_190333_create_wallet_passbooks_table', 1),
(36, '2017_09_01_190355_create_promocode_passbooks_table', 1),
(37, '2017_09_26_160101_create_favourite_locations_table', 1),
(38, '2018_06_29_174517_create_works_table', 1),
(39, '2018_09_07_151624_create_admin_wallet_table', 1),
(40, '2018_09_07_151631_create_user_wallet_table', 1),
(41, '2018_09_07_151636_create_provider_wallet_table', 1),
(42, '2018_09_07_151645_create_fleet_wallet_table', 1),
(43, '2018_09_14_160535_create_wallet_requests_table', 1),
(44, '2018_09_24_164552_create_provider_cards_table', 1),
(45, '2018_09_26_143905_create_fleet_cards_table', 1),
(46, '2018_09_27_195450_create_eventcontacts_table', 1),
(47, '2018_12_07_132532_create_referral_histroy_table', 1),
(48, '2018_12_07_132536_create_referral_earnings_table', 1),
(49, '2018_12_18_171537_create_reasons_table', 1),
(50, '2018_12_27_125550_create_request_waiting_time_table', 1),
(51, '2018_12_27_125553_create_service_peak_hours_table', 1),
(52, '2018_12_27_125556_create_peak_hours_table', 1),
(53, '2019_01_07_135142_create_disputes_table', 1),
(54, '2019_01_07_135145_create_user_request_disputes_table', 1),
(55, '2019_01_07_135146_create_user_request_lost_items_table', 1),
(56, '2019_01_07_135148_create_notifications_table', 1),
(57, '2019_01_28_145133_create_push_subscriptions_table', 1),
(58, '2019_01_31_104045_create_payment_logs_table', 1),
(59, '2020_10_27_143019_create_user_request_delivery_details_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Admin', 1),
(2, 'App\\Admin', 2),
(2, 'App\\Admin', 5),
(2, 'App\\Admin', 7),
(3, 'App\\Admin', 4),
(3, 'App\\Admin', 9),
(4, 'App\\Admin', 3),
(4, 'App\\Admin', 6),
(4, 'App\\Admin', 8),
(5, 'App\\Fleet', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `notify_type` enum('all','user','provider') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'all',
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expiry_date` timestamp NULL DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('003a167bf07433ddcb536ecf1d7a6ec544c79bb3146fd26068dc3b3b026b5aba5223ccb72cb9d8cb', 51, 3, 'token', '[]', 0, '2021-06-11 16:32:28', '2021-06-11 16:32:28', '2022-06-11 16:32:28'),
('05a3925b66baca541937a0484d7ca2dd5595e45cab840e3914b7176c5a06df1d9db6dc31307a0dfe', 62, 3, 'AutoLogin', '[]', 0, '2021-06-12 17:29:45', '2021-06-12 17:29:45', '2022-06-12 17:29:45'),
('0f3a350e55161e9b0652c23af031bc3b76c7521f50f71d0b58e80a2737a6f0d2b38ac72322e195be', 50, 3, 'AutoLogin', '[]', 0, '2021-06-04 10:33:17', '2021-06-04 10:33:17', '2022-06-04 15:33:17'),
('10358b479046aaa9e6d05b2417834e05e0db21c7459f1b8c33b8c649bd595e56c6f18f0ba84981ca', 53, 3, 'AutoLogin', '[]', 0, '2021-06-08 09:57:32', '2021-06-08 09:57:32', '2022-06-08 14:57:32'),
('11a5ba7a2f7513ea28affb9ab333f6466844b6cad79d8205e9e756d22397754bfb33d078cfb8768c', 52, 3, 'AutoLogin', '[]', 0, '2021-06-04 11:57:18', '2021-06-04 11:57:18', '2022-06-04 16:57:18'),
('29fe6284eb67afd95afb9e97f3b2fc211cbc37669c921818851544929029da977abf0e5d001d34c0', 73, 3, 'AutoLogin', '[]', 0, '2021-06-27 01:07:38', '2021-06-27 01:07:38', '2022-06-27 01:07:38'),
('405314307157e85cae48543651d3998cb72d0150002032ea9013b55b9c1fc49294abc04e79cb8731', 74, 3, 'token', '[]', 0, '2021-06-27 23:33:32', '2021-06-27 23:33:32', '2022-06-27 23:33:32'),
('41d92c04e9fd1204c6a6135a45af300570505668f6146e8fdade1694f9c9d36039205c9e57f1ac83', 54, 3, 'token', '[]', 0, '2021-06-08 11:01:46', '2021-06-08 11:01:46', '2022-06-08 16:01:46'),
('4931c27489989d01668058e3a2c1ac1288b8915d6e1ade567cd1587a431891309d0c88a1c3c37936', 63, 3, 'token', '[]', 0, '2021-06-17 21:11:44', '2021-06-17 21:11:44', '2022-06-17 21:11:44'),
('4ae5781fe81ae334c3c7c4d76bab02a479d1d9aa442c47fe13f6dab51dee8e30e023fb4f1a3d4b2e', 75, 3, 'token', '[]', 0, '2021-06-29 02:18:30', '2021-06-29 02:18:30', '2022-06-29 02:18:30'),
('4e024fb1d558a6300e1178a39b8aaa595d526cc343df895caf4d33580d18fa6ac00104b89d2e5530', 63, 3, 'token', '[]', 0, '2021-06-17 21:31:45', '2021-06-17 21:31:45', '2022-06-17 21:31:45'),
('5d1711b59284b52285dbae5d1efd2de62982702efc9fc2aafbed55101ff830f844900534ea71851c', 69, 3, 'AutoLogin', '[]', 0, '2021-06-22 17:28:48', '2021-06-22 17:28:48', '2022-06-22 17:28:48'),
('5f22c36aa4767b7431fcad3497a7cc86637c17cef3196371aad56076e57324c9e69b0fb53b2f8cb2', 63, 3, 'AutoLogin', '[]', 0, '2021-06-17 11:45:36', '2021-06-17 11:45:36', '2022-06-17 11:45:36'),
('70c29bdcede64c85fed8dc09dfe8b6db429e84275603f9d470d1c9c23767c5a3997c5ddc6cb992c2', 51, 3, 'AutoLogin', '[]', 0, '2021-06-04 10:35:43', '2021-06-04 10:35:43', '2022-06-04 15:35:43'),
('71454594d562fc073ec2955350ea88d763850c1115c4da7d0afbc67398dcc9c4e72ca8884cbeaac6', 54, 3, 'token', '[]', 0, '2021-06-11 17:05:44', '2021-06-11 17:05:44', '2022-06-11 17:05:44'),
('71795881e3085bd83a6b5c8d6fbc37340d8a9c3e230eb476e5259d8a142a7541db8c646863083551', 75, 3, 'AutoLogin', '[]', 0, '2021-06-29 00:39:25', '2021-06-29 00:39:25', '2022-06-29 00:39:25'),
('76a826f6a9fe17794cbb33f61f0f0e9ba56d8a47679006cf4a007e4b2d8541f6739cbb5858e84610', 71, 3, 'AutoLogin', '[]', 0, '2021-06-23 13:26:27', '2021-06-23 13:26:27', '2022-06-23 13:26:27'),
('7a0ce6687b1107ef6ffe32fb4ead62797479e90d1a5535a6dc4110c58080d1065a3b8f4db9a4949a', 51, 3, 'token', '[]', 0, '2021-06-11 16:57:12', '2021-06-11 16:57:12', '2022-06-11 16:57:12'),
('7d38ae69be0a0cde71ec4950b61019dafa73d19035f554605c3cde63ec281916cd326434794e8e29', 55, 3, 'AutoLogin', '[]', 0, '2021-06-08 11:29:54', '2021-06-08 11:29:54', '2022-06-08 16:29:54'),
('8092efc2bb20eabf692c94cfd949c324d6ca7eff06681b40893e78dd1d3e05c26f2478252c1e2e64', 64, 3, 'AutoLogin', '[]', 0, '2021-06-17 18:17:38', '2021-06-17 18:17:38', '2022-06-17 18:17:38'),
('82fb709cc16d69ed20285d4aef4798b1ee5fb7d8d2c1d06730c89fbe97bb243424245e0311ebb438', 67, 3, 'AutoLogin', '[]', 0, '2021-06-22 17:13:26', '2021-06-22 17:13:26', '2022-06-22 17:13:26'),
('831174a40ac3162fa3c13d178b4a68190d3aeaf17c0d9e7ef6aaeff95a1c160c664090b17461f60e', 69, 3, 'token', '[]', 0, '2021-06-23 12:37:21', '2021-06-23 12:37:21', '2022-06-23 12:37:21'),
('85b34e4f9947fb14c063e521bf06153662609b180938de067ea75c115411141239ab4c36794a9bc0', 54, 3, 'token', '[]', 0, '2021-06-08 11:28:38', '2021-06-08 11:28:38', '2022-06-08 16:28:38'),
('9aa0a656941570c73c0d0b08fe73fa6386f55cdda3dc4494441e5138c90bcef94f0c8c267021f5b1', 55, 3, 'token', '[]', 0, '2021-06-09 13:28:30', '2021-06-09 13:28:30', '2022-06-09 18:28:30'),
('a11703d3d342bcac719ee41344d3e5dbd268a3ff68c72515a10e00a76dfe1157f8ad4985e99f7d2d', 65, 3, 'AutoLogin', '[]', 0, '2021-06-20 19:36:01', '2021-06-20 19:36:01', '2022-06-20 19:36:01'),
('a42db33c52dda62789493497150e084225e6f0f0f71fa79f9f9519c1956b218cb2f267d9a61cc890', 51, 3, 'token', '[]', 0, '2021-06-11 16:45:42', '2021-06-11 16:45:42', '2022-06-11 16:45:42'),
('b0574126069fd3ad8358cf268ddaa2412611e7f62926f694f957cac6e0e7514ee7c1b0ba42491d93', 61, 3, 'AutoLogin', '[]', 0, '2021-06-11 19:06:29', '2021-06-11 19:06:29', '2022-06-11 19:06:29'),
('b83c67e27f66b4c6a1bd1a6a3e1f6655c44df4edcd9d0a7e4d87fbf002ce09d446dacd96641d8167', 54, 3, 'token', '[]', 0, '2021-06-09 13:13:28', '2021-06-09 13:13:28', '2022-06-09 18:13:28'),
('c1a1a6c1f25e9d8bd20e313c773a16aa205d866f71f3d59925651d62862ebaf2a4e5d1b4b1772331', 56, 3, 'AutoLogin', '[]', 0, '2021-06-08 11:30:44', '2021-06-08 11:30:44', '2022-06-08 16:30:44'),
('c6d1334a3fc98b5fc26b8d1118973aef3d52026e42c822ec76754c374a67d34ccc6c1264f30404ca', 63, 3, 'token', '[]', 0, '2021-06-18 02:56:26', '2021-06-18 02:56:26', '2022-06-18 02:56:26'),
('d62073138d324d077f8309a20a099a85ab5cbf26610bbb999cbcffc60eec77635baa701286127a1e', 66, 3, 'AutoLogin', '[]', 0, '2021-06-21 00:54:19', '2021-06-21 00:54:19', '2022-06-21 00:54:19'),
('db6f68caa72664f426197ffc44fd26f02a7167b1db8f1312973dd5dc07a8039716943566ae879ba3', 54, 3, 'AutoLogin', '[]', 0, '2021-06-08 10:56:46', '2021-06-08 10:56:46', '2022-06-08 15:56:46'),
('ed74234fee26392ba79a3a5c1ddfff0291147c3670c68c0e7d2fab6ed9d5712e09c2a07ddc9a408a', 68, 3, 'AutoLogin', '[]', 0, '2021-06-22 17:17:46', '2021-06-22 17:17:46', '2022-06-22 17:17:46'),
('ee2be2d01874af4d9581687a1dd2eb1fca9b093174ce3fbc38e7404605a764fc672f0341f9b074e5', 70, 3, 'AutoLogin', '[]', 0, '2021-06-23 12:08:42', '2021-06-23 12:08:42', '2022-06-23 12:08:42'),
('f50c35209e2252b5543562825eabb7e70790264a1278d2a263aaf379ca108d4e046725390603b20a', 76, 3, 'AutoLogin', '[]', 0, '2021-06-29 15:26:40', '2021-06-29 15:26:40', '2022-06-29 15:26:40'),
('f8a0bb2450726aa58478d541f159c471d3f41f0fbc145340db3d80e2325e198dbc5a13a5fd7e7545', 74, 3, 'AutoLogin', '[]', 0, '2021-06-27 22:28:23', '2021-06-27 22:28:23', '2022-06-27 22:28:23');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'yes', 'tTzia2t52aMvS3cHDjSBnXPEy9xzY5hNB1yxSRzw', 'http://localhost', 1, 0, 0, '2021-04-19 19:04:49', '2021-04-19 19:04:49'),
(2, NULL, 'yes', 'dwaLOEgIZeuCQ7I4qpPVvCpnlkJPx3x3LfwC8Rti', 'http://localhost', 1, 0, 0, '2021-04-19 19:05:52', '2021-04-19 19:05:52'),
(3, NULL, 'yes', 'wMbFC3nCuYSoHZmmIKSaKQVvBqFS4OlCVrxgJCbc', 'http://localhost', 1, 0, 0, '2021-06-03 21:53:17', '2021-06-03 21:53:17');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-04-19 19:04:49', '2021-04-19 19:04:49'),
(2, 2, '2021-04-19 19:05:52', '2021-04-19 19:05:52'),
(3, 3, '2021-06-03 21:53:17', '2021-06-03 21:53:17');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_logs`
--

CREATE TABLE `payment_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `is_wallet` int(11) NOT NULL DEFAULT 0,
  `user_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'user or provider',
  `payment_mode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL COMMENT 'user id or provider id',
  `amount` double(8,2) NOT NULL DEFAULT 0.00,
  `transaction_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Random code generated during payment',
  `transaction_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Foreign key of the user request or wallet table',
  `response` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payu_payments`
--

CREATE TABLE `payu_payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `account` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payable_id` int(10) UNSIGNED DEFAULT NULL,
  `payable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `txnid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mihpayid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `firstname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `amount` double NOT NULL,
  `discount` double NOT NULL DEFAULT 0,
  `net_amount_debit` double NOT NULL DEFAULT 0,
  `data` text COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `unmappedstatus` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_ref_num` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bankcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cardnum` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_on_card` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `issuing_bank` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `card_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `peak_hours`
--

CREATE TABLE `peak_hours` (
  `id` int(10) UNSIGNED NOT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `group_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `guard_name`, `group_name`, `created_at`, `updated_at`) VALUES
(1, 'dashboard-menus', 'Box Menus', 'admin', 'Dashboard', NULL, NULL),
(2, 'wallet-summary', 'Wallet Summary', 'admin', 'Dashboard', NULL, NULL),
(3, 'recent-rides', 'Recent Rides', 'admin', 'Dashboard', NULL, NULL),
(4, 'dispatcher-panel', 'Dispatcher Menu', 'admin', 'Dispatcher Panel', NULL, NULL),
(5, 'dispatcher-panel-add', 'Add Rides', 'admin', 'Dispatcher Panel', NULL, NULL),
(6, 'dispute-list', 'Dispute list', 'admin', 'Dispute', NULL, NULL),
(7, 'dispute-create', 'Create Dispute', 'admin', 'Dispute', NULL, NULL),
(8, 'dispute-edit', 'Edit Dispute', 'admin', 'Dispute', NULL, NULL),
(9, 'dispute-delete', 'Delete Dispute', 'admin', 'Dispute', NULL, NULL),
(10, 'heat-map', 'Heat Map', 'admin', 'Map', NULL, NULL),
(11, 'god-eye', 'God\'s Eye', 'admin', 'Map', NULL, NULL),
(12, 'user-list', 'User list', 'admin', 'Users', NULL, NULL),
(13, 'user-history', 'User History', 'admin', 'Users', NULL, NULL),
(14, 'user-create', 'Create User', 'admin', 'Users', NULL, NULL),
(15, 'user-edit', 'Edit User', 'admin', 'Users', NULL, NULL),
(16, 'user-delete', 'Delete User', 'admin', 'Users', NULL, NULL),
(17, 'provider-list', 'Provider list', 'admin', 'Providers', NULL, NULL),
(18, 'provider-create', 'Create Provider', 'admin', 'Providers', NULL, NULL),
(19, 'provider-edit', 'Edit Provider', 'admin', 'Providers', NULL, NULL),
(20, 'provider-delete', 'Delete Provider', 'admin', 'Providers', NULL, NULL),
(21, 'provider-status', 'Provider Status', 'admin', 'Providers', NULL, NULL),
(22, 'provider-history', 'Ride History', 'admin', 'Providers', NULL, NULL),
(23, 'provider-statements', 'Statements', 'admin', 'Providers', NULL, NULL),
(24, 'provider-services', 'Provider Services', 'admin', 'Providers', NULL, NULL),
(25, 'provider-service-update', 'Provider Service Update', 'admin', 'Providers', NULL, NULL),
(26, 'provider-service-delete', 'Provider Service Delete', 'admin', 'Providers', NULL, NULL),
(27, 'provider-documents', 'Provider Documents', 'admin', 'Providers', NULL, NULL),
(28, 'provider-document-edit', 'Provider Document Edit', 'admin', 'Providers', NULL, NULL),
(29, 'provider-document-delete', 'Provider Document Delete', 'admin', 'Providers', NULL, NULL),
(30, 'dispatcher-list', 'Dispatcher list', 'admin', 'Dispatcher', NULL, NULL),
(31, 'dispatcher-create', 'Create Dispatcher', 'admin', 'Dispatcher', NULL, NULL),
(32, 'dispatcher-edit', 'Edit Dispatcher', 'admin', 'Dispatcher', NULL, NULL),
(33, 'dispatcher-delete', 'Delete Dispatcher', 'admin', 'Dispatcher', NULL, NULL),
(34, 'fleet-list', 'Fleet Owner list', 'admin', 'Fleet Owner', NULL, NULL),
(35, 'fleet-create', 'Create Fleet Owner', 'admin', 'Fleet Owner', NULL, NULL),
(36, 'fleet-edit', 'Edit Fleet Owner', 'admin', 'Fleet Owner', NULL, NULL),
(37, 'fleet-delete', 'Delete Fleet Owner', 'admin', 'Fleet Owner', NULL, NULL),
(38, 'fleet-providers', 'Fleet Owner\'s Providers list', 'admin', 'Fleet Owner', NULL, NULL),
(39, 'account-manager-list', 'Account Manager list', 'admin', 'Account Manager', NULL, NULL),
(40, 'account-manager-create', 'Create Account Manager', 'admin', 'Account Manager', NULL, NULL),
(41, 'account-manager-edit', 'Edit Account Manager', 'admin', 'Account Manager', NULL, NULL),
(42, 'account-manager-delete', 'Delete Account Manager', 'admin', 'Account Manager', NULL, NULL),
(43, 'dispute-manager-list', 'Dispute Manager list', 'admin', 'Dispute Manager', NULL, NULL),
(44, 'dispute-manager-create', 'Create Dispute Manager', 'admin', 'Dispute Manager', NULL, NULL),
(45, 'dispute-manager-edit', 'Edit Dispute Manager', 'admin', 'Dispute Manager', NULL, NULL),
(46, 'dispute-manager-delete', 'Delete Dispute Manager', 'admin', 'Dispute Manager', NULL, NULL),
(47, 'statements', 'Statements', 'admin', 'Statements', NULL, NULL),
(48, 'settlements', 'Settlements', 'admin', 'Settlements', NULL, NULL),
(49, 'ratings', 'Ratings', 'admin', 'Ratings', NULL, NULL),
(50, 'ride-history', 'Ride History', 'admin', 'Rides', NULL, NULL),
(51, 'ride-delete', 'Delete Ride', 'admin', 'Rides', NULL, NULL),
(52, 'schedule-rides', 'Schedule Rides', 'admin', 'Rides', NULL, NULL),
(53, 'promocodes-list', 'Promocodes List', 'admin', 'Promocodes', NULL, NULL),
(54, 'promocodes-create', 'Create Promocode', 'admin', 'Promocodes', NULL, NULL),
(55, 'promocodes-edit', 'Edit Promocode', 'admin', 'Promocodes', NULL, NULL),
(56, 'promocodes-delete', 'Delete Promocode', 'admin', 'Promocodes', NULL, NULL),
(57, 'service-types-list', 'Service Types List', 'admin', 'Service Types', NULL, NULL),
(58, 'service-types-create', 'Create Service Type', 'admin', 'Service Types', NULL, NULL),
(59, 'service-types-edit', 'Edit Service Type', 'admin', 'Service Types', NULL, NULL),
(60, 'service-types-delete', 'Delete Service Type', 'admin', 'Service Types', NULL, NULL),
(61, 'peak-hour-list', 'Peak Hour List', 'admin', 'Service Types', NULL, NULL),
(62, 'peak-hour-create', 'Create Peak Hour', 'admin', 'Service Types', NULL, NULL),
(63, 'peak-hour-edit', 'Edit Peak Hour', 'admin', 'Service Types', NULL, NULL),
(64, 'peak-hour-delete', 'Delete Peak Hour', 'admin', 'Service Types', NULL, NULL),
(65, 'documents-list', 'Documents List', 'admin', 'Documents', NULL, NULL),
(66, 'documents-create', 'Create Document', 'admin', 'Documents', NULL, NULL),
(67, 'documents-edit', 'Edit Document', 'admin', 'Documents', NULL, NULL),
(68, 'documents-delete', 'Delete Document', 'admin', 'Documents', NULL, NULL),
(69, 'cancel-reasons-list', 'Cancel Reason List', 'admin', 'Cancel Reasons', NULL, NULL),
(70, 'cancel-reasons-create', 'Create Reason', 'admin', 'Cancel Reasons', NULL, NULL),
(71, 'cancel-reasons-edit', 'Edit Reason', 'admin', 'Cancel Reasons', NULL, NULL),
(72, 'cancel-reasons-delete', 'Delete Reason', 'admin', 'Cancel Reasons', NULL, NULL),
(73, 'notification-list', 'Notifications List', 'admin', 'Notifications', NULL, NULL),
(74, 'notification-create', 'Create Notification', 'admin', 'Notifications', NULL, NULL),
(75, 'notification-edit', 'Edit Notification', 'admin', 'Notifications', NULL, NULL),
(76, 'notification-delete', 'Delete Notification', 'admin', 'Notifications', NULL, NULL),
(77, 'lost-item-list', 'Lost Item List', 'admin', 'Lost Items', NULL, NULL),
(78, 'lost-item-create', 'Create Lost Item', 'admin', 'Lost Items', NULL, NULL),
(79, 'lost-item-edit', 'Edit Lost Item', 'admin', 'Lost Items', NULL, NULL),
(80, 'role-list', 'Role list', 'admin', 'Role', NULL, NULL),
(81, 'role-create', 'Create Role', 'admin', 'Role', NULL, NULL),
(82, 'role-edit', 'Edit Role', 'admin', 'Role', NULL, NULL),
(83, 'role-delete', 'Delete Role', 'admin', 'Role', NULL, NULL),
(84, 'sub-admin-list', 'Sub Admins List', 'admin', 'Sub Admins', NULL, NULL),
(85, 'sub-admin-create', 'Create Sub Admin', 'admin', 'Sub Admins', NULL, NULL),
(86, 'sub-admin-edit', 'Edit Sub Admin', 'admin', 'Sub Admins', NULL, NULL),
(87, 'sub-admin-delete', 'Delete Sub Admin', 'admin', 'Sub Admins', NULL, NULL),
(88, 'payment-history', 'Payment History List', 'admin', 'Payment', NULL, NULL),
(89, 'payment-settings', 'Payment Settings List', 'admin', 'Payment', NULL, NULL),
(90, 'site-settings', 'Site Settings', 'admin', 'Settings', NULL, NULL),
(91, 'account-settings', 'Account Settings', 'admin', 'Settings', NULL, NULL),
(92, 'transalations', 'Translations', 'admin', 'Settings', NULL, NULL),
(93, 'change-password', 'Change Password', 'admin', 'Settings', NULL, NULL),
(94, 'cms-pages', 'CMS Pages', 'admin', 'Pages', NULL, NULL),
(95, 'help', 'Help', 'admin', 'Pages', NULL, NULL),
(96, 'custom-push', 'Custom Push', 'admin', 'Others', NULL, NULL),
(97, 'db-backup', 'DB Backup', 'admin', 'Others', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `promocodes`
--

CREATE TABLE `promocodes` (
  `id` int(10) UNSIGNED NOT NULL,
  `promo_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `percentage` double(5,2) NOT NULL DEFAULT 0.00,
  `max_amount` double(10,2) NOT NULL DEFAULT 0.00,
  `promo_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `expiration` datetime NOT NULL,
  `status` enum('ADDED','EXPIRED') COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `promocode_passbooks`
--

CREATE TABLE `promocode_passbooks` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `promocode_id` int(11) NOT NULL,
  `status` enum('ADDED','USED','EXPIRED') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `promocode_usages`
--

CREATE TABLE `promocode_usages` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `promocode_id` int(11) NOT NULL,
  `status` enum('ADDED','USED','EXPIRED') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `providers`
--

CREATE TABLE `providers` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gender` enum('MALE','FEMALE') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'MALE',
  `country_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rating` decimal(4,2) NOT NULL DEFAULT 5.00,
  `status` enum('document','card','onboarding','approved','banned','balance') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'document',
  `fleet` int(11) NOT NULL DEFAULT 0,
  `latitude` double(15,8) DEFAULT NULL,
  `longitude` double(15,8) DEFAULT NULL,
  `stripe_acc_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stripe_cust_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paypal_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `login_by` enum('manual','facebook','google') COLLATE utf8_unicode_ci NOT NULL,
  `social_unique_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otp` mediumint(9) NOT NULL DEFAULT 0,
  `wallet_balance` double(10,2) NOT NULL DEFAULT 0.00,
  `referral_unique_id` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qrcode_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `providers`
--

INSERT INTO `providers` (`id`, `first_name`, `last_name`, `email`, `gender`, `country_code`, `mobile`, `password`, `avatar`, `rating`, `status`, `fleet`, `latitude`, `longitude`, `stripe_acc_id`, `stripe_cust_id`, `paypal_email`, `login_by`, `social_unique_id`, `otp`, `wallet_balance`, `referral_unique_id`, `qrcode_url`, `remember_token`, `created_at`, `updated_at`) VALUES
(19, 'test', 'ios', 'test123@gmail.com', 'MALE', '+92', '3001234500', '$2y$10$4z5WbgbGnXCSw9QOnW7Ng.p1lsizYN/1oTIYEp7LBVkXOspGcpzz2', NULL, 5.00, 'onboarding', 0, 31.41260000, 73.11520000, NULL, NULL, NULL, 'manual', NULL, 0, 0.00, '1176C2', 'uploads/16228023511487487435_3001234500.png', NULL, '2021-06-04 10:55:51', '2021-06-10 12:26:01'),
(20, 'Kashi ', 'wasim', 'kashiwasim121@gmail.com', 'MALE', '+92', '3162218244', '$2y$10$F.ie3tHIRDFwQpEgtPWgau6eKSeDUgokV2p3fNeJU5cx9fH1s2uD2', 'provider/profile/m2mIQUA3vIkCpD5prqARyN0LyLaI01ikIa96O3Xi.jpg', 5.00, 'approved', 0, 35.90658760, 74.36086130, NULL, NULL, NULL, 'manual', NULL, 0, 0.00, NULL, 'uploads/1622807249761270622_3162218244.png', NULL, '2021-06-04 12:17:29', '2021-06-04 14:35:42'),
(21, 'IMAD', 'HASSAN', 'i.hassan@itqplus.com', 'MALE', 'US', '21212121', '$2y$10$nll4wtcrvf2c0MsvHwEdLOIImMmW1zp5TGQWrWbolNQbvVcaS4YRG', NULL, 5.00, 'approved', 0, 31.41375670, 73.07360170, NULL, NULL, NULL, 'manual', NULL, 0, 0.00, '6C0012', 'uploads/1622811447307605083_21212121.png', NULL, '2021-06-04 13:27:27', '2021-06-11 16:54:05'),
(23, 'kashi', 'wasim', 'info@fandapakistan.online', 'MALE', 'US', '3080832632', '$2y$10$HwIfJA4PCC1TZzUzc5qnSuXmehcj5cjONGsCULiV3JCKHO8l6RIdu', NULL, 5.00, 'approved', 0, 35.90345680, 74.36541410, NULL, NULL, NULL, 'manual', NULL, 0, 0.00, '267BE9', 'uploads/16231446621974633053_3080832632.png', NULL, '2021-06-08 10:01:02', '2021-06-10 17:23:35'),
(24, 'tester', 'ios', 'test01@gmail.com', 'MALE', '+92', '3242345678', '$2y$10$hmbJW.TIcBYuSLiNWw1qb.REP.Wr03ozofkUczt8FqFm57/gKa21G', NULL, 4.00, 'approved', 0, 31.41260000, 73.11520000, NULL, NULL, NULL, 'manual', NULL, 0, 0.00, 'BF3B65', 'uploads/1623150570302350380_3242345678.png', NULL, '2021-06-08 11:39:30', '2021-06-11 17:40:41'),
(25, 'IMAD', 'HASSAN', 'imad@itqplus.com', 'MALE', 'US', '3456789222', '$2y$10$GFRSdSq51iHqGEiwpBh2FuO.WQ90zXJopDlQYAYoy0ZvLFu0fpWme', NULL, 5.00, 'approved', 0, 31.40844910, 73.11937410, NULL, NULL, NULL, 'manual', NULL, 0, 0.00, '4C9091', 'uploads/1623329259717713086_3456789222.png', NULL, '2021-06-10 13:17:39', '2021-06-11 17:10:54'),
(26, 'Mohamed', 'Zardheye', 'mohamedzardheye@gmail.com', 'MALE', 'US', '634036617', '$2y$10$iK4wdit8hoKsbsCRLywvvu8P7paKDTIR/pVi1w8EeLxeQ/4T7fqXW', NULL, 5.00, 'approved', 0, 9.55819760, 44.02674080, NULL, NULL, NULL, 'manual', NULL, 0, 0.00, 'A3C7B3', 'uploads/1623399075657860912_634036617.png', NULL, '2021-06-11 08:41:16', '2021-06-11 09:01:49'),
(27, 'Rana', 'Shahzaib', 'ranashahzaib902@gmail.com', 'MALE', 'US', '3201414530', '$2y$10$MWHLKcSCm3WKyWTzkUBBqOEYwq3md.O65WHToPTvWDAVP6aaBy1wS', NULL, 5.00, 'onboarding', 0, 9.55827060, 44.02673670, NULL, NULL, NULL, 'manual', NULL, 0, 0.00, '19A23C', 'uploads/1623399340746345324_3201414530.png', NULL, '2021-06-11 08:45:40', '2021-06-11 08:51:55'),
(28, 'Kashi', 'Wasim', 'fandapakistan786@gmail.com', 'MALE', 'US', '355449864', '$2y$10$hIg9062U8wgEEpR1W8fdnu0Mrc.yrHO6.Lpg9RpsbxrR/AVm2PL5K', NULL, 5.00, 'approved', 0, 35.90651180, 74.36070800, NULL, NULL, NULL, 'manual', NULL, 0, 0.00, '4E5B74', 'uploads/1623434606136342578_355449864.png', NULL, '2021-06-11 23:03:26', '2021-06-12 12:11:26'),
(29, 'omar', 'omar', 'omar1498@gmail.com', 'MALE', 'US', '999999999', '$2y$10$aphGQXIEcifDyrurTScONOcr46b5dPWO09K.iUFouLy5rzprGpkFu', NULL, 5.00, 'approved', 0, -12.05919250, -77.06532940, NULL, NULL, NULL, 'manual', NULL, 0, 0.00, 'B735E4', 'uploads/1623912523389615926_999999999.png', NULL, '2021-06-17 11:48:43', '2021-06-18 12:15:23'),
(30, 'hugo', 'okomi', 'alan@gmail.com', 'MALE', 'SA', '565185946', '$2y$10$3Twd0S3vLSgPoa1dse6yX.6XXrM.AitWNiy5mS25mbF9AXzrtNlLC', NULL, 5.00, 'approved', 0, 21.30043500, 40.42459890, NULL, NULL, NULL, 'manual', NULL, 158353, 0.00, '6981FC', 'uploads/16241999391753164615_565185946.png', NULL, '2021-06-20 19:38:59', '2021-06-21 01:31:16'),
(31, 'Haris', 'Tariq', 'mharis91011@gmail.com', 'MALE', 'US', '03034477326', '$2y$10$LzFs5Aseb8bmYN89dR66vOKVIN93dJR5.nK.qe2aSJfqa0dUWboTS', NULL, 5.00, 'onboarding', 0, 31.57700490, 74.34470470, NULL, NULL, NULL, 'manual', NULL, 0, 0.00, '4B105D', 'uploads/16243791391132001905_03034477326.png', NULL, '2021-06-22 21:25:39', '2021-06-22 21:29:09'),
(32, 'Nabiha', 'Afzal', 'nabihaafzal2@gmail.com', 'MALE', 'US', '3354279897', '$2y$10$hXAYnbAMU/DFvy8NCLRFzeHGHrL6yC.BDr.fZdRgx2ZsnmLtXKawO', NULL, 5.00, 'onboarding', 0, 31.59342820, 74.22908700, NULL, NULL, NULL, 'manual', NULL, 0, 0.00, 'BE24E0', 'uploads/1624428123786507631_3354279897.png', NULL, '2021-06-23 11:02:03', '2021-06-23 13:08:53'),
(33, 'nabiha', 'afzal', 'nBiha123@gmail.com', 'MALE', 'US', '8539', '$2y$10$5nrua3gBo5JRQdoByV1SkOqdmbn/.ndZTM31S2KGKwCW0haCQY2ky', NULL, 5.00, 'onboarding', 0, 31.59343520, 74.22906290, NULL, NULL, NULL, 'manual', NULL, 0, 0.00, 'C01E8C', 'uploads/16244371811603345568_8539.png', NULL, '2021-06-23 13:33:01', '2021-06-23 13:35:48'),
(34, 'sam', 'ali', 'stationcar46@gmail.com', 'MALE', '+44', '7891311623', '$2y$10$qxRzXRlOC.iSxSbAE3FS1eM/8mNKHXjZ1Cxmn2SVRuuBrRdb9qb/S', NULL, 5.00, 'document', 0, NULL, NULL, NULL, NULL, NULL, 'manual', NULL, 0, 0.00, NULL, 'uploads/16246583731248544622_7891311623.png', NULL, '2021-06-26 02:59:33', '2021-06-26 02:59:33'),
(35, 'dev', 'sri', 'abc@gmail.com', 'MALE', 'US', '8318214163', '$2y$10$EiPClixkITVfGMHkeADqQeJ6xBJCF/hRYCU6EvEbdtm2jE.IFDXoi', NULL, 5.00, 'onboarding', 0, 12.98011930, 77.50836930, NULL, NULL, NULL, 'manual', NULL, 0, 0.00, '50BE99', 'uploads/1624737966754467601_8318214163.png', NULL, '2021-06-27 01:06:06', '2021-06-27 01:10:21'),
(36, 'io', 'shavtraka', 'io@driver.com', 'MALE', 'US', '563563289', '$2y$10$XfJCS0R3f.JLytioe3qWMe8YEPS/XFXEK5ZmieVDXcf7hhHSgewv.', NULL, 5.00, 'onboarding', 0, NULL, NULL, NULL, NULL, NULL, 'manual', NULL, 0, 0.00, 'BE6BA1', 'uploads/1624815444997958113_563563289.png', NULL, '2021-06-27 22:37:24', '2021-06-27 22:38:03'),
(37, 'ioana', 'taxi', 'ioana@fanda.com', 'MALE', 'US', '686649499', '$2y$10$jWYoFrnituQ5lE2AIfmXW.yUxG84859vn3jhN7Jz3rB6oJLS9DLFS', NULL, 5.00, 'onboarding', 0, 41.75351290, 44.75761260, NULL, NULL, NULL, 'manual', NULL, 0, 0.00, '8FB7C2', 'uploads/16248158251060520823_686649499.png', NULL, '2021-06-27 22:43:45', '2021-06-28 01:57:17'),
(38, 'Hamza', 'Ahsan', 'aleehumza1@gmail.com', 'MALE', 'US', '03342795379', '$2y$10$TQiF4TTDqQuoPxiXwoQste6vB8ijbrwWIBPDOGcesBiLh1K9CBI3m', NULL, 5.00, 'document', 0, NULL, NULL, NULL, NULL, NULL, 'manual', NULL, 0, 0.00, '3E38AA', 'uploads/16249089101606310054_03342795379.png', NULL, '2021-06-29 00:35:10', '2021-06-29 00:35:10'),
(39, 'hsbs', 'vr r ', 'Ako.biganishvili@gmail.com', 'MALE', 'US', '655659986', '$2y$10$X8B.Xm0y0vlDE9rDiEgugOCbkWL4FDOtLuXRjWU3Gp69oV5HDD6K2', NULL, 5.00, 'document', 0, NULL, NULL, NULL, NULL, NULL, 'manual', NULL, 0, 0.00, '0996F6', 'uploads/16249625812098836544_655659986.png', NULL, '2021-06-29 15:29:41', '2021-06-29 15:29:41');

-- --------------------------------------------------------

--
-- Table structure for table `provider_cards`
--

CREATE TABLE `provider_cards` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `last_four` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `card_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `brand` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_default` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `provider_devices`
--

CREATE TABLE `provider_devices` (
  `id` int(10) UNSIGNED NOT NULL,
  `provider_id` int(11) NOT NULL,
  `udid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sns_arn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` enum('android','ios') COLLATE utf8_unicode_ci NOT NULL,
  `jwt_token` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `provider_devices`
--

INSERT INTO `provider_devices` (`id`, `provider_id`, `udid`, `token`, `sns_arn`, `type`, `jwt_token`, `created_at`, `updated_at`) VALUES
(2, 2, '', '', NULL, 'android', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjIsImlzcyI6Imh0dHBzOi8vaXlhd2ViLmNvbS9hcGkvcHJvdmlkZXIvb2F1dGgvdG9rZW4iLCJpYXQiOjE2MjIyMTAxODksImV4cCI6MTYyMjU3MDE4OSwibmJmIjoxNjIyMjEwMTg5LCJqdGkiOiJnNzVheW5tV2lxU0tNc3JyIn0.lR4R1_lzXG_tnjGh_d48sVTedYMIaSq-Sp0kioFbLcE', '2021-04-19 21:09:21', '2021-06-04 12:18:02'),
(3, 3, 'd651ad6bb515a9b6', 'cUk5AJyvMIc:APA91bESpmXLQEI2gTyDp216aQPReUv0vOj-57_2Rfm4MrLtlgVv7kLHRIIXb08OdXEEZqzwoh6nhRe8U_bzG3U6Pqyn3VdWmS5YJTXey5qhMpX-QwOeztZIasmkuuB0PCg-oHdYb13G', NULL, 'android', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjMsImlzcyI6Imh0dHBzOi8vaXlhd2ViLmNvbS9hcGkvcHJvdmlkZXIvb2F1dGgvdG9rZW4iLCJpYXQiOjE2MjI3MTEyMzksImV4cCI6MTYyMzA3MTIzOSwibmJmIjoxNjIyNzExMjM5LCJqdGkiOiI0T2FGY2g2NVhhSDBOcU9YIn0.Kc2qs12qhbKb-feTA6ARjp9m0IE6a8edWOUhmVQTq70', '2021-04-22 15:09:51', '2021-06-03 09:07:20'),
(4, 4, '3dafcd6e3a0f3e49', 'fQnjESBG7ME:APA91bGMXr01q51Z5v_ulNW0diUeeKLux4C9a8_6PsoWsOw47qQWsxfu7AFppUMWxVc2190i0wv-fjIeT9WAtn6X5-Uj6UahwPDWkktUnZO-ztszYCumht2-1Kz1CTPSqCHs4lCdDBoI', NULL, 'android', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjQsImlzcyI6Imh0dHBzOi8vaXlhd2ViLmNvbS9hcGkvcHJvdmlkZXIvcmVnaXN0ZXIiLCJpYXQiOjE2MTk2Mjc2ODksImV4cCI6MTYxOTk4NzY4OSwibmJmIjoxNjE5NjI3Njg5LCJqdGkiOiJieFU5RDN4NWw4bXRsUVBhIn0.Ev02wfZyhoQIsxkt8EKbIl7LRDyjFNs0h59Cj-PjgNM', '2021-04-28 16:34:49', '2021-04-28 16:34:49'),
(5, 5, '80ca4432f0222c0c', 'eEv8EHqBSU4:APA91bGkYdK630Vik0mUUk3YhbIkKd68c--vdZMTz5p8TCbYy6S_lvdG0-QYykcVJe0s434Je_Ly3eOGEQ2imXYpQp5_Qm8gfFIVeaS4bcbKs0shHG3QsR3GmM3FxOMPVYe5AMYOmHrp', NULL, 'android', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjUsImlzcyI6Imh0dHBzOi8vaXlhd2ViLmNvbS9hcGkvcHJvdmlkZXIvb2F1dGgvdG9rZW4iLCJpYXQiOjE2MTk2ODQyNzgsImV4cCI6MTYyMDA0NDI3OCwibmJmIjoxNjE5Njg0Mjc4LCJqdGkiOiJxRmlaY0Q2bWJLcGFqYnE3In0.uEPnqHZWHAb3l1iOKVrj2GBWw2dPlxTTia8Q1nylMQs', '2021-04-29 08:15:53', '2021-04-29 08:17:58'),
(6, 6, '', '', NULL, 'android', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjYsImlzcyI6Imh0dHBzOi8vaXlhd2ViLmNvbS9hcGkvcHJvdmlkZXIvcmVnaXN0ZXIiLCJpYXQiOjE2MjAxMTEwMzUsImV4cCI6MTYyMDQ3MTAzNSwibmJmIjoxNjIwMTExMDM1LCJqdGkiOiJVc2dHZFpqTElJWnhFRUpMIn0.cNkfsKjJFVxUY07TwP1FcGdN2TIkdiDDF-nW_tDBhaI', '2021-05-04 06:50:35', '2021-05-05 11:07:14'),
(7, 7, '69734f317fbb78e0', 'cRJbCdTNArY:APA91bEdtfUns-ktYu7Cq--ep3RA0JHTxHgZEXJec5PGat3uyjAT_Nu3sImTXMZCVlGs0mvX1eKehjpwJ9AeT3gffPuGRNol5y0rlNOivkyd6H_65QwuLarMoQ7509xgMF5--Ob8CiHD', NULL, 'android', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjcsImlzcyI6Imh0dHBzOi8vaXlhd2ViLmNvbS9hcGkvcHJvdmlkZXIvb2F1dGgvdG9rZW4iLCJpYXQiOjE2MjIyMTE4MzgsImV4cCI6MTYyMjU3MTgzOCwibmJmIjoxNjIyMjExODM4LCJqdGkiOiJrZWdjcHBtVm5UOWRZa0dCIn0.DJJM1ZC_bLQmCuZ6Am1o9bZfvxMdJ-5IqPPE7ErjPvk', '2021-05-05 18:49:01', '2021-05-28 14:23:58'),
(8, 8, '9687b01cabbbccf4', 'dnZslQx6RCY:APA91bGD6cLW276ItHW7YfOFv5egmONwIBuXc4Yu5iSN1WwI3s25QMt_UdXJbkwowVFRYNJUApaFJNyNt6-fAZToPh8RcqWYpQK2OuYmh-SkEqTG3-joABFENeMYOExmdhkMau4Gwd9r', NULL, 'android', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjgsImlzcyI6Imh0dHBzOi8vaXlhd2ViLmNvbS9hcGkvcHJvdmlkZXIvcmVnaXN0ZXIiLCJpYXQiOjE2MjAyOTcwMjAsImV4cCI6MTYyMDY1NzAyMCwibmJmIjoxNjIwMjk3MDIwLCJqdGkiOiI0alFHcHJxT1NoS2txSk9tIn0.hSxLrqhqJxLNJ_UlbHutvE7BtM3eRb_PMC4bY4vQOs0', '2021-05-06 10:30:20', '2021-05-06 10:30:20'),
(9, 9, '', '', NULL, 'android', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjksImlzcyI6Imh0dHBzOi8vaXlhd2ViLmNvbS9hcGkvcHJvdmlkZXIvcmVnaXN0ZXIiLCJpYXQiOjE2MjA1ODc1NDUsImV4cCI6MTYyMDk0NzU0NSwibmJmIjoxNjIwNTg3NTQ1LCJqdGkiOiJKOXlYZ0dPWnJqNFJ5SzhIIn0.77RTUrTxqK5z4wnZm3DT81WxXKxNjhiUiyDqGfsYYOE', '2021-05-09 19:12:25', '2021-05-09 19:12:50'),
(10, 10, '82be666c721ea0b4', 'fNq_enrvdWk:APA91bHyNnTYUcUEN9gYb_SU1Wt0rAc16N1PrUi69oEI6T3fz5fmC5EZvhzJQuwIALpD60jeJ3J-teYHTtYZGfKTAUQTG2r1M1kWyfg0bO068v9UGrU4K5qxpzSMA0VZHuUeM-hymQnT', NULL, 'android', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjEwLCJpc3MiOiJodHRwczovL2l5YXdlYi5jb20vYXBpL3Byb3ZpZGVyL29hdXRoL3Rva2VuIiwiaWF0IjoxNjIxNTk2NTUzLCJleHAiOjE2MjE5NTY1NTMsIm5iZiI6MTYyMTU5NjU1MywianRpIjoiUFd5aDh6b3ZtNFhkenB5eiJ9.c82ZzYL2WHPIbAf_aMQ4-ahEatMPM6bsvMl-pL81fXs', '2021-05-11 09:01:31', '2021-05-21 11:29:13'),
(11, 11, '439d9b29a0a32378', 'e2OkscM66dM:APA91bGPN8u1dBbyJIGZrX7GcSWUp0FtLaGaUnYYWDZ_hoG3HtKFtcPiEa5ltrPWzQ7VAvLcYE--U0vHM-EmurO9iNGKIq-VvqMzRsaR9f4SnJYW4jqPNvEYRXARHS5hliFe_K9okfuJ', NULL, 'android', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjExLCJpc3MiOiJodHRwczovL2l5YXdlYi5jb20vYXBpL3Byb3ZpZGVyL29hdXRoL3Rva2VuIiwiaWF0IjoxNjIyNTg1OTE2LCJleHAiOjE2MjI5NDU5MTYsIm5iZiI6MTYyMjU4NTkxNiwianRpIjoidEVZZFpBTEw5RHJjMHJVUiJ9.rrSZToL1oSM9BP3Yh1Dzcm-0ZDOvZ7d2qCbKjvPj5g0', '2021-05-17 11:35:53', '2021-06-01 22:18:36'),
(12, 12, '2afd7420a27488fc', 'eee0oucu3YI:APA91bFUnko6Xwdd3JCVpvzu6QDGPmZnQCfg1KsP73S_ML8PIAqe2X2lGMyryj17ZzSOmRBostfDb1yGZjgXrwNcbF8GT0VzBkttMkz98yJVbUxVYj5v1YWeFEf29ciJRmh8jjNynD_7', NULL, 'android', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjEyLCJpc3MiOiJodHRwczovL2l5YXdlYi5jb20vYXBpL3Byb3ZpZGVyL3JlZ2lzdGVyIiwiaWF0IjoxNjIxMzU1ODM3LCJleHAiOjE2MjE3MTU4MzcsIm5iZiI6MTYyMTM1NTgzNywianRpIjoiRjBFRllpcWc3ZkJGWnVTcyJ9.bcqXZZC8MQxKRh0-P32CiBGY5FIpVuEE9_-EG0Jxw0M', '2021-05-18 16:37:17', '2021-05-18 16:37:17'),
(13, 13, '7b2ed3c9197c9b50', 'clO2xDuPj2k:APA91bF-eFoXtVfDhodpvFXhL6trJsTb54GBGHIuqN6B2M1H1w9ETLVLjYFz8a8YkYb8tij2TAqYQavfBUyFcGfsfjl7QnTJkpPrzSBDFGqtcRL5cKTLqgvnLBUTP44enzx54hcwfHQ_', NULL, 'android', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjEzLCJpc3MiOiJodHRwczovL2l5YXdlYi5jb20vYXBpL3Byb3ZpZGVyL3JlZ2lzdGVyIiwiaWF0IjoxNjIxNDIzMDMwLCJleHAiOjE2MjE3ODMwMzAsIm5iZiI6MTYyMTQyMzAzMCwianRpIjoiZGRUS3FXYVpPdmFKb2RiMyJ9.hPkN83b6n0KbYUmY7a8hYEwOVWR8wQw8sn99cm50-x0', '2021-05-19 11:17:10', '2021-05-19 11:17:10'),
(14, 14, '5936baef6c160407', 'drP2TM13TfA:APA91bF6ROKyyUVubTECRuVH2WlGqVZFOffL-guZ3Q44ULaCJZxMCnpXAjIpVIulVGyYFMUtrTxpLV805r70gs8EJIW8wjQzJ0MtZJY97ZHmt9Vg0WF9YcPotXeUZLKgrkQto4GdDQRl', NULL, 'android', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjE0LCJpc3MiOiJodHRwczovL2l5YXdlYi5jb20vYXBpL3Byb3ZpZGVyL29hdXRoL3Rva2VuIiwiaWF0IjoxNjIxNDMyNDk0LCJleHAiOjE2MjE3OTI0OTQsIm5iZiI6MTYyMTQzMjQ5NCwianRpIjoiNDB2Vk5DVk5XY3A1WWhmMSJ9.HtRc0aniyK_ZHS_exmzbCcOh5Iv8tNnM3G1eL8ZdXqU', '2021-05-19 13:52:39', '2021-05-19 13:54:54'),
(15, 15, '9e5714db67b03525', 'c8PbZUbUQzs:APA91bFpVGtir5uaElab19nW100Sy3D5oY4v1YK_OI8JXHzX5OmdSHjl_RAaargIl7CQezMObV1P0aEyWkLTp0sUIHMJ5jFKSqnksXfP7dM0PglfPtJbKQHaMuOvqTAoN6e0L9nRXHpa', NULL, 'android', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjE1LCJpc3MiOiJodHRwczovL2l5YXdlYi5jb20vYXBpL3Byb3ZpZGVyL3JlZ2lzdGVyIiwiaWF0IjoxNjIxNDQ3ODIyLCJleHAiOjE2MjE4MDc4MjIsIm5iZiI6MTYyMTQ0NzgyMiwianRpIjoiMlhPSFR0YmQ0cGsyT0N3NCJ9.f5BTOYTUFmcX64EMcqPHhvZyqT4K0YFxMQ7jAjo2WKY', '2021-05-19 18:10:22', '2021-05-19 18:10:22'),
(16, 16, 'c944dd88bfc6cd57', 'ce-lnQ-iFXo:APA91bGD9IEIs7esVQ0v28N0cTVE6nanaCiL9em90PhF6cp8-Bw0LVF01L5t6Rm049QVFxBoSt83vDIBW21sXGaFgZ8NfH8-OowwjsW2328l9NzbJM57pDT8RXG3U0BrHeCuca7PSZbI', NULL, 'android', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjE2LCJpc3MiOiJodHRwczovL2l5YXdlYi5jb20vYXBpL3Byb3ZpZGVyL3JlZ2lzdGVyIiwiaWF0IjoxNjIyNjkxNzQ0LCJleHAiOjE2MjMwNTE3NDQsIm5iZiI6MTYyMjY5MTc0NCwianRpIjoiSXNqUUlTd0JvUUw0cWhwQyJ9.ZQIH8MY12u883lQPnWffi35LnGU5m7MmDYQ_dXycgPI', '2021-06-03 03:42:24', '2021-06-03 03:42:24'),
(17, 17, '', '', NULL, 'android', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjE3LCJpc3MiOiJodHRwczovL2l5YXdlYi5jb20vYXBpL3Byb3ZpZGVyL3JlZ2lzdGVyIiwiaWF0IjoxNjIyNzA5NTQ3LCJleHAiOjE2MjMwNjk1NDcsIm5iZiI6MTYyMjcwOTU0NywianRpIjoieWs2RFI3ZGE5Rm0wQkNBUyJ9.5aAy4AU2pqaD76BBJuqIBNgUzIV4R2udJuDj3yzLFbQ', '2021-06-03 08:39:07', '2021-06-03 08:39:35'),
(18, 18, '82be666c721ea0b4', 'c8LhVX3ikpo:APA91bE3BIP_wRZMnvUVUEyo7za2XjU88F2_xF9rYhPMv11IbQuIamLz1C7ExUIeue4wAzXgLvFMr5or2mYQtMC5m92uijM3oEKB5c4bksYLnu1O1CBYk5WoXOwJ1hMu_8M9rP74Cxgd', NULL, 'android', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjE4LCJpc3MiOiJodHRwczovL2l5YXdlYi5jb20vYXBpL3Byb3ZpZGVyL3JlZ2lzdGVyIiwiaWF0IjoxNjIyNzA5Njg2LCJleHAiOjE2MjMwNjk2ODYsIm5iZiI6MTYyMjcwOTY4NiwianRpIjoiSVdlYzhKQ25pbDU0VXZlWCJ9.rTHLU7E8LWkgyRBPX7ZjNrrVKulGX7BCpbdyImr4iLI', '2021-06-03 08:41:26', '2021-06-03 08:41:26'),
(19, 19, 'no device', 'no device', NULL, 'ios', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjE5LCJpc3MiOiJodHRwczovL3RheGkuZmFuZGFwYWtpc3Rhbi5vbmxpbmUvL2FwaS9wcm92aWRlci9vYXV0aC90b2tlbiIsImlhdCI6MTYyMzMyMDcyOSwiZXhwIjoxNjIzNjgwNzI5LCJuYmYiOjE2MjMzMjA3MjksImp0aSI6IkI5V29INnY2dWkwQ1RDWjkifQ.g5X6isQuHSkwHEGM2JkARBYYsookmhy5JZtxT97EFW4', '2021-06-04 10:55:51', '2021-06-10 10:55:29'),
(20, 20, '439d9b29a0a32378', 'emRIQrx9JMo:APA91bHvA1HBiapwDnyHMbcgXxS50QxtxTaPfa8lw8ZcVyHMmGC1Sx1ctYogaHsmy7gi1p8QbwsfA0lemNUaJ5NeHlKDKExEbAku0rAwCEm8b5zZ1JSTfPZlwwYsgtB2g34P-PLMpEhz', NULL, 'android', NULL, '2021-06-04 12:18:32', '2021-06-04 12:18:32'),
(21, 21, '', '', NULL, 'android', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjIxLCJpc3MiOiJodHRwczovL2l0cXBsdXNnbG9iYWwuY29tL2ZhbmRhdGF4aS9hcGkvcHJvdmlkZXIvb2F1dGgvdG9rZW4iLCJpYXQiOjE2MjM0MTAxODcsImV4cCI6MTYyMzc3MDE4NywibmJmIjoxNjIzNDEwMTg3LCJqdGkiOiJjalhCZERKbVZpcGVZVGlFIn0.UxLAuqNum0SvtwJI9sjsrUiq01MS9UNBM0pdxa5zIXE', '2021-06-04 13:27:27', '2021-06-11 16:54:05'),
(22, 22, '', '', NULL, 'android', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjIyLCJpc3MiOiJodHRwOi8vdGF4aS5mYW5kYXBha2lzdGFuLm9ubGluZS9hcGkvcHJvdmlkZXIvcmVnaXN0ZXIiLCJpYXQiOjE2MjMwNzMxODIsImV4cCI6MTYyMzQzMzE4MiwibmJmIjoxNjIzMDczMTgyLCJqdGkiOiIxUzhVQUhrdGJianlXSlZuIn0.t1WhaGQeF7a-DZEbuuuK0CzJTUutMAEzaZQM_LDlQkE', '2021-06-07 14:09:42', '2021-06-08 06:14:32'),
(23, 23, 'da741a6b6db82598', 'daIg6JTYmkc:APA91bG8uVySMg6WZ-2DDyTNEoxFdlmRtk_hdmtB76AzOHbX6XgONc4q4O6K4zsBsp3Jmg0BdbN8a7Nja6qcZDFCbFYnKsb7J7wosxHmTHyYZcTZt-8uPQxyNECFEMFVrhOrex1jT9jv', NULL, 'android', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjIzLCJpc3MiOiJodHRwOi8vdGF4aS5mYW5kYXBha2lzdGFuLm9ubGluZS9hcGkvcHJvdmlkZXIvcmVnaXN0ZXIiLCJpYXQiOjE2MjMxNDQ2NjIsImV4cCI6MTYyMzUwNDY2MiwibmJmIjoxNjIzMTQ0NjYyLCJqdGkiOiJlVVdmeVVKcWNhNVRGbnNNIn0.X_Yy7HBM8EDOa4ZVE1ZLPve7eE4oBbgPb-HhBDZ4Oqg', '2021-06-08 10:01:02', '2021-06-08 10:01:02'),
(24, 24, 'no device', 'no device', NULL, 'ios', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjI0LCJpc3MiOiJodHRwczovL2l0cXBsdXNnbG9iYWwuY29tL2ZhbmRhdGF4aS8vYXBpL3Byb3ZpZGVyL29hdXRoL3Rva2VuIiwiaWF0IjoxNjIzNDE0MTI3LCJleHAiOjE2MjM3NzQxMjcsIm5iZiI6MTYyMzQxNDEyNywianRpIjoidlJwaXhkREJjZ3QxZ2tCYiJ9.LW9CARd8NzPbSD-Fq_KOyFeGUi_iGpdfoG5E2r4ERBI', '2021-06-08 11:39:30', '2021-06-11 17:22:07'),
(25, 25, '7b2e46bff6b0b452', 'ecQnDSd7tIs:APA91bHQvsUVfinGPHsfJI1538b9QB0Lco-kJUxz5jfXL8gq6QbrzxjRT4FOI2u2m2Aeh8_g573MLRwrAx4AnrUZWSARWnBUfwhE0Fyh3axYIhD2U1_4uwfYImzpvS62B1XLguYGB25U', NULL, 'android', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjI1LCJpc3MiOiJodHRwczovL2l0cXBsdXNnbG9iYWwuY29tL2ZhbmRhdGF4aS9hcGkvcHJvdmlkZXIvb2F1dGgvdG9rZW4iLCJpYXQiOjE2MjM0MTExMjcsImV4cCI6MTYyMzc3MTEyNywibmJmIjoxNjIzNDExMTI3LCJqdGkiOiJRUTNSMlpiRGFxd0wzMVNGIn0.IoS0UqV26veDr_ceiSBZX3jGjy_w4LiNlWPxkA_q-dw', '2021-06-10 13:17:39', '2021-06-11 16:32:07'),
(26, 26, '804efe0783b71ad1', 'dKictMzgMoY:APA91bHC4dRG-gSm-CvX-U_y_EZJ4KjRwYuPJW5MUSt_aUl4Cl5s4FDzQ33tsO29DhrltdZcfNbh33L_4FRdMJaTtkW-v3IXc5k_f6XFq1v6Mm22Zoahsw89hWJdqqo3nFU_STjoEQ3S', NULL, 'android', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjI2LCJpc3MiOiJodHRwOi8vdGF4aS5mYW5kYXBha2lzdGFuLm9ubGluZS9hcGkvcHJvdmlkZXIvb2F1dGgvdG9rZW4iLCJpYXQiOjE2MjMzOTk3MzAsImV4cCI6MTYyMzc1OTczMCwibmJmIjoxNjIzMzk5NzMwLCJqdGkiOiI2dzIycW5YOTJyRmE0NVR3In0.cn4SmGDGZaI3x8A_OI8iLJbV5T07-wxBDDGanqLSP2w', '2021-06-11 08:41:25', '2021-06-11 08:52:10'),
(27, 27, '', '', NULL, 'android', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjI3LCJpc3MiOiJodHRwOi8vdGF4aS5mYW5kYXBha2lzdGFuLm9ubGluZS9hcGkvcHJvdmlkZXIvb2F1dGgvdG9rZW4iLCJpYXQiOjE2MjMzOTk2MjksImV4cCI6MTYyMzc1OTYyOSwibmJmIjoxNjIzMzk5NjI5LCJqdGkiOiJMVG9ZZ1N1a09PS2JBM3I0In0.cxgwODac41o9hmmW8-QAdPK7v_i7rXO207ivJlRh5WE', '2021-06-11 08:45:40', '2021-06-11 08:51:53'),
(28, 28, '439d9b29a0a32378', 'c54piC4jWfc:APA91bGwaJk7QgMU3qjhHBKVe3_Dv9uj42aLVQMVO0LPLFo_bPETlXXmvGCPJ9xF8c3qs3WexZoYob2DadosvUw5QrvGvE_mbIF181jPCcVsDVjJXjOFL0EtSENXJtYppEmEaRwHuDRP', NULL, 'android', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjI4LCJpc3MiOiJodHRwczovL2l0cXBsdXNnbG9iYWwuY29tL2ZhbmRhdGF4aS9hcGkvcHJvdmlkZXIvcmVnaXN0ZXIiLCJpYXQiOjE2MjM0MzQ2MDYsImV4cCI6MTYyMzc5NDYwNiwibmJmIjoxNjIzNDM0NjA2LCJqdGkiOiJENnRtSU1NWTBKNnI1Sks2In0.o4-EQQ7Z8pqZIMiPtISrPQ1Cf4Q73kJ8Kh6c4h57TQQ', '2021-06-11 23:03:26', '2021-06-11 23:03:26'),
(29, 29, '', '', NULL, 'android', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjI5LCJpc3MiOiJodHRwczovL2l0cXBsdXNnbG9iYWwuY29tL2ZhbmRhdGF4aS9hcGkvcHJvdmlkZXIvb2F1dGgvdG9rZW4iLCJpYXQiOjE2MjQwMDAzNDAsImV4cCI6MTYyNDM2MDM0MCwibmJmIjoxNjI0MDAwMzQwLCJqdGkiOiJCNkNOazA5TlRiM3UyVDBkIn0.EKx63s17RjJY39z2OFOvPzUZYe5Rp6iLRYHXK_2X5Cw', '2021-06-17 11:48:43', '2021-06-18 12:15:25'),
(30, 30, '2afd7420a27488fc', 'cs2JMziyfmM:APA91bE1l3-dxkv7nGfe2zGv-Kl5odunxWN0ECkBtR9Fv8mOG8WhExDh5T5RGXC6KvPirKRF6DhMIE_WBdpryOWULQ6dNvQgcR_a0OCjF2OeM4JKW9TM5JXwcrcOL710bF-5eqxoq9KH', NULL, 'android', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjMwLCJpc3MiOiJodHRwczovL2l0cXBsdXNnbG9iYWwuY29tL2ZhbmRhdGF4aS9hcGkvcHJvdmlkZXIvb2F1dGgvdG9rZW4iLCJpYXQiOjE2MjQyMjA4MTIsImV4cCI6MTYyNDU4MDgxMiwibmJmIjoxNjI0MjIwODEyLCJqdGkiOiJQa1Z4cjE2cVdGZG9hampSIn0.BWoUOlUqAJ5QV6kOK-KoY0GYUpdMSnClENVjcOmj-SQ', '2021-06-20 19:38:59', '2021-06-21 01:26:52'),
(31, 31, '6aeb30eaae5fb3ca', 'eHYgpyNApm4:APA91bGkrdQpNjzFnq0QHEK7x6cywrh8YGzcUv1dTYB-026ag7Xu9XOjutEjN2CkAfvKQnq0NUHmfWCA3pUEFnmcrykiUBU_H-u_b0czK4VLB979YmyLB0noZHQqIfBcjjsp1RkEElGt', NULL, 'android', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjMxLCJpc3MiOiJodHRwczovL2l0cXBsdXNnbG9iYWwuY29tL2ZhbmRhdGF4aS9hcGkvcHJvdmlkZXIvb2F1dGgvdG9rZW4iLCJpYXQiOjE2MjQzNzkyNTcsImV4cCI6MTYyNDczOTI1NywibmJmIjoxNjI0Mzc5MjU3LCJqdGkiOiIwbEZmYThJQnRKeFZnQXFoIn0.Fd3mKUTn3VyzX0UcgPit6lh21uDS8SdadNVkr1fyucE', '2021-06-22 21:25:39', '2021-06-22 21:27:37'),
(32, 32, '', '', NULL, 'android', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjMyLCJpc3MiOiJodHRwczovL2l0cXBsdXNnbG9iYWwuY29tL2ZhbmRhdGF4aS9hcGkvcHJvdmlkZXIvcmVnaXN0ZXIiLCJpYXQiOjE2MjQ0MjgxMjMsImV4cCI6MTYyNDc4ODEyMywibmJmIjoxNjI0NDI4MTIzLCJqdGkiOiJFTklsSjhuRXNWeld4Z0UyIn0.EDREwp0siTqSAunIUakmS7pfGaAuowfhDRggL8dgCCs', '2021-06-23 11:02:03', '2021-06-23 13:08:55'),
(33, 33, 'ec72ca8befc5fec1', 'fASo6YC-Sts:APA91bEe97x8nSY6wuAfUazhwS9bsFRi6uB79csryUOkigZiQr--MBnzicKvUBOoX1xKnvrq09PLgFERTErJeVGYUY5pIePGiGH8KY5H2rQm7wpTpuw4l4ADUUGtCZh-ndgaZfdZzZSl', NULL, 'android', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjMzLCJpc3MiOiJodHRwczovL2l0cXBsdXNnbG9iYWwuY29tL2ZhbmRhdGF4aS9hcGkvcHJvdmlkZXIvcmVnaXN0ZXIiLCJpYXQiOjE2MjQ0MzcxODEsImV4cCI6MTYyNDc5NzE4MSwibmJmIjoxNjI0NDM3MTgxLCJqdGkiOiJhUk1Ja1FVY3BuM1d0RU1BIn0.MHUpMtXX46eYs6zGaST8eeKQ14BjBS07TnMkO75i8eI', '2021-06-23 13:33:01', '2021-06-23 13:33:01'),
(34, 35, 'ef57d829e1eaca67', 'eWuyQeLkMfk:APA91bFpGh8AIiMd7ZZ_wqFvZDql4IdX9M7JEUlII675Ih3EBYUo1mEid1taWTpj3l-KzpHXMN1TABxR-5qWFlEwD0XXkaEhSGWA3V6gJyoAHWPyPsM3QV8WnFRny92MzbHtpIHJwq6T', NULL, 'android', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjM1LCJpc3MiOiJodHRwczovL2l0cXBsdXNnbG9iYWwuY29tL2ZhbmRhdGF4aS9hcGkvcHJvdmlkZXIvcmVnaXN0ZXIiLCJpYXQiOjE2MjQ3Mzc5NjYsImV4cCI6MTYyNTA5Nzk2NiwibmJmIjoxNjI0NzM3OTY2LCJqdGkiOiJkdWFMNjA3WnRjdzV2cmsyIn0.Q5oxDEXhlgblYTZRyNxfKq6IyPcGlh1CRjdqD4IsrQM', '2021-06-27 01:06:06', '2021-06-27 01:06:06'),
(35, 36, 'e5b9daf181af9297', 'fyAevLafYM0:APA91bG4C-OVLKsPaoGt3froVOLXp4Bjkhz7eVE0HLjfUpEw3HFyYdyuUe3E6MiKeJxrVirvJgYvamIR911t4gcLEw3G-NvComC6g_j6XySHkXoyl6ErvWnCdwCpl3AZwGCkGhW2H4W7', NULL, 'android', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjM2LCJpc3MiOiJodHRwczovL2l0cXBsdXNnbG9iYWwuY29tL2ZhbmRhdGF4aS9hcGkvcHJvdmlkZXIvcmVnaXN0ZXIiLCJpYXQiOjE2MjQ4MTU0NDQsImV4cCI6MTYyNTE3NTQ0NCwibmJmIjoxNjI0ODE1NDQ0LCJqdGkiOiJUU3lHSHc1ejNJekxoMmNrIn0.xvtmCFXFMLQgnSDlMOqR-hDBLSb1qCFdKGkNQ_c0bCU', '2021-06-27 22:37:24', '2021-06-27 22:37:24'),
(36, 37, 'e5b9daf181af9297', 'fyAevLafYM0:APA91bG4C-OVLKsPaoGt3froVOLXp4Bjkhz7eVE0HLjfUpEw3HFyYdyuUe3E6MiKeJxrVirvJgYvamIR911t4gcLEw3G-NvComC6g_j6XySHkXoyl6ErvWnCdwCpl3AZwGCkGhW2H4W7', NULL, 'android', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjM3LCJpc3MiOiJodHRwczovL2l0cXBsdXNnbG9iYWwuY29tL2ZhbmRhdGF4aS9hcGkvcHJvdmlkZXIvcmVnaXN0ZXIiLCJpYXQiOjE2MjQ4MTU4MjUsImV4cCI6MTYyNTE3NTgyNSwibmJmIjoxNjI0ODE1ODI1LCJqdGkiOiJwcGlQMndJMnlPMU1uTk00In0.IFN15Ye4CA6nhS2HaSZrmqOD_fNlDHF-dEyDteK1nbE', '2021-06-27 22:43:45', '2021-06-27 22:43:45'),
(37, 38, '', '', NULL, 'android', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjM4LCJpc3MiOiJodHRwczovL2l0cXBsdXNnbG9iYWwuY29tL2ZhbmRhdGF4aS9hcGkvcHJvdmlkZXIvcmVnaXN0ZXIiLCJpYXQiOjE2MjQ5MDg5MTAsImV4cCI6MTYyNTI2ODkxMCwibmJmIjoxNjI0OTA4OTEwLCJqdGkiOiJlT1RzOGNrS1NrbTMyS1VxIn0.ovTE7GQnhaBreHLz4DoSp95Tx_UDfemwRAM881Mblqk', '2021-06-29 00:35:10', '2021-06-29 00:38:06'),
(38, 39, '', '', NULL, 'android', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjM5LCJpc3MiOiJodHRwczovL2l0cXBsdXNnbG9iYWwuY29tL2ZhbmRhdGF4aS9hcGkvcHJvdmlkZXIvcmVnaXN0ZXIiLCJpYXQiOjE2MjQ5NjI1ODEsImV4cCI6MTYyNTMyMjU4MSwibmJmIjoxNjI0OTYyNTgxLCJqdGkiOiI5SUNoSHhzMjMwTVhJU0ZvIn0.OAiHyiBIANXNCd_ZYBhm-uzsKxzz-ZzNuojzh2rxZVQ', '2021-06-29 15:29:41', '2021-06-29 15:30:38');

-- --------------------------------------------------------

--
-- Table structure for table `provider_documents`
--

CREATE TABLE `provider_documents` (
  `id` int(10) UNSIGNED NOT NULL,
  `provider_id` int(11) NOT NULL,
  `document_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `unique_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('ASSESSING','ACTIVE') COLLATE utf8_unicode_ci NOT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `provider_documents`
--

INSERT INTO `provider_documents` (`id`, `provider_id`, `document_id`, `url`, `unique_id`, `status`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 2, '1', 'provider/documents/2/DrivingLicence.jpg', NULL, 'ACTIVE', NULL, '2021-04-20 10:12:25', '2021-04-20 10:15:10'),
(5, 2, '5', 'provider/documents/2/RegistrationCertificate.jpg', NULL, 'ACTIVE', NULL, '2021-04-20 10:12:25', '2021-04-20 10:15:51'),
(8, 3, '1', 'provider/documents/3/DrivingLicence.jpg', NULL, 'ACTIVE', NULL, '2021-04-22 15:30:12', '2021-04-22 15:43:41'),
(12, 3, '5', 'provider/documents/3/RegistrationCertificate.jpg', NULL, 'ACTIVE', NULL, '2021-04-22 15:30:12', '2021-04-22 15:46:59'),
(15, 4, '1', 'provider/documents/4/DrivingLicence.jpg', NULL, 'ACTIVE', NULL, '2021-04-28 16:42:35', '2021-04-28 16:45:27'),
(19, 4, '5', 'provider/documents/4/RegistrationCertificate.jpg', NULL, 'ACTIVE', NULL, '2021-04-28 16:42:35', '2021-04-28 16:44:34'),
(22, 5, '1', 'provider/documents/5/DrivingLicence.jpg', NULL, 'ACTIVE', NULL, '2021-04-29 08:17:01', '2021-04-29 08:19:14'),
(26, 5, '5', 'provider/documents/5/RegistrationCertificate.jpg', NULL, 'ACTIVE', NULL, '2021-04-29 08:17:01', '2021-04-29 08:25:11'),
(29, 7, '5', 'provider/documents/7/RegistrationCertificate.png', NULL, 'ACTIVE', NULL, '2021-05-05 18:55:33', '2021-05-05 19:05:15'),
(30, 7, '1', 'provider/documents/7/DrivingLicence.png', NULL, 'ACTIVE', NULL, '2021-05-05 18:55:33', '2021-05-05 19:05:25'),
(43, 10, '1', 'provider/documents/10/DrivingLicence.jpg', NULL, 'ACTIVE', NULL, '2021-05-11 09:05:26', '2021-05-11 09:57:59'),
(47, 10, '5', 'provider/documents/10/RegistrationCertificate.jpg', NULL, 'ACTIVE', NULL, '2021-05-11 09:05:26', '2021-05-11 10:01:52'),
(50, 11, '1', 'provider/documents/11/DrivingLicence.jpg', NULL, 'ACTIVE', NULL, '2021-05-17 11:36:25', '2021-05-17 11:36:54'),
(51, 11, '5', 'provider/documents/11/VehicleRegistrationCertificate.jpg', NULL, 'ACTIVE', NULL, '2021-05-17 11:36:25', '2021-05-17 11:37:06'),
(52, 12, '1', 'provider/documents/12/DrivingLicence.jpg', NULL, 'ASSESSING', NULL, '2021-05-18 16:37:59', '2021-05-18 16:37:59'),
(53, 12, '5', 'provider/documents/12/VehicleRegistrationCertificate.jpg', NULL, 'ASSESSING', NULL, '2021-05-18 16:37:59', '2021-05-18 16:37:59'),
(54, 13, '1', 'provider/documents/13/DrivingLicence.jpg', NULL, 'ASSESSING', NULL, '2021-05-19 11:18:05', '2021-05-19 11:18:05'),
(55, 13, '5', 'provider/documents/13/VehicleRegistrationCertificate.jpg', NULL, 'ASSESSING', NULL, '2021-05-19 11:18:05', '2021-05-19 11:18:05'),
(56, 14, '1', 'provider/documents/14/DrivingLicence.jpg', NULL, 'ASSESSING', NULL, '2021-05-19 13:53:53', '2021-05-19 13:53:53'),
(57, 14, '5', 'provider/documents/14/VehicleRegistrationCertificate.jpg', NULL, 'ASSESSING', NULL, '2021-05-19 13:53:53', '2021-05-19 13:53:53'),
(58, 15, '1', 'provider/documents/15/DrivingLicence.jpg', NULL, 'ASSESSING', NULL, '2021-05-19 18:11:12', '2021-05-19 18:11:12'),
(59, 15, '5', 'provider/documents/15/VehicleRegistrationCertificate.jpg', NULL, 'ASSESSING', NULL, '2021-05-19 18:11:12', '2021-05-19 18:11:12'),
(60, 16, '1', 'provider/documents/16/DrivingLicence.jpg', NULL, 'ASSESSING', NULL, '2021-06-03 03:43:12', '2021-06-03 03:43:12'),
(61, 16, '5', 'provider/documents/16/VehicleRegistrationCertificate.jpg', NULL, 'ASSESSING', NULL, '2021-06-03 03:43:12', '2021-06-03 03:43:12'),
(62, 18, '1', 'provider/documents/18/DrivingLicence.jpg', NULL, 'ACTIVE', NULL, '2021-06-03 08:42:28', '2021-06-03 08:43:50'),
(63, 18, '5', 'provider/documents/18/VehicleRegistrationCertificate.jpg', NULL, 'ACTIVE', NULL, '2021-06-03 08:42:28', '2021-06-03 08:44:12'),
(64, 20, '1', 'provider/documents/20/DrivingLicence.jpg', NULL, 'ACTIVE', NULL, '2021-06-04 12:20:04', '2021-06-04 12:20:53'),
(65, 20, '5', 'provider/documents/20/VehicleRegistrationCertificate.jpg', NULL, 'ACTIVE', NULL, '2021-06-04 12:20:04', '2021-06-04 12:21:09'),
(66, 21, '1', 'provider/documents/21/DrivingLicence.jpg', NULL, 'ACTIVE', NULL, '2021-06-04 13:28:30', '2021-06-09 13:20:02'),
(67, 21, '5', 'provider/documents/21/VehicleRegistrationCertificate.jpg', NULL, 'ACTIVE', NULL, '2021-06-04 13:28:30', '2021-06-09 13:20:09'),
(68, 23, '1', 'provider/documents/23/DrivingLicence.jpg', NULL, 'ACTIVE', NULL, '2021-06-08 10:01:28', '2021-06-08 10:05:32'),
(69, 23, '5', 'provider/documents/23/VehicleRegistrationCertificate.jpg', NULL, 'ACTIVE', NULL, '2021-06-08 10:01:28', '2021-06-08 10:05:47'),
(70, 19, '5', 'provider/documents/19/VehicleRegistrationCertificate.png', NULL, 'ACTIVE', NULL, '2021-06-10 10:56:19', '2021-06-10 12:19:42'),
(71, 19, '1', 'provider/documents/19/DrivingLicence.png', NULL, 'ACTIVE', NULL, '2021-06-10 10:56:19', '2021-06-10 12:21:46'),
(72, 24, '5', 'provider/documents/24/VehicleRegistrationCertificate.png', NULL, 'ACTIVE', NULL, '2021-06-10 12:24:13', '2021-06-10 12:24:49'),
(73, 24, '1', 'provider/documents/24/DrivingLicence.png', NULL, 'ACTIVE', NULL, '2021-06-10 12:24:13', '2021-06-10 12:25:24'),
(74, 25, '1', 'provider/documents/25/DrivingLicence.jpg', NULL, 'ACTIVE', NULL, '2021-06-10 13:18:06', '2021-06-10 13:19:28'),
(75, 25, '5', 'provider/documents/25/VehicleRegistrationCertificate.jpg', NULL, 'ACTIVE', NULL, '2021-06-10 13:18:06', '2021-06-10 13:19:36'),
(76, 26, '1', 'provider/documents/26/DrivingLicence.jpg', NULL, 'ACTIVE', NULL, '2021-06-11 08:42:00', '2021-06-11 08:53:05'),
(77, 26, '5', 'provider/documents/26/VehicleRegistrationCertificate.jpg', NULL, 'ACTIVE', NULL, '2021-06-11 08:42:00', '2021-06-11 08:53:42'),
(78, 27, '1', 'provider/documents/27/DrivingLicence.jpg', NULL, 'ACTIVE', NULL, '2021-06-11 08:49:16', '2021-06-11 08:52:46'),
(79, 27, '5', 'provider/documents/27/VehicleRegistrationCertificate.jpg', NULL, 'ASSESSING', NULL, '2021-06-11 08:49:16', '2021-06-11 08:49:16'),
(80, 28, '1', 'provider/documents/28/DrivingLicence.jpg', NULL, 'ACTIVE', NULL, '2021-06-11 23:04:03', '2021-06-11 23:26:25'),
(81, 28, '5', 'provider/documents/28/VehicleRegistrationCertificate.jpg', NULL, 'ACTIVE', NULL, '2021-06-11 23:04:03', '2021-06-11 23:27:09'),
(82, 29, '1', 'provider/documents/29/DrivingLicence.jpg', NULL, 'ACTIVE', NULL, '2021-06-17 11:49:30', '2021-06-17 11:50:45'),
(83, 29, '5', 'provider/documents/29/VehicleRegistrationCertificate.jpg', NULL, 'ACTIVE', NULL, '2021-06-17 11:49:30', '2021-06-17 11:50:51'),
(84, 30, '1', 'provider/documents/30/DrivingLicence.jpg', NULL, 'ACTIVE', NULL, '2021-06-20 19:39:42', '2021-06-21 01:15:27'),
(85, 30, '5', 'provider/documents/30/VehicleRegistrationCertificate.jpg', NULL, 'ACTIVE', NULL, '2021-06-20 19:39:42', '2021-06-21 01:15:40'),
(86, 31, '1', 'provider/documents/31/DrivingLicence.jpg', NULL, 'ASSESSING', NULL, '2021-06-22 21:26:25', '2021-06-22 21:26:25'),
(87, 31, '5', 'provider/documents/31/VehicleRegistrationCertificate.jpg', NULL, 'ASSESSING', NULL, '2021-06-22 21:26:25', '2021-06-22 21:26:25'),
(88, 32, '1', 'provider/documents/32/DrivingLicence.jpg', NULL, 'ASSESSING', NULL, '2021-06-23 12:08:49', '2021-06-23 12:08:49'),
(89, 32, '5', 'provider/documents/32/VehicleRegistrationCertificate.jpg', NULL, 'ASSESSING', NULL, '2021-06-23 12:08:49', '2021-06-23 12:08:49'),
(90, 33, '1', 'provider/documents/33/DrivingLicence.jpg', NULL, 'ASSESSING', NULL, '2021-06-23 13:33:52', '2021-06-23 13:33:52'),
(91, 33, '5', 'provider/documents/33/VehicleRegistrationCertificate.jpg', NULL, 'ASSESSING', NULL, '2021-06-23 13:33:53', '2021-06-23 13:33:53'),
(92, 35, '1', 'provider/documents/35/DrivingLicence.jpg', NULL, 'ASSESSING', NULL, '2021-06-27 01:06:42', '2021-06-27 01:06:42'),
(93, 35, '5', 'provider/documents/35/VehicleRegistrationCertificate.jpg', NULL, 'ASSESSING', NULL, '2021-06-27 01:06:42', '2021-06-27 01:06:42'),
(94, 36, '1', 'provider/documents/36/DrivingLicence.jpg', NULL, 'ASSESSING', NULL, '2021-06-27 22:38:03', '2021-06-27 22:38:03'),
(95, 36, '5', 'provider/documents/36/VehicleRegistrationCertificate.jpg', NULL, 'ASSESSING', NULL, '2021-06-27 22:38:03', '2021-06-27 22:38:03'),
(96, 37, '1', 'provider/documents/37/DrivingLicence.jpg', NULL, 'ASSESSING', NULL, '2021-06-27 22:44:16', '2021-06-27 22:44:16'),
(97, 37, '5', 'provider/documents/37/VehicleRegistrationCertificate.jpg', NULL, 'ASSESSING', NULL, '2021-06-27 22:44:16', '2021-06-27 22:44:16');

-- --------------------------------------------------------

--
-- Table structure for table `provider_profiles`
--

CREATE TABLE `provider_profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `provider_id` int(11) NOT NULL,
  `language` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_secondary` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `provider_profiles`
--

INSERT INTO `provider_profiles` (`id`, `provider_id`, `language`, `address`, `address_secondary`, `city`, `country`, `postal_code`, `created_at`, `updated_at`) VALUES
(1, 4, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-28 16:46:47', '2021-04-28 16:46:47'),
(2, 2, 'ar', NULL, NULL, NULL, NULL, NULL, '2021-05-10 20:44:07', '2021-05-10 20:44:07'),
(3, 11, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-17 11:52:33', '2021-05-17 11:52:33'),
(4, 21, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-10 12:58:42', '2021-06-10 12:58:42'),
(5, 25, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-10 13:22:51', '2021-06-10 13:22:51');

-- --------------------------------------------------------

--
-- Table structure for table `provider_services`
--

CREATE TABLE `provider_services` (
  `id` int(10) UNSIGNED NOT NULL,
  `provider_id` int(11) NOT NULL,
  `service_type_id` int(11) NOT NULL,
  `status` enum('active','offline','riding','hold','balance') COLLATE utf8_unicode_ci NOT NULL,
  `service_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_model` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `provider_services`
--

INSERT INTO `provider_services` (`id`, `provider_id`, `service_type_id`, `status`, `service_number`, `service_model`, `created_at`, `updated_at`) VALUES
(1, 20, 5, 'active', '123', '2019', '2021-06-04 12:22:03', '2021-06-04 14:35:38'),
(2, 21, 5, 'offline', '121232', '2013', '2021-06-04 13:27:27', '2021-06-11 16:54:05'),
(3, 22, 3, 'offline', '1232143SDF', '132SDGF', '2021-06-07 14:09:42', '2021-06-08 06:14:32'),
(4, 23, 5, 'active', '786', '2021', '2021-06-08 10:01:02', '2021-06-09 15:40:23'),
(5, 24, 5, 'active', 'abc123', '2021', '2021-06-08 11:39:30', '2021-06-11 17:39:12'),
(6, 25, 3, 'active', '24321212', '2012', '2021-06-10 13:17:39', '2021-06-11 16:56:07'),
(7, 26, 3, 'active', 'jsjsj', '2002', '2021-06-11 08:41:24', '2021-06-11 09:01:24'),
(8, 27, 3, 'offline', '8171', '2012', '2021-06-11 08:45:40', '2021-06-11 08:51:53'),
(9, 28, 5, 'active', '989', '123', '2021-06-11 23:03:26', '2021-06-12 12:06:47'),
(10, 29, 3, 'offline', 'uwuw8h', 'jsjsis', '2021-06-17 11:48:43', '2021-06-18 12:15:25'),
(11, 30, 3, 'active', '0321', 'Toyota', '2021-06-20 19:38:59', '2021-06-21 01:31:09'),
(12, 31, 3, 'active', 'AFH 9071', '125', '2021-06-22 21:25:39', '2021-06-22 21:25:39'),
(13, 32, 6, 'offline', '27ube', 'civic', '2021-06-23 11:02:03', '2021-06-23 13:08:55'),
(14, 33, 3, 'active', 'fyg', 'bhs', '2021-06-23 13:33:01', '2021-06-23 13:33:01'),
(17, 35, 3, 'active', 'sggsgs', 'gsgs', '2021-06-27 01:06:06', '2021-06-27 01:06:06'),
(18, 36, 5, 'active', 'gh456kj', 'Crv', '2021-06-27 22:37:24', '2021-06-27 22:37:24'),
(19, 37, 5, 'active', 'gh456kj', 'crv', '2021-06-27 22:43:45', '2021-06-27 22:43:45'),
(20, 38, 3, 'offline', 'RNF-456', '1999', '2021-06-29 00:35:10', '2021-06-29 00:38:06'),
(21, 39, 5, 'offline', '134', 'gsheuh', '2021-06-29 15:29:41', '2021-06-29 15:30:38');

-- --------------------------------------------------------

--
-- Table structure for table `provider_wallet`
--

CREATE TABLE `provider_wallet` (
  `id` int(10) UNSIGNED NOT NULL,
  `provider_id` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `transaction_alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `transaction_desc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` enum('C','D') COLLATE utf8_unicode_ci NOT NULL,
  `amount` double(15,8) NOT NULL DEFAULT 0.00000000,
  `open_balance` double(15,8) NOT NULL DEFAULT 0.00000000,
  `close_balance` double(15,8) NOT NULL DEFAULT 0.00000000,
  `payment_mode` enum('BRAINTREE','CARD','PAYPAL','PAYUMONEY','PAYTM') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `provider_wallet`
--

INSERT INTO `provider_wallet` (`id`, `provider_id`, `transaction_id`, `transaction_alias`, `transaction_desc`, `type`, `amount`, `open_balance`, `close_balance`, `payment_mode`, `created_at`, `updated_at`) VALUES
(1, 21, 3, 'fandataxi705564', 'admin commission', 'D', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-09 14:15:13', '2021-06-09 14:15:13'),
(2, 21, 3, 'fandataxi705564', 'discount amount refund', 'C', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-09 14:15:13', '2021-06-09 14:15:13'),
(3, 21, 3, 'fandataxi705564', 'tax amount debited', 'D', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-09 14:15:13', '2021-06-09 14:15:13'),
(4, 21, 3, 'fandataxi705564', 'Peak hours commission', 'D', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-09 14:15:13', '2021-06-09 14:15:13'),
(5, 21, 3, 'fandataxi705564', 'Waiting charges commission', 'D', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-09 14:15:13', '2021-06-09 14:15:13'),
(6, 23, 4, 'fandataxi202330', 'admin commission', 'D', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-09 15:40:20', '2021-06-09 15:40:20'),
(7, 23, 4, 'fandataxi202330', 'discount amount refund', 'C', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-09 15:40:20', '2021-06-09 15:40:20'),
(8, 23, 4, 'fandataxi202330', 'tax amount debited', 'D', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-09 15:40:20', '2021-06-09 15:40:20'),
(9, 23, 4, 'fandataxi202330', 'Peak hours commission', 'D', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-09 15:40:20', '2021-06-09 15:40:20'),
(10, 23, 4, 'fandataxi202330', 'Waiting charges commission', 'D', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-09 15:40:20', '2021-06-09 15:40:20'),
(11, 21, 8, 'fandataxi644265', 'admin commission', 'D', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-10 10:20:41', '2021-06-10 10:20:41'),
(12, 21, 8, 'fandataxi644265', 'discount amount refund', 'C', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-10 10:20:41', '2021-06-10 10:20:41'),
(13, 21, 8, 'fandataxi644265', 'tax amount debited', 'D', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-10 10:20:41', '2021-06-10 10:20:41'),
(14, 21, 8, 'fandataxi644265', 'Peak hours commission', 'D', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-10 10:20:41', '2021-06-10 10:20:41'),
(15, 21, 8, 'fandataxi644265', 'Waiting charges commission', 'D', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-10 10:20:41', '2021-06-10 10:20:41'),
(16, 21, 9, 'fandataxi401226', 'admin commission', 'D', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-10 11:25:52', '2021-06-10 11:25:52'),
(17, 21, 9, 'fandataxi401226', 'discount amount refund', 'C', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-10 11:25:52', '2021-06-10 11:25:52'),
(18, 21, 9, 'fandataxi401226', 'tax amount debited', 'D', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-10 11:25:52', '2021-06-10 11:25:52'),
(19, 21, 9, 'fandataxi401226', 'Peak hours commission', 'D', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-10 11:25:52', '2021-06-10 11:25:52'),
(20, 21, 9, 'fandataxi401226', 'Waiting charges commission', 'D', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-10 11:25:52', '2021-06-10 11:25:52'),
(21, 21, 10, 'fandataxi593301', 'admin commission', 'D', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-10 12:06:26', '2021-06-10 12:06:26'),
(22, 21, 10, 'fandataxi593301', 'discount amount refund', 'C', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-10 12:06:26', '2021-06-10 12:06:26'),
(23, 21, 10, 'fandataxi593301', 'tax amount debited', 'D', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-10 12:06:26', '2021-06-10 12:06:26'),
(24, 21, 10, 'fandataxi593301', 'Peak hours commission', 'D', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-10 12:06:26', '2021-06-10 12:06:26'),
(25, 21, 10, 'fandataxi593301', 'Waiting charges commission', 'D', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-10 12:06:26', '2021-06-10 12:06:26'),
(26, 21, 11, 'fandataxi986269', 'admin commission', 'D', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-10 12:30:21', '2021-06-10 12:30:21'),
(27, 21, 11, 'fandataxi986269', 'discount amount refund', 'C', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-10 12:30:21', '2021-06-10 12:30:21'),
(28, 21, 11, 'fandataxi986269', 'tax amount debited', 'D', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-10 12:30:21', '2021-06-10 12:30:21'),
(29, 21, 11, 'fandataxi986269', 'Peak hours commission', 'D', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-10 12:30:21', '2021-06-10 12:30:21'),
(30, 21, 11, 'fandataxi986269', 'Waiting charges commission', 'D', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-10 12:30:21', '2021-06-10 12:30:21'),
(31, 21, 13, 'fandataxi921568', 'admin commission', 'D', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-10 12:41:36', '2021-06-10 12:41:36'),
(32, 21, 13, 'fandataxi921568', 'discount amount refund', 'C', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-10 12:41:36', '2021-06-10 12:41:36'),
(33, 21, 13, 'fandataxi921568', 'tax amount debited', 'D', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-10 12:41:36', '2021-06-10 12:41:36'),
(34, 21, 13, 'fandataxi921568', 'Peak hours commission', 'D', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-10 12:41:36', '2021-06-10 12:41:36'),
(35, 21, 13, 'fandataxi921568', 'Waiting charges commission', 'D', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-10 12:41:36', '2021-06-10 12:41:36'),
(36, 21, 14, 'fandataxi787742', 'admin commission', 'D', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-10 12:58:27', '2021-06-10 12:58:27'),
(37, 21, 14, 'fandataxi787742', 'discount amount refund', 'C', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-10 12:58:27', '2021-06-10 12:58:27'),
(38, 21, 14, 'fandataxi787742', 'tax amount debited', 'D', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-10 12:58:27', '2021-06-10 12:58:27'),
(39, 21, 14, 'fandataxi787742', 'Peak hours commission', 'D', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-10 12:58:27', '2021-06-10 12:58:27'),
(40, 21, 14, 'fandataxi787742', 'Waiting charges commission', 'D', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-10 12:58:27', '2021-06-10 12:58:27'),
(41, 21, 15, 'fandataxi400392', 'admin commission', 'D', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-10 13:16:17', '2021-06-10 13:16:17'),
(42, 21, 15, 'fandataxi400392', 'discount amount refund', 'C', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-10 13:16:17', '2021-06-10 13:16:17'),
(43, 21, 15, 'fandataxi400392', 'tax amount debited', 'D', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-10 13:16:17', '2021-06-10 13:16:17'),
(44, 21, 15, 'fandataxi400392', 'Peak hours commission', 'D', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-10 13:16:17', '2021-06-10 13:16:17'),
(45, 21, 15, 'fandataxi400392', 'Waiting charges commission', 'D', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-10 13:16:17', '2021-06-10 13:16:17'),
(46, 25, 20, 'fandataxi293179', 'admin commission', 'D', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-10 13:37:14', '2021-06-10 13:37:14'),
(47, 25, 20, 'fandataxi293179', 'discount amount refund', 'C', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-10 13:37:14', '2021-06-10 13:37:14'),
(48, 25, 20, 'fandataxi293179', 'tax amount debited', 'D', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-10 13:37:14', '2021-06-10 13:37:14'),
(49, 25, 20, 'fandataxi293179', 'Peak hours commission', 'D', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-10 13:37:14', '2021-06-10 13:37:14'),
(50, 25, 20, 'fandataxi293179', 'Waiting charges commission', 'D', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-10 13:37:14', '2021-06-10 13:37:14'),
(51, 25, 2, 'fandataxi169398', 'admin commission', 'D', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-10 14:01:58', '2021-06-10 14:01:58'),
(52, 25, 2, 'fandataxi169398', 'discount amount refund', 'C', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-10 14:01:58', '2021-06-10 14:01:58'),
(53, 25, 2, 'fandataxi169398', 'tax amount debited', 'D', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-10 14:01:58', '2021-06-10 14:01:58'),
(54, 25, 2, 'fandataxi169398', 'Peak hours commission', 'D', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-10 14:01:58', '2021-06-10 14:01:58'),
(55, 25, 2, 'fandataxi169398', 'Waiting charges commission', 'D', 0.00000000, 0.00000000, 0.00000000, 'BRAINTREE', '2021-06-10 14:01:58', '2021-06-10 14:01:58');

-- --------------------------------------------------------

--
-- Table structure for table `push_subscriptions`
--

CREATE TABLE `push_subscriptions` (
  `id` int(10) UNSIGNED NOT NULL,
  `guard` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_id` int(10) UNSIGNED DEFAULT NULL,
  `endpoint` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `public_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `auth_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reasons`
--

CREATE TABLE `reasons` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` enum('USER','PROVIDER') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'USER',
  `reason` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `reasons`
--

INSERT INTO `reasons` (`id`, `type`, `reason`, `status`, `created_at`, `updated_at`) VALUES
(1, 'PROVIDER', 'Take long time to reach pickup point', 0, '2021-02-22 07:46:43', '2021-02-22 07:46:43'),
(2, '', 'Heavy Traffic', 0, '2021-02-22 07:46:43', '2021-02-22 07:46:43'),
(3, '', 'User choose wrong location', 0, '2021-02-22 07:46:43', '2021-02-22 07:46:43'),
(4, '', 'My reason not listed', 0, '2021-02-22 07:46:43', '2021-02-22 07:46:43'),
(5, '', 'User Unavailable', 0, '2021-02-22 07:46:43', '2021-02-22 07:46:43'),
(6, '', 'My reason not listed', 0, '2021-02-22 07:46:43', '2021-02-22 07:46:43'),
(7, '', 'Unable to contact driver', 0, '2021-02-22 07:46:43', '2021-02-22 07:46:43'),
(8, '', 'Expected a shoter wait time', 0, '2021-02-22 07:46:43', '2021-02-22 07:46:43'),
(9, '', 'Driver denied to come and pikcup', 0, '2021-02-22 07:46:43', '2021-02-22 07:46:43'),
(10, '', 'Driver denied to go to destination', 0, '2021-02-22 07:46:43', '2021-02-22 07:46:43'),
(11, '', 'Driver Charged Extra', 0, '2021-02-22 07:46:43', '2021-02-22 07:46:43');

-- --------------------------------------------------------

--
-- Table structure for table `referral_earnings`
--

CREATE TABLE `referral_earnings` (
  `id` int(10) UNSIGNED NOT NULL,
  `referrer_id` int(11) NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1-user,2-provider',
  `amount` double(10,2) NOT NULL DEFAULT 0.00,
  `count` mediumint(9) NOT NULL DEFAULT 0,
  `referral_histroy_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `referral_histroy`
--

CREATE TABLE `referral_histroy` (
  `id` int(10) UNSIGNED NOT NULL,
  `referrer_id` int(11) NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1-user,2-provider',
  `referral_id` int(11) NOT NULL,
  `referral_data` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('P','C') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'C',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `request_filters`
--

CREATE TABLE `request_filters` (
  `id` int(10) UNSIGNED NOT NULL,
  `request_id` int(11) NOT NULL,
  `provider_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `request_filters`
--

INSERT INTO `request_filters` (`id`, `request_id`, `provider_id`, `status`, `created_at`, `updated_at`) VALUES
(112, 70, 10, 0, '2021-05-26 11:16:02', '2021-05-26 11:16:02'),
(163, 9, 26, 2, '2021-06-11 08:55:55', '2021-06-11 08:56:07');

-- --------------------------------------------------------

--
-- Table structure for table `request_waiting_time`
--

CREATE TABLE `request_waiting_time` (
  `id` int(10) UNSIGNED NOT NULL,
  `request_id` int(11) NOT NULL,
  `started_at` timestamp NULL DEFAULT NULL,
  `ended_at` timestamp NULL DEFAULT NULL,
  `waiting_mins` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `request_waiting_time`
--

INSERT INTO `request_waiting_time` (`id`, `request_id`, `started_at`, `ended_at`, `waiting_mins`, `created_at`, `updated_at`) VALUES
(1, 84, '2021-05-17 13:01:43', NULL, 0, '2021-05-17 13:01:43', '2021-05-17 13:01:43'),
(2, 87, '2021-05-17 14:44:29', NULL, 0, '2021-05-17 14:44:29', '2021-05-17 14:44:29'),
(3, 88, '2021-05-18 10:13:20', NULL, 0, '2021-05-18 10:13:20', '2021-05-18 10:13:20'),
(4, 104, '2021-05-27 16:08:47', '2021-05-27 16:08:52', 5, '2021-05-27 16:08:47', '2021-05-27 16:08:52');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'ADMIN', 'admin', NULL, NULL),
(2, 'DISPATCHER', 'admin', NULL, NULL),
(3, 'DISPUTE', 'admin', NULL, NULL),
(4, 'ACCOUNT', 'admin', NULL, NULL),
(5, 'FLEET', 'fleet', NULL, NULL),
(6, 'nnn', 'admin', '2021-04-29 08:45:31', '2021-04-29 08:45:31');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 4),
(1, 5),
(1, 6),
(2, 1),
(2, 4),
(2, 5),
(2, 6),
(3, 1),
(3, 4),
(3, 5),
(3, 6),
(4, 1),
(4, 2),
(4, 5),
(4, 6),
(5, 1),
(5, 2),
(5, 5),
(6, 1),
(6, 3),
(6, 5),
(6, 6),
(7, 1),
(7, 3),
(7, 5),
(8, 1),
(8, 3),
(8, 5),
(9, 1),
(9, 3),
(9, 5),
(10, 1),
(10, 5),
(10, 6),
(11, 1),
(11, 5),
(12, 1),
(12, 5),
(13, 1),
(13, 5),
(13, 6),
(14, 1),
(14, 5),
(14, 6),
(15, 1),
(15, 5),
(15, 6),
(16, 1),
(16, 5),
(16, 6),
(17, 1),
(17, 5),
(18, 1),
(18, 5),
(18, 6),
(19, 1),
(19, 5),
(19, 6),
(20, 1),
(20, 5),
(20, 6),
(21, 1),
(21, 5),
(21, 6),
(22, 1),
(22, 5),
(23, 1),
(23, 5),
(24, 1),
(24, 5),
(25, 1),
(25, 5),
(26, 1),
(26, 5),
(26, 6),
(27, 1),
(27, 5),
(28, 1),
(28, 5),
(28, 6),
(29, 1),
(29, 5),
(30, 1),
(30, 5),
(30, 6),
(31, 1),
(31, 5),
(32, 1),
(32, 5),
(33, 1),
(33, 5),
(34, 1),
(34, 5),
(34, 6),
(35, 1),
(35, 5),
(36, 1),
(36, 5),
(37, 1),
(37, 5),
(38, 1),
(38, 5),
(39, 1),
(39, 5),
(39, 6),
(40, 1),
(40, 5),
(41, 1),
(41, 5),
(42, 1),
(42, 5),
(43, 1),
(43, 5),
(43, 6),
(44, 1),
(44, 5),
(45, 1),
(45, 5),
(46, 1),
(46, 5),
(47, 1),
(47, 4),
(47, 5),
(47, 6),
(48, 1),
(48, 5),
(49, 1),
(49, 5),
(50, 1),
(50, 5),
(50, 6),
(51, 1),
(51, 5),
(52, 1),
(52, 5),
(53, 1),
(53, 5),
(53, 6),
(54, 1),
(54, 5),
(55, 1),
(55, 5),
(56, 1),
(56, 5),
(57, 1),
(57, 2),
(57, 5),
(57, 6),
(58, 1),
(58, 5),
(59, 1),
(59, 5),
(60, 1),
(60, 5),
(61, 1),
(61, 5),
(62, 1),
(62, 5),
(63, 1),
(63, 5),
(64, 1),
(64, 5),
(65, 1),
(65, 5),
(65, 6),
(66, 1),
(66, 5),
(67, 1),
(67, 5),
(68, 1),
(68, 5),
(69, 1),
(69, 5),
(70, 1),
(70, 5),
(71, 1),
(71, 5),
(72, 1),
(72, 5),
(73, 1),
(73, 5),
(74, 1),
(74, 5),
(75, 1),
(75, 5),
(76, 1),
(76, 5),
(77, 1),
(77, 5),
(77, 6),
(78, 1),
(78, 5),
(79, 1),
(79, 5),
(80, 1),
(80, 5),
(81, 1),
(81, 5),
(82, 1),
(82, 5),
(83, 1),
(83, 5),
(84, 1),
(84, 5),
(85, 1),
(85, 5),
(86, 1),
(86, 5),
(87, 1),
(87, 5),
(88, 1),
(88, 5),
(88, 6),
(89, 1),
(89, 5),
(90, 1),
(90, 5),
(90, 6),
(91, 1),
(91, 2),
(91, 3),
(91, 4),
(91, 5),
(92, 1),
(92, 5),
(93, 1),
(93, 2),
(93, 3),
(93, 4),
(93, 5),
(94, 1),
(94, 5),
(94, 6),
(95, 1),
(95, 5),
(96, 1),
(96, 5),
(96, 6),
(97, 1),
(97, 5);

-- --------------------------------------------------------

--
-- Table structure for table `service_peak_hours`
--

CREATE TABLE `service_peak_hours` (
  `id` int(10) UNSIGNED NOT NULL,
  `service_type_id` int(11) NOT NULL,
  `peak_hours_id` int(11) NOT NULL,
  `min_price` double(10,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `service_types`
--

CREATE TABLE `service_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `provider_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `marker` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `capacity` int(11) NOT NULL DEFAULT 0,
  `fixed` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `minute` int(11) NOT NULL,
  `hour` int(11) DEFAULT NULL,
  `distance` int(11) NOT NULL,
  `calculator` enum('MIN','HOUR','DISTANCE','DISTANCEMIN','DISTANCEHOUR') COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `waiting_free_mins` int(11) NOT NULL DEFAULT 0,
  `waiting_min_charge` double(10,2) NOT NULL DEFAULT 0.00,
  `per_delivery_cost` double(10,2) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `type` enum('delivery','ride') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'ride',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `service_types`
--

INSERT INTO `service_types` (`id`, `name`, `provider_name`, `image`, `marker`, `capacity`, `fixed`, `price`, `minute`, `hour`, `distance`, `calculator`, `description`, `waiting_free_mins`, `waiting_min_charge`, `per_delivery_cost`, `status`, `type`, `created_at`, `updated_at`) VALUES
(3, 'Fanda Bike ', 'Driver', 'http://taxi.fandapakistan.online/uploads/1273243f8134f62ee67d85e64bd2791f0a8a429e.png', 'https://taxi.fandapakistan.online/uploads/7ff050bebc909d459330c545a571dbb5b0399a0b.png', 1, 30, 10, 0, 0, 1, 'DISTANCE', NULL, 0, 0.00, 1.00, 1, 'ride', '2021-02-22 07:46:28', '2021-06-12 09:38:37'),
(5, 'Fanda Mini', NULL, 'http://taxi.fandapakistan.online/uploads/0b7f58b04ee96221001545cc4d68555e59e800d7.png', 'https://taxi.fandapakistan.online/uploads/f0d7007812c1ed6d891807ab44713a1520886f48.png', 4, 80, 18, 0, 0, 0, 'DISTANCE', NULL, 10, 5.00, 5.00, 1, 'ride', '2021-04-21 11:11:20', '2021-06-09 14:07:32'),
(6, 'Fanda Go', NULL, 'http://taxi.fandapakistan.online/uploads/b0c87007a9bf401d1abf1bb431f60973f1095e3f.png', NULL, 4, 90, 19, 0, 0, 1, 'DISTANCE', NULL, 0, 0.00, 0.00, 1, 'ride', '2021-06-04 12:04:24', '2021-06-12 09:39:51'),
(7, 'Fanda Business', NULL, 'http://taxi.fandapakistan.online/uploads/a2677ea69f8e98d6076453bead51a83a21ad086d.png', 'http://taxi.fandapakistan.online/uploads/88357929497bdfcb8c44781cd6c20c1b86e19fed.png', 5, 120, 25, 0, 0, 1, 'DISTANCE', NULL, 0, 0.00, 0.00, 1, 'ride', '2021-06-04 12:10:23', '2021-06-12 09:40:42');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`) VALUES
(1, 'demo_mode', '0'),
(2, 'help', '<p>Help page</p>'),
(3, 'page_privacy', '<p>Privacy Policy</p>'),
(4, 'terms', '<p>Terms and Conditions</p>'),
(5, 'cancel', '<p>Cancelation Policy</p>');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payment_mode` enum('BRAINTREE','CASH','CARD','PAYPAL','PAYPAL-ADAPTIVE','PAYUMONEY','PAYTM') COLLATE utf8_unicode_ci NOT NULL,
  `user_type` enum('INSTANT','NORMAL') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'NORMAL',
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gender` enum('MALE','FEMALE') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'MALE',
  `country_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `device_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `device_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `device_type` enum('android','ios') COLLATE utf8_unicode_ci NOT NULL,
  `login_by` enum('manual','facebook','google') COLLATE utf8_unicode_ci NOT NULL,
  `social_unique_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `latitude` double(15,8) DEFAULT NULL,
  `longitude` double(15,8) DEFAULT NULL,
  `stripe_cust_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `wallet_balance` double(8,2) NOT NULL DEFAULT 0.00,
  `rating` decimal(4,2) NOT NULL DEFAULT 5.00,
  `otp` mediumint(9) NOT NULL DEFAULT 0,
  `language` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qrcode_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `referral_unique_id` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `referal_count` mediumint(9) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `payment_mode`, `user_type`, `email`, `gender`, `country_code`, `mobile`, `password`, `picture`, `device_token`, `device_id`, `device_type`, `login_by`, `social_unique_id`, `latitude`, `longitude`, `stripe_cust_id`, `wallet_balance`, `rating`, `otp`, `language`, `qrcode_url`, `referral_unique_id`, `referal_count`, `remember_token`, `created_at`, `updated_at`) VALUES
(50, 'test', 'ios', 'CASH', 'NORMAL', 'test123@gmail.com', 'MALE', '+92', '-1293732736', '$2y$10$n017zLClV7DYdvIq0VGukeYWPM76MxLHQUClv9YPPqXwXeZ.eRxhW', NULL, '5ad185a7b28d625a0b9f177bd0709427eb8df0b06208e97911b24ff2d117357b', '530F077B-FD4A-45B7-B53E-C89C4C92873B', 'ios', 'manual', NULL, NULL, NULL, NULL, 0.00, 5.00, 0, NULL, 'uploads/1622800996697039659_3001234560.png', '2D632C', 0, NULL, '2021-06-04 10:33:16', '2021-06-04 10:33:16'),
(51, 'IMAD', ' HASSA', 'CASH', 'NORMAL', 'i.hassan@itqplus.com', 'MALE', '+1', '837745545', '$2y$10$Buib/iupAoYlmMNgAdmzTeFdtg7xXB7nFw8kZSOvH0DCXg2no6cvy', NULL, 'f4RyDlY2dY8:APA91bGKKKRk2OQ08InhLH6a_skva1M4Uy4lAJrt1sJMw6A98zU9y4KBatlYIIv1PONOLj52-4wCXasOMb3jsXLX4IymCiLNCQrzu23JgU-luTcBqPOOkdoURnASCE8CijdNIjLP6vs3', '7b2e46bff6b0b452', 'android', 'manual', NULL, NULL, NULL, NULL, 0.00, 5.00, 0, NULL, 'uploads/1622801142437255041_837745545.png', '5A108F', 0, NULL, '2021-06-04 10:35:43', '2021-06-11 16:53:54'),
(52, 'kashi', 'wasim', 'CASH', 'NORMAL', 'info@fanda.com.pk', 'MALE', '+1', '03162218244', '$2y$10$qoAA7VwF9Pzk2kWdbOV4ceg8TlGx1QMaS4kRDPdROMla8OlGllA8C', NULL, 'fYzzXDQQzPk:APA91bHRsjQ3qzv115VCPY3CsarwNSO56096x2C9tAps4DL42Ds7PeNiorAuuCEH245nxPhLpNvKw3urD7sNcskPSOdhpqTSgSl3FuUk4I8nIED9kTjVJstHq6Nu9JUVW6PfYD6sjVV8', '439d9b29a0a32378', 'android', 'manual', NULL, NULL, NULL, NULL, 0.00, 5.00, 0, NULL, 'uploads/16228060372127949641_03162218244.png', 'ECCAB3', 0, NULL, '2021-06-04 11:57:18', '2021-06-04 11:57:18'),
(53, 'wasim', 'kashi', 'CASH', 'NORMAL', 'kashiwasim121@gmail.com', 'MALE', '+1', '03555307509', '$2y$10$r7S96yNWL9.HKwRMdatFKuCLQqVdm.ZO2Q.avPE/aXzy7p/FQI7qi', NULL, 'ckuYHAw4BcY:APA91bH9LadK4Dmv1Aq7CasqSci7OvSeoy_WZ8lRgDxtlNQTP4U0GBi38mJH8TS-pHeEpPCFe5_Y2FYZ5uPqOTZd2iwkaKSgEU6boUgS6oM94o0OToO0MVer3hBGzSigNBG8gdiwKTT1', 'da741a6b6db82598', 'android', 'manual', NULL, NULL, NULL, NULL, 0.00, 5.00, 0, NULL, 'uploads/1623144451710849044_03555307509.png', 'F6B799', 0, NULL, '2021-06-08 09:57:31', '2021-06-09 15:37:47'),
(54, 'test', 'ios', 'CASH', 'NORMAL', 'testios@gmail.com', 'MALE', '+92', '-873732729', '$2y$10$a0GbmlkBeWKxBdE3B9twlevJbE.WfTBgZm9pvuDNdW5kto1k7JRdK', NULL, '09f1f15553e7640e64c1f4c35b677db0d0264750d9b45f7081ef99e4074d137f', '66C2997D-A81A-4E82-BE47-4E8A19AD2DB3', 'ios', 'manual', NULL, NULL, NULL, NULL, 0.00, 5.00, 0, NULL, 'uploads/16231480051420635162_3421234567.png', '347607', 0, NULL, '2021-06-08 10:56:46', '2021-06-11 17:38:11'),
(55, 'test', 'ios', 'CASH', 'NORMAL', 'test01@gmail.com', 'MALE', '+92', '-873732736', '$2y$10$z4f1BzI8RJ1OqWwMcbAZjOyVKu4gzBtvt96UdTSzicqwEuElWecJy', NULL, 'db97af8ff289e26cf16ae075a32aca55b250816c7372bf96d5ca8c6f8206af03', '7909F3D4-A592-4582-B4F7-5FC6F217A26C', 'ios', 'manual', NULL, NULL, NULL, NULL, 0.00, 5.00, 0, NULL, 'uploads/16231499941142685964_3421234560.png', '3B14EE', 0, NULL, '2021-06-08 11:29:54', '2021-06-11 16:52:50'),
(56, 'tester', 'ios', 'CASH', 'NORMAL', 'test001@gmail.com', 'MALE', '+92', '-1243732729', '$2y$10$j.COFhOUcXXh1PzRrloWEOTSxDr2P8QAdMRdaNU1h3K/IvqxdUTW.', NULL, '', '', 'ios', 'manual', NULL, NULL, NULL, NULL, 0.00, 5.00, 0, NULL, 'uploads/16231500441292084661_3051234567.png', '687199', 0, NULL, '2021-06-08 11:30:44', '2021-06-08 11:31:11'),
(57, 'mohamed', 'zardheye', 'CASH', 'NORMAL', 'mohamedzardheye@gmail.com', 'MALE', NULL, '634036617', '$2y$10$Vf2HZh2P1qBB4.4Ed34U3.LxW8EAZH/5Gl38BREFmEcqy9EyL6GLu', NULL, NULL, NULL, 'android', 'manual', NULL, NULL, NULL, NULL, 0.00, 5.00, 0, NULL, NULL, NULL, 0, NULL, '2021-06-11 08:55:54', '2021-06-11 08:55:54'),
(61, 'kashi', 'wasim', 'CASH', 'NORMAL', 'info@fanda.com', 'MALE', '+1', '03555355371', '$2y$10$5MIZk1L3kaaLzVyq2WwNUOM81.6XZO2TYHuEp.LA3cLw0MRq4GD5S', NULL, 'dt9EfVJsQSE:APA91bFVQoVoIOUkTBuxv-aRmLFRrtAxtFFvD3-mOkyXKE9mpn6ZBZe3OuWN1_BCcjv8m0pqkwPQnoOKE2fxlRm4fK6Zr4jkm0nQf0ePHXbBD9tPS-2pvU7nRU5tpIF0ZZxnEqHyEsIz', '439d9b29a0a32378', 'android', 'manual', NULL, NULL, NULL, NULL, 0.00, 5.00, 0, NULL, 'uploads/16234203891864381042_03555355371.png', '0B8DEA', 0, NULL, '2021-06-11 19:06:29', '2021-06-12 12:03:26'),
(62, 'Jejwjwj', 'Ususus', 'CASH', 'NORMAL', 'pluk.jim.castro@gmail.com', 'MALE', '+1', '09556696666', '$2y$10$HSKmKjNexWVJwWAcXAJM1.FYehS781juVLKVpTPbV2epCt3P5YIeW', NULL, 'fV112WAHO1k:APA91bE04kGsdaE8K6EvfQ5mHE6zGYhnK3U52fDD6DmfHf5Ny26oZAU4zeN4CtZ2DmhtqOyLdtk4iIQgy91mzryHSFT2qLXHhhNKcwRrpY3DhSZkImMf5Q5E2xBlZjqTEP7fjx_D50l7', 'f96d853e1b235947', 'android', 'manual', NULL, NULL, NULL, NULL, 0.00, 5.00, 0, NULL, 'uploads/1623500984425085911_09556696666.png', '14EC4B', 0, NULL, '2021-06-12 17:29:45', '2021-06-12 17:29:45'),
(63, 'omar', 'omar', 'CASH', 'NORMAL', 'omar1498@gmail.com', 'MALE', '+1', '999999999', '$2y$10$2Yxl2aTj/nKRkebQbUTW0O2nN9nZAn85iJqsm2nNdhISGzVJEaSsa', NULL, '', '', 'android', 'manual', NULL, NULL, NULL, NULL, 0.00, 5.00, 0, NULL, 'uploads/1623912335567291188_999999999.png', '37D415', 0, NULL, '2021-06-17 11:45:35', '2021-06-18 03:00:35'),
(64, 'Majid', 'Bajwa', 'CASH', 'NORMAL', 'Majidbajwa0308@gmail.com', 'MALE', '', '03069616833', '$2y$10$mLE0zi8m1GNTW6s1QsWIa.DKFCML18sGXg6NfnT6NpwNS1YeY.8yy', NULL, 'cqBgy1tRh9w:APA91bFrtPk0Rnw7dfPGGpZbzNCk3EOIBhD5PDHLmFzUh2JHaSSdqM5IXobOqUbCmDbXbhQMWX0Rp33_h_LRinT_mquFNtDfvL_dAxIIj8fGzK1UfY1sGY-JWVM0LhmaffajqxoTdtUY', 'bbe8c174eabdecaa', 'android', 'manual', NULL, NULL, NULL, NULL, 0.00, 5.00, 0, NULL, 'uploads/16239358851474444967_03069616833.png', 'D58A68', 0, NULL, '2021-06-17 18:17:38', '2021-06-17 18:18:05'),
(65, 'Alan', 'Smith', 'CASH', 'NORMAL', 'alan@gmail.com', 'MALE', '+966', '00966565185946', '$2y$10$kzVWL4YLQWDfBLBSDwnQqeuDN3Qbkbgw6HrxJ3Bjek/t0xxIkEhBG', NULL, 'c5w_-3OSS1I:APA91bHaYugeApw-aIsiu6NeDubfRO6udQ_qrXBV1rRf0bLL7dzAXfdICzy-5UA8KcHUS963ime67JDXIAKPzvXuObZV2jmFDh1Gu6sUO8AT8fhmff4YMnGkwvZ5H25_gRz5p2AV9wak', '2afd7420a27488fc', 'android', 'manual', NULL, NULL, NULL, NULL, 0.00, 5.00, 0, NULL, 'uploads/1624199761851928892_00966565185946.png', '553FCC', 0, NULL, '2021-06-20 19:36:01', '2021-06-21 01:29:13'),
(66, 'Yasir', 'Jutt', 'CASH', 'NORMAL', 'ar4762779@gmail.com', 'MALE', '+1', '03044762779', '$2y$10$RPfibYTCbanmI1K3jW.wSep/3ghTcmYSZDuLZpJ8P7C/y4l.rd3w2', NULL, 'cRAZcAXfPHI:APA91bEth0pYsSQfUh0MRMcq_VtXr-4-TYLuR1TB6FAdJBx93dRM5cMQVJmMDE2TP_aunyr3CerhNVFuRRwG59wEPy9waHft5ql58xBuGuTHiavYs8jtGC5Hp-hRt373LahnVLVvXfog', 'ed2abf79d0946f70', 'android', 'manual', NULL, NULL, NULL, NULL, 0.00, 5.00, 0, NULL, 'uploads/1624218858554658860_03044762779.png', 'D70D5E', 0, NULL, '2021-06-21 00:54:19', '2021-06-21 00:54:19'),
(67, 'Nabiha', 'Afzal', 'CASH', 'NORMAL', 'nobiha23@gmail.com', 'MALE', '+1', '03354279897', '$2y$10$iNRD3/q9QJ/9vNnEGWWoD.ciKcf8vBlJWrocp5Xo3F574AL1D5qt.', NULL, 'e6XF-2qbQsU:APA91bHMa08eQJ38gOQwO_Dxi-xgn5ghNXPEqKFlj-Vnwl_o4Ao4Dr0UKeTbwxj7iBTjBKi8QV3ZANsUUJ5CJa8z-5f5mI5mXUJXRoFbmxSpnZihc4AS27Te7tBNZJOfnSqMe4keiX9y', 'ec72ca8befc5fec1', 'android', 'manual', NULL, NULL, NULL, NULL, 0.00, 5.00, 0, NULL, 'uploads/16243640062099834385_03354279897.png', 'AB27C0', 0, NULL, '2021-06-22 17:13:26', '2021-06-22 17:13:26'),
(68, 'Nabiha', 'Afzal', 'CASH', 'NORMAL', 'nabihaafzal2@gmail.com', 'MALE', '+1', '0335', '$2y$10$de7BaKg2VxyB06l.m.Yx2OkXfmXEevazfqDxyMEfDFf/JmxlwHIWO', NULL, 'e6XF-2qbQsU:APA91bHMa08eQJ38gOQwO_Dxi-xgn5ghNXPEqKFlj-Vnwl_o4Ao4Dr0UKeTbwxj7iBTjBKi8QV3ZANsUUJ5CJa8z-5f5mI5mXUJXRoFbmxSpnZihc4AS27Te7tBNZJOfnSqMe4keiX9y', 'ec72ca8befc5fec1', 'android', 'manual', NULL, NULL, NULL, NULL, 0.00, 5.00, 0, NULL, 'uploads/16243642661160715827_0335.png', '120407', 0, NULL, '2021-06-22 17:17:46', '2021-06-22 17:17:46'),
(69, 'Nobita', 'Nobi', 'CASH', 'NORMAL', 'nobita123@gmail.com', 'MALE', '+1', '0345', '$2y$10$CNOIW2LePTTyTtA82NEn/OY0.uh4l1L0aKV0kPzP7MeIfLOwK9uyy', NULL, '', '', 'android', 'manual', NULL, NULL, NULL, NULL, 0.00, 5.00, 102575, NULL, 'uploads/16243649281548242286_0345.png', '30DBC5', 0, NULL, '2021-06-22 17:28:48', '2021-06-23 13:16:44'),
(70, 'M', 'H', 'CASH', 'NORMAL', 'mharis91011@gmail.com', 'MALE', '+1', '03034477326', '$2y$10$0u0P.dKkn.VQSrsY/.NqGOSXuWvmHoQMb1666uDNoQ54PTYkYsxu2', NULL, 'eMWZh_J-rzA:APA91bEilMQ2lctt_fq5jJWwHeYOmrsy-YGLeDXINhnvisR-EfJbAgcXKVcLap4gQUr_d0YtbfXv1RYr1axSmzJFxB1d1Cf7veQ6GD-yu6jO4qErFrTHmBBqSY43Khq15gfFXOBOEzy1', '6aeb30eaae5fb3ca', 'android', 'manual', NULL, NULL, NULL, NULL, 0.00, 5.00, 0, NULL, 'uploads/1624432122408068589_03034477326.png', '8F96BB', 0, NULL, '2021-06-23 12:08:42', '2021-06-23 12:08:42'),
(71, 'Nabiha', 'Afzal', 'CASH', 'NORMAL', 'nabiha123@gmail.com', 'MALE', '+1', '0352', '$2y$10$MZETUppZJD406Hb2AOa63.UZ9kAO11sXthzVJKSdqsXCWYqobFJzS', NULL, 'e6XF-2qbQsU:APA91bHMa08eQJ38gOQwO_Dxi-xgn5ghNXPEqKFlj-Vnwl_o4Ao4Dr0UKeTbwxj7iBTjBKi8QV3ZANsUUJ5CJa8z-5f5mI5mXUJXRoFbmxSpnZihc4AS27Te7tBNZJOfnSqMe4keiX9y', 'ec72ca8befc5fec1', 'android', 'manual', NULL, NULL, NULL, NULL, 0.00, 5.00, 650289, NULL, 'uploads/1624436787293351225_0352.png', '57ACC1', 0, NULL, '2021-06-23 13:26:27', '2021-06-23 13:30:38'),
(72, 'sam', 'ali', 'CASH', 'NORMAL', 'stationcar46@gmail.com', 'MALE', '+44', '7891311623', '$2y$10$iSLH4vEzI4yoAxSrRWJiy.5TM35sG3l6/KM4vCqFE5.sSKurTOmeG', 'user/profile/fw2F6RzXfWslj2Od8Qn3r8rBzEQbR65lfo9hmSOC.jpg', NULL, NULL, 'android', 'manual', NULL, NULL, NULL, NULL, 0.00, 5.00, 0, NULL, 'uploads/1624659165221128236_7891311623.png', NULL, 0, NULL, '2021-06-25 22:39:02', '2021-06-26 03:12:45'),
(73, 'dev', 'sri', 'CASH', 'NORMAL', 'dev@gmail.com', 'MALE', '+1', '8318214163', '$2y$10$b7C2LzFa9rRdwO3MCKmYO.wbXlhOTqPyt63UJOwWMcsRUNQ/VwtSS', NULL, 'ejFazLip7po:APA91bGCMsRHlGAqB7sUii59X0cp-ExGMghnv1enFjGXqIii7EaUKMZJyUmCMWyO2AblS-V0Eax5P8S8g6ZsgNbYj__kbPg7JpUG5DnACTTn6wDIOt5pKVTxAYhF5emW5HKHAcxaYain', 'ef57d829e1eaca67', 'android', 'manual', NULL, NULL, NULL, NULL, 0.00, 5.00, 0, NULL, 'uploads/1624738058569453333_8318214163.png', '8735BE', 0, NULL, '2021-06-27 01:07:38', '2021-06-27 01:07:38'),
(74, 'Vaja', 'samkharadze', 'CASH', 'NORMAL', 'mytaxi@taxi.com', 'MALE', '+1', '599236352', '$2y$10$Y0EtFoBwvM16GX.UuKauqegyuFnAWymEIOKI9iNo7ll3r5DSba4/W', NULL, '', '', 'android', 'manual', NULL, NULL, NULL, NULL, 0.00, 5.00, 0, NULL, 'uploads/162481490289725104_599236352.png', 'AB14C4', 0, NULL, '2021-06-27 22:28:23', '2021-06-27 23:37:35'),
(75, 'Hamza', 'Ahsan', 'CASH', 'NORMAL', 'aleehumza1@gmail.com', 'MALE', '+1', '03342795379', '$2y$10$T0T40IkGaYCQzntn3K2FOOqgOV4WT03UvNvGrgS9yQmEsgnVhQBsu', NULL, 'fVeHAS9y7Lg:APA91bHn-ccMs56iQZybk0FSWFOwLTaEysAHugTj2MbsiLC5mS2IuA9Lq9LNtzAqZMl2Eeg8N-B_KB74lRWaARvjOL6eAZo1EpVjjGlbbfjbCkqb99Tcq-5HT8k9Q2THpGFxhcFryz2D', 'b8b791d3a535fcd9', 'android', 'manual', NULL, NULL, NULL, NULL, 0.00, 5.00, 0, NULL, 'uploads/16249091652138125333_03342795379.png', '686782', 0, NULL, '2021-06-29 00:39:25', '2021-06-29 02:18:30'),
(76, 'jjjjgv', 'hjshdv', 'CASH', 'NORMAL', 'Ako.biganishvili@gmail.com', 'MALE', '+1', '54648856', '$2y$10$KkETyO1s38Qnw/mRFBjpyOAw699cXEeZx7f7wgkUrL8fnqum37F6C', NULL, 'erKRQ8K8Q2g:APA91bGDduONncHF8pF8HW8c4TqvyEbg-6gM_svxC7tF0JkHR_rdjID7FvO8T2Y2pkX6a652Oadod4g1RKGlg10kR_dWMj7lW8VM6xovMC6qG5a31K8NGKe0JTgQv2Srhvwc3WvYqNu0', '283ca43a0f69c143', 'android', 'manual', NULL, NULL, NULL, NULL, 0.00, 5.00, 0, NULL, 'uploads/16249623991590165892_54648856.png', 'E74309', 0, NULL, '2021-06-29 15:26:40', '2021-06-29 15:26:40');

-- --------------------------------------------------------

--
-- Table structure for table `user_requests`
--

CREATE TABLE `user_requests` (
  `id` int(10) UNSIGNED NOT NULL,
  `booking_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `braintree_nonce` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `provider_id` int(11) NOT NULL DEFAULT 0,
  `current_provider_id` int(11) NOT NULL,
  `service_type_id` int(11) NOT NULL,
  `promocode_id` int(11) NOT NULL,
  `rental_hours` int(11) DEFAULT NULL,
  `status` enum('SEARCHING','CANCELLED','ACCEPTED','STARTED','ARRIVED','PICKEDUP','DROPPED','COMPLETED','SCHEDULED') COLLATE utf8_unicode_ci NOT NULL,
  `cancelled_by` enum('NONE','USER','PROVIDER') COLLATE utf8_unicode_ci NOT NULL,
  `cancel_reason` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_mode` enum('BRAINTREE','CASH','CARD','PAYPAL','PAYPAL-ADAPTIVE','PAYUMONEY','PAYTM') COLLATE utf8_unicode_ci NOT NULL,
  `paid` tinyint(1) NOT NULL DEFAULT 0,
  `is_track` enum('YES','NO') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'NO',
  `distance` double(15,8) NOT NULL,
  `travel_time` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit` enum('Kms','Miles') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Kms',
  `otp` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `s_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `s_latitude` double(15,8) NOT NULL,
  `s_longitude` double(15,8) NOT NULL,
  `d_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `d_latitude` double(15,8) DEFAULT NULL,
  `d_longitude` double(15,8) DEFAULT NULL,
  `track_distance` double(15,8) NOT NULL DEFAULT 0.00000000,
  `track_latitude` double(15,8) NOT NULL DEFAULT 0.00000000,
  `track_longitude` double(15,8) NOT NULL DEFAULT 0.00000000,
  `destination_log` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_drop_location` tinyint(1) NOT NULL DEFAULT 1,
  `is_instant_ride` tinyint(1) NOT NULL DEFAULT 0,
  `is_dispute` tinyint(1) NOT NULL DEFAULT 0,
  `assigned_at` timestamp NULL DEFAULT NULL,
  `schedule_at` timestamp NULL DEFAULT NULL,
  `started_at` timestamp NULL DEFAULT NULL,
  `finished_at` timestamp NULL DEFAULT NULL,
  `is_scheduled` enum('YES','NO') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'NO',
  `user_rated` tinyint(1) NOT NULL DEFAULT 0,
  `provider_rated` tinyint(1) NOT NULL DEFAULT 0,
  `use_wallet` tinyint(1) NOT NULL DEFAULT 0,
  `surge` tinyint(1) NOT NULL DEFAULT 0,
  `route_key` longtext COLLATE utf8_unicode_ci NOT NULL,
  `nonce` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_requests`
--

INSERT INTO `user_requests` (`id`, `booking_id`, `user_id`, `braintree_nonce`, `provider_id`, `current_provider_id`, `service_type_id`, `promocode_id`, `rental_hours`, `status`, `cancelled_by`, `cancel_reason`, `payment_mode`, `paid`, `is_track`, `distance`, `travel_time`, `unit`, `otp`, `s_address`, `s_latitude`, `s_longitude`, `d_address`, `d_latitude`, `d_longitude`, `track_distance`, `track_latitude`, `track_longitude`, `destination_log`, `is_drop_location`, `is_instant_ride`, `is_dispute`, `assigned_at`, `schedule_at`, `started_at`, `finished_at`, `is_scheduled`, `user_rated`, `provider_rated`, `use_wallet`, `surge`, `route_key`, `nonce`, `deleted_at`, `created_at`, `updated_at`) VALUES
(8, 'fandataxi809367', 51, NULL, 25, 25, 5, 0, NULL, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 'YES', 8414.40900000, NULL, 'Kms', '6360', 'Chen One Rd, opposite PSO Petrol Pump, D Ground Block A People\'s Colony No 1, Faisalabad, Punjab, Pakistan', 31.41449210, 73.11114910, 'GCUF, Kotwali Road, Gurunanakpura, Faisalabad, Pakistan', 31.41615200, 73.06991200, 8414.40900000, 31.41374200, 73.07351850, '[{\"latitude\":\"31.416152\",\"longitude\":\"73.069912\",\"address\":\"GCUF, Kotwali Road, Gurunanakpura, Faisalabad, Pakistan\"}]', 1, 0, 0, '2021-06-11 08:09:24', NULL, '2021-06-11 08:20:22', NULL, 'NO', 0, 0, 0, 0, 'ktv~Dopf}LaBjC{BbDa@h@i@|@yB~CyAnBwAnB_AtAk@r@MLYb@oAhB{AzBqA|AY\\wDdFuErGmAhB[r@On@Gn@Ar@Dn@Nn@Pj@Zd@`@b@fCnC`F`FbB~A|BbCz@X|@VTNRPrBxBbEnEjBjBbD`DtAfAp@r@^j@Zv@L~@Az@QhCAN@HIl@KhAKl@[dA_A`C}@rDQ~AUtCEfB?bDBvA\\vEz@hMv@rILpB^lG`@rGNxBTzCl@lKvBdYA~CKfAGh@Uq@u@oBg@uAe@oA[Te@d@MPcB{Aw@s@iBoBOPGDG?SMAA', NULL, NULL, '2021-06-11 08:09:25', '2021-06-11 08:24:11'),
(9, 'fandataxi763666', 57, NULL, 26, 26, 3, 0, NULL, 'SCHEDULED', 'NONE', NULL, 'CASH', 0, 'NO', 1.50600000, NULL, 'Kms', NULL, 'Safari Hotel, Hargeisa, Somalia', 9.56297750, 44.03624690, 'Sacadadiin Road, Hargeisa, Somalia', 9.56080310, 44.02697170, 0.00000000, 0.00000000, 0.00000000, NULL, 1, 0, 0, '2021-06-11 08:55:55', '2021-06-11 06:25:00', NULL, NULL, 'NO', 0, 0, 0, 0, 'owjy@uxwkGvBI|@C\\AD?@XIzAQ|Aa@pBUr@Qf@l@RrA\\rDjAv@ZHFTPTVf@~@vA`DHZCVCFBl@Lf@LpAFzARdEp@dJL|AqAJq@BcFH', NULL, '2021-06-11 08:57:16', '2021-06-11 08:55:55', '2021-06-11 08:57:16'),
(10, 'fandataxi783651', 51, NULL, 0, 0, 5, 0, NULL, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 'YES', 1.10000000, NULL, 'Kms', '2510', 'street 12, New Grain Market, Faisalabad, Punjab, Pakistan', 31.41380910, 73.07365040, 'GCUF, Kotwali Road, Gurunanakpura, Faisalabad, Pakistan', 31.41615200, 73.06991200, 0.00000000, 0.00000000, 0.00000000, '[{\"latitude\":\"31.416152\",\"longitude\":\"73.069912\",\"address\":\"GCUF, Kotwali Road, Gurunanakpura, Faisalabad, Pakistan\"}]', 1, 0, 0, '2021-06-11 16:47:05', NULL, NULL, NULL, 'NO', 0, 0, 0, 0, 'apv~Dee_}LhBdWZxD?pAAlAKfAGh@Uq@u@oBg@uAe@oA[Te@d@MPcB{Aw@s@iBoBWVQEKI', NULL, NULL, '2021-06-11 16:47:05', '2021-06-11 16:48:10'),
(11, 'fandataxi491032', 51, NULL, 0, 0, 5, 0, NULL, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 'YES', 1.00000000, NULL, 'Kms', '5365', 'Minerva Road, Outside، Jhang Bazar, Rajbah Rd, New Grain Market, Faisalabad, Punjab 38000, Pakistan', 31.41371240, 73.07356700, 'GCUF, Kotwali Road, Gurunanakpura, Faisalabad, Pakistan', 31.41615200, 73.06991200, 0.00000000, 0.00000000, 0.00000000, '[{\"latitude\":\"31.416152\",\"longitude\":\"73.069912\",\"address\":\"GCUF, Kotwali Road, Gurunanakpura, Faisalabad, Pakistan\"}]', 1, 0, 0, '2021-06-11 16:52:04', NULL, NULL, NULL, 'NO', 0, 0, 0, 0, '_pv~Dqd_}LfBpVZxD?pAAlAKfAGh@Uq@u@oBg@uAe@oA[Te@d@MPcB{Aw@s@iBoBWVQEKI', NULL, NULL, '2021-06-11 16:52:04', '2021-06-11 16:53:11'),
(12, 'fandataxi761564', 51, NULL, 0, 0, 5, 0, NULL, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 'YES', 1.10000000, NULL, 'Kms', '8405', 'street 12, New Grain Market, Faisalabad, Punjab, Pakistan', 31.41380910, 73.07365040, 'GCUF, Kotwali Road, Gurunanakpura, Faisalabad, Pakistan', 31.41615200, 73.06991200, 0.00000000, 0.00000000, 0.00000000, '[{\"latitude\":\"31.416152\",\"longitude\":\"73.069912\",\"address\":\"GCUF, Kotwali Road, Gurunanakpura, Faisalabad, Pakistan\"}]', 1, 0, 0, '2021-06-11 16:54:57', NULL, NULL, NULL, 'NO', 0, 0, 0, 0, 'apv~Dee_}LhBdWZxD?pAAlAKfAGh@Uq@u@oBg@uAe@oA[Te@d@MPcB{Aw@s@iBoBWVQEKI', NULL, NULL, '2021-06-11 16:54:57', '2021-06-11 16:56:02'),
(13, 'fandataxi884986', 51, NULL, 0, 0, 5, 0, NULL, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 'YES', 1.10000000, NULL, 'Kms', '1153', 'street 12, New Grain Market, Faisalabad, Punjab, Pakistan', 31.41380910, 73.07365040, 'GCUF, Kotwali Road, Gurunanakpura, Faisalabad, Pakistan', 31.41615200, 73.06991200, 0.00000000, 0.00000000, 0.00000000, '[{\"latitude\":\"31.416152\",\"longitude\":\"73.069912\",\"address\":\"GCUF, Kotwali Road, Gurunanakpura, Faisalabad, Pakistan\"}]', 1, 0, 0, '2021-06-11 16:58:11', NULL, NULL, NULL, 'NO', 0, 0, 0, 0, 'apv~Dee_}LhBdWZxD?pAAlAKfAGh@Uq@u@oBg@uAe@oA[Te@d@MPcB{Aw@s@iBoBWVQEKI', NULL, NULL, '2021-06-11 16:58:11', '2021-06-11 16:59:13'),
(14, 'fandataxi672306', 51, NULL, 0, 0, 5, 0, NULL, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 'YES', 1.00000000, NULL, 'Kms', '8227', 'Minerva Road, Outside، Jhang Bazar, Rajbah Rd, New Grain Market, Faisalabad, Punjab 38000, Pakistan', 31.41371240, 73.07356700, 'GCUF, Kotwali Road, Gurunanakpura, Faisalabad, Pakistan', 31.41615200, 73.06991200, 0.00000000, 0.00000000, 0.00000000, '[{\"latitude\":\"31.416152\",\"longitude\":\"73.069912\",\"address\":\"GCUF, Kotwali Road, Gurunanakpura, Faisalabad, Pakistan\"}]', 1, 0, 0, '2021-06-11 16:33:08', NULL, NULL, NULL, 'NO', 0, 0, 0, 0, '_pv~Dqd_}LfBpVZxD?pAAlAKfAGh@Uq@u@oBg@uAe@oA[Te@d@MPcB{Aw@s@iBoBWVQEKI', NULL, NULL, '2021-06-11 16:33:08', '2021-06-11 16:34:14'),
(15, 'fandataxi321444', 51, NULL, 0, 0, 5, 0, NULL, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 'YES', 3.50000000, NULL, 'Kms', '1256', '106-C, Main Jaranwala Rd, Block C People\'s Colony No 1, Faisalabad, Punjab 38000, Pakistan', 31.40824250, 73.11884670, '???????????? ???????????????????????????? ????????????????????, GTS Chowk, Faisalabad, Pakistan', 31.41682000, 73.09115800, 0.00000000, 0.00000000, 0.00000000, '[{\"latitude\":\"31.41682\",\"longitude\":\"73.091158\",\"address\":\"\\ud835\\uddda\\ud835\\udde7\\ud835\\udde6 \\ud835\\udde6\\ud835\\ude01\\ud835\\uddee\\ud835\\ude01\\ud835\\uddf6\\ud835\\uddfc\\ud835\\uddfb \\ud835\\uddd6\\ud835\\uddf5\\ud835\\uddfc\\ud835\\ude04\\ud835\\uddf8, GTS Chowk, Faisalabad, Pakistan\"}]', 1, 0, 0, '2021-06-11 16:39:13', NULL, NULL, NULL, 'NO', 0, 0, 0, 0, 'wlu~D_`h}LiKdOk@t@QSa@BI?SC_@h@cGnIyAvBwAjBcDtE}DzF[j@wCdEsAtBiClDiBdCmAhBgArAaAxAeBdCa@l@mAxAiAtAoHdK{BdDUx@Mn@Cn@@p@Hp@Pl@Vh@Z`@jHtHjFfFvA~A~@fALTTf@BAFBHFHN?LCHr@jCr@zCjAlFl@tCT~@f@~@FDDD', NULL, NULL, '2021-06-11 16:39:13', '2021-06-11 16:40:14'),
(16, 'fandataxi643257', 51, NULL, 25, 25, 5, 0, NULL, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 'YES', 3.56600000, '3', 'Kms', '4481', '106-C, Main Jaranwala Rd, Block C People\'s Colony No 1, Faisalabad, Punjab 38000, Pakistan', 31.40824250, 73.11884670, '???????????? ???????????????????????????? ????????????????????, GTS Chowk, Faisalabad, Pakistan', 31.41682000, 73.09115800, 3.56600000, 31.41686630, 73.09192990, '[{\"latitude\":\"31.41682\",\"longitude\":\"73.091158\",\"address\":\"\\ud835\\uddda\\ud835\\udde7\\ud835\\udde6 \\ud835\\udde6\\ud835\\ude01\\ud835\\uddee\\ud835\\ude01\\ud835\\uddf6\\ud835\\uddfc\\ud835\\uddfb \\ud835\\uddd6\\ud835\\uddf5\\ud835\\uddfc\\ud835\\ude04\\ud835\\uddf8, GTS Chowk, Faisalabad, Pakistan\"}]', 1, 0, 0, '2021-06-11 16:43:20', NULL, '2021-06-11 16:44:57', '2021-06-11 16:48:34', 'NO', 1, 1, 0, 0, 'wlu~D_`h}LiKdOk@t@QSa@BI?SC_@h@cGnIyAvBwAjBcDtE}DzF[j@wCdEsAtBiClDiBdCmAhBgArAaAxAeBdCa@l@mAxAiAtAoHdK{BdDUx@Mn@Cn@@p@Hp@Pl@Vh@Z`@jHtHjFfFvA~A~@fALTTf@BAFBHFHN?LCHr@jCr@zCjAlFl@tCT~@f@~@FDDD', NULL, NULL, '2021-06-11 16:43:20', '2021-06-11 16:49:04'),
(17, 'fandataxi810267', 55, NULL, 0, 24, 5, 0, NULL, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 'YES', 2.80000000, NULL, 'Kms', '5756', 'Street Number 11, Block Y Madina Town, Faisalabad, Punjab, Pakistan', 31.41603890, 73.12085210, 'D Ground Block B People\'s Colony No 1, Faisalabad, Punjab, Pakistan', 31.40636320, 73.10692980, 0.00000000, 0.00000000, 0.00000000, '[{\"latitude\":31.4063632000000012567397789098322391510009765625,\"longitude\":73.1069298000000031834133551456034183502197265625,\"address\":\"D Ground Block B People\'s Colony No 1, Faisalabad, Punjab, Pakistan\"}]', 1, 0, 0, '2021-06-11 16:52:50', NULL, NULL, NULL, 'NO', 0, 0, 0, 0, 'g}v~Dilh}LrAxAk@v@{DpFyB|Cm@hAj@t@pBbCpBtBdIlIpCrC`AlAp@n@|@mAX_@V_@x@cAlCyDhAcB\\o@V[B@JCb@m@LKREvD~DtCxC`LrL^n@`@l@`@hAH`@J`ABz@Cr@Or@k@tB@AD@D@FHBJ?F`DvC~D|DgBtBg@d@]e@c@c@a@\\sAt@EB', NULL, NULL, '2021-06-11 16:52:50', '2021-06-11 16:53:51'),
(18, 'fandataxi305368', 51, NULL, 25, 25, 3, 0, NULL, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 'YES', 3.45800000, '1', 'Kms', '2270', 'GTS Chowk, Faisalabad, Punjab, Pakistan', 31.41666350, 73.09135960, 'C 13, Kohinoor City Faisalabad, Punjab, Pakistan', 31.41014100, 73.11844900, 3.45800000, 31.40853380, 73.11933450, '[{\"latitude\":\"31.410141\",\"longitude\":\"73.118449\",\"address\":\"C 13, Kohinoor City Faisalabad, Punjab, Pakistan\"}]', 1, 0, 0, '2021-06-11 16:53:54', NULL, '2021-06-11 16:54:11', '2021-06-11 16:56:01', 'NO', 1, 1, 0, 0, 'eaw~D{sb}LbARh@FvGj@dADd@AfAMjAa@^Sx@s@p@m@rAwAv@o@rB_Bd@o@t@eAp@y@hAmAPWJ[L_BDmANeAPg@tAmB`@q@PS|@oA`E}FhCqDZc@Y[sC}CSSe@Wy@Qw@Uw@_@w@{@eAeAqH}Hs@kA]w@M_@Mq@Gw@AqA?}@D_ARcAr@{AfHaKpC}Dj@aAx@eAlEgGjCuDRW]_@oDyDmAoAiEqEcFmFe@c@D_@jAgBHWr@_Ab@o@hAaBeBeB', NULL, NULL, '2021-06-11 16:53:54', '2021-06-11 17:10:54'),
(19, 'fandataxi616310', 54, NULL, 0, 24, 5, 0, NULL, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 'YES', 2.80000000, NULL, 'Kms', '7014', 'Street Number 11, Block Y Madina Town, Faisalabad, Punjab, Pakistan', 31.41603890, 73.12085210, 'D Ground Block B People\'s Colony No 1, Faisalabad, Punjab, Pakistan', 31.40636320, 73.10692980, 0.00000000, 0.00000000, 0.00000000, '[{\"latitude\":31.4063632000000012567397789098322391510009765625,\"longitude\":73.1069298000000031834133551456034183502197265625,\"address\":\"D Ground Block B People\'s Colony No 1, Faisalabad, Punjab, Pakistan\"}]', 1, 0, 0, '2021-06-11 17:06:07', NULL, NULL, NULL, 'NO', 0, 0, 0, 0, 'g}v~Dilh}LrAxAk@v@{DpFyB|Cm@hAj@t@pBbCpBtBdIlIpCrC`AlAp@n@|@mAX_@V_@x@cAlCyDhAcB\\o@V[B@JCb@m@LKREvD~DtCxC`LrL^n@`@l@`@hAH`@J`ABz@Cr@Or@k@tB@AD@D@FHBJ?F`DvC~D|DgBtBg@d@]e@c@c@a@\\sAt@EB', NULL, NULL, '2021-06-11 17:06:07', '2021-06-11 17:07:08'),
(20, 'fandataxi113374', 54, NULL, 0, 24, 5, 0, NULL, 'CANCELLED', 'USER', NULL, 'CASH', 0, 'YES', 2.80000000, NULL, 'Kms', '9338', 'Street Number 11, Block Y Madina Town, Faisalabad, Punjab, Pakistan', 31.41603890, 73.12085210, '', 31.41603890, 73.12085210, 0.00000000, 0.00000000, 0.00000000, '[{\"latitude\":31.41603889999999665860741515643894672393798828125,\"longitude\":null,\"address\":null}]', 0, 0, 0, '2021-06-11 17:07:34', NULL, NULL, NULL, 'NO', 0, 0, 0, 0, '', NULL, NULL, '2021-06-11 17:07:34', '2021-06-11 17:07:45'),
(21, 'fandataxi299169', 54, NULL, 0, 24, 5, 0, NULL, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 'YES', 2.80000000, NULL, 'Kms', '4511', 'Street Number 11, Block Y Madina Town, Faisalabad, Punjab, Pakistan', 31.41603890, 73.12085210, 'D Ground Block B People\'s Colony No 1, Faisalabad, Punjab, Pakistan', 31.40636320, 73.10692980, 0.00000000, 0.00000000, 0.00000000, '[{\"latitude\":31.4063632000000012567397789098322391510009765625,\"longitude\":73.1069298000000031834133551456034183502197265625,\"address\":\"D Ground Block B People\'s Colony No 1, Faisalabad, Punjab, Pakistan\"}]', 1, 0, 0, '2021-06-11 17:16:54', NULL, NULL, NULL, 'NO', 0, 0, 0, 0, 'g}v~Dilh}LrAxAk@v@{DpFyB|Cm@hAj@t@pBbCpBtBdIlIpCrC`AlAp@n@|@mAX_@V_@x@cAlCyDhAcB\\o@V[B@JCb@m@LKREvD~DtCxC`LrL^n@`@l@`@hAH`@J`ABz@Cr@Or@k@tB@AD@D@FHBJ?F`DvC~D|DgBtBg@d@]e@c@c@a@\\sAt@EB', NULL, NULL, '2021-06-11 17:16:54', '2021-06-11 17:17:55'),
(22, 'fandataxi117379', 54, NULL, 0, 24, 5, 0, NULL, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 'YES', 2.80000000, NULL, 'Kms', '1218', 'Street Number 11, Block Y Madina Town, Faisalabad, Punjab, Pakistan', 31.41603890, 73.12085210, 'D Ground Block B People\'s Colony No 1, Faisalabad, Punjab, Pakistan', 31.40636320, 73.10692980, 0.00000000, 0.00000000, 0.00000000, '[{\"latitude\":31.4063632000000012567397789098322391510009765625,\"longitude\":73.1069298000000031834133551456034183502197265625,\"address\":\"D Ground Block B People\'s Colony No 1, Faisalabad, Punjab, Pakistan\"}]', 1, 0, 0, '2021-06-11 17:23:43', NULL, NULL, NULL, 'NO', 0, 0, 0, 0, 'g}v~Dilh}LrAxAk@v@{DpFyB|Cm@hAj@t@pBbCpBtBdIlIpCrC`AlAp@n@|@mAX_@V_@x@cAlCyDhAcB\\o@V[B@JCb@m@LKREvD~DtCxC`LrL^n@`@l@`@hAH`@J`ABz@Cr@Or@k@tB@AD@D@FHBJ?F`DvC~D|DgBtBg@d@]e@c@c@a@\\sAt@EB', NULL, NULL, '2021-06-11 17:23:43', '2021-06-11 17:24:44'),
(23, 'fandataxi504856', 54, NULL, 24, 24, 5, 0, NULL, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 'YES', 0.00000000, '0', 'Kms', '4518', 'Street Number 11, Block Y Madina Town, Faisalabad, Punjab, Pakistan', 31.41603890, 73.12085210, '100 Jaranwala Rd, Kohinoor City Faisalabad, Punjab, Pakistan', 31.41260000, 73.11520000, 1047.00000000, 31.41260000, 31.41260000, '[{\"latitude\":31.4063632000000012567397789098322391510009765625,\"longitude\":73.1069298000000031834133551456034183502197265625,\"address\":\"D Ground Block B People\'s Colony No 1, Faisalabad, Punjab, Pakistan\"}]', 1, 0, 0, '2021-06-11 17:38:11', NULL, '2021-06-11 17:38:41', '2021-06-11 17:38:49', 'NO', 1, 1, 0, 0, '}hvuF|umqO', NULL, NULL, '2021-06-11 17:38:11', '2021-06-11 17:39:19'),
(24, 'fandataxi172163', 61, NULL, 0, 20, 5, 0, NULL, 'CANCELLED', 'USER', NULL, 'CASH', 0, 'YES', 5.00000000, NULL, 'Kms', '2814', 'Near Public Chowk, Jutial, Gilgit, Gilgit-Baltistan', 35.90653020, 74.36067360, 'NLI Market, Gilgit (Northern Light Infantry), North L. I. Road, Gilgit', 35.92232700, 74.31203400, 0.00000000, 0.00000000, 0.00000000, '[{\"latitude\":\"35.922327\",\"longitude\":\"74.312034\",\"address\":\"NLI Market, Gilgit (Northern Light Infantry), North L. I. Road, Gilgit\"}]', 1, 0, 0, '2021-06-11 19:14:26', NULL, NULL, NULL, 'NO', 0, 0, 0, 0, 'o_dzE{qzdMiAzBcE|Iy@nBUx@yBfK_E`RuA`F}AnGc@nAS`Aq@rBoAxDYpAKv@_@vFErBJ~EVxCVfCJx@vAzJF^xBzFf@|AR`AF`@F|@\\vFBrBg@rDi@bEy@rC}ChHi@fAeEtIgBzCe@v@{@jBwBbEaCrEa@`AIPGp@G^Al@@tA?z@GTYJoDfA?B?FADGHK@ECAAc@j@uA~CaA~B_AtCwBpFsKbU_BrDkChHuA|EMn@WxCAL', NULL, NULL, '2021-06-11 19:14:26', '2021-06-11 19:14:39'),
(25, 'fandataxi966518', 61, NULL, 28, 28, 5, 0, NULL, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 'YES', 0.00000000, '2', 'Kms', '6944', 'Near Public Chowk, Jutial, Gilgit, Gilgit-Baltistan', 35.90653020, 74.36067360, 'Public School Chowk, Shahr-e-Quaid - e - Azam, Jutial, Gilgit', 35.90744800, 74.36072700, 0.00000000, 35.90654190, 74.36056830, '[{\"latitude\":\"35.925104\",\"longitude\":\"74.364466\",\"address\":\"Karakoram International University, Gilgit\"},{\"latitude\":\"35.907448\",\"longitude\":\"74.360727\",\"address\":\"Public School Chowk, Shahr-e-Quaid - e - Azam, Jutial, Gilgit\"}]', 1, 0, 0, '2021-06-11 23:29:46', NULL, '2021-06-11 23:32:19', '2021-06-11 23:34:45', 'NO', 1, 1, 0, 0, 'o_dzE{qzdMa@v@EE[]s@}@', NULL, NULL, '2021-06-11 23:29:47', '2021-06-11 23:36:59'),
(26, 'fandataxi271696', 61, NULL, 0, 20, 5, 0, NULL, 'CANCELLED', 'USER', NULL, 'CASH', 0, 'YES', 5.80000000, NULL, 'Kms', '9876', 'Near Public Chowk, Jutial, Gilgit, Gilgit-Baltistan', 35.90653020, 74.36067360, 'Naltar Valley Road, Chilmish Das', 35.93276800, 74.36590900, 0.00000000, 0.00000000, 0.00000000, '[{\"latitude\":\"35.932768\",\"longitude\":\"74.365909\",\"address\":\"Naltar Valley Road, Chilmish Das\"}]', 1, 0, 0, '2021-06-12 00:03:49', NULL, NULL, NULL, 'NO', 0, 0, 0, 0, 'o_dzE{qzdMiAzBcE|Iy@nBUx@[zAuAiAwDmD_@]aAs@gBq@}@_@e@c@eEwD][{@o@q@]IHYn@_AdCUTc@Va@v@{@bBm@rBu@fBg@bAON]jAgAfFOz@QCk@S]OUUQ]_@cAQ]SUkAgAW[Ue@_@g@eAu@UYK[SoAKq@Go@?[B]Vc@PQNKZGlAQnAk@TQr@e@`@m@Lg@@OA_@U{@m@sBoCcJU{@Ds@L]fAuBf@oAJm@@sAEgCUwCK_AUw@UWMIWG^xA^`BHxABbBExAC`@O|@[n@c@n@_DrDs@p@i@b@cAf@oAf@iANaFv@aCn@kA`@eBbAoAh@{A^_@DS@g@EoCy@uC_Ac@OOuAQsBM_Cu@uLEk@Ia@o@kBoC_Iq@iBm@cAY]}@k@i@Uk@K{ABqAHo@PeAf@{@`@o@TgEbB_C|@aChAaDhB', NULL, NULL, '2021-06-12 00:03:43', '2021-06-12 00:04:04'),
(27, 'fandataxi764566', 61, NULL, 0, 20, 5, 0, NULL, 'CANCELLED', 'USER', NULL, 'CASH', 0, 'YES', 4.60000000, NULL, 'Kms', '2438', 'Near General Post office, Public Chowk, Jutial, Gilgit, Gilgit-Baltistan', 35.90662770, 74.36132130, 'Gilgit', 35.92892100, 74.36426700, 0.00000000, 0.00000000, 0.00000000, '[{\"latitude\":\"35.928921\",\"longitude\":\"74.364267\",\"address\":\"Gilgit\"}]', 1, 0, 0, '2021-06-12 12:01:49', NULL, NULL, NULL, 'NO', 0, 0, 0, 0, '}_dzEutzdMb@r@_B`DcE|Iy@nBUx@[zA}DkDoBiBaAs@k@UiBq@[SYY{BsBiAcA][{@o@q@]IHYn@_AdCUTc@Va@v@{@bBW~@Ur@u@fBg@bAON]jAgAfFOz@QCk@S]OUUQ]Oa@Oa@Q]w@w@g@e@W[e@{@i@g@k@_@UYUaA[wBAo@B]Vc@PQNKZGlAQnAk@l@a@ZUPWNUFUFa@A_@U{@cD{Kg@}AGYDs@L]fAuBf@oAJm@@sAEgCUwCK_AUw@UWMIWG^xA^`BFl@DnCExAC`@O|@[n@c@n@_DrDs@p@i@b@cAf@oAf@yDj@qBZaCn@kA`@eBbAoAh@{A^_@DS@g@EeHyBc@OOuAQsB]uFK{A', NULL, NULL, '2021-06-12 12:01:50', '2021-06-12 12:02:32'),
(28, 'fandataxi536315', 61, NULL, 28, 28, 5, 0, NULL, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 'YES', 0.00000000, '0', 'Kms', '6134', 'Near Public Chowk, Jutial, Gilgit, Gilgit-Baltistan', 35.90653020, 74.36067360, 'Opposite of General Post office, Jutial, Gilgit', 35.90652550, 74.36080300, 1433.00000000, 35.90652550, 35.90652550, '[{\"latitude\":\"35.91825\",\"longitude\":\"74.367464\",\"address\":\"Kha\'e, Gilgit\"}]', 1, 0, 0, '2021-06-12 12:03:26', NULL, '2021-06-12 12:05:02', '2021-06-12 12:05:39', 'NO', 1, 1, 0, 0, '}hvuF|umqO', NULL, NULL, '2021-06-12 12:03:26', '2021-06-12 12:06:54'),
(29, 'fandataxi322429', 63, NULL, 29, 29, 3, 0, NULL, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 'YES', 0.51500000, '47', 'Kms', '5868', 'Av. Tingo Maria 1047, Breña 15083, Peru', -12.05618120, -77.05749100, 'Jose Francisco Arana 1115, Cercado de Lima 15083, Peru', -12.05918590, -77.06533350, 3790.00000000, -12.05918590, -12.05918590, '[{\"latitude\":\"-12.0929\",\"longitude\":\"-77.071525\",\"address\":\"Calle San Jose 110, Magdalena del Mar 15086, Peru\"}]', 1, 0, 0, '2021-06-17 21:38:44', NULL, '2021-06-17 21:40:54', '2021-06-17 22:28:30', 'NO', 1, 1, 0, 0, '}hvuF|umqO', NULL, NULL, '2021-06-17 21:38:44', '2021-06-18 02:58:50'),
(30, 'fandataxi341202', 65, NULL, 30, 30, 3, 0, NULL, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 'YES', 0.00000000, '0', 'Kms', '1316', 'عبادة بن مالك، Al Faisaliyyah, At Taif 26526, Saudi Arabia', 21.30129560, 40.42501200, '3620, Al Faisaliyyah, At Taif 26523 8366, Saudi Arabia', 21.29390800, 40.42945000, 0.00000000, 21.30043500, 40.42459890, '[{\"latitude\":\"21.293908\",\"longitude\":\"40.42945\",\"address\":\"3620, Al Faisaliyyah, At Taif 26523\\u00a08366, Saudi Arabia\"}]', 1, 0, 0, '2021-06-21 01:29:13', NULL, '2021-06-21 01:30:07', '2021-06-21 01:30:33', 'NO', 1, 1, 0, 0, 'qk_aC_ovuFNs@HkAEqDBwADQNMDArAf@bAb@^oBPoARc@NGN?zD~ApEjB`Bf@hAb@pFvB|EpBzHvCnJpD`Bt@dEbBfBZdBClFEdACd@C^GnAi@v@k@jBuB`A}@n@a@hBk@xAOhAC~CBtGNrBJl@FhBZnBh@\\B`@@FE?EAI_@QOMKSq@SwAUeC[uBI}EG_DFuAGe@@_@O}@k@gCmBaFsDiEaDcGwEuCqBi@Wq@UiAYoAU}@KwAA_BLsC^oAR{AJw@@eAE', NULL, NULL, '2021-06-21 01:29:13', '2021-06-21 01:31:16');

-- --------------------------------------------------------

--
-- Table structure for table `user_request_delivery_details`
--

CREATE TABLE `user_request_delivery_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_request_id` int(10) UNSIGNED NOT NULL,
  `item_to_deliver` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `delivery_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `receiver_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `receiver_mobile` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `any_instructions` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('pending','pickedup','dropped','') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_request_delivery_details`
--

INSERT INTO `user_request_delivery_details` (`id`, `user_id`, `user_request_id`, `item_to_deliver`, `delivery_address`, `receiver_name`, `receiver_mobile`, `any_instructions`, `status`, `created_at`, `updated_at`) VALUES
(13, 51, 18, 'PIZ', 'rtyuiop', 'IMAD', '34567890', 'rtyuio', 'dropped', NULL, '2021-06-11 16:55:56');

-- --------------------------------------------------------

--
-- Table structure for table `user_request_disputes`
--

CREATE TABLE `user_request_disputes` (
  `id` int(10) UNSIGNED NOT NULL,
  `request_id` int(11) NOT NULL,
  `dispute_type` enum('user','provider') COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `provider_id` int(11) NOT NULL,
  `dispute_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dispute_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comments` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `refund_amount` double(10,2) NOT NULL DEFAULT 0.00,
  `status` enum('open','closed') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `is_admin` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_request_lost_items`
--

CREATE TABLE `user_request_lost_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `request_id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `lost_item_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comments` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comments_by` enum('user','admin') COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('open','closed') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `is_admin` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_request_payments`
--

CREATE TABLE `user_request_payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `request_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `provider_id` int(11) NOT NULL,
  `fleet_id` int(11) DEFAULT NULL,
  `promocode_id` int(11) DEFAULT NULL,
  `payment_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_mode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fixed` double(10,2) NOT NULL DEFAULT 0.00,
  `distance` double(10,2) NOT NULL DEFAULT 0.00,
  `minute` double(10,2) NOT NULL DEFAULT 0.00,
  `hour` double(10,2) NOT NULL DEFAULT 0.00,
  `commision` double(10,2) NOT NULL DEFAULT 0.00,
  `commision_per` double(5,2) NOT NULL DEFAULT 0.00,
  `fleet` double(10,2) NOT NULL DEFAULT 0.00,
  `fleet_per` double(5,2) NOT NULL DEFAULT 0.00,
  `discount` double(10,2) NOT NULL DEFAULT 0.00,
  `discount_per` double(5,2) NOT NULL DEFAULT 0.00,
  `tax` double(10,2) NOT NULL DEFAULT 0.00,
  `tax_per` double(5,2) NOT NULL DEFAULT 0.00,
  `wallet` double(10,2) NOT NULL DEFAULT 0.00,
  `is_partial` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-No,1-Yes',
  `cash` double(10,2) NOT NULL DEFAULT 0.00,
  `card` double(10,2) NOT NULL DEFAULT 0.00,
  `online` double(10,2) NOT NULL DEFAULT 0.00,
  `surge` double(10,2) NOT NULL DEFAULT 0.00,
  `toll_charge` double(10,2) NOT NULL DEFAULT 0.00,
  `round_of` double(10,2) NOT NULL DEFAULT 0.00,
  `peak_amount` double(10,2) NOT NULL DEFAULT 0.00,
  `peak_comm_amount` double(10,2) NOT NULL DEFAULT 0.00,
  `total_waiting_time` int(11) NOT NULL DEFAULT 0,
  `waiting_amount` double(10,2) NOT NULL DEFAULT 0.00,
  `waiting_comm_amount` double(10,2) NOT NULL DEFAULT 0.00,
  `tips` double(10,2) NOT NULL DEFAULT 0.00,
  `total` double(10,2) NOT NULL DEFAULT 0.00,
  `payable` double(8,2) NOT NULL DEFAULT 0.00,
  `provider_commission` double(8,2) NOT NULL DEFAULT 0.00,
  `provider_pay` double(8,2) NOT NULL DEFAULT 0.00,
  `per_delivery_cost` double(10,2) NOT NULL DEFAULT 0.00,
  `no_of_items` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `items_delivery_cost` double(10,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_request_payments`
--

INSERT INTO `user_request_payments` (`id`, `request_id`, `user_id`, `provider_id`, `fleet_id`, `promocode_id`, `payment_id`, `payment_mode`, `fixed`, `distance`, `minute`, `hour`, `commision`, `commision_per`, `fleet`, `fleet_per`, `discount`, `discount_per`, `tax`, `tax_per`, `wallet`, `is_partial`, `cash`, `card`, `online`, `surge`, `toll_charge`, `round_of`, `peak_amount`, `peak_comm_amount`, `total_waiting_time`, `waiting_amount`, `waiting_comm_amount`, `tips`, `total`, `payable`, `provider_commission`, `provider_pay`, `per_delivery_cost`, `no_of_items`, `items_delivery_cost`, `created_at`, `updated_at`) VALUES
(12, 16, 51, 25, 0, NULL, NULL, 'CASH', 80.00, 64.19, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 144.00, 0.00, 0.00, 0.00, 0.00, -0.19, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 144.19, 0.00, 0.00, 144.19, 0.00, 0, 0.00, '2021-06-11 16:48:34', '2021-06-11 16:48:57'),
(13, 18, 51, 25, 0, NULL, NULL, 'CASH', 30.00, 24.58, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 55.00, 0.00, 0.00, 0.00, 0.00, 0.42, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 54.58, 0.00, 0.00, 54.58, 0.00, 0, 0.00, '2021-06-11 16:56:01', '2021-06-11 16:56:06'),
(14, 23, 54, 24, 0, NULL, NULL, 'CASH', 80.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 80.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 80.00, 0.00, 0.00, 80.00, 0.00, 0, 0.00, '2021-06-11 17:38:49', '2021-06-11 17:39:09'),
(15, 25, 61, 28, 0, NULL, NULL, 'CASH', 80.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 80.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 80.00, 0.00, 0.00, 80.00, 0.00, 0, 0.00, '2021-06-11 23:34:45', '2021-06-11 23:35:02'),
(16, 28, 61, 28, 0, NULL, NULL, 'CASH', 80.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 80.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 80.00, 0.00, 0.00, 80.00, 0.00, 0, 0.00, '2021-06-12 12:05:39', '2021-06-12 12:06:13'),
(17, 29, 63, 29, 0, NULL, NULL, 'CASH', 30.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 30.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 30.00, 0.00, 0.00, 30.00, 0.00, 0, 0.00, '2021-06-17 22:28:30', '2021-06-18 02:58:36'),
(18, 30, 65, 30, 0, NULL, NULL, 'CASH', 30.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 30.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 30.00, 0.00, 0.00, 30.00, 0.00, 0, 0.00, '2021-06-21 01:30:33', '2021-06-21 01:31:07');

-- --------------------------------------------------------

--
-- Table structure for table `user_request_ratings`
--

CREATE TABLE `user_request_ratings` (
  `id` int(10) UNSIGNED NOT NULL,
  `request_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `provider_id` int(11) NOT NULL,
  `user_rating` int(11) NOT NULL DEFAULT 0,
  `provider_rating` int(11) NOT NULL DEFAULT 0,
  `user_comment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `provider_comment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_request_ratings`
--

INSERT INTO `user_request_ratings` (`id`, `request_id`, `user_id`, `provider_id`, `user_rating`, `provider_rating`, `user_comment`, `provider_comment`, `created_at`, `updated_at`) VALUES
(12, 16, 51, 25, 5, 5, '', '', '2021-06-11 16:48:59', '2021-06-11 16:49:04'),
(13, 18, 51, 25, 5, 5, '', '', '2021-06-11 16:56:07', '2021-06-11 17:10:54'),
(14, 23, 54, 24, 4, 4, '', '', '2021-06-11 17:39:12', '2021-06-11 17:39:19'),
(15, 25, 61, 28, 5, 5, 'jjs', '', '2021-06-11 23:35:05', '2021-06-11 23:48:17'),
(16, 28, 61, 28, 5, 5, '', 'good service', '2021-06-12 12:06:47', '2021-06-12 12:06:54'),
(17, 29, 63, 29, 5, 5, '', '', '2021-06-18 02:58:39', '2021-06-18 02:58:50'),
(18, 30, 65, 30, 5, 5, '', '', '2021-06-21 01:31:09', '2021-06-21 01:31:16');

-- --------------------------------------------------------

--
-- Table structure for table `user_wallet`
--

CREATE TABLE `user_wallet` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `transaction_alias` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `transaction_desc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` enum('C','D') COLLATE utf8_unicode_ci NOT NULL,
  `amount` double(15,8) NOT NULL DEFAULT 0.00000000,
  `open_balance` double(15,8) NOT NULL DEFAULT 0.00000000,
  `close_balance` double(15,8) NOT NULL DEFAULT 0.00000000,
  `payment_mode` enum('BRAINTREE','CARD','PAYPAL','PAYUMONEY','PAYTM') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wallet_passbooks`
--

CREATE TABLE `wallet_passbooks` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `status` enum('CREDITED','DEBITED') COLLATE utf8_unicode_ci NOT NULL,
  `via` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wallet_requests`
--

CREATE TABLE `wallet_requests` (
  `id` int(10) UNSIGNED NOT NULL,
  `alias_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `request_from` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'user,provider,fleet',
  `from_id` int(11) NOT NULL,
  `from_desc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` enum('C','D') COLLATE utf8_unicode_ci NOT NULL,
  `amount` double(15,8) NOT NULL DEFAULT 0.00000000,
  `send_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'online,offline',
  `send_desc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Pendig,1-Approved,2-cancel',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `works`
--

CREATE TABLE `works` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `age` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `work` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `accounts_email_unique` (`email`);

--
-- Indexes for table `account_password_resets`
--
ALTER TABLE `account_password_resets`
  ADD KEY `account_password_resets_email_index` (`email`),
  ADD KEY `account_password_resets_token_index` (`token`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `admin_wallet`
--
ALTER TABLE `admin_wallet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `advertisements`
--
ALTER TABLE `advertisements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_pushes`
--
ALTER TABLE `custom_pushes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dispatchers`
--
ALTER TABLE `dispatchers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `dispatchers_email_unique` (`email`);

--
-- Indexes for table `dispatcher_password_resets`
--
ALTER TABLE `dispatcher_password_resets`
  ADD KEY `dispatcher_password_resets_email_index` (`email`),
  ADD KEY `dispatcher_password_resets_token_index` (`token`);

--
-- Indexes for table `disputes`
--
ALTER TABLE `disputes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eventcontacts`
--
ALTER TABLE `eventcontacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favourite_locations`
--
ALTER TABLE `favourite_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fleets`
--
ALTER TABLE `fleets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `fleets_email_unique` (`email`);

--
-- Indexes for table `fleet_cards`
--
ALTER TABLE `fleet_cards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fleet_password_resets`
--
ALTER TABLE `fleet_password_resets`
  ADD KEY `fleet_password_resets_email_index` (`email`),
  ADD KEY `fleet_password_resets_token_index` (`token`);

--
-- Indexes for table `fleet_wallet`
--
ALTER TABLE `fleet_wallet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ltm_translations`
--
ALTER TABLE `ltm_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `payment_logs`
--
ALTER TABLE `payment_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payu_payments`
--
ALTER TABLE `payu_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `peak_hours`
--
ALTER TABLE `peak_hours`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promocodes`
--
ALTER TABLE `promocodes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promocode_passbooks`
--
ALTER TABLE `promocode_passbooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promocode_usages`
--
ALTER TABLE `promocode_usages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `providers`
--
ALTER TABLE `providers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `providers_email_unique` (`email`),
  ADD UNIQUE KEY `providers_mobile_unique` (`mobile`);

--
-- Indexes for table `provider_cards`
--
ALTER TABLE `provider_cards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `provider_devices`
--
ALTER TABLE `provider_devices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `provider_documents`
--
ALTER TABLE `provider_documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `provider_profiles`
--
ALTER TABLE `provider_profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `provider_services`
--
ALTER TABLE `provider_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `provider_wallet`
--
ALTER TABLE `provider_wallet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `push_subscriptions`
--
ALTER TABLE `push_subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `push_subscriptions_endpoint_unique` (`endpoint`);

--
-- Indexes for table `reasons`
--
ALTER TABLE `reasons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `referral_earnings`
--
ALTER TABLE `referral_earnings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `referral_histroy`
--
ALTER TABLE `referral_histroy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `request_filters`
--
ALTER TABLE `request_filters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `request_waiting_time`
--
ALTER TABLE `request_waiting_time`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `service_peak_hours`
--
ALTER TABLE `service_peak_hours`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_types`
--
ALTER TABLE `service_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `settings_key_index` (`key`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_mobile_unique` (`mobile`);

--
-- Indexes for table `user_requests`
--
ALTER TABLE `user_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_request_delivery_details`
--
ALTER TABLE `user_request_delivery_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_request_delivery_details_user_request_id_foreign` (`user_request_id`);

--
-- Indexes for table `user_request_disputes`
--
ALTER TABLE `user_request_disputes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_request_lost_items`
--
ALTER TABLE `user_request_lost_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_request_payments`
--
ALTER TABLE `user_request_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_request_ratings`
--
ALTER TABLE `user_request_ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_wallet`
--
ALTER TABLE `user_wallet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wallet_passbooks`
--
ALTER TABLE `wallet_passbooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wallet_requests`
--
ALTER TABLE `wallet_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `works`
--
ALTER TABLE `works`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `admin_wallet`
--
ALTER TABLE `admin_wallet`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `advertisements`
--
ALTER TABLE `advertisements`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cards`
--
ALTER TABLE `cards`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `custom_pushes`
--
ALTER TABLE `custom_pushes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dispatchers`
--
ALTER TABLE `dispatchers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `disputes`
--
ALTER TABLE `disputes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `eventcontacts`
--
ALTER TABLE `eventcontacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favourite_locations`
--
ALTER TABLE `favourite_locations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fleets`
--
ALTER TABLE `fleets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `fleet_cards`
--
ALTER TABLE `fleet_cards`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fleet_wallet`
--
ALTER TABLE `fleet_wallet`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ltm_translations`
--
ALTER TABLE `ltm_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1975;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payment_logs`
--
ALTER TABLE `payment_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payu_payments`
--
ALTER TABLE `payu_payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `peak_hours`
--
ALTER TABLE `peak_hours`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `promocodes`
--
ALTER TABLE `promocodes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `promocode_passbooks`
--
ALTER TABLE `promocode_passbooks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `promocode_usages`
--
ALTER TABLE `promocode_usages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `providers`
--
ALTER TABLE `providers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `provider_cards`
--
ALTER TABLE `provider_cards`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `provider_devices`
--
ALTER TABLE `provider_devices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `provider_documents`
--
ALTER TABLE `provider_documents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `provider_profiles`
--
ALTER TABLE `provider_profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `provider_services`
--
ALTER TABLE `provider_services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `provider_wallet`
--
ALTER TABLE `provider_wallet`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `push_subscriptions`
--
ALTER TABLE `push_subscriptions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reasons`
--
ALTER TABLE `reasons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `referral_earnings`
--
ALTER TABLE `referral_earnings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `referral_histroy`
--
ALTER TABLE `referral_histroy`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `request_filters`
--
ALTER TABLE `request_filters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=189;

--
-- AUTO_INCREMENT for table `request_waiting_time`
--
ALTER TABLE `request_waiting_time`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `service_peak_hours`
--
ALTER TABLE `service_peak_hours`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `service_types`
--
ALTER TABLE `service_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `user_requests`
--
ALTER TABLE `user_requests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `user_request_delivery_details`
--
ALTER TABLE `user_request_delivery_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user_request_disputes`
--
ALTER TABLE `user_request_disputes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_request_lost_items`
--
ALTER TABLE `user_request_lost_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_request_payments`
--
ALTER TABLE `user_request_payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `user_request_ratings`
--
ALTER TABLE `user_request_ratings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `user_wallet`
--
ALTER TABLE `user_wallet`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wallet_passbooks`
--
ALTER TABLE `wallet_passbooks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wallet_requests`
--
ALTER TABLE `wallet_requests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `works`
--
ALTER TABLE `works`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_request_delivery_details`
--
ALTER TABLE `user_request_delivery_details`
  ADD CONSTRAINT `user_request_delivery_details_user_request_id_foreign` FOREIGN KEY (`user_request_id`) REFERENCES `user_requests` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
