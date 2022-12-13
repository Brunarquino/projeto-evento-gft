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
-- Table structure for table `participante_evento`
--

DROP TABLE IF EXISTS `participante_evento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `participante_evento` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `is_ativo` bit(1) DEFAULT NULL,
  `nivel` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `pontuacao_atividade_do_evento` int NOT NULL,
  `pontuacao_presenca` int NOT NULL,
  `quatro_letras` varchar(4) DEFAULT NULL,
  `grupo_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1rubuf1qelmch064hq48inmhy` (`grupo_id`),
  CONSTRAINT `FK1rubuf1qelmch064hq48inmhy` FOREIGN KEY (`grupo_id`) REFERENCES `grupo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participante_evento`
--

LOCK TABLES `participante_evento` WRITE;
/*!40000 ALTER TABLE `participante_evento` DISABLE KEYS */;
INSERT INTO `participante_evento` VALUES (1,'iast@gft.com',_binary '','starter','Isabella Suto',0,0,'IAST',1),(2,'jaui@gft.com',_binary '','starter','Julia Gubolin',0,0,'JAUI',1),(3,'jang@gft.com',_binary '','starter','Jessica Nagata',0,0,'JANG',1),(4,'eaoa@gft.com',_binary '','starter','Elida Emily',0,0,'EAOA',1),(5,'anne@gft.com',_binary '','starter','Ana Beatriz Andrade',0,0,'ANNE',2),(6,'fasv@gft.com',_binary '','starter','Fernanda Cardinally',0,0,'FASV',2),(7,'azco@gft.com',_binary '','starter','Ana Beatriz Cirino',0,0,'AZCO',2),(8,'kneo@gft.com',_binary '','starter','Karen Escobedo',0,0,'KNEO',2),(9,'laos@gft.com',_binary '','starter','Leticia Moraes',0,0,'LAOS',3),(10,'lesi@gft.com',_binary '','starter','Louise Goldstein',0,0,'LESI',3),(11,'deqz@gft.com',_binary '','starter','Danielle Queiroz',0,0,'DEQZ',3),(12,'gavi@gft.com',_binary '','starter','Gabriela Barsaglini',0,0,'GAVI',3),(13,'anuo@gft.com',_binary '','starter','Ariana Russo',0,0,'ANUO',4),(14,'ialm@gft.com',_binary '','starter','Isabela de Lima',0,0,'IALM',4),(15,'gads@gft.com',_binary '','starter','Gabriela Domingues',0,0,'GADS',4),(16,'fafa@gft.com',_binary '','starter','Fernanda Faria',0,0,'FAFA',4),(17,'idcs@gft.com',_binary '','starter','Ingrid Cosme',0,0,'IDCS',5),(18,'lnfo@gft.com',_binary '','starter','Lilian Fabiano',0,0,'LNFO',5),(19,'cacp@gft.com',_binary '','starter','Camilla Campos',0,0,'CACP',5),(20,'eear@gft.com',_binary '','starter','Edyane Araujo',0,0,'EEAR',5),(21,'aagp@gft.com',_binary '','starter','Angela Giampaoli',0,0,'AAGP',6),(22,'baan@gft.com',_binary '','starter','Bruna Arquino',0,0,'BAAN',6),(23,'anlv@gft.com',_binary '','starter','Ana Karolina',0,0,'ANLV',6),(24,'jidt@gft.com',_binary '','starter','Julie Cordeiro',0,0,'JIDT',6),(25,'dado@gft.com',_binary '','starter','Dyanna Mousinho',0,0,'DADO',6),(26,'jaad@gft.com',_binary '','starter','Jessika Silveira',0,0,'JAAD',7),(27,'cedn@gft.com',_binary '','starter','Caroline Dainezi',0,0,'CEDN',7),(28,'aevv@gft.com',_binary '','starter','Alice Gabriela Alves',0,0,'AEVV',7),(29,'aagh@gft.com',_binary '','starter','Ana Beatriz Gadelha',0,0,'AAGH',7);
/*!40000 ALTER TABLE `participante_evento` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-03 12:08:54
