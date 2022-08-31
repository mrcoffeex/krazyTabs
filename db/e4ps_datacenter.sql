-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 12, 2022 at 07:16 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e4ps_datacenter`
--

-- --------------------------------------------------------

--
-- Table structure for table `e4ps_my_project`
--

CREATE TABLE `e4ps_my_project` (
  `e4ps_project` int(1) NOT NULL,
  `e4ps_project_name` text NOT NULL,
  `e4ps_project_address` text NOT NULL,
  `e4ps_system_title` text NOT NULL,
  `e4ps_year_origin` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `e4ps_my_project`
--

INSERT INTO `e4ps_my_project` (`e4ps_project`, `e4ps_project_name`, `e4ps_project_address`, `e4ps_system_title`, `e4ps_year_origin`) VALUES
(1, 'e4ps Mapping', 'Digos City', '', '2022-06-11 11:27:07');

-- --------------------------------------------------------

--
-- Table structure for table `e4ps_notification`
--

CREATE TABLE `e4ps_notification` (
  `e4ps_notif_id` int(100) NOT NULL,
  `e4ps_notif_type` text NOT NULL,
  `e4ps_notif_text` text NOT NULL,
  `e4ps_notif_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `e4ps_notification`
--

INSERT INTO `e4ps_notification` (`e4ps_notif_id`, `e4ps_notif_type`, `e4ps_notif_text`, `e4ps_notif_date`) VALUES
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
(50, 'auth', 'Logout - kjohn0319@gmail.com', '2022-08-06 13:28:58');

-- --------------------------------------------------------

--
-- Table structure for table `e4ps_optimum_secure`
--

CREATE TABLE `e4ps_optimum_secure` (
  `e4ps_sec_id` int(11) NOT NULL,
  `e4ps_sec_value` varchar(200) NOT NULL,
  `e4ps_sec_type` text NOT NULL,
  `e4ps_user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `e4ps_otpref`
--

CREATE TABLE `e4ps_otpref` (
  `e4ps_otp_id` int(11) NOT NULL,
  `e4ps_otp_serial` text NOT NULL,
  `e4ps_otp_num` varchar(6) NOT NULL,
  `e4ps_user_code` varchar(10) NOT NULL,
  `e4ps_otp_datereg` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `e4ps_otpref`
--

INSERT INTO `e4ps_otpref` (`e4ps_otp_id`, `e4ps_otp_serial`, `e4ps_otp_num`, `e4ps_user_code`, `e4ps_otp_datereg`) VALUES
(1, 'anlCmIgBuyZlneohVLqU', '185455', 'RxjY-58694', '2021-06-07 21:37:46'),
(2, 'mQtmipPrPusTwMvCgvsx', '752824', 'uaPq-78416', '2021-06-07 22:43:31'),
(3, 'luVqOrjLIVSHJVooaUzq', '140204', 'fGkq-69729', '2021-06-07 22:59:49');

-- --------------------------------------------------------

--
-- Table structure for table `e4ps_users`
--

CREATE TABLE `e4ps_users` (
  `e4ps_user_id` int(10) NOT NULL,
  `e4ps_user_code` varchar(30) NOT NULL,
  `e4ps_full_name` varchar(255) NOT NULL,
  `e4ps_username` varchar(50) NOT NULL,
  `e4ps_password` varchar(100) NOT NULL,
  `e4ps_user_type` int(5) NOT NULL,
  `e4ps_user_status` int(1) NOT NULL,
  `e4ps_user_profile_img` text NOT NULL,
  `e4ps_user_created` datetime NOT NULL,
  `e4ps_user_updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `e4ps_users`
--

INSERT INTO `e4ps_users` (`e4ps_user_id`, `e4ps_user_code`, `e4ps_full_name`, `e4ps_username`, `e4ps_password`, `e4ps_user_type`, `e4ps_user_status`, `e4ps_user_profile_img`, `e4ps_user_created`, `e4ps_user_updated`) VALUES
(1, '0', 'devmaster', 'kjohn0319@gmail.com', 'gozElr3tOF4jED67gzd4r2smH2NWy83w+P89isjSSgM=', 0, 0, '', '2022-08-04 00:00:00', '2022-08-04 00:00:00'),
(8, '20220804171234lPKZlLkU', 'joane may delima', 'joanemaydelima@gmail.com', 'gozElr3tOF4jED67gzd4r2smH2NWy83w+P89isjSSgM=', 0, 0, '', '2022-08-04 17:12:34', '2022-08-04 17:12:34'),
(9, '20220806004654pcNlHHeq', 'keane may', 'keanemay2020@gmail.com', 'SWKtgU19gZJfGkhE6B6YJheiS/kScAwqwkeqyf60+7U=', 1, 0, '', '2022-08-06 00:46:54', '2022-08-06 00:46:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `e4ps_my_project`
--
ALTER TABLE `e4ps_my_project`
  ADD PRIMARY KEY (`e4ps_project`);

--
-- Indexes for table `e4ps_notification`
--
ALTER TABLE `e4ps_notification`
  ADD PRIMARY KEY (`e4ps_notif_id`);

--
-- Indexes for table `e4ps_optimum_secure`
--
ALTER TABLE `e4ps_optimum_secure`
  ADD PRIMARY KEY (`e4ps_sec_id`);

--
-- Indexes for table `e4ps_otpref`
--
ALTER TABLE `e4ps_otpref`
  ADD PRIMARY KEY (`e4ps_otp_id`);

--
-- Indexes for table `e4ps_users`
--
ALTER TABLE `e4ps_users`
  ADD PRIMARY KEY (`e4ps_user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `e4ps_my_project`
--
ALTER TABLE `e4ps_my_project`
  MODIFY `e4ps_project` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `e4ps_notification`
--
ALTER TABLE `e4ps_notification`
  MODIFY `e4ps_notif_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `e4ps_optimum_secure`
--
ALTER TABLE `e4ps_optimum_secure`
  MODIFY `e4ps_sec_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `e4ps_otpref`
--
ALTER TABLE `e4ps_otpref`
  MODIFY `e4ps_otp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `e4ps_users`
--
ALTER TABLE `e4ps_users`
  MODIFY `e4ps_user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
