-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 07, 2021 at 03:07 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `k_mela`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_list`
--

DROP TABLE IF EXISTS `admin_list`;
CREATE TABLE `admin_list` (
  `admin_id` int(11) NOT NULL,
  `admin_adhar` int(11) NOT NULL,
  `admin_password` varchar(50) NOT NULL,
  `admin_sup` int(11) NOT NULL,
  `admin_task` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_list`
--

INSERT INTO `admin_list` (`admin_id`, `admin_adhar`, `admin_password`, `admin_sup`, `admin_task`) VALUES
(1, 100003647, 'MRuPd7o', 1, 'Main Admin'),
(2, 435084410, 'Z4TWzKuLXKX', 1, 'Business Development'),
(3, 32048595, 'MRuPd7o', 1, 'Main Admin'),
(4, 43504654, 'Z4TWzKuLXKX', 1, 'Business Development'),
(5, 42373594, 'uWLJtFvXAai', 1, 'Security'),
(6, 34245366, 'pGHxi4BjCV02', 1, 'Training'),
(7, 426346357, 'v5YdR1tn5', 1, 'Business Development'),
(8, 200003647, '2xk1PCaSDtj', 2, 'Product Management'),
(9, 785090789, 'VvASW26wn', 2, 'Support'),
(12, 2147483647, 'OIHpEPPWA1YQ', 3, 'Support');

-- --------------------------------------------------------

--
-- Table structure for table `donation_list`
--

DROP TABLE IF EXISTS `donation_list`;
CREATE TABLE `donation_list` (
  `donation_id` int(11) NOT NULL,
  `donation_pil_id` int(11) NOT NULL,
  `donation_amount` int(11) NOT NULL,
  `donation_date` date NOT NULL,
  `donation_mode` varchar(30) NOT NULL,
  `donation_message` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `donation_list`
--

INSERT INTO `donation_list` (`donation_id`, `donation_pil_id`, `donation_amount`, `donation_date`, `donation_mode`, `donation_message`) VALUES
(1, 1, 100000, '2021-10-03', 'CASH', 'Har Har Gange'),
(2, 2, 10001, '2021-10-03', 'CASH', 'Har Har Gange'),
(3, 3, 300000, '2021-10-04', 'CASH', 'Har Har Gange'),
(4, 4, 2500, '2021-10-04', 'CASH', 'Har Har Gange'),
(5, 5, 11000, '2021-10-04', 'UPI', 'Har Har Gange'),
(6, 6, 20000, '2021-10-05', 'UPI', 'Har Har Gange'),
(7, 7, 50000, '2021-10-05', 'UPI', 'Har Har Gange'),
(8, 8, 120000, '2021-10-05', 'UPI', 'Har Har Gange'),
(9, 9, 5000, '2021-10-03', 'Demand Draft', 'Har Har Gange'),
(10, 10, 6000, '2021-10-04', 'Demand Draft', 'Har Har Gange');

-- --------------------------------------------------------

--
-- Table structure for table `item_list`
--

DROP TABLE IF EXISTS `item_list`;
CREATE TABLE `item_list` (
  `item_id` int(11) NOT NULL,
  `item_name` varchar(50) NOT NULL,
  `item_price` decimal(4,2) NOT NULL,
  `item_avail` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `item_list`
--

INSERT INTO `item_list` (`item_id`, `item_name`, `item_price`, `item_avail`) VALUES
(123, 'Khaki', '20.00', 300),
(132, 'Moti', '99.99', 500),
(134, 'Ganga Jal', '10.00', 10000),
(243, 'Khadau', '99.99', 1000),
(341, 'Kaju Katli', '99.99', 1000),
(343, 'Abhishek', '50.00', 100000),
(344, 'Pooja Pushp', '99.99', 10000),
(345, 'Rudraksh', '99.99', 10000),
(354, 'MotiChoor', '25.00', 7000),
(435, 'Laddu', '30.00', 8000),
(890, 'Gulab Jamun', '41.00', 5000);

-- --------------------------------------------------------

--
-- Table structure for table `pilgrim`
--

DROP TABLE IF EXISTS `pilgrim`;
CREATE TABLE `pilgrim` (
  `pilgrim_id` int(11) NOT NULL,
  `pilgrim_name` varchar(50) NOT NULL,
  `pilgrim_adhar` int(11) NOT NULL,
  `pilgrim_password` varchar(50) NOT NULL,
  `pilgrim_address` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pilgrim`
--

INSERT INTO `pilgrim` (`pilgrim_id`, `pilgrim_name`, `pilgrim_adhar`, `pilgrim_password`, `pilgrim_address`) VALUES
(1, 'Naveen', 1234567890, 'nm9990', 'CA,1801'),
(2, 'Arnold', 2147483647, 'J61xqQ1rpK9', '330 Sutherland Trail'),
(3, 'Titus', 224357492, 'v5EcI9', '1 Colorado Trail'),
(4, 'Reagen', 2147483638, 'FvFkR2mUW', '14 Prentice Avenue'),
(5, 'Simone', 2147483639, 'x9ueCkl80D1', '7002 Armistice Circle'),
(6, 'Darla', 2147483630, 'ECAOpLXcrK', '65836 Walton Way'),
(7, 'Aviva', 262887401, 'Drlzej', '9530 West Hill'),
(8, 'Joby', 2147483321, 'DNn8dqPX', '165 Sunbrook Plaza'),
(9, 'Alvin', 2147233652, 's52oJij03rV5', '9767 Village Trail'),
(10, 'Inger', 1577445503, 'KssJjjL6P', '1677 Sugar Drive'),
(11, 'Vonny', 2017483653, 'Ks8TqAH', '7 Ohio Avenue'),
(12, 'Krystle', 2147424647, '6xnWme1ojf', '50 Havey Plaza'),
(13, 'Athene', 2147425647, 'QNrLcINax', '096 Gale Parkway'),
(14, 'Merna', 2147263647, '1feOepkQi', '1 Park Meadow Junction'),
(15, 'Alisa', 2147333647, 'NP39Wnp8Qrd', '89273 Lunder Hill'),
(16, 'Adelaida', 2147093647, 'eulwfLD', '1 Melrose Lane'),
(17, 'Renard', 2147103647, 'uUx0IoC', '895 Anhalt Parkway'),
(18, 'Jammal', 1780270165, 'BwfXtY8z', '407 Stuart Way'),
(19, 'Prent', 1147483647, 'o6J12B1T', '4 Rieder Street'),
(20, 'Charmian', 2047493647, 'PYE9JG7', '85 Hoepker Street'),
(21, 'Lucas', 2140083647, 'x1UDvK', '04592 Menomonie Plaza'),
(22, 'Nicolai', 2123483647, 'iBPZqZq', '584 American Ash Plaza'),
(23, 'Allie', 2100003647, 'xuI6zRTS3bmt', '79 Blaine Crossing'),
(24, 'Marcela', 232411117, 'SpsVgs', '489 Myrtle Street'),
(25, 'Ogdan', 2142222647, 'he57WMEa3', '08677 Rockefeller Hill'),
(26, 'Lyndy', 2147483647, 'yFJbtoJf', '8 Darwin Court'),
(27, 'Misty', 1364164418, '5wsIB5dJF', '98823 Chive Parkway'),
(28, 'Giffy', 995138206, 'Y95JAZc53', '23 Crescent Oaks Parkway'),
(29, 'Gretna', 2147483647, 'jMnsQdsIthtZ', '3389 Vernon Court'),
(30, 'Tallou', 2147483647, 'YhjE4YpCcI', '8331 Eggendart Road'),
(31, 'Constantin', 2147483647, 'EDlyAV', '9403 Nancy Point'),
(32, 'Sholom', 2147483647, '95El8a', '14965 Pearson Avenue'),
(33, 'Monroe', 1189969181, 'QCPbdZ7JTA1', '53033 Reinke Crossing'),
(34, 'Netta', 2147483647, 'uPbLkGEgRB', '7 Huxley Street'),
(35, 'Gino', 2147483647, 'bStZkSrGOYsU', '030 Jenifer Park'),
(36, 'Tabitha', 2147483647, 'Zr0wqb', '869 Loomis Trail'),
(37, 'Anette', 2147483647, '6EdP2tvGGT', '56893 Carioca Place'),
(38, 'Baird', 2147483647, '1u2iHjQl6', '7947 Redwing Junction'),
(39, 'Malvina', 2147483647, 'UDFlKR4', '84 Lighthouse Bay Plaza'),
(40, 'Danila', 2147483647, 'CxBYwK7qGjxp', '81690 Monterey Way'),
(41, 'Melba', 2147483647, 'yjCOHKhI', '27 Lien Alley'),
(42, 'Grantley', 2147483647, '208kfLX5', '0 Moland Way'),
(43, 'Jeannine', 2147483647, 'MN7BTWlRM4WK', '41080 Talmadge Center'),
(44, 'Tanny', 2038090890, 'SAfAigNmd', '578 Independence Way'),
(45, 'Bernhard', 2147483647, 'TrtzzNVo9L', '1114 Anzinger Park'),
(46, 'Massimo', 2147483647, 'RPHVxuBp6O', '37 Rowland Point'),
(47, 'Adora', 2147483647, '6cyjBGRWH', '94855 Farwell Crossing'),
(48, 'Eba', 2147483647, 'kFrn8gHPth6', '347 Independence Court'),
(49, 'Malinda', 2147483647, 'P0YpkxRl4OIC', '85691 Namekagon Plaza'),
(50, 'Doyle', 2147483647, 'U2RmES', '1 Montana Point'),
(51, 'Leela', 2147483647, 'SUQ67h', '9714 Mccormick Circle'),
(52, 'Wylie', 2147483647, 'ZVn3rIdYZ0', '0 Pierstorff Point'),
(53, 'Chrissy', 2147483647, 'IEILip', '81069 American Pass'),
(54, 'Twila', 2147483647, '8CBrrh', '55241 Debra Place'),
(55, 'Kahlil', 2147483647, 'gxnZTTI', '33658 Atwood Terrace'),
(56, 'Jory', 1449594441, 'gDzY2v3Cd', '1 South Pass'),
(57, 'Elvin', 2147483647, 'c7Zo8vKlXMqr', '4 Moland Avenue'),
(58, 'Barny', 2147483647, 'WoSTTUh', '4136 Grim Trail'),
(59, 'Addison', 2147483647, 'J1GQOwA1k', '2908 Carberry Plaza'),
(60, 'Dimitri', 2147483647, 'j6BcxYj', '0 Maple Wood Park'),
(61, 'Dollie', 273471120, 'cMV53qIn', '37 Pankratz Plaza'),
(62, 'Conroy', 2147483647, '0rPWZm', '44 Nancy Avenue'),
(63, 'Thom', 2147483647, 'YkwpMUzN2S8', '74 Dapin Park'),
(64, 'Harwell', 969922566, 'KNrwXC9', '65 Division Way'),
(65, 'Ashlie', 2147483647, 'eNNGe9h', '2007 Kenwood Street'),
(66, 'Brose', 2147483647, 'PmDvjklcN8', '8846 Colorado Avenue'),
(67, 'Lucinda', 2147483647, 'cxXiTW', '83559 Stang Point'),
(68, 'Nollie', 1827955813, 'BLwDuFSHnW', '61738 Carioca Hill'),
(69, 'Menard', 2147483647, 'JvRQkANVew', '1 Starling Way'),
(70, 'Lexis', 2147483647, 'fz6TYRk6kXs', '88 Ohio Avenue'),
(71, 'Arleen', 2147483647, 'kpEYq51Anpm', '07 Meadow Valley Crossing'),
(72, 'Natividad', 2147483647, 'UR4uBK', '8 Main Crossing'),
(73, 'Shannon', 2147483647, 'wg8os2LNyc', '63 Troy Hill'),
(74, 'Devon', 2147483647, 'dfb9jF', '1 Esch Plaza'),
(75, 'Lucilia', 2147483647, 'XJGIsIjpnSIS', '5612 Stone Corner Avenue'),
(76, 'Torre', 2147483647, 'BDufaswyUZP', '2016 Spohn Terrace'),
(77, 'Steward', 2147483647, 'hQXrso', '02215 Acker Point'),
(78, 'Scarlett', 1002346339, 'qCUISGeC', '3 Brown Hill'),
(79, 'Xenia', 2147483647, 'n0TKo39WifW', '2 Chinook Junction'),
(80, 'Cherey', 2147483647, 'bnIy3zfUz', '01512 Northfield Terrace'),
(81, 'Collie', 187570981, 'TPFbn1rSy', '7 American Trail'),
(82, 'Jorey', 2147483647, '5ANssN7', '9724 Nelson Circle'),
(83, 'Concordia', 2147483647, 'MisA6ziboR', '6320 Dunning Terrace'),
(84, 'Sean', 2147483647, '2f7A93xg', '98849 Paget Parkway'),
(85, 'Louisette', 2147483647, 'uK8zSN', '073 Debra Hill'),
(86, 'Floyd', 2147483647, 'lCYTjQWuZ1', '94 Vermont Park'),
(87, 'Shanie', 2147483647, 'ffjLmGYoRxXL', '909 Sommers Road'),
(88, 'Laurel', 2147483647, 'apN5A1NKVsS', '83 Debs Pass'),
(89, 'Portia', 2147483647, 'ybCA7GSB4t', '43632 Lunder Alley'),
(90, 'Fred', 2147483647, '8NViiQRwP', '483 Paget Alley'),
(91, 'Lyn', 2147483647, 'rWdfImuzsZv9', '175 Boyd Drive'),
(92, 'Morgana', 2147483647, 'RXYztArTdOq1', '8 Evergreen Street'),
(93, 'Lucie', 672044803, 'OUtae3', '42 Clove Parkway'),
(94, 'Penni', 2147483647, 'PUi0WQ', '24221 Stoughton Court'),
(95, 'Sandie', 2147483647, 'YoemyW6GOM', '8 Pierstorff Alley'),
(96, 'Lezlie', 2147483647, 'JxXfAq', '98 Farragut Avenue'),
(97, 'Roz', 2147483647, 'w6nZOc', '9841 Old Gate Court'),
(98, 'Casandra', 1197036385, 'FkLALJ70Pmh', '9 Darwin Terrace'),
(99, 'Dosi', 2147483647, 'xlkmXMOH2', '966 Riverside Plaza'),
(100, 'Jamie', 1478301872, '4VXUwtS', '11 Bultman Plaza');

-- --------------------------------------------------------

--
-- Table structure for table `pilgrim_order`
--

DROP TABLE IF EXISTS `pilgrim_order`;
CREATE TABLE `pilgrim_order` (
  `order_id` int(11) NOT NULL,
  `pilgrim_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `number_of_item` int(11) NOT NULL,
  `order_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pilgrim_order`
--

INSERT INTO `pilgrim_order` (`order_id`, `pilgrim_id`, `item_id`, `number_of_item`, `order_date`) VALUES
(1, 7, 132, 2, '2021-10-04'),
(2, 1, 134, 1, '2021-10-04'),
(3, 1, 123, 2, '2021-10-04'),
(4, 2, 243, 3, '2021-10-04'),
(5, 3, 435, 4, '2021-10-04'),
(6, 5, 354, 5, '2021-10-04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_list`
--
ALTER TABLE `admin_list`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `Aadhar ID` (`admin_adhar`),
  ADD KEY `admin_supervisor` (`admin_sup`);

--
-- Indexes for table `donation_list`
--
ALTER TABLE `donation_list`
  ADD PRIMARY KEY (`donation_id`),
  ADD KEY `cn_donation_pil_id` (`donation_pil_id`);

--
-- Indexes for table `item_list`
--
ALTER TABLE `item_list`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `pilgrim`
--
ALTER TABLE `pilgrim`
  ADD PRIMARY KEY (`pilgrim_id`);

--
-- Indexes for table `pilgrim_order`
--
ALTER TABLE `pilgrim_order`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `on_delete_cascade_item_id` (`item_id`),
  ADD KEY `on_delete_cascade_pilgrim_id` (`pilgrim_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pilgrim`
--
ALTER TABLE `pilgrim`
  MODIFY `pilgrim_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin_list`
--
ALTER TABLE `admin_list`
  ADD CONSTRAINT `admin_supervisor` FOREIGN KEY (`admin_sup`) REFERENCES `admin_list` (`admin_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `donation_list`
--
ALTER TABLE `donation_list`
  ADD CONSTRAINT `cn_donation_pil_id` FOREIGN KEY (`donation_pil_id`) REFERENCES `pilgrim` (`pilgrim_id`) ON DELETE CASCADE;

--
-- Constraints for table `pilgrim_order`
--
ALTER TABLE `pilgrim_order`
  ADD CONSTRAINT `on_delete_cascade_item_id` FOREIGN KEY (`item_id`) REFERENCES `item_list` (`item_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `on_delete_cascade_pilgrim_id` FOREIGN KEY (`pilgrim_id`) REFERENCES `pilgrim` (`pilgrim_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
