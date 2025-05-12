-- --------------------------------------------------------
-- Host:                         195.88.211.140
-- Versi server:                 10.6.22-MariaDB - MariaDB Server
-- OS Server:                    Linux
-- HeidiSQL Versi:               12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- membuang struktur untuk table datamini_wpdb.wpkr_wc_customer_lookup
CREATE TABLE IF NOT EXISTS `wpkr_wc_customer_lookup` (
  `customer_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `username` varchar(60) NOT NULL DEFAULT '',
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `date_last_active` timestamp NULL DEFAULT NULL,
  `date_registered` timestamp NULL DEFAULT NULL,
  `country` char(2) NOT NULL DEFAULT '',
  `postcode` varchar(20) NOT NULL DEFAULT '',
  `city` varchar(100) NOT NULL DEFAULT '',
  `state` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`customer_id`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Membuang data untuk tabel datamini_wpdb.wpkr_wc_customer_lookup: ~107 rows (lebih kurang)
INSERT INTO `wpkr_wc_customer_lookup` (`customer_id`, `user_id`, `username`, `first_name`, `last_name`, `email`, `date_last_active`, `date_registered`, `country`, `postcode`, `city`, `state`) VALUES
	(1, 1, 'admin', 'Leo', 'Prangs Tobing', 'admin@datamininguntan.my.id', '2025-05-09 20:44:33', '2025-05-05 01:15:24', 'ID', '123456', '-', 'GO'),
	(2, NULL, '', 'Testing', 'dua', 'leoprangs@gmail.com', '2025-05-08 08:18:34', NULL, 'ID', '203202', 'sekadau', 'JB'),
	(5, 14, 'Davine', 'Davine', 'Grindley', 'dgrindley20@usatoday.com', '2025-05-09 08:25:46', '2025-05-08 07:08:04', 'ID', '40123', 'Bandung', 'JB'),
	(6, 16, 'Natividad', 'Natividad', 'Cloake', 'ncloake21@sakura.ne.jp', '2025-05-09 08:34:35', '2025-05-08 07:13:25', 'ID', '55281', 'Yogyakarta', 'YO'),
	(7, 21, 'Skelly', 'Skelly', 'Gallegos', 'sgallegos22@godaddy.com', '2025-05-09 08:37:30', '2025-05-08 07:17:44', 'ID', '10110', 'Jakarta Pusat', 'JK'),
	(8, 24, 'Randi', 'Randi', 'Whatham', 'rwhatham23@ted.com', '2025-05-09 08:39:17', '2025-05-08 07:20:23', 'ID', '17145', 'Bekasi', 'JB'),
	(9, 17, 'Fernandina', 'Fernandina', 'Affuso', 'faffusod@twitter.com', '2025-05-09 21:07:09', '2025-05-08 07:14:20', 'ID', '78124', 'Kota Pontianak', 'KB'),
	(10, 33, 'Stillman', 'Stillman', 'Schapiro', 'sschapiro28@amazon.com', '2025-05-09 08:48:01', '2025-05-08 07:24:35', 'ID', '90113', 'Makassar', 'SN'),
	(11, 35, 'Brandise', 'Brandise', 'Ochterlony', 'bochterlony29@amazon.com', '2025-05-09 08:49:50', '2025-05-08 07:25:10', 'ID', '15310', 'Tangerang Selatan', 'BT'),
	(12, 37, 'Cornelius', 'Cornelius', 'Urvoy', 'curvoy2a@ezinearticles.com', '2025-05-09 08:51:23', '2025-05-08 07:25:47', 'ID', '65145', 'Malang', 'JI'),
	(13, 38, 'Vere', 'Vere', 'Prozescky', 'vprozescky2b@toplist.cz', '2025-05-09 08:53:50', '2025-05-08 07:26:22', 'ID', '78111', 'Pontianak', 'KB'),
	(14, 36, 'Fairlie', 'Fairlie', 'Preshaw', 'fpreshawg@china.com.cn', '2025-05-09 21:17:23', '2025-05-08 07:25:33', 'ID', '78113', 'Kota Pontianak', 'KB'),
	(15, 32, 'Danyelle', 'Danyelle', 'Brideaux', 'dbrideaux27@mit.edu', '2025-05-09 08:46:05', '2025-05-08 07:23:55', 'ID', '16412', 'Depok', 'JB'),
	(16, 29, 'Ambrosius', 'Ambrosius', 'Beall', 'abeall25@mtv.com', '2025-05-09 08:42:53', '2025-05-08 07:22:02', 'ID', '201551', 'Medan', 'SU'),
	(17, NULL, '', 'akunbeda', 'email', 'akunbeda@gmail.com', '2025-05-08 08:20:51', NULL, 'ID', '203202', 'sekadau', 'JB'),
	(18, NULL, '', 'test', 'beda browser', 'bedaemaibedabrowser@gmail.com', '2025-05-08 08:22:52', NULL, 'ID', '79595', 'akmee', 'JB'),
	(19, 62, 'Marlene', 'Marlene', 'Greally', 'mgreallyo@quantcast.com', '2025-05-08 15:36:36', '2025-05-08 15:34:32', 'ID', '78124', 'Pontianak', 'KB'),
	(20, 64, 'Roma', 'Roma', 'Langfat', 'rlangfatq@istockphoto.com', '2025-05-08 15:56:25', '2025-05-08 15:39:00', 'ID', '78124', 'Kota Singkawang', 'KB'),
	(21, 72, 'Dimitry', 'Dimitry', 'Fasset', 'dfassety@unicef.org', '2025-05-08 16:28:35', '2025-05-08 15:47:05', 'ID', '76817', 'Kota Jakarta', 'JK'),
	(22, 30, 'Liza', 'Liza', 'Gambell', 'lgambell26@nih.gov', '2025-05-09 08:44:29', '2025-05-08 07:22:42', 'ID', '50145', 'Semarang', 'JT'),
	(23, 27, 'Swen', 'Swen', 'Wittman', 'swittman24@aol.com', '2025-05-09 08:41:10', '2025-05-08 07:21:09', 'ID', '602665', 'Surabaya', 'JI'),
	(24, 63, 'Eberto', 'Eberto', 'Nern', 'enernp@weibo.com', '2025-05-08 15:53:26', '2025-05-08 15:38:14', 'ID', '79121', 'Pontianak', 'KB'),
	(25, 65, 'Alexandros', 'Alexandros', 'Korneichik', 'akorneichikr@quantcast.com', '2025-05-08 15:59:51', '2025-05-08 15:40:47', 'ID', '745121', 'Kota Mempawah', 'KB'),
	(26, 66, 'Giuseppe', 'Giuseppe', 'Gerard', 'ggerards@instagram.com', '2025-05-08 16:02:06', '2025-05-08 15:41:31', 'ID', '65421', 'Kabupaten Sintang', 'KB'),
	(27, 67, 'Angelique', 'Angelique', 'Brosius', 'abrosiust@sun.com', '2025-05-08 16:10:21', '2025-05-08 15:42:25', 'ID', '78124', 'Singkawang', 'KB'),
	(28, 68, 'Jessy', 'Jessy', 'De Bell', 'jdebellu@nationalgeographic.com', '2025-05-08 16:12:14', '2025-05-08 15:43:22', 'ID', '78125', 'Pontianak', 'KB'),
	(29, 69, 'Lenna', 'Lenna', 'Seagrove', 'lseagrovev@usa.gov', '2025-05-08 16:19:30', '2025-05-08 15:44:49', 'ID', '72121', 'Kota Mempawah', 'KB'),
	(30, 70, 'Estelle', 'Estelle', 'Pieroni', 'epieroniw@blogs.com', '2025-05-08 16:23:15', '2025-05-08 15:45:21', 'ID', '78124', 'Kota Pontianak', 'KB'),
	(31, 71, 'Nady', 'Nady', 'Veel', 'nveelx@123-reg.co.uk', '2025-05-08 16:25:58', '2025-05-08 15:46:33', 'ID', '9821', 'Jakarta Barat', 'JK'),
	(32, 73, 'Susann', 'Susann', 'Langtry', 'slangtryz@indiegogo.com', '2025-05-08 16:30:49', '2025-05-08 15:47:41', 'ID', '76252', 'Kota Singkawang', 'KB'),
	(33, 74, 'Tobiah', 'Tobiah', 'Loyd', 'tloyd10@sogou.com', '2025-05-09 23:06:27', '2025-05-08 20:19:28', 'ID', '55161', 'Yogyakarta', 'YO'),
	(34, 23, 'Werner', 'Werner', 'Buchanan', 'wbuchanan0@reference.com', '2025-05-09 07:08:55', '2025-05-08 07:19:48', 'ID', '78111', 'Pontianak', 'KB'),
	(35, 28, 'Abagael', 'Abagael', 'Cockin', 'acockin1@noaa.gov', '2025-05-09 07:14:17', '2025-05-08 07:21:23', 'ID', '78112', 'Pontianak', 'KB'),
	(36, 31, 'Rozanna', 'Rozanna', 'Leng', 'rleng2@accuweather.com', '2025-05-09 07:17:37', '2025-05-08 07:23:06', 'ID', '78113', 'Pontianak', 'KB'),
	(37, 34, 'Kelcey', 'Kelcey', 'Ziehms', 'kziehms3@msn.com', '2025-05-09 07:20:17', '2025-05-08 07:24:39', 'ID', '78114', 'Pontianak', 'KB'),
	(38, 39, 'Beryl', 'Beryl', 'Beckinsale', 'bbeckinsale4@vinaora.com', '2025-05-09 07:23:08', '2025-05-08 07:26:33', 'ID', '78115', 'Pontianak', 'KB'),
	(39, 40, 'Rollins', 'Rollins', 'Pascho', 'rpascho5@jigsy.com', '2025-05-09 07:26:15', '2025-05-08 07:28:00', 'ID', '78116', 'Pontianak', 'KB'),
	(40, 42, 'Nada', 'Nada', 'Baudassi', 'nbaudassi6@virginia.edu', '2025-05-09 07:28:54', '2025-05-08 07:29:20', 'ID', '78117', 'Pontianak', 'KB'),
	(41, 44, 'Lorens', 'Lorens', 'McIlvoray', 'lmcilvoray7@eepurl.com', '2025-05-09 07:31:28', '2025-05-08 07:31:00', 'ID', '78118', 'Pontianak', 'KB'),
	(42, 45, 'Hinda', 'Hinda', 'Kemston', 'hkemston8@deviantart.com', '2025-05-09 07:34:08', '2025-05-08 07:33:09', 'ID', '78119', 'Pontianak', 'KB'),
	(43, 46, 'Dinnie', 'Dinnie', 'Tambling', 'dtambling9@over-blog.com', '2025-05-09 07:36:31', '2025-05-08 07:34:32', 'ID', '78110', 'Pontianak', 'KB'),
	(44, 50, 'Omero', 'Omero', 'Bockh', 'obockha@msn.com', '2025-05-09 07:39:27', '2025-05-08 07:35:39', 'ID', '71110', 'Pontianak', 'KB'),
	(45, 52, 'Keefe', 'Keefe', 'Dymott', 'kdymottb@chicagotribune.com', '2025-05-09 07:41:49', '2025-05-08 07:36:43', 'ID', '72110', 'Pontianak', 'KB'),
	(46, 18, 'Ruthi', 'Ruthi', 'Hulse', 'rhulse2c@typepad.com', '2025-05-09 09:27:40', '2025-05-08 07:14:38', 'ID', '40111', 'Jakarta Selatan', 'JK'),
	(47, 20, 'Aliza', 'Aliza', 'Aguilar', 'aaguilar2d@vkontakte.ru', '2025-05-09 09:31:12', '2025-05-08 07:17:40', 'ID', '40222', 'Bandung', 'JB'),
	(48, 22, 'Hebert', 'Hebert', 'Swanborrow', 'hswanborrow2e@weather.com', '2025-05-09 09:34:01', '2025-05-08 07:18:48', 'ID', '40222', 'Bandung', 'JB'),
	(49, 26, 'Catherin', 'Catherin', 'Cothey', 'ccothey2f@smugmug.com', '2025-05-09 09:38:41', '2025-05-08 07:21:06', 'ID', '40111', 'Jakarta Selatan', 'JK'),
	(50, 41, 'Valery', 'Valery', 'Bohills', 'vbohills2g@amazon.com', '2025-05-09 09:48:14', '2025-05-08 07:29:04', 'ID', '40333', 'Pontianak', 'KB'),
	(51, 43, 'Rawley', 'Rawley', 'Engelbrecht', 'rengelbrecht2h@drupal.org', '2025-05-09 09:50:32', '2025-05-08 07:29:55', 'ID', '40666', 'Denpasar', 'BA'),
	(52, 47, 'Noreen', 'Noreen', 'Dealey', 'ndealey2i@odnoklassniki.ru', '2025-05-09 09:53:57', '2025-05-08 07:34:57', 'ID', '40222', 'Bandung', 'JB'),
	(53, 86, 'Kala', 'Kala', 'Ixer', 'kixer1o@senate.gov', '2025-05-09 10:00:25', '2025-05-09 09:17:56', 'ID', '40162', 'Bandung', 'JB'),
	(54, 49, 'Caryl', 'Caryl', 'Zanini', 'czanini2j@berkeley.edu', '2025-05-09 09:55:54', '2025-05-08 07:35:38', 'ID', '40333', 'Pontianak', 'KB'),
	(55, 51, 'Adamo', 'Adamo', 'Allibon', 'aallibon2k@bing.com', '2025-05-09 09:59:00', '2025-05-08 07:36:35', 'ID', '40444', 'Banjarmasin', 'KS'),
	(56, 54, 'Mindy', 'Mindy', 'Ollier', 'mollier2l@sitemeter.com', '2025-05-09 10:01:14', '2025-05-08 07:37:17', 'ID', '41111', 'Manado', 'SA'),
	(57, 56, 'Hettie', 'Hettie', 'Bowkett', 'hbowkett2m@gravatar.com', '2025-05-09 10:02:46', '2025-05-08 07:38:15', 'ID', '41222', 'Bekasi', 'JB'),
	(58, 58, 'Elijah', 'Elijah', 'Da Costa', 'edacosta2n@acquirethisname.com', '2025-05-09 22:59:01', '2025-05-08 07:38:59', 'ID', '78116', 'Pontianak', 'KB'),
	(59, 87, 'Tommi', 'Tommi', 'Andrioli', 'tandrioli1p@google.es', '2025-05-09 10:28:14', '2025-05-09 09:27:47', 'ID', '12110', 'Jakarta Selatan', 'JK'),
	(60, 88, 'Ward', 'Ward', 'Dat', 'wdat1q@home.pl', '2025-05-09 10:33:43', '2025-05-09 09:41:11', 'ID', '55244', 'Yogyakarta', 'YO'),
	(61, 89, 'Gabie', 'Gabie', 'Dyka', 'gdyka1r@columbia.edu', '2025-05-09 10:38:08', '2025-05-09 09:42:00', 'ID', '70122', 'Banjarmasin', 'KS'),
	(62, 90, 'Vaclav', 'Vaclav', 'Wedge', 'vwedge1s@typepad.com', '2025-05-10 00:50:35', '2025-05-09 09:43:03', 'ID', '65111', 'Malang', 'JI'),
	(63, NULL, '', 'Ysabel', 'Grimster', 'ygrimster1h@timesonline.co.uk', '2025-05-09 23:08:47', NULL, 'ID', '123456', 'Samarinda', 'KI'),
	(64, 15, 'Olive', 'Olive', 'O\'Logan', 'oologanc@imgur.com', '2025-05-09 21:02:09', '2025-05-08 07:10:19', 'ID', '78124', 'Kota Pontianak', 'KB'),
	(65, 19, 'Joanie', 'Joanie', 'Mannie', 'jmanniee@google.com.au', '2025-05-09 21:13:21', '2025-05-08 07:17:37', 'ID', '78121', 'Kota Pontianak', 'KB'),
	(66, 25, 'Klarrisa', 'Klarrisa', 'Calender', 'kcalenderf@shinystat.com', '2025-05-09 21:15:20', '2025-05-08 07:21:06', 'ID', '78114', 'Kota Pontianak', 'KB'),
	(67, 48, 'Corrina', 'Corrina', 'Clubb', 'cclubbh@marketwatch.com', '2025-05-09 21:19:47', '2025-05-08 07:35:35', 'ID', '78124', 'Kota Pontianak', 'KB'),
	(68, 53, 'Rodge', 'Rodge', 'Winram', 'rwinrami@cnn.com', '2025-05-09 21:21:20', '2025-05-08 07:37:17', 'ID', '78124', 'Kota Pontianak', 'KB'),
	(69, 55, 'Ronny', 'Ronny', 'Plews', 'rplewsj@paypal.com', '2025-05-09 21:23:03', '2025-05-08 07:38:03', 'ID', '78124', 'Kota Pontianak', 'KB'),
	(70, 57, 'Isis', 'Isis', 'Griss', 'igrissk@addtoany.com', '2025-05-09 21:26:25', '2025-05-08 07:38:49', 'ID', '78121', 'Kota Pontianak', 'KB'),
	(71, 59, 'Rita', 'Rita', 'Crownshaw', 'rcrownshawl@cnet.com', '2025-05-09 21:34:28', '2025-05-08 07:40:11', 'ID', '78124', 'Kota Pontianak', 'KB'),
	(72, 60, 'Maisie', 'Maisie', 'Gobolos', 'mgobolosm@who.int', '2025-05-09 21:42:13', '2025-05-08 07:40:58', 'ID', '78114', 'Kota Pontianak', 'KB'),
	(73, 61, 'Norah', 'Norah', 'Armfield', 'narmfieldn@cyberchimps.com', '2025-05-09 21:44:00', '2025-05-08 08:10:06', 'ID', '78124', 'Kota Pontianak', 'JB'),
	(74, 98, 'Bethina', 'Bethina', 'Muston', 'bmuston2o@altervista.org', '2025-05-09 23:34:46', '2025-05-09 22:45:56', 'ID', '78116', 'Pontianak', 'KB'),
	(75, 99, 'Zelda', 'Zelda', 'Attarge', 'zattarge2p@hostgator.com', '2025-05-09 23:35:39', '2025-05-09 22:47:03', 'ID', '78121', 'Pontianak', 'KB'),
	(76, 100, 'Clarey', 'Clarey', 'Badwick', 'cbadwick2q@ox.ac.uk', '2025-05-09 23:36:48', '2025-05-09 22:47:38', 'ID', '78121', 'Pontianak', 'KB'),
	(77, 101, 'Catarina', 'Catarina', 'Kingsnod', 'ckingsnod2r@cnet.com', '2025-05-09 23:43:32', '2025-05-09 22:48:19', 'ID', '78121', 'Pontianak', 'KB'),
	(78, 102, 'Dacie', 'Dacie', 'Leeman', 'dleeman0@hatena.ne.jp', '2025-05-09 23:45:01', '2025-05-09 22:48:51', 'ID', '78121', 'Pontianak', 'KB'),
	(79, 103, 'Giana', 'Giana', 'Pesterfield', 'gpesterfield1@prlog.org', '2025-05-10 00:10:30', '2025-05-09 22:49:22', 'ID', '78116', 'Pontianak', 'KB'),
	(80, 104, 'Muffin', 'Muffin', 'Endean', 'mendean2@w3.org', '2025-05-10 00:12:41', '2025-05-09 22:49:57', 'ID', '78116', 'Pontianak', 'KB'),
	(81, 105, 'Jasmine', 'Jasmine', 'Abrahamson', 'jabrahamson3@ehow.com', '2025-05-10 00:15:40', '2025-05-09 22:50:35', 'ID', '78124', 'Pontianak', 'KB'),
	(82, 106, 'Jacquelynn', 'Jacquelynn', 'Propper', 'jpropper4@wunderground.com', '2025-05-10 00:17:02', '2025-05-09 22:51:17', 'ID', '78124', 'Pontianak', 'KB'),
	(83, NULL, '', 'Lawey', 'Avivah', 'alawey1f@columbia.edu', '2025-05-09 22:52:13', NULL, 'ID', '123456', 'Medan', 'SS'),
	(84, 107, 'Jaqcuelin', 'Jaqcuelin', 'Klaff', 'jklaff6@phpbb.com', '2025-05-10 00:19:43', '2025-05-09 22:53:44', 'ID', '78124', 'Pontianak', 'KB'),
	(85, NULL, '', 'Amelina', 'Pavluk', 'apavluk1j@posterous.com', '2025-05-09 22:53:17', NULL, 'ID', '123456', 'Medan', 'SS'),
	(86, 108, 'Alixx', 'Alixx', 'Billet', 'abillett5@newsvine.com', '2025-05-10 00:18:16', '2025-05-09 22:54:20', 'ID', '78124', 'Pontianak', 'KB'),
	(87, 109, 'Dephine', 'Dephine', 'Arntzen', 'darntzen7@weibo.com', '2025-05-10 00:20:38', '2025-05-09 22:55:06', 'ID', '78116', 'Pontianak', 'KB'),
	(88, NULL, '', 'Ker', 'O\'Geaney', 'kogeaney1k@guardian.co.uk', '2025-05-09 22:54:19', NULL, 'ID', '123456', 'Palangkaraya', 'KT'),
	(89, NULL, '', 'Debora', 'Carthy', 'dcarthy1l@gmpg.org', '2025-05-09 22:56:19', NULL, 'ID', '123456', 'Palangkaraya', 'KT'),
	(90, NULL, '', 'Benton', 'Farrance', 'krostron1m@ocn.ne.jp', '2025-05-09 22:59:50', NULL, 'ID', '123456', 'Palangkaraya', 'KT'),
	(91, NULL, '', 'Tracee', 'Ashwood', 'tashwood1i@cafepress.com', '2025-05-09 23:01:58', NULL, 'ID', '123456', 'Balikpapan', 'KI'),
	(92, 75, 'Tully', 'Tully', 'Guiraud', 'tguiraud11@dropbox.com', '2025-05-09 23:11:13', '2025-05-08 20:21:39', 'ID', '55161', 'Yogyakarta', 'YO'),
	(93, 76, 'Yolanda', 'Yolanda', 'Ewenson', 'yewenson12@yahoo.co.jp', '2025-05-09 23:14:06', '2025-05-08 20:22:29', 'ID', '55161', 'Yogyakarta', 'YO'),
	(94, NULL, '', 'Budi', 'Ari', 'budiari@gmail.com', '2025-05-09 23:14:50', NULL, 'ID', '123456', 'Gorontalo', 'GO'),
	(95, 77, 'Effie', 'Effie', 'Guillain', 'eguillain13@utexas.edu', '2025-05-09 23:18:13', '2025-05-08 20:23:17', 'ID', '14310', 'Jakarta', 'JK'),
	(96, 78, 'Leupold', 'Leupold', 'Djekovic', 'ldjekovic14@digg.com', '2025-05-09 23:21:33', '2025-05-08 20:23:57', 'ID', '10210', 'Jakarta', 'JK'),
	(97, 79, 'Clyde', 'Clyde', 'Licas', 'clicas15@hostgator.com', '2025-05-09 23:23:31', '2025-05-08 20:24:42', 'ID', '12940', 'Jakarta', 'JK'),
	(98, 80, 'Jacquie', 'Jacquie', 'Cellier', 'jcellier16@twitpic.com', '2025-05-09 23:27:14', '2025-05-08 20:25:24', 'ID', '57661', 'Solo', 'JT'),
	(99, 81, 'Carita', 'Carita', 'Eastmead', 'ceastmead17@ft.com', '2025-05-09 23:29:50', '2025-05-08 20:26:07', 'ID', '56152', 'Magelang', 'JT'),
	(100, 82, 'Libbey', 'Libbey', 'Windus', 'lwindus18@aboutads.info', '2025-05-09 23:31:48', '2025-05-08 20:26:52', 'ID', '51652', 'Magelang', 'JT'),
	(101, 83, 'Clarette', 'Clarette', 'Siddaley', 'csiddaley19@sitemeter.com', '2025-05-09 23:34:45', '2025-05-08 20:27:37', 'ID', '20111', 'Medan', 'SU'),
	(102, 84, 'Thekla', 'Thekla', 'Sherrock', 'tsherrock1a@friendfeed.com', '2025-05-09 23:36:37', '2025-05-08 20:28:16', 'ID', '20214', 'Medan', 'SU'),
	(103, 85, 'Simone', 'Simone', 'Stormes', 'sstormes1b@linkedin.com', '2025-05-09 23:38:55', '2025-05-08 20:29:04', 'ID', '20411', 'Medan', 'SU'),
	(104, 91, 'Berkeley', 'Berkeley', 'Arnholdt', 'barnholdt1t@un.org', '2025-05-10 00:54:18', '2025-05-09 09:44:04', 'ID', '20112', 'Medan', 'SU'),
	(105, 92, 'Malva', 'Malva', 'Anger', 'manger1u@blog.com', '2025-05-10 00:56:18', '2025-05-09 09:44:56', 'ID', '85111', 'Kupang', 'NT'),
	(106, 93, 'Harcourt', 'Harcourt', 'Clayson', 'hclayson1v@yahoo.com', '2025-05-10 01:01:50', '2025-05-09 09:46:34', 'ID', '80113', 'Denpasar', 'BA'),
	(107, 94, 'Morgana', 'Morgana', 'Randal', 'mrandal1w@latimes.com', '2025-05-10 01:08:08', '2025-05-09 09:47:20', 'ID', '30111', 'Palembang', 'SS'),
	(108, 95, 'Alix', 'Alix', 'Kirkup', 'akirkup1x@parallels.com', '2025-05-10 01:10:36', '2025-05-09 09:48:10', 'ID', '90111', 'Makassar', 'SS'),
	(109, 96, 'Blythe', 'Blythe', 'Aspinal', 'baspinal1y@fc2.com', '2025-05-10 01:13:52', '2025-05-09 09:48:59', 'ID', '29213', 'Indragiri Hilir', 'RI');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
