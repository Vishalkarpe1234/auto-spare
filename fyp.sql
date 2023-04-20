-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2023 at 12:46 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fyp`
--
CREATE DATABASE IF NOT EXISTS `fyp` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `fyp`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `seller_or_admin` varchar(100) NOT NULL,
  `status` varchar(255) NOT NULL,
  `seller_id` int(11) NOT NULL,
  `cnic` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `seller_or_admin`, `status`, `seller_id`, `cnic`) VALUES
(1, 'Rohit Chavan', 'rohit@gmail.com', '$2y$10$HRGigT303opBANusdcwWFedLPuyig5QQ/mPubgsbp6spIs2MfhGLa', 'admin', '', 0, '21231234'),
(36, 'Rohit', 'rohit.jadhav@gmail.com', '$2y$10$Wbg3wCyYQ3/IwiN92TwdqO789j.7sIlK.jjhJGVSGI/4OL5MOoVUK', 'manager', '', 0, '232'),
(43, 'Ankush', 'ankush@gmail.com', '$2y$10$pCC1/JpQHLLmsz4818gxFuVD.DJIX2Dz8EG2Nh5Kssf8H8xOlYNKm', 'seller', '', 23, '43371-3176184-3'),
(44, 'Rahul', 'rahul@gmail.com', '$2y$10$8bhd3SB3Th7d2osLJcchz.ghzmg5tvILTPT3s37GJ4RF4fr1Ob/ha', 'seller', '', 24, '53347-3167494-3');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` text NOT NULL,
  `admin_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`, `admin_id`) VALUES
(1, 'BMW', '3'),
(2, ' Ferrari', '3'),
(3, 'Alfa Romeo', '3'),
(4, ' Aston Martin', '3'),
(8, 'Lamborghini', ''),
(11, 'Maserati', ''),
(14, 'Porsche', ''),
(15, 'Honda', ''),
(16, 'Mercedes-Benz', ''),
(17, 'Toyota', ''),
(21, 'Pagani', '1');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `qty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `p_id`, `ip_add`, `user_id`, `qty`) VALUES
(20, 45, '', 18, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL,
  `admin_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`, `admin_id`) VALUES
(1, 'Tyres and Wheels', '3'),
(2, 'Tools', '3'),
(3, 'Gadgets', ''),
(4, 'Oil', '3'),
(6, ' Brakes', ''),
(7, 'Lights', '1'),
(9, 'Audio OR Video', '');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `product_id` int(100) NOT NULL,
  `payment_status` varchar(200) NOT NULL,
  `qty` int(100) NOT NULL,
  `order_status` varchar(100) NOT NULL,
  `edit_status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `product_id`, `payment_status`, `qty`, `order_status`, `edit_status`) VALUES
(8, 16, 40, 'cash_on_delivery', 2, 'process_order', 'uncomplete'),
(9, 16, 42, 'cash_on_delivery', 1, 'process_order', 'uncomplete'),
(10, 16, 43, 'cash_on_delivery', 1, 'process_order', 'uncomplete'),
(11, 16, 46, 'cash_on_delivery', 1, 'process_order', 'uncomplete'),
(12, 16, 46, 'cash_on_delivery', 1, 'process_order', 'uncomplete'),
(13, 16, 43, 'cash_on_delivery', 1, 'process_order', 'uncomplete'),
(14, 16, 44, 'payment', 1, 'process_order', 'uncomplete'),
(15, 16, 44, 'cash_on_delivery', 1, 'process_c', '*AD*usman gujjar1'),
(16, 16, 48, 'cash_on_delivery', 1, 'process_order', 'uncomplete'),
(17, 16, 57, 'cash_on_delivery', 2, 'process_order', 'uncomplete'),
(18, 20, 59, 'cash_on_delivery', 1, 'process_order', 'uncomplete'),
(19, 20, 64, 'cash_on_delivery', 1, 'process_order', '*AD*Rohit Chavan1'),
(20, 20, 62, 'cash_on_delivery', 1, 'process_order', 'uncomplete'),
(21, 21, 60, 'cash_on_delivery', 1, 'process_order', 'uncomplete'),
(22, 21, 69, 'cash_on_delivery', 1, 'process_order', 'uncomplete');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(100) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `account_name` varchar(100) NOT NULL,
  `card_no` varchar(100) NOT NULL,
  `card_H_N` varchar(100) NOT NULL,
  `exp_date` varchar(100) NOT NULL,
  `cvc` varchar(100) NOT NULL,
  `address` varchar(300) NOT NULL,
  `Total_Bill` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `user_id`, `account_name`, `card_no`, `card_H_N`, `exp_date`, `cvc`, `address`, `Total_Bill`) VALUES
(1, '12', 'VISA', '1234567891231', 'ali', '12-2020', '123', 'lhr-OR-lhr', 0),
(2, '16', 'VISA', '1234567890123', 'ussss', '12-12-2022', '1231', 'qqqqqq-OR-sfa', 0);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` int(11) NOT NULL,
  `product_brand` int(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL,
  `product_condition` varchar(100) NOT NULL,
  `pro_user_add_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_qty`, `product_desc`, `product_image`, `product_keywords`, `product_condition`, `pro_user_add_id`) VALUES
(60, 1, 2, 'Alloys', 40000, 4, 'Black Stylish alloys with premium look', '1751622963.jpg', 'Alloys', 'New_product', '1'),
(61, 7, 1, 'Headlight', 15000, 2, 'Original projector headlamp with DRL', '880672832.jpg', 'Headlamp', 'New_product', '1'),
(62, 1, 4, 'Disc Brakes', 5000, 2, 'Disc brakes ', '613313281.jpg', 'Brakes', 'New_product', '1'),
(63, 2, 11, 'Air Filter', 3500, 1, 'Air Filter', '847495678.jpg', 'Filter', 'New_product', '1'),
(64, 4, 14, 'Castrol  Oil', 1500, 1, 'Premium oil for your smooth running car', '148040612.jpeg', '', 'New_product', '44'),
(66, 2, 17, 'Side Mirrors', 2500, 2, '', '1445841108.jpg', '', 'New_product', '43'),
(67, 1, 16, 'MRF Tyres', 60000, 4, 'New better tyres with great grip and handling', '318430364.jpg', '', 'New_product', '43'),
(69, 3, 16, 'Infotainment Screen', 15000, 1, 'Infotainment Screen 10\" with Android Auto and Apple CarPlay system inbuilt', '616949632.jpg', '', 'New_product', '44'),
(70, 2, 11, 'Windshield Wiper', 5000, 2, '', '1541226865.jpg', '', 'New_product', '44'),
(71, 2, 17, 'Suspensions', 8000, 1, '', '951636520.jpg', '', 'New_product', '44'),
(72, 2, 16, 'Windshield', 15000, 1, '', '872970478.jpg', '', 'New_product', '43');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_whish_list`
--

CREATE TABLE `tbl_whish_list` (
  `id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_whish_list`
--

INSERT INTO `tbl_whish_list` (`id`, `member_id`, `product_id`) VALUES
(7, 16, 43),
(8, 16, 46),
(9, 16, 42);

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(300) NOT NULL,
  `last_name` varchar(300) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(300) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(300) NOT NULL,
  `user_type` varchar(300) NOT NULL,
  `cnic` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`, `user_type`, `cnic`) VALUES
(20, 'Vishal', 'Karpe', 'vishal.karpe@gmail.com', '25f9e794323b453885f5181f1b624d0b', '03004444444', 'lahhhh pkkk jsakjska', 'sa', 'customer', '35200-4299999-7'),
(21, 'Sandip', 'Bagul', 'sandip@gmail.com', '25f9e794323b453885f5181f1b624d0b', '7856437387', 'Nashik', '', 'customer', '75416-6479638-4'),
(22, 'Nikhil', 'Patil', 'nikhil@gmail.com', '25f9e794323b453885f5181f1b624d0b', '7316875135', 'Ahamadnagar', '', 'customer', '46623-7319426-5'),
(23, 'Ankush', 'Rajput', 'ankush@gmail.com', '$2y$10$pCC1/JpQHLLmsz4818gxFuVD.DJIX2Dz8EG2Nh5Kssf8H8xOlYNKm', '9453127642', 'Nagpur', '', 'seller', '43371-3176184-3'),
(24, 'Rahul', 'Desale', 'rahul@gmail.com', '$2y$10$8bhd3SB3Th7d2osLJcchz.ghzmg5tvILTPT3s37GJ4RF4fr1Ob/ha', '9413136752', 'Saswad', '', 'seller', '53347-3167494-3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `fk_product_cat` (`product_cat`),
  ADD KEY `fk_product_brand` (`product_brand`);

--
-- Indexes for table `tbl_whish_list`
--
ALTER TABLE `tbl_whish_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `tbl_whish_list`
--
ALTER TABLE `tbl_whish_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk_product_brand` FOREIGN KEY (`product_brand`) REFERENCES `brands` (`brand_id`),
  ADD CONSTRAINT `fk_product_cat` FOREIGN KEY (`product_cat`) REFERENCES `categories` (`cat_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
