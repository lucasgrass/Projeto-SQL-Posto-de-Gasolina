-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: posto_de_gasolina
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `posto`
--

DROP TABLE IF EXISTS `posto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posto` (
  `CEP` varchar(8) NOT NULL,
  `CNPJ` varchar(14) NOT NULL,
  `cod_posto` varchar(5) NOT NULL,
  `end_posto` varchar(50) NOT NULL,
  `fk_posto_nome_bairro` varchar(20) NOT NULL,
  `fk_posto_cod_bandeira` varchar(5) NOT NULL,
  PRIMARY KEY (`cod_posto`),
  KEY `fk_posto_nome_bairro_idx` (`fk_posto_nome_bairro`),
  KEY `fk_posto_cod_bandeira_idx` (`fk_posto_cod_bandeira`),
  CONSTRAINT `fk_posto_cod_bandeira` FOREIGN KEY (`fk_posto_cod_bandeira`) REFERENCES `bandeira` (`cod_bandeira`),
  CONSTRAINT `fk_posto_nome_bairro` FOREIGN KEY (`fk_posto_nome_bairro`) REFERENCES `bairro` (`nome`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posto`
--

LOCK TABLES `posto` WRITE;
/*!40000 ALTER TABLE `posto` DISABLE KEYS */;
INSERT INTO `posto` VALUES ('99999999','44444444444444','1','Rua posto um','Cambui','1'),('88888888','55555555555555','2','Rua posto dois','Ipiranga','2');
/*!40000 ALTER TABLE `posto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-18 15:12:47
