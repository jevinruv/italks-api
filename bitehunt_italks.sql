-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 09, 2018 at 07:06 AM
-- Server version: 5.6.39
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bitehunt_italks`
--

-- --------------------------------------------------------

--
-- Table structure for table `Active_Resource_Personnel`
--

CREATE TABLE `Active_Resource_Personnel` (
  `Person_ID` int(11) NOT NULL,
  `First_Name` varchar(50) NOT NULL,
  `Last_Name` varchar(50) NOT NULL,
  `Current_Role` varchar(50) NOT NULL,
  `Email` varchar(70) NOT NULL,
  `CV_Link` varchar(200) NOT NULL,
  `Image_URL` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Active_Resource_Personnel`
--

INSERT INTO `Active_Resource_Personnel` (`Person_ID`, `First_Name`, `Last_Name`, `Current_Role`, `Email`, `CV_Link`, `Image_URL`) VALUES
(1, 'Steve', 'Rogers', 'Pilot', 'steve.rogers@gmail.com', 'google.com', 'http://api.randomuser.me/portraits/men/49.jpg'),
(2, 'Tom', 'Kane', 'Doctor', 'tom.kane@gmail.com', 'yahoo.com', 'http://api.randomuser.me/portraits/men/49.jpg'),
(3, 'Jack', 'Hughman', 'Actor', 'jack.hughman@gmail.com', 'yahoo.com', ''),
(4, 'Thomas', 'Edison', 'Scientist', 'thomas.edison@gmail.com', 'yahoo.com', ''),
(66, 'ggg', 'gg', 'ggg', 'gggg', '', ''),
(67, 'eee', 'eee', 'eee', 'eee', '', ''),
(68, 'erferf', 'erferferfe', 'ferfefe', 'rrferfrefef', '', ''),
(65, 'rgrt', 'grgtrg', 'rtgrtg', 'rgrgtrg', '', ''),
(64, 'qq', 'cccqqq', 'qqqqqq', 'qq', 'http://bitehunter.vimly.ml/iTalks/rest/uploads/ccc_zzzz.txt', ''),
(63, 'ccc', 'ccc', 'cccc', 'ccc', 'http://bitehunter.vimly.ml/iTalks/rest/uploads/ccc_zzzz.txt', '');

-- --------------------------------------------------------

--
-- Table structure for table `New_Resource_Personnel`
--

CREATE TABLE `New_Resource_Personnel` (
  `Person_ID` int(11) NOT NULL,
  `First_Name` varchar(50) NOT NULL,
  `Last_Name` varchar(50) NOT NULL,
  `Current_Role` varchar(50) NOT NULL,
  `Email` varchar(70) NOT NULL,
  `CV_Link` varchar(200) NOT NULL,
  `Image_URL` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `New_Resource_Personnel`
--

INSERT INTO `New_Resource_Personnel` (`Person_ID`, `First_Name`, `Last_Name`, `Current_Role`, `Email`, `CV_Link`, `Image_URL`) VALUES
(24, 'weff', 'wefwef', 'wefwfe', 'wefwfewfe', 'http://bitehunter.vimly.ml/iTalks/rest/uploads/ccc_zzzz.txt', ''),
(19, 'dfdf', 'df', 'dfd', 'df', 'http://bitehunter.vimly.ml/iTalks/rest/uploads/xxxx_zzzz.txt', ''),
(20, 'sdojo', 'ojo', 'joij', 'ojo', '', ''),
(21, 'oewpkew', 'jpoiuj', 'uuhuih', 'uhhouhi', '', ''),
(22, 'sdsd', 'sdsds', 'dsdsd', 'dsfdgfdg', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `New_Talks`
--

CREATE TABLE `New_Talks` (
  `Talk_ID` int(11) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Resource_Personnel` int(11) NOT NULL,
  `Abstract` text NOT NULL,
  `Link_Gallery` varchar(200) NOT NULL,
  `Link_Youtube` varchar(100) NOT NULL,
  `Date` date NOT NULL,
  `Time` time NOT NULL,
  `Location` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `New_Talks`
--

INSERT INTO `New_Talks` (`Talk_ID`, `Name`, `Resource_Personnel`, `Abstract`, `Link_Gallery`, `Link_Youtube`, `Date`, `Time`, `Location`) VALUES
(1, 'Test Name For Talk 3', 1, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'google.com', 'youtube.com', '2018-07-11', '02:30:00', 'Colombo'),
(2, 'Test Name For Talk 4', 2, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'google.com', 'youtube.com', '2018-07-03', '02:30:00', 'Colombo');

-- --------------------------------------------------------

--
-- Table structure for table `Past_Talks`
--

CREATE TABLE `Past_Talks` (
  `Talk_ID` int(11) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Resource_Personnel` int(11) NOT NULL,
  `Abstract` text NOT NULL,
  `Link_Gallery` varchar(200) NOT NULL,
  `Link_Youtube` varchar(100) NOT NULL,
  `Date` date NOT NULL,
  `Time` time NOT NULL,
  `Location` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Past_Talks`
--

INSERT INTO `Past_Talks` (`Talk_ID`, `Name`, `Resource_Personnel`, `Abstract`, `Link_Gallery`, `Link_Youtube`, `Date`, `Time`, `Location`) VALUES
(5, 'Lorem Ipsum5', 2, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'google.com', 'youtube.com', '0000-00-00', '00:00:00', ''),
(6, 'Lorem Ipsum', 2, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'google.com', 'youtube.com', '0000-00-00', '00:00:00', ''),
(7, 'Lorem Ipsum', 2, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'google.com', 'youtube.com', '0000-00-00', '00:00:00', ''),
(8, 'Lorem Ipsum', 2, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'google.com', 'youtube.com', '0000-00-00', '00:00:00', ''),
(9, 'Lorem Ipsum', 2, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'google.com', 'youtube.com', '0000-00-00', '00:00:00', ''),
(10, 'Lorem Ipsum', 2, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'google.com', 'youtube.com', '0000-00-00', '00:00:00', ''),
(11, 'Lorem Ipsum', 2, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'google.com', 'youtube.com', '0000-00-00', '00:00:00', ''),
(12, 'Lorem Ipsum', 2, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'google.com', 'youtube.com', '0000-00-00', '00:00:00', ''),
(13, 'Lorem Ipsum', 2, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'google.com', 'youtube.com', '0000-00-00', '00:00:00', ''),
(14, 'Lorem Ipsum', 2, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'google.com', 'youtube.com', '0000-00-00', '00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `Upcoming_Talk_Participants`
--

CREATE TABLE `Upcoming_Talk_Participants` (
  `ID` int(11) NOT NULL,
  `New_Talk_ID` int(11) NOT NULL,
  `First_Name` varchar(200) NOT NULL,
  `Last_Name` varchar(200) NOT NULL,
  `Current_Role` varchar(200) NOT NULL,
  `Company` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Upcoming_Talk_Participants`
--

INSERT INTO `Upcoming_Talk_Participants` (`ID`, `New_Talk_ID`, `First_Name`, `Last_Name`, `Current_Role`, `Company`, `Email`) VALUES
(1, 2, 'John', 'Almeida', 'SE', 'SLT', 'john@gmail.com'),
(2, 1, 'Tom', 'Potter', 'BSA', 'SLT', 'tom@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `User`
--

CREATE TABLE `User` (
  `User_ID` int(11) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Type` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `User`
--

INSERT INTO `User` (`User_ID`, `Email`, `Name`, `Password`, `Type`) VALUES
(1, 'admin@admin.com', 'admin', 'admin123', 'Admin'),
(2, 'tom@gmail.com', 'tom', 'tom123', 'User');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Active_Resource_Personnel`
--
ALTER TABLE `Active_Resource_Personnel`
  ADD PRIMARY KEY (`Person_ID`);

--
-- Indexes for table `New_Resource_Personnel`
--
ALTER TABLE `New_Resource_Personnel`
  ADD PRIMARY KEY (`Person_ID`);

--
-- Indexes for table `New_Talks`
--
ALTER TABLE `New_Talks`
  ADD PRIMARY KEY (`Talk_ID`);

--
-- Indexes for table `Past_Talks`
--
ALTER TABLE `Past_Talks`
  ADD PRIMARY KEY (`Talk_ID`);

--
-- Indexes for table `Upcoming_Talk_Participants`
--
ALTER TABLE `Upcoming_Talk_Participants`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`User_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Active_Resource_Personnel`
--
ALTER TABLE `Active_Resource_Personnel`
  MODIFY `Person_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `New_Resource_Personnel`
--
ALTER TABLE `New_Resource_Personnel`
  MODIFY `Person_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `New_Talks`
--
ALTER TABLE `New_Talks`
  MODIFY `Talk_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `Past_Talks`
--
ALTER TABLE `Past_Talks`
  MODIFY `Talk_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `Upcoming_Talk_Participants`
--
ALTER TABLE `Upcoming_Talk_Participants`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `User`
--
ALTER TABLE `User`
  MODIFY `User_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
