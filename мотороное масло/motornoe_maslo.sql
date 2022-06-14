-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: motornoe_maslo
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clients` (
  `Client_ID` int NOT NULL AUTO_INCREMENT,
  `ФИО` varchar(100) DEFAULT NULL,
  `Дата_рождения` date DEFAULT NULL,
  `Телефон` varchar(20) DEFAULT NULL,
  `Электронная_почта` varchar(90) DEFAULT NULL,
  `Пол` varchar(1) DEFAULT NULL,
  `Дата_регистрации` date DEFAULT NULL,
  `Фотография_клиента` varchar(150) DEFAULT NULL,
  `Тег` int DEFAULT NULL,
  PRIMARY KEY (`Client_ID`),
  KEY `Gender_FK_idx` (`Пол`),
  KEY `Teg_FK_idx` (`Тег`),
  CONSTRAINT `Gender_FK` FOREIGN KEY (`Пол`) REFERENCES `gender` (`Пол`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Teg_FK` FOREIGN KEY (`Тег`) REFERENCES `teg` (`Teg_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'sfsdf','2012-01-20','23253fggd','gdgdg','Ж','2012-01-20','dgfdg',1);
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gender`
--

DROP TABLE IF EXISTS `gender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gender` (
  `Пол` varchar(1) NOT NULL,
  PRIMARY KEY (`Пол`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gender`
--

LOCK TABLES `gender` WRITE;
/*!40000 ALTER TABLE `gender` DISABLE KEYS */;
INSERT INTO `gender` VALUES ('Ж'),('М');
/*!40000 ALTER TABLE `gender` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manufacturer_a_import`
--

DROP TABLE IF EXISTS `manufacturer_a_import`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manufacturer_a_import` (
  `id` int NOT NULL AUTO_INCREMENT,
  `﻿Название производителя` text,
  `Дата начала работ` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manufacturer_a_import`
--

LOCK TABLES `manufacturer_a_import` WRITE;
/*!40000 ALTER TABLE `manufacturer_a_import` DISABLE KEYS */;
INSERT INTO `manufacturer_a_import` VALUES (77,'Profix','2017-10-02 00:00:00'),(78,'Pierburg','2017-01-10 00:00:00'),(79,'Honda','2016-06-12 00:00:00'),(80,'Benson','2015-04-09 00:00:00'),(81,'Mazda','2018-01-23 00:00:00'),(82,'Zekkert','2018-03-08 00:00:00'),(83,'Ferodo','2015-08-11 00:00:00'),(84,'Lemforder','2016-11-15 00:00:00'),(85,'Toyota','2016-06-03 00:00:00'),(86,'Automega','2016-07-01 00:00:00'),(87,'Magneti Marelli','2017-05-27 00:00:00'),(88,'Nissan','2015-01-21 00:00:00'),(89,'Airline','2016-03-26 00:00:00'),(90,'BILSTEIN','2018-03-06 00:00:00'),(91,'Petro-Canada','2017-03-22 00:00:00'),(92,'Bendix','2015-04-25 00:00:00'),(93,'Mercedes','2016-03-16 00:00:00'),(94,'Mitsubishi','2017-04-23 00:00:00'),(95,'Motul','2018-01-07 00:00:00'),(96,'Shell','2016-11-14 00:00:00'),(97,'Liqui Moly','2015-03-24 00:00:00'),(98,'Mando','2015-03-24 00:00:00'),(99,'LUK','2015-12-02 00:00:00'),(100,'76','2017-02-03 00:00:00'),(101,'Kayaba','2016-02-08 00:00:00'),(102,'Total','2015-03-05 00:00:00'),(103,'ASHIKA','2018-06-13 00:00:00'),(104,'VAG','2018-05-16 00:00:00'),(105,'King Bearings','2016-09-12 00:00:00'),(106,'Castrol','2015-04-16 00:00:00'),(107,'Hyundai/Kia','2016-01-07 00:00:00'),(108,'Opel','2015-03-04 00:00:00'),(109,'Idemitsu','2018-01-21 00:00:00'),(110,'Stels','2017-05-16 00:00:00'),(111,'BOGE','2016-01-18 00:00:00'),(112,'Glaser','2015-12-29 00:00:00'),(113,'Goodyear','2015-12-05 00:00:00'),(114,'Suzuki','2017-05-18 00:00:00'),(115,'ZIMMERMANN','2017-12-14 00:00:00'),(116,'Mobil','2016-10-24 00:00:00'),(117,'OPTIMAL','2016-08-19 00:00:00'),(118,'ZIC','2015-02-07 00:00:00'),(119,'Ford','2016-10-12 00:00:00'),(120,'General Motors','2016-10-05 00:00:00'),(121,'KASHIYAMA','2015-10-16 00:00:00'),(122,'ALСA','2016-10-01 00:00:00'),(123,'Airtex','2015-10-21 00:00:00'),(124,'Elf','2016-10-16 00:00:00'),(125,'BOSCH','2017-06-21 00:00:00'),(126,'Lukoil','2017-12-19 00:00:00');
/*!40000 ALTER TABLE `manufacturer_a_import` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_a_import`
--

DROP TABLE IF EXISTS `product_a_import`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_a_import` (
  `id` int NOT NULL AUTO_INCREMENT,
  `﻿Наименование_товара` text,
  ` Главное_изображение` text,
  ` Производитель` text,
  `Активен?` text,
  `Цена` decimal(10,2) DEFAULT NULL,
  `Описание` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_a_import`
--

LOCK TABLES `product_a_import` WRITE;
/*!40000 ALTER TABLE `product_a_import` DISABLE KEYS */;
INSERT INTO `product_a_import` VALUES (1,'Моторное масло Motor Oil KE900-90042-R','Товары автосервиса\\8FE07916.jpg',' Nissan',' да',2060.00,NULL),(2,'Моторное масло Helix Ultra 550046361','Товары автосервиса\\F310E078.jpg',' Shell',' да',2120.00,NULL),(3,'Моторное масло Super 3000 X1 152566','Товары автосервиса\\6CA0BE73.jpg',' Mobil',' нет',1820.00,NULL),(4,'Моторное масло Turbo SYN Gasoline 05100-00441','Товары автосервиса\\2B009062.jpg',' Hyundai/Kia',' да',1870.00,NULL),(5,'Моторное масло Dexos 2 95599405','Товары автосервиса\\AD00B713.jpg',' General Motors',' да',1410.00,NULL),(6,'Моторное масло Molygen New Generation 9054','Товары автосервиса\\0DF0A8A4.jpg',' Liqui Moly',' да',2670.00,NULL),(7,'Моторное масло Top Tec 4600 8033','Товары автосервиса\\B790A6AA.jpg',' Liqui Moly',' нет',2580.00,NULL),(8,'Моторное масло ENGINE OIL 08880-80375-GO','Товары автосервиса\\CC40C869.jpg',' Toyota',' нет',2710.00,NULL),(9,'Моторное масло Mobil 1 ESP 154285','Товары автосервиса\\F490E078.jpg',' Mobil',' да',2890.00,NULL),(10,'Моторное масло Dexos 2 93165557','Товары автосервиса\\45908C52.jpg',' General Motors',' да',1500.00,NULL),(11,'Моторное масло Super 3000 X1 Diesel 152572','Товары автосервиса\\B0A0C186.jpg',' Mobil',' да',1870.00,NULL),(12,'Моторное масло ENGINE OIL MZ 320754','Товары автосервиса\\3B70C57C.jpg',' Mitsubishi',' да',2140.00,NULL),(13,'Моторное масло Genesis Armortech 3148675','Товары автосервиса\\C9C0F036.jpg',' Lukoil',' нет',1660.00,NULL),(14,'Моторное масло Optimal Synth 3926','Товары автосервиса\\EFC05011.jpg',' Liqui Moly',' да',1880.00,NULL),(15,'Моторное масло Optimal Synth 2293','Товары автосервиса\\C310B9F3.jpg',' Liqui Moly',' да',2520.00,NULL),(16,'Моторное масло Evolution 900 SXR 194878','Товары автосервиса\\E320BB7C.jpg',' Elf',' да',2010.00,NULL),(17,'Моторное масло Special C G 055 167 M4','Товары автосервиса\\6730A31C.jpg',' VAG',' да',4720.00,NULL),(18,'Моторное масло Longlife III G 052 195 M2','Товары автосервиса\\E5507A37.jpg',' VAG',' да',1910.00,NULL),(19,'Моторное масло Special Tec LL 8055','Товары автосервиса\\B590AA7B.jpg',' Liqui Moly',' нет',2420.00,NULL),(20,'Моторное масло Dexos 2 19 42 002','Товары автосервиса\\23F0848B.jpg',' Opel',' да',1300.00,NULL),(21,'Моторное масло Gasoline Fully- Synthetic 30021326-746','Товары автосервиса\\27B0C883.jpg',' Idemitsu',' да',1650.00,NULL),(22,'Моторное масло Formula F 15595E','Товары автосервиса\\5250C855.jpg',' Ford',' нет',1750.00,NULL),(23,'Моторное масло Zepro Euro Spec SN/CF 1849-004','Товары автосервиса\\90D0B807.jpg',' Idemitsu',' да',2400.00,NULL),(24,'Моторное масло SN 08880-10705','Товары автосервиса\\43909176.jpg',' Toyota',' да',2200.00,NULL),(25,'Моторное масло Motor Oil KE900-90042','Товары автосервиса\\90505D31.jpg',' Nissan',' да',2020.00,NULL),(26,'Моторное масло Evolution 900 SXR 194839','Товары автосервиса\\F8E0B138.jpg',' Elf',' нет',2340.00,NULL),(27,'Моторное масло SN/GF-5 SN5W30C','Товары автосервиса\\5A30A7EE.jpg',' Profix',' да',1550.00,NULL),(28,'Моторное масло Evolution 900 SXR 194877','Товары автосервиса\\E3A0B18A.jpg',' Elf',' да',2470.00,NULL),(29,'Трос буксировочный 12 тонн 54384','Товары автосервиса\\9750DA76.jpg',' Stels',' да',410.00,NULL),(30,'Моторное масло Molygen New Generation 9042','Товары автосервиса\\0D60A8A4.jpg',' Liqui Moly',' да',2510.00,NULL),(31,'Моторное масло QUARTZ INEO ECS 166252','Товары автосервиса\\D0D08F32.jpg',' Total',' да',1600.00,NULL),(32,'Моторное масло Motor Oil KE900-90032-R','Товары автосервиса\\54B0795D.jpg',' Nissan',' да',1450.00,NULL),(33,'Моторное масло Original oil Ultra 8300-77-992','Товары автосервиса\\EF80D790.jpg',' Mazda',' нет',2770.00,NULL),(34,'Моторное масло Longlife III G 052 195 M4','Товары автосервиса\\D9605006.jpg',' VAG',' да',4100.00,NULL),(35,'Моторное масло 8100 X-CESS 102870','Товары автосервиса\\E9308929.jpg',' Motul',' да',3190.00,NULL),(36,'Моторное масло Magnatec A5 15583D','Товары автосервиса\\9380C1E7.jpg',' Castrol',' да',2220.00,NULL),(37,'Щетка для снега со съемным скребком GY000202','Товары автосервиса\\3760D73F.jpg',' Goodyear',' да',350.00,NULL),(38,'Моторное масло Magnatec A3/B4 156E9E','Товары автосервиса\\92C0C1E7.jpg',' Castrol',' да',2130.00,NULL),(39,'Моторное масло Dexos 2 19 42 000','Товары автосервиса\\2390848B.jpg',' Opel',' да',1410.00,NULL),(40,'Моторное масло QUARTZ 9000 FUTURE NFC 171839','Товары автосервиса\\D2508F32.jpg',' Total',' да',1560.00,NULL),(41,'Моторное масло Premium DPF Diesel 05200-00120','Товары автосервиса\\2D709062.jpg',' Hyundai/Kia',' да',1460.00,NULL),(42,'Моторное масло Special G G 052 502 M2','Товары автосервиса\\E0D0E079.jpg',' VAG',' да',1820.00,NULL),(43,'Моторное масло Ecstar F9000 99M00-22R02-004','Товары автосервиса\\21B0E533.jpg',' Suzuki',' да',2330.00,NULL),(44,'Моторное масло Genesis Armortech 1539424','Товары автосервиса\\B0F0CB59.jpg',' Lukoil',' да',1710.00,NULL),(45,'Моторное масло Helix Ultra 550046387','Товары автосервиса\\F2B0E078.jpg',' Shell',' нет',2160.00,NULL),(46,'Моторное масло Super 3000 X1 152567','Товары автосервиса\\F200BC2F.jpg',' Mobil',' да',1550.00,NULL),(47,'Моторное масло ENGINE OIL MZ 320753','Товары автосервиса\\5BB0C351.jpg',' Mitsubishi',' нет',1590.00,NULL),(48,'Моторное масло Mobil 1 ESP Formula 152621','Товары автосервиса\\DC70BEC3.jpg',' Mobil',' нет',2920.00,NULL),(49,'Моторное масло Genuine A000989790211BIFR','Товары автосервиса\\2E30E06C.jpg',' Mercedes',' нет',1530.00,NULL),(50,'Моторное масло ULTRA 152624','Товары автосервиса\\BA30C186.jpg',' Mobil',' да',1940.00,NULL),(51,'Моторное масло Super 3000 X1 Formula FE 152564','Товары автосервиса\\59B0BE73.jpg',' Mobil',' да',1890.00,NULL),(52,'Моторное масло Zepro Euro Spec SN/CF 1849-001','Товары автосервиса\\90A0B807.jpg',' Idemitsu',' да',1730.00,NULL),(53,'Моторное масло Helix Ultra 550046367','Товары автосервиса\\F2E0E078.jpg',' Shell',' нет',1650.00,NULL),(54,'Моторное масло QUARTZ 9000 FUTURE NFC 183199','Товары автосервиса\\6CE0A012.jpg',' Total',' да',2040.00,NULL),(55,'Моторное масло Dexos 2 93165554','Товары автосервиса\\45008C52.jpg',' General Motors',' да',1380.00,NULL),(56,'Моторное масло Formula F Fuel Economy HC 155D4B','Товары автосервиса\\39A0C188.jpg',' Ford',' да',1450.00,NULL),(57,'Моторное масло 76 08880-803ENGINE OIL-GO','Товары автосервиса\\0070C563.jpg',' Toyota',' да',1630.00,NULL),(58,'Моторное масло QUARTZ 9000 FUTURE NFC 183450','Товары автосервиса\\FA90B138.jpg',' Total',' да',1660.00,NULL),(59,'Моторное масло Top Tec 4100 7501','Товары автосервиса\\022096CB.jpg',' Liqui Moly',' да',2580.00,NULL),(60,'Моторное масло Mobil 1 ESP 154279','Товары автосервиса\\F460E078.jpg',' Mobil',' да',1860.00,NULL),(61,'Моторное масло Super 3000 X1 152061','Товары автосервиса\\40409946.jpg',' Mobil',' да',2010.00,NULL),(62,'Моторное масло Super Extra Gasoline 05100-00410','Товары автосервиса\\2A109062.jpg',' Hyundai/Kia',' да',1230.00,NULL),(63,'Моторное масло Dexos 2 93165556','Товары автосервиса\\43E08C52.jpg',' General Motors',' да',1340.00,NULL),(64,'Моторное масло Leichtlauf Special AA 7516','Товары автосервиса\\47E07CB5.jpg',' Liqui Moly',' да',2360.00,NULL),(65,'Моторное масло Helix HX8 A5/B5 550046777','Товары автосервиса\\F160E078.jpg',' Shell',' да',1530.00,NULL),(66,'Моторное масло Fuel Economy 08880-80845','Товары автосервиса\\23106A35.jpg',' Toyota',' да',2560.00,NULL),(67,'Моторное масло 76 Top Tec 420061','Товары автосервиса\\03D096CB.jpg',' Liqui Moly',' да',3440.00,NULL),(68,'Моторное масло X9 162613','Товары автосервиса\\30E0C751.jpg',' ZIC',' да',1530.00,NULL),(69,'Моторное масло EDGE Professional LL III Titanium FST 157AD6','Товары автосервиса\\96E0C1E7.jpg',' Castrol',' да',1760.00,NULL),(70,'Моторное масло Magnatec A3/B4 156E9D','Товары автосервиса\\9290C1E7.jpg',' Castrol',' да',1610.00,NULL),(71,'Моторное масло Genuine A000989790213BIFR','Товары автосервиса\\2E60E06C.jpg',' Mercedes',' да',2390.00,NULL),(72,'Моторное масло Supreme Synthetic MOSYN53C16','Товары автосервиса\\69C0CD62.jpg',' Petro-Canada',' да',1910.00,NULL),(73,'Моторное масло Helix Ultra Pro AM-L 550046353','Товары автосервиса\\3DF0E4BC.jpg',' Shell',' да',2110.00,NULL),(74,'Моторное масло QUARTZ INEO ECS 151510','Товары автосервиса\\8F609ED7.jpg',' Total',' да',1920.00,NULL),(75,'Моторное масло Original oil Ultra 0530-05-TFE','Товары автосервиса\\85C04040.jpg',' Mazda',' да',2930.00,NULL),(76,'Моторное масло QUARTZ 9000 ENERGY HKS 175393','Товары автосервиса\\6DD0A012.jpg',' Total',' да',2830.00,NULL),(77,'Моторное масло Ultra LEO-SN 08217-99974','Товары автосервиса\\97809225.jpg',' Honda',' да',2980.00,NULL),(78,'Моторное масло Special G G 052 502 M4','Товары автосервиса\\E0A0E079.jpg',' VAG',' да',3090.00,NULL),(79,'Моторное масло Люкс 207465','Товары автосервиса\\8E20A863.jpg',' Lukoil',' да',1090.00,NULL),(80,'Жилет светоотражающий взрослый ARW-AV-02','Товары автосервиса\\D4D0CE67.jpg',' Airline',' да',150.00,NULL),(81,'Моторное масло Premium LF Gasoline 05100-00451','Товары автосервиса\\2B609062.jpg',' Hyundai/Kia',' да',1620.00,NULL),(82,'Моторное масло Evolution 900 SXR 10160501','Товары автосервиса\\BD80E8D5.jpg',' Elf',' да',1750.00,NULL),(83,'Моторное масло Zepro Touring 1845-004','Товары автосервиса\\5180B90E.jpg',' Idemitsu',' да',2380.00,NULL),(84,'Моторное масло 76 A000989PKW Motorenol0213BLER','Товары автосервиса\\2E00E06C.jpg',' Mercedes',' да',2510.00,NULL),(85,'Моторное масло QUARTZ 9000 ENERGY HKS 175392','Товары автосервиса\\6DA0A012.jpg',' Total',' нет',1530.00,NULL),(86,'Моторное масло Formula F 155D3A','Товары автосервиса\\39D0C188.jpg',' Ford',' да',1830.00,NULL),(87,'Моторное масло Mobil 1 FS 153692','Товары автосервиса\\6080DCD5.jpg',' Mobil',' да',3020.00,NULL),(88,'Моторное масло Zepro Eco Medalist 3583-004','Товары автосервиса\\3DA0B713.jpg',' Idemitsu',' да',2520.00,NULL),(89,'Моторное масло SN 08880-10706','Товары автосервиса\\43C09176.jpg',' Toyota',' да',1640.00,NULL),(90,'Моторное масло Dexos 2 19 42 003','Товары автосервиса\\8430842A.jpg',' Opel',' да',1490.00,NULL),(91,'Моторное масло ENGINE OIL 08880-80365-GO','Товары автосервиса\\CC10C869.jpg',' Toyota',' да',3580.00,NULL),(92,'Моторное масло EDGE LL Titanium FST 15669A','Товары автосервиса\\8BC0C1A9.jpg',' Castrol',' да',3000.00,NULL),(93,'Моторное масло QUARTZ 9000 148597','Товары автосервиса\\8F909ED7.jpg',' Total',' нет',1700.00,NULL),(94,'Моторное масло ENGINE OIL MZ 320756','Товары автосервиса\\5BE0C351.jpg',' Mitsubishi',' нет',1600.00,NULL),(95,'Кредитница, Кожа B6 6 95 1349','Товары автосервиса\\63C09E91.jpg',' Mercedes',' да',6770.00,NULL),(96,'Моторное масло Zepro Touring 1845-001','Товары автосервиса\\7B70B9C6.jpg',' Idemitsu',' да',1720.00,NULL),(97,'Моторное масло ENGINE OIL MZ 320757','Товары автосервиса\\0D30C4EE.jpg',' Mitsubishi',' да',2210.00,NULL),(98,'Моторное масло Zepro Eco Medalist 3583-001','Товары автосервиса\\6800BB8A.jpg',' Idemitsu',' да',1770.00,NULL),(99,'Моторное масло Premium DPF Diesel 05200-00620','Товары автосервиса\\9B3075EB.jpg',' Hyundai/Kia',' да',2470.00,NULL),(100,'Моторное масло QUARTZ 9000 FUTURE NFC 10230501','Товары автосервиса\\3970E753.jpg',' Total',' нет',1650.00,NULL);
/*!40000 ALTER TABLE `product_a_import` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productsale_a_import`
--

DROP TABLE IF EXISTS `productsale_a_import`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productsale_a_import` (
  `id` int NOT NULL AUTO_INCREMENT,
  `﻿Товар` text,
  `Количество` int DEFAULT NULL,
  `Дата и время продажи` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productsale_a_import`
--

LOCK TABLES `productsale_a_import` WRITE;
/*!40000 ALTER TABLE `productsale_a_import` DISABLE KEYS */;
INSERT INTO `productsale_a_import` VALUES (1,'Моторное масло Mobil 1 ESP 154285',2,'2019-02-22 15:30:53'),(2,'Моторное масло ENGINE OIL MZ 320756',3,'2019-11-20 17:05:24'),(3,'Моторное масло QUARTZ 9000 FUTURE NFC 171839',1,'2019-10-05 17:25:12'),(4,'Моторное масло EDGE LL Titanium FST 15669A',2,'2019-10-06 15:45:52'),(5,'Моторное масло Top Tec 4600 8033',1,'2019-02-11 18:18:45'),(6,'Моторное масло ENGINE OIL 08880-80375-GO',2,'2019-11-03 19:48:14'),(7,'Жилет светоотражающий взрослый ARW-AV-02',3,'2019-08-25 09:14:40'),(8,'Моторное масло Super 3000 X1 152567',2,'2019-04-08 19:12:39'),(9,'Моторное масло Motor Oil KE900-90032-R',3,'2019-10-07 18:30:53'),(10,'Моторное масло Premium LF Gasoline 05100-00451',2,'2019-12-30 13:56:10'),(11,'Моторное масло ENGINE OIL MZ 320757',2,'2019-07-23 13:22:18'),(12,'Моторное масло Dexos 2 93165556',1,'2019-05-08 16:32:17'),(13,'Моторное масло Evolution 900 SXR 194877',1,'2019-02-25 18:40:43'),(14,'Моторное масло Magnatec A3/B4 156E9D',3,'2019-11-16 16:36:00'),(15,'Моторное масло Genesis Armortech 3148675',3,'2019-01-05 14:29:56'),(16,'Моторное масло ENGINE OIL MZ 320754',3,'2019-01-03 14:05:29'),(17,'Моторное масло Premium DPF Diesel 05200-00120',3,'2019-11-22 08:16:05'),(18,'Моторное масло Dexos 2 93165554',2,'2019-12-18 15:30:51'),(19,'Моторное масло Formula F Fuel Economy HC 155D4B',2,'2019-02-11 13:31:04'),(20,'Моторное масло Evolution 900 SXR 10160501',3,'2019-11-09 14:29:57'),(21,'Моторное масло Premium DPF Diesel 05200-00620',3,'2019-01-17 09:33:19'),(22,'Моторное масло QUARTZ INEO ECS 151510',3,'2019-07-27 12:18:45'),(23,'Моторное масло Helix Ultra 550046361',1,'2019-05-02 14:04:39'),(24,'Моторное масло Magnatec A5 15583D',3,'2019-03-23 12:33:48'),(25,'Моторное масло Zepro Eco Medalist 3583-001',2,'2019-08-31 10:27:10'),(26,'Моторное масло QUARTZ 9000 FUTURE NFC 183199',3,'2019-04-02 15:49:55'),(27,'Моторное масло SN 08880-10706',2,'2019-02-14 16:30:00'),(28,'Моторное масло Super 3000 X1 152566',3,'2019-06-30 15:04:55'),(29,'Моторное масло QUARTZ 9000 FUTURE NFC 183450',1,'2019-01-15 10:32:43'),(30,'Моторное масло Zepro Euro Spec SN/CF 1849-004',3,'2019-12-25 09:20:39'),(31,'Моторное масло Special G G 052 502 M2',2,'2019-04-24 17:19:15'),(32,'Моторное масло SN 08880-10706',1,'2019-05-11 16:15:00'),(33,'Моторное масло Evolution 900 SXR 194878',2,'2019-01-21 13:44:02'),(34,'Моторное масло Premium DPF Diesel 05200-00620',2,'2019-08-22 09:42:19'),(35,'Моторное масло Dexos 2 19 42 003',1,'2019-11-10 17:27:19'),(36,'Моторное масло 76 Top Tec 420061',3,'2019-01-20 17:36:33'),(37,'Моторное масло Special Tec LL 8055',2,'2019-08-06 10:47:18'),(38,'Моторное масло 76 A000989PKW Motorenol0213BLER',2,'2019-09-25 09:23:18'),(39,'Моторное масло Formula F Fuel Economy HC 155D4B',3,'2019-01-13 15:27:07'),(40,'Моторное масло QUARTZ INEO ECS 151510',1,'2019-11-21 15:51:29'),(41,'Моторное масло Helix Ultra 550046367',1,'2019-03-02 09:33:38'),(42,'Моторное масло Dexos 2 19 42 000',1,'2019-02-16 08:02:50'),(43,'Моторное масло Evolution 900 SXR 194878',2,'2019-07-22 17:12:57'),(44,'Моторное масло Genuine A000989790211BIFR',2,'2019-12-26 19:19:02'),(45,'Трос буксировочный 12 тонн 54384',3,'2019-07-18 08:43:03'),(46,'Моторное масло Mobil 1 ESP Formula 152621',2,'2019-06-02 19:06:42'),(47,'Моторное масло ENGINE OIL MZ 320753',3,'2019-07-22 10:28:38'),(48,'Жилет светоотражающий взрослый ARW-AV-02',2,'2019-03-27 19:34:17'),(49,'Моторное масло Genuine A000989790211BIFR',3,'2019-09-01 17:03:46'),(50,'Моторное масло 76 A000989PKW Motorenol0213BLER',2,'2019-02-27 17:52:43'),(51,'Моторное масло Zepro Eco Medalist 3583-004',3,'2019-02-22 15:07:25'),(52,'Трос буксировочный 12 тонн 54384',2,'2019-01-18 14:44:16'),(53,'Моторное масло QUARTZ 9000 148597',3,'2019-03-24 18:10:35'),(54,'Моторное масло Magnatec A5 15583D',2,'2019-10-21 10:29:19'),(55,'Моторное масло X9 162613',3,'2019-06-11 09:34:14'),(56,'Моторное масло Original oil Ultra 8300-77-992',1,'2019-06-08 14:12:26'),(57,'Моторное масло Formula F 155D3A',3,'2019-03-23 09:48:58'),(58,'Трос буксировочный 12 тонн 54384',1,'2019-07-21 08:46:28'),(59,'Моторное масло Evolution 900 SXR 10160501',2,'2019-04-13 12:41:52'),(60,'Моторное масло Люкс 207465',1,'2019-01-24 16:39:39'),(61,'Кредитница, Кожа B6 6 95 1349',3,'2019-02-15 13:41:46'),(62,'Моторное масло Helix Ultra 550046361',2,'2019-07-04 17:30:40'),(63,'Моторное масло Dexos 2 93165557',3,'2019-03-27 18:28:09'),(64,'Моторное масло Optimal Synth 3926',2,'2019-11-14 08:58:07'),(65,'Моторное масло Dexos 2 95599405',2,'2019-06-12 10:24:41'),(66,'Моторное масло Mobil 1 ESP Formula 152621',2,'2019-08-07 18:21:42'),(67,'Моторное масло Longlife III G 052 195 M4',1,'2019-09-26 16:57:40'),(68,'Моторное масло ENGINE OIL MZ 320753',3,'2019-09-04 08:03:50'),(69,'Моторное масло X9 162613',1,'2019-02-19 08:36:15'),(70,'Моторное масло Genuine A000989790213BIFR',1,'2019-05-14 16:03:31'),(71,'Моторное масло ENGINE OIL MZ 320754',1,'2019-07-14 09:32:31'),(72,'Моторное масло Gasoline Fully- Synthetic 30021326-746',1,'2019-01-01 08:47:04'),(73,'Моторное масло QUARTZ 9000 148597',2,'2019-01-08 10:57:01'),(74,'Моторное масло X9 162613',2,'2019-03-07 17:37:12'),(75,'Моторное масло Optimal Synth 3926',2,'2019-05-08 16:55:35'),(76,'Моторное масло Super 3000 X1 Diesel 152572',3,'2019-07-29 09:29:15'),(77,'Моторное масло Zepro Eco Medalist 3583-004',3,'2019-01-17 18:25:51'),(78,'Моторное масло Formula F 15595E',1,'2019-01-02 08:49:59'),(79,'Моторное масло Molygen New Generation 9042',3,'2019-04-27 12:25:55'),(80,'Моторное масло SN/GF-5 SN5W30C',2,'2019-10-11 16:56:48'),(81,'Моторное масло Fuel Economy 08880-80845',3,'2019-11-16 13:32:23'),(82,'Моторное масло Longlife III G 052 195 M2',1,'2019-07-28 10:56:06'),(83,'Моторное масло ENGINE OIL 08880-80365-GO',2,'2019-05-29 13:09:10'),(84,'Моторное масло Fuel Economy 08880-80845',1,'2019-05-23 12:00:25'),(85,'Моторное масло Special Tec LL 8055',3,'2019-12-24 10:08:28'),(86,'Моторное масло Evolution 900 SXR 194878',1,'2019-03-10 08:00:50'),(87,'Моторное масло QUARTZ 9000 ENERGY HKS 175392',3,'2019-08-20 18:45:14'),(88,'Моторное масло Helix Ultra 550046367',1,'2019-03-27 12:05:57'),(89,'Моторное масло Fuel Economy 08880-80845',3,'2019-02-13 13:40:11'),(90,'Моторное масло Top Tec 4600 8033',2,'2019-09-20 08:56:22'),(91,'Моторное масло QUARTZ 9000 FUTURE NFC 183199',1,'2019-10-03 12:31:48'),(92,'Моторное масло Zepro Eco Medalist 3583-001',2,'2019-10-08 12:30:44'),(93,'Моторное масло Longlife III G 052 195 M2',3,'2019-08-19 10:01:32'),(94,'Моторное масло QUARTZ 9000 148597',2,'2019-10-09 18:21:47'),(95,'Моторное масло Optimal Synth 2293',3,'2019-01-09 17:04:05'),(96,'Моторное масло ENGINE OIL MZ 320754',2,'2019-07-26 13:42:01'),(97,'Моторное масло Magnatec A3/B4 156E9E',1,'2019-04-29 18:19:10'),(98,'Моторное масло Longlife III G 052 195 M2',3,'2019-11-22 14:44:14'),(99,'Моторное масло Mobil 1 FS 153692',1,'2019-01-28 08:59:40'),(100,'Моторное масло ENGINE OIL MZ 320757',3,'2019-05-25 12:03:17');
/*!40000 ALTER TABLE `productsale_a_import` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `services` (
  `Наименование` varchar(100) DEFAULT NULL,
  `Подробное_описание` varchar(1000) DEFAULT NULL,
  `Стоимость` decimal(10,2) DEFAULT NULL,
  `Продолжительность` varchar(45) DEFAULT NULL,
  `Фотография` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `Staff_ID` int NOT NULL AUTO_INCREMENT,
  `ФИО` varchar(100) DEFAULT NULL,
  `Серия_паспорта` varchar(4) DEFAULT NULL,
  `Номер_паспорта` varchar(6) DEFAULT NULL,
  `Код_подразделения` varchar(7) DEFAULT NULL,
  `Пол` varchar(1) DEFAULT NULL,
  `Коэффициент_оплаты` decimal(10,2) DEFAULT NULL,
  `Дата_рождения` date DEFAULT NULL,
  `Категория_специалиста` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Staff_ID`),
  KEY `Gender_Fk_idx` (`Пол`),
  KEY `Gender_x_idx` (`Пол`),
  CONSTRAINT `Gender_x` FOREIGN KEY (`Пол`) REFERENCES `gender` (`Пол`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (1,'пв','',NULL,'212-435','ж',NULL,NULL,NULL),(2,NULL,'2',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teg`
--

DROP TABLE IF EXISTS `teg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teg` (
  `Teg_ID` int NOT NULL AUTO_INCREMENT,
  `Teg_Name` varchar(45) NOT NULL,
  `Teg_Color` varchar(45) NOT NULL,
  PRIMARY KEY (`Teg_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teg`
--

LOCK TABLES `teg` WRITE;
/*!40000 ALTER TABLE `teg` DISABLE KEYS */;
INSERT INTO `teg` VALUES (1,'новый','white'),(2,'постоянный','orange'),(3,'старый','blue');
/*!40000 ALTER TABLE `teg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_type`
--

DROP TABLE IF EXISTS `user_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_type` (
  `Type` varchar(20) NOT NULL,
  PRIMARY KEY (`Type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_type`
--

LOCK TABLES `user_type` WRITE;
/*!40000 ALTER TABLE `user_type` DISABLE KEYS */;
INSERT INTO `user_type` VALUES ('Admin'),('Client'),('Staff');
/*!40000 ALTER TABLE `user_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `User_ID` int NOT NULL AUTO_INCREMENT,
  `Login` varchar(45) DEFAULT NULL,
  `Password` varchar(45) DEFAULT NULL,
  `User_type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`User_ID`),
  KEY `xgd_idx` (`User_type`),
  CONSTRAINT `xgd` FOREIGN KEY (`User_type`) REFERENCES `user_type` (`Type`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'1','1','Admin'),(2,'2','2','Staff'),(3,'3','3','Client');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-11  1:02:01
