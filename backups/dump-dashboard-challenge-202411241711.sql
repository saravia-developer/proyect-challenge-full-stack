-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: dashboard-challenge
-- ------------------------------------------------------
-- Server version	9.0.1

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
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country` (
  `country_id` int NOT NULL AUTO_INCREMENT,
  `country` varchar(100) NOT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (1,'Peru'),(2,'Estados Unidos'),(3,'China'),(4,'Rusia'),(5,'Argentina'),(6,'Brasil'),(7,'Colombia'),(8,'Ecuador'),(9,'Venezuela'),(10,'Uruguay'),(11,'Paraguay'),(12,'Bolivia'),(13,'Chile'),(14,'Mexico'),(15,'Canada'),(16,'Republica Dominicana');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `state`
--

DROP TABLE IF EXISTS `state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `state` (
  `state_id` int NOT NULL AUTO_INCREMENT,
  `state` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `country_id` int NOT NULL,
  PRIMARY KEY (`state_id`)
) ENGINE=InnoDB AUTO_INCREMENT=357 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `state`
--

LOCK TABLES `state` WRITE;
/*!40000 ALTER TABLE `state` DISABLE KEYS */;
INSERT INTO `state` VALUES (1,'Lima',1),(2,'Cuzco',1),(3,'Arequipa',1),(4,'La Libertad',1),(5,'Tacna',1),(6,'Junín',1),(7,'Amazonas',1),(8,'Loreto',1),(9,'Madre de Dios',1),(10,'Ucayalí',1),(11,'Ica',1),(12,'Ancash',1),(13,'Piura',1),(14,'Tumbes',1),(15,'Callao',1),(16,'Moquegua',1),(17,'Huanuco',1),(18,'Apurimac',1),(19,'Cajamarca',1),(20,'Ayacucho',1),(21,'Huancavelica',1),(22,'Lambayeque',1),(23,'Pasco',1),(24,'Puno',1),(25,'San Martin',1),(26,'Alabama',2),(27,'Alaska',2),(28,'Arizona',2),(29,'Arkansas',2),(30,'California',2),(31,'Colorado',2),(32,'Connecticut',2),(33,'Delaware',2),(34,'Florida',2),(35,'Georgia',2),(36,'Hawaii',2),(37,'Idaho',2),(38,'Illinois',2),(39,'Indiana',2),(40,'Iowa',2),(41,'Kansas',2),(42,'Kentucky',2),(43,'Louisiana',2),(44,'Maine',2),(45,'Maryland',2),(46,'Massachusetts',2),(47,'Michigan',2),(48,'Minnesota',2),(49,'Mississippi',2),(50,'Missouri',2),(51,'Montana',2),(52,'Nebraska',2),(53,'Nevada',2),(54,'New Hampshire',2),(55,'New Jersey',2),(56,'New Mexico',2),(57,'New York',2),(58,'North Carolina',2),(59,'North Dakota',2),(60,'Ohio',2),(61,'Oklahoma',2),(62,'Oregon',2),(63,'Pennsylvania',2),(64,'Rhode Island',2),(65,'South Carolina',2),(66,'South Dakota',2),(67,'Tennessee',2),(68,'Texas',2),(69,'Utah',2),(70,'Vermont',2),(71,'Virginia',2),(72,'Washington',2),(73,'West Virginia',2),(74,'Wisconsin',2),(75,'Wyoming',2),(76,'Anhui',3),(77,'Beijing',3),(78,'Chongqing',3),(79,'Fujian',3),(80,'Gansu',3),(81,'Guangdong',3),(82,'Guangxi',3),(83,'Guizhou',3),(84,'Hainan',3),(85,'Hebei',3),(86,'Heilongjiang',3),(87,'Henan',3),(88,'Hubei',3),(89,'Hunan',3),(90,'Inner Mongolia',3),(91,'Jiangsu',3),(92,'Jiangxi',3),(93,'Jilin',3),(94,'Liaoning',3),(95,'Ningxia',3),(96,'Qinghai',3),(97,'Shaanxi',3),(98,'Shandong',3),(99,'Shanghai',3),(100,'Shanxi',3),(101,'Sichuan',3),(102,'Tianjin',3),(103,'Tibet',3),(104,'Xinjiang',3),(105,'Yunnan',3),(106,'Zhejiang',3),(107,'Hong Kong',3),(108,'Macau',3),(109,'Adygea',4),(110,'Altai Republic',4),(111,'Altai Krai',4),(112,'Amur Oblast',4),(113,'Arkhangelsk Oblast',4),(114,'Astrakhan Oblast',4),(115,'Bashkortostan',4),(116,'Belgorod Oblast',4),(117,'Bryansk Oblast',4),(118,'Buryatia',4),(119,'Chechnya',4),(120,'Chelyabinsk Oblast',4),(121,'Chukotka Autonomous Okrug',4),(122,'Chuvashia',4),(123,'Dagestan',4),(124,'Ingushetia',4),(125,'Irkutsk Oblast',4),(126,'Ivanovo Oblast',4),(127,'Jewish Autonomous Oblast',4),(128,'Kabardino-Balkaria',4),(129,'Kaliningrad Oblast',4),(130,'Kalmykia',4),(131,'Kaluga Oblast',4),(132,'Kamchatka Krai',4),(133,'Karachay-Cherkessia',4),(134,'Karelia',4),(135,'Kemerovo Oblast',4),(136,'Khabarovsk Krai',4),(137,'Khakassia',4),(138,'Khanty-Mansi Autonomous Okrug',4),(139,'Kirov Oblast',4),(140,'Komi Republic',4),(141,'Kostroma Oblast',4),(142,'Krasnodar Krai',4),(143,'Krasnoyarsk Krai',4),(144,'Kurgan Oblast',4),(145,'Kursk Oblast',4),(146,'Leningrad Oblast',4),(147,'Lipetsk Oblast',4),(148,'Magadan Oblast',4),(149,'Mari El',4),(150,'Mordovia',4),(151,'Moscow',4),(152,'Moscow Oblast',4),(153,'Murmansk Oblast',4),(154,'Nenets Autonomous Okrug',4),(155,'Nizhny Novgorod Oblast',4),(156,'Novgorod Oblast',4),(157,'Novosibirsk Oblast',4),(158,'Omsk Oblast',4),(159,'Orenburg Oblast',4),(160,'Oryol Oblast',4),(161,'Penza Oblast',4),(162,'Perm Krai',4),(163,'Primorsky Krai',4),(164,'Pskov Oblast',4),(165,'Rostov Oblast',4),(166,'Ryazan Oblast',4),(167,'Saint Petersburg',4),(168,'Sakha Republic (Yakutia)',4),(169,'Sakhalin Oblast',4),(170,'Samara Oblast',4),(171,'Saratov Oblast',4),(172,'Smolensk Oblast',4),(173,'Stavropol Krai',4),(174,'Sverdlovsk Oblast',4),(175,'Tambov Oblast',4),(176,'Tatarstan',4),(177,'Tomsk Oblast',4),(178,'Tula Oblast',4),(179,'Tver Oblast',4),(180,'Tyumen Oblast',4),(181,'Tuva (Tyva)',4),(182,'Udmurtia',4),(183,'Ulyanovsk Oblast',4),(184,'Vladimir Oblast',4),(185,'Volgograd Oblast',4),(186,'Vologda Oblast',4),(187,'Voronezh Oblast',4),(188,'Yamalo-Nenets Autonomous Okrug',4),(189,'Yaroslavl Oblast',4),(190,'Zabaykalsky Krai',4),(191,'Buenos Aires',5),(192,'Catamarca',5),(193,'Chaco',5),(194,'Chubut',5),(195,'Córdoba',5),(196,'Corrientes',5),(197,'Entre Ríos',5),(198,'Formosa',5),(199,'Jujuy',5),(200,'La Pampa',5),(201,'La Rioja',5),(202,'Mendoza',5),(203,'Misiones',5),(204,'Neuquén',5),(205,'Río Negro',5),(206,'Salta',5),(207,'San Juan',5),(208,'San Luis',5),(209,'Santa Cruz',5),(210,'Santa Fe',5),(211,'Santiago del Estero',5),(212,'Tierra del Fuego',5),(213,'Tucumán',5),(214,'Acre',6),(215,'Alagoas',6),(216,'Amapá',6),(217,'Amazonas',6),(218,'Bahia',6),(219,'Ceará',6),(220,'Distrito Federal',6),(221,'Espírito Santo',6),(222,'Goiás',6),(223,'Maranhão',6),(224,'Mato Grosso',6),(225,'Mato Grosso do Sul',6),(226,'Minas Gerais',6),(227,'Pará',6),(228,'Paraíba',6),(229,'Paraná',6),(230,'Pernambuco',6),(231,'Piauí',6),(232,'Rio de Janeiro',6),(233,'Rio Grande do Norte',6),(234,'Rio Grande do Sul',6),(235,'Rondônia',6),(236,'Roraima',6),(237,'Santa Catarina',6),(238,'São Paulo',6),(239,'Sergipe',6),(240,'Tocantins',6),(241,'Amazonas',7),(242,'Antioquia',7),(243,'Arauca',7),(244,'Atlántico',7),(245,'Bolívar',7),(246,'Boyacá',7),(247,'Caldas',7),(248,'Caquetá',7),(249,'Casanare',7),(250,'Cauca',7),(251,'Cesar',7),(252,'Chocó',7),(253,'Córdoba',7),(254,'Cundinamarca',7),(255,'Guainía',7),(256,'Guaviare',7),(257,'Huila',7),(258,'La Guajira',7),(259,'Magdalena',7),(260,'Meta',7),(261,'Nariño',7),(262,'Norte de Santander',7),(263,'Putumayo',7),(264,'Quindío',7),(265,'Risaralda',7),(266,'San Andrés y Providencia',7),(267,'Santander',7),(268,'Sucre',7),(269,'Tolima',7),(270,'Valle del Cauca',7),(271,'Vaupés',7),(272,'Vichada',7),(273,'Azuay',8),(274,'Bolívar',8),(275,'Cañar',8),(276,'Carchi',8),(277,'Chimborazo',8),(278,'Cotopaxi',8),(279,'El Oro',8),(280,'Esmeraldas',8),(281,'Galápagos',8),(282,'Guayas',8),(283,'Imbabura',8),(284,'Loja',8),(285,'Los Ríos',8),(286,'Manabí',8),(287,'Morona Santiago',8),(288,'Napo',8),(289,'Orellana',8),(290,'Pastaza',8),(291,'Pichincha',8),(292,'Santa Elena',8),(293,'Santo Domingo de los Tsáchilas',8),(294,'Sucumbíos',8),(295,'Tungurahua',8),(296,'Zamora Chinchipe',8),(297,'Amazonas',9),(298,'Anzoátegui',9),(299,'Apure',9),(300,'Aragua',9),(301,'Barinas',9),(302,'Bolívar',9),(303,'Carabobo',9),(304,'Cojedes',9),(305,'Delta Amacuro',9),(306,'Distrito Capital',9),(307,'Falcón',9),(308,'Guárico',9),(309,'Lara',9),(310,'Mérida',9),(311,'Miranda',9),(312,'Monagas',9),(313,'Nueva Esparta',9),(314,'Portuguesa',9),(315,'Sucre',9),(316,'Táchira',9),(317,'Trujillo',9),(318,'Vargas',9),(319,'Yaracuy',9),(320,'Zulia',9),(321,'Artigas',10),(322,'Canelones',10),(323,'Cerro Largo',10),(324,'Colonia',10),(325,'Durazno',10),(326,'Flores',10),(327,'Florida',10),(328,'Lavalleja',10),(329,'Maldonado',10),(330,'Montevideo',10),(331,'Paysandú',10),(332,'Río Negro',10),(333,'Rivera',10),(334,'Rocha',10),(335,'Salto',10),(336,'San José',10),(337,'Soriano',10),(338,'Tacuarembó',10),(339,'Treinta y Tres',10),(340,'Alto Paraguay',11),(341,'Alto Paraná',11),(342,'Amambay',11),(343,'Boquerón',11),(344,'Caaguazú',11),(345,'Caazapá',11),(346,'Canindeyú',11),(347,'Central',11),(348,'Concepción',11),(349,'Cordillera',11),(350,'Guairá',11),(351,'Itapúa',11),(352,'Misiones',11),(353,'Ñeembucú',11),(354,'Paraguarí',11),(355,'Presidente Hayes',11),(356,'San Pedro',11);
/*!40000 ALTER TABLE `state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `paternalSurname` varchar(60) NOT NULL,
  `maternalSurname` varchar(60) NOT NULL,
  `email` varchar(100) NOT NULL,
  `country` varchar(70) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `state` varchar(70) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `createdAt` datetime NOT NULL,
  `updDatetime` datetime DEFAULT NULL,
  `delDatetime` datetime DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `cellphone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `username` varchar(50) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `Users_email_unique` (`email`),
  UNIQUE KEY `Users_username_unique` (`username`),
  CONSTRAINT `Users_email_format_valid` CHECK (regexp_like(`email`,_utf8mb4'^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+.[A-Za-z]{2,}$'))
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES (1,'Enrique','Saravia','Tornero','saraviatornero310@gmail.com','Perú','Lima','2024-11-16 15:43:07','2024-11-23 16:05:25',NULL,'Luis3333','941770750','Luis123123'),(3,'Enrique','Saravia','Tornero','saraviatornero310+1@gmail.com','Perú','Lima','2024-11-16 17:44:37','2024-11-23 16:05:52',NULL,'Luis3333','999999999','SSaravia123'),(5,'Luis','Saravia','Tornero','saraviatornero310+4@gmail.com','Perú','Lima','2024-11-22 04:33:37',NULL,'2024-11-24 21:59:39','Luis123123123','941770751','saravia123123'),(6,'Luis','Saravia','Tornero','saraviatornero310+5@gmail.com','Peru','Lima','2024-11-22 04:45:09',NULL,'2024-11-24 21:59:34','123123131313','941770752','Luis132132');
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'dashboard-challenge'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-24 17:11:57
