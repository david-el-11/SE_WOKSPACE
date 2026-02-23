-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 23, 2026 at 01:57 PM
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
-- Database: `logitech`
--

-- --------------------------------------------------------

--
-- Table structure for table `model`
--

CREATE TABLE `model` (
  `ID` int(11) NOT NULL,
  `MODEL_NAME` varchar(100) DEFAULT NULL,
  `MODEL_PRICE` varchar(100) DEFAULT NULL,
  `MANUFACTURER` varchar(100) DEFAULT NULL,
  `LOCATION` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `model`
--

INSERT INTO `model` (`ID`, `MODEL_NAME`, `MODEL_PRICE`, `MANUFACTURER`, `LOCATION`) VALUES
(2, 'LOGITECH_VIVOBOOK', '55000', 'LOGITECH', 'GUJRAT'),
(3, 'LOGITECH_THINKPAD', '60000', 'LOGITECH', 'GUJRAT'),
(4, 'LOGITECH_VICTOS', '67000', 'LOGITECH', 'GUJRAT'),
(5, 'LOGITECH_PAVALION', '70000', 'LOGITECH', 'GUJRAT');

--
-- Triggers `model`
--
DELIMITER $$
CREATE TRIGGER `mytrigger2` AFTER UPDATE ON `model` FOR EACH ROW BEGIN 
    	INSERT INTO mytrigger set myaction='Updated a  subscriber' ,MODEL_NAME =  old.model_name;
    END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `mytrigger`
--

CREATE TABLE `mytrigger` (
  `ID` int(11) NOT NULL,
  `MODEL_NAME` varchar(255) NOT NULL,
  `myaction` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `model`
--
ALTER TABLE `model`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `mytrigger`
--
ALTER TABLE `mytrigger`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `model`
--
ALTER TABLE `model`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `mytrigger`
--
ALTER TABLE `mytrigger`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
