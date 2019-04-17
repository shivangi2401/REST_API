-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2019 at 08:56 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`) VALUES
(1, 'Technology', '2019-04-15 21:03:20'),
(2, 'Gaming', '2019-04-15 21:03:20'),
(3, 'Kids', '2019-04-15 21:03:20'),
(4, 'Mystery', '2019-04-15 21:03:20'),
(5, 'Horror', '2019-04-15 21:03:20');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `author` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `title`, `body`, `author`, `created_at`) VALUES
(1, 1, 'The Soul Of a New Machine', 'This is the classic tech product creation story. Kidder writes the book so that you feel you are a fly on the wall in the meetings at Data General, a minicomputer vendor in 1970s.', 'Tracy Kidder', '2019-04-15 21:03:20'),
(2, 2, 'The Witcher Series', 'The Witcher novels are fantasy at their finest, coupling rich political intrigue with tremendous character development. ', 'Andrzej Sapkowski', '2019-04-15 21:03:20'),
(3, 1, 'The New New Thing', 'A Silicon Valley Story by Michael Lewis (2001). This tale showed how all roads led to Jim Clark, the founder of Silicon Graphics, Netscape and Healtheon. ', 'Michael Lewis', '2019-04-15 21:03:20'),
(4, 1, 'My tech updated post', 'This is test updated post', 'Henry Luis', '2019-04-15 21:03:20'),
(5, 4, 'The Ice Harvest', 'A classic element of noir is the simple, perfect crime that is subverted ruinously by human nature. ', 'Scott Phillips', '2019-04-15 21:03:20'),
(6, 1, 'The Chip', 'How Two Americans Invented the Microchip and Launched a Revolution by T.R. Reid (1985). This story chronicles how the electronics revolution began. ', 'T.R. Reid ', '2019-04-15 21:03:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
