-- MySQL dump 10.19  Distrib 10.3.39-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: sae202Base
-- ------------------------------------------------------
-- Server version	10.3.39-MariaDB-0+deb10u2

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
-- Table structure for table `Jardins`
--

DROP TABLE IF EXISTS `Jardins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Jardins` (
  `jardin_id` int(11) NOT NULL AUTO_INCREMENT,
  `jardin_nom` varchar(50) NOT NULL,
  `jardin_surf` float NOT NULL,
  `jardin_coord` varchar(500) NOT NULL,
  `_user_id` int(11) NOT NULL,
  PRIMARY KEY (`jardin_id`),
  KEY `_user_id` (`_user_id`),
  CONSTRAINT `_user_id` FOREIGN KEY (`_user_id`) REFERENCES `Users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Jardins`
--

LOCK TABLES `Jardins` WRITE;
/*!40000 ALTER TABLE `Jardins` DISABLE KEYS */;
/*!40000 ALTER TABLE `Jardins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Parcelles`
--

DROP TABLE IF EXISTS `Parcelles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Parcelles` (
  `parcelle_id` int(11) NOT NULL AUTO_INCREMENT,
  `parcelle_nom` varchar(150) NOT NULL,
  `parcelle_surf` float NOT NULL,
  `parcelle_coord` varchar(500) NOT NULL,
  `parcelle_disp` int(11) NOT NULL,
  `_user_id` int(11) NOT NULL,
  `_jardin_id` int(11) NOT NULL,
  PRIMARY KEY (`parcelle_id`),
  KEY `user_id` (`_user_id`),
  KEY `jardin_id` (`_jardin_id`),
  CONSTRAINT `jardin_id` FOREIGN KEY (`_jardin_id`) REFERENCES `Jardins` (`jardin_id`),
  CONSTRAINT `user_id` FOREIGN KEY (`_user_id`) REFERENCES `Users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Parcelles`
--

LOCK TABLES `Parcelles` WRITE;
/*!40000 ALTER TABLE `Parcelles` DISABLE KEYS */;
/*!40000 ALTER TABLE `Parcelles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_genre` varchar(50) NOT NULL,
  `user_nom` varchar(50) NOT NULL,
  `user_prenom` varchar(50) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_username` varchar(50) NOT NULL,
  `user_age` int(11) NOT NULL,
  `user_tel` int(11) NOT NULL,
  `user_pwd` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-04 11:50:20
