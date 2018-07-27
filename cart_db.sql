-- phpMyAdmin SQL Dump
-- version 4.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 18, 2016 at 02:29 PM
-- Server version: 5.5.49-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `codexworld`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE IF NOT EXISTS `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `status` enum('1','0') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `phone`, `address`, `created`, `modified`, `status`) VALUES
(1, 'Test User', 'testuser@gmail.com', '9999999999', 'New York, NY, USA', '2016-08-17 08:21:25', '2016-08-17 08:21:25', '1');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `total_price` float(10,2) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `status` enum('1','0') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE IF NOT EXISTS `order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL,
  `image` text NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `price` float(10,2) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `status` enum('1','0') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `image`,`name`, `description`, `price`, `created`, `modified`, `status`) VALUES
(1, 'civil_engineering/AIRPORT, DOCK, HARBOUR &TUNNELING.png','AIRPORT, DOCK, HARBOUR &TUNNELING', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(2, 'civil_engineering/BM.png','Building Material', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(3, 'civil_engineering/CPM & PERT.png','CPM & PERT', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(4, 'civil_engineering/DSS.png','DSS', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(5, 'civil_engineering/ENG MATHS.png','ENG MATHS', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(6, 'civil_engineering/ENG. MECHANICS.png','ENG. MECHANICS', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(7, 'civil_engineering/ENVIRONMENTAL.png','ENVIRONMENTAL', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(8, 'civil_engineering/FM.png','FM', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(9, 'civil_engineering/GEOLOGY.png','GEOLOGY', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(10, 'civil_engineering/HIGHWAY.png','HIGHWAY', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(11, 'civil_engineering/HYDROLOGY.png','HYDROLOGY', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(12, 'civil_engineering/IRRIGATION.png','IRRIGATION', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(13, 'civil_engineering/RCC& PRE STRESSED CONCRETE.png','RCC& PRE STRESSED CONCRETE', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(14, 'civil_engineering/REASONING & APTI.png','REASONING & APTI', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(15, 'civil_engineering/SOIL MECHANICS.png','SOIL MECHANICS', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(16, 'civil_engineering/SOM.png','SOM', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(17, 'civil_engineering/STRUCTURAL ANALYSIS.png','STRUCTURAL ANALYSIS', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(18, 'civil_engineering/SURVEYING.png','SURVEYING', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(19, 'civil_engineering/TRANSPORTATION.png','TRANSPORTATION', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),

(20, 'cs_it/ALGORITHM.png','ALGORITHM', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(21, 'cs_it/COMPILER DESIGN.png','COMPILER DESIGN', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(22, 'cs_it/COMPUTER NETWORK.png','COMPUTER NETWORK', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(23, 'cs_it/COMPUTER ORGANISATION & ARCHITECTURE.png','COMPUTER ORGANISATION & ARCHITECTURE', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(24, 'cs_it/DBMS.png','DBMS', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(25, 'cs_it/DIGITAL LOGIC.png','DIGITAL LOGIC', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(26, 'cs_it/DISCRETE MATHS.png','DISCRETE MATHS', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(27, 'cs_it/ENG MATHS.png','ENGG. MATHS', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(28, 'cs_it/OPERATING SYSTEM.png','OPERATING SYSTEM', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(29, 'cs_it/PROGRAMMING &DATA STRUCTURE.png','PROGRAMMING &DATA STRUCTURE', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(30, 'cs_it/REASONING & APTI.png','REASONING & APTI', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(31, 'cs_it/THEORY OF COMPUTATION.png','THEORY OF COMPUTATION', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(32, 'cs_it/WEB TECH.png','WEB TECH', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),

(33, 'ec/ADVANCED COMMUNICATION.png','ADVANCED COMMUNICATION', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(34, 'ec/ADVANCED ELECTRONICS.png','ADVANCED ELECTRONICS', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(35, 'ec/ANALOG ELECTRONICS.png','ANALOG ELECTRONICS', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(36, 'ec/COMMUNICATION SYSTEM.png','COMMUNICATION SYSTEM', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(37, 'ec/CONTROL SYSTEM.png','CONTROL SYSTEM', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(38, 'ec/DIGITAL ELECTRONICS.png','DIGITAL ELECTRONICS', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(39, 'ec/EDC.png','EDC', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(40, 'ec/ELECTRICAL MATERIAL.png','ELECTRICAL MATERIAL', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(41, 'ec/EMT.png','EMT', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(42, 'ec/ENG MATHS.png','ENGG. MATHS', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(43, 'ec/SIGNAL & SYSTEM.png','SIGNAL & SYSTEM', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(44, 'ec/MEASUREMENT & INSTRUMENTATION.png','MEASUREMENT & INSTRUMENTATION', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(45, 'ec/MICRO PROCESSER.png','MICRO PROCESSER', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(46, 'ec/MICROWAVE.png','MICROWAVE', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(47, 'ec/NETWORK THEORY.png','NETWORK THEORY', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(48, 'ec/RADAR & SATELLITE.png','RADAR & SATELLITE', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(49, 'ec/REASONING & APTI.png','REASONING & APTI', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),

(50, 'ee/ANALOG ELECTRONICS.png','ANALOG ELECTRONICS', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(51, 'ee/COMMUNICATION SYSTEM.png','COMMUNICATION SYSTEM', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(52, 'ee/COMPUTER FUNDAMENTAL.png','COMPUTER FUNDAMENTAL', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(53, 'ee/CONTROL SYSTEM.png','CONTROL SYSTEM', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(54, 'ee/DIGITAL ELECTRONICS.png','DIGITAL ELECTRONICS', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(55, 'ee/ELECTRICAL MACHINES 1.png','ELECTRICAL MACHINES 1', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(56, 'ee/ELECTRICAL MACHINES 2.png','ELECTRICAL MACHINES 2', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(57, 'ee/ELECTRICAL MATERIAL.png','/ELECTRICAL MATERIAL', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(58, 'ee/EMT.png','EMT', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(59, 'ee/ENG MATHS.png','ENGG. MATHS', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(60, 'ee/MATERIAL SCIENCE.png','MATERIAL SCIENCE', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(61, 'ee/MEASUREMENT & INSTRUMENTATION.png','MEASUREMENT & INSTRUMENTATION', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(62, 'ee/MICRO PROCESSER.png','MICRO PROCESSER', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(63, 'ee/NETWORK THEORY.png','NETWORK THEORY', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(64, 'ee/POWER ELECTRONICS.png','POWER ELECTRONICS', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(65, 'ee/POWER SYSTEM.png','POWER SYSTEM', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(66, 'ee/REASONING & APTI.png','REASONING & APTI', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(67, 'ee/SIGNAL & SYSTEM.png','SIGNAL & SYSTEM', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),

(68, 'ie/ANALOG ELECTRONICS.png','ANALOG ELECTRONICS', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(69, 'ie/ANALYTICAL & BIO-MEDICAL.png','ANALYTICAL & BIO-MEDICAL', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(70, 'ie/COMMUNICATION SYSTEM.png','COMMUNICATION SYSTEM', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(71, 'ie/CONTROL SYSTEM.png','CONTROL SYSTEM', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(72, 'ie/DIGITAL ELECTRONICS.png','DIGITAL ELECTRONICS', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(73, 'ie/ENG MATHS.png','ENGG. MATHS', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(74, 'ie/MEASUREMENT & INSTRUMENTATION.png','MEASUREMENT & INSTRUMENTATION', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(75, 'ie/NETWORK THEORY.png','NETWORK THEORY', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(76, 'ie/PROCESS CONTROL & OPTICAL.png','PROCESS CONTROL & OPTICAL', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(77, 'ie/REASONING & APTI.png','REASONING & APTI', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(78, 'ie/TRANSDUCER & SENSOR.png','TRANSDUCER & SENSOR', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),

(79, 'mechanical/ENG MATHS.png','ENGG. MATHS', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(81, 'mechanical/ENG. MECHANICS.png','ENGG. MECHANICS', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(82, 'mechanical/FM.png','FM', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(83, 'mechanical/HMT.png','HMT', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(84, 'mechanical/IC ENGINE.png','IC ENGINE', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(85, 'mechanical/INDUSTRIAL.png','INDUSTRIAL', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(86, 'mechanical/MACHINE DESIGN.png','MACHINE DESIGN', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(87, 'mechanical/MATERIAL SCIENCE.png','MATERIAL SCIENCE', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(88, 'mechanical/MECHATRONICS.png','MECHATRONICS', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(89, 'mechanical/POWER PLANT.png','POWER PLANT', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(90, 'mechanical/PRODUCTION.png','PRODUCTION', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(91, 'mechanical/RAC.png','RAC', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(92, 'mechanical/REASONING & APTI.png','REASONING & APTI', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(93, 'mechanical/RENEWABLE SOURCES OF ENERGY.png','RSE', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(94, 'mechanical/SOM.png','SOM', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(95, 'mechanical/THERMODYNAMICS.png','THERMODYNAMICS', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(96, 'mechanical/TOM.png','TOM', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),

(97, 'espaper1/BASICS OF MATERIAL SCIENCE.png','BASICS OF MATERIAL SCIENCE', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(98, 'espaper1/COMPUTER FUNDAMENTAL.png','COMPUTER FUNDAMENTAL', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(99, 'espaper1/ED AND ICT.png','ED AND ICT', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(100, 'espaper1/ENERGY AND ENVIRONMENT.png','ENERGY AND ENVIRONMENT', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(101, 'espaper1/ENG MATHS.png','ENGG. MATHS', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(102, 'espaper1/ENG. MECHANICS.png','ENGG. MECHANICS', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(103, 'espaper1/ENGLISH.png','ENGLISH', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(104, 'espaper1/ENVIRONMENT PRACTICE BOOK.png','ENVIRONMENT PRACTICE BOOK', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(105, 'espaper1/ENVIRONMENTAL.png','ENVIRONMENTAL', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(106, 'espaper1/ETHICS & VALUES.png','ETHICS & VALUES', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(107, 'espaper1/GK AND CURRENT AFFAIRS.png','GK AND CURRENT AFFAIRS', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(108, 'espaper1/GS COMBO.png','GS COMBO', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(109, 'espaper1/PROJECT MANAGEMENT.png','PROJECT MANAGEMENT', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(110, 'espaper1/REASONING & APTI.png','REASONING & APTI', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1'),
(111, 'espaper1/STANDARD & QUALITY IN PRACTICES.png','STANDARD & QUALITY IN PRACTICES', ' ' , 100.00, '2017-03-05 08:21:25', '2017-03-05 08:21:25', '1');


--
-- Dumping data for table `products`
--





--
-- Dumping data for table `products`
--


--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`), ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`), ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
