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

-- membuang struktur untuk table datamini_wpdb.wpkr_users
CREATE TABLE IF NOT EXISTS `wpkr_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Membuang data untuk tabel datamini_wpdb.wpkr_users: ~105 rows (lebih kurang)
INSERT INTO `wpkr_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
	(1, 'admin', '$wp$2y$10$t1mA9OnJMEIAKgKVA4pI2eakFIaor.ZH.V3ehrp0yVRJacp6Ywbj6', 'admin', 'admin@datamininguntan.my.id', 'https://datamininguntan.my.id', '2025-05-05 08:15:24', '', 0, 'admin'),
	(2, 'admin2', '$wp$2y$10$d1DCB7aaTD3dx9g6JkCcFuRXs2Wxl60e13t6PFgkVczk6q6ruguBq', 'admin2', 'admin2@gmail.com', '', '2025-05-07 08:05:24', '', 0, 'admin two'),
	(3, 'admin3', '$wp$2y$10$.qSlXVOng8kS1a6f84z0wOuVViOgmu0XdSw4qIdOGqcnEICP3QhfG', 'admin3', 'admin3@gmail.com', '', '2025-05-07 08:52:45', '', 0, 'admin three'),
	(4, 'admin4', '$wp$2y$10$s88tiNAvidrAZ74PiwL4ZeTaWyDFHbqLUAITsxjigNNvOOGPJfzG2', 'admin4', 'admin4@gmail.com', '', '2025-05-07 08:55:24', '', 0, 'admin four'),
	(5, 'admin5', '$wp$2y$10$LKXKLxTNMnfsLmT9kfcWJO1UnoVR1x34pC55ve7i81aNHQ5yRFr2m', 'admin5', 'admin5@gmail.com', '', '2025-05-07 09:00:11', '', 0, 'admin five'),
	(6, 'admin6', '$wp$2y$10$5b.qnJv3tctm2lZDgxk5DuLqykdg5UH7VpOfXTN0aUEgOOGeAQyZK', 'admin6', 'admin6@gmail.com', '', '2025-05-07 09:01:45', '', 0, 'admin six'),
	(7, 'admin7', '$wp$2y$10$p3kGSzvgddLtpGwu2oFRkOkCSHbmI3.y0F1fI16TjnTucQAsBWhfO', 'admin7', 'admin7@gmail.com', '', '2025-05-07 09:16:08', '', 0, 'admin seven'),
	(8, 'admin8', '$wp$2y$10$XwvhgoJ2oY7G6kYmLOjhfe18AgxhYbA9ozN1LG2jiOtLsVDqnnWAa', 'admin8', 'admin8@gmail.com', '', '2025-05-07 09:38:12', '', 0, 'admin eight'),
	(9, 'admin9', '$wp$2y$10$4GfMNPmYup7BfRyL1GFYw.nCPHTs0HNh25D9RWDEpNdBjBoKM5cPi', 'admin9', 'admin9@gmail.com', '', '2025-05-07 10:15:22', '', 0, 'admin nine'),
	(14, 'Davine', '$wp$2y$10$skch8YUxZoSb9JZB839fEO8YIvybgIwe21oWrKE0xZKhmuDu7j9ve', 'davine', 'dgrindley20@usatoday.com', '', '2025-05-08 14:08:04', '', 0, 'Davine Grindley'),
	(15, 'Olive', '$wp$2y$10$NBa7yq.Zprydb40ERjR2XOXXgNE7RBs2Auv.pkhczaOZ2T/ArlmiG', 'olive', 'oologanc@imgur.com', 'http://-', '2025-05-08 14:10:19', '', 0, 'Olive O\'Logan'),
	(16, 'Natividad', '$wp$2y$10$1Qw4kW5mTe7NuwIhstikP.B/w4WOmUcAA8f7i0s1sd0V.n8wjO7li', 'natividad', 'ncloake21@sakura.ne.jp', '', '2025-05-08 14:13:25', '', 0, 'Natividad Cloake'),
	(17, 'Fernandina', '$wp$2y$10$axLwhSx9wmWXVz3BoZdR5ODweaQM3BPwJJeWe2amsNMvka5ohCNWW', 'fernandina', 'faffusod@twitter.com', 'http://-', '2025-05-08 14:14:20', '', 0, 'Fernandina Affuso'),
	(18, 'Ruthi', '$wp$2y$10$h9.Q/39JqFH/c3XuOxiULOQTgFNpvWvdZBdCRS5u13T758Spnb6QC', 'ruthi', 'rhulse2c@typepad.com', 'http://-', '2025-05-08 14:14:38', '', 0, 'Ruthi Hulse'),
	(19, 'Joanie', '$wp$2y$10$zopnM5oI72Xt7hPdAFdqM.TezUIMF77DRE0.qIweixShGabUs79TC', 'joanie', 'jmanniee@google.com.au', 'http://-', '2025-05-08 14:17:37', '', 0, 'Joanie Mannie'),
	(20, 'Aliza', '$wp$2y$10$faIjqQM9qPdV0EKMB60iDedmiUBP7i42cHXMEKSZMljSIHStcRKiK', 'aliza', 'aaguilar2d@vkontakte.ru', 'http://-', '2025-05-08 14:17:40', '', 0, 'Aliza Aguilar'),
	(21, 'Skelly', '$wp$2y$10$XBXK1M82TwwcLYqpkOG6geFsClb54fPZcgvZvjPJRwQ.oveJOgT8W', 'skelly', 'sgallegos22@godaddy.com', '', '2025-05-08 14:17:44', '', 0, 'Skelly Gallegos'),
	(22, 'Hebert', '$wp$2y$10$.9gvIiQAUnXp1c7A4uAPkuzYLp7Br4g/o2dzkI6DYJfM3BYp5rHQy', 'hebert', 'hswanborrow2e@weather.com', 'http://-', '2025-05-08 14:18:48', '', 0, 'Hebert Swanborrow'),
	(23, 'Werner', '$wp$2y$10$bjUL3qX69PKCVuxX5Z7CD.FJvUYEAzED.Zqj/95iqb0zOu61P2QZy', 'werner', 'wbuchanan0@reference.com', 'http://-', '2025-05-08 14:19:48', '', 0, 'Werner Buchanan'),
	(24, 'Randi', '$wp$2y$10$T6IguCGCK07qcbF2PrgXt.SeNCxMdkYNHzSYJMcVXV7sHIT4Fe69S', 'randi', 'rwhatham23@ted.com', '', '2025-05-08 14:20:23', '', 0, 'Randi Whatham'),
	(25, 'Klarrisa', '$wp$2y$10$8RkpWVOruDS/5VVPtjzEK.ecv7avEXUDxZnS7tBEt4uIB2GDsuqaS', 'klarrisa', 'kcalenderf@shinystat.com', 'http://-', '2025-05-08 14:21:06', '', 0, 'Klarrisa Calender'),
	(26, 'Catherin', '$wp$2y$10$KOTdAPuJVGHKvswxenpk/Oc7LfZchYqUhzIMPBYcOhoUCmif7N1aq', 'catherin', 'ccothey2f@smugmug.com', 'http://-', '2025-05-08 14:21:06', '', 0, 'Catherin Cothey'),
	(27, 'Swen', '$wp$2y$10$vS2c/BcB2ykhtESeW8MMcOMmoo4LtL8ehh0.gVXLY4eGrmQSDcggS', 'swen', 'swittman24@aol.com', '', '2025-05-08 14:21:09', '', 0, 'Swen Wittman'),
	(28, 'Abagael', '$wp$2y$10$nURDP83AD2y5EiRJVnchdO9XIoeZIMacA.oDyAt3dURnSTzRIa9r6', 'abagael', 'acockin1@noaa.gov', 'http://-', '2025-05-08 14:21:23', '', 0, 'Abagael Cockin'),
	(29, 'Ambrosius', '$wp$2y$10$FWSMkmA2OG33taxax9d87.bbiT/lpluVjPDhK.vdlvw6DnXH6dd8e', 'ambrosius', 'abeall25@mtv.com', '', '2025-05-08 14:22:02', '', 0, 'Ambrosius Beall'),
	(30, 'Liza', '$wp$2y$10$xert5zG5k4SqIqUW7At4ru/QFp0t0nwo40AXAvO5loluMA5/oU95y', 'liza', 'lgambell26@nih.gov', '', '2025-05-08 14:22:42', '', 0, 'Liza Gambell'),
	(31, 'Rozanna', '$wp$2y$10$7XsMbfDeJCMHwG8DBh3w...6OqyP8wjZ2cSQDpA.cfdi4Be0KiVTm', 'rozanna', 'rleng2@accuweather.com', 'http://-', '2025-05-08 14:23:06', '', 0, 'Rozanna Leng'),
	(32, 'Danyelle', '$wp$2y$10$NZA5IFAeTc5I2DI.fnGJXu5K/AGDi/vkjjk4qEjy3pbJLOqh.SXBC', 'danyelle', 'dbrideaux27@mit.edu', '', '2025-05-08 14:23:55', '', 0, 'Danyelle Brideaux'),
	(33, 'Stillman', '$wp$2y$10$ACpl.gFMAuhDt7DGKiM0j.fjmSvmFMdbPnyG.x6iRE9TF4kO6ILG2', 'stillman', 'sschapiro28@amazon.com', '', '2025-05-08 14:24:35', '', 0, 'Stillman Schapiro'),
	(34, 'Kelcey', '$wp$2y$10$L6Yea3BvvypOrjA9TCpfz.OMw7LiV2C/uMwB80ifX76bry7qeXVi2', 'kelcey', 'kziehms3@msn.com', 'http://-', '2025-05-08 14:24:39', '', 0, 'Kelcey Ziehms'),
	(35, 'Brandise', '$wp$2y$10$h0ZrtpdLZv3pOzJf/ii4B.Xodi9tSZNatP.zR69Ai8BEnrjXceD4K', 'brandise', 'bochterlony29@amazon.com', '', '2025-05-08 14:25:10', '', 0, 'Brandise Ochterlony'),
	(36, 'Fairlie', '$wp$2y$10$F3YVOGyBgNu634WLJyt59.KJGtHbIpPmA2Vu27mIZIANJgbPBx5zu', 'fairlie', 'fpreshawg@china.com.cn', 'http://-', '2025-05-08 14:25:33', '', 0, 'Fairlie Preshaw'),
	(37, 'Cornelius', '$wp$2y$10$SbfFc99FAbEqyXxB2qk/VulQmfekU1iznGcG270zvTYzAhFEbXLiC', 'cornelius', 'curvoy2a@ezinearticles.com', '', '2025-05-08 14:25:47', '', 0, 'Cornelius Urvoy'),
	(38, 'Vere', '$wp$2y$10$vQAbwb0sMhwLgDOBQ1FNZ.Xnef4OJ/aGtjh/EArrfYf0ZXGZwGX2.', 'vere', 'vprozescky2b@toplist.cz', '', '2025-05-08 14:26:22', '', 0, 'Vere Prozescky'),
	(39, 'Beryl', '$wp$2y$10$.cBQoljIehAu1GtDNmqJBOeVyXf4VoTpjskbUTuSrl.L9.gasGUTO', 'beryl', 'bbeckinsale4@vinaora.com', 'http://-', '2025-05-08 14:26:33', '', 0, 'Beryl Beckinsale'),
	(40, 'Rollins', '$wp$2y$10$jN0WEEFGNE/okC6aETk9m.lLM8H4ttva7UnfjXSXEsOEutk9sgFca', 'rollins', 'rpascho5@jigsy.com', 'http://-', '2025-05-08 14:28:00', '', 0, 'Rollins Pascho'),
	(41, 'Valery', '$wp$2y$10$rSlvcSo0tflFPI3dmkoXmOkAwWz1AJcsoI3U.c3R.IzW3Vs3v6ewC', 'valery', 'vbohills2g@amazon.com', 'http://-', '2025-05-08 14:29:04', '', 0, 'Valery Bohills'),
	(42, 'Nada', '$wp$2y$10$Jd1eVEQXAT29stsD2BgjYesIvw.o6.jjzTN2mnoWrER5rpngiJi7q', 'nada', 'nbaudassi6@virginia.edu', 'http://-', '2025-05-08 14:29:20', '', 0, 'Nada Baudassi'),
	(43, 'Rawley', '$wp$2y$10$iTu8xgnp3zsQVIoSq8RYBu/yP62YE4nztAxnzxrNHhkzYD8ZtzGeK', 'rawley', 'rengelbrecht2h@drupal.org', 'http://-', '2025-05-08 14:29:55', '', 0, 'Rawley Engelbrecht'),
	(44, 'Lorens', '$wp$2y$10$QNxemQ4QoG6h0i3S1q0p4Ox9I1tkwYUl2L4M8vZ4z5TXZrz7lrGSq', 'lorens', 'lmcilvoray7@eepurl.com', 'http://-', '2025-05-08 14:31:00', '', 0, 'Lorens McIlvoray'),
	(45, 'Hinda', '$wp$2y$10$kM5CDTPNxQfTa1Lc.q4k.u3NdTHzt0o1XJgZ13oM13OhpHg52IAc2', 'hinda', 'hkemston8@deviantart.com', 'http://-', '2025-05-08 14:33:09', '', 0, 'Hinda Kemston'),
	(46, 'Dinnie', '$wp$2y$10$U6ex1SLTztAwtB6YjcxoOOBTqRZCUjXPBmIS8KDW1sQdHtlQlkmdm', 'dinnie', 'dtambling9@over-blog.com', 'http://-', '2025-05-08 14:34:32', '', 0, 'Dinnie Tambling'),
	(47, 'Noreen', '$wp$2y$10$498DJ.Uhwmh4JslDffxYV.7rv6xuTvInzf4mj9R1bmb0GXstKxfXu', 'noreen', 'ndealey2i@odnoklassniki.ru', 'http://-', '2025-05-08 14:34:57', '', 0, 'Noreen Dealey'),
	(48, 'Corrina', '$wp$2y$10$L3Y.LAXkvnLm/y9i.t/IB./4ua08ZeVrzSqa3HMyz.Py2rOILeo6i', 'corrina', 'cclubbh@marketwatch.com', 'http://-', '2025-05-08 14:35:35', '', 0, 'Corrina Clubb'),
	(49, 'Caryl', '$wp$2y$10$oNrL0/6Y7RAtRfe408ck9uF3DRjtLjZ6Lefkq6k8RPhAE1RbpfvWG', 'caryl', 'czanini2j@berkeley.edu', 'http://-', '2025-05-08 14:35:38', '', 0, 'Caryl Zanini'),
	(50, 'Omero', '$wp$2y$10$ZOytsmdnGoMggfO15.KhA.n2TR19sVv7Aqim0o2tKDmU70lTRWGES', 'omero', 'obockha@msn.com', 'http://-', '2025-05-08 14:35:39', '', 0, 'Omero Bockh'),
	(51, 'Adamo', '$wp$2y$10$gf.xh2aOCuRP2TSDJnZVIensu68MS4ZYEj3bO4i0/5TsgdiZijLnC', 'adamo', 'aallibon2k@bing.com', 'http://-', '2025-05-08 14:36:35', '', 0, 'Adamo Allibon'),
	(52, 'Keefe', '$wp$2y$10$5qveUH4O4fIxm7G9vVsLvOHax9z3JBvmT7./VAt7KNJfGB1FEy5AK', 'keefe', 'kdymottb@chicagotribune.com', 'http://-', '2025-05-08 14:36:43', '', 0, 'Keefe Dymott'),
	(53, 'Rodge', '$wp$2y$10$aP1uej/5/sNSMxDV31ZwUOM.xWXciPOgWGv3YlUwGdNCj87PvJFjO', 'rodge', 'rwinrami@cnn.com', 'http://-', '2025-05-08 14:37:17', '', 0, 'Rodge Winram'),
	(54, 'Mindy', '$wp$2y$10$a2fqCGRAjpzkZ93Mmb5VeuwE.n8Ved5aRhFqEn9rww.qSqyv2egxO', 'mindy', 'mollier2l@sitemeter.com', 'http://-', '2025-05-08 14:37:17', '', 0, 'Mindy Ollier'),
	(55, 'Ronny', '$wp$2y$10$/lRQpnXmSv5NK.GGS.DggOvjLx1MUiI9qQ3X4KbpPgKZrOjJUWkRe', 'ronny', 'rplewsj@paypal.com', 'http://-', '2025-05-08 14:38:03', '', 0, 'Ronny Plews'),
	(56, 'Hettie', '$wp$2y$10$At3CVb/aGCoTDIwfciFfyuRw6kKdjdz3zqnnIvYfJMAiRqHRrwB3u', 'hettie', 'hbowkett2m@gravatar.com', 'http://-', '2025-05-08 14:38:15', '', 0, 'Hettie Bowkett'),
	(57, 'Isis', '$wp$2y$10$wnlFvWykkKxRChXxKEt5buVPiDG.O1CGsuSru1Q176Wq7Qp5/QbS2', 'isis', 'igrissk@addtoany.com', 'http://-', '2025-05-08 14:38:49', '', 0, 'Isis Griss'),
	(58, 'Elijah', '$wp$2y$10$g8WP/jN7qoond2k7psfMPO1mgH.VRN6UDZs/DblX6LXIDiGejXQ.K', 'elijah', 'edacosta2n@acquirethisname.com', 'http://-', '2025-05-08 14:38:59', '', 0, 'Elijah Da Costa'),
	(59, 'Rita', '$wp$2y$10$Qcp0hcnr7X.cBGjKTggJ1eBOPgUE5qviDAQx4WHrIooAUH9.eMn9u', 'rita', 'rcrownshawl@cnet.com', 'http://-', '2025-05-08 14:40:11', '', 0, 'Rita Crownshaw'),
	(60, 'Maisie', '$wp$2y$10$vvqaCbuQVe3G4BOBr900H..nHentd0FKt3Ud.KN0MekYi/R5e7uUG', 'maisie', 'mgobolosm@who.int', 'http://-', '2025-05-08 14:40:58', '', 0, 'Maisie Gobolos'),
	(61, 'Norah', '$wp$2y$10$ENYbWv/kl6ZC4of.gBPC5.JWziFHjSps0gW2gYJ4nKVET5EMpqShG', 'norah', 'narmfieldn@cyberchimps.com', 'http://-', '2025-05-08 15:10:06', '', 0, 'Norah Armfield'),
	(62, 'Marlene', '$wp$2y$10$fs.P7K76J3w1ieFjUAWKbOqNu.kOsVkFAXfgpDFHsuVZcluzjhCT.', 'marlene', 'mgreallyo@quantcast.com', '', '2025-05-08 22:34:32', '', 0, 'Marlene Greally'),
	(63, 'Eberto', '$wp$2y$10$ycAcz1nn3.NF7Iv8q8XDreCwWuO82r2ZG65/sZMIhNrS6kz.OD3vi', 'eberto', 'enernp@weibo.com', '', '2025-05-08 22:38:14', '', 0, 'Eberto Nern'),
	(64, 'Roma', '$wp$2y$10$LlqCJdDCm77FJv0yz5SytOQL/GoZtDYIa05aSRwc.PkPWdirbC1Ca', 'roma', 'rlangfatq@istockphoto.com', '', '2025-05-08 22:39:00', '', 0, 'Roma Langfat'),
	(65, 'Alexandros', '$wp$2y$10$ElfCQQDKvFEheepMCcHMaOaj/hZLgn34JgdNx6SDfXYWC5k5iT/iq', 'alexandros', 'akorneichikr@quantcast.com', '', '2025-05-08 22:40:47', '', 0, 'Alexandros Korneichik'),
	(66, 'Giuseppe', '$wp$2y$10$n0X2QwXNQeNn21AD/Hkd1.ynaZVhWHZRcc1U2XByIkJMWjXqu4jX2', 'giuseppe', 'ggerards@instagram.com', '', '2025-05-08 22:41:31', '', 0, 'Giuseppe Gerard'),
	(67, 'Angelique', '$wp$2y$10$NVm0NiaACZHeqL1j/QfeHuwRX5Pj3TqUhq/kJesKPIHnvohITq0xu', 'angelique', 'abrosiust@sun.com', '', '2025-05-08 22:42:25', '', 0, 'Angelique Brosius'),
	(68, 'Jessy', '$wp$2y$10$g61OfcrKrUqDV3IjnNzRSe7bbTK3UdgYiGuh1WLtNcXnYMX0PYkCW', 'jessy', 'jdebellu@nationalgeographic.com', '', '2025-05-08 22:43:22', '', 0, 'Jessy De Bell'),
	(69, 'Lenna', '$wp$2y$10$wYxR2g737hWhY7KsZQ92a.ntpKzatD2cnv8dZt06WtS.qgdADyQRi', 'lenna', 'lseagrovev@usa.gov', '', '2025-05-08 22:44:49', '', 0, 'Lenna Seagrove'),
	(70, 'Estelle', '$wp$2y$10$4ZVpV2AsPQzAkIi7yR51wenpi1hioRdxtraUBp4hZFSggWxZl8Q7O', 'estelle', 'epieroniw@blogs.com', '', '2025-05-08 22:45:21', '', 0, 'Estelle Pieroni'),
	(71, 'Nady', '$wp$2y$10$b3ML1pbifIiZsvO0AEIWp.lT3jRblmjm.9sOIZ2tvMjaRhLC8mmAS', 'nady', 'nveelx@123-reg.co.uk', '', '2025-05-08 22:46:33', '', 0, 'Nady Veel'),
	(72, 'Dimitry', '$wp$2y$10$sg98BS19AqrCdVFZxIU1Rut8enyBVdyExTmiYjMhDlUQbLSaCteU2', 'dimitry', 'dfassety@unicef.org', '', '2025-05-08 22:47:05', '', 0, 'Dimitry Fasset'),
	(73, 'Susann', '$wp$2y$10$gI2DRguvaj6t/SVZ4Fi9xOdFv.ENzt86o0kkBKZC4rkgnCSOS181C', 'susann', 'slangtryz@indiegogo.com', '', '2025-05-08 22:47:41', '', 0, 'Susann Langtry'),
	(74, 'Tobiah', '$wp$2y$10$QaOxHs5eDuumL9pvUcX6VOE47kCGuQZ7IvP4Ykx5zMKmnS3/EmBtW', 'tobiah', 'tloyd10@sogou.com', '', '2025-05-09 03:19:28', '', 0, 'Tobiah Loyd'),
	(75, 'Tully', '$wp$2y$10$/F7VeR2I73CbuI2xcShMauSjpTUCVEOr2c34EQ4QlOua3FznctYD6', 'tully', 'tguiraud11@dropbox.com', '', '2025-05-09 03:21:39', '', 0, 'Tully Guiraud'),
	(76, 'Yolanda', '$wp$2y$10$qJBnIGTaoj96Jw6cAmhniuUkftlVW1tp05cHDr6f0VklEgpqNyYPC', 'yolanda', 'yewenson12@yahoo.co.jp', '', '2025-05-09 03:22:29', '', 0, 'Yolanda Ewenson'),
	(77, 'Effie', '$wp$2y$10$Er7TyjMSbjvMmCGHn9Q6i.Ncaf/H3OwUCKhoGsofXYDqz1.cXm6mu', 'effie', 'eguillain13@utexas.edu', '', '2025-05-09 03:23:17', '', 0, 'Effie Guillain'),
	(78, 'Leupold', '$wp$2y$10$vjKFoRzruG117Fu7FAcYtub3qtKmGESuvb2EUPyv5SM3PtjZpgA7e', 'leupold', 'ldjekovic14@digg.com', '', '2025-05-09 03:23:57', '', 0, 'Leupold Djekovic'),
	(79, 'Clyde', '$wp$2y$10$alxW8CPxrtW0Kf5eC1HmyuvYF.NjYBhurKB8zAznfOiSn3qYMHKDe', 'clyde', 'clicas15@hostgator.com', '', '2025-05-09 03:24:42', '', 0, 'Clyde Licas'),
	(80, 'Jacquie', '$wp$2y$10$TLOrdHG2d3PaBGmkyzUkNOH7ZOiBZfcZNXIZ2pPFcnLqxZ6J0eCtW', 'jacquie', 'jcellier16@twitpic.com', '', '2025-05-09 03:25:24', '', 0, 'Jacquie Cellier'),
	(81, 'Carita', '$wp$2y$10$0bAjUDRuO1d3Su2rOvS70uRDsbkif4gjx9NNryLk6Lf2ahS8FW.na', 'carita', 'ceastmead17@ft.com', '', '2025-05-09 03:26:07', '', 0, 'Carita Eastmead'),
	(82, 'Libbey', '$wp$2y$10$0F8MUfInyx/R4nOxocFaEepJgcGo6oiyRZQoO4K5M9XeBsi6SZ77W', 'libbey', 'lwindus18@aboutads.info', '', '2025-05-09 03:26:52', '', 0, 'Libbey Windus'),
	(83, 'Clarette', '$wp$2y$10$OIPwhwK3Sm.uwjjnqjlW1eiA.2ecUlKoFt8mZad6S9DdJh9/naT9C', 'clarette', 'csiddaley19@sitemeter.com', '', '2025-05-09 03:27:37', '', 0, 'Clarette Siddaley'),
	(84, 'Thekla', '$wp$2y$10$rVTvU8etTqXdUz42HYg6yeekycWDWZjGz.WSPCzOHGNQm4xv/dK7W', 'thekla', 'tsherrock1a@friendfeed.com', '', '2025-05-09 03:28:16', '', 0, 'Thekla Sherrock'),
	(85, 'Simone', '$wp$2y$10$jALiIc.6H9xa0oC.rbEEWeqgrkGriMQe6Uq1UZmbFDRM9QJBg6WB.', 'simone', 'sstormes1b@linkedin.com', '', '2025-05-09 03:29:04', '', 0, 'Simone Stormes'),
	(86, 'Kala', '$wp$2y$10$pFEDE9Zb4o30ArRyqPSRY.QeXP1UW9G20CJ5YiPiMX6pilZio279S', 'kala', 'kixer1o@senate.gov', 'http://-', '2025-05-09 16:17:56', '', 0, 'Kala Ixer'),
	(87, 'Tommi', '$wp$2y$10$cEuOiW2uCRpHypigqKrb4O4yrwnzIgvdZxnj8RDG/KJPSC4qKNju.', 'tommi', 'tandrioli1p@google.es', 'http://-', '2025-05-09 16:27:47', '', 0, 'Tommi Andrioli'),
	(88, 'Ward', '$wp$2y$10$4IzEbTmGIxOT5srH/PIBlOnno9pOl50lZawJQufQQdZ37zOgN2vYe', 'ward', 'wdat1q@home.pl', 'http://-', '2025-05-09 16:41:11', '', 0, 'Ward Dat'),
	(89, 'Gabie', '$wp$2y$10$gl8YLj7gvbstHeswdK1S7eI7WSuXVpCrjCWrCFmAlxdbtbZj./oTW', 'gabie', 'gdyka1r@columbia.edu', 'http://-', '2025-05-09 16:42:00', '', 0, 'Gabie Dyka'),
	(90, 'Vaclav', '$wp$2y$10$huZD6ZNK3G7Xm1xW/V/ESerPkXl1Saqum4kLuFOJhrYci8.oYg8Ey', 'vaclav', 'vwedge1s@typepad.com', 'http://-', '2025-05-09 16:43:03', '', 0, 'Vaclav Wedge'),
	(91, 'Berkeley', '$wp$2y$10$vDuHwSstCNznbM6oBbDFfOLcDby9As4..XkZkqnmRBQNPbZRQoMrq', 'berkeley', 'barnholdt1t@un.org', 'http://-', '2025-05-09 16:44:04', '', 0, 'Berkeley Arnholdt'),
	(92, 'Malva', '$wp$2y$10$SYEZ379/nqBjXyapy8mwQO4YeZWC6jFwlivKWeM3Adymxly0.sYS6', 'malva', 'manger1u@blog.com', 'http://-', '2025-05-09 16:44:56', '', 0, 'Malva Anger'),
	(93, 'Harcourt', '$wp$2y$10$wL//flILIBVhQfULg.gQP.Rpq9SLlqHt5aHcdjam8JF4Y/Guc0pPq', 'harcourt', 'hclayson1v@yahoo.com', 'http://-', '2025-05-09 16:46:34', '', 0, 'Harcourt Clayson'),
	(94, 'Morgana', '$wp$2y$10$16Fc4U6mGpz7brhL3zzDEuTNGKxsp3n8gz.8L9cHBpzsZtVgzPf8q', 'morgana', 'mrandal1w@latimes.com', 'http://-', '2025-05-09 16:47:20', '', 0, 'Morgana Randal'),
	(95, 'Alix', '$wp$2y$10$cbKYrn7sOzo0RZQHgL8xN..Jk8KVSZwIy/mMTaiGuR3EWX8obhXBK', 'alix', 'akirkup1x@parallels.com', 'http://-', '2025-05-09 16:48:10', '', 0, 'Alix Kirkup'),
	(96, 'Blythe', '$wp$2y$10$lLKlRRaDzkxJ/p4AbnwhVen2HdaNSPAA7lsyde6MuxPeJMgQQjuKO', 'blythe', 'baspinal1y@fc2.com', 'http://-', '2025-05-09 16:48:59', '', 0, 'Blythe Aspinal'),
	(97, 'Claresta', '$wp$2y$10$R28suwO5VfEkc2me9.n7/Oxl04JiACvsjWn3gADLZez2DvLyXsQOW', 'claresta', 'calway1z@wix.com', 'http://-', '2025-05-09 16:49:44', '', 0, 'Claresta Alway'),
	(98, 'Bethina', '$wp$2y$10$m7nAagx8v15yh0JMTkm5tevPBBLaMntMuOnqSFKBlI3chHgb3BkY6', 'bethina', 'bmuston2o@altervista.org', 'http://-', '2025-05-10 05:45:56', '', 0, 'Bethina Muston'),
	(99, 'Zelda', '$wp$2y$10$W52Eyl5cvNHJFvGM9kmXLO0gCTslNlCzC13c4g5Lsm/.NnPysJv9u', 'zelda', 'zattarge2p@hostgator.com', 'http://-', '2025-05-10 05:47:03', '', 0, 'Zelda Attarge'),
	(100, 'Clarey', '$wp$2y$10$kz2G4WSfoJKXISKQU.3Jy.YMQ7Ushm8PGuRj0mFBIXS6Mfwrn65g6', 'clarey', 'cbadwick2q@ox.ac.uk', 'http://-', '2025-05-10 05:47:38', '', 0, 'Clarey Badwick'),
	(101, 'Catarina', '$wp$2y$10$L3oFpk3189wwEeeHe9jFK.DLkb557uskTzTqZgRZZwHmj0Xa3.bNa', 'catarina', 'ckingsnod2r@cnet.com', 'http://-', '2025-05-10 05:48:19', '', 0, 'Catarina Kingsnod'),
	(102, 'Dacie', '$wp$2y$10$IP68ckxPcKS/RkAM11Yy9uOr49vyiBlYYNyzxTv3swyag1x7o7Xdu', 'dacie', 'dleeman0@hatena.ne.jp', 'http://-', '2025-05-10 05:48:51', '', 0, 'Dacie Leeman'),
	(103, 'Giana', '$wp$2y$10$CBau4eZ33U.XjIxP.CKySOezIfD1tXzQrx1j5BmfxXeyF//d16zWO', 'giana', 'gpesterfield1@prlog.org', 'http://-', '2025-05-10 05:49:22', '', 0, 'Giana Pesterfield'),
	(104, 'Muffin', '$wp$2y$10$yBWe.hBzlsqOBsioZVB44u4eZClOOssgfWGNanvRPsC.eHwkJ3XHa', 'muffin', 'mendean2@w3.org', 'http://-', '2025-05-10 05:49:57', '', 0, 'Muffin Endean'),
	(105, 'Jasmine', '$wp$2y$10$NzhyN7QDl6dJvyO5k.uoqeYQaSiSVHe8F2sgdee2WODPNB0aeDNuu', 'jasmine', 'jabrahamson3@ehow.com', 'http://-', '2025-05-10 05:50:35', '', 0, 'Jasmine Abrahamson'),
	(106, 'Jacquelynn', '$wp$2y$10$NbToAiZWKEP9qr/fO4eEael6LfILOG2deMir9uhetLUTBx2aYzqai', 'jacquelynn', 'jpropper4@wunderground.com', 'http://-', '2025-05-10 05:51:17', '', 0, 'Jacquelynn Propper'),
	(107, 'Jaqcuelin', '$wp$2y$10$IJgieh1gSWI2Cm76tFYV7O97HCDOf0oCX5q9.x7LmbbD3mwXumN3C', 'jaqcuelin', 'jklaff6@phpbb.com', 'http://-', '2025-05-10 05:53:44', '', 0, 'Jaqcuelin Klaff'),
	(108, 'Alixx', '$wp$2y$10$r3raVz3UCTC.llUFZr4BS.bpxQbil4RJFv.5KYtrtmqkeq6MZtOQe', 'alixx', 'abillett5@newsvine.com', 'http://-', '2025-05-10 05:54:20', '', 0, 'Alixx Billet'),
	(109, 'Dephine', '$wp$2y$10$xNVkXC1p2rybgHxhu9gWMezj9jaAOBf/O1h2MhvcheMVJmq5deU4C', 'dephine', 'darntzen7@weibo.com', 'http://-', '2025-05-10 05:55:06', '', 0, 'Dephine Arntzen');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
