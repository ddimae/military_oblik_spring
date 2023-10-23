-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: moblik_khpi2023_test
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `army_sklad`
--

DROP TABLE IF EXISTS `army_sklad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `army_sklad` (
  `army_sklad_id` bigint NOT NULL AUTO_INCREMENT,
  `show_order` int NOT NULL,
  `army_sklad_name` varchar(30) NOT NULL,
  PRIMARY KEY (`army_sklad_id`),
  UNIQUE KEY `UK_k9i722k00y2fwwa975768nal4` (`show_order`),
  UNIQUE KEY `UK_la8h6ri6hrr2exlusx0vo2t3f` (`army_sklad_name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `army_sklad`
--

LOCK TABLES `army_sklad` WRITE;
/*!40000 ALTER TABLE `army_sklad` DISABLE KEYS */;
INSERT INTO `army_sklad` VALUES (1,1,'командний'),(2,2,'інженерно-технічний'),(3,3,'юридичний'),(4,4,'медичний'),(5,5,'технічний'),(6,6,'інженерний'),(7,7,'ветерінарний');
/*!40000 ALTER TABLE `army_sklad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `army_zvanie`
--

DROP TABLE IF EXISTS `army_zvanie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `army_zvanie` (
  `army_zvanie_id` bigint NOT NULL AUTO_INCREMENT,
  `kod_skladu` int NOT NULL,
  `show_order` int NOT NULL,
  `army_zvanie_name` varchar(30) NOT NULL,
  PRIMARY KEY (`army_zvanie_id`),
  UNIQUE KEY `UK_32f93fv67p8unua1pf2tp40wl` (`show_order`),
  UNIQUE KEY `UK_c7d65uq7ugnu6exbu6i3taky8` (`army_zvanie_name`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `army_zvanie`
--

LOCK TABLES `army_zvanie` WRITE;
/*!40000 ALTER TABLE `army_zvanie` DISABLE KEYS */;
INSERT INTO `army_zvanie` VALUES (1,1,10,'прапopщик'),(2,2,8,'сержант'),(3,2,7,'рядовий'),(4,1,9,'полковник'),(5,1,5,'майор'),(6,1,6,'підполковник'),(7,1,4,'капітан'),(8,1,3,'ст.лейтенант'),(9,1,1,'мол.лейтенант'),(10,1,2,'лейтенант'),(11,1,11,'ст.прапорщик');
/*!40000 ALTER TABLE `army_zvanie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country` (
  `co_id` bigint NOT NULL AUTO_INCREMENT,
  `co_name` varchar(40) NOT NULL,
  `co_name_e` varchar(40) NOT NULL,
  PRIMARY KEY (`co_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (1,'Україна','Ukraine'),(2,'Росія','Russia'),(3,'Марокко','Morocco'),(4,'Туніс','Tunisia'),(5,'Іран','Iran'),(6,'Ліван','Lebanon'),(7,'Китай','China'),(8,'Туреччина','Turkey'),(9,'Гана','Ghana'),(10,'Йорданія','Jordan'),(11,'Індія','India'),(12,'Кенія','Kenya'),(13,'Саудівська Аравія','Saudi Arabia'),(14,'Німеччина','Germany'),(15,'Туркменістан','Turkmenistan'),(16,'Молдова','Moldova'),(17,'Уганда','Uganda'),(18,'Арменія','Armenia'),(19,'Бангладеш','Bangladesh'),(20,'Сирія','Syria'),(21,'Азербайджан','Azerbaijan'),(22,'Болівія','Bolivia'),(23,'Маврикій','Mauritius'),(24,'Бахрейн','Bahrain'),(25,'Палестина','Palestine'),(26,'Дагестан','Dagestan'),(27,'Перу','Peru'),(28,'Ефіопія','Ethiopia'),(29,'Камерун','Cameroon'),(30,'В`єтнам','Viet Nam'),(31,'Гвінея','Guinea'),(32,'Ізраїль','Israel'),(33,'Кіпр','Cyprus'),(34,'Таджикистан','Tajikistan'),(35,'Ірак','Iraq'),(36,'Танзанія','Tanzania'),(37,'Конго','Congo'),(38,'Судан','Sudan'),(39,'Афганістан','Afghanistan'),(40,'Єгипет','Egypt'),(41,'Еквадор','Ecuador'),(42,'Алжир','Algeria'),(43,'Греція','Greece'),(44,'Малайзія','Malaysia'),(45,'Нігерія','Nigeria'),(46,'Замбія','Zambia'),(47,'Кот-д`Івуар','Cote d`Ivoire'),(48,'Узбекистан','Uzbekistan'),(49,'США','USA'),(50,'Австрія','Austria'),(51,'Чехія','Czechia'),(52,'Данія','Denmark'),(53,'Киргизистан','Kyrgyzstan'),(54,'Казахстан','Kazakhstan'),(55,'Японія','Japan'),(56,'Об`єднані арабські емірати','OAE'),(57,'Латвія','Latvia'),(58,'Абхазія','Abkhazia'),(60,'Пакистан','Pakistan'),(61,'Бразілія','Brazil'),(62,'Швеція','Sweden'),(63,'Парагвай','Paraguay'),(64,'Лівія','Libya'),(65,'Монголія','Mongolia'),(66,'Болгарія','Bulgaria'),(67,'Корея','Korea'),(68,'Польща','Poland'),(69,'Білорусь','Belarus'),(70,'Естонія','Estonia'),(71,'Бельгія','Belgium'),(72,'Того','Togo'),(73,'Грузія','Georgia'),(74,'Мадагаскар','Madagascar'),(75,'Бурунді','Burundi'),(76,'Австралія','Australia'),(77,'Франція','France'),(78,'Ірландія','Ireland'),(79,'Непал','Nepal'),(80,'Еритрея','Eritrea'),(81,'Ємен','Yemen'),(82,'Особа без громадянства','no country'),(83,'Литва','Lithuania'),(84,'Ангола','Angola'),(85,'Намібія','Namibia'),(86,'Сенегал','Senegal'),(87,'Італія','Italy'),(88,'Велика Британія','Great Britain'),(89,'Сербія','Serbia'),(90,'Ботсвана','Botswana'),(91,'Гамбія','Gambia'),(92,'Мавританія','Mauritania'),(93,'Сомалі','Somalia'),(94,'Словенія','Republika Slovenija'),(95,'Словаччина','Slovakia'),(96,'Малі','Republique du Mali'),(97,'Мексика','Mexico'),(98,'Канада','Canada'),(99,'Катар','Qatar');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doljnost_nakazy`
--

DROP TABLE IF EXISTS `doljnost_nakazy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doljnost_nakazy` (
  `curr_dolj_id` bigint NOT NULL AUTO_INCREMENT,
  `comment_start` varchar(255) DEFAULT NULL,
  `comment_stop` varchar(255) DEFAULT NULL,
  `date_start` date NOT NULL,
  `date_stop` date DEFAULT NULL,
  `nakaz_start` varchar(12) NOT NULL,
  `nakaz_stop` varchar(12) DEFAULT NULL,
  `prepod_id` bigint NOT NULL,
  PRIMARY KEY (`curr_dolj_id`),
  UNIQUE KEY `UK_wg9rym60u92ic1v82c8r52rj` (`prepod_id`),
  CONSTRAINT `FKe00chl6sowjqu9054hob07069` FOREIGN KEY (`prepod_id`) REFERENCES `prepod` (`prepod_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doljnost_nakazy`
--

LOCK TABLES `doljnost_nakazy` WRITE;
/*!40000 ALTER TABLE `doljnost_nakazy` DISABLE KEYS */;
/*!40000 ALTER TABLE `doljnost_nakazy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `education`
--

DROP TABLE IF EXISTS `education`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `education` (
  `edu_id` bigint NOT NULL AUTO_INCREMENT,
  `diploma_numbers` varchar(12) DEFAULT NULL,
  `diploma_qualification` varchar(255) DEFAULT NULL,
  `diploma_series` varchar(3) DEFAULT NULL,
  `diploma_spec` varchar(255) DEFAULT NULL,
  `form_training` varchar(255) DEFAULT NULL,
  `level_training` varchar(255) DEFAULT NULL,
  `year_vypusk` varchar(4) NOT NULL,
  `prepod_id` bigint NOT NULL,
  `vnz_id` bigint NOT NULL,
  PRIMARY KEY (`edu_id`),
  KEY `FKkkj278sq3sivvf1f4g0oms9qw` (`prepod_id`),
  KEY `FKgho6492cjk3uqjip0wu8r2j3y` (`vnz_id`),
  CONSTRAINT `FKgho6492cjk3uqjip0wu8r2j3y` FOREIGN KEY (`vnz_id`) REFERENCES `vnz` (`vnz_id`),
  CONSTRAINT `FKkkj278sq3sivvf1f4g0oms9qw` FOREIGN KEY (`prepod_id`) REFERENCES `prepod` (`prepod_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `education`
--

LOCK TABLES `education` WRITE;
/*!40000 ALTER TABLE `education` DISABLE KEYS */;
/*!40000 ALTER TABLE `education` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `education_after`
--

DROP TABLE IF EXISTS `education_after`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `education_after` (
  `edu_post_id` bigint NOT NULL AUTO_INCREMENT,
  `level_training` varchar(255) DEFAULT NULL,
  `year_end` varchar(4) NOT NULL,
  `prepod_id` bigint NOT NULL,
  `vnz_id` bigint NOT NULL,
  PRIMARY KEY (`edu_post_id`),
  KEY `FKolajvsooj25i4i3qbhq2ydufk` (`prepod_id`),
  KEY `FKb34584cu2s27xt7vdlsl482ga` (`vnz_id`),
  CONSTRAINT `FKb34584cu2s27xt7vdlsl482ga` FOREIGN KEY (`vnz_id`) REFERENCES `vnz` (`vnz_id`),
  CONSTRAINT `FKolajvsooj25i4i3qbhq2ydufk` FOREIGN KEY (`prepod_id`) REFERENCES `prepod` (`prepod_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `education_after`
--

LOCK TABLES `education_after` WRITE;
/*!40000 ALTER TABLE `education_after` DISABLE KEYS */;
/*!40000 ALTER TABLE `education_after` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fakult`
--

DROP TABLE IF EXISTS `fakult`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fakult` (
  `fid` bigint NOT NULL AUTO_INCREMENT,
  `abr` varchar(10) NOT NULL,
  `abr_new` varchar(10) DEFAULT NULL,
  `dekan` varchar(30) DEFAULT NULL,
  `dekan_e` varchar(30) DEFAULT NULL,
  `dekan_old` varchar(30) DEFAULT NULL,
  `dog_otdel` bit(1) DEFAULT NULL,
  `fname` varchar(100) NOT NULL,
  `fname_e` varchar(100) DEFAULT NULL,
  `oid` varchar(255) NOT NULL,
  `ok_yn` bit(1) DEFAULT NULL,
  `position` varchar(30) DEFAULT NULL,
  `position_e` varchar(30) DEFAULT NULL,
  `sm_o` bit(1) DEFAULT NULL,
  `sm_v` bit(1) DEFAULT NULL,
  `spk` varchar(60) DEFAULT NULL,
  `telef` varchar(10) DEFAULT NULL,
  `zaochniy` bit(1) DEFAULT NULL,
  PRIMARY KEY (`fid`),
  UNIQUE KEY `UK_are2v91w52iukvxh4olkobxld` (`abr`),
  UNIQUE KEY `UK_e3g4wwtjad732s0f7sw3tf9sn` (`fname`),
  UNIQUE KEY `UK_sbag97rg7f4j4mfncxjlvhbuw` (`oid`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fakult`
--

LOCK TABLES `fakult` WRITE;
/*!40000 ALTER TABLE `fakult` DISABLE KEYS */;
INSERT INTO `fakult` VALUES (19,'МО',NULL,'Дмитро КУДІЙ','Dmytro KUDII','Д.А. Кудій',NULL,'Навчально-науковий інститут міжнародної освіти',NULL,'270',NULL,'Декан','Dean',_binary '',_binary '',NULL,NULL,NULL),(20,'СГТ',NULL,'Андрій КІПЕНСЬКИЙ','Andrii KIPENSKYI','А.В.Кіпенський',_binary '','Навчально-науковий інститут соціально-гуманітарних технологій','Faculty of social and humanitarian technologies','300',_binary '','Декан','Dean',NULL,NULL,'К.О. Романенко',NULL,_binary '\0'),(21,'КН',NULL,'Михайло ГОДЛЕВСЬКИЙ','Mykhailo HODLEVSKY','М.М. Малько',_binary '','Навчально-науковий інститут комп\'ютерних наук та інформаційних технологій','Faculty of Computer Sciences and Software Engineering','320',_binary '','Декан','Dean',NULL,NULL,'Дмитро Єльчанінов','707-65-11',_binary '\0'),(25,'Е',NULL,'Роман ТОМАШЕВСЬКИЙ','Roman TOMASHEVSKYI','Р.С. Томашевський',_binary '','Навчально-науковий інститут енергетики, електроніки та електромеханіки','Institute of Education and Science in Power Engineering, Electronics and Electromechanics','120',_binary '','Директор','Director',NULL,NULL,'І.С. Варшамова',NULL,_binary '\0'),(26,'МІТ',NULL,'Віталій ЄПІФАНОВ','Vitalii YEPIFANOV','В.В. Єпіфанов',_binary '','Навчально-науковий інститут механічної інженерії і транспорту','Institute of Education and Science in Mechanical Engineering and Transport','140',_binary '','Директор','Director',NULL,NULL,'Д.В. Сівих',NULL,_binary '\0'),(27,'ІКМ',NULL,'Олексій ЛАРІН','Oleksiy LARIN','О.О. Ларін',_binary '','Навчально-науковий інститут комп\'ютерного моделювання, прикладної фізики та математики','Institute of Education and Science in Engineering and Physics','160',_binary '','Директор','Director',NULL,NULL,'В.О. Мєтєльов',NULL,_binary '\0'),(28,'ХТ',NULL,'Ігор РИЩЕНКО','Igor RYSHCHENKO','І.М. Рищенко',_binary '','Навчально-науковий інститут хімічних технологій та інженерії','Institute of Education and Science in Chemical Technologies and Engineering','180',_binary '','Директор','Director',NULL,NULL,'І.В. Сенкевич',NULL,_binary '\0'),(29,'БЕМ','ННІ ЕМББ','Наталія КРАСНОКУТСЬКА','Nataliia KRASNOKUTSKA','О.В. Манойленко',_binary '','Навчально-науковий інститут економіки, менеджменту і міжнародного бізнесу','Institute of Education and Science in Economics, Management and International Business','200',_binary '','Директор','Director',NULL,NULL,'Д.Ю. Крамськой',NULL,_binary '\0'),(33,'ІНШІ',NULL,NULL,NULL,NULL,_binary '\0','Підрозділи забезпечення',NULL,'1',_binary '\0',NULL,NULL,NULL,NULL,NULL,NULL,_binary '\0'),(52,'МЕД',NULL,'Богдан ФЕДАК',NULL,NULL,NULL,'Навчально-науковий медичний інститут',NULL,'240',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `fakult` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `family_member`
--

DROP TABLE IF EXISTS `family_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `family_member` (
  `fmemeber_id` bigint NOT NULL AUTO_INCREMENT,
  `mem_fam` varchar(40) DEFAULT NULL,
  `mem_imya` varchar(30) DEFAULT NULL,
  `mem_otch` varchar(30) DEFAULT NULL,
  `rik_narodz` varchar(4) DEFAULT NULL,
  `vid_ridstva` varchar(10) NOT NULL,
  `prepod_id` bigint NOT NULL,
  PRIMARY KEY (`fmemeber_id`),
  KEY `FKhjsrvbki4d3n5wcg8pm4sl8nf` (`prepod_id`),
  CONSTRAINT `FKhjsrvbki4d3n5wcg8pm4sl8nf` FOREIGN KEY (`prepod_id`) REFERENCES `prepod` (`prepod_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `family_member`
--

LOCK TABLES `family_member` WRITE;
/*!40000 ALTER TABLE `family_member` DISABLE KEYS */;
/*!40000 ALTER TABLE `family_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kafedra`
--

DROP TABLE IF EXISTS `kafedra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kafedra` (
  `kid` bigint NOT NULL AUTO_INCREMENT,
  `kabr` varchar(10) NOT NULL,
  `kname` varchar(100) NOT NULL,
  `oidkafedra` varchar(255) NOT NULL,
  `telef` varchar(30) DEFAULT NULL,
  `vipusk` bit(1) DEFAULT NULL,
  `work_telef` varchar(30) DEFAULT NULL,
  `worker` varchar(100) DEFAULT NULL,
  `zagal` bit(1) DEFAULT NULL,
  `zavkaf` varchar(40) DEFAULT NULL,
  `fid` bigint NOT NULL,
  PRIMARY KEY (`kid`),
  UNIQUE KEY `UK_nrbeaws1rjykc3py34ce7fbck` (`kabr`),
  UNIQUE KEY `UK_rxk217ulnrlxhmeh3t6aglrmb` (`kname`),
  UNIQUE KEY `UK_5dn06mec6ygfbvx6ym4g35gv3` (`oidkafedra`),
  KEY `FKpiqf0u5ps21qrmogwcggc3ico` (`fid`),
  CONSTRAINT `FKpiqf0u5ps21qrmogwcggc3ico` FOREIGN KEY (`fid`) REFERENCES `fakult` (`fid`)
) ENGINE=InnoDB AUTO_INCREMENT=344 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kafedra`
--

LOCK TABLES `kafedra` WRITE;
/*!40000 ALTER TABLE `kafedra` DISABLE KEYS */;
INSERT INTO `kafedra` VALUES (2,'ЛВ','Ливарне виробництво','142',NULL,_binary '','7076854','Берлизева Т.В.',NULL,'ОлегАКІМОВ',26),(3,'М','Матеріалознавство','143',NULL,_binary '','----------','----------',NULL,'Валерія СУББОТІНА',26),(4,'ГМКГ','Геометричне моделювання та комп\'ютерна графіка','163',NULL,_binary '','7076431','Демочко П.М.',NULL,'Ольга ШОМАН',27),(5,'БПНС','Безпека праці і навколишнього середовища','144',NULL,_binary '','7076330','Шпак І.С.',NULL,'Вячеслав БЕРЕЗУЦЬКИЙ',26),(6,'ТММВ','Технологія машинобудування та металорізальні верстати','146',NULL,_binary '','7076625','Яковенко Е.В.',NULL,'Олександр ПЕРМЯКОВ',26),(7,'ІТМ','Інтегровані технології машинобудування ім. М.Ф.Семка','147',NULL,_binary '','7076143','Шмойлова А.В.',NULL,'Олександр ШЕЛКОВИЙ',26),(8,'ПТМО','Підйомно-транспортні машини і обладнання','149',NULL,_binary '','7076581','Губский С.А.',NULL,'Валентин КОВАЛЕНКО',26),(10,'ДМГ','Деталі машин та гідропневмосистеми','148',NULL,_binary '','7076298','Бутова Е.Я.',NULL,'Анатолiй ГАЙДАМАКА',26),(11,'ТСАПММ','Теорія і системи автоматизованого проектування механізмів і машин','151',NULL,_binary '','----------','----------',NULL,'Микола ТКАЧУК',26),(12,'ТБ','Турбінобудування','122','707-63-11',_binary '','7076814','Беспалова О.В.',NULL,'Олександр УСАТИЙ',25),(13,'ПБ','Парогенераторобудування','121',NULL,_binary '','7076763','Згуровская Я.К.',NULL,'Олександр ЄФІМОВ',25),(14,'ТЕТ','Теплотехніка та енергоефективні технології','123',NULL,_binary '','7076923','Гордієнко Е.П.',NULL,'Антон ГАНЖА',25),(15,'ГМ','Гідравлічні машини ім.Г.Ф.Проскури','150',NULL,_binary '','7076646','Коваль Е.С.',NULL,'Андрій РОГОВИЙ',26),(16,'АТ','Автомобіле- і тракторобудування','152',NULL,_binary '','7076464','Кожушко А.П.',NULL,'Вадим САМОРОДОВ',26),(17,'ДГЕУ','Двигуни та гібридні енергетичні установки','124',NULL,_binary '','----------','----------',NULL,'Володимир ПИЛЬОВ',25),(18,'ЕТТ','Електричний транспорт та тепловозобудування','125',NULL,_binary '','7076530','Чуйко Т.В.',NULL,'Борис ЛЮБАРСЬКИЙ',25),(19,'ІТСКГС','Інформаційні технології і системи колісних та гусеничних систем ім. О.О.Морозова','153',NULL,_binary '','7076355','Воронцов С.Н.',NULL,'Дмитро ВОЛОНЦЕВИЧ',26),(20,'ВМ','Вища математика','155',NULL,NULL,'7076693','Чікіна Н.А.',_binary '','Юрій ГЕВОРКЯН',26),(21,'КМІТ','Комп\'ютерне моделювання та інтегровані технології обробки тиском','141',NULL,_binary '','7076040','Кутецкій Я.В.',NULL,'Віталій ЧУХЛІБ',26),(23,'ЕБМЕВ','Економіка бізнесу і міжнародних економічних відносин','202',NULL,_binary '','7076497','Ільченко Н.Г.',NULL,'Петро ПЕРЕРВА',29),(24,'ЗЕТ','Загальна економічна теорія','208',NULL,_binary '','7076949','Шматко Р.Н.',NULL,'Наталя РЕШЕТНЯК',29),(25,'СП','Соціологія і публічне управління','305',NULL,_binary '','7076836','Кошелева В.Н.',NULL,'Володимир МОРОЗ',20),(26,'Маркетинг','Маркетинг','201',NULL,_binary '','----------','----------',NULL,'Діана РАЙКО',29),(27,'ТГРБ','Туризм і готельно-ресторанний бізнес','203',NULL,_binary '','7076274','Колонтаєвская В.П.',NULL,'Наталія ЯКИМЕНКО-ТЕРЕЩЕНКО',29),(28,'ГН','Гуманітарних наук','272',NULL,_binary '',NULL,NULL,_binary '','Надія СЕВЕРИН',19),(29,'ММІ','Математичне моделювання та інтелектуальні обчислення в інженерії','161',NULL,_binary '','7076879','Радіонова С.В.',NULL,'Олексій ВОДКА',27),(30,'ПІІТУ','Програмна інженерія та інтелектуальні технології управління ім. А.В. ДАБАГЯНА','321',NULL,_binary '','0982272855','Бородіна І.А.',NULL,'Ігор ГАМАЮН',21),(31,'САІТ','Системний аналіз та інформаційно-аналітичні технології','322',NULL,_binary '','7076038','Малько М.М.',NULL,'Олександр КУЦЕНКО',21),(32,'КМПС','Комп\'ютерне моделювання процесів та систем','162',NULL,_binary '','7076454','Карпик А.А.',NULL,'Дмитро БРЕСЛАВСЬКИЙ',27),(35,'ПМ','Прикладна математика','170',NULL,NULL,'7076032','Бездетко Е.О.',_binary '','Лідія КУРПА',27),(36,'ТМОМ','Теоретична механіка та опір матеріалів','166',NULL,_binary '','7076867','Кравцова Н.В.',_binary '','Валерій ХАВІН',27),(37,'ФВ','Фізичне виховання','302',NULL,_binary '','7041398','Зінченко Л.В.',NULL,'Олексій ЮШКО',20),(38,'ФМН','Фізика металів та напівпровідників','165',NULL,_binary '','7076264','Мітрофанова Е.А.',NULL,'Сергій МАЛИХІН',27),(39,'ІЕ','Інженерна електрофізика','135',NULL,_binary '','7076052','Веселова Н.В.',NULL,'Олег РЕЗИНКІН',25),(40,'ТК','Технічна кріофізика','134',NULL,_binary '','7076730','Черевик М.Г.',NULL,'Вадим СТАРИКОВ',25),(41,'Ф','Фізика','168',NULL,_binary '','7076347','Кривонос С.С.',NULL,'Олена ЛЮБЧЕНКО',27),(43,'МН','Мікро- та наноелектроніка','167',NULL,_binary '','----------','----------',NULL,'Роман ЗАЙЦЕВ',27),(44,'ЕМ','Електричні машини','126',NULL,_binary '','----------','----------',NULL,'Володимир МІЛИХ',25),(45,'ЕА','Електричні апарати','127',NULL,_binary '','7076864','Третяк Л.В.',NULL,'Євген БАЙДА',25),(46,'ПБМЕ','Промислова і бiомедична електронiка','128',NULL,_binary '','7076044','----------',NULL,'Сергій КРИВОШЕЄВ',25),(47,'ЗЕ','Загальна електротехніка','136',NULL,NULL,'----------','----------',_binary '','Костянтин КОРИТЧЕНКО',25),(48,'АЕС','Автоматизовані електромеханічні системи','129',NULL,_binary '','7076326','Кунченко Т.С.',NULL,'Володимир КЛЕПІКОВ',25),(49,'КРСКД','Комп’ютерні та радіоелектронні системи контролю та діагностики','171',NULL,_binary '','7076380','Мінєєва Є.Ю.',NULL,'Юрій ХОМЯК',27),(50,'АУТС','Автоматики та управління в технічних системах','172',NULL,_binary '','7076024','Караман Д.Г.',NULL,'Андрій ЗУЄВ',27),(51,'КІП','Комп’ютерна інженерія та програмування','326',NULL,_binary '','7076165','Октябрьова О.В.',NULL,'Олександр ЗАКОВОРОТНИЙ',21),(52,'ІВТС','Інформаційно-вимірювальні технології і системи','173',NULL,_binary '','7076015','Слуцкая В.В.',NULL,'Сергій КОНДРАШОВ',27),(53,'ТОЕ','Теоретичні основи електротехніки','137',NULL,NULL,'7076961','Светічная Е.Е.',_binary '','Марина РЕЗИНКІНА',25),(54,'КМАД','Комп\'ютерна математика і аналіз даних','324',NULL,_binary '','7076351','Плиско Ю.Є.',NULL,'Леонід ЛЮБЧИК',21),(55,'СІ','Системи інформації ім. В.О. Кравця','169',NULL,_binary '','7076036','Курсін А.І.',NULL,'Павло ПУСТОВОЙТОВ',27),(56,'ЕС','Електричні станції','130',NULL,_binary '','7076565','Махотило Е.С.',NULL,'Олександр ЛАЗУРЕНКО',25),(57,'ПЕЕ','Передача електроенергії','131',NULL,_binary '','7076246','Карпенко А.П.',NULL,'Сергій ШЕВЧЕНКО',25),(58,'ЕКТ','Електроізоляційна та кабельна техніка','133',NULL,_binary '','----------','----------',NULL,'Анатолій ГУРИН',25),(59,'ІМ','Іноземна мова','275',NULL,NULL,'7076432','Ковтун Е.А.',_binary '','Тетяна ГОНЧАРЕНКО',19),(60,'ХТНРКЕ','Хімічна технологія неорганічних речовин, каталізу та екології','181',NULL,_binary '','7076745','Дейнека Д.Н.',NULL,'Валентин КАЗАКОВ',28),(61,'ТЕ','Технічна електрохімія','182',NULL,_binary '','----------','----------',NULL,'Геннадій ТУЛЬСЬКИЙ',28),(62,'ВНГК','Видобування нафти, газу та конденсату','189',NULL,_binary '','7076515','Яцкевич О.О.',NULL,'Ілля ФИК',28),(63,'ЗНХ','Загальна та неорганічна хімія','192',NULL,NULL,'7076832','Гущін О.Е.',_binary '','Віктор БУЛАВІН',28),(64,'ОСФТ','Органічний синтез та фармацевтичні технології','184',NULL,_binary '','----------','----------',NULL,'Валерія АНАН`ЄВА',28),(65,'ТЖПБ','Технологія жирів і продуктів бродіння','186',NULL,_binary '','0973241684','Березка Т.А.',NULL,'Павло НЕКРАСОВ',28),(67,'ОХБЛМП','Органічна хімія, біохімія, лакофарбові матеріали та покриття','193',NULL,_binary '','7076068','Корягін А.Г.',NULL,'Олександр ЦИГАНКОВ',28),(68,'ББАХ','Бiотехнологїя, біофізика та аналiтична хiмiя','188',NULL,_binary '','7076282','Звягінцева О.В.',NULL,'Ольга БЛИЗНЮК',28),(69,'ФХ','Фізична хімія','194',NULL,_binary '','----------','----------',NULL,'Микола САХНЕНКО',28),(70,'ТПНГТВ','Технологія переробки нафти, газу і твердого палива','187',NULL,_binary '','7076192','Сенкевич І.В.',NULL,'Денис МІРОШНИЧЕНКО',28),(71,'АТСЕМ','Автоматизація технологічних систем та екологічного моніторингу','174',NULL,_binary '','7076676','Пугановская А.М.',NULL,'Михайло ПОДУСТОВ',27),(72,'ХТПЕ','Хімічна техніка та промислова екологія','154',NULL,_binary '','7076155','Бобир Н.А.',NULL,'Олексій ШЕСТОПАЛОВ',26),(73,'ТПМБАП','Технологія пластичних мас і біологічно активних полімерів','190',NULL,_binary '','7076186','Корягіна Н.А.',NULL,'Вячеслав АВРАМЕНКО',28),(74,'ОФ','Облік і фінанси','205','707-61-62, 707-61-61',_binary '','7076668','Кубрак М.А.',NULL,'Олександр МАНОЙЛЕНКО',29),(75,'УКІН','Українознавство, культурологія та історія науки','310',NULL,NULL,'7076503','Федорова Є.А.',_binary '','Володимир СКЛЯР',20),(76,'ІКС','Інтелектуальні комп\'ютерні системи ','304',NULL,_binary '','7076460','Шелудько Л.В.',NULL,'Наталія ШАРОНОВА',20),(78,'ФС','Філософія','307',NULL,_binary '','7076020','Каріжская В.В.',NULL,'Яков ТАРАРОЄВ',20),(80,'П','Право','306',NULL,NULL,'7076209','Софоклова О.В.',_binary '','Людмила ПЕРЕВАЛОВА',20),(81,'ТКВСЕ','Технологія кераміки, вогнетривів, скла та емалей','183',NULL,_binary '','7076051','Шабанова Г.Н.',NULL,'Ярослав ПІТАК',28),(82,'АКЕ','Автоматизація та кібербезпека енергосистем','132','707-65-51, 707-60-71',_binary '','0679007648','Бортніков А.В.',NULL,'Олег ГРИБ',25),(83,'ЗВ','Зварювання','145','707-65-21',_binary '','----------','----------',NULL,'Віталій ДМИТРИК',26),(84,'Менеджмент','Менеджмент','204','707-62-22, 707-65-39',_binary '','7076539','Кійко Д.В.',NULL,'Олена ПРОХОРЕНКО',29),(85,'ПТЛ','Підприємництво, торгівля і логістика','206',NULL,_binary '','7076045','Соснов І.Г.',NULL,'Євген ШАПРАН',29),(90,'ДІМП','Ділова іноземна мова та переклад','303',NULL,_binary '','7076062','Тіхонравов А.Л.',NULL,'Антоніна БАДАН',20),(91,'Р','Радіоелектроніка','164',NULL,_binary '','----------','----------',NULL,'Євген РОГОЖКІН',27),(113,'ППУСС','Педагогіка та психологія управління соціальними системами ім.акад. І.А.Зязюна','301',NULL,_binary '','7076490','Шахова Г.А.',NULL,'Олександр РОМАНОВСЬКИЙ',20),(133,'УРМПЛ','Українська мова','273',NULL,_binary '','7041622','Дяченко Е.В.',_binary '','Світлана Чернявська',19),(153,'СУ','Стратегічне управління','323',NULL,_binary '','7076824','Мошко Є.А.',NULL,'Марина ГРИНЧЕНКО',21),(194,'ІІВ','Інформаційна та інтелектуальна власність','330',NULL,NULL,NULL,NULL,NULL,NULL,21),(195,'ПН','Природничих наук','271',NULL,_binary '',NULL,NULL,_binary '',NULL,19),(213,'МКІМ','Міжкультурна комунікація та іноземна мова','276',NULL,_binary '','7076970','Буданова Є.Б.',NULL,'Тетяна СЕРГЕЄВА',19),(253,'МБВМ','Мікробіології, бактеріології, вірусології та мікології','253',NULL,NULL,NULL,NULL,NULL,'Олена ШАРМАЗАНОВА',52),(254,'ОТ','Ортопедії та травматології','254',NULL,NULL,NULL,NULL,NULL,'Олена ШАРМАЗАНОВА',52),(255,'МНСАІТ','Медицини невідкладних станів, анестезіології та інтевсивної терапії','255',NULL,NULL,NULL,NULL,NULL,'Олена ШАРМАЗАНОВА',52),(256,'С','Стоматології','256',NULL,NULL,NULL,NULL,NULL,'Олена ШАРМАЗАНОВА',52),(274,'ІТПА','Інтегровані технології, процеси і апарати','191',NULL,_binary '','7076894','Артюшенко Е.В.',NULL,'Валерій ВЕДЬ',28),(275,'МІТС','Мультимедійні та інтернет технології і системи','327',NULL,_binary '','7076997','Корольова Я.Ю.',NULL,'Сергій ПОРОШИН',21),(277,'ЗФ','Загальної фармації','241',NULL,NULL,NULL,NULL,NULL,NULL,52),(279,'КЛДІ','Клінічної лабораторної діагностики та імунології','243',NULL,NULL,NULL,NULL,NULL,NULL,52),(280,'ВХСМ','Внутрішніх хвороб і сімейної медицини','245',NULL,NULL,NULL,NULL,NULL,NULL,52),(281,'ОУОЗСМ','Організації та управління охороною здоров\'я і соціальної медицини','244',NULL,NULL,NULL,NULL,NULL,NULL,52),(282,'НР','Неврології та рефлексотерапії','247',NULL,NULL,NULL,NULL,NULL,NULL,52),(283,'ФРМФК','Фізичної реабілітаціїйної медицини, фізіотерапії і курортології','248',NULL,NULL,NULL,NULL,NULL,NULL,52),(284,'Р-логія','Радіології','249',NULL,NULL,NULL,NULL,NULL,'Олена ШАРМАЗАНОВА',52),(285,'ХНТА','Хірургії, нормальної та топографічної анатомії','250',NULL,NULL,NULL,NULL,NULL,NULL,52),(286,'ПАПКП','Кафедра психіат, аддиктол., психотер. та клін.псих','251',NULL,NULL,NULL,NULL,NULL,NULL,52),(287,'КБ','Кібербезпека','328',NULL,_binary '',NULL,NULL,NULL,'Сергій ЄВСЄЄВ',21),(288,'ІСТ','Інформаційні системи та технології','329',NULL,_binary '',NULL,NULL,NULL,NULL,21),(333,'ЕТВ','Експлуатаційно-технічний відділ','333',NULL,NULL,NULL,NULL,NULL,NULL,33),(343,'НавчЦ','Навчальний центр','343',NULL,NULL,NULL,NULL,NULL,NULL,33);
/*!40000 ALTER TABLE `kafedra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `military_person`
--

DROP TABLE IF EXISTS `military_person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `military_person` (
  `mp_id` bigint NOT NULL AUTO_INCREMENT,
  `edication_level` varchar(255) DEFAULT NULL,
  `fam_stan` varchar(255) DEFAULT NULL,
  `reserv` varchar(255) DEFAULT NULL,
  `categoria_obliky` int DEFAULT NULL,
  `grupa_obliky` varchar(255) DEFAULT NULL,
  `v_prydatnist` varchar(255) DEFAULT NULL,
  `vos` varchar(6) NOT NULL,
  `prepod_id` bigint NOT NULL,
  `vsklad_obliky_id` bigint DEFAULT NULL,
  `v_zvanie_id` bigint DEFAULT NULL,
  `voenkomat_id` bigint NOT NULL,
  PRIMARY KEY (`mp_id`),
  UNIQUE KEY `UK_8rpku9f04pk3fs7dl2wmhfo18` (`prepod_id`),
  KEY `FKpv5x9fge8tkjyi0u3f961dxxt` (`vsklad_obliky_id`),
  KEY `FKehu0a22a3pqs5376kc76ny57u` (`v_zvanie_id`),
  KEY `FKogvjrjf7hovpq51nj6yuth6xf` (`voenkomat_id`),
  CONSTRAINT `FKehu0a22a3pqs5376kc76ny57u` FOREIGN KEY (`v_zvanie_id`) REFERENCES `army_zvanie` (`army_zvanie_id`),
  CONSTRAINT `FKg0ys5xbrgpqe0kd5rn8kyjlg8` FOREIGN KEY (`prepod_id`) REFERENCES `prepod` (`prepod_id`),
  CONSTRAINT `FKogvjrjf7hovpq51nj6yuth6xf` FOREIGN KEY (`voenkomat_id`) REFERENCES `voenkomat` (`voenkamat_id`),
  CONSTRAINT `FKpv5x9fge8tkjyi0u3f961dxxt` FOREIGN KEY (`vsklad_obliky_id`) REFERENCES `army_sklad` (`army_sklad_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `military_person`
--

LOCK TABLES `military_person` WRITE;
/*!40000 ALTER TABLE `military_person` DISABLE KEYS */;
/*!40000 ALTER TABLE `military_person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `obl_u`
--

DROP TABLE IF EXISTS `obl_u`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `obl_u` (
  `obl` bigint NOT NULL AUTO_INCREMENT,
  `oname` varchar(40) NOT NULL,
  PRIMARY KEY (`obl`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `obl_u`
--

LOCK TABLES `obl_u` WRITE;
/*!40000 ALTER TABLE `obl_u` DISABLE KEYS */;
INSERT INTO `obl_u` VALUES (1,'Запорізька'),(2,'Харківська'),(3,'Луганська'),(4,'Київська'),(5,'Сумська'),(6,'Львівська'),(7,'Херсонська'),(8,'Донецька'),(9,'Полтавська'),(10,'Вінницька'),(11,'Волинська'),(12,'Дніпропетровська'),(13,'Івано-Франківська'),(14,'Кіровоградська'),(15,'Тернопільська'),(16,'Черкаська'),(17,'Чернігівська'),(18,'Чернівецька'),(19,'Миколаївська'),(20,'Одеська'),(21,'Закарпатська'),(22,'Житомирська'),(23,'Автономна республіка  Крим'),(24,'Рівненська'),(25,'Хмельницька'),(32,'Харків'),(33,'Київ'),(34,'Севастополь');
/*!40000 ALTER TABLE `obl_u` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pasports`
--

DROP TABLE IF EXISTS `pasports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pasports` (
  `pdata_id` bigint NOT NULL AUTO_INCREMENT,
  `data_vyd` date NOT NULL,
  `doc_number` varchar(10) NOT NULL,
  `doc_type` varchar(30) NOT NULL,
  `kto_vyd` varchar(255) NOT NULL,
  `prepod_id` bigint NOT NULL,
  PRIMARY KEY (`pdata_id`),
  UNIQUE KEY `UK_1jepcnqgjaqnfc3olbuaam1op` (`doc_number`),
  KEY `FKjv2hh7yw3vj31mmxxtolc3bf3` (`prepod_id`),
  CONSTRAINT `FKjv2hh7yw3vj31mmxxtolc3bf3` FOREIGN KEY (`prepod_id`) REFERENCES `prepod` (`prepod_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pasports`
--

LOCK TABLES `pasports` WRITE;
/*!40000 ALTER TABLE `pasports` DISABLE KEYS */;
/*!40000 ALTER TABLE `pasports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person_data`
--

DROP TABLE IF EXISTS `person_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `person_data` (
  `pdata_id` bigint NOT NULL AUTO_INCREMENT,
  `city_name` varchar(30) NOT NULL,
  `city_name_fact` varchar(30) DEFAULT NULL,
  `post_index_fact` varchar(10) DEFAULT NULL,
  `adress_fact` varchar(255) DEFAULT NULL,
  `phone_dop` varchar(13) DEFAULT NULL,
  `phone_main` varchar(13) NOT NULL,
  `post_index` varchar(10) DEFAULT NULL,
  `adress` varchar(255) NOT NULL,
  `country_id` bigint NOT NULL,
  `oblast_id_fact` bigint DEFAULT NULL,
  `region_kh_id_fact` bigint DEFAULT NULL,
  `country_id_fact` bigint DEFAULT NULL,
  `oblast_id` bigint DEFAULT NULL,
  `prepod_id` bigint NOT NULL,
  `region_kh_id` bigint DEFAULT NULL,
  PRIMARY KEY (`pdata_id`),
  UNIQUE KEY `UK_oyp1phv430o9uwtn6bah1km7f` (`prepod_id`),
  KEY `FK6ehm67pfgvjkwu1k7q9cke4cv` (`country_id`),
  KEY `FKlqy8g57hmpqfuw3syjxckkp87` (`oblast_id_fact`),
  KEY `FKae0kg2ga9lgvu8c19bgo2fagt` (`region_kh_id_fact`),
  KEY `FKo01srdsf4qtf8ym4tngcqehl6` (`country_id_fact`),
  KEY `FKkrydrtdjv44kr5t7xhg29f5c9` (`oblast_id`),
  KEY `FK6i6od7rj39c7oun51ko0o8b9q` (`region_kh_id`),
  CONSTRAINT `FK6ehm67pfgvjkwu1k7q9cke4cv` FOREIGN KEY (`country_id`) REFERENCES `country` (`co_id`),
  CONSTRAINT `FK6i6od7rj39c7oun51ko0o8b9q` FOREIGN KEY (`region_kh_id`) REFERENCES `rn_kharkov` (`rn_id`),
  CONSTRAINT `FKae0kg2ga9lgvu8c19bgo2fagt` FOREIGN KEY (`region_kh_id_fact`) REFERENCES `rn_kharkov` (`rn_id`),
  CONSTRAINT `FKg05l5pfomesevvhp5dm2nvf62` FOREIGN KEY (`prepod_id`) REFERENCES `prepod` (`prepod_id`),
  CONSTRAINT `FKkrydrtdjv44kr5t7xhg29f5c9` FOREIGN KEY (`oblast_id`) REFERENCES `obl_u` (`obl`),
  CONSTRAINT `FKlqy8g57hmpqfuw3syjxckkp87` FOREIGN KEY (`oblast_id_fact`) REFERENCES `obl_u` (`obl`),
  CONSTRAINT `FKo01srdsf4qtf8ym4tngcqehl6` FOREIGN KEY (`country_id_fact`) REFERENCES `country` (`co_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person_data`
--

LOCK TABLES `person_data` WRITE;
/*!40000 ALTER TABLE `person_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `person_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prepod`
--

DROP TABLE IF EXISTS `prepod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prepod` (
  `prepod_id` bigint NOT NULL AUTO_INCREMENT,
  `data_rozd` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `fam` varchar(40) NOT NULL,
  `imya` varchar(30) NOT NULL,
  `otch` varchar(30) NOT NULL,
  `dolghn_id` bigint NOT NULL,
  `kid` bigint NOT NULL,
  `stepen_id` bigint DEFAULT NULL,
  `zvanie_id` bigint DEFAULT NULL,
  PRIMARY KEY (`prepod_id`),
  UNIQUE KEY `UKookppinr5xx1v2pta25gafuci` (`fam`,`imya`,`otch`,`kid`),
  KEY `FKrlegwut4h50lpfp03t5u1dxm7` (`dolghn_id`),
  KEY `FKt1op1c3p730an1lwteanbwe5y` (`kid`),
  KEY `FK18ue0in2wf9t6fqy5mxjcp3hi` (`zvanie_id`),
  KEY `FK3o81djr0cwugj5ooij66vxp2e` (`stepen_id`),
  CONSTRAINT `FK18ue0in2wf9t6fqy5mxjcp3hi` FOREIGN KEY (`zvanie_id`) REFERENCES `prepod_zvanie` (`zvanie_id`),
  CONSTRAINT `FK3o81djr0cwugj5ooij66vxp2e` FOREIGN KEY (`stepen_id`) REFERENCES `prepod_stepen` (`stepen_id`),
  CONSTRAINT `FKrlegwut4h50lpfp03t5u1dxm7` FOREIGN KEY (`dolghn_id`) REFERENCES `prepod_dolghnost` (`dolghn_id`),
  CONSTRAINT `FKt1op1c3p730an1lwteanbwe5y` FOREIGN KEY (`kid`) REFERENCES `kafedra` (`kid`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prepod`
--

LOCK TABLES `prepod` WRITE;
/*!40000 ALTER TABLE `prepod` DISABLE KEYS */;
/*!40000 ALTER TABLE `prepod` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prepod_dolghnost`
--

DROP TABLE IF EXISTS `prepod_dolghnost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prepod_dolghnost` (
  `dolghn_id` bigint NOT NULL AUTO_INCREMENT,
  `kat_sotr` int DEFAULT '1',
  `dolghn_name` varchar(40) NOT NULL,
  `dolghn_shot_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`dolghn_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prepod_dolghnost`
--

LOCK TABLES `prepod_dolghnost` WRITE;
/*!40000 ALTER TABLE `prepod_dolghnost` DISABLE KEYS */;
INSERT INTO `prepod_dolghnost` VALUES (1,1,'асистент','ас.'),(2,1,'старший викладач','ст.викл.'),(3,1,'доцент','доц.'),(4,1,'професор','проф.'),(5,1,'завідувач кафедри','зав.каф.'),(6,1,'викладач','викл.'),(7,1,'старший науковий співробітник','с.н.с.'),(8,1,'молодший науковий співробітник','м.н.с.'),(9,2,'інженер','інж.'),(10,2,'інженер 1 категорії','інж. 1 кат.'),(11,2,'інженер 2 категорії','інж. 2 кат.'),(12,1,'завідувач НДВ навчального центру','ЗНДВ НЦ'),(13,2,'завідувач навчальної лабораторії','зав. навч. лаб.'),(14,2,'слюсар-сантехнік','слюс.-сант.'),(15,1,'завідувач НДВ','ЗНДВ'),(16,2,'слюсар-сантехнік 3 розряду','слюс.-сант. 3 р.'),(17,1,'провідний науковий співробітник','п.н.с.'),(9999,0,'не визначена','не визначена');
/*!40000 ALTER TABLE `prepod_dolghnost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prepod_stepen`
--

DROP TABLE IF EXISTS `prepod_stepen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prepod_stepen` (
  `stepen_id` bigint NOT NULL AUTO_INCREMENT,
  `okp_id_nstep` int DEFAULT NULL,
  `stepen_long` varchar(80) NOT NULL,
  `stepen_name` varchar(40) NOT NULL,
  PRIMARY KEY (`stepen_id`),
  UNIQUE KEY `UK_kc3m20q3qe651i5thpodid0b9` (`stepen_long`),
  UNIQUE KEY `UK_nx5rg7x4amawlrgn21bs2e0ag` (`stepen_name`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prepod_stepen`
--

LOCK TABLES `prepod_stepen` WRITE;
/*!40000 ALTER TABLE `prepod_stepen` DISABLE KEYS */;
INSERT INTO `prepod_stepen` VALUES (1,NULL,'не має','не має'),(17,NULL,'канд. техніч. наук','канд. техніч. наук'),(18,NULL,'канд. економ. наук','канд. економ. наук'),(19,NULL,'канд. істор. наук','канд. істор. наук'),(20,NULL,'канд. фіз-матем. наук','канд. фіз-матем. наук'),(21,NULL,'канд. психол. наук','канд. психол. наук'),(22,NULL,'канд. філос. наук','канд. філос. наук'),(23,NULL,'канд. мед. наук','канд. мед. наук'),(24,NULL,'канд. філолог. наук','канд. філолог. наук'),(25,NULL,'канд. педагогіч. наук','канд. педагогіч. наук'),(26,NULL,'канд. хіміч. наук','канд. хіміч. наук'),(27,NULL,'канд. біолог. наук','канд. біолог. наук'),(28,NULL,'канд. соціол. наук','канд. соціол. наук'),(30,NULL,'канд.географ.наук','канд.географ.наук'),(31,NULL,'канд.військ.наук','канд.військ.наук'),(32,NULL,'канд.мистецтвознавства','канд.мистецтвознавства'),(33,NULL,'доктор техніч. наук','доктор техніч. наук'),(34,NULL,'доктор історичних наук','доктор історичних наук'),(35,NULL,'доктор філос. наук','доктор філос. наук'),(36,NULL,'доктор хімічних наук','доктор хімічних наук'),(37,NULL,'доктор соціол. наук','доктор соціол. наук'),(38,NULL,'доктор медичних наук','доктор медичних наук'),(39,NULL,'доктор фіз.-матем. наук','доктор фіз.-матем. наук'),(40,NULL,'доктор економ. наук','доктор економ. наук'),(41,NULL,'доктор педагог. наук','доктор педагог. наук'),(42,NULL,'доктор біолог.наук','доктор біолог.наук'),(43,NULL,'доктор мистецтвознавства','доктор мистецтвознавства'),(44,NULL,'канд. наук з державного упр.','канд. наук з державного упр.'),(45,NULL,'доктор фармацевтич. наук','доктор фармацевтич. наук'),(46,NULL,'доктор психолог. наук','доктор психолог. наук'),(47,NULL,'канд. юридичних наук','канд. юридичних наук'),(48,NULL,'канд. сільськогосп. наук','канд. сільськогосп. наук'),(49,NULL,'доктор філолог. наук','доктор філолог. наук'),(50,NULL,'канд. геолого-мінерал. наук','канд. геолого-мінерал. наук'),(51,NULL,'доктор юридичних наук','доктор юридичних наук'),(52,NULL,'доктор наук з держ. управління','доктор наук з держ. управління'),(53,NULL,'доктор наук із соціальн.комунік.','доктор наук із соціальн.комунік.'),(54,NULL,'канд.політич.н.','канд.політич.н.'),(55,NULL,'доктор геологічних наук','доктор геологічних наук'),(56,NULL,'канд. наук з державного управління','канд. наук з державного управління'),(58,NULL,'доктор геолого-мінералогічних наук','доктор геолого-мінералогічних наук'),(59,NULL,'доктор психологічних наук','доктор психологічних наук'),(60,NULL,'канд. фармацевтич. наук','канд. фармацевтич. наук');
/*!40000 ALTER TABLE `prepod_stepen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prepod_zvanie`
--

DROP TABLE IF EXISTS `prepod_zvanie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prepod_zvanie` (
  `zvanie_id` bigint NOT NULL AUTO_INCREMENT,
  `okp_id_uzvan` int NOT NULL,
  `zvanie_name` varchar(40) NOT NULL,
  PRIMARY KEY (`zvanie_id`),
  UNIQUE KEY `UK_k9kuor8n8itnekgsxqrdqm2mj` (`okp_id_uzvan`),
  UNIQUE KEY `UK_c3lg6rsipt2r06e5cuh7axwdm` (`zvanie_name`)
) ENGINE=InnoDB AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prepod_zvanie`
--

LOCK TABLES `prepod_zvanie` WRITE;
/*!40000 ALTER TABLE `prepod_zvanie` DISABLE KEYS */;
INSERT INTO `prepod_zvanie` VALUES (1,3,'Старший науковий співробітник'),(2,2,'Доцент'),(3,1,'Професор'),(4,4,'Академік академії наук'),(5,5,'Член-кореспондент академії наук'),(6,6,'Член-кореспондент інт'),(9999,7,'не визначено');
/*!40000 ALTER TABLE `prepod_zvanie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rn_kharkov`
--

DROP TABLE IF EXISTS `rn_kharkov`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rn_kharkov` (
  `rn_id` bigint NOT NULL AUTO_INCREMENT,
  `rn_name` varchar(40) NOT NULL,
  PRIMARY KEY (`rn_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rn_kharkov`
--

LOCK TABLES `rn_kharkov` WRITE;
/*!40000 ALTER TABLE `rn_kharkov` DISABLE KEYS */;
INSERT INTO `rn_kharkov` VALUES (1,'Шевченківський'),(2,'Київський'),(3,'Слободской'),(4,'Холодногірський'),(5,'Салтовський'),(6,'Індустріальний'),(7,'Немишлянський'),(8,'Основ`янський'),(9,'Новобаварський');
/*!40000 ALTER TABLE `rn_kharkov` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vnz`
--

DROP TABLE IF EXISTS `vnz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vnz` (
  `vnz_id` bigint NOT NULL AUTO_INCREMENT,
  `vnz_name` varchar(255) DEFAULT NULL,
  `vnz_short_name` varchar(30) NOT NULL,
  PRIMARY KEY (`vnz_id`),
  UNIQUE KEY `UK_3y6731ulrcnmhorvpab82ifhj` (`vnz_short_name`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vnz`
--

LOCK TABLES `vnz` WRITE;
/*!40000 ALTER TABLE `vnz` DISABLE KEYS */;
INSERT INTO `vnz` VALUES (1,'Інститут післядипломної освіти Харківського Національного політехнічного інституту','ІПО ХНПІ'),(2,'Національний технічний університет \"Харківський політехнічний університет\"','НТУ \"ХПІ\"'),(3,'Харківський військовий університет','ХВУ'),(4,'Харківський університет Повітряних Сил','ХУПС'),(5,'Інститут післядипломної освіти НТУ \"ХПІ\"','ІПО ХПІ'),(6,'','ХНУМГ імені О.М.Бекетова'),(7,'Харківський державний політехнічний інститут','ХДПУ'),(8,'','Житомирське ВУ'),(9,'','ХДПІ'),(10,'','ХДТУБА'),(11,'Харківський регіональний інститут ДУ НАДУ при Президентові України','ХРІ ДУ НАДУ'),(12,'','ХНУ ім. В.Н.Каразіна'),(13,'Харківське вище військове авіаційно-інженерне училище','ХВВАІУ'),(14,'Харківське вище військове командно-інженерне училище ракетних військ','ХВВКІУРВ ім.Крилова М.І.'),(15,'Національна юридична академія України імені Ярослава Мудрого','НЮАУ ім. Я.Мудрого'),(16,'Харківський націаональний університет','ХНУ ім. В.М.Каразіна');
/*!40000 ALTER TABLE `vnz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voenkomat`
--

DROP TABLE IF EXISTS `voenkomat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `voenkomat` (
  `voenkamat_id` bigint NOT NULL AUTO_INCREMENT,
  `voenkomat_name` varchar(50) NOT NULL,
  PRIMARY KEY (`voenkamat_id`),
  UNIQUE KEY `UK_q7e34ku14397yk9yqor0xnm1u` (`voenkomat_name`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voenkomat`
--

LOCK TABLES `voenkomat` WRITE;
/*!40000 ALTER TABLE `voenkomat` DISABLE KEYS */;
INSERT INTO `voenkomat` VALUES (9,'Вінницький ОМЦК та СП'),(1,'Дергачівський РТЦК'),(2,'Індустріальний РТЦК та СП'),(6,'Київський РТЦК та СП'),(3,'Немишлянський РТЦК та СП'),(5,'Новобаварський ОТЦК та СП'),(8,'Резервний ТРЦ'),(4,'Салтівський РТЦК та СП'),(7,'Шевченківський РТЦК та СП');
/*!40000 ALTER TABLE `voenkomat` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-23 21:55:15
