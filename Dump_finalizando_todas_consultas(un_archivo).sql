CREATE DATABASE  IF NOT EXISTS `empresaconstruccion` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `empresaconstruccion`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: empresaconstruccion
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
-- Table structure for table `accidente`
--

DROP TABLE IF EXISTS `accidente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accidente` (
  `idAccidente` int NOT NULL AUTO_INCREMENT,
  `idEmpleado` int DEFAULT NULL,
  `descripcion` varchar(1024) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`idAccidente`),
  KEY `idEmpleado` (`idEmpleado`),
  CONSTRAINT `accidente_ibfk_1` FOREIGN KEY (`idEmpleado`) REFERENCES `empleado` (`idEmpleado`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accidente`
--

LOCK TABLES `accidente` WRITE;
/*!40000 ALTER TABLE `accidente` DISABLE KEYS */;
INSERT INTO `accidente` VALUES (1,1,'Corte en la mano con herramienta afilada','2024-01-01'),(2,2,'Caída desde escalera mientras almacenaba materiales','2024-01-02'),(3,3,'Golpe en la cabeza con objeto pesado','2024-01-03'),(4,4,'Lesión en la espalda por levantar cajas pesadas','2024-01-04'),(5,5,'Quemadura con producto químico','2024-01-05'),(6,6,'Resbalón en suelo mojado','2024-01-06'),(7,7,'Atrapamiento de dedo en puerta','2024-01-07'),(8,8,'Fractura de brazo al caer de andamio','2024-01-08'),(9,9,'Inhalación de polvo durante limpieza de almacén','2024-01-09'),(10,10,'Corte en la pierna con sierra','2024-01-10'),(11,11,'Golpe en el pie con paleta','2024-01-11'),(12,12,'Caída al tropezar con cable suelto','2024-01-12'),(13,13,'Lesión en el hombro por cargar sacos de cemento','2024-01-13'),(14,14,'Corte en el brazo con vidrio roto','2024-01-14'),(15,15,'Golpe en la espalda al caer de escalerilla','2024-01-15'),(16,16,'Quemadura con soldador','2024-01-16'),(17,17,'Resbalón en escaleras por derrame de aceite','2024-01-17'),(18,18,'Atrapamiento de mano en máquina','2024-01-18'),(19,19,'Fractura de pierna al caer de altura','2024-01-19'),(20,20,'Inhalación de gases tóxicos','2024-01-20'),(21,21,'Corte en el pie con clavo','2024-01-21'),(22,22,'Golpe en la cabeza con barra de metal','2024-01-22'),(23,23,'Caída por escalera rota','2024-01-23'),(24,24,'Lesión en la muñeca al manipular herramientas','2024-01-24'),(25,25,'Corte en el dedo con cutter','2024-01-25'),(26,26,'Golpe en la pierna con caja','2024-01-26'),(27,27,'Quemadura con líquido caliente','2024-01-27'),(28,28,'Resbalón en zona de trabajo por agua','2024-01-28'),(29,29,'Atrapamiento de pie en montacargas','2024-01-29'),(30,30,'Fractura de dedo al manipular paleta','2024-01-30'),(31,31,'Inhalación de polvo durante demolición','2024-01-31'),(32,32,'Corte en el brazo con herramienta eléctrica','2024-02-01'),(33,33,'Golpe en el pie con madera','2024-02-02'),(34,34,'Caída al tropezar con escombros','2024-02-03'),(35,35,'Lesión en el cuello al levantar objeto pesado','2024-02-04'),(36,36,'Corte en la mano con máquina de corte','2024-02-05'),(37,37,'Golpe en la espalda con estructura metálica','2024-02-06'),(38,38,'Quemadura con asfalto caliente','2024-02-07'),(39,39,'Resbalón en piso mojado','2024-02-08'),(40,40,'Atrapamiento de brazo en compresor','2024-02-09'),(41,41,'Fractura de tobillo al caer de plataforma','2024-02-10'),(42,42,'Inhalación de vapores tóxicos','2024-02-11'),(43,43,'Corte en la pierna con herramienta manual','2024-02-12'),(44,44,'Golpe en la cabeza con viga','2024-02-13'),(45,45,'Caída al tropezar con cable','2024-02-14'),(46,46,'Lesión en la espalda al cargar ladrillos','2024-02-15'),(47,47,'Corte en el brazo con sierra de mesa','2024-02-16'),(48,48,'Golpe en el pie con contenedor','2024-02-17'),(49,49,'Quemadura con llama abierta','2024-02-18'),(50,50,'Resbalón en taller por aceite derramado','2024-02-19'),(51,1,'Corte en la pierna con cuchillo','2023-05-16'),(52,2,'Caída de una escalera','2022-11-25'),(53,3,'Golpe en la cabeza con material pesado','2023-02-10'),(54,4,'Quemadura con soldadora','2022-08-03'),(55,5,'Resbalón en el piso mojado','2023-01-19'),(56,6,'Fractura de brazo al cargar material','2023-03-22'),(57,7,'Inhalación de polvo tóxico','2022-09-15'),(58,8,'Lesión en la espalda al levantar peso','2023-04-08'),(59,9,'Atrapamiento de mano en maquinaria','2022-12-05'),(60,10,'Caída de objeto desde altura','2023-07-14'),(61,11,'Corte con sierra eléctrica','2022-10-30'),(62,12,'Golpe con herramienta manual','2023-06-21'),(63,13,'Quemadura con producto químico','2023-03-01'),(64,14,'Caída en foso de obra','2022-11-11'),(65,15,'Desmayo por calor excesivo','2023-02-28'),(66,16,'Lesión en rodilla al agacharse','2022-07-20'),(67,17,'Atrapamiento de pie en escombros','2023-04-15'),(68,18,'Golpe en la cara con andamio','2023-01-04'),(69,19,'Corte con vidrio roto','2022-12-22'),(70,20,'Fractura de pierna al caer','2023-05-05'),(71,21,'Inhalación de vapores tóxicos','2022-09-09'),(72,22,'Quemadura con soldadura eléctrica','2023-06-11'),(73,23,'Corte con herramienta afilada','2023-03-30'),(74,24,'Lesión en el tobillo al tropezar','2022-10-15'),(75,25,'Caída desde andamio','2023-07-02'),(76,26,'Golpe con estructura metálica','2022-08-28'),(77,27,'Corte con chapa metálica','2023-01-22'),(78,28,'Quemadura con ácido','2022-11-07'),(79,29,'Lesión en la mano al usar taladro','2023-04-25'),(80,30,'Desmayo por inhalación de gas','2023-02-14');
/*!40000 ALTER TABLE `accidente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articulo`
--

DROP TABLE IF EXISTS `articulo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `articulo` (
  `idArt` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) DEFAULT NULL,
  `costoUnitario` decimal(10,2) DEFAULT NULL,
  `idRubro` int DEFAULT NULL,
  PRIMARY KEY (`idArt`),
  KEY `idRubro` (`idRubro`),
  CONSTRAINT `articulo_ibfk_1` FOREIGN KEY (`idRubro`) REFERENCES `rubro` (`idRubro`)
) ENGINE=InnoDB AUTO_INCREMENT=1110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articulo`
--

LOCK TABLES `articulo` WRITE;
/*!40000 ALTER TABLE `articulo` DISABLE KEYS */;
INSERT INTO `articulo` VALUES (1,'Bolsa de Cemento 50kg',10000.00,1),(2,'Hierro de construcción 6m',25000.00,2),(3,'Pintura látex 20L',30000.00,3),(4,'Caño PVC 3m',8000.00,4),(5,'Ladrillo común',150.00,5),(6,'Tabla de madera 2x4',2000.00,6),(7,'Cerámico 60x60',3500.00,7),(8,'Adhesivo de contacto 1L',10000.00,8),(9,'Martillo de carpintero',4000.00,9),(10,'Llave de paso 1/2\"',5000.00,10),(11,'Bolsa de Cemento 25kg',5000.00,1),(12,'Hierro de construcción 8m',30000.00,2),(13,'Pintura esmalte 5L',15000.00,3),(14,'Caño PVC 1.5m',4000.00,4),(15,'Ladrillo hueco',200.00,5),(16,'Viga de madera 2x6',4000.00,6),(17,'Cerámico 45x45',2500.00,7),(18,'Adhesivo vinílico 2L',20000.00,8),(19,'Destornillador estrella',3000.00,9),(20,'Tubo de cobre 2m',6000.00,10),(21,'Bolsa de Cemento rápido 50kg',12000.00,1),(22,'Hierro corrugado 10m',35000.00,2),(23,'Pintura sintética 10L',20000.00,3),(24,'Caño galvanizado 4m',10000.00,4),(25,'Ladrillo refractario',300.00,5),(26,'Madera terciada 1.5x3',3000.00,6),(27,'Cerámico 30x30',1500.00,7),(28,'Adhesivo epoxi 500ml',5000.00,8),(29,'Alicate de electricista',5000.00,9),(30,'Válvula de esfera 3/4\"',7000.00,10),(31,'Bolsa de Cemento blanco 40kg',11000.00,1),(32,'Hierro estructural 12m',40000.00,2),(33,'Pintura epoxi 15L',25000.00,3),(34,'Caño de acero inoxidable 5m',15000.00,4),(35,'Ladrillo ecológico',180.00,5),(36,'Tablero OSB 1.2x2.4',3500.00,6),(37,'Cerámico 50x50',3000.00,7),(38,'Adhesivo de montaje 3L',15000.00,8),(39,'Llave ajustable 12\"',4500.00,9),(40,'Codo de PVC 1\"',2500.00,10),(41,'Bolsa de Cemento Portland 50kg',10500.00,1),(42,'Hierro ángulo 6m',26000.00,2),(43,'Pintura antióxido 20L',32000.00,3),(44,'Caño de cobre 3m',8500.00,4),(45,'Ladrillo termoaislante',250.00,5),(46,'Listón de madera 2x2',2200.00,6),(47,'Cerámico rústico 60x60',3600.00,7),(48,'Adhesivo para baldosas 1L',10500.00,8),(49,'Llave inglesa 10\"',4800.00,9),(50,'Tubo de PVC 1/2\"',5200.00,10),(51,'Cable de cobre 2.5mm',1500.00,11),(52,'Interruptor termomagnético 20A',3500.00,11),(53,'Lámpara LED 9W',700.00,11),(54,'Toma corriente doble',900.00,11),(1100,'Cemento Portland',1500.00,1),(1101,'Hierro de Construcción',2000.00,2),(1102,'Pintura Blanca',3500.00,3),(1103,'Caño PVC 20mm',500.00,4),(1104,'Ladrillo Común',50.00,5),(1105,'Tabla de Madera',7000.00,6),(1106,'Cerámico Blanco',2000.00,7),(1107,'Adhesivo para Cerámicos',1000.00,8),(1108,'Martillo',3000.00,9),(1109,'Grifo de Cocina',5000.00,10);
/*!40000 ALTER TABLE `articulo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria_empleado`
--

DROP TABLE IF EXISTS `categoria_empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria_empleado` (
  `idCatEmp` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `idSalario` int DEFAULT NULL,
  PRIMARY KEY (`idCatEmp`),
  KEY `fk_salario` (`idSalario`),
  CONSTRAINT `fk_salario` FOREIGN KEY (`idSalario`) REFERENCES `salario` (`idSalario`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria_empleado`
--

LOCK TABLES `categoria_empleado` WRITE;
/*!40000 ALTER TABLE `categoria_empleado` DISABLE KEYS */;
INSERT INTO `categoria_empleado` VALUES (1,'Operario','Los operarios reciben jornales quincenales',1),(2,'Mensual','Los empleados mensuales reciben sueldos mensuales',2),(3,'Jerárquico','Los empleados jerárquicos reciben sueldos mensuales',3);
/*!40000 ALTER TABLE `categoria_empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `idCliente` int NOT NULL AUTO_INCREMENT,
  `tipoCliente` char(1) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `nombreCompleto` varchar(255) DEFAULT NULL,
  `cuit` varchar(20) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `credito` decimal(10,2) DEFAULT NULL,
  `fechaAlta` date DEFAULT NULL,
  `idLocalizacion` int DEFAULT NULL,
  PRIMARY KEY (`idCliente`),
  KEY `idLocalizacion` (`idLocalizacion`),
  CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`idLocalizacion`) REFERENCES `localizacion` (`idLocalizacion`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'A','Responsable Inscripto','Juan Pérez','20-12345678-1','11-4000001','juan.perez@example.com',10000.00,'2018-01-01',1),(2,'C','Monotributista','María García','20-12345678-2','351-4000002','maria.garcia@example.com',20000.00,'2018-02-01',2),(3,'B','Consumidor Final','Carlos López','20-12345678-3','342-4000003','carlos.lopez@example.com',30000.00,'2018-03-01',3),(4,'A','Responsable Inscripto','Laura Fernández','20-12345678-4','261-4000004','laura.fernandez@example.com',40000.00,'2018-04-01',4),(5,'C','Monotributista','José Martínez','20-12345678-5','381-4000005','jose.martinez@example.com',50000.00,'2018-05-01',5),(6,'B','Consumidor Final','Ana Gómez','20-12345678-6','343-4000006','ana.gomez@example.com',60000.00,'2018-06-01',6),(7,'A','Responsable Inscripto','Pedro González','20-12345678-7','387-4000007','pedro.gonzalez@example.com',70000.00,'2018-07-01',7),(8,'C','Monotributista','Lucía Ramírez','20-12345678-8','362-4000008','lucia.ramirez@example.com',80000.00,'2018-08-01',8),(9,'B','Consumidor Final','Ricardo Sánchez','20-12345678-9','379-4000009','ricardo.sanchez@example.com',90000.00,'2018-09-01',9),(10,'A','Responsable Inscripto','Patricia Herrera','20-12345678-10','376-4000010','patricia.herrera@example.com',100000.00,'2018-10-01',10),(11,'C','Monotributista','Francisco Castro','20-12345678-11','264-4000011','francisco.castro@example.com',110000.00,'2018-11-01',11),(12,'B','Consumidor Final','Sofía Morales','20-12345678-12','266-4000012','sofia.morales@example.com',120000.00,'2018-12-01',12),(13,'A','Responsable Inscripto','Fernando Rodríguez','20-12345678-13','383-4000013','fernando.rodriguez@example.com',130000.00,'2019-01-01',13),(14,'C','Monotributista','Gabriela Ortiz','20-12345678-14','380-4000014','gabriela.ortiz@example.com',140000.00,'2019-02-01',14),(15,'B','Consumidor Final','Andrés Torres','20-12345678-15','388-4000015','andres.torres@example.com',150000.00,'2019-03-01',15),(16,'A','Responsable Inscripto','Natalia Vega','20-12345678-16','298-4000016','natalia.vega@example.com',160000.00,'2019-04-01',16),(17,'C','Monotributista','Manuel Díaz','20-12345678-17','299-4000017','manuel.diaz@example.com',170000.00,'2019-05-01',17),(18,'B','Consumidor Final','Camila Ríos','20-12345678-18','2954-4000018','camila.rios@example.com',180000.00,'2019-06-01',18),(19,'A','Responsable Inscripto','Javier Luna','20-12345678-19','370-4000019','javier.luna@example.com',190000.00,'2019-07-01',19),(20,'C','Monotributista','Alicia Mendoza','20-12345678-20','280-4000020','alicia.mendoza@example.com',200000.00,'2019-08-01',20),(21,'B','Consumidor Final','Diego Suárez','20-12345678-21','2966-4000021','diego.suarez@example.com',210000.00,'2019-09-01',21),(22,'A','Responsable Inscripto','Valeria Silva','20-12345678-22','2901-4000022','valeria.silva@example.com',220000.00,'2019-10-01',22),(23,'C','Monotributista','Gustavo Moreno','20-12345678-23','385-4000023','gustavo.moreno@example.com',230000.00,'2019-11-01',23),(24,'B','Consumidor Final','Rosa Vargas','20-12345678-24','379-4000024','rosa.vargas@example.com',240000.00,'2019-12-01',24),(25,'A','Responsable Inscripto','Marta Aguirre','20-12345678-25','11-4000025','marta.aguirre@example.com',250000.00,'2020-01-01',25),(26,'C','Monotributista','Sebastián Navarro','20-12345678-26','351-4000026','sebastian.navarro@example.com',260000.00,'2020-02-01',26),(27,'B','Consumidor Final','Lorena Rojas','20-12345678-27','342-4000027','lorena.rojas@example.com',270000.00,'2020-03-01',27),(28,'A','Responsable Inscripto','Ramón Blanco','20-12345678-28','261-4000028','ramon.blanco@example.com',280000.00,'2020-04-01',28),(29,'C','Monotributista','Andrea Cruz','20-12345678-29','381-4000029','andrea.cruz@example.com',290000.00,'2020-05-01',29),(30,'B','Consumidor Final','Hugo Méndez','20-12345678-30','343-4000030','hugo.mendez@example.com',300000.00,'2020-06-01',30),(31,'A','Responsable Inscripto','Liliana Castro','20-12345678-31','387-4000031','liliana.castro@example.com',310000.00,'2020-07-01',31),(32,'C','Monotributista','Roberto Molina','20-12345678-32','362-4000032','roberto.molina@example.com',320000.00,'2020-08-01',32),(33,'B','Consumidor Final','Elena Vázquez','20-12345678-33','379-4000033','elena.vazquez@example.com',330000.00,'2020-09-01',33),(34,'A','Responsable Inscripto','Miguel Campos','20-12345678-34','376-4000034','miguel.campos@example.com',340000.00,'2020-10-01',34),(35,'C','Monotributista','Silvana Romero','20-12345678-35','264-4000035','silvana.romero@example.com',350000.00,'2020-11-01',35),(36,'B','Consumidor Final','Felipe Díaz','20-12345678-36','381-4000036','felipe.diaz@example.com',360000.00,'2020-12-01',36),(37,'A','Responsable Inscripto','Graciela Ruiz','20-12345678-37','266-4000037','graciela.ruiz@example.com',370000.00,'2021-01-01',37),(38,'C','Monotributista','Alberto Herrera','20-12345678-38','383-4000038','alberto.herrera@example.com',380000.00,'2021-02-01',38),(39,'B','Consumidor Final','Inés Castro','20-12345678-39','380-4000039','ines.castro@example.com',390000.00,'2021-03-01',39),(40,'A','Responsable Inscripto','Tomás Silva','20-12345678-40','388-4000040','tomas.silva@example.com',400000.00,'2021-04-01',40),(41,'C','Monotributista','Rafael Reyes','20-12345678-41','298-4000041','rafael.reyes@example.com',410000.00,'2021-05-01',41),(42,'B','Consumidor Final','Verónica Vargas','20-12345678-42','299-4000042','veronica.vargas@example.com',420000.00,'2021-06-01',42),(43,'A','Responsable Inscripto','Eduardo Benítez','20-12345678-43','2954-4000043','eduardo.benitez@example.com',430000.00,'2021-07-01',43),(44,'C','Monotributista','Florencia Morales','20-12345678-44','370-4000044','florencia.morales@example.com',440000.00,'2021-08-01',44),(45,'B','Consumidor Final','Martín Ortiz','20-12345678-45','280-4000045','martin.ortiz@example.com',450000.00,'2021-09-01',45),(46,'A','Responsable Inscripto','Laura Herrera','20-12345678-46','2966-4000046','laura.herrera@example.com',460000.00,'2021-10-01',46),(47,'C','Monotributista','Santiago Torres','20-12345678-47','2901-4000047','santiago.torres@example.com',470000.00,'2021-11-01',47),(48,'B','Consumidor Final','Mónica Aguirre','20-12345678-48','385-4000048','monica.aguirre@example.com',480000.00,'2021-12-01',48),(49,'A','Responsable Inscripto','Jorge Fernández','20-12345678-49','379-4000049','jorge.fernandez@example.com',490000.00,'2022-01-01',49),(50,'C','Monotributista','Mariana Suárez','20-12345678-50','351-4000050','mariana.suarez@example.com',500000.00,'2022-02-01',50);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `concepto`
--

DROP TABLE IF EXISTS `concepto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `concepto` (
  `idConcepto` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) DEFAULT NULL,
  `descuento` decimal(3,2) DEFAULT NULL,
  `monto` decimal(10,2) DEFAULT NULL,
  `signo` char(1) DEFAULT NULL,
  PRIMARY KEY (`idConcepto`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `concepto`
--

LOCK TABLES `concepto` WRITE;
/*!40000 ALTER TABLE `concepto` DISABLE KEYS */;
INSERT INTO `concepto` VALUES (1,'Descuento por volumen',0.10,0.00,'-'),(2,'Recargo por demora pago',0.00,200.00,'+'),(3,'Descuento por pronto pago',0.05,0.00,'-');
/*!40000 ALTER TABLE `concepto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `concepto_liquidacion`
--

DROP TABLE IF EXISTS `concepto_liquidacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `concepto_liquidacion` (
  `idConLiq` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(255) DEFAULT NULL,
  `signo` char(1) DEFAULT NULL,
  `monto` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`idConLiq`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `concepto_liquidacion`
--

LOCK TABLES `concepto_liquidacion` WRITE;
/*!40000 ALTER TABLE `concepto_liquidacion` DISABLE KEYS */;
INSERT INTO `concepto_liquidacion` VALUES (1,'Vacaciones','+',15000.00),(2,'Despido','+',20000.00),(3,'Bono Anual','+',100000.00),(4,'Premio por Productividad','+',50000.00),(5,'Dia no trabajado','-',2000.00),(6,'Adelanto de Sueldo','-',0.00),(7,'Hora extra','+',3000.00),(8,'Retención por Ausencia por dia','-',1000.00),(9,'Obra social','-',15000.00);
/*!40000 ALTER TABLE `concepto_liquidacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cotizacion`
--

DROP TABLE IF EXISTS `cotizacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cotizacion` (
  `idCotizacion` int NOT NULL AUTO_INCREMENT,
  `idPedidoCompra` int DEFAULT NULL,
  `idProveedor` int DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idCotizacion`),
  KEY `idPedidoCompra` (`idPedidoCompra`),
  KEY `idProveedor` (`idProveedor`),
  CONSTRAINT `cotizacion_ibfk_1` FOREIGN KEY (`idPedidoCompra`) REFERENCES `pedido_compra` (`idPedidoCompra`),
  CONSTRAINT `cotizacion_ibfk_2` FOREIGN KEY (`idProveedor`) REFERENCES `proveedor` (`idProveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cotizacion`
--

LOCK TABLES `cotizacion` WRITE;
/*!40000 ALTER TABLE `cotizacion` DISABLE KEYS */;
INSERT INTO `cotizacion` VALUES (1,1,1,'2024-07-13','aprobado'),(2,2,2,'2024-07-14','aprobado'),(3,3,3,'2024-07-15','aprobado'),(4,4,4,'2024-07-16','aprobado'),(5,5,5,'2024-07-17','aprobado'),(6,6,6,'2024-07-13','aprobado'),(7,7,7,'2024-07-14','aprobado'),(8,8,8,'2024-07-15','aprobado'),(9,9,9,'2024-07-16','aprobado'),(10,10,1,'2024-07-17','aprobado'),(11,44,8,'2024-07-13','aprobado'),(12,45,6,'2024-07-14','aprobado'),(13,11,1,'2024-07-13','pendiente'),(14,12,2,'2024-07-14','pendiente'),(15,13,3,'2024-07-15','pendiente'),(16,14,4,'2024-07-16','pendiente'),(17,15,5,'2024-07-17','pendiente'),(18,16,6,'2024-07-18','pendiente'),(19,17,7,'2024-07-19','pendiente'),(20,18,8,'2024-07-20','pendiente'),(21,19,9,'2024-07-21','pendiente'),(22,20,10,'2024-07-22','pendiente'),(23,15,6,'2024-07-16','pendiente'),(24,15,7,'2024-07-16','pendiente');
/*!40000 ALTER TABLE `cotizacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departamento`
--

DROP TABLE IF EXISTS `departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departamento` (
  `idDep` int NOT NULL AUTO_INCREMENT,
  `idSector` int DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idDep`),
  KEY `idSector` (`idSector`),
  CONSTRAINT `departamento_ibfk_1` FOREIGN KEY (`idSector`) REFERENCES `sector` (`idSector`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamento`
--

LOCK TABLES `departamento` WRITE;
/*!40000 ALTER TABLE `departamento` DISABLE KEYS */;
INSERT INTO `departamento` VALUES (1,1,'Administración General'),(2,1,'Administración de Personal'),(3,2,'Ventas Nacionales'),(4,2,'Ventas Internacionales'),(5,3,'Compras Locales'),(6,3,'Compras Internacionales'),(7,4,'Almacén Central'),(8,4,'Almacén de Sucursales'),(9,5,'Logística Interna'),(10,5,'Logística Externa'),(11,6,'Selección de Personal'),(12,6,'Capacitación y Desarrollo'),(13,7,'Soporte Técnico'),(14,7,'Desarrollo de Software'),(15,8,'Contabilidad General'),(16,8,'Contabilidad de Costos'),(17,9,'Tesorería General'),(18,9,'Tesorería de Sucursales');
/*!40000 ALTER TABLE `departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deposito`
--

DROP TABLE IF EXISTS `deposito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deposito` (
  `idDeposito` int NOT NULL AUTO_INCREMENT,
  `idLocalizacion` int DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idDeposito`),
  KEY `idLocalizacion` (`idLocalizacion`),
  CONSTRAINT `deposito_ibfk_1` FOREIGN KEY (`idLocalizacion`) REFERENCES `localizacion` (`idLocalizacion`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deposito`
--

LOCK TABLES `deposito` WRITE;
/*!40000 ALTER TABLE `deposito` DISABLE KEYS */;
INSERT INTO `deposito` VALUES (1,1,'Centro'),(2,2,'Norte'),(3,3,'Yerba Buena'),(4,4,'Tafí Viejo'),(5,5,'San Martín'),(6,6,'Mitre'),(7,7,'Córdoba');
/*!40000 ALTER TABLE `deposito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_cotizacion`
--

DROP TABLE IF EXISTS `detalle_cotizacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_cotizacion` (
  `idDetalleCotizacion` int NOT NULL AUTO_INCREMENT,
  `idCotizacion` int DEFAULT NULL,
  `idArt` int DEFAULT NULL,
  `precioUnitario` decimal(10,2) DEFAULT NULL,
  `cantidad` int DEFAULT NULL,
  PRIMARY KEY (`idDetalleCotizacion`),
  KEY `idCotizacion` (`idCotizacion`),
  KEY `idArt` (`idArt`),
  CONSTRAINT `detalle_cotizacion_ibfk_1` FOREIGN KEY (`idCotizacion`) REFERENCES `cotizacion` (`idCotizacion`),
  CONSTRAINT `detalle_cotizacion_ibfk_2` FOREIGN KEY (`idArt`) REFERENCES `articulo` (`idArt`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_cotizacion`
--

LOCK TABLES `detalle_cotizacion` WRITE;
/*!40000 ALTER TABLE `detalle_cotizacion` DISABLE KEYS */;
INSERT INTO `detalle_cotizacion` VALUES (1,1,1,8000.00,50),(2,2,2,15000.00,20),(3,3,3,20000.00,1000),(4,4,4,5000.00,30),(5,5,5,70.00,6870),(6,6,6,1000.00,40),(7,7,7,2500.00,25),(8,8,8,8000.00,1345),(9,9,9,3000.00,35),(10,10,1,7000.00,50),(11,11,48,9000.00,25),(12,12,28,3000.00,60),(28,23,6,1800.00,40),(29,24,6,1500.00,40),(30,17,6,1350.00,40);
/*!40000 ALTER TABLE `detalle_cotizacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_factura_c`
--

DROP TABLE IF EXISTS `detalle_factura_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_factura_c` (
  `idDetFactura` int NOT NULL AUTO_INCREMENT,
  `idFactura` int DEFAULT NULL,
  `idArt` int DEFAULT NULL,
  `cantidad` int DEFAULT NULL,
  `precioUnitario` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`idDetFactura`),
  KEY `idFactura` (`idFactura`),
  KEY `idArt` (`idArt`),
  CONSTRAINT `detalle_factura_c_ibfk_1` FOREIGN KEY (`idFactura`) REFERENCES `factura_c` (`idFactura`),
  CONSTRAINT `detalle_factura_c_ibfk_2` FOREIGN KEY (`idArt`) REFERENCES `articulo` (`idArt`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_factura_c`
--

LOCK TABLES `detalle_factura_c` WRITE;
/*!40000 ALTER TABLE `detalle_factura_c` DISABLE KEYS */;
INSERT INTO `detalle_factura_c` VALUES (1,1,1,50,8000.00),(2,2,2,20,15000.00),(3,3,3,1000,20000.00),(4,4,4,30,5000.00),(5,5,5,6870,70.00),(6,6,6,40,1000.00),(7,7,7,25,2500.00),(8,8,8,1340,8000.00),(9,9,9,35,3000.00),(10,10,1,50,7000.00),(11,11,48,25,9000.00),(12,12,28,60,3000.00);
/*!40000 ALTER TABLE `detalle_factura_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_factura_v`
--

DROP TABLE IF EXISTS `detalle_factura_v`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_factura_v` (
  `idDetFactura` int NOT NULL AUTO_INCREMENT,
  `idFactura` int DEFAULT NULL,
  `idArt` int DEFAULT NULL,
  `precioUnitario` decimal(10,2) DEFAULT NULL,
  `cantidad` int DEFAULT NULL,
  PRIMARY KEY (`idDetFactura`),
  KEY `idFactura` (`idFactura`),
  KEY `idArt` (`idArt`),
  CONSTRAINT `detalle_factura_v_ibfk_1` FOREIGN KEY (`idFactura`) REFERENCES `factura_v` (`idFactura`),
  CONSTRAINT `detalle_factura_v_ibfk_2` FOREIGN KEY (`idArt`) REFERENCES `articulo` (`idArt`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_factura_v`
--

LOCK TABLES `detalle_factura_v` WRITE;
/*!40000 ALTER TABLE `detalle_factura_v` DISABLE KEYS */;
INSERT INTO `detalle_factura_v` VALUES (1,1,1,10000.00,5),(2,2,2,25000.00,3),(3,3,3,30000.00,2),(4,4,4,8000.00,10),(5,5,5,150.00,100),(6,6,6,2000.00,20),(7,7,7,3500.00,15),(8,8,8,10000.00,5),(9,9,9,4000.00,10),(10,10,10,5000.00,8),(11,11,11,5000.00,8),(12,12,12,30000.00,2),(13,13,13,15000.00,4),(14,14,14,4000.00,10),(15,15,15,200.00,80),(16,16,16,4000.00,10),(17,17,17,2500.00,20),(18,1,2,25000.00,5),(19,10,10,5000.00,30),(20,7,15,200.00,1000),(21,14,9,4000.00,15);
/*!40000 ALTER TABLE `detalle_factura_v` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_liquidacion`
--

DROP TABLE IF EXISTS `detalle_liquidacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_liquidacion` (
  `IdDetLiq` int NOT NULL AUTO_INCREMENT,
  `IdLiquidacion` int DEFAULT NULL,
  `IdSalario` int DEFAULT NULL,
  `IdSalarioFam` int DEFAULT NULL,
  `IdConLiq` int DEFAULT NULL,
  `montoAdelantoSu` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`IdDetLiq`),
  KEY `IdLiquidacion` (`IdLiquidacion`),
  KEY `IdSalario` (`IdSalario`),
  KEY `IdSalarioFam` (`IdSalarioFam`),
  KEY `IdConLiq` (`IdConLiq`),
  CONSTRAINT `detalle_liquidacion_ibfk_1` FOREIGN KEY (`IdLiquidacion`) REFERENCES `liquidacion` (`IdLiquidacion`),
  CONSTRAINT `detalle_liquidacion_ibfk_2` FOREIGN KEY (`IdSalario`) REFERENCES `salario` (`idSalario`),
  CONSTRAINT `detalle_liquidacion_ibfk_3` FOREIGN KEY (`IdSalarioFam`) REFERENCES `salario_familiar` (`idSalarioFam`),
  CONSTRAINT `detalle_liquidacion_ibfk_4` FOREIGN KEY (`IdConLiq`) REFERENCES `concepto_liquidacion` (`idConLiq`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_liquidacion`
--

LOCK TABLES `detalle_liquidacion` WRITE;
/*!40000 ALTER TABLE `detalle_liquidacion` DISABLE KEYS */;
INSERT INTO `detalle_liquidacion` VALUES (1,1,NULL,1,NULL,NULL),(2,1,1,NULL,NULL,NULL),(3,1,NULL,1,NULL,NULL),(4,51,NULL,1,NULL,NULL),(5,2,NULL,1,NULL,NULL),(6,3,NULL,1,NULL,NULL),(7,4,NULL,1,NULL,NULL),(8,5,NULL,1,NULL,NULL),(9,6,NULL,1,NULL,NULL),(10,7,NULL,1,NULL,NULL),(11,8,NULL,1,NULL,NULL),(12,9,NULL,1,NULL,NULL),(13,10,NULL,1,NULL,NULL),(14,41,NULL,1,NULL,NULL),(15,45,NULL,1,NULL,NULL),(16,49,NULL,1,NULL,NULL),(17,1,NULL,1,NULL,NULL),(18,51,NULL,1,NULL,NULL),(19,2,NULL,1,NULL,NULL),(20,2,NULL,1,NULL,NULL),(21,11,NULL,2,NULL,NULL),(22,12,NULL,2,NULL,NULL),(23,13,NULL,2,NULL,NULL),(24,14,NULL,2,NULL,NULL),(25,15,NULL,2,NULL,NULL),(26,16,NULL,2,NULL,NULL),(27,17,NULL,2,NULL,NULL),(28,18,NULL,2,NULL,NULL),(29,19,NULL,2,NULL,NULL),(30,20,NULL,2,NULL,NULL),(31,42,NULL,2,NULL,NULL),(32,46,NULL,2,NULL,NULL),(33,50,NULL,2,NULL,NULL),(34,21,NULL,3,NULL,NULL),(35,22,NULL,3,NULL,NULL),(36,23,NULL,3,NULL,NULL),(37,24,NULL,3,NULL,NULL),(38,25,NULL,3,NULL,NULL),(39,26,NULL,3,NULL,NULL),(40,27,NULL,3,NULL,NULL),(41,28,NULL,3,NULL,NULL),(42,29,NULL,3,NULL,NULL),(43,30,NULL,3,NULL,NULL),(44,43,NULL,3,NULL,NULL),(45,47,NULL,3,NULL,NULL),(46,31,NULL,4,NULL,NULL),(47,32,NULL,4,NULL,NULL),(48,33,NULL,4,NULL,NULL),(49,34,NULL,4,NULL,NULL),(50,35,NULL,4,NULL,NULL),(51,36,NULL,4,NULL,NULL),(52,37,NULL,4,NULL,NULL),(53,38,NULL,4,NULL,NULL),(54,39,NULL,4,NULL,NULL),(55,40,NULL,4,NULL,NULL),(56,44,NULL,4,NULL,NULL),(57,48,NULL,4,NULL,NULL),(67,51,1,NULL,NULL,NULL),(68,4,1,NULL,NULL,NULL),(69,7,1,NULL,NULL,NULL),(70,10,1,NULL,NULL,NULL),(71,13,1,NULL,NULL,NULL),(72,16,1,NULL,NULL,NULL),(73,19,1,NULL,NULL,NULL),(74,22,1,NULL,NULL,NULL),(75,25,1,NULL,NULL,NULL),(76,28,1,NULL,NULL,NULL),(77,31,1,NULL,NULL,NULL),(78,34,1,NULL,NULL,NULL),(79,37,1,NULL,NULL,NULL),(80,40,1,NULL,NULL,NULL),(81,43,1,NULL,NULL,NULL),(82,46,1,NULL,NULL,NULL),(83,49,1,NULL,NULL,NULL),(84,2,2,NULL,NULL,NULL),(85,5,2,NULL,NULL,NULL),(86,8,2,NULL,NULL,NULL),(87,11,2,NULL,NULL,NULL),(88,14,2,NULL,NULL,NULL),(89,17,2,NULL,NULL,NULL),(90,20,2,NULL,NULL,NULL),(91,23,2,NULL,NULL,NULL),(92,26,2,NULL,NULL,NULL),(93,29,2,NULL,NULL,NULL),(94,32,2,NULL,NULL,NULL),(95,35,2,NULL,NULL,NULL),(96,38,2,NULL,NULL,NULL),(97,41,2,NULL,NULL,NULL),(98,44,2,NULL,NULL,NULL),(99,47,2,NULL,NULL,NULL),(100,50,2,NULL,NULL,NULL),(101,3,3,NULL,NULL,NULL),(102,6,3,NULL,NULL,NULL),(103,9,3,NULL,NULL,NULL),(104,12,3,NULL,NULL,NULL),(105,15,3,NULL,NULL,NULL),(106,18,3,NULL,NULL,NULL),(107,21,3,NULL,NULL,NULL),(108,24,3,NULL,NULL,NULL),(109,27,3,NULL,NULL,NULL),(110,30,3,NULL,NULL,NULL),(111,33,3,NULL,NULL,NULL),(112,36,3,NULL,NULL,NULL),(113,39,3,NULL,NULL,NULL),(114,42,3,NULL,NULL,NULL),(115,45,3,NULL,NULL,NULL),(116,48,3,NULL,NULL,NULL);
/*!40000 ALTER TABLE `detalle_liquidacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_remito_c`
--

DROP TABLE IF EXISTS `detalle_remito_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_remito_c` (
  `idDetRemito` int NOT NULL AUTO_INCREMENT,
  `idRemito` int DEFAULT NULL,
  `idStock` int DEFAULT NULL,
  `cantidad` int DEFAULT NULL,
  PRIMARY KEY (`idDetRemito`),
  KEY `idRemito` (`idRemito`),
  KEY `idStock` (`idStock`),
  CONSTRAINT `detalle_remito_c_ibfk_1` FOREIGN KEY (`idRemito`) REFERENCES `remito` (`idRemito`),
  CONSTRAINT `detalle_remito_c_ibfk_2` FOREIGN KEY (`idStock`) REFERENCES `stock` (`idStock`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_remito_c`
--

LOCK TABLES `detalle_remito_c` WRITE;
/*!40000 ALTER TABLE `detalle_remito_c` DISABLE KEYS */;
INSERT INTO `detalle_remito_c` VALUES (1,1,1,250),(2,1,25,50),(3,2,3,10),(4,2,27,100),(5,3,5,250),(6,3,29,50),(7,4,7,250),(8,4,31,50),(9,5,9,250),(10,5,33,50),(11,6,11,250),(12,6,35,50),(13,7,13,250),(14,7,37,50),(15,8,15,250),(16,8,39,50),(17,9,17,250);
/*!40000 ALTER TABLE `detalle_remito_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_remito_v`
--

DROP TABLE IF EXISTS `detalle_remito_v`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_remito_v` (
  `idDetRemito` int NOT NULL AUTO_INCREMENT,
  `idRemito` int DEFAULT NULL,
  `idStock` int DEFAULT NULL,
  PRIMARY KEY (`idDetRemito`),
  KEY `idRemito` (`idRemito`),
  KEY `idStock` (`idStock`),
  CONSTRAINT `detalle_remito_v_ibfk_1` FOREIGN KEY (`idRemito`) REFERENCES `remito_v` (`idRemito`),
  CONSTRAINT `detalle_remito_v_ibfk_2` FOREIGN KEY (`idStock`) REFERENCES `stock` (`idStock`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_remito_v`
--

LOCK TABLES `detalle_remito_v` WRITE;
/*!40000 ALTER TABLE `detalle_remito_v` DISABLE KEYS */;
INSERT INTO `detalle_remito_v` VALUES (1,1,1),(2,2,3),(3,3,5),(4,4,7),(5,5,9),(6,6,11),(7,7,13),(8,8,15),(9,9,17),(10,10,25),(11,11,27),(12,12,29),(13,13,31),(14,14,33),(15,15,35),(16,16,37),(17,17,39);
/*!40000 ALTER TABLE `detalle_remito_v` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `edu_curso`
--

DROP TABLE IF EXISTS `edu_curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `edu_curso` (
  `IdEduCurso` int NOT NULL AUTO_INCREMENT,
  `nombreCurso` varchar(255) DEFAULT NULL,
  `fechaInicio` date DEFAULT NULL,
  `fechaFinalizado` date DEFAULT NULL,
  `idEducacion` int DEFAULT NULL,
  PRIMARY KEY (`IdEduCurso`),
  KEY `fk_educacion_curso` (`idEducacion`),
  CONSTRAINT `fk_educacion_curso` FOREIGN KEY (`idEducacion`) REFERENCES `educacion` (`IdEducacion`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `edu_curso`
--

LOCK TABLES `edu_curso` WRITE;
/*!40000 ALTER TABLE `edu_curso` DISABLE KEYS */;
INSERT INTO `edu_curso` VALUES (1,'Curso de Programación en Python','2022-01-10','2022-05-15',1),(2,'Curso de Gestión de Proyectos','2021-03-20','2021-07-25',2),(3,'Curso de Marketing Digital','2020-05-30','2020-10-05',3),(4,'Curso de Diseño Gráfico','2019-07-15','2019-12-20',4),(5,'Curso de Inglés Avanzado','2018-09-10','2019-01-15',5),(6,'Curso de Fotografía','2017-11-05','2018-03-10',6),(7,'Curso de Liderazgo','2016-01-20','2016-05-25',7),(8,'Curso de Finanzas Personales','2015-03-15','2015-07-20',8),(9,'Curso de Desarrollo Web','2014-05-10','2014-09-15',9),(10,'Curso de Inteligencia Artificial','2013-07-05','2013-11-10',10),(11,'Curso de Comunicación Efectiva','2012-09-20','2013-01-25',11),(12,'Curso de Negociación','2011-11-15','2012-03-20',12),(13,'Curso de Excel Avanzado','2010-01-10','2010-05-15',13),(14,'Curso de Contabilidad','2009-03-20','2009-07-25',14),(15,'Curso de Recursos Humanos','2008-05-30','2008-10-05',15),(16,'Curso de Estrategia Empresarial','2007-07-15','2007-12-20',16),(17,'Curso de Gestión de Calidad','2006-09-10','2007-01-15',17),(18,'Curso de Redes Sociales','2005-11-05','2006-03-10',18),(19,'Curso de Comercio Electrónico','2004-01-20','2004-05-25',19),(20,'Curso de Derecho Laboral','2023-11-01','2023-12-05',20),(21,'Curso de Gestión Ambiental','2002-05-10','2002-09-15',21),(22,'Curso de Coaching','2001-07-05','2001-11-10',22),(23,'Curso de Psicología Organizacional','2000-09-20','2001-01-25',23),(24,'Curso de Innovación','1999-11-15','2000-03-20',24),(25,'Curso de Emprendimientos','1998-01-10','1998-05-15',25),(26,'Curso de Técnicas de Venta','2023-09-01','2023-12-01',26),(27,'Curso de Planificación Estratégica','1996-05-30','1996-10-05',27),(28,'Curso de Logística','1995-07-15','1995-12-20',28),(29,'Curso de Automatización','1994-09-10','1995-01-15',29),(30,'Curso de Relaciones Públicas','1993-11-05','1994-03-10',30),(31,'Curso de Seguridad Informática','1992-01-20','1992-05-25',31),(32,'Curso de Gestión del Tiempo','2024-02-01','2024-03-19',32),(33,'Curso de Innovación y Creatividad','1990-05-10','1990-09-15',33),(34,'Curso de Branding','1989-07-05','1989-11-10',34),(35,'Curso de Gestión del Conocimiento','1988-09-20','1989-01-25',35),(36,'Curso de Protocolo y Ceremonial','1987-11-15','1988-03-20',36),(37,'Curso de Gestión de Crisis','1986-01-10','1986-05-15',37),(38,'Curso de Diseño de Interiores','1985-03-20','1985-07-25',38),(39,'Curso de Inteligencia Emocional','1984-05-30','1984-10-05',39),(40,'Curso de Ética Profesional','1983-07-15','1983-12-20',40),(41,'Curso de Mediación','1982-09-10','1983-01-15',41),(42,'Curso de Asistencia Gerencial','1981-11-05','1982-03-10',42),(43,'Curso de Cultura Organizacional','1980-01-20','1980-05-25',43),(44,'Curso de Project Management','1979-03-15','1979-07-20',44),(45,'Curso de Desarrollo Personal','2024-07-01','2024-07-22',45),(46,'Curso de Recursos Renovables','1977-07-05','1977-11-10',46),(47,'Curso de Ventas','1976-09-20','1977-01-25',47),(48,'Curso de Planeación de Eventos','1975-11-15','1976-03-20',48),(49,'Curso de Programación en Java','2019-07-15','2019-08-25',49),(50,'Curso de Gestión de Proyectos con Scrum','2021-03-20','2021-04-15',50);
/*!40000 ALTER TABLE `edu_curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `edu_secundaria`
--

DROP TABLE IF EXISTS `edu_secundaria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `edu_secundaria` (
  `IdEduSec` int NOT NULL AUTO_INCREMENT,
  `nombreTitulo` varchar(255) DEFAULT NULL,
  `nombreInstitucion` varchar(255) DEFAULT NULL,
  `fechaGraduacion` date DEFAULT NULL,
  PRIMARY KEY (`IdEduSec`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `edu_secundaria`
--

LOCK TABLES `edu_secundaria` WRITE;
/*!40000 ALTER TABLE `edu_secundaria` DISABLE KEYS */;
INSERT INTO `edu_secundaria` VALUES (1,'Bachiller en Ciencias Sociales','Escuela Normal Superior en Lenguas Vivas','1999-12-10'),(2,'Bachiller en Ciencias Naturales','Instituto San José','2000-11-15'),(3,'Técnico en Electrónica','Colegio Industrial Otto Krause','2001-09-20'),(4,'Bachiller en Economía y Administración','Colegio Nacional de Buenos Aires','2002-06-25'),(5,'Bachiller en Arte y Comunicación','Escuela de Bellas Artes Manuel Belgrano','2003-03-30'),(6,'Técnico en Informática','Escuela Técnica N° 1','2004-07-05'),(7,'Bachiller en Ciencias Exactas','Escuela Superior de Comercio Carlos Pellegrini','2005-10-10'),(8,'Técnico en Mecánica','Escuela Técnica Raggio','2006-05-15'),(9,'Bachiller en Humanidades','Instituto Nuestra Señora de la Misericordia','2007-04-20'),(10,'Técnico en Química','Instituto Técnico de Avellaneda','2008-08-25'),(11,'Bachiller en Ciencias de la Salud','Instituto Santa Ana','2009-11-30'),(12,'Técnico en Electromecánica','Escuela Técnica Nº 27','2010-09-15'),(13,'Bachiller en Ciencias Sociales','Escuela Normal Superior en Lenguas Vivas','2011-12-10'),(14,'Bachiller en Ciencias Naturales','Instituto San José','2012-11-15'),(15,'Técnico en Electrónica','Colegio Industrial Otto Krause','2013-10-20'),(16,'Bachiller en Economía y Administración','Colegio Nacional de Buenos Aires','2014-07-25'),(17,'Bachiller en Arte y Comunicación','Escuela de Bellas Artes Manuel Belgrano','2015-05-30'),(18,'Técnico en Informática','Escuela Técnica N° 1','2016-03-15'),(19,'Bachiller en Ciencias Exactas','Escuela Superior de Comercio Carlos Pellegrini','2017-01-10'),(20,'Técnico en Mecánica','Escuela Técnica Raggio','2018-11-05'),(21,'Bachiller en Humanidades','Instituto Nuestra Señora de la Misericordia','2019-12-15'),(22,'Técnico en Química','Instituto Técnico de Avellaneda','2020-11-20'),(23,'Bachiller en Ciencias de la Salud','Instituto Santa Ana','2021-09-25'),(24,'Técnico en Electromecánica','Escuela Técnica Nº 27','2022-06-30'),(25,'Bachiller en Ciencias Sociales','Escuela Normal Superior en Lenguas Vivas','2023-03-05'),(26,'Bachiller en Ciencias Naturales','Instituto San José','1999-12-15'),(27,'Técnico en Electrónica','Colegio Industrial Otto Krause','2000-11-20'),(28,'Bachiller en Economía y Administración','Colegio Nacional de Buenos Aires','2001-09-25'),(29,'Bachiller en Arte y Comunicación','Escuela de Bellas Artes Manuel Belgrano','2002-06-30'),(30,'Técnico en Informática','Escuela Técnica N° 1','2003-03-05'),(31,'Bachiller en Ciencias Exactas','Escuela Superior de Comercio Carlos Pellegrini','2004-07-10'),(32,'Técnico en Mecánica','Escuela Técnica Raggio','2005-10-15'),(33,'Bachiller en Humanidades','Instituto Nuestra Señora de la Misericordia','2006-05-20'),(34,'Técnico en Química','Instituto Técnico de Avellaneda','2007-04-25'),(35,'Bachiller en Ciencias de la Salud','Instituto Santa Ana','2008-08-30'),(36,'Técnico en Electromecánica','Escuela Técnica Nº 27','2009-11-05'),(37,'Bachiller en Ciencias Sociales','Escuela Normal Superior en Lenguas Vivas','2010-09-10'),(38,'Bachiller en Ciencias Naturales','Instituto San José','2011-12-15'),(39,'Técnico en Electrónica','Colegio Industrial Otto Krause','2012-11-20'),(40,'Bachiller en Economía y Administración','Colegio Nacional de Buenos Aires','2013-10-25'),(41,'Bachiller en Arte y Comunicación','Escuela de Bellas Artes Manuel Belgrano','2014-07-30'),(42,'Técnico en Informática','Escuela Técnica N° 1','2015-05-05'),(43,'Bachiller en Ciencias Exactas','Escuela Superior de Comercio Carlos Pellegrini','2016-03-10'),(44,'Técnico en Mecánica','Escuela Técnica Raggio','2017-01-15'),(45,'Bachiller en Humanidades','Instituto Nuestra Señora de la Misericordia','2018-11-20'),(46,'Técnico en Química','Instituto Técnico de Avellaneda','2019-12-25'),(47,'Bachiller en Ciencias de la Salud','Instituto Santa Ana','2020-11-30'),(48,'Técnico Mecánico Electricista','Instituto Técnico UNT','2010-02-27'),(49,'Maestro Mayor de Mbras','Instituto Técnico UNT','2000-02-25'),(50,'Técnico en Mecánica','Escuela Ténica Alberdi','2001-09-20');
/*!40000 ALTER TABLE `edu_secundaria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `edu_universitaria`
--

DROP TABLE IF EXISTS `edu_universitaria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `edu_universitaria` (
  `IdEduUniv` int NOT NULL AUTO_INCREMENT,
  `nombreTitulo` varchar(255) DEFAULT NULL,
  `nombreInstitucion` varchar(255) DEFAULT NULL,
  `fechaGraduacion` date DEFAULT NULL,
  `idEducacion` int DEFAULT NULL,
  PRIMARY KEY (`IdEduUniv`),
  KEY `fk_educacion` (`idEducacion`),
  CONSTRAINT `fk_educacion` FOREIGN KEY (`idEducacion`) REFERENCES `educacion` (`IdEducacion`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `edu_universitaria`
--

LOCK TABLES `edu_universitaria` WRITE;
/*!40000 ALTER TABLE `edu_universitaria` DISABLE KEYS */;
INSERT INTO `edu_universitaria` VALUES (1,'Licenciado en Administración','Universidad Nacional de Tucumán','2005-12-10',1),(2,'Ingeniero en Sistemas','Universidad Nacional de La Plata','2006-11-15',2),(3,'Abogado','Universidad de Buenos Aires','2007-09-20',3),(4,'Contador Público','Universidad Nacional del Litoral','2008-06-25',4),(5,'Licenciado en Economía','Universidad Nacional de Córdoba','2009-03-30',5),(6,'Ingeniero Civil','Universidad Tecnológica Nacional','2010-07-05',6),(7,'Médico','Universidad Nacional de Rosario','2011-10-10',7),(8,'Licenciado en Psicología','Universidad de Palermo','2012-05-15',8),(9,'Arquitecto','Universidad Nacional de Mar del Plata','2013-04-20',9),(10,'Licenciado en Comunicación','Universidad Austral','2014-08-25',10),(11,'Licenciado en Relaciones Internacionales','Universidad Torcuato Di Tella','2015-11-30',11),(12,'Licenciado en Ciencias Políticas','Universidad de San Andrés','2016-09-15',12),(13,'Ingeniero Electrónico','Universidad Nacional de Tucumán','2017-12-10',13),(14,'Farmacéutico','Universidad Nacional de Córdoba','2018-11-15',14),(15,'Licenciado en Historia','Universidad Nacional de La Plata','2019-10-20',15),(16,'Ingeniero Químico','Universidad Tecnológica Nacional','2020-07-25',16),(17,'Licenciado en Letras','Universidad de Buenos Aires','2021-05-30',17),(18,'Ingeniero Mecánico','Universidad Nacional de Rosario','2022-03-15',18),(19,'Licenciado en Ciencias de la Computación','Universidad Nacional del Litoral','2023-01-10',19),(20,'Ingeniero Industrial','Universidad Nacional de Tucumán','2023-11-05',20),(21,'Licenciado en Biotecnología','Universidad Nacional de San Martín','2005-12-15',21),(22,'Odontólogo','Universidad Nacional del Nordeste','2006-11-20',22),(23,'Ingeniero Agrónomo','Universidad Nacional de Cuyo','2007-09-25',23),(24,'Licenciado en Trabajo Social','Universidad Nacional de La Matanza','2008-06-30',24),(25,'Ingeniero en Telecomunicaciones','Universidad Nacional de San Luis','2009-03-05',25),(26,'Licenciado en Química','Universidad Nacional de Misiones','2010-07-10',26),(27,'Licenciado en Ciencias Ambientales','Universidad Nacional de la Patagonia','2011-10-15',27),(28,'Ingeniero en Petróleo','Universidad Nacional de Río Cuarto','2012-05-20',28),(29,'Licenciado en Educación','Universidad Nacional de Catamarca','2013-04-25',29),(30,'Ingeniero en Alimentos','Universidad Nacional de Jujuy','2014-08-30',30),(31,'Licenciado en Sociología','Universidad Nacional de Entre Ríos','2015-11-05',31),(32,'Ingeniero en Computación','Universidad Nacional de Córdoba','2016-09-10',32),(33,'Médico Veterinario','Universidad Nacional de La Pampa','2017-12-15',33),(34,'Licenciado en Antropología','Universidad Nacional de Formosa','2018-11-20',34),(35,'Ingeniero en Energía','Universidad Nacional de Salta','2019-10-25',35),(36,'Licenciado en Turismo','Universidad Nacional del Sur','2020-07-30',36),(37,'Ingeniero Ambiental','Universidad Nacional de Tucumán','2021-05-05',37),(38,'Licenciado en Filosofía','Universidad Nacional de General Sarmiento','2022-03-10',38),(39,'Ingeniero Biomédico','Universidad Nacional de Quilmes','2023-01-15',39),(40,'Licenciado en Física','Universidad Nacional de Mar del Plata','2023-11-20',40),(41,'Licenciado en Matemáticas','Universidad Nacional del Litoral','2005-12-25',41),(42,'Ingeniero Geólogo','Universidad Nacional de San Juan','2006-11-30',42),(43,'Licenciado en Geografía','Universidad Nacional de La Plata','2007-09-05',43),(44,'Ingeniero Metalúrgico','Universidad Tecnológica Nacional','2008-06-10',44),(45,'Licenciado en Ciencias Actuariales','Universidad Nacional de Rosario','2009-03-15',45),(46,'Licenciado en Ciencias de la Información','Universidad de Buenos Aires','2010-07-20',46),(47,'Ingeniero Textil','Universidad Nacional del Nordeste','2011-10-25',47),(48,'Licenciado en Publicidad','Universidad de Palermo','2012-05-30',48),(49,'Ingeniero en Sonido','Universidad Nacional de La Plata','2013-04-05',49),(50,'Ingeniero en Sistemas de Informacion','Universidad Tecnológica Nacional','2003-11-07',50);
/*!40000 ALTER TABLE `edu_universitaria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `educacion`
--

DROP TABLE IF EXISTS `educacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `educacion` (
  `IdEducacion` int NOT NULL AUTO_INCREMENT,
  `idEmpleado` int DEFAULT NULL,
  `IdEduSec` int DEFAULT NULL,
  PRIMARY KEY (`IdEducacion`),
  KEY `idEmpleado` (`idEmpleado`),
  KEY `IdEduSec` (`IdEduSec`),
  CONSTRAINT `educacion_ibfk_1` FOREIGN KEY (`idEmpleado`) REFERENCES `empleado` (`idEmpleado`),
  CONSTRAINT `educacion_ibfk_2` FOREIGN KEY (`IdEduSec`) REFERENCES `edu_secundaria` (`IdEduSec`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `educacion`
--

LOCK TABLES `educacion` WRITE;
/*!40000 ALTER TABLE `educacion` DISABLE KEYS */;
INSERT INTO `educacion` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,7,7),(8,8,8),(9,9,9),(10,10,10),(11,11,11),(12,12,12),(13,13,13),(14,14,14),(15,15,15),(16,16,16),(17,17,17),(18,18,18),(19,19,19),(20,20,20),(21,21,21),(22,22,22),(23,23,23),(24,24,24),(25,25,25),(26,26,26),(27,27,27),(28,28,28),(29,29,29),(30,30,30),(31,31,31),(32,32,32),(33,33,33),(34,34,34),(35,35,35),(36,36,36),(37,37,37),(38,38,38),(39,39,39),(40,40,40),(41,41,41),(42,42,42),(43,43,43),(44,44,44),(45,45,45),(46,46,46),(47,47,47),(48,48,48),(49,49,49),(50,50,50);
/*!40000 ALTER TABLE `educacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleado`
--

DROP TABLE IF EXISTS `empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleado` (
  `idEmpleado` int NOT NULL AUTO_INCREMENT,
  `idLocalizacion` int DEFAULT NULL,
  `idLocalizacionNac` int DEFAULT NULL,
  `idCatEmp` int DEFAULT NULL,
  `legajo` int DEFAULT NULL,
  `nombreCompleto` varchar(255) DEFAULT NULL,
  `dni` bigint DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `sexo` varchar(50) DEFAULT NULL,
  `estadoCivil` varchar(50) DEFAULT NULL,
  `tipoSangre` varchar(5) DEFAULT NULL,
  `fechaNacimiento` date DEFAULT NULL,
  `fechaInscripcion` date DEFAULT NULL,
  `telefono` bigint DEFAULT NULL,
  PRIMARY KEY (`idEmpleado`),
  KEY `idLocalizacion` (`idLocalizacion`),
  KEY `idLocalizacionNac` (`idLocalizacionNac`),
  KEY `idCatEmp` (`idCatEmp`),
  CONSTRAINT `empleado_ibfk_1` FOREIGN KEY (`idLocalizacion`) REFERENCES `localizacion` (`idLocalizacion`),
  CONSTRAINT `empleado_ibfk_2` FOREIGN KEY (`idLocalizacionNac`) REFERENCES `localizacion_nac` (`idLocalizacionNac`),
  CONSTRAINT `empleado_ibfk_3` FOREIGN KEY (`idCatEmp`) REFERENCES `categoria_empleado` (`idCatEmp`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleado`
--

LOCK TABLES `empleado` WRITE;
/*!40000 ALTER TABLE `empleado` DISABLE KEYS */;
INSERT INTO `empleado` VALUES (1,1,1,1,1001,'Juan Pérez',23156789,'juan.perez@example.com','Masculino','Soltero','A+','1973-07-15','2009-07-17',1123452154),(2,2,2,2,1002,'María López',20234567,'maria.lopez@example.com','Femenino','Casado','O-','1982-04-20','2010-07-17',2214567890),(3,3,3,3,1003,'Carlos García',20345678,'carlos.garcia@example.com','Masculino','Soltero','B+','1975-11-30','2011-07-17',3414567891),(4,4,4,1,1004,'Ana Martínez',20456789,'ana.martinez@example.com','Femenino','Soltero','A-','1985-01-25','2012-07-17',3514567892),(5,5,5,2,1005,'Pedro Rodríguez',20732589,'pedro.rodriguez@example.com','Masculino','Casado','AB+','1972-10-10','2013-07-17',3614567893),(6,6,6,3,1006,'Laura Fernández',20678901,'laura.fernandez@example.com','Femenino','Soltero','O+','1983-05-15','2014-07-17',3714567894),(7,7,7,1,1007,'Miguel Sánchez',20789012,'miguel.sanchez@example.com','Masculino','Casado','A+','1979-09-05','2015-07-17',3814567895),(8,8,8,2,1008,'Lucía Ramírez',20890123,'lucia.ramirez@example.com','Femenino','Soltero','B-','1988-02-12','2016-07-17',2614567896),(9,9,9,3,1009,'Jorge Díaz',20901234,'jorge.diaz@example.com','Masculino','Casado','O+','1974-03-25','2017-07-17',2914567897),(10,10,10,1,1010,'Elena Gómez',21012345,'elena.gomez@example.com','Femenino','Soltero','A-','1981-11-19','2018-07-17',2804567898),(11,11,11,2,1011,'Raúl Torres',21123456,'raul.torres@example.com','Masculino','Casado','B+','1978-06-30','2019-07-17',2234567899),(12,12,12,3,1012,'Isabel Flores',21234567,'isabel.flores@example.com','Femenino','Soltero','O-','1986-12-15','2020-07-17',3454567800),(13,13,13,1,1013,'Luis Herrera',21345678,'luis.herrera@example.com','Masculino','Casado','A+','1983-05-22','2021-07-17',3874567801),(14,14,14,2,1014,'Marta Ruiz',21456789,'marta.ruiz@example.com','Femenino','Soltero','AB+','1976-08-18','2022-07-17',3754567802),(15,15,15,3,1015,'Alberto Ortiz',21567890,'alberto.ortiz@example.com','Masculino','Casado','B-','1982-09-10','2023-07-17',2654567803),(16,16,16,1,1016,'Patricia Gutiérrez',21678901,'patricia.gutierrez@example.com','Femenino','Soltero','O+','1985-07-14','2008-07-17',2994567804),(17,17,17,2,1017,'Héctor Moreno',21789012,'hector.moreno@example.com','Masculino','Casado','A-','1979-10-07','2009-07-17',3854567805),(18,18,18,3,1018,'Teresa Morales',21890123,'teresa.morales@example.com','Femenino','Soltero','B+','1978-12-21','2010-07-17',2634567806),(19,19,19,1,1019,'Fernando Cruz',21901234,'fernando.cruz@example.com','Masculino','Casado','O-','1981-02-28','2011-07-17',3884567807),(20,20,20,2,1020,'Sofía Jiménez',22012345,'sofia.jimenez@example.com','Femenino','Soltero','A+','1977-04-19','2012-07-17',2954567808),(21,21,21,3,1021,'Ricardo Álvarez',22123456,'ricardo.alvarez@example.com','Masculino','Casado','AB+','1982-06-23','2013-07-17',3894567809),(22,22,22,1,1022,'Clara Muñoz',22234567,'clara.munoz@example.com','Femenino','Soltero','B-','1987-03-08','2014-07-17',3424567810),(23,23,23,2,1023,'Javier Romero',22345678,'javier.romero@example.com','Masculino','Casado','O+','1980-05-26','2015-07-17',2984567811),(24,24,24,3,1024,'Victoria Herrera',22456789,'victoria.herrera@example.com','Femenino','Soltero','A-','1979-07-11','2016-07-17',3434567812),(25,25,25,1,1025,'Sergio Peña',22567890,'sergio.pena@example.com','Masculino','Casado','B+','1983-09-27','2017-07-17',3734567813),(26,26,26,2,1026,'Laura Molina',22678901,'laura.molina@example.com','Femenino','Soltero','O-','1974-11-02','2018-07-17',2914567814),(27,27,27,3,1027,'Daniela Castro',22789012,'daniela.castro@example.com','Femenino','Casado','A+','1985-01-19','2019-07-17',3854567815),(28,28,28,1,1028,'Enrique Ruiz',22890123,'enrique.ruiz@example.com','Masculino','Soltero','B-','1982-08-13','2020-07-17',2644567816),(29,29,29,2,1029,'Gabriela Ramos',22901234,'gabriela.ramos@example.com','Femenino','Casado','O+','1979-10-30','2021-07-17',3824567817),(30,30,30,3,1030,'Alejandro Sánchez',23012345,'alejandro.sanchez@example.com','Masculino','Soltero','A-','1984-12-22','2022-07-17',3874567818),(31,31,31,1,1031,'Adriana Romero',23123456,'adriana.romero@example.com','Femenino','Casado','B+','1981-03-17','2023-07-17',3714567819),(32,32,32,2,1032,'Tomás Gil',23234567,'tomas.gil@example.com','Masculino','Soltero','O-','1978-06-15','2008-07-17',3434567820),(33,33,33,3,1033,'Natalia Espinoza',23345678,'natalia.espinoza@example.com','Femenino','Casado','A+','1983-09-28','2009-07-17',2994567821),(34,34,34,1,1034,'Julio Guzmán',23456789,'julio.guzman@example.com','Masculino','Soltero','AB+','1977-11-20','2010-07-17',2614567822),(35,35,35,2,1035,'Carolina Herrera',23567890,'carolina.herrera@example.com','Femenino','Casado','B-','1986-02-10','2011-07-17',3894567823),(36,36,36,3,1036,'Hugo Vargas',23678901,'hugo.vargas@example.com','Masculino','Soltero','O+','1978-04-17','2012-07-17',3424567824),(37,37,37,1,1037,'Paula Navarro',23789012,'paula.navarro@example.com','Femenino','Casado','A-','1982-07-21','2013-07-17',3774567825),(38,38,38,2,1038,'Rafael Salazar',23890123,'rafael.salazar@example.com','Masculino','Soltero','B+','1979-09-03','2014-07-17',2654567826),(39,39,39,3,1039,'Diana Medina',23901234,'diana.medina@example.com','Femenino','Casado','O-','1985-11-27','2015-07-17',2914567827),(40,40,40,1,1040,'Pablo Torres',24012345,'pablo.torres@example.com','Masculino','Soltero','A+','1974-03-06','2016-07-17',3824567828),(41,41,41,2,1041,'Eva Mendoza',24123456,'eva.mendoza@example.com','Femenino','Casado','AB+','1987-05-09','2017-07-17',3854567829),(42,42,42,3,1042,'Martín Campos',24234567,'martin.campos@example.com','Masculino','Soltero','B-','1975-08-14','2018-07-17',2954567830),(43,43,43,1,1043,'Sara Reyes',24345678,'sara.reyes@example.com','Femenino','Casado','O+','1980-12-25','2019-07-17',3454567831),(44,44,44,2,1044,'Joaquín Ortiz',24456789,'joaquin.ortiz@example.com','Masculino','Soltero','A-','1983-02-07','2020-07-17',3814567832),(45,45,45,3,1045,'Andrea Fernández',24567890,'andrea.fernandez@example.com','Femenino','Casado','B+','1978-06-18','2021-07-17',2994567833),(46,46,46,1,1046,'Diego Ramírez',24678901,'diego.ramirez@example.com','Masculino','Soltero','O-','1985-09-23','2022-07-17',3714567834),(47,47,47,2,1047,'Carmen Pérez',24789012,'carmen.perez@example.com','Femenino','Casado','A+','1982-12-19','2023-07-17',3884567835),(48,48,48,3,1048,'Francisco Ruiz',24890123,'francisco.ruiz@example.com','Masculino','Soltero','AB+','1976-04-11','2008-07-17',3414567836),(49,49,49,1,1049,'Verónica Gómez',24901234,'veronica.gomez@example.com','Femenino','Casado','B-','1984-10-05','2009-07-17',3514567837),(50,50,50,2,1050,'Gustavo López',25012345,'gustavo.lopez@example.com','Masculino','Soltero','O+','1977-01-15','2010-07-17',1134567838);
/*!40000 ALTER TABLE `empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `factura_c`
--

DROP TABLE IF EXISTS `factura_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `factura_c` (
  `idFactura` int NOT NULL AUTO_INCREMENT,
  `idOrdenCompra` int DEFAULT NULL,
  `idTipoFactura` int DEFAULT NULL,
  `idConcepto` int DEFAULT NULL,
  `fechaEmision` date DEFAULT NULL,
  PRIMARY KEY (`idFactura`),
  KEY `idOrdenCompra` (`idOrdenCompra`),
  KEY `idTipoFactura` (`idTipoFactura`),
  KEY `idConcepto` (`idConcepto`),
  CONSTRAINT `factura_c_ibfk_1` FOREIGN KEY (`idOrdenCompra`) REFERENCES `orden_compra` (`idOrdenCompra`),
  CONSTRAINT `factura_c_ibfk_2` FOREIGN KEY (`idTipoFactura`) REFERENCES `tipo_factura` (`idTipoFactura`),
  CONSTRAINT `factura_c_ibfk_3` FOREIGN KEY (`idConcepto`) REFERENCES `concepto` (`idConcepto`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factura_c`
--

LOCK TABLES `factura_c` WRITE;
/*!40000 ALTER TABLE `factura_c` DISABLE KEYS */;
INSERT INTO `factura_c` VALUES (1,1,1,NULL,'2024-07-16'),(2,2,1,NULL,'2024-07-17'),(3,3,1,NULL,'2024-07-18'),(4,4,1,NULL,'2024-07-19'),(5,5,1,NULL,'2024-07-20'),(6,6,2,NULL,'2024-07-16'),(7,7,1,NULL,'2024-07-17'),(8,8,1,NULL,'2024-07-18'),(9,9,1,NULL,'2024-07-19'),(10,10,1,NULL,'2024-07-20'),(11,11,1,NULL,'2024-07-16'),(12,12,2,NULL,'2024-07-17');
/*!40000 ALTER TABLE `factura_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `factura_v`
--

DROP TABLE IF EXISTS `factura_v`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `factura_v` (
  `idFactura` int NOT NULL AUTO_INCREMENT,
  `idCliente` int DEFAULT NULL,
  `idTipoFactura` int DEFAULT NULL,
  `idConcepto` int DEFAULT NULL,
  `fechaEmision` date DEFAULT NULL,
  `formaDePago` varchar(50) DEFAULT NULL,
  `idEmpleado` int DEFAULT NULL,
  `idSucursal` int DEFAULT NULL,
  PRIMARY KEY (`idFactura`),
  KEY `idCliente` (`idCliente`),
  KEY `idTipoFactura` (`idTipoFactura`),
  KEY `idConcepto` (`idConcepto`),
  KEY `fk_empleado` (`idEmpleado`),
  KEY `fk_factura_sucursal` (`idSucursal`),
  CONSTRAINT `factura_v_ibfk_1` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`),
  CONSTRAINT `factura_v_ibfk_2` FOREIGN KEY (`idTipoFactura`) REFERENCES `tipo_factura` (`idTipoFactura`),
  CONSTRAINT `factura_v_ibfk_3` FOREIGN KEY (`idConcepto`) REFERENCES `concepto` (`idConcepto`),
  CONSTRAINT `fk_empleado` FOREIGN KEY (`idEmpleado`) REFERENCES `empleado` (`idEmpleado`),
  CONSTRAINT `fk_factura_sucursal` FOREIGN KEY (`idSucursal`) REFERENCES `sucursal` (`idSucursal`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factura_v`
--

LOCK TABLES `factura_v` WRITE;
/*!40000 ALTER TABLE `factura_v` DISABLE KEYS */;
INSERT INTO `factura_v` VALUES (1,1,1,NULL,'2024-05-30','Transferencia Bancaria',1,1),(2,2,3,NULL,'2023-01-02','Efectivo',4,2),(3,3,2,NULL,'2024-05-15','Cheque',7,3),(4,4,1,NULL,'2023-01-04','Tarjeta de crédito Visa',10,4),(5,5,3,NULL,'2023-01-05','Transferencia Bancaria',13,5),(6,6,2,NULL,'2023-01-06','Efectivo',16,6),(7,7,1,NULL,'2023-01-07','Cheque',19,7),(8,8,3,NULL,'2024-05-11','Tarjeta de crédito Visa',22,1),(9,9,2,NULL,'2023-01-09','Transferencia Bancaria',25,2),(10,10,1,NULL,'2023-01-10','Efectivo',28,3),(11,11,3,NULL,'2023-01-11','Cheque',31,4),(12,12,2,NULL,'2023-01-12','Tarjeta de crédito Visa',34,5),(13,13,1,NULL,'2023-01-13','Transferencia Bancaria',37,6),(14,14,3,NULL,'2023-01-14','Efectivo',40,7),(15,15,2,NULL,'2024-06-25','Cheque',43,1),(16,16,1,NULL,'2023-01-16','Tarjeta de crédito Visa',46,2),(17,17,3,NULL,'2024-07-25','Transferencia Bancaria',49,3);
/*!40000 ALTER TABLE `factura_v` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `familiar`
--

DROP TABLE IF EXISTS `familiar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `familiar` (
  `idFamiliar` int NOT NULL AUTO_INCREMENT,
  `idEmpleado` int DEFAULT NULL,
  `idSalarioFam` int DEFAULT NULL,
  `nombreCompleto` varchar(255) DEFAULT NULL,
  `parentesco` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idFamiliar`),
  KEY `idEmpleado` (`idEmpleado`),
  KEY `idSalarioFam` (`idSalarioFam`),
  CONSTRAINT `familiar_ibfk_1` FOREIGN KEY (`idEmpleado`) REFERENCES `empleado` (`idEmpleado`),
  CONSTRAINT `familiar_ibfk_2` FOREIGN KEY (`idSalarioFam`) REFERENCES `salario_familiar` (`idSalarioFam`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `familiar`
--

LOCK TABLES `familiar` WRITE;
/*!40000 ALTER TABLE `familiar` DISABLE KEYS */;
INSERT INTO `familiar` VALUES (1,1,1,'Martín Rodríguez','Hijo'),(2,2,1,'Camila Fernández','Hija'),(3,3,1,'Santiago Pérez','Hijo'),(4,4,1,'Sofía López','Hija'),(5,5,1,'Mateo González','Hijo'),(6,6,1,'Lucía Martínez','Hija'),(7,7,1,'Joaquín Silva','Hijo'),(8,8,1,'Emilia González','Hija'),(9,9,1,'Thiago Ramírez','Hijo'),(10,10,1,'Valentina Torres','Hija'),(11,11,2,'Agustín Gómez','Hijo'),(12,12,2,'Florencia Pereira','Hija'),(13,13,2,'Lucas Castro','Hijo'),(14,14,2,'Catalina Romero','Hija'),(15,15,2,'Felipe Hernández','Hijo'),(16,16,2,'Julieta Álvarez','Hija'),(17,17,2,'Ignacio Díaz','Hijo'),(18,18,2,'Mariana Suárez','Hija '),(19,19,2,'Benjamin Sosa','Hijo'),(20,20,2,'Mía Machado','Hija'),(21,21,3,'Francisco Silva','Hijo'),(22,22,3,'Martina Cabrera','Hija'),(23,23,3,'Juan Gutiérrez','Hijo'),(24,24,3,'Ana Castro','Hija'),(25,25,3,'Tomás Rodríguez','Hijo'),(26,26,3,'Isabella Suárez','Hija'),(27,27,3,'Nicolás López','Hijo'),(28,28,3,'Agustina Torres','Hija'),(29,29,3,'Dylan Fernández','Hijo'),(30,30,3,'Victoria González','Hija'),(31,31,4,'Laura Rodríguez','Esposa'),(32,32,4,'María Fernández','Esposa'),(33,33,4,'Ana Pérez','Esposa'),(34,34,4,'Carla López','Esposa'),(35,35,4,'Paula González','Esposa'),(36,36,4,'Elena Martínez','Esposa'),(37,37,4,'Gabriela Silva','Esposa'),(38,38,4,'Verónica González','Esposa'),(39,39,4,'Patricia Ramírez','Esposa'),(40,40,4,'Lorena Torres','Esposa'),(41,41,1,'Pablo Rodríguez','Hijo'),(42,42,2,'Mauro Fernández','Hijo'),(43,43,3,'Lucas Pérez','Hijo'),(44,44,4,'Claudia López','Esposa'),(45,45,1,'Diego González','Hijo'),(46,46,2,'Renata Martínez','Hija'),(47,47,3,'Emilio Silva','Hijo'),(48,48,4,'Daniela González','Esposa'),(49,49,1,'Bruno Ramírez','Hijo'),(50,50,2,'Violeta Torres','Hija'),(51,1,1,'Ramiro Ramirez','Hijo'),(52,2,1,'Samir Lozada','Hijo'),(53,2,1,'Alexander Diaz','Hijo');
/*!40000 ALTER TABLE `familiar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `idioma`
--

DROP TABLE IF EXISTS `idioma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `idioma` (
  `idIdioma` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idIdioma`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `idioma`
--

LOCK TABLES `idioma` WRITE;
/*!40000 ALTER TABLE `idioma` DISABLE KEYS */;
INSERT INTO `idioma` VALUES (1,'Inglés'),(2,'Español'),(3,'Chino Mandarín'),(4,'Hindú'),(5,'Árabe'),(6,'Portugués'),(7,'Bengalí'),(8,'Ruso'),(9,'Japonés'),(10,'Panjabí'),(11,'Alemán'),(12,'Francés'),(13,'Italiano'),(14,'Coreano'),(15,'Turco'),(16,'Vietnamita'),(17,'Urdu'),(18,'Persa'),(19,'Tamil'),(20,'Polaco');
/*!40000 ALTER TABLE `idioma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `idioma_empleado`
--

DROP TABLE IF EXISTS `idioma_empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `idioma_empleado` (
  `idIdiomaEmp` int NOT NULL AUTO_INCREMENT,
  `idIdioma` int DEFAULT NULL,
  `idEmpleado` int DEFAULT NULL,
  PRIMARY KEY (`idIdiomaEmp`),
  KEY `idIdioma` (`idIdioma`),
  KEY `idEmpleado` (`idEmpleado`),
  CONSTRAINT `idioma_empleado_ibfk_1` FOREIGN KEY (`idIdioma`) REFERENCES `idioma` (`idIdioma`),
  CONSTRAINT `idioma_empleado_ibfk_2` FOREIGN KEY (`idEmpleado`) REFERENCES `empleado` (`idEmpleado`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `idioma_empleado`
--

LOCK TABLES `idioma_empleado` WRITE;
/*!40000 ALTER TABLE `idioma_empleado` DISABLE KEYS */;
INSERT INTO `idioma_empleado` VALUES (1,2,1),(2,2,2),(3,2,3),(4,2,4),(5,2,5),(6,2,6),(7,2,7),(8,2,8),(9,2,9),(10,2,10),(11,2,11),(12,2,12),(13,2,13),(14,2,14),(15,2,15),(16,2,16),(17,2,17),(18,2,18),(19,2,19),(20,2,20),(21,2,21),(22,2,22),(23,2,23),(24,2,24),(25,2,25),(26,2,26),(27,2,27),(28,2,28),(29,2,29),(30,2,30),(31,2,31),(32,2,32),(33,2,33),(34,2,34),(35,2,35),(36,2,36),(37,2,37),(38,2,38),(39,2,39),(40,2,40),(41,2,41),(42,2,42),(43,2,43),(44,2,44),(45,2,45),(46,2,46),(47,2,47),(48,2,48),(49,2,49),(50,2,50);
/*!40000 ALTER TABLE `idioma_empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `liquidacion`
--

DROP TABLE IF EXISTS `liquidacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `liquidacion` (
  `IdLiquidacion` int NOT NULL AUTO_INCREMENT,
  `idEmpleado` int DEFAULT NULL,
  `montoBruto` decimal(10,2) DEFAULT NULL,
  `montoNeto` decimal(10,2) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`IdLiquidacion`),
  KEY `idEmpleado` (`idEmpleado`),
  CONSTRAINT `liquidacion_ibfk_1` FOREIGN KEY (`idEmpleado`) REFERENCES `empleado` (`idEmpleado`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `liquidacion`
--

LOCK TABLES `liquidacion` WRITE;
/*!40000 ALTER TABLE `liquidacion` DISABLE KEYS */;
INSERT INTO `liquidacion` VALUES (1,1,250000.00,240000.00,'2023-01-19'),(2,2,775000.00,765000.00,'2023-04-19'),(3,3,1525000.00,1515000.00,'2023-04-19'),(4,4,237500.00,227500.00,'2023-04-19'),(5,5,725000.00,715000.00,'2023-04-19'),(6,6,1525000.00,1515000.00,'2023-04-19'),(7,7,237500.00,227500.00,'2023-04-19'),(8,8,725000.00,715000.00,'2023-04-19'),(9,9,1525000.00,1515000.00,'2023-04-19'),(10,10,237500.00,227500.00,'2023-04-19'),(11,11,750000.00,740000.00,'2023-04-19'),(12,12,1550000.00,1540000.00,'2023-04-19'),(13,13,250000.00,240000.00,'2023-04-19'),(14,14,750000.00,740000.00,'2023-04-19'),(15,15,1550000.00,1540000.00,'2023-04-19'),(16,16,250000.00,240000.00,'2023-04-19'),(17,17,750000.00,740000.00,'2023-04-19'),(18,18,1550000.00,1540000.00,'2023-04-19'),(19,19,250000.00,240000.00,'2023-04-19'),(20,20,750000.00,740000.00,'2023-04-19'),(21,21,1510000.00,1500000.00,'2023-04-19'),(22,22,230000.00,220000.00,'2023-04-19'),(23,23,710000.00,700000.00,'2023-04-19'),(24,24,1510000.00,1500000.00,'2023-04-19'),(25,25,230000.00,220000.00,'2023-04-19'),(26,26,710000.00,700000.00,'2023-04-19'),(27,27,1510000.00,1500000.00,'2023-04-19'),(28,28,230000.00,220000.00,'2023-04-19'),(29,29,710000.00,700000.00,'2023-04-19'),(30,30,1510000.00,1500000.00,'2023-04-19'),(31,31,275000.00,265000.00,'2023-04-19'),(32,32,800000.00,790000.00,'2023-04-19'),(33,33,1600000.00,1590000.00,'2023-04-19'),(34,34,275000.00,265000.00,'2023-04-19'),(35,35,800000.00,790000.00,'2023-04-19'),(36,36,1600000.00,1590000.00,'2023-04-19'),(37,37,275000.00,265000.00,'2023-04-19'),(38,38,800000.00,790000.00,'2023-04-19'),(39,39,1600000.00,1590000.00,'2023-04-19'),(40,40,275000.00,265000.00,'2023-04-19'),(41,41,725000.00,715000.00,'2023-04-19'),(42,42,1550000.00,1540000.00,'2023-04-19'),(43,43,230000.00,220000.00,'2023-04-19'),(44,44,800000.00,790000.00,'2023-04-19'),(45,45,1525000.00,1515000.00,'2023-04-19'),(46,46,250000.00,240000.00,'2023-04-19'),(47,47,710000.00,700000.00,'2023-04-19'),(48,48,1600000.00,1590000.00,'2023-04-19'),(49,49,237500.00,227500.00,'2023-04-19'),(50,50,750000.00,740000.00,'2023-04-19'),(51,1,0.00,0.00,'2023-05-16');
/*!40000 ALTER TABLE `liquidacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `localizacion`
--

DROP TABLE IF EXISTS `localizacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `localizacion` (
  `idLocalizacion` int NOT NULL AUTO_INCREMENT,
  `provincia` varchar(100) DEFAULT NULL,
  `ciudad` varchar(100) DEFAULT NULL,
  `calle` varchar(100) DEFAULT NULL,
  `numero` int DEFAULT NULL,
  `codPostal` int DEFAULT NULL,
  PRIMARY KEY (`idLocalizacion`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `localizacion`
--

LOCK TABLES `localizacion` WRITE;
/*!40000 ALTER TABLE `localizacion` DISABLE KEYS */;
INSERT INTO `localizacion` VALUES (1,'Tucumán','San Miguel de Tucumán','Av. Roca',100,4000),(2,'Tucumán','San Miguel de Tucumán','25 de Mayo',200,4000),(3,'Tucumán','Yerba Buena','Av. Aconquija',300,4107),(4,'Tucumán','Tafí Viejo','Belgrano',400,4103),(5,'Tucumán','San Miguel de Tucumán','San Martín',500,4000),(6,'Tucumán','San Miguel de Tucumán','Mitre',600,4000),(7,'Tucumán','San Miguel de Tucumán','Córdoba',700,4000),(8,'Tucumán','San Miguel de Tucumán','Salta',800,4000),(9,'Tucumán','San Miguel de Tucumán','Junín',900,4000),(10,'Tucumán','Yerba Buena','Las Rosas',100,4107),(11,'Tucumán','San Miguel de Tucumán','Piedras',2100,4000),(12,'Tucumán','Yerba Buena','Boulevard 9 de Julio',2200,4107),(13,'Tucumán','Tafí Viejo','San Juan',2300,4103),(14,'Buenos Aires','CABA','Corrientes',5000,1043),(15,'Buenos Aires','La Plata','7',6000,1900),(16,'Córdoba','Córdoba','Colón',7000,5000),(17,'Santa Fe','Rosario','Oroño',8000,2000),(18,'Mendoza','Mendoza','San Martín',9000,5500),(19,'Salta','Salta','Belgrano',1000,4400),(20,'Neuquén','Neuquén','Roca',1100,8300),(21,'Buenos Aires','Mar del Plata','Colon',100,7600),(22,'Córdoba','Villa Carlos Paz','San Martin',200,5152),(23,'Santa Fe','Santa Fe','Rivadavia',300,3000),(24,'Mendoza','San Rafael','Mitre',400,5600),(25,'San Juan','San Juan','Laprida',500,5400),(26,'Salta','Tartagal','Belgrano',600,4560),(27,'Neuquén','Centenario','Av. del Libertador',700,8309),(28,'Chaco','Resistencia','Guemes',800,3500),(29,'Formosa','Formosa','San Martin',900,3600),(30,'Río Negro','Viedma','Moreno',1000,8500),(31,'Tucumán','San Miguel de Tucumán','Calle Mendoza',200,4000),(32,'Tucumán','San Miguel de Tucumán','Calle Córdoba',300,4000),(33,'Tucumán','San Miguel de Tucumán','Calle Salta',400,4000),(34,'Tucumán','San Miguel de Tucumán','Calle Buenos Aires',500,4000),(35,'Tucumán','San Miguel de Tucumán','Calle Catamarca',600,4000),(36,'Tucumán','San Miguel de Tucumán','Calle Jujuy',700,4000),(37,'Tucumán','San Miguel de Tucumán','Calle Entre Ríos',800,4000),(38,'Tucumán','San Miguel de Tucumán','Calle Santiago del Estero',900,4000),(39,'Tucumán','San Miguel de Tucumán','Calle La Rioja',1000,4000),(40,'Tucumán','San Miguel de Tucumán','Calle Santa Fe',1100,4000),(41,'Tucumán','San Miguel de Tucumán','Calle Misiones',1200,4000),(42,'Tucumán','San Miguel de Tucumán','Calle Corrientes',1300,4000),(43,'Tucumán','San Miguel de Tucumán','Calle Formosa',1400,4000),(44,'Buenos Aires','La Plata','Calle 1',1500,1900),(45,'Buenos Aires','Mar del Plata','Calle 2',1600,7600),(46,'Córdoba','Córdoba','Av. Colón',1700,5000),(47,'Santa Fe','Rosario','Calle Pellegrini',1800,2000),(48,'Mendoza','Mendoza','Calle San Martín',1900,5500),(49,'Salta','Salta','Calle Güemes',2000,4400),(50,'Neuquén','Neuquén','Av. Argentina',2100,8300);
/*!40000 ALTER TABLE `localizacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `localizacion_nac`
--

DROP TABLE IF EXISTS `localizacion_nac`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `localizacion_nac` (
  `idLocalizacionNac` int NOT NULL AUTO_INCREMENT,
  `provincia` varchar(100) DEFAULT NULL,
  `ciudad` varchar(100) DEFAULT NULL,
  `calle` varchar(100) DEFAULT NULL,
  `numero` int DEFAULT NULL,
  `codPostal` int DEFAULT NULL,
  PRIMARY KEY (`idLocalizacionNac`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `localizacion_nac`
--

LOCK TABLES `localizacion_nac` WRITE;
/*!40000 ALTER TABLE `localizacion_nac` DISABLE KEYS */;
INSERT INTO `localizacion_nac` VALUES (1,'Tucumán','San Miguel de Tucumán','Av. Mate de Luna',1000,4000),(2,'Tucumán','San Miguel de Tucumán','Calle 24 de Septiembre',200,4000),(3,'Tucumán','San Miguel de Tucumán','Calle Laprida',1500,4000),(4,'Tucumán','San Miguel de Tucumán','Calle San Martin',900,4000),(5,'Tucumán','San Miguel de Tucumán','Calle Maipú',1200,4000),(6,'Tucumán','San Miguel de Tucumán','Calle Congreso',700,4000),(7,'Tucumán','San Miguel de Tucumán','Calle Mendoza',300,4000),(8,'Tucumán','San Miguel de Tucumán','Calle Salta',1100,4000),(9,'Tucumán','San Miguel de Tucumán','Calle Balcarce',1300,4000),(10,'Tucumán','San Miguel de Tucumán','Calle San Lorenzo',500,4000),(11,'Tucumán','San Miguel de Tucumán','Calle Chacabuco',1400,4000),(12,'Tucumán','San Miguel de Tucumán','Calle Junín',2000,4000),(13,'Tucumán','San Miguel de Tucumán','Calle Córdoba',1600,4000),(14,'Tucumán','San Miguel de Tucumán','Calle Buenos Aires',800,4000),(15,'Tucumán','San Miguel de Tucumán','Calle La Rioja',3000,4000),(16,'Tucumán','San Miguel de Tucumán','Calle Jujuy',2700,4000),(17,'Tucumán','San Miguel de Tucumán','Calle Corrientes',1800,4000),(18,'Tucumán','San Miguel de Tucumán','Calle Entre Ríos',2100,4000),(19,'Tucumán','San Miguel de Tucumán','Calle San Juan',3100,4000),(20,'Tucumán','San Miguel de Tucumán','Calle Chaco',2300,4000),(21,'Tucumán','Yerba Buena','Av. Aconquija',200,4107),(22,'Tucumán','Yerba Buena','Calle Marcos Paz',1300,4107),(23,'Tucumán','Yerba Buena','Calle Las Rosas',800,4107),(24,'Tucumán','Yerba Buena','Calle Los Lapachos',900,4107),(25,'Tucumán','Yerba Buena','Calle Los Sauces',1200,4107),(26,'Tucumán','Tafí Viejo','Calle Moreno',300,4103),(27,'Tucumán','Tafí Viejo','Calle Rivadavia',400,4103),(28,'Tucumán','Tafí Viejo','Calle Sarmiento',600,4103),(29,'Tucumán','Tafí Viejo','Calle Mitre',700,4103),(30,'Tucumán','Tafí Viejo','Calle Belgrano',800,4103),(31,'Tucumán','Tafí Viejo','Calle Alberdi',900,4103),(32,'Tucumán','Tafí Viejo','Calle Chacabuco',1000,4103),(33,'Tucumán','Tafí Viejo','Calle La Madrid',1100,4103),(34,'Tucumán','Tafí Viejo','Calle Buenos Aires',1200,4103),(35,'Buenos Aires','CABA','Calle Florida',100,1005),(36,'Buenos Aires','CABA','Calle Corrientes',200,1005),(37,'Buenos Aires','CABA','Calle Santa Fe',300,1005),(38,'Buenos Aires','CABA','Calle Callao',400,1005),(39,'Buenos Aires','CABA','Calle Lavalle',500,1005),(40,'Buenos Aires','CABA','Calle Rivadavia',600,1005),(41,'Buenos Aires','CABA','Calle Tucumán',700,1005),(42,'Buenos Aires','CABA','Calle Alem',800,1005),(43,'Buenos Aires','CABA','Calle Belgrano',900,1005),(44,'Buenos Aires','La Plata','Calle 1',1000,1900),(45,'Buenos Aires','La Plata','Calle 2',1100,1900),(46,'Buenos Aires','La Plata','Calle 3',1200,1900),(47,'Buenos Aires','La Plata','Calle 4',1300,1900),(48,'Buenos Aires','La Plata','Calle 5',1400,1900),(49,'Buenos Aires','La Plata','Calle 6',1500,1900),(50,'Tucumán','Tafí Viejo','Calle Alberdi',912,4103);
/*!40000 ALTER TABLE `localizacion_nac` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orden_compra`
--

DROP TABLE IF EXISTS `orden_compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orden_compra` (
  `idOrdenCompra` int NOT NULL AUTO_INCREMENT,
  `idCotizacion` int DEFAULT NULL,
  `fechaCreacion` date DEFAULT NULL,
  `fechaEntrega` date DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL,
  `formaPago` varchar(50) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idOrdenCompra`),
  KEY `idCotizacion` (`idCotizacion`),
  CONSTRAINT `orden_compra_ibfk_1` FOREIGN KEY (`idCotizacion`) REFERENCES `cotizacion` (`idCotizacion`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orden_compra`
--

LOCK TABLES `orden_compra` WRITE;
/*!40000 ALTER TABLE `orden_compra` DISABLE KEYS */;
INSERT INTO `orden_compra` VALUES (1,1,'2024-07-16','2024-07-20','Entregado','Transferencia Bancaria','Orden de compra de materiales'),(2,2,'2024-07-17','2024-07-21','Entregado','Efectivo','Orden de compra de insumos'),(3,3,'2024-07-18','2024-07-22','Entregado','E-Check','Orden de compra de pintura'),(4,4,'2024-07-19','2024-07-23','Entregado','Tarjeta de Credito','Orden de compra de caños'),(5,5,'2024-07-20','2024-07-24','Entregado','Transferencia Bancaria','Orden de compra de ladrillos'),(6,6,'2024-07-16','2024-07-20','Entregado','Transferencia Bancaria','Orden de compra de tablas'),(7,7,'2024-07-17','2024-07-21','Entregado','Efectivo','Orden de compra de ceramicos'),(8,8,'2024-07-18','2024-07-22','Entregado','E-Check','Orden de compra de adhesivos para contacto'),(9,9,'2024-07-19','2024-07-23','Entregado','Tarjeta de Credito','Orden de compra de herramientas'),(10,10,'2024-07-20','2024-07-24','Entregado','Transferencia Bancaria','Orden de compra de bolsas de cemento'),(11,11,'2024-07-16','2024-07-20','Entregado','Transferencia Bancaria','Orden de compra de adhesivos para baldosas'),(12,12,'2024-07-17','2024-07-21','Entregado','Efectivo','Orden de compra de adhesivos epoxi'),(13,2,'2024-07-16',NULL,'pendiente','Transferencia Bancaria','Orden de compra de materiales'),(14,3,'2024-07-17',NULL,'pendiente','Transferencia Bancaria','Orden de compra de materiales'),(15,4,'2024-07-18',NULL,'pendiente','Transferencia Bancaria','Orden de compra de materiales'),(16,5,'2024-07-19',NULL,'pendiente','Transferencia Bancaria','Orden de compra de materiales'),(17,6,'2024-07-20',NULL,'pendiente','Transferencia Bancaria','Orden de compra de materiales'),(18,7,'2024-07-21',NULL,'pendiente','Transferencia Bancaria','Orden de compra de materiales'),(19,8,'2024-07-22',NULL,'pendiente','Transferencia Bancaria','Orden de compra de materiales'),(20,9,'2024-07-23',NULL,'pendiente','Transferencia Bancaria','Orden de compra de materiales'),(21,10,'2024-07-24',NULL,'pendiente','Transferencia Bancaria','Orden de compra de materiales'),(22,11,'2024-07-25',NULL,'pendiente','Transferencia Bancaria','Orden de compra de materiales');
/*!40000 ALTER TABLE `orden_compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pago_c`
--

DROP TABLE IF EXISTS `pago_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pago_c` (
  `idPago` int NOT NULL AUTO_INCREMENT,
  `idFactura` int DEFAULT NULL,
  `monto` decimal(10,2) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`idPago`),
  KEY `idFactura` (`idFactura`),
  CONSTRAINT `pago_c_ibfk_1` FOREIGN KEY (`idFactura`) REFERENCES `factura_c` (`idFactura`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pago_c`
--

LOCK TABLES `pago_c` WRITE;
/*!40000 ALTER TABLE `pago_c` DISABLE KEYS */;
INSERT INTO `pago_c` VALUES (1,1,133333.33,'2024-07-16'),(2,1,133333.33,'2024-07-23'),(3,1,133333.34,'2024-07-30'),(4,2,100000.00,'2024-07-17'),(5,2,100000.00,'2024-07-24'),(6,2,100000.00,'2024-07-31'),(7,3,6666666.66,'2024-07-18'),(8,3,6666666.66,'2024-07-25'),(9,3,6666666.68,'2024-08-01'),(10,4,50000.00,'2024-07-19'),(11,4,50000.00,'2024-07-26'),(12,4,50000.00,'2024-08-02'),(13,5,160300.00,'2024-07-20'),(14,5,160300.00,'2024-07-27'),(15,5,160300.00,'2024-08-03'),(16,6,13333.33,'2024-07-16'),(17,6,13333.33,'2024-07-23'),(18,6,13333.34,'2024-07-30'),(19,7,20833.33,'2024-07-17'),(20,7,20833.33,'2024-07-24'),(21,7,20833.34,'2024-07-31'),(22,8,3573333.33,'2024-07-18'),(23,8,3573333.33,'2024-07-25'),(24,8,3573333.34,'2024-08-01'),(25,9,35000.00,'2024-07-19'),(26,9,35000.00,'2024-07-26'),(27,9,35000.00,'2024-08-02'),(28,10,116666.66,'2024-07-20'),(29,10,116666.66,'2024-07-27'),(30,10,116666.68,'2024-08-03'),(31,11,75000.00,'2024-07-16'),(32,11,75000.00,'2024-07-23'),(33,11,75000.00,'2024-07-30'),(34,12,60000.00,'2024-07-17'),(35,12,60000.00,'2024-07-24'),(36,12,60000.00,'2024-07-31');
/*!40000 ALTER TABLE `pago_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido_articulo_c`
--

DROP TABLE IF EXISTS `pedido_articulo_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedido_articulo_c` (
  `idPedidoArtC` int NOT NULL AUTO_INCREMENT,
  `idPedidoCompra` int DEFAULT NULL,
  `idArt` int DEFAULT NULL,
  `cantidad` int DEFAULT NULL,
  PRIMARY KEY (`idPedidoArtC`),
  KEY `idPedidoCompra` (`idPedidoCompra`),
  KEY `idArt` (`idArt`),
  CONSTRAINT `pedido_articulo_c_ibfk_1` FOREIGN KEY (`idPedidoCompra`) REFERENCES `pedido_compra` (`idPedidoCompra`),
  CONSTRAINT `pedido_articulo_c_ibfk_2` FOREIGN KEY (`idArt`) REFERENCES `articulo` (`idArt`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido_articulo_c`
--

LOCK TABLES `pedido_articulo_c` WRITE;
/*!40000 ALTER TABLE `pedido_articulo_c` DISABLE KEYS */;
INSERT INTO `pedido_articulo_c` VALUES (1,1,1,50),(2,2,2,20),(3,3,3,1000),(4,4,4,30),(5,5,5,6870),(6,6,6,40),(7,7,7,25),(8,8,8,1340),(9,9,9,35),(10,10,1,50),(11,11,2,200),(12,12,3,10),(13,13,4,30),(14,14,5,1000),(15,15,6,40),(16,16,7,25),(17,17,8,60),(18,18,9,35),(19,19,1,500),(20,20,2,20),(21,21,3,10),(22,22,4,300),(23,23,5,100),(24,24,6,40),(25,25,7,25),(26,26,8,60),(27,27,9,35),(28,28,10,50),(29,29,11,20),(30,30,12,10),(31,31,13,30),(32,32,14,1000),(33,33,15,40),(34,34,16,25),(35,35,17,60),(36,36,18,300),(37,37,19,100),(38,38,20,40),(39,39,30,25),(40,40,40,60),(41,41,49,30),(42,42,32,100),(43,43,24,400),(44,44,48,25),(45,45,28,60),(46,46,16,300),(47,47,15,100),(48,48,20,40),(49,49,13,25),(50,50,11,60);
/*!40000 ALTER TABLE `pedido_articulo_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido_compra`
--

DROP TABLE IF EXISTS `pedido_compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedido_compra` (
  `idPedidoCompra` int NOT NULL AUTO_INCREMENT,
  `idSector` int DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idPedidoCompra`),
  KEY `idSector` (`idSector`),
  CONSTRAINT `pedido_compra_ibfk_1` FOREIGN KEY (`idSector`) REFERENCES `sector` (`idSector`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido_compra`
--

LOCK TABLES `pedido_compra` WRITE;
/*!40000 ALTER TABLE `pedido_compra` DISABLE KEYS */;
INSERT INTO `pedido_compra` VALUES (1,3,'2024-06-01','finalizado'),(2,3,'2024-06-02','finalizado'),(3,6,'2024-06-03','finalizado'),(4,3,'2024-06-04','finalizado'),(5,3,'2024-06-05','finalizado'),(6,3,'2024-06-06','finalizado'),(7,3,'2024-06-07','finalizado'),(8,3,'2024-06-08','finalizado'),(9,4,'2024-06-09','finalizado'),(10,3,'2024-06-10','finalizado'),(11,3,'2024-06-11','pendiente'),(12,3,'2024-06-12','pendiente'),(13,3,'2024-06-13','pendiente'),(14,3,'2024-06-14','pendiente'),(15,3,'2024-06-15','pendiente'),(16,3,'2024-06-16','pendiente'),(17,3,'2024-06-17','pendiente'),(18,5,'2024-06-18','pendiente'),(19,4,'2024-06-19','pendiente'),(20,3,'2024-06-20','pendiente'),(21,3,'2024-06-21','pendiente'),(22,3,'2024-06-22','pendiente'),(23,3,'2024-06-23','pendiente'),(24,3,'2024-06-24','pendiente'),(25,3,'2024-06-25','pendiente'),(26,3,'2024-06-26','pendiente'),(27,3,'2024-06-27','pendiente'),(28,3,'2024-06-28','pendiente'),(29,3,'2024-06-29','pendiente'),(30,3,'2024-06-30','pendiente'),(31,3,'2024-06-28','pendiente'),(32,3,'2024-06-29','pendiente'),(33,3,'2024-06-30','pendiente'),(34,3,'2024-07-01','pendiente'),(35,3,'2024-07-02','pendiente'),(36,3,'2024-07-03','pendiente'),(37,3,'2024-07-04','pendiente'),(38,3,'2024-07-05','pendiente'),(39,3,'2024-07-06','pendiente'),(40,3,'2024-07-07','pendiente'),(41,3,'2024-07-08','pendiente'),(42,3,'2024-07-09','pendiente'),(43,7,'2024-07-10','pendiente'),(44,7,'2024-07-11','finalizado'),(45,9,'2024-07-12','finalizado'),(46,1,'2024-07-13','pendiente'),(47,3,'2024-07-14','pendiente'),(48,3,'2024-07-15','pendiente'),(49,3,'2024-07-16','pendiente'),(50,3,'2024-07-17','pendiente');
/*!40000 ALTER TABLE `pedido_compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedor` (
  `idProveedor` int NOT NULL AUTO_INCREMENT,
  `razonSocial` varchar(100) DEFAULT NULL,
  `cuit` bigint DEFAULT NULL,
  `telefono` bigint DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `credito` decimal(10,2) DEFAULT NULL,
  `fechaAlta` date DEFAULT NULL,
  `idLocalizacion` int DEFAULT NULL,
  PRIMARY KEY (`idProveedor`),
  KEY `idLocalizacion` (`idLocalizacion`),
  CONSTRAINT `proveedor_ibfk_1` FOREIGN KEY (`idLocalizacion`) REFERENCES `localizacion` (`idLocalizacion`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
INSERT INTO `proveedor` VALUES (1,'Materiales Construcción S.A.',20123456789,3811234567,'contacto@materialesconstruccion.com.ar',100000.00,'2020-01-01',11),(2,'Hierros y Metales S.R.L.',20234567890,3812345678,'ventas@hierrosymetales.com.ar',150000.00,'2019-02-01',12),(3,'Pinturas del Norte',20345678901,3813456789,'info@pinturasdelnorte.com.ar',50000.00,'2023-03-01',13),(4,'Caños del Sur S.A.',20456789012,114567890,'ventas@cañosdelsur.com.ar',75000.00,'2023-04-01',14),(5,'Ladrillos La Plata',20567890123,2216789012,'contacto@ladrilloslaplata.com.ar',90000.00,'2024-05-01',15),(6,'Maderas del Este S.A.',20678901234,3517890123,'info@maderasdelEste.com.ar',80000.00,'2017-06-01',16),(7,'Cerámicos y Baldosas S.A.',20789012345,3418901234,'ventas@ceramicosybaldosas.com.ar',120000.00,'2018-07-01',17),(8,'Adhesivos Mendoza S.R.L.',20890123456,2619012345,'contacto@adhesivosmendoza.com.ar',60000.00,'2018-08-01',18),(9,'Herramientas del Norte',20901234567,3870123456,'ventas@herramientasdelnorte.com.ar',70000.00,'2019-09-01',19),(10,'Accesorios de Plomería S.A.',21012345678,2990123456,'info@accesoriosplomeria.com.ar',110000.00,'2023-10-01',20),(11,'Insumos Mar del Plata S.A.',21123456789,2231234567,'contacto@insumosmdp.com.ar',100000.00,'2022-01-01',21),(12,'Materiales Villa Carlos Paz S.R.L.',21234567890,3541123456,'ventas@materialesvcp.com.ar',150000.00,'2021-02-01',22),(13,'La Santa Fe',21345678901,3421234567,'info@lasf.com.ar',50000.00,'2023-03-01',23),(14,'Ferretería del Centro',21123456789,3811111111,'contacto@ferreteriadelcentro.com.ar',100000.00,'2020-05-01',10),(15,'Cementos Nacionales S.A.',21234567890,3812222222,'ventas@cementosnacionales.com.ar',150000.00,'2019-06-01',11),(16,'Grúas y Elevadores S.R.L.',21345678901,3813333333,'info@gruasyelevadores.com.ar',50000.00,'2023-07-01',12),(17,'Tubos y Caños del Oeste',21456789012,3814444444,'ventas@tubosycanos.com.ar',75000.00,'2023-08-01',13),(18,'Hormigones Argentinos S.A.',21567890123,3815555555,'contacto@hormigonesargentinos.com.ar',90000.00,'2024-09-01',14),(19,'Pisos y Revestimientos S.A.',21678901234,3816666666,'info@pisosyrevestimientos.com.ar',80000.00,'2017-10-01',15),(20,'Herramientas Cordobesas',21789012345,3817777777,'ventas@herramientascordobesas.com.ar',120000.00,'2018-11-01',16),(21,'Adhesivos y Pegamentos S.R.L.',21890123456,3818888888,'contacto@adhesivosypegamentos.com.ar',60000.00,'2018-12-01',17),(22,'Ladrillos y Tejas S.A.',21901234567,3819999999,'ventas@ladrillosytejas.com.ar',70000.00,'2019-01-01',18),(23,'Hierros y Aceros del Norte',22012345678,3810000000,'info@hierrosyaceros.com.ar',110000.00,'2023-02-01',19),(24,'Fábrica de Viguetas S.R.L.',22123456789,3811010101,'contacto@fabrica-viguetas.com.ar',95000.00,'2020-03-01',20),(25,'Cerámicas del Sur S.A.',22234567890,3812020202,'ventas@ceramicasdelsur.com.ar',100000.00,'2019-04-01',21),(26,'Pinturas y Barnices',22345678901,3813030303,'info@pinturasybarnices.com.ar',85000.00,'2023-05-01',22),(27,'Equipos de Construcción',22456789012,3814040404,'ventas@equiposdeconstruccion.com.ar',90000.00,'2023-06-01',23),(28,'Materiales y Suministros S.A.',22567890123,3815050505,'contacto@materialesy-suministros.com.ar',115000.00,'2024-07-01',24),(29,'Puertas y Ventanas S.R.L.',22678901234,3816060606,'info@puertas-y-ventanas.com.ar',80000.00,'2017-08-01',25),(30,'Vidrios del Este S.A.',22789012345,3817070707,'ventas@vidriosdeleste.com.ar',120000.00,'2018-09-01',26),(31,'Pinturas Mendoza S.A.',22890123456,3818080808,'contacto@pinturasmendoza.com.ar',95000.00,'2018-10-01',27),(32,'Cementos del Norte',22901234567,3819090909,'ventas@cementosdelnorte.com.ar',70000.00,'2019-11-01',28),(33,'Cerámicos del Oeste S.R.L.',23012345678,3810101010,'info@ceramicosdeloeste.com.ar',110000.00,'2023-12-01',29),(34,'Maderas y Tableros S.A.',23123456789,3811111212,'contacto@maderasytableros.com.ar',100000.00,'2020-02-01',30),(35,'Hierros de Cuyo S.R.L.',23234567890,3812121212,'ventas@hierrosdecuyo.com.ar',150000.00,'2019-03-01',31),(36,'Revestimientos del Centro',23345678901,3813131313,'info@revestimientosdelcentro.com.ar',50000.00,'2023-04-01',32),(37,'Pinturas y Solventes S.A.',23456789012,3814141414,'ventas@pinturasy-solventes.com.ar',75000.00,'2023-05-01',33),(38,'Construcción y Servicios',23567890123,3815151515,'contacto@construccionyservicios.com.ar',90000.00,'2024-06-01',34),(39,'Materiales Patagónicos S.R.L.',23678901234,3816161616,'info@materialespatagonicos.com.ar',80000.00,'2017-07-01',35),(40,'Ladrillos y Bloques S.A.',23789012345,3817171717,'ventas@ladrillosybloques.com.ar',120000.00,'2018-08-01',36),(41,'Adhesivos Industriales',23890123456,3818181818,'contacto@adhesivosindustriales.com.ar',60000.00,'2018-09-01',37),(42,'Ferretería Integral',23901234567,3819191919,'ventas@ferreteriaintegral.com.ar',70000.00,'2019-10-01',38),(43,'Puertas y Cerraduras S.A.',24012345678,3810202020,'info@puertas-cerraduras.com.ar',110000.00,'2023-11-01',39),(44,'Herramientas del Oeste',24123456789,3811212121,'contacto@herramientasdeloeste.com.ar',95000.00,'2020-01-01',40),(45,'Cementos y Hormigones',24234567890,3812222223,'ventas@cementosyhormigones.com.ar',100000.00,'2019-02-01',41),(46,'Ladrillos y Prefabricados',24345678901,3813232323,'info@ladrillosyprefabricados.com.ar',85000.00,'2023-03-01',42),(47,'Viguetas del Centro',24456789012,3814242424,'ventas@viguetasdelcentro.com.ar',90000.00,'2023-04-01',43),(48,'Materiales de Construcción',24567890123,3815252525,'contacto@materialesdeconstruccion.com.ar',115000.00,'2024-05-01',44),(49,'Revestimientos del Norte',24678901234,3816262626,'info@revestimientosdelnorte.com.ar',80000.00,'2017-06-01',45),(50,'Pinturas y Decoración S.R.L.',24789012345,3817272727,'ventas@pinturasydecoracion.com.ar',120000.00,'2018-07-01',46),(51,'Cerámicos y Ladrillos',24890123456,3818282828,'contacto@ceramicosyladrillos.com.ar',95000.00,'2018-08-01',47),(52,'Adhesivos del Oeste',24901234567,3819292929,'ventas@adhesivosdeloeste.com.ar',70000.00,'2019-09-01',48),(53,'Hierros y Aceros',25012345678,3810303030,'info@hierrosyaceros.com.ar',110000.00,'2023-10-01',49),(54,'Viguetas del Sur S.R.L.',25123456789,3811313131,'contacto@viguetasdelsur.com.ar',95000.00,'2020-11-01',50),(65,'Caños y Accesorios SA',20123456780,3812222222,'contacto@canyosaccesorios.com.ar',120000.00,'2021-02-15',36),(66,'Soluciones en Caños SRL',20987654321,3813333333,'info@solucionescanyos.com.ar',110000.00,'2021-06-20',38),(67,'Distribuidora Caños del Norte',20345678901,3814444444,'ventas@canyosdelnorte.com.ar',130000.00,'2021-09-10',7),(68,'Caños de Agua y más',20456789012,3815555555,'contacto@canyosagua.com.ar',140000.00,'2022-03-05',43),(70,'Hidráulica y Caños',20567890123,3816666666,'soporte@hidraulicacanyos.com.ar',125000.00,'2022-07-30',41);
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ranking`
--

DROP TABLE IF EXISTS `ranking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ranking` (
  `idRanking` int NOT NULL AUTO_INCREMENT,
  `idRubro` int DEFAULT NULL,
  `idProveedor` int DEFAULT NULL,
  `puntaje` int DEFAULT NULL,
  `creadoEn` date DEFAULT NULL,
  PRIMARY KEY (`idRanking`),
  KEY `idRubro` (`idRubro`),
  KEY `idProveedor` (`idProveedor`),
  CONSTRAINT `ranking_ibfk_1` FOREIGN KEY (`idRubro`) REFERENCES `rubro` (`idRubro`),
  CONSTRAINT `ranking_ibfk_2` FOREIGN KEY (`idProveedor`) REFERENCES `proveedor` (`idProveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ranking`
--

LOCK TABLES `ranking` WRITE;
/*!40000 ALTER TABLE `ranking` DISABLE KEYS */;
INSERT INTO `ranking` VALUES (1,1,1,85,'2024-01-01'),(2,2,2,90,'2024-02-01'),(3,3,3,80,'2024-03-01'),(4,4,4,70,'2024-04-01'),(5,5,5,75,'2024-05-01'),(6,6,6,88,'2024-06-01'),(7,7,7,92,'2024-07-01'),(8,8,8,78,'2024-08-01'),(9,9,9,83,'2024-09-01'),(10,10,10,87,'2024-10-01'),(22,1,11,85,'2024-01-01'),(23,1,12,90,'2024-02-01'),(24,1,13,95,'2024-03-01'),(25,2,11,70,'2024-04-01'),(26,2,12,75,'2024-05-01'),(27,3,11,88,'2024-06-01'),(28,4,12,92,'2024-07-01'),(29,5,13,78,'2024-08-01'),(30,5,11,83,'2024-09-01'),(31,5,12,87,'2024-10-01'),(32,8,11,21,'2024-10-01'),(33,1,14,85,'2024-01-01'),(34,2,15,90,'2024-01-01'),(35,3,16,75,'2024-01-01'),(36,4,17,88,'2024-01-01'),(37,5,18,92,'2024-01-01'),(38,6,19,70,'2024-01-01'),(39,7,20,65,'2024-01-01'),(40,8,21,80,'2024-01-01'),(41,1,22,95,'2024-01-01'),(42,2,23,77,'2024-01-01'),(43,3,24,83,'2024-01-01'),(44,4,25,89,'2024-01-01'),(45,5,26,91,'2024-01-01'),(46,6,27,73,'2024-01-01'),(47,7,28,67,'2024-01-01'),(48,8,29,78,'2024-01-01'),(49,1,30,93,'2024-01-01'),(50,2,31,79,'2024-01-01'),(51,3,32,82,'2024-01-01'),(52,4,33,87,'2024-01-01'),(53,5,34,90,'2024-01-01'),(54,6,35,76,'2024-01-01'),(55,7,36,69,'2024-01-01'),(56,8,37,85,'2024-01-01'),(57,1,38,94,'2024-01-01'),(58,2,39,78,'2024-01-01'),(59,3,40,81,'2024-01-01'),(60,4,41,86,'2024-01-01'),(61,5,42,88,'2024-01-01'),(62,6,43,74,'2024-01-01'),(63,7,44,68,'2024-01-01'),(64,8,45,79,'2024-01-01'),(65,1,46,92,'2024-01-01'),(66,2,47,80,'2024-01-01'),(67,3,48,83,'2024-01-01'),(68,4,49,87,'2024-01-01'),(69,5,50,89,'2024-01-01'),(70,6,51,71,'2024-01-01'),(71,7,52,66,'2024-01-01'),(72,8,53,84,'2024-01-01'),(73,1,54,91,'2024-01-01'),(74,4,65,3,'2021-02-15'),(75,4,66,41,'2021-06-20'),(76,4,67,64,'2021-09-10'),(77,4,68,90,'2022-03-05'),(78,4,70,31,'2022-07-30');
/*!40000 ALTER TABLE `ranking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ranking_cliente`
--

DROP TABLE IF EXISTS `ranking_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ranking_cliente` (
  `idRanking` int NOT NULL AUTO_INCREMENT,
  `idRubro` int DEFAULT NULL,
  `idCliente` int DEFAULT NULL,
  `puntaje` decimal(10,2) DEFAULT NULL,
  `creadoEn` date DEFAULT NULL,
  PRIMARY KEY (`idRanking`),
  KEY `idRubro` (`idRubro`),
  KEY `idCliente` (`idCliente`),
  CONSTRAINT `ranking_cliente_ibfk_1` FOREIGN KEY (`idRubro`) REFERENCES `rubro` (`idRubro`),
  CONSTRAINT `ranking_cliente_ibfk_2` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ranking_cliente`
--

LOCK TABLES `ranking_cliente` WRITE;
/*!40000 ALTER TABLE `ranking_cliente` DISABLE KEYS */;
INSERT INTO `ranking_cliente` VALUES (1,1,1,78.45,'2021-05-12'),(2,2,2,85.20,'2021-06-20'),(3,3,3,92.50,'2021-07-15'),(4,4,4,64.30,'2021-08-18'),(5,5,5,75.10,'2021-09-25'),(6,6,6,88.65,'2021-10-05'),(7,7,7,93.40,'2021-11-11'),(8,8,8,54.50,'2021-12-20'),(9,9,9,67.70,'2022-01-25'),(10,10,10,73.60,'2022-02-14'),(11,1,11,81.55,'2022-03-08'),(12,2,12,90.30,'2022-04-22'),(13,3,13,58.10,'2022-05-13'),(14,4,14,76.20,'2022-06-28'),(15,5,15,87.90,'2022-07-16'),(16,6,16,65.40,'2022-08-09'),(17,7,17,91.85,'2022-09-30'),(18,8,18,52.75,'2022-10-23'),(19,9,19,79.60,'2022-11-14'),(20,10,20,68.45,'2022-12-07'),(21,1,21,83.30,'2023-01-18'),(22,2,22,57.85,'2023-02-25'),(23,3,23,74.50,'2023-03-20'),(24,4,24,89.10,'2023-04-15'),(25,5,25,77.75,'2023-05-05'),(26,6,26,61.30,'2023-06-12'),(27,7,27,85.95,'2023-07-03'),(28,8,28,90.20,'2023-08-25'),(29,9,29,66.70,'2023-09-14'),(30,10,30,73.85,'2023-10-02'),(31,1,31,88.65,'2023-11-18'),(32,2,32,91.40,'2023-12-21'),(33,3,33,67.50,'2023-01-13'),(34,4,34,79.20,'2023-02-05'),(35,5,35,81.10,'2023-03-19'),(36,6,36,93.75,'2023-04-24'),(37,7,37,55.60,'2023-05-29'),(38,8,38,62.85,'2023-06-14'),(39,9,39,76.40,'2023-07-21'),(40,10,40,85.55,'2023-08-09'),(41,1,41,89.30,'2023-09-17'),(42,2,42,57.95,'2023-10-25'),(43,3,43,73.45,'2023-11-12'),(44,4,44,82.20,'2023-12-30'),(45,5,45,66.35,'2023-01-10'),(46,6,46,71.80,'2023-02-18'),(47,7,47,84.25,'2023-03-07'),(48,8,48,91.15,'2023-04-16'),(49,9,49,75.50,'2023-05-26'),(50,10,50,82.95,'2023-06-22');
/*!40000 ALTER TABLE `ranking_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `remito`
--

DROP TABLE IF EXISTS `remito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `remito` (
  `idRemito` int NOT NULL AUTO_INCREMENT,
  `idOrdenCompra` int DEFAULT NULL,
  `fechaEmision` date DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idRemito`),
  KEY `idOrdenCompra` (`idOrdenCompra`),
  CONSTRAINT `remito_ibfk_1` FOREIGN KEY (`idOrdenCompra`) REFERENCES `orden_compra` (`idOrdenCompra`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `remito`
--

LOCK TABLES `remito` WRITE;
/*!40000 ALTER TABLE `remito` DISABLE KEYS */;
INSERT INTO `remito` VALUES (1,1,'2024-07-16','Entregado'),(2,2,'2024-07-17','Entregado'),(3,3,'2024-07-18','Entregado'),(4,4,'2024-07-19','Entregado'),(5,5,'2024-07-20','Entregado'),(6,6,'2024-07-16','Entregado'),(7,7,'2024-07-17','Entregado'),(8,8,'2024-07-18','Entregado'),(9,9,'2024-07-19','Entregado'),(10,10,'2024-07-20','Entregado'),(11,11,'2024-07-16','Entregado'),(12,12,'2024-07-17','Entregado'),(13,13,'2024-07-18','pendiente'),(14,14,'2024-07-19','pendiente'),(15,15,'2024-07-20','pendiente'),(16,16,'2024-07-21','pendiente'),(17,17,'2024-07-22','pendiente'),(18,18,'2024-07-23','pendiente'),(19,19,'2024-07-24','pendiente'),(20,20,'2024-07-25','pendiente'),(21,21,'2024-07-26','pendiente'),(22,22,'2024-07-27','pendiente'),(23,22,'2024-07-26','entregado'),(24,22,'2024-07-26','pendiente');
/*!40000 ALTER TABLE `remito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `remito_v`
--

DROP TABLE IF EXISTS `remito_v`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `remito_v` (
  `idRemito` int NOT NULL AUTO_INCREMENT,
  `idFactura` int DEFAULT NULL,
  `fechaEmision` date DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idRemito`),
  KEY `idFactura` (`idFactura`),
  CONSTRAINT `remito_v_ibfk_1` FOREIGN KEY (`idFactura`) REFERENCES `factura_v` (`idFactura`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `remito_v`
--

LOCK TABLES `remito_v` WRITE;
/*!40000 ALTER TABLE `remito_v` DISABLE KEYS */;
INSERT INTO `remito_v` VALUES (1,1,'2023-01-15','entregado'),(2,2,'2023-02-10','entregado'),(3,3,'2023-03-05','entregado'),(4,4,'2023-04-20','entregado'),(5,5,'2023-05-15','entregado'),(6,6,'2023-06-10','entregado'),(7,7,'2023-07-05','entregado'),(8,8,'2023-08-20','entregado'),(9,9,'2023-09-15','entregado'),(10,10,'2023-10-10','entregado'),(11,11,'2023-11-05','entregado'),(12,12,'2023-12-20','entregado'),(13,13,'2024-01-15','entregado'),(14,14,'2024-02-10','entregado'),(15,15,'2024-03-05','entregado'),(16,16,'2024-04-20','entregado'),(17,17,'2024-05-15','entregado');
/*!40000 ALTER TABLE `remito_v` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rev_med_emp`
--

DROP TABLE IF EXISTS `rev_med_emp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rev_med_emp` (
  `idRevMedEmp` int NOT NULL AUTO_INCREMENT,
  `idEmpleado` int DEFAULT NULL,
  `idRevMed` int DEFAULT NULL,
  PRIMARY KEY (`idRevMedEmp`),
  KEY `idRevMed` (`idRevMed`),
  KEY `idEmpleado` (`idEmpleado`),
  CONSTRAINT `rev_med_emp_ibfk_1` FOREIGN KEY (`idRevMed`) REFERENCES `revision_medica` (`idRevMed`),
  CONSTRAINT `rev_med_emp_ibfk_2` FOREIGN KEY (`idEmpleado`) REFERENCES `empleado` (`idEmpleado`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rev_med_emp`
--

LOCK TABLES `rev_med_emp` WRITE;
/*!40000 ALTER TABLE `rev_med_emp` DISABLE KEYS */;
INSERT INTO `rev_med_emp` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,7,7),(8,8,8),(9,9,9),(10,10,10),(11,11,11),(12,12,12),(13,13,13),(14,14,14),(15,15,15),(16,16,16),(17,17,17),(18,18,18),(19,19,19),(20,20,20),(21,21,21),(22,22,22),(23,23,23),(24,24,24),(25,25,25),(26,26,26),(27,27,27),(28,28,28),(29,29,29),(30,30,30),(31,31,31),(32,32,32),(33,33,33),(34,34,34),(35,35,35),(36,36,36),(37,37,37),(38,38,38),(39,39,39),(40,40,40),(41,41,41),(42,42,42),(43,43,43),(44,44,44),(45,45,45),(46,46,46),(47,47,47),(48,48,48),(49,49,49),(50,50,50),(51,1,51),(52,5,52),(53,5,53),(54,5,54);
/*!40000 ALTER TABLE `rev_med_emp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revision_medica`
--

DROP TABLE IF EXISTS `revision_medica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `revision_medica` (
  `idRevMed` int NOT NULL AUTO_INCREMENT,
  `estatura` decimal(5,2) DEFAULT NULL,
  `peso` decimal(5,2) DEFAULT NULL,
  `coefAudiometria` decimal(5,2) DEFAULT NULL,
  `presionArt` decimal(5,2) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`idRevMed`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revision_medica`
--

LOCK TABLES `revision_medica` WRITE;
/*!40000 ALTER TABLE `revision_medica` DISABLE KEYS */;
INSERT INTO `revision_medica` VALUES (1,1.75,70.50,0.98,120.80,'2019-05-20'),(2,1.82,85.30,0.95,118.75,'2019-08-14'),(3,1.68,68.00,1.02,115.60,'2020-03-10'),(4,1.75,72.40,0.97,119.90,'2020-06-22'),(5,1.70,65.20,1.00,117.40,'2020-11-13'),(6,1.80,78.50,0.96,121.50,'2021-01-29'),(7,1.77,74.60,0.99,120.10,'2021-05-08'),(8,1.66,62.00,1.03,114.80,'2021-07-15'),(9,1.73,70.00,0.97,118.30,'2021-09-20'),(10,1.85,90.00,0.95,122.70,'2021-11-25'),(11,1.78,76.50,0.99,119.60,'2022-01-12'),(12,1.65,60.00,1.04,113.50,'2022-03-20'),(13,1.72,68.90,0.98,118.90,'2022-05-17'),(14,1.80,80.00,0.96,120.20,'2022-07-30'),(15,1.74,73.00,0.97,119.10,'2022-09-14'),(16,1.68,66.00,1.01,115.70,'2022-11-21'),(17,1.82,82.50,0.95,121.30,'2023-01-09'),(18,1.76,75.00,0.98,119.80,'2023-03-22'),(19,1.69,64.50,1.02,116.20,'2023-05-18'),(20,1.71,67.00,0.99,117.90,'2023-07-05'),(21,1.84,85.00,0.95,122.50,'2023-09-12'),(22,1.79,77.50,0.97,120.00,'2023-11-03'),(23,1.67,61.50,1.03,114.60,'2024-01-10'),(24,1.73,69.00,0.98,118.50,'2024-03-16'),(25,1.81,81.00,0.96,121.00,'2024-05-22'),(26,1.70,66.50,1.00,117.20,'2019-06-12'),(27,1.75,74.00,0.98,120.50,'2019-09-05'),(28,1.83,88.00,0.95,122.10,'2020-02-03'),(29,1.69,65.00,1.01,115.90,'2020-04-11'),(30,1.77,75.50,0.97,119.70,'2020-07-19'),(31,1.64,59.00,1.04,113.80,'2020-10-22'),(32,1.72,67.50,0.98,118.70,'2021-02-15'),(33,1.79,79.00,0.96,120.30,'2021-04-30'),(34,1.74,72.50,0.97,119.00,'2021-08-07'),(35,1.66,62.50,1.02,114.70,'2021-10-19'),(36,1.81,83.00,0.95,121.60,'2022-01-05'),(37,1.76,76.00,0.98,119.90,'2022-03-12'),(38,1.70,64.00,1.00,116.10,'2022-06-18'),(39,1.78,78.00,0.97,119.40,'2022-08-25'),(40,1.67,60.50,1.03,114.20,'2022-11-02'),(41,1.83,87.00,0.95,122.20,'2023-01-11'),(42,1.69,63.50,1.01,115.50,'2023-03-08'),(43,1.75,74.50,0.98,120.00,'2023-05-03'),(44,1.82,82.00,0.96,121.10,'2023-07-27'),(45,1.71,66.00,1.00,117.30,'2023-10-13'),(46,1.77,76.00,0.97,119.60,'2023-12-06'),(47,1.69,64.30,1.02,116.00,'2019-04-14'),(48,1.80,77.50,0.96,120.10,'2019-07-19'),(49,1.75,72.20,0.97,119.50,'2020-01-25'),(50,1.68,65.80,1.01,115.80,'2020-05-13'),(51,1.75,74.00,0.92,124.50,'2021-05-16'),(52,1.70,74.00,0.92,117.40,'2024-05-16'),(53,1.70,70.00,0.92,117.40,'2023-09-14'),(54,1.70,67.00,0.92,117.40,'2023-10-01');
/*!40000 ALTER TABLE `revision_medica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rubro`
--

DROP TABLE IF EXISTS `rubro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rubro` (
  `idRubro` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idRubro`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rubro`
--

LOCK TABLES `rubro` WRITE;
/*!40000 ALTER TABLE `rubro` DISABLE KEYS */;
INSERT INTO `rubro` VALUES (1,'Cemento'),(2,'Hierros'),(3,'Pinturas'),(4,'Caños para Agua'),(5,'Ladrillos'),(6,'Maderas'),(7,'Cerámicos'),(8,'Adhesivos'),(9,'Herramientas'),(10,'Accesorios de Plomería'),(11,'Electricidad');
/*!40000 ALTER TABLE `rubro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salario`
--

DROP TABLE IF EXISTS `salario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salario` (
  `idSalario` int NOT NULL AUTO_INCREMENT,
  `montoBase` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`idSalario`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salario`
--

LOCK TABLES `salario` WRITE;
/*!40000 ALTER TABLE `salario` DISABLE KEYS */;
INSERT INTO `salario` VALUES (1,450000.00),(2,700000.00),(3,1500000.00);
/*!40000 ALTER TABLE `salario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salario_familiar`
--

DROP TABLE IF EXISTS `salario_familiar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salario_familiar` (
  `idSalarioFam` int NOT NULL AUTO_INCREMENT,
  `esDiscapacitado` tinyint(1) DEFAULT NULL,
  `esEstudioPrimario` tinyint(1) DEFAULT NULL,
  `monto` decimal(10,2) DEFAULT NULL,
  `descripcion` varchar(256) DEFAULT NULL,
  `esMatrimonio` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`idSalarioFam`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salario_familiar`
--

LOCK TABLES `salario_familiar` WRITE;
/*!40000 ALTER TABLE `salario_familiar` DISABLE KEYS */;
INSERT INTO `salario_familiar` VALUES (1,0,0,25000.00,'Asignación por hijo',0),(2,1,0,50000.00,'Asignación por hijo discapacitado',0),(3,0,1,10000.00,'Asignación por escolaridad',0),(4,0,0,100000.00,'Asignación por matrimonio',1);
/*!40000 ALTER TABLE `salario_familiar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sector`
--

DROP TABLE IF EXISTS `sector`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sector` (
  `idSector` int NOT NULL AUTO_INCREMENT,
  `nombreSector` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idSector`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sector`
--

LOCK TABLES `sector` WRITE;
/*!40000 ALTER TABLE `sector` DISABLE KEYS */;
INSERT INTO `sector` VALUES (1,'Administración'),(2,'Ventas'),(3,'Tesoreria'),(4,'Almacén'),(5,'Logística'),(6,'RRHH'),(7,'Sistemas'),(8,'Contabilidad'),(9,'Tesorería');
/*!40000 ALTER TABLE `sector` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sector_empleado`
--

DROP TABLE IF EXISTS `sector_empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sector_empleado` (
  `idSectorEmp` int NOT NULL AUTO_INCREMENT,
  `idSector` int DEFAULT NULL,
  `idEmpleado` int DEFAULT NULL,
  `fechaIngreso` date DEFAULT NULL,
  `fechaEgreso` date DEFAULT NULL,
  `idDep` int DEFAULT NULL,
  PRIMARY KEY (`idSectorEmp`),
  KEY `idSector` (`idSector`),
  KEY `idEmpleado` (`idEmpleado`),
  KEY `fk_sector_empleado_departamento` (`idDep`),
  CONSTRAINT `fk_sector_empleado_departamento` FOREIGN KEY (`idDep`) REFERENCES `departamento` (`idDep`),
  CONSTRAINT `sector_empleado_ibfk_1` FOREIGN KEY (`idSector`) REFERENCES `sector` (`idSector`),
  CONSTRAINT `sector_empleado_ibfk_2` FOREIGN KEY (`idEmpleado`) REFERENCES `empleado` (`idEmpleado`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sector_empleado`
--

LOCK TABLES `sector_empleado` WRITE;
/*!40000 ALTER TABLE `sector_empleado` DISABLE KEYS */;
INSERT INTO `sector_empleado` VALUES (1,2,1,'2009-01-15',NULL,3),(2,3,2,'2010-02-20',NULL,5),(3,2,3,'2011-03-25',NULL,3),(4,2,4,'2012-04-30',NULL,3),(5,2,5,'2013-05-05','2014-07-05',3),(6,3,6,'2014-06-10',NULL,5),(7,3,7,'2015-07-15',NULL,5),(8,4,8,'2016-08-20',NULL,7),(9,1,9,'2017-09-25',NULL,1),(10,6,10,'2018-10-30',NULL,11),(11,7,11,'2019-11-05',NULL,13),(12,3,12,'2020-12-10',NULL,5),(13,2,13,'2021-01-15',NULL,3),(14,2,14,'2022-02-20',NULL,3),(15,3,15,'2023-03-25',NULL,5),(16,2,16,'2009-04-30',NULL,3),(17,3,17,'2010-05-05',NULL,5),(18,2,18,'2011-06-10',NULL,3),(19,2,19,'2012-07-15',NULL,3),(20,3,20,'2013-08-20',NULL,5),(21,3,21,'2014-09-25',NULL,5),(22,4,22,'2015-10-30',NULL,7),(23,1,23,'2016-11-05',NULL,1),(24,6,24,'2017-12-10',NULL,11),(25,7,25,'2018-01-15',NULL,13),(26,3,26,'2019-02-20',NULL,5),(27,2,27,'2020-03-25',NULL,3),(28,2,28,'2021-04-30',NULL,3),(29,2,29,'2022-05-05',NULL,3),(30,3,30,'2023-06-10',NULL,5),(31,2,31,'2009-07-15',NULL,3),(32,3,32,'2010-08-20',NULL,5),(33,2,33,'2011-09-25',NULL,3),(34,2,34,'2012-10-30',NULL,3),(35,2,35,'2013-11-05',NULL,3),(36,3,36,'2014-12-10',NULL,5),(37,3,37,'2015-01-15',NULL,5),(38,4,38,'2016-02-20',NULL,7),(39,1,39,'2017-03-25',NULL,1),(40,6,40,'2018-04-30',NULL,11),(41,7,41,'2019-05-05',NULL,13),(42,3,42,'2020-06-10',NULL,5),(43,2,43,'2021-07-15',NULL,3),(44,2,44,'2022-08-20',NULL,3),(45,3,45,'2023-09-25',NULL,5),(46,2,46,'2009-10-30',NULL,3),(47,3,47,'2010-11-05',NULL,5),(48,2,48,'2011-12-10',NULL,3),(49,2,49,'2012-01-15',NULL,3),(50,3,50,'2013-02-20',NULL,5),(51,1,5,'2014-07-05',NULL,4);
/*!40000 ALTER TABLE `sector_empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock`
--

DROP TABLE IF EXISTS `stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock` (
  `idStock` int NOT NULL AUTO_INCREMENT,
  `idArt` int DEFAULT NULL,
  `idDeposito` int DEFAULT NULL,
  `idSucursal` int DEFAULT NULL,
  `cantidad` int DEFAULT NULL,
  `estante` int DEFAULT NULL,
  `pasillo` int DEFAULT NULL,
  `idRemito` int DEFAULT NULL,
  `cantidadSuc` bigint DEFAULT '0',
  `cantidadDep` bigint DEFAULT '0',
  PRIMARY KEY (`idStock`),
  KEY `idArt` (`idArt`),
  KEY `idDeposito` (`idDeposito`),
  KEY `idSucursal` (`idSucursal`),
  KEY `fk_idRemito` (`idRemito`),
  CONSTRAINT `fk_idRemito` FOREIGN KEY (`idRemito`) REFERENCES `remito` (`idRemito`),
  CONSTRAINT `stock_ibfk_1` FOREIGN KEY (`idArt`) REFERENCES `articulo` (`idArt`),
  CONSTRAINT `stock_ibfk_2` FOREIGN KEY (`idDeposito`) REFERENCES `deposito` (`idDeposito`),
  CONSTRAINT `stock_ibfk_3` FOREIGN KEY (`idSucursal`) REFERENCES `sucursal` (`idSucursal`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock`
--

LOCK TABLES `stock` WRITE;
/*!40000 ALTER TABLE `stock` DISABLE KEYS */;
INSERT INTO `stock` VALUES (1,1,1,1,1150,1,2,1,1000,150),(3,2,1,2,20,1,2,2,15,5),(5,3,1,3,1000,1,2,3,300,700),(7,4,2,4,30,1,2,4,25,5),(9,5,1,5,6870,1,2,5,3000,3870),(11,6,2,6,40,1,2,6,30,10),(13,7,1,7,25,1,2,7,20,5),(15,8,1,1,1340,1,2,8,1000,340),(17,9,2,2,35,1,2,9,30,5),(25,10,1,3,150,1,2,1,50,100),(27,11,1,4,1900,1,2,2,1000,900),(29,12,1,5,450,1,2,3,150,300),(31,13,2,6,600,1,2,4,200,400),(33,14,1,7,750,1,2,5,250,500),(35,15,1,1,900,1,2,6,300,600),(37,16,2,2,1050,1,2,7,350,700),(39,17,1,3,1200,1,2,8,400,800),(49,1100,1,1,150,1,2,NULL,100,50),(50,1101,1,2,80,1,2,NULL,30,50),(51,1102,1,3,60,1,2,NULL,40,20),(52,1103,1,4,100,1,2,NULL,60,40),(53,1104,1,5,5000,1,2,NULL,3000,2000),(54,1105,1,6,75,1,2,NULL,50,25),(55,1106,1,7,200,1,2,NULL,150,50),(56,1107,2,1,90,1,2,NULL,60,30),(57,1108,2,2,40,1,2,NULL,25,15),(58,1109,2,3,55,1,2,NULL,35,20),(59,1,NULL,3,500,2,1,7,100,400);
/*!40000 ALTER TABLE `stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sucursal`
--

DROP TABLE IF EXISTS `sucursal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sucursal` (
  `idSucursal` int NOT NULL AUTO_INCREMENT,
  `idLocalizacion` int DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `idDeposito` int DEFAULT NULL,
  PRIMARY KEY (`idSucursal`),
  KEY `idLocalizacion` (`idLocalizacion`),
  KEY `fk_idDeposito` (`idDeposito`),
  CONSTRAINT `fk_idDeposito` FOREIGN KEY (`idDeposito`) REFERENCES `deposito` (`idDeposito`),
  CONSTRAINT `sucursal_ibfk_1` FOREIGN KEY (`idLocalizacion`) REFERENCES `localizacion` (`idLocalizacion`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sucursal`
--

LOCK TABLES `sucursal` WRITE;
/*!40000 ALTER TABLE `sucursal` DISABLE KEYS */;
INSERT INTO `sucursal` VALUES (1,1,'Centro',1),(2,2,'Norte',2),(3,3,'Yerba Buena',3),(4,4,'Tafí Viejo',4),(5,5,'San Martín',5),(6,6,'Mitre',6),(7,7,'Córdoba',7);
/*!40000 ALTER TABLE `sucursal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_factura`
--

DROP TABLE IF EXISTS `tipo_factura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_factura` (
  `idTipoFactura` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `IVA` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`idTipoFactura`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_factura`
--

LOCK TABLES `tipo_factura` WRITE;
/*!40000 ALTER TABLE `tipo_factura` DISABLE KEYS */;
INSERT INTO `tipo_factura` VALUES (1,'A',0.21),(2,'B',0.21),(3,'C',0.00);
/*!40000 ALTER TABLE `tipo_factura` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-24 23:03:47
