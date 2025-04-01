-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 10, 2024 at 05:38 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `grocerry_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `Bill_id` int(11) NOT NULL,
  `Bill_Date` int(11) NOT NULL,
  `Order_id` int(11) NOT NULL,
  `User_id` int(11) NOT NULL,
  `Total_amount` int(11) NOT NULL,
  `Tax` int(11) NOT NULL,
  `Discount` int(11) NOT NULL,
  `Grand_total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `catagory`
--

CREATE TABLE `catagory` (
  `catid` int(11) NOT NULL,
  `catname` varchar(50) NOT NULL,
  `company_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `catagory`
--

INSERT INTO `catagory` (`catid`, `catname`, `company_id`) VALUES
(1, 'Oil', 1);

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `company_id` int(11) NOT NULL,
  `company_name` varchar(11) NOT NULL,
  `Adress` int(11) NOT NULL,
  `Phone` int(11) NOT NULL,
  `contact_person` varchar(11) NOT NULL,
  `contact_person_phone` int(11) NOT NULL,
  `contact_person_mobile` int(11) NOT NULL,
  `email_id` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `utype` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`, `utype`) VALUES
(1, 'admin@gmail.com', '4321', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `paymentdetails`
--

CREATE TABLE `paymentdetails` (
  `Billid` varchar(40) NOT NULL,
  `date` varchar(40) NOT NULL,
  `amt` int(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `catid` int(40) NOT NULL,
  `productid` varchar(40) NOT NULL,
  `productname` varchar(40) NOT NULL,
  `uom` varchar(40) NOT NULL,
  `unitprice` int(40) NOT NULL,
  `image` varchar(40) NOT NULL,
  `manfacture_date` varchar(40) NOT NULL,
  `expiry_date` varchar(50) NOT NULL,
  `stock` int(11) NOT NULL,
  `description` varchar(50) NOT NULL,
  `company_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`catid`, `productid`, `productname`, `uom`, `unitprice`, `image`, `manfacture_date`, `expiry_date`, `stock`, `description`, `company_id`) VALUES
(1, 'Oil', 'Sunflower', 'per/kg', 22, 'images (1).jpg', '20/10/2024', '21/10/2026', 40, 'good', 'oillimited');

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `Product_Id` int(40) NOT NULL,
  `User_Rating` int(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `first _name` varchar(54) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email_address` varchar(50) NOT NULL,
  `password_type` varchar(50) NOT NULL,
  `retype_password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `returndetails`
--

CREATE TABLE `returndetails` (
  `orderid` int(10) NOT NULL,
  `productid` int(10) NOT NULL,
  `qtyretrun` int(10) NOT NULL,
  `rate` int(10) NOT NULL,
  `returnamt` int(10) NOT NULL,
  `reason` varchar(100) NOT NULL,
  `date1` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `userinfo1`
--

CREATE TABLE `userinfo1` (
  `user_id` int(40) NOT NULL,
  `First_Name` varchar(40) NOT NULL,
  `Middle_Name` varchar(40) NOT NULL,
  `Last_Nme` varchar(40) NOT NULL,
  `Phone` int(40) NOT NULL,
  `Gender` varchar(40) NOT NULL,
  `Email_Id` varchar(40) NOT NULL,
  `Password` varchar(40) NOT NULL,
  `Hint_Question` varchar(40) NOT NULL,
  `Hint Answer` varchar(40) NOT NULL,
  `Address` varchar(40) NOT NULL,
  `Pincode` int(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
