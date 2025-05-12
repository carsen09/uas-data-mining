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

-- membuang struktur untuk table datamini_wpdb.wpkr_wc_category_lookup
CREATE TABLE IF NOT EXISTS `wpkr_wc_category_lookup` (
  `category_tree_id` bigint(20) unsigned NOT NULL,
  `category_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`category_tree_id`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Membuang data untuk tabel datamini_wpdb.wpkr_wc_category_lookup: ~33 rows (lebih kurang)
INSERT INTO `wpkr_wc_category_lookup` (`category_tree_id`, `category_id`) VALUES
	(16, 16),
	(23, 23),
	(23, 24),
	(23, 27),
	(23, 37),
	(23, 38),
	(23, 43),
	(23, 44),
	(23, 45),
	(23, 46),
	(23, 49),
	(24, 24),
	(24, 45),
	(26, 26),
	(27, 27),
	(27, 49),
	(33, 33),
	(34, 34),
	(37, 37),
	(37, 38),
	(37, 43),
	(37, 44),
	(38, 38),
	(39, 39),
	(40, 40),
	(41, 41),
	(42, 42),
	(43, 43),
	(44, 44),
	(45, 45),
	(46, 46),
	(47, 47),
	(49, 49);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
