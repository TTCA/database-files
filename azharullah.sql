-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 16, 2017 at 12:01 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `azharullah`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `students_studying_details`
--

CREATE TABLE `students_studying_details` (
  `id` int(11) NOT NULL,
  `course` varchar(100) NOT NULL,
  `university` varchar(100) NOT NULL,
  `address` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `students_working_details`
--

CREATE TABLE `students_working_details` (
  `id` int(11) NOT NULL,
  `current_company` varchar(100) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `address` varchar(200) NOT NULL,
  `reviews` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student_details`
--

CREATE TABLE `student_details` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `branch` varchar(5) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phno` bigint(20) NOT NULL,
  `qualification` varchar(100) DEFAULT NULL,
  `current_place` varchar(200) DEFAULT NULL,
  `passout_year` int(11) NOT NULL,
  `photo_name` varchar(50) DEFAULT 'notfound.jpg',
  `wos` tinyint(1) NOT NULL,
  `linkedin_link` varchar(200) DEFAULT NULL,
  `referenced_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `students_studying_details`
--
ALTER TABLE `students_studying_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students_working_details`
--
ALTER TABLE `students_working_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_details`
--
ALTER TABLE `student_details`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student_details`
--
ALTER TABLE `student_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
