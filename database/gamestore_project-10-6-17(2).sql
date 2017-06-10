-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2017 at 01:14 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `gamestore_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `t_games`
--

CREATE TABLE IF NOT EXISTS `t_games` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `desc` varchar(512) NOT NULL,
  `category` varchar(256) NOT NULL,
  `img` varchar(256) NOT NULL,
  `price` varchar(128) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `t_games`
--

INSERT INTO `t_games` (`id`, `name`, `desc`, `category`, `img`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Ticc Tacc Toee', 'Ticc Tacc Toee', 'Puzzle', '/img_game/game_icon_1.png', '3400', '2017-06-10 08:29:04', '0000-00-00 00:00:00'),
(2, 'Extremes', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Racing', '/img_game/game_icon_2.png', '3500', '2017-06-10 08:29:04', '0000-00-00 00:00:00'),
(3, 'Buzzy bird', 'Buzzy bird', 'Adventure', '/img_game/game_icon_3.png', '0', '2017-06-10 08:29:04', '0000-00-00 00:00:00'),
(4, 'Shooter Man rv', 'Shooter Man rv', 'Action', '/img_game/game_icon_4.png', '0', '2017-06-10 08:29:04', '0000-00-00 00:00:00'),
(5, 'UltimateBasketBall', 'UltimateBasketBall', 'Sports', '/img_game/game_icon_5.png', '12000', '2017-06-10 08:29:04', '0000-00-00 00:00:00'),
(6, 'zombie killer demo', 'zombie killer demo', 'Action', '/img_game/game_icon_6.png', '32000', '2017-06-10 08:29:04', '0000-00-00 00:00:00'),
(7, 'GOKU GO SUPER', 'GOKU GO SUPER', 'Racing', '/img_game/game_icon_7.png', '4000', '2017-06-10 08:29:04', '0000-00-00 00:00:00'),
(8, 'Kolpa oyun', 'Kolpa oyun', 'Adventure', '/img_game/game_icon_8.png', '5000', '2017-06-10 08:29:04', '0000-00-00 00:00:00'),
(9, 'Memory Test420', 'Memory Test420', 'Puzzle', '/img_game/game_icon_9.png', '8900', '2017-06-10 08:29:04', '0000-00-00 00:00:00'),
(10, 'JackPot for you', 'JackPot for you', 'Casino', '/img_game/game_icon_10.png', '8000', '2017-06-10 08:29:04', '0000-00-00 00:00:00'),
(11, 'Basket Fun', 'Basket Fun', 'Sports', '/img_game/game_icon_11.png', '4000', '2017-06-10 08:29:04', '0000-00-00 00:00:00'),
(12, 'Mircle Money', 'Mircle Money', 'Casino', '/img_game/game_icon_12.png', '3000', '2017-06-10 08:29:04', '0000-00-00 00:00:00'),
(15, 'Coba', 'Coba upload game adventure', 'Adventure', '/img_game/game_icon-13IMG_8635.JPG', '2000', '2017-06-10 01:33:39', '2017-06-10 01:33:39'),
(16, 'Coba Action', 'Coba Uplaod game Action', 'Action', '/img_game/game_icon-16received_1510178869010622.jpeg', '1000', '2017-06-10 01:58:31', '2017-06-10 01:58:31'),
(17, 'Cobaaa', 'jdhsjhsd', 'Action', '/img_game/game_icon-17received_1510178935677282.jpeg', '3000', '2017-06-10 03:47:54', '2017-06-10 03:47:54'),
(18, 'nxz', 'jx', 'Action', '/img_game/game_icon-18received_1510178855677290.jpeg', '300', '2017-06-10 04:05:53', '2017-06-10 04:05:53'),
(19, 'nxz', 'jx', 'Action', '/img_game/game_icon-19received_1510178855677290.jpeg', '300', '2017-06-10 04:06:44', '2017-06-10 04:06:44'),
(20, 'nxz', 'jx', 'Action', '/img_game/game_icon-20received_1510178855677290.jpeg', '300', '2017-06-10 04:07:17', '2017-06-10 04:07:17'),
(21, 'nx', 'sd', 'Action', '/img_game/game_icon-21received_1510178969010612.jpeg', '23', '2017-06-10 04:09:11', '2017-06-10 04:09:11'),
(22, 'nx', 'sd', 'Action', '/img_game/game_icon-22received_1510178969010612.jpeg', '23', '2017-06-10 04:11:48', '2017-06-10 04:11:48'),
(23, 'nx', 'sd', 'Action', '/img_game/game_icon-23received_1510178969010612.jpeg', '23', '2017-06-10 04:12:27', '2017-06-10 04:12:27');

-- --------------------------------------------------------

--
-- Stand-in structure for view `t_games_rate`
--
CREATE TABLE IF NOT EXISTS `t_games_rate` (
`id_game` int(11)
,`avg_rate` decimal(13,2)
,`user_rate` bigint(21)
);
-- --------------------------------------------------------

--
-- Table structure for table `t_rate`
--

CREATE TABLE IF NOT EXISTS `t_rate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_game` int(11) NOT NULL,
  `rate` int(11) NOT NULL,
  `user_name` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `comment` varchar(512) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `t_rate`
--

INSERT INTO `t_rate` (`id`, `id_game`, `rate`, `user_name`, `email`, `comment`, `created_at`) VALUES
(1, 2, 5, 'indri', 'indriy@gmail.com', 'Thank you, Your Game is now live on Appy Pie Game Store', '2017-06-09 19:19:16'),
(2, 2, 3, 'indriaads', 'indrdiyas@gmail.com', 'Thank you', '2017-06-09 19:19:16'),
(3, 4, 2, 'indrids', 'indrisd@gmail.com', 'Thank you', '2017-06-09 19:19:16'),
(4, 2, 3, 'indrids', 'indrdis@gmail.com', 'Thank you', '2017-06-09 19:19:16');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(225) NOT NULL,
  `img` varchar(225) NOT NULL,
  `role` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  `remember_token` varchar(225) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `img`, `role`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Indiyani', 'indri.cs49@gmail.com', '/img-profil/indri.jpg', '1', '$2a$04$rDJT81iyK13CoYpxadkIAus.TRCGOoO6fIRhIBtPhWuIB.VAuIxjC', '7lS0EvrP4UXcd6GEQwhHIgyg2WsMsydRnNUsTykD4ILWVxF3ETcGFF6DHJKS', '2017-06-10 11:13:10', '2017-06-10 04:13:10');

-- --------------------------------------------------------

--
-- Table structure for table `user_activations`
--

CREATE TABLE IF NOT EXISTS `user_activations` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `activated` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `user_activations`
--

INSERT INTO `user_activations` (`Id`, `user_id`, `token`, `created_at`, `activated`) VALUES
(4, 1, 'f31013f7f7ffff13b370dd648d5de005851e95114a16b578d32b2a279f87b8f1', '2017-06-10 04:13:47', NULL);

-- --------------------------------------------------------

--
-- Structure for view `t_games_rate`
--
DROP TABLE IF EXISTS `t_games_rate`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `t_games_rate` AS select `t_rate`.`id_game` AS `id_game`,round(avg(`t_rate`.`rate`),2) AS `avg_rate`,count(`t_rate`.`email`) AS `user_rate` from `t_rate` group by `t_rate`.`id_game`;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
