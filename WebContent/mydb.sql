# Host: localhost  (Version: 5.5.40)
# Date: 2016-11-30 15:03:37
# Generator: MySQL-Front 5.3  (Build 4.120)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "news_tbl"
#

DROP TABLE IF EXISTS `news_tbl`;
CREATE TABLE `news_tbl` (
  `newsid` int(11) NOT NULL AUTO_INCREMENT,
  `newstitle` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `newscontent` text COLLATE utf8_unicode_ci,
  `newsdate` date DEFAULT NULL,
  PRIMARY KEY (`newsid`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "news_tbl"
#

/*!40000 ALTER TABLE `news_tbl` DISABLE KEYS */;
INSERT INTO `news_tbl` VALUES (3,'666','66676767','2016-06-13'),(7,'767','76573231','2016-06-13'),(12,'4343','aaa','2016-07-04'),(13,'434244','mmmm','2016-07-04'),(14,'434234','nnnnn','2016-07-04'),(15,'666666666','bbb','2016-07-04'),(16,'7777777777','vvvv','2016-07-04'),(17,'888888888888888','cccc','2016-07-04'),(18,'99999999','xxxx','2016-10-10'),(20,'123','123','2016-10-10');
/*!40000 ALTER TABLE `news_tbl` ENABLE KEYS */;

#
# Structure for table "product"
#

DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `pname` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "product"
#

/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (3,'football',50),(4,'baseball',30),(5,'ball',50);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;

#
# Structure for table "student_tbl"
#

DROP TABLE IF EXISTS `student_tbl`;
CREATE TABLE `student_tbl` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `sname` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sage` int(5) DEFAULT NULL,
  `stel` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "student_tbl"
#

/*!40000 ALTER TABLE `student_tbl` DISABLE KEYS */;
INSERT INTO `student_tbl` VALUES (1,'boss',21,'18840910430'),(2,'mengzhen',22,'13795141214');
/*!40000 ALTER TABLE `student_tbl` ENABLE KEYS */;

#
# Structure for table "user_tbl"
#

DROP TABLE IF EXISTS `user_tbl`;
CREATE TABLE `user_tbl` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `userpwd` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `usercls` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `Id` (`Id`,`username`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_tbl"
#

/*!40000 ALTER TABLE `user_tbl` DISABLE KEYS */;
INSERT INTO `user_tbl` VALUES (1,'zhangsan','123456','admin'),(2,'lisi','123456','user'),(13,'bosslin','123456','user'),(17,'wangqian','123456','user'),(18,'wangwu','123456','user'),(22,'wangqian1','123456','user'),(23,'bosslin1','123456','user'),(26,'lintinger','123456','user'),(27,'wq1234','1234567','user'),(28,'RubyL','123456','user');
/*!40000 ALTER TABLE `user_tbl` ENABLE KEYS */;
