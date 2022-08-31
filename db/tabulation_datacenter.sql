-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 31, 2022 at 01:28 PM
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
  `tabs_can_name` text NOT NULL,
  `tabs_can_desc` text NOT NULL,
  `tabs_can_created` datetime NOT NULL,
  `tabs_event_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tabs_candidates`
--

INSERT INTO `tabs_candidates` (`tabs_can_id`, `tabs_can_name`, `tabs_can_desc`, `tabs_can_created`, `tabs_event_id`) VALUES
(1, 'Joane May', 'Miss Zone I', '2022-08-31 17:04:49', 3),
(2, 'Jessa May', 'Miss Zone II', '2022-08-31 17:20:42', 3);

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
(1, 'Q & A', 25, 3),
(2, 'Bikini', 25, 3);

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
(3, 'Mutya ng Digos', 'mutya ng digos 2022', '2022', '2022-08-31 15:57:15', '2022-08-31 15:57:15');

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
(67, 'auth', 'Login - kjohn0319@gmail.com', '2022-08-31 19:20:21');

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
(9, '20220806004654pcNlHHeq', 'Judge 1', 'judge1', 'SWKtgU19gZJfGkhE6B6YJheiS/kScAwqwkeqyf60+7U=', 1, 0, '', 3, '2022-08-06 00:46:54', '2022-08-31 17:43:07'),
(10, '20220831141717ITDhGPPj', 'lebron james', 'lebrons', 'As2CKbjBIK6Ll6wvk2RGYuFqk1xs0seZfmHSsIrZdwM=', 0, 0, '', 0, '2022-08-31 14:17:17', '2022-08-31 14:17:17'),
(13, '20220831162011g2C4Mqyy', 'Judge 2', 'judge2', 'KYbhfSccmfgV6lsb1k23tk6Fz98VuKKfHX24W3k9F1Y=', 1, 0, '', 3, '2022-08-31 16:20:11', '2022-08-31 16:30:30');

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
  MODIFY `tabs_can_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tabs_categories`
--
ALTER TABLE `tabs_categories`
  MODIFY `tabs_cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tabs_events`
--
ALTER TABLE `tabs_events`
  MODIFY `tabs_event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tabs_my_project`
--
ALTER TABLE `tabs_my_project`
  MODIFY `tabs_project` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tabs_notification`
--
ALTER TABLE `tabs_notification`
  MODIFY `tabs_notif_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `tabs_users`
--
ALTER TABLE `tabs_users`
  MODIFY `tabs_user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
