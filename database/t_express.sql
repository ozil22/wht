/*
Navicat MySQL Data Transfer

Source Server         : weihuotong
Source Server Version : 50171
Source Host           : 211.149.241.17:3306
Source Database       : weihuotong123

Target Server Type    : MYSQL
Target Server Version : 50171
File Encoding         : 65001

Date: 2016-07-06 16:37:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_express
-- ----------------------------
DROP TABLE IF EXISTS `t_express`;
CREATE TABLE `t_express` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_express
-- ----------------------------
INSERT INTO `t_express` VALUES ('1', '顺丰', 'shunfeng');
INSERT INTO `t_express` VALUES ('2', '圆通', 'yuantong');
INSERT INTO `t_express` VALUES ('3', '申通', 'shentong');
INSERT INTO `t_express` VALUES ('4', '中通', 'zhongtong');
INSERT INTO `t_express` VALUES ('6', '韵达', 'yunda');
INSERT INTO `t_express` VALUES ('5', '百世汇通', 'huitongkuaidi');
INSERT INTO `t_express` VALUES ('7', '国通', 'guotongkuaidi');
INSERT INTO `t_express` VALUES ('8', '天天', 'tiantian');
INSERT INTO `t_express` VALUES ('9', 'ems', 'EMS');
INSERT INTO `t_express` VALUES ('10', '邮政小包', 'youzhengguonei');
INSERT INTO `t_express` VALUES ('11', '运通', 'yuntongkuaidi');
INSERT INTO `t_express` VALUES ('12', '德邦物流', 'debangwuliu');
INSERT INTO `t_express` VALUES ('13', '全峰', 'quanfengkuaidi');
INSERT INTO `t_express` VALUES ('14', '如风达', 'rufengda');
INSERT INTO `t_express` VALUES ('15', '宅急送', 'zhaijisong');
