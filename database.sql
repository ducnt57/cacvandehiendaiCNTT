-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 18, 2015 at 02:41 AM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `project002_development`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `cate_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cate_id`, `name`, `slug`, `icon`) VALUES
(1, 'Entertaiment', 'entertaiment', 'entertaiment.png'),
(2, 'Sport', 'sport', 'sport.png'),
(3, 'Food & Drink', 'foot-and-drink', 'footanđrink.png'),
(4, 'History', 'history', 'history.png'),
(5, 'Geography', 'geography', 'geography.png'),
(6, 'TV & Movies', 'tv-and-movies', 'tv-and-movies.png'),
(7, 'Music', 'music', 'music.png'),
(8, 'Science and Nature', 'science-and-nature', 'scienceandnature.png'),
(9, 'Genaral Knowledge', 'genaral-knowledge', 'genaralknowledge.png');

-- --------------------------------------------------------

--
-- Table structure for table `choices`
--

CREATE TABLE IF NOT EXISTS `choices` (
  `choice_id` int(11) NOT NULL,
  `quiz_id` int(11) DEFAULT NULL,
  `choice_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `choice_content` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `choices`
--

INSERT INTO `choices` (`choice_id`, `quiz_id`, `choice_title`, `choice_content`) VALUES
(1, 1, 'A', 'Tokyo'),
(2, 1, 'B', 'Hanoi'),
(3, 1, 'C', 'Beijing'),
(4, 1, 'D', 'New York'),
(5, 2, 'A', 'Vietnam'),
(6, 2, 'B', 'America'),
(7, 2, 'C', 'Malaysia'),
(8, 2, 'D', 'Quata'),
(9, 3, 'A', 'Eldrick'),
(10, 3, 'B', 'Michael'),
(11, 3, 'C', 'Jack'),
(12, 3, 'D', 'Jonathan'),
(13, 4, 'A', 'Rivers'),
(14, 4, 'B', 'Mountains'),
(15, 4, 'C', 'Starts'),
(16, 4, 'D', 'Buildings'),
(17, 5, 'A', 'Republic of South Africa'),
(18, 5, 'B', 'Brazil'),
(19, 5, 'C', 'Greek'),
(20, 5, 'D', 'India'),
(21, 6, 'A', 'Equador'),
(22, 6, 'B', 'Chinna'),
(23, 6, 'C', 'Nepal'),
(24, 6, 'D', 'India'),
(25, 7, 'A', 'Canada'),
(26, 7, 'B', 'America'),
(27, 7, 'C', 'England'),
(28, 7, 'D', 'French'),
(29, 8, 'A', 'AB'),
(30, 8, 'B', 'O'),
(31, 8, 'C', 'A'),
(32, 8, 'D', 'B');

-- --------------------------------------------------------

--
-- Table structure for table `quizzes`
--

CREATE TABLE IF NOT EXISTS `quizzes` (
  `quiz_id` int(11) NOT NULL,
  `cate_id` int(11) DEFAULT NULL,
  `quiz_slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quiz_content` text COLLATE utf8_unicode_ci,
  `is_correct` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `quizzes`
--

INSERT INTO `quizzes` (`quiz_id`, `cate_id`, `quiz_slug`, `quiz_content`, `is_correct`) VALUES
(1, 5, 'cau-hoi-so-1', 'Which city has the largest population', 'A'),
(2, 5, 'cau-hoi-so-2', 'Which country claims the world''s tallest building?', 'C'),
(3, 2, 'cau-hoi-so-1', 'What is ''Tiger'' Woods''s first name', 'A'),
(4, 5, 'cau-hoi-so-3', 'What are Alpha Centauri and Sirius?', 'C'),
(5, 5, 'cau-hoi-so-4', 'Which country is bordered by both the Atlantic and Indian Oceans', 'A'),
(6, 5, 'cau-hoi-so-5', 'In which country would one find 8 of the world''s 10 highest mountains?', 'C'),
(7, 5, 'cau-hoi-so-6', 'Which is the world''s second-largest country in land area', 'A'),
(8, 5, 'cau-hoi-so-7', 'What is the most common blood type in humans?', 'B');

-- --------------------------------------------------------

--
-- Table structure for table `schema_migrations`
--

CREATE TABLE IF NOT EXISTS `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
('20151013042010'),
('20151104002055'),
('20151104003611'),
('20151104010621');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_salt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password_hash`, `password_salt`, `email`, `fullname`, `avatar`, `level`, `score`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2a$10$09R.YrgA3MXQqdM.a5126ODJp1I9UBcS.joyJpBqtzD22A46jx3vy', '$2a$10$09R.YrgA3MXQqdM.a5126O', 'admin@gmail.com', 'admin', NULL, '0', 100, '2015-11-10 15:01:23', '2015-11-10 15:01:23'),
(2, 'taikhoan01', '$2a$10$YvgfBdcKXCugVQKWaEbY7uKU62JHH/eLpXk7vLPik3lBqlOGQRKl2', '$2a$10$YvgfBdcKXCugVQKWaEbY7u', 'taikhoan01@gmail.com', 'taikhoan01', NULL, '1', 90, '2015-11-10 15:02:17', '2015-11-10 15:02:17'),
(3, 'taikhoan02', '$2a$10$z0TSKNHKnoGbCfCuYfJAnu1EXhJYSebDvZKOYl6bP5OLXRxizHQ5q', '$2a$10$z0TSKNHKnoGbCfCuYfJAnu', 'taikhoan02@gmail.com', 'taikhoan02', NULL, '1', 80, '2015-11-18 00:51:34', '2015-11-18 00:51:34'),
(4, 'taikhoan03', '$2a$10$qW7FrC5wqwKYoGa8eTJuu.F9K7GzBt8MXjzK.Uoav36t.h.9MNmoG', '$2a$10$qW7FrC5wqwKYoGa8eTJuu.', 'taikhoan03@gmail.com', 'taikhoan03', NULL, '1', 70, '2015-11-18 00:51:44', '2015-11-18 00:51:44'),
(5, 'taikhoan04', '$2a$10$KVae24oUj.KKZ9sK9Yq8cOFDNR/b4XsP5Vx3If09yVWNCc1JWFpb.', '$2a$10$KVae24oUj.KKZ9sK9Yq8cO', 'taikhoan05@gmail.com', 'taikhoan03', NULL, '1', 60, '2015-11-18 00:51:56', '2015-11-18 00:51:56'),
(6, 'taikhoan06', '$2a$10$wgbLFU3bntqutMB8c1YI8.iOoV0SFvDTXerLFxflBfMlxuKLyXwqW', '$2a$10$wgbLFU3bntqutMB8c1YI8.', 'taikhoan06@gmail.com', 'taikhoan06', NULL, '1', 50, '2015-11-18 00:52:06', '2015-11-18 00:52:06'),
(7, 'taikhoan07', '$2a$10$ghqxREFPE4n94HgzWjga5.6NR4bDGKEWd.QQ.CmlbbcecL5xwChtO', '$2a$10$ghqxREFPE4n94HgzWjga5.', 'taikhoan07@gmail.com', 'taikhoan07', NULL, '1', 40, '2015-11-18 00:52:24', '2015-11-18 00:52:24'),
(8, 'taikhoan08', '$2a$10$b3sKi1kGvUDsuVe.rJ4QTuZdKcdT1uhovmgYV3gL8FiUW8HzM2q.K', '$2a$10$b3sKi1kGvUDsuVe.rJ4QTu', 'taikhoan08@gmail.com', 'taikhoan08', NULL, '1', 30, '2015-11-18 00:52:34', '2015-11-18 00:52:34'),
(9, 'taikhoan09', '$2a$10$aZdHYYDLwNLwDMwMOa3mpesozJV2MLukFU6OWjMnQ5e6NbHGoDpo6', '$2a$10$aZdHYYDLwNLwDMwMOa3mpe', 'taikhoan09@gmail.com', 'taikhoan09', NULL, '1', 20, '2015-11-18 00:52:43', '2015-11-18 00:52:43'),
(10, 'taikhoan10', '$2a$10$18.fZjYlahVc2oIYapwliOOdXtwelfwvn.P1Q7Qdl/Ii2spdYoGGe', '$2a$10$18.fZjYlahVc2oIYapwliO', 'taikhoan10@gmail.com', 'taikhoan10', NULL, '1', 10, '2015-11-18 00:52:51', '2015-11-18 00:52:51'),
(11, 'demo01', '$2a$10$0aYdGXXlg4P9kPJEZGAHoeVp8RVl3GVaSKWAI7XldI5zRi6YHSpQq', '$2a$10$0aYdGXXlg4P9kPJEZGAHoe', 'demo01@gmail.com', 'demo01', NULL, '1', 0, '2015-11-18 00:53:14', '2015-11-18 00:53:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cate_id`);

--
-- Indexes for table `choices`
--
ALTER TABLE `choices`
  ADD PRIMARY KEY (`choice_id`), ADD KEY `index_choices_on_quiz_id` (`quiz_id`);

--
-- Indexes for table `quizzes`
--
ALTER TABLE `quizzes`
  ADD PRIMARY KEY (`quiz_id`), ADD KEY `index_quiz_on_cate_id` (`cate_id`);

--
-- Indexes for table `schema_migrations`
--
ALTER TABLE `schema_migrations`
  ADD UNIQUE KEY `unique_schema_migrations` (`version`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cate_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `choices`
--
ALTER TABLE `choices`
  MODIFY `choice_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `quizzes`
--
ALTER TABLE `quizzes`
  MODIFY `quiz_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `choices`
--
ALTER TABLE `choices`
ADD CONSTRAINT `quiz_id` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`quiz_id`) ON DELETE CASCADE;

--
-- Constraints for table `quizzes`
--
ALTER TABLE `quizzes`
ADD CONSTRAINT `cate_id` FOREIGN KEY (`cate_id`) REFERENCES `categories` (`cate_id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
