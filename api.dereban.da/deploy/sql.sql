-- MySQL dump 10.13  Distrib 5.7.23, for Linux (x86_64)
--
-- Host: localhost    Database: asialr_vda
-- ------------------------------------------------------
-- Server version	5.7.23-0ubuntu0.18.04.1

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
-- Table structure for table `blog`
--

DROP TABLE IF EXISTS `blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `blog_title` varchar(255) NOT NULL,
  `blog_staff_user_id` int(11) NOT NULL DEFAULT '0',
  `blog_text` longtext NOT NULL,
  `blog_status` int(11) NOT NULL,
  `blog_entrypoint` int(11) NOT NULL DEFAULT '1',
  `blog_media` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog`
--

LOCK TABLES `blog` WRITE;
/*!40000 ALTER TABLE `blog` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_category`
--

DROP TABLE IF EXISTS `blog_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `blog_category_name` varchar(255) NOT NULL,
  `blog_show_headers` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_category`
--

LOCK TABLES `blog_category` WRITE;
/*!40000 ALTER TABLE `blog_category` DISABLE KEYS */;
INSERT INTO `blog_category` VALUES (1,'Dating Tips',1,NULL,NULL),(2,'Latest News',1,NULL,NULL),(3,'News Functions',1,NULL,NULL),(4,'Success Stories',1,NULL,NULL);
/*!40000 ALTER TABLE `blog_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_link`
--

DROP TABLE IF EXISTS `blog_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_link` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `blog_category_id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_link`
--

LOCK TABLES `blog_link` WRITE;
/*!40000 ALTER TABLE `blog_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `iso` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `order` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=240 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'AF','Afghanistan',0),(2,'AL','Albania',0),(3,'DZ','Algeria',0),(4,'AS','American Samoa',0),(5,'AD','Andorra',0),(6,'AO','Angola',0),(7,'AI','Anguilla',0),(8,'AQ','Antarctica',0),(9,'AG','Antigua and Barbuda',0),(10,'AR','Argentina',0),(11,'AM','Armenia',0),(12,'AW','Aruba',0),(13,'AU','Australia',0),(14,'AT','Austria',0),(15,'AZ','Azerbaijan',0),(16,'BS','Bahamas',0),(17,'BH','Bahrain',0),(18,'BD','Bangladesh',0),(19,'BB','Barbados',0),(20,'BY','Belarus',0),(21,'BE','Belgium',0),(22,'BZ','Belize',0),(23,'BJ','Benin',0),(24,'BM','Bermuda',0),(25,'BT','Bhutan',0),(26,'BO','Bolivia',0),(27,'BA','Bosnia and Herzegovina',0),(28,'BW','Botswana',0),(29,'BV','Bouvet Island',0),(30,'BR','Brazil',0),(31,'IO','British Indian Ocean Territory',0),(32,'BN','Brunei Darussalam',0),(33,'BG','Bulgaria',0),(34,'BF','Burkina Faso',0),(35,'BI','Burundi',0),(36,'KH','Cambodia',0),(37,'CM','Cameroon',0),(38,'CA','Canada',0),(39,'CV','Cape Verde',0),(40,'KY','Cayman Islands',0),(41,'CF','Central African Republic',0),(42,'TD','Chad',0),(43,'CL','Chile',0),(44,'CN','China',0),(45,'CX','Christmas Island',0),(46,'CC','Cocos (Keeling) Islands',0),(47,'CO','Colombia',0),(48,'KM','Comoros',0),(49,'CG','Congo',0),(50,'CD','Congo, the Democratic Republic of the',0),(51,'CK','Cook Islands',0),(52,'CR','Costa Rica',0),(53,'CI','Cote D\'Ivoire',0),(54,'HR','Croatia',0),(55,'CU','Cuba',0),(56,'CY','Cyprus',0),(57,'CZ','Czech Republic',0),(58,'DK','Denmark',0),(59,'DJ','Djibouti',0),(60,'DM','Dominica',0),(61,'DO','Dominican Republic',0),(62,'EC','Ecuador',0),(63,'EG','Egypt',0),(64,'SV','El Salvador',0),(65,'GQ','Equatorial Guinea',0),(66,'ER','Eritrea',0),(67,'EE','Estonia',0),(68,'ET','Ethiopia',0),(69,'FK','Falkland Islands (Malvinas)',0),(70,'FO','Faroe Islands',0),(71,'FJ','Fiji',0),(72,'FI','Finland',0),(73,'FR','France',0),(74,'GF','French Guiana',0),(75,'PF','French Polynesia',0),(76,'TF','French Southern Territories',0),(77,'GA','Gabon',0),(78,'GM','Gambia',0),(79,'GE','Georgia',0),(80,'DE','Germany',0),(81,'GH','Ghana',0),(82,'GI','Gibraltar',0),(83,'GR','Greece',0),(84,'GL','Greenland',0),(85,'GD','Grenada',0),(86,'GP','Guadeloupe',0),(87,'GU','Guam',0),(88,'GT','Guatemala',0),(89,'GN','Guinea',0),(90,'GW','Guinea-Bissau',0),(91,'GY','Guyana',0),(92,'HT','Haiti',0),(93,'HM','Heard Island and Mcdonald Islands',0),(94,'VA','Holy See (Vatican City State)',0),(95,'HN','Honduras',0),(96,'HK','Hong Kong',0),(97,'HU','Hungary',0),(98,'IS','Iceland',0),(99,'IN','India',0),(100,'ID','Indonesia',0),(101,'IR','Iran, Islamic Republic of',0),(102,'IQ','Iraq',0),(103,'IE','Ireland',0),(104,'IL','Israel',0),(105,'IT','Italy',0),(106,'JM','Jamaica',0),(107,'JP','Japan',0),(108,'JO','Jordan',0),(109,'KZ','Kazakhstan',0),(110,'KE','Kenya',0),(111,'KI','Kiribati',0),(112,'KP','Korea, Democratic People\'s Republic of',0),(113,'KR','Korea, Republic of',0),(114,'KW','Kuwait',0),(115,'KG','Kyrgyzstan',0),(116,'LA','Lao People\'s Democratic Republic',0),(117,'LV','Latvia',0),(118,'LB','Lebanon',0),(119,'LS','Lesotho',0),(120,'LR','Liberia',0),(121,'LY','Libyan Arab Jamahiriya',0),(122,'LI','Liechtenstein',0),(123,'LT','Lithuania',0),(124,'LU','Luxembourg',0),(125,'MO','Macao',0),(126,'MK','Macedonia, the Former Yugoslav Republic of',0),(127,'MG','Madagascar',0),(128,'MW','Malawi',0),(129,'MY','Malaysia',0),(130,'MV','Maldives',0),(131,'ML','Mali',0),(132,'MT','Malta',0),(133,'MH','Marshall Islands',0),(134,'MQ','Martinique',0),(135,'MR','Mauritania',0),(136,'MU','Mauritius',0),(137,'YT','Mayotte',0),(138,'MX','Mexico',0),(139,'FM','Micronesia, Federated States of',0),(140,'MD','Moldova, Republic of',0),(141,'MC','Monaco',0),(142,'MN','Mongolia',0),(143,'MS','Montserrat',0),(144,'MA','Morocco',0),(145,'MZ','Mozambique',0),(146,'MM','Myanmar',0),(147,'NA','Namibia',0),(148,'NR','Nauru',0),(149,'NP','Nepal',0),(150,'NL','Netherlands',0),(151,'AN','Netherlands Antilles',0),(152,'NC','New Caledonia',0),(153,'NZ','New Zealand',0),(154,'NI','Nicaragua',0),(155,'NE','Niger',0),(156,'NG','Nigeria',0),(157,'NU','Niue',0),(158,'NF','Norfolk Island',0),(159,'MP','Northern Mariana Islands',0),(160,'NO','Norway',0),(161,'OM','Oman',0),(162,'PK','Pakistan',0),(163,'PW','Palau',0),(164,'PS','Palestinian Territory, Occupied',0),(165,'PA','Panama',0),(166,'PG','Papua New Guinea',0),(167,'PY','Paraguay',0),(168,'PE','Peru',0),(169,'PH','Philippines',0),(170,'PN','Pitcairn',0),(171,'PL','Poland',0),(172,'PT','Portugal',0),(173,'PR','Puerto Rico',0),(174,'QA','Qatar',0),(175,'RE','Reunion',0),(176,'RO','Romania',0),(177,'RU','Russian Federation',0),(178,'RW','Rwanda',0),(179,'SH','Saint Helena',0),(180,'KN','Saint Kitts and Nevis',0),(181,'LC','Saint Lucia',0),(182,'PM','Saint Pierre and Miquelon',0),(183,'VC','Saint Vincent and the Grenadines',0),(184,'WS','Samoa',0),(185,'SM','San Marino',0),(186,'ST','Sao Tome and Principe',0),(187,'SA','Saudi Arabia',0),(188,'SN','Senegal',0),(189,'CS','Serbia and Montenegro',0),(190,'SC','Seychelles',0),(191,'SL','Sierra Leone',0),(192,'SG','Singapore',0),(193,'SK','Slovakia',0),(194,'SI','Slovenia',0),(195,'SB','Solomon Islands',0),(196,'SO','Somalia',0),(197,'ZA','South Africa',0),(198,'GS','South Georgia and the South Sandwich Islands',0),(199,'ES','Spain',0),(200,'LK','Sri Lanka',0),(201,'SD','Sudan',0),(202,'SR','Suriname',0),(203,'SJ','Svalbard and Jan Mayen',0),(204,'SZ','Swaziland',0),(205,'SE','Sweden',0),(206,'CH','Switzerland',0),(207,'SY','Syrian Arab Republic',0),(208,'TW','Taiwan, Province of China',0),(209,'TJ','Tajikistan',0),(210,'TZ','Tanzania, United Republic of',0),(211,'TH','Thailand',0),(212,'TL','Timor-Leste',0),(213,'TG','Togo',0),(214,'TK','Tokelau',0),(215,'TO','Tonga',0),(216,'TT','Trinidad and Tobago',0),(217,'TN','Tunisia',0),(218,'TR','Turkey',0),(219,'TM','Turkmenistan',0),(220,'TC','Turks and Caicos Islands',0),(221,'TV','Tuvalu',0),(222,'UG','Uganda',0),(223,'UA','Ukraine',0),(224,'AE','United Arab Emirates',0),(225,'GB','United Kingdom',0),(226,'US','United States',0),(227,'UM','United States Minor Outlying Islands',0),(228,'UY','Uruguay',0),(229,'UZ','Uzbekistan',0),(230,'VU','Vanuatu',0),(231,'VE','Venezuela',0),(232,'VN','Viet Nam',0),(233,'VG','Virgin Islands, British',0),(234,'VI','Virgin Islands, U.s.',0),(235,'WF','Wallis and Futuna',0),(236,'EH','Western Sahara',0),(237,'YE','Yemen',0),(238,'ZW','Zimbabwe',0),(239,'ZM','Zambia',0);
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dates_items`
--

DROP TABLE IF EXISTS `dates_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dates_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `sender_user_id` int(11) NOT NULL,
  `receiver_user_id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `price` double(8,2) NOT NULL,
  `credits` double(8,2) NOT NULL,
  `type` varchar(255) NOT NULL,
  `mobile_number` varchar(255) NOT NULL,
  `timezone` varchar(255) DEFAULT NULL,
  `hotel_address` varchar(255) NOT NULL,
  `contact_number` varchar(255) NOT NULL,
  `invitation` varchar(255) NOT NULL,
  `upload_form` varchar(255) DEFAULT NULL,
  `credits_added` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dates_items`
--

LOCK TABLES `dates_items` WRITE;
/*!40000 ALTER TABLE `dates_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `dates_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dates_match_infos`
--

DROP TABLE IF EXISTS `dates_match_infos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dates_match_infos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `acceptance` tinyint(1) DEFAULT NULL,
  `scheduled` timestamp NULL DEFAULT NULL,
  `venue` varchar(255) DEFAULT NULL,
  `contact_code` varchar(255) DEFAULT '0',
  `contact_number` varchar(255) DEFAULT '',
  `message` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dates_match_infos`
--

LOCK TABLES `dates_match_infos` WRITE;
/*!40000 ALTER TABLE `dates_match_infos` DISABLE KEYS */;
/*!40000 ALTER TABLE `dates_match_infos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dates_periods`
--

DROP TABLE IF EXISTS `dates_periods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dates_periods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `start` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `end` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dates_periods`
--

LOCK TABLES `dates_periods` WRITE;
/*!40000 ALTER TABLE `dates_periods` DISABLE KEYS */;
/*!40000 ALTER TABLE `dates_periods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dates_types`
--

DROP TABLE IF EXISTS `dates_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dates_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `status` int(11) NOT NULL DEFAULT '0',
  `sequense` int(11) NOT NULL DEFAULT '0',
  `price` double(8,2) NOT NULL,
  `credits` double(8,2) NOT NULL,
  `name` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dates_types`
--

LOCK TABLES `dates_types` WRITE;
/*!40000 ALTER TABLE `dates_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `dates_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq`
--

DROP TABLE IF EXISTS `faq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faq` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `faq_title` varchar(255) NOT NULL,
  `faq_staff_user_id` int(11) NOT NULL DEFAULT '0',
  `faq_text` text NOT NULL,
  `faq_status` tinyint(1) NOT NULL,
  `faq_role` int(11) NOT NULL DEFAULT '0',
  `faq_media` varchar(255) NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq`
--

LOCK TABLES `faq` WRITE;
/*!40000 ALTER TABLE `faq` DISABLE KEYS */;
/*!40000 ALTER TABLE `faq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_category`
--

DROP TABLE IF EXISTS `faq_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faq_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `position` int(11) NOT NULL DEFAULT '0',
  `faq_category_name` varchar(255) NOT NULL,
  `faq_role` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_category`
--

LOCK TABLES `faq_category` WRITE;
/*!40000 ALTER TABLE `faq_category` DISABLE KEYS */;
INSERT INTO `faq_category` VALUES (1,0,'EXCLOOV',0),(2,0,'Membership',0),(3,0,'Profiles',0),(4,0,'Email',0),(5,0,'Cost and Fees',0),(6,0,'Technical Questions',0),(7,0,'Additional Services',0),(8,0,'Meeting the members',0),(9,0,'Gifts and Flowers',0),(10,0,'Technical Payment Issues',0),(11,0,'Comments and Suggestions',0);
/*!40000 ALTER TABLE `faq_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_link`
--

DROP TABLE IF EXISTS `faq_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faq_link` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `faq_category_id` int(11) NOT NULL,
  `faq_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_link`
--

LOCK TABLES `faq_link` WRITE;
/*!40000 ALTER TABLE `faq_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `faq_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gentlemen_attr`
--

DROP TABLE IF EXISTS `gentlemen_attr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gentlemen_attr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gentlemen_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `answer_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `gentlemen_id` (`gentlemen_id`,`question_id`,`answer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=160 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gentlemen_attr`
--

LOCK TABLES `gentlemen_attr` WRITE;
/*!40000 ALTER TABLE `gentlemen_attr` DISABLE KEYS */;
INSERT INTO `gentlemen_attr` VALUES (84,1,1,1),(85,1,2,18),(86,1,3,32),(87,1,4,55),(88,1,5,72),(89,1,6,89),(90,1,7,98),(91,1,8,104),(92,1,9,109),(93,1,10,119),(94,1,11,125),(95,1,12,132),(96,1,13,138),(97,1,14,142),(98,1,15,148),(99,1,16,150),(100,1,17,152),(101,1,18,157),(102,1,19,160),(103,1,20,165),(112,1,21,168),(113,1,21,169),(114,1,21,231),(115,1,21,232),(116,1,21,233),(117,1,21,234),(118,1,21,241),(119,1,21,242),(120,1,21,243),(121,1,21,244),(122,1,21,245),(123,1,21,246),(124,1,21,247),(104,1,22,192),(105,1,23,0),(106,1,24,194),(107,1,25,197),(108,1,26,202),(109,1,27,211),(110,1,28,214),(111,1,29,225),(128,3,8,104),(125,3,15,149),(126,3,16,151),(129,3,26,201),(130,3,26,204),(127,3,30,249),(131,3,31,254),(135,4,8,104),(132,4,15,149),(133,4,16,151),(136,4,26,201),(134,4,30,249),(137,4,31,254),(138,4,31,255),(142,5,8,105),(139,5,15,149),(140,5,16,151),(143,5,26,202),(144,5,26,203),(141,5,30,249),(145,5,31,253),(149,8,8,104),(146,8,15,149),(147,8,16,151),(150,8,26,200),(151,8,26,203),(148,8,30,249),(152,8,31,254),(156,9,8,107),(153,9,15,149),(154,9,16,151),(157,9,26,200),(158,9,26,203),(155,9,30,250),(159,9,31,253);
/*!40000 ALTER TABLE `gentlemen_attr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gentlemen_basic`
--

DROP TABLE IF EXISTS `gentlemen_basic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gentlemen_basic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `fname` varchar(30) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `nickname` varchar(30) NOT NULL,
  `email` mediumtext NOT NULL,
  `credits` double(8,2) NOT NULL DEFAULT '0.00',
  `password` varchar(30) NOT NULL,
  `phone_code` int(11) NOT NULL DEFAULT '0',
  `phone` varchar(20) NOT NULL,
  `skype` varchar(255) NOT NULL DEFAULT '',
  `zip` varchar(30) NOT NULL,
  `dp` mediumtext NOT NULL,
  `dob` date NOT NULL DEFAULT '0000-00-00',
  `height` float NOT NULL,
  `weight` float NOT NULL,
  `address` mediumtext NOT NULL,
  `city` varchar(30) NOT NULL,
  `country_origin` int(11) NOT NULL DEFAULT '0',
  `country_living` int(11) NOT NULL DEFAULT '0',
  `country_study` int(11) NOT NULL DEFAULT '0',
  `about_me` mediumtext NOT NULL,
  `my_ideal` mediumtext NOT NULL,
  `status` int(11) DEFAULT NULL,
  `reason_of_delete` int(11) DEFAULT NULL,
  `date_of_reg` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `featured` tinyint(4) NOT NULL DEFAULT '0',
  `paid` tinyint(4) NOT NULL DEFAULT '0',
  `childs_year` varchar(255) NOT NULL DEFAULT '',
  `refresh` datetime NOT NULL,
  `request_option` tinyint(1) NOT NULL DEFAULT '1',
  `email_option` tinyint(1) NOT NULL DEFAULT '1',
  `promotion_option` tinyint(1) NOT NULL DEFAULT '1',
  `weekly_matches_option` tinyint(1) NOT NULL DEFAULT '1',
  `new_hug_option` tinyint(1) NOT NULL DEFAULT '1',
  `new_kiss_option` tinyint(1) NOT NULL DEFAULT '1',
  `weekly_new_profiles_option` tinyint(1) NOT NULL DEFAULT '1',
  `new_nessages_option` tinyint(1) NOT NULL DEFAULT '1',
  `ages_from` int(11) NOT NULL DEFAULT '0',
  `ages_to` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gentlemen_basic`
--

LOCK TABLES `gentlemen_basic` WRITE;
/*!40000 ALTER TABLE `gentlemen_basic` DISABLE KEYS */;
INSERT INTO `gentlemen_basic` VALUES (2,7,'testG','testG','testG','tk1@div-art.com',620.00,'',14,'234234','','','','2000-08-08',0,0,'testG','Soyo',18,6,0,'','',1,NULL,'2018-08-20 10:38:49',0,0,'','0000-00-00 00:00:00',1,1,1,1,1,1,1,1,0,0),(3,8,'testG','testG','testG','tk2@div-art.com',0.00,'',0,'','','','','1974-06-11',0,0,'','Siufaga',4,4,0,'fdfgdf','',1,NULL,'2018-08-21 13:32:00',0,0,'','0000-00-00 00:00:00',1,1,1,1,1,1,1,1,0,0),(4,9,'zxc','zxc','zxc','tk3@div-art.com',0.00,'',0,'','','','','1975-07-17',0,0,'','Sandy Ground',7,7,0,'fgfghfg','',0,NULL,'2018-08-21 13:42:40',0,0,'','0000-00-00 00:00:00',1,1,1,1,1,1,1,1,0,0),(5,10,'asd','asd','asd','tk4@div-art.com',0.00,'',0,'','','','','1974-06-12',0,0,'','Santa Coloma',5,5,0,'fsdfsd','',0,NULL,'2018-08-21 13:56:17',0,0,'','0000-00-00 00:00:00',1,1,1,1,1,1,1,1,0,0),(6,11,'test5','test5','test5','tk5@div-art.com',0.00,'',2,'234234','','','','2000-08-21',0,0,'asdasd','San Miguel de Tucumán',3,10,0,'','',1,NULL,'2018-08-21 02:05:19',0,0,'','0000-00-00 00:00:00',1,1,1,1,1,1,1,1,0,0),(7,12,'TestG6','TestG6','TestG6','tk6@div-art.com',0.00,'',3,'1123','','','','1999-06-09',0,0,'TestG6','Shëngjin',16,2,0,'','',1,NULL,'2018-08-22 01:50:37',0,0,'','0000-00-00 00:00:00',1,1,1,1,1,1,1,1,0,0),(8,13,'zxc','zxc','zxc','tk7@div-art.com',0.00,'',0,'','','','','1974-06-11',0,0,'','Schwechat',14,14,0,'fhfghh','',1,NULL,'2018-08-22 14:02:50',0,0,'','0000-00-00 00:00:00',1,1,1,1,1,1,1,1,0,0),(9,14,'zxc','zxc','zxc','tk8@div-art.com',0.00,'',0,'','','','','1974-06-11',0,0,'','Shamakhi',15,15,0,'fnvbn','',1,NULL,'2018-08-22 14:20:36',0,0,'','0000-00-00 00:00:00',1,1,1,1,1,1,1,1,0,0);
/*!40000 ALTER TABLE `gentlemen_basic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gentlemen_favourites`
--

DROP TABLE IF EXISTS `gentlemen_favourites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gentlemen_favourites` (
  `gentleman_id` int(11) NOT NULL,
  `fav_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gentlemen_favourites`
--

LOCK TABLES `gentlemen_favourites` WRITE;
/*!40000 ALTER TABLE `gentlemen_favourites` DISABLE KEYS */;
/*!40000 ALTER TABLE `gentlemen_favourites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gentlemen_interviews`
--

DROP TABLE IF EXISTS `gentlemen_interviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gentlemen_interviews` (
  `gentlemen_id` int(11) NOT NULL,
  `interview_id` int(11) NOT NULL,
  `value` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gentlemen_interviews`
--

LOCK TABLES `gentlemen_interviews` WRITE;
/*!40000 ALTER TABLE `gentlemen_interviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `gentlemen_interviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gentlemen_interviews_items`
--

DROP TABLE IF EXISTS `gentlemen_interviews_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gentlemen_interviews_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gentlemen_interviews_items`
--

LOCK TABLES `gentlemen_interviews_items` WRITE;
/*!40000 ALTER TABLE `gentlemen_interviews_items` DISABLE KEYS */;
INSERT INTO `gentlemen_interviews_items` VALUES (1,'favorite_music','my favorite music style'),(2,'favorite_book','my favorite book author'),(3,'favorite_tv_show','my favorite tv show'),(4,'favorite_color','my favorite color'),(5,'favorite_number','my favorite number'),(6,'favorite_book_meal','my favorite book meal'),(7,'favorite_movie','my favorite movie'),(8,'favorite_parfume_brand','my favorite parfume brand'),(9,'favorite_country','my favorite country');
/*!40000 ALTER TABLE `gentlemen_interviews_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gentlemen_love_notes_items`
--

DROP TABLE IF EXISTS `gentlemen_love_notes_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gentlemen_love_notes_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `path` varchar(255) NOT NULL,
  `text` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gentlemen_love_notes_items`
--

LOCK TABLES `gentlemen_love_notes_items` WRITE;
/*!40000 ALTER TABLE `gentlemen_love_notes_items` DISABLE KEYS */;
INSERT INTO `gentlemen_love_notes_items` VALUES (1,'img/love-notes/note1.jpg','I love your smile'),(2,'img/love-notes/note2.jpg','You look cute'),(3,'img/love-notes/note3.jpg','I want to know you'),(4,'img/love-notes/note4.jpg','You\'re the one');
/*!40000 ALTER TABLE `gentlemen_love_notes_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gentlemen_pics`
--

DROP TABLE IF EXISTS `gentlemen_pics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gentlemen_pics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gentlemen_id` int(11) NOT NULL,
  `path` text NOT NULL,
  `main` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `gentlemen_id` (`gentlemen_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gentlemen_pics`
--

LOCK TABLES `gentlemen_pics` WRITE;
/*!40000 ALTER TABLE `gentlemen_pics` DISABLE KEYS */;
/*!40000 ALTER TABLE `gentlemen_pics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gentlemen_pref`
--

DROP TABLE IF EXISTS `gentlemen_pref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gentlemen_pref` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gentlemen_id` int(11) NOT NULL,
  `age_min` int(11) NOT NULL DEFAULT '18',
  `age_max` int(11) NOT NULL DEFAULT '70',
  `height_min` int(11) NOT NULL DEFAULT '140',
  `height_max` int(11) NOT NULL DEFAULT '208',
  `weight_min` int(11) NOT NULL DEFAULT '101',
  `weight_max` int(11) NOT NULL DEFAULT '325',
  `details` varchar(400) NOT NULL DEFAULT '-',
  PRIMARY KEY (`id`),
  KEY `gentlemen_id` (`gentlemen_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gentlemen_pref`
--

LOCK TABLES `gentlemen_pref` WRITE;
/*!40000 ALTER TABLE `gentlemen_pref` DISABLE KEYS */;
INSERT INTO `gentlemen_pref` VALUES (1,1,18,18,140,140,101,101,'-'),(2,2,18,70,140,208,101,325,'-'),(3,3,18,70,140,208,101,325,'-'),(4,4,18,70,140,208,101,325,'-'),(5,5,18,70,140,208,101,325,'-'),(6,6,18,70,140,208,101,325,'-'),(7,7,18,70,140,208,101,325,'-'),(8,8,18,70,140,208,101,325,'-'),(9,9,18,70,140,208,101,325,'-');
/*!40000 ALTER TABLE `gentlemen_pref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gifts_categories`
--

DROP TABLE IF EXISTS `gifts_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gifts_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `status` int(11) NOT NULL DEFAULT '0',
  `sequense` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `featured` tinyint(1) NOT NULL,
  `featured_pos` int(11) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gifts_categories`
--

LOCK TABLES `gifts_categories` WRITE;
/*!40000 ALTER TABLE `gifts_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `gifts_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gifts_orders`
--

DROP TABLE IF EXISTS `gifts_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gifts_orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `receiver_user_id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `total` double(8,2) NOT NULL,
  `total_credits` double(8,2) NOT NULL,
  `credits_added` tinyint(1) NOT NULL DEFAULT '0',
  `description` varchar(255) NOT NULL DEFAULT '',
  `remark` varchar(255) NOT NULL,
  `document` varchar(255) NOT NULL,
  `message_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gifts_orders`
--

LOCK TABLES `gifts_orders` WRITE;
/*!40000 ALTER TABLE `gifts_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `gifts_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gifts_orders_products`
--

DROP TABLE IF EXISTS `gifts_orders_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gifts_orders_products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_code` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `remark` text NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` double(8,2) NOT NULL,
  `credits` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gifts_orders_products`
--

LOCK TABLES `gifts_orders_products` WRITE;
/*!40000 ALTER TABLE `gifts_orders_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `gifts_orders_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gifts_product_photos`
--

DROP TABLE IF EXISTS `gifts_product_photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gifts_product_photos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gifts_product_photos`
--

LOCK TABLES `gifts_product_photos` WRITE;
/*!40000 ALTER TABLE `gifts_product_photos` DISABLE KEYS */;
/*!40000 ALTER TABLE `gifts_product_photos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gifts_products`
--

DROP TABLE IF EXISTS `gifts_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gifts_products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `sequense` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `remark` text NOT NULL,
  `price` double(8,2) NOT NULL,
  `credits` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gifts_products`
--

LOCK TABLES `gifts_products` WRITE;
/*!40000 ALTER TABLE `gifts_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `gifts_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gifts_users_cart`
--

DROP TABLE IF EXISTS `gifts_users_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gifts_users_cart` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gifts_users_cart`
--

LOCK TABLES `gifts_users_cart` WRITE;
/*!40000 ALTER TABLE `gifts_users_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `gifts_users_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hugs`
--

DROP TABLE IF EXISTS `hugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hugs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `from` int(11) NOT NULL,
  `to` int(11) NOT NULL,
  `from_type` enum('g','w') NOT NULL,
  `read` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hugs`
--

LOCK TABLES `hugs` WRITE;
/*!40000 ALTER TABLE `hugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `hugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_reserved_at_index` (`queue`,`reserved_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kisses`
--

DROP TABLE IF EXISTS `kisses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kisses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `from` int(11) NOT NULL,
  `to` int(11) NOT NULL,
  `from_type` enum('g','w') NOT NULL,
  `read` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kisses`
--

LOCK TABLES `kisses` WRITE;
/*!40000 ALTER TABLE `kisses` DISABLE KEYS */;
INSERT INTO `kisses` VALUES (1,5,7,'w',1,0,'2018-08-21 10:39:19','2018-08-21 10:53:21');
/*!40000 ALTER TABLE `kisses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matchmaker`
--

DROP TABLE IF EXISTS `matchmaker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matchmaker` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL DEFAULT '0',
  `matchmaker_id` int(11) NOT NULL DEFAULT '0',
  `matchmaker_role` tinyint(4) NOT NULL DEFAULT '0',
  `fname` varchar(30) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `value_pr` double(8,2) NOT NULL DEFAULT '0.15',
  `credits` double(8,2) NOT NULL DEFAULT '0.00',
  `username` varchar(100) NOT NULL,
  `password` varchar(30) NOT NULL,
  `company_name` varchar(255) NOT NULL DEFAULT '',
  `tax_id` varchar(255) NOT NULL DEFAULT '',
  `skype` varchar(255) NOT NULL DEFAULT '',
  `country` int(11) NOT NULL DEFAULT '0',
  `city` varchar(255) NOT NULL DEFAULT '',
  `semail` varchar(255) NOT NULL DEFAULT '',
  `mobile_phone` varchar(255) NOT NULL DEFAULT '',
  `mobile_phone_code` int(11) NOT NULL DEFAULT '0',
  `home_phone` varchar(255) NOT NULL DEFAULT '',
  `home_phone_code` int(11) NOT NULL DEFAULT '0',
  `office_phone` varchar(255) NOT NULL DEFAULT '',
  `office_phone_code` int(11) NOT NULL DEFAULT '0',
  `home_address` varchar(255) NOT NULL DEFAULT '',
  `office_address` varchar(255) NOT NULL DEFAULT '',
  `identity` varchar(255) NOT NULL DEFAULT '',
  `registration` varchar(255) NOT NULL DEFAULT '',
  `passport_country` int(11) NOT NULL DEFAULT '0',
  `passport_type` varchar(255) NOT NULL DEFAULT '',
  `passport_number` varchar(255) NOT NULL DEFAULT '',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matchmaker`
--

LOCK TABLES `matchmaker` WRITE;
/*!40000 ALTER TABLE `matchmaker` DISABLE KEYS */;
INSERT INTO `matchmaker` VALUES (1,0,0,0,0,0,'First','Matchmaker',0.15,210.00,'demomatchmaker','demo','','','',0,'','','',0,'',0,'',0,'','','','',0,'','',0),(2,0,0,0,0,0,'Lorina','Kee',0.15,0.00,'lorinakee','123456','','','',0,'','','',0,'',0,'',0,'','','','',0,'','',0);
/*!40000 ALTER TABLE `matchmaker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matchmaker_payments`
--

DROP TABLE IF EXISTS `matchmaker_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matchmaker_payments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `update_id` int(11) NOT NULL DEFAULT '0',
  `matchmaker_id` int(11) NOT NULL DEFAULT '0',
  `bank_ben_name` varchar(255) NOT NULL DEFAULT '',
  `bank_swift_code` varchar(255) NOT NULL DEFAULT '',
  `bank_name` varchar(255) NOT NULL DEFAULT '',
  `bank_branch_address` varchar(255) NOT NULL DEFAULT '',
  `bank_adt_info` varchar(255) NOT NULL DEFAULT '',
  `bank_amount` double(8,2) NOT NULL DEFAULT '0.00',
  `paypal_ben_name` varchar(255) NOT NULL DEFAULT '',
  `paypal_email` varchar(255) NOT NULL DEFAULT '',
  `paypal_amount` double(8,2) NOT NULL DEFAULT '0.00',
  `epayments_ben_name` varchar(255) NOT NULL,
  `epayments_email` varchar(255) NOT NULL,
  `epayments_ewallet_number` varchar(255) NOT NULL,
  `epayments_phone` varchar(255) NOT NULL,
  `epayment_amount` decimal(5,2) NOT NULL,
  `active_type` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matchmaker_payments`
--

LOCK TABLES `matchmaker_payments` WRITE;
/*!40000 ALTER TABLE `matchmaker_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `matchmaker_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matchmaker_payout_orders`
--

DROP TABLE IF EXISTS `matchmaker_payout_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matchmaker_payout_orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `matchmaker_id` int(11) NOT NULL DEFAULT '0',
  `amount` double(8,2) NOT NULL DEFAULT '0.00',
  `amount_threshold` double(8,2) NOT NULL DEFAULT '0.00',
  `pay_date` date NOT NULL,
  `credits` double(8,2) NOT NULL DEFAULT '0.00',
  `bank_ben_name` varchar(255) NOT NULL DEFAULT '',
  `bank_swift_code` varchar(255) NOT NULL DEFAULT '',
  `bank_name` varchar(255) NOT NULL DEFAULT '',
  `bank_branch_address` varchar(255) NOT NULL DEFAULT '',
  `bank_adt_info` varchar(255) NOT NULL DEFAULT '',
  `paypal_ben_name` varchar(255) NOT NULL DEFAULT '',
  `paypal_email` varchar(255) NOT NULL DEFAULT '',
  `active_type` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matchmaker_payout_orders`
--

LOCK TABLES `matchmaker_payout_orders` WRITE;
/*!40000 ALTER TABLE `matchmaker_payout_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `matchmaker_payout_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `from` int(11) NOT NULL DEFAULT '0',
  `from_type` enum('g','w') NOT NULL,
  `to` int(11) NOT NULL DEFAULT '0',
  `text` text NOT NULL,
  `code` varchar(255) NOT NULL DEFAULT '',
  `message_id` int(11) NOT NULL DEFAULT '0',
  `love_note_id` int(11) NOT NULL DEFAULT '0',
  `new` tinyint(4) NOT NULL DEFAULT '1',
  `delete` tinyint(4) NOT NULL DEFAULT '0',
  `intletter` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (14,5,'w',7,'Dear testG<br>Message','EM115638',0,0,1,0,1,0,'2018-08-22 12:43:44','2018-08-22 12:43:44'),(15,5,'w',8,'Dear testG<br>Message','EM115639',0,0,0,0,1,0,'2018-08-22 12:43:44','2018-08-22 12:43:58'),(16,5,'w',9,'Dear zxc<br>Message','EM115640',0,0,1,0,1,0,'2018-08-22 12:43:44','2018-08-22 12:43:44'),(17,5,'w',10,'Dear asd<br>Message','EM115641',0,0,1,0,1,0,'2018-08-22 12:43:44','2018-08-22 12:43:44'),(18,5,'w',11,'Dear test5<br>Message','EM115642',0,0,1,0,1,0,'2018-08-22 12:43:44','2018-08-22 12:43:44'),(19,8,'g',5,'Reply for Intletter','EM115643',15,0,1,0,0,0,'2018-08-22 12:45:55','2018-08-22 12:45:55'),(20,8,'g',5,'Hand','EM115644',0,0,0,1,0,0,'2018-08-22 12:46:38','2018-08-22 13:12:49'),(21,5,'w',8,'Reply for 1 message','EM115645',20,0,0,0,0,0,'2018-08-22 12:48:36','2018-08-22 12:55:53'),(22,8,'g',5,'2 Reply','EM115646',21,0,0,0,0,0,'2018-08-22 13:00:03','2018-08-22 13:00:27'),(23,5,'w',8,'22 reply','EM115647',22,0,0,0,0,0,'2018-08-22 13:00:56','2018-08-22 13:06:02'),(24,8,'g',5,'asdasd','EM115648',23,0,0,0,0,0,'2018-08-22 13:08:24','2018-08-22 13:09:04'),(25,5,'w',8,'Message','EM115649',24,0,0,0,0,0,'2018-08-22 13:09:20','2018-08-22 13:09:42'),(26,8,'g',5,'Message','EM115650',25,0,1,0,0,0,'2018-08-22 13:12:31','2018-08-22 13:12:31'),(27,8,'g',5,'From contact llist','EM115651',0,0,0,0,0,0,'2018-08-22 13:14:10','2018-08-22 13:14:41'),(28,5,'w',8,'Reply','EM115652',27,0,1,0,0,0,'2018-08-22 13:14:53','2018-08-22 13:14:53'),(29,5,'w',12,'Dear TestG6<br>Message','EM115653',0,0,0,0,1,0,'2018-08-22 13:58:14','2018-08-22 14:01:20'),(30,5,'w',13,'Dear zxc<br>Message','EM115654',0,0,1,0,1,0,'2018-08-22 14:08:09','2018-08-22 14:08:09'),(31,5,'w',14,'Dear zxc<br>Message','EM115655',0,0,1,0,1,0,'2018-08-22 14:31:17','2018-08-22 14:31:17');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages_contacts`
--

DROP TABLE IF EXISTS `messages_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages_contacts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `g_user_id` int(11) NOT NULL,
  `w_user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages_contacts`
--

LOCK TABLES `messages_contacts` WRITE;
/*!40000 ALTER TABLE `messages_contacts` DISABLE KEYS */;
INSERT INTO `messages_contacts` VALUES (1,7,5),(2,7,4),(3,8,5);
/*!40000 ALTER TABLE `messages_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages_pics`
--

DROP TABLE IF EXISTS `messages_pics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages_pics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `message_id` int(11) NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `buy` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages_pics`
--

LOCK TABLES `messages_pics` WRITE;
/*!40000 ALTER TABLE `messages_pics` DISABLE KEYS */;
/*!40000 ALTER TABLE `messages_pics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2017_08_22_124031_entrust_setup_tables',1),(4,'2017_08_28_143759_add_user_id_in_matchmaker_table',1),(5,'2017_08_30_112415_create_faq_tables',1),(6,'2017_08_30_142504_create_posts_table',1),(7,'2017_08_30_142504_create_static_pages_table',1),(8,'2017_08_30_143315_create_tags_table',1),(9,'2017_09_04_110203_add_user_id_in_women_basic_table',1),(10,'2017_09_07_133327_add_date_to_faq',1),(11,'2017_09_12_080636_create_tables_for_women_interview',1),(12,'2017_09_13_114730_create_tables_women_favorites',1),(13,'2017_09_20_143820_add_user_id_in_gentlemen_basic_table',1),(14,'2017_09_21_071622_create_tables_gentleman_favorites',1),(15,'2017_09_21_081146_create_tables_for_gentleman_interview',1),(16,'2017_09_21_100039_add_status_field_in_gentlemen_basic_table',1),(17,'2017_09_21_104000_create_tables_for_love_notes',1),(18,'2017_09_21_130533_add_reason_of_delete_in_gentleman_table',1),(19,'2017_09_21_180740_add_position_field_to_faq_category_table',1),(20,'2017_09_22_080459_add_faq_media_field_to_faq_table',1),(21,'2017_09_25_133546_add_info_fields_to_matchmaker_table',1),(22,'2017_09_25_145616_tell_more_gentlemen_basic',1),(23,'2017_09_25_145616_tell_more_women_basic',1),(24,'2017_09_26_093626_create_phone_country_codes_table',1),(25,'2017_09_26_101412_add_phone_codes_fields_to_matchmaker_table',1),(26,'2017_09_27_123111_add_status_field_to_matchmaker_table',1),(27,'2017_09_27_133011_add_ip_user_agent_fields_to_users_table',1),(28,'2017_09_27_133250_create_user_logins_table',1),(29,'2017_09_27_154313_add_ip_locations_fields_to_user_logins_table',1),(30,'2017_09_29_064335_add_line_id_timezone_fields_to_women_basic_table',1),(31,'2017_09_29_125813_change_dob_column_type_to_date',1),(32,'2017_10_01_082037_add_fields_in_gentleman_table',1),(33,'2017_10_03_075227_add_childs_year_in_women_basic_table',1),(34,'2017_10_03_075613_add_childs_year_in_gentlemen_basic_table',1),(35,'2017_10_04_135114_change_default_values_in_gentlemen_pref_table',1),(36,'2017_10_04_135606_change_default_values_in_women_pref_table',1),(37,'2017_10_05_073639_create_tables_for_countries',1),(38,'2017_10_05_080754_change_countries_type_in_gentlemen_table',1),(39,'2017_10_05_083710_add_documents_fields_to_women_basic_table',1),(40,'2017_10_05_125636_create_remarks_table',1),(41,'2017_10_05_134214_change_dob_column_type_to_date_in_gentleman_basic_table',1),(42,'2017_10_05_184030_change_countries_type_in_women_table',1),(43,'2017_10_06_090044_delete_tell_more_fields_from_women_basic',1),(44,'2017_10_06_092050_delete_tell_more_fields_from_gentlemen_basic',1),(45,'2017_10_07_105810_change_staff_table',1),(46,'2017_10_08_053609_add_staff_fields_to_matchmaker_table',1),(47,'2017_10_08_061547_change_matchmaker_country_from_string_to_integer',1),(48,'2017_10_08_064940_change_email_field_to_nullable_in_users_table',1),(49,'2017_10_09_190625_add_date_of_change_status_in_women_basic_table',1),(50,'2017_10_10_104152_change_table_for_messages',1),(51,'2017_10_10_110005_add_table_for_messages_pics',1),(52,'2017_10_10_155028_change_love_notes_table',1),(53,'2017_10_11_130934_create_tables_messages_contacts',1),(54,'2017_10_12_133828_delete_table_gentlemen_love_notes',1),(55,'2017_10_13_084749_add_from_type_field_to_messages_table',1),(56,'2017_10_17_134814_create_tables_women_intletters',1),(57,'2017_10_18_070241_drop_posts_tables',1),(58,'2017_10_18_070544_create_blog_table',1),(59,'2017_10_18_070556_create_blog_category_table',1),(60,'2017_10_18_070608_create_blog_link_table',1),(61,'2017_10_18_132915_add_field_to_blog_table',1),(62,'2017_10_19_125517_add_staff_to_faq_table',1),(63,'2017_10_20_091745_add_role_filed_in_faq_tables',1),(64,'2017_10_23_100038_create_tables_women_intletters_sent',1),(65,'2017_10_23_134649_add_user_intletter_in_messages_table',1),(66,'2017_10_24_093053_add_iso_in_countries_table',1),(67,'2017_10_25_073546_add_show_field_to_cats_blog_table',1),(68,'2017_10_26_083822_change_field_blog_text',1),(69,'2017_10_27_082557_create_tables_payments',1),(70,'2017_10_27_112329_add_credits_in_gentlemen_table',1),(71,'2017_11_02_100119_add_code_in_payments_table',1),(72,'2017_11_02_111519_add_field_to_machmakers_table',1),(73,'2017_11_03_083545_delete_value_form_matchmacker_table_add_credits',1),(74,'2017_11_07_140417_create_notification_table',1),(75,'2017_11_10_110512_add_value_per_credit_in_matchmacker_table',1),(76,'2017_11_17_115936_create_table_matchmaker_payments',1),(77,'2017_11_22_114834_delete_old_tables',1),(78,'2017_11_28_083921_delete_bio_add_about_me_my_ideal_in_gentlemen_table',1),(79,'2017_11_28_092040_delete_bio_add_about_me_my_ideal_in_partners_table',1),(80,'2017_11_29_131202_add_add_type_in_payments_table',1),(81,'2017_11_30_110115_delete_unique_from_email_in_users_table',1),(82,'2017_11_30_215642_add_country_study_in_gentlemen_table',1),(83,'2017_11_30_223827_add_country_study_in_partner_table',1),(84,'2017_12_14_091351_create_policies_table',1),(85,'2017_12_14_092709_create_policy_categories_table',1),(86,'2017_12_14_093051_create_policy_category_table',1),(87,'2018_01_22_093924_create_gifts_categories_table',1),(88,'2018_01_22_142204_create_gifts_products_table',1),(89,'2018_01_23_100314_create_gifts_product_photos_table',1),(90,'2018_01_24_134926_create_gifts_users_cart',1),(91,'2018_01_26_093328_create_hugs_table',1),(92,'2018_01_28_223409_create_gifts_orders_table',1),(93,'2018_01_28_231824_create_gifts_orders_products_table',1),(94,'2018_01_29_092117_create_kisses_table',1),(95,'2018_01_31_085803_change_character_gb_wb_tables',1),(96,'2018_01_31_100906_add_facebook_url_in_users_table',1),(97,'2018_02_01_095859_add_fields_in_gifts_orders_table',1),(98,'2018_02_01_101404_add_fields_in_gifts_orders_products_table',1),(99,'2018_02_05_122740_add_total_credits_in_gifts_orders_table',1),(100,'2018_02_05_145431_add_message_id_in_gifts_orders_table',1),(101,'2018_02_05_164019_add_fields_in_gifts_orders_table2',1),(102,'2018_02_06_192946_create_matchmaker_payout_orders_table',1),(103,'2018_02_12_154306_change_default_value_for_pstatus_in_gifts_orders',1),(104,'2018_02_12_234111_delete_fields_from_gifts_orders',1),(105,'2018_02_15_092550_create_dates_types_table',1),(106,'2018_02_15_194246_create_dates_items_table',1),(107,'2018_02_15_200805_create_dates_periods_table',1),(108,'2018_02_26_115300_create_dates_match_infos_table',1),(109,'2018_02_26_140459_add_timezone_in_dates_items_table',1),(110,'2018_02_27_084916_add_upload_form_in_dates_items_table',1),(111,'2018_02_27_091917_add_credits_added_in_dates_items_table',1),(112,'2018_02_28_104456_add_verified_fields_in_dates_items_table',1),(113,'2018_03_02_090504_create_jobs_table',1),(114,'2018_03_05_082737_add_recorevy_hash_in_users_table',1),(115,'2018_03_05_130930_delete_paymentwall_fields_from_gifts_orders',1),(116,'2018_03_07_124210_delete_imba_field_from_dates_items',1),(117,'2018_03_07_133632_add_type_in_notification_table',1),(118,'2018_03_10_085552_create_failed_jobs_table',1),(119,'2018_04_02_083734_add_entrypoint_field_to_blog_table',1),(120,'2018_05_11_085759_add_epayment_field_to_matchmaker_payments_method',1),(121,'2018_06_13_124005_add_field_to_notifycation_table',1),(122,'2018_06_14_114827_add_refresh_field_to_gentelman_table',1),(123,'2018_06_18_080156_add_main_flag_to_women_intletters_pics',1),(124,'2018_06_18_142127_add_flag_show_to_gentleman_pics_table',1),(125,'2018_06_19_112219_add_flag_main_to_women_table',1),(126,'2018_06_20_110512_add_flat_to_messages_pics',1),(127,'2018_06_21_123337_add_options_email_to_gentleman_table',1),(128,'2018_06_22_102958_add_other_option_to_gentleman_table',1),(129,'2018_06_26_103422_add_facebook_flag_to_user_table',1),(130,'2018_06_27_095328_add_refersh_field_to_woman_basic_table',1),(131,'2018_06_29_135117_add_to_country_table_order_flag',1),(132,'2018_07_09_092546_add_field_to_gentleman_basic',1),(133,'2018_07_10_135931_add_show_tutorial_field_users_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notification` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `users_id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'default',
  `link` varchar(255) NOT NULL,
  `desc` text NOT NULL,
  `read` int(11) NOT NULL,
  `show` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification`
--

LOCK TABLES `notification` WRITE;
/*!40000 ALTER TABLE `notification` DISABLE KEYS */;
INSERT INTO `notification` VALUES (1,7,'kiss','/gentleman/profile/get/11/kiss/1','Dr. Eliza has sent you a Kiss. Check out his profile!',1,1,'2018-08-21 10:45:33','2018-08-22 12:14:51'),(2,5,'kiss','/profile/get/2','Your Kiss is received by testG testG',0,0,'2018-08-21 10:53:37','2018-08-21 10:53:37'),(3,7,'default','/gentleman/messages/inbox','Your email to member AP124057 has been read.',1,1,'2018-08-21 11:03:14','2018-08-22 12:14:51'),(4,7,'default','/gentleman/messages/inbox','You’ve got new messages from member AP124057. Read it now!',1,1,'2018-08-21 11:04:12','2018-08-22 12:14:51'),(5,5,'default','/messages/inbox','Your email to member GM317565 has been read.',1,0,'2018-08-21 11:04:39','2018-08-22 13:13:07'),(6,7,'default','/gentleman/messages/inbox','There are 1 introduction letters sent by new members. You can check it out for free.',1,1,'2018-08-21 14:35:43','2018-08-22 12:14:51'),(7,8,'default','/gentleman/messages/inbox','There are 1 introduction letters sent by new members. You can check it out for free.',1,1,'2018-08-21 14:36:51','2018-08-22 14:00:09'),(8,9,'default','/gentleman/messages/inbox','There are 1 introduction letters sent by new members. You can check it out for free.',0,0,'2018-08-21 14:37:36','2018-08-21 14:37:36'),(9,10,'default','/gentleman/messages/inbox','There are 1 introduction letters sent by new members. You can check it out for free.',0,0,'2018-08-21 14:37:54','2018-08-21 14:37:54'),(10,11,'default','/gentleman/messages/inbox','There are 1 introduction letters sent by new members. You can check it out for free.',0,0,'2018-08-21 14:38:22','2018-08-21 14:38:22'),(11,5,'default','/messages/inbox','Your introduction letters to member GM317565 has been read.',1,0,'2018-08-22 08:27:49','2018-08-22 13:13:07'),(12,5,'default','/messages/inbox','Your email to member GM317565 has been read.',1,0,'2018-08-22 11:51:16','2018-08-22 13:13:07'),(13,5,'default','/messages/inbox','Your email to member GM317565 has been read.',1,0,'2018-08-22 12:12:21','2018-08-22 13:13:07'),(14,5,'default','/messages/inbox','Your email to member GM317565 has been read.',1,0,'2018-08-22 12:13:06','2018-08-22 13:13:07'),(15,5,'default','/messages/inbox','Your introduction letters to member GM317566 has been read.',1,0,'2018-08-22 12:21:01','2018-08-22 13:13:07'),(16,7,'default','/gentleman/messages/inbox','There are 1 introduction letters sent by new members. You can check it out for free.',0,0,'2018-08-22 12:43:52','2018-08-22 12:43:52'),(17,8,'default','/gentleman/messages/inbox','There are 1 introduction letters sent by new members. You can check it out for free.',1,1,'2018-08-22 12:44:14','2018-08-22 14:00:09'),(18,9,'default','/gentleman/messages/inbox','There are 1 introduction letters sent by new members. You can check it out for free.',0,0,'2018-08-22 12:44:27','2018-08-22 12:44:27'),(19,10,'default','/gentleman/messages/inbox','There are 1 introduction letters sent by new members. You can check it out for free.',0,0,'2018-08-22 12:44:36','2018-08-22 12:44:36'),(20,11,'default','/gentleman/messages/inbox','There are 1 introduction letters sent by new members. You can check it out for free.',0,0,'2018-08-22 12:44:44','2018-08-22 12:44:44'),(21,5,'default','/messages/inbox','Your introduction letters to member GM317566 has been read.',1,0,'2018-08-22 12:44:55','2018-08-22 13:13:07'),(22,8,'default','/gentleman/messages/inbox','Your email to member AP124057 has been read.',1,1,'2018-08-22 12:48:30','2018-08-22 14:00:09'),(23,8,'default','/gentleman/messages/inbox','You’ve got new messages from member AP124057. Read it now!',1,1,'2018-08-22 12:48:55','2018-08-22 14:00:09'),(24,5,'default','/messages/inbox','Your email to member GM317566 has been read.',1,0,'2018-08-22 12:56:04','2018-08-22 13:13:07'),(25,8,'default','/gentleman/messages/inbox','Your email to member AP124057 has been read.',1,1,'2018-08-22 13:00:40','2018-08-22 14:00:09'),(26,8,'default','/gentleman/messages/inbox','You’ve got new messages from member AP124057. Read it now!',1,1,'2018-08-22 13:01:30','2018-08-22 14:00:09'),(27,5,'default','/messages/inbox','Your email to member GM317566 has been read.',1,0,'2018-08-22 13:06:15','2018-08-22 13:13:07'),(28,8,'default','/gentleman/messages/inbox','Your email to member AP124057 has been read.',1,1,'2018-08-22 13:09:20','2018-08-22 14:00:09'),(29,8,'default','/gentleman/messages/inbox','You’ve got new messages from member AP124057. Read it now!',1,1,'2018-08-22 13:09:42','2018-08-22 14:00:09'),(30,5,'default','/messages/inbox','Your email to member GM317566 has been read.',1,0,'2018-08-22 13:09:52','2018-08-22 13:13:07'),(31,8,'default','/gentleman/messages/inbox','Your email to member AP124057 has been read.',1,1,'2018-08-22 13:14:52','2018-08-22 14:00:09'),(32,8,'default','/gentleman/messages/inbox','You’ve got new messages from member AP124057. Read it now!',1,1,'2018-08-22 13:15:26','2018-08-22 14:00:09'),(33,12,'default','/gentleman/messages/inbox','There are 1 introduction letters sent by new members. You can check it out for free.',1,1,'2018-08-22 13:58:18','2018-08-22 14:02:05'),(34,5,'default','/messages/inbox','Your introduction letters to member GM317570 has been read.',0,0,'2018-08-22 14:01:31','2018-08-22 14:01:31'),(35,13,'default','/gentleman/messages/inbox','There are 1 introduction letters sent by new members. You can check it out for free.',1,1,'2018-08-22 14:08:10','2018-08-22 14:19:17'),(36,14,'default','/gentleman/messages/inbox','There are 1 introduction letters sent by new members. You can check it out for free.',1,1,'2018-08-22 14:31:19','2018-08-22 14:58:36');
/*!40000 ALTER TABLE `notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gentlemen_user_id` int(11) NOT NULL,
  `women_user_id` int(11) NOT NULL DEFAULT '0',
  `matchmaker_user_id` int(11) NOT NULL DEFAULT '0',
  `admin_user_id` int(11) NOT NULL DEFAULT '0',
  `credits` double(8,2) NOT NULL DEFAULT '0.00',
  `amount` double(8,2) NOT NULL DEFAULT '0.00',
  `type` enum('in','out','add') NOT NULL,
  `payment_id` varchar(255) NOT NULL,
  `payment_token` varchar(255) NOT NULL,
  `payer_id` varchar(255) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `payment_state` varchar(255) NOT NULL,
  `for` int(11) NOT NULL DEFAULT '0',
  `code` varchar(255) NOT NULL DEFAULT '',
  `details` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,7,0,0,1,560.00,0.00,'add','','','','','',6,'ORD4277','re','2018-08-21 10:50:32','2018-08-21 10:50:32'),(2,7,5,0,0,10.00,0.00,'out','','','','','',1,'ORD4278','from GM317565 to AP124057','2018-08-21 10:53:50','2018-08-21 10:53:50'),(3,0,0,0,0,10.00,0.00,'in','','','','','',1,'ORD4279','from GM317565 to AP124057','2018-08-21 10:53:50','2018-08-21 10:53:50'),(4,7,5,0,0,10.00,0.00,'out','','','','','',2,'ORD4280','','2018-08-21 11:04:29','2018-08-21 11:04:29'),(5,0,0,0,0,10.00,0.00,'in','','','','','',2,'ORD4281','','2018-08-21 11:04:29','2018-08-21 11:04:29'),(6,7,0,0,0,20.00,15.99,'in','2bdf9f17-63fd-4cbe-859b-3cdbfdfe11f9','','','purchase','approved',0,'ORD4282','','2018-08-21 11:16:55','2018-08-21 11:17:04'),(7,7,0,0,0,20.00,15.99,'in','2b54fb64-c050-4e64-be77-0cd2f0636f37','','','purchase','approved',0,'ORD4283','','2018-08-21 11:32:40','2018-08-21 11:32:41'),(8,7,0,0,0,20.00,15.99,'in','bf809b1e-c3ab-4ea1-af74-06ad866a6456','','','purchase','approved',0,'ORD4284','','2018-08-21 11:34:34','2018-08-21 11:34:37'),(9,7,0,0,0,80.00,49.99,'in','46fbec4a-2d7e-42a1-9ab5-d6b351123cd1','','','purchase','approved',0,'ORD4285','','2018-08-21 11:35:46','2018-08-21 11:35:48'),(10,7,0,0,0,20.00,15.99,'in','','','','','',0,'ORD4286','','2018-08-21 11:37:14','2018-08-21 11:37:14'),(11,7,0,0,0,20.00,15.99,'in','','','','','',0,'ORD4287','','2018-08-21 11:38:54','2018-08-21 11:38:54'),(12,7,0,0,0,20.00,15.99,'in','21f6c084-c11d-4f0a-8b2c-72f6fc17cb99','','','purchase','approved',0,'ORD4288','','2018-08-21 11:45:47','2018-08-21 11:45:49'),(13,7,0,0,0,20.00,15.99,'in','','','','','',0,'ORD4289','','2018-08-21 11:47:31','2018-08-21 11:47:31'),(14,7,0,0,0,20.00,15.99,'in','','','','','',0,'ORD4290','','2018-08-21 11:49:59','2018-08-21 11:49:59'),(15,7,0,0,0,80.00,49.99,'in','','','','','',0,'ORD4291','','2018-08-21 11:50:34','2018-08-21 11:50:34'),(16,7,0,0,0,20.00,15.99,'in','PAY-58A10384YM5240128LN5764Q','EC-7MW2319771875435X','TTXWGCKJEUTQ4','paypal','approved',0,'ORD4292','','2018-08-21 12:05:21','2018-08-21 12:05:26'),(17,7,4,0,0,10.00,0.00,'out','','','','','',1,'ORD4293','from GM317565 to AP124056','2018-08-22 08:20:59','2018-08-22 08:20:59'),(18,0,0,0,0,10.00,0.00,'in','','','','','',1,'ORD4294','from GM317565 to AP124056','2018-08-22 08:21:00','2018-08-22 08:21:00'),(19,7,5,0,0,10.00,0.00,'out','','','','','',2,'ORD4295','','2018-08-22 11:51:10','2018-08-22 11:51:10'),(20,0,0,0,0,10.00,0.00,'in','','','','','',2,'ORD4296','','2018-08-22 11:51:10','2018-08-22 11:51:10'),(21,7,5,0,0,10.00,0.00,'out','','','','','',1,'ORD4297','from GM317565 to AP124057','2018-08-22 11:58:56','2018-08-22 11:58:56'),(22,0,0,0,0,10.00,0.00,'in','','','','','',1,'ORD4298','from GM317565 to AP124057','2018-08-22 11:58:56','2018-08-22 11:58:56'),(23,7,4,0,0,10.00,0.00,'out','','','','','',1,'ORD4299','from GM317565 to AP124056','2018-08-22 12:00:29','2018-08-22 12:00:29'),(24,0,0,0,0,10.00,0.00,'in','','','','','',1,'ORD4300','from GM317565 to AP124056','2018-08-22 12:00:29','2018-08-22 12:00:29'),(25,7,5,0,0,10.00,0.00,'out','','','','','',1,'ORD4301','from GM317565 to AP124057','2018-08-22 12:03:50','2018-08-22 12:03:50'),(26,0,0,0,0,10.00,0.00,'in','','','','','',1,'ORD4302','from GM317565 to AP124057','2018-08-22 12:03:50','2018-08-22 12:03:50'),(27,7,4,0,0,10.00,0.00,'out','','','','','',1,'ORD4303','from GM317565 to AP124056','2018-08-22 12:05:46','2018-08-22 12:05:46'),(28,0,0,0,0,10.00,0.00,'in','','','','','',1,'ORD4304','from GM317565 to AP124056','2018-08-22 12:05:46','2018-08-22 12:05:46'),(29,7,4,0,0,10.00,0.00,'out','','','','','',1,'ORD4305','from GM317565 to AP124056','2018-08-22 12:09:16','2018-08-22 12:09:16'),(30,0,0,0,0,10.00,0.00,'in','','','','','',1,'ORD4306','from GM317565 to AP124056','2018-08-22 12:09:16','2018-08-22 12:09:16'),(31,7,5,0,0,10.00,0.00,'out','','','','','',2,'ORD4307','','2018-08-22 12:11:24','2018-08-22 12:11:24'),(32,0,0,0,0,10.00,0.00,'in','','','','','',2,'ORD4308','','2018-08-22 12:11:24','2018-08-22 12:11:24'),(33,7,5,0,0,10.00,0.00,'out','','','','','',2,'ORD4309','','2018-08-22 12:12:09','2018-08-22 12:12:09'),(34,0,0,0,0,10.00,0.00,'in','','','','','',2,'ORD4310','','2018-08-22 12:12:09','2018-08-22 12:12:09'),(35,7,5,0,0,10.00,0.00,'out','','','','','',2,'ORD4311','','2018-08-22 12:12:55','2018-08-22 12:12:55'),(36,0,0,0,0,10.00,0.00,'in','','','','','',2,'ORD4312','','2018-08-22 12:12:55','2018-08-22 12:12:55'),(37,8,0,0,1,30.00,0.00,'add','','','','','',7,'ORD4313','ddfg','2018-08-22 12:45:46','2018-08-22 12:45:46'),(38,8,5,0,0,10.00,0.00,'out','','','','','',1,'ORD4314','from GM317566 to AP124057','2018-08-22 12:45:55','2018-08-22 12:45:55'),(39,0,0,0,0,10.00,0.00,'in','','','','','',1,'ORD4315','from GM317566 to AP124057','2018-08-22 12:45:55','2018-08-22 12:45:55'),(40,8,5,0,0,10.00,0.00,'out','','','','','',1,'ORD4316','from GM317566 to AP124057','2018-08-22 12:46:38','2018-08-22 12:46:38'),(41,0,0,0,0,10.00,0.00,'in','','','','','',1,'ORD4317','from GM317566 to AP124057','2018-08-22 12:46:38','2018-08-22 12:46:38'),(42,8,5,0,0,10.00,0.00,'out','','','','','',2,'ORD4318','','2018-08-22 12:55:53','2018-08-22 12:55:53'),(43,0,0,0,0,10.00,0.00,'in','','','','','',2,'ORD4319','','2018-08-22 12:55:53','2018-08-22 12:55:53'),(44,8,0,0,1,10.00,0.00,'add','','','','','',6,'ORD4320','qwe','2018-08-22 12:59:38','2018-08-22 12:59:38'),(45,8,5,0,0,10.00,0.00,'out','','','','','',1,'ORD4321','from GM317566 to AP124057','2018-08-22 13:00:03','2018-08-22 13:00:03'),(46,0,0,0,0,10.00,0.00,'in','','','','','',1,'ORD4322','from GM317566 to AP124057','2018-08-22 13:00:03','2018-08-22 13:00:03'),(47,8,0,0,1,50.00,0.00,'add','','','','','',7,'ORD4323','asd','2018-08-22 13:05:51','2018-08-22 13:05:51'),(48,8,5,0,0,10.00,0.00,'out','','','','','',2,'ORD4324','','2018-08-22 13:06:02','2018-08-22 13:06:02'),(49,0,0,0,0,10.00,0.00,'in','','','','','',2,'ORD4325','','2018-08-22 13:06:03','2018-08-22 13:06:03'),(50,8,5,0,0,10.00,0.00,'out','','','','','',1,'ORD4326','from GM317566 to AP124057','2018-08-22 13:08:24','2018-08-22 13:08:24'),(51,0,0,0,0,10.00,0.00,'in','','','','','',1,'ORD4327','from GM317566 to AP124057','2018-08-22 13:08:24','2018-08-22 13:08:24'),(52,8,5,0,0,10.00,0.00,'out','','','','','',2,'ORD4328','','2018-08-22 13:09:42','2018-08-22 13:09:42'),(53,0,0,0,0,10.00,0.00,'in','','','','','',2,'ORD4329','','2018-08-22 13:09:42','2018-08-22 13:09:42'),(54,8,5,0,0,10.00,0.00,'out','','','','','',1,'ORD4330','from GM317566 to AP124057','2018-08-22 13:12:32','2018-08-22 13:12:32'),(55,0,0,0,0,10.00,0.00,'in','','','','','',1,'ORD4331','from GM317566 to AP124057','2018-08-22 13:12:32','2018-08-22 13:12:32'),(56,8,5,0,0,10.00,0.00,'out','','','','','',1,'ORD4332','from GM317566 to AP124057','2018-08-22 13:14:10','2018-08-22 13:14:10'),(57,0,0,0,0,10.00,0.00,'in','','','','','',1,'ORD4333','from GM317566 to AP124057','2018-08-22 13:14:10','2018-08-22 13:14:10');
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission_role` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_role_id_foreign` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_role`
--

LOCK TABLES `permission_role` WRITE;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `display_name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_country_codes`
--

DROP TABLE IF EXISTS `phone_country_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phone_country_codes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `country` varchar(255) NOT NULL DEFAULT '',
  `code` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=241 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_country_codes`
--

LOCK TABLES `phone_country_codes` WRITE;
/*!40000 ALTER TABLE `phone_country_codes` DISABLE KEYS */;
INSERT INTO `phone_country_codes` VALUES (1,'Afghanistan',93),(2,'Albania',355),(3,'Algeria',213),(4,'American Samoa',1),(5,'Andorra',376),(6,'Angola',244),(7,'Anguilla',1),(8,'Antarctica',672),(9,'Antigua and Barbuda',1),(10,'Argentina',54),(11,'Armenia',374),(12,'Aruba',297),(13,'Australia',61),(14,'Austria',43),(15,'Azerbaijan',994),(16,'Bahamas',1),(17,'Bahrain',973),(18,'Bangladesh',880),(19,'Barbados',1),(20,'Belarus',375),(21,'Belgium',32),(22,'Belize',501),(23,'Benin',229),(24,'Bermuda',1),(25,'Bhutan',975),(26,'Bolivia',591),(27,'Bosnia and Herzegovina',387),(28,'Botswana',267),(29,'Brazil',55),(30,'British Indian Ocean Territory',246),(31,'British Virgin Islands',1),(32,'Brunei',673),(33,'Bulgaria',359),(34,'Burkina Faso',226),(35,'Burundi',257),(36,'Cambodia',855),(37,'Cameroon',237),(38,'Canada',1),(39,'Cape Verde',238),(40,'Cayman Islands',1),(41,'Central African Republic',236),(42,'Chad',235),(43,'Chile',56),(44,'China',86),(45,'Christmas Island',61),(46,'Cocos Islands',61),(47,'Colombia',57),(48,'Comoros',269),(49,'Cook Islands',682),(50,'Costa Rica',506),(51,'Croatia',385),(52,'Cuba',53),(53,'Curacao',599),(54,'Cyprus',357),(55,'Czech Republic',420),(56,'Democratic Republic of the Congo',243),(57,'Denmark',45),(58,'Djibouti',253),(59,'Dominica',1),(60,'Dominican Republic',1),(61,'East Timor',670),(62,'Ecuador',593),(63,'Egypt',20),(64,'El Salvador',503),(65,'Equatorial Guinea',240),(66,'Eritrea',291),(67,'Estonia',372),(68,'Ethiopia',251),(69,'Falkland Islands',500),(70,'Faroe Islands',298),(71,'Fiji',679),(72,'Finland',358),(73,'France',33),(74,'French Polynesia',689),(75,'Gabon',241),(76,'Gambia',220),(77,'Georgia',995),(78,'Germany',49),(79,'Ghana',233),(80,'Gibraltar',350),(81,'Greece',30),(82,'Greenland',299),(83,'Grenada',1),(84,'Guam',1),(85,'Guatemala',502),(86,'Guernsey',44),(87,'Guinea',224),(88,'Guinea-Bissau',245),(89,'Guyana',592),(90,'Haiti',509),(91,'Honduras',504),(92,'Hong Kong',852),(93,'Hungary',36),(94,'Iceland',354),(95,'India',91),(96,'Indonesia',62),(97,'Iran',98),(98,'Iraq',964),(99,'Ireland',353),(100,'Isle of Man',44),(101,'Israel',972),(102,'Italy',39),(103,'Ivory Coast',225),(104,'Jamaica',1),(105,'Japan',81),(106,'Jersey',44),(107,'Jordan',962),(108,'Kazakhstan',7),(109,'Kenya',254),(110,'Kiribati',686),(111,'Kosovo',383),(112,'Kuwait',965),(113,'Kyrgyzstan',996),(114,'Laos',856),(115,'Latvia',371),(116,'Lebanon',961),(117,'Lesotho',266),(118,'Liberia',231),(119,'Libya',218),(120,'Liechtenstein',423),(121,'Lithuania',370),(122,'Luxembourg',352),(123,'Macau',853),(124,'Macedonia',389),(125,'Madagascar',261),(126,'Malawi',265),(127,'Malaysia',60),(128,'Maldives',960),(129,'Mali',223),(130,'Malta',356),(131,'Marshall Islands',692),(132,'Mauritania',222),(133,'Mauritius',230),(134,'Mayotte',262),(135,'Mexico',52),(136,'Micronesia',691),(137,'Moldova',373),(138,'Monaco',377),(139,'Mongolia',976),(140,'Montenegro',382),(141,'Montserrat',1),(142,'Morocco',212),(143,'Mozambique',258),(144,'Myanmar',95),(145,'Namibia',264),(146,'Nauru',674),(147,'Nepal',977),(148,'Netherlands',31),(149,'Netherlands Antilles',599),(150,'New Caledonia',687),(151,'New Zealand',64),(152,'Nicaragua',505),(153,'Niger',227),(154,'Nigeria',234),(155,'Niue',683),(156,'North Korea',850),(157,'Northern Mariana Islands',1),(158,'Norway',47),(159,'Oman',968),(160,'Pakistan',92),(161,'Palau',680),(162,'Palestine',970),(163,'Panama',507),(164,'Papua New Guinea',675),(165,'Paraguay',595),(166,'Peru',51),(167,'Philippines',63),(168,'Pitcairn',64),(169,'Poland',48),(170,'Portugal',351),(171,'Puerto Rico',1),(172,'Qatar',974),(173,'Republic of the Congo',242),(174,'Reunion',262),(175,'Romania',40),(176,'Russia',7),(177,'Rwanda',250),(178,'Saint Barthelemy',590),(179,'Saint Helena',290),(180,'Saint Kitts and Nevis',1),(181,'Saint Lucia',1),(182,'Saint Martin',590),(183,'Saint Pierre and Miquelon',508),(184,'Saint Vincent and the Grenadines',1),(185,'Samoa',685),(186,'San Marino',378),(187,'Sao Tome and Principe',239),(188,'Saudi Arabia',966),(189,'Senegal',221),(190,'Serbia',381),(191,'Seychelles',248),(192,'Sierra Leone',232),(193,'Singapore',65),(194,'Sint Maarten',1),(195,'Slovakia',421),(196,'Slovenia',386),(197,'Solomon Islands',677),(198,'Somalia',252),(199,'South Africa',27),(200,'South Korea',82),(201,'South Sudan',211),(202,'Spain',34),(203,'Sri Lanka',94),(204,'Sudan',249),(205,'Suriname',597),(206,'Svalbard and Jan Mayen',47),(207,'Swaziland',268),(208,'Sweden',46),(209,'Switzerland',41),(210,'Syria',963),(211,'Taiwan',886),(212,'Tajikistan',992),(213,'Tanzania',255),(214,'Thailand',66),(215,'Togo',228),(216,'Tokelau',690),(217,'Tonga',676),(218,'Trinidad and Tobago',1),(219,'Tunisia',216),(220,'Turkey',90),(221,'Turkmenistan',993),(222,'Turks and Caicos Islands',1),(223,'Tuvalu',688),(224,'U.S. Virgin Islands',1),(225,'Uganda',256),(226,'Ukraine',380),(227,'United Arab Emirates',971),(228,'United Kingdom',44),(229,'United States',1),(230,'Uruguay',598),(231,'Uzbekistan',998),(232,'Vanuatu',678),(233,'Vatican',379),(234,'Venezuela',58),(235,'Vietnam',84),(236,'Wallis and Futuna',681),(237,'Western Sahara',212),(238,'Yemen',967),(239,'Zambia',260),(240,'Zimbabwe',263);
/*!40000 ALTER TABLE `phone_country_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `policies`
--

DROP TABLE IF EXISTS `policies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `policies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `status` tinyint(4) NOT NULL,
  `media` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `policies`
--

LOCK TABLES `policies` WRITE;
/*!40000 ALTER TABLE `policies` DISABLE KEYS */;
/*!40000 ALTER TABLE `policies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `policy_categories`
--

DROP TABLE IF EXISTS `policy_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `policy_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `policy_categories`
--

LOCK TABLES `policy_categories` WRITE;
/*!40000 ALTER TABLE `policy_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `policy_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `policy_category`
--

DROP TABLE IF EXISTS `policy_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `policy_category` (
  `policy_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `policy_category`
--

LOCK TABLES `policy_category` WRITE;
/*!40000 ALTER TABLE `policy_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `policy_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `remarks`
--

DROP TABLE IF EXISTS `remarks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `remarks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `staff_id` int(11) NOT NULL DEFAULT '0',
  `details` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `remarks`
--

LOCK TABLES `remarks` WRITE;
/*!40000 ALTER TABLE `remarks` DISABLE KEYS */;
/*!40000 ALTER TABLE `remarks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_user`
--

DROP TABLE IF EXISTS `role_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_user` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_user_role_id_foreign` (`role_id`),
  CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_user`
--

LOCK TABLES `role_user` WRITE;
/*!40000 ALTER TABLE `role_user` DISABLE KEYS */;
INSERT INTO `role_user` VALUES (1,1),(7,3),(8,3),(9,3),(10,3),(11,3),(12,3),(13,3),(14,3),(2,4),(3,4),(4,4),(5,4),(6,4);
/*!40000 ALTER TABLE `role_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `display_name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Super admin',NULL,NULL,NULL),(2,'matchmaker','Matchmaker',NULL,NULL,NULL),(3,'gentleman','Gentleman Member',NULL,NULL,NULL),(4,'asian','Asian Partner',NULL,NULL,NULL);
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staff` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `admin_id` int(11) NOT NULL DEFAULT '0',
  `fname` varchar(50) NOT NULL,
  `lname` varchar(255) NOT NULL DEFAULT '',
  `semail` varchar(255) NOT NULL DEFAULT '',
  `mobile_phone_code` varchar(255) NOT NULL DEFAULT '',
  `mobile_phone` varchar(255) NOT NULL DEFAULT '',
  `home_phone_code` varchar(255) NOT NULL DEFAULT '',
  `home_phone` varchar(255) NOT NULL DEFAULT '',
  `office_phone_code` varchar(255) NOT NULL DEFAULT '',
  `office_phone` varchar(255) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `identity` varchar(255) NOT NULL DEFAULT '',
  `passport_country` varchar(255) NOT NULL DEFAULT '',
  `passport_type` varchar(255) NOT NULL DEFAULT '',
  `passport_number` varchar(255) NOT NULL DEFAULT '',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (1,1,0,'Admin','','','','','','','','','','','','','',1,NULL,'2018-08-21 10:08:28');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `static_pages`
--

DROP TABLE IF EXISTS `static_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `static_pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `static_pages`
--

LOCK TABLES `static_pages` WRITE;
/*!40000 ALTER TABLE `static_pages` DISABLE KEYS */;
INSERT INTO `static_pages` VALUES (1,'Terms and Conditions','Terms and Conditions Page','<h2 class=\"modal-terms-caption\">Legal</h2>\n<h3 class=\"text-uppercase\">TERMS OF SERVICE AGREEMENT</h3>\n<p>THIS TERMS OF SERVICE AGREEMENT (&ldquo;Agreement&rdquo;) is made</p>\n<h3 class=\"text-uppercase\">BETWEEN</h3>\n<article>\n<p>1.You (the \"Client\"); and&nbsp;<br />2.Thai Wish of (the \"Service Provider\"), collectively referred to as the \"Parties\".</p>\n<p>By accessing the Service Provider web site, currently located at http://www.thebachelorhouse.com (the &ldquo;Site&rdquo;), and using, participating or registering for any of the Services (as defined below) accessible or advertised through the Site, you become a user and agree to, and are bound by, the terms and conditions of this Agreement for as long as you continue to use the Site or participate in the Services. IF YOU DO NOT AGREE TO BE BOUND BY THIS AGREEMENT, DO NOT USE THE SITE OR THE SERVICES. Your use of, or participation in, certain Services may be subject to additional terms, and such terms will be either listed in this Agreement or will be presented to you for your acceptance when you sign up to use such Services. For the purposes of this Agreement, &ldquo;you,&rdquo; &ldquo;your&rdquo; or &ldquo;yourself&rdquo; shall mean the person who accesses the Site or registers for the Services.</p>\n<p>The Service Provider services consist of the following, without limitation:</p>\n<p>Personal Matchmaking and Coaching Services;</p>\n<p>Exclusive Matchmaking Events;</p>\n<p>Image and Dating Seminars/Presentations; and</p>\n<p>Singles Events open to the Service Provider&rsquo;s men and women who are legally unmarried</p>\n<p>(all of the above collectively referred to as the &ldquo;Services&rdquo;). The Service Provider may offer additional services or revise any of the Services, at its discretion, and this Agreement will apply to all additional services or revised Services. The Service Provider also reserves the right to cease offering any of the Services.</p>\n<p>Please review this Agreement carefully, including the Arbitration provision in Section 11, which describes how Disputes (as defined below) will be resolved between you and the Service Provider, and that no class actions may be brought under this Agreement.</p>\n<p>This Agreement is subject to change by the Service Provider in its sole discretion at any time, and any such changes will be posted on the Site. Your continued use of this Site or the Services after the posting of revisions to this Agreement will constitute your acceptance of such revisions. Please consult the end of this Agreement or the Service Provider to determine when the Agreement was last revised.</p>\n</article>\n<article>\n<h4>1. Eligibility</h4>\n<p>a. Minimum Age. You must be at least 18 years old to use the Site or to register for the Services. By accessing the Site and/or using the Services, you represent and warrant that you are at least 18 years old. Certain Services may have other age requirements for all or portion of such Services, and such other age requirements are stated on such Services or portions thereof.</p>\n<p>b. Marital Status. By requesting to use, registering to use, or using the Site and/or registering or participating in the Services, you represent and warrant that you are not married. If you are separated, but not yet legally divorced, you may not request to use, register to use, use or otherwise participate in the Services.</p>\n<p>c. Health/Emotional Stability. By requesting to use, registering to use, or using the Site and/or Services, you represent and warrant that you are in an emotionally sound and healthy position for dating. Being an emotionally sound and healthy position for dating shall include, but not to be limited to, you NOT:</p>\n<p>i. Being addicted to drugs, alcohol, prescription medication, pornography or sex;</p>\n</article>'),(2,'Privacy Policy','Privacy Policy Page','<h2 class=\"modal-terms-caption\">Privacy</h2>\n<h3 class=\"text-uppercase\">RISK DISCLOSURE NOTICE</h3>\n<p>THIS RISK DISCLOSURE NOTICE (&ldquo;Notice&rdquo;) is made</p>\n<h3 class=\"text-uppercase\">BETWEEN</h3>\n<article>\n<p>1.You (the \"Client\"); and&nbsp;<br />2. The Bachelor House of (the \"Service Provider\"), collectively referred to as the \"Parties\".</p>\n<p>Participation in services provided by the Service Provider (which includes but is not limited to advising, matchmaking, consulting, and image services) is contingent upon the Client agreeing to the following terms and conditions.</p>\n</article>\n<article>\n<h4>Clients MUST NOT be:</h4>\n<p>&bull; addicted to drugs, alcohol, prescriptions, or sex;</p>\n<p>&bull; engaged in behaviors that are, or could be deemed as, verbally, physically, sexually, or emotionally abusive (including any past or present allegations of sexual assault, abuse, protective orders, or being on a sex offender registry);</p>\n<p>&bull; involved in any financial fraud against your prospective soul-mates or other members of the Website during the Service;</p>\n<p>&bull; disclosing your personal or financial information (for example, your credit card, national insurance number or bank account information) to your prospective soul-mates during the Service;</p>\n</article>'),(3,'About Us','About Us Page','<h2 class=\"modal-about-caption\">About us</h2>\n	        	<span>EXCLUSIVE GAY INTRODUCTIONS AGENCY</span>\n	        	<div class=\"modal-about-img\"><img src=\"/img/about-us/mans.jpg\" class=\"img-responsive\"></div>\n	        	<p class=\"text-center\">The Bachelor House is the first gay introduction agency from Asia. The company aims at providing quality matchmaking services for gay men from Asia, those who are seriously looking for lifetime companions from all over the world. The service is private, tailor-made and genuine. Currently in Asia, we serve clients from Thailand Taiwan, Singapore, Japan, Hong Kong and South Korea. Our office will soon open in Bangkok, Thailand to serve clients from all over Asia.</p>'),(4,'Refund Policy','Refund Policy Page','<h2 class=\"modal-about-caption\">Refund Policy</h2>'),(5,'Delivery Policy','Delivery Policy Page','<h2 class=\"modal-about-caption\">Delivery Policy</h2>');
/*!40000 ALTER TABLE `static_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_answers`
--

DROP TABLE IF EXISTS `user_answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_answers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ques_id` int(11) NOT NULL,
  `value` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ques_id` (`ques_id`)
) ENGINE=InnoDB AUTO_INCREMENT=274 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_answers`
--

LOCK TABLES `user_answers` WRITE;
/*!40000 ALTER TABLE `user_answers` DISABLE KEYS */;
INSERT INTO `user_answers` VALUES (1,1,'None'),(2,1,'Buddhist'),(3,1,'Catholic'),(4,1,'Christian'),(5,1,'Evangelical'),(6,1,'Hinduism'),(7,1,'Islam'),(8,1,'Jain'),(9,1,'Jewish'),(10,1,'Mormon'),(11,1,'Orthodox'),(12,1,'Protestant'),(13,1,'Sikh'),(14,1,'Taoism'),(15,1,'Zoroastrianism'),(16,1,'New Age'),(17,1,'Jehovahs Witness'),(18,2,'College'),(19,2,'College Degree'),(20,2,'Community College'),(21,2,'Doctor Degree'),(22,2,'High School'),(23,2,'Master Degree'),(24,2,'Medical School'),(25,2,'Student'),(26,2,'Technical School'),(27,2,'Training'),(28,2,'University Degree'),(29,3,'Advertising/Media'),(30,3,'Clerical/Service Worker'),(31,3,'Composer/Producer'),(32,3,'Tech/Consultant'),(33,3,'Doctor/Medical Field'),(34,3,'Finance/Accounting'),(35,3,'Graphic Artist/Designer'),(36,3,'Business Owner'),(37,3,'Government'),(38,3,'Homemaker'),(39,3,'Teacher'),(40,3,'Lawyer/Paralegal'),(41,3,'Middle Management'),(42,3,'Programming'),(43,3,'Office Manager/Admin'),(44,3,'Political'),(45,3,'Professional/Technical'),(46,3,'R&D Engineering'),(47,3,'Retired'),(48,3,'Sales/Marketing'),(49,3,'Scientist/Research'),(50,3,'Tourism'),(51,3,'University Staff'),(52,3,'University Student'),(53,3,'Upper Management'),(54,3,'Military'),(55,4,'English'),(56,4,'Spanish'),(57,4,'Italian'),(58,4,'Chinese'),(59,4,'German'),(60,4,'Korean'),(61,4,'Portuguese'),(62,4,'Thai'),(63,4,'Vietnamese'),(64,4,'Dutch'),(65,4,'French'),(66,4,'Bahasa Malay'),(67,4,'Russian'),(68,4,'Tagalog'),(69,4,'Turkish'),(70,4,'Arabs'),(71,4,'Others'),(72,5,'English'),(73,5,'Spanish'),(74,5,'Italian'),(75,5,'Chinese'),(76,5,'German'),(77,5,'Korean'),(78,5,'Portuguese'),(79,5,'Thai'),(80,5,'Vietnamese'),(81,5,'Dutch'),(82,5,'French'),(83,5,'Bahasa Malay'),(84,5,'Russian'),(85,5,'Tagalog'),(86,5,'Turkish'),(87,5,'Arabs'),(88,5,'Others'),(89,6,'Blonde'),(90,6,'Grey'),(91,6,'Red'),(92,6,'Brown'),(93,6,'Ginger'),(94,6,'Fair'),(95,6,'Black'),(96,6,'Chestnut'),(97,6,'Violet'),(98,7,'Grey'),(99,7,'Blue'),(100,7,'Brown'),(101,7,'Hazel'),(102,7,'Black'),(103,7,'Green'),(104,8,'Prefer not to say'),(105,8,'Gay'),(106,8,'Bisexual'),(107,8,'Curious'),(108,8,'Straight'),(109,9,'Asian'),(110,9,'Black/African descent'),(111,9,'Caucasian'),(112,9,'East Indian'),(113,9,'Hispanic/Latino'),(114,9,'Native American'),(115,9,'Pacific Islander'),(116,9,'Semitic'),(117,9,'Mixed'),(118,9,'Other'),(119,10,'None'),(120,10,'Beard'),(121,10,'Goatee'),(122,10,'Moustache'),(123,10,'Sideburns'),(124,10,'Other'),(125,11,'Smooth'),(126,11,'Some'),(127,11,'Butt'),(128,11,'Chest'),(129,11,'Lots'),(130,11,'Shaved'),(131,11,'Prefer not to say'),(132,12,'Prefer not to say'),(133,12,'Top'),(134,12,'Top Versatile'),(135,12,'Bottom'),(136,12,'Bottom Versatile'),(137,12,'Versatile'),(138,13,'Always'),(139,13,'Occasionally'),(140,13,'Never'),(141,13,'Prefer not to say'),(142,14,'Not at all'),(143,14,'Not at work'),(144,14,'To all but family'),(145,14,'To some'),(146,14,'Totally'),(147,14,'Prefer not to say'),(148,15,'Yes'),(149,15,'No'),(150,16,'Yes'),(151,16,'No'),(152,17,'No complaints'),(153,17,'Average'),(154,17,'Large'),(155,17,'Seeing is Believing'),(156,17,'Prefer not to say'),(157,18,'Cut'),(158,18,'Uncut'),(159,18,'Prefer not to say'),(160,19,'Alone'),(161,19,'With a house/flatmate'),(162,19,'With Parents'),(163,19,'Other'),(164,19,'Prefer not to say'),(165,20,'Never Married'),(166,20,'Divorced'),(167,20,'Widower'),(168,21,'Skateboarding'),(169,21,'Bicycling'),(170,21,'Swimming'),(171,21,'Sailing'),(172,21,'Baseball'),(173,21,'Football'),(174,21,'Fitness'),(175,21,'Tennis'),(176,21,'Basket Ball'),(177,21,'Diving'),(178,21,'Table Tennis'),(179,21,'Billiard'),(180,21,'Chess'),(181,21,'Rugby'),(182,21,'Poker'),(183,21,'Writing'),(184,21,'Ice Staking'),(185,21,'Make Up'),(186,21,'Work'),(187,21,'Shopping'),(188,21,'Politics'),(190,21,'Mobile'),(191,21,'Music'),(192,22,'Boy'),(193,22,'Girl'),(194,24,'Never'),(195,24,'Socially'),(196,24,'Occasionaly'),(197,25,'Yes'),(198,25,'No'),(199,26,'Marriage / Civil Partnership'),(200,26,'Long term Relationship'),(201,26,'Soulmate'),(202,26,'Friendship'),(203,26,'Friends sharing passion and interest'),(204,26,'A penpal relationship'),(205,26,'Companionship while travelling abroad'),(206,26,'A casual relationship'),(207,26,'Exploring foreign cultures'),(208,26,'Online chat'),(209,26,'Online Flirting'),(210,26,'Action'),(211,27,'I have no intention to travel'),(212,27,'I will visit Asia to meet my future wife'),(213,27,'I often travel'),(214,28,'No preference'),(215,28,'Asian, Black/African descent'),(216,28,'Arabs'),(217,28,'Turkish'),(219,28,'Hispanic/Latino'),(220,28,'Native American'),(221,28,'Pacific Islander'),(222,28,'Semitic'),(223,28,'Mixed'),(224,28,'Other'),(225,29,'I have no intentions to visit foreign countries for dating'),(226,29,'I will visit foreign countries to meet my future husband'),(227,29,'I often travel'),(228,21,'Reading'),(230,21,'Guitar'),(231,21,'Singing'),(232,21,'Piano'),(233,21,'Painting'),(234,21,'Art'),(235,21,'Theater'),(236,21,'Traveling'),(237,21,'Photography'),(238,21,'Science'),(239,21,'Space'),(240,21,'Fishing'),(241,21,'Hunting'),(242,21,'Cooking'),(243,21,'Health'),(244,21,'Movies'),(245,21,'Money'),(246,21,'Video Games'),(247,21,'Magic'),(248,30,'Sweet Guy'),(249,30,'Cute Boyfriend'),(250,30,'Boy Next Door'),(251,30,'Daddy'),(252,30,'Husband'),(253,31,'I have no intention to travel'),(254,31,'I will travel to meet my future boyfriend'),(255,31,'I often travel'),(256,32,'Yes'),(257,32,'No'),(258,33,'Cooking Together'),(259,33,'Having Dinner'),(260,33,'Learning Massage Together'),(261,33,'Drinking'),(262,33,'Travel Together'),(263,33,'Parties'),(264,33,'Drinking Coffee'),(265,33,'Cultural Events'),(266,33,'Having Brunch'),(267,33,'Exercises/Gym'),(268,33,'Others'),(269,34,'I have no intention to visit foreign countries for dating'),(270,34,'I will visit foreign countries to meet my future husband'),(271,34,'I often travel'),(272,28,'Caucasian'),(273,28,'East Indian');
/*!40000 ALTER TABLE `user_answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_logins`
--

DROP TABLE IF EXISTS `user_logins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_logins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `logged_in` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ip` varchar(255) NOT NULL DEFAULT '',
  `user_agent` varchar(255) NOT NULL DEFAULT '',
  `country` varchar(255) NOT NULL DEFAULT '',
  `city` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_logins`
--

LOCK TABLES `user_logins` WRITE;
/*!40000 ALTER TABLE `user_logins` DISABLE KEYS */;
INSERT INTO `user_logins` VALUES (1,1,'2018-08-21 10:45:11','192.168.10.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36','',''),(2,5,'2018-08-21 10:45:14','192.168.10.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36','',''),(3,7,'2018-08-21 10:48:32','192.168.10.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36','',''),(4,1,'2018-08-21 10:49:58','192.168.10.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36','',''),(5,5,'2018-08-21 11:02:29','192.168.10.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36','',''),(6,7,'2018-08-21 12:31:53','192.168.10.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36','',''),(7,7,'2018-08-21 12:32:40','192.168.10.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36','',''),(8,1,'2018-08-21 12:42:27','192.168.10.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36','',''),(9,8,'2018-08-21 13:32:13','','','',''),(10,9,'2018-08-21 13:42:52','','','',''),(11,10,'2018-08-21 13:56:56','192.168.10.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36','',''),(12,7,'2018-08-21 14:16:19','192.168.10.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36','',''),(13,1,'2018-08-22 12:13:57','192.168.10.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36','',''),(14,8,'2018-08-22 12:15:25','192.168.10.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36','',''),(15,1,'2018-08-22 12:42:42','192.168.10.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36','',''),(16,5,'2018-08-22 12:47:55','192.168.10.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36','',''),(17,1,'2018-08-22 12:57:16','192.168.10.1','Mozilla/5.0 (X11; Linux x86_64; rv:61.0) Gecko/20100101 Firefox/61.0','',''),(18,12,'2018-08-22 14:00:45','192.168.10.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36','',''),(19,13,'2018-08-22 14:03:24','192.168.10.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36','',''),(20,14,'2018-08-22 14:20:45','192.168.10.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36','','');
/*!40000 ALTER TABLE `user_logins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_questions`
--

DROP TABLE IF EXISTS `user_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(80) NOT NULL,
  `type` int(11) NOT NULL,
  `gentlemen` tinyint(4) NOT NULL DEFAULT '0',
  `women` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_questions`
--

LOCK TABLES `user_questions` WRITE;
/*!40000 ALTER TABLE `user_questions` DISABLE KEYS */;
INSERT INTO `user_questions` VALUES (1,'Religion',1,1,1),(2,'Education',1,1,1),(3,'Occupation',1,1,1),(4,'Native Language',1,1,1),(5,'Second Language',1,1,1),(6,'Hair Color',2,1,1),(7,'Eye Color',2,1,1),(8,'Sexuality',1,1,1),(9,'Ethnicity',1,1,1),(10,'Facial Hair',2,1,1),(11,'Body Hair',2,1,1),(12,'Role',1,1,1),(13,'Safe Sex',1,1,1),(14,'How out are you?',4,1,1),(15,'Tatoos',2,1,1),(16,'Piercings',2,1,1),(17,'My Size',2,1,1),(18,'Cut',2,1,1),(19,'Living Arrangements',4,1,1),(20,'Marital Status',1,1,1),(21,'Hobbies and Interests',5,1,1),(22,'Child’s Sex',4,1,1),(24,'Drinking',1,1,1),(25,'Smoking',1,1,1),(26,'Reasons for Joining the Website',6,1,1),(27,'Are You Interested in Travelling to Asia?',4,1,0),(28,'Your Dating Ethnicity Preference',6,1,1),(29,'Interested in visiting men from overseas?',4,1,1),(30,'What Types of Guys Do you like',7,1,1),(31,'Are You Interested in Travelling for Love?',8,1,0),(32,'Do you have children?',4,1,1),(33,'Activities You Want to Do with Your Guy',4,1,1),(34,'Are you Interested in visiting men from overseas?',8,0,1);
/*!40000 ALTER TABLE `user_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role` tinyint(4) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `ip` varchar(255) NOT NULL DEFAULT '',
  `user_agent` varchar(255) NOT NULL DEFAULT '',
  `facebook_url` varchar(255) DEFAULT NULL,
  `verified` tinyint(1) NOT NULL DEFAULT '0',
  `verify_hash` varchar(255) NOT NULL DEFAULT '',
  `recovery_hash` varchar(255) NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `facebook_user` tinyint(1) NOT NULL DEFAULT '0',
  `show_tutorial` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,1,'admin','email@admin.da','$2y$10$SuolzL3kB0I15tVyUexr2.YmlzIN8626RaO4F9AxufieZVzH65dU.','XZmy9Q0GnCfsiRXvzLz8iS1HLpjOAOqxZyuSblPfME4itPpJTc08zWunH9jz','192.168.10.1','Mozilla/5.0 (X11; Linux x86_64; rv:61.0) Gecko/20100101 Firefox/61.0',NULL,0,'','',NULL,'2018-08-22 12:57:06',0,1),(2,4,'AP124054','sipes.arielle@example.com','$2y$10$Z2NcYdA9NixUE3q2FpVDGufdDE5yDqHM.ErrMVtuEjO5wwa67Ov.i','','','',NULL,0,'','','2018-08-21 10:11:52','2018-08-21 10:12:00',0,1),(3,4,'AP124055','rosenbaum.johan@example.org','$2y$10$Z2NcYdA9NixUE3q2FpVDGufdDE5yDqHM.ErrMVtuEjO5wwa67Ov.i','','','',NULL,0,'','','2018-08-21 10:11:58','2018-08-21 10:12:00',0,1),(4,4,'AP124056','trisha13@example.net','$2y$10$Z2NcYdA9NixUE3q2FpVDGufdDE5yDqHM.ErrMVtuEjO5wwa67Ov.i','','','',NULL,0,'','','2018-08-21 10:11:59','2018-08-21 10:12:00',0,1),(5,4,'AP124057','rhea.dare@example.net','$2y$10$Z2NcYdA9NixUE3q2FpVDGufdDE5yDqHM.ErrMVtuEjO5wwa67Ov.i','tQwgHqaUGOg2ZDzOYHaYwSLc44chgGvcyh52RScUgw4CUY8cl77KQVrGzQKT','192.168.10.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36',NULL,0,'','','2018-08-21 10:11:59','2018-08-21 10:37:11',0,1),(6,4,'AP124058','murphy.isaias@example.org','$2y$10$Z2NcYdA9NixUE3q2FpVDGufdDE5yDqHM.ErrMVtuEjO5wwa67Ov.i','','','',NULL,0,'','','2018-08-21 10:11:59','2018-08-21 10:12:00',0,1),(7,3,'GM317565','tk1@div-art.com','$2y$10$W/nkTh.x/Axop3620j1h8e17Ib0Jtul8StFQzGGHNSlA9FQY85qr6','wT1bQ4HJDRqptun6N3xjp95ijzXrvWIcMZMH0VIWg0ZBlk3y1OAjVwkcSa2l','192.168.10.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36',NULL,1,'$2y$10$EVQqeOxLJNcgtVNrc4J1i.bN4aiobRlSjXjRYXgHdrUXvnA3oUU1e','','2018-08-21 10:38:49','2018-08-21 11:01:23',0,0),(8,3,'GM317566','tk2@div-art.com','$2y$10$4dnuDxqB5103cLNxQfFnSOQchrBeU9Zp4yX4WQCMgXrLTKM8N6Zju','YXQXpqjvxjs6iOxZTPRxM5DrIdAOLhLUmoXtC9Ipabv3Xb5JmcOYVrTzBUPJ','192.168.10.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36',NULL,1,'$2y$10$lxv.zG9CKHrCoZN/NZP92e6f4CH/pjRoQsCA0AwlKUYDsfk4pcnoC','','2018-08-21 13:32:00','2018-08-22 12:16:02',0,0),(9,3,'GM317567','tk3@div-art.com','$2y$10$6CEbFWCoqpBoNClFVISBQOgCdCAYNVqAD8mzjdTNNdU4Q.iVrEd66',NULL,'','',NULL,0,'$2y$10$YlAMnKeeE1GKS/CmYrIijeOltqh1piOZp.BXUJ5FfsLrYjHvImAIG','','2018-08-21 13:42:40','2018-08-21 13:42:47',0,1),(10,3,'GM317568','tk4@div-art.com','$2y$10$Tco3lD2bLhWDVfvj7b383.QrY3UZTgQST17sVz...EpNNwrhBG01u',NULL,'192.168.10.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36',NULL,0,'$2y$10$smrbbgcVSLpTd90OfXKsA.FhrFFUCj0GybnEqjccHhFWUibp0QRRC','','2018-08-21 13:56:17','2018-08-21 13:56:51',0,1),(11,3,'GM317569','tk5@div-art.com','$2y$10$x/Fpz0qTh8ZZhwEr3jWbQ.l8HR/odMybxW3ntPnXRgQHIbf5fMR6y',NULL,'','',NULL,0,'$2y$10$Z36ZOUGqXN5PxuTmeiHqYugjdArzzalVJZ/l3PPi8Kai8fkaXbqq2','','2018-08-21 14:05:18','2018-08-21 14:05:20',0,1),(12,3,'GM317570','tk6@div-art.com','$2y$10$Ywgjvct10ulrwFwbR6ieKO9c62UzleTnU7iBpaI/ne.hnPp8PSMmu','OdzfVbaivm81mn4OoiZXWiprdry1TFgv7ZV1Kyrb2SnFwyVJXnYhnqCd3Sc4','192.168.10.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36',NULL,0,'$2y$10$9kLrwloLpdXSN2K9eUPlQelcdKuno0pTmQSwNtYj9.0eC/lBGcDeS','','2018-08-22 13:50:36','2018-08-22 14:00:50',0,0),(13,3,'GM317571','tk7@div-art.com','$2y$10$/dvMf3qSvh0Ol2bMTuKTq.jq8KIS2LOjn0honr9LCMscPyWZEq17q','M6TiDSUHqlHwRNJOyx7t40mDCsmbcjSBKmpnCYMqpsQawahpueGLlKVlOTZB','192.168.10.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36',NULL,1,'$2y$10$EcYLl9rInemLqBS9zlXfsuWbTGh4a0ysVWL3J.dL34Edy1XRVfJvy','','2018-08-22 14:02:50','2018-08-22 14:07:49',0,0),(14,3,'GM317572','tk8@div-art.com','$2y$10$frQrXflyauAJTv41ZGBBH..K.Fj0.cJErV1Wjsp6p/amgkB2HJc86',NULL,'192.168.10.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36',NULL,1,'$2y$10$rZog0DIzdiiJzW17iAhR5ekmGzUzj1K9svIvjpCzcj152CZLoGuyy','','2018-08-22 14:20:36','2018-08-22 14:30:54',0,0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `women_attr`
--

DROP TABLE IF EXISTS `women_attr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `women_attr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `women_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `answer_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `gentlemen_id` (`women_id`,`question_id`,`answer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=502 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `women_attr`
--

LOCK TABLES `women_attr` WRITE;
/*!40000 ALTER TABLE `women_attr` DISABLE KEYS */;
INSERT INTO `women_attr` VALUES (12,1,1,1),(13,1,2,18),(26,1,3,32),(14,1,4,55),(15,1,5,72),(4,1,6,89),(5,1,7,98),(22,1,8,104),(16,1,9,109),(6,1,10,119),(7,1,11,125),(17,1,12,132),(23,1,12,132),(24,1,13,138),(25,1,14,142),(8,1,15,148),(9,1,16,150),(10,1,17,152),(11,1,18,157),(18,1,19,160),(19,1,20,165),(20,1,24,194),(21,1,25,197),(1,1,26,202),(3,1,28,214),(2,1,29,225),(27,2,1,1),(28,2,2,18),(29,2,3,29),(30,2,4,55),(31,2,5,72),(32,2,6,89),(33,2,7,98),(34,2,8,104),(35,2,9,109),(36,2,10,119),(37,2,11,125),(38,2,12,132),(39,2,13,138),(40,2,14,142),(41,2,15,148),(42,2,16,150),(43,2,17,152),(44,2,18,157),(45,2,19,160),(46,2,20,165),(47,2,21,168),(48,2,22,192),(49,2,23,0),(50,2,24,194),(51,2,25,197),(52,2,26,199),(53,2,28,214),(54,2,29,225),(327,3,1,3),(328,3,2,18),(329,3,3,29),(330,3,4,55),(331,3,5,72),(332,3,6,89),(333,3,7,98),(334,3,8,104),(335,3,9,109),(336,3,10,119),(337,3,11,125),(338,3,12,135),(339,3,13,138),(340,3,14,142),(341,3,15,148),(342,3,16,150),(343,3,17,152),(344,3,18,157),(345,3,19,160),(346,3,20,165),(347,3,21,169),(348,3,21,173),(349,3,21,174),(350,3,22,192),(351,3,23,0),(352,3,24,194),(353,3,25,198),(354,3,26,199),(355,3,26,201),(356,3,26,202),(357,3,26,204),(358,3,26,205),(359,3,26,206),(360,3,26,207),(361,3,28,214),(362,3,28,215),(363,3,28,216),(364,3,28,217),(365,3,28,218),(366,3,28,219),(367,3,28,220),(368,3,28,221),(369,3,28,222),(370,3,28,223),(371,3,28,224),(372,3,29,225),(373,4,1,1),(374,4,2,18),(375,4,3,29),(376,4,4,55),(377,4,5,72),(378,4,6,89),(379,4,7,98),(380,4,8,104),(381,4,9,109),(382,4,10,119),(383,4,11,125),(384,4,12,132),(385,4,13,138),(386,4,14,142),(387,4,15,148),(388,4,16,150),(389,4,17,152),(390,4,18,157),(391,4,19,160),(392,4,20,165),(393,4,22,192),(394,4,23,0),(395,4,24,194),(396,4,25,197),(397,4,26,199),(398,4,28,214),(399,4,29,225),(425,5,1,1),(426,5,2,18),(427,5,3,29),(428,5,4,55),(429,5,5,72),(430,5,6,89),(431,5,7,98),(432,5,8,104),(433,5,9,109),(434,5,10,119),(435,5,11,125),(436,5,12,132),(437,5,13,138),(438,5,14,142),(439,5,15,148),(440,5,16,150),(441,5,17,152),(442,5,18,157),(443,5,19,160),(444,5,20,165),(445,5,22,192),(446,5,23,0),(447,5,24,194),(448,5,25,197),(449,5,26,200),(450,5,28,215),(451,5,29,225),(452,6,1,1),(453,6,2,18),(454,6,3,29),(455,6,4,55),(456,6,5,72),(457,6,6,89),(458,6,7,98),(459,6,8,104),(460,6,9,109),(461,6,10,119),(462,6,11,125),(463,6,12,132),(464,6,13,138),(465,6,14,142),(466,6,15,148),(467,6,16,150),(468,6,17,152),(469,6,18,157),(470,6,19,160),(471,6,20,165),(472,6,22,192),(473,6,23,0),(474,6,24,194),(475,6,25,197),(476,6,29,225),(477,7,1,1),(478,7,2,18),(479,7,3,29),(480,7,4,55),(481,7,5,72),(482,7,6,89),(483,7,7,98),(484,7,8,104),(485,7,9,109),(486,7,10,119),(487,7,11,125),(488,7,12,132),(489,7,13,138),(490,7,14,142),(491,7,15,148),(492,7,16,150),(493,7,17,152),(494,7,18,157),(495,7,19,160),(496,7,20,165),(497,7,22,192),(498,7,23,0),(499,7,24,194),(500,7,25,197),(501,7,29,225);
/*!40000 ALTER TABLE `women_attr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `women_basic`
--

DROP TABLE IF EXISTS `women_basic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `women_basic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `fname` varchar(30) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `nickname` varchar(30) NOT NULL,
  `dp` mediumtext NOT NULL,
  `dob` date NOT NULL DEFAULT '0000-00-00',
  `email` varchar(100) NOT NULL,
  `password` varchar(32) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `address` mediumtext NOT NULL,
  `city` varchar(30) NOT NULL,
  `country_origin` int(11) NOT NULL DEFAULT '0',
  `country_living` int(11) NOT NULL DEFAULT '0',
  `country_study` int(11) NOT NULL DEFAULT '0',
  `zip` varchar(30) NOT NULL,
  `line_id` varchar(255) NOT NULL DEFAULT '',
  `timezone` varchar(255) NOT NULL DEFAULT '',
  `height` float NOT NULL,
  `weight` float NOT NULL,
  `nic` varchar(100) NOT NULL,
  `nic_pic` mediumtext NOT NULL,
  `about_me` mediumtext NOT NULL,
  `my_ideal` mediumtext NOT NULL,
  `matchmaker_id` int(11) NOT NULL,
  `date_of_reg` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `featured` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `date_of_change_status` datetime DEFAULT NULL,
  `paid` tinyint(4) NOT NULL DEFAULT '0',
  `childs_year` varchar(255) NOT NULL DEFAULT '',
  `identity` varchar(255) NOT NULL DEFAULT '',
  `registration` varchar(255) NOT NULL DEFAULT '',
  `passport_country` varchar(255) NOT NULL DEFAULT '',
  `passport_type` varchar(255) NOT NULL DEFAULT '',
  `passport_number` varchar(255) NOT NULL DEFAULT '',
  `refresh` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `matchmaker_id` (`matchmaker_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `women_basic`
--

LOCK TABLES `women_basic` WRITE;
/*!40000 ALTER TABLE `women_basic` DISABLE KEYS */;
INSERT INTO `women_basic` VALUES (8,2,'Selina','Kutch','Selina','f8697557d8f33450633a2b9887f155c3.jpg','1982-06-19','sipes.arielle@example.com','','','','North Lesley',0,0,0,'02333','','',120,140,'','','','',2,'2018-08-21 10:11:58',0,1,'0000-00-00 00:00:00',0,'','','','','','','0000-00-00 00:00:00'),(9,3,'Kaleb','Daugherty','Kaleb','f62be4914e0b882a5e6aeb951ef2fbe8.jpg','1995-08-11','rosenbaum.johan@example.org','','','','West Ardithview',0,0,0,'70717-7479','','',120,140,'','','','',1,'2018-08-21 10:11:59',0,1,'0000-00-00 00:00:00',0,'','','','','','','0000-00-00 00:00:00'),(10,4,'Enola','Stiedemann','Enola','01cb91674a373f29e6469b72bd48214d.jpg','1985-08-11','trisha13@example.net','','','','West Mireille',0,0,0,'99913-3284','','',120,140,'','','','',1,'2018-08-21 10:11:59',0,1,'0000-00-00 00:00:00',0,'','','','','','','0000-00-00 00:00:00'),(11,5,'Dr.','Eliza','Dr.','9784b4daed43ff448823775ac35fb480.jpg','1975-06-08','rhea.dare@example.net','','','','South Celine',0,0,0,'22348-9753','','',120,140,'','','','',1,'2018-08-21 10:11:59',0,1,'0000-00-00 00:00:00',0,'','','','','','','0000-00-00 00:00:00'),(12,6,'Cleora','Gutkowski','Cleora','76daeb80e73b0c889005ee543352a4bc.jpg','2000-05-23','murphy.isaias@example.org','','','','Paucekchester',0,0,0,'74119-3568','','',120,140,'','','','',2,'2018-08-21 10:12:00',0,1,'0000-00-00 00:00:00',0,'','','','','','','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `women_basic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `women_favourites`
--

DROP TABLE IF EXISTS `women_favourites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `women_favourites` (
  `women_id` int(11) NOT NULL,
  `fav_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `women_favourites`
--

LOCK TABLES `women_favourites` WRITE;
/*!40000 ALTER TABLE `women_favourites` DISABLE KEYS */;
/*!40000 ALTER TABLE `women_favourites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `women_interviews`
--

DROP TABLE IF EXISTS `women_interviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `women_interviews` (
  `women_id` int(11) NOT NULL,
  `interview_id` int(11) NOT NULL,
  `value` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `women_interviews`
--

LOCK TABLES `women_interviews` WRITE;
/*!40000 ALTER TABLE `women_interviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `women_interviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `women_interviews_items`
--

DROP TABLE IF EXISTS `women_interviews_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `women_interviews_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `women_interviews_items`
--

LOCK TABLES `women_interviews_items` WRITE;
/*!40000 ALTER TABLE `women_interviews_items` DISABLE KEYS */;
INSERT INTO `women_interviews_items` VALUES (1,'favorite_music','my favorite music style'),(2,'favorite_book','my favorite book author'),(3,'favorite_tv_show','my favorite tv show'),(4,'favorite_color','my favorite color'),(5,'favorite_number','my favorite number'),(6,'favorite_book_meal','my favorite book meal'),(7,'favorite_movie','my favorite movie'),(8,'favorite_parfume_brand','my favorite parfume brand'),(9,'favorite_country','my favorite country');
/*!40000 ALTER TABLE `women_interviews_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `women_intletters_pics`
--

DROP TABLE IF EXISTS `women_intletters_pics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `women_intletters_pics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intletters_template_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `main` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `women_intletters_pics`
--

LOCK TABLES `women_intletters_pics` WRITE;
/*!40000 ALTER TABLE `women_intletters_pics` DISABLE KEYS */;
/*!40000 ALTER TABLE `women_intletters_pics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `women_intletters_salutation`
--

DROP TABLE IF EXISTS `women_intletters_salutation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `women_intletters_salutation` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `format` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `women_intletters_salutation`
--

LOCK TABLES `women_intletters_salutation` WRITE;
/*!40000 ALTER TABLE `women_intletters_salutation` DISABLE KEYS */;
INSERT INTO `women_intletters_salutation` VALUES (1,'Dear [Gentleman’s First Name]','Dear {{fname}}'),(2,'Hi [Gentleman’s First Name]','Hi {{fname}}'),(3,'Hello [Gentleman’s First Name]','Hello {{fname}}'),(4,'My dear [Gentleman’s First Name]','My dear {{fname}}'),(5,'[Gentleman’s First Name]','{{fname}}');
/*!40000 ALTER TABLE `women_intletters_salutation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `women_intletters_sent`
--

DROP TABLE IF EXISTS `women_intletters_sent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `women_intletters_sent` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `w_user_id` int(11) NOT NULL,
  `q_user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `women_intletters_sent`
--

LOCK TABLES `women_intletters_sent` WRITE;
/*!40000 ALTER TABLE `women_intletters_sent` DISABLE KEYS */;
INSERT INTO `women_intletters_sent` VALUES (6,5,7),(7,5,8),(8,5,9),(9,5,10),(10,5,11),(11,5,12),(12,5,13),(13,5,14);
/*!40000 ALTER TABLE `women_intletters_sent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `women_intletters_templates`
--

DROP TABLE IF EXISTS `women_intletters_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `women_intletters_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `women_id` int(11) NOT NULL,
  `text` text NOT NULL,
  `salutation_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `women_intletters_templates`
--

LOCK TABLES `women_intletters_templates` WRITE;
/*!40000 ALTER TABLE `women_intletters_templates` DISABLE KEYS */;
INSERT INTO `women_intletters_templates` VALUES (1,11,'Message',1,'2018-08-21 10:36:16','2018-08-21 10:36:16');
/*!40000 ALTER TABLE `women_intletters_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `women_pics`
--

DROP TABLE IF EXISTS `women_pics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `women_pics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `women_id` int(11) NOT NULL,
  `path` text NOT NULL,
  `main` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `women_id` (`women_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `women_pics`
--

LOCK TABLES `women_pics` WRITE;
/*!40000 ALTER TABLE `women_pics` DISABLE KEYS */;
INSERT INTO `women_pics` VALUES (2,1,'002af53292395f3c40398848abdb11b3.png',0),(3,1,'976a00f0ef5501c2d8caf0fb633a0c15.png',0),(4,3,'89cc87192f0641eb64b20b0fce328c70.jpg',0),(5,3,'fa01601476188c64643f08f98410c4ee.jpg',0);
/*!40000 ALTER TABLE `women_pics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `women_pref`
--

DROP TABLE IF EXISTS `women_pref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `women_pref` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `women_id` int(11) NOT NULL,
  `age_min` int(11) NOT NULL DEFAULT '18',
  `age_max` int(11) NOT NULL DEFAULT '70',
  `height_min` int(11) NOT NULL DEFAULT '140',
  `height_max` int(11) NOT NULL DEFAULT '208',
  `weight_min` int(11) NOT NULL DEFAULT '101',
  `weight_max` int(11) NOT NULL DEFAULT '325',
  `details` varchar(400) NOT NULL DEFAULT '-',
  PRIMARY KEY (`id`),
  KEY `gentlemen_id` (`women_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `women_pref`
--

LOCK TABLES `women_pref` WRITE;
/*!40000 ALTER TABLE `women_pref` DISABLE KEYS */;
INSERT INTO `women_pref` VALUES (1,1,18,30,150,200,100,150,'-'),(2,2,18,70,140,208,101,325,'-'),(3,3,18,70,140,208,101,325,'-'),(4,4,18,70,140,208,101,325,'-'),(5,5,18,70,140,208,101,325,'-'),(6,6,18,70,140,208,101,325,'-'),(7,7,18,70,140,208,101,325,'-'),(8,8,18,70,140,208,101,325,'-'),(9,9,18,70,140,208,101,325,'-'),(10,10,18,70,140,208,101,325,'-'),(11,11,18,70,140,208,101,325,'-'),(12,12,18,70,140,208,101,325,'-');
/*!40000 ALTER TABLE `women_pref` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-08-23 14:40:00
