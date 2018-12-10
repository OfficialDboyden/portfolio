-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 08, 2018 at 05:43 AM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portfolio`
--
CREATE DATABASE IF NOT EXISTS `portfolio` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `portfolio`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_work`
--

DROP TABLE IF EXISTS `tbl_work`;
CREATE TABLE IF NOT EXISTS `tbl_work` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `source` varchar(20) NOT NULL,
  `caption` text NOT NULL,
  `Title` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_work`
--

INSERT INTO `tbl_work` (`id`, `source`, `caption`, `Title`) VALUES
(1, 'img1_mobl.jpg', 'Given various screenshots of a completed Cinema 4D scene. We were required to replicate the scenes 3D models, lighting and texturing to the best of our ability. Once the scene is completed in Cinema, we render out style frames to show how a full video advertising the product would be produced.', 'Makeup Design'),
(2, 'img2_mobl.jpg', 'We were challenged to create our own unique design and functionality for a thermal bottle with detachable infuser pod. We developed each stage of this product, from concept to finished 3D model.', 'Infuser Bottle'),
(3, 'img3_mobl.jpg', 'This assignment required pairing up with a fellow classmate to discuss and create a brand and marketing strategy centered around organ donation, as well as a presentation to pitch to the class. One of my roles in this assignment was to create a final logo that fit our brand and marketing strategy which came out to be a organization that allows you to donate organs and in return have a tree planted in your honor.', 'Organ Donation Logo'),
(4, 'img4_mobl.jpg', 'This was a first year midterm assignment that required us to create a styled website with one css animation, for a company or organization that we created.', 'Website'),
(5, 'img5_mobl.jpg', 'This was a midterm hackathon that required you to pair into a group of 5 students each with a designated role that was either 1 of the two web developers, a 3d designer, a project manager, or a visual effects editor. My role was 3D designer which required me to style, model, texture, light and render a fully functioning thermostat in which our website was centered around selling.', 'Thermosercure Hackathon'),
(6, 'img6_mobl.jpg', 'This assignment challenged us to create a wine that fit our randomly chosen brand.\r\n', 'Mashup Assignment');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
