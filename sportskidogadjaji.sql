/*
SQLyog Community v13.1.9 (64 bit)
MySQL - 10.4.28-MariaDB : Database - sportskidogadjaji
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`sportskidogadjaji` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `sportskidogadjaji`;

/*Table structure for table `failed_jobs` */

DROP TABLE IF EXISTS `failed_jobs`;

CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `failed_jobs` */

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values 
(1,'2014_10_12_000000_create_users_table',1),
(2,'2014_10_12_100000_create_password_reset_tokens_table',1),
(3,'2019_08_19_000000_create_failed_jobs_table',1),
(4,'2019_12_14_000001_create_personal_access_tokens_table',1),
(5,'2023_04_15_194116_create_stadions_table',1),
(6,'2023_04_15_200722_create_pokrivenosts_table',1),
(7,'2023_04_15_211041_create_sponzors_table',1),
(8,'2023_04_21_151831_add_column_user_id_to_sponzors_table',1);

/*Table structure for table `password_reset_tokens` */

DROP TABLE IF EXISTS `password_reset_tokens`;

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `password_reset_tokens` */

/*Table structure for table `personal_access_tokens` */

DROP TABLE IF EXISTS `personal_access_tokens`;

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `personal_access_tokens` */

insert  into `personal_access_tokens`(`id`,`tokenable_type`,`tokenable_id`,`name`,`token`,`abilities`,`last_used_at`,`expires_at`,`created_at`,`updated_at`) values 
(1,'App\\Models\\User',7,'auth_token','eb0f45fab1f41e2b8d4dc56757d9e2269439e617ff4fb725d3ddb5fbcdfa5fca','[\"*\"]',NULL,NULL,'2023-04-23 11:43:36','2023-04-23 11:43:36'),
(2,'App\\Models\\User',7,'auth_token','027b6b3073720ebcd8915c6b6bb8212b870773a6c88d0315e06587c884b8d329','[\"*\"]',NULL,NULL,'2023-04-23 11:45:42','2023-04-23 11:45:42'),
(3,'App\\Models\\User',7,'auth_token','ec21f14c6955d0866517ca9e27bbd610cfe51f51ccc4ef86fc041b538a512c67','[\"*\"]',NULL,NULL,'2023-04-23 15:47:49','2023-04-23 15:47:49'),
(4,'App\\Models\\User',7,'auth_token','f2356cefc064f48546980fbf494029b1d91894cfd0b001ece68bc597a698dbdf','[\"*\"]',NULL,NULL,'2023-04-23 17:39:29','2023-04-23 17:39:29');

/*Table structure for table `pokrivenosts` */

DROP TABLE IF EXISTS `pokrivenosts`;

CREATE TABLE `pokrivenosts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `mera` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pokrivenosts_mera_unique` (`mera`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `pokrivenosts` */

insert  into `pokrivenosts`(`id`,`mera`,`created_at`,`updated_at`) values 
(3,'eligendi','2023-04-23 11:07:52','2023-04-23 11:07:52'),
(4,'enim','2023-04-23 11:07:52','2023-04-23 11:07:52'),
(5,'eius','2023-04-23 11:07:52','2023-04-23 11:07:52'),
(6,'ima krov','2023-04-23 11:07:52','2023-04-23 11:07:52'),
(7,'delimicno pokriven','2023-04-23 11:07:52','2023-04-23 11:07:52'),
(8,'nema krov','2023-04-23 11:07:52','2023-04-23 11:07:52');

/*Table structure for table `sponzors` */

DROP TABLE IF EXISTS `sponzors`;

CREATE TABLE `sponzors` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `naziv` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `sponzors` */

insert  into `sponzors`(`id`,`naziv`,`created_at`,`updated_at`) values 
(1,'banka','2023-04-23 11:07:52','2023-04-23 17:32:10'),
(2,'sint','2023-04-23 11:07:52','2023-04-23 11:07:52'),
(3,'eveniet','2023-04-23 11:07:52','2023-04-23 11:07:52'),
(4,'eos','2023-04-23 11:07:52','2023-04-23 11:07:52'),
(5,'culpa','2023-04-23 11:07:52','2023-04-23 11:07:52'),
(6,'MTS','2023-04-23 11:07:52','2023-04-23 11:07:52'),
(7,'NisPetrol','2023-04-23 11:07:52','2023-04-23 11:07:52'),
(8,'VulkanKnjizare','2023-04-23 11:07:52','2023-04-23 11:07:52'),
(9,'Yettel','2023-04-23 16:00:49','2023-04-23 16:00:49');

/*Table structure for table `stadions` */

DROP TABLE IF EXISTS `stadions`;

CREATE TABLE `stadions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `naziv` varchar(255) NOT NULL,
  `klub` varchar(255) NOT NULL,
  `kapacitet` varchar(255) NOT NULL,
  `pokrivenost_id` bigint(20) unsigned NOT NULL,
  `sponzor_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `stadions_klub_unique` (`klub`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `stadions` */

insert  into `stadions`(`id`,`naziv`,`klub`,`kapacitet`,`pokrivenost_id`,`sponzor_id`,`created_at`,`updated_at`,`user_id`) values 
(1,'sint','neque','5',1,1,'2023-04-23 11:07:52','2023-04-23 11:07:52',1),
(2,'modi','aliquid','1722614',2,2,'2023-04-23 11:07:52','2023-04-23 11:07:52',2),
(3,'sit','non','78363',3,3,'2023-04-23 11:07:52','2023-04-23 11:07:52',3),
(4,'dolores','omnis','49673380',4,4,'2023-04-23 11:07:52','2023-04-23 11:07:52',4),
(5,'vitae','eaque','65',5,5,'2023-04-23 11:07:52','2023-04-23 11:07:52',5),
(6,'Marakana','Crvena Zvezda','36564',6,6,'2023-04-23 11:07:52','2023-04-23 11:07:52',6),
(7,'JNA','Partizan','29875',7,7,'2023-04-23 11:07:52','2023-04-23 11:07:52',6),
(8,'Omladinski stadion','OFK Beograd','13245',8,8,'2023-04-23 11:07:52','2023-04-23 11:07:52',6),
(9,'Kralj Petar Prvi','FK Rad','9807',8,6,'2023-04-23 11:07:52','2023-04-23 11:07:52',6),
(10,'Karadjordje','Vojvodina','21345',2,3,'2023-04-23 11:19:03','2023-04-23 11:19:03',3);

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`name`,`email`,`email_verified_at`,`password`,`remember_token`,`created_at`,`updated_at`) values 
(1,'Walker Quigley II','gcollins@example.org','2023-04-23 11:07:52','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','qRAvLz2LB9','2023-04-23 11:07:52','2023-04-23 11:07:52'),
(2,'Helena Gleichner','swaniawski.jeramie@example.org','2023-04-23 11:07:52','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','2JhvofZTQp','2023-04-23 11:07:52','2023-04-23 11:07:52'),
(3,'Prof. Hollie Schaefer','stephany22@example.com','2023-04-23 11:07:52','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','q41esYZEHG','2023-04-23 11:07:52','2023-04-23 11:07:52'),
(4,'Chandler Hickle Jr.','chanel34@example.com','2023-04-23 11:07:52','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','OMMrImP6Pf','2023-04-23 11:07:52','2023-04-23 11:07:52'),
(5,'Jody Hahn','zulauf.giles@example.org','2023-04-23 11:07:52','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','mepYVBqRjW','2023-04-23 11:07:52','2023-04-23 11:07:52'),
(6,'Miss Clarissa Wunsch MD','dach.claud@example.org','2023-04-23 11:07:52','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','3zdwtw3Z4h','2023-04-23 11:07:52','2023-04-23 11:07:52'),
(7,'\"\r\n\r\nSnaucer','roko@gmail.com',NULL,'$2y$10$ENU4p4HXQcgva0CgbOUhj.djYjOdDdnteep9zN73URUe/0iblFRCm',NULL,'2023-04-23 11:43:36','2023-04-23 11:43:36');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
