-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: hrdb2019
-- ------------------------------------------------------
-- Server version	8.4.3

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
-- Table structure for table `shoppy_member`
--

DROP TABLE IF EXISTS `shoppy_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shoppy_member` (
  `ID` varchar(30) NOT NULL,
  `PWD` varchar(50) NOT NULL,
  `NAME` varchar(10) NOT NULL,
  `PHONE` char(13) NOT NULL,
  `EMAILNAME` varchar(20) NOT NULL,
  `EMAILDOMAIN` varchar(20) NOT NULL,
  `ZIPCODE` char(5) DEFAULT NULL,
  `ADDRESS` varchar(80) DEFAULT NULL,
  `MDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shoppy_member`
--

LOCK TABLES `shoppy_member` WRITE;
/*!40000 ALTER TABLE `shoppy_member` DISABLE KEYS */;
INSERT INTO `shoppy_member` VALUES ('test1','1111','테스트1','010-1234-7894','test1','naver.com',NULL,NULL,'2025-02-04 12:13:29'),('test2','2222','테스트2','010-1234-7894','test2','naver.com',NULL,NULL,'2025-02-04 12:34:36'),('test3','2222','테스트2','010-1234-7894','test2','naver.com',NULL,NULL,'2025-02-04 12:39:44'),('test4','4444','테스트4','010-1234-7894','test4','gmail.com',NULL,NULL,'2025-02-04 12:47:39'),('test5','5555','테스트5','010-1234-7894','test5','naver.com',NULL,NULL,'2025-02-04 13:46:53'),('test6','6666','666','010-1234-7894','test','naver.com',NULL,NULL,'2025-02-04 13:51:48');
/*!40000 ALTER TABLE `shoppy_member` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-14 17:54:27
