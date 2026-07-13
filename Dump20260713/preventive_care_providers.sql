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
-- Table structure for table `providers`
--

DROP TABLE IF EXISTS `providers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `providers` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `first_name` varchar(128) DEFAULT NULL,
  `middle_name` varchar(128) DEFAULT NULL,
  `last_name` varchar(128) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `deleted_at` tinyint(1) NOT NULL DEFAULT '0',
  `gender` varchar(50) DEFAULT NULL,
  `facility` varchar(255) DEFAULT NULL,
  `license_type` varchar(255) DEFAULT NULL,
  `licence_number` varchar(255) DEFAULT NULL,
  `npi_number` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `practice_effective_date` date DEFAULT NULL,
  `practice_termination_date` date DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `street_address1` varchar(255) DEFAULT NULL,
  `street_address2` varchar(255) DEFAULT NULL,
  `zipcode` varchar(255) DEFAULT NULL,
  `contract_status` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `legal_practice_name` varchar(255) DEFAULT NULL,
  `practice_id` bigint DEFAULT NULL,
  `country_code` varchar(10) DEFAULT NULL,
  `emr_contact` varchar(255) DEFAULT NULL,
  `Specialty` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `ix_providers_email` (`email`),
  KEY `ix_providers_id` (`id`),
  KEY `idx_provider_email` (`email`),
  KEY `idx_provider_npi` (`npi_number`),
  KEY `idx_provider_phone` (`phone`),
  KEY `ix_providers_practice_id` (`practice_id`),
  CONSTRAINT `providers_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `providers_ibfk_2` FOREIGN KEY (`practice_id`) REFERENCES `practice` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `providers`
--

LOCK TABLES `providers` WRITE;
/*!40000 ALTER TABLE `providers` DISABLE KEYS */;
INSERT INTO `providers` VALUES (2,1,'John','M','Doe','john.provider@email.com','2026-04-11 11:15:55',NULL,'2026-04-11 11:15:55',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Cardiology'),(4,2,'Alice','K','Johnson','alice.provider@email.com','2026-04-11 11:17:13',NULL,'2026-04-11 11:17:13',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Dermatology'),(6,12,'chinna',NULL,'kumar','user@yopmail.com.com','2026-04-14 03:36:09',NULL,'2026-04-14 03:36:09',NULL,0,NULL,NULL,NULL,NULL,NULL,'6985412323',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'active',NULL,NULL,NULL,NULL,NULL,'Orthopedics'),(7,13,'chinna',NULL,'kumar','use@yopmail.com.com','2026-04-14 03:41:18',NULL,'2026-04-14 03:41:18',NULL,0,NULL,NULL,NULL,NULL,NULL,'6985412353',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'active',NULL,NULL,NULL,NULL,NULL,'ENT'),(8,8,'James',NULL,'Carter','james.carter@yopmail.com','2026-04-14 03:43:34',NULL,'2026-04-22 03:57:27',NULL,0,NULL,NULL,NULL,NULL,NULL,'3125557890',NULL,NULL,'Chicago','IL','us','4521 Maple Avenue','Apt 3B','60614',NULL,'active',NULL,NULL,NULL,'+1','3129876543','Neurology'),(9,15,'chinna',NULL,'kumar','us3@yopmail.com.com','2026-04-14 03:48:54',NULL,'2026-04-14 03:48:54',NULL,0,NULL,NULL,NULL,NULL,NULL,'6985412393',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'active',NULL,NULL,NULL,NULL,NULL,'Gynecology'),(10,16,'Arunnn',NULL,'k','arunnn@yopmail.com','2026-04-14 05:56:07',NULL,'2026-04-14 05:56:07',NULL,0,NULL,NULL,NULL,NULL,NULL,'9677358868',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'active',NULL,NULL,NULL,NULL,NULL,'Oncology'),(11,17,'ARUN',NULL,'k','arun@yopmail.com','2026-04-14 05:58:15',NULL,'2026-04-14 05:58:15',NULL,0,NULL,NULL,NULL,NULL,NULL,'9677358860',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'active',NULL,NULL,NULL,NULL,NULL,'Psychiatry'),(12,18,'guru',NULL,'k','guru@yopmail.com','2026-04-14 06:10:37',NULL,'2026-04-14 06:10:37',NULL,0,NULL,NULL,NULL,NULL,NULL,'9767753321',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'active',NULL,NULL,NULL,NULL,NULL,NULL),(13,19,'abi',NULL,'k','abiz@yopmail.com','2026-04-14 15:50:37',NULL,'2026-04-14 15:50:37',NULL,0,NULL,NULL,NULL,NULL,NULL,'9677357762',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'active',NULL,NULL,NULL,NULL,NULL,NULL),(14,20,'madhan',NULL,'p','madhan@yopmail.com','2026-04-17 05:32:40',NULL,'2026-04-17 05:32:40',NULL,0,NULL,NULL,NULL,NULL,NULL,'8270685674',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'active',NULL,NULL,NULL,NULL,NULL,NULL),(15,3,'Muthu',NULL,'Ramki','muthuramki@yopmail.com','2026-04-29 13:02:10',NULL,'2026-04-29 13:02:10',NULL,0,NULL,NULL,NULL,NULL,NULL,'9345319185',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'active',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `providers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-07-13 11:56:22
