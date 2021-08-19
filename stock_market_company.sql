-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: stock_market
-- ------------------------------------------------------
-- Server version	5.7.20-log

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
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `symbol` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  `name` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  `isin` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  `industry` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  `series` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (1,'ADANIPORTS','Adani Ports and Special Economic Zone Ltd.','INE742F01042','SERVICES','EQ'),(2,'ASIANPAINT','Asian Paints Ltd.','INE021A01026','CONSUMER GOODS','EQ'),(3,'AXISBANK','Axis Bank Ltd.','INE238A01034','FINANCIAL SERVICES','EQ'),(4,'BAJAJ-AUTO','Bajaj Auto Ltd.','INE917I01010','AUTOMOBILE','EQ'),(5,'BAJAJFINSV','Bajaj Finserv Ltd.','INE918I01018','FINANCIAL SERVICES','EQ'),(6,'BAJFINANCE','Bajaj Finance Ltd.','INE296A01024','FINANCIAL SERVICES','EQ'),(7,'BHARTIARTL','Bharti Airtel Ltd.','INE397D01024','TELECOM','EQ'),(8,'BPCL','Bharat Petroleum Corporation Ltd.','INE029A01011','ENERGY','EQ'),(9,'BRITANNIA','Britannia Industries Ltd.','INE216A01030','CONSUMER GOODS','EQ'),(10,'CIPLA','Cipla Ltd.','INE059A01026','PHARMA','EQ'),(11,'COALINDIA','Coal India Ltd.','INE522F01014','METALS','EQ'),(12,'DRREDDY','Dr. Reddy\'s Laboratories Ltd.','INE089A01023','PHARMA','EQ'),(13,'EICHERMOT','Eicher Motors Ltd.','INE066A01013','AUTOMOBILE','EQ'),(14,'GAIL','GAIL (India) Ltd.','INE129A01019','ENERGY','EQ'),(15,'GRASIM','Grasim Industries Ltd.','INE047A01021','CEMENT & CEMENT PRODUCTS','EQ'),(16,'HCLTECH','HCL Technologies Ltd.','INE860A01027','IT','EQ'),(17,'HDFC','Housing Development Finance Corporation Ltd.','INE001A01036','FINANCIAL SERVICES','EQ'),(18,'HDFCBANK','HDFC Bank Ltd.','INE040A01034','FINANCIAL SERVICES','EQ'),(19,'HEROMOTOCO','Hero MotoCorp Ltd.','INE158A01026','AUTOMOBILE','EQ'),(20,'HINDALCO','Hindalco Industries Ltd.','INE038A01020','METALS','EQ'),(21,'HINDUNILVR','Hindustan Unilever Ltd.','INE030A01027','CONSUMER GOODS','EQ'),(22,'ICICIBANK','ICICI Bank Ltd.','INE090A01021','FINANCIAL SERVICES','EQ'),(23,'INDUSINDBK','IndusInd Bank Ltd.','INE095A01012','FINANCIAL SERVICES','EQ'),(24,'INFRATEL','Bharti Infratel Ltd.','INE121J01017','TELECOM','EQ'),(25,'INFY','Infosys Ltd.','INE009A01021','IT','EQ'),(26,'IOC','Indian Oil Corporation Ltd.','INE242A01010','ENERGY','EQ'),(27,'ITC','ITC Ltd.','INE154A01025','CONSUMER GOODS','EQ'),(28,'JSWSTEEL','JSW Steel Ltd.','INE019A01038','METALS','EQ'),(29,'KOTAKBANK','Kotak Mahindra Bank Ltd.','INE237A01028','FINANCIAL SERVICES','EQ'),(30,'LT','Larsen & Toubro Ltd.','INE018A01030','CONSTRUCTION','EQ'),(31,'M&M','Mahindra & Mahindra Ltd.','INE101A01026','AUTOMOBILE','EQ'),(32,'MARUTI','Maruti Suzuki India Ltd.','INE585B01010','AUTOMOBILE','EQ'),(33,'NESTLEIND','Nestle India Ltd.','INE239A01016','CONSUMER GOODS','EQ'),(34,'NTPC','NTPC Ltd.','INE733E01010','ENERGY','EQ'),(35,'ONGC','Oil & Natural Gas Corporation Ltd.','INE213A01029','ENERGY','EQ'),(36,'POWERGRID','Power Grid Corporation of India Ltd.','INE752E01010','ENERGY','EQ'),(37,'RELIANCE','Reliance Industries Ltd.','INE002A01018','ENERGY','EQ'),(38,'SBIN','State Bank of India','INE062A01020','FINANCIAL SERVICES','EQ'),(39,'SHREECEM','Shree Cement Ltd.','INE070A01015','CEMENT & CEMENT PRODUCTS','EQ'),(40,'SUNPHARMA','Sun Pharmaceutical Industries Ltd.','INE044A01036','PHARMA','EQ'),(41,'TATAMOTORS','Tata Motors Ltd.','INE155A01022','AUTOMOBILE','EQ'),(42,'TATASTEEL','Tata Steel Ltd.','INE081A01012','METALS','EQ'),(43,'TCS','Tata Consultancy Services Ltd.','INE467B01029','IT','EQ'),(44,'TECHM','Tech Mahindra Ltd.','INE669C01036','IT','EQ'),(45,'TITAN','Titan Company Ltd.','INE280A01028','CONSUMER GOODS','EQ'),(46,'ULTRACEMCO','UltraTech Cement Ltd.','INE481G01011','CEMENT & CEMENT PRODUCTS','EQ'),(47,'UPL','UPL Ltd.','INE628A01036','FERTILISERS & PESTICIDES','EQ'),(48,'VEDL','Vedanta Ltd.','INE205A01025','METALS','EQ'),(49,'WIPRO','Wipro Ltd.','INE075A01022','IT','EQ'),(50,'ZEEL','Zee Entertainment Enterprises Ltd.','INE256A01028','MEDIA & ENTERTAINMENT','EQ');
UNLOCK TABLES;

