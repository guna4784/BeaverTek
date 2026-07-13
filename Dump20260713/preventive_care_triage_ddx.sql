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
-- Table structure for table `triage_ddx`
--

DROP TABLE IF EXISTS `triage_ddx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `triage_ddx` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `patient_id` bigint NOT NULL,
  `visit_id` bigint NOT NULL,
  `session_id` varchar(36) NOT NULL,
  `language` varchar(50) DEFAULT NULL,
  `is_emergency` tinyint(1) NOT NULL,
  `triage_level` varchar(50) DEFAULT NULL,
  `assessment_message` text,
  `leading_diagnosis` varchar(255) DEFAULT NULL,
  `leading_diagnosis_name` varchar(255) DEFAULT NULL,
  `leading_diagnosis_likelihood` decimal(4,3) DEFAULT NULL,
  `leading_supporting_features` json DEFAULT NULL,
  `leading_conflicting_features` json DEFAULT NULL,
  `rationale` text,
  `differentials` json DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT (now()),
  `updated_at` datetime DEFAULT (now()),
  `triage_label` varchar(100) DEFAULT NULL,
  `triage_description` varchar(255) DEFAULT NULL,
  `assessment_message_en` text,
  `red_flag_present` tinyint(1) DEFAULT NULL,
  `vitals_flags` json DEFAULT NULL,
  `key_findings` json DEFAULT NULL,
  `next_steps` json DEFAULT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `deleted_at` tinyint(1) NOT NULL DEFAULT '0',
  `key_missing_information` json DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `session_id` (`session_id`),
  KEY `idx_triage_ddx_patient` (`patient_id`),
  KEY `idx_triage_ddx_session` (`session_id`),
  KEY `idx_triage_ddx_visit` (`visit_id`),
  CONSTRAINT `triage_ddx_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`),
  CONSTRAINT `triage_ddx_ibfk_2` FOREIGN KEY (`visit_id`) REFERENCES `patient_visit` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `triage_ddx`
--

LOCK TABLES `triage_ddx` WRITE;
/*!40000 ALTER TABLE `triage_ddx` DISABLE KEYS */;
INSERT INTO `triage_ddx` VALUES (1,1,4,'e0ac7b26-047a-4d82-9e85-cf82964e1d91','English',1,'ed_now','I understand this situation can be very concerning. Based on the critically low breathing rate and severe lack of oxygen you\'re experiencing, this could be due to a serious condition like an opioid overdose, a problem in the brain affecting breathing, or a collapsed lung. These are life-threatening issues that need immediate attention. Please do not wait—seek emergency care right away to get the help you need.','Unknown',NULL,NULL,'[]','[]','System error during DDX generation: Invalid json output: ```json\n{\n  \"top_hypotheses\": [\n    {\n      \"name\": \"Opioid (or other central nervous system depressant) overdose\",\n      \"short_code\": \"OPIOV\",\n      \"risk_category\": \"emergent\",\n      \"likelihood\": 0.55,\n      \"is_red_flag\": true,\n      \"primary_system\": \"neuro\",\n      \"supporting_features\": [\n        \"Critically low respiratory rate (6 breaths/min)\",\n        \"Severe hypoxemia (SpO2 75%)\",\n        \"Young adult male – higher risk for recreational drug use\"\n      ],\n      \"conflicting_features\": [\n        \"No reported pinpoint pupils or known drug use\",\n        \"No documented history of chronic respiratory disease\"\n      ],\n      \"recommended_disposition\": \"ed_now\",\n      \"icd10_codes\": [\n        \"T40.0X1A\",   // Poisoning by heroin, accidental\n        \"T40.2X1A\",   // Poisoning by other opioids, accidental\n        \"R57.0\"       // Respiratory failure, unspecified\n      ]\n    },\n    {\n      \"name\": \"Acute central nervous system depression (e.g., traumatic brain injury, intracranial hemorrhage, severe metabolic encephalopathy)\",\n      \"short_code\": \"CNSD\",\n      \"risk_category\": \"emergent\",\n      \"likelihood\": 0.30,\n      \"is_red_flag\": true,\n      \"primary_system\": \"neuro\",\n      \"supporting_features\": [\n        \"Very low respiratory drive suggests brainstem involvement\",\n        \"Severe hypoxemia\"\n      ],\n      \"conflicting_features\": [\n        \"No reported head trauma, altered mental status, or focal neurological deficits\",\n        \"No known metabolic derangements\"\n      ],\n      \"recommended_disposition\": \"ed_now\",\n      \"icd10_codes\": [\n        \"G93.5\",      // Acute respiratory failure\n        \"R40.2\",      // Altered mental status, unspecified\n        \"I62.9\"       // Nontraumatic intracranial hemorrhage, unspecified\n      ]\n    },\n    {\n      \"name\": \"Tension pneumothorax (or large spontaneous pneumothorax)\",\n      \"short_code\": \"PNEUMO\",\n      \"risk_category\": \"emergent\",\n      \"likelihood\": 0.15,\n      \"is_red_flag\": true,\n      \"primary_system\": \"respiratory\",\n      \"supporting_features\": [\n        \"Severe hypoxemia\",\n        \"Potential for rapid respiratory collapse\"\n      ],\n      \"conflicting_features\": [\n        \"Absence of reported chest pain, dyspnea, or unilateral breath sounds\",\n        \"Low respiratory rate rather than tachypnea typical of pneumothorax\"\n      ],\n      \"recommended_disposition\": \"ed_now\",\n      \"icd10_codes\": [\n        \"J93.9\",      // Pneumothorax, unspecified\n        \"R57.0\"       // Respiratory failure, unspecified\n      ]\n    }\n  ],\n  \"red_flag_present\": true,\n  \"overall_disposition\": \"ed_now\",\n  \"suggested_specialist\": \"Emergency Medicine (with toxicology and neurology consultation as needed)\",\n  \"key_missing_information\": [\n    \"Exact blood pressure, heart rate, and temperature\",\n    \"Level of consciousness / Glasgow Coma Scale\",\n    \"Pupil size and reactivity\",\n    \"Medication, drug, or alcohol use history (including recent ingestion)\",\n    \"Recent trauma or head injury\",\n    \"Physical exam findings (lung auscultation, chest wall movement, skin color)\",\n    \"Arterial blood gas results\",\n    \"Electrolytes, glucose, and toxicology screen\"\n  ],\n  \"internal_reasoning_summary\": \"The patient presents with critically low respiratory rate and severe hypoxemia, both immediate life‑threatening red flags. The most common cause of such hypoventilation in a young adult male is opioid or other CNS depressant overdose, which can produce profound respiratory depression with relatively few other clues. Central nervous system pathology (e.g., intracranial bleed or metabolic encephalopathy) is also emergent and can suppress respiratory drive. A tension pneumothorax, while less likely given the low RR, remains a dangerous possibility that must be ruled out quickly. All three hypotheses are emergent, requiring immediate emergency department evaluation, airway management, and targeted investigations. The key missing data are vital signs, mental status, exposure history, and focused physical exam, which will help prioritize the differential once the patient is assessed.\"\n}\n```\nFor troubleshooting, visit: https://docs.langchain.com/oss/python/langchain/errors/OUTPUT_PARSING_FAILURE . Recommend in-person evaluation.','[]','2026-05-23 12:27:28','2026-05-23 12:27:28',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(2,1,6,'c702cc8a-5765-4433-8313-7c10a05251d7','English',1,'ed_now','I understand this must be really frightening — having a high fever, trouble breathing, and feeling unwell is incredibly stressful. Based on your symptoms, including a very high fever, low oxygen levels, fast breathing, and a slower heart rate than expected, this could be a severe lung infection like pneumonia that\'s progressing quickly, or possibly something like Legionnaires’ disease. This is concerning and needs immediate attention because it can worsen rapidly and may lead to serious complications like sepsis or respiratory failure. Please go to the emergency department right away so you can get the urgent care and testing you need.','Severe community‑acquired pneumonia with early acute respiratory distress syndrome (ARDS) / sepsis','Severe community‑acquired pneumonia with early acute respiratory distress syndrome (ARDS) / sepsis',0.550,'[\"High fever (103 °F)\", \"Tachypnea (RR 25)\", \"Critically low oxygen saturation (SpO₂ 81 %)\", \"Potential for rapid progression to septic shock\"]','[\"Bradycardia (HR 50) is atypical for classic septic shock (usually tachycardic)\", \"No reported cough, sputum, or chest pain (though not provided)\"]','The patient is a young adult male with a constellation of life‑threatening vital sign abnormalities: high fever, marked hypoxemia, tachypnea, and unexpected bradycardia. These findings point to a severe acute respiratory process that may be infectious (e.g., pneumonia/ARDS) or an atypical pathogen that produces relative bradycardia (Legionella). While status asthmaticus is possible, the lack of known asthma history and the presence of high fever make it less likely. All three diagnoses carry red‑flag features requiring immediate emergency department evaluation, aggressive supportive care, and rapid diagnostic work‑up. The most probable is severe community‑acquired pneumonia progressing to ARDS/sepsis, but Legionella is a strong consideration given the classic Faget sign. Missing data such as exam findings, labs, imaging, and exposure history are critical to refine the differential and guide definitive management.','[{\"name\": \"Atypical pneumonia due to Legionella pneumophila (Legionnaires’ disease) with relative bradycardia (Faget sign)\", \"likelihood\": 0.3, \"supporting_features\": [\"High fever\", \"Relative bradycardia (HR 50) – classic for Legionella\", \"Respiratory distress and hypoxemia\"], \"conflicting_features\": [\"No known exposure to contaminated water sources (information missing)\", \"Absence of gastrointestinal symptoms (often present in Legionella)\"]}, {\"name\": \"Status asthmaticus (severe asthma exacerbation) with hypoxemic respiratory failure\", \"likelihood\": 0.15, \"supporting_features\": [\"Tachypnea and severe hypoxemia\", \"Potential for bradycardia in late fatigue phase\"], \"conflicting_features\": [\"No history of asthma or wheezing reported\", \"High fever is less typical for pure asthma exacerbation\"]}]','2026-05-23 12:32:51','2026-05-23 12:32:51',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL);
/*!40000 ALTER TABLE `triage_ddx` ENABLE KEYS */;
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
