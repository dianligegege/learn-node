# ************************************************************
# Sequel Pro SQL dump
# Version 5438
#
# https://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 8.0.15)
# Database: highlight
# Generation Time: 2021-06-02 08:11:49 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table video
# ------------------------------------------------------------

DROP TABLE IF EXISTS `video`;

CREATE TABLE `video` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `info` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `url` char(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tag` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `img` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `video` WRITE;
/*!40000 ALTER TABLE `video` DISABLE KEYS */;

INSERT INTO `video` (`id`, `title`, `info`, `url`, `tag`, `img`)
VALUES
	(1,'今天是周三','这是一些周三的介绍','https://www.baidu.com','','https://s3.ap-northeast-1.amazonaws.com/defigogo/media/20210531211625-e43ab35c8a5b.png'),
	(2,'今天是周三','这是一些周三的介绍','https://www.baidu.com','','https://s3.ap-northeast-1.amazonaws.com/defigogo/media/20210531211625-e43ab35c8a5b.png'),
	(3,'今天是周三','这是一些周三的介绍','https://www.baidu.com','','https://s3.ap-northeast-1.amazonaws.com/defigogo/media/20210531211625-e43ab35c8a5b.png'),
	(4,'今天是周三','这是一些周三的介绍','https://www.baidu.com','','https://s3.ap-northeast-1.amazonaws.com/defigogo/media/20210531211625-e43ab35c8a5b.png'),
	(5,'今天是周三','这是一些周三的介绍','https://www.baidu.com','','https://s3.ap-northeast-1.amazonaws.com/defigogo/media/20210531211625-e43ab35c8a5b.png'),
	(6,'今天是周三','这是一些周三的介绍','https://www.baidu.com','','https://s3.ap-northeast-1.amazonaws.com/defigogo/media/20210531211625-e43ab35c8a5b.png'),
	(7,'今天是周三','这是一些周三的介绍','https://www.baidu.com','','https://s3.ap-northeast-1.amazonaws.com/defigogo/media/20210531211625-e43ab35c8a5b.png'),
	(8,'今天是周三','这是一些周三的介绍','https://www.baidu.com','','https://s3.ap-northeast-1.amazonaws.com/defigogo/media/20210531211625-e43ab35c8a5b.png');

/*!40000 ALTER TABLE `video` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
