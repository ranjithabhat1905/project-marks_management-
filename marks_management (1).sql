-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 30, 2021 at 04:37 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `marks_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `marks`
--

CREATE TABLE `marks` (
  `sno` int(50) NOT NULL,
  `semno` int(15) NOT NULL,
  `subname` varchar(50) NOT NULL,
  `mark` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `marks`
--

INSERT INTO `marks` (`sno`, `semno`, `subname`, `mark`) VALUES
(12, 4, 'Data Structure', 75);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `usn` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `usn`, `password`, `date`) VALUES
(1, 'raj', 'adhira@gmail.com', '', '202cb962ac59075b964b07152d234b70', '2021-09-30 12:58:45'),
(2, 'ranjitha', 'adhira@gmail.com', '4SN18CS073', '202cb962ac59075b964b07152d234b70', '2021-09-30 12:59:21'),
(3, 'ranjitha', 'adhira@gmail.com', '4SN18CS073', '202cb962ac59075b964b07152d234b70', '2021-09-30 13:02:11'),
(4, 'ranjitha', 'jobhat1905@gmail.com', '4SN18CS073', '81dc9bdb52d04dc20036dbd8313ed055', '2021-09-30 13:02:24'),
(5, 'raj', 'adhira@gmail.com', '4SN18CS073', '202cb962ac59075b964b07152d234b70', '2021-09-30 13:15:29'),
(6, 'JACKSPARROW', 'adhira1@gmail.com', '4SN18CS071', '202cb962ac59075b964b07152d234b70', '2021-09-30 14:29:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `marks`
--
ALTER TABLE `marks`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `marks`
--
ALTER TABLE `marks`
  MODIFY `sno` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
