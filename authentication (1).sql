-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2019 at 05:20 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `authentication`
--

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `newsId` int(10) NOT NULL,
  `author` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `description` text,
  `urlToImage` varchar(100) DEFAULT NULL,
  `published_at` date DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`newsId`, `author`, `title`, `description`, `urlToImage`, `published_at`, `created_at`) VALUES
(2, 'Howard Lindzon', 'Bitcoin: The Living Room Revolution', 'Last night I had a long brainstorm with my friend Farbood, the founder of Coinmine (we are investors in his company). Farbood and I were chatting about his roadmap and progress and he mentioned his new weekly missive ‘The Liberty Crypto Reader’. The first art…', 'http://localhost:8080/newsImages/6.png', '2019-02-15', '2019-02-26 01:40:36'),
(10, 'Navbharat time', 'Dainik Jagaran', 'Kartik Mandaville, founder and CEO of SpringRole, the first professional reputation network powered by artificial intelligence and blockchain to eliminate fraud from user profiles based out at Bengal', 'http://localhost:8080/newsImages/2.jpg', '2019-02-11', '2019-02-28 05:11:13'),
(11, 'David Cottle, Analyst, David Cottle', 'Japanese Yen Technical Analysis: USDJPY Uptrend Still Worth Tracking', 'Japanese Yen Technical Analysis Talking Points:\\r\\nUSD/JPY’s 2019 uptrend shows little sign of breaking to either side\\r\\nMore rises still look like the most likely course\\r\\nGBP/JPY has gained sharply but now looks over-extended\\r\\nGet live and interactive coverage', 'http://localhost:8080/newsImages/4.jpg', '2019-02-09', '2019-02-28 05:13:05'),
(12, 'Amit', 'Upadhyay', 'Ripple price declined further below $0.3080 and tested the $0.3000 support area against the US dollar. The price traded as low as $0.2983 and it is currently correcting above the $0.3050 level. There is a major declining channel in place with resistance near …', 'http://localhost:8080/newsImages/1.jpg', '2019-05-16', '2019-02-28 12:33:51'),
(13, 'Newsbtc.com', 'Ripple Price Analysis: XRP Following Downtrend Channel Below $0.3200', 'Ripple price declined further below $0.3080 and tested the $0.3000 support area against the US dollar. The price traded as low as $0.2983 and it is currently correcting above the $0.3050 level. There is a major declining channel in place with resistance near …', 'http://localhost:8080/newsImages/3.jpg', '2019-04-17', '2019-02-28 12:40:00'),
(15, 'Hamid ', 'Solution architect', 'This is set of description', 'http://localhost:8080/newsImages/45785921_2262198107394417_8757256119736336384_n.jpg', '2019-04-18', '2019-03-09 15:11:02'),
(16, 'Times of India 2', 'Election in India', 'Some election...', 'http://localhost:8080/images/info.jpg', '2000-01-23', '2019-04-21 22:10:16');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(250) DEFAULT NULL,
  `user_type` enum('admin','user') NOT NULL DEFAULT 'admin',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `username`, `password`, `user_type`, `created_at`) VALUES
(1, 'Amit', 'Upadhyay', 'amit@gmail.com', 'amitupadhyay', 'Amit@123', 'admin', '2018-12-23 11:42:14'),
(2, 'Jim', 'Carry', NULL, 'jim_carry', 'Amit@123', 'admin', '2018-12-23 13:25:07'),
(3, 'Ashish', 'Wadhwal', 'ashish@gmail.com', 'ashish26423864268', '98239gwbfwfj', 'admin', '2018-12-23 13:33:57'),
(5, 'Ronaldo', 'Christan', 'ronaldo@gmail.com', 'ronal', '98239gwbfwfj', 'admin', '2018-12-23 13:40:14'),
(9, NULL, NULL, NULL, 'Amitaflnksdb', 'saadasdad', 'admin', '2019-01-29 04:26:20'),
(19, NULL, NULL, NULL, 'sfndbjhsdfsd', 'sadfbdsjhvbsduvsdu', 'admin', '2019-01-29 04:55:10'),
(20, NULL, NULL, NULL, 'Something', 'Anotherthing', 'admin', '2019-01-29 04:55:24'),
(21, NULL, NULL, NULL, 'Something', 'Anotherthing', 'admin', '2019-01-29 04:55:48'),
(24, 'Sujata', 'Manmohan', 'sujata@gmail.com', 'sujata', 'Sujata@123', 'admin', '2019-02-25 05:57:23'),
(31, 'Shakuntala', 'Upmanyu', 'shakuntakla@gmail.com', 'shakuntala', 'Shaku123', 'admin', '2019-02-25 06:24:08'),
(32, 'Shakuntala', 'Upmanyu', 'shaku@gmail.com', 'Shaku', 'Shaku3487654', 'admin', '2019-02-25 06:25:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`newsId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `newsId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
