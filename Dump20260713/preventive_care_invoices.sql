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
-- Table structure for table `invoices`
--

DROP TABLE IF EXISTS `invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoices` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `patient_id` bigint NOT NULL,
  `diagnosis` varchar(255) DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `status` enum('PAID','PENDING','FAILED') NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `deleted_at` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_invoice_patient_id` (`patient_id`),
  KEY `idx_invoice_status` (`status`),
  KEY `ix_invoices_id` (`id`),
  KEY `ix_invoices_patient_id` (`patient_id`),
  KEY `idx_invoice_created_at` (`created_at`),
  CONSTRAINT `invoices_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoices`
--

LOCK TABLES `invoices` WRITE;
/*!40000 ALTER TABLE `invoices` DISABLE KEYS */;
INSERT INTO `invoices` VALUES (11,1,'Diabetes Type 2','2026-04-30',1500.00,'PENDING','2026-02-16 11:53:01',NULL,'2026-04-16 11:53:01',NULL,0),(12,2,'Hypertension','2026-05-05',2000.00,'PAID','2026-04-01 11:53:01',NULL,'2026-04-16 11:53:01',NULL,0),(13,4,'Cardiac Checkup','2026-05-10',3500.00,'PENDING','2026-04-16 11:53:01',NULL,'2026-04-16 11:53:01',NULL,0),(14,1,'Thyroid Screening','2026-05-12',1200.00,'FAILED','2026-04-16 11:53:01',NULL,'2026-04-16 11:53:01',NULL,0),(15,1,'General Checkup','2026-05-15',800.00,'PENDING','2026-04-16 11:53:01',NULL,'2026-04-16 11:53:01',NULL,0),(16,1,'Diabetes Type 2','2026-04-30',1500.00,'PENDING','2026-04-21 16:49:09',NULL,'2026-04-21 16:49:09',NULL,0),(17,2,'Hypertension','2026-05-05',2000.00,'PAID','2026-04-21 16:49:09',NULL,'2026-04-21 16:49:09',NULL,0),(18,4,'Cardiac Checkup','2026-05-10',3500.00,'PENDING','2026-04-21 16:49:09',NULL,'2026-04-21 16:49:09',NULL,0),(19,1,'Thyroid Screening','2026-05-12',1200.00,'FAILED','2026-04-21 16:49:09',NULL,'2026-04-21 16:49:09',NULL,0),(20,1,'General Checkup','2026-05-15',800.00,'PENDING','2026-04-21 16:49:09',NULL,'2026-04-21 16:49:09',NULL,0);
/*!40000 ALTER TABLE `invoices` ENABLE KEYS */;
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
