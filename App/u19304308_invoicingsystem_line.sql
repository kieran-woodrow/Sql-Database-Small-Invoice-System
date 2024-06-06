-- MySQL dump 10.13  Distrib 8.0.19, for macos10.15 (x86_64)
--
-- Host: wheatley.cs.up.ac.za    Database: u19304308_invoicingsystem
-- ------------------------------------------------------
-- Server version	5.6.38-log

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
-- Table structure for table `line`
--

DROP TABLE IF EXISTS `line`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `line` (
  `inv_number` decimal(10,0) NOT NULL,
  `line_number` int(1) NOT NULL,
  `prod_code` varchar(10) NOT NULL,
  `line_units` int(11) NOT NULL,
  `line_price` decimal(13,2) NOT NULL,
  `linecol` varchar(45) NOT NULL,
  PRIMARY KEY (`inv_number`,`line_number`),
  KEY `prod_code_idx` (`prod_code`),
  CONSTRAINT `inv_number` FOREIGN KEY (`inv_number`) REFERENCES `invoice` (`inv_number`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `prod_code` FOREIGN KEY (`prod_code`) REFERENCES `product` (`prod_code`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `line`
--

LOCK TABLES `line` WRITE;
/*!40000 ALTER TABLE `line` DISABLE KEYS */;
INSERT INTO `line` VALUES (1001,1,'123-21UUY',1,189.99,''),(1001,2,'SRE-657UG',3,2.99,''),(1002,1,'QER-34256',2,18.63,''),(1003,1,'ZZXI3245Q',1,6.79,''),(1003,2,'SRE-657UG',1,2.99,''),(1003,3,'001278-AB',1,12.95,''),(1004,1,'001278-AB',1,12.95,''),(1004,2,'SRE-657UG',2,2.99,'');
/*!40000 ALTER TABLE `line` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-25  8:33:40
