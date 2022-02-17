-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- ホスト: mysql629.db.sakura.ne.jp
-- 生成日時: 2022 年 2 月 09 日 22:49
-- サーバのバージョン： 5.7.36-log
-- PHP のバージョン: 7.1.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `bbsapporo_kadai8`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `unit_user_table`
--

CREATE TABLE `unit_user_table` (
  `id` int(12) NOT NULL,
  `u_id` varchar(128) NOT NULL,
  `u_pw` varchar(128) NOT NULL,
  `life_flg` int(1) NOT NULL,
  `indate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `unit_user_table`
--

INSERT INTO `unit_user_table` (`id`, `u_id`, `u_pw`, `life_flg`, `indate`) VALUES
(1, 'miu', 'test', 0, '2022-02-03 14:20:34'),
(2, '01_あさけん_M', '01_あさけん_M', 0, '0000-00-00 00:00:00'),
(3, '02_あまちゃん_W', '02_あまちゃん_W', 0, '0000-00-00 00:00:00'),
(4, '03_淡路都久美_w', '03_淡路都久美_w', 0, '0000-00-00 00:00:00'),
(5, '04_いしお_M', '04_いしお_M', 0, '0000-00-00 00:00:00'),
(6, '05_石塚（ズッカ）_W', '05_石塚（ズッカ）_W', 0, '0000-00-00 00:00:00'),
(7, '06_監督（おかべ）_M', '06_監督（おかべ）_M', 0, '0000-00-00 00:00:00'),
(8, '07_あずあず_M', '07_あずあず_M', 0, '0000-00-00 00:00:00'),
(9, '08_菊地輝仙（てるさん）_W', '08_菊地輝仙（てるさん）_W', 0, '0000-00-00 00:00:00'),
(10, '09_北出_M', '09_北出_M', 0, '0000-00-00 00:00:00'),
(11, '11_ウシジマくん_M', '11_ウシジマくん_M', 0, '0000-00-00 00:00:00'),
(12, '13_杉目（すぎのめ）_M', '13_杉目（すぎのめ）_M', 0, '0000-00-00 00:00:00'),
(13, '14_すわちゃん_M', '14_すわちゃん_M', 0, '0000-00-00 00:00:00'),
(14, '15_田中宏一_M', '15_田中宏一_M', 0, '0000-00-00 00:00:00'),
(15, '16_那珂　慎二_W', '16_那珂　慎二_W', 0, '0000-00-00 00:00:00'),
(16, '17_増森彩香_w', '17_増森彩香_w', 0, '0000-00-00 00:00:00'),
(17, '18_みう_M(自分)', '18_みう_M(自分)', 0, '0000-00-00 00:00:00'),
(18, '19_ヒデ_W', '19_ヒデ_W', 0, '0000-00-00 00:00:00'),
(19, 'EZOHUB事務局_川上', 'EZOHUB事務局_川上', 0, '0000-00-00 00:00:00'),
(20, 'G’s STAFF まえたつ', 'G’s STAFF まえたつ', 0, '0000-00-00 00:00:00'),
(21, 'G’s STAFF_おおさわ', 'G’s STAFF_おおさわ', 0, '0000-00-00 00:00:00'),
(22, 'G’s STAFF_らんこ', 'G’s STAFF_らんこ', 0, '0000-00-00 00:00:00'),
(23, 'G’s STAFF_真知子', 'G’s STAFF_真知子', 0, '0000-00-00 00:00:00'),
(24, 'hiroyasu kodama', 'hiroyasu kodama', 0, '0000-00-00 00:00:00'),
(25, 'taeko ono', 'taeko ono', 0, '0000-00-00 00:00:00'),
(26, 'Taro', 'Taro', 0, '0000-00-00 00:00:00'),
(27, 'シーラクンス　森', 'シーラクンス　森', 0, '0000-00-00 00:00:00'),
(28, 'チューター_いってつ_W', 'チューター_いってつ_W', 0, '0000-00-00 00:00:00'),
(29, 'チューター_おかざき', 'チューター_おかざき', 0, '0000-00-00 00:00:00'),
(30, 'チューター_おすず_m', 'チューター_おすず_m', 0, '0000-00-00 00:00:00'),
(31, 'チューター_たなかよしき', 'チューター_たなかよしき', 0, '0000-00-00 00:00:00'),
(32, 'チューター_まさと_M', 'チューター_まさと_M', 0, '0000-00-00 00:00:00'),
(33, '関聖二', '関聖二', 0, '0000-00-00 00:00:00'),
(34, '講師_masanari_hori', '講師_masanari_hori', 0, '0000-00-00 00:00:00'),
(35, '講師_こーじろー', '講師_こーじろー', 0, '0000-00-00 00:00:00'),
(36, '講師_森田', '講師_森田', 0, '0000-00-00 00:00:00'),
(37, '老師小菅', '老師小菅', 0, '0000-00-00 00:00:00');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `unit_user_table`
--
ALTER TABLE `unit_user_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルのAUTO_INCREMENT
--

--
-- テーブルのAUTO_INCREMENT `unit_user_table`
--
ALTER TABLE `unit_user_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
