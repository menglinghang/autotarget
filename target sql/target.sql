/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50625
Source Host           : localhost:3306
Source Database       : target

Target Server Type    : MYSQL
Target Server Version : 50625
File Encoding         : 65001

Date: 2016-09-05 08:30:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin_table
-- ----------------------------
DROP TABLE IF EXISTS `admin_table`;
CREATE TABLE `admin_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `userid` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `type` int(255) NOT NULL COMMENT '1:超级管理 ;0:普通管理',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_table
-- ----------------------------
INSERT INTO `admin_table` VALUES ('1', 'admin_name', 'admin', 'test', 'temp_null', null, '1');
INSERT INTO `admin_table` VALUES ('2', 'ad', 'ad', 'ad', 'ad', null, '1');
INSERT INTO `admin_table` VALUES ('3', '344', 'fj', '34', 'etrdf', null, '1');

-- ----------------------------
-- Table structure for statistic_table
-- ----------------------------
DROP TABLE IF EXISTS `statistic_table`;
CREATE TABLE `statistic_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `userid` varchar(255) NOT NULL COMMENT '用作登陆',
  `grade` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `administrator` varchar(255) NOT NULL COMMENT '负责人',
  `type` varchar(255) NOT NULL,
  `place` varchar(255) NOT NULL,
  `distance` double NOT NULL COMMENT '单位/米',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of statistic_table
-- ----------------------------
INSERT INTO `statistic_table` VALUES ('1', 'zhangsan', 'testid', '10', '2016-08-11', '1', '1', '1', '100');
INSERT INTO `statistic_table` VALUES ('2', 'lisi', '321', '9', '2016-08-24', '1', '1', '1', '100');
INSERT INTO `statistic_table` VALUES ('3', 'wangnima', 'hahah', '5', '2016-08-16', '1', '1', '1', '100');
INSERT INTO `statistic_table` VALUES ('4', 'menglinghang', 'jiejiao', '10', '2016-08-25', '1', '1', '1', '100');
INSERT INTO `statistic_table` VALUES ('5', 'zhangsan', 'testid', '9', '2016-08-24', '1', '1', '1', '100');
INSERT INTO `statistic_table` VALUES ('6', 'zhangsan', 'testid', '8', '2016-08-17', '1', '1', '1', '100');

-- ----------------------------
-- Table structure for user_table
-- ----------------------------
DROP TABLE IF EXISTS `user_table`;
CREATE TABLE `user_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `userid` varchar(255) NOT NULL,
  `number` int(11) NOT NULL,
  `password` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `office` varchar(255) NOT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_table
-- ----------------------------
INSERT INTO `user_table` VALUES ('1', 'testname', 'testid', '0', 'test', 'testdp', '123', null, '2016-08-05');
