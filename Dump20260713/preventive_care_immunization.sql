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
-- Table structure for table `immunization`
--

DROP TABLE IF EXISTS `immunization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `immunization` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `patient_id` bigint NOT NULL,
  `service_date` date DEFAULT NULL,
  `service_time` varchar(255) DEFAULT NULL,
  `cpt_code` varchar(255) NOT NULL,
  `cvx_code` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `dose` varchar(255) NOT NULL,
  `units` varchar(255) NOT NULL,
  `route_code` varchar(255) NOT NULL,
  `route_description` varchar(255) NOT NULL,
  `loinc_code` varchar(255) NOT NULL,
  `snomed_code` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `deleted_at` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_immunization_patient` (`patient_id`),
  KEY `ix_immunization_id` (`id`),
  KEY `ix_immunization_patient_id` (`patient_id`),
  CONSTRAINT `immunization_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `immunization`
--

LOCK TABLES `immunization` WRITE;
/*!40000 ALTER TABLE `immunization` DISABLE KEYS */;
INSERT INTO `immunization` VALUES (1,1,'2026-01-10','09:00 AM','90658','141','Influenza vaccine, trivalent, preservative free','0.5','mL','IM','Intramuscular','88393-5','86198006','2026-05-04 06:56:20',NULL,'2026-05-04 06:56:20',NULL,0),(2,1,'2026-02-15','10:30 AM','91301','207','COVID-19 mRNA vaccine, Moderna, 100 mcg/0.5 mL','0.5','mL','IM','Intramuscular','96741-4','1119349007','2026-05-04 06:56:20',NULL,'2026-05-04 06:56:20',NULL,0),(3,1,'2026-03-05','11:00 AM','90746','43','Hepatitis B vaccine, adult dosage','1.0','mL','IM','Intramuscular','75507-7','16214007','2026-05-04 06:56:20',NULL,'2026-05-04 06:56:20',NULL,0),(4,1,'2026-03-20','02:00 PM','90715','115','Tdap vaccine, preservative free, adult','0.5','mL','IM','Intramuscular','87389-3','414004005','2026-05-04 06:56:20',NULL,'2026-05-04 06:56:20',NULL,0),(5,1,'2026-04-01','03:30 PM','90671','215','Pneumococcal conjugate vaccine, 15-valent (PCV15)','0.5','mL','IM','Intramuscular','91370-0','333598008','2026-05-04 06:56:20',NULL,'2026-05-04 06:56:20',NULL,0);
/*!40000 ALTER TABLE `immunization` ENABLE KEYS */;
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
