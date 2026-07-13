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
-- Table structure for table `provider_patient_map`
--

DROP TABLE IF EXISTS `provider_patient_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `provider_patient_map` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `provider_id` bigint NOT NULL,
  `patient_id` bigint NOT NULL,
  `assigned_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `deleted_at` tinyint(1) NOT NULL DEFAULT '0',
  `patient_type` enum('INPATIENT','OUTPATIENT','REFFERAL') NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_provider_patient` (`provider_id`,`patient_id`),
  KEY `patient_id` (`patient_id`),
  CONSTRAINT `provider_patient_map_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`),
  CONSTRAINT `provider_patient_map_ibfk_2` FOREIGN KEY (`provider_id`) REFERENCES `providers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provider_patient_map`
--

LOCK TABLES `provider_patient_map` WRITE;
/*!40000 ALTER TABLE `provider_patient_map` DISABLE KEYS */;
INSERT INTO `provider_patient_map` VALUES (1,8,1,'2026-04-11 11:19:54','2026-04-11 11:19:54',NULL,NULL,NULL,0,'INPATIENT'),(2,8,4,NULL,'0000-00-00 00:00:00',NULL,NULL,NULL,0,'REFFERAL'),(3,8,2,NULL,'0000-00-00 00:00:00',NULL,NULL,NULL,0,'INPATIENT'),(35,4,5,'2026-05-02 08:56:33','2026-05-02 08:56:33',8,'2026-05-02 08:56:33',NULL,0,'REFFERAL'),(36,10,1,'2026-05-03 06:10:37','2026-05-03 06:10:37',8,'2026-05-03 06:10:37',NULL,0,'REFFERAL'),(37,10,2,'2026-05-04 08:36:42','2026-05-04 08:36:42',8,'2026-05-04 08:36:43',NULL,0,'REFFERAL'),(38,11,2,'2026-05-04 08:41:43','2026-05-04 08:41:43',8,'2026-05-04 08:41:43',NULL,0,'REFFERAL');
/*!40000 ALTER TABLE `provider_patient_map` ENABLE KEYS */;
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
