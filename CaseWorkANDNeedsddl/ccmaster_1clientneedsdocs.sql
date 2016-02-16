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
-- Table structure for table `1clientneedsdocs`
--

DROP TABLE IF EXISTS `1clientneedsdocs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `1clientneedsdocs` (
  `idClientNeedsDocs` int(11) NOT NULL AUTO_INCREMENT,
  `idClientNeeds` int(11) NOT NULL,
  `ClientNeedsDocsDate` datetime NOT NULL COMMENT 'Date/time document stored',
  `ClientNeedsDocsPath` varchar(255) NOT NULL COMMENT 'Server path to document file',
  PRIMARY KEY (`idClientNeedsDocs`),
  KEY `fk_1ClientNeedsDocs_1ClientNeedsHeader1_idx` (`idClientNeeds`),
  CONSTRAINT `fk_1ClientNeedsDocs_1ClientNeedsHeader1` FOREIGN KEY (`idClientNeeds`) REFERENCES `1clientneedsheader` (`idClientNeeds`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Linkage to support uploaded documents for Client Needs';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `1clientneedsdocs`
--

LOCK TABLES `1clientneedsdocs` WRITE;
/*!40000 ALTER TABLE `1clientneedsdocs` DISABLE KEYS */;
/*!40000 ALTER TABLE `1clientneedsdocs` ENABLE KEYS */;
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
