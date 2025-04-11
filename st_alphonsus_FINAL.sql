-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2025 at 04:03 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `st_alphonsus`
--

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `className` varchar(10) NOT NULL,
  `teacherID` int(12) NOT NULL,
  `classYear` int(2) NOT NULL,
  `capacity` int(2) NOT NULL,
  `pupilNumber` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`className`, `teacherID`, `classYear`, `capacity`, `pupilNumber`) VALUES
('reception', 1, 0, 10, 5),
('year 1', 2, 1, 10, 4),
('year 2', 3, 2, 10, 4),
('year 3', 4, 3, 10, 4),
('year 4', 5, 4, 10, 4),
('year 5', 6, 5, 10, 4),
('year 6', 7, 6, 10, 5);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `Tpassword` char(64) NOT NULL,
  `teacherID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`Tpassword`, `teacherID`) VALUES
('5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8', 1),
('6cb75f652a9b52798eb6cf2201057c73e0e1a950f725410d9d2d67a0c9a18336', 2),
('2c9341ca4cf3d87b9e4d98e2c6f8ba3faaddf1268b13c89d0545b7e0bda1c9f3', 3),
('8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 4),
('3c6e0b8a9c15224a8228b9a98ca1531dff8d470e7a1e1f6d4a5f5e8f3bfbfd03', 5),
('ef92b778ba5cae64166a73055d0d62e7e94b6f9a8a7e3b2a8705c6f0e53fcee3', 6),
('482c811da5d5b4bc6d497ffa98491e38d6d66a3f74f8a33b298e12c2cc6cc82f', 7);

-- --------------------------------------------------------

--
-- Table structure for table `parents`
--

CREATE TABLE `parents` (
  `parentName` char(40) NOT NULL,
  `pupil_ID` int(12) NOT NULL,
  `parentAddress` varchar(300) NOT NULL,
  `parentEmail` varchar(30) NOT NULL,
  `parentPhone` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `parents`
--

INSERT INTO `parents` (`parentName`, `pupil_ID`, `parentAddress`, `parentEmail`, `parentPhone`) VALUES
('ParentP1', 1, '1 Reception Lane', 'parentp1@example.com', 1010101010),
('ParentP10', 10, 'Year2 Address', 'parentp10@example.com', 1010101019),
('ParentP11', 11, 'Year2 Address', 'parentp11@example.com', 1010101020),
('ParentP12', 12, 'Year2 Address', 'parentp12@example.com', 1010101021),
('ParentP13', 13, 'Year2 Address', 'parentp13@example.com', 1010101022),
('ParentP14', 14, 'Year3 Address', 'parentp14@example.com', 1010101023),
('ParentP15', 15, 'Year3 Address', 'parentp15@example.com', 1010101024),
('ParentP16', 16, 'Year3 Address', 'parentp16@example.com', 1010101025),
('ParentP17', 17, 'Year3 Address', 'parentp17@example.com', 1010101026),
('ParentP18', 18, 'Year4 Address', 'parentp18@example.com', 1010101027),
('ParentP19', 19, 'Year4 Address', 'parentp19@example.com', 1010101028),
('ParentP2', 2, '1 Reception Lane', 'parentp2@example.com', 1010101011),
('ParentP20', 20, 'Year4 Address', 'parentp20@example.com', 1010101029),
('ParentP21', 21, 'Year4 Address', 'parentp21@example.com', 1010101030),
('ParentP22', 22, 'Year5 Address', 'parentp22@example.com', 1010101031),
('ParentP23', 23, 'Year5 Address', 'parentp23@example.com', 1010101032),
('ParentP24', 24, 'Year5 Address', 'parentp24@example.com', 1010101033),
('ParentP25', 25, 'Year5 Address', 'parentp25@example.com', 1010101034),
('ParentP26', 26, 'Year6 Address', 'parentp26@example.com', 1010101035),
('ParentP27', 27, 'Year6 Address', 'parentp27@example.com', 1010101036),
('ParentP28', 28, 'Year6 Address', 'parentp28@example.com', 1010101037),
('ParentP29', 29, 'Year6 Address', 'parentp29@example.com', 1010101038),
('ParentP3', 3, '1 Reception Lane', 'parentp3@example.com', 1010101012),
('ParentP30', 30, 'Year6 Address', 'parentp30@example.com', 1010101039),
('ParentP4', 4, '1 Reception Lane', 'parentp4@example.com', 1010101013),
('ParentP5', 5, '1 Reception Lane', 'parentp5@example.com', 1010101014),
('ParentP6', 6, 'Year1 Address', 'parentp6@example.com', 1010101015),
('ParentP7', 7, 'Year1 Address', 'parentp7@example.com', 1010101016),
('ParentP8', 8, 'Year1 Address', 'parentp8@example.com', 1010101017),
('ParentP9', 9, 'Year1 Address', 'parentp9@example.com', 1010101018),
('ParentS1', 1, '1 Reception Lane', 'parents1@example.com', 2020201010),
('ParentS10', 10, 'Year2 Address', 'parents10@example.com', 2020201019),
('ParentS2', 2, '1 Reception Lane', 'parents2@example.com', 2020201011),
('ParentS3', 3, '1 Reception Lane', 'parents3@example.com', 2020201012),
('ParentS4', 4, '1 Reception Lane', 'parents4@example.com', 2020201013),
('ParentS5', 5, '1 Reception Lane', 'parents5@example.com', 2020201014),
('ParentS6', 6, 'Year1 Address', 'parents6@example.com', 2020201015),
('ParentS7', 7, 'Year1 Address', 'parents7@example.com', 2020201016),
('ParentS8', 8, 'Year1 Address', 'parents8@example.com', 2020201017),
('ParentS9', 9, 'Year1 Address', 'parents9@example.com', 2020201018);

-- --------------------------------------------------------

--
-- Table structure for table `pupils`
--

CREATE TABLE `pupils` (
  `pupil_ID` int(12) NOT NULL,
  `className` varchar(10) NOT NULL,
  `parentName` char(40) NOT NULL,
  `pupil_fName` char(20) NOT NULL,
  `pupil_sName` char(20) NOT NULL,
  `pupilAddress` varchar(50) NOT NULL,
  `pupilAge` int(2) NOT NULL,
  `medicInfo` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pupils`
--

INSERT INTO `pupils` (`pupil_ID`, `className`, `parentName`, `pupil_fName`, `pupil_sName`, `pupilAddress`, `pupilAge`, `medicInfo`) VALUES
(1, 'reception', 'ParentP1', 'pupil1', 'Pupil1Last', '1 Reception Lane', 4, ''),
(2, 'reception', 'ParentP2', 'Pupil2First', 'Pupil2Last', '1 Reception Lane', 4, ''),
(3, 'reception', 'ParentP3', 'Pupil3First', 'Pupil3Last', '1 Reception Lane', 4, 'Allergic to peanuts'),
(4, 'reception', 'ParentP4', 'Pupil4First', 'Pupil4Last', '1 Reception Lane', 4, ''),
(5, 'reception', 'ParentP5', 'Pupil5First', 'Pupil5Last', '1 Reception Lane', 4, ''),
(6, 'year 1', 'ParentP6', 'Pupil6First', 'Pupil6Last', 'Year1 Address', 5, ''),
(7, 'year 1', 'ParentP7', 'Pupil7First', 'Pupil7Last', 'Year1 Address', 5, 'Requires glasses'),
(8, 'year 1', 'ParentP8', 'Pupil8First', 'Pupil8Last', 'Year1 Address', 5, ''),
(9, 'year 1', 'ParentP9', 'Pupil9First', 'Pupil9Last', 'Year1 Address', 5, ''),
(10, 'year 2', 'ParentP10', 'Pupil10First', 'Pupil10Last', 'Year2 Address', 6, ''),
(11, 'year 2', 'ParentP11', 'Pupil11First', 'Pupil11Last', 'Year2 Address', 6, ''),
(12, 'year 2', 'ParentP12', 'Pupil12First', 'Pupil12Last', 'Year2 Address', 6, ''),
(13, 'year 2', 'ParentP13', 'Pupil13First', 'Pupil13Last', 'Year2 Address', 6, ''),
(14, 'year 3', 'ParentP14', 'Pupil14First', 'Pupil14Last', 'Year3 Address', 7, ''),
(15, 'year 3', 'ParentP15', 'Pupil15First', 'Pupil15Last', 'Year3 Address', 7, ''),
(16, 'year 3', 'ParentP16', 'Pupil16First', 'Pupil16Last', 'Year3 Address', 7, 'Diabetic'),
(17, 'year 3', 'ParentP17', 'Pupil17First', 'Pupil17Last', 'Year3 Address', 7, ''),
(18, 'year 4', 'ParentP18', 'Pupil18First', 'Pupil18Last', 'Year4 Address', 8, ''),
(19, 'year 4', 'ParentP19', 'Pupil19First', 'Pupil19Last', 'Year4 Address', 8, ''),
(20, 'year 4', 'ParentP20', 'Pupil20First', 'Pupil20Last', 'Year4 Address', 8, ''),
(21, 'year 4', 'ParentP21', 'Pupil21First', 'Pupil21Last', 'Year4 Address', 8, ''),
(22, 'year 5', 'ParentP22', 'Pupil22First', 'Pupil22Last', 'Year5 Address', 9, ''),
(23, 'year 5', 'ParentP23', 'Pupil23First', 'Pupil23Last', 'Year5 Address', 9, ''),
(24, 'year 5', 'ParentP24', 'Pupil24First', 'Pupil24Last', 'Year5 Address', 9, ''),
(25, 'year 5', 'ParentP25', 'Pupil25First', 'Pupil25Last', 'Year5 Address', 9, ''),
(26, 'year 6', 'ParentP26', 'Pupil26First', 'Pupil26Last', 'Year6 Address', 11, ''),
(27, 'year 6', 'ParentP27', 'Pupil27First', 'Pupil27Last', 'Year6 Address', 11, 'Asthma'),
(28, 'year 6', 'ParentP28', 'Pupil28First', 'Pupil28Last', 'Year6 Address', 11, ''),
(29, 'year 6', 'ParentP29', 'Pupil29First', 'Pupil29Last', 'Year6 Address', 11, ''),
(30, 'year 6', 'ParentP30', 'Pupil30First', 'Pupil30Last', 'Year6 Address', 11, '');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `teacherID` int(11) NOT NULL,
  `className` varchar(10) NOT NULL,
  `teacher_fName` char(20) NOT NULL,
  `teacher_sName` char(20) NOT NULL,
  `teacherAddress` varchar(50) NOT NULL,
  `teacherEmail` varchar(30) NOT NULL,
  `teacherPhone` int(11) NOT NULL,
  `salary` int(10) NOT NULL,
  `DBS_check` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`teacherID`, `className`, `teacher_fName`, `teacher_sName`, `teacherAddress`, `teacherEmail`, `teacherPhone`, `salary`, `DBS_check`) VALUES
(1, 'reception', 'Alice', 'Smith', '1 Teacher Rd', 'alice.smith@example.com', 1111111111, 50000, 1),
(2, 'year 1', 'Bob', 'Jones', '2 Teacher Rd', 'bob.jones@example.com', 2147483647, 52000, 1),
(3, 'year 2', 'Carol', 'Brown', '3 Teacher Rd', 'carol.brown@example.com', 2147483647, 54000, 1),
(4, 'year 3', 'David', 'Wilson', '4 Teacher Rd', 'david.wilson@example.com', 2147483647, 56000, 1),
(5, 'year 4', 'Eve', 'Davis', '5 Teacher Rd', 'eve.davis@example.com', 2147483647, 58000, 1),
(6, 'year 5', 'Frank', 'Miller', '6 Teacher Rd', 'frank.miller@example.com', 2147483647, 60000, 1),
(7, 'year 6', 'Grace', 'Taylor', '7 Teacher Rd', 'grace.taylor@example.com', 2147483647, 62000, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`className`),
  ADD KEY `FK_teacherID` (`teacherID`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`Tpassword`),
  ADD KEY `teacherID` (`teacherID`);

--
-- Indexes for table `parents`
--
ALTER TABLE `parents`
  ADD PRIMARY KEY (`parentName`),
  ADD KEY `FK_pupil_ID` (`pupil_ID`);

--
-- Indexes for table `pupils`
--
ALTER TABLE `pupils`
  ADD PRIMARY KEY (`pupil_ID`),
  ADD KEY `FK_parentName` (`parentName`),
  ADD KEY `FK_PclassName` (`className`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`teacherID`),
  ADD KEY `FK_TclassName` (`className`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `classes`
--
ALTER TABLE `classes`
  ADD CONSTRAINT `FK_teacherID` FOREIGN KEY (`teacherID`) REFERENCES `teachers` (`teacherID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `login`
--
ALTER TABLE `login`
  ADD CONSTRAINT `login_ibfk_1` FOREIGN KEY (`teacherID`) REFERENCES `teachers` (`teacherID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `parents`
--
ALTER TABLE `parents`
  ADD CONSTRAINT `FK_pupil_ID` FOREIGN KEY (`pupil_ID`) REFERENCES `pupils` (`pupil_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pupils`
--
ALTER TABLE `pupils`
  ADD CONSTRAINT `FK_PclassName` FOREIGN KEY (`className`) REFERENCES `classes` (`className`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_parentName` FOREIGN KEY (`parentName`) REFERENCES `parents` (`parentName`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `teachers`
--
ALTER TABLE `teachers`
  ADD CONSTRAINT `FK_TclassName` FOREIGN KEY (`className`) REFERENCES `classes` (`className`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
