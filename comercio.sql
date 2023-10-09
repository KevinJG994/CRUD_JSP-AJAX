-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: comercio
-- ------------------------------------------------------
-- Server version	10.4.24-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productos` (
  `id_producto` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `precio` float NOT NULL,
  `categoria` varchar(20) NOT NULL,
  `detalles` varchar(500) NOT NULL,
  `reviews` varchar(1000) NOT NULL,
  `tamanio` int(11) NOT NULL,
  `color` varchar(20) NOT NULL,
  `imagen_1` varchar(100) NOT NULL,
  `imagen_2` varchar(100) NOT NULL,
  `imagen_3` varchar(100) NOT NULL,
  `imagen_4` varchar(100) NOT NULL,
  `imagen_5` varchar(100) NOT NULL,
  PRIMARY KEY (`id_producto`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'Zapatos Nike','Lorem ipsum dolor sit amet, consectetur adipiscing elit, ',59.99,'Zapatos','Lorem ipsum dolor sit amet, consectetur adipiscing elit,','Lorem ipsum dolor sit amet, consectetur adipiscing elit, ',13,'Blanco','img/Productos/t1.jpg','img/Productos/t2.jpg','img/Productos/t3.jpg','img/Productos/t4.jpg','img/Productos/t5.jpg'),(3,'Producto Ajax','Primer producto creado con ajax.',3.99,'Ajax','Primer producto creado con ajax.','Primer producto creado con ajax.',8,'Azul','img/Productos/t1.jpg','img/Productos/t2.jpg','img/Productos/t3.jpg','img/Productos/t4.jpg','img/Productos/t5.jpg'),(4,'Abrigo Rojo','Este abrigo rojo es muy calido',19.99,'Abrigo','Este abrigo rojo es muy calido','Este abrigo rojo es muy calido',14,'Rojo','img/Productos/c1.jpg','img/Productos/c2.jpg','img/Productos/c3.jpg','img/Productos/c4.jpg','img/Productos/c5.png'),(5,'Zapatos Nike','Estos zapatos son nike',59.99,'Zapatos','Estos zapatos son nike','Estos zapatos son nike',6,'Blanco','img/Productos/t1.jpg','img/Productos/t2.jpg','img/Productos/t3.jpg','img/Productos/t4.jpg','img/Productos/t5.jpg'),(6,'Zapatos Nike','Estos zapatos son nike',59.99,'Zapatos','Estos zapatos son nike','Estos zapatos son nike',15,'Blanco','img/Productos/t1.jpg','img/Productos/t2.jpg','img/Productos/t3.jpg','img/Productos/t4.jpg','img/Productos/t5.jpg'),(7,'Zapatos Adiddas','Estos zapatos son nike',29.99,'Zapatos','Estos zapatos son nike','Estos zapatos son nike',4,'Blanco','img/Productos/t1.jpg','img/Productos/t2.jpg','img/Productos/t3.jpg','img/Productos/t4.jpg','img/Productos/t5.jpg'),(8,'Abrigo Rojo','Este abrigo es muy calido',59.99,'Abrigo','Este abrigo es muy calido','Este abrigo es muy calido',15,'Rojo','img/Productos/c1.jpg','img/Productos/c2.jpg','img/Productos/c3.jpg','img/Productos/c4.jpg','img/Productos/c5.png'),(9,'Abrigo Rojo','Este abrigo es muy calido',59.99,'Abrigo','Este abrigo es muy calido','Este abrigo es muy calido',18,'Rojo','img/Productos/c1.jpg','img/Productos/c2.jpg','img/Productos/c3.jpg','img/Productos/c4.jpg','img/Productos/c5.png');
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-09 16:39:33
