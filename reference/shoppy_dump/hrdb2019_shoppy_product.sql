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
-- Table structure for table `shoppy_product`
--

DROP TABLE IF EXISTS `shoppy_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shoppy_product` (
  `PID` int NOT NULL AUTO_INCREMENT,
  `PNAME` varchar(50) NOT NULL,
  `PRICE` int DEFAULT NULL,
  `DESCRIPTION` varchar(200) DEFAULT NULL,
  `UPLOAD_FILE` json DEFAULT NULL,
  `SOURCE_FILE` json DEFAULT NULL,
  `PDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`PID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shoppy_product`
--

LOCK TABLES `shoppy_product` WRITE;
/*!40000 ALTER TABLE `shoppy_product` DISABLE KEYS */;
INSERT INTO `shoppy_product` VALUES (3,'코트',1000,'차콜 더블 코트','[\"upload_files\\\\1739169710642-393528773-1.jpg\", \"upload_files\\\\1739169710642-702072515-2.jpg\", \"upload_files\\\\1739169710645-848257787-3.jpg\", \"upload_files\\\\1739169710648-619894499-4.jpg\", \"upload_files\\\\1739169710651-135692047-5.jpg\", \"upload_files\\\\1739169710653-970160755-6.jpg\"]','[\"1.jpg\", \"2.jpg\", \"3.jpg\", \"4.jpg\", \"5.jpg\", \"6.jpg\"]','2025-02-10 15:41:56'),(4,'가디건',2000,'블루, 알파카','[\"upload_files\\\\1739169807261-226078497-1.jpg\", \"upload_files\\\\1739169807261-108939153-2.jpg\", \"upload_files\\\\1739169807264-658708399-3.jpg\", \"upload_files\\\\1739169807266-542493489-4.jpg\", \"upload_files\\\\1739169807268-630977692-5.jpg\", \"upload_files\\\\1739169807270-704336837-6.jpg\"]','[\"1.jpg\", \"2.jpg\", \"3.jpg\", \"4.jpg\", \"5.jpg\", \"6.jpg\"]','2025-02-10 15:43:29'),(5,'데님',500,'아이보리 데님','[\"upload_files\\\\1739169860821-581455410-1.jpg\", \"upload_files\\\\1739169860821-325388128-2.jpg\", \"upload_files\\\\1739169860823-90273001-3.jpg\"]','[\"1.jpg\", \"2.jpg\", \"3.jpg\"]','2025-02-10 15:44:29'),(9,'가디건',3000,'네이비','[\"upload_files\\\\1739171195362-906664141-1.jpg\", \"upload_files\\\\1739171195363-335929504-2.jpg\", \"upload_files\\\\1739171195367-492393704-3.jpg\", \"upload_files\\\\1739171195368-59191006-4.jpg\", \"upload_files\\\\1739171195370-199613960-5.jpg\", \"upload_files\\\\1739171195371-880476339-6.jpg\"]','[\"1.jpg\", \"2.jpg\", \"3.jpg\", \"4.jpg\", \"5.jpg\", \"6.jpg\"]','2025-02-10 16:06:36'),(10,'울 정장 와이드 팬츠',3000,'울, 검정','[\"upload_files\\\\1739171237448-930350809-1.jpg\", \"upload_files\\\\1739171237448-868157007-2.jpg\", \"upload_files\\\\1739171237450-441766769-3.jpg\", \"upload_files\\\\1739171237451-672855021-4.jpg\", \"upload_files\\\\1739171237452-114665955-5.jpg\", \"upload_files\\\\1739171237453-765922959-6.jpg\"]','[\"1.jpg\", \"2.jpg\", \"3.jpg\", \"4.jpg\", \"5.jpg\", \"6.jpg\"]','2025-02-10 16:07:18'),(11,'자켓',4000,'검정색 울 자켓','[\"upload_files\\\\1739171270427-553215662-1.jpg\", \"upload_files\\\\1739171270428-193637189-2.jpg\", \"upload_files\\\\1739171270430-227866235-3.jpg\", \"upload_files\\\\1739171270433-626890620-4.jpg\", \"upload_files\\\\1739171270437-776772066-5.jpg\", \"upload_files\\\\1739171270439-86236649-6.jpg\"]','[\"1.jpg\", \"2.jpg\", \"3.jpg\", \"4.jpg\", \"5.jpg\", \"6.jpg\"]','2025-02-10 16:07:51'),(12,'미니멀 래글런 티셔츠',500,'아이보리, 래글런 ','[\"upload_files\\\\1739171331209-551770373-1.jpg\", \"upload_files\\\\1739171331209-226890877-2.jpg\", \"upload_files\\\\1739171331211-462276668-3.jpg\", \"upload_files\\\\1739171331213-160376119-4.jpg\", \"upload_files\\\\1739171331214-577708578-5.jpg\", \"upload_files\\\\1739171331216-38374865-6.jpg\"]','[\"1.jpg\", \"2.jpg\", \"3.jpg\", \"4.jpg\", \"5.jpg\", \"6.jpg\"]','2025-02-10 16:08:52'),(13,'캐시미어 블레이저 코트_sky',6000,'블레이저, 코트','[\"upload_files\\\\1739171388281-345515103-1.jpg\", \"upload_files\\\\1739171388281-573730679-2.jpg\", \"upload_files\\\\1739171388283-311596098-3.jpg\", \"upload_files\\\\1739171388286-724622058-4.jpg\", \"upload_files\\\\1739171388289-482459492-5.jpg\", \"upload_files\\\\1739171388292-959974196-6.jpg\"]','[\"1.jpg\", \"2.jpg\", \"3.jpg\", \"4.jpg\", \"5.jpg\", \"6.jpg\"]','2025-02-10 16:09:50'),(14,'알파카 스트라이프 니트',700,'알파카, 스트라이프','[\"upload_files\\\\1739171444768-898962546-1.jpg\", \"upload_files\\\\1739171444768-853068684-2.jpg\", \"upload_files\\\\1739171444770-276383219-3.jpg\", \"upload_files\\\\1739171444772-670049335-4.jpg\", \"upload_files\\\\1739171444773-570164500-5.jpg\", \"upload_files\\\\1739171444775-421270409-6.jpg\"]','[\"1.jpg\", \"2.jpg\", \"3.jpg\", \"4.jpg\", \"5.jpg\", \"6.jpg\"]','2025-02-10 16:10:45');
/*!40000 ALTER TABLE `shoppy_product` ENABLE KEYS */;
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
