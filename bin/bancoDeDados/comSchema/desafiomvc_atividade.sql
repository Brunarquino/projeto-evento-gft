CREATE DATABASE  IF NOT EXISTS `desafiomvc` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `desafiomvc`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: desafiomvc
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `atividade`
--

DROP TABLE IF EXISTS `atividade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `atividade` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `dia_de_evento_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK7cpfhygvjcf58i39np1u310kg` (`dia_de_evento_id`),
  CONSTRAINT `FK7cpfhygvjcf58i39np1u310kg` FOREIGN KEY (`dia_de_evento_id`) REFERENCES `dia_de_evento` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atividade`
--

LOCK TABLES `atividade` WRITE;
/*!40000 ALTER TABLE `atividade` DISABLE KEYS */;
INSERT INTO `atividade` VALUES (1,'Atividade 1',1),(2,'Atividade 2',1),(3,'Atividade 1',2),(4,'Atividade 2',2),(5,'Atividade 1',3),(6,'Atividade 2',3),(7,'Atividade 1',4),(8,'Atividade 2',4),(9,'Atividade 1',5),(10,'Atividade 2',5),(11,'Atividade 1',6),(12,'Atividade 2',6),(13,'Atividade 1',7),(14,'Atividade 2',7),(15,'Atividade 1',8),(16,'Atividade 2',8),(17,'Atividade 1',9),(18,'Atividade 2',9),(19,'Atividade 1',10),(20,'Atividade 2',10),(21,'Atividade 1',11),(22,'Atividade 2',11),(23,'Atividade 1',12),(24,'Atividade 2',12),(25,'Atividade 1',13),(26,'Atividade 2',13),(27,'Atividade 1',14),(28,'Atividade 2',14),(29,'Atividade 1',15),(30,'Atividade 2',15),(31,'Atividade 1',16),(32,'Atividade 2',16),(33,'Atividade 1',17),(34,'Atividade 2',17),(35,'Atividade 1',18),(36,'Atividade 2',18),(37,'Atividade 1',19),(38,'Atividade 2',19),(39,'Atividade 1',20),(40,'Atividade 2',20),(41,'Atividade 1',21),(42,'Atividade 2',21),(43,'Atividade 1',22),(44,'Atividade 2',22),(45,'Atividade 1',23),(46,'Atividade 2',23),(47,'Atividade 1',24),(48,'Atividade 2',24),(49,'Atividade 1',25),(50,'Atividade 2',25),(51,'Atividade 1',26),(52,'Atividade 2',26),(53,'Atividade 1',27),(54,'Atividade 2',27),(55,'Atividade 1',28),(56,'Atividade 2',28);
/*!40000 ALTER TABLE `atividade` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-03 12:08:53
