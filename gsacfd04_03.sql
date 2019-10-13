-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost
-- 生成日時: 2019 年 10 月 10 日 13:03
-- サーバのバージョン： 10.4.6-MariaDB
-- PHP のバージョン: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `gsacfd04_03`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_bm_table`
--

CREATE TABLE `gs_bm_table` (
  `id` int(12) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `url` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `indate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `gs_bm_table`
--

INSERT INTO `gs_bm_table` (`id`, `name`, `url`, `comment`, `indate`) VALUES
(1, 'サードドア', 'https://book.toyokeizai.net/thirddoor/', '面白かった', '2019-10-06 15:47:26'),
(2, 'ハリーポッター', 'https://www.sayzansha.com/smp/harrypotter/', 'ワクワクした', '2019-10-06 15:49:09'),
(3, '起業の科学', 'https://www.amazon.co.jp/%E8%B5%B7%E6%A5%AD%E3%81%AE%E7%A7%91%E5%AD%A6-%E3%82%B9%E3%82%BF%E3%83%BC%E3%83%88%E3%82%A2%E3%83%83%E3%83%97%E3%82%B5%E3%82%A4%E3%82%A8%E3%83%B3%E3%82%B9-%E7%94%B0%E6%89%80-%E9%9B%85%E4%B9%8B/dp/4822259757', 'セミナーありがとうございました', '2019-10-09 20:43:40'),
(11, '役所窓口で1日200件を解決! 指導企業1000社のすごいコンサルタントが教えている クレーム対応 最強の話しかた', 'https://www.amazon.co.jp/%E5%BD%B9%E6%89%80%E7%AA%93%E5%8F%A3%E3%81%A71%E6%97%A5200%E4%BB%B6%E3%82%92%E8%A7%A3%E6%B1%BA-%E6%8C%87%E5%B0%8E%E4%BC%81%E6%A5%AD1000%E7%A4%BE%E3%81%AE%E3%81%99%E3%81%94%E3%81%84%E3%82%B3%E3%83%B3%E3%82%B5%E3%83%AB%E3%82%BF%E3%83%B3%E3%83%88%E3%81%8C%E6%95%99%E3%81%88%E3%81%A6%E3%81%84%E3%82%8B-%E3%82%AF%E3%83%AC%E3%83%BC%E3%83%A0%E5%AF%BE%E5%BF%9C-%E6%9C%80%E5%BC%B7%E3%81%AE%E8%A9%B1%E3%81%97%E3%81%8B%E3%81%9F-%E5%B1%B1%E4%B8%8B/dp/4478029032/ref=sr_1_1?adgrpid=78441033314&gclid=EAIaIQobChMIo83JlJCP5QIVyWkqCh1k9wBTEAAYASAAEgIPLvD_BwE&hvadid=360551111205&hvdev=c&hvlocphy=1009717&hvnetw=g&hvpos=1t1&hvqmt=e&hvrand=11893164768476566116&hvtargid=kwd-792601482163&hydadcr=2755_11130005&jp-ad-ap=0&keywords=%E3%82%AF%E3%83%AC%E3%83%BC%E3%83%A0%E5%AF%BE%E5%BF%9C+%E6%9C%80%E5%BC%B7%E3%81%AE%E8%A9%B1%E3%81%97%E6%96%B9&qid=1570622350&sr=8-1', '目から鱗でした。', '2019-10-10 20:02:08');

-- --------------------------------------------------------

--
-- テーブルの構造 `php02_table`
--

CREATE TABLE `php02_table` (
  `id` int(12) NOT NULL,
  `task` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `deadline` date NOT NULL,
  `comment` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `indate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `php02_table`
--

INSERT INTO `php02_table` (`id`, `task`, `deadline`, `comment`, `indate`) VALUES
(1, 'kadai1', '2019-10-10', 'test', '2019-10-05 15:50:57'),
(2, 'kadai2', '2019-10-11', 'test', '2019-10-05 15:51:27'),
(3, 'kadai3', '2019-10-12', 'test', '2019-10-05 15:51:47'),
(4, 'kadai4', '2019-10-13', 'test', '2019-10-05 15:52:02'),
(5, 'kadai5', '2019-10-14', 'test', '2019-10-05 15:52:16'),
(6, 'kadai6', '2019-10-15', 'test6', '2019-10-05 15:52:29'),
(7, 'kadai7', '2019-10-16', 'test', '2019-10-05 15:52:42'),
(8, 'kadai8', '2019-10-17', 'test', '2019-10-05 15:52:56'),
(9, 'kadai9', '2019-10-18', 'test', '2019-10-05 15:53:08'),
(10, 'kadai10', '2019-10-19', 'test', '2019-10-05 15:53:21'),
(11, '今日の課題', '2019-10-05', 'qqq', '2019-10-05 17:11:15'),
(12, '復習', '2019-10-05', 'ooo', '2019-10-05 17:25:34'),
(13, '復習', '2019-10-05', 'ooo', '2019-10-05 17:26:06'),
(14, '復習', '2019-10-05', 'rrr', '2019-10-05 17:26:52'),
(15, '復習', '2019-10-05', 'ttt', '2019-10-05 17:30:17'),
(16, '今日の課題', '2019-10-06', 'nnn', '2019-10-05 17:31:33');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `php02_table`
--
ALTER TABLE `php02_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルのAUTO_INCREMENT
--

--
-- テーブルのAUTO_INCREMENT `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- テーブルのAUTO_INCREMENT `php02_table`
--
ALTER TABLE `php02_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
