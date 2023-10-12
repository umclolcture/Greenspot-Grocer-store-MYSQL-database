CREATE DATABASE  IF NOT EXISTS `greenspotgrocer` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `greenspotgrocer`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: greenspotgrocer
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
-- Table structure for table `purchases`
--

DROP TABLE IF EXISTS `purchases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchases` (
  `item_num` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `quantity_on_hand` int DEFAULT NULL,
  `purchase_date` varchar(50) DEFAULT NULL,
  `cost` decimal(3,2) DEFAULT NULL,
  `vendor` varchar(150) DEFAULT NULL,
  KEY `fk_pur` (`item_num`),
  CONSTRAINT `fk_pur` FOREIGN KEY (`item_num`) REFERENCES `items` (`item_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchases`
--

LOCK TABLES `purchases` WRITE;
/*!40000 ALTER TABLE `purchases` DISABLE KEYS */;
INSERT INTO `purchases` VALUES (1000,25,29,'2/01/2022',2.35,'Bennet Farms, Rt. 17 Evansville, IL 55446'),(1100,40,53,'2/02/2022',0.69,'Freshness, Inc., 202 E. Maple St., St. Joseph, MO 45678'),(1222,40,59,'2/10/2022',0.59,'Freshness, Inc., 202 E. Maple St., St. Joseph, MO 45678'),(1223,10,12,'2/10/2022',1.75,'Freshness, Inc., 202 E. Maple St., St. Joseph, MO 45678'),(1223,10,17,'2/15/2022',1.49,'Freshness, Inc., 202 E. Maple St., St. Joseph, MO 45678'),(1224,30,31,'2/10/2022',0.65,'Freshness, Inc., 202 E. Maple St., St. Joseph, MO 45678'),(2000,25,28,'2/12/2022',1.29,'Ruby Redd Produce, LLC, 1212 Milam St., Kenosha, AL, 34567'),(2001,20,20,'2/12/2022',2.19,'Ruby Redd Produce, LLC, 1212 Milam St., Kenosha, AL, 34567');
/*!40000 ALTER TABLE `purchases` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-12 19:37:07
