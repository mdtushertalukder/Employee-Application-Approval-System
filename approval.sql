-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 09, 2024 at 04:13 AM
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
-- Database: `approval`
--

-- --------------------------------------------------------

--
-- Table structure for table `approval_list`
--

CREATE TABLE `approval_list` (
  `approval_id` int(11) NOT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `request_type` varchar(255) DEFAULT NULL,
  `accept_decline` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `application` varchar(255) DEFAULT NULL,
  `money` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `approval_list`
--

INSERT INTO `approval_list` (`approval_id`, `employee_id`, `request_type`, `accept_decline`, `subject`, `application`, `money`) VALUES
(1, 7004, 'Requisition', '1', 'Buy a camera', 'The release plan for EAAS outlines the stages and processes involved in delivering a high-quality, stable website to users. This plan encompasses development, testing, deployment, and post-launch activities to ensure a smooth and successful release.', NULL),
(2, 1001, '', '0', '', '', NULL),
(3, 7004, '', '0', '', '', NULL),
(4, 7004, 'Requisition', '0', 'Need a monitor', 'The release plan for EAAS outlines the stages and processes involved in delivering a high-quality, stable website to users. This plan encompasses development, testing, deployment, and post-launch activities to ensure a smooth and successful release.', NULL),
(5, 7004, 'Requisition', '0', 'Need a laptop', 'The release plan for EAAS outlines the stages and processes involved in delivering a high-quality, stable website to users. This plan encompasses development, testing, deployment, and post-launch activities to ensure a smooth and successful release.', NULL),
(6, 7004, 'Requisition', '0', 'Need a laptop', 'The release plan for EAAS outlines the stages and processes involved in delivering a high-quality, stable website to users. This plan encompasses development, testing, deployment, and post-launch activities to ensure a smooth and successful release.', NULL),
(7, 7004, 'Requisition', '0', 'Need a laptop', 'The release plan for EAAS outlines the stages and processes involved in delivering a high-quality, stable website to users. This plan encompasses development, testing, deployment, and post-launch activities to ensure a smooth and successful release.', NULL),
(8, 7004, 'Transportation', '1', 'Transport a tv', 'The release plan for EAAS outlines the stages and processes involved in delivering a high-quality, stable website to users. This plan encompasses development, testing, deployment, and post-launch activities to ensure a smooth and successful release.', NULL),
(9, 7004, 'Transportation', '0', 'Transport a monitor', 'The release plan for EAAS outlines the stages and processes involved in delivering a high-quality, stable website to users. This plan encompasses development, testing, deployment, and post-launch activities to ensure a smooth and successful release.', NULL),
(10, 7004, 'Leave', '0', ' five days leave', 'The release plan for EAAS outlines the stages and processes involved in delivering a high-quality, stable website to users. This plan encompasses development, testing, deployment, and post-launch activities to ensure a smooth and successful release.', NULL),
(11, 7004, 'Mobile allowance', '0', 'Increase mobile allowance', 'The release plan for EAAS outlines the stages and processes involved in delivering a high-quality, stable website to users. This plan encompasses development, testing, deployment, and post-launch activities to ensure a smooth and successful release.', NULL),
(12, 7004, 'Mobile allowance', '0', 'Allocate mobile allowance', 'The release plan for EAAS outlines the stages and processes involved in delivering a high-quality, stable website to users. This plan encompasses development, testing, deployment, and post-launch activities to ensure a smooth and successful release.', NULL),
(13, 7004, 'Lunch allowance', '1', 'Outside lunch allowance', 'The release plan for EAAS outlines the stages and processes involved in delivering a high-quality, stable website to users. This plan encompasses development, testing, deployment, and post-launch activities to ensure a smooth and successful release.', NULL),
(14, 7004, 'Transport allowance', '1', 'Transport fees for outing', 'The release plan for EAAS outlines the stages and processes involved in delivering a high-quality, stable website to users. This plan encompasses development, testing, deployment, and post-launch activities to ensure a smooth and successful release.', NULL),
(15, 7004, 'Transportation', '0', 'The release plan for EAAS', 'The release plan for EAAS outlines the stages and processes involved in delivering a high-quality, stable website to users. This plan encompasses development, testing, deployment, and post-launch activities to ensure a smooth and successful release.', NULL),
(16, 7004, 'Mobile allowance', '0', 'Mobile allowance increase', 'The release plan for EAAS outlines the stages and processes involved in delivering a high-quality, stable website to users. This plan encompasses development, testing, deployment, and post-launch activities to ensure a smooth and successful release.', NULL),
(17, 5001, 'Requisition', '1', 'Buy a Laptop', 'The release plan for EAAS outlines the stages and processes involved in delivering a high-quality, stable website to users. This plan encompasses development, testing, deployment, and post-launch activities to ensure a smooth and successful release.\r\n', NULL),
(18, 5001, 'Requisition', '1', 'Buy a Laptop', 'The release plan for EAAS outlines the stages and processes involved in delivering a high-quality, stable website to users. This plan encompasses development, testing, deployment, and post-launch activities to ensure a smooth and successful release.\r\n', NULL),
(19, 5001, 'Requisition', '1', 'Buy a Laptop', 'The release plan for EAAS outlines the stages and processes involved in delivering a high-quality, stable website to users. This plan encompasses development, testing, deployment, and post-launch activities to ensure a smooth and successful release.\r\n', NULL),
(20, 5001, 'Requisition', '1', 'Buy a Laptop', 'The release plan for EAAS outlines the stages and processes involved in delivering a high-quality, stable website to users. This plan encompasses development, testing, deployment, and post-launch activities to ensure a smooth and successful release.\r\n', NULL),
(21, 5001, 'Requisition', '1', 'Buy a Laptop', 'The release plan for EAAS outlines the stages and processes involved in delivering a high-quality, stable website to users. This plan encompasses development, testing, deployment, and post-launch activities to ensure a smooth and successful release.\r\n', NULL),
(22, 5001, 'Requisition', '1', 'Buy a Laptop', 'The release plan for EAAS outlines the stages and processes involved in delivering a high-quality, stable website to users. This plan encompasses development, testing, deployment, and post-launch activities to ensure a smooth and successful release.\r\n', NULL),
(23, 5001, 'Requisition', '1', 'Buy a Laptop', 'The release plan for EAAS outlines the stages and processes involved in delivering a high-quality, stable website to users. This plan encompasses development, testing, deployment, and post-launch activities to ensure a smooth and successful release.\r\n', NULL),
(24, 5001, 'Requisition', '1', 'Buy a Laptop', 'The release plan for EAAS outlines the stages and processes involved in delivering a high-quality, stable website to users. This plan encompasses development, testing, deployment, and post-launch activities to ensure a smooth and successful release.\r\n', NULL),
(25, 5001, 'Requisition', '1', 'Buy a Laptop', 'The release plan for EAAS outlines the stages and processes involved in delivering a high-quality, stable website to users. This plan encompasses development, testing, deployment, and post-launch activities to ensure a smooth and successful release.\r\n', NULL),
(26, 5001, 'Requisition', '1', 'Buy a Laptop', 'The release plan for EAAS outlines the stages and processes involved in delivering a high-quality, stable website to users. This plan encompasses development, testing, deployment, and post-launch activities to ensure a smooth and successful release.\r\n', NULL),
(27, 5001, 'Requisition', '1', 'Buy a Laptop', 'The release plan for EAAS outlines the stages and processes involved in delivering a high-quality, stable website to users. This plan encompasses development, testing, deployment, and post-launch activities to ensure a smooth and successful release.\r\n', NULL),
(28, 5001, 'Requisition', '1', 'Buy a Laptop', 'The release plan for EAAS outlines the stages and processes involved in delivering a high-quality, stable website to users. This plan encompasses development, testing, deployment, and post-launch activities to ensure a smooth and successful release.\r\n', NULL),
(29, 5001, 'Requisition', '1', 'Buy a Laptop', 'The release plan for EAAS outlines the stages and processes involved in delivering a high-quality, stable website to users. This plan encompasses development, testing, deployment, and post-launch activities to ensure a smooth and successful release.\r\n', NULL),
(30, 5001, 'Requisition', '1', 'Buy a Laptop', 'The release plan for EAAS outlines the stages and processes involved in delivering a high-quality, stable website to users. This plan encompasses development, testing, deployment, and post-launch activities to ensure a smooth and successful release.\r\n', NULL),
(31, 5001, 'Requisition', '1', 'Buy a Laptop', 'The release plan for EAAS outlines the stages and processes involved in delivering a high-quality, stable website to users. This plan encompasses development, testing, deployment, and post-launch activities to ensure a smooth and successful release.\r\n', NULL),
(32, 5001, 'Requisition', '1', 'Buy a Laptop', 'The release plan for EAAS outlines the stages and processes involved in delivering a high-quality, stable website to users. This plan encompasses development, testing, deployment, and post-launch activities to ensure a smooth and successful release.\r\n', NULL),
(33, 5001, 'Requisition', '1', 'Buy a Laptop', 'The release plan for EAAS outlines the stages and processes involved in delivering a high-quality, stable website to users. This plan encompasses development, testing, deployment, and post-launch activities to ensure a smooth and successful release.\r\n', NULL),
(34, 5001, 'Requisition', '1', 'Buy a Laptop', 'The release plan for EAAS outlines the stages and processes involved in delivering a high-quality, stable website to users. This plan encompasses development, testing, deployment, and post-launch activities to ensure a smooth and successful release.\r\n', NULL),
(35, 5001, 'Requisition', '0', 'Buy a Laptop', 'The release plan for EAAS outlines the stages and processes involved in delivering a high-quality, stable website to users. This plan encompasses development, testing, deployment, and post-launch activities to ensure a smooth and successful release.\r\n', NULL),
(36, 5001, 'Requisition', '0', 'Buy a Laptop', 'The release plan for EAAS outlines the stages and processes involved in delivering a high-quality, stable website to users. This plan encompasses development, testing, deployment, and post-launch activities to ensure a smooth and successful release.\r\n', NULL),
(37, 5001, 'Requisition', '0', 'Buy a Laptop', 'The release plan for EAAS outlines the stages and processes involved in delivering a high-quality, stable website to users. This plan encompasses development, testing, deployment, and post-launch activities to ensure a smooth and successful release.\r\n', NULL),
(38, 5001, 'Requisition', '0', 'Buy a Laptop', 'The release plan for EAAS outlines the stages and processes involved in delivering a high-quality, stable website to users. This plan encompasses development, testing, deployment, and post-launch activities to ensure a smooth and successful release.\r\n', NULL),
(39, 5001, 'Requisition', '0', 'Buy a Laptop', 'The release plan for EAAS outlines the stages and processes involved in delivering a high-quality, stable website to users. This plan encompasses development, testing, deployment, and post-launch activities to ensure a smooth and successful release.\r\n', NULL),
(40, 5001, 'Requisition', '0', 'Buy a Laptop', 'The release plan for EAAS outlines the stages and processes involved in delivering a high-quality, stable website to users. This plan encompasses development, testing, deployment, and post-launch activities to ensure a smooth and successful release.\r\n', NULL),
(41, 5001, 'Requisition', '0', 'Buy a Laptop', 'The release plan for EAAS outlines the stages and processes involved in delivering a high-quality, stable website to users. This plan encompasses development, testing, deployment, and post-launch activities to ensure a smooth and successful release.\r\n', NULL),
(42, 5001, 'Requisition', '0', 'Buy a Laptop', 'The release plan for EAAS outlines the stages and processes involved in delivering a high-quality, stable website to users. This plan encompasses development, testing, deployment, and post-launch activities to ensure a smooth and successful release.\r\n', NULL),
(43, 5001, 'Requisition', '0', 'Buy a Laptop', 'The release plan for EAAS outlines the stages and processes involved in delivering a high-quality, stable website to users. This plan encompasses development, testing, deployment, and post-launch activities to ensure a smooth and successful release.\r\n', NULL),
(44, 5001, 'Requisition', '0', 'Buy a Laptop', 'The release plan for EAAS outlines the stages and processes involved in delivering a high-quality, stable website to users. This plan encompasses development, testing, deployment, and post-launch activities to ensure a smooth and successful release.\r\n', NULL),
(45, 5001, 'Requisition', '0', 'Buy a Laptop', 'The release plan for EAAS outlines the stages and processes involved in delivering a high-quality, stable website to users. This plan encompasses development, testing, deployment, and post-launch activities to ensure a smooth and successful release.\r\n', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `approver_data`
--

CREATE TABLE `approver_data` (
  `department` varchar(50) DEFAULT NULL,
  `approver_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `approver_data`
--

INSERT INTO `approver_data` (`department`, `approver_id`) VALUES
('Management', 1001),
('HR', 2001),
('Security', 3001),
('MIS', 4001),
('IT', 5001),
('Accounts', 6001);

-- --------------------------------------------------------

--
-- Table structure for table `approve_policy`
--

CREATE TABLE `approve_policy` (
  `policy_id` int(11) NOT NULL,
  `f_approver_id` int(11) DEFAULT NULL,
  `f_approver_status` varchar(255) DEFAULT NULL,
  `s_approver_id` int(11) DEFAULT NULL,
  `s_approver_status` varchar(255) DEFAULT NULL,
  `t_approver_id` int(11) DEFAULT NULL,
  `t_approver_status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `approve_policy`
--

INSERT INTO `approve_policy` (`policy_id`, `f_approver_id`, `f_approver_status`, `s_approver_id`, `s_approver_status`, `t_approver_id`, `t_approver_status`) VALUES
(1, 5001, 'Approved', 1001, 'Approved', 1001, 'Approved'),
(2, 1001, 'Approved', 0, 'Declined', 0, 'Approved'),
(3, 1001, 'Approved', 0, 'Declined', 0, 'Approved'),
(4, 1001, 'Approved', 0, 'Declined', 0, 'No Statement'),
(5, 1001, 'Approved', 2001, 'No Statement', 1001, 'No Statement'),
(6, 5001, 'No Statement', 2001, 'No Statement', 1001, 'No Statement'),
(7, 5001, 'Approved', 4001, 'No Statement', 1001, 'No Statement'),
(8, 5001, 'No Statement', 2001, 'No Statement', 3001, 'No Statement'),
(9, 5001, 'No Statement', 2001, 'No Statement', 4001, 'No Statement'),
(10, 5001, 'Approved', 2001, 'Declined', 1001, 'No Statement'),
(11, 5001, 'Approved', 0, 'Declined', 0, 'No Statement'),
(12, 5001, 'No Statement', 0, 'No Statement', 0, 'No Statement'),
(13, 5001, 'No Statement', 0, 'No Statement', 0, 'No Statement'),
(14, 5001, 'Approved', 0, 'Declined', 0, 'No Statement'),
(15, 5001, 'No Statement', 0, 'No Statement', 0, 'No Statement'),
(16, 5001, 'Approved', 2001, 'Declined', 3001, 'No Statement'),
(17, 5001, 'Approved', 2001, 'Declined', 1001, 'No Statement'),
(18, 5001, 'Approved', 2001, 'Declined', 1001, 'No Statement'),
(19, 5001, 'Approved', 2001, 'Declined', 1001, 'No Statement'),
(20, 5001, 'Approved', 2001, 'Declined', 1001, 'No Statement'),
(21, 5001, 'Approved', 2001, 'Declined', 1001, 'No Statement'),
(22, 5001, 'Approved', 2001, 'Declined', 1001, 'No Statement'),
(23, 5001, 'Approved', 2001, 'Declined', 1001, 'No Statement'),
(24, 5001, 'No Statement', 2001, 'No Statement', 1001, 'No Statement'),
(25, 5001, 'No Statement', 2001, 'No Statement', 1001, 'No Statement'),
(26, 5001, 'Approved', 2001, 'Declined', 1001, 'No Statement'),
(27, 5001, 'Approved', 2001, 'Declined', 1001, 'No Statement'),
(28, 5001, 'Approved', 2001, 'Declined', 1001, 'No Statement'),
(29, 5001, 'Approved', 2001, 'Declined', 1001, 'No Statement'),
(30, 5001, 'Approved', 2001, 'Declined', 1001, 'No Statement'),
(31, 5001, 'Approved', 2001, 'Declined', 1001, 'No Statement'),
(32, 5001, 'Approved', 2001, 'Declined', 1001, 'No Statement'),
(33, 5001, 'Approved', 2001, 'Declined', 1001, 'No Statement'),
(34, 5001, 'Approved', 2001, 'Declined', 1001, 'No Statement'),
(35, 5001, 'Approved', 2001, 'Declined', 1001, 'No Statement'),
(36, 5001, 'Approved', 2001, 'Declined', 1001, 'No Statement'),
(37, 5001, 'Approved', 2001, 'Declined', 1001, 'No Statement'),
(38, 5001, 'Approved', 2001, 'Declined', 1001, 'No Statement'),
(39, 5001, 'Approved', 2001, 'Declined', 1001, 'No Statement'),
(40, 5001, 'Approved', 2001, 'Declined', 1001, 'No Statement'),
(41, 5001, 'Approved', 2001, 'Declined', 1001, 'No Statement'),
(42, 5001, 'Approved', 2001, 'Declined', 1001, 'No Statement'),
(43, 5001, 'Approved', 2001, 'Declined', 1001, 'No Statement'),
(44, 5001, 'Approved', 2001, 'Declined', 1001, 'No Statement');

-- --------------------------------------------------------

--
-- Table structure for table `employee_data`
--

CREATE TABLE `employee_data` (
  `employee_id` int(11) NOT NULL,
  `employee_name` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee_data`
--

INSERT INTO `employee_data` (`employee_id`, `employee_name`, `designation`, `department`) VALUES
(12, 'Rakib Hasan', 'Merchandizer ', 'Merchandizing'),
(25, 'Rakib Hasan', 'Merchandizer ', 'Merchandizing'),
(95, 'Rakib Hasan', 'Merchandizer ', 'Merchandizing'),
(125, 'Rakib Hasan', 'Merchandizer ', 'Merchandizing'),
(129, 'Rakib Hasan', 'Merchandizer ', 'Merchandizing'),
(152, 'Rakib Hasan', 'Merchandizer ', 'Merchandizing'),
(252, 'Rakib Hasan', 'Merchandizer ', 'Merchandizing'),
(1001, 'Tawqir Rahman', 'Managing Director', 'Management'),
(1258, 'Rakib Hasan', 'Merchandizer ', 'Merchandizing'),
(1259, 'Rakib Hasan', 'Merchandizer ', 'Merchandizing'),
(1299, 'Rakib Hasan', 'Merchandizer ', 'Merchandizing'),
(2001, 'Rayhan Kabir', 'Manager', 'HR'),
(3001, 'Adnan Shorif', 'AGM', 'Security'),
(4001, 'Nahid Hasan', 'Manager', 'MIS'),
(5001, 'Asad Nur', 'Manager', 'IT'),
(5155, 'Rakib Hasan', 'Merchandizer ', 'Merchandizing'),
(5255, 'Rakib Hasan', 'Merchandizer ', 'Merchandizing'),
(5259, 'Rakib Hasan', 'Merchandizer ', 'Merchandizing'),
(5455, 'Rakib Hasan', 'Merchandizer ', 'Merchandizing'),
(5555, 'Rakib Hasan', 'Merchandizer ', 'Merchandizing'),
(6001, 'Farhan Akhter', 'AGM', 'Accounts'),
(7004, 'MD Tusher Talukder', 'MTO', 'IT');

-- --------------------------------------------------------

--
-- Table structure for table `statement`
--

CREATE TABLE `statement` (
  `statement_id` int(11) NOT NULL,
  `approval_id` int(11) DEFAULT NULL,
  `statement` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `employee_id` int(11) DEFAULT NULL,
  `passkey` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`employee_id`, `passkey`) VALUES
(7004, '7004'),
(1002, '1002'),
(7001, '7001'),
(1001, '1001'),
(5001, '5001'),
(2001, '2001');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `approval_list`
--
ALTER TABLE `approval_list`
  ADD PRIMARY KEY (`approval_id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `approve_policy`
--
ALTER TABLE `approve_policy`
  ADD PRIMARY KEY (`policy_id`);

--
-- Indexes for table `employee_data`
--
ALTER TABLE `employee_data`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `statement`
--
ALTER TABLE `statement`
  ADD PRIMARY KEY (`statement_id`),
  ADD KEY `approval_id` (`approval_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `approval_list`
--
ALTER TABLE `approval_list`
  MODIFY `approval_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `approve_policy`
--
ALTER TABLE `approve_policy`
  MODIFY `policy_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `statement`
--
ALTER TABLE `statement`
  ADD CONSTRAINT `statement_ibfk_1` FOREIGN KEY (`approval_id`) REFERENCES `approval_list` (`approval_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
