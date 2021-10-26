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
INSERT INTO `orders` VALUES (1,1,'2020-06-02',2,'2020-06-03','EMS',2549,NULL),(2,2,NULL,NULL,NULL,'EMS',1499,NULL),(3,3,'2020-06-02',1,'2020-06-03','Register',NULL,NULL),(4,4,'2020-06-02',2,'2020-06-03','Register',2529,NULL),(5,5,'2020-06-03',4,'2020-06-04','EMS',7947,NULL),(6,6,'2020-06-03',2,'2020-06-04','EMS',2319,'ÿØÿà\0JFIF\0\0\0\0\0\0ÿÛ\0„\0		\n\n	\n\n\r \Z+!$2\"3*7%\"0\n\r\r\r\"	\"\r#ÿÂ\0ÜV\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0ÿÚ\0\0\0\0\0ýÇ@:\n@(JŠR¥Ö7Jlü€I‘@>Ol| (–P*\n\0\0\0`--\0P(e\n@ QA@\0(\0\0\0\0\0‚Ÿ@œr¡e(\0(€ª\nÊBP(*( \0 øºšp\0\n\n\0±@«)@((\n‚€ \0\0PocŽ\0\n€P\nP \n\0€\0\0\0\0\0€€„ÞÇ ‚Å\n€\nPP(\0,(\0\nT¤°T\0#ÃÛØä€\0P…\0¡B€\0(\"€\0\0\0@@x;{‚Ëõÿ\0((\n\n4\0.‚ \\ÒmQEBÙ@ÔV€)T\0ˆ,±ÁÖöCÁÛÙ9@*(P\n\0 RÂ€¢E\nŠ\0XP\0 ¤°\0@\'ƒ·±ÉRP@\n\n\n\0P P \0P\0 A( €oc“@\n‚…\0P ²‚Â€ \n\0\0•°(±àílr”>Šu=î¿Ô|{ñó|Ÿm€\n\0QA@J@\0\0\0\0B€B)ðv¶9J/å¹ú_Ø{_\'§òï²yKü÷êßÓ9¥\n\0*‚€\n\0\n\0\0(…T!e þÖÇ*©ç?éŸªwûWÞ—¦ü<OÐ~“Šª\Z*­Vš]*´iU­(º \0€ \0\02Ì™˜w=èçö¶9jÆ;Ÿ¥Ÿ‡}§ïßÊ¿×?ù‘< \nAAB”*¨\nÒšÑhªÚ¥ªYV,©(e‰ß¾égc—A¿æß»Çã_¿ÿ\04ÿ\0W|kÂ„@$ ˆd€\0h(  Q ª%PERBZÓ­êþÎÇ0+äþZþŽéWùï?®þ† P(,(\n‚À\0 \0\nJ”!\0 9ýŽeçø>FP\0\n–P(d ¥EE€Žgc™l(€\0TR@©@P(\0P(¡@E\0\0•,$,… îÎÇ3D (\0‚€P(\0,P*P\"Å\0( \0’T…9ÝŽmQP \0\0(”\n\n\n”\0RËH \0\0\0@ÂTAÏìlst_R‚‘¤´( ((QB…\n\Z\nªK¤SXRQ\0,u½$çö69Ô\0,P\0e\n@(\0E\0\0\0\0\0!s»ê\0²€TP\n\0(E\0UJ%J\0¤\0\0\0\0@%9ÝŽu\0P\0(\0(…%P\0²ÅP\0\0\0\0,¤Îìls´\0*(\0 \0 \n\n€¤©BÊ‹\n\0\0\0\0\0¨E‚9ýŽ}\0(\0(@\n\nÅ”\0P\0\0\0\0\03QþÆÇ?P¥€\0T ,(€ ¥€@\0\0\0\0\0$„çö69ú?„¤)(€ÐšU!¤7A±l›HÝ`Ø.š‰\Z¼¬¸\'ËŒŒˆTGSçîÆÇ‚€Å\0±@\0(”\0\n”\0\0\0aQ\0\0…D Hçõö<B€\0\0 Y@QBP° \0Yb…K\n	R€%ˆ\0œî¾Ç„\n„ \0@ (\n\0\0 PP\0% \0\"ÁNw_cÂQ*Ê\0\0\0\n\nA@€	@”\0\0\0„¨ˆ)Íëìxh\0\0\0\0U*\nD @\0\0\0\0\0,+›×ØñX\0\0\0\n QBU\0(@\0\0\0\0\0€\03Íëìx¨r|% \r$h\Z&³>AP´ªgäÈÕFŠ¢( (P–7’5L5rµ\"h2daØù‡;¯±ã\0\0\0€P\0U\0,P(\0\0\0\0\0\0°@°%æõö<T\0\0P”\0 %,X ( \0\0\0\0\0\0\0\0 Îëìx¨\0\nJ\0P%\n…\nJ(\0\0\0\0\0\0\0” € o_dñÐkè~/Ðy{ì}É÷ÿ\07áûXEe\0PP”XP\n \0\0\0\0\0\0\0@ÎëlžBÃñ¾OÜÿ\0DüÓßáú{Ë÷ß§rÿ\0\0€,P \n‚‚”\0\0\0\0\0\0\0\0B\09½}>Oäÿ\0Ù<_§}oì_Eú\'Ùy?¨¼nú*¤P QJP@\n \n\0€¡A(C\0†&S8ÎÇêzÞÍ0|ŸÉß³}S×ûCê_Šû¾óú¿ã¸[jÊ\0¡e(µUK$¥im*©jªUZQjÚ¶4š£)$ÒÎHˆÔÞ¨þXsûã¡¯æ/ÞxGýê~÷ßº,ÿ\0[|uÉ\n Ò©VÐZjTª«V¬”(P`\n,ÐJ«súôxè>Ÿø“÷¯±¾©økôÏÔ€\0\0¡@€ \0\0Å\0\0\0\0\0$\0G7¯±ã |Ž›¿”\0AD( (\0\0€(\0\0\0Q\0\';±GP„¤ ”(‚€,ªJ\0	@Š\0\0…€\0YR\09Ým%\0B’¥\0„ \nP\0\n\0\0\n \0\0E\"\0s{žZ\0\0€\n\0¨Q@\0(\0\0YP\0\0€¢‘DØÊ‘â (†‘T\0h(PÚ€EZ…\0 U\n’¨\0 	Fq¼™¹G?®J\0\0P\0\0\0R€\0RÊŠ”\0”X)\0\0\0@çõ6O0\0P …JE…\0\n°°,\0©`\0\0\0XÏë‡’€©@%\0M!@€¥\0‚’À\0\0\n”J€\0\09ýpòŠK\0	@P ¥\0‚\0À\0€\0\0\0„î®Ç’¨\0\0P\0e\0@\0©J \0\0(P€	`\0\0CÁÓÙ<ÔË\0\0©RÁ@P(\0\0 \0\0BÀ\0\0\0\0Âþ¦Éæ¡ÊðÅ@\n\ZÈ­’š\nP\n©jAaB*EZ„J	4D\0ÐDÜ#×¤óP\n\0” HPU\0‚À\0 T°\0\0E€\0\0%‡;©²y¨ \0K(\0e\0¥\0\0RË\0\0,T,QPP€\0(æõtO9@¢‰@\0XP\n\0*Z•\0\0Y`,XÀ¤\0K*\0\0\0žž‰ç ’€\0Á@ \0¢„\0,(%Š€!ADX	A\0\0\0çtö<Ê\0Š\0\0(”\0P)\0¡\0D\n \0@\0)Íêlžz€\0\0”\0¢€\0\0\0\0\0\0\0 \0ÖA‘<=Î£™áE!@*j-B¨¢\rÄ¥E(.6\0P Rìþ¦‰ç(Š\0\0²‚(E\0\n”°,\nŠ*,*€\0\0\0CŸÓØó(\0\0,X°²€ B E€D°¤\n,¢`T\0\0;©¡æ \0\0¨¨(\0¥\0\n€*\n…\"Ë\0\0(€\0\0\0çôô<à_Î¸?¦¹l}/ÓßúÇ;ôi*\0 E\0€*(Í)*T %@\0T,X\0\0ŸÓÑ>\0?+ú¿ê½Ï®ýWõ~oòÏë?¢þWõïé,‚*\0P(@¤•	TAQH\0²À\0\0\0\0wSDøž:ÿ\0êž×Sð§£õ‹í˜ù†\nk&J\0\r\0R‚Mb‹\r°CjPctŒ´Â.H°B2Lbe³‡;©¢|\0¿Îßõþcý>‘ôÏŸÅûnçÉü©ÊY iVÊÒ•[iºÒÙZX³F•T«¥VÐºjh-†„.YÜˆ”V²hF‡7©²|Ÿˆ}ì_‹ÿ\0IÏ ýGë>_é/T»KeJš,\0(—6¡@\0(AeÀ\0\0\0\0\0‡?¥²|Ã¼¿³ýŒ}Áú8\0\0\0–\0„YbÀ\0PˆT,,,\0\0çô¶O‚ˆ[•\0\0\0P\0(Te@ (@²„\0Q\n@,\0\0çôôO€X, \0\0\0¢€ÊX…J\0\0T K\0\" R\0\0çô¶O€\0\0\0J\0Ê\0Š\0\0XKA)*@\0Kdø\ZÐ\0\0\0€¥Š–P\0\0\0\0\0%P¬…BÊIHºKcÎ°çóT \0 P-­EªŠ¤R€\n\0n Ñ\0šk4\\€i\0*¡+¨Î®Éð(\0\0\0\0¢€\0P\0P\0\0ˆ¤\0*(\"„°\0îžÇž€\0\0\0(Y@\0¥–b€\0\0	@EX(%%€\0KcÏI@\0\0)°(\0¢ˆ\0T \0\0”Š@\0X )@\0sº{\0\0\0\0\n”\0\n(H((T¨\0ˆ\0\0\0;§±ç \0\0@”\0H,XR(J*(¤\0¨°\0\0\0›ÔØø´ \0\0\0\0%E‚„Š`\"„Z‚\rBhÍIA\0&u*FteéoWCà?œ\0 (B´\nÐŠÒÕ³ZÐ…\n–\0°\0€\0U”{ƒÓØø€\0\0*P\0*Š\0J*)¤,P€@\0\0\09Ý=€\0\0EŠ€\nT\"€X°”…@ \0\0\0ŸÒØø\0\0\0  J%\0\0T²€Q`H\n@…€\0\0\0<€\0\0\nŠ IT€X %•,€\0\0(€–\0\0\0\09ý=€\0\0P \0\0T‚\Z……%\0T°‹,¤²À\0\0\09Ý=€‚!	@@:Qj2…Ô$Q\0B\0@JRt¹½j<ô<<ú(U ª¢”ª¢i@µ@ Í)J¹i‘k:D\r²Š¤E\0ùÒ¹½j>P\0…‚(\0,²Ê  €,\0,YD*\0\0\0\0g[Cà\0\0…\0E\0\0U–\0¨YB\n@\0 \0•\0\0\0\0\0æuv>\0\rd[•!ERÅŠ\0@,¤…”€P¡*\0\0\0\0\0æuèø\0ŸŽ}cö.¿Ñ?Oügêÿ\0«}ÏòO\'í™\"¨\0\"€\0° ¡P)\0\0X\0\0\0\0	ÍëÑðùg÷/‡‘ùÏÛ0ýóùWú¯ñ/ô ,\0@¤¨ \0P%€*X\0\0\0\0\0JÉÞ½\0/á¼7éÿ\0ø¾…õßÚÿ\0“ÿ\0ª>)ìüo€Œ¡  ªh£ª¥@e‰h’E@ª#ú$®g^€Ã¾áöÿ\0æêÌ~qÀý§ù;ú¯kø¯×Ÿ#Jµ@U\ZP4«Vª‹iª¤ˆÑ QCJP R\"\0! \0ý®Žg^€Ì¾«÷ïÈÿ\0¥óõŸÄ?nþþ©ÉJ”*\0€\n%\0¡(\"À\0\0‹,\0\0\0\0\0Î½zæ¯Ôzkô/«~‘Ý\nQ\n”\0\0)eJJ‹\n\0‚Â*\0\0\0\0²‚szô|\0\0\0)D¡\0B„Q€@%E%…€\0\0\0\0	RÊ‡7¯Gž€\0\0((\0\0¢…	D±@€€T\0\0\0\0\0©AçuèóÐ\0\0X(€\0¢…\0\"„\0‹P\0\0\0\0\0”!ÎëÑç¡ðyP‘’H@BJ\"”)mÉeªD×Ç­FBˆLíS6†u\0Ö-dÖ\Z Ê†ñ¬š$YÞw^=‡áª«mš«hª(P\0X€T\n,²¢P*!PÀ\0\0PCÍìQð\0\0\0–P)\0‘@‹\n€\0\0\0\0\0\0Às{yè\0\0@	@\0€\0\0\0\0\0¨ \0çuèóÐ(\0e€\0\n‚   \0\0\0\0\0(% ÎëÑç P\0Â…\"€\0‚Áa`\0\0\0\0\0\0*\0›Ø£Ï@\0\0\0e\0\0\0T\0\0\0\0\0\0”€\0	ÎìQç¡äç@C!\n!( \n V²-))a\n¡š¡HÉ¼—0(€ ×|Žwb=(”\0\0(YXAb’¢À\0\0\0%\0\0\0\0Â/;¯Gž€\0\0\0e*Tš\0\0\0\0\0\0\0\0 ¤X\0\0\0%æö(óÕ€\0\0\0\0QR4\0\0\0\0\0\0\0\0\"‰` \0\0ÌìÑð\0\0\0\0\0,R‰@\0\0\0\0\0\0R€ \0\0œÞÍz\0\0\0\0\0)Qe\0\0\0\0\0\0\"¡BP@K\0\0\0€of=\0\0\0\0\0\nPJ\0\0\0\0\0PJÀ@\0\0€s{4yèxy@šU\0(ª¨¥ \0…)€¬7Tˆ‚\r\'HçvhóÒ5¨ \0\0\0BË(¤(P\0‚¥AP\0\0\0\0\0\0œÞÍz@¤ \0\0\0”Š\0\0\0¥\0  \0\09Ýš<áDT@\0\0‚„ \0\0‚Yb„\0°\0a`ÌíQç(jÌë:I¹Š \0\0¡@‹)(\0Kˆ\0EBÀ\0€	DPæv¨óÙaÈþnëý§õ¿Äÿ\0wþoÇk÷ßæÌL|`T \0\0Q@	D,(B X\0\0\0\n \0\"‘9Ýª<öX¿Oúí_77óo½~ý?üý{øÆ?j$ˆBQ\n \n¹‚Ä\Zˆ\0K\0øÉ¼®C6ê¨Õµ¥´ +ãCÚ£ÎT}òoÙ¿l?š9ÿ\0týÊŸÎÿ\0J™@!)(¢•RŠR\0«)«hPT„\"I€TªªµmÏõ?®ÞÝ{(O?ò¿õ¦>‘ù§ô\'ò×ôM~…Èi³M\nl(-@ D(P4*‚4„2Ê†L0‰†PøÓôÿ\0˜s»TyÂÏÏ¿0û×?¡g×?Ÿ?Sü—ú“Ò¢ŠJ\"…€\0 %\0 \0\0\0,\0H\0\0%œþÕrÅ}_™÷_–¹?]ûW¹ÂÅ X(\0€”\0 \0\0\0\0‚À\0Š\" ‡?µGœ,\n€(, \0‰R\0\0\0\0X\0	@‰`%^gn5\0,(@€(\0\0TT,\0\0\0\0\0°°¡(BR	AÎíQæ \0\0H©BT¡P\0,€\0\0\0\0€\0\0çö¨óPðòMmPˆÐ3 \"¨FMÑ4È…‘!\nH¡$ÀûÉwn5j\0€B\n\0\0\0\0\0\0\0\0€)\0\0\03	ÏíÑæ(\0\0\0\0±H\0\0\0\0\0\0Y`À\0”€E(æ÷(óYR¥\0\0\0\0¡€\0\0\0	bÊ \nEKP  ¡þÝ`°T ”\0\0À(\0\0\0\0YB,*RX\0J@P€CŸÛ£Ë )(\0€P,YQ`\0…K!P€Q\0J\0ÎîQåÐ\0\0\0\0\0€\0\0\0 \0\0¢\0 \0€ wr.ƒÃÊh-ÐTj\Z\ZQD()E ª+-2dD‚˜„>ÅòŸÜ£Ë j,\0\0KD\n\0J•€%\0\0\0\0€–”€\02G?¹G–€\n\0\0\0J\0R\0²À\n•(\0\0XP@€Š\0%Žr-\0\n\0\0\n\0*R!D*,\0\0\0¤¡,( ,Gƒ¹G˜  \0‰a@%EŠKX©`\0(%	D\0r4QB(%\0€Š”%`\0  \0\0@”\0\"¤ådPŠ”\nJ\0	@\0À\0\0\0%€\0<Ê<Ä<\\ÆJiE2ƒTE„Ô@*¡\0\0¡\0 ƒ-!\"\0†™É±üƒŸÝ£ÍÐJ\0\0\0\0\0\0\0\0P\0„T\0‰	àîÑæ€R(\0R(\0J\0\0\0\0\0@±a@\0DR\0¤@Ov4\0\0 ¡b€…\0\0\0\0\0%€\")*TRE \0  ‡ƒ»G–(žI}~/sËæêq±Ü\0\0 (\0\0\0\0°‚JE€”\0ç÷¨ò¢œOæ¹}—ôßÂ?¡¯ó‡»úù“Óø Ê\0J”\0 \0\0\0\0\0!H Dx{´yH¯¦~súWÚ¾£þ‰ùÿ\0å½?èÍŸ¤ð|fba†\0@¨ ¢\0@\0\n\0²¶Úí½]omß“äÖë£¤x{´y@úWæ=nôf|ÿ\0Ïÿ\0ªþeýç_£ˆ\0•\0¤¤R[\n–\nBPŠ\0QU‰‹\0P±Ÿê¾´<ê< sž¯åëŸóOÊqÎþ’û\Zð¼ºùnõ­j·uE*“ZQE!@ÉRËd`2\\­\0™¹Ë)œâfâg‹ÄÆ>,3ï‚x{Ôy >™øg¿ûbëèŸšÿ\0AäQ\0*€\0\0\0@@\0JK\0\0H@ðw¨ó@<¾N¾CY\n\0\0(\0\0\0\0\0J\0\0\0  \0A\0HG‡½Gš\0\0\n\0\0²Ê\0\0\0J\0\0”\0P\0@D#ÃÞ£Í\0\0,P\0¨ \0\0\0\0@\0\0„(E%@\"àïÑæ€¨*P(@\0©@P€ \0\0\n@~4/Im2BP\0\0¢ˆ(€\n\ZdR\"”™))£XûËÃß£Í•(\0\0\0\0\0\0\0\0 % ,\0\0\0\0@€x{ôy² \0e\0\0\0\0\0\0J@\0\0\0\0D¢\0@€D$ð÷èóf…\0\0\n\0\0\0\0\0\0@À\0\0\0\0@@\0„žýh\0\0\0\0\0*,\0\0¤B\0\0\0\0BR\0	\0DgÃß£Í(,P\0\0\0YI@\0\0\0T\0\0\0@HÏ‡¿Gš)@¡@€\0\0\0\0\0\0\0\n‚ B3<ú<Å<Í†P\n„H\0…\0B\0\0 @ ’™ ©Ÿ±ìÏƒ¿Iâ–!\0\0\0\0(\0\0\0@%\0	@@X@ B\'Í×Û<ÐH( P\0Â `\0\0À €„A==WÇá	¬Ùh€²€•¢€\0@@(”€XA4Œö~O/ÀlÔ±4.h\0P\0*((@\0`@\0P€A€OWCÍð\0Í²Ë,«(\n\0€”€@ 	e@\0\0 ‚×[Íð€‹\n@\n\0\0\n@P „\0%€\0\0 @€BLv¼¿\0\0\n\0\0\0”\0X\0\0\0%CÏÝòü`\0(@\0\0\n\0\0\0€T\0”\0\0@ ’¼½¿ƒã \0 \0\"€\0\0\0\0 \0`\0\0\0\"žNçÁˆ\0e\0€\0\0\0%\0*\0‹ € B*>ïÅð€\0\0 \0X±@\0\0\0€‚\0€\0\0!O\'Ø|ÿ\0\0\0J\0*P\n@\0$ A\0J@\0@ „\"ÉöŸ/‰aIID¥…Š\0\0TK*ÅˆH²X€Ab\0YQ3rB%†,§—î^NE\0B’‹R’…`H–jD•*K›$ÊZDX…©’ª$‚’DIiœØLýû—Á’ÒS:))Jˆ·6Ò*Å,Íºb\n‘.L¹I\ZM\".Ò]#0M\\É˜ˆÈ‰YÊ,{?Fâý>À„fµ•\Z‰h©IšZ‹›A&’	Pf3•²²ÓR)¬á¡u†cY	$D†HJ‡ÚEâ~ob,D«dR€\0Š¹ „JÉrA+\"±\"	H@%ý3î¾OÈ¾»*@\0\0P(”€ b,X¢J%@,@\"¢ Š£¯ûOj}cê²\n\n… PT*ÁPPB‰@BHQ(\0-BÔ(…!B»Ÿeù‰\Z@J	@	H\0\0\0\0\05\"ê2Ô,*-ËYÞcYÖZÍMV\Z e¡•¤ËfIcgÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÚ\0\0\0\0éÐ`\0\0@\n\0 \0\0iÎ:u1\0\0(\0\0\0µË.s \0\0\0\0\0\0\0\0\\²é¹\0%‚ˆ€P%\0\0\0¤.2ÖÁP\0@\0\0\0X\n\0\0b5²ÜÛ°\0\0\0\0\0(ˆÖÌ)Žš@‚X¨\0X\0\0‚¦XlÎØiÊ¬\0e\0\0@*TF#[1ÒbÐ\0\0\0\0\0\0#Z°\0\0¢\0\0X\0\0\0V#ZE\0\0TŠ\0\0\0\0\0 b5 \0\0Š(\0\0\0\0â5 \0(€\0\0\0–\0\0h\0\0\0€\0\0\0\0\0VcZ@\n\0\0\0\0€\0ªh\0AD\0\0€€”\0cZ”(E€€\"¢ÀP \0‹´\0\0X	@ÀPbˆU!˜Ö€ \0\0, \0`)@\rhX±\0\0K`%d\0\0\0 cV³¨c¥\0\0\0\0\0`\0P&YZÍJ™ 	D \0\0°ÂŠ`º\"Å\0\0\0ˆ\0\0\0\0€f.€\0\0\0$\0\0\0\0Ð.‘@\n€ \0\0\0‚è\0T°° \0\0\0\0\0Z.€T @\0\0\0\0\0Z.ˆ°,\n€\0\0\0\0\0‚è\0\0\0(P\0(\0.€X\0	\0\0\0\0\0\0˜.€\0• \0\0\0\0\0\0µ‚è@\0\0\0 \0\0\0	X.€\0T€\0\0\0\0\0\0«‚èjK,\0\0\0\0\0\0\0.K¢\\Ýá±`\0 )\0\0\0s¹.‰YÜs´\0P\0\0(RP\"Ëº3jT*\n„\0\0\0\0\0\0.€!5›*È\0\0\0\0\0\0\0º\0\0BÊ%\0¥E…$Bé\0R\0\0\0\0H *ºH…H\0\0\0\0\0\0\0.‘aID\0\0\0\0\0\0\0»€E\"E\0\0Jb R)\0dÖ’K\0\0\0\0\0\0\0F³!D€\0@\0,\0\0\0\r.’€\0*(\0\0\0\0KD¶Q \0\0\0\0\0\0\0\0A¥XÖD€\0\0\0\0\0\0\0d´\\é 	QB€\0\0\0J&.Kq¢b¨°YADRÅ€\nÖ¬Üé› HX\0\0\0\0\0\0h`º„ª%H°\0\0\0\0\0\0(P`´±AbY\nJP\0H\0\n\0`ºZ\0\0\0\0\0\0\0R€`ºŠ\0€\0\0\0\0\0)@bêP\0\0\0\0\0ÀQ`‹¤`©A\0\0\0\0\0¥H¦bè%ˆ²¡U•@\0\0\0E,\0‹¡\0°\n@€€ \n \0bè€R\n	e€\0 \0\"Ò‹ X\0’”\0\0\0¡@\0\0f.ŠMâÀ) \0\0  \"€\0‹£=9ÝbëU\0\0@\0@@ JÎY‹¢²¶`X\nTU¥,„°(Y‹£-e \0BR‰`²¤(Y@\0\0f.€€ *P\0\nŠ\0TQ˜ºK\r\0\n€¨²€@‹ˆº\0\0\0$¢X\n(\0\0\0X‹ \0\0\0 ”P\0\0\0\0¡ˆº\0(•E \"€±H,PŠ‹ P\0\0X\0\0€€‹ \0\0\0\0\0\0\0\0Y@§8º\0\0\0\0\0\0\0\0\n\0§8ºJ\0\0¢À±b€*K@ˆº\0	H \0\0 \0@ˆºY\0%\0\0\0\0\0€ˆº3ÓÖZÑ\0e@\0J‚˜b.„M°Ê,\0\0\0\0X`5X‹¢*P\0”\0(\0\0\0‹ \0@ €\0\0\0‹´°\0\0\0BÀP\0T #[„(\0\0\0\0\0\0(ˆ»\0\0\0\0 \0\0\0b.’ˆ©P@\0\0\0,(,Pb5 , ”–\0Â€P  Nsu(\0T\0\0@\0Š#8Õ \0\0\0\0\0\0€s¨@\0\0\0\0\0\0\"€,YÏt\0K\0\0\0\0P\0¤P”	Ë¥\0\0K\0\0…P sÃ½\0\n!R€\n\0Æ¥Ç—ÓÑ(\0\0(\0X\n²Å%,)9yºî‚\0\0%”€\0\0, Œ`\0\0\0\0\0\0\0\0\0\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÚ\0\0\0\0™€\0\0\0\0T¢\n€³\0\0\0\0\0‹,`D\Z¬À\0\0\0\nQeŠ@¤X†«1a@\n\0P ,\0\0•\nÍš©\0\0\0 \0XX(	P¤*dJ\0\0°–T °P\0@´™]K\ZÄJT©H¢(\0\0*YE©“Yi—X€\0\0\0D°&m&Má¦VX*\0±e\0\0\0\0 ¨„\0PT*P\0\0\0U$\0\n\0…“PX\0\0\0\0‹I••((–XJ€\0\0\0\0¢Aa@BRP)(\0\0\0\0\0ˆ(	bRÅ@\0\0\0\0\0 \0 (\0\"ÂË\0\0X²ˆD\0\0K\0\0\0\0\0\0\0Ê@\0\0\0\0\0\0@*A›@,PPX¤T(Q\0\0\0\0	@\0\0\0\0D \0\0\0\0\0\0\0\0Öu\ZÄ\0\0\0\0\0\0\0\0QrXn\0\0\0‹(\0ÉB¥€(\0\0\0\0\0\0\0Q\0\0\0\0\0\0\0\0\0\0B€*T`R,\0,\0\0¢\0\0\0\0\0\0\0\0\0D\0\0\0\0\0\0\0À\0\0”\0¨¡`”\0\0\0\0B‘e	@\"Ê…\0\0EKX\0Q\0\0\0\0\n€\0\0`\0@\0\0\0€\0\0\0\0\0QÊ	bˆ¡JŠ(¡(@\0\0\0\0\0\0\0\0\0J”\0\0\0\0\0\0\0°\0BÍE™–Q(\0	@\0\0@\0UÔ›Ìt\n\0\0\0¤Ê”3CR,\0\0€\0\0\0\n\0Q\0\0\0 \0\0\0A\0@\"ÅJ…\0\0\0  J…\0\0\0X\0\0\0\0P`@\0\0 \0\0\0H\0\0A(\0\0\0\0\0D(\0\0\0€@(eQ\0\0\0\n€\0\0\0\n \0@\0\0P\0\0\0\0(E%\0\0‚,¢,\nR€D\0\0\0*\0\0\0\0¤\0\0Q\0”\0\0X\0\0\0 \0D5›Q \0K,¤Yl€,¤*`”UÔšbí\n\0X @¨\0ˆR%3B¥@\0\0¢\0D² \0\0\0\0\0(€ˆ\0\0\0D(\0\0*,(, \0À\0\0\0\n%B„\0\0\0\0@\0\0\0\n\0€\0\0\0\0Q\0\n\0\0\0\0\0\0\0…BÊ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0D\0\0\0\0\0\0\0(\0PŠ!@”B¢€H–@\0\0\0\0\0\0\0\0\0°”\0\0\0\0\0\0\0\0D7ÏA3SP\0\0\0D •\0-Q\nšbî( À\n€\0\0‚À‘D*T\0\0\0\0\0\0\0\0\0Q\0\0\0\0\0\0\0\0\0¥B€\0*YHR)\n\0¥@Q\0\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0\0\0\0±BP‚€	B(J\0\0\0@\0\0\0\0\0\0\0\0\0!¡\0\0\0\0\0\0\0\0\0\0‹D\0\0\0\0\0\0\0\0\0-¤(\0\0\0\0\0\0)\0@\0\0\0\0\0\0\0\0\0Ñ\0”\0\0\0\0\0\0\0\0ZCx ÍX À,\0\0	aP!V·:béH€B„RPJ…”E\0ªeÄš¤\0\0\0,\0\0\0\0\0+i\0\0\0\0\0\0\0\0\0\0’èAH©l\0RRT\0€,,\0$j\0\0\0‹\0\0\0\0\0Z@\0\0\0±A\0\0\0\0\0¡\0\0\0\0\0	Q@ˆš¨\0\0E\0R(P‹\0\0#h\0\0\0\0\0‚¥¡5`\0\0\0\0\0\0\0\0\0¢Ø\0\0\0\0\0\0\0\0 @j	@€\0\0*)\0\0\0€ºÍ€\0\0\0\0*)\0\0\0K¼\0\0²€’Ê@¥EBËR/\\äË	`”BÀ!b©%,-„¤ÔÞÈX°•,*P@ Š–P%%J@\nP\0\0\0\0\0\0\0\0\0\0?ÿÄ\02\0\0\0\0! $1p\"%024A#3@P`BQqÿÚ\0\0.˜¾réËç/œ¾bù‹¦/˜ºbù‹¦.˜ºbé‹¦.˜ºbé‹¦.˜ºbé‹¦.˜ºbé‹¦.˜¾bé‹æ.˜ºbé‹¦.˜ºbé‹¦.˜ºbé‹¦.˜º%ÓDº%Ñ.‰tK¦.‰tK¢_1tKâ_ø—Ä¾%ñ/‰|Kâ_âè—D©|Kâ]è—D¾%Ñ.‰tJ•*T©R¥J•*T©tJ—Dº%Kâ]è—Dº%Ñ.‰tK¢]è—Dº%Ñ.‰tK¢]è—D¸¸¸¸¸¸¸¸¸¸¸¸¸¸¸¸¸¸¸¸¸¸¸¸¸¸¸¸¸¸¸¸¸¼¼¼¼¼¼¼¼¼¼¼„kñ\\¿Æ4Œ>+ŸÞBOï!Š§÷‡ÅSûÈCñÏ+Û£ŠÞ¢[ÔKz‰oR-êE½H·©õ\"Þ¤[Ô‹z‘N¤S©õ\"Þ¤[Ô‹z™oS)ÔÊu2L§S)ÔÊu2Lû™÷3îgÜÏ¹Ÿs>æ}Ìû™÷3îGÜÊõ2½L¯R>äW©êEz‘^¢W©ê%z‰^¢]ÔJõî¢]ÔºwP.êïËß—¿/êïËß—¿/~^ü½ñ{â÷¥ï‹ß½2=2=2=2=2=/zdxdzdzdz^ô½é‘é{Ò÷¦G¥ïKÞ—½/z^ô½á{Ò÷¥ïKÞ½/x^ð½á{Â÷…ïÞ—¼/x^ð½é{Â÷…ïÞ½/z^ô½é{Â÷¥ïKÞ—¼/z^ô½ésÒç¥ÏKž—=/z^ð½ésÒçÅÏKž—=.|\\ô¹ñsâçÅÏ‹Ÿ>.|\\ü«ò¯Ê¿=y÷L¶ÿ\0›É?¼„>*ŸÞBOï!Š§÷‡ääY‹#‘d\"íºóØ’Ë$„!QY%åŒÉ\n½h”iz‹I£HÂ‘„#*ŠH’qQDœ ½Ø“zÕYá$ŸÏï!ÉÅ¢qi$ÚÙeéiO|W:·ú:T#¬¤N¢´RFHÍ®ÌÑ°•$¢¢=5xÈ®¿þ\n§J„j¼FŒ^¥O„g÷‡åUIQJefJE:¤Ð„²Ë	dz„îR–TÑ’	#\"pêßÉé_Æœ[øë¹Òs,„éÊÑ\rvÑN,ZLÚiæP‹öPŒaA‰È19\' Ääœƒ}‰È17Øœƒ}‰¾Äßbo±7Ø›ìMö&û}‰¾ÄÞbo±7˜›ÌMæ&óu‰ºÄÝbn±7X›¬MÖ&ãq‰¸ÄÜbn17›ŒM¶FÛ#m‘¶ÄÛbm26™L¦FÓ#i‘´ÈÚdm26™,–FË3e™²ÌÙfl³6Y›L–fË3e™²ÌÚdl³6™,Í¦fÓ3i™²ÌÙfm36Y›,Í–fË3e™²ÌÙfl³6Y›,Í–fË3e™²ÌÙfl³6Y›,Í–fË3e™²ÌÙfl³6Y›LÍ–fË3e™²ÌÙfl³6Y›,Í¦fÓ3e™´ÌÚfm36™›LÍ¦fÓ3i‘´ÌÚdm36™›l¦fÛ3m‘¶ÈÛdn27ŒÖFë!5VKÓòOï!ËÕTÿ\0$ˆÃ¥IDgWÉÕ¿“!Ò¿8§úÿ\0jD}üaî)þÕÇc±Øìv;ŽÇc·“·‡oÇc±ÛÃ±ÛÇ·oÇc±ÛÃ·—±ØíáØìv;ŽÇc±Øìv;¼;ŽÇc±Øìv;ŽÇc±Øìv;ŽÇc±Øìv;ŽÇc±ØíãØìvóöÿ\0‰ÛÃ·àíåìtïáCË?¼„?$=Ç“\\íh!k4aäêÒÿ\0•)Î“41« ¼Ð‘ªÓE´±™Â2‘÷òk3÷Ž«#U‰ªÈÕbj±5šŒMV&£Q‰¨ÄÔbj15šŒMF&£M‰¦ÄÓbi±4ØšlM6&“I‰¤ÄÒbi04X\Z,\r‹E¢ÀÑ`h°4Xš,\rƒA ÀÐ`h14\Z\rƒA ÀÐbh14\Z\r&ƒA‰ ÄÐbh14š\r&ƒA‰ ÄÐbh14šM&ƒA‰ ÄÐbh14XšM&‹A‰¢ÄÑbh±4Xš,M&‹E‰¢ÄÑbh±4Xš,M&“I‰¤ÄÒbi14™\ZL&F“I‰¤ÈÒdi24™\ZL&F“#I‘¤ÈÒdi24™\Zl&F“#I‘¦ÈÒdi24Ù\Zl6F›#M‘¦ÈÓdi²4Ù\ZŒFF£#U‘$’\'-©ù\'÷‡ä‡¸âE3¬!üd|Ž•Â1Ni¤vÕJ“¬íÌa	Ø´Šå[áIýä!ùk5Oÿ\0Ÿ\nÏï!Š§÷‡ÅSûÈCâ©ýä!øÔ•Ôfÿ\0@±ùgP,ê@³¨uÎ YÔ:gP,ê@³¨uÎ YÔ:oP,ê@³¨uÎ YÔ:gQ,ê%@³¨–õÞ¢[Ôz‰oQ-ê½D·¨–õÞ¢[Ô\nu@§Q)ÔJuD§Q)ÔJu@§P)Ô\nu@û÷îÜ¸p>à}Àû÷îÜ¸p=yëÏ^zó×ž¼õç¯=yëÏ^zó×ž¼õç¯=që\\zã×¸õÇ®=që\\zã×¸õÇ­=ië\\zãÖž´õ§­=qëJ=(ô£ÒJ=(ô£ÓÖ”zQéG§­(ôõ¥”xQéëOZzÓÖž´õ§­(ôõ¥”zQéG¥”zQñGÅ|Zôµékâ×ÅK’ÂxKþO$þòøªy|T§¼„>*SÞB)ï!Š”÷‡ÅJ{ÈCñ©+˜Çü6?1¾1¿1¿,~Xü±ùcóòÇåË–?,~Xü±ùcòÇåË–?,~Xü±ùcòÇåË:còÇåË–?,~Xü±ùcâÇÅ‹–>,|Xø±ñkâÇÅ‹¿,|Xø±ñkâ×Å¯Ë_>,|Xø±ñkòÇÅ‹>-|Zø£â‹_¾-zZø£â‹_½-zZôµékÒJ=-zZôµáG¥–½-xZð£Ò^–¼-xZðµáG…¯\n<(ðµákÂ×e®Ë^¼-vZðµák²×e®‹]–»-vZìµÙk¢ÇE®Ë]º-vZèµÙGe®Ë]º-vXèµÑk²×e®Ë]–»-tXè±Ñc¢ÇEŽ‹91¹1¸1¸1.b\\Ä±,#,´›È§¼„>*SÞB)ï!Š”÷‡ÅJ{ÈCâ¥=ä!ñRžòüjJ¼Ñ†oŒoŒoŒoŒoŒoŒoŒoŒo‹ßßß>1¾,|XøÆø±ùcâÇå‹>,|XøÆø±éécÒÇ¥LoK˜ÞÞ–<,zXð±écÂÇ¥<,xXð±ácÂÇ…ŽË˜Ý–;,vXì±Ùc²Ç…ŽË–<,xXðÆì±Ùc²Çf7eŽ‹ÝÝ:1º1º,tXè±Ñc¢ÇEŽ‹:,tXä±Ñc’Ç%ŽK–9,rXä±Écƒƒƒ‚ÇŽÜ8,pXà±rÅÌk˜×,\\±rÅÌk˜Ö1¬cXÆ¹rÅÌk,X¹bå‹˜Ö1®X¹s\Zæ5Œk×1®c\\Æ±c¦5LJ˜•1*bPÄ¡‰CæÌ3˜f0Ì`‰€ÀKe·Ê§¼„>*SÞB)ï!Š”÷‡åS¨4’4–^¦Ö?´±„ÒÂiW]&òËQY5ä½1N ÒHÒYz“XÇê–2Í,&‘edA;ÔIÒ\nÉ<ò\"ñºóØŸÂ*{ÈCòu7¿^FlsË‘IºcXÃè„!	a,:·úQ:\\#‘Œzª“J”‰ÊÉ¬Í5ÏX¦ŠYQéjFUñOøC	c¦òc¥B1w_„”÷‡ã‡¸æ1™ÂÑ7š ‚RK/TN1úåšIä„é¼o)Ë,²KÓ‘9zš3*ŒªIÓÜÈ„ÓJ£÷hN†$zZSE\\ÑtŒ\\!ŽY‚lâÞÛjÉ4\"r,ŽE‘É39&g\"ÌäYœ‹#‘fr,ÎE™È³9g\"ÌäYœ‹3‘fr,ÎE‘È³9&g\"ÌäYœ‹3’frMI¡É49‡$Ðäš“C’hr-I¡É49&‡$Ðäš“C‘hrME¡É49‡\"Ðäš“C’hrMI¡É49&§$Ôäš“S’jr-NE©Èµ9§\"ÔäZœ‹S‘jr-NE©Èµ9§\"ÔäZœ‹S‘jr-NE©Èµ9Ç\"Øä[‹c‘lr-ŽE±È¶9ç\"Øä[œ‹s‘nr-ÎE¹È·9ç\"Üäœƒsnr\rÎA¹È79A@ä9A@ä9A@ä9A‘@ä9E@ä9ADä9ŽE‘HäR9$ŽI3’Lä“9$ÎNC’äå98™Éœ™òË*žòüp÷ìáa»°JY•~ÒD!QéJFùÑñvæ\r¤…AwŠO\\0Y	/<Éj\nù;V\'b°;ŽÇc±Øìv;ŠÀìv;ŠÀ¬\nÀìV`V`V`V`V`V`V`v+°;ŽÇc±ØìV`V`v+±XŠÀìVc±Øìv;Ø¬ÞŽÅ`v+Å`Vc±ÛþoÃÛÇ·…áw;ÊLRbÙËT¡/úäò©ï!ÈúHÈñXÔ‚­Œ:¤Ð•¬$:T#·øõJî.2Å¥°VÙPV3¡\\ÈÒ>þL\rL\rL\rL\rL\r\rL\rL\rL\rL\rL\rŒ\rL\rŒ\rŒ\rŒ\rŒ-Œ-Œ-Œ-Ì-ÌMÌMÌMÌH›˜1 b@Ä‰$hÐ1 c@Æ\Z%ˆ˜Ñ,DÆ‰ÄLh–$X‰b%ˆ–\"X‘bE‰$X‘be©–¦Z™jE©–¦Z™je©–¦Z™je©–¦Z™je©–È[!l…$)!I\nHRB’¤¥$))IJJRR’ŸIIJJRR’ŸIôŸIôŸIôŸIØúO¤úO¤úO¤úO¤úNÇc±Øìv;ŽÇc±ÛðÔ¯áSÞB‘ãX9’‡­k<i	:ž£Vò¶Jß æHR)¼m=I”zâ’ÎÉ”ÉÏ™ÇÂŠ{ÈCò×Ï_…”÷‡ÅJ{ÈCâ¥=ä!ñRžòüjH¼ÓU<NŒNÌNÌOooooooooooooonÌnÌnÌnÌnÌnÌnÌnÌnÌnÌnÌnŒNŒnŒNŒNŒNLNLNLNLNLNLNLNLNLNNNK˜œ—181.b\\Ä¹‰cÆ%ŒK—1,bXÄ±‰cÆ%ŒK–1*bTÄ©‰S¦%LJ˜•1*bTÄ©‰S¦%LJ˜”1*bPÄ¡‰C†%J”1(bPÄ¡‰C†)ÌS˜§1NbœÅ9ŠsÆ)ÌS˜§1NbœÅ9Šsæ)ŒS¦1Lb˜Å1ŠcÆ)ŒS¦1Lb˜Å1ŠcÆ)ŒS¦1DÅLQ1DÅLQ0ÄÃ	„À`0 `”Á!‚C^C]3]3]#]/2žòø©Oy|T§¼„>*SÞB)ï!Š”÷‡ÅJ{ÈCñ©\"“F²a\\ÂàÂàÂàÂàÂäÂäÂäÂäÂäÂäÄäÂäÂäÂàÂäÄàÂàÄäÂàÂàÂàÄàÂàÂàÂàÂ¹…sƒƒæÌ+˜V0¬a\\Â±…c\n¦L*˜U0ªaTÂ©…C\n†*T0¨aPÂ¡…CæÌ3˜g0ÎaœÃ9†sæÌ3f0Ìa˜Ã1†cÆŒ3f0Ìb˜Å1ŠcL3ba‰†&(˜¢b‰Š&(˜¢b‰Š&(˜ba‰Š&(˜L&	Š&(˜Œ&	ˆÂa0˜L&#	„Âa0˜LF	„Âa0˜L&`a†`a†S˜$0H`Á!3]3]#]#]#]]]Y2žòø©Oy|T§¼„>*SÞB)ï!Š”÷‡ÅJ{ÈCñ¨œÓÒ˜\'0(`PÀ¡C†\n0(`PÀ¡C†\n0(`TÀ¡S†\n0(`PÀ¡C†	Ì˜\'0L`œÁ1‚cÆ˜&5â`‰€×0\Zæ¹®`0€À`0€À`00@Á0J`‚	L0J`‚S¦	L$0H`Á!‚C†	L˜$0Ha”Á!‚C†	d0H`Á!†C†$0H`Á!†C†$0È`Ã!‚CfÌ	˜0&`LÀ™3fÌ	˜0$`H×HÀ‘®‰®‰®‰®‰®‰®®‰®¬ÜÖnk75›šÍf¾e=ä!ñRžòø©Oy|T§ºd?*½I	#D¡Õcý ¬«¥%]\\ÅXµuWSÁËÔÛÏ`ÕÔ_E\'Æ”ê\r^JéK ŸQ’u —ÂJ{¦CòuE£,%BV-%^³«Lc\n	É*iÁ9:‡ðT:D±µYüVT™Y£æš3ÏÒ=×\rc¤Kª¤ã9#;ùa„T÷‡äê_ÎœEòmšHœ°êŽîs%Ò,œJ)ÌŠR¢”|´ÎœÊ’OÑ•Ó—¤~ËŠKšH¶FFÉÙ#v©·žyå&êRI<Òœ¬‡)!ÊÈr²¤§))ÊJr²œ¤§+)ÊÈr²œ¬§+•ÊÀåNV+•ÊÀåNTåNR*r§(r§(r‡(r‡(r‡(r‡(r‡(r‡&rg&rg&rg&rg\'“‰Éœ¤NR\'&r‘98œ™ÉœœNN\'\'“‰ÉÌrq99ŽNc“‰ÉDä¢rS”Ç%1ÉLrsœœç\'9ÉÎrsœ”ç\'9ÉNrSœ”ç#9ÈÎrSœ”Ç#1ÈÌr3ŒÇ#1ÈÌr3”ç%9ÉNrJŒç#9ÉNr3œŒç#9ÈÎr3œ”ç#9ÈÎrJŒç\"¡É(r3œ’‡$¡É(rJ’§$©É*rJœ’§$©É*rK’Ç$±É,rKœ’ç$¹É89\'\"àäœœ‹ƒú‡•Oy~N£üÙÎž‚\Zò«3æÉN„ÊIÓçŒ$ñêáFÙzn²PŠªõ5QQ4 ŸKQ$æ[,)V®ÂÇÔR\'Ô}E&)1IŠLRb“˜¤Å&)9IËg-œ¤å³–Î[9lå³–¨[9j…ª*Z¡j…ª¨X¡b…Š–*X©b¦5LkÖ1ªcXÆ©c\Z¦5ŒkÖ1¬cXÆ±c\ZÆ5ŒkÖ1¬cXÆ±‰cÆ%ÌK˜—1.cXÄ¹‰sæ%ÌK˜œ—1.b\\Ä¹…sæ%ÌK˜—1.b\\Ä¹‰sæ%ÌK˜—1.b\\Ä¹‰sæÌ+˜—0®b\\Ä¹‰sæ\'\'Ì+˜\\\\W0®apapapap`p`p`r`r`r`r`r`r`rkº5Ý\ZîwF»£YÑ¬èÖtk:5\ZÎÍggõ*žòüVJ/\"‡KVX£bùIRk=XIž\'OŒær¤³É”¨åœía,fnÖwQšÉR’OÅR¾+áR¥J•*T©R¥J•*T©R¥J•ñ©R¥|*Wÿ\0N§¼„?\"©¦²qMEz{©&ÿ\0¬Ÿ©7ÔÙ´¤¤<ÑUtä‚]=ºèE\\ß\n)î™Š”÷L‡ÅJ{ÉñZžòÞP¡O\nå»xv;ŽÇc±ØúO¤úO¤úJÊV_2žòüj%\"”»UUUUUUUUUUUYUUUUUUUUUUUUUUUUUUUUUYUUU¹ªÜÕnj·5[šÍÍfæ«sU¹ªÜÖnk75›šÍÍfæ³sY¹¬Ü×nk·5ÛšÍÍfæ»s]¹®Ü×nk·5ÛšÍÍvæ»s]¹®Ü×nk·5ÛšíÍvæ»s]¹®Ü×nk·5ÛšíÍvæ»s]¹®Ü×nk¶5Û\ZíÍvææææÆ»cs]¹¹¹¹±¹¹¹¹¹¹¹¹¹±¹¹¹¹±¹±¹¹±±±±±±±±±±±±©±±±©®ÔÀÔÀÔÀÔÀÔÀÔÀÔÀÔÀÔÀÔÀØÀÔÀØÀØÀÛÌ§í\'Åj{ÉñZžò|V§¼Ÿ©ûIñZŸ´Ÿö½¼½¼;y{xv;ŽÇc±Øìv;ŽÇc±Øìv;ŽÇc±Øì}\'ÒVS±ôŸIôŸIX”ìVR²•”úJÊVR²ŸIYJÊVB²•¬¥e+)YO¤úJÊ}%e+)ô•”¬¥d+)YJÈVR²¬…d+!Y\nÈVB²ªed+!Y\nÈVB²&\\™zEÉ—&\\™reÉ—&^‘zEé¤^‘zEéy”ý¤üŠ$š´É¨ÔÔjjµ5Zš­MV¦«SU©ªÔÕjjµ5Z\Z­\rV¦«CU¡ªÐÕhj´5Z\Z­MV¦«CU¡ªÐÕhj´5Zš­MV¦«CU¡ªÐÕhj´5Z\Z­\rV†«CU¡¬ÐÖhk45š\ZÍ\rf†³CY¡¬ÐÖhk45ÚšíMv†»S]©®Ô×jkµ5ÚšíL\rMv¦Æ¦¦¦¦¦¦Æ¦¦¦Æ¦¦¦¦¦¦¦ÆÆÆ¦ÆÆÆÆÆÆÆÆÆÆÆÆÆææææÆææææÆÆææÆæææææææææææææÆÆÆææææææææææ&æ&æ&æ&æ&æ&æ&æ&æ&æ&æ$MÌH›ù”ý¤ø­Oy>+SÝ?ŠÔ÷Oâµ=Óø­Oy?/c±Øìv;ŽÇÒ}\'Ò}%e+)YJÊVR²”¬…e+)Y\nÈVB²¬…ÒH\\™reÉ—&\\™reÉ—&\\™reÉ—&\\™rEÉ—&\\™rEÉ$\\‘rEÉ&\\™rEÉ$^‘zEÉ$\\‘rEé¤^‰zEé$\\‘rEÉ¤^‘zEè—¤^‰zFDLˆ™2\"dDÈ‰z%è—¢^‰‘\"&DLˆ™2\"dDÈ‰‘\"DLˆ2\"dDÈ‰‘\"&Dˆ2 dDÈ‘*TˆP2 e@Ê•*T¨P2 e@Ê•*T¨P2·2·2·2·2·2·2 ene@Ê•¹•¹•¹•¹•¹•¹•¹™¿™OÚBŽtÒV‚º¬ÍVf«3Y™¬ÌÖfk35™š¬Íff³3Y™¬ÐÖhk45š\ZÍ\rf†³C]¡®Ð×hk´5Ú\Zí\rv†»C]¡®Ô×j`j`j`j`j`j`j`j`j`l`j`l`j`j`j`j`l`lalalalalalanananananananbnanbnbnbnb@Ä‰$H1 c@Æ\Z4hÐ1 c@Æ\Z&4Lh˜Ð1¢c@Æ‰\Z&4Lh˜Ñ1¢cDÆ‰\Z%ˆ–$cH±\"Ä‹,H±Ä‹,H±\"Ä‹,H±\"ÄË-L±\"ÔËR-L±\"Ä‹,H±2Ä‹R-H±\"ÄË,Lµ2ÔËS-Lµ2ÄËS,L±\"ÔËS-Lµ2ÔËS,Hµ\"ÄüÊ~Òø©OÚOŠÔý¤ø­OÚB“´!Ån§5hÛ}÷¸ÉeWBõVšiRyX:]ÂÑ•Q~¥5cÐ|úŒZ<•ÇÑ<Ý¤š#\'ŽWs,ŠÎõÔE8|\"§í!ÉÕTŒ$‘(tÖò)•P„!Òºþ\"ÇH“ýŠFxÈÎ4éÉH£®ydVHÉ<#2+T›ýSÄé	Ü¼Ê\'—ªÍ/ÂJ~ÒüWùRˆ;]$p7™~£$ÈÉäVŽ5£MË4’Hœ¶§Õ!ÒÚ©ÇûÖ!þ© I\"iÂ‰A4¥š3J:xé\'3ÈŸ øäƒã|o¾7ßïM÷¦ûÓ}é¾ôÞ|o>7ŸÏ÷Æóã}ñ¼ôÞ|o>7ŸÏçÆóãyñ¼øÝzo=7ž›ÏMç¦óÓyé¼ôÝzo=7^›¯M×¦ëÓuéºôÝzn½7^›¯\r×¦ëÃuéºðÝxn¼7\rÇ†ãÃqá¸ðÜxn<7\rÇ†ãÃqá¸ðÜxn<7o\rÇ†ÛÃqá¶ðÛxm¼6Þo\r·†ÛÃmá¶ðÛxm¼6ÞnÍ·fÛ³mÙ¶ìÛvm»6›NÍ§fÓ³iÙ´ìÚvm;6›NÍ§fÓ³iÙ´ìÚvm;6›NÍ§fÓ³iÙ´ìÚvm;6›O\r§fÓ³iÙ´ìÛxm»6Þo\r·†ÛÃmá¶ðÛxm¼6Þo\r·†ÛÃmáýCÊ§í!ÉÕ•)Ò¡,\ZÆ0^IUAI&m4`áøõ_ãHtö«à¿ûÕ%ý$ò;héGSÎžƒãAñ øÐ|qïŽ=ñÇ¾8÷Çøãß{ÓzqïN9éÇ=8÷§ôãžœsÓŽzqÏN9éÇ=8ç§ôãžœsÓŽxqÏ9áÇ<8ç§ðãžsÃŽxqÏ9áÇ<8ç‡ðãœs³ŽxqÎÎ9ÙÇ;8çgìãœs³ŽvqÎÎ9ÑÇ;8çgèãœs£ŽtqÎŽ9ÑÇ:8çgìãs³ŽtqÎŽ9ÑÇ:8çGèãs£ŽtqÎŽ9ÑÇ:8çGèãs£ŽtqÎŽ9ÑÇ98ç\'äãœœs“ŽrqÎN9ÉÇ98ç\'äãœœs“ŽrqÎN9ÉÇ98çäãœœs“ŽrqÎN9ÉÇ98ç\'äãœœs“ŽrqÎN9ÉÇ98ç\'äãœœs“ŽtqÎŽ9ÑÆº8çGèã\\œs£ŽtqÎŽ9ÑÇ:8çGèãy”ý¤!ù:¢Q™9—§¹‘Í\"®¡\"3A6)EGRBRŠÍg„¬—‚ßÞ´NK¥E9×q,¿\n©ûHCò­ÓSš1Š2ô©ÿ\0ûE’Ä¼\\0Ei£<éS×º\rÑo-øQOÚB)ûHCâ¥?i|T§í!Ç4ÒKûænflflflflglgjgjgjgjl53µ6\Z›\r\r††ÃCe¡²ÌÙfl³6Y›,Í–fË3i™´ÌÚfm36™›LÍ¦fÛ#i™´ÌÚfm36™›LÍ¦fÓ3i™´ÌÚfm46™›LÍ¦†ÓCi¡´ÐÚhm46šM\r¦†ËCe¡²ÐÙhm46Z-\r–†ËCe©²ÔÙjlµ6Z-\r–¦ËSe±²ØÙjlµ6Z›-–¦Ëce±²ÔÙjlµ6Z›-M–¦ËSe©²ØÙllµ6[-–ÆËce±²ØÙll¶6[-–ÆÊËce¹²ÜÙnl l·6P6P6[›(-Í–æËseeeeeeeee¹²ÜÙnl·6[›-Í–æÊËse¹²ÜÙll¶6[-¦ÆÓSi±²ØÚjm56š›MM¦¦ÓSi©´ÔÚiæSö‡ãŒ²MûãDÆ‰Ä‹,H±\"Ä‹S-Lµ2ÔËd(™I\nHRSé>“é>“±Øìvÿ\0½¯â¯æ×þzŸ´„>*Sö‡ÅJ~Òø©OÚB)ûHCâ¥?i~9çM8UM–fË3e™²ÌÙfm36™›LÍ¦fÓ3i¡´ÌÛfm³6Úm\r¶†ÛCi¡´ÔÚjm56š›MM¦ÆÓci±´ØÚnm76666666666666Q6Q6Q6Q6Q6‘6P6Q6Q6Q6Q6Q6Q6Q6Q6R6R6Q66Q6Q66R6R66666666666R66R6R6666666666666666666666$6$3ÈlHlHlHlHg”Ï)žC<†yò›››6%3Êg”Ï)±)±!±)±!±!±!±!±!±!±!°™°™°™²‘²‘°‘°‘²‘²‘²‰²‰²‰²‰²‰²²²²²´ßÌ§í!ÇÛû¤§ÒRS±Øìv;|.§í!Š”ý¤!ñTÿ\0´„>*Ÿö‡ÅSþÒøªÞBEJSm¡¶ÐÛhmµ6Ú›mM¦ÆÓci±´ÜÚnm766‘6‘6’6‘6’6’6S6S6S6d6d6d6e6`lÀÙ³fÌ\r˜Á°lÁ°lÁ°lÁž&s`Ø3™âlÁž&x™Ìñ3ÄÏ<Læx™âg‰ž&x™âg‰ž&x™æ3Ìg˜Í<Lñ3ÄÏ1ž&yŒó¦3Ìg‰žc4ÆiŒÓ¦3Lf˜Í1šc4ÆiŒÓ¦3Lf˜Í1šs4æiŒÓ™§3NfœÊ¡•C4æiÌÊ”3(fPÌ¡™C2†eÊ”3NfœÍ9šs4æyÌÓ™æ3Lg˜Ï<Mƒ9°lÄ\rˆ6 lJlHlHl¦l¦l¦l¤l¤UòÏûÈCþ\r~©R¥Jùçý¤!ñTÿ\0´„>*Ÿ÷‡ÅSþòüŽckU¦$™Üÿ\0L–u1Œ`êX¬·ú:dÊEÜ.Œa,³M2î×^bfod“$Y¼RIå‘_ê#Íº•]Æmå>Ÿ÷‡äê£‘P¤ÅéÖžS¤¥a:³;„ff´%e ñÍíZþÊROèéHÍ–uT‚©ÕfŒÞnÇc±ØúJÊVR²”¬…d+!t…É—&\\™reÉ—&\\™reÉ—&\\™reÉ—&\\™reÉ—&^‘reé&\\™reÉ—¤\\™reÉ—&\\™zEé&\\™reÉ—&\\™reÉ—&\\™zEé¤^‘reÉ—&^‘zEé¤\\‘zEé¤^‘zEÉ&^‘zEé¢^‘zEé¤^‰z%è—¢^‰‘\"T¨P2 e@È‘*T­Ì¨[™P2·2 dDÈ‰z%è—¢^‘zEÉ&\\™t…d+!Y¤úNÇc±Øíù§ýä!ù:¥u! ‹…ãQ]ŠèI|zs™ ¤SÅì\ZÁhëEW‘J“ôÍ\\¿äòu\ZîÎw;þ\nð¡B…\n@¤\n@¤\n@¤\n@¤\n@¤\n@¤\n@¤\n@¡HHHHHH))))(R R R R R R R R R P¤\n@¤\n@íáØìRb;Š@ìRc±Øìvðìvðìv;ŽÞŠ@ìv;Š@¡HHHHHüÎçr³˜¬Ôÿ\0J^Yÿ\0yy¿ÁXGÚxB))¡þä|zŒó&Óéé©&£Ÿ¯ß´]I)$ˆO%<|Wa\"ëEXñiœZg‘Å¤qhœZ\'Å qh[sŒnqÎ-¹Å·8ÆÇØãccŒjqN1©Æ58Æ§ÔãcSŒjqN1©Æ58Æ§Ôã\ZœcSjq­N5©Æµ8Ö§\ZÔãZœkSjq­N5©Æµ8Ö§\ZÔãZœkSjq­N5©Æµ8Ö§\ZÔãZœkSjq­N5©Æ´8Ö§\ZÔãZœkSjq­N5©Æµ8Ö§\ZÔãZkSjq­N5©Æµ8Ö§ÐãšœsCŽhqÍN9¡Ç58æ‡ÐãšsCŽhqí=¡Ç´8ö‡ÐãÚ{ChqìÎ=™Ç³8ö‡ÌãÙœ{3fqÍ9¡Æ´8Ö‡\ZÐãZkChq­N5©Æµ8ÖÇ\ZØã[csŒnqˆb‰Æ\"qˆœbG™Å¦qiœZg!ÅÈq8¸\\	al’ËåŸ÷‡—ûóõ$fUg‘›­hÄqÔd)¤C§#BhÅvñ’TUQº×C•Nß¦UÂÑ¤’Á4äN	ÏûÈCËýþY´V5Œ:s({Ë,²Ë	dñUë·b&šIB‰|)?ï!/÷ñ,ÿ\0¼„<¿ßÄ³þòòÿ\0ÏûÈCËýù”ŸµŽÌ¦Ì\r˜06Mƒb&ÄLó™ç3¨gTÌ©™S2ÆeÌË™\\™\\™]]™™™™—½/z^ô½é{Ò÷Åï‹ß>/|\\ø½ñsâçÅÏ‹ž—½.z\\ô¹ésâç¥ÏKž—>.|\\ô¹ésÒç¥ÏJ¾*ô«Òç¥ÏKž—=.|\\ô¹ñsÒçÅÏKž—=.z\\ô¹ñsâ¯Š¾*ø¹ésâçÅÏKž—=*ô¹ñsâçÅ_z\\ô¹ésâ¯J½*ô«Ò¯Š¾*ø«â¯Š¾*ø«ã×¸õÅ_|zâ¯\\zã×ž¼õç¯=yëÊ¿*ü«ò¯Ê¿.|\\ô¹é{Ò÷…ïŽÌŽÌŽŒ®Œ®L®L®L®Ë™–3,gTÌ©C<æÄæÄÆÄÆÄÄ#XB>Yÿ\0yy¿‰gýä!åþþ%Ÿ÷‡—ûø–ÞB_ïâYÿ\0yy¿‰gýä!åþþ%Ÿ÷‡—ûó)>9jlç3¨gPÎ©™c2ægW&WFWFWFGfG…ïKÞ—¾/|\\ø¹ñsâ¯Ê¿>à}Àõç¯>à}Àû÷î¯>àzó×ž¼õç¯=yëÏ^zó×”~zó×ž¼õç¯=yëÏ\\zã×¸õÇ®=qëÏ^zó×¸õÇ®=që\\zó×ž¼õç¯=yëÏ^zó×ž¼õç®=që\\zó×ž¼õÇ¯=yëÏ^zã×¸õÇ®=yëÏ^zó×ž¼õÇ¯=yëÏ^zâ\\QñëÊ>(ü£òÊ?(üõç¯=yëÏ¸p>à}À¯P*ü«ò¯ËŸ—?.~\\ü¹ùsâ÷ÅïLL¯®Ì®Œ®ŒÎLÎLÎë™Õ!Þ–oÞB_ïâY¿yHy¿‰gýä!åþþ%›÷”‡—ûø–oÞR_ïâY¿yHy¿‰fýå!åþüÊM%¬¹Õ3,fperetetdvdxdz^ô½é{âçåÏËŸ•~Uù^ }Àû÷×Ÿp>àS¨ê”~QùGå¯Ë_–¿-|Züµñkâ×å‹_–¾-|Zôµñkâ×Å¯‹^–½-zZôµécÒÇ¥¯K^–=,zXô±ékÒ×¥¯K^–=-zXô±écÂÇ¥K–=,zXô±ácÒÇ¥K–=,zXô±écÒÇ¥K–½,zXô±écÂ×¥K–=,zXô±écÒÇ¥K=,zXð±écÂÇ…<,xXð±ácÂÇ†7…=,zXøµñkâ×å”ê¯Êu@§P>à}Äû‰÷î\'ÜO¸êz^ W¨?.êÏËß™™^]™¬e„cä›÷”‡—ûø–oÞR_ïâY¿yHy¿‰fýå!åþÿ\0D¨Q£IþÁT&$ðžtÓ…T•fóÆÔÉ\\5žhK$ÎZÉ4eŸá¿yHy¿;¨ÑšâN¼ö\'Å»\Z1]2©:ßÇXéPõñ~ã:ô‡Kþiÿ\0èÂ|•Â¯Ô¤~›÷”‡—ûóõÑŒçK™9Ru7ØT–ig–é„bŠ‡Nl¢Ï2§R_\nXåÖµ„WŸ¥ÿ\04ÿ\0ôéío<ó­+E9¯8£–©Mb›¬Mæû}È19\' ÄäXœ‹#‘dr,ŽI™É39&‡$Ðäš›C’hrmM¡É´96‡&ÐäÚœ›C“jrmM¡Éµ96§&ÔäÚœ›S“jrmNM©Éµ96§&ÔäÛ›c“lrmŽM©É¶96§&ØäÛ›S“lrmŽM±É¶96Ç&ØäÛ›c“lrmŽM±É¶96Ç&ØäÛ›c“lrmŽM±É¶96Ç&ØäÛ›c“lrmŽM±É¶96Ç&ØäÛ›c“lrmŽM±É¶96§&ØäÛ›c“lrmNM©Éµ96§&ÔäÚœ›c“lrmŽM±É¶96Ç&ØäÛ›c“lrmŽM±Éµ9&§$Ôäš“C’hrMI¡È³9g\"ÈäYƒ#brMö&û}‰¼ÄÝbn17›Œ¶FÓ3e¡°ÔÎÔÎØÌØíðòMûÊCËýùúŒŠ¨ÚYRA‚êÍþg=;QQž´Rq,¾3Ï*rM<èÉ;÷‘N§üŽ—üß/RþtþŽÇc±ØìV`V`V`V`V`V`V`V`V`V`V`V`V`V`V`V`V`V`V`V`V`V`V`V`VJÀ¬\nÊV`V`V`V`V`V`V`V`V`V`V`V`V`V`V`V`V`V`V`V`V`V`V`V`V`V`V`V`V`V`v;ŽÇc·—±ÛÃ±ØìR!A¿ñQòÍûÊCËýùÔYÚšÈ­Å)é‰J¡þäˆûøuH+2IBI7“ÿ\0R‘{oùäËwøäÕ“7Œíš©5êi±4Øš¬VF³3Y™®ÐÀÐÀÔÂØÂØÄÜÄ\Z&4h˜Ñ1¢cDÆ‰\Z%‰$X‘Ä‹R-Lµ2ÔËS-Lµ2ÔËS-Lµ2’¦Z™je©–¦Z™IS)!I\nHRBÔÊHRB’µ2ÔËS)!I\n&RB’¢e$-L¢e$)!IS-Lµ2ÔÊ&Z™je©”¤…©–¦Z™je©–¦Z™jE©–¦Z‘bE©–¦Z™je©–¦Z™je©–¦Z™jE©$X‰b&4Lh˜Ð17170¶0¶05045Ú\ZìÍff«#U‘¨ÈÓbi14˜š,M&ƒbqìŽ9‘Ç28Ög\ZÐ’XI$²CÉ7ï)/÷ç|Þ.…ˆ®³U#jïÖY;šÚhÏÔñ¬N§üŽ•üß…fýå!åþÿ\0ò$§û%A¬½åønoÞR_ïâY¿yHy¿‰fýå!åþÿ\0ôT)ÿ\0‚›÷”‡—ûó)aðÞü»¨êÜJõî\'ÜO¸Ÿq)Ô\nuÞ ZüµùkòÇÆ7Æ7†7†\'f\'f\'F&&Ì\nšê\Zê\Zê\Zê\Zê\Zóšóšó\Zó\Zó\Zó\Zó\Zó\Zñ5âkÄ×‰¯^&¹®k\Zæ±¬k\ZÆ±¬k\ZÐ5h\ZÆ´\rh\ZÐ5 k@Ö­Z´\rh\ZÐ5 k@Ö­Z´\rh\ZÆ´\rcZ±¬k\ZÆ±­Z´\rcZ´\rh\ZÐ5 k@Ö5cXÖ5cXÖ5cX×‰­Z&¼Mxšó\Zó\Zó\Zñ5æ5æ5æ5ç5ç5ç5ç5Ô5Ô5Ô5Õ0,a\\Â¹…Á…É…Ñ‰Ù‰áñcâÇå½@·¨–õDû‰÷îGÜJõ½D»¨¿%­°»É7ï)Š¦ýå!åþþ%›÷”‡—ûø–oÞR_ïâY¿yHy¿‰fýå!åþÿ\0ééÿ\0\nŸ–ž4ð§…\nð¡O\n(P¡B…\n(P¡B…\n(P¡B…<(P§žž4ÿ\0¬›÷”‡—ûó)šŸáû‰÷î:Gå¯Ë_=,zcxcvctbtbrbpa\\Â¹c¦\n0NkÌkÄ×‰®kšæ±­Z´\riMiMiMi\ri\rdÍdÍdÍdÍdTTMTMTMT\rT\rT\rT\rT\rVæ«sU¹ªªªÜÕnj·5[š­ÍVæ«sU¹ªÜÕlj65\Z­Væ£cU¹ªØÔlj65\ZFÆ«sU¹ªÜÕnj75[š­ÍFæ£sQ±¨ØÔlj65\ZÍFæ£sQ¹¨ØÔnj75P5P5P5P5P5P5P5P5Q5Q5R5Q5R5R5R5S5S5d5S5¤5¤5¥5¥5¥5cXÖ5xšñ5æ5æ5æ5ç0(`XÀ±…Á…Á‰Ñ‰Ñ‰ÙécâÇåËzoP)ÔJu#îGÜˆV»É7ï/š¥J•*T©R¥J•*T©R¥Jù«ðuÓMXxÍíñD‘¤Þ3ÿ\0_ÃÛÂoŠdöð›ßâ™høMïñOÿ\0~÷ø¦?´¾ø¦oèŠgö>ÿ\0ÏìCØ›ßâ™ý‰}‰½þ)ŸÚ¾Âžÿ\0WÂ¾&ÿ\0ä—Ø[ÞŠ¥J•ð©_\n•òWÂ¥|*WÆ¾J•ñ©_ÉR¥|káR¥|jWÆ¥JøWËR¥JøT©_\n•+áR¾5+áR¾*T©R¥JøT©_\n•*T©R¥J•*T©R¥J•*T©R¥J•*T©R¥J•*T©R¥J•*T©R¥J•*T©R§ÿ\0rö{ÊT©R¥J•*T©R¥J•*T©R¥J•*T©R¥J•*T©R¥J•*T©R¥J•*T©R¥J•*T©R¥J•*T©R¥J•*T©R¥J•*T©R¥J•*T©R¥J•*T©R¥J•*T©R¥J•*T©R¥J•*T©qR¥J•*T©R¥J•*T©R¥J•*T©R¥J•*T©R¥J•*T©R¥J•î¡×ie*T©R¥K‹Š•.*T©R¥J•*T©R¥J•*T©R¥J•*T©R¥J•*T©R¥J•*T©R¥J•*T©R¥J•*T©R¥J•*T©R¥J•*T©R¥J•‰R¥J•*T©R¥J•*T©R¥J•*T©R¥J•*T©R¥J•*T©R¥KŠ•*T©Râ¥J•*T©R¥bT¬J•‰R¥J•*T©R¥J½üÿ\0¦¥J•*T©R¥J•*T©R¥J•*T©R¥J•*T©R¥J•*T©R¥J•*T©R¥J•*T©R¥J•*T©R¥J•*T©R¥J•*T©R¥J•*T©R¥J•*T©R¥J•*T©R¥J•*T©R¾*T©R¥J•*T©R¥J•*T©R¥J•*T©R¥J•*T©R¥J•*T©R¥J•*T©R¥FÐíá<.’2ŠKÌÆc1˜Ìf3ŒÆc1˜Í4LÆc1š&h™¢f‰š&h™¢f‰š&h™¢f‰š&h™¢f‰š&h™¢f˜Í1šc4LÑ3Lf˜Í1šc4ÆiŒÓ¦3Lf˜Í1šc4ÆiŒÓ¦3Lf˜Í1šc4æiÌÓ¦3Lf˜Í9šs4æiÌÓ™¦3NeœË1–s,æYÌ³™g2ÎeœË9–s,æYÌ³™g2ÎeœË9–s,æYÌ“™g2NdœÉ9’s$æIÌ“™\'2NdœÉ9’s$æIÌ“™\'2NdœÉ9’s$æIÌ“™\'2NdœÉ9’s$æIÌ“™\'/œÉ9’rùËç/œ¾rùËç/œ¾rùËç/œ¾rùËç/œ¾rùËç.˜ºré‹§.œºré‹¦.˜ºbé‹¦.˜ºbé‹¦–iæ–ñQ+cTÕ5MSTÕ5MSTÕ5MSTÕ5MSTÕ5STÕ5MSXÕ5MSTÖ5STÕ5McXÖ5cXÕ5MSXÕ5SXÖ5STÖ5cXÖ5McXÖ5cXÖ5cXÖ5cXÖ5cXÖ5cXÖ5cXÖ5cXÖ5cXÖ5cXÖ5cXÖ¬k\ZÆ´\rcXÖ­Z±¬k\ZÐ5h\ZÐ5h\ZÐ5 k@Ö­Z´\rcZ´\rh\ZÐ5h\ZÐ5 k@Ö­Z´\rh\ZÐ5 k@Ö­Z´\rh\ZÐ5 k@Ö­Z´\rh\ZÐ5 k@Ö­Z´	„¤?óôÿ\0ÇÿÄ\0)\0\0\0\0\0\0\0! \"`01@AQa2PpBR€ÿÚ\0\0åˆD\"†a„B!ˆD\"\"\"„B „B!ˆ H ‚„B!ˆD\"„B ‚ ‚ ‚ ‚ ‚D\"A„B!CóÇ÷õ	òüóýøŸ¨¿ßž¿ID¢Q(”J%‰D¢Q$¢ID¢Q(”J%‰D£0Ã0Ã<až0Ã0Ã0”a†é†ã0Ã0Ã0Ïãõ~WÔß•é‡æÒß•éT!~ú´³œêþâý\"d2†C*Ê²¬«*ÊôW¢½eY†C!Èd2¬†C!Èd2†U•d2½è«*Ê²¬«*Ê²¬¯EY^ŠôW¢½è¯Ez+Ñ^ŠôW¢½ez+Ñ^ŠôW¢½è|µûðü¯Gý#üøãõÙÏü—•hFši¦ši¦ši¦ši¦ši,–K%’Éd²Y,–K%“Ñ,–K%’Éd²z\'¢z%’Éeº%–e™fY–d²Ì³,Ë2Ì–K%’Éd²Y=Ébn\Zòü¯Fµ1¿Ó•éoÊú›ò½pÃ0Ã0Ã0Ã0Ã0Ã<a†ãñ†ç?è°Ãô~WÔß•õ7å}Mù^›ã|o7Æþ÷ß\Zi,ÒY¾Úi¦›ë¿Ë’_£ò¾¬¾¬½e~,3ÆI?ƒ?ž0ÏLþažëêËÕ¦¿Ö¿öGÓ¢Ô™XÑ7òBSd,}&æ;Dâ!Ê²¬«*Ê²¬«*Ê²¬«*Ê²¬«*Ê²¬«*Ê²¬«*Ê²¬«*Ê²¬£(Ê2è£)ÑFS¢è§E:)ÑNŠtS¢è§ENŠ2Œ£(Ê²¬«*Ê²¬¯Ez+ÑNŠt4×²ôå|?ùxZ›9ýÃ?È¬OGÈž‰èù#ä|‘ò4Óä|‘ò>FšK%ši¤²Y=Ñ=è–ODôODôODôi,–OD²Y,–OD²Y,·Eº-ÑfK\'¢Yn‰d²z\'¢z\'¢z>FšK%ÿ\0~«ÑJr¼jsÎÿ\0M_V_ÊÏàç¦xÃ0Ï8a†zaž¸a†ažpÏuõeýýY}Yzi¦’Í4Ó|i,ÓMôßé¾e’ý7øúK%šK%’Éd²Y,–K%’Éd²Y,–K7Ý}Y}Y/0Ï8gœõÏäa†až0Ã0Ã=×Õ—«Mi|C‰?É¯¦/E©”JSëÇ/;>‰Ä$ÙVU•eYVU•eYVQ•eYVU”eFQ”eFQ”eFQ”eFQ”eFQ”eFQ”eFQ”eFQ”eFU”eFQ”eFU”eYFQ”eYVT©AóËÓ•<ôqÂkg–¾Qá&’Fš|‘ò4ÓM4†i¦ši¦“Ñ¤²Y=ÉdôOF’Éd²Y¦’Éd³If’Éd²Y,ž‰èž‰èž‰è–K%’Éd²z%’Éd²Y,ÒY,Ò\\G²ô•¿ß…“ÿ\0’/Lñ†a†a†a†a†a†a†a†ëžsÎã=pÏg¶yÏãñ†ažëêËÿ\0#‡øW¤³M7Æý5{¿§¯«/L0Ã0Ã0Ã0Ã?&yÏÇ†za†a†a†gŒ0Ïa†ã0Ãû/Ú[>+þÉŸÔ®¥ršm,láMÎ3¾b!±~’*T©R¥QTUEQTT¡R¨¡B¥J(P¡B…\n(QE\nEDQETUEQTUEDUEQTUEQTUEQTUEQTUEPÔ~.ü¹9øõ>8ýö„£¤ßˆd2†C!Èd2†C!Èd2Ò¦ši¦ši§Èù\Zi¦ši¦ši¦ši¦ši¦šC4ÓM4ÓM4ÓHd3O–“ÿ\0ËgÆa†yÏäá†a†a†a†a†až˜a†aŸùöúCóñAüA!üG˜Žÿ\0ª1â<Gÿ\0„d’I$ŸI$’I&a>pÃ3Ò$“ö?Ÿ	sÖsÌ7ôŸÔSÐ—.ký¶,bÇ<ÿ\0³úB«Ò9#“â|‰Ÿâ|O‰ŸâG$r|ÉàGpGrGpGpG$pG$rG$rG$rG$rG$rG\'ÄŽHäŽHäŽHäŽHäŽO‰Ÿ9#’9#‚9>pGpGrG#J_‡”œ‹:ŸþÚpÓLzÛEQQTTª*Š¢¨ª*Š¢¨„B!EJ•*Š¢¨ª*Š¢‚R¨ª*A ‚\n¢¥Q„B!DˆEQQTUEQTU ª*ˆ ‚?I‰%á¤ÿ\0p¾œ¾Á?ö»ø¤ŸO××Ôß•üLöÏÁ†{á†xÃ0Ï8gŒ0Ã0Ã0Ïë‰ù_S~WÔß•õ7å~]4ßçM4ßÁ¦›ë¦øÓM7Æ›ã|i¦ši¦ùßýtÓM4–K7ð¿+êoÊôQ-9àæ51$äQ0òúKò½Iõ*½J_ïÇ¾ö%\'Ë>$òO$òO$òO$òO$òO%¹\'’Ü–ä·%¹-ÁnKp[‚Üä·%¸-ÉnKò[’Üä·%¸-Ánp[’Ü–ä·%¸-ÁnKr[’Üä·¸-Ánp[’Ü–äžIäžID¢y\'’y>\'ÄøŸx\ZPÚðü¯DÓ”Ö9ñòZ¹m·-Îøª*Š¢¼”ä¯%y+ÉTUEQTUˆEQ„B!ˆD\"„B!ˆD\"„B!Š¢„B!Š¢¨ª!ˆD\"ª*Š¢¼”ä§%9*Š¢¨ª*Š¢¨ª/ÞéÏÊú›ò½´ßM4Ó}´ÓM4ÓM4ÒY,–K%’Éd²Y,–K%’Éd²Y,ÒY,–K%’Éd²Y¦ši¦ši¦ši¾4ÓM4Ó}_•õ7å}Mù^¸a„þló†a†a†a†a†a†a†a†a†a†ø°ÃóžÊú²ú$ûÏáVV~Õ…øcÞþdG˜ñ HõXñ‚=_éø_¥æó’<ÁcÌâ=ãÄG¤AGˆ#ÄA ‚ ‚ ‚<AAA×ëÇ?¯AG¬x0A ‚ ‚#Äx„AAæ<Ážñæ<ÇáÍßëÇ=$]Eù.‹¢ü—EÑt_’èº.‹¢èº.‹¢è¿%Ñt_’ü—EÑt_’èº.‹¢èº/Ét]EÑt]EÑt].\\¹råË—.\\¹råË—.\\¹råÑt]EË—E‘dYE‘dYEÐÜýcÿÄ\0)\0\0\0\0\0\0\0! 0\"1@`pABPQ€a2RÿÚ\0\0bß¡i®_ÚÏÑ¦‘‘‘‘‘‘‘‘‘ŒŒŒ„4ÓMç}„!¼GÌf‘ŒÑÉÌâ2ši¾ÜôÆi¾·ö³ôÞoÙÏÑXÇòñAüþGó~ªR”¨¥â•šR¯v¢¢óx¨¨¨¨¨«Œ*õT^**/8TR¢˜TUê~…Ï—í?o-¢¢¢¢¢¢¢¢£0Ã0Ã0Ã0Ã0Ã0Ã8Ã0Ã0Ã0Ã0Ã0Ã0Ã0Ã0Ã3ÚO+úoñLæsBØßnq9œN\'ñoüœg§=Ûï_­¥/ãØOsIèžÔæ„âq	Äâ„!Bq	÷½^ëíŽöR*ø9¾Ý/7‹ïÞ)x¾ŠR”¥â—×Kí_oÉüCù.D?•\\>¬øL0Ã0Ã0Ã0Â¢£0Ã0Ã>„Ã0øO„Ã>0Ã*0¨Ã**0¨¨Â¢¢¢£***öÿ\0ããþ<üSB„!B„\'ŸäKí_]æú¯±JR”¥)JR—‹Íõ_ÉP„!Bs9„âzçÒg«=Üü†òûoá¯üŸ¢Cù·Å)KÍ/ŠaJUÍ)x¥)KÅ/¢”¾«Åâûê|¿hõq>QÜ¼6›l¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¥EEEEEEEEEEEEEEEEEEEEEEEGdTTTTTTTTTTTTTTTTTTT?jú/ËñäþO?Â5••”¬¬¬¥eee)YYJVVR•••”¬¬¬¥/”¼VR•••”¥+)J^)KÅæû¼WÅ++) áœç£3Œ0ÏVø;WÅþþÑkä‡T¹ ñxŸ·È¹Fi¦ši¦ši¦ši¦ši¼i¥|iM7ãJo\Zi¦ši¦ši¦ši¦ši¦ši¦ši¦ši¦ñ¾ß“ÿ\0ËøµÇ“Ä\\|ö********;\"¢£²***;‘Ù¨ìv;ŠŽÇbŽÇb£±Ø¥)JR”¥)NÅ;ŠS±Øìv;ŠS±ØìR”íí¦Ðß	Âþ1ÏãpÃ0Ã8Ã8ÏÈsÕ9„d!ÈÉÄ###æ22>g˜BqFBqÈÈB22ñÈFB‘‘‘„##÷o”¥/ø8Ã0ÃôçÒçµKé¾š_c9Ã3îFÞ5kx¨ñÏ´\Zq¢ä?F›r\r3â##4žFši¦ši¦ši¦ši¦ši¦ši¦ši¦ši¦ši¦‘ši¦šFi§Äiñ{{Œý\ZáüªOæ\\vgfvgfvgfvgfvgfvgfvgfvgfvgfvgfvgfvgfVVvgfvgfvgfvgfvgfvgfvgfvgfvgfvgfvgfvgfvgfveegfvgfvgfvgfvgfvgfvgfvcwÚ¬¯„Ú+üQ†zo4Ï­Ïo3ÚÃ=8gãØÈÈÈB„####!¦šiB„!BqB˜Bâ„!Obs¤f‘‘‘‘ñ¤dàÜ0ÏFg_Eâ—ŠR”¥âñKü&gaœçÜ1Å:ù/cdŽ} Ö!¦´ÿ\0œy|‘r\rþ£LŒŒŒŒŒŒêÎ¬êÎ¬êÎ¬êÎ¬ëäugVuò:ùYÕ|ŽŒéätò:y<ŽžGO#§‘ÓÈëätò:ù<Ž¬êÎ¬êÎ¾GVugO#¯‘ÕYÕÕ|Ž¬ëäugVuò:³«:²2222223M4ß×ÙiÄ×èø¾26’I®;3·‘ÛÈíävò;y™YYYYYYYYYYJR²²²²²²²²²²²²²²²”¥â”¬¬¥eeee)JVVVVVvò;y¼ŽÞGo#³;3³;y™Ù·øÛ0ÏUô_à³ÙÏw8Ã0ÏÇ„!OåáOVþ5_k/µ—ß÷øÕüU/±JRú©}ËÅö×Ö_s}íú‰ì.a9œB„\'0„!BêB„!B„!B„!B„!B„!B„!B„!8„\'Û?ÿÄ\0C\0\0\0\0‘’¡Ñáað!1AQp¢ 2Rq±\"0BÁ3@bâ#C PSr€Ò`ñÿÚ\0\0	?ÿ\0Ö:>Îƒ è:ü¤‰ý(©ë&‚Ä°X–žÄ´ö%§±-=‰)ì¤”ÖRJ{)%5”’šÊIMe$¦²’SYI)¬£é¬£éuK¨ú]GÒê:—QÔºŽ¤ÔZME¤ÔZME¤ÔôMODÔôMODÔôMODÔJMD¤º‰KuIuKuKuKuKuMuMu#¦º‘Ó]Hé®GO‘>DtùSäEO‘>DPdED0dADåÁ9E‘YpAe<YÑæS32š<ÊfæS32™¹”ÍÌ¦ne2fR¦e2fS&|É™L™”É™L™”É™Kõ”É™L™”É™L™”É™LÜÊdÌ¦n|ÉŸ3s)›™LÜÊfæS72™¹”ÍÌ¦nE;sà¦ne3r)“\"™2)›™L™”ÍÈ¦LŠvåÁLÜŠvåÁLÜŠväS³\"¹”ìÈ§fE;2)ÙŸ;2)Ù—;2 \"òà‚<¸ .#Ë‚òà‚<¸ .#Ë‚òà‚<¸ .bË‚òà‚<¸!‹\"²à†¸ ‹\"r!‡.bË‚rà†ˆ ÈŠˆ ÈŠ¸#ƒ.àÈe>C)î£i®§QþgGû	ö–;K¥Ž·[£§Ö‡OC½IÐtô7Ô½?c•î÷£7:ìïTØTT_b¡ÓÕOoAÖþë;¥=Â¿¬ïg«äüÎ±3¬H¯zû[ðCÔÎŽªwŸŸûÇ?Ôz/µÓÈ½V3ñ¯¿ôAÊäoãk¿qéÉìîqÝûžÄ ÷/JþŸ(=ö\'À_[ÿ\0ŠG|\Z\'C[êj\nÔV¯OñÐž¿Ôü‡çþÇþÛ¿có·÷:Îèöû…{ºzÊžÏ€­W*t7«ð÷ýŠÿ\0W«Ø+ì9öû}‡>ÃŸaÏ°çØs¬9öëu‡ºÃÝaî°õ°÷XzØzØ‘lH¶$[hH¶%Ð“B]	t%Ð—B]	t%Ð™	P™	™	™	™¤Í\'i;	ØNÂv°„ì\'a;	ØNÂv°ž2xÉã\'Œž2xÉØO<dñ“°„ì\'a;	ØNÂv°„Ì\'a3	ØLÂf0™„Ì&a3	˜LÂf0™„Ì&a3	˜LÂf0™„Ì&a3	˜LÂf0™„Ì&a3	˜LÒf“0™„Í&i3IšLÒf“4™¤Í&i3IšJ„¨J„¨JI¡&„šh/K}?äýŒN»¿SÚõê§èŸsòŸûûnýÎßßîþeýþEþeÿ\0\'ùº-ê?/O÷ûžÅoAíEëx‘Q?Uõ7û°·¥}¤ i\Z@Ò4¤\r iH\Z@ÝHZ@ÝH©u!B!K©\n]HRêB—Rºê»ê¤Z®äZ®äZ®äZ®äZ®äZ®äZ®äZ®äZ®äZ®äZ®äZ®äz®äz®äkuÜn»‘­×r5º‘­ÔbÝwë®ãë¹\ZÝF:ë¸Ç]w·QŽºŒu×qŽºŒu×qŽºŒuÔk®1×QŽºŒuÔc®»Œu×qŽºŒ[®ãuÜc®»Œ[®ãu·]Æ:ë¸Åºî1×]Æ:ë¸Åºî1×]Æ-×q‹uÜbÝF-×q‹uÜbÝw·]Æ-×q‹uÜbÝw·]Æ-×q‹uÜbÝw·]Æ-×r5ºîF·]ÈÖë¹\ZÝw#[®äkuÜn»‘­×r=Wr=Wr=Wr5ºîGªîGªîGªîGªîF·]Èõ]Èõ]ÈõR=Wr=Wr5ºîGªîGªîGªîGªîGª‘ê¤z®äz®äz©ªGª‘ê¤z©ªGªîEª‘j»‘j¤HBš¦¤-ªß‡ù6?ñ¯¯ ü‰÷=Kíc»ÄsžÇ§°WÉðj&Èˆ©ü-ü©þé²±üªÞ’¦,\nˆ°*\"Ä¨‹¢\nˆp*\"Ä¨‡¢,Jˆ±*\"Ä¨‹¢,Jˆ±*\"Ä¨‹xp*\"Äž\nˆq\'‡x1\'ƒx1\'ƒh1\'‚ÄÐbMO‰5>$Ôø“SâKO‰->$´Ø’ÓØ–›JkÓbIMbJkSYGÓYGÓX}5”’šÊ>šÊ>šÊ>šÊ>šÊ>šÊ:šÊ:šÊ:šÊ:›Qiµ›Qiµ›Qiµ=SÑµ=SÑµ=SÑµ=SÑµ=SÑµ=SÑµ=SÑµ=SÑµ=SÑµ=SÑµ=SÑµ=SÑµ=SÑõ=SÑõ=SÑõ=SÑõ=SÑõ=SÑõ=Qiõ=Qiõ=SÑõŸSÑõŸSÑõŸQiõŸQiõŸQÔöQÔúŽ§²Ž§Ôu>£©ì¢Óê>(ê}GAeOe\rGSÙEƒQÔúŽ§ÔtQÔú‹O¨è5O¨è,£©ì¢Á¨ê{(°j:(ê{(ú{(ú{(ø,£à²‚ÊI‰ ±$%ƒIaÇ’h±äž,y\'J†cÈä{¿2z¿ð™±·à­éõ•,Ã’¦<9*cÃ’¦<9*cÃ’¦<9*cÃ’¦<9*cÃ’¦<9*cÃ’¦<9*cÃ’¦<9*cÃ’¢,9*\"Ã’¦<9*\"Ã’¢,9\'‡IáÃ’xqäžy*\"Ã’¢,y\'‹Jˆ±ä¨‹Jˆ°ä¨‹Jˆ°ä¨‹Jˆ°ä¨‹Jˆ°ä¨‹IâÃ’x°äž,y\'‹IâÃ’xqäž,9&‡I¡Ç’h1äšy&ƒI¡Ç’h1äšy&ƒI Ç’h1ä–y%ƒI Ç’X1ä–y%ƒI`Ç’X1ä–y%ƒI`Ç’X1ä–y&‡I¡Ç’hqä–y%ƒIaÇ’X1ä–y%ƒI`Ç’X1ä–y%‡IaÇ’Xqä–y%‡IaÇ’Xqäšy&‡ùÃ$°ãÉ,8òM<“E$±cÉ4XòM<“E$ÑcÉ4XòM<“E$ÑcÉ4XòM?ò&‹I£Ç’h±äš<äM?ò&I£Ç’hñÿ\0‘31äš<9&I£Ç’hñä˜òLÌäLÌy&f<“G$ÑáÉ4xòLÌy&I£Ç’hðäš<y&f<“3I™$ÑáÉ4xòNÌ9\'f<“·IÙ‡$íÃ’váÉPÜ9*J„Ã’¥0ä©L9*~’§èB¥qB©qB©Ø¡TüPª}r½2ÿ\0à\'*FžôTé*›RÌ\n–`T³¥˜rT³¥˜,Ã’¥˜rTÇ‡%K0ä©f•,Ã’¥˜rTG‡%K0ä©Jˆðä¨J˜ðä¨Jˆð*#Ã’¢<9*#Ã’¢<9*PÌ\n†`T³J†aÉRÌ\n†`T3¡˜Ã’¡˜rT3J†áÉPÌ9*‡%Cpä¨n•-À©n•-Ã’¡¸rT¦Kp*[R˜rT7J†ãÉR˜\rÀ¨n•\rÃ’¡¸rT7J†áÉPÜ9*‡%Cpä¨n•)%Cpä©Ly*J”Ç’¥0*¥1ä¨Ly*>’¡1ä¨Ly*J„Ç’¡1*J„Ä¨Ly*J„Ç’¡1ä¨úJ„Ç’¡1ä¨LJ¤¨úJ¤¨úJ¤¨úJ¤¨úP¨úP¨úJ¥\n¤¨úP¨úP¨úJ¤¨úJ…Å\n…Å\n…Å\n…Å\n…Å\n…Å\n…Å\n…²ŠŠÅ\n…Å\n‡Y\n…²ŠŠ­¨[!P¶B¡qB¡l…BÙ\n…²²²²²²²/²/²/²²2Y\n™,…L–B¦]6*eÓb¢]6*fÓb¢m6*&óàTOçÀ¨žüß‚z‹“Ô\\UwG½ÞßöëH¿éö]FHÞóÖ×zÑNž‡z“ éèEèõýi?øû5#;ÿ\0ÿ\0G5}Š‡OW§£Ôuº\"N—ôÿ\0c¯ÖöúþO¯CS×/züVÇý(žÕ#Vç±©Ð‡æ?©ê©û®Ó§­ú ªØÙíèöªŠî„õ=«û¡ø$NžŽô?:ÅoBb§±¬^·Éÿ\0Î§ýG5©Òöx©\n¢|QEë5}Š9Õ^ŸYìbtµ‹§¥;Á\'õ|w]]ø—Üˆ~\'C{ÔTjôôô¨¾µj¢»½EG9ëëTø}¥ŽÒÇic´±ÚXí,v–;K¥ŽÒÇic´±ÚXí,v–;K¥ŽÒÇic´±ÚXí,v–;K	-ŽÒÂIa$°’XI,$–äI,$–K	%„’Ü‰%¹Kr$–äI-È’[‘$·#d·#d·\"InFÉnD’Ü’Ü’Ü’Ü’Ü’Ü’Ü’Ü“ÏˆÙ-ÈÙ-ÈÙ<ø’Ü“ÏˆÙ<ø’Ü“ÏˆÙ<ø“ÏˆÙ<ø“ÏˆÙ-ÈÙ<ø“ÏˆÙ<ø“ÏˆÙ-ÈÙ-ÈÙ-ÈÙ<ø“ÏˆÙ<ø“ÏˆÙ<ø“ÏˆÙ<øŒ“ÏˆÉ<ø“ÏˆÉ<øŒ“ÏˆÉ<øŒ“ÏˆÉIçÄdž|FIçÄdž|FIçÄdž|FH2O>#$óâ2A ÇŒxÇŒxÇŒxÇŒxÇŒxÇŒxÇŒyÈÞFò7‘¼äo#yÈžDò\'8‰Ä.¹®B·![­Èuà‡^uà‡^êNŸò_Díôé_øz®oÃô=Švþ¿ju¤ào÷Sªž¾™ý==Â¤Œþ®¯¸èEÿ\0´äý¾ïÇäIÒ\"ˆ¢(Ž°×Xk¬5Öû•?É{×¬ž\'µ©Ôwê‡â{½H{\ZÅéû}DêŸ‰®^²‡¨½\'·®Þ‹ýØb±V!ŠÄ1X‚;ÇbìCˆc±v!ŠÄ1X†+Çb¬Cˆc±v!ŽÄ1ØŠ;Gb(¬Eˆ£±v\"ŽÄQØŠ;Gb(ìEˆ£±v\"ŽÄQØŠ;Gb(ìEˆã²Çb8ì„qÙã±v#ŽÄqØŽ;!vB8ì„qÙã±v#ŽÄqØ–#e†2ÃaŒ°ÆXc,1–Ëe†2ÃaŒ°ÆXc,1–Ëe†2Ãa°ÆØkl5¶\ZÛ\rm†¶Ã[a­°ÖØkl5¶\ZÛ\rm†¶Ã[a­\ZÑ­\ZÑ­\ZÑ­´Fh´Fhˆ5¢4Fhˆ\"‚ ˆ\"‚ ˆ\"‚ ˆ\"ŸõJßÂ¿åH×ßÑì_ì6G»ó;ØŸØõ½Þ¹çáö¯VF~þÊ6F;ó7Ù§¨ídø5Ô~$ÿ\0\rŸÝ~J÷ü«ïùWßÿ\0Õnÿ\0æMÙ§åèé*¾„*¾„*¾„*¾„*¾‚«è*“©0*“©0*“©0*¾‚©0*“«è*¾‚«è*“«èB«è*¾‚«è*¾‚«è*¾‚«éB«èB«éB©qB«éB©qB©qB©qB©qB©qB©qB©qB©qB©qB©qB©qB©Ø¡TìPªv(U?*ŠO²lU>É±Tû!TüPª}©~(T¿*_d*Ÿd*_d*Ÿd*_d*d²O²RY6*Ÿd*d²lTÉdØ©’É±S%“b¦K&ÅL–MŠ™,›2Y6*d²lTÉdØ©’É±S%“b¦K&ÅL–MŠ™,›2Y6*d²lTÉdØ©’É±Q-“b¦[&ÅD¶MŠ‰tØ¨’É±Q-“b¢[&ÅDºlTK¦ÅDºlTK¦ÅDºlTK¦ÅDºlTK¦ÅDºlTK¦ÅDºlTK¦Äòé±Q.›é±Q.›Ë¦Äòé±Q.›Í¦Äói±<ºlO.›Ë¦Äói±<ÚlO.›Í¦Äòé±<ºlO.›Í¦Äòé±<ºlO6›Í¦Äói±<ÚlO7Ÿy¼øÍçÀžo>óyð\'šüÏçÀžo>ó_‚y¼øÏ~	ç¿Óß‚yïÁ4÷àš{ðM=ø%žä³äI>D“äI>CçÈ|Ù›%6K÷»þU÷ü«ïùWßò¯¿å_Ê¾ÿ\0æLè»‘û•rY6*ä²lUÉdØ«}“b­ø¦Å[ñMŠ·â›oÅ6*ßŠlU»*ßŠlU¿*ßŠlU¿Ø«}“b­ø¦Å[ñMŠ·Ù6*ŸŠo²lU¿*ßdØª~)±Tû&Å[ì›o²lUÉdØ«’ÈUIdØª’É±U%“bªK&ÅSì›RY6*¤²lUIdØª’É±U%“bª[&ÅT¶MŠ©l›RÙ6*¥Óbª[&ÅTÚlUM¦ÅT¶MŠ©´Øª›MŠ©´Øª›MŠ™´Ø©›MŠ™´Ø©›MŠ™´Ø©›MŠ™´Ø©›MŠ™ôØ©›MŠ™´Ø©ŸMŠ‰ôØ©ŸMŠ‰ôØ¨ŸOÿ\0%Dúù*\'Ób¢}6*\'Ób¢}6*\'Ób¢}6*\'Ób¢}6*\'ÓbyôØž}6\'›M‰æÓb¢}6\'ŸÏ<úlO>›ÏçÀž{¦Äóß‚yôØžo>óé±<ÚlO7ŸyïÁ<÷àž{ðO=ø&žüM~	¦¿Ó_‚i¯Á4÷àš{ðM=ø&šüM~	¦¿Óß‚iïÁ,×à–{ðK5ø%šäÓß‚Y¯Á,×à–k’ÍrY¯Á,×&žüÍrY®K5Ég¹,×%šä³Ü–k’ÍrY®K5Éf¹,×%šä³\\’|‰&È’|‰\'È|ù›!ód:l”|Ù›%6J:\\”YrQeÉw;L—s´ÉwûÝÿ\0*ûþU÷ü«ïùWßò¯¿å_ó%’.sy*§Óbª}6*§Óbª}6*§Óbª}6*§Óbª}6*§Óbª}6*§Óbªm6*§Óbª}6*¦Óbªm6*¦Óbªm6*¦Óbªm6*¦Óbªm6*¦Óbªm6*§Óbª}6*§Óbªm6*§Óbª}6*§Óbª}6*§Ób¦}6*§Ób¦}6*gÓb¦}6*góàTÏçÀ¨ŸÏQ>›ß‚¢>D÷àž{ðO=ø\'žüÏ~	ç¿óß‚yïÁ<÷àž{ðM=ø\'žüO~	§¿Óß‚iîM=ø&žüO~	¦¿Óß‚iïÁ4×àškðM=ø&šä³\\–k’ÍrY®K5ÉfÈ–k’ÍrY²%šä³dK5É&È’l‰&È’l‰&È’l‰&È’l‰&È’l‰&È’l‰&È’l‡Íù²6CæÈ|Ù›!ód>\\‡Íù²6CæÈ|Ù›!ód£æÉGÍù²6CæÈ|Ù›!ód>l‡Íù²6CæÉGÍ’Ž—%6J:l”tÙ(é²QÓd£¦ÉGM’Ž›%6J:\\—qÒä»‹.K¸²ä»‹.K¸²ä»‹.K¸²ä»¦K¹Úd»¦K¹×Éw:ù.â?%ÜGd»ˆì—q«’î1n»ýîÿ\0•}ÿ\0*ûþU÷ÿ\09«*ü¤…/ÀŠˆ¾å°npÎ§SíjÈïk»†u:tõ§ YÐn’%N—uzÝ?$»ÿ\0›êëÿ\0Ÿ§ÃÄÿ\0	¾¤D÷©\nj~ûïÜö/CSì÷~ø¯Àõ«—¥ËÞ§ûŸ‘Ob7«â§ô½\\¿¢|’ïþoÁ¿°Þ¼ž¾·Á=c\"Tø§\'ã`ªˆïzÄ÷ýž¶µz¬ïwÇÀ÷9zËßÐ|ýÏcÓ£¤é__JªŠ®sþ>ï«ì…WªªÞž’_‚_‚¿¿r¹ÜoÁ¯Áß‚¿~ükÁ¼kÁ¼kÁ¼kÁ¼kÁ¼kÁ¼kÁ¼kÁ¼kÁ¼kÁ¼kÁ¼kÁ¼ëÁ¼ëÁ¼ëÁ¼ëÁ¼ëÁ¼ëÁ¼ëÁ¼ëÁ¼ëÁ¼ëÁ¼ëÁ¼ëÁ\n_‚x!KðB—à…/Á¼kÁ\n_‚¿)~Rü¥ø!KðD—à‰/Á_‚$¿Ir$¹\\‰.D—\"KðD—\"mø\"K‘%È’ü%ø\"KðDÛ‘6äI~’ü%ø\"KðFÛðDÛ‘6äM¹nD—\"mÈ›r&Ü‰·\"mÈ›r&Ü‰·\"mÈ›r&Ü‰·\"mÈ›r&Ü‰·\"mÈÛr6Ü‰·#aØFÂ6°„l#`ÆŒdccØÆÇ÷»ÿ\0›ðAˆ÷¿§Ö¿¯G¨j5ñúúSÞ‡õÿ\0\ný¿âKêNä÷©#\Zÿ\0ÂÄUö\'#ÚõGzúµ(cÖ‹ì_¸‹øÝûu„u†ºÃ]a®°×Xk¬5Ö\Zë\ru†ºÃ]a®°×Xkì1öû}†>Ãa°ÇØcì1öû}”cì1öû}†>Ê1ö#’Ê1öR9,¤rYHä²‘Ée#’ÊG%”ŽK)–R9,¤rYHä²‘Ée#’ÊG%”ŽK)–R9,¤rYHä²‘Ée#’ÄrYHä²‘Ée#’ÊG%”ŠK)–R),¤RYH¥²‘Ke#’ÊE%ˆ¥²‘Ke\"–ÊE%”ŠK)–\"’ÄRYH¤²‘Ie\"’ÊE%ˆ¤²‘Ie\"’ÊE%”ŠKIe\"’ÄrXŠK)–R),¤RYH¤±–\"’ÄRXŠKIb),E%ˆ¤±–\"’ÊE%ˆ¤²‘Ib),E%ˆ¤±–\"’ÄRXŠKIb),E%ˆ¥±–\"’ÄRX†KIblC-ˆd±¶!’Ä2X†KÉb,Bò¼‰ä/!yÏ‡Ýïþoáztx ¿ÄÅéoè~)ªÄ?£øÝö¹­èNY+5ÝeèõFõ=½\'ô5òS¿ù©ÒŠÔOés}J7£ýR)üOwãÝN•jô¨ˆnŽ’½ÿ\0*ûþU÷ü«ïù¨/ßTAPTAPVŠÑZ9£š*oÞïþb½:=Uè¿@ùóQóæ£çÍGÏšî>|Ôtù®ã§Íw>k¸éóQóæ£çÍGÏšŸ5Ü|ù®ã§Íw>k¸éó]ÇOšî:|×qÓæ»ŽŸ5ÜtÙ®ã§Íw6k¸³f»‹6k¸³f»‹6k¸³f»‹6k¸³f»‹6k¸³f»‹6k¸³f»‹.k¹Úæ»®k¹Úä»®k¹Úä»®K¹Úd»¦K¹Úd»¦K¹Úd»|—s¯’î#ò]Ä~K¸Éw:ù.ç_%ÜGä»|—s¯’î#ò]Ä~K¸ŽÉwù.â?%Üëä»ˆü—q’î#²]Äu×quÜk®»ˆë®ãVë¸Õºî5n»[®â:ë¸Õºî5n»[®ãVë¸Õºî5n»[®ãVë¸Õºî5n»[®ãVë¸ÍWq«uÜfª7^Fê£5]Æj»Œ×‘ºò7QšÔ`ÍTg›ŒÔfª3U¨ÍyªŒÕwªŒý÷æã5]Æ~ûŒ3÷Üf¤¸Â4#B4#B4###B?ÜÐÐ<ø‘¡\Z¡\Z¡\Z¡HšDÒ&‘4‰¤M\"iH˜DÂ&}îÿ\0•}ÿ\0*ûþU÷ü«ïùWßÿ\0§t}îPT±Pè:PTAPTAPTAPTAPTAPTAPTAPVŠ‚ ¨*\n‚ ä4TÑÍÑÍÑÍÑÍÑÍÑÍÑÍ4sG4sG4sG4sG4sG4sn9·ÛŽmÇ6ã›qÍ¸æÜsn9·ÛŽmÇ6ãÛqí¸ö\\sn9·ÛŽmÇ²ãÙqí¸ö\\{.=—ËmÇ¶ãÙqì¸ö\\‘—$eÇ²ãÙ½ßüÎŸW³¡z?a’î#ò]Ä~K¸ŽÉw\Zì—q®Éw\Zì—q®Éw\Zë®ã]’î5×]Æºë¸Õºî1n»Œ[®ãë¸Åºî1n»Œ[®ãë¸Åºî3UÜf«¸ÍWqš®ã5]Æj»ŒÕwªî3UÜUÜŒÍÈÈüÜŒŒŒŒŒŒŒŒÐÈÈÈÈšDÒ&‘4‰¤M\"iHšDÒ&4‰¤M\"iHšDÒ&0‰¤L\"iH˜DÂ&0‰„L\"a˜DÂ&2ÄL\"eˆ™b&2ÄL\"a,DÂ&X‰–\"eˆ™b&X‰„L±˜DÂ&2ÄL±™b&X‰–\"eˆ™b&X‰–\"eˆ™b&X‰–\"eˆ™b&X‰–\"eˆ™b&X‰–\"ŽÄL±,DË2ÄQØŠ;Gb(ìEˆ£±,DË2ÄL±v\"ŽÄQØŠ;Gb(ìEˆ£·Ëÿ\0•}ÿ\0*ûþU÷ü«ïþj ¨*\n‚ ¨*\nƒš9£š9£›qÍ¸æÜsn9·ÛŽmÇ6ã›qÍ¸æÜsn9·ÛeÇ²ãÙqì¸ö\\{.=—ËeÇ²ãÙqì¸ö\\{.=—ËeÇ²ãÙqì¸ö\\‘—$eÉrF\\‘—ËeÇ²ãÙqì¹#.HË’2ãÙrF\\{.HË’2äŒ¹#.HË’2äŒ¸ö\\{.HË’2äŒ¹#.HË’2äŒ¹#.HË’2äŒ¹#.HË’2äŒ¹#.HË’2äŒ¹#.HË’2äŒ¹#.HË’2äŒ¹#.HË’2äŒ¹#.HË’2äŒ¹#.HË’2äŒ¹#.HË’2äŒ¹#.HË’2äŒ¹#.HË’2äŒ¹+.HË’²ä¬¹+.JË’²ä¬¹+.JË’²ä¬¹+.JË’²ä¬¹+.JË’²ä¬¹+.JË’²ä¬¹+.JË’²ä¬¹+.JËýîÿ\0æ7­Ñì\"iHšBÒ°…¤,!aXBÂÈc!Œ†2ÆCv!ŽÄ1Ø†;ÇbìCˆc±v!ŽÄ1Ø†;ÅbìCˆc±v!ŽÄ1Ø†+ÇbìCˆc±v!ŽÄ1Ø†;ÇbìCˆ£±v\"ŽÄQØŠ;Gb(ìEˆ£±v\"ŽÄQØŠ;Gb(ìEˆ£±v\"eˆ£±,Eˆ™b6X‰–#eˆÙb6X‰–\"ŽÄl±,FË²Äl±v#eˆÙb6X–#eˆÙb6X–#eˆÙb6X–#eˆÙb6Xc,FËeˆÙb6Xc,FË²Ãb6X–#e†2ÃaŒ°ÆX–Ëe†2ÃaŒ°ÆXc,FË²ÃaŒ±,FË²Ãb6Xc,1–Ëe†2ÃaŒ°ÆXc,FËe†2ÃaŒ°ÆXc,1–#e†2ß{¿å_Ê¾ÿ\0•}ÿ\0Íõ\"zÕDNýÇdôˆßoBt{Ïk[Ò‡W¡ÓêO³£ªŸ÷ûÉ¾¡:’§»Ü¿¡íDUA[ÕT_b\nÞ¯iÔö{ºz>Iwÿ\07úÿ\0‰ÿ\0 -g©÷tˆ‚\"\'ÁÈ§ÿ\0þê{^½O:[\Zuº;ÄEE?Oý”÷±cÙ\Ztx©ìIîý×òK¿ù¿“ûŒézª¯[Ûd3:}\'Ghž¶»â\'J/µF·à‡çÜü©ö~w~çåN›\rF\'·Ô1ÎüN÷¯Ø­ê§³ÕÜ9–Ëm‡6ÃÛaí°ô°ô°ô°ô°ô±&„‰bD±\"X‘,I¢hI¢h„š!&ˆI¢h„š!&ˆI¢h„š!&ˆI¢h„š!&ˆI¢h„š!&ˆI¢h„š!&ˆI¢h„º&Äš!.ˆI¢h„š!&ˆK¢h„º!.ˆI¢è„š!/í±.ˆJºlJ¤ªJºh„«¡.ˆK¢­•IT•tØ•|ø©*é±*é±*èJ¾|	T•IWÏ*èJº©*’¯ŸU%RU%RU%RU%q*’¸•ÄªJâW¸•Ä®%q+‰\\JâW¸•Ä®%q+‰\\JâW¸•Ä®&q3‰\\LòW¸•Ä®%q+‰\\JâW©*’¯ŸU%q+‡ÝïþoäþçâW/YO‚ª~§çM¾ßÏ¹ùSìüîýÏÊŸq-^Ž…éî#K¡¨1.ƒè1·Û ÆÜcn5·\ZÛmÆ¶â2â2â2â2â2â2â2â2â2â2â2çRâ2çRçRçRçRçRçRçRçRçRçRçgs³¹Ô¹ÙÜê\\ìîvw;;ÎÎçgs³¹Ô¹ÙÜìîvw;;ðvwàìïÁÙÜìÎÎçgs³óàv~|ŒXüøø;;ðvw;3³¿ÇçÀXüøŸcóà,bÆ,bÆ,~|Ï€±‹Ÿcóà,~|Ï€±‹±ùð1c1c1c1c1c1c1c1cèÇF:1Ñ‹èÇF:1ÑŽŒtc£ŸÑŽŒtc£èÇF:1c1c?>Æ,bÆ,bÇçÀXÅŒXÅŒXÅïwÿ\07þß©ÿ\0 ½­ðQí|N†¢~ê{üo_ÓíüMþ6ø…äzÿ\0KSâ{^î³ÿ\0Ojü•ïþsúŸè_g+Q?Ò‚~ª¾Õý~âöO_oÁI›ÑÜ‡µ×Ú¿%{þU÷ü«ïùWßüÇ#RXîMÉc¹4w&ŽäÑÜš;“GrhîMÉ£¹4w&a4w&Œš2f0™„Ì&a3	šLÒV“4™¤Í&i3IZJž|	S]‰S]‰SRT%Mv%O>©®Ä©®Ä¿¾Ä©®Ä©eØ•5%Mv%Mv%Mv$Ñv$Ñv$Ñv$Ñv$K.ÄŸ¾Ä©®ÄŸ¾ÄŸ¾ÄŸ¾Äš.ÄŸ¾Äš.Äš.Ãô]‰4]‰4]‰4]‰4]‡è»h»h»Ñv¶]‡è»Ñv¢ì?EØzÙv¢ì=l»[.Ã–Ë°å²ì?EØzÙv¢ì=l»[.Ã–Ë°å²ì9l»[.Ã–Ë°å²ì9Ö]‡-—aÎ²ì9l»[.ÃeØrÙvë.ÃeØWYvìWa]eØWb»\nìWa]Šì+±]…v+°®ÅvØ®Â»ØWb»\nìWa]Šì+ñ]Ž¾+±ÖÅv:ø®Ç[Øëâ»lWc¯Šìuñ]Ž¾+±×Åvø®Â¿ØWâ»\nìWa]Šì+±]Ž¶+°®ÅvØ®Â»ØWYvØ®Ã–Ë°çb»[.ÃeØrÙv¶]‡­—aëeØzÙv¶]‡­—aëeØ~‹°ýbMo½ßüÆ£¿R8ìFË²Äl±,FËe†2ÃaŒ°ÆXcl1–Ëm†¶Ã[a­\ZÑ\Z5¢ ˆ\"‚ ˆ\" »þU÷ü«ïùWßò¯¿å_óŒEõt©3	˜LÂf0•¤¨J„ˆH„ˆHIæÃôà~‹°õ²ì9l»u—aÎ²ì9Ö]…u—a_Šì+ñ]…~+±Úb»|Wc´Åv;LWcµÅv;\\WcµÅv\\WcµÅv;\\Wa%Åv\\Wa&Áv\\Wa&Áv\\Wa³`¢M‚ì6la³`»\r›ØlØ(“b»\r›\\Wa³b£fÁv6\n6llØ®ÃfÅv6\n6lTdØ¨Ù±Q³b¢MŠì6lTI±]†ÍŠŒ›6*2lTlØ¨Ù±Q³`£fÅFMŠ›6*6lTlØ¨É±Q³b£&ÅFMŠŒ›6*2lTdØ¨É±Q“à£&ÅFOŠŒ›6*2|dø©ø¨ÉñR9ñR9ñR9ñQ“â2|TŽ|Tdø©ø‘Ï‰ø‘Ï‰ø‘O‰ø‘O‰ø‘Ï‰ø‘Ï‰ø‘O‰ø‘O‰ø‘O‰ø‘O‰F$SâEQ‰F$U‘TbE>$u‘ÔbEQ‰F$sâG>$sâG>#\'ÅHçÅFO‚ŒŸ6*6lTlØ¨Ù±Q³b¢MŠ‰.*$¸®ÇkŠìv¸®ÇiŠ¦*v˜®ß{¿ùž±­\ZÑDADù/ßò¯¿å_Ê¾ÿ\0•}ÿ\0*ûÿ\0˜½	ì¶]‡-—aëeØs¬»u—a_Šì+ñ]ŽÓØí1]ŽÓØíq]„›ØlØ.ÃgÁFÏ‚ŒŸ>\n2£Q‚‘Ô`GQNU8TàCS\rN$8TâAS‰N<TãÉN<TãÉN<TãÉOQnH*mÉF<”õä§©·%=E¹)ê-ÉOQnH*-ÉOQnJz‹rSÔ[’ž¢Ü”õä§¨·%=E¹)ê-ÉOQnJz‹rSÔ[’ž¢ÜT[’ž¢Ü”õä§¨·%=E¹)ê-ÉO=¹)ç·%=E¹)ê-ÉOQnJz‹rSÔ[’ž¢Ü”õä§¨·%=E¹)ç²nSÏçÄ§žÜ”õä§¨·%=E¹)ê-ÉO=“rž¢Ü”ÓÙ7)ê,›”õä§žÜ”óÛ’ž}7)çÓrž}7)çÓrž¢É¹O>›”óé¹O>›”Óé¹O>›”óé¹O>›”óé¹O>›”óé¹M>›”Óé¹M>›”Óé¹M6›”Ói¹M6›”Ói¹O6›”ói¹M6›”Ói¹M6›”Òé¹M.›”Òé¹M.›”Ói¹M.›”Ói¹M.›”Ói¹M6›”Ói¹M>›”Óé¹M>›”Óé¹M>›”Óé¹M>›”Õä¦¨·%=E¹)ê-ÉOQnH*-ÉE¹ ¨Ç’\nŒy ¨Ä†£\ZŒHj1\"¨ÄŽ£:ŒHê1#Ÿ“â2|÷ýÞÿ\0•}ÿ\0*ûþU÷ÿ\0•Tù-ßüßR£W |ÏwÁD©ÔIºÓ×ö‘ß°ç/ð/µOÂÔéQ\\Ö/©‘·ûüF/GµzÖ9_½^¿jÎ_ZþÊ+¿É.ÿ\0æûú÷3£RFtü:~ÏÈ¿°ÐÎ“ÛÕ=:ûg¼þ§ÿ\0xú€ÕoWÔÎžÿ\0:wfŽëõ½Þ¯º¨*\n‚ ¨+G4sn9·ÛŽmÇ6ãÙqì¸ö\\{.=—ËeÇ²ãÙqì¸ö\\{.=—ËeÇ²ãÙqì¸ö\\{.=—$eÉrF\\{.=—$eÉrF\\{.=—ËeÇ²äŒ¹$w$eÉqì¸ö\\{.=—ËeÇ²äŒ¹#.IÉrHî=—$eÇ²äŒ¹$w$eÉ#¹#.IÉrHîHË’2äŒ¸ö\\‘—$Žä‘Ü’;¡$w$Žä‘Ü’;’GrHî„‘Ý	#ºÇtÜ–;¦ä±Ü–;’Çt%Žä±Ý7%Žä±Ü–;’ÇrXîKÉc¹,wBX®KÐ–+¡,wBHîIÉ#ºGt$Žä‘Ü’;’2ãÙqì¸ö\\{n9·ÑÍAPTC£üÏ½éýÎ–§ýÅö\'‰Õ{=êßp½,wø}>åû‹ÒŸ÷úQÒ:nË¿ÙqëÚEü>ÿ\0uWØŸ°ª*Š§Oÿ\0Þô\"¨ª*Š¢¨®¸ç\\s®~Dý¿Ét\n‹ñè=ŠÕ?;·Ô²/S§¸N”½dNóÖ‹î=^–÷{Ïk›ëû’+z}ÝÎ±3¬Lû<–BW’ÈK!,„’HI!$ž|	$óàI/ŸI|ø—Ï€ù|ø—Ï€ù|ø—Ï€ù|ø—Ï€ù|ø—Ï€ù|ø—Ï€ù<ø—Ï€é<ø“Ï€ù|ø—Ï€ù|ø’ü’ü“Ï€é<ø’ü’ü’ü’ü’ü“Ï€é/Àù<ø’ü’ü’ü’ü’ü“Ï€é/Àé/Àé/Àé/Àé/Àé<ø’ü’ü’ü’ü’ü’ü“Ï€é/Àé/Àé/Àé/Àé/Àé/Àé<ø’ü’ü’ü“Ï€é<ø’ü’ü%øKð,—K‹%øK‹%Å’âÉqd¸²\\Y.v—;K¥ÎÒçis´¹Ú\\í.v—;K¥ÎÒçis´¹×¹Ú\\í.,—K‹%Å’ü%øKð:Kð:O>äóà>O>äóà>O>’yð$’BY	d%y+É^Lû:ÄÎ±3¬LëºÜ“­¹\'[rO§$úrJ#z~ïó}kµ;„ëFÿ\0Äžñ®é©ÎwÀÿ\0/Z¯¹>ßÆŸÄÏÔN‡7Ôö;áð\"w_¿Ø’/Jùø!ìbt|”ïþs:®ø·ÔuÝú®Â#ZžÄO¹U~>ñ¯¸ÄgÇ£ä¯Ê¾ÿ\0•}ÿ\0-Ú÷{º*CS‰\rN$8”õ8”õ8òSÔ[’š¢Ü”Óùñ)góâRÏ¦å,ÚnRÍ¦å,ºnRËtÜ¥–èR?$)’«’®É\nUÉ\n_©\n_­\n_¬¥Lø)“>\nTÏ‚™¹ðS3>\nfgÁO|ñçÁO|ñçÁO|ñçÁO|ñgÁO|EŸ<YðA|EŸgÁyðSÇŸgÁYðA|EŸgÁYðA|EŸgÁYpA|EŸgÁYÿ\0Ä†,¿âC|ÅŸgÁYðC\\Å—1eÁYÄ†,¸!‹.bË‚²à†,¸!‹.\"Ï‚²à†¸!‡.¡Ë‚²à†,¸!‹.bË‚²à†,ø!‹>\"Ï‚³à†,ø!‡.aË‚(²à†,¸!‹.aË‚ràŠ,¿âE\\Ã—PåÁ9pE\\C—påÁ9pG\\Ã—påÀÈ/ÀÈ/ÀÈ/ÀÈ.»Á~AuØd]†AuØd]†AuØd]†AuØd]†AuØŽðG\\C—PåÁYpC\\ÅŸ<yðSÇŸ33à¦n|ÉŸ2fRýe/Ô…*ä…*ä…*ä…+²B•ù!Hû¡K-Ð¤–èRÍ¦å,Ú³èRÏ¡M>…4å4å5EWO¹~ïÊ¾ÿ\0•}ÿ\0*ûÿ\0Ø5»¡žÒž¢Ü”Õ)ª<ø”³é¹K6›”“]7)%ºnRKtÜ¤~I¹Hì¥\\¤\\¥úÐ¥úÐ¥LÐ¦f|ÌÏ‚ž<ø)ãÏ‚³à‚,¸!‡. Ë‚8ràŽð2žë°Ú{¨Ú}FÓê6ŸQ´ú‰O¨”ú‰M¨”Úž©èÚž©èÚž©èÚž©èúž©èúž©èúž©èúž©èÚž©èúž©èúž©èúž©èúž©èúž©èúž©èúž©èúž©èúž©èú‹O¨´ú‹O¨´ú‹O©èúž¨´ú‹O¨´ú‹O¨´ú‹O¨´ú‹O©èúž©èúž¨´Ú‹O¨´úž©èú‹O©èú‹O¨´ú‹O¨´úŽ§²‹OeOeŸQiõO¨ê{(ê{.ãéì»§²î>žË¸ê{.ãéì»’SÙwOeÜ}=—qôö]ÇÓÙwOeÜ}=—qôö]ÇSÙE¦ÔômOFÔômD¦Ôm>£iî2žüÁ~àË‚(r ‡\"³)âÏ‚ž,ø)ãÏ‚ž<ø)›™J™”©šŸZŸZ‹š‹’ŽÉ\nGä…#î…$·B’]\nIô£§Ýðû½ÿ\0ø1Ò¥¼”“i¹I-Ór’K¦å#òMÊGd…\"æ…/Ö…/Ö…+sB™¹”ÌÏ‚ž<ø ‹>!Ë‚2àŠðE×a”÷]†ÓÝD¦ÔômOFÔZmGSÙw$§²îIOeÜ–WrX1]É`Åw&ƒI¡Ç’xqäšy&‹IáÇ’x±äž,y\'‡IâÇ’x°äž,9\'‹IãÇ’x°äž,9\'‹IâÃ’xðäž<9\'IãÃ’xðäž<9\'IãÃ’xðäž<9*‡%C1ä¨f“Ç‡$ñáÉ<xrO“Ç‡$ñáÉPÌ9*‡%C0ä¨f•Ç’xðäž<y*%C0ä¨f•Ã’vaÉPÌ9\'f•Ã’¡˜rT3J†aÉPÌ9*‡%C1ä¨f<“Ç$ñãÉPÌ9*‡%C0ä¨f•Ã’¡˜rT3J†aÉQ<•Ã’¢<9*‡%C0ä¨f<•Ç’vcÉPÌ9*‡%Cpä¨n•\rÃ’¡¸rT7J–áÉRÜ9*RÜ9*[‡%J`T·J”À©n•Ã’¢<9\'‹IâÇ’xqäšy&ƒIiñä–žË¸ú{.ã©¬¢Ój-.§¢êz6§£j%6£iµMq”÷#§¿PeÁE™Oe4y”­Ì¥úÐ¤úÐ¤\\¤vH\'B¯µ¿ö–;’ÇrF*üOg¼‘Ž_‚/Úäb{:T‘®wÁ>ÉZç/±	QžÔù?ù:?°‰ÖèéõüÊüN„éö‘ß±ù§íÿ\0?S;ûÏÈ¿gÅOj½:>OûÕr5¿Ô‘^…ØTsWØ¨{Uª‰ú‰Ð÷z‘?Óáö~9}½Í=ª¨‘ñøøŸ‘~ÎŽ²ú™ýÎŽÏ§¬ß×ÝöIÕw½	t]‰t]‰Ë°õ²ì=ÖQÎ°çØWØëØí,v–;K	%„–Ãe·#d·#e·#d·#d·#dóâ6O>#eóâ6_>#%óâ6_>#$óâ6O>#d·#eóâ2_>#%óâ2O>#%óâ2_>#%óâ2_>#%óâ2_>#%óâ2_>#%óâ2O>#$óâ2_>#%óâ2_>#%óâ2_>#%óâ2_>#%óâG/Ÿ’ùñ#—Ï‰¾|HäóâG/Ÿ9<ø‘ÉçÄdž|FKçÄŽ_>#%óâG/Ÿ’ùñ#—Ï‰¾|HäóâG\'Ÿ’yñ#—Ï‰ž|HäóâG\'Ÿ9<ø‘ËçÄŽ_>$ryñ#—Ï‰ž|HäóâG/Ÿ9|øŒ“Ï‰ž|FIçÄdž|FIçÄŽ_>$ryñ\'Ÿ’yñ\'Ÿ’yñ\'Ÿ’yñ\'Ÿ’yñ#“Ï‰ž|FIçÄdž|FIçÄŽO>$rùñ#“Ï‰ž|FIçÄd¾|FÊ6_>#e°’ØIl$¶[¥ŽÒÇ^Ç^Â¾ÃŸaÏ°÷X{¬¤‹e%Ñv%Ñv&K)2!3I˜M4w&ŽäÑÜš;ž´÷/ù&«×¯Ò½\",Mo½}¾ÕÝ_Æ×|;ðåþ\'¹~ßÂÄéSðþ)?OsOW­½ä_»ðoíò/ò\'ù\'£:}ƒºÝ_iìê;¦Ççoïö£œ?Äˆ6vtûzNÛ©þ¿gI×ëûºžÝ·_×ÓÖöû~ä}g|HP…¤, adÇbìCˆc±V\"ŽÄQØŠ;Gb(ìEˆ£±v#ŽÄqØŽ;Çb6X–#eˆã±,FË²Ãb6Xc,1–Ëe†2ÃaŒ°ÆXc,1–Ëe†2ÃaŒ°ÆXc,1–Ëe†2ÃaŒ°ÆXc,1–Ëe†2ÃaŒ°ÆXc,1–Ëe†2ÃaŒ°ÆXc,1–Ëe†2ÃaŒ°ÆXc,1–Ëe†2ÃaŒ°ÆXc,1–ËeˆÙaŒ±,FËeˆÙaŒ±,GˆÙb6Xc,FËeˆÙb6X–#ŽÄqØŠ;Gb(ìEˆ£±v!ŽÄ1Ø†;ÇbÈ@Â´…RêEª‘j¤z¨Ç\\kî#îv—;[‹-ÇK~c¡?É‰­©ñî=Kì{#cjþ.j‰ÐÆÿ\0†‹ï_ÝüÍ?\"ü£cú¡h¿¾‰þÔLIðUè)âÏ‚2àŠŸ.éî»¦º‰M©èºž‹¨´ºŽ¥²’SYw%§Åw&ƒI¡Ç’xqä¨J–aÉT˜IUô!Uô¡T¸¡VìP«~(UÉdØ«–É±W-“bªk&ÅTÖMŠ©´Øª›MŠ©ôØªŸMŠ©ôØªŸMŠ©ôØ©ŸMŠ™ôØ©¨Ób¦}6*j4Ø¨¨ºlTT]6**/ÁSQ¦ÅEEÓb¢¢üà¨¨¿EEø**/ÁQQ~\nŠ‹ðTT_‚¢¢üàž¢üÔäOQ‘=NDõàž§\"zœ¸\'©Ë‚zœ‰êr&©Èž£\"zŒ‰êr\'©Ë‚zœ‰êr&©Èž§\"zŒ¸\'©Èž§.	êr**/Á=N\\Ôß‚z›ðOS~\nŠ‹ðOS~	êoÁ=N\\ÔäOS~	êràž¦üÔäOS‘=NDõ9ÔäOS‘=MÉênTTß‚¢¦ü7àž¦ü7à¨©¿EMø**oÁQS~\nŠ›ðTÔ_‚¦¢ü5à¨¨¿MGŸ¦£ÏSQçÀ©¨Ób¦¢ü5\ZlTÔi±S>›3é±S>›Sé±U>›si±W6›si±W-“b®[!Y%«“*ßŠnÅ\nµÅ\n¿¡\n¿ ªnK0\'‹IáÄ–ŸJk(úk(´ºž‹¨Ú[¨Êk©=ÔŠˆ!Ì§1:ýIÿ\0€ŸgÖ÷õý¢ê:›QôÖRJ{.ä°cÉ48òO•Ã’¥¸)Uô!Uô¡T¸¡VìP«~(UÉdØ«–É±W5“b®k&ÅTúlUO¦ÅUF›U\ZlTÔi±QQtØ¨¨¿EEø**/ÁQQ~	êr\'¨Èš£\"jŒ‰ª2&¨Èš£\"ZŒ‰j2$¨È’|‰\'È’|‰*3>j>|Ôtù¨éóQÓf£¦ÍGM’Ž›56j,Ù®âË’îv¹.âË’î,Ù.âË’î,¹.çk’îv¹.çk’îv¹.çk’îv¹.çk’îv¹.çk’îv™.çk’îv¹.çk’îv¹.çk’îv¹.çk’îv¹.çk’îv¹.âÍ’î,¹.âÍšîv¹.âË’î,Ù.âÍ’î,Ù.çkšîv¹.çk’îv¹.âË’îv¹.âÍ’î,Ù(³d¢Í’‹6K¸³d¢Í’ŽŸ56j:|Ôtù¨é³QÓæ£§ÍGOšŸ5>JI>Cê3>CçÈ’£\"ZŒ‰j2%¨È–£\"jŒ‰ª2&©Èš§\"zœ‰ênOSr¢¦ü7à¨©¿MEÓb¦£MŠš6*ª4Øª¨Óbª}6*çÓb®k&ÅdÖB²K!XüP¬v(U®(Uý(U&K0*#ÄžI Ä–žÊIKeI¨´šž‰©ø¿«£ÙÓÝòÅOoþß•••••ö÷/Ê¿yüCj3QšŒ0f£¨Áƒ50`Áƒ0`Áƒ0`Áƒ0`Á£FƒPhÔ\Z4hÑ£PhÑ£FA£F\Z4j\r\Z4hÔ\Z4hÑ£Fˆ4hÑ£FAAAAADADADADADADADADADADADAAAAAÿ\0ê×ÿÄ\0,\0\0\0\0\0\0\0ñÑð!Qa 1qÁáA‘¡0p±@P`ÿÚ\0\0?!=7õ7\rãpÜ7MÓ|Ý7ÍÓ}\ró}\rô7ÐßC}\rô7ÐßC}\rô7Ðé#¤tŽ‘Ð:G@é#¤tŽ‘Ò:GHé#¤tK#¢tŽ‰Ó:gLéˆ–‚¯¡Ð/AÐ6Í½Í‘²6FÊ(l¡²†ÊÚ ‰z!¶ƒôC¢tN™Ó6Ðè›hm ªz ý~ˆ?D¢ÑèƒôAú ý~ˆ?D¢Ñ\r¤¢‡¢Ht¡°†ÒHm!´†Ñ´mFÑ´mFÑ´mFÑ´?AúGHýè?AúÐ~‡IÒt\'IÒt\'IÒt\'IÒt\'IÒt\'IÒt\'IÒtAÐtAÐtG\Zõ^¿©VÊ¼ZõýKÔ\"~ªûKú­ö—‰¯ê_´¿ªßi!JÚ¹Ð›©;\'ä¤š’2GøÎ)äÓrA‘`x{IJÄ±-¬X,œØç£äl.0õÀY‹3¶	9+;±wv.nÅ¥Ø˜ÐŸPŸPŸPµP˜Ð²Ð—Ð·Ð´ÐÓ¥t-ôÀëåmE•…ÕÅåµ¥õQ¡JJJÊê…5¥¥5¥å50‚4..Ô./T.”.T.T/4 ‚ñBóB7B7BñBõBãB7B\Z/4ÂëÝýmu---0ÛLµÐºÓó´SÅ}Tß,2Åm5þ˜E1:šÆ0Ó\\èIhKhKhH„ØN¨K(=Ûø=«øzCžJUù8~Òñ=Wÿ\0ž9™ðfg†xgù³áÏþÇÞ_Õo¼¿ªßyx•âô]³Svþ¦å½MËzžÄ$Fù}*dß>b¨­l‹gÌDUVAN“j>yª:û(¤¨î©ÑPå Ó˜¹ä/!JôCØ)x»?ÕúKï/^«Åè»£cy)æ>¢{ª>Ù\nßíÐûP‰MþÍì\'˜i®]º\rÔÔ›C¥rÃ®Ýx]ó5Ôtˆ¢óý#÷—‰¯Uü·N·¤s þÑñÉF~€~bkÉÉ½M…kÌ«î§ÁOõOŸÚé‰J‹\'§ò—I_69–Ÿ®.NfÎmng: ˆ«Èu\rN7zñFa	f¤´Ÿ’RvNÉÙ9\'$¼ž’ò^JÉÉ)¡¿ùÐžÐ´º×Bò¨^UÊ¡³ùPÙü¨lþT6?*B)hD-¡´ TRõqÇ±ZOÇ™™‚\"#2L“„á8J„á\"N„á;€Î’$ïªÎ“¸<î;‡Ïáóä™>O“x|Ÿúÿ\0ÿ\0ÿ\0»»»›»»»¹ŸÙ­üþ¿‚ßÁv´-Ö…ÊÐ½RñK/„:ÐƒR-hE-\r‡ÂÐºªÕBÚ¨o¾G9/C4ëÃ÷—‰¯Uüÿ\0P>_	ýÏVÝÍœCý,öEÃG	2Ï˜}ƒì>ì`ø€è:Ã!Æ[ÃÙƒØe‰‘–Œ°e‰ìÁ–Œ¶¶Ämƒ Á‡°`Áƒ\r°`Á´ ÛA¶0mƒl6ÁƒØ6Áƒl`ÛØ0mƒØ0mƒØ0mƒl0mƒ ÉˆÃ!Èd°de±È2†C È2†[›†[ldd{°dde°Èe±‘–Ø2222ÀÞûËÄ×ªñòiÐµ•Uà-ª^ô‘g§¬Ý‘”Š{0Ï±sU}‘]ÀtuU<ÅgÏ¹Zà—+RåjH­I©rµ$V¤ŠÔZ’+Rb¢ijNTNTMTH­Iu©fw.åáÜ¼;—‡sd\r•›þ><°ÃPA$Þ|Mé7¼ B–7rÖïÀp¡Ë[¾5\"_ÝËË¾.nød¼»—·rRöî^ÝËË¾12^]ø^dÈòòïøž$x‘#ÀŸ]Ýÿ\0ÍðåÉ—.\\¹råÂ—	$7Àßw€¸è¬C7@ÝÍct\rÖè¬¢X¬X­‡ Z¨]¨]¬]¨]¬\\©‡—ª`†ÎÍÉ¥©;Q\'Q4µ·˜Ýx~òñ5ê¼|{J\"²…kÐõÈ¨¨ê/Nàø7˜ûn×N¬Ê6‘ëÝ•oîn¿¥~òñ5ê¿N|Nfô[‘§éo¼¼Mz¯ê_¼¼Dõê¿©~òñ5ëú—ï/^«ÄîßèýK…Kåp½Þ¸¢ú—\Z–z—:–Ú–Ú–Z–z–z—záK=KµKMK}KíFìÿ\0K]FìKõI\rF+ªK*XªL‰•IõIµI¥IÝI¥I-IÅI-Ihß©v¥õÜš×¶»;—WrÀîZËC¹nw-Îø)\nÇ\râ†ñÃÅuQuþK&˜ókcÒtþ#È\0\0uáN¼)Ö]X[¬ºË¬º‹¨¬ ê&ðYuàQ7€:Á¼J†ñCxá¼ Þ5EÜ€‡r\0@¹\Zéý!*,Nã¥šáÔ1qö7‡Q\0!‰ÜdÐ¨o7ƒPÞCY?£\\?£xõØ}áÔYËC¹pw/å©Ü¿»—wr[RoRkRQ‹Ã—ž¹(ž©AŸ?yxšõýK÷—‰¯_Ô¿ixšõýKö—‰¯_Ô¿axšõýKö‰¯_ÏŸ~‡a†S1†^/°¼Mzñ9Ø™ûÁßþ%Ë$’I šq¦šiFšiÃuÒX>š(„Ó©Ä8ÛáþÉ°Ç2Ãô¼ä÷&_†©y™Ij¤ÊFWpgæXe&\\e†ne¦Ze†Jgæj[­3“83—Þ–+øÏ€ÎLÀÎLàÎŒüÏÌ”Ì‹uFjf&@\'…ºÃ53¼#¯Ÿ™Q™þ\nñ§œa†§ÈŸ/“Ç<·Ž?¶ÎŸñYe·çŸñ®8GSö±zÁoÿ\0½öÿ\0—,wÓë¨¹d@DäÔ³P¶»ðÌ´\'®yJ¿?axž«×õ/Ú^\'ªõýKö‰ê½Rý…âz¯_Ô¿ixž«ú—í/ÕÇŸåÏ†c?÷±Ÿ7‹<sÇ?ó7äÌÌÌeFQ”eFQ”e3FQ”eFQ”ex¾Òñ=W‰¸2zÍuæZª[*[*[+„ÖÊ—ªþwÁÅÐÍ0 „(¾W‡Ž(¢ÍRýRÝ\\p²áRÍRéRÙ_ÃGyG–yz¯˜Yr©p©p®:q\rª—ÊñpÇq§Á–ÑD/11©©	ñµøÔ†ˆhŠˆØˆ×	¢5Äa¢xÛ|jDÄdBjm¾56ß\Z›oK‰©q5.&¥äâÆ[Ep…ÄÀÜÄÏ¼øpaøPÃqÆ°»7lTÒîì\\Ý‹›¶\n(uÍØ±»lzjÊìY]‹;±qv..Å­Ø¿»bÄìXˆÀŒà,À‹4È\"Bw±wÄoÝ“«ªðý…âz¯ê_°¿ªßeU¾ÒþSsäˆ™ª¯$MÌ„.wì(e}üý‡EÑs3R¹7ÜÜò«ó>‘3U^H›™¸Ó›¦\räÏzw¹G’=	Ï]]OGÜžŒ«üÛˆ¹ŒŸ¤¾ÚþW*Å÷ ÐÛ»¢tÅd¥t“#ï‡\'Ž‘òAU—5í²÷s,!×ˆf<¹ŽÀ­~cähån{¬ŽDÂy¢ºåúKí/å¡•¶3$“äº/¾™ÔæÐ3ö}}^ž‡.‚÷÷•}óú§F•š]Ž¦`ÅÜ‹”™BþÎ]«Qé‰hw??±²Y²rLýÿ\0Ç~Íßÿ\0õ_ßÕ×|ð­‹ºá[Wu6‹bî¥¢¦ÍÝKuKÕKUKUprÍRõRÕRÕ_ò8ãpe‚I`† ‚( ¸”Ò7‘¢7‘\"$Eˆ‘€H‘\0\"O\0A‡ÂCq „´A-BDÀ‹O$ ¼Ah‚áÂ`…Ç’áÂä©z•/’¥úT¿J—iRý*Y¥K_%šT·J–©RÝ*Y¥Kt©wä³J—)Rå*^¥K”©z•&’¤ÒÈY!(„âhK¡.„B„B„*…Î…’˜˜fz\')/m££ðý¥9!pú‹œEyr>lˆƒö&éµ	}a+uÅ´9£ú¥’è„2k9ù·1’	Q²H­êàO^‚¯0œßÑõ!¸ƒêAõ ú‡ÔƒêAõ ú‡ÔƒêAöˆ>¤R©‰¸ƒêCspÜÀÜ7071\rÌAÆæ‡8}CìÄ70\0øð>¡Ãê\0ú°:¨|àAñ‡AÐtAÐtAÐtAÐtAÃ è:ƒ¡è:AÃ ÁÐt2qÇ~£õ=”}”}¾z|ü”ÇQ¼å		Õ	uqý9{Û‡í)ËøÓ™Dw˜RÇ`é‘}EéÉô5QV¥Y1õ½˜Vÿ\0R¹(½Ï®ŒÞå÷™ÂEHí©\"T ô\"æ‡Ç¡¡¡\r¡¡	!d$„‘º:ººúzZzúzúúúú\Z){hChCèDèDèDèFhD(BhFè]Ýˆ=»±gv!´\"ô ´#´.îÅÕØº»\ZI]¡¡¡¡¡¡¡¡¡ ¾)B?B)B)B-B!B?B!BBBBBA|„\"„*„*„z„Z„X‹b,EˆA!(†‚7€„\"B!\0ƒx7€ƒxcx7„7€ƒxCxãx7„7€ƒxcx7„7„7€ƒxcxãxãxãxåô/¡a7€XA¼ÂZ!ì‡²8ãŽ:Ž£¯ÙS“ò,\ns¿$:&û(Í¢Ë”—UÈ4ï\nè›bæð´T2-·îå¤£UDFˆ\"{OéWíö~c‡^Qß¥¾ÏaÉú«íöŸª¾ÒœŸ“<3Á—Æ3áÏ…¸3Ã<sLñÏÆ3Á†Q”eFQ”a†Q”a”a†Q†FQ”ÏðÏa†ea”Ìepe33<3FS31”eáe3ÏðÌeFFQ”eFQ†a†Q†Á†Q”a”eeFQ”a†‹ívŸ’èæÕ×‡Œa6¿\n›O…HÅHÅHåHÅHÅHÕM§Â¦ñì©©µøTÚ|*^A®Û|*^EM·Â¦ÛáRâÈÆPßa5¼üQA<°‹,¢\'bÄìZ‹C¶\"3jvÅ0kŸ±rö,>ÅÛØ¾{ÿ\0b×ìY}‹_±oö-¾ÅïÛ×¿oóÖ­û×ïMbD(±bÅ‹V-š6pÜ¶làŽààŽþºëª(®Š(¦š)$ºë¬²ë.šé.šK4Ó4†múô3èbBqÊñC\0à‚â€ê…3P¬´.T.Ô.ÔÁrRVYÝÅ¿¿¢dˆšeÃ÷{_Õ_w°äýU÷{_Õ_trþ«îOÕ_w°äüŒ£)˜Ê2âÃ¦fc(Ø²™ãŸ(ËÃ˜Ê2™Œ2Œ£(Ê2Œ£(Ê2Œ¦c(Ê2Œ£(Ê2Œ£(Ê2àËƒ2Œ£(Ê2Œ£(Ë†x0Ø0Ø2Œ£2ƒ2Œ£`Ã£0Ã0Ê2Œ£`ÜL6£(Æfc£(Ê2Œ£(Ê2Œ£(Ê2Œ£(Ê2Œ£(Ê2Œ£(Ê2Œ£(Ê0Ê2ñ}ÞÃ“ñ£‘ÈŒ«¾OÅ»2eÈ\nÅí€+‡· IbMtöÁu£Ûw\'Ë—&´û~rÑ³<Ø³çæÉvîÜAÄa‹„8C„8C†8?ðgžÿ\0ÿ\0šëæL%°Ä¨ËÀË€È€È€ÏÐÍŒøÈ²a–äÃ†0gu_xgFu`îÃ\01ð…”(ÁH ˆøU¯ì>¶€ÿ\0\0;[Ø- Z@¶m2òÀ™mÚ([ñ- [ñ. [ð°Ûý†Ýì6ÿ\0a¶û»Øm¾ÅÎ…Î…Î…Î…Î…ÎœS£	á?\'xU+,®å•Üµ»—w~\r–=èÚdœ?o°äýU÷{OÕ}Éú«îö~«}ÞÃ“õU÷C“ò2Œ£(Ê2Œ£(Ê2Œ£(Ê2Œ£(Ê2Œ£(Ê2Œ£(Ê2Œ£(Ê2Œ£(Ê2Œ£(Ê2Œ£(Ê2Œ£(Ê2Œ£`Ã2Œ£(Ã£(Ê2Œ£(Ê2Œ2Œ£0Ø0Ø0Ø0Ø0Ø0Ã6,2ùLða†nÆQ†Q”a†Q”ÌÌeÁ—eFa†Q†a†Fa†‹îöŸE\\±“ŸV/äöšimžxçšañIf åñŒ°xnÁþuÇÝ%š}”UWÙgFdeuÂ$3Âÿ\0»Ê…þ¶mÿ\0ñ!J‚5×nöÃ\rÂ”Á˜SJo¦,h™o±w¡w¡¿ßbÿ\0Bÿ\0Cq¶Å®†ë}‰‘k¡¥k¡{¡. ¾Î¡>&DÚ‚ú(“#CåGäêäˆžÒXJIa(&„˜–BxM	‰,Å$¥¤œ‚rK	a0%$ä–âYß%•Ü²»–WrÊî[]Ë+¹mw/®åÅßŠdÇßhb`É·x:ý¿Øâðg™\Z‰Û‡ìöŸª¾ïaÉú«ïö~«}ÎÃ“ò}\"f«°·H¹òûÔÑý«—ôNn[7RPÜ»«\rÕEÏÕñEå–}ÔÍ‡4þ®ôXeEêðŠú ƒ»\n?#—é¹Ør~E­Èsâîw•{Ú!Fè®þˆj¨›?Ÿ7Ìû_ÈAßé3_î—&øPº‹Õ‹6ö>®%/R“î(¼ÿ\0HýÞÏÈõû	\'ØçÙh\\³‹šúŽþãQjæUNiTQ¿ˆüì•ýG¾WósUUwQÔäËÒ=d¯9pS•-Ñô;ŠçÊ§2Ü¯ þ…ä&gÆ÷ŽZp%Ðs¡s¡{§ÙÆ°[¢Üà˜-ÁnKq„&j&bŠL8][pVßÂ¬ùÝßß†çá½úpýúOj{R~œc)úp•µ\'i\'i-†[n	!’Ø×ŽK,¦›Fø8ã†±Ð±P»Ð²Ð»Ó	¯ôÂ„¹v,T{Ã,-”âÏbÑBÁBÁBñBÕA«ÂÁBÉBÅBéBÑBýBýBÕBýBåBñBýBåBÅL5:¡6&ÄÈžRiIå\'”šRmIÕ\'T¹RÝKE,¥ºÔ¾Z–KRùjzš¢/\r÷C“ò^ô9ûS5³dr?Þ—Q†Ç•÷ßçXË¯™µBÐà¯¾MêÇ5‚ÔÏÏ“Š@ªfä©ªcÌ#žöƒy\nÊ\rä(7¡\"¡\"¡*¡*¡\"¡\"¡ ¡.¡>¡6¡4¡ ¡)¡0¡(¡(¡)¡+¡(¡#¡+¡v$ô$ô\'ô\'ô/îÄÞ…¥Ø·»bâì^]‹Ë±iv,.Å•Ø·»wbÒìYÝ‹K±wv,îÅýØ¿»÷bþì]Ý‹«±\'¡wv/îÅÝØ¿»÷bÖìZÝ‹±cv,.Å…Ø¿»:búì_]‹û±wv\'ô\'t/îÅíØµ»÷bwBöì_Ý‹Û±{v\'t.nÄî„Þ…ÍØ½»7böìLèNèLèJèJèNèJèLèNèNè^Ý‰›±\'¡#¡+¡+¡\'¡#¡+¡+¡#¡#¡3¡5¡/¡/¡\'¡;¡\'¡9&4\'dæ„Œ‘p\n…!HR\"0¤ø‹Ã}Ðäü‹´óu&g,KUç—A6Ro.tA5är›\'‘yáéóô=_Â¢NWîe.Š­ú0ºÒ¢ª‚¦ÈÜ8ãŽ8áÃŽ8áã‡Ž8páÃ‡ÀáÃ‡8qøAÇGQÇQÇqÇqÇQÇQÔuGqÇuqÇGqÇ\\qÇQÇ|qÇqðÌqÔuqÇQÔuGQÔuGGQÔuGQÔuGqÇqÇQÇQ×‹îöŸ“Ñ0µEÕ:æ\'Ì¡erô©òª-×ùÉ¢\'\nwùÊÞ‚ÌËCUõÓô¯Üì9?3þœû‡\'ê¯»Ø\'/Õ_°N_œeFQ”eFQ”eFQ”eFQ”eFQ”eFQ”eFQ”eFQ”eFQ”eFFQ†Q”a”aÃ‡8a”eFQ†a†Fa†a†loÉñÇî{§ºè{§ºè{¡î‡ºè{™j‡ºj‡ºj†Z¡–¨eªj†Z¡–¨eªj†Z¡e ËT2ÕµC-PËT:È,)aGòóó‡óÇóÇò)ò‡ò!	4©(•âû½‡\'ãê\'¿¹™j÷,^å‹ßV/~F™[=Ë¹b÷.^ÿ\0é9Ó&@™d(£F™2Å‰&P‘+Ü/s‚†}î½õöp}öËÙà´jÁl—±…ËÚ/kˆÑ£××úN·}äê±fÍl‘cŠ6(@Ãq€!j¡»ù\rí›ã†7?!}U-*¥ÕT¼«RÝC\"µ•RÅC¤³S{ò©yBÅCfõêp1mBú­Kêµ.¨\\UM§ÍEõZ“‹Rqj^-I…©0µ6Ÿ+Siòµ&¦Óæ¢ajO­IÅ©xµ.iý•.Ö¥âÔ»òY-K¿%ß’ëÎ3$IDà±$1CñÒrýU÷ûåú«ïö	ËõWßì—ê«®‚rýWIËò0Ã0Ã0Ã0Ã\rº\rº\rº6è0Û Û¡îƒn‡ºè6è6è6è{¡–¨eªj2ÕµC-PËT2ÕµÈ2µj˜µÀ2Ðe¨ËQ–\0ÈÈ,)aGò\n^RÂ–T²£ùåµ,)aK\nZRÂççççççˆ¾xþxþXþY$ƒùãùcùcùcùd¹\"ƒùä‚hH þbTBA	Ì$BI*J!$•%”BA	4ÌAüÄ%£ùÈ\'”BQ*?˜„²TCb÷J’éSlöT‹T‡T‹T‹j‘j‘j‘j‰âÕ\"Õ\"Õ\"Õ\"U#U#\"Äz¤z¤Z¤¤¤\Z¢xeH%HeH%Dñª‰ãU • ‚x%HEDð\n‘J‘jñ’~4´!|ï>NOó3gOÞ½X±w×Þ½Ý‘\"D0‚MÙ7 ßƒ~\rÆ\0Ø7x† ¼«Rò¨°«Rò¨°«Saòµ,*ÔÙü­M‡ÊÔÚ}ÔÚ|­M¯ÝK¥©dµ,¼›Oº›K÷6Ÿu6—îX­L»ÿ\0¥ç’ãÉyä¼ò^y/<–žq1à-›8LAD‘ÄAD¤	DD\0@1@˜\"Z/DB\'\ri†­T!paB‘¸Âœ*•j¦*T*„*„\n„*„\n„*…ª„*„\Z„ƒP‡P†P‡P‡P‡P‡P†P†P†P†PŠPŽP‰P_¡¡¡¡¡¡ ¾B!BBN/í—ê¯¿Ø\'ê¯½Ø\'ê«Ž‚~ªû‚~ª¾è\'ãËÕQ:–Ô¾¥õ/©}Kê_Qüñüü„ÈAü„!0„âAˆq!Ä8‹b,EˆÅHÅHEHEH%H%H%H%H%M_‰R	RRR	R9Q<2¤r¤R¤2¢xåHåDñ\n‘\n‘\n‰âUÄ*\'ŠTŽTŽTŠTÖKÙR5RRR)R!Q<R¤B¢xUHUH•DV‚¢xUDñ*‘J‰â•\"!U!U2û\n‘\nš¿\n¢x•HÅH%HM_Q<:¤*¤¢x•Dñ*‘*‘jêêêêš¿\Z¤¦§Â©©©©©­ñª\'TTŽT†TTT‹T‹TŽT‹TT‹T‹TÔøÕ Õ\"Õ!Õ Õ!Õ Õ5~5HUHuHUHUHUHUHUHUHUHÕHUHUH•H•H•H•H•H•HÕH•HUHUH•H•H•H•H•Dñ*‘*š¿\n¿â¢`·JëìYy,¥’×ðLÄÁTYCÄ1CÄ7àç-kRÖjjêúúR?B#B?B?B?B?B3B/BB/BB/BBBBB\'BBB\'BB?BBBBBB;BB+B?B#BBBBBBBBB%B-B%B-B-B-B%B!B-B-CGãP_¡§ñ¨EhE¨G¨E¨C¨G¨C¨@È!Ô!Ô T! 4¾=EåÅÑ=”#”\"##”\"T t!T!ô\"Ä‡Ð„PP_¡—ÚPV»Júzz::úz\n\náT!ô t!ô#ô#ô\"Ô#ô\"Ô!ô#ô!Ä„~„~„z„~„~„~„„J„:Ÿ¬ˆIú¬“ógúrÛ§×UCDnù\"n<!§Ýþâk	ðþ(W¯é\'¨ÛïäûœŸ×‘›¢èˆ™ª®ƒZNG=útê;ƒ/.cé  vrB•í„G˜QTc’8Îß+˜Ëú\\ž¼k.ßCÉ>‚Ö?êºô&ÈÓÐCØ¡“^Iƒ9­Þ#”ô^ç?£-Œeòô£‰ŸuN›§A…äØû\Zº€ƒbÿ\0DC¸&ÂóÁ”eeÇ3331†Q”ÌÌÌÏÌÌÆ†l3Ã<Ìc31”Ï‰ŒÆÁ†a†a†\\3Á”e33Á”eLÆS1”eFQ”eFQ”c1”eFQ”eFQ”eFQ”eFQ”eFeFQ”eFQ”eFQ”eFS1”eFQ—üd¿Üf0ë]™‰mŠ[e^š‰ÒFËz …J³Búÿ\0à¿js-Fu¢¤€®[UÈ]Tå>ë©ž	½3›¨EpŒ\\ƒ‘\"GÈù!¤4Ú|hDhDhDh@hm.ØØ|hm®ØÚ]±µ»bÍí\"ÍkvÅššúºººººººúºúÚúÚÚÚšàh¨hèhè«67vlo¬ØßY±¿³c}fÆþÍ×Àn,Ø€D¡”!(7ölFPo¬ØÝY±hv „ZP€Ä	B #&‚%JPJ\"(\"(\"„JPˆA”!R…ºP…J©B(B¥ä¡”/…òP½J‰Bù(_%ä¡|”-Ò…²P³ð_%ô¡|”/’…úP¿Jþô¡|”/’…òP¾JiBõ(Z¥ô¡x”,’…²P²JIBÉ(Y%$¡d” ’„zP‹Jh Ò„P²J	ò!ÿ\0=xî÷^®Â,\"ºÎˆL”A<ÑeWÏý…»Q9áe§Nvri¡=T´»›·/îåýÜÔ°»2AÈ9#“­oZ×¼sÖöhïøaÛg¶[GÄÛ¿¡·B÷sÀ»à\\ð.ø<Þïç{À½àZð-ø¼^¯{\0\rðoYÐÜùx-x–t7~Cwä\'<ƒ|ÀÞ³¡¿óðnuDà˜ÂUhK-	E¡,´%H	µ¡(¢HJ	A ´%<J$–„²Ð–ZËBYhJx%–„²Ð–ZËBIhY-	e¡$´%–„’Ð°ZBÑh\\-…¡.´.…ÂÐ±Z+Bõh\\-Å¡z¢ñh^-Å¡x´.–…ÂÐ½Z«BihM-	µ¡&¢mhM­	e¡4´&TN­	ÏòÐ™ZKBkÁè‰¢\"pßtâzñ¦Cæë}}—ú<¹õlÌåŸ\'“Ç=¢fûQp@§Ê?ÉwSvØX´~½W³Üæ\'¤à¼.£¨ã¯™™ãžàêgÿ\0¾¶éÄõãÉ•QrTS57>gxL»§™ödpœùëUp(Ðs[¡È/¹þ‹$Uo·$ý6O_ÕlõýVÏ_ÕdõâEEC\\‘VÈþä2¤B¤R¤b¤b¤\"¤¤¼<Â1+&‰â\\“$ÉŽ\n‰¹ð[x,|BÓÁ`´/…òÐƒQAA´\"Â-D`DÛàb0 CÐF\0BÌ0lÁ³À0Ùü lþú×à6 ÛüpÓB~AEQ†˜¼	êâ,…ÝŸÆaïåá^»üÖ.§îß»—ùÿ\0^úuéÇ‡Ïñ:sàÛê~M³VíXµjÕ«x=Ü-½Â÷Ü/wØ=À÷CßÆµc×à¹z÷ÿ\0Åråë¯N~5á×Ö#ÔÁ·$ÝƒTN¼¿=x’Y	3DKçîGhC¨A¨Fˆ•Ñ „pŽ\n¢B!B5BC†ðoð†ðñËè[BÂxƒ ËA–ˆ{ û!ì‡²²É‡²>È8û>È>ÃŽ8ãŽ8ãŽ>8ãŽ8ã‹Ž8ãŽ8ãŽ8ãŽ8ãàqÇQÇqÇQÃŽ8qÇqÇqÇqÇuqÇqÇQÇG£Ž£¨ê:Ž£Ž:Ž:Ž8ãŽ£Ž:Ž£¨ãùëú­ž¿ªÙëú­¿ªÙëú­ž¼HåtÍ^;Šˆ;‚ûÁuàŽZ_…¡aYPÝþ 0áJ›>R‡+|mîºå¶ÙÃ—l³‡.Ýxq\'ÄX=¸IbÅ¢äí‡M[=°½yö2X=‹¶!\\‹+±iv-.Æ¥ÖØT°û`ZòìZ=‹O±sv.îÅÝØ¿;wa./áwv,îÅÝØ»»7bîíÉ‰ß]—Ç×]ÆÝ]–uáØ¶»qdTQE%àH\"¥$¬’²^j|‚NN½÷Âóro…äu%Õ,Õ,Õ-Õ2{ú—j—š›í÷5nõ,5-µ/5\'dôž“š“Ò~k|òfkü¼J\Zàì\\‹{±ov,îÅ…Ø°»×bÞíÍ6Ä½H½HÕš\"êŽŸž¼JŠäN¢ðƒA¼tÇÇ,!a´C-ËD2Ñd ýqÇQÔuGQÔuGQÔuGQÔuGQÔuGQÔqÇqÇQÇQÇQÔqÔqÇQÇGQÔqÔqÇQÇQÔuuGuqÇGqÔqÇQÇGqÔuGGQÔuGQÔuGQÔuqÔqÇQÔqÇGQÔuGQÔuGQÔuGQÔuGQÔuGQÔuGQÔuGQ×ò3×õ[=RÞtâzþ¥¼éÄõýK}Ó‰ëú–ã§×‰ÿ\0V+*çíø\nÑa(Ûø•ßmcÐ¥[‹#±jv,NØÄø›XKK-KMK\rKxÈ`‚1Ž´ï$uø—ô”áùw¸x¹{vfÂ\r””^¯´ï^Ó¸7x%Þ	ƒ˜‚b†a†$_«ì1S0Ã0Ã0ƒ0Ì&`ÐÁŒpÂ0Ã0™†cF(`Æ`Æ,bÆ/XÇŒxÆ`ó1x<Å~5œA‡EEuø%C“9s—|\0eÆHåÎKð>ûÏ<“L(ÆŒ\0Â·ÄÂ\'ãN30I.U/Õ-ÕÆsž’JJÉ9®b+£Ð„T~zçøéëÆû ãŽ:ŽGQÔuGQÔuGQÔuGQÔuGQÔuGQÔuGQÔuGQÔuGQÔuGQÔuGQÔuGQÔuGQÔuGQÔÌqÔuuGQÔqÇGQÔuLÇQÔqÔuqÇQÔuqÇS1ÇGQÔuGQÔuGGQÔuGQÔuGQÔuGQÔuGuGQÔuGQÔuGQÔuGQÔuGQÔu8páÃ¯çN\'¯ê¼zþ¥¸éÄõü£(Ø6X\"*™rÌ0Ta¿I\\tâzñª˜¹ˆšò”wÅmy“u°æNôn9ôÉQ…M\\&Éü•AzÙRû&f^[zšé“5)’XœÅ)ÑW £ó««è.]P½$Z¨zVnOÐ_OÒ78ž¼}AûGdOÏ/ýÎ­rSÜ+}kì9©›ŠÛsQ°yH«µ¾Âóˆ„u/&Ül…ò’Ü=^ŸB6‡Ê³¯2æ3™IŸÑŸ,Ô^x6è6èdyj[Rú—” „âCˆ1\" €T‚T‚T‚T‚T‚TÔTTƒTTÔÔÔ‡TƒT‚TTÔÔÔÔÔÔÔÔÔÔÉí*GêGê@ê@jFêFêGêGêGêGêGêGªGêFê@ê@j@ê@jGªFêGê@ê@j@ê@jDê@j@ê@j@ê@êDêGêBêBjGj]]ÈMHíHMHýH­K«¹ww.îøä©©ow!uÃä.¤N¤f¤>¤>¤¤>¥ÜŽÔ¿»ˆ­×Ùkw!õ\"µ.îåÝÜÔŽÔˆÔÔƒT†TŒT‰aüÄÈ/©}KêXRÂ™&¡·Aº\rÐa†âþÎÜO^<„UôÝ¾ÏUè³™–™çŸÐR:ææ·EÁD=M_è&—3Óvf‡1ôC	sÃÔô3ÑNüõ-ª™ùÛ¯ÈÛ¯ÈÛ¯ÈÝFê0`È0`ÁŸà\0\0\0Ÿ\0\0~\0~0\0\0Øá\0ØÄÀÀÁ`Ú0FÙ€Ú€Áƒ\r°dÐm6“D@ÚÐƒl@É¢\r ØA´ Úm6„Àf!±Æ\0Aºººººžÿ\0#=~F~C?\"å¨þzÔ=jI*H*-R¨·á—ôvü£¢sTu>ÕÖ9LšüTkžWÀ^xgË\n¾ß‘tÃ±åz\nÈT ªäÆ^™ReN‡-9ïåÀ°¨ÝÚ—ú—ú‘¢5d!Ð‚BÕ(Z%t¡v”/Ò…št.O žA4‚iÒ	 $ò	0$D°—â@H	^y>\'øžyæšOàòg‰çŠ(äïÏ4QÉþ2Š(\"ŠOñ”ÑERW€\"ŠI‰>ŠYÅÒ…Ò˜yd¡~¡d¡d¡d¡d¡d¡¿gN(\0\rÞÀ‹¾%.ÿ\0‰Ç†jRñBÙBÙN0Iq2&pzíÊt¡f”/…ÂPB\r´\"jYêYkÀÙn‹\'˜³Ýúá‘Ÿ†Ã§å¥Uª§ÍWÍº/\"êŽ$R‡*oSf£*ùo¤Å·2:OscÅêP¿\r•Ï×À‡\'—<‘ýW@Ï%úzûþ”¸éù…3óšùºú96òƒ‘‡\'À/OÉ3=oaì3ô½Eê¼×ô­ÇOÕe‡OÕe‡OÕgôvâ/+ö!=Å©°W\0?Ç\Z‚å0i.A?ÂèîZ½øU8¢·er¶øPŒ0‰1€_¶Y†²i¢Â-(ûM>ªÛhËŽºË/øâ«OÓý\\u}óÚ=óß}õ,¾ãóÏuÝgßŠiaß›í‡ôÔÎLäÍL€ÈÉÉŒ˜¿•/çKùÒÁYIsV¹k–¸ë†8ãž9ëù“&ü\ZëžöpÉ¬F!”.\"†óŽ(ç¨ k£¹pw$‚f¢Ò¢ö¢Î¢*B¥KL¤VÖM—†Ã§åGQÔuGQÔuGQÔuGQÔupÌÌÌÌu3àÏÿ\0]ž£¨ê:Ž£¨ê:Ž£¨ê:Ž£¯‡OÕe§OÖ ;Rÿ\0G·õ/ôq;Rý%âvñ0g+’~¡ä@ªE\'\Z‡JŒªåîYýð_wÏ1@Šˆ\0Yi “òaÁéüÍ º´äÐ]Z8{ :p/NËé„:q4k«,ù‡Y}xä›¬ºø-³ªî§W¶ëÂÝx[\'©YJŒ–¿£xõŠ5R£¨¹\núT]Am*,ù\rãÔ7‹PÞ-C^÷Á6¯CµÝÔo£“³Qe*:‹¬®¥G_Ä7PÞ-E´¨o¡¬ŸÑ­ŸÑ¬Ñ¼:‹ÉQa*-TA…5˜†\rˆN—Tø¥FÖ®ŸÑ¼jŽ¾\0 &‚MBV7ß~,ô,4.Tá‚ÐP¾;pÀu÷-žåÜ¸;’5\Zö:‹UE-«ç±zpÜtâvñºŽ£¨ê:Ž£©˜êgÇŸþýÔÌuGQÔuGQ×‹ûx¿©£‰Ûú—ûx‹üþ¥þÞ\"þ¥ÿ\0oyúí³ÿ\0ŸýüEçâF-U[!úæ%8,Å¡\\}ËW¾Ú…Ø‹P`#Íào(¼K=óøtßo±´|@aMZNL¿rS.Á\ZÓWÿ\0ï\ZâSOà\n>úí<’Ïž²¨âÓK´“H¢  Ä¶¸ªŠh¦Š(ªŠ@ÃvZ¢«(‚\n\"J\" ‰z¹`–Jã†–já…Ê¼2pÒ‰rùbz\'Bpäu%‘Üo¢ÂTuY×ŸËæÐJ(OèoÞñ–Cw…’…ú…†„\0Ùð\0øµ°(‹¨ÓÛ‡ë¯ž7QÔuGS3?Ñù™™Ž¼_]x‹ú—ý¼EýKúëÄ_ç$G\\‘3U©©«ñê!>I~…TDUÈŒÔ¾‰¹´«Ê¿XæY©¡ë1žÍ‹S\"§©‘ó]þ?I}uâ/óÆöÝòÜÏ\"3z»ó³äÚ-G+ôW#¨ƒÏÝ½igCÓ¥E˜9.½FŠ	£§é®¼Eþxîîf<ñzø‡Ô‚™è û§»‘Yß“»¶¯•üj¾õ2{/4s8r­äzjTTA#ÐƒH¯—>ÃÕ7ÏÍXÙj(Q#è¯_Dáà—-.Ä¾„ÇîãÌìÊ¥ò¼Ph†Aˆ1 „`‚¢ÂEQ R¡\"„P¾A|‚ý0z\0G$È#°RùòÄÈ/^ ¹Ap‚åêôÈ/_ ¼A|‚á¢”¨-Ð^ µAv˜%z‚ñ0bõ¢T¨-j‚[ ¿Ah‚Õ8†1Œh<NuŠTè-Ó¬PX ³Aj‚Ý’¤©‚áRéRùRÙRÙSkss2rNè]]‹K¶*ypv\"„*Ð¹Zþ	nYQ:ˆ¨\"ˆ¦hrTÛ‡ë¯xÌ§$ô\"W¨ÜÂèPC4¿1¹ƒ¤Ì\\—*o\0÷=i=KÖ§DF›9ÊçÀÃmö8}‡@èˆn!¸n!¸n†á¸nÆâÆæâanpÕo~Jª¢·ÿ\0-PS0·\r/~¿ŠªªÞâª·ïðÕUuUoÜ5[Ø[ß„ «pÜ7\rÓq\rÃq\rÔ7\rÔ>¤`áö222ØÈö`d6Á´!°‚¸Éþœ?]x‹Æ`Þ?^Œ4Ž¦Ê©ý[•ì9QNj×Ãàæ©ß£°„3¥#‹µ½_vBÒŸ’eû³÷s;ð,Ñ+’¹zjL­K%®<1„¦HµuÝ½}ÝÍÍm-m--Ñ\Z#D„h‰ÐÐ‡PÐPPƒPƒÐƒP‚PƒPŒPrš„\Z„\Z„z„„\Z„b„\Z„b„b„b„b„„b„`ˆ‚\rB\rB\rB1B1B)B1B=B1B%B1B\rB-B0F(F55=5±¡¡¡¡\Z!ô!Ô!ô Ô Ô Ôzjjâ7B,@Œ¾Ê„>„n„>„n„f„.„.„\Z„.„>„H‰Ð…ZZºº:zú²6EÈµ04AˆBËT‘Z–rýBÕCvääR7º\'{Ä´P_\Z6©æÉ¯Ó^\"ñ²òæÑêdúo’‹¯cR¶vIŠ+rÀ°j\\ô5ý)ô×ˆ¿€‰É}^QUåä9ðõD^¦^ˆtý+ô×ˆ¿©_Mx‹ú•ô×ˆ¿ëf2Œ£(Ê2Œ£(Ê2Œ£(Ê2Œ£(Ê2Œ£(Ê2Œ£(Ê2Œ£(Ê2Œ£(Ê2Œ£(Ê2Œ£(Ê2Œ£(Ê2Œ£(Ê2Œ£(Ê2Œ£(Ê2Œ£(Ê2Œ£(Ê2Œ£(Ê2Œ£‡£(Ê2Œ£(Ê2Œ£(Ê2Œ£(Ê2Œ£(Ê2Œ£(Ê2Œ£(Ê2Œ£(Ê2Œ£.ƒ(Ê2Œ£(Ê2Œ¦c/ù¾šñˆWFm\r«±¡€5<°[ þ]\'F	o\n²ÙïŒAÌxìÄ…T„Wnp®±{n(Å¥2epÿ\0ƒ%˜qÖßf°}œÅòF,g0l?Æ7Òm¤ßN7™˜³ŒÑ™®W\nµØ°Pa×\nb\0\nŠÊª*JaE¢…â…²…‚˜Yp¦\\(7¡¸QLà£)L\"ÉLJ!…](](](](](](6ïb×‰i<)IB°‘i!Þ(wŠâ‹	äH&MhMÇá†@„HD„N\0+Í‹Û±|ö/ÞÅÇÛ±a‚¥Ò¦ô\ròùu7¿uK{¹¾ƒ\'Ô=$à_ZV·c~¾Åò‚Û»\nZ‰,™9¢.ëÃôÔäá^©~šñõ+é¯R¾šœœ+ú•ôÔäá_Ô¯¦§\'\nÿ\0„Ê2Œ£(Ê2Œ£(Ê2Œ£(Ê2Œ£(Ê2Œ£(Ê2ŽFQ”eFQ”eFQ”eFQ”eG£(Ê2Œ£(Ê2Œ£(Ê2ŽFQÃ(á”páÃ(áÃ(áÃ‡8páÃ‡8páÃ‡8pÊ8pá”eFQ”e2Œ£†Q”eFQ”eFQ”eFQ”eFQ”eFQ”eFQ”eÁô×ˆ¼LŸ¬õ}gR\rô-yþàR|<5Š\\ªCªD\rþVŸc_Ø£øV·Á˜`ÿ\0?ÆRs±b¡n¡n§×»ÞzMÉÙ?&¸%±Ü¶;–\'rÄîXÝË¹bwÆíÎ\\ÐpíÑ·0å·ñm¶ßâé†:m7ßáé†mÃ·86ê[ü<»&@›¥n¸væ3sIiw-®å¥ß\0ÖrÒî^ËÓ¹xw/åéÜº;—Grèï†šWÛ“2hOÉù¡óI	#%ä‚síò…Âƒ.öw¶°‘i8$O„ÐNb ¶žjÑì\\ý‹×±söÃý”S\n]ên×Ü’Ô·»áÓ·±¹â{ÞôžŒÉ“Ütpý5—ä‚æät0áÃ‡8páØ:Ž£¨ê:ŽGQÔuGQÔuGQÔuGQÔuGQÔuGQÔuGQÔuGQÔuGQÔÌÌÌÌÌÏÌÌÌÌÌÌÌÿ\0ñ™ðfgŽfffffx}Dy(QWf®xåoêŽaÉr\\VìýQÐ[¡uÃ™?Q7\Zù4UOÕ~T5eýV&HÝýUd÷äs~©æ»‘Éú¨ú—õUËè9_ûÿ\0â>8ãŽ>>.8ãŽ>.rzFð¸ün8ãƒ‹Âãàø?àãù|ÅÇáqø\\~ÅÇ~qÇqÇqÇqÇqÇqÇqÇqÇqÇqÇqÇqÇqÇqÇqÇqÇqÇqÇqÇðp2\' ãŽ8ãàãŽ8ãŽ8ãŽ8ãŽ8ãŽ8ãŽ8ãŽ8ãŽ8ø8ãŽ8ãŽ8ãŽ8ãŽ8ãŽ8ãŽ8ãŽ8ãŽ8ãŽ8ãŽ8ãŽ8ãŽ8ãŽ8ãŽ8ãŽ8ãŽ8ãŽ8ãŽ8ãŽ8ãŽ8ãŽ8ãŽ8ãŽ8ãŽ8ãŽ8ãŽ8ãŽ8ãŽ8ãŽ8ãŽ8øàVx‰ÇqÇqøAñÇâ>#ÇÇÄqÇqÇqÇà>à>#ÀŽ8ü üøâ8øˆÿ\0„øÿ\0Ø\0\0\0\0 €Šèu\\,½%ã˜ü`Ä\0=ÿ\0æÿ\0žÁãîýo²’çÍÛþŸ»åÿ\0ˆ‡!˜n©þ_Mÿ\0xñãÿ\07ÿ\0Þ?ø^<~aãð¿\n/ø^8~<~ÂñãÇ…ø^<xáÃÇë…æàñúuð~¼/Ôxî\rÖuðwúðûñúñŸ¨ñãÇg^;ÇŽÂýGáëà¯<E¨üsð„ü8xþ-!Ô¢r35é¯oùøïÿ\0ü_þ­ù/û¿ \n~~ #‡;Œ~ÿ\0°\0\0\0\0\0\0”ˆ&µÉ,åÉ*:^¥ºKt:¶èXþKÀéxeKÀéx/¬¡a|Àë(:^KÁa|Áa|Áa|Áa|—Ái|Áa|Áa|—Á¶ùðZ_¥ðm¾|oŸÓçÁ´ùðm>|oŸËçÁ°ùðm>|?ŸßçÁ³ù6ÿ\0>	Ï·ƒgóà¶ðlïØÙß±³ùðlïØÛß±}àÙß±³ùðlþ|;ö6ì]x6wìlïØÙ_±³¿ca~ÆÂý‹Âý‡ÏƒgóàØ_±qàÛ|ø6†Òý¡´6†Òý­ûKö6ÀØ`l\r‰±6&ÄØ›SfmM©µ6¦ÔÛ›SnlÍ©·ÿ\0˜ÜÝÜÈÌÌÌÌÌHÜíÕÝÕDIDDDÛ^ˆÚ#dl‘¶Á6¸VÜÛ‰FM<H.~GAÐtAÐtAÐtÓAÐtÐfƒt¡Ð3AšÐé Íš8Y Íh3C¤é:N‘º#4 Íè3AºÐnƒt Íh7Aº\rÐnƒt Ýè7Aº\rÐnƒt Ýè7Aº\rÐnƒt Ýè7Aº\rÐnƒt Ýè7Aº\rÐnƒt Ýè7Aº\rÐnƒt Ýèm\rÐnƒtÂnƒt6£hnƒt¡´7ChÚ¡´mFÑ´mFÐÝ\r£hÚ6†èmFÑ´mFÑ´mFÑ´mFÑ´mFÑ´mFÑ´mFÑ´mFÑ´z@†àdAdAdAdAdAdAdAdAdAdAdAdAdAdAdAdAdAdAdAd0alYAdÅ`È22ƒ È2ƒ È2ƒ Ã È2ƒ È2ƒ&2ƒ Éƒ&ƒ Ã È2˜2ƒ È2ƒ È22ƒ È22ƒ È2bÈ2ƒ\r‹qÿÄ\0,\0\0\0\0\0\0\0Qa!1A q‘ñÑáð0P¡±Á@`pÿÚ\0\0? m2¦Œ•KÈµì‹È±ì‹>È³ì‹~ÅŸd[v,{À´ìxÂ<¿ãHè/h”~ÄP»ˆ–]ƒi# ”¡>ÁG	ö¬Ÿ`–¢S –²}‚J„ûDµ	ö	*íÔO`–¡~Z„ÑrÔ\'Ø%(_€”¡¥\n+–¡eÔ#‘\ZD¥\n(JPŽFÉ¦šÊ%(A/4”IYDKP „µ$¨PFˆ¢j+(¨¼h˜Ë)+Ÿ¨Ù²òŸQy/Q%Büƒæ?Sæ?Sæ?Sæ¿Sæ¿Sæ¿Sâ¿\\ÎE[”8h#lÐµ‚l„CLì¡pw×¯¦QAUYI2PØ³‚‚|dË@ðÌ´-‹BÐ´-BÑ…¡hZ¡l[„üÆíaœy °¹»HŸ>2|dŸùjêª»¿ñ¬çÆ°K\'!Yµ‰Ö$¬…bU¼J–±Lòj8ž¥ß¿ùûü–\\éÅ¿3èÇüºûl¢[FuÃ»æÿ\0è×Üöúÿ\0\'Di\\;¾oì‹ÿ\0ù:#Jázó?¼/ù¥þ?“¢4®nù¾(d2‚†C!C!™ðÌ†C!áaøcëçÿ\0aòtF•Ã»æøTn;ÏyõKéeÿ\0ãã¯ˆXÃ–7Gzª|Ž^5pj,bñƒ¡ÃZö/w‹½â(RÃBwÁ&£¡hªøl5\Zj\'!ÜâŸ]{Ì°ËòwžŸ=-3n‰×‚«ßïL‹,Š9Jy¼W¿JÞÁM¹‡·›º\r~Ü¯hphó’Ïƒ4·pÛ%‡6oc	ÊUnb­ÐÁËb5Mçƒ‚ƒø0H^ª†ùÐµŽ>(Wµ\nö¾\n>8W·Ç±•r\Z–ÿ\0ÐW·‹ö	[¡×®ÂÊØç5Ù%{4øÉñãâ¸c^Ñ7»¤Á¿•à.\rWÌÓ÷ºÇ«7ax|ó€½Þ,ñWxU3˜Á“îÅ~ì/SqW¾\n£Ô\Zr}ÙUÊ¹¶Q¥fÅTÇÝœ¯VÃ¤õ„Þn<—ŠÄª±Éž*éõˆ›»9F)	Ê§<?\'Di\\/ò?óçõ³àÌÌÏë†fxfgR^9Ô–K%™’êK©,—VK%’Éu%Ô–K%Ô—R]Id²j%’êMLš‰u%Õ’êMLš‰u&¦K©5êK©.¤²Y.¤º’êK%’êK«%Õ“S%Ô–K%Õ“Q.¤º’êK©.¤³:’êÉu%Ô—R]LêK%Ô—S:’êK©,–K%™’ÌêfK%™’ÉuÂ]Idº™™™’Éfu3®Ìø3¯ÅÑ\ZWï›ýÿ\0à¯ìDi\\;¾o÷öu÷¼¿àþˆÒ¸w|ÜPäÙ!)|²LyHÄç!ÝšépR”+@_&kB‘	-¶e†Ò§F4V‘6I\'ÖÏ\n^z¨šc F2J9—³n&C,k™¶4Ó‡ÿ\0¿â>ˆÒ¸V¿|RÒ+w(<Hðó.‘]*ºncIo½­7Ë:V1ÔãMŸ½r½æ5¤»%K6ƒ°WäwµP®Ô„í”Út•Ê£ýcë¬åþIÅÕ´dØé»Uÿ\0Ã£ƒ¢4®ƒ›ú	ây£É\\ØšËv”‰-”!<ŒˆUÑ\'õêØß—xÓ-5<ii¨m~kµm‘*¤¡ÂM5>ñÍfÊ\'>™f’’65–I-²¡M„„Úóµ5fybLUÒ·§¹Ç—žByùççœðuUÕøÊ8ë¼ùÖ!ÞZ p¶º	T\näHžÄÊ‡n\Zà4ëweÂ»·#ñøo¨ð!àa†°3A®4ççµ–êáíùÓ/«ÌcC¡i5Š¤¸õZ/‘ê˜ã1`^­„U‰qQÌ®»$Ul­ôˆˆ„Dø¬|V>+ŠÇ€v‡…\0:ç%Á=ÜE™õ˜­Ey†-!†22rÔË7ÁÑ\ZW\nø.þƒ¶°+’zW×,87ñõ<ø¢saXµ±œFYš2à¸.\"â&¤TbàäR.\"jEÔ]DÚMBm.\"kPš„Ô‰¨s¢l:“=ƒ¤é:ßXE„P:´Š‘x²ˆ¤E‹Ê9”EÂ,\"Ê,\"Â,H°°\"Ê+!aaa„PK`ZE‘`YÅ„X™ ´…ÈQdrÂl‹°,¢Ê\"„%aA!+Kj”‹(äoHÐE(J‘œ’ªV\";°“\"ÑnÁÈrH§\0äpŠDZE¤P\"„E„XE¹‘H²ˆ¤: ‚‹“¤é&´tqðtF•Â¾ñ¢hzJûfä\"Qhw›š~`8{Útd¢çúßSÃÝÕ®l)Vú\"öR[ÚrÐÐÿ\0<ÝyŸ6Þc;Éàwš*]üb`ß½ñHÁïÆµ\rÞb³«Ã¼wÃ…É˜4^–º3Y‰Ðâ‚\nôWâ½è®8pe×¯YqÇ‡=®Ç¹ÁíXmG={@Å\"4N3Í0¬¦öÂÓÄ·n=“lÍ1d…lE/dE\"=‚0CÙ ö„=Ä²CÙöD=³„=±Ä=‘Ä=‘EÓ7D4ÄÑÁ2é‹ i{8üÖg°V‘×¶vÛ‚SÀ¯^ÑË¬	ÊcX•í¢uí6Ã«\rØ^Ó>d{\'h9]qo°.ßà­V%µâ‚s…[­i>ÚËÕæÛÏ‡àè+…|ãüÁ”ÿ\0\\ÓSÍ1$´$”4ö5Á\rØÉ¥6\Z+Ú\rÙenŒ–}Z}ñ“cæ¤¨ÌÕíÿ\0§óÿ\0F_ìø:#Já_ß		dCÍ·»Íð¬Ã:kòf³=`—éÿ\0ç³<Wú\'è?õH¾“ÿ\0ÉÑ\ZW\nø/ÿ\0¿ÎþÌ¿ÛòtF•Ãð/ÿ\0/ŸÙ—Ú>JˆÒ¸RÏ™Ä“!ÑèÈd2„2Œ†C!Ð†C!Èd:2†C!Ð†C£!Ð‡B2Ìé†fd:320Ì†fgL3!ðÌÌ‡ô33âŒ#èÇaA<3ÿ\0$cGdqçC32Cà‚È ‚Œ†Câù*#Já\\Y†9Q|Þž|„Þ¹à£¬õ‡îQK»>^<Ü:ßYóóé“/ßaÕ:Ëëe×y°¡ÜÏ6ù	ŠÞ|Ø¿xê¸~í3ªLb_-àEûÂó\'ëàÀë²j›,øÇhÄk\\yDFhÜÂ	‰®6=ÒÆ°(Vœh¸¼+ø=\nµºUüŒ*×1PÂîÆ\"¿ÊE=Â*<µ´÷™j*;w£¼eØ‰÷.M=Ì(,×qÈyvï9(ï2­ç\"÷L»²9ºB¯ârî1íÜ…ÝŒ{!Wñ0‹^×!=3¿‰„_ÈÂ¯äaWò0¨•#þ©½ÐÂ¯æä\"þ#63\n=	9Û\"Z§ÌrBÌ“Hð\"Ÿ\n>M:\ZÊ\Z!4n›$Ä(ŽÆÔhdñ(|>£•\r\ZþÑ\ZÀÚ\"@#GÀkCZPH¡#Í/‘![tBÈË-½ðî-ºî°g\'/ÒØú,^ïMCöR`Þr-’VÖK‡ä¨+…kÏÿ\0…—ô³àÏý™ðg÷/“¢4®¯;ìký¬_ä‚>ø¿ÇðtF•Âµçÿ\0Æç‹ÿ\0•ø:#JáZó¿ãgüïk	úDi\\+^üjÿ\0Ûë¿¡ñtF•Âµçqfô!ÑèC¡Œ‡B†E‡FC£!’¡†C¡†C!ÈcN„:Èt3!Èd32t!èC!Ètd:C!Ð†fC!ÆÈd32†fffffC3!C ‚a†C3:fA2xC!èC3!Èd2†C!Èd2†C!Èd32‚†C!Èd2†C †C †C!Èd2d2Œ‡Bt%BT,A*\r8~*ˆÒ¸V¼î%œ²Ï_$ïŠ\Z8#Klªc:é1§V$­0aîÝgÚŽ‘ÏxT­;ÓÉ\\˜ùYu^¡åF—x_¡1qääªæì©3çÇÏMøµzÐ÷;ƒä‡È›¯P|à-®è7H:7T<Ð¿{‡&}ÀuÞ`~ëPSïNòÂ‚žÚÇYy­à†¯\0XŽò™T4h£ô²\\;Çeø{Ýl~Âv’p,ÁB²ébtý<«jÔEÚ‘çX3Ü-Ì\\({©¤sBÛ[Ç›G\Zý#kÓ–†àÏ¢MrÂêßó_¦0âÎB§%ö ¸å\rh_Ô\\Y¼,êÓF¨îS—ýeû”ù¹~ñ/Ýåú;ŸJ¿ðÉ¿}˜—érý5Ã÷˜ö£lO÷ÌLºOlKû1›{òÊ\ZþGY¹õ˜ÖW”Ì9®èää[Rú&´½é~˜I\ZwÃTºfÿ\0’œ½æõ—·õ¢îIoÜ…û¿ÔÁoÍËa¦lKô ~Þ>}°Á_´Ëuºí”~Ÿ†Ëô|æ¹QnT¬ª8~.ˆÒ¸WåÜGÛ~ˆÑÃû_ð‹ûžÿ\0eCX|]¥pþ×ÝŸÙãíqþWô>.†•ÿ\0•/—¡¥pþß¶¯û—¢4®ßÅ\rèC¡Œ‡BŒIÐ‡BŒ‡Bt\"†C¡Œ‡FC£!Ð†C£!ÑèÈt!Ð‡B(!Ð‡FC£!ÑèÈtd‰P•*C!ÑèÈt!Ð‡B„2t!èC¡„:2d:2t!Èd2t!ÑèC!Ñ’¡èC£!Ð‡BT%FJ„:èC!Ð†E‡BŒ‡B„:èC£\"‚„PÈtd2(d2d2t!Ð†C¡†C!Ð†C!ÑèÈd:Èt%B†C£!Èt!Ð‡BŠ Ša–‚ÃÀ°Xe‚(,Œ‚Á`y8|?\'DháýœLˆh¾ÌÚ@ý†^óúKö¹ñóàAû<½Çô—¹ÙŒá	APG%Ò±Ã­ÙáKÙï6ÃŸ“œ¼ùhbÐo.4¹DÉŸ±°þý˜o½»‰¹fÎƒà§Ãöy^Ö,»!wíìxp~Æ\rë>Ø_:öÀñ ÷ÝÐµŽ¯à>4#_ pfåB:ÏAJYt¿f\Zg²>\0<0Gü3àAûÌ¿˜±g‚D½…îtöð\rV.kƒr24Ð³Ö)«–¯„àã¡úbœ†Ê?l†=xmzòÖ+Üèìétˆ¬Êéz\nìrgð&Ì®™B¾7éX8õcÞÃŽ+ôI“°0~ŸÀxRÍx-	ÌÔBði‘nòÐD²<hd{„…(1“0¶<4Ë—ËFöñi2Þ0÷Îb«ðß¢í—¬Ì\Zfvjßäû@º¸ºßSu¼§½ˆý€^HüR”IsDÜïpüÝ¥p¿Íÿ\0ŽÏÇç¨+‡6ß?øUô2ÿ\0˜¯æ+…oÏìùý8Bÿ\0¡áùz#OÑ‹~|jI›G-\Z†Ùä’–º/ÌHVù‚×týxÍKæœ	:£89Ì”‘:~6E,‰7”4%2ÛH6Ð†m³É$>»\'áŒJ¬Ä—Í3	çÒ’ÞŽ©Ù— Ô£&Ñ˜ñd¯i\'G‘3GOòÇýâÅÏÒAoÄ³p‡$Q^M‹¥¡IŸÜD‰ÃrÓIdV®ú…ÀåE ¨ºŽ[â}ÁNfmoø.ôž™H´æLvúƒ	ÿ\0veX í«ßÖ&žRr¨õÿ\0_øÎÑ\Z8…x–Pt%ôÂd\Zæû4Ÿî)Ÿ&‹«•XgðÍ4Òi¦šiÒ¹;pk*æÕ%Ÿ;Ë|Æƒ8Zµ©¨lÕE6´›†:ªþ»€÷µ›lköÓ¾§zQÈë•ÉÌªUÂbàE¤—æa&Ó²–AT8pb²*€ªb©•ÃTÉQ+\"©ŽHZ.TÆÀª²>1ñrÝŽ¯j|<­öô•í³áånöån7 -ÞÈÖìJÝwAðÒª]nvn? -ÎÐ-æô·@[ý¡[Œè+{°ÝÐãz\nÝwA[Ý±JYöEo? ­îÀ_:\n>Øª‡A[Ý©[½[ìè+{µ+yÝov¥ov%o» ­ÞÔª—I[‰U.·;·û\0·;P·û1s|¡nv¡V:Þw@[Ìè\n¹ÒVÿ\0f´ÂÞìÂÜìBÞwI^×\n±Ð¶„K_¤-îØxPU®€·{-ÎÂ+w²™ÐçlWð½Ø¿ØA{\"*¤J¤\n°*®5X*¢wQ[§ÜEWEn~3u\ZÍ[Èªéäkšßüe/{%ï\'çÂðw®¼©óø²Ùz®êT¢‹Îý¼hvfÿ\0°ßöW°±—e[kD<?;D&® ·âxA¤S÷ÉÌó*9X(ënSSiŒ“ÙÕÓ^1ð\rMŠÞ-Š¥eºÖ/69ìZiuÒH‡LÃM\ZÖX®‹„SªáÄÌ¶àŒ‹Lc/p“3/!	ub˜¨ŠE‘uE‘uEÄdê‹\"ê.¢ú,‹ˆU«\"ú/\"ò6 8¥±u‘d]Eô]Eä*¨¼…UÈ¸ŠM‘h^E±}ÂâEä_FÜy@ª¡VÔƒrú/—…T¸_ÀÊ×]ÈðiŒV]³&[ªã=ù™úæ,ß\\ëw2èÆ]ÄúË¥ó?6dê_2°óIöÏ‘šrdï4‚d­{£ìr6BŒv>ÄoÙŽÄèÈî“£ô&ï$Ë»/ÐÍ§qè|MèK¯èŸÑþÏCà_Âb\rÑ)[GžÍšI„ÓIiÖ<?/EÂ½\n‹‡*1‹M)J¨(r}Ú\Z¹¨aÇ©=ìò©ú§:¤n!ZÖ:‡¤“}ç¬ÖJ‚ëKÁW8UlGL¥•©kc˜ÿ\0(Øä’¢l@=¡m8\'(Q=óT‹=”b¡øM$›RžÊ°c›Ñªk3;SYž2U1YY$Í‹0Liº+¨ÞÚÎLåIpd§Q½•:Ç»QQÞU·hÍËH¥r²X(í»|„áÑ3Šµ\nöÕ¦êV\0[PW#[9	½pD<„è·Bo%\"Ð3qfKuÃò{)äfÔ:Š9µ5¯C:eÐ›VŸ#7,å©?‘›‘gH¸Û•Y™ÑFmPFÁŽƒÈËL×È\r‹àváC\"9zgÀüËÐ×Ìì6|ÁM|½½=ï†…·— 7þÿ\0`¤¾^€Þ¾WbÇò Ûð¿gÆüSËÒ-½!ü‹ô7zA¿á~W%ôþàµr_AûÐoø_ƒ)¨¹/ ßð¿%ò_A»á~Jä¾ƒw¥ô¾àt¾ŸA·Óú~Kè:$ô= ×°z\r7 ô\Z}¾Iè4í½}¡èYº=/@xw èO$ˆM$JÐr#‘¢\'´`r°›°·o†?/EÃ½\nñ¢_µÌQOQóGšàî‡ÊT•D7®êÛmÓÆA¢IÚOSvLªÖÓ¼\0xÂÙ6*Š;5ViéÝ§6µÐÛo>ÿ\0lýöx#þä(4p=\ný•7¨áKY</éçÿ\0>±_èÏü5Nô+ÿ\0¾à¸Wú\'	úß!A¡Àô+þþÍøøùÛ—Øþ^ˆYNW‰\'B(!ÐŠ…‚t\"‚T\"‚t!Ð‡B(d:èC¡„¨C£!Ð‡B(d:2(!Ð‡B7\"Ã\"‚t\"‚tdPJ„PC¡*°X,*¡a–**,¡*‚:!Ð„‰$H–‰`F †X H†C$H‡Bd2ŠèE„0!Èd<	P†HŠ	!è@‡B(Àt	8€	$H–‰Éb.	&O‹å©ÂÞ…x‘ò9<üôœÓ©ÀeÑbP¼m£tÿ\0²7§,6ªÝ1[v™ó˜\n¬z`•?@£u¥zÒ‰ñòÆ`Ëô~<’OògèÆgõ¿Ò:ae|92#1î¸4½¬;•íâÝ­^Û°ëX¢Ž\r3C\r¡c[ ^!t­p—~–w‡U¯‰Ÿ¤á$^HñÐ ‹ ²…\"—|b[ñËÀÉ·½²>ë}©dÐ¼Ú	ÖMÕ:Ûy½¶›¬äÝ[¡½§›¬›ØÒ‰í¼Üy<Ý|ÞÓ…«G¬ƒRÉÌ\ZVMM[\\êa ë ê‚ë\0öÔ\ZwúƒØhžÃÒµöØgX3Û{ÙãÈãRÉ¢jZÆ{\rXœjYtÔ´Ð–…“:.³~õ');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

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

-- Dump completed on 2020-06-03 19:58:33
