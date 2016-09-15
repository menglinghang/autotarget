/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50625
Source Host           : localhost:3306
Source Database       : target

Target Server Type    : MYSQL
Target Server Version : 50625
File Encoding         : 65001

Date: 2016-09-07 17:31:08
*/

SET FOREIGN_KEY_CHECKS=0;

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
