-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2020 at 09:22 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `techingenious`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `sno` int(11) NOT NULL,
  `name` text NOT NULL,
  `phone_no` varchar(50) NOT NULL,
  `msg` text NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`sno`, `name`, `phone_no`, `msg`, `date`, `email`) VALUES
(1, 'first post', '12345', 'first', '2020-05-24 18:11:44', 'first@gmail.com'),
(2, 'Prerak', '8128873796', 'Awesome', '2020-05-24 18:34:11', 'rajaprerak@gmail.com'),
(3, 'test', '1234567890', '', '2020-05-25 15:25:09', 'test@gmail.com'),
(4, 'hi', '1234', 'yo', '2020-05-25 16:28:19', 'hleeo'),
(5, 'hi', '1234', 'yo', '2020-05-25 16:31:26', 'hleeo');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(11) NOT NULL,
  `title` text NOT NULL,
  `tagline` text NOT NULL,
  `content` text NOT NULL,
  `img_file` varchar(12) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `slug` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `tagline`, `content`, `img_file`, `date`, `slug`) VALUES
(1, 'Greedy Algorithm', 'Simplified explanation demystified', 'Make a greedy choice and reduction to sub-problem.Sub-problem is problem with same king but having fewer parameters.\r\nWe have to make sure that our greedy choice is a safe move.\r\nExamples of safe moves: put max digit first, find first occurence of first character, cover leftmost point, use item with max value per unit of weight\r\nGreedy Problems can become faster after sorting.', 'post-bg.jpg', '2020-05-27 12:06:42', 'greedy-algorithms'),
(2, 'Dynamic Programming', 'Explained meticulously', 'Break problem in to sub-problem.Find optimal solution sub-problem.Store the results of sub-problem .Reuse the stored results to reduce the calculation. There are two methods for solving DP problems:- Memoization, Tabulation', 'post-bg.jpg', '2020-05-26 21:47:26', 'dynamic-programming'),
(3, 'Deep Learning', 'Simple understanding of DL', 'Deep learning (also known as deep structured learning) is part of a broader family of machine learning methods based on artificial neural networks with representation learning. Learning can be supervised, semi-supervised or unsupervised.\r\n\r\nDeep learning architectures such as deep neural networks, deep belief networks, recurrent neural networks and convolutional neural networks have been applied to fields including computer vision, speech recognition, natural language processing, audio recognition, social network filtering, machine translation, bioinformatics, drug design, medical image analysis, material inspection and board game programs, where they have produced results comparable to and in some cases surpassing human expert performance.', 'post-bg.jpg', '2020-05-26 21:32:41', 'deep-learning'),
(4, 'Machine Learning', 'Explanations demystified', 'Machine learning is an application of artificial intelligence (AI) that provides systems the ability to automatically learn and improve from experience without being explicitly programmed. Machine learning focuses on the development of computer programs that can access data and use it learn for themselves.\r\n\r\nThe process of learning begins with observations or data, such as examples, direct experience, or instruction, in order to look for patterns in data and make better decisions in the future based on the examples that we provide. The primary aim is to allow the computers learn automatically without human intervention or assistance and adjust actions accordingly.', 'post-bg.jpg', '2020-05-26 21:33:44', 'machine-learning');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
