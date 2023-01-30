-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 11, 2021 at 12:38 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stadium`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookticket`
--

CREATE TABLE `bookticket` (
  `id` int(5) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `gender` enum('male','female','others','') NOT NULL,
  `phone` varchar(12) NOT NULL,
  `email` varchar(30) NOT NULL,
  `dob` date NOT NULL,
  `address` varchar(40) NOT NULL,
  `stadium` varchar(40) NOT NULL,
  `date` date NOT NULL,
  `amount` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bookticket`
--

INSERT INTO `bookticket` (`id`, `fullname`, `gender`, `phone`, `email`, `dob`, `address`, `stadium`, `date`, `amount`) VALUES
(1, 'nishant', 'male', '9685969708', 'nishantthakur@gmail.com', '2020-01-09', 'ecvedfvdefvef', 'motera', '2021-03-30', 300),
(2, 'gireesh', 'male', '542', 'gireesh@gmail.com', '0000-00-00', '', 'montera', '0000-00-00', 100),
(3, 'gireesh', 'male', '542', 'gireesh@gmail.com', '0000-00-00', '', 'montera', '0000-00-00', 100),
(4, '', '', '', '', '0000-00-00', '', 'montera', '0000-00-00', 100),
(5, '', '', '', '', '0000-00-00', '', 'montera', '0000-00-00', 100),
(6, '', '', '', '', '0000-00-00', '', 'montera', '0000-00-00', 100),
(7, '', '', '', '', '0000-00-00', '', 'montera', '0000-00-00', 100),
(8, 'praful', 'others', '6563232', 'praful@gmail.com', '2000-02-25', 'ffefefefef', 'CHEPAK', '2021-03-25', 300),
(9, 'praful', 'others', '6563232', 'praful@gmail.com', '2000-02-25', 'ffefefefef', 'CHEPAK', '2021-03-25', 300);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookticket`
--
ALTER TABLE `bookticket`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookticket`
--
ALTER TABLE `bookticket`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
