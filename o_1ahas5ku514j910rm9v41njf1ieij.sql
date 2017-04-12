-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- 主機: 127.0.0.1
-- 產生時間： 2016-04-27 04:16:32
-- 伺服器版本: 10.1.10-MariaDB
-- PHP 版本： 7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `final`
--

-- --------------------------------------------------------

--
-- 資料表結構 `final`
--

CREATE TABLE `final` (
  `id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_bin NOT NULL,
  `jpg` longtext COLLATE utf8_bin NOT NULL,
  `mp4` longtext COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 資料表的匯出資料 `final`
--

INSERT INTO `final` (`id`, `name`, `jpg`, `mp4`) VALUES
(3, 'asddas', '1.jpg', '1.mp4'),
(4, 'sasda', '2.jpg', '2.mp4'),
(5, 'sadddd', '3.jpg', '3.mp4'),
(7, 'asdsadas', '4.jpg', '4.mp4'),
(8, 'sssad', '5.jpg', '5.mp4');

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `final`
--
ALTER TABLE `final`
  ADD PRIMARY KEY (`id`);

--
-- 在匯出的資料表使用 AUTO_INCREMENT
--

--
-- 使用資料表 AUTO_INCREMENT `final`
--
ALTER TABLE `final`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
