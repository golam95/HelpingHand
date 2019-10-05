-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 02, 2019 at 09:00 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `helpinghand`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminId` int(11) NOT NULL,
  `adminEmail` varchar(255) DEFAULT NULL,
  `adminName` varchar(255) DEFAULT NULL,
  `adminpassword` varchar(255) DEFAULT NULL,
  `admindate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminId`, `adminEmail`, `adminName`, `adminpassword`, `admindate`) VALUES
(1, 'rakibul9200@gmail.com', 'Rakibul Alam', '1234', '2019-09-12 21:43:27');

-- --------------------------------------------------------

--
-- Table structure for table `bookpost`
--

CREATE TABLE `bookpost` (
  `id` int(11) NOT NULL,
  `bookarea` varchar(255) DEFAULT NULL,
  `bookauthor` varchar(255) DEFAULT NULL,
  `bookcategory` varchar(255) DEFAULT NULL,
  `bookcondition` varchar(255) DEFAULT NULL,
  `bookphone` varchar(255) DEFAULT NULL,
  `bookdate` varchar(255) DEFAULT NULL,
  `bookdes` varchar(255) DEFAULT NULL,
  `bookemail` varchar(255) DEFAULT NULL,
  `bookexchangeoption` varchar(255) DEFAULT NULL,
  `bookimg` varchar(255) DEFAULT NULL,
  `bookname` varchar(255) DEFAULT NULL,
  `bookpublisher` varchar(255) DEFAULT NULL,
  `exchangebookAuthername` varchar(255) DEFAULT NULL,
  `exchangebookCategory` varchar(255) DEFAULT NULL,
  `exchangebookCondition` varchar(255) DEFAULT NULL,
  `exchangebookName` varchar(255) DEFAULT NULL,
  `exchangebookPublishername` varchar(255) DEFAULT NULL,
  `sellingprice` varchar(255) DEFAULT NULL,
  `userstatus` bit(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookpost`
--

INSERT INTO `bookpost` (`id`, `bookarea`, `bookauthor`, `bookcategory`, `bookcondition`, `bookphone`, `bookdate`, `bookdes`, `bookemail`, `bookexchangeoption`, `bookimg`, `bookname`, `bookpublisher`, `exchangebookAuthername`, `exchangebookCategory`, `exchangebookCondition`, `exchangebookName`, `exchangebookPublishername`, `sellingprice`, `userstatus`) VALUES
(16, 'Naogaon', 'Rakibul Alam', 'Academic', 'High', '46456786543', '2019.09.24', 'h', 'kamal@gmail.com', 'Donate', '2019.09.24.02.21.55.jpg', 'Rakibul Alam', 'Bappy', 'blank', 'blank', 'blank', 'blank', 'blank', 'blank', b'1'),
(14, 'Dhaka', 'Ismail Bukhari', 'Islamic', 'High', '01789562210', '2019.09.20', 'This is the most authentic book after Quran. ', 'shafayet@gmail.com', 'Donate', '2019.09.21.00.30.19.jpg', 'Shaheh Bukhari', 'Tawheed Publications', 'blank', 'blank', 'blank', 'blank', 'blank', 'blank', b'1'),
(15, 'Nawabganj', 'Md. Sagor Hossen', 'Academic', 'Moderate', '01685859200', '2019.09.23', 'This is a book of mathematics.', 'abdurrakib777@gmail.com', 'Donate', '2019.09.23.19.14.44.jpg', 'Mathmatics for Us', 'Ujjal ', 'blank', 'blank', 'blank', 'blank', 'blank', 'blank', b'1');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `categoryId` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categorydate` datetime DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `categoryEmail` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`categoryId`, `categoryName`, `categorydate`, `type`, `categoryEmail`) VALUES
(12, 'Science Fiction', '2019-09-20 22:36:23', 'Book', 'rakibul9200@gmail.com'),
(11, 'Academic ', '2019-09-20 22:36:23', 'Book', 'rakibul9200@gmail.com'),
(13, 'storybook', '2019-09-20 22:36:23', 'Book', 'rakibul9200@gmail.com'),
(14, 'History Book', '2019-09-20 22:36:23', 'Book', 'rakibul9200@gmail.com'),
(15, 'Table', '2019-09-20 22:36:23', 'Education Assistant', 'rakibul9200@gmail.com'),
(16, 'Bag', '2019-09-20 22:36:23', 'Educational Material', 'rakibul9200@gmail.com'),
(17, 'Pen', '2019-09-20 22:36:23', 'Educational Material', 'rakibul9200@gmail.com'),
(18, 'Geometry Tool Box', '2019-09-20 22:36:23', 'Educational Material', 'rakibul9200@gmail.com'),
(20, 'White Board', '2019-09-20 22:36:23', 'Educational Material', 'rakibul9200@gmail.com'),
(21, 'Projector', '2019-09-20 22:36:23', 'Education Assistant', 'rakibul9200@gmail.com'),
(22, 'Islamic', '2019-09-20 22:36:23', 'Book', 'rakibul9200@gmail.com'),
(24, 'Calculator', '2019-09-21 22:53:25', 'Educational Material', 'rakibul9200@gmail.com'),
(25, 'Rular', '2019-09-21 22:53:25', 'Educational Material', 'rakibul9200@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `date` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `date`, `email`, `message`, `name`) VALUES
(7, '2019-09-21 14:46:31', 'abdurrakib777@gmail.com', 'Your website design is simple and clear.', 'Abdur Rakib');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `locationId` int(11) NOT NULL,
  `locationDate` datetime DEFAULT NULL,
  `locationEmail` varchar(255) DEFAULT NULL,
  `locationName` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`locationId`, `locationDate`, `locationEmail`, `locationName`) VALUES
(2, '2019-09-19 08:09:32', 'rakibul9200@gmail.com', 'Nawabganj'),
(3, '2019-09-19 08:09:32', 'rakibul9200@gmail.com', 'Sirajganj'),
(4, '2019-09-19 08:09:32', 'rakibul9200@gmail.com', 'Naogaon'),
(5, '2019-09-20 22:36:23', 'rakibul9200@gmail.com', 'Dhaka'),
(6, '2019-09-20 22:36:23', 'rakibul9200@gmail.com', 'Noakhali'),
(7, '2019-09-20 22:36:23', 'rakibul9200@gmail.com', 'Khulna'),
(8, '2019-09-20 22:36:23', 'rakibul9200@gmail.com', 'Sylhet'),
(9, '2019-09-20 22:36:23', 'rakibul9200@gmail.com', 'Feni'),
(10, '2019-09-20 22:36:23', 'rakibul9200@gmail.com', 'Comilla'),
(12, '2019-09-20 22:36:23', 'rakibul9200@gmail.com', 'Pabna'),
(13, '2019-09-20 22:36:23', 'rakibul9200@gmail.com', 'Bogra'),
(14, '2019-09-20 22:36:23', 'rakibul9200@gmail.com', 'Rajshahi');

-- --------------------------------------------------------

--
-- Table structure for table `matrialpost`
--

CREATE TABLE `matrialpost` (
  `id` int(11) NOT NULL,
  `matrialbrandname` varchar(255) DEFAULT NULL,
  `matrialcategory` varchar(255) DEFAULT NULL,
  `matrialcondition` varchar(255) DEFAULT NULL,
  `materialcontact` varchar(255) DEFAULT NULL,
  `materialdate` varchar(255) DEFAULT NULL,
  `materialdescription` varchar(255) DEFAULT NULL,
  `matrialemail` varchar(255) DEFAULT NULL,
  `mexbarndname` varchar(255) DEFAULT NULL,
  `mexcategory` varchar(255) DEFAULT NULL,
  `mexcondition` varchar(255) DEFAULT NULL,
  `mexchangeitemname` varchar(255) DEFAULT NULL,
  `materialimg` varchar(255) DEFAULT NULL,
  `matrialname` varchar(255) DEFAULT NULL,
  `materialoptin` varchar(255) DEFAULT NULL,
  `matrialarea` varchar(255) DEFAULT NULL,
  `paidprice` int(11) DEFAULT NULL,
  `userstatus` bit(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `matrialpost`
--

INSERT INTO `matrialpost` (`id`, `matrialbrandname`, `matrialcategory`, `matrialcondition`, `materialcontact`, `materialdate`, `materialdescription`, `matrialemail`, `mexbarndname`, `mexcategory`, `mexcondition`, `mexchangeitemname`, `materialimg`, `matrialname`, `materialoptin`, `matrialarea`, `paidprice`, `userstatus`) VALUES
(2, 'nieon', 'Bag', 'Moderate', '01858810221', '2019.09.16', 'This is good Bag', 'abdurrakib777@gmail.com', 'blank', 'blank', 'blank', 'blank', '2019.09.16.16.28.26.jpg', 'Smart Bag', 'Sell', 'Sirajganj', 50, b'1'),
(3, 'Fiver Crystal', 'Geometry Tool Box', 'High', '01553899221', '2019.09.20', 'This is gemetroy Box having all tools. ', 'abdurrakib777@gmail.com', 'Apex', 'Bag', 'Moderate', 'School Bag', '2019.09.20.23.18.58.jpg', 'Fiver Geometry Box', 'Exchange', 'Dhaka', 0, b'1'),
(4, 'Local Brand', 'White Board', 'Moderate', '01777777777', '2019.09.20', '15 inches white board.', 'abdurrakib777@gmail.com', 'blank', 'blank', 'blank', 'blank', '2019.09.20.23.28.20.jpg', 'Mini Size White Board ', 'Donate', 'Noakhali', 0, b'1'),
(5, 'Casio', 'Calculator', 'High', '01789654789', '2019.09.21', 'This is good one.', 'shafayet@gmail.com', 'blank', 'blank', 'blank', 'blank', '2019.09.21.23.09.20.jpg', 'Scientific Calculator', 'Donate', 'Nawabganj', 0, b'1');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `postid` int(11) DEFAULT NULL,
  `postemail` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `senderemail` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `comment`, `date`, `postid`, `postemail`, `status`, `senderemail`) VALUES
(1, 'hellow', '2019-09-24 02:04:06', 14, 'shafayet@gmail.com', 1, 'kamal@gmail.com'),
(2, 'I want to buy this book.', '2019-09-28 11:14:58', 15, 'abdurrakib777@gmail.com', 1, 'shafayet@gmail.com'),
(3, 'I want to buy this book.', '2019-09-28 11:14:58', 15, 'abdurrakib777@gmail.com', 1, 'shafayet@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userid` int(11) NOT NULL,
  `userdate` varchar(255) DEFAULT NULL,
  `useremail` varchar(255) DEFAULT NULL,
  `usernid` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userpassword` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `userdate`, `useremail`, `usernid`, `username`, `userpassword`) VALUES
(24, '2019.09.21', 'kamal@gmail.com', '123654789632', 'Kamal Ahmed', '123'),
(25, '2019.09.21', 'khaledmahmud44@gmail.com', '123456789876', 'Rakibul Alam', '1234'),
(23, '2019.09.20', 'tanbir@gmail.com', '123456789123', 'Tanbir Hossen', '123'),
(21, '2019.09.21', 'abdurrakib777@gmail.com', '6577489651236', 'Abdur Rakib', '456'),
(22, '2019.09.20', 'shafayet@gmail.com', '147896523698', 'Shafayet', 'sha'),
(29, '2019.09.22', 'Buppy@gmail.com', '1478963258741', 'Buppy Haq', '12345'),
(20, '2019.09.21', 'rakibul9200@gmail.com', '4589632147896', 'Rakibul Alam', '123'),
(26, '2019.09.21', 'Jamal@gmail.com', '147896325879', 'Rakib', '123'),
(27, '2019.09.21', 'rafiq@gmail.com', '14789632587', 'Rafiqul Alam', '123'),
(28, '2019.09.21', 'khaledmahmud445@gmail.com', '1234567898765', 'Rakibul Alam', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Indexes for table `bookpost`
--
ALTER TABLE `bookpost`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`categoryId`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`locationId`);

--
-- Indexes for table `matrialpost`
--
ALTER TABLE `matrialpost`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bookpost`
--
ALTER TABLE `bookpost`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `categoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `locationId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `matrialpost`
--
ALTER TABLE `matrialpost`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
