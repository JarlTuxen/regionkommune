use regionkommune;

-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: 20cregionkommune
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `kommune`
--

DROP TABLE IF EXISTS `kommune`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kommune` (
                           `kommune_kode` int NOT NULL,
                           `kommune_href` varchar(255) DEFAULT NULL,
                           `kommune_navn` varchar(255) DEFAULT NULL,
                           `region_kode` int DEFAULT NULL,
                           PRIMARY KEY (`kommune_kode`),
                           KEY `FK46gbs0uj1faxvmq8lut8v4pqy` (`region_kode`),
                           CONSTRAINT `FK46gbs0uj1faxvmq8lut8v4pqy` FOREIGN KEY (`region_kode`) REFERENCES `region` (`region_kode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kommune`
--

LOCK TABLES `kommune` WRITE;
/*!40000 ALTER TABLE `kommune` DISABLE KEYS */;
INSERT INTO `kommune` VALUES (101,'https://api.dataforsyningen.dk/kommuner/0101','København',1084),(147,'https://api.dataforsyningen.dk/kommuner/0147','Frederiksberg',1084),(151,'https://api.dataforsyningen.dk/kommuner/0151','Ballerup',1084),(153,'https://api.dataforsyningen.dk/kommuner/0153','Brøndby',1084),(155,'https://api.dataforsyningen.dk/kommuner/0155','Dragør',1084),(157,'https://api.dataforsyningen.dk/kommuner/0157','Gentofte',1084),(159,'https://api.dataforsyningen.dk/kommuner/0159','Gladsaxe',1084),(161,'https://api.dataforsyningen.dk/kommuner/0161','Glostrup',1084),(163,'https://api.dataforsyningen.dk/kommuner/0163','Herlev',1084),(165,'https://api.dataforsyningen.dk/kommuner/0165','Albertslund',1084),(167,'https://api.dataforsyningen.dk/kommuner/0167','Hvidovre',1084),(169,'https://api.dataforsyningen.dk/kommuner/0169','Høje-Taastrup',1084),(173,'https://api.dataforsyningen.dk/kommuner/0173','Lyngby-Taarbæk',1084),(175,'https://api.dataforsyningen.dk/kommuner/0175','Rødovre',1084),(183,'https://api.dataforsyningen.dk/kommuner/0183','Ishøj',1084),(185,'https://api.dataforsyningen.dk/kommuner/0185','Tårnby',1084),(187,'https://api.dataforsyningen.dk/kommuner/0187','Vallensbæk',1084),(190,'https://api.dataforsyningen.dk/kommuner/0190','Furesø',1084),(201,'https://api.dataforsyningen.dk/kommuner/0201','Allerød',1084),(210,'https://api.dataforsyningen.dk/kommuner/0210','Fredensborg',1084),(217,'https://api.dataforsyningen.dk/kommuner/0217','Helsingør',1084),(219,'https://api.dataforsyningen.dk/kommuner/0219','Hillerød',1084),(223,'https://api.dataforsyningen.dk/kommuner/0223','Hørsholm',1084),(230,'https://api.dataforsyningen.dk/kommuner/0230','Rudersdal',1084),(240,'https://api.dataforsyningen.dk/kommuner/0240','Egedal',1084),(250,'https://api.dataforsyningen.dk/kommuner/0250','Frederikssund',1084),(253,'https://api.dataforsyningen.dk/kommuner/0253','Greve',1085),(259,'https://api.dataforsyningen.dk/kommuner/0259','Køge',1085),(260,'https://api.dataforsyningen.dk/kommuner/0260','Halsnæs',1084),(265,'https://api.dataforsyningen.dk/kommuner/0265','Roskilde',1085),(269,'https://api.dataforsyningen.dk/kommuner/0269','Solrød',1085),(270,'https://api.dataforsyningen.dk/kommuner/0270','Gribskov',1084),(306,'https://api.dataforsyningen.dk/kommuner/0306','Odsherred',1085),(316,'https://api.dataforsyningen.dk/kommuner/0316','Holbæk',1085),(320,'https://api.dataforsyningen.dk/kommuner/0320','Faxe',1085),(326,'https://api.dataforsyningen.dk/kommuner/0326','Kalundborg',1085),(329,'https://api.dataforsyningen.dk/kommuner/0329','Ringsted',1085),(330,'https://api.dataforsyningen.dk/kommuner/0330','Slagelse',1085),(336,'https://api.dataforsyningen.dk/kommuner/0336','Stevns',1085),(340,'https://api.dataforsyningen.dk/kommuner/0340','Sorø',1085),(350,'https://api.dataforsyningen.dk/kommuner/0350','Lejre',1085),(360,'https://api.dataforsyningen.dk/kommuner/0360','Lolland',1085),(370,'https://api.dataforsyningen.dk/kommuner/0370','Næstved',1085),(376,'https://api.dataforsyningen.dk/kommuner/0376','Guldborgsund',1085),(390,'https://api.dataforsyningen.dk/kommuner/0390','Vordingborg',1085),(400,'https://api.dataforsyningen.dk/kommuner/0400','Bornholm',1084),(410,'https://api.dataforsyningen.dk/kommuner/0410','Middelfart',1083),(411,'https://api.dataforsyningen.dk/kommuner/0411','Christiansø',1084),(420,'https://api.dataforsyningen.dk/kommuner/0420','Assens',1083),(430,'https://api.dataforsyningen.dk/kommuner/0430','Faaborg-Midtfyn',1083),(440,'https://api.dataforsyningen.dk/kommuner/0440','Kerteminde',1083),(450,'https://api.dataforsyningen.dk/kommuner/0450','Nyborg',1083),(461,'https://api.dataforsyningen.dk/kommuner/0461','Odense',1083),(479,'https://api.dataforsyningen.dk/kommuner/0479','Svendborg',1083),(480,'https://api.dataforsyningen.dk/kommuner/0480','Nordfyns',1083),(482,'https://api.dataforsyningen.dk/kommuner/0482','Langeland',1083),(492,'https://api.dataforsyningen.dk/kommuner/0492','Ærø',1083),(510,'https://api.dataforsyningen.dk/kommuner/0510','Haderslev',1083),(530,'https://api.dataforsyningen.dk/kommuner/0530','Billund',1083),(540,'https://api.dataforsyningen.dk/kommuner/0540','Sønderborg',1083),(550,'https://api.dataforsyningen.dk/kommuner/0550','Tønder',1083),(561,'https://api.dataforsyningen.dk/kommuner/0561','Esbjerg',1083),(563,'https://api.dataforsyningen.dk/kommuner/0563','Fanø',1083),(573,'https://api.dataforsyningen.dk/kommuner/0573','Varde',1083),(575,'https://api.dataforsyningen.dk/kommuner/0575','Vejen',1083),(580,'https://api.dataforsyningen.dk/kommuner/0580','Aabenraa',1083),(607,'https://api.dataforsyningen.dk/kommuner/0607','Fredericia',1083),(615,'https://api.dataforsyningen.dk/kommuner/0615','Horsens',1082),(621,'https://api.dataforsyningen.dk/kommuner/0621','Kolding',1083),(630,'https://api.dataforsyningen.dk/kommuner/0630','Vejle',1083),(657,'https://api.dataforsyningen.dk/kommuner/0657','Herning',1082),(661,'https://api.dataforsyningen.dk/kommuner/0661','Holstebro',1082),(665,'https://api.dataforsyningen.dk/kommuner/0665','Lemvig',1082),(671,'https://api.dataforsyningen.dk/kommuner/0671','Struer',1082),(706,'https://api.dataforsyningen.dk/kommuner/0706','Syddjurs',1082),(707,'https://api.dataforsyningen.dk/kommuner/0707','Norddjurs',1082),(710,'https://api.dataforsyningen.dk/kommuner/0710','Favrskov',1082),(727,'https://api.dataforsyningen.dk/kommuner/0727','Odder',1082),(730,'https://api.dataforsyningen.dk/kommuner/0730','Randers',1082),(740,'https://api.dataforsyningen.dk/kommuner/0740','Silkeborg',1082),(741,'https://api.dataforsyningen.dk/kommuner/0741','Samsø',1082),(746,'https://api.dataforsyningen.dk/kommuner/0746','Skanderborg',1082),(751,'https://api.dataforsyningen.dk/kommuner/0751','Aarhus',1082),(756,'https://api.dataforsyningen.dk/kommuner/0756','Ikast-Brande',1082),(760,'https://api.dataforsyningen.dk/kommuner/0760','Ringkøbing-Skjern',1082),(766,'https://api.dataforsyningen.dk/kommuner/0766','Hedensted',1082),(773,'https://api.dataforsyningen.dk/kommuner/0773','Morsø',1081),(779,'https://api.dataforsyningen.dk/kommuner/0779','Skive',1082),(787,'https://api.dataforsyningen.dk/kommuner/0787','Thisted',1081),(791,'https://api.dataforsyningen.dk/kommuner/0791','Viborg',1082),(810,'https://api.dataforsyningen.dk/kommuner/0810','Brønderslev',1081),(813,'https://api.dataforsyningen.dk/kommuner/0813','Frederikshavn',1081),(825,'https://api.dataforsyningen.dk/kommuner/0825','Læsø',1081),(840,'https://api.dataforsyningen.dk/kommuner/0840','Rebild',1081),(846,'https://api.dataforsyningen.dk/kommuner/0846','Mariagerfjord',1081),(849,'https://api.dataforsyningen.dk/kommuner/0849','Jammerbugt',1081),(851,'https://api.dataforsyningen.dk/kommuner/0851','Aalborg',1081),(860,'https://api.dataforsyningen.dk/kommuner/0860','Hjørring',1081);
/*!40000 ALTER TABLE `kommune` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `region`
--

DROP TABLE IF EXISTS `region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `region` (
                          `region_kode` int NOT NULL,
                          `region_href` varchar(255) DEFAULT NULL,
                          `region_navn` varchar(255) DEFAULT NULL,
                          PRIMARY KEY (`region_kode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `region`
--

LOCK TABLES `region` WRITE;
/*!40000 ALTER TABLE `region` DISABLE KEYS */;
INSERT INTO `region` VALUES (1081,'https://api.dataforsyningen.dk/regioner/1081','Region Nordjylland'),(1082,'https://api.dataforsyningen.dk/regioner/1082','Region Midtjylland'),(1083,'https://api.dataforsyningen.dk/regioner/1083','Region Syddanmark'),(1084,'https://api.dataforsyningen.dk/regioner/1084','Region Hovedstaden'),(1085,'https://api.dataforsyningen.dk/regioner/1085','Region Sjælland');
/*!40000 ALTER TABLE `region` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-07 16:09:49
