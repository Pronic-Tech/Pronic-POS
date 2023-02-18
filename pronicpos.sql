-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 18, 2023 at 10:53 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pronicpos`
--

-- --------------------------------------------------------

--
-- Table structure for table `barcodes`
--

CREATE TABLE `barcodes` (
  `BarCodeId` int(11) NOT NULL,
  `BarCode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `BrandId` int(255) NOT NULL,
  `BrandTag` varchar(255) NOT NULL,
  `BrandName` varchar(255) NOT NULL,
  `VendorId` int(255) NOT NULL,
  `BrandDescription` varchar(255) NOT NULL,
  `BrandStatus` varchar(255) NOT NULL,
  `BrandImage` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `ExpenseId` int(255) NOT NULL,
  `ExpenseName` varchar(255) NOT NULL,
  `ExpenseAmount` int(255) NOT NULL,
  `ExpenseDate` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `maincategories`
--

CREATE TABLE `maincategories` (
  `MainCategoryId` int(255) NOT NULL,
  `MainCategoryName` varchar(255) NOT NULL,
  `MainCategoryImage` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orderproductsmap`
--

CREATE TABLE `orderproductsmap` (
  `OrderProductsCategoriesId` int(255) NOT NULL,
  `OrderId` int(255) NOT NULL,
  `ProductId` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `OrderId` int(100) NOT NULL,
  `OrderTag` int(255) NOT NULL,
  `Id` int(255) NOT NULL,
  `BarCodeId` int(255) NOT NULL,
  `Date` datetime(6) NOT NULL,
  `ProductId` varchar(30) NOT NULL,
  `ProductName` varchar(255) NOT NULL,
  `ProductPerUnitPrice` int(200) NOT NULL,
  `OrderQuantity` int(200) NOT NULL,
  `OrderStatus` varchar(50) NOT NULL,
  `PaymentMethod` varchar(50) NOT NULL,
  `TotalAmount` int(255) NOT NULL,
  `CustomerFullName` varchar(200) NOT NULL,
  `CustomerPhone` varchar(13) NOT NULL,
  `CustomerEmail` varchar(255) NOT NULL,
  `CustomerAddress` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `procatemap`
--

CREATE TABLE `procatemap` (
  `PCID` int(255) NOT NULL,
  `ProductId` int(255) NOT NULL,
  `ProductName` varchar(255) NOT NULL,
  `BrandId` int(255) NOT NULL,
  `BrandName` varchar(255) NOT NULL,
  `VendorId` int(255) NOT NULL,
  `VendorName` varchar(255) NOT NULL,
  `ThirdCategoryId` int(255) NOT NULL,
  `ThirdCategoryName` varchar(255) NOT NULL,
  `SecondCategoryId` int(255) NOT NULL,
  `SecondCategoryName` varchar(255) NOT NULL,
  `MainCategoryId` int(255) NOT NULL,
  `MainCategoryName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `ProductId` int(255) NOT NULL,
  `ProductIdTag` int(255) NOT NULL,
  `ProductName` varchar(255) NOT NULL,
  `BrandId` int(255) NOT NULL,
  `ProductDescription` varchar(255) NOT NULL,
  `ProductQuantityPerUnit` int(255) NOT NULL,
  `ProductPerUnitPrice` int(255) NOT NULL,
  `ProductMSRP` int(255) NOT NULL,
  `ProductStatus` varchar(255) NOT NULL,
  `ProductDiscountRate` varchar(255) NOT NULL,
  `ProductSize` varchar(255) NOT NULL,
  `ProductColor` varchar(255) NOT NULL,
  `ProductWeight` varchar(255) NOT NULL,
  `ProductUnitStock` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `secondcategories`
--

CREATE TABLE `secondcategories` (
  `SecondCategoryId` int(255) NOT NULL,
  `SecondCategoryName` varchar(255) NOT NULL,
  `MainCategoryId` int(255) NOT NULL,
  `SecondCategoryImage` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `thirdcategories`
--

CREATE TABLE `thirdcategories` (
  `ThirdCategoryId` int(255) NOT NULL,
  `ThirdCategoryName` varchar(255) NOT NULL,
  `SecondCategoryId` int(255) NOT NULL,
  `ThirdCategoryImage` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(100) NOT NULL,
  `UserID` varchar(12) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Age` int(3) NOT NULL,
  `Gender` text NOT NULL,
  `Role` varchar(50) NOT NULL,
  `Salary` varchar(10) NOT NULL,
  `JoinDate` date NOT NULL,
  `BirthDate` date NOT NULL,
  `NID` int(10) NOT NULL,
  `Phone` varchar(15) NOT NULL,
  `HomeTown` varchar(100) NOT NULL,
  `CurrentCity` varchar(100) NOT NULL,
  `Division` varchar(100) NOT NULL,
  `BloodGroup` varchar(3) NOT NULL,
  `PostalCode` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Users table for Pronic POS System';

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `VendorId` int(255) NOT NULL,
  `VendorTag` int(255) NOT NULL,
  `VendorName` int(255) NOT NULL,
  `ThirdCategoryId` int(255) NOT NULL,
  `VendorDescription` varchar(255) NOT NULL,
  `VendorStatus` varchar(255) NOT NULL,
  `VendorImage` blob NOT NULL,
  `RegisterDate` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barcodes`
--
ALTER TABLE `barcodes`
  ADD PRIMARY KEY (`BarCodeId`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`BrandId`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`ExpenseId`);

--
-- Indexes for table `maincategories`
--
ALTER TABLE `maincategories`
  ADD PRIMARY KEY (`MainCategoryId`);

--
-- Indexes for table `orderproductsmap`
--
ALTER TABLE `orderproductsmap`
  ADD PRIMARY KEY (`OrderProductsCategoriesId`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrderId`),
  ADD UNIQUE KEY `OrderId` (`OrderId`,`Id`);

--
-- Indexes for table `procatemap`
--
ALTER TABLE `procatemap`
  ADD PRIMARY KEY (`PCID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ProductId`);

--
-- Indexes for table `secondcategories`
--
ALTER TABLE `secondcategories`
  ADD PRIMARY KEY (`SecondCategoryId`);

--
-- Indexes for table `thirdcategories`
--
ALTER TABLE `thirdcategories`
  ADD PRIMARY KEY (`ThirdCategoryId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`VendorId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `ExpenseId` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `maincategories`
--
ALTER TABLE `maincategories`
  MODIFY `MainCategoryId` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orderproductsmap`
--
ALTER TABLE `orderproductsmap`
  MODIFY `OrderProductsCategoriesId` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `OrderId` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `procatemap`
--
ALTER TABLE `procatemap`
  MODIFY `PCID` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `ProductId` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `secondcategories`
--
ALTER TABLE `secondcategories`
  MODIFY `SecondCategoryId` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `thirdcategories`
--
ALTER TABLE `thirdcategories`
  MODIFY `ThirdCategoryId` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `VendorId` int(255) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `barcodes`
--
ALTER TABLE `barcodes`
  ADD CONSTRAINT `barcodes_ibfk_1` FOREIGN KEY (`BarCodeId`) REFERENCES `orders` (`OrderId`);

--
-- Constraints for table `brands`
--
ALTER TABLE `brands`
  ADD CONSTRAINT `brands_ibfk_1` FOREIGN KEY (`BrandId`) REFERENCES `products` (`ProductId`);

--
-- Constraints for table `maincategories`
--
ALTER TABLE `maincategories`
  ADD CONSTRAINT `maincategories_ibfk_1` FOREIGN KEY (`MainCategoryId`) REFERENCES `procatemap` (`PCID`);

--
-- Constraints for table `orderproductsmap`
--
ALTER TABLE `orderproductsmap`
  ADD CONSTRAINT `orderproductsmap_ibfk_1` FOREIGN KEY (`OrderProductsCategoriesId`) REFERENCES `users` (`ID`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`OrderId`) REFERENCES `users` (`ID`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`ProductId`) REFERENCES `orders` (`OrderId`);

--
-- Constraints for table `secondcategories`
--
ALTER TABLE `secondcategories`
  ADD CONSTRAINT `secondcategories_ibfk_1` FOREIGN KEY (`SecondCategoryId`) REFERENCES `procatemap` (`PCID`);

--
-- Constraints for table `thirdcategories`
--
ALTER TABLE `thirdcategories`
  ADD CONSTRAINT `thirdcategories_ibfk_1` FOREIGN KEY (`ThirdCategoryId`) REFERENCES `procatemap` (`PCID`);

--
-- Constraints for table `vendors`
--
ALTER TABLE `vendors`
  ADD CONSTRAINT `vendors_ibfk_1` FOREIGN KEY (`VendorId`) REFERENCES `procatemap` (`PCID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
