-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: ccmaster
-- ------------------------------------------------------
-- Server version	5.6.28-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `1clientneedscat`
--

DROP TABLE IF EXISTS `1clientneedscat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `1clientneedscat` (
  `idNeedsCat` int(11) NOT NULL AUTO_INCREMENT,
  `Category` varchar(60) NOT NULL,
  PRIMARY KEY (`idNeedsCat`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='A user definable list of Client needs types or categories';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `1clientneedscat`
--

LOCK TABLES `1clientneedscat` WRITE;
/*!40000 ALTER TABLE `1clientneedscat` DISABLE KEYS */;
INSERT INTO `1clientneedscat` VALUES (1,'Personal Devl - Work Experience'),(2,'Personal Devl - Qualifications of Training'),(3,'Personal Devl - IT Skills'),(4,'Personal Devl - Functional Skills'),(5,'Personal Devl - ESOL'),(6,'Personal Devl - Increased knowledge of local labour market'),(7,'Personal Devl - Confidence'),(8,'Personal Devl - Employability Skills'),(9,'Personal Devl - Presentation Skills'),(10,'Personal Devl - Other'),(11,'Further Support/Advice - ID'),(12,'Further Support/Advice - Debts Issues'),(13,'Further Support/Advice - Transport'),(14,'Further Support/Advice - Addiiction (Drugs/Alcohol)'),(15,'Further Support/Advice - Health Issues'),(16,'Further Support/Advice - Child Care'),(17,'Further Support/Advice - Money'),(18,'Further Support/Advice - Learning difficulties/disabilities'),(19,'Further Support/Advice - Convictions'),(20,'Further Support/Advice - Single Parent'),(21,'Further Support/Advice - Other');
/*!40000 ALTER TABLE `1clientneedscat` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-01-28 13:28:27
