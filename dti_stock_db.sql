-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 16, 2023 at 05:32 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dti_stock_db`
--
CREATE DATABASE IF NOT EXISTS `dti_stock_db` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `dti_stock_db`;

-- --------------------------------------------------------

--
-- Table structure for table `porder_detail_tb`
--

CREATE TABLE `porder_detail_tb` (
  `porderDetailId` int(11) NOT NULL,
  `proderId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `porderProductQuantity` int(11) NOT NULL,
  `porderProductPrice` double NOT NULL,
  `createAt` date NOT NULL,
  `updateAt` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `porder_detail_tb`
--

INSERT INTO `porder_detail_tb` (`porderDetailId`, `proderId`, `productId`, `porderProductQuantity`, `porderProductPrice`, `createAt`, `updateAt`) VALUES
(1, 1, 2, 2, 35000, '2023-03-01', '2023-03-01'),
(2, 1, 4, 10, 10000, '2023-03-01', '2023-03-01'),
(3, 1, 5, 1, 5000, '2023-03-01', '2023-03-01'),
(4, 2, 1, 3, 5000, '2023-03-01', '2023-03-01'),
(5, 2, 4, 5, 2500, '2023-03-01', '2023-03-01'),
(6, 3, 1, 2, 5700, '2023-03-02', '2023-03-02'),
(7, 3, 2, 5, 9050, '2023-03-02', '2023-03-02'),
(8, 3, 5, 1, 1000.5, '2023-03-02', '2023-03-02');

-- --------------------------------------------------------

--
-- Table structure for table `porder_tb`
--

CREATE TABLE `porder_tb` (
  `id` int(11) NOT NULL,
  `porderPriceTotal` double NOT NULL,
  `supplierId` int(11) NOT NULL,
  `createdAt` date NOT NULL,
  `updatedAt` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `porder_tb`
--

INSERT INTO `porder_tb` (`id`, `porderPriceTotal`, `supplierId`, `createdAt`, `updatedAt`) VALUES
(1, 50000, 2, '2023-03-01', '2023-03-01'),
(2, 7500, 3, '2023-03-01', '2023-03-01'),
(3, 15750.5, 2, '2023-03-02', '2023-03-02');

-- --------------------------------------------------------

--
-- Table structure for table `product_tb`
--

CREATE TABLE `product_tb` (
  `id` int(11) NOT NULL,
  `productName` varchar(200) NOT NULL,
  `productPrice` double NOT NULL,
  `productQuantity` int(11) NOT NULL,
  `productOutofOrder` int(11) NOT NULL,
  `createdAt` date NOT NULL,
  `updatedAt` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_tb`
--

INSERT INTO `product_tb` (`id`, `productName`, `productPrice`, `productQuantity`, `productOutofOrder`, `createdAt`, `updatedAt`) VALUES
(1, 'Mouse Logitech MX01', 850, 10, 2, '2023-03-02', '2023-03-02'),
(2, 'Keyboard SVOA', 235.5, 30, 5, '2023-03-02', '2023-03-02'),
(3, 'Mouse Logitech PV-X', 1850, 50, 2, '2023-03-04', '2023-03-04'),
(4, 'Notebook Acer i9-Power', 35000, 10, 5, '2023-03-04', '2023-03-04'),
(5, 'Projector Epson 2023', 5850.75, 5, 1, '2023-03-05', '2023-03-05');

-- --------------------------------------------------------

--
-- Table structure for table `supplier_tb`
--

CREATE TABLE `supplier_tb` (
  `id` int(11) NOT NULL,
  `supplierName` varchar(200) NOT NULL,
  `supplierContact` varchar(50) NOT NULL,
  `supplierAddress` varchar(200) NOT NULL,
  `supplierPhone` varchar(30) NOT NULL,
  `createdAt` date NOT NULL,
  `updatedAt` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `supplier_tb`
--

INSERT INTO `supplier_tb` (`id`, `supplierName`, `supplierContact`, `supplierAddress`, `supplierPhone`, `createdAt`, `updatedAt`) VALUES
(1, 'บริษัท เทคคอม จำกัด', 'สมชาย', '111/1 หนองแขม กทม.', '021110001', '2023-02-25', '2023-02-25'),
(2, 'บริษัท มารวยมาก จำกัด', 'แมว', '2/858 เมือง เชียงใหม่.', '0849998888', '2023-03-01', '2023-03-01'),
(3, 'บริษัท Siam Innovation จำกัด(มหาชน)', 'จิตดี', '55 บ่อพลอย กาญจนบุรี', '0651112222', '2023-03-01', '2023-03-01'),
(4, 'wow wow wow จำกัด', 'มานี มีตา', '18/1 เพชรเกษม กทม. 10110', '0255788899', '2023-04-16', '2023-04-16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `porder_detail_tb`
--
ALTER TABLE `porder_detail_tb`
  ADD PRIMARY KEY (`porderDetailId`);

--
-- Indexes for table `porder_tb`
--
ALTER TABLE `porder_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_tb`
--
ALTER TABLE `product_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier_tb`
--
ALTER TABLE `supplier_tb`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `porder_detail_tb`
--
ALTER TABLE `porder_detail_tb`
  MODIFY `porderDetailId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `porder_tb`
--
ALTER TABLE `porder_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product_tb`
--
ALTER TABLE `product_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `supplier_tb`
--
ALTER TABLE `supplier_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
