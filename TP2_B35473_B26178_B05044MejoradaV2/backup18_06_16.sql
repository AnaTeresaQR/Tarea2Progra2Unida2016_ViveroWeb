CREATE DATABASE  IF NOT EXISTS `DBRegisterData` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `DBRegisterData`;
-- MySQL dump 10.13  Distrib 5.6.24, for Win64 (x86_64)
--
-- Host: localhost    Database: mydbregister
-- ------------------------------------------------------
-- Server version	5.6.27-log

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
-- Table structure for table `administrator`
--

DROP TABLE IF EXISTS `administrator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `administrator` (
  `idAdmin` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`idAdmin`,`email`),
  UNIQUE KEY `idAdmin_UNIQUE` (`idAdmin`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrator`
--

LOCK TABLES `administrator` WRITE;
/*!40000 ALTER TABLE `administrator` DISABLE KEYS */;
INSERT INTO `administrator` VALUES (1,'ana.quesada@ucrso.info','Admin1'),(2,'edgardo.quiros@ucrso.info','Admin2'),(3,'robert.sanchez@ucrso.info','Admin3');
/*!40000 ALTER TABLE `administrator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bill`
--

DROP TABLE IF EXISTS `bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bill` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idUser` int(11) NOT NULL,
  `addressUser` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `billDate` date NOT NULL,
  `numCard` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `typeCard` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `creditInstitution` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `products` varchar(5000) COLLATE utf8_unicode_ci NOT NULL,
  `subtotal` double NOT NULL,
  `total` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_idUser` (`idUser`),
  CONSTRAINT `fk_idUser` FOREIGN KEY (`idUser`) REFERENCES `registeruser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill`
--

LOCK TABLES `bill` WRITE;
/*!40000 ALTER TABLE `bill` DISABLE KEYS */;
INSERT INTO `bill` VALUES (1,21,'Costa Rica, Alajuela, Palmares, Buenos Aires, Calle Ramírez','2016-06-18','12345678901234567','VISA','BCR','1 Tomate rojo, 2 Fresas, 3 Peras',20000,25000),(2,21,'Costa Rica, Alajuela, Palmares, Buenos Aires, Calle Ramírez','2016-06-18','12345678901234567','VISA','BCR','1 Tomate rojo, 2 Fresas, 3 Peras',20000,25000),(3,21,'Costa Rica, Alajuela, Palmares, Buenos Aires, Calle Ramírez','2016-06-18','12345678901234567','VISA','BCR','1 Tomate rojo, 2 Fresas, 3 Peras',20000,25000),(4,21,'Costa Rica, Alajuela, Palmares, Buenos Aires, Calle Ramírez','2016-06-18','12345678901234567','VISA','BCR','1 Tomate rojo, 2 Fresas, 3 Peras',20000,25000),(5,21,'Costa Rica, Alajuela, Palmares, Buenos Aires, Calle Ramírez','2016-06-18','12345678901234567','VISA','BCR','1 Tomate rojo, 2 Fresas, 3 Peras',20000,25000),(6,21,'Costa Rica, Alajuela, Palmares, Buenos Aires, Calle Ramírez','2016-06-18','12345678901234567','VISA','BCR','1 Tomate rojo, 2 Fresas, 3 Peras',20000,25000),(7,21,'Costa Rica, Alajuela, Palmares, Buenos Aires, Calle Ramírez','2016-06-18','12345678901234567','VISA','BCR','1 Tomate rojo, 2 Fresas, 3 Peras',20000,25000),(8,21,'Costa Rica, Alajuela, Palmares, Buenos Aires, Calle Ramírez','2016-06-18','12345678901234567','VISA','BCR','1 Tomate rojo, 2 Fresas, 3 Peras',20000,25000);
/*!40000 ALTER TABLE `bill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consult`
--

DROP TABLE IF EXISTS `consult`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `consult` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `completeName` varchar(100) NOT NULL,
  `email` varchar(45) NOT NULL,
  `message` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consult`
--

LOCK TABLES `consult` WRITE;
/*!40000 ALTER TABLE `consult` DISABLE KEYS */;
/*!40000 ALTER TABLE `consult` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registeruser`
--

DROP TABLE IF EXISTS `registeruser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registeruser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(100) CHARACTER SET utf8 NOT NULL,
  `lastName` varchar(100) CHARACTER SET utf8 NOT NULL,
  `schedule` varchar(9) CHARACTER SET utf8 NOT NULL,
  `telephone` varchar(8) CHARACTER SET armscii8 NOT NULL,
  `email` varchar(45) CHARACTER SET utf8 NOT NULL,
  `password` varchar(45) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`,`schedule`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  UNIQUE KEY `schedule_UNIQUE` (`schedule`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registeruser`
--

LOCK TABLES `registeruser` WRITE;
/*!40000 ALTER TABLE `registeruser` DISABLE KEYS */;
INSERT INTO `registeruser` VALUES (17,'Ana Teresa','Quesada Ramírez','207410170','87518238','ana@gmail.com','Ana123'),(18,'Juan Miguel','Arias Mejías','207440378','84590688','juan@gmail.com','Juan123'),(21,'Juan Miguel','Arias Mejías','207441378','84590688','juan2@gmail.com','Juan123');
/*!40000 ALTER TABLE `registeruser` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-06-18 11:40:37
