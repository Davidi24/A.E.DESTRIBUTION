-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2023 at 05:16 PM
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
-- Database: `aedistribution`
--

-- --------------------------------------------------------

--
-- Table structure for table `business_info`
--

CREATE TABLE `business_info` (
  `business_id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL,
  `address` varchar(80) NOT NULL,
  `phone` varchar(80) NOT NULL,
  `email` varchar(80) NOT NULL,
  `website` varchar(80) NOT NULL,
  `License` varchar(80) NOT NULL,
  `tax_number` int(80) NOT NULL,
  `bank_accaunt` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `business_info`
--

INSERT INTO `business_info` (`business_id`, `name`, `address`, `phone`, `email`, `website`, `License`, `tax_number`, `bank_accaunt`) VALUES
(35, 'Name', 'Address', '0677564436', 'dkeci21@epoka.edu.al', 'wqwqwqwq', '', 1234, 'L1234'),
(36, 'Name2', 'Address2', '0677564436', 'dkeci21@epoka.edu.alggfgf', 'wqwqwqwq', '', 1234, 'L1234'),
(37, 'Name3', 'Address', '0677564436', 'dkeci21@epoka.edu.al', 'wqwqwqwq', '', 1234, 'L1234'),
(38, 'Name4', 'Address', '0677564436', 'dkeci21@epoka.edu.al', 'wqwqwqwq', '', 1234, 'L1234'),
(46, 'Name5', 'Address', '0677564436', 'dkeci21@epoka.edu.al', 'wqwqwqwq', '', 1, 'L1234');

-- --------------------------------------------------------

--
-- Table structure for table `klienti`
--

CREATE TABLE `klienti` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL,
  `email` varchar(80) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `company_name` varchar(80) NOT NULL,
  `date` date NOT NULL,
  `client_id` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `klienti`
--

INSERT INTO `klienti` (`id`, `name`, `email`, `phone`, `company_name`, `date`, `client_id`) VALUES
(2048, 'David', 'dkeci21@epoka.edu.al', '0677564436', 'sdjkkjcsbdkvbsbsdkjbksdjbsdksj', '2023-07-06', '1234fz'),
(2049, 'David', 'dkeci21@epoka.edu.aljkdhdhsgjds', '0677564436', 'ddd', '2023-07-06', '2'),
(2050, 'Davidddd', 'dkeci21@epoka.edu.alwwww', '0677564436', 'cccc', '2023-07-06', '3');

-- --------------------------------------------------------

--
-- Table structure for table `product_info`
--

CREATE TABLE `product_info` (
  `product_id` int(11) NOT NULL,
  `businesss_id` int(11) NOT NULL,
  `artikulli` varchar(80) NOT NULL,
  `emertimi` varchar(80) NOT NULL,
  `saisa` int(30) NOT NULL,
  `njesia_matse` varchar(10) NOT NULL,
  `cmimi` int(30) NOT NULL,
  `total` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_info`
--

INSERT INTO `product_info` (`product_id`, `businesss_id`, `artikulli`, `emertimi`, `saisa`, `njesia_matse`, `cmimi`, `total`) VALUES
(43, 35, 'A1', 'A1', 1, 'kg', 1, 1),
(44, 35, 'b', 'b', 2, 'kg', 1, 2),
(45, 36, 'c', 'a', 10, 'kg', 111, 1110),
(46, 37, 'A1', 'a', 111, 'kg', 111, 12321),
(47, 38, 'b', 'a', 111, '111', 111, 12321),
(55, 46, 'dd', 'dd', 3, 'dd', 3, 9);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(70) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`) VALUES
(40, 'David', 'dkeci21@epoka.edu.alggfgf', '$2y$10$.RcIDw4ArnURAP5xhY3ouOF2Im2VYG8lcL4Vz.Z.yzxQmG4eA5Jii'),
(41, 'David', 'dkeci21@epoka.edu.alggfgfs', '$2y$10$27/64s.bscAmHR32zWg8Tuj/ABGb9s/6sZOYcOwO5DGc7eb4RXs8O'),
(42, 'David', 'dkeci21@epoka.edu.al', '$2y$10$kp/CHj8x6PAPUIKN7gtj5OquHfMpgpd/D4AfXniH/9BkvIvNFYLAi'),
(43, 'David', 'dkeci21@epoka.edu.alggfgf777', '$2y$10$JOWk.GGkYnJj7aSAQhcWPOvvPcBFMTXB503fiay7Rrk.hnWkLGS0a'),
(44, 'David', 'dkeci21@epoka.edu.alggfgflllll', '$2y$10$ftNLJxlDBYk/UT3D.b06J.B5z8eoDEWfWBTOtRRoXU8TJtLOYvCna'),
(45, 'David', 'dkeci21@epoka.edu.alggfgfdfdff', '$2y$10$e7NP2DmIuFPSmYuYsZw/S.0NM1qK61V.nZ/1O17qZehMxqLkH5j3e'),
(46, 'David', 'dkeci21@epoka.edu.alggfgfddddd', '$2y$10$lVYuvx2B7HqAvSLHn/ZJMuhz32LqeDbYVh6JcIBPalxEQSjeurqVm'),
(47, 'David', 'dkeci21@epoka.edu.alggfgfuyuuu', '$2y$10$3WpQ6fz.c3dhbGt0X1bAT.vgVTsSHCthIe0r9xnGoPmdxv/zoNFZW'),
(48, 'David', 'dkeci21@epoka.edu.alggfgfiiiii', '$2y$10$6sWHL8CwEmqurJCcHTKabu/taGl7aUWTX0VVvwaVWVgoPRLNSyHj2'),
(49, 'David', 'dkeci21@epoka.edu.alggfgfyttyt', '$2y$10$jO4YaSnDDZcz7DlpI4WbPu63LMqxcEPWAk18ehEHRbVEi51hZ336C'),
(50, 'David', 'dkeci21@epoka.edu.alggfgfkhglh', '$2y$10$qGqvtvEZt1yPlBB7L0CDmuJcp8jlTJLQ9gdvz9vAd7P0Rh4YU6TQ2'),
(51, 'David', 'dkeci21@epoka.edu.alggfgfukkkk', '$2y$10$Wiup9OCXOx3nOvGdXHp0F.K3algGYs7UijqDEgfz2p833ZQnT8Roq'),
(52, 'David', 'dkeci21@epoka.edu.alggfgfhhhhh', '$2y$10$vo2UEsxu35DMe9kkZWxPje5WTy0Z/ORHFVNp0loH0guOcxyiPXI3C'),
(53, 'David', 'dkeci21@epoka.edu.alggfgfffdfd', '$2y$10$eA7cmSM30wFUl4JySET4pufsAamiEWbrV5OBU63mhywgJ/6WVKF5q'),
(54, 'David', 'dkeci21@epoka.edu.alggfgfdd', '$2y$10$HebB2uvpLdpSr5RsWdmsouDRRpq5RQ0te8AX/SPf9OjTliNLSDIL2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `business_info`
--
ALTER TABLE `business_info`
  ADD PRIMARY KEY (`business_id`);

--
-- Indexes for table `klienti`
--
ALTER TABLE `klienti`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `product_info`
--
ALTER TABLE `product_info`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `product_info_ibfk_1` (`businesss_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `business_info`
--
ALTER TABLE `business_info`
  MODIFY `business_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `klienti`
--
ALTER TABLE `klienti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2051;

--
-- AUTO_INCREMENT for table `product_info`
--
ALTER TABLE `product_info`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product_info`
--
ALTER TABLE `product_info`
  ADD CONSTRAINT `product_info_ibfk_1` FOREIGN KEY (`businesss_id`) REFERENCES `business_info` (`business_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
