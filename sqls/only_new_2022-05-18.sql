# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.34)
# Database: only_new
# Generation Time: 2022-05-18 11:01:42 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table app_user_reports
# ------------------------------------------------------------

DROP TABLE IF EXISTS `app_user_reports`;

CREATE TABLE `app_user_reports` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `reporter` int(11) NOT NULL,
  `reported` int(11) NOT NULL,
  `report` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `active` varchar(10) DEFAULT 'yes',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `app_user_reports` WRITE;
/*!40000 ALTER TABLE `app_user_reports` DISABLE KEYS */;

INSERT INTO `app_user_reports` (`id`, `reporter`, `reported`, `report`, `created_at`, `updated_at`, `active`)
VALUES
	(1,1,2,'Other','2022-01-10 22:28:28','2022-01-10 22:28:28','yes'),
	(2,1,2,'Other','2022-01-10 22:28:39','2022-01-10 22:28:39','yes'),
	(3,1,2,'Other','2022-01-10 22:29:48','2022-01-10 22:29:48','yes'),
	(4,1,2,'Other','2022-01-10 22:30:02','2022-01-10 22:30:02','yes'),
	(5,41,28,'Spam/Fake profile','2022-01-10 22:50:38','2022-01-10 22:50:38','yes'),
	(6,41,28,'Spam/Fake profile','2022-01-10 22:51:24','2022-01-10 22:51:24','yes'),
	(7,41,36,'Inappropriate audio recording','2022-01-11 00:14:48','2022-01-11 00:14:48','yes'),
	(8,41,26,'Sexual harrassment','2022-01-11 02:29:25','2022-01-11 02:29:25','yes'),
	(9,41,1,'Spam/Fake profile','2022-01-18 14:15:52','2022-01-18 14:15:52','yes'),
	(10,41,34,'Spam/Fake profile','2022-04-13 23:21:14','2022-04-13 23:21:14','yes');

/*!40000 ALTER TABLE `app_user_reports` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table app_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `app_users`;

CREATE TABLE `app_users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fb_uid` varchar(255) NOT NULL DEFAULT '',
  `phone` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) DEFAULT '',
  `first_name` varchar(255) NOT NULL DEFAULT '',
  `last_name` varchar(255) NOT NULL DEFAULT '',
  `date_of_birth` varchar(100) NOT NULL DEFAULT '',
  `city` varchar(255) NOT NULL DEFAULT '',
  `country` varchar(255) NOT NULL DEFAULT '',
  `current_address` text,
  `gender` enum('Man','Woman') NOT NULL DEFAULT 'Man',
  `looking_for` enum('Men','Women','Both') NOT NULL DEFAULT 'Both',
  `age_range` varchar(6) DEFAULT '18:,25',
  `max_km_distance` double NOT NULL DEFAULT '200',
  `in_use_recommendation` int(11) DEFAULT '0',
  `last_update` varchar(100) DEFAULT '""',
  `active` varchar(5) NOT NULL DEFAULT 'yes',
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `app_users` WRITE;
/*!40000 ALTER TABLE `app_users` DISABLE KEYS */;

INSERT INTO `app_users` (`id`, `fb_uid`, `phone`, `email`, `first_name`, `last_name`, `date_of_birth`, `city`, `country`, `current_address`, `gender`, `looking_for`, `age_range`, `max_km_distance`, `in_use_recommendation`, `last_update`, `active`, `updated_at`, `created_at`)
VALUES
	(1,'OIkwGoypNGUy1KHpdeschFEQGFH3ss','+233208457888','sam@samel.com','Boyesssss','Johnjjjjjj','2004-01-23 00:00:00.000','Haatso, Accra D===Ghana','Afghanistan','{\"name\":\"Madina\",\"street\":null,\"isoCountryCode\":\"GH\",\"country\":\"Ghana\",\"postalCode\":null,\"administrativeArea\":\"Greater Accra\",\"subAdministrativeArea\":\"Accra\",\"locality\":\"Accra\",\"subLocality\":\"Madina\",\"thoroughfare\":null,\"subThoroughfare\":null,\"lat\":\"5.661204680510185\",\"lng\":\"-0.15376698402830674\"}','Woman','Women','18:,52',200,2,'August 15, 2021, 1:32 am','yes','2021-12-20 21:04:31','2021-09-08 15:45:02'),
	(2,'lBq7LrZ31MgGc0cTruKUYvmU3uh2ee','+233208457888','saytoonz05@gmail.com','Samuelaaaaa','Annin Yeboah','2004-01-23 00:00:00.000','Accra','Ghana','{\"name\":\"Madina\",\"street\":null,\"isoCountryCode\":\"GH\",\"country\":\"Ghana\",\"postalCode\":null,\"administrativeArea\":\"Greater Accra\",\"subAdministrativeArea\":\"Accra\",\"locality\":\"Accra\",\"subLocality\":\"Madina\",\"thoroughfare\":null,\"subThoroughfare\":null,\"lat\":\"5.661204680510185\",\"lng\":\"-0.15376698402830674\"}','Man','Both','',200,2,'July 15, 2021, 12:08 pm','yes',NULL,'2021-09-08 15:45:02'),
	(19,'sfsfsf4ee','+233208457888','sam@samuel.com','Boye','John','2004-01-23 00:00:00.000','East Legon','Ghana','{\"name\":\"Madina\",\"street\":null,\"isoCountryCode\":\"GH\",\"country\":\"Ghana\",\"postalCode\":null,\"administrativeArea\":\"Greater Accra\",\"subAdministrativeArea\":\"Accra\",\"locality\":\"Accra\",\"subLocality\":\"Madina\",\"thoroughfare\":null,\"subThoroughfare\":null,\"lat\":\"5.661204680510185\",\"lng\":\"-0.15376698402830674\"}','Man','Men','18:,25',200,2,'September 8, 2021, 7:26 pm','yes','2021-09-09 12:52:49','2021-09-08 19:26:53'),
	(23,'fb_uid','+233208457888','email','Samson','Kwaku','2004-01-23 00:00:00.000','city','country','{\"name\":\"Madina\",\"street\":null,\"isoCountryCode\":\"GH\",\"country\":\"Ghana\",\"postalCode\":null,\"administrativeArea\":\"Greater Accra\",\"subAdministrativeArea\":\"Accra\",\"locality\":\"Accra\",\"subLocality\":\"Madina\",\"thoroughfare\":null,\"subThoroughfare\":null,\"lat\":\"5.661204680510185\",\"lng\":\"-0.15376698402830674\"}','Man','Men','18:,25',200,2,'September 24, 2021, 5:12 am','yes','2021-09-24 05:12:21','2021-09-24 05:12:21'),
	(24,'fb_uidddaerwe','+233208457888','email@','Dinpa','Appiah','2004-01-23 00:00:00.000','city','country','{\"name\":\"Madina\",\"street\":null,\"isoCountryCode\":\"GH\",\"country\":\"Ghana\",\"postalCode\":null,\"administrativeArea\":\"Greater Accra\",\"subAdministrativeArea\":\"Accra\",\"locality\":\"Accra\",\"subLocality\":\"Madina\",\"thoroughfare\":null,\"subThoroughfare\":null,\"lat\":\"5.661204680510185\",\"lng\":\"-0.15376698402830674\"}','Man','Men','18:,25',200,2,'September 24, 2021, 12:38 pm','yes','2021-09-24 12:38:29','2021-09-24 12:38:29'),
	(25,'fb_uidddaerweeee','+233208457888','email@g','Asuman','Adjey','2004-01-23 00:00:00.000','city','country','{\"name\":\"Madina\",\"street\":null,\"isoCountryCode\":\"GH\",\"country\":\"Ghana\",\"postalCode\":null,\"administrativeArea\":\"Greater Accra\",\"subAdministrativeArea\":\"Accra\",\"locality\":\"Accra\",\"subLocality\":\"Madina\",\"thoroughfare\":null,\"subThoroughfare\":null,\"lat\":\"5.661204680510185\",\"lng\":\"-0.15376698402830674\"}','Man','Women','18:,25',200,2,'September 24, 2021, 3:10 pm','yes','2021-09-24 15:10:23','2021-09-24 15:10:23'),
	(26,'fb_uidddaerweeeer','+233208457888','email@gm','Praise','Agyei','2004-01-23 00:00:00.000','city','country','{\"name\":\"Madina\",\"street\":null,\"isoCountryCode\":\"GH\",\"country\":\"Ghana\",\"postalCode\":null,\"administrativeArea\":\"Greater Accra\",\"subAdministrativeArea\":\"Accra\",\"locality\":\"Accra\",\"subLocality\":\"Madina\",\"thoroughfare\":null,\"subThoroughfare\":null,\"lat\":\"5.661204680510185\",\"lng\":\"-0.15376698402830674\"}','Man','Women','18:,25',200,2,'September 24, 2021, 3:11 pm','yes','2021-09-24 15:11:58','2021-09-24 15:11:58'),
	(27,'fb_uidddaerweeeere','+233208457888','email@gma','Goodluck','Nancy','2004-01-23 00:00:00.000','city','country','{\"name\":\"Madina\",\"street\":null,\"isoCountryCode\":\"GH\",\"country\":\"Ghana\",\"postalCode\":null,\"administrativeArea\":\"Greater Accra\",\"subAdministrativeArea\":\"Accra\",\"locality\":\"Accra\",\"subLocality\":\"Madina\",\"thoroughfare\":null,\"subThoroughfare\":null,\"lat\":\"5.661204680510185\",\"lng\":\"-0.15376698402830674\"}','Man','Women','18:,25',200,2,'September 24, 2021, 3:12 pm','yes','2021-09-24 15:12:10','2021-09-24 15:12:10'),
	(28,'fb_uidddaerweeeerer','+233208457888','email@gmai','Kuffour','Fripong','2004-01-23 00:00:00.000','city','country','{\"name\":\"Madina\",\"street\":null,\"isoCountryCode\":\"GH\",\"country\":\"Ghana\",\"postalCode\":null,\"administrativeArea\":\"Greater Accra\",\"subAdministrativeArea\":\"Accra\",\"locality\":\"Accra\",\"subLocality\":\"Madina\",\"thoroughfare\":null,\"subThoroughfare\":null,\"lat\":\"5.661204680510185\",\"lng\":\"-0.15376698402830674\"}','Man','Women','18:,25',200,2,'September 24, 2021, 3:12 pm','yes','2021-09-24 15:12:22','2021-09-24 15:12:22'),
	(29,'jkd9ekdjnilauhihlehrlkangqaa','+233208457888','email@mail.com','first_name','last_name','2004-01-23 00:00:00.000','city','country','{\"name\":\"Madina\",\"street\":null,\"isoCountryCode\":\"GH\",\"country\":\"Ghana\",\"postalCode\":null,\"administrativeArea\":\"Greater Accra\",\"subAdministrativeArea\":\"Accra\",\"locality\":\"Accra\",\"subLocality\":\"Madina\",\"thoroughfare\":null,\"subThoroughfare\":null,\"lat\":\"5.661204680510185\",\"lng\":\"-0.15376698402830674\"}','Man','Men','18:,25',200,2,'October 16, 2021, 6:31 pm','yes','2021-10-16 18:31:51','2021-10-16 18:31:51'),
	(30,'OIkwGoypNGUy1KHpdeschFEQGddDFH3','+233208457888','email@mail.com','Dada','Joe','2004-01-23 00:00:00.000','Accra','Ghana','{\"name\":\"Madina\",\"street\":null,\"isoCountryCode\":\"GH\",\"country\":\"Ghana\",\"postalCode\":null,\"administrativeArea\":\"Greater Accra\",\"subAdministrativeArea\":\"Accra\",\"locality\":\"Accra\",\"subLocality\":\"Madina\",\"thoroughfare\":null,\"subThoroughfare\":null,\"lat\":\"5.661204680510185\",\"lng\":\"-0.15376698402830674\"}','Man','Women','18:,25',200,3,'December 31, 2021, 9:02 pm','yes','2021-12-31 21:02:07','2021-12-31 21:02:07'),
	(31,'dddddd','+233208457888',NULL,'Dada','Joe','2004-01-23 00:00:00.000','Accra','Ghana','{\"name\":\"Madina\",\"street\":null,\"isoCountryCode\":\"GH\",\"country\":\"Ghana\",\"postalCode\":null,\"administrativeArea\":\"Greater Accra\",\"subAdministrativeArea\":\"Accra\",\"locality\":\"Accra\",\"subLocality\":\"Madina\",\"thoroughfare\":null,\"subThoroughfare\":null,\"lat\":\"5.661204680510185\",\"lng\":\"-0.15376698402830674\"}','Man','Women','18:,25',200,2,'December 31, 2021, 9:05 pm','yes','2021-12-31 21:05:36','2021-12-31 21:05:36'),
	(32,'dddtte','+233208457888',NULL,'Dada','Joe','2004-01-23 00:00:00.000','Accra','Ghana','{\"name\":\"Madina\",\"street\":null,\"isoCountryCode\":\"GH\",\"country\":\"Ghana\",\"postalCode\":null,\"administrativeArea\":\"Greater Accra\",\"subAdministrativeArea\":\"Accra\",\"locality\":\"Accra\",\"subLocality\":\"Madina\",\"thoroughfare\":null,\"subThoroughfare\":null,\"lat\":\"5.661204680510185\",\"lng\":\"-0.15376698402830674\"}','Man','Women','18:,25',200,1,'December 31, 2021, 9:07 pm','yes','2021-12-31 21:07:33','2021-12-31 21:07:33'),
	(33,'errrgaew','+233208457888',NULL,'Dada','Joe','2004-01-23 00:00:00.000','Accra','Ghana','{\"name\":\"Madina\",\"street\":null,\"isoCountryCode\":\"GH\",\"country\":\"Ghana\",\"postalCode\":null,\"administrativeArea\":\"Greater Accra\",\"subAdministrativeArea\":\"Accra\",\"locality\":\"Accra\",\"subLocality\":\"Madina\",\"thoroughfare\":null,\"subThoroughfare\":null,\"lat\":\"5.661204680510185\",\"lng\":\"-0.15376698402830674\"}','Man','Women','18:,25',200,2,'December 31, 2021, 9:17 pm','yes','2021-12-31 21:17:11','2021-12-31 21:17:11'),
	(34,'ppppkpk','+233208457888',NULL,'Tuga','Joe','2004-01-23 00:00:00.000','Accra','Ghana','{\"name\":\"Madina\",\"street\":null,\"isoCountryCode\":\"GH\",\"country\":\"Ghana\",\"postalCode\":null,\"administrativeArea\":\"Greater Accra\",\"subAdministrativeArea\":\"Accra\",\"locality\":\"Accra\",\"subLocality\":\"Madina\",\"thoroughfare\":null,\"subThoroughfare\":null,\"lat\":\"5.661204680510185\",\"lng\":\"-0.15376698402830674\"}','Man','Women','18:,25',200,2,'January 1, 2022, 7:29 am','yes','2022-01-01 07:29:28','2022-01-01 07:29:28'),
	(35,'OIkwGoypNGUy1KHpdescGFH3','+233208457888',NULL,'Dada','Joe','2004-01-23 00:00:00.000','Accra','Ghana','{\"name\":\"Madina\",\"street\":null,\"isoCountryCode\":\"GH\",\"country\":\"Ghana\",\"postalCode\":null,\"administrativeArea\":\"Greater Accra\",\"subAdministrativeArea\":\"Accra\",\"locality\":\"Accra\",\"subLocality\":\"Madina\",\"thoroughfare\":null,\"subThoroughfare\":null,\"lat\":\"5.661204680510185\",\"lng\":\"-0.15376698402830674\"}','Man','Women','18:,25',200,2,'January 1, 2022, 7:50 am','yes','2022-01-01 07:50:21','2022-01-01 07:50:21'),
	(36,'55555','+233208457888',NULL,'Dada','Joe','2004-01-23 00:00:00.000','Accra','Ghana','{\"name\":\"Madina\",\"street\":null,\"isoCountryCode\":\"GH\",\"country\":\"Ghana\",\"postalCode\":null,\"administrativeArea\":\"Greater Accra\",\"subAdministrativeArea\":\"Accra\",\"locality\":\"Accra\",\"subLocality\":\"Madina\",\"thoroughfare\":null,\"subThoroughfare\":null,\"lat\":\"5.661204680510185\",\"lng\":\"-0.15376698402830674\"}','Man','Women','18:,25',200,2,'January 1, 2022, 8:07 am','no','2022-01-01 08:07:21','2022-01-01 08:07:21'),
	(37,'OIkwGoypNGUy1KHpdeschFEQddssdGFH3','+233208457888',NULL,'Dada','Joe','2004-01-23 00:00:00.000','Accra','Ghana','{\"name\":\"Madina\",\"street\":null,\"isoCountryCode\":\"GH\",\"country\":\"Ghana\",\"postalCode\":null,\"administrativeArea\":\"Greater Accra\",\"subAdministrativeArea\":\"Accra\",\"locality\":\"Accra\",\"subLocality\":\"Madina\",\"thoroughfare\":null,\"subThoroughfare\":null,\"lat\":\"5.661204680510185\",\"lng\":\"-0.15376698402830674\"}','Man','Women','18:,25',200,2,'January 1, 2022, 8:09 am','yes','2022-01-01 08:09:11','2022-01-01 08:09:11'),
	(38,'i9ioiuhjhjgggderweq','+233208457888',NULL,'Dada','Joe','2004-01-23 00:00:00.000','Accra','Ghana','{\"name\":\"Madina\",\"street\":null,\"isoCountryCode\":\"GH\",\"country\":\"Ghana\",\"postalCode\":null,\"administrativeArea\":\"Greater Accra\",\"subAdministrativeArea\":\"Accra\",\"locality\":\"Accra\",\"subLocality\":\"Madina\",\"thoroughfare\":null,\"subThoroughfare\":null,\"lat\":\"5.661204680510185\",\"lng\":\"-0.15376698402830674\"}','Man','Women','18:,25',200,2,'January 1, 2022, 8:34 am','yes','2022-01-01 08:34:13','2022-01-01 08:34:13'),
	(39,'OIkwGoypNGUy1KHpdescFH9','+233208457888',NULL,'Dada','Joe','2004-01-23 00:00:00.000','Accra','Ghana','{\"name\":\"Madina\",\"street\":null,\"isoCountryCode\":\"GH\",\"country\":\"Ghana\",\"postalCode\":null,\"administrativeArea\":\"Greater Accra\",\"subAdministrativeArea\":\"Accra\",\"locality\":\"Accra\",\"subLocality\":\"Madina\",\"thoroughfare\":null,\"subThoroughfare\":null,\"lat\":\"5.661204680510185\",\"lng\":\"-0.15376698402830674\"}','Man','Women','18:,25',200,2,'January 1, 2022, 8:44 am','yes','2022-01-01 08:44:50','2022-01-01 08:44:50'),
	(40,'S8hgjBspqFeWctLiQauvTfsoJMm2','+233208457888','saytoon05@mail.com','Dada','Joseph','2004-01-23 00:00:00.000','Accra','Ghana','{\"name\":\"La-Nkwantanang-Madina\",\"street\":null,\"isoCountryCode\":\"GH\",\"country\":\"Ghana\",\"postalCode\":null,\"administrativeArea\":\"Greater Accra\",\"subAdministrativeArea\":null,\"locality\":\"La-Nkwantanang-Madina\",\"subLocality\":null,\"thoroughfare\":null,\"subThoroughfare\":null,\"lat\":\"5.661277\",\"lng\":\"-0.15330661211713398\"}','Man','Women','18:,25',200,1,'January 1, 2022, 9:35 am','yes','2022-03-20 23:14:07','2022-01-01 09:35:03'),
	(41,'OIkwGoypNGUy1KHpdeschFEQGFH3','+233208457888','saytoondx@mail.com','Daaaa','Joseph','2004-01-23 00:00:00.000','East Legon Accra','Ghana','{\"name\":\"10435 N Portal Ave\",\"street\":\"10435 N Portal Ave\",\"isoCountryCode\":\"US\",\"country\":\"United States\",\"postalCode\":\"95014\",\"administrativeArea\":\"CA\",\"subAdministrativeArea\":\"Santa Clara County\",\"locality\":\"Cupertino\",\"subLocality\":null,\"thoroughfare\":\"N Portal Ave\",\"subThoroughfare\":\"10435\",\"lat\":\"37.32937093\",\"lng\":\"-122.01980528\"}','Man','Both','18:,70',118,2,'January 1, 2022, 9:42 am','yes','2022-04-22 12:52:39','2022-05-01 09:42:35');

/*!40000 ALTER TABLE `app_users` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table chat_lists
# ------------------------------------------------------------

DROP TABLE IF EXISTS `chat_lists`;

CREATE TABLE `chat_lists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` int(11) DEFAULT NULL,
  `to` int(11) DEFAULT NULL,
  `from` int(11) DEFAULT NULL,
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text',
  `message` mediumtext COLLATE utf8mb4_unicode_ci,
  `unread` int(11) NOT NULL DEFAULT '0',
  `status` enum('SEEN','SENT','DELIVERED','READ','DELETED') COLLATE utf8mb4_unicode_ci DEFAULT 'SENT',
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `chat_lists` WRITE;
/*!40000 ALTER TABLE `chat_lists` DISABLE KEYS */;

INSERT INTO `chat_lists` (`id`, `owner`, `to`, `from`, `type`, `message`, `unread`, `status`, `updated_at`, `created_at`)
VALUES
	(1,23,41,23,'text','hahaha',2,'SENT','2022-04-16 17:21:37','2022-04-15 10:26:08'),
	(2,41,23,41,'text','hahaha',0,'SENT','2022-04-16 17:21:37','2022-04-15 10:26:08'),
	(5,41,34,41,'text','Massa',0,'SENT','2022-04-15 11:04:01','2022-04-15 11:04:01'),
	(6,34,41,34,'text','Massa',1,'SENT','2022-04-15 11:04:01','2022-04-15 11:04:01');

/*!40000 ALTER TABLE `chat_lists` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table chats
# ------------------------------------------------------------

DROP TABLE IF EXISTS `chats`;

CREATE TABLE `chats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from` int(11) DEFAULT NULL,
  `to` int(11) DEFAULT NULL,
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text',
  `message` mediumtext COLLATE utf8mb4_unicode_ci,
  `status` enum('SEEN','SENT','DELIVERED','READ','DELETED') COLLATE utf8mb4_unicode_ci DEFAULT 'SENT',
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `chats` WRITE;
/*!40000 ALTER TABLE `chats` DISABLE KEYS */;

INSERT INTO `chats` (`id`, `from`, `to`, `type`, `message`, `status`, `updated_at`, `created_at`)
VALUES
	(3,1,2,'image','/storage/user_data/profilePhotos/1641090181722.jpg','SENT','2021-11-19 06:23:03','2021-11-19 06:23:03'),
	(4,1,2,'image','/storage/user_data/profilePhotos/1641090181722.jpg','SENT','2021-11-19 06:23:44','2021-11-19 06:23:44'),
	(5,1,2,'image','/storage/user_data/profilePhotos/1641090181722.jpg','SENT','2021-11-19 06:24:11','2021-11-19 06:24:11'),
	(6,1,2,'image','/storage/user_data/profilePhotos/1641090181722.jpg','DELETED','2021-11-19 06:24:21','2021-11-19 06:24:21'),
	(7,1,2,'image','/storage/user_data/profilePhotos/1641090181722.jpg','DELETED','2021-11-19 06:32:41','2021-11-19 06:32:41'),
	(8,1,2,'image','/storage/user_data/profilePhotos/1641090181722.jpg','SENT','2021-11-19 06:34:08','2021-11-19 06:34:08'),
	(9,1,2,'image','/storage/user_data/profilePhotos/1641090181722.jpg','SENT','2021-11-19 06:36:12','2021-11-19 06:36:12'),
	(10,1,2,'image','/storage/user_data/profilePhotos/1641090181722.jpg','SENT','2021-11-19 06:40:21','2021-11-19 06:40:21'),
	(11,1,2,'audio','/storage/user_data/recommendations/1640982422940.mp3','SENT','2021-11-19 06:40:33','2021-11-19 06:40:33'),
	(12,1,2,'image','/storage/user_data/profilePhotos/1641090181722.jpg','SENT','2021-11-19 06:40:43','2021-11-19 06:40:43'),
	(13,1,2,'image','/storage/user_data/profilePhotos/1641090181722.jpg','SENT','2021-11-19 06:41:26','2021-11-19 06:41:26'),
	(14,1,2,'audio','/storage/user_data/recommendations/1640982422940.mp3','SENT','2022-01-13 02:04:27','2022-01-13 02:04:27'),
	(15,1,2,'image','/storage/user_data/profilePhotos/1641090181722.jpg','SENT','2022-01-13 02:21:01','2022-01-13 02:21:01'),
	(16,1,2,'image','/storage/user_data/profilePhotos/1641090181722.jpg','SENT','2022-01-13 02:21:09','2022-01-13 02:21:09'),
	(17,1,2,'image','/storage/user_data/profilePhotos/1641090181722.jpg','SENT','2022-01-13 02:21:11','2022-01-13 02:21:11'),
	(18,41,1,'audio','/storage/user_data/recommendations/1640982422940.mp3','SENT','2022-01-13 02:24:27','2022-01-13 02:24:27'),
	(19,1,41,'image','/storage/user_data/profilePhotos/1641090181722.jpg','SENT','2022-01-13 02:24:34','2022-01-13 02:24:34'),
	(20,40,41,'image','/storage/user_data/profilePhotos/1641090181722.jpg','SENT','2022-01-13 02:24:52','2022-01-13 02:24:52'),
	(21,40,41,'image','/storage/user_data/profilePhotos/1641090181722.jpg','SENT','2022-01-13 02:24:53','2022-01-13 02:24:53'),
	(22,40,41,'image','/storage/user_data/profilePhotos/1641090181722.jpg','SENT','2022-01-13 02:25:00','2022-01-13 02:25:00'),
	(23,40,41,'image','/storage/user_data/profilePhotos/1641090181722.jpg','SENT','2022-01-13 02:25:03','2022-01-13 02:25:03'),
	(24,40,41,'image','/storage/user_data/profilePhotos/1641090181722.jpg','SENT','2022-01-13 02:25:04','2022-01-13 02:25:04'),
	(25,40,41,'image','/storage/user_data/profilePhotos/1641090181722.jpg','SENT','2022-01-13 02:25:05','2022-01-13 02:25:05'),
	(26,40,41,'image','/storage/user_data/profilePhotos/1641090181722.jpg','SENT','2022-01-13 02:25:05','2022-01-13 02:25:05'),
	(27,40,41,'image','/storage/user_data/profilePhotos/1641090181722.jpg','SENT','2022-01-13 02:25:06','2022-01-13 02:25:06'),
	(28,40,41,'image','/storage/user_data/profilePhotos/1641090181722.jpg','SENT','2022-01-13 02:25:06','2022-01-13 02:25:06'),
	(29,40,41,'image','/storage/user_data/profilePhotos/1641090181722.jpg','SENT','2022-01-13 02:25:08','2022-01-13 02:25:08'),
	(30,40,4,'image','/storage/user_data/profilePhotos/1641090181722.jpg','SENT','2022-01-13 02:46:02','2022-01-13 02:46:02'),
	(31,40,1,'image','/storage/user_data/profilePhotos/1641090181722.jpg','SENT','2022-01-13 02:46:06','2022-01-13 02:46:06'),
	(32,40,1,'audio','/storage/user_data/recommendations/1640982422940.mp3','SENT','2022-01-13 02:46:54','2022-01-13 02:46:54'),
	(33,40,41,'text','Hi\nHow are you there','SENT','2022-01-14 22:44:10','2022-01-14 22:44:10'),
	(34,40,41,'text','Hi\nHow are you there','SENT','2022-01-14 23:25:46','2022-01-14 23:25:46'),
	(35,41,40,'text','Hi this is saytooonz','SENT','2022-01-14 23:30:58','2022-01-14 23:30:58'),
	(36,41,40,'text','Hi this is saytooonz','SENT','2022-01-14 23:31:51','2022-01-14 23:31:51'),
	(37,41,40,'text','Hi this is saytooonz','SENT','2022-01-14 23:32:28','2022-01-14 23:32:28'),
	(38,41,40,'text','Hi this is saytooonz','SENT','2022-01-14 23:32:33','2022-01-14 23:32:33'),
	(39,41,40,'text','Hi this is saytooonz','SENT','2022-01-14 23:33:28','2022-01-14 23:33:28'),
	(40,41,40,'text','Hi this is saytooonz','SENT','2022-01-14 23:35:21','2022-01-14 23:35:21'),
	(41,41,40,'text','Hello','SENT','2022-01-15 00:47:07','2022-01-15 00:47:07'),
	(42,41,40,'text','How','SENT','2022-01-15 00:48:41','2022-01-15 00:48:41'),
	(43,40,41,'text','Edi','SENT','2022-01-15 00:48:55','2022-01-15 00:48:55'),
	(44,41,40,'text','Gewal;oa','SENT','2022-01-15 00:49:10','2022-01-15 00:49:10'),
	(45,41,40,'text','Hey','SENT','2022-01-15 00:52:22','2022-01-15 00:52:22'),
	(46,41,40,'text','Hrrr','SENT','2022-01-15 00:52:30','2022-01-15 00:52:30'),
	(47,41,40,'text','eww','SENT','2022-01-15 00:54:03','2022-01-15 00:54:03'),
	(48,40,41,'text','Heyrr','SEEN','2022-01-22 12:16:14','2022-01-15 00:54:32'),
	(49,41,40,'text','Hollayt','SENT','2022-01-15 00:56:14','2022-01-15 00:56:14'),
	(50,41,40,'text','Hey tee','SENT','2022-01-15 00:57:34','2022-01-15 00:57:34'),
	(51,41,40,'text','Whay\nWhat’supp\nWho this Abel','SENT','2022-01-15 00:57:58','2022-01-15 00:57:58'),
	(52,41,40,'text','Yet','SENT','2022-01-15 00:58:07','2022-01-15 00:58:07'),
	(53,41,40,'text','Ghana','SENT','2022-01-15 00:59:05','2022-01-15 00:59:05'),
	(54,41,40,'text','Hrrrr','SENT','2022-01-15 00:59:20','2022-01-15 00:59:20'),
	(55,41,40,'text','Hmm. We’re having trouble finding that site.','SENT','2022-01-15 01:00:17','2022-01-15 01:00:17'),
	(56,41,40,'text','We can’t connect to the server at github.com.','SENT','2022-01-15 01:00:41','2022-01-15 01:00:41'),
	(57,41,40,'text','We can’t connect to the server at github.com.','SENT','2022-01-15 01:00:48','2022-01-15 01:00:48'),
	(58,41,40,'text','hi','SENT','2022-01-15 01:04:47','2022-01-15 01:04:47'),
	(59,41,40,'text','how','SENT','2022-01-15 01:04:54','2022-01-15 01:04:54'),
	(60,41,40,'text','hello','SENT','2022-01-15 01:05:33','2022-01-15 01:05:33'),
	(61,41,40,'text','Gow','SENT','2022-01-15 01:05:39','2022-01-15 01:05:39'),
	(62,41,40,'text','dkjfksjks kjldkf','SENT','2022-01-15 01:06:16','2022-01-15 01:06:16'),
	(63,41,40,'text','hi','SENT','2022-01-15 01:15:46','2022-01-15 01:15:46'),
	(64,41,40,'text','How','SENT','2022-01-15 01:15:50','2022-01-15 01:15:50'),
	(65,41,40,'text','Good','SENT','2022-01-15 01:16:37','2022-01-15 01:16:37'),
	(66,41,40,'text','hello','SENT','2022-01-15 02:09:35','2022-01-15 02:09:35'),
	(67,41,40,'text','How','SENT','2022-01-15 02:09:37','2022-01-15 02:09:37'),
	(68,41,40,'text','1. Create a simple list with 2 buttons','SENT','2022-01-15 02:10:03','2022-01-15 02:10:03'),
	(69,41,40,'text','2. Create a Controller and attach it to the listview','SENT','2022-01-15 02:10:21','2022-01-15 02:10:21'),
	(70,41,40,'text','2. Create a Controller and attach it to the listview','SENT','2022-01-15 02:11:33','2022-01-15 02:11:33'),
	(71,41,40,'text','2. Create a Controller and attach it to the listview2. Create a Controller and attach it to the listview2. Create a Controller and attach it to the listview','SENT','2022-01-15 02:11:40','2022-01-15 02:11:40'),
	(72,41,40,'text','2. Create a Controller and attach it to the listview2. Create a Controller and attach it to the listview2. Create a Controller and attach it to the listview2. Create a Controller and attach it to the listview','SENT','2022-01-15 02:11:53','2022-01-15 02:11:53'),
	(73,41,40,'text','2. Create a Controller and attach it to the listview2. Create a Controller and attach it to the listview 2. Create a Controller and attach it to the listview 2. Create a Controller and attach it to the listview 2. Create a Controller and attach it to the listview 2. Create a Controller and attach it to the listview','SENT','2022-01-15 02:12:25','2022-01-15 02:12:25'),
	(74,41,40,'text','2. Create a Controller and attach it to the listview 2. Create a Controller and attach it to the listview 2. Create a Controller and attach it to the listview 2. Create a Controller and attach it to the listview 2. Create a Controller and attach it to the listview 2. Create a Controller and attach it to the listview','SENT','2022-01-15 02:13:17','2022-01-15 02:13:17'),
	(75,41,40,'text','2. Create a Controller and attach it to the listview 2. Create a Controller and attach it to the listview 2. Create a Controller and attach it to the listview  2. Create a Controller and attach it to the listview 2. Create a Controller and attach it to the listview 2. Create a Controller and attach it to the listview 2. Create a Controller and attach it to the listview 2. Create a Controller and attach it to the listview 2. Create a Controller and attach it to the listview','SENT','2022-01-15 02:13:26','2022-01-15 02:13:26'),
	(76,41,40,'text','2. Create a Controller and attach it to the listview 2. Create a Controller and attach it to the listview 2. Create a Controller and attach it to the listview  2. Create a Controller and attach it to the listview 2. Create a Controller and attach it to the listview 2. Create a Controller and attach it to the listview 2. Create a Controller and attach it to the listview 2. Create a Controller and attach it to the listview 2. Create a Controller and attach it to the listview 2. Create a Controller and attach it to the listview 2. Create a Controller and attach it to the listview 2. Create a Controller and attach it to the listview','SENT','2022-01-15 02:13:36','2022-01-15 02:13:36'),
	(77,41,40,'text','Massa','SENT','2022-01-15 03:05:35','2022-01-15 03:05:35'),
	(78,41,40,'text','oh','SENT','2022-01-15 09:40:38','2022-01-15 09:40:38'),
	(79,41,40,'image','/storage/user_data/chatImages/1642244297707.jpg','SENT','2022-01-15 10:58:18','2022-01-15 10:58:18'),
	(80,41,39,'image','/storage/user_data/chatImages/1642244911353.jpg','SENT','2022-01-15 11:08:31','2022-01-15 11:08:31'),
	(81,41,2,'text','Baby','SENT','2022-01-15 11:10:29','2022-01-15 11:10:29'),
	(82,41,39,'text','Dada','SENT','2022-01-15 11:24:05','2022-01-15 11:24:05'),
	(83,41,39,'audio','/storage/user_data/recommendations/1642250914329.mp3','SENT','2022-01-15 12:49:38','2022-01-15 12:49:38'),
	(84,41,39,'audio','/storage/user_data/chatAudios/1642261532896.mp3','SENT','2022-01-15 15:46:10','2022-01-15 15:46:10'),
	(85,41,39,'audio','/storage/user_data/chatAudios/1642261760287.mp3','SENT','2022-01-15 15:49:58','2022-01-15 15:49:58'),
	(86,41,39,'audio','/storage/user_data/chatAudios/1642274330241.mp3','SENT','2022-01-15 19:19:16','2022-01-15 19:19:16'),
	(87,41,24,'text','hello','SENT','2022-01-15 19:22:24','2022-01-15 19:22:24'),
	(88,41,24,'text','how are you','SENT','2022-01-15 19:22:30','2022-01-15 19:22:30'),
	(89,41,24,'text','I’m good and you?','SENT','2022-01-15 19:59:40','2022-01-15 19:59:40'),
	(90,41,40,'text','hey','SENT','2022-01-15 20:00:36','2022-01-15 20:00:36'),
	(91,41,40,'text','ah','SENT','2022-01-15 20:00:59','2022-01-15 20:00:59'),
	(92,41,2,'text','hi','SENT','2022-01-15 20:24:50','2022-01-15 20:24:50'),
	(93,41,40,'text','aww ?','SENT','2022-01-15 20:28:14','2022-01-15 20:28:14'),
	(94,41,40,'text','hi','SENT','2022-01-15 21:10:16','2022-01-15 21:10:16'),
	(95,41,40,'text','heolllllsoss','SENT','2022-01-15 21:10:40','2022-01-15 21:10:40'),
	(96,41,40,'text','Hello','SENT','2022-01-15 21:14:51','2022-01-15 21:14:51'),
	(97,41,40,'text','hey','SENT','2022-01-15 21:25:15','2022-01-15 21:25:15'),
	(98,41,40,'text','Hello','SENT','2022-01-15 21:26:58','2022-01-15 21:26:58'),
	(99,41,33,'text','hey','SENT','2022-01-16 00:42:11','2022-01-16 00:42:11'),
	(100,41,33,'text','Hussel','SENT','2022-01-16 00:57:08','2022-01-16 00:57:08'),
	(101,41,33,'text','hey','SENT','2022-01-17 20:43:54','2022-01-17 20:43:54'),
	(102,33,41,'audio','/storage/user_data/chatAudios/1642509145304.mp3','SENT','2022-01-18 12:32:43','2022-01-18 12:32:43'),
	(103,41,33,'image','/storage/user_data/chatImages/1642509182253.jpg','SENT','2022-01-18 12:33:02','2022-01-18 12:33:02'),
	(104,41,33,'text','hey','SENT','2022-01-18 13:39:58','2022-01-18 13:39:58'),
	(105,41,33,'text','hel','SENT','2022-01-18 13:42:38','2022-01-18 13:42:38'),
	(106,41,33,'text','d','SENT','2022-01-18 13:44:51','2022-01-18 13:44:51'),
	(107,41,33,'text','rhel','SENT','2022-01-18 13:56:37','2022-01-18 13:56:37'),
	(108,41,33,'text','hola','SENT','2022-01-18 14:03:24','2022-01-18 14:03:24'),
	(109,41,33,'text','Yeah','SENT','2022-01-18 14:03:30','2022-01-18 14:03:30'),
	(110,41,33,'text','houw','SENT','2022-01-18 14:06:16','2022-01-18 14:06:16'),
	(111,41,33,'text','I’ve never stopped','SENT','2022-01-18 14:07:14','2022-01-18 14:07:14'),
	(112,41,33,'text','hi','SENT','2022-01-18 14:12:06','2022-01-18 14:12:06'),
	(113,41,33,'text','hi','SENT','2022-01-18 14:12:08','2022-01-18 14:12:08'),
	(114,41,33,'text','hi','SENT','2022-01-18 14:12:12','2022-01-18 14:12:12'),
	(115,41,33,'text','hi','SENT','2022-01-18 14:12:14','2022-01-18 14:12:14'),
	(116,41,33,'text','hi','SENT','2022-01-18 14:12:15','2022-01-18 14:12:15'),
	(117,41,33,'text','hi','SENT','2022-01-18 14:12:16','2022-01-18 14:12:16'),
	(118,41,33,'text','Hello','SENT','2022-01-18 14:12:50','2022-01-18 14:12:50'),
	(119,41,33,'text','s.','SENT','2022-01-18 14:12:54','2022-01-18 14:12:54'),
	(120,41,33,'text','hi','SENT','2022-01-18 14:15:27','2022-01-18 14:15:27'),
	(121,33,41,'text','he','SENT','2022-01-18 15:21:47','2022-01-18 15:21:47'),
	(122,41,35,'text','hrrrrr','SENT','2022-01-18 15:48:04','2022-01-18 15:48:04'),
	(123,41,40,'text','eie iei Hello','SENT','2022-01-15 21:26:58','2022-01-15 21:26:58'),
	(124,41,40,'text','huuiig','SENT','2022-01-18 16:03:05','2022-01-18 16:03:05'),
	(125,41,40,'text','hey boss','SENT','2022-01-18 16:07:57','2022-01-18 16:07:57'),
	(126,41,40,'text','hello','SENT','2022-01-18 16:10:22','2022-01-18 16:10:22'),
	(127,41,40,'text','massa','SENT','2022-01-18 16:11:08','2022-01-18 16:11:08'),
	(128,41,40,'text','Yooo','SENT','2022-01-18 16:13:02','2022-01-18 16:13:02'),
	(129,41,40,'text','You how are you now','SENT','2022-01-18 16:17:12','2022-01-18 16:17:12'),
	(130,40,41,'text','You how are you now','SEEN','2022-01-18 16:45:25','2022-01-18 16:17:12'),
	(131,41,40,'text','hey','SENT','2022-01-18 16:29:40','2022-01-18 16:29:40'),
	(132,40,41,'text','You how are you now','SEEN','2022-01-18 16:45:25','2022-01-18 16:17:12'),
	(133,40,41,'text','You how are you nowStop','SEEN','2022-01-18 16:45:25','2022-01-18 16:17:12'),
	(134,40,41,'text','You Stop','SEEN','2022-01-18 16:45:25','2022-01-18 16:17:12'),
	(135,41,40,'text','hey','SENT','2022-01-18 16:36:38','2022-01-18 16:36:38'),
	(136,40,41,'text','Sucks','SEEN','2022-01-18 16:45:25','2022-01-18 16:17:12'),
	(137,40,41,'text','Sucks again','SEEN','2022-01-18 16:44:33','2022-01-18 16:17:12'),
	(138,41,40,'text','hey','SENT','2022-01-18 16:36:38','2022-01-18 16:36:38'),
	(139,41,40,'text','ff','SENT','2022-01-22 12:15:40','2022-01-22 12:15:40'),
	(140,41,40,'text','gg','SENT','2022-01-22 12:15:43','2022-01-22 12:15:43'),
	(141,41,40,'text','gg','SENT','2022-01-22 12:15:46','2022-01-22 12:15:46'),
	(142,41,34,'text','he','SENT','2022-01-22 12:16:25','2022-01-22 12:16:25'),
	(143,41,34,'text','how','SENT','2022-01-22 12:16:27','2022-01-22 12:16:27'),
	(144,41,34,'text','are you','SENT','2022-01-22 12:16:32','2022-01-22 12:16:32'),
	(145,41,30,'text','hey','SENT','2022-01-23 04:39:06','2022-01-23 04:39:06'),
	(146,41,30,'text','how','SENT','2022-01-23 04:39:14','2022-01-23 04:39:14'),
	(147,41,23,'text','hu','SEEN','2022-04-15 11:06:24','2022-01-23 21:28:12'),
	(148,41,23,'text','ui','SEEN','2022-04-15 11:06:24','2022-01-23 21:28:14'),
	(149,41,23,'text','sup','SEEN','2022-04-15 11:06:24','2022-01-23 21:28:17'),
	(150,41,32,'text','hi','SENT','2022-02-04 06:17:42','2022-02-04 06:17:42'),
	(151,41,35,'text','hey','SENT','2022-03-31 00:55:26','2022-03-31 00:55:26'),
	(152,41,35,'audio','/storage/user_data/chatAudios/1648688136800.mp3','SENT','2022-03-31 00:56:05','2022-03-31 00:56:05'),
	(153,41,35,'image','/storage/user_data/chatImages/1648688218878.jpg','SENT','2022-03-31 00:56:59','2022-03-31 00:56:59'),
	(154,41,35,'text','Yeah, I love it. Fun to meet a girl who also is equally obsessed with mountains. However, I am not a big fan of the seven summits. I think the fact that Everest is on the ist is the killer for me. I could never do it.','SENT','2022-04-02 00:07:20','2022-04-02 00:07:20'),
	(155,41,35,'audio','/storage/user_data/chatAudios/1648860681585.mp3','SENT','2022-04-02 00:51:33','2022-04-02 00:51:33'),
	(156,35,41,'text','Yeah, I love it. Fun to meet a girl who also is equally obsessed with mountains. However, I am not a big fan of the seven summits. I think the fact that Everest is on the ist is the killer for me. I could never do it.','SEEN','2022-04-02 11:58:21','2022-04-02 11:53:33'),
	(157,23,41,'text','Hi\nHow are you there','SEEN','2022-04-15 10:52:24','2022-04-15 10:26:08'),
	(158,41,34,'text','Healy to Ga','SENT','2022-04-15 10:44:44','2022-04-15 10:44:44'),
	(159,41,34,'text','Massa','SENT','2022-04-15 11:04:01','2022-04-15 11:04:01'),
	(160,23,41,'text','Hi\nHow are you there','SEEN','2022-04-15 11:16:04','2022-04-15 11:15:54'),
	(161,23,41,'text','Hi? j \nHow are you there','SEEN','2022-04-15 11:16:19','2022-04-15 11:16:18'),
	(162,41,23,'text','hi','SENT','2022-04-16 17:16:40','2022-04-16 17:16:40'),
	(163,23,41,'text','Hi? j \nHow are you there','SEEN','2022-04-16 17:21:27','2022-04-16 17:21:22'),
	(164,41,23,'text','hahaha','SENT','2022-04-16 17:21:37','2022-04-16 17:21:37');

/*!40000 ALTER TABLE `chats` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table data_rows
# ------------------------------------------------------------

DROP TABLE IF EXISTS `data_rows`;

CREATE TABLE `data_rows` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `data_type_id` int(10) unsigned NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`),
  CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `data_rows` WRITE;
/*!40000 ALTER TABLE `data_rows` DISABLE KEYS */;

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`)
VALUES
	(1,1,'id','number','ID',1,0,0,0,0,0,NULL,1),
	(2,1,'name','text','Name',1,1,1,1,1,1,NULL,2),
	(3,1,'email','text','Email',1,1,1,1,1,1,NULL,3),
	(4,1,'password','password','Password',1,0,0,1,1,0,NULL,4),
	(5,1,'remember_token','text','Remember Token',0,0,0,0,0,0,NULL,5),
	(6,1,'created_at','timestamp','Created At',0,1,1,0,0,0,NULL,6),
	(7,1,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,7),
	(8,1,'avatar','image','Avatar',0,1,1,1,1,1,NULL,8),
	(9,1,'user_belongsto_role_relationship','relationship','Role',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}',10),
	(10,1,'user_belongstomany_role_relationship','relationship','voyager::seeders.data_rows.roles',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}',11),
	(11,1,'settings','hidden','Settings',0,0,0,0,0,0,NULL,12),
	(12,2,'id','number','ID',1,0,0,0,0,0,NULL,1),
	(13,2,'name','text','Name',1,1,1,1,1,1,NULL,2),
	(14,2,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,3),
	(15,2,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,4),
	(16,3,'id','number','ID',1,0,0,0,0,0,NULL,1),
	(17,3,'name','text','Name',1,1,1,1,1,1,NULL,2),
	(18,3,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,3),
	(19,3,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,4),
	(20,3,'display_name','text','Display Name',1,1,1,1,1,1,NULL,5),
	(21,1,'role_id','text','Role',1,1,1,1,1,1,NULL,9);

/*!40000 ALTER TABLE `data_rows` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table data_types
# ------------------------------------------------------------

DROP TABLE IF EXISTS `data_types`;

CREATE TABLE `data_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `data_types` WRITE;
/*!40000 ALTER TABLE `data_types` DISABLE KEYS */;

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`)
VALUES
	(1,'users','users','User','Users','voyager-person','TCG\\Voyager\\Models\\User','TCG\\Voyager\\Policies\\UserPolicy','TCG\\Voyager\\Http\\Controllers\\VoyagerUserController','',1,0,NULL,'2021-09-19 07:14:52','2021-09-19 07:14:52'),
	(2,'menus','menus','Menu','Menus','voyager-list','TCG\\Voyager\\Models\\Menu',NULL,'','',1,0,NULL,'2021-09-19 07:14:52','2021-09-19 07:14:52'),
	(3,'roles','roles','Role','Roles','voyager-lock','TCG\\Voyager\\Models\\Role',NULL,'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController','',1,0,NULL,'2021-09-19 07:14:52','2021-09-19 07:14:52');

/*!40000 ALTER TABLE `data_types` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table failed_jobs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `failed_jobs`;

CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table login_session
# ------------------------------------------------------------

DROP TABLE IF EXISTS `login_session`;

CREATE TABLE `login_session` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(255) NOT NULL DEFAULT '',
  `token` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table matches
# ------------------------------------------------------------

DROP TABLE IF EXISTS `matches`;

CREATE TABLE `matches` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user1` int(11) DEFAULT NULL,
  `user2` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `matches` WRITE;
/*!40000 ALTER TABLE `matches` DISABLE KEYS */;

INSERT INTO `matches` (`id`, `user1`, `user2`, `created_at`, `updated_at`)
VALUES
	(1,30,41,'2022-04-14 01:41:30','2022-04-14 01:41:30'),
	(2,32,41,'2022-04-14 01:41:37','2022-04-14 01:41:37'),
	(3,28,41,'2022-04-14 01:41:40','2022-04-14 01:41:40'),
	(4,34,41,'2022-04-14 01:41:44','2022-04-14 01:41:44'),
	(5,23,41,'2022-04-14 01:41:46','2022-04-14 01:41:46');

/*!40000 ALTER TABLE `matches` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`id`, `migration`, `batch`)
VALUES
	(1,'2014_10_12_000000_create_users_table',1),
	(2,'2014_10_12_100000_create_password_resets_table',1),
	(3,'2016_01_01_000000_add_voyager_user_fields',1),
	(4,'2016_01_01_000000_create_data_types_table',1),
	(5,'2016_05_19_173453_create_menu_table',1),
	(6,'2016_10_21_190000_create_roles_table',1),
	(7,'2016_10_21_190000_create_settings_table',1),
	(8,'2016_11_30_135954_create_permission_table',1),
	(9,'2016_11_30_141208_create_permission_role_table',1),
	(10,'2016_12_26_201236_data_types__add__server_side',1),
	(11,'2017_01_13_000000_add_route_to_menu_items_table',1),
	(12,'2017_01_14_005015_create_translations_table',1),
	(13,'2017_01_15_000000_make_table_name_nullable_in_permissions_table',1),
	(14,'2017_03_06_000000_add_controller_to_data_types_table',1),
	(15,'2017_04_21_000000_add_order_to_data_rows_table',1),
	(16,'2017_07_05_210000_add_policyname_to_data_types_table',1),
	(17,'2017_08_05_000000_add_group_to_settings_table',1),
	(18,'2017_11_26_013050_add_user_role_relationship',1),
	(19,'2017_11_26_015000_create_user_roles_table',1),
	(20,'2018_03_11_000000_add_user_settings',1),
	(21,'2018_03_14_000000_add_details_to_data_types_table',1),
	(22,'2018_03_16_000000_make_settings_value_nullable',1),
	(23,'2019_08_19_000000_create_failed_jobs_table',1),
	(24,'2019_12_14_000001_create_personal_access_tokens_table',1);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table notifications
# ------------------------------------------------------------

DROP TABLE IF EXISTS `notifications`;

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) unsigned NOT NULL,
  `push_new_mach` tinyint(1) NOT NULL DEFAULT '1',
  `push_messages` tinyint(1) NOT NULL DEFAULT '1',
  `push_friend_recording` tinyint(1) NOT NULL DEFAULT '1',
  `push_only_news` tinyint(1) NOT NULL DEFAULT '1',
  `mail_new_mach` tinyint(1) NOT NULL DEFAULT '1',
  `mail_messages` tinyint(1) NOT NULL DEFAULT '1',
  `mail_friend_recording` tinyint(1) NOT NULL DEFAULT '1',
  `mail_only_news` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uid` (`uid`),
  CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `app_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;

INSERT INTO `notifications` (`id`, `uid`, `push_new_mach`, `push_messages`, `push_friend_recording`, `push_only_news`, `mail_new_mach`, `mail_messages`, `mail_friend_recording`, `mail_only_news`, `created_at`, `updated_at`)
VALUES
	(3,1,1,1,1,1,1,1,1,1,NULL,'2021-09-09 14:41:19'),
	(4,19,1,1,1,1,1,1,1,1,'2021-09-10 05:36:18','2021-09-10 05:36:18'),
	(5,23,1,1,1,1,1,1,1,1,'2021-09-24 05:12:21','2021-09-24 05:12:21'),
	(6,24,1,1,1,1,1,1,1,1,'2021-09-24 12:38:29','2021-09-24 12:38:29'),
	(7,25,1,1,1,1,1,1,1,1,'2021-09-24 15:10:23','2021-09-24 15:10:23'),
	(8,26,1,1,1,1,1,1,1,1,'2021-09-24 15:11:58','2021-09-24 15:11:58'),
	(9,27,1,1,1,1,1,1,1,1,'2021-09-24 15:12:10','2021-09-24 15:12:10'),
	(10,28,1,1,1,1,1,1,1,1,'2021-09-24 15:12:22','2021-09-24 15:12:22'),
	(11,29,1,1,1,1,1,1,1,1,'2021-10-16 18:31:51','2021-10-16 18:31:51'),
	(12,33,0,1,1,1,1,1,1,1,'2021-12-31 21:17:11','2021-12-31 21:17:11'),
	(13,35,1,1,1,1,1,1,1,1,'2022-01-01 07:50:21','2022-01-01 07:50:21'),
	(14,36,1,1,1,1,1,1,1,1,'2022-01-01 08:07:21','2022-01-01 08:07:21'),
	(15,37,1,1,1,1,1,1,1,1,'2022-01-01 08:09:11','2022-01-01 08:09:11'),
	(16,38,1,1,1,1,1,1,1,1,'2022-01-01 08:34:13','2022-01-01 08:34:13'),
	(17,39,1,1,1,1,1,1,1,1,'2022-01-01 08:44:50','2022-01-01 08:44:50'),
	(18,40,1,1,1,1,1,1,1,1,'2022-01-01 09:35:03','2022-01-01 09:35:03'),
	(19,41,1,0,1,1,1,1,1,1,'2022-01-01 09:42:35','2022-04-02 18:42:15');

/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table password_resets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;

INSERT INTO `password_resets` (`email`, `token`, `created_at`)
VALUES
	('saytoonz05@gmail.com','$2y$10$wH1ZbYp0cgYSqMH9IWAiK.NqtOZRmB8c2/kGjOfB9WKmGNjEuSv5W','2022-05-18 09:59:37');

/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table permission_role
# ------------------------------------------------------------

DROP TABLE IF EXISTS `permission_role`;

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `permission_role` WRITE;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;

INSERT INTO `permission_role` (`permission_id`, `role_id`)
VALUES
	(1,1),
	(2,1),
	(3,1),
	(4,1),
	(5,1),
	(6,1),
	(7,1),
	(8,1),
	(9,1),
	(10,1),
	(11,1),
	(12,1),
	(13,1),
	(14,1),
	(15,1),
	(16,1),
	(17,1),
	(18,1),
	(19,1),
	(20,1),
	(21,1),
	(22,1),
	(23,1),
	(24,1),
	(25,1);

/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table permissions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `permissions`;

CREATE TABLE `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`)
VALUES
	(1,'browse_admin',NULL,'2021-09-19 07:14:52','2021-09-19 07:14:52'),
	(2,'browse_bread',NULL,'2021-09-19 07:14:52','2021-09-19 07:14:52'),
	(3,'browse_database',NULL,'2021-09-19 07:14:52','2021-09-19 07:14:52'),
	(4,'browse_media',NULL,'2021-09-19 07:14:52','2021-09-19 07:14:52'),
	(5,'browse_compass',NULL,'2021-09-19 07:14:52','2021-09-19 07:14:52'),
	(6,'browse_menus','menus','2021-09-19 07:14:52','2021-09-19 07:14:52'),
	(7,'read_menus','menus','2021-09-19 07:14:52','2021-09-19 07:14:52'),
	(8,'edit_menus','menus','2021-09-19 07:14:52','2021-09-19 07:14:52'),
	(9,'add_menus','menus','2021-09-19 07:14:52','2021-09-19 07:14:52'),
	(10,'delete_menus','menus','2021-09-19 07:14:52','2021-09-19 07:14:52'),
	(11,'browse_roles','roles','2021-09-19 07:14:52','2021-09-19 07:14:52'),
	(12,'read_roles','roles','2021-09-19 07:14:52','2021-09-19 07:14:52'),
	(13,'edit_roles','roles','2021-09-19 07:14:52','2021-09-19 07:14:52'),
	(14,'add_roles','roles','2021-09-19 07:14:52','2021-09-19 07:14:52'),
	(15,'delete_roles','roles','2021-09-19 07:14:52','2021-09-19 07:14:52'),
	(16,'browse_users','users','2021-09-19 07:14:52','2021-09-19 07:14:52'),
	(17,'read_users','users','2021-09-19 07:14:52','2021-09-19 07:14:52'),
	(18,'edit_users','users','2021-09-19 07:14:52','2021-09-19 07:14:52'),
	(19,'add_users','users','2021-09-19 07:14:52','2021-09-19 07:14:52'),
	(20,'delete_users','users','2021-09-19 07:14:52','2021-09-19 07:14:52'),
	(21,'browse_settings','settings','2021-09-19 07:14:52','2021-09-19 07:14:52'),
	(22,'read_settings','settings','2021-09-19 07:14:52','2021-09-19 07:14:52'),
	(23,'edit_settings','settings','2021-09-19 07:14:52','2021-09-19 07:14:52'),
	(24,'add_settings','settings','2021-09-19 07:14:52','2021-09-19 07:14:52'),
	(25,'delete_settings','settings','2021-09-19 07:14:52','2021-09-19 07:14:52');

/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table personal_access_tokens
# ------------------------------------------------------------

DROP TABLE IF EXISTS `personal_access_tokens`;

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table premium
# ------------------------------------------------------------

DROP TABLE IF EXISTS `premium`;

CREATE TABLE `premium` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) unsigned NOT NULL,
  `premium_active` tinyint(1) NOT NULL DEFAULT '0',
  `super_likes` int(11) NOT NULL DEFAULT '0',
  `incognito_mode` tinyint(1) NOT NULL DEFAULT '0',
  `boost` tinyint(1) NOT NULL DEFAULT '0',
  `recommendations` text NOT NULL,
  `country` text,
  `city` text,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uid` (`uid`),
  CONSTRAINT `premium_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `app_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `premium` WRITE;
/*!40000 ALTER TABLE `premium` DISABLE KEYS */;

INSERT INTO `premium` (`id`, `uid`, `premium_active`, `super_likes`, `incognito_mode`, `boost`, `recommendations`, `country`, `city`, `updated_at`, `created_at`)
VALUES
	(1,2,0,10,1,0,'','UK','London','2021-09-09 15:02:21',NULL),
	(3,19,0,0,0,0,'3','Ghana','East Legon','2021-09-10 05:32:18','2021-09-10 05:32:18'),
	(4,1,0,10,1,0,'3','Ghana','East Legon','2021-12-20 21:01:41','2021-09-15 03:01:49'),
	(5,24,0,0,0,0,'4','country','city','2021-09-24 12:38:29','2021-09-24 12:38:29'),
	(6,25,0,0,0,0,'4','country','city','2021-09-24 15:10:23','2021-09-24 15:10:23'),
	(7,26,0,0,0,0,'4','country','city','2021-09-24 15:11:58','2021-09-24 15:11:58'),
	(8,27,0,0,0,0,'4','country','city','2021-09-24 15:12:10','2021-09-24 15:12:10'),
	(9,28,0,0,0,0,'4','country','city','2021-09-24 15:12:22','2021-09-24 15:12:22'),
	(10,29,0,0,0,0,'4','country','city','2021-10-16 18:31:51','2021-10-16 18:31:51'),
	(11,33,0,0,0,0,'1','Ghana','Accra','2021-12-31 21:17:11','2021-12-31 21:17:11'),
	(12,35,0,0,0,0,'1','Ghana','Accra','2022-01-01 07:50:21','2022-01-01 07:50:21'),
	(13,36,0,0,0,0,'1','Ghana','Accra','2022-01-01 08:07:21','2022-01-01 08:07:21'),
	(14,37,0,0,0,0,'1','Ghana','Accra','2022-01-01 08:09:11','2022-01-01 08:09:11'),
	(15,38,0,0,0,0,'1','Ghana','Accra','2022-01-01 08:34:13','2022-01-01 08:34:13'),
	(16,39,0,0,0,0,'1','Ghana','Accra','2022-01-01 08:44:50','2022-01-01 08:44:50'),
	(17,40,0,10,1,0,'1','Ghana','Accra','2022-02-27 21:19:38','2022-01-01 09:35:03'),
	(18,41,0,10,1,0,'1','Ghana','Accra','2022-01-15 19:24:22','2022-01-01 09:42:35');

/*!40000 ALTER TABLE `premium` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table recommendations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `recommendations`;

CREATE TABLE `recommendations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `recommender_fname` varchar(255) NOT NULL DEFAULT '',
  `recommender_sname` varchar(255) NOT NULL DEFAULT '',
  `recommender_phone` varchar(100) NOT NULL DEFAULT '',
  `recommender_email` varchar(255) NOT NULL DEFAULT '',
  `friend_name` varchar(255) NOT NULL DEFAULT '',
  `friend_phone` varchar(100) NOT NULL DEFAULT '',
  `how_you_know_friend` text NOT NULL,
  `why_great` text NOT NULL,
  `conversation_open` text NOT NULL,
  `recording_path` varchar(255) NOT NULL DEFAULT '',
  `recording_duration` int(11) DEFAULT '7',
  `sms_code` varchar(255) NOT NULL,
  `used_by` int(11) DEFAULT NULL,
  `date_used` varchar(100) DEFAULT '',
  `active` varchar(5) NOT NULL DEFAULT 'yes',
  `updated_at` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `recommendations` WRITE;
/*!40000 ALTER TABLE `recommendations` DISABLE KEYS */;

INSERT INTO `recommendations` (`id`, `recommender_fname`, `recommender_sname`, `recommender_phone`, `recommender_email`, `friend_name`, `friend_phone`, `how_you_know_friend`, `why_great`, `conversation_open`, `recording_path`, `recording_duration`, `sms_code`, `used_by`, `date_used`, `active`, `updated_at`, `created_at`)
VALUES
	(1,'Samuel','Issa Sukatu','+233200021686','sam@suka.issa','Berck Baafi','+233208457888','We studied together at KNUST many years ago and have been friends since.','Fatima is one of the funniest people I know. But she is also very kind and passionate about her hobbies, mountaineering and travelling. ','Ask her about anything, but not sports. She really hates soccer and she hates running.','/storage/user_data/recommendations/1640982422940.mp3',7,'SIGoDG',30,'January 1, 2022, 9:42 am','used','2022-02-03 06:42:13','2022-04-10 22:34:16'),
	(2,'Sam','Tuga','+233200021689','sam@suka.issa','Berck Baafi','+233208457888','We studied together at KNUST many years ago and have been friends since.','Fatima is one of the funniest people I know. But she is also very kind and passionate about her hobbies, mountaineering and travelling. ','Ask her about anything, but not sports. She really hates soccer and she hates running.','/storage/user_data/recommendations/1640982422940.mp3',7,'0kHW6T',40,'February 3, 2022, 7:00 am','yes','2022-02-03 07:11:20','2022-04-18 21:23:16'),
	(3,'Saytoonz','Nana Yaw','+233200021686','sam@suka.issa','Berck Baafi','+233540982746','We studied together at KNUST many years ago and have been friends since.','Fatima is one of the funniest people I know. But she is also very kind and passionate about her hobbies, mountaineering and travelling. ','Ask her about anything, but not sports. She really hates soccer and she hates running.','/storage/user_data/recommendations/1640982422940.mp3',7,'SIGoDq',30,'February 3, 2022, 7:02 am','used','2022-02-03 07:17:24','2022-04-10 22:33:59'),
	(4,'Samuel','Issa Sukatu','+233200021686','sam@suka.issa','Berck Baafi','+233548157455','Massa we all went to one school ok','Oh he is cool and hard work, he smiles a whole lot','Massa I\'m tired, no more questions please....','/storage/user_data/recommendations/1648594693428.mp3',7,'aKIm9z',NULL,'','yes','2022-03-29 22:59:04','2022-03-29 22:59:04');

/*!40000 ALTER TABLE `recommendations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table reports_premium
# ------------------------------------------------------------

DROP TABLE IF EXISTS `reports_premium`;

CREATE TABLE `reports_premium` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `primium_active` tinyint(1) NOT NULL DEFAULT '0',
  `super_likes` int(11) NOT NULL,
  `incognito_mode` tinyint(1) NOT NULL DEFAULT '0',
  `boost` tinyint(1) NOT NULL DEFAULT '0',
  `recommendations` text NOT NULL,
  `coutry` text NOT NULL,
  `city` text NOT NULL,
  `successful` tinyint(1) NOT NULL DEFAULT '1',
  `date_added` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `reports_premium` WRITE;
/*!40000 ALTER TABLE `reports_premium` DISABLE KEYS */;

INSERT INTO `reports_premium` (`id`, `uid`, `primium_active`, `super_likes`, `incognito_mode`, `boost`, `recommendations`, `coutry`, `city`, `successful`, `date_added`, `created_at`, `updated_at`)
VALUES
	(2,1,0,10,0,0,'','Ghana','Accra',0,'2021-08-16 18:56:57',NULL,NULL);

/*!40000 ALTER TABLE `reports_premium` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table roles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`)
VALUES
	(1,'admin','Administrator','2021-09-19 07:14:52','2021-09-19 07:14:52'),
	(2,'user','Normal User','2021-09-19 07:14:52','2021-09-19 07:14:52');

/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table security
# ------------------------------------------------------------

DROP TABLE IF EXISTS `security`;

CREATE TABLE `security` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `values_text` text NOT NULL,
  `keys_text` text NOT NULL,
  `date_addeddatte` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `active` varchar(3) NOT NULL DEFAULT 'yes',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table user_about
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_about`;

CREATE TABLE `user_about` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) unsigned NOT NULL,
  `height_cm` int(11) NOT NULL DEFAULT '180',
  `work_role` longtext COLLATE utf8mb4_unicode_ci,
  `work_organization` longtext COLLATE utf8mb4_unicode_ci,
  `edu_level` longtext COLLATE utf8mb4_unicode_ci,
  `edu_school` longtext COLLATE utf8mb4_unicode_ci,
  `interests` longtext COLLATE utf8mb4_unicode_ci,
  `fun_question_one` longtext COLLATE utf8mb4_unicode_ci,
  `fun_answer_one` longtext COLLATE utf8mb4_unicode_ci,
  `fun_question_two` longtext COLLATE utf8mb4_unicode_ci,
  `fun_answer_two` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uid` (`uid`),
  CONSTRAINT `user_about_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `app_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `user_about` WRITE;
/*!40000 ALTER TABLE `user_about` DISABLE KEYS */;

INSERT INTO `user_about` (`id`, `uid`, `height_cm`, `work_role`, `work_organization`, `edu_level`, `edu_school`, `interests`, `fun_question_one`, `fun_answer_one`, `fun_question_two`, `fun_answer_two`, `created_at`, `updated_at`)
VALUES
	(1,1,147,'adsfdg',NULL,NULL,NULL,'?‍♀️ Meditating:,?️ Indoors:,? Music:,? Youtube:,?‍? Space','I am guilty of ......','hgjjjkk',NULL,NULL,NULL,'2021-12-20 21:03:17'),
	(2,2,0,'','','','','?‍♀️ Meditating:,?️ Indoors:,? Music:,? Youtube:,?‍? Space','','','','',NULL,NULL),
	(3,19,180,NULL,NULL,NULL,NULL,'?‍♀️ Meditating:,?️ Indoors:,? Music:,? Youtube:,?‍? Space',NULL,NULL,NULL,NULL,'2021-09-10 05:15:36','2021-09-10 05:15:36'),
	(4,23,180,'','','','','?‍♀️ Meditating:,?️ Indoors:,? Music:,? Youtube:,?‍? Space','','','','','2021-09-24 05:12:21','2021-09-24 05:12:21'),
	(5,24,180,'','','','','?‍♀️ Meditating:,?️ Indoors:,? Music:,? Youtube:,?‍? Space','','','','','2021-09-24 12:38:29','2021-09-24 12:38:29'),
	(6,25,180,'','','','','?‍♀️ Meditating:,?️ Indoors:,? Music:,? Youtube:,?‍? Space','','','','','2021-09-24 15:10:23','2021-09-24 15:10:23'),
	(7,26,180,'','','','','?‍♀️ Meditating:,?️ Indoors:,? Music:,? Youtube:,?‍? Space','','','','','2021-09-24 15:11:58','2021-09-24 15:11:58'),
	(8,27,180,'','','','','?‍♀️ Meditating:,?️ Indoors:,? Music:,? Youtube:,?‍? SpaceCats','','','','','2021-09-24 15:12:10','2021-09-24 15:12:10'),
	(9,28,180,'','','','','?‍♀️ Meditating:,?️ Indoors:,? Music:,? Youtube:,?‍? SpaceCats','','','','','2021-09-24 15:12:22','2021-09-24 15:12:22'),
	(10,29,180,'','','','','?‍♀️ Meditating:,?️ Indoors:,? Music:,? Youtube:,?‍? Space','','','','','2021-10-16 18:31:51','2021-10-16 18:31:51'),
	(11,30,180,NULL,NULL,NULL,NULL,'?‍♀️ Meditating:,?️ Indoors:,? Music:,? Youtube:,?‍? Space',NULL,NULL,NULL,NULL,'2021-12-31 21:02:21','2021-12-31 21:02:21'),
	(12,31,180,NULL,NULL,NULL,NULL,'?‍♀️ Meditating:,?️ Indoors:,? Music:,? Youtube:,?‍? Space',NULL,NULL,NULL,NULL,'2021-12-31 21:06:21','2021-12-31 21:06:21'),
	(13,32,180,NULL,NULL,NULL,NULL,'?‍♀️ Meditating:,?️ Indoors:,? Music:,? Youtube:,?‍? Space',NULL,NULL,NULL,NULL,'2021-12-31 21:08:21','2021-12-31 21:08:21'),
	(14,33,180,'','','','','?‍♀️ Meditating:,?️ Indoors:,? Music:,? Youtube:,?‍? Space','','','','','2021-12-31 21:17:11','2021-12-31 21:17:11'),
	(15,34,180,NULL,NULL,NULL,NULL,'?‍♀️ Meditating:,?️ Indoors:,? Music:,? Youtube:,?‍? Space',NULL,NULL,NULL,NULL,'2022-01-01 07:30:17','2022-01-01 07:30:17'),
	(16,35,180,'','','','','?‍♀️ Meditating:,?️ Indoors:,? Music:,? Youtube:,?‍? Space','','','','','2022-01-01 07:50:21','2022-01-01 07:50:21'),
	(17,36,180,'','','','','?‍♀️ Meditating:,?️ Indoors:,? Music:,? Youtube:,?‍? Space','','','','','2022-01-01 08:07:21','2022-01-01 08:07:21'),
	(18,37,180,'The manager of Tech Department','X-ride Technologies and Logistics LTD','University Diploma','Kwame Nkruman University of Science and Technology, Kumasi','?‍♀️ Meditating:,?️ Indoors:,? Music:,? Youtube:,?‍? Space','What is your favorite travel destination?','Hawaii! I have seen the pictures of the volcanoes and I would like to visit Honolulu','For sometimes ','I will not say a word!!!','2022-01-01 08:09:11','2022-01-01 08:09:11'),
	(19,38,180,'','','','','?‍♀️ Meditating:,?️ Indoors:,? Music:,? Youtube:,?‍? Space','','','','','2022-01-01 08:34:13','2022-01-01 08:34:13'),
	(20,39,180,'work','work work works','School','Schooling school','?‍♀️ Meditating:,?️ Indoors:,? Music:,? Youtube:,?‍? Space','A person I learn a lot from is....','Elon','From time to time it is good to....','smile','2022-01-01 08:44:50','2022-01-01 09:23:30'),
	(21,40,180,'CEO','Nsromapa','BSc','UNER','? Music:,?‍♀️ Meditating:,?️ Indoors:,? Youtube:,?‍? Space','A person I learn a lot from is....','Elon','From time to time it is good to....','Smile','2022-01-01 09:35:03','2022-01-01 09:35:05'),
	(22,41,174,'CEO','Nsromapa Corporation','BSc','UNER','?‍? Space:,? Youtube:,?‍♀️ Meditating:,?️ Indoors:,? Music','From time to time it is good to....','Elon Musk','Have I told you....?','to smile alwaysssss ss','2022-01-01 09:42:35','2022-04-13 22:40:02');

/*!40000 ALTER TABLE `user_about` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table user_likes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_likes`;

CREATE TABLE `user_likes` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `from` int(11) DEFAULT NULL,
  `to` int(11) DEFAULT NULL,
  `isliked` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `user_likes` WRITE;
/*!40000 ALTER TABLE `user_likes` DISABLE KEYS */;

INSERT INTO `user_likes` (`id`, `from`, `to`, `isliked`, `created_at`, `updated_at`)
VALUES
	(2,19,41,1,'2022-04-14 01:07:05','2022-04-14 01:07:05'),
	(3,39,41,1,'2022-04-14 01:07:06','2022-04-14 01:07:06'),
	(4,36,41,1,'2022-04-14 01:07:08','2022-04-14 01:07:08'),
	(5,23,41,1,'2022-04-14 01:37:59','2022-04-14 01:37:59'),
	(6,40,41,1,'2022-04-14 01:38:00','2022-04-14 01:38:00'),
	(7,38,41,1,'2022-04-14 01:38:02','2022-04-14 01:38:02'),
	(8,29,41,1,'2022-04-14 01:38:05','2022-04-14 01:38:05'),
	(9,31,41,1,'2022-04-14 01:38:06','2022-04-14 01:38:06'),
	(10,25,41,1,'2022-04-14 01:38:08','2022-04-14 01:38:08'),
	(11,26,41,1,'2022-04-14 01:38:09','2022-04-14 01:38:09'),
	(12,2,41,0,'2022-04-14 01:38:10','2022-04-14 01:38:10'),
	(13,32,41,1,'2022-04-14 01:38:12','2022-04-14 01:38:12'),
	(14,30,41,1,'2022-04-14 01:38:13','2022-04-14 01:38:13'),
	(15,37,41,1,'2022-04-14 01:38:14','2022-04-14 01:38:14'),
	(16,33,41,1,'2022-04-14 01:38:15','2022-04-14 01:38:15'),
	(17,24,41,1,'2022-04-14 01:38:17','2022-04-14 01:38:17'),
	(18,1,41,1,'2022-04-14 01:38:18','2022-04-14 01:38:18'),
	(19,34,41,1,'2022-04-14 01:38:19','2022-04-14 01:38:19'),
	(20,28,41,1,'2022-04-14 01:38:21','2022-04-14 01:38:21'),
	(21,41,30,1,'2022-04-14 01:41:30','2022-04-14 01:41:30'),
	(22,41,32,1,'2022-04-14 01:41:37','2022-04-14 01:41:37'),
	(23,41,28,1,'2022-04-14 01:41:40','2022-04-14 01:41:40'),
	(24,41,34,1,'2022-04-14 01:41:44','2022-04-14 01:41:44'),
	(25,41,23,1,'2022-04-14 01:41:46','2022-04-14 01:41:46');

/*!40000 ALTER TABLE `user_likes` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table user_media
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_media`;

CREATE TABLE `user_media` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) unsigned NOT NULL,
  `photo_1` varchar(255) DEFAULT NULL,
  `photo_2` varchar(255) DEFAULT NULL,
  `photo_3` varchar(255) DEFAULT NULL,
  `photo_4` varchar(255) DEFAULT NULL,
  `photo_5` varchar(255) DEFAULT NULL,
  `photo_6` varchar(255) DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uid` (`uid`),
  CONSTRAINT `user_media_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `app_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `user_media` WRITE;
/*!40000 ALTER TABLE `user_media` DISABLE KEYS */;

INSERT INTO `user_media` (`id`, `uid`, `photo_1`, `photo_2`, `photo_3`, `photo_4`, `photo_5`, `photo_6`, `created_at`, `updated_at`)
VALUES
	(1,1,'/storage/user_data/profilePhotos/1641029704993.jpg','','','','','',NULL,NULL),
	(2,2,'/storage/user_data/profilePhotos/1641023421920.jpg','','','','','',NULL,NULL),
	(5,19,'/storage/user_data/profilePhotos/1641029704897.jpg','','','','','','2021-09-10 05:08:52','2021-09-10 05:08:52'),
	(6,23,'/storage/user_data/profilePhotos/1641029704993.jpg','','','','','','2021-09-24 05:12:21','2021-09-24 05:12:21'),
	(7,24,'/storage/user_data/profilePhotos/1641029704897.jpg','','','','','','2021-09-24 12:38:29','2021-09-24 12:38:29'),
	(8,25,'/storage/user_data/profilePhotos/1641023421920.jpg','','','','','','2021-09-24 15:10:23','2021-09-24 15:10:23'),
	(9,26,'/storage/user_data/profilePhotos/1641026690626.jpg','','','','','','2021-09-24 15:11:58','2021-09-24 15:11:58'),
	(10,27,'/storage/user_data/profilePhotos/1641023421920.jpg','','','','','','2021-09-24 15:12:10','2021-09-24 15:12:10'),
	(11,28,'/storage/user_data/profilePhotos/1641029704897.jpg','','','','','','2021-09-24 15:12:22','2021-09-24 15:12:22'),
	(12,29,'/storage/user_data/profilePhotos/1641026690626.jpg','','','','','','2021-10-16 18:31:51','2021-10-16 18:31:51'),
	(13,30,'/storage/user_data/profilePhotos/1641023421920.jpg',NULL,'',NULL,NULL,'','2021-12-31 21:02:21','2021-12-31 21:02:21'),
	(14,31,'/storage/user_data/profilePhotos/1641023421920.jpg',NULL,NULL,NULL,NULL,'','2021-12-31 21:06:21','2021-12-31 21:06:21'),
	(15,32,'/storage/user_data/profilePhotos/1641029704897.jpg',NULL,NULL,NULL,NULL,'','2021-12-31 21:08:21','2021-12-31 21:08:21'),
	(16,33,'/storage/user_data/profilePhotos/1641029704897.jpg','','','','','','2021-12-31 21:17:11','2021-12-31 21:17:11'),
	(17,34,'/storage/user_data/profilePhotos/1641029704993.jpg',NULL,NULL,NULL,NULL,'','2022-01-01 07:30:17','2022-01-01 07:30:17'),
	(18,35,'/storage/user_data/profilePhotos/1641029704897.jpg','/storage/user_data/profilePhotos/1641023421920.jpg',NULL,NULL,NULL,NULL,'2022-01-01 07:50:21','2022-01-01 08:04:14'),
	(19,36,'/storage/user_data/profilePhotos/1641029704897.jpg','','','','','','2022-01-01 08:07:21','2022-01-01 08:07:21'),
	(20,37,'/storage/user_data/profilePhotos/1641023421920.jpg','/storage/user_data/profilePhotos/1641023421920.jpg',NULL,NULL,NULL,NULL,'2022-01-01 08:09:11','2022-01-01 08:19:06'),
	(21,38,'/storage/user_data/profilePhotos/1641023421920.jpg','/storage/user_data/profilePhotos/1641026054016.jpg',NULL,NULL,NULL,NULL,'2022-01-01 08:34:13','2022-01-01 08:34:13'),
	(22,39,'/storage/user_data/profilePhotos/1641023421920.jpg','/storage/user_data/profilePhotos/1641026690626.jpg','/storage/user_data/profilePhotos/1641026690727.jpg',NULL,NULL,NULL,'2022-01-01 08:44:50','2022-01-01 08:44:50'),
	(23,40,'/storage/user_data/profilePhotos/1641029704897.jpg','/storage/user_data/profilePhotos/1641029704897.jpg','/storage/user_data/profilePhotos/1641029704993.jpg',NULL,NULL,NULL,'2022-01-01 09:35:03','2022-01-01 09:35:04'),
	(24,41,'/storage/user_data/profilePhotos/1641023421920.jpg','/storage/user_data/profilePhotos/1641030155366.jpg','/storage/user_data/profilePhotos/1648932351564.jpg','/storage/user_data/profilePhotos/1648932351668.jpg',NULL,NULL,'2022-01-01 09:42:35','2022-04-02 22:43:32');

/*!40000 ALTER TABLE `user_media` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table user_roles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_roles`;

CREATE TABLE `user_roles` (
  `user_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_roles_user_id_index` (`user_id`),
  KEY `user_roles_role_id_index` (`role_id`),
  CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table user_utils
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_utils`;

CREATE TABLE `user_utils` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) unsigned NOT NULL,
  `interested` longtext COMMENT 'People that the user has liked',
  `not_interested` longtext COMMENT 'People the user dislike',
  `likers` longtext COMMENT 'People who like this user',
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uid` (`uid`),
  CONSTRAINT `user_utils_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `app_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `user_utils` WRITE;
/*!40000 ALTER TABLE `user_utils` DISABLE KEYS */;

INSERT INTO `user_utils` (`id`, `uid`, `interested`, `not_interested`, `likers`, `updated_at`, `created_at`)
VALUES
	(1,1,'','','',NULL,NULL),
	(2,2,'','','',NULL,NULL),
	(3,19,NULL,NULL,NULL,'2021-09-10 05:18:55','2021-09-10 05:18:55'),
	(4,30,NULL,NULL,NULL,'2021-12-31 21:02:21','2021-12-31 21:02:21'),
	(5,31,NULL,NULL,NULL,'2021-12-31 21:06:21','2021-12-31 21:06:21'),
	(6,32,NULL,NULL,NULL,'2021-12-31 21:08:21','2021-12-31 21:08:21'),
	(7,33,NULL,NULL,NULL,'2021-12-31 21:18:21','2021-12-31 21:18:21'),
	(8,34,NULL,NULL,NULL,'2022-01-01 07:30:17','2022-01-01 07:30:17'),
	(9,35,NULL,NULL,NULL,'2022-01-01 07:51:27','2022-01-01 07:51:27'),
	(10,36,NULL,NULL,NULL,'2022-01-01 08:07:27','2022-01-01 08:07:27'),
	(11,37,NULL,NULL,NULL,'2022-01-01 08:09:27','2022-01-01 08:09:27'),
	(12,38,NULL,NULL,NULL,'2022-01-01 08:34:27','2022-01-01 08:34:27'),
	(13,39,NULL,NULL,NULL,'2022-01-01 08:45:40','2022-01-01 08:45:40'),
	(14,41,NULL,NULL,NULL,'2022-01-01 10:05:36','2022-01-01 10:05:36');

/*!40000 ALTER TABLE `user_utils` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`),
  CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`)
VALUES
	(1,1,'Samuel Annin','saytoonz05@gmail.com','users/default.png',NULL,'$2y$10$.VEDNDwAvafSAoxqM9nu1.TueqsYW2rqADp52EEIZBtWPzZxpKX/K','Qk3gmXzNqwYmE3IudjmsjrPfa2iqBLJndbiRSKo9UjrF72ouObeE8DMd9rGc',NULL,'2021-09-19 20:49:31','2021-09-19 20:49:31'),
	(2,2,'Saytoon','rassay31@gmail.com','users/default.png',NULL,'$2y$10$cVHAv.5wEOxZULLenwkoXegy9VmWS/hacg6oAzm1Sf3p4pZDIno6q',NULL,NULL,'2022-04-15 23:45:53','2022-04-15 23:45:53'),
	(3,2,'SAMUEL ANIM-YEBOAH','rassay32@gmail.com','users/default.png',NULL,'$2y$10$XDkfwA.j8HICw7zvRjJ26eU.yqI9su1Bsv9SQMUmNEtg70lfWU8FW',NULL,NULL,'2022-05-18 10:12:21','2022-05-18 10:12:21');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table verified
# ------------------------------------------------------------

DROP TABLE IF EXISTS `verified`;

CREATE TABLE `verified` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) unsigned NOT NULL,
  `status` enum('Pending','Rejected','Verified','') NOT NULL,
  `image` text,
  `date_added` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_verified` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uid` (`uid`),
  CONSTRAINT `verified_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `app_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `verified` WRITE;
/*!40000 ALTER TABLE `verified` DISABLE KEYS */;

INSERT INTO `verified` (`id`, `uid`, `status`, `image`, `date_added`, `date_verified`, `created_at`, `updated_at`)
VALUES
	(1,1,'Pending','/storage/user_data/verificationPhotos/1640985433387.jpg','2021-07-16 14:52:43','','2022-01-01 09:35:03','2022-01-01 09:35:03'),
	(2,19,'Pending',NULL,'2021-09-10 05:26:06',NULL,'2021-09-10 05:26:06','2021-09-10 05:26:06'),
	(3,23,'Pending',NULL,'2021-09-24 05:12:21',NULL,'2021-09-24 05:12:21','2021-09-24 05:12:21'),
	(4,24,'Pending',NULL,'2021-09-24 12:38:29',NULL,'2021-09-24 12:38:29','2021-09-24 12:38:29'),
	(5,25,'Pending',NULL,'2021-09-24 15:10:23',NULL,'2021-09-24 15:10:23','2021-09-24 15:10:23'),
	(6,26,'Pending',NULL,'2021-09-24 15:11:58',NULL,'2021-09-24 15:11:58','2021-09-24 15:11:58'),
	(7,27,'Pending',NULL,'2021-09-24 15:12:10',NULL,'2021-09-24 15:12:10','2021-09-24 15:12:10'),
	(8,28,'Pending',NULL,'2021-09-24 15:12:22',NULL,'2021-09-24 15:12:22','2021-09-24 15:12:22'),
	(9,29,'Pending',NULL,'2021-10-16 18:31:51',NULL,'2021-10-16 18:31:51','2021-10-16 18:31:51'),
	(10,30,'Verified','/storage/user_data/verificationPhotos/1640985433387.jpg','2021-12-31 21:02:21','2022-01-01 08:09:11','2021-12-31 21:02:21','2021-12-31 21:02:21'),
	(11,31,'Pending',NULL,'2021-12-31 21:06:21',NULL,'2021-12-31 21:06:21','2021-12-31 21:06:21'),
	(12,32,'Pending',NULL,'2021-12-31 21:08:21',NULL,'2021-12-31 21:08:21','2021-12-31 21:08:21'),
	(13,33,'Pending',NULL,'2021-12-31 21:17:11',NULL,'2021-12-31 21:17:11','2021-12-31 21:17:11'),
	(14,34,'Pending',NULL,'2022-01-01 07:30:17',NULL,'2022-01-01 07:30:17','2022-01-01 07:30:17'),
	(15,35,'Pending',NULL,'2022-01-01 07:50:21',NULL,'2022-01-01 07:50:21','2022-01-01 07:50:21'),
	(16,36,'Pending',NULL,'2022-01-01 08:07:21',NULL,'2022-01-01 08:07:21','2022-01-01 08:07:21'),
	(17,37,'Verified','/storage/user_data/verificationPhotos/1640985433387.jpg','2022-01-01 08:09:11','2022-01-01 08:09:11','2022-01-01 08:09:11','2022-01-01 08:09:11'),
	(18,38,'Pending',NULL,'2022-01-01 08:34:13',NULL,'2022-01-01 08:34:13','2022-01-01 08:34:13'),
	(19,39,'Pending',NULL,'2022-01-01 08:44:50',NULL,'2022-01-01 08:44:50','2022-01-01 08:44:50'),
	(20,40,'Pending','/storage/user_data/verificationPhotos/1641090851516.jpg','2022-01-01 09:35:03',NULL,'2022-01-01 09:35:03','2022-01-01 09:35:03'),
	(21,41,'Pending','/storage/user_data/verificationPhotos/1641090851516.jpg','2022-01-01 09:42:35',NULL,'2022-01-01 09:42:35','2022-01-02 02:34:11'),
	(22,2,'Pending',NULL,'2022-01-01 09:35:03',NULL,'2022-01-01 09:35:03','2022-01-01 09:35:03');

/*!40000 ALTER TABLE `verified` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
