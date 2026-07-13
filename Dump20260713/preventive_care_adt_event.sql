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
-- Table structure for table `adt_event`
--

DROP TABLE IF EXISTS `adt_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adt_event` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `department` varchar(255) DEFAULT NULL,
  `priority` enum('EMERGENCY','URGENT','SCHEDULED') DEFAULT NULL,
  `scheduled_date` datetime DEFAULT NULL,
  `procedures_done` text,
  `treatment_given` text,
  `follow_up_days` enum('SEVEN','FIFTEEN','THIRTY') DEFAULT NULL,
  `medicine_duration` varchar(50) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `deleted_at` tinyint(1) NOT NULL DEFAULT '0',
  `admit_date` datetime DEFAULT NULL,
  `discharge_date` datetime DEFAULT NULL,
  `adt_type` varchar(255) DEFAULT NULL,
  `bed` varchar(255) DEFAULT NULL,
  `unit_room` varchar(255) DEFAULT NULL,
  `chief_complaint` varchar(500) DEFAULT NULL,
  `discharge_to` varchar(255) DEFAULT NULL,
  `disposition` varchar(255) DEFAULT NULL,
  `facility` varchar(255) DEFAULT NULL,
  `length_of_stay` int DEFAULT NULL,
  `message_date_time` datetime DEFAULT NULL,
  `notes` text,
  `payer` varchar(255) DEFAULT NULL,
  `admission_type` varchar(255) DEFAULT NULL,
  `client_id` varchar(128) DEFAULT NULL,
  `admission_request_id` bigint NOT NULL,
  `ward` enum('GENERAL','ICU','PRIVATE','SEMIPRIVATE') DEFAULT NULL,
  `patient_id` bigint NOT NULL,
  `attending_provider_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_adt_event_department` (`department`),
  KEY `idx_adt_event_priority` (`priority`),
  KEY `ix_adt_event_id` (`id`),
  KEY `ix_adt_event_admission_request_id` (`admission_request_id`),
  KEY `ix_adt_event_patient_id` (`patient_id`),
  KEY `ix_adt_event_attending_provider_id` (`attending_provider_id`),
  CONSTRAINT `adt_event_ibfk_1` FOREIGN KEY (`admission_request_id`) REFERENCES `admission_request` (`id`) ON DELETE CASCADE,
  CONSTRAINT `adt_event_ibfk_2` FOREIGN KEY (`admission_request_id`) REFERENCES `admission_request` (`id`) ON DELETE CASCADE,
  CONSTRAINT `adt_event_ibfk_3` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_adt_event_attending_provider` FOREIGN KEY (`attending_provider_id`) REFERENCES `providers` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adt_event`
--

LOCK TABLES `adt_event` WRITE;
/*!40000 ALTER TABLE `adt_event` DISABLE KEYS */;
INSERT INTO `adt_event` VALUES (2,'Cardiology','EMERGENCY',NULL,NULL,NULL,NULL,NULL,'2026-05-23 17:17:48',NULL,'2026-05-23 17:17:48',NULL,0,'2026-05-01 10:00:00','2026-05-05 11:30:00','DISCHARGE','B12','101','Severe Chest Pain',NULL,NULL,NULL,2,NULL,'Patient admitted for observation',NULL,'Emergency',NULL,1,'ICU',1,8),(3,'Cardiology','URGENT','2026-05-22 10:36:53','ECG, Blood Test','Pain Management','SEVEN','7 Days','2026-05-22 10:36:53',NULL,'2026-05-25 10:43:16',NULL,0,'2026-05-22 09:00:00',NULL,'ADMIT','B16','12','Chest Pain',NULL,NULL,'ABC Hospital',5,'2026-05-25 10:36:53','Patient under observation','Aetna','Emergency','CLT-1001',1,'ICU',2,8),(4,'General Medicine','URGENT','2026-05-25 10:44:14','Blood Test','IV Fluids and Medication','SEVEN','7 Days','2026-05-25 10:44:14',NULL,'2026-05-25 10:44:14',NULL,0,'2026-05-25 10:44:14',NULL,'ADMIT','A15','202','Fever and Headache',NULL,NULL,'ABC Hospital',NULL,'2026-05-25 10:44:14','Patient admitted for observation','Aetna','Emergency','CLT-2001',12,'GENERAL',1,8);
/*!40000 ALTER TABLE `adt_event` ENABLE KEYS */;
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
