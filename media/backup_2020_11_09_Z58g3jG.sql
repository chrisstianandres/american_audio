-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: bd_audio
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add cargo',6,'add_cargo'),(22,'Can change cargo',6,'change_cargo'),(23,'Can delete cargo',6,'delete_cargo'),(24,'Can view cargo',6,'view_cargo'),(25,'Can add categoria',7,'add_categoria'),(26,'Can change categoria',7,'change_categoria'),(27,'Can delete categoria',7,'delete_categoria'),(28,'Can view categoria',7,'view_categoria'),(29,'Can add cliente',8,'add_cliente'),(30,'Can change cliente',8,'change_cliente'),(31,'Can delete cliente',8,'delete_cliente'),(32,'Can view cliente',8,'view_cliente'),(33,'Can add compra',9,'add_compra'),(34,'Can change compra',9,'change_compra'),(35,'Can delete compra',9,'delete_compra'),(36,'Can view compra',9,'view_compra'),(37,'Can add detalle_compra',10,'add_detalle_compra'),(38,'Can change detalle_compra',10,'change_detalle_compra'),(39,'Can delete detalle_compra',10,'delete_detalle_compra'),(40,'Can view detalle_compra',10,'view_detalle_compra'),(41,'Can add empleado',11,'add_empleado'),(42,'Can change empleado',11,'change_empleado'),(43,'Can delete empleado',11,'delete_empleado'),(44,'Can view empleado',11,'view_empleado'),(45,'Can add empresa',12,'add_empresa'),(46,'Can change empresa',12,'change_empresa'),(47,'Can delete empresa',12,'delete_empresa'),(48,'Can view empresa',12,'view_empresa'),(49,'Can add producto',13,'add_producto'),(50,'Can change producto',13,'change_producto'),(51,'Can delete producto',13,'delete_producto'),(52,'Can view producto',13,'view_producto'),(53,'Can add proveedor',14,'add_proveedor'),(54,'Can change proveedor',14,'change_proveedor'),(55,'Can delete proveedor',14,'delete_proveedor'),(56,'Can view proveedor',14,'view_proveedor'),(57,'Can add venta',15,'add_venta'),(58,'Can change venta',15,'change_venta'),(59,'Can delete venta',15,'delete_venta'),(60,'Can view venta',15,'view_venta'),(61,'Can add detalle_venta',16,'add_detalle_venta'),(62,'Can change detalle_venta',16,'change_detalle_venta'),(63,'Can delete detalle_venta',16,'delete_detalle_venta'),(64,'Can view detalle_venta',16,'view_detalle_venta'),(65,'Can add presentacion',17,'add_presentacion'),(66,'Can change presentacion',17,'change_presentacion'),(67,'Can delete presentacion',17,'delete_presentacion'),(68,'Can view presentacion',17,'view_presentacion'),(69,'Can add servicio',18,'add_servicio'),(70,'Can change servicio',18,'change_servicio'),(71,'Can delete servicio',18,'delete_servicio'),(72,'Can view servicio',18,'view_servicio'),(73,'Can add inventario',19,'add_inventario'),(74,'Can change inventario',19,'change_inventario'),(75,'Can delete inventario',19,'delete_inventario'),(76,'Can view inventario',19,'view_inventario'),(77,'Can add tipo_gasto',20,'add_tipo_gasto'),(78,'Can change tipo_gasto',20,'change_tipo_gasto'),(79,'Can delete tipo_gasto',20,'delete_tipo_gasto'),(80,'Can view tipo_gasto',20,'view_tipo_gasto'),(81,'Can add gasto',21,'add_gasto'),(82,'Can change gasto',21,'change_gasto'),(83,'Can delete gasto',21,'delete_gasto'),(84,'Can view gasto',21,'view_gasto'),(85,'Can add devolucion',22,'add_devolucion'),(86,'Can change devolucion',22,'change_devolucion'),(87,'Can delete devolucion',22,'delete_devolucion'),(88,'Can view devolucion',22,'view_devolucion'),(89,'Can add databasebackups',23,'add_databasebackups'),(90,'Can change databasebackups',23,'change_databasebackups'),(91,'Can delete databasebackups',23,'delete_databasebackups'),(92,'Can view databasebackups',23,'view_databasebackups');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cargo`
--

DROP TABLE IF EXISTS `cargo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cargo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cargo`
--

LOCK TABLES `cargo` WRITE;
/*!40000 ALTER TABLE `cargo` DISABLE KEYS */;
INSERT INTO `cargo` VALUES (1,'Administrador','Admin General');
/*!40000 ALTER TABLE `cargo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(25) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'Productos Electronicos','Productos Electronicos');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombres` varchar(50) NOT NULL,
  `apellidos` varchar(20) DEFAULT NULL,
  `cedula` varchar(10) NOT NULL,
  `correo` varchar(50) DEFAULT NULL,
  `sexo` int NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cedula` (`cedula`),
  UNIQUE KEY `telefono` (`telefono`),
  UNIQUE KEY `correo` (`correo`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Elias Justin','Olivo Jara','0919995373','EliasOlivo@gmail.com',1,'0994695418','Guayaquil','2020-11-07');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compra`
--

DROP TABLE IF EXISTS `compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compra` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fecha_compra` date NOT NULL,
  `subtotal` decimal(9,2) NOT NULL,
  `iva` decimal(9,2) NOT NULL,
  `total` decimal(9,2) NOT NULL,
  `estado` int NOT NULL,
  `empleado_id` int DEFAULT NULL,
  `proveedor_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `compra_empleado_id_646987fd_fk_empleado_id` (`empleado_id`),
  KEY `compra_proveedor_id_11336635_fk_proveedor_id` (`proveedor_id`),
  CONSTRAINT `compra_empleado_id_646987fd_fk_empleado_id` FOREIGN KEY (`empleado_id`) REFERENCES `empleado` (`id`),
  CONSTRAINT `compra_proveedor_id_11336635_fk_proveedor_id` FOREIGN KEY (`proveedor_id`) REFERENCES `proveedor` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compra`
--

LOCK TABLES `compra` WRITE;
/*!40000 ALTER TABLE `compra` DISABLE KEYS */;
INSERT INTO `compra` VALUES (9,'2020-11-06',107.14,12.86,120.00,1,1,1),(10,'2020-11-06',214.29,25.71,240.00,1,1,1),(11,'2020-11-06',107.14,12.86,120.00,1,1,1),(12,'2020-11-06',107.14,12.86,120.00,1,1,1);
/*!40000 ALTER TABLE `compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `databasebackups`
--

DROP TABLE IF EXISTS `databasebackups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `databasebackups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `archive` varchar(100) NOT NULL,
  `user_id` int DEFAULT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `databasebackups_user_id_486fa5c8_fk_empleado_id` (`user_id`),
  CONSTRAINT `databasebackups_user_id_486fa5c8_fk_empleado_id` FOREIGN KEY (`user_id`) REFERENCES `empleado` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `databasebackups`
--

LOCK TABLES `databasebackups` WRITE;
/*!40000 ALTER TABLE `databasebackups` DISABLE KEYS */;
/*!40000 ALTER TABLE `databasebackups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_compra`
--

DROP TABLE IF EXISTS `detalle_compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_compra` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cantidad` int NOT NULL,
  `subtotal` decimal(9,2) NOT NULL,
  `compra_id` int NOT NULL,
  `producto_id` int NOT NULL,
  `p_compra_actual` decimal(9,2),
  PRIMARY KEY (`id`),
  KEY `detalle_compra_compra_id_4fc61e57_fk_compra_id` (`compra_id`),
  KEY `detalle_compra_producto_id_87f4062c_fk_producto_id` (`producto_id`),
  CONSTRAINT `detalle_compra_compra_id_4fc61e57_fk_compra_id` FOREIGN KEY (`compra_id`) REFERENCES `compra` (`id`),
  CONSTRAINT `detalle_compra_producto_id_87f4062c_fk_producto_id` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_compra`
--

LOCK TABLES `detalle_compra` WRITE;
/*!40000 ALTER TABLE `detalle_compra` DISABLE KEYS */;
INSERT INTO `detalle_compra` VALUES (9,1,107.00,9,1,120.00),(10,2,214.00,10,1,120.00),(11,1,107.00,11,1,120.00),(12,1,107.00,12,1,120.00);
/*!40000 ALTER TABLE `detalle_compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_venta`
--

DROP TABLE IF EXISTS `detalle_venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_venta` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cantidadp` int NOT NULL,
  `cantidads` int NOT NULL,
  `subtotalp` decimal(9,2) NOT NULL,
  `subtotals` decimal(9,2) NOT NULL,
  `producto_id` int DEFAULT NULL,
  `servicio_id` int DEFAULT NULL,
  `venta_id` int NOT NULL,
  `pvp_actual` decimal(9,2),
  `pvp_actual_s` decimal(9,2),
  PRIMARY KEY (`id`),
  KEY `detalle_venta_producto_id_d6b1f3f3_fk_producto_id` (`producto_id`),
  KEY `detalle_venta_servicio_id_2653bd91_fk_servicio_id` (`servicio_id`),
  KEY `detalle_venta_venta_id_ecf1a1a3_fk_venta_id` (`venta_id`),
  CONSTRAINT `detalle_venta_producto_id_d6b1f3f3_fk_producto_id` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`id`),
  CONSTRAINT `detalle_venta_servicio_id_2653bd91_fk_servicio_id` FOREIGN KEY (`servicio_id`) REFERENCES `servicio` (`id`),
  CONSTRAINT `detalle_venta_venta_id_ecf1a1a3_fk_venta_id` FOREIGN KEY (`venta_id`) REFERENCES `venta` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_venta`
--

LOCK TABLES `detalle_venta` WRITE;
/*!40000 ALTER TABLE `detalle_venta` DISABLE KEYS */;
INSERT INTO `detalle_venta` VALUES (17,1,0,168.00,0.00,1,NULL,17,188.16,0.00),(18,1,1,168.00,13.39,1,1,18,188.16,15.00),(19,1,1,168.00,15.00,1,1,24,188.16,15.00),(20,1,1,168.00,1.00,1,1,25,188.16,1.00),(21,1,1,168.00,1.00,1,1,25,188.16,1.00),(27,1,1,168.00,1.00,1,1,30,188.16,1.00);
/*!40000 ALTER TABLE `detalle_venta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `devolucion`
--

DROP TABLE IF EXISTS `devolucion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `devolucion` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `venta_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `devolucion_venta_id_ff12d98e_fk_venta_id` (`venta_id`),
  CONSTRAINT `devolucion_venta_id_ff12d98e_fk_venta_id` FOREIGN KEY (`venta_id`) REFERENCES `venta` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `devolucion`
--

LOCK TABLES `devolucion` WRITE;
/*!40000 ALTER TABLE `devolucion` DISABLE KEYS */;
INSERT INTO `devolucion` VALUES (1,'2020-11-07',17),(2,'2020-11-09',24),(3,'2020-11-09',25),(4,'2020-11-09',26),(5,'2020-11-09',27),(6,'2020-11-09',28),(7,'2020-11-09',29),(8,'2020-11-09',30);
/*!40000 ALTER TABLE `devolucion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_empleado_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_empleado_id` FOREIGN KEY (`user_id`) REFERENCES `empleado` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2020-11-05 20:58:14.229989','1','American Audio 0978765652001',1,'[{\"added\": {}}]',12,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(6,'cargo','cargo'),(7,'categoria','categoria'),(8,'cliente','cliente'),(9,'compra','compra'),(10,'compra','detalle_compra'),(4,'contenttypes','contenttype'),(23,'DatabaseBackups','databasebackups'),(22,'delvoluciones_venta','devolucion'),(11,'empleado','empleado'),(12,'empresa','empresa'),(21,'gasto','gasto'),(19,'inventario','inventario'),(17,'presentacion','presentacion'),(13,'producto','producto'),(14,'proveedor','proveedor'),(18,'servicio','servicio'),(5,'sessions','session'),(20,'tipogasto','tipo_gasto'),(16,'venta','detalle_venta'),(15,'venta','venta');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'cargo','0001_initial','2020-11-05 20:20:22.323053'),(2,'contenttypes','0001_initial','2020-11-05 20:20:24.002572'),(3,'contenttypes','0002_remove_content_type_name','2020-11-05 20:20:26.992482'),(4,'auth','0001_initial','2020-11-05 20:20:31.581187'),(5,'auth','0002_alter_permission_name_max_length','2020-11-05 20:20:45.987056'),(6,'auth','0003_alter_user_email_max_length','2020-11-05 20:20:46.059732'),(7,'auth','0004_alter_user_username_opts','2020-11-05 20:20:46.154158'),(8,'auth','0005_alter_user_last_login_null','2020-11-05 20:20:46.237245'),(9,'auth','0006_require_contenttypes_0002','2020-11-05 20:20:46.311305'),(10,'auth','0007_alter_validators_add_error_messages','2020-11-05 20:20:46.347947'),(11,'auth','0008_alter_user_username_max_length','2020-11-05 20:20:46.403466'),(12,'auth','0009_alter_user_last_name_max_length','2020-11-05 20:20:46.448053'),(13,'auth','0010_alter_group_name_max_length','2020-11-05 20:20:46.832088'),(14,'auth','0011_update_proxy_permissions','2020-11-05 20:20:46.891985'),(15,'auth','0012_alter_user_first_name_max_length','2020-11-05 20:20:47.012146'),(16,'empleado','0001_initial','2020-11-05 20:20:49.237351'),(17,'admin','0001_initial','2020-11-05 20:21:03.710445'),(18,'admin','0002_logentry_remove_auto_add','2020-11-05 20:21:10.705456'),(19,'admin','0003_logentry_add_action_flag_choices','2020-11-05 20:21:10.848395'),(20,'categoria','0001_initial','2020-11-05 20:21:11.642639'),(21,'cliente','0001_initial','2020-11-05 20:21:12.618040'),(22,'proveedor','0001_initial','2020-11-05 20:21:13.402233'),(23,'presentacion','0001_initial','2020-11-05 20:21:14.119180'),(24,'producto','0001_initial','2020-11-05 20:21:14.631683'),(25,'compra','0001_initial','2020-11-05 20:21:22.490497'),(26,'compra','0002_auto_20201105_1520','2020-11-05 20:21:32.407594'),(27,'empresa','0001_initial','2020-11-05 20:21:33.386043'),(28,'servicio','0001_initial','2020-11-05 20:21:33.728406'),(29,'venta','0001_initial','2020-11-05 20:21:34.518776'),(30,'inventario','0001_initial','2020-11-05 20:21:44.971471'),(31,'sessions','0001_initial','2020-11-05 20:21:54.615040'),(32,'producto','0002_producto_p_compra','2020-11-05 20:43:32.614943'),(33,'empresa','0002_auto_20201105_1620','2020-11-05 21:20:52.245393'),(34,'venta','0002_detalle_venta_pvp_actual','2020-11-06 17:48:32.596475'),(35,'venta','0003_detalle_venta_pvp_actual_s','2020-11-06 18:09:26.317429'),(36,'compra','0003_detalle_compra_p_compra_actual','2020-11-06 18:23:33.108968'),(37,'tipogasto','0001_initial','2020-11-07 14:16:18.093582'),(38,'gasto','0001_initial','2020-11-07 14:16:19.346636'),(39,'cliente','0002_cliente_fecha','2020-11-07 17:24:38.137902'),(40,'proveedor','0002_proveedor_fecha','2020-11-07 17:24:39.387213'),(41,'delvoluciones_venta','0001_initial','2020-11-07 18:56:57.866237'),(42,'producto','0003_producto_instalacion','2020-11-07 20:27:30.724465'),(43,'servicio','0002_remove_servicio_pvp','2020-11-07 20:30:29.506857'),(44,'inventario','0002_inventario_select','2020-11-07 21:44:48.056777'),(45,'inventario','0003_auto_20201107_1644','2020-11-07 21:44:48.212066'),(46,'DatabaseBackups','0001_initial','2020-11-09 20:01:15.603104'),(47,'DatabaseBackups','0002_remove_databasebackups_fecha','2020-11-09 20:20:58.052118'),(48,'DatabaseBackups','0003_databasebackups_fecha','2020-11-09 20:25:51.908729');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('6ynsl08c5puzptrr52kie03zmuswzkir','.eJxVjDsOwjAQBe_iGlnxL2tT0ucM1q4_OIBsKU4qxN2RpRTQvpl5b-bx2Is_etr8GtmVCXb53QjDM9UB4gPrvfHQ6r6txIfCT9r50mJ63U7376BgL6NWOSMJdDqSmIXVpI3LOUUgY60IwUGCAJMBmYMENekIDoWSNDuwEtjnC_xxN7s:1kam3p:4C1Md5vhDlIqvJYv98yqi9KPGyvRw-tpG9iDZa9tKrM','2020-11-19 20:40:45.327698'),('jwjz390r76k6t2dcwtvgy5b03expkh9p','.eJxVjDsOwjAQBe_iGlnxL2tT0ucM1q4_OIBsKU4qxN2RpRTQvpl5b-bx2Is_etr8GtmVCXb53QjDM9UB4gPrvfHQ6r6txIfCT9r50mJ63U7376BgL6NWOSMJdDqSmIXVpI3LOUUgY60IwUGCAJMBmYMENekIDoWSNDuwEtjnC_xxN7s:1kbANI:P8QhUCzRsJOgztJtbJ40LtB6PLnjpVhk-37Ig5G4l7c','2020-11-20 22:38:28.684981');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleado`
--

DROP TABLE IF EXISTS `empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleado` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `avatar` varchar(100) NOT NULL,
  `cedula` varchar(10) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `direccion` varchar(500) DEFAULT NULL,
  `sexo` int NOT NULL,
  `estado` int NOT NULL,
  `cargo_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `cedula` (`cedula`),
  UNIQUE KEY `telefono` (`telefono`),
  KEY `empleado_cargo_id_bb5f1a73_fk_cargo_id` (`cargo_id`),
  CONSTRAINT `empleado_cargo_id_bb5f1a73_fk_cargo_id` FOREIGN KEY (`cargo_id`) REFERENCES `cargo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleado`
--

LOCK TABLES `empleado` WRITE;
/*!40000 ALTER TABLE `empleado` DISABLE KEYS */;
INSERT INTO `empleado` VALUES (1,'pbkdf2_sha256$216000$uwVOr40GKYbJ$RDD1sLHpUF/HCtvOE/4VvLU90dz12vQnMfRb2ZtWltc=','2020-11-06 22:38:28.585392',1,'admin','Christian Andres','Gomez Moran','chrisstianandres@gmail.com',1,1,'2020-11-05 20:26:04.613878','empleado/2020/11/05/Captura.PNG','0604551580','0994695413','Milagro',0,1,1);
/*!40000 ALTER TABLE `empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleado_groups`
--

DROP TABLE IF EXISTS `empleado_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleado_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `empleado_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `empleado_groups_empleado_id_group_id_82133948_uniq` (`empleado_id`,`group_id`),
  KEY `empleado_groups_group_id_adc87027_fk_auth_group_id` (`group_id`),
  CONSTRAINT `empleado_groups_empleado_id_135f7a8d_fk_empleado_id` FOREIGN KEY (`empleado_id`) REFERENCES `empleado` (`id`),
  CONSTRAINT `empleado_groups_group_id_adc87027_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleado_groups`
--

LOCK TABLES `empleado_groups` WRITE;
/*!40000 ALTER TABLE `empleado_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `empleado_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleado_user_permissions`
--

DROP TABLE IF EXISTS `empleado_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleado_user_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `empleado_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `empleado_user_permission_empleado_id_permission_i_03ddb8c6_uniq` (`empleado_id`,`permission_id`),
  KEY `empleado_user_permis_permission_id_0e79a42e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `empleado_user_permis_permission_id_0e79a42e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `empleado_user_permissions_empleado_id_85d378a6_fk_empleado_id` FOREIGN KEY (`empleado_id`) REFERENCES `empleado` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleado_user_permissions`
--

LOCK TABLES `empleado_user_permissions` WRITE;
/*!40000 ALTER TABLE `empleado_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `empleado_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresa`
--

DROP TABLE IF EXISTS `empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empresa` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) NOT NULL,
  `ciudad` varchar(25) NOT NULL,
  `ruc` varchar(13) NOT NULL,
  `direccion` varchar(25) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `correo` varchar(50) DEFAULT NULL,
  `iva` int DEFAULT NULL,
  `indice` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ruc` (`ruc`),
  UNIQUE KEY `telefono` (`telefono`),
  UNIQUE KEY `correo` (`correo`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresa`
--

LOCK TABLES `empresa` WRITE;
/*!40000 ALTER TABLE `empresa` DISABLE KEYS */;
INSERT INTO `empresa` VALUES (1,'American Audio','Milagro','0978765652001','Milagro','0994695413','EliasOlivo@gmail.com',12,40);
/*!40000 ALTER TABLE `empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gasto`
--

DROP TABLE IF EXISTS `gasto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gasto` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `valor` decimal(9,2) NOT NULL,
  `detalle` varchar(50) NOT NULL,
  `empresa_id` int NOT NULL,
  `tipo_gasto_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `gasto_empresa_id_f4c127b0_fk_empresa_id` (`empresa_id`),
  KEY `gasto_tipo_gasto_id_25d252dd_fk_tipo_gasto_id` (`tipo_gasto_id`),
  CONSTRAINT `gasto_empresa_id_f4c127b0_fk_empresa_id` FOREIGN KEY (`empresa_id`) REFERENCES `empresa` (`id`),
  CONSTRAINT `gasto_tipo_gasto_id_25d252dd_fk_tipo_gasto_id` FOREIGN KEY (`tipo_gasto_id`) REFERENCES `tipo_gasto` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gasto`
--

LOCK TABLES `gasto` WRITE;
/*!40000 ALTER TABLE `gasto` DISABLE KEYS */;
INSERT INTO `gasto` VALUES (1,'2020-11-07',0.05,'Pago de Luz mes de Noviembre 2020',1,2),(2,'2020-11-07',50.00,'Pago de Agua mes de Noviembre 2020',1,1);
/*!40000 ALTER TABLE `gasto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventario`
--

DROP TABLE IF EXISTS `inventario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventario` (
  `id` int NOT NULL AUTO_INCREMENT,
  `serie` varchar(13) NOT NULL,
  `estado` int NOT NULL,
  `compra_id` int NOT NULL,
  `producto_id` int DEFAULT NULL,
  `venta_id` int DEFAULT NULL,
  `select` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `serie` (`serie`),
  KEY `inventario_compra_id_49e631bc_fk_compra_id` (`compra_id`),
  KEY `inventario_producto_id_61d8ae74_fk_producto_id` (`producto_id`),
  KEY `inventario_venta_id_58a6d37d_fk_venta_id` (`venta_id`),
  CONSTRAINT `inventario_compra_id_49e631bc_fk_compra_id` FOREIGN KEY (`compra_id`) REFERENCES `compra` (`id`),
  CONSTRAINT `inventario_producto_id_61d8ae74_fk_producto_id` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`id`),
  CONSTRAINT `inventario_venta_id_58a6d37d_fk_venta_id` FOREIGN KEY (`venta_id`) REFERENCES `venta` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventario`
--

LOCK TABLES `inventario` WRITE;
/*!40000 ALTER TABLE `inventario` DISABLE KEYS */;
INSERT INTO `inventario` VALUES (13,'JHGFDS254',0,10,1,18,1),(14,'ASDFGHJ25',1,10,1,NULL,0),(16,'KSJJDHD14587',1,12,1,NULL,0);
/*!40000 ALTER TABLE `inventario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `presentacion`
--

DROP TABLE IF EXISTS `presentacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `presentacion` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `abreviatura` varchar(10) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `presentacion`
--

LOCK TABLES `presentacion` WRITE;
/*!40000 ALTER TABLE `presentacion` DISABLE KEYS */;
INSERT INTO `presentacion` VALUES (1,'Unidad','ud','Unidad de producto');
/*!40000 ALTER TABLE `presentacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `stock` int NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `pvp` decimal(9,2) DEFAULT NULL,
  `categoria_id` int NOT NULL,
  `presentacion_id` int DEFAULT NULL,
  `p_compra` decimal(9,2),
  `instalacion` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `producto_categoria_id_67131168_fk_categoria_id` (`categoria_id`),
  KEY `producto_presentacion_id_15185bfb_fk_presentacion_id` (`presentacion_id`),
  CONSTRAINT `producto_categoria_id_67131168_fk_categoria_id` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`id`),
  CONSTRAINT `producto_presentacion_id_15185bfb_fk_presentacion_id` FOREIGN KEY (`presentacion_id`) REFERENCES `presentacion` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (1,'Piooner KJM',2,'Radio para carro piooner',188.16,1,1,120.00,1);
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombres` varchar(50) NOT NULL,
  `documento` int NOT NULL,
  `numero_documento` varchar(13) NOT NULL,
  `correo` varchar(50) DEFAULT NULL,
  `telefono` varchar(10) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `numero_documento` (`numero_documento`),
  UNIQUE KEY `telefono` (`telefono`),
  UNIQUE KEY `correo` (`correo`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
INSERT INTO `proveedor` VALUES (1,'Piooner Ecuador',1,'0910978329001','ventas@piooner.com','0910978329','Guayaquil La Alborada','2020-11-07');
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicio`
--

DROP TABLE IF EXISTS `servicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servicio` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicio`
--

LOCK TABLES `servicio` WRITE;
/*!40000 ALTER TABLE `servicio` DISABLE KEYS */;
INSERT INTO `servicio` VALUES (1,'Instalación','Instalacion de Equipos');
/*!40000 ALTER TABLE `servicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_gasto`
--

DROP TABLE IF EXISTS `tipo_gasto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_gasto` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_gasto`
--

LOCK TABLES `tipo_gasto` WRITE;
/*!40000 ALTER TABLE `tipo_gasto` DISABLE KEYS */;
INSERT INTO `tipo_gasto` VALUES (1,'Pago de Agua'),(2,'Pago de Luz'),(3,'Pago de Impuestos'),(4,'Pago de Arriendo');
/*!40000 ALTER TABLE `tipo_gasto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venta`
--

DROP TABLE IF EXISTS `venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `venta` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fecha_venta` date NOT NULL,
  `subtotal` decimal(9,2) NOT NULL,
  `iva` decimal(9,2) NOT NULL,
  `total` decimal(9,2) NOT NULL,
  `estado` int NOT NULL,
  `cliente_id` int NOT NULL,
  `empleado_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `venta_cliente_id_23062742_fk_cliente_id` (`cliente_id`),
  KEY `venta_empleado_id_c03a5623_fk_empleado_id` (`empleado_id`),
  CONSTRAINT `venta_cliente_id_23062742_fk_cliente_id` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`id`),
  CONSTRAINT `venta_empleado_id_c03a5623_fk_empleado_id` FOREIGN KEY (`empleado_id`) REFERENCES `empleado` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venta`
--

LOCK TABLES `venta` WRITE;
/*!40000 ALTER TABLE `venta` DISABLE KEYS */;
INSERT INTO `venta` VALUES (17,'2020-11-06',168.00,20.16,188.16,0,1,1),(18,'2020-11-06',181.39,21.77,203.16,1,1,1),(24,'2020-11-09',183.00,21.96,204.96,0,1,1),(25,'2020-11-09',338.00,40.56,378.56,0,1,1),(26,'2020-11-09',338.00,40.56,378.56,0,1,1),(27,'2020-11-09',169.00,20.28,189.28,0,1,1),(28,'2020-11-09',169.00,20.28,189.28,0,1,1),(29,'2020-11-09',169.00,20.28,189.28,0,1,1),(30,'2020-11-09',169.00,20.28,189.28,0,1,1);
/*!40000 ALTER TABLE `venta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-09 23:04:55
