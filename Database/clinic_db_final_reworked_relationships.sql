-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 26, 2017 at 07:37 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `clinic`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `notes` varchar(200) DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `doctor_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `notes`, `date_time`, `doctor_id`, `patient_id`) VALUES
(1, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravid', '2017-05-03 00:35:21', 12, 90),
(2, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien,', '2016-10-24 12:06:17', 44, 3),
(3, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', '2017-03-19 03:33:02', 72, 16),
(4, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis', '2016-12-11 03:58:39', 84, 58),
(5, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', '2017-04-19 23:08:24', 13, 76),
(6, 'Lorem ipsum', '2016-10-22 23:42:10', 12, 58),
(7, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravid', '2017-04-18 21:41:19', 86, 93),
(8, 'Lorem ipsum dolor sit', '2017-04-02 15:34:35', 96, 49),
(9, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravid', '2016-08-09 18:19:35', 92, 68),
(10, 'Lorem ipsum dolor sit amet, consectetuer adipiscing', '2016-05-26 18:55:40', 15, 5),
(11, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper.', '2016-12-15 14:04:50', 82, 83),
(12, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer', '2017-02-07 04:16:50', 6, 65),
(13, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravid', '2016-06-01 16:07:34', 38, 22),
(14, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus.', '2017-05-17 11:18:27', 48, 1),
(15, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravid', '2016-06-09 19:46:26', 54, 61),
(16, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque', '2017-01-22 12:09:13', 23, 78),
(17, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque', '2016-10-25 06:10:37', 56, 42),
(18, 'Lorem ipsum dolor sit amet, consectetuer', '2016-09-24 04:04:29', 72, 67),
(19, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravid', '2017-02-16 15:29:33', 1, 71),
(20, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', '2017-01-20 02:10:14', 70, 61),
(21, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravid', '2016-12-24 04:03:05', 9, 9),
(22, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravid', '2016-08-08 14:43:07', 72, 48),
(23, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravid', '2017-01-17 11:36:38', 49, 55),
(24, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravid', '2016-07-27 06:55:32', 60, 42),
(25, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing', '2016-11-28 21:02:02', 82, 77),
(26, 'Lorem ipsum', '2017-05-04 21:22:45', 5, 5),
(27, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu', '2017-03-29 00:10:38', 85, 96),
(28, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus', '2016-06-13 21:26:01', 91, 50),
(29, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravid', '2016-12-02 04:06:03', 57, 75),
(30, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet', '2016-06-15 04:35:24', 80, 11),
(31, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravid', '2017-03-23 11:38:57', 60, 9),
(32, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravid', '2016-11-14 03:31:15', 35, 52),
(33, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper.', '2017-04-23 09:26:43', 87, 25),
(34, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravid', '2016-10-03 01:13:52', 22, 65),
(35, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec', '2017-03-17 07:59:11', 24, 91),
(36, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravid', '2016-07-28 22:43:42', 41, 82),
(37, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravid', '2016-11-22 13:47:09', 9, 36),
(38, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et', '2016-12-12 10:45:16', 15, 64),
(39, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', '2016-12-04 07:30:23', 22, 9),
(40, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravid', '2016-12-06 05:04:45', 79, 45),
(41, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravid', '2016-07-02 09:53:22', 15, 2),
(42, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis', '2017-04-28 18:04:54', 63, 99),
(43, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', '2017-04-17 19:56:23', 82, 29),
(44, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravid', '2016-10-18 04:29:59', 75, 19),
(45, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravid', '2016-11-20 18:20:14', 85, 92),
(46, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravid', '2017-01-27 08:43:35', 76, 64),
(47, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravid', '2017-05-10 10:48:15', 39, 70),
(48, 'Lorem ipsum dolor sit amet, consectetuer adipiscing', '2017-02-01 11:29:39', 71, 43),
(49, 'Lorem', '2016-06-17 19:21:42', 9, 21),
(50, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at', '2016-09-21 13:39:44', 6, 26),
(51, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravid', '2017-02-03 03:13:37', 28, 2),
(52, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing', '2016-12-23 14:39:09', 3, 74),
(53, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper.', '2016-08-22 19:31:43', 9, 50),
(54, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut', '2016-06-02 10:20:18', 41, 47),
(55, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien,', '2016-07-13 07:18:36', 24, 70),
(56, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque', '2016-10-05 02:07:51', 73, 52),
(57, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet', '2017-05-01 02:42:49', 85, 35),
(58, 'Lorem ipsum dolor sit amet, consectetuer', '2017-03-10 11:03:51', 82, 62),
(59, 'Lorem ipsum', '2017-01-28 01:40:48', 32, 69),
(60, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravid', '2016-10-10 12:19:40', 50, 97),
(61, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravid', '2017-01-13 23:53:25', 26, 84),
(62, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', '2016-08-25 21:49:18', 36, 25),
(63, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravid', '2017-03-07 18:31:25', 5, 1),
(64, 'Lorem ipsum dolor sit amet, consectetuer adipiscing', '2016-11-23 02:20:54', 53, 18),
(65, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna', '2017-02-05 19:19:37', 50, 47),
(66, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravid', '2016-07-30 06:54:54', 56, 66),
(67, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', '2017-05-05 00:19:08', 32, 25),
(68, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravid', '2017-05-01 10:21:51', 89, 56),
(69, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque', '2016-07-26 13:19:10', 48, 49),
(70, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', '2017-02-11 18:52:10', 31, 8),
(71, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravid', '2017-02-17 01:38:13', 44, 50),
(72, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravid', '2017-02-28 21:13:23', 92, 73),
(73, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', '2016-09-04 04:33:41', 25, 59),
(74, 'Lorem ipsum', '2017-03-04 18:14:17', 27, 29),
(75, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at', '2016-09-14 13:33:30', 55, 97),
(76, 'Lorem ipsum dolor', '2016-09-23 19:55:43', 56, 100),
(77, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravid', '2016-06-27 17:39:41', 79, 12),
(78, 'Lorem ipsum', '2016-06-05 09:54:17', 59, 14),
(79, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec', '2017-02-10 08:00:18', 49, 74),
(80, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien,', '2017-03-01 22:40:49', 51, 85),
(81, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec', '2016-08-26 06:47:55', 80, 52),
(82, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravid', '2016-06-08 23:08:32', 15, 16),
(83, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravid', '2017-05-14 03:18:11', 98, 37),
(84, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien,', '2016-07-09 11:56:25', 17, 2),
(85, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing', '2016-10-08 06:23:25', 22, 77),
(86, 'Lorem ipsum dolor sit', '2016-10-21 23:43:12', 100, 70),
(87, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at', '2016-12-09 20:14:29', 84, 14),
(88, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravid', '2016-10-20 06:04:00', 71, 56),
(89, 'Lorem ipsum dolor sit amet, consectetuer adipiscing', '2017-01-13 21:32:57', 21, 14),
(90, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravid', '2016-09-14 20:50:31', 46, 25),
(91, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu', '2016-08-14 15:10:29', 59, 29),
(92, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravid', '2016-10-17 08:05:21', 5, 19),
(93, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravid', '2017-04-01 14:26:58', 74, 78),
(94, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam', '2016-05-28 04:19:48', 24, 3),
(95, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis', '2016-10-09 12:12:40', 90, 72),
(96, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravid', '2017-02-16 21:06:58', 74, 58),
(97, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing', '2017-04-24 05:10:10', 58, 30),
(98, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravid', '2016-10-15 15:16:48', 65, 21),
(99, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravid', '2016-08-31 04:34:34', 57, 100),
(100, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravid', '2017-02-09 09:20:30', 6, 8);

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `qualification` varchar(200) DEFAULT NULL,
  `speciality_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`id`, `name`, `email`, `phone`, `qualification`, `speciality_id`) VALUES
(1, 'Kennan Nieves', 'tempus.scelerisque@Integervitae.net', '15961619323', 'Master\'s', 5),
(2, 'Lyle Spencer', 'diam.luctus.lobortis@Mauris.ca', '12624423257', 'Master\'s', 4),
(3, 'James Cox', 'nunc.sit.amet@nonfeugiat.com', '15654908828', 'Master\'s', 6),
(4, 'Roth Oneal', 'Proin@justonecante.edu', '19989164334', 'Master\'s', 9),
(5, 'Elliott Warner', 'ipsum.ac.mi@Etiam.ca', '15877470604', 'Master\'s', 9),
(6, 'Tate Church', 'eu.sem.Pellentesque@Nulla.org', '17311576161', 'Master\'s', 3),
(7, 'Finn King', 'dui.Cum.sociis@magnisdis.org', '15252912511', 'Master\'s', 2),
(8, 'Graiden Fleming', 'leo@dignissimtempor.com', '15634084361', 'Master\'s', 3),
(9, 'Yoshio Alston', 'metus@Quisquetinciduntpede.ca', '12985823956', 'Master\'s', 4),
(10, 'Herrod Harrington', 'sodales.Mauris.blandit@Naminterdum.net', '13364197860', 'Master\'s', 2),
(11, 'Devin Whitaker', 'non.lacinia.at@enimCurabiturmassa.co.uk', '11217165834', 'Master\'s', 4),
(12, 'Noble Ruiz', 'penatibus@scelerisquenequeNullam.com', '18667267175', 'Master\'s', 9),
(13, 'Neil Duran', 'nunc.nulla.vulputate@nisinibhlacinia.net', '16162003000', 'Master\'s', 8),
(14, 'Orlando Armstrong', 'sed@risusquisdiam.edu', '11027478942', 'Master\'s', 10),
(15, 'Baker Morrow', 'parturient.montes@Curabiturmassa.net', '11343099934', 'Master\'s', 8),
(16, 'Tyler Kent', 'turpis@miloremvehicula.ca', '19672511946', 'Master\'s', 2),
(17, 'Cyrus Dean', 'Nullam@ut.co.uk', '18381065377', 'Master\'s', 7),
(18, 'Zane Cox', 'Nullam@convallisantelectus.edu', '11026570216', 'Master\'s', 6),
(19, 'Quamar Rosa', 'Suspendisse.aliquet.molestie@eratinconsectetuer.com', '11657692517', 'Master\'s', 6),
(20, 'Jameson York', 'orci.quis@convallisdolor.org', '15468825336', 'Master\'s', 8),
(21, 'August Holman', 'in.molestie.tortor@sitamet.net', '12748028312', 'Master\'s', 8),
(22, 'Murphy Lane', 'gravida@ac.org', '19037033376', 'Master\'s', 10),
(23, 'Cain Reese', 'ligula.Aenean.euismod@Maurismolestie.com', '19468377531', 'Master\'s', 7),
(24, 'Malik Humphrey', 'amet@et.com', '13062840255', 'Master\'s', 10),
(25, 'Grady Holt', 'Donec.feugiat.metus@idmollis.ca', '11757006589', 'Master\'s', 4),
(26, 'Demetrius Jensen', 'Mauris@eratnequenon.edu', '19914621147', 'Master\'s', 10),
(27, 'Basil Mayer', 'ac.turpis.egestas@magnaaneque.com', '17867363719', 'Master\'s', 3),
(28, 'Elvis Perkins', 'Quisque@primis.net', '11032873466', 'Master\'s', 9),
(29, 'Nathan Mcdowell', 'aliquet.Proin@lobortisquis.net', '12491855913', 'Master\'s', 9),
(30, 'Zachery Henry', 'Sed.neque@nislQuisquefringilla.org', '11995176990', 'Master\'s', 6),
(31, 'Griffith Short', 'arcu.Vestibulum@Quisque.org', '11387404317', 'Master\'s', 7),
(32, 'Marsden Dean', 'vitae.aliquam@velitSed.net', '18493640244', 'Master\'s', 1),
(33, 'Kaseem Hood', 'at@eget.com', '13532530849', 'Master\'s', 1),
(34, 'Gareth Tanner', 'enim.sit.amet@Donec.ca', '14566042503', 'Master\'s', 5),
(35, 'Carter Gordon', 'iaculis@posuereenim.org', '17488975081', 'Master\'s', 1),
(36, 'Walker Lowery', 'libero@nibh.org', '18269363214', 'Master\'s', 1),
(37, 'Ignatius Atkins', 'sit.amet@eget.com', '11899622924', 'Master\'s', 4),
(38, 'Colby Chaney', 'Curabitur@Quisque.edu', '12922055609', 'Master\'s', 9),
(39, 'Kadeem Bonner', 'luctus.sit@Proinvel.edu', '16897190159', 'Master\'s', 2),
(40, 'Cade Rodgers', 'molestie.in.tempus@duinec.co.uk', '16456140298', 'Master\'s', 3),
(41, 'Ralph Rodriguez', 'eget.nisi@mauriserat.co.uk', '14634509715', 'Master\'s', 6),
(42, 'Stephen Carey', 'Lorem.ipsum.dolor@turpis.com', '19588535195', 'Master\'s', 5),
(43, 'Colby Potter', 'Aliquam.erat.volutpat@Nulla.org', '15341996584', 'Master\'s', 8),
(44, 'Vladimir Hawkins', 'eu@massa.net', '15312989963', 'Master\'s', 3),
(45, 'Raphael Riddle', 'Morbi.non@ametnullaDonec.edu', '18111512161', 'Master\'s', 8),
(46, 'Erasmus Padilla', 'Aenean.massa.Integer@mauris.ca', '12572808864', 'Master\'s', 9),
(47, 'Lucius Cobb', 'tristique.pharetra.Quisque@aliquam.net', '12655948459', 'Master\'s', 6),
(48, 'Jackson Pugh', 'gravida.Aliquam.tincidunt@sitametconsectetuer.edu', '18723036069', 'Master\'s', 5),
(49, 'Jarrod Newman', 'vulputate@lobortis.edu', '12821415746', 'Master\'s', 3),
(50, 'Lucas Kelley', 'velit.Pellentesque.ultricies@imperdietullamcorperDuis.com', '16872211180', 'Master\'s', 5),
(51, 'Jin Summers', 'sodales.Mauris.blandit@Craslorem.ca', '12135864715', 'Master\'s', 9),
(52, 'Nero Kline', 'et@eu.com', '13934900237', 'Master\'s', 1),
(53, 'Hayden Wood', 'arcu@metus.org', '12058325570', 'Master\'s', 9),
(54, 'Hu Welch', 'lorem@parturientmontesnascetur.edu', '11397491355', 'Master\'s', 6),
(55, 'Hamish Hooper', 'nulla@turpisIncondimentum.com', '15464167063', 'Master\'s', 6),
(56, 'Allen Stevens', 'Lorem.ipsum@acurna.co.uk', '16641346197', 'Master\'s', 4),
(57, 'Oren Payne', 'consequat@necmollisvitae.co.uk', '16225281154', 'Master\'s', 10),
(58, 'Brian Hooper', 'et.ipsum@disparturientmontes.org', '19305867152', 'Master\'s', 10),
(59, 'Lance Sparks', 'pharetra.Nam.ac@variusultrices.org', '11209538377', 'Master\'s', 10),
(60, 'Ross Romero', 'velit@Integervitae.ca', '12112301017', 'Master\'s', 2),
(61, 'Uriah Mason', 'molestie@justoPraesentluctus.com', '19129862079', 'Master\'s', 5),
(62, 'Tarik Booth', 'Mauris.molestie.pharetra@nonummy.org', '19109034595', 'Master\'s', 4),
(63, 'Rajah Hogan', 'sit.amet.metus@urnaNullamlobortis.co.uk', '12652673756', 'Master\'s', 10),
(64, 'Deacon Pitts', 'at.fringilla@maurisblanditmattis.com', '15064594726', 'Master\'s', 5),
(65, 'Norman Kirby', 'ut@pharetra.com', '16554132221', 'Master\'s', 2),
(66, 'Zephania Jacobson', 'non.lorem@purusgravidasagittis.net', '16409535857', 'Master\'s', 10),
(67, 'Jacob Richmond', 'lectus@vulputateullamcorpermagna.net', '15004052778', 'Master\'s', 3),
(68, 'Byron Wise', 'cursus.purus@utsem.ca', '12245280295', 'Master\'s', 10),
(69, 'Giacomo Burris', 'lacus.Cras.interdum@Nulla.co.uk', '18281487157', 'Master\'s', 3),
(70, 'Brian Morrison', 'aliquam.enim.nec@sitametluctus.org', '14998956015', 'Master\'s', 2),
(71, 'Caesar Tyler', 'Fusce.dolor@eleifendCras.ca', '17494087464', 'Master\'s', 7),
(72, 'Hiram Carrillo', 'odio.Etiam@commodoat.com', '18123102506', 'Master\'s', 1),
(73, 'Jamal Powell', 'Duis.sit.amet@dignissimmagnaa.com', '16042174767', 'Master\'s', 3),
(74, 'Nero Kane', 'tempor.diam.dictum@mollis.edu', '15613796844', 'Master\'s', 4),
(75, 'Sawyer Knight', 'odio@lorem.edu', '17584023553', 'Master\'s', 10),
(76, 'Avram Nash', 'eu@diam.co.uk', '11948588321', 'Master\'s', 10),
(77, 'Yuli Benton', 'non.enim@mauris.org', '16323905937', 'Master\'s', 8),
(78, 'Anthony Estes', 'a.sollicitudin.orci@dictumultriciesligula.com', '19596777769', 'Master\'s', 1),
(79, 'Murphy Mcconnell', 'dictum@nonummy.edu', '18399885432', 'Master\'s', 1),
(80, 'Jarrod Lynch', 'non.sollicitudin.a@gravida.edu', '15381127680', 'Master\'s', 8),
(81, 'Levi Bradford', 'parturient.montes.nascetur@sitamet.co.uk', '17596976949', 'Master\'s', 2),
(82, 'Igor Valenzuela', 'ipsum.ac@molestieorci.ca', '15169824998', 'Master\'s', 5),
(83, 'Marsden Adkins', 'luctus.sit.amet@suscipit.co.uk', '15854226960', 'Master\'s', 1),
(84, 'Armand Donaldson', 'parturient.montes@duiCumsociis.org', '12388600928', 'Master\'s', 10),
(85, 'Dustin Frost', 'magnis@enimNuncut.net', '11046328151', 'Master\'s', 5),
(86, 'Perry Cochran', 'urna.convallis@convallisante.ca', '19875312687', 'Master\'s', 4),
(87, 'Melvin Wilder', 'Aenean.euismod@ullamcorper.co.uk', '14704258018', 'Master\'s', 3),
(88, 'Sebastian Macdonald', 'auctor@sedleo.com', '17666871434', 'Master\'s', 7),
(89, 'Bevis Johnston', 'Nulla.semper.tellus@anteNunc.edu', '13455447738', 'Master\'s', 10),
(90, 'Tyler Wooten', 'egestas.lacinia@non.net', '15729030766', 'Master\'s', 9),
(91, 'Fitzgerald Pearson', 'feugiat@PraesentluctusCurabitur.com', '17065412633', 'Master\'s', 10),
(92, 'Kieran Nguyen', 'molestie.pharetra@Namligula.com', '18429782472', 'Master\'s', 5),
(93, 'Shad Waters', 'vestibulum.Mauris.magna@Duisac.net', '18875333520', 'Master\'s', 8),
(94, 'Kasper Knapp', 'dui.lectus.rutrum@dolorFusce.co.uk', '19188058385', 'Master\'s', 6),
(95, 'Alexander Mccoy', 'arcu.Sed@nequetellus.org', '12175345659', 'Master\'s', 9),
(96, 'Craig Campos', 'luctus.felis.purus@necmollisvitae.edu', '14316976022', 'Master\'s', 6),
(97, 'Duncan Franklin', 'egestas.Fusce.aliquet@pellentesquea.net', '12207081998', 'Master\'s', 3),
(98, 'Chancellor Carson', 'lacinia@Sedmalesuadaaugue.ca', '16294934050', 'Master\'s', 2),
(99, 'Finn Miranda', 'Pellentesque.habitant.morbi@enimdiamvel.edu', '12776356402', 'Master\'s', 7),
(100, 'Owen Robinson', 'sed.dictum@dictum.org', '11463118934', 'Master\'s', 5);

-- --------------------------------------------------------

--
-- Table structure for table `medication`
--

CREATE TABLE `medication` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `price` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medication`
--

INSERT INTO `medication` (`id`, `name`, `description`, `price`) VALUES
(1, 'Rosuvastatin', '', 40),
(2, 'Atorvastatin', NULL, 50),
(3, 'Simvastatin', NULL, 30),
(4, 'Hydrocodone', NULL, 200),
(5, 'Lisinopril', NULL, 25),
(6, 'Generic Synthroid', NULL, 80),
(7, 'Norvasc', NULL, 90),
(8, 'Prilosec', NULL, 140),
(9, 'Azithromycin', NULL, 200),
(10, 'Amoxicillin', NULL, 42),
(11, 'Glucophage', NULL, 35),
(12, 'Hydrochlorothiazide', NULL, 78),
(13, 'Lipitor', NULL, 47),
(14, 'Nexium', NULL, 214),
(15, 'Plavix', NULL, 254),
(16, 'Abilify', NULL, 89),
(17, 'Seroquel', NULL, 246),
(18, 'Singulair', NULL, 23),
(19, 'Crestor', NULL, 247);

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `family_doctor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`id`, `name`, `address`, `phone`, `family_doctor_id`) VALUES
(1, 'Walter Browning', '1512 Iaculis Road', '14642519376', 67),
(2, 'Luke Miles', 'Ap #236-1522 Mus. St.', '12594975202', 27),
(3, 'Nehru Summers', 'P.O. Box 692, 728 Lacus. Avenue', '13322045335', 16),
(4, 'Uriel Dodson', 'Ap #248-7193 Lobortis Rd.', '15325101082', 31),
(5, 'Hilel Sargent', '921-7301 Enim, Av.', '15038597264', 34),
(6, 'Aladdin Franklin', 'Ap #193-1725 A, Av.', '12447987786', 76),
(7, 'Dante Ward', '1469 Mattis Rd.', '15326013943', 77),
(8, 'Tiger Meadows', 'Ap #448-7768 Integer Av.', '16569823795', 14),
(9, 'Ahmed Collins', 'Ap #277-496 Vel Rd.', '19054361588', 50),
(10, 'Joshua Potts', '177-7540 Mauris Avenue', '17666210235', 90),
(11, 'Hamish Barker', 'P.O. Box 220, 723 Eu St.', '19417803593', 42),
(12, 'Omar Alford', 'Ap #461-8999 Nam Ave', '18883287996', 33),
(13, 'Thaddeus Rhodes', 'P.O. Box 733, 5064 Ut Ave', '19442015561', 94),
(14, 'Luke Flynn', '4652 Massa. Rd.', '14641519629', 8),
(15, 'Zeph Higgins', '538-2830 Quisque Rd.', '17065678047', 71),
(16, 'Hedley Good', 'Ap #670-8063 Auctor, St.', '17866443565', 71),
(17, 'Timothy Fitzgerald', '6037 Nec Rd.', '18664507864', 62),
(18, 'Nathaniel Fleming', '5613 Auctor St.', '19615260275', 77),
(19, 'Demetrius Bolton', 'P.O. Box 989, 259 Vulputate, Avenue', '16935229379', 96),
(20, 'Leroy Barton', '276-7097 Malesuada St.', '17775383657', 90),
(21, 'Chandler Simon', 'P.O. Box 848, 4048 Proin Avenue', '14389057619', 57),
(22, 'Norman Dudley', '596 Libero St.', '17438789168', 69),
(23, 'Thor Blair', '3878 Ut St.', '14175083911', 51),
(24, 'Allen Sanchez', '652-3557 Integer Road', '17218330082', 2),
(25, 'Raymond Farmer', 'Ap #938-3540 Non, Rd.', '17782939042', 47),
(26, 'Herrod Kane', 'Ap #526-9645 Natoque Avenue', '19267596725', 5),
(27, 'Craig Montoya', 'Ap #615-634 Fermentum Av.', '17903174374', 75),
(28, 'Odysseus Hess', 'P.O. Box 157, 6390 Adipiscing St.', '15382740974', 20),
(29, 'Thor Carney', '2296 Suscipit, Rd.', '13483855213', 26),
(30, 'Brady Taylor', '836-9366 Maecenas Rd.', '13619156789', 46),
(31, 'Kirk Tate', 'Ap #725-9103 Etiam Avenue', '19001677917', 92),
(32, 'Kareem Burgess', 'P.O. Box 695, 586 Eu, Street', '16918430135', 28),
(33, 'Rooney Mcmahon', 'Ap #209-6499 Urna. Rd.', '14135212891', 41),
(34, 'Colby Riddle', 'P.O. Box 757, 5127 At, Street', '11585364060', 16),
(35, 'Boris Wilson', 'Ap #463-2001 Dui, St.', '19238120727', 11),
(36, 'Samuel Monroe', 'P.O. Box 391, 8486 Nibh Rd.', '12876640191', 77),
(37, 'Brendan Maddox', '943 Velit. St.', '14799948818', 44),
(38, 'Mark Blair', 'P.O. Box 905, 4855 At Street', '18243239532', 41),
(39, 'Upton Kline', '330-246 Facilisis Rd.', '16956196200', 94),
(40, 'Richard Bullock', '623-250 Et Road', '19525528333', 74),
(41, 'Howard Lancaster', 'Ap #725-8688 Libero St.', '16551810970', 27),
(42, 'Benjamin Bartlett', '2452 Quis St.', '12646785364', 44),
(43, 'Perry Roy', '481-3986 Nunc Ave', '11516376732', 62),
(44, 'Jackson Brown', '3050 Fusce St.', '14654107981', 66),
(45, 'Denton Paul', '7958 Integer St.', '16662255880', 53),
(46, 'Quinn Moore', '131-9893 Donec Street', '19543334098', 10),
(47, 'Vance Coleman', 'Ap #235-1504 Vitae Av.', '16305174606', 48),
(48, 'Raphael Washington', '364 Vivamus Rd.', '16115423293', 50),
(49, 'Raymond Salas', '421-2328 Risus. Street', '15418343554', 2),
(50, 'Hector Riddle', '430-8760 Pharetra Av.', '12093790775', 61),
(51, 'Seth Harris', '595 Sodales. St.', '14348395976', 19),
(52, 'Dominic Cruz', 'P.O. Box 436, 4582 Eu St.', '16104620707', 66),
(53, 'Tad Powers', '442-6490 Cras Av.', '14903805887', 56),
(54, 'Carter Fleming', '917 Et, Av.', '17824298046', 6),
(55, 'Howard Webster', 'P.O. Box 266, 6240 Eu Rd.', '17875892534', 18),
(56, 'Phelan Wiggins', 'P.O. Box 884, 8360 Porttitor St.', '16072225191', 73),
(57, 'Wayne Parrish', '3307 Aliquam St.', '14847770701', 95),
(58, 'Jeremy Soto', 'Ap #674-6057 Malesuada Av.', '13186153375', 40),
(59, 'Chaney Lyons', '9533 Enim. Street', '15543524080', 47),
(60, 'Ezekiel Clemons', '747-5908 Imperdiet Avenue', '13978633293', 19),
(61, 'Tarik Kelly', 'P.O. Box 665, 4750 Sem Rd.', '12476847766', 29),
(62, 'Lawrence Snyder', 'Ap #334-7077 Ac St.', '18262160187', 1),
(63, 'Galvin Shields', '784-3871 Scelerisque Road', '18477910259', 3),
(64, 'Jack Guerrero', 'P.O. Box 374, 2964 Eget Rd.', '19762048913', 20),
(65, 'Cade Pitts', '302-3064 Nunc St.', '14705605652', 59),
(66, 'Murphy Perez', 'P.O. Box 438, 2292 Egestas Road', '12555986100', 64),
(67, 'Amos Warren', '9802 Metus. St.', '13695065565', 11),
(68, 'Salvador Chase', '2880 Urna Road', '19835840180', 56),
(69, 'Rigel Thomas', '848-2997 Vehicula Av.', '13299957851', 80),
(70, 'Austin Wheeler', 'Ap #697-1935 Pede, St.', '18347134203', 27),
(71, 'Rogan Moran', '268-4865 Nunc, Ave', '17041999215', 28),
(72, 'Lane Mccray', '7315 Sed Avenue', '14694228745', 1),
(73, 'Elmo Glenn', 'Ap #212-5543 Varius Av.', '19864765634', 66),
(74, 'Cooper Avery', 'Ap #342-7120 Mi. Street', '15248503442', 66),
(75, 'Camden Knapp', 'Ap #901-4919 Ante. St.', '14218770701', 62),
(76, 'Owen Stanton', '305-8052 Vel, Av.', '15252062846', 76),
(77, 'Thor Fischer', 'Ap #239-1328 Viverra. St.', '14038640440', 6),
(78, 'Malik Wong', '910-761 Nec Av.', '18926338364', 64),
(79, 'Logan Dillard', '4421 Aliquet, Rd.', '17666454662', 4),
(80, 'Zephania Sparks', 'Ap #161-9588 Adipiscing Rd.', '17519640587', 73),
(81, 'Jack Parker', '289 Nec Avenue', '18109194441', 25),
(82, 'Gavin Clarke', '7067 Libero Rd.', '17343374261', 69),
(83, 'Brian Ochoa', 'Ap #555-6732 Enim Avenue', '17054589737', 32),
(84, 'Nathaniel Kirby', '313-4217 Sed Ave', '18545602295', 50),
(85, 'Dean Hardin', '777-3465 Tristique Road', '14388317406', 42),
(86, 'Troy Hood', '992-2647 Pellentesque. Ave', '13499910126', 75),
(87, 'Steel Marks', '827-6798 Non, Ave', '15089254764', 96),
(88, 'Cole Valdez', '8058 Ut, Ave', '18926843184', 72),
(89, 'Hiram French', '5016 Vitae, St.', '17774265968', 98),
(90, 'Donovan Clements', 'Ap #280-2705 Suspendisse St.', '13883707464', 39),
(91, 'Chester Ingram', 'P.O. Box 261, 3857 Ante Rd.', '18445926775', 10),
(92, 'Francis Byrd', '282-8098 Est Road', '13072880871', 88),
(93, 'Elijah Cervantes', '8702 Elit Avenue', '15219524565', 54),
(94, 'Steven Shelton', '989-5446 Vulputate Street', '17746435127', 28),
(95, 'Victor Hunter', 'Ap #876-1056 Phasellus Street', '12529832341', 38),
(96, 'Bevis Nunez', '424-1719 Risus. St.', '16306291811', 15),
(97, 'Malik Hopkins', 'P.O. Box 459, 8272 Sed Avenue', '18129022444', 21),
(98, 'Coby Coffey', '147-6619 Nulla Avenue', '13598790177', 44),
(99, 'Ivor Chapman', 'P.O. Box 563, 1345 Lobortis Road', '11564846047', 58),
(100, 'Cyrus Bond', '282-5276 Nunc St.', '16802671418', 87);

-- --------------------------------------------------------

--
-- Table structure for table `patient_profile`
--

CREATE TABLE `patient_profile` (
  `id` int(11) NOT NULL,
  `date_time` datetime DEFAULT NULL,
  `notes` varchar(200) DEFAULT NULL,
  `appointment_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient_profile`
--

INSERT INTO `patient_profile` (`id`, `date_time`, `notes`, `appointment_id`) VALUES
(1, '2016-09-01 01:47:14', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravid', 21),
(2, '2017-02-08 03:43:54', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravid', 20),
(3, '2017-03-17 16:46:54', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravid', 39),
(4, '2017-05-18 09:26:27', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravid', 23),
(5, '2016-06-08 10:18:24', 'Lorem ipsum dolor sit amet, consectetuer adipiscing', 74),
(6, '2016-12-13 09:27:27', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor.', 22),
(7, '2017-04-13 12:16:17', 'Lorem ipsum dolor sit amet, consectetuer adipiscing', 71),
(8, '2016-07-10 10:07:24', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien,', 74),
(9, '2016-10-14 17:43:31', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at', 51),
(10, '2016-08-11 13:43:08', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut', 54),
(11, '2017-05-10 21:42:17', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravid', 93),
(12, '2016-06-21 05:23:17', 'Lorem ipsum dolor sit amet, consectetuer adipiscing', 25),
(13, '2017-03-24 02:18:41', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravid', 98),
(14, '2016-11-28 01:21:42', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', 36),
(15, '2016-08-17 08:48:06', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravid', 20),
(16, '2017-04-06 11:00:41', 'Lorem ipsum dolor sit', 91),
(17, '2016-09-24 15:48:50', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam', 65),
(18, '2016-11-22 21:34:05', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravid', 17),
(19, '2016-06-05 19:16:30', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravid', 7),
(20, '2017-03-26 02:03:38', 'Lorem ipsum', 28),
(21, '2016-09-10 17:19:21', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravid', 41),
(22, '2016-07-27 13:08:49', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravid', 10),
(23, '2016-12-24 02:12:34', 'Lorem ipsum dolor sit amet, consectetuer', 76),
(24, '2017-01-27 04:34:48', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravid', 13),
(25, '2016-12-20 19:25:21', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravid', 92),
(26, '2016-05-22 23:30:00', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien,', 51),
(27, '2016-08-24 13:04:37', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper.', 94),
(28, '2017-04-13 19:03:07', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravid', 69),
(29, '2016-08-16 22:43:05', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravid', 55),
(30, '2016-08-18 01:40:25', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravid', 79),
(31, '2017-01-04 21:25:48', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at', 91),
(32, '2017-03-31 20:41:06', 'Lorem', 61),
(33, '2016-09-08 14:08:55', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et', 3),
(34, '2016-09-27 11:54:56', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravid', 78),
(35, '2016-10-01 15:52:31', 'Lorem ipsum dolor sit', 90),
(36, '2016-05-26 16:29:59', 'Lorem ipsum dolor sit amet,', 61),
(37, '2016-10-18 23:40:18', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing', 72),
(38, '2017-01-19 15:33:44', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravid', 54),
(39, '2016-12-31 13:54:14', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravid', 84),
(40, '2017-01-29 16:17:23', 'Lorem ipsum dolor sit amet,', 60),
(41, '2016-07-24 16:53:04', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravid', 88),
(42, '2016-07-23 04:09:32', 'Lorem ipsum', 94),
(43, '2017-03-22 16:56:51', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus.', 7),
(44, '2017-02-19 18:58:04', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien,', 84),
(45, '2016-09-03 13:40:58', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec', 55),
(46, '2016-11-04 10:21:29', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravid', 92),
(47, '2017-02-27 14:05:31', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravid', 92),
(48, '2017-01-15 18:48:27', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravid', 69),
(49, '2017-02-15 08:50:03', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec', 6),
(50, '2016-10-31 17:23:30', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravid', 8),
(51, '2016-08-20 06:10:14', 'Lorem ipsum', 4),
(52, '2016-09-26 17:04:22', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravid', 48),
(53, '2017-02-16 08:33:33', 'Lorem ipsum dolor', 99),
(54, '2017-01-11 15:01:45', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et', 29),
(55, '2016-08-14 06:52:38', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et', 63),
(56, '2016-11-10 12:03:09', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna', 2),
(57, '2016-07-09 16:17:10', 'Lorem ipsum dolor sit', 22),
(58, '2017-01-23 16:42:49', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et', 71),
(59, '2017-01-13 03:36:57', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravid', 45),
(60, '2016-05-24 02:34:17', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravid', 97),
(61, '2016-09-23 18:43:35', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien,', 17),
(62, '2017-01-14 22:10:05', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et', 88),
(63, '2016-06-05 03:14:37', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravid', 90),
(64, '2017-02-28 04:35:55', 'Lorem ipsum dolor sit amet, consectetuer adipiscing', 96),
(65, '2017-04-03 12:05:17', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet', 97),
(66, '2016-06-21 23:54:42', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravid', 72),
(67, '2017-03-17 21:48:07', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 75),
(68, '2016-05-19 07:13:07', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer', 68),
(69, '2016-12-18 02:30:02', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque', 70),
(70, '2017-02-22 12:05:11', 'Lorem', 42),
(71, '2017-01-05 20:09:04', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis', 75),
(72, '2017-03-13 05:19:55', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravid', 46),
(73, '2016-08-11 22:19:21', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien,', 71),
(74, '2016-11-26 19:19:26', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus', 43),
(75, '2017-03-25 12:58:00', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis', 67),
(76, '2017-04-19 19:15:17', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravid', 30),
(77, '2016-09-19 10:44:18', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravid', 34),
(78, '2017-05-10 19:02:27', 'Lorem ipsum dolor', 51),
(79, '2017-01-28 17:52:03', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec', 32),
(80, '2016-08-31 01:47:29', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna', 99),
(81, '2016-10-15 05:30:07', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravid', 71),
(82, '2016-11-08 01:55:34', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravid', 57),
(83, '2017-03-09 12:48:58', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis', 56),
(84, '2017-04-08 11:07:58', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus.', 90),
(85, '2017-03-24 17:08:26', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper.', 52),
(86, '2017-04-27 11:20:14', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravid', 53),
(87, '2017-04-08 16:36:21', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper.', 81),
(88, '2016-07-19 23:12:34', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravid', 56),
(89, '2016-11-17 19:49:11', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravid', 90),
(90, '2017-04-04 04:48:48', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravid', 30),
(91, '2016-11-18 14:53:54', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at', 73),
(92, '2016-06-24 13:56:51', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravid', 40),
(93, '2017-01-09 03:44:23', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravid', 63),
(94, '2017-02-05 22:28:43', 'Lorem ipsum dolor sit amet, consectetuer adipiscing', 95),
(95, '2016-10-01 20:34:03', 'Lorem ipsum dolor sit amet, consectetuer adipiscing', 7),
(96, '2017-05-16 01:53:44', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravid', 74),
(97, '2016-11-19 11:30:00', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et', 16),
(98, '2017-04-19 08:23:31', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravid', 35),
(99, '2017-05-11 19:00:29', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor.', 4),
(100, '2016-06-04 16:25:43', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravid', 55),
(101, '2017-05-26 00:58:00', 'blabla', 4);

-- --------------------------------------------------------

--
-- Table structure for table `pharmacist`
--

CREATE TABLE `pharmacist` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `phone` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pharmacist`
--

INSERT INTO `pharmacist` (`id`, `name`, `address`, `phone`) VALUES
(1, 'Dolan Sandoval', '667-3122 Nam St.', '13808218293'),
(2, 'Curran Harrell', '1612 Duis St.', '19954541780'),
(3, 'Solomon Mckinney', 'P.O. Box 115, 4848 Dignissim Road', '17219057725'),
(4, 'Gil Cannon', '7554 Morbi St.', '13676963919'),
(5, 'Jameson Logan', 'Ap #481-5402 Nunc, Av.', '14332890098'),
(6, 'Baker Floyd', 'P.O. Box 984, 3015 Facilisis Road', '17857561748'),
(7, 'Herrod Rodriquez', 'Ap #191-2583 Nibh Av.', '14057760259'),
(8, 'Alec Santiago', 'P.O. Box 113, 6887 Risus. St.', '17004198211'),
(9, 'Castor Beach', 'Ap #542-6130 Non, Rd.', '16281248721'),
(10, 'Logan Pope', 'Ap #425-9913 Erat Rd.', '15876811031'),
(11, 'Gregory Hubbard', '992-6751 Imperdiet Road', '12694176840'),
(12, 'Bruce Calhoun', 'P.O. Box 220, 6469 Nunc St.', '18304483003'),
(13, 'Honorato Mccormick', '6915 Quis Street', '13216523491'),
(14, 'Tanner Fitzpatrick', '612-8184 Pellentesque Street', '12106104654'),
(15, 'Amos Dyer', '4154 Et, Road', '12574349868'),
(16, 'Amir Tyson', 'P.O. Box 709, 8473 Ornare, Road', '13864590848'),
(17, 'Kasper Russo', '7105 Mauris Road', '19843513869'),
(18, 'Wing Daugherty', '5950 Fringilla St.', '16205666341'),
(19, 'Arsenio Snow', '420-8842 A, Ave', '19372056478'),
(20, 'Stuart Buck', 'P.O. Box 695, 4783 Elit Rd.', '15225869398'),
(21, 'Jordan Durham', '516-5435 Fames Rd.', '11477698744'),
(22, 'Cole Oconnor', 'P.O. Box 450, 8652 Lacus. Ave', '16576058504'),
(23, 'Clinton Rowe', '721-6998 Semper. St.', '17199434056'),
(24, 'Sylvester Wilder', '7560 Sagittis Av.', '11695168744'),
(25, 'Akeem Ford', '1802 Elementum, Ave', '18399482326'),
(26, 'Daquan Gross', '9328 Pede, Rd.', '18253029332'),
(27, 'Kyle Avila', 'P.O. Box 827, 3867 Neque Rd.', '15741159937'),
(28, 'Rigel Holcomb', '578-7239 Consectetuer Rd.', '13402656382'),
(29, 'Melvin Figueroa', '522-4119 Tempor Street', '12151635238'),
(30, 'Wesley Noel', 'P.O. Box 652, 3794 Turpis Rd.', '15421420561'),
(31, 'Jack Holmes', 'Ap #199-3980 Aliquet Rd.', '12082891662'),
(32, 'Abel Gomez', 'P.O. Box 406, 7691 Vitae, St.', '16439872897'),
(33, 'Harper Mcconnell', 'P.O. Box 729, 7760 Dolor. Avenue', '12467637823'),
(34, 'Kasper Allison', 'P.O. Box 109, 5524 Nec Street', '18001599801'),
(35, 'Kennedy Burke', 'Ap #229-7023 Faucibus. Road', '15338710911'),
(36, 'Aladdin Hendricks', 'P.O. Box 591, 5702 Non, Av.', '19869527836'),
(37, 'Robert Wyatt', '3276 Ante St.', '17221044188'),
(38, 'Emery Avery', 'Ap #867-935 Arcu. Av.', '15589655815'),
(39, 'Hasad Butler', '439-1884 Non Street', '12808189297'),
(40, 'Cooper Shepard', 'P.O. Box 798, 5026 At, Road', '12228263131'),
(41, 'Paki Meadows', 'P.O. Box 889, 4275 Amet St.', '18968369091'),
(42, 'Clinton Sloan', '269-8437 Sapien, Avenue', '15483240367'),
(43, 'Erasmus Wolf', 'P.O. Box 821, 7261 Ultricies St.', '14392201182'),
(44, 'Julian Hodge', '614-549 Ad Rd.', '11175951264'),
(45, 'Walker Christensen', 'Ap #425-892 Dolor St.', '14249879580'),
(46, 'Isaac Mueller', 'Ap #902-1184 Nulla Rd.', '12848012275'),
(47, 'Jesse Fry', 'Ap #184-3205 Curabitur Street', '17667466059'),
(48, 'Merritt Sweet', '248-6936 Nulla Avenue', '15128221987'),
(49, 'Thor Hammond', '8391 Elit, St.', '15702837202'),
(50, 'Hedley Weeks', 'P.O. Box 937, 1164 Aenean Rd.', '11285285379'),
(51, 'Amery Robinson', '2490 In Ave', '17305643049'),
(52, 'Nash Lynn', 'P.O. Box 169, 583 Dignissim Rd.', '18696698814'),
(53, 'Noble Robbins', 'P.O. Box 256, 5259 Orci Avenue', '16805851512'),
(54, 'Amal Morales', 'Ap #506-3156 Amet Avenue', '14596224687'),
(55, 'Zeus House', 'Ap #939-9889 Arcu. Road', '12826992569'),
(56, 'Blake Mcclure', 'P.O. Box 856, 8875 Eu St.', '16165973368'),
(57, 'Silas Moran', '1446 Maecenas Rd.', '13674156838'),
(58, 'Derek Chaney', '418-4290 Placerat. Rd.', '11538894064'),
(59, 'Eaton Navarro', 'P.O. Box 746, 9387 Aliquam Rd.', '15424512695'),
(60, 'Maxwell Hubbard', '7955 Nec St.', '16389516753'),
(61, 'Omar Espinoza', 'P.O. Box 638, 9948 Nec Street', '11732610432'),
(62, 'Harlan Tyler', '9396 Eu, Street', '14872740616'),
(63, 'Troy Macias', 'P.O. Box 979, 2939 Ultrices Avenue', '11515064651'),
(64, 'Cole Neal', '7627 Luctus St.', '12116366702'),
(65, 'Judah Jennings', 'Ap #550-6351 Egestas. Street', '19681115305'),
(66, 'Cyrus Baldwin', 'P.O. Box 110, 5196 Nulla Avenue', '17161537636'),
(67, 'Nigel Graves', 'Ap #602-5502 Augue St.', '11854106401'),
(68, 'Keaton Rodriquez', '975-2233 Nec Rd.', '18615415697'),
(69, 'Kamal Smith', '6096 Magnis Street', '14766139437'),
(70, 'Vladimir Maxwell', '1657 Eu Road', '11187309702'),
(71, 'Ross Blair', '179-2492 Lectus Rd.', '15057376106'),
(72, 'Tanek Love', 'Ap #856-6523 Quisque Avenue', '12282847746'),
(73, 'Derek Clarke', '685-2457 Phasellus Rd.', '14446375954'),
(74, 'Keith Andrews', '8918 Dui Av.', '18807889005'),
(75, 'Graham Patterson', '956-2721 Quam Rd.', '14673965197'),
(76, 'Price Swanson', 'P.O. Box 222, 6023 Pellentesque Rd.', '15011225384'),
(77, 'Jerome Haley', '5952 Ullamcorper. Rd.', '17586060687'),
(78, 'Tanner Cotton', '2066 Leo, Rd.', '15822540005'),
(79, 'Vincent Benjamin', 'Ap #364-9247 Ultricies Road', '19269154242'),
(80, 'Colin Cameron', 'P.O. Box 568, 705 Libero Avenue', '16568112286'),
(81, 'Rudyard Salazar', 'P.O. Box 978, 3861 Placerat, Rd.', '15006895324'),
(82, 'Xavier Bean', 'Ap #209-9824 Dolor Avenue', '18567253745'),
(83, 'Wing Maxwell', 'Ap #603-7584 Lorem, Av.', '11209095078'),
(84, 'Marvin Valencia', 'P.O. Box 805, 7595 Dictum St.', '13079377318'),
(85, 'Lane Nolan', 'P.O. Box 710, 9307 Donec Avenue', '16283485947'),
(86, 'Linus Hopkins', 'P.O. Box 651, 5429 Risus. Rd.', '15605007653'),
(87, 'Lucas Newton', 'P.O. Box 477, 7542 Dapibus Rd.', '13299841853'),
(88, 'Vaughan Alexander', 'P.O. Box 130, 6324 Mauris. Street', '16363660118'),
(89, 'Aidan Wells', 'P.O. Box 900, 6613 Mauris, Street', '14344957013'),
(90, 'Wylie Rojas', 'P.O. Box 830, 8195 Ultrices Street', '13293052176'),
(91, 'Thomas Savage', '2099 Primis St.', '13133047956'),
(92, 'Carter Lester', '6397 Natoque Ave', '15841396529'),
(93, 'Cain Conrad', '761-6439 Sodales Ave', '15038152893'),
(94, 'Ryder Steele', '1969 Scelerisque Rd.', '11349213323'),
(95, 'Carl Haley', 'P.O. Box 997, 2619 Sed Av.', '19433076635'),
(96, 'Aristotle Russell', '433-7546 Ridiculus St.', '17034252955'),
(97, 'Hilel Whitfield', 'P.O. Box 752, 5522 Ligula. Rd.', '14027851614'),
(98, 'Branden Wilson', 'P.O. Box 316, 9780 Eu, Road', '18123217583'),
(99, 'Lyle Mills', '726-9520 Convallis Rd.', '13221361698'),
(100, 'Uriah Boyle', 'P.O. Box 894, 4883 Quis St.', '17784778559');

-- --------------------------------------------------------

--
-- Table structure for table `pharmacy`
--

CREATE TABLE `pharmacy` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `pharmacist_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pharmacy`
--

INSERT INTO `pharmacy` (`id`, `name`, `pharmacist_id`) VALUES
(2, 'Clinic Pharmacy', 1);

-- --------------------------------------------------------

--
-- Table structure for table `prescription`
--

CREATE TABLE `prescription` (
  `id` int(11) NOT NULL,
  `dosage` varchar(200) DEFAULT NULL,
  `frequency` varchar(200) DEFAULT NULL,
  `appointment_id` int(11) NOT NULL,
  `medication_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prescription`
--

INSERT INTO `prescription` (`id`, `dosage`, `frequency`, `appointment_id`, `medication_id`) VALUES
(1, '20', '2', 76, 18),
(2, '91', '4', 74, 14),
(3, '58', '10', 74, 1),
(4, '18', '9', 4, 14),
(5, '57', '1', 39, 5),
(6, '60', '9', 70, 15),
(8, '75', '4', 99, 10),
(9, '81', '1', 29, 2),
(10, '70', '5', 52, 16),
(11, '54', '8', 82, 7),
(12, '15', '4', 18, 17),
(13, '14', '1', 65, 3),
(14, '42', '1', 96, 1),
(15, '61', '1', 96, 7),
(16, '54', '8', 95, 17),
(17, '70', '3', 32, 15),
(18, '93', '10', 37, 15),
(19, '33', '3', 95, 5),
(20, '47', '2', 38, 8),
(21, '19', '6', 69, 5),
(22, '45', '8', 64, 13),
(23, '20', '9', 87, 6),
(24, '25', '7', 65, 15),
(25, '22', '4', 95, 1),
(26, '93', '5', 23, 12),
(27, '17', '5', 97, 5),
(28, '5', '8', 76, 9),
(29, '29', '9', 91, 19),
(30, '35', '1', 31, 18),
(31, '18', '5', 11, 3),
(33, '62', '3', 24, 12),
(34, '11', '8', 32, 4),
(35, '83', '1', 60, 15),
(36, '91', '7', 41, 12),
(37, '26', '9', 21, 19),
(38, '21', '9', 94, 17),
(39, '71', '1', 86, 14),
(40, '22', '6', 73, 1),
(41, '66', '8', 10, 13),
(42, '14', '2', 80, 10),
(43, '33', '10', 54, 16),
(44, '82', '9', 24, 19),
(45, '100', '4', 77, 19),
(46, '84', '10', 62, 2),
(47, '26', '10', 62, 6),
(48, '12', '7', 64, 8),
(49, '48', '6', 6, 10),
(50, '47', '1', 45, 2),
(51, '29', '7', 84, 15),
(52, '59', '7', 87, 6),
(53, '15', '2', 52, 1),
(54, '55', '10', 59, 16),
(55, '88', '1', 1, 9),
(56, '54', '7', 24, 18),
(57, '51', '9', 63, 1),
(58, '50', '4', 72, 13),
(59, '71', '5', 21, 5),
(60, '73', '10', 17, 8),
(61, '7', '9', 41, 6),
(62, '33', '1', 23, 18),
(63, '7', '2', 37, 3),
(64, '94', '4', 27, 2),
(66, '29', '4', 78, 1),
(67, '24', '3', 23, 6),
(68, '1', '10', 31, 11),
(69, '42', '2', 63, 6),
(70, '96', '10', 38, 4),
(71, '92', '3', 25, 15),
(72, '54', '2', 72, 5),
(73, '86', '8', 52, 17),
(74, '100', '5', 89, 19),
(75, '51', '9', 9, 7),
(77, '58', '7', 23, 12),
(78, '87', '2', 31, 6),
(79, '16', '3', 33, 13),
(80, '90', '7', 62, 4),
(82, '82', '6', 25, 5),
(83, '78', '4', 77, 9),
(84, '42', '2', 68, 5),
(85, '63', '6', 27, 1),
(86, '56', '8', 60, 19),
(87, '1', '9', 48, 8),
(88, '60', '8', 35, 18),
(89, '4', '9', 97, 11),
(90, '88', '10', 74, 13),
(91, '73', '9', 34, 16),
(92, '50', '6', 45, 7),
(93, '68', '2', 13, 11),
(94, '81', '10', 62, 8),
(95, '56', '1', 84, 14),
(96, '65', '2', 58, 2),
(97, '19', '10', 87, 11),
(98, '9', '9', 4, 14),
(99, '26', '3', 19, 2),
(100, '81', '5', 71, 12);

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `id` int(11) NOT NULL,
  `date_time` datetime DEFAULT NULL,
  `pharmacy_id` int(11) NOT NULL,
  `prescription_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`id`, `date_time`, `pharmacy_id`, `prescription_id`) VALUES
(1, '2017-04-25 00:42:49', 2, 6),
(2, '2016-07-04 16:03:53', 2, 39),
(3, '2016-09-07 17:45:25', 2, 36),
(4, '2016-12-01 11:28:54', 2, 60),
(6, '2017-05-18 18:40:49', 2, 67),
(7, '2017-04-27 01:03:02', 2, 43),
(8, '2017-01-19 01:56:00', 2, 60),
(9, '2016-09-27 06:20:28', 2, 77),
(10, '2016-10-09 08:04:14', 2, 17),
(11, '2017-04-28 05:25:08', 2, 3),
(12, '2016-12-25 10:04:45', 2, 19),
(13, '2016-06-04 05:33:16', 2, 66),
(14, '2016-10-17 21:46:21', 2, 75),
(15, '2016-05-21 03:35:51', 2, 38),
(16, '2017-01-24 20:05:33', 2, 17),
(17, '2016-08-20 09:13:42', 2, 4),
(18, '2016-11-24 07:04:50', 2, 51),
(19, '2016-06-30 19:23:26', 2, 74),
(20, '2016-07-19 12:52:34', 2, 91),
(21, '2016-07-09 19:41:19', 2, 66),
(22, '2017-01-06 02:30:26', 2, 34),
(23, '2017-02-13 16:29:03', 2, 88),
(24, '2016-06-16 05:19:34', 2, 51),
(25, '2016-12-08 21:17:55', 2, 64),
(26, '2016-08-26 19:36:01', 2, 45),
(27, '2017-04-07 20:34:34', 2, 1),
(28, '2016-11-14 10:04:48', 2, 93),
(29, '2016-08-28 10:04:27', 2, 92),
(30, '2016-10-13 19:31:08', 2, 18),
(31, '2017-04-06 15:38:01', 2, 71),
(32, '2017-04-14 06:06:16', 2, 12),
(33, '2016-10-10 06:54:29', 2, 92),
(34, '2016-05-21 19:20:33', 2, 90),
(35, '2016-05-30 14:23:47', 2, 57),
(36, '2016-07-07 02:15:09', 2, 55),
(37, '2017-03-07 11:35:36', 2, 22),
(38, '2017-04-26 02:39:30', 2, 39),
(39, '2017-01-05 23:03:09', 2, 54),
(40, '2016-12-01 00:49:09', 2, 21),
(41, '2016-07-03 17:59:49', 2, 38),
(42, '2016-08-10 17:04:48', 2, 57),
(44, '2016-07-28 08:08:27', 2, 36),
(45, '2016-09-05 05:30:19', 2, 8),
(47, '2016-12-10 13:25:17', 2, 44),
(48, '2016-09-15 08:25:48', 2, 33),
(49, '2016-06-03 07:45:51', 2, 87),
(50, '2016-07-21 05:45:49', 2, 27),
(51, '2017-02-19 16:55:03', 2, 70),
(52, '2016-12-06 05:00:14', 2, 57),
(54, '2016-07-04 05:40:07', 2, 90),
(55, '2017-05-09 07:07:02', 2, 2),
(56, '2017-03-23 10:53:55', 2, 19),
(57, '2016-05-25 15:02:49', 2, 31),
(58, '2017-05-06 04:48:12', 2, 29),
(59, '2017-05-03 20:49:10', 2, 87),
(60, '2017-04-25 15:37:49', 2, 9),
(61, '2017-04-13 13:44:54', 2, 35),
(62, '2016-08-02 05:02:17', 2, 49),
(63, '2017-01-19 16:31:51', 2, 50),
(64, '2017-02-27 06:04:55', 2, 51),
(65, '2017-01-24 01:52:15', 2, 79),
(66, '2017-02-22 00:49:56', 2, 54),
(67, '2016-07-09 20:59:26', 2, 92),
(68, '2017-04-06 07:23:30', 2, 53),
(69, '2016-06-25 04:53:26', 2, 93),
(70, '2016-08-17 12:50:56', 2, 2),
(71, '2016-05-22 01:08:59', 2, 16),
(73, '2017-04-11 15:51:46', 2, 77),
(74, '2016-12-14 20:14:17', 2, 1),
(75, '2017-04-03 04:33:24', 2, 10),
(76, '2016-12-06 00:44:58', 2, 73),
(77, '2016-08-03 22:24:01', 2, 83),
(78, '2017-04-02 10:25:49', 2, 20),
(79, '2017-05-03 16:21:35', 2, 57),
(81, '2016-12-20 00:32:31', 2, 39),
(82, '2016-11-06 05:49:35', 2, 78),
(83, '2017-04-16 18:49:02', 2, 12),
(84, '2016-11-24 05:46:51', 2, 57),
(85, '2016-11-11 05:04:21', 2, 85),
(86, '2016-08-27 00:22:10', 2, 20),
(87, '2016-08-17 23:59:21', 2, 14),
(88, '2016-09-28 22:48:33', 2, 50),
(89, '2016-08-20 18:58:12', 2, 10),
(90, '2017-04-10 22:58:41', 2, 1),
(91, '2017-04-13 16:00:52', 2, 86),
(92, '2016-09-24 05:26:21', 2, 28),
(93, '2016-08-29 00:28:10', 2, 23),
(94, '2017-01-14 01:56:22', 2, 63),
(95, '2016-08-27 20:39:52', 2, 6),
(96, '2017-01-18 13:50:39', 2, 34),
(98, '2017-02-10 17:34:07', 2, 40),
(99, '2017-02-24 19:59:00', 2, 91),
(100, '2016-09-03 18:03:03', 2, 77);

-- --------------------------------------------------------

--
-- Table structure for table `speciality`
--

CREATE TABLE `speciality` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `speciality`
--

INSERT INTO `speciality` (`id`, `name`, `description`) VALUES
(1, 'Addiction psychiatrist', NULL),
(2, 'Allergist (immunologist)', NULL),
(3, 'Anesthesiologist', NULL),
(4, 'Cardiologist', NULL),
(5, 'Dermatologist', NULL),
(6, 'Endocrinologist', NULL),
(7, 'Forensic pathologist', NULL),
(8, 'Gastroenterologist', NULL),
(9, 'Gynecologist', NULL),
(10, 'Hematologist', NULL),
(11, 'Hepatologist', NULL),
(12, 'Hospitalist', NULL),
(13, 'Internist', NULL),
(14, 'Medical examiner', NULL),
(15, 'Neonatologist', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doctor_id_fk` (`doctor_id`),
  ADD KEY `appointment_patient_id_fk` (`patient_id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `speciality_id_doctor_fk` (`speciality_id`);

--
-- Indexes for table `medication`
--
ALTER TABLE `medication`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`id`),
  ADD KEY `family_doctor_id_fk` (`family_doctor_id`);

--
-- Indexes for table `patient_profile`
--
ALTER TABLE `patient_profile`
  ADD PRIMARY KEY (`id`),
  ADD KEY `appointment_id_fk` (`appointment_id`);

--
-- Indexes for table `pharmacist`
--
ALTER TABLE `pharmacist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pharmacy`
--
ALTER TABLE `pharmacy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pharmacist_id_fk` (`pharmacist_id`);

--
-- Indexes for table `prescription`
--
ALTER TABLE `prescription`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prescription_appointment_id_fk` (`appointment_id`),
  ADD KEY `medication_id_fk` (`medication_id`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pharmacy_id_fk_fk` (`pharmacy_id`),
  ADD KEY `prescription_id_fk` (`prescription_id`);

--
-- Indexes for table `speciality`
--
ALTER TABLE `speciality`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `medication`
--
ALTER TABLE `medication`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `patient_profile`
--
ALTER TABLE `patient_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;
--
-- AUTO_INCREMENT for table `pharmacist`
--
ALTER TABLE `pharmacist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;
--
-- AUTO_INCREMENT for table `pharmacy`
--
ALTER TABLE `pharmacy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `prescription`
--
ALTER TABLE `prescription`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `purchase`
--
ALTER TABLE `purchase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `speciality`
--
ALTER TABLE `speciality`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointment`
--
ALTER TABLE `appointment`
  ADD CONSTRAINT `appointment_patient_id_fk` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `doctor_id_fk` FOREIGN KEY (`doctor_id`) REFERENCES `doctor` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `doctor`
--
ALTER TABLE `doctor`
  ADD CONSTRAINT `doctor_ibfk_2` FOREIGN KEY (`speciality_id`) REFERENCES `speciality` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `patient`
--
ALTER TABLE `patient`
  ADD CONSTRAINT `patient_ibfk_1` FOREIGN KEY (`family_doctor_id`) REFERENCES `doctor` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `patient_profile`
--
ALTER TABLE `patient_profile`
  ADD CONSTRAINT `appointment_id_fk` FOREIGN KEY (`appointment_id`) REFERENCES `appointment` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pharmacy`
--
ALTER TABLE `pharmacy`
  ADD CONSTRAINT `pharmacist_id_fk` FOREIGN KEY (`pharmacist_id`) REFERENCES `pharmacist` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `prescription`
--
ALTER TABLE `prescription`
  ADD CONSTRAINT `medication_id_fk` FOREIGN KEY (`medication_id`) REFERENCES `medication` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `prescription_appointment_id_fk` FOREIGN KEY (`appointment_id`) REFERENCES `appointment` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `purchase`
--
ALTER TABLE `purchase`
  ADD CONSTRAINT `pharmacy_id_fk_fk` FOREIGN KEY (`pharmacy_id`) REFERENCES `pharmacy` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `prescription_id_fk` FOREIGN KEY (`prescription_id`) REFERENCES `prescription` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
