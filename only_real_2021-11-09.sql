# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.34)
# Database: only_real
# Generation Time: 2021-11-09 08:17:14 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table app_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `app_users`;

CREATE TABLE `app_users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fb_uid` varchar(255) NOT NULL DEFAULT '',
  `phone` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `first_name` varchar(255) NOT NULL DEFAULT '',
  `last_name` varchar(255) NOT NULL DEFAULT '',
  `date_of_birth` varchar(100) NOT NULL DEFAULT '',
  `city` varchar(255) NOT NULL DEFAULT '',
  `country` varchar(255) NOT NULL DEFAULT '',
  `current_address` text,
  `gender` enum('Man','Woman') NOT NULL DEFAULT 'Man',
  `looking_for` enum('Men','Women','Both') NOT NULL DEFAULT 'Both',
  `age_range` varchar(6) DEFAULT '18:,25',
  `in_use_recommendation` int(11) DEFAULT '0',
  `last_update` varchar(100) DEFAULT '""',
  `active` varchar(5) NOT NULL DEFAULT 'yes',
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `app_users` WRITE;
/*!40000 ALTER TABLE `app_users` DISABLE KEYS */;

INSERT INTO `app_users` (`id`, `fb_uid`, `phone`, `email`, `first_name`, `last_name`, `date_of_birth`, `city`, `country`, `current_address`, `gender`, `looking_for`, `age_range`, `in_use_recommendation`, `last_update`, `active`, `updated_at`, `created_at`)
VALUES
	(1,'OIkwGoypNGUy1KHpdeschFEQGFH3','+233208457888','sam@samel.com','Boyesssss','John','1063670400000','Haatso, Accra','Ghana','5.6610833, -0.15440779999999998','Man','Men','18:,36',3,'August 15, 2021, 1:32 am','yes','2021-10-19 23:25:03','2021-09-08 15:45:02'),
	(2,'lBq7LrZ31MgGc0cTruKUYvmU3uh2','+233240066392 ','saytoonz05@gmail.com','Samuelaaaaa','Annin Yeboah','1058227200000','Accra','Ghana','5.6610833, -0.15440779999999998','Man','Both','',1,'July 15, 2021, 12:08 pm','yes',NULL,'2021-09-08 15:45:02'),
	(19,'sfsfsf4ee','+2335467638449','sam@samuel.com','Boye','John','1058227200000','East Legon','Ghana','5.6610833, -0.15440779999999998','Man','Men','18:,25',3,'September 8, 2021, 7:26 pm','yes','2021-09-09 12:52:49','2021-09-08 19:26:53'),
	(20,'sfsfsfhjiko;jhgfjhk,jhiluhjdj,ksnlknskdnkad','+2335467638449','sam@samel.com','Boye','John','1058227200000','East Legon','Ghana','5.6610833, -0.15440779999999998','Man','Men','18:,25',3,'September 9, 2021, 4:13 am','yes','2021-09-09 04:13:18','2021-09-09 04:13:18'),
	(21,'sfsfsfhjiko;jhgfjhk,jhiluhjdj,ksnlknskdnkad\'','+2335467638449\'','sam@samel.com\'','Boye','John','1058227200000','East Legon','Ghana','5.6610833, -0.15440779999999998','Man','Men','18:,25',3,'September 9, 2021, 4:24 am','yes','2021-09-09 04:24:43','2021-09-09 04:24:43'),
	(23,'fb_uid','phone','email','Samson','Kwaku','1058227200000','city','country','5.6610833, -0.15440779999999998','Man','Men','18:,25',4,'September 24, 2021, 5:12 am','yes','2021-09-24 05:12:21','2021-09-24 05:12:21'),
	(24,'fb_uidddaerwe','02400','email@','Dinpa','Appiah','1058227200000','city','country','5.6610833, -0.15440779999999998','Man','Men','18:,25',4,'September 24, 2021, 12:38 pm','yes','2021-09-24 12:38:29','2021-09-24 12:38:29'),
	(25,'fb_uidddaerweeee','0240066','email@g','Asuman','Adjey','1058227200000','city','country','5.6610833, -0.15440779999999998','Man','Women','18:,25',4,'September 24, 2021, 3:10 pm','yes','2021-09-24 15:10:23','2021-09-24 15:10:23'),
	(26,'fb_uidddaerweeeer','024006','email@gm','Praise','Agyei','1058227200000','city','country','5.6610833, -0.15440779999999998','Man','Women','18:,25',4,'September 24, 2021, 3:11 pm','yes','2021-09-24 15:11:58','2021-09-24 15:11:58'),
	(27,'fb_uidddaerweeeere','02400663','email@gma','Goodluck','Nancy','1058227200000','city','country','5.6610833, -0.15440779999999998','Man','Women','18:,25',4,'September 24, 2021, 3:12 pm','yes','2021-09-24 15:12:10','2021-09-24 15:12:10'),
	(28,'fb_uidddaerweeeerer','024006639','email@gmai','Kuffour','Fripong','1058227200000','city','country','5.6610833, -0.15440779999999998','Man','Women','18:,25',4,'September 24, 2021, 3:12 pm','yes','2021-09-24 15:12:22','2021-09-24 15:12:22'),
	(29,'jkd9ekdjnilauhihlehrlkangqaa','023393048573','email@mail.com','first_name','last_name','1058227200000','city','country','5.6610833, -0.15440779999999998','Man','Men','18:,25',4,'October 16, 2021, 6:31 pm','yes','2021-10-16 18:31:51','2021-10-16 18:31:51');

/*!40000 ALTER TABLE `app_users` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table chats
# ------------------------------------------------------------

DROP TABLE IF EXISTS `chats`;

CREATE TABLE `chats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from` int(11) NOT NULL,
  `to` int(11) NOT NULL,
  `type` enum('') NOT NULL,
  `message` text NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



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



# Dump of table menu_items
# ------------------------------------------------------------

DROP TABLE IF EXISTS `menu_items`;

CREATE TABLE `menu_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`),
  CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `menu_items` WRITE;
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`)
VALUES
	(1,1,'Dashboard','','_self','voyager-boat',NULL,NULL,1,'2021-09-19 07:14:52','2021-09-19 07:14:52','voyager.dashboard',NULL),
	(2,1,'Media','','_self','voyager-images',NULL,NULL,5,'2021-09-19 07:14:52','2021-09-21 06:24:08','voyager.media.index',NULL),
	(3,1,'Users','','_self','voyager-person',NULL,NULL,4,'2021-09-19 07:14:52','2021-09-21 06:24:08','voyager.users.index',NULL),
	(4,1,'Roles','','_self','voyager-lock',NULL,NULL,3,'2021-09-19 07:14:52','2021-09-21 06:24:08','voyager.roles.index',NULL),
	(5,1,'Tools','','_self','voyager-tools',NULL,NULL,6,'2021-09-19 07:14:52','2021-09-21 06:24:08',NULL,NULL),
	(6,1,'Menu Builder','','_self','voyager-list',NULL,5,1,'2021-09-19 07:14:52','2021-09-19 21:42:22','voyager.menus.index',NULL),
	(7,1,'Database','','_self','voyager-data',NULL,5,2,'2021-09-19 07:14:52','2021-09-19 21:42:22','voyager.database.index',NULL),
	(8,1,'Compass','','_self','voyager-compass',NULL,5,3,'2021-09-19 07:14:52','2021-09-19 21:42:22','voyager.compass.index',NULL),
	(9,1,'BREAD','','_self','voyager-bread',NULL,5,4,'2021-09-19 07:14:52','2021-09-19 21:42:22','voyager.bread.index',NULL),
	(10,1,'Settings','','_self','voyager-settings',NULL,NULL,7,'2021-09-19 07:14:52','2021-09-21 06:24:08','voyager.settings.index',NULL),
	(11,1,'App User','admin/app-user','_self','voyager-people','#000000',NULL,2,'2021-09-19 21:37:50','2021-09-21 06:24:08',NULL,''),
	(12,2,'List','','_self',NULL,'#000000',NULL,1,'2021-09-20 05:26:33','2021-09-20 05:26:36',NULL,'');

/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table menus
# ------------------------------------------------------------

DROP TABLE IF EXISTS `menus`;

CREATE TABLE `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`)
VALUES
	(1,'admin','2021-09-19 07:14:52','2021-09-20 05:27:47'),
	(2,'App Users','2021-09-19 21:02:49','2021-09-19 21:02:49');

/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
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
	(11,29,1,1,1,1,1,1,1,1,'2021-10-16 18:31:51','2021-10-16 18:31:51');

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
	(1,2,1,10,1,0,'','UK','London','2021-09-09 15:02:21',NULL),
	(3,19,1,0,0,0,'3','Ghana','East Legon','2021-09-10 05:32:18','2021-09-10 05:32:18'),
	(4,1,0,0,0,0,'3','Ghana','East Legon','2021-09-15 03:01:49','2021-09-15 03:01:49'),
	(5,24,0,0,0,0,'4','country','city','2021-09-24 12:38:29','2021-09-24 12:38:29'),
	(6,25,0,0,0,0,'4','country','city','2021-09-24 15:10:23','2021-09-24 15:10:23'),
	(7,26,0,0,0,0,'4','country','city','2021-09-24 15:11:58','2021-09-24 15:11:58'),
	(8,27,0,0,0,0,'4','country','city','2021-09-24 15:12:10','2021-09-24 15:12:10'),
	(9,28,0,0,0,0,'4','country','city','2021-09-24 15:12:22','2021-09-24 15:12:22'),
	(10,29,0,0,0,0,'4','country','city','2021-10-16 18:31:51','2021-10-16 18:31:51');

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

INSERT INTO `recommendations` (`id`, `recommender_fname`, `recommender_sname`, `recommender_phone`, `recommender_email`, `friend_name`, `friend_phone`, `how_you_know_friend`, `why_great`, `conversation_open`, `recording_path`, `sms_code`, `used_by`, `date_used`, `active`, `updated_at`, `created_at`)
VALUES
	(1,'Samuel','Annin Yeboah','+233540982746','saytoonz05@email.com','My Friend name','+233240066392','Don\'t remember','He\'s just great and its that','Don\'t talk to her, she\'s ok','user_data/recommendations/1625578822614.mp3','X5rscL',2,'July 15, 2021, 12:08 pm','used','2021-09-09 04:54:17','2021-09-17 21:07:53'),
	(2,'Samuel','Annin Yeboah','+233540982746','saytoonz05@email.com','Jonathan Kwateng ','+233500489111','We studied together at KNUST and we were in the same sorority','Fatima is one of the funniest people I know. But she is also very kind and passionate about her hobbies, mountaineering and travelling. ','Ask her about anything, but not sports. She really hates soccer and she hates running.','user_data/recommendations/1625653700928.mp3','CRM4ad',2,'','yes','July 7, 2021, 12:29 pm','2021-09-17 21:07:48'),
	(3,'Samuel','Annin Yeboah','+233540982746','saytoonz05@email.com','Samira Yeboah','+233208457888','We studied together at KNUST and we were in the same sorority','Fatima is one of the funniest people I know. But she is also very kind and passionate about her hobbies, mountaineering and travelling. ','Fatima is one of the funniest people I know. But she is also very kind and passionate about her hobbies, mountaineering and travelling. ','user_data/recommendations/1625936590560.mp3','jzmzIf',21,'July 14, 2021, 8:40 pm','used','2021-09-09 04:24:43','2021-09-09 04:24:43'),
	(4,'Samuel','Nana Yaw','+23323456789','sam@sam.com','Yooyoo','+23455392839','Ask God bro','Just not greater than God','Ask for phone number','recPath/findout/audio.mp3','FZSGac',29,'October 16, 2021, 6:31 pm','rej','2021-10-16 18:31:51','2021-10-16 18:31:51');

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



# Dump of table settings
# ------------------------------------------------------------

DROP TABLE IF EXISTS `settings`;

CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`)
VALUES
	(1,'site.title','Site Title','Site Title','','text',1,'Site'),
	(2,'site.description','Site Description','Site Description','','text',2,'Site'),
	(3,'site.logo','Site Logo','','','image',3,'Site'),
	(4,'site.google_analytics_tracking_id','Google Analytics Tracking ID',NULL,'','text',4,'Site'),
	(5,'admin.bg_image','Admin Background Image','settings/September2021/zJUtIm58b75ML9k8Nz9n.png','','image',5,'Admin'),
	(6,'admin.title','Admin Title','Only','','text',1,'Admin'),
	(7,'admin.description','Admin Description','Only Manager','','text',2,'Admin'),
	(8,'admin.loader','Admin Loader','settings/September2021/BVzPQ8C9pKmtWCUmBXJQ.png','','image',3,'Admin'),
	(9,'admin.icon_image','Admin Icon Image','settings/September2021/NrmWytxtuHOSZgpUG4PC.png','','image',4,'Admin'),
	(10,'admin.google_analytics_client_id','Google Analytics Client ID (used for admin dashboard)',NULL,'','text',1,'Admin');

/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table translations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `translations`;

CREATE TABLE `translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) unsigned NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table user_about
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_about`;

CREATE TABLE `user_about` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) unsigned NOT NULL,
  `height_cm` int(11) NOT NULL DEFAULT '180',
  `work_role` text,
  `work_organization` text,
  `edu_level` text,
  `edu_school` text,
  `interests` varchar(225) DEFAULT '',
  `fun_question_one` text,
  `fun_answer_one` text,
  `fun_question_two` text,
  `fun_answer_two` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uid` (`uid`),
  CONSTRAINT `user_about_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `app_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `user_about` WRITE;
/*!40000 ALTER TABLE `user_about` DISABLE KEYS */;

INSERT INTO `user_about` (`id`, `uid`, `height_cm`, `work_role`, `work_organization`, `edu_level`, `edu_school`, `interests`, `fun_question_one`, `fun_answer_one`, `fun_question_two`, `fun_answer_two`, `created_at`, `updated_at`)
VALUES
	(1,1,180,'','','','','Cats','','','','',NULL,NULL),
	(2,2,0,'','','','','Cats','','','','',NULL,NULL),
	(3,19,180,NULL,NULL,NULL,NULL,'Astrology',NULL,NULL,NULL,NULL,'2021-09-10 05:15:36','2021-09-10 05:15:36'),
	(4,23,180,'','','','','Cats','','','','','2021-09-24 05:12:21','2021-09-24 05:12:21'),
	(5,24,180,'','','','','Astrology','','','','','2021-09-24 12:38:29','2021-09-24 12:38:29'),
	(6,25,180,'','','','','Cats','','','','','2021-09-24 15:10:23','2021-09-24 15:10:23'),
	(7,26,180,'','','','','Cats','','','','','2021-09-24 15:11:58','2021-09-24 15:11:58'),
	(8,27,180,'','','','','Cats','','','','','2021-09-24 15:12:10','2021-09-24 15:12:10'),
	(9,28,180,'','','','','Cats','','','','','2021-09-24 15:12:22','2021-09-24 15:12:22'),
	(10,29,180,'','','','','','','','','','2021-10-16 18:31:51','2021-10-16 18:31:51');

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
	(1,24,1,1,'2021-10-24 16:55:48','2021-10-24 16:58:34'),
	(2,25,1,1,'2021-10-24 16:58:38','2021-10-24 16:58:38'),
	(3,19,1,1,'2021-10-24 16:58:46','2021-10-24 16:58:46'),
	(4,20,1,1,'2021-10-24 16:58:51','2021-10-24 16:58:51'),
	(5,21,1,1,'2021-10-24 16:58:54','2021-10-24 16:58:54'),
	(6,22,1,1,'2021-10-24 16:58:57','2021-10-24 16:58:57');

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
	(1,1,'user_data/profilePhotos/1626185479628.png','user_data/profilePhotos/1626185479879.png','user_data/profilePhotos/1626185479879.png','user_data/profilePhotos/1626185480110.png','user_data/profilePhotos/1626185479879.png','user_data/profilePhotos/1626185479879.png',NULL,NULL),
	(2,2,'user_data/profilePhotos/1626185479628.png','user_data/profilePhotos/1626185479879.png','','','','',NULL,NULL),
	(5,19,'user_data/profilePhotos/1626185479628.png','user_data/profilePhotos/1626185479879.png','user_data/profilePhotos/1626185479879.png','','','','2021-09-10 05:08:52','2021-09-10 05:08:52'),
	(6,23,'user_data/profilePhotos/1626185479628.png','user_data/profilePhotos/1626185479879.png','','','','','2021-09-24 05:12:21','2021-09-24 05:12:21'),
	(7,24,'user_data/profilePhotos/1626185479628.png','user_data/profilePhotos/1626185479879.png','','','','','2021-09-24 12:38:29','2021-09-24 12:38:29'),
	(8,25,'user_data/profilePhotos/1626185479628.png','user_data/profilePhotos/1626185479879.png','','','','','2021-09-24 15:10:23','2021-09-24 15:10:23'),
	(9,26,'user_data/profilePhotos/1626185479628.png','user_data/profilePhotos/1626185479879.png','user_data/profilePhotos/1626185479879.png','','','','2021-09-24 15:11:58','2021-09-24 15:11:58'),
	(10,27,'user_data/profilePhotos/1626185479628.png','user_data/profilePhotos/1626185479879.png','','','','','2021-09-24 15:12:10','2021-09-24 15:12:10'),
	(11,28,'user_data/profilePhotos/1626185479628.png','user_data/profilePhotos/1626185479879.pnguser_data/profilePhotos/1626185479879.png','user_data/profilePhotos/1626185479879.png','','','','2021-09-24 15:12:22','2021-09-24 15:12:22'),
	(12,29,'user_data/profilePhotos/1626185479628.png','user_data/profilePhotos/1626185479879.png','user_data/profilePhotos/1626185479879.png','','','','2021-10-16 18:31:51','2021-10-16 18:31:51');

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
	(3,19,NULL,NULL,NULL,'2021-09-10 05:18:55','2021-09-10 05:18:55');

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
	(1,1,'Samuel Annin','saytoonz05@gmail.com','users/default.png',NULL,'$2y$10$.VEDNDwAvafSAoxqM9nu1.TueqsYW2rqADp52EEIZBtWPzZxpKX/K','a7K7AWu1VCwP5c4fIEo2mQijwLFJ3ohkLXxUD9Qzu3JRuN6ups06qJVaXfsg',NULL,'2021-09-19 20:49:31','2021-09-19 20:49:31');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table verified
# ------------------------------------------------------------

DROP TABLE IF EXISTS `verified`;

CREATE TABLE `verified` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) unsigned NOT NULL,
  `status` enum('Pending','Rejected','Verified','') NOT NULL DEFAULT 'Pending',
  `image` text,
  `date_added` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_updated` text,
  `date_verified` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uid` (`uid`),
  CONSTRAINT `verified_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `app_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `verified` WRITE;
/*!40000 ALTER TABLE `verified` DISABLE KEYS */;

INSERT INTO `verified` (`id`, `uid`, `status`, `image`, `date_added`, `last_updated`, `date_verified`, `created_at`, `updated_at`)
VALUES
	(1,1,'Rejected','user_data/verificationPhotos/1627821576183.png','2021-07-16 14:52:43','August 1, 2021, 12:15 am','',NULL,NULL),
	(2,19,'Pending',NULL,'2021-09-10 05:26:06',NULL,NULL,'2021-09-10 05:26:06','2021-09-10 05:26:06'),
	(3,23,'Pending',NULL,'2021-09-24 05:12:21',NULL,NULL,'2021-09-24 05:12:21','2021-09-24 05:12:21'),
	(4,24,'Pending',NULL,'2021-09-24 12:38:29',NULL,NULL,'2021-09-24 12:38:29','2021-09-24 12:38:29'),
	(5,25,'Pending',NULL,'2021-09-24 15:10:23',NULL,NULL,'2021-09-24 15:10:23','2021-09-24 15:10:23'),
	(6,26,'Pending',NULL,'2021-09-24 15:11:58',NULL,NULL,'2021-09-24 15:11:58','2021-09-24 15:11:58'),
	(7,27,'Pending',NULL,'2021-09-24 15:12:10',NULL,NULL,'2021-09-24 15:12:10','2021-09-24 15:12:10'),
	(8,28,'Pending',NULL,'2021-09-24 15:12:22',NULL,NULL,'2021-09-24 15:12:22','2021-09-24 15:12:22'),
	(9,29,'Pending',NULL,'2021-10-16 18:31:51',NULL,NULL,'2021-10-16 18:31:51','2021-10-16 18:31:51');

/*!40000 ALTER TABLE `verified` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
