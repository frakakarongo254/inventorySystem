-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2018 at 02:52 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hardware`
--

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `category` varchar(100) NOT NULL,
  `brand_name` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`category`, `brand_name`, `status`, `id`) VALUES
('Bread', 'mango', 'Active', 11),
('Bread', '', 'Active', 13),
('juice', 'mango', 'Active', 14),
('juice', 'orange', 'Active', 15),
('Detergent', 'Omo', 'Active', 21),
('Detergent', 'sunlight', 'Active', 22),
('Detergent', 'Arial', 'Active', 23),
('Bread', 'vestive', 'Active', 24),
('Bread', 'vestive', 'Active', 25),
('Bread', 'vestive', 'Active', 26),
('juice', 'ovacado', 'Active', 27),
('juice', 'ovacado', 'Active', 28),
('juice', 'ovacado', 'Active', 29),
('juice', 'marimau', 'Inactive', 30),
('Detergent', 'persil', 'Active', 31),
('Soap', 'kibuyu', 'Active', 32),
('Soap', 'kibuyu', 'Active', 33),
('Soap', 'kibuyu', 'Active', 34),
('Soap', 'kibuyu', 'Active', 35),
('juice', 'soda', 'Active', 36),
('Milk', 'kcc', 'Active', 37),
('cement', 'mbamburi', 'Active', 38),
('cement', 'Blue triangle', 'Active', 39),
('Bread', 'james', 'Active', 40),
('laptop', 'hp', 'Active', 41),
('Tissue', 'ghh', 'Active', 42);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_name` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_name`, `status`, `id`) VALUES
('sheap', 'Active', 31),
('Bull', 'Active', 32),
('Pig', 'Active', 33);

-- --------------------------------------------------------

--
-- Table structure for table `company_details`
--

CREATE TABLE `company_details` (
  `name` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `vat` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company_details`
--

INSERT INTO `company_details` (`name`, `phone`, `email`, `vat`, `address`, `id`) VALUES
('fraka analytical karongo kamau', '0707071957', 'fraka@gmail.com', '10', 'Po box 14123,\r\n Mombasa', 6);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_name` varchar(100) NOT NULL,
  `customer_address` varchar(100) NOT NULL,
  `customer_contact_one` varchar(100) NOT NULL,
  `customer_contact_two` varchar(100) NOT NULL,
  `customer_email` varchar(100) NOT NULL,
  `customer_status` varchar(100) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_name`, `customer_address`, `customer_contact_one`, `customer_contact_two`, `customer_email`, `customer_status`, `id`) VALUES
('jenga', 'po box 123 kitale home', '0707071082', '7993890', 'kihiko@gmail.com', 'Active', 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer_order`
--

CREATE TABLE `customer_order` (
  `order_Id` varchar(100) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `order_date` date NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_order`
--

INSERT INTO `customer_order` (`order_Id`, `customer_name`, `order_date`, `id`) VALUES
('cuo-103542018042700', 'james muhati', '2018-04-26', 10),
('cuo-121912018042600', '', '2018-04-19', 1),
('cuo-122882018042700', 'kihiko', '2018-04-27', 14),
('cuo-123152018042700', 'partrick', '2018-04-11', 9),
('cuo-129292018042700', 'muhati james', '2018-04-26', 15),
('cuo-173112018042600', '', '2018-04-11', 3),
('cuo-185542018042600', 'mwangangangi', '2018-04-05', 8);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `item` varchar(100) NOT NULL,
  `quantity` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `order_id` int(11) NOT NULL,
  `transaction_id` varchar(100) NOT NULL,
  `total` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`item`, `quantity`, `price`, `description`, `order_id`, `transaction_id`, `total`) VALUES
('triangle one', '8', '500', ' this is the best', 1, '', '6000'),
('triangle two', '8', '1200', ' gkkgk fkkkf', 2, '', '2400'),
('delemone', '8', '30087', ' this product', 3, '', '60174'),
('triangle two', '8', '1200', ' gkkgk fkkkf', 4, '', '2400'),
('', '8', '30087', ' this product', 5, '', '1353915'),
('triangle two', '8', '1200', ' gkkgk fkkkf', 6, '', '2400'),
('triangle two', '8', '1200', ' gkkgk fkkkf', 7, '', '2400'),
('triangle two', '8', '1200', ' gkkgk fkkkf', 8, '', '1200'),
('triangle two', '8', '1200', ' gkkgk fkkkf', 9, '', '0'),
('triangle two', '8', '1200', ' gkkgk fkkkf', 10, '', '1200'),
('triangle two', '8', '1200', ' gkkgk fkkkf', 11, '', '1200'),
('triangle two', '8', '1200', ' gkkgk fkkkf', 12, '', '2400'),
('triangle two', '8', '1200', ' gkkgk fkkkf', 13, '', '2400'),
('triangle two', '8', '1200', ' gkkgk fkkkf', 14, '', '2400'),
('triangle two', '8', '1200', ' gkkgk fkkkf', 15, '', '2400'),
('triangle two', '8', '1200', ' gkkgk fkkkf', 16, '', '1200'),
('triangle two', '8', '1200', ' gkkgk fkkkf', 17, '', '2400'),
('triangle two', '8', '1200', ' gkkgk fkkkf', 18, '', '1200'),
('triangle two', '8', '1200', ' gkkgk fkkkf', 19, '', '2400'),
('triangle two', '8', '1200', ' gkkgk fkkkf', 20, '', '0'),
('triangle two', '8', '1200', ' gkkgk fkkkf', 21, '', '0'),
('triangle two', '8', '1200', ' gkkgk fkkkf', 22, '', '4800'),
('triangle two', '8', '1200', ' gkkgk fkkkf', 23, '', '3600'),
('triangle two', '8', '1200', ' gkkgk fkkkf', 24, '', '4800'),
('triangle two', '8', '1200', ' gkkgk fkkkf', 25, '', '6000'),
('delemone', '8', '30087', ' this product', 26, '', '1353915'),
('triangle two', '8', '1200', ' gkkgk fkkkf', 27, '', '1200'),
('delemone', '8', '30087', ' this product', 28, '', '90261'),
('triangle two', '8', '1200', ' gkkgk fkkkf', 29, '', '2400'),
('triangle two', '8', '1200', ' gkkgk fkkkf', 30, '', '2400'),
('triangle two', '8', '1200', ' gkkgk fkkkf', 31, '', '1200'),
('triangle one', '8', '500', ' this is the best', 32, '', '2500'),
('triangle two', '8', '1200', ' gkkgk fkkkf', 33, '', '2400'),
('triangle two', '8', '1200', ' gkkgk fkkkf', 34, '', '3600'),
('triangle two', '8', '1200', ' gkkgk fkkkf', 35, '', '6000'),
('soda soft', '8', '2399.00', '   description testing   one  on one', 36, '', '2399'),
('', '8', '2399.00', '   description testing   one  on one', 37, '', '4798'),
('triangle two', '8', '1200', ' gkkgk fkkkf', 38, '', '3600'),
('triangle two', '8', '1200', ' gkkgk fkkkf', 39, '', '1200'),
('triangle two', '8', '1200', ' gkkgk fkkkf', 40, '', '2400'),
('triangle two', '8', '1200', ' gkkgk fkkkf', 41, '', '6000'),
('triangle two', '8', '1200', ' gkkgk fkkkf', 42, '', '2400'),
('triangle one', '8', '500', ' this is the best', 43, '', '2000'),
('triangle two', '8', '1200', ' gkkgk fkkkf', 44, '', '2400'),
('triangle two', '8', '1200', ' gkkgk fkkkf', 45, '', '4800'),
('triangle two', '8', '1200', ' gkkgk fkkkf', 46, '', '3600'),
('triangle two', '8', '1200', ' gkkgk fkkkf', 47, '', '2400'),
('triangle one', '8', '500', ' this is the best', 48, '', '2000'),
('triangle two', '8', '1200', ' gkkgk fkkkf', 49, '', '4800'),
('triangle two', '8', '1200', ' gkkgk fkkkf', 50, '', '1200'),
('triangle two', '8', '1200', ' gkkgk fkkkf', 51, '', '0'),
('delemone', '8', '30087', ' this product', 52, '', '120348'),
('triangle two', '8', '1200', ' gkkgk fkkkf', 53, '', '4800'),
('triangle two', '8', '1200', ' gkkgk fkkkf', 54, '', '4800'),
('triangle two', '8', '1200', ' gkkgk fkkkf', 55, '', '2400'),
('triangle two', '8', '1200', ' gkkgk fkkkf', 56, '', '1200'),
('triangle two', '8', '1200', ' gkkgk fkkkf', 57, '', '3600'),
('triangle two', '8', '1200', ' gkkgk fkkkf', 58, '', '2400'),
('triangle two', '8', '1200', ' gkkgk fkkkf', 59, '', '2400'),
('triangle two', '8', '1200', ' gkkgk fkkkf', 60, '', '2400'),
('triangle two', '8', '1200', ' gkkgk fkkkf', 61, '', '2400'),
('triangle two', '8', '1200', ' gkkgk fkkkf', 62, '', '2400'),
('fresha', '3', '1200', ' best milk product', 63, 'cuo-130301980010100', '3600'),
('triangle two', '2', '1200', ' gkkgk fkkkf', 64, 'cuo-130301980010100', '2400'),
('fresha', '3', '1200', ' best milk product', 65, 'cuo-130301980010100', '3600'),
('triangle two', '2', '1200', ' gkkgk fkkkf', 66, 'cuo-130301980010100', '2400'),
('fresha', '3', '1200', ' best milk product', 67, 'cuo-130301980010100', '3600'),
('triangle two', '2', '1200', ' gkkgk fkkkf', 68, 'cuo-130301980010100', '2400'),
('fresha', '3', '1200', ' best milk product', 69, 'cuo-130301980010100', '3600'),
('triangle two', '2', '1200', ' gkkgk fkkkf', 70, 'cuo-130301980010100', '2400'),
('fresha', '3', '1200', ' best milk product', 71, 'cuo-130301980010100', '3600'),
('triangle two', '2', '1200', ' gkkgk fkkkf', 72, 'cuo-130301980010100', '2400'),
('fresha', '3', '1200', ' best milk product', 73, 'cuo-130301980010100', '3600'),
('triangle two', '2', '1200', ' gkkgk fkkkf', 74, 'cuo-130301980010100', '2400'),
('fresha', '3', '1200', ' best milk product', 75, 'cuo-130301980010100', '3600'),
('triangle two', '2', '1200', ' gkkgk fkkkf', 76, 'cuo-130301980010100', '2400'),
('fresha', '7', '1200', ' best milk product', 77, 'cuo-130301980010100', '8400'),
('triangle two', '2', '1200', ' gkkgk fkkkf', 78, 'cuo-130301980010100', '2400'),
('fresh', '4', 'ff', ' ', 79, 'cuo-138931980010100', '0'),
('triangle two', '3', '1200', ' gkkgk fkkkf', 80, 'cuo-138931980010100', '3600'),
('fresha', '6', '1200', ' best milk product', 81, 'cuo-138931980010100', '7200'),
('triangle two', '4', '1200', ' gkkgk fkkkf', 82, 'cuo-138931980010100', '4800'),
('delemone', '2', '30087', ' this product', 83, 'cuo-138931980010100', '60174'),
('delemone', '5', '30087', ' this product', 84, 'cuo-138931980010100', '150435'),
('fresha', '3', '1200', ' best milk product', 85, 'cuo-138931980010100', '3600'),
('triangle one', '8', '500', ' this is the best', 86, 'cuo-138931980010100', '4000'),
('fresha', '5', '1200', ' best milk product', 87, 'cuo-138931980010100', '6000'),
('triangle one', '3', '500', ' this is the best', 88, 'cuo-138931980010100', '1500'),
('fresha', '4', '1200', ' best milk product', 89, 'cuo-138931980010100', '4800'),
('triangle one', '3', '500', ' this is the best', 90, 'cuo-138931980010100', '1500'),
('delemone', '3', '30087', ' this product', 91, 'cuo-138931980010100', '90261'),
('fresha', '5', '1200', ' best milk product', 92, 'cuo-138931980010100', '6000'),
('triangle one', '7', '500', ' this is the best', 93, 'cuo-138931980010100', '3500'),
('triangle two', '2', '1200', ' gkkgk fkkkf', 94, 'cuo-138931980010100', '2400'),
('fresha', '3', '1200', ' best milk product', 95, 'cuo-117052018050100', '3600'),
('triangle one', '3', '500', ' this is the best', 96, 'cuo-117052018050100', '1500'),
('fresh', '5', 'ff', ' ', 97, 'cuo-139622018050100', '0'),
('triangle two', '3', '1200', ' gkkgk fkkkf', 98, 'cuo-139622018050100', '3600'),
('triangle one', '5', '500', ' this is the best', 99, 'cuo-139622018050100', '2500'),
('fresha', '5', '1200', ' best milk product', 103, 'cuo-158432018050100', '6000'),
('triangle two', '4', '1200', ' gkkgk fkkkf', 104, 'cuo-158432018050100', '4800'),
('triangle two', '4', '1200', ' gkkgk fkkkf', 105, 'cuo-158222018050100', '4800'),
('fresha', '2', '1200', ' best milk product', 106, 'cuo-158222018050100', '2400'),
('delemone', '6', '30087', ' this product', 107, 'cuo-158222018050100', '180522'),
('fresha', '5', '1200', ' best milk product', 108, 'cuo-158222018050100', '6000'),
('delemone', '6', '30087', ' this product', 109, 'cuo-158222018050100', '180522'),
('fresha', '4', '1200', ' best milk product', 110, 'cuo-158522018050100', '4800'),
('triangle one', '3', '500', ' this is the best', 111, 'cuo-158522018050100', '1500'),
('delemone', '23', '30087', ' this product', 112, 'cuo-158522018050100', '692001'),
('fresha', '4', '1200', ' best milk product', 113, 'cuo-102182018050100', '4800'),
('triangle one', '30', '500', ' this is the best', 114, 'cuo-102182018050100', '15000'),
('triangle two', '7', '1200', ' gkkgk fkkkf', 115, 'cuo-102182018050100', '8400'),
('fresha', '3', '1200', ' best milk product', 116, 'cuo-141722018050100', '3600'),
('triangle one', '27', '500', ' this is the best', 117, 'cuo-141722018050100', '13500'),
('fresha', '4', '1200', ' best milk product', 120, 'cuo-105672018050100', '4800'),
('delemone', '2', '30087', ' this product', 121, 'cuo-105672018050100', '60174'),
('fresha', '5', '1200', ' best milk product', 122, 'cuo-193492018050100', '6000'),
('triangle two', '78', '1200', ' gkkgk fkkkf', 123, 'cuo-193492018050100', '93600'),
('delemone', '56', '30087', ' this product', 124, 'cuo-193492018050100', '1684872'),
('delemone', '9', '30087', ' this product', 125, 'cuo-181251980010100', '270783'),
('pavilio', '50', '25000.00', 'the best', 126, 'cuo-199391980010100', '1250000'),
('delemone', '45', '30087', ' this product', 127, 'cuo-199391980010100', '1353915'),
('delemone', '45', '30087', ' this product', 128, 'cuo-199391980010100', '1353915'),
('triangle one', '6', '500', ' this is the best', 129, 'cuo-199391980010100', '3000'),
('fresha', '5', '1200', ' best milk product', 130, 'cuo-187502018050200', '6000'),
('fresha', '6', '1200', ' best milk product', 131, 'cuo-187502018050200', '7200'),
('fresha', '4', '1200', ' best milk product', 132, 'cuo-148752018050400', '4800'),
('triangle one', '4', '500', ' this is the best', 133, 'cuo-148752018050400', '2000'),
('fresha', '7', '1200', ' best milk product', 134, 'cuo-184272018050400', '8400'),
('triangle two', '6', '1200', ' gkkgk fkkkf', 135, 'cuo-184272018050400', '7200'),
('triangle one', '3', '500', ' this is the best', 136, 'cuo-190502018050400', '1500'),
('fresha', '32', '1200', ' best milk product', 137, 'cuo-190502018050400', '38400'),
('triangle two', '6', '1200', ' gkkgk fkkkf', 138, 'cuo-194902018050400', '7200'),
('fresha', '2', '1200', ' best milk product', 139, 'cuo-194902018050400', '2400'),
('fresha', '3', '1200', ' best milk product', 140, 'cuo-191292018050400', '3600'),
('triangle one', '3', '500', ' this is the best', 141, 'cuo-191292018050400', '1500'),
('fresha', '6', '1200', ' best milk product', 142, 'cuo-191292018050400', '7200'),
('fresha', '2', '1200', ' best milk product', 143, 'cuo-166922018050400', '2400'),
('fresha', '6', '1200', ' best milk product', 144, 'cuo-102032018050400', '7200'),
('fresha', '56', '1200', ' best milk product', 145, 'cuo-165212018050400', '67200'),
('fresha', '3', '1200', ' best milk product', 146, 'cuo-136522018050500', '3600'),
('triangle one', '2', '500', ' this is the best', 147, 'cuo-136522018050500', '1000'),
('fresha', '3', '1200', ' best milk product', 148, 'cuo-116672018050500', '3600'),
('triangle two', '2', '1200', ' gkkgk fkkkf', 149, 'cuo-116672018050500', '2400'),
('fresha', '1', '1200', ' best milk product', 150, 'cuo-165662018050500', '1200'),
('fresha', '1', '1200', ' best milk product', 151, 'cuo-179442018050500', '1200'),
('pavilio', '1', '25000.00', 'the best', 152, 'cuo-194682018050500', '25000'),
('pavilio', '1', '25000.00', 'the best', 153, 'cuo-197912018050500', '25000'),
('pavilio', '1', '25000.00', 'the best', 154, 'cuo-148552018050500', '25000'),
('pavilio', '1', '25000.00', 'the best', 155, 'cuo-105722018050500', '25000'),
('pavilio', '1', '25000.00', 'the best', 156, 'cuo-157472018050500', '25000'),
('pavilio', '1', '25000.00', 'the best', 157, 'cuo-188502018050500', '25000'),
('pavilio', '1', '25000.00', 'the best', 158, 'cuo-182552018050500', '25000'),
('pavilio', '1', '25000.00', 'the best', 159, 'cuo-132982018050500', '25000'),
('pavilio', '1', '25000.00', 'the best', 160, 'cuo-195492018050500', '25000'),
('pavilio', '1', '25000.00', 'the best', 161, 'cuo-133502018050500', '25000'),
('pavilio', '1', '25000.00', 'the best', 162, 'cuo-141372018050500', '25000'),
('pavilio', '1', '25000.00', 'the best', 163, 'cuo-154302018050400', '25000'),
('pavilio', '1', '25000.00', 'the best', 164, 'cuo-158392018050400', '25000'),
('pavilio', '1', '25000.00', 'the best', 165, 'cuo-106412018050400', '25000'),
('pavilio', '1', '25000.00', 'the best', 166, 'cuo-102822018050400', '25000'),
('pavilio', '1', '25000.00', 'the best', 167, 'cuo-140582018050400', '25000'),
('pavilio', '1', '25000.00', 'the best', 168, 'cuo-124302018050400', '25000'),
('pavilio', '1', '25000.00', 'the best', 169, 'cuo-113302018050400', '25000'),
('pavilio', '1', '25000.00', 'the best', 170, 'cuo-141952018050400', '25000'),
('pavilio', '3', '25000.00', 'the best', 171, 'cuo-103602018050400', '75000'),
('pavilio', '1', '25000.00', 'the best', 172, 'cuo-140682018050400', '25000'),
('pavilio', '1', '25000.00', 'the best', 174, 'cuo-129842018050500', '25000'),
('pavilio', '2', '25000.00', 'the best', 175, 'cuo-129842018050500', '50000'),
('pavilio', '1', '25000.00', 'the best', 176, 'cuo-128842018050500', '25000'),
('pavilio', '1', '25000.00', 'the best', 177, 'cuo-159232018050500', '25000'),
('pavilio', '1', '25000.00', 'the best', 178, 'cuo-154082018050500', '25000'),
('pavilio', '1', '25000.00', 'the best', 179, 'cuo-136772018050500', '25000'),
('pavilio', '1', '25000.00', 'the best', 180, 'cuo-108502018050500', '25000'),
('pavilio', '1', '25000.00', 'the best', 181, 'cuo-158312018050500', '25000'),
('pavilio', '1', '25000.00', 'the best', 182, 'cuo-165002018050500', '25000'),
('pavilio', '1', '25000.00', 'the best', 183, 'cuo-188502018050500', '25000'),
('pavilio', '1', '25000.00', 'the best', 184, 'cuo-143742018050500', '25000'),
('pavilio', '1', '25000.00', 'the best', 185, 'cuo-136292018050500', '25000'),
('pavilio', '1', '25000.00', 'the best', 186, 'cuo-189992018050500', '25000'),
('pavilio', '1', '25000.00', 'the best', 188, 'cuo-177042018050500', '25000'),
('pavilio', '1', '25000.00', 'the best', 190, 'cuo-168682018050500', '25000'),
('pavilio', '1', '25000.00', 'the best', 191, 'cuo-136642018050500', '25000'),
('pavilio', '1', '25000.00', 'the best', 192, 'cuo-115802018050500', '25000'),
('pavilio', '1', '25000.00', 'the best', 193, 'cuo-115802018050500', '25000'),
('pavilio', '2', '25000.00', 'the best', 194, 'cuo-191932018050500', '50000'),
('triangle one', '1', '500', ' this is the best', 195, 'cuo-191932018050500', '500'),
('pavilio', '1', '25000.00', 'the best', 196, 'cuo-151192018050500', '25000'),
('triangle one', '1', '500', ' this is the best', 197, 'cuo-151192018050500', '500'),
('pavilio', '1', '25000.00', 'the best', 198, 'cuo-128901980010100', '25000'),
('triangle one', '1', '500', ' this is the best', 199, 'cuo-128901980010100', '500'),
('pavilio', '3', '25000.00', 'the best', 201, 'cuo-179862018050500', '75000'),
('soda soft', '2', '2399.00', '    description testing   one  on one', 202, 'cuo-179862018050500', '4798'),
('triangle one', '2', '500', ' this is the best', 203, 'cuo-179862018050500', '1000'),
('pavilio', '2', '25000.00', 'the best', 204, 'cuo-161232018050600', '50000'),
('triangle two', '2', '1200', ' gkkgk fkkkf', 205, 'cuo-161232018050600', '2400'),
('pavilio', '2', '25000.00', 'the best', 206, 'cuo-161232018050600', '50000'),
('triangle one', '2', '500', ' this is the best', 207, 'cuo-161232018050600', '1000'),
('soft bread', '1', '45', ' testing bread', 208, 'cuo-161232018050600', '45'),
('pavilio', '2', '25000.00', 'the best', 209, 'cuo-132392018050600', '50000'),
('triangle one', '2', '500', ' this is the best', 210, 'cuo-132392018050600', '1000'),
('pavilio', '1', '25000.00', 'the best', 211, 'cuo-187932018050600', '25000'),
('pavilio', '3', '25000.00', 'the best', 212, 'cuo-190882018050600', '75000'),
('triangle one', '3', '500', ' this is the best', 213, 'cuo-190882018050600', '1500'),
('pavilio', '2', '25000.00', 'the best', 214, 'cuo-144341980010100', '50000'),
('soft bread', '2', '45', ' testing bread', 215, 'cuo-144341980010100', '90'),
('triangle one', '2', '500', ' this is the best', 216, 'cuo-144341980010100', '1000'),
('triangle one', '2', '500', ' this is the best', 217, 'cuo-110052018050700', '1000'),
('pavilio', '2', '25000.00', 'the best', 218, 'cuo-189351980010100', '50000'),
('triangle one', '3', '500', ' this is the best', 219, 'cuo-189351980010100', '1500'),
('pavilio', '2', '25000.00', 'the best', 220, 'cuo-134711980010100', '50000'),
('pavilio', '5', '25000.00', 'the best', 223, 'cuo-199512018051000', '125000'),
('triangle one', '1', '500', ' this is the best', 224, 'cuo-199512018051000', '500'),
('soft bread', '5', '45', ' testing bread', 225, 'cuo-199512018051000', '225'),
('pavilio', '1', '25000.00', 'the best', 226, 'cuo-121262018051000', '25000'),
('elitebook', '50', '35000', ' corei 7', 227, 'cuo-114902018051000', '1750000'),
('triangle one', '1', '500', ' this is the best', 228, 'cuo-168192018051000', '500'),
('pavilio', '1', '25000.00', 'the best', 229, 'cuo-109092018050900', '25000'),
('pavilio', '1', '25000.00', 'the best', 230, 'cuo-169801980010100', '25000'),
('triangle one', '2', '500', ' this is the best', 231, 'cuo-169801980010100', '1000'),
('delemone', '25', '30087', ' this product', 232, 'cuo-169801980010100', '752175'),
('pavilio', '3', '', 'the best', 233, 'cuo-116412018051100', '0'),
('mwaka', '2', '600', ' fgh', 234, 'cuo-116412018051100', '1200'),
('mwaka', '1', '600', ' fgh', 235, 'cuo-118692018051200', '600'),
('triangle one', '2', '', ' this is the best', 236, 'cuo-118692018051200', '0'),
('mwaka', '1', '600', ' fgh', 237, 'cuo-152422018051200', '600'),
('mwaka', '1', '600', ' fgh', 238, 'cuo-138482018051200', '600'),
('cap', '3', '500', ' testing', 239, 'cuo-128912018051200', '1500'),
('phone', '3', '500', ' testing', 240, 'cuo-128912018051200', '1500'),
('phone', '2', '500', ' testing', 241, 'cuo-187912018051300', '1000');

-- --------------------------------------------------------

--
-- Table structure for table `order_table`
--

CREATE TABLE `order_table` (
  `customer_name` varchar(100) NOT NULL,
  `total_amount` varchar(250) NOT NULL,
  `payment_status` varchar(100) NOT NULL,
  `order_status` varchar(100) NOT NULL,
  `order_date` date NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `id` int(11) NOT NULL,
  `order_id` varchar(100) NOT NULL,
  `ordered_quantity` varchar(100) NOT NULL,
  `product_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_table`
--

INSERT INTO `order_table` (`customer_name`, `total_amount`, `payment_status`, `order_status`, `order_date`, `created_by`, `id`, `order_id`, `ordered_quantity`, `product_name`) VALUES
('hfgjj', '', 'Cash', 'Active', '2018-04-11', '', 1, '', '45', 'soda soft'),
('fraka', '', 'Debt', 'Active', '2018-04-12', '', 2, '', '23', 'soda soft'),
('Joshua', '', 'Cash', 'Active', '2018-04-24', '', 3, '', '4', 'soda soft'),
('peter', '', 'Cash', 'Active', '2018-04-26', '', 4, '', '34', 'delemone'),
('peter', '', 'Cash', 'Active', '2018-04-26', '', 5, '', '67', 'delemone'),
('peter', '', 'Cash', 'Active', '2018-04-26', '', 6, '', '12', 'fresha'),
('peter', '', 'Cash', 'Active', '2018-04-26', '', 7, '', '', 'soft bread'),
('', '', 'Cash', 'Active', '0000-00-00', '', 8, '', '34', 'delemone'),
('john', '', 'Cash', 'Active', '2018-04-25', '', 9, '', '12', 'delemone'),
('john', '', 'Cash', 'Active', '2018-04-25', '', 10, '', '345', 'delemone'),
('john', '', 'Cash', 'Active', '2018-04-25', '', 11, '', '23', 'fresha'),
('matheri', '', 'Cash', 'Active', '2018-04-24', '', 12, '', '456', 'fresha'),
('matheri', '', 'Cash', 'Active', '2018-04-24', '', 13, '', '60', 'soft bread'),
('matheri', '', 'Cash', 'Active', '2018-04-24', '', 14, '', '234', 'product one'),
('matheri', '', 'Cash', 'Active', '2018-04-24', '', 15, '', '890', 'delemone'),
('marcy', '', 'Debt', 'Active', '2018-04-27', '', 16, '', '678', 'delemone'),
('marcy', '', 'Debt', 'Active', '2018-04-27', '', 17, '', '56', 'fresha'),
('marcy', '', 'Debt', 'Active', '2018-04-27', '', 18, '', '89', 'soda soft'),
('marcy', '', 'Debt', 'Active', '2018-04-27', '', 19, '', '780', 'soda soft'),
('jane', '', 'Cash', 'Active', '2018-04-18', '', 20, '', '89', 'delemone'),
('jane', '', 'Cash', 'Active', '2018-04-18', '', 21, '', '90', 'soda soft'),
('jane', '', 'Cash', 'Active', '2018-04-18', '', 22, '', '45768', 'product one'),
('jane', '', 'Cash', 'Active', '2018-04-18', '', 23, '', '3456', 'soda soft'),
('jane', '', 'Cash', 'Active', '2018-04-18', '', 24, '', '987', 'soda soft'),
('jane', '', 'Cash', 'Active', '2018-04-18', '', 25, '', '78', 'fresha'),
('jane', '', 'Cash', 'Active', '2018-04-18', '', 26, '', '2421', 'delemone'),
('jane', '', 'Cash', 'Active', '2018-04-18', '', 27, '', '1235', 'soft bread'),
('gkkk', '', 'Cash', 'Active', '2018-04-18', '', 28, '', '12', 'fresha'),
('gkkk', '', 'Cash', 'Active', '2018-04-18', '', 29, '', '23', 'product one'),
('gkkk', '', 'Cash', 'Active', '2018-04-18', '', 30, '', '67', 'product one'),
('ndejj', '', 'Cash', 'Active', '2018-04-19', '', 31, '', '34', 'soft bread'),
('ndejj', '', 'Cash', 'Active', '2018-04-19', '', 32, '', '54', 'delemone'),
('karongo', '', 'Cash', 'Active', '2018-04-11', '', 33, ' cuo-173112018042600', '789', 'delemone'),
('karongo', '', 'Cash', 'Active', '2018-04-11', '', 34, ' cuo-173112018042600', '23', 'soft bread'),
('karongo', '', 'Cash', 'Active', '2018-04-11', '', 35, ' cuo-173112018042600', '234', 'fresha'),
('karongo', '', 'Cash', 'Active', '2018-04-11', '', 36, ' cuo-173112018042600', '345', 'soft bread'),
('karongo', '', 'Cash', 'Active', '2018-04-11', '', 37, ' cuo-173112018042600', '12', 'soft bread'),
('mwangangangi', '', 'Cash', 'Active', '2018-04-05', '', 38, ' cuo-185542018042600', '67', 'delemone'),
('mwangangangi', '', 'Cash', 'Active', '2018-04-05', '', 39, ' cuo-185542018042600', '234', 'fresha'),
('mwangangangi', '', 'Cash', 'Active', '2018-04-05', '', 40, ' cuo-185542018042600', '23', 'soft bread'),
('mwangangangi', '', 'Cash', 'Active', '2018-04-05', '', 41, ' cuo-185542018042600', '13', 'fresha'),
('', '40800', '', '', '0000-00-00', '', 42, '', '', ''),
('partrick', '', 'Cash', 'Active', '2018-04-11', '', 43, ' cuo-123152018042700', '34', 'triangle two'),
('', '22500', '', '', '0000-00-00', '', 44, '', '', ''),
('partrick', '', 'Cash', 'Active', '2018-04-11', '', 45, ' cuo-123152018042700', '45', 'triangle one'),
('', '1000', '', '', '0000-00-00', '', 46, '', '', ''),
('partrick', '', 'Cash', 'Active', '2018-04-11', '', 47, ' cuo-123152018042700', '2', 'triangle one'),
('james muhati', '27600', 'Cash', 'Active', '2018-04-26', '', 48, ' cuo-103542018042700', '23', 'triangle two'),
('james muhati', '122500', 'Cash', 'Active', '2018-04-26', '', 49, ' cuo-103542018042700', '245', 'triangle one'),
('james muhati', '27600', 'Cash', 'Active', '2018-04-26', '', 50, ' cuo-103542018042700', '23', 'triangle two'),
('james muhati', '500', 'Cash', 'Active', '2018-04-26', '', 51, ' cuo-103542018042700', '1', 'triangle one'),
('kihiko', '40800', 'Cash', 'Active', '2018-04-27', '', 52, ' cuo-122882018042700', '34', 'triangle two'),
('kihiko', '5000', 'Cash', 'Active', '2018-04-27', '', 53, ' cuo-122882018042700', '10', 'triangle one'),
('kihiko', '90261', 'Cash', 'Active', '2018-04-27', '', 54, ' cuo-122882018042700', '3', 'delemone'),
('muhati james', '42000', 'Cash', 'Active', '2018-04-26', '', 55, ' cuo-129292018042700', '35', 'triangle two'),
('muhati james', '2000', 'Cash', 'Active', '2018-04-26', '', 56, ' cuo-129292018042700', '4', 'triangle one'),
('muhati james', '270', 'Cash', 'Active', '2018-04-26', '', 57, ' cuo-129292018042700', '6', 'soft bread'),
('muhati james', '55177', 'Cash', 'Active', '2018-04-26', '', 58, ' cuo-129292018042700', '23', 'soda soft'),
('', '', '', '', '0000-00-00', '', 59, '', '', 'soda soft');

-- --------------------------------------------------------

--
-- Table structure for table `order_transaction`
--

CREATE TABLE `order_transaction` (
  `transaction_id` varchar(100) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `total_amount` varchar(100) NOT NULL,
  `payment_mode` varchar(100) NOT NULL,
  `order_date` date NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `grand_total` varchar(100) NOT NULL,
  `discount` varchar(100) NOT NULL,
  `due_amount` varchar(100) NOT NULL,
  `balance_amount` varchar(100) NOT NULL,
  `paid_amount` varchar(100) NOT NULL,
  `vat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_transaction`
--

INSERT INTO `order_transaction` (`transaction_id`, `customer_name`, `total_amount`, `payment_mode`, `order_date`, `created_by`, `grand_total`, `discount`, `due_amount`, `balance_amount`, `paid_amount`, `vat`) VALUES
('cuo-102032018050400', 'james', '7200', 'Cash', '2018-05-04', '', '', '', '0', '490', '490', ''),
('cuo-102182018050100', 'mashete', '28200', 'Cash', '2018-05-01', '', '0', '0', '0', '0', '', ''),
('cuo-102822018050400', 'ghhh', '25000', 'Cash', '2018-05-04', '', '28250', '45', '0', '830759', '', ''),
('cuo-103602018050400', 'yu', '75000', 'Cash', '2018-05-04', '', '84750', '45', '0', '87749', '87749', ''),
('cuo-105672018050100', 'joshua', '64974', 'Cash', '2018-05-01', '', '0', '0', '0', '0', '', ''),
('cuo-105722018050500', 'fhjj', '25000', 'Cash', '2018-05-05', '', '', '', '', '23', '', ''),
('cuo-106412018050400', 'fghhj', '25000', 'Cash', '2018-05-04', '', '28250', '', '0', '49750', '', ''),
('cuo-108502018050500', 'hh', '25000', 'Cash', '2018-05-05', '', '28250', '', '', '', '4556', ''),
('cuo-109092018050900', 'rfjj', '25000', 'Cash', '2018-05-09', 'kihiko', '28500', '500', '0', '1971500', '2000000', '4000'),
('cuo-110052018050700', 'analytica', '1000', 'Cash', '2018-05-07', 'kihiko', '1100', '0', '0', '1100', '1100', '100'),
('cuo-113302018050400', 'dgh', '25000', 'Cash', '2018-05-04', '', '28250', '45', '27794', '0', '456', ''),
('cuo-114902018051000', 'peter', '1750000', 'Cash', '2018-05-10', 'kihiko', '2029500', '500', '0', '47970500', '50000000', '280000'),
('cuo-115802018050500', 'kihiko', '25000', 'Cash', '2018-05-05', 'ibra 54;', '28000', '250', '0', '45838', '73838', '3250'),
('cuo-116412018051100', 'peter', '1200', 'Cash', '2018-05-11', 'jamo', '1300', '20', '0', '4377', '5677', '120'),
('cuo-116672018050500', 'peter', '6000', 'Cash', '2018-05-05', '', '', '', '', '', '', ''),
('cuo-117052018050100', 'muchiri', '5100', 'Cash', '2018-05-01', '', '0', '0', '0', '0', '', ''),
('cuo-118692018051200', 'skiza', '600', 'Cash', '2018-05-12', 'francis', '660', '0', '260', '0', '400', '60'),
('cuo-121262018051000', 'rttyy', '25000', 'Cash', '2018-05-10', 'kihiko', '29000', '0', '22000', '0', '7000', '4000'),
('cuo-124302018050400', 'hhhh', '25000', 'Cash', '2018-05-04', '', '28250', '45', '', '696', '696', ''),
('cuo-128842018050500', 'fgg', '25000', 'Cash', '2018-05-05', '', '', '', '', '', '67788', ''),
('cuo-128901980010100', 'kamau', '25500', 'Cash', '1980-01-01', 'ibra 54', '28000', '815', '20000', '0', '8000', '3315'),
('cuo-128912018051200', 'peter kamau', '3000', 'Cash', '2018-05-12', 'jamo', '3300', '0', '2511', '0', '789', '300'),
('cuo-129842018050500', 'hjj', '25000', 'Cash', '2018-05-05', '', '', '', '', '', '78', ''),
('cuo-130301980010100', 'peter', '6000', 'Cash', '1980-01-01', '', '0', '0', '0', '0', '', ''),
('cuo-132392018050600', 'biuki', '51000', 'Cash', '2018-05-06', 'ibra 54', '57000', '630', '50000', '0', '7000', '6630'),
('cuo-132982018050500', 'hjj', '25000', 'Cash', '2018-05-05', '', '', '', '', '55', '', ''),
('cuo-133502018050500', 'jdd', '25000', 'Cash', '2018-05-05', '', '', '', '0', '9999999999971750', '', ''),
('cuo-134711980010100', 'james', '50000', 'Cheque', '1980-01-01', 'kihiko', '58000', '0', '57500', '0', '500', '8000'),
('cuo-136292018050500', 'ty', '25000', 'Cash', '2018-05-05', '', '28250', '0', '', '28250', '28250', ''),
('cuo-136522018050500', 'jane', '4600', 'Cash', '2018-05-05', '', '', '', '', '', '', ''),
('cuo-136642018050500', 'gh', '25000', 'Cash', '2018-05-05', '', '28250', '0', '0', '548527', '576777', ''),
('cuo-136772018050500', 'jamo', '25000', 'Cash', '2018-05-05', '', '', '', '', '', '455', ''),
('cuo-138482018051200', 'simo', '600', 'Cash', '2018-05-12', 'francis', '660', '0', '360', '0', '300', '60'),
('cuo-138931980010100', 'wambui', '3600', 'Cash', '1980-01-01', '', '0', '0', '0', '0', '', ''),
('cuo-139622018050100', 'moi', '6100', 'Cash', '2018-05-01', '', '0', '0', '0', '0', '', ''),
('cuo-140582018050400', 'ty', '25000', 'Cash', '2018-05-04', '', '28250', '45', '0', '49750', '78000', ''),
('cuo-140682018050400', 'hj', '25000', 'Cash', '2018-05-04', '', '28250', '45', '27461', '0', '789', ''),
('cuo-141372018050500', 'dhj', '25000', 'Cash', '2018-05-05', '', '', '', '0', '3635527', '', ''),
('cuo-141722018050100', 'wangeci', '17100', 'Cash', '2018-05-01', '', '0', '0', '0', '0', '', ''),
('cuo-141952018050400', 'ghj', '25000', 'Cash', '2018-05-04', '', '28250', '45', '27360', '0', '890', ''),
('cuo-143742018050500', 'jj', '25000', 'Cash', '2018-05-05', '', '28000', '', '', '89749777', '89777777', ''),
('cuo-144341980010100', 'jane', '51090', 'Cash', '2018-05-07', 'ibra 54', '57231', '500', '0', '57231', '57231', '6641.7'),
('cuo-148552018050500', 'pae', '25000', 'Cash', '2018-05-05', '', '', '', '', '23', '', ''),
('cuo-148752018050400', 'james', '', 'Cheque', '2018-05-04', '', '0', '0', '0', '0', '', ''),
('cuo-151192018050500', 'kihiko', '25500', 'Cash', '2018-05-05', 'ibra 54', '28315', '500', '27747', '0', '568', '3315'),
('cuo-152422018051200', 'parotsec', '600', 'Cash', '2018-05-12', 'francis', '660', '0', '260', '0', '400', '60'),
('cuo-154082018050500', 'jj', '25000', 'Cash', '2018-05-05', '', '', '', '', '', '7889', ''),
('cuo-154302018050400', 'hdjj', '25000', 'Cash', '2018-05-04', '', '', '', '0', '321750', '', ''),
('cuo-157472018050500', 'jk', '25000', 'Cash', '2018-05-05', '', '', '', '', '23', '', ''),
('cuo-158222018050100', 'sosh', '187722', 'Cash', '2018-05-01', '', '0', '0', '0', '0', '', ''),
('cuo-158312018050500', 'dg', '25000', 'Cash', '2018-05-05', '', '28000', '', '', '', '6337', ''),
('cuo-158392018050400', 'tyy', '25000', 'Cash', '2018-05-04', '', '', '', '0', '677777777749527', '', ''),
('cuo-158432018050100', 'issac', '10800', 'Cash', '2018-05-01', '', '0', '0', '0', '0', '', ''),
('cuo-158522018050100', 'soi', '698301', 'Cash', '2018-05-01', '', '0', '0', '0', '0', '', ''),
('cuo-159232018050500', 'hjj', '25000', 'Cash', '2018-05-05', '', '', '', '', '', '89', ''),
('cuo-161232018050600', 'pk', '52400', 'Cash', '2018-05-06', 'ibra 54', '58712', '500', '58000', '0', '712', '6812'),
('cuo-165002018050500', 'jane', '25000', 'Cash', '2018-05-05', '', '28000', '250', '22332', '', '5668', ''),
('cuo-165212018050400', 'hj', '67200', 'Cash', '2018-05-04', '', '', '', '', '', '', ''),
('cuo-165662018050500', 'joshua', '1200', 'Cash', '2018-05-05', '', '', '', '', '', '', ''),
('cuo-166922018050400', 'hsj', '2400', 'Cash', '2018-05-04', '', '', '', '', '', '', ''),
('cuo-168192018051000', 'jamo', '500', 'Cash', '2018-05-10', 'kihiko', '500', '80', '0', '722', '1222', '80'),
('cuo-168682018050500', 'hhh', '25000', 'Cash', '2018-05-05', '', '20000', '8250', '19212', '0', '788', ''),
('cuo-169801980010100', 'kamwana', '778175', 'Cash', '1980-01-01', 'jamo', '902600', '83', '0', '4097400', '5000000', '124508'),
('cuo-177042018050500', 'ghh', '25000', 'Cash', '2018-05-05', '', '27996', '254', '0', '35641', '63637', ''),
('cuo-179442018050500', 'jk', '1200', 'Cash', '2018-05-05', '', '', '', '', '', '', ''),
('cuo-179862018050500', 'karongo', '80798', 'Cash', '2018-05-05', 'ibra 54', '91000', '301.74', '90000', '0', '1000', '10503.74'),
('cuo-181251980010100', 'jamo', '270783', 'Cash', '1980-01-01', '', '0', '0', '0', '0', '', ''),
('cuo-182552018050500', 'jdjk', '25000', 'Cash', '2018-05-05', '', '', '', '', '', '', ''),
('cuo-184272018050400', 'karanja', '', 'Cash', '2018-05-04', '', '0', '0', '0', '0', '', ''),
('cuo-187502018050200', 'james', '6000', 'Cash', '2018-05-02', '', '0', '0', '0', '0', '', ''),
('cuo-187912018051300', 'kanu', '1000', 'Cash', '2018-05-13', 'francis', '1045', '55', '367', '0', '678', '100'),
('cuo-187932018050600', 'frka', '25000', 'Cash', '2018-05-06', 'ibra 54', '27850', '400', '0', '651039', '678889', '3250'),
('cuo-188502018050500', 'jdjj', '25000', 'Cash', '2018-05-05', '', '', '', '', '', '', ''),
('cuo-189351980010100', 'wanuni', '51500', 'Cheque', '1980-01-01', 'kihiko', '56150', '500', '50000', '0', '6150', '5150'),
('cuo-189992018050500', 'uuu', '25000', 'Cash', '2018-05-05', '', '28000', '', '21210', '0', '6790', ''),
('cuo-190502018050400', 'jamo', '', 'Cash', '2018-05-04', '', '0', '0', '0', '0', '', ''),
('cuo-190882018050600', 'yuu', '76500', 'Cash', '2018-05-06', 'ibra 54', '86445', '0', '80768', '0', '5677', '9945'),
('cuo-191292018050400', 'kanyau', '5100', 'Cash', '2018-05-04', '', '', '', '', '', '', ''),
('cuo-191932018050500', 'uap', '50500', 'Cash', '2018-05-05', 'ibra 54', '57065', '0', '56398', '0', '667', '6565'),
('cuo-193492018050100', 'james', '1784472', 'Cash', '2018-05-01', '', '0', '0', '0', '0', '', ''),
('cuo-194682018050500', 'hj', '25000', 'Cash', '2018-05-05', '', '', '', '', '', '', ''),
('cuo-194902018050400', 'patrick', '9600', 'Cash', '2018-05-04', '', '0', '0', '0', '0', '', ''),
('cuo-195492018050500', 'fraka', '25000', 'Cash', '2018-05-05', '', '', '', '0', '', '', ''),
('cuo-197912018050500', 'fraka', '25000', 'Cash', '2018-05-05', '', '', '', '', '23', '', ''),
('cuo-199391980010100', 'john', '2603915', 'Cash', '1980-01-01', '', '0', '0', '0', '0', '', ''),
('cuo-199512018051000', '45kk', '125725', 'Cash', '2018-05-10', 'kihiko', '145801', '40', '144902', '0', '899', '20116');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_name` varchar(100) NOT NULL,
  `product_description` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `brand` varchar(100) NOT NULL,
  `available_quantity` varchar(100) NOT NULL,
  `buying_price` varchar(100) NOT NULL,
  `tax` varchar(100) NOT NULL,
  `entered_by` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `id` varchar(225) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date_entered` date NOT NULL,
  `product_supplier` varchar(100) NOT NULL,
  `product_unit` varchar(100) NOT NULL,
  `selling_price` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_name`, `product_description`, `category`, `brand`, `available_quantity`, `buying_price`, `tax`, `entered_by`, `status`, `id`, `product_id`, `date_entered`, `product_supplier`, `product_unit`, `selling_price`) VALUES
('pavilio', 'the best', 'laptop', 'hp', '464', '25000.00', '10', 'ibra 54', 'Active', '10', 0, '1979-12-20', 'james mwangi', 'pcs', ''),
('elitebook', ' corei 7', 'laptop', 'hp', '450', '35000', '10', 'kihiko', 'Active', '11', 0, '2018-05-09', 'francis kihiko', 'pcs', ''),
('lenovo', ' the best', 'laptop', 'hp', '500', '', '', 'jamo', 'Active', '12', 0, '0000-00-00', 'james mwangi', 'pcs', ''),
('simiti', ' best one', 'cement', 'mbamburi', '600', '', '', 'jamo', 'Active', '13', 0, '2018-05-11', 'supplier two', 'pcs', '700'),
('elitebook', ' dhh', 'laptop', 'hp', '100', '15000', '', 'jamo', 'Active', '14', 0, '2018-05-11', 'james mwangi', 'pcs', '25000'),
('mwaka', ' fgh', 'cement', 'Blue triangle', '0', '500', '', 'jamo', 'Active', '15', 0, '0000-00-00', 'supplier one', 'Kg', '600'),
('fresha', ' testing', 'cement', 'Blue triangle', '100', '400', '', 'jamo', 'Active', '16', 0, '2018-05-11', 'james mwangi', 'pcs', '500'),
('soft bread', '   testing bread', 'laptop', 'hp', '596', '45', '10', 'jamo', 'Active', '3', 0, '2018-05-11', 'james mwangi', ' ', '6789'),
('fresha', ' best milk product', 'Milk', 'kcc', '20', '1200', '10', '', 'Active', '4', 0, '2018-04-19', 'james mwangi', 'pcs', ''),
('delemone', ' this product', 'Milk', 'kcc', '0', '30087', '10', '', 'Active', '5', 0, '2018-04-18', 'james mwangi', 'Kg', ''),
('product one', ' this for testing', 'Soap', 'kibuyu', '160', '2345', '18', 'ibra 54', 'Active', '6', 0, '2018-04-20', 'james mwangi', 'Kg', ''),
('triangle one', ' this is the best', 'cement', 'Blue triangle', '375', '500', '10', 'ibra 54', 'Active', '7', 0, '2018-04-19', 'james mwangi', 'Kg', ''),
('triangle two', ' gkkgk fkkkf', 'cement', 'Blue triangle', '56', '1200', '8', 'ibra 54', 'Active', '8', 0, '2018-04-20', 'james mwangi', 'Kg', ''),
('fresh', ' ', 'Bread', 'vestive', '157', 'ff', '10', 'ibra 54', 'Inactive', '9', 0, '1980-01-18', 'supplier two', 'Kg', ''),
('cap', ' testing', 'laptop', 'hp', '997', '400', '', 'francis', 'Active', 'PO100271916', 0, '2018-05-12', 'supplier two', 'pcs', '500'),
('phone', ' testing', 'laptop', 'hp', '495', '450', '', 'francis', 'Active', 'PO382318852', 0, '2018-05-12', 'francis kihiko', 'Kg', '500');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `supplier_name` varchar(100) NOT NULL,
  `supplier_address` varchar(100) NOT NULL,
  `supplier_contact_one` varchar(100) NOT NULL,
  `supplier_contact_two` varchar(100) NOT NULL,
  `supplier_status` varchar(100) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`supplier_name`, `supplier_address`, `supplier_contact_one`, `supplier_contact_two`, `supplier_status`, `id`) VALUES
('francis kihiko', 'po box 14124 nakuru', '0707071957', '0735619293', 'Active', 1),
('supplier one', 'Po Box 143  njoro', '0707071957', '0735619293', 'Active', 2),
('supplier two', 'po box 890 mandera', '07982071957', '0735619293', 'Active', 3),
('supplier three', 'Po box 78\r\nMachakos', '0743531957', '0723456192', 'Inactive', 4),
('james mwangi', 'P.o box 568\r\nmombasa', '0745671957', '0795890978', 'Active', 5);

-- --------------------------------------------------------

--
-- Table structure for table `temp_table`
--

CREATE TABLE `temp_table` (
  `item` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `quantity` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `discount` varchar(100) NOT NULL,
  `total` varchar(100) NOT NULL,
  `order_date` date NOT NULL,
  `order_id` varchar(225) NOT NULL,
  `id` int(11) NOT NULL,
  `item_id` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `temp_table`
--

INSERT INTO `temp_table` (`item`, `description`, `quantity`, `price`, `discount`, `total`, `order_date`, `order_id`, `id`, `item_id`) VALUES
('triangle one', ' this is the best', '8', '500', '', '6000', '0000-00-00', '', 1, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '2400', '0000-00-00', '', 2, ''),
('delemone', ' this product', '8', '30087', '', '60174', '0000-00-00', '', 3, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '2400', '0000-00-00', '', 4, ''),
('', ' this product', '8', '30087', '', '1353915', '0000-00-00', '', 5, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '2400', '0000-00-00', '', 6, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '2400', '0000-00-00', '', 7, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '1200', '0000-00-00', '', 8, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '0', '0000-00-00', '', 9, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '1200', '0000-00-00', '', 10, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '1200', '0000-00-00', '', 11, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '2400', '0000-00-00', '', 12, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '2400', '0000-00-00', '', 13, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '2400', '0000-00-00', '', 14, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '2400', '0000-00-00', '', 15, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '1200', '0000-00-00', '', 16, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '2400', '0000-00-00', '', 17, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '1200', '0000-00-00', '', 18, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '2400', '0000-00-00', '', 19, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '0', '0000-00-00', '', 20, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '0', '0000-00-00', '', 21, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '4800', '0000-00-00', '', 22, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '3600', '0000-00-00', '', 23, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '4800', '0000-00-00', '', 24, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '6000', '0000-00-00', '', 25, ''),
('delemone', ' this product', '8', '30087', '', '1353915', '0000-00-00', '', 26, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '1200', '0000-00-00', '', 27, ''),
('delemone', ' this product', '8', '30087', '', '90261', '0000-00-00', '', 28, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '2400', '0000-00-00', '', 29, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '2400', '0000-00-00', '', 30, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '1200', '0000-00-00', '', 31, ''),
('triangle one', ' this is the best', '8', '500', '', '2500', '0000-00-00', '', 32, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '2400', '0000-00-00', '', 33, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '3600', '0000-00-00', '', 34, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '6000', '0000-00-00', '', 35, ''),
('soda soft', '   description testing   one  on one', '8', '2399.00', '', '2399', '0000-00-00', '', 36, ''),
('', '   description testing   one  on one', '8', '2399.00', '', '4798', '0000-00-00', '', 37, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '3600', '0000-00-00', '', 38, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '1200', '0000-00-00', '', 39, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '2400', '0000-00-00', '', 40, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '6000', '0000-00-00', '', 41, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '2400', '0000-00-00', '', 42, ''),
('triangle one', ' this is the best', '8', '500', '', '2000', '0000-00-00', '', 43, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '2400', '0000-00-00', '', 44, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '4800', '0000-00-00', '', 45, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '3600', '0000-00-00', '', 46, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '2400', '0000-00-00', '', 47, ''),
('triangle one', ' this is the best', '8', '500', '', '2000', '0000-00-00', '', 48, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '4800', '0000-00-00', '', 49, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '1200', '0000-00-00', '', 50, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '0', '0000-00-00', '', 51, ''),
('delemone', ' this product', '8', '30087', '', '120348', '0000-00-00', '', 52, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '4800', '0000-00-00', '', 53, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '4800', '0000-00-00', '', 54, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '2400', '0000-00-00', '', 55, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '1200', '0000-00-00', '', 56, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '3600', '0000-00-00', '', 57, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '2400', '0000-00-00', '', 58, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '2400', '0000-00-00', '', 59, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '2400', '0000-00-00', '', 60, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '2400', '0000-00-00', '', 61, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '2400', '0000-00-00', '', 62, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '3600', '0000-00-00', 'cuo-186442018042900', 63, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '1200', '0000-00-00', 'cuo-186442018042900', 64, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '3600', '0000-00-00', 'cuo-186442018042900', 65, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '2400', '0000-00-00', 'cuo-186442018042900', 66, ''),
('triangle one', ' this is the best', '8', '500', '', '1500', '0000-00-00', 'cuo-158592018042900', 67, ''),
('soda soft', '   description testing   one  on one', '8', '2399.00', '', '9596', '0000-00-00', 'cuo-158592018042900', 68, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '1200', '0000-00-00', 'cuo-102422018042900', 69, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '2400', '0000-00-00', 'cuo-102422018042900', 70, ''),
('product one', ' this for testing', '8', '2345', '', '2345', '0000-00-00', 'cuo-102422018042900', 71, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '0', '0000-00-00', 'cuo-102422018042900', 72, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '0', '0000-00-00', 'cuo-102422018042900', 73, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '2400', '0000-00-00', 'cuo-102422018042900', 74, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '1200', '0000-00-00', 'cuo-186442018042900', 75, ''),
('triangle one', ' this is the best', '8', '500', '', '0', '0000-00-00', 'cuo-186442018042900', 76, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '0', '0000-00-00', 'cuo-186442018042900', 77, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '3600', '0000-00-00', 'cuo-186442018042900', 78, ''),
('triangle one', ' this is the best', '8', '500', '', '1500', '0000-00-00', 'cuo-107042018042900', 79, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '1200', '0000-00-00', 'cuo-110432018042900', 80, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '4800', '0000-00-00', 'cuo-110432018042900', 81, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '3600', '0000-00-00', 'cuo-110432018042900', 82, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '2400', '0000-00-00', 'cuo-110432018042900', 83, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '2400', '0000-00-00', 'cuo-159022018042900', 84, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '1200', '0000-00-00', 'cuo-159022018042900', 85, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '3600', '0000-00-00', 'cuo-159022018042900', 86, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '2400', '0000-00-00', 'cuo-186442018042900', 87, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '1200', '0000-00-00', 'cuo-186442018042900', 88, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '2400', '0000-00-00', 'cuo-186442018042900', 89, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '2400', '0000-00-00', 'cuo-186442018042900', 90, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '1200', '0000-00-00', 'cuo-186442018042900', 91, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '0', '0000-00-00', 'cuo-186442018042900', 92, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '0', '0000-00-00', 'cuo-186442018042900', 93, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '3600', '0000-00-00', 'cuo-110902018042900', 94, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '1200', '0000-00-00', 'cuo-110902018042900', 95, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '2400', '0000-00-00', 'cuo-136622018042900', 96, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '2400', '0000-00-00', 'cuo-136622018042900', 97, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '2400', '0000-00-00', 'cuo-136622018042900', 98, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '1200', '0000-00-00', 'cuo-136622018042900', 99, ''),
('delemone', ' this product', '8', '30087', '', '60174', '0000-00-00', 'cuo-121212018042900', 100, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '3600', '0000-00-00', 'cuo-187702018042900', 101, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '0', '0000-00-00', 'cuo-157732018042900', 102, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '2400', '0000-00-00', 'cuo-146212018042900', 103, ''),
('delemone', ' this product', '8', '30087', '', '30087', '0000-00-00', 'cuo-151432018042900', 104, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '2400', '0000-00-00', 'cuo-162102018042900', 105, ''),
('triangle one', ' this is the best', '8', '500', '', '1000', '0000-00-00', 'cuo-162102018042900', 106, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '4800', '0000-00-00', 'cuo-162102018042900', 107, ''),
('delemone', ' this product', '8', '30087', '', '30087', '0000-00-00', 'cuo-162102018042900', 108, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '3600', '0000-00-00', 'cuo-186442018042900', 109, ''),
('delemone', ' this product', '8', '30087', '', '30087', '0000-00-00', 'cuo-186442018042900', 110, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '2400', '0000-00-00', 'cuo-115562018042900', 111, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '1200', '0000-00-00', 'cuo-115562018042900', 112, ''),
('delemone', ' this product', '8', '30087', '', '90261', '0000-00-00', 'cuo-115562018042900', 113, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '2400', '0000-00-00', 'cuo-184142018042900', 114, ''),
('fresha', ' best milk product', '8', '1200', '', '2400', '0000-00-00', 'cuo-184142018042900', 115, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '1200', '0000-00-00', 'cuo-184142018042900', 116, ''),
('triangle one', ' this is the best', '8', '500', '', '1500', '0000-00-00', 'cuo-183122018042900', 117, ''),
('fresha', ' best milk product', '8', '1200', '', '2400', '0000-00-00', 'cuo-183122018042900', 118, ''),
('soft bread', ' testing bread', '8', '45', '', '225', '0000-00-00', 'cuo-183122018042900', 119, ''),
('triangle one', ' this is the best', '8', '500', '', '1000', '0000-00-00', 'cuo-189402018042900', 120, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '4800', '0000-00-00', 'cuo-121042018042900', 121, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '1200', '0000-00-00', 'cuo-192282018042900', 122, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '1200', '0000-00-00', 'cuo-192282018042900', 123, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '1200', '0000-00-00', 'cuo-145052018042900', 124, ''),
('product one', ' this for testing', '8', '2345', '', '4690', '0000-00-00', 'cuo-145052018042900', 125, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '2400', '0000-00-00', 'cuo-101382018042900', 126, ''),
('delemone', ' this product', '8', '30087', '', '30087', '0000-00-00', 'cuo-101382018042900', 127, ''),
('product one', ' this for testing', '8', '2345', '', '4690', '0000-00-00', 'cuo-163182018042900', 128, ''),
('delemone', ' this product', '8', '30087', '', '30087', '0000-00-00', 'cuo-163182018042900', 129, ''),
('soda soft', '   description testing   one  on one', '8', '2399.00', '', '4798', '0000-00-00', 'cuo-139952018042900', 130, ''),
('product one', ' this for testing', '8', '2345', '', '2345', '0000-00-00', 'cuo-139952018042900', 131, ''),
('triangle one', ' this is the best', '8', '500', '', '1000', '0000-00-00', 'cuo-199832018042900', 132, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '1200', '0000-00-00', 'cuo-199832018042900', 133, ''),
('triangle one', ' this is the best', '8', '500', '', '500', '0000-00-00', 'cuo-112762018042900', 134, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '2400', '0000-00-00', 'cuo-125132018042900', 135, ''),
('product one', ' this for testing', '8', '2345', '', '4690', '0000-00-00', 'cuo-170502018043000', 136, ''),
('soft bread', ' testing bread', '8', '45', '', '90', '0000-00-00', 'cuo-170502018043000', 137, ''),
('fresha', ' best milk product', '8', '1200', '', '1200', '0000-00-00', 'cuo-179632018043000', 138, ''),
('product one', ' this for testing', '8', '2345', '', '4690', '0000-00-00', 'cuo-179632018043000', 139, ''),
('product one', ' this for testing', '8', '2345', '', '4690', '0000-00-00', 'cuo-106042018043000', 140, ''),
('soft bread', ' testing bread', '8', '45', '', '45', '0000-00-00', 'cuo-106042018043000', 141, ''),
('product one', ' this for testing', '8', '2345', '', '11725', '0000-00-00', 'cuo-106042018043000', 142, ''),
('delemone', ' this product', '8', '30087', '', '30087', '0000-00-00', 'cuo-150152018043000', 143, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '1200', '0000-00-00', 'cuo-150152018043000', 144, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '2400', '0000-00-00', 'cuo-150152018043000', 145, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '6000', '0000-00-00', 'cuo-105092018043000', 146, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '4800', '0000-00-00', 'cuo-133312018043000', 147, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '4800', '0000-00-00', 'cuo-153452018043000', 148, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '6000', '0000-00-00', 'cuo-153452018043000', 149, ''),
('triangle two', ' gkkgk fkkkf', '8', '1200', '', '1200', '0000-00-00', 'cuo-153452018043000', 150, ''),
('fresha', ' best milk product', '29', '1200', '', '34800', '0000-00-00', 'cuo-153452018043000', 151, ''),
('triangle one', ' this is the best', '8', '500', '', '2500', '0000-00-00', 'cuo-153452018043000', 152, ''),
('triangle one', ' this is the best', '8', '500', '', '500', '0000-00-00', 'cuo-153452018043000', 153, ''),
('fresha', ' best milk product', '2', '1200', '', '2400', '0000-00-00', 'cuo-103362018043000', 154, ''),
('triangle one', ' this is the best', '6', '500', '', '3000', '0000-00-00', 'cuo-103362018043000', 155, ''),
('fresha', ' best milk product', '1', '1200', '', '1200', '0000-00-00', 'cuo-175702018043000', 156, ''),
('triangle one', ' this is the best', '6', '500', '', '3000', '0000-00-00', 'cuo-175702018043000', 157, ''),
('triangle two', ' gkkgk fkkkf', '5', '1200', '', '6000', '0000-00-00', 'cuo-175702018043000', 158, ''),
('soft bread', ' testing bread', '1', '45', '', '45', '0000-00-00', 'cuo-135482018043000', 159, ''),
('fresha', ' best milk product', '3', '1200', '', '3600', '0000-00-00', 'cuo-172232018043000', 160, ''),
('triangle two', ' gkkgk fkkkf', '4', '1200', '', '4800', '0000-00-00', 'cuo-172232018043000', 161, ''),
('delemone', ' this product', '3', '30087', '', '90261', '0000-00-00', 'cuo-172232018043000', 162, ''),
('triangle one', ' this is the best', '2', '500', '', '1000', '0000-00-00', 'cuo-158552018043000', 163, ''),
('fresha', ' best milk product', '7', '1200', '', '8400', '0000-00-00', 'cuo-158552018043000', 164, ''),
('delemone', ' this product', '4', '30087', '', '120348', '0000-00-00', 'cuo-158552018043000', 165, ''),
('fresha', ' best milk product', '2', '1200', '', '2400', '0000-00-00', 'cuo-137332018043000', 166, ''),
('triangle one', ' this is the best', '3', '500', '', '1500', '0000-00-00', 'cuo-137332018043000', 167, ''),
('triangle two', ' gkkgk fkkkf', '3', '1200', '', '3600', '0000-00-00', 'cuo-143722018050100', 170, ''),
('triangle two', ' gkkgk fkkkf', '2', '1200', '', '2400', '0000-00-00', 'cuo-173062018050100', 171, ''),
('soft bread', ' testing bread', '2', '45', '', '90', '0000-00-00', 'cuo-173062018050100', 172, ''),
('soft bread', ' testing bread', '1', '45', '', '45', '0000-00-00', 'cuo-162352018050100', 174, ''),
('triangle two', ' gkkgk fkkkf', '3', '1200', '', '3600', '0000-00-00', 'cuo-162352018050100', 175, ''),
('fresha', ' best milk product', '4', '1200', '', '4800', '0000-00-00', 'cuo-113342018043000', 177, ''),
('triangle two', ' gkkgk fkkkf', '4', '1200', '', '4800', '0000-00-00', 'cuo-146532018043000', 179, ''),
('fresha', ' best milk product', '8', '1200', '', '9600', '0000-00-00', 'cuo-133901980010100', 180, ''),
('triangle two', ' gkkgk fkkkf', '2', '1200', '', '2400', '0000-00-00', 'cuo-133901980010100', 181, ''),
('soft bread', ' testing bread', '3', '45', '', '135', '0000-00-00', 'cuo-133901980010100', 182, ''),
('fresha', ' best milk product', '4', '1200', '', '4800', '0000-00-00', 'cuo-187681980010100', 183, ''),
('triangle two', ' gkkgk fkkkf', '2', '1200', '', '2400', '0000-00-00', 'cuo-187681980010100', 184, ''),
('soft bread', ' testing bread', '2', '45', '', '90', '0000-00-00', 'cuo-187681980010100', 185, ''),
('triangle one', ' this is the best', '24', '500', '', '12000', '0000-00-00', 'cuo-187681980010100', 186, ''),
('fresha', ' best milk product', '5', '1200', '', '6000', '0000-00-00', 'cuo-133361980010100', 187, ''),
('triangle one', ' this is the best', '1', '500', '', '500', '0000-00-00', 'cuo-133361980010100', 188, ''),
('fresha', ' best milk product', '2', '1200', '', '2400', '0000-00-00', 'cuo-149261980010100', 189, ''),
('triangle one', ' this is the best', '2', '500', '', '1000', '0000-00-00', 'cuo-149261980010100', 190, ''),
('fresha', ' best milk product', '3', '1200', '', '3600', '0000-00-00', 'cuo-118871980010100', 191, ''),
('triangle two', ' gkkgk fkkkf', '3', '1200', '', '3600', '0000-00-00', 'cuo-118871980010100', 192, ''),
('fresha', ' best milk product', '56', '1200', '', '67200', '0000-00-00', 'cuo-175571980010100', 193, ''),
('triangle two', ' gkkgk fkkkf', '4', '1200', '', '4800', '0000-00-00', 'cuo-175571980010100', 194, ''),
('fresha', ' best milk product', '7', '1200', '', '8400', '0000-00-00', 'cuo-130301980010100', 197, ''),
('fresha', ' best milk product', '5', '1200', '', '6000', '0000-00-00', 'cuo-138931980010100', 211, ''),
('triangle one', ' this is the best', '7', '500', '', '3500', '0000-00-00', 'cuo-138931980010100', 212, ''),
('triangle two', ' gkkgk fkkkf', '2', '1200', '', '2400', '0000-00-00', 'cuo-138931980010100', 213, ''),
('fresha', ' best milk product', '3', '1200', '', '3600', '0000-00-00', 'cuo-117052018050100', 214, ''),
('triangle one', ' this is the best', '3', '500', '', '1500', '0000-00-00', 'cuo-117052018050100', 215, ''),
('fresha', ' best milk product', '5', '1200', '', '6000', '0000-00-00', 'cuo-100502018050100', 239, ''),
('fresha', ' best milk product', '3', '1200', '', '3600', '0000-00-00', 'cuo-160412018050100', 240, ''),
('fresha', ' best milk product', '5', '1200', '', '6000', '0000-00-00', 'cuo-155902018050100', 241, ''),
('triangle one', ' this is the best', '4', '500', '', '2000', '0000-00-00', 'cuo-155902018050100', 242, ''),
('fresha', ' best milk product', '2', '1200', '', '2400', '0000-00-00', 'cuo-134011980010100', 243, ''),
('fresha', ' best milk product', '6', '1200', '', '7200', '0000-00-00', 'cuo-183651980010100', 248, ''),
('fresha', ' best milk product', '7', '1200', '', '8400', '0000-00-00', 'cuo-187502018050200', 251, ''),
('triangle one', ' this is the best', '5', '500', '', '2500', '0000-00-00', 'cuo-187502018050200', 252, ''),
('pavilio', 'the best', '20', '25000.00', '', '500000', '0000-00-00', 'cuo-178802018050400', 253, ''),
('pavilio', 'the best', '50', '25000.00', '', '1250000', '0000-00-00', 'cuo-159942018050400', 254, ''),
('fresha', ' best milk product', '4', '1200', '', '4800', '0000-00-00', 'cuo-126302018050300', 255, ''),
('fresha', ' best milk product', '3', '1200', '', '3600', '0000-00-00', 'cuo-153672018050300', 256, ''),
('pavilio', 'the best', '1', '25000.00', '', '25000', '0000-00-00', 'cuo-162612018050400', 265, ''),
('pavilio', 'the best', '1', '25000.00', '', '25000', '0000-00-00', 'cuo-148892018050400', 267, ''),
('pavilio', 'the best', '1', '25000.00', '', '25000', '0000-00-00', 'cuo-165022018050400', 268, ''),
('pavilio', 'the best', '1', '25000.00', '', '25000', '0000-00-00', 'cuo-190302018050400', 269, ''),
('pavilio', 'the best', '1', '25000.00', '', '25000', '0000-00-00', 'cuo-159552018050400', 270, ''),
('pavilio', 'the best', '1', '25000.00', '', '25000', '0000-00-00', 'cuo-100232018050400', 273, ''),
('pavilio', 'the best', '3', '25000.00', '', '75000', '0000-00-00', 'cuo-145732018050600', 284, ''),
('pavilio', 'the best', '2', '25000.00', '', '50000', '0000-00-00', 'cuo-102092018050600', 285, ''),
('triangle two', ' gkkgk fkkkf', '3', '1200', '', '3600', '0000-00-00', 'cuo-102092018050600', 286, ''),
('pavilio', 'the best', '1', '25000.00', '', '25000', '0000-00-00', 'cuo-113752018050600', 287, ''),
('triangle one', ' this is the best', '2', '500', '', '1000', '0000-00-00', 'cuo-113752018050600', 288, ''),
('pavilio', 'the best', '1', '25000.00', '', '25000', '0000-00-00', 'cuo-138872018050600', 289, ''),
('triangle one', ' this is the best', '1', '500', '', '500', '0000-00-00', 'cuo-138872018050600', 290, ''),
('pavilio', 'the best', '1', '25000.00', '', '25000', '0000-00-00', 'cuo-113532018050600', 291, ''),
('triangle one', ' this is the best', '1', '500', '', '500', '0000-00-00', 'cuo-113532018050600', 292, ''),
('pavilio', 'the best', '1', '25000.00', '', '25000', '0000-00-00', 'cuo-118952018050600', 293, ''),
('triangle one', ' this is the best', '1', '500', '', '500', '0000-00-00', 'cuo-118952018050600', 294, ''),
('pavilio', 'the best', '1', '25000.00', '', '25000', '0000-00-00', 'cuo-102532018050600', 295, ''),
('triangle one', ' this is the best', '3', '500', '', '1500', '0000-00-00', 'cuo-102532018050600', 296, ''),
('soft bread', ' testing bread', '3', '45', '', '135', '0000-00-00', 'cuo-195872018050600', 297, ''),
('pavilio', 'the best', '2', '25000.00', '', '50000', '0000-00-00', 'cuo-195872018050600', 298, ''),
('pavilio', 'the best', '3', '25000.00', '', '75000', '0000-00-00', 'cuo-167072018050600', 299, ''),
('triangle one', ' this is the best', '1', '500', '', '500', '0000-00-00', 'cuo-167072018050600', 300, ''),
('pavilio', 'the best', '5', '25000.00', '', '125000', '0000-00-00', 'cuo-195002018050600', 301, ''),
('triangle one', ' this is the best', '2', '500', '', '1000', '0000-00-00', 'cuo-195002018050600', 302, ''),
('pavilio', 'the best', '1', '25000.00', '', '25000', '0000-00-00', 'cuo-118902018050600', 303, ''),
('triangle one', ' this is the best', '1', '500', '', '500', '0000-00-00', 'cuo-118902018050600', 304, ''),
('pavilio', 'the best', '1', '25000.00', '', '25000', '0000-00-00', 'cuo-138602018050600', 305, ''),
('triangle two', ' gkkgk fkkkf', '2', '1200', '', '2400', '0000-00-00', 'cuo-138602018050600', 306, ''),
('pavilio', 'the best', '1', '25000.00', '', '25000', '0000-00-00', 'cuo-139932018050600', 307, ''),
('triangle one', ' this is the best', '2', '500', '', '1000', '0000-00-00', 'cuo-139932018050600', 308, ''),
('pavilio', 'the best', '2', '25000.00', '', '50000', '0000-00-00', 'cuo-170842018050600', 309, ''),
('triangle one', ' this is the best', '2', '500', '', '1000', '0000-00-00', 'cuo-170842018050600', 310, ''),
('pavilio', 'the best', '1', '25000.00', '', '25000', '0000-00-00', 'cuo-167792018050600', 311, ''),
('triangle one', ' this is the best', '2', '500', '', '1000', '0000-00-00', 'cuo-167792018050600', 312, ''),
('pavilio', 'the best', '1', '25000.00', '', '25000', '0000-00-00', 'cuo-192872018050600', 313, ''),
('triangle one', ' this is the best', '2', '500', '', '1000', '0000-00-00', 'cuo-192872018050600', 314, ''),
('pavilio', 'the best', '1', '25000.00', '', '25000', '0000-00-00', 'cuo-161622018050700', 315, ''),
('triangle one', ' this is the best', '1', '500', '', '500', '0000-00-00', 'cuo-161622018050700', 316, ''),
('pavilio', 'the best', '2', '25000.00', '', '50000', '0000-00-00', 'cuo-198002018050700', 319, ''),
('pavilio', 'the best', '3', '25000.00', '', '75000', '0000-00-00', 'cuo-133932018050700', 328, ''),
('pavilio', 'the best', '1', '25000.00', '', '25000', '0000-00-00', 'cuo-162202018050700', 332, ''),
('pavilio', 'the best', '3', '25000.00', '', '75000', '0000-00-00', 'cuo-175941980010100', 337, ''),
('pavilio', 'the best', '3', '25000.00', '', '75000', '0000-00-00', 'cuo-179922018051000', 344, ''),
('triangle one', ' this is the best', '3', '500', '', '1500', '0000-00-00', 'cuo-179922018051000', 345, ''),
('triangle one', ' this is the best', '1', '500', '', '500', '0000-00-00', 'cuo-187862018051000', 347, ''),
('pavilio', 'the best', '2', '25000.00', '', '50000', '0000-00-00', 'cuo-199801980010100', 351, ''),
('pavilio', 'the best', '1', '25000.00', '', '25000', '0000-00-00', 'cuo-182752018051100', 352, ''),
('triangle one', ' this is the best', '1', '500', '', '500', '0000-00-00', 'cuo-182752018051100', 353, ''),
('pavilio', 'the best', '2', '', '', '0', '0000-00-00', 'cuo-155002018051100', 356, ''),
('pavilio', 'the best', '3', '', '', '0', '0000-00-00', 'cuo-176572018051100', 357, ''),
('mwaka', ' fgh', '3', '600', '', '1800', '0000-00-00', 'cuo-176572018051100', 358, ''),
('mwaka', ' fgh', '2', '600', '', '1200', '0000-00-00', 'cuo-131242018051100', 361, ''),
('cap', ' testing', '2', '500', '', '1000', '0000-00-00', 'cuo-178762018051200', 362, 'PO100271916'),
('cap', ' testing', '4', '500', '', '2000', '0000-00-00', 'cuo-141812018051200', 365, 'PO100271916'),
('cap', ' testing', '50', '500', '', '25000', '0000-00-00', 'cuo-145242018051200', 368, ''),
('cap', ' testing', '9', '500', '', '4500', '0000-00-00', 'cuo-192352018051200', 369, ''),
('phone', ' testing', '1', '500', '', '500', '0000-00-00', 'cuo-192352018051200', 370, ''),
('pavilio', 'the best', '1', '', '', '0', '0000-00-00', 'cuo-133132018052800', 371, '10');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `id` int(11) NOT NULL,
  `level` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `email`, `password`, `status`, `id`, `level`) VALUES
('farmers', 'kamaa@gmail.com', 'hardware.com', 'Active', 60, ''),
('farmers', '', 'hardware.com', '', 61, ''),
('farmers', '', 'hardware.com', '', 62, ''),
('farmers', '', 'hardware.com', '', 63, ''),
('farmers', '', 'hardware.com', '', 64, ''),
('farmers', '', 'hardware.com', '', 65, ''),
('farmers', 'gsh@gmail.com', 'a1b2c3d4e5.com', '', 68, ''),
('farmers', 'gsh@gmail.com', 'a1b2c3d4e5.com', '', 69, ''),
('kihiko', 'kihiko2014@gmail.com', 'a1b2c3d4e5.com', '', 71, ''),
('margrete', 'wambui@gmail.com', 'hardware.com', '', 76, ''),
('kihiko', 'kihiko2014@gmail.com', 'admincjfj', '', 80, ''),
('hardware', 'fhjdjjd@mail.com', 'hardware.com', '', 83, ''),
('software', 'software@gmail.com', 'hardware.com', '', 92, ''),
('staus', 'status@gmail.com', 'hardware.comfhjkkk', 'Active', 101, ''),
('254', '254@gmail.com', 'hardware.comhfhjj', 'Inactive', 102, ''),
('254', '254@gmail.com', 'hardware.comhfhjj', 'Inactive', 103, ''),
('254', '254@gmail.com', 'hardware.comhfhjj', 'Inactive', 104, ''),
('254', '254@gmail.com', 'hardware.comhfhjj', 'Inactive', 105, ''),
('254', '254@gmail.com', 'hardware.comhfhjj', 'Inactive', 106, ''),
('254', '254@gmail.com', 'hardware.comhfhjj', 'Inactive', 110, ''),
('254', '254@gmail.com', 'hardware.comhfhjj', 'Inactive', 111, ''),
('254', '254@gmail.com', 'hardware.comhfhjj', 'Inactive', 114, ''),
('hardware', 'fjs@gmail.com', 'hardware.com', 'Active', 115, ''),
('hardware', 'fjs@gmail.com', 'hardware.com', 'Active', 116, ''),
('hardware', 'fjs@gmail.com', 'hardware.com', 'Active', 117, ''),
('fhjjfj', 'fjj@gmail.com', 'hardware.comgjkk', 'Inactive', 118, ''),
('fhjjfj', 'fjj@gmail.com', 'hardware.comgjkk', 'Inactive', 119, ''),
('fhjjfj', 'fjj@gmail.com', 'hardware.comgjkk', 'Inactive', 120, ''),
('bbb', 'Rj@gmail.com', 'hardware.com', 'Active', 121, ''),
('bbb', 'Rj@gmail.com', 'hardware.com', 'Active', 122, ''),
('hardware', 'hard@gmail.com', 'hardware.com', 'Active', 123, ''),
('hardware', 'kihiko2014@gmail.com', 'hardware.comkxk', 'Active', 124, ''),
('hardware', 'kihiko2014@gmail.com', 'hardware.comkxk', 'Active', 125, ''),
('hardware', 'kihiko2014@gmail.com', 'hardware.comkxk', 'Active', 126, ''),
('hardware', 'kihiko2014@gmail.com', 'hardware.comkxk', 'Active', 127, ''),
('hardware', 'kihiko2014@gmail.com', 'hardware.comkxk', 'Active', 128, ''),
('hardware', 'kihiko2014@gmail.com', 'hardware.comkxk', 'Active', 129, ''),
('hardware', 'kihiko2014@gmail.com', 'hardware.comkxk', 'Active', 130, ''),
('hardware', 'kihiko2014@gmail.com', 'hardware.comkxk', 'Active', 131, ''),
('hardwarekdkwkkk', 'john@gmail.com', 'hardware.com', 'Active', 132, ''),
('hardwarekdkwkkk', 'john@gmail.com', 'hardware.com', 'Active', 133, ''),
('134v ', 'john@gmail.com', 'hardware.com', 'Active', 134, ''),
('banice', 'ban@gmail.com', 'hardware.comfjjj', 'Active', 138, ''),
('admin', '76889990000@gmail.com', 'adminjjjj', 'Inactive', 139, ''),
('pato', 'pato@gmail.com', '2667788889', 'Inactive', 140, ''),
('jamo', 'jamo@gmail.com', 'hardware.com', 'Active', 141, ''),
('hama', 'ha@gmail.com', 'hardware.com', 'Active', 142, ''),
('ghh', 'jjjjj@gmail.com', 'hardware.com', 'Active', 143, ''),
('dhjkkskk', 'kd@gmail.com', 'hardware.com', 'Active', 144, ''),
('patic', 'dhdjjk@gmail.com', 'hardware.com', 'Inactive', 146, ''),
('games', 'dkek543@gmail.com', '12345678', '', 147, ''),
('lahab', 'lab@gmail.com', 'hardware.comjmdkk', 'Inactive', 148, ''),
('john njoroge karongo', 'jasma@gmail.com', '1234565566', 'Active', 150, ''),
('peter karanja kamau', 'karanja@gmail.com', '123455678', 'Inactive', 151, ''),
('fraka', 'francis@gmail.com', '12345678', 'Active', 153, 'Admin'),
('jamo', 'jamo@gmail.com', '12345678', 'Active', 154, 'Normal User');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD KEY `id` (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD KEY `id` (`id`);

--
-- Indexes for table `company_details`
--
ALTER TABLE `company_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_order`
--
ALTER TABLE `customer_order`
  ADD PRIMARY KEY (`order_Id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `order_table`
--
ALTER TABLE `order_table`
  ADD KEY `id` (`id`);

--
-- Indexes for table `order_transaction`
--
ALTER TABLE `order_transaction`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `temp_table`
--
ALTER TABLE `temp_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `company_details`
--
ALTER TABLE `company_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customer_order`
--
ALTER TABLE `customer_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=242;

--
-- AUTO_INCREMENT for table `order_table`
--
ALTER TABLE `order_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `temp_table`
--
ALTER TABLE `temp_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=372;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
