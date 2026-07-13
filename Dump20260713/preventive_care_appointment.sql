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
-- Table structure for table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `appointmentName` varchar(255) DEFAULT NULL,
  `appointmentScheduledDateTime` datetime DEFAULT NULL,
  `appointmentScheduledDate` date DEFAULT NULL,
  `durationInMinutes` int NOT NULL,
  `notes` text,
  `status` varchar(255) DEFAULT NULL,
  `appointmentType` varchar(255) DEFAULT NULL,
  `appointment_type_id` bigint DEFAULT NULL,
  `patient_id` bigint DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `deleted_at` tinyint(1) NOT NULL,
  `provider_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_appt_date` (`appointmentScheduledDate`),
  KEY `idx_appt_patient` (`patient_id`),
  KEY `idx_appt_type` (`appointment_type_id`),
  KEY `ix_appointment_appointment_type_id` (`appointment_type_id`),
  KEY `ix_appointment_id` (`id`),
  KEY `ix_appointment_patient_id` (`patient_id`),
  KEY `ix_appointment_provider_id` (`provider_id`),
  CONSTRAINT `appointment_ibfk_1` FOREIGN KEY (`appointment_type_id`) REFERENCES `appointment_type` (`id`),
  CONSTRAINT `appointment_ibfk_2` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`),
  CONSTRAINT `appointment_ibfk_3` FOREIGN KEY (`provider_id`) REFERENCES `providers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment`
--

LOCK TABLES `appointment` WRITE;
/*!40000 ALTER TABLE `appointment` DISABLE KEYS */;
INSERT INTO `appointment` VALUES (1,'General Checkup','2026-04-30 10:44:44','2026-04-30',30,'Routine health check','Scheduled','General',1,1,'2026-04-11 10:44:44',NULL,NULL,NULL,0,8),(2,'Dental Cleaning','2026-05-06 10:44:44','2026-05-06',45,'Teeth cleaning session','Completed','Dental',2,1,'2026-04-11 10:44:44',NULL,NULL,NULL,0,7),(3,'Cardiology Visit','2026-07-07 10:44:44','2026-07-07',60,'Heart checkup','Cancelled','Cardiology',3,1,'2026-04-11 10:44:44',NULL,NULL,NULL,0,8);
/*!40000 ALTER TABLE `appointment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-07-13 11:56:21
