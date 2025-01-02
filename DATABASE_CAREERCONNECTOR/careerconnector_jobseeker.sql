-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: careerconnector
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `jobseeker`
--

DROP TABLE IF EXISTS `jobseeker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobseeker` (
  `name` varchar(255) DEFAULT NULL,
  `phnno` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `resume_name` varchar(255) DEFAULT NULL,
  `profile` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `ln_id` varchar(255) DEFAULT NULL,
  `github` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `bio` varchar(255) DEFAULT NULL,
  `qualification` varchar(255) DEFAULT NULL,
  `skills` varchar(255) DEFAULT NULL,
  `exp` varchar(255) DEFAULT NULL,
  `projects` varchar(1000) DEFAULT NULL,
  `achieve` varchar(355) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobseeker`
--

LOCK TABLES `jobseeker` WRITE;
/*!40000 ALTER TABLE `jobseeker` DISABLE KEYS */;
INSERT INTO `jobseeker` VALUES ('Agni Basu','5896478955','agniB@gmail.com','AgniB#58','Rice','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Aindrila Sen','8888888888','aindrila@gmail.com','oyen@19','Nano','','I am a final-year college student.','','https://www.linkedin.com/in/oyendrila-sett-b42123249/','',NULL,'Dedicated, Enthusiastic, Passionate','Pursuing Graduation','Java, C, DSA','Fresher','Minor Project','N/A'),('Madhumita Ganguly','7458965745','madhu@gmail.com','Madhu@123','Gini','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Priyangshu Roy','7897897897','proy@gmail.com','proy@45','Chotu','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Soma Sett','8240000000','soma@gmail.com','soma@28','Moni','College ID.pdf','I am studying BCA at ABC University.','','https://www.linkedin.com/in/oyendrila-sett-b42123249/','',NULL,'I am studying BCA at ABC University. I am a final-year student.','12th Pass','Python, Java, DBMS, SQL','','Minor & Major Project','None');
/*!40000 ALTER TABLE `jobseeker` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-21  0:38:55
