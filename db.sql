-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 28, 2020 at 08:00 PM
-- Server version: 5.7.24
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbms`
--
CREATE DATABASE IF NOT EXISTS `dbms` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `dbms`;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cartItemID` int(11) NOT NULL,
  `totalCost` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cartitem`
--

CREATE TABLE `cartitem` (
  `cartItemID` int(11) NOT NULL,
  `productID` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `name_desc` int(11) NOT NULL,
  `imageURL` int(11) NOT NULL,
  `cost` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `productID` varchar(60) DEFAULT NULL,
  `brand` varchar(100) DEFAULT NULL,
  `categories` varchar(100) DEFAULT NULL,
  `color` varchar(45) DEFAULT NULL,
  `imageURL` varchar(400) DEFAULT NULL,
  `name_desc` varchar(150) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `currency` varchar(8) DEFAULT NULL,
  `sizes` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`productID`, `brand`, `categories`, `color`, `imageURL`, `name_desc`, `price`, `currency`, `sizes`) VALUES
('AVpft2VGLJeJML43CbFd', 'PUMA', 'Men\'s Casual Shoes,Shoes,Men\'s Shoes,Clothing', 'Black', 'https://i5.walmartimages.com/asr/ce4c835d-257e-4d2c-a96e-003daa3b485c_1.1a44631a4625867325f4d4b8fb449543.jpeg?odnHeight=450&odnWidth=450&odnBg=FFFFFF', 'Puma R698 Splatter   Round Toe Leather  Sneakers', 100, 'USD', '10.5,10,8.5,9.5,11.5,9,11,12'),
('AVpft2VGLJeJML43CbFd', 'PUMA', 'Men\'s Casual Shoes,Shoes,Men\'s Shoes,Clothing', 'Black', 'https://i5.walmartimages.com/asr/ce4c835d-257e-4d2c-a96e-003daa3b485c_1.1a44631a4625867325f4d4b8fb449543.jpeg?odnHeight=450&odnWidth=450&odnBg=FFFFFF', 'Puma R698 Splatter   Round Toe Leather  Sneakers', 59.99, 'USD', '10.5,10,8.5,9.5,11.5,9,11,12'),
('AVpft2VGLJeJML43CbFd', 'PUMA', 'Men\'s Casual Shoes,Shoes,Men\'s Shoes,Clothing', 'Black', 'https://i5.walmartimages.com/asr/ce4c835d-257e-4d2c-a96e-003daa3b485c_1.1a44631a4625867325f4d4b8fb449543.jpeg?odnHeight=450&odnWidth=450&odnBg=FFFFFF', 'Puma R698 Splatter   Round Toe Leather  Sneakers', 74.99, 'USD', '10.5,10,8.5,9.5,11.5,9,11,12'),
('AVpe9yifLJeJML43zYCL', 'Propet', 'All Men\'s Shoes,Shoes,Men\'s Shoes,Clothing', 'Gold', 'https://i5.walmartimages.com/asr/5a65df82-ecf4-448f-9079-be14f75d2c65_1.3cbd5ca45dbb3f5ea127d97be4822130.jpeg?odnHeight=450&odnWidth=450&odnBg=FFFFFF,https://i5.walmartimages.com/asr/eb14a43a-92f9-439f-8619-bce9df300d01_1.28fd1c8dbd71f95cd2e0d3f110e9e8d2.jpeg?odnHeight=450&odnWidth=450&odnBg=FFFFFF', 'Propet Mack - Men\'s Rejuve Boots - Gunsmoke/gold', 119.95, 'USD', ''),
('AVpe9yifLJeJML43zYCL', 'Propet', 'All Men\'s Shoes,Shoes,Men\'s Shoes,Clothing', 'Gold', 'https://i5.walmartimages.com/asr/5a65df82-ecf4-448f-9079-be14f75d2c65_1.3cbd5ca45dbb3f5ea127d97be4822130.jpeg?odnHeight=450&odnWidth=450&odnBg=FFFFFF,https://i5.walmartimages.com/asr/eb14a43a-92f9-439f-8619-bce9df300d01_1.28fd1c8dbd71f95cd2e0d3f110e9e8d2.jpeg?odnHeight=450&odnWidth=450&odnBg=FFFFFF', 'Propet Mack - Men\'s Rejuve Boots - Gunsmoke/gold', 87.95, 'USD', ''),
('AVpe9yifLJeJML43zYCL', 'Propet', 'All Men\'s Shoes,Shoes,Men\'s Shoes,Clothing', 'Gold', 'https://i5.walmartimages.com/asr/5a65df82-ecf4-448f-9079-be14f75d2c65_1.3cbd5ca45dbb3f5ea127d97be4822130.jpeg?odnHeight=450&odnWidth=450&odnBg=FFFFFF,https://i5.walmartimages.com/asr/eb14a43a-92f9-439f-8619-bce9df300d01_1.28fd1c8dbd71f95cd2e0d3f110e9e8d2.jpeg?odnHeight=450&odnWidth=450&odnBg=FFFFFF', 'Propet Mack - Men\'s Rejuve Boots - Gunsmoke/gold', 96.95, 'USD', ''),
('AVpfztrIilAPnD_xipdx', 'PUMA', 'Men\'s Casual Shoes,Shoes,Men\'s Shoes,Clothing', 'Black', 'https://i5.walmartimages.com/asr/488f7471-381d-402f-88ed-8ed87b04bca7_1.9df55d00d220f4e88a7bf43b11f09eb6.jpeg?odnHeight=450&odnWidth=450&odnBg=FFFFFF', 'Puma Sky Ii Hi Carbon   Round Toe Synthetic  Sneakers', 79.9, 'USD', '10.5,10,9.5,9,8,14'),
('AVpfztrIilAPnD_xipdx', 'PUMA', 'Men\'s Casual Shoes,Shoes,Men\'s Shoes,Clothing', 'Black', 'https://i5.walmartimages.com/asr/488f7471-381d-402f-88ed-8ed87b04bca7_1.9df55d00d220f4e88a7bf43b11f09eb6.jpeg?odnHeight=450&odnWidth=450&odnBg=FFFFFF', 'Puma Sky Ii Hi Carbon   Round Toe Synthetic  Sneakers', 79.9, 'USD', '10.5,10,9.5,9,8,14'),
('AVpfz17O1cnluZ0-rsgq', 'J. Fold', 'Men\'s Jewelry,Men\'s Accessories,Clothing, Shoes & Jewelry,Jewelry', '', 'http://c.shld.net/rpx/i/s/pi/mp/8283/prod_3274219002?src=http%3A%2F%2Fphotos.trendnation.com%2Fproducts%2F510000%2Fcu-536445_1.jpg&d=ce51da5f128f09119c9b1499a0d5b47e60cbdd61,http://c.shld.net/rpx/i/s/pi/mp/8283/prod_3274218902?src=http%3A%2F%2Fphotos.trendnation.com%2Fproducts%2F510000%2Fcu-536445_2.jpg&d=ca7de62cf1798dd9cd50f18a636c2553b4fa98b9', 'J. Fold Mens Leather Overtone Flat Card Case Carrier (blue)', 69.5, 'USD', ''),
('AVpfuKNk1cnluZ0-qEKd', 'COLUMBIA', 'Outdoor Equipment,Hiking Shoes,Men\'s Shoes,Boots,Athletic & Running Shoes,Camping & Hiking', '', '', 'Columbia Men\'s North Plains Low Wp Trail Shoes', 79.99, 'USD', ''),
('AVpfsdTKLJeJML43CAye', 'Georgia Boot', 'Home Hardware & Vents,Men\'s Boots,Nuts,Shoes,Men\'s Shoes,Tools,Clothing', '', 'http://i5.walmartimages.com/dfw/dce07b8c-ecd9/k2-_45171005-1ca7-494c-ad96-3cf49f587697.v1.jpg,http://c.shld.net/rpx/i/s/pi/mp/10011/prod_8058608720?src=http%3A%2F%2Fimages.drillspot.com%2Fpimages%2F001%2F569%2F769%2F1569769_300.jpg&d=52faf0fc417d1e2bb8654578d0835332c4d83fe1', 'Georgia Boot G8315 10.5 M Work Boots,stl,met Grd,mn,10.5m,brn,1pr', 283.24, 'USD', ''),
('AVpfsdTKLJeJML43CAye', 'Georgia Boot', 'Home Hardware & Vents,Men\'s Boots,Nuts,Shoes,Men\'s Shoes,Tools,Clothing', '', 'http://i5.walmartimages.com/dfw/dce07b8c-ecd9/k2-_45171005-1ca7-494c-ad96-3cf49f587697.v1.jpg,http://c.shld.net/rpx/i/s/pi/mp/10011/prod_8058608720?src=http%3A%2F%2Fimages.drillspot.com%2Fpimages%2F001%2F569%2F769%2F1569769_300.jpg&d=52faf0fc417d1e2bb8654578d0835332c4d83fe1', 'Georgia Boot G8315 10.5 M Work Boots,stl,met Grd,mn,10.5m,brn,1pr', 246.3, 'USD', ''),
('AVpfsdTKLJeJML43CAye', 'Georgia Boot', 'Home Hardware & Vents,Men\'s Boots,Nuts,Shoes,Men\'s Shoes,Tools,Clothing', '', 'http://i5.walmartimages.com/dfw/dce07b8c-ecd9/k2-_45171005-1ca7-494c-ad96-3cf49f587697.v1.jpg,http://c.shld.net/rpx/i/s/pi/mp/10011/prod_8058608720?src=http%3A%2F%2Fimages.drillspot.com%2Fpimages%2F001%2F569%2F769%2F1569769_300.jpg&d=52faf0fc417d1e2bb8654578d0835332c4d83fe1', 'Georgia Boot G8315 10.5 M Work Boots,stl,met Grd,mn,10.5m,brn,1pr', 167.47, 'USD', ''),
('AVpf6q1QLJeJML43F9Da', 'Calvin Klein', 'Men,Shoes,Boots', '', '', 'Calvin Klein Fremont Boots', 43.99, 'USD', ''),
('AVpf0wtOLJeJML43EaiL', 'Clarks', 'Shoes,Men\'s Shoes,Boots', '', '', 'Men\'s Clarks Bushacre 2 Navy Suede By Clarks', 64.99, 'USD', ''),
('AVpfu0_kLJeJML43Ct97', 'Justin Boots', 'Men\'s Boots,Shoes,Clothing, Shoes & Jewelry,Men\'s Shoes,Men\'s Work Shoes & Boots', 'Brown', 'http://c.shld.net/rpx/i/s/pi/mp/11862/prod_8486142531?src=http%3A%2F%2Fd3d71ba2asa5oz.cloudfront.net%2F33000965%2Fimages%2F17-wk4633.jpg&d=414ff9c300f674f818093e12cdc04e771e747556', 'Justin Boots Work Boots Mens Wyoming Insulated Composite Toe Brown Wk4633', 209.95, 'USD', '10.5,8.5,10,7,9.5,7.5,9,11.5,8,13,14,11,12'),
('AVpfu0_kLJeJML43Ct97', 'Justin Boots', 'Men\'s Boots,Shoes,Clothing, Shoes & Jewelry,Men\'s Shoes,Men\'s Work Shoes & Boots', 'Brown', 'http://c.shld.net/rpx/i/s/pi/mp/11862/prod_8486142531?src=http%3A%2F%2Fd3d71ba2asa5oz.cloudfront.net%2F33000965%2Fimages%2F17-wk4633.jpg&d=414ff9c300f674f818093e12cdc04e771e747556', 'Justin Boots Work Boots Mens Wyoming Insulated Composite Toe Brown Wk4633', 248, 'USD', '10.5,8.5,10,7,9.5,7.5,9,11.5,8,13,14,11,12'),
('AVpf00RVLJeJML43EblR', 'VANS', 'Clothing,Shoes,Men\'s Shoes,All Men\'s Shoes', '', 'https://i5.walmartimages.com/asr/23c4b1b7-f81f-469a-8a9c-2fbe6425eda8_1.058126598f67168f854da2e4b3e904ab.jpeg?odnHeight=450&odnWidth=450&odnBg=FFFFFF', 'Vans Mirada Men  Round Toe Canvas Black Skate Shoe', 60, 'USD', ''),
('AVpf00RVLJeJML43EblR', 'VANS', 'Clothing,Shoes,Men\'s Shoes,All Men\'s Shoes', '', 'https://i5.walmartimages.com/asr/23c4b1b7-f81f-469a-8a9c-2fbe6425eda8_1.058126598f67168f854da2e4b3e904ab.jpeg?odnHeight=450&odnWidth=450&odnBg=FFFFFF', 'Vans Mirada Men  Round Toe Canvas Black Skate Shoe', 33.99, 'USD', ''),
('AVpf0Wtl1cnluZ0-r2H0', 'Muck Boots', 'Clothing,Shoes,Men\'s Shoes,All Men\'s Shoes', '', 'https://i5.walmartimages.com/asr/0370c57c-3167-48c2-b0a2-d3f538223947_1.473a3d107d695ebae5e6c56e1926d0fe.jpeg?odnHeight=450&odnWidth=450&odnBg=FFFFFF', 'Muck Boots Mens Wetland Premium Hunting Wp Winter Brown Wet-998k', 154.95, 'USD', ''),
('AVpf0Wtl1cnluZ0-r2H0', 'Muck Boots', 'Clothing,Shoes,Men\'s Shoes,All Men\'s Shoes', '', 'https://i5.walmartimages.com/asr/0370c57c-3167-48c2-b0a2-d3f538223947_1.473a3d107d695ebae5e6c56e1926d0fe.jpeg?odnHeight=450&odnWidth=450&odnBg=FFFFFF', 'Muck Boots Mens Wetland Premium Hunting Wp Winter Brown Wet-998k', 159.95, 'USD', ''),
('AVpf0Wtl1cnluZ0-r2H0', 'Muck Boots', 'Clothing,Shoes,Men\'s Shoes,All Men\'s Shoes', '', 'https://i5.walmartimages.com/asr/0370c57c-3167-48c2-b0a2-d3f538223947_1.473a3d107d695ebae5e6c56e1926d0fe.jpeg?odnHeight=450&odnWidth=450&odnBg=FFFFFF', 'Muck Boots Mens Wetland Premium Hunting Wp Winter Brown Wet-998k', 0, 'USD', ''),
('AVpft7GsLJeJML43CcjD', 'Bindi', 'All Men\'s Clothing,Men\'s Activewear,Men\'s Clothing,Clothing, Shoes & Jewelry,Clothing', '', 'http://c.shld.net/rpx/i/s/pi/mp/10152790/prod_13899951324?src=http%3A%2F%2Fdiligentbook.com%2Finventory%2Fimages%2Fimage1I%2FNDAB010FGPCUQ.jpg&d=5974b754e0c83dd2c9e16117486f3111cb320c7e', 'Bindi Bicycle Bike Cycling Long Sleeve + Pants Shorts Set Suits-blue-s', 65.73, 'USD', ''),
('AVpft9mR1cnluZ0-qALV', 'Justin Boots', 'Men\'s Boots,Shoes,Clothing, Shoes & Jewelry,Men\'s Shoes,Men\'s Work Shoes & Boots', 'Brown', 'http://c.shld.net/rpx/i/s/pi/mp/11862/prod_3844508831?src=http%3A%2F%2Fd3d71ba2asa5oz.cloudfront.net%2F33000965%2Fimages%2F17-wk960.jpg&d=b127b2689a68dcb441afc29addaf7dab9328f880', 'Justin Boots Work Boots Mens Worker Ii Wyoming Waterproof Brown Wk960', 139.95, 'USD', '10.5,8.5,10,9.5,9,8,13,11,12'),
('AVpft9mR1cnluZ0-qALV', 'Justin Boots', 'Men\'s Boots,Shoes,Clothing, Shoes & Jewelry,Men\'s Shoes,Men\'s Work Shoes & Boots', 'Brown', 'http://c.shld.net/rpx/i/s/pi/mp/11862/prod_3844508831?src=http%3A%2F%2Fd3d71ba2asa5oz.cloudfront.net%2F33000965%2Fimages%2F17-wk960.jpg&d=b127b2689a68dcb441afc29addaf7dab9328f880', 'Justin Boots Work Boots Mens Worker Ii Wyoming Waterproof Brown Wk960', 162, 'USD', '10.5,8.5,10,9.5,9,8,13,11,12'),
('AVpfsfUV1cnluZ0-pkHO', 'Justin Boots', 'Men\'s Boots,Shoes,Clothing, Shoes & Jewelry,Men\'s Shoes,Men\'s Work Shoes & Boots', 'Wyoming', 'http://c.shld.net/rpx/i/s/pi/mp/11862/prod_8518634431?src=http%3A%2F%2Fd3d71ba2asa5oz.cloudfront.net%2F33000965%2Fimages%2F17-wk2119.jpg&d=cafdad2545b962a79aca7a7eaae1ce4ad19f9592', 'Justin Boots Work Boots Mens Western Waterproof Leather Wyoming Wk2119', 209, 'USD', '10.5,8.5,10,7,9.5,7.5,9,11.5,8,13,14,11,12'),
('AVpfsfUV1cnluZ0-pkHO', 'Justin Boots', 'Men\'s Boots,Shoes,Clothing, Shoes & Jewelry,Men\'s Shoes,Men\'s Work Shoes & Boots', 'Wyoming', 'http://c.shld.net/rpx/i/s/pi/mp/11862/prod_8518634431?src=http%3A%2F%2Fd3d71ba2asa5oz.cloudfront.net%2F33000965%2Fimages%2F17-wk2119.jpg&d=cafdad2545b962a79aca7a7eaae1ce4ad19f9592', 'Justin Boots Work Boots Mens Western Waterproof Leather Wyoming Wk2119', 179.95, 'USD', '10.5,8.5,10,7,9.5,7.5,9,11.5,8,13,14,11,12'),
('AVpfw9NCilAPnD_xh2lQ', 'Holloway Sportswear', 'Clothing, Shoes & Jewelry,Clothing,Men\'s Clothing,Men\'s Activewear,All Men\'s Clothing', 'Black,Navy,Royal,Scarlet', 'http://c.shld.net/rpx/i/s/pi/mp/10158196/prod_3589084232?src=http%3A%2F%2Fwww.augustaactive.com%2Fmedia%2Fcatalog%2Fproduct%2F2%2F2%2F229610-tall-trance-pant-scarlet-holloway-sportswear.jpg&d=241dfe7b9b5f4c57e30db65267e2f96e174e8deb', 'Holloway Sportswear Men\'s Tall Trance Pant', 39.74, 'USD', 'L,XL,3X'),
('AVpfw9NCilAPnD_xh2lQ', 'Holloway Sportswear', 'Clothing, Shoes & Jewelry,Clothing,Men\'s Clothing,Men\'s Activewear,All Men\'s Clothing', 'Black,Navy,Royal,Scarlet', 'http://c.shld.net/rpx/i/s/pi/mp/10158196/prod_3589084232?src=http%3A%2F%2Fwww.augustaactive.com%2Fmedia%2Fcatalog%2Fproduct%2F2%2F2%2F229610-tall-trance-pant-scarlet-holloway-sportswear.jpg&d=241dfe7b9b5f4c57e30db65267e2f96e174e8deb', 'Holloway Sportswear Men\'s Tall Trance Pant', 44.99, 'USD', 'L,XL,3X'),
('AVpf0JIo1cnluZ0-ryLD', 'Converse', 'Clothing,Shoes,Men\'s Shoes,All Men\'s Shoes', 'Aegean Aqua,Mouse,Rebel Teal,Roadtrip Blue', 'https://i5.walmartimages.com/asr/193c813d-1db9-4395-be26-7afca3f827a5_1.bc351ee420a86b42fc2efab5b33d264f.jpeg?odnHeight=450&odnWidth=450&odnBg=FFFFFF', 'Converse Chuck Taylor All Star Seasonal Ox Fashion Sneaker Shoe - Boys', 30, 'USD', ''),
('AVpfsKTALJeJML43B7Su', 'Ralph Lauren', 'Sneakers,Men,Shoes,Sale', 'WineOlive', 'http://www.ralphlauren.com/graphics/product_images/pPOLO2-21490899_standard_v330.jpg', 'Lander Plaid Sneaker', 59, 'USD', ''),
('AVpfsKTALJeJML43B7Su', 'Ralph Lauren', 'Sneakers,Men,Shoes,Sale', 'WineOlive', 'http://www.ralphlauren.com/graphics/product_images/pPOLO2-21490899_standard_v330.jpg', 'Lander Plaid Sneaker', 24.99, 'USD', ''),
('AVpfsKTALJeJML43B7Su', 'Ralph Lauren', 'Sneakers,Men,Shoes,Sale', 'WineOlive', 'http://www.ralphlauren.com/graphics/product_images/pPOLO2-21490899_standard_v330.jpg', 'Lander Plaid Sneaker', 59, 'USD', ''),
('AVpfsKTALJeJML43B7Su', 'Ralph Lauren', 'Sneakers,Men,Shoes,Sale', 'WineOlive', 'http://www.ralphlauren.com/graphics/product_images/pPOLO2-21490899_standard_v330.jpg', 'Lander Plaid Sneaker', 59, 'USD', ''),
('AVpfsKTALJeJML43B7Su', 'Ralph Lauren', 'Sneakers,Men,Shoes,Sale', 'WineOlive', 'http://www.ralphlauren.com/graphics/product_images/pPOLO2-21490899_standard_v330.jpg', 'Lander Plaid Sneaker', 59, 'USD', ''),
('AVpfsKTALJeJML43B7Su', 'Ralph Lauren', 'Sneakers,Men,Shoes,Sale', 'WineOlive', 'http://www.ralphlauren.com/graphics/product_images/pPOLO2-21490899_standard_v330.jpg', 'Lander Plaid Sneaker', 59, 'USD', ''),
('AVpfsKTALJeJML43B7Su', 'Ralph Lauren', 'Sneakers,Men,Shoes,Sale', 'WineOlive', 'http://www.ralphlauren.com/graphics/product_images/pPOLO2-21490899_standard_v330.jpg', 'Lander Plaid Sneaker', 59, 'USD', ''),
('AVpfsKTALJeJML43B7Su', 'Ralph Lauren', 'Sneakers,Men,Shoes,Sale', 'WineOlive', 'http://www.ralphlauren.com/graphics/product_images/pPOLO2-21490899_standard_v330.jpg', 'Lander Plaid Sneaker', 59, 'USD', ''),
('AVpfsKTALJeJML43B7Su', 'Ralph Lauren', 'Sneakers,Men,Shoes,Sale', 'WineOlive', 'http://www.ralphlauren.com/graphics/product_images/pPOLO2-21490899_standard_v330.jpg', 'Lander Plaid Sneaker', 59, 'USD', ''),
('AVpfsKTALJeJML43B7Su', 'Ralph Lauren', 'Sneakers,Men,Shoes,Sale', 'WineOlive', 'http://www.ralphlauren.com/graphics/product_images/pPOLO2-21490899_standard_v330.jpg', 'Lander Plaid Sneaker', 59, 'USD', ''),
('AVpfsKTALJeJML43B7Su', 'Ralph Lauren', 'Sneakers,Men,Shoes,Sale', 'WineOlive', 'http://www.ralphlauren.com/graphics/product_images/pPOLO2-21490899_standard_v330.jpg', 'Lander Plaid Sneaker', 59, 'USD', ''),
('AVpfsKTALJeJML43B7Su', 'Ralph Lauren', 'Sneakers,Men,Shoes,Sale', 'WineOlive', 'http://www.ralphlauren.com/graphics/product_images/pPOLO2-21490899_standard_v330.jpg', 'Lander Plaid Sneaker', 59, 'USD', ''),
('AVpfsKTALJeJML43B7Su', 'Ralph Lauren', 'Sneakers,Men,Shoes,Sale', 'WineOlive', 'http://www.ralphlauren.com/graphics/product_images/pPOLO2-21490899_standard_v330.jpg', 'Lander Plaid Sneaker', 59, 'USD', ''),
('AVpfsKTALJeJML43B7Su', 'Ralph Lauren', 'Sneakers,Men,Shoes,Sale', 'WineOlive', 'http://www.ralphlauren.com/graphics/product_images/pPOLO2-21490899_standard_v330.jpg', 'Lander Plaid Sneaker', 59, 'USD', ''),
('AVpfsKTALJeJML43B7Su', 'Ralph Lauren', 'Sneakers,Men,Shoes,Sale', 'WineOlive', 'http://www.ralphlauren.com/graphics/product_images/pPOLO2-21490899_standard_v330.jpg', 'Lander Plaid Sneaker', 59, 'USD', ''),
('AVpfsKTALJeJML43B7Su', 'Ralph Lauren', 'Sneakers,Men,Shoes,Sale', 'WineOlive', 'http://www.ralphlauren.com/graphics/product_images/pPOLO2-21490899_standard_v330.jpg', 'Lander Plaid Sneaker', 59, 'USD', ''),
('AVpfsKTALJeJML43B7Su', 'Ralph Lauren', 'Sneakers,Men,Shoes,Sale', 'WineOlive', 'http://www.ralphlauren.com/graphics/product_images/pPOLO2-21490899_standard_v330.jpg', 'Lander Plaid Sneaker', 59, 'USD', ''),
('AVpfsKTALJeJML43B7Su', 'Ralph Lauren', 'Sneakers,Men,Shoes,Sale', 'WineOlive', 'http://www.ralphlauren.com/graphics/product_images/pPOLO2-21490899_standard_v330.jpg', 'Lander Plaid Sneaker', 59, 'USD', ''),
('AVpfsKTALJeJML43B7Su', 'Ralph Lauren', 'Sneakers,Men,Shoes,Sale', 'WineOlive', 'http://www.ralphlauren.com/graphics/product_images/pPOLO2-21490899_standard_v330.jpg', 'Lander Plaid Sneaker', 59, 'USD', ''),
('AVpfsKTALJeJML43B7Su', 'Ralph Lauren', 'Sneakers,Men,Shoes,Sale', 'WineOlive', 'http://www.ralphlauren.com/graphics/product_images/pPOLO2-21490899_standard_v330.jpg', 'Lander Plaid Sneaker', 59, 'USD', ''),
('AVpfsKTALJeJML43B7Su', 'Ralph Lauren', 'Sneakers,Men,Shoes,Sale', 'WineOlive', 'http://www.ralphlauren.com/graphics/product_images/pPOLO2-21490899_standard_v330.jpg', 'Lander Plaid Sneaker', 59, 'USD', ''),
('AVpfsKTALJeJML43B7Su', 'Ralph Lauren', 'Sneakers,Men,Shoes,Sale', 'WineOlive', 'http://www.ralphlauren.com/graphics/product_images/pPOLO2-21490899_standard_v330.jpg', 'Lander Plaid Sneaker', 59, 'USD', ''),
('AVpf0sfB1cnluZ0-r8cU', 'River City', 'Men\'s Boots,Men\'s Winter & Rain Boots,Shoes,Clothing, Shoes & Jewelry,Men\'s Shoes', '', 'http://c.shld.net/rpx/i/s/pi/mp/19671/prod_2150288306?src=http%3A%2F%2Ffiles.lbcdn.info%2For382350%2Flarge%2F611-200cl.jpg&d=6a246c83be28d9cf036f874b78fe1b0e38d3ac63', 'River City Classic .35mm Pvc/polyester 49 Coat Yellow', 7.03, 'USD', ''),
('AVpf0sfB1cnluZ0-r8cU', 'River City', 'Men\'s Boots,Men\'s Winter & Rain Boots,Shoes,Clothing, Shoes & Jewelry,Men\'s Shoes', '', 'http://c.shld.net/rpx/i/s/pi/mp/19671/prod_2150288306?src=http%3A%2F%2Ffiles.lbcdn.info%2For382350%2Flarge%2F611-200cl.jpg&d=6a246c83be28d9cf036f874b78fe1b0e38d3ac63', 'River City Classic .35mm Pvc/polyester 49 Coat Yellow', 9.75, 'USD', ''),
('AVpfuOEwilAPnD_xhFDp', 'PUMA', 'Home Improvement,Men\'s Work & Safety Shoes,Work Safety Clothing and Equipment', '', '', 'Puma Safety Shoes 643015 Athletic Style Work Shoes, 12w, Brown, Pr', 101.5, 'USD', ''),
('AVpf0pxg1cnluZ0-r7om', 'Robert Wayne', 'Men,Shoes,Loafers & Slip-Ons,Casual', '', '', '\'roads\' Perforated Leather Slip-on (men)', 39.95, 'USD', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
