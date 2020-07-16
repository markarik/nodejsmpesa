-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 17, 2020 at 12:20 AM
-- Server version: 8.0.20-0ubuntu0.20.04.1
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nodempesa`
--

-- --------------------------------------------------------

--
-- Table structure for table `mobile_payments`
--

CREATE TABLE `mobile_payments` (
  `transLoID` int NOT NULL,
  `TransactionType` varchar(10) NOT NULL,
  `TransID` varchar(10) NOT NULL,
  `TransTime` varchar(14) NOT NULL,
  `TransAmount` varchar(6) NOT NULL,
  `BusinessShortCode` varchar(6) NOT NULL,
  `BillRefNumber` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `InvoiceNumber` varchar(6) NOT NULL,
  `OrgAccountBalance` varchar(10) NOT NULL,
  `ThirdPartyTransID` varchar(10) DEFAULT NULL,
  `MSISDN` varchar(14) NOT NULL,
  `FirstName` varchar(10) DEFAULT NULL,
  `MiddleName` varchar(10) DEFAULT NULL,
  `LastName` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `mobile_payments`
--

INSERT INTO `mobile_payments` (`transLoID`, `TransactionType`, `TransID`, `TransTime`, `TransAmount`, `BusinessShortCode`, `BillRefNumber`, `InvoiceNumber`, `OrgAccountBalance`, `ThirdPartyTransID`, `MSISDN`, `FirstName`, `MiddleName`, `LastName`) VALUES
(1, '', 'OGG81HCD96', '20200716011549', '10.00', '600347', 'TestAPi', '', '', '', '254708374149', 'John', 'J.', 'Doe'),
(2, '', 'OGG01HCD98', '20200716013114', '10.00', '600347', 'TestAPi', '', '', '', '254708374149', 'John', 'J.', 'Doe'),
(3, '', 'OGG11HCD99', '20200716013200', '10.00', '600347', 'TestAPi', '', '', '', '254708374149', 'John', 'J.', 'Doe'),
(4, '', 'OGG21HCD9A', '20200716013346', '10.00', '600347', 'TestAPi', '', '', '', '254708374149', 'John', 'J.', 'Doe'),
(5, '', 'OGG31HCD9B', '20200716013615', '10.00', '600347', 'TestAPi', '', '', '', '254708374149', 'John', 'J.', 'Doe'),
(6, '', 'OGG51HCD9D', '20200716013829', '10.00', '600347', 'TestAPi', '', '', '', '254708374149', 'John', 'J.', 'Doe'),
(7, '', 'OGG61HCD9E', '20200716014221', '10.00', '600347', 'TestAPi', '', '', '', '254708374149', 'John', 'J.', 'Doe'),
(8, '', 'OGG71HCD9F', '20200716014306', '10.00', '600347', 'TestAPi', '', '', '', '254708374149', 'John', 'J.', 'Doe'),
(10, '', 'OGG81HCD9G', '20200716014428', '10.00', '600347', 'TestAPi', '', '', '', '254708374149', 'John', 'J.', 'Doe'),
(11, '', 'OGG91HCD9H', '20200716014924', '10.00', '600347', 'TestAPi', '', '', '', '254708374149', 'John', 'J.', 'Doe'),
(12, '', 'OGG21HCD9K', '20200716015701', '10.00', '600347', 'TestAPi', '', '', '', '254708374149', 'John', 'J.', 'Doe'),
(13, '', 'OGG41HCD9W', '20200716023420', '10.00', '600347', 'TestAPi', '', '', '', '254708374149', 'John', 'J.', 'Doe'),
(14, '', 'OGG51HCD9X', '20200716023549', '10.00', '600347', 'TestAPi', '', '', '', '254708374149', 'John', 'J.', 'Doe'),
(15, '', 'OGG01HCDA2', '20200716024134', '10.00', '600347', 'TestAPi', '', '', '', '254708374149', 'John', 'J.', 'Doe');

-- --------------------------------------------------------

--
-- Table structure for table `mobile_payments_confirmation`
--

CREATE TABLE `mobile_payments_confirmation` (
  `transLoID` int NOT NULL,
  `TransactionType` varchar(255) NOT NULL,
  `TransID` varchar(255) NOT NULL,
  `TransTime` varchar(255) NOT NULL,
  `TransAmount` varchar(255) NOT NULL,
  `BusinessShortCode` varchar(255) NOT NULL,
  `BillRefNumber` varchar(255) NOT NULL,
  `InvoiceNumber` varchar(255) DEFAULT NULL,
  `OrgAccountBalance` varchar(255) NOT NULL,
  `ThirdPartyTransID` varchar(255) DEFAULT NULL,
  `MSISDN` varchar(14) NOT NULL,
  `FirstName` varchar(10) DEFAULT NULL,
  `MiddleName` varchar(10) DEFAULT NULL,
  `LastName` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `mobile_payments_confirmation`
--

INSERT INTO `mobile_payments_confirmation` (`transLoID`, `TransactionType`, `TransID`, `TransTime`, `TransAmount`, `BusinessShortCode`, `BillRefNumber`, `InvoiceNumber`, `OrgAccountBalance`, `ThirdPartyTransID`, `MSISDN`, `FirstName`, `MiddleName`, `LastName`) VALUES
(1, 'Pay Bill', 'OGG81HCD9G', '20200716014428', '10.00', '600347', 'TestAPi', '', '82567.00', '', '254708374149', 'John', 'J.', 'Doe'),
(4, 'Pay Bill', 'OGG11HCD9J', '20200716015106', '10.00', '600347', 'TestAPi', '', '82587.00', '1234567890', '254708374149', 'John', 'J.', 'Doe'),
(5, 'Pay Bill', 'OGG81HCD9Q', '20200716021420', '10.00', '600347', 'TestAPi', '', '82617.00', '', '254708374149', 'John', 'J.', 'Doe'),
(9, 'Pay Bill', 'OGG01HCDA2', '20200716024134', '10.00', '600347', 'TestAPi', '', '82687.00', '', '254708374149', 'John', 'J.', 'Doe');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mobile_payments`
--
ALTER TABLE `mobile_payments`
  ADD PRIMARY KEY (`transLoID`),
  ADD UNIQUE KEY `TransID` (`TransID`);

--
-- Indexes for table `mobile_payments_confirmation`
--
ALTER TABLE `mobile_payments_confirmation`
  ADD PRIMARY KEY (`transLoID`),
  ADD UNIQUE KEY `TransID` (`TransID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mobile_payments`
--
ALTER TABLE `mobile_payments`
  MODIFY `transLoID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `mobile_payments_confirmation`
--
ALTER TABLE `mobile_payments_confirmation`
  MODIFY `transLoID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
