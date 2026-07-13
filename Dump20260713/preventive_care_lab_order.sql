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
-- Table structure for table `lab_order`
--

DROP TABLE IF EXISTS `lab_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lab_order` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `patient_id` bigint NOT NULL,
  `ordering_provider_id` bigint DEFAULT NULL,
  `practice_id` bigint DEFAULT NULL,
  `order_date` datetime DEFAULT NULL,
  `status` enum('PENDING','IN_PROGRESS','COMPLETED','CANCELLED','AUTO_CREATED') DEFAULT NULL,
  `notes` text,
  `created_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `deleted_at` tinyint(1) NOT NULL,
  `preferred_lab` varchar(255) DEFAULT NULL,
  `preferred_collection_date` date DEFAULT NULL,
  `priority_level` enum('ROUTINE','URGENT','STAT') NOT NULL,
  `fasting_required` tinyint(1) NOT NULL,
  `adtevent_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_laborder_patient` (`patient_id`),
  KEY `idx_laborder_practice` (`practice_id`),
  KEY `idx_laborder_provider` (`ordering_provider_id`),
  KEY `ix_lab_order_id` (`id`),
  KEY `idx_laborder_adtevent` (`adtevent_id`),
  KEY `ix_lab_order_adtevent_id` (`adtevent_id`),
  CONSTRAINT `fk_lab_order_adtevent` FOREIGN KEY (`adtevent_id`) REFERENCES `adt_event` (`id`) ON DELETE SET NULL,
  CONSTRAINT `lab_order_ibfk_2` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`) ON DELETE CASCADE,
  CONSTRAINT `lab_order_ibfk_3` FOREIGN KEY (`practice_id`) REFERENCES `practice` (`id`),
  CONSTRAINT `lab_order_ibfk_4` FOREIGN KEY (`ordering_provider_id`) REFERENCES `providers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lab_order`
--

LOCK TABLES `lab_order` WRITE;
/*!40000 ALTER TABLE `lab_order` DISABLE KEYS */;
INSERT INTO `lab_order` VALUES (1,1,2,1,'2026-04-14 07:14:48',NULL,'consult','2026-04-14 07:15:11',NULL,'2026-04-14 07:15:11',NULL,0,NULL,NULL,'ROUTINE',0,NULL),(2,2,8,1,'2026-01-10 09:00:00','COMPLETED','Routine diabetes monitoring panel','2026-05-04 07:12:04',NULL,'2026-05-04 07:12:04',NULL,0,NULL,NULL,'ROUTINE',0,NULL),(3,2,8,1,'2026-02-15 10:30:00','COMPLETED','Annual lipid profile check','2026-05-04 07:12:04',NULL,'2026-05-04 07:12:04',NULL,0,NULL,NULL,'ROUTINE',0,NULL),(4,2,8,1,'2026-03-05 11:00:00','COMPLETED','Thyroid function test - routine follow-up','2026-05-04 07:12:04',NULL,'2026-05-04 07:12:04',NULL,0,NULL,NULL,'ROUTINE',0,NULL),(5,2,8,1,'2026-04-01 09:30:00','COMPLETED','Routine CBC with differential','2026-05-04 07:12:04',NULL,'2026-05-04 07:12:04',NULL,0,NULL,NULL,'ROUTINE',0,NULL),(6,2,8,1,'2026-04-20 02:00:00','PENDING','Renal function monitoring for Metformin use','2026-05-04 07:12:04',NULL,'2026-05-04 07:12:04',NULL,0,NULL,NULL,'ROUTINE',0,NULL),(7,1,8,NULL,'2026-06-08 02:39:30','PENDING',NULL,'2026-06-08 02:39:30',NULL,'2026-06-08 02:39:30',NULL,0,'Mercy Central - Main Lab','2026-06-08','ROUTINE',1,4);
/*!40000 ALTER TABLE `lab_order` ENABLE KEYS */;
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
