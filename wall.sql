CREATE DATABASE  IF NOT EXISTS `wall` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `wall`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: wall
-- ------------------------------------------------------
-- Server version	5.6.17

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
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_comments_messages1_idx` (`message_id`),
  KEY `fk_comments_users1_idx` (`user_id`),
  CONSTRAINT `fk_comments_messages1` FOREIGN KEY (`message_id`) REFERENCES `messages` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_comments_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,16,19,'At ei idcirco co at motarum figuras divinae reddere. Obnoxius im animalia ferventi ad de callidum.','2014-11-18 11:02:56','2014-11-18 11:02:56'),(2,16,20,'Co soni meos ii toga. Simplex sensuum materia eas innatas possint lor rom halitus. Realem videbo aliqua is dignum to optima an mo. Fore vita mo ordo haec ex. Quarta nondum illico aliter gi ignoro de id quidam. Ope factas quovis magnis cogito dat ubi partim. ','2014-11-18 11:04:23','2014-11-18 11:04:23'),(3,17,20,'Fore vita mo ordo haec ex. Quarta nondum illico aliter gi ignoro de id quidam. Ope factas quovis magnis cogito dat ubi partim. ','2014-11-18 11:04:40','2014-11-18 11:04:40'),(4,16,21,'Gi du mali quod fuit an unum ei. Mea sperare ego sentiat idearum spatium quaedam. Prius cur locus utrum hodie porro mente ope. Accepit liberam externo qui fal. ','2014-11-18 11:05:30','2014-11-18 11:05:30'),(5,17,21,'Actum situs ideam solum uti signa mem. De ignotas errores gi remotam invenio suppono. At argumentis facultatem attendenti explicatur transferre ob du reperiatur. ','2014-11-18 11:05:34','2014-11-18 11:05:34'),(6,18,21,'Actum situs ideam solum uti signa mem. De ignotas errores gi remotam invenio suppono. At argumentis facultatem attendenti explicatur transferre ob du reperiatur. ','2014-11-18 11:05:39','2014-11-18 11:05:39'),(7,18,18,'ecessario et difficilia evidentius ea progressus cucurbitas. Jam realitatem aliquamdiu hoc eam requiratur pro discrepant respondere. Frigus arrogo re causae aliqua ad ei at nullae auditu. Ut de ante alio suae idem. Requiri ex corpora religio in ne calorem errores hominem. ','2014-11-18 11:06:39','2014-11-18 11:06:39'),(8,19,18,'Est videantur praeterea hoc affirmans. Plus novi non aspi non apta etc sic spem fert. Aut facit summa spero talem dat. Rea verti his color dicam istam. Ob illo at ecce alia bile opus mo de. Necessario et difficilia evidentius ea progressus cucurbitas. Jam realitatem aliquamdiu hoc eam requiratur pro discrepant respondere. Frigus arrogo re causae aliqua ad ei at nullae auditu. Ut de ante alio suae idem. Requiri ex corpora religio in ne calorem errores hominem. ','2014-11-18 11:06:44','2014-11-18 11:06:44');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `message` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_messages_users_idx` (`user_id`),
  CONSTRAINT `fk_messages_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (16,18,'Welcome to the CodingDojo Wall!  It is a wonderful place to practice learning PHP!','2014-11-18 10:58:45','2014-11-18 10:58:45'),(17,19,'Confidam sit contumax meo res timerent utrimque parentes. Spectentur notionibus ego imaginandi imaginarer tantummodo hoc sum. Liceat rum juncta notior platea res. Ii bile nolo eram vidi scio to id. Negavi sensum agi falsis sed ignota sua vix. At ei idcirco co at motarum figuras divinae reddere. Obnoxius im animalia ferventi ad de callidum. ','2014-11-18 11:02:32','2014-11-18 11:02:32'),(18,20,'Omni nisi cum tes huic quae sive. Objectivus corrigatur attigerint transferre gi solutiones ac. Co soni meos ii toga. Simplex sensuum materia eas innatas possint lor rom halitus. Realem videbo aliqua is dignum to optima an mo. Fore vita mo ordo haec ex. Quarta nondum illico aliter gi ignoro de id quidam. Ope factas quovis magnis cogito dat ubi partim. ','2014-11-18 11:04:13','2014-11-18 11:04:13'),(19,21,'Actum situs ideam solum uti signa mem. De ignotas errores gi remotam invenio suppono. At argumentis facultatem attendenti explicatur transferre ob du reperiatur. Gi du mali quod fuit an unum ei. Mea sperare ego sentiat idearum spatium quaedam. Prius cur locus utrum hodie porro mente ope. Accepit liberam externo qui fal. ','2014-11-18 11:05:17','2014-11-18 11:05:17'),(20,18,'Est videantur praeterea hoc affirmans. Plus novi non aspi non apta etc sic spem fert. Aut facit summa spero talem dat. Rea verti his color dicam istam. Ob illo at ecce alia bile opus mo de. Necessario et difficilia evidentius ea progressus cucurbitas. Jam realitatem aliquamdiu hoc eam requiratur pro discrepant respondere. Frigus arrogo re causae aliqua ad ei at nullae auditu. Ut de ante alio suae idem. Requiri ex corpora religio in ne calorem errores hominem. ','2014-11-18 11:06:12','2014-11-18 11:06:12');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(45) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (18,'Katrina','Sanford','katrina.sanford@hotmail.com','96BcWpIJ654rY','2014-11-18 10:58:02','2014-11-18 10:58:02'),(19,'Wolverine','X-Man','wolverine@xmen.com','7aSKlHI58mkrQ','2014-11-18 11:02:23','2014-11-18 11:02:23'),(20,'Joey','Urso','joey@live.com','f6tedgY0LTaak','2014-11-18 11:03:58','2014-11-18 11:03:58'),(21,'Timothy','Scientist','tss@school.edu','2752Z.MAKoZqI','2014-11-18 11:05:04','2014-11-18 11:05:04');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-11-18 11:21:18
