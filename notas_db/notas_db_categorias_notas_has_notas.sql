-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: notas_db
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `categorias_notas_has_notas`
--

DROP TABLE IF EXISTS `categorias_notas_has_notas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias_notas_has_notas` (
  `categorias_notas_id` int NOT NULL,
  `notas_id` int NOT NULL,
  PRIMARY KEY (`categorias_notas_id`,`notas_id`),
  KEY `fk_categorias_notas_has_notas_notas1_idx` (`notas_id`),
  KEY `fk_categorias_notas_has_notas_categorias_notas1_idx` (`categorias_notas_id`),
  CONSTRAINT `fk_categorias_notas_has_notas_categorias_notas1` FOREIGN KEY (`categorias_notas_id`) REFERENCES `categorias_notas` (`id`),
  CONSTRAINT `fk_categorias_notas_has_notas_notas1` FOREIGN KEY (`notas_id`) REFERENCES `notas` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias_notas_has_notas`
--

LOCK TABLES `categorias_notas_has_notas` WRITE;
/*!40000 ALTER TABLE `categorias_notas_has_notas` DISABLE KEYS */;
INSERT INTO `categorias_notas_has_notas` VALUES (6,1),(2,2),(6,3),(5,4),(1,5),(4,6),(3,7),(6,8),(3,9),(4,10);
/*!40000 ALTER TABLE `categorias_notas_has_notas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-27 20:31:27
