-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 25, 2018 at 11:01 PM
-- Server version: 5.6.34-log
-- PHP Version: 7.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `address_entities`
--

CREATE TABLE `address_entities` (
  `Address_Entity_ID` int(13) NOT NULL,
  `Street_Number` int(6) NOT NULL,
  `Street_Name` varchar(36) NOT NULL,
  `Building_ID` varchar(4) NOT NULL,
  `Apartment_Num` varchar(4) NOT NULL,
  `Post_Box` varchar(4) NOT NULL,
  `City` varchar(12) NOT NULL,
  `State` varchar(2) NOT NULL,
  `Region` varchar(10) NOT NULL,
  `County` varchar(10) NOT NULL,
  `Postal_Code` int(5) NOT NULL,
  `Misc` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `contributions`
--

CREATE TABLE `contributions` (
  `Item_ID` int(13) NOT NULL,
  `Contributor_ID` int(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `contributors`
--

CREATE TABLE `contributors` (
  `Contributor_ID` int(14) NOT NULL,
  `Con_TypeNo` int(2) NOT NULL,
  `First_Name` varchar(25) NOT NULL,
  `Last_Name` varchar(25) NOT NULL,
  `Company_Name` varchar(30) NOT NULL,
  `CAddress_Entity_ID` int(13) NOT NULL,
  `PhoneNo` int(9) NOT NULL,
  `Email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `contributor_types`
--

CREATE TABLE `contributor_types` (
  `Con_TypeNo` enum('1','2','3','4','5','6','7') NOT NULL,
  `Con_Type` enum('Author','Director','Distributor','Editor','Performer','Producer','Publisher') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Customer_ID` int(10) NOT NULL,
  `First_Name` varchar(25) NOT NULL,
  `Middle_Init` char(1) NOT NULL,
  `Last_Name` varchar(25) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Username` varchar(25) NOT NULL,
  `Password` varchar(10) NOT NULL,
  `Created_Date` date NOT NULL,
  `CAddress_Entity_ID` int(13) NOT NULL,
  `Phone` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customerpayments`
--

CREATE TABLE `customerpayments` (
  `Customer_ID` varchar(10) NOT NULL,
  `Payment_ID` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `discounts`
--

CREATE TABLE `discounts` (
  `Discount_ID` varchar(10) NOT NULL,
  `Start_Date` date NOT NULL,
  `Start_Time` time NOT NULL,
  `End_Date` date NOT NULL,
  `End_Time` time NOT NULL,
  `Disc_TypeNo` int(2) NOT NULL,
  `Discounts_Desc` varchar(128) NOT NULL,
  `Disc_Amt` double NOT NULL,
  `Disc_Min` double NOT NULL,
  `Disc_Max` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `disc_types`
--

CREATE TABLE `disc_types` (
  `Disc_TypeNo` enum('1','2','3','4') NOT NULL,
  `Disc_Type` enum('Percent','Percent','Dollar','Dollar') NOT NULL,
  `Items` enum('1','0','1','0') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `Item_ID` varchar(13) NOT NULL,
  `Type_No` int(2) NOT NULL,
  `Subtype_No` int(2) NOT NULL,
  `Media_No` int(2) NOT NULL,
  `Format_No` int(2) NOT NULL,
  `Subject_No` int(3) NOT NULL,
  `Item_Price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `item_formats`
--

CREATE TABLE `item_formats` (
  `Format_No` enum('1','2','3','4','5') NOT NULL,
  `Format_Type` enum('BR','CD','DVD','Digital','Print') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `item_media`
--

CREATE TABLE `item_media` (
  `Media_No` enum('1','2','3') NOT NULL,
  `Media_Type` enum('Digital','Disc','Print','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `item_subject`
--

CREATE TABLE `item_subject` (
  `Subject_No` enum('101','102','103','104','105','106','107','108','109','110','111','112','113','114','115','116','117') NOT NULL,
  `Subject` enum('Action/Adventure','Art','Comedy','Cooking/Recipes','Crime/Mystery','Documentary','Drama','History/Historical','Historical/Fiction','Horror/Thriller','Political/Cultural','Philosphy/Religion','Romance','ScienceFiction/Fantasy','Technical/Scientific','Travel','Western') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `item_subtypes`
--

CREATE TABLE `item_subtypes` (
  `Subtype_No` enum('1','2','3','4') NOT NULL,
  `Subtype` enum('Audio','Hardcover','Paperback','Movie/Film','Television/Series','Other') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `item_types`
--

CREATE TABLE `item_types` (
  `Type_No` enum('1','2','3','4') NOT NULL,
  `Type` enum('Audio','Book','Periodical','Video') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order_entries`
--

CREATE TABLE `order_entries` (
  `Order_Entry_ID` int(20) NOT NULL,
  `Order_Date` date NOT NULL,
  `Item_ID` int(13) NOT NULL,
  `Hist_Price` double NOT NULL,
  `Discount_ID` int(10) NOT NULL,
  `Customer_ID` int(10) NOT NULL,
  `Payment_ID` int(11) NOT NULL,
  `Payment_Amt` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `Payment_ID` int(11) NOT NULL,
  `Payment_TypeNo` int(2) NOT NULL,
  `Srvcr_TypeNo` int(2) NOT NULL,
  `Srvcr_Name` varchar(15) NOT NULL,
  `Account_No` int(16) NOT NULL,
  `Routing_No` int(11) NOT NULL,
  `CVS` int(4) NOT NULL,
  `Expiration_Date` date NOT NULL,
  `Is_Preferred` int(2) NOT NULL,
  `BAddress_Entity_ID` int(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payment_types`
--

CREATE TABLE `payment_types` (
  `Payment_TypeNo` enum('1','2','3','') NOT NULL,
  `Payment_Type` enum('Debit','Credit','Transfer','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `srvcr_types`
--

CREATE TABLE `srvcr_types` (
  `Srvcr_TypeNo` enum('1','2','3','4','5','6') NOT NULL,
  `Srvcr_Type` enum('AmericanExpress','Bank','Discover','Mastercard','Other','Visa') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `Employee_ID` varchar(10) NOT NULL,
  `First_Name` varchar(25) NOT NULL,
  `Middle_Init` char(1) NOT NULL,
  `Last_Name` varchar(25) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Department` int(2) NOT NULL,
  `Phone` int(10) NOT NULL,
  `Ext` int(5) NOT NULL,
  `EAddress_Entity_ID` int(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `store_items`
--

CREATE TABLE `store_items` (
  `Item_ID` int(13) NOT NULL,
  `Quantity_Available` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address_entities`
--
ALTER TABLE `address_entities`
  ADD PRIMARY KEY (`Address_Entity_ID`);

--
-- Indexes for table `contributors`
--
ALTER TABLE `contributors`
  ADD PRIMARY KEY (`Contributor_ID`);

--
-- Indexes for table `contributor_types`
--
ALTER TABLE `contributor_types`
  ADD PRIMARY KEY (`Con_TypeNo`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Customer_ID`);

--
-- Indexes for table `customerpayments`
--
ALTER TABLE `customerpayments`
  ADD UNIQUE KEY `Customer_ID` (`Customer_ID`),
  ADD UNIQUE KEY `Payment_ID` (`Payment_ID`);

--
-- Indexes for table `discounts`
--
ALTER TABLE `discounts`
  ADD PRIMARY KEY (`Discount_ID`);

--
-- Indexes for table `disc_types`
--
ALTER TABLE `disc_types`
  ADD PRIMARY KEY (`Disc_TypeNo`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`Item_ID`);

--
-- Indexes for table `item_formats`
--
ALTER TABLE `item_formats`
  ADD PRIMARY KEY (`Format_No`);

--
-- Indexes for table `item_subject`
--
ALTER TABLE `item_subject`
  ADD PRIMARY KEY (`Subject_No`);

--
-- Indexes for table `item_subtypes`
--
ALTER TABLE `item_subtypes`
  ADD PRIMARY KEY (`Subtype_No`);

--
-- Indexes for table `item_types`
--
ALTER TABLE `item_types`
  ADD PRIMARY KEY (`Type_No`);

--
-- Indexes for table `order_entries`
--
ALTER TABLE `order_entries`
  ADD PRIMARY KEY (`Order_Entry_ID`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`Payment_ID`);

--
-- Indexes for table `payment_types`
--
ALTER TABLE `payment_types`
  ADD PRIMARY KEY (`Payment_TypeNo`);

--
-- Indexes for table `srvcr_types`
--
ALTER TABLE `srvcr_types`
  ADD PRIMARY KEY (`Srvcr_TypeNo`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`Employee_ID`);

--
-- Indexes for table `store_items`
--
ALTER TABLE `store_items`
  ADD PRIMARY KEY (`Item_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
