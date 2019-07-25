-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jul 25, 2019 at 11:03 AM
-- Server version: 5.6.35
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `geek`
--

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(5) NOT NULL,
  `product_id` int(10) NOT NULL,
  `big` varchar(128) NOT NULL,
  `small` varchar(128) NOT NULL,
  `views` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `product_id`, `big`, `small`, `views`) VALUES
(1, 0, 'big/1.jpg', 'small/1.jpg', 17),
(2, 0, 'big/2.jpg', 'small/2.jpg', 9),
(3, 0, 'big/3.jpg', 'small/3.jpg', 10),
(4, 0, 'big/4.jpg', 'small/4.jpg', 4);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(5) NOT NULL,
  `name` varchar(64) NOT NULL,
  `img` varchar(120) NOT NULL,
  `description` varchar(250) NOT NULL,
  `price` int(10) NOT NULL,
  `status` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `img`, `description`, `price`, `status`) VALUES
(1, 'Mango people t-shirt', 'catalog/1.png', '', 100, 1),
(2, 'Mango people t-shirt', 'catalog/2.png', '', 200, 1),
(3, 'Mango people t-shirt', 'catalog/3.png', '', 100, 1),
(4, 'Mango people t-shirt', 'catalog/2-layers.png', '', 200, 1),
(5, 'Mango people t-shirt', 'catalog/Layer_4.png', '', 100, 1),
(6, 'Mango people t-shirt', 'catalog/Layer_43.png', '', 200, 1),
(7, 'Mango people t-shirt', 'catalog/Layer_44.png', '', 100, 1),
(8, 'Mango people t-shirt', 'catalog/Layer_46.png', '', 200, 1),
(9, 'Mango people t-shirt', 'catalog/Layer_48.png', '', 200, 1);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(5) NOT NULL,
  `name` varchar(64) NOT NULL,
  `email` varchar(120) NOT NULL,
  `text` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `name`, `email`, `text`, `date_added`) VALUES
(1, 'dddd', '1dddd', 'sfdffdf', '0000-00-00 00:00:00'),
(2, 'hfgf', 'fgfgffg', 'ughghh', '2019-07-08 11:02:55'),
(3, 'hfgfxscsdsv', '3333', '3333', '2019-07-08 11:03:56'),
(4, 'sdsadad', 'sfsdfdsf', 'sfsdfsdf', '2019-07-08 11:05:56'),
(5, 'Елизавета Дейнеко', 'tortoliza@gmail.com', 'sdfsdfdfg', '2019-07-08 11:40:04'),
(6, 'Елизавета Дейнеко', 'tortoliza@gmail.com', 'sdfdfsdfsdfsfsdf', '2019-07-14 18:01:44'),
(7, 'Елизавета Дейнеко', 'tortoliza@gmail.com', 'sdfdfsdfsdfsfsdf', '2019-07-14 18:02:41');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(5) NOT NULL,
  `name` varchar(64) NOT NULL,
  `email` varchar(120) NOT NULL,
  `salt` varchar(10) NOT NULL,
  `password` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `salt`, `password`, `status`) VALUES
(1, 'Andrey', 'test@test.ru', '12345', '123456', 1),
(2, 'Vasya', 'test@test.ru', '', '123', 0),
(3, 'Vasya1', 'test@test.ru1', '', '2222222', 0),
(4, 'Vasya1', 'test@test.ru1', '', '2222222', 0),
(5, 'Vasya1', 'test@test.ru1', '', '2222222', 0),
(6, 'Vasya1', 'test@test.ru1', '', '2222222', 0),
(7, 'Vasya1', 'test@test.ru1', '', '2222222', 0),
(8, 'Vasya1', 'test@test.ru1', '', '2222222', 0),
(9, 'Vasya1', 'test@test.ru1', '', '2222222', 0),
(10, 'Vasya1', 'test@test.ru1', '', '2222222', 0),
(12, 'Vasya333', 'test@test.ru1', '', '2222222', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
