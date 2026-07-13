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
-- Table structure for table `patient_vitals`
--

DROP TABLE IF EXISTS `patient_vitals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient_vitals` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `visit_id` bigint NOT NULL,
  `temperature` decimal(5,2) DEFAULT NULL,
  `heart_rate` int DEFAULT NULL,
  `respiratory_rate` int DEFAULT NULL,
  `bloodpressure` varchar(20) DEFAULT NULL,
  `oxygen_saturation` decimal(5,2) DEFAULT NULL,
  `height_cm` decimal(5,2) DEFAULT NULL,
  `weight_kg` decimal(5,2) DEFAULT NULL,
  `bmi` decimal(5,2) DEFAULT NULL,
  `pain_score` int DEFAULT NULL,
  `notes` varchar(500) DEFAULT NULL,
  `recorded_at` datetime DEFAULT NULL,
  `recorded_by` bigint DEFAULT NULL,
  `blood_group` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_vitals_visit` (`visit_id`),
  KEY `ix_patient_vitals_id` (`id`),
  KEY `ix_patient_vitals_visit_id` (`visit_id`),
  CONSTRAINT `patient_vitals_ibfk_1` FOREIGN KEY (`visit_id`) REFERENCES `patient_visit` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_vitals`
--

LOCK TABLES `patient_vitals` WRITE;
/*!40000 ALTER TABLE `patient_vitals` DISABLE KEYS */;
INSERT INTO `patient_vitals` VALUES (1,4,98.60,78,18,'120/80',98.00,170.00,70.00,24.22,2,'Patient stable, mild fever symptoms','2026-05-04 06:22:10',101,NULL),(2,5,99.10,85,20,'130/85',97.50,165.00,75.00,27.55,4,'Complaints of chest discomfort','2026-05-05 06:22:10',102,NULL),(3,6,96.25,72,16,'118/76',99.00,175.00,68.00,22.20,1,'Follow-up visit, condition improving','2026-05-06 06:22:10',103,NULL);
/*!40000 ALTER TABLE `patient_vitals` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-07-13 11:56:18
