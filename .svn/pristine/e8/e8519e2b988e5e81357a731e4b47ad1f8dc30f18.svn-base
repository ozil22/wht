/*
Navicat MySQL Data Transfer

Source Server         : wht
Source Server Version : 50171
Source Host           : 211.149.241.17:3306
Source Database       : weihuotong123

Target Server Type    : MYSQL
Target Server Version : 50171
File Encoding         : 65001

Date: 2016-07-01 10:01:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_permission
-- ----------------------------
DROP TABLE IF EXISTS `t_permission`;
CREATE TABLE `t_permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `resource` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `resource` (`resource`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
