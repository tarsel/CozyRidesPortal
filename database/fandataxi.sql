-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2021 at 09:55 AM
-- Server version: 10.2.37-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fandataxi`
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
(1, 'Tranxit', 'admin@demo.com', NULL, '$2y$10$o20F1liL9EstrAidv/x1E.7rdMQrfAQcG9GkeCyv3BncUU.pYbH/C', NULL, NULL, NULL, '2021-05-29 05:53:55', '2021-05-29 05:53:55'),
(2, 'Demo Dispatcher', 'dispatcher@demo.com', NULL, '$2y$10$Yjr3cXM1Cdf2bnfrdjCW0usBsrkAMRZklMgV4poaxZKq2pUlBxKEa', NULL, NULL, NULL, '2021-05-29 05:53:55', '2021-05-29 05:53:55'),
(3, 'Demo Account', 'account@demo.com', NULL, '$2y$10$06EJ2PORNUh0QRp.ktvfoO5pDml5ip6bHCJMi75ZesDdcHTub1NDO', NULL, NULL, NULL, '2021-05-29 05:53:56', '2021-05-29 05:53:56'),
(4, 'Demo Dispute', 'dispute@demo.com', NULL, '$2y$10$8OwBhKNZ1vJMPedyA0zYi.MlQ8SRy99g00CQa/p9d15F2v4B7fZ6a', NULL, NULL, NULL, '2021-05-29 05:53:56', '2021-05-29 05:53:56');

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
(1, 'Driving Licence', 'DRIVER', NULL, NULL),
(2, 'Bank Passbook', 'DRIVER', NULL, NULL),
(3, 'Joining Form', 'DRIVER', NULL, NULL),
(4, 'Work Permit', 'DRIVER', NULL, NULL),
(5, 'Registration Certificate', 'VEHICLE', NULL, NULL),
(6, 'Insurance Certificate', 'VEHICLE', NULL, NULL),
(7, 'Fitness Certificate', 'VEHICLE', NULL, NULL);

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
(1, 'Demo', 'fleet@demo.com', '$2y$10$hjQHBfO9X4IAPxA/qppQlu9ybh9m9USq9KnBE3/sCLYqCoxsn4JmW', NULL, NULL, NULL, NULL, 0.00, 0.00, NULL, NULL, '2021-05-29 05:53:57', '2021-05-29 05:53:57');

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
(59, '2020_10_27_143019_create_user_request_delivery_details_table', 1),
(60, '2029_05_07_151145_create_advertisements_table', 1);

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
(3, 'App\\Admin', 4),
(4, 'App\\Admin', 3),
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
(65, 'advertisement-list', 'Advertisement List', 'admin', 'Advertisement', NULL, NULL),
(66, 'advertisement-create', 'Create Advertisement', 'admin', 'Advertisement', NULL, NULL),
(67, 'advertisement-edit', 'Edit Advertisement', 'admin', 'Advertisement', NULL, NULL),
(68, 'advertisement-delete', 'Delete Advertisement', 'admin', 'Advertisement', NULL, NULL),
(69, 'documents-list', 'Documents List', 'admin', 'Documents', NULL, NULL),
(70, 'documents-create', 'Create Document', 'admin', 'Documents', NULL, NULL),
(71, 'documents-edit', 'Edit Document', 'admin', 'Documents', NULL, NULL),
(72, 'documents-delete', 'Delete Document', 'admin', 'Documents', NULL, NULL),
(73, 'cancel-reasons-list', 'Cancel Reason List', 'admin', 'Cancel Reasons', NULL, NULL),
(74, 'cancel-reasons-create', 'Create Reason', 'admin', 'Cancel Reasons', NULL, NULL),
(75, 'cancel-reasons-edit', 'Edit Reason', 'admin', 'Cancel Reasons', NULL, NULL),
(76, 'cancel-reasons-delete', 'Delete Reason', 'admin', 'Cancel Reasons', NULL, NULL),
(77, 'notification-list', 'Notifications List', 'admin', 'Notifications', NULL, NULL),
(78, 'notification-create', 'Create Notification', 'admin', 'Notifications', NULL, NULL),
(79, 'notification-edit', 'Edit Notification', 'admin', 'Notifications', NULL, NULL),
(80, 'notification-delete', 'Delete Notification', 'admin', 'Notifications', NULL, NULL),
(81, 'lost-item-list', 'Lost Item List', 'admin', 'Lost Items', NULL, NULL),
(82, 'lost-item-create', 'Create Lost Item', 'admin', 'Lost Items', NULL, NULL),
(83, 'lost-item-edit', 'Edit Lost Item', 'admin', 'Lost Items', NULL, NULL),
(84, 'role-list', 'Role list', 'admin', 'Role', NULL, NULL),
(85, 'role-create', 'Create Role', 'admin', 'Role', NULL, NULL),
(86, 'role-edit', 'Edit Role', 'admin', 'Role', NULL, NULL),
(87, 'role-delete', 'Delete Role', 'admin', 'Role', NULL, NULL),
(88, 'sub-admin-list', 'Sub Admins List', 'admin', 'Sub Admins', NULL, NULL),
(89, 'sub-admin-create', 'Create Sub Admin', 'admin', 'Sub Admins', NULL, NULL),
(90, 'sub-admin-edit', 'Edit Sub Admin', 'admin', 'Sub Admins', NULL, NULL),
(91, 'sub-admin-delete', 'Delete Sub Admin', 'admin', 'Sub Admins', NULL, NULL),
(92, 'payment-history', 'Payment History List', 'admin', 'Payment', NULL, NULL),
(93, 'payment-settings', 'Payment Settings List', 'admin', 'Payment', NULL, NULL),
(94, 'site-settings', 'Site Settings', 'admin', 'Settings', NULL, NULL),
(95, 'account-settings', 'Account Settings', 'admin', 'Settings', NULL, NULL),
(96, 'transalations', 'Translations', 'admin', 'Settings', NULL, NULL),
(97, 'change-password', 'Change Password', 'admin', 'Settings', NULL, NULL),
(98, 'cms-pages', 'CMS Pages', 'admin', 'Pages', NULL, NULL),
(99, 'help', 'Help', 'admin', 'Pages', NULL, NULL),
(100, 'custom-push', 'Custom Push', 'admin', 'Others', NULL, NULL),
(101, 'db-backup', 'DB Backup', 'admin', 'Others', NULL, NULL);

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
(5, 'FLEET', 'fleet', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
  `fixed` double(5,2) NOT NULL DEFAULT 0.00,
  `price` double(5,2) NOT NULL DEFAULT 0.00,
  `minute` double(5,2) NOT NULL DEFAULT 0.00,
  `hour` int(11) DEFAULT NULL,
  `distance` int(11) NOT NULL,
  `calculator` enum('MIN','HOUR','DISTANCE','DISTANCEMIN','DISTANCEHOUR') COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `waiting_free_mins` int(11) NOT NULL DEFAULT 0,
  `waiting_min_charge` double(5,2) NOT NULL DEFAULT 0.00,
  `status` int(11) NOT NULL DEFAULT 1,
  `type` enum('delivery','ride') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'ride',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `service_types`
--

INSERT INTO `service_types` (`id`, `name`, `provider_name`, `image`, `marker`, `capacity`, `fixed`, `price`, `minute`, `hour`, `distance`, `calculator`, `description`, `waiting_free_mins`, `waiting_min_charge`, `status`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Sedan', 'Driver', 'http://127.0.0.1:8000/asset/img/cars/sedan.png', 'http://127.0.0.1:8000/asset/img/cars/sedan_marker.png', 0, 20.00, 10.00, 0.00, NULL, 1, 'DISTANCE', NULL, 0, 0.00, 1, 'ride', '2021-05-29 05:53:57', '2021-05-29 05:53:57'),
(2, 'Hatchback', 'Driver', 'http://127.0.0.1:8000/asset/img/cars/hatchback.png', 'http://127.0.0.1:8000/asset/img/cars/hatchback_marker.png', 0, 20.00, 10.00, 0.00, NULL, 1, 'DISTANCE', NULL, 0, 0.00, 1, 'ride', '2021-05-29 05:53:57', '2021-05-29 05:53:57'),
(3, 'SUV', 'Driver', 'http://127.0.0.1:8000/asset/img/cars/suv.png', 'http://127.0.0.1:8000/asset/img/cars/suv_marker.png', 0, 20.00, 10.00, 0.00, NULL, 1, 'DISTANCE', NULL, 0, 0.00, 1, 'ride', '2021-05-29 05:53:57', '2021-05-29 05:53:57'),
(4, 'Limousine', 'Driver', 'http://127.0.0.1:8000/asset/img/cars/limo.png', 'http://127.0.0.1:8000/asset/img/cars/limo_marker.png', 0, 20.00, 10.00, 0.00, NULL, 1, 'DISTANCE', NULL, 0, 0.00, 1, 'ride', '2021-05-29 05:53:57', '2021-05-29 05:53:57');

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
  `status` enum('pending','pickedup','dropped') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `admin_wallet`
--
ALTER TABLE `admin_wallet`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `provider_cards`
--
ALTER TABLE `provider_cards`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `provider_devices`
--
ALTER TABLE `provider_devices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `provider_documents`
--
ALTER TABLE `provider_documents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `provider_profiles`
--
ALTER TABLE `provider_profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `provider_services`
--
ALTER TABLE `provider_services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `provider_wallet`
--
ALTER TABLE `provider_wallet`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `push_subscriptions`
--
ALTER TABLE `push_subscriptions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reasons`
--
ALTER TABLE `reasons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `request_waiting_time`
--
ALTER TABLE `request_waiting_time`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `service_peak_hours`
--
ALTER TABLE `service_peak_hours`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `service_types`
--
ALTER TABLE `service_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_requests`
--
ALTER TABLE `user_requests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_request_delivery_details`
--
ALTER TABLE `user_request_delivery_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_request_ratings`
--
ALTER TABLE `user_request_ratings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

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
