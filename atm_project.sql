-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 31, 2024 at 06:57 PM
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
-- Database: `atm_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `atm_db`
--

CREATE TABLE `atm_db` (
  `ACCOUNT_HOLDER_NAME` varchar(30) DEFAULT NULL,
  `ACCOUNT_NO` int(11) NOT NULL,
  `PASSWORD` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `atm_db`
--

INSERT INTO `atm_db` (`ACCOUNT_HOLDER_NAME`, `ACCOUNT_NO`, `PASSWORD`) VALUES
('Aakanksha', 111, 123),
('Namrata', 112, 456),
('sanika', 113, 789),
('Vanshika', 114, 987),
('Kalyani', 115, 654),
('Pooja', 116, 321);

-- --------------------------------------------------------

--
-- Table structure for table `transaction_db`
--

CREATE TABLE `transaction_db` (
  `ACCOUNT_NO` int(11) DEFAULT NULL,
  `TRANSACTION_ID` int(11) NOT NULL,
  `WITHDRAW_AMOUNT` int(11) DEFAULT 0,
  `DEPOSIT_AMOUNT` int(11) DEFAULT 0,
  `CURRENT_BALANCE` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaction_db`
--

INSERT INTO `transaction_db` (`ACCOUNT_NO`, `TRANSACTION_ID`, `WITHDRAW_AMOUNT`, `DEPOSIT_AMOUNT`, `CURRENT_BALANCE`) VALUES
(116, 1234, 1000, 500, 500),
(112, 3456, 100, 50, 50),
(113, 6789, 5000, 2500, 2500),
(114, 6799, 500, 400, 100),
(115, 8754, 600, 300, 300),
(111, 89998, 550, 1000, 450);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `atm_db`
--
ALTER TABLE `atm_db`
  ADD PRIMARY KEY (`ACCOUNT_NO`);

--
-- Indexes for table `transaction_db`
--
ALTER TABLE `transaction_db`
  ADD PRIMARY KEY (`TRANSACTION_ID`),
  ADD KEY `ACCOUNT_NO` (`ACCOUNT_NO`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction_db`
--
ALTER TABLE `transaction_db`
  MODIFY `TRANSACTION_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89999;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `transaction_db`
--
ALTER TABLE `transaction_db`
  ADD CONSTRAINT `transaction_db_ibfk_1` FOREIGN KEY (`ACCOUNT_NO`) REFERENCES `atm_db` (`ACCOUNT_NO`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
