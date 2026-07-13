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
-- Table structure for table `adt_transfer`
--

DROP TABLE IF EXISTS `adt_transfer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adt_transfer` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `adtevent_id` bigint NOT NULL,
  `status` enum('PENDING','COMPLETED') NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `deleted_at` tinyint(1) NOT NULL DEFAULT '0',
  `transfer_type` enum('DEPARTMENT_TRANSFER','HOSPITAL_TRANSFER','HOME_CARE_DISCHARGE') NOT NULL,
  `notes` text,
  `requested_by` bigint DEFAULT NULL,
  `current_department` varchar(255) DEFAULT NULL,
  `transfer_department` varchar(255) DEFAULT NULL,
  `receiving_provider_id` bigint DEFAULT NULL,
  `current_hospital` varchar(255) DEFAULT NULL,
  `receiving_hospital` varchar(255) DEFAULT NULL,
  `hospital_contact` varchar(50) DEFAULT NULL,
  `address` text,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `zip_code` varchar(20) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `discharge_date` date DEFAULT NULL,
  `primary_caregiver` varchar(255) DEFAULT NULL,
  `caregiver_contact` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_adt_transfer_adtevent_id` (`adtevent_id`),
  KEY `idx_adt_transfer_event_id` (`adtevent_id`),
  KEY `idx_adt_transfer_status` (`status`),
  KEY `idx_adt_transfer_type` (`transfer_type`),
  KEY `ix_adt_transfer_id` (`id`),
  KEY `requested_by` (`requested_by`),
  KEY `receiving_provider_id` (`receiving_provider_id`),
  CONSTRAINT `adt_transfer_ibfk_1` FOREIGN KEY (`adtevent_id`) REFERENCES `adt_event` (`id`) ON DELETE CASCADE,
  CONSTRAINT `adt_transfer_ibfk_2` FOREIGN KEY (`requested_by`) REFERENCES `providers` (`id`),
  CONSTRAINT `adt_transfer_ibfk_3` FOREIGN KEY (`receiving_provider_id`) REFERENCES `providers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adt_transfer`
--

LOCK TABLES `adt_transfer` WRITE;
/*!40000 ALTER TABLE `adt_transfer` DISABLE KEYS */;
INSERT INTO `adt_transfer` VALUES (3,2,'COMPLETED','2026-05-28 06:42:15',NULL,'2026-05-28 06:42:15',NULL,0,'DEPARTMENT_TRANSFER','Patient shifted from ICU to General Ward',8,'ICU','General Ward',14,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `adt_transfer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-07-13 11:56:23
