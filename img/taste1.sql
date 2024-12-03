-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 30, 2024 at 01:01 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `taste`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `id` int NOT NULL,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `image` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `author` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `name`, `image`, `author`) VALUES
(3, 'Chị Dậu', NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int NOT NULL,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ip` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `name`, `note`, `time`, `ip`) VALUES
(1, 'root', 'Đăng nhập hệ thống', '2024-11-24 23:10:57', '::1'),
(2, 'root', 'Đăng nhập hệ thống', '2024-11-24 23:20:06', '::1'),
(3, 'root', 'Đăng nhập hệ thống', '2024-11-24 23:30:22', '::1'),
(4, 'root', 'Đăng nhập hệ thống', '2024-11-25 14:37:09', '::1'),
(5, 'root', 'Đăng nhập hệ thống', '2024-11-25 14:59:42', '::1'),
(6, 'root', 'Đăng nhập hệ thống', '2024-11-25 15:02:30', '::1'),
(7, 'root', 'Đăng nhập hệ thống', '2024-11-25 15:05:59', '::1'),
(8, 'root', 'Đăng nhập hệ thống', '2024-11-25 15:06:43', '::1'),
(9, 'root', 'Đăng nhập hệ thống', '2024-11-25 15:08:38', '::1'),
(10, 'root', 'Đăng nhập hệ thống', '2024-11-25 15:15:49', '::1'),
(11, 'root', 'Đăng nhập hệ thống', '2024-11-25 15:17:23', '::1'),
(12, 'root', 'Đăng nhập hệ thống', '2024-11-25 15:17:42', '::1'),
(13, 'root', 'Đăng nhập hệ thống', '2024-11-25 15:20:48', '::1'),
(14, 'root', 'Đăng nhập hệ thống', '2024-11-25 18:40:14', '::1'),
(15, 'root', 'Đăng nhập hệ thống', '2024-11-25 19:11:04', '::1'),
(16, 'root', 'Đăng nhập hệ thống', '2024-11-25 19:45:14', '::1'),
(17, 'root', 'Đăng nhập hệ thống', '2024-11-26 00:34:53', '::1'),
(18, 'root', 'Đăng nhập hệ thống', '2024-11-29 15:03:48', '::1'),
(19, 'root', 'Đăng nhập hệ thống', '2024-11-29 15:09:27', '::1'),
(20, 'root', 'Đăng nhập hệ thống', '2024-11-29 16:19:40', '::1'),
(21, 'root', 'Đăng nhập hệ thống', '2024-11-30 19:17:56', '::1'),
(22, 'root', 'Đăng nhập hệ thống', '2024-11-30 19:23:30', '::1');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int NOT NULL,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `password` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `email` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `name`, `password`, `email`) VALUES
(1, 'root', '1', 'datthachban12345@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `name` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `slug` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `img` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `detail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `author` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`name`, `slug`, `img`, `active`, `title`, `detail`, `author`, `time`, `id`) VALUES
('hello', 'hello', 'images\\bg_5.jpg', 1, 'haha', 'hahahhahahahhahahaha', 'admin', '2024-11-30 12:24:09', 3),
('xin chao', 'xin-chao', 'images\\bg_6.jpg', 1, 'sfsd', 'fsgdfhfghfg', 'admim', '2024-11-30 12:24:13', 4),
('bắt ngờ', 'bat - ngo', 'uploads\\image-1732097405659-707409245.jpg', 1, 'ngủ thôi', '<p>nhỉ</p>', 'Anonymous', '2024-11-25 12:57:29', 20),
('helloas', 'helloas', 'uploads\\image-1732302895932-419205322.jpg', 1, 'haha', '<p>dssd <img src=\"http://localhost:3000/uploads/image-1732302810749-322266946.jpg\"></p><p><img src=\"http://localhost:3000/uploads/image-1732302892487-142010331.png\"></p>', 'Admin', '2024-11-30 12:24:12', 31),
('chao', 'chao', 'uploads\\image-1732556552819-253823424.jpg', 1, 'ssdsds', '<p>sds <img src=\"http://localhost:3000/uploads/image-1732867791920-212327029.jpg\"></p>', 'Admin', '2024-11-29 08:09:55', 32);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
