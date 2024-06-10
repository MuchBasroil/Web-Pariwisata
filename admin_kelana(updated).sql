-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2024 at 12:30 PM
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
-- Database: `admin_kelana`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `idAdmin` char(6) NOT NULL,
  `usernameAdmin` varchar(100) NOT NULL,
  `passwordAdmin` varchar(100) NOT NULL,
  `namaAdmin` varchar(255) NOT NULL,
  `emailAdmin` varchar(255) NOT NULL,
  `nomorAdmin` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messageuser`
--

CREATE TABLE `messageuser` (
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messageuser`
--

INSERT INTO `messageuser` (`name`, `email`, `message`, `created_at`) VALUES
('Radithya', 'Radit@gmail.com', 'Tes coba pesan pertama', '2024-06-05 22:55:13');

-- --------------------------------------------------------

--
-- Table structure for table `place`
--

CREATE TABLE `place` (
  `idPlace` char(6) NOT NULL,
  `namaPlace` varchar(100) NOT NULL,
  `imagePicture` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tourguide`
--

CREATE TABLE `tourguide` (
  `idTourGuide` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `gender` enum('Male','Female') NOT NULL,
  `age` int(11) NOT NULL,
  `experience` int(11) NOT NULL,
  `language` varchar(50) NOT NULL,
  `rating` decimal(3,2) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tourguide`
--

INSERT INTO `tourguide` (`idTourGuide`, `name`, `gender`, `age`, `experience`, `language`, `rating`, `price`) VALUES
(2, 'Yuk Milla', 'Female', 28, 5, 'Bahasa Indonesia, Bahasa Inggris', 4.80, 300000.00),
(3, 'Andi Suheb', 'Male', 31, 8, 'Bahasa Indonesia, Bahasa Inggris', 5.00, 800000.00),
(4, 'Yanto Galon', 'Male', 25, 3, 'Spanyol', 4.00, 300000.00);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `idUser` char(6) NOT NULL,
  `usernameUser` varchar(100) NOT NULL,
  `passwordUser` varchar(100) NOT NULL,
  `namaUser` varchar(255) NOT NULL,
  `emailUser` varchar(255) NOT NULL,
  `noUser` varchar(15) NOT NULL,
  `role` enum('admin','tourGuide','user','') NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`idUser`, `usernameUser`, `passwordUser`, `namaUser`, `emailUser`, `noUser`, `role`) VALUES
('ADM001', 'radit', '$2y$10$2z8YgiU2jAaMXo7jlZduo.qqlwQOkTXOjX6zF3brvhr91Mzx9p6wq', 'Radithya', 'radit1@gmail.com', '0816216440', 'admin'),
('USR147', 'Radit123', '$2y$10$SbqUTyH5ilPNUaEAgB/h8uNjOMhKe7Gd9gawUgBs/6/vZ4dfxxbTi', 'Radithya', 'Radit@gmail.com', '081346578901', 'admin'),
('USR172', 'tibaut2', '$2y$10$rUmOspkHQKBJhVuxfR1H0ef7wwTATG0p4HNFXZX./7ofskuvRDnFG', 'Tibaut', 'tibaut@gmail.com', '09876543213', 'user'),
('USR186', 'suheb3', '$2y$10$Oi.IZNaJ4ethfLCOo0NJ0OeyEpv0BTpoBhIIRCZwJetWhc.Nqk/aG', 'Suheb', 'suheb@gmail.com', '083851716145', 'user'),
('USR210', 'Sandy', '$2y$10$RmptzxReoSE6R.jJCWPhtufRw3Yomg7AtDlAxABevOWEH/TZyMkyO', 'Sandy', 'sandy@gmail.com', '083851716161', 'user'),
('USR301', 'suheb2', '$2y$10$eMec1QYfNt/Qv664Ez2t/Ov6hnEMkRb.0q7YwTNoJn6ZD9JGErqUu', 'Suheb', 'suheb@gmail.com', '083851716145', 'user'),
('USR381', 'sandy2', '$2y$10$szUZyPb9CIqoaZ6VCfM2OeaAt.fgdPoStQ5.a/SZ6EWxqmOKeL9cK', 'Sandy', 'sandy@gmail.com', '081346578911', 'user'),
('USR386', 'Kevin123', '$2y$10$a7UeoUPI6r3cMOW4XtnHb.ow6W6.n9QGkojMkJzZuALAGxmiTHiEm', 'Kevin', 'Kevin@gmail.com', '09876543213', 'user'),
('USR394', 'Dwi Fibianto', '$2y$10$oPn5qTNqqYvrKAiv.6m3FeQa9au4Tn5PvUQ3Y6b4jBOIZLna7JoQy', 'Fibi', 'Fibi@gmail.com', '081544752202', 'user'),
('USR422', 'FIBI', '$2y$10$i8Y6F8sGc/f511qNXb8kweKTor9ka/8VDJ0b8R/4sLPatWEnKMlh.', 'FIBI', 'FIBI@gmail.com', '0881828128', 'user'),
('USR462', 'tibaut', '$2y$10$UFRjFvrBSoDZhwI7ziB3suJJ.8.JDAwDmeUjb0Nqozu49uXi0OfoS', 'Tibaut', 'tibaut@gmail.com', '083851716148', 'user'),
('USR585', 'Billy123', '$2y$10$iSF4AANzqTXWjedMLisFnOTTn.sS1dz2.tpCHvubIKzYti474uXCK', 'Billy', 'Billy@gmail.com', '0123467890', 'user'),
('USR668', 'suheb', '$2y$10$ZL9pHAHtluR//2pItkf/geaToJSQXIlrqD0s3jo/xnumyZUFMjcLq', 'Suheb', 'suheb@gmail.com', '083851716145', 'user'),
('USR800', 'WinasGJ', '$2y$10$7qq0HJaapI2vD7/1FmI9TuGeDyK/UQUGvi4pK728GuK8XECdq0oFO', 'winas', 'winas@gmail.com', '083851716162', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`idAdmin`);

--
-- Indexes for table `messageuser`
--
ALTER TABLE `messageuser`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `place`
--
ALTER TABLE `place`
  ADD PRIMARY KEY (`idPlace`);

--
-- Indexes for table `tourguide`
--
ALTER TABLE `tourguide`
  ADD PRIMARY KEY (`idTourGuide`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`idUser`),
  ADD UNIQUE KEY `usernameUser` (`usernameUser`),
  ADD UNIQUE KEY `usernameUser_2` (`usernameUser`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tourguide`
--
ALTER TABLE `tourguide`
  MODIFY `idTourGuide` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
