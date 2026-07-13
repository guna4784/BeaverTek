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
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test` (
  `test_id` bigint NOT NULL AUTO_INCREMENT,
  `test_name` varchar(255) NOT NULL,
  `test_code` varchar(100) DEFAULT NULL,
  `normal_range` varchar(255) DEFAULT NULL,
  `tat` varchar(100) DEFAULT NULL,
  `specimen` varchar(100) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `is_suggested` tinyint(1) DEFAULT NULL,
  `priority` bigint DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `deleted_at` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`test_id`),
  KEY `idx_test_active` (`is_active`),
  KEY `idx_test_name` (`test_name`),
  KEY `idx_test_suggested` (`is_suggested`),
  KEY `ix_test_test_id` (`test_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test`
--

LOCK TABLES `test` WRITE;
/*!40000 ALTER TABLE `test` DISABLE KEYS */;
INSERT INTO `test` VALUES (1,'Complete Blood Count','CBC','M:13.5-17.5 g/dL','4 hrs','EDTA Blood',1,1,1,'2026-06-02 12:12:34',NULL,NULL,NULL,0),(2,'Serum Iron','SI','60-170 mcg/dL','6 hrs','Serum',1,1,2,'2026-06-02 12:12:34',NULL,NULL,NULL,0),(3,'Ferritin','FERR','12-300 ng/mL','6 hrs','Serum',1,1,3,'2026-06-02 12:12:34',NULL,NULL,NULL,0),(4,'Fasting Blood Glucose','FBG','70-100 mg/dL','2 hrs','Serum',1,1,1,'2026-06-02 12:12:34',NULL,NULL,NULL,0),(5,'HbA1c','HBA1C','<5.7%','4 hrs','EDTA Blood',1,1,2,'2026-06-02 12:12:34',NULL,NULL,NULL,0),(6,'Post Prandial Blood Glucose','PPBG','<140 mg/dL','2 hrs','Serum',1,1,3,'2026-06-02 12:12:34',NULL,NULL,NULL,0),(7,'Lipid Profile','LP','LDL <100 mg/dL','6 hrs','Serum',1,1,1,'2026-06-02 12:12:34',NULL,NULL,NULL,0),(8,'Serum Creatinine','SCREAT','0.6-1.2 mg/dL','4 hrs','Serum',1,1,2,'2026-06-02 12:12:34',NULL,NULL,NULL,0),(9,'Urine Routine','UR','Normal','2 hrs','Urine',1,1,3,'2026-06-02 12:12:34',NULL,NULL,NULL,0),(10,'TSH','TSH','0.4-4.0 mIU/L','6 hrs','Serum',1,1,1,'2026-06-02 12:12:34',NULL,NULL,NULL,0),(11,'Free T3','FT3','2.3-4.2 pg/mL','6 hrs','Serum',1,1,2,'2026-06-02 12:12:34',NULL,NULL,NULL,0),(12,'Free T4','FT4','0.8-1.8 ng/dL','6 hrs','Serum',1,1,3,'2026-06-02 12:12:34',NULL,NULL,NULL,0),(13,'Liver Function Test','LFT','ALT 7-56 U/L','6 hrs','Serum',1,1,1,'2026-06-02 12:12:34',NULL,NULL,NULL,0),(14,'Serum Bilirubin','SBIL','0.1-1.2 mg/dL','4 hrs','Serum',1,1,2,'2026-06-02 12:12:34',NULL,NULL,NULL,0),(15,'PT INR','PTINR','0.8-1.1','4 hrs','Citrate',1,1,3,'2026-06-02 12:12:34',NULL,NULL,NULL,0),(16,'Blood Urea Nitrogen','BUN','7-20 mg/dL','4 hrs','Serum',1,1,1,'2026-06-02 12:12:34',NULL,NULL,NULL,0),(17,'eGFR','EGFR','>60 mL/min','4 hrs','Serum',1,1,2,'2026-06-02 12:12:34',NULL,NULL,NULL,0),(18,'Urine Microalbumin','UMA','<30 mg/g','6 hrs','Urine',1,1,3,'2026-06-02 12:12:34',NULL,NULL,NULL,0),(19,'Dengue NS1 Antigen','DNS1','Negative','4 hrs','Serum',1,1,1,'2026-06-02 12:12:34',NULL,NULL,NULL,0),(20,'Dengue IgM / IgG','DENGAB','Negative','6 hrs','Serum',1,1,2,'2026-06-02 12:12:34',NULL,NULL,NULL,0),(21,'Platelet Count','PLT','1.5-4.0 Lakhs','2 hrs','EDTA Blood',1,1,3,'2026-06-02 12:12:34',NULL,NULL,NULL,0),(22,'Malaria Antigen Test','MAT','Negative','2 hrs','EDTA Blood',1,1,1,'2026-06-02 12:12:34',NULL,NULL,NULL,0),(23,'Peripheral Smear','PS','No parasites','4 hrs','EDTA Blood',1,1,2,'2026-06-02 12:12:34',NULL,NULL,NULL,0),(24,'CBC with Differential','CBCD','Normal','4 hrs','EDTA Blood',1,1,3,'2026-06-02 12:12:34',NULL,NULL,NULL,0),(25,'Widal Test','WIDAL','<1:80','6 hrs','Serum',1,1,1,'2026-06-02 12:12:34',NULL,NULL,NULL,0),(26,'Typhoid IgM','TYPHIGM','Negative','4 hrs','Serum',1,1,2,'2026-06-02 12:12:34',NULL,NULL,NULL,0),(27,'Blood Culture','BC','No growth','48 hrs','Blood',1,1,3,'2026-06-02 12:12:34',NULL,NULL,NULL,0),(28,'Vitamin D Total (25-OH)','VITD','30-100 ng/mL','8 hrs','Serum',1,1,1,'2026-06-02 12:12:34',NULL,NULL,NULL,0),(29,'Calcium','CA','8.5-10.2 mg/dL','4 hrs','Serum',1,1,2,'2026-06-02 12:12:34',NULL,NULL,NULL,0),(30,'Parathyroid Hormone','PTH','15-65 pg/mL','8 hrs','Serum',1,1,3,'2026-06-02 12:12:34',NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `test` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-07-13 11:56:24
