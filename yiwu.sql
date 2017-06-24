-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2017-06-20 11:17:41
-- 服务器版本： 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `yiwu`
--

-- --------------------------------------------------------

--
-- 表的结构 `change1`
--

CREATE TABLE IF NOT EXISTS `change1` (
  `logname` varchar(255) NOT NULL,
  `need` varchar(255) NOT NULL,
  `changeout` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `change1`
--

INSERT INTO `change1` (`logname`, `need`, `changeout`) VALUES
('12', '23', '34'),
('12', '23', '34'),
('12', '23', '34');

-- --------------------------------------------------------

--
-- 表的结构 `change2`
--

CREATE TABLE IF NOT EXISTS `change2` (
  `id` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `change2`
--

INSERT INTO `change2` (`id`, `photo`) VALUES
(1, '2.jpg'),
(2, '3.jpg'),
(3, '4.jpg'),
(4, '5.jpg'),
(5, '6.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `logname` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`logname`, `password`, `phone`, `address`) VALUES
('fengxia', '123456', '123456789', 'shanxi'),
('wang', '00', '123455', 'shanxi'),
('liu', '00', '123456', 'shanxi');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
