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
-- Table structure for table `postjob`
--

DROP TABLE IF EXISTS `postjob`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `postjob` (
  `email` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `location` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `jdesc` varchar(1000) DEFAULT NULL,
  `jres` varchar(1000) DEFAULT NULL,
  `education` varchar(255) DEFAULT NULL,
  `experience` varchar(255) DEFAULT NULL,
  `vacancy` varchar(255) DEFAULT NULL,
  `salary` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `postdate` varchar(255) DEFAULT NULL,
  `deadline` varchar(255) DEFAULT NULL,
  `cname` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `cdesc` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`email`,`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `postjob`
--

LOCK TABLES `postjob` WRITE;
/*!40000 ALTER TABLE `postjob` DISABLE KEYS */;
INSERT INTO `postjob` VALUES ('aindri@gmail.com','Associate Engineer','Mumbai','Part Time','Associate software engineers implement their knowledge of computer science principles and proficiency in programming languages to build software products, and systems.','An associate software engineer is an employee who designs, develops and uses software applications, and systems.','BCA','0-2 years','41','3 LPA','Any','19/11/2023','27/12/2023','Accenture','Go on, be a Tiger.','Accenture plc is an Irish-American professional services company based in Dublin, specializing in information technology services and consulting.','accenture.jpg'),('aks@gmail.com','Client Support','Kolkata','Full Time','Join our dynamic team as a Client Support Specialist, helping users navigate the path to love and resolving inquiries with empathy and efficiency.','Provide exceptional customer support through various channels, troubleshoot technical issues, and contribute to the ongoing improvement of the user experience.','Graduate','1-3 years','21','3 LPA','Any','19/11/2023','29/11/2023','Tinder','Swipe Right for Love','Connecting hearts worldwide, Tinder is the go-to platform for meaningful connections.','1 Wallpaper.jpg'),('debashis@gmail.com','Software Engineer','Chennai','Full Time','A software engineer is an engineer who is bestowed with the responsibilities of designing, building, and testing software to ensure they match the needs of their customers.','Software engineers\' roles and responsibilities include understanding the usage of the programming language, platforms, and architectures so that they can develop applications from games to network control systems','MCA / M.Tech','4-7 years','23','6.8 LPA','Any','19/11/2023','31/12/2023','Sony','Like.No.other','Sony Corporation  is a Japanese multinational conglomerate corporation headquartered in K?nan, Minato, Tokyo.','1 Wallpaper.jpg'),('gautham@gmail.com','Software Developer','Ludhiana','Full Time','Embark on a journey as a Software Developer at Stripe, shaping the future of online transactions and revolutionizing digital payments.','Contribute to the development of scalable and secure software solutions, collaborate with a talented engineering team, and drive continuous improvement in our payment infrastructure.','B.Tech / BCA','0-3 years','37','3.7 LPA','Any','19/11/2023','25/11/2023','Stripe','Online Commerce Unleashed',' Powering the online economy, Stripe is a technology company that builds economic infrastructure for the internet.','1 Wallpaper.jpg'),('ishita@gmail.com ','Customer Support','Hyderabad','Part Time','Here is the Job Description...','Here is the Job Responsibilities...','Graduate','Freshers','12','3 LPA','Female','19/11/2023','12/12/2023','Paypal','Here is the company tagline...','Here is the company description...','1 Wallpaper.jpg'),('mbhattacharya@yahoo.com','Product Lead','Chennai','Full Time',' Lead the charge as a Product Lead at Apple, driving the development and launch of groundbreaking products that shape the future of technology.',' Define product strategy, collaborate with cross-functional teams, and oversee the end-to-end product lifecycle, ensuring excellence in user experience.','MCA / MBA','>4 years','25','9 LPA','Any','19/11/2023','15/12/2023','Apple','Think Different.',' Inspiring innovation, Apple is a pioneer in consumer electronics, software, and services.','1 Wallpaper.jpg'),('smith@gmail.com','Backend Developer','Bangalore','Full Time','Fuel your passion for innovation as a Backend Developer at Airbnb, contributing to the platform that connects travelers with unforgettable experiences.',' Design and implement scalable backend systems, collaborate with a diverse engineering team, and play a key role in shaping the future of travel.','BCA / B.Tech',' Freshers','17','3.8 LPA','Any','19/11/2023','23/12/2023','AirBNB','Belong Anywhere.','Redefining travel and hospitality, Airbnb offers unique stays and experiences around the globe.','1 Wallpaper.jpg'),('vikram@gmail.com','Accountant','Pune','Full Time',' Excel in your career as an Accountant at Visa, ensuring financial accuracy and compliance in a dynamic and global financial environment.','Manage financial records, perform reconciliations, and contribute to financial reporting and analysis, ensuring adherence to regulatory standards.','BBA ','<2 years','18','4 LPA','Any','19/11/2023','29/12/2023','Visa','Everywhere You Want To Be.','Enabling global commerce, Visa is a leading payment technology company connecting businesses and consumers.','1 Wallpaper.jpg');
/*!40000 ALTER TABLE `postjob` ENABLE KEYS */;
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
