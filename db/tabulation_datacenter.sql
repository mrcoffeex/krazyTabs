-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 01, 2022 at 10:54 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.0.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tabulation_datacenter`
--

-- --------------------------------------------------------

--
-- Table structure for table `tabs_candidates`
--

CREATE TABLE `tabs_candidates` (
  `tabs_can_id` int(11) NOT NULL,
  `tabs_can_number` int(11) NOT NULL,
  `tabs_can_name` text NOT NULL,
  `tabs_can_desc` text NOT NULL,
  `tabs_can_created` datetime NOT NULL,
  `tabs_event_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tabs_candidates`
--

INSERT INTO `tabs_candidates` (`tabs_can_id`, `tabs_can_number`, `tabs_can_name`, `tabs_can_desc`, `tabs_can_created`, `tabs_event_id`) VALUES
(1, 1, 'Miss Aplaya', 'Miss Aplaya', '2022-08-31 17:04:49', 3),
(2, 2, 'Miss Balabag', 'Miss Balabag', '2022-08-31 17:20:42', 3),
(5, 3, 'Miss Binaton', 'Miss Binaton', '2022-09-01 11:06:07', 3),
(6, 4, 'Miss Cogon', 'Miss Cogon', '2022-09-01 11:06:29', 3),
(7, 5, 'Miss Colorado', 'Miss Colorado', '2022-09-01 11:07:06', 3),
(8, 6, 'Miss Dawis', 'Miss Dawis', '2022-09-01 11:07:25', 3),
(9, 7, 'Miss Dulangan', 'Miss Dulangan', '2022-09-01 11:07:52', 3),
(10, 8, 'Miss Goma', 'Miss Goma', '2022-09-01 11:08:25', 3),
(11, 9, 'Miss Igpit', 'Miss Igpit', '2022-09-01 11:09:05', 3),
(12, 10, 'Miss Kapatagan', 'Miss Kapatagan', '2022-09-01 11:09:29', 3),
(13, 11, 'Miss Kiagot', 'Miss Kiagot', '2022-09-01 11:10:26', 3),
(14, 12, 'Miss Lungag', 'Miss Lungag', '2022-09-01 11:11:03', 3),
(15, 13, 'Miss Mahayahay', 'Miss Mahayahay', '2022-09-01 11:11:40', 3),
(16, 14, 'Miss Matti', 'Miss Matti', '2022-09-01 11:14:10', 3),
(17, 15, 'Miss Ruparan', 'Miss Ruparan', '2022-09-01 11:14:45', 3),
(18, 16, 'Miss San Agustin', 'Miss San Agustin', '2022-09-01 11:15:23', 3),
(19, 19, 'Miss San Roque', 'Miss San Roque', '2022-09-01 11:15:50', 3),
(20, 20, 'Miss Sinaliwan', 'Miss Sinaliwan', '2022-09-01 11:16:41', 3),
(21, 21, 'Miss Soong', 'Miss Soong', '2022-09-01 11:17:26', 3),
(22, 22, 'Miss Tiguman', 'Miss Tiguman', '2022-09-01 11:17:44', 3),
(23, 23, 'Miss Tres de Mayo', 'Miss Tres de Mayo', '2022-09-01 11:18:06', 3),
(24, 17, 'Miss San Jose', 'Miss San Jose', '2022-09-01 11:24:25', 3),
(25, 18, 'Miss San Miguel', 'Miss San Miguel', '2022-09-01 11:24:50', 3),
(26, 24, 'Miss Zone 1', 'Miss Zone 1', '2022-09-01 11:25:12', 3),
(27, 25, 'Miss Zone 2', 'Miss Zone 2', '2022-09-01 11:25:28', 3),
(28, 26, 'Miss Zone 3', 'Miss Zone 3', '2022-09-01 11:25:46', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tabs_categories`
--

CREATE TABLE `tabs_categories` (
  `tabs_cat_id` int(11) NOT NULL,
  `tabs_cat_title` text NOT NULL,
  `tabs_cat_percentage` double NOT NULL,
  `tabs_event_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tabs_categories`
--

INSERT INTO `tabs_categories` (`tabs_cat_id`, `tabs_cat_title`, `tabs_cat_percentage`, `tabs_event_id`) VALUES
(5, 'Casual', 17.5, 3),
(6, 'Swimwear', 17.5, 3),
(7, 'Modern Filipiñana', 17.5, 3),
(8, 'Gown', 17.5, 3),
(9, 'Preliminary Interview', 30, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tabs_criterias`
--

CREATE TABLE `tabs_criterias` (
  `tabs_cri_id` int(11) NOT NULL,
  `tabs_cri_title` text NOT NULL,
  `tabs_cri_score_min` int(11) NOT NULL,
  `tabs_cri_score_max` int(11) NOT NULL,
  `tabs_cri_percentage` double NOT NULL,
  `tabs_cat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tabs_criterias`
--

INSERT INTO `tabs_criterias` (`tabs_cri_id`, `tabs_cri_title`, `tabs_cri_score_min`, `tabs_cri_score_max`, `tabs_cri_percentage`, `tabs_cat_id`) VALUES
(3, 'Pronunciation', 5, 10, 0, 1),
(4, 'Delivery', 5, 10, 0, 1),
(5, 'Thought', 5, 10, 0, 1),
(7, 'Casual', 5, 10, 0, 5),
(8, 'Modern Filipiñana ', 5, 10, 0, 7),
(9, 'Swimwear', 5, 10, 0, 6),
(10, 'Gown', 5, 10, 0, 8),
(11, 'Preliminary Interview', 5, 10, 0, 9);

-- --------------------------------------------------------

--
-- Table structure for table `tabs_events`
--

CREATE TABLE `tabs_events` (
  `tabs_event_id` int(11) NOT NULL,
  `tabs_event_title` text NOT NULL,
  `tabs_event_desc` text NOT NULL,
  `tabs_event_year` text NOT NULL,
  `tabs_event_created` datetime NOT NULL,
  `tabs_event_updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tabs_events`
--

INSERT INTO `tabs_events` (`tabs_event_id`, `tabs_event_title`, `tabs_event_desc`, `tabs_event_year`, `tabs_event_created`, `tabs_event_updated`) VALUES
(3, 'Mutya ng Digos 2022', 'mutya ng digos 2022', '2022', '2022-08-31 15:57:15', '2022-09-01 10:13:02'),
(4, 'Sinag ng Digos 2022', 'sinag ng digos 2022', '2022', '2022-09-01 09:59:18', '2022-09-01 09:59:18');

-- --------------------------------------------------------

--
-- Table structure for table `tabs_my_project`
--

CREATE TABLE `tabs_my_project` (
  `tabs_project` int(1) NOT NULL,
  `tabs_project_name` text NOT NULL,
  `tabs_project_address` text NOT NULL,
  `tabs_system_title` text NOT NULL,
  `tabs_year_origin` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tabs_my_project`
--

INSERT INTO `tabs_my_project` (`tabs_project`, `tabs_project_name`, `tabs_project_address`, `tabs_system_title`, `tabs_year_origin`) VALUES
(1, 'UM Tabulation Team', 'Digos City', '', '2022-08-31 11:27:07');

-- --------------------------------------------------------

--
-- Table structure for table `tabs_notification`
--

CREATE TABLE `tabs_notification` (
  `tabs_notif_id` int(100) NOT NULL,
  `tabs_notif_type` text NOT NULL,
  `tabs_notif_text` text NOT NULL,
  `tabs_notif_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tabs_notification`
--

INSERT INTO `tabs_notification` (`tabs_notif_id`, `tabs_notif_type`, `tabs_notif_text`, `tabs_notif_date`) VALUES
(1, 'auth', 'Login Notification by kent john', '2022-06-11 03:06:40'),
(2, 'auth', 'Login Notification by kent john', '2022-06-11 03:06:47'),
(3, 'auth', 'Login Notification by kent john', '2022-06-11 03:08:16'),
(4, 'auth', 'Logout by kent john', '2022-06-11 15:44:21'),
(5, 'auth', 'Login Attempt - asdasd', '2022-07-23 19:00:35'),
(6, 'auth', 'Login Attempt - asdad', '2022-07-23 19:00:41'),
(7, 'auth', 'Login Attempt - kjohn0319@gmail.com', '2022-07-23 19:01:11'),
(8, 'auth', 'Login Attempt - kjohn0319@gmail.com', '2022-07-23 19:01:19'),
(9, 'auth', 'Login Attempt - kjohn0319@gmail.com', '2022-07-23 19:02:40'),
(10, 'auth', 'Login - kjohn0319@gmail.com', '2022-07-23 19:06:05'),
(11, 'auth', 'Login - kjohn0319@gmail.com', '2022-07-24 14:11:33'),
(12, 'auth', 'Logout - root', '2022-07-24 14:35:43'),
(13, 'auth', 'Login - kjohn0319@gmail.com', '2022-07-24 14:35:49'),
(14, 'auth', 'Login - kjohn0319@gmail.com', '2022-07-24 16:14:54'),
(15, 'auth', 'Logout - root', '2022-07-24 16:25:05'),
(16, 'auth', 'Login - kjohn0319@gmail.com', '2022-07-24 16:28:59'),
(17, 'auth', 'Logout - root', '2022-07-24 16:29:04'),
(18, 'auth', 'Login - kjohn0319@gmail.com', '2022-07-24 16:29:17'),
(19, 'auth', 'Logout - root', '2022-07-24 16:29:20'),
(20, 'auth', 'Login - kjohn0319@gmail.com', '2022-07-24 16:30:00'),
(21, 'auth', 'Logout - root', '2022-07-24 23:16:32'),
(22, 'auth', 'Login - kjohn0319@gmail.com', '2022-07-24 23:16:38'),
(23, 'auth', 'Logout - root', '2022-07-25 00:09:23'),
(24, 'auth', 'Login Attempt - asdasd@asdasd', '2022-07-25 00:09:28'),
(25, 'auth', 'Login - kjohn0319@gmail.com', '2022-07-25 00:09:34'),
(26, 'auth', 'Logout - kjohn0319@gmail.com', '2022-07-25 00:10:12'),
(27, 'auth', 'Login - kjohn0319@gmail.com', '2022-07-25 00:10:18'),
(28, 'auth', 'Logout - kjohn0319@gmail.com', '2022-07-25 00:11:34'),
(29, 'attempt', 'Login Attempt - kjohn0319@gmail.com', '2022-07-25 00:11:39'),
(30, 'attempt', 'Login Attempt - kjohn0319@gmail.com', '2022-07-25 00:11:42'),
(31, 'auth', 'Login - kjohn0319@gmail.com', '2022-07-25 00:11:46'),
(32, 'auth', 'Login - kjohn0319@gmail.com', '2022-08-03 22:49:41'),
(33, 'auth', 'Logout - kjohn0319@gmail.com', '2022-08-03 22:51:47'),
(34, 'auth', 'Login - kjohn0319@gmail.com', '2022-08-03 22:52:20'),
(35, 'auth', 'Login - kjohn0319@gmail.com', '2022-08-04 14:51:12'),
(36, 'attempt', 'Login Attempt - kjohn0319@gmail.com', '2022-08-04 16:50:35'),
(37, 'attempt', 'Login Attempt - kjohn0319@gmail.com', '2022-08-04 16:50:44'),
(38, 'attempt', 'Login Attempt - kjohn0319@gmail.com', '2022-08-04 16:51:16'),
(39, 'auth', 'Login - kjohn0319@gmail.com', '2022-08-04 16:51:29'),
(40, 'auth', 'Logout - kjohn0319@gmail.com', '2022-08-04 17:49:06'),
(41, 'attempt', 'Login Attempt - 1', '2022-08-06 00:07:13'),
(42, 'attempt', 'Login Attempt - 1', '2022-08-06 00:07:18'),
(43, 'attempt', 'Login Attempt - 1', '2022-08-06 00:07:35'),
(44, 'attempt', 'Login Attempt - 1', '2022-08-06 00:12:12'),
(45, 'auth', 'Login - kjohn0319@gmail.com', '2022-08-06 00:13:05'),
(46, 'auth', 'Logout - kjohn0319@gmail.com', '2022-08-06 00:14:19'),
(47, 'auth', 'Login - kjohn0319@gmail.com', '2022-08-06 00:14:24'),
(48, 'auth', 'Logout - kjohn0319@gmail.com', '2022-08-06 00:49:18'),
(49, 'auth', 'Login - kjohn0319@gmail.com', '2022-08-06 13:22:54'),
(50, 'auth', 'Logout - kjohn0319@gmail.com', '2022-08-06 13:28:58'),
(51, 'attempt', 'Login Attempt - kjohnk0319@gmail.com', '2022-08-31 12:40:38'),
(52, 'auth', 'Login - kjohn0319@gmail.com', '2022-08-31 12:40:48'),
(53, 'auth', 'Login - kjohn0319@gmail.com', '2022-08-31 12:41:46'),
(54, 'auth', 'Login - kjohn0319@gmail.com', '2022-08-31 13:22:40'),
(55, 'auth', 'Login - kjohn0319@gmail.com', '2022-08-31 14:27:03'),
(56, 'auth', 'Logout - ', '2022-08-31 15:00:31'),
(57, 'auth', 'Logout - ', '2022-08-31 15:02:36'),
(58, 'auth', 'Login - kjohn0319@gmail.com', '2022-08-31 15:03:41'),
(59, 'auth', 'Login - kjohn0319@gmail.com', '2022-08-31 15:04:54'),
(60, 'auth', 'Logout - kjohn0319@gmail.com', '2022-08-31 15:04:55'),
(61, 'attempt', 'Login Attempt - kjohn0319@gmail.com', '2022-08-31 15:08:03'),
(62, 'auth', 'Login - kjohn0319@gmail.com', '2022-08-31 15:08:11'),
(63, 'auth', 'Logout - kjohn0319@gmail.com', '2022-08-31 15:12:25'),
(64, 'auth', 'Login - kjohn0319@gmail.com', '2022-08-31 15:12:41'),
(65, 'auth', 'Logout - kjohn0319@gmail.com', '2022-08-31 15:46:55'),
(66, 'auth', 'Login - kjohn0319@gmail.com', '2022-08-31 16:00:46'),
(67, 'auth', 'Login - kjohn0319@gmail.com', '2022-08-31 19:20:21'),
(68, 'auth', 'Login - kjohn0319@gmail.com', '2022-08-31 21:56:43'),
(69, 'auth', 'Logout - kjohn0319@gmail.com', '2022-09-01 09:58:15'),
(70, 'auth', 'Login - kjohn0319@gmail.com', '2022-09-01 09:58:38'),
(71, 'auth', 'Login - kjohn0319@gmail.com', '2022-09-01 09:59:17'),
(72, 'auth', 'Logout - kjohn0319@gmail.com', '2022-09-01 10:01:07'),
(73, 'auth', 'Login - joanemay', '2022-09-01 10:01:52'),
(74, 'auth', 'Logout - joanemay', '2022-09-01 10:05:41'),
(75, 'auth', 'Login - joanemay', '2022-09-01 10:05:50'),
(76, 'auth', 'Logout - joanemay', '2022-09-01 10:05:54'),
(77, 'auth', 'Login - kjohn0319@gmail.com', '2022-09-01 10:06:00'),
(78, 'auth', 'Logout - kjohn0319@gmail.com', '2022-09-01 10:07:42'),
(79, 'auth', 'Login - judge1', '2022-09-01 10:07:55'),
(80, 'auth', 'Login - kjohn0319@gmail.com', '2022-09-01 10:15:48'),
(81, 'auth', 'Login - kjohn0319@gmail.com', '2022-09-01 10:18:30'),
(82, 'auth', 'Logout - kjohn0319@gmail.com', '2022-09-01 15:31:40'),
(83, 'attempt', 'Login Attempt - judge2', '2022-09-01 15:31:50'),
(84, 'auth', 'Login - kjohn0319@gmail.com', '2022-09-01 15:32:17'),
(85, 'auth', 'Logout - kjohn0319@gmail.com', '2022-09-01 15:32:46'),
(86, 'auth', 'Login - judge2', '2022-09-01 15:32:54'),
(87, 'auth', 'Logout - judge2', '2022-09-01 16:14:13'),
(88, 'attempt', 'Login Attempt - judge3', '2022-09-01 16:14:26'),
(89, 'attempt', 'Login Attempt - judge 3', '2022-09-01 16:14:37'),
(90, 'attempt', 'Login Attempt - judge3', '2022-09-01 16:14:46'),
(91, 'auth', 'Login - kjohn0319@gmail.com', '2022-09-01 16:14:55'),
(92, 'auth', 'Logout - kjohn0319@gmail.com', '2022-09-01 16:15:17'),
(93, 'auth', 'Login - judge3', '2022-09-01 16:15:23');

-- --------------------------------------------------------

--
-- Table structure for table `tabs_results`
--

CREATE TABLE `tabs_results` (
  `tabs_result_id` int(11) NOT NULL,
  `tabs_event_id` int(11) NOT NULL,
  `tabs_cat_id` int(11) NOT NULL,
  `tabs_cri_id` int(11) NOT NULL,
  `tabs_user_id` int(11) NOT NULL,
  `tabs_can_id` int(11) NOT NULL,
  `tabs_result_score` double NOT NULL,
  `tabs_result_created` datetime NOT NULL,
  `tabs_result_updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tabs_results`
--

INSERT INTO `tabs_results` (`tabs_result_id`, `tabs_event_id`, `tabs_cat_id`, `tabs_cri_id`, `tabs_user_id`, `tabs_can_id`, `tabs_result_score`, `tabs_result_created`, `tabs_result_updated`) VALUES
(2, 3, 5, 7, 9, 1, 8.8, '2022-09-01 14:58:34', '2022-09-01 14:58:34'),
(3, 3, 5, 7, 9, 2, 9.85, '2022-09-01 15:04:21', '2022-09-01 15:04:21'),
(4, 3, 5, 7, 9, 5, 8.2, '2022-09-01 15:18:45', '2022-09-01 15:18:45'),
(5, 3, 5, 7, 9, 9, 9, '2022-09-01 15:26:12', '2022-09-01 15:26:12'),
(6, 3, 5, 7, 9, 6, 9.45, '2022-09-01 15:27:57', '2022-09-01 15:27:57'),
(7, 3, 5, 7, 9, 7, 8.7, '2022-09-01 15:31:45', '2022-09-01 15:31:45'),
(8, 3, 5, 7, 9, 8, 9.85, '2022-09-01 15:33:01', '2022-09-01 15:33:01'),
(9, 3, 5, 7, 9, 10, 9.4, '2022-09-01 15:33:09', '2022-09-01 15:33:09'),
(10, 3, 5, 7, 9, 11, 8.75, '2022-09-01 15:33:15', '2022-09-01 15:33:15'),
(11, 3, 5, 7, 9, 12, 8, '2022-09-01 15:33:23', '2022-09-01 15:33:23'),
(12, 3, 5, 7, 9, 13, 6.35, '2022-09-01 15:33:28', '2022-09-01 15:33:28'),
(13, 3, 5, 7, 9, 14, 6.9, '2022-09-01 15:33:35', '2022-09-01 15:33:35'),
(14, 3, 5, 7, 9, 15, 9.3, '2022-09-01 15:33:40', '2022-09-01 15:33:40'),
(15, 3, 5, 7, 9, 16, 9.75, '2022-09-01 15:33:45', '2022-09-01 15:33:45'),
(16, 3, 5, 7, 9, 17, 8.8, '2022-09-01 15:33:50', '2022-09-01 15:33:50'),
(17, 3, 5, 7, 9, 18, 9.9, '2022-09-01 15:33:57', '2022-09-01 15:33:57'),
(18, 3, 5, 7, 9, 24, 8.9, '2022-09-01 15:34:04', '2022-09-01 15:34:04'),
(19, 3, 5, 7, 9, 25, 8.65, '2022-09-01 15:34:27', '2022-09-01 15:34:27'),
(20, 3, 5, 7, 9, 19, 9.05, '2022-09-01 15:34:37', '2022-09-01 15:34:37'),
(21, 3, 5, 7, 13, 1, 6.3, '2022-09-01 15:38:14', '2022-09-01 15:38:14'),
(22, 3, 9, 11, 9, 1, 8.75, '2022-09-01 15:51:30', '2022-09-01 15:51:30'),
(23, 3, 9, 11, 13, 1, 9.3, '2022-09-01 15:51:33', '2022-09-01 15:51:33'),
(24, 3, 9, 11, 9, 2, 8.13, '2022-09-01 15:51:39', '2022-09-01 15:51:39'),
(25, 3, 9, 11, 13, 2, 9.1, '2022-09-01 15:51:42', '2022-09-01 15:51:42'),
(26, 3, 9, 11, 9, 5, 8.01, '2022-09-01 15:51:50', '2022-09-01 15:51:50'),
(27, 3, 9, 11, 13, 5, 9.1, '2022-09-01 15:51:53', '2022-09-01 15:51:53'),
(28, 3, 9, 11, 9, 6, 7.86, '2022-09-01 15:52:02', '2022-09-01 15:52:02'),
(29, 3, 9, 11, 13, 6, 8.9, '2022-09-01 15:52:04', '2022-09-01 15:52:04'),
(30, 3, 9, 11, 13, 7, 8.3, '2022-09-01 15:53:11', '2022-09-01 15:53:11'),
(31, 3, 9, 11, 13, 8, 8.8, '2022-09-01 15:53:21', '2022-09-01 15:53:21'),
(32, 3, 9, 11, 13, 9, 9.1, '2022-09-01 15:54:06', '2022-09-01 15:54:06'),
(33, 3, 9, 11, 13, 10, 8.3, '2022-09-01 15:55:32', '2022-09-01 15:55:32'),
(34, 3, 9, 11, 13, 11, 8.4, '2022-09-01 15:55:43', '2022-09-01 15:55:43'),
(35, 3, 9, 11, 13, 12, 9.4, '2022-09-01 15:56:03', '2022-09-01 15:56:03'),
(36, 3, 9, 11, 13, 13, 8.6, '2022-09-01 15:56:30', '2022-09-01 15:56:30'),
(37, 3, 9, 11, 13, 14, 8.4, '2022-09-01 15:56:56', '2022-09-01 15:56:56'),
(38, 3, 9, 11, 13, 15, 8.9, '2022-09-01 15:57:48', '2022-09-01 15:57:48'),
(39, 3, 9, 11, 13, 16, 8.6, '2022-09-01 15:58:27', '2022-09-01 15:58:27'),
(40, 3, 9, 11, 13, 17, 8.7, '2022-09-01 15:58:39', '2022-09-01 15:58:39'),
(41, 3, 9, 11, 13, 18, 8.3, '2022-09-01 15:59:27', '2022-09-01 15:59:27'),
(42, 3, 9, 11, 13, 24, 8.4, '2022-09-01 15:59:39', '2022-09-01 15:59:39'),
(43, 3, 9, 11, 13, 25, 8.5, '2022-09-01 16:00:13', '2022-09-01 16:00:13'),
(44, 3, 9, 11, 13, 19, 8.8, '2022-09-01 16:01:00', '2022-09-01 16:01:00'),
(45, 3, 9, 11, 13, 20, 8.4, '2022-09-01 16:01:19', '2022-09-01 16:01:19'),
(46, 3, 9, 11, 13, 21, 8.8, '2022-09-01 16:03:53', '2022-09-01 16:03:53'),
(47, 3, 9, 11, 13, 22, 8.6, '2022-09-01 16:04:01', '2022-09-01 16:04:01'),
(48, 3, 9, 11, 13, 23, 9.5, '2022-09-01 16:04:12', '2022-09-01 16:04:12'),
(49, 3, 9, 11, 13, 26, 9.3, '2022-09-01 16:06:56', '2022-09-01 16:06:56'),
(50, 3, 9, 11, 13, 27, 9.1, '2022-09-01 16:07:06', '2022-09-01 16:07:06'),
(51, 3, 9, 11, 13, 28, 9.4, '2022-09-01 16:07:16', '2022-09-01 16:07:16');

-- --------------------------------------------------------

--
-- Table structure for table `tabs_users`
--

CREATE TABLE `tabs_users` (
  `tabs_user_id` int(10) NOT NULL,
  `tabs_user_code` varchar(30) NOT NULL,
  `tabs_full_name` varchar(255) NOT NULL,
  `tabs_username` varchar(50) NOT NULL,
  `tabs_password` varchar(100) NOT NULL,
  `tabs_user_type` int(5) NOT NULL,
  `tabs_user_status` int(1) NOT NULL,
  `tabs_user_profile_img` text NOT NULL,
  `tabs_event_id` int(11) NOT NULL,
  `tabs_user_created` datetime NOT NULL,
  `tabs_user_updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tabs_users`
--

INSERT INTO `tabs_users` (`tabs_user_id`, `tabs_user_code`, `tabs_full_name`, `tabs_username`, `tabs_password`, `tabs_user_type`, `tabs_user_status`, `tabs_user_profile_img`, `tabs_event_id`, `tabs_user_created`, `tabs_user_updated`) VALUES
(1, '0', 'devmaster', 'kjohn0319@gmail.com', 'gozElr3tOF4jED67gzd4r2smH2NWy83w+P89isjSSgM=', 0, 0, '', 0, '2022-08-04 00:00:00', '2022-08-04 00:00:00'),
(8, '20220804171234lPKZlLkU', 'joane may delima', 'joanemay', 'KYbhfSccmfgV6lsb1k23tk6Fz98VuKKfHX24W3k9F1Y=', 0, 0, '', 0, '2022-08-04 17:12:34', '2022-08-04 17:12:34'),
(9, '20220806004654pcNlHHeq', 'CRISTY C. EPE', 'judge1', 'KYbhfSccmfgV6lsb1k23tk6Fz98VuKKfHX24W3k9F1Y=', 1, 0, '', 3, '2022-08-06 00:46:54', '2022-09-01 10:07:35'),
(10, '20220831141717ITDhGPPj', 'lebron james', 'lebrons', 'As2CKbjBIK6Ll6wvk2RGYuFqk1xs0seZfmHSsIrZdwM=', 0, 0, '', 0, '2022-08-31 14:17:17', '2022-08-31 14:17:17'),
(13, '20220831162011g2C4Mqyy', 'FISCAL ELEANOR DELA PEÑA', 'judge2', 'KYbhfSccmfgV6lsb1k23tk6Fz98VuKKfHX24W3k9F1Y=', 1, 0, '', 3, '2022-08-31 16:20:11', '2022-09-01 10:02:46'),
(14, '20220901100320k7vRRjKW', 'NIKKI TAN', 'judge3', 'L7C+PKDyZ1n46nzFFjGK0L/hoEwjHjPSJIn/6PEYvgc=', 1, 0, '', 3, '2022-09-01 10:03:20', '2022-09-01 16:15:13'),
(15, '202209011004037LiiqoMT', 'KAISER BOADO', 'judge4', 'EdrBDeGinPXFB1OcFBM+7v+edYZLNwSeT2wtD5Mtzjg=', 1, 0, '', 3, '2022-09-01 10:04:03', '2022-09-01 10:04:03'),
(16, '20220901100442QcNDrm9v', 'ATTY. IVY LURICA', 'Judge1', '+wtpVqRhAVCIac1BfSlXtDxydJDFmmsF5tgA+YoA2Ss=', 1, 0, '', 4, '2022-09-01 10:04:42', '2022-09-01 10:04:42'),
(17, '202209011005097EJTCFoB', 'DR. TITO ENDRINA', 'Judge2', 'yeX3voMFLW9XPAD8IBBNr3J0mTSMM8WBkUZrUTei/AY=', 1, 0, '', 4, '2022-09-01 10:05:09', '2022-09-01 10:05:09'),
(18, '20220901100526VLj0zyaM', 'DR. CLARENCE PILLERIN', 'Judge3', 'PovpT6w6wRZ6INjv54qFj6CCPLP6d8fp9s2KQz+qa3c=', 1, 0, '', 4, '2022-09-01 10:05:26', '2022-09-01 10:05:26'),
(19, '202209011005428GJa9KQG', 'ATTY. TRIZIA PAULINO', 'Judge4', 'FREarxe6YKInyiCPof7Q3gNpjNViVKViexZzqyTO/BY=', 1, 0, '', 4, '2022-09-01 10:05:42', '2022-09-01 10:05:42'),
(20, '20220901100559eYjaK92i', 'GERVASIO R. SALINAS, JR., PHD ', 'Judge5', 'mGgBCH2iJGYkBCt9s1zUPMfnxkaWEuEXxdkcSOrrAEI=', 1, 0, '', 4, '2022-09-01 10:05:59', '2022-09-01 10:05:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tabs_candidates`
--
ALTER TABLE `tabs_candidates`
  ADD PRIMARY KEY (`tabs_can_id`);

--
-- Indexes for table `tabs_categories`
--
ALTER TABLE `tabs_categories`
  ADD PRIMARY KEY (`tabs_cat_id`);

--
-- Indexes for table `tabs_criterias`
--
ALTER TABLE `tabs_criterias`
  ADD PRIMARY KEY (`tabs_cri_id`);

--
-- Indexes for table `tabs_events`
--
ALTER TABLE `tabs_events`
  ADD PRIMARY KEY (`tabs_event_id`);

--
-- Indexes for table `tabs_my_project`
--
ALTER TABLE `tabs_my_project`
  ADD PRIMARY KEY (`tabs_project`);

--
-- Indexes for table `tabs_notification`
--
ALTER TABLE `tabs_notification`
  ADD PRIMARY KEY (`tabs_notif_id`);

--
-- Indexes for table `tabs_results`
--
ALTER TABLE `tabs_results`
  ADD PRIMARY KEY (`tabs_result_id`);

--
-- Indexes for table `tabs_users`
--
ALTER TABLE `tabs_users`
  ADD PRIMARY KEY (`tabs_user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tabs_candidates`
--
ALTER TABLE `tabs_candidates`
  MODIFY `tabs_can_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tabs_categories`
--
ALTER TABLE `tabs_categories`
  MODIFY `tabs_cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tabs_criterias`
--
ALTER TABLE `tabs_criterias`
  MODIFY `tabs_cri_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tabs_events`
--
ALTER TABLE `tabs_events`
  MODIFY `tabs_event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tabs_my_project`
--
ALTER TABLE `tabs_my_project`
  MODIFY `tabs_project` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tabs_notification`
--
ALTER TABLE `tabs_notification`
  MODIFY `tabs_notif_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `tabs_results`
--
ALTER TABLE `tabs_results`
  MODIFY `tabs_result_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `tabs_users`
--
ALTER TABLE `tabs_users`
  MODIFY `tabs_user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
