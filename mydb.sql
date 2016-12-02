# Host: localhost  (Version: 5.5.40)
# Date: 2016-12-01 08:35:17
# Generator: MySQL-Front 5.3  (Build 4.120)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "constitution"
#

DROP TABLE IF EXISTS `constitution`;
CREATE TABLE `constitution` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `uername` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `jan` int(11) DEFAULT NULL,
  `feb` int(11) DEFAULT NULL,
  `mar` int(11) DEFAULT NULL,
  `apr` int(11) DEFAULT NULL,
  `may` int(11) DEFAULT NULL,
  `june` int(11) DEFAULT NULL,
  `july` int(11) DEFAULT NULL,
  `aug` int(11) DEFAULT NULL,
  `sept` int(11) DEFAULT NULL,
  `oct` int(11) DEFAULT NULL,
  `nov` int(11) DEFAULT NULL,
  `dec` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "constitution"
#

/*!40000 ALTER TABLE `constitution` DISABLE KEYS */;
INSERT INTO `constitution` VALUES (1,'zhangsan',20,49,44,32,37,37,35,22,32,20,34,33),(2,'lisi',22,35,45,33,45,34,46,44,40,37,36,41),(3,'bosslin',35,44,33,45,47,37,38,27,34,43,46,22),(4,'wangqian',33,34,36,35,44,45,27,34,29,43,44,40),(5,'wangwu',44,37,30,45,48,43,42,40,35,29,30,35),(6,'wangqian1',34,44,45,35,37,45,38,27,35,43,36,40),(7,'bosslin1',36,44,30,45,48,43,46,34,29,37,36,22),(8,'lintinger',36,49,45,33,47,45,42,29,35,34,45,24),(9,'wq1234',36,45,44,47,45,42,31,41,35,38,45,40),(10,'RubyL',29,33,35,45,43,37,45,46,35,26,46,48);
/*!40000 ALTER TABLE `constitution` ENABLE KEYS */;

#
# Structure for table "nutrition"
#

DROP TABLE IF EXISTS `nutrition`;
CREATE TABLE `nutrition` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `jan` int(11) DEFAULT NULL,
  `feb` int(11) DEFAULT NULL,
  `mar` int(11) DEFAULT NULL,
  `apr` int(11) DEFAULT NULL,
  `may` int(11) DEFAULT NULL,
  `june` int(11) DEFAULT NULL,
  `july` int(11) DEFAULT NULL,
  `aug` int(11) DEFAULT NULL,
  `sept` int(11) DEFAULT NULL,
  `oct` int(11) DEFAULT NULL,
  `nov` int(11) DEFAULT NULL,
  `dec` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "nutrition"
#

/*!40000 ALTER TABLE `nutrition` DISABLE KEYS */;
INSERT INTO `nutrition` VALUES (1,'zhangsan',37,44,43,42,38,35,30,40,44,38,35,43),(2,'lisi',39,43,45,37,29,42,43,47,35,35,44,41),(3,'bosslin',36,30,29,26,36,31,42,41,36,37,46,44),(4,'wangqian',35,46,47,48,37,39,33,37,35,40,41,36),(5,'wangwu',21,45,36,27,35,44,38,42,46,38,39,45),(6,'wangqian1',41,45,35,27,29,36,49,44,45,39,37,44),(7,'bosslin1',41,36,35,47,33,28,43,35,45,44,36,44),(8,'lintinger',34,45,36,35,27,43,35,46,37,39,46,37),(9,'wq1234',45,35,46,47,36,39,40,44,46,37,39,29),(10,'RubyL',34,34,44,45,33,35,27,43,35,46,37,39);
/*!40000 ALTER TABLE `nutrition` ENABLE KEYS */;

#
# Structure for table "user_tbl"
#

DROP TABLE IF EXISTS `user_tbl`;
CREATE TABLE `user_tbl` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `userpwd` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `usercld` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "user_tbl"
#

/*!40000 ALTER TABLE `user_tbl` DISABLE KEYS */;
INSERT INTO `user_tbl` VALUES (1,'zhangsan','123456','admin'),(2,'lisi','123456','user'),(3,'bosslin','123456','user'),(4,'wangqian','123456','user'),(5,'wangwu','123456','user'),(6,'wangqian1','123456','user'),(7,'bosslin1','123456','user'),(8,'lintinger','123456','user'),(9,'wq1234','123456','user'),(10,'RubyL','123456','user');
/*!40000 ALTER TABLE `user_tbl` ENABLE KEYS */;
