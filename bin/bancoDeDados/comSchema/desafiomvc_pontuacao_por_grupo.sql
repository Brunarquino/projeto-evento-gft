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
-- Table structure for table `pontuacao_por_grupo`
--

DROP TABLE IF EXISTS `pontuacao_por_grupo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pontuacao_por_grupo` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `pontuacao_bonus_atividade` int NOT NULL,
  `pontuacao_bonus_presenca` int NOT NULL,
  `pontuacao_final` int NOT NULL,
  `grupo_id` bigint DEFAULT NULL,
  `ranking_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKswah4cuxfsucne7eoi3vgwtl2` (`grupo_id`),
  KEY `FKxd3g3itmdtsiwe8ne7x2a7ya` (`ranking_id`),
  CONSTRAINT `FKswah4cuxfsucne7eoi3vgwtl2` FOREIGN KEY (`grupo_id`) REFERENCES `grupo` (`id`),
  CONSTRAINT `FKxd3g3itmdtsiwe8ne7x2a7ya` FOREIGN KEY (`ranking_id`) REFERENCES `ranking` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pontuacao_por_grupo`
--

LOCK TABLES `pontuacao_por_grupo` WRITE;
/*!40000 ALTER TABLE `pontuacao_por_grupo` DISABLE KEYS */;
INSERT INTO `pontuacao_por_grupo` VALUES (1,0,0,0,1,1),(2,0,0,0,2,1),(3,0,0,0,3,1),(4,0,0,0,4,2),(5,0,0,0,5,2),(6,0,0,0,6,2),(7,0,0,0,7,3);
/*!40000 ALTER TABLE `pontuacao_por_grupo` ENABLE KEYS */;
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
