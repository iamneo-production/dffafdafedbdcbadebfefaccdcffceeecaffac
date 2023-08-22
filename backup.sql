-- MariaDB dump 10.19  Distrib 10.6.14-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: appdb
-- ------------------------------------------------------
-- Server version	5.6.51

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
-- Current Database: `appdb`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `appdb` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `appdb`;

--
-- Table structure for table `cricketer`
--

DROP TABLE IF EXISTS `cricketer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cricketer` (
  `name` varchar(45) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cricketer`
--

LOCK TABLES `cricketer` WRITE;
/*!40000 ALTER TABLE `cricketer` DISABLE KEYS */;
INSERT INTO `cricketer` VALUES ('Kane Williamson',35,'New Zealand'),('MS Dhoni',30,'India'),('Steve Smith',31,'Australia'),('Virat Kohli',32,'India'),('Kane Williamson',35,'New Zealand'),('MS Dhoni',30,'India'),('Steve Smith',31,'Australia'),('Virat Kohli',32,'India'),('Kane Williamson',35,'New Zealand'),('MS Dhoni',30,'India'),('Steve Smith',31,'Australia'),('Virat Kohli',32,'India'),('Kane Williamson',35,'New Zealand'),('MS Dhoni',30,'India'),('Steve Smith',31,'Australia'),('Virat Kohli',32,'India'),('Kane Williamson',35,'New Zealand'),('MS Dhoni',30,'India'),('Steve Smith',31,'Australia'),('Virat Kohli',32,'India'),('Kane Williamson',35,'New Zealand'),('MS Dhoni',30,'India'),('Steve Smith',31,'Australia'),('Virat Kohli',32,'India'),('Kane Williamson',35,'New Zealand'),('MS Dhoni',30,'India'),('Steve Smith',31,'Australia'),('Virat Kohli',32,'India'),('Kane Williamson',35,'New Zealand'),('MS Dhoni',30,'India'),('Steve Smith',31,'Australia'),('Virat Kohli',32,'India'),('Kane Williamson',35,'New Zealand'),('MS Dhoni',30,'India'),('Steve Smith',31,'Australia'),('Virat Kohli',32,'India'),('Kane Williamson',35,'New Zealand'),('MS Dhoni',30,'India'),('Steve Smith',31,'Australia'),('Virat Kohli',32,'India'),('Kane Williamson',35,'New Zealand'),('MS Dhoni',30,'India'),('Steve Smith',31,'Australia'),('Virat Kohli',32,'India');
/*!40000 ALTER TABLE `cricketer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player`
--

DROP TABLE IF EXISTS `player`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `player` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `age` int(11) NOT NULL,
  `bidding_price` double NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sold` bit(1) NOT NULL,
  `team_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKdvd6ljes11r44igawmpm1mc5s` (`team_id`),
  CONSTRAINT `FKdvd6ljes11r44igawmpm1mc5s` FOREIGN KEY (`team_id`) REFERENCES `team` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player`
--

LOCK TABLES `player` WRITE;
/*!40000 ALTER TABLE `player` DISABLE KEYS */;
INSERT INTO `player` VALUES (4,24,15000,'Seniorteam','Viratdemo@gmail.com','Demo','',4),(5,24,15000,'Seniorteam','Viratdemo@gmail.com','Demo','\0',NULL),(6,24,15000,'Seniorteam','Viratdemo@gmail.com','Demo','\0',NULL),(7,24,15000,'Seniorteam','Viratdemo@gmail.com','Demo','\0',NULL),(8,2000,10000,'Senior Team',NULL,'Player 1','',8),(9,24,2000,'Junior Team',NULL,'Player2','',9),(10,24,15000,'Seniorteam','Viratdemo@gmail.com','Demo','\0',NULL),(11,24,15000,'Seniorteam','Viratdemo@gmail.com','Demo','\0',NULL),(12,24,15000,'Seniorteam','Viratdemo@gmail.com','Demo','\0',NULL),(13,24,15000,'Seniorteam','Viratdemo@gmail.com','Demo','\0',NULL),(14,24,15000,'Seniorteam','Viratdemo@gmail.com','Demo','\0',NULL);
/*!40000 ALTER TABLE `player` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team`
--

DROP TABLE IF EXISTS `team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `maximum_budget` double NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team`
--

LOCK TABLES `team` WRITE;
/*!40000 ALTER TABLE `team` DISABLE KEYS */;
INSERT INTO `team` VALUES (4,15000,'Demo'),(5,15000,'Demo'),(6,15000,'Demo'),(7,15000,'Demo'),(8,100000,'Player A'),(9,100000,'Team A'),(10,15000,'Demo'),(11,15000,'Demo'),(12,15000,'Demo'),(13,15000,'Demo'),(14,15000,'Demo');
/*!40000 ALTER TABLE `team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teams` (
  `name` varchar(45) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams`
--

LOCK TABLES `teams` WRITE;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
INSERT INTO `teams` VALUES ('Senior Team','India'),('Junior Team','Australia'),('Senior Team','New Zealand'),('Senior Team','India'),('Junior Team','Australia'),('Senior Team','New Zealand'),('Senior Team','India'),('Junior Team','Australia'),('Senior Team','New Zealand'),('Senior Team','India'),('Junior Team','Australia'),('Senior Team','New Zealand'),('Senior Team','India'),('Junior Team','Australia'),('Senior Team','New Zealand'),('Senior Team','India'),('Junior Team','Australia'),('Senior Team','New Zealand'),('Senior Team','India'),('Junior Team','Australia'),('Senior Team','New Zealand'),('Senior Team','India'),('Junior Team','Australia'),('Senior Team','New Zealand'),('Senior Team','India'),('Junior Team','Australia'),('Senior Team','New Zealand'),('Senior Team','India'),('Junior Team','Australia'),('Senior Team','New Zealand'),('Senior Team','India'),('Junior Team','Australia'),('Senior Team','New Zealand'),('Senior Team','India'),('Junior Team','Australia'),('Senior Team','New Zealand'),('Senior Team','India'),('Junior Team','Australia'),('Senior Team','New Zealand'),('Senior Team','India'),('Junior Team','Australia'),('Senior Team','New Zealand');
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'$2a$10$NRaGjMbbksXZrfqzzvUzte9eVww7MeaR6L1AOipdWOK2mJTy.oBDm','ADMIN','admin'),(2,'$2a$10$Ut8bGacxq0Tt8amn12zZHOUM4Um6zrARsE8lgB73PqIIsdMS2t8WC','ADMIN','admin'),(3,'$2a$10$vdkVioYdZ6F8dQ6lvk6EiOrQ1w1umBu20x3SoGPV3a271eRQcUnma','ADMIN','admin'),(4,'$2a$10$c4onFI.At9FqkAL1L.msx.FVYcLa1gYFWumqpQoI86vF7qtztbhO.','ADMIN','admin'),(5,'$2a$10$90ip0IZl/Qe5sZVQ65Q4Oumh1DuxCKTZuTZQ4Zwx2/ut7e9zOQyfy','ORGANIZER','Demo1'),(6,'$2a$10$6FCYwzEVmqr2I70E/kXIXuXCCPqqrlOUHpuQV02mWYkrTkTRiDZO2','ADMIN','admin'),(7,'$2a$10$L5z2lUbKdyBErTXDDdvKc.nnHHcW8k4cPelfytWBRHytgsbVgszJS','ADMIN','admin'),(8,'$2a$10$3l4OX5bMVGkmHqcd35AqBuBuhxcNKkXe4pjd4Mehp5bSt.2kPz6im','ADMIN','admin'),(9,'$2a$10$rFxKV0imN2QDeP/TwCP36eBI5KWvPCTyErokD1Uo4UIMV28lN3gqC','ADMIN','admin'),(10,'$2a$10$nq1vQq.TR6826p5beWpxau9rb2NwAamVFuEEjZ9N.flO4NoqtjSHy','ADMIN','admin'),(11,'$2a$10$.yW8JbMmX.5jVBfUq.6NDedBaw8aixmrevVw/GTlDK/RqRWpF3RF.','ADMIN','admin'),(12,'$2a$10$T1mPO4chIASaQwp.DzVlqemaNTRCLh5g8yqwgAqLHg3a6DVWBCgW2','ADMIN','admin'),(13,'$2a$10$1VFdHr2fnsFjTWH1oXQx7ujb4Ci9WJGpdc5AHNZIoQ6zD/FRur5/.','ADMIN','admin'),(14,'$2a$10$ImacOGxv/8ZaS/2LLzb15OQURoeRsC/yS.ma5eF6L4Y7ZpgXLRrbC','ADMIN','admin'),(15,'$2a$10$ArfO6i.abq8.s9eHJKRooOgOX0SqzBMgxoukY09L5hyW7EHrlHWxa','ADMIN','admin');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-22  7:21:33
