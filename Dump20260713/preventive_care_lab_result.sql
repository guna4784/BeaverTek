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
-- Table structure for table `lab_result`
--

DROP TABLE IF EXISTS `lab_result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lab_result` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `lab_order_id` bigint NOT NULL,
  `test_name` varchar(255) NOT NULL,
  `loinc_code` varchar(50) DEFAULT NULL,
  `result_value` varchar(255) DEFAULT NULL,
  `units` varchar(50) DEFAULT NULL,
  `reference_range` varchar(100) DEFAULT NULL,
  `result_date` datetime DEFAULT NULL,
  `status` enum('NORMAL','HIGH','LOW','PENDING','CANCELLED') DEFAULT NULL,
  `notes` text,
  `created_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `deleted_at` tinyint(1) NOT NULL,
  `test_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_lab_result_lab_order_id` (`lab_order_id`),
  KEY `idx_labresult_test` (`test_id`),
  CONSTRAINT `fk_lab_result_test` FOREIGN KEY (`test_id`) REFERENCES `test` (`test_id`),
  CONSTRAINT `lab_result_ibfk_1` FOREIGN KEY (`lab_order_id`) REFERENCES `lab_order` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lab_result`
--

LOCK TABLES `lab_result` WRITE;
/*!40000 ALTER TABLE `lab_result` DISABLE KEYS */;
INSERT INTO `lab_result` VALUES (1,1,'Hemoglobin','718-7','13.5','g/dL','13.0 - 17.0','2026-04-14 07:15:19','NORMAL','Within normal range','2026-04-14 07:15:40',NULL,'2026-05-13 00:45:48',NULL,0,NULL),(2,1,'Fasting Blood Glucose','1558-6','98','mg/dL','70 - 99','2026-01-10 11:00:00','NORMAL','Within normal range','2026-05-04 07:12:04',NULL,'2026-05-13 00:45:48',NULL,0,NULL),(3,1,'HbA1c','4548-4','6.2','%','< 5.7','2026-01-10 11:00:00','HIGH','Slightly elevated – prediabetes range','2026-05-04 07:12:04',NULL,'2026-05-13 00:45:48',NULL,0,NULL),(4,1,'Fasting Insulin','20448-7','10','uIU/mL','2.6 - 24.9','2026-01-10 11:00:00','NORMAL','Normal','2026-05-04 07:12:04',NULL,'2026-05-13 00:45:48',NULL,0,NULL),(5,2,'Total Cholesterol','2093-3','185','mg/dL','< 200','2026-02-15 12:30:00','NORMAL','Desirable range','2026-05-04 07:12:04',NULL,'2026-05-13 00:45:48',NULL,0,NULL),(6,2,'HbA1c','18262-6','110','mg/dL','< 100','2026-02-15 12:30:00','HIGH','Borderline high – monitor','2026-05-04 07:12:04',NULL,'2026-05-13 00:45:48',NULL,0,NULL),(7,2,'HDL Cholesterol','2085-9','52','mg/dL','> 40','2026-02-15 12:30:00','NORMAL','Normal','2026-05-04 07:12:04',NULL,'2026-05-13 00:45:48',NULL,0,NULL),(8,2,'Triglycerides','2571-8','140','mg/dL','< 150','2026-02-15 12:30:00','NORMAL','Within normal range','2026-05-04 07:12:04',NULL,'2026-05-13 00:45:48',NULL,0,NULL),(9,3,'TSH','3016-3','2.5','mIU/L','0.4 - 4.0','2026-03-05 01:00:00','NORMAL','Normal thyroid function','2026-05-04 07:12:04',NULL,'2026-05-13 00:45:48',NULL,0,NULL),(10,3,'Free T4','3024-7','1.1','ng/dL','0.8 - 1.8','2026-03-05 01:00:00','NORMAL','Normal','2026-05-04 07:12:04',NULL,'2026-05-13 00:45:48',NULL,0,NULL),(11,3,'Free T3','3051-0','3.2','pg/mL','2.3 - 4.2','2026-03-05 01:00:00','NORMAL','Normal','2026-05-04 07:12:04',NULL,'2026-05-13 00:45:48',NULL,0,NULL),(12,4,'Hemoglobin','718-7','13.5','g/dL','12.0 - 17.5','2026-04-01 11:00:00','NORMAL','Normal','2026-05-04 07:12:04',NULL,'2026-05-13 00:45:48',NULL,0,NULL),(13,4,'WBC Count','6690-2','7.2','x10³/µL','4.5 - 11.0','2026-04-01 11:00:00','NORMAL','Normal','2026-05-04 07:12:04',NULL,'2026-05-13 00:45:48',NULL,0,NULL),(14,4,'Platelet Count','777-3','250','x10³/µL','150 - 400','2026-04-01 11:00:00','NORMAL','Normal','2026-05-04 07:12:04',NULL,'2026-05-13 00:45:48',NULL,0,NULL),(15,4,'Hematocrit','4544-3','41','%','36 - 50','2026-04-01 11:00:00','NORMAL','Normal','2026-05-04 07:12:04',NULL,'2026-05-13 00:45:48',NULL,0,NULL),(16,6,'Serum Creatinine','2160-0',NULL,'mg/dL','0.6 - 1.2',NULL,'NORMAL','Awaiting result','2026-05-04 07:12:04',NULL,'2026-05-22 03:04:11',NULL,0,NULL),(17,6,'HbA1c','3094-0','110','mg/dL','7 - 20','2026-04-01 11:00:00','HIGH','Awaiting result','2026-05-04 07:12:04',NULL,'2026-05-22 02:28:38',NULL,0,NULL),(18,6,'eGFR','62238-1',NULL,'mL/min','> 60',NULL,'NORMAL','Awaiting result','2026-05-04 07:12:04',NULL,'2026-05-22 03:04:11',NULL,0,NULL),(19,7,'Fasting Blood Glucose',NULL,NULL,NULL,NULL,NULL,'NORMAL',NULL,'2026-06-08 02:39:30',NULL,'2026-06-18 09:48:16',NULL,0,4),(20,7,'HbA1c',NULL,NULL,NULL,NULL,NULL,'NORMAL',NULL,'2026-06-08 02:39:30',NULL,'2026-06-18 09:48:16',NULL,0,5),(21,7,'Post Prandial Blood Glucose',NULL,NULL,NULL,NULL,NULL,'NORMAL',NULL,'2026-06-08 02:39:30',NULL,'2026-06-18 09:48:16',NULL,0,6);
/*!40000 ALTER TABLE `lab_result` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-07-13 11:56:16
