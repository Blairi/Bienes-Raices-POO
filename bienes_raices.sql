-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: bienes_raices
-- ------------------------------------------------------
-- Server version	5.7.33

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
-- Table structure for table `propiedades`
--

DROP TABLE IF EXISTS `propiedades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `propiedades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(60) DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `imagen` varchar(200) DEFAULT NULL,
  `descripcion` longtext,
  `habitaciones` int(1) DEFAULT NULL,
  `wc` int(1) DEFAULT NULL,
  `estacionamiento` int(1) DEFAULT NULL,
  `creado` date DEFAULT NULL,
  `vendedorId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `vendedorId_idx` (`vendedorId`),
  CONSTRAINT `vendedorId` FOREIGN KEY (`vendedorId`) REFERENCES `vendedores` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `propiedades`
--

LOCK TABLES `propiedades` WRITE;
/*!40000 ALTER TABLE `propiedades` DISABLE KEYS */;
INSERT INTO `propiedades` VALUES (8,'Granja de madera MVC',1222334.00,'b2ea7766be26f358e529c522fcb40f4a.jpg','            la mejor granja la mejor granjala mejor granjala mejor granjala mejor granjala mejor granjala mejor granjala mejor granjala mejor granjala mejor granjala mejor granjala mejor granjala mejor granja            ',3,4,2,'2022-01-13',2),(9,'Una casa chida',34343421.00,'5ea3a5bfd320fee1e1a33b765ebdac3c.jpg','Es la mejor casa de Minecraft Es la mejor casa de Minecraft Es la mejor casa de Minecraft Es la mejor casa de Minecraft Es la mejor casa de Minecraft Es la mejor casa de Minecraft Es la mejor casa de Minecraft Es la mejor casa de Minecraft Es la mejor casa de Minecraft ',3,2,4,'2022-01-14',2),(13,'Minecraft',433433.00,'7d2f96af0f89133a9c7fd2bf9a684590.jpg','    Casa en el bosque Casa en el bosque Casa en el bosque Casa en el bosque Casa en el bosque Casa en el bosque Casa en el bosque Casa en el bosque Casa en el bosque     ',3,3,1,'2022-02-10',1),(16,' Una casa bonis',323223.00,'1ff5a136872bc386b1f7bcc759a7ca55.jpg','vivir aqui es genial vivir aqui es genial vivir aqui es genial vivir aqui es genial vivir aqui es genial vivir aqui es genial vivir aqui es genial vivir aqui es genial vivir aqui es genial ',3,3,2,'2022-02-10',2),(17,' Casa Ingeniero EN OFERTA',2121212.00,'550093758bab25737be355ec61b94243.jpg','    La casa de casas La casa de casas La casa de casas La casa de casas La casa de casas La casa de casas La casa de casas La casa de casas La casa de casas La casa de casas     ',2,1,2,'2022-02-14',1),(18,' Nueva propiedad ACTUALIZADITA',1221212.00,'9f0b36a0d971f664dce29a027524f1fc.jpg','    La nueva propiedad La nueva propiedad La nueva propiedad La nueva propiedad La nueva propiedad La nueva propiedad La nueva propiedad     ',2,2,3,'2022-02-18',1),(19,' Nueva propiedad OTRA EN OFERTA',1221212.00,'6cc15de06ed9df8e76e7160e100feab0.jpg','            La nueva propiedad La nueva propiedad La nueva propiedad La nueva propiedad La nueva propiedad La nueva propiedad La nueva propiedad             ',2,2,3,'2022-02-18',1);
/*!40000 ALTER TABLE `propiedades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id` int(1) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `password` char(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (6,'correo@correo.com','$2y$10$q.Zus17w/MYVx.p/uE9ZjO0yo46h/Gfn8gqabpR7hnPNTfcDq61t.');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendedores`
--

DROP TABLE IF EXISTS `vendedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendedores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  `telefono` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendedores`
--

LOCK TABLES `vendedores` WRITE;
/*!40000 ALTER TABLE `vendedores` DISABLE KEYS */;
INSERT INTO `vendedores` VALUES (1,'Axel','Montiel','55431298'),(2,'Karla','Fregoso','55657943'),(3,'Miguel','Fregoso','55657943'),(4,'Josue','Fregosito','5522983485'),(5,' Monica','Rambo','4433221122');
/*!40000 ALTER TABLE `vendedores` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-21 14:48:56
