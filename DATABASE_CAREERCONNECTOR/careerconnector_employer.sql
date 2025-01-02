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
-- Table structure for table `employer`
--

DROP TABLE IF EXISTS `employer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employer` (
  `ename` varchar(255) DEFAULT NULL,
  `e_email` varchar(255) NOT NULL,
  `cname` varchar(255) DEFAULT NULL,
  `ctype` varchar(255) DEFAULT NULL,
  `clocation` varchar(255) DEFAULT NULL,
  `cemail` varchar(255) DEFAULT NULL,
  `cphone` varchar(255) DEFAULT NULL,
  `clicense` varchar(255) NOT NULL,
  `canswer` varchar(255) DEFAULT NULL,
  `cpass` varchar(255) DEFAULT NULL,
  `desig` varchar(255) DEFAULT NULL,
  `comp_ln` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `comp_web` varchar(255) DEFAULT NULL,
  `domains` varchar(255) DEFAULT NULL,
  `comp_about` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`e_email`,`clicense`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employer`
--

LOCK TABLES `employer` WRITE;
/*!40000 ALTER TABLE `employer` DISABLE KEYS */;
INSERT INTO `employer` VALUES ('Aindri Chatterjee','aindri@gmail.com','Flipkart','Product Based','Kolkata','fpkrt@gmail.com','7899877898','FPKRT1234565','Daal','Flip@08','HR','https://www.linkedin.com/in/',NULL,'flipkart.com','null','Flipkart Private Limited is an Indian e-commerce company, headquartered in Bangalore, and incorporated in Singapore as a private limited company.'),('A.K. Shaw','aks@gmail.com','Tinder','IT','Kolkata','tinder@gmail.com','7896541235','TNDR09453123','Prawn','TNDR@07',NULL,NULL,NULL,NULL,NULL,NULL),('Amal Paul','amal@gmail.com','Paypal','IT','Bangalore','paypal@gmail.com','2222222222','PAYP12333344','Maruti','PAY@PAL',NULL,NULL,NULL,NULL,NULL,NULL),('Anjali Mahato','anjali@gmail.com','Amazon','Product','Delhi','amazon@gmail.com','8974562125','AMAZ78643366','Hundai','amz@033',NULL,NULL,NULL,NULL,NULL,NULL),('Ashish Gupta','ashish@gmail.com','Zomato','Meal Based','Gujarat','zomato@gmail.com','1199966332','ZMT#15185251','Bruzza','ZMT@06',NULL,NULL,NULL,NULL,NULL,NULL),('Debashis Dutta','debashis@gmail.com','Microsoft','MNC','Chennai','micros@gmail.com','8977899877','Micro1233211','Vaibhav','Micro@05','Recruiter','https://www.linkedin.com/',NULL,'microsoft.com','Engineer | Developer | Data Scientist','Microsoft Mobile was a subsidiary of Microsoft involved in the development and manufacturing of mobile phones.'),('Gauri Prashad','gauri@gmail.com','Sony','IT','Gujarat','sony@gmail.com','4589667785','SONY74542562','Gita','SONY@gauri',NULL,NULL,NULL,NULL,NULL,NULL),('Gautham Vishal','gautham@gmail.com','Stripe','Start Up','Arunachal Pradesh','stripe@gmail.com','4569872213','STRP09090909','Skoda','STRP@05',NULL,NULL,NULL,NULL,NULL,NULL),('Ishita Chowbey','ishita@gmail.com','Puma','Product Based','Hyderabad','puma@gmail.com','7777777770','PUMA12345677','Lalita','Puma@04','HR','https://www.linkedin.com/',NULL,'puma.com','','Puma SE is a German multinational corporation that designs and manufactures athletic and casual footwear, apparel, and accessories, headquartered in Herzogenaurach, Bavaria, Germany.'),('John Doe','john@gmail.com','Croma','Product','Kolkata','croma@gmail.com','6666666666','CRM213131212','Sushi','CRM@#05',NULL,NULL,NULL,NULL,NULL,NULL),('M. Bhattacharya ','mbhattacharya@yahoo.com','Apple','MNC','USA','apple@yahoo.com','3365588595','APPL64788788','Chicken','Appl#ip',NULL,NULL,NULL,NULL,NULL,NULL),('Rajni Sinha','rajni@gmail.com','Google','MNC','Ludhiana','google@gmail.com','8800220022','GGL880099009','Lamburghini','GGL@06',NULL,NULL,NULL,NULL,NULL,NULL),('Rohit Dasgupta','rohit@gmail.com','Sprint','Start Up','Kolkata','sprint@gmail.com','8901270897','SPRT54397746','Disha','SPRT@04',NULL,NULL,NULL,NULL,NULL,NULL),('Smith Joe','smith@gmail.com','AirBNB','Software Based','UK','airbnb@gmail.com','8800117755','AIR1234BNB56','Chow','AIR@BNB',NULL,NULL,NULL,NULL,NULL,NULL),('Sonam Agarwal','sonam@gmail.com','Swiggy','Food Based','Gurgaon','swiggy@gmail.com','2288833669','SGY225563555','Aru','SGY@#08',NULL,NULL,NULL,NULL,NULL,NULL),('Swati Chopra','swati@gmail.com','Adidas','Product','Gurgaon','adidas@gmail.com','6547896578','ADI9823DAS12','Rice','ADI@DAS',NULL,NULL,NULL,NULL,NULL,NULL),('Vikram Rathore','vikram@gmail.com','Visa','Travel','Pune','visa@gmail.com','5557789966','VISA27764324','Vicky','VISA@VIK',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `employer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-21  0:38:56
