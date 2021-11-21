-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 23, 2020 at 12:18 PM
-- Server version: 10.1.40-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `practices`
--

-- --------------------------------------------------------

--
-- Table structure for table `Admin_Table`
--

CREATE TABLE `Admin_Table` (
  `ID` int(11) NOT NULL,
  `FullName` varchar(30) NOT NULL,
  `EmailID` varchar(20) NOT NULL,
  `Username` varchar(10) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Reg_Date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Admin_Table`
--

INSERT INTO `Admin_Table` (`ID`, `FullName`, `EmailID`, `Username`, `Password`, `Reg_Date`) VALUES
(1, 'Himanshu Chaudhari', 'Himanshu@gmail.com', 'Himanshu', 'Himanshu', '2019-12-15 20:36:00');

-- --------------------------------------------------------

--
-- Table structure for table `Author_Table`
--

CREATE TABLE `Author_Table` (
  `ID` int(11) NOT NULL,
  `FullName` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Author_Table`
--

INSERT INTO `Author_Table` (`ID`, `FullName`) VALUES
(1, 'Ken William'),
(2, 'himanshu123'),
(3, 'Steven'),
(4, 'Kinf'),
(5, 'Morris Mano'),
(6, 'ISA BAUD'),
(7, 'JOHAN POST'),
(8, 'CHRISTINE FUREDY'),
(9, 'Daniel J. Siegel'),
(10, 'Tina Payne Bryson'),
(11, 'Gareth Thomas'),
(12, 'Michael Allaby'),
(13, 'Rajesh Bhatia'),
(14, 'Rattan Lal Ichhpujani'),
(15, 'Elizabeth Kolbert'),
(16, 'KATJA A. STROHFELDT'),
(17, 'Peter J. Mikulecky'),
(18, 'Katherine Brutlag'),
(19, 'Michelle Rose Gilman'),
(20, 'Brian Peterson'),
(21, 'Ricky Scott'),
(22, 'R. Balamurugan'),
(23, 'A.Ramesh'),
(24, 'V.V. Shanmugadoss'),
(25, 'P. Muthusamy'),
(26, 'Kasinathan'),
(27, 'Rajesh Bhatia'),
(28, 'Rattan Lal Ichhpujani'),
(29, 'Max Lugavere'),
(30, 'Paul Greval'),
(31, 'Joe Smith'),
(32, 'Ben Hammersley'),
(33, 'John C. Maxwell'),
(34, 'Jon Duckett'),
(35, 'R. Sean Galloway'),
(36, 'Ethan Brown'),
(37, 'B.K.S. Iyengar'),
(38, 'Frank McLyann'),
(39, 'CHRIS VOSS'),
(41, 'A P J Abdul Kalam'),
(42, 'Arun Tiwari');

-- --------------------------------------------------------

--
-- Table structure for table `Book_Table`
--

CREATE TABLE `Book_Table` (
  `ID` int(11) NOT NULL,
  `Book_Name` varchar(224) NOT NULL,
  `ISBN_NO` varchar(100) NOT NULL,
  `Cat_ID` int(11) NOT NULL,
  `Reg_Date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `Year` int(4) NOT NULL,
  `City` varchar(50) NOT NULL,
  `Publisher` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Book_Table`
--

INSERT INTO `Book_Table` (`ID`, `Book_Name`, `ISBN_NO`, `Cat_ID`, `Reg_Date`, `Year`, `City`, `Publisher`) VALUES
(1, 'solid-waste-management-and-recycling', '555484545', 9, '2020-03-05 04:08:22', 2004, 'London', 'KLUWER ACADEMIC PUBLISHERS'),
(3, 'Essentials of Inorganic Chemistry', '2147483647', 1, '2020-03-05 04:16:58', 2015, 'United Kingdom', 'John Wiley & Sons Ltd'),
(5, 'Basics_of_Environmental_Sci (Section 1)', '0-203137523', 1, '2020-03-05 04:25:24', 2000, 'London', 'Routledge'),
(6, 'The Sixth Extinction An Unnatural History by Elizabeth Kolbert ', '9780805099799', 1, '2020-03-05 04:30:52', 2014, 'New York', 'Hill Education'),
(7, 'The Whole-Brain Child_ 12 Revolutionary Strategies to Nurture Your Childs Developing Mind', '9780553907254', 8, '2020-03-06 05:47:33', 2011, 'New York', 'Delacorte Press'),
(8, 'chemistry workbook for dummies', '9780470251522', 4, '2020-03-06 03:49:48', 2008, 'USA', 'Wiley Publishing,Inc'),
(11, 'digital-logic-and-computer-design-by-m-morris-mano-2nd-edition', '9780544785462', 1, '2020-03-24 18:30:00', 1990, 'London', 'Wiley publishing,Inc'),
(12, 'Earth Science', '9780544784567', 2, '2020-03-05 18:30:00', 2013, 'Mexico', 'Utah State Office of Education'),
(13, 'ENGINEERING MECHANICS AND DRAWING', '9780544775213', 11, '2020-03-05 18:30:00', 2010, 'Tamilnadu', 'Government of Tamilnadu'),
(14, 'Essentials of Medical Microbiology', '8184481543', 4, '2020-03-05 18:30:00', 2008, 'NewDelhi', 'Jaypee Brothers Medical Publishers'),
(15, 'Genius Foods Become Smarter, Happier, and More Productive While Protecting Your Brain for Life', '8184481521', 9, '2020-03-05 18:30:00', 2009, 'Columbia', 'Harper Collins Publishers'),
(16, 'Guitar Scales Easy Music Lessons', '8184484567', 5, '2020-03-05 18:30:00', 2004, 'Torronto', 'Walker publishing,Inc'),
(17, 'Hacking Gmail', '9780764596117', 10, '2020-03-05 18:30:00', 2006, 'Indiana', 'Wiley Publishing,Inc'),
(18, 'Higher Engineering Mathematics', '9781856177672', 11, '2020-03-05 18:30:00', 2010, 'USA', 'Elsevier Ltd'),
(19, 'How Successful People Think', '9781599952154', 12, '2020-03-05 18:30:00', 2009, 'New York', 'Hachette Book Group,Inc'),
(20, 'HTML & CSS desgin and build websites', '9781118008188', 11, '2020-03-05 18:30:00', 2011, 'USA', 'John Wiley & Sons, Inc'),
(21, 'HTML & CSS', '9781118008188 ', 1, '2020-03-05 18:30:00', 2011, 'USA', 'John Wiley & Sons, Inc'),
(22, 'It Starts with Food Discover the Whole30 and Change Your Life in Unexpected Ways', '9781936608898', 9, '2020-03-05 18:30:00', 2012, 'USA', 'Victory Belt Publishing Inc'),
(23, 'Learning JavaScript', '9781491914915', 1, '2020-03-05 18:30:00', 2006, 'USA', 'O’Reilly Media, Inc'),
(24, 'Light on Life The Yoga Journey to Wholeness, Inner Peace, and Ultimate Freedom', '1551928590', 9, '2020-03-05 18:30:00', 2005, 'USA', 'RainCoast Books'),
(25, 'Never Split the Difference Negotiating As If Your Life Depended On It', '0812662782', 12, '2020-03-06 06:43:07', 1997, 'New York', 'HarperCollins'),
(26, 'Wings Of Fire', '8173711461', 6, '2020-09-19 01:58:27', 1999, 'Mumbai', 'Universities Press'),
(35, 'trial', '7845123548', 3, '2020-09-23 05:40:07', 2010, 'Mumabi', 'DigitalBook');

-- --------------------------------------------------------

--
-- Table structure for table `Category_Table`
--

CREATE TABLE `Category_Table` (
  `ID` int(11) NOT NULL,
  `Category_Type` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Category_Table`
--

INSERT INTO `Category_Table` (`ID`, `Category_Type`) VALUES
(1, 'computer'),
(2, 'nature'),
(3, 'Politics'),
(4, 'science'),
(5, 'Art'),
(6, 'Biography'),
(7, 'Business'),
(8, 'Childeren'),
(9, 'Health'),
(10, 'Technology'),
(11, 'Education'),
(12, 'Fiction'),
(13, 'Growth'),
(17, 'operating system');

-- --------------------------------------------------------

--
-- Table structure for table `Customer_Table`
--

CREATE TABLE `Customer_Table` (
  `ID` int(11) NOT NULL,
  `FullName` varchar(30) NOT NULL,
  `EmailID` varchar(20) NOT NULL,
  `MobileNO` varchar(30) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Reg_Date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `Update_Date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Customer_Table`
--

INSERT INTO `Customer_Table` (`ID`, `FullName`, `EmailID`, `MobileNO`, `Password`, `Reg_Date`, `Update_Date`) VALUES
(1, 'Yash Chaudhari', 'Yash@gmail.com', '1234567890', '1234', '2020-01-03 14:42:07', '2020-01-03 14:42:07'),
(3, 'Nilima Chaudhari', 'Nilima@gmail.com', '2134567980', 'Nilima', '2019-12-09 23:54:00', '2019-12-11 07:44:16'),
(4, 'Yogesh Bhirud', 'Yogesh@gmail.com', '2147483647', '1234', '2019-12-22 00:56:16', '2019-12-22 00:56:16'),
(7, 'Rajesh Chaudhari', 'Rajesh77@gmail.com', '2147483647', 'Rajesh', '2020-09-16 02:37:17', '2020-09-16 02:37:17'),
(8, 'Mayur Chaudhari', 'Mayur@gmail.com', '895623147', 'Mayur', '2020-09-19 13:42:02', '2020-09-19 13:42:02'),
(9, 'Prashant Patil', 'Prashant@gmail.com', '9078451265', 'Prashant', '2020-09-18 22:31:23', '2020-09-18 22:31:23'),
(10, 'Piyush Chaudhari', 'Piyush@gmail.com', '9088561278', 'Piyush123', '2020-09-19 16:57:45', '2020-09-19 16:57:45');

-- --------------------------------------------------------

--
-- Table structure for table `download_Data`
--

CREATE TABLE `download_Data` (
  `ID` int(11) NOT NULL,
  `BOOK_ID` int(11) NOT NULL,
  `filename` varchar(100) NOT NULL,
  `type` varchar(50) NOT NULL,
  `size` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `download_Data`
--

INSERT INTO `download_Data` (`ID`, `BOOK_ID`, `filename`, `type`, `size`) VALUES
(1, 1, '', 'application/pdf', 1918353),
(2, 4, '', 'application/pdf', 3968580),
(3, 5, '', 'application/pdf', 7313055),
(4, 6, '', 'application/pdf', 3565934),
(5, 0, '', 'application/pdf', 3502881),
(6, 7, '', 'application/pdf', 3502881),
(7, 8, '', 'application/pdf', 8055515),
(8, 25, '', 'application/pdf', 1383132),
(9, 26, '', 'application/pdf', 2117087),
(10, 26, '', 'application/pdf', 2117087),
(11, 27, '', 'application/pdf', 742574),
(12, 28, '', 'application/pdf', 742574),
(13, 29, '', 'application/pdf', 730919),
(14, 30, '', 'application/pdf', 1456999),
(15, 31, '', 'application/pdf', 725835),
(16, 32, '', 'application/pdf', 728544),
(17, 33, '', 'application/pdf', 117078),
(18, 34, '', 'application/pdf', 728544),
(19, 35, '', 'application/pdf', 756713);

-- --------------------------------------------------------

--
-- Table structure for table `Link_Book_Author`
--

CREATE TABLE `Link_Book_Author` (
  `ID` int(11) NOT NULL,
  `Auth_ID` int(11) NOT NULL,
  `Book_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Link_Book_Author`
--

INSERT INTO `Link_Book_Author` (`ID`, `Auth_ID`, `Book_ID`) VALUES
(1, 6, 1),
(2, 7, 1),
(3, 8, 1),
(4, 11, 4),
(5, 12, 5),
(6, 15, 6),
(7, 9, 0),
(8, 10, 0),
(9, 9, 7),
(10, 10, 7),
(11, 17, 8),
(12, 18, 8),
(13, 19, 8),
(14, 20, 8),
(15, 5, 11),
(16, 5, 11),
(17, 21, 12),
(18, 22, 13),
(19, 23, 13),
(20, 24, 13),
(21, 25, 13),
(22, 26, 13),
(23, 13, 14),
(24, 28, 14),
(25, 29, 15),
(26, 30, 15),
(27, 31, 16),
(28, 32, 17),
(29, 31, 18),
(30, 33, 19),
(31, 34, 20),
(32, 34, 21),
(33, 35, 22),
(34, 36, 23),
(35, 37, 24),
(36, 39, 25),
(38, 41, 26),
(39, 42, 26),
(40, 2, 27),
(41, 2, 28),
(42, 2, 29),
(43, 1, 30),
(44, 1, 31),
(45, 2, 32),
(46, 3, 33),
(47, 3, 34);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Admin_Table`
--
ALTER TABLE `Admin_Table`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Author_Table`
--
ALTER TABLE `Author_Table`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Book_Table`
--
ALTER TABLE `Book_Table`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Category` (`Cat_ID`);

--
-- Indexes for table `Category_Table`
--
ALTER TABLE `Category_Table`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Customer_Table`
--
ALTER TABLE `Customer_Table`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `download_Data`
--
ALTER TABLE `download_Data`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `BOOK_ID` (`BOOK_ID`);

--
-- Indexes for table `Link_Book_Author`
--
ALTER TABLE `Link_Book_Author`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Auth_ID` (`Auth_ID`),
  ADD KEY `Book_ID` (`Book_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Admin_Table`
--
ALTER TABLE `Admin_Table`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `Author_Table`
--
ALTER TABLE `Author_Table`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `Book_Table`
--
ALTER TABLE `Book_Table`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `Category_Table`
--
ALTER TABLE `Category_Table`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `Customer_Table`
--
ALTER TABLE `Customer_Table`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `download_Data`
--
ALTER TABLE `download_Data`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `Link_Book_Author`
--
ALTER TABLE `Link_Book_Author`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Book_Table`
--
ALTER TABLE `Book_Table`
  ADD CONSTRAINT `book_table_ibfk_2` FOREIGN KEY (`Cat_ID`) REFERENCES `Category_Table` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
