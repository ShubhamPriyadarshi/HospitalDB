-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: Hospital
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `staging`
--

DROP TABLE IF EXISTS `staging`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staging` (
  `Name` varchar(255) NOT NULL,
  `Cust_I` varchar(18) NOT NULL,
  `Open_Dt` date NOT NULL,
  `Consul_Dt` date DEFAULT NULL,
  `VAC_ID` char(5) DEFAULT NULL,
  `DR_Name` char(255) DEFAULT NULL,
  `State` char(5) DEFAULT NULL,
  `Country` char(5) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `FLAG` char(1) DEFAULT NULL,
  PRIMARY KEY (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staging`
--

LOCK TABLES `staging` WRITE;
/*!40000 ALTER TABLE `staging` DISABLE KEYS */;
INSERT INTO `staging` VALUES ('Alex','123457','2010-10-12','2012-10-13','MVD','Paul','SA','USA','1987-03-06','A'),('Jacob','1256','2010-10-12','2012-10-13','MVD','Paul','VIC','AU','1987-03-06','A'),('John','123458','2010-10-12','2012-10-13','MVD','Paul','TN','IND','1987-03-06','A'),('Mathew','123459','2010-10-12','2012-10-13','MVD','Paul','WAS','PHIL','1987-03-06','A'),('Matt','12345','2010-10-12','2012-10-13','MVD','Paul','BOS','NYC','1987-03-06','A'),('Simon','123451','2010-10-12','2012-10-13','MVD','Paul','SA','USA','1987-03-06','A');
/*!40000 ALTER TABLE `staging` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `table_au`
--

DROP TABLE IF EXISTS `table_au`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `table_au` (
  `Name` varchar(255) NOT NULL,
  `Cust_I` varchar(18) NOT NULL,
  `Open_Dt` date NOT NULL,
  `Consul_Dt` date DEFAULT NULL,
  `VAC_ID` char(5) DEFAULT NULL,
  `DR_NAME` char(255) DEFAULT NULL,
  `State` char(5) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `FLAG` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table_au`
--

LOCK TABLES `table_au` WRITE;
/*!40000 ALTER TABLE `table_au` DISABLE KEYS */;
INSERT INTO `table_au` VALUES ('Jacob','1256','2010-10-12','2012-10-13','MVD','Paul','VIC','1987-03-06','A');
/*!40000 ALTER TABLE `table_au` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `table_ind`
--

DROP TABLE IF EXISTS `table_ind`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `table_ind` (
  `Name` varchar(255) NOT NULL,
  `Cust_I` varchar(18) NOT NULL,
  `Open_Dt` date NOT NULL,
  `Consul_Dt` date DEFAULT NULL,
  `VAC_ID` char(5) DEFAULT NULL,
  `DR_NAME` char(255) DEFAULT NULL,
  `State` char(5) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `FLAG` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table_ind`
--

LOCK TABLES `table_ind` WRITE;
/*!40000 ALTER TABLE `table_ind` DISABLE KEYS */;
INSERT INTO `table_ind` VALUES ('John','123458','2010-10-12','2012-10-13','MVD','Paul','TN','1987-03-06','A');
/*!40000 ALTER TABLE `table_ind` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `table_nyc`
--

DROP TABLE IF EXISTS `table_nyc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `table_nyc` (
  `Name` varchar(255) NOT NULL,
  `Cust_I` varchar(18) NOT NULL,
  `Open_Dt` date NOT NULL,
  `Consul_Dt` date DEFAULT NULL,
  `VAC_ID` char(5) DEFAULT NULL,
  `DR_NAME` char(255) DEFAULT NULL,
  `State` char(5) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `FLAG` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table_nyc`
--

LOCK TABLES `table_nyc` WRITE;
/*!40000 ALTER TABLE `table_nyc` DISABLE KEYS */;
INSERT INTO `table_nyc` VALUES ('Matt','12345','2010-10-12','2012-10-13','MVD','Paul','BOS','1987-03-06','A');
/*!40000 ALTER TABLE `table_nyc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `table_phil`
--

DROP TABLE IF EXISTS `table_phil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `table_phil` (
  `Name` varchar(255) NOT NULL,
  `Cust_I` varchar(18) NOT NULL,
  `Open_Dt` date NOT NULL,
  `Consul_Dt` date DEFAULT NULL,
  `VAC_ID` char(5) DEFAULT NULL,
  `DR_NAME` char(255) DEFAULT NULL,
  `State` char(5) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `FLAG` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table_phil`
--

LOCK TABLES `table_phil` WRITE;
/*!40000 ALTER TABLE `table_phil` DISABLE KEYS */;
INSERT INTO `table_phil` VALUES ('Mathew','123459','2010-10-12','2012-10-13','MVD','Paul','WAS','1987-03-06','A');
/*!40000 ALTER TABLE `table_phil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `table_usa`
--

DROP TABLE IF EXISTS `table_usa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `table_usa` (
  `Name` varchar(255) NOT NULL,
  `Cust_I` varchar(18) NOT NULL,
  `Open_Dt` date NOT NULL,
  `Consul_Dt` date DEFAULT NULL,
  `VAC_ID` char(5) DEFAULT NULL,
  `DR_NAME` char(255) DEFAULT NULL,
  `State` char(5) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `FLAG` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table_usa`
--

LOCK TABLES `table_usa` WRITE;
/*!40000 ALTER TABLE `table_usa` DISABLE KEYS */;
INSERT INTO `table_usa` VALUES ('Alex','123457','2010-10-12','2012-10-13','MVD','Paul','SA','1987-03-06','A'),('Simon','123451','2010-10-12','2012-10-13','MVD','Paul','SA','1987-03-06','A');
/*!40000 ALTER TABLE `table_usa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'Hospital'
--
/*!50003 DROP PROCEDURE IF EXISTS `Create_Country_Tables` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Create_Country_Tables`()
BEGIN
	DROP TEMPORARY TABLE IF EXISTS temp_table;
	CREATE TEMPORARY TABLE temp_table (
		Country char(5)
    );
    
    INSERT temp_table
	SELECT distinct Country FROM staging;
    ALTER TABLE temp_table ADD `idx` INT primary Key NOT NULL AUTO_INCREMENT;
    
    
    SET @v_i = 1;
	SET @v_numrows = (SELECT COUNT(*) FROM temp_table);
	SET @v_indexcount = (SELECT MAX(idx) FROM temp_table);
    
    IF @v_numrows > 0 THEN
    WHILE (@v_i <= @v_indexcount)
    DO
        SET @v_country = (SELECT `Country` FROM temp_table WHERE idx = @v_i);

		
		set @v_drop = CONCAT('DROP TABLE IF EXISTS Table_' , @v_country);
		PREPARE dynamic_statement1  FROM @v_drop;
        EXECUTE dynamic_statement1 ;
        deallocate prepare dynamic_statement1 ;
		
        set @v_sql = CONCAT('create table Table_' , @v_country , ' AS SELECT Name, Cust_I, Open_Dt, Consul_Dt, VAC_ID, DR_NAME,State, DOB, FLAG FROM staging WHERE Country = ''' , @v_country , '''');
		-- set @v_sql = CONCAT('SELECT Name, Cust_I, Open_Dt, Consul_Dt, VAC_ID, DR_NAME,State, DOB, FLAG INTO Table_' , v_Group , ' FROM staging WHERE Country = ''' , v_Group , '''');
		PREPARE dynamic_statement2  FROM @v_sql;
        EXECUTE dynamic_statement2 ;
        deallocate prepare dynamic_statement2;

        -- SQLINES DEMO ***  for next Column_3 group value
        SET @v_i = @v_i + 1;
    END WHILE;
    END IF;
    end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Create_Staging_Table` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Create_Staging_Table`()
BEGIN
	DROP TABLE IF EXISTS staging;
	CREATE TABLE staging
         (Name VARCHAR(255) PRIMARY KEY     NOT NULL,
         Cust_I VARCHAR(18)  NOT NULL,
         Open_Dt DATE                NOT NULL,
         Consul_Dt        DATE,
         VAC_ID         CHAR(5),
         DR_Name        CHAR(255),
         State        CHAR(5),
         Country        CHAR(5),
         DOB        DATE,
         FLAG        CHAR(1));
END ;;
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

-- Dump completed on 2021-10-18 22:53:12
