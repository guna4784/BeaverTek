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
-- Table structure for table `practice`
--

DROP TABLE IF EXISTS `practice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `practice` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `classname` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `primaryPhone` varchar(255) DEFAULT NULL,
  `secondaryPhone` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `streetAddress1` varchar(255) DEFAULT NULL,
  `streetAddress2` varchar(255) DEFAULT NULL,
  `zipcode` varchar(255) DEFAULT NULL,
  `associated_organization_id` bigint DEFAULT NULL,
  `practice_type_id` bigint DEFAULT NULL,
  `line_of_business_id` bigint DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `deleted_at` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_practice_email` (`email`),
  KEY `idx_practice_name` (`name`),
  KEY `idx_practice_phone` (`primaryPhone`),
  KEY `ix_practice_associated_organization_id` (`associated_organization_id`),
  KEY `ix_practice_id` (`id`),
  KEY `ix_practice_line_of_business_id` (`line_of_business_id`),
  KEY `ix_practice_practice_type_id` (`practice_type_id`),
  CONSTRAINT `practice_ibfk_1` FOREIGN KEY (`associated_organization_id`) REFERENCES `organization` (`id`),
  CONSTRAINT `practice_ibfk_2` FOREIGN KEY (`line_of_business_id`) REFERENCES `linesofbusiness` (`id`),
  CONSTRAINT `practice_ibfk_3` FOREIGN KEY (`practice_type_id`) REFERENCES `practice_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `practice`
--

LOCK TABLES `practice` WRITE;
/*!40000 ALTER TABLE `practice` DISABLE KEYS */;
INSERT INTO `practice` VALUES (1,NULL,NULL,NULL,NULL,NULL,'Auto-Created Practice 1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2026-04-14 07:15:11',NULL,'2026-04-14 07:15:11',NULL,0);
/*!40000 ALTER TABLE `practice` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-07-13 11:56:14
