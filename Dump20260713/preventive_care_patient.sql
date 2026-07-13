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
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `legacy_createdBy` varchar(128) DEFAULT NULL,
  `firstName` varchar(128) DEFAULT NULL,
  `lastName` varchar(128) DEFAULT NULL,
  `middleName` varchar(128) DEFAULT NULL,
  `fullName` varchar(128) DEFAULT NULL,
  `dateOfBirth` date DEFAULT NULL,
  `gender` varchar(15) DEFAULT NULL,
  `pronoun` varchar(255) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `primaryPhone` varchar(20) DEFAULT NULL,
  `secondaryPhone` varchar(20) DEFAULT NULL,
  `preferredEmail` varchar(128) DEFAULT NULL,
  `preferredPhone` varchar(20) DEFAULT NULL,
  `preferredCity` varchar(128) DEFAULT NULL,
  `preferredState` varchar(128) DEFAULT NULL,
  `preferredStreetAddress` varchar(128) DEFAULT NULL,
  `preferredZipCode` varchar(15) DEFAULT NULL,
  `city` varchar(128) DEFAULT NULL,
  `state` varchar(128) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `streetAddress1` varchar(128) DEFAULT NULL,
  `streetAddress2` varchar(128) DEFAULT NULL,
  `zipcode` varchar(15) DEFAULT NULL,
  `secondaryAddrStreetAddress` varchar(128) DEFAULT NULL,
  `secondaryAddrStreetAddress1` varchar(128) DEFAULT NULL,
  `secondaryAddrCity` varchar(128) DEFAULT NULL,
  `secondaryAddrState` varchar(128) DEFAULT NULL,
  `secondaryAddrZip` varchar(15) DEFAULT NULL,
  `secondaryAddrCountry` varchar(128) DEFAULT NULL,
  `maritalStatus` enum('SINGLE','MARRIED','DIVORCED','WIDOWED') DEFAULT NULL,
  `medicalRecordNumber` varchar(128) DEFAULT NULL,
  `risk_level_id` bigint DEFAULT NULL,
  `expired` tinyint(1) DEFAULT NULL,
  `race` varchar(45) DEFAULT NULL,
  `source` varchar(70) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `deleted_at` tinyint(1) NOT NULL,
  `country_code` varchar(10) DEFAULT NULL,
  `emr_firstName` varchar(128) DEFAULT NULL,
  `emr_relationship` varchar(50) DEFAULT NULL,
  `emr_mobileNumber` varchar(20) DEFAULT NULL,
  `emr_alternateMobileNumber` varchar(20) DEFAULT NULL,
  `emr_country_code` varchar(10) DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_patient_user_id` (`user_id`),
  KEY `idx_patient_email` (`email`),
  KEY `idx_patient_mrn` (`medicalRecordNumber`),
  KEY `idx_patient_phone` (`primaryPhone`),
  KEY `ix_patient_id` (`id`),
  KEY `ix_patient_risk_level_id` (`risk_level_id`),
  CONSTRAINT `fk_patient_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `patient_ibfk_1` FOREIGN KEY (`risk_level_id`) REFERENCES `patient_risk_level` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES (1,'admin','Niranjana','Kumar',NULL,'Niranjana Kumar','1995-08-15','Female','She/Her','niranjana1@example.com','9876543210',NULL,'niranjana.pref@example.com','9876543210','Salem','Tamil Nadu','1, Rose Street','636001','Salem','Tamil Nadu','India','1, Rose Street',NULL,'636001',NULL,NULL,NULL,NULL,NULL,NULL,'SINGLE','MRN001',1,0,'Asian','Online','2026-04-08 15:50:34',NULL,'2026-04-08 15:50:34',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,21),(2,'admin','Arjun','Ravi',NULL,'Arjun Ravi','1990-12-22','Male','He/Him','arjun.ravi@example.com','9876501234',NULL,'arjun.pref@example.com','9876501234','Chennai','Tamil Nadu','12, Lake Road','600001','Chennai','Tamil Nadu','India','12, Lake Road',NULL,'600001',NULL,NULL,NULL,NULL,NULL,NULL,'MARRIED','MRN002',2,0,'Asian','Referral','2026-04-08 15:50:34',NULL,'2026-04-08 15:50:34',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'admin','John','Doe','M','John M Doe','1995-06-15','Male','He/Him','john.doe@email.com','9876543210','9123456780','john.preferred@email.com','9876543210','Chennai','Tamil Nadu','12 MG Road','600001','Chennai','Tamil Nadu','India','12 MG Road','Apt 4B','600001','12 MG Road','12 MG Road','Chennai','Tamil Nadu','600001','India','SINGLE','MRN123456',1,0,'Asian','web','2026-04-11 11:11:52',NULL,'2026-04-11 11:11:52',NULL,0,'+91',NULL,NULL,NULL,NULL,NULL,NULL),(5,NULL,'chinna','Doe','M','chinna M Doe','1995-06-15','Male','He/Him','john@email.com','9876543210',NULL,'john@email.com','9876543210','Chicago','IL','123 Main St','60601','Chicago','IL','USA','123 Main St',NULL,'60601',NULL,NULL,NULL,NULL,NULL,NULL,'SINGLE','MRN-001',NULL,0,'Asian','Referral','2026-05-02 10:51:21',NULL,'2026-05-02 10:51:21',NULL,0,'+1',NULL,NULL,NULL,NULL,NULL,NULL),(6,NULL,'sathish','Doe','M','sathish M Doe','1995-06-15','Male','He/Him','john@email.com','9876543210',NULL,'john@email.com','9876543210','Chicago','IL','123 Main St','60601','Chicago','IL','USA','123 Main St',NULL,'60601',NULL,NULL,NULL,NULL,NULL,NULL,'SINGLE','MRN-001',NULL,0,'Asian','Referral','2026-05-02 10:52:08',NULL,'2026-05-02 10:52:08',NULL,0,'+1',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-07-13 11:56:13
