-- MySQL dump 10.13  Distrib 8.0.30, for macos12 (arm64)
--
-- Host: localhost    Database: PEDIDOS
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `Clientes`
--

DROP TABLE IF EXISTS `Clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Clientes` (
  `idcliente` int NOT NULL,
  `Apellido` varchar(100) NOT NULL,
  `Nombres` varchar(100) NOT NULL,
  `Direccion` varchar(100) NOT NULL,
  `mail` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Clientes`
--

LOCK TABLES `Clientes` WRITE;
/*!40000 ALTER TABLE `Clientes` DISABLE KEYS */;
INSERT INTO `Clientes` VALUES (1,'Fernandez','Pedro','Teruel 822','pf@gmail.com'),(2,'Perez','Juan','Sarca 22','jp@gmail.com'),(3,'Juarez','Maximiliano','Guayaquil 233','mj@gmail.com'),(4,'Verstappen','Max','Salsipuedes 456','vm@gmail.com'),(5,'Alonso','Fernando','Madrid 12','fa@gmail.com'),(6,'Senna','Ayrton','Brazil 235','as@gmail.com');
/*!40000 ALTER TABLE `Clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `clientesxfecha`
--

DROP TABLE IF EXISTS `clientesxfecha`;
/*!50001 DROP VIEW IF EXISTS `clientesxfecha`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `clientesxfecha` AS SELECT 
 1 AS `idcliente`,
 1 AS `Apellido`,
 1 AS `Nombres`,
 1 AS `Direccion`,
 1 AS `mail`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `DetallePedidos`
--

DROP TABLE IF EXISTS `DetallePedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DetallePedidos` (
  `NumeroPedido` int NOT NULL AUTO_INCREMENT,
  `renglon` int NOT NULL,
  `idproducto` int NOT NULL,
  `cantidad` int NOT NULL,
  `PrecioUnitario` int NOT NULL,
  `Total` int NOT NULL,
  PRIMARY KEY (`NumeroPedido`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DetallePedidos`
--

LOCK TABLES `DetallePedidos` WRITE;
/*!40000 ALTER TABLE `DetallePedidos` DISABLE KEYS */;
INSERT INTO `DetallePedidos` VALUES (1,1,5,7,20,140),(2,1,10,2,20,40),(3,1,9,8,35,280),(4,3,2,4,500,2000),(5,3,4,5,100,500),(6,2,7,9,10,90),(7,3,8,1,100,100),(8,2,1,3,200,600),(9,2,3,6,271,1626),(10,3,6,2,20,40),(11,2,2,3,500,1500),(12,3,3,3,193,579),(13,1,5,2,186,372),(14,1,5,2,186,372);
/*!40000 ALTER TABLE `DetallePedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Log`
--

DROP TABLE IF EXISTS `Log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Log` (
  `idlog` int NOT NULL,
  `NumeroPedido` int NOT NULL,
  `FechaAnulacion` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Log`
--

LOCK TABLES `Log` WRITE;
/*!40000 ALTER TABLE `Log` DISABLE KEYS */;
INSERT INTO `Log` VALUES (1,7,'2022-09-17');
/*!40000 ALTER TABLE `Log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `masventas`
--

DROP TABLE IF EXISTS `masventas`;
/*!50001 DROP VIEW IF EXISTS `masventas`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `masventas` AS SELECT 
 1 AS `idproveedor`,
 1 AS `NombreProveedor`,
 1 AS `Cantidad`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `menosde2`
--

DROP TABLE IF EXISTS `menosde2`;
/*!50001 DROP VIEW IF EXISTS `menosde2`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `menosde2` AS SELECT 
 1 AS `idcliente`,
 1 AS `Apellido`,
 1 AS `Nombres`,
 1 AS `Direccion`,
 1 AS `mail`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `ningunpedido`
--

DROP TABLE IF EXISTS `ningunpedido`;
/*!50001 DROP VIEW IF EXISTS `ningunpedido`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ningunpedido` AS SELECT 
 1 AS `idcliente`,
 1 AS `Apellido`,
 1 AS `Nombres`,
 1 AS `Direccion`,
 1 AS `mail`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `origen`
--

DROP TABLE IF EXISTS `origen`;
/*!50001 DROP VIEW IF EXISTS `origen`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `origen` AS SELECT 
 1 AS `origen`,
 1 AS `Cantidad`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Pedidos`
--

DROP TABLE IF EXISTS `Pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Pedidos` (
  `NumeroPedido` int NOT NULL AUTO_INCREMENT,
  `idcliente` int NOT NULL,
  `idvendedor` int NOT NULL,
  `fecha` date NOT NULL,
  `Estado` text NOT NULL,
  PRIMARY KEY (`NumeroPedido`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pedidos`
--

LOCK TABLES `Pedidos` WRITE;
/*!40000 ALTER TABLE `Pedidos` DISABLE KEYS */;
INSERT INTO `Pedidos` VALUES (1,5,1,'2022-09-17','Confirmado'),(2,1,3,'2022-09-18','Anulado'),(3,3,2,'2022-09-19','Confirmado'),(4,2,2,'2022-09-20','Confirmado'),(5,4,3,'2022-10-17','Confirmado'),(6,5,2,'2022-10-11','Confirmado'),(7,1,1,'2022-10-12','Anulado'),(8,3,1,'2022-10-13','Anulado'),(9,2,3,'2022-11-17','Confirmado'),(10,2,2,'2022-11-22','Confirmado'),(11,2,2,'2022-09-22','Confirmado'),(12,3,3,'2022-09-22','Confirmado'),(13,1,2,'2022-09-25','Confirmado'),(14,1,2,'2022-09-25','Confirmado');
/*!40000 ALTER TABLE `Pedidos` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_anular_pedido` AFTER UPDATE ON `pedidos` FOR EACH ROW BEGIN
insert into Log(NumeroPedido, FechaAnulacion) values (NEW.NumeroPedido, CURDATE());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `pedidosxtotal`
--

DROP TABLE IF EXISTS `pedidosxtotal`;
/*!50001 DROP VIEW IF EXISTS `pedidosxtotal`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `pedidosxtotal` AS SELECT 
 1 AS `NumeroPedido`,
 1 AS `fecha`,
 1 AS `total`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Productos`
--

DROP TABLE IF EXISTS `Productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Productos` (
  `idproducto` int NOT NULL,
  `Descripcion` varchar(100) NOT NULL,
  `PrecioUnitario` int NOT NULL,
  `Stock` int NOT NULL,
  `StockMax` int NOT NULL,
  `StockMin` int NOT NULL,
  `idproveedor` int NOT NULL,
  `origen` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Productos`
--

LOCK TABLES `Productos` WRITE;
/*!40000 ALTER TABLE `Productos` DISABLE KEYS */;
INSERT INTO `Productos` VALUES (1,'Celular',192,325,400,10,2,'Importado'),(2,'Computadora',500,428,500,10,1,'Nacional'),(3,'Monitor',193,100,200,10,3,'Importado'),(4,'Gabinete',100,100,239,10,2,'Nacional'),(5,'Mouse',186,207,390,10,1,'Importado'),(6,'Teclado',20,219,300,10,3,'Nacional'),(7,'Pendrive',186,200,300,10,2,'Importado'),(8,'Proyector',188,399,400,10,1,'Importado'),(9,'Parlante',35,354,400,10,3,'Nacional'),(10,'Auriculares',186,488,500,10,2,'Importado');
/*!40000 ALTER TABLE `Productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `productosxfecha`
--

DROP TABLE IF EXISTS `productosxfecha`;
/*!50001 DROP VIEW IF EXISTS `productosxfecha`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `productosxfecha` AS SELECT 
 1 AS `Descripcion`,
 1 AS `CantidadTotal`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Proveedores`
--

DROP TABLE IF EXISTS `Proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Proveedores` (
  `idproveedor` int NOT NULL,
  `NombreProveedor` varchar(100) NOT NULL,
  `Direccion` varchar(100) NOT NULL,
  `mail` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Proveedores`
--

LOCK TABLES `Proveedores` WRITE;
/*!40000 ALTER TABLE `Proveedores` DISABLE KEYS */;
INSERT INTO `Proveedores` VALUES (1,'Samsung','Corea 88','samsung@gmail.com'),(2,'Apple','California 890','apple@gmail.com'),(3,'Xiaomi','China 56','xiaomi@gmail.com');
/*!40000 ALTER TABLE `Proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Vendedor`
--

DROP TABLE IF EXISTS `Vendedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Vendedor` (
  `idvendedor` int NOT NULL,
  `Apellido` varchar(100) NOT NULL,
  `Nombres` varchar(100) NOT NULL,
  `mail` varchar(100) NOT NULL,
  `comision` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Vendedor`
--

LOCK TABLES `Vendedor` WRITE;
/*!40000 ALTER TABLE `Vendedor` DISABLE KEYS */;
INSERT INTO `Vendedor` VALUES (1,'Hamilton','Lewis','lh@gmail.com',10),(2,'Vettel','Sebastian','sb@gmail.com',15),(3,'Perez','Checo','cp@gmail.com',20);
/*!40000 ALTER TABLE `Vendedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vendedoresxpedidos`
--

DROP TABLE IF EXISTS `vendedoresxpedidos`;
/*!50001 DROP VIEW IF EXISTS `vendedoresxpedidos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vendedoresxpedidos` AS SELECT 
 1 AS `Apellido`,
 1 AS `Nombres`,
 1 AS `mail`,
 1 AS `idcliente`,
 1 AS `idvendedor`,
 1 AS `Pedidos_realizados`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `clientesxfecha`
--

/*!50001 DROP VIEW IF EXISTS `clientesxfecha`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `clientesxfecha` AS select `clientes`.`idcliente` AS `idcliente`,`clientes`.`Apellido` AS `Apellido`,`clientes`.`Nombres` AS `Nombres`,`clientes`.`Direccion` AS `Direccion`,`clientes`.`mail` AS `mail` from (`clientes` join `pedidos`) where ((`clientes`.`idcliente` = `pedidos`.`idcliente`) and (`pedidos`.`fecha` between '2022/09/17' and '2022/10/17')) group by `clientes`.`idcliente` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `masventas`
--

/*!50001 DROP VIEW IF EXISTS `masventas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `masventas` AS select `productos`.`idproveedor` AS `idproveedor`,`proveedores`.`NombreProveedor` AS `NombreProveedor`,sum(`detallepedidos`.`cantidad`) AS `Cantidad` from ((`productos` join `detallepedidos`) join `proveedores`) where ((`detallepedidos`.`idproducto` = `productos`.`idproducto`) and (`productos`.`idproveedor` = `proveedores`.`idproveedor`)) group by `productos`.`idproveedor` order by `Cantidad` desc limit 1 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `menosde2`
--

/*!50001 DROP VIEW IF EXISTS `menosde2`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `menosde2` AS select `clientes`.`idcliente` AS `idcliente`,`clientes`.`Apellido` AS `Apellido`,`clientes`.`Nombres` AS `Nombres`,`clientes`.`Direccion` AS `Direccion`,`clientes`.`mail` AS `mail` from (`clientes` join `pedidos`) where (`pedidos`.`idcliente` = `clientes`.`idcliente`) group by `clientes`.`idcliente` having (count(`pedidos`.`idcliente`) < 2) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ningunpedido`
--

/*!50001 DROP VIEW IF EXISTS `ningunpedido`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ningunpedido` AS select `clientes`.`idcliente` AS `idcliente`,`clientes`.`Apellido` AS `Apellido`,`clientes`.`Nombres` AS `Nombres`,`clientes`.`Direccion` AS `Direccion`,`clientes`.`mail` AS `mail` from `clientes` where `clientes`.`idcliente` in (select `pedidos`.`idcliente` from `pedidos`) is false */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `origen`
--

/*!50001 DROP VIEW IF EXISTS `origen`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `origen` AS select `productos`.`origen` AS `origen`,sum(`detallepedidos`.`cantidad`) AS `Cantidad` from (`productos` join `detallepedidos`) where (`detallepedidos`.`idproducto` = `productos`.`idproducto`) group by `productos`.`origen` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `pedidosxtotal`
--

/*!50001 DROP VIEW IF EXISTS `pedidosxtotal`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `pedidosxtotal` AS select `detallepedidos`.`NumeroPedido` AS `NumeroPedido`,`pedidos`.`fecha` AS `fecha`,sum(`detallepedidos`.`Total`) AS `total` from (`pedidos` join `detallepedidos`) where (`pedidos`.`NumeroPedido` = `detallepedidos`.`NumeroPedido`) group by `detallepedidos`.`NumeroPedido` order by `total` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `productosxfecha`
--

/*!50001 DROP VIEW IF EXISTS `productosxfecha`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `productosxfecha` AS select `productos`.`Descripcion` AS `Descripcion`,sum(`detallepedidos`.`cantidad`) AS `CantidadTotal` from ((`productos` join `detallepedidos`) join `pedidos`) where ((`detallepedidos`.`idproducto` = `productos`.`idproducto`) and (`pedidos`.`NumeroPedido` = `detallepedidos`.`NumeroPedido`) and (`pedidos`.`fecha` between '2022/09/17' and '2022/10/17')) group by `productos`.`idproducto` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vendedoresxpedidos`
--

/*!50001 DROP VIEW IF EXISTS `vendedoresxpedidos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vendedoresxpedidos` AS select `vendedor`.`Apellido` AS `Apellido`,`vendedor`.`Nombres` AS `Nombres`,`vendedor`.`mail` AS `mail`,`pedidos`.`idcliente` AS `idcliente`,`pedidos`.`idvendedor` AS `idvendedor`,count(`pedidos`.`idvendedor`) AS `Pedidos_realizados` from (`vendedor` join `pedidos`) where (`vendedor`.`idvendedor` = `pedidos`.`idvendedor`) group by `vendedor`.`idvendedor` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-03  0:23:45
