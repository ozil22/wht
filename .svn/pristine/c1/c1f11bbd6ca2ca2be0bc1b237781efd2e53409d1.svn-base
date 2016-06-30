/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : wht

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2016-05-18 17:28:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_promotionorder
-- ----------------------------
DROP TABLE IF EXISTS `t_promotionorder`;
CREATE TABLE `t_promotionorder` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `buyTime` datetime NOT NULL,
  `orderNum` varchar(255) NOT NULL,
  `state` int(11) NOT NULL,
  `totalPrice` decimal(10,0) DEFAULT NULL,
  `payPrice` decimal(10,0) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `promotion_id` bigint(20) DEFAULT NULL,
  `totalOrder_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
