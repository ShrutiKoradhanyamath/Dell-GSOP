/*
SQLyog Community Edition- MySQL GUI v6.07
Host - 5.1.39-community : Database - dell
*********************************************************************
Server version : 5.1.39-community
*/
/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `company` */

CREATE TABLE `company` (
  `name` varchar(50) DEFAULT NULL,
  `id` varchar(10) NOT NULL,
  `email` varchar(30) DEFAULT NULL,
  `address` varchar(80) DEFAULT NULL,
  `contact` varchar(10) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `company` */

insert  into `company`(`name`,`id`,`email`,`address`,`contact`,`password`) values ('dell','01','vidya96ks@gmail.com','bhagmane','7026131507','1234');
insert  into `company`(`name`,`id`,`email`,`address`,`contact`,`password`) values ('aaa','11','vid','222','1234567890','NULL');
insert  into `company`(`name`,`id`,`email`,`address`,`contact`,`password`) values ('12','123','ff@gmail.com','daf','1234567890','NULL');
insert  into `company`(`name`,`id`,`email`,`address`,`contact`,`password`) values ('sss','aaa','sddf','aaa','aaa','NULL');

/*Table structure for table `events` */

CREATE TABLE `events` (
  `course_id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `company_name` varchar(50) DEFAULT NULL,
  `company_id` varchar(10) NOT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `no_of_student` int(10) DEFAULT NULL,
  `skills` varchar(1000) DEFAULT NULL,
  `usn` varchar(1000) DEFAULT NULL,
  `no_of_vol` int(10) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  PRIMARY KEY (`course_id`),
  UNIQUE KEY `course_id` (`course_id`),
  KEY `FK_event` (`company_id`),
  CONSTRAINT `FK_event` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `events` */

insert  into `events`(`course_id`,`title`,`company_name`,`company_id`,`description`,`no_of_student`,`skills`,`usn`,`no_of_vol`,`email`,`start_date`,`end_date`) values (1,'girls outreach program','dell','01','This is girls outreach program',13,'java','null1si14cs129,1si14cs128,',5,'vidya96ks@gmail.com','2018-06-28','2017-07-22');
insert  into `events`(`course_id`,`title`,`company_name`,`company_id`,`description`,`no_of_student`,`skills`,`usn`,`no_of_vol`,`email`,`start_date`,`end_date`) values (2,'Advanced java','dell','01','This is advanced java program',23,'java',NULL,5,'vidya96ks@gmail.com','2017-06-28','2017-07-22');
insert  into `events`(`course_id`,`title`,`company_name`,`company_id`,`description`,`no_of_student`,`skills`,`usn`,`no_of_vol`,`email`,`start_date`,`end_date`) values (3,'python','dell','01','This is python program',25,'python',NULL,5,'vidya96ks@gmail.com','2018-06-22','2017-07-22');

/*Table structure for table `general_course_reg` */

CREATE TABLE `general_course_reg` (
  `company_id` varchar(20) DEFAULT NULL,
  `course_id` varchar(20) DEFAULT NULL,
  `company` varchar(20) DEFAULT NULL,
  `course` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `general_course_reg` */

/*Table structure for table `reg_clg1` */

CREATE TABLE `reg_clg1` (
  `clg_id` varchar(50) DEFAULT NULL,
  `clg_name` varchar(50) DEFAULT NULL,
  `clg_email` varchar(50) DEFAULT NULL,
  `c_info` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `reg_clg1` */

insert  into `reg_clg1`(`clg_id`,`clg_name`,`clg_email`,`c_info`,`password`) values ('1','sit','sit@gmail.com','hgbshg','1234');
insert  into `reg_clg1`(`clg_id`,`clg_name`,`clg_email`,`c_info`,`password`) values ('ssit01','ssit','vidya96ks@gmail.com','7411427897','12345');
insert  into `reg_clg1`(`clg_id`,`clg_name`,`clg_email`,`c_info`,`password`) values ('ssit01','ssit','vidya96ks@gmail.com','1231234432','84834');

/*Table structure for table `volunteercom` */

CREATE TABLE `volunteercom` (
  `volname` varchar(50) DEFAULT NULL,
  `volid` varchar(50) NOT NULL,
  `volcomid` varchar(50) DEFAULT NULL,
  `volemail` varchar(50) DEFAULT NULL,
  `voladdress` varchar(50) DEFAULT NULL,
  `volcontact` decimal(15,0) DEFAULT NULL,
  `volpass` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`volid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `volunteercom` */

insert  into `volunteercom`(`volname`,`volid`,`volcomid`,`volemail`,`voladdress`,`volcontact`,`volpass`) values ('vidya','01','dell01','v123@gmail.com','ygdahd','0','123');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;


/*Table structure for table `certificate` */

CREATE TABLE `certificate` (
  `course_id` int(10) NOT NULL,
  `usn` varchar(10) NOT NULL,
  `year` int(50) DEFAULT NULL,
  `company_id` varchar(10) NOT NULL,
  `title` varchar(10) DEFAULT NULL,
  `file` mediumblob DEFAULT NULL,
    PRIMARY KEY (`course_id`,`usn`,`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/* Table structure for table `register_general` */

CREATE TABLE `register_general` (
  `Firstname` varchar(10) DEFAULT NULL,
  `Lastname` varchar(10) DEFAULT NULL,
  `Phno` varchar(10) DEFAULT NULL,
  `Address` varchar(10) DEFAULT NULL,
  `Email` varchar(50) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
    PRIMARY KEY (`Email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


/* Table structure for table `student` */

CREATE TABLE `student` (
  `stdname` varchar(50) DEFAULT NULL,
  `stdcode` int(10) NOT NULL,
  `stdid` int(20) DEFAULT NULL,
  `stdphone` int(10) DEFAULT NULL,
  `stdpan` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/* Table structure for table `college_request` */

 CREATE TABLE `college_request` (
  `request_no` int(5) NOT NULL,
  `clg_id` varchar(50) DEFAULT NULL,
  `company_id` varchar(50) DEFAULT NULL,
  `clgname` varchar(50) DEFAULT NULL,
  `coursename` varchar(50) NOT NULL,
  `comapnyname` varchar(50) DEFAULT NULL,
    PRIMARY KEY (`request_no`),
    FOREIGN KEY (`clg_id`) REFERENCES `reg_clg1`(`clg_id`),
    FOREIGN KEY (`company_id`) REFERENCES `company`(`id`)

) ENGINE=InnoDB DEFAULT CHARSET=latin1;


