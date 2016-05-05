-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2016 at 04:18 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `online_quiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `mcq_option`
--

CREATE TABLE IF NOT EXISTS `mcq_option` (
`opt_id` int(11) NOT NULL,
  `qus_id` int(11) NOT NULL,
  `opt` longtext
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mcq_option`
--

INSERT INTO `mcq_option` (`opt_id`, `qus_id`, `opt`) VALUES
(1, 1, '1.25'),
(2, 1, '25.2'),
(3, 1, '3.46'),
(4, 1, '5.21'),
(5, 2, '9.852'),
(6, 2, '9.82'),
(7, 2, '10.54'),
(8, 2, '8.95'),
(13, 4, 'AS1'),
(14, 4, 'A1E'),
(15, 4, 'HO2'),
(16, 4, 'PL3'),
(17, 5, '60'),
(18, 5, '50'),
(19, 5, '70'),
(20, 5, '30'),
(21, 6, 'A'),
(22, 6, 'u'),
(23, 6, 'maruf'),
(24, 6, 'tanvir'),
(25, 7, '26'),
(26, 7, '48'),
(27, 7, '52'),
(28, 7, '56'),
(29, 8, '1947'),
(30, 8, '1952'),
(31, 8, '1971'),
(32, 8, '1989');

-- --------------------------------------------------------

--
-- Table structure for table `mcq_paper`
--

CREATE TABLE IF NOT EXISTS `mcq_paper` (
`id` int(11) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `paper_name` longtext NOT NULL,
  `paper_time` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mcq_paper`
--

INSERT INTO `mcq_paper` (`id`, `user_id`, `subject`, `paper_name`, `paper_time`) VALUES
(1, 'user02', 'Math', 'Math test 1', 20),
(2, 'maruf', 'Physics', 'Physics test 1', 50),
(3, 'maruf', 'Chemistry', 'Chemistry test 1', 20),
(4, 'maruf', 'English', 'english test', 20),
(5, 'maruf', 'Bangla', 'Bamgla test02', 20),
(6, 'user02', 'Bangla', 'Bangla Test 1', 10);

-- --------------------------------------------------------

--
-- Table structure for table `mcq_question`
--

CREATE TABLE IF NOT EXISTS `mcq_question` (
`qus_id` int(11) NOT NULL,
  `paper_id` int(11) NOT NULL,
  `question` longtext,
  `ans` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mcq_question`
--

INSERT INTO `mcq_question` (`qus_id`, `paper_id`, `question`, `ans`) VALUES
(1, 1, 'What is the value of pie?', '3.46'),
(2, 2, 'What is the value of ''g'' ?', '9.82'),
(4, 3, 'What is the symbol of water ? ', 'HO2'),
(5, 1, 'What is the ans of x ?', '50'),
(6, 4, 'what is your name ?', 'maruf'),
(7, 5, 'how many alphabet in bangla language?', '52'),
(8, 5, 'when the bangla language approved in bangladesh ?? in year...', '1952');

-- --------------------------------------------------------

--
-- Table structure for table `test_ans`
--

CREATE TABLE IF NOT EXISTS `test_ans` (
`ans_id` int(11) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `paper_id` int(11) NOT NULL,
  `result` int(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_ans`
--

INSERT INTO `test_ans` (`ans_id`, `user_id`, `paper_id`, `result`) VALUES
(1, 'user01', 1, 2),
(2, 'user01', 1, 2),
(3, 'user01', 1, 2),
(4, 'user01', 3, 1),
(5, 'user01', 4, 0),
(6, 'user01', 5, 1),
(7, 'user01', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE IF NOT EXISTS `user_info` (
`id` int(11) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `edu` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(500) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`id`, `user_id`, `full_name`, `email`, `edu`, `dob`, `gender`, `phone`, `address`, `active`) VALUES
(5, 'admin', 'Admin Panel', '', '', '0000-00-00', '', '', '', 0),
(9, 'user02', 'Md Al Imran', 'alimran@aiub.edu', 'Graduate', '1990-05-22', 'Male', '01178797955', 'Banani, Dhaka', 1),
(10, 'user03', 'Razib Mahmud', 'shithil.aiub@yahoo.com', 'Unde Graduate', '2016-05-09', 'Male', '448463646464', 'HHHHHHH, Dhaka', 0),
(11, 'user04', 'Tanvir Ahmed', 'ddddddd', 'College', '2016-05-26', 'Female', '33333333366666', '333333sfff3333', 0),
(12, 'maruf', 'Maruf Ahmed', 'maruf@yahoo.com', 'Graduate', '2016-05-03', 'Male', '031548974', 'asf 2587', 1),
(13, 'ayon', 'Ayon Islam', 'ayon@gmail.com', 'Unde Graduate', '2000-05-11', 'Male', '0125441254', 'mirpur 10', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(11) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `role` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_id`, `pass`, `role`) VALUES
(9, 'admin', 'admin', 'Admin'),
(13, 'user02', '456', 'Teacher'),
(14, 'user03', '123', 'Student'),
(15, 'user04', '1234', 'Student'),
(16, 'maruf', '000', 'Teacher'),
(17, 'ayon', '123', 'Teacher');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mcq_option`
--
ALTER TABLE `mcq_option`
 ADD PRIMARY KEY (`opt_id`), ADD KEY `qus_id` (`qus_id`);

--
-- Indexes for table `mcq_paper`
--
ALTER TABLE `mcq_paper`
 ADD PRIMARY KEY (`id`), ADD KEY `teacher_id` (`user_id`);

--
-- Indexes for table `mcq_question`
--
ALTER TABLE `mcq_question`
 ADD PRIMARY KEY (`qus_id`), ADD KEY `paper_id` (`paper_id`);

--
-- Indexes for table `test_ans`
--
ALTER TABLE `test_ans`
 ADD PRIMARY KEY (`ans_id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
 ADD PRIMARY KEY (`id`), ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `user_name` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mcq_option`
--
ALTER TABLE `mcq_option`
MODIFY `opt_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `mcq_paper`
--
ALTER TABLE `mcq_paper`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `mcq_question`
--
ALTER TABLE `mcq_question`
MODIFY `qus_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `test_ans`
--
ALTER TABLE `test_ans`
MODIFY `ans_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `mcq_question`
--
ALTER TABLE `mcq_question`
ADD CONSTRAINT `mcq_question_ibfk_1` FOREIGN KEY (`paper_id`) REFERENCES `mcq_paper` (`id`);

--
-- Constraints for table `user_info`
--
ALTER TABLE `user_info`
ADD CONSTRAINT `user_info_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
