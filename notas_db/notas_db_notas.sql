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
-- Table structure for table `notas`
--

DROP TABLE IF EXISTS `notas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) DEFAULT NULL,
  `fecha_de_creacion` date NOT NULL,
  `fecha_ultima_modificacion` date DEFAULT NULL,
  `descripcion` text NOT NULL,
  `usuarios_id` int NOT NULL,
  `categoria` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`,`usuarios_id`),
  KEY `fk_notas_usuarios_idx` (`usuarios_id`),
  CONSTRAINT `fk_notas_usuarios` FOREIGN KEY (`usuarios_id`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notas`
--

LOCK TABLES `notas` WRITE;
/*!40000 ALTER TABLE `notas` DISABLE KEYS */;
INSERT INTO `notas` VALUES (1,'Uno mas uno','2021-09-27',NULL,'Sumar 1+1 = 2\'',1,NULL),(2,'\'El pintor de la Mona Lisa','2021-09-27',NULL,'El pintor de la Mona Lisa fue Leonardo Da Vinci',2,NULL),(3,'El animal mas grande','2021-09-27',NULL,'El animal mas grande es la ballena azul',3,NULL),(4,'El juego más vendido','2021-09-27',NULL,'El videojuego mas vendido de la historia es Grand Theft Auto V',4,NULL),(5,'La banda mas exitosa','2021-09-27',NULL,'La banda mas exitoosa de la historia son Los Beatles',5,NULL),(6,'La pelicula mas taquillera','2021-09-27',NULL,'La pelicula mas taquillera es Avengers : End Game',6,NULL),(7,'El mejor jugador de la historia','2021-09-27',NULL,'El mejor jugador de la historia es y sera Lionel Messi',7,NULL),(8,'El animal con mas poblacion','2021-09-27',NULL,'El animal con mas poblacion es la mosca',8,NULL),(9,'El ultimo campeon de America','2021-09-27',NULL,'El ultimo campeon de la Copa America fue Argentina',9,NULL),(10,'La pelicula mas premiada','2021-09-27',NULL,'La pelicula con mas oscars y otros premios es Titanic',10,NULL);
/*!40000 ALTER TABLE `notas` ENABLE KEYS */;
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
