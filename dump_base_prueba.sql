CREATE DATABASE  IF NOT EXISTS `tanteador` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `tanteador`;
-- MySQL dump 10.13  Distrib 5.7.25, for Linux (x86_64)
--
-- Host: localhost    Database: tanteador
-- ------------------------------------------------------
-- Server version	5.7.25

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Equipo`
--

DROP TABLE IF EXISTS `Equipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Equipo` (
  `idEquipo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `abreviatura` varchar(45) DEFAULT NULL,
  `urlEscudo` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idEquipo`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Equipo`
--

LOCK TABLES `Equipo` WRITE;
/*!40000 ALTER TABLE `Equipo` DISABLE KEYS */;
INSERT INTO `Equipo` VALUES (1,'River','CARP','../../../assets/logos/0002.png'),(2,'Boca','CABJ','../../../assets/logos/0001.png'),(9,'San Lorenzo','CASLA',NULL);
/*!40000 ALTER TABLE `Equipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fecha`
--

DROP TABLE IF EXISTS `Fecha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fecha` (
  `idFecha` int(11) NOT NULL AUTO_INCREMENT,
  `idLocal` int(11) DEFAULT NULL,
  `idVisitante` int(11) DEFAULT NULL,
  `fechaHoraInicio` date DEFAULT NULL,
  `lugar` varchar(45) DEFAULT NULL,
  `iniciado` bit(1) NOT NULL DEFAULT b'0',
  `set1local` int(11) DEFAULT NULL,
  `set2local` int(11) DEFAULT NULL,
  `set3local` int(11) DEFAULT NULL,
  `set4local` int(11) DEFAULT NULL,
  `set5local` int(11) DEFAULT NULL,
  `set1visitante` int(11) DEFAULT NULL,
  `set2visitante` int(11) DEFAULT NULL,
  `set3visitante` int(11) DEFAULT NULL,
  `set4visitante` int(11) DEFAULT NULL,
  `set5visitante` int(11) DEFAULT NULL,
  PRIMARY KEY (`idFecha`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fecha`
--

LOCK TABLES `Fecha` WRITE;
/*!40000 ALTER TABLE `Fecha` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fecha` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-06 22:49:20
