-- MariaDB dump 10.17  Distrib 10.4.11-MariaDB, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: final
-- ------------------------------------------------------
-- Server version	10.4.11-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary table structure for view `all_purchases2`
--

DROP TABLE IF EXISTS `all_purchases2`;
/*!50001 DROP VIEW IF EXISTS `all_purchases2`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `all_purchases2` (
  `c_id` tinyint NOT NULL,
  `Firstname` tinyint NOT NULL,
  `Surname` tinyint NOT NULL,
  `order_id` tinyint NOT NULL,
  `p_id` tinyint NOT NULL,
  `p_name` tinyint NOT NULL,
  `quantity` tinyint NOT NULL,
  `price` tinyint NOT NULL,
  `date` tinyint NOT NULL,
  `phone` tinyint NOT NULL,
  `email` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `cate_id` int(11) NOT NULL,
  `cate_name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`cate_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Action game ',NULL),(2,'Adventure game',NULL),(3,'Strategy game',NULL),(4,'Simulation game',NULL),(5,'RPG game',NULL),(6,'Hardware',NULL);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger insert_cate
before insert
on categories for each row
begin
declare newid int default 0;

     select cate_id
     from categories
     order by cate_id desc
     limit 1  into newid ;
    
     if new.cate_id is null then
     set new.cate_id=newid+1;
      end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `c_id` int(11) NOT NULL,
  `fname` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sname` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `c_address` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `c_email` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `c_phone` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `c_dob` date DEFAULT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'chalin','yota','jj','jj','jjj','2020-06-04'),(2,'jawalin','Khonthai','123','jawa@g.com','12344','2020-06-02'),(3,'jawalin','Khonthai','123','jawa@g.com','12344','2020-06-02'),(4,'ggg','ggg','gggg','ggg','8765','2020-06-03'),(5,'ggg','ggg','ggg','gggg','8765','2020-06-03'),(6,'Taky','Suranee','123 wall street','ta@h.com','44792','2020-03-22');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger insert_cus
before insert
on customer for each row
begin
declare newid int default 0;
declare ord int;
     select c_id
     from customer
     order by c_id desc
     limit 1  into newid ;
     if new.c_id is null then
          set new.c_id=newid+1;
      end if;
      insert into orders(order_id)values(null);
      update tran
      set order_id=order_id();
   
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `final`.`after` AFTER INSERT ON `customer` FOR EACH ROW
BEGIN
declare cor int default 0;
declare total int default 0;
    select sum(price) into total
    from tran;
    select count(*) into cor
    from tran;
    update orders 
    set c_id = c_id(),
        total_price = total
    where order_id=order_id();
    call tranorder();
    call restock(order_id(),cor);
    delete from tran;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `get_order`
--

DROP TABLE IF EXISTS `get_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `get_order` (
  `sort` int(2) NOT NULL AUTO_INCREMENT,
  `p_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  PRIMARY KEY (`sort`),
  KEY `fk_get_oder_product1_idx` (`p_id`),
  KEY `fk_get_oder_orders1_idx` (`order_id`),
  CONSTRAINT `fk_get_oder_orders1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `fk_get_oder_product1` FOREIGN KEY (`p_id`) REFERENCES `product` (`p_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `get_order`
--

LOCK TABLES `get_order` WRITE;
/*!40000 ALTER TABLE `get_order` DISABLE KEYS */;
INSERT INTO `get_order` VALUES (1,21,1,1,1499),(2,2,1,2,1000),(3,21,2,1,1499),(4,21,4,1,1499),(5,2,4,1,1000),(6,2,5,2,1000),(7,29,5,2,499),(8,13,5,1,1200),(9,21,5,1,1499),(10,9,5,1,1699),(11,14,5,2,2000),(12,3,6,3,2100),(13,7,6,1,169);
/*!40000 ALTER TABLE `get_order` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `final`.`get_order_BEFORE_INSERT` BEFORE INSERT ON `get_order` FOR EACH ROW
BEGIN
     declare news int default 0;

     select sort
     from get_order
     order by sort desc
     limit 1  into news ;
    
     if new.sort is null then
     set new.sort=news+1;
      end if;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `c_id` int(11) DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `ship_id` int(11) DEFAULT NULL,
  `ship_date` date DEFAULT NULL,
  `ship_type` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `total_price` int(11) DEFAULT NULL,
  `bill` blob DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `c_id` (`c_id`),
  KEY `ship_id` (`ship_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`c_id`) REFERENCES `customer` (`c_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`ship_id`) REFERENCES `shipping` (`ship_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,1,'2020-06-02',2,'2020-06-03','EMS',2549,NULL),(2,2,NULL,NULL,NULL,'EMS',1499,NULL),(3,3,'2020-06-02',1,'2020-06-03','Register',NULL,NULL),(4,4,'2020-06-02',2,'2020-06-03','Register',2529,NULL),(5,5,'2020-06-03',4,'2020-06-04','EMS',7947,NULL),(6,6,'2020-06-03',2,'2020-06-04','EMS',2319,'����\0JFIF\0\0\0\0\0\0��\0�\0		\n\n	\n\n\r \Z+!$2\"3*7%\"0\n\r\r\r\"	\"\r#��\0�V\"\0��\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0�ǝ@:\n@(J�R��7J�l��I�@>O�l|�(�P*\n\0\0\0�`--\0P(e\n@�QA@\0(\0\0\0\0\0��@�r�e(\0(��\n�BP(*(�\0 ���p\0\n\n\0�@�)@((\n���\0\0Poc�\0\n�P\nP�\n\0�\0\0\0\0\0��������\n�\nPP(\0,(\0\nT��T\0#�����\0P�\0�B�\0(\"�\0\0\0@@x;{����\0((\n\n4\0.���\\�mQEB�@�V�)T\0�,����C���9@*(P\n\0�R��E\n�\0XP\0���\0@\'����RP@\n\n\n\0P�P�\0P\0�A(��oc�@\n��\0P����\n\0\0��(���lr�>�u=��|{��|�m�\n\0QA@J@\0\0\0\0B�B)�v�9J/��_�{_\'���yK�����9�\n\0*��\n\0\n\0\0(�T!e ���*��?韪w�W����<O�~���\Z*�V�]*�iU�(��\0� \0\02̙�w=����9j�;����}���ʿ�?��<�\nAAB�*�\nҚ�h�ڥ�YV,�(e�߾�gc�A��߻��_��\04�\0W|k@$ �d�\0h(��Q��%PERB�Zӭ����0+��Z���W��?����P(,(\n��\0�\0\nJ�!\0 9���e��>FP\0\n�P(d��EE����gc�l(�\0TR�@�@P(\0P(�@E\0\0�,$,� ���3D�(\0��P(\0,P*P\"�\0( \0�T�9ݝ�mQP�\0\0(�\n\n\n�\0R�H�\0\0\0@�TA��lst_R����(�((QB�\n\Z\n�K�SXRQ\0,u�$��69�\0,P\0e\n@(\0E\0\0\0\0\0!s��\0��TP\n\0(E\0UJ%J\0�\0\0\0\0@%9ݍ�u\0P\0(\0(�%P\0���P\0\0\0\0,���ls�\0*(\0�\0�\n\n���Bʋ\n\0\0\0\0\0�E�9���}\0(\0(@\n\nŔ\0P\0\0\0\0\03Q���?P��\0T�,(����@\0\0\0\0\0$���69�?��)(�КU!�7A�l�H�`�.��\Z���\'ˌ��TGS���ǂ��\0�@\0(�\0\n�\0\0\0aQ\0\0�D�H���<B�\0\0�Y@QBP��\0Yb�K\n	R�%�\0��Ǆ\n��\0@�(\n\0\0�PP\0% \0\"�Nw_c�Q*�\0\0\0\n\nA@�	@�\0\0\0���)���xh\0\0\0\0U*\nD�@\0\0\0\0\0�,+����X\0\0\0\n�QBU\0(@\0\0\0\0\0�\03���x�r|%�\r$h\Z&�>AP��g���F��(�(P�7�5L5r�\"h2da���;���\0\0\0�P\0U\0,P(\0\0\0\0\0\0�@�%���<T\0\0P�\0�%,X�(�\0\0\0\0\0\0\0\0 ���x�\0\nJ\0P%\n�\nJ(\0\0\0\0\0\0\0� � o_d��k�~/�y{�}���\07��XEe\0PP�XP\n�\0\0\0\0\0\0\0@��l�B��O��\0D�����{��ߧr�\0\0�,P�\n���\0\0\0\0\0\0\0\0B\09�}�>O��\0�<_�}o�_E�\'�y?��n�*�P QJP@\n�\n\0��A(C\0�&S8���z��0|��߳}S��C�_��������[j�\0�e(�UK$�im*�j�UZQjڶ4��)$��H�����Xs�㡯�/�xG��~�ߺ,�\0[|u�\n�ҩV�ZjT��V��(P`\n,�J�s��x�>���������k��Ԁ\0\0�@��\0\0�\0\0\0\0\0$\0G7���|�����\0AD(�(\0\0�(\0\0\0Q\0\';�G�P����(��,�J\0	@�\0\0��\0YR\09�m%\0B��\0��\nP\0\n\0\0\n�\0\0E\"\0s{�Z\0\0�\n\0�Q@\0(\0\0YP\0\0���D�����(��T\0h(PڀEZ�\0�U\n��\0 	Fq���G?�J\0\0P\0\0\0R�\0Rʊ�\0�X)\0\0\0@��6O0\0P��JE�\0\n��,\0�`\0\0\0X��뇒��@%\0M!@��\0���\0\0\n�J�\0\09�p�K\0	@P��\0��\0�\0�\0\0\0��ǒ�\0\0P\0e\0@\0�J \0\0(P�	`\0\0C���<��\0\0�R�@P(\0\0�\0\0B�\0\0\0\0��������@\n\Zȭ��\nP\n�j�AaB*EZ�J	4D\0�D�#�פ�P\n\0��HPU\0��\0�T�\0\0E�\0\0%�;��y��\0K(\0e\0�\0\0R�\0\0,T,QPP�\0(��tO9@��@\0XP\n\0*Z�\0\0Y`,X��\0K*\0\0\0������\0�@�\0��\0,(%��!ADX	A\0\0\0�t�<�\0�\0\0(�\0P)\0�\0D\n \0@\0)��l�z�\0\0�\0��\0\0\0\0\0\0\0�\0�A�<=Σ��E!@*j-B��\rĥE(.6\0P� R�����(�\0\0��(E\0\n��,\n�*,*�\0\0\0C����(\0\0,X����B�E�D��\n,�`T\0\0;���\0\0��(\0�\0\n�*\n�\"�\0\0(�\0\0\0���<�_θ?��l}/����;�i*\0�E\0�*(�)*T�%@\0T,X\0\0���>\0?+���Ϯ�W�~o���?��W���,�*\0P(@��	TAQH\0��\0\0\0\0wSD��:�\0��S���������\nk&J\0\r\0R�Mb�\r�CjPct���.H�B2Lbe��;��|\0�����c�>��ϟ��n�����Y�iV�ҕ[i���ZX�F�T��Vкjh-��.Y܈�V��hF�7��|��}��_��\0IϠ�G�>_�/T�KeJ�,\0(�6�@\0(Ae�\0\0\0\0\0�?��|ü����}��8\0\0\0�\0�Yb�\0P�T,,,\0\0���O��[�\0\0\0P\0(Te@�(@��\0Q\n@,\0\0���O�X,�\0\0\0���X�J\0\0T K\0\"�R\0\0���O�\0\0\0J\0�\0�\0\0XKA)*@\0Kd�\Z�\0\0\0����P\0\0\0\0\0%P��B�IH�Kcΰ��T \0�P-�E���R�\n\0n �\0�k4\\�i\0*�+�ή��(\0\0\0\0��\0P\0P\0\0��\0*(\"��\0�Ǟ�\0\0\0(Y@\0��b�\0\0	@EX�(%%�\0Kc�I@\0\0)�(\0��\0T�\0\0��@\0X�)@\0s�{\0\0\0\0\n�\0\n(�H((T�\0�\0\0\0;���\0\0@�\0H,XR(J*(�\0��\0\0\0������\0\0\0\0%E���`\"�Z�\rBh͐IA\0&u*Fte�oWC�?�\0�(B�\nЊ���ZЅ\n�\0�\0�\0U�{������\0\0*P\0*��\0J*)�,P�@\0\0\09�=��\0\0E��\nT\"�X���@ \0\0\0����\0\0\0��J%\0\0T��Q`H\n@��\0\0\0<��\0\0\n��IT�X�%�,�\0\0(��\0\0\0\09�=�\0\0P�\0\0T�\Z��%\0T��,���\0\0\09�=���!	@@:Qj2��$Q\0B\0@JRt��j<�<<�(U������i@�@��)J�i�k:D\r���E\0�ҹ�j>P\0��(\0,�� ��,\0,YD�*\0\0\0\0g[C�\0\0�\0E\0\0U�\0�YB\n@\0�\0�\0\0\0\0\0�uv>\0\rd[�!ERŊ\0@,����P�*\0\0\0\0\0�u��\0��}c�.��?O�g��\0�}��O\'�\"�\0\"�\0���P)\0\0X\0\0\0\0	�����g�/�����0���W���/��,\0@���\0P%�*X\0\0\0\0\0J�޽\0/�7��\0�������\0��\0�>)��o��� ��h����@e�h�E@�#�$�g^��þ���\0���~q����;��k��ן#J�@U\ZP4�V��i���ѠQCJP�R\"\0! \0���g^��̾�����\0�����?n����J�*\0�\n%\0�(\"�\0\0�,\0\0\0\0\0νz���zk�/�~��\nQ\n�\0\0)eJJ�\n\0�*\0\0\0\0��sz�|\0\0\0)D�\0B�Q�@%E%��\0\0\0\0	Rʇ7�G��\0\0((\0\0��	D�@��T\0\0\0\0\0�A�u���\0\0X(�\0��\0\"�\0�P\0\0\0\0\0�!�����yP���H@BJ\"�)m�e�D�ǭFB�L�S6�u\0�-d�\Z ʆ�$Y�w^�=�᪫m��h�(P\0X�T\n,��P*!P�\0\0PC��Q�\0\0\0�P)\0�@�\n�\0\0\0\0\0\0�s{y�\0\0@	@\0�\0\0\0\0\0��\0�u���(\0e�\0\n��� \0\0\0\0\0(% ����P\0\"�\0��a`\0\0\0\0\0\0*\0�أ�@\0\0\0�e\0\0\0T\0\0\0\0\0\0���\0	��Q���@C!\n!(�\n�V�-))a\n���H�ɼ�0(� �|�wb�=(�\0\0(YXAb���\0\0\0%\0\0\0\0�/;�G��\0\0\0e*T�\0\0\0\0\0\0\0\0 �X\0\0\0%��(�Հ\0\0\0\0QR4\0\0\0\0\0\0\0\0\"�` \0\0����\0\0\0\0\0,R�@\0\0\0\0\0\0R� \0\0���z\0\0\0\0\0)Qe\0\0\0\0\0\0\"�BP@K\0\0\0�of�=\0\0\0\0\0\nPJ\0\0\0\0\0PJ�@\0\0�s{4y�xy@�U\0(��� \0�)��7T��\r\'H�vh��5��\0\0\0B�(�(P\0��AP\0\0\0\0\0\0���z@��\0\0\0��\0\0\0�\0 �\0\09ݚ<�DT@\0\0���\0\0�Yb�\0�\0a`��Q�(j��:I���\0\0�@�)(\0K�\0EB�\0�	DP�v���a��n�������\0w�o�k����L|`T�\0\0Q@	D,(B�X\0\0\0\n \0\"�9ݪ<�X�O��_77�o�~�?���{��?j$�BQ\n \n���\Z�\0K\0�ɼ�C6�յ���+�C�ڣ�T}�oٿl?�9�\0t�ʟ��\0J�@!)(��R�R\0�)�hPT�\"I�T���m��?���{(O?���>����\'���M~��i�M\nl(-�@�D(P4*�4�2��L0��P����\0�s�Ty��Ͽ0��?�g�?�?S����Ң�J\"��\0�%\0 \0\0\0,\0H\0\0%���r�}_��_��?]�W��� X(\0��\0 \0\0\0\0��\0�\"��?�G�,\n�(�,�\0�R�\0\0\0\0X\0	@�`%^gn�5\0,(@�(\0\0TT,\0\0\0\0\0���(BR	A��Q�\0\0H�BT�P\0,�\0\0\0\0�\0\0����P��MmP��3�\"�FM�4ȅ�!\nH�$���wn�5j\0�B\n\0\0\0\0\0\0\0\0�)\0\0\03	����(\0\0\0\0�H\0\0\0\0\0\0Y`�\0��E(��(�YR�\0\0\0\0��\0\0\0	b� \nEKP ����`�T��\0\0�(\0\0\0\0YB,*RX\0J@P�C�ۣˠ)(\0�P,YQ`\0�K!P�Q\0J\0���Q��\0\0\0\0\0�\0\0\0�\0\0�\0 \0� wr�.���h-�Tj\Z\ZQD()E��+-2dD����>���ܣˠj,\0\0KD\n\0J��%�\0\0\0\0����\02G?�G��\n\0\0\0J\0R\0��\n�(\0\0XP@��\0%�r�-\0\n\0\0\n\0*R!D*,\0\0\0��,( ,G��G���\0�a@%E�KX�`\0(%	D\0r�4Q�B(%\0���%�`\0 �\0\0@�\0\"��dP��\nJ\0	@\0�\0\0\0%�\0<�<�<\\�JiE2�TE��@*�\0\0�\0���-!\"\0��ɏ����ݣ��J\0\0\0\0\0\0\0\0P\0�T\0�	����R(\0R(\0J\0\0\0\0\0@�a@\0DR\0�@Ov�4\0\0��b��\0\0\0\0\0%�\"�)*TRE \0  ���G�(�I}~/s���q��\0\0�(\0\0\0\0��JE���\0����O揹}����?����������\0J�\0�\0\0\0\0\0!H Dx{�yH��~s�Wھ�����\0�?�͟��|fba�\0@� �\0�@\0\n\0�����]omߓ��룤x{�y@�W�=n�f|�\0��\0��e��_��\0�\0��R[\n�\nBP�\0QU��\0P��꾴<�<�s���럏�O�q����\Z��n��j�uE*�ZQE!@�R�d`2\\�\0���)��f�g���>,3����x{�y�>��g��b�蟚�\0A�Q\0*�\0\0\0@@\0JK\0\0H@�w��@<�N�CY\n\0\0(\0\0\0\0\0J\0\0\0  \0A\0HG��G�\0\0\n\0\0��\0\0\0J\0\0�\0P\0@D#�ޣ�\0\0,P\0��\0\0\0\0@\0\0�(E%@\"���怨*P(@\0�@P� \0\0\n@�~�4/Im2BP\0\0��(�\n\ZdR\"��))�X���ߣ͕(\0\0\0\0\0\0\0\0 % ,\0\0\0\0@�x{�y��\0e\0\0\0\0\0\0J@\0\0\0\0D�\0@�D$����f�\0\0\n\0\0\0\0\0\0@�\0\0\0\0@@\0����h\0\0\0\0\0*,\0\0�B�\0\0\0\0BR\0	\0Dg�ߣ�(,P\0\0\0YI@\0\0�\0T\0\0\0@Hχ�G�)@�@�\0\0\0\0\0\0\0\n� B3<�<�<͆P\n�H\0�\0B\0\0 @ �� ����σ�I�!\0\0\0\0(\0\0\0@%�\0	@@X@� B\'���<�H(�P\0��`\0\0� ��A==W��	��h������\0@@(��XA4��~O/�lԱ4.h\0P\0*((@\0`@\0P�A�OWC��\0Ͳ�,�(\n\0���@ 	e@\0\0 ��[����\n@\n\0\0\n@P �\0%�\0\0 @�BLv��\0\0\n\0\0\0�\0X\0\0\0%C����`\0(@\0\0\n\0\0\0�T\0�\0\0@ �������\0�\0\"�\0\0\0\0 \0�`\0\0\0\"�N���\0e\0�\0\0\0%\0*\0� � B*>����\0\0�\0X�@\0\0\0��\0�\0\0�!O\'�|�\0\0\0J\0*P\n@\0$ A\0J@\0@ �\"���/�aIID���\0\0TK*ňH�X�Ab\0YQ3r�B%�,���^NE\0B��R��`H�jD�*K�$�ZDX����$��DIi��L������S:))J��6�*Ő�,ͺb\n�.L�I\ZM\".�]#0M\\ɘ�ȉY�,{?F��>��f��\Z�h�I�Z��A&�	Pf3�����R)��u�cY	$D�HJ��E�~ob,D��dR�\0�� �J�rA+\"�\"	H@�%�3�OȾ�*@\0\0P(�� b,X�J%@,@\"� ����Oj}c�\n\n��PT*�PPB�@B�HQ(\0-B�(�!B��e��\Z�@J	@	H\0\0\0\0\05\"�2�,*-�Y�cY�Z�MV\Z�e����fIcg��\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0��`\0\0@\n\0 \0\0i�:u1�\0\0(\0\0\0��.�s \0\0\0\0\0\0\0\0\\��\0%���P%\0\0\0�.2��P\0@\0\0\0X\n\0\0b5��ې�\0\0\0\0\0(���)��@�X�\0X\0\0��X�l��iʬ\0�e\0\0@*TF#[1�b�\0\0\0\0\0\0#Z�\0\0�\0\0X\0\0\0V#ZE\0\0T�\0\0\0\0\0�b5�\0\0�(\0\0\0\0�5�\0(�\0\0\0�\0\0�h\0\0\0�\0\0\0\0\0VcZ@\n\0\0\0\0�\0��h\0AD\0\0���\0cZ�(E��\"��P�\0��\0\0X	@�Pb�U!�ր \0\0, \0`)@\rhX�\0\0K`%d\0\0\0�cV��c�\0\0\0\0\0`\0P&Y�Z�J��	D�\0\0�`�\"�\0\0\0�\0\0\0\0�f.�\0\0\0$\0\0\0\0�.�@\n��\0\0\0��\0T�� \0\0\0\0\0Z.�T�@\0\0\0\0\0Z.��,\n�\0\0\0\0\0��\0\0\0(P\0(\0.�X\0	\0\0\0\0\0\0�.�\0� \0\0\0\0\0\0���@\0\0\0�\0\0\0	X.�\0T�\0\0\0\0\0\0���jK,\0\0\0\0\0\0\0.K�\\��`\0 )\0\0\0s�.�Y�s�\0P\0\0(RP\"��3jT*\n�\0\0\0\0\0\0.�!5�*�\0\0\0\0\0\0\0�\0\0B�%\0�E�$B�\0R\0\0\0\0H�*�H�H\0\0\0\0\0\0\0.�aID\0\0\0\0\0\0\0��E\"E\0\0Jb�R)\0d֒K\0\0\0\0\0\0\0F�!D�\0@\0,\0\0\0\r.��\0*(\0\0\0\0KD�Q \0\0\0\0\0\0\0\0A�X�D�\0\0\0\0\0\0\0d�\\��	QB�\0\0\0J&.Kq�b���YADRŀ\n���雠HX\0\0\0\0\0\0h`���%H�\0\0\0\0\0\0(P`��AbY\nJP\0H\0\n\0`�Z\0�\0\0\0\0\0\0R�`��\0�\0\0\0\0\0)@b�P\0\0\0\0\0�Q`��`�A\0\0\0\0\0��H�b�%���U�@\0\0\0E,\0��\0�\n@���\n�\0b���R\n	e�\0�\0\"���X\0���\0\0\0�@\0\0f.�M��) \0\0��\"�\0��=9�b�U\0\0@\0@@�J�Y����`X\nTU�,��(Y��-e�\0BR�`��(Y@\0\0f.���*P\0\n�\0TQ��K\r\0\n����@���\0\0\0$�X\n(\0\0\0X��\0\0\0 �P\0\0\0\0���\0(�E�\"��H,P���P\0\0X\0\0����\0\0\0\0\0\0\0\0Y@�8�\0\0\0\0\0\0\0\0\n\0�8�J\0\0���b�*K@��\0	H�\0\0�\0@��Y\0%\0\0\0\0\0���3ӝ�Z�\0e@\0J��b.�M��,\0\0\0\0X`5X��*P\0�\0(\0\0\0��\0@��\0\0\0���\0\0\0B�P\0T�#[�(\0\0\0\0\0\0(��\0\0\0\0�\0\0\0b.���P@\0\0\0,(,Pb5�,���\0P��Nsu(\0T\0\0@\0�#8� \0\0\0\0\0\0�s��@\0\0\0\0\0\0\"�,Y�t\0K\0\0\0\0P\0�P�	˥\0\0K\0\0�P��sý\0\n!R�\n\0ƥǗ��(\0\0(\0X\n��%,)9y�\0\0%��\0\0,��`\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0��\0\0\0\0T�\n��\0\0\0\0\0�,`D\Z��\0\0\0\nQe�@�X��1a@\n\0P�,\0\0�\n͚��\0\0\0�\0XX(	P�*dJ\0\0��T��P\0@��]K\Z�JT�H�(\0\0*YE��Yi�X�\0\0\0D�&m&M�VX*\0�e\0\0\0\0���\0PT*P\0\0\0U$\0\n\0��PX\0\0\0\0�I��((�XJ�\0\0\0\0�Aa@BRP)(\0\0\0\0\0�(	bR�@\0\0\0\0\0 \0�(\0\"��\0\0X��D\0\0K\0\0\0\0\0\0\0ʁ@\0\0\0\0\0\0@*A�@,PPX�T(Q\0\0\0\0	@\0\0\0\0D \0\0\0\0\0\0\0\0�u\Z�\0\0\0\0\0\0\0\0QrXn\0\0\0�(\0�B��(\0\0\0\0\0\0\0Q\0\0\0\0\0\0\0\0\0\0B�*T`R,\0,\0\0�\0\0\0\0\0\0\0\0\0D\0\0\0\0\0\0\0�\0\0�\0��`�\0\0\0\0B�e	@\"ʅ\0\0EKX\0Q\0\0\0\0\n�\0\0`\0@\0\0\0�\0\0\0\0\0Q�	b��J�(�(@\0\0\0\0\0\0\0\0\0J�\0\0\0\0\0\0\0�\0B�E��Q(\0	@\0\0@\0Uԛ�t�\n\0\0\0�ʔ3CR,\0\0�\0\0\0\n\0Q\0\0\0�\0\0\0A\0@\"�J�\0\0\0��J�\0\0\0X\0\0\0\0P�`@\0\0�\0\0\0H\0\0A(\0\0\0\0\0D(\0\0\0�@(�eQ\0\0\0\n�\0\0\0\n \0@\0\0P\0\0\0�\0(E%\0\0�,�,\nR��D\0\0\0*\0\0\0\0�\0\0Q\0�\0\0X\0\0\0 \0D5�Q \0K,�Yl�,�*`�UԚb�\n\0X�@�\0�R%3B�@\0\0�\0D��\0\0\0\0\0(��\0\0\0D(\0\0*,(,�\0�\0\0\0\n%B�\0\0\0\0@\0\0\0\n\0�\0\0\0\0Q\0\n\0\0\0\0\0\0\0�B�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0D\0\0\0\0\0\0\0(\0P�!@�B��H�@\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0D7�A3SP\0\0\0D��\0-Q\n�b�( �\n�\0\0���D*T\0\0\0\0\0\0\0\0\0Q\0\0\0\0\0\0\0\0\0�B�\0*YHR)\n\0�@Q\0\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0\0\0\0�BP��	B(J\0\0\0@\0\0\0\0\0\0\0\0\0!�\0\0\0\0\0\0\0\0\0\0�D\0\0\0\0\0\0\0\0\0-�(\0\0\0\0\0\0)\0@\0\0\0\0\0\0\0\0\0�\0�\0\0\0\0\0\0\0\0ZCx��X��,\0\0	aP!V��:b�H�B�RPJ��E\0��eĚ�\0\0\0,\0\0\0\0\0+i\0\0\0\0\0\0\0\0\0\0��AH�l\0RRT\0�,,\0$j�\0\0\0�\0\0\0\0\0Z@\0\0\0�A\0\0\0\0\0�\0\0\0\0\0	Q@���\0\0E\0R(P�\0\0#h\0\0\0\0\0���5`\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0�@j	@�\0\0*)\0\0\0��̀\0\0\0\0*)\0\0\0K�\0\0����@�EB�R/\\��	`�B�!b�%,-�����X��,*P@���P%%J�@\nP\0\0\0\0\0\0\0\0\0\0?��\02\0\0\0\0! $1p\"%024A#3@P`BQq��\0\0.��r���/��b���/��b���.��b鋦.��b鋦.��b鋦.��b鋦.��b��.��b鋦.��b鋦.��b鋦.��%�D�%�.�tK�.�tK�_1tK�_��ľ%�/�|K�_��D�|K�]�D�%�.�tJ�*T�R�J�*T�tJ�D�%K�]�D�%�.�tK�]�D�%�.�tK�]�D���������������������������������������������k�\\��4�>+��BO�!������S��C��+ۣ�ޢ[�Kz�oR-�E�H���\"ޤ[ԋz�N�S��\"ޤ[ԋz�oS)��u2�L�S)��u2�L���3�g�Ϲ�s>�}����3�G���2�L�R>�W��Ez�^�W��%z�^�]�J��]���wP.���ߗ�/���ߗ�/~^���{������2=2=2=2=2=/zdxdzdzdz^����{���G��Kޗ�/z^���{����K��/x^��{����ޗ�/x^��{������/z^���{����Kޗ�/z^���s���K��=/z^��s����K��=.|\\���s���ϋ�>.|\\���ʿ=y�L��\0��?��>*��BO�!�������Y�#�d\"���ؒ�$�!QY%��\n�h�iz�I�H�#*�H�qQD���ؓz�Y�$���!�Ţqi$��e�iO|W:��:T#��N��RFHͮ����$��=5xȮ��\n�J�j�F�^�O�g����UIQJefJE:�Є��	dz��R�Tђ	#\"p��ɐ�_Ɯ[����s,����\rv�N,ZL�i�P��P�aA��19\' ����}��17؜�}����bo�7؛�M�&�}����bo�7���M�&�u����bn�7X��M�&�q����bn17��M�F�#m����bm26�L��F�#i����dm26�,��F�3e����fl�6Y�L��f�3e����dl�6�,ͦf�3i����fm36Y�,͖f�3e����fl�6Y�,͖f�3e����fl�6Y�,͖f�3e����fl�6Y�L͖f�3e����fl�6Y�,ͦf�3e����fm36��Lͦf�3i����dm36��l��f�3m����dn27���F�!5VK��O�!��T�\0$�åIDgW�տ�!ҿ�8���\0jD}�a�)���c���v;��c����o�c��ñ�Ƿ�o�c��÷�������v;��c���v;�;��c���v;��c���v;��c���v;��c������v���\0��÷����t��C�?��?$=Ǔ\\�h�!k4a����\0�)Γ41� �Б��E����2���k3���#U����bj�5��MV&�Q����bj15��MF&�M����bi�4ؚlM6&�I����bi04X\Z,\r�E����`h�4X�,\r�A����`h14\Z\r�A����bh14\Z\r&�A����bh14�\r&�A����bh14�M&�A����bh14X�M&�A����bh�4X�,M&�E����bh�4X�,M&�I����bi14�\ZL�&F�I����di24�\ZL�&F�#I����di24�\Zl�&F�#I����di24�\Zl�6F�#M����di�4�\Z��FF�#U�$�\'-��\'���䇸�E3�!�d|���1Ni�v�J����a	ش��[�I��!�k5O�\0�\n��!������S��C���!�ԕ�f�\0�@��gP,��@��uΠY�:�gP,��@��uΠY�:�oP,��@��uΠY�:�gQ,�%�@����ޢ[�z�oQ-��D����ޢ[�\nu�@�Q)�Ju�D�Q)�Ju�@�P)�\nu�@������p>�}�������p=y��^z�מ���=y��^z�מ���=q�\\z����Ǯ=q�\\z����ǭ=i�\\z�֞����=q�J=(��ҏJ=(���֔zQ�G��(����xQ��OZz�֞����(����zQ�G��zQ�G�|Z���k��ŏK��xK�O$����y|T���>*S�B)�!������J{�C�+���6?1�1�1�,~X���c������?,~X���c�����?,~X���c����:�c�����?,~X���c��ŏ��>,|X���k��ŏ��,|X���k��ů�_>,|X���k��ŏ�>-|Z��⏋_�-zZ��⏋_�-zZ���kҏJ=-zZ���G���-xZ�ҏ^��-xZ��G��\n<(��k��e��^�-vZ��k��e��]��-vZ��k��E��]�-vZ��Ge��]�-vX��k��e��]��-tX��c��E��91�1�1�1.b\\ı,#,��ȧ��>*S�B)�!������J{�C�=�!�R���jJ�цo�o�o�o�o�o�o�o�o����>1�,|X�����c��友>,|X������c�ǥ�LoK��ޖ<,zX��c�ǥ�<,xX��c�ǅ���ݖ;,vX��c�ǅ���<,xX����c��f7e����:1�1�,tX��c��E��:,tX��c��%�K�9,rX��c�������8,pX�r��k��,\\�r��k��1�cXƹ�r��k,X�b勘�1�X��s\Z�5�k�1�c\\Ʊ�c�5LJ��1*bPġ�C��3�f0�`���Ke�ʧ��>*S�B)�!������S�4�4�^��?�����iW]&��QY5�1N��H�Yz�X��2�,&�edA;�I�\n�<�\"��؟�*{�C�u7�^FlsˑI�cX��!	a,:��Q:\\#��z��J���ɬ�5�X��YQ�jFU�O�C	c��c�B1w_�����ㇸ�1���7���RK/TN1��I��o)�,�Kӑ9z�3*��I��Ȅ�J��hN�$zZSE\\�t�\\!�Y�l���j�4\"r,�E��39&g\"��Y��#�fr,�E�ȳ9g\"��Y��3�fr,�E�ȳ9&g\"��Y��3�frMI��49�$���C�hr-I��49&�$���C�hrME��49�\"���C�hrMI��49&�$���S�jr-NE�ȵ9�\"��Z��S�jr-NE�ȵ9�\"��Z��S�jr-NE�ȵ9�\"��[�c�lr-�E�ȶ9�\"��[��s�nr-�E�ȷ9�\"����s�nr\r�A��79A�@�9A�@�9A�@�9A�@�9E�@�9A�D�9�E�H�R9$�I3�L�9$�NC����98�ɜ���*���p���a��JY�~�D!Q�JF���v�\r��Aw�O\\0Y	/<�j\n�;V\'b�;��c���v;���v;���\n��V`V`V`V`V`V`V`v+�;��c���V`V`v+�X���Vc���v;�ج���`v+�`Vc���o��Ƿ��w;��LRb��T�/����!��H��XԂ��:�Е�$:T#���J�.2ť�V�PV3�\\��>�L\rL\rL\rL\rL\r\rL\rL\rL\rL\rL\r�\rL\r�\r�\r�\r�-�-�-�-�-�M�M�M�H���1 b@ā�$h�1�c@Ɓ�\Z%���,DƉ��Lh�$X�b%��\"X�bE�$X�be���Z�jE���Z�je���Z�je���Z�je���[!l�$)!I\nHRB����$))IJJRR��IIJJRR��I��I��I��I��O��O��O��O��N�c���v;��c���ԯ�S�B��X9���k<i	:��V�J����HR)�m=I�z��ɔ�ϙ�{�C���_������J{�C�=�!�R���jH��U<N�N�N�Oooooooooooooon�n�n�n�n�n�n�n�n�n�n�n�N�n�N�N�NLNLNLNLNLNLNLNLNLNNNK���181.b\\Ĺ�c�%�K�1,bXı�c�%�K�1*bTĩ�S�%LJ��1*bTĩ�S�%LJ��1*bPġ�C�%J�1(bPġ�C�)�S��1Nb��9�s�)�S��1Nb��9�s�)�S�1Lb��1�c�)�S�1Lb��1�c�)�S�1D�LQ1D�LQ0��	��`0 `��!�C^C]3]3]#]/2����Oy|T���>*S�B)�!������J{�C�\"�F�a\\��������������������������������������������������¹�s����+�V0�a\\±�c\n�L*�U0�aT©�C\n�*T0�aP¡�C��3�g0�a��9�s��3f0�a��1�c��3f0�b��1�cL3ba��&(��b��&(��b��&(�ba��&(�L&	�&(��&	��a0�L&#	��a0�LF	��a0�L&`a��`a��S�$0H`��!�3]3]#]#]#]]]Y2����Oy|T���>*S�B)�!������J{�C��Ҙ\'0(`P���C�\n0(`P���C�\n0(`T���S�\n0(`P���C�	��\'0L`��1�c��&5�`���0\Z湮`0��`0��`00@�0J`��	L0J`��S�	L$0H`��!�C�	L�$0Ha��!�C�	d0H`��!�C�$0H`��!�C�$0�`��!�Cf�	�0&`L���3f�	�0$`H�H���������������������nk75��͍f�e=�!�R����Oy|T��d?*�I	#D��c�����%]\\�X�uWS�����`��_E\'Ɣ�\r^J�K �Q�u���J{�C�uE�,%BV-%^��Lc\n	�*i�9:��T:D��Y�VT�Y��3��=�\rc�K���9#;�a�T�����_ΜE�m�H����s%�,�J)̊R���|�ΜʒOѕ�ӗ�~ˊK�H�FF��#v���y�&�RI<Ҝ��)!��r���))�Jr����+)��r����+�����NV+�����NT�NR*r�(r�(r�(r�(r�(r�(r�(r�&rg&rg&rg&rg\'��ɜ�NR\'&r�98��ɜ�NN\'\'����rq99�Nc���D�rS��%1�Lrs���\'9��rs���\'9�NrS���#9��rS���#1��r3��#1��r3��%9�NrJ��#9�Nr3���#9��r3���#9��rJ��\"��(r3���$��(rJ��$��*rJ���$��*rK��$��,rK���$��89\'\"�䜜�����Oy~N���Ξ�\Z�3��N��I�猏$���F�zn�P���5QQ4��KQ$�[,)V����R\'�}E&)1I�LRb����&)9I�g-��峖�[9l峖�[9j��*Z�j���X�b���*X�b�5Lk�1�cXƩ�c\Z�5�k�1�cXƱ�c\Z�5�k�1�cXƱ�c�%�K��1.cXĹ�s�%�K���1.b\\Ĺ�s�%�K��1.b\\Ĺ�s�%�K��1.b\\Ĺ�s��+��0�b\\Ĺ�s�\'\'�+�\\\\W0�apapapap`p`p`r`r`r`r`r`r`rk�5�\Z�wF��YѬ��tk:5�\Z��gg�*����VJ/\"�KVX�b�IRk=XI�\'O��r�������a,fn�wQ��R�O�R�+�R�J�*T�R�J�*T�R�J��R�|*W�\0N���?\"���qMEz{�&�\0���7�ٴ���<��Ut�]=��E\\�\n)����L��J{��Z���P�O\n�xv;��c���O��O��J�V_2���j%\"��UUUUUUUUUUUYUUUUUUUUUUUUUUUUUUUUUYUUU����nj�5[���f�sU����nk75����f�sY����nk�5ۚ��f�s]����nk�5ۚ��v�s]����nk�5ۚ��v�s]����nk�5ۚ��v�s]����nk�5�\Z��v����ƻcs]���������������������������������������������������������������������������������������������������������������̧�\'�j{��Z��|V�����I�Z��������;y{xv;��c���v;��c���v;��c���}\'�VS���I��IX��VR����J�VR��IYJ�VB�����e+)YO��J�}%e+)�����d+)YJ�VR����d+!Y\n�VB���ed+!Y\n�VB�&\\�zEɗ&\\�reɗ&^�zE��^�zE�y�����$��ɨ��jj�5Z��MV��SU����jj�5Z\Z�\rV��CU����hj�5Z\Z�MV��CU����hj�5Z��MV��CU����hj�5Z\Z�\rV��CU����hk45�\Z�\rf��CY����hk45ښ�Mv��S]����jk�5ښ�L\rMv�����������������������������������������������������������������������������&�&�&�&�&�&�&�&�&�&�$M�H�������Oy>+S�?���O�=���Oy?/c���v;���}\'�}%e+)YJ�VR����e+)Y\n�VB�����H\\�reɗ&\\�reɗ&\\�reɗ&\\�rEɗ&\\�rE�$\\�rE�&\\�rE�$^�zE�$\\�rE��^�zE�$\\�rE��^�zE藤^�zFDL��2\"dDȉz%藢^��\"&DL��2\"dDȉ�\"DL�2\"dDȉ�\"&D�2 dDȁ�*T�P2�e@ʁ�*T�P2�e@ʁ�*T�P2�2�2�2�2�2�2�ene@ʁ�����������������O�B�t�V����Vf�3Y����fk35����ff�3Y����hk45�\Z�\rf��C]����hk�5�\Z�\rv��C]����j`j`j`j`j`j`j`j`j`l`j`l`j`j`j`j`l`lalalalalalanananananananbnanbnbnbnb@ā�$H�1 c@Ɓ�\Z4h�1�c@Ɓ�\Z&4Lh��1�c@Ɖ�\Z&4Lh��1�cDƉ�\Z%��$cH�\"ċ,H�ċ,H�\"ċ,H�\"��-L�\"��R-L�\"ċ,H�2ċR-H�\"��,L�2��S-L�2��S,L�\"��S-L�2��S,H�\"���~���O�O������O�B��!�n�5h�}���eWB�V�iRyX:]�ѕQ~�5c�|��Z<���<ݤ�#\'�Ws,����E8|\"��!��T�$�(t��)�P�!Һ�\"�H����Fx��4��H���ydVH�<#2+T��S��	ܼ�\'���/�J~���W�R�;]$p7�~�$���V�5�M�4�H�����!�ک���!�� I\"iA4��3J:x�\'3ȟ ����|o�7��M����}���|o>7�ύ����}���|o>7�ύ����y���zo=7���M���y���zo=7^��Mצ��u���zn�7^��\rצ��u���xn�7�\rǆ��q���xn<7�\rǆ��q���xn<7o\rǆ��q���xm�6�o\r����m���xm�6�nͷf۳mٶ��vm�6��Nͧfӳiٴ��vm;6��Nͧfӳiٴ��vm;6��Nͧfӳiٴ��vm;6��O\r�fӳiٴ��xm�6�o\r����m���xm�6�o\r����m��Cʧ�!���)ҡ,\Z�0^IUAI&m4`���_�Ht������%�$�;h�GSΞ��A���|q�=�Ǿ8�����{ӏzq�N9��=8���㞜sӎzq�N9��=8��㞜sӎxq�9��<8���sÎxq�9��<8��㝜s��xq��9��;8�g�㝜s��vq��9��;8�g�㝜s��tqΎ9��:8�g��s��tqΎ9��:8�G��s��tqΎ9��:8�G��s��tqΎ9��98�\'�㜜s��rq�N9��98�\'�㜜s��rq�N9��98��㜜s��rq�N9��98�\'�㜜s��rq�N9��98�\'�㜜s��tqΎ9�ƺ8�G��\\�s��tqΎ9��:8�G��y���!�:�Q�9�����\"���\"3A6)EGRBR��g�����޴NK�E9�q,�\n��HC��S�1�2���\0�E��ļ\\0Ei�<��S׺\r�o-�QO�B)�HC�?i|T��!�4�K��nflflflflglgjgjgjgjl53�6\Z�\r\r���Ce����fl�6Y�,͖f�3i����fm36��Lͦf�#i����fm36��Lͦf�3i����fm46��Lͦ��Ci����hm46�M\r���Ce����hm46Z-\r���Ce����jl�6Z-\r���Se����jl�6Z�-����ce����jl�6Z�-M���Se����ll�6[-����ce����ll�6[-�����ce����nl�l�6P6P6[�(-͖��seeeeeeeee����nl�6[�-͖���se����ll�6[-����Si����jm56��MM���Si����i�S���㌲M��DƉ�ċ,H�\"ċS-L�2��d(�I\nHRS�>��>����v�\0��⯍���z���>*S����J~���O�B)�HC�?i~9�M8UM�f�3e����fm36��Lͦf�3i����fm�6�m\r���Ci����jm56��MM���ci����nm76�6�6�6�6�6�6�6�6�6�6�6�6Q6Q6Q6Q6Q6�6P6Q6Q6Q6Q6Q6Q6Q6Q6R6R6Q66Q6Q66R6R66666666666R66R6R6666666666666666666666$6$3�lHlHlHlHg��)�C<�y����6%3�g��)�)�!�)�!�!�!�!�!�!�!����������������������������������������̧�!������RS���v;|.��!����!�T�\0��>*�����S�����B�EJSm����hm�6ڛmM���ci����nm76�6�6�6�6�6�6�6S6S6S6d6d6d6e6`l�ف�f�\r���l��l��l��&s`�3��l��&x���3��<L�x��g��&x��g��&x��3�g��<L�3��1�&y���3�g��c4�i���3Lf��1�c4�i���3Lf��1�s4�i�ә�3Nf�ʡ�C4�i���3(fP̡�C2�e��3Nf��9�s4�y�ә�3Lg��<M�9�l�\r�6 lJlHlHl�l�l�l�l�U����C�\r~�R�J����!�T�\0��>*�����S����ckU�$���\0L�u1��`�X���:d�E�.�a,�M2��^bfod�$Y�RI�_�#ͺ�]�m�>��������P���֞S��a:�;�ff�%e ���Z��RO��H͖uT���f��n�c���J�VR����d+!t�ɗ&\\�reɗ&\\�reɗ&\\�reɗ&\\�reɗ&^�re�&\\�reɗ�\\�reɗ&\\�zE�&\\�reɗ&\\�reɗ&\\�zE��^�reɗ&^�zE��\\�zE��^�zE�&^�zE��^�zE��^�z%藢^��\"T�P2 e@ȁ�*T�̨[�P2�2�dDȉz%藢^�zE�&\\�t�d+!Y��N�c�������!�:�u! ���Q]��I|zs���S��\Z�h�EW�J���\\���u\Z��w;�\n�B�\n@�\n@�\n@�\n@�\n@�\n@�\n@�\n@�H�H�H�H�H�H)�)�)�)�(R R R R R R R R R P�\n@�\n@����Rb�;�@�Rc���v��v��v;���@�v;�@�H�H�H�H�H����r�����\0J^Y�\0yy��XG�xB))���|z��&���&���ߴ]I�)$�O%<|Wa\"�EX�i�Zg�Ťqh�Z\'�Šqh[s�nq��-�ŷ8����cc�jq�N1��58Ƨ��cS�jq�N1��58Ƨ��\Z�cS�jq�N5�Ƶ8֧\Z��Z�kS�jq�N5�Ƶ8֧\Z��Z�kS�jq�N5�Ƶ8֧\Z��Z�kS�jq�N5�ƴ8֧\Z��Z�kS�jq�N5�Ƶ8֧\Z��ZkS�jq�N5�Ƶ8֧�㚜sC�hq�N9��58���sC�hq�=�Ǵ8�����{C�hq��=�ǳ8����ٜ{3�fq�9�ƴ8և\Z��ZkC�hq�N5�Ƶ8��\Z��[cs�nq�b��\"q��bG�Ŧqi�Zg!��q�8�\\	al����������$fUg���h�q�d�)�C�#Bh�v�TUQ��C�NߦU�Ѥ��4�N	���C���Y�V5�:s({�,��	d�U���b&�IB�|)?�!/��,�\0��<��ĳ����\0���C�������̦�\r�06M�b&�L��3�gT̩�S2�e�˙\\�\\�]]������/z^���{�����>/|\\���s���ϋ���.z\\���s���K��>.|\\���s���J�*�����K��=.|\\���s����K��=.z\\���s⯊�*���s����K��=*���s���_z\\���s�J�*��ү��*��⯊�*�������_|z⯏\\z�מ���=y�ʿ*���ʿ.|\\���{�����̎̎����L�L�L�˙�3,gT̩�C<���������#XB>Y�\0yy��g��!���%���������B_��Y�\0yy��g��!���%�������)>9jl�3�gPΩ�c2�gW&WFWFWFGfG��Kޗ�/|\\���s�ʿ>�}���>�}������>�z�מ���=y��^z�ה~z�מ���=y��\\z����Ǯ=q��^z����Ǯ=q�\\z�מ���=y��^z�מ���=q�\\z�מ��ǯ=y��^z����Ǯ=y��^z�מ��ǯ=y��^z⏏\\Q���>(����?(���=y�ϸp>�}��P*���˟�?.~\\���s����L�L����̮����L�L���!���o�B_��Y�yHy��g��!���%��������o�R_��Y�yHy��f��!����M%���3,fperetetdvdxdz^���{����˟�~U�^�}����ןp>�S���~Q�G��_��-|Z���k��友_��-|Z���k��ů�^��-zZ���c�ǥ�K^�=,zX���k�ץ�K^�=-zX���c�ǥ�K�=,zX���c�ǥ�K�=,zX���c�ǥ�K��,zX���c�ץ�K�=,zX���c�ǥ�K=,zX��c�ǅ�<,xX��c�ǆ7��=,zX���k�������u�@�P>�}�����\'�O��z�^�W�?.���ߙ�^]����e�c��������o�R_��Y�yHy��f��!���\0D�Q�I��T&�$�tӅT�f����\\5�hK$�Z�4e���yHy�;�њ�N��\'Ż\Z1]2�:��X�P���~�:�K�i�\0��|�¯Ԥ~��������ь�K�9Ru7�T�ig���b���Nl��2�R_\nX�ֵ�W���\04�\0���o<�+E9�8���Mb��M��}��19\' ��X��#�dr,�I��39&�$���C�hrmM�ɴ96�&��ڜ�C�jrmM�ɵ96�&��ڜ�S�jrmNM�ɵ96�&����c�lrm�M�ɶ96�&����S�lrm�M�ɶ96�&����c�lrm�M�ɶ96�&����c�lrm�M�ɶ96�&����c�lrm�M�ɶ96�&����c�lrm�M�ɶ96�&����c�lrmNM�ɵ96�&��ڜ�c�lrm�M�ɶ96�&����c�lrm�M�ɵ9&�$���C�hrMI�ȳ9g\"��Y�#�brM�&�}����bn17����F�3e������������M��C��������YRA����g=;QQ��Rq,�3�*rM<��;���N������/R�t���c���V`V`V`V`V`V`V`V`V`V`V`V`V`V`V`V`V`V`V`V`V`V`V`V`VJ��\n�V`V`V`V`V`V`V`V`V`V`V`V`V`V`V`V`V`V`V`V`V`V`V`V`V`V`V`V`V`V`v;��c����ñ��R!A��Q����C����Yښȭ�)�J�����uH+2IBI7��\0R�{o���w��Փ7�횩5�i�4ؚ��VF�3Y�������������ā�\Z&4h��1�cDƉ�\Z%�$X��ċR-L�2��S-L�2��S-L�2��Z�je���Z�IS)!I\nHRB��HRB���2��S)!I\n&RB���e$-L�e$)!IS-L�2��&Z�je��������Z�je���Z�jE���Z�bE���Z�je���Z�je���Z�jE�$X�b&4Lh��17170�0�05045�\Z��ff�#U����bi14��,M&��bq�9��28�g\ZВXI$�C�7�)/��|�.����U#j��Y;��h���N�����߅f��!���\0�$��%A����no�R_��Y�yHy��f��!���\0�T)�\0��������)a�������J��\'�O��q)�\nuޠZ���k���7�7�7�\'f\'f\'F&&�\n��\Z�\Z�\Z�\Z�\Z���\Z�\Z�\Z�\Z�\Z�\Z�5�k�׉�^&��k\Z汬k\ZƱ�k\Z�5�h\Zƴ\rh\Z�5�k@ց�Z�\rh\Z�5�k@ց�Z�\rh\Zƴ\rcZ��k\ZƱ�Z�\rcZ�\rh\Z�5�k@�5�cX�5�cX�5�cX׉�Z&�Mx��\Z�\Z�\Z�5�5�5�5�5�5�5�5�5�5�5�0,a\\¹���Ʌщى��c���@�����D����G�J��D���%����7�)����!���%��������o�R_��Y�yHy��f��!���\0���\0\n���4�\n�O\n(P�B�\n(P�B�\n(P�B�<(P���4�\0��������)�������:�G��_=,zcxcvctbtbrbpa\\¹�c�\n0Nk�k�׉�k�汭Z�\riMiMiMi\ri\rd�d�d�d�d�T�TMTMTMT\rT\rT\rT\rT\rV�sU��������nj�5[���V�sU����lj65\Z��V�cU����lj65\Z��FƫsU����nj75[���F�sQ����lj65\Z��F�sQ����nj75P5P5P5P5P5P5P5P5Q5Q5R5Q5R5R5R5S5S5d5S5�5�5�5�5�5�cX�5�x��5�5�5�5�0(`X�������щщٍ�c����z�oP)�Ju#�G܈V���7�/��J�*T�R�J�*T�R�J���u�MXx���D���3�\0_���o�d����h�M��O�\0~���?����o��g��>�\0��C؛����}���)����\0W¾&�\0��[���J��_\n��W¥|*WƾJ��_�R�|k�R�|jWƥJ�W�R�J�T�_\n�+�R�5+�R�*T�R�J�T�_\n�*T�R�J�*T�R�J�*T�R�J�*T�R�J�*T�R�J�*T�R�J�*T�R��\0r��{�T�R�J�*T�R�J�*T�R�J�*T�R�J�*T�R�J�*T�R�J�*T�R�J�*T�R�J�*T�R�J�*T�R�J�*T�R�J�*T�R�J�*T�R�J�*T�R�J�*T�R�J�*T�qR�J�*T�R�J�*T�R�J�*T�R�J�*T�R�J�*T�R�J���ie*T�R�K���.*T�R�J�*T�R�J�*T�R�J�*T�R�J�*T�R�J�*T�R�J�*T�R�J�*T�R�J�*T�R�J�*T�R�J��R�J�*T�R�J�*T�R�J�*T�R�J�*T�R�J�*T�R�K��*T�R�J�*T�R�bT�J��R�J�*T�R�J����\0��J�*T�R�J�*T�R�J�*T�R�J�*T�R�J�*T�R�J�*T�R�J�*T�R�J�*T�R�J�*T�R�J�*T�R�J�*T�R�J�*T�R�J�*T�R�J�*T�R�*T�R�J�*T�R�J�*T�R�J�*T�R�J�*T�R�J�*T�R�J�*T�R�F���<.�2�K��c1��f3��c1��4L�c1�&h��f��&h��f��&h��f��&h��f��&h��f��1�c4L�3Lf��1�c4�i���3Lf��1�c4�i���3Lf��1�c4�i���3Lf��9�s4�i�ә�3Ne��1�s,�Y̳�g2�e��9�s,�Y̳�g2�e��9�s,�Y̓�g2Nd��9�s$�I̓�\'2Nd��9�s$�I̓�\'2Nd��9�s$�I̓�\'2Nd��9�s$�I̓�\'/��9�r���/��r���/��r���/��r���/��r���.��r鋧.��r鋦.��b鋦.��b鋦�i����Q+�cT�5MST�5MST�5MST�5MST�5�ST�5MSX�5MST�5�ST�5McX�5�cX�5MSX�5�SX�5�ST�5�cX�5McX�5�cX�5�cX�5�cX�5�cX�5�cX�5�cX�5�cX�5�cX�5�cX�5�cXց�k\Zƴ\rcXց�Z��k\Z�5�h\Z�5�h\Z�5�k@ց�Z�\rcZ�\rh\Z�5�h\Z�5�k@ց�Z�\rh\Z�5�k@ց�Z�\rh\Z�5�k@ց�Z�\rh\Z�5�k@ց�Z�	��?���\0���\0)\0\0\0\0\0\0\0! \"`01@AQa2PpBR���\0\0��D\"�a�B!�D\"\"\"�B �B!� �H ��B!�D\"�B � � � � �D\"A�B!C����	��������ߞ�ID�Q(�J%�D�Q$�ID�Q(�J%�D�0�0�<a�0�0�0�a���0�0�0���~W�ߕ����ߕ�T!~��������\"d2�C*ʲ��*��W��eY�C!��d2��C!��d2�U�d2��*ʲ��*ʲ��EY^��W���Ez+�^��W��ez+�^��W���|�����G�#���������hF�i��i��i��i��i,�K%��d�Y,�K%��,�K%��d�z\'�z%��e�%�e�fY�d�̳,�2̖K%��d�Y=�bn\Z���F�1�ӕ�o����p�0�0�0�0�0�<a����?���~W�ߕ�7�}M�^��|o�7����\Zi,�Y��i���˒_�򾬾��e~,3�I?�?��0�L�a����զ�ֿ�G��ԙX�7�BSd,}&�;D�!�ʲ��*ʲ��*ʲ��*ʲ��*ʲ��*ʲ��*ʲ��*ʲ��(�2��)�FS���E:)�N�tS���EN�2��(ʲ��*ʲ��Ez+�N�t4ײ��|?�xZ�9��?ȬOGȞ���#�|���4��|���>F�K%�i��Y=�=�OD�OD�OD�i,�OD�Y,�OD�Y,�E�-�fK\'�Yn�d�z\'�z\'�z>F�K%�\0~��Jr�js��\0M_V_����x�0�8a�za��a�a�p�u�e��Y}Yzi���4�|i,�M���e��7��K%�K%��d�Y,�K%��d�Y,�K7�}Y}Y/0�8g����a�a�0�0�=�՗�Mi|C�?���/E���JS��/;>��$�VU�eYVU�eYVQ�eYVU�eFQ�eFQ�eFQ�eFQ�eFQ�eFQ�eFQ�eFQ�eFU�eFQ�eFU�eYFQ�eYVT�A��ӕ<�q��kg��Q�&�F�|���4�M4�i��i��Ѥ�Y=�d�OF��d�Y���d�If��d�Y,��螉螉�K%��d�z%��d�Y,�Y,�\\G�􍕿߅��\0�/L�a�a�a�a�a�a�a��s��=p�g�y���a�����\0#��W��M7��5{����/L0�0�0�0�?&y�ǆza�a�a�g�0�a��0��/�[>+������r�m,l�M�3�b!�~��*T�R�QTUEQTT�R��B�J(P�B�\n(QE\nEDQETUEQTUEDUEQTUEQTUEQTUEQTUEP�~.��9��>8�����߈d2�C!��d2�C!��d2���i��i���\Zi��i��i��i��i��C4�M4�M4�Hd3O���\0�g�a�y���a�a�a�a�a��a�a����C��A�A!��G���\0��1�<G�\0�d�I$�I$�I&a>p�3��$��?��	s�s�7���SЗ.k��,b�<�\0��B��9#��|���|O���G$r|���GpGrGpGpG$pG$rG$rG$rG$rG$rG\'ĎH�H�H�H�O��9#�9#�9>pGpGrG#J_����:���p�Lz�EQQTT�*����*����B!EJ�*����*���R��*A �\n��Q�B!D�EQQTUEQTU �*� �?I�%��\0p����?�����O���ߕ�L����{�x�0�8g�0�0�0����_S~W�ߕ�7�~]4��M4�������M7ƛ�|i��i����t�M4�K7�+�o��Q-9��51$�Q0��K�I�*�J_�����%\'�>$�O$�O$�O$�O$�O%�\'�ܖ�%�-�nKp[���%�-�nK�[���%�-�np[�ܖ�%�-�nKr[����-�np[�ܖ�I�ID�y\'�y>\'���x\ZP����DӔ�9��Z�m�-���*�����%y+�TUEQTU�EQ�B!�D\"�B!�D\"�B!���B!����!�D\"�*�����%9*����*�����/��������M4�}��M4�M4�Y,�K%��d�Y,�K%��d�Y,�Y,�K%��d�Y��i��i��i�4�M4�}_��7�}M�^�a��l�a�a�a�a�a�a�a�a�a���������$���VV~���c��dG�� �H��X��=_��_����<�c��=��G�AG�#�A � � �<AAA���?�AG�x�0A � �#�x�AA�<����<������=$]E�.����E�t_��.���.���%�t_���E�t_��.���/�t]E�t]E�t].\\�r�˗.\\�r�˗.\\�r��t]E˗E�dYE�dYE���c��\0)\0\0\0\0\0\0\0! 0\"1@`pABPQ�a2R��\0\0bߡi�_��Ѧ��������������4�M�}�!�G�f��������2�i����i������o���X���A���G�~�R�����R�v���x�������*�T^**/8TR��TU�~�ϗ�?o-���������0�0�0�0�0�0�8�0�0�0�0�0�0�0�0�3�O+�o�L�sB��nq9�N\'�o��g�=��_��/��OsI�����q	���!Bq	��^��������R*�9��/7���)x��R����K�_o��C�.D?�\\>��L0�0�0�0¢�0�0�>��0�O��>0�*0��**0��¢���***��\0���<�SB�!B�\'��K�_]����JR��)JR����_�P�!Bs9��z��g�=�����o����C���)K�/�aJU�)x�)K�/��������|�h�q>Qܼ6�l������������������������EEEEEEEEEEEEEEEEEEEEEEEGdTTTTTTTTTTTTTTTTTTT?j�/����O?�5�������eee)YYJVVR��������/��VR�����+)J^)K����W�++) ��3�0�V�;W����k�T� �x��ȹFi��i��i��i��i�i�|iM7��Jo\Zi��i��i��i��i��i��i��i��ߓ�\0���Ǔ�\\|�********;\"���***;����v;���b���b��إ)JR��)N�;�S���v;�S���R������	��1��p�0�8�8��s�9�d!���###�22>g�BqFBq��B22��FB�����##�o��/�8�0�����K龚_c9�3�F�5kx��ϴ\Zq��?F��r\r�3�##4�F�i��i��i��i��i��i��i��i��i���i��Fi��i�{{��\Z���O�\\vgfvgfvgfvgfvgfvgfvgfvgfvgfvgfvgfvgfVVvgfvgfvgfvgfvgfvgfvgfvgfvgfvgfvgfvgfvgfveegfvgfvgfvgfvgfvgfvgfvcwڬ���+�Q�zo4ϭ�o3��=8g�����B�####!��iB�!BqB�B���!Obs�f������d��0�Fg_E◊R����K�&ga���1�:�/�cd�}��!���\0�y|�r\r��L�������ά�ά�ά�ά��ugVu�:�Y՝|����t�:y<��GO#������t�:�<���ά�ξGVugO#��՝Y՝՝|����ugVu�:��:�2222223M4���i�����26�I�;3������v�;y�YYYYYYYYYYJR�����������������┬��eeee)JVVVVVv�;y���Go#�;3�;y�ٍ���0�U�_���w8�0���!O��OV�5_k/�������U/�JR��}�����_s}����.a9�B�\'0�!B�B�!B�!B�!B�!B�!B�!B�!8�\'�?��\0C\0\0\0\0�����a��!1AQp� 2Rq�\"0B�3@b��#C�PSr��`���\0\0	?�\0�:>΃��:�����(��&�İX��Ĵ�%��-=�)줔�RJ{)%5����IMe$���SYI)��鬣�uK��]G��:�QԺ���ZME��ZME���MOD��MOD��MOD�JMD���KuIuKuKuKuKuMuMu#����]H�GO�>Dt�S�EO�>DPdED0dAD��9E�YpAe<Y��S32�<�f�S32����̦ne2fR�e2fS&|əL��əL��əK��əL��əL��əL��d̦n|ɟ3s)��L��f�S72����̦nE;s�ne3r)�\"�2)��L���ȦL�v��L܊v��L܊v�S�\"����ȧfE;2)ٟ;2)ٗ;2 �\"���<� �.#˂���<� �.#˂���<� �.b˂���<�!�\"���� �\"r!�.b˂r����Ȋ��Ȋ�#�.��e>C)�i��Q��gG�	��;K���[��ևOC�I�t�7Խ?c����7:��T�TT_b���OoA���;�=¿��g���α3�H�z�[�C�Ύ�w����?�z�/��ȽV3��A��o�k�q����q���ď��/J��(=��\'�_[�\0�G|\Z\'C[�j\n�V�O�О��������ۿc��:�����{�zʞπ�W*t7������\0W��+�9��}�>ßaϰ��s�9��u����a����Xz�zؑlH�$[hH�%ГB]	t%ЗB]	t%Й	P�	��	��	����\'i;	�N�v����\'a;	�N�v��2x��\'��2x��O<d񓰝��\'a;	�N�v����\'a3	�L�f0���&a3	�L�f0���&a3	�L�f0���&a3	�L�f0���&a3	�L�f�0���&i3I�L�f�4���&i3I�J��J��JI�&��h/K}�?���N��S����s����n�������e��E�e�\0\'��-�?/O����oA�E�x�Q?U��7����}� i\Z@��4��\r iH\Z@�HZ@�H�u!B!K�\n]HR�B�R��껐�Z��Z��Z��Z��Z��Z��Z��Z��Z��Z��Z��Z��z��z��ku܍n����r5����b�w���\Z�F:��]w�Q���u�q���u�q���u�k�1�Q���u�c���u�q���[��u�c���[��u�]�:�ź�1�]�:�ź�1�]�-�q�u�b�F-�q�u�b�w�]�-�q�u�b�w�]�-�q�u�b�w�]�-�r5��F�]���\Z�w#[��ku܍n����r=Wr=Wr=Wr5��G��G��G��G��F�]��]��]��R=Wr=Wr5��G��G��G��G��G���z��z��z��G���z��G��E��j��j�HB����-�߇�6?񯯠���=K�c��s�ǧ�W��j&����-���鲱���ޒ�,\n��*\"Ĩ��\n�p*\"Ĩ��,J��*\"Ĩ��,J��*\"Ĩ�xp*\"Ğ\n�q\'�x1\'�x1\'�h1\'���bMO�5>$���S�KO�->$�ؒ�ؖ�Jk�bIMbJkSYG�YG�X}5����>��>��>��>��>��:��:��:��:�Qi��Qi��Qi�=Sѵ=Sѵ=Sѵ=Sѵ=Sѵ=Sѵ=Sѵ=Sѵ=Sѵ=Sѵ=Sѵ=Sѵ=S��=S��=S��=S��=S��=S��=Qi�=Qi�=S���S���S���Qi��Qi��Q��Q��������u>�����>(�}GAeOe\rGS�E�Q�����tQ���O��5O��,������{(�j:(�{(�{(�{(�,�ಏ��I� �$%�Iaǒh��,y\'�J�c��{�2z���������,Ò�<9*cÒ�<9*cÒ�<9*cÒ�<9*cÒ�<9*cÒ�<9*cÒ�<9*cÒ�,9*\"Ò�<9*\"Ò�,9\'�I�Òxq�y*\"Ò�,y\'�J��䨋J��䨋J��䨋J��䨋J��䨋I�Òx��,y\'�I�Òxq�,9&�I�ǒh1�y&�I�ǒh1�y&�I�ǒh1�y%�I�ǒX1�y%�I`ǒX1�y%�I`ǒX1�y&�I�ǒhq�y%�IaǒX1�y%�I`ǒX1�y%�IaǒXq�y%�IaǒXq�y&��Ï$���,8�M<�E�$�c�4X�M<�E�$�c�4X�M<�E�$�c�4X�M?�&�I�ǒh��<�M?�&�I�ǒh��\0�31�<9&�I�ǒh�䝘�L��L�y&f<�G�$���4x�L�y&�I�ǒh��<y&f<�3I��$���4x�N�9\'f<��Iه$�Òv��P�9*J�Ò�0�L9*~���B�qB�qB�ءT�P�}�r�2�\0�\'*F��T�*��R�\n�`T���rT���,Ò��rTǇ%K0�f�,Ò��rTG�%K0䩏J��䨏J��䨏J��*#Ò�<9*#Ò�<9*�P�\n�`T�J�a�R�\n�`T3��Ò��rT3J���P�9*�%Cp�n�-��n�-Ò��rT�Kp*[�R�rT7J���R�\r��n�\rÒ��rT7J���P�9*�%Cp�n�)�%Cp�Ly*J�ǒ�0*�1�Ly*>��1�Ly*J�ǒ�1*J�ĨLy*J�ǒ�1��J�ǒ�1�LJ����J����J����J����P��P��J��\n����P��P��J����J��\n��\n��\n��\n��\n��\n��\n�����\n��\n�Y\n�������[!P�B�qB�l�B�\n��������/�/�/��2Y\n�,�L�B�]6*e�b�]6*f�b�m6*&��TO�����߂z���\\UwG�����H���]FH����z�N��z����E����i?��5#;�\0�\0G5}��OW���u�\"N���\0c�����O�CS�/z�V��(��#V籩Ї�?����ӧ�� ����������=����$N���?:�oBb���^���\0Χ�G5�ҍ�x�\n�|QE�5}�9�^�Y�bt����;��\'�|w]]��܈~\'C{�Tj������j���EG9��T�}�����ic���X�,v�;K����ic���X�,v�;K����ic���X�,v�;K	-���Ia$��XI,$��I,$�K	%��܉%�Kr$��I-Ȓ[�$�#d�#d�\"InF�nD�܍�܍�܍�܍�܍�܍�܍�܍�ψ�-��-��<���܍�ψ�<���܍�ψ�<���ψ�<���ψ�-��<���ψ�<���ψ�-��-��-��<���ψ�<���ψ�<���ψ�<���ψ�<���ψ�<���ψ�<���ψ�I��d�|FI��d�|FI��d�|FH2O>#$��2A� ǌxǌxǌxǌxǌxǌxǌy��F�7����o#yȞD�\'8��.��B�![���u��^u��^�N��_�D���_��z�o��=��v��ju��o�S�����==¤������E�\0�������I�\"��(���Xk�5���?�{׬�\'���w��{�H{\Z���}�DꟉ�^����\'��ދ��b�V!��1X�;�b�C�c�v!��1X�+�b�C�c�v!��1؊;Gb(�E���v\"��Q؊;Gb(�E���v\"��Q؊;Gb(�E���b8�q��v#��q؎;!vB8�q��v#��q؍�#e�2�a���Xc,1��e�2�a���Xc,1��e�2�a����kl5�\Z�\rm���[a����kl5�\Z�\rm���[a�\Zѭ\Zѭ\Zѭ�F�h��F�h�5�4F�h�\"� �\"� �\"� �\"��J�¿�H����_�6G��;؟���޹����VF~��6F;�7٧��d�5�~$�\0\r��~J�����W��\0�n�\0�M٧���*��*��*��*��*����*��0*��0*��0*���0*���*����*���B��*����*����*����B��B��B�qB��B�qB�qB�qB�qB�qB�qB�qB�qB�qB�qB�qB�ءT�P�v(U?*��O�lU>ɱT�!T�P�}��~(T�*_d*�d*_d*�d*_d*d�O�RY6*�d*d�lT�dة�ɱS%�b�K&�L�M��,�2Y6*d�lT�dة�ɱS%�b�K&�L�M��,�2Y6*d�lT�dة�ɱQ-�b�[&�D�M��tب�ɱQ-�b�[&�D�lTK��D�lTK��D�lTK��D�lTK��D�lTK��D�lTK����Q.��Q.�˦���Q.�ͦ��i�<�lO.�˦��i�<�lO.�ͦ���<�lO.�ͦ���<�lO6�ͦ��i�<�lO7�y������o>�y�\'������o>�_�y���~	��߂y��4���{�M=�%���I>D��I>C��|��%6K���U�����W���_ʾ�\0�L軑��rY6*�lU�dث}�b����[�M���o�6*ߊlU�*ߊlU�*ߊlU�ث}�b����[�M���6*��o�lU�*�dت~)�T�&�[�o�lU�dث��UIdت�ɱU%�b�K&�S�RY6*��lUIdت�ɱU%�b�[&�T�M��l�R�6*��b�[&�T�lUM��T�M���ت�M���ت�M���ة�M���ة�M���ة�M���ة�M���ة�M���ة�M���ة�M���ب�O�\0%D��*\'�b�}6*\'�b�}6*\'�b�}6*\'�b�}6*\'�by�؞}6\'�M���b�}6\'�ρ<�lO>�����{���߂y�؞o>��<�lO7�y��<���{�O=�&��M~	���_�i��4���{�M=�&��M~	���߂i��,���{�K5�%���߂Y��,���k��rY��,�&���rY�K5�g�,�%��ܖk��rY�K5�f�,�%��\\�|�&Ȓ|�\'�|��!�d:l�|��%6J:\\�YrQe�w;L�s��w���\0*��U�����W���_�%�.�sy*��b�}6*��b�}6*��b�}6*��b�}6*��b�}6*��b�m6*��b�}6*��b�m6*��b�m6*��b�m6*��b�m6*��b�m6*��b�}6*��b�m6*��b�}6*��b�}6*��b�}6*��b�}6*g�b�}6*g��T�����ρQ>�߂�>D���{�O=�\'���~	��߂y��<���{�M=�\'��O~	���߂i�M=�&��O~	���߂i��4���k�M=�&��\\�k��rY�K5�fȖk��rY�%��dK5�&Ȓl�&Ȓl�&Ȓl�&Ȓl�&Ȓl�&Ȓl�&Ȓl�͐��6C��|��!�d>\\�͐��6C��|��!�d���G͐��6C��|��!�d>l�͐��6C��G͒��%6J:l�t�(�Q�d���GM���%6J:\\�q�介.K��介.K��介.K��仝�K��d���K���w:�.�?%�Gd���q���1n����\0�}�\0*��U��\09�*���/����尝n�pΧS�j��k��u:�t����YНn�%N�uz�?$��\0����\0�����\0	��D��\nj~����/CS��~�������������Ob7����\\��|���o���޼����=c\"T��\'�`���z������z��w���9z���|��cӣ��__J���s�>���W��ޞ�_�_���r�܁o���߂�~�k��k��k��k��k��k��k��k��k��k��k��k�������������������������������������\n_�x!K�B���/��k�\n_��)~R���!K�D���/�_�$�Ir$�\\�.D�\"K�D�\"m�\"K�%Ȓ�%�\"K�Dۑ6�I~��%�\"K�F��Dۑ6�M�nD�\"mțr&܉�\"mțr&܉�\"mțr&܉�\"mțr&܉�\"m��r6܉�#a�F�6���l#`��dcc������\0��A����ֿ�G�j5���Sއ��\0\n���K�N���#\Z�\0��U�\'#��Gz���(�c֋�_������u�u���]a���Xk�5�\Z�\ru���]a���Xk�1��}�>�a����c�1��}�c�1��}�>�1�#��1�R9,�rYH䲑�e#��G%��K)�R9,�rYH䲑�e#��G%��K)�R9,�rYH䲑�e#��rYH䲑�e#��G%��K)�R),�RYH���Ke#��E%����Ke\"��E%��K)�\"��RYH���Ie\"��E%����Ie\"��E%��KIe\"��rX�K)�R),�RYH���\"��RX�KIb),E%����\"��E%����Ib),E%����\"��RX�KIb),E%����\"��RX�KIblC-�d��!��2X�K�b,B�����/!yχ���o�ztx�����o�~)��?�������N�Y+5�e��F�=�\'�5�S���Ҋ�O�s}J7��R)�Ow��N�j����n�����\0*��U������/�TAPTAPV��Z9��*o���b�:=�U�@��Q����GϚ�>|�t����w>k���Q����GϚ��5�|����w>k���]�O��:|�q�滎�5�tٮ��w6k��f��6k��f��6k��f��6k��f��6k��f��6k��f��.k��滝�k��仝�k��仝�K��d���K��d���K��d��|�s���#�]�~K���w:�.�_%�G仝|�s���#�]�~K���w�.�?%��仈��q��#�]�u�qu�k�����V�պ�5n��[��:�պ�5n��[��V�պ�5n��[��V�պ�5n��[��V��Wq�u�f�7^F�5]�j��ב��7Q���`�Tg���f�3U��y���w������5]�~��3��f���4#B4#B4###B?܍ЍЍ<���\Z�\Z�\Z�H�D�&�4��M\"iH�D�&}��\0�}�\0*��U�����W��\0�t}�PT��P�:�PTAPTAPTAPTAPTAPTAPTAPV����*\n���4T��������������4sG4sG4sG4sG4sG4sn9�ێm�6�q͸��sn9�ێm�6��q���\\sn9�ێmǲ��q���\\{.=�ˏmǶ��q��\\��$eǲ�����ΟW��z?a��#�]�~K���w\Z�q��w\Z�q��w\Z��]��5�]ƺ�պ�1n��[���ź�1n��[���ź�3U�f���Wq���5]�j���w��3U܏U܌�����܌��������Ѝ���Ȑ��D�&�4��M\"iH�D�&4��M\"iH�D�&0��L\"iH�D�&0��L\"a�D�&2�L\"e��b&2�L\"a,D�&X��\"e��b&X��L��D�&2�L��b&X��\"e��b&X��\"e��b&X��\"e��b&X��\"e��b&X��\"��L�,D�2�Q؊;Gb(�E���,D�2�L�v\"��Q؊;Gb(�E�����\0�}�\0*��U�����j��*\n���*\n��9��9��q͸��sn9�ێm�6�q͸��sn9�ۏeǲ��q��\\{.=�ˏeǲ��q��\\{.=�ˏeǲ��q��\\��$e�rF\\��ˏeǲ��q�#.H˒2��rF\\{.H˒2䌹#.H˒2䌸�\\{.H˒2䌹#.H˒2䌹#.H˒2䌹#.H˒2䌹#.H˒2䌹#.H˒2䌹#.H˒2䌹#.H˒2䌹#.H˒2䌹#.H˒2䌹#.H˒2䌹#.H˒2䌹#.H˒2䌹+.H˒�䬹+.J˒�䬹+.J˒�䬹+.J˒�䬹+.J˒�䬹+.J˒�䬹+.J˒�䬹+.J����\0�7���\"iH�B�����,!aXB��c!��2�Cv!��1؆;�b�C�c�v!��1؆;�b�C�c�v!��1؆+�b�C�c�v!��1؆;�b�C���v\"��Q؊;Gb(�E���v\"��Q؊;Gb(�E���v\"e���,E��b6X��#e��b6X��\"��l�,F���l�v#e��b6X��#e��b6X��#e��b6X��#e��b6Xc,F�e��b6Xc,F���b6X��#e�2�a���X���e�2�a���Xc,F���a��,F���b6Xc,1��e�2�a���Xc,F�e�2�a���Xc,1�#e�2�{��_ʾ�\0�}�\0��\"z�DN���d��oBt{�k[҇W���O������ɾ�:���ܿ��DUA[�T_b\nޯi��{�z>Iw�\07��\0��\0��-g���t��\"\'�ȧ�\0��{^�O:[\Zu�;�EE?O����c�\Ztx��I����K�������z��[�d3:}�\'Gh����\'J/�F��������~w~��N�\rF\'��1��N��ح꧳��9��m�6��a������������&��bD�\"X�,I�hI�h��!&�I�h��!&�I�h��!&�I�h��!&�I�h��!&�I�h��!&�I�h��&Ě!.�I�h��!&�K�h��!.�I�脚!/��.�J�lJ��J�h���.�K����IT�tؕ|��*�*�*�J�|	T�IWρ*�J��*���U%RU%RU%RU%q*���ĪJ�W��Į%q+�\\J�W��Į%q+�\\J�W��Į&q3�\\L�W��Į%q+�\\J�W�*���U%q+�����o����W/YO��~��M��Ϲ�S�����ʟq�-^����#K��1.��1�۠��cn5�\Zۍmƶ�2�2�2�2�2�2�2�2�2�2�2�R�2�R�R�R�R�R�R�R�R�R�R�gs��Թ���\\��vw;;�����gs��Թ����vw;;�vw����������gs���v~|�X����;;�vw;3�����X���c��,b�,b�,~|�π���c��,~|�π�����1c1c1c1c1c1c1c1c��F:1ы��F:1ю�tc��ю�tc���F:1c1c?>�,b�,b���XŌXŌXŏ�w�\07�ߩ�\0����Q�|�N��~�{�o_���M�6����z�\0KS�{^��\0Oj����s���_g�+Q?҂~����~��O_o�I��܇��ڿ%{�U�����W���#RX�M�c�4w&���ܚ;�Grh�Mɣ�4w&a4w&��2f0���&a3	�L�V�4���&i3IZJ�|	S]�S]�SRT%Mv%O>��ĩ�Ŀ�ĩ�ĩeؕ5%Mv%Mv%Mv$�v$�v$�v$�v$K.ğ�ĩ�ğ�ğ�ğ�Ě.ğ�Ě.Ě.��]�4]�4]�4]�4]��h�h��v�]���v��?E�z�v��=l�[.Ö˰��?E�z�v��=l�[.Ö˰��9l�[.Ö˰��9�]�-�aβ�9l�[.Ýe�r�v�.Ýe�WYv�Wa]e�Wb�\n�Wa]��+�]�v+���vخ»�Wb�\n�Wa]��+�]��+���v:���[���lWc���u�]��+���v��¿�W�\n�Wa]��+�]��+���vخ»�WYvخÖ˰�b�[.Ýe�r�v�]���a�e�z�v�]���a�e�~���bMo���ƣ�R8�F���l�,F�e�2�a���Xcl1��m���[a�\Z�\Z5� �\"� �\" ��U�����W���_��E�t�3	�L�f0���J��H��HI����~�����9l�u�aβ�9�]�u�a_��+�]�~+��b�|Wc��v;LWc��v;\\Wc��v\\Wc��v;\\Wa%�v\\Wa&�v\\Wa&�v\\Wa�`�M��6la�`�\r��l�(�b�\r�\\Wa�b�f�v6\n6llخ�f�v6\n6lTdبٱQ�b�M��6lTI�]�͊��6*2lTlبٱQ�`�f�FM���6*6lTlبɱQ�b�&�FM���6*2lTdبɱQ��&�FO���6*2|d������R9�R9�R9�Q��2|T�|Td����ω��ω��O���O���ω��ω��O���O���O���O�F$S�EQ�F$U�TbE>$u��bEQ�F$s�G>$s�G>#\'�H��FO���6*6lTlبٱQ�b�M��.*$���k��v���i���*v���{�����\Z�DAD�/���_ʾ�\0�}�\0*��\0��	��]�-�a�e�s��u�a_��+�]����1]����q]���l�.�g�Fς��>\n2�Q���`GQ�NU8T�CS�\rN$8�T�AS�N<�T��N<�T��N<�T��OQnH*m�F<��䧩�%=E�)�-�OQnH*-�OQnJz�rS�[���ܔ�䧨�%=E�)�-�OQnJz�rS�[���ܐT[���ܔ�䧨�%=E�)�-�O=�)�%=E�)�-�OQnJz�rS�[���ܔ�䧨�%=E�)�nS��ħ�ܔ�䧨�%=E�)�-�O=�r��ܔ��7)�,���䧞ܔ�ے�}7)��r�}7)��r��ɹO>����O>����O>����O>����O>����M>����M>����M6���i�M6���i�O6���i�M6���i�M6����M.����M.���i�M.���i�M.���i�M6���i�M>����M>����M>����M>���䦨�%=E�)�-�OQnH*-�E� �ǒ\n�y �Ć�\Z�Hj1\"�Ď�:�H�1#���2|����\0�}�\0*��U��\0�T�-���R�W�|�w�D��I������߰�/�/�O���Q\\�/�����F/G�z�9_�^�j�_Z��+��.�\0����3�RFt�:~�ȿ���Γ��=�:��g����\0x����oW�Ξ�\0:�wf����ޯ��*\n���+G4sn9�ێm�6��q��\\{.=�ˏeǲ��q��\\{.=�ˏeǲ��q��\\{.=�$e�rF\\{.=�$e�rF\\{.=�ˏeǲ䌹$w$e�q��\\{.=�ˏeǲ䌹#.I�rH�=�$eǲ䌹$w$e�#�#.I�rH�H˒2䌸�\\��$��ܒ;�$w$��ܒ;�GrH�	#��tܖ;��ܖ;��t%���7%��ܖ;��rX�K�c�,wBX�KЖ+�,wBH�I�#�Gt$��ܒ;�2��q��\\{n9���APTC��Ͻ��Ζ����\'��{=��p�,w�}>���ҟ��Q�:n˿�q��E�>�\0uW؟��*��O�\0���\"��*������\\s�~D���t\n���=��?;�Բ/S��N���dN�֋�=�^��{�k����+z}�α3�L�<�BW��K!,��HI!$�|	$��I/�I|��π�|��π�|��π�|��π�|��π�|��π�<��π�<��π�|��π�|������π�<������������π�/��<������������π�/��/��/��/��/��<��������������π�/��/��/��/��/��/��<��������π�<�����%�K�,�K�%�K�%Œ��qd��\\Y.v�;K�����is���\\�.v�;K�����is��׹�\\�.,�K�%Œ�%�K�:K�:O>���>O>���>O>�y�$��BY	d%y+�^L�:�α3�L��ܓ��\'[rO�$�rJ#z~��}k�;��F�\0Ğ����w��\0/Z��>�Ɵ���N�7��;��\"w_���/J��!�bt|���s:����u����#Z��O�U~>��gǣ�ʾ�\0�}�\0-��{��*CS�\rN$8��8��8�S�[���ܔ���)g��RϦ�,�nRͦ�,�nR�tܥ��R?$)�����\nU�\n_�\n_�\n_��L�)�>\nTς���S3>\nfg�O|���O|���O|���O|�g�O|E�<Y�A|E�g�y�Sǟg�Y�A|E�g�Y�A|E�g�YpA|E�g�Y�\0Ć,��C|şg�Y�C\\ŗ1e�YĆ,�!�.b˂���,�!�.\"ς����!�.�˂���,�!�.b˂���,�!�>\"ς���,�!�.a˂(���,�!�.a˂r��,��E\\×P��9pE\\C�p��9pG\\×p���/��/��/��.��~Au�d]�Au�d]�Au�d]�Au�d]�Au؎�G\\C�P��YpC\\ş<y�Sǟ33�n|ɟ2fR�e/ԅ*�*�*�+�B��!H��K-Ф��Rͦ�,���RϡM>�4�4�5E�WO�~�ʾ�\0�}�\0*��\0�5����Ҟ�ܔ�)�<����K6���]7)%�nRKtܤ~I�H쐥\\��\\���Х�ХLЦf|�ς�<�)�ς���,�!�.�˂8r���2���{��}F��6�Q���O����M��ڞ���ڞ���ڞ���ڞ�����������������������ڞ��������������������������������������������������O����O����O���������O����O����O����O������������ڋO���������O����O����O�������OeOe�Qi�O��{(�{.��컏���>�˸�{.��컒S�wOe�}=�q��]���wOe�}=�q��]�S�E���mOF��mD��m>�i�2���~�˂(r �\"�)�ς�,�)�ς�<�)��J�����Z�Z������\nG�#�$�B�]\nI��������\0�1�����i�I-�r�K��#�M�Gd�\"�/օ/օ+sB����ς�<� �>!˂2���E�a��]���D���mOF�ZmGS�w$���IOeܖWrX1]�`�w&�I�ǒxq�y&�I�ǒx��,y\'�I�ǒx��,9\'�I�ǒx��,9\'�I�Òx��<9\'�I�Òx��<9\'�I�Òx��<9*�%C1�f�Ǉ$���<xrO�Ǉ$���P�9*�%C0�f�ǒx��<y*�%C0�f�Òva�P�9\'f�Ò��rT3J�a�P�9*�%C1�f<�Ǐ$���P�9*�%C0�f�Ò��rT3J�a�Q<�Ò�<9*�%C0�f<�ǒvc�P�9*�%Cp�n�\rÒ��rT7J���R�9*�R�9*[�%J`T�J���n�Ò�<9\'�I�ǒxq�y&�Ii�䖞˸�{.㩬��j-.���z6��j%6�i�Mq��#��Pe�E�Oe4y��̥�Ф�Ф\\��vH\'B�����;��rF*�Og���_�/��b{:T��w�>�Z�/�	Q���?�:?���������N����߱����\0?S;��ȿg�Oj�:>O��r5��ԑ^��TsWب{U������z�?���~9}��=��������~Ύ����Ύϧ�����I�w�	t]�t]�˰���=�Qΰ��W����,v�;K	%���e�#d�#e�#d�#d�#d��6O>#e��6_>#%��6_>#$��6O>#d�#e��2_>#%��2O>#%��2_>#%��2_>#%��2_>#%��2_>#%��2O>#$��2_>#%��2_>#%��2_>#%��2_>#%��G/����#�ω�|H���G/�9<�����d�|FK�Ď_>#%��G/����#�ω�|H���G\'��y�#�ω�|H���G\'�9<����Ď_>$ry�#�ω�|H���G/�9|���ω�|FI��d�|FI�Ď_>$ry�\'��y�\'��y�\'��y�\'��y�#�ω�|FI��d�|FI�ĎO>$r��#�ω�|FI��d�|F�6_>#e���Il$�[����^�^¾ßaϰ�X{���e%�v%�v&K)2!3I�M4w&���ܚ;���/�&�ׯҽ\",Mo�}���_��|;����\'�~����S��)?OsOW���_��o��/�\'�\'�:}���_i��;���o�����?Ĉ6vt�zN۩��gI�������_�����~�}g|HP��, ad��b�C�c�V\"��Q؊;Gb(�E���v#��q؎;�b6X��#e��,F���b6Xc,1��e�2�a���Xc,1��e�2�a���Xc,1��e�2�a���Xc,1��e�2�a���Xc,1��e�2�a���Xc,1��e�2�a���Xc,1��e�2�a���Xc,1��e��a��,F�e��a��,G��b6Xc,F�e��b6X��#��q؊;Gb(�E���v!��1؆;�b�@���R�E��j�z��\\k�#�v�;[�-�K~c�?������=K�{#cj�.�j����\0���_����?\"��c��h������LI�U�)�ς2���.�����M�躞��������SYw%��w&�I�ǒxq䨏J�a�T�I�U�!U��T��V�P�~(U�dث�ɱW-�b�k&�T�M���ت�M���ت�M���ت�M���ة�M���ة��b�}6*j4ب��lTT]6**/�SQ��EE�b���ਨ�EE�**/�QQ~\n���TT_����������OQ�=ND����\"z��\'�˂z���r&�Ȟ�\"z���r\'�˂z���r&�Ȟ�\"z��\'�Ȟ�.	�r**/�=N\\�߂z��OS~\n���OS~	�o�=N\\��OS~	�r������OS�=ND�9��OS�=M��nTT߂���7����7਩�EM�**o�QS~\n���T�_����5ਨ�MG���ρSQ�����b���5\ZlT�i�S>�3�S>�S�U>�si�W6�si�W-�b�[!Y%���*ߊn�\n��\n��\n���nK0\'�I�Ė�Jk(�k(������[��k�=Ԋ�!̧�1:�I�\0��g�������:�Q��RJ{.�c�48�O�Ò��)�U�!U��T��V�P�~(U�dث�ɱW5�b�k&�T�lUO��UF�U\ZlT�i�QQtب��EE�**/�QQ~	�r\'�Ț�\"j���2&�Ț�\"Z��j2$�Ȓ|�\'Ȓ|�*3>j>|�t����Q�f���GM���56j,ٮ�˒�v�.�˒�,�.�˒�,�.�k��v�.�k��v�.�k��v�.�k��v�.�k��v�.�k��v�.�k��v�.�k��v�.�k��v�.�k��v�.�͒�,�.�͚�v�.�˒�,�.�͒�,�.�k��v�.�k��v�.�˒�v�.�͒�,�(�d�͒�6K��d�͒��56j:|�t���Q�棧�GO���5>JI>C�3>C�Ȓ�\"Z��j2%�Ȗ�\"j���2&�Ț�\"z���nOSr���7਩�ME�b��M���6*�4ت��b�}6*��b�k&�d�B�K!X�P�v(U�(U�(U&K0*#ĞI�Ė��IKeI���������������Oo���������/ʿy�Cj3Q��0f����50`��0`��0`��0`��F��Ph�\Z4hѣPhѣF�A�F�\Z4j\r\Z4h�\Z4hѣF�4hѣF�AAAAADADADADADADADADADADADAAAAA�\0����\0,\0\0\0\0\0\0\0���!Qa 1q��A���0p�@P`��\0\0?!=7�7\r�p�7M�|�7��}\r�}\r�7��C}\r�7��C}\r�7��#�t���:G@�#�t���:GH�#�t�K#�t���:gL鈖����/A�6ͽ͑�6F�(l����� �z!���C�tN��6��hm��z �~�?D����A� �~�?D��\r����Ht����Hm!��ѴmFѴmFѴmFѴ?A�GH��?A��~�I�t�\'I�t�\'I�t�\'I�t�\'I�t�\'I�t�\'I�tA�tA�tG\Z�^��VʼZ��K�\"~��K�������_����i!JڹЛ�;\'䤚�2G��)��rA�`x{IJı-�X,����l.0��Y��3�	9+;�wv.nťؘПP�P�P�P�вЗздН��t-����mE��������Q�JJJ���5��5��50�4..�./T.�.T.T/4 ��B�B7B7B�B�B�B7B\Z/4����mu---0�L�к��S�}T�,2�m5��E1:��0�\\�IhKhKhH��N�K(=��=��zC�JU�8~��=W�\0�9��fg�xg�������_�o����yx���]�Sv���M�z��$F�}*d�>b��l�g�DUVAN�j>y�:�(����P� Ә��/!J�C�)x�?��K�/^��軣cy)�>�{�>�\n����P�M���\'�i�]�\r�ԛC�rî�x]�5�t����#����U��N��s ����F~�~bk�ɽM�k̫��O�O���J�\'����I_69���.Nf�mng: ���u\rN7z�Fa	f����RvN��9\'$����^J��)���Од��B�^Uʡ��P���l�T6?*B)hD-�� T�R�qǱZOǙ��\"#2L���8J��\"N��;�Β$��Γ�<�;�����>O�x|���\0�\0�\0���������٭������v�-օ�нR�K/�:ЃR-hE-\r��к��Bڨo�G9/C4������U��\0P>_	��V���C�,�E�G	2Ϙ}��>�`���:�!�[�ك�e�����e��������m� ���`��\r�`�� �A�0m�l6���6��l`��0m��0m��0m�l0m� Ɉ�!��d�de���2�C �2�[��[ldd{�dde��e����2222�����ת��iе�U�-�^��g��ݑ��{0ϱsU}�]�tuU<�g��Z��+R�jH�I�r�$V��ԐZ�+Rb�ijNTNTMTH�Iu�fw.��ܼ;��sd\r���><��PA$�|M�7��B�7r���p��[�5\"_��˾.n�d����rR��^��˾12^]�^d������$x�#��]��\0���ɗ.\\�r�	$7��w�����C7@��ct\r����X�X���Z�]�]�]�]�\\����`���ɥ�;Q\'Q4����x~��5�|�{J\"��k��Ȩ��/N��7��n�N��6����o�n��~��5꿁N|Nf�[���o��Mz��_��D�꿩~��5����/^������K�K�p�޸���\Z�z�:�ږږZ�z�z�z�K=K�KMK}K�F��\0K]F�K�I\rF+�K*X�L��I�I�I�I�I�I-I�I-Ihߩv��ܚ���;�Wr��Z�C�nw-��)\n�\r����uQu�K&��kc�t�#�\0\0u�N�)�]X[��ˬ������&�Yu�Q7�:��J��Cx� �5E�܀�r\0@�\Z��!*,N������1q�7�Q\0!��dШo7�P�CY?�\\?�x��}���Y��C�pw/�ܿ��wr[RoRkRQ�×��(��A�?yx���K����_Կix���K����_Կax���K���_ϟ~�a�S1�^/��Mz�9ؙ����%�$�I��q��iF�i�u�X>�(�ө�8���ɰ�2�����&_��y��Ij��FWpg�Xe&\\e�ne�Ze�Jg�j[�3�83�ޖ+����L��L�Ό��̔̋uFjf&@\'���53�#���Q��\n�a��ȟ/��<��?�Ο�Ye����8GS��z�o��\0���\0�,w�먹d@D�ԳP���̴\'�yJ�?ax����/�^\'���K���R���z�_Կix�����/�ǟ�ύ�c?���7�<s�?�7����eFQ�eFQ�e3FQ�eFQ�ex���=W��2z�u�Z�[*[*[+��ʗ��w����0 �(�W��(��R�R�\\p��R�R�R�_�GyG�yz��Yr�p�p�:q\r����p�q����D/11��	��Ԇ�h��؈�	�5�a�x�|jD�dBjm�56�\Z�o�K��q5.&����[Ep�����ρ��pa��P�q���7lT���\\݋��\n(u�ر�lzj��Y]�;�qv..ŭؿ�b��X�����,��4�\"Bw�w�oݓ������z��_����eU���Ss䈙��$M̄.w�(e}���E�s3R�7����>�3U^H���ӛ�\r��zw�G�=	�]]OGܞ���ۈ�������W*����ۻ�t�d�t�#��\'���AU�5���s,!��f<����~c�h�n{��D�y����K�/����3$���/�����3�}}^��.�����}���F��]��`�܋��B��]�Q��hw??��Y�rL��\0�~���\0�_���|𭋺�[Wu6�b���KuK�KUKUpr�R�R�R�_�8�pe�I`� �(�����7��7�\"$E���H�\0\"O\0A��Cq ��A-BD��O$ �Ah���`�ǒ���z�/���T�J�iR�*Y�K_%�T�J��R�*Y�Kt�w�J�)R�*^�K��z�&����Y!(��hK�.�B�B�*�΅���fz\')/m�����9!p���Eyr>l���&�	}a+uŴ9������2k9��1�	Q�H���O^��0����!���A� ��ԃ�A� ��ԃ�A��>�R������Csp���7071\r�A���8}C��70\0��>���\0��:�|�A��A�tA�tA�tA�tAà�:����:Aà��t2q�~��=�}�}�z|���Q��		�	uq�9{ۇ�)��әDw�R�`�}E���5QV��Y1���V�\0R�(�Ϯ������EH��\"T �\"�ǡ��\r��	!d$���:���zZz�z����\Z){hChC�D�D�D�FhD(BhF�]݈=��gv!�\"� �#�.���غ�\ZI]�����������)B?B)B)B-B!B?B!BBBBBA|�\"�*�*�z�Z�X�b,E�A!(��7��\"B!\0�x7��xcx7�7��xCx�x7�7��xcx7�7�7��xcx�x�x�x��/�a7�XA��Z!쇲8�:����S��,\ns�$:&�(͢˔�U�4�\n�b��T2-�����UDF�\"{O�W��~c�^Qߥ��a��������Ҝ��<3���3�υ�3�<sL���3��Q�eFQ�a�Q�a�a�Q�FQ����a�ea��epe3�3<3FS31�e�e3���eFFQ�eFQ�a�Q���Q�a�eeFQ�a���v������ׇ�a6�\n�O�H�H�H�H�H�H�M�¦�����T�|*^A��|*^EM�¦��R���P�a5��QA<��,�\'b��Z�C�\"3jv�0k��r�,>��ؾ{�\0b��Y}�_�o�-����׿o�֭���M�bD(�bŋV-�6p��l��������(��(��)$�묲�.��.�K4�4�m��3�bBq��C\0����ꁅ3P��.T.�.��rRVY�ſ��d��e��{_�_w���U�{_�_tr���O�_w�����)��2���fc(ز��(�Ø�2��2��(�2��(�2��c(�2��(�2��(�2�˃2��(�2��(ˆx0�0�2��2��2��`��0�0�2��`�L6�(�fc�(�2��(�2��(�2��(�2��(�2��(�2��(�0�2�}�Ó�Ȍ���OŻ2eȁ\n��+�� I�bMt��u�ۍw\'˗&��~rѳ<س���v��A�a��8C�8C�8?�g��\0�\0���L%�Ĩ����������͌���a��Æ0gu_xgFu`��\01���(�H����U��>���\0\0;[�-�Z@��m2���m�([�-�[�. [�������6�\0a����m��΅΅΅΅΅ΜS��	�?\'xU+,��ܵ��w~\r�=��d�?o���U�{O�}�����~�}�Ó�U�C��2��(�2��(�2��(�2��(�2��(�2��(�2��(�2��(�2��(�2��(�2��(�2��`�2��(��(�2��(�2�2��0�0�0�0�0�0�6,2��L�a�n�Q�Q�a�Q���e��eFa�Q�a�Fa������E\\���V/���im�x�a�If ���xn��u��%�}�UW�gFdeu�$3��\0�ʅ���m�\0�!J�5�n��\r��SJo�,h�o�w�w���b�\0B�\0Cq�Ů��}��k��k�{�.���Ρ>&Dڂ�(�#C�G������XJIa(&���BxM	�,�$����rK	a0%$��Y�%�ܲ��Wr��[]�+�mw/���ߊd��hb`ɷx:�����g�\Z�ۇ������a�����~�}�Ó�}\"f���H���������Nn[7RPܻ�\r�E���E�}��͇4���XeE���� ��\n?#����r~E��s��w�{�!�F���j��?�7��_�A��3_��&�P��Ջ6�>�%/�R��(��\0H������	\'���h\\�������Qj�UNiTQ�����G�W�sUUwQ����=d�9p�S�-��;��ʧ2ܯ����&g���Zp%��s�s�{��ư[����-�nKq�&j&b�L8]�[pV�¬���߆���p��Oj{R~�c)�p��\'i\'i-�[n	!��׎K,��F�8ㆱбP�вл�	���v,T{�,-���b�B�B�B�B�A���B�B�B�B�B�B�B�B�B�B�B�B�B�L5:�6&�ȞRiI�\'��RmI�\'T�R�KE,��ԾZ�KR�jz��/\r�C��^�9�S5�dr?ޗQ�Ǖ���X�˯��B�௾M��5���ϓ�@�f䩪c�#���y\n�\r�(7��\"�\"�*�*�\"�\"� �.�>�6�4� �)�0�(�(�)�+�(�#�+�v$�$�\'�\'�/��ޅ�ط�b��^]�˱iv,.ŕط�wb��Y݋K�wv,���ؿ��b��]݋��\'�wv/���ؿ��b��Z݋�cv,.Ņؿ�:b��_]���wv\'�\'t/���ص��bwB��_݋۱{v\'t.n��ޅ�ؽ�7b��L�N�L�J�J�N�J�L�N�N�^݉���\'�#�+�+�\'�#�+�+�#�#�3�5�/�/�\'�;�\'�9&4\'d愌�p\n�!HR�\"0����}������u&g,KU�A6Ro.tA5�r�\'�y����=_¢NW�e.���0�Ң�����8�8�Î8�㇎8p�Ç��Ç8q�A�GQ�Q�q�q�Q�Q�uGq�uq�Gq�\\q�Q�|q�q��q�uq�Q�uGQ�uGGQ�uGQ�uGq�q�Q�Q׋�����0�E�:�\'��er���-��ɢ\'\nw��ނ��CU������9?3�����\'꯻�\'/�_�N_��eFQ�eFQ�eFQ�eFQ�eFQ�eFQ�eFQ�eFQ�eFQ�eFFQ�Q�a�aÇ8a�eFQ�a�Fa�a�lo����{���{���{��{�j��j��j�Z���e�j�Z���e�j�Z��e��T2��C-P�T:��,)aG��������)��!	4�(�����\'��\'���j�,^��V/~F�[=��b�.^�\0�9�&@�d(�F�2ŉ&P�+�/s��}����p}����j�l�����/k�ѣ���N�}��f͝l�c�6(@�q�!j���\r��7?!}U-*��T��R�C\"��R�C��S{�yB�Cf��p1mB��K�.�\\UM��E�Z��Rqj^-I��0�6�+Si�&���ajO�Iũx�.i��.֥�Ի�Y-K�%ߒ��3$ID�$1C��r�U�������	��W���ꫮ�r�WI��0�0�0�0�\r�\r�\r�6�0۠ۡ�n���6�6�6�{���e�j2��C-P�T2���2�j���2�e��Q�\0��,)aG�\n^RT����,)aK\nZR�����爾x�x�X�Y$����c�c�c�d�\"���hH �bT�BA	�$�BI*J!$�%�BA	4�A��%���\'�BQ*?���T�Cb�J��Sl�T�T�T�T�j�j�j�j���\"�\"�\"�\"U#U#\"�z�z�Z���\Z�xeH%HeH%D��U � �x%HED�\n�J�j�~4�!|�>NO�3gO޽X�w�޽ݑ\"D�0�M�7�߃~\r�\0��7x� ��R򨰫R򨰫Sa�,*����M����}��|�M��K��d�,��O��K�6�u6��X�L��\0����y��^y/<��q1��-��8LAD��AD�	DD\0@1@�\"Z/DB\'\ri��T!paB����*�j�*T*�*�\n�*�\n�*���*�\Z��P�P�P�P�P�P�P�P�P�P�P�P�P�P_��������B!BBN/��꯿�\'꯽�\'꫎�~����~���\'���Q:�Ծ��/�}K�_Q�������A��!0��A�q!�8�b,E��H�HEHEH%H%H%H%H%M_�R	RRR	R9Q<2�r�R�2�x�H�D�\n�\n�\n��U�*\'�T�T�T�T�K�R5RRR)R!Q<R�B�xUHUH�DV��xUD�*�J��\"!U!U2�\n�\n��\n�x�H�H%HM_�Q<:�*��x�D�*�*�j����ꚿ\Z���©������\'�T�T�T�T�T�T�T�T�T�T�T�T�T��� �\"�!� �!� �5~5HUHuHUHUHUHUHUHUHUH�HUHUH�H�H�H�H�H�H�H�HUHUH�H�H�H�H�D�*�*��\n��`�J��Yy,����L��TYC�1C��7��-kR�jj���R?B#B?B?B?B?B3B/BB/BB/BBBBB\'BBB\'BB?BBBBBB;BB+B?B#BBBBBBBBB%B-B%B-B-B-B%B!B-B-CG�P_���EhE�G�E�C�G�C�@�!�!� T! 4�=E���=�#�\"##�\"T t!T!�\"��ЄP�P_���PV�J�zz::�z\n\n�T!� t!�#�#�\"�#�\"�!�#�!��~�~�z�~�~�~��J�:���I����g�rۧ׍UCDn�\"n<!����k	��(W��\'�������ב��舙���ZNG=�t�;�/.c�� vrB��G�QTc�8��+���\\��k.�C�>��?��&���Cء�^I�9��#��^�?�-�e�����uN��A����\Z���b�\0DC�&����ee�3331�Q����������l3�<�c31�ω����a�a�\\3��e33��eL�S1�eFQ�eFQ�c1�eFQ�eFQ�eFQ�eFQ�eFeFQ�eFQ�eFQ�eFS1�eFQ��d��f0�]���m�[e^���F�z��J�B��\0�js-Fu����[Uȏ]T�>멞	�3��Ep�\\��\"G��!�4�|hDhDhDh@hm.��|hm���]���b��\"�kvŚ�������������������h�h�h��67vlo���Y���c}f��͍��n,؀D��!(7�lFPo���Y�hv �ZP��	B #&�%JP�J\"(\"(\"�JP�A�!R��P�J�B(B���/��P�J�B�(_%�|�-҅�P��_%��|�/���P�J���|�/���P�JiB�(Z���x�,���P�JIB�(Y%$�d� ��zP�Jh ҄P�J	�!�\0=x���^��,\"�ΈL�A<�eW����Q9�e�Nvri�=T����/���܁԰��2A�9#��oZ׼s���h��a�g�[G�ۿ��B��s���\\�.�<���{���Z�-��^�{\0\r�oY���x-x�t7~Cw�\'<�|�޳����nuD���UhK-	E�,�%H	��(�HJ	A �%<J$���ЖZ�BYhJx%���ЖZ�BIhY-	e�$�%���аZB�h\\-��.�.��бZ+B�h\\-šz��h^-šx�.���нZ�BihM-	��&�mhM�	e�4�&TN�	��ЙZKBk�艢\"p�t�z�C��}}��<���l��\'��=�f�Qp@��?��wSv�X�~�W���\'��.��������g�\0������ɕQrTS57>gxL����dp���Up(�s[��/���$Uo�$�6O_�l��V�_�d��EEC\\�V���2�B�R�b�b�\"���<�1+�&��\\�$Ɏ\n���[x,|B��`�/��ЃQAA�\"�-D`D��b0 C�F\0B�0l���0�� l����6���p�B~AEQ���	��,�ݟ�a���^���.��߻���\0^�u�Ǉ��:s���~M�V�X�jի�x=�-����/w�=��C�Ƶc���z��\0�r��N~5����#���$݃TN��=x�Y	3DK��GhC�A�F��� �p�\n�B!B5BC��o������[B�x� �A��{ �!쇲�ɇ�>�8�>�>Î8�8�>8�8㏋�8�8�8�8��q�Q�q�QÎ8q�q�q�q�uq�q�Q�G�����:���:�:�8㎣�:�����������������������H�t�^;��;����u��Z_��aYP�� 0�J�>R�+|m����×l���.�xq\'�X=�IbŢ��M[=��y�2�X=��!\\�+�iv-.ƥ��T��`Z��Z=�O�sv.���ؿ;wa./�wv,���ػ�7b��ɉ�]���]��]�u�ض�qdTQE%�H\"�$����^j|�NN����ro��u%�,�,�-�2{��j�����5n�,5-�/5\'d������~k|�fk��J\Z��\\�{�ov,�Ņذ��b��́6ĽH�H��\"ꎟ���J��N���A�t��,!a�C-�D2�d��q�Q�uGQ�uGQ�uGQ�uGQ�uGQ�q�q�Q�Q�Q�q�q�Q�GQ�q�q�Q�Q�uuGuq�Gq�q�Q�Gq�uGGQ�uGQ�uGQ�uq�q�Q�q�GQ�uGQ�uGQ�uGQ�uGQ�uGQ�uGQ�uGQ��3��[=R�t�z�������K}Ӊ����׉�\0V+*���\n�a(����mcХ[�#�jv,Nؐ���XKK-KMK\rKx�`�1���$u��������w�x�{vf�\r��^���^Ӹ7x%�	���b�a�$_��1S0�0�0�0�&`���p�0�0��cF(`�`�,b�/Xǌx�`�1x<�~5�A�EEu�%C�9s�|\0e�H��K�>��<�L(ƌ\0����\'�N30I.U/�-��s��JJ�9�b+�ЄT~z������ �:�GQ�uGQ�uGQ�uGQ�uGQ�uGQ�uGQ�uGQ�uGQ�uGQ�uGQ�uGQ�uGQ�uGQ��q�uuGQ�q�GQ�uL�Q�q�uq�Q�uq�S1�GQ�uGQ�uGGQ�uGQ�uGQ�uGQ�uGuGQ�uGQ�uGQ�uGQ�uGQ�u8p�ï�N\'��z��������(�6X\"*�r�0Ta�I\\t�z񪘹����w�my�u��N�n9��Q�M\\&���Az�R�&f^[z��5)�X��)�W����.]P�$Z�zVnO�_O�78��}A�GdOρ/�έrS�+}k�9����sQ�yH�������u/&�l����=^�B6�ʳ�2�3�I�џ,�^x6�6�dyj[R��� ��C�1\" �T�T�T�T�T�T�ԏT�T�T�T�ԏԏԇT�T�T�T�ԍԁԏԏԍԍԁԏԏ���*G�G�@�@jF�F�G�G�G�G�G�G�G�F�@�@j@�@jG�F�G�@�@j@�@jD�@j@�@j@�@�D�G�B�BjGj]]�MH�HMH�H�K��ww.�����ow!u��.�N�f�>�>��>��܎Կ�����kw!�\"�.���܏ԎԈԍԃT�T�T�a���/�}K�XR&��A�\r�a�����O^<�U����U賙����R�:��E�D=M_�&��3�vf�1�C	s���3�N���-����ۯ�ۯ�ۯ��F�0`�0`���\0\0\0��\0\0~\0~0\0\0��\0������`�0Fـ����\r�d�m6��D@�Ѓl@ɢ\r��A� �m6��f!��\0A�����������\0#=~F~C?\"���z�=jI*H*-R����v���sTu>��9L��Tk�W�^xg�\n�ߑtñ坝z\n�T ���^�ReN�-9�������ڗ�����5d!ЂB�(Z%t�v�/҅�t.O �A4�i�	� $�	0$D���@H	^y>\'��y�O��g��(���4Q��2�(\"�O��ERW�\"�I�>�Y�҅Ҙyd�~�d�d�d�d�d��gN(\0\r����%�.�\0�ǆjR�B�B�N0Iq2&pz��t�f�/��P�B\r�\"jY�Yk���n�\'����ᑟ�ç��U���Wͺ/�\"�$R�*oSf�*�o�ŷ2:Osc��P�\r�����\'�<��W@�%�z�������3����96����\'�/O�3=oa�3��E�����O�e�O�e�O�g�v�/+�!=ũ�W\0?�\Z��0i.A?����Z��U8��er���P�0�1�_�Y��i��-(�M>��hˎ��/��O��\\u}��=��}�,����u�gߊiaߛ����L��L�����Ɍ���/�K���YIsV�k���8�9���&�\Z��pɬF!�.\"��(稠k��pw$�f�Ң��΢*B�KL�V�M��ç�GQ�uGQ�uGQ�uGQ�up����u3���\0]����:����:����:����O�e�O� ;R�\0G��/�q;R�%�v�0g+�~��@�E\'\Z�J����Y��_w��1@���\0Yi���a���͠����]Z8{�:p/N��:q4k�,���Y}x�����-���W����x[\'�YJ����x��5R���\n�T]Am*,�\r��7�P�-C^��6��C���o���Qe*:����G_�7�P�-E��o���ѭ�ѬѼ:��Qa*-TA�5���\r�N�T��F���Ѽj��\0 &�MBV7�~,�,4.T��ЁP�;p�u�-��ܸ;�5\Z�:�UE-��zp�t�v񺎣��:�����gǟ����uGQ�uGQ׋�x���������x������\"���\0oy����\0���E��F-U[!��%8,š\\}�W�څ�؋P�`#��o(�K=��t�o��|@aMZNL�rS.�\Z�W�\0��\Z�SO�\n>��<�Ϟ����K��H�� Ķ���h��(��@�vZ��(�\n\"J\" �z�`�J㆖j�ʼ2p҉r�bz\'Bp�u%��o��TuY�����J(O�o��Cw�������\0��\0���(���ۇ��7Q�uGS3?������_]x�����E�K���_�$G\\�3U�����!>I~�TDUȌԾ����ʿX�Y���1�͋S\"����]�?I}u�/�������\"3z����-G+�W#���ݽigCӥE�9.�F�	�����E�x��f<�z��Ԃ�� �����Yߏ������j��2{/4s8r��zjTTA#ЃH��>��7��X�j(Q#�_D���-.ľ������ʥ�Ph�A�1 �`����EQ R�\"�P�A|��0z\0G$�#�R����/^ �Ap�����/_ �A|�����-�^ �Av�%z��0b��T�-j�[��Ah��8�1�h<Nu�T�-��PX �Aj�������R�R�R�R�Skss2rN�]]�K�*ypv\"�*йZ�	nYQ:��\"��hrTۇ�x̧$�\"W����PC4�1����\\�*o\0�=i=K֧DF�9����m��8}�@��n!�n!�n��n�����anp�o~J����\0-PS0�\r/~�����⪷����UuUo�5[�[߄��p�7\r�q\r�q\r�7\r�>�`��222���`d6��!������?]x��`�?^�4��ʩ�[��9QNj����ߣ��3�#���_vBҟ�e���s;�,�+��zjL�K%�<1��H�u���}�����m-m--�\Z#D�h�ЍЇP�ЏP�P�P�ЃP�P�P�Pr��\Z�\Z�z��\Z�b�\Z�b�b�b�b��b�`��\rB\rB\rB1B1B)B1B=B1B%B1B\rB-B0F(F55=5�����\Z!�!�!� � � �zjj�7B,@��ʄ>�n�>�n�f�.�.�\Z�.�>�H�ЅZZ��:z��6Eȵ04A�B�T�Z�r�B�Cv��R7�\'{ĴP_\Z6��ɯ�^\"�����d�o���c�R�vI�+r��j\\�5�)�׈����}^QU���9��D^�^�t�+�׈��_Mx����׈��f2��(�2��(�2��(�2��(�2��(�2��(�2��(�2��(�2��(�2��(�2��(�2��(�2��(�2��(�2��(�2��(�2��(�2����(�2��(�2��(�2��(�2��(�2��(�2��(�2��(�2��.�(�2��(�2��c/������WFm\r����5<�[��]\'F	o\n���A�x�ąT�Wnp��{n(ť2ep�\0�%�q��f�}���F,g0l?�7�m��N7����љ�W\n�ذPa�\nb\0\n���*JaE��ⅲ���Yp�\\(7��QL�)L\"�LJ!�](](](](](](6�b׉i<)IB��i!�(w�����	�H&�MhM��@�HD�N\0�+͋۱|�/�����a��Ҧ�\r��u7�uK{���\'�=$�_ZV�c~���ۻ\nZ�,�9�.�������^�~���+�R����+������_ԯ��\'\n�\0��2��(�2��(�2��(�2��(�2��(�2�FQ�eFQ�eFQ�eFQ�eG�(�2��(�2��(�2�FQ�(�p��(��(�Ç8p�Ç8p�Ç8p�8p�eFQ�e2���Q�eFQ�eFQ�eFQ�eFQ�eFQ�eFQ�e��׈�L���}�gR\r�-y��R|<5�\\�C�D\r�V�c_أ�V����`�\0?�Rs�b�n�n�׻�zM��?&�%�ܶ;�\'r��X���bw���\\�p�ѷ0��m����:m7���m÷86�[�<�&@��n�v�3sIiw-���\0�r��^�ӹxw/��ܺ;�Gr�Wۓ2hO����I	#%䏂s��.�w���i8$O��Nb ��j��\\��ױs����S\n]�n�ܒԷ�������{����ɓ�tp�5����t0�Ç8p��:����:�GQ�uGQ�uGQ�uGQ�uGQ�uGQ�uGQ�uGQ�uGQ���������������\0��fg�fffffx}Dy(QWf�x�o�a�r\\V��Q�[�uÙ?Q7\Z�4UO�~T5e�V&H��Ud��s~�滑������U��9_��\0�>8�>>.8�>.rzF��n8㏃�������?���|���q�\\~��~q�q�q�q�q�q�q�q�q�q�q�q�q�q�q�q�q�q�q��p2\'��8���8�8�8�8�8�8�8�8�8�8�8�8�8�8�8�8�8�8�8�8�8�8�8�8�8�8�8�8�8�8�8�8�8�8�8�8�8�8�8��Vx��q�q�A���>#�����q�q�q��>�>#���8� ���8����\0���\0�\0\0\0\0 ���u\\,�%����`�\0=�\0���\0�����o����������\0��!�n��_M�\0x���\07�\0�?�^<~a��\n/�^8~�<~����Ǐ��^<x���������u�~�/�x�\r�u�w��������ǝg^;ǎ��G���<E���s��8x�-!Ԣr35�o����\0�_����/�� \n~~ #�;�~�\0�\0\0\0\0\0\0��&��,��*:^��Kt:��X�K��xeK��x/��a|��(:^K�a|�a|�a|�a|��i|�a|�a|�����Z_��m�|o�������m>|o�������m>|?������6�\0>	���g���l���߱���l���߱}��߱���l�|;�6�]x6w�l���_���ca~��������σg���_�q��|�6������6������K�6��`l\r��6&�؛SfmM��6��ۛSnlͩ��\0����������H�����DIDDD�^��#dl����6�V�ۉFM<H.~GA�tA�tA�t�A�t�f�t��3A�������8Y��h3C��:N��#4���3A��n�t��h7A�\r�n�t���7A�\r�n�t���7A�\r�n�t���7A�\r�n�t���7A�\r�n�t���7A�\r�n�t���m\r�n�t�n�t6��hn�t��7Ch���mFѴmF��\r�h�6��mFѴmFѴmFѴmFѴmFѴmFѴmFѴmFѴz@��dA�dA�dA�dA�dA�dA�dA�dA�dA�dA�dA�dA�dA�dA�dA�dA�dA�dA�dA�d0a�lYA�dŐ`�22� �2� �2� � �2� �2�&2� Ƀ&� � �2�2� �2� �22� �22� �2b�2�\r�q��\0,\0\0\0\0\0\0\0Qa!1A q������0P���@`p��\0\0? m2���Kȵ�ȱ�>ȳ�~şd[v,{���x�<��H�/h�~�P���]�i#���>�G	���`��S���}�J��D�	�	*��O`��~Z��r�\'�%(_����\n+���e�#�\ZD�\n(JP�Fɦ��%(A/4�IYDKP���$�PF��j+(��h��)+��ٲ�Qy/Q%B���?S�?S�?S�S�S�S�\\�E[�8h#lе�l�CL�pwׯ�QAUYI2Pس��|d�@�̴-�Bд-B���hZ�l[����a�y ���H�>2|d��jꪻ���ưK\'!Y���$��bU�J��L�j8��߿����\\�ſ3�����l�[Fuû��\0������\0\'Di\\;�o��\0�:#J�z�?�/���?��4�n��(d2��C!�C!���̆C!�a�c���\0a�tF�û��Tn;�y�K�e�\0�㯈XÖ7Gz�|�^5pj,b���Z�/w���(R�Bw�&��h��l5\Zj\'!���]{̰��w��=-3n�ׂ���L�,�9Jy�W�J��M�����\r~ܯhph�σ4�p�%�6oc	�Unb����b5M烂���0H^�������>(W�\n��\n>8W�Ǳ�r\Z��\0�W���	[�׮����5�%{4�����c^�7������.\rW����ǫ7a�x|��,�WxU3�����~�/SqW�\n��\Zr}�Uʹ�Q�f�T�ݜ�Vä����n<��Ī�ɞ*�����9F)	ʧ<?\'Di\\/�?���������fxfgR^9ԖK%���K�,�VK%��u%ԖK%ԗR]Id�j%��ML��u%Ւ�ML��u&�K�5�K�.��Y.����K%��K�%ՓS%ԖK%ՓQ.����K�.��:���u%ԗR]L�K%ԗS:��K�,�K%����fK%���u�]Id������fu3���3���\ZW���\0��Di\\;�o��u������Ҹw|�P��!)|�L�yH��!ݚ�pR�+@_&kB�	-�e�ҧF4V�6I\'��\n^z��c F2�J9��n&C,k��4Ӈ�\0��>�ҸV�|R�+w(<H��.�]*�ncIo��7�:V1��M���r��5��%K6��W�w�P�Ԅ��t�ʣ�c���I�մd��U�\0ã��4����	�y��\\ؚ�v��-�!<���U�\'���ߗx�-5<ii��m~k�m�*���M5>��f�\'>�f��65�I-��M����5fybLUҷ��Ǘ�By����uU���8���!�Z�p��	T\n�H��ʇn\Z�4�we»�#��o��!�a��3A�4�絖�����/��cC�i5����Z/���1`^��U�qQ̮�$Ul�􈈄D��|V>+��ǀv��\0:�%��=�E����Ey�-!�22r��7��\ZW\n�.����+�zW�,87���<��saX���FY�2�.\"�&�Tb��R.\"jE�]D�MBm.\"kP��ԉ�s�l:�=���:�XE�P:���x���E��9�E�,\"�,\"�,H��\"�+!aa�a�PK`ZE�`YńX�����Qdr�l��,��\"�%aA!+Kj��(�oH��E(J����V\";��\"�n��rH�\0�p�DZE�P\"�E�XE��H���:������&�tq�tF�¾�hzJ�f�\"Qhw��~`8{�td����S��ծl)V�\"�R[�r���\0<�y�6�c;��w�*]�b`߽�H��Ƶ\r�b��üwÅɘ4^��3Y���\n�W��8peׯYqǇ=�ǹ��XmG={@�\"4N3�0�����ķn=�l�1d�lE/dE\"=�0C� ��=�ĲC��D=��=��=��=�E�7D�4���2鋠�i{8��g�V�׶v�ۂS��^�ˬ	�cX�퍢u�6ë\r�^�>d{\'h9]qo�.ߍ�V%��s�[�i>�����χ��+�|�����\0\\�S�1$�$�4�5�\r�ɥ6\Z+�\r�en��}Z}�c椨����\0���\0F_��:#J�_�		dCͷ����:k�f�=`���\0珳<W�\'�?�H���\0��\ZW\n�/�\0���̿��tF���/�\0/�ٗ�>J�ҸRϙē!ѐ��d2�2��C!ІC!��d:2�C!ІC�!ЇB2��fd:32�0̆fgL3!���̇�33�#��aA<3�\0$cGdq�C32C��� ���C��*#J�\\Y�9Q|��|�޹࣬���QK�>^<�:�Y���/�a�:��e�y����6�	��|ؿx�~�3�Lb_-�E���\'���벁j�,�Ǎh�k\\yDF�h��	��6=�ư(V�h��+�=\n��U��*�1P���\"��E=�*<����j*;w��e؉�.M=�(,�q�yv�9(�2��\"�L��9�B��r�1�܅݌{!W�0�^�!=3���_�¯�aW�0��#����¯��\"�#63\n=	9�\"Z��rB̓H�\"�\n>M:\Z�\Z!4n�$�(���hd�(|�>��\r\Z��\Z��\"@#G���kCZPH�#�/�![tB��-���-��g\'/���,^�MC�R`�r-�V�K�䨍+�k��\0���������g�/��4��;�k��_�>����tF�µ��\0���\0��:#J�Z��g��k	�Di\\+^�j�\0��뿡�tF�µ�qf�!ѐ�C���B�E�FC�!���C��C!��cN�:�t3!��d32t!��C!��td:C!ІfC!�Ɲ�d32�fffffC3!�C �a�C3:fA2xC!��C3!��d2�C!��d2�C!��d32��C!��d2�C �C �C!��d2d2��Bt%BT,A*\r8~*�ҸV��%���_$�\Z8#Kl�c:�1�V$�0a��gڎ��xT�;��\\��Yu^��F�x_�1q����3���M��z��;�����P|�-��7H:�7T<п{�&}�u�`~�PS�N����Yy����\0X��T4h���\\;�e�{�l~�v�p,�B��bt�<�j�Eڑ�X3�-�\\({��sB�[ǛG\Z�#kӖ��ϢMr����_�0��B�%����\rh_�\\Y�,��F��S��e����~�/���;�J����}���r�5�����lO��L�O�lK�1�{��\Z�GY����W��9����[R�&���~�I\Zw�T�f�\0����������Io܅����o��a�lK��~�>}��_��u��~����|�QnT��8~.�ҸW��G�~����_�����\0eCX|]�p��ݟ���q�W�>.���\0�/���p�߶�����4���\r�C���B�IЇB��Bt\"�C���FC�!ІC�!ѐ��t!ЇB(!ЇFC�!ѐ��td�P�*C!ѐ��t!ЇB�2t!��C��:2d:2t!��d2t!ѐ�C!ђ���C�!ЇBT%FJ�:�C!ІE�B��B�:�C�\"��P�td2(d2d2t!ІC��C!ІC!ѐ��d:�t%B�C�!��t!ЇB���a�����Xe�(,���`y8|?\'Dh���L�h���@��^��K�����A�<�����ٌ��	APG%��í��K��6ß����hb�o.4�Dɟ�����o����f΃���y^�,�!w��xp~�\r�>�_:��� ��������>4#_� pf�B:�AJYt�f\Zg�>\0<0G�3�A�̿��g�D���t��\rV.�k�r24г�)�������b���?l�=�xmz��+����t����z\n�rg�&�̮��B�7�X8�c�Î+�I��0~��xR�x-	��B�i�n��D�<�hd{��(1�0�<4˗�F��i2�0��b��ߢ헬�\Zfvj���@����Su������^H�R�IsD��p���p���\0���稍+�6�?�U�2�\0����+�o����8B�\0���z#Oы~|jI�G-\Z�����/�HV���t��x�K�	:�89���:~6E,�7�4%2�H6Іm��$>�\'�J�ė�3	�Ғގ��ٗ ԣ&ј�d�i\'G�3GO������ҍAoĳp�$Q^M���I��D��r�IdV�����E ���[�}�Nfmo�.���H��Lv��	�\0veX ����&�Rr���\0_���\Z8�x�Pt%��d\Z��4��)�&���Xg��4�i��i�ҹ;pk*��%�;�|ƃ8Z���l�E6���:�������lk�Ӿ�zQ���̪U�b�E���a&Ӳ�AT8pb�*��b���T�Q+\"��HZ.T����>1�r�ݎ�j|<��������n��n7�-����J�wA�Ҫ]nv�n?�-��-���@[��[��+{����z\n�wA[ݱJY�Eo?����_:\n�>ت�A[ݩ[��[��+{�+y�ov�ov%o����Ԫ�I[��U.��;��\0�;P��1s|�nv�V:�w@[��\n��V�\0f�������B�wI^�\n����K_�-��xPU���{-��+w����lW�����A{\"*�J�\n�*�5X*�wQ[��EWEn~3u\Z�[Ȫ��k���e/{%�\'���w�������z���T�����hvf�\0���W���e[kD<?;D&����xA�S����*9X(�nSSi�����^1�\rM��-���e��/69�Ziu�H�L�M\Z��X���S���̶���Lc/p�3/!	ub����E�uE�uE�d�\"�.��,��U��\"�/\"�6�8��u�d]E�]E�*���Uȸ�M�h^E�}��E�_F�y@��Vԃr�/��T�_���]��i�V]��&[��=����,�\\�w2��]��˥�?6d�_2��I�ϑ��rd�4�d�{��r6B�v>�oَ����&�$˻/�ͧq�|M�K�����C�_�b\r�)�[G��͚I��Ii�<?/E½\n��*1�M)J�(r}�\Z��aǩ=����:�n!Z�:���}��J��K�W8UlGL���kc��\0(�䒢�l@=��m8\'(Q=�T�=�b��M$�R�ʰc�Ѫk3;SY��2U1YY$͋0Li�+����L�Ipd�Q��:�ǻQQ�U�h��H��r�X�(��|���3��\n�զ�V\0[PW#[9	�pD<��Bo%\"�3qfKu��{)�f�:�9�5�C:eЛV�#7,婝?���gH���Y��FmP�F���ȍ�L��\r��v�C\"9zg��������6|�M|��=���7��\0`��^�޾Wb����g��S��-�!���7zA��~W%���r_A��o�_�)��/���%�_A��~J侃w����t��A���~K�:$�=�װz\r7��\Z}�I�4��}��Y�=/@xw��O$�M$J�r#��\'�`r����o�?/Eý\n�_��QOQ�G����T�D7���m��A�I�OSvL��Ӽ\0x��6*�;5Vi�ݧ6���o>�\0l��x#��(4p=\n��7��KY</���\0>�_���5N�+�\0��W�\'	��!A���+������ۗ��^�YNW�\'B(!Њ��t\"�T\"�t!ЇB(d:�C���C�!ЇB(d:2(!ЇB7\"�\"�t\"�tdPJ�PC�*�X,*�a�**,�*�:!Ё��$H��`F �X H�C$H�Bd2��E�0!��d<	P�H�	!��@�B(�t	8�	$H���b.	&O���ޅx��9<������e��bP��m�t�\0�7�,6��1[�v��\n�z`�?@�u�z҉���`��~<�O�g��g���:ae|92#1�4��;���ݭ^۰�X��\r3C\r�c[�^!t�p�~�w�U�����$^H�� � ��\"�|b[���ɷ��>��}�dм�	�M�:�y������[�������҉���y<�|�Ӆ�G��R��\ZVMM[\\�a����\0��\Zw���h��ҵ��gX3�{����RɢjZ�{\rX�jYtԴ�Ж��:�.��~�');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger insert_ord
before insert
on orders for each row
begin
declare newid int default 0;

     select order_id
     from orders
     order by order_id desc
     limit 1  into newid ;
    
     if new.order_id is null then
     set new.order_id=newid+1;
      end if;
	
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `final`.`orders_BEFORE_UPDATE` BEFORE UPDATE ON `orders` FOR EACH ROW
BEGIN
      declare prices int;
       declare total int;
       declare sump int;
       declare c_id int;
       declare ship_p int;
       
if new.ship_type = '1' then
   set new.ship_type = "Register";
else
    set new.ship_type = "EMS";
end if;
 set ship_p = ship_price(new.ship_type);
 select old.total_price into sump
 from orders
 where order_id=order_id();
 set total = ship_p+sump;
 if new.total_price is null then
set new.total_price= total;
end if;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `p_id` int(11) NOT NULL,
  `p_name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `p_price` int(11) DEFAULT NULL,
  `instock` int(11) DEFAULT NULL,
  `seller_id` int(11) DEFAULT NULL,
  `cate_id` int(11) DEFAULT NULL,
  `sup_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`p_id`),
  KEY `seller_id` (`seller_id`),
  KEY `sup_id` (`sup_id`),
  KEY `cate_id` (`cate_id`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`seller_id`) REFERENCES `seller` (`seller_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `product_ibfk_2` FOREIGN KEY (`sup_id`) REFERENCES `supplier` (`sup_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `product_ibfk_3` FOREIGN KEY (`cate_id`) REFERENCES `categories` (`cate_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'cpu intel',1200,100,213,6,7),(2,'cpu amd',1000,98,213,6,8),(3,'vga nvidia',2100,1,213,6,11),(4,'vga amd',2010,100,213,6,8),(5,'mouse',200,100,212,6,6),(6,'keyboard',300,100,212,6,6),(7,'CSGO',169,1,214,1,1),(8,'witcher',369,1,214,2,2),(9,'gear war',1699,1,214,5,4),(10,'The Sim',399,1,213,4,2),(11,'ram 8 Gb',499,14,213,6,7),(12,'ram 4 Gb',299,12,213,6,7),(13,'HDD 500 Gb',1200,6,213,6,10),(14,'HDD 1 Tb',2000,3,213,6,10),(15,'SSD 250 Gb',1399,8,213,6,9),(16,'SSD 500 Gb',2599,3,213,6,9),(17,'mainboard',699,8,213,6,7),(18,'PubG',399,1,214,4,1),(19,'Headphone',199,20,212,6,7),(20,'Final Fantasy',1399,1,214,2,4),(21,'Animal Crossing',1499,1,214,4,3),(22,'Zuma',145,1,214,5,1),(23,'LA noire',299,1,214,4,2),(24,'flash Drive',199,21,212,6,6),(25,'DOOM',1199,1,214,1,1),(26,'GTA',1399,1,214,4,1),(27,'Monster Hunt',1299,1,214,5,1),(28,'Red&Yuri',399,1,214,3,5),(29,'case computer',499,98,212,6,6),(30,'Pokemon',179,1,214,5,4);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger insert_pro
before insert
on product for each row
begin
declare newid int default 0;

     select p_id
     from product
     order by p_id desc
     limit 1  into newid ;
    
     if new.p_id is null then
     set new.p_id=newid+1;
      end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `seller`
--

DROP TABLE IF EXISTS `seller`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seller` (
  `seller_id` int(11) NOT NULL,
  `seller_name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seller_address` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seller_phone` int(11) DEFAULT NULL,
  PRIMARY KEY (`seller_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seller`
--

LOCK TABLES `seller` WRITE;
/*!40000 ALTER TABLE `seller` DISABLE KEYS */;
INSERT INTO `seller` VALUES (212,'khon','2312',12512),(213,'sad','3123',5131),(214,'dwe','421',5332);
/*!40000 ALTER TABLE `seller` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger insert_
before insert
on seller for each row
begin
declare newid int default 0;

     select seller_id
     from seller
     order by seller_id desc
     limit 1  into newid ;
    
     if new.seller_id is null then
     set new.seller_id=newid+1;
      end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `shipping`
--

DROP TABLE IF EXISTS `shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shipping` (
  `ship_id` int(11) NOT NULL,
  `ship_name` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ship_phone` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ship_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipping`
--

LOCK TABLES `shipping` WRITE;
/*!40000 ALTER TABLE `shipping` DISABLE KEYS */;
INSERT INTO `shipping` VALUES (1,'flash','4234'),(2,'kerry','4566'),(3,'PTH','9876'),(4,'J&T','5643'),(5,'Fedex','1984');
/*!40000 ALTER TABLE `shipping` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger insert_shp
before insert
on shipping for each row
begin
declare newid int default 0;

     select ship_id
     from shipping
     order by ship_id desc
     limit 1  into newid ;
    
     if new.ship_id is null then
     set new.ship_id=newid+1;
      end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `supplier` (
  `sup_id` int(11) NOT NULL,
  `sup_name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sup_address` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sup_phone` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`sup_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES (1,'ROLA Games','California, United States','2147483647'),(2,'Giant Realm','Georgia, United States','2147483647'),(3,'Gametraders','Tokyo,Japan','426328510'),(4,'Level Up','Seoul,korea','23123456'),(5,'AlphaStreet','Tokyo,Japan','447849980'),(6,'EliteWaves','Newyork city, United States','2147483647'),(7,'Intel Corp.','California, United States','3212412'),(8,'AMD Crop.','California, United States','2132412'),(9,'Seagate','California, United States','512312'),(10,'Western Digital','California, United States','1521321'),(11,'Nvidia Crop.','California, United States','512321');
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger insert_sup
before insert
on supplier for each row
begin
declare newid int default 0;

     select sup_id
     from supplier
     order by sup_id desc
     limit 1  into newid ;
    
     if new.sup_id is null then
     set new.sup_id=newid+1;
      end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `tran`
--

DROP TABLE IF EXISTS `tran`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tran` (
  `number` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `p_name` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) DEFAULT NULL,
  PRIMARY KEY (`number`,`p_id`),
  KEY `tran_ibfk_2_idx` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tran`
--

LOCK TABLES `tran` WRITE;
/*!40000 ALTER TABLE `tran` DISABLE KEYS */;
/*!40000 ALTER TABLE `tran` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `final`.`tran_BEFORE_INSERT` BEFORE INSERT ON `tran` FOR EACH ROW
BEGIN
 declare num int default 0;
 declare p int default 0;
 declare pdname varchar(45);
     select product.p_name into pdname
     from product
     where product.p_id=new.p_id;
      
        if new.number is null then
             select number into num
			  from tran
             order by number desc
	         limit 1;
	         set new.number = num+1;
          end if;
     if new.price is null then
          select p_price into p
          from product
		  where new.p_id=p_id;
		  set new.price=p;
     end if;
     if new.p_name is null then
        set new.p_name = pdname;
     end if;
     
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `final`.`tran_BEFORE_DELETE` BEFORE DELETE ON `tran` FOR EACH ROW
BEGIN
        call beforedeletetran(old.number,@numb);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Dumping events for database 'final'
--

--
-- Dumping routines for database 'final'
--
/*!50003 DROP FUNCTION IF EXISTS `checkrepeatorder` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `checkrepeatorder`(pid int
) RETURNS varchar(6) CHARSET utf8 COLLATE utf8_bin
    DETERMINISTIC
begin
	declare pid2 int default 0;
    declare check_ varchar(6) ;
    select count(p_id) into pid2 from tran
    where p_id = pid;
    set check_ = "yes";
    if pid2 >0 then
     set check_ = "no";
	end if;
    return check_;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `countorder` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `countorder`() RETURNS int(11)
BEGIN
declare num int default 0;
select count(*) into num
from tran;
return num;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `c_id` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `c_id`() RETURNS int(11)
BEGIN
declare newid int default 0;

     select c_id
     from customer
     order by c_id desc
     limit 1  into newid ;
return newid;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `findsdn` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `findsdn`(name varchar(10)
) RETURNS int(11)
begin 
    declare id int;
    select ship_id into id
    from shipping
    where ship_name=name;
    return id;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `order_id` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `order_id`() RETURNS int(11)
    DETERMINISTIC
begin 
 declare ord_id int default 0;
	 select order_id into ord_id
     from orders
     order by order_id desc
     limit 1 ;
     return ord_id;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `ship_price` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `ship_price`(type varchar(10)
) RETURNS int(11)
begin 
    declare price int;
    if type ='EMS' then
       set  price =50;
	else 
       set price =30;
	end if;
    return price;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `Spoint` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `Spoint`(st int
) RETURNS int(11)
    DETERMINISTIC
begin
    declare so int default 0;
    select sort into so
    from get_order
    where order_id = st
    order by sort
    limit 1;
    return so;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `sum_price` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `sum_price`() RETURNS int(11)
BEGIN
declare count int ;
declare sum,money,price,quan int default 0 ;
select count(*) into count
from tran;

checkm : loop
if count=0 then
   leave checkm;
end if;
select tran.price into price
from tran
where number =count;
select quantity into quan
from tran
where number=count;
set money = quan*price;
set sum = sum+money;
set count=count-1;
end loop;
return sum;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `beforedeletetran` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `beforedeletetran`(
in n int,
out numb int
)
BEGIN
set numb = n;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `checkstock` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `checkstock`(
in pid int,
out num int)
begin 
     select instock into num
     from product
     where p_id = pid;
     
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `checkup` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `checkup`(
in n varchar(45),
in  q int,
out check_ varchar(45)
)
BEGIN
 declare sta_tus boolean default false;
 declare ch1 int default 0;
 declare ch2 int default 0;
 declare stock int default 0;
 declare intran int default 0;
 declare sum int  default 0;
 declare canup int default 0;

 select cate_id into ch1
   from product
   where n=p_name;
     select cate_id into ch2
      from categories
      where cate_name = "Hardware";
      select instock into stock
      from product 
      where p_name = n;
      select quantity into intran
      from tran
      where p_name = n;
      set sum=intran+q;
      set canup = stock-q;
      
    
 start transaction;
          
    begin
 
      UPDATE `final`.`tran`
      SET  `quantity`= q
      WHERE `p_name` = n;
     
         if ch1 <> ch2 then
          set sta_tus = true;
          end if;
          if canup < 0 then
          set sta_tus = true;
          set check_ = "stock not enough";
          end if;
      
      

  end;
 if sta_tus = true then
	rollback;
 else
     commit;
   end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `decrease_stock` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `decrease_stock`(product_id INT,
    quantity INT)
BEGIN
DECLARE net_instock INT;
        DECLARE inst INT;
        select instock into inst from product where product_id = p_id ;
        IF inst = 1 then 
			SET net_instock = 1;
		ElSE
			SET net_instock = inst- quantity;
			UPDATE product 
			SET instock = net_instock
			WHERE product_id = p_id;
		END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `forrenum` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `forrenum`()
BEGIN

	if countorder() > 0 then
       call renumber();
	end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `historyorder` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `historyorder`(
in f_name varchar(45),
in s_name varchar(45),
in email varchar(45),
in phone varchar(45),
out message varchar(45) )
BEGIN
    declare errorstatus boolean default false;
    declare f,s,e,a varchar(45);
 
     start transaction;
     begin
          declare exit handler for not found set errorstatus = TRUE;
          select fname into f from customer where fname = f_name group by f_name;
          select sname into s from customer where sname = s_name group by s_name;
          select c_email into e from customer where c_email= email group by c_email;
          select c_phone into a from customer where c_phone = phone group by c_phone;
      end;

    if errorStatus = true then
       set message =" Not found ";
    else
        SELECT 
          order_id,
        p_name as product,
        quantity,
          price,
          date
     from all_purchases2
     where f_name = Firstname;

      set message ="found";
    end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `renumber` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `renumber`(
	 
    )
begin
DECLARE x INT;
declare y int;
declare i int;
declare count INT;
select @numb into x;
set i=0;
	select count(*) into count from tran;
loop_label: Loop
	IF i > count then
    leave loop_label;
    END IF;
    set y=x+1;
    update tran
    set number = x
    where number = y;
    set x=x+1;
    set i=i+1;
    
	END LOOP;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `restock` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `restock`(
ord int,
c_ord int
 )
BEGIN
 declare  quan int default 0;
   declare  id int default 0;
   declare s int default 0;
   declare i int default 1;
   set s = Spoint(ord);
   
   restock:loop
       if i > c_ord then
         leave restock;
	   end if;
       select p_id into id
       from get_order
       where sort = s;
	   select quantity into quan
       from get_order
       where sort = s;
       call decrease_stock(id,quan);
       set s=s+1;
       set i=i+1;
   end loop;
   
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sell_deal` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sell_deal`(
in ship_id int,
in ship_type varchar(10)
)
BEGIN
declare ship_p int;

declare prices int;
declare total int;
declare sump int;
declare c_id int;
set c_id=c_id();
set ship_p = ship_price(ship_type);

select total_price into prices
from  orders
where order_id=order_id();
set sump=ship_price(ship_type);
set total = prices+sump;
update orders
set order_date = current_date(),
    orders.ship_id = ship_id,
    ship_date = curdate()+interval 1 day,
    orders.ship_type = ship_type,
    total_price = total
where order_id=order_id();
-- insert into orders values(null,c_id,current_date(),ship_id,curdate()+interval 1 day,ship_type,payment_type,total);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `tranorder` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `tranorder`()
BEGIN
   declare count,pid,oid,quan,pr,i int default 0;
select count(*) into count from tran;
set i=0;
ins:loop
    if i = count then
      leave ins;
	end if;
    select p_id into pid from tran where number = i+1;
    select order_id into oid from tran where number = i+1;
    select quantity into quan from tran where number = i+1;
    select price into pr from tran where number = i+1;
    insert into get_order values(null,pid,oid,quan,pr);
    set i=i+1;
end loop;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `all_purchases2`
--

/*!50001 DROP TABLE IF EXISTS `all_purchases2`*/;
/*!50001 DROP VIEW IF EXISTS `all_purchases2`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `all_purchases2` AS select `c`.`c_id` AS `c_id`,`c`.`fname` AS `Firstname`,`c`.`sname` AS `Surname`,`o`.`order_id` AS `order_id`,`g`.`p_id` AS `p_id`,`p`.`p_name` AS `p_name`,`g`.`quantity` AS `quantity`,`g`.`price` AS `price`,`o`.`order_date` AS `date`,`c`.`c_phone` AS `phone`,`c`.`c_email` AS `email` from (((`orders` `o` join `customer` `c`) join `get_order` `g`) join `product` `p`) where `c`.`c_id` = `o`.`c_id` and `o`.`order_id` = `g`.`order_id` and `g`.`p_id` = `p`.`p_id` */;
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

-- Dump completed on 2020-06-03 19:58:25
