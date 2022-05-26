# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.34)
# Database: only_new
# Generation Time: 2022-05-26 17:51:02 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table notification_templates
# ------------------------------------------------------------

DROP TABLE IF EXISTS `notification_templates`;

CREATE TABLE `notification_templates` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci,
  `message` text COLLATE utf8mb4_unicode_ci,
  `page` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `notification_templates` WRITE;
/*!40000 ALTER TABLE `notification_templates` DISABLE KEYS */;

INSERT INTO `notification_templates` (`id`, `type`, `title`, `message`, `page`)
VALUES
	(1,'match','Don\'t waste time','Hi {username} ?, you have a new match, aww ?','CHAT_SCREEN'),
	(2,'recording','New Friend Recording','Hola {username}, a trusted friend has recorded about you, be in hurry to check it out','SETTINGS/EDIT_PROFILE/RECOMMENDATIONS'),
	(3,'chat','ONLY!','You have a new message ','CHAT_SCREEN'),
	(4,'like','Mmh, Someone likes you','Hurray {username} !! You have a new like, tap to swipe now ?',NULL);

/*!40000 ALTER TABLE `notification_templates` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table system_apis
# ------------------------------------------------------------

DROP TABLE IF EXISTS `system_apis`;

CREATE TABLE `system_apis` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `system_apis` WRITE;
/*!40000 ALTER TABLE `system_apis` DISABLE KEYS */;

INSERT INTO `system_apis` (`id`, `title`, `api`)
VALUES
	(1,'Notification Server token','AAAA5G-USrM:APA91bHSQaJrNYMJwSCxzIf6vr9hQYOrZ9wX1-2iuQ31v-Z0hhhGDbLNU9Gqrew4Xie-l2uTJ01Uw_-7MsWCIj_sMQ5iqo3OzgMVyICJcHHKSkiirhfJ1VM7wkHDbn36VvGEHw8jkHio '),
	(2,'mycsms API Key','cSMS76b8512f69953562-d7c386f5bdb710ee'),
	(3,'arkesel API Key','ZkRxc1NKVnFmRlZicFVhRVRka20');

/*!40000 ALTER TABLE `system_apis` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table system_urls
# ------------------------------------------------------------

DROP TABLE IF EXISTS `system_urls`;

CREATE TABLE `system_urls` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `system_urls` WRITE;
/*!40000 ALTER TABLE `system_urls` DISABLE KEYS */;

INSERT INTO `system_urls` (`id`, `title`, `url`)
VALUES
	(1,'AppStore Url (Now Testflight)','https://testflight.apple.com/join/YX7oAjyZ'),
	(2,'Playstore Url','N/A');

/*!40000 ALTER TABLE `system_urls` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
