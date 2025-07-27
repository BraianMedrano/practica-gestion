-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: practicabd
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `empleado`
--

DROP TABLE IF EXISTS `empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleado` (
  `id_empleado` int NOT NULL,
  `nombre` varchar(30) COLLATE utf8mb3_bin DEFAULT NULL,
  `dni` varchar(15) COLLATE utf8mb3_bin DEFAULT NULL,
  `codigo_postal` int DEFAULT NULL,
  `calle` varchar(30) COLLATE utf8mb3_bin DEFAULT NULL,
  `numero` int DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  PRIMARY KEY (`id_empleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleado`
--

LOCK TABLES `empleado` WRITE;
/*!40000 ALTER TABLE `empleado` DISABLE KEYS */;
INSERT INTO `empleado` VALUES (1,'López Paula','20839221',4128,'Ruta 302',229,'1962-07-09'),(2,'López Leonardo','42706266',4186,'25 de Mayo',605,'1987-11-08'),(3,'Gómez Luis','23143890',4111,'Ruta 302',518,'2004-01-04'),(4,'Brito Ana','26671884',4186,'San Martín',226,'1990-04-20'),(5,'Rojas Lucía','47159979',4000,'Corrientes',826,'1964-04-28'),(6,'Torres Julieta','31416912',4128,'Av. Aconquija',221,'1980-03-13'),(7,'Fernández Matías','32748244',4103,'Av. Calchaquí',868,'1980-11-09'),(8,'Rojas Bruno','47082730',4000,'Junín',471,'1998-02-09'),(9,'Navarro Matías','32701506',4103,'Crisóstomo Álvarez',301,'2005-06-28'),(10,'Leal Micaela','32134457',4190,'Ruta 302',722,'1956-03-29'),(11,'Figueroa Luis','27646997',4128,'25 de Mayo',876,'1970-11-20'),(12,'López Gabriel','32754919',4128,'9 de Julio',651,'1982-09-24'),(13,'Molinas Marcos','31920906',4111,'Catamarca',274,'1956-05-28'),(14,'Esteban Bruno','25742460',4186,'Junín',251,'1964-08-29'),(15,'Salazar Daniela','29057945',4186,'Ruta 302',702,'1979-02-04'),(16,'Ibarra Florencia','46038236',4000,'Ruta 302',842,'1952-11-17'),(17,'Reynoso Agustín','33460856',4128,'25 de Mayo',217,'2000-11-19'),(18,'Gaitán Micaela','30558837',4111,'Catamarca',512,'1985-06-30'),(19,'Navarro Micaela','41570529',4178,'Av. Aconquija',272,'1962-07-12'),(20,'Hidalgo Sebastián','38836388',4186,'Belgrano',765,'2002-06-12'),(21,'Medina Guillermo','39580115',4162,'Av. Calchaquí',225,'1962-05-30'),(22,'Acosta Valentina','23050413',4000,'Entre Ríos',113,'1963-09-18'),(23,'Ávila Paula','46577773',4162,'Lamadrid',66,'1984-07-09'),(24,'Díaz Sofía','35705148',4186,'Belgrano',995,'1999-08-20'),(25,'Gómez Gabriel','42826523',4103,'Catamarca',907,'1998-03-05'),(26,'Rojas Martina','45789893',4142,'25 de Mayo',301,'1989-01-02'),(27,'Herrera Marcos','20108894',4128,'Crisóstomo Álvarez',781,'1966-01-11'),(28,'Navarro Valentina','23570554',4128,'Entre Ríos',655,'1995-07-19'),(29,'Sánchez Bruno','25128434',4142,'Corrientes',166,'1998-05-23'),(30,'Navarro Martina','37795716',4000,'Lamadrid',332,'1993-11-01'),(31,'López Ana','32179613',4128,'Ruta 302',60,'1971-08-11'),(32,'Carrizo Micaela','22642648',4103,'Junín',498,'1956-03-17'),(33,'Brito Martina','45697139',4107,'Av. Aconquija',676,'1992-08-22'),(34,'Ávila Joaquín','28893824',4186,'Entre Ríos',622,'1987-12-18'),(35,'Navarro Romina','38095773',4111,'Junín',320,'1985-10-18'),(36,'Esteban Santiago','32529912',4178,'Mendoza',530,'1990-07-04'),(37,'Rivera Matías','27539591',4103,'Av. Calchaquí',22,'2002-10-12'),(38,'Rivera Joaquín','39744773',4111,'Av. Sarmiento',73,'1955-04-14'),(39,'Fernández Sebastián','21054043',4142,'25 de Mayo',527,'1971-05-09'),(40,'Figueroa Verónica','36287807',4111,'Crisóstomo Álvarez',136,'2001-03-25'),(41,'Acosta Lucía','28153634',4178,'Corrientes',417,'1967-01-31'),(42,'López Matías','42111791',4162,'Av. Calchaquí',434,'1986-11-18'),(43,'Leal Daniela','44463726',4000,'Catamarca',670,'1958-10-30'),(44,'Salazar Luis','44434793',4142,'Corrientes',883,'1959-10-21'),(45,'Sánchez Sebastián','26382351',4186,'9 de Julio',144,'1987-11-07'),(46,'Rojas Marcos','35523222',4111,'Entre Ríos',946,'1956-10-06'),(47,'Jaldo Daniela','48902079',4186,'25 de Mayo',52,'1998-07-01'),(48,'Gómez Florencia','23129379',4111,'Av. Aconquija',417,'1993-07-27'),(49,'Sánchez Federico','49012852',4162,'Mendoza',61,'1964-10-08'),(50,'Gómez Sofía','33100380',4128,'Mendoza',803,'1990-10-27'),(51,'Torres Ignacio','43373732',4186,'Catamarca',736,'1993-08-30'),(52,'Sánchez Noelia','29955862',4111,'Av. Sarmiento',594,'1998-08-23'),(53,'Hidalgo Luis','30522831',4000,'Av. Sarmiento',599,'1992-10-10'),(54,'Navarro Valentina','48612531',4186,'Av. Aconquija',59,'1995-07-24'),(55,'Leal Carla','26235251',4103,'Lamadrid',70,'1971-02-07'),(56,'López Sofía','49873085',4190,'Ruta 302',593,'2003-05-04'),(57,'Díaz Luis','22750906',4162,'Catamarca',598,'2000-09-16'),(58,'Reynoso Valentina','28749844',4111,'Catamarca',734,'1978-03-10'),(59,'Rojas Sebastián','33280369',4107,'Catamarca',661,'1976-11-30'),(60,'Reynoso Daniela','45228385',4103,'Av. Sarmiento',470,'2005-09-23'),(61,'Rodríguez Mateo','36369753',4400,'Corrientes',444,'2004-06-30'),(62,'Álvarez Juan','28936570',4618,'Perú',968,'1959-03-04'),(63,'García Agustín','20749005',4400,'Catamarca',10,'1984-03-14'),(64,'Navarro Mateo','44355571',4400,'Catamarca',228,'1989-04-14'),(65,'Castro Facundo','27821016',1700,'Independencia',694,'1969-08-18'),(66,'Giménez Sofía','20721074',1900,'Catamarca',945,'1958-12-21'),(67,'Giménez Ana','24056393',1700,'Catamarca',959,'1987-11-14'),(68,'Martínez Daniela','30179358',1000,'Perú',997,'1994-10-20'),(69,'Romero Daniela','39763636',4400,'Entre Ríos',249,'1986-04-09'),(70,'López Bruno','32318631',1700,'Mitre',450,'1995-08-13'),(71,'Sánchez Lucía','49261518',4421,'San Martín',417,'1977-07-27'),(72,'Díaz Rocío','33449841',4618,'Belgrano',779,'1973-02-17'),(73,'Fernández Pedro','40474524',1900,'Corrientes',881,'1953-05-03'),(74,'Pérez Emilia','41107451',1704,'Belgrano',549,'1965-12-31'),(75,'Silva Camila','31789074',1000,'Av. Libertador',299,'1981-10-05'),(76,'Molina Valentina','37751982',1700,'Rivadavia',432,'1999-01-29'),(77,'Ortega Juan','46208804',4400,'Belgrano',114,'1991-09-09'),(78,'Ibarra Julieta','32151760',4421,'San Martín',807,'1978-11-26'),(79,'Ruiz Mateo','35226660',4600,'Mitre',282,'1950-04-15'),(80,'Torres Santiago','28835224',1900,'Entre Ríos',351,'1990-02-28'),(81,'Castro Sofía','49983920',4600,'Av. Libertador',911,'2003-12-05'),(82,'García Daniela','33988798',1900,'Corrientes',614,'1983-03-01'),(83,'López Agustín','48892994',1700,'Mitre',184,'1972-06-14'),(84,'Giménez Carlos','22570718',1000,'Belgrano',652,'1956-10-24'),(85,'Navarro Rocío','28247457',1704,'Entre Ríos',725,'1988-01-18'),(86,'Sánchez Facundo','21468514',4400,'Mitre',376,'1996-04-02'),(87,'Rodríguez Camila','42786874',1700,'Rivadavia',599,'2002-07-23'),(88,'Romero Lautaro','37960216',4600,'Mitre',118,'1951-12-09'),(89,'Pérez Emilia','47668723',1704,'Independencia',807,'1997-11-15'),(90,'Silva Bruno','40859323',4421,'Catamarca',245,'1986-08-27'),(91,'Molina Valentina','29192590',1000,'Perú',368,'1994-05-06'),(92,'Ortega Juan','43880141',4618,'Av. Libertador',409,'1979-09-25'),(93,'Ibarra Julieta','23945642',1700,'Corrientes',931,'1982-12-30'),(94,'Ruiz Mateo','44483683',1704,'Belgrano',185,'1993-10-19'),(95,'Torres Santiago','45132099',1900,'Rivadavia',716,'1975-09-08'),(96,'Castro Sofía','43332973',4600,'Corrientes',271,'1964-01-13'),(97,'García Daniela','22517608',1000,'Belgrano',428,'2000-02-05'),(98,'López Agustín','22527633',4421,'San Martín',194,'1954-08-05'),(99,'Giménez Carlos','31487170',4400,'Independencia',555,'1980-06-22'),(100,'Navarro Rocío','45169379',1700,'Perú',101,'1996-11-11'),(101,'Sánchez Facundo','28097236',4600,'Mitre',784,'1955-02-27'),(102,'Rodríguez Camila','24481563',1900,'Corrientes',309,'1992-03-19'),(103,'Romero Lautaro','34303415',4618,'Entre Ríos',628,'1967-09-13'),(104,'Pérez Emilia','26241708',1000,'Rivadavia',845,'1985-05-17'),(105,'Silva Bruno','24325872',1704,'Catamarca',581,'1991-07-30'),(106,'Molina Valentina','42068812',4400,'San Martín',722,'1970-02-12'),(107,'Ortega Juan','36579442',1900,'Mitre',478,'1989-08-24'),(108,'Ibarra Julieta','24493100',4618,'Independencia',813,'1962-01-28'),(109,'Ruiz Mateo','49106529',1700,'Perú',540,'1952-02-03'),(110,'Torres Santiago','26496085',1000,'Rivadavia',692,'1990-12-19'),(111,'Castro Sofía','35971572',4400,'Corrientes',937,'2004-04-01'),(112,'García Daniela','49713623',4421,'San Martín',863,'1961-03-27'),(113,'López Agustín','38330019',1900,'Corrientes',317,'1983-05-29'),(114,'Castro Emilia','49112289',1704,'Av. Rivadavia',266,'1966-06-09'),(115,'Martínez Lautaro','30311985',4618,'Independencia',370,'1957-04-20'),(116,'Gómez Santiago','45276106',1704,'Mitre',668,'2001-07-12'),(117,'Sánchez Agustín','33102285',1000,'Belgrano',336,'1966-10-05'),(118,'Ortega Agustín','49980893',1000,'Independencia',343,'1959-01-21'),(119,'Ibarra Lautaro','39427527',4421,'Independencia',226,'1951-10-30'),(120,'Romero Valentina','22426909',1000,'Catamarca',889,'1956-05-12');
/*!40000 ALTER TABLE `empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `localidad`
--

DROP TABLE IF EXISTS `localidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `localidad` (
  `codigo_postal` int NOT NULL,
  `localidad` varchar(45) COLLATE utf8mb3_bin DEFAULT NULL,
  `id_provincia` int DEFAULT NULL,
  PRIMARY KEY (`codigo_postal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `localidad`
--

LOCK TABLES `localidad` WRITE;
/*!40000 ALTER TABLE `localidad` DISABLE KEYS */;
INSERT INTO `localidad` VALUES (1000,'CABA',4),(1700,'Moreno',4),(1704,'Ramos Mejía',4),(1900,'La Plata',4),(4000,'San Miguel de Tucuman',3),(4103,'Yerba Buena',3),(4107,'Alderetes',3),(4111,'Lules',3),(4128,'Famaillá',3),(4142,'Monteros',3),(4162,'Tafí del Valle',3),(4178,'Concepción',3),(4186,'Aguilares',3),(4190,'Tafí Viejo',3),(4400,'Salta',1),(4421,'Cafayate',1),(4600,'San Salvador de Jujuy',2),(4618,'Tilcara',2);
/*!40000 ALTER TABLE `localidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provincia`
--

DROP TABLE IF EXISTS `provincia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `provincia` (
  `id_provincia` int NOT NULL,
  `provincia` varchar(45) COLLATE utf8mb3_bin DEFAULT NULL,
  `id_pais` int DEFAULT NULL,
  PRIMARY KEY (`id_provincia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provincia`
--

LOCK TABLES `provincia` WRITE;
/*!40000 ALTER TABLE `provincia` DISABLE KEYS */;
INSERT INTO `provincia` VALUES (1,'Salta',1),(2,'Jujuy',1),(3,'Tucuman',1),(4,'Buenos Aires',1);
/*!40000 ALTER TABLE `provincia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id_usuario` int NOT NULL,
  `corrreo` varchar(45) COLLATE utf8mb3_bin DEFAULT NULL,
  `password` varchar(10) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'pez@example.com','pass0001'),(2,'pez@example.com','pass0002'),(3,'mez@example.com','pass0003'),(4,'rito@example.com','pass0004'),(5,'ojas@example.com','pass0005'),(6,'orres@example.com','pass0006'),(7,'ernndez@example.com','pass0007'),(8,'ojas@example.com','pass0008'),(9,'avarro@example.com','pass0009'),(10,'eal@example.com','pass0010'),(11,'igueroa@example.com','pass0011'),(12,'pez@example.com','pass0012'),(13,'olinas@example.com','pass0013'),(14,'steban@example.com','pass0014'),(15,'alazar@example.com','pass0015'),(16,'barra@example.com','pass0016'),(17,'eynoso@example.com','pass0017'),(18,'aitn@example.com','pass0018'),(19,'avarro@example.com','pass0019'),(20,'idalgo@example.com','pass0020'),(21,'edina@example.com','pass0021'),(22,'costa@example.com','pass0022'),(23,'vila@example.com','pass0023'),(24,'az@example.com','pass0024'),(25,'mez@example.com','pass0025'),(26,'ojas@example.com','pass0026'),(27,'errera@example.com','pass0027'),(28,'avarro@example.com','pass0028'),(29,'nchez@example.com','pass0029'),(30,'avarro@example.com','pass0030'),(31,'pez@example.com','pass0031'),(32,'arrizo@example.com','pass0032'),(33,'rito@example.com','pass0033'),(34,'vila@example.com','pass0034'),(35,'avarro@example.com','pass0035'),(36,'steban@example.com','pass0036'),(37,'ivera@example.com','pass0037'),(38,'ivera@example.com','pass0038'),(39,'ernndez@example.com','pass0039'),(40,'igueroa@example.com','pass0040'),(41,'costa@example.com','pass0041'),(42,'pez@example.com','pass0042'),(43,'eal@example.com','pass0043'),(44,'alazar@example.com','pass0044'),(45,'nchez@example.com','pass0045'),(46,'ojas@example.com','pass0046'),(47,'aldo@example.com','pass0047'),(48,'mez@example.com','pass0048'),(49,'nchez@example.com','pass0049'),(50,'mez@example.com','pass0050'),(51,'orres@example.com','pass0051'),(52,'nchez@example.com','pass0052'),(53,'idalgo@example.com','pass0053'),(54,'avarro@example.com','pass0054'),(55,'eal@example.com','pass0055'),(56,'pez@example.com','pass0056'),(57,'az@example.com','pass0057'),(58,'eynoso@example.com','pass0058'),(59,'ojas@example.com','pass0059'),(60,'eynoso@example.com','pass0060'),(61,'rodriguez@example.com','pass0061'),(62,'alvarez@example.com','pass0062'),(63,'garcia@example.com','pass0063'),(64,'navarro@example.com','pass0064'),(65,'castro@example.com','pass0065'),(66,'gimenez@example.com','pass0066'),(67,'gimenez@example.com','pass0067'),(68,'martinez@example.com','pass0068'),(69,'romero@example.com','pass0069'),(70,'lopez@example.com','pass0070'),(71,'sanchez@example.com','pass0071'),(72,'diaz@example.com','pass0072'),(73,'fernandez@example.com','pass0073'),(74,'perez@example.com','pass0074'),(75,'silva@example.com','pass0075'),(76,'molina@example.com','pass0076'),(77,'ortega@example.com','pass0077'),(78,'ibarra@example.com','pass0078'),(79,'ruiz@example.com','pass0079'),(80,'torres@example.com','pass0080'),(81,'castro@example.com','pass0081'),(82,'garcia@example.com','pass0082'),(83,'lopez@example.com','pass0083'),(84,'gimenez@example.com','pass0084'),(85,'navarro@example.com','pass0085'),(86,'sanchez@example.com','pass0086'),(87,'rodriguez@example.com','pass0087'),(88,'romero@example.com','pass0088'),(89,'perez@example.com','pass0089'),(90,'silva@example.com','pass0090'),(91,'molina@example.com','pass0091'),(92,'ortega@example.com','pass0092'),(93,'ibarra@example.com','pass0093'),(94,'ruiz@example.com','pass0094'),(95,'torres@example.com','pass0095'),(96,'castro@example.com','pass0096'),(97,'garcia@example.com','pass0097'),(98,'lopez@example.com','pass0098'),(99,'gimenez@example.com','pass0099'),(100,'navarro@example.com','pass0100'),(101,'sanchez@example.com','pass0101'),(102,'rodriguez@example.com','pass0102'),(103,'romero@example.com','pass0103'),(104,'perez@example.com','pass0104'),(105,'silva@example.com','pass0105'),(106,'molina@example.com','pass0106'),(107,'ortega@example.com','pass0107'),(108,'ibarra@example.com','pass0108'),(109,'ruiz@example.com','pass0109'),(110,'torres@example.com','pass0110'),(111,'castro@example.com','pass0111'),(112,'garcia@example.com','pass0112'),(113,'lopez@example.com','pass0113'),(114,'castro@example.com','pass0114'),(115,'martinez@example.com','pass0115'),(116,'gomez@example.com','pass0116'),(117,'sanchez@example.com','pass0117'),(118,'ortega@example.com','pass0118'),(119,'ibarra@example.com','pass0119'),(120,'romero@example.com','pass0120');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-27 11:50:53
