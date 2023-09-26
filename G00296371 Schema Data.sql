-- MySQL dump 10.13  Distrib 8.0.30, for macos12 (x86_64)
--
-- Host: localhost    Database: ddd_project_vet
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Dumping data for table `addresses`
--

LOCK TABLES `addresses` WRITE;
/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;
INSERT INTO `addresses` VALUES (1,'Joe','O\'Donnell','Main Street',NULL,'Galway','Galway','Ireland','H91 ABCD'),(2,'Rosin','Hegarty','High Street','House 2','Galway','Galway','Ireland','H91 DCBA'),(3,'Paul','Stevens','21 Friars Lane','Tulrohan','Headford','Galway','Ireland','H91ACBD'),(4,'Karen','Connor','28 Walk Way','Dunmore','Tuam','Galway','Ireland','H91ABDC'),(5,'Imogen','Frahill','45 Radio Close','Clare','Claremorris','Mayo','Ireland','F12E4P8'),(6,'Peregrin','Took','Whitwell','Three Farthing Stone','West Farthing','The Shire','Ireland','F13DCBA'),(7,'Meriadoc','Brandybuck','Buckland',NULL,'East Farthing','The Shire','Ireland','F13CDBA'),(33,'Kenneth','Feerick','Main Street',NULL,'Finny','Mayo','Ireland','F12QWER'),(34,'Maureen','Connor','Mushroom Close','Fly Agaric','Galway','Galway','Ireland','H91TYUI'),(35,'Philip','Pullman','Street Side',NULL,'Jericho','Oxford','Ireland','A12BWQE'),(36,'Sinead','Casey','12 Side Street',NULL,'Belclare','Tuam','Ireland','H54RP12'),(37,'Johnny','Goodwin','74 Obelisk Lane','Oldham','Baunouges South','Dunmore','Ireland','H54RP11'),(38,'David','Hallinan','84 Crimson Court',NULL,'Cresent Hill','Dublin 7','Ireland','D07B1234'),(39,'Katy','Woods','12','Holy Cove','ClareGalway','Galway','Ireland','H54PO56'),(40,'Jane','Doe','Main Street','','Charlestown','Sligo','Ireland','xxxx xxxx'),(42,'Jane','Doe','Main Street','','Charlestown','Sligo','Ireland','H91123456');
/*!40000 ALTER TABLE `addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `animals`
--

LOCK TABLES `animals` WRITE;
/*!40000 ALTER TABLE `animals` DISABLE KEYS */;
INSERT INTO `animals` VALUES (1,'Zak',2,'working','dog','collie',NULL),(2,'Molly',3,'domestic','cat','mixed',NULL),(3,'Netty',3,'farm','sheep','mountain',NULL),(4,'Abigail',2,'farm','sheep','mountain',NULL),(5,'Pip',4,'domestic','dog','beagle',NULL),(6,'Fig',6,'domestic','cat','mixed',NULL),(7,'Raisin',5,'domestic','cat','mixed',NULL),(8,'Tilly',7,'farm','horse','connemara pony',NULL);
/*!40000 ALTER TABLE `animals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `appointments`
--

LOCK TABLES `appointments` WRITE;
/*!40000 ALTER TABLE `appointments` DISABLE KEYS */;
INSERT INTO `appointments` VALUES (1,'2023-04-10 12:30:00',1,'Zak',2,'Kenneth',4,'Irregular coughing',0,0,NULL,NULL),(2,'2023-04-10 14:00:00',0,'Molly',3,'Maureen',4,'Limping, back left paw',0,1,1,'2023-04-10 14:37:57'),(3,'2023-01-17 08:30:00',0,'Zak',2,'Kenneth',6,'Annual check up',1,0,2,'2023-01-16 15:37:46'),(4,'2023-02-28 17:45:00',0,'Pip',5,'Sinead',5,'Lethargic, no appetite',0,0,NULL,'2023-02-26 14:46:23'),(5,'2023-04-20 09:15:00',0,'Tilly',8,'Kay',8,'Nail stuck in hoof',0,0,NULL,'2023-04-19 09:42:00'),(6,'2023-04-20 09:45:00',0,'Raisin',7,'John',7,'Losing fur in patches',0,0,NULL,'2023-04-19 09:45:00'),(7,'2023-04-19 11:00:00',0,'Fig',6,'David',2,'Swallowed pull ring from milk carton',0,0,NULL,'2023-04-19 09:50:24');
/*!40000 ALTER TABLE `appointments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `owners`
--

LOCK TABLES `owners` WRITE;
/*!40000 ALTER TABLE `owners` DISABLE KEYS */;
INSERT INTO `owners` VALUES (2,'Kenneth Feerick','kennneth.f@nomail.com','Kenneth','Feerick',33,1),(3,'Marureen Connor','connor.m@email.com','Maureen','Connor',34,2),(4,'SineadCasey','casey85@gmail.com','Sinead','Casey',36,5),(5,'J. Goodwin','goodwinning56@gmail.com','Johnny','Goodwin',37,7),(6,'David hallinan','hally_boi99@rocketmail.org','David','Hallinan',38,6),(7,'Kay W','kaywoods@hotmail.co.uk','Katy','Woods',39,8);
/*!40000 ALTER TABLE `owners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `payment_line_items`
--

LOCK TABLES `payment_line_items` WRITE;
/*!40000 ALTER TABLE `payment_line_items` DISABLE KEYS */;
INSERT INTO `payment_line_items` VALUES (1,1,'assessment',1,30),(2,1,'dewormer',2,15),(3,1,'Kennel Cough',1,13.5),(4,2,'assessment',1,30),(5,2,'dewormer',2,15);
/*!40000 ALTER TABLE `payment_line_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,'2023-01-17 09:14:23','2023-01-17 09:16:46','58.50',NULL,2,2,3,'card',1),(2,'2023-04-10 14:03:54','2023-04-10 14:04:06','45.00',NULL,6,6,2,'cash',1),(3,'2023-04-19 10:01:09',NULL,'150','2023-05-20',4,5,4,'installments',0);
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (2,'Joe O\'Donnell','Joe','O\'Donnell','jod@glenvets.ie','vet',1,1),(3,'Roisin Hegarty','Roisin','Hegarty','roisin@glenvets.ie','receptionist',2,1),(4,'Paul Stevens','Paul','Stevens','paulstevens@glenvets.ie','vet',3,1),(5,'Karen Connor','Karen','Connor','kconnor@glenvets.ie','vet',4,1),(6,'Imogen F','Imogen','Frahill','imogen.frahill@glenvets.ie','veterinary nurse',5,1),(7,'Pippin','Peregrin','Took','pippin.took@glenvets.ie','veterinary nurse',6,1),(8,'Merry Brandybuck','Meriadoc','Brandybuck','merry.b@glenvets.ie','veterinary nurse',7,1),(9,'Philip Pullman','Philip','Pullman','philip@glenvets.ie','vet',35,0);
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `treatment_guide`
--

LOCK TABLES `treatment_guide` WRITE;
/*!40000 ALTER TABLE `treatment_guide` DISABLE KEYS */;
INSERT INTO `treatment_guide` VALUES (1,'dewormer',8,'Dewormer for dogs, 3 over 2 months'),(2,'assessment',30,'General animal assessment'),(3,'kennel cough',14,'Kennel Cough vaccine. Recommended annually'),(5,'call out',50,'Call out fee for on site visit');
/*!40000 ALTER TABLE `treatment_guide` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `treatments`
--

LOCK TABLES `treatments` WRITE;
/*!40000 ALTER TABLE `treatments` DISABLE KEYS */;
INSERT INTO `treatments` VALUES (1,2,3,'Annual check up, nothing to note. Dewormer issued'),(2,3,2,'Bruised paw. Wrapped and check up in 4 weeks');
/*!40000 ALTER TABLE `treatments` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-09  9:54:26
