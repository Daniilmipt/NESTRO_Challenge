CREATE DATABASE  IF NOT EXISTS `nestro` /*!40100 DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `nestro`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: nestro
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `acquired_emienergy_emissions`
--

DROP TABLE IF EXISTS `acquired_emienergy_emissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `acquired_emienergy_emissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `energy_cons` float DEFAULT NULL,
  `coef` float DEFAULT NULL,
  `result` float DEFAULT NULL,
  `enterprise_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `zxczxc_idx` (`enterprise_id`),
  CONSTRAINT `indirect_emissions-enterprise` FOREIGN KEY (`enterprise_id`) REFERENCES `enterprise` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acquired_emienergy_emissions`
--

LOCK TABLES `acquired_emienergy_emissions` WRITE;
/*!40000 ALTER TABLE `acquired_emienergy_emissions` DISABLE KEYS */;
INSERT INTO `acquired_emienergy_emissions` VALUES (1,10,1.046,10.46,1),(2,15,0.303,4.545,1),(3,5,0.264,1.32,1),(4,20,0.453,9.06,1),(5,1,0.453,0.453,1),(6,30000,0.453,13590,14);
/*!40000 ALTER TABLE `acquired_emienergy_emissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `all_gas_emissions`
--

DROP TABLE IF EXISTS `all_gas_emissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `all_gas_emissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `gas_name` enum('CO2','CH4','N2O','CHF3','CF4','C2F6','SF6') COLLATE utf8mb3_unicode_ci NOT NULL,
  `amount` float DEFAULT NULL,
  `enterprise_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `enterpise_id_idx` (`enterprise_id`),
  CONSTRAINT `all_gas_emissions-enterprise` FOREIGN KEY (`enterprise_id`) REFERENCES `enterprise` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `all_gas_emissions`
--

LOCK TABLES `all_gas_emissions` WRITE;
/*!40000 ALTER TABLE `all_gas_emissions` DISABLE KEYS */;
INSERT INTO `all_gas_emissions` VALUES (1,'CO2',33948.3,1),(2,'CO2',20915,1),(3,'CO2',23873.3,1),(4,'CO2',23853.6,1),(5,'CO2',23853.6,1),(6,'CO2',22989.7,3),(7,'CO2',2298.97,3),(8,'CO2',22989.7,4),(9,'CO2',22989.7,4),(10,'CO2',22989.7,4),(11,'CO2',134488,14),(12,'CO2',44829.3,14),(13,'CO2',1169.08,1),(14,'CH4',4.71608,1),(15,'CO2',2639.09,3),(16,'CH4',7.10752,3),(17,'CO2',2639.09,5),(18,'CH4',7.10752,5),(19,'CO2',1698.23,4),(20,'CH4',8.12288,4),(21,'CO2',1954.88,6),(22,'CH4',8.684,6),(23,'CO2',26821.6,14),(24,'CH4',78.5394,14),(25,'CO2',314.925,1),(26,'CO2',6298.5,1),(27,'CO2',9447.75,1),(28,'CO2',18895.5,1),(29,'CO2',25194,1),(30,'CO2',314.925,1),(31,'CO2',1574.62,1),(32,'CO2',314.925,2),(33,'CO2',314.925,13),(34,'CO2',314.925,13),(35,'CO2',314.925,13),(36,'CO2',314.925,13),(37,'CO2',307.127,1),(38,'CO2',307.127,13),(39,'CO2',307.127,13),(40,'CO2',6142.54,13),(41,'CO2',157.462,14),(42,'CO2',31.4925,14),(43,'CO2',62.985,14),(44,'CO2',1.54501,7),(45,'CH4',5.99864,7),(46,'CO2',0.0404646,14),(47,'CH4',0.392717,14),(48,'CH4',0.009,1),(49,'CH4',0.003618,1),(50,'CH4',0.027864,1),(51,'CH4',0.02736,2),(52,'CH4',0.051624,13),(53,'N2O',0.00565714,2),(54,'N2O',0.00565714,1),(55,'N2O',0.00377143,13),(56,'CO2',10.46,1),(57,'CO2',4.545,1),(58,'CO2',1.32,1),(59,'CO2',9.06,1),(60,'CO2',0.453,1),(61,'CO2',13590,14),(62,'CO2',264.516,7),(63,'CO2',132.258,7),(64,'CO2',68.085,7),(65,'CO2',52.9032,7),(66,'CO2',0.412293,14),(67,'CO2',0.00353922,14),(68,'CO2',0.000314774,14),(69,'CO2',0.0130406,14),(70,'CO2',0.0000636582,14),(71,'N2O',0.5,1),(72,'N2O',1,2),(73,'N2O',1.5,3),(74,'N2O',2,4),(75,'N2O',2.5,13),(76,'N2O',1,1),(77,'N2O',4.5,1),(78,'N2O',1,2),(79,'N2O',1,3),(80,'N2O',4.5,3),(81,'N2O',2,4),(82,'N2O',4.5,4),(83,'N2O',1,13),(84,'N2O',4.5,13),(85,'N2O',10,7),(86,'N2O',3,7),(87,'N2O',1,7),(88,'CO2',6.49871,1),(89,'CO2',34.408,2),(90,'CO2',28.3138,3),(91,'CO2',33.8982,4),(92,'CO2',13.8418,13),(93,'CO2',7.44975,1),(94,'CO2',0,1),(95,'CO2',7.44975,2),(96,'CO2',7.44975,3),(97,'CO2',0,3),(98,'CO2',14.8995,4),(99,'CO2',0,4),(100,'CO2',7.44975,13),(101,'CO2',0,13),(102,'CO2',0.08,7),(103,'CO2',0.024,7),(104,'CO2',0.008,7);
/*!40000 ALTER TABLE `all_gas_emissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enterprise`
--

DROP TABLE IF EXISTS `enterprise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enterprise` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `location` varchar(45) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `parent` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enterprise`
--

LOCK TABLES `enterprise` WRITE;
/*!40000 ALTER TABLE `enterprise` DISABLE KEYS */;
INSERT INTO `enterprise` VALUES (1,'Месторождение №1','Санкт-Петербург',1),(2,'Месторождение №2','Москва',1),(3,'Месторождение №3','Казань',1),(4,'Месторождение №4','Босния и Герцеговина',1),(5,'Месторождение №5','Алматы',1),(6,'Месторождение №6','Воронеж',1),(7,'Общие','Земля',1),(8,'Месторождение №8','Будапешт',1),(9,'Месторождение №9','Сызрань',1),(10,'Месторождение №10','Тула',1),(11,'Месторождение №11','Кишлак',1),(12,'Месторождение №12','Вашингтон',1),(13,'Месторождение №13','Токио',1),(14,'Объекты предприятия №2','Минск',2);
/*!40000 ALTER TABLE `enterprise` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fugitive_emissions`
--

DROP TABLE IF EXISTS `fugitive_emissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fugitive_emissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fuel_consumption` float DEFAULT NULL,
  `CO2_coef` float DEFAULT NULL,
  `CH4_coef` float DEFAULT NULL,
  `result_CO2` float DEFAULT NULL,
  `result_CH4` float DEFAULT NULL,
  `enterprise_id` int DEFAULT NULL,
  `rho_CO2` float DEFAULT '1.8393',
  `rho_CH4` float DEFAULT '0.668',
  PRIMARY KEY (`id`),
  KEY `enterpise_id_idx` (`enterprise_id`),
  CONSTRAINT `fugitive_emissions-enterprise` FOREIGN KEY (`enterprise_id`) REFERENCES `enterprise` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fugitive_emissions`
--

LOCK TABLES `fugitive_emissions` WRITE;
/*!40000 ALTER TABLE `fugitive_emissions` DISABLE KEYS */;
INSERT INTO `fugitive_emissions` VALUES (1,10,8.4,89.8,1.54501,5.99864,7,1.8393,0.668),(2,1,2.2,58.79,0.0404646,0.392717,14,1.8393,0.668);
/*!40000 ALTER TABLE `fugitive_emissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gas_emission_coefs`
--

DROP TABLE IF EXISTS `gas_emission_coefs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gas_emission_coefs` (
  `gas_name` varchar(45) COLLATE utf8mb3_unicode_ci NOT NULL,
  `coef` int DEFAULT NULL,
  PRIMARY KEY (`gas_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gas_emission_coefs`
--

LOCK TABLES `gas_emission_coefs` WRITE;
/*!40000 ALTER TABLE `gas_emission_coefs` DISABLE KEYS */;
INSERT INTO `gas_emission_coefs` VALUES ('CH4',25),('CO2',1),('N2O',298);
/*!40000 ALTER TABLE `gas_emission_coefs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mixed_coefs`
--

DROP TABLE IF EXISTS `mixed_coefs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mixed_coefs` (
  `chem_formula` varchar(45) COLLATE utf8mb3_unicode_ci NOT NULL,
  `name` varchar(45) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `carbon_units` int DEFAULT NULL,
  PRIMARY KEY (`chem_formula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mixed_coefs`
--

LOCK TABLES `mixed_coefs` WRITE;
/*!40000 ALTER TABLE `mixed_coefs` DISABLE KEYS */;
INSERT INTO `mixed_coefs` VALUES ('Ar','Аргон',0),('C2H6','Этан',2),('C3H8','Пропан',3),('CH4','Метан',1),('CO','Оксид углерода',1),('CO2','Диоксид углерода',1),('H2','Водород',0),('H2S','Сероводород',0),('He','Гелий',0),('i-C4H10','изо-Бутан',4),('i-C5H12','изо-Пентан',5),('n-C10H22','н-Декан',10),('n-C4H10','н-Бутан',4),('n-C5H12','н-Пентан',5),('n-C6H14','н-Гексан',6),('n-C7H16','н-Гептан',7),('n-C8H18','н-Октан',8),('n-C9H20','н-Нонан',9),('N2','Азот',0),('O2','Кислород',0),('Undefined','Неопределяемые компоненты',2);
/*!40000 ALTER TABLE `mixed_coefs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stationary_fuel_burn`
--

DROP TABLE IF EXISTS `stationary_fuel_burn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stationary_fuel_burn` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fuel_consumption` float DEFAULT NULL,
  `fuel_emissions` float DEFAULT NULL,
  `oxi_coef` float DEFAULT NULL,
  `trans_coef` float DEFAULT NULL,
  `result` float DEFAULT NULL,
  `enterprise_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `z_idx` (`enterprise_id`),
  CONSTRAINT `stationary_fuel_burn-enterprise` FOREIGN KEY (`enterprise_id`) REFERENCES `enterprise` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stationary_fuel_burn`
--

LOCK TABLES `stationary_fuel_burn` WRITE;
/*!40000 ALTER TABLE `stationary_fuel_burn` DISABLE KEYS */;
INSERT INTO `stationary_fuel_burn` VALUES (1,0.1,74.1,1,42.5,314.925,1),(2,2,74.1,1,42.5,6298.5,1),(3,3,74.1,1,42.5,9447.75,1),(4,6,74.1,1,42.5,18895.5,1),(5,8,74.1,1,42.5,25194,1),(6,0.1,74.1,1,42.5,314.925,1),(7,0.5,74.1,1,42.5,1574.62,1),(8,0.1,74.1,1,42.5,314.925,2),(9,0.1,74.1,1,42.5,314.925,13),(10,0.1,74.1,1,42.5,314.925,13),(11,0.1,74.1,1,42.5,314.925,13),(12,0.1,74.1,1,42.5,314.925,13),(13,0.1,73.3,1,41.9,307.127,1),(14,0.1,73.3,1,41.9,307.127,13),(15,0.1,73.3,1,41.9,307.127,13),(16,2,73.3,1,41.9,6142.54,13),(17,0.05,74.1,1,42.5,157.462,14),(18,0.01,74.1,1,42.5,31.4925,14),(19,0.02,74.1,1,42.5,62.985,14);
/*!40000 ALTER TABLE `stationary_fuel_burn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stationary_gas_burn`
--

DROP TABLE IF EXISTS `stationary_gas_burn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stationary_gas_burn` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fuel_consumption` float DEFAULT NULL,
  `fuel_emission_coef` float DEFAULT NULL,
  `oxi_coef` float DEFAULT NULL,
  `CO2_emission` float DEFAULT NULL,
  `enterprise_id` int DEFAULT NULL,
  `gas_coef_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `v_idx` (`enterprise_id`),
  KEY `gas_coef_idx` (`gas_coef_id`),
  CONSTRAINT `gas_coef` FOREIGN KEY (`gas_coef_id`) REFERENCES `stationary_gas_coef` (`id`),
  CONSTRAINT `stationary_gas_burn-enterprise` FOREIGN KEY (`enterprise_id`) REFERENCES `enterprise` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stationary_gas_burn`
--

LOCK TABLES `stationary_gas_burn` WRITE;
/*!40000 ALTER TABLE `stationary_gas_burn` DISABLE KEYS */;
INSERT INTO `stationary_gas_burn` VALUES (1,10000,3.39483,1,33948.3,1,2),(2,10000,2.0915,1,20915,1,3),(3,10000,2.38733,1,23873.3,1,5),(4,10000,2.38536,1,23853.6,1,4),(5,10000,2.38536,1,23853.6,1,4),(6,10000,2.29897,1,22989.7,3,1),(7,1000,2.29897,1,2298.97,3,1),(8,10000,2.29897,1,22989.7,4,1),(9,10000,2.29897,1,22989.7,4,1),(10,10000,2.29897,1,22989.7,4,1),(11,60000,2.24146,1,134488,14,6),(12,20000,2.24146,1,44829.3,14,7);
/*!40000 ALTER TABLE `stationary_gas_burn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stationary_gas_coef`
--

DROP TABLE IF EXISTS `stationary_gas_coef`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stationary_gas_coef` (
  `id` int NOT NULL,
  `Name` varchar(45) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `chem_formula` varchar(45) COLLATE utf8mb3_unicode_ci NOT NULL,
  `chem_content` float DEFAULT '0',
  PRIMARY KEY (`id`,`chem_formula`),
  KEY `stationary_chem_coef_idx` (`chem_formula`),
  CONSTRAINT `stationary_chem_coef` FOREIGN KEY (`chem_formula`) REFERENCES `mixed_coefs` (`chem_formula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stationary_gas_coef`
--

LOCK TABLES `stationary_gas_coef` WRITE;
/*!40000 ALTER TABLE `stationary_gas_coef` DISABLE KEYS */;
INSERT INTO `stationary_gas_coef` VALUES (1,'Печи подогрева','C2H6',11.8),(1,'Печи подогрева','C3H8',8.3),(1,'Печи подогрева','CH4',58.1),(1,'Печи подогрева','CO2',2.32),(1,'Печи подогрева','H2S',0.1801),(1,'Печи подогрева','i-C4H10',1.27),(1,'Печи подогрева','i-C5H12',0.51),(1,'Печи подогрева','n-C4H10',1.95),(1,'Печи подогрева','n-C5H12',0.0179),(1,'Печи подогрева','n-C6H14',0.002),(1,'Печи подогрева','N2',14.2),(1,'Печи подогрева','O2',1.08),(1,'Печи подогрева','Undefined',0.27),(2,'Котельная, печи сжигания отходов','C2H6',16.6),(2,'Котельная, печи сжигания отходов','C3H8',19.6),(2,'Котельная, печи сжигания отходов','CH4',39.6),(2,'Котельная, печи сжигания отходов','CO2',4.32),(2,'Котельная, печи сжигания отходов','H2S',0.42),(2,'Котельная, печи сжигания отходов','i-C4H10',3.41),(2,'Котельная, печи сжигания отходов','i-C5H12',1.25),(2,'Котельная, печи сжигания отходов','n-C4H10',6.2),(2,'Котельная, печи сжигания отходов','n-C5H12',0.76),(2,'Котельная, печи сжигания отходов','n-C6H14',0.027),(2,'Котельная, печи сжигания отходов','N2',7.7),(2,'Котельная, печи сжигания отходов','O2',0.114),(3,'ГПЭА','C2H6',10.4),(3,'ГПЭА','C3H8',6.4),(3,'ГПЭА','CH4',64.2),(3,'ГПЭА','CO2',1.41),(3,'ГПЭА','H2S',0.0105),(3,'ГПЭА','i-C4H10',0.9),(3,'ГПЭА','i-C5H12',0.036),(3,'ГПЭА','n-C4H10',0.92),(3,'ГПЭА','n-C5H12',0.125),(3,'ГПЭА','n-C6H14',0.0028),(3,'ГПЭА','N2',15.4),(3,'ГПЭА','O2',0.196),(4,'Полигон','C2H6',9.8),(4,'Полигон','C3H8',11.8),(4,'Полигон','CH4',52.4),(4,'Полигон','CO2',3.5),(4,'Полигон','H2S',0.0233),(4,'Полигон','i-C4H10',1.61),(4,'Полигон','i-C5H12',0.425),(4,'Полигон','n-C4H10',2.24),(4,'Полигон','n-C5H12',0.199),(4,'Полигон','n-C6H14',0.0158),(4,'Полигон','N2',17.1),(4,'Полигон','O2',0.8),(4,'Полигон','Undefined',0.0869),(5,'ГТУ','C2H6',12.1),(5,'ГТУ','C3H8',9.4),(5,'ГТУ','CH4',59.2),(5,'ГТУ','CO2',2.08),(5,'ГТУ','H2S',0.0781),(5,'ГТУ','i-C4H10',1.42),(5,'ГТУ','i-C5H12',0.334),(5,'ГТУ','n-C4H10',1.95),(5,'ГТУ','n-C5H12',0.179),(5,'ГТУ','n-C6H14',0.0118),(5,'ГТУ','N2',13.1),(5,'ГТУ','O2',0.152),(6,'Газотурбинные электрогенераторы предприятие 2','C2H6',10.845),(6,'Газотурбинные электрогенераторы предприятие 2','C3H8',5.578),(6,'Газотурбинные электрогенераторы предприятие 2','CH4',70.038),(6,'Газотурбинные электрогенераторы предприятие 2','CO2',1.329),(6,'Газотурбинные электрогенераторы предприятие 2','H2S',0.488),(6,'Газотурбинные электрогенераторы предприятие 2','He',0.488),(6,'Газотурбинные электрогенераторы предприятие 2','i-C4H10',1.898),(6,'Газотурбинные электрогенераторы предприятие 2','i-C5H12',0.564),(6,'Газотурбинные электрогенераторы предприятие 2','n-C6H14',0.277),(6,'Газотурбинные электрогенераторы предприятие 2','N2',8.923),(6,'Газотурбинные электрогенераторы предприятие 2','O2',0.021),(7,'Печи предприятие 2','C2H6',10.845),(7,'Печи предприятие 2','C3H8',5.578),(7,'Печи предприятие 2','CH4',70.038),(7,'Печи предприятие 2','CO2',1.329),(7,'Печи предприятие 2','H2',0.002),(7,'Печи предприятие 2','H2S',0.488),(7,'Печи предприятие 2','He',0.037),(7,'Печи предприятие 2','i-C4H10',1.898),(7,'Печи предприятие 2','i-C5H12',0.564),(7,'Печи предприятие 2','n-C6H14',0.277),(7,'Печи предприятие 2','N2',8.923),(7,'Печи предприятие 2','O2',0.021);
/*!40000 ALTER TABLE `stationary_gas_coef` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `torch_fuel_burn`
--

DROP TABLE IF EXISTS `torch_fuel_burn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `torch_fuel_burn` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fuel_consumption` float DEFAULT NULL,
  `enterprise_id` int DEFAULT NULL,
  `coef_id` int DEFAULT NULL,
  `CO2_emission` float DEFAULT NULL,
  `CH4_emission` float DEFAULT NULL,
  `unburn_coef` float DEFAULT '0.02',
  `rho_CO2` float DEFAULT '1.8393',
  `rho_CH4` float DEFAULT '0.668',
  PRIMARY KEY (`id`),
  KEY `enterpise_id_idx` (`enterprise_id`),
  KEY `torch_fuel_coef_fk_idx` (`coef_id`),
  CONSTRAINT `torch_fuel_burn-enterprise` FOREIGN KEY (`enterprise_id`) REFERENCES `enterprise` (`id`),
  CONSTRAINT `torch_fuel_coef_fk` FOREIGN KEY (`coef_id`) REFERENCES `torch_fuel_coef` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `torch_fuel_burn`
--

LOCK TABLES `torch_fuel_burn` WRITE;
/*!40000 ALTER TABLE `torch_fuel_burn` DISABLE KEYS */;
INSERT INTO `torch_fuel_burn` VALUES (1,1000,1,1,1169.08,4.71608,0.02,1.8393,0.668),(2,1000,3,2,2639.09,7.10752,0.02,1.8393,0.668),(3,1000,5,3,2639.09,7.10752,0.02,1.8393,0.668),(4,1000,4,4,1698.23,8.12288,0.02,1.8393,0.668),(5,1000,6,5,1954.88,8.684,0.02,1.8393,0.668),(6,10000,14,6,26821.6,78.5394,0.02,1.8393,0.668);
/*!40000 ALTER TABLE `torch_fuel_burn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `torch_fuel_coef`
--

DROP TABLE IF EXISTS `torch_fuel_coef`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `torch_fuel_coef` (
  `id` int NOT NULL,
  `chem_formula` varchar(45) COLLATE utf8mb3_unicode_ci NOT NULL,
  `chem_content` float DEFAULT '0',
  `enterprise_id` int DEFAULT NULL,
  PRIMARY KEY (`id`,`chem_formula`),
  KEY `stationary_chem_coef_idx` (`chem_formula`),
  CONSTRAINT `stationary_chem_coef0` FOREIGN KEY (`chem_formula`) REFERENCES `mixed_coefs` (`chem_formula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `torch_fuel_coef`
--

LOCK TABLES `torch_fuel_coef` WRITE;
/*!40000 ALTER TABLE `torch_fuel_coef` DISABLE KEYS */;
INSERT INTO `torch_fuel_coef` VALUES (1,'C2H6',5.7,1),(1,'C3H8',4.2,1),(1,'CH4',35.3,1),(1,'CO2',1.29,1),(1,'H2S',0.33,1),(1,'i-C4H10',0.5,1),(1,'i-C5H12',0.041,1),(1,'n-C4H10',0.48,1),(1,'n-C5H12',0.008,1),(1,'n-C6H14',0.0001,1),(1,'N2',41.7,1),(1,'O2',10.4,1),(1,'Undefined',0.0513,1),(2,'C2H6',11.61,3),(2,'C3H8',12.85,3),(2,'CH4',53.2,3),(2,'CO2',3.23,3),(2,'H2S',0.0486,3),(2,'i-C4H10',5.4,3),(2,'i-C5H12',1.29,3),(2,'n-C6H14',0.0047,3),(2,'N2',12.3,3),(2,'Undefined',0.0667,3),(3,'C2H6',11.61,5),(3,'C3H8',12.85,5),(3,'CH4',53.2,5),(3,'CO2',3.23,5),(3,'H2S',0.0486,5),(3,'i-C4H10',5.4,5),(3,'i-C5H12',1.29,5),(3,'n-C6H14',0.0047,5),(3,'N2',12.3,5),(3,'Undefined',0.0667,5),(4,'C2H6',7.2,4),(4,'C3H8',3.7,4),(4,'CH4',60.8,4),(4,'CO2',1.45,4),(4,'H2S',0.1988,4),(4,'i-C4H10',0.808,4),(4,'i-C5H12',0.0481,4),(4,'n-C6H14',0.0005,4),(4,'N2',24.3,4),(4,'Undefined',1.4946,4),(5,'C2H6',9.9,6),(5,'C3H8',4.91,6),(5,'CH4',65,6),(5,'CO2',2.5,6),(5,'H2S',0.0749,6),(5,'i-C4H10',1.12,6),(5,'i-C5H12',0.1126,6),(5,'n-C6H14',0.0037,6),(5,'N2',15.7,6),(5,'Undefined',0.6788,6),(6,'C2H6',13.788,14),(6,'C3H8',10.4,14),(6,'CH4',58.787,14),(6,'CO2',2.198,14),(6,'H2',0.004,14),(6,'H2S',3.222,14),(6,'He',0.021,14),(6,'i-C4H10',4.459,14),(6,'i-C5H12',1.438,14),(6,'n-C6H14',0.669,14),(6,'N2',4.993,14),(6,'O2',0.021,14);
/*!40000 ALTER TABLE `torch_fuel_coef` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transport`
--

DROP TABLE IF EXISTS `transport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transport` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fuel_volume` float DEFAULT NULL,
  `rho` float DEFAULT NULL,
  `CO2_coef` float DEFAULT NULL,
  `result` float DEFAULT NULL,
  `enterprise_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `zxcx_idx` (`enterprise_id`),
  CONSTRAINT `transport-enteprise` FOREIGN KEY (`enterprise_id`) REFERENCES `enterprise` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transport`
--

LOCK TABLES `transport` WRITE;
/*!40000 ALTER TABLE `transport` DISABLE KEYS */;
INSERT INTO `transport` VALUES (1,100000,0.84,3.149,264.516,7),(2,50000,0.84,3.149,132.258,7),(3,30000,0.75,3.026,68.085,7),(4,20000,0.84,3.149,52.9032,7),(5,155.867,0.84,3.149,0.412293,14),(6,1.338,0.84,3.149,0.00353922,14),(7,0.119,0.84,3.149,0.000314774,14),(8,4.93,0.84,3.149,0.0130406,14),(9,0.46305,0.043657,3.149,0.0000636582,14);
/*!40000 ALTER TABLE `transport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `waste_burn_co2_liquid`
--

DROP TABLE IF EXISTS `waste_burn_co2_liquid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `waste_burn_co2_liquid` (
  `id` int NOT NULL AUTO_INCREMENT,
  `mass` float DEFAULT NULL,
  `carbon_coef` float DEFAULT NULL,
  `oxi_coef` float DEFAULT '1',
  `result` float DEFAULT NULL,
  `enterprise_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `zxc_idx` (`enterprise_id`),
  CONSTRAINT `waste_burn_CO2-enterprise0` FOREIGN KEY (`enterprise_id`) REFERENCES `enterprise` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `waste_burn_co2_liquid`
--

LOCK TABLES `waste_burn_co2_liquid` WRITE;
/*!40000 ALTER TABLE `waste_burn_co2_liquid` DISABLE KEYS */;
INSERT INTO `waste_burn_co2_liquid` VALUES (1,0.1,0.8,1,0.08,7),(2,0.03,0.8,1,0.024,7),(3,0.01,0.8,1,0.008,7);
/*!40000 ALTER TABLE `waste_burn_co2_liquid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `waste_burn_co2_mixed`
--

DROP TABLE IF EXISTS `waste_burn_co2_mixed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `waste_burn_co2_mixed` (
  `id` int NOT NULL AUTO_INCREMENT,
  `mass` float DEFAULT NULL,
  `comp_coef` float DEFAULT NULL,
  `oxi_coef` float DEFAULT '1',
  `coef_id` int DEFAULT NULL,
  `result` float DEFAULT NULL,
  `enterprise_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `zxc_idx` (`enterprise_id`),
  KEY `waste_burn_coef_idx` (`coef_id`),
  CONSTRAINT `waste_burn_CO2-enterprise` FOREIGN KEY (`enterprise_id`) REFERENCES `enterprise` (`id`),
  CONSTRAINT `waste_burn_coef_mixed` FOREIGN KEY (`coef_id`) REFERENCES `waste_burn_mixed_coef` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `waste_burn_co2_mixed`
--

LOCK TABLES `waste_burn_co2_mixed` WRITE;
/*!40000 ALTER TABLE `waste_burn_co2_mixed` DISABLE KEYS */;
INSERT INTO `waste_burn_co2_mixed` VALUES (1,0.01,0.177238,1,1,6.49871,1),(2,0.02,0.4692,1,2,34.408,2),(3,0.03,0.257398,1,3,28.3138,3),(4,0.04,0.231124,1,4,33.8982,4),(5,0.05,0.0755007,1,5,13.8418,13);
/*!40000 ALTER TABLE `waste_burn_co2_mixed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `waste_burn_co2_solid`
--

DROP TABLE IF EXISTS `waste_burn_co2_solid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `waste_burn_co2_solid` (
  `id` int NOT NULL AUTO_INCREMENT,
  `mass` float DEFAULT NULL,
  `dry_coef` float DEFAULT NULL,
  `carbon_coef` float DEFAULT NULL,
  `fossil_coef` float DEFAULT NULL,
  `oxi_coef` float DEFAULT '1',
  `result` float DEFAULT NULL,
  `enterprise_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `zxc_idx` (`enterprise_id`),
  CONSTRAINT `waste_burn_CO2-enterprise1` FOREIGN KEY (`enterprise_id`) REFERENCES `enterprise` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `waste_burn_co2_solid`
--

LOCK TABLES `waste_burn_co2_solid` WRITE;
/*!40000 ALTER TABLE `waste_burn_co2_solid` DISABLE KEYS */;
INSERT INTO `waste_burn_co2_solid` VALUES (1,0.01,0.4515,0.5,0.9,1,7.44975,1),(2,0.01,0.4515,0.33,0,1,0,1),(3,0.01,0.4515,0.5,0.9,1,7.44975,2),(4,0.01,0.4515,0.5,0.9,1,7.44975,3),(5,0.01,0.4515,0.33,0,1,0,3),(6,0.02,0.4515,0.5,0.9,1,14.8995,4),(7,0.01,0.4515,0.33,0,1,0,4),(8,0.01,0.4515,0.5,0.9,1,7.44975,13),(9,0.01,0.4515,0.33,0,1,0,13);
/*!40000 ALTER TABLE `waste_burn_co2_solid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `waste_burn_coef`
--

DROP TABLE IF EXISTS `waste_burn_coef`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `waste_burn_coef` (
  `comp` varchar(45) COLLATE utf8mb3_unicode_ci NOT NULL,
  `dry_coef` float DEFAULT NULL,
  `carbon_coef` float DEFAULT '0',
  `fossil_coef` float DEFAULT '0',
  PRIMARY KEY (`comp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `waste_burn_coef`
--

LOCK TABLES `waste_burn_coef` WRITE;
/*!40000 ALTER TABLE `waste_burn_coef` DISABLE KEYS */;
INSERT INTO `waste_burn_coef` VALUES ('Бумага/картон',0.75,0.37,0.02),('Древесина',0.8,0.51,0),('Другие отходы',0.92,0.51,1),('Металл',1,0,0),('Пищевые отходы',0.28,0.45,0),('Пластик',0.92,0.6,1),('Резина и кожа',0.95,0.68,0.2),('Стекло',1,0,0),('Текстиль',0.8,0.51,0.2);
/*!40000 ALTER TABLE `waste_burn_coef` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `waste_burn_mixed_coef`
--

DROP TABLE IF EXISTS `waste_burn_mixed_coef`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `waste_burn_mixed_coef` (
  `id` int NOT NULL AUTO_INCREMENT,
  `comp` varchar(45) COLLATE utf8mb3_unicode_ci NOT NULL,
  `portion` varchar(45) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`,`comp`),
  KEY `waste_burn_coef_idx` (`comp`),
  CONSTRAINT `waste_burn_coef` FOREIGN KEY (`comp`) REFERENCES `waste_burn_coef` (`comp`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `waste_burn_mixed_coef`
--

LOCK TABLES `waste_burn_mixed_coef` WRITE;
/*!40000 ALTER TABLE `waste_burn_mixed_coef` DISABLE KEYS */;
INSERT INTO `waste_burn_mixed_coef` VALUES (1,'Бумага/картон','0.015'),(1,'Древесина','0.007'),(1,'Другие отходы','0.363'),(1,'Металл','0.005'),(1,'Пищевые отходы','0.591'),(1,'Пластик','0.012'),(1,'Резина и кожа','0.001'),(1,'Стекло','0.004'),(1,'Текстиль','0.001'),(2,'Бумага/картон','0.000'),(2,'Древесина','0.000'),(2,'Другие отходы','1.000'),(2,'Металл','0.000'),(2,'Пищевые отходы','0.000'),(2,'Пластик','0.000'),(2,'Резина и кожа','0.000'),(2,'Стекло','0.000'),(2,'Текстиль','0.000'),(3,'Бумага/картон','0.025'),(3,'Древесина','0.005'),(3,'Другие отходы','0.533'),(3,'Металл','0.007'),(3,'Пищевые отходы','0.418'),(3,'Пластик','0.013'),(3,'Резина и кожа','0.000'),(3,'Стекло','0.000'),(3,'Текстиль','0.000'),(4,'Бумага/картон','0.027'),(4,'Древесина','0.015'),(4,'Другие отходы','0.473'),(4,'Металл','0.029'),(4,'Пищевые отходы','0.440'),(4,'Пластик','0.016'),(4,'Резина и кожа','0.001'),(4,'Стекло','0.000'),(4,'Текстиль','0.001'),(5,'Бумага/картон','0.051'),(5,'Древесина','0.002'),(5,'Другие отходы','0.106'),(5,'Металл','0.012'),(5,'Пищевые отходы','0.765'),(5,'Пластик','0.042'),(5,'Резина и кожа','0.014'),(5,'Стекло','0.004'),(5,'Текстиль','0.006');
/*!40000 ALTER TABLE `waste_burn_mixed_coef` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `waste_burn_n2o`
--

DROP TABLE IF EXISTS `waste_burn_n2o`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `waste_burn_n2o` (
  `id` int NOT NULL AUTO_INCREMENT,
  `mass` float DEFAULT NULL,
  `emission_coef` float DEFAULT NULL,
  `result` float DEFAULT NULL,
  `enterprise_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `zxcz_idx` (`enterprise_id`),
  CONSTRAINT `waste_burn_N2O-enterprise` FOREIGN KEY (`enterprise_id`) REFERENCES `enterprise` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `waste_burn_n2o`
--

LOCK TABLES `waste_burn_n2o` WRITE;
/*!40000 ALTER TABLE `waste_burn_n2o` DISABLE KEYS */;
INSERT INTO `waste_burn_n2o` VALUES (1,0.01,50,0.5,1),(2,0.02,50,1,2),(3,0.03,50,1.5,3),(4,0.04,50,2,4),(5,0.05,50,2.5,13),(6,0.01,100,1,1),(7,0.01,450,4.5,1),(8,0.01,100,1,2),(9,0.01,100,1,3),(10,0.01,450,4.5,3),(11,0.02,100,2,4),(12,0.01,450,4.5,4),(13,0.01,100,1,13),(14,0.01,450,4.5,13),(15,0.1,100,10,7),(16,0.03,100,3,7),(17,0.01,100,1,7);
/*!40000 ALTER TABLE `waste_burn_n2o` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `waste_water_ch4`
--

DROP TABLE IF EXISTS `waste_water_ch4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `waste_water_ch4` (
  `id` int NOT NULL AUTO_INCREMENT,
  `B0` float DEFAULT '0.6',
  `corr_coef` float DEFAULT '0.3',
  `volume` float DEFAULT NULL,
  `organic_coef` float DEFAULT NULL,
  `organic_waste` float DEFAULT '0',
  `result` float DEFAULT NULL,
  `enterprise_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `enterpise_id_idx` (`enterprise_id`),
  CONSTRAINT `waste_water_CH4-enterprise` FOREIGN KEY (`enterprise_id`) REFERENCES `enterprise` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `waste_water_ch4`
--

LOCK TABLES `waste_water_ch4` WRITE;
/*!40000 ALTER TABLE `waste_water_ch4` DISABLE KEYS */;
INSERT INTO `waste_water_ch4` VALUES (1,0.6,0.3,100,500,0,0.009,1),(2,0.6,0.3,50,402,0,0.003618,1),(3,0.6,0.3,900,172,0,0.027864,1),(4,0.6,0.3,1000,152,0,0.02736,2),(5,0.6,0.3,1200,239,0,0.051624,13);
/*!40000 ALTER TABLE `waste_water_ch4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `waste_water_n2o`
--

DROP TABLE IF EXISTS `waste_water_n2o`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `waste_water_n2o` (
  `id` int NOT NULL AUTO_INCREMENT,
  `prot` float DEFAULT NULL,
  `N_waste` float DEFAULT '0',
  `N_coef` float DEFAULT '0.16',
  `uncons_prot` float DEFAULT '1.2',
  `ind_prot` float DEFAULT '1.25',
  `waste_coef` float DEFAULT '0.05',
  `trans_coef` float DEFAULT ((44 / 28)),
  `result` float DEFAULT NULL,
  `enterprise_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `enterpise_id_idx` (`enterprise_id`),
  CONSTRAINT `wastewater_N2O-enterprise` FOREIGN KEY (`enterprise_id`) REFERENCES `enterprise` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `waste_water_n2o`
--

LOCK TABLES `waste_water_n2o` WRITE;
/*!40000 ALTER TABLE `waste_water_n2o` DISABLE KEYS */;
INSERT INTO `waste_water_n2o` VALUES (1,300,0,0.16,1.2,1.25,0.05,1.57143,0.00565714,2),(2,300,0,0.16,1.2,1.25,0.05,1.57143,0.00565714,1),(3,200,0,0.16,1.2,1.25,0.05,1.57143,0.00377143,13);
/*!40000 ALTER TABLE `waste_water_n2o` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'nestro'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-04 19:12:06
