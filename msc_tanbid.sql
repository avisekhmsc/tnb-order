-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 27, 2023 at 03:27 PM
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
-- Database: `msc_tanbid`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

CREATE TABLE `about_us` (
  `id` int(10) UNSIGNED NOT NULL,
  `about_us` longtext NOT NULL,
  `meta_robots` varchar(191) NOT NULL,
  `meta_title` varchar(191) NOT NULL DEFAULT 'about us',
  `meta_keywords` varchar(191) NOT NULL DEFAULT 'about us',
  `meta_description` varchar(191) NOT NULL DEFAULT 'about us',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `account_keys`
--

CREATE TABLE `account_keys` (
  `id` int(10) UNSIGNED NOT NULL,
  `razor_pay_key` varchar(191) NOT NULL DEFAULT 'razor_pay_key',
  `fcm_key` varchar(191) NOT NULL DEFAULT 'fcm_key',
  `ios_pem_file` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `addoncategories`
--

CREATE TABLE `addoncategories` (
  `id` int(10) UNSIGNED NOT NULL,
  `addoncategories_name` varchar(191) DEFAULT NULL,
  `addoncategories_status` tinyint(1) NOT NULL DEFAULT 0,
  `addoncategories_description` longtext DEFAULT NULL,
  `addonitem_count` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `addonitems`
--

CREATE TABLE `addonitems` (
  `id` int(10) UNSIGNED NOT NULL,
  `addonitem_uid` varchar(191) DEFAULT NULL,
  `addonitem_name` varchar(191) DEFAULT NULL,
  `addonitem_status` tinyint(1) NOT NULL DEFAULT 0,
  `addonitem_description` longtext DEFAULT NULL,
  `addonitem_image` longtext DEFAULT NULL,
  `addonitem_price` double(8,2) DEFAULT NULL,
  `tax_slab_id` varchar(255) DEFAULT NULL,
  `tax_amount` float NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `addonitem_cats`
--

CREATE TABLE `addonitem_cats` (
  `id` int(10) UNSIGNED NOT NULL,
  `addonitem_uid` varchar(191) DEFAULT NULL,
  `addonitem_cat_id` varchar(191) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `address_users`
--

CREATE TABLE `address_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `house` varchar(191) DEFAULT NULL,
  `city` varchar(191) DEFAULT NULL,
  `state` varchar(191) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `type` varchar(191) NOT NULL DEFAULT 'other',
  `uid` longtext NOT NULL,
  `pincode` varchar(191) DEFAULT NULL,
  `other_name` varchar(191) DEFAULT NULL,
  `priority` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `all_coupons`
--

CREATE TABLE `all_coupons` (
  `id` int(10) UNSIGNED NOT NULL,
  `coupon_code` varchar(191) NOT NULL,
  `type` varchar(191) NOT NULL,
  `coupon_use_limit` varchar(255) DEFAULT NULL,
  `coupon_status` tinyint(1) NOT NULL DEFAULT 0,
  `coupon_percentage` varchar(255) DEFAULT NULL,
  `coupon_maxamount` varchar(255) DEFAULT NULL,
  `coupon_minamount` varchar(255) NOT NULL DEFAULT '0',
  `terms` longtext DEFAULT NULL,
  `message` longtext DEFAULT NULL,
  `add_to_list` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `all_orders`
--

CREATE TABLE `all_orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` varchar(255) DEFAULT NULL,
  `uid` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `payment_mode` varchar(255) DEFAULT NULL,
  `payment_ref` varchar(255) DEFAULT NULL,
  `delivery_boy_name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `order_status` varchar(255) DEFAULT NULL,
  `delivery_type` varchar(255) DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL,
  `purchase_type` varchar(191) DEFAULT NULL,
  `delivery_boy_uid` varchar(255) DEFAULT NULL,
  `assigned_type` varchar(255) DEFAULT NULL,
  `delivery_boy_phone` varchar(255) DEFAULT NULL,
  `delivery_date` varchar(255) DEFAULT NULL,
  `delivery_slot` varchar(255) DEFAULT NULL,
  `address_id` varchar(255) DEFAULT NULL,
  `cart_total` varchar(255) DEFAULT NULL,
  `overall_addon_total` varchar(255) DEFAULT NULL,
  `total_amount` varchar(255) DEFAULT NULL,
  `credit` varchar(255) NOT NULL DEFAULT '0',
  `referral` varchar(255) NOT NULL DEFAULT '0',
  `delivery_amount` varchar(255) DEFAULT NULL,
  `coupon_name` varchar(255) DEFAULT NULL,
  `overall_coupon_amount` varchar(255) DEFAULT NULL,
  `overall_saving` varchar(255) DEFAULT NULL,
  `overall_subtotal` varchar(255) DEFAULT NULL,
  `overall_discount_amount` varchar(255) DEFAULT NULL,
  `overall_tax_amount` varchar(255) DEFAULT NULL,
  `order_date` varchar(191) DEFAULT NULL,
  `coins_after_order` tinyint(1) NOT NULL DEFAULT 0,
  `note` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `app_details`
--

CREATE TABLE `app_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `image_limit` varchar(191) NOT NULL DEFAULT '5',
  `currency` varchar(191) NOT NULL DEFAULT 'USD',
  `mail_type` tinyint(4) NOT NULL DEFAULT 1,
  `min_order` varchar(191) NOT NULL DEFAULT '10',
  `delivery` varchar(191) NOT NULL DEFAULT '10',
  `max_address` varchar(191) NOT NULL DEFAULT '5',
  `sms` tinyint(1) NOT NULL DEFAULT 0,
  `freedelivery` varchar(191) NOT NULL DEFAULT '100',
  `pincode_check` tinyint(1) NOT NULL DEFAULT 1,
  `opening_time` time NOT NULL DEFAULT '10:00:00',
  `closing_time` time NOT NULL DEFAULT '07:00:00',
  `restaurantstatus` tinyint(4) NOT NULL DEFAULT 1,
  `update_highlight_msg` varchar(255) DEFAULT NULL,
  `home_highlight_msg` varchar(255) DEFAULT NULL,
  `referral_points` varchar(255) DEFAULT NULL,
  `credit_points` varchar(255) DEFAULT NULL,
  `admin_panel_logo` longtext DEFAULT NULL,
  `online_payment_status` tinyint(4) NOT NULL DEFAULT 1,
  `cod_payment_status` tinyint(4) NOT NULL DEFAULT 1,
  `take_away_status` tinyint(4) NOT NULL DEFAULT 1,
  `deliver_now_status` tinyint(4) DEFAULT 1,
  `deliver_later_status` tinyint(4) DEFAULT 1,
  `delivery_status` varchar(255) NOT NULL DEFAULT '1',
  `radius` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `app_updates`
--

CREATE TABLE `app_updates` (
  `id` int(10) UNSIGNED NOT NULL,
  `recommended_android` int(11) DEFAULT NULL,
  `force_android` int(11) DEFAULT NULL,
  `app_update_status` tinyint(4) NOT NULL DEFAULT 0,
  `recommended_ios` int(11) DEFAULT NULL,
  `force_ios` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `app_users`
--

CREATE TABLE `app_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` varchar(191) NOT NULL,
  `referral_code` varchar(255) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `phone_verify_status` tinyint(1) NOT NULL DEFAULT 0,
  `referred_by` varchar(255) DEFAULT NULL,
  `points_on_order` varchar(255) DEFAULT NULL,
  `first_order_status` tinyint(4) NOT NULL DEFAULT 0,
  `password` varchar(191) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `app_users`
--

INSERT INTO `app_users` (`id`, `uid`, `referral_code`, `phone`, `phone_verify_status`, `referred_by`, `points_on_order`, `first_order_status`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'uid_16710193676399bb67e7d23', 'PIL33505', '+919836899318', 1, NULL, NULL, 0, '$2y$10$qbuUciu6aom0xbThpfDhHu94TnN9Et.jG4G2EIg7VmM57j8ieC.Vy', NULL, '2022-12-14 12:02:48', '2022-12-14 12:02:48'),
(103, 'uid_16791491566415c86416863', 'DS232737', '+919330796783', 1, NULL, NULL, 0, '$2y$10$fQCYmsl/dE9KV84HTTS2d.ZUzp6bnQxI0koFtuSHLRf4jnC9KtjmS', NULL, '2023-03-18 14:19:16', '2023-03-18 14:19:16'),
(101, 'uid_167584464463e35c240df82', 'DA197728', '+918945578247', 1, NULL, NULL, 0, '$2y$10$Oz6Vn3NzMe08/CRx/E9jGOdaxOH/hwaz38jkYQbzR7mQelTS3amai', NULL, '2023-02-08 08:24:04', '2023-02-08 08:24:04'),
(102, 'uid_16791484096415c5796c131', 'DL096518', '+919163372211', 1, NULL, NULL, 0, '$2y$10$eFMTOoATEdrwwqkqxMupeu0Bzh0x69RQy7XxXrtMVaN4xIaWhsNjm', NULL, '2023-03-18 14:06:49', '2023-03-18 14:06:49'),
(5, 'uid_1671170781639c0add96ebc', 'OFF22148', '+919330059399', 1, NULL, NULL, 0, '$2y$10$3iXwgvmnL0.dVtJvtfALW.VQMyvZe70EhtExxPfu4r1Usj3vheBUK', NULL, '2022-12-16 06:06:21', '2022-12-16 06:06:21'),
(104, 'uid_16792281816416fd1564ea9', 'DP035642', '+919830798233', 1, NULL, NULL, 0, '$2y$10$9L/6QSpMfiFKEIFtMCAH..h.6jhh52/mI9T3pIgoIbTc7737D8RgS', NULL, '2023-03-19 12:16:21', '2023-03-19 12:16:21'),
(7, 'uid_1671179945639c2ea9edccd', 'DS021732', '+919748896935', 1, NULL, NULL, 0, '$2y$10$1tVTvN/lGBk866o3.9h3y.zE4Xe16v1d43zkiofxaBWcj9qSvJ6w6', NULL, '2022-12-16 08:39:06', '2022-12-16 08:39:06'),
(8, 'uid_1671181143639c3357c0074', 'DM065383', '+919339239379', 1, NULL, NULL, 0, '$2y$10$DGAKSN43K8sGbcuw7hcn9eoTldMiT0Ifc3O6gLIVY8J0O/Q8FhNH.', NULL, '2022-12-16 08:59:03', '2022-12-16 08:59:03'),
(9, 'uid_1671182197639c3775412e3', 'DS032357', '+917029817939', 1, NULL, NULL, 0, '$2y$10$JdxVMNQAs/q5MIBp69joe.v1i6Ko75SHRaCL6fz2v2L4Ll6Kp9ez2', NULL, '2022-12-16 09:16:37', '2022-12-16 09:16:37'),
(10, 'uid_1671186503639c484782405', 'DP010912', '+918240337109', 1, NULL, NULL, 0, '$2y$10$WxesDfUBeti8uAsk8aIU/Oq273fJG26v2ge7rmZ.cTySGYdIK7T9y', NULL, '2022-12-16 10:28:23', '2022-12-16 10:28:23'),
(11, 'uid_1671187263639c4b3fa837b', 'DC015927', '+917439993962', 1, NULL, NULL, 0, '$2y$10$OW5zlYY7KQC06g4zCQuyy.oEoeAEX5AegBmUXNcDTPRlcfrSAc/BK', NULL, '2022-12-16 10:41:03', '2022-12-16 10:41:03'),
(12, 'uid_1671188280639c4f38d7844', 'DH014678', '+918100528177', 1, NULL, NULL, 0, '$2y$10$SGahRimm6bxThG4t5pETLe3Gwm8QEGasgmF1NO08wUwaUMl54FrvK', NULL, '2022-12-16 10:58:00', '2022-12-16 10:58:00'),
(13, 'uid_1671189646639c548eca9d7', 'DB023417', '+916297100673', 1, NULL, NULL, 0, '$2y$10$9bp3S3iN1.flGZ4cIcEnje8SCCFxGp2zzJAHLzYSVBUpALpc/jkE.', NULL, '2022-12-16 11:20:46', '2022-12-16 11:20:46'),
(14, 'uid_1671190196639c56b4e1c9a', 'DO034144', '+918240202166', 1, NULL, NULL, 0, '$2y$10$8/B3QYWFIgHAne5QsjCYGuRy5RPNYQQVXlLypk.xaPmxorsxuh20G', NULL, '2022-12-16 11:29:56', '2022-12-16 11:29:56'),
(15, 'uid_1671190848639c5940dbcdc', 'DJ094155', '+919073280154', 1, NULL, NULL, 0, '$2y$10$x.W74c4g9sajQ4j8vN38R.UXzXobje2s/DUg1Urd.VJrluX/yvUgG', NULL, '2022-12-16 11:40:48', '2022-12-16 11:40:48'),
(16, 'uid_1671191960639c5d987a6b0', 'DM010090', '+917679837856', 1, NULL, NULL, 0, '$2y$10$aeOi7z//w4zmGTcXUxl/vOLvw5XN4LsYrG1JWNIGE6T2qUoNx36ry', NULL, '2022-12-16 11:59:20', '2022-12-16 11:59:20'),
(17, 'uid_1671192571639c5ffb48516', 'DS015580', '+919674771123', 1, NULL, NULL, 0, '$2y$10$qFnuG/Yn/1rxc4uHu5eGGOFxNopevzWdCbb9BzOtC.jnGsACdJIpS', NULL, '2022-12-16 12:09:31', '2022-12-16 12:09:31'),
(18, 'uid_1671193354639c630a25a3d', 'DD088319', '+917980758890', 1, NULL, NULL, 0, '$2y$10$wx/aZ0Bx9tUDyq5l3aBlzuvLkz89jwvwUK2odvDBTL.lLBBTXM//a', NULL, '2022-12-16 12:22:34', '2022-12-16 12:22:34'),
(19, 'uid_1671194050639c65c272d7c', 'DD030398', '+919339257761', 1, NULL, NULL, 0, '$2y$10$JzpbW0CenFd1AtrgkZdjcerPPnhqugTXlMjrLzpPYxtXTY4KHd2wO', NULL, '2022-12-16 12:34:10', '2022-12-16 12:34:10'),
(20, 'uid_1671194827639c68cb47abe', 'DD022649', '+919339228396', 1, NULL, NULL, 0, '$2y$10$B7KHS/3f8cpmRixx.TPYLud9XTZdC4o78FseQhPZtL89l2ol5KLcS', NULL, '2022-12-16 12:47:07', '2022-12-16 12:47:07'),
(21, 'uid_1671195392639c6b00a10d0', 'DK030823', '+919830828439', 1, NULL, NULL, 0, '$2y$10$VtY.Q2s7Vpbg74E5ge0OrOn2ppdSuP5touPVHfVwH/K3kyRL57n9G', NULL, '2022-12-16 12:56:32', '2022-12-16 12:56:32'),
(22, 'uid_1671196049639c6d91b5efa', 'DV017916', '+917074436608', 1, NULL, NULL, 0, '$2y$10$p1IDAdfhbTgsv9RO8BZSR.JoPuab1rZaTIIL6Wt/wSVIuHtoIoUdy', NULL, '2022-12-16 13:07:29', '2022-12-16 13:07:29'),
(23, 'uid_1671196995639c7143bdec7', 'DT033103', '+919732880609', 1, NULL, NULL, 0, '$2y$10$vOWb2d/psPZI/PQge8WtHeGMyxDxx9Dz8VXQXnAOuFmrqpp3.54.i', NULL, '2022-12-16 13:23:15', '2022-12-16 13:23:15'),
(24, 'uid_1671197868639c74ac176f3', 'DF032998', '+919163072391', 1, NULL, NULL, 0, '$2y$10$7uJnjeR3jYRfCKxw7ZFoRet8hP1sDIfXP36VP3iMzxOz8mMymiJZS', NULL, '2022-12-16 13:37:48', '2022-12-16 13:37:48'),
(25, 'uid_1671198680639c77d8d009e', 'DM021874', '+919674763099', 1, NULL, NULL, 0, '$2y$10$RoF3fCU13EhvGPnqW37jE.t0FrjHLR5tjddF6seYWIYoozb8xLfWK', NULL, '2022-12-16 13:51:20', '2022-12-16 13:51:20'),
(26, 'uid_1671199128639c79989f951', 'DT028987', '+919163005588', 1, NULL, NULL, 0, '$2y$10$TQsFqwZdGBUSgc4gEcerUeDLAiLTiI0Y2GzYFYReZWpRC9YDDT02i', NULL, '2022-12-16 13:58:48', '2022-12-16 13:58:48'),
(27, 'uid_1671253886639d4f7eefd62', 'DS032559', '+917001228044', 1, NULL, NULL, 0, '$2y$10$ZhhXUJCOOG43AtxVBdbqw.6cgb2/3Hs.KalCATD8CjELfMqnzYC4S', NULL, '2022-12-17 05:11:27', '2022-12-17 05:11:27'),
(28, 'uid_1671254167639d50976b62d', 'DB022411', '+919830366296', 1, NULL, NULL, 0, '$2y$10$QTHQh0FncwdVeNS7.FSTPupKqNbeXHkWY3b0sH6iyBnJnP/vXkVXu', NULL, '2022-12-17 05:16:07', '2022-12-17 05:16:07'),
(29, 'uid_1671254774639d52f60a6d2', 'DF045485', '+917479253623', 1, NULL, NULL, 0, '$2y$10$e1TaQxBQXsAWgCAz2FdBIeJ7LIGlQFvjr.T24bmE3uS4J55SNPqZW', NULL, '2022-12-17 05:26:14', '2022-12-17 05:26:14'),
(30, 'uid_1671255539639d55f38dbfc', 'DK019971', '+919239074345', 1, NULL, NULL, 0, '$2y$10$iQU0b7e5siC3LaiiK/SuTOEl2hCTj6b.4HDfFDvy68wjy5twpQ4x.', NULL, '2022-12-17 05:38:59', '2022-12-17 05:38:59'),
(31, 'uid_1671255935639d577f79831', 'DS130032', '+918420095261', 1, NULL, NULL, 0, '$2y$10$8YK9rDe..unFCQXyMaodjeuNzlBlincLXKK0Xhu22pIkes9XbvBZO', NULL, '2022-12-17 05:45:35', '2022-12-17 05:45:35'),
(32, 'uid_1671256335639d590faaf9f', 'DM014668', '+919831021183', 1, NULL, NULL, 0, '$2y$10$yb144zTOm.CbmlGtz8yyWOyYzS9SdlPb7BVbbWP1hvOdgkB8ZxShu', NULL, '2022-12-17 05:52:15', '2022-12-17 05:52:15'),
(33, 'uid_1671256627639d5a331f7aa', 'DT017138', '+919674852680', 1, NULL, NULL, 0, '$2y$10$h1Pi.68hZKBZ9g3bzsMDBuKf86.C5Mt2vcQvvJ2fmnFLNNSZ0d3NK', NULL, '2022-12-17 05:57:07', '2022-12-17 05:57:07'),
(34, 'uid_1671257467639d5d7b85335', 'DT034518', '+918961152192', 1, NULL, NULL, 0, '$2y$10$5AFodz6rUBGsk3NDZDyKiu3UOtNuq3HfPu6cVyOpDmKNtw//AjpeO', NULL, '2022-12-17 06:11:07', '2022-12-17 06:11:07'),
(35, 'uid_1671258149639d6025cc099', 'DA029806', '+919674831480', 1, NULL, NULL, 0, '$2y$10$rkSfCDfyopMXgCVabpnklOSJrm/ETXN2bdPMsK6.qg3G24EPJQdHu', NULL, '2022-12-17 06:22:29', '2022-12-17 06:22:29'),
(36, 'uid_1671258665639d62294dd64', 'DR016588', '+918101047287', 1, NULL, NULL, 0, '$2y$10$WisG1VfqoBO8ReDrC0U/XuRyAg167RV.20GicH4FWMQg9iU37xANe', NULL, '2022-12-17 06:31:05', '2022-12-17 06:31:05'),
(37, 'uid_1671259246639d646e3a7a5', 'DS117551', '+918777372691', 1, NULL, NULL, 0, '$2y$10$8UFkbviziOO9Pveyu/JvU.t/YpgT/w/S1a/sewWmCq1VVr5MqFfc6', NULL, '2022-12-17 06:40:46', '2022-12-17 06:40:46'),
(38, 'uid_1671259754639d666a54a41', 'DA022118', '+919681441145', 1, NULL, NULL, 0, '$2y$10$n5gsPXWubMqIV1Qpk7W7PuKkPIL3Ni98FEQ8QQBm3YADH2Bn3xf.m', NULL, '2022-12-17 06:49:14', '2022-12-17 06:49:14'),
(39, 'uid_1671260130639d67e2f311d', 'DP079373', '+918240631509', 1, NULL, NULL, 0, '$2y$10$oF7USuplyhw.gKmRm6zG7u5Q6EJqG.WXIPQzg2soKgS4N2TKD.YnS', NULL, '2022-12-17 06:55:31', '2022-12-17 06:55:31'),
(40, 'uid_1671260729639d6a39659ed', 'DS135548', '+919830266529', 1, NULL, NULL, 0, '$2y$10$bWHWDGhQlzj0zsgBieFkTezLiqPFdZl6kwRin2W1obXUjpYPNDIwu', NULL, '2022-12-17 07:05:29', '2022-12-17 07:05:29'),
(41, 'uid_1671261984639d6f20e81e0', 'DS020778', '+919331041646', 1, NULL, NULL, 0, '$2y$10$pBM0osm1Jog6KMz9bmZq.eH5wcGF2pq2Cb5y0Six6NNAUdLxpi5em', NULL, '2022-12-17 07:26:25', '2022-12-17 07:26:25'),
(42, 'uid_1671262523639d713ba9900', 'DF031288', '+918972390806', 1, NULL, NULL, 0, '$2y$10$Du25HB486i9K3XXS8oQl4.IlIA8IiYVgLn1FGbWOCYGHB5B9lLmzS', NULL, '2022-12-17 07:35:23', '2022-12-17 07:35:23'),
(43, 'uid_1671262962639d72f2a659b', 'DN017882', '+918777381079', 1, NULL, NULL, 0, '$2y$10$FxpRxQu.SGs8WMNCiu549eXAAzro3pQbxLnoHm4m6/4xft5QQpSE2', NULL, '2022-12-17 07:42:42', '2022-12-17 07:42:42'),
(44, 'uid_1671263618639d7582d204c', 'DJ038015', '+916294815497', 1, NULL, NULL, 0, '$2y$10$ySBuTaGkQ1zOOHB4Zxh6.u3lLzMlQsWIFhlfVAzNMJKO1rmCQ83Rm', NULL, '2022-12-17 07:53:38', '2022-12-17 07:53:38'),
(45, 'uid_1671264771639d7a03a757a', 'DN033891', '+917998093403', 1, NULL, NULL, 0, '$2y$10$itZSzDaGH8P5k66XfWiD/er9163y/7nH4QsXtl13/QYrS7yqcf3li', NULL, '2022-12-17 08:12:51', '2022-12-17 08:12:51'),
(46, 'uid_1671265401639d7c795b584', 'DR075078', '+919734202852', 1, NULL, NULL, 0, '$2y$10$Kco4wLO/7M2IXmLuy6AqfuI1NwzvU8ksoM5o.1YBk8ADUsCfGF0eG', NULL, '2022-12-17 08:23:21', '2022-12-17 08:23:21'),
(47, 'uid_1671265760639d7de0a53ea', 'DR019470', '+919239371685', 1, NULL, NULL, 0, '$2y$10$rZHmwpqWFgoWxf1afa37Cu08XHTRSOucB0HbZ5PKyCvAfDGAu3G/2', NULL, '2022-12-17 08:29:20', '2022-12-17 08:29:20'),
(48, 'uid_1671266079639d7f1f6f2b4', 'DM010061', '+918637877696', 1, NULL, NULL, 0, '$2y$10$ts6Dul9beIdS4QyrvA90JOf4Bc67ybKiQUdKxynKhNP38fPGKT8d6', NULL, '2022-12-17 08:34:39', '2022-12-17 08:34:39'),
(49, 'uid_1671266538639d80eab4f7a', 'DM133291', '+918017577696', 1, NULL, NULL, 0, '$2y$10$iy4ddj3QUhgHxzXKiSgKCuP5UNfTj6nWnA.7vEmP8Da3zk6B0/vf6', NULL, '2022-12-17 08:42:18', '2022-12-17 08:42:18'),
(123, 'uid_16854514916475f2e33109b', 'SWA26199', '+917890006627', 1, NULL, NULL, 0, '$2y$10$PdoFyoSjjItJEfmJcbhXDukT0DlnaizFvwpFo/dsn2o1XDCBchYNG', NULL, '2023-05-30 12:58:11', '2023-05-30 12:58:11'),
(51, 'uid_1671267532639d84ccdd916', 'DK011213', '+918820695454', 1, NULL, NULL, 0, '$2y$10$SyDsWpevxzWhk4i5wZ6Va.57dYfZUebez/IMGlf8IiR/uGmhRXeey', NULL, '2022-12-17 08:58:52', '2022-12-17 08:58:52'),
(52, 'uid_1671267958639d8676a0da6', 'DM143882', '+919635080743', 1, NULL, NULL, 0, '$2y$10$.ka.M6ETKk/.bKZdFzYpAe4/i/6kPEMlyzkxGG40tjmvdEvaDTpLK', NULL, '2022-12-17 09:05:58', '2022-12-17 09:05:58'),
(53, 'uid_1671268461639d886deaf3d', 'DF011944', '+917003962499', 1, NULL, NULL, 0, '$2y$10$5v5ilold5V.dt1qo0EdzgO/VDTeFVi2VdFJzhnxyXs7QJEE.OYHmG', NULL, '2022-12-17 09:14:22', '2022-12-17 09:14:22'),
(54, 'uid_1671268971639d8a6bc7eee', 'DF026296', '+919831082199', 1, NULL, NULL, 0, '$2y$10$2VZmb8swCQR5Eh34JqMfsuJToEk7b.Zeh84Ev0KErmR2KAOoN0mNS', NULL, '2022-12-17 09:22:51', '2022-12-17 09:22:51'),
(55, 'uid_1671269450639d8c4a3a239', 'DB025970', '+919831050819', 1, NULL, NULL, 0, '$2y$10$RXsWBQxTOb73AoGQH2h0j.zlYlVnO3x4UDkOqlHZjVVVVt1ob4R0a', NULL, '2022-12-17 09:30:50', '2022-12-17 09:30:50'),
(56, 'uid_1671270133639d8ef596fba', 'DG012363', '+919836076884', 1, NULL, NULL, 0, '$2y$10$s761PirGcqHzERxt6tGbW.X7HKwSmOJePUzpBxtaYAnUg0Xz8S7y6', NULL, '2022-12-17 09:42:13', '2022-12-17 09:42:13'),
(57, 'uid_1671270971639d923b4487b', 'DS033680', '+918961451384', 1, NULL, NULL, 0, '$2y$10$IxRtNjVgORTXtLiqcRNLbuC6CuGLTtkLYEIzZcY4aPfCv/MvKIYBS', NULL, '2022-12-17 09:56:11', '2022-12-17 09:56:11'),
(58, 'uid_1671277664639dac60a302e', 'RAN47299', '+918100569077', 1, NULL, NULL, 0, '$2y$10$VCzXiDOQovwVNUsRh6M39.qgG5XbndSS1Px.n/u3Ksm.70YZlcaJu', NULL, '2022-12-17 11:47:44', '2022-12-17 11:47:44'),
(59, 'uid_1671277914639dad5a24800', 'DB029359', '+919830668619', 1, NULL, NULL, 0, '$2y$10$cGC1ZYeeaZp7GLVCI/LOrO64kPnh/NUK01T0qMdwabc.Tm9NPdKhO', NULL, '2022-12-17 11:51:54', '2022-12-17 11:51:54'),
(60, 'uid_1671278527639dafbf99bf9', 'RAN94476', '+917980212476', 1, NULL, NULL, 0, '$2y$10$kzetGlQOm7h1UYomefH4y.vxn5yfIyunrtycPVgJaUQz4478qyp.G', NULL, '2022-12-17 12:02:07', '2022-12-17 12:02:07'),
(61, 'uid_1671279379639db3133215a', 'DS126832', '+917407048947', 1, NULL, NULL, 0, '$2y$10$zJSCNmylUnLb8/.xH/1VMup5TnaTF2RV/OIulVILFE.6CHYnVj6N2', NULL, '2022-12-17 12:16:19', '2022-12-17 12:16:19'),
(62, 'uid_1671280322639db6c283df4', 'DK050451', '+918617832750', 1, NULL, NULL, 0, '$2y$10$DAwO/mhfX72KATpygexbbuSrTkR3N586703jlSKXlU5KSLm.HO6VK', NULL, '2022-12-17 12:32:02', '2022-12-17 12:32:02'),
(63, 'uid_1671280697639db8399b4da', 'DP028229', '+919830046861', 1, NULL, NULL, 0, '$2y$10$qBTGYKnmrbLF8XWVdY3Mn.sWU99XstAVEDy7XW0cTRvxR/cFaiwGK', NULL, '2022-12-17 12:38:17', '2022-12-17 12:38:17'),
(64, 'uid_1671281092639db9c444ba0', 'DD022778', '+919831676437', 1, NULL, NULL, 0, '$2y$10$Km/HItEVBtzr7hCAdl0sPO8NlYQWx71P2XBJv3UKV4/vDJ2laJZSq', NULL, '2022-12-17 12:44:52', '2022-12-17 12:44:52'),
(65, 'uid_1671281497639dbb59748fb', 'DM112114', '+917439365296', 1, NULL, NULL, 0, '$2y$10$HpW2RimGmFv4xyXVHNLiQeJQb2WQwftdeEL6RWtQn5VsTGadQfofa', NULL, '2022-12-17 12:51:37', '2022-12-17 12:51:37'),
(66, 'uid_1671281861639dbcc5355f3', 'DK019892', '+918296655199', 1, NULL, NULL, 0, '$2y$10$mQdS56YJAzBzqeAA2oAevuxPtDJtRAL2klpDuhBm7S.yj5VMmjYdy', NULL, '2022-12-17 12:57:41', '2022-12-17 12:57:41'),
(67, 'uid_1671282482639dbf32446c2', 'DP031633', '+918370999205', 1, NULL, NULL, 0, '$2y$10$Ff4eGWDWF20XYymXUVOabu07qw3jhuBAZL3F2EeJmv2HQgM5gZNAy', NULL, '2022-12-17 13:08:02', '2022-12-17 13:08:02'),
(68, 'uid_1671282986639dc12a5bf15', 'DJ057300', '+919635925150', 1, NULL, NULL, 0, '$2y$10$PADphS8Djr5r8zfii87qPOQqaUBTQabz7Drb8dj5SnGn41X7oPw0m', NULL, '2022-12-17 13:16:26', '2022-12-17 13:16:26'),
(69, 'uid_1671283848639dc488c6861', 'DB015938', '+918910992109', 1, NULL, NULL, 0, '$2y$10$Mroy3qYiLVlQqkGVqL0KcOlNNnZc3/N2KD5/u4SqYbFa1lCQ/Atfe', NULL, '2022-12-17 13:30:48', '2022-12-17 13:30:48'),
(70, 'uid_1671284274639dc632a9e38', 'DA129050', '+919851114275', 1, NULL, NULL, 0, '$2y$10$FGs3N5J2mRHJ2bI6CdZB/uki/69q2iCYdKecYGokvVc.1Lz3k.E.2', NULL, '2022-12-17 13:37:54', '2022-12-17 13:37:54'),
(71, 'uid_1671285239639dc9f78e6f0', 'DD028246', '+919874371051', 1, NULL, NULL, 0, '$2y$10$cFkTVatEmqBmrxdD0wXyCuGBdExy5xz684bA/a2a7kZQwHc8lzC1m', NULL, '2022-12-17 13:53:59', '2022-12-17 13:53:59'),
(72, 'uid_1671285654639dcb96a17ab', 'DS238973', '+917450943692', 1, NULL, NULL, 0, '$2y$10$9G8W4TyWkCp9Q.XxUOS9nOpmeCHd0iWIEJOjpDcubLeg8NwFUS.fG', NULL, '2022-12-17 14:00:54', '2022-12-17 14:00:54'),
(73, 'uid_1671349043639ec3331f6e7', 'DO026888', '+917439138881', 1, NULL, NULL, 0, '$2y$10$MmJntfzd0rFk3v2L4eict.JXYnvD3h64qe16O8XFv2yIrhg2DgBia', NULL, '2022-12-18 07:37:23', '2022-12-18 07:37:23'),
(74, 'uid_1671349981639ec6ddb4205', 'DR077390', '+916292224010', 1, NULL, NULL, 0, '$2y$10$1btjp/camGQRMsl.yZ3tvehjqtPwhzbQFXEWzHT/LwmbPo3PcaAqS', NULL, '2022-12-18 07:53:01', '2022-12-18 07:53:01'),
(75, 'uid_1671350629639ec9651f3a4', 'DG063032', '+919903564718', 1, NULL, NULL, 0, '$2y$10$.dpSAQMvsXsGP2MFsQKIMeSBi6DnaRGOFC6bYYINU7t94yh421b7e', NULL, '2022-12-18 08:03:49', '2022-12-18 08:03:49'),
(76, 'uid_1671351365639ecc450cca2', 'DM025666', '+919775371739', 1, NULL, NULL, 0, '$2y$10$542V/iiu6iwOXU2YdW7IzOhPaLZDLKdaKmuVHYZA1CRv/QvB6YZC6', NULL, '2022-12-18 08:16:05', '2022-12-18 08:16:05'),
(77, 'uid_1671351808639ece0070b3d', 'DC020137', '+917980018003', 1, NULL, NULL, 0, '$2y$10$Tx4Id2AwIvXYMgLeux7q.ORh97BkHz83FvD60e2gqfP.d84yo51Ou', NULL, '2022-12-18 08:23:28', '2022-12-18 08:23:28'),
(78, 'uid_1671352426639ed06a828b9', 'DU011405', '+918420649965', 1, NULL, NULL, 0, '$2y$10$NCYy9UFidtFOK4QBQQR2zOJh/RUypRf6290sjwIBe1Yb3x/uEXP/e', NULL, '2022-12-18 08:33:46', '2022-12-18 08:33:46'),
(79, 'uid_1671352827639ed1fb2206a', 'DS124269', '+919830026838', 1, NULL, NULL, 0, '$2y$10$5Sx5Bv3cRz0ZCM5026xyEO.NY5StALXpMQiYbxeW7hKixbstF1JFm', NULL, '2022-12-18 08:40:27', '2022-12-18 08:40:27'),
(80, 'uid_1671353196639ed36c08277', 'DM122145', '+919339822569', 1, NULL, NULL, 0, '$2y$10$VadKfdpkuJboVTBRnDFkKeUA7JkMJpqy/fPG/6QHZX/SiGzO.b5j6', NULL, '2022-12-18 08:46:36', '2022-12-18 08:46:36'),
(81, 'uid_1671353419639ed44bd4a45', 'DM168415', '+919804868584', 1, NULL, NULL, 0, '$2y$10$TUkutA.P.rqpfx1AVxTQW.g4C.O/oCvbB9Mt9ypRnqhst6yulHsT2', NULL, '2022-12-18 08:50:19', '2022-12-18 08:50:19'),
(82, 'uid_1671353825639ed5e1bc5f7', 'DF035535', '+919330027951', 1, NULL, NULL, 0, '$2y$10$p7m23qrx4dAqcOgwXcm6JO2DpWYSDK.PRdFjh049qyy83cWPYZVem', NULL, '2022-12-18 08:57:05', '2022-12-18 08:57:05'),
(83, 'uid_1671354177639ed74126b81', 'DO017758', '+917890076517', 1, NULL, NULL, 0, '$2y$10$kxniJbYgKuXUTaFFD5.zb.qKoT6orHEcnbtteScgEWTuNBZFBb8sG', NULL, '2022-12-18 09:02:57', '2022-12-18 09:02:57'),
(84, 'uid_1671354808639ed9b89b2f1', 'DA134705', '+919038647704', 1, NULL, NULL, 0, '$2y$10$3qqeev1WtbrA/8qRFtwlP.ZbzuwehGTw3t0VOgHu.LfZnrz/6g7UO', NULL, '2022-12-18 09:13:28', '2022-12-18 09:13:28'),
(85, 'uid_1671355031639eda976c14c', 'DD031152', '+919903069918', 1, NULL, NULL, 0, '$2y$10$.Tg4oLffYrufI06ilnwyIug1evDFZ0ApjaX7s5WfdMErxRRQunCRO', NULL, '2022-12-18 09:17:11', '2022-12-18 09:17:11'),
(86, 'uid_1671360708639ef0c40fa63', 'DA131592', '+917044229196', 1, NULL, NULL, 0, '$2y$10$DCI9oZGvN.Kj94iOiGkvru6.VgvUkemZklSS8qNGutoOumuZGfKtK', NULL, '2022-12-18 10:51:48', '2022-12-18 10:51:48'),
(87, 'uid_1671361476639ef3c408bbf', 'DC011506', '+919564058056', 1, NULL, NULL, 0, '$2y$10$3C4T1vipElO7JFbTA.kAqusoJAIsjAWeZNCyJGeKaqKr3P.alaa6K', NULL, '2022-12-18 11:04:36', '2022-12-18 11:04:36'),
(88, 'uid_1671361650639ef4720fab3', 'DA027548', '+919932875373', 1, NULL, NULL, 0, '$2y$10$I29d1VpIib/FQ4xMx1tsheO8ZeBQ9gOs/wuBEQKkf8vyDkV7frjkO', NULL, '2022-12-18 11:07:30', '2022-12-18 11:07:30'),
(89, 'uid_1671362042639ef5faec8cb', 'DS290213', '+919830196130', 1, NULL, NULL, 0, '$2y$10$2pYhYpHP/3Fct9G/qPgrLetYywgc6UCdojicyd7uuBCJSwh/r0EoC', NULL, '2022-12-18 11:14:03', '2022-12-18 11:14:03'),
(90, 'uid_1671362562639ef8028d632', 'DS110120', '+918276821904', 1, NULL, NULL, 0, '$2y$10$GOZ4TVUEzDkjdztBHOi5BO7v1dmHHLF2EJ9sOTmki58rP.U4P1ydu', NULL, '2022-12-18 11:22:42', '2022-12-18 11:22:42'),
(91, 'uid_1671363359639efb1f0e7eb', 'DS212322', '+919831703552', 1, NULL, NULL, 0, '$2y$10$el7u6oz2L5tkIMRTQrIX2.Pw141GuRNBuBdHdPi095ZoU5KyT5D5q', NULL, '2022-12-18 11:35:59', '2022-12-18 11:35:59'),
(94, 'uid_1671376658639f2f1231dab', 'BIM33246', '+919836178325', 1, NULL, NULL, 0, '$2y$10$36SewFDGb2ffPU4lE/3jVOSS6S2DhewZltFEXSkKZkSixvnEeBibq', NULL, '2022-12-18 15:17:38', '2022-12-18 15:17:38'),
(93, 'uid_1671367965639f0d1d0a199', 'SMR13503', '+919875604327', 1, NULL, NULL, 0, '$2y$10$k7H7VDf8N9LT.g4c7EPV3u89IiQIFMYeLIvGCZDG9G6Q4WV0tpb2K', NULL, '2022-12-18 12:52:45', '2022-12-18 12:52:45'),
(95, 'uid_167143344463a00ce40090a', 'RAY50134', '+919830849908', 1, NULL, NULL, 0, '$2y$10$RosIRDLUKY5jGccfLgncBO4G4mqDlWpBrAtnCIfBLpvzvFXFP79hC', NULL, '2022-12-19 07:04:04', '2022-12-19 07:04:04'),
(96, 'uid_167145985763a07411f292f', 'DT023315', '+919123678465', 1, NULL, NULL, 0, '$2y$10$rn2.fuj8XlaHo2MtUeyF1upxRotGILNlFjsLtVfxF.v/fiU7SVN3O', NULL, '2022-12-19 14:24:18', '2022-12-19 14:24:18'),
(97, 'uid_167146108263a078dabbedd', 'SUB34143', '+917003034533', 1, NULL, NULL, 0, '$2y$10$kPMh4x1LV8E3vdDVVlempe0Oshzhgp7g0jdDHvgVzUJ4y.CCGxyya', NULL, '2022-12-19 14:44:42', '2022-12-19 14:44:42'),
(98, 'uid_167170945263a4430cae6b4', 'DM133008', '+917439764641', 1, NULL, NULL, 0, '$2y$10$1zfZJUrxLn8Kn98cOmz6XOCxtwV8QhnXaUiuhHZ80WvLOpO80vTcq', NULL, '2022-12-22 11:44:12', '2022-12-22 11:44:12'),
(99, 'uid_167206713763a9b841e1a1b', 'DA135952', '+919836724046', 1, NULL, NULL, 0, '$2y$10$2YPGsTLoFHaiFHxWavaVHu.y.FhJ.WuX3x56Ws1.MLZJhf6Xi6hoK', NULL, '2022-12-26 15:05:37', '2022-12-26 15:05:37'),
(100, 'uid_167327038863bc1474d57aa', 'BON20952', '+918282864451', 1, NULL, NULL, 0, '$2y$10$yi7LOCKN53FOLN4SYp5Jz.osEqbqxv3cNGh/YNU.c1e4JrCy7YE4K', NULL, '2023-01-09 13:19:48', '2023-01-09 13:19:48'),
(105, 'uid_167923612864171c20ebec9', 'DS220463', '+919433603762', 1, NULL, NULL, 0, '$2y$10$L5G0x6RMHpaUOvbPi0iVC.8OGlsSw58L0LbAjWkNyFjPmRkjESggi', NULL, '2023-03-19 14:28:49', '2023-03-19 14:28:49'),
(106, 'uid_16809540116431529b8210d', 'TNB11281', '+918981562299', 1, NULL, NULL, 0, '$2y$10$a5LRg8KAPmno61Dpm463UusN6n5zas0XjgO2w7wBJfphRd8/h8WKu', NULL, '2023-04-08 11:40:11', '2023-04-08 11:40:11'),
(107, 'uid_1681729366643d275696005', 'DS223543', '+918637077428', 1, NULL, NULL, 0, '$2y$10$q00W7gauOdMRk/UWX8V.h.pIUbe8/FbIVOo8d6zFgiAaN7nYd5t9S', NULL, '2023-04-17 11:02:46', '2023-04-17 11:02:46'),
(108, 'uid_1681729711643d28afbfd4a', 'DM133284', '+919830404568', 1, NULL, NULL, 0, '$2y$10$Dd30ZbFN39x37rOADaIBz.5WG.exzFvdK9H/eHeSJz4l1WLOcsINK', NULL, '2023-04-17 11:08:31', '2023-04-17 11:08:31'),
(109, 'uid_1681730524643d2bdc7e599', 'DR012378', '+919875437726', 1, NULL, NULL, 0, '$2y$10$m1Y6xJBW/RvrbEe82Tcp4O2j0dNczNJ43IMeJESvro3PfoB7RSS82', NULL, '2023-04-17 11:22:04', '2023-04-17 11:22:04'),
(110, 'uid_16824276476447ceffe6537', 'DC014308', '+917044705985', 1, NULL, NULL, 0, '$2y$10$.DjHF8rlj9K.nfJdSQ3VHecxBLVHJVBgPBS1DIVK3fyF3LVNwCR0.', NULL, '2023-04-25 13:00:48', '2023-04-25 13:00:48'),
(111, 'uid_1683640274645a4fd209834', 'DH014386', '+919064429200', 1, NULL, NULL, 0, '$2y$10$qODFajo6DbBxSmfEptX4L.EkCrBtBRE8WHyXbN9xUYvTKfBiZOkZy', NULL, '2023-05-09 13:51:14', '2023-05-09 13:51:14'),
(112, 'uid_1683731600645bb490d6cb4', 'DA132994', '+919681039082', 1, NULL, NULL, 0, '$2y$10$Y.1H.Is.gM4Og4Op7ANXNOVvACi6XiXgCI.lJJLzki93xC0HJbCg6', NULL, '2023-05-10 15:13:20', '2023-05-10 15:13:20'),
(113, 'uid_1684764766646b785e36c0b', 'DC025398', '+918240381306', 1, NULL, NULL, 0, '$2y$10$RFucu8WcFccy3pckKAR1AOzGrHGpf8dfLKPVSS3IwN7hyz3LzYPBi', NULL, '2023-05-22 14:12:46', '2023-05-22 14:12:46'),
(114, 'uid_1684765796646b7c646e9f1', 'DK065578', '+919007165795', 1, NULL, NULL, 0, '$2y$10$WEGdW2RllkS6J2eD9vx24.854QowDjzgAmZDt.8t.44vJREBnHVt.', NULL, '2023-05-22 14:29:56', '2023-05-22 14:29:56'),
(115, 'uid_1684936127646e15bf14048', 'DP124168', '+918436239446', 1, NULL, NULL, 0, '$2y$10$51EptJP2dL2HOCHvwO4nv.miUqiyEeXG9Ztln5ifOnLNFR.ltb1n.', NULL, '2023-05-24 13:48:47', '2023-05-24 13:48:47'),
(116, 'uid_168536472164749ff1cfc52', 'DL019462', '+919143110330', 1, NULL, NULL, 0, '$2y$10$tpiIy4484Q25bMVY2DOiu.cBjKjv5gouHTtYAwRco.AxAUCWb7I9W', NULL, '2023-05-29 12:52:01', '2023-05-29 12:52:01'),
(117, 'uid_16853668626474a84e34072', 'DS257678', '+916290892590', 1, NULL, NULL, 0, '$2y$10$YDutv1rB4/wdbApk88dIUeMFbSrVQ7I09xFMtA6xO7f3wtohixKUG', NULL, '2023-05-29 13:27:42', '2023-05-29 13:27:42'),
(118, 'uid_16853675746474ab1607aca', 'DM111117', '+917044527592', 1, NULL, NULL, 0, '$2y$10$ckdCT6EdmmEXrlgn9GelIeNhgqffyzuPnQvp0/NsTtJSSaa7jYlqy', NULL, '2023-05-29 13:39:34', '2023-05-29 13:39:34'),
(124, 'uid_16865487156486b0eb10f13', 'DL070603', '+918777431185', 1, NULL, NULL, 0, '$2y$10$9y1N1.8s3JPzmiCFAF5WA.STEPVZCwDEp2TVSCYn4bBTI6ODdoofa', NULL, '2023-06-12 05:45:15', '2023-06-12 05:45:15'),
(120, 'uid_16854464756475df4b1dd33', 'DS235504', '+917890006629', 1, NULL, NULL, 0, '$2y$10$NOfDzowo7O7gZTw.OIkaI.gGGO0O61v7L/z3gEeadiIcgxBn7l8k.', NULL, '2023-05-30 11:34:35', '2023-05-30 11:34:35'),
(121, 'uid_16854471946475e21ad3aa6', 'DD012483', '+918240870829', 1, NULL, NULL, 0, '$2y$10$lRur2ZBXlaVnciTUxuTYme70p1703SeQg4pBnTNY7YAvugEYYefsK', NULL, '2023-05-30 11:46:34', '2023-05-30 11:46:34'),
(122, 'uid_16854481216475e5b973480', 'DJ010157', '+919830721342', 1, NULL, NULL, 0, '$2y$10$CrAaTo5wOHc/Nn2ID1usRu6/H8qfGtNL8geQ0/fCLygDripUxsE5m', NULL, '2023-05-30 12:02:01', '2023-05-30 12:02:01'),
(125, 'uid_16873548266492fdca3fb3c', 'DT023962', '+919748229713', 1, NULL, NULL, 0, '$2y$10$RwV.j3UALai2PnVJ3caJ1.8GD8pMSSb.oZx13M8eE2jZrB2raTZ7G', NULL, '2023-06-21 13:40:26', '2023-06-21 13:40:26'),
(126, 'uid_168735946664930fea620c2', 'DR150585', '+917439300601', 1, NULL, NULL, 0, '$2y$10$BIGo4/y3bVfjUSYqk.x5Oenj6rMO1YFZwooG5uBkD2rUI1MlzQtb6', NULL, '2023-06-21 14:57:46', '2023-06-21 14:57:46'),
(127, 'uid_16873597756493111fda496', 'DJ030474', '+919830686429', 1, NULL, NULL, 0, '$2y$10$YYIdF.bg3db5BvBRXKAgduVVNjgV4St/ZHFvquDJiFghgtjwOCJIO', NULL, '2023-06-21 15:02:55', '2023-06-21 15:02:55'),
(128, 'uid_1687956523649c2c2b158b7', 'DP193300', '+917003983509', 1, NULL, NULL, 0, '$2y$10$lcBNukEGAwhV0ZUwsiQgtet1up4kGOS7UYiUM4nPhfLTt7LVyTEey', NULL, '2023-06-28 12:48:43', '2023-06-28 12:48:43'),
(129, 'uid_1687957294649c2f2e8399c', 'DS226971', '+918617280290', 1, NULL, NULL, 0, '$2y$10$zvxORHDyOvTEXR.5.pbP3u2Uq04lagPMG96VL3k8Z6RtHVuIIWZTq', NULL, '2023-06-28 13:01:34', '2023-06-28 13:01:34'),
(130, 'uid_168821747864a027862cfb1', 'DF027602', '+919830647799', 1, NULL, NULL, 0, '$2y$10$b5dW/8yChlNE1CO5AP0UKOLwpOZUMRfz1ynA59sI0ho65z61gPSvy', NULL, '2023-07-01 13:17:58', '2023-07-01 13:17:58'),
(131, 'uid_168821858764a02bdb21c7c', 'DF025844', '+919330513288', 1, NULL, NULL, 0, '$2y$10$zuP08Q.n5Fr6SdsnusAwBeg.0nWyVSggGHgJAxG2DeV3osoRfjMLa', NULL, '2023-07-01 13:36:27', '2023-07-01 13:36:27'),
(132, 'admin@gmail.com', NULL, NULL, 0, NULL, NULL, 0, '$2y$10$gfpsxCrWCQqKAGXnAwaO4.EsfrHzRmF7CKMxh29x5dbP0fOpJGgJi', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` longtext DEFAULT NULL,
  `web_image` longtext DEFAULT NULL,
  `banner_name` varchar(191) NOT NULL,
  `type` varchar(191) DEFAULT NULL,
  `openid` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bulk_orders`
--

CREATE TABLE `bulk_orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `occasion` varchar(191) DEFAULT NULL,
  `number_of_meals` varchar(191) DEFAULT NULL,
  `number_of_people` varchar(191) DEFAULT NULL,
  `delivery_date` varchar(191) DEFAULT NULL,
  `message` longtext DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cart_addons`
--

CREATE TABLE `cart_addons` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` varchar(255) DEFAULT NULL,
  `cart_item_uid` varchar(255) DEFAULT NULL,
  `addon_cat_uid` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cart_addon_items`
--

CREATE TABLE `cart_addon_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` varchar(255) DEFAULT NULL,
  `cart_item_uid` varchar(255) DEFAULT NULL,
  `addon_cat_uid` varchar(255) DEFAULT NULL,
  `addon_item_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(191) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `category_image` varchar(191) NOT NULL,
  `category_icon` varchar(191) NOT NULL,
  `display_order` int(11) NOT NULL,
  `add_to_menu` tinyint(1) NOT NULL DEFAULT 0,
  `meta_robots` varchar(191) DEFAULT NULL,
  `meta_title` longtext DEFAULT NULL,
  `meta_keywords` longtext DEFAULT NULL,
  `meta_description` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `slug`, `category_image`, `category_icon`, `display_order`, `add_to_menu`, `meta_robots`, `meta_title`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'DRY CAKE', '2yhtedkde10k', 'public/category_images/1671101586-pi7-image-chocolatebrownie.jpg', 'public/category_icons/1671101586-pi7-image-chocolatebrownie.jpg', 1, 0, 'index,follow', 'DRY CAKE', 'DRY CAKE', 'DRY CAKE', '2022-12-14 11:58:19', '2022-12-16 08:03:03'),
(2, 'BREAD', '6a6h0hhizr8k', 'public/category_images/1671089640-pi7-image-creamloaf.jpg', 'public/category_icons/1671089640-pi7-image-creamloaf.jpg', 2, 0, 'index,follow', 'BREAD', 'BREAD', 'BREAD', '2022-12-15 07:34:00', '2022-12-16 08:03:10'),
(3, 'CHOCOLATES', '3qkzx71cbg2s', 'public/category_images/1671091877-pi7-image-elegancefruit-nutchocolate1.jpg', 'public/category_icons/1671091877-pi7-image-elegancefruit-nutchocolate1.jpg', 3, 0, 'index,follow', 'CHOCOLATES', 'CHOCOLATES', 'CHOCOLATES', '2022-12-15 08:11:17', '2022-12-16 07:52:16'),
(4, 'COOKIES & KHARI', '6cf6juw1gbk0', 'public/category_images/1671096837-pi7-image-shrewburrycookies2.jpg', 'public/category_icons/1671096837-pi7-image-shrewburrycookies2.jpg', 4, 0, 'index,follow', 'COOKIES & KHARI', 'COOKIES & KHARI', 'COOKIES &amp; KHARI', '2022-12-15 09:33:57', '2022-12-16 07:52:11'),
(5, 'GATEAUX', 'h9bp3w2es0g8', 'public/category_images/1671103612-pi7-image-whiteforest.jpg', 'public/category_icons/1671103612-pi7-image-whiteforest.jpg', 5, 0, 'index,follow', 'GATEAUX', 'GATEAUX', 'GATEAUX', '2022-12-15 11:26:52', '2022-12-16 07:52:06'),
(6, 'INDIAN SNAKES', 'b06i1u9ngsw8', 'public/category_images/1671103834-pi7-image-cocktailsamosa.jpg', 'public/category_icons/1671103834-pi7-image-cocktailsamosa.jpg', 6, 0, 'index,follow', 'INDIAN SNAKES', 'INDIAN SNAKES', 'INDIAN SNAKES', '2022-12-15 11:30:34', '2022-12-16 07:52:01'),
(7, 'PASTRY', 'dh57sdr1te04', 'public/category_images/1671111090-pi7-image-tangyorange1.jpg', 'public/category_icons/1671111090-pi7-image-tangyorange1.jpg', 7, 0, 'index,follow', 'PASTRY', 'PASTRY', 'PASTRY', '2022-12-15 13:31:30', '2022-12-16 07:51:55'),
(8, 'SWEETS', 'aou4szh1kt4c', 'public/category_images/1671112981-pi7-image-kajubarfi-min.JPG', 'public/category_icons/1671112981-pi7-image-kajubarfi-min.JPG', 8, 0, 'index,follow', 'SWEETS', 'SWEETS', 'SWEETS', '2022-12-15 14:03:01', '2022-12-16 05:42:10'),
(9, 'VEG SAVORIES', 'j9vehnzaghwk', 'public/category_images/1671190432-pi7-image-vegburger.jpg', 'public/category_icons/1671190432-pi7-image-vegburger.jpg', 9, 0, 'index,follow', 'SAVORIES', 'SAVORIES', 'SAVORIES', '2022-12-16 11:27:47', '2022-12-16 11:33:52'),
(10, 'NON-VEG SAVORIES', '6l75ncf1tkgs', 'public/category_images/1671191862-pi7-image-chickenddsandwitch.jpg', 'public/category_icons/1671191862-pi7-image-chickenddsandwitch.jpg', 10, 0, 'index,follow', 'NON-VEG SAVORIES', 'NON-VEG SAVORIES', 'NON-VEG SAVORIES', '2022-12-16 11:57:42', '2022-12-16 11:57:42');

-- --------------------------------------------------------

--
-- Table structure for table `contactus_seo`
--

CREATE TABLE `contactus_seo` (
  `id` int(10) UNSIGNED NOT NULL,
  `meta_robots` varchar(191) NOT NULL,
  `meta_title` longtext NOT NULL,
  `meta_keywords` longtext NOT NULL,
  `meta_description` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` longtext NOT NULL,
  `email` longtext DEFAULT NULL,
  `phone` longtext DEFAULT NULL,
  `message` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `copyrights`
--

CREATE TABLE `copyrights` (
  `id` int(10) UNSIGNED NOT NULL,
  `copyright` longtext NOT NULL,
  `meta_robots` varchar(191) NOT NULL,
  `meta_title` varchar(191) NOT NULL DEFAULT 'copyright',
  `meta_keywords` varchar(191) NOT NULL DEFAULT 'copyright',
  `meta_description` varchar(191) NOT NULL DEFAULT 'copyright',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `creditlog_terms`
--

CREATE TABLE `creditlog_terms` (
  `id` int(10) UNSIGNED NOT NULL,
  `credit_terms` longtext NOT NULL,
  `points_message` varchar(255) DEFAULT 'points message',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `credit_settings`
--

CREATE TABLE `credit_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `cash_on_refer` varchar(255) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_supports`
--

CREATE TABLE `customer_supports` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_supports` longtext NOT NULL,
  `meta_robots` varchar(191) NOT NULL,
  `meta_title` varchar(191) NOT NULL DEFAULT 'customer supports',
  `meta_keywords` varchar(191) NOT NULL DEFAULT 'customer supports',
  `meta_description` varchar(191) NOT NULL DEFAULT 'customer supports',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_trusts`
--

CREATE TABLE `customer_trusts` (
  `id` int(10) UNSIGNED NOT NULL,
  `icon` varchar(191) NOT NULL,
  `title` longtext DEFAULT NULL,
  `short_description` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_boys`
--

CREATE TABLE `delivery_boys` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` varchar(255) DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL,
  `status` varchar(191) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `socket_id` longtext DEFAULT NULL,
  `current_status` varchar(255) NOT NULL DEFAULT '0',
  `password` varchar(191) DEFAULT NULL,
  `online_status` varchar(255) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_boy_channels`
--

CREATE TABLE `delivery_boy_channels` (
  `id` int(10) UNSIGNED NOT NULL,
  `del_boy_uid` varchar(191) DEFAULT NULL,
  `socket_id` varchar(191) DEFAULT NULL,
  `channel_name` varchar(191) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_boy_orders`
--

CREATE TABLE `delivery_boy_orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `delivery_boy_id` varchar(191) DEFAULT NULL,
  `order_id` varchar(191) DEFAULT NULL,
  `order_status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_boy_pincodes`
--

CREATE TABLE `delivery_boy_pincodes` (
  `id` int(10) UNSIGNED NOT NULL,
  `delivery_boy_id` varchar(191) DEFAULT NULL,
  `delivery_boy_uid` varchar(255) DEFAULT NULL,
  `pincode_id` varchar(191) DEFAULT NULL,
  `pincode` varchar(191) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_charges`
--

CREATE TABLE `delivery_charges` (
  `id` int(10) UNSIGNED NOT NULL,
  `distance` varchar(191) DEFAULT NULL,
  `delivery_charges` varchar(191) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deliver_boy_pages`
--

CREATE TABLE `deliver_boy_pages` (
  `id` int(11) NOT NULL,
  `register_support` longtext DEFAULT NULL,
  `normal_support` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `devices`
--

CREATE TABLE `devices` (
  `id` int(10) UNSIGNED NOT NULL,
  `access_token` varchar(191) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(10) UNSIGNED NOT NULL,
  `faqs` longtext NOT NULL,
  `meta_robots` varchar(191) NOT NULL,
  `meta_title` varchar(191) NOT NULL DEFAULT 'faqs',
  `meta_keywords` varchar(191) NOT NULL DEFAULT 'faqs',
  `meta_description` varchar(191) NOT NULL DEFAULT 'faqs',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `food_addon_categories`
--

CREATE TABLE `food_addon_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `food_item_id` varchar(191) DEFAULT NULL,
  `addon_cat_uid` varchar(191) DEFAULT NULL,
  `cat_id` varchar(191) DEFAULT NULL,
  `variant_id` varchar(191) DEFAULT NULL,
  `variant_uid` varchar(255) DEFAULT NULL,
  `variant_name` varchar(191) DEFAULT NULL,
  `required_status` varchar(191) NOT NULL DEFAULT '0',
  `required_custom` varchar(191) NOT NULL DEFAULT '0',
  `can_select` varchar(191) NOT NULL DEFAULT '0',
  `addon_cat_name` varchar(191) DEFAULT NULL,
  `addon_cat_description` varchar(191) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `addon_cat_status` varchar(255) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `food_addon_items`
--

CREATE TABLE `food_addon_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `addon_cat_uid` varchar(191) DEFAULT NULL,
  `food_item_id` varchar(191) DEFAULT NULL,
  `cat_id` varchar(191) DEFAULT NULL,
  `addon_item_id` varchar(191) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `addon_item_status` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `food_categories`
--

CREATE TABLE `food_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `food_item_id` varchar(191) DEFAULT NULL,
  `cat_id` varchar(191) DEFAULT NULL,
  `food_item_status` varchar(191) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `food_images`
--

CREATE TABLE `food_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `food_item_id` varchar(191) DEFAULT NULL,
  `image` longtext DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `food_items`
--

CREATE TABLE `food_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `item_name` varchar(191) DEFAULT NULL,
  `item_search_query` varchar(255) DEFAULT NULL,
  `item_web_id` varchar(255) DEFAULT NULL,
  `item_slug` varchar(255) DEFAULT NULL,
  `item_description` longtext DEFAULT NULL,
  `item_status` tinyint(1) NOT NULL DEFAULT 0,
  `primary_image` longtext DEFAULT NULL,
  `item_mrp` double(8,2) NOT NULL DEFAULT 0.00,
  `item_sp` double(8,2) NOT NULL DEFAULT 0.00,
  `stock_status` tinyint(4) NOT NULL DEFAULT 1,
  `stock_message` varchar(255) DEFAULT NULL,
  `tax_slab_id` varchar(255) DEFAULT NULL,
  `tax_amount` float NOT NULL DEFAULT 0,
  `food_type` varchar(191) DEFAULT '1',
  `item_limit` int(11) NOT NULL DEFAULT 1,
  `meta_title` varchar(191) DEFAULT NULL,
  `meta_keywords` varchar(191) DEFAULT NULL,
  `meta_robots` varchar(191) NOT NULL,
  `meta_description` longtext DEFAULT NULL,
  `publish_status` tinyint(1) NOT NULL DEFAULT 0,
  `offer_status` tinyint(1) NOT NULL DEFAULT 0,
  `variant_add_status` tinyint(1) NOT NULL DEFAULT 0,
  `addon_add_status` tinyint(1) NOT NULL DEFAULT 0,
  `cat_id` varchar(255) DEFAULT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `order_analytics` int(11) NOT NULL DEFAULT 0,
  `cart_analytics` int(11) NOT NULL DEFAULT 0,
  `wishlist_analytics` int(11) NOT NULL DEFAULT 0,
  `offer_id` varchar(191) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `food_items`
--

INSERT INTO `food_items` (`id`, `item_name`, `item_search_query`, `item_web_id`, `item_slug`, `item_description`, `item_status`, `primary_image`, `item_mrp`, `item_sp`, `stock_status`, `stock_message`, `tax_slab_id`, `tax_amount`, `food_type`, `item_limit`, `meta_title`, `meta_keywords`, `meta_robots`, `meta_description`, `publish_status`, `offer_status`, `variant_add_status`, `addon_add_status`, `cat_id`, `category_name`, `order_analytics`, `cart_analytics`, `wishlist_analytics`, `offer_id`, `created_at`, `updated_at`) VALUES
(1, 'Cake', NULL, 'owuegark22', 'cake', NULL, 0, 'public/item_primary_images/1671019213-blueberry-muffins-1-1.jpg', 100.00, 100.00, 1, 'Sorry Out Of Stock', NULL, 0, '1', 100, 'Cake', 'Cake', 'index,follow', 'Cake', 1, 0, 0, 0, '1', 'DRY CAKE', 10, 11, 0, NULL, '2022-12-14 12:00:13', '2022-12-17 08:37:58'),
(2, 'Cream Loaf Eggless', NULL, '4jya4csnb2', 'cream-loaf-eggless', NULL, 1, 'public/item_primary_images/1671089740-pi7-image-creamloaf.jpg', 10.00, 10.00, 1, 'This product is currently not in stock', NULL, 0, '1', 100, 'Cream Loaf Eggless', 'Cream Loaf Eggless', 'index,follow', 'Cream Loaf Eggless', 1, 0, 0, 0, '2', 'BREAD', 10434, 10610, 1, NULL, '2022-12-15 07:35:40', '2023-07-07 16:31:22'),
(3, 'Cream Roll', NULL, 'c3wormsftw', 'cream-roll', NULL, 1, 'public/item_primary_images/1671090250-pi7-image-creamroll1.jpg', 20.00, 20.00, 1, 'This product is currently not in stock', NULL, 0, '1', 100, 'Cream Roll', 'Cream Roll', 'index,follow', 'Cream Roll', 1, 0, 0, 0, '2', 'BREAD', 6170, 6454, 0, NULL, '2022-12-15 07:44:10', '2023-07-07 16:31:22'),
(4, 'Milk Bread 200gm', NULL, 'o7etyrqtsl', 'milk-bread-200gm', NULL, 1, 'public/item_primary_images/1671090791-pi7-image-milkbread.jpg', 15.00, 15.00, 1, 'This product is currently not in stock', NULL, 0, '1', 100, 'Milk Bread 200gm', 'Milk Bread 200gm', 'index,follow', 'Milk Bread 200gm', 1, 0, 0, 0, '2', 'BREAD', 7889, 8071, 0, NULL, '2022-12-15 07:53:11', '2023-07-07 16:31:22'),
(5, 'Pizza Base Big (2pcs)', NULL, '3nk18ry1p5', 'pizza-base-big-2pcs', NULL, 1, 'public/item_primary_images/1671091276-pi7-image-pizzabase.jpg', 25.00, 25.00, 1, 'This product is currently not in stock', NULL, 0, '1', 100, 'Pizza Base Big (2pcs)', 'Pizza Base Big (2pcs)', 'index,follow', 'Pizza Base Big (2pcs)', 1, 0, 0, 0, '2', 'BREAD', 723, 829, 0, NULL, '2022-12-15 08:01:16', '2023-07-07 16:25:03'),
(6, 'Sweet Bun Eggless', NULL, '7w4mqkfwtb', 'sweet-bun-eggless', NULL, 1, 'public/item_primary_images/1671091585-pi7-image-sweetbun.jpg', 7.00, 7.00, 1, 'This product is currently not in stock', NULL, 0, '1', 100, 'Sweet Bun Eggless', 'Sweet Bun Eggless', 'index,follow', 'Sweet Bun Eggless', 1, 0, 0, 0, '2', 'BREAD', 4708, 4993, 0, NULL, '2022-12-15 08:06:25', '2023-07-07 16:31:22'),
(7, 'ELEGANCE FRUIT & NUT CHOCOLATE', NULL, '75bsv50kjh', 'elegance-fruit-nut-chocolate', NULL, 1, 'public/item_primary_images/1671092147-pi7-image-elegancefruit-nutchocolate1.jpg', 40.00, 40.00, 1, 'This product is currently not in stock', NULL, 0, '1', 100, 'ELEGANCE FRUIT & NUT CHOCOLATE', 'ELEGANCE FRUIT & NUT CHOCOLATE', 'index,follow', 'ELEGANCE FRUIT & NUT CHOCOLATE', 1, 0, 0, 0, '3', 'CHOCOLATES', 1732, 1769, 0, NULL, '2022-12-15 08:15:47', '2023-07-07 16:02:02'),
(8, 'ASSORTED CHOCOLATE BOX(200 GM)', NULL, '4r7ef8j332', 'assorted-chocolate-box200-gm', NULL, 1, 'public/item_primary_images/1671093578-pi7-image-assortedchocolatebox1.jpg', 175.00, 175.00, 1, 'This product is currently not in stock', NULL, 0, '1', 100, 'ASSORTED CHOCOLATE BOX(200 GM)', 'ASSORTED CHOCOLATE BOX(200 GM)', 'index,follow', 'ASSORTED CHOCOLATE BOX(200 GM)', 1, 0, 0, 0, '3', 'CHOCOLATES', 661, 677, 0, NULL, '2022-12-15 08:39:38', '2023-07-07 16:13:07'),
(9, 'ASSORTED ROSE CHOCOLATE BOX(100 GM)', NULL, 'cnba1nyduu', 'assorted-rose-chocolate-box100-gm', NULL, 1, 'public/item_primary_images/1671093824-pi7-image-assortedrosechocolatebox1.jpg', 125.00, 125.00, 1, 'This product is currently not in stock', NULL, 0, '1', 100, 'ASSORTED ROSE CHOCOLATE BOX(100 GM)', 'ASSORTED ROSE CHOCOLATE BOX(100 GM)', 'index,follow', 'ASSORTED ROSE CHOCOLATE BOX(100 GM)', 1, 0, 0, 0, '3', 'CHOCOLATES', 1011, 1035, 0, NULL, '2022-12-15 08:43:44', '2023-07-07 15:57:07'),
(10, 'CHOCOLATE BOKEH', NULL, '12ep8wp27m', 'chocolate-bokeh', NULL, 1, 'public/item_primary_images/1671094057-pi7-image-chocolatebokeh.jpeg', 250.00, 250.00, 1, 'This product is currently not in stock', NULL, 0, '1', 100, 'CHOCOLATE BOKEH', 'CHOCOLATE BOKEH', 'index,follow', 'CHOCOLATE BOKEH', 1, 0, 0, 0, '3', 'CHOCOLATES', 164, 192, 0, NULL, '2022-12-15 08:47:37', '2023-07-06 15:34:24'),
(11, 'ELEGANCE ALMOND CHOCOLATE', NULL, 'bfb7w9269x', 'elegance-almond-chocolate', NULL, 1, 'public/item_primary_images/1671094235-pi7-image-elegancealmondchocolate1.jpg', 40.00, 40.00, 1, 'This product is currently not in stock', NULL, 0, '1', 100, 'ELEGANCE ALMOND CHOCOLATE', 'ELEGANCE ALMOND CHOCOLATE', 'index,follow', 'ELEGANCE ALMOND CHOCOLATE', 1, 0, 0, 0, '3', 'CHOCOLATES', 1676, 1725, 0, NULL, '2022-12-15 08:50:35', '2023-07-07 16:08:54'),
(12, 'ELEGANCE MILK CHOCOLATE', NULL, 'mvqdmgplsu', 'elegance-milk-chocolate', NULL, 1, 'public/item_primary_images/1671094729-pi7-image-elegancemilkchocolate1.jpg', 35.00, 35.00, 1, 'This product is currently not in stock', NULL, 0, '1', 100, 'ELEGANCE MILK CHOCOLATE', 'ELEGANCE MILK CHOCOLATE', 'index,follow', 'ELEGANCE MILK CHOCOLATE', 1, 0, 0, 0, '3', 'CHOCOLATES', 1750, 1802, 0, NULL, '2022-12-15 08:58:49', '2023-07-07 15:52:38'),
(13, 'Lollypop', NULL, 'mvyw3v4bk0', 'lollypop', NULL, 1, 'public/item_primary_images/1671095004-pi7-image-lollypop1.jpg', 12.00, 12.00, 1, 'This product is currently not in stock', NULL, 0, '1', 100, 'Lollypop', 'Lollypop', 'index,follow', 'Lollypop', 1, 0, 0, 0, '3', 'CHOCOLATES', 3982, 4029, 0, NULL, '2022-12-15 09:03:24', '2023-07-07 16:14:40'),
(14, 'Shrewbury Cookies(200gm)', NULL, 'h1c4gxeul0', 'Shrewbury Cookies(200gm)', NULL, 1, 'public/item_primary_images/1671097227-pi7-image-shrewburrycookies2.jpg', 65.00, 65.00, 1, 'This product is currently not in stock', NULL, 0, '1', 100, 'ShrewBury  Cookies(200gm)', 'ShrewBury  Cookies(200gm)', 'index,follow', 'ShrewBury  Cookies(200gm)', 1, 0, 0, 0, '4', 'COOKIES & KHARI', 1658, 1711, 1, NULL, '2022-12-15 09:40:27', '2023-07-07 16:20:56'),
(15, 'Cheese Straw', NULL, 'do3l8nkig3', 'cheese-straw', NULL, 1, 'public/item_primary_images/1671097412-pi7-image-chhesestraw2-min.jpg', 50.00, 50.00, 1, 'This product is currently not in stock', NULL, 0, '1', 100, 'Cheese Straw', 'Cheese Straw', 'index,follow', 'Cheese Straw', 1, 0, 0, 0, '4', 'COOKIES & KHARI', 2527, 2588, 0, NULL, '2022-12-15 09:43:32', '2023-07-07 16:20:56'),
(16, 'Choco Chips Cookies(280gm)', NULL, '69swo4v0xb', 'choco-chips-cookies280gm', NULL, 1, 'public/item_primary_images/1671097623-pi7-image-chocochipscookies1.jpg', 75.00, 75.00, 1, 'This product is currently not in stock', NULL, 0, '1', 100, 'Choco Chips Cookies(280gm)', 'Choco Chips Cookies(280gm)', 'index,follow', 'Choco Chips Cookies(280gm)', 1, 0, 0, 0, '4', 'COOKIES & KHARI', 2033, 2061, 0, NULL, '2022-12-15 09:47:03', '2023-07-07 16:20:56'),
(17, 'Coffee Toffee Cookies(250gm)', NULL, 'g5lgn0e32t', 'Coffee Toffee Cookies(250gm)', NULL, 1, 'public/item_primary_images/1671097829-pi7-image-coffeetoffeecookies.jpg', 70.00, 70.00, 1, 'This product is currently not in stock', NULL, 0, '1', 100, 'Coffee Toffee  Cookies(250gm)', 'Coffee Toffee  Cookies(250gm)', 'index,follow', 'Coffee Toffee  Cookies(250gm)', 1, 0, 0, 0, '4', 'COOKIES & KHARI', 1692, 1771, 0, NULL, '2022-12-15 09:50:29', '2023-07-07 16:22:04'),
(18, 'Energy Cookies(280gm)', NULL, 's3apgif3um', 'Energy Cookies(280gm)', NULL, 1, 'public/item_primary_images/1671100420-pi7-image-energycookies.jpg', 75.00, 75.00, 1, 'This product is currently not in stock', NULL, 0, '1', 100, 'Energy  Cookies(280 gm)', 'Energy  Cookies(280 gm)', 'index,follow', 'Energy  Cookies(280 gm)', 1, 0, 0, 0, '4', 'COOKIES & KHARI', 2103, 2166, 0, NULL, '2022-12-15 10:33:40', '2023-07-07 16:22:49'),
(19, 'HONEY CRUNCH COOKIES (200 GM)', NULL, 'rly7ovidiq', 'honey-crunch-cookies-200-gm', NULL, 1, 'public/item_primary_images/1671100614-pi7-image-honeycrunchcookies1.jpg', 70.00, 70.00, 1, 'This product is currently not in stock', NULL, 0, '1', 100, 'HONEY CRUNCH COOKIES (200 GM)', 'HONEY CRUNCH COOKIES (200 GM)', 'index,follow', 'HONEY CRUNCH COOKIES (200 GM)', 1, 0, 0, 0, '4', 'COOKIES & KHARI', 2351, 2410, 0, NULL, '2022-12-15 10:36:54', '2023-07-07 16:22:49'),
(20, 'Jeera Khari', NULL, 'frlcmn1y8z', 'Jeera Khari', NULL, 1, 'public/item_primary_images/1671100852-pi7-image-jeerakhari3-min.jpg', 60.00, 60.00, 1, 'This product is currently not in stock', NULL, 0, '1', 100, 'Jeera Khari  ', 'Jeera Khari  ', 'index,follow', 'Jeera Khari  ', 1, 0, 0, 0, '4', 'COOKIES & KHARI', 816, 861, 0, NULL, '2022-12-15 10:40:52', '2023-07-07 15:59:19'),
(21, 'Methi Khari', NULL, 'o53oi2d5w0', 'Methi Khari', NULL, 1, 'public/item_primary_images/1671101026-pi7-image-methikhari3-min.jpg', 60.00, 60.00, 1, 'This product is currently not in stock', NULL, 0, '1', 100, 'Methi Khari  ', 'Methi Khari  ', 'index,follow', 'Methi Khari  ', 1, 0, 0, 0, '4', 'COOKIES & KHARI', 715, 752, 0, NULL, '2022-12-15 10:43:46', '2023-07-07 16:22:49'),
(22, 'Osmania Cookies Eggless', NULL, '1j6nmasv6h', 'Osmania Cookies Eggless', NULL, 1, 'public/item_primary_images/1671101172-pi7-image-osmaniacookies1.jpg', 35.00, 35.00, 1, 'This product is currently not in stock', NULL, 0, '1', 100, 'Osmania cookies', 'Osmania cookies', 'index,follow', 'Osmania cookies', 1, 0, 0, 0, '4', 'COOKIES & KHARI', 1407, 1444, 0, NULL, '2022-12-15 10:46:12', '2023-07-07 16:06:53'),
(23, 'Prime Time', NULL, 'h8s19y9tq7', 'prime-time', NULL, 1, 'public/item_primary_images/1671101382-pi7-image-primetime.jpg', 60.00, 60.00, 1, 'This product is currently not in stock', NULL, 0, '1', 100, 'Prime Time', 'Prime Time', 'index,follow', 'Prime Time', 1, 0, 0, 0, '4', 'COOKIES & KHARI', 1056, 1083, 0, NULL, '2022-12-15 10:49:42', '2023-07-07 15:59:19'),
(24, 'Browniee', NULL, '10zs77qkn5', 'browniee', NULL, 1, 'public/item_primary_images/1671102348-pi7-image-chocolatebrownie.jpg', 30.00, 30.00, 1, 'This product is currently not in stock', NULL, 0, '1', 100, 'Browniee', 'Browniee', 'index,follow', 'Browniee', 1, 0, 0, 0, '1', 'DRY CAKE', 2599, 2728, 0, NULL, '2022-12-15 11:05:48', '2023-07-07 16:22:04'),
(25, 'Blueberry Muffins', NULL, 'm26khb83uq', 'blueberry-muffins', NULL, 1, 'public/item_primary_images/1671102609-pi7-image-blueberrymuffins1-min.jpg', 15.00, 15.00, 1, 'This product is currently not in stock', NULL, 0, '1', 100, 'Blueberry Muffins', 'Blueberry Muffins', 'index,follow', 'Blueberry Muffins', 1, 0, 0, 0, '1', 'DRY CAKE', 4033, 4127, 0, NULL, '2022-12-15 11:10:09', '2023-07-07 16:22:49'),
(26, 'Butter Slice Cake (5 PCS)', NULL, 'mz3x2a9xc5', 'butter-slice-cake-5-pcs', NULL, 1, 'public/item_primary_images/1671102842-pi7-image-buttercakeslice4.jpg', 75.00, 75.00, 1, 'This product is currently not in stock', NULL, 0, '1', 100, 'Butter Slice Cake (5 PCS)', 'Butter Slice Cake (5 PCS)', 'index,follow', 'Butter Slice Cake (5 PCS)', 1, 0, 0, 0, '1', 'DRY CAKE', 3109, 3222, 0, NULL, '2022-12-15 11:14:02', '2023-07-07 16:14:36'),
(27, 'Choco Chip Muffins', NULL, 'o7i8zjhwuk', 'choco-chip-muffins', NULL, 1, 'public/item_primary_images/1671103009-pi7-image-chocochipsmuffins1-min.jpg', 15.00, 15.00, 1, 'This product is currently not in stock', NULL, 0, '1', 100, 'Choco Chip Muffins', 'Choco Chip Muffins', 'index,follow', 'Choco Chip Muffins', 1, 0, 0, 0, '1', 'DRY CAKE', 3689, 3903, 0, NULL, '2022-12-15 11:16:49', '2023-07-07 16:22:49'),
(28, 'Date-N-Walnut Slice Cake (5 PCS)', NULL, 'pao0zzaehs', 'date-n-walnut-slice-cake-5-pcs', NULL, 1, 'public/item_primary_images/1671103134-pi7-image-datewalnutcakeslice3.jpg', 100.00, 100.00, 1, 'This product is currently not in stock', NULL, 0, '1', 100, 'Date-N-Walnut Slice Cake (5 PCS)', 'Date-N-Walnut Slice Cake (5 PCS)', 'index,follow', 'Date-N-Walnut Slice Cake (5 PCS)', 1, 0, 0, 0, '1', 'DRY CAKE', 3814, 3917, 0, NULL, '2022-12-15 11:18:54', '2023-07-07 16:22:49'),
(29, 'Fruit Slice Cake (5 PCS)', NULL, 'cfptphh38d', 'fruit-slice-cake-5-pcs', NULL, 1, 'public/item_primary_images/1671103334-pi7-image-fruitscakeslice4.jpg', 90.00, 90.00, 1, 'This product is currently not in stock', NULL, 0, '1', 100, 'Fruit Slice Cake (5 PCS)', 'Fruit Slice Cake (5 PCS)', 'index,follow', 'Fruit Slice Cake (5 PCS)', 1, 0, 0, 0, '1', 'DRY CAKE', 2851, 3078, 1, NULL, '2022-12-15 11:22:14', '2023-07-07 16:22:49'),
(30, 'White Forest (Egg Less) 500 Gm', NULL, 'tqnlq6uifp', 'white-forest-egg-less-500-gm', NULL, 1, 'public/item_primary_images/1671103985-pi7-image-whiteforest.jpg', 410.00, 410.00, 1, 'This product is currently not in stock', NULL, 0, '1', 100, 'White Forest (Egg Less) 500 Gm', 'White Forest (Egg Less) 500 Gm', 'index,follow', 'White Forest (Egg Less) 500 Gm', 1, 0, 0, 0, '5', 'GATEAUX', 5202, 5398, 0, NULL, '2022-12-15 11:33:05', '2023-07-07 16:31:22'),
(31, 'Black Forest 500Gm', NULL, '3flptx2nun', 'black-forest-500gm', NULL, 1, 'public/item_primary_images/1671104959-pi7-image-blackforest.jpg', 400.00, 400.00, 1, 'This product is currently not in stock', NULL, 0, '3', 100, 'Black Forest 500Gm', 'Black Forest 500Gm', 'index,follow', 'Black Forest 500Gm', 1, 0, 0, 0, '5', 'GATEAUX', 8753, 8967, 0, NULL, '2022-12-15 11:49:19', '2023-07-07 16:31:22'),
(32, 'Black Forest 1Kg', NULL, 'dlwqaw6mlv', 'black-forest-1kg', NULL, 0, 'public/item_primary_images/1671105018-pi7-image-blackforest.jpg', 750.00, 750.00, 0, 'This product is currently not in stock', NULL, 0, '3', 100, 'Black Forest 1Kg', 'Black Forest 1Kg', 'index,follow', 'Black Forest 1Kg', 1, 0, 0, 0, '5', 'GATEAUX', 63, 220, 0, NULL, '2022-12-15 11:50:18', '2023-06-11 10:41:34'),
(33, 'Butter Scotch Junior', NULL, 'f99l2f1x5y', 'butter-scotch-junior-500-gm', NULL, 1, 'public/item_primary_images/1677161442-butter-scotch-junior.jpg', 250.00, 250.00, 1, 'This product is currently not in stock', NULL, 0, '3', 100, 'Butter Scotch Junior 500 Gm', 'Butter Scotch Junior 500 Gm', 'index,follow', 'Butter Scotch Junior 500 Gm', 1, 0, 0, 0, '5', 'GATEAUX', 11148, 11333, 0, NULL, '2022-12-15 12:01:56', '2023-07-07 16:22:49'),
(34, 'Butterscotch Round 500gm', NULL, '9ck4aph7u0', 'butterscotch-round-500gm', NULL, 1, 'public/item_primary_images/1671106144-pi7-image-butterscotchround.jpg', 330.00, 330.00, 1, 'This product is currently not in stock', NULL, 0, '3', 100, 'Butterscotch Round 500gm', 'Butterscotch Round 500gm', 'index,follow', 'Butterscotch Round 500gm', 1, 0, 0, 0, '5', 'GATEAUX', 7788, 8051, 0, NULL, '2022-12-15 12:09:04', '2023-07-07 16:20:56'),
(35, 'Butterscotch Round 1Kg', NULL, '3ujai7rw9h', 'butterscotch-round-1kg', NULL, 0, 'public/item_primary_images/1671106197-pi7-image-butterscotchround.jpg', 620.00, 620.00, 0, 'This product is currently not in stock', NULL, 0, '3', 100, 'Butterscotch Round 1Kg', 'Butterscotch Round 1Kg', 'index,follow', 'Butterscotch Round 1Kg', 1, 0, 0, 0, '5', 'GATEAUX', 111, 230, 0, NULL, '2022-12-15 12:09:57', '2023-06-11 10:40:41'),
(36, 'Choco Cherry Blossom 500gm', NULL, '3p92uk21uk', 'choco-cherry-blossom-500gm', NULL, 1, 'public/item_primary_images/1671106393-pi7-image-chococherryblossom.jpeg', 360.00, 360.00, 1, 'This product is currently not in stock', NULL, 0, '3', 100, 'Choco Cherry Blossom 500gm', 'Choco Cherry Blossom 500gm', 'index,follow', 'Choco Cherry Blossom 500gm', 1, 0, 0, 0, '5', 'GATEAUX', 6182, 6443, 0, NULL, '2022-12-15 12:13:13', '2023-07-07 16:22:49'),
(37, 'Chocolate Junior', NULL, '64g5hwpfwe', 'chocolate-junior-500gm', NULL, 0, 'public/item_primary_images/1677161474-choco-junior.jpg', 250.00, 250.00, 1, 'This product is currently not in stock', NULL, 0, '3', 100, 'Chocolate Junior 500Gm', 'Chocolate Junior 500Gm', 'index,follow', 'Chocolate Junior 500Gm', 1, 0, 0, 0, '5', 'GATEAUX', 11339, 11459, 0, NULL, '2022-12-15 12:18:18', '2023-06-11 08:47:10'),
(38, 'Choco Mini 350Gm', NULL, 'jg05zfuel4', 'choco-mini-350gm', NULL, 1, 'public/item_primary_images/1671106838-pi7-image-chocomini.jpg', 180.00, 180.00, 1, 'This product is currently not in stock', NULL, 0, '3', 100, 'Choco Mini 350Gm', 'Choco Mini 350Gm', 'index,follow', 'Choco Mini 350Gm', 1, 0, 0, 0, '5', 'GATEAUX', 13044, 13209, 0, NULL, '2022-12-15 12:20:38', '2023-07-07 16:22:49'),
(39, 'Choco Vanila Heart 500Gm', NULL, 'm5lhtugvxs', 'choco-vanila-heart-500gm', NULL, 1, 'public/item_primary_images/1671107085-pi7-image-chocovanillaheart.jpg', 360.00, 360.00, 1, 'This product is currently not in stock', NULL, 0, '3', 100, 'Choco Vanila Heart 500Gm', 'Choco Vanila Heart 500Gm', 'index,follow', 'Choco Vanila Heart 500Gm', 1, 0, 0, 0, '5', 'GATEAUX', 8260, 8484, 0, NULL, '2022-12-15 12:24:45', '2023-07-07 16:22:49'),
(40, 'Choco Vanila Heart 1Kg', NULL, '70ju9mjoss', 'choco-vanila-heart-1kg', NULL, 0, 'public/item_primary_images/1671107134-pi7-image-chocovanillaheart.jpg', 670.00, 670.00, 0, 'This product is currently not in stock', NULL, 0, '3', 100, 'Choco Vanila Heart 1Kg', 'Choco Vanila Heart 1Kg', 'index,follow', 'Choco Vanila Heart 1Kg', 1, 0, 0, 0, '5', 'GATEAUX', 29, 167, 0, NULL, '2022-12-15 12:25:34', '2023-06-11 10:40:02'),
(41, 'CHOCOLATE HEART 500 Gm', NULL, 'r231dd5vv6', 'chocolate-heart-500-gm', NULL, 1, 'public/item_primary_images/1671107283-pi7-image-chocolateheart.jpg', 350.00, 350.00, 1, 'This product is currently not in stock', NULL, 0, '3', 100, 'CHOCOLATE HEART 500 Gm', 'CHOCOLATE HEART 500 Gm', 'index,follow', 'CHOCOLATE HEART 500 Gm', 1, 0, 0, 0, '5', 'GATEAUX', 10268, 10480, 0, NULL, '2022-12-15 12:28:03', '2023-07-07 16:22:49'),
(42, 'Chocolate Heart 1Kg', NULL, '7331003odb', 'chocolate-heart-1kg', NULL, 1, 'public/item_primary_images/1671107338-pi7-image-chocolateheart.jpg', 660.00, 660.00, 1, 'This product is currently not in stock', NULL, 0, '3', 100, 'Chocolate Heart 1Kg', 'Chocolate Heart 1Kg', 'index,follow', 'Chocolate Heart 1Kg', 1, 0, 0, 0, '5', 'GATEAUX', 108, 401, 0, NULL, '2022-12-15 12:28:58', '2023-07-06 15:29:50'),
(43, 'Chocolate Round 500Gm', NULL, 'ita45wv2dy', 'chocolate-round-500gm', NULL, 1, 'public/item_primary_images/1671107716-pi7-image-chocolateround.jpg', 340.00, 340.00, 1, 'This product is currently not in stock', NULL, 0, '3', 100, 'Chocolate Round 500Gm', 'Chocolate Round 500Gm', 'index,follow', 'Chocolate Round 500Gm', 1, 0, 0, 0, '5', 'GATEAUX', 11546, 11848, 0, NULL, '2022-12-15 12:35:16', '2023-07-07 16:31:22'),
(44, 'Chocolate Round 1Kg', NULL, '2j6s0aecmi', 'chocolate-round-1kg', NULL, 1, 'public/item_primary_images/1671107765-pi7-image-chocolateround.jpg', 640.00, 640.00, 1, 'This product is currently not in stock', NULL, 0, '3', 100, 'Chocolate Round 1Kg', 'Chocolate Round 1Kg', 'index,follow', 'Chocolate Round 1Kg', 1, 0, 0, 0, '5', 'GATEAUX', 1373, 1547, 0, NULL, '2022-12-15 12:36:05', '2023-07-07 16:22:49'),
(45, 'Doremon Face Gateaux', NULL, 'tcwy5ytb40', 'doremon-face-gateaux', NULL, 0, 'public/item_primary_images/1671107900-pi7-image-doremonface.jpg', 330.00, 330.00, 0, 'This product is currently not in stock', NULL, 0, '3', 100, 'Doremon Face Gateaux', 'Doremon Face Gateaux', 'index,follow', 'Doremon Face Gateaux', 1, 0, 0, 0, '5', 'GATEAUX', 990, 1026, 1, NULL, '2022-12-15 12:38:20', '2023-06-11 08:46:53'),
(46, 'ESPRESSO DELIGHT', NULL, '3ifvpm3hm2', 'ESPRESSO DELIGHT 500 Gm.', NULL, 1, 'public/item_primary_images/1671108098-pi7-image-espressodelight.jpg', 270.00, 270.00, 1, 'This product is currently not in stock', NULL, 0, '3', 100, 'ESPRESSO DELIGHT', 'ESPRESSO DELIGHT', 'index,follow', 'ESPRESSO DELIGHT', 1, 0, 0, 0, '5', 'GATEAUX', 8798, 9014, 0, NULL, '2022-12-15 12:41:38', '2023-07-07 16:31:22'),
(47, 'Mango Round 500Gm', NULL, 'rn5droo0m6', 'mango-round-500gm', NULL, 1, 'public/item_primary_images/1671108507-pi7-image-mangoround.jpg', 310.00, 310.00, 1, 'This product is currently not in stock', NULL, 0, '3', 100, 'Mango Round 500Gm', 'Mango Round 500Gm', 'index,follow', 'Mango Round 500Gm', 1, 0, 0, 0, '5', 'GATEAUX', 9570, 9878, 1, NULL, '2022-12-15 12:48:27', '2023-07-07 16:31:22'),
(48, 'Mango Round 1Kg', NULL, 'ni2u1y29ty', 'mango-round-1kg', NULL, 1, 'public/item_primary_images/1671108560-pi7-image-mangoround.jpg', 590.00, 590.00, 1, 'This product is currently not in stock', NULL, 0, '3', 100, 'Mango Round 1Kg', 'Mango Round 1Kg', 'index,follow', 'Mango Round 1Kg', 1, 0, 0, 0, '5', 'GATEAUX', 544, 765, 0, NULL, '2022-12-15 12:49:20', '2023-07-07 16:14:36'),
(49, 'Mango Strawberry Heart 500Gm', NULL, 'phwuazi8ji', 'mango-strawberry-heart-500gm', NULL, 0, 'public/item_primary_images/1671108752-pi7-image-mangostrawberryheart.jpg', 350.00, 350.00, 1, 'This product is currently not in stock', NULL, 0, '3', 100, 'Mango Strawberry Heart 500Gm', 'Mango Strawberry Heart 500Gm', 'index,follow', 'Mango Strawberry Heart 500Gm', 1, 0, 0, 0, '5', 'GATEAUX', 6627, 6798, 0, NULL, '2022-12-15 12:52:32', '2023-06-20 11:28:36'),
(50, 'Mango Strawberry Heart 1Kg', NULL, 'bnna1mufsk', 'mango-strawberry-heart-1kg', NULL, 0, 'public/item_primary_images/1671108798-pi7-image-mangostrawberryheart.jpg', 660.00, 660.00, 0, 'This product is currently not in stock', NULL, 0, '3', 100, 'Mango Strawberry Heart 1Kg', 'Mango Strawberry Heart 1Kg', 'index,follow', 'Mango Strawberry Heart 1Kg', 1, 0, 0, 0, '5', 'GATEAUX', 20, 137, 0, NULL, '2022-12-15 12:53:18', '2023-06-11 10:38:06'),
(51, 'Red Velvet 500Gm', NULL, 'l0qict60wf', 'red-velvet-500gm', NULL, 0, 'public/item_primary_images/1682337399-red-velvet-junior.jpg', 450.00, 450.00, 0, 'This product is currently not in stock', NULL, 0, '3', 100, 'Red Velvet 500Gm', 'Red Velvet 500Gm', 'index,follow', 'Red Velvet 500Gm', 1, 0, 0, 0, '5', 'GATEAUX', 2005, 2105, 0, NULL, '2022-12-15 12:57:46', '2023-06-11 10:37:08'),
(52, 'Strawberry Round 500Gm', NULL, 'qajm6owagy', 'strawberry-round-500gm', NULL, 1, 'public/item_primary_images/1677157390-strawberry-round.jpg', 310.00, 310.00, 1, 'This product is currently not in stock', NULL, 0, '3', 100, 'Strawberry Round 500Gm', 'Strawberry Round 500Gm', 'index,follow', 'Strawberry Round 500Gm', 1, 0, 0, 0, '5', 'GATEAUX', 9059, 9361, 1, NULL, '2022-12-15 13:01:28', '2023-07-07 16:22:49'),
(53, 'Strawberry Round 1Kg', NULL, 'pc0dzj9ghx', 'strawberry-round-1kg', NULL, 1, 'public/item_primary_images/1677157413-strawberry-round.jpg', 590.00, 590.00, 1, 'This product is currently not in stock', NULL, 0, '3', 100, 'Strawberry Round 1Kg', 'Strawberry Round 1Kg', 'index,follow', 'Strawberry Round 1Kg', 1, 0, 0, 0, '5', 'GATEAUX', 290, 555, 0, NULL, '2022-12-15 13:02:20', '2023-07-07 15:15:23'),
(54, 'STRAWBERRY VANILA HEART 500 Gm.', NULL, '6sst6bcqsk', 'strawberry-vanila-heart-500-gm', NULL, 1, 'public/item_primary_images/1671109457-pi7-image-strawberryvanillaheart.jpg', 350.00, 350.00, 1, 'This product is currently not in stock', NULL, 0, '3', 100, 'STRAWBERRY VANILA HEART 500 Gm.', 'STRAWBERRY VANILA HEART 500 Gm.', 'index,follow', 'STRAWBERRY VANILA HEART 500 Gm.', 1, 0, 0, 0, '5', 'GATEAUX', 8126, 8451, 0, NULL, '2022-12-15 13:04:17', '2023-07-07 16:31:22'),
(55, 'STRAWBERRY VANILA HEART 1 KG.', NULL, 'lvjpappzjx', 'strawberry-vanila-heart-1-kg', NULL, 0, 'public/item_primary_images/1671109499-pi7-image-strawberryvanillaheart.jpg', 660.00, 660.00, 0, 'This product is currently not in stock', NULL, 0, '3', 100, 'STRAWBERRY VANILA HEART 1 KG.', 'STRAWBERRY VANILA HEART 1 KG.', 'index,follow', 'STRAWBERRY VANILA HEART 1 KG.', 1, 0, 0, 0, '5', 'GATEAUX', 38, 294, 1, NULL, '2022-12-15 13:04:59', '2023-06-11 10:36:16'),
(56, 'Vanila Delight 500Gm', NULL, 'qof3irc9vd', 'vanila-delight-500gm', NULL, 1, 'public/item_primary_images/1686900281-vanilla-delight-cake.jpg', 310.00, 310.00, 1, 'This product is currently not in stock', NULL, 0, '3', 100, 'Vanila Delight 500Gm', 'Vanila Delight 500Gm', 'index,follow', 'Vanila Delight 500Gm', 1, 0, 0, 0, '5', 'GATEAUX', 7056, 7333, 0, NULL, '2022-12-15 13:07:15', '2023-07-07 16:22:49'),
(57, 'CHEERA BHAJA 100 Gm.', NULL, 'lbbxx9emas', 'CHEERA BHAJA 100 Gm.', NULL, 1, 'public/item_primary_images/1671109836-pi7-image-cheerebhaja.jpg', 25.00, 25.00, 1, 'This product is currently not in stock', NULL, 0, '3', 100, 'CHEERA BHAJA (50 Gm)', 'CHEERA BHAJA (50 Gm)', 'index,follow', 'CHEERA BHAJA (50 Gm)', 1, 0, 0, 0, '6', 'INDIAN SNAKES', 930, 957, 0, NULL, '2022-12-15 13:10:36', '2023-07-07 16:22:04'),
(58, 'JHAL CHANACHUR 200 GM.', NULL, 'bqgfyangxr', 'jhal-chanachur-200-gm', NULL, 1, 'public/item_primary_images/1671109963-pi7-image-jhal-chanachur-200gm.jpg', 45.00, 45.00, 1, 'This product is currently not in stock', NULL, 0, '1', 100, 'JHAL CHANACHUR 200 GM.', 'JHAL CHANACHUR 200 GM.', 'index,follow', 'JHAL CHANACHUR 200 GM.', 1, 0, 0, 0, '6', 'INDIAN SNAKES', 376, 396, 0, NULL, '2022-12-15 13:12:43', '2023-07-07 15:41:10'),
(59, 'JHAL CHANACHUR 400 GM.', NULL, 'n1768e4dt1', 'jhal-chanachur-400-gm', NULL, 1, 'public/item_primary_images/1671110080-pi7-image-jhal-chanachur-400gm.jpg', 90.00, 90.00, 1, 'This product is currently not in stock', NULL, 0, '1', 100, 'JHAL CHANACHUR 400 GM.', 'JHAL CHANACHUR 400 GM.', 'index,follow', 'JHAL CHANACHUR 400 GM.', 1, 0, 0, 0, '6', 'INDIAN SNAKES', 159, 184, 0, NULL, '2022-12-15 13:14:40', '2023-07-04 15:54:11'),
(60, 'NABARATNA CHANACHUR 200 GM.', NULL, 'h02kcnt7qs', 'nabaratna-chanachur-200-gm', NULL, 1, 'public/item_primary_images/1671110247-pi7-image-nabaranta-chanachur-200gm.jpg', 45.00, 45.00, 1, 'This product is currently not in stock', NULL, 0, '1', 100, 'NABARATNA CHANACHUR 200 GM.', 'NABARATNA CHANACHUR 200 GM.', 'index,follow', 'NABARATNA CHANACHUR 200 GM.', 1, 0, 0, 0, '6', 'INDIAN SNAKES', 595, 636, 0, NULL, '2022-12-15 13:17:27', '2023-07-07 15:47:38'),
(61, 'NABARATNA CHANACHUR 400 GM.', NULL, 'tca6lxuquu', 'nabaratna-chanachur-400-gm', NULL, 1, 'public/item_primary_images/1671110373-pi7-image-nabaranta-chanachur-400gm.jpg', 90.00, 90.00, 1, 'This product is currently not in stock', NULL, 0, '1', 100, 'NABARATNA CHANACHUR 400 GM.', 'NABARATNA CHANACHUR 400 GM.', 'index,follow', 'NABARATNA CHANACHUR 400 GM.', 1, 0, 0, 0, '6', 'INDIAN SNAKES', 264, 320, 0, NULL, '2022-12-15 13:19:33', '2023-07-07 16:08:54'),
(62, 'Potato Chips (70 Gm)', NULL, 'snfo6d7xem', 'potato-chips-70-gm', NULL, 1, 'public/item_primary_images/1671110529-pi7-image-potatochips.jpg', 22.00, 22.00, 1, 'This product is currently not in stock', NULL, 0, '1', 100, 'Potato Chips (70 Gm)', 'Potato Chips (70 Gm)', 'index,follow', 'Potato Chips (70 Gm)', 1, 0, 0, 0, '6', 'INDIAN SNAKES', 5674, 5772, 1, NULL, '2022-12-15 13:22:09', '2023-07-07 16:22:49'),
(63, 'JHAL CHANACHUR 200 GM.', NULL, '1qqzhps30q', 'jhal-chanachur-200-gm', NULL, 0, 'public/item_primary_images/1671368379-download.jpg', 45.00, 45.00, 1, 'This product is currently not in stock', NULL, 0, '1', 100, 'JHAL CHANACHUR 200 GM.', 'JHAL CHANACHUR 200 GM.', 'index,follow', 'JHAL CHANACHUR 200 GM.', 1, 0, 0, 0, '6', 'INDIAN SNAKES', 43, 43, 0, NULL, '2022-12-15 13:24:17', '2023-01-10 12:43:02'),
(64, 'JHAL CHANACHUR 400 GM.', NULL, 'lt2h24dpd3', 'jhal-chanachur-400-gm', NULL, 0, 'public/item_primary_images/1671368416-download.jpg', 90.00, 90.00, 1, 'This product is currently not in stock', NULL, 0, '1', 100, 'JHAL CHANACHUR 400 GM.', 'JHAL CHANACHUR 400 GM.', 'index,follow', 'JHAL CHANACHUR 400 GM.', 1, 0, 0, 0, '6', 'INDIAN SNAKES', 24, 28, 0, NULL, '2022-12-15 13:26:28', '2023-01-10 12:42:59'),
(65, 'Tangy Orange Pastry', NULL, '73mfouen82', 'tangy-orange-pastry', NULL, 0, 'public/item_primary_images/1671111175-pi7-image-tangyorange1.jpg', 20.00, 20.00, 1, 'This product is currently not in stock', NULL, 0, '1', 100, 'Tangy Orange Pastry', 'Tangy Orange Pastry', 'index,follow', 'Tangy Orange Pastry', 1, 0, 0, 0, '7', 'PASTRY', 2172, 2336, 0, NULL, '2022-12-15 13:32:55', '2023-06-16 06:12:17'),
(66, 'Black Forest Pastry', NULL, 'foenty161e', 'black-forest-pastry', NULL, 1, 'public/item_primary_images/1671111479-pi7-image-blackforestpastry4.jpg', 40.00, 40.00, 1, 'This product is currently not in stock', NULL, 0, '1', 100, 'Black Forest Pastry', 'Black Forest Pastry', 'index,follow', 'Black Forest Pastry', 1, 0, 0, 0, '7', 'PASTRY', 11860, 12108, 0, NULL, '2022-12-15 13:37:59', '2023-07-07 16:31:22'),
(67, 'Butter Scotch Pastry', NULL, 'm190uxv869', 'Butter Scotch Pastry', NULL, 1, 'public/item_primary_images/1671111631-pi7-image-butterscotchpastry1.jpg', 25.00, 25.00, 1, 'This product is currently not in stock', NULL, 0, '1', 100, 'Butterscotch Pastry', 'Butterscotch Pastry', 'index,follow', 'Butterscotch Pastry', 1, 0, 0, 0, '7', 'PASTRY', 14214, 14374, 0, NULL, '2022-12-15 13:40:31', '2023-07-07 16:31:22'),
(68, 'Choco Chips Pastry', NULL, 'd940drybrl', 'choco-chips-pastry', NULL, 1, 'public/item_primary_images/1671111768-pi7-image-chocochipspastry1.jpg', 28.00, 28.00, 1, 'This product is currently not in stock', NULL, 0, '1', 100, 'Choco Chips Pastry', 'Choco Chips Pastry', 'index,follow', 'Choco Chips Pastry', 1, 0, 0, 0, '7', 'PASTRY', 13236, 13469, 0, NULL, '2022-12-15 13:42:48', '2023-07-07 16:31:22'),
(69, 'Choco Crunch Pastry', NULL, 'clg1g5lkld', 'choco-crunch-pastry', NULL, 1, 'public/item_primary_images/1671111891-pi7-image-chococrunch1.jpg', 28.00, 28.00, 1, 'This product is currently not in stock', NULL, 0, '3', 100, 'Choco Crunch Pastry', 'Choco Crunch Pastry', 'index,follow', 'Choco Crunch Pastry', 1, 0, 0, 0, '7', 'PASTRY', 12513, 12820, 0, NULL, '2022-12-15 13:44:51', '2023-07-07 16:22:49'),
(70, 'Choco Donut', NULL, 'eatnxx2qpy', 'choco-donut', NULL, 1, 'public/item_primary_images/1671112051-pi7-image-chocodonut1.jpg', 35.00, 35.00, 1, 'This product is currently not in stock', NULL, 0, '1', 100, 'Choco Donut', 'Choco Donut', 'index,follow', 'Choco Donut', 1, 0, 0, 0, '7', 'PASTRY', 9798, 10047, 0, NULL, '2022-12-15 13:47:31', '2023-07-07 16:31:22'),
(71, 'Choco Lava', NULL, 'tuvxscmonb', 'choco-lava', NULL, 1, 'public/item_primary_images/1671112219-pi7-image-chocolava1.jpg', 40.00, 40.00, 1, 'This product is currently not in stock', NULL, 0, '1', 100, 'Choco Lava', 'Choco Lava', 'index,follow', 'Choco Lava', 1, 0, 0, 0, '7', 'PASTRY', 7949, 8427, 0, NULL, '2022-12-15 13:50:19', '2023-07-07 16:22:49'),
(72, 'Choco Mousse', NULL, '9gt6y8es3s', 'choco-mousse', NULL, 1, 'public/item_primary_images/1671112324-pi7-image-chocomousse.jpg', 40.00, 40.00, 1, 'This product is currently not in stock', NULL, 0, '1', 100, 'Choco Mousse', 'Choco Mousse', 'index,follow', 'Choco Mousse', 1, 0, 0, 0, '7', 'PASTRY', 13264, 13397, 0, NULL, '2022-12-15 13:52:04', '2023-07-07 16:22:49'),
(73, 'Choco Sacher Pastry', NULL, 'rq9dn2024a', 'choco-sacher-pastry', NULL, 1, 'public/item_primary_images/1671112445-pi7-image-chocosacher1.jpg', 44.00, 44.00, 1, 'This product is currently not in stock', NULL, 0, '1', 100, 'Choco Sacher Pastry', 'Choco Sacher Pastry', 'index,follow', 'Choco Sacher Pastry', 1, 0, 0, 0, '7', 'PASTRY', 9040, 9400, 0, NULL, '2022-12-15 13:54:05', '2023-07-07 16:22:49'),
(74, 'Choco Swiss Roll', NULL, '6baleo010r', 'choco-swiss-roll', NULL, 1, 'public/item_primary_images/1671112583-pi7-image-chocolateswissroll1.jpg', 80.00, 80.00, 1, 'This product is currently not in stock', NULL, 0, '3', 100, 'Choco Swiss Roll', 'Choco Swiss Roll', 'index,follow', 'Choco Swiss Roll', 1, 0, 0, 0, '7', 'PASTRY', 6219, 6414, 0, NULL, '2022-12-15 13:56:23', '2023-07-07 16:22:04'),
(75, 'Choco Truffle Pastry', NULL, 'ipiz5rrrnz', 'choco-truffle-pastry', NULL, 1, 'public/item_primary_images/1671185636-pi7-image-chocolatetrufflepastry1.jpg', 28.00, 28.00, 1, 'This product is currently not in stock', NULL, 0, '1', 100, 'Choco Truffle Pastry', 'Choco Truffle Pastry', 'index,follow', 'Choco Truffle Pastry', 1, 0, 0, 0, '7', 'PASTRY', 13119, 13432, 2, NULL, '2022-12-16 10:13:56', '2023-07-07 16:31:22'),
(76, 'Coffee Toffee Pastry', NULL, 'pl8n3p8727', 'coffee-toffee-pastry', NULL, 1, 'public/item_primary_images/1671185925-pi7-image-coffeetoffeepastry1.jpg', 30.00, 30.00, 1, 'This product is currently not in stock', NULL, 0, '3', 100, 'Coffee Toffee Pastry', 'Coffee Toffee Pastry', 'index,follow', 'Coffee Toffee Pastry', 1, 0, 0, 0, '7', 'PASTRY', 12217, 12549, 0, NULL, '2022-12-16 10:18:45', '2023-07-07 16:31:22'),
(85, 'SWISS CHOCOLATE PASTRY', NULL, 'qzwtimcvux', 'swiss-chocolate-pastry', NULL, 1, 'public/item_primary_images/1671189113-pi7-image-swisschocolatepastry.jpg', 44.00, 44.00, 1, 'This product is currently not in stock', NULL, 0, '1', 100, 'SWISS CHOCOLATE PASTRY', 'SWISS CHOCOLATE PASTRY', 'index,follow', 'SWISS CHOCOLATE PASTRY', 1, 0, 0, 0, '7', 'PASTRY', 5806, 6075, 0, NULL, '2022-12-16 11:11:53', '2023-07-07 16:31:22'),
(77, 'KACCHA MANGO MOUSSE (Eggless)', NULL, '391n1dntgi', 'kaccha-mango-mousse-eggless', NULL, 0, 'public/item_primary_images/1671187686-pi7-image-kanchamangomousse1.jpg', 40.00, 40.00, 0, 'This product is currently not in stock', NULL, 0, '1', 100, 'KACCHA MANGO MOUSSE (Eggless)', 'KACCHA MANGO MOUSSE (Eggless)', 'index,follow', 'KACCHA MANGO MOUSSE (Eggless)', 1, 0, 0, 0, '7', 'PASTRY', 460, 485, 0, NULL, '2022-12-16 10:48:06', '2023-06-11 08:45:28'),
(78, 'KACCHA MANGO PASTRY', NULL, 'nqomuajb1a', 'kaccha-mango-pastry', NULL, 1, 'public/item_primary_images/1671187817-pi7-image-kanchamangopastry1.jpg', 28.00, 28.00, 1, 'This product is currently not in stock', NULL, 0, '1', 100, 'KACCHA MANGO PASTRY', 'KACCHA MANGO PASTRY', 'index,follow', 'KACCHA MANGO PASTRY', 1, 0, 0, 0, '7', 'PASTRY', 9414, 9710, 0, NULL, '2022-12-16 10:50:17', '2023-07-07 16:22:49'),
(79, 'Mango Mousse', NULL, 'nhzcbpz8m1', 'mango-mousse', NULL, 1, 'public/item_primary_images/1671188131-pi7-image-mangomousse2.jpg', 40.00, 40.00, 1, 'This product is currently not in stock', NULL, 0, '1', 100, 'Mango Mousse', 'Mango Mousse', 'index,follow', 'Mango Mousse', 1, 0, 0, 0, '7', 'PASTRY', 9449, 9838, 0, NULL, '2022-12-16 10:54:31', '2023-07-07 16:31:22'),
(80, 'Mango Pastry', NULL, '2bxc41d1bx', 'mango-pastry', NULL, 1, 'public/item_primary_images/1671188355-pi7-image-mangopastry.jpg', 28.00, 28.00, 1, 'This product is currently not in stock', NULL, 0, '1', 100, 'Mango Pastry', 'Mango Pastry', 'index,follow', 'Mango Pastry', 1, 0, 0, 0, '7', 'PASTRY', 13915, 14161, 0, NULL, '2022-12-16 10:59:15', '2023-07-07 16:22:49'),
(81, 'Red Velvet Pastry', NULL, 'n23by62z5t', 'red-velvet-pastry', NULL, 1, 'public/item_primary_images/1671188528-pi7-image-redvelvetpastry1.jpg', 46.00, 46.00, 1, 'This product is currently not in stock', NULL, 0, '1', 100, 'Red Velvet Pastry', 'Red Velvet Pastry', 'index,follow', 'Red Velvet Pastry', 1, 0, 0, 0, '7', 'PASTRY', 6667, 6870, 0, NULL, '2022-12-16 11:02:08', '2023-07-07 16:31:22'),
(82, 'Rum Ball', NULL, 'rpsvx041y2', 'rum-ball', NULL, 0, 'public/item_primary_images/1671188678-pi7-image-rumball1.jpg', 22.00, 22.00, 1, 'This product is currently not in stock', NULL, 0, '1', 100, 'Rum Ball', 'Rum Ball', 'index,follow', 'Rum Ball', 1, 0, 0, 0, '7', 'PASTRY', 3782, 4036, 0, NULL, '2022-12-16 11:04:38', '2023-06-20 11:28:14'),
(83, 'Strawberry Pastry', NULL, 'i13d0n8jg4', 'strawberry-pastry', NULL, 1, 'public/item_primary_images/1671188810-pi7-image-strawberrypastry3.jpg', 25.00, 25.00, 1, 'This product is currently not in stock', NULL, 0, '1', 100, 'Strawberry Pastry', 'Strawberry Pastry', 'index,follow', 'Strawberry Pastry', 1, 0, 0, 0, '7', 'PASTRY', 13194, 13557, 0, NULL, '2022-12-16 11:06:50', '2023-07-07 16:31:22'),
(84, 'Strawberry Swiss Roll', NULL, '35ent8p58c', 'strawberry-swiss-roll', NULL, 1, 'public/item_primary_images/1671188965-pi7-image-strawberryswissroll1.jpg', 80.00, 80.00, 1, 'This product is currently not in stock', NULL, 0, '1', 100, 'Strawberry Swiss Roll', 'Strawberry Swiss Roll', 'index,follow', 'Strawberry Swiss Roll', 1, 0, 0, 0, '7', 'PASTRY', 5480, 5758, 0, NULL, '2022-12-16 11:09:25', '2023-07-07 16:14:39'),
(86, 'White Forest Pastry', NULL, '967t6fttcm', 'white-forest-pastry', NULL, 1, 'public/item_primary_images/1671189323-pi7-image-whiteforestpastry.jpg', 40.00, 40.00, 1, 'This product is currently not in stock', NULL, 0, '1', 100, 'White Forest Pastry', 'White Forest Pastry', 'index,follow', 'White Forest Pastry', 1, 0, 0, 0, '7', 'PASTRY', 10033, 10374, 0, NULL, '2022-12-16 11:15:23', '2023-07-07 16:22:49'),
(87, 'GULAB JAMUN (5 PCS) CONTAINER', NULL, '2ps3hpzss0', 'gulab-jamun-5-pcs-container', NULL, 1, 'public/item_primary_images/1671189551-pi7-image-gulabjamun.JPG', 60.00, 60.00, 1, 'This product is currently not in stock', NULL, 0, '1', 100, 'GULAB JAMUN (5 PCS) CONTAINER', 'GULAB JAMUN (5 PCS) CONTAINER', 'index,follow', 'GULAB JAMUN (5 PCS) CONTAINER', 1, 0, 0, 0, '8', 'SWEETS', 2576, 2609, 0, NULL, '2022-12-16 11:19:11', '2023-07-07 16:22:49'),
(88, 'Misti Madhur', NULL, 'nl5wywwwwe', 'misti-madhur', NULL, 1, 'public/item_primary_images/1671189766-pi7-image-misthimadhur.jpg', 15.00, 15.00, 1, 'This product is currently not in stock', NULL, 0, '1', 100, 'Misti Madhur', 'Misti Madhur', 'index,follow', 'Misti Madhur', 1, 0, 0, 0, '8', 'SWEETS', 2311, 2387, 0, NULL, '2022-12-16 11:22:46', '2023-07-07 15:58:44'),
(89, 'Motichur Laddu', NULL, 'pbr08i175a', 'motichur-laddu', NULL, 1, 'public/item_primary_images/1671189886-pi7-image-motichur1-min.JPG', 12.00, 12.00, 1, 'This product is currently not in stock', NULL, 0, '1', 100, 'Motichur Laddu', 'Motichur Laddu', 'index,follow', 'Motichur Laddu', 1, 0, 0, 0, '8', 'SWEETS', 3492, 3616, 0, NULL, '2022-12-16 11:24:46', '2023-07-07 16:31:22'),
(90, 'Veg Burger', NULL, 'rt2mtzj810', 'veg-burger', NULL, 1, 'public/item_primary_images/1671190675-pi7-image-vegburger.jpg', 35.00, 35.00, 1, 'This product is currently not in stock', NULL, 0, '1', 100, 'Veg Burger', 'Veg Burger', 'index,follow', 'Veg Burger', 1, 0, 0, 0, '9', 'VEG SAVORIES', 11254, 11626, 1, NULL, '2022-12-16 11:37:55', '2023-07-07 16:31:22'),
(91, 'Veg Patties', NULL, 'swubyy3gvt', 'veg-patties', NULL, 1, 'public/item_primary_images/1671190737-pi7-image-veg-patties.jpg', 20.00, 20.00, 1, 'This product is currently not in stock', NULL, 0, '1', 100, 'Veg Patties', 'Veg Patties', 'index,follow', 'Veg Patties', 1, 0, 0, 0, '9', 'VEG SAVORIES', 13326, 13658, 2, NULL, '2022-12-16 11:38:57', '2023-07-07 16:22:49'),
(92, 'Mushroom puff', NULL, 'jxk9f1ccrp', 'mushroom-puff', NULL, 0, 'public/item_primary_images/1671190890-pi7-image-mushroompuff.jpg', 22.00, 22.00, 0, 'This product is currently not in stock', NULL, 0, '1', 100, 'Mushroom puff', 'Mushroom puff', 'index,follow', 'Mushroom puff', 1, 0, 0, 0, '9', 'VEG SAVORIES', 4300, 4520, 1, NULL, '2022-12-16 11:41:30', '2023-06-11 08:44:31'),
(93, 'Paneer Puff', NULL, '60ab1briq3', 'paneer-kachori', NULL, 1, 'public/item_primary_images/1671191035-pi7-image-paneerkachori.jpg', 24.00, 24.00, 1, 'This product is currently not in stock', NULL, 0, '1', 100, 'Paneer Kachori', 'Paneer Kachori', 'index,follow', 'Paneer Kachori', 1, 0, 0, 0, '9', 'VEG SAVORIES', 11377, 11834, 0, NULL, '2022-12-16 11:43:55', '2023-07-07 16:22:49'),
(94, 'Veg Cutlet', NULL, 'eun1z7wssf', 'veg-cutlet', NULL, 1, 'public/item_primary_images/1671191186-pi7-image-vegcutlet1.jpg', 16.00, 16.00, 1, 'This product is currently not in stock', NULL, 0, '1', 100, 'Veg Cutlet', 'Veg Cutlet', 'index,follow', 'Veg Cutlet', 1, 0, 0, 0, '9', 'VEG SAVORIES', 8298, 8680, 2, NULL, '2022-12-16 11:46:26', '2023-07-07 16:31:22'),
(95, 'PANEER PUDINA SANDWICH', NULL, 'i83wwzgjp8', 'paneer-pudina-sandwich', NULL, 1, 'public/item_primary_images/1671191378-pi7-image-paneerpudinasandwich.jpg', 30.00, 30.00, 1, 'This product is currently not in stock', NULL, 0, '1', 100, 'PANEER PUDINA SANDWICH', 'PANEER PUDINA SANDWICH', 'index,follow', 'PANEER PUDINA SANDWICH', 1, 0, 0, 0, '9', 'VEG SAVORIES', 8813, 9183, 0, NULL, '2022-12-16 11:49:38', '2023-07-07 16:20:56'),
(96, 'Paneer Tikka Wrap', NULL, 'ors9p5d4ef', 'paneer-tikka-wrap', NULL, 1, 'public/item_primary_images/1671191547-pi7-image-paneertikkawrap.jpg', 34.00, 34.00, 1, 'This product is currently not in stock', NULL, 0, '1', 100, 'Paneer Tikka Wrap', 'Paneer Tikka Wrap', 'index,follow', 'Paneer Tikka Wrap', 1, 0, 0, 0, '9', 'VEG SAVORIES', 12374, 12655, 0, NULL, '2022-12-16 11:52:27', '2023-07-07 16:31:22'),
(97, 'Chicken DD Sandwich', NULL, 'rehq2lmevg', 'Chicken DD Sandwich', NULL, 1, 'public/item_primary_images/1671191914-pi7-image-chickenddsandwitch.jpg', 42.00, 42.00, 1, 'This product is currently not in stock', NULL, 0, '2', 100, 'Chicken D-D S/W', 'Chicken D-D S/W', 'index,follow', 'Chicken D-D S/W', 1, 0, 0, 0, '10', 'NON-VEG SAVORIES', 13065, 13255, 0, NULL, '2022-12-16 11:58:34', '2023-07-07 16:31:22'),
(98, 'Chicken Patties', NULL, 'hk1k78h78k', 'chicken-patties', NULL, 1, 'public/item_primary_images/1671192086-pi7-image-chickenpatties1.jpg', 28.00, 28.00, 1, 'This product is currently not in stock', NULL, 0, '2', 100, 'Chicken Patties', 'Chicken Patties', 'index,follow', 'Chicken Patties', 1, 0, 0, 0, '10', 'NON-VEG SAVORIES', 13740, 14033, 0, NULL, '2022-12-16 12:01:26', '2023-07-07 16:31:22'),
(99, 'Chicken Basket', NULL, 'bubjll7nrh', 'chicken-basket', NULL, 1, 'public/item_primary_images/1671192214-pi7-image-chickenbasket1.jpg', 32.00, 32.00, 1, 'This product is currently not in stock', NULL, 0, '2', 100, 'Chicken Basket', 'Chicken Basket', 'index,follow', 'Chicken Basket', 1, 0, 0, 0, '10', 'NON-VEG SAVORIES', 12667, 12937, 0, NULL, '2022-12-16 12:03:34', '2023-07-07 16:22:49'),
(100, 'Chicken Intranet', NULL, 'k50nwfgpp5', 'chicken-intranet', NULL, 1, 'public/item_primary_images/1671192356-pi7-image-chickeninternet1.jpg', 33.00, 33.00, 1, 'This product is currently not in stock', NULL, 0, '2', 100, 'Chicken Intranet', 'Chicken Intranet', 'index,follow', 'Chicken Intranet', 1, 0, 0, 0, '10', 'NON-VEG SAVORIES', 11889, 12267, 1, NULL, '2022-12-16 12:05:56', '2023-07-07 16:31:22'),
(101, 'Chicken Burger', NULL, '9d08bldu87', 'chicken-burger', NULL, 0, 'public/item_primary_images/1671192466-pi7-image-chickenburger.jpg', 50.00, 50.00, 1, 'This product is currently not in stock', NULL, 0, '2', 100, 'Chicken Burger', 'Chicken Burger', 'index,follow', 'Chicken Burger', 1, 0, 0, 0, '10', 'NON-VEG SAVORIES', 4611, 4653, 1, NULL, '2022-12-16 12:07:46', '2023-02-23 12:41:42'),
(102, 'Chicken Spring Roll', NULL, 'k0pz3byhvt', 'chicken-spring-roll', NULL, 1, 'public/item_primary_images/1671192609-pi7-image-chickenspringroll1.jpg', 30.00, 30.00, 1, 'This product is currently not in stock', NULL, 0, '2', 100, 'Chicken Spring Roll', 'Chicken Spring Roll', 'index,follow', 'Chicken Spring Roll', 1, 0, 0, 0, '10', 'NON-VEG SAVORIES', 14007, 14193, 1, NULL, '2022-12-16 12:10:09', '2023-07-07 16:31:22'),
(103, 'Chicken 65', NULL, 'lf0qkmho5b', 'chicken-65', NULL, 1, 'public/item_primary_images/1671192812-pi7-image-chicken651.jpg', 45.00, 45.00, 1, 'This product is currently not in stock', NULL, 0, '2', 100, 'Chicken 65', 'Chicken 65', 'index,follow', 'Chicken 65', 1, 0, 0, 0, '10', 'NON-VEG SAVORIES', 14539, 14685, 1, NULL, '2022-12-16 12:13:32', '2023-07-07 16:22:49'),
(104, 'Chicken Pizza', NULL, 'ssj2xtvivi', 'chicken-pizza', NULL, 1, 'public/item_primary_images/1671192931-pi7-image-chickenpizza.jpeg', 45.00, 45.00, 1, 'This product is currently not in stock', NULL, 0, '2', 100, 'Chicken Pizza', 'Chicken Pizza', 'index,follow', 'Chicken Pizza', 1, 0, 0, 0, '10', 'NON-VEG SAVORIES', 14310, 14460, 0, NULL, '2022-12-16 12:15:31', '2023-07-07 16:31:22'),
(105, 'Chicken Cutlet', NULL, 'r0o2p3hmqj', 'chicken-cutlet', NULL, 1, 'public/item_primary_images/1671193167-pi7-image-chickencutlet.jpg', 50.00, 50.00, 1, 'This product is currently not in stock', NULL, 0, '2', 100, 'Chicken Cutlet', 'Chicken Cutlet', 'index,follow', 'Chicken Cutlet', 1, 0, 0, 0, '10', 'NON-VEG SAVORIES', 13712, 13857, 0, NULL, '2022-12-16 12:19:27', '2023-07-07 16:31:22'),
(106, 'CHICKEN CROISSANT', NULL, 'ivw38hwnny', 'chicken-croissant', NULL, 1, 'public/item_primary_images/1671193306-pi7-image-chickencrossiant.jpg', 35.00, 35.00, 1, 'This product is currently not in stock', NULL, 0, '2', 100, 'CHICKEN CROISSANT', 'CHICKEN CROISSANT', 'index,follow', 'CHICKEN CROISSANT', 1, 0, 0, 0, '10', 'NON-VEG SAVORIES', 11007, 11297, 0, NULL, '2022-12-16 12:21:46', '2023-07-07 16:22:49'),
(107, 'Cheesy Classic Chicken', NULL, '9hxdyzji3i', 'cheesy-classic-chicken', NULL, 1, 'public/item_primary_images/1671193458-pi7-image-cheesyclassicchicken.jpg', 34.00, 34.00, 1, 'This product is currently not in stock', NULL, 0, '2', 100, 'Cheesy Classic Chicken', 'Cheesy Classic Chicken', 'index,follow', 'Cheesy Classic Chicken', 1, 0, 0, 0, '10', 'NON-VEG SAVORIES', 11026, 11389, 2, NULL, '2022-12-16 12:24:18', '2023-07-07 16:22:49'),
(108, 'Chicken Samosa', NULL, 'p8g675h3hq', 'chicken-samosa', NULL, 1, 'public/item_primary_images/1671193580-pi7-image-chickensamosa1.jpg', 18.00, 18.00, 1, 'This product is currently not in stock', NULL, 0, '2', 100, 'Chicken Samosa', 'Chicken Samosa', 'index,follow', 'Chicken Samosa', 1, 0, 0, 0, '10', 'NON-VEG SAVORIES', 8114, 8341, 1, NULL, '2022-12-16 12:26:20', '2023-07-07 16:20:56'),
(109, 'FISH CHOP', NULL, 'ne8sltm6h7', 'fish-chop', NULL, 1, 'public/item_primary_images/1671193708-pi7-image-fishchop.jpg', 18.00, 18.00, 1, 'This product is currently not in stock', NULL, 0, '2', 100, 'FISH CHOP', 'FISH CHOP', 'index,follow', 'FISH CHOP', 1, 0, 0, 0, '10', 'NON-VEG SAVORIES', 10017, 10309, 1, NULL, '2022-12-16 12:28:28', '2023-07-07 16:31:22'),
(110, 'FISH ROLL', NULL, '9cve7el3i4', 'fish-roll', NULL, 0, 'public/item_primary_images/1671193824-pi7-image-fishroll.jpeg', 35.00, 35.00, 1, 'This product is currently not in stock', NULL, 0, '2', 100, 'FISH ROLL', 'FISH ROLL', 'index,follow', 'FISH ROLL', 1, 0, 0, 0, '10', 'NON-VEG SAVORIES', 5813, 6184, 1, NULL, '2022-12-16 12:30:24', '2023-06-16 06:12:03'),
(111, 'Milk Bread 400gm', NULL, 'puakepgpv9', 'milk-bread-400gm', NULL, 1, 'public/item_primary_images/1671276170-pi7-image-milkbread.jpg', 28.00, 28.00, 1, 'This product is currently not in stock', NULL, 0, '1', 100, 'Milk Bread 400gm', 'Milk Bread 400gm', 'index,follow', 'Milk Bread 400gm', 1, 0, 0, 0, '2', 'BREAD', 6761, 7060, 0, NULL, '2022-12-17 11:22:50', '2023-07-07 16:22:49'),
(112, 'BLUEBERRY CHEESE CAKE 500Gm', NULL, 'dl597tci6e', 'blueberry-cheese-cake-500gm', NULL, 0, 'public/item_primary_images/1671277166-pi7-image-blueberrycheesecake.jpg', 440.00, 440.00, 0, 'This product is currently not in stock', NULL, 0, '3', 100, 'BLUEBERRY CHEESE CAKE 500Gm', 'BLUEBERRY CHEESE CAKE 500Gm', 'index,follow', 'BLUEBERRY CHEESE CAKE 500Gm', 1, 0, 0, 0, '5', 'GATEAUX', 852, 881, 0, NULL, '2022-12-17 11:39:26', '2023-06-11 10:35:15'),
(113, 'Honey Rose Cake', NULL, '5cqcbr3in8', 'honey-rose-cake', NULL, 0, 'public/item_primary_images/1671277421-pi7-image-honeyrose.jpg', 275.00, 275.00, 0, 'This product is currently not in stock', NULL, 0, '3', 100, 'Honey Rose Cake', 'Honey Rose Cake', 'index,follow', 'Honey Rose Cake', 1, 0, 0, 0, '5', 'GATEAUX', 632, 650, 0, NULL, '2022-12-17 11:43:41', '2023-06-11 08:43:18'),
(114, 'ALPHANSO MANGO CAKE 500Gm.', NULL, '5vuoqniol5', 'alphanso-mango-cake-500gm', NULL, 0, 'public/item_primary_images/1671277778-pi7-image-alfansomango.jpg', 310.00, 310.00, 0, 'This product is currently not in stock', NULL, 0, '3', 100, 'ALPHANSO MANGO CAKE 500Gm.', 'ALPHANSO MANGO CAKE 500Gm.', 'index,follow', 'ALPHANSO MANGO CAKE 500Gm.', 1, 0, 0, 0, '5', 'GATEAUX', 313, 315, 0, NULL, '2022-12-17 11:49:38', '2023-06-11 08:43:26'),
(115, 'KANCHA MANGO CAKE 500Gm.', NULL, 'btmqh00r9l', 'kancha-mango-cake-500gm', NULL, 0, 'public/item_primary_images/1671277940-pi7-image-kanchamango.jpg', 310.00, 310.00, 0, 'This product is currently not in stock', NULL, 0, '3', 100, 'KANCHA MANGO CAKE 500Gm.', 'KANCHA MANGO CAKE 500Gm.', 'index,follow', 'KANCHA MANGO CAKE 500Gm.', 1, 0, 0, 0, '5', 'GATEAUX', 40, 39, 0, NULL, '2022-12-17 11:52:20', '2022-12-22 08:03:00'),
(116, 'PINEAPPLE FRESH 500 Gm.', NULL, 'yjhsrxp4yr', 'pineapple-fresh-500-gm', NULL, 0, 'public/item_primary_images/1671278117-pi7-image-pineapplefresh.jpg', 400.00, 400.00, 1, 'This product is currently not in stock', NULL, 0, '3', 100, 'PINEAPPLE FRESH 500 Gm.', 'PINEAPPLE FRESH 500 Gm.', 'index,follow', 'PINEAPPLE FRESH 500 Gm.', 1, 0, 0, 0, '5', 'GATEAUX', 92, 89, 0, NULL, '2022-12-17 11:55:17', '2022-12-22 08:02:21'),
(117, 'SQUARE CRUSH (Eggless) 500 Gm.', NULL, '9sxjpqi4q8', 'square-crush-eggless-500-gm', NULL, 0, 'public/item_primary_images/1671278472-pi7-image-squarecrush.jpeg', 340.00, 340.00, 1, 'This product is currently not in stock', NULL, 0, '1', 100, 'SQUARE CRUSH (Eggless) 500 Gm.', 'SQUARE CRUSH (Eggless) 500 Gm.', 'index,follow', 'SQUARE CRUSH (Eggless) 500 Gm.', 1, 0, 0, 0, '5', 'GATEAUX', 103, 100, 0, NULL, '2022-12-17 12:01:12', '2022-12-22 08:02:08'),
(118, 'SQUARE CRUSH 1KG', NULL, '7d85ejdvwm', 'square-crush-1kg', NULL, 0, 'public/item_primary_images/1671278531-pi7-image-squarecrush.jpeg', 600.00, 600.00, 1, 'This product is currently not in stock', NULL, 0, '1', 100, 'SQUARE CRUSH 1KG', 'SQUARE CRUSH 1KG', 'index,follow', 'SQUARE CRUSH 1KG', 1, 0, 0, 0, '5', 'GATEAUX', 1, 0, 0, NULL, '2022-12-17 12:02:11', '2022-12-18 05:16:26'),
(119, 'Fruit Pastry (Veg)', NULL, 'iqutsxejvf', 'fruit-pastry-veg', NULL, 0, 'public/item_primary_images/1671278981-pi7-image-fruitpastry.jpg', 25.00, 25.00, 1, 'This product is currently not in stock', NULL, 0, '1', 100, 'Fruit Pastry (Veg)', 'Fruit Pastry (Veg)', 'index,follow', 'Fruit Pastry (Veg)', 1, 0, 0, 0, '7', 'PASTRY', 3, 2, 0, NULL, '2022-12-17 12:09:41', '2022-12-18 11:52:19'),
(120, 'HONEY ROSE - PASTRY', NULL, 'kkxkgzc4tj', 'honey-rose-pastry', NULL, 0, 'public/item_primary_images/1671279574-pi7-image-honeyrosepastry1.jpg', 30.00, 30.00, 1, 'This product is currently not in stock', NULL, 0, '1', 100, 'HONEY ROSE - PASTRY', 'HONEY ROSE - PASTRY', 'index,follow', 'HONEY ROSE - PASTRY', 1, 0, 0, 0, '7', 'PASTRY', 2, 1, 0, NULL, '2022-12-17 12:19:34', '2022-12-18 11:52:06');
INSERT INTO `food_items` (`id`, `item_name`, `item_search_query`, `item_web_id`, `item_slug`, `item_description`, `item_status`, `primary_image`, `item_mrp`, `item_sp`, `stock_status`, `stock_message`, `tax_slab_id`, `tax_amount`, `food_type`, `item_limit`, `meta_title`, `meta_keywords`, `meta_robots`, `meta_description`, `publish_status`, `offer_status`, `variant_add_status`, `addon_add_status`, `cat_id`, `category_name`, `order_analytics`, `cart_analytics`, `wishlist_analytics`, `offer_id`, `created_at`, `updated_at`) VALUES
(121, 'Malta Orange Pastry', NULL, 'slmjcrg18s', 'malta-orange-pastry', NULL, 1, 'public/item_primary_images/1671280646-pi7-image-malta-orange.jpg', 25.00, 25.00, 1, 'This product is currently not in stock', NULL, 0, '1', 100, 'Malta Orange Pastry', 'Malta Orange Pastry', 'index,follow', 'Malta Orange Pastry', 1, 0, 0, 0, '7', 'PASTRY', 11954, 12378, 1, NULL, '2022-12-17 12:37:26', '2023-07-07 16:31:22'),
(122, 'VALENTINES RED HEART CHOCO BOX (S)', NULL, 'myvkl4c8v9', 'valentines-red-heart-choco-box-s', NULL, 1, 'public/item_primary_images/1671281305-pi7-image-redheart.jpg', 150.00, 150.00, 1, 'This product is currently not in stock', NULL, 0, '1', 100, 'VALENTINES RED HEART CHOCO BOX (S)', 'VALENTINES RED HEART CHOCO BOX (S)', 'index,follow', 'VALENTINES RED HEART CHOCO BOX (S)', 1, 0, 0, 0, '3', 'CHOCOLATES', 990, 1030, 0, NULL, '2022-12-17 12:48:25', '2023-07-07 15:49:39'),
(123, 'VALENTINES RED HEART CHOCO BOX (B)', NULL, '3kh778vuf2', 'valentines-red-heart-choco-box-b', NULL, 1, 'public/item_primary_images/1671281360-pi7-image-redheart.jpg', 180.00, 180.00, 1, 'This product is currently not in stock', NULL, 0, '1', 100, 'VALENTINES RED HEART CHOCO BOX (B)', 'VALENTINES RED HEART CHOCO BOX (B)', 'index,follow', 'VALENTINES RED HEART CHOCO BOX (B)', 1, 0, 0, 0, '3', 'CHOCOLATES', 1046, 1073, 1, NULL, '2022-12-17 12:49:20', '2023-07-07 15:52:38'),
(212, 'CHOCO BLAST', NULL, 'nuq6wmup71', 'choco-blast', NULL, 1, 'public/item_primary_images/1687260597-choco-blast.jpg', 28.00, 28.00, 1, 'SORRY OUT OF STOCK', NULL, 0, '2', 500, 'CHOCO BLAST', 'CHOCO BLAST', 'index,follow', 'CHOCO BLAST', 1, 0, 0, 0, '7', 'PASTRY', 1136, 1169, 0, NULL, '2023-06-20 11:29:57', '2023-07-07 16:31:22'),
(150, 'ELEGANCE TREAT', NULL, '5egjncmjz0', 'elegance-treat', NULL, 1, 'public/item_primary_images/1676289551-download.jpg', 130.00, 130.00, 1, 'Sorry Out Of Stock', NULL, 0, '1', 100, 'ELEGANCE TREAT', 'ELEGANCE TREAT', 'index,follow', 'ELEGANCE TREAT', 1, 0, 0, 0, '3', 'CHOCOLATES', 235, 255, 0, NULL, '2023-02-13 11:59:11', '2023-07-07 15:38:57'),
(156, 'MARBLE CRAZE', NULL, '724bp0omcg', 'marble-craze', NULL, 1, 'public/item_primary_images/1677159399-marble-craze.jpg', 260.00, 260.00, 1, 'Sorry Out Of Stock', NULL, 0, '2', 100, 'Marble Craze', 'Marble Craze', 'index,follow', 'Marble Craze', 1, 0, 0, 0, '5', 'GATEAUX', 5369, 5632, 1, NULL, '2023-02-23 13:36:39', '2023-07-07 16:27:51'),
(124, 'COCTAIL SAMOSA (200gm.)', NULL, 'lvbm9ml1fa', 'coctail-samosa-200gm', NULL, 1, 'public/item_primary_images/1671286486-pi7-image-cocktailsamosa.jpg', 55.00, 55.00, 1, 'Sorry Out Of Stock', NULL, 0, '1', 100, 'COCTAIL SAMOSA (200gm.)', 'COCTAIL SAMOSA (200gm.)', 'index,follow', 'COCTAIL SAMOSA (200gm.)', 1, 0, 0, 0, '6', 'INDIAN SNAKES', 2378, 2433, 0, NULL, '2022-12-17 14:14:46', '2023-07-07 16:22:04'),
(184, 'Red Velvet Junior', NULL, 'pdjnmzf0ug', 'red-velvet-junior', NULL, 0, 'public/item_primary_images/1682337626-red-velvet-junior.jpg', 350.00, 350.00, 1, 'Sorry Out Of Stock', NULL, 0, '1', 100, 'Red Velvet Junior', 'Red Velvet Junior', 'index,follow', 'Red Velvet Junior', 1, 0, 0, 0, '5', 'GATEAUX', 995, 1067, 0, NULL, '2023-04-24 12:00:26', '2023-07-04 07:27:26'),
(125, 'ELEGANCE TEMPTATION', NULL, 'n3acqbt4g1', 'elegance-temptation', NULL, 1, 'public/item_primary_images/1671368089-download.jpg', 225.00, 225.00, 1, 'Sorry Out Of Stock', NULL, 0, '1', 100, 'ELEGANCE TEMPTATION', 'ELEGANCE TEMPTATION', 'index,follow', 'ELEGANCE TEMPTATION', 1, 0, 0, 0, '3', 'CHOCOLATES', 227, 247, 0, NULL, '2022-12-18 12:54:49', '2023-07-06 15:19:40'),
(126, 'ELEGANCE CELEBRATION', NULL, 'cxx4ferolt', 'elegance-celebration', NULL, 1, 'public/item_primary_images/1671368139-download.jpg', 500.00, 500.00, 1, 'Sorry Out Of Stock', NULL, 0, '1', 100, 'ELEGANCE CELEBRATION', 'ELEGANCE CELEBRATION', 'index,follow', 'ELEGANCE CELEBRATION', 1, 0, 0, 0, '3', 'CHOCOLATES', 48, 60, 0, NULL, '2022-12-18 12:55:39', '2023-06-19 12:10:49'),
(127, 'KAJU BARFI', NULL, 'pbktq91yny', 'kaju-barfi', NULL, 1, 'public/item_primary_images/1671368189-download.jpg', 14.00, 14.00, 1, 'Sorry Out Of Stock', NULL, 0, '1', 100, 'KAJU BARFI', 'KAJU BARFI', 'index,follow', 'KAJU BARFI', 1, 0, 0, 0, '8', 'SWEETS', 4144, 4264, 0, NULL, '2022-12-18 12:56:29', '2023-07-07 16:31:22'),
(128, 'CHICKEN HOTDOG', NULL, 'l95i5r97x4', 'chicken-hotdog', NULL, 1, 'public/item_primary_images/1671368253-download.jpg', 40.00, 40.00, 1, 'Sorry Out Of Stock', NULL, 0, '1', 100, 'CHICKEN HOTDOG', 'CHICKEN HOTDOG', 'index,follow', 'CHICKEN HOTDOG', 1, 0, 0, 0, '10', 'NON-VEG SAVORIES', 12740, 13031, 1, NULL, '2022-12-18 12:57:33', '2023-07-07 16:31:22'),
(129, 'NOLEN GURER MOUSSE (VEG)', NULL, '8vwfnguj2x', 'NOLEN GURER MOUSSE (VEG)', NULL, 0, 'public/item_primary_images/1671368307-download.jpg', 40.00, 40.00, 0, 'Sorry Out Of Stock', NULL, 0, '1', 100, 'NOLEN GUR ER MOUSSE', 'NOLEN GUR ER MOUSSE', 'index,follow', 'NOLEN GUR ER MOUSSE', 1, 0, 0, 0, '7', 'PASTRY', 1837, 1911, 0, NULL, '2022-12-18 12:58:27', '2023-06-11 08:42:56'),
(130, 'Mini Dual Forest Cake', NULL, '77qjopde29', 'mini-dual-forest-cake', NULL, 1, 'public/item_primary_images/1671460302-download.jpg', 300.00, 300.00, 1, 'Sorry Out Of Stock', NULL, 0, '1', 100, 'Mini Dual Forest Cake', 'Mini Dual Forest Cake', 'index,follow', 'Mini Dual Forest Cake', 1, 0, 0, 0, '5', 'GATEAUX', 7960, 8247, 0, NULL, '2022-12-19 14:31:42', '2023-07-07 16:31:22'),
(131, 'MINI RED VELVET', NULL, 'j5tddky8iz', 'mini-red-velvet', NULL, 0, 'public/item_primary_images/1671973143-download.jpg', 350.00, 350.00, 0, 'Sorry Out Of Stock', NULL, 0, '1', 100, 'MINI RED VELVET', 'MINI RED VELVET', 'index,follow', 'MINI RED VELVET', 1, 0, 0, 0, '5', 'GATEAUX', 574, 682, 0, NULL, '2022-12-25 12:59:03', '2023-06-11 08:42:47'),
(132, 'NOLEN GURER AMRITA KUMBHA', NULL, '1yq0twmt2u', 'nolen-gurer-amrita-kumbha', NULL, 0, 'public/item_primary_images/1672402037-amrita-bhando.jpg', 250.00, 250.00, 0, 'Sorry Out Of Stock', NULL, 0, '1', 100, 'NOLEN GURER AMRITA KUMBHA', 'NOLEN GURER AMRITA KUMBHA', 'index,follow', 'NOLEN GURER AMRITA KUMBHA', 1, 0, 0, 0, '5', 'GATEAUX', 901, 921, 1, NULL, '2022-12-30 12:07:17', '2023-06-11 08:42:06'),
(133, 'FRUIT TIME GATEAUX', NULL, 'ckbp6pj1bm', 'fruit-time', NULL, 0, 'public/item_primary_images/1672402109-fruit-time-cake.jpg', 200.00, 200.00, 0, 'Sorry Out Of Stock', NULL, 0, '1', 100, 'FRUIT TIME', 'FRUIT TIME', 'index,follow', 'FRUIT TIME', 1, 0, 0, 0, '5', 'GATEAUX', 255, 285, 1, NULL, '2022-12-30 12:08:29', '2023-06-11 08:41:59'),
(134, 'TIRAMISU', NULL, 'fnqamt7nzg', 'tiramisu', NULL, 0, 'public/item_primary_images/1672402471-tiramisu.jpg', 45.00, 45.00, 0, 'Sorry Out Of Stock', NULL, 0, '1', 100, 'Tiramisu', 'Tiramisu', 'index,follow', 'Tiramisu', 1, 0, 0, 0, '7', 'PASTRY', 686, 735, 0, NULL, '2022-12-30 12:14:31', '2023-06-11 08:41:53'),
(135, 'SQUARE CRUSH (Eggless) 500 Gm.', NULL, '9qsfr0f7af', 'square-crush-eggless-500-gm', NULL, 0, 'public/item_primary_images/1672749067-pi7-image-img-20230103-wa0012.jpg', 340.00, 340.00, 1, 'Sorry Out Of Stock', NULL, 0, '1', 100, 'SQUARE CRUSH (Eggless) 500 Gm.', 'SQUARE CRUSH (Eggless) 500 Gm.', 'index,follow', 'SQUARE CRUSH (Eggless) 500 Gm.', 1, 0, 0, 0, '5', 'GATEAUX', 1251, 1350, 0, NULL, '2023-01-03 12:31:07', '2023-02-23 13:00:00'),
(207, 'CHOCO TRUFFLE CAKE', NULL, 'cbku1e6bit', 'choco-truffle-cake', NULL, 1, 'public/item_primary_images/1686473322-choco-truffle-cake.jpg', 250.00, 250.00, 1, 'SORRY OUT OF STOCK', NULL, 0, '2', 100, 'CHOCO TRUFFLE CAKE', 'CHOCO TRUFFLE CAKE', 'index,follow', 'CHOCO TRUFFLE CAKE', 1, 0, 0, 0, '5', 'GATEAUX', 2092, 2104, 0, NULL, '2023-06-11 08:48:42', '2023-07-07 16:22:49'),
(136, 'TAK JHAL MISTI CHANACHUR 200 GM.', NULL, '4g2inkvjzh', 'tak-jhal-misti-chanachur-200-gm', NULL, 1, 'public/item_primary_images/1673331665-tak-jhal-misthi-chanachur-200gm.jpg', 45.00, 45.00, 1, 'Sorry Out Of Stock', NULL, 0, '1', 100, 'TAK JHAL MISTI CHANACHUR 200 GM.', 'TAK JHAL MISTI CHANACHUR 200 GM.', 'index,follow', 'TAK JHAL MISTI CHANACHUR 200 GM.', 1, 0, 0, 0, '6', 'INDIAN SNAKES', 595, 615, 0, NULL, '2023-01-10 06:21:05', '2023-07-07 15:36:46'),
(137, 'TAK JHAL MISTI CHANACHUR 400 GM.', NULL, 'qhzsf7izwd', 'tak-jhal-misti-chanachur-400-gm', NULL, 1, 'public/item_primary_images/1673331717-tak-jhal-misthi-chanachur-400gm.jpg', 90.00, 90.00, 1, 'Sorry Out Of Stock', NULL, 0, '1', 100, 'TAK JHAL MISTI CHANACHUR 400 GM.', 'TAK JHAL MISTI CHANACHUR 400 GM.', 'index,follow', 'TAK JHAL MISTI CHANACHUR 400 GM.', 1, 0, 0, 0, '6', 'INDIAN SNAKES', 241, 270, 0, NULL, '2023-01-10 06:21:57', '2023-07-06 15:52:37'),
(138, 'BREAK TIME', NULL, '3qozuf87hd', 'break-time', NULL, 0, 'public/item_primary_images/1673357233-1671973143-download.jpg', 12.00, 12.00, 0, 'Sorry Out Of Stock', NULL, 0, '1', 100, 'BREAK TIME', 'BREAK TIME', 'index,follow', 'BREAK TIME', 1, 0, 0, 0, '1', 'DRY CAKE', 718, 792, 0, NULL, '2023-01-10 13:27:13', '2023-06-11 08:41:43'),
(139, 'ALMOND SLICE CAKE (5 PCS)', NULL, 'i06afxuk1y', 'almond-slice-cake-5pcs', NULL, 0, 'public/item_primary_images/1673534985-1671973143-download.jpg', 100.00, 100.00, 0, 'Sorry Out Of Stock', NULL, 0, '1', 100, 'ALMOND SLICE CAKE (5PCS)', 'ALMOND SLICE CAKE (5PCS)', 'index,follow', 'ALMOND SLICE CAKE (5PCS)', 1, 0, 0, 0, '1', 'DRY CAKE', 640, 661, 0, NULL, '2023-01-12 14:49:45', '2023-06-11 08:41:39'),
(140, 'Reshmi Chicken Puff', NULL, 'b153nvy1u3', 'reshmi-chicken-puff', NULL, 0, 'public/item_primary_images/1673610659-1671973143-download.jpg', 35.00, 35.00, 0, 'Sorry Out Of Stock', NULL, 0, '2', 100, 'Reshmi Chicken Puff', 'Reshmi Chicken Puff', 'index,follow', 'Reshmi Chicken Puff', 1, 0, 0, 0, '10', 'NON-VEG SAVORIES', 405, 417, 0, NULL, '2023-01-13 11:50:59', '2023-06-11 08:41:35'),
(141, 'Chicken Butter Masala Loaf', NULL, '9slz8jhq3e', 'chicken-butter-masala-loaf', NULL, 0, 'public/item_primary_images/1673610831-1671973143-download.jpg', 50.00, 50.00, 0, 'Sorry Out Of Stock', NULL, 0, '2', 100, 'Chicken Butter Masala Loaf', 'Chicken Butter Masala Loaf', 'index,follow', 'Chicken Butter Masala Loaf', 1, 0, 0, 0, '10', 'NON-VEG SAVORIES', 340, 360, 0, NULL, '2023-01-13 11:53:51', '2023-06-11 08:41:31'),
(142, 'Valencia Orange Cake', NULL, 'qwmnb0xvc7', 'valencia-orange-cake', NULL, 0, 'public/item_primary_images/1674829307-pi7-image-whatsappimage2023-01-27at74900pm.jpeg', 275.00, 275.00, 1, 'Sorry Out Of Stock', NULL, 0, '2', 100, 'Valencia Orange Cake', 'Valencia Orange Cake', 'index,follow', 'Valencia Orange Cake', 1, 0, 0, 0, '5', 'GATEAUX', 498, 511, 0, NULL, '2023-01-27 14:21:47', '2023-06-18 16:15:53'),
(143, 'VALENTINE SWEET HEART CHOCOLATE', NULL, 'cvxxkzt3e9', 'valentine-sweet-heart-chocolate', NULL, 0, 'public/item_primary_images/1676181687-valentine-sweet-heart-chocolate.png', 125.00, 125.00, 1, 'Sorry Out Of Stock', NULL, 0, '1', 97, 'VALENTINE SWEET HEART CHOCOLATE', 'VALENTINE SWEET HEART CHOCOLATE', 'index,follow', 'VALENTINE SWEET HEART CHOCOLATE', 1, 0, 0, 0, '3', 'CHOCOLATES', 136, 140, 0, NULL, '2023-02-08 14:30:08', '2023-02-23 13:04:41'),
(144, 'VALENTINE BOOK CHOCOLATE', NULL, '1wx0q2st17', 'valentine-book-chocolate', NULL, 0, 'public/item_primary_images/1676181670-valentine-book-chocolate.png', 100.00, 100.00, 1, 'Sorry Out Of Stock', NULL, 0, '1', 98, 'VALENTINE BOOK CHOCOLATE', 'VALENTINE BOOK CHOCOLATE', 'index,follow', 'VALENTINE BOOK CHOCOLATE', 1, 0, 0, 0, '3', 'CHOCOLATES', 165, 173, 0, NULL, '2023-02-08 14:31:19', '2023-02-23 13:04:53'),
(145, 'Paneer Methi Malai Roll', NULL, 'hevemtpjzg', 'paneer-methi-malai-roll', NULL, 1, 'public/item_primary_images/1675948572-download.jpg', 22.00, 22.00, 1, 'Sorry Out Of Stock', NULL, 0, '1', 100, 'Paneer Methi Malai Roll', 'Paneer Methi Malai Roll', 'index,follow', 'Paneer Methi Malai Roll', 1, 0, 0, 0, '9', 'VEG SAVORIES', 486, 538, 0, NULL, '2023-02-09 13:16:12', '2023-07-07 16:31:22'),
(146, 'Cute Valentine Cake', NULL, 'lvyykumto5', 'cute-valentine-cake', NULL, 0, 'public/item_primary_images/1676181643-cute-valentine-cake.png', 300.00, 300.00, 1, 'Sorry out of stock', NULL, 0, '2', 100, 'Cute Valentine Cake', 'Cute Valentine Cake', 'index,follow', 'Cute Valentine Cake', 1, 0, 0, 0, '5', 'GATEAUX', 126, 129, 0, NULL, '2023-02-11 15:13:11', '2023-02-16 13:06:43'),
(147, 'Choco Pinata Cake', NULL, '7qybuota02', 'choco-pinata-cake', NULL, 0, 'public/item_primary_images/1676181612-choco-pinata-cake.png', 400.00, 400.00, 1, 'Sorry out of stock', NULL, 0, '2', 100, 'Choco Pinata Cake', 'Choco Pinata Cake', 'index,follow', 'Choco Pinata Cake', 1, 0, 0, 0, '5', 'GATEAUX', 70, 76, 0, NULL, '2023-02-11 15:14:00', '2023-02-16 13:06:41'),
(148, 'Romantic Valentine Cake', NULL, '5wlfe0smjw', 'romantic-valentine-cake', NULL, 0, 'public/item_primary_images/1676181596-romantic-valentine-cake.png', 300.00, 300.00, 1, 'Sorry out of stock', NULL, 0, '2', 100, 'Romantic Valentine Cake', 'Romantic Valentine Cake', 'index,follow', 'Romantic Valentine Cake', 1, 0, 0, 0, '5', 'GATEAUX', 171, 178, 0, NULL, '2023-02-11 15:16:22', '2023-02-16 13:06:37'),
(149, 'Valentine Red Heart Cake', NULL, 'bf6k97gd2d', 'valentine-red-heart-cake', NULL, 0, 'public/item_primary_images/1676181505-valentine-red-heart.png', 300.00, 300.00, 1, 'Sorry out of stock', NULL, 0, '2', 100, 'Valentine Red Heart Cake', 'Valentine Red Heart Cake', 'index,follow', 'Valentine Red Heart Cake', 1, 0, 0, 0, '5', 'GATEAUX', 107, 119, 0, NULL, '2023-02-11 15:17:31', '2023-02-16 13:06:34'),
(152, 'Chunky Chicken Burger', NULL, '7p5u7itrww', 'chunky-chicken-burger', NULL, 0, 'public/item_primary_images/1676553353-chunky-chicken-burger.png', 55.00, 55.00, 1, 'Sorry Out Of Stock', NULL, 0, '2', 100, 'Chunky Chicken Burger', 'Chunky Chicken Burger', 'index,follow', 'Chunky Chicken Burger', 1, 0, 0, 0, '10', 'NON-VEG SAVORIES', 873, 892, 0, NULL, '2023-02-16 13:15:53', '2023-06-18 10:03:46'),
(151, 'MINI LION KING', NULL, '7iy8u58nk8', 'mini-lion-king', NULL, 1, 'public/item_primary_images/1676289761-download.jpg', 275.00, 275.00, 1, 'Sorry Out Of Stock', NULL, 0, '2', 100, 'MINI LION KING', 'MINI LION KING', 'index,follow', 'MINI LION KING', 1, 0, 0, 0, '5', 'GATEAUX', 3528, 3717, 0, NULL, '2023-02-13 12:02:41', '2023-07-07 16:22:49'),
(153, 'Chicken Burger', NULL, 'labajn0mos', 'chicken-burger', NULL, 1, 'public/item_primary_images/1676553512-chicken-burger.png', 50.00, 50.00, 1, 'Sorry Out Of Stock', NULL, 0, '2', 100, 'Chicken Burger', 'Chicken Burger', 'index,follow', 'Chicken Burger', 1, 0, 0, 0, '10', 'NON-VEG SAVORIES', 10461, 10690, 1, NULL, '2023-02-16 13:18:32', '2023-07-07 16:31:22'),
(154, 'Paneer Tikka Burger', NULL, 't9hj6v5sr2', 'paneer-tikka-burger', NULL, 0, 'public/item_primary_images/1676553615-paneer-tikka-burger.png', 45.00, 45.00, 0, 'Sorry Out Of Stock', NULL, 0, '1', 100, 'Paneer Tikka Burger', 'Paneer Tikka Burger', 'index,follow', 'Paneer Tikka Burger', 1, 0, 0, 0, '9', 'VEG SAVORIES', 394, 412, 0, NULL, '2023-02-16 13:20:15', '2023-06-11 08:41:09'),
(155, 'Smoky Chicken Burger', NULL, 'clwtxf223t', 'smoky-chicken-burger', NULL, 1, 'public/item_primary_images/1676553716-smoky-chicken-burger.png', 55.00, 55.00, 1, 'Sorry Out Of Stock', NULL, 0, '2', 100, 'Smoky Chicken Burger', 'Smoky Chicken Burger', 'index,follow', 'Smoky Chicken Burger', 1, 0, 0, 0, '10', 'NON-VEG SAVORIES', 556, 574, 0, NULL, '2023-02-16 13:21:56', '2023-07-07 16:31:22'),
(157, 'Mini Chicken Spring Roll', NULL, 'opu1us4vdb', 'mini-chicken-spring-roll', NULL, 0, 'public/item_primary_images/1677764776-mini-chicken-spring-roll.jpg', 26.00, 26.00, 1, 'Sorry Out Of Stock', NULL, 0, '2', 98, 'Mini Chicken Spring Roll', 'Mini Chicken Spring Roll', 'index,follow', 'Mini Chicken Spring Roll', 1, 0, 0, 0, '10', 'NON-VEG SAVORIES', 911, 939, 0, NULL, '2023-03-02 13:46:16', '2023-03-16 11:59:32'),
(158, 'Chicken Butter Masala Roll', NULL, '856tll41is', 'chicken-butter-masala-roll', NULL, 1, 'public/item_primary_images/1677764870-chicken-butter-masala-roll.jpg', 50.00, 50.00, 1, 'Sorry Out Of Stock', NULL, 0, '2', 100, 'Chicken Butter Masala Roll', 'Chicken Butter Masala Roll', 'index,follow', 'Chicken Butter Masala Roll', 1, 0, 0, 0, '10', 'NON-VEG SAVORIES', 512, 523, 1, NULL, '2023-03-02 13:47:50', '2023-07-07 16:31:22'),
(159, 'Spicy Chicken Sausage Roll', NULL, 'mtfeq8ph3d', 'spicy-chicken-sausage-roll', NULL, 0, 'public/item_primary_images/1677764952-spicy-chicken-sausage-roll.jpg', 45.00, 45.00, 0, 'Sorry Out Of Stock', NULL, 0, '2', 100, 'Spicy Chicken Sausage Roll', 'Spicy Chicken Sausage Roll', 'index,follow', 'Spicy Chicken Sausage Roll', 1, 0, 0, 0, '10', 'NON-VEG SAVORIES', 305, 325, 1, NULL, '2023-03-02 13:49:12', '2023-06-11 08:40:44'),
(160, 'Paneer Keshar Malai Roll', NULL, 'ayxsm6cibw', 'paneer-keshar-malai-roll', NULL, 0, 'public/item_primary_images/1677765023-paneer-keshar-malai-roll.jpg', 40.00, 40.00, 0, 'Sorry Out Of Stock', NULL, 0, '2', 100, 'Paneer Keshar Malai Roll', 'Paneer Keshar Malai Roll', 'index,follow', 'Paneer Keshar Malai Roll', 1, 0, 0, 0, '10', 'NON-VEG SAVORIES', 242, 267, 0, NULL, '2023-03-02 13:50:23', '2023-06-11 08:40:40'),
(161, 'CHILLI CHICKEN ROLL', NULL, 'qd604xc7sm', 'chilly-chicken-roll', NULL, 0, 'public/item_primary_images/1677765089-chilly-chicken-roll.jpg', 50.00, 50.00, 1, 'Sorry Out Of Stock', NULL, 0, '2', 100, 'Chilly Chicken Roll', 'Chilly Chicken Roll', 'index,follow', 'Chilly Chicken Roll', 1, 0, 0, 0, '10', 'NON-VEG SAVORIES', 979, 1016, 0, NULL, '2023-03-02 13:51:29', '2023-07-02 12:36:57'),
(162, 'HOLI SPECIAL CAKE', NULL, 'fzz3927tv9', 'holi-special-cake', NULL, 0, 'public/item_primary_images/1678027818-holi-special-cake.jpg', 275.00, 275.00, 0, 'Sorry Out Of Stock', NULL, 0, '2', 100, 'HOLI SPECIAL CAKE', 'HOLI SPECIAL CAKE', 'index,follow', 'HOLI SPECIAL CAKE', 1, 0, 0, 0, '5', 'GATEAUX', 80, 86, 1, NULL, '2023-03-05 14:50:18', '2023-06-11 08:40:10'),
(163, 'WOMENS DAY SPECIAL CAKE', NULL, 's134j5l9du', 'womens-day-special-cake', NULL, 0, 'public/item_primary_images/1678169212-womens-day-cake.jpg', 275.00, 275.00, 0, 'Sorry Out Of Stock', NULL, 0, '2', 100, 'WOMENS DAY SPECIAL CAKE', 'WOMENS DAY SPECIAL CAKE', 'index,follow', 'WOMENS DAY SPECIAL CAKE', 1, 0, 0, 0, '5', 'GATEAUX', 55, 62, 0, NULL, '2023-03-07 06:06:52', '2023-06-11 08:40:07'),
(164, 'Bar Be Que Chicken Sandwich', NULL, 'pjwyw20er2', 'bar-be-que-chicken-sandwich', NULL, 0, 'public/item_primary_images/1678968067-bar-be-que-chicken-sandwich.jpg', 50.00, 50.00, 1, 'Sorry Out Of Stock', NULL, 0, '2', 100, 'Bar Be Que Chicken Sandwich', 'Bar Be Que Chicken Sandwich', 'index,follow', 'Bar Be Que Chicken Sandwich', 1, 0, 0, 0, '10', 'NON-VEG SAVORIES', 959, 976, 0, NULL, '2023-03-16 12:01:07', '2023-06-18 10:01:51'),
(165, 'Cheesy Corn Sandwich', NULL, 'nlnpz12ue5', 'cheesy-corn-sandwich', NULL, 0, 'public/item_primary_images/1678968123-chessy-corn-sandwich.jpg', 45.00, 45.00, 0, 'Sorry Out Of Stock', NULL, 0, '2', 100, 'Cheesy Corn Sandwich', 'Cheesy Corn Sandwich', 'index,follow', 'Cheesy Corn Sandwich', 1, 0, 0, 0, '10', 'NON-VEG SAVORIES', 279, 291, 0, NULL, '2023-03-16 12:02:03', '2023-06-11 08:40:02'),
(166, 'Chicken Marble Sandwich', NULL, '6u2jmcak3d', 'chicken-marble-sandwich', NULL, 0, 'public/item_primary_images/1678968187-chicken-marble-sandwich.jpg', 50.00, 50.00, 0, 'Sorry Out Of Stock', NULL, 0, '2', 100, 'Chicken Marble Sandwich', 'Chicken Marble Sandwich', 'index,follow', 'Chicken Marble Sandwich', 1, 0, 0, 0, '10', 'NON-VEG SAVORIES', 295, 321, 0, NULL, '2023-03-16 12:03:07', '2023-06-11 08:39:59'),
(167, 'Creamy Mushroom Puff', NULL, '7bvkgn68oc', 'creamy-mushroom-puff', NULL, 0, 'public/item_primary_images/1679571846-creamy-mushroom-puff.jpg', 22.00, 22.00, 1, 'Sorry Out Of Stock', NULL, 0, '1', 100, 'Creamy Mushroom Puff', 'Creamy Mushroom Puff', 'index,follow', 'Creamy Mushroom Puff', 1, 0, 0, 0, '9', 'VEG SAVORIES', 3864, 4044, 0, NULL, '2023-03-23 11:44:06', '2023-06-16 06:12:26'),
(168, 'Bar Be Que Chicken Pizza', NULL, '3npe1ohv5j', 'bar-be-que-chicken-pizza', NULL, 0, 'public/item_primary_images/1680185294-bar-be-que-chicken-pizza.jpg', 50.00, 50.00, 0, 'Sorry Out Of Stock', NULL, 0, '2', 100, 'Bar Be Que Chicken Pizza', 'Bar Be Que Chicken Pizza', 'index,follow', 'Bar Be Que Chicken Pizza', 1, 0, 0, 0, '10', 'NON-VEG SAVORIES', 374, 384, 0, NULL, '2023-03-30 14:08:14', '2023-06-11 08:35:16'),
(169, 'Paneer Makhani Pizza', NULL, 'ctbnh7oeqe', 'paneer-makhani-pizza', NULL, 0, 'public/item_primary_images/1680185355-paneer-makhani-pizza.jpg', 45.00, 45.00, 0, 'Sorry Out Of Stock', NULL, 0, '1', 100, 'Paneer Makhani Pizza', 'Paneer Makhani Pizza', 'index,follow', 'Paneer Makhani Pizza', 1, 0, 0, 0, '9', 'VEG SAVORIES', 463, 496, 0, NULL, '2023-03-30 14:09:15', '2023-06-11 08:39:43'),
(170, 'Garlic Prawn Pizza', NULL, 'cu86vj66vj', 'garlic-prawn-pizza', NULL, 0, 'public/item_primary_images/1680185399-prawn-pizza.jpg', 55.00, 55.00, 0, 'Sorry Out Of Stock', NULL, 0, '2', 100, 'Garlic Prawn Pizza', 'Garlic Prawn Pizza', 'index,follow', 'Garlic Prawn Pizza', 1, 0, 0, 0, '10', 'NON-VEG SAVORIES', 223, 241, 0, NULL, '2023-03-30 14:09:59', '2023-06-11 08:39:32'),
(171, 'Chicken Sausage Pizza', NULL, 'noud5c3ihm', 'chicken-sausage-pizza', NULL, 0, 'public/item_primary_images/1680185456-chicken-sausage-pizza.jpg', 45.00, 45.00, 0, 'Sorry Out Of Stock', NULL, 0, '2', 100, 'Chicken Sausage Pizza', 'Chicken Sausage Pizza', 'index,follow', 'Chicken Sausage Pizza', 1, 0, 0, 0, '10', 'NON-VEG SAVORIES', 289, 306, 0, NULL, '2023-03-30 14:10:56', '2023-06-11 08:39:23'),
(172, 'SMALL CHOCOLATE BAR CAKE', NULL, 'k30jnr7az5', 'small-chocolate-bar-cake', NULL, 1, 'public/item_primary_images/1680702583-chocolate-slice-cake.jpg', 10.00, 10.00, 1, 'Sorry Out Of Stock', NULL, 0, '1', 100, 'SMALL CHOCOLATE BAR CAKE', 'SMALL CHOCOLATE BAR CAKE', 'index,follow', 'SMALL CHOCOLATE BAR CAKE', 1, 0, 0, 0, '1', 'DRY CAKE', 1407, 1447, 0, NULL, '2023-04-05 13:49:43', '2023-07-07 16:22:49'),
(173, 'SMALL FRUIT BAR CAKE', NULL, 'i4mkuj9zq5', 'small-fruit-bar-cake', NULL, 1, 'public/item_primary_images/1680702629-fruit-slice-cake.jpg', 10.00, 10.00, 1, 'Sorry Out Of Stock', NULL, 0, '1', 100, 'SMALL FRUIT BAR CAKE', 'SMALL FRUIT BAR CAKE', 'index,follow', 'SMALL FRUIT BAR CAKE', 1, 0, 0, 0, '1', 'DRY CAKE', 1029, 1084, 0, NULL, '2023-04-05 13:50:29', '2023-07-07 16:08:54'),
(174, 'SMALL MILK BAR CAKE', NULL, 'k0of81a0tw', 'small-milk-bar-cake', NULL, 1, 'public/item_primary_images/1680702678-milk-cake.jpg', 10.00, 10.00, 1, 'Sorry Out Of Stock', NULL, 0, '1', 100, 'SMALL MILK BAR CAKE', 'SMALL MILK BAR CAKE', 'index,follow', 'SMALL MILK BAR CAKE', 1, 0, 0, 0, '1', 'DRY CAKE', 1159, 1271, 0, NULL, '2023-04-05 13:51:18', '2023-07-07 16:22:49'),
(175, 'Kheer er Goja', NULL, 'cn704vx30l', 'kheer-er-goja', NULL, 1, 'public/item_primary_images/1680790760-tnb.jpg', 15.00, 15.00, 1, 'Sorry Out Of Stock', NULL, 0, '1', 100, 'Kheer - er - Goja', 'Kheer - er - Goja', 'index,follow', 'Kheer - er - Goja', 1, 0, 0, 0, '8', 'SWEETS', 1577, 1641, 0, NULL, '2023-04-06 14:19:20', '2023-07-07 16:31:22'),
(176, 'Veg Manchurian', NULL, 'cp3h4mp7ns', 'veg-manchurian', NULL, 0, 'public/item_primary_images/1680790830-tnb.jpg', 20.00, 20.00, 0, 'Sorry Out Of Stock', NULL, 0, '1', 100, 'Veg Manchurian', 'Veg Manchurian', 'index,follow', 'Veg Manchurian', 1, 0, 0, 0, '9', 'VEG SAVORIES', 605, 644, 1, NULL, '2023-04-06 14:20:30', '2023-06-11 08:39:12'),
(177, 'SPECIAL GHEE ER LADDO BOX', NULL, 'jla9rmpai3', 'special-ghee-er-laddo-box', NULL, 0, 'public/item_primary_images/1681305964-laddu-box.jpg', 100.00, 100.00, 0, 'Sorry Out Of Stock', NULL, 0, '1', 100, 'SPECIAL GHEE ER LADDO BOX', 'SPECIAL GHEE ER LADDO BOX', 'index,follow', 'SPECIAL GHEE ER LADDO BOX', 1, 0, 0, 0, '8', 'SWEETS', 107, 111, 0, NULL, '2023-04-12 13:26:04', '2023-06-11 08:38:46'),
(178, 'NABABARSHO SPECIAL CAKE', NULL, 'p6jw5pljfh', 'nababarsho-special-cake', NULL, 0, 'public/item_primary_images/1681393309-nababarsho-cake.jpg', 275.00, 275.00, 0, 'Sorry Out Of Stock', NULL, 0, '1', 100, 'NABABARSHO SPECIAL CAKE', 'NABABARSHO SPECIAL CAKE', 'index,follow', 'NABABARSHO SPECIAL CAKE', 1, 0, 0, 0, '5', 'GATEAUX', 117, 121, 0, NULL, '2023-04-13 13:41:49', '2023-06-11 08:36:11'),
(179, 'FISH KABIRAJI SUB', NULL, 'jbipna8qvt', 'fish-kabiraji-sub', NULL, 1, 'public/item_primary_images/1681393440-fish-kabiraji-sub.jpg', 50.00, 50.00, 1, 'Sorry Out Of Stock', NULL, 0, '2', 100, 'FISH KABIRAJI SUB', 'FISH KABIRAJI SUB', 'index,follow', 'FISH KABIRAJI SUB', 1, 0, 0, 0, '10', 'NON-VEG SAVORIES', 1562, 1633, 0, NULL, '2023-04-13 13:44:00', '2023-07-07 16:31:22'),
(180, 'FISH FRY', NULL, '7rj3d8k392', 'fish-fry', NULL, 0, 'public/item_primary_images/1681393521-fish-fry.jpg', 58.00, 58.00, 0, 'Sorry Out Of Stock', NULL, 0, '2', 100, 'FISH FRY', 'FISH FRY', 'index,follow', 'FISH FRY', 1, 0, 0, 0, '10', 'NON-VEG SAVORIES', 302, 307, 0, NULL, '2023-04-13 13:45:21', '2023-06-11 08:38:57'),
(181, 'PALAK PANEER PUFF', NULL, '3tv3by7rav', 'palak-paneer-puff', NULL, 0, 'public/item_primary_images/1681393588-palak-paneer-puff.jpg', 32.00, 32.00, 0, 'Sorry Out Of Stock', NULL, 0, '1', 100, 'PALAK PANEER PUFF', 'PALAK PANEER PUFF', 'index,follow', 'PALAK PANEER PUFF', 1, 0, 0, 0, '9', 'VEG SAVORIES', 214, 223, 0, NULL, '2023-04-13 13:46:28', '2023-06-11 08:38:54'),
(182, 'DHONE-PATA MURGI PUFF', NULL, 'bx7l9v8lfm', 'dhone-pata-murgi-puff', NULL, 1, 'public/item_primary_images/1681393648-dhone-pata-murgi-puff.jpg', 35.00, 35.00, 1, 'Sorry Out Of Stock', NULL, 0, '2', 100, 'DHONE-PATA MURGI PUFF', 'DHONE-PATA MURGI PUFF', 'index,follow', 'DHONE-PATA MURGI PUFF', 1, 0, 0, 0, '10', 'NON-VEG SAVORIES', 348, 361, 0, NULL, '2023-04-13 13:47:28', '2023-07-07 16:31:22'),
(183, 'EID SPECIAL CAKE', NULL, 'dsrzk85nzq', 'eid-special-cake', NULL, 0, 'public/item_primary_images/1682082696-eid-special-cake.jpg', 300.00, 300.00, 0, 'Sorry Out Of Stock', NULL, 0, '2', 100, 'EID SPECIAL CAKE', 'EID SPECIAL CAKE', 'index,follow', 'EID SPECIAL CAKE', 1, 0, 0, 0, '5', 'GATEAUX', 60, 66, 0, NULL, '2023-04-21 13:11:36', '2023-06-11 08:38:22'),
(185, 'MINI JUNGLE CAKE', NULL, 'q6uv396ab3', 'mini-jungle-cake', NULL, 1, 'public/item_primary_images/1682428864-mini-jungle-cake.jpg', 300.00, 300.00, 1, 'Sorry Out Of Stock', NULL, 0, '2', 100, 'MINI JUNGLE CAKE', 'MINI JUNGLE CAKE', 'index,follow', 'MINI JUNGLE CAKE', 1, 0, 0, 0, '5', 'GATEAUX', 1154, 1202, 0, NULL, '2023-04-25 13:21:04', '2023-07-07 15:59:53'),
(186, 'Egg Devil', NULL, 'r5h9ewoe4m', 'egg-devil', NULL, 0, 'public/item_primary_images/1682599436-egg-devil.jpg', 22.00, 22.00, 0, 'Sorry Out Of Stock', NULL, 0, '2', 100, 'Egg Devil', 'Egg Devil', 'index,follow', 'Egg Devil', 1, 0, 0, 0, '10', 'NON-VEG SAVORIES', 388, 402, 1, NULL, '2023-04-27 12:43:56', '2023-06-11 08:38:15'),
(187, 'Chicken Trupizza', NULL, '8pdbb6d08j', 'chicken-trupizza', NULL, 0, 'public/item_primary_images/1682599492-chicken-trupizza.jpg', 38.00, 38.00, 0, 'Sorry Out Of Stock', NULL, 0, '2', 100, 'Chicken Trupizza', 'Chicken Trupizza', 'index,follow', 'Chicken Trupizza', 1, 0, 0, 0, '10', 'NON-VEG SAVORIES', 265, 275, 0, NULL, '2023-04-27 12:44:52', '2023-06-11 08:38:04'),
(188, 'Mustard Chicken Puff', NULL, '8n53rqm2sw', 'mustard-chicken-puff', NULL, 0, 'public/item_primary_images/1682599573-mustard-chicken-puff.jpg', 35.00, 35.00, 0, 'Sorry Out Of Stock', NULL, 0, '2', 100, 'Mustard Chicken Puff', 'Mustard Chicken Puff', 'index,follow', 'Mustard Chicken Puff', 1, 0, 0, 0, '10', 'NON-VEG SAVORIES', 280, 289, 0, NULL, '2023-04-27 12:46:13', '2023-06-11 08:37:55'),
(189, 'Egg Nest', NULL, 'scoekx7en4', 'egg-nest', NULL, 0, 'public/item_primary_images/1682599618-egg-nest.jpg', 35.00, 35.00, 0, 'Sorry Out Of Stock', NULL, 0, '2', 100, 'Egg Nest', 'Egg Nest', 'index,follow', 'Egg Nest', 1, 0, 0, 0, '10', 'NON-VEG SAVORIES', 343, 350, 0, NULL, '2023-04-27 12:46:58', '2023-06-11 08:37:50'),
(190, 'Mango Forest Cake', NULL, '2ttatymjxm', 'mango-forest-cake', NULL, 0, 'public/item_primary_images/1683810347-mango-forest-cake.jpg', 330.00, 330.00, 0, 'Sorry Out Of Stock', NULL, 0, '2', 100, 'Mango Forest Cake', 'Mango Forest Cake', 'index,follow', 'Mango Forest Cake', 1, 0, 0, 0, '5', 'GATEAUX', 404, 421, 0, NULL, '2023-05-11 13:05:47', '2023-06-11 08:37:42'),
(191, 'Mango Forest Pastry', NULL, 'mg2r30fcom', 'mango-forest-pastry', NULL, 0, 'public/item_primary_images/1683810528-mango-forest-pastry.jpg', 40.00, 40.00, 0, 'Sorry Out Of Stock', NULL, 0, '2', 100, 'Mango Forest Pastry', 'Mango Forest Pastry', 'index,follow', 'Mango Forest Pastry', 1, 0, 0, 0, '7', 'PASTRY', 409, 418, 0, NULL, '2023-05-11 13:08:48', '2023-06-11 08:37:37'),
(192, 'Aam Ras', NULL, '5jymyb2neu', 'aam-ras', NULL, 1, 'public/item_primary_images/1683810674-aam-ras.jpg', 40.00, 40.00, 1, 'Sorry Out Of Stock', NULL, 0, '2', 100, 'Aam Ras', 'Aam Ras', 'index,follow', 'Aam Ras', 1, 0, 0, 0, '7', 'PASTRY', 1442, 1501, 0, NULL, '2023-05-11 13:11:14', '2023-07-07 16:22:49'),
(193, 'Brown Bread 200gm', NULL, 'sr3qgl25ck', 'brown-bread-200', NULL, 1, 'public/item_primary_images/1683902605-brown-bread.jpg', 17.00, 17.00, 1, 'Sorry Out Of Stock', NULL, 0, '1', 100, 'Brown Bread 200', 'Brown Bread 200', 'index,follow', 'Brown Bread 200', 1, 0, 0, 0, '2', 'BREAD', 2038, 2117, 0, NULL, '2023-05-12 14:43:25', '2023-07-07 16:31:22'),
(194, 'MOTHERS DAY SPECIAL MANGO CAKE', NULL, 'ghd93o10gj', 'mothers-day-special-mango-cake', NULL, 0, 'public/item_primary_images/1683905228-tnb-mothers-day-mango-cake.jpg', 275.00, 275.00, 0, 'Sorry Out Of Stock', NULL, 0, '2', 100, 'MOTHERS DAY SPECIAL MANGO CAKE', 'MOTHERS DAY SPECIAL MANGO CAKE', 'index,follow', 'MOTHERS DAY SPECIAL MANGO CAKE', 1, 0, 0, 0, '5', 'GATEAUX', 102, 102, 0, NULL, '2023-05-12 15:27:08', '2023-06-11 08:37:23'),
(195, 'MOTHERS DAY SPECIAL BUTTERSCOTCH CAKE', NULL, '6sriuopuxk', 'mothers-day-special-butterscotch-cake', NULL, 0, 'public/item_primary_images/1683905342-tnb-mothers-day-butterscotch-cake.jpg', 275.00, 275.00, 0, 'Sorry Out Of Stock', NULL, 0, '2', 100, 'MOTHERS DAY SPECIAL BUTTERSCOTCH CAKE', 'MOTHERS DAY SPECIAL BUTTERSCOTCH CAKE', 'index,follow', 'MOTHERS DAY SPECIAL BUTTERSCOTCH CAKE', 1, 0, 0, 0, '5', 'GATEAUX', 88, 94, 0, NULL, '2023-05-12 15:29:02', '2023-06-11 08:37:14'),
(196, 'Rasmalai Cake', NULL, 'ngaa78oyfu', 'rasamalai-cake', NULL, 0, 'public/item_primary_images/1684840299-jamai-sasthi-special-cake.jpg', 325.00, 325.00, 0, 'Sorry Out Of Stock', NULL, 0, '2', 100, 'Rasamalai Cake', 'Rasamalai Cake', 'index,follow', 'Rasamalai Cake', 1, 0, 0, 0, '5', 'GATEAUX', 179, 191, 0, NULL, '2023-05-23 11:11:39', '2023-06-11 08:37:09'),
(197, 'Gulab Jamun Pastry', NULL, '42l6dkr3da', 'gulab-jamun-pastry', NULL, 0, 'public/item_primary_images/1684840341-gulab-jamun-pastry.jpg', 30.00, 30.00, 0, 'Sorry Out Of Stock', NULL, 0, '2', 100, 'Gulab Jamun Pastry', 'Gulab Jamun Pastry', 'index,follow', 'Gulab Jamun Pastry', 1, 0, 0, 0, '7', 'PASTRY', 157, 165, 0, NULL, '2023-05-23 11:12:21', '2023-06-11 08:36:56'),
(198, 'Litchi Mousse', NULL, 'its56zjx0k', 'litchi-mousse', NULL, 0, 'public/item_primary_images/1684840387-litchi-mousse.jpg', 40.00, 40.00, 0, 'Sorry Out Of Stock', NULL, 0, '2', 100, 'Litchi Mousse', 'Litchi Mousse', 'index,follow', 'Litchi Mousse', 1, 0, 0, 0, '7', 'PASTRY', 144, 153, 0, NULL, '2023-05-23 11:13:07', '2023-06-11 08:36:51'),
(199, 'Nawabi Mutton Puff', NULL, 'hsat1rns8b', 'nawabi-mutton-puff', NULL, 0, 'public/item_primary_images/1685019241-nawabi-mutton-puff.jpg', 45.00, 45.00, 0, 'Sorry Out Of Stock', NULL, 0, '2', 100, 'Nawabi Mutton Puff', 'Nawabi Mutton Puff', 'index,follow', 'Nawabi Mutton Puff', 1, 0, 0, 0, '10', 'NON-VEG SAVORIES', 331, 348, 0, NULL, '2023-05-25 12:54:01', '2023-06-11 08:36:47'),
(200, 'Chicken Rezala Puff', NULL, 'm8zalzcgmf', 'chicken-rezala-puff', NULL, 0, 'public/item_primary_images/1685019308-chicken-rezala-puff.jpg', 35.00, 35.00, 0, 'Sorry Out Of Stock', NULL, 0, '2', 100, 'Chicken Rezala Puff', 'Chicken Rezala Puff', 'index,follow', 'Chicken Rezala Puff', 1, 0, 0, 0, '10', 'NON-VEG SAVORIES', 402, 419, 0, NULL, '2023-05-25 12:55:08', '2023-06-11 08:36:42'),
(201, 'Mutton Shami Kebab', NULL, 'mqylwmw9me', 'mutton-shami-kebab', NULL, 0, 'public/item_primary_images/1685019372-mutton-shami-kebab.jpg', 32.00, 32.00, 0, 'Sorry Out Of Stock', NULL, 0, '2', 100, 'Mutton Shami Kebab', 'Mutton Shami Kebab', 'index,follow', 'Mutton Shami Kebab', 1, 0, 0, 0, '10', 'NON-VEG SAVORIES', 360, 380, 0, NULL, '2023-05-25 12:56:12', '2023-06-11 08:36:34'),
(202, 'Nutty Wedge', NULL, 'jffnpr2zf1', 'nutty-wedge', NULL, 0, 'public/item_primary_images/1685019461-nutty-wedge.jpg', 40.00, 40.00, 0, 'Sorry Out Of Stock', NULL, 0, '1', 100, 'Nutty Wedge', 'Nutty Wedge', 'index,follow', 'Nutty Wedge', 1, 0, 0, 0, '4', 'COOKIES & KHARI', 152, 155, 0, NULL, '2023-05-25 12:57:41', '2023-06-11 08:36:29'),
(203, 'Mango Junior (Eggless)', NULL, 'p4jh8n9zoe', 'mango-junior-eggless', NULL, 0, 'public/item_primary_images/1685105311-mango-junior-eggless.jpg', 250.00, 250.00, 0, 'Sorry Out Of Stock', NULL, 0, '1', 100, 'Mango Junior (Eggless)', 'Mango Junior (Eggless)', 'index,follow', 'Mango Junior (Eggless)', 1, 0, 0, 0, '5', 'GATEAUX', 359, 380, 0, NULL, '2023-05-26 12:48:31', '2023-06-11 08:37:04'),
(204, 'DORAEMON FACE 500 GMS', NULL, '8lpn94xbp9', 'doraemon-face-500-gms', NULL, 1, 'public/item_primary_images/1685795150-whatsapp-image-2023-06-03-at-30858-pm.jpeg', 350.00, 350.00, 1, 'Sorry Out Of Stock', NULL, 0, '2', 100, 'DORAEMON FACE 500 GMS', 'DORAEMON FACE 500 GMS', 'index,follow', 'DORAEMON FACE 500 GMS', 1, 0, 0, 0, '5', 'GATEAUX', 1613, 1672, 0, NULL, '2023-06-03 12:25:50', '2023-07-07 16:31:22'),
(205, 'HAZELNUT PASTRY', NULL, 'aczkc68gv0', 'hazelnut-pastry', NULL, 1, 'public/item_primary_images/1686224502-hazelnut-pastry.jpg', 30.00, 30.00, 1, 'SORRY OUT OF STOCK', NULL, 0, '2', 100, 'HAZELNUT PASTRY', 'HAZELNUT PASTRY', 'index,follow', 'HAZELNUT PASTRY', 1, 0, 0, 0, '7', 'PASTRY', 1653, 1711, 0, NULL, '2023-06-08 11:41:42', '2023-07-07 16:22:49'),
(206, 'MICKEY MOUSE CAKE', NULL, '9n1uk84vzg', 'mickey-mouse-cake', NULL, 0, 'public/item_primary_images/1686312255-mickey-mouse-cake.jpg', 350.00, 350.00, 0, 'SORRY OUT OF STOCK', NULL, 0, '2', 100, 'MICKEY MOUSE CAKE', 'MICKEY MOUSE CAKE', 'index,follow', 'MICKEY MOUSE CAKE', 1, 0, 0, 0, '5', 'GATEAUX', 127, 132, 0, NULL, '2023-06-09 12:04:15', '2023-06-11 08:32:44'),
(208, 'TOM AND JERRY CAKE', NULL, '50elxbminw', 'tom-and-jerry-cake', NULL, 0, 'public/item_primary_images/1686825705-tom-and-jerry-cake.jpg', 350.00, 350.00, 1, 'SORRY OUT OF STOCK', NULL, 0, '2', 100, 'TOM AND JERRY CAKE', 'TOM AND JERRY CAKE', 'index,follow', 'TOM AND JERRY CAKE', 1, 0, 0, 0, '5', 'GATEAUX', 355, 372, 0, NULL, '2023-06-15 10:41:45', '2023-06-25 07:44:31'),
(209, 'BABY SWEET CORN PUFF', NULL, '2yvavemfqp', 'baby-sweet-corn-puff', NULL, 1, 'public/item_primary_images/1686896251-baby-sweet-corn-puff.jpg', 22.00, 22.00, 1, 'SORRY OUT OF STOCK', NULL, 0, '1', 500, 'BABY SWEET CORN PUFF', 'BABY SWEET CORN PUFF', 'index,follow', 'BABY SWEET CORN PUFF', 1, 0, 0, 0, '9', 'VEG SAVORIES', 1197, 1264, 0, NULL, '2023-06-16 06:17:31', '2023-07-07 16:22:49'),
(210, 'CHOCO BERRY PASTRY', NULL, '1xw9mzfzl0', 'choco-berry-pastry', NULL, 1, 'public/item_primary_images/1686896459-choco-berry-pastry.jpg', 20.00, 20.00, 1, 'SORRY OUT OF STOCK', NULL, 0, '2', 500, 'CHOCO BERRY PASTRY', 'CHOCO BERRY PASTRY', 'index,follow', 'CHOCO BERRY PASTRY', 1, 0, 0, 0, '7', 'PASTRY', 1387, 1456, 0, NULL, '2023-06-16 06:20:59', '2023-07-07 16:31:22'),
(211, 'FATHERS DAY SPECIAL CAKE', NULL, '9qdn6rjz0k', 'fathers-day-special-cake', NULL, 0, 'public/item_primary_images/1686896858-fathers-day-cake.jpg', 275.00, 275.00, 1, 'SORRY OUT OF STOCK', NULL, 0, '2', 100, 'FATHERS DAY SPECIAL CAKE', 'FATHERS DAY SPECIAL CAKE', 'index,follow', 'FATHERS DAY SPECIAL CAKE', 1, 0, 0, 0, '5', 'GATEAUX', 158, 166, 0, NULL, '2023-06-16 06:27:38', '2023-06-20 18:36:26'),
(213, 'MANGO STRAWBERRY BLOSSOM', NULL, '2okp2dndw9', 'mango-strawberry-blossom', NULL, 0, 'public/item_primary_images/1687260705-mango-strawberry-blossom.jpg', 350.00, 350.00, 1, 'SORRY OUT OF STOCK', NULL, 0, '2', 100, 'MANGO STRAWBERRY BLOSSOM', 'MANGO STRAWBERRY BLOSSOM', 'index,follow', 'MANGO STRAWBERRY BLOSSOM', 1, 0, 0, 0, '5', 'GATEAUX', 254, 267, 0, NULL, '2023-06-20 11:31:45', '2023-06-29 10:21:17'),
(214, 'DARK CHOCO FANTASY', NULL, '4bz94eap02', 'dark-choco-fantasy', NULL, 1, 'public/item_primary_images/1687260786-dark-choco-fantasy.jpg', 425.00, 425.00, 1, 'SORRY OUT OF STOCK', NULL, 0, '2', 100, 'DARK CHOCO FANTASY', 'DARK CHOCO FANTASY', 'index,follow', 'DARK CHOCO FANTASY', 1, 0, 0, 0, '5', 'GATEAUX', 334, 364, 0, NULL, '2023-06-20 11:33:06', '2023-07-07 16:31:22'),
(215, 'BUTTERSCOTCH BLISS', NULL, 'gc52k2ebhr', 'butterscotch-bliss', NULL, 1, 'public/item_primary_images/1687260893-butterscoth-bliss.jpg', 425.00, 425.00, 1, 'SORRY OUT OF STOCK', NULL, 0, '2', 100, 'BUTTERSCOTCH BLISS', 'BUTTERSCOTCH BLISS', 'index,follow', 'BUTTERSCOTCH BLISS', 1, 0, 0, 0, '5', 'GATEAUX', 263, 288, 0, NULL, '2023-06-20 11:34:53', '2023-07-07 16:31:22'),
(219, 'CHOCO BERRY BLOOM', NULL, 'hyityp3xsy', 'choco-berry-bloom', NULL, 1, 'public/item_primary_images/1688034219-choco-berry-bloom.jpg', 350.00, 350.00, 1, 'SORRY OUT OF STOCK', NULL, 0, '2', 100, 'CHOCO BERRY BLOOM', 'CHOCO BERRY BLOOM', 'index,follow', 'CHOCO BERRY BLOOM', 1, 0, 0, 0, '5', 'GATEAUX', 561, 577, 0, NULL, '2023-06-29 10:23:39', '2023-07-07 16:31:22'),
(216, 'MINI PANEER MAKHANI PIZZA', NULL, 'q8nggt7dlg', 'mini-paneer-makhani-pizza', NULL, 0, 'public/item_primary_images/1687417897-mini-paneer-makhani-pizza.jpg', 25.00, 25.00, 1, 'SORRY OUT OF STOCK', NULL, 0, '1', 500, 'MINI PANEER MAKHANI PIZZA', 'MINI PANEER MAKHANI PIZZA', 'index,follow', 'MINI PANEER MAKHANI PIZZA', 1, 0, 0, 0, '9', 'VEG SAVORIES', 516, 526, 0, NULL, '2023-06-22 07:11:37', '2023-07-02 12:36:24'),
(217, 'BLUEBERRY PASTRY', NULL, 'b24byozdqh', 'blueberry-pastry', NULL, 0, 'public/item_primary_images/1687417959-blueberry-pastry.jpg', 25.00, 25.00, 1, 'SORRY OUT OF STOCK', NULL, 0, '2', 500, 'BLUEBERRY PASTRY', 'BLUEBERRY PASTRY', 'index,follow', 'BLUEBERRY PASTRY', 1, 0, 0, 0, '7', 'PASTRY', 490, 501, 0, NULL, '2023-06-22 07:12:39', '2023-07-02 12:36:14'),
(218, 'CHICKEN VOL AU VENT', NULL, 'taf1gcu3oa', 'chicken-vol-au-vent', NULL, 0, 'public/item_primary_images/1687418055-chicken-vol-au-vent-2.jpg', 28.00, 28.00, 1, 'SORRY OUT OF STOCK', NULL, 0, '2', 500, 'CHICKEN VOL AU VENT', 'CHICKEN VOL AU VENT', 'index,follow', 'CHICKEN VOL AU VENT', 1, 0, 0, 0, '10', 'NON-VEG SAVORIES', 473, 486, 0, NULL, '2023-06-22 07:14:15', '2023-07-02 12:57:02'),
(220, 'RED VELVET HERITAGE', NULL, 'egy7juv9q6', 'red-velvet-heritage', NULL, 1, 'public/item_primary_images/1688455607-red-velvet-heritage.jpg', 450.00, 450.00, 1, 'SORRY OUT OF STOCK', NULL, 0, '1', 100, 'RED VELVET HERITAGE', 'RED VELVET HERITAGE', 'index,follow', 'RED VELVET HERITAGE', 1, 0, 0, 0, '5', 'GATEAUX', 201, 210, 0, NULL, '2023-07-04 07:26:47', '2023-07-07 16:31:22');

-- --------------------------------------------------------

--
-- Table structure for table `food_variants`
--

CREATE TABLE `food_variants` (
  `id` int(10) UNSIGNED NOT NULL,
  `food_item_id` varchar(191) DEFAULT NULL,
  `variant_uid` varchar(191) DEFAULT NULL,
  `variant_id` varchar(191) DEFAULT NULL,
  `variant_mrp` double(8,2) DEFAULT NULL,
  `variant_sp` double(8,2) DEFAULT NULL,
  `variant_addon_status` tinyint(1) NOT NULL DEFAULT 0,
  `food_variant_status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gmail_settings`
--

CREATE TABLE `gmail_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `credential_file_path` varchar(191) DEFAULT NULL,
  `token` longtext DEFAULT NULL,
  `token_path` longtext DEFAULT NULL,
  `email` varchar(255) NOT NULL DEFAULT 'info@abhiandroid.com',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `google_analytics`
--

CREATE TABLE `google_analytics` (
  `id` int(10) UNSIGNED NOT NULL,
  `facebook` longtext DEFAULT NULL,
  `google_analytics` longtext DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `homepage_settings`
--

CREATE TABLE `homepage_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `application_title` longtext DEFAULT NULL,
  `application_logo` longtext DEFAULT NULL,
  `application_favicon` longtext DEFAULT NULL,
  `application_description` longtext DEFAULT NULL,
  `copyright` longtext DEFAULT NULL,
  `map_iframe` longtext DEFAULT NULL,
  `footer_logo` longtext DEFAULT NULL,
  `facebook_url` longtext DEFAULT NULL,
  `instagram_url` longtext DEFAULT NULL,
  `twitter_url` longtext DEFAULT NULL,
  `playstore` longtext DEFAULT NULL,
  `appstore` longtext DEFAULT NULL,
  `meta_robots` varchar(191) DEFAULT NULL,
  `meta_title` longtext DEFAULT NULL,
  `meta_keywords` longtext DEFAULT NULL,
  `meta_description` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `home_banners`
--

CREATE TABLE `home_banners` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` longtext DEFAULT NULL,
  `web_image` longtext DEFAULT NULL,
  `banner_name` varchar(191) NOT NULL,
  `type` varchar(191) DEFAULT NULL,
  `openid` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `home_layouts`
--

CREATE TABLE `home_layouts` (
  `id` int(10) UNSIGNED NOT NULL,
  `layout_name` varchar(255) NOT NULL,
  `display_order` varchar(191) NOT NULL,
  `type` varchar(191) NOT NULL,
  `openid` varchar(191) NOT NULL,
  `openid_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `home_store_descriptions`
--

CREATE TABLE `home_store_descriptions` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `items_in_offers`
--

CREATE TABLE `items_in_offers` (
  `id` int(10) UNSIGNED NOT NULL,
  `offer_id` varchar(191) DEFAULT NULL,
  `food_item_id` varchar(191) DEFAULT NULL,
  `offer_amount` varchar(191) NOT NULL DEFAULT '0',
  `item_status` tinyint(1) NOT NULL DEFAULT 0,
  `offer_status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `item_ratings`
--

CREATE TABLE `item_ratings` (
  `id` int(10) UNSIGNED NOT NULL,
  `food_item_id` varchar(191) DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `review` longtext DEFAULT NULL,
  `star` varchar(191) NOT NULL DEFAULT '0',
  `rating_uid` longtext DEFAULT NULL,
  `rating_status` tinyint(4) NOT NULL DEFAULT 0,
  `user_uid` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `item_rating_images`
--

CREATE TABLE `item_rating_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `image_uid` longtext DEFAULT NULL,
  `image` longtext DEFAULT NULL,
  `rating_uid` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` bigint(20) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `new_order_details`
--

CREATE TABLE `new_order_details` (
  `id` int(11) NOT NULL,
  `new_order_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `new_order_details`
--

INSERT INTO `new_order_details` (`id`, `new_order_id`, `item_id`, `price`, `qty`, `amount`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 100, 1, 100, '2023-07-26 07:02:50', '2023-07-26 07:02:50'),
(2, 1, 24, 30, 3, 90, '2023-07-26 07:02:50', '2023-07-26 07:02:50');

-- --------------------------------------------------------

--
-- Table structure for table `new_order_masters`
--

CREATE TABLE `new_order_masters` (
  `id` int(11) NOT NULL,
  `order_id` varchar(400) NOT NULL,
  `total_qty` int(255) NOT NULL,
  `total_amount` int(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `new_order_masters`
--

INSERT INTO `new_order_masters` (`id`, `order_id`, `total_qty`, `total_amount`, `status`, `created_at`, `updated_at`) VALUES
(1, 'a9992647-360e-4fcb-9d85-207fa1514f55', 4, 190, 1, '2023-07-26 07:02:50.000000', '2023-07-26 07:02:50.000000');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `secret` varchar(100) NOT NULL,
  `redirect` text NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `offer_times`
--

CREATE TABLE `offer_times` (
  `id` int(10) UNSIGNED NOT NULL,
  `offer_uid` varchar(191) DEFAULT NULL,
  `offer_name` varchar(191) DEFAULT NULL,
  `offer_description` varchar(255) DEFAULT NULL,
  `offer_start_time` varchar(191) DEFAULT NULL,
  `offer_end_time` varchar(191) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `offer_mobile_image` longtext DEFAULT NULL,
  `offer_web_image` longtext DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ordered_addons`
--

CREATE TABLE `ordered_addons` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` varchar(255) DEFAULT NULL,
  `order_id` varchar(255) DEFAULT NULL,
  `addon_item_price` varchar(255) DEFAULT NULL,
  `cart_item_uid` varchar(255) DEFAULT NULL,
  `addon_cat_uid` varchar(255) DEFAULT NULL,
  `addon_catname` varchar(255) DEFAULT NULL,
  `addonorder_uid` varchar(255) DEFAULT NULL,
  `addon_item_id` varchar(255) DEFAULT NULL,
  `addon_item_name` varchar(255) DEFAULT NULL,
  `addon_tax_amount` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_assign_process`
--

CREATE TABLE `order_assign_process` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` varchar(191) DEFAULT NULL,
  `delivery_boy_id` varchar(191) DEFAULT NULL,
  `accept_status` tinyint(1) NOT NULL DEFAULT 0,
  `allot_status` tinyint(1) NOT NULL DEFAULT 0,
  `type` varchar(255) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_counters`
--

CREATE TABLE `order_counters` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` varchar(191) DEFAULT NULL,
  `delivery_boy_uid` varchar(191) DEFAULT NULL,
  `counter` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pagination_general`
--

CREATE TABLE `pagination_general` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `page` varchar(255) NOT NULL DEFAULT '10',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pincodes`
--

CREATE TABLE `pincodes` (
  `id` int(10) UNSIGNED NOT NULL,
  `pincode` varchar(191) NOT NULL DEFAULT '123456',
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pincode_grouplist`
--

CREATE TABLE `pincode_grouplist` (
  `id` int(10) UNSIGNED NOT NULL,
  `group_name` varchar(191) NOT NULL DEFAULT '123456',
  `delivery_charges` varchar(191) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pincode_groups`
--

CREATE TABLE `pincode_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `group_id` varchar(191) NOT NULL DEFAULT '123456',
  `pincode_id` varchar(191) NOT NULL DEFAULT '0',
  `pincode` varchar(191) NOT NULL DEFAULT '123456'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `privacy_policies`
--

CREATE TABLE `privacy_policies` (
  `id` int(10) UNSIGNED NOT NULL,
  `privacy_policy` longtext NOT NULL,
  `meta_robots` varchar(191) NOT NULL,
  `meta_title` varchar(191) NOT NULL DEFAULT 'privacy policy',
  `meta_keywords` varchar(191) NOT NULL DEFAULT 'privacy policy',
  `meta_description` varchar(191) NOT NULL DEFAULT 'privacy policy',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `cat_id` varchar(191) NOT NULL,
  `product_id` varchar(191) NOT NULL,
  `product_status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pusher_settings`
--

CREATE TABLE `pusher_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `app_id` varchar(191) DEFAULT NULL,
  `app_key` varchar(191) DEFAULT NULL,
  `secret_key` varchar(191) DEFAULT NULL,
  `app_cluster` varchar(191) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `recom_layouts`
--

CREATE TABLE `recom_layouts` (
  `id` int(10) UNSIGNED NOT NULL,
  `recom_uid` varchar(191) DEFAULT NULL,
  `recom_name` varchar(191) DEFAULT NULL,
  `item_count` varchar(255) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `recom_layout_items`
--

CREATE TABLE `recom_layout_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `recom_id` varchar(191) DEFAULT NULL,
  `food_item_id` varchar(191) DEFAULT NULL,
  `item_status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `referlog_terms`
--

CREATE TABLE `referlog_terms` (
  `id` int(10) UNSIGNED NOT NULL,
  `refer_terms` longtext NOT NULL,
  `coins_message` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `referral_settings`
--

CREATE TABLE `referral_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `signup_points` varchar(191) DEFAULT NULL,
  `cart_points` varchar(191) DEFAULT NULL,
  `cart_max_points` varchar(191) DEFAULT NULL,
  `order_points` varchar(191) DEFAULT NULL,
  `order_max_points` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `refer_terms`
--

CREATE TABLE `refer_terms` (
  `id` int(10) UNSIGNED NOT NULL,
  `terms` longtext NOT NULL,
  `top_referral_message` varchar(255) NOT NULL DEFAULT 'top_referral_mesaage',
  `bottom_referral_message` varchar(255) NOT NULL DEFAULT 'bottom_referral_mesaage',
  `meta_robots` varchar(191) NOT NULL,
  `meta_title` varchar(191) NOT NULL DEFAULT 'terms',
  `meta_keywords` varchar(191) NOT NULL DEFAULT 'terms',
  `meta_description` varchar(191) NOT NULL DEFAULT 'terms',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `requested_pincodes`
--

CREATE TABLE `requested_pincodes` (
  `id` int(10) UNSIGNED NOT NULL,
  `pincode` longtext DEFAULT NULL,
  `count_of_pin` varchar(255) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_details`
--

CREATE TABLE `restaurant_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `restaurant_name` varchar(255) NOT NULL DEFAULT 'Abhi android',
  `restaurant_address` varchar(255) NOT NULL DEFAULT 'Abhi android',
  `about_restaurant` longtext DEFAULT NULL,
  `restaurant_email` varchar(255) NOT NULL DEFAULT 'info@abhiandroid.com',
  `restaurant_phone` varchar(255) NOT NULL DEFAULT '1234567890',
  `opening_hours` varchar(255) NOT NULL DEFAULT '10:00 a.m - 07:00 p.m',
  `restaurant_lat` varchar(255) DEFAULT NULL,
  `restaurant_long` varchar(255) DEFAULT NULL,
  `restaurant_primary_image` longtext DEFAULT NULL,
  `restaurant_menu_image` longtext DEFAULT NULL,
  `restaurant_website` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_galleries`
--

CREATE TABLE `restaurant_galleries` (
  `id` int(10) UNSIGNED NOT NULL,
  `res_id` longtext DEFAULT NULL,
  `image` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` int(10) UNSIGNED NOT NULL,
  `size_name` varchar(191) NOT NULL,
  `size_status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sms_settings`
--

CREATE TABLE `sms_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `authkey` varchar(255) DEFAULT NULL,
  `msg_id` varchar(255) DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `onpacked` varchar(255) DEFAULT NULL,
  `onorder` varchar(255) DEFAULT NULL,
  `ondispatch` varchar(255) DEFAULT NULL,
  `oncomplete` varchar(255) DEFAULT NULL,
  `oncancel` varchar(255) DEFAULT NULL,
  `push_onorder` varchar(255) DEFAULT NULL,
  `push_onpacked` varchar(255) DEFAULT NULL,
  `push_ondispatch` varchar(255) DEFAULT NULL,
  `push_oncomplete` varchar(255) DEFAULT NULL,
  `push_oncancel` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `smtp_settings`
--

CREATE TABLE `smtp_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `mail_host` varchar(191) DEFAULT NULL,
  `mail_username` varchar(191) DEFAULT NULL,
  `mail_password` varchar(191) DEFAULT NULL,
  `mail_encryption` varchar(191) DEFAULT NULL,
  `mail_port` varchar(191) DEFAULT NULL,
  `mail_from_address` varchar(191) DEFAULT NULL,
  `mail_from_name` varchar(191) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tax_settings`
--

CREATE TABLE `tax_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `percentage` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `terms`
--

CREATE TABLE `terms` (
  `id` int(10) UNSIGNED NOT NULL,
  `terms` longtext NOT NULL,
  `meta_robots` varchar(191) NOT NULL,
  `meta_title` varchar(191) NOT NULL DEFAULT 'terms',
  `meta_keywords` varchar(191) NOT NULL DEFAULT 'terms',
  `meta_description` varchar(191) NOT NULL DEFAULT 'terms',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `time_slots`
--

CREATE TABLE `time_slots` (
  `id` int(10) UNSIGNED NOT NULL,
  `dispalyorder` int(11) NOT NULL,
  `start_time` varchar(255) NOT NULL,
  `end_time` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trending_searches`
--

CREATE TABLE `trending_searches` (
  `id` int(10) UNSIGNED NOT NULL,
  `search` varchar(191) DEFAULT NULL,
  `search_count` bigint(20) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(191) NOT NULL,
  `password` varchar(191) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `phone`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Admin', '+919836899318', 'admin@gmail.com', '$2y$12$jWwamm8w6KkCjY8hlm2gx.HMY.PFo.J2hf0hSUx9OoPzVfqZu9dym', 'Aih8fjVyzvol6oV7NQExMcL1SrAwdumZMpOrxhvu9ftnLGzqUma1ie1nb8B8', '2022-12-14 10:21:23', '2022-04-15 10:49:03');

-- --------------------------------------------------------

--
-- Table structure for table `user_carts`
--

CREATE TABLE `user_carts` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` varchar(255) DEFAULT NULL,
  `cart_item_uid` varchar(255) DEFAULT NULL,
  `food_item_id` varchar(255) DEFAULT NULL,
  `variant_id` varchar(255) DEFAULT NULL,
  `qty` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_credits`
--

CREATE TABLE `user_credits` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` varchar(191) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `amount` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_credit_logs`
--

CREATE TABLE `user_credit_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` varchar(191) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `reason` varchar(191) DEFAULT NULL,
  `amount` varchar(191) DEFAULT NULL,
  `date` varchar(191) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `order_id` varchar(191) DEFAULT NULL,
  `credit_type` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_has_permissions`
--

CREATE TABLE `user_has_permissions` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_has_roles`
--

CREATE TABLE `user_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_orders`
--

CREATE TABLE `user_orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` varchar(255) DEFAULT NULL,
  `uid` varchar(255) DEFAULT NULL,
  `cart_item_uid` varchar(255) DEFAULT NULL,
  `food_item_id` varchar(255) DEFAULT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `item_mrp` varchar(255) DEFAULT NULL,
  `item_sp` varchar(255) DEFAULT NULL,
  `variant_id` varchar(255) DEFAULT NULL,
  `variant_name` varchar(255) DEFAULT NULL,
  `variant_price` varchar(255) DEFAULT NULL,
  `offer_status` varchar(255) DEFAULT NULL,
  `offer_amount` varchar(255) DEFAULT NULL,
  `offer_percentage` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `discount` varchar(255) NOT NULL DEFAULT '0',
  `tax` varchar(255) NOT NULL DEFAULT '0',
  `addonorder_uid` varchar(255) DEFAULT NULL,
  `addon_count` varchar(255) DEFAULT NULL,
  `addon_total` varchar(255) DEFAULT NULL,
  `final_total` varchar(255) NOT NULL DEFAULT '0',
  `order_status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_profiles`
--

CREATE TABLE `user_profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `CUSTCODE` varchar(15) DEFAULT NULL,
  `name` varchar(191) NOT NULL DEFAULT 'Hello',
  `email` varchar(191) DEFAULT NULL,
  `uid` longtext NOT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `phone` varchar(191) NOT NULL,
  `order_count` varchar(255) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_profiles`
--

INSERT INTO `user_profiles` (`id`, `CUSTCODE`, `name`, `email`, `uid`, `gender`, `phone`, `order_count`, `created_at`, `updated_at`) VALUES
(1, 'D23', 'TEST - SM Confectionery', 'soumya.softency@gmail.com', 'uid_16710193676399bb67e7d23', 'male', '+919836899318', '30', '2022-12-14 12:02:48', '2022-12-14 12:02:48'),
(102, 'DL01', 'DL01 - LAYERS', NULL, 'uid_16791484096415c5796c131', NULL, '+919163372211', '121', '2023-03-18 14:06:49', '2023-03-18 14:06:49'),
(101, 'DA14', 'DA14 - Anubhab Confectionery', NULL, 'uid_167584464463e35c240df82', NULL, '+918945578247', '139', '2023-02-08 08:24:04', '2023-02-08 08:24:04'),
(5, 'TEST4', 'office', NULL, 'uid_1671170781639c0add96ebc', NULL, '+919330059399', '0', '2022-12-16 06:06:21', '2022-12-16 06:06:21'),
(7, 'DS01', 'DS01 - M/S Saha Confectionery', NULL, 'uid_1671179945639c2ea9edccd', NULL, '+919748896935', '200', '2022-12-16 08:39:06', '2022-12-16 08:39:06'),
(8, 'DM02', 'DM02 - M/S Madona Confectionery', NULL, 'uid_1671181143639c3357c0074', NULL, '+919339239379', '196', '2022-12-16 08:59:03', '2022-12-16 08:59:03'),
(9, 'DS07', 'DS07 - M/S Shree Confectionery', NULL, 'uid_1671182197639c3775412e3', NULL, '+917029817939', '146', '2022-12-16 09:16:37', '2022-12-16 09:16:37'),
(10, 'DP01', 'DP01 - M/S Protap Delight', NULL, 'uid_1671186503639c484782405', NULL, '+918240337109', '189', '2022-12-16 10:28:23', '2022-12-16 10:28:23'),
(11, 'DC01', 'DC01 - M/S Cake N Bake', NULL, 'uid_1671187263639c4b3fa837b', NULL, '+917439993962', '194', '2022-12-16 10:41:03', '2022-12-16 10:41:03'),
(12, 'DH01', 'DH01 - M/S Honeybee Confectionery', NULL, 'uid_1671188280639c4f38d7844', NULL, '+918100528177', '194', '2022-12-16 10:58:00', '2022-12-16 10:58:00'),
(13, 'DB02', 'DB02 - M/S Bake & Flake', NULL, 'uid_1671189646639c548eca9d7', NULL, '+916297100673', '198', '2022-12-16 11:20:46', '2022-12-16 11:20:46'),
(14, 'DO01', 'DO01 - M/S Omkar Enterprise', NULL, 'uid_1671190196639c56b4e1c9aBLOCK', NULL, '+918240202166', '140', '2022-12-16 11:29:56', '2022-12-16 11:29:56'),
(15, 'DJ01', 'DJ01 - M/S Agency Jai Jagannath Cake', NULL, 'uid_1671190848639c5940dbcdc', NULL, '+919073280154', '203', '2022-12-16 11:40:48', '2022-12-16 11:40:48'),
(16, 'DM01', 'DM01 - M/S Maa Stores', NULL, 'uid_1671191960639c5d987a6b0', NULL, '+917679837856', '198', '2022-12-16 11:59:20', '2022-12-16 11:59:20'),
(17, 'DS02', 'DS02 - M/S Sunny`s Cake Corner', 'swarnadeep.ss@gmail.com', 'uid_1671192571639c5ffb48516', 'male', '+919674771123', '196', '2022-12-16 12:09:31', '2022-12-16 12:09:31'),
(18, 'DD02', 'DD02 - M/S Debnath', NULL, 'uid_1671193354639c630a25a3d', NULL, '+917980758890', '34', '2022-12-16 12:22:34', '2022-12-16 12:22:34'),
(19, 'DD01', 'DD01 - M/S Diamond Enterprise', NULL, 'uid_1671194050639c65c272d7c', NULL, '+919339257761', '96', '2022-12-16 12:34:10', '2022-12-16 12:34:10'),
(20, 'DD03', 'DD03 - M/S Diamond Enterprise', NULL, 'uid_1671194827639c68cb47abe', NULL, '+919339228396', '89', '2022-12-16 12:47:07', '2022-12-16 12:47:07'),
(21, 'DK01', 'DK01 - M/S K. K Enterprise', NULL, 'uid_1671195392639c6b00a10d0', NULL, '+919830828439', '197', '2022-12-16 12:56:32', '2022-12-16 12:56:32'),
(22, 'DV01', 'DV01 - M/S Vinayak CakeShop', NULL, 'uid_1671196049639c6d91b5efa', NULL, '+917074436608', '200', '2022-12-16 13:07:29', '2022-12-16 13:07:29'),
(23, 'DT01', 'DT01 - M/S The Subham', NULL, 'uid_1671196995639c7143bdec7', NULL, '+919732880609', '202', '2022-12-16 13:23:15', '2022-12-16 13:23:15'),
(24, 'DF02', 'DF02 - M/S Foodoholic', NULL, 'uid_1671197868639c74ac176f3', NULL, '+919163072391', '199', '2022-12-16 13:37:48', '2022-12-16 13:37:48'),
(25, 'DM03', 'DM03 - M/S Meenakshi', NULL, 'uid_1671198680639c77d8d009e', NULL, '+919674763099', '98', '2022-12-16 13:51:20', '2022-12-16 13:51:20'),
(26, 'DT03', 'DT03 - M/S Tasteum', NULL, 'uid_1671199128639c79989f951', NULL, '+919163005588', '133', '2022-12-16 13:58:48', '2022-12-16 13:58:48'),
(27, 'DS06', 'SB ENTERPRISE', 'ayanpal68@gmail.com', 'uid_1671253886639d4f7eefd62', 'male', '+917001228044', '196', '2022-12-17 05:11:27', '2022-12-17 05:11:27'),
(28, 'DB03', 'DB03 - M/S B. P. S Confectionery', NULL, 'uid_1671254167639d50976b62d', NULL, '+919830366296', '195', '2022-12-17 05:16:07', '2022-12-17 05:16:07'),
(29, 'DF01', 'DF01 - M/S Fatepur Food Plaza', NULL, 'uid_1671254774639d52f60a6d2', NULL, '+917479253623', '201', '2022-12-17 05:26:14', '2022-12-17 05:26:14'),
(30, 'DK02', 'DK02 - M/S Kripa Confectioners', NULL, 'uid_1671255539639d55f38dbfc', NULL, '+919239074345', '171', '2022-12-17 05:38:59', '2022-12-17 05:38:59'),
(31, 'DS11', 'DS11 - M/S Star Confectioners', NULL, 'uid_1671255935639d577f79831', NULL, '+918420095261', '156', '2022-12-17 05:45:35', '2022-12-17 05:45:35'),
(32, 'DM05', 'DM05 - M/S Maa Sindhu Snacks', NULL, 'uid_1671256335639d590faaf9fBLOCK', NULL, '+919831021183', '133', '2022-12-17 05:52:15', '2022-12-17 05:52:15'),
(33, 'DT06', 'DT06 - M/S The Sunshine Confectionery', NULL, 'uid_1671256627639d5a331f7aa', NULL, '+919674852680', '194', '2022-12-17 05:57:07', '2022-12-17 05:57:07'),
(34, 'DT05', 'DT05 - M/S Tithi Confectionery', NULL, 'uid_1671257467639d5d7b85335', NULL, '+918961152192', '196', '2022-12-17 06:11:07', '2022-12-17 06:11:07'),
(35, 'DA07', 'DA07 - M/S Anjali Confectionery', NULL, 'uid_1671258149639d6025cc099', NULL, '+919674831480', '198', '2022-12-17 06:22:29', '2022-12-17 06:22:29'),
(36, 'DR02', 'DR02 - Raj Quality', NULL, 'uid_1671258665639d62294dd64', NULL, '+918101047287', '189', '2022-12-17 06:31:05', '2022-12-17 06:31:05'),
(37, 'DS15', 'DS15 - SS CONFECTIONERY', 'tastenbite.ripponstreet@gmail.com', 'uid_1671259246639d646e3a7a5', 'male', '+918777372691', '167', '2022-12-17 06:40:46', '2022-12-17 06:40:46'),
(38, 'DA08', 'DA08 - ALEENA CAKE SHOP', NULL, 'uid_1671259754639d666a54a41', NULL, '+919681441145', '200', '2022-12-17 06:49:14', '2022-12-17 06:49:14'),
(39, 'DP06', 'DP06 - PUNEJI OVERSEAS OPC PVT. LTD', NULL, 'uid_1671260130639d67e2f311d', NULL, '+918240631509', '194', '2022-12-17 06:55:31', '2022-12-17 06:55:31'),
(40, 'DS16', 'DS16 - SUNSHINE CAKE & COOKIES', NULL, 'uid_1671260729639d6a39659ed', NULL, '+919830266529', '192', '2022-12-17 07:05:29', '2022-12-17 07:05:29'),
(41, 'DS05', 'DS05 - M/S Smriti Confectionery', NULL, 'uid_1671261984639d6f20e81e0', NULL, '+919331041646', '187', '2022-12-17 07:26:25', '2022-12-17 07:26:25'),
(42, 'DF03', 'DF03 - M/S Friends Confectionery', NULL, 'uid_1671262523639d713ba9900', NULL, '+918972390806', '186', '2022-12-17 07:35:23', '2022-12-17 07:35:23'),
(43, 'DN01', 'DN01 - NAYANTARA CONFECTIONERY', NULL, 'uid_1671262962639d72f2a659b', NULL, '+918777381079', '184', '2022-12-17 07:42:42', '2022-12-17 07:42:42'),
(44, 'DJ02', 'DJ02 - M/S Jay Gopinath Enterprise', NULL, 'uid_1671263618639d7582d204c', NULL, '+916294815497', '201', '2022-12-17 07:53:38', '2022-12-17 07:53:38'),
(45, 'DN02', 'DN02 - Nihar Enterprise', NULL, 'uid_1671264771639d7a03a757a', NULL, '+917998093403', '194', '2022-12-17 08:12:51', '2022-12-17 08:12:51'),
(46, 'DR04', 'DR04 - Raidighi Food Corner', NULL, 'uid_1671265401639d7c795b584', NULL, '+919734202852', '197', '2022-12-17 08:23:21', '2022-12-17 08:23:21'),
(47, 'DR03', 'DR03 - Rose Confectionery', NULL, 'uid_1671265760639d7de0a53ea', NULL, '+919239371685', '182', '2022-12-17 08:29:20', '2022-12-17 08:29:20'),
(48, 'DM09', 'DM09 -  MAA DURGA SHOP', NULL, 'uid_1671266079639d7f1f6f2b4', NULL, '+918637877696', '201', '2022-12-17 08:34:39', '2022-12-17 08:34:39'),
(49, 'DM10', 'DM10 - M. M Enterprise', NULL, 'uid_1671266538639d80eab4f7a', NULL, '+918017577696', '198', '2022-12-17 08:42:18', '2022-12-17 08:42:18'),
(51, 'DK04', 'DK04 - Kings Bandel', NULL, 'uid_1671267532639d84ccdd916', NULL, '+918820695454', '199', '2022-12-17 08:58:52', '2022-12-17 08:58:52'),
(52, 'DS19', 'DS19 - Srijoni Food Corner', NULL, 'uid_1671267958639d8676a0da6', NULL, '+919635080743', '187', '2022-12-17 09:05:58', '2022-12-17 09:05:58'),
(131, 'DF05', 'DF05 - FOOD QUEST KALIPARK', NULL, 'uid_168821858764a02bdb21c7c', NULL, '+919330513288', '7', '2023-07-01 13:36:27', '2023-07-01 13:36:27'),
(55, 'DB08', 'DB08 - BON APPETIT', NULL, 'uid_1671269450639d8c4a3a239BLOCK', NULL, '+919831050819', '116', '2022-12-17 09:30:50', '2022-12-17 09:30:50'),
(56, 'DG04', 'DG04 - GHOSH ENTERPRISE', NULL, 'uid_1671270133639d8ef596fba', NULL, '+919836076884', '143', '2022-12-17 09:42:13', '2022-12-17 09:42:13'),
(57, 'DS04', 'DS04 - M/S Subholakshmi', NULL, 'uid_1671270971639d923b4487b', NULL, '+918961451384', '177', '2022-12-17 09:56:11', '2022-12-17 09:56:11'),
(58, 'DR06', 'RANA CONFECTIONERY ULTADANGA', NULL, 'uid_1671277664639dac60a302eBLOCK', NULL, '+918100569077', '153', '2022-12-17 11:47:44', '2022-12-17 11:47:44'),
(123, 'DA16', 'Swapno Confectionery', NULL, 'uid_16854514916475f2e33109b', NULL, '+917890006627', '0', '2023-05-30 12:58:11', '2023-05-30 12:58:11'),
(130, 'DF04', 'DF04 - FOOD QUEST KESTOPUR', NULL, 'uid_168821747864a027862cfb1', NULL, '+919830647799', '7', '2023-07-01 13:17:58', '2023-07-01 13:17:58'),
(59, 'DB06', 'DB06 - BE FRESH IN RECESS', NULL, 'uid_1671277914639dad5a24800', NULL, '+919830668619', '198', '2022-12-17 11:51:54', '2022-12-17 11:51:54'),
(60, 'DR07', 'RANA CONFECTIONERY NARAYANPUR', NULL, 'uid_1671278527639dafbf99bf9BLOCK', NULL, '+917980212476', '113', '2022-12-17 12:02:07', '2022-12-17 12:02:07'),
(61, 'DS17', 'DS17 - Sarkar Enterprise', NULL, 'uid_1671279379639db3133215a', NULL, '+917407048947', '167', '2022-12-17 12:16:19', '2022-12-17 12:16:19'),
(62, 'DK03', 'DK03 - Kamala Food Cafe', NULL, 'uid_1671280322639db6c283df4', NULL, '+918617832750', '193', '2022-12-17 12:32:02', '2022-12-17 12:32:02'),
(63, 'DP07', 'DP07 - Prity Foods', 'prityfoods@gmail.com', 'uid_1671280697639db8399b4da', 'male', '+919830046861', '199', '2022-12-17 12:38:17', '2022-12-17 12:38:17'),
(64, 'DD05', 'DD05 - DURJAYA CONFECTIONERY', NULL, 'uid_1671281092639db9c444ba0', NULL, '+919831676437', '195', '2022-12-17 12:44:52', '2022-12-17 12:44:52'),
(106, 'DS25', 'Tnb@app', NULL, 'uid_16809540116431529b8210d', NULL, '+918981562299', '91', '2023-04-08 11:40:11', '2023-04-08 11:40:11'),
(65, 'DM11', 'DM11 - MDB INDIA', 'mumpybhattacharjee45@gmail.com', 'uid_1671281497639dbb59748fb', 'female', '+917439365296', '201', '2022-12-17 12:51:37', '2022-12-17 12:51:37'),
(66, 'DK05', 'Kanti Enterprise 05', 'amodyadav2229@gmail.com', 'uid_1671281861639dbcc5355f3', 'male', '+918296655199', '201', '2022-12-17 12:57:41', '2022-12-17 12:57:41'),
(67, 'DP08', 'DP08 - PUKEL FOOD PRODUCTS AND CONFECTIONERY', NULL, 'uid_1671282482639dbf32446c2', NULL, '+918370999205', '197', '2022-12-17 13:08:02', '2022-12-17 13:08:02'),
(68, 'DJ04', 'DJ04 - JOY ENTERPRISE', NULL, 'uid_1671282986639dc12a5bf15', NULL, '+919635925150', '189', '2022-12-17 13:16:26', '2022-12-17 13:16:26'),
(69, 'DB07', 'DB07 - BIMALA', NULL, 'uid_1671283848639dc488c6861', NULL, '+918910992109', '0', '2022-12-17 13:30:48', '2022-12-17 13:30:48'),
(70, 'DA11', 'AI ENTERPRISE', 'arpanhalder743@gmail.com', 'uid_1671284274639dc632a9e38', 'male', '+919851114275', '198', '2022-12-17 13:37:54', '2022-12-17 13:37:54'),
(71, 'DD06', 'DD06 - DELI BAKE', NULL, 'uid_1671285239639dc9f78e6f0', NULL, '+919874371051', '198', '2022-12-17 13:53:59', '2022-12-17 13:53:59'),
(72, 'DS21', 'DS21 - S. L. ENTERPRISE', NULL, 'uid_1671285654639dcb96a17ab', NULL, '+917450943692', '195', '2022-12-17 14:00:54', '2022-12-17 14:00:54'),
(73, 'DO03', 'DO03 - Omkar Enterprise Garia', NULL, 'uid_1671349043639ec3331f6e7BLOCK', NULL, '+917439138881', '111', '2022-12-18 07:37:23', '2022-12-18 07:37:23'),
(103, 'DS23', 'DS23 - Shivangi Uluberia', 'sushilchatterjee29@gmail.com', 'uid_16791491566415c86416863', 'female', '+919330796783', '118', '2023-03-18 14:19:16', '2023-03-18 14:19:16'),
(74, 'DR05', 'DR05 - RAI ENTERPRISE', NULL, 'uid_1671349981639ec6ddb4205BLOCK', NULL, '+916292224010', '97', '2022-12-18 07:53:01', '2022-12-18 07:53:01'),
(75, 'DG03', 'DG03 - GHOSH FOOD CONFECTIONERY', NULL, 'uid_1671350629639ec9651f3a4', NULL, '+919903564718', '199', '2022-12-18 08:03:49', '2022-12-18 08:03:49'),
(76, 'DM08', 'DM08 - M/S MEDIA WORLD', NULL, 'uid_1671351365639ecc450cca2', NULL, '+919775371739', '187', '2022-12-18 08:16:05', '2022-12-18 08:16:05'),
(77, 'DC02', 'DC02 - CHOWDHURY CONFECTIONERY', NULL, 'uid_1671351808639ece0070b3d', NULL, '+917980018003', '197', '2022-12-18 08:23:28', '2022-12-18 08:23:28'),
(78, 'DU01', 'DU01 - M/S Urmila Food Products', NULL, 'uid_1671352426639ed06a828b9', NULL, '+918420649965', '196', '2022-12-18 08:33:46', '2022-12-18 08:33:46'),
(79, 'DS10', 'DS10 - M/S Shulabh Paniya', NULL, 'uid_1671352827639ed1fb2206aBLOCK', NULL, '+919830026838', '119', '2022-12-18 08:40:27', '2022-12-18 08:40:27'),
(80, 'DM12', 'DM12 - Maa Chandi Food Corner', NULL, 'uid_1671353196639ed36c08277', NULL, '+919339822569', '199', '2022-12-18 08:46:36', '2022-12-18 08:46:36'),
(81, 'DM13', 'DM13 - Mina Shop', 'ajay.mallick.am3@gmail.com', 'uid_1671353419639ed44bd4a45', 'female', '+919804868584', '226', '2022-12-18 08:50:19', '2022-12-18 08:50:19'),
(82, 'DF06', 'DF06 - Family Food', NULL, 'uid_1671353825639ed5e1bc5f7BLOCK', NULL, '+919330027951', '157', '2022-12-18 08:57:05', '2022-12-18 08:57:05'),
(83, 'DO02', 'DO02 - Olypoly Confectionery', NULL, 'uid_1671354177639ed74126b81', NULL, '+917890076517', '195', '2022-12-18 09:02:57', '2022-12-18 09:02:57'),
(84, 'DA12', 'DA12 - Abhi Confectionery', NULL, 'uid_1671354808639ed9b89b2f1', NULL, '+919038647704', '180', '2022-12-18 09:13:28', '2022-12-18 09:13:28'),
(85, 'DD07', 'DD07 - Deys Enterprise', NULL, 'uid_1671355031639eda976c14c', NULL, '+919903069918', '218', '2022-12-18 09:17:11', '2022-12-18 09:17:11'),
(86, 'DA10', 'DA10 - Anurag Confectionery', NULL, 'uid_1671360708639ef0c40fa63BLOCK', NULL, '+917044229196', '161', '2022-12-18 10:51:48', '2022-12-18 10:51:48'),
(87, 'DC05', 'DC05 - Cake Shop Radha Confectionery', NULL, 'uid_1671361476639ef3c408bbf', NULL, '+919564058056', '199', '2022-12-18 11:04:36', '2022-12-18 11:04:36'),
(88, 'DA09', 'DA09 - Anurag Confectionery', NULL, 'uid_1671361650639ef4720fab3', NULL, '+919932875373', '193', '2022-12-18 11:07:30', '2022-12-18 11:07:30'),
(89, 'DS20', 'DS20 - Srija Confectionery', NULL, 'uid_1671362042639ef5faec8cb', NULL, '+919830196130', '189', '2022-12-18 11:14:03', '2022-12-18 11:14:03'),
(90, 'DS18', 'DS18 - Sweet Vision', NULL, 'uid_1671362562639ef8028d632', NULL, '+918276821904', '199', '2022-12-18 11:22:42', '2022-12-18 11:22:42'),
(91, 'DS22', 'DS22 - SS Food Center', NULL, 'uid_1671363359639efb1f0e7eb', NULL, '+919831703552', '199', '2022-12-18 11:35:59', '2022-12-18 11:35:59'),
(93, 'DS05', 'Smriti Confectionery', 'tastenbitenewbarrackpur@gmail.com', 'uid_1671367965639f0d1d0a199', 'female', '+919875604327', '4', '2022-12-18 12:52:45', '2022-12-18 12:52:45'),
(94, 'DB07', 'Bimala', NULL, 'uid_1671376658639f2f1231dab', NULL, '+919836178325', '198', '2022-12-18 15:17:38', '2022-12-18 15:17:38'),
(95, 'DR08', 'Rayan Enterprises', NULL, 'uid_167143344463a00ce40090a', NULL, '+919830849908', '198', '2022-12-19 07:04:04', '2022-12-19 07:04:04'),
(96, 'DT08', 'DT08 - Tinku Sardar', NULL, 'uid_167145985763a07411f292f', NULL, '+919123678465', '181', '2022-12-19 14:24:18', '2022-12-19 14:24:18'),
(97, 'DS04', 'Subho Lakshmi', NULL, 'uid_167146108263a078dabbedd', NULL, '+917003034533', '6', '2022-12-19 14:44:42', '2022-12-19 14:44:42'),
(98, 'DM14', 'DM14 - Malina Confectioneries', NULL, 'uid_167170945263a4430cae6b4', NULL, '+917439764641', '154', '2022-12-22 11:44:12', '2022-12-22 11:44:12'),
(99, 'DA13', 'DA13 - Apurba Stores', NULL, 'uid_167206713763a9b841e1a1b', NULL, '+919836724046', '161', '2022-12-26 15:05:37', '2022-12-26 15:05:37'),
(100, 'DN03', 'BON HOOGHLY', NULL, 'uid_167327038863bc1474d57aa', NULL, '+918282864451', '187', '2023-01-09 13:19:48', '2023-01-09 13:19:48'),
(105, 'DS24', 'DS24 - SHAW CONFECTIONERY', NULL, 'uid_167923612864171c20ebec9', NULL, '+919433603762', '83', '2023-03-19 14:28:49', '2023-03-19 14:28:49'),
(104, 'DP09', 'DP09 - Pradip Confectionery', NULL, 'uid_16792281816416fd1564ea9', NULL, '+919830798233', '80', '2023-03-19 12:16:21', '2023-03-19 12:16:21'),
(107, 'DM16', 'DS26 - SOURAV CONFECTIONERY', NULL, 'uid_1681729366643d275696005', NULL, '+918637077428', '84', '2023-04-17 11:02:46', '2023-04-17 11:02:46'),
(108, 'DM15', 'DM15 - Mon Enterprise', NULL, 'uid_1681729711643d28afbfd4a', NULL, '+919830404568', '82', '2023-04-17 11:08:31', '2023-04-17 11:08:31'),
(109, 'DR09', 'DR09 - Rimi Confectionery', NULL, 'uid_1681730524643d2bdc7e599', NULL, '+919875437726', '82', '2023-04-17 11:22:04', '2023-04-17 11:22:04'),
(110, 'DC06', 'DC06 - CHOWDHURY SHOP', NULL, 'uid_16824276476447ceffe6537', NULL, '+917044705985', '74', '2023-04-25 13:00:48', '2023-04-25 13:00:48'),
(112, 'DA15', 'DA15-Aliza Confectionery', NULL, 'uid_1683731600645bb490d6cb4', NULL, '+919681039082', '51', '2023-05-10 15:13:20', '2023-05-10 15:13:20'),
(111, 'DH02', 'DH02 - Halder Confectionery', 'tnb@gmail.com', 'uid_1683640274645a4fd209834', 'female', '+919064429200', '59', '2023-05-09 13:51:14', '2023-05-09 13:51:14'),
(113, 'DC07', 'DC07 - Chander Hat', NULL, 'uid_1684764766646b785e36c0b', NULL, '+918240381306', '34', '2023-05-22 14:12:46', '2023-05-22 14:12:46'),
(114, 'DK07', 'DK07 - KARMAKAR CONFECTIONERY', NULL, 'uid_1684765796646b7c646e9f1', NULL, '+919007165795', '53', '2023-05-22 14:29:56', '2023-05-22 14:29:56'),
(116, 'DL03', 'DL03 - LITTLE STAR', NULL, 'uid_168536472164749ff1cfc52', NULL, '+919143110330', '35', '2023-05-29 12:52:01', '2023-05-29 12:52:01'),
(115, 'DP10', 'DP10 - Priti Cake Shop', NULL, 'uid_1684936127646e15bf14048', NULL, '+918436239446', '26', '2023-05-24 13:48:47', '2023-05-24 13:48:47'),
(117, 'DS28', 'DS28 - SOVA VARIETY STORES', NULL, 'uid_16853668626474a84e34072', NULL, '+916290892590', '38', '2023-05-29 13:27:42', '2023-05-29 13:27:42'),
(118, 'DM17', 'DM17 - MAA TARA FOOD CONFECTIONERY', NULL, 'uid_16853675746474ab1607aca', NULL, '+917044527592', '39', '2023-05-29 13:39:34', '2023-05-29 13:39:34'),
(120, 'DA16', 'DS27 - APARAJITA ENTERPRISE', 'aparajitaenterprise23@gmail.com', 'uid_16854464756475df4b1dd33', 'male', '+917890006629', '37', '2023-05-30 11:34:35', '2023-05-30 11:34:35'),
(121, 'DD08', 'DD08 - DELI BAKE ICHAPUR', '22delibake@gmail.com', 'uid_16854471946475e21ad3aa6', 'male', '+918240870829', '39', '2023-05-30 11:46:34', '2023-05-30 11:46:34'),
(122, 'DJ05', 'DJ05 - Jay Jagannth Stores', NULL, 'uid_16854481216475e5b973480', NULL, '+919830721342', '37', '2023-05-30 12:02:01', '2023-05-30 12:02:01'),
(125, 'DT09', 'DT09 - TREAT ZONE', NULL, 'uid_16873548266492fdca3fb3c', NULL, '+919748229713', '17', '2023-06-21 13:40:26', '2023-06-21 13:40:26'),
(128, 'DP11', 'DP11 - PRIVILEGE RETAILS', NULL, 'uid_1687956523649c2c2b158b7', NULL, '+917003983509', '8', '2023-06-28 12:48:43', '2023-06-28 12:48:43'),
(124, 'DL02', 'DL02 - LAYERS NEW ALIPORE', NULL, 'uid_16865487156486b0eb10f13', NULL, '+918777431185', '28', '2023-06-12 05:45:15', '2023-06-12 05:45:15'),
(126, 'DR10', 'DR10 - RINA CONFECTIONERY', NULL, 'uid_168735946664930fea620c2', NULL, '+917439300601', '19', '2023-06-21 14:57:46', '2023-06-21 14:57:46'),
(127, 'DJ06', 'DJ06 - JOY GURU CONFECTIONERY', NULL, 'uid_16873597756493111fda496', NULL, '+919830686429', '12', '2023-06-21 15:02:55', '2023-06-21 15:02:55'),
(129, 'DS20', 'DS20 - SRIJA CONFECTIONERY', NULL, 'uid_1687957294649c2f2e8399c', NULL, '+918617280290', '0', '2023-06-28 13:01:34', '2023-06-28 13:01:34');

-- --------------------------------------------------------

--
-- Table structure for table `user_referrals`
--

CREATE TABLE `user_referrals` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` varchar(191) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `amount` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_referral_logs`
--

CREATE TABLE `user_referral_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` varchar(191) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `reason` varchar(191) DEFAULT NULL,
  `amount` varchar(191) DEFAULT NULL,
  `date` varchar(191) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `referral_type` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_tokens`
--

CREATE TABLE `user_tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` varchar(191) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `token` varchar(191) DEFAULT NULL,
  `user_agent` varchar(191) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_used_coupons`
--

CREATE TABLE `user_used_coupons` (
  `id` int(10) UNSIGNED NOT NULL,
  `coupon_code` varchar(191) DEFAULT NULL,
  `code_id` varchar(191) DEFAULT NULL,
  `uid` varchar(255) DEFAULT NULL,
  `order_id` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_wishlists`
--

CREATE TABLE `user_wishlists` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` varchar(191) NOT NULL,
  `product_id` varchar(191) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `variants`
--

CREATE TABLE `variants` (
  `id` int(10) UNSIGNED NOT NULL,
  `variant_title` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `websidebanners`
--

CREATE TABLE `websidebanners` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` longtext DEFAULT NULL,
  `web_image` longtext DEFAULT NULL,
  `banner_name` varchar(191) NOT NULL,
  `type` varchar(191) DEFAULT NULL,
  `openid` varchar(191) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_keys`
--
ALTER TABLE `account_keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addoncategories`
--
ALTER TABLE `addoncategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addonitems`
--
ALTER TABLE `addonitems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addonitem_cats`
--
ALTER TABLE `addonitem_cats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `address_users`
--
ALTER TABLE `address_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `all_coupons`
--
ALTER TABLE `all_coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `all_coupons_coupon_code_unique` (`coupon_code`);

--
-- Indexes for table `all_orders`
--
ALTER TABLE `all_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_details`
--
ALTER TABLE `app_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_updates`
--
ALTER TABLE `app_updates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_users`
--
ALTER TABLE `app_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `app_users_phone_unique` (`phone`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bulk_orders`
--
ALTER TABLE `bulk_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart_addons`
--
ALTER TABLE `cart_addons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart_addon_items`
--
ALTER TABLE `cart_addon_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contactus_seo`
--
ALTER TABLE `contactus_seo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `copyrights`
--
ALTER TABLE `copyrights`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `creditlog_terms`
--
ALTER TABLE `creditlog_terms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `credit_settings`
--
ALTER TABLE `credit_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_supports`
--
ALTER TABLE `customer_supports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_trusts`
--
ALTER TABLE `customer_trusts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_boys`
--
ALTER TABLE `delivery_boys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_boy_channels`
--
ALTER TABLE `delivery_boy_channels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_boy_orders`
--
ALTER TABLE `delivery_boy_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_boy_pincodes`
--
ALTER TABLE `delivery_boy_pincodes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_charges`
--
ALTER TABLE `delivery_charges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deliver_boy_pages`
--
ALTER TABLE `deliver_boy_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `devices`
--
ALTER TABLE `devices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food_addon_categories`
--
ALTER TABLE `food_addon_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food_addon_items`
--
ALTER TABLE `food_addon_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food_categories`
--
ALTER TABLE `food_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food_images`
--
ALTER TABLE `food_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food_items`
--
ALTER TABLE `food_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food_variants`
--
ALTER TABLE `food_variants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gmail_settings`
--
ALTER TABLE `gmail_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `google_analytics`
--
ALTER TABLE `google_analytics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `homepage_settings`
--
ALTER TABLE `homepage_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_banners`
--
ALTER TABLE `home_banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_layouts`
--
ALTER TABLE `home_layouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_store_descriptions`
--
ALTER TABLE `home_store_descriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items_in_offers`
--
ALTER TABLE `items_in_offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_ratings`
--
ALTER TABLE `item_ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_rating_images`
--
ALTER TABLE `item_rating_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `new_order_details`
--
ALTER TABLE `new_order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `new_order_masters`
--
ALTER TABLE `new_order_masters`
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
-- Indexes for table `offer_times`
--
ALTER TABLE `offer_times`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordered_addons`
--
ALTER TABLE `ordered_addons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_assign_process`
--
ALTER TABLE `order_assign_process`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_counters`
--
ALTER TABLE `order_counters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pagination_general`
--
ALTER TABLE `pagination_general`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `pincodes`
--
ALTER TABLE `pincodes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pincode_grouplist`
--
ALTER TABLE `pincode_grouplist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pincode_groups`
--
ALTER TABLE `pincode_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `privacy_policies`
--
ALTER TABLE `privacy_policies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pusher_settings`
--
ALTER TABLE `pusher_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recom_layouts`
--
ALTER TABLE `recom_layouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recom_layout_items`
--
ALTER TABLE `recom_layout_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `referlog_terms`
--
ALTER TABLE `referlog_terms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `referral_settings`
--
ALTER TABLE `referral_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `refer_terms`
--
ALTER TABLE `refer_terms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `requested_pincodes`
--
ALTER TABLE `requested_pincodes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant_details`
--
ALTER TABLE `restaurant_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant_galleries`
--
ALTER TABLE `restaurant_galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_settings`
--
ALTER TABLE `sms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `smtp_settings`
--
ALTER TABLE `smtp_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tax_settings`
--
ALTER TABLE `tax_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `time_slots`
--
ALTER TABLE `time_slots`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trending_searches`
--
ALTER TABLE `trending_searches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_carts`
--
ALTER TABLE `user_carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_credits`
--
ALTER TABLE `user_credits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_credit_logs`
--
ALTER TABLE `user_credit_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_has_permissions`
--
ALTER TABLE `user_has_permissions`
  ADD PRIMARY KEY (`user_id`,`permission_id`),
  ADD KEY `user_has_permissions_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `user_has_roles`
--
ALTER TABLE `user_has_roles`
  ADD PRIMARY KEY (`role_id`,`user_id`),
  ADD KEY `user_has_roles_user_id_foreign` (`user_id`);

--
-- Indexes for table `user_orders`
--
ALTER TABLE `user_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_profiles`
--
ALTER TABLE `user_profiles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_profiles_phone_unique` (`phone`),
  ADD UNIQUE KEY `user_profiles_email_unique` (`email`);

--
-- Indexes for table `user_referrals`
--
ALTER TABLE `user_referrals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_referral_logs`
--
ALTER TABLE `user_referral_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_tokens`
--
ALTER TABLE `user_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_used_coupons`
--
ALTER TABLE `user_used_coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_wishlists`
--
ALTER TABLE `user_wishlists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `variants`
--
ALTER TABLE `variants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `websidebanners`
--
ALTER TABLE `websidebanners`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_us`
--
ALTER TABLE `about_us`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `account_keys`
--
ALTER TABLE `account_keys`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `addoncategories`
--
ALTER TABLE `addoncategories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `addonitems`
--
ALTER TABLE `addonitems`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `addonitem_cats`
--
ALTER TABLE `addonitem_cats`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `address_users`
--
ALTER TABLE `address_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `all_coupons`
--
ALTER TABLE `all_coupons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `all_orders`
--
ALTER TABLE `all_orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app_details`
--
ALTER TABLE `app_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app_updates`
--
ALTER TABLE `app_updates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app_users`
--
ALTER TABLE `app_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bulk_orders`
--
ALTER TABLE `bulk_orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart_addons`
--
ALTER TABLE `cart_addons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart_addon_items`
--
ALTER TABLE `cart_addon_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `contactus_seo`
--
ALTER TABLE `contactus_seo`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `copyrights`
--
ALTER TABLE `copyrights`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `creditlog_terms`
--
ALTER TABLE `creditlog_terms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `credit_settings`
--
ALTER TABLE `credit_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_supports`
--
ALTER TABLE `customer_supports`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_trusts`
--
ALTER TABLE `customer_trusts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `delivery_boys`
--
ALTER TABLE `delivery_boys`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `delivery_boy_channels`
--
ALTER TABLE `delivery_boy_channels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `delivery_boy_orders`
--
ALTER TABLE `delivery_boy_orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `delivery_boy_pincodes`
--
ALTER TABLE `delivery_boy_pincodes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `delivery_charges`
--
ALTER TABLE `delivery_charges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deliver_boy_pages`
--
ALTER TABLE `deliver_boy_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `devices`
--
ALTER TABLE `devices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `food_addon_categories`
--
ALTER TABLE `food_addon_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `food_addon_items`
--
ALTER TABLE `food_addon_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `food_categories`
--
ALTER TABLE `food_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `food_images`
--
ALTER TABLE `food_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `food_items`
--
ALTER TABLE `food_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=221;

--
-- AUTO_INCREMENT for table `food_variants`
--
ALTER TABLE `food_variants`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gmail_settings`
--
ALTER TABLE `gmail_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `google_analytics`
--
ALTER TABLE `google_analytics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `homepage_settings`
--
ALTER TABLE `homepage_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_banners`
--
ALTER TABLE `home_banners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_layouts`
--
ALTER TABLE `home_layouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_store_descriptions`
--
ALTER TABLE `home_store_descriptions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `items_in_offers`
--
ALTER TABLE `items_in_offers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item_ratings`
--
ALTER TABLE `item_ratings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item_rating_images`
--
ALTER TABLE `item_rating_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `new_order_details`
--
ALTER TABLE `new_order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `new_order_masters`
--
ALTER TABLE `new_order_masters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
-- AUTO_INCREMENT for table `offer_times`
--
ALTER TABLE `offer_times`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ordered_addons`
--
ALTER TABLE `ordered_addons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_assign_process`
--
ALTER TABLE `order_assign_process`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_counters`
--
ALTER TABLE `order_counters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pagination_general`
--
ALTER TABLE `pagination_general`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pincodes`
--
ALTER TABLE `pincodes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pincode_grouplist`
--
ALTER TABLE `pincode_grouplist`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pincode_groups`
--
ALTER TABLE `pincode_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `privacy_policies`
--
ALTER TABLE `privacy_policies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pusher_settings`
--
ALTER TABLE `pusher_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `recom_layouts`
--
ALTER TABLE `recom_layouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `recom_layout_items`
--
ALTER TABLE `recom_layout_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `referlog_terms`
--
ALTER TABLE `referlog_terms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `referral_settings`
--
ALTER TABLE `referral_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `refer_terms`
--
ALTER TABLE `refer_terms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `requested_pincodes`
--
ALTER TABLE `requested_pincodes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `restaurant_details`
--
ALTER TABLE `restaurant_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `restaurant_galleries`
--
ALTER TABLE `restaurant_galleries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sms_settings`
--
ALTER TABLE `sms_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `smtp_settings`
--
ALTER TABLE `smtp_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tax_settings`
--
ALTER TABLE `tax_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `terms`
--
ALTER TABLE `terms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `time_slots`
--
ALTER TABLE `time_slots`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trending_searches`
--
ALTER TABLE `trending_searches`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_carts`
--
ALTER TABLE `user_carts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_credits`
--
ALTER TABLE `user_credits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_credit_logs`
--
ALTER TABLE `user_credit_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_orders`
--
ALTER TABLE `user_orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_profiles`
--
ALTER TABLE `user_profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `user_referrals`
--
ALTER TABLE `user_referrals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_referral_logs`
--
ALTER TABLE `user_referral_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_tokens`
--
ALTER TABLE `user_tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_used_coupons`
--
ALTER TABLE `user_used_coupons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_wishlists`
--
ALTER TABLE `user_wishlists`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `variants`
--
ALTER TABLE `variants`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `websidebanners`
--
ALTER TABLE `websidebanners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
