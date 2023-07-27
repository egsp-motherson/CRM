-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2022 at 10:17 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crm`
--

-- --------------------------------------------------------

--
-- Table structure for table `crm_clients`
--

CREATE TABLE `crm_clients` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `phone` varchar(256) NOT NULL,
  `address` varchar(256) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_on` datetime(6) NOT NULL,
  `updated_on` datetime(6) NOT NULL,
  `created_by` varchar(256) NOT NULL,
  `updated_by` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `crm_clients`
--

INSERT INTO `crm_clients` (`id`, `name`, `email`, `phone`, `address`, `status`, `created_on`, `updated_on`, `created_by`, `updated_by`) VALUES
(3, 'Motherson Sumi', 'mother@gmail.com', '9878987098', 'C 26, Sector 62, Noida ', 1, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'pawan', 'pawan'),
(4, 'HCL', 'hcl@gmail.com', '8978675678', 'C11 sector 13', 1, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'pawan', 'pawan'),
(5, 'TCS1', 'tcs@gmail.com1', '98087675461', 'L 7 Shatabdi Noida1', 0, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'pawan', 'pawan'),
(6, 'Gulfstream', 'pawan.sharma02@motherson.com', '9878987098', 'L 7 Shatabdi Noida', 1, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'pawan', 'pawan'),
(7, 'SISCO', 'sachin.sharma@gmail.com', '9878987098', 'C 26, Sector 62, Noida ', 1, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'pawan', 'pawan'),
(8, 'ClassLink', 'acenture@gmail.com', '8978675645', 'L 7 Shatabdi Noida', 1, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'pawan', 'pawan'),
(9, 'KCC', 'emirates@gmail.com', '9076745678', 'C11 sector 13', 1, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'pawan', 'pawan'),
(12, 'MRLP', 'info@mlrp.com', '9876543210', 'C 26, Sector 62, Noida ', 1, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'pawan', 'pawan');

-- --------------------------------------------------------

--
-- Table structure for table `crm_permissions`
--

CREATE TABLE `crm_permissions` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `description` text NOT NULL,
  `created_on` varchar(256) NOT NULL,
  `updated_on` varchar(256) NOT NULL,
  `created_by` varchar(256) NOT NULL,
  `updated_by` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `crm_permissions`
--

INSERT INTO `crm_permissions` (`id`, `name`, `status`, `description`, `created_on`, `updated_on`, `created_by`, `updated_by`) VALUES
(3, 'Users', 1, 'You can access user area', '1668492779902', '1668492779902', 'pawan', 'pawan'),
(4, 'Clients', 1, 'You can access client are', '1668492815074', '1668492815074', 'pawan', 'pawan'),
(5, 'Projects', 1, '', '1668577801777', '1668577801777', 'pawan', 'pawan'),
(7, 'Tasks', 1, 'Task', '1670932195185', '1670932195185', 'pawan', 'pawan');

-- --------------------------------------------------------

--
-- Table structure for table `crm_projects`
--

CREATE TABLE `crm_projects` (
  `id` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `description` longtext NOT NULL,
  `start_date` varchar(256) NOT NULL,
  `end_date` varchar(256) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL,
  `created_by` varchar(256) NOT NULL,
  `updated_by` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `crm_projects`
--

INSERT INTO `crm_projects` (`id`, `cid`, `uid`, `name`, `description`, `start_date`, `end_date`, `status`, `created_on`, `updated_on`, `created_by`, `updated_by`) VALUES
(4, 3, 7, 'SISCO FP7', 'Running profiler and other waits stats Sending report after completing the Left work on it.', '2022-11-09', '2022-11-24', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', '1'),
(8, 12, 16, 'MRLP Dedicated Team', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. \r\n\r\n', '2022-11-22', '2022-11-30', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `crm_roles`
--

CREATE TABLE `crm_roles` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `permission` varchar(256) NOT NULL,
  `description` text NOT NULL,
  `status` varchar(256) NOT NULL,
  `created_on` varchar(256) NOT NULL,
  `updated_on` varchar(256) NOT NULL,
  `created_by` varchar(256) NOT NULL,
  `updated_by` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `crm_roles`
--

INSERT INTO `crm_roles` (`id`, `name`, `permission`, `description`, `status`, `created_on`, `updated_on`, `created_by`, `updated_by`) VALUES
(5, 'Admin', '4,5,3', 'Admin', '1', '1668589048613', 'pawan', 'pawan', 'pawan'),
(6, 'Subscriber', '4,5,3', 'Subscriber', '1', '1668589064822', 'pawan', 'pawan', 'pawan'),
(8, 'Administrator', '4,5,3', 'This role have full permission', '1', '1668754694548', '1668754694548', 'pawan', 'pawan'),
(9, 'Test Role', 'undefined', 'test coment', '1', '1670930068702', '1670930068702', 'pawan', 'pawan'),
(10, 'Sub Admin', 'undefined', 'sub admin can access clients area', '1', '1670932176964', '1670932176964', 'pawan', 'pawan');

-- --------------------------------------------------------

--
-- Table structure for table `crm_tasks`
--

CREATE TABLE `crm_tasks` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `description` longtext NOT NULL,
  `hours` int(11) NOT NULL,
  `date` varchar(256) NOT NULL,
  `project` int(11) NOT NULL,
  `working_status` varchar(256) NOT NULL,
  `status` varchar(256) NOT NULL,
  `created_on` varchar(256) NOT NULL,
  `updated_on` varchar(256) NOT NULL,
  `created_by` varchar(256) NOT NULL,
  `updated_by` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `crm_tasks`
--

INSERT INTO `crm_tasks` (`id`, `title`, `description`, `hours`, `date`, `project`, `working_status`, `status`, `created_on`, `updated_on`, `created_by`, `updated_by`) VALUES
(3, 'Mail communication regarding', 'Mail communication regading index recommended and working on Proc index used.', 8, '2022-11-17', 4, 'Working', 'Under Review', '0000-00-00 00:00:00', '1670915113175', 'undefined', 'undefined'),
(4, 'Regarding index recommended and working on Proc index used', 'Mail communication regading index recommended and working on Proc index used.', 8, '2022-11-16', 4, 'Working', 'In Progress', '0000-00-00 00:00:00', '1670915108330', 'undefined', 'undefined'),
(5, 'Meeting and chat with erci', 'Meeting and chat with erci , Worked on Cross checking the CEDAR DBA\'s Index recommendation for Proc.', 8, '2022-11-15', 4, 'Working', 'Not Started', '0000-00-00 00:00:00', '1670915103757', 'undefined', 'undefined'),
(8, 'Test', 'test', 8, '2022-11-14', 4, 'Working', 'Not Started', '1669117686180', '1670915097869', 'undefined', 'undefined'),
(9, 'Test title', 'test', 8, '2022-12-13', 8, 'Leave', 'Not Started', '1670914419267', '1670915064719', 'undefined', 'undefined'),
(10, 'Holiday title', 'Holiday (Vijaya Dashmi)', 0, '2022-12-13', 4, 'Holiday', 'Not Started', '1670921174553', '1670921174553', 'undefined', 'undefined');

-- --------------------------------------------------------

--
-- Table structure for table `crm_users`
--

CREATE TABLE `crm_users` (
  `id` int(11) NOT NULL,
  `emid` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `phone` varchar(256) NOT NULL,
  `username` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  `profile` longtext NOT NULL,
  `skills` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `role` varchar(256) NOT NULL,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL,
  `created_by` varchar(256) NOT NULL,
  `updated_by` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `crm_users`
--

INSERT INTO `crm_users` (`id`, `emid`, `name`, `email`, `phone`, `username`, `password`, `profile`, `skills`, `status`, `role`, `created_on`, `updated_on`, `created_by`, `updated_by`) VALUES
(9, 1234, 'Omendra Singh1', 'omendra.singh@motherson.com', '7890267890', 'tmadmin', '$2b$10$0zcXpGXrCbvXQM.zq871GOXj1mL/4UMWXRHgRKRMoAU1cGJi/8QoO', 'Test profile1', 'Php', 1, 'Administrator', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1234', '1234'),
(16, 5306, 'Pawan Sharma', 'pawan.sharma02@motherson.com', '9878987098', 'psadmin', '$2b$10$FSx6XzJvv4MTiDQ7JbcDHuoQlhGdv8tQFUFX3tA0USO4kmoz3Y7jS', 'Test Profile', 'Node', 1, 'Admin', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5306', '5306'),
(17, 7865, 'Nishant Singh', 'nishant.singh@motherson.com', '9871682705', 'nishant.singh', '$2b$10$w5GhXwxadLOHpuoqekk0SOacifTjkvi4gBSfTHOC8mNwK5zu4zDcK', 'Test profile', 'Java', 1, 'Subscriber', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '7865', '7865');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `crm_clients`
--
ALTER TABLE `crm_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_permissions`
--
ALTER TABLE `crm_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_projects`
--
ALTER TABLE `crm_projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_roles`
--
ALTER TABLE `crm_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_tasks`
--
ALTER TABLE `crm_tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_users`
--
ALTER TABLE `crm_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `emid` (`emid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `crm_clients`
--
ALTER TABLE `crm_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `crm_permissions`
--
ALTER TABLE `crm_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `crm_projects`
--
ALTER TABLE `crm_projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `crm_roles`
--
ALTER TABLE `crm_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `crm_tasks`
--
ALTER TABLE `crm_tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `crm_users`
--
ALTER TABLE `crm_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
