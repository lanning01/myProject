-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2018-05-26 11:28:47
-- 服务器版本： 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ec`
--

-- --------------------------------------------------------

--
-- 表的结构 `cart`
--

CREATE TABLE `cart` (
  `id` int(6) UNSIGNED NOT NULL,
  `productid` int(6) NOT NULL,
  `userid` int(6) NOT NULL,
  `count` tinyint(2) UNSIGNED NOT NULL,
  `color` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `memory` varchar(20) CHARACTER SET armscii8 COLLATE armscii8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `cart`
--

INSERT INTO `cart` (`id`, `productid`, `userid`, `count`, `color`, `memory`) VALUES
(63, 13, 22, 1, '银色', '256G'),
(66, 17, 19, 12, '灰色', '32G'),
(67, 29, 2, 12, '银色', '64G'),
(68, 31, 2, 1, '黑色', '256G'),
(69, 31, 2, 1, '黑色', '0');

-- --------------------------------------------------------

--
-- 表的结构 `order_one`
--

CREATE TABLE `order_one` (
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `orderon` varchar(100) COLLATE utf8_bin NOT NULL,
  `totalprice` double UNSIGNED NOT NULL,
  `comments` varchar(300) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `order_one`
--

INSERT INTO `order_one` (`username`, `orderon`, `totalprice`, `comments`) VALUES
('lsj', '2018-05-02 14:53:27', 127464, '东西不错'),
('lsj', '2018-05-02 14:53:50', 127464, '东西不错'),
('lsj', '2018-05-02 15:33:20', 47484, '东西不错'),
('lsj', '2018-05-02 15:36:18', 79980, '东西不错'),
('lsj', '2018-05-04 15:22:07', 10998, '东西不错'),
('lsj', '2018-05-07 12:21:47', 2228, '东西不错'),
('lsj', '2018-05-07 12:21:51', 2228, '东西不错'),
('lsj', '2018-05-07 12:37:17', 16932, '东西不错'),
('lsj', '2018-05-07 12:37:51', 6249, '东西不错'),
('lsj', '2018-05-07 13:42:33', 5699, '东西不错'),
('lsj', '2018-05-08 18:33:25', 7494, '东西不错'),
('lsj', '2018-05-09 09:27:21', 58313, '东西不错'),
('lsj', '2018-05-09 09:31:15', 30551, '东西不错'),
('lsj', '2018-05-09 09:36:54', 6888, '东西不错'),
('lsj', '2018-05-09 09:45:54', 34440, '东西不错'),
('lsj', '2018-05-09 09:48:00', 6888, '东西不错'),
('lsj', '2018-05-09 09:50:01', 6888, '东西不错'),
('lsj', '2018-05-09 09:50:17', 8388, '东西不错'),
('lsj', '2018-05-09 09:54:13', 8388, '东西不错'),
('lsj', '2018-05-09 09:55:44', 8388, '东西不错'),
('lsj', '2018-05-09 09:56:13', 2898, '东西不错'),
('lsj', '2018-05-09 09:56:55', 2898, '东西不错'),
('ghm', '2018-05-09 12:46:32', 137760, '东西不错'),
('ghm', '2018-05-09 12:47:10', 68880, '东西不错'),
('ghm', '2018-05-09 12:47:59', 10633, '东西不错'),
('ghm', '2018-05-09 13:09:02', 1849, '东西不错'),
('lsj', '2018-05-10 09:23:49', 5699, '东西不错'),
('qweqwe', '2018-05-10 16:37:28', 3739, '东西不错'),
('qweqwe', '2018-05-10 16:37:29', 3739, '东西不错'),
('1231231', '2018-05-11 11:01:36', 4398, '东西不错'),
('1231231', '2018-05-11 11:01:58', 4398, '东西不错'),
('lsj', '2018-05-11 17:46:17', 2999, '东西不错'),
('lsj', '2018-05-12 11:00:19', 9366, '东西不错'),
('lsj', '2018-05-12 11:01:01', 5239, '东西不错'),
('lsj', '2018-05-12 11:01:49', 2999, '东西不错'),
('lsj', '2018-05-14 18:13:04', 373900, '东西不错'),
('lsj', '2018-05-14 18:13:40', 4398, '东西不错'),
('lsj', '2018-05-15 09:28:13', 2999, '东西不错'),
('lsj', '2018-05-15 09:28:34', 46845, '东西不错'),
('lsj', '2018-05-15 11:35:49', 2498, '东西不错'),
('lsj', '2018-05-15 21:13:44', 9192, '东西不错'),
('lsj', '2018-05-15 21:16:15', 4596, '东西不错'),
('lsj', '2018-05-15 21:29:08', 5998, '东西不错'),
('lsj', '2018-05-15 21:30:19', 11398, '东西不错'),
('lsj', '2018-05-15 21:32:33', 2999, '东西不错'),
('lsj', '2018-05-15 21:35:23', 7478, '东西不错'),
('lsj', '2018-05-15 21:38:06', 5256, '东西不错'),
('lsj', '2018-05-15 21:38:07', 5256, '东西不错'),
('lsj', '2018-05-15 21:38:08', 5256, '东西不错'),
('lsj', '2018-05-15 21:38:10', 5256, '东西不错'),
('lsj', '2018-05-15 21:38:30', 5796, '东西不错'),
('lsj', '2018-05-17 21:32:31', 648800, '东西不错');

-- --------------------------------------------------------

--
-- 表的结构 `order_two`
--

CREATE TABLE `order_two` (
  `orderon` varchar(100) COLLATE utf8_bin NOT NULL,
  `goodid` int(6) UNSIGNED NOT NULL,
  `count` int(10) UNSIGNED NOT NULL,
  `color` varchar(20) COLLATE utf8_bin NOT NULL,
  `xing` varchar(20) COLLATE utf8_bin NOT NULL,
  `img` varchar(80) COLLATE utf8_bin NOT NULL,
  `title` varchar(100) COLLATE utf8_bin NOT NULL,
  `price` int(50) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `order_two`
--

INSERT INTO `order_two` (`orderon`, `goodid`, `count`, `color`, `xing`, `img`, `title`, `price`) VALUES
('2018-05-02 14:53:27', 5, 5, '白色', '256G', '/project/ec/assets/imgs/detailsimg/x_1.jpg', '【顺丰包邮】苹果 iPhone X（iPhone10）全面屏手机 全网通', 7998),
('2018-05-02 14:53:27', 26, 3, '香槟色', '64G', '/project/ec/assets/imgs/detailsimg/r11s_1.jpg', 'OPPO R11s 全面屏拍照手机 全网通 移动联通电信4G手机\r\n', 2498),
('2018-05-02 14:53:27', 5, 5, '白色', '32G', '/project/ec/assets/imgs/detailsimg/x_1.jpg', '【顺丰包邮】苹果 iPhone X（iPhone10）全面屏手机 全网通', 7998),
('2018-05-02 14:53:27', 5, 5, '白色', '128G', '/project/ec/assets/imgs/detailsimg/x_1.jpg', '【顺丰包邮】苹果 iPhone X（iPhone10）全面屏手机 全网通', 7998),
('2018-05-02 14:53:50', 5, 5, '白色', '256G', '/project/ec/assets/imgs/detailsimg/x_1.jpg', '【顺丰包邮】苹果 iPhone X（iPhone10）全面屏手机 全网通', 7998),
('2018-05-02 14:53:50', 26, 3, '香槟色', '64G', '/project/ec/assets/imgs/detailsimg/r11s_1.jpg', 'OPPO R11s 全面屏拍照手机 全网通 移动联通电信4G手机\r\n', 2498),
('2018-05-02 14:53:50', 5, 5, '白色', '32G', '/project/ec/assets/imgs/detailsimg/x_1.jpg', '【顺丰包邮】苹果 iPhone X（iPhone10）全面屏手机 全网通', 7998),
('2018-05-02 14:53:50', 5, 5, '白色', '128G', '/project/ec/assets/imgs/detailsimg/x_1.jpg', '【顺丰包邮】苹果 iPhone X（iPhone10）全面屏手机 全网通', 7998),
('2018-05-02 15:33:20', 5, 5, '白色', '256G', '/project/ec/assets/imgs/detailsimg/x_1.jpg', '【顺丰包邮】苹果 iPhone X（iPhone10）全面屏手机 全网通', 7998),
('2018-05-02 15:33:20', 26, 3, '香槟色', '64G', '/project/ec/assets/imgs/detailsimg/r11s_1.jpg', 'OPPO R11s 全面屏拍照手机 全网通 移动联通电信4G手机\r\n', 2498),
('2018-05-02 15:36:18', 5, 5, '白色', '32G', '/project/ec/assets/imgs/detailsimg/x_1.jpg', '【顺丰包邮】苹果 iPhone X（iPhone10）全面屏手机 全网通', 7998),
('2018-05-02 15:36:18', 5, 5, '白色', '128G', '/project/ec/assets/imgs/detailsimg/x_1.jpg', '【顺丰包邮】苹果 iPhone X（iPhone10）全面屏手机 全网通', 7998),
('2018-05-04 15:22:07', 0, 1, '白色', '128G', '/project/ec/assets/imgs/detailsimg/x_1.jpg', '【顺丰包邮】苹果 iPhone X（iPhone10）全面屏手机 全网通', 10998),
('2018-05-07 12:21:47', 19, 1, '亮蓝色', '64G', '/project/ec/assets/imgs/detailsimg/mi6_1.jpg', '小米6 全网通 4G/6GB运行 移动联通电信4G手机【顺丰包邮 送壳膜】', 2228),
('2018-05-07 12:21:51', 19, 1, '亮蓝色', '64G', '/project/ec/assets/imgs/detailsimg/mi6_1.jpg', '小米6 全网通 4G/6GB运行 移动联通电信4G手机【顺丰包邮 送壳膜】', 2228),
('2018-05-07 12:37:17', 26, 3, '香槟色', '64G', '/project/ec/assets/imgs/detailsimg/r11s_1.jpg', 'OPPO R11s 全面屏拍照手机 全网通 移动联通电信4G手机\r\n', 2498),
('2018-05-07 12:37:17', 7, 1, '白色', '64G', '/project/ec/assets/imgs/detailsimg/mate10_1.jpg', '【包邮送壳膜】华为 HUAWEI Mate 10 6GB+128GB 全网通 双卡双待', 3739),
('2018-05-07 12:37:17', 9, 1, '烟晶灰', '128G', '/project/ec/assets/imgs/detailsimg/s8jia_1.jpg', '【新品现货顺丰包邮】三星 GALAXY S8+（皇帝版/G9550/全网通）', 5699),
('2018-05-07 12:37:51', 24, 1, '深灰色', '256G', '/project/ec/assets/imgs/detailsimg/8_1.jpg', '【顺丰包邮 现货】苹果 iPhone 8（全网通） 移动联通电信4G手机\r\n', 6249),
('2018-05-07 13:42:33', 9, 1, '烟晶灰', '128G', '/project/ec/assets/imgs/detailsimg/s8jia_1.jpg', '【新品现货顺丰包邮】三星 GALAXY S8+（皇帝版/G9550/全网通）', 5699),
('2018-05-08 18:33:25', 26, 3, '香槟色', '64G', '/project/ec/assets/imgs/detailsimg/r11s_1.jpg', 'OPPO R11s 全面屏拍照手机 全网通 移动联通电信4G手机\r\n', 2498),
('2018-05-09 09:27:21', 26, 3, '香槟色', '64G', '/project/ec/assets/imgs/detailsimg/r11s_1.jpg', 'OPPO R11s 全面屏拍照手机 全网通 移动联通电信4G手机\r\n', 2498),
('2018-05-09 09:27:21', 7, 2, '白色', '64G', '/project/ec/assets/imgs/detailsimg/mate10_1.jpg', '【包邮送壳膜】华为 HUAWEI Mate 10 6GB+128GB 全网通 双卡双待', 3739),
('2018-05-09 09:27:21', 9, 3, '烟晶灰', '128G', '/project/ec/assets/imgs/detailsimg/s8jia_1.jpg', '【新品现货顺丰包邮】三星 GALAXY S8+（皇帝版/G9550/全网通）', 5699),
('2018-05-09 09:27:21', 24, 1, '深灰色', '256G', '/project/ec/assets/imgs/detailsimg/8_1.jpg', '【顺丰包邮 现货】苹果 iPhone 8（全网通） 移动联通电信4G手机\r\n', 4749),
('2018-05-09 09:27:21', 9, 3, '迷夜黑', '128G', '/project/ec/assets/imgs/detailsimg/s8jia_1.jpg', '【新品现货顺丰包邮】三星 GALAXY S8+（皇帝版/G9550/全网通）', 5699),
('2018-05-09 09:27:21', 16, 1, '迷夜黑', '64G', '/project/ec/assets/imgs/detailsimg/s8_1.jpg', '【顺丰包邮 当天发】三星 GALAXY S8（全网通）移动联通电信4G手机', 4398),
('2018-05-09 09:31:15', 8, 1, '热力红', '128G', '/project/ec/assets/imgs/detailsimg/r15_1.jpg', 'OPPO R15 全面屏双摄拍照手机 全网通 移动联通电信4G', 2999),
('2018-05-09 09:31:15', 13, 4, '银色', '256G', '/project/ec/assets/imgs/detailsimg/8p_1.jpg', '苹果 iPhone 8 Plus（全网通）\r\n', 6888),
('2018-05-09 09:36:54', 13, 1, '银色', '256G', '/project/ec/assets/imgs/detailsimg/8p_1.jpg', '苹果 iPhone 8 Plus（全网通）\r\n', 6888),
('2018-05-09 09:45:54', 13, 5, '银色', '256G', '/project/ec/assets/imgs/detailsimg/8p_1.jpg', '苹果 iPhone 8 Plus（全网通）\r\n', 6888),
('2018-05-09 09:48:00', 13, 1, '银色', '64G', '/project/ec/assets/imgs/detailsimg/8p_1.jpg', '苹果 iPhone 8 Plus（全网通）\r\n', 6888),
('2018-05-09 09:50:01', 13, 1, '银色', '64G', '/project/ec/assets/imgs/detailsimg/8p_1.jpg', '苹果 iPhone 8 Plus（全网通）\r\n', 6888),
('2018-05-09 09:50:17', 13, 1, '银色', '256G', '/project/ec/assets/imgs/detailsimg/8p_1.jpg', '苹果 iPhone 8 Plus（全网通）\r\n', 8388),
('2018-05-09 09:54:13', 13, 1, '银色', '256G', '/project/ec/assets/imgs/detailsimg/8p_1.jpg', '苹果 iPhone 8 Plus（全网通）\r\n', 8388),
('2018-05-09 09:55:44', 13, 1, '银色', '256G', '/project/ec/assets/imgs/detailsimg/8p_1.jpg', '苹果 iPhone 8 Plus（全网通）\r\n', 8388),
('2018-05-09 09:56:13', 11, 1, '极光白', '64G', '/project/ec/assets/imgs/detailsimg/x21_1.jpg', 'vivo X21 全面屏 双摄美颜拍照手机 6G运行 全网通4G', 2898),
('2018-05-09 09:56:55', 11, 1, '极光白', '64G', '/project/ec/assets/imgs/detailsimg/x21_1.jpg', 'vivo X21 全面屏 双摄美颜拍照手机 6G运行 全网通4G', 2898),
('2018-05-09 12:46:32', 13, 20, '银色', '256G', '/project/ec/assets/imgs/detailsimg/8p_1.jpg', '苹果 iPhone 8 Plus（全网通）\r\n', 6888),
('2018-05-09 12:47:10', 13, 10, '银色', '256G', '/project/ec/assets/imgs/detailsimg/8p_1.jpg', '苹果 iPhone 8 Plus（全网通）\r\n', 6888),
('2018-05-09 12:47:59', 22, 3, '黑色', '128G', '/project/ec/assets/imgs/detailsimg/mix2_1.jpg', '【顺丰包邮 送耳机】小米MIX2 全网通 6GB运行 移动联通电信4G手机\r\n', 2928),
('2018-05-09 12:47:59', 21, 1, '黑色', '64G', '/project/ec/assets/imgs/detailsimg/note3_1.jpg', '【全国包邮送壳膜】小米Note3 全网通 4/6+64/128G 8核处理器\r\n', 1849),
('2018-05-09 13:09:02', 21, 1, '黑色', '64G', '/project/ec/assets/imgs/detailsimg/note3_1.jpg', '【全国包邮送壳膜】小米Note3 全网通 4/6+64/128G 8核处理器\r\n', 1849),
('2018-05-10 09:23:49', 9, 1, '烟晶灰', '128G', '/project/ec/assets/imgs/detailsimg/s8jia_1.jpg', '【新品现货顺丰包邮】三星 GALAXY S8+（皇帝版/G9550/全网通）', 5699),
('2018-05-10 16:37:28', 7, 1, '白色', '128G', '/project/ec/assets/imgs/detailsimg/mate10_1.jpg', '【包邮送壳膜】华为 HUAWEI Mate 10 6GB+128GB 全网通 双卡双待', 3739),
('2018-05-10 16:37:29', 7, 1, '白色', '128G', '/project/ec/assets/imgs/detailsimg/mate10_1.jpg', '【包邮送壳膜】华为 HUAWEI Mate 10 6GB+128GB 全网通 双卡双待', 3739),
('2018-05-11 11:01:36', 16, 1, '迷夜黑', '64G', '/project/ec/assets/imgs/detailsimg/s8_1.jpg', '【顺丰包邮 当天发】三星 GALAXY S8（全网通）移动联通电信4G手机', 4398),
('2018-05-11 11:01:58', 16, 1, '迷夜黑', '64G', '/project/ec/assets/imgs/detailsimg/s8_1.jpg', '【顺丰包邮 当天发】三星 GALAXY S8（全网通）移动联通电信4G手机', 4398),
('2018-05-11 17:46:17', 8, 1, '热力红', '128G', '/project/ec/assets/imgs/detailsimg/r15_1.jpg', 'OPPO R15 全面屏双摄拍照手机 全网通 移动联通电信4G', 2999),
('2018-05-12 11:00:19', 8, 1, '热力红', '128G', '/project/ec/assets/imgs/detailsimg/r15_1.jpg', 'OPPO R15 全面屏双摄拍照手机 全网通 移动联通电信4G', 2999),
('2018-05-12 11:00:19', 12, 1, '草木绿', '128G', '/project/ec/assets/imgs/detailsimg/p10p_1.jpg', '【顺丰包邮+送壳膜】华为 HUAWEI P10 Plus 6GB运行 移动联通电信4G', 2628),
('2018-05-12 11:00:19', 7, 1, '白色', '256G', '/project/ec/assets/imgs/detailsimg/mate10_1.jpg', '【包邮送壳膜】华为 HUAWEI Mate 10 6GB+128GB 全网通 双卡双待', 3739),
('2018-05-12 11:01:01', 7, 1, '白色', '64G', '/project/ec/assets/imgs/detailsimg/mate10_1.jpg', '【包邮送壳膜】华为 HUAWEI Mate 10 6GB+128GB 全网通 双卡双待', 5239),
('2018-05-12 11:01:49', 8, 1, '热力红', '128G', '/project/ec/assets/imgs/detailsimg/r15_1.jpg', 'OPPO R15 全面屏双摄拍照手机 全网通 移动联通电信4G', 2999),
('2018-05-14 18:13:04', 7, 100, '白色', '256G', '/project/ec/assets/imgs/detailsimg/mate10_1.jpg', '【包邮送壳膜】华为 HUAWEI Mate 10 6GB+128GB 全网通 双卡双待', 3739),
('2018-05-14 18:13:40', 16, 1, '迷夜黑', '64G', '/project/ec/assets/imgs/detailsimg/s8_1.jpg', '【顺丰包邮 当天发】三星 GALAXY S8（全网通）移动联通电信4G手机', 4398),
('2018-05-15 09:28:13', 8, 1, '热力红', '128G', '/project/ec/assets/imgs/detailsimg/r15_1.jpg', 'OPPO R15 全面屏双摄拍照手机 全网通 移动联通电信4G', 2999),
('2018-05-15 09:28:34', 7, 9, '白色', '256G', '/project/ec/assets/imgs/detailsimg/mate10_1.jpg', '【包邮送壳膜】华为 HUAWEI Mate 10 6GB+128GB 全网通 双卡双待', 3739),
('2018-05-15 09:28:34', 16, 3, '芭比粉', '64G', '/project/ec/assets/imgs/detailsimg/s8_1.jpg', '【顺丰包邮 当天发】三星 GALAXY S8（全网通）移动联通电信4G手机', 4398),
('2018-05-15 11:35:49', 26, 1, '红色', '64G', '/project/ec/assets/imgs/detailsimg/r11s_1.jpg', 'OPPO R11s 全面屏拍照手机 全网通 移动联通电信4G手机\r\n', 2498),
('2018-05-15 21:13:44', 27, 4, '磨砂黑', '32G', '/project/ec/assets/imgs/detailsimg/s7_1.jpg', '三星 Galaxy S7（G9300）4GB+32GB 全网通4G手机\r\n', 2298),
('2018-05-15 21:16:15', 27, 2, '磨砂黑', '32G', '/project/ec/assets/imgs/detailsimg/s7_1.jpg', '三星 Galaxy S7（G9300）4GB+32GB 全网通4G手机\r\n', 2298),
('2018-05-15 21:29:08', 8, 2, '热力红', '128G', '/project/ec/assets/imgs/detailsimg/r15_1.jpg', 'OPPO R15 全面屏双摄拍照手机 全网通 移动联通电信4G', 2999),
('2018-05-15 21:30:19', 9, 2, '烟晶灰', '128G', '/project/ec/assets/imgs/detailsimg/s8jia_1.jpg', '【新品现货顺丰包邮】三星 GALAXY S8+（皇帝版/G9550/全网通）', 5699),
('2018-05-15 21:32:33', 8, 1, '热力红', '128G', '/project/ec/assets/imgs/detailsimg/r15_1.jpg', 'OPPO R15 全面屏双摄拍照手机 全网通 移动联通电信4G', 2999),
('2018-05-15 21:35:23', 7, 2, '白色', '64G', '/project/ec/assets/imgs/detailsimg/mate10_1.jpg', '【包邮送壳膜】华为 HUAWEI Mate 10 6GB+128GB 全网通 双卡双待', 3739),
('2018-05-15 21:38:06', 12, 2, '草木绿', '64G', '/project/ec/assets/imgs/detailsimg/p10p_1.jpg', '【顺丰包邮+送壳膜】华为 HUAWEI P10 Plus 6GB运行 移动联通电信4G', 2628),
('2018-05-15 21:38:07', 12, 2, '草木绿', '64G', '/project/ec/assets/imgs/detailsimg/p10p_1.jpg', '【顺丰包邮+送壳膜】华为 HUAWEI P10 Plus 6GB运行 移动联通电信4G', 2628),
('2018-05-15 21:38:08', 12, 2, '草木绿', '64G', '/project/ec/assets/imgs/detailsimg/p10p_1.jpg', '【顺丰包邮+送壳膜】华为 HUAWEI P10 Plus 6GB运行 移动联通电信4G', 2628),
('2018-05-15 21:38:08', 12, 2, '草木绿', '64G', '/project/ec/assets/imgs/detailsimg/p10p_1.jpg', '【顺丰包邮+送壳膜】华为 HUAWEI P10 Plus 6GB运行 移动联通电信4G', 2628),
('2018-05-15 21:38:10', 12, 2, '草木绿', '64G', '/project/ec/assets/imgs/detailsimg/p10p_1.jpg', '【顺丰包邮+送壳膜】华为 HUAWEI P10 Plus 6GB运行 移动联通电信4G', 2628),
('2018-05-15 21:38:30', 11, 2, '极光白', '64G', '/project/ec/assets/imgs/detailsimg/x21_1.jpg', 'vivo X21 全面屏 双摄美颜拍照手机 6G运行 全网通4G', 2898),
('2018-05-17 21:32:31', 25, 100, '迷夜黑', '128G', '/project/ec/assets/imgs/detailsimg/note8_1.jpg', '三星 GalaxyNote8（SM-N9500）6GB+64GB/128GB/256GB 4G手机双卡双待\r\n', 6488);

-- --------------------------------------------------------

--
-- 表的结构 `products`
--

CREATE TABLE `products` (
  `id` int(6) UNSIGNED NOT NULL,
  `name` varchar(64) NOT NULL,
  `price_before` double UNSIGNED NOT NULL,
  `price` float UNSIGNED NOT NULL,
  `title` text NOT NULL,
  `sell` int(6) NOT NULL,
  `comment` int(6) NOT NULL,
  `imgnormal` varchar(256) NOT NULL,
  `brand` varchar(32) NOT NULL,
  `brandimg` varchar(256) NOT NULL,
  `img1` varchar(256) NOT NULL,
  `img2` varchar(256) NOT NULL,
  `img3` varchar(256) NOT NULL,
  `img4` varchar(256) NOT NULL,
  `img5` varchar(256) NOT NULL,
  `imgbig` varchar(256) NOT NULL,
  `color1` varchar(32) NOT NULL,
  `color2` varchar(32) NOT NULL,
  `color3` varchar(32) NOT NULL,
  `color4` varchar(32) NOT NULL,
  `mem32` varchar(32) NOT NULL,
  `mem64` varchar(32) NOT NULL,
  `mem128` varchar(32) NOT NULL,
  `mem256` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `products`
--

INSERT INTO `products` (`id`, `name`, `price_before`, `price`, `title`, `sell`, `comment`, `imgnormal`, `brand`, `brandimg`, `img1`, `img2`, `img3`, `img4`, `img5`, `imgbig`, `color1`, `color2`, `color3`, `color4`, `mem32`, `mem64`, `mem128`, `mem256`) VALUES
(7, '华为mate10', 3939, 3739, '【包邮送壳膜】华为 HUAWEI Mate 10 6GB+128GB 全网通 双卡双待', 593, 196, '/project/upload/mate10_1.jpg', '华为', '/project/upload/huawei.jpg', '/project/upload/mate10_2.jpg', '/project/upload/mate10_1.jpg', '/project/upload/mate10_3.jpg', '/project/upload/mate10_4.jpg', '/project/upload/mate10_5.jpg', '/project/ec/assets/imgs/detailsimg/mate10_1.jpg', '白色', '黑色', '银灰色', '土豪金', '32G', '64G', '128G', '256G'),
(8, 'OPPOR11', 3099, 2999, 'OPPO R15 全面屏双摄拍照手机 全网通 移动联通电信4G', 159, 18, '/project/ec/assets/imgs/detailsimg/r15_1.jpg', 'oppo', '/project/ec/assets/imgs/indeximg/oppo.jpg', '/project/ec/assets/imgs/detailsimg/r15_1.jpg', '/project/ec/assets/imgs/detailsimg/r15_2.jpg', '/project/ec/assets/imgs/detailsimg/r15_3.jpg', '/project/ec/assets/imgs/detailsimg/r15_4.jpg', '/project/ec/assets/imgs/detailsimg/r15_5.jpg', '/project/ec/assets/imgs/detailsimg/r15_1.jpg', '热力红', '星空紫', '雪莹白', '', '', '', '128G', ''),
(9, '三星S8+', 5800, 5699, '【新品现货顺丰包邮】三星 GALAXY S8+（皇帝版/G9550/全网通）', 220, 50, '/project/ec/assets/imgs/detailsimg/s8jia_1.jpg', '三星', '/project/ec/assets/imgs/indeximg/sanxing.jpg', '/project/ec/assets/imgs/detailsimg/s8jia_1.jpg', '/project/ec/assets/imgs/detailsimg/s8jia_2.jpg', '/project/ec/assets/imgs/detailsimg/s8jia_3.jpg', '/project/ec/assets/imgs/detailsimg/s8jia_4.jpg', '/project/ec/assets/imgs/detailsimg/s8jia_5.jpg', '/project/ec/assets/imgs/detailsimg/s8jia_1.jpg', '烟晶灰', '勃垦地红', '迷夜黑', '', '', '', '128G', ''),
(10, '小米5X', 1399, 1078, '【亲！包邮送壳膜】(MI)小米 5X 全网通 4+32/64G pk 荣耀 魅族', 580, 136, '/project/ec/assets/imgs/detailsimg/5x_1.jpg', '小米', '/project/ec/assets/imgs/indeximg/xiaomi.jpg', '/project/ec/assets/imgs/detailsimg/5x_1.jpg', '/project/ec/assets/imgs/detailsimg/5x_2.jpg', '/project/ec/assets/imgs/detailsimg/5x_3.jpg', '/project/ec/assets/imgs/detailsimg/5x_4.jpg', '/project/ec/assets/imgs/detailsimg/5x_5.jpg', '/project/ec/assets/imgs/detailsimg/5x_1.jpg', '金色', '黑色', '玫瑰金', '', '32G', '64G', '', ''),
(11, 'vivox21', 2999, 2898, 'vivo X21 全面屏 双摄美颜拍照手机 6G运行 全网通4G', 187, 22, '/project/ec/assets/imgs/detailsimg/x21_1.jpg', 'vivo', '/project/ec/assets/imgs/indeximg/vivo.jpg', '/project/ec/assets/imgs/detailsimg/x21_1.jpg', '/project/ec/assets/imgs/detailsimg/x21_2.jpg', '/project/ec/assets/imgs/detailsimg/x21_3.jpg', '/project/ec/assets/imgs/detailsimg/x21_4.jpg', '/project/ec/assets/imgs/detailsimg/x21_5.jpg', '/project/ec/assets/imgs/detailsimg/x21_1.jpg', '极光白', '宝石红', '冰钻黑', '', '', '64G', '128G', ''),
(12, '华为P10PLUS', 2999, 2628, '【顺丰包邮+送壳膜】华为 HUAWEI P10 Plus 6GB运行 移动联通电信4G', 187, 22, '/project/ec/assets/imgs/detailsimg/p10p_1.jpg', '华为', '/project/ec/assets/imgs/indeximg/huawei.jpg', '/project/ec/assets/imgs/detailsimg/p10p_1.jpg', '/project/ec/assets/imgs/detailsimg/p10p_2.jpg', '/project/ec/assets/imgs/detailsimg/p10p_3.jpg', '/project/ec/assets/imgs/detailsimg/p10p_4.jpg', '/project/ec/assets/imgs/detailsimg/p10p_5.jpg', '/project/ec/assets/imgs/detailsimg/p10p_1.jpg', '草木绿', '钻雕金', '曜石黑', '玫瑰金', '', '64G', '128G', ''),
(13, 'iphone8 plus', 6999, 6888, '苹果 iPhone 8 Plus（全网通）\r\n', 251, 15, '/project/ec/assets/imgs/detailsimg/8p_1.jpg', 'iphone', '/project/ec/assets/imgs/indeximg/iphone.jpg', '/project/ec/assets/imgs/detailsimg/8p_1.jpg', '/project/ec/assets/imgs/detailsimg/8p_2.jpg', '/project/ec/assets/imgs/detailsimg/8p_3.jpg', '/project/ec/assets/imgs/detailsimg/8p_4.jpg', '/project/ec/assets/imgs/detailsimg/8p_5.jpg', '/project/ec/assets/imgs/detailsimg/8p_1.jpg', '银色', '金色', '', '', '', '64G', '', '256G'),
(16, '三星s8', 4599, 4398, '【顺丰包邮 当天发】三星 GALAXY S8（全网通）移动联通电信4G手机', 338, 116, '/project/ec/assets/imgs/detailsimg/s8_1.jpg', 'iphone', '/project/ec/assets/imgs/indeximg/sanxing.jpg', '/project/ec/assets/imgs/detailsimg/s8_1.jpg', '/project/ec/assets/imgs/detailsimg/s8_2.jpg', '/project/ec/assets/imgs/detailsimg/s8_3.jpg', '/project/ec/assets/imgs/detailsimg/s8_4.jpg', '/project/ec/assets/imgs/detailsimg/s8_5.jpg', '/project/ec/assets/imgs/detailsimg/s8_6.jpg', '迷夜黑', '芭比粉', '绮梦金', '星空灰', '', '64G', '', ''),
(17, 'iphone6', 2200, 1999, '【顺丰包邮 送壳膜】苹果 Apple iPhone6 移动联通电信4G全网通', 145, 77, '/project/ec/assets/imgs/detailsimg/6_1.jpg', 'iphone', '/project/ec/assets/imgs/indeximg/iphone.jpg', '/project/ec/assets/imgs/detailsimg/6_1.jpg', '/project/ec/assets/imgs/detailsimg/6_2.jpg', '/project/ec/assets/imgs/detailsimg/6_3.png', '/project/ec/assets/imgs/detailsimg/6_4.png', '/project/ec/assets/imgs/detailsimg/6_5.png', '/project/ec/assets/imgs/detailsimg/8p_1.jpg', '灰色', '金色', '', '', '32G', '', '', ''),
(18, 'VIVO XPLAY6', 4111, 3998, 'vivo Xplay6（全网通）6GB RAM+64G 移动联通电信4G手机 双卡双待', 114, 6, '/project/ec/assets/imgs/detailsimg/xplay6_1.jpg', 'iphone', '/project/ec/assets/imgs/indeximg/vivo.jpg', '/project/ec/assets/imgs/detailsimg/xplay6_1.jpg', '/project/ec/assets/imgs/detailsimg/xplay6_2.jpg', '/project/ec/assets/imgs/detailsimg/xplay6_3.jpg', '/project/ec/assets/imgs/detailsimg/xplay6_4.jpg', '/project/ec/assets/imgs/detailsimg/xplay6_5.jpg', '/project/ec/assets/imgs/detailsimg/8p_1.jpg', '玫瑰金', '磨砂黑', '', '', '', '64G', '', ''),
(19, '小米6', 2298, 2228, '小米6 全网通 4G/6GB运行 移动联通电信4G手机【顺丰包邮 送壳膜】', 447, 226, '/project/ec/assets/imgs/detailsimg/mi6_1.jpg', '小米', '/project/ec/assets/imgs/indeximg/xiaomi.jpg', '/project/ec/assets/imgs/detailsimg/mi6_1.jpg', '/project/ec/assets/imgs/detailsimg/mi6_2.jpg', '/project/ec/assets/imgs/detailsimg/mi6_3.jpg', '/project/ec/assets/imgs/detailsimg/mi6_4.jpg', '/project/ec/assets/imgs/detailsimg/mi6_2.jpg', '/project/ec/assets/imgs/detailsimg/mi6_1.jpg', '亮蓝色', '亮黑色', '', '', '', '64G', '', ''),
(20, '华为麦芒6', 1666, 1608, '【顺丰包邮送壳膜】华为 麦芒 6 全网通 4GB+64GB版 移动联通电信4G\r\n', 412, 121, '/project/ec/assets/imgs/detailsimg/maimang6_1.jpg', 'iphone', '/project/ec/assets/imgs/indeximg/huawei.jpg', '/project/ec/assets/imgs/detailsimg/maimang6_1.jpg', '/project/ec/assets/imgs/detailsimg/maimang6_2.jpg', '/project/ec/assets/imgs/detailsimg/maimang6_3.jpg', '/project/ec/assets/imgs/detailsimg/maimang6_4.jpg', '/project/ec/assets/imgs/detailsimg/maimang6_5.jpg', '/project/ec/assets/imgs/detailsimg/maimang6_1.jpg', '极光蓝', '流光金', '曜石黑', '', '', '64G', '', ''),
(21, '小米note3', 1999, 1849, '【全国包邮送壳膜】小米Note3 全网通 4/6+64/128G 8核处理器\r\n', 251, 15, '/project/ec/assets/imgs/detailsimg/note3_1.jpg', 'iphone', '/project/ec/assets/imgs/indeximg/xiaomi.jpg', '/project/ec/assets/imgs/detailsimg/note3_1.jpg', '/project/ec/assets/imgs/detailsimg/note3_2.jpg', '/project/ec/assets/imgs/detailsimg/note3_3.jpg', '/project/ec/assets/imgs/detailsimg/note3_4.jpg', '/project/ec/assets/imgs/detailsimg/note3_5.jpg', '/project/ec/assets/imgs/detailsimg/8p_1.jpg', '黑色', '亮蓝色', '', '', '', '64G', '', ''),
(22, '小米MIX2', 3000, 2928, '【顺丰包邮 送耳机】小米MIX2 全网通 6GB运行 移动联通电信4G手机\r\n', 407, 203, '/project/ec/assets/imgs/detailsimg/mix2_1.jpg', 'iphone', '/project/ec/assets/imgs/indeximg/xiaomi.jpg', '/project/ec/assets/imgs/detailsimg/mix2_1.jpg', '/project/ec/assets/imgs/detailsimg/mix2_2.jpg', '/project/ec/assets/imgs/detailsimg/mix2_3.jpg', '/project/ec/assets/imgs/detailsimg/mix2_4.jpg', '/project/ec/assets/imgs/detailsimg/mix2_5.jpg', '/project/ec/assets/imgs/detailsimg/mix2_1.jpg', '黑色', '', '', '', '', '64G', '128G', ''),
(23, 'OPPOR11 plus', 3000, 2998, '【顺丰包邮】OPPO R11s Plus 全面屏双摄 全网通6G+64G 双卡双待手机\r\n', 226, 125, '/project/ec/assets/imgs/detailsimg/r11sp_1.jpg', 'OPPO', '/project/ec/assets/imgs/indeximg/oppo.jpg', '/project/ec/assets/imgs/detailsimg/r11sp_1.jpg', '/project/ec/assets/imgs/detailsimg/r11sp_2.jpg', '/project/ec/assets/imgs/detailsimg/r11sp_3.jpg', '/project/ec/assets/imgs/detailsimg/r11sp_4.jpg', '/project/ec/assets/imgs/detailsimg/r11sp_5.jpg', '/project/ec/assets/imgs/detailsimg/r11sp_1.jpg', '黑色', '金色', '', '', '', '64G', '', ''),
(24, 'iphone8', 4800, 4749, '【顺丰包邮 现货】苹果 iPhone 8（全网通） 移动联通电信4G手机\r\n', 100, 18, '/project/ec/assets/imgs/detailsimg/8_1.jpg', 'iphone', '/project/ec/assets/imgs/indeximg/iphone.jpg', '/project/ec/assets/imgs/detailsimg/8_1.jpg', '/project/ec/assets/imgs/detailsimg/8_2.jpg', '/project/ec/assets/imgs/detailsimg/8_3.jpg', '/project/ec/assets/imgs/detailsimg/8_4.jpg', '/project/ec/assets/imgs/detailsimg/8_2.jpg', '/project/ec/assets/imgs/detailsimg/8_1.jpg', '深灰色', '红色', '银色', '金色', '', '64G', '', '256G'),
(25, '三星note8', 6666, 6488, '三星 GalaxyNote8（SM-N9500）6GB+64GB/128GB/256GB 4G手机双卡双待\r\n', 105, 31, '/project/ec/assets/imgs/detailsimg/note8_1.jpg', 'iphone', '/project/ec/assets/imgs/indeximg/sanxing.jpg', '/project/ec/assets/imgs/detailsimg/note8_1.jpg', '/project/ec/assets/imgs/detailsimg/note8_2.jpg', '/project/ec/assets/imgs/detailsimg/note8_3.jpg', '/project/ec/assets/imgs/detailsimg/note8_4.jpg', '/project/ec/assets/imgs/detailsimg/note8_5.jpg', '/project/ec/assets/imgs/detailsimg/note8_1.jpg', '迷夜黑', '星河蓝', '矿野灰', '', '', '64G', '128G', ''),
(26, 'OPPO R11S', 2588, 2498, 'OPPO R11s 全面屏拍照手机 全网通 移动联通电信4G手机\r\n', 155, 42, '/project/ec/assets/imgs/detailsimg/r11s_1.jpg', 'iphone', '/project/ec/assets/imgs/indeximg/oppo.jpg', '/project/ec/assets/imgs/detailsimg/r11s_1.jpg', '/project/ec/assets/imgs/detailsimg/r11s_2.jpg', '/project/ec/assets/imgs/detailsimg/r11s_3.jpg', '/project/ec/assets/imgs/detailsimg/r11s_4.jpg', '/project/ec/assets/imgs/detailsimg/r11s_5.jpg', '/project/ec/assets/imgs/detailsimg/r11s_1.jpg', '红色', '黑色', '香槟色', '', '', '64G', '', ''),
(27, '三星S7', 2999, 2298, '三星 Galaxy S7（G9300）4GB+32GB 全网通4G手机\r\n', 50, 15, '/project/ec/assets/imgs/detailsimg/s7_1.jpg', 'iphone', '/project/ec/assets/imgs/indeximg/sanxing.jpg', '/project/ec/assets/imgs/detailsimg/s7_1.jpg', '/project/ec/assets/imgs/detailsimg/s7_2.jpg', '/project/ec/assets/imgs/detailsimg/s7_3.jpg', '/project/ec/assets/imgs/detailsimg/s7_4.jpg', '/project/ec/assets/imgs/detailsimg/s7_5.jpg', '/project/ec/assets/imgs/detailsimg/s7_1.jpg', '磨砂黑', '伯光金', '', '', '32G', '', '', ''),
(28, 'OPPO A77', 1699, 1599, 'OPPO A77 全网通4G手机 移动联通电信 双卡双待 4GB+64GB\r\n', 31, 8, '/project/ec/assets/imgs/detailsimg/a77_1.jpg', 'oppo', '/project/ec/assets/imgs/indeximg/oppo.jpg', '/project/ec/assets/imgs/detailsimg/a77_1.jpg', '/project/ec/assets/imgs/detailsimg/a77_2.jpg', '/project/ec/assets/imgs/detailsimg/a77_3.jpg', '/project/ec/assets/imgs/detailsimg/a77_4.jpg', '/project/ec/assets/imgs/detailsimg/a77_5.jpg', '/project/ec/assets/imgs/detailsimg/a77_1.jpg', '银色', '金色', '黑色', '', '', '64G', '', ''),
(29, 'OPPO A77', 2777, 2699, 'OPPO R11s Plus 全面屏双摄 全网通6G+64G 双卡双待手机\r\n', 60, 18, '/project/ec/assets/imgs/detailsimg/a77_1.jpg', 'oppo', '/project/ec/assets/imgs/indeximg/oppo.jpg', '/project/ec/assets/imgs/detailsimg/r11p_1.jpg', '/project/ec/assets/imgs/detailsimg/r11p_2.jpg', '/project/ec/assets/imgs/detailsimg/r11p_3.jpg', '/project/ec/assets/imgs/detailsimg/r11p_4.jpg', '/project/ec/assets/imgs/detailsimg/r11p_5.jpg', '/project/ec/assets/imgs/detailsimg/r11p_1.jpg', '银色', '金色', '黑色', '', '', '64G', '', ''),
(33, 'iphoneX', 9999, 9688, '现货发售 苹果 iPhone X （包邮） 64G/256G全网通4G手机', 0, 0, '/project/upload/x_1.jpg', '', '/project/upload/iphone.jpg', '/project/upload/x_1.jpg', '/project/upload/x_2.jpg', '/project/upload/x_3.jpg', '/project/upload/x_4.jpg', '/project/upload/x_5.jpg', '', '黑色', '', '', '', '256G', '0', '0', '0'),
(38, 'iphone7', 4666, 4588, '【顺丰包邮+送壳膜支架】苹果 iPhone 7（全网通）', 0, 0, '/project/upload/7_1.jpg', '', '/project/upload/iphone.jpg', '/project/upload/7_2.jpg', '/project/upload/7_1.jpg', '/project/upload/7_3.jpg', '/project/upload/7_4.jpg', '/project/upload/7_5.jpg', '', '黑色', '金色', '', '', '32G', '0', '0', '0'),
(39, 'iPhone7Plus', 4999, 4849, '【顺丰包邮】苹果 Apple iPhone7 Plus 5.5英寸 全网通4G手机', 0, 0, '/project/upload/7p_1.jpg', '', '/project/upload/iphone.jpg', '/project/upload/7p_2.jpg', '/project/upload/7p_1.jpg', '/project/upload/7_4.jpg', '/project/upload/7_5.jpg', '/project/upload/7p_1.jpg', '', '黑色', '金色', '银色', '', '32G', '128G', '0', '0');

-- --------------------------------------------------------

--
-- 表的结构 `sellers`
--

CREATE TABLE `sellers` (
  `id` int(6) UNSIGNED NOT NULL,
  `sellername` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `idcard` varchar(18) NOT NULL,
  `tel` varchar(11) NOT NULL,
  `realname` varchar(8) NOT NULL,
  `sex` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `sellers`
--

INSERT INTO `sellers` (`id`, `sellername`, `password`, `idcard`, `tel`, `realname`, `sex`) VALUES
(1, 'root', '123456', '210204166550244825', '13498752545', '刘刘刘', '男');

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

CREATE TABLE `users` (
  `id` int(6) UNSIGNED NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `tel` varchar(11) NOT NULL,
  `email` varchar(32) NOT NULL,
  `address` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `tel`, `email`, `address`) VALUES
(2, 'lsj', '5d93ceb70e2bf5daa84ec3d0cd2c731a', '13478484578', '123@qq.com', '阿斯达斯'),
(53, 'csw', '202cb962ac59075b964b07152d234b70', '', '', ''),
(54, '123', 'e7a1878fb11c0373dc646ae5ae18e43b', '', '', ''),
(55, '222', '931bd0e1cc9baae10e9ff6ca7002e834', '', '', ''),
(56, '11111', '343b1c4a3ea721b2d640fc8700db0f36', '14687454878', '165@163', 'qwe '),
(57, 'lsj123', '5d93ceb70e2bf5daa84ec3d0cd2c731a', '13478483545', '759@163.com', '辽宁');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_one`
--
ALTER TABLE `order_one`
  ADD PRIMARY KEY (`orderon`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sellers`
--
ALTER TABLE `sellers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;
--
-- 使用表AUTO_INCREMENT `products`
--
ALTER TABLE `products`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- 使用表AUTO_INCREMENT `sellers`
--
ALTER TABLE `sellers`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
