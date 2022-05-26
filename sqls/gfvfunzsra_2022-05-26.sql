# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.5.5-10.1.48-MariaDB-1~stretch)
# Database: gfvfunzsra
# Generation Time: 2022-05-26 17:54:37 +0000
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
  `max_km_distance` double DEFAULT '100000',
  `in_use_recommendation` int(11) DEFAULT '0',
  `last_update` varchar(100) DEFAULT '""',
  `active` varchar(5) NOT NULL DEFAULT 'yes',
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `noti_token` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `app_users` WRITE;
/*!40000 ALTER TABLE `app_users` DISABLE KEYS */;

INSERT INTO `app_users` (`id`, `fb_uid`, `phone`, `email`, `first_name`, `last_name`, `date_of_birth`, `city`, `country`, `current_address`, `gender`, `looking_for`, `age_range`, `max_km_distance`, `in_use_recommendation`, `last_update`, `active`, `updated_at`, `created_at`, `noti_token`)
VALUES
	(1,'OIkwGoypNGUy1KHpdeschFEQGFH3','+233208457888','saytoonz05@gmail.com','Samuel','Annin Yeboah','2002-01-19 00:00:00.000','Accra, Ghana','Ghana','{\"name\":\"Ga East\",\"street\":null,\"isoCountryCode\":\"GH\",\"country\":\"Ghana\",\"postalCode\":null,\"administrativeArea\":\"Greater Accra\",\"subAdministrativeArea\":null,\"locality\":\"Ga\",\"subLocality\":\"Ga East\",\"thoroughfare\":null,\"subThoroughfare\":null,\"lat\":\"5.665403497410626\",\"lng\":\"-0.20197846926767563\"}','Man','Both','18:,68',200,1,'January 2, 2022, 5:23 am','yes','2022-05-26 15:01:00','2022-01-02 05:23:08','cWgiE682qEMPiJiMWRHYlA:APA91bFZdj5m8dwJ_nPvsV3uEbJXzUt-gzqBfWXMzCAumkQ2nwk4-s-kStwHICGXhz0NnbKSz2lcidXl8Jn5WNR5l1aZIfLFGADoZAb9KJf2Upxyd_7imYo6JPDTKthh1yTpw43MT5xO'),
	(4,'S8hgjBspqFeWctLiQauvTfsoJMm2','+233540982746',NULL,'Berck','Baafi','2004-01-23 00:00:00.000','Accra','Ghana','{\"country\":\"Ghana\",\"subAdministrativeArea\":\"Accra\",\"lat\":\"5.665279655775657\",\"name\":\"Papao\",\"isoCountryCode\":\"GH\",\"locality\":\"Accra\",\"subLocality\":\"Papao\",\"administrativeArea\":\"Greater Accra\",\"lng\":\"-0.20193128736144797\"}','Man','Both','18:,25',200,2,'January 14, 2022, 11:20 am','yes','2022-01-14 12:04:35','2022-01-14 11:20:20',NULL),
	(5,'DMZslBKHB3TqoTFkCbiTpwHaONr2','+233504976456',NULL,'Naa','Teqa','2004-01-23 00:00:00.000','Accra','Ghana','{\"name\":\"Freie Universit\\u00e4t Berlin\",\"street\":\"Hechtgraben 11\",\"isoCountryCode\":\"DE\",\"country\":\"Germany\",\"postalCode\":\"14195\",\"administrativeArea\":null,\"subAdministrativeArea\":\"Berlin\",\"locality\":\"Berlin\",\"subLocality\":\"Steglitz-Zehlendorf\",\"thoroughfare\":\"Hechtgraben\",\"subThoroughfare\":\"11\",\"lat\":\"52.45646303039524\",\"lng\":\"13.295541423790306\"}','Woman','Men','18:,70',182,4,'January 17, 2022, 5:26 pm','yes','2022-04-27 14:01:20','2022-01-17 17:26:51',NULL),
	(6,'VO7b69THDdhrnp2ATedqVgEUhff2','+233501504152',NULL,'Per','Skare','2004-01-23 00:00:00.000','Accra','Ghana','{\"name\":\"Osu Close\",\"street\":\"Osu Close\",\"isoCountryCode\":\"GH\",\"country\":\"Ghana\",\"postalCode\":null,\"administrativeArea\":\"Greater Accra\",\"subAdministrativeArea\":null,\"locality\":\"Accra\",\"subLocality\":null,\"thoroughfare\":\"Osu Close\",\"subThoroughfare\":null,\"lat\":\"5.560736695091002\",\"lng\":\"-0.171903675004061\"}','Man','Both','18:,70',200,6,'January 17, 2022, 6:05 pm','yes','2022-05-21 11:39:54','2022-01-17 18:05:19',NULL),
	(7,'vB0z2GhpcfXdhEjH9s8um37gLwl2','+233553093730',NULL,'Kingsley','Twum','2001-07-22 00:00:00.000','capecoast','Ghana','{\"name\":\"Cape Coast\",\"street\":\"Unnamed Road\",\"isoCountryCode\":\"GH\",\"country\":\"Ghana\",\"postalCode\":null,\"administrativeArea\":\"Central\",\"subAdministrativeArea\":\"Cape Coast Metropolitan\",\"locality\":\"Cape Coast\",\"subLocality\":null,\"thoroughfare\":null,\"subThoroughfare\":null,\"lat\":\"5.1231202\",\"lng\":\"-1.2939746\"}','Man','Women','18:,25',200,8,'February 5, 2022, 9:24 am','yes','2022-03-06 21:36:03','2022-02-05 09:24:52',NULL),
	(8,'XMswT3l92KMiv190IxLsgaBnVTS2','+233553670706',NULL,'Kelvin','Brooks','1997-12-19 00:00:00.000','Accra','Ghana','\"\"','Man','Women','18:,70',100000,16,'May 10, 2022, 10:46 am','yes','2022-05-10 10:47:36','2022-05-10 10:46:41',NULL);

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
  `unread` int(11) DEFAULT '0',
  `status` enum('SEEN','SENT','DELIVERED','READ','DELETED') COLLATE utf8mb4_unicode_ci DEFAULT 'SENT',
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `chat_lists` WRITE;
/*!40000 ALTER TABLE `chat_lists` DISABLE KEYS */;

INSERT INTO `chat_lists` (`id`, `owner`, `to`, `from`, `type`, `message`, `unread`, `status`, `updated_at`, `created_at`)
VALUES
	(1,6,5,6,'image','/storage/user_data/chatImages/1651210844792.jpg',0,'SENT','2022-04-29 05:40:52','2022-04-27 14:03:18'),
	(2,5,6,5,'image','/storage/user_data/chatImages/1651210844792.jpg',7,'SENT','2022-04-29 05:40:52','2022-04-27 14:03:18');

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
	(1,6,5,'text','testing','SEEN','2022-04-27 14:06:22','2022-04-27 14:03:18'),
	(2,6,5,'image','/storage/user_data/chatImages/1651068205937.jpg','SEEN','2022-04-27 14:06:22','2022-04-27 14:03:28'),
	(3,6,5,'audio','/storage/user_data/chatAudios/1651068210808.mp3','SEEN','2022-04-27 14:06:22','2022-04-27 14:03:40'),
	(4,6,5,'text','try to reply','SEEN','2022-04-27 14:06:22','2022-04-27 14:03:47'),
	(5,5,6,'text','the app says I should say hello so “hello”','SEEN','2022-04-27 14:06:38','2022-04-27 14:06:36'),
	(6,6,5,'text','😀😄','SENT','2022-04-27 14:06:43','2022-04-27 14:06:43'),
	(7,6,5,'text','yeah now u are an obidient german','SENT','2022-04-27 14:06:54','2022-04-27 14:06:54'),
	(8,6,5,'text','kill the jews','SENT','2022-04-27 14:07:01','2022-04-27 14:07:01'),
	(9,6,5,'text','👩‍💻','SENT','2022-04-27 14:07:10','2022-04-27 14:07:10'),
	(10,6,5,'text','lady T!','SENT','2022-04-29 05:40:50','2022-04-29 05:40:50'),
	(11,6,5,'text','how is life, wife? 🎂','SENT','2022-04-29 05:40:50','2022-04-29 05:40:50'),
	(12,6,5,'image','/storage/user_data/chatImages/1651210844792.jpg','SENT','2022-04-29 05:40:52','2022-04-29 05:40:52');

/*!40000 ALTER TABLE `chats` ENABLE KEYS */;
UNLOCK TABLES;


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
	(1,6,5,'2022-04-27 14:01:24','2022-04-27 14:01:24');

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
	(1,'2014_10_12_000000_create_users_table',1);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


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
	(1,1,1,1,1,1,1,1,1,1,'2022-01-02 05:23:08','2022-04-05 23:57:01'),
	(5,4,1,1,1,1,1,1,1,1,'2022-01-14 11:20:20','2022-01-14 11:20:20'),
	(6,5,1,1,1,1,1,1,1,1,'2022-01-17 17:26:51','2022-01-17 17:26:51'),
	(7,6,1,1,1,1,1,1,1,1,'2022-01-17 18:05:19','2022-01-17 18:05:19'),
	(8,7,1,1,1,1,1,1,1,1,'2022-02-05 09:24:52','2022-02-05 09:24:52'),
	(9,8,1,1,1,1,1,1,1,1,'2022-05-10 10:46:41','2022-05-10 10:46:41');

/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table password_resets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;

INSERT INTO `password_resets` (`email`, `token`, `created_at`)
VALUES
	('saytoonz05@gmail.com','$2y$10$C5N9B5YV5JVvR./0OgteOeMvxcz2aFT5KduR9H46llsyBSEP37qhy','2022-05-18 10:50:25');

/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;


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
	(1,1,0,10,1,0,'1','Ghana','Accra','2022-01-02 07:33:34','2022-01-02 05:23:08'),
	(6,4,0,0,0,0,'2','Ghana','Accra','2022-01-14 11:20:20','2022-01-14 11:20:20'),
	(7,5,0,0,0,0,'4','Ghana','Accra','2022-01-17 17:26:51','2022-01-17 17:26:51'),
	(8,6,0,10,1,0,'6','Ghana','Accra','2022-01-17 18:42:18','2022-01-17 18:05:19'),
	(9,7,0,10,1,0,'8','Ghana','capecoast','2022-02-05 09:36:08','2022-02-05 09:24:52'),
	(10,8,0,0,0,0,'16','Ghana','Accra','2022-05-10 10:46:41','2022-05-10 10:46:41');

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
  `recording_duration` int(11) DEFAULT '1',
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
	(1,'Samuel','Issa Sukatu','+233200021686','sam@suka.issa','Berck Baafi','+233208457888','Massa we all went to one school ok','Oh he is cool and hard work, he smiles a whole lot','Massa I\'m tired, no more questions please....','/storage/user_data/recommendations/1641098549573.mp3',8,'SIGoDG',1,'January 2, 2022, 5:23 am','used','2022-01-02 05:23:08','2022-04-04 04:25:14'),
	(2,'Nana','Yaw','+233208457888','saytoonz05@gmail.com','Baafi Berck','+233540982746','We went to the same basic school','He is very intelligent and has a sense of humor','Talk about YouTube blogging','/storage/user_data/recommendations/1642154718709.mp3',20,'12345a',4,'January 14, 2022, 11:20 am','used','2022-01-14 11:20:20','2022-04-04 04:25:32'),
	(3,'Sam','Sayt','+233208457888','saytoonz05@gmail.com','Brother Harry','+233200021686','School mate','Very lively and funny','Talk about football','/storage/user_data/recommendations/1642439609894.mp3',10,'avcuHG',NULL,'','yes','2022-01-17 17:14:00','2022-04-04 04:25:48'),
	(4,'Naa','Resa','+233547616824','cynthessien@gmail.com','Naa','+233504976456','From college','She’s fun and always in high spirits','What’s up with you now?','/storage/user_data/recommendations/1642440022969.mp3',60,'Fm7sNx',5,'January 17, 2022, 5:26 pm','used','2022-01-17 17:26:51','2022-04-04 04:26:05'),
	(5,'Per Kjetil','skare','+47501504152','perkjetilskare@gmail.com','Fredrik Hunstad','+23346474500','He is my best Norwegian friend. We met in Osloin 2010','He is always friendly, has a great mind, very smart','Ask him about Julian Casablancas','/storage/user_data/recommendations/1642440265217.mp3',26,'GC2itH',NULL,'','yes','2022-01-17 17:24:57','2022-04-26 23:44:08'),
	(6,'Jonas','Braathen','+23341465060','jonas.braathen.2@gmail.com','Per Skare','+233501504152','School','He is a funny guy and kind','ask him about the strokes','/storage/user_data/recommendations/1642442507781.mp3',24,'CMI5yU',6,'January 17, 2022, 6:05 pm','used','2022-01-17 18:05:19','2022-04-04 04:26:39'),
	(7,'hiijbddgf','vhjigcbnkhv','+233208457888','say@xc.chj','artyubcjpig jjgfgid','+23328545608','fujvxtifdhj h fsi bjjd kpof. k.   or.  purx','shyyhko FSA kdnhd logx gursuib buyf hdajl','uurdxvn yhjf kusa kkp kids','/storage/user_data/recommendations/1643972836553.mp4',23,'ntWsoj',NULL,'','yes','2022-02-04 11:08:43','2022-04-04 04:26:53'),
	(8,'Kofi Birikorang','Twum','+233549983881','kingsleytwum74@gmail.com','Kingsley Twum','+233553093730','He had been my friend since childhood','He has a great personality and he\'s very fun to be with','tell me more about yourself','/storage/user_data/recommendations/1644050288381.mp4',60,'p78xnd',7,'February 5, 2022, 9:24 am','used','2022-02-05 09:24:52','2022-04-04 04:27:06'),
	(9,'Noëmi','Rhy','+41793770204','noemirhyner@protonmail.com','Laura','+233793770204','School','Knows the best places in Lyon','Can cook better and squat heavier than you!','/storage/user_data/recommendations/1650224376285.mp3',20,'Blk0if',NULL,'','yes','2022-04-17 19:40:33','2022-04-17 19:40:33'),
	(10,'Noëmi','Rhy','+41629281417','noemirhyner@protonmail.com','Laura','+233793770204','School','Knows best spots in Lyon','Can cook better and squat heavier than you!','/storage/user_data/recommendations/1650282703276.mp3',20,'Nb7dEE',NULL,'','yes','2022-04-18 11:52:12','2022-04-18 11:52:12'),
	(11,'Claudia','Mattle','+41793678108','claudia.mattle24@gmail.com','Noëmi','+41793770204','School','Noëmi is loyal, trustworthy, irreplaceable and optimistic.','She loves swimming in the night in the lake.','/storage/user_data/recommendations/1650830513586.mp3',34,'Y3HKBA',NULL,'','yes','2022-04-24 20:03:20','2022-04-24 20:03:20'),
	(12,'Claudia','Mattle','+41793678108','claudia.mattle24@gmail.com','Noëmi','+41629281417','School','Noëmi is loyal, trustworthy, irreplaceable and optimistic.','She loves swimming in the night in the lake.','/storage/user_data/recommendations/1650831724862.mp3',30,'gQaDdJ',NULL,'','yes','2022-04-24 20:22:57','2022-04-24 20:22:57'),
	(13,'Samuel','Issa Sukatu','+233208457888','sam@suka.issa','Berck Baafi','+47501504152','Massa we all went to one school ok','Oh he is cool and hard work, he smiles a whole lot','Massa I\'m tired, no more questions please....','/storage/user_data/recommendations/1651016654120.mp3',24,'5FtO38',NULL,'','yes','2022-04-26 23:44:46','2022-04-26 23:44:46'),
	(14,'Samuel','Issa Sukatu','+233208457888','sam@suka.issa','Berck Baafi','+33501504152','Massa we all went to one school ok','Oh he is cool and hard work, he smiles a whole lot','Massa I\'m tired, no more questions please....','/storage/user_data/recommendations/1651016774355.mp3',22,'5TgYGK',NULL,'','yes','2022-04-26 23:46:40','2022-04-26 23:46:40'),
	(15,'Laura','Rh','+41793770204','noemilaurar@gmx.ch','Noe','+33629281417','School','... ahshhd hdhehjdh shhebd','... hehdjdj jdhehdjr','/storage/user_data/recommendations/1651125183944.mp3',21,'rc0db1',NULL,'','yes','2022-04-28 05:53:28','2022-04-28 05:53:28'),
	(16,'Nana','Ahenkan','+233507118457','medi1alpha@gmail.com','Kelvin','+233553670706','Work Colleagues','great sense of humor','As the life of the party, I want you to bring a spark to this app','/storage/user_data/recommendations/1652179377492.mp3',23,'V6JmzN',8,'May 10, 2022, 10:46 am','used','2022-05-10 10:46:41','2022-05-10 10:46:41');

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



# Dump of table roles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
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


# Dump of table system_apis
# ------------------------------------------------------------

DROP TABLE IF EXISTS `system_apis`;

CREATE TABLE `system_apis` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api` text COLLATE utf8mb4_unicode_ci,
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
  `url` text COLLATE utf8mb4_unicode_ci,
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
	(1,1,165,'CTO','Night Market GH','BSc','UENR','🧘‍♀️ Meditating:,🎸 Music:,🎮 Video games:,👩‍🚀 Space:,⭐ Astrology','A person I learn a lot from is....','In real fact, I don’t learn 😜','Life would be boring without....','smile and telling the truth 🥸','2022-01-02 05:23:08','2022-04-22 21:06:34'),
	(6,4,180,'YouTube blogger','Self employed','WASSCE','KASS','🧗‍♀️ Outdoors:,🏖️ Beach:,🥳 Partying:,🎸 Music:,💻 Youtube','A person I learn a lot from is....','Elon','From time to time it is good to....','Have fun 🤩','2022-01-14 11:20:20','2022-01-14 11:20:24'),
	(7,5,165,NULL,NULL,NULL,NULL,NULL,'If I had superpowers, it would be','to read minds','From time to time it is good to....','chillax 🤪','2022-01-17 17:26:51','2022-04-11 12:52:30'),
	(8,6,180,NULL,NULL,NULL,NULL,'🚀 Adventure:,⭐ Astrology:,🧗‍♀️ Outdoors:,🍿 Netflix:,📚 Reading','A person I learn a lot from is....','ghg','From time to time it is good to....',NULL,'2022-01-17 18:05:19','2022-04-11 12:29:14'),
	(9,7,180,'Student','University of Cape Coast','Student','University of Ghana','🚀 Adventure:,📷 Photography:,🍹 Clubbing:,👠 Fashion:,📚 Reading','A person I learn a lot from is....','My Dad','From time to time it is good to....','look at your past and embrace how far you\'ve come','2022-02-05 09:24:52','2022-02-05 09:24:59'),
	(10,8,180,'Entrepreneur','Pulse','Bachelors','University of Ghana','🚀 Adventure:,👠 Fashion:,🎮 Video games:,✈️ Travelling','A person I learn a lot from is....',NULL,'From time to time it is good to....',NULL,'2022-05-10 10:46:41','2022-05-10 10:46:50');

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
	(1,1,4,0,'2022-04-27 13:57:13','2022-04-27 13:57:13'),
	(2,1,6,0,'2022-04-27 13:58:02','2022-04-27 13:58:02'),
	(3,6,4,0,'2022-04-27 13:59:03','2022-04-27 13:59:03'),
	(4,6,5,1,'2022-04-27 13:59:16','2022-04-27 13:59:16'),
	(5,6,7,0,'2022-04-27 13:59:18','2022-04-27 13:59:18'),
	(6,5,1,0,'2022-04-27 14:01:17','2022-04-27 14:01:17'),
	(7,5,4,0,'2022-04-27 14:01:20','2022-04-27 14:01:20'),
	(8,5,6,1,'2022-04-27 14:01:24','2022-04-27 14:01:24'),
	(9,6,1,0,'2022-04-27 14:02:08','2022-04-27 14:02:08'),
	(10,1,7,1,'2022-05-09 09:57:23','2022-05-26 16:59:20'),
	(11,1,5,1,'2022-05-09 09:57:26','2022-05-09 09:57:26'),
	(12,6,8,0,'2022-05-17 19:46:12','2022-05-17 19:46:12'),
	(13,1,8,0,'2022-05-26 12:56:29','2022-05-26 12:56:29');

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
	(1,1,'/storage/user_data/profilePhotos/1651057738909.jpg','/storage/user_data/profilePhotos/1641100988807.jpg','/storage/user_data/profilePhotos/1641101245845.jpg','/storage/user_data/profilePhotos/1641101375383.jpg','/storage/user_data/profilePhotos/1641101373627.jpg','/storage/user_data/profilePhotos/1641101109902.jpg','2022-01-02 05:23:08','2022-04-27 11:09:17'),
	(6,4,'/storage/user_data/profilePhotos/1642159659410.jpg','/storage/user_data/profilePhotos/1642159220887.jpg',NULL,NULL,NULL,NULL,'2022-01-14 11:20:20','2022-01-14 11:27:50'),
	(7,5,'/storage/user_data/profilePhotos/1642440411628.jpg','/storage/user_data/profilePhotos/1649681803774.jpg',NULL,NULL,NULL,NULL,'2022-01-17 17:26:51','2022-04-11 12:56:45'),
	(8,6,'/storage/user_data/profilePhotos/1642442719228.jpg',NULL,NULL,NULL,NULL,NULL,'2022-01-17 18:05:19','2022-01-17 18:05:20'),
	(9,7,'/storage/user_data/profilePhotos/1644053092911.jpg',NULL,NULL,NULL,NULL,NULL,'2022-02-05 09:24:52','2022-02-05 09:24:59'),
	(10,8,'/storage/user_data/profilePhotos/1652179601889.jpg',NULL,NULL,NULL,NULL,NULL,'2022-05-10 10:46:41','2022-05-10 10:46:49');

/*!40000 ALTER TABLE `user_media` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(11) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
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
	(1,1,'Samuel Annin','saytoonz05@gmail.com','users/default.png',NULL,'$2y$10$.VEDNDwAvafSAoxqM9nu1.TueqsYW2rqADp52EEIZBtWPzZxpKX/K','2JiAelvVgVFcLqRDHielTEB3FjURQFBw0Gha9ZozVSb4aWysxfEYbGDDbiZN',NULL,'2021-09-19 20:49:31','2021-09-19 20:49:31'),
	(2,2,'Saytoon','rassay31@gmail.com','users/default.png',NULL,'$2y$10$.VEDNDwAvafSAoxqM9nu1.TueqsYW2rqADp52EEIZBtWPzZxpKX/K',NULL,NULL,'2022-04-15 23:45:53','2022-04-15 23:45:53'),
	(3,2,'Only Admin','admin@only.com','users/default.png',NULL,'$2y$10$dL25QDzXiWaQOR2ITvBQjOLqq3SYN2a2dOEK3BjY6YQ31t/cwq38i',NULL,NULL,'2022-05-18 10:58:25','2022-05-18 10:58:25');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table verified
# ------------------------------------------------------------

DROP TABLE IF EXISTS `verified`;

CREATE TABLE `verified` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) unsigned NOT NULL,
  `status` enum('Pending','Rejected','Verified','') DEFAULT '',
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
	(1,1,'Verified','/storage/user_data/verificationPhotos/1642524785873.jpg','2022-01-02 05:23:08',NULL,'2022-01-02 05:23:08','2022-01-18 16:53:09'),
	(6,4,'',NULL,'2022-01-14 11:20:20',NULL,'2022-01-14 11:20:20','2022-01-14 11:20:20'),
	(7,5,'',NULL,'2022-01-17 17:26:51',NULL,'2022-01-17 17:26:51','2022-01-17 17:26:51'),
	(8,6,'Verified','/storage/user_data/verificationPhotos/1642587359254.jpg','2022-01-17 18:05:19',NULL,'2022-01-17 18:05:19','2022-01-19 10:16:01'),
	(9,7,'',NULL,'2022-02-05 09:24:52',NULL,'2022-02-05 09:24:52','2022-02-05 09:24:52'),
	(10,8,'',NULL,'2022-05-10 10:46:41',NULL,'2022-05-10 10:46:41','2022-05-10 10:46:41');

/*!40000 ALTER TABLE `verified` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
