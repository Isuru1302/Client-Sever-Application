-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2018 at 04:06 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `networking`
--

-- --------------------------------------------------------

--
-- Table structure for table `distance_table`
--

CREATE TABLE `distance_table` (
  `cityID` int(11) NOT NULL,
  `City` varchar(256) NOT NULL,
  `Anuradhapura` int(20) NOT NULL,
  `Arugam Bay` int(20) NOT NULL,
  `Badulla` int(20) NOT NULL,
  `Batticaloa` int(20) NOT NULL,
  `Colombo` int(20) NOT NULL,
  `Dambulla` int(20) NOT NULL,
  `Ella` int(20) NOT NULL,
  `Galle` int(20) NOT NULL,
  `Habarana` int(20) NOT NULL,
  `Hikkaduwa` int(20) NOT NULL,
  `Jaffna` int(20) NOT NULL,
  `Kandy` int(20) NOT NULL,
  `Mirissa` int(20) NOT NULL,
  `Negombo` int(20) NOT NULL,
  `Nuwara Eliya` int(20) NOT NULL,
  `Polonnaruwa` int(20) NOT NULL,
  `Tangalle` int(20) NOT NULL,
  `Thissamaharama` int(20) NOT NULL,
  `Trincomalee` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `distance_table`
--

INSERT INTO `distance_table` (`cityID`, `City`, `Anuradhapura`, `Arugam Bay`, `Badulla`, `Batticaloa`, `Colombo`, `Dambulla`, `Ella`, `Galle`, `Habarana`, `Hikkaduwa`, `Jaffna`, `Kandy`, `Mirissa`, `Negombo`, `Nuwara Eliya`, `Polonnaruwa`, `Tangalle`, `Thissamaharama`, `Trincomalee`) VALUES
(1, 'Anuradhapura', 0, 311, 218, 194, 199, 69, 240, 301, 59, 292, 198, 134, 330, 172, 210, 101, 347, 317, 108),
(2, 'Arugam Bay', 311, 0, 126, 117, 338, 249, 134, 289, 247, 311, 479, 215, 260, 346, 189, 201, 221, 155, 248),
(3, 'Badulla', 218, 126, 0, 154, 223, 167, 22, 229, 176, 251, 399, 114, 199, 226, 52, 147, 161, 109, 255),
(4, 'Batticaloa', 194, 117, 154, 0, 318, 147, 177, 358, 137, 380, 359, 182, 329, 287, 192, 91, 290, 224, 131),
(5, 'Colombo', 199, 338, 223, 318, 0, 170, 196, 129, 176, 116, 395, 133, 150, 38, 160, 228, 194, 264, 265),
(6, 'Dambulla', 69, 249, 167, 147, 170, 0, 188, 277, 10, 268, 251, 89, 303, 144, 165, 57, 308, 268, 94),
(7, 'Ella', 240, 134, 22, 177, 196, 188, 0, 212, 198, 235, 421, 136, 183, 212, 55, 169, 144, 93, 277),
(8, 'Galle', 301, 289, 229, 358, 129, 277, 212, 0, 282, 21, 496, 222, 36, 158, 253, 329, 81, 151, 366),
(9, 'Habarana', 59, 247, 176, 137, 176, 10, 198, 282, 0, 275, 241, 96, 310, 152, 172, 46, 350, 279, 84),
(10, 'Hikkaduwa', 292, 311, 251, 380, 116, 268, 235, 21, 275, 0, 487, 213, 55, 149, 244, 320, 102, 172, 357),
(11, 'Jaffna', 198, 479, 399, 359, 395, 251, 421, 496, 241, 487, 0, 318, 522, 363, 394, 285, 539, 501, 228),
(12, 'Kandy', 134, 215, 114, 182, 133, 89, 136, 222, 96, 213, 318, 0, 247, 101, 77, 141, 245, 225, 178),
(13, 'Mirissa', 330, 260, 199, 329, 150, 303, 183, 36, 310, 55, 522, 247, 0, 183, 233, 354, 49, 119, 391),
(14, 'Negombo', 172, 346, 226, 287, 38, 144, 212, 158, 152, 149, 363, 101, 183, 0, 168, 196, 223, 230, 234),
(15, 'Nuwara Eliya', 210, 189, 52, 192, 160, 165, 55, 253, 172, 244, 394, 77, 233, 168, 0, 185, 194, 143, 254),
(16, 'Polonnaruwa', 101, 201, 147, 91, 228, 57, 169, 329, 46, 320, 285, 141, 354, 196, 185, 0, 319, 244, 118),
(17, 'Tangalle', 347, 221, 161, 290, 194, 308, 144, 81, 350, 102, 539, 245, 49, 223, 194, 319, 0, 70, 398),
(18, 'Thissamaharama', 317, 155, 109, 224, 264, 268, 93, 151, 279, 172, 501, 225, 119, 230, 143, 244, 70, 0, 332),
(19, 'Trincomalee', 108, 248, 255, 131, 265, 94, 277, 366, 84, 357, 228, 178, 391, 234, 254, 118, 398, 332, 0);

-- --------------------------------------------------------

--
-- Table structure for table `path_table`
--

CREATE TABLE `path_table` (
  `cityID` int(11) NOT NULL,
  `City` varchar(256) NOT NULL,
  `Anuradhapura` varchar(256) NOT NULL,
  `Arugam Bay` varchar(256) NOT NULL,
  `Badulla` varchar(256) NOT NULL,
  `Batticaloa` varchar(256) NOT NULL,
  `Colombo` varchar(256) NOT NULL,
  `Dambulla` varchar(256) NOT NULL,
  `Ella` varchar(256) NOT NULL,
  `Galle` varchar(256) NOT NULL,
  `Habarana` varchar(256) NOT NULL,
  `Hikkaduwa` varchar(256) NOT NULL,
  `Jaffna` varchar(256) NOT NULL,
  `Kandy` varchar(256) NOT NULL,
  `Mirissa` varchar(256) NOT NULL,
  `Negombo` varchar(256) NOT NULL,
  `Nuwara Eliya` varchar(256) NOT NULL,
  `Polonnaruwa` varchar(256) NOT NULL,
  `Tangalle` varchar(256) NOT NULL,
  `Thissamaharama` varchar(256) NOT NULL,
  `Trincomalee` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `path_table`
--

INSERT INTO `path_table` (`cityID`, `City`, `Anuradhapura`, `Arugam Bay`, `Badulla`, `Batticaloa`, `Colombo`, `Dambulla`, `Ella`, `Galle`, `Habarana`, `Hikkaduwa`, `Jaffna`, `Kandy`, `Mirissa`, `Negombo`, `Nuwara Eliya`, `Polonnaruwa`, `Tangalle`, `Thissamaharama`, `Trincomalee`) VALUES
(1, 'Anuradhapura', '--', 'Colombo - Batticaloa Hwy/Colombo -Ratnapura - Wellawaya - Batticaloa/A4', 'Kandy Rd/Kandy-Jaffna Hwy/A9', 'A11', 'A28', 'Kandy Rd/Kandy-Jaffna Hwy/A9', 'Kandy Rd/Kandy-Jaffna Hwy/A9', 'Southern Expy/E01', 'Kandy Rd/Kandy-Jaffna Hwy/A9 and A11', 'Southern Expy/E01', 'Kandy Rd/Kandy-Jaffna Hwy/A9', 'A28', 'Southern Expy/E01', 'A28', 'Kandy Rd/Kandy-Jaffna Hwy/A9', 'A11', 'Southern Expy/E01', 'Kandy Rd/Kandy-Jaffna Hwy/A9', 'Puttalam - Anuradhapura - Trincomalee Hwy/A12'),
(2, 'Arugam Bay', 'Colombo - Batticaloa Hwy/Colombo - Ratnapura - Wellawaya - Batticaloa/A4', '--', 'Batticaloa Hwy/Colombo - Ratnapura - Wellawaya - Batticaloa/A4', 'Batticaloa Hwy/Colombo - Ratnapura - Wellawaya - Batticaloa/A4', 'Colombo - Batticaloa Hwy/Colombo - Ratnapura - Wellawaya - Batticaloa/A4', 'Ampara-Uhana-Maha Oya Hwy/A27', 'Colombo - Batticaloa Hwy/Colombo - Ratnapura - Wellawaya - Batticaloa/A4 and Ella - Passara Rd/B113', 'Colombo - Batticaloa Hwy/Colombo - Ratnapura - Wellawaya - Batticaloa/A4 and Colombo - Galle - Hambantota - Wellawaya ', 'Colombo - Batticaloa Hwy/Colombo - Ratnapura - Wellawaya - Batticaloa/A4', 'Colombo - Batticaloa Hwy/Colombo - Ratnapura - Wellawaya - Batticaloa/A4 and Tiruwanaketiya-Agalawatte Rd/B421', 'Colombo - Batticaloa Hwy/Colombo - Ratnapura - Wellawaya - Batticaloa/A4', 'Colombo - Batticaloa Hwy/Colombo - Ratnapura - Wellawaya - Batticaloa/A4 and Mahaweli Raja Mawatha/B492', 'Colombo - Batticaloa Hwy/Colombo - Ratnapura - Wellawaya - Batticaloa/A4 and Colombo - Galle - Hambantota - Wellawaya Rd', 'Colombo - Batticaloa Hwy/Colombo - Ratnapura - Wellawaya - Batticaloa/A4', 'Colombo - Batticaloa Hwy/Colombo - Ratnapura - Wellawaya - Batticaloa/A4', 'Colombo - Batticaloa Hwy/Colombo - Ratnapura - Wellawaya - Batticaloa/A4 and Maradankadawala-Habarana-Thirukkondaiadimadu Hwy/A11', 'Colombo - Batticaloa Hwy/Colombo - Ratnapura - Wellawaya - Batticaloa/A4', 'Colombo - Batticaloa Hwy/Colombo - Ratnapura - Wellawaya - Batticaloa/A4 and Kataragama Rd/B35', 'Colombo - Batticaloa Hwy/Colombo - Ratnapura - Wellawaya - Batticaloa/A4 and Trincomalee Hwy/A15'),
(3, 'Badulla', 'Mahiyangana Rd/B36', 'Passara-Moneragala Hwy/A22 and Colombo - Batticaloa Hwy/Colombo - Ratnapura - Wellawaya - Batticaloa/A4', '--', 'A5', 'Mahaweli Raja Mawatha/B492', 'Mahiyangana Rd/B36', 'new and Bandarawela - Badulla Rd/Beragala-Hali Ela Highway/A16', 'A16', 'Mahiyangana Rd/B36', 'Colombo - Batticaloa Hwy/Colombo - Ratnapura - Wellawaya - Batticaloa/A4 and Tiruwanaketiya-Agalawatte Rd/B421', 'Kandy Rd/Kandy-Jaffna Hwy/A9', 'Mahiyangana Rd/B36 and Mahaweli Raja Mawatha/B492', 'Colombo - Galle - Hambantota - Wellawaya Rd', 'Mahaweli Raja Mawatha/B492', 'Peradeniya-Badulla-Chenkaladi Highway', 'Mahiyangane-Dimbulagala-Dalukkane Hwy/AB44', 'Colombo - Galle - Hambantota - Wellawaya Rd', 'Wellawaya-Ella-Kumbalwela Hwy/A23 and Colombo - Galle - Hambantota - Wellawaya Rd/A2', 'Ambepussa - Kurunegala - Trincomalee Hwy/Ambepussa - Trincomalee Hwy/Kandy Rd'),
(4, 'Batticaloa', 'Maradankadawala-Habarana-Thirukkondaiadimadu Hwy/A11 and A11', 'Colombo - Batticaloa Hwy/Colombo - Ratnapura - Wellawaya - Batticaloa/A4', 'A5', '--', 'Maradankadawala-Habarana-Thirukkondaiadimadu Hwy/A11 and A11', 'Maradankadawala-Habarana-Thirukkondaiadimadu Hwy/A11 and A11', 'A5', 'Colombo - Batticaloa Hwy/Colombo - Ratnapura - Wellawaya - Batticaloa/A4', 'Maradankadawala-Habarana-Thirukkondaiadimadu Hwy/A11 and A11', 'A5', 'Trincomalee Hwy/A15', '4 h 32 min\r\n182 km\r\nA5 and Kandy-Mahiyangane-Padiyatalawa Hwy/A26', 'A5', 'Maradankadawala-Habarana-Thirukkondaiadimadu Hwy/A11', 'A5', 'Maradankadawala-Habarana-Thirukkondaiadimadu Hwy/A11', 'A5', 'A5', 'Trincomalee Hwy/A15'),
(5, 'Colombo', 'Galgamuwa Rd/B19', 'Southern Expy/E01', 'Mahaweli Raja Mawatha/B492', 'Ambepussa - Kurunegala - Trincomalee Hwy/Ambepussa - Trincomalee Hwy/Colombo Rd/Kandy Rd and A11', '--', 'Colombo - Kandy Rd/Kandy Rd/A1 and Ambepussa - Kurunegala - Trincomalee Hwy/Ambepussa - Trincomalee Hwy/Colombo Rd/Kandy Rd', 'Colombo - Batticaloa Hwy/Colombo - Ratnapura - Wellawaya - Batticaloa/A4', 'Southern Expy/E01', 'Colombo - Kandy Rd/Kandy Rd/A1 and Ambepussa - Kurunegala - Trincomalee Hwy/Ambepussa - Trincomalee Hwy/Colombo Rd/Kandy Rd', 'Southern Expy/E01', 'Galgamuwa Rd/B19 and Kandy Rd/Kandy-Jaffna Hwy/A9', 'Colombo - Katunayake Expy/E03 and Colombo - Kandy Rd/A1', 'Southern Expy/E01', 'Colombo - Katunayake Expy/E03', 'Ginigathhena Rd', 'Colombo - Kandy Rd/Kandy Rd/A1 and Ambepussa - Kurunegala - Trincomalee Hwy/Ambepussa - Trincomalee Hwy/Colombo Rd/Kandy Rd', 'Southern Expy/E01', 'Panadura-Nambapana-Ratnapura Hwy/PNR Hwy/Ratnapura - Horana - Panadura Hwy/A8', 'Ambepussa - Kurunegala - Trincomalee Hwy/Ambepussa - Trincomalee Hwy/Colombo Rd/Kandy Rd and Ambepussa - Kurunegala - Trincomalee Hwy/Ambepussa - Trincomalee Hwy/Kandy Rd'),
(6, 'Dambulla', 'Kandy-Jaffna Hwy/A9 and Kandy Rd/Kandy-Jaffna Hwy/A9', 'Colombo - Batticaloa Hwy/Colombo - Ratnapura - Wellawaya - Batticaloa/A4', 'Mahiyangana Rd/B36', 'A11', 'Ambepussa - Kurunegala - Trincomalee Hwy/Ambepussa - Trincomalee Hwy/Colombo Rd/Kandy Rd', '--', 'Mahiyangana Rd/B36', 'Ambepussa - Kurunegala - Trincomalee Hwy/Ambepussa - Trincomalee Hwy/Colombo Rd/Kandy Rd and Southern Expy/E01', 'Ambepussa - Kurunegala - Trincomalee Hwy/Ambepussa - Trincomalee Hwy/Kandy Rd', 'Ambepussa - Kurunegala - Trincomalee Hwy/Ambepussa - Trincomalee Hwy/Colombo Rd/Kandy Rd and Southern Expy/E01', 'Kandy Rd/Kandy-Jaffna Hwy/A9', 'Wattegama - Matale Rd/B462 and Kandy Rd/Kandy-Jaffna Hwy/A9', 'Ambepussa - Kurunegala - Trincomalee Hwy/Ambepussa - Trincomalee Hwy/Colombo Rd/Kandy Rd and Southern Expy/E01', 'Ambepussa - Kurunegala - Trincomalee Hwy/Ambepussa - Trincomalee Hwy/Colombo Rd/Kandy Rd and B322', 'Kandy Rd/Kandy-Jaffna Hwy/A9 and B143', 'Ambepussa - Kurunegala - Trincomalee Hwy/Ambepussa - Trincomalee Hwy/Kandy Rd and A11', 'Colombo - Galle - Hambantota - Wellawaya Rd', 'Kataragama Rd/B35', 'Ambepussa - Kurunegala - Trincomalee Hwy/Ambepussa - Trincomalee Hwy/Kandy Rd'),
(7, 'Ella', 'Mahiyangana Rd/B36', 'Colombo - Batticaloa Hwy/Colombo - Ratnapura - Wellawaya - Batticaloa/A4', 'Bandarawela - Badulla Rd/Beragala-Hali Ela Highway/A16 and Bandarawela - Badulla Rd/Peradeniya-Badulla-Chenkaladi Highway', 'A5', 'Colombo - Batticaloa Hwy/Colombo - Ratnapura - Wellawaya - Batticaloa/A4', 'Mahiyangana Rd/B36', '--', 'Colombo - Batticaloa Hwy/Colombo - Ratnapura - Wellawaya - Batticaloa/A4 and Tiruwanaketiya-Agalawatte Rd/B421', 'Mahiyangana Rd/B36', 'Colombo - Batticaloa Hwy/Colombo - Ratnapura - Wellawaya - Batticaloa/A4 and Tiruwanaketiya-Agalawatte Rd/B421', 'Colombo - Batticaloa Hwy/Colombo - Ratnapura - Wellawaya - Batticaloa/A4', 'Mahiyangana Rd/B36 and Mahaweli Raja Mawatha/B492', 'Colombo - Galle - Hambantota - Wellawaya Rd', 'Colombo - Batticaloa Hwy/Colombo - Ratnapura - Wellawaya - Batticaloa/A4', 'B44', 'Mahiyangane-Dimbulagala-Dalukkane Hwy/AB44', 'Colombo - Galle - Hambantota - Wellawaya Rd', 'Wellawaya-Ella-Kumbalwela Hwy/A23 and Colombo - Galle - Hambantota - Wellawaya Rd/A2', 'Ambepussa - Kurunegala - Trincomalee Hwy/Ambepussa - Trincomalee Hwy/Kandy Rd'),
(8, 'Galle', 'Southern Expy/E01', 'Colombo - Galle - Hambantota - Wellawaya Rd and Colombo - Batticaloa Hwy/Colombo - Ratnapura - Wellawaya - Batticaloa/A4', 'Colombo - Galle - Hambantota - Wellawaya Rd/A2 and Colombo - Galle - Hambantota - Wellawaya Rd', 'A5', 'Southern Expy/E01', 'Southern Expy/E01', 'Colombo - Galle - Hambantota - Wellawaya Rd', '--', 'Southern Expy/E01', 'Colombo Rd/Colombo - Galle - Hambantota - Wellawaya Rd/Colombo - Galle Main Rd/Galle Rd/A2', 'Colombo - Galle - Hambantota - Wellawaya Rd and Kandy Rd/Kandy-Jaffna Hwy/A9', 'Southern Expy/E01', 'Colombo - Galle - Hambantota - Wellawaya Rd/Matara Rd/A2', 'Southern Expy/E01 and Outer Circular Expy/E02', 'Southern Expy/E01 and Ginigathhena Rd', 'Mahiyangane-Dimbulagala-Dalukkane Hwy/AB44', 'Southern Expy and Colombo - Galle - Hambantota - Wellawaya Rd/A2', 'Colombo - Galle - Hambantota - Wellawaya Rd/A2', 'Southern Expy/E01 and Ambepussa - Kurunegala - Trincomalee Hwy/Ambepussa - Trincomalee Hwy/Kandy Rd'),
(9, 'Habarana', 'A11 and Kandy Rd/Kandy-Jaffna Hwy/A9', 'Colombo - Batticaloa Hwy/Colombo - Ratnapura - Wellawaya - Batticaloa/A4', 'Mahiyangana Rd/B36', 'A11', ' Ambepussa - Kurunegala - Trincomalee Hwy/Ambepussa - Trincomalee Hwy/Colombo Rd/Kandy Rd', 'Ambepussa - Kurunegala - Trincomalee Hwy/Ambepussa - Trincomalee Hwy/Kandy Rd', 'Mahiyangana Rd/B36', 'Southern Expy/E01', '--', 'Southern Expy/E01', 'Kandy Rd/Kandy-Jaffna Hwy/A9', 'Kandy Rd/Kandy-Jaffna Hwy/A9', 'Southern Expy/E01', 'Ambepussa - Kurunegala - Trincomalee Hwy/Ambepussa - Trincomalee Hwy/Colombo Rd/Kandy Rd', 'Dambulla - Bakamuna - Kalugahawela Road/B615', 'A11', 'Southern Expy/E01', 'Kataragama Rd/B35', 'Ambepussa - Kurunegala - Trincomalee Hwy/Ambepussa - Trincomalee Hwy/Kandy Rd'),
(10, 'Hikkaduwa', 'Southern Expy/E01', 'Colombo - Batticaloa Hwy/Colombo - Ratnapura - Wellawaya - Batticaloa/A4', 'Southern Expy', 'A11', 'Southern Expy/E01', 'Southern Expy/E01', 'Southern Expy and Colombo - Galle - Hambantota - Wellawaya Rd', 'Colombo Rd/Colombo - Galle - Hambantota - Wellawaya Rd/Colombo - Galle Main Rd/Galle Rd/A2', 'Southern Expy/E01', '--', 'Kandy Rd/Kandy-Jaffna Hwy/A9', 'Southern Expy/E01 and Colombo - Kandy Rd/A1', 'Southern Expy', 'Southern Expy/E01', 'Southern Expy/E01', 'Mahiyangane-Dimbulagala-Dalukkane Hwy/AB44', 'Southern Expy and Colombo - Galle - Hambantota - Wellawaya Rd/A2', 'Southern Expy', 'Ambepussa - Kurunegala - Trincomalee Hwy/Ambepussa - Trincomalee Hwy/Kandy Rd'),
(11, 'Jaffna', '3 h 49 min\r\n201 km\r\nKandy Rd/Kandy - Jaffna Hwy/A9 and Kandy Rd/Kandy-Jaffna Hwy/A9', 'Colombo - Batticaloa Hwy/Colombo - Ratnapura - Wellawaya - Batticaloa/A4', 'Kandy Rd/Kandy-Jaffna Hwy/A9', 'Trincomalee Hwy/A15', 'Kandy Rd/Kandy - Jaffna Hwy/A9', 'Kandy Rd/Kandy - Jaffna Hwy/A9 and Kandy Rd/Kandy-Jaffna Hwy/A9', 'Kandy Rd/Kandy-Jaffna Hwy/A9', 'Southern Expy/E01', 'Kandy Rd/Kandy - Jaffna Hwy/A9 and Kandy Rd/Kandy-Jaffna Hwy/A9', 'Southern Expy/E01', '--', 'Kandy Rd/Kandy-Jaffna Hwy/A9', 'Southern Expy/E01', 'Kandy Rd/Kandy - Jaffna Hwy/A9', 'Kandy Rd/Kandy-Jaffna Hwy/A9', 'Kandy Rd/Kandy - Jaffna Hwy/A9 and Kandy Rd/Kandy-Jaffna Hwy/A9', 'Southern Expy/E01', 'Kandy Rd/Kandy-Jaffna Hwy/A9', 'Kandy Rd/Kandy - Jaffna Hwy/A9'),
(12, 'Kandy', 'A28', 'Mahaweli Raja Mawatha/B492 and Colombo - Batticaloa Hwy/Colombo - Ratnapura - Wellawaya - Batticaloa/A4', 'Mahaweli Raja Mawatha/B492 and Mahiyangana Rd/B36', 'Mahaweli Raja Mawatha/B492 and A5', 'Colombo - Kandy Rd/A1', 'Katugastota-Kurunegala-Puttalam Hwy/KKP Hwy/A10 and Ambepussa - Kurunegala - Trincomalee Hwy/Ambepussa - Trincomalee Hwy/Colombo Rd/Kandy Rd', 'Mahaweli Raja Mawatha/B492 and Mahiyangana Rd/B36', 'Colombo - Kandy Rd/Kandy Rd/A1 and Southern Expy/E01', 'Ambepussa - Kurunegala - Trincomalee Hwy/Ambepussa - Trincomalee Hwy/Colombo Rd/Kandy Rd', 'Colombo - Kandy Rd/Kandy Rd/A1 and Southern Expy/E01', 'Kandy Rd/Kandy-Jaffna Hwy/A9', '--', 'Southern Expy/E01', 'Colombo - Kandy Rd/A1', 'B143', 'Ambepussa - Kurunegala - Trincomalee Hwy/Ambepussa - Trincomalee Hwy/Colombo Rd/Kandy Rd and A11', 'Southern Expy/E01', 'Colombo - Galle - Hambantota - Wellawaya Rd/A2', 'Ambepussa - Kurunegala - Trincomalee Hwy/Ambepussa - Trincomalee Hwy/Kandy Rd'),
(13, 'Mirissa', 'Southern Expy/E01', 'Colombo - Batticaloa Hwy/Colombo - Ratnapura - Wellawaya - Batticaloa/A4', 'Colombo - Galle - Hambantota - Wellawaya Rd', 'A5', 'Southern Expy/E01', 'Southern Expy/E01', 'Colombo - Galle - Hambantota - Wellawaya Rd', 'Southern Expy', 'Southern Expy/E01', 'Southern Expy', 'Kandy Rd/Kandy-Jaffna Hwy/A9', 'Southern Expy/E01 and Colombo - Kandy Rd/A1', '--', 'Southern Expy/E01', 'Colombo - Galle - Hambantota - Wellawaya Rd/A2', 'Southern Expy/E01', 'Colombo - Galle - Hambantota - Wellawaya Rd/A2', 'Colombo - Galle - Hambantota - Wellawaya Rd/A2 and Colombo - Galle - Hambantota - Wellawaya Hwy/A2', 'Southern Expy/E01 and Ambepussa - Kurunegala - Trincomalee Hwy/Ambepussa - Trincomalee Hwy/Kandy Rd'),
(14, 'Negombo', 'A28', 'Colombo - Batticaloa Hwy/Colombo - Ratnapura - Wellawaya - Batticaloa/A4', 'Mahaweli Raja Mawatha/B492', 'A11', 'Colombo - Katunayake Expy/E03', 'B322 and Ambepussa - Kurunegala - Trincomalee Hwy/Ambepussa - Trincomalee Hwy/Colombo Rd/Kandy Rd', 'Colombo - Batticaloa Hwy/Colombo - Ratnapura - Wellawaya - Batticaloa/A4', 'Southern Expy/E01', 'Ambepussa - Kurunegala - Trincomalee Hwy/Ambepussa - Trincomalee Hwy/Colombo Rd/Kandy Rd', 'Southern Expy/E01', 'Kandy Rd/Kandy-Jaffna Hwy/A9', 'Colombo - Kandy Rd/A1', 'Southern Expy/E01', '--', 'Ginigathhena Rd', 'Ambepussa - Kurunegala - Trincomalee Hwy/Ambepussa - Trincomalee Hwy/Colombo Rd/Kandy Rd', 'Southern Expy/E01', 'Southern Expy/E01', 'Ambepussa - Kurunegala - Trincomalee Hwy/Ambepussa - Trincomalee Hwy/Kandy Rd'),
(15, 'Nuwara Eliya', 'Kandy Rd/Kandy-Jaffna Hwy/A9', 'Colombo - Batticaloa Hwy/Colombo - Ratnapura - Wellawaya - Batticaloa/A4', 'Peradeniya-Badulla-Chenkaladi Highway', 'A5', 'Ginigathhena Rd', 'B143 and Kandy Rd/Kandy-Jaffna Hwy/A9', 'Peradeniya-Badulla-Chenkaladi Highway', 'Southern Expy/E01', 'Dambulla - Bakamuna - Kalugahawela Road/B615', 'Southern Expy/E01', 'Kandy Rd/Kandy-Jaffna Hwy/A9', 'B143', 'Colombo - Galle - Hambantota - Wellawaya Rd', 'Ginigathhena Rd', '--', 'Mahiyangane-Dimbulagala-Dalukkane Hwy/AB44', 'Colombo - Galle - Hambantota - Wellawaya Rd', 'Colombo - Galle - Hambantota - Wellawaya Rd/A2', 'Ambepussa - Kurunegala - Trincomalee Hwy/Ambepussa - Trincomalee Hwy/Kandy Rd'),
(16, 'Polonnaruwa', 'A11', 'Maradankadawala-Habarana-Thirukkondaiadimadu Hwy/A11 and Colombo - Batticaloa Hwy/Colombo - Ratnapura - Wellawaya - Batticaloa/A4', 'Mahiyangane-Dimbulagala-Dalukkane Hwy/AB44 and Mahiyangana Rd/B36', 'Maradankadawala-Habarana-Thirukkondaiadimadu Hwy/A11', 'Ambepussa - Kurunegala - Trincomalee Hwy/Ambepussa - Trincomalee Hwy/Colombo Rd/Kandy Rd', 'A11 and Ambepussa - Kurunegala - Trincomalee Hwy/Ambepussa - Trincomalee Hwy/Kandy Rd', 'Mahiyangane-Dimbulagala-Dalukkane Hwy/AB44', 'Southern Expy/E01', 'A11', 'Southern Expy/E01', 'Kandy Rd/Kandy-Jaffna Hwy/A9', 'A11 and Kandy Rd/Kandy-Jaffna Hwy/A9', 'Southern Expy/E01', 'A11 and Kandy Rd/Kandy-Jaffna Hwy/A9', 'Mahiyangane-Dimbulagala-Dalukkane Hwy/AB44', '--', 'Mahiyangane-Dimbulagala-Dalukkane Hwy/AB44', 'Mahiyangane-Dimbulagala-Dalukkane Hwy/AB44', 'Ambepussa - Kurunegala - Trincomalee Hwy/Ambepussa - Trincomalee Hwy/Kandy Rd'),
(17, 'Tangalle', 'Southern Expy/E01', 'Colombo - Batticaloa Hwy/Colombo - Ratnapura - Wellawaya - Batticaloa/A4', 'Colombo - Galle - Hambantota - Wellawaya Rd', 'A5', 'Southern Expy/E01', 'Southern Expy/E01', 'Colombo - Galle - Hambantota - Wellawaya Rd', 'Colombo - Galle - Hambantota - Wellawaya Hwy/A2 and Southern Expy', 'Southern Expy/E01', 'Colombo - Galle - Hambantota - Wellawaya Hwy/A2 and Southern Expy', 'Southern Expy/E01', 'Southern Expy/E01 and Colombo - Kandy Rd/A1', 'Colombo - Galle - Hambantota - Wellawaya Hwy/A2', 'Southern Expy/E01', 'Colombo - Galle - Hambantota - Wellawaya Rd', 'Mahiyangane-Dimbulagala-Dalukkane Hwy/AB44', '--', 'Colombo - Galle - Hambantota - Wellawaya Hwy/A2 and Tissamaharam Rd', 'Southern Expy/E01'),
(18, 'Thissamaharama', 'Kataragama Rd/B35', 'Kataragama Rd/B35 and Colombo - Batticaloa Hwy/Colombo - Ratnapura - Wellawaya - Batticaloa/A4', 'Colombo - Galle - Hambantota - Wellawaya Hwy/A2', 'A5', 'Colombo - Galle - Hambantota - Wellawaya Hwy/A2 and Southern Expy/E01', 'Kataragama Rd/B35', 'Colombo - Galle - Hambantota - Wellawaya Hwy/A2 and Wellawaya-Ella-Kumbalwela Hwy/A23', 'Colombo - Galle - Hambantota - Wellawaya Hwy/A2', 'Kataragama Rd/B35', 'Colombo - Galle - Hambantota - Wellawaya Hwy/A2 and Southern Expy', 'Kandy Rd/Kandy-Jaffna Hwy/A9', 'Mahaweli Raja Mawatha/B492', 'Colombo - Galle - Hambantota - Wellawaya Hwy/A2', 'Southern Expy/E01', 'Colombo - Galle - Hambantota - Wellawaya Hwy/A2', 'Mahiyangane-Dimbulagala-Dalukkane Hwy/AB44', 'Tissamaharam Rd and Colombo - Galle - Hambantota - Wellawaya Hwy/A2', '--', 'Ambepussa - Kurunegala - Trincomalee Hwy/Ambepussa - Trincomalee Hwy/Kandy Rd'),
(19, 'Trincomalee', 'Puttalam - Anuradhapura - Trincomalee Hwy/A12', 'Trincomalee Hwy/A15 and Colombo - Batticaloa Hwy/Colombo - Ratnapura - Wellawaya - Batticaloa/A4', 'Ambepussa - Kurunegala - Trincomalee Hwy/Ambepussa - Trincomalee Hwy/Kandy Rd', 'Trincomalee Hwy/A15', 'Ambepussa - Kurunegala - Trincomalee Hwy/Ambepussa - Trincomalee Hwy/Kandy Rd', 'Ambepussa - Kurunegala - Trincomalee Hwy/Ambepussa - Trincomalee Hwy/Kandy Rd', 'Ambepussa - Kurunegala - Trincomalee Hwy/Ambepussa - Trincomalee Hwy/Kandy Rd', 'Ambepussa - Kurunegala - Trincomalee Hwy/Ambepussa - Trincomalee Hwy/Kandy Rd and Southern Expy/E01', 'Ambepussa - Kurunegala - Trincomalee Hwy/Ambepussa - Trincomalee Hwy/Kandy Rd', 'Ambepussa - Kurunegala - Trincomalee Hwy/Ambepussa - Trincomalee Hwy/Kandy Rd', 'Kandy Rd/Kandy-Jaffna Hwy/A9', 'Ambepussa - Kurunegala - Trincomalee Hwy/Ambepussa - Trincomalee Hwy/Kandy Rd and Kandy Rd/Kandy-Jaffna Hwy/A9', 'Ambepussa - Kurunegala - Trincomalee Hwy/Ambepussa - Trincomalee Hwy/Kandy Rd and Southern Expy/E01', 'Ambepussa - Kurunegala - Trincomalee Hwy/Ambepussa - Trincomalee Hwy/Kandy Rd', 'Ambepussa - Kurunegala - Trincomalee Hwy/Ambepussa - Trincomalee Hwy/Kandy Rd', 'Ambepussa - Kurunegala - Trincomalee Hwy/Ambepussa - Trincomalee Hwy/Kandy Rd', 'Southern Expy/E01', 'Ambepussa - Kurunegala - Trincomalee Hwy/Ambepussa - Trincomalee Hwy/Kandy Rd', '--');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `distance_table`
--
ALTER TABLE `distance_table`
  ADD PRIMARY KEY (`cityID`);

--
-- Indexes for table `path_table`
--
ALTER TABLE `path_table`
  ADD PRIMARY KEY (`cityID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `distance_table`
--
ALTER TABLE `distance_table`
  MODIFY `cityID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `path_table`
--
ALTER TABLE `path_table`
  MODIFY `cityID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
