/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50529
Source Host           : localhost:3306
Source Database       : wht

Target Server Type    : MYSQL
Target Server Version : 50529
File Encoding         : 65001

Date: 2016-06-23 15:49:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_adpositionid
-- ----------------------------
DROP TABLE IF EXISTS `t_adpositionid`;
CREATE TABLE `t_adpositionid` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL,
  `goodsType_id` bigint(20) DEFAULT NULL,
  `dayPrice` decimal(10,0) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_adpositionid
-- ----------------------------
INSERT INTO `t_adpositionid` VALUES ('1', '1', '0', '11');
INSERT INTO `t_adpositionid` VALUES ('2', '1', '0', '22');
INSERT INTO `t_adpositionid` VALUES ('3', '1', '0', '33');
INSERT INTO `t_adpositionid` VALUES ('4', '2', '1', '44');
INSERT INTO `t_adpositionid` VALUES ('5', '3', '1', '44');
INSERT INTO `t_adpositionid` VALUES ('6', '3', '1', '44');
INSERT INTO `t_adpositionid` VALUES ('7', '2', '2', '55');
INSERT INTO `t_adpositionid` VALUES ('8', '3', '2', '55');
INSERT INTO `t_adpositionid` VALUES ('9', '3', '2', '55');
INSERT INTO `t_adpositionid` VALUES ('10', '2', '3', '66');
INSERT INTO `t_adpositionid` VALUES ('11', '3', '3', '66');
INSERT INTO `t_adpositionid` VALUES ('12', '3', '3', '66');
INSERT INTO `t_adpositionid` VALUES ('13', '1', '1', '77');
INSERT INTO `t_adpositionid` VALUES ('14', '1', '1', '88');
INSERT INTO `t_adpositionid` VALUES ('15', '1', '2', '99');
INSERT INTO `t_adpositionid` VALUES ('16', '1', '2', '110');
INSERT INTO `t_adpositionid` VALUES ('17', '1', '3', '120');
INSERT INTO `t_adpositionid` VALUES ('18', '1', '3', '130');
