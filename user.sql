-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 29, 2016 at 04:50 AM
-- Server version: 5.1.41
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `login`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `Name` varchar(255) NOT NULL,
  `Id` varchar (15) NOT NULL,
  `Address` text NOT NULL, 
  `Photo` longblob NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`Name`, `ID`, `Address`, `Photo`) Values
('Fuad', '1130fu3040', 'Mirpur', 'D:\Java_Netbeans\VotingSystem\Images\WIN_30_51_Pro.jpg'),
('Rupom', '1130ru3112', 'Borishal', 'D:\Java_Netbeans\VotingSystem\Images\WIN_30_52_Pro.jpg'),
('Mokbul', '14303mo006', 'Uttara', 'D:\Java_Netbeans\VotingSystem\Images\WIN_30_53_Pro.jpg'),
('Prottoy', '1202pr0345', 'Uttara','D:\Java_Netbeans\VotingSystem\Images\WIN_30_54_Pro.jpg'),
('Bashar', '1231ba0124', 'Kawlar','D:\Java_Netbeans\VotingSystem\Images\WIN_30_55_Pro.jpg');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
