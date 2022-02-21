-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 09, 2022 at 03:09 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `secureparking`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_location`
--

CREATE TABLE `tbl_location` (
  `Loc_id` int(11) NOT NULL,
  `Location` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_location`
--

INSERT INTO `tbl_location` (`Loc_id`, `Location`) VALUES
(1, 'Ernakulam');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login`
--

CREATE TABLE `tbl_login` (
  `login_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `Utype_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_login`
--

INSERT INTO `tbl_login` (`login_id`, `username`, `password`, `Utype_id`, `status`) VALUES
(1, 'admin123', 'Admin123@', 1, 1),
(11, 'nibin1234', 'Nibin123@', 2, 1),
(12, 'tony1234', 'Tony123@', 2, 1),
(13, 'sara1234', 'Sara123@', 2, 1),
(14, 'jhon1234', 'Jhon123@', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_parkingarea`
--

CREATE TABLE `tbl_parkingarea` (
  `Parea_id` int(11) NOT NULL,
  `Parea` varchar(50) NOT NULL,
  `Pcapacity` int(20) NOT NULL,
  `Loc_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_parkingarea`
--

INSERT INTO `tbl_parkingarea` (`Parea_id`, `Parea`, `Pcapacity`, `Loc_id`) VALUES
(1, 'fort kochi', 100, 1),
(2, 'kochi', 200, 1),
(3, 'subash park', 250, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_register`
--

CREATE TABLE `tbl_register` (
  `Uid` int(11) NOT NULL,
  `login_id` int(11) NOT NULL,
  `Uname` varchar(50) NOT NULL,
  `Uaddress` varchar(50) NOT NULL,
  `Uemail` varchar(50) NOT NULL,
  `Uphone` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_register`
--

INSERT INTO `tbl_register` (`Uid`, `login_id`, `Uname`, `Uaddress`, `Uemail`, `Uphone`) VALUES
(11, 11, 'nibin', 'narimattam', 'nibin123@gmail.com', '9090909090'),
(12, 12, 'tomy', 'narimattam', 'nibin@gmail.com', '7891233211'),
(13, 13, 'sara', 'narimattam', 'sara@gmail.com', '7899877899'),
(14, 14, 'jhon', 'narimattam', 'jhon@gmail.com', '7899877811');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vehicletype`
--

CREATE TABLE `tbl_vehicletype` (
  `V_id` int(11) NOT NULL,
  `V_type` varchar(50) NOT NULL,
  `V_price` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_vehicletype`
--

INSERT INTO `tbl_vehicletype` (`V_id`, `V_type`, `V_price`) VALUES
(2, 'truck', 250),
(4, 'car', 200);

-- --------------------------------------------------------

--
-- Table structure for table `usertype`
--

CREATE TABLE `usertype` (
  `Utype_id` int(11) NOT NULL,
  `Usertype` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usertype`
--

INSERT INTO `usertype` (`Utype_id`, `Usertype`) VALUES
(1, 'admin'),
(2, 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_location`
--
ALTER TABLE `tbl_location`
  ADD PRIMARY KEY (`Loc_id`);

--
-- Indexes for table `tbl_login`
--
ALTER TABLE `tbl_login`
  ADD PRIMARY KEY (`login_id`),
  ADD KEY `Utype_id` (`Utype_id`);

--
-- Indexes for table `tbl_parkingarea`
--
ALTER TABLE `tbl_parkingarea`
  ADD PRIMARY KEY (`Parea_id`),
  ADD KEY `Loc_id` (`Loc_id`);

--
-- Indexes for table `tbl_register`
--
ALTER TABLE `tbl_register`
  ADD PRIMARY KEY (`Uid`),
  ADD KEY `login_id` (`login_id`);

--
-- Indexes for table `tbl_vehicletype`
--
ALTER TABLE `tbl_vehicletype`
  ADD PRIMARY KEY (`V_id`);

--
-- Indexes for table `usertype`
--
ALTER TABLE `usertype`
  ADD PRIMARY KEY (`Utype_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_location`
--
ALTER TABLE `tbl_location`
  MODIFY `Loc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_login`
--
ALTER TABLE `tbl_login`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_parkingarea`
--
ALTER TABLE `tbl_parkingarea`
  MODIFY `Parea_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_register`
--
ALTER TABLE `tbl_register`
  MODIFY `Uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_vehicletype`
--
ALTER TABLE `tbl_vehicletype`
  MODIFY `V_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `usertype`
--
ALTER TABLE `usertype`
  MODIFY `Utype_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_login`
--
ALTER TABLE `tbl_login`
  ADD CONSTRAINT `tbl_login_ibfk_1` FOREIGN KEY (`Utype_id`) REFERENCES `usertype` (`Utype_id`);

--
-- Constraints for table `tbl_parkingarea`
--
ALTER TABLE `tbl_parkingarea`
  ADD CONSTRAINT `tbl_parkingarea_ibfk_1` FOREIGN KEY (`Loc_id`) REFERENCES `tbl_location` (`Loc_id`);

--
-- Constraints for table `tbl_register`
--
ALTER TABLE `tbl_register`
  ADD CONSTRAINT `tbl_register_ibfk_1` FOREIGN KEY (`login_id`) REFERENCES `tbl_login` (`login_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
