-- MySQL dump 10.13  Distrib 8.0.30, for Linux (x86_64)
--
-- Host: localhost    Database: peoples_friends
-- ------------------------------------------------------
-- Server version	8.0.30-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `all_animals`
--

DROP TABLE IF EXISTS `all_animals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `all_animals` (
  `id` bigint unsigned NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL DEFAULT '',
  `birth_date` date NOT NULL,
  `commands` varchar(32) DEFAULT NULL,
  `animal_type` bigint unsigned NOT NULL DEFAULT '0',
  `table_name` varchar(7) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `all_animals`
--

LOCK TABLES `all_animals` WRITE;
/*!40000 ALTER TABLE `all_animals` DISABLE KEYS */;
INSERT INTO `all_animals` VALUES (1,'Lola','2011-02-03','voice',1,'cat'),(2,'Mira','2014-11-18',NULL,1,'cat'),(3,'Pushok','2018-04-15','voice,come',1,'cat'),(4,'Barsik','2021-07-13','come',1,'cat'),(5,'Mursik','2018-08-11','come,stay',1,'cat'),(1,'ChiChi','2012-01-10','sit,voice,stay',1,'dog'),(2,'Volt','2014-12-23',NULL,1,'dog'),(3,'Sema','2017-05-26','lie,near,come',1,'dog'),(4,'Bob','2021-08-13','near,come,stay',1,'dog'),(5,'Misha','2018-11-09','sit,voice,come,stay',1,'dog'),(1,'Richard','2022-11-03','come',1,'humster'),(2,'Tor','2022-11-18',NULL,1,'humster'),(3,'Rodger','2023-01-02','come',1,'humster'),(4,'Bolt','2021-11-28',NULL,1,'humster'),(5,'Luna','2022-08-11','come,stay',1,'humster'),(1,'Rose','2010-01-29','near',2,'horse'),(2,'Prima','2014-11-18',NULL,2,'horse'),(3,'Edison','2018-04-15','run,voice,near,come',2,'horse'),(4,'Locket','2009-07-13','lie,come',2,'horse'),(5,'Mari','2007-08-11','run,come,stay',2,'horse'),(1,'Shu','2014-02-13','voice,near,come',2,'donkey'),(2,'Ron','2017-12-18',NULL,2,'donkey'),(3,'Grisha','2012-08-15','voice,lie,come',2,'donkey'),(4,'Baron','2021-01-23','run,lie,stay',2,'donkey'),(5,'Mol','2018-01-31','come,stay',2,'donkey');
/*!40000 ALTER TABLE `all_animals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `animals`
--

DROP TABLE IF EXISTS `animals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `animals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `animals`
--

LOCK TABLES `animals` WRITE;
/*!40000 ALTER TABLE `animals` DISABLE KEYS */;
INSERT INTO `animals` VALUES (1,'Pet'),(2,'Pack animal');
/*!40000 ALTER TABLE `animals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cats`
--

DROP TABLE IF EXISTS `cats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cats` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `birth_date` date NOT NULL,
  `commands` set('sit','run','voice','lie','near','come','stay') DEFAULT NULL,
  `animal_type` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `animal_type` (`animal_type`),
  CONSTRAINT `cats_ibfk_1` FOREIGN KEY (`animal_type`) REFERENCES `animals` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cats`
--

LOCK TABLES `cats` WRITE;
/*!40000 ALTER TABLE `cats` DISABLE KEYS */;
INSERT INTO `cats` VALUES (1,'Lola','2011-02-03','voice',1),(2,'Mira','2014-11-18',NULL,1),(3,'Pushok','2018-04-15','voice,come',1),(4,'Barsik','2021-07-13','come',1),(5,'Mursik','2018-08-11','come,stay',1);
/*!40000 ALTER TABLE `cats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dogs`
--

DROP TABLE IF EXISTS `dogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dogs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `birth_date` date NOT NULL,
  `commands` set('sit','run','voice','lie','near','come','stay') DEFAULT NULL,
  `animal_type` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `animal_type` (`animal_type`),
  CONSTRAINT `dogs_ibfk_1` FOREIGN KEY (`animal_type`) REFERENCES `animals` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dogs`
--

LOCK TABLES `dogs` WRITE;
/*!40000 ALTER TABLE `dogs` DISABLE KEYS */;
INSERT INTO `dogs` VALUES (1,'ChiChi','2012-01-10','sit,voice,stay',1),(2,'Volt','2014-12-23',NULL,1),(3,'Sema','2017-05-26','lie,near,come',1),(4,'Bob','2021-08-13','near,come,stay',1),(5,'Misha','2018-11-09','sit,voice,come,stay',1);
/*!40000 ALTER TABLE `dogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donkeys`
--

DROP TABLE IF EXISTS `donkeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `donkeys` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `birth_date` date NOT NULL,
  `commands` set('sit','run','voice','lie','near','come','stay') DEFAULT NULL,
  `animal_type` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `animal_type` (`animal_type`),
  CONSTRAINT `donkeys_ibfk_1` FOREIGN KEY (`animal_type`) REFERENCES `animals` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donkeys`
--

LOCK TABLES `donkeys` WRITE;
/*!40000 ALTER TABLE `donkeys` DISABLE KEYS */;
INSERT INTO `donkeys` VALUES (1,'Shu','2014-02-13','voice,near,come',2),(2,'Ron','2017-12-18',NULL,2),(3,'Grisha','2012-08-15','voice,lie,come',2),(4,'Baron','2021-01-23','run,lie,stay',2),(5,'Mol','2018-01-31','come,stay',2);
/*!40000 ALTER TABLE `donkeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `horses`
--

DROP TABLE IF EXISTS `horses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `horses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `birth_date` date NOT NULL,
  `commands` set('sit','run','voice','lie','near','come','stay') DEFAULT NULL,
  `animal_type` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `animal_type` (`animal_type`),
  CONSTRAINT `horses_ibfk_1` FOREIGN KEY (`animal_type`) REFERENCES `animals` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horses`
--

LOCK TABLES `horses` WRITE;
/*!40000 ALTER TABLE `horses` DISABLE KEYS */;
INSERT INTO `horses` VALUES (1,'Rose','2010-01-29','near',2),(2,'Prima','2014-11-18',NULL,2),(3,'Edison','2018-04-15','run,voice,near,come',2),(4,'Locket','2009-07-13','lie,come',2),(5,'Mari','2007-08-11','run,come,stay',2);
/*!40000 ALTER TABLE `horses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `humsters`
--

DROP TABLE IF EXISTS `humsters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `humsters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `birth_date` date NOT NULL,
  `commands` set('sit','run','voice','lie','near','come','stay') DEFAULT NULL,
  `animal_type` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `animal_type` (`animal_type`),
  CONSTRAINT `humsters_ibfk_1` FOREIGN KEY (`animal_type`) REFERENCES `animals` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `humsters`
--

LOCK TABLES `humsters` WRITE;
/*!40000 ALTER TABLE `humsters` DISABLE KEYS */;
INSERT INTO `humsters` VALUES (1,'Richard','2022-11-03','come',1),(2,'Tor','2022-11-18',NULL,1),(3,'Rodger','2023-01-02','come',1),(4,'Bolt','2021-11-28',NULL,1),(5,'Luna','2022-08-11','come,stay',1);
/*!40000 ALTER TABLE `humsters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pack_animals`
--

DROP TABLE IF EXISTS `pack_animals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pack_animals` (
  `id` bigint unsigned NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL DEFAULT '',
  `birth_date` date NOT NULL,
  `commands` varchar(32) DEFAULT NULL,
  `animal_type` bigint unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pack_animals`
--

LOCK TABLES `pack_animals` WRITE;
/*!40000 ALTER TABLE `pack_animals` DISABLE KEYS */;
INSERT INTO `pack_animals` VALUES (1,'Rose','2010-01-29','near',2),(2,'Prima','2014-11-18',NULL,2),(3,'Edison','2018-04-15','run,voice,near,come',2),(4,'Locket','2009-07-13','lie,come',2),(5,'Mari','2007-08-11','run,come,stay',2),(1,'Shu','2014-02-13','voice,near,come',2),(2,'Ron','2017-12-18',NULL,2),(3,'Grisha','2012-08-15','voice,lie,come',2),(4,'Baron','2021-01-23','run,lie,stay',2),(5,'Mol','2018-01-31','come,stay',2);
/*!40000 ALTER TABLE `pack_animals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `young_animals`
--

DROP TABLE IF EXISTS `young_animals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `young_animals` (
  `id` bigint unsigned NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL DEFAULT '',
  `birth_date` date NOT NULL,
  `commands` varchar(32) DEFAULT NULL,
  `animal_type` bigint unsigned NOT NULL DEFAULT '0',
  `age` varchar(41) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `young_animals`
--

LOCK TABLES `young_animals` WRITE;
/*!40000 ALTER TABLE `young_animals` DISABLE KEYS */;
INSERT INTO `young_animals` VALUES (4,'Barsik','2021-07-13','come',1,'2 years 6 months'),(4,'Bob','2021-08-13','near,come,stay',1,'2 years 5 months'),(1,'Richard','2022-11-03','come',1,'1 years 3 months'),(2,'Tor','2022-11-18',NULL,1,'1 years 2 months'),(4,'Bolt','2021-11-28',NULL,1,'2 years 2 months'),(5,'Luna','2022-08-11','come,stay',1,'1 years 5 months'),(4,'Baron','2021-01-23','run,lie,stay',2,'2 years 0 months');
/*!40000 ALTER TABLE `young_animals` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-08 19:14:12
