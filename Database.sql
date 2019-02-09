/*
SQLyog Enterprise - MySQL GUI v7.02 
MySQL - 5.0.67-community-nt : Database - bank1
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`bank1` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `bank1`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `name` varchar(250) default NULL,
  `pass` varchar(250) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

insert  into `admin`(`name`,`pass`) values ('admin','khandelwal');

/*Table structure for table `customer` */

DROP TABLE IF EXISTS `customer`;

CREATE TABLE `customer` (
  `date` varchar(1600) default NULL,
  `name` varchar(1600) default NULL,
  `acc_num` varchar(1600) default NULL,
  `dob` varchar(1600) default NULL,
  `phone_no` varchar(1600) default NULL,
  `address` varchar(2100) default NULL,
  `district` varchar(1600) default NULL,
  `state` varchar(1600) default NULL,
  `gender` varchar(1600) default NULL,
  `marital_status` varchar(1600) default NULL,
  `father_name` varchar(1600) default NULL,
  `balance` int(180) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `customer` */

insert  into `customer`(`date`,`name`,`acc_num`,`dob`,`phone_no`,`address`,`district`,`state`,`gender`,`marital_status`,`father_name`,`balance`) values ('Sun Jan 29 09:45:55 IST 2017','parth khandelwal','6786419022','1/1/1940','8239562757','achrol	','jaipur','Rajasthan','Male','Marrid','suresh kumar',1400),('Sun Jan 29 09:45:55 IST 2017','khandelwal rohit','2488037036','3/1/1942','8239565275','khandelwal house','ahmdabad','Rajasthan','Male','Marrid','khanna',3700),('Sun Jan 29 09:50:55 IST 2017','neha khandelwal','9999622661','3/2/1952','8100422220','amity university hostal','jaipur','Rajasthan','Male','Marrid','khanna suresh',98),('Mon Feb 06 18:01:00 IST 2017','dipendra kumar sonie','9773612269','2/1/1940','7568942612','jaipur India','jaipur','Rajasthan','Male','Marrid','khandelwal',500),('Sat Apr 08 11:28:05 IST 2017','parth khandelwal','5144545647','3/4/1945','82235454','subodh	','jaipur','Rajasthan','Male','Marrid','suresh',500);

/*Table structure for table `statement` */

DROP TABLE IF EXISTS `statement`;

CREATE TABLE `statement` (
  `date` varchar(1600) default NULL,
  `acc_num` varchar(1600) default NULL,
  `amount` int(100) default NULL,
  `memo` varchar(1600) default NULL,
  `balance` int(100) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `statement` */

insert  into `statement`(`date`,`acc_num`,`amount`,`memo`,`balance`) values ('Mon Jan 30 10:50:50 IST 2017','2488037036',1000,'DIPOSIT(CREDIT)',3700),('Mon Jan 30 11:01:45 IST 2017','2488037036',100,'TRANSFERED(DEBITED)',3600),('Mon Jan 30 11:01:45 IST 2017','2488037036',100,'TRANSFERED(DEBITED)',3500),('Mon Jan 30 11:03:20 IST 2017','6786419022',200,'TRANSFERED(DEBITED)',1400),('Mon Jan 30 11:03:20 IST 2017','2488037036',200,'TRANSFERED(CREDITED)',3700),('Thu Mar 02 11:56:11 IST 2017','9999622661',2,'Withdrawal(DEBIT)',98);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
