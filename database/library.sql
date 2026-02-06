/*
SQLyog Ultimate v8.82 
MySQL - 5.1.45-community : Database - library
*********************************************************************
<<<<<<< Upstream, based on origin/master
*/
=======
*/
>>>>>>> 1662d18 Added database schema

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`library` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `library`;

/*Table structure for table `adminlogin` */

DROP TABLE IF EXISTS `adminlogin`;

CREATE TABLE `adminlogin` (
  `l_id` varchar(50) NOT NULL,
  `l_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`l_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `adminlogin` */

insert  into `adminlogin`(`l_id`,`l_name`) values ('admin','admin');

/*Table structure for table `book_issue` */

DROP TABLE IF EXISTS `book_issue`;

CREATE TABLE `book_issue` (
  `s_id` varchar(40) NOT NULL,
  `s_name` varchar(40) DEFAULT NULL,
  `s_branch` varchar(40) DEFAULT NULL,
  `b_id` varchar(40) NOT NULL,
  `b_name` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`s_id`,`b_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `book_issue` */

insert  into `book_issue`(`s_id`,`s_name`,`s_branch`,`b_id`,`b_name`) values ('65','abhi','bca','c2410','python'),('65','abhi','bca','j101','java'),('65','abhi','bca','j102','java');

/*Table structure for table `book_module` */

DROP TABLE IF EXISTS `book_module`;

CREATE TABLE `book_module` (
  `b_id` varchar(20) NOT NULL,
  `b_name` varchar(50) DEFAULT NULL,
  `b_class` varchar(40) DEFAULT NULL,
  `b_sem` int(4) DEFAULT NULL,
  PRIMARY KEY (`b_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `book_module` */

insert  into `book_module`(`b_id`,`b_name`,`b_class`,`b_sem`) values ('ab2410','math','bca',3),('b242','dsa','bca',3),('c2411','python','bca',3),('c2412','python','bca',3),('j103','java','bca',3),('m101',NULL,NULL,NULL),('m1010','abanamamsndjfncfnhdfhdvvbyubhvfbg','bca',5),('m1015','abanamamsndjfncfnhdfhdvvbyubhvfbg','bca',3),('m102','math','bca',1),('m103','math','bca',1),('m106','math','bca',1),('m109','abanamamsndjfncfnhdfhdvvbyubhvfbg','bca',5);

/*Table structure for table `lib_reg` */

DROP TABLE IF EXISTS `lib_reg`;

CREATE TABLE `lib_reg` (
  `l_id` decimal(40,0) NOT NULL,
  `l_name` varchar(40) DEFAULT NULL,
  `l_cont` decimal(40,0) DEFAULT NULL,
  `l_email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`l_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `lib_reg` */

insert  into `lib_reg`(`l_id`,`l_name`,`l_cont`,`l_email`) values ('66','ramu','9235778750','abhishekrajpoot3048@outlook.com'),('67','rdhc','9235778750','abhishekrajpoot3048@outlook.com'),('70','rdhc','9235778750','abhishekrajpoot3048@outlook.com');

/*Table structure for table `stu_reg` */

DROP TABLE IF EXISTS `stu_reg`;

CREATE TABLE `stu_reg` (
  `s_id` int(20) NOT NULL,
  `s_name` varchar(100) DEFAULT NULL,
  `s_branch` varchar(50) DEFAULT NULL,
  `s_year` int(50) DEFAULT NULL,
  `s_sem` int(10) DEFAULT NULL,
  `s_cont` decimal(50,0) DEFAULT NULL,
  `s_email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `stu_reg` */

insert  into `stu_reg`(`s_id`,`s_name`,`s_branch`,`s_year`,`s_sem`,`s_cont`,`s_email`) values (65,'Abhi','bca',2,3,'9235778750','abhishekrajpoot3048@outlook.com'),(1234,'Chotu','MBBS',1,3,'9235778750','abhishekrajpoot3048@outlook.com');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
