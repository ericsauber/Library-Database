-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 23, 2018 at 01:27 AM
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
-- Database: `library`
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

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Customer_ID`, `First_Name`, `Middle_Init`, `Last_Name`, `Email`, `Username`, `Password`, `Created_Date`, `CAddress_Entity_ID`, `Phone`) VALUES
(1, 'Johnny', '', 'Pham', 'johnny.pham2@mavs.uta.edu', '', '', '0000-00-00', 0, 0),
(2, 'Eric', '', 'Sauber', 'eric.sauber@mavs.uta.edu', '', '', '0000-00-00', 0, 0),
(3, 'Michael', '', 'Fry', 'michael.fry@mavs.uta.edu', '', '', '0000-00-00', 0, 0),
(4, 'Angelina', '', 'Jolie', 'angelina.jolie@mavs.uta.edu', '', '', '0000-00-00', 0, 0),
(5, 'Tiger', '', 'Woods', 'tiger.woods@mavs.uta.edu', '', '', '0000-00-00', 0, 0),
(6, 'Brad', '', 'Pitt', 'brad.pitt@mavs.uta.edu', '', '', '0000-00-00', 0, 0),
(7, 'Britney', '', 'Spears', 'britney.spears@mavs.uta.edu', '', '', '0000-00-00', 0, 0),
(8, 'Michael', '', 'Jordan', 'michael.jordan@mavs.uta.edu', '', '', '0000-00-00', 0, 0),
(9, 'Kobe', '', 'Bryant', 'kobe.bryant@mavs.uta.edu', '', '', '0000-00-00', 0, 0),
(10, 'Howard', '', 'Stern', 'howard.stern@mavs.uta.edu', '', '', '0000-00-00', 0, 0),
(11, 'Kevin', '', 'Hart', 'kevin.hart@mavs.uta.edu', '', '', '0000-00-00', 0, 0),
(12, 'Manny', '', 'Pacquiao', 'manny.pacquiao@mavs.uta.edu', '', '', '0000-00-00', 0, 0),
(13, 'Floyd', '', 'Mayweather', 'floyd.mayweather2@mavs.uta.edu', '', '', '0000-00-00', 0, 0),
(14, 'Elton', '', 'John', 'elton.john@mavs.uta.edu', '', '', '0000-00-00', 0, 0),
(15, 'Steven', '', 'Spielberg', 'steven.spielberg@mavs.uta.edu', '', '', '0000-00-00', 0, 0),
(16, 'Tom', '', 'Hanks', 'tom.hanks@mavs.uta.edu', '', '', '0000-00-00', 0, 0),
(17, 'Robin', '', 'Williams', 'robin.williams@mavs.uta.edu', '', '', '0000-00-00', 0, 0),
(18, 'Mark', '', 'Hamill', 'mark.hammill@mavs.uta.edu', '', '', '0000-00-00', 0, 0),
(19, 'Carrie', '', 'Fisher', 'carrie.fisher@mavs.uta.edu', '', '', '0000-00-00', 0, 0),
(20, 'Harrison', '', 'Ford', 'harrison.ford@mavs.uta.edu', '', '', '0000-00-00', 0, 0);

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
  `Item_Price` double NOT NULL,
  `Item_Name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`Item_ID`, `Type_No`, `Subtype_No`, `Media_No`, `Format_No`, `Subject_No`, `Item_Price`, `Item_Name`) VALUES
('1282570117477', 3, 2, 3, 5, 110, 11, 'Weird Tales (April 2018)'),
('1900783239800', 2, 2, 3, 5, 112, 12, 'Tao Te Ching, by Laozi'),
('3037117082035', 2, 2, 3, 5, 105, 15, 'The Disappeared, by C. J. Box'),
('4348477139161', 2, 2, 3, 5, 111, 20, 'The Communist Manifesto, by Karl Marx'),
('4656905162973', 2, 2, 3, 5, 109, 25, 'The Diary of a Young Girl, by Anne Frank'),
('6130405181145', 2, 2, 3, 5, 117, 14, 'Lonesome Dove, by Larry McMurtry'),
('6244775655318', 2, 2, 3, 5, 115, 55, 'Fundamentals of Database Systems, by Elmasri and Navathe'),
('6261168218049', 3, 3, 3, 5, 107, 65, 'Vanity Fair (April 2018)'),
('7117221369723', 3, 3, 3, 5, 114, 55, 'The Hobbit, by J.R.R. Tolkien'),
('7130436935832', 3, 3, 3, 5, 106, 50, 'TIME (April 2018)'),
('7437541553056', 2, 2, 3, 5, 113, 30, 'Fifty Shades of Grey'),
('9006211592278', 2, 2, 3, 5, 116, 40, 'Into the Wild'),
('9143831716505', 2, 2, 3, 5, 108, 30, 'A People\'s History of the United States'),
('9345458656592', 2, 2, 3, 5, 115, 70, 'Introduction to Algorithms'),
('FE8J28TF3G', 4, 4, 2, 1, 107, 30, 'Schindler\'s List '),
('JIE6GBU69T', 4, 4, 2, 1, 101, 40, 'Avengers: Infinity War'),
('JK7GBG4NGQ', 4, 4, 2, 1, 103, 30, 'Anchorman: The Legend of Ron Burgundy'),
('MOZOGPIT70', 4, 4, 2, 1, 102, 30, 'Frida'),
('QO0P1AXUPJ', 4, 4, 2, 1, 103, 30, 'Caddyshack'),
('T6XCLPS6SH', 4, 4, 2, 1, 104, 30, 'Iron Chef America'),
('VUZXB8TSQF', 4, 4, 2, 1, 113, 35, 'Pretty Woman');

-- --------------------------------------------------------

--
-- Table structure for table `item_formats`
--

CREATE TABLE `item_formats` (
  `Format_No` enum('1','2','3','4','5') NOT NULL,
  `Format_Type` enum('BR','CD','DVD','Digital','Print') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item_formats`
--

INSERT INTO `item_formats` (`Format_No`, `Format_Type`) VALUES
('1', 'BR'),
('2', 'CD'),
('3', 'DVD'),
('4', 'Digital'),
('5', 'Print');

-- --------------------------------------------------------

--
-- Table structure for table `item_media`
--

CREATE TABLE `item_media` (
  `Media_No` enum('1','2','3') NOT NULL,
  `Media_Type` enum('Digital','Disc','Print','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item_media`
--

INSERT INTO `item_media` (`Media_No`, `Media_Type`) VALUES
('1', 'Digital'),
('2', 'Disc'),
('3', 'Print');

-- --------------------------------------------------------

--
-- Table structure for table `item_subject`
--

CREATE TABLE `item_subject` (
  `Subject_No` enum('101','102','103','104','105','106','107','108','109','110','111','112','113','114','115','116','117') NOT NULL,
  `Subject` enum('Action/Adventure','Art','Comedy','Cooking/Recipes','Crime/Mystery','Documentary','Drama','History/Historical','Historical/Fiction','Horror/Thriller','Political/Cultural','Philosphy/Religion','Romance','ScienceFiction/Fantasy','Technical/Scientific','Travel','Western') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item_subject`
--

INSERT INTO `item_subject` (`Subject_No`, `Subject`) VALUES
('101', 'Action/Adventure'),
('102', 'Art'),
('103', 'Comedy'),
('104', 'Cooking/Recipes'),
('105', 'Crime/Mystery'),
('106', 'Documentary'),
('107', 'Drama'),
('108', 'History/Historical'),
('109', 'Historical/Fiction'),
('110', 'Horror/Thriller'),
('111', 'Political/Cultural'),
('112', 'Philosphy/Religion'),
('113', 'Romance'),
('114', 'ScienceFiction/Fantasy'),
('115', 'Technical/Scientific'),
('116', 'Travel'),
('117', 'Western');

-- --------------------------------------------------------

--
-- Table structure for table `item_subtypes`
--

CREATE TABLE `item_subtypes` (
  `Subtype_No` enum('1','2','3','4','5','6') NOT NULL,
  `Subtype` enum('Audio','Hardcover','Paperback','Movie/Film','Television/Series','Other') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item_subtypes`
--

INSERT INTO `item_subtypes` (`Subtype_No`, `Subtype`) VALUES
('1', 'Audio'),
('2', 'Hardcover'),
('3', 'Paperback'),
('4', 'Movie/Film'),
('5', 'Television/Series'),
('6', 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `item_types`
--

CREATE TABLE `item_types` (
  `Type_No` enum('1','2','3','4') NOT NULL,
  `Type` enum('Audio','Book','Periodical','Video') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item_types`
--

INSERT INTO `item_types` (`Type_No`, `Type`) VALUES
('1', 'Audio'),
('2', 'Book'),
('3', 'Periodical'),
('4', 'Video');

-- --------------------------------------------------------

--
-- Table structure for table `order_entries`
--

CREATE TABLE `order_entries` (
  `Order_Entry_ID` int(20) NOT NULL,
  `Order_Date` varchar(30) NOT NULL,
  `Item_ID` varchar(13) NOT NULL,
  `Hist_Price` double NOT NULL,
  `Discount_ID` int(10) NOT NULL,
  `Customer_ID` int(10) NOT NULL,
  `Payment_ID` varchar(20) NOT NULL,
  `Payment_Amt` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_entries`
--

INSERT INTO `order_entries` (`Order_Entry_ID`, `Order_Date`, `Item_ID`, `Hist_Price`, `Discount_ID`, `Customer_ID`, `Payment_ID`, `Payment_Amt`) VALUES
(1, 'April 22, 2018, 8:25pm CDT', '7437541553056', 0, 0, 11, '042218-202508', 0),
(2, 'April 22, 2018, 8:25pm CDT', 'JIE6GBU69T', 0, 0, 18, '042218-202517', 0),
(3, 'April 22, 2018, 8:25pm CDT', 'QO0P1AXUPJ', 0, 0, 3, '042218-202531', 0),
(4, 'April 22, 2018, 8:25pm CDT', '6244775655318', 0, 0, 2, '042218-202538', 0),
(5, 'April 22, 2018, 8:25pm CDT', '6261168218049', 0, 0, 7, '042218-202546', 0),
(6, 'April 22, 2018, 8:25pm CDT', 'JK7GBG4NGQ', 0, 0, 1, '042218-202555', 0),
(7, 'April 22, 2018, 8:26pm CDT', 'T6XCLPS6SH', 0, 0, 12, '042218-202603', 0),
(8, 'April 22, 2018, 8:26pm CDT', '9143831716505', 0, 0, 5, '042218-202611', 0),
(9, 'April 22, 2018, 8:26pm CDT', '7117221369723', 0, 0, 15, '042218-202621', 0),
(10, 'April 22, 2018, 8:26pm CDT', '3037117082035', 0, 0, 8, '042218-202629', 0);

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

--
-- Dumping data for table `payment_types`
--

INSERT INTO `payment_types` (`Payment_TypeNo`, `Payment_Type`) VALUES
('1', 'Debit'),
('2', 'Credit'),
('3', 'Transfer');

-- --------------------------------------------------------

--
-- Table structure for table `srvcr_types`
--

CREATE TABLE `srvcr_types` (
  `Srvcr_TypeNo` enum('1','2','3','4','5','6') NOT NULL,
  `Srvcr_Type` enum('AmericanExpress','Bank','Discover','Mastercard','Other','Visa') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `srvcr_types`
--

INSERT INTO `srvcr_types` (`Srvcr_TypeNo`, `Srvcr_Type`) VALUES
('1', 'AmericanExpress'),
('2', 'Bank'),
('3', 'Discover'),
('4', 'Mastercard'),
('5', 'Other'),
('6', 'Visa');

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

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `Customer_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `order_entries`
--
ALTER TABLE `order_entries`
  MODIFY `Order_Entry_ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
