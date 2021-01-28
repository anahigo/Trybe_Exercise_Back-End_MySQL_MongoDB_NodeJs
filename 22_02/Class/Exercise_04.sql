CREATE DATABASE  IF NOT EXISTS `normalization` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `normalization`;
-- MySQL dump 10.13  Distrib 5.7.32, for Linux (x86_64)
--
-- Host: localhost    Database: normalization
-- ------------------------------------------------------
-- Server version	5.7.32-0ubuntu0.18.04.1

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
-- Table structure for table `funcionarios`
--

DROP TABLE IF EXISTS `funcionarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `funcionarios` (
  `funcionario_id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `sobrenome` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telefone` varchar(50) NOT NULL,
  `DataCadastro` datetime NOT NULL,
  PRIMARY KEY (`funcionario_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionarios`
--

LOCK TABLES `funcionarios` WRITE;
/*!40000 ALTER TABLE `funcionarios` DISABLE KEYS */;
INSERT INTO `funcionarios` VALUES (12,'Joseph','Rodrigues','jo@gmail.com','(35)998552-1445','2020-05-05 08:50:25'),(13,'André','Freeman','andre1990@gmail.com','(47)99522-4996','2020-02-05 00:00:00'),(14,'Cíntia','Duval','cindy@outlook.com','(33)99855-4669','2020-05-05 10:55:35'),(15,'Fernanda','Mendes','fernandamendes@yahoo.com','(33)99200-1556','2020-05-05 11:45:40');
/*!40000 ALTER TABLE `funcionarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionarios_setores`
--

DROP TABLE IF EXISTS `funcionarios_setores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `funcionarios_setores` (
  `funcionario_id` int(11) NOT NULL,
  `setor_id` int(11) NOT NULL,
  KEY `funcionario_id` (`funcionario_id`),
  KEY `setor_id` (`setor_id`),
  CONSTRAINT `funcionarios_setores_ibfk_1` FOREIGN KEY (`funcionario_id`) REFERENCES `funcionarios` (`funcionario_id`),
  CONSTRAINT `funcionarios_setores_ibfk_2` FOREIGN KEY (`setor_id`) REFERENCES `setores` (`setor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionarios_setores`
--

LOCK TABLES `funcionarios_setores` WRITE;
/*!40000 ALTER TABLE `funcionarios_setores` DISABLE KEYS */;
INSERT INTO `funcionarios_setores` VALUES (12,1),(12,2),(13,3),(14,4),(14,2),(15,5);
/*!40000 ALTER TABLE `funcionarios_setores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setores`
--

DROP TABLE IF EXISTS `setores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `setores` (
  `setor_id` int(11) NOT NULL AUTO_INCREMENT,
  `setor` varchar(50) NOT NULL,
  PRIMARY KEY (`setor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setores`
--

LOCK TABLES `setores` WRITE;
/*!40000 ALTER TABLE `setores` DISABLE KEYS */;
INSERT INTO `setores` VALUES (1,'Administração'),(2,'Vendas'),(3,'Operacional'),(4,'Estratégico'),(5,'Marketing');
/*!40000 ALTER TABLE `setores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'normalization'
--

--
-- Dumping routines for database 'normalization'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-08 17:42:22
