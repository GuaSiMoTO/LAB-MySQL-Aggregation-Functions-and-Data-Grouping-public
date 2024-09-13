CREATE DATABASE  IF NOT EXISTS `DeathStarDB` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `DeathStarDB`;
-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: localhost    Database: DeathStarDB
-- ------------------------------------------------------
-- Server version	8.0.35-0ubuntu0.23.04.1

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
-- Table structure for table `Characters`
--

DROP TABLE IF EXISTS `Characters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Characters` (
  `character_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `species` varchar(50) DEFAULT NULL,
  `affiliation` varchar(50) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`character_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Characters`
--

LOCK TABLES `Characters` WRITE;
/*!40000 ALTER TABLE `Characters` DISABLE KEYS */;
INSERT INTO `Characters` VALUES (1,'Darth Vader','Human','Empire','Sith Lord'),(2,'Grand Moff Tarkin','Human','Empire','Governor'),(3,'Emperor Palpatine','Human','Empire','Emperor'),(4,'Stormtrooper','Human','Empire','Soldier'),(5,'Obi-Wan Kenobi','Human','Rebellion','Jedi Knight'),(6,'Luke Skywalker','Human','Rebellion','Jedi Knight'),(7,'Princess Leia','Human','Rebellion','Leader'),(8,'Han Solo','Human','Rebellion','Smuggler'),(9,'Chewbacca','Wookiee','Rebellion','Co-pilot'),(10,'R2-D2','Droid','Rebellion','Astromech Droid'),(11,'C-3PO','Droid','Rebellion','Protocol Droid'),(12,'Boba Fett','Human','Bounty Hunter','Bounty Hunter'),(13,'Lando Calrissian','Human','Rebellion','General'),(14,'Admiral Ackbar','Mon Calamari','Rebellion','Admiral'),(15,'Yoda','Unknown','Jedi Order','Jedi Master'),(16,'Darth Vader','Human','Empire','Sith Lord'),(17,'Grand Moff Tarkin','Human','Empire','Governor'),(18,'Emperor Palpatine','Human','Empire','Emperor'),(19,'Stormtrooper','Human','Empire','Soldier'),(20,'Obi-Wan Kenobi','Human','Rebellion','Jedi Knight'),(21,'Luke Skywalker','Human','Rebellion','Jedi Knight'),(22,'Princess Leia','Human','Rebellion','Leader'),(23,'Han Solo','Human','Rebellion','Smuggler'),(24,'Chewbacca','Wookiee','Rebellion','Co-pilot'),(25,'R2-D2','Droid','Rebellion','Astromech Droid'),(26,'C-3PO','Droid','Rebellion','Protocol Droid'),(27,'Boba Fett','Human','Bounty Hunter','Bounty Hunter'),(28,'Lando Calrissian','Human','Rebellion','General'),(29,'Admiral Ackbar','Mon Calamari','Rebellion','Admiral'),(30,'Yoda','Unknown','Jedi Order','Jedi Master');
/*!40000 ALTER TABLE `Characters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Economy`
--

DROP TABLE IF EXISTS `Economy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Economy` (
  `economy_id` int NOT NULL AUTO_INCREMENT,
  `resource` varchar(100) NOT NULL,
  `amount` int DEFAULT NULL,
  `unit` varchar(50) DEFAULT NULL,
  `cost_per_unit` decimal(10,2) DEFAULT NULL,
  `last_updated` date DEFAULT NULL,
  PRIMARY KEY (`economy_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Economy`
--

LOCK TABLES `Economy` WRITE;
/*!40000 ALTER TABLE `Economy` DISABLE KEYS */;
INSERT INTO `Economy` VALUES (1,'Kyber Crystals',500,'kg',100000.00,'2024-01-01'),(2,'Durasteel',10000,'tons',500.00,'2024-01-01'),(3,'Fuel',500000,'liters',1.50,'2024-01-01'),(4,'Food Supplies',2000,'tons',200.00,'2024-01-01'),(5,'Medical Supplies',500,'units',1000.00,'2024-01-01'),(6,'Ammunition',1000000,'rounds',0.10,'2024-01-01'),(7,'Droid Parts',3000,'units',1500.00,'2024-01-01'),(8,'Energy Cells',10000,'units',50.00,'2024-01-01'),(9,'Construction Materials',5000,'tons',300.00,'2024-01-01');
/*!40000 ALTER TABLE `Economy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Events`
--

DROP TABLE IF EXISTS `Events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Events` (
  `event_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `date` date DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Events`
--

LOCK TABLES `Events` WRITE;
/*!40000 ALTER TABLE `Events` DISABLE KEYS */;
INSERT INTO `Events` VALUES (1,'Destruction of Alderaan','0000-01-01','Alderaan','First use of the Death Star superlaser'),(2,'Battle of Yavin','0000-12-25','Yavin','Rebels destroy the first Death Star'),(3,'Battle of Endor','0001-05-04','Endor','Rebels destroy the second Death Star'),(4,'Capture of Princess Leia','0000-10-01','Tatooine','Darth Vader captures Princess Leia'),(5,'Escape from the Death Star','0000-11-05','Death Star','Luke Skywalker and team escape the Death Star'),(6,'Rescue of Han Solo','0000-12-15','Tatooine','Leia and Luke rescue Han Solo from Jabba the Hutt'),(7,'Rebellion Meeting','0000-09-15','Yavin','Planning the attack on the Death Star'),(8,'Battle of Hoth','0000-02-21','Hoth','Imperial forces attack the Rebel base'),(9,'Death Star Construction Begins','0000-03-14','Endor','Construction of the second Death Star begins'),(10,'Attack on Scarif','0000-04-19','Scarif','Rebels steal the Death Star plans');
/*!40000 ALTER TABLE `Events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Locations`
--

DROP TABLE IF EXISTS `Locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Locations` (
  `location_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `sector` varchar(50) DEFAULT NULL,
  `level` int DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`location_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Locations`
--

LOCK TABLES `Locations` WRITE;
/*!40000 ALTER TABLE `Locations` DISABLE KEYS */;
INSERT INTO `Locations` VALUES (1,'Main Reactor','Sector 7G',1,'Power core of the Death Star'),(2,'Throne Room','Sector 1A',10,'Emperor\'s personal chamber'),(3,'Detention Block','Sector 3C',2,'Prisoner holding area'),(4,'Hangar Bay','Sector 4B',1,'Landing area for ships'),(5,'Command Center','Sector 2D',5,'Control room for Death Star operations'),(6,'Trash Compactor','Sector 6E',1,'Waste disposal area'),(7,'Docking Bay','Sector 5F',1,'Docking area for large ships'),(8,'Shield Generator','Sector 8H',3,'Generator providing defense shield'),(9,'Officer\'s Quarters','Sector 9I',3,'Living area for officers');
/*!40000 ALTER TABLE `Locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Missions`
--

DROP TABLE IF EXISTS `Missions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Missions` (
  `mission_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `objective` varchar(255) DEFAULT NULL,
  `leader` varchar(100) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`mission_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Missions`
--

LOCK TABLES `Missions` WRITE;
/*!40000 ALTER TABLE `Missions` DISABLE KEYS */;
INSERT INTO `Missions` VALUES (1,'Capture Princess Leia','Capture and retrieve plans','Darth Vader','0000-10-01','0000-10-02','Completed'),(2,'Destroy the Death Star','Destroy the first Death Star','Luke Skywalker','0000-12-25','0000-12-25','Successful'),(3,'Rescue Han Solo','Rescue Han Solo from Jabba','Leia Organa','0000-12-15','0000-12-16','Successful'),(4,'Infiltrate Death Star','Infiltrate and disable shield','Han Solo','0000-11-01','0000-11-02','Successful'),(5,'Steal Death Star Plans','Retrieve plans from Scarif','Jyn Erso','0000-04-19','0000-04-20','Successful'),(6,'Evacuate Hoth','Evacuate Rebel base','Leia Organa','0000-02-21','0000-02-22','Successful'),(7,'Battle of Endor','Destroy second Death Star','Lando Calrissian','0001-05-04','0001-05-04','Successful'),(8,'Protect Rebel Base','Defend the Rebel base','General Rieekan','0000-02-20','0000-02-21','Completed'),(9,'Escort Convoy','Protect supply convoy','Han Solo','0000-03-01','0000-03-02','Completed'),(10,'Reconnaissance Mission','Gather intelligence on Imperial fleet','Cassian Andor','0000-01-15','0000-01-16','Completed'),(11,'Capture Princess Leia','Capture and retrieve plans','Darth Vader','0000-10-01','0000-10-02','Completed'),(12,'Destroy the Death Star','Destroy the first Death Star','Luke Skywalker','0000-12-25','0000-12-25','Successful'),(13,'Rescue Han Solo','Rescue Han Solo from Jabba','Leia Organa','0000-12-15','0000-12-16','Successful'),(14,'Infiltrate Death Star','Infiltrate and disable shield','Han Solo','0000-11-01','0000-11-02','Successful'),(15,'Steal Death Star Plans','Retrieve plans from Scarif','Jyn Erso','0000-04-19','0000-04-20','Successful'),(16,'Evacuate Hoth','Evacuate Rebel base','Leia Organa','0000-02-21','0000-02-22','Successful'),(17,'Battle of Endor','Destroy second Death Star','Lando Calrissian','0001-05-04','0001-05-04','Successful'),(18,'Protect Rebel Base','Defend the Rebel base','General Rieekan','0000-02-20','0000-02-21','Completed'),(19,'Escort Convoy','Protect supply convoy','Han Solo','0000-03-01','0000-03-02','Completed'),(20,'Reconnaissance Mission','Gather intelligence on Imperial fleet','Cassian Andor','0000-01-15','0000-01-16','Completed');
/*!40000 ALTER TABLE `Missions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Ships`
--

DROP TABLE IF EXISTS `Ships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Ships` (
  `ship_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `model` varchar(50) DEFAULT NULL,
  `manufacturer` varchar(50) DEFAULT NULL,
  `capacity` int DEFAULT NULL,
  `crew_size` int DEFAULT NULL,
  PRIMARY KEY (`ship_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ships`
--

LOCK TABLES `Ships` WRITE;
/*!40000 ALTER TABLE `Ships` DISABLE KEYS */;
INSERT INTO `Ships` VALUES (1,'TIE Fighter','Twin Ion Engine','Sienar Fleet Systems',1,1),(2,'Star Destroyer','Imperial-class','Kuat Drive Yards',47000,37000),(3,'Millennium Falcon','YT-1300','Corellian Engineering Corporation',6,4),(4,'X-Wing','T-65','Incom Corporation',1,1),(5,'Y-Wing','BTL-A4','Koensayr Manufacturing',2,2),(6,'A-Wing','RZ-1','Incom Corporation',1,1),(7,'B-Wing','A/SF-01','Slayn & Korpil',1,1),(8,'Slave I','Firespray-31','Kuat Systems Engineering',6,1),(9,'Imperial Shuttle','Lambda-class','Sienar Fleet Systems',20,6),(10,'Executor','Super Star Destroyer','Kuat Drive Yards',280000,38000),(11,'TIE Fighter','Twin Ion Engine','Sienar Fleet Systems',1,1),(12,'Star Destroyer','Imperial-class','Kuat Drive Yards',47000,37000),(13,'Millennium Falcon','YT-1300','Corellian Engineering Corporation',6,4),(14,'X-Wing','T-65','Incom Corporation',1,1),(15,'Y-Wing','BTL-A4','Koensayr Manufacturing',2,2),(16,'A-Wing','RZ-1','Incom Corporation',1,1),(17,'B-Wing','A/SF-01','Slayn & Korpil',1,1),(18,'Slave I','Firespray-31','Kuat Systems Engineering',6,1),(19,'Imperial Shuttle','Lambda-class','Sienar Fleet Systems',20,6),(20,'Executor','Super Star Destroyer','Kuat Drive Yards',280000,38000);
/*!40000 ALTER TABLE `Ships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Storage`
--

DROP TABLE IF EXISTS `Storage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Storage` (
  `storage_id` int NOT NULL AUTO_INCREMENT,
  `location` varchar(100) NOT NULL,
  `item` varchar(100) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `last_updated` date DEFAULT NULL,
  PRIMARY KEY (`storage_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Storage`
--

LOCK TABLES `Storage` WRITE;
/*!40000 ALTER TABLE `Storage` DISABLE KEYS */;
INSERT INTO `Storage` VALUES (1,'Hangar Bay','TIE Fighters',72,'2024-01-01'),(2,'Weapons Cache','Blaster Rifles',200,'2024-01-01'),(3,'Armory','Thermal Detonators',150,'2024-01-01'),(4,'Main Reactor Room','Kyber Crystals',500,'2024-01-01'),(5,'Cargo Hold','Proton Torpedoes',100,'2024-01-01'),(6,'Engineering Bay','Ion Cannons',20,'2024-01-01'),(7,'Supply Room','Med Kits',300,'2024-01-01'),(8,'Docking Bay','Repair Droids',50,'2024-01-01'),(9,'Officer\'s Quarters','Ration Packs',1000,'2024-01-01');
/*!40000 ALTER TABLE `Storage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Weaponry`
--

DROP TABLE IF EXISTS `Weaponry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Weaponry` (
  `weapon_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  `power_level` int DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`weapon_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Weaponry`
--

LOCK TABLES `Weaponry` WRITE;
/*!40000 ALTER TABLE `Weaponry` DISABLE KEYS */;
INSERT INTO `Weaponry` VALUES (1,'Death Star Superlaser','Superlaser',1000000,'Primary weapon of the Death Star'),(2,'Blaster Rifle','Blaster',500,'Standard weapon for Imperial Stormtroopers'),(3,'Lightsaber','Energy Sword',1000,'Weapon of the Jedi'),(4,'Proton Torpedoes','Missile',3000,'Used by X-Wings to attack the Death Star'),(5,'Thermal Detonator','Explosive',2000,'Hand-held explosive device'),(6,'Ion Cannon','Cannon',700,'Used to disable electronic systems'),(7,'Turbolaser','Laser',1500,'Heavy laser cannon for ship-to-ship combat'),(8,'E-11 Blaster Rifle','Blaster',400,'Standard issue for Imperial forces'),(9,'DL-44 Blaster Pistol','Blaster',300,'Han Solo\'s blaster pistol');
/*!40000 ALTER TABLE `Weaponry` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-17 15:10:43
