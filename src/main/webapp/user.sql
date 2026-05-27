

DROP DATABASE IF EXISTS `mydatabase`;
CREATE DATABASE `mydatabase` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `mydatabase`;


CREATE TABLE `user` (
  `Id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `password` varchar(255) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
INSERT INTO `user` VALUES (1,'张三','admin');
INSERT INTO `user` VALUES (2,'李四','wlw');
INSERT INTO `user` VALUES (3,'王五','zsf');
UNLOCK TABLES;

