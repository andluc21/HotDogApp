CREATE DATABASE  IF NOT EXISTS `hotdawg` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `hotdawg`;
-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `CartId` int NOT NULL AUTO_INCREMENT,
  `CartLocation` varchar(45) NOT NULL,
  `CartPhone` varchar(45) NOT NULL,
  `city` varchar(15) DEFAULT NULL,
  `State` varchar(15) DEFAULT NULL,
  `Zip` int DEFAULT NULL,
  PRIMARY KEY (`CartId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (1,'13280 Linden Ave N','2065467865','Seattle','WA',98133),(2,'9600 College Way N','2066867455','Seattle','WA',98133),(3,'5520 108th Ave NE','4259827345','Kirkland','WA',98033),(4,'3000 NE 4th St','2060293485','Renton','WA',98056),(5,'3000 184th St SW','2069234754','Lynnwood','WA',98133);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `CustomerId` int NOT NULL,
  `FirstName` varchar(45) NOT NULL,
  `LastName` varchar(45) NOT NULL,
  `Phone` varchar(45) NOT NULL,
  PRIMARY KEY (`CustomerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Cass','Kemery','807-376-6559'),(2,'Amie','Ivens','713-389-2733'),(3,'Chrissie','Grzegorzewicz','953-723-0882'),(4,'Gretel','Francois','882-151-2335'),(5,'Hugibert','Mills','607-230-1989'),(6,'Armin','Derr','272-165-9615'),(7,'Kris','Pimer','337-205-4699'),(8,'Quinlan','Carruthers','925-603-4647'),(9,'Rheta','Towson','349-445-5585'),(10,'Adelaide','Rimell','526-362-2417'),(11,'Talyah','Rudgerd','515-553-9948'),(12,'Heindrick','Lethardy','686-655-4992'),(13,'Steven','MacPake','488-238-7533'),(14,'Hyman','Eaves','122-706-1022'),(15,'Tamqrah','Glason','693-665-4245'),(16,'Benedicto','Lattin','101-224-7968'),(17,'Thibaud','Kindell','612-304-0556'),(18,'Ivy','McCrackem','626-923-7781'),(19,'Casie','Bergeau','752-876-4921'),(20,'Brittni','Silburn','131-216-8929'),(21,'Humbert','Jewkes','450-481-1445'),(22,'Elyssa','Domek','312-357-7689'),(23,'Cherish','Kolinsky','448-285-3618'),(24,'Rozelle','Gronowe','908-794-1786'),(25,'Donnie','McCrorie','919-175-2265'),(26,'Mignon','Lownie','968-589-0591'),(27,'Laurie','Glanz','463-348-4105'),(28,'Eugenius','Hacard','451-907-0717'),(29,'Harriot','Crosskell','369-795-7663'),(30,'Link','Willans','453-395-3123'),(31,'Larry','Axford','288-802-7691'),(32,'Brooks','Shreeve','942-641-5667'),(33,'Deonne','Lorroway','830-763-1539'),(34,'Thacher','Mellodey','472-220-7870'),(35,'Tye','Parish','392-160-8652'),(36,'Donny','Newell','466-670-6735'),(37,'Cammy','St. Leger','761-752-7100'),(38,'Christel','Burnett','410-269-4451'),(39,'Lillian','Erdis','659-234-4040'),(40,'Lizbeth','Turbat','150-394-0408'),(41,'Germaine','Seedull','811-315-8947'),(42,'Yoko','Juggins','146-598-5483'),(43,'Padraig','Renn','562-296-4766'),(44,'Fax','Hebard','836-585-0237'),(45,'Bram','Paunsford','525-759-7253'),(46,'Eal','Lavers','745-317-9651'),(47,'Nikolai','Cleife','731-700-7969'),(48,'Emmit','McKeever','294-956-6751'),(49,'Anselma','Fever','922-296-1939'),(50,'Lil','Tristram','375-702-4619'),(51,'Sylvia','De la Barre','560-749-7091'),(52,'Maurizio','Thornbarrow','945-471-0653'),(53,'Sylvan','Alexandre','269-611-6712'),(54,'Pennie','Allinson','959-901-3445'),(55,'Edmon','Bezant','928-746-2065'),(56,'Maggi','Satchel','209-655-2666'),(57,'Niki','Gillitt','237-799-7435'),(58,'Coleen','Kinchlea','387-559-9682'),(59,'Charmine','Jarley','662-531-0628'),(60,'Felita','McCard','675-783-3695'),(61,'Berny','Colam','164-883-9240'),(62,'Linette','Agglione','542-243-1965'),(63,'Manya','Dunn','406-220-1880'),(64,'Joya','Narraway','242-763-3735'),(65,'Alie','Craddy','523-104-1471'),(66,'Ronald','Lenard','717-535-6441'),(67,'Chelsie','Dovinson','629-751-1969'),(68,'Skipton','Wealthall','201-153-1242'),(69,'Gertrude','Kahane','296-297-4223'),(70,'Ara','Trenchard','406-491-3094'),(71,'Gasparo','Shopcott','691-330-8755'),(72,'Nelli','Davioud','812-877-6238'),(73,'Nydia','Smallbone','107-975-7932'),(74,'Jeno','Priter','749-111-9950'),(75,'Guthrey','Sinderland','626-221-3205'),(76,'Elias','Knowlton','580-702-4468'),(77,'Jobye','Gillice','199-559-2238'),(78,'Nevin','Adney','943-794-5396'),(79,'Simone','Judge','574-459-9762'),(80,'Ladonna','Jacquot','225-983-8852'),(81,'Brandice','Follet','500-610-9832'),(82,'Trenton','Jozsef','355-628-5518'),(83,'Sofia','Pfeiffer','201-842-0565'),(84,'Wynny','Pirozzi','613-577-8330'),(85,'Mitchel','Bond','237-183-7088'),(86,'Xavier','Izaks','397-574-5884'),(87,'Franky','Newman','243-865-1681'),(88,'Di','Weatherill','942-765-3055'),(89,'Tristan','Gregor','581-640-2794'),(90,'Alastair','Hawthorne','749-370-7690'),(91,'Kellina','Stanmer','278-284-1858'),(92,'Van','Andres','660-998-4080'),(93,'Lanita','Fawloe','243-651-4659'),(94,'Adele','Normanvill','626-486-9624'),(95,'Trixie','Naismith','371-955-7160'),(96,'Meridel','Trowler','558-936-0256'),(97,'Kirsteni','Burnsides','241-892-4168'),(98,'Jarrid','Waszczykowski','863-347-5709'),(99,'Frazer','Tummons','847-953-2979'),(100,'Holt','Farrent','572-376-4335');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `EmployeeId` int NOT NULL,
  `CartId` int NOT NULL,
  `FirstName` varchar(45) DEFAULT NULL,
  `LastName` varchar(45) DEFAULT NULL,
  `Phone` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`EmployeeId`,`CartId`),
  KEY `fk_Employee_Cart1_idx` (`CartId`),
  CONSTRAINT `fk_Employee_Cart1` FOREIGN KEY (`CartId`) REFERENCES `cart` (`CartId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,1,'Eric','Hayes','2067854928'),(2,1,'Daniel','James','4256575687'),(3,2,'Erica','Robert','2067846753'),(4,2,'Bryant','John','4256786425'),(5,3,'Donald','Tevor','2067854928'),(6,3,'Jimmy','Orton','4259862377'),(7,4,'Dennise','Carlos','2067234798'),(8,4,'Mary','Brayn','4256709734'),(9,5,'Thomas','Peter','4250975244'),(10,5,'Nathanel','Jones','2068725344');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu` (
  `MenuId` int NOT NULL,
  `Cart_CartId` int NOT NULL,
  `MealName` varchar(45) NOT NULL,
  `MealPrice` decimal(10,0) NOT NULL,
  `MealIngredients` varchar(45) NOT NULL,
  PRIMARY KEY (`MenuId`),
  KEY `fk_Menu_Cart_idx` (`Cart_CartId`),
  CONSTRAINT `fk_Menu_Cart` FOREIGN KEY (`Cart_CartId`) REFERENCES `cart` (`CartId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,1,'Seattle Dog',4,'Mustard, onions, and chili.'),(2,1,'Chicago Dog',5,'Mustard, diced white onions and sweet relish'),(3,1,'Bob Dog',7,'Onions, chili, and coleslaw.'),(4,1,'Veggie Dog',6,'Served Chicago Style.'),(5,1,'Chicken Dog',6,'Mustard, onions, and chili.'),(6,1,'Polish Sausage',6,'Spicy, but not hot. Served Chicago Style.'),(7,2,'Seattle Dog',4,'Mustard, onions, and chili.'),(8,2,'Chicago Dog',5,'Mustard, diced white onions and sweet relish'),(9,2,'Bob Dog',7,'Onions, chili, and coleslaw.'),(10,2,'Veggie Dog',6,'Served Chicago Style.'),(11,2,'Chicken Dog',6,'Mustard, onions, and chili.'),(12,2,'Polish Sausage',6,'Spicy, but not hot. Served Chicago Style. '),(13,3,'Seattle Dog',4,'Mustard, onions, and chili.'),(14,3,'Chicago Dog',5,'Mustard, diced white onions and sweet relish'),(15,3,'Bob Dog',7,'Onions, chili, and coleslaw.'),(16,3,'Veggie Dog',6,'Served Chicago Style.'),(17,3,'Chicken Dog',6,'Mustard, onions, and chili.'),(18,3,'Polish Sausage',6,'Spicy, but not hot. Served Chicago Style.'),(19,4,'Seattle Dog',4,'Mustard, onions, and chili.'),(20,4,'Chicago Dog',5,'Mustard, diced white onions and sweet relish'),(21,4,'Bob Dog',7,'Onions, chili, and coleslaw.'),(22,4,'Veggie Dog',6,'Served Chicago Style.'),(23,4,'Chicken Dog',6,'Mustard, onions, and chili.'),(24,4,'Polish Sausage',6,'Spicy, but not hot. Served Chicago Style. '),(25,5,'Seattle Dog',4,'Mustard, onions, and chili.'),(26,5,'Chicago Dog',5,'Mustard, diced white onions and sweet relish'),(27,5,'Bob Dog',7,'Onions, chili, and coleslaw.'),(28,5,'Veggie Dog',6,'Served Chicago Style.'),(29,5,'Chicken Dog',6,'Mustard, onions, and chili.'),(30,5,'Polish Sausage',6,'Spicy, but not hot. Served Chicago Style.');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-25 15:31:56
