-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 06, 2023 at 08:03 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
  `tabs_can_image` text NOT NULL,
  `tabs_can_eliminate` int(1) NOT NULL,
  `tabs_can_created` datetime NOT NULL,
  `tabs_event_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tabs_candidates`
--

INSERT INTO `tabs_candidates` (`tabs_can_id`, `tabs_can_number`, `tabs_can_name`, `tabs_can_desc`, `tabs_can_image`, `tabs_can_eliminate`, `tabs_can_created`, `tabs_event_id`) VALUES
(1, 1, 'MISS APLAYA', 'MISS APLAYA', '20230906133554_50-years-2.jpg', 0, '2023-09-06 12:07:37', 11),
(2, 2, 'MISS BALABAG', 'MISS BALABAG', '', 0, '2023-09-06 12:07:58', 11),
(3, 3, 'MISS BINATON', 'MISS BINATON', '', 0, '2023-09-06 12:08:10', 11),
(4, 4, 'MISS COGON', 'MISS COGON', '', 0, '2023-09-06 12:08:21', 11),
(5, 5, 'MISS COLORADO', 'MISS COLORADO', '', 0, '2023-09-06 12:08:29', 11),
(6, 6, 'MISS DAWIS', 'MISS DAWIS', '', 0, '2023-09-06 12:08:47', 11),
(7, 7, 'MISS DULANGAN', 'MISS DULANGAN', '', 0, '2023-09-06 12:08:58', 11),
(8, 8, 'MISS IGPIT', 'MISS IGPIT', '', 0, '2023-09-06 12:09:09', 11),
(9, 9, 'MISS GOMA', 'MISS GOMA', '', 0, '2023-09-06 12:09:18', 11),
(10, 10, 'MISS KAPATAGAN', 'MISS KAPATAGAN', '', 0, '2023-09-06 12:09:29', 11),
(11, 11, 'MISS KIAGOT', 'MISS KIAGOT', '', 0, '2023-09-06 12:09:41', 11),
(12, 12, 'MISS LUNGAG', 'MISS LUNGAG', '', 0, '2023-09-06 12:12:26', 11),
(13, 13, 'MISS MAHAYAHAY', 'MISS MAHAYAHAY', '', 0, '2023-09-06 12:12:37', 11),
(14, 14, 'MISS MATTI', 'MISS MATTI', '', 0, '2023-09-06 12:12:48', 11),
(15, 15, 'MISS RUPARAN', 'MISS RUPARAN', '', 0, '2023-09-06 12:13:03', 11),
(16, 16, 'MISS SAN AGUSTIN', ' MISS SAN AGUSTIN', '', 0, '2023-09-06 12:13:14', 11),
(17, 17, 'MISS SAN JOSE', 'MISS SAN JOSE', '', 0, '2023-09-06 12:13:25', 11),
(18, 18, 'MISS SAN MIGUEL', 'MISS SAN MIGUEL', '', 0, '2023-09-06 12:13:36', 11),
(19, 19, 'MISS SAN ROQUE', 'MISS SAN ROQUE', '', 0, '2023-09-06 12:13:49', 11),
(20, 20, 'MISS SINAWILAN', 'MISS SINAWILAN', '', 0, '2023-09-06 12:13:59', 11),
(21, 21, 'MISS SOONG', 'MISS SOONG', '', 0, '2023-09-06 12:14:08', 11),
(22, 22, 'MISS TIGUMAN', 'MISS TIGUMAN', '', 0, '2023-09-06 12:14:30', 11),
(23, 23, 'MISS TRES DE MAYO', 'MISS TRES DE MAYO', '', 0, '2023-09-06 12:14:43', 11),
(24, 24, 'MISS ZONE 1', 'MISS ZONE 1', '', 0, '2023-09-06 12:15:13', 11),
(25, 25, 'MISS ZONE 2', 'MISS ZONE 2', '', 0, '2023-09-06 12:15:21', 11),
(26, 26, 'MISS ZONE 3', 'MISS ZONE 3', '', 0, '2023-09-06 12:15:30', 11);

-- --------------------------------------------------------

--
-- Table structure for table `tabs_categories`
--

CREATE TABLE `tabs_categories` (
  `tabs_cat_id` int(11) NOT NULL,
  `tabs_cat_title` text NOT NULL,
  `tabs_cat_percentage` double NOT NULL,
  `tabs_cat_status` int(1) NOT NULL,
  `tabs_event_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tabs_categories`
--

INSERT INTO `tabs_categories` (`tabs_cat_id`, `tabs_cat_title`, `tabs_cat_percentage`, `tabs_cat_status`, `tabs_event_id`) VALUES
(1, 'PRODUCTION', 23.3, 0, 11),
(2, 'SWIMWEAR', 23.3, 0, 11),
(3, 'GOWN', 23.4, 0, 11),
(4, 'CLOSED DOOR INTERVIEW', 30, 0, 11),
(5, 'Intelligence', 100, 0, 12),
(6, 'Q & A', 100, 0, 13);

-- --------------------------------------------------------

--
-- Table structure for table `tabs_criterias`
--

CREATE TABLE `tabs_criterias` (
  `tabs_cri_id` int(11) NOT NULL,
  `tabs_cri_title` text NOT NULL,
  `tabs_cri_desc` text NOT NULL,
  `tabs_cri_score_min` int(11) NOT NULL,
  `tabs_cri_score_max` int(11) NOT NULL,
  `tabs_cri_percentage` double NOT NULL,
  `tabs_cat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tabs_criterias`
--

INSERT INTO `tabs_criterias` (`tabs_cri_id`, `tabs_cri_title`, `tabs_cri_desc`, `tabs_cri_score_min`, `tabs_cri_score_max`, `tabs_cri_percentage`, `tabs_cat_id`) VALUES
(1, 'Performance / Beauty of the Face / Poise and Projection / Bearing / Sustainability of the Attire', 'Performance / Beauty of the Face / Poise and Projection / Bearing / Sustainability of the Attire', 5, 10, 100, 1),
(2, 'Beauty of the Face / Poise and Projection / Bearing / Sustainability of the Attire', 'Beauty of the Face / Poise and Projection / Bearing / Sustainability of the Attire', 5, 10, 100, 2),
(3, 'Beauty of the Face / Poise and Projection / Bearing / Sustainability of the Attire', 'Beauty of the Face / Poise and Projection / Bearing / Sustainability of the Attire', 5, 10, 100, 3),
(4, 'none', 'none', 5, 10, 100, 4),
(5, 'Q & A', '', 5, 10, 100, 5),
(6, 'Q & A', '', 5, 10, 100, 6);

-- --------------------------------------------------------

--
-- Table structure for table `tabs_events`
--

CREATE TABLE `tabs_events` (
  `tabs_event_id` int(11) NOT NULL,
  `tabs_event_title` text NOT NULL,
  `tabs_event_desc` text NOT NULL,
  `tabs_event_year` text NOT NULL,
  `tabs_event_status` int(1) NOT NULL,
  `tabs_event_eliminate` int(1) NOT NULL,
  `tabs_event_eliminate_title` text NOT NULL,
  `tabs_event_eliminate_num` int(2) NOT NULL,
  `tabs_event_scoretype` int(1) NOT NULL,
  `tabs_event_created` datetime NOT NULL,
  `tabs_event_updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tabs_events`
--

INSERT INTO `tabs_events` (`tabs_event_id`, `tabs_event_title`, `tabs_event_desc`, `tabs_event_year`, `tabs_event_status`, `tabs_event_eliminate`, `tabs_event_eliminate_title`, `tabs_event_eliminate_num`, `tabs_event_scoretype`, `tabs_event_created`, `tabs_event_updated`) VALUES
(11, 'Mutya ng Digos 2023', 'Mutya ng Digos 2023', '2023', 1, 0, '', 0, 0, '2023-09-06 11:55:01', '2023-09-06 11:57:17'),
(12, 'Mutya ng Digos 2023 TOP 10', 'Mutya ng Digos 2023 TOP 10', '2023', 1, 0, '', 0, 0, '2023-09-06 13:54:39', '2023-09-06 13:54:39'),
(13, 'Mutya ng Digos 2023 TOP 5', 'Mutya ng Digos 2023 TOP 5', '2023', 1, 0, '', 0, 0, '2023-09-06 13:54:48', '2023-09-06 13:54:48');

-- --------------------------------------------------------

--
-- Table structure for table `tabs_my_project`
--

CREATE TABLE `tabs_my_project` (
  `tabs_project` int(1) NOT NULL,
  `tabs_project_name` text NOT NULL,
  `tabs_project_address` text NOT NULL,
  `tabs_system_title` text NOT NULL,
  `tabs_event_image` text NOT NULL,
  `tabs_year_origin` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tabs_my_project`
--

INSERT INTO `tabs_my_project` (`tabs_project`, `tabs_project_name`, `tabs_project_address`, `tabs_system_title`, `tabs_event_image`, `tabs_year_origin`) VALUES
(1, 'UM Tabulation Team', 'Digos City', '', '20221015142930_MUTYA COMMIT copy.jpg', '2022-08-31 11:27:07');

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
(93, 'auth', 'Login - judge3', '2022-09-01 16:15:23'),
(94, 'auth', 'Login - kjohn0319@gmail.com', '2022-09-02 08:37:09'),
(95, 'auth', 'Login - kjohn0319@gmail.com', '2022-09-02 08:40:03'),
(96, 'auth', 'Login - kjohn0319@gmail.com', '2022-09-02 09:06:27'),
(97, 'attempt', 'Login Attempt - judge1', '2022-09-02 13:33:38'),
(98, 'auth', 'Login - judge1', '2022-09-02 13:33:46'),
(99, 'auth', 'Logout - judge1', '2022-09-02 14:01:10'),
(100, 'auth', 'Login - judge1', '2022-09-02 14:02:44'),
(101, 'auth', 'Login - judge1', '2022-09-02 14:17:06'),
(102, 'auth', 'Logout - judge1', '2022-09-02 14:17:12'),
(103, 'attempt', 'Login Attempt - judge5', '2022-09-02 14:17:32'),
(104, 'attempt', 'Login Attempt - judge5', '2022-09-02 14:20:44'),
(105, 'attempt', 'Login Attempt - judge5', '2022-09-02 14:20:58'),
(106, 'auth', 'Login - judge1', '2022-09-02 14:20:59'),
(107, 'auth', 'Login - judge4', '2022-09-02 14:21:09'),
(108, 'auth', 'Logout - judge4', '2022-09-02 14:21:35'),
(109, 'attempt', 'Login Attempt - judge5', '2022-09-02 14:21:46'),
(110, 'auth', 'Login - judge3', '2022-09-02 14:21:52'),
(111, 'auth', 'Login - judge1', '2022-09-02 14:24:06'),
(112, 'auth', 'Login - judge3', '2022-09-02 14:24:13'),
(113, 'attempt', 'Login Attempt - judge5', '2022-09-02 14:24:14'),
(114, 'auth', 'Login - judge2', '2022-09-02 14:24:19'),
(115, 'attempt', 'Login Attempt - judge5', '2022-09-02 14:24:23'),
(116, 'auth', 'Login - kjohn0319@gmail.com', '2022-09-02 14:24:34'),
(117, 'auth', 'Login - judge4', '2022-09-02 14:24:34'),
(118, 'attempt', 'Login Attempt - judge5', '2022-09-02 14:24:39'),
(119, 'attempt', 'Login Attempt - judge5', '2022-09-02 14:24:54'),
(120, 'attempt', 'Login Attempt - judge5', '2022-09-02 14:25:14'),
(121, 'auth', 'Login - judge5', '2022-09-02 14:25:38'),
(122, 'auth', 'Login - kjohn0319@gmail.com', '2022-09-02 14:30:20'),
(123, 'attempt', 'Login Attempt - judge6', '2022-09-02 14:57:53'),
(124, 'attempt', 'Login Attempt - admin', '2022-09-02 14:58:02'),
(125, 'attempt', 'Login Attempt - admin', '2022-09-02 14:58:53'),
(126, 'auth', 'Login - judge2', '2022-09-02 15:27:32'),
(127, 'auth', 'Logout - judge1', '2022-09-02 15:51:57'),
(128, 'auth', 'Logout - judge2', '2022-09-02 15:51:57'),
(129, 'auth', 'Login - kjohn0319@gmail.com', '2022-09-03 10:51:41'),
(130, 'auth', 'Logout - kjohn0319@gmail.com', '2022-09-03 11:49:42'),
(131, 'auth', 'Login - judge1', '2022-09-03 11:50:02'),
(132, 'auth', 'Login - kjohn0319@gmail.com', '2022-09-03 11:53:09'),
(133, 'auth', 'Logout - judge1', '2022-09-03 12:15:23'),
(134, 'auth', 'Login - kjohn0319@gmail.com', '2022-09-03 12:36:50'),
(135, 'auth', 'Logout - kjohn0319@gmail.com', '2022-09-03 12:56:27'),
(136, 'auth', 'Login - kjohn0319@gmail.com', '2022-09-03 12:56:34'),
(137, 'auth', 'Logout - kjohn0319@gmail.com', '2022-09-03 12:56:52'),
(138, 'attempt', 'Login Attempt - judge1', '2022-09-03 12:56:59'),
(139, 'auth', 'Login - judge1', '2022-09-03 12:57:07'),
(140, 'auth', 'Logout - kjohn0319@gmail.com', '2022-09-03 13:12:06'),
(141, 'auth', 'Login - judge1', '2022-09-03 13:12:12'),
(142, 'auth', 'Logout - judge1', '2022-09-03 15:24:56'),
(143, 'auth', 'Login - kjohn0319@gmail.com', '2022-09-03 15:25:48'),
(144, 'auth', 'Logout - judge1', '2022-09-03 17:16:31'),
(145, 'auth', 'Logout - kjohn0319@gmail.com', '2022-09-03 17:53:00'),
(146, 'attempt', 'Login Attempt - dev', '2022-09-04 14:23:54'),
(147, 'attempt', 'Login Attempt - dev', '2022-09-04 14:23:58'),
(148, 'attempt', 'Login Attempt - dev', '2022-09-04 14:24:06'),
(149, 'auth', 'Login - kjohn0319@gmail.com', '2022-09-04 14:24:19'),
(150, 'auth', 'Logout - dev', '2022-09-04 14:35:45'),
(151, 'auth', 'Login - dev', '2022-09-04 15:36:56'),
(152, 'auth', 'Logout - dev', '2022-09-04 16:08:14'),
(153, 'auth', 'Login - judge1', '2022-09-04 16:08:21'),
(154, 'auth', 'Logout - judge1', '2022-09-04 16:08:38'),
(155, 'attempt', 'Login Attempt - judge1', '2022-09-04 16:08:47'),
(156, 'auth', 'Login - judge1', '2022-09-04 16:08:50'),
(157, 'auth', 'Logout - judge1', '2022-09-04 16:09:09'),
(158, 'auth', 'Login - dev', '2022-09-04 16:09:16'),
(159, 'auth', 'Logout - dev', '2022-09-04 16:11:38'),
(160, 'attempt', 'Login Attempt - judge101', '2022-09-04 16:11:44'),
(161, 'auth', 'Login - dev', '2022-09-04 16:11:50'),
(162, 'auth', 'Logout - dev', '2022-09-04 16:12:04'),
(163, 'attempt', 'Login Attempt - judge101', '2022-09-04 16:12:10'),
(164, 'auth', 'Login - judge101', '2022-09-04 16:12:15'),
(165, 'auth', 'Logout - Judge101', '2022-09-04 16:12:26'),
(166, 'auth', 'Login - dev', '2022-09-04 16:12:40'),
(167, 'auth', 'Login - dev', '2022-09-04 17:01:56'),
(168, 'auth', 'Login - judge4', '2022-09-04 17:20:43'),
(169, 'auth', 'Logout - dev', '2022-09-04 17:20:51'),
(170, 'auth', 'Logout - judge4', '2022-09-04 17:20:56'),
(171, 'attempt', 'Login Attempt - judge1', '2022-09-04 17:21:13'),
(172, 'auth', 'Login - judge1', '2022-09-04 17:21:17'),
(173, 'auth', 'Login - judge3', '2022-09-04 17:21:36'),
(174, 'auth', 'Logout - judge3', '2022-09-04 17:21:58'),
(175, 'auth', 'Login - dev', '2022-09-04 17:22:14'),
(176, 'auth', 'Logout - judge3', '2022-09-04 17:22:26'),
(177, 'auth', 'Logout - judge1', '2022-09-04 17:23:33'),
(178, 'auth', 'Login - dev', '2022-09-04 17:51:09'),
(179, 'auth', 'Logout - dev', '2022-09-04 17:52:21'),
(180, 'auth', 'Login - judge1', '2022-09-04 17:52:30'),
(181, 'auth', 'Logout - judge1', '2022-09-04 17:52:41'),
(182, 'auth', 'Login - judge4', '2022-09-04 17:52:53'),
(183, 'auth', 'Logout - judge4', '2022-09-04 17:53:04'),
(184, 'auth', 'Login - judge1', '2022-09-04 17:53:25'),
(185, 'auth', 'Login - judge4', '2022-09-04 17:53:39'),
(186, 'attempt', 'Login Attempt - judge2', '2022-09-04 17:53:46'),
(187, 'auth', 'Login - judge2', '2022-09-04 17:53:51'),
(188, 'auth', 'Login - judge5', '2022-09-04 17:54:00'),
(189, 'auth', 'Login - judge3', '2022-09-04 17:54:02'),
(190, 'auth', 'Logout - judge5', '2022-09-04 17:55:21'),
(191, 'auth', 'Login - judge1', '2022-09-04 17:55:30'),
(192, 'auth', 'Logout - judge3', '2022-09-04 17:55:33'),
(193, 'auth', 'Logout - judge4', '2022-09-04 17:55:42'),
(194, 'auth', 'Login - judge5', '2022-09-04 17:56:10'),
(195, 'auth', 'Login - judge4', '2022-09-04 17:56:42'),
(196, 'auth', 'Logout - judge1', '2022-09-04 17:58:32'),
(197, 'auth', 'Login - dev', '2022-09-04 17:58:43'),
(198, 'auth', 'Login - judge3', '2022-09-04 17:58:45'),
(199, 'auth', 'Logout - dev', '2022-09-04 17:59:03'),
(200, 'auth', 'Login - dev', '2022-09-04 18:02:00'),
(201, 'auth', 'Login - Judge3', '2022-09-04 18:05:12'),
(202, 'auth', 'Login - judge2', '2022-09-04 18:05:13'),
(203, 'auth', 'Login - judge1', '2022-09-04 18:06:30'),
(204, 'auth', 'Login - judge2', '2022-09-04 18:10:07'),
(205, 'auth', 'Login - dev', '2022-09-04 18:51:22'),
(206, 'auth', 'Logout - dev', '2022-09-04 18:53:46'),
(207, 'auth', 'Login - dev', '2022-09-04 19:44:25'),
(208, 'auth', 'Login - judge5', '2022-09-04 20:46:52'),
(209, 'auth', 'Login - judge5', '2022-09-04 20:50:02'),
(210, 'auth', 'Login - dev', '2022-09-04 21:41:01'),
(211, 'auth', 'Login - judge1', '2022-09-04 21:52:25'),
(212, 'auth', 'Logout - judge1', '2022-09-04 21:54:10'),
(213, 'auth', 'Login - judge1', '2022-09-04 22:23:09'),
(214, 'auth', 'Logout - judge1', '2022-09-04 22:23:31'),
(215, 'auth', 'Login - judge4', '2022-09-04 22:44:52'),
(216, 'auth', 'Logout - judge5', '2022-09-04 22:47:13'),
(217, 'auth', 'Login - judge1', '2022-09-04 22:47:38'),
(218, 'auth', 'Logout - judge2', '2022-09-04 22:48:32'),
(219, 'auth', 'Login - judge3', '2022-09-04 22:48:42'),
(220, 'auth', 'Logout - judge1', '2022-09-04 22:53:52'),
(221, 'auth', 'Login - judge5', '2022-09-04 22:54:21'),
(222, 'auth', 'Login - dev', '2022-09-05 12:46:17'),
(223, 'auth', 'Logout - dev', '2022-09-05 12:51:55'),
(224, 'auth', 'Login - dev', '2022-09-05 15:03:03'),
(225, 'auth', 'Logout - dev', '2022-09-05 15:03:48'),
(226, 'auth', 'Login - dev', '2022-09-05 15:06:23'),
(227, 'auth', 'Login - dev', '2022-09-05 15:07:44'),
(228, 'auth', 'Logout - dev', '2022-09-05 15:08:16'),
(229, 'auth', 'Logout - dev', '2022-09-05 15:08:31'),
(230, 'auth', 'Login - dev', '2022-09-05 15:57:38'),
(231, 'auth', 'Login - dev', '2022-09-05 16:11:02'),
(232, 'auth', 'Logout - judge5', '2022-09-05 16:13:52'),
(233, 'auth', 'Login - dev', '2022-09-05 16:14:53'),
(234, 'auth', 'Logout - dev', '2022-09-05 16:15:16'),
(235, 'auth', 'Login - dev', '2022-09-05 16:15:33'),
(236, 'auth', 'Logout - judge3', '2022-09-05 16:15:59'),
(237, 'auth', 'Logout - dev', '2022-09-05 16:17:19'),
(238, 'auth', 'Login - judge3', '2022-09-05 16:26:50'),
(239, 'attempt', 'Login Attempt - 102', '2022-09-05 16:26:58'),
(240, 'attempt', 'Login Attempt - judge102', '2022-09-05 16:27:11'),
(241, 'auth', 'Logout - judge3', '2022-09-05 16:27:16'),
(242, 'auth', 'Login - judge103', '2022-09-05 16:27:50'),
(243, 'auth', 'Login - judge102', '2022-09-05 16:28:10'),
(244, 'auth', 'Login - judge101', '2022-09-05 16:28:26'),
(245, 'auth', 'Login - judge104', '2022-09-05 16:37:23'),
(246, 'auth', 'Login - dev', '2022-09-05 17:34:57'),
(247, 'auth', 'Logout - Judge102', '2022-09-05 17:41:58'),
(248, 'auth', 'Logout - Judge101', '2022-09-05 17:42:12'),
(249, 'auth', 'Logout - dev', '2022-09-05 17:42:22'),
(250, 'auth', 'Login - dev', '2022-09-05 17:42:33'),
(251, 'auth', 'Login - judge101', '2022-09-05 17:42:33'),
(252, 'auth', 'Logout - Judge103', '2022-09-05 17:42:45'),
(253, 'auth', 'Login - judge102', '2022-09-05 17:42:49'),
(254, 'auth', 'Logout - Judge103', '2022-09-05 17:42:57'),
(255, 'auth', 'Logout - dev', '2022-09-05 17:55:00'),
(256, 'auth', 'Login - judge1', '2022-09-05 17:55:08'),
(257, 'auth', 'Logout - judge1', '2022-09-05 17:55:20'),
(258, 'auth', 'Login - dev', '2022-09-05 17:55:29'),
(259, 'auth', 'Login - Judge105', '2022-09-05 17:56:03'),
(260, 'auth', 'Logout - Judge102', '2022-09-05 17:56:52'),
(261, 'auth', 'Logout - Judge101', '2022-09-05 18:02:42'),
(262, 'auth', 'Login - judge103', '2022-09-05 18:04:26'),
(263, 'auth', 'Login - judge101', '2022-09-05 18:04:29'),
(264, 'auth', 'Logout - Judge101', '2022-09-05 18:04:37'),
(265, 'auth', 'Login - judge102', '2022-09-05 18:04:48'),
(266, 'auth', 'Logout - Judge102', '2022-09-05 18:04:58'),
(267, 'auth', 'Login - judge104', '2022-09-05 18:05:09'),
(268, 'auth', 'Login - judge101', '2022-09-05 18:05:12'),
(269, 'auth', 'Logout - Judge104', '2022-09-05 18:05:13'),
(270, 'auth', 'Logout - Judge101', '2022-09-05 18:05:19'),
(271, 'auth', 'Login - judge102', '2022-09-05 18:05:23'),
(272, 'auth', 'Login - judge104', '2022-09-05 18:05:27'),
(273, 'auth', 'Login - judge103', '2022-09-05 18:05:28'),
(274, 'auth', 'Logout - Judge103', '2022-09-05 18:05:35'),
(275, 'auth', 'Login - judge101', '2022-09-05 18:05:44'),
(276, 'auth', 'Login - judge105', '2022-09-05 18:05:48'),
(277, 'auth', 'Logout - dev', '2022-10-12 20:34:14'),
(278, 'auth', 'Login - dev', '2022-10-12 20:34:24'),
(279, 'auth', 'Login - johngates', '2022-10-13 11:38:32'),
(280, 'auth', 'Login - dev', '2022-10-13 12:09:28'),
(281, 'auth', 'Logout - dev', '2022-10-13 12:09:36'),
(282, 'auth', 'Login - dev', '2022-10-13 12:45:01'),
(283, 'auth', 'Login - dev', '2022-10-13 13:27:45'),
(284, 'auth', 'Login - dev', '2022-10-13 13:27:52'),
(285, 'auth', 'Login - dev', '2022-10-13 13:27:56'),
(286, 'auth', 'Login - dev', '2022-10-13 13:28:00'),
(287, 'auth', 'Login - dev', '2022-10-13 13:28:15'),
(288, 'auth', 'Login - dev', '2022-10-13 13:28:31'),
(289, 'auth', 'Login - dev', '2022-10-13 13:28:36'),
(290, 'auth', 'Login - dev', '2022-10-13 13:29:26'),
(291, 'auth', 'Login - dev', '2022-10-13 13:30:32'),
(292, 'auth', 'Login - johngates', '2022-10-13 13:59:31'),
(293, 'auth', 'Logout - johngates', '2022-10-13 15:04:20'),
(294, 'auth', 'Logout - dev', '2022-10-13 15:39:11'),
(295, 'attempt', 'Login Attempt - dev', '2022-10-13 15:39:23'),
(296, 'auth', 'Login - dev', '2022-10-13 15:39:27'),
(297, 'auth', 'Login - umjudge1', '2022-10-13 16:35:28'),
(298, 'auth', 'Login - umjudge4', '2022-10-13 16:35:29'),
(299, 'auth', 'Login - umjudge5', '2022-10-13 16:35:30'),
(300, 'auth', 'Login - umjudge3', '2022-10-13 16:35:30'),
(301, 'auth', 'Login - umjudge2', '2022-10-13 16:35:31'),
(302, 'attempt', 'Login Attempt - umjudge1', '2022-10-13 16:47:52'),
(303, 'auth', 'Login - umjudge1', '2022-10-13 16:47:56'),
(304, 'auth', 'Login - umjudge1', '2022-10-13 16:56:33'),
(305, 'auth', 'Logout - umjudge2', '2022-10-13 17:01:04'),
(306, 'auth', 'Logout - umjudge1', '2022-10-13 17:01:10'),
(307, 'auth', 'Logout - umjudge5', '2022-10-13 17:01:57'),
(308, 'auth', 'Logout - dev', '2022-10-14 13:24:13'),
(309, 'auth', 'Login - dev', '2022-10-14 13:24:19'),
(310, 'auth', 'Logout - dev', '2022-10-14 13:28:35'),
(311, 'auth', 'Login - umjudge1', '2022-10-14 13:29:04'),
(312, 'auth', 'Logout - umjudge1', '2022-10-14 20:47:01'),
(313, 'auth', 'Login - dev', '2022-10-14 20:47:11'),
(314, 'auth', 'Logout - dev', '2022-10-14 20:49:00'),
(315, 'attempt', 'Login Attempt - umjudge1', '2022-10-14 20:49:06'),
(316, 'auth', 'Login - umjudge1', '2022-10-14 20:49:10'),
(317, 'auth', 'Logout - umjudge1', '2022-10-14 23:51:01'),
(318, 'auth', 'Logout - umjudge1', '2022-10-14 23:51:04'),
(319, 'auth', 'Login - dev', '2022-10-14 23:51:12'),
(320, 'auth', 'Login - umjudge1', '2022-10-14 23:51:48'),
(321, 'auth', 'Logout - dev', '2022-10-14 23:53:15'),
(322, 'attempt', 'Login Attempt - umjudge1', '2022-10-14 23:53:21'),
(323, 'auth', 'Login - umjudge1', '2022-10-14 23:53:24'),
(324, 'auth', 'Logout - umjudge1', '2022-10-15 00:45:36'),
(325, 'auth', 'Logout - umjudge1', '2022-10-15 00:45:39'),
(326, 'auth', 'Login - dev', '2022-10-15 00:45:46'),
(327, 'attempt', 'Login Attempt - umjudge1', '2022-10-15 00:54:55'),
(328, 'auth', 'Login - umjudge1', '2022-10-15 00:54:58'),
(329, 'auth', 'Login - dev', '2022-10-15 09:48:58'),
(330, 'auth', 'Logout - dev', '2022-10-15 09:49:06'),
(331, 'auth', 'Login - umjudge1', '2022-10-15 09:49:15'),
(332, 'auth', 'Logout - umjudge1', '2022-10-15 09:50:45'),
(333, 'auth', 'Logout - umjudge1', '2022-10-15 09:50:49'),
(334, 'auth', 'Login - dev', '2022-10-15 09:50:55'),
(335, 'auth', 'Login - umjudge1', '2022-10-15 09:57:20'),
(336, 'auth', 'Login - umjudge1', '2022-10-15 10:47:01'),
(337, 'attempt', 'Login Attempt - judge2', '2022-10-15 10:52:48'),
(338, 'attempt', 'Login Attempt - judge2', '2022-10-15 10:53:10'),
(339, 'auth', 'Login - umjudge3', '2022-10-15 10:53:33'),
(340, 'attempt', 'Login Attempt - judge2', '2022-10-15 10:53:35'),
(341, 'attempt', 'Login Attempt - judge2', '2022-10-15 10:53:43'),
(342, 'attempt', 'Login Attempt - judge2', '2022-10-15 10:53:57'),
(343, 'auth', 'Login - umjudge2', '2022-10-15 10:54:16'),
(344, 'auth', 'Login - judge4', '2022-10-15 11:04:20'),
(345, 'auth', 'Logout - judge4', '2022-10-15 11:05:25'),
(346, 'auth', 'Login - judge4', '2022-10-15 11:05:54'),
(347, 'auth', 'Logout - judge4', '2022-10-15 11:06:51'),
(348, 'auth', 'Login - judge1', '2022-10-15 11:06:58'),
(349, 'auth', 'Logout - judge1', '2022-10-15 11:07:02'),
(350, 'auth', 'Login - judge2', '2022-10-15 11:07:08'),
(351, 'auth', 'Logout - judge2', '2022-10-15 11:07:51'),
(352, 'auth', 'Login - umjudge4', '2022-10-15 11:08:03'),
(353, 'auth', 'Login - umjudge1', '2022-10-15 13:38:39'),
(354, 'auth', 'Login - umjudge2', '2022-10-15 14:34:50'),
(355, 'auth', 'Login - umjudge1', '2022-10-15 14:34:59'),
(356, 'auth', 'Login - UmJudge3', '2022-10-15 14:35:05'),
(357, 'attempt', 'Login Attempt - umjudge1', '2022-10-15 14:46:38'),
(358, 'attempt', 'Login Attempt - umjudge1', '2022-10-15 14:46:41'),
(359, 'auth', 'Login - umjudge1', '2022-10-15 14:46:46'),
(360, 'auth', 'Logout - umjudge1', '2022-10-15 14:50:54'),
(361, 'auth', 'Logout - umjudge1', '2022-10-15 14:50:58'),
(362, 'auth', 'Login - dev', '2022-10-15 15:03:06'),
(363, 'auth', 'Login - umjudge2', '2022-10-15 15:07:40'),
(364, 'auth', 'Logout - dev', '2022-10-15 16:01:33'),
(365, 'auth', 'Logout - dev', '2022-10-15 16:01:37'),
(366, 'auth', 'Login - dev', '2022-10-15 17:53:01'),
(367, 'auth', 'Login - umjudge3', '2022-10-15 18:03:20'),
(368, 'auth', 'Login - umjudge2', '2022-10-15 18:04:54'),
(369, 'auth', 'Login - umjudge4', '2022-10-15 18:05:32'),
(370, 'auth', 'Logout - umjudge3', '2022-10-15 18:05:36'),
(371, 'auth', 'Login - umjudge1', '2022-10-15 18:05:49'),
(372, 'auth', 'Logout - umjudge4', '2022-10-15 18:07:05'),
(373, 'auth', 'Login - umjudge5', '2022-10-15 18:07:20'),
(374, 'auth', 'Login - umjudge3', '2022-10-15 18:07:49'),
(375, 'auth', 'Login - umjudge4', '2022-10-15 18:07:55'),
(376, 'auth', 'Login - umjudge2', '2022-10-15 18:10:47'),
(377, 'attempt', 'Login Attempt - umjudge1', '2022-10-17 15:05:46'),
(378, 'attempt', 'Login Attempt - umjudge1', '2022-10-17 15:05:51'),
(379, 'auth', 'Login - umjudge1', '2022-10-17 15:05:55'),
(380, 'auth', 'Logout - umjudge1', '2022-10-17 15:10:22'),
(381, 'auth', 'Login - dev', '2022-10-24 10:20:12'),
(382, 'attempt', 'Login Attempt - kjohn0319@gmail.com', '2022-10-24 20:27:59'),
(383, 'auth', 'Login - dev', '2022-10-24 20:28:20'),
(384, 'attempt', 'Login Attempt - kjohn0319@gmail.com', '2023-03-20 22:44:43'),
(385, 'attempt', 'Login Attempt - devmaster', '2023-03-20 22:44:48'),
(386, 'attempt', 'Login Attempt - devmaster', '2023-03-20 22:44:54'),
(387, 'attempt', 'Login Attempt - kjohn0319@gmail.com', '2023-03-20 22:45:02'),
(388, 'attempt', 'Login Attempt - kjohn0319@gmail.com', '2023-03-20 22:45:13'),
(389, 'auth', 'Login - dev', '2023-03-20 22:45:54'),
(390, 'attempt', 'Login Attempt - devmaster', '2023-03-29 01:12:08'),
(391, 'auth', 'Login - dev', '2023-03-29 01:12:11'),
(392, 'auth', 'Logout - dev', '2023-03-29 01:13:37'),
(393, 'auth', 'Login - judge1', '2023-03-29 01:13:43'),
(394, 'auth', 'Login - dev', '2023-03-29 01:14:00'),
(395, 'attempt', 'Login Attempt - kjohn0319@gmail.com', '2023-06-20 22:26:51'),
(396, 'attempt', 'Login Attempt - kjohn0319@gmail.com', '2023-06-20 22:26:55'),
(397, 'auth', 'Login - dev', '2023-06-20 22:26:58'),
(398, 'auth', 'Login - judge1', '2023-09-06 13:04:11');

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
  `tabs_result_catRank` double NOT NULL,
  `tabs_result_score` double NOT NULL,
  `tabs_result_created` datetime NOT NULL,
  `tabs_result_updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(1, '0', 'hotkopi', 'dev', 'gozElr3tOF4jED67gzd4r2smH2NWy83w+P89isjSSgM=', 0, 0, '', 0, '2022-08-04 00:00:00', '2022-09-04 14:24:33'),
(8, '20220804171234lPKZlLkU', 'joane may delima', 'joanemay', 'KYbhfSccmfgV6lsb1k23tk6Fz98VuKKfHX24W3k9F1Y=', 0, 0, '', 0, '2022-08-04 17:12:34', '2022-08-04 17:12:34'),
(27, '20230906115827Zbn9A40P', 'Judge 1', 'judge1', 'KYbhfSccmfgV6lsb1k23tk6Fz98VuKKfHX24W3k9F1Y=', 1, 0, '', 11, '2023-09-06 11:58:27', '2023-09-06 13:03:44'),
(28, '20230906115833aAsv1WxN', 'Judge 2', 'judge2', 'KYbhfSccmfgV6lsb1k23tk6Fz98VuKKfHX24W3k9F1Y=', 1, 0, '', 11, '2023-09-06 11:58:33', '2023-09-06 13:03:47'),
(29, '202309061158408jyxF2JV', 'Judge 3', 'judge3', 'KYbhfSccmfgV6lsb1k23tk6Fz98VuKKfHX24W3k9F1Y=', 1, 0, '', 11, '2023-09-06 11:58:40', '2023-09-06 13:03:50'),
(30, '20230906115847IDOK5Ub8', 'Judge 4', 'judge4', 'KYbhfSccmfgV6lsb1k23tk6Fz98VuKKfHX24W3k9F1Y=', 1, 0, '', 11, '2023-09-06 11:58:47', '2023-09-06 13:03:52'),
(31, '20230906115901OVS4OeQW', 'Judge 5', 'judge5', 'KYbhfSccmfgV6lsb1k23tk6Fz98VuKKfHX24W3k9F1Y=', 1, 0, '', 11, '2023-09-06 11:59:01', '2023-09-06 13:03:54');

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
  MODIFY `tabs_can_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `tabs_categories`
--
ALTER TABLE `tabs_categories`
  MODIFY `tabs_cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tabs_criterias`
--
ALTER TABLE `tabs_criterias`
  MODIFY `tabs_cri_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tabs_events`
--
ALTER TABLE `tabs_events`
  MODIFY `tabs_event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `tabs_my_project`
--
ALTER TABLE `tabs_my_project`
  MODIFY `tabs_project` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tabs_notification`
--
ALTER TABLE `tabs_notification`
  MODIFY `tabs_notif_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=399;
--
-- AUTO_INCREMENT for table `tabs_results`
--
ALTER TABLE `tabs_results`
  MODIFY `tabs_result_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `tabs_users`
--
ALTER TABLE `tabs_users`
  MODIFY `tabs_user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
