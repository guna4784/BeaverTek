-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: preventive_care
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `provider_notification_preferences`
--

DROP TABLE IF EXISTS `provider_notification_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `provider_notification_preferences` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `provider_id` bigint NOT NULL,
  `notification_type` enum('APPOINTMENT','LAB_RESULTS','FOLLOW_UP','BILLING','SYSTEM') NOT NULL,
  `email_enabled` tinyint(1) DEFAULT NULL,
  `sms_enabled` tinyint(1) DEFAULT NULL,
  `in_app_enabled` tinyint(1) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `deleted_at` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_provider_notification` (`provider_id`,`notification_type`),
  KEY `idx_provider_notification` (`provider_id`),
  KEY `ix_provider_notification_preferences_id` (`id`),
  KEY `ix_provider_notification_preferences_provider_id` (`provider_id`),
  CONSTRAINT `provider_notification_preferences_ibfk_1` FOREIGN KEY (`provider_id`) REFERENCES `providers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provider_notification_preferences`
--

LOCK TABLES `provider_notification_preferences` WRITE;
/*!40000 ALTER TABLE `provider_notification_preferences` DISABLE KEYS */;
INSERT INTO `provider_notification_preferences` VALUES (1,8,'APPOINTMENT',1,0,0,'2026-04-21 09:55:53',NULL,'2026-06-16 10:45:39',NULL,0),(2,8,'LAB_RESULTS',0,0,0,'2026-04-21 09:55:53',NULL,'2026-04-21 09:55:53',NULL,0),(3,8,'FOLLOW_UP',0,0,0,'2026-04-21 09:55:53',NULL,'2026-04-21 09:55:53',NULL,0),(4,8,'BILLING',0,0,0,'2026-04-21 09:55:53',NULL,'2026-04-21 09:55:53',NULL,0),(5,8,'SYSTEM',0,0,0,'2026-04-21 09:55:53',NULL,'2026-04-21 09:55:53',NULL,0),(6,4,'APPOINTMENT',0,0,0,'2026-07-07 02:36:08',NULL,'2026-07-07 02:36:08',NULL,0),(7,4,'LAB_RESULTS',0,0,0,'2026-07-07 02:36:08',NULL,'2026-07-07 02:36:08',NULL,0),(8,4,'FOLLOW_UP',0,0,0,'2026-07-07 02:36:08',NULL,'2026-07-07 02:36:08',NULL,0),(9,4,'BILLING',0,0,0,'2026-07-07 02:36:08',NULL,'2026-07-07 02:36:08',NULL,0),(10,4,'SYSTEM',0,0,0,'2026-07-07 02:36:08',NULL,'2026-07-07 02:36:08',NULL,0);
/*!40000 ALTER TABLE `provider_notification_preferences` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-07-13 11:56:15
