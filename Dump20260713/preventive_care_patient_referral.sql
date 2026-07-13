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
-- Table structure for table `patient_referral`
--

DROP TABLE IF EXISTS `patient_referral`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient_referral` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `patient_id` bigint NOT NULL,
  `referral_reason` varchar(255) DEFAULT NULL,
  `referred_by` bigint DEFAULT NULL,
  `referred_to` bigint DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `deleted_at` tinyint(1) NOT NULL DEFAULT '0',
  `priority` enum('EMERGENCY','URGENT','MODERATE','SCHEDULED') NOT NULL,
  `instructions` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `referred_by` (`referred_by`),
  KEY `referred_to` (`referred_to`),
  KEY `ix_patient_referral_id` (`id`),
  KEY `ix_patient_referral_patient_id_safe` (`patient_id`),
  CONSTRAINT `patient_referral_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`),
  CONSTRAINT `patient_referral_ibfk_2` FOREIGN KEY (`referred_by`) REFERENCES `providers` (`id`),
  CONSTRAINT `patient_referral_ibfk_3` FOREIGN KEY (`referred_to`) REFERENCES `providers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_referral`
--

LOCK TABLES `patient_referral` WRITE;
/*!40000 ALTER TABLE `patient_referral` DISABLE KEYS */;
INSERT INTO `patient_referral` VALUES (1,1,'Patient requested specialist referral',2,8,'2026-04-11 11:19:54',NULL,'2026-04-11 11:19:54',NULL,0,'EMERGENCY',NULL),(3,4,'heavy fever',2,8,'2026-04-14 07:39:09',NULL,'2026-04-14 07:39:09',NULL,0,'EMERGENCY',NULL),(4,2,'viral fever',8,4,'2026-04-14 09:25:00',NULL,'2026-04-14 09:25:00',NULL,0,'EMERGENCY',NULL),(5,5,'viral fever',2,8,'2026-04-11 11:19:54',NULL,'2026-04-11 11:19:54',NULL,0,'EMERGENCY',NULL),(20,5,'backbone isue\n',8,4,'2026-05-02 08:56:33',8,'2026-05-02 08:56:33',NULL,0,'URGENT',''),(21,1,'kmjjkal',8,10,'2026-05-03 06:10:37',8,'2026-05-03 06:10:37',NULL,0,'URGENT',''),(22,2,'skmc jfis',8,10,'2026-05-04 08:36:43',8,'2026-05-04 08:36:43',NULL,0,'EMERGENCY',''),(23,2,'scarn m.jnkj',8,11,'2026-05-04 08:41:43',8,'2026-05-04 08:41:43',NULL,0,'URGENT','');
/*!40000 ALTER TABLE `patient_referral` ENABLE KEYS */;
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
