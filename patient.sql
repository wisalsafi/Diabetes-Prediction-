-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 13, 2020 at 04:36 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `diabeties`
--

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `id` int(11) NOT NULL,
  `patient_name` varchar(20) NOT NULL,
  `preg` int(11) NOT NULL,
  `plas` int(11) NOT NULL,
  `pres` int(11) NOT NULL,
  `skin` int(11) NOT NULL,
  `insu` int(11) NOT NULL,
  `mass` decimal(4,1) NOT NULL,
  `pedi` decimal(5,3) NOT NULL,
  `age` int(11) NOT NULL,
  `class` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`id`, `patient_name`, `preg`, `plas`, `pres`, `skin`, `insu`, `mass`, `pedi`, `age`, `class`) VALUES
(1, 'Muhammad Waseem', 0, 0, 0, 0, 0, '0.0', '0.000', 0, 'tested_negative'),
(4, 'Muhammad Waseem', 0, 12, 21, 32, 21, '1.0', '43.000', 42, 'tested_negative'),
(4, 'Muhammad Waseem', 0, 0, 0, 0, 0, '0.0', '0.000', 0, 'tested_negative'),
(4, 'Muhammad Waseem', 0, 0, 0, 0, 0, '0.0', '0.000', 0, 'tested_negative'),
(4, 'Muhammad Waseem', 0, 0, 0, 0, 0, '0.0', '0.000', 0, 'tested_negative'),
(4, 'Muhammad Waseem', 0, 0, 0, 0, 0, '0.0', '0.000', 0, 'tested_negative'),
(4, 'Muhammad Waseem', 0, 0, 0, 0, 0, '0.0', '0.000', 0, 'tested_negative'),
(4, 'Muhammad Waseem', 0, 0, 0, 0, 0, '0.0', '0.000', 0, 'tested_negative'),
(4, 'Muhammad Waseem', 0, 0, 0, 0, 0, '0.0', '0.000', 0, 'tested_negative'),
(4, 'Muhammad Waseem', 0, 0, 0, 0, 0, '0.0', '0.000', 0, 'tested_negative'),
(4, 'Muhammad Waseem', 0, 0, 0, 0, 0, '0.0', '0.000', 0, 'tested_negative'),
(4, 'Muhammad Waseem', 0, 0, 0, 0, 0, '0.0', '0.000', 0, 'tested_negative'),
(4, 'Muhammad Waseem', 0, 0, 0, 0, 0, '0.0', '0.000', 0, 'tested_negative'),
(4, 'Muhammad Waseem', 0, 0, 0, 0, 0, '0.0', '0.000', 0, 'tested_negative'),
(4, 'Muhammad Waseem', 0, 0, 0, 0, 0, '0.0', '0.000', 0, 'tested_negative'),
(4, 'Muhammad Waseem', 0, 0, 0, 0, 0, '0.0', '0.000', 0, 'tested_negative'),
(4, 'Muhammad Waseem', 0, 0, 0, 0, 0, '0.0', '0.000', 0, 'tested_negative'),
(4, 'Muhammad Waseem', 0, 0, 0, 0, 0, '0.0', '0.000', 0, 'tested_negative'),
(4, 'Muhammad Waseem', 0, 0, 0, 0, 0, '0.0', '0.000', 0, 'tested_negative'),
(4, 'Muhammad Waseem', 0, 0, 0, 0, 0, '0.0', '0.000', 0, 'tested_negative'),
(4, 'Muhammad Waseem', 0, 0, 0, 0, 0, '0.0', '0.000', 0, 'tested_negative'),
(4, 'Muhammad Waseem', 0, 0, 0, 0, 0, '0.0', '0.000', 0, 'tested_negative'),
(4, 'Muhammad Waseem', 0, 0, 0, 0, 0, '0.0', '0.000', 0, 'tested_negative'),
(4, 'Muhammad Waseem', 0, 0, 0, 0, 0, '0.0', '0.000', 0, 'tested_negative'),
(4, 'Muhammad Waseem', 0, 0, 0, 0, 0, '0.0', '0.000', 0, 'tested_negative'),
(5, 'gulaly', 0, 0, 0, 0, 0, '0.0', '0.000', 0, 'tested_negative'),
(5, 'gulaly', 0, 0, 0, 0, 0, '0.0', '0.000', 0, 'tested_negative'),
(5, 'gulaly', 0, 0, 0, 0, 0, '0.0', '0.000', 0, 'tested_negative'),
(5, 'Katrina Kaif', 0, 0, 0, 0, 0, '0.0', '0.000', 0, 'tested_negative'),
(5, 'Katrina Kaif', 0, 0, 0, 0, 0, '0.0', '0.000', 0, 'tested_negative'),
(5, 'Katrina Kaif', 0, 0, 0, 0, 0, '0.0', '0.000', 0, 'tested_negative'),
(5, 'Katrina Kaif', 0, 0, 0, 0, 0, '0.0', '0.000', 0, 'tested_negative'),
(5, 'Katrina Kaif', 0, 0, 0, 0, 0, '0.0', '0.000', 0, 'tested_negative'),
(5, 'Katrina Kaif', 0, 0, 0, 0, 0, '0.0', '0.000', 0, 'tested_negative'),
(5, 'Katrina Kaif', 0, 0, 0, 0, 0, '0.0', '0.000', 0, 'tested_negative'),
(5, 'Katrina Kaif', 0, 0, 0, 0, 0, '0.0', '0.000', 0, 'tested_negative'),
(1, 'Muhammad Waseem', 0, 0, 0, 0, 0, '0.0', '0.000', 0, 'tested_negative'),
(1, 'Muhammad Waseem', 0, 0, 0, 0, 0, '0.0', '0.000', 0, 'tested_negative'),
(1, 'Muhammad Waseem', 0, 0, 0, 0, 0, '0.0', '0.000', 0, 'tested_negative'),
(1, 'Muhammad Waseem', 0, 0, 0, 0, 0, '0.0', '0.000', 0, 'tested_negative'),
(1, 'Muhammad Waseem', 0, 0, 0, 0, 0, '0.0', '0.000', 0, 'tested_negative'),
(1, 'Muhammad Waseem', 0, 0, 0, 0, 0, '0.0', '0.000', 0, 'tested_negative'),
(1, 'Muhammad Waseem', 0, 0, 0, 0, 0, '0.0', '0.000', 0, 'tested_negative'),
(1, 'Muhammad Waseem', 0, 0, 0, 0, 0, '0.0', '0.000', 0, 'tested_negative'),
(1, 'Muhammad Waseem', 0, 0, 0, 0, 0, '0.0', '0.000', 0, 'tested_negative'),
(1, 'Muhammad Waseem', 0, 0, 0, 0, 0, '0.0', '0.000', 0, 'tested_negative'),
(5, 'Katrina Kaif', 0, 0, 0, 0, 0, '0.0', '0.000', 0, 'tested_negative'),
(1, 'Muhammad Waseem', 0, 12, 21, 43, 899, '7.0', '88.000', 23, 'tested_negative'),
(1, 'Muhammad Waseem', 0, 2, 1, 32, 1, '3.0', '32.000', 0, 'tested_negative');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
