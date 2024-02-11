-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 28, 2023 at 08:06 PM
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
-- Database: `hostel_management_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `application`
--

CREATE TABLE `application` (
  `Application_id` int(100) NOT NULL,
  `Student_id` varchar(255) NOT NULL,
  `Hostel_id` int(10) NOT NULL,
  `Application_status` tinyint(1) DEFAULT NULL,
  `Room_No` int(10) DEFAULT NULL,
  `Message` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `application`
--

INSERT INTO `application` (`Application_id`, `Student_id`, `Hostel_id`, `Application_status`, `Room_No`, `Message`) VALUES
(8, '1', 1, 0, 103, 'need a room please '),
(9, 'abc', 1, 0, 101, 'need a room for a year'),
(10, 'shahid123', 1, 0, 104, 'need room in ground floor'),
(11, 'rishab', 1, 0, 105, 'i need room on ground floor\r\n'),
(12, '123', 1, 0, 106, '');

-- --------------------------------------------------------

--
-- Table structure for table `hostel`
--

CREATE TABLE `hostel` (
  `Hostel_id` int(10) NOT NULL,
  `Hostel_name` varchar(255) NOT NULL,
  `current_no_of_rooms` varchar(255) DEFAULT NULL,
  `No_of_rooms` varchar(255) DEFAULT NULL,
  `No_of_students` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `hostel`
--

INSERT INTO `hostel` (`Hostel_id`, `Hostel_name`, `current_no_of_rooms`, `No_of_rooms`, `No_of_students`) VALUES
(1, 'A', NULL, '400', NULL),
(2, 'B', NULL, '400', NULL),
(3, 'C', NULL, '400', NULL),
(4, 'D', NULL, '400', NULL),
(5, 'E', NULL, '400', NULL),
(6, 'F', NULL, '400', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hostel_manager`
--

CREATE TABLE `hostel_manager` (
  `Hostel_man_id` int(10) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Fname` varchar(255) NOT NULL,
  `Lname` varchar(255) NOT NULL,
  `Mob_no` varchar(255) NOT NULL,
  `Hostel_id` int(10) NOT NULL,
  `Pwd` longtext NOT NULL,
  `Isadmin` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `hostel_manager`
--

INSERT INTO `hostel_manager` (`Hostel_man_id`, `Username`, `Fname`, `Lname`, `Mob_no`, `Hostel_id`, `Pwd`, `Isadmin`) VALUES
(1, 'admin', 'Rishab', 'Pokharel', '0123456789', 1, '$2y$10$tTf/hqyHieJ858TmChz3kuxs0OwNATF2OgG84Y7IjHcXkq1GghxMi', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `msg_id` int(10) NOT NULL,
  `sender_id` varchar(255) DEFAULT NULL,
  `receiver_id` varchar(255) DEFAULT NULL,
  `hostel_id` int(10) DEFAULT NULL,
  `subject_h` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `msg_date` varchar(255) DEFAULT NULL,
  `msg_time` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`msg_id`, `sender_id`, `receiver_id`, `hostel_id`, `subject_h`, `message`, `msg_date`, `msg_time`) VALUES
(9, '1', '1', 1, 'bca', 'hello', '2023-06-29', '09:03 PM'),
(12, '1', '1234', 1, 'leave application approved', 'hello 1234 your leave application is approved \r\n', '2023-07-31', '05:18 PM');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `Room_id` int(10) NOT NULL,
  `Hostel_id` int(10) NOT NULL,
  `Room_No` int(10) NOT NULL,
  `Allocated` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`Room_id`, `Hostel_id`, `Room_No`, `Allocated`) VALUES
(1, 1, 101, 1),
(2, 1, 102, 1),
(3, 1, 103, 1),
(4, 1, 104, 1),
(5, 1, 105, 1),
(6, 1, 106, 1),
(7, 1, 107, 0),
(8, 1, 108, 0),
(9, 1, 109, 0),
(10, 1, 1010, 0),
(11, 2, 101, 0),
(12, 2, 102, 0),
(13, 2, 103, 0),
(14, 2, 104, 0),
(15, 2, 105, 0),
(16, 4, 305, 0),
(17, 3, 205, 0);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `Student_id` varchar(255) NOT NULL,
  `Fname` varchar(255) NOT NULL,
  `Lname` varchar(255) NOT NULL,
  `Mob_no` varchar(255) NOT NULL,
  `Dept` varchar(255) NOT NULL,
  `Year_of_study` varchar(255) NOT NULL,
  `Pwd` longtext NOT NULL,
  `Hostel_id` int(10) DEFAULT NULL,
  `Room_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`Student_id`, `Fname`, `Lname`, `Mob_no`, `Dept`, `Year_of_study`, `Pwd`, `Hostel_id`, `Room_id`) VALUES
('1', 'Rishab', 'Pokharel', '9840143985', 'BCA', '2077', '$2y$10$Xz/hOdn.R6QJrQ68c6/Ctu3sSt.gX/YGr5QAIU5p1o3W/mqFx3aLO', 1, 3),
('123', 'pawan', 'gupta', '987544322', '', '', '$2y$10$NAsX/P1Tco84ucISY/HNKuC8WLHlhAZHk0nzWAiTBSNAY6G9ANGge', 1, 6),
('1234', 'Rishav', 'Pokhrel', '9800012212', 'BCA', '2020', '$2y$10$tTf/hqyHieJ858TmChz3kuxs0OwNATF2OgG84Y7IjHcXkq1GghxMi', NULL, NULL),
('3', 'bikash', 'parajuli', '1234567890', 'bim', '2079', '$2y$10$e5HFd/qw7bH0a63XoYc62OneICP9fWdscHVKVd01gyhV7leVRYn/C', NULL, NULL),
('69', 'kritive', 'bhandari', '000010', 'csit', '2070', '$2y$10$griu7YNtW22bz0IqKV3rmu/tGDdh4zOmYqauKXHLr/Sqc41/w/Uo.', 1, 2),
('abc', 'abc', 'abc', '789456223', '', '', '$2y$10$ttmCC7Jdt29vUePgWnK7Eu.VoabtlBuKOowQWlt2ojfbh8m38OcM.', 1, 1),
('rishab', 'rishab', 'pokharel', '9874561230', '', '', '$2y$10$t9X5fJdmq80myFOFlyqAr.kGcvZ5.YnnEXI4YYC90CoYgPDduMMXa', 1, 5),
('shahid123', 'Shahid ', 'Aalam', '9815476742', '', '', '$2y$10$eR1jz0fg5nma5Y.iTrBmkulMTVTcAesXWGS9/3WWFcMo8.B.Gyufa', 1, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `application`
--
ALTER TABLE `application`
  ADD PRIMARY KEY (`Application_id`),
  ADD KEY `Student_id` (`Student_id`),
  ADD KEY `Hostel_id` (`Hostel_id`);

--
-- Indexes for table `hostel`
--
ALTER TABLE `hostel`
  ADD PRIMARY KEY (`Hostel_id`);

--
-- Indexes for table `hostel_manager`
--
ALTER TABLE `hostel_manager`
  ADD PRIMARY KEY (`Hostel_man_id`),
  ADD UNIQUE KEY `Username` (`Username`),
  ADD KEY `Hostel_id` (`Hostel_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`msg_id`),
  ADD KEY `hostel_id` (`hostel_id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`Room_id`),
  ADD KEY `Hostel_id` (`Hostel_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`Student_id`),
  ADD KEY `Hostel_id` (`Hostel_id`),
  ADD KEY `Room_id` (`Room_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `application`
--
ALTER TABLE `application`
  MODIFY `Application_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `hostel`
--
ALTER TABLE `hostel`
  MODIFY `Hostel_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `hostel_manager`
--
ALTER TABLE `hostel_manager`
  MODIFY `Hostel_man_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `msg_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `Room_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `application`
--
ALTER TABLE `application`
  ADD CONSTRAINT `Application_ibfk_1` FOREIGN KEY (`Student_id`) REFERENCES `student` (`Student_id`),
  ADD CONSTRAINT `Application_ibfk_2` FOREIGN KEY (`Hostel_id`) REFERENCES `hostel` (`Hostel_id`);

--
-- Constraints for table `hostel_manager`
--
ALTER TABLE `hostel_manager`
  ADD CONSTRAINT `Hostel_Manager_ibfk_1` FOREIGN KEY (`Hostel_id`) REFERENCES `hostel` (`Hostel_id`);

--
-- Constraints for table `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `Message_ibfk_1` FOREIGN KEY (`hostel_id`) REFERENCES `hostel` (`Hostel_id`);

--
-- Constraints for table `room`
--
ALTER TABLE `room`
  ADD CONSTRAINT `Room_ibfk_1` FOREIGN KEY (`Hostel_id`) REFERENCES `hostel` (`Hostel_id`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `Student_ibfk_1` FOREIGN KEY (`Hostel_id`) REFERENCES `hostel` (`Hostel_id`),
  ADD CONSTRAINT `Student_ibfk_2` FOREIGN KEY (`Room_id`) REFERENCES `room` (`Room_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
