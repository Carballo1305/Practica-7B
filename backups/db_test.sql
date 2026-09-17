CREATE DATABASE IF NOT EXISTS db_test;
USE db_test;
-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: test_database
-- ------------------------------------------------------
-- Server version	8.0.46

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
-- Table structure for table `tb_logs`
--

DROP TABLE IF EXISTS `tb_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_logs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `table_name` varchar(50) NOT NULL,
  `operation` varchar(20) NOT NULL,
  `db_user` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `operation_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `operation_status` bit(1) DEFAULT b'1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_logs`
--

LOCK TABLES `tb_logs` WRITE;
/*!40000 ALTER TABLE `tb_logs` DISABLE KEYS */;
INSERT INTO `tb_logs` VALUES (1,'tb_users','Create','root@localhost','Usuario creado. ID=2, email=240045@utxicotepec.edu.mx, nick=Aaron Carballo, creation_date=2026-09-10 10:43:30, status=','2026-09-10 10:43:30',_binary ''),(2,'tb_users','Create','root@localhost','Usuario creado. ID=3, email=240597@utxicotepec.edu.mx, nick=Mario Banda, creation_date=2026-09-10 10:44:00, status=','2026-09-10 10:44:00',_binary ''),(3,'tb_users','Create','root@localhost','Usuario creado. ID=4, email=240456@utxicotepec.edu.mx, nick=Alfonso Garcia, creation_date=2026-09-10 10:44:29, status=','2026-09-10 10:44:29',_binary ''),(4,'tb_users','Create','root@localhost','Usuario creado. ID=5, email=240235@utxicotepec.edu.mx, nick=Pablo Epstein, creation_date=2026-09-10 10:44:55, status=','2026-09-10 10:44:55',_binary ''),(5,'tb_users','Create','root@localhost','Usuario creado. ID=6, email=240497@utxicotepec.edu.mx, nick=Harold Ale, creation_date=2026-09-10 10:59:36, status=','2026-09-10 10:59:36',_binary ''),(6,'tb_users','Create','root@localhost','Usuario creado. ID=7, email=240222@utxicotepec.edu.mx, nick=Sofia Lopez, creation_date=2026-09-10 12:48:59, status=','2026-09-10 12:48:59',_binary ''),(7,'tb_users','Create','root@localhost','Usuario creado. ID=8, email=240333@utxicotepec.edu.mx, nick=Luis Martinez, creation_date=2026-09-10 12:48:59, status=','2026-09-10 12:48:59',_binary ''),(8,'tb_users','Create','root@localhost','Usuario creado. ID=9, email=240444@utxicotepec.edu.mx, nick=Ana Hernandez, creation_date=2026-09-10 12:48:59, status=','2026-09-10 12:48:59',_binary ''),(9,'tb_users','Create','root@localhost','Usuario creado. ID=10, email=240555@utxicotepec.edu.mx, nick=Diego Torres, creation_date=2026-09-10 12:48:59, status=','2026-09-10 12:48:59',_binary ''),(10,'tb_users','Create','root@localhost','Usuario creado. ID=11, email=240666@utxicotepec.edu.mx, nick=Maria Flores, creation_date=2026-09-10 12:49:05, status=','2026-09-10 12:49:05',_binary '');
/*!40000 ALTER TABLE `tb_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_users`
--

DROP TABLE IF EXISTS `tb_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_users` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `nick` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creation_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_update` datetime DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `status` bit(1) DEFAULT b'1',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `nick` (`nick`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_users`
--

LOCK TABLES `tb_users` WRITE;
/*!40000 ALTER TABLE `tb_users` DISABLE KEYS */;
INSERT INTO `tb_users` VALUES (2,'240045@utxicotepec.edu.mx','Aaron Carballo','553ddcf89434eb0138b8380be737aa02','2026-09-10 10:43:30',NULL,NULL,_binary ''),(3,'240597@utxicotepec.edu.mx','Mario Banda','de5c450fdb4583e4258efc39e7b2a27c','2026-09-10 10:44:00',NULL,NULL,_binary ''),(4,'240456@utxicotepec.edu.mx','Alfonso Garcia','36176bb07e7c13175e7f297f0aed23f4','2026-09-10 10:44:29',NULL,NULL,_binary ''),(5,'240235@utxicotepec.edu.mx','Pablo Epstein','d7120c8eaebccfff3fb1b01fd6bf43aa','2026-09-10 10:44:55',NULL,NULL,_binary ''),(6,'240497@utxicotepec.edu.mx','Harold Ale','fd5c905bcd8c3348ad1b35d7231ee2b1','2026-09-10 10:59:36',NULL,NULL,_binary ''),(7,'240222@utxicotepec.edu.mx','Sofia Lopez','934b535800b1cba8f96a5d72f72f1611','2026-09-10 12:48:59',NULL,NULL,_binary ''),(8,'240333@utxicotepec.edu.mx','Luis Martinez','2be9bd7a3434f7038ca27d1918de58bd','2026-09-10 12:48:59',NULL,NULL,_binary ''),(9,'240444@utxicotepec.edu.mx','Ana Hernandez','dbc4d84bfcfe2284ba11beffb853a8c4','2026-09-10 12:48:59',NULL,NULL,_binary ''),(10,'240555@utxicotepec.edu.mx','Diego Torres','6074c6aa3488f3c2dddff2a7ca821aab','2026-09-10 12:48:59',NULL,NULL,_binary ''),(11,'240666@utxicotepec.edu.mx','Maria Flores','e9510081ac30ffa83f10b68cde1cac07','2026-09-10 12:49:05',NULL,NULL,_binary '');
/*!40000 ALTER TABLE `tb_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `trg_users_after_insert` AFTER INSERT ON `tb_users` FOR EACH ROW BEGIN
    INSERT INTO tb_logs (
        table_name,
        operation,
        db_user,
        description,
        operation_date,
        operation_status
    )
    VALUES (
        'tb_users',
        'Create',
        USER(),
        CONCAT(
            'Usuario creado. ID=', NEW.ID,
            ', email=', NEW.email,
            ', nick=', NEW.nick,
            ', creation_date=', NEW.creation_date,
            ', status=', NEW.status
        ),
        CURRENT_TIMESTAMP,
        b'1'
    );
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `trg_users_after_update` AFTER UPDATE ON `tb_users` FOR EACH ROW BEGIN
    INSERT INTO tb_logs (
        table_name,
        operation,
        db_user,
        description,
        operation_date,
        operation_status
    )
    VALUES (
        'tb_users',
        'Update',
        USER(),
        CONCAT(
            'Usuario modificado. ID=', NEW.ID,
            ', nuevo_email=', NEW.email,
            ', nuevo_nick=', NEW.nick,
            ', nuevo_status=', NEW.status
        ),
        CURRENT_TIMESTAMP,
        b'1'
    );
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `trg_users_after_delete` AFTER DELETE ON `tb_users` FOR EACH ROW BEGIN
    INSERT INTO tb_logs (
        table_name,
        operation,
        db_user,
        description,
        operation_date,
        operation_status
    )
    VALUES (
        'tb_users',
        'Delete',
        USER(),
        CONCAT(
            'Usuario eliminado. ID=', OLD.ID,
            ', email=', OLD.email,
            ', nick=', OLD.nick
        ),
        CURRENT_TIMESTAMP,
        b'1'
    );
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-09-10 13:14:13
