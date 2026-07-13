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
-- Table structure for table `medication`
--

DROP TABLE IF EXISTS `medication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medication` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `patient_id` bigint DEFAULT NULL,
  `drug_id` bigint DEFAULT NULL,
  `pharmacy_id` bigint DEFAULT NULL,
  `prescriber_id` bigint DEFAULT NULL,
  `totalDaysSupply` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `numberOfRefills` int DEFAULT NULL,
  `fillDate` date DEFAULT NULL,
  `currentPDC` int DEFAULT NULL,
  `allowableDays` int DEFAULT NULL,
  `refillStatus` varchar(255) DEFAULT NULL,
  `historical` tinyint(1) NOT NULL,
  `nextRefillDate` date DEFAULT NULL,
  `streetAddress` varchar(255) DEFAULT NULL,
  `drugName` varchar(255) DEFAULT NULL,
  `drugStrength` varchar(255) DEFAULT NULL,
  `drugIntake` varchar(255) DEFAULT NULL,
  `drugNdc` varchar(255) DEFAULT NULL,
  `billed` varchar(255) DEFAULT NULL,
  `indHiv` varchar(255) DEFAULT NULL,
  `drugForm` varchar(255) DEFAULT NULL,
  `frequency` varchar(255) DEFAULT NULL,
  `rxClass` varchar(255) DEFAULT NULL,
  `medication_unique_id` varchar(128) DEFAULT NULL,
  `sig` varchar(255) DEFAULT NULL,
  `compoundCode` text,
  `dispenseStatusCode` text,
  `drugAdministrativeRoute` text,
  `drugAhfsCode` text,
  `drugAhfsDescription` text,
  `drugDeaCode` text,
  `drugDeaCodeDescription` text,
  `drugDosageForm` text,
  `drugGpiNumber` text,
  `drugMultiSourceCode` text,
  `drugMultiSourceDescription` text,
  `drugPharmacyClass1Description` text,
  `drugPharmacyClass1Type` text,
  `drugPharmacyClass2Description` text,
  `drugPharmacyClass2Type` text,
  `drugPharmacyClass3Description` text,
  `drugPharmacyClass3Type` text,
  `drugPurpose` text,
  `drugTherapeuticClassCodeDescription` text,
  `genericFlag` text,
  `genericName` text,
  `labelName` text,
  `ndcCodeDescription` text,
  `planCode` text,
  `planState` text,
  `prescribingProviderDesignation` text,
  `prescribingProviderNpi` text,
  `prescribingProviderPhone` text,
  `prescribingProviderPracticeName` text,
  `prescribingProviderPracticeNpi` text,
  `prescribingProviderPracticeTin` text,
  `prescribingProviderSpeciality` text,
  `prescriptionAuthorizationNumber` text,
  `prescriptionCount` int DEFAULT NULL,
  `prescriptionFillType` text,
  `prescriptionOriginCode` text,
  `prescriptionReferenceNumber` text,
  `prescriptionWrittenDate` text,
  `refillCode` text,
  `refillCount` int DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `deleted_at` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pharmacy_id` (`pharmacy_id`),
  KEY `idx_med_drug` (`drug_id`),
  KEY `idx_med_patient` (`patient_id`),
  KEY `idx_med_prescriber` (`prescriber_id`),
  KEY `idx_med_unique` (`medication_unique_id`),
  KEY `ix_medication_id` (`id`),
  CONSTRAINT `medication_ibfk_1` FOREIGN KEY (`drug_id`) REFERENCES `drug` (`id`),
  CONSTRAINT `medication_ibfk_2` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`),
  CONSTRAINT `medication_ibfk_3` FOREIGN KEY (`pharmacy_id`) REFERENCES `pharmacy` (`id`),
  CONSTRAINT `medication_ibfk_4` FOREIGN KEY (`prescriber_id`) REFERENCES `careprovider` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medication`
--

LOCK TABLES `medication` WRITE;
/*!40000 ALTER TABLE `medication` DISABLE KEYS */;
INSERT INTO `medication` VALUES (2,1,NULL,NULL,NULL,NULL,NULL,30,'2026-05-08',NULL,NULL,NULL,1,NULL,NULL,'Metformin','500mg',NULL,NULL,NULL,NULL,NULL,'M,N','Antidiabetic',NULL,'After food',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Control blood sugar',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2026-05-08 12:04:22',NULL,'2026-05-08 12:04:22',NULL,0),(3,1,NULL,NULL,NULL,NULL,NULL,30,'2026-05-08',NULL,NULL,NULL,1,NULL,NULL,'Amlodipine','5mg',NULL,NULL,NULL,NULL,NULL,'M,E','Antihypertensive',NULL,'Before food',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Control blood pressure',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2026-05-08 12:04:22',NULL,'2026-05-08 12:04:22',NULL,0),(4,1,NULL,NULL,NULL,NULL,NULL,30,'2026-05-08',NULL,NULL,NULL,1,NULL,NULL,'Atorvastatin','10mg',NULL,NULL,NULL,NULL,NULL,'N','Statin',NULL,'After food',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Control cholesterol',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2026-05-08 12:04:22',NULL,'2026-05-08 12:04:22',NULL,0),(5,2,NULL,NULL,NULL,NULL,NULL,7,'2026-05-22',NULL,NULL,NULL,1,NULL,NULL,'Amoxicillin','10 mg',NULL,NULL,NULL,NULL,NULL,'M','Antibiotic',NULL,'B-Food',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Take only if fever above 100°F',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2026-05-08 12:32:18',NULL,'2026-05-08 12:32:18',NULL,0),(6,2,NULL,NULL,NULL,NULL,NULL,7,'2026-05-22',NULL,NULL,NULL,1,NULL,NULL,'Paracetamol','20 mg',NULL,NULL,NULL,NULL,NULL,'M','Analgesic',NULL,'B-Food',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Take only if fever above 100°F',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2026-05-08 12:32:18',NULL,'2026-05-08 12:32:18',NULL,0),(7,2,NULL,NULL,NULL,NULL,NULL,15,'2026-05-07',NULL,NULL,NULL,1,NULL,NULL,'wre','10 mg',NULL,NULL,NULL,NULL,NULL,'M,E','sd',NULL,'B-Food',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2026-05-08 12:44:27',NULL,'2026-05-08 12:44:27',NULL,0),(8,2,NULL,NULL,NULL,NULL,NULL,15,'2026-05-07',NULL,NULL,NULL,1,NULL,NULL,'wvrt','10 mg',NULL,NULL,NULL,NULL,NULL,'M','rter',NULL,'A-Food',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2026-05-08 12:47:52',NULL,'2026-05-08 12:47:52',NULL,0),(9,1,NULL,NULL,NULL,NULL,NULL,15,'2026-05-08',NULL,NULL,NULL,1,NULL,NULL,'sdc g','10 mg',NULL,NULL,NULL,NULL,NULL,'M','xv g',NULL,'B-Food',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2026-05-08 15:42:36',8,'2026-05-08 15:42:36',NULL,0);
/*!40000 ALTER TABLE `medication` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-07-13 11:56:15
