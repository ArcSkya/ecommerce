-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 14, 2017 at 09:14 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_mvc`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `salt` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL,
  `status` tinyint(1) DEFAULT '0',
  `last_login` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `username`, `password`, `salt`, `email`, `status`, `last_login`) VALUES
(1, 'archana', 'a219b2fec33687a2d636df5c43a55e4711b0f969', '57b4d8d92f35f', 'arc@gmail.com', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `session_id` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  `discount` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `size` varchar(50) NOT NULL,
  `color` varchar(50) NOT NULL,
  `created_timestamp` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_cart`
--

INSERT INTO `tbl_cart` (`id`, `product_id`, `session_id`, `price`, `discount`, `quantity`, `customer_id`, `size`, `color`, `created_timestamp`) VALUES
(32, 53, 'u8mtsnuom3s0eqr9i0oogece25', 1400, 0, 1, 3, 'Grey', '', 1479697192);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` tinyint(1) DEFAULT '1',
  `rank` int(11) NOT NULL,
  `role` varchar(20) NOT NULL,
  `created_by` varchar(50) NOT NULL,
  `modified_by` varchar(50) DEFAULT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `parent_id`, `name`, `slug`, `status`, `rank`, `role`, `created_by`, `modified_by`, `created_date`, `modified_date`) VALUES
(1, 0, 'Clothing & Shoes', 'clothes-shoes', 1, 1, 'category', 'archana', NULL, '2016-09-19 13:59:13', NULL),
(2, 0, 'Cell Phones, Tablets & Laptops', 'cellphone-tablets-laptops', 1, 2, 'category', 'archana', NULL, '2016-09-19 14:03:33', NULL),
(3, 0, 'Jwellery & Watches', 'jwellery-watch', 1, 3, 'category', 'archana', NULL, '2016-09-19 14:06:27', NULL),
(4, 0, 'Consumer Electronics', 'electronics', 1, 4, 'category', 'archana', NULL, '2016-09-19 14:06:55', NULL),
(5, 1, 'Men Clothing & Shoes', 'men-clothing-shoes', 1, 11, 'subcategory', 'archana', NULL, '2016-09-19 14:11:43', NULL),
(6, 1, 'Women Clothing & Shoes', 'women-clothing-shoes', 1, 12, 'subcategory', 'archana', NULL, '2016-09-19 14:17:02', NULL),
(7, 1, 'Kid Clothing & Shoes', 'kid-clothing-shoes', 1, 13, 'subcategory', 'archana', NULL, '2016-09-21 09:59:55', NULL),
(8, 1, 'Womens HandBags', 'handbags', 1, 14, 'subcategory', 'archana', NULL, '2016-09-21 10:48:26', NULL),
(9, 2, 'Smart Phones', 'phones', 1, 21, 'subcategory', 'archana', NULL, '2016-09-21 10:54:23', NULL),
(10, 2, 'Laptops & Netbooks', 'laptop-netbook', 1, 22, 'subcategory', 'archana', NULL, '2016-09-21 11:03:12', NULL),
(11, 2, 'Tablets & Ipads', 'tablet', 1, 23, 'subcategory', 'archana', NULL, '2016-09-21 11:03:44', NULL),
(12, 2, 'Other Computer Accessories', 'computer', 1, 24, 'subcategory', 'archana', NULL, '2016-09-21 11:06:16', NULL),
(13, 3, 'Fashion Jwelery', 'fashion-jwellery', 1, 31, 'subcategory', 'archana', NULL, '2016-09-21 11:07:29', NULL),
(14, 3, 'Gold & Diamond Jwelery', 'jwellery', 1, 32, 'subcategory', 'archana', NULL, '2016-09-21 11:09:07', NULL),
(15, 3, 'Smart Watches', 'smartwatch', 1, 33, 'subcategory', 'archana', NULL, '2016-09-21 11:10:23', NULL),
(16, 3, 'Watches & Accessories', 'watch', 1, 34, 'subcategory', 'archana', NULL, '2016-09-21 11:10:55', NULL),
(17, 4, 'Home & Kitchen Appliances', 'home-kitchen', 1, 41, 'subcategory', 'archana', NULL, '2016-09-21 11:11:59', NULL),
(18, 4, 'Headphones & Speakers', 'headphone-speaker', 1, 42, 'subcategory', 'archana', NULL, '2016-09-21 11:12:59', NULL),
(19, 4, 'Gadgets & Electronics', 'gadgets', 1, 43, 'subcategory', 'archana', NULL, '2016-09-21 11:14:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(150) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_contact`
--

INSERT INTO `tbl_contact` (`id`, `name`, `email`, `subject`, `message`) VALUES
(1, 'Shegal', 'shg@gmail.com', 'damaged', 'The device is not working properly.\r\n'),
(2, 'Alina', 'ali@gmail.com', 'xdjfjhkjk', 'jhjjlhhuujjirevnjm'),
(3, 'Amy', 'amy@gmail.com', 'about repairing', 'goods are not repaired properly'),
(4, 'test', 'test@test.com', 'teste', 'testse messae'),
(5, 'Headsets', 'head@gamilc.om', 'test', 'tetse'),
(6, 'unique', 'uni@gmail.com', 'testtest', 'testtest');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `rank` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `shipping_address` varchar(50) NOT NULL,
  `phone` int(11) NOT NULL,
  `status` tinyint(1) DEFAULT '0',
  `password` varchar(50) NOT NULL,
  `salt` varchar(50) NOT NULL,
  `remember_key` varchar(50) NOT NULL,
  `verify_key` varchar(50) NOT NULL,
  `created_date` datetime NOT NULL,
  `last_login` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`id`, `name`, `username`, `rank`, `email`, `address`, `shipping_address`, `phone`, `status`, `password`, `salt`, `remember_key`, `verify_key`, `created_date`, `last_login`) VALUES
(3, 'Archana', 'archana', 0, 'arc@gmail.com', 'Kathmandu', 'Ktm', 1234567, 1, 'cf43ec7738a8e311b8cdf8d4f45afdc613053103', '5808d426d603b', '', '', '2016-10-20 16:26:46', '0000-00-00 00:00:00'),
(4, 'Shraddha', 'shraddha', 0, 'shraddha@gmail.com', 'Kathmandu', 'Ka', 2567890, 1, 'f831c299585eb2ba89c67e642423491f2a15fa21', '582e6b03160de', '', '4452273deb183f34f996e1a43ac271fa', '2016-11-18 03:44:19', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `payment_id` varchar(50) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `discount` int(11) DEFAULT NULL,
  `order_date` datetime NOT NULL,
  `status` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `shipping_address` varchar(50) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `payment_id`, `customer_id`, `amount`, `discount`, `order_date`, `status`, `username`, `email`, `shipping_address`, `quantity`) VALUES
(24, '2B0679033T8520246', 4, 1100, 0, '2016-11-21 03:40:36', 'Order Placed', 'shraddha', 'shraddha@gmail.com', 'Ka', 1),
(25, '5KN42228VW208264P', 3, 1400, 0, '2016-11-21 03:57:20', 'Order Placed', 'archana', 'arc@gmail.com', 'Ktm', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_orderdetails`
--

CREATE TABLE `tbl_orderdetails` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` double NOT NULL,
  `color` varchar(50) NOT NULL,
  `size` varchar(50) NOT NULL,
  `discount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_orderdetails`
--

INSERT INTO `tbl_orderdetails` (`id`, `order_id`, `product_id`, `quantity`, `price`, `color`, `size`, `discount`) VALUES
(3, 24, 35, 1, 1100, 'Gold Plated + pearls', '--', 0),
(4, 25, 45, 1, 1400, 'Golden', '--', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `discount` double DEFAULT '0',
  `quantity` int(11) NOT NULL,
  `stock` int(11) DEFAULT '0',
  `status` tinyint(1) DEFAULT '1',
  `short_description` text,
  `description` text,
  `color` varchar(50) DEFAULT NULL,
  `size` varchar(50) DEFAULT NULL,
  `image1` varchar(50) NOT NULL,
  `image2` varchar(50) DEFAULT NULL,
  `image3` varchar(50) DEFAULT NULL,
  `image4` varchar(50) DEFAULT NULL,
  `feature_key` tinyint(1) DEFAULT '0',
  `slider_key` tinyint(1) DEFAULT '0',
  `created_by` varchar(50) NOT NULL,
  `modified_by` varchar(50) DEFAULT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`id`, `category_id`, `subcategory_id`, `name`, `slug`, `price`, `discount`, `quantity`, `stock`, `status`, `short_description`, `description`, `color`, `size`, `image1`, `image2`, `image3`, `image4`, `feature_key`, `slider_key`, `created_by`, `modified_by`, `created_date`, `modified_date`) VALUES
(1, 1, 5, 'Addidas Shoe', 'men-shoes', 2500, 5, 2, 2, 1, 'Light and Comfortable', '<p>Light &amp; Comfortable; that you can run jump walk and enjoy the every moment wherever you go......... &nbsp;</p>\r\n', 'Black, White, Red', 'Medium, Large', '58a1a37541d15_s3.jpg', '58a1a375420f2_s3.jpg', '58a1a3754270e_s3.jpg', '58a1a375429e4_s3.jpg', 1, 1, 'archana', 'archana', '2016-09-21 12:28:38', '2017-02-13 13:15:49'),
(2, 1, 5, 'Sports Shoes', 'men-shoes', 2000, 5, 5, 5, 1, 'Style with comfort shoes available', '<p>Shoes with style and comfort.</p>\r\n', 'Grey,Blue, Red, Black', 'small, medium,large', '57e3a38b33f89_s41.jpg', '57e3a38b3422a_s42.jpg', '57e3a38b34423_s43.jpg', '57e3a38b34612_s44.jpg', 1, 1, 'archana', NULL, '2016-09-22 11:25:31', NULL),
(3, 1, 5, 'Casual Wear', 'casual-wear', 2200, 0, 1, 1, 1, 'Stylish with easy comfort for daily wear', '<p>Stylish with easy comfort for daily wear.....</p>\r\n', 'Black, White, Grey', 'small, medium', '57e3a4764d74d_c6.jpg', '57e3a4764da0e_c6.jpg', '57e3a4764dc8b_c6.jpg', '57e3a4764ded1_c6.jpg', 1, 1, 'archana', NULL, '2016-09-22 11:29:26', NULL),
(4, 1, 5, 'Formal Wear', 'formal-wear', 3000, 5, 1, 1, 1, 'Stylish with easy comfort for daily wear', '<p>Stylish with easy comfort for daily wear...............</p>\r\n', 'Black, Dark Blue', 'medium', '57e3a4fa2cd8b_c10.jpg', '57e3a4fa2cfef_c10.jpg', '57e3a4fa2d1f9_c10.jpg', '57e3a4fa2d417_c10.jpg', 1, 1, 'archana', NULL, '2016-09-22 11:31:38', NULL),
(5, 1, 6, 'High Heel shoes', 'heel-shoes', 3500, 10, 3, 3, 1, 'Stylish N Fashionable', '<p>Stylish N Fashionable...............</p>\r\n', 'Blue, Black, Red', 'small, medium', '57e3a6b2dc8ae_ws1.jpg', '57e3a6b2dcb30_ws1.jpg', '57e3a6b2dcd58_ws1.jpg', '57e3a6b2dcf45_ws1.jpg', 1, 1, 'archana', NULL, '2016-09-22 11:38:58', NULL),
(6, 1, 6, 'Boots', 'boots', 3800, 5, 2, 2, 1, 'Stylish N Fashionable', '<p>Stylish N Fashionable.............</p>\r\n', 'Black', 'small, medium', '57e3a7b8ebe42_ws9.jpg', '57e3a7b8ec08a_ws9.jpg', '57e3a7b8ec275_ws9.jpg', '57e3a7b8ec447_ws9.jpg', 1, 1, 'archana', NULL, '2016-09-22 11:43:20', NULL),
(7, 1, 6, 'Women Casual Wear', 'skirt', 1200, 0, 2, 0, 1, 'Fashionable & Stylish Chiffon Dress', '<p>Fashionable &amp; Stylish Chiffon Dress.........................</p>\r\n', 'Pink, Black,White', 'free size', '57e3ba7f03d03_w4.jpg', '57e3ba7f040ff_w4.jpg', '57e3ba7f046f3_w4.jpg', '57e3ba7f0499c_w4.jpg', 1, 1, 'archana', NULL, '2016-09-22 13:03:27', NULL),
(8, 1, 6, 'Long Skirt', 'long-skirt', 1600, 0, 2, 2, 1, 'Fashionable & Stylish Chiffon Dress', '<p>Fashionable &amp; Stylish Chiffon Dress...................</p>\r\n', 'Blue, Pink', 'free size', '57e3baffe87f5_w5.jpg', '57e3baffe8a5a_w5.jpg', '57e3baffe8c21_w5.jpg', '57e3baffe8dd9_w5.jpg', 1, 1, 'archana', NULL, '2016-09-22 13:05:35', NULL),
(9, 1, 7, 'Girl Cute Dress', 'dress', 1000, 0, 2, 1, 1, 'Cute dress For cute girl', '<p>Cute dress For cute girl.................</p>\r\n', 'Pink, White', 'medium', '57e3bf176ad67_k3.jpg', '57e3bf176b05f_k3.jpg', '57e3bf17726b5_k3.jpg', '57e3bf1772b18_k3.jpg', 1, 1, 'archana', NULL, '2016-09-22 13:23:03', NULL),
(10, 1, 7, 'Boys Clothes', 'dress', 1000, 0, 2, 2, 1, 'Dress For Boys', '<p>Dress For Boys.............</p>\r\n', 'Black, Red', 'small, medium', '57e3bfc443aea_k7.jpg', '57e3bfc443f4f_k7.jpg', '57e3bfc44464b_k7.jpg', '57e3bfc444a96_k7.jpg', 1, 1, 'archana', NULL, '2016-09-22 13:25:56', NULL),
(11, 1, 7, 'Flower Shoes for Girls', 'shoes', 900, 0, 2, 2, 1, 'Lovely Shoes For Girls', '<p>Lovely Shoes For Girls...............</p>\r\n', 'Pink, Yellow', 'small, medium', '57e3c0514b18a_ks1.jpg', '57e3c0514b5bb_ks1.jpg', '57e3c0514b930_ks1.jpg', '57e3c0514bc93_ks1.jpg', 1, 1, 'archana', NULL, '2016-09-22 13:28:17', NULL),
(12, 1, 7, 'Boys Shoes', 'shoes', 1100, 0, 2, 2, 1, 'Shoes For Boys', '<p>Shoes For Boys...........</p>\r\n', 'Black, Dark Green', 'small, medium', '57e3c0cf6e63a_ks4.jpg', '57e3c0cf6eab2_ks4.jpg', '57e3c0cf6ee26_ks4.jpg', '57e3c0cf6f182_ks4.jpg', 1, 1, 'archana', NULL, '2016-09-22 13:30:23', NULL),
(13, 1, 8, 'White Pink Stylish Bag', 'bag', 1500, 3, 3, 3, 1, 'White with Pink bordered Stylish Bag', '<p>White with Pink bordered Stylish Bag with 2 small Bags Inside................</p>\r\n', 'Pink, White', '--', '57e3c186ea51e_wh6.jpg', '57e3c186ea750_wh6.jpg', '57e3c186ea910_wh6.jpg', '57e3c186eaace_wh6.jpg', 1, 1, 'archana', NULL, '2016-09-22 13:33:26', NULL),
(14, 1, 8, 'Flower Handbag', 'bag', 1200, 0, 3, 3, 1, 'White with Pink Flower Stylish Bag', '<p>White with Pink Flower Stylish Bag........................</p>\r\n', 'Pink, White', '--', '57e3c23020eb5_wf1.JPG', '57e3c23021113_wf1.JPG', '57e3c230212e7_wf1.JPG', '57e3c23021495_wf1.JPG', 1, 1, 'archana', NULL, '2016-09-22 13:36:16', NULL),
(15, 1, 8, 'Cute Small bag', 'bag', 900, 0, 2, 2, 1, 'Cute Small side handbag ', '<p>Cute Small side handbag ..................</p>\r\n', 'Pink, Yellow', '--', '57e3c30291de3_wh3.jpg', '57e3c30292026_wh3.jpg', '57e3c302921ed_wh3.jpg', '57e3c302923a5_wh3.jpg', 1, 1, 'archana', NULL, '2016-09-22 13:39:46', NULL),
(16, 1, 8, 'Pink Classy HandBag', 'bag', 2000, 0, 4, 3, 1, 'Pink Classy Bags for Classy Girls', '<p>Pink Classy Bags for Classy Girls..............</p>\r\n', 'Pink, White', '--', '57e3c378ead0b_wh4.jpg', '57e3c378eaf5b_wh4.jpg', '57e3c378eb137_wh4.jpg', '57e3c378eb318_wh4.jpg', 1, 1, 'archana', NULL, '2016-09-22 13:41:44', NULL),
(17, 2, 9, 'iphone 6 plus', 'iphone', 88000, 4, 5, 5, 1, 'Iphone 6 Plus with ios 10 ', '<p>Iphone 6 Plus with ios 10 with 32 GB</p>\r\n', 'Black, Silver, Gold', '--', '57e3c605a52f6_IMG_0976.JPG', '57e3c605a57ac_IMG_0976.JPG', '57e3c605a5bbd_IMG_0977.JPG', '57e3c605a5fab_IMG_0977.JPG', 1, 1, 'archana', NULL, '2016-09-22 13:52:37', NULL),
(18, 2, 9, 'iphone 7', 'iphone', 90000, 5, 5, 5, 1, 'Iphone 7 with ios 10 ', '<p>Iphone 6 Plus with ios 10 upgrade with new features available</p>\r\n', 'Black, Silver, Gold', '--', '57e3c6c543c85_IMG_0979.JPG', '57e3c6c5441af_IMG_0980.JPG', '57e3c6c54459a_IMG_0981.JPG', '57e3c6c544b6f_IMG_0979.JPG', 1, 1, 'archana', NULL, '2016-09-22 13:55:49', NULL),
(19, 2, 9, 'Samsung S6 Edge', 'samsung-mobile', 88000, 0, 3, 3, 1, 'Samsung S6 Edge with new Specifications', '<p>Samsung S6 Edge with new Specifications....................</p>\r\n', 'Gold, Silver', '--', '57e3c74de0c8e_IMG_0982.PNG', '57e3c74de0efa_IMG_0982.PNG', '57e3c74de4ee8_IMG_0982.PNG', '57e3c74de5117_IMG_0982.PNG', 1, 1, 'archana', NULL, '2016-09-22 13:58:05', NULL),
(20, 2, 9, 'HTC', 'mobiles', 78000, 0, 6, 6, 1, 'htc mobiles with latest features', '<p>htc mobiles with latest features..................</p>\r\n', 'Silver, Black', '--', '57e3c7d362691_IMG_0984.JPG', '57e3c7d3628c4_IMG_0984.JPG', '57e3c7d362aca_IMG_0984.JPG', '57e3c7d362c91_IMG_0984.JPG', 1, 1, 'archana', NULL, '2016-09-22 14:00:19', NULL),
(21, 2, 10, 'Dell', 'laptop-netbook', 66000, 0, 3, 3, 1, 'dell laptop with windows10 upgrade ', '<p>dell laptop with windows10 upgrade ............</p>\r\n', 'Black', '--', '57e3c852d72d2_IMG_0992.JPG', '57e3c852d75a5_IMG_0992.JPG', '57e3c852d7770_IMG_0992.JPG', '57e3c852d7937_IMG_0992.JPG', 1, 1, 'archana', NULL, '2016-09-22 14:02:26', NULL),
(22, 2, 10, 'Lenovo Orange', 'laptop-netbook', 80000, 5, 7, 7, 1, 'lenovo laptops', '<p>lenovo laptops with new specifications and features with 4GB RAM</p>\r\n', 'Orange', '--', '57e3c92f201c7_IMG_0993.JPG', '57e3c92f20429_IMG_0993.JPG', '57e3c92f205e8_IMG_0993.JPG', '57e3c92f2079f_IMG_0993.JPG', 1, 1, 'archana', NULL, '2016-09-22 14:06:07', NULL),
(23, 2, 10, 'Lenovo Silver & Gold', 'laptop-netbook', 82000, 0, 3, 3, 1, 'lenovo laptops with specifications', '<p>lenovo laptops with latest specifications and features</p>\r\n', 'Silver, Gold', '--', '57e3cc958fdf5_IMG_0994.JPG', '57e3cc959008d_IMG_0994.JPG', '57e3cc95902aa_IMG_0994.JPG', '57e3cc95904ac_IMG_0994.JPG', 1, 1, 'archana', NULL, '2016-09-22 14:20:37', NULL),
(24, 2, 10, 'Acer', 'laptop-netbook', 76000, 0, 4, 4, 1, 'acer laptops with latest specifications and features', '<p>acer laptops with latest specifications and features.................</p>\n', 'Red', '--', '57e506333c484_IMG_0995.JPG', '57e506333c6c4_IMG_0995.JPG', '57e506333c880_IMG_0995.JPG', '57e506333ca4a_IMG_0995.JPG', 1, 1, 'archana', NULL, '2016-09-23 12:38:43', NULL),
(25, 2, 11, 'Ipad', 'ipad', 85000, 5, 7, 7, 1, 'Ipad with 32 GB Internal memory', '<p>Ipad with 32 GB Internal memory..........</p>\r\n', 'Silver, Gold, White', '--', '57e5076530a3f_IMG_0986.JPG', '57e5076530c84_IMG_0986.JPG', '57e5076530e47_IMG_0986.JPG', '57e5076531011_IMG_0986.JPG', 1, 1, 'archana', NULL, '2016-09-23 12:43:49', NULL),
(26, 2, 11, 'Window PC', 'tablet', 68000, 0, 5, 5, 1, 'Tablet with latest windows features; just as u use your pc', '<p>Tablet with latest windows features; just as u use your pc.................</p>\r\n', 'Black, Silver', '--', '57e508151b3a6_IMG_0987.PNG', '57e508151b603_IMG_0987.PNG', '57e508151b995_IMG_0987.PNG', '57e508151bd38_IMG_0987.PNG', 1, 1, 'archana', NULL, '2016-09-23 12:46:45', NULL),
(27, 2, 11, 'Samsung Tablet1', 'tablet', 30000, 0, 5, 5, 1, 'Samsung Tablet with latest new techno', '<p>Samsung Tablet with latest new techno...............</p>\r\n', 'Black, White', '--', '57e5091dba93f_IMG_0989.JPG', '57e5091dbab9b_IMG_0989.JPG', '57e5091dbad5a_IMG_0989.JPG', '57e5091dbaf2b_IMG_0989.JPG', 1, 1, 'archana', NULL, '2016-09-23 12:51:09', NULL),
(28, 2, 11, 'Samsung Tablet2', 'tablet', 35000, 0, 6, 6, 1, 'Samsung Tablet with latest new techno', '<p>Samsung Tablet with latest new techno..............</p>\r\n', 'White, Black', '--', '57e50a0c374e6_IMG_0990.JPG', '57e50a0c37716_IMG_0990.JPG', '57e50a0c378d6_IMG_0990.JPG', '57e50a0c37a82_IMG_0990.JPG', 1, 1, 'archana', NULL, '2016-09-23 12:55:08', NULL),
(29, 2, 12, 'Mouse', 'computer-accesories', 1000, 0, 2, 2, 1, 'Wireless mouse', '<p>Wireless mouse ............</p>\r\n', 'Black/White', '--', '57e50abaeab02_IMG_0997.JPG', '57e50abaead6d_IMG_0997.JPG', '57e50abaeaf76_IMG_0997.JPG', '57e50abaeb16c_IMG_0997.JPG', 1, 1, 'archana', NULL, '2016-09-23 12:58:02', NULL),
(30, 2, 12, 'Pendrive ', 'pendrive', 600, 0, 4, 3, 1, 'Pendrive with 16 GB', '<p>Pendrive with 16 GB..............</p>\r\n', 'Black', '--', '57e50b2088b27_IMG_1001.JPG', '57e50b2088d62_IMG_1001.JPG', '57e50b2089058_IMG_1001.JPG', '57e50b2089470_IMG_1001.JPG', 1, 1, 'archana', NULL, '2016-09-23 12:59:44', NULL),
(31, 2, 12, 'Speaker', 'speaker', 1300, 0, 3, 2, 1, 'Speakers foe high quality sound', '<p>Speakers foe high quality sound.......</p>\r\n', 'Black', '--', '57e50b7eade99_IMG_0998.JPG', '57e50b7eae13e_IMG_0998.JPG', '57e50b7eae348_IMG_0998.JPG', '57e50b7eae500_IMG_0998.JPG', 1, 1, 'archana', NULL, '2016-09-23 13:01:18', NULL),
(32, 2, 12, 'Printer', 'printer', 39000, 0, 3, 3, 1, 'printers for printing high quality images', '<p>printers for printing high quality images.......</p>\r\n', 'White', '--', '57e50beb02874_IMG_1004.JPG', '57e50beb02ac8_IMG_1004.JPG', '57e50beb02ca5_IMG_1004.JPG', '57e50beb02e6a_IMG_1004.JPG', 1, 1, 'archana', NULL, '2016-09-23 13:03:07', NULL),
(33, 3, 13, 'Pink Rose Necklace', 'necklace', 1600, 5, 2, 2, 1, 'A beautiful rose necklace for beautiful girls out there', '<p>A beautiful rose necklace for beautiful girls out there..............</p>\r\n', 'Pink Rose, Red Rose', '--', '57e536138633f_IMG_1005.JPG', '57e536138658e_IMG_1005.JPG', '57e536138674b_IMG_1005.JPG', '57e5361386916_IMG_1005.JPG', 1, 1, 'archana', NULL, '2016-09-23 16:02:59', NULL),
(34, 3, 13, 'Necklace', 'necklace', 1200, 5, 2, 2, 1, 'Light n beautiful fashionable necklace ', '<p>Light n beautiful fashionable necklace ..................</p>\r\n', 'Gold Plated ', '--', '57e536ffe93df_IMG_1009.JPG', '57e536ffe9718_IMG_1009.JPG', '57e536ffe9905_IMG_1009.JPG', '57e536ffe9abd_IMG_1009.JPG', 1, 1, 'archana', NULL, '2016-09-23 16:06:55', NULL),
(35, 3, 13, 'Pearls Gold Bracelet', 'bracelet', 1100, 0, 4, 3, 1, 'Beautiful Gold with Pearls Bracelet', '<p>Beautiful Gold with Pearls Bracelet................</p>\r\n', 'Gold Plated + pearls', '--', '57e5399a9cc08_IMG_1011.JPG', '57e5399a9ce7a_IMG_1011.JPG', '57e5399a9d03e_IMG_1011.JPG', '57e5399a9d1f1_IMG_1011.JPG', 1, 1, 'archana', NULL, '2016-09-23 16:18:02', NULL),
(36, 3, 13, 'Flower Pearl Bangles', 'jwellery', 900, 0, 2, 2, 1, 'A beautiful bangle aka bracelet with flower n pearls', '<p>A beautiful bangle aka bracelet with flower n pearls..................</p>\r\n', 'Gold Plated + Pearls', '--', '57e53ab8c5ce3_IMG_1010.PNG', '57e53ab8c5f7e_IMG_1010.PNG', '57e53ab8c6141_IMG_1010.PNG', '57e53ab8c62f2_IMG_1010.PNG', 1, 1, 'archana', NULL, '2016-09-23 16:22:48', NULL),
(37, 3, 14, 'Gold Diamond Necklace', 'necklace', 190000, 5, 2, 2, 1, 'A beautiful Gold n Diamond Necklace for all pretty ladies', '<p>A beautiful Gold n Diamond Necklace for all pretty ladies...............</p>\r\n', 'Gold, Diamond', '--', '57e53b8c7d23d_IMG_1013.JPG', '57e53b8c7d4aa_IMG_1013.JPG', '57e53b8c7d6c6_IMG_1013.JPG', '57e53b8c7d888_IMG_1013.JPG', 1, 1, 'archana', NULL, '2016-09-23 16:26:20', NULL),
(38, 3, 14, 'Gold Necklace N Earrings', 'necklace-earrings', 90000, 0, 2, 2, 1, 'A perfect bridal jewellery for perfect wedding ', '<p>A perfect bridal jewellery for perfect wedding ...............</p>\r\n', 'Gold', '--', '57e53e1e93418_IMG_1017.JPG', '57e53e1e94faf_IMG_1017.JPG', '57e53e1e952a2_IMG_1017.JPG', '57e53e1e955e8_IMG_1017.JPG', 1, 1, 'archana', NULL, '2016-09-23 16:37:18', NULL),
(39, 3, 14, 'Diamond Pearl Jwellery', 'jwellery', 98000, 0, 3, 3, 1, 'Diamond with pearls necklace and earrings', '<p>Diamond with pearls necklace and earrings......................</p>\r\n', 'Diamond+Pearl ', '--', '57e56d5f39fd2_IMG_1015.JPG', '57e56d5f3a283_IMG_1015.JPG', '57e56d5f3a447_IMG_1015.JPG', '57e56d5f3a5f5_IMG_1015.JPG', 1, 1, 'archana', NULL, '2016-09-23 19:58:55', NULL),
(40, 3, 14, 'Diamond Gold Ring', 'ring', 77000, 0, 3, 3, 1, 'Gold Ring with Diamond flower ', '<p>Gold Ring with Diamond flower ..................</p>\r\n', 'Gold+Diamond', '--', '57e56e7fabe88_IMG_1012.JPG', '57e56e7fac0ed_IMG_1012.JPG', '57e56e7fac2e5_IMG_1012.JPG', '57e56e7fac494_IMG_1012.JPG', 1, 1, 'archana', NULL, '2016-09-23 20:03:43', NULL),
(41, 3, 15, 'Sony SmartWatch', 'watch', 45000, 0, 8, 8, 1, 'SmartWatch For Smart people', '<p>SmartWatch For Smart people.....................</p>\r\n', 'Black', '--', '57e56ee8d1c76_IMG_1019.JPG', '57e56ee8d2034_IMG_1019.JPG', '57e56ee8d23df_IMG_1019.JPG', '57e56ee8d272d_IMG_1019.JPG', 1, 1, 'archana', NULL, '2016-09-23 20:05:28', NULL),
(42, 3, 15, 'Iwatch1', 'watch', 55000, 0, 3, 3, 1, 'The second generation Apple Watch', '<p>The second generation Apple Watch with wrs for swimmeater resistance and better seals, making it suitable for swimmers</p>\r\n', 'Black', '--', '57e5778855a9f_IMG_1020.JPG', '57e5778855cd3_IMG_1020.JPG', '57e5778855eb1_IMG_1020.JPG', '57e577885607a_IMG_1020.JPG', 1, 1, 'archana', NULL, '2016-09-23 20:42:16', NULL),
(43, 3, 15, 'Samsung Gear', 'watch', 37000, 0, 4, 4, 1, 'Get important notifications with just glance at your wrist', '<p>Get important notifications with just glance at your wrist i.e. compatible with most Android SmartPhones</p>\r\n', 'Black', '--', '57e578796900f_IMG_1021.JPG', '57e5787969242_IMG_1021.JPG', '57e5787969402_IMG_1021.JPG', '57e57879695a6_IMG_1021.JPG', 1, 1, 'archana', NULL, '2016-09-23 20:46:17', NULL),
(44, 3, 15, 'Iwatch2', 'watch', 57000, 0, 5, 5, 1, 'Iwatches for smart techno generation', '<p>Iwatches for smart techno generation i.e. waterproof making suitable for swimmers</p>\r\n', 'Black, White', '--', '57e5790566b23_IMG_1022.JPG', '57e5790566d34_IMG_1022.JPG', '57e5790566ed8_IMG_1022.JPG', '57e5790567079_IMG_1022.JPG', 1, 1, 'archana', NULL, '2016-09-23 20:48:37', NULL),
(45, 3, 16, 'Fashionable Ladies Watch', 'watch', 1400, 0, 3, 2, 1, 'latest fashionable bracelet like watch ', '<p>latest fashionable bracelet like watch for fashion lovers</p>\r\n', 'Golden', '--', '57e57a364f834_IMG_1024.JPG', '57e57a3650057_IMG_1024.JPG', '57e57a3650381_IMG_1024.JPG', '57e57a365078d_IMG_1024.JPG', 1, 1, 'archana', NULL, '2016-09-23 20:53:42', NULL),
(46, 3, 16, 'Titan watch', 'watch', 1600, 0, 9, 9, 1, 'Titan gold silver watches for every special person', '<p>Titan gold silver watches for every special person n occassions&nbsp;</p>\r\n', 'Gold, Silver', '--', '57e57b2c2035b_IMG_1025.JPG', '57e57b2c20882_IMG_1025.JPG', '57e57b2c20a6e_IMG_0627.PNG', '57e57b2c20ca4_IMG_1025.JPG', 1, 1, 'archana', NULL, '2016-09-23 20:57:48', NULL),
(47, 3, 16, 'Dallas Gold & Silver Watch', 'watch', 2200, 0, 8, 8, 1, 'Dallas Gold Silver Watch for everyone ', '<p>Dallas Gold Silver Watch for everyone who values time...</p>\r\n', 'Gold, Silver', '--', '57e57bcb96a7f_IMG_1026.JPG', '57e57bcb96cbd_IMG_1026.JPG', '57e57bcb96eaa_IMG_1026.JPG', '57e57bcb970b2_IMG_1026.JPG', 1, 1, 'archana', NULL, '2016-09-23 21:00:27', NULL),
(48, 3, 16, 'Rolex Watch', 'watch', 5500, 0, 4, 4, 1, 'Rolex Branded Watch for king n classy people', '<p>Rolex Branded Watch for king n classy people.......</p>\r\n', 'Gold, Silver', '--', '57e57c4dc44e9_IMG_1027.JPG', '57e57c4dc4731_IMG_1028.JPG', '57e57c4dc48ec_IMG_1027.JPG', '57e57c4dc4a93_IMG_1028.JPG', 1, 1, 'archana', NULL, '2016-09-23 21:02:37', NULL),
(49, 4, 17, 'Philips Air Fryers', 'fryers', 11000, 0, 11, 11, 1, 'Air Fryers to fry your snacks with 80% less oil', '<p>Air Fryers to fry your snacks with 80% less oil which is benefit to your Health</p>\r\n', 'Black', '--', '57e57e1de7d95_IMG_1032.JPG', '57e57e1de7fdd_IMG_1032.JPG', '57e57e1de81a9_IMG_1032.JPG', '57e57e1de8345_IMG_1032.JPG', 1, 1, 'archana', NULL, '2016-09-23 21:10:21', NULL),
(50, 4, 17, 'Microwave Ovens', 'microwaves', 8000, 0, 7, 7, 1, 'Microwave Oven to instantly warm your delicious food', '<p>Microwave Oven to instantly warm your delicious food with maximum microwave power 0f 800 W</p>\r\n', 'Black, Silver', '--', '57e57f60ae1a3_IMG_1034.JPG', '57e57f60ae41c_IMG_1034.JPG', '57e57f60ae5e4_IMG_1034.JPG', '57e57f60ae7a2_IMG_1034.JPG', 1, 1, 'archana', NULL, '2016-09-23 21:15:44', NULL),
(51, 4, 17, 'Vacuum Cleaner', 'vacuum', 6000, 0, 10, 10, 1, 'Vacuum cleaners to easily clean your house', '<p>Vacuum cleaners to easily clean your house with best deals ever</p>\r\n', 'Red, Black, Blue', '--', '58a1a53e42bc3_IMG_1036.JPG', '58a1a53e42e03_IMG_1036.JPG', '58a1a53e42fe1_IMG_1036.JPG', '58a1a53e431a7_IMG_1036.JPG', 1, 1, 'archana', 'archana', '2016-09-23 21:20:21', '2017-02-13 13:23:26'),
(52, 4, 17, 'Steam Iron', 'iron', 1400, 0, 6, 6, 1, 'Keep your clothes crease free with this efficient and stylish aqua blue steam iron', '<p>Keep your clothes crease free with this efficient and stylish aqua blue steam iron. Design to easily glide over ur garments to remove stubborn crinkles and creases.</p>\r\n', 'Blue, Black', '--', '57e581c23ebd6_IMG_1037.JPG', '57e581c23edf6_IMG_1037.JPG', '57e581c23efc3_IMG_1037.JPG', '57e581c23f16e_IMG_1037.JPG', 1, 1, 'archana', NULL, '2016-09-23 21:25:54', NULL),
(53, 4, 18, 'Headsets', 'headphone', 1400, 0, 10, 9, 1, 'Headphone with microphone ', '<p>Headphone with microphone to talk and listen better</p>\r\n', '', 'Grey, White, Red, Black, Pink, Blue', '57e58330adb39_IMG_1039.JPG', '57e58330add96_IMG_1039.JPG', '57e58330adf3f_IMG_1039.JPG', '57e58330ae0ea_IMG_1039.JPG', 1, 1, 'archana', NULL, '2016-09-23 21:32:00', NULL),
(54, 4, 18, 'Bluetooth Headphone', 'headphone', 2200, 0, 7, 7, 1, 'Wireless headphone available here', '<p>Bluetooth headphone for easy usage and compatibility&nbsp;</p>\r\n', 'Black', '--', '57e5847e2a217_IMG_1042.JPG', '57e5847e2a48f_IMG_1042.JPG', '57e5847e2a634_IMG_1042.JPG', '57e5847e2a7ef_IMG_1042.JPG', 1, 1, 'archana', NULL, '2016-09-23 21:37:34', NULL),
(55, 4, 18, 'Bluetooth Speaker', 'speaker', 1200, 0, 5, 5, 1, 'Best Portable Bluetooth Speaker', '<p>Best Portable Bluetooth Speaker allow stereo speakers to be wirelessly through smartphones and computers</p>\r\n', 'Black Metallic', '--', '57e585b607fda_IMG_1040.JPG', '57e585b60821f_IMG_1040.JPG', '57e585b6083de_IMG_1040.JPG', '57e585b6085a7_IMG_1040.JPG', 1, 1, 'archana', NULL, '2016-09-23 21:42:46', NULL),
(56, 4, 18, 'Speaker1', 'speaker', 1000, 0, 8, 7, 1, 'Speaker to make sound alive', '<p>Speaker to make sound alive............</p>\r\n', 'Black', '--', '57e58775b0e35_IMG_1044.JPG', '57e58775b1055_IMG_1044.JPG', '57e58775b11ec_IMG_1044.JPG', '57e58775b136a_IMG_1044.JPG', 1, 1, 'archana', NULL, '2016-09-23 21:50:13', NULL),
(57, 4, 19, 'Washing machine', 'washing machine', 32000, 0, 8, 8, 1, 'Easy doing laundry works', '<p>Easy doing laundry works saving your valuable time</p>\r\n', 'Silver, White', '--', '57e5887d384ca_IMG_1053.JPG', '57e5887d3873e_IMG_1053.JPG', '57e5887d388fb_IMG_1053.JPG', '57e5887d38a91_IMG_1053.JPG', 1, 1, 'archana', NULL, '2016-09-23 21:54:37', NULL),
(61, 4, 19, 'Fan', 'fan', 1200, 0, 10, 10, 1, 'cool breeze', '<p>feel cool breeze in sunny days</p>\r\n', 'blue', '', '58a1a6046a464_IMG_1055.JPG', '58a1a6046a74c_IMG_1055.JPG', '58a1a6046a970_IMG_1055.JPG', '58a1a6046ab37_IMG_1055.JPG', 1, 1, 'archana', NULL, '2017-02-13 13:26:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `rank` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_date` datetime NOT NULL,
  `created_by` varchar(250) NOT NULL,
  `modified_date` datetime NOT NULL,
  `modified_by` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`id`, `title`, `rank`, `image`, `status`, `created_date`, `created_by`, `modified_date`, `modified_by`) VALUES
(1, '', 1, '5821ac67d912d_slider1.jpg', 1, '2016-11-08 11:43:51', 'archana', '0000-00-00 00:00:00', ''),
(2, '', 2, '5821ac715bb4e_slider2.jpg', 1, '2016-11-08 11:44:01', 'archana', '0000-00-00 00:00:00', ''),
(3, '', 3, '5821ac7c2f6c2_slider3.jpg', 1, '2016-11-08 11:44:12', 'archana', '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_wishlist`
--

CREATE TABLE `tbl_wishlist` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `session_id` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  `discount` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `size` varchar(50) NOT NULL,
  `color` varchar(50) NOT NULL,
  `created_timestamp` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_wishlist`
--

INSERT INTO `tbl_wishlist` (`id`, `product_id`, `session_id`, `price`, `discount`, `quantity`, `customer_id`, `size`, `color`, `created_timestamp`) VALUES
(24, 31, 'ui0bpirujtnre6lrssner74ti0', 1300, 0, 1, 4, '--', 'Black', 1479716894);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `tbl_category_ibfk_1` (`parent_id`);

--
-- Indexes for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `tbl_orderdetails`
--
ALTER TABLE `tbl_orderdetails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `tbl_product_ibfk_1` (`category_id`);

--
-- Indexes for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rank` (`rank`);

--
-- Indexes for table `tbl_wishlist`
--
ALTER TABLE `tbl_wishlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `tbl_orderdetails`
--
ALTER TABLE `tbl_orderdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_wishlist`
--
ALTER TABLE `tbl_wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD CONSTRAINT `tbl_cart_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `tbl_product` (`id`),
  ADD CONSTRAINT `tbl_cart_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `tbl_customer` (`id`);

--
-- Constraints for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD CONSTRAINT `tbl_order_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `tbl_customer` (`id`);

--
-- Constraints for table `tbl_orderdetails`
--
ALTER TABLE `tbl_orderdetails`
  ADD CONSTRAINT `tbl_orderdetails_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `tbl_order` (`id`),
  ADD CONSTRAINT `tbl_orderdetails_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `tbl_product` (`id`);

--
-- Constraints for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD CONSTRAINT `tbl_product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `tbl_category` (`id`);

--
-- Constraints for table `tbl_wishlist`
--
ALTER TABLE `tbl_wishlist`
  ADD CONSTRAINT `tbl_wishlist_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `tbl_product` (`id`),
  ADD CONSTRAINT `tbl_wishlist_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `tbl_customer` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
