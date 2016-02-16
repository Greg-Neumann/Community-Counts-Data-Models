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
-- Table structure for table `1clientcaseservicedetail`
--

DROP TABLE IF EXISTS `1clientcaseservicedetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `1clientcaseservicedetail` (
  `idClientCaseServiceDetail` int(11) NOT NULL,
  `idClientCaseDetail` int(11) NOT NULL,
  `CaseServiceTime` time NOT NULL COMMENT 'Amount of time spent on this Service for this client',
  `CaseServiceDate` datetime NOT NULL COMMENT 'Date & Time that this time was stated',
  `CaseServiceStaffid` int(11) DEFAULT NULL COMMENT 'Id of staff creating/last amending this record',
  `CaseServiceNotes` text,
  `CaseServiceEditDate` datetime DEFAULT NULL COMMENT 'Date/Time that the record was last edited',
  PRIMARY KEY (`idClientCaseServiceDetail`),
  KEY `fk_1ClientCaseServiceDetail_1ClientCaseService1_idx` (`idClientCaseDetail`),
  KEY `fk_1ClientCaseServiceDetail_Users1_idx` (`CaseServiceStaffid`),
  CONSTRAINT `fk_1ClientCaseServiceDetail_1ClientCaseService1` FOREIGN KEY (`idClientCaseDetail`) REFERENCES `1clientcaseservice` (`idClientCaseDetail`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_1ClientCaseServiceDetail_Users1` FOREIGN KEY (`CaseServiceStaffid`) REFERENCES `users` (`idUsers`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `1clientcaseservicedetail`
--

LOCK TABLES `1clientcaseservicedetail` WRITE;
/*!40000 ALTER TABLE `1clientcaseservicedetail` DISABLE KEYS */;
/*!40000 ALTER TABLE `1clientcaseservicedetail` ENABLE KEYS */;
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
