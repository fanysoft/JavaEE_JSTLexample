-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Počítač: 127.0.0.1
-- Vytvořeno: Úte 14. čen 2016, 14:53
-- Verze serveru: 10.1.13-MariaDB
-- Verze PHP: 7.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáze: `webshop`
--

-- --------------------------------------------------------

--
-- Struktura tabulky `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `rankings` int(11) DEFAULT '0',
  `average_ranking` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vypisuji data pro tabulku `images`
--

INSERT INTO `images` (`id`, `name`, `rankings`, `average_ranking`) VALUES
(0, 'cat', 7, 4.14286),
(1, 'dog', 13, 3.23077),
(2, 'chair', 8, 2.875),
(3, 'money', 3, 3),
(4, 'apple', 3, 3),
(5, 'table', 3, 3),
(6, 'water', 3, 3),
(7, 'food', 3, 3),
(8, 'house', 3, 3),
(9, 'glass', 3, 3),
(10, 'man', 3, 3),
(11, 'woman', 3, 3),
(12, 'orangefruit', 3, 3),
(13, 'train', 3, 3),
(14, 'trainstation', 3, 3),
(15, 'road', 3, 3),
(16, 'tree', 3, 3),
(17, 'ticket', 3, 3),
(18, 'car', 7, 3.28571),
(19, 'aeroplane', 4, 2.5),
(20, 'fruit', 3, 3),
(21, 'door', 3, 3),
(22, 'banana', 3, 3),
(23, 'bed', 3, 3),
(24, 'girl', 3, 3),
(25, 'boy', 10, 4.4),
(26, 'fork', 10, 3.7),
(27, 'knife', 3, 3),
(29, 'spoon', 3, 3),
(31, 'plate', 3, 3),
(33, 'cup', 6, 3.66667),
(35, 'wine', 3, 3),
(37, 'beer', 3, 3),
(39, 'orangejuice', 3, 3),
(41, 'flower', 3, 3),
(43, 'monkey', 3, 3),
(45, 'bird', 3, 3),
(46, 'box', 3, 3),
(47, 'cow', 3, 3),
(48, 'picture', 3, 3),
(49, 'horse', 3, 3),
(50, 'tv', 3, 3),
(51, 'sheep', 3, 3),
(52, 'leaf', 3, 3),
(53, 'pig', 13, 3.15385),
(54, 'cloud', 3, 3),
(55, 'rabbit', 3, 3),
(56, 'sun', 3, 3),
(57, 'sky', 3, 3),
(58, 'moon', 3, 3),
(59, 'computer', 3, 3),
(60, 'stars', 3, 3),
(61, 'building', 3, 3),
(62, 'desert', 3, 3),
(63, 'cake', 3, 3),
(64, 'sandwich', 3, 3),
(65, 'coffee', 3, 3),
(66, 'bus', 3, 3),
(67, 'taxi', 6, 4.5),
(68, 'passport', 3, 3),
(69, 'coin', 16, 3.125),
(70, 'toilet', 3, 3),
(71, 'bathroom', 3, 3),
(72, 'bedroom', 3, 3),
(73, 'sink', 3, 3),
(74, 'kitchen', 3, 3),
(75, 'tap', 3, 3),
(76, 'shower', 3, 3),
(77, 'toothbrush', 5, 4.2),
(78, 'toothpaste', 3, 3),
(121, 'trousers', 3, 3),
(122, 'skirt', 6, 3.5),
(123, 'shoes', 3, 3),
(124, 'washingmachine', 3, 3),
(125, 'mug', 11, 3.54545),
(126, 'lion', 3, 3),
(127, 'mouse', 3, 3),
(128, 'fox', 3, 3),
(129, 'window', 3, 3),
(130, 'squirrel', 8, 3.62501),
(131, 'purse', 3, 3),
(132, 'wallet', 3, 3),
(133, 'fish', 7, 3.42857),
(134, 'carpet', 7, 3),
(135, 'livingroom', 3, 3),
(136, 'baby', 3, 3),
(137, 'lights', 3, 3),
(138, 'switch', 3, 3),
(139, 'match', 3, 3),
(140, 'fire', 3, 3),
(141, 'mountain', 3, 3),
(142, 'hill', 3, 3),
(143, 'fly', 3, 3),
(144, 'mushroom', 3, 3),
(145, 'grass', 3, 3),
(146, 'hedge', 3, 3),
(147, 'garlic', 3, 3),
(148, 'onion', 6, 3.5),
(149, 'potato', 4, 3.25),
(150, 'heart', 3, 3),
(151, 'cooker', 3, 3),
(152, 'hob', 3, 3),
(153, 'kettle', 6, 3.33333),
(154, 'teapot', 3, 3),
(155, 'glasses', 3, 3),
(156, 'blanket', 8, 3.375),
(157, 'metal', 3, 3),
(158, 'wood', 3, 3),
(159, 'saw', 3, 3),
(160, 'drill', 3, 3),
(161, 'hammer', 3, 3),
(162, 'plug', 3, 3),
(163, 'book', 3, 3),
(164, 'egg', 3, 3),
(165, 'wall', 3, 3),
(166, 'candle', 3, 3),
(167, 'headphones', 3, 3),
(168, 'earphones', 3, 3),
(169, 'cupboard', 3, 3),
(170, 'wardrobe', 3, 3),
(171, 'church', 3, 3),
(172, 'ball', 3, 3),
(173, 'bear', 3, 3),
(174, 'giraffe', 3, 3),
(175, 'river', 3, 3),
(176, 'coast', 3, 3),
(177, 'beach', 3, 3),
(178, 'bridge', 3, 3),
(179, 'eye', 3, 3),
(180, 'ear', 3, 3),
(181, 'hand', 3, 3),
(182, 'x-ray', 3, 3),
(183, 'watch', 3, 3),
(184, 'clock', 3, 3),
(185, 'sea', 3, 3),
(186, 'foot', 3, 3),
(187, 'feet', 3, 3),
(188, 'pillow', 3, 3),
(189, 'cushion', 3, 3),
(190, 'cherry', 3, 3),
(191, 'plum', 3, 3),
(192, 'pear', 3, 3),
(193, 'steak', 3, 3),
(194, 'lipstick', 3, 3),
(195, 'jellyfish', 3, 3),
(196, 'comb', 3, 3),
(197, 'cigarette', 3, 3),
(198, 'van', 3, 3),
(199, 'painting', 3, 3);

--
-- Klíče pro exportované tabulky
--

--
-- Klíče pro tabulku `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
