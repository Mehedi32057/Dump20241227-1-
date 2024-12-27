-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: nexchain
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `procurement`
--

DROP TABLE IF EXISTS `procurement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `procurement` (
  `procurement_id` bigint NOT NULL AUTO_INCREMENT,
  `procurement_date` date DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `total_price` double DEFAULT NULL,
  `unit_price` double DEFAULT NULL,
  `material_id` bigint DEFAULT NULL,
  `supplier_id` bigint DEFAULT NULL,
  PRIMARY KEY (`procurement_id`),
  KEY `FKeonen1gxpq069at1hcpjvraub` (`material_id`),
  KEY `FK2c4fm4m6np72bvyx1lwsp6umr` (`supplier_id`),
  CONSTRAINT `FK2c4fm4m6np72bvyx1lwsp6umr` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`supplier_id`),
  CONSTRAINT `FKeonen1gxpq069at1hcpjvraub` FOREIGN KEY (`material_id`) REFERENCES `raw_material` (`material_id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `procurement`
--

LOCK TABLES `procurement` WRITE;
/*!40000 ALTER TABLE `procurement` DISABLE KEYS */;
INSERT INTO `procurement` VALUES (1,'2024-12-05',50,200,4,1,1),(2,'2024-12-01',100,5000,50,2,2),(3,'2024-12-28',45,180,4,3,3),(4,'2024-12-13',400,1600,4,3,4),(5,'2024-12-11',50,250,5,3,3),(6,'2024-12-10',30,150,5,5,7),(7,'2024-12-06',34,170,5,3,8),(8,'2024-12-20',56,336,6,6,9),(9,'2024-11-13',59,236,4,5,5),(10,'2024-12-20',8,40,5,1,2),(11,'2024-12-27',54,3024,56,1,10),(12,'2024-12-18',32,128,4,3,9),(13,'2024-12-11',48,240,5,1,8),(14,'2024-12-25',90,630,7,7,11),(15,'2024-12-12',12,24,2,1,3),(16,'2024-12-19',45,1935,43,5,12),(17,'2024-12-26',67,469,7,8,13),(18,'2024-12-13',70,560,8,9,14),(19,'2024-12-17',70,350,5,10,15),(20,'2024-12-19',78,624,8,11,16),(21,'2024-12-26',45,4500,100,12,17),(22,'2024-12-21',500,5000,100,14,18),(23,'2024-12-19',2000,1400000,700,15,19),(24,'2024-12-18',54,2430,45,6,20),(25,'2024-12-18',100,10000,100,17,21),(26,'2024-12-19',700,10500,15,18,22),(27,'2024-12-25',100,12000,120,21,23),(28,'2024-12-19',50,350,7,22,9),(29,'2024-12-16',100,4000,40,24,12),(30,'2024-12-20',100,5000,50,25,3),(31,'2024-12-20',70,350,5,27,1),(32,'2024-12-19',17,136,8,28,27),(33,'2024-12-21',1000,100000,100,24,28),(34,'2024-12-18',700,560000,800,30,4),(35,'2024-12-22',800,80000,100,31,2),(36,'2024-12-25',700,5600,8,24,1),(37,'2024-12-27',400,0,80,1,1);
/*!40000 ALTER TABLE `procurement` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-27 22:29:53
