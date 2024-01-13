-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: 45.76.161.185    Database: book_store
-- ------------------------------------------------------
-- Server version	8.0.35-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admins` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `avatar` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `birthday` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `gender` tinyint NOT NULL,
  `phone_number` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `level` int NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admins_email_unique` (`email`),
  UNIQUE KEY `admins_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'157202302220191026000342g6LFGCz0rHPe8DIkAnwD4QBmgw1UFu4LQn1JAPoK.jpeg','Hoàng Ngọc Ánh','2023-01-01',1,'19001900','Ha Noi','nhasachanhhoang@gmail.com','$2y$10$4edleQ7FIcS8PthADtoE.uiy3SBXgEcRg0cNNLMbJKRudJkVsRMC2',NULL,1,1,'2023-10-07 14:22:00','2023-10-07 14:22:00'),(2,'157202302220191026000342g6LFGCz0rHPe8DIkAnwD4QBmgw1UFu4LQn1JAPoK.jpeg','Trần Thị Thùy Tươi','1997-01-08',0,'0981241716','1197 Giải Phóng','tranthuytuoi1073@gmail.com','$2y$10$L/5hmAWQOJRgADlfd67aeuhWdLWHWLapA2fldMeq2ZQADM31joLsu',NULL,0,1,'2023-11-08 02:26:25','2023-11-08 02:26:25'),(3,'157202302220191026000342g6LFGCz0rHPe8DIkAnwD4QBmgw1UFu4LQn1JAPoK.jpeg','Nguyễn Thu Hiền','1997-02-04',0,'0961526496','Hà Nội','nguyenthuhien24hv@gmail.com','$2y$10$va0xLJTvUppIdgJMbVYC8OSFymov8oe6UdJriSSgEgMpsXTI9A3hK',NULL,0,1,'2023-11-23 08:52:39','2023-11-23 08:52:39'),(4,'157202302220191026000342g6LFGCz0rHPe8DIkAnwD4QBmgw1UFu4LQn1JAPoK.jpeg','Nguyễn Thị Huệ','1997-04-15',0,'0355110482','Hà Nội','nguyenhue154@gmail.com','$2y$10$I0qnNB8CqbEqKwmwEZLDeuhE7XUzsFy41tKmIuwWLp6GV.N6Erh9a',NULL,0,1,'2023-11-24 01:13:35','2023-11-24 01:13:35'),(5,'157202302220191026000342g6LFGCz0rHPe8DIkAnwD4QBmgw1UFu4LQn1JAPoK.jpeg','Trần Thị Hằng','1994-07-01',0,'0385540516','Hà Nội','tranhang190194@gmail.com','$2y$10$Y.R.Yv.jRyWRskBXyzaiC.TXgMlj81zHFzL4I7kYcaCo3IyFewDuO',NULL,0,1,'2023-01-30 07:03:22','2023-01-30 07:03:22'),(6,'157202302220191026000342g6LFGCz0rHPe8DIkAnwD4QBmgw1UFu4LQn1JAPoK.jpeg','Nguyễn Thị Duyên','1997-04-10',0,'0977588698','Khu đô thị Đại Thanh, Thanh Trì, Hà Nội','ntduyen1004@gmail.com','$2y$10$QjX3hz0.UFQzRM2reXPYAubvSpyw6adOvAulQ9BB36jAX8pthH6Li',NULL,0,1,'2023-07-06 08:25:58','2023-07-06 08:25:58');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brands` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `slug` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `link` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brands`
--

LOCK TABLES `brands` WRITE;
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;
/*!40000 ALTER TABLE `brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `phone_number` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `birthday` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `gender` tinyint NOT NULL,
  `phone_number` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `score_awards` double(8,2) NOT NULL DEFAULT '0.00',
  `money_payment_transactions` double(8,2) NOT NULL DEFAULT '0.00',
  `remember_token` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`,`phone_number`),
  UNIQUE KEY `customers_phone_number_unique` (`phone_number`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Tươi','1997-08-13',0,'0868563617','số 11a Ngõ 282 Nguyễn Huy Tưởng','$2y$10$4edleQ7FIcS8PthADtoE.uiy3SBXgEcRg0cNNLMbJKRudJkVsRMC2',18.00,908.00,NULL,1,'2023-03-13 02:13:26','2023-12-18 16:06:29'),(2,'Trần Thị Hằng','1994-01-19',0,'0914394493','Tây Mỗ Nam Từ Liêm Hà Nội','$2y$10$3URPd2aMEgvp/2mRj15hce.SGoPoAEVRrGNRv7Bds0m8.MEI1Gv/y',3.00,159.00,NULL,1,'2023-03-13 02:17:30','2023-03-13 02:31:53'),(3,'Chiến Phạm','1990-08-30',1,'0868560312','Tầng 5-6 Keangnam Hanoi Landmark Tower, Phạm Hùng, Cầu Giấy','$2y$10$HclRa/w53D.cY1.Qh2d6MeCBQNn1u1P7wnN451n6liSD4zn4XwyAm',0.00,0.00,NULL,1,'2023-03-13 07:35:18','2023-03-13 07:35:18'),(4,'Hoàng Nguyễn Minh Anh','1997-12-27',0,'0978478178','Mộ Lao, Hà Đông','$2y$10$4edleQ7FIcS8PthADtoE.uiy3SBXgEcRg0cNNLMbJKRudJkVsRMC2',133.00,6839.00,'y07WD8BHHDz2LGgf7rw85W2V2MIDNuqSqIgABBWJ65skxaPWXpL7s1FGioop',1,'2023-04-28 16:55:53','2023-01-15 01:09:40'),(5,'Võ Ngọc Thanh','1991-04-26',0,'0932071179','11. tân Tiến f8 quận tân bình tphcm','$2y$10$yILkPRBy3nP4Am42E08OHOjGfqECQNR4r3Y1RYFSnjn.tp2KT2M..',0.00,0.00,NULL,1,'2023-05-05 04:03:15','2023-05-05 04:03:15'),(6,'Hứa Minh Quyên','1986-01-28',0,'0909227195','Số nhà 43- tổ 11- phường Sông Hiến- tp. Cao Bằng- tỉnh Cao Bằng','$2y$10$bnMGlZ/4VuDT8WQiQt2CquyBYRYKaxoBXkZ./MqaEcGbAgjmnh.TS',0.00,0.00,NULL,1,'2023-08-24 06:06:25','2023-08-24 06:06:25'),(7,'Diễm Trần','1990-08-30',0,'0962002754','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2023-04-04 02:14:00','2023-09-04 02:14:00'),(8,'Diễm Trần','1990-08-30',0,'0962018754','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2023-04-04 02:14:00','2023-09-04 02:14:00'),(9,'Diễm Trần','1990-08-30',0,'0962002751','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2023-04-04 02:14:00','2023-09-04 02:14:00'),(10,'Diễm Trần','1990-08-30',0,'0962002752','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2023-04-04 02:14:00','2023-09-04 02:14:00'),(11,'Diễm Trần','1990-08-30',0,'0962002753','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2023-04-04 02:14:00','2023-09-04 02:14:00'),(12,'Đỗ Hoàng Minh Anh','1997-12-27',0,'0981248920','Nguyễn Văn Trỗi, Mộ Lao, Hà Đông','$2y$10$hpifPOxEz7fxqZhX90cen.wzUbcQMGx/WTYL1CZxoyviyG.n9Cixy',19.00,995.00,'NEi8YMJKIiGtmurqZMK3G886P9KsEss0tFLH6at4gEXkNky5cmMDq1gt4Q6N',1,'2023-12-08 00:16:00','2023-12-10 22:14:13'),(13,'Diễm Trần','1990-08-30',0,'0962023754','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2023-05-04 02:14:00','2023-09-04 02:14:00'),(14,'Diễm Trần','1990-08-30',0,'0962002755','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2023-05-04 02:14:00','2023-09-04 02:14:00'),(15,'Diễm Trần','1990-08-30',0,'0962002756','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2023-05-04 02:14:00','2023-09-04 02:14:00'),(16,'Diễm Trần','1990-08-30',0,'0962002757','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2023-05-04 02:14:00','2023-09-04 02:14:00'),(17,'Diễm Trần','1990-08-30',0,'0962002758','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2023-05-04 02:14:00','2023-09-04 02:14:00'),(18,'Diễm Trần','1990-08-30',0,'0962002759','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2023-05-04 02:14:00','2023-09-04 02:14:00'),(19,'Diễm Trần','1990-08-30',0,'0962002750','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2023-06-04 02:14:00','2023-09-04 02:14:00'),(20,'Diễm Trần','1990-08-30',0,'0162002754','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2023-07-04 02:14:00','2023-09-04 02:14:00'),(21,'Diễm Trần','1990-08-30',0,'0262002754','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2023-07-04 02:14:00','2023-09-04 02:14:00'),(22,'Diễm Trần','1990-08-30',0,'0362002754','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2023-07-04 02:14:00','2023-09-04 02:14:00'),(23,'Diễm Trần','1990-08-30',0,'0462002754','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2023-07-04 02:14:00','2023-09-04 02:14:00'),(24,'Diễm Trần','1990-08-30',0,'0562002754','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2023-07-04 02:14:00','2023-09-04 02:14:00'),(25,'Diễm Trần','1990-08-30',0,'0662002754','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2023-07-04 02:14:00','2023-09-04 02:14:00'),(26,'Diễm Trần','1990-08-30',0,'0762002754','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2023-07-04 02:14:00','2023-09-04 02:14:00'),(27,'Diễm Trần','1990-08-30',0,'0862002754','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2023-08-04 02:14:00','2023-09-04 02:14:00'),(28,'Diễm Trần','1990-08-30',0,'0012002754','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2023-08-04 02:14:00','2023-09-04 02:14:00'),(29,'Diễm Trần','1990-08-30',0,'0062002754','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2023-08-04 02:14:00','2023-09-04 02:14:00'),(30,'Diễm Trần','1990-08-30',0,'0112002754','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2023-09-04 02:14:00','2023-09-04 02:14:00'),(31,'Diễm Trần','1990-08-30',0,'0222002754','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2023-09-04 02:14:00','2023-09-04 02:14:00'),(32,'Diễm Trần','1990-08-30',0,'0932002754','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2023-09-04 02:14:00','2023-09-04 02:14:00'),(33,'Diễm Trần','1990-08-30',0,'0952002754','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2023-09-04 02:14:00','2023-09-04 02:14:00'),(34,'Diễm Trần','1990-08-30',0,'0942002754','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2023-09-04 02:14:00','2023-09-04 02:14:00'),(35,'Diễm Trần','1990-08-30',0,'0969902754','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2023-09-04 02:14:00','2023-09-04 02:14:00'),(36,'Diễm Trần','1990-08-30',0,'0972002754','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2023-09-04 02:14:00','2023-09-04 02:14:00'),(37,'Diễm Trần','1990-08-30',0,'0982002754','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2023-09-04 02:14:00','2023-09-04 02:14:00'),(38,'Diễm Trần','1990-08-30',0,'0992002754','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2023-09-04 02:14:00','2023-09-04 02:14:00'),(39,'Diễm Trần','1990-08-30',0,'0902002754','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2023-09-04 02:14:00','2023-09-04 02:14:00'),(40,'Diễm Trần','1990-08-30',0,'0977002754','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2023-09-04 02:14:00','2023-09-04 02:14:00'),(41,'Diễm Trần','1990-08-30',0,'0962102754','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2023-10-04 02:14:00','2023-09-04 02:14:00'),(42,'Diễm Trần','1990-08-30',0,'0962302754','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2023-10-04 02:14:00','2023-09-04 02:14:00'),(43,'Diễm Trần','1990-08-30',0,'0962202754','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2023-10-04 02:14:00','2023-09-04 02:14:00'),(44,'Diễm Trần','1990-08-30',0,'0962402754','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2023-10-04 02:14:00','2023-09-04 02:14:00'),(45,'Diễm Trần','1990-08-30',0,'0962502754','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2023-10-04 02:14:00','2023-09-04 02:14:00'),(46,'Diễm Trần','1990-08-30',0,'0962602754','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2023-10-04 02:14:00','2023-09-04 02:14:00'),(47,'Diễm Trần','1990-08-30',0,'0962702754','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2023-11-04 02:14:00','2023-09-04 02:14:00'),(48,'Diễm Trần','1990-08-30',0,'0962802754','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2023-11-04 02:14:00','2023-09-04 02:14:00'),(49,'Diễm Trần','1990-08-30',0,'0962902754','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2023-11-04 02:14:00','2023-09-04 02:14:00'),(50,'Diễm Trần','1990-08-30',0,'0962012754','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2023-12-04 02:14:00','2023-09-04 02:14:00'),(51,'Diễm Trần','1990-08-30',0,'0962022754','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2023-12-04 02:14:00','2023-09-04 02:14:00'),(52,'Diễm Trần','1990-08-30',0,'0962032754','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2023-12-04 02:14:00','2023-09-04 02:14:00'),(53,'Diễm Trần','1990-08-30',0,'0962042754','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2023-12-04 02:14:00','2023-09-04 02:14:00'),(54,'Diễm Trần','1990-08-30',0,'0962052754','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2023-12-04 02:14:00','2023-09-04 02:14:00'),(55,'Diễm Trần','1990-08-30',0,'0962062754','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2023-12-04 02:14:00','2023-09-04 02:14:00'),(56,'Diễm Trần','1990-08-30',0,'0962072754','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2023-12-04 02:14:00','2023-09-04 02:14:00'),(57,'Diễm Trần','1990-08-30',0,'0962082754','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2023-12-04 02:14:00','2023-09-04 02:14:00'),(58,'Diễm Trần','1990-08-30',0,'0962092754','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2023-12-04 02:14:00','2023-09-04 02:14:00'),(61,'Nguyễn Quang Hòa','2001-06-14',1,'0987654321','Hà Nội','$2y$10$OKexsIIqpAq63RBr6TBwiObvuIzAULgM7Oa3lv8HSmiHePyATjJOu',0.00,0.00,'Zn2kBeYSlIarMscZeJUckDcijP3Dse3fLDkaMErW8faHMsghSoeYWF052Hlz',1,'2023-10-21 17:52:40','2023-10-21 17:52:40');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manufacturers`
--

DROP TABLE IF EXISTS `manufacturers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manufacturers` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `slug` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `link` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=308 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manufacturers`
--

LOCK TABLES `manufacturers` WRITE;
/*!40000 ALTER TABLE `manufacturers` DISABLE KEYS */;
/*!40000 ALTER TABLE `manufacturers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `product_id` int unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `quantity` int NOT NULL DEFAULT '0',
  `price` double(8,2) NOT NULL,
  `price_sale` double(8,2) NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=212 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_categories`
--

DROP TABLE IF EXISTS `post_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_categories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `sort_id` tinyint NOT NULL DEFAULT '0',
  `slug` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `post_categories_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_categories`
--

LOCK TABLES `post_categories` WRITE;
/*!40000 ALTER TABLE `post_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `post_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_tags` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int unsigned NOT NULL,
  `tag_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `post_id` (`post_id`),
  KEY `post_tags_ibfk_2` (`tag_id`),
  CONSTRAINT `post_tags_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  CONSTRAINT `post_tags_ibfk_2` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tags`
--

LOCK TABLES `post_tags` WRITE;
/*!40000 ALTER TABLE `post_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `thumbnail` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `content` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `admin_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `post_category_id` int unsigned NOT NULL,
  `view_count` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_unique` (`slug`),
  KEY `admin_name` (`admin_name`),
  KEY `posts_ibfk_1` (`post_category_id`),
  CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`post_category_id`) REFERENCES `post_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `posts_ibfk_2` FOREIGN KEY (`admin_name`) REFERENCES `admins` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_categories`
--

DROP TABLE IF EXISTS `product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_categories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `slug` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_categories`
--

LOCK TABLES `product_categories` WRITE;
/*!40000 ALTER TABLE `product_categories` DISABLE KEYS */;
INSERT INTO `product_categories` VALUES (1,'Sách thiếu nhi','sach-thieu-nhi','2023-05-25 09:50:50','2023-09-18 16:25:02'),(2,'Sách chữ ký','sach-chu-ky','2023-06-23 02:52:17','2023-06-23 02:54:11'),(3,'Sách giới hạn','sach-gioi-han','2023-06-23 02:55:02','2023-06-23 02:56:12'),(4,'Sách khác','sach-khac','2023-06-23 02:55:59','2023-09-18 14:55:00');
/*!40000 ALTER TABLE `product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `slug` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `product_category_id` int unsigned NOT NULL,
  `description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `image` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `price_prime` double(8,2) NOT NULL,
  `price` double(8,2) NOT NULL,
  `price_sale` double(8,2) NOT NULL,
  `quantity` int NOT NULL,
  `admin_id` int unsigned NOT NULL,
  `bought` int NOT NULL DEFAULT '0',
  `view_count` int NOT NULL DEFAULT '0',
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_id` (`admin_id`),
  KEY `products_ibfk_1` (`product_category_id`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`product_category_id`) REFERENCES `product_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `products_ibfk_4` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=556 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tags_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `customer_id` int unsigned DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `phone_number` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `customer_notes` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `notes` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `amount` double(8,2) NOT NULL,
  `score_awards` double(8,2) NOT NULL DEFAULT '0.00',
  `admin_id_status_shipped` int unsigned DEFAULT NULL,
  `admin_id_status_delivered` int unsigned DEFAULT NULL,
  `admin_id_status_cancel` int unsigned DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `order_id_unique` (`order_id`),
  KEY `customer_id` (`customer_id`),
  KEY `admin_id_status_shipped` (`admin_id_status_shipped`),
  KEY `admin_id_status_delivered` (`admin_id_status_delivered`),
  KEY `admin_id_status_cancel` (`admin_id_status_cancel`),
  CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  CONSTRAINT `transactions_ibfk_3` FOREIGN KEY (`admin_id_status_shipped`) REFERENCES `admins` (`id`),
  CONSTRAINT `transactions_ibfk_4` FOREIGN KEY (`admin_id_status_delivered`) REFERENCES `admins` (`id`),
  CONSTRAINT `transactions_ibfk_5` FOREIGN KEY (`admin_id_status_cancel`) REFERENCES `admins` (`id`),
  CONSTRAINT `transactions_ibfk_6` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `units`
--

DROP TABLE IF EXISTS `units`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `units` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `slug` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `units`
--

LOCK TABLES `units` WRITE;
/*!40000 ALTER TABLE `units` DISABLE KEYS */;
/*!40000 ALTER TABLE `units` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlists`
--

DROP TABLE IF EXISTS `wishlists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wishlists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  KEY `wishlists_ibfk_1` (`customer_id`),
  CONSTRAINT `wishlists_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `wishlists_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlists`
--

LOCK TABLES `wishlists` WRITE;
/*!40000 ALTER TABLE `wishlists` DISABLE KEYS */;
/*!40000 ALTER TABLE `wishlists` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-14  1:20:09
