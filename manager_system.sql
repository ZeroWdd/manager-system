/*
SQLyog Ultimate v8.32 
MySQL - 5.7.23 : Database - manager_system
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`manager_system` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `manager_system`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `email` varchar(25) DEFAULT NULL,
  `rid` int(11) DEFAULT NULL,
  `status` int(2) DEFAULT NULL,
  `createtime` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_admin` (`rid`),
  CONSTRAINT `FK_admin` FOREIGN KEY (`rid`) REFERENCES `role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

/*Data for the table `admin` */

insert  into `admin`(`id`,`username`,`password`,`phone`,`email`,`rid`,`status`,`createtime`) values (15,'superadmin','123456','13333634203','1710031565@qq.com',1,1,'2019-07-18'),(27,'superNice','123','12589745201','wdd@qq.com',2,1,'2019-07-19');

/*Table structure for table `icon` */

DROP TABLE IF EXISTS `icon`;

CREATE TABLE `icon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `icon` */

insert  into `icon`(`id`,`url`) values (1,'fa-home'),(2,'fa-book'),(3,'fa-pencil');

/*Table structure for table `log` */

DROP TABLE IF EXISTS `log`;

CREATE TABLE `log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `uri` varchar(50) DEFAULT NULL,
  `logTime` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=371 DEFAULT CHARSET=utf8;

/*Data for the table `log` */

insert  into `log`(`id`,`username`,`uri`,`logTime`) values (121,'superadmin','/manager/console','2019-07-25 08:09:54'),(122,'superadmin','/manager/treeMenu','2019-07-25 08:09:55'),(123,'superadmin','/manager/log','2019-07-25 08:09:56'),(124,'superadmin','/manager/index','2019-07-25 08:10:42'),(125,'superadmin','/manager/console','2019-07-25 08:10:42'),(126,'superadmin','/manager/treeMenu','2019-07-25 08:10:43'),(127,'superadmin','/manager/log','2019-07-25 08:10:55'),(128,'superadmin','/manager/index','2019-07-25 08:19:30'),(130,'superadmin','/manager/treeMenu','2019-07-25 08:19:30'),(131,'superadmin','/manager/log','2019-07-25 08:19:32'),(132,'superadmin','/manager/delLog','2019-07-25 08:19:38'),(133,'superadmin','/manager/log','2019-07-25 08:19:38'),(134,'superadmin','/manager/delLog','2019-07-25 08:19:48'),(135,'superadmin','/manager/log','2019-07-25 08:19:48'),(136,'superadmin','/manager/admin','2019-07-25 08:20:03'),(137,'superadmin','/manager/adminList','2019-07-25 08:20:03'),(138,'superadmin','/manager/index','2019-07-25 08:21:09'),(139,'superadmin','/manager/console','2019-07-25 08:21:09'),(140,'superadmin','/manager/treeMenu','2019-07-25 08:21:09'),(141,'superadmin','/manager/log','2019-07-25 08:21:10'),(142,'superadmin','/manager/log','2019-07-25 08:21:24'),(143,'superadmin','/manager/template/search.html','2019-07-25 08:21:35'),(144,'superadmin','/manager/app/message/index.html','2019-07-25 08:21:41'),(145,'superadmin','/manager/set/user/info.html','2019-07-25 08:21:47'),(146,'superadmin','/manager/index','2019-07-25 08:29:50'),(147,'superadmin','/manager/console','2019-07-25 08:29:50'),(148,'superadmin','/manager/treeMenu','2019-07-25 08:29:51'),(149,'superadmin','/manager/set/user/password.html','2019-07-25 08:29:56'),(150,'superadmin','/manager/set/user/password.html','2019-07-25 08:30:22'),(151,'superadmin','/manager/index','2019-07-25 08:32:02'),(152,'superadmin','/manager/console','2019-07-25 08:32:02'),(153,'superadmin','/manager/treeMenu','2019-07-25 08:32:02'),(154,'superadmin','/manager/password','2019-07-25 08:32:04'),(155,'superadmin','/manager/index','2019-07-25 08:43:52'),(156,'superadmin','/manager/console','2019-07-25 08:43:52'),(157,'superadmin','/manager/treeMenu','2019-07-25 08:43:52'),(158,'superadmin','/manager/password','2019-07-25 08:43:55'),(159,'superadmin','/manager/editPassword','2019-07-25 08:44:03'),(160,'superadmin','/manager/index','2019-07-25 08:45:04'),(161,'superadmin','/manager/console','2019-07-25 08:45:04'),(162,'superadmin','/manager/treeMenu','2019-07-25 08:45:04'),(163,'superadmin','/manager/password','2019-07-25 08:45:06'),(164,'superadmin','/manager/editPassword','2019-07-25 08:45:13'),(165,'superadmin','/manager/index','2019-07-25 08:46:25'),(166,'superadmin','/manager/console','2019-07-25 08:46:25'),(167,'superadmin','/manager/treeMenu','2019-07-25 08:46:26'),(168,'superadmin','/manager/password','2019-07-25 08:46:28'),(169,'superadmin','/manager/editPassword','2019-07-25 08:46:52'),(170,'superadmin','/manager/editPassword','2019-07-25 08:47:00'),(171,'superadmin','/manager/editPassword','2019-07-25 08:48:03'),(172,'superadmin','/manager/index','2019-07-25 08:50:33'),(173,'superadmin','/manager/console','2019-07-25 08:50:33'),(174,'superadmin','/manager/treeMenu','2019-07-25 08:50:33'),(175,'superadmin','/manager/password','2019-07-25 08:50:36'),(176,'superadmin','/manager/editPassword','2019-07-25 08:50:57'),(177,'superadmin','/manager/index','2019-07-25 08:51:25'),(178,'superadmin','/manager/console','2019-07-25 08:51:25'),(179,'superadmin','/manager/treeMenu','2019-07-25 08:51:25'),(180,'superadmin','/manager/admin','2019-07-25 08:51:27'),(181,'superadmin','/manager/adminList','2019-07-25 08:51:27'),(182,'superadmin','/manager/addAdmin','2019-07-25 08:51:29'),(183,'superadmin','/manager/addAdmin','2019-07-25 08:51:33'),(184,'superadmin','/manager/admin','2019-07-25 08:51:35'),(185,'superadmin','/manager/adminList','2019-07-25 08:51:35'),(186,'superadmin','/manager/index','2019-07-25 09:42:56'),(187,'superadmin','/manager/console','2019-07-25 09:42:56'),(188,'superadmin','/manager/treeMenu','2019-07-25 09:42:56'),(189,'superadmin','/manager/password','2019-07-25 09:43:01'),(190,'superadmin','/manager/editPassword','2019-07-25 09:43:12'),(191,'superadmin','/manager/index','2019-07-25 09:43:23'),(192,'superadmin','/manager/console','2019-07-25 09:43:23'),(193,'superadmin','/manager/treeMenu','2019-07-25 09:43:23'),(194,'superadmin','/manager/admin','2019-07-25 09:43:30'),(195,'superadmin','/manager/adminList','2019-07-25 09:43:30'),(196,'superadmin','/manager/addAdmin','2019-07-25 09:43:32'),(197,'superadmin','/manager/addAdmin','2019-07-25 09:43:35'),(198,'superadmin','/manager/admin','2019-07-25 09:43:36'),(199,'superadmin','/manager/adminList','2019-07-25 09:43:36'),(200,'superadmin','/manager/index','2019-07-25 09:43:44'),(201,'superadmin','/manager/console','2019-07-25 09:43:44'),(202,'superadmin','/manager/treeMenu','2019-07-25 09:43:44'),(203,'superadmin','/manager/console','2019-07-25 09:45:05'),(204,'superadmin','/manager/index','2019-07-25 09:47:05'),(205,'superadmin','/manager/console','2019-07-25 09:47:06'),(206,'superadmin','/manager/treeMenu','2019-07-25 09:47:06'),(207,'superadmin','/manager/admin','2019-07-25 09:47:08'),(208,'superadmin','/manager/adminList','2019-07-25 09:47:08'),(209,'superadmin','/manager/addAdmin','2019-07-25 09:47:10'),(210,'superadmin','/manager/role','2019-07-25 09:47:48'),(211,'superadmin','/manager/roleList','2019-07-25 09:47:49'),(212,'superadmin','/manager/permission','2019-07-25 09:47:49'),(213,'superadmin','/manager/permissionList','2019-07-25 09:47:50'),(214,'superadmin','/manager/admin','2019-07-25 09:47:54'),(215,'superadmin','/manager/adminList','2019-07-25 09:47:54'),(216,'superadmin','/manager/role','2019-07-25 09:47:55'),(217,'superadmin','/manager/roleList','2019-07-25 09:47:55'),(218,'superadmin','/manager/log','2019-07-25 09:47:58'),(219,'superadmin','/manager/index','2019-07-25 09:52:50'),(220,'superadmin','/manager/console','2019-07-25 09:52:50'),(221,'superadmin','/manager/treeMenu','2019-07-25 09:52:51'),(222,'superadmin','/manager/admin','2019-07-25 09:52:53'),(223,'superadmin','/manager/adminList','2019-07-25 09:52:53'),(224,'superadmin','/manager/role','2019-07-25 09:52:56'),(225,'superadmin','/manager/roleList','2019-07-25 09:52:56'),(226,'superadmin','/manager/permission','2019-07-25 09:52:57'),(227,'superadmin','/manager/permissionList','2019-07-25 09:52:57'),(228,'superadmin','/manager/allotPer','2019-07-25 09:52:59'),(229,'superadmin','/manager/permissionList','2019-07-25 09:52:59'),(230,'superadmin','/manager/addAdmin','2019-07-25 09:53:47'),(231,'superadmin','/manager/addAdmin','2019-07-25 09:54:01'),(232,'superadmin','/manager/index','2019-07-25 09:57:43'),(233,'superadmin','/manager/console','2019-07-25 09:57:43'),(234,'superadmin','/manager/treeMenu','2019-07-25 09:57:43'),(235,'superadmin','/manager/addAdmin','2019-07-25 09:57:58'),(236,'superadmin','/manager/addAdmin','2019-07-25 09:59:26'),(237,'superadmin','/manager/index','2019-07-25 10:01:06'),(238,'superadmin','/manager/console','2019-07-25 10:01:06'),(239,'superadmin','/manager/treeMenu','2019-07-25 10:01:06'),(240,'superadmin','/manager/addAdmin','2019-07-25 10:01:24'),(241,'superadmin','/manager/index','2019-07-25 10:10:42'),(242,'superadmin','/manager/console','2019-07-25 10:10:42'),(243,'superadmin','/manager/treeMenu','2019-07-25 10:10:43'),(244,'superadmin','/manager/info','2019-07-25 10:10:45'),(245,'superadmin','/manager/index','2019-07-25 10:12:06'),(246,'superadmin','/manager/console','2019-07-25 10:12:06'),(247,'superadmin','/manager/treeMenu','2019-07-25 10:12:06'),(248,'superadmin','/manager/info','2019-07-25 10:12:09'),(249,'superadmin','/manager/index','2019-07-25 10:14:46'),(250,'superadmin','/manager/console','2019-07-25 10:14:46'),(251,'superadmin','/manager/treeMenu','2019-07-25 10:14:46'),(252,'superadmin','/manager/info','2019-07-25 10:14:48'),(253,'superadmin','/manager/index','2019-07-25 10:20:27'),(254,'superadmin','/manager/console','2019-07-25 10:20:27'),(255,'superadmin','/manager/treeMenu','2019-07-25 10:20:28'),(256,'superadmin','/manager/info','2019-07-25 10:20:30'),(257,'superadmin','/manager/index','2019-07-25 10:23:47'),(258,'superadmin','/manager/console','2019-07-25 10:23:47'),(259,'superadmin','/manager/treeMenu','2019-07-25 10:23:48'),(260,'superadmin','/manager/info','2019-07-25 10:23:51'),(261,'superadmin','/manager/index','2019-07-25 10:24:24'),(262,'superadmin','/manager/console','2019-07-25 10:24:24'),(263,'superadmin','/manager/treeMenu','2019-07-25 10:24:24'),(264,'superadmin','/manager/info','2019-07-25 10:24:26'),(265,'superadmin','/manager/index','2019-07-25 10:28:53'),(266,'superadmin','/manager/console','2019-07-25 10:28:53'),(267,'superadmin','/manager/treeMenu','2019-07-25 10:28:53'),(268,'superadmin','/manager/info','2019-07-25 10:28:56'),(269,'superadmin','/manager/index','2019-07-25 10:29:54'),(270,'superadmin','/manager/console','2019-07-25 10:29:54'),(271,'superadmin','/manager/treeMenu','2019-07-25 10:29:55'),(272,'superadmin','/manager/info','2019-07-25 10:29:57'),(273,'superadmin','/manager/info','2019-07-25 10:30:10'),(274,'superadmin','/manager/info','2019-07-25 10:30:10'),(275,'superadmin','/manager/info','2019-07-25 10:30:11'),(276,'superadmin','/manager/info','2019-07-25 10:30:11'),(277,'superadmin','/manager/info','2019-07-25 10:30:11'),(278,'superadmin','/manager/info','2019-07-25 10:30:11'),(279,'superadmin','/manager/info','2019-07-25 10:30:11'),(280,'superadmin','/manager/info','2019-07-25 10:30:11'),(281,'superadmin','/manager/info','2019-07-25 10:30:11'),(282,'superadmin','/manager/info','2019-07-25 10:30:15'),(283,'superadmin','/manager/info','2019-07-25 10:30:15'),(284,'superadmin','/manager/index','2019-07-25 10:31:01'),(285,'superadmin','/manager/console','2019-07-25 10:31:01'),(286,'superadmin','/manager/treeMenu','2019-07-25 10:31:02'),(287,'superadmin','/manager/info','2019-07-25 10:31:03'),(288,'superadmin','/manager/info','2019-07-25 10:31:04'),(289,'superadmin','/manager/info','2019-07-25 10:31:06'),(290,'superadmin','/manager/info','2019-07-25 10:31:07'),(291,'superadmin','/manager/addAdmin','2019-07-25 10:31:29'),(292,'superadmin','/manager/index','2019-07-25 10:34:38'),(293,'superadmin','/manager/console','2019-07-25 10:34:38'),(294,'superadmin','/manager/treeMenu','2019-07-25 10:34:38'),(295,'superadmin','/manager/info','2019-07-25 10:34:40'),(296,'superadmin','/manager/index','2019-07-25 10:36:48'),(297,'superadmin','/manager/console','2019-07-25 10:36:48'),(298,'superadmin','/manager/treeMenu','2019-07-25 10:36:48'),(299,'superadmin','/manager/info','2019-07-25 10:36:50'),(300,'superadmin','/manager/addAdmin','2019-07-25 10:37:58'),(301,'superadmin','/manager/index','2019-07-25 10:43:15'),(302,'superadmin','/manager/console','2019-07-25 10:43:15'),(303,'superadmin','/manager/treeMenu','2019-07-25 10:43:16'),(304,'superadmin','/manager/info','2019-07-25 10:43:20'),(305,'superadminNice','/manager/editInfo','2019-07-25 10:43:56'),(306,'superadminNice','/manager/index','2019-07-25 10:43:58'),(307,'superadminNice','/manager/console','2019-07-25 10:43:58'),(308,'superadminNice','/manager/treeMenu','2019-07-25 10:43:58'),(309,'superadminNice','/manager/log','2019-07-25 10:44:00'),(310,'superadminNice','/manager/info','2019-07-25 10:44:04'),(311,'superadmin','/manager/index','2019-07-25 20:45:21'),(312,'superadmin','/manager/console','2019-07-25 20:45:22'),(313,'superadmin','/manager/treeMenu','2019-07-25 20:45:22'),(314,'superadmin','/manager/index','2019-07-25 20:46:07'),(315,'superadmin','/manager/console','2019-07-25 20:46:07'),(316,'superadmin','/manager/treeMenu','2019-07-25 20:46:07'),(317,'superadmin','/manager/index','2019-07-25 20:46:59'),(318,'superadmin','/manager/console','2019-07-25 20:47:00'),(319,'superadmin','/manager/treeMenu','2019-07-25 20:47:00'),(320,'superadmin','/manager/admin','2019-07-25 20:47:01'),(321,'superadmin','/manager/adminList','2019-07-25 20:47:02'),(322,'superadmin','/manager/addAdmin','2019-07-25 20:47:17'),(323,'superadmin','/manager/addAdmin','2019-07-25 20:47:19'),(324,'superadmin','/manager/role','2019-07-25 20:47:32'),(325,'superadmin','/manager/roleList','2019-07-25 20:47:32'),(326,'superadmin','/manager/allotPer','2019-07-25 20:47:45'),(327,'superadmin','/manager/permissionList','2019-07-25 20:47:45'),(328,'superadmin','/manager/permission','2019-07-25 20:47:59'),(329,'superadmin','/manager/permissionList','2019-07-25 20:48:00'),(330,'superadmin','/manager/log','2019-07-25 20:48:11'),(331,'superadmin','/manager/password','2019-07-25 20:48:23'),(332,'superadmin','/manager/info','2019-07-25 20:48:33'),(333,'superadmin','/manager/index','2019-07-26 14:20:51'),(334,'superadmin','/manager/console','2019-07-26 14:20:51'),(335,'superadmin','/manager/treeMenu','2019-07-26 14:20:51'),(336,'superadmin','/manager/index','2019-07-26 14:21:07'),(337,'superadmin','/manager/console','2019-07-26 14:21:07'),(338,'superadmin','/manager/treeMenu','2019-07-26 14:21:07'),(339,'superadmin','/manager/index','2019-07-26 14:21:09'),(340,'superadmin','/manager/console','2019-07-26 14:21:09'),(341,'superadmin','/manager/treeMenu','2019-07-26 14:21:10'),(342,'superadmin','/manager/index','2019-07-26 14:21:13'),(343,'superadmin','/manager/console','2019-07-26 14:21:13'),(344,'superadmin','/manager/treeMenu','2019-07-26 14:21:14'),(345,'superadmin','/manager/index','2019-07-26 14:21:20'),(346,'superadmin','/manager/console','2019-07-26 14:21:20'),(347,'superadmin','/manager/treeMenu','2019-07-26 14:21:20'),(348,'superadmin','/manager/index','2019-07-26 14:21:21'),(349,'superadmin','/manager/console','2019-07-26 14:21:21'),(350,'superadmin','/manager/treeMenu','2019-07-26 14:21:22'),(351,'superadmin','/manager/hello','2019-07-26 14:23:03'),(352,'superadmin','/manager/treeMenu','2019-07-26 14:23:06'),(353,'superadmin','/manager/index','2019-07-27 08:53:13'),(354,'superadmin','/manager/console','2019-07-27 08:53:13'),(355,'superadmin','/manager/treeMenu','2019-07-27 08:53:13'),(356,'superadmin','/manager/index','2019-07-27 08:59:03'),(357,'superadmin','/manager/console','2019-07-27 08:59:03'),(358,'superadmin','/manager/treeMenu','2019-07-27 08:59:03'),(359,'superadmin','/manager/index','2019-07-27 08:59:23'),(360,'superadmin','/manager/console','2019-07-27 08:59:23'),(361,'superadmin','/manager/treeMenu','2019-07-27 08:59:24'),(362,'superadmin','/manager/index','2019-07-27 09:11:49'),(363,'superadmin','/manager/console','2019-07-27 09:11:49'),(364,'superadmin','/manager/treeMenu','2019-07-27 09:11:49'),(365,'superadmin','/manager/admin','2019-07-27 09:11:52'),(366,'superadmin','/manager/adminList','2019-07-27 09:11:53'),(367,'superadmin','/manager/role','2019-07-27 09:11:54'),(368,'superadmin','/manager/roleList','2019-07-27 09:11:55'),(369,'superadmin','/manager/permission','2019-07-27 09:11:57'),(370,'superadmin','/manager/permissionList','2019-07-27 09:11:57');

/*Table structure for table `role` */

DROP TABLE IF EXISTS `role`;

CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `role` */

insert  into `role`(`id`,`name`) values (1,'超级管理员'),(2,'管理员');

/*Table structure for table `role_treemenu` */

DROP TABLE IF EXISTS `role_treemenu`;

CREATE TABLE `role_treemenu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) DEFAULT NULL,
  `tid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_role_treemenu` (`rid`),
  KEY `FK_role_treemenu1` (`tid`),
  CONSTRAINT `FK_role_treemenu` FOREIGN KEY (`rid`) REFERENCES `role` (`id`),
  CONSTRAINT `FK_role_treemenu1` FOREIGN KEY (`tid`) REFERENCES `treemenu` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

/*Data for the table `role_treemenu` */

insert  into `role_treemenu`(`id`,`rid`,`tid`) values (19,1,1),(20,1,2),(21,1,3),(22,1,4),(23,1,6),(24,1,7),(25,1,9),(26,1,11),(37,2,1),(38,2,6),(39,2,2),(40,2,3),(41,2,4),(42,2,9);

/*Table structure for table `treemenu` */

DROP TABLE IF EXISTS `treemenu`;

CREATE TABLE `treemenu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `name` varchar(10) DEFAULT NULL,
  `icon` varchar(50) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

/*Data for the table `treemenu` */

insert  into `treemenu`(`id`,`pid`,`name`,`icon`,`url`) values (1,-1,'控制面板','fa-home',''),(2,-1,'用户管理','fa-book',''),(3,2,'用户列表',NULL,'/manager/admin'),(4,2,'角色列表',NULL,'/manager/role'),(6,1,'后台主页',NULL,'/manager/index'),(7,-1,'系统日志','fa-pencil',''),(9,2,'权限列表',NULL,'/manager/permission'),(11,7,'日志列表',NULL,'/manager/log');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
