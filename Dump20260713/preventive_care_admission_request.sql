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
-- Table structure for table `admission_request`
--

DROP TABLE IF EXISTS `admission_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admission_request` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `patient_id` bigint NOT NULL,
  `priority_level` enum('EMERGENCY','URGENT','MODERATE','SCHEDULED') DEFAULT NULL,
  `reason_for_admission` text,
  `status` enum('PENDING','APPROVED','REJECTED','ADMITTED') DEFAULT 'PENDING',
  `created_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `deleted_at` tinyint(1) NOT NULL DEFAULT '0',
  `department` varchar(255) DEFAULT NULL,
  `scheduled_date` datetime DEFAULT NULL,
  `preferred_time` varchar(50) DEFAULT NULL,
  `admission_date` datetime DEFAULT NULL,
  `notes` text,
  `admitting_physician_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_admission_request_id` (`id`),
  KEY `idx_admission_patient` (`patient_id`),
  KEY `idx_admission_status` (`status`),
  KEY `ix_admission_request_patient_id` (`patient_id`),
  KEY `ix_admission_request_admitting_physician_id` (`admitting_physician_id`),
  CONSTRAINT `admission_request_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`),
  CONSTRAINT `admission_request_ibfk_2` FOREIGN KEY (`admitting_physician_id`) REFERENCES `providers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admission_request`
--

LOCK TABLES `admission_request` WRITE;
/*!40000 ALTER TABLE `admission_request` DISABLE KEYS */;
INSERT INTO `admission_request` VALUES (1,1,'URGENT','Patient experiencing severe chest pain, shortness of breath, and elevated blood pressure. Requires immediate cardiology evaluation and monitoring.','PENDING','2026-05-13 16:27:29',8,'2026-05-13 16:27:29',NULL,0,'cardiology','2026-05-13 16:11:33','11.00','2026-05-13 16:11:33',NULL,NULL),(2,1,'URGENT','Patient requires scheduled observation and further evaluation for persistent abdominal pain and nausea.','ADMITTED','2026-05-13 16:29:53',8,'2026-05-13 16:29:53',NULL,0,'Gastroenterology','2026-05-15 10:00:00','10:00 AM','2026-05-14 09:30:00',NULL,NULL),(3,2,'SCHEDULED','Severe chest pain with shortness of breath since 2 hours','PENDING','2026-05-14 01:50:08',8,'2026-05-14 01:50:08',NULL,0,'General Medicine','2026-05-14 18:30:00','01:00',NULL,NULL,NULL),(4,2,'EMERGENCY','Severe chest pain with shortness of breath since 2 hours','PENDING','2026-05-14 02:06:24',8,'2026-05-14 02:06:24',NULL,0,'General Medicine',NULL,NULL,NULL,NULL,NULL),(5,2,'URGENT','string','PENDING','2026-05-14 02:09:56',8,'2026-05-14 02:09:56',NULL,0,'cardiology','2026-05-14 02:09:23','string','2026-05-14 02:09:23','snlcjflsimijs',NULL),(6,2,'EMERGENCY','scmkajksd','PENDING','2026-05-14 02:10:29',8,'2026-05-14 02:10:29',NULL,0,'General Medicine',NULL,NULL,NULL,NULL,NULL),(7,2,'MODERATE','dscf s','PENDING','2026-05-14 02:12:01',8,'2026-05-14 02:12:01',NULL,0,'General Medicine',NULL,NULL,NULL,NULL,NULL),(8,2,'SCHEDULED',NULL,'PENDING','2026-05-14 02:14:01',8,'2026-05-14 02:14:01',NULL,0,'Orthopedics','2026-05-14 18:30:00','02:00',NULL,'dfss',NULL),(9,2,'URGENT','sdvt','PENDING','2026-05-14 02:17:03',8,'2026-05-14 02:17:03',NULL,0,'General Medicine',NULL,NULL,NULL,NULL,NULL),(10,2,'URGENT','sdvaf','PENDING','2026-05-14 02:17:14',8,'2026-05-14 02:17:14',NULL,0,'General Medicine',NULL,NULL,NULL,NULL,NULL),(11,2,'URGENT','saf','PENDING','2026-05-14 02:20:04',8,'2026-05-14 02:20:04',NULL,0,'Cardiology',NULL,NULL,NULL,NULL,NULL),(12,1,'EMERGENCY','chest pain','PENDING','2026-05-26 15:11:45',8,'2026-05-26 15:11:45',NULL,0,'Cardiology',NULL,NULL,NULL,NULL,NULL),(13,4,'MODERATE','chest pain','PENDING','2026-06-18 12:47:50',8,'2026-06-18 12:47:50',NULL,0,'Cardiology',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `admission_request` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-07-13 11:56:19
