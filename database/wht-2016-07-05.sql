/*
Navicat MySQL Data Transfer

Source Server         : weihuotong
Source Server Version : 50171
Source Host           : 211.149.241.17:3306
Source Database       : weihuotong123

Target Server Type    : MYSQL
Target Server Version : 50171
File Encoding         : 65001

Date: 2016-07-05 15:55:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_account
-- ----------------------------
DROP TABLE IF EXISTS `t_account`;
CREATE TABLE `t_account` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `balance` decimal(10,2) NOT NULL,
  `freezedAmount` decimal(10,2) NOT NULL,
  `proxyIncome` decimal(10,2) NOT NULL,
  `saleIncome` decimal(10,2) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `version` bigint(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_account
-- ----------------------------
INSERT INTO `t_account` VALUES ('16', '0.00', '0.00', '0.00', '0.00', '60', '13684258261', '0');
INSERT INTO `t_account` VALUES ('17', '0.00', '0.00', '0.00', '0.00', '61', '13684258261', '0');
INSERT INTO `t_account` VALUES ('18', '0.00', '0.00', '0.00', '0.00', '62', '13777480631', '0');
INSERT INTO `t_account` VALUES ('19', '98800.00', '100600.00', '99999999.99', '10000000.00', '63', '13684258261', '11');
INSERT INTO `t_account` VALUES ('20', '8800.00', '1200.00', '11111.00', '1111.00', '64', '17775528016', '13');
INSERT INTO `t_account` VALUES ('21', '0.00', '0.00', '0.00', '0.00', '65', '18683958857', '0');
INSERT INTO `t_account` VALUES ('22', '0.00', '0.00', '0.00', '0.00', '66', '13548065751', '0');
INSERT INTO `t_account` VALUES ('23', '163.00', '0.00', '0.00', '163.00', '67', '13548065751', '3');
INSERT INTO `t_account` VALUES ('24', '0.00', '56007080.00', '50.00', '50.00', '68', '18683958857', '4');
INSERT INTO `t_account` VALUES ('25', '0.00', '0.00', '0.00', '0.00', '69', '13012345678', '0');
INSERT INTO `t_account` VALUES ('26', '0.00', '0.00', '0.00', '0.00', '70', '13012345678', '0');
INSERT INTO `t_account` VALUES ('27', '0.00', '0.00', '0.00', '0.00', '71', '13980928652', '0');
INSERT INTO `t_account` VALUES ('28', '0.00', '0.00', '0.00', '0.00', '72', '13023456789', '0');

-- ----------------------------
-- Table structure for t_accountflow
-- ----------------------------
DROP TABLE IF EXISTS `t_accountflow`;
CREATE TABLE `t_accountflow` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `accountActionType` int(11) NOT NULL,
  `balance` decimal(10,2) NOT NULL,
  `freezedAmount` decimal(10,2) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `operateTime` datetime NOT NULL,
  `account_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_accountflow
-- ----------------------------
INSERT INTO `t_accountflow` VALUES ('28', '1', '86.00', '0.00', '86.00', '销售收入', '2016-06-27 14:30:05', '23');
INSERT INTO `t_accountflow` VALUES ('29', '1', '115.00', '0.00', '29.00', '销售收入', '2016-06-27 14:45:13', '23');
INSERT INTO `t_accountflow` VALUES ('30', '1', '163.00', '0.00', '48.00', '销售收入', '2016-06-28 14:05:50', '23');
INSERT INTO `t_accountflow` VALUES ('42', '2', '8800.00', '1200.00', '1000.00', '', '2016-07-01 11:31:46', '20');
INSERT INTO `t_accountflow` VALUES ('43', '2', '8800.00', '1200.00', '100.00', '账户提现', '2016-07-01 11:35:21', '20');
INSERT INTO `t_accountflow` VALUES ('44', '2', '8800.00', '1200.00', '100.00', '账户提现', '2016-07-01 11:52:59', '20');
INSERT INTO `t_accountflow` VALUES ('45', '2', '8800.00', '1200.00', '100.00', '账户提现', '2016-07-01 11:53:42', '20');
INSERT INTO `t_accountflow` VALUES ('46', '2', '8800.00', '1200.00', '100.00', '账户提现', '2016-07-01 11:55:12', '20');
INSERT INTO `t_accountflow` VALUES ('47', '2', '99800.00', '100600.00', '100.00', '账户提现', '2016-07-01 11:59:50', '19');
INSERT INTO `t_accountflow` VALUES ('48', '2', '99800.00', '100600.00', '100.00', '账户提现', '2016-07-01 12:00:23', '19');
INSERT INTO `t_accountflow` VALUES ('49', '2', '99800.00', '100600.00', '999.00', '账户提现', '2016-07-01 12:02:17', '19');
INSERT INTO `t_accountflow` VALUES ('50', '2', '99800.00', '100600.00', '600.00', '账户提现', '2016-07-01 12:04:35', '19');
INSERT INTO `t_accountflow` VALUES ('51', '2', '98800.00', '100600.00', '1000.00', '账户提现', '2016-07-01 12:06:51', '19');

-- ----------------------------
-- Table structure for t_address
-- ----------------------------
DROP TABLE IF EXISTS `t_address`;
CREATE TABLE `t_address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `defaultAddress` int(11) NOT NULL,
  `city_id` bigint(20) NOT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKD8948F5751726E53` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of t_address
-- ----------------------------
INSERT INTO `t_address` VALUES ('41', '李四', '13245678910', '哈哈街', '0', '248', null, '63');
INSERT INTO `t_address` VALUES ('49', '我们都', '2516611', 'u 啊就是', '1', '1', null, '65');
INSERT INTO `t_address` VALUES ('50', '彭泽刚', '13548065751', '金牛万达广场', '0', '248', null, '67');
INSERT INTO `t_address` VALUES ('51', '彭泽刚', '17775528016', 'logo 后', '1', '1', null, '67');
INSERT INTO `t_address` VALUES ('52', '张三', '13245678910', '昭觉寺', '1', '248', null, '64');
INSERT INTO `t_address` VALUES ('53', '你的', '111', '这样才', '1', '1', null, '68');
INSERT INTO `t_address` VALUES ('54', 'kkn', '1369852147', 'jjn', '1', '2', null, '70');
INSERT INTO `t_address` VALUES ('55', '也一样', '13980928652', '嘎嘎嘎', '1', '1', null, '71');
INSERT INTO `t_address` VALUES ('56', '薛大大', '13777480631', '江干区', '1', '99', null, '62');

-- ----------------------------
-- Table structure for t_adpositionid
-- ----------------------------
DROP TABLE IF EXISTS `t_adpositionid`;
CREATE TABLE `t_adpositionid` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL,
  `goodsType_id` bigint(20) DEFAULT NULL,
  `dayPrice` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_adpositionid
-- ----------------------------
INSERT INTO `t_adpositionid` VALUES ('1', '1', '0', '0.00');
INSERT INTO `t_adpositionid` VALUES ('4', '2', '1', '44.00');
INSERT INTO `t_adpositionid` VALUES ('5', '3', '1', '44.00');
INSERT INTO `t_adpositionid` VALUES ('6', '3', '1', '44.00');
INSERT INTO `t_adpositionid` VALUES ('7', '2', '2', '55.00');
INSERT INTO `t_adpositionid` VALUES ('8', '3', '2', '55.00');
INSERT INTO `t_adpositionid` VALUES ('9', '3', '2', '55.00');
INSERT INTO `t_adpositionid` VALUES ('10', '2', '3', '66.00');
INSERT INTO `t_adpositionid` VALUES ('11', '3', '3', '66.00');
INSERT INTO `t_adpositionid` VALUES ('12', '3', '3', '66.00');
INSERT INTO `t_adpositionid` VALUES ('13', '1', '1', '77.00');
INSERT INTO `t_adpositionid` VALUES ('14', '1', '1', '88.00');
INSERT INTO `t_adpositionid` VALUES ('15', '1', '2', '99.00');
INSERT INTO `t_adpositionid` VALUES ('16', '1', '2', '110.00');
INSERT INTO `t_adpositionid` VALUES ('17', '1', '3', '120.00');
INSERT INTO `t_adpositionid` VALUES ('18', '1', '3', '1.00');

-- ----------------------------
-- Table structure for t_article
-- ----------------------------
DROP TABLE IF EXISTS `t_article`;
CREATE TABLE `t_article` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `time` datetime NOT NULL,
  `commentNum` int(11) NOT NULL,
  `articleType_id` bigint(20) NOT NULL,
  `store_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_article
-- ----------------------------
INSERT INTO `t_article` VALUES ('12', '李四帅不帅', '李四帅不帅', '2016-06-24 16:29:57', '3', '2', '69');
INSERT INTO `t_article` VALUES ('13', '【品牌】：精品女装\n【价格】：￥90.00\n【时间】：2016-06-24\n【介绍】：(包邮）2016夏装新款时尚小香风印花背心上衣+高腰短裤套装\nM-L 上蓝下黑裤 上黄下黑裤', '【品牌】：精品女装\n【价格】：￥90.00\n【时间】：2016-06-24\n【介绍】：(包邮）2016夏装新款时尚小香风印花背心上衣+高腰短裤套装\nM-L 上蓝下黑裤 上黄下黑裤', '2016-06-26 00:35:37', '5', '3', '63');

-- ----------------------------
-- Table structure for t_articlecomment
-- ----------------------------
DROP TABLE IF EXISTS `t_articlecomment`;
CREATE TABLE `t_articlecomment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` text NOT NULL,
  `commentTime` datetime NOT NULL,
  `store_id` bigint(20) NOT NULL,
  `article_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_articlecomment
-- ----------------------------
INSERT INTO `t_articlecomment` VALUES ('46', '李四确实帅', '2016-06-24 16:30:17', '69', '12');
INSERT INTO `t_articlecomment` VALUES ('47', '哈哈哈', '2016-07-02 12:19:50', '84', '13');
INSERT INTO `t_articlecomment` VALUES ('48', '不', '2016-07-02 12:20:06', '84', '12');
INSERT INTO `t_articlecomment` VALUES ('49', '团', '2016-07-03 17:56:25', '63', '13');
INSERT INTO `t_articlecomment` VALUES ('50', '213', '2016-07-03 17:57:05', '63', '13');
INSERT INTO `t_articlecomment` VALUES ('51', '(✘﹏✘ა)', '2016-07-03 17:57:14', '63', '13');

-- ----------------------------
-- Table structure for t_articleimage
-- ----------------------------
DROP TABLE IF EXISTS `t_articleimage`;
CREATE TABLE `t_articleimage` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `src` varchar(100) NOT NULL,
  `article_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_articleimage
-- ----------------------------
INSERT INTO `t_articleimage` VALUES ('54', '/images/article/e5303dd3-5449-4416-aa45-cc86ffe590eb.jpg', '12');
INSERT INTO `t_articleimage` VALUES ('55', '/images/article/52d1cccb-7bde-467f-8627-80033d80f539.jpg', '12');
INSERT INTO `t_articleimage` VALUES ('56', '/images/article/a2e059c4-8d9b-429e-8a48-50955fc64bc4.jpg', '13');
INSERT INTO `t_articleimage` VALUES ('57', '/images/article/d7539fad-0a81-454a-8aed-9896429878fc.jpg', '13');
INSERT INTO `t_articleimage` VALUES ('58', '/images/article/6fe895ce-88cc-49d3-be4e-de7bda3fd88c.jpg', '13');
INSERT INTO `t_articleimage` VALUES ('59', '/images/article/2b8e8c9d-73d1-45b9-810b-3b0acdc59283.jpg', '13');
INSERT INTO `t_articleimage` VALUES ('60', '/images/article/a7272ebe-e281-49fc-8610-e9b5b4b90afb.jpg', '13');
INSERT INTO `t_articleimage` VALUES ('61', '/images/article/595ad962-6f11-4dcb-90ad-2541aa3e047a.jpg', '13');
INSERT INTO `t_articleimage` VALUES ('62', '/images/article/adfd0ed7-93c5-45c5-bd91-eebe09be480b.jpg', '13');
INSERT INTO `t_articleimage` VALUES ('63', '/images/article/eae1f191-7763-465e-ac44-58bf8fe0c07c.jpg', '13');
INSERT INTO `t_articleimage` VALUES ('64', '/images/article/a8f9b559-e182-4da7-8647-58ea44509ab2.jpg', '13');

-- ----------------------------
-- Table structure for t_articletype
-- ----------------------------
DROP TABLE IF EXISTS `t_articletype`;
CREATE TABLE `t_articletype` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_articletype
-- ----------------------------
INSERT INTO `t_articletype` VALUES ('1', '财经知识');
INSERT INTO `t_articletype` VALUES ('2', '产品评测');
INSERT INTO `t_articletype` VALUES ('3', '评价晒单');

-- ----------------------------
-- Table structure for t_bannerimage
-- ----------------------------
DROP TABLE IF EXISTS `t_bannerimage`;
CREATE TABLE `t_bannerimage` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `src` varchar(100) NOT NULL,
  `sort` int(11) DEFAULT NULL,
  `goods_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=369 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_bannerimage
-- ----------------------------
INSERT INTO `t_bannerimage` VALUES ('233', '/images/bannerImage/e5a3f76e-4148-461e-96ec-4a62462877c5.jpg', '99', '54');
INSERT INTO `t_bannerimage` VALUES ('234', '/images/bannerImage/1b7bf8a2-5f93-4855-ab6e-141943016212.jpg', '99', '54');
INSERT INTO `t_bannerimage` VALUES ('235', '/images/bannerImage/8f5098db-85df-4f4e-ab38-d850e3d3a042.jpg', '99', '54');
INSERT INTO `t_bannerimage` VALUES ('236', '/images/bannerImage/f3066627-d8b6-4f0a-9b92-a45d1c69734a.jpg', '99', '54');
INSERT INTO `t_bannerimage` VALUES ('237', '/images/bannerImage/124219ba-9a8d-45e9-8fe0-09185afd659f.jpg', '99', '54');
INSERT INTO `t_bannerimage` VALUES ('238', '/images/bannerImage/ec5b629d-b6e4-4e3b-943e-ef174c8f14d5.jpg', '99', '54');
INSERT INTO `t_bannerimage` VALUES ('239', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '99', '55');
INSERT INTO `t_bannerimage` VALUES ('240', '/images/bannerImage/1123f892-9b6f-4f22-8ccf-404cf9df6606.jpg', '99', '55');
INSERT INTO `t_bannerimage` VALUES ('241', '/images/bannerImage/5f638feb-7eb0-40b3-a799-68a48c58ac58.jpg', '99', '55');
INSERT INTO `t_bannerimage` VALUES ('242', '/images/bannerImage/ef3a549c-0d2f-457b-8014-e5a196f6cfef.jpg', '99', '55');
INSERT INTO `t_bannerimage` VALUES ('243', '/images/bannerImage/5a3b2e98-7611-4a1e-8f0c-c56ac34594bf.jpg', '99', '55');
INSERT INTO `t_bannerimage` VALUES ('244', '/images/bannerImage/2410b894-8be7-462b-918b-8f77c9b12959.jpg', '99', '55');
INSERT INTO `t_bannerimage` VALUES ('245', '/images/bannerImage/1a98e306-585b-43a4-a5d9-4e1f04ae907a.jpg', '99', '55');
INSERT INTO `t_bannerimage` VALUES ('246', '/images/bannerImage/3069224a-0736-4182-9e46-0f90d6b2edc4.jpg', '99', '55');
INSERT INTO `t_bannerimage` VALUES ('247', '/images/bannerImage/14c928ca-3154-4ae8-b02e-df77fa8db64b.jpg', '99', '55');
INSERT INTO `t_bannerimage` VALUES ('248', '/images/bannerImage/360a9882-e7d3-48ca-ae07-6dfda0cd2847.jpg', '99', '56');
INSERT INTO `t_bannerimage` VALUES ('249', '/images/bannerImage/57618421-3d33-4b54-958c-864200ba3fc2.jpg', '99', '56');
INSERT INTO `t_bannerimage` VALUES ('250', '/images/bannerImage/c842197c-baa8-46fa-91ad-1269e85e4ca1.jpg', '99', '56');
INSERT INTO `t_bannerimage` VALUES ('251', '/images/bannerImage/540034b5-05ff-4b2e-b1c1-e1635d625c44.jpg', '99', '58');
INSERT INTO `t_bannerimage` VALUES ('252', '/images/bannerImage/e0d2e7c7-ccd3-42c7-bc0d-f09ad8ab4862.jpg', '99', '58');
INSERT INTO `t_bannerimage` VALUES ('253', '/images/bannerImage/6a419ea1-1cf2-4b30-b055-1a6450705a64.jpg', '99', '60');
INSERT INTO `t_bannerimage` VALUES ('262', '/images/bannerImage/2251c3be-b3ae-4bf5-aa90-52b625f6777b.jpg', '99', '61');
INSERT INTO `t_bannerimage` VALUES ('263', '/images/bannerImage/e77c6fb7-aa79-4dce-a8f1-0f69f6b9854c.jpg', '99', '61');
INSERT INTO `t_bannerimage` VALUES ('264', '/images/bannerImage/c6710611-157b-432e-bcd0-7ce9ca6be8df.jpg', '99', '61');
INSERT INTO `t_bannerimage` VALUES ('265', '/images/bannerImage/ebee20c2-6af1-4dae-830f-714c99603d90.jpg', '99', '61');
INSERT INTO `t_bannerimage` VALUES ('266', '/images/bannerImage/5bc876a9-c9c1-483d-aa7e-9306a6f6b502.jpg', '99', '61');
INSERT INTO `t_bannerimage` VALUES ('267', '/images/bannerImage/a4dda6d3-843c-4541-bda9-fa274c23ccff.jpg', '99', '62');
INSERT INTO `t_bannerimage` VALUES ('268', '/images/bannerImage/0a2eaa22-6bcc-4820-9f3f-23f88cd02a3e.jpg', '99', '62');
INSERT INTO `t_bannerimage` VALUES ('269', '/images/bannerImage/78bd208e-9896-4a5c-9480-1956187076e2.jpg', '99', '62');
INSERT INTO `t_bannerimage` VALUES ('270', '/images/bannerImage/faa66375-367e-4b86-8aca-d7c89434e922.jpg', '99', '62');
INSERT INTO `t_bannerimage` VALUES ('271', '/images/bannerImage/6ad99d74-be2f-4567-a429-0ec4eda1e1ea.jpg', '99', '62');
INSERT INTO `t_bannerimage` VALUES ('272', '/images/bannerImage/0b96a1a8-f713-4de1-add7-39283cd4ed36.jpg', '99', '62');
INSERT INTO `t_bannerimage` VALUES ('273', '/images/bannerImage/3ed14299-f887-49b3-ab6e-3a863cce30ff.jpg', '99', '62');
INSERT INTO `t_bannerimage` VALUES ('274', '/images/bannerImage/162803dc-e6af-4e1f-862f-d8e09fc515d5.jpg', '99', '62');
INSERT INTO `t_bannerimage` VALUES ('275', '/images/bannerImage/7cd3551b-8f41-4b6a-8f34-9e4d37df5934.jpg', '99', '62');
INSERT INTO `t_bannerimage` VALUES ('284', '/images/bannerImage/e921005d-1de2-4ac9-befd-5a04797b3099.jpg', '99', '63');
INSERT INTO `t_bannerimage` VALUES ('285', '/images/bannerImage/7b8ab185-985b-4348-9755-53b92206278e.jpg', '99', '63');
INSERT INTO `t_bannerimage` VALUES ('286', '/images/bannerImage/a35ad0cf-8fa8-4c7d-9bc6-ec6e848d9460.jpg', '99', '63');
INSERT INTO `t_bannerimage` VALUES ('287', '/images/bannerImage/30456f3a-9f30-42a6-9244-80ce9bf4e9ff.jpg', '99', '63');
INSERT INTO `t_bannerimage` VALUES ('288', '/images/bannerImage/798d820a-764e-4837-a657-728aa5f6822a.jpg', '99', '63');
INSERT INTO `t_bannerimage` VALUES ('289', '/images/bannerImage/c2a7b361-9d2b-4982-b04e-a60ca01f34d0.jpg', '99', '63');
INSERT INTO `t_bannerimage` VALUES ('290', '/images/bannerImage/b8fd9531-a9a0-468c-9372-495c307978e4.jpg', '99', '63');
INSERT INTO `t_bannerimage` VALUES ('291', '/images/bannerImage/3c1d97d5-1c6f-4b31-a4d6-f45fae0c6b6e.jpg', '99', '63');
INSERT INTO `t_bannerimage` VALUES ('292', '/images/bannerImage/cf14172b-5d0c-44fd-ac80-787a8ea4d2fb.jpg', '99', '51');
INSERT INTO `t_bannerimage` VALUES ('293', '/images/bannerImage/12be0e85-3f51-4202-8e3b-11b21094cefc.jpg', '99', '51');
INSERT INTO `t_bannerimage` VALUES ('294', '/images/bannerImage/3f8ec5c0-e074-4bd2-a3ec-a2c7d37c092e.jpg', '99', '51');
INSERT INTO `t_bannerimage` VALUES ('295', '/images/bannerImage/2e09e8af-dc57-456b-9c43-3c1b7567b7f7.jpg', '99', '51');
INSERT INTO `t_bannerimage` VALUES ('296', '/images/bannerImage/da838840-b061-4879-9ebf-467f6110b07d.jpg', '99', '51');
INSERT INTO `t_bannerimage` VALUES ('303', '/images/bannerImage/8236ce67-2f8f-4a1b-8c26-824cc47cdb6a.gif', '99', '65');
INSERT INTO `t_bannerimage` VALUES ('304', '/images/bannerImage/e18355bd-e11f-4c18-8199-524f56374238.gif', '99', '65');
INSERT INTO `t_bannerimage` VALUES ('305', '/images/bannerImage/c4491494-ead0-43de-b065-40ccb7c6178f.jpg', '99', '66');
INSERT INTO `t_bannerimage` VALUES ('306', '/images/bannerImage/f9e359bf-b137-46bf-aa07-44df3697c477.jpg', '99', '66');
INSERT INTO `t_bannerimage` VALUES ('307', '/images/bannerImage/41ee8531-4953-40bb-bd48-64ccdaf1a963.jpg', '99', '66');
INSERT INTO `t_bannerimage` VALUES ('308', '/images/bannerImage/7f0456f0-a7ee-431b-a246-4c7d440fb290.jpg', '99', '66');
INSERT INTO `t_bannerimage` VALUES ('309', '/images/bannerImage/d46c342d-e4fe-4310-8eed-a3053ede96f4.jpg', '99', '66');
INSERT INTO `t_bannerimage` VALUES ('310', '/images/bannerImage/e7dceb81-13fb-426e-bea9-16b4ac271d64.jpg', '99', '66');
INSERT INTO `t_bannerimage` VALUES ('311', '/images/bannerImage/d8fcf7ca-f179-4253-90ec-78d6e1bda01a.jpg', '99', '66');
INSERT INTO `t_bannerimage` VALUES ('312', '/images/bannerImage/b2e893bb-cf92-48be-be97-8522861e0dd3.jpg', '99', '66');
INSERT INTO `t_bannerimage` VALUES ('313', '/images/bannerImage/4f0a4e72-78aa-4b56-bb34-3a02cdb2a21b.jpg', '99', '66');
INSERT INTO `t_bannerimage` VALUES ('323', '/images/bannerImage/5c547285-0081-4db4-94b4-cee546224c6c.jpg', '99', '68');
INSERT INTO `t_bannerimage` VALUES ('324', '/images/bannerImage/b6eda299-bbc2-46d3-aead-3eb0634248b5.jpg', '99', '68');
INSERT INTO `t_bannerimage` VALUES ('325', '/images/bannerImage/916d731e-3327-45ab-9ec5-8bceed2be9ba.jpg', '99', '68');
INSERT INTO `t_bannerimage` VALUES ('326', '/images/bannerImage/f9f451b9-1568-43dd-bcf2-f3feeb41abdc.jpg', '99', '68');
INSERT INTO `t_bannerimage` VALUES ('327', '/images/bannerImage/034d3a83-5649-4027-bb49-09143f5431a4.jpg', '99', '68');
INSERT INTO `t_bannerimage` VALUES ('328', '/images/bannerImage/59c8319d-a2db-478e-8b44-3e44659a6a9b.jpg', '99', '68');
INSERT INTO `t_bannerimage` VALUES ('329', '/images/bannerImage/3355c82b-bf66-48b2-816b-3c33ee1aba90.jpg', '99', '68');
INSERT INTO `t_bannerimage` VALUES ('330', '/images/bannerImage/19907d4b-d52b-4711-a4d4-f92b6f434977.jpg', '99', '68');
INSERT INTO `t_bannerimage` VALUES ('331', '/images/bannerImage/32bd72ab-6d35-4212-b859-906055edf122.jpg', '99', '68');
INSERT INTO `t_bannerimage` VALUES ('341', '/images/bannerImage/6c7f3782-480f-443b-a42e-ab4a6f6833fe.jpg', '99', '69');
INSERT INTO `t_bannerimage` VALUES ('342', '/images/bannerImage/7c815b48-42fd-4909-bdba-2968409620e4.jpg', '99', '69');
INSERT INTO `t_bannerimage` VALUES ('343', '/images/bannerImage/03ae289f-ce15-4ed2-8a97-fa1912da804f.jpg', '99', '69');
INSERT INTO `t_bannerimage` VALUES ('344', '/images/bannerImage/aad9d849-10b8-4b52-b0eb-acf8758d5c4c.jpg', '99', '69');
INSERT INTO `t_bannerimage` VALUES ('345', '/images/bannerImage/788210c6-8f28-46f7-a446-0943957f3c67.jpg', '99', '69');
INSERT INTO `t_bannerimage` VALUES ('346', '/images/bannerImage/cb1a6b35-7217-45eb-9027-d5e15bb7c220.jpg', '99', '69');
INSERT INTO `t_bannerimage` VALUES ('347', '/images/bannerImage/168b7e48-e92d-4fd7-bd70-7c9ebfaecaa6.jpg', '99', '69');
INSERT INTO `t_bannerimage` VALUES ('348', '/images/bannerImage/1b2729ed-9337-4c0d-a4d8-396a926168ca.jpg', '99', '69');
INSERT INTO `t_bannerimage` VALUES ('349', '/images/bannerImage/7d66001d-b7a1-4273-8d64-ce4977c6c76b.jpg', '99', '69');
INSERT INTO `t_bannerimage` VALUES ('359', '/images/bannerImage/0290cfea-22a2-4843-bf4c-cf2cdf42d145.jpg', '99', '67');
INSERT INTO `t_bannerimage` VALUES ('360', '/images/bannerImage/87eca50e-197d-43fb-b13c-617171c258e7.jpg', '99', '67');
INSERT INTO `t_bannerimage` VALUES ('361', '/images/bannerImage/399c6203-aa3c-470a-bcd0-1e1097b9c7d4.jpg', '99', '67');
INSERT INTO `t_bannerimage` VALUES ('362', '/images/bannerImage/5c9be7ab-a3d1-4596-b2a6-b39c1db8a6bd.jpg', '99', '67');
INSERT INTO `t_bannerimage` VALUES ('363', '/images/bannerImage/358681f8-289e-4c38-8f66-59ecd3cec59b.jpg', '99', '67');
INSERT INTO `t_bannerimage` VALUES ('364', '/images/bannerImage/2952d511-91a0-4be4-90c8-a7aa36c497e5.jpg', '99', '67');
INSERT INTO `t_bannerimage` VALUES ('365', '/images/bannerImage/effbebea-9e41-49d9-a1cf-792077ea5087.jpg', '99', '67');
INSERT INTO `t_bannerimage` VALUES ('366', '/images/bannerImage/f2367645-3faa-4d6e-9f99-bf41608d8f59.jpg', '99', '67');
INSERT INTO `t_bannerimage` VALUES ('367', '/images/bannerImage/8cb299c9-768f-45f6-9763-439bfabaf144.jpg', '99', '67');
INSERT INTO `t_bannerimage` VALUES ('368', '/images/bannerImage/f6622086-dd2e-4720-84c8-964b75af1582.jpg', '99', '70');

-- ----------------------------
-- Table structure for t_brand
-- ----------------------------
DROP TABLE IF EXISTS `t_brand`;
CREATE TABLE `t_brand` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `pinYin` varchar(10) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_brand
-- ----------------------------
INSERT INTO `t_brand` VALUES ('1', '韩都衣舍', 'H', '/images/brandImage/20160413-180657.jpg');
INSERT INTO `t_brand` VALUES ('2', '优衣库', 'Y', '/images/brandImage/20160413-175740.jpg');

-- ----------------------------
-- Table structure for t_city
-- ----------------------------
DROP TABLE IF EXISTS `t_city`;
CREATE TABLE `t_city` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `province_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK2E996BE813D513` (`province_id`)
) ENGINE=InnoDB AUTO_INCREMENT=392 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of t_city
-- ----------------------------
INSERT INTO `t_city` VALUES ('1', '北京市', '1');
INSERT INTO `t_city` VALUES ('2', '天津市', '2');
INSERT INTO `t_city` VALUES ('3', '上海市', '3');
INSERT INTO `t_city` VALUES ('4', '重庆市', '4');
INSERT INTO `t_city` VALUES ('5', '石家庄市', '5');
INSERT INTO `t_city` VALUES ('6', '唐山市', '5');
INSERT INTO `t_city` VALUES ('7', '秦皇岛市', '5');
INSERT INTO `t_city` VALUES ('8', '邯郸市', '5');
INSERT INTO `t_city` VALUES ('9', '邢台市', '5');
INSERT INTO `t_city` VALUES ('10', '保定市', '5');
INSERT INTO `t_city` VALUES ('11', '张家口市', '5');
INSERT INTO `t_city` VALUES ('12', '承德市', '5');
INSERT INTO `t_city` VALUES ('13', '沧州市', '5');
INSERT INTO `t_city` VALUES ('14', '廊坊市', '5');
INSERT INTO `t_city` VALUES ('15', '衡水市', '5');
INSERT INTO `t_city` VALUES ('16', '太原市', '6');
INSERT INTO `t_city` VALUES ('17', '大同市', '6');
INSERT INTO `t_city` VALUES ('18', '阳泉市', '6');
INSERT INTO `t_city` VALUES ('19', '长治市', '6');
INSERT INTO `t_city` VALUES ('20', '晋城市', '6');
INSERT INTO `t_city` VALUES ('21', '朔州市', '6');
INSERT INTO `t_city` VALUES ('22', '晋中市', '6');
INSERT INTO `t_city` VALUES ('23', '运城市', '6');
INSERT INTO `t_city` VALUES ('24', '忻州市', '6');
INSERT INTO `t_city` VALUES ('25', '临汾市', '6');
INSERT INTO `t_city` VALUES ('26', '吕梁市', '6');
INSERT INTO `t_city` VALUES ('27', '台北市', '7');
INSERT INTO `t_city` VALUES ('28', '高雄市', '7');
INSERT INTO `t_city` VALUES ('29', '基隆市', '7');
INSERT INTO `t_city` VALUES ('30', '台中市', '7');
INSERT INTO `t_city` VALUES ('31', '台南市', '7');
INSERT INTO `t_city` VALUES ('32', '新竹市', '7');
INSERT INTO `t_city` VALUES ('33', '嘉义市', '7');
INSERT INTO `t_city` VALUES ('34', '台北县', '7');
INSERT INTO `t_city` VALUES ('35', '宜兰县', '7');
INSERT INTO `t_city` VALUES ('36', '桃园县', '7');
INSERT INTO `t_city` VALUES ('37', '新竹县', '7');
INSERT INTO `t_city` VALUES ('38', '苗栗县', '7');
INSERT INTO `t_city` VALUES ('39', '台中县', '7');
INSERT INTO `t_city` VALUES ('40', '彰化县', '7');
INSERT INTO `t_city` VALUES ('41', '南投县', '7');
INSERT INTO `t_city` VALUES ('42', '云林县', '7');
INSERT INTO `t_city` VALUES ('43', '嘉义县', '7');
INSERT INTO `t_city` VALUES ('44', '台南县', '7');
INSERT INTO `t_city` VALUES ('45', '高雄县', '7');
INSERT INTO `t_city` VALUES ('46', '屏东县', '7');
INSERT INTO `t_city` VALUES ('47', '澎湖县', '7');
INSERT INTO `t_city` VALUES ('48', '台东县', '7');
INSERT INTO `t_city` VALUES ('49', '花莲县', '7');
INSERT INTO `t_city` VALUES ('50', '沈阳市', '8');
INSERT INTO `t_city` VALUES ('51', '大连市', '8');
INSERT INTO `t_city` VALUES ('52', '鞍山市', '8');
INSERT INTO `t_city` VALUES ('53', '抚顺市', '8');
INSERT INTO `t_city` VALUES ('54', '本溪市', '8');
INSERT INTO `t_city` VALUES ('55', '丹东市', '8');
INSERT INTO `t_city` VALUES ('56', '锦州市', '8');
INSERT INTO `t_city` VALUES ('57', '营口市', '8');
INSERT INTO `t_city` VALUES ('58', '阜新市', '8');
INSERT INTO `t_city` VALUES ('59', '辽阳市', '8');
INSERT INTO `t_city` VALUES ('60', '盘锦市', '8');
INSERT INTO `t_city` VALUES ('61', '铁岭市', '8');
INSERT INTO `t_city` VALUES ('62', '朝阳市', '8');
INSERT INTO `t_city` VALUES ('63', '葫芦岛市', '8');
INSERT INTO `t_city` VALUES ('64', '长春市', '9');
INSERT INTO `t_city` VALUES ('65', '吉林市', '9');
INSERT INTO `t_city` VALUES ('66', '四平市', '9');
INSERT INTO `t_city` VALUES ('67', '辽源市', '9');
INSERT INTO `t_city` VALUES ('68', '通化市', '9');
INSERT INTO `t_city` VALUES ('69', '白山市', '9');
INSERT INTO `t_city` VALUES ('70', '松原市', '9');
INSERT INTO `t_city` VALUES ('71', '白城市', '9');
INSERT INTO `t_city` VALUES ('72', '延边朝鲜族自治州', '9');
INSERT INTO `t_city` VALUES ('73', '哈尔滨市', '10');
INSERT INTO `t_city` VALUES ('74', '齐齐哈尔市', '10');
INSERT INTO `t_city` VALUES ('75', '鹤岗市', '10');
INSERT INTO `t_city` VALUES ('76', '双鸭山市', '10');
INSERT INTO `t_city` VALUES ('77', '鸡市', '10');
INSERT INTO `t_city` VALUES ('78', '大庆市', '10');
INSERT INTO `t_city` VALUES ('79', '伊春市', '10');
INSERT INTO `t_city` VALUES ('80', '牡丹江市', '10');
INSERT INTO `t_city` VALUES ('81', '佳木斯市', '10');
INSERT INTO `t_city` VALUES ('82', '七台河市', '10');
INSERT INTO `t_city` VALUES ('83', '黑河市', '10');
INSERT INTO `t_city` VALUES ('84', '绥化市', '10');
INSERT INTO `t_city` VALUES ('85', '大兴安岭地区', '10');
INSERT INTO `t_city` VALUES ('86', '南京市', '11');
INSERT INTO `t_city` VALUES ('87', '无锡市', '11');
INSERT INTO `t_city` VALUES ('88', '徐州市', '11');
INSERT INTO `t_city` VALUES ('89', '常州市', '11');
INSERT INTO `t_city` VALUES ('90', '苏州市', '11');
INSERT INTO `t_city` VALUES ('91', '南通市', '11');
INSERT INTO `t_city` VALUES ('92', '连云港市', '11');
INSERT INTO `t_city` VALUES ('93', '淮安市', '11');
INSERT INTO `t_city` VALUES ('94', '盐城市', '11');
INSERT INTO `t_city` VALUES ('95', '扬州市', '11');
INSERT INTO `t_city` VALUES ('96', '镇江市', '11');
INSERT INTO `t_city` VALUES ('97', '泰州市', '11');
INSERT INTO `t_city` VALUES ('98', '宿迁市', '11');
INSERT INTO `t_city` VALUES ('99', '杭州市', '12');
INSERT INTO `t_city` VALUES ('100', '宁波市', '12');
INSERT INTO `t_city` VALUES ('101', '温州市', '12');
INSERT INTO `t_city` VALUES ('102', '嘉兴市', '12');
INSERT INTO `t_city` VALUES ('103', '湖州市', '12');
INSERT INTO `t_city` VALUES ('104', '绍兴市', '12');
INSERT INTO `t_city` VALUES ('105', '金华市', '12');
INSERT INTO `t_city` VALUES ('106', '衢州市', '12');
INSERT INTO `t_city` VALUES ('107', '舟山市', '12');
INSERT INTO `t_city` VALUES ('108', '台州市', '12');
INSERT INTO `t_city` VALUES ('109', '丽水市', '12');
INSERT INTO `t_city` VALUES ('110', '合肥市', '13');
INSERT INTO `t_city` VALUES ('111', '芜湖市', '13');
INSERT INTO `t_city` VALUES ('112', '蚌埠市', '13');
INSERT INTO `t_city` VALUES ('113', '淮南市', '13');
INSERT INTO `t_city` VALUES ('114', '马鞍山市', '13');
INSERT INTO `t_city` VALUES ('115', '淮北市', '13');
INSERT INTO `t_city` VALUES ('116', '铜陵市', '13');
INSERT INTO `t_city` VALUES ('117', '安庆市', '13');
INSERT INTO `t_city` VALUES ('118', '黄山市', '13');
INSERT INTO `t_city` VALUES ('119', '滁州市', '13');
INSERT INTO `t_city` VALUES ('120', '阜阳市', '13');
INSERT INTO `t_city` VALUES ('121', '宿州市', '13');
INSERT INTO `t_city` VALUES ('122', '巢湖市', '13');
INSERT INTO `t_city` VALUES ('123', '六安市', '13');
INSERT INTO `t_city` VALUES ('124', '亳州市', '13');
INSERT INTO `t_city` VALUES ('125', '池州市', '13');
INSERT INTO `t_city` VALUES ('126', '宣城市', '13');
INSERT INTO `t_city` VALUES ('127', '福州市', '14');
INSERT INTO `t_city` VALUES ('128', '厦门市', '14');
INSERT INTO `t_city` VALUES ('129', '莆田市', '14');
INSERT INTO `t_city` VALUES ('130', '三明市', '14');
INSERT INTO `t_city` VALUES ('131', '泉州市', '14');
INSERT INTO `t_city` VALUES ('132', '漳州市', '14');
INSERT INTO `t_city` VALUES ('133', '南平市', '14');
INSERT INTO `t_city` VALUES ('134', '龙岩市', '14');
INSERT INTO `t_city` VALUES ('135', '宁德市', '14');
INSERT INTO `t_city` VALUES ('136', '南昌市', '15');
INSERT INTO `t_city` VALUES ('137', '景德镇市', '15');
INSERT INTO `t_city` VALUES ('138', '萍乡市', '15');
INSERT INTO `t_city` VALUES ('139', '九江市', '15');
INSERT INTO `t_city` VALUES ('140', '新余市', '15');
INSERT INTO `t_city` VALUES ('141', '鹰潭市', '15');
INSERT INTO `t_city` VALUES ('142', '赣州市', '15');
INSERT INTO `t_city` VALUES ('143', '吉安市', '15');
INSERT INTO `t_city` VALUES ('144', '宜春市', '15');
INSERT INTO `t_city` VALUES ('145', '抚州市', '15');
INSERT INTO `t_city` VALUES ('146', '上饶市', '15');
INSERT INTO `t_city` VALUES ('147', '济南市', '16');
INSERT INTO `t_city` VALUES ('148', '青岛市', '16');
INSERT INTO `t_city` VALUES ('149', '淄博市', '16');
INSERT INTO `t_city` VALUES ('150', '枣庄市', '16');
INSERT INTO `t_city` VALUES ('151', '东营市', '16');
INSERT INTO `t_city` VALUES ('152', '烟台市', '16');
INSERT INTO `t_city` VALUES ('153', '潍坊市', '16');
INSERT INTO `t_city` VALUES ('154', '济宁市', '16');
INSERT INTO `t_city` VALUES ('155', '泰安市', '16');
INSERT INTO `t_city` VALUES ('156', '威海市', '16');
INSERT INTO `t_city` VALUES ('157', '日照市', '16');
INSERT INTO `t_city` VALUES ('158', '莱芜市', '16');
INSERT INTO `t_city` VALUES ('159', '临沂市', '16');
INSERT INTO `t_city` VALUES ('160', '德州市', '16');
INSERT INTO `t_city` VALUES ('161', '聊城市', '16');
INSERT INTO `t_city` VALUES ('162', '滨州市', '16');
INSERT INTO `t_city` VALUES ('163', '菏泽市', '16');
INSERT INTO `t_city` VALUES ('164', '郑州市', '17');
INSERT INTO `t_city` VALUES ('165', '开封市', '17');
INSERT INTO `t_city` VALUES ('166', '洛阳市', '17');
INSERT INTO `t_city` VALUES ('167', '平顶山市', '17');
INSERT INTO `t_city` VALUES ('168', '安阳市', '17');
INSERT INTO `t_city` VALUES ('169', '鹤壁市', '17');
INSERT INTO `t_city` VALUES ('170', '新乡市', '17');
INSERT INTO `t_city` VALUES ('171', '焦作市', '17');
INSERT INTO `t_city` VALUES ('172', '濮阳市', '17');
INSERT INTO `t_city` VALUES ('173', '许昌市', '17');
INSERT INTO `t_city` VALUES ('174', '漯河市', '17');
INSERT INTO `t_city` VALUES ('175', '三门峡市', '17');
INSERT INTO `t_city` VALUES ('176', '南阳市', '17');
INSERT INTO `t_city` VALUES ('177', '商丘市', '17');
INSERT INTO `t_city` VALUES ('178', '信阳市', '17');
INSERT INTO `t_city` VALUES ('179', '周口市', '17');
INSERT INTO `t_city` VALUES ('180', '驻马店市', '17');
INSERT INTO `t_city` VALUES ('181', '济源市', '17');
INSERT INTO `t_city` VALUES ('182', '武汉市', '18');
INSERT INTO `t_city` VALUES ('183', '黄石市', '18');
INSERT INTO `t_city` VALUES ('184', '十堰市', '18');
INSERT INTO `t_city` VALUES ('185', '荆州市', '18');
INSERT INTO `t_city` VALUES ('186', '宜昌市', '18');
INSERT INTO `t_city` VALUES ('187', '襄樊市', '18');
INSERT INTO `t_city` VALUES ('188', '鄂州市', '18');
INSERT INTO `t_city` VALUES ('189', '荆门市', '18');
INSERT INTO `t_city` VALUES ('190', '孝感市', '18');
INSERT INTO `t_city` VALUES ('191', '黄冈市', '18');
INSERT INTO `t_city` VALUES ('192', '咸宁市', '18');
INSERT INTO `t_city` VALUES ('193', '随州市', '18');
INSERT INTO `t_city` VALUES ('194', '仙桃市', '18');
INSERT INTO `t_city` VALUES ('195', '天门市', '18');
INSERT INTO `t_city` VALUES ('196', '潜江市', '18');
INSERT INTO `t_city` VALUES ('197', '神农架林区', '18');
INSERT INTO `t_city` VALUES ('198', '恩施土家族苗族自治州', '18');
INSERT INTO `t_city` VALUES ('199', '长沙市', '19');
INSERT INTO `t_city` VALUES ('200', '株洲市', '19');
INSERT INTO `t_city` VALUES ('201', '湘潭市', '19');
INSERT INTO `t_city` VALUES ('202', '衡阳市', '19');
INSERT INTO `t_city` VALUES ('203', '邵阳市', '19');
INSERT INTO `t_city` VALUES ('204', '岳阳市', '19');
INSERT INTO `t_city` VALUES ('205', '常德市', '19');
INSERT INTO `t_city` VALUES ('206', '张家界市', '19');
INSERT INTO `t_city` VALUES ('207', '益阳市', '19');
INSERT INTO `t_city` VALUES ('208', '郴州市', '19');
INSERT INTO `t_city` VALUES ('209', '永州市', '19');
INSERT INTO `t_city` VALUES ('210', '怀化市', '19');
INSERT INTO `t_city` VALUES ('211', '娄底市', '19');
INSERT INTO `t_city` VALUES ('212', '湘西土家族苗族自治州', '19');
INSERT INTO `t_city` VALUES ('213', '广州市', '20');
INSERT INTO `t_city` VALUES ('214', '深圳市', '20');
INSERT INTO `t_city` VALUES ('215', '珠海市', '20');
INSERT INTO `t_city` VALUES ('216', '汕头市', '20');
INSERT INTO `t_city` VALUES ('217', '韶关市', '20');
INSERT INTO `t_city` VALUES ('218', '佛山市', '20');
INSERT INTO `t_city` VALUES ('219', '江门市', '20');
INSERT INTO `t_city` VALUES ('220', '湛江市', '20');
INSERT INTO `t_city` VALUES ('221', '茂名市', '20');
INSERT INTO `t_city` VALUES ('222', '肇庆市', '20');
INSERT INTO `t_city` VALUES ('223', '惠州市', '20');
INSERT INTO `t_city` VALUES ('224', '梅州市', '20');
INSERT INTO `t_city` VALUES ('225', '汕尾市', '20');
INSERT INTO `t_city` VALUES ('226', '河源市', '20');
INSERT INTO `t_city` VALUES ('227', '阳江市', '20');
INSERT INTO `t_city` VALUES ('228', '清远市', '20');
INSERT INTO `t_city` VALUES ('229', '东莞市', '20');
INSERT INTO `t_city` VALUES ('230', '中山市', '20');
INSERT INTO `t_city` VALUES ('231', '潮州市', '20');
INSERT INTO `t_city` VALUES ('232', '揭阳市', '20');
INSERT INTO `t_city` VALUES ('233', '云浮市', '20');
INSERT INTO `t_city` VALUES ('234', '兰州市', '21');
INSERT INTO `t_city` VALUES ('235', '金昌市', '21');
INSERT INTO `t_city` VALUES ('236', '白银市', '21');
INSERT INTO `t_city` VALUES ('237', '天水市', '21');
INSERT INTO `t_city` VALUES ('238', '嘉峪关市', '21');
INSERT INTO `t_city` VALUES ('239', '武威市', '21');
INSERT INTO `t_city` VALUES ('240', '张掖市', '21');
INSERT INTO `t_city` VALUES ('241', '平凉市', '21');
INSERT INTO `t_city` VALUES ('242', '酒泉市', '21');
INSERT INTO `t_city` VALUES ('243', '庆阳市', '21');
INSERT INTO `t_city` VALUES ('244', '定西市', '21');
INSERT INTO `t_city` VALUES ('245', '陇南市', '21');
INSERT INTO `t_city` VALUES ('246', '临夏回族自治州', '21');
INSERT INTO `t_city` VALUES ('247', '甘南藏族自治州', '21');
INSERT INTO `t_city` VALUES ('248', '成都市', '22');
INSERT INTO `t_city` VALUES ('249', '自贡市', '22');
INSERT INTO `t_city` VALUES ('250', '攀枝花市', '22');
INSERT INTO `t_city` VALUES ('251', '泸州市', '22');
INSERT INTO `t_city` VALUES ('252', '德阳市', '22');
INSERT INTO `t_city` VALUES ('253', '绵阳市', '22');
INSERT INTO `t_city` VALUES ('254', '广元市', '22');
INSERT INTO `t_city` VALUES ('255', '遂宁市', '22');
INSERT INTO `t_city` VALUES ('256', '内江市', '22');
INSERT INTO `t_city` VALUES ('257', '乐山市', '22');
INSERT INTO `t_city` VALUES ('258', '南充市', '22');
INSERT INTO `t_city` VALUES ('259', '眉山市', '22');
INSERT INTO `t_city` VALUES ('260', '宜宾市', '22');
INSERT INTO `t_city` VALUES ('261', '广安市', '22');
INSERT INTO `t_city` VALUES ('262', '达州市', '22');
INSERT INTO `t_city` VALUES ('263', '雅安市', '22');
INSERT INTO `t_city` VALUES ('264', '巴中市', '22');
INSERT INTO `t_city` VALUES ('265', '资阳市', '22');
INSERT INTO `t_city` VALUES ('266', '阿坝藏族羌族自治州', '22');
INSERT INTO `t_city` VALUES ('267', '甘孜藏族自治州', '22');
INSERT INTO `t_city` VALUES ('268', '凉山彝族自治州', '22');
INSERT INTO `t_city` VALUES ('269', '贵阳市', '24');
INSERT INTO `t_city` VALUES ('270', '六盘水市', '24');
INSERT INTO `t_city` VALUES ('271', '遵义市', '24');
INSERT INTO `t_city` VALUES ('272', '安顺市', '24');
INSERT INTO `t_city` VALUES ('273', '铜仁地区', '24');
INSERT INTO `t_city` VALUES ('274', '毕节地区', '24');
INSERT INTO `t_city` VALUES ('275', '黔西南布依族苗族自治州', '24');
INSERT INTO `t_city` VALUES ('276', '黔东南苗族侗族自治州', '24');
INSERT INTO `t_city` VALUES ('277', '黔南布依族苗族自治州', '24');
INSERT INTO `t_city` VALUES ('278', '海口市', '25');
INSERT INTO `t_city` VALUES ('279', '三亚市', '25');
INSERT INTO `t_city` VALUES ('280', '五指山市', '25');
INSERT INTO `t_city` VALUES ('281', '琼海市', '25');
INSERT INTO `t_city` VALUES ('282', '儋州市', '25');
INSERT INTO `t_city` VALUES ('283', '文昌市', '25');
INSERT INTO `t_city` VALUES ('284', '万宁市', '25');
INSERT INTO `t_city` VALUES ('285', '东方市', '25');
INSERT INTO `t_city` VALUES ('286', '澄迈县', '25');
INSERT INTO `t_city` VALUES ('287', '定安县', '25');
INSERT INTO `t_city` VALUES ('288', '屯昌县', '25');
INSERT INTO `t_city` VALUES ('289', '临高县', '25');
INSERT INTO `t_city` VALUES ('290', '白沙黎族自治县', '25');
INSERT INTO `t_city` VALUES ('291', '昌江黎族自治县', '25');
INSERT INTO `t_city` VALUES ('292', '乐东黎族自治县', '25');
INSERT INTO `t_city` VALUES ('293', '陵水黎族自治县', '25');
INSERT INTO `t_city` VALUES ('294', '保亭黎族苗族自治县', '25');
INSERT INTO `t_city` VALUES ('295', '琼中黎族苗族自治县', '25');
INSERT INTO `t_city` VALUES ('296', '昆明市', '26');
INSERT INTO `t_city` VALUES ('297', '曲靖市', '26');
INSERT INTO `t_city` VALUES ('298', '玉溪市', '26');
INSERT INTO `t_city` VALUES ('299', '保山市', '26');
INSERT INTO `t_city` VALUES ('300', '昭通市', '26');
INSERT INTO `t_city` VALUES ('301', '丽江市', '26');
INSERT INTO `t_city` VALUES ('302', '思茅市', '26');
INSERT INTO `t_city` VALUES ('303', '临沧市', '26');
INSERT INTO `t_city` VALUES ('304', '文山壮族苗族自治州', '26');
INSERT INTO `t_city` VALUES ('305', '红河哈尼族彝族自治州', '26');
INSERT INTO `t_city` VALUES ('306', '西双版纳傣族自治州', '26');
INSERT INTO `t_city` VALUES ('307', '楚雄彝族自治州', '26');
INSERT INTO `t_city` VALUES ('308', '大理白族自治州', '26');
INSERT INTO `t_city` VALUES ('309', '德宏傣族景颇族自治州', '26');
INSERT INTO `t_city` VALUES ('310', '怒江傈傈族自治州', '26');
INSERT INTO `t_city` VALUES ('311', '迪庆藏族自治州', '26');
INSERT INTO `t_city` VALUES ('312', '西宁市', '27');
INSERT INTO `t_city` VALUES ('313', '海东地区', '27');
INSERT INTO `t_city` VALUES ('314', '海北藏族自治州', '27');
INSERT INTO `t_city` VALUES ('315', '黄南藏族自治州', '27');
INSERT INTO `t_city` VALUES ('316', '海南藏族自治州', '27');
INSERT INTO `t_city` VALUES ('317', '果洛藏族自治州', '27');
INSERT INTO `t_city` VALUES ('318', '玉树藏族自治州', '27');
INSERT INTO `t_city` VALUES ('319', '海西蒙古族藏族自治州', '27');
INSERT INTO `t_city` VALUES ('320', '西安市', '28');
INSERT INTO `t_city` VALUES ('321', '铜川市', '28');
INSERT INTO `t_city` VALUES ('322', '宝鸡市', '28');
INSERT INTO `t_city` VALUES ('323', '咸阳市', '28');
INSERT INTO `t_city` VALUES ('324', '渭南市', '28');
INSERT INTO `t_city` VALUES ('325', '延安市', '28');
INSERT INTO `t_city` VALUES ('326', '汉中市', '28');
INSERT INTO `t_city` VALUES ('327', '榆林市', '28');
INSERT INTO `t_city` VALUES ('328', '安康市', '28');
INSERT INTO `t_city` VALUES ('329', '商洛市', '28');
INSERT INTO `t_city` VALUES ('330', '南宁市', '29');
INSERT INTO `t_city` VALUES ('331', '柳州市', '29');
INSERT INTO `t_city` VALUES ('332', '桂林市', '29');
INSERT INTO `t_city` VALUES ('333', '梧州市', '29');
INSERT INTO `t_city` VALUES ('334', '北海市', '29');
INSERT INTO `t_city` VALUES ('335', '防城港市', '29');
INSERT INTO `t_city` VALUES ('336', '钦州市', '29');
INSERT INTO `t_city` VALUES ('337', '贵港市', '29');
INSERT INTO `t_city` VALUES ('338', '玉林市', '29');
INSERT INTO `t_city` VALUES ('339', '百色市', '29');
INSERT INTO `t_city` VALUES ('340', '贺州市', '29');
INSERT INTO `t_city` VALUES ('341', '河池市', '29');
INSERT INTO `t_city` VALUES ('342', '来宾市', '29');
INSERT INTO `t_city` VALUES ('343', '崇左市', '29');
INSERT INTO `t_city` VALUES ('344', '拉萨市', '30');
INSERT INTO `t_city` VALUES ('345', '那曲地区', '30');
INSERT INTO `t_city` VALUES ('346', '昌都地区', '30');
INSERT INTO `t_city` VALUES ('347', '山南地区', '30');
INSERT INTO `t_city` VALUES ('348', '日喀则地区', '30');
INSERT INTO `t_city` VALUES ('349', '阿里地区', '30');
INSERT INTO `t_city` VALUES ('350', '林芝地区', '30');
INSERT INTO `t_city` VALUES ('351', '银川市', '31');
INSERT INTO `t_city` VALUES ('352', '石嘴山市', '31');
INSERT INTO `t_city` VALUES ('353', '吴忠市', '31');
INSERT INTO `t_city` VALUES ('354', '固原市', '31');
INSERT INTO `t_city` VALUES ('355', '中卫市', '31');
INSERT INTO `t_city` VALUES ('356', '乌鲁木齐市', '32');
INSERT INTO `t_city` VALUES ('357', '克拉玛依市', '32');
INSERT INTO `t_city` VALUES ('358', '石河子市　', '32');
INSERT INTO `t_city` VALUES ('359', '阿拉尔市', '32');
INSERT INTO `t_city` VALUES ('360', '图木舒克市', '32');
INSERT INTO `t_city` VALUES ('361', '五家渠市', '32');
INSERT INTO `t_city` VALUES ('362', '吐鲁番市', '32');
INSERT INTO `t_city` VALUES ('363', '阿克苏市', '32');
INSERT INTO `t_city` VALUES ('364', '喀什市', '32');
INSERT INTO `t_city` VALUES ('365', '哈密市', '32');
INSERT INTO `t_city` VALUES ('366', '和田市', '32');
INSERT INTO `t_city` VALUES ('367', '阿图什市', '32');
INSERT INTO `t_city` VALUES ('368', '库尔勒市', '32');
INSERT INTO `t_city` VALUES ('369', '昌吉市　', '32');
INSERT INTO `t_city` VALUES ('370', '阜康市', '32');
INSERT INTO `t_city` VALUES ('371', '米泉市', '32');
INSERT INTO `t_city` VALUES ('372', '博乐市', '32');
INSERT INTO `t_city` VALUES ('373', '伊宁市', '32');
INSERT INTO `t_city` VALUES ('374', '奎屯市', '32');
INSERT INTO `t_city` VALUES ('375', '塔城市', '32');
INSERT INTO `t_city` VALUES ('376', '乌苏市', '32');
INSERT INTO `t_city` VALUES ('377', '阿勒泰市', '32');
INSERT INTO `t_city` VALUES ('378', '呼和浩特市', '33');
INSERT INTO `t_city` VALUES ('379', '包头市', '33');
INSERT INTO `t_city` VALUES ('380', '乌海市', '33');
INSERT INTO `t_city` VALUES ('381', '赤峰市', '33');
INSERT INTO `t_city` VALUES ('382', '通辽市', '33');
INSERT INTO `t_city` VALUES ('383', '鄂尔多斯市', '33');
INSERT INTO `t_city` VALUES ('384', '呼伦贝尔市', '33');
INSERT INTO `t_city` VALUES ('385', '巴彦淖尔市', '33');
INSERT INTO `t_city` VALUES ('386', '乌兰察布市', '33');
INSERT INTO `t_city` VALUES ('387', '锡林郭勒盟', '33');
INSERT INTO `t_city` VALUES ('388', '兴安盟', '33');
INSERT INTO `t_city` VALUES ('389', '阿拉善盟', '33');
INSERT INTO `t_city` VALUES ('390', '澳门特别行政区', '34');
INSERT INTO `t_city` VALUES ('391', '香港特别行政区', '35');

-- ----------------------------
-- Table structure for t_customer
-- ----------------------------
DROP TABLE IF EXISTS `t_customer`;
CREATE TABLE `t_customer` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_customer
-- ----------------------------

-- ----------------------------
-- Table structure for t_detailsimage
-- ----------------------------
DROP TABLE IF EXISTS `t_detailsimage`;
CREATE TABLE `t_detailsimage` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `src` varchar(100) NOT NULL,
  `sort` int(11) DEFAULT NULL,
  `goods_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=467 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_detailsimage
-- ----------------------------
INSERT INTO `t_detailsimage` VALUES ('273', '/images/detailsImage/946aa2d5-c209-4d18-8e10-442596e8165c.jpg', '99', '54');
INSERT INTO `t_detailsimage` VALUES ('274', '/images/detailsImage/a8961ec7-5911-4bf3-bb8c-0793f92c77e8.jpg', '99', '54');
INSERT INTO `t_detailsimage` VALUES ('275', '/images/detailsImage/e3b6fc5a-fad3-43ee-9359-a4dbac11cf4e.jpg', '99', '54');
INSERT INTO `t_detailsimage` VALUES ('276', '/images/detailsImage/6dd8bdb7-0594-45fc-81f0-17a2f6d6306b.jpg', '99', '54');
INSERT INTO `t_detailsimage` VALUES ('277', '/images/detailsImage/91604d31-7856-46bf-8657-a3c118a35a2b.jpg', '99', '54');
INSERT INTO `t_detailsimage` VALUES ('278', '/images/detailsImage/30b684c8-2849-4fb5-933c-faeaabcc9e24.jpg', '99', '54');
INSERT INTO `t_detailsimage` VALUES ('279', '/images/detailsImage/ebda39c6-44d7-4cba-baca-86d087e62c68.jpg', '99', '54');
INSERT INTO `t_detailsimage` VALUES ('280', '/images/detailsImage/d0cba352-3c20-477f-b387-c56b908a174b.jpg', '99', '54');
INSERT INTO `t_detailsimage` VALUES ('281', '/images/detailsImage/266c558e-7520-4931-ac44-9f8a4717ce3a.jpg', '99', '54');
INSERT INTO `t_detailsimage` VALUES ('282', '/images/detailsImage/297cbe29-f2f5-4ca5-a67f-b325b6a13ba9.jpg', '99', '54');
INSERT INTO `t_detailsimage` VALUES ('283', '/images/detailsImage/6bec78d7-10b3-4b6b-b8ec-08b22233ee9d.jpg', '99', '54');
INSERT INTO `t_detailsimage` VALUES ('284', '/images/detailsImage/f8dc76c9-ae7b-4e26-8628-fbf3470e0153.jpg', '99', '54');
INSERT INTO `t_detailsimage` VALUES ('285', '/images/detailsImage/daf960e6-2a10-46e7-abbd-80d13343149d.jpg', '99', '54');
INSERT INTO `t_detailsimage` VALUES ('286', '/images/detailsImage/559cb3ea-abdb-440a-b4a4-63ebdb5ee6ce.jpg', '99', '54');
INSERT INTO `t_detailsimage` VALUES ('287', '/images/detailsImage/650acf40-26e0-439e-8eb3-3213e33620a2.jpg', '99', '55');
INSERT INTO `t_detailsimage` VALUES ('288', '/images/detailsImage/f00c3eae-6279-4c80-87ac-5a204f5fe394.jpg', '99', '55');
INSERT INTO `t_detailsimage` VALUES ('289', '/images/detailsImage/b8d89900-2465-4f1f-9361-ac0d8f2d7537.jpg', '99', '55');
INSERT INTO `t_detailsimage` VALUES ('290', '/images/detailsImage/ec55d991-b992-4a50-9da1-680d7a9456b4.jpg', '99', '55');
INSERT INTO `t_detailsimage` VALUES ('291', '/images/detailsImage/e6ae6412-fc38-4a53-86d5-a4b99ad8e41c.jpg', '99', '55');
INSERT INTO `t_detailsimage` VALUES ('292', '/images/detailsImage/b2c670e0-8661-4e6b-913a-515d5f27ff66.jpg', '99', '55');
INSERT INTO `t_detailsimage` VALUES ('293', '/images/detailsImage/09b85ac4-3d0c-4ae3-915f-c1e09cf93209.jpg', '99', '55');
INSERT INTO `t_detailsimage` VALUES ('294', '/images/detailsImage/e81607a7-e877-4e7a-9608-1b8ee4f86e8a.jpg', '99', '55');
INSERT INTO `t_detailsimage` VALUES ('295', '/images/detailsImage/9c85c1bb-877b-4946-ab38-959a5bce15f6.jpg', '99', '55');
INSERT INTO `t_detailsimage` VALUES ('296', '/images/detailsImage/081c729e-ae23-48f6-97b9-07e267c7573a.jpg', '99', '55');
INSERT INTO `t_detailsimage` VALUES ('297', '/images/detailsImage/dc330ffd-0502-4d17-8822-33bd434ce3b2.jpg', '99', '55');
INSERT INTO `t_detailsimage` VALUES ('298', '/images/detailsImage/d960d1d8-432c-4ca0-9e72-02c484b5e83a.jpg', '99', '55');
INSERT INTO `t_detailsimage` VALUES ('299', '/images/detailsImage/f9400a06-a0e5-49d6-bcc3-71a18404478b.jpg', '99', '55');
INSERT INTO `t_detailsimage` VALUES ('300', '/images/detailsImage/cac0c34c-364c-430d-85ee-c7c147be2055.jpg', '99', '55');
INSERT INTO `t_detailsimage` VALUES ('301', '/images/detailsImage/c3fa7ee5-5848-4dfa-828d-6aa4a0b3b67c.jpg', '99', '55');
INSERT INTO `t_detailsimage` VALUES ('302', '/images/detailsImage/c9aa7ac0-3d60-42f6-8d6e-4ad69887a0e0.jpg', '99', '55');
INSERT INTO `t_detailsimage` VALUES ('303', '/images/detailsImage/8811083c-f61f-44d2-9151-fc179d369ce8.jpg', '99', '55');
INSERT INTO `t_detailsimage` VALUES ('304', '/images/detailsImage/e4335b3f-6125-4407-92cb-efc61cb52f03.jpg', '99', '55');
INSERT INTO `t_detailsimage` VALUES ('305', '/images/detailsImage/9c286ffa-346d-4ee3-b57c-8e3f823fdfe7.jpg', '99', '55');
INSERT INTO `t_detailsimage` VALUES ('306', '/images/detailsImage/081b2e77-e6a1-4e81-8ef7-688e607bb056.jpg', '99', '55');
INSERT INTO `t_detailsimage` VALUES ('307', '/images/detailsImage/5d586429-478d-4126-831d-bd159edb653c.jpg', '99', '55');
INSERT INTO `t_detailsimage` VALUES ('308', '/images/detailsImage/84336cbb-87d9-4bc4-85c2-b42fcb13af86.jpg', '99', '55');
INSERT INTO `t_detailsimage` VALUES ('309', '/images/detailsImage/610a8802-2c2a-4804-b18f-b5ef8447da8f.jpg', '99', '55');
INSERT INTO `t_detailsimage` VALUES ('310', '/images/detailsImage/ad5d6bf2-6523-4f80-a52b-357ddb4fee23.jpg', '99', '55');
INSERT INTO `t_detailsimage` VALUES ('311', '/images/detailsImage/adb710e8-f0e5-4d7d-b317-f7bee7560895.jpg', '99', '55');
INSERT INTO `t_detailsimage` VALUES ('312', '/images/detailsImage/8efce155-69ee-4477-b9e5-91d26ca71938.jpg', '99', '55');
INSERT INTO `t_detailsimage` VALUES ('313', '/images/detailsImage/e96457e0-caad-4597-8fa2-f0eeaee444f3.jpg', '99', '55');
INSERT INTO `t_detailsimage` VALUES ('314', '/images/detailsImage/24bd0925-1f3a-4fff-b329-ade37725d2d2.jpg', '99', '55');
INSERT INTO `t_detailsimage` VALUES ('315', '/images/detailsImage/d61f4c9a-f433-4e1f-a2bf-8f776208ac75.jpg', '99', '55');
INSERT INTO `t_detailsimage` VALUES ('316', '/images/detailsImage/c30a1da5-51fb-48c1-86c5-e6b0c3b41128.jpg', '99', '55');
INSERT INTO `t_detailsimage` VALUES ('317', '/images/detailsImage/e4cdd428-4caa-43d9-8c97-00dcb6371c4e.jpg', '99', '56');
INSERT INTO `t_detailsimage` VALUES ('318', '/images/detailsImage/e5e50cfc-22e4-4b45-9ce7-9a50eaf54964.jpg', '99', '56');
INSERT INTO `t_detailsimage` VALUES ('319', '/images/detailsImage/d38e2c01-16b4-49ee-94c0-b27cb78e69a9.jpg', '99', '56');
INSERT INTO `t_detailsimage` VALUES ('320', '/images/detailsImage/3f29995a-7387-49df-a228-1207f445a109.jpg', '99', '56');
INSERT INTO `t_detailsimage` VALUES ('329', '/images/detailsImage/7a3e771f-abe2-4dad-b29c-aa2eb23d0c96.jpg', '99', '61');
INSERT INTO `t_detailsimage` VALUES ('330', '/images/detailsImage/066e5bed-1e35-44b9-9b3a-ac7ca2386e48.jpg', '99', '61');
INSERT INTO `t_detailsimage` VALUES ('331', '/images/detailsImage/0c6fb81d-f8f7-44e8-a2a1-259ffb89da3f.jpg', '99', '61');
INSERT INTO `t_detailsimage` VALUES ('332', '/images/detailsImage/64822b10-5fb6-4c11-a712-16fa83a82844.jpg', '99', '61');
INSERT INTO `t_detailsimage` VALUES ('333', '/images/detailsImage/d6385b96-4285-4078-b6d1-fd7f681aac23.jpg', '99', '61');
INSERT INTO `t_detailsimage` VALUES ('334', '/images/detailsImage/a341123e-87c3-416a-b22a-132ffdefb1a6.jpg', '99', '61');
INSERT INTO `t_detailsimage` VALUES ('335', '/images/detailsImage/4185249e-ae20-4b81-9d54-883f867b6cb3.jpg', '99', '61');
INSERT INTO `t_detailsimage` VALUES ('336', '/images/detailsImage/8211e4d9-0092-45f1-bbfb-233fbe46aacf.jpg', '99', '61');
INSERT INTO `t_detailsimage` VALUES ('337', '/images/detailsImage/d304577d-b791-490b-8cd3-53088db80085.jpg', '99', '61');
INSERT INTO `t_detailsimage` VALUES ('338', '/images/detailsImage/054a7e88-c953-4919-8ba0-d528ab2840f7.jpg', '99', '61');
INSERT INTO `t_detailsimage` VALUES ('339', '/images/detailsImage/0de304c1-8e90-4d91-b7f9-37f8fb2f0754.jpg', '99', '61');
INSERT INTO `t_detailsimage` VALUES ('340', '/images/detailsImage/81c2b8ae-b12b-455d-9096-5dbd5d2ccf57.jpg', '99', '61');
INSERT INTO `t_detailsimage` VALUES ('341', '/images/detailsImage/8cb88860-39d5-4856-b774-cdd734cd606c.jpg', '99', '61');
INSERT INTO `t_detailsimage` VALUES ('342', '/images/detailsImage/18143b11-4d40-4323-8976-121e640d7d52.jpg', '99', '61');
INSERT INTO `t_detailsimage` VALUES ('343', '/images/detailsImage/5485d2b4-fa99-40d9-a112-38ad800d311b.jpg', '99', '61');
INSERT INTO `t_detailsimage` VALUES ('344', '/images/detailsImage/f2f73da9-332c-45a2-8a54-adb28a3f660a.jpg', '99', '61');
INSERT INTO `t_detailsimage` VALUES ('345', '/images/detailsImage/efcc706a-bfd0-4a1e-85d6-ca1a6847ecfb.jpg', '99', '62');
INSERT INTO `t_detailsimage` VALUES ('346', '/images/detailsImage/0fbac31a-1ef0-405e-a159-65eabb19b79a.jpg', '99', '62');
INSERT INTO `t_detailsimage` VALUES ('347', '/images/detailsImage/5f8ab8f9-c312-4f6a-80e3-0ce52c0b3863.jpg', '99', '62');
INSERT INTO `t_detailsimage` VALUES ('348', '/images/detailsImage/ef8eca99-c897-44b9-8a2e-ea7132a3f3b1.jpg', '99', '62');
INSERT INTO `t_detailsimage` VALUES ('349', '/images/detailsImage/18ed5a8b-47ee-48d3-8ecd-98f360565ebf.jpg', '99', '62');
INSERT INTO `t_detailsimage` VALUES ('350', '/images/detailsImage/123dfea1-ddf6-46ad-9d0d-c241a6d87a07.jpg', '99', '62');
INSERT INTO `t_detailsimage` VALUES ('351', '/images/detailsImage/1973d729-2317-4418-9717-a48a719ef728.jpg', '99', '62');
INSERT INTO `t_detailsimage` VALUES ('352', '/images/detailsImage/0edf38b5-7d69-4be6-a4d3-ee6ba92f1ca6.jpg', '99', '62');
INSERT INTO `t_detailsimage` VALUES ('353', '/images/detailsImage/d2b415d6-ef95-43f5-b2c5-6775e79aa2be.jpg', '99', '62');
INSERT INTO `t_detailsimage` VALUES ('354', '/images/detailsImage/d5f17652-3a5e-4086-b6ee-a1aabed0ecb1.jpg', '99', '62');
INSERT INTO `t_detailsimage` VALUES ('355', '/images/detailsImage/ae19dbf6-4357-40a1-a02e-3f8de92e4c3d.jpg', '99', '62');
INSERT INTO `t_detailsimage` VALUES ('356', '/images/detailsImage/50f2e13d-a441-4280-9a09-44db4ebd13bb.jpg', '99', '62');
INSERT INTO `t_detailsimage` VALUES ('357', '/images/detailsImage/e1d6a236-4330-4d28-aa3a-e9f6602ba34f.jpg', '99', '62');
INSERT INTO `t_detailsimage` VALUES ('358', '/images/detailsImage/f9310fc4-f2a7-4138-8b19-b081511bc63b.jpg', '99', '62');
INSERT INTO `t_detailsimage` VALUES ('359', '/images/detailsImage/f8bfc41a-a6b2-4086-ae26-26ba3cc3b5f1.jpg', '99', '62');
INSERT INTO `t_detailsimage` VALUES ('360', '/images/detailsImage/1ac55941-5c6e-4672-bce4-f4ad0b038a05.jpg', '99', '62');
INSERT INTO `t_detailsimage` VALUES ('361', '/images/detailsImage/08d69fd6-99bf-4288-94d9-3b47e032a3ab.jpg', '99', '63');
INSERT INTO `t_detailsimage` VALUES ('362', '/images/detailsImage/aec6bb9e-a750-4679-8cdb-4202b24f6485.jpg', '99', '63');
INSERT INTO `t_detailsimage` VALUES ('363', '/images/detailsImage/d18c43a4-fe83-4d31-86cd-50f62f6d216b.jpg', '99', '63');
INSERT INTO `t_detailsimage` VALUES ('364', '/images/detailsImage/0d18fef9-dcf7-40a0-bc16-74dcb1e07cff.jpg', '99', '63');
INSERT INTO `t_detailsimage` VALUES ('365', '/images/detailsImage/9ae24214-c486-4623-a25f-922fce2abdbd.jpg', '99', '63');
INSERT INTO `t_detailsimage` VALUES ('366', '/images/detailsImage/dd8aa0bf-7a45-427e-9cad-069bfc74807b.jpg', '99', '63');
INSERT INTO `t_detailsimage` VALUES ('367', '/images/detailsImage/e6a2e965-b773-445b-acb5-d3a385006350.jpg', '99', '63');
INSERT INTO `t_detailsimage` VALUES ('368', '/images/detailsImage/b8710fc1-df7e-4c73-95a3-f33216448f5c.jpg', '99', '63');
INSERT INTO `t_detailsimage` VALUES ('369', '/images/detailsImage/23b89209-3d81-448e-82cc-bc4479949793.jpg', '99', '63');
INSERT INTO `t_detailsimage` VALUES ('370', '/images/detailsImage/e76c0d72-deae-4bc9-b97a-afe59f02eb36.png', '99', '51');
INSERT INTO `t_detailsimage` VALUES ('371', '/images/detailsImage/5271ae6a-de5f-4703-9bc2-a9d8d0e5a77b.png', '99', '51');
INSERT INTO `t_detailsimage` VALUES ('372', '/images/detailsImage/5b888138-a438-439e-8a43-43c4a92ce4fc.png', '99', '51');
INSERT INTO `t_detailsimage` VALUES ('373', '/images/detailsImage/cbb5cdc2-74b9-46fa-8319-464afe7cbe8e.png', '99', '51');
INSERT INTO `t_detailsimage` VALUES ('374', '/images/detailsImage/c5bd2872-339a-4aa4-8661-603f05be62c3.png', '99', '51');
INSERT INTO `t_detailsimage` VALUES ('375', '/images/detailsImage/f9e931a2-df3e-42cd-81e7-e02c199fb6f5.png', '99', '51');
INSERT INTO `t_detailsimage` VALUES ('382', '/images/detailsImage/94c6fb8f-0d5a-4b9c-b40b-deb45ed36940.png', '99', '65');
INSERT INTO `t_detailsimage` VALUES ('383', '/images/detailsImage/f077c0b8-d6a1-4c2f-af04-1136ae50b4aa.png', '99', '65');
INSERT INTO `t_detailsimage` VALUES ('384', '/images/detailsImage/3f063375-cda4-4b6c-a18a-77d9d179482c.png', '99', '65');
INSERT INTO `t_detailsimage` VALUES ('385', '/images/detailsImage/e1c60d66-1a02-4eaf-84c3-b2a13a5adb96.jpg', '99', '66');
INSERT INTO `t_detailsimage` VALUES ('386', '/images/detailsImage/40e8ecfb-b93b-4638-af1a-b94012bf2e90.jpg', '99', '66');
INSERT INTO `t_detailsimage` VALUES ('387', '/images/detailsImage/0418a901-f892-4a69-ae46-0cad3181e94d.jpg', '99', '66');
INSERT INTO `t_detailsimage` VALUES ('388', '/images/detailsImage/01ffc104-ea16-4f73-bd40-d70a7e58943c.jpg', '99', '66');
INSERT INTO `t_detailsimage` VALUES ('389', '/images/detailsImage/730f5a44-a480-4c7d-95f6-af3de12f2389.jpg', '99', '66');
INSERT INTO `t_detailsimage` VALUES ('390', '/images/detailsImage/f8804798-0542-4e54-ac85-6532d689ffe3.jpg', '99', '66');
INSERT INTO `t_detailsimage` VALUES ('391', '/images/detailsImage/cb474a7b-df6e-4475-8d36-96ac41d5cc7b.jpg', '99', '66');
INSERT INTO `t_detailsimage` VALUES ('392', '/images/detailsImage/4d0b744a-79f5-4f45-a1f3-168177d5d19d.jpg', '99', '66');
INSERT INTO `t_detailsimage` VALUES ('393', '/images/detailsImage/7af3412c-0732-456d-befc-788879bb36ea.jpg', '99', '66');
INSERT INTO `t_detailsimage` VALUES ('394', '/images/detailsImage/705fc752-caed-4e1f-8ff9-dc206fbfeeb6.jpg', '99', '66');
INSERT INTO `t_detailsimage` VALUES ('395', '/images/detailsImage/76b70be7-d6b9-47ae-b923-97ee8f5c363e.jpg', '99', '66');
INSERT INTO `t_detailsimage` VALUES ('396', '/images/detailsImage/d14a828a-0881-4a9a-b1d4-394376c70261.jpg', '99', '66');
INSERT INTO `t_detailsimage` VALUES ('397', '/images/detailsImage/e7da0d93-5495-49f6-8731-cee2f416daed.jpg', '99', '66');
INSERT INTO `t_detailsimage` VALUES ('398', '/images/detailsImage/acaed97c-029d-4c3b-b49b-8c14cdb183ce.jpg', '99', '66');
INSERT INTO `t_detailsimage` VALUES ('399', '/images/detailsImage/2f4b8d85-b8c5-470b-b093-e3be41bc4475.jpg', '99', '66');
INSERT INTO `t_detailsimage` VALUES ('400', '/images/detailsImage/7f973383-7205-4a1a-a08c-9333da651ac1.jpg', '99', '66');
INSERT INTO `t_detailsimage` VALUES ('401', '/images/detailsImage/f17a504a-455c-4d5c-a1b3-51f52d90ae52.jpg', '99', '66');
INSERT INTO `t_detailsimage` VALUES ('402', '/images/detailsImage/6dbff122-0aba-497c-9788-89b51bd0d6b7.jpg', '99', '66');
INSERT INTO `t_detailsimage` VALUES ('403', '/images/detailsImage/72461711-9d11-4995-b6bd-3b8a727ac0fc.jpg', '99', '66');
INSERT INTO `t_detailsimage` VALUES ('404', '/images/detailsImage/d96fff2b-70c7-49c7-a128-ea25ec5db39c.jpg', '99', '66');
INSERT INTO `t_detailsimage` VALUES ('419', '/images/detailsImage/acd9c8fb-ef31-4b87-8f8e-9bda9c3e4775.jpg', '99', '68');
INSERT INTO `t_detailsimage` VALUES ('420', '/images/detailsImage/e3fa5f2a-23dc-4244-a7cd-2854ca8ee8b6.jpg', '99', '68');
INSERT INTO `t_detailsimage` VALUES ('421', '/images/detailsImage/19f5df73-cb56-44f9-ace5-65e222665ae1.jpg', '99', '68');
INSERT INTO `t_detailsimage` VALUES ('422', '/images/detailsImage/51f86cf3-9768-4f90-8b58-9ba097a3ac94.jpg', '99', '68');
INSERT INTO `t_detailsimage` VALUES ('423', '/images/detailsImage/c6fd6033-0fd9-4be1-a99c-19ed349cee91.jpg', '99', '68');
INSERT INTO `t_detailsimage` VALUES ('424', '/images/detailsImage/8ecc63ca-4e92-487a-81b7-1b3847c89810.jpg', '99', '68');
INSERT INTO `t_detailsimage` VALUES ('425', '/images/detailsImage/0bd89e60-a9d6-4550-8292-327d316c186b.jpg', '99', '68');
INSERT INTO `t_detailsimage` VALUES ('426', '/images/detailsImage/44fbace7-09d2-4c46-af39-236cb3985b86.jpg', '99', '68');
INSERT INTO `t_detailsimage` VALUES ('427', '/images/detailsImage/9d09b3b8-6fa5-463b-a4dc-630eb92e6efd.jpg', '99', '68');
INSERT INTO `t_detailsimage` VALUES ('437', '/images/detailsImage/28e5ea8e-c2aa-45cb-86a6-b708e5f848ad.jpg', '99', '69');
INSERT INTO `t_detailsimage` VALUES ('438', '/images/detailsImage/d64b9949-d040-4890-823d-e8856a2a4c35.jpg', '99', '69');
INSERT INTO `t_detailsimage` VALUES ('439', '/images/detailsImage/b6efad90-89fe-4e5f-aa63-476a3a9cd159.jpg', '99', '69');
INSERT INTO `t_detailsimage` VALUES ('440', '/images/detailsImage/97bb62e5-0ae5-45c4-b025-8f46cbd361d8.jpg', '99', '69');
INSERT INTO `t_detailsimage` VALUES ('446', '/images/detailsImage/538ea69a-adf6-4793-ba74-3ce095d54651.jpg', '99', '67');
INSERT INTO `t_detailsimage` VALUES ('447', '/images/detailsImage/d7aed842-89af-4fec-bddc-8c8d6853ecd2.jpg', '99', '67');
INSERT INTO `t_detailsimage` VALUES ('448', '/images/detailsImage/14c0a6c4-9d47-4a44-8938-a26a2c09a0c8.jpg', '99', '67');
INSERT INTO `t_detailsimage` VALUES ('449', '/images/detailsImage/7ad8203f-b23c-406e-ba89-d7836c12ebce.jpg', '99', '67');
INSERT INTO `t_detailsimage` VALUES ('450', '/images/detailsImage/808eb944-40d0-42da-a63a-563ee7089c82.jpg', '99', '67');
INSERT INTO `t_detailsimage` VALUES ('451', '/images/detailsImage/5c8a1c07-5865-429e-bb0e-bb7f27119f96.jpg', '99', '67');
INSERT INTO `t_detailsimage` VALUES ('452', '/images/detailsImage/d7786b98-7ced-44ec-a27b-b8c711e4763e.jpg', '99', '67');
INSERT INTO `t_detailsimage` VALUES ('453', '/images/detailsImage/bab8cb5f-77a4-4166-be07-a0a62edc6bd2.jpg', '99', '67');
INSERT INTO `t_detailsimage` VALUES ('454', '/images/detailsImage/22608937-38e5-4c06-b057-a265a112a5f6.jpg', '99', '67');
INSERT INTO `t_detailsimage` VALUES ('455', '/images/detailsImage/87b7c86a-f1df-4e6e-a89d-59de3cc2e875.jpg', '99', '67');
INSERT INTO `t_detailsimage` VALUES ('456', '/images/detailsImage/aedf98d8-ec1c-45d8-9f67-7d8f81aa0feb.jpg', '99', '67');
INSERT INTO `t_detailsimage` VALUES ('457', '/images/detailsImage/d033d72d-bdd8-43db-8951-5c24a6b2726b.jpg', '99', '67');
INSERT INTO `t_detailsimage` VALUES ('458', '/images/detailsImage/dddbe528-e3a4-4db1-8293-a6e5ef4b2fa5.jpg', '99', '67');
INSERT INTO `t_detailsimage` VALUES ('459', '/images/detailsImage/d6a7d20f-621e-498e-a0db-7da193b1bc79.jpg', '99', '67');
INSERT INTO `t_detailsimage` VALUES ('460', '/images/detailsImage/c7a0d476-a907-4576-9cb3-12d98879d2bb.jpg', '99', '67');
INSERT INTO `t_detailsimage` VALUES ('461', '/images/detailsImage/104d390c-97db-44fd-b7aa-794a0d24fb75.jpg', '99', '67');
INSERT INTO `t_detailsimage` VALUES ('462', '/images/detailsImage/5297f4bc-d876-4366-851f-bd5184cae65a.jpg', '99', '67');
INSERT INTO `t_detailsimage` VALUES ('463', '/images/detailsImage/26beb881-764e-4d88-9eb9-86432ea1893a.jpg', '99', '67');
INSERT INTO `t_detailsimage` VALUES ('464', '/images/detailsImage/52069a2f-8e0b-4aea-8efd-277f2d7b9d1c.jpg', '99', '67');
INSERT INTO `t_detailsimage` VALUES ('465', '/images/detailsImage/8da4e79c-4938-4dee-8b56-9e3a95502c91.jpg', '99', '70');
INSERT INTO `t_detailsimage` VALUES ('466', '/images/detailsImage/f86c11f4-9720-4e67-9ade-bb989b1607aa.png', '99', '70');

-- ----------------------------
-- Table structure for t_employee
-- ----------------------------
DROP TABLE IF EXISTS `t_employee`;
CREATE TABLE `t_employee` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `realname` varchar(255) NOT NULL,
  `loginTime` datetime DEFAULT NULL,
  `state` int(11) NOT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_employee
-- ----------------------------
INSERT INTO `t_employee` VALUES ('1', 'admin', '21232F297A57A5A743894A0E4A801FC3', '超级管理员', null, '1', null);
INSERT INTO `t_employee` VALUES ('2', 'qwert', '21232F297A57A5A743894A0E4A801FC3', 'qw', null, '1', null);
INSERT INTO `t_employee` VALUES ('5', '123456', '698D51A19D8A121CE581499D7B701668', 'sc', null, '1', null);

-- ----------------------------
-- Table structure for t_employee_role
-- ----------------------------
DROP TABLE IF EXISTS `t_employee_role`;
CREATE TABLE `t_employee_role` (
  `employee_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) DEFAULT NULL,
  KEY `employee_id` (`employee_id`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `t_employee_role_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `t_employee` (`id`),
  CONSTRAINT `t_employee_role_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `t_role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_employee_role
-- ----------------------------
INSERT INTO `t_employee_role` VALUES ('2', '1');

-- ----------------------------
-- Table structure for t_goods
-- ----------------------------
DROP TABLE IF EXISTS `t_goods`;
CREATE TABLE `t_goods` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(120) NOT NULL,
  `goodsNum` varchar(50) DEFAULT NULL,
  `details` text NOT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `salePrice` decimal(10,2) NOT NULL,
  `postage` decimal(10,2) NOT NULL,
  `state` int(11) DEFAULT NULL,
  `proxyNum` int(11) DEFAULT NULL,
  `saleNum` int(11) DEFAULT NULL,
  `time` datetime NOT NULL,
  `brand_id` bigint(20) NOT NULL,
  `type_id` bigint(20) NOT NULL,
  `store_id` bigint(20) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `inventoryNum` int(11) NOT NULL,
  `version` bigint(20) NOT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_goods
-- ----------------------------
INSERT INTO `t_goods` VALUES ('51', '连衣裙', null, '更好看，更时尚', null, '150.00', '10.00', '1', '187', '14', '2016-06-24 16:17:02', '2', '10', '69', '/images/bannerImage/cf14172b-5d0c-44fd-ac80-787a8ea4d2fb.jpg', '38', '12', null);
INSERT INTO `t_goods` VALUES ('54', '女神', null, '好好', null, '15.00', '10.00', '1', '2', '7', '2016-06-27 11:14:26', '2', '26', '81', '/images/bannerImage/e5a3f76e-4148-461e-96ec-4a62462877c5.jpg', '193', '5', null);
INSERT INTO `t_goods` VALUES ('55', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空', null, '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', null, '19.00', '10.00', '1', '109', '52', '2016-06-27 11:29:49', '2', '26', '80', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '148', '40', null);
INSERT INTO `t_goods` VALUES ('56', '有的你会看到更', null, '有时候也会是个有梦想和未来会很大一部分', null, '300.00', '20.00', '1', '18', '2', '2016-06-27 11:37:38', '1', '35', '82', '/images/bannerImage/360a9882-e7d3-48ca-ae07-6dfda0cd2847.jpg', '11', '2', null);
INSERT INTO `t_goods` VALUES ('57', '一个人', null, '', null, '0.00', '0.00', '1', '0', '0', '2016-06-27 14:38:02', '2', '38', '82', null, '1', '0', null);
INSERT INTO `t_goods` VALUES ('58', '你的时候就', null, '', null, '0.00', '0.00', '1', '0', '4', '2016-06-27 14:39:20', '2', '35', '82', '/images/bannerImage/540034b5-05ff-4b2e-b1c1-e1635d625c44.jpg', '62', '2', null);
INSERT INTO `t_goods` VALUES ('59', '你们的士', null, '', null, '0.00', '0.00', '1', '0', '0', '2016-06-27 14:39:54', '2', '13', '82', null, '3', '0', null);
INSERT INTO `t_goods` VALUES ('60', '不能', null, '', null, '0.00', '0.00', '1', '0', '0', '2016-06-27 14:41:19', '1', '33', '82', '/images/bannerImage/6a419ea1-1cf2-4b30-b055-1a6450705a64.jpg', '3', '0', null);
INSERT INTO `t_goods` VALUES ('61', '女神', null, 'https://www.pgyer.com/y6cV，苹果最新版课程，修复默认头像，转发朋友圈脚标显示乐霸星舞台，提现https://www.pgyer.com/y6cV，苹果最新版，修复默认头像，转发朋友圈脚标显示乐霸星舞台，提现零钱清单显示头像，互动模块排列问题零钱清单显示头像，互动模块排列问题https://www.pgyer.com/y6cV，苹果最新版，修复默认头像，转发朋友圈脚标显示乐霸星舞台，提现零钱清单显示头像，互动模块排列问题https://www.pgyer.com/y6cV，苹果最新版，修复默认头像，转发朋友圈脚标显示乐霸星舞台，提现零钱清单显示头像，互动模块排列问题https://www.pgyer.com/y6cV，苹果最新版，修复默认头像，转发朋友圈脚标显示乐霸星舞台，提现零钱清单显示头像，互动模块排列问题', null, '1.00', '10.00', '1', '4', '3', '2016-06-28 14:25:37', '1', '26', '80', '/images/bannerImage/2251c3be-b3ae-4bf5-aa90-52b625f6777b.jpg', '197', '2', null);
INSERT INTO `t_goods` VALUES ('62', '女神', null, '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空,2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货,http://211.149.241.17:8888/proxy/enterProxyGoods?proxyGoodsId=199', null, '50.00', '10.00', '1', '45', '1', '2016-06-28 17:39:17', '1', '26', '81', '/images/bannerImage/a4dda6d3-843c-4541-bda9-fa274c23ccff.jpg', '99', '1', null);
INSERT INTO `t_goods` VALUES ('63', '抠门兔女装', null, '女神服装', null, '15.00', '8.00', '1', '25', '0', '2016-06-29 18:19:50', '1', '26', '80', '/images/bannerImage/e921005d-1de2-4ac9-befd-5a04797b3099.jpg', '200', '0', null);
INSERT INTO `t_goods` VALUES ('65', '哈哈哈', null, '哈哈哈', null, '22.00', '5.00', '1', '2', '0', '2016-06-30 18:19:07', '2', '42', '69', '/images/bannerImage/8236ce67-2f8f-4a1b-8c26-824cc47cdb6a.gif', '11', '0', null);
INSERT INTO `t_goods` VALUES ('66', '【品牌】：精品女装\n【价格】：￥140.00\n【时间】：2016-07-01\n【介绍】：(包邮）2016夏装新款时尚无袖', null, '【品牌】：精品女装\n【价格】：￥140.00\n【时间】：2016-07-01\n【介绍】：(包邮）2016夏装新款时尚无袖双排扣上衣+短裤 配腰带\r\nM-L 蓝色 白色', null, '140.00', '10.00', '1', '12', '0', '2016-07-01 21:08:35', '1', '43', '63', '/images/bannerImage/c4491494-ead0-43de-b065-40ccb7c6178f.jpg', '300', '0', null);
INSERT INTO `t_goods` VALUES ('67', '微货通1688测试，此商品不卖', null, '微货通1688测试，此商品不卖的哦。', null, '128.00', '10.00', '1', '13', '0', '2016-07-02 06:31:36', '1', '11', '63', '/images/bannerImage/0290cfea-22a2-4843-bf4c-cf2cdf42d145.jpg', '200', '0', null);
INSERT INTO `t_goods` VALUES ('68', '【品牌】：精品女装\n【价格】：￥90.00\n【时间】：2016-07-02\n【介绍】：(包邮）2016夏装新款时尚中长款', null, '【品牌】：精品女装\n【价格】：￥90.00\n【时间】：2016-07-02\n【介绍】：(包邮）2016夏装新款时尚中长款套装裙两件套\nS-2XL 红色 白色 雪纺', null, '90.00', '10.00', '1', '2', '0', '2016-07-03 18:07:37', '1', '26', '63', '/images/bannerImage/5c547285-0081-4db4-94b4-cee546224c6c.jpg', '200', '0', null);
INSERT INTO `t_goods` VALUES ('69', '【品牌】：精品女装\n【价格】：￥80.00\n【时间】：2016-07-02\n【介绍】：(包邮）2016夏装新款时尚显瘦蓝', null, '【品牌】：精品女装\n【价格】：￥80.00\n【时间】：2016-07-02\n【介绍】：(包邮）2016夏装新款时尚显瘦蓝色条纹裙子无袖衬衫连衣裙\nS-XL 浅蓝条纹', null, '80.00', '10.00', '1', '0', '0', '2016-07-03 18:09:34', '1', '10', '63', '/images/bannerImage/6c7f3782-480f-443b-a42e-ab4a6f6833fe.jpg', '200', '0', null);
INSERT INTO `t_goods` VALUES ('70', '??', null, '???', null, '100.00', '10.00', '1', '3', '0', '2016-07-04 15:00:46', '2', '30', '80', '/images/bannerImage/f6622086-dd2e-4720-84c8-964b75af1582.jpg', '300', '0', null);

-- ----------------------------
-- Table structure for t_marginorder
-- ----------------------------
DROP TABLE IF EXISTS `t_marginorder`;
CREATE TABLE `t_marginorder` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `buyTime` datetime NOT NULL,
  `orderNum` varchar(255) NOT NULL,
  `totalPrice` decimal(10,2) DEFAULT NULL,
  `payPrice` decimal(10,2) DEFAULT NULL,
  `store_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_marginorder
-- ----------------------------
INSERT INTO `t_marginorder` VALUES ('41', '2016-06-24 17:09:57', '30624164750000069', '1.00', '1.00', '69');
INSERT INTO `t_marginorder` VALUES ('42', '2016-06-24 17:11:30', '30624164914000069', '1.00', '1.00', '69');
INSERT INTO `t_marginorder` VALUES ('43', '2016-06-24 18:00:24', '30624163817000069', '1.00', '1.00', '69');
INSERT INTO `t_marginorder` VALUES ('44', '2016-06-24 18:01:05', '30624163854000069', '1.00', '1.00', '69');

-- ----------------------------
-- Table structure for t_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_menu`;
CREATE TABLE `t_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `text` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `parent_id` bigint(11) DEFAULT NULL,
  `iconCls` varchar(255) DEFAULT NULL,
  `intro` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_menu
-- ----------------------------
INSERT INTO `t_menu` VALUES ('1', '营销管理', null, null, 'icon-1_close', null);
INSERT INTO `t_menu` VALUES ('2', '店铺管理', '', null, 'icon-1_open', null);
INSERT INTO `t_menu` VALUES ('3', '用户管理', null, null, 'icon-1_close', null);
INSERT INTO `t_menu` VALUES ('9', '系统管理', null, null, 'icon-1_open', null);
INSERT INTO `t_menu` VALUES ('10', '商品管理', 'goods/index', '1', 'icon-2', null);
INSERT INTO `t_menu` VALUES ('11', '商品分类', 'type/index', '1', 'icon-3', null);
INSERT INTO `t_menu` VALUES ('12', '商品品牌', 'brand/index', '1', 'icon-4', null);
INSERT INTO `t_menu` VALUES ('13', '商品订单', 'productOrder/index', '1', 'icon-7', null);
INSERT INTO `t_menu` VALUES ('14', '广告位', 'adPositionId/index', '1', 'icon-5', null);
INSERT INTO `t_menu` VALUES ('15', '广告管理', 'promotion/index', '1', 'icon-6', null);
INSERT INTO `t_menu` VALUES ('16', '广告订单', 'promotionOrder/index', '1', 'icon-17', null);
INSERT INTO `t_menu` VALUES ('17', '保证金订单', 'marginOrder/index', '1', 'icon-18', null);
INSERT INTO `t_menu` VALUES ('18', '提现申请', 'withdraw/index', '1', 'icon-19', null);
INSERT INTO `t_menu` VALUES ('20', '店铺管理', 'store/index', '2', 'icon-11', null);
INSERT INTO `t_menu` VALUES ('21', '文章管理', 'article/index', '2', 'icon-8', null);
INSERT INTO `t_menu` VALUES ('22', '文章分类', 'articleType/index', '2', 'icon-9', null);
INSERT INTO `t_menu` VALUES ('30', '账号管理', 'user/index', '3', 'icon-10', null);
INSERT INTO `t_menu` VALUES ('31', '账户管理', 'account/index', '3', null, null);
INSERT INTO `t_menu` VALUES ('32', '意见反馈', 'recommendation/index', '3', 'icon-16', null);
INSERT INTO `t_menu` VALUES ('90', '系统账户', 'systemAccount/index', '9', null, null);
INSERT INTO `t_menu` VALUES ('91', '员工管理', 'employee/index', '9', 'icon-12', null);
INSERT INTO `t_menu` VALUES ('92', '系统角色', 'role/index', '9', 'icon-14', null);
INSERT INTO `t_menu` VALUES ('93', '权限管理', 'permission/index', '9', 'icon-13', null);
INSERT INTO `t_menu` VALUES ('94', '系统日志', 'systemLog/index', '9', 'icon-15', null);
INSERT INTO `t_menu` VALUES ('95', '系统异常', 'systemException/index', '9', null, null);
INSERT INTO `t_menu` VALUES ('96', '系统监控', 'monitoring/index', '9', null, null);

-- ----------------------------
-- Table structure for t_message
-- ----------------------------
DROP TABLE IF EXISTS `t_message`;
CREATE TABLE `t_message` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `storeId` bigint(20) DEFAULT NULL,
  `time` datetime NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `isLook` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_message
-- ----------------------------
INSERT INTO `t_message` VALUES ('8', '80', '2016-06-27 11:42:49', '商品【抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空】已下架', '', '1');
INSERT INTO `t_message` VALUES ('9', '82', '2016-06-27 14:46:21', '商品【有的你会看到更】已下架', '', '1');
INSERT INTO `t_message` VALUES ('10', '82', '2016-06-27 14:46:29', '商品【有的你会看到更】已下架', '', '1');
INSERT INTO `t_message` VALUES ('11', '69', '2016-06-27 18:20:27', '广告已下架', '测试', '1');
INSERT INTO `t_message` VALUES ('12', '84', '2016-06-28 00:33:51', '审核通过', '店铺【测试】审核已通过！', '1');
INSERT INTO `t_message` VALUES ('13', '84', '2016-06-28 00:43:00', '店铺停用', '店铺【测试】已停用！原因：测试短信', '1');
INSERT INTO `t_message` VALUES ('14', '84', '2016-06-28 00:54:37', '店铺启用', '店铺【测试】已启用用！', '1');
INSERT INTO `t_message` VALUES ('15', '81', '2016-06-28 14:26:09', '店铺停用', '店铺【施工洛林】已停用！原因：衬衫', '1');
INSERT INTO `t_message` VALUES ('16', '81', '2016-06-28 14:28:20', '店铺启用', '店铺【施工洛林】已启用用！', '1');
INSERT INTO `t_message` VALUES ('17', '84', '2016-06-28 15:16:36', '店铺停用', '店铺【测试】已停用！原因：中文', '1');
INSERT INTO `t_message` VALUES ('18', '84', '2016-06-28 15:48:04', '店铺启用', '店铺【测试】已启用用！', '1');
INSERT INTO `t_message` VALUES ('19', '81', '2016-07-01 11:31:47', '提现成功', '您在2016-06-27 04:06:15提交的提现申请已处理！', '1');
INSERT INTO `t_message` VALUES ('20', '81', '2016-07-01 11:35:21', '提现成功', '您在2016-06-27 03:57:33提交的提现申请已处理！', '1');
INSERT INTO `t_message` VALUES ('21', '81', '2016-07-01 11:52:59', '提现成功', '您在2016-06-27 03:56:40提交的提现申请已处理！', '1');
INSERT INTO `t_message` VALUES ('22', '81', '2016-07-01 11:53:42', '提现成功', '您在2016-06-27 03:55:27提交的提现申请已处理！', '1');
INSERT INTO `t_message` VALUES ('23', '81', '2016-07-01 11:55:12', '提现成功', '您在2016-06-27 03:54:42提交的提现申请已处理！', '1');
INSERT INTO `t_message` VALUES ('24', '69', '2016-07-01 11:59:50', '提现成功', '您在2016-07-01 11:58:02提交的提现申请已处理！', '1');
INSERT INTO `t_message` VALUES ('25', '69', '2016-07-01 12:00:23', '提现成功', '您在2016-07-01 11:57:22提交的提现申请已处理！', '1');
INSERT INTO `t_message` VALUES ('26', '69', '2016-07-01 12:02:18', '提现成功', '您在2016-07-01 12:01:21提交的提现申请已处理！', '1');
INSERT INTO `t_message` VALUES ('27', '69', '2016-07-01 12:04:35', '提现成功', '您在2016-07-01 12:03:48提交的提现申请已处理！', '1');
INSERT INTO `t_message` VALUES ('28', '69', '2016-07-01 12:06:52', '提现成功', '您在2016-07-01 12:05:48提交的提现申请已处理！', '1');
INSERT INTO `t_message` VALUES ('29', '80', '2016-07-01 18:19:35', '商品【男神】已下架', '', '1');
INSERT INTO `t_message` VALUES ('30', '80', '2016-07-01 18:19:39', '商品【男神】已删除', '店铺删除', '1');
INSERT INTO `t_message` VALUES ('31', '63', '2016-07-02 11:48:17', '商品【【品牌】：精品女装\n【价格】：￥90.00\n【时间】：2016-06-24\n【介绍】：(包邮）2016夏装新款时尚小香风】已下架', '', '1');
INSERT INTO `t_message` VALUES ('32', '63', '2016-07-02 11:48:20', '商品【【品牌】：精品女装\n【价格】：￥90.00\n【时间】：2016-06-24\n【介绍】：(包邮）2016夏装新款时尚小香风】已删除', '店铺删除', '1');
INSERT INTO `t_message` VALUES ('33', '63', '2016-07-02 11:48:26', '商品【，，，，】已下架', '', '1');
INSERT INTO `t_message` VALUES ('34', '63', '2016-07-02 11:48:29', '商品【，，，，】已删除', '店铺删除', '1');
INSERT INTO `t_message` VALUES ('35', '63', '2016-07-03 10:33:13', '商品【【品牌】：精品女装\n【价格】：￥140.00\n【时间】：2016-07-01\n【介绍】：(包邮）2016夏装新款时尚无袖】已下架', '', '0');
INSERT INTO `t_message` VALUES ('36', '80', '2016-07-04 15:02:43', '?????????', '', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=30609 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_permission
-- ----------------------------
INSERT INTO `t_permission` VALUES ('1', '编辑', '广告位', 'com.huashidai.weihuotong.controller.AdPositionIdCotroller:save');
INSERT INTO `t_permission` VALUES ('2', '删除', '广告位', 'com.huashidai.weihuotong.controller.AdPositionIdCotroller:delete');
INSERT INTO `t_permission` VALUES ('3', '查询', '广告位', 'com.huashidai.weihuotong.controller.AdPositionIdCotroller:query');
INSERT INTO `t_permission` VALUES ('4', '主页', '广告位', 'com.huashidai.weihuotong.controller.AdPositionIdCotroller:adPositionId');
INSERT INTO `t_permission` VALUES ('5', '全部', '广告位', 'com.huashidai.weihuotong.controller.AdPositionIdCotroller:ALL');
INSERT INTO `t_permission` VALUES ('6', '删除', '文章评论', 'com.huashidai.weihuotong.controller.ArticleCommentCotroller:delete');
INSERT INTO `t_permission` VALUES ('7', '查询', '文章评论', 'com.huashidai.weihuotong.controller.ArticleCommentCotroller:query');
INSERT INTO `t_permission` VALUES ('8', '全部', '文章评论', 'com.huashidai.weihuotong.controller.ArticleCommentCotroller:ALL');
INSERT INTO `t_permission` VALUES ('9', '删除', '文章', 'com.huashidai.weihuotong.controller.ArticleCotroller:delete');
INSERT INTO `t_permission` VALUES ('10', '查询', '文章', 'com.huashidai.weihuotong.controller.ArticleCotroller:query');
INSERT INTO `t_permission` VALUES ('11', '主页', '文章', 'com.huashidai.weihuotong.controller.ArticleCotroller:article');
INSERT INTO `t_permission` VALUES ('12', '文章内容', '文章', 'com.huashidai.weihuotong.controller.ArticleCotroller:showArticle');
INSERT INTO `t_permission` VALUES ('13', '全部', '文章', 'com.huashidai.weihuotong.controller.ArticleCotroller:ALL');
INSERT INTO `t_permission` VALUES ('14', '添加', '文章分类', 'com.huashidai.weihuotong.controller.ArticleTypeCotroller:save');
INSERT INTO `t_permission` VALUES ('15', '删除', '文章分类', 'com.huashidai.weihuotong.controller.ArticleTypeCotroller:delete');
INSERT INTO `t_permission` VALUES ('16', '查询', '文章', 'com.huashidai.weihuotong.controller.ArticleTypeCotroller:query');
INSERT INTO `t_permission` VALUES ('17', '主页', '文章分类', 'com.huashidai.weihuotong.controller.ArticleTypeCotroller:articleType');
INSERT INTO `t_permission` VALUES ('18', '列表', '文章分类', 'com.huashidai.weihuotong.controller.ArticleTypeCotroller:showArticleType');
INSERT INTO `t_permission` VALUES ('19', '全部', '文章分类', 'com.huashidai.weihuotong.controller.ArticleTypeCotroller:ALL');
INSERT INTO `t_permission` VALUES ('20', '编辑', '商品品牌', 'com.huashidai.weihuotong.controller.BrandCotroller:save');
INSERT INTO `t_permission` VALUES ('21', '删除', '商品品牌', 'com.huashidai.weihuotong.controller.BrandCotroller:delete');
INSERT INTO `t_permission` VALUES ('22', '查询', '商品品牌', 'com.huashidai.weihuotong.controller.BrandCotroller:query');
INSERT INTO `t_permission` VALUES ('23', '主页', '商品品牌', 'com.huashidai.weihuotong.controller.BrandCotroller:brand');
INSERT INTO `t_permission` VALUES ('24', '全部', '商品品牌', 'com.huashidai.weihuotong.controller.BrandCotroller:ALL');
INSERT INTO `t_permission` VALUES ('25', '编辑', '账户', 'com.huashidai.weihuotong.controller.EmployeeCotroller:save');
INSERT INTO `t_permission` VALUES ('26', '删除', '账户', 'com.huashidai.weihuotong.controller.EmployeeCotroller:delete');
INSERT INTO `t_permission` VALUES ('27', '停用', '账户', 'com.huashidai.weihuotong.controller.EmployeeCotroller:leave');
INSERT INTO `t_permission` VALUES ('28', '启用', '账户', 'com.huashidai.weihuotong.controller.EmployeeCotroller:up');
INSERT INTO `t_permission` VALUES ('29', '主页', '账户', 'com.huashidai.weihuotong.controller.EmployeeCotroller:employee');
INSERT INTO `t_permission` VALUES ('30', '查询', '账户', 'com.huashidai.weihuotong.controller.EmployeeCotroller:employeeQuery');
INSERT INTO `t_permission` VALUES ('31', '全部', '账户', 'com.huashidai.weihuotong.controller.EmployeeCotroller:ALL');
INSERT INTO `t_permission` VALUES ('32', '删除', '商品', 'com.huashidai.weihuotong.controller.GoodsCotroller:delete');
INSERT INTO `t_permission` VALUES ('33', '查询', '商品', 'com.huashidai.weihuotong.controller.GoodsCotroller:query');
INSERT INTO `t_permission` VALUES ('34', '主页', '商品', 'com.huashidai.weihuotong.controller.GoodsCotroller:goods');
INSERT INTO `t_permission` VALUES ('35', '下架', '商品', 'com.huashidai.weihuotong.controller.GoodsCotroller:leave');
INSERT INTO `t_permission` VALUES ('36', '上架', '商品', 'com.huashidai.weihuotong.controller.GoodsCotroller:up');
INSERT INTO `t_permission` VALUES ('37', '全部', '商品', 'com.huashidai.weihuotong.controller.GoodsCotroller:ALL');
INSERT INTO `t_permission` VALUES ('38', '编辑', '账户权限', 'com.huashidai.weihuotong.controller.PermissionController:save');
INSERT INTO `t_permission` VALUES ('39', '删除', '账户权限', 'com.huashidai.weihuotong.controller.PermissionController:delete');
INSERT INTO `t_permission` VALUES ('40', '主页', '账户权限', 'com.huashidai.weihuotong.controller.PermissionController:index');
INSERT INTO `t_permission` VALUES ('41', '查询', '账户权限', 'com.huashidai.weihuotong.controller.PermissionController:quert');
INSERT INTO `t_permission` VALUES ('42', '全部', '账户权限', 'com.huashidai.weihuotong.controller.PermissionController:ALL');
INSERT INTO `t_permission` VALUES ('43', '查询', '商品订单', 'com.huashidai.weihuotong.controller.ProductOrderCotroller:query');
INSERT INTO `t_permission` VALUES ('44', '首页', '商品订单', 'com.huashidai.weihuotong.controller.ProductOrderCotroller:productOrder');
INSERT INTO `t_permission` VALUES ('45', '全部', '商品订单', 'com.huashidai.weihuotong.controller.ProductOrderCotroller:ALL');
INSERT INTO `t_permission` VALUES ('46', '审核拒绝', '广告', 'com.huashidai.weihuotong.controller.PromotionCotroller:failure');
INSERT INTO `t_permission` VALUES ('47', '删除', '广告', 'com.huashidai.weihuotong.controller.PromotionCotroller:delete');
INSERT INTO `t_permission` VALUES ('48', '查询', '广告', 'com.huashidai.weihuotong.controller.PromotionCotroller:query');
INSERT INTO `t_permission` VALUES ('49', '审核通过', '广告', 'com.huashidai.weihuotong.controller.PromotionCotroller:success');
INSERT INTO `t_permission` VALUES ('50', '主页', '广告', 'com.huashidai.weihuotong.controller.PromotionCotroller:promotion');
INSERT INTO `t_permission` VALUES ('51', '全部', '广告', 'com.huashidai.weihuotong.controller.PromotionCotroller:ALL');
INSERT INTO `t_permission` VALUES ('52', '审核拒绝', '客户店铺', 'com.huashidai.weihuotong.controller.StoreController:failure');
INSERT INTO `t_permission` VALUES ('53', '主页', '客户店铺', 'com.huashidai.weihuotong.controller.StoreController:index');
INSERT INTO `t_permission` VALUES ('54', '查询', '客户店铺', 'com.huashidai.weihuotong.controller.StoreController:query');
INSERT INTO `t_permission` VALUES ('55', '列表', '客户店铺', 'com.huashidai.weihuotong.controller.StoreController:getAll');
INSERT INTO `t_permission` VALUES ('56', '审核通过', '客户店铺', 'com.huashidai.weihuotong.controller.StoreController:success');
INSERT INTO `t_permission` VALUES ('57', '停用', '客户店铺', 'com.huashidai.weihuotong.controller.StoreController:leave');
INSERT INTO `t_permission` VALUES ('58', '停用', '客户店铺', 'com.huashidai.weihuotong.controller.StoreController:up');
INSERT INTO `t_permission` VALUES ('59', '认证信息', '客户店铺', 'com.huashidai.weihuotong.controller.StoreController:storeAuth');
INSERT INTO `t_permission` VALUES ('60', '全部', '客户店铺', 'com.huashidai.weihuotong.controller.StoreController:ALL');
INSERT INTO `t_permission` VALUES ('61', '主页', '商品类型', 'com.huashidai.weihuotong.controller.TypeCotroller:type');
INSERT INTO `t_permission` VALUES ('62', '编辑', '商品类型', 'com.huashidai.weihuotong.controller.TypeCotroller:save');
INSERT INTO `t_permission` VALUES ('63', '删除', '商品类型', 'com.huashidai.weihuotong.controller.TypeCotroller:delete');
INSERT INTO `t_permission` VALUES ('64', '查询', '商品类型', 'com.huashidai.weihuotong.controller.TypeCotroller:query');
INSERT INTO `t_permission` VALUES ('65', '全部', '商品类型', 'com.huashidai.weihuotong.controller.TypeCotroller:ALL');
INSERT INTO `t_permission` VALUES ('66', '删除', '客户账户', 'com.huashidai.weihuotong.controller.UserController:delete');
INSERT INTO `t_permission` VALUES ('67', '主页', '客户账户', 'com.huashidai.weihuotong.controller.UserController:index');
INSERT INTO `t_permission` VALUES ('68', '查询', '客户账户', 'com.huashidai.weihuotong.controller.UserController:query');
INSERT INTO `t_permission` VALUES ('69', '停用', '客户账户', 'com.huashidai.weihuotong.controller.UserController:leave');
INSERT INTO `t_permission` VALUES ('70', '启用', '客户账户', 'com.huashidai.weihuotong.controller.UserController:up');
INSERT INTO `t_permission` VALUES ('71', '全部', '客户账户', 'com.huashidai.weihuotong.controller.UserController:ALL');
INSERT INTO `t_permission` VALUES ('356', '查询', '意见反馈', 'com.huashidai.weihuotong.controller.RecommendationCotroller:query');
INSERT INTO `t_permission` VALUES ('357', '主页', '意见反馈', 'com.huashidai.weihuotong.controller.RecommendationCotroller:recommendation');
INSERT INTO `t_permission` VALUES ('358', '反馈内容', '意见反馈', 'com.huashidai.weihuotong.controller.RecommendationCotroller:showRecommendation');
INSERT INTO `t_permission` VALUES ('359', '全部', '意见反馈', 'com.huashidai.weihuotong.controller.RecommendationCotroller:ALL');
INSERT INTO `t_permission` VALUES ('7923', '查询', '商品订单', 'com.huashidai.weihuotong.controller.PromotionOrderCotroller:query');
INSERT INTO `t_permission` VALUES ('7924', '首页', '商品订单', 'com.huashidai.weihuotong.controller.PromotionOrderCotroller:promotionOrder');
INSERT INTO `t_permission` VALUES ('7925', '全部', '商品订单', 'com.huashidai.weihuotong.controller.PromotionOrderCotroller:ALL');
INSERT INTO `t_permission` VALUES ('8157', '查询', '保证金订单', 'com.huashidai.weihuotong.controller.MarginOrderCotroller:query');
INSERT INTO `t_permission` VALUES ('8158', '首页', '保证金订单', 'com.huashidai.weihuotong.controller.MarginOrderCotroller:marginOrder');
INSERT INTO `t_permission` VALUES ('8159', '全部', '保证金订单', 'com.huashidai.weihuotong.controller.MarginOrderCotroller:ALL');
INSERT INTO `t_permission` VALUES ('11640', '查询', '提现申请', 'com.huashidai.weihuotong.controller.WithdrawCotroller:query');
INSERT INTO `t_permission` VALUES ('11641', '首页', '提现申请', 'com.huashidai.weihuotong.controller.WithdrawCotroller:withdraw');
INSERT INTO `t_permission` VALUES ('11642', '全部', '提现申请', 'com.huashidai.weihuotong.controller.WithdrawCotroller:ALL');
INSERT INTO `t_permission` VALUES ('12312', '同意提现', '提现申请', 'com.huashidai.weihuotong.controller.WithdrawCotroller:agreeApply');
INSERT INTO `t_permission` VALUES ('12313', '拒绝提现', '提现申请', 'com.huashidai.weihuotong.controller.WithdrawCotroller:refuseApply');
INSERT INTO `t_permission` VALUES ('13516', '查询', '用户账户', 'com.huashidai.weihuotong.controller.AccountCotroller:query');
INSERT INTO `t_permission` VALUES ('13517', '主页', '用户账户', 'com.huashidai.weihuotong.controller.AccountCotroller:account');
INSERT INTO `t_permission` VALUES ('13518', '全部', '用户账户', 'com.huashidai.weihuotong.controller.AccountCotroller:ALL');
INSERT INTO `t_permission` VALUES ('13783', '账户流水', '用户账户', 'com.huashidai.weihuotong.controller.AccountCotroller:accountFlow');
INSERT INTO `t_permission` VALUES ('13873', '查询', '系统账户', 'com.huashidai.weihuotong.controller.SystemAccountCotroller:get');
INSERT INTO `t_permission` VALUES ('13874', '账户流水', '系统账户', 'com.huashidai.weihuotong.controller.SystemAccountCotroller:systemSystemAccountFlow');
INSERT INTO `t_permission` VALUES ('13875', '主页', '系统账户', 'com.huashidai.weihuotong.controller.SystemAccountCotroller:systemSystemAccount');
INSERT INTO `t_permission` VALUES ('13876', '全部', '系统账户', 'com.huashidai.weihuotong.controller.SystemAccountCotroller:ALL');
INSERT INTO `t_permission` VALUES ('27961', '订单明细', '商品订单', 'com.huashidai.weihuotong.controller.ProductOrderCotroller:orderItem');
INSERT INTO `t_permission` VALUES ('29006', '主页', '系统监控', 'com.huashidai.weihuotong.controller.MonitoringController:index');
INSERT INTO `t_permission` VALUES ('29007', '全部', '系统监控', 'com.huashidai.weihuotong.controller.MonitoringController:ALL');
INSERT INTO `t_permission` VALUES ('29008', '主页', '系统日志', 'com.huashidai.weihuotong.controller.SystemLogController:index');
INSERT INTO `t_permission` VALUES ('29009', '查询', '系统日志', 'com.huashidai.weihuotong.controller.SystemLogController:query');
INSERT INTO `t_permission` VALUES ('29010', '全部', '系统日志', 'com.huashidai.weihuotong.controller.SystemLogController:ALL');
INSERT INTO `t_permission` VALUES ('30506', '主页', '系统异常', 'com.huashidai.weihuotong.controller.SystemExceptionController:index');
INSERT INTO `t_permission` VALUES ('30507', '查询', '系统异常', 'com.huashidai.weihuotong.controller.SystemExceptionController:query');
INSERT INTO `t_permission` VALUES ('30508', '全部', '系统异常', 'com.huashidai.weihuotong.controller.SystemExceptionController:ALL');

-- ----------------------------
-- Table structure for t_postagetemplate
-- ----------------------------
DROP TABLE IF EXISTS `t_postagetemplate`;
CREATE TABLE `t_postagetemplate` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `one` decimal(10,2) NOT NULL,
  `other` decimal(10,2) NOT NULL,
  `freeNumber` int(11) DEFAULT NULL,
  `area` varchar(255) NOT NULL,
  `store_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_postagetemplate
-- ----------------------------

-- ----------------------------
-- Table structure for t_product
-- ----------------------------
DROP TABLE IF EXISTS `t_product`;
CREATE TABLE `t_product` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `inventoryNum` int(11) NOT NULL,
  `specification` varchar(255) NOT NULL,
  `goods_id` bigint(20) NOT NULL,
  `version` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_product
-- ----------------------------
INSERT INTO `t_product` VALUES ('86', '11', '有', '56', '2', '有的你会看到更');
INSERT INTO `t_product` VALUES ('88', '62', '911', '58', '2', '你的时候就');
INSERT INTO `t_product` VALUES ('90', '3', 'ii', '60', '0', '不能');
INSERT INTO `t_product` VALUES ('98', '99', 'l红色', '62', '1', '女神');
INSERT INTO `t_product` VALUES ('103', '9', 'x', '51', '0', '连衣裙');
INSERT INTO `t_product` VALUES ('104', '10', 'm', '51', '0', '连衣裙');
INSERT INTO `t_product` VALUES ('105', '19', 'xxl', '51', '0', '连衣裙');
INSERT INTO `t_product` VALUES ('108', '5', 'xx', '65', '0', '哈哈哈');
INSERT INTO `t_product` VALUES ('109', '6', 'x', '65', '0', '哈哈哈');
INSERT INTO `t_product` VALUES ('110', '100', '红色，M', '66', '0', '【品牌】：精品女装\n【价格】：￥140.00\n【时间】：2016-07-01\n【介绍】：(包邮）2016夏装新款时尚无袖');
INSERT INTO `t_product` VALUES ('111', '100', '红色，L', '66', '0', '【品牌】：精品女装\n【价格】：￥140.00\n【时间】：2016-07-01\n【介绍】：(包邮）2016夏装新款时尚无袖');
INSERT INTO `t_product` VALUES ('112', '100', '红色，XL', '66', '0', '【品牌】：精品女装\n【价格】：￥140.00\n【时间】：2016-07-01\n【介绍】：(包邮）2016夏装新款时尚无袖');
INSERT INTO `t_product` VALUES ('115', '100', '红色，M', '68', '0', '【品牌】：精品女装\n【价格】：￥90.00\n【时间】：2016-07-02\n【介绍】：(包邮）2016夏装新款时尚中长款');
INSERT INTO `t_product` VALUES ('116', '100', '白色，M', '68', '0', '【品牌】：精品女装\n【价格】：￥90.00\n【时间】：2016-07-02\n【介绍】：(包邮）2016夏装新款时尚中长款');
INSERT INTO `t_product` VALUES ('119', '100', '图片色，M', '69', '0', '【品牌】：精品女装\n【价格】：￥80.00\n【时间】：2016-07-02\n【介绍】：(包邮）2016夏装新款时尚显瘦蓝');
INSERT INTO `t_product` VALUES ('120', '100', '图片色，L', '69', '0', '【品牌】：精品女装\n【价格】：￥80.00\n【时间】：2016-07-02\n【介绍】：(包邮）2016夏装新款时尚显瘦蓝');
INSERT INTO `t_product` VALUES ('123', '100', '图片色，M', '67', '0', '微货通1688测试，此商品不卖');
INSERT INTO `t_product` VALUES ('124', '100', '图片色，L', '67', '0', '微货通1688测试，此商品不卖');
INSERT INTO `t_product` VALUES ('125', '100', '???-M', '70', '0', '??');
INSERT INTO `t_product` VALUES ('126', '100', '???-S', '70', '0', '??');
INSERT INTO `t_product` VALUES ('127', '100', '???-XXL', '70', '0', '??');

-- ----------------------------
-- Table structure for t_productorder
-- ----------------------------
DROP TABLE IF EXISTS `t_productorder`;
CREATE TABLE `t_productorder` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `buyTime` datetime NOT NULL,
  `orderNum` varchar(255) NOT NULL,
  `postage` decimal(10,2) NOT NULL,
  `state` int(11) NOT NULL,
  `totalPrice` decimal(10,2) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `address_id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `proxyUser_id` bigint(20) DEFAULT NULL,
  `store_id` bigint(20) DEFAULT NULL,
  `payPrice` decimal(10,2) DEFAULT NULL,
  `totalOrder_id` bigint(20) DEFAULT NULL,
  `proxyPrice` decimal(10,2) DEFAULT NULL,
  `productNum` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=337 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_productorder
-- ----------------------------
INSERT INTO `t_productorder` VALUES ('263', '2016-06-24 16:54:08', '0624165408000063', '10.00', '4', '160.00', '收货人:李四;电话:13245678910;地址:哈哈街;店铺:微貨通', '41', '63', null, null, '69', '160.00', '406', '0.00', '1');
INSERT INTO `t_productorder` VALUES ('264', '2016-06-24 16:56:07', '0624165607000063', '10.00', '4', '160.00', '收货人:李四;电话:13245678910;地址:哈哈街;店铺:微貨通', '41', '63', null, null, '69', '160.00', '407', '0.00', '1');
INSERT INTO `t_productorder` VALUES ('265', '2016-06-24 16:56:14', '0624165614000063', '10.00', '4', '160.00', '收货人:李四;电话:13245678910;地址:哈哈街;店铺:微貨通', '41', '63', null, null, '69', '160.00', '408', '0.00', '1');
INSERT INTO `t_productorder` VALUES ('266', '2016-06-24 16:57:52', '0624165752000063', '10.00', '4', '160.00', '收货人:李四;电话:13245678910;地址:哈哈街;店铺:微貨通', '41', '63', null, null, '69', '160.00', '409', '0.00', '1');
INSERT INTO `t_productorder` VALUES ('267', '2016-06-24 17:00:03', '0624170003000063', '10.00', '4', '460.00', '收货人:李四;电话:13245678910;地址:哈哈街;店铺:微貨通', '41', '63', null, null, '69', '460.00', '410', '0.00', '3');
INSERT INTO `t_productorder` VALUES ('268', '2016-06-27 10:12:56', '0627101256000065', '10.00', '4', '160.00', '收货人:我们都;电话:2516611;地址:u 啊就是;店铺:微貨通', '49', '65', null, null, '69', '160.00', '411', '0.00', '1');
INSERT INTO `t_productorder` VALUES ('269', '2016-06-27 10:13:38', '0627101338000065', '10.00', '2', '160.00', '收货人:我们都;电话:2516611;地址:u 啊就是;店铺:微貨通', '49', '65', null, null, '69', '160.00', '412', '0.00', '1');
INSERT INTO `t_productorder` VALUES ('271', '2016-06-27 10:15:03', '0627101503000065', '10.00', '2', '100.00', '收货人:我们都;电话:2516611;地址:u 啊就是;店铺:薛大大', '49', '65', null, null, '63', '100.00', '414', '0.00', '1');
INSERT INTO `t_productorder` VALUES ('272', '2016-06-27 11:57:28', '0627115728000067', '10.00', '4', '110.00', '收货人:彭泽刚;电话:13548065751;地址:金牛万达广场;店铺:薛大大', '50', '67', null, null, '63', '110.00', '415', '0.00', '1');
INSERT INTO `t_productorder` VALUES ('273', '2016-06-27 11:57:39', '0627115739000067', '10.00', '4', '110.00', '收货人:彭泽刚;电话:13548065751;地址:金牛万达广场;店铺:薛大大', '50', '67', null, null, '63', '110.00', '416', '0.00', '1');
INSERT INTO `t_productorder` VALUES ('279', '2016-06-27 12:01:41', '0627120141000067', '10.00', '2', '25.00', '收货人:彭泽刚;电话:13548065751;地址:金牛万达广场;店铺:施工洛林', '50', '67', null, null, '81', '25.00', '422', '0.00', '1');
INSERT INTO `t_productorder` VALUES ('282', '2016-06-27 12:12:01', '0627121201000064', '20.00', '4', '320.00', '收货人:张三;电话:13245678910;地址:昭觉寺;店铺:我们都是一', '52', '64', null, null, '82', '0.01', '425', '0.00', '1');
INSERT INTO `t_productorder` VALUES ('289', '2016-06-27 14:03:58', '0627140358000068', '10.00', '3', '86.00', '收货人:你的;电话:111;地址:这样才;店铺:抠门兔', '53', '68', null, null, '80', '86.00', '432', '0.00', '4');
INSERT INTO `t_productorder` VALUES ('291', '2016-06-27 14:06:22', '0627140622000064', '10.00', '4', '190.00', '收货人:张三;电话:13245678910;地址:昭觉寺;店铺:薛大大', '52', '64', null, null, '63', '190.00', '434', '0.00', '2');
INSERT INTO `t_productorder` VALUES ('292', '2016-06-27 14:06:45', '0627140645000064', '10.00', '4', '48.00', '收货人:张三;电话:13245678910;地址:昭觉寺;店铺:抠门兔', '52', '64', null, null, '80', '48.00', '435', '0.00', '2');
INSERT INTO `t_productorder` VALUES ('297', '2016-06-27 14:19:12', '0627141912000064', '10.00', '4', '48.00', '收货人:张三;电话:13245678910;地址:昭觉寺;店铺:抠门兔', '52', '64', null, null, '80', '48.00', '440', '0.00', '2');
INSERT INTO `t_productorder` VALUES ('304', '2016-06-27 14:42:10', '0627144210000067', '0.00', '4', '0.00', '收货人:彭泽刚;电话:17775528016;地址:logo 后;店铺:我们都是一', '51', '67', null, null, '82', '0.00', '447', '0.00', '1');
INSERT INTO `t_productorder` VALUES ('305', '2016-06-27 14:42:31', '0627144231000067', '0.00', '4', '0.00', '收货人:彭泽刚;电话:17775528016;地址:logo 后;店铺:我们都是一', '51', '67', null, null, '82', '0.00', '448', '0.00', '3');
INSERT INTO `t_productorder` VALUES ('306', '2016-06-27 14:43:41', '10627144341000068', '10.00', '4', '48.00', '收货人:你的;电话:111;地址:这样才;店铺:抠门兔', '53', '68', null, null, '80', '48.00', '449', '0.00', '2');
INSERT INTO `t_productorder` VALUES ('307', '2016-06-27 14:44:27', '10627144427000068', '10.00', '3', '29.00', '收货人:你的;电话:111;地址:这样才;店铺:抠门兔', '53', '68', null, null, '80', '29.00', '450', '0.00', '1');
INSERT INTO `t_productorder` VALUES ('309', '2016-06-27 16:12:58', '10627161258000064', '10.00', '4', '29.00', '收货人:张三;电话:13245678910;地址:昭觉寺;店铺:抠门兔', '52', '64', null, null, '80', '29.00', '452', '0.00', '1');
INSERT INTO `t_productorder` VALUES ('310', '2016-06-27 16:20:55', '10627162055000070', '10.00', '4', '29.00', '收货人:kkn;电话:1369852147;地址:jjn;店铺:抠门兔', '54', '70', null, null, '80', '29.00', '453', '0.00', '1');
INSERT INTO `t_productorder` VALUES ('311', '2016-06-27 16:21:08', '10627162108000070', '10.00', '4', '29.00', '收货人:kkn;电话:1369852147;地址:jjn;店铺:抠门兔', '54', '70', null, null, '80', '29.00', '454', '0.00', '1');
INSERT INTO `t_productorder` VALUES ('312', '2016-06-27 23:33:05', '10627233305000071', '10.00', '4', '29.00', '收货人:也一样;电话:13980928652;地址:嘎嘎嘎;店铺:抠门兔', '55', '71', null, null, '80', '29.00', '455', '0.00', '1');
INSERT INTO `t_productorder` VALUES ('313', '2016-06-27 23:45:34', '10627234534000071', '10.00', '4', '29.00', '收货人:也一样;电话:13980928652;地址:嘎嘎嘎;店铺:抠门兔', '55', '71', null, null, '80', '29.00', '456', '0.00', '1');
INSERT INTO `t_productorder` VALUES ('315', '2016-06-27 23:55:39', '10627235539000071', '10.00', '2', '160.00', '收货人:也一样;电话:13980928652;地址:嘎嘎嘎;店铺:微貨通', '55', '71', null, null, '69', '160.00', '458', '0.00', '1');
INSERT INTO `t_productorder` VALUES ('321', '2016-06-28 00:02:48', '10628000248000071', '10.00', '4', '110.00', '收货人:也一样;电话:13980928652;地址:嘎嘎嘎;店铺:薛大大', '55', '71', null, null, '63', '110.00', '464', '0.00', '1');
INSERT INTO `t_productorder` VALUES ('322', '2016-06-28 00:03:32', '10628000332000071', '10.00', '2', '110.00', '收货人:也一样;电话:13980928652;地址:嘎嘎嘎;店铺:薛大大', '55', '71', null, null, '63', '110.00', '465', '0.00', '1');
INSERT INTO `t_productorder` VALUES ('323', '2016-06-28 11:05:09', '10628110509000064', '10.00', '4', '67.00', '收货人:张三;电话:13245678910;地址:昭觉寺;店铺:抠门兔', '52', '64', null, null, '80', '67.00', '466', '0.00', '3');
INSERT INTO `t_productorder` VALUES ('324', '2016-06-28 11:07:04', '10628110704000067', '10.00', '4', '55.00', '收货人:彭泽刚;电话:13548065751;地址:金牛万达广场;店铺:施工洛林', '50', '67', null, null, '81', '0.10', '467', '0.00', '3');
INSERT INTO `t_productorder` VALUES ('325', '2016-06-28 11:07:45', '10628110745000067', '10.00', '2', '55.00', '收货人:彭泽刚;电话:13548065751;地址:金牛万达广场;店铺:施工洛林', '50', '67', null, null, '81', '55.00', '468', '0.00', '3');
INSERT INTO `t_productorder` VALUES ('326', '2016-06-28 13:34:40', '10628133440000064', '10.00', '4', '86.00', '收货人:张三;电话:13245678910;地址:昭觉寺;店铺:抠门兔', '52', '64', null, null, '80', '86.00', '469', '0.00', '4');
INSERT INTO `t_productorder` VALUES ('327', '2016-06-28 14:03:57', '10628140357000068', '10.00', '3', '48.00', '收货人:你的;电话:111;地址:这样才;店铺:', '53', '68', null, null, '80', '0.01', '470', '0.00', '2');
INSERT INTO `t_productorder` VALUES ('328', '2016-06-28 14:04:43', '10628140443000068', '10.00', '4', '48.00', '收货人:你的;电话:111;地址:这样才;店铺:', '53', '68', null, null, '80', '48.00', '471', '0.00', '2');
INSERT INTO `t_productorder` VALUES ('329', '2016-06-28 14:11:19', '10628141119000068', '10.00', '4', '48.00', '收货人:你的;电话:111;地址:这样才;店铺:', '53', '68', null, null, '80', '48.00', '472', '0.00', '2');
INSERT INTO `t_productorder` VALUES ('330', '2016-06-29 06:38:34', '10629063834000064', '10.00', '4', '13.00', '收货人:张三;电话:13245678910;地址:昭觉寺;店铺:沸点九九宜宾县分店', '52', '64', null, null, '80', '13.00', '473', '0.00', '3');
INSERT INTO `t_productorder` VALUES ('331', '2016-06-29 18:36:56', '10629183656000064', '10.00', '4', '190.00', '收货人:张三;电话:13245678910;地址:昭觉寺;店铺:薛大大', '52', '64', null, null, '63', '190.00', '474', '0.00', '2');
INSERT INTO `t_productorder` VALUES ('332', '2016-06-29 18:37:10', '10629183710000064', '10.00', '4', '190.00', '收货人:张三;电话:13245678910;地址:昭觉寺;店铺:薛大大', '52', '64', null, null, '63', '190.00', '475', '0.00', '2');
INSERT INTO `t_productorder` VALUES ('333', '2016-06-29 18:37:55', '10629183755000064', '10.00', '4', '190.00', '收货人:张三;电话:13245678910;地址:昭觉寺;店铺:薛大大', '52', '64', null, null, '63', '190.00', '476', '0.00', '2');
INSERT INTO `t_productorder` VALUES ('335', '2016-06-29 18:39:33', '10629183933000064', '20.00', '4', '320.00', '收货人:张三;电话:13245678910;地址:昭觉寺;店铺:我们都是一', '52', '64', null, null, '82', '320.00', '478', '0.00', '1');
INSERT INTO `t_productorder` VALUES ('336', '2016-06-30 17:15:06', '10630171506000063', '10.00', '2', '60.00', '收货人:李四;电话:13245678910;地址:哈哈街;店铺:沸点九九遵义分店', '41', '63', null, null, '81', '60.00', '479', '0.00', '1');

-- ----------------------------
-- Table structure for t_productorderitem
-- ----------------------------
DROP TABLE IF EXISTS `t_productorderitem`;
CREATE TABLE `t_productorderitem` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `price` decimal(10,2) NOT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `num` int(11) NOT NULL,
  `productOrder_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKF7DE8F5266441213` (`productOrder_id`),
  CONSTRAINT `FKF7DE8F5266441213` FOREIGN KEY (`productOrder_id`) REFERENCES `t_productorder` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=290 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_productorderitem
-- ----------------------------
INSERT INTO `t_productorderitem` VALUES ('201', '150.00', '150.00', '1', '263', '75', '连衣裙 连衣裙', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg');
INSERT INTO `t_productorderitem` VALUES ('202', '150.00', '150.00', '1', '264', '75', '连衣裙 连衣裙', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg');
INSERT INTO `t_productorderitem` VALUES ('203', '150.00', '150.00', '1', '265', '75', '连衣裙 连衣裙', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg');
INSERT INTO `t_productorderitem` VALUES ('204', '150.00', '150.00', '1', '266', '75', '连衣裙 连衣裙', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg');
INSERT INTO `t_productorderitem` VALUES ('205', '150.00', '150.00', '1', '267', '73', '连衣裙 连衣裙', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg');
INSERT INTO `t_productorderitem` VALUES ('206', '150.00', '150.00', '1', '267', '74', '连衣裙 连衣裙', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg');
INSERT INTO `t_productorderitem` VALUES ('207', '150.00', '150.00', '1', '267', '75', '连衣裙 连衣裙', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg');
INSERT INTO `t_productorderitem` VALUES ('208', '150.00', '150.00', '1', '268', '73', '连衣裙 连衣裙', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg');
INSERT INTO `t_productorderitem` VALUES ('209', '150.00', '150.00', '1', '269', '73', '连衣裙 连衣裙', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg');
INSERT INTO `t_productorderitem` VALUES ('210', '90.00', '90.00', '1', '271', '78', '【品牌】：精品女装\n【价格】：￥90.00\n【时间】：2016-06-24\n【介绍】：(包邮）2016夏装新款时尚小香风 【品牌】：精品女装\n【价格】：￥90.00\n【时间】：2016-06-24\n【介绍】：(包邮）2016夏装新款时尚小香风', '/images/bannerImage/6c940c52-6cf7-4340-b4bb-c73f47c5ec05.jpg');
INSERT INTO `t_productorderitem` VALUES ('211', '100.00', '100.00', '1', '272', '81', '，，，， ，，，，', '/images/bannerImage/335995ea-373d-421f-977a-225ac27d584f.jpg');
INSERT INTO `t_productorderitem` VALUES ('212', '100.00', '100.00', '1', '273', '81', '，，，， ，，，，', '/images/bannerImage/335995ea-373d-421f-977a-225ac27d584f.jpg');
INSERT INTO `t_productorderitem` VALUES ('221', '15.00', '15.00', '1', '279', '82', '女神 女神', '/images/bannerImage/e5a3f76e-4148-461e-96ec-4a62462877c5.jpg');
INSERT INTO `t_productorderitem` VALUES ('222', '300.00', '300.00', '1', '282', '86', '有的你会看到更 有的你会看到更', '/images/bannerImage/360a9882-e7d3-48ca-ae07-6dfda0cd2847.jpg');
INSERT INTO `t_productorderitem` VALUES ('232', '19.00', '38.00', '2', '289', '84', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空 抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg');
INSERT INTO `t_productorderitem` VALUES ('233', '19.00', '38.00', '2', '289', '85', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空 抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg');
INSERT INTO `t_productorderitem` VALUES ('236', '90.00', '90.00', '1', '291', '78', '【品牌】：精品女装\n【价格】：￥90.00\n【时间】：2016-06-24\n【介绍】：(包邮）2016夏装新款时尚小香风 【品牌】：精品女装\n【价格】：￥90.00\n【时间】：2016-06-24\n【介绍】：(包邮）2016夏装新款时尚小香风', '/images/bannerImage/6c940c52-6cf7-4340-b4bb-c73f47c5ec05.jpg');
INSERT INTO `t_productorderitem` VALUES ('237', '90.00', '90.00', '1', '291', '79', '【品牌】：精品女装\n【价格】：￥90.00\n【时间】：2016-06-24\n【介绍】：(包邮）2016夏装新款时尚小香风 【品牌】：精品女装\n【价格】：￥90.00\n【时间】：2016-06-24\n【介绍】：(包邮）2016夏装新款时尚小香风', '/images/bannerImage/6c940c52-6cf7-4340-b4bb-c73f47c5ec05.jpg');
INSERT INTO `t_productorderitem` VALUES ('238', '19.00', '19.00', '1', '292', '84', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空 抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg');
INSERT INTO `t_productorderitem` VALUES ('239', '19.00', '19.00', '1', '292', '85', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空 抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg');
INSERT INTO `t_productorderitem` VALUES ('245', '19.00', '19.00', '1', '297', '84', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空 抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg');
INSERT INTO `t_productorderitem` VALUES ('246', '19.00', '19.00', '1', '297', '85', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空 抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg');
INSERT INTO `t_productorderitem` VALUES ('247', '0.00', '0.00', '1', '304', '88', '你的时候就 你的时候就', '/images/bannerImage/540034b5-05ff-4b2e-b1c1-e1635d625c44.jpg');
INSERT INTO `t_productorderitem` VALUES ('248', '0.00', '0.00', '3', '305', '88', '你的时候就 你的时候就', '/images/bannerImage/540034b5-05ff-4b2e-b1c1-e1635d625c44.jpg');
INSERT INTO `t_productorderitem` VALUES ('249', '19.00', '19.00', '1', '306', '84', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空 抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg');
INSERT INTO `t_productorderitem` VALUES ('250', '19.00', '19.00', '1', '306', '85', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空 抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg');
INSERT INTO `t_productorderitem` VALUES ('251', '19.00', '19.00', '1', '307', '85', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空 抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg');
INSERT INTO `t_productorderitem` VALUES ('252', '19.00', '19.00', '1', '309', '84', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空 抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg');
INSERT INTO `t_productorderitem` VALUES ('253', '19.00', '19.00', '1', '310', '84', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空 抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg');
INSERT INTO `t_productorderitem` VALUES ('254', '19.00', '19.00', '1', '311', '84', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空 抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg');
INSERT INTO `t_productorderitem` VALUES ('255', '19.00', '19.00', '1', '312', '85', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空 抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg');
INSERT INTO `t_productorderitem` VALUES ('256', '19.00', '19.00', '1', '313', '84', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空 抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg');
INSERT INTO `t_productorderitem` VALUES ('257', '150.00', '150.00', '1', '315', '73', '连衣裙 连衣裙', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg');
INSERT INTO `t_productorderitem` VALUES ('263', '100.00', '100.00', '1', '321', '81', '，，，， ，，，，', '/images/bannerImage/335995ea-373d-421f-977a-225ac27d584f.jpg');
INSERT INTO `t_productorderitem` VALUES ('264', '100.00', '100.00', '1', '322', '81', '，，，， ，，，，', '/images/bannerImage/335995ea-373d-421f-977a-225ac27d584f.jpg');
INSERT INTO `t_productorderitem` VALUES ('265', '19.00', '19.00', '1', '323', '84', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空 抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg');
INSERT INTO `t_productorderitem` VALUES ('266', '19.00', '38.00', '2', '323', '85', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空 抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg');
INSERT INTO `t_productorderitem` VALUES ('267', '15.00', '15.00', '1', '324', '82', '女神 女神', '/images/bannerImage/e5a3f76e-4148-461e-96ec-4a62462877c5.jpg');
INSERT INTO `t_productorderitem` VALUES ('268', '15.00', '30.00', '2', '324', '83', '女神 女神', '/images/bannerImage/e5a3f76e-4148-461e-96ec-4a62462877c5.jpg');
INSERT INTO `t_productorderitem` VALUES ('269', '15.00', '15.00', '1', '325', '82', '女神 女神', '/images/bannerImage/e5a3f76e-4148-461e-96ec-4a62462877c5.jpg');
INSERT INTO `t_productorderitem` VALUES ('270', '15.00', '30.00', '2', '325', '83', '女神 女神', '/images/bannerImage/e5a3f76e-4148-461e-96ec-4a62462877c5.jpg');
INSERT INTO `t_productorderitem` VALUES ('271', '19.00', '38.00', '2', '326', '84', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空 抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg');
INSERT INTO `t_productorderitem` VALUES ('272', '19.00', '38.00', '2', '326', '85', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空 抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg');
INSERT INTO `t_productorderitem` VALUES ('273', '19.00', '19.00', '1', '327', '84', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空 抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg');
INSERT INTO `t_productorderitem` VALUES ('274', '19.00', '19.00', '1', '327', '85', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空 抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg');
INSERT INTO `t_productorderitem` VALUES ('275', '19.00', '19.00', '1', '328', '85', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空 抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg');
INSERT INTO `t_productorderitem` VALUES ('276', '19.00', '19.00', '1', '328', '84', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空 抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg');
INSERT INTO `t_productorderitem` VALUES ('277', '19.00', '19.00', '1', '329', '84', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空 抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg');
INSERT INTO `t_productorderitem` VALUES ('278', '19.00', '19.00', '1', '329', '85', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空 抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg');
INSERT INTO `t_productorderitem` VALUES ('279', '1.00', '2.00', '2', '330', '97', '女神 女神', '/images/bannerImage/2251c3be-b3ae-4bf5-aa90-52b625f6777b.jpg');
INSERT INTO `t_productorderitem` VALUES ('280', '1.00', '1.00', '1', '330', '96', '女神 女神', '/images/bannerImage/2251c3be-b3ae-4bf5-aa90-52b625f6777b.jpg');
INSERT INTO `t_productorderitem` VALUES ('281', '90.00', '90.00', '1', '331', '78', '【品牌】：精品女装\n【价格】：￥90.00\n【时间】：2016-06-24\n【介绍】：(包邮）2016夏装新款时尚小香风 【品牌】：精品女装\n【价格】：￥90.00\n【时间】：2016-06-24\n【介绍】：(包邮）2016夏装新款时尚小香风', '/images/bannerImage/6c940c52-6cf7-4340-b4bb-c73f47c5ec05.jpg');
INSERT INTO `t_productorderitem` VALUES ('282', '90.00', '90.00', '1', '331', '79', '【品牌】：精品女装\n【价格】：￥90.00\n【时间】：2016-06-24\n【介绍】：(包邮）2016夏装新款时尚小香风 【品牌】：精品女装\n【价格】：￥90.00\n【时间】：2016-06-24\n【介绍】：(包邮）2016夏装新款时尚小香风', '/images/bannerImage/6c940c52-6cf7-4340-b4bb-c73f47c5ec05.jpg');
INSERT INTO `t_productorderitem` VALUES ('283', '90.00', '90.00', '1', '332', '78', '【品牌】：精品女装\n【价格】：￥90.00\n【时间】：2016-06-24\n【介绍】：(包邮）2016夏装新款时尚小香风 【品牌】：精品女装\n【价格】：￥90.00\n【时间】：2016-06-24\n【介绍】：(包邮）2016夏装新款时尚小香风', '/images/bannerImage/6c940c52-6cf7-4340-b4bb-c73f47c5ec05.jpg');
INSERT INTO `t_productorderitem` VALUES ('284', '90.00', '90.00', '1', '332', '79', '【品牌】：精品女装\n【价格】：￥90.00\n【时间】：2016-06-24\n【介绍】：(包邮）2016夏装新款时尚小香风 【品牌】：精品女装\n【价格】：￥90.00\n【时间】：2016-06-24\n【介绍】：(包邮）2016夏装新款时尚小香风', '/images/bannerImage/6c940c52-6cf7-4340-b4bb-c73f47c5ec05.jpg');
INSERT INTO `t_productorderitem` VALUES ('285', '90.00', '90.00', '1', '333', '78', '【品牌】：精品女装\n【价格】：￥90.00\n【时间】：2016-06-24\n【介绍】：(包邮）2016夏装新款时尚小香风 【品牌】：精品女装\n【价格】：￥90.00\n【时间】：2016-06-24\n【介绍】：(包邮）2016夏装新款时尚小香风', '/images/bannerImage/6c940c52-6cf7-4340-b4bb-c73f47c5ec05.jpg');
INSERT INTO `t_productorderitem` VALUES ('286', '90.00', '90.00', '1', '333', '79', '【品牌】：精品女装\n【价格】：￥90.00\n【时间】：2016-06-24\n【介绍】：(包邮）2016夏装新款时尚小香风 【品牌】：精品女装\n【价格】：￥90.00\n【时间】：2016-06-24\n【介绍】：(包邮）2016夏装新款时尚小香风', '/images/bannerImage/6c940c52-6cf7-4340-b4bb-c73f47c5ec05.jpg');
INSERT INTO `t_productorderitem` VALUES ('288', '300.00', '300.00', '1', '335', '86', '有的你会看到更 有的你会看到更', '/images/bannerImage/360a9882-e7d3-48ca-ae07-6dfda0cd2847.jpg');
INSERT INTO `t_productorderitem` VALUES ('289', '50.00', '50.00', '1', '336', '98', '女神 女神', '/images/bannerImage/a4dda6d3-843c-4541-bda9-fa274c23ccff.jpg');

-- ----------------------------
-- Table structure for t_promotion
-- ----------------------------
DROP TABLE IF EXISTS `t_promotion`;
CREATE TABLE `t_promotion` (
  `state` bigint(20) NOT NULL,
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  `contentType` int(11) NOT NULL,
  `contentId` int(11) NOT NULL,
  `beginTime` datetime NOT NULL,
  `endTime` datetime NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `adPositionId_id` bigint(20) NOT NULL,
  `store_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_promotion
-- ----------------------------
INSERT INTO `t_promotion` VALUES ('-1', '70', '/images/promotion/7ecdc736-7223-4e8b-80c5-f5b2e56c44d8.jpg', '2', '69', '2016-06-24 00:00:00', '2016-07-24 00:00:00', '1320.00', '4', '69');
INSERT INTO `t_promotion` VALUES ('1', '71', '/images/promotion/0a499b9f-eb03-48f9-8922-377c45ffc714.png', '2', '69', '2016-06-24 00:00:00', '2016-07-24 00:00:00', '1320.00', '4', '69');
INSERT INTO `t_promotion` VALUES ('1', '72', '/images/promotion/cf0aa496-8cc4-4a11-8510-0ab330827b12.png', '2', '69', '2016-06-24 00:00:00', '2016-07-24 00:00:00', '1320.00', '5', '69');
INSERT INTO `t_promotion` VALUES ('1', '73', '/images/promotion/31c00371-7b2f-4242-8016-803074a9e121.jpg', '2', '69', '2016-06-24 00:00:00', '2016-07-24 00:00:00', '1320.00', '6', '69');
INSERT INTO `t_promotion` VALUES ('1', '74', '/images/promotion/e7a1cd8b-a14f-44e3-8195-88961bf9c064.jpg', '2', '69', '2016-06-24 00:00:00', '2016-07-24 00:00:00', '2310.00', '13', '69');
INSERT INTO `t_promotion` VALUES ('1', '75', '/images/promotion/0563200b-71f4-492b-9722-ed41f0a1b285.jpg', '2', '69', '2016-06-24 00:00:00', '2016-07-24 00:00:00', '330.00', '1', '69');
INSERT INTO `t_promotion` VALUES ('-1', '76', '/images/promotion/af3a7a67-74dd-411b-b5b5-ecb49d102523.jpg', '1', '54', '2016-06-27 00:00:00', '2016-06-27 00:00:00', '55.00', '7', '81');
INSERT INTO `t_promotion` VALUES ('-1', '77', '/images/promotion/c9b44c2e-e550-490c-ac11-5a2d1b128748.jpg', '1', '1', '2016-06-14 17:31:51', '2016-06-14 17:31:51', '0.00', '1', '84');
INSERT INTO `t_promotion` VALUES ('1', '78', '/images/promotion/ee8b87d2-8867-4ced-b467-d80a10e09c97.JPEG', '2', '84', '2016-05-28 00:00:00', '2016-07-28 00:00:00', '3355.00', '7', '84');
INSERT INTO `t_promotion` VALUES ('-1', '79', '/images/promotion/d3dc00ac-f641-4787-9625-81eafc0dd921.jpg', '2', '82', '2016-07-28 17:50:09', '2016-08-28 17:50:09', '1705.00', '8', '82');
INSERT INTO `t_promotion` VALUES ('1', '80', '/images/promotion/d48838e6-e529-4f01-a1a3-c882070e5bdb.jpg', '1', '58', '2016-08-28 17:51:14', '2016-09-28 17:51:14', '1705.00', '8', '82');
INSERT INTO `t_promotion` VALUES ('1', '81', '/images/promotion/0cb406f4-dabb-47c2-9a65-7b38ecf99937.jpg', '2', '82', '2016-06-28 17:53:21', '2016-07-02 17:53:21', '220.00', '8', '82');
INSERT INTO `t_promotion` VALUES ('1', '82', '/images/promotion/5a20eb99-9abe-42b5-b103-3bfd1b4629b8.jpg', '2', '82', '2016-06-27 17:54:00', '2016-08-01 17:54:00', '1925.00', '9', '82');

-- ----------------------------
-- Table structure for t_promotionorder
-- ----------------------------
DROP TABLE IF EXISTS `t_promotionorder`;
CREATE TABLE `t_promotionorder` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `buyTime` datetime NOT NULL,
  `orderNum` varchar(255) NOT NULL,
  `state` int(11) NOT NULL,
  `totalPrice` decimal(10,2) DEFAULT NULL,
  `payPrice` decimal(10,2) DEFAULT NULL,
  `store_id` bigint(20) DEFAULT NULL,
  `promotion_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_promotionorder
-- ----------------------------
INSERT INTO `t_promotionorder` VALUES ('59', '2016-06-24 17:52:45', '20624175245000069', '-1', '1320.00', '1320.00', '69', '70');
INSERT INTO `t_promotionorder` VALUES ('60', '2016-06-24 17:53:24', '20624175324000069', '1', '1320.00', '1320.00', '69', '71');
INSERT INTO `t_promotionorder` VALUES ('61', '2016-06-24 17:53:57', '20624175357000069', '1', '1320.00', '1320.00', '69', '72');
INSERT INTO `t_promotionorder` VALUES ('62', '2016-06-24 17:54:26', '20624175426000069', '1', '1320.00', '1320.00', '69', '73');
INSERT INTO `t_promotionorder` VALUES ('63', '2016-06-24 17:55:10', '20624175510000069', '1', '2310.00', '2310.00', '69', '74');
INSERT INTO `t_promotionorder` VALUES ('64', '2016-06-24 17:56:22', '20624175622000069', '1', '330.00', '330.00', '69', '75');
INSERT INTO `t_promotionorder` VALUES ('65', '2016-06-27 11:45:53', '20627114553000081', '-1', '55.00', '55.00', '81', '76');
INSERT INTO `t_promotionorder` VALUES ('66', '2016-06-28 17:45:03', '20628174503000084', '-1', '0.00', '0.00', '84', '77');
INSERT INTO `t_promotionorder` VALUES ('67', '2016-06-28 17:47:12', '20628174712000084', '1', '3355.00', '3355.00', '84', '78');
INSERT INTO `t_promotionorder` VALUES ('68', '2016-06-28 17:50:02', '20628175002000082', '-1', '1705.00', '1705.00', '82', '79');
INSERT INTO `t_promotionorder` VALUES ('69', '2016-06-28 17:51:04', '20628175104000082', '1', '1705.00', '1705.00', '82', '80');
INSERT INTO `t_promotionorder` VALUES ('70', '2016-06-28 17:53:17', '20628175317000082', '1', '220.00', '220.00', '82', '81');
INSERT INTO `t_promotionorder` VALUES ('71', '2016-06-28 17:53:54', '20628175354000082', '1', '1925.00', '1925.00', '82', '82');

-- ----------------------------
-- Table structure for t_province
-- ----------------------------
DROP TABLE IF EXISTS `t_province`;
CREATE TABLE `t_province` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `carorg` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lsp` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of t_province
-- ----------------------------
INSERT INTO `t_province` VALUES ('1', '北京市', 'beijing', '京');
INSERT INTO `t_province` VALUES ('2', '天津市', null, null);
INSERT INTO `t_province` VALUES ('3', '上海市', 'shanghai', '沪');
INSERT INTO `t_province` VALUES ('4', '重庆市', 'chongqing', '渝');
INSERT INTO `t_province` VALUES ('5', '河北省', 'hebei', '冀');
INSERT INTO `t_province` VALUES ('6', '山西省', 'shanxi', '晋');
INSERT INTO `t_province` VALUES ('7', '台湾省', null, null);
INSERT INTO `t_province` VALUES ('8', '辽宁省', null, null);
INSERT INTO `t_province` VALUES ('9', '吉林省', 'jilin', '吉');
INSERT INTO `t_province` VALUES ('10', '黑龙江省', 'heilongjiang', '黑');
INSERT INTO `t_province` VALUES ('11', '江苏省', 'jiangsu', '苏');
INSERT INTO `t_province` VALUES ('12', '浙江省', 'zhejiang', '浙');
INSERT INTO `t_province` VALUES ('13', '安徽省', 'anhui', '皖');
INSERT INTO `t_province` VALUES ('14', '福建省', 'fujian', '闽');
INSERT INTO `t_province` VALUES ('15', '江西省', null, null);
INSERT INTO `t_province` VALUES ('16', '山东省', 'shandong', '鲁');
INSERT INTO `t_province` VALUES ('17', '河南省', 'henan', '豫');
INSERT INTO `t_province` VALUES ('18', '湖北省', 'hubei', '鄂');
INSERT INTO `t_province` VALUES ('19', '湖南省', 'hunan', '湘');
INSERT INTO `t_province` VALUES ('20', '广东省', 'guangdong', '粤');
INSERT INTO `t_province` VALUES ('21', '甘肃省', 'gansu', '甘');
INSERT INTO `t_province` VALUES ('22', '四川省', 'sichuan', '川');
INSERT INTO `t_province` VALUES ('24', '贵州省', 'guizhou', '贵');
INSERT INTO `t_province` VALUES ('25', '海南省', 'hainan', '琼');
INSERT INTO `t_province` VALUES ('26', '云南省', 'yunnan', '云');
INSERT INTO `t_province` VALUES ('27', '青海省', 'qinghai', '青');
INSERT INTO `t_province` VALUES ('28', '陕西省', null, null);
INSERT INTO `t_province` VALUES ('29', '广西壮族自治区', null, null);
INSERT INTO `t_province` VALUES ('30', '西藏自治区', null, null);
INSERT INTO `t_province` VALUES ('31', '宁夏回族自治区', 'ningxia', '宁');
INSERT INTO `t_province` VALUES ('32', '新疆维吾尔自治区', 'xinjiang', '新');
INSERT INTO `t_province` VALUES ('33', '内蒙古自治区', null, null);
INSERT INTO `t_province` VALUES ('34', '澳门特别行政区', null, null);
INSERT INTO `t_province` VALUES ('35', '香港特别行政区', null, null);

-- ----------------------------
-- Table structure for t_proxygoods
-- ----------------------------
DROP TABLE IF EXISTS `t_proxygoods`;
CREATE TABLE `t_proxygoods` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `price` decimal(10,2) NOT NULL,
  `details` text NOT NULL,
  `goods_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=558 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_proxygoods
-- ----------------------------
INSERT INTO `t_proxygoods` VALUES ('103', '180.00', '更好看，更时尚', '51', '63');
INSERT INTO `t_proxygoods` VALUES ('104', '300.00', '更好看，更时尚', '51', '11');
INSERT INTO `t_proxygoods` VALUES ('105', '300.00', '更好看，更时尚', '51', '11');
INSERT INTO `t_proxygoods` VALUES ('106', '300.00', '更好看，更时尚', '51', '11');
INSERT INTO `t_proxygoods` VALUES ('107', '300.00', '更好看，更时尚', '51', '11');
INSERT INTO `t_proxygoods` VALUES ('108', '300.00', '更好看，更时尚', '51', '11');
INSERT INTO `t_proxygoods` VALUES ('109', '58.00', '和咯莫', '54', '67');
INSERT INTO `t_proxygoods` VALUES ('110', '58.00', '和咯莫', '54', '67');
INSERT INTO `t_proxygoods` VALUES ('111', '300.00', '更好看，更时尚', '51', '67');
INSERT INTO `t_proxygoods` VALUES ('112', '300.00', '更好看，更时尚', '51', '68');
INSERT INTO `t_proxygoods` VALUES ('113', '390.00', '更好看，更时尚', '51', '67');
INSERT INTO `t_proxygoods` VALUES ('114', '300.00', '更好看，更时尚', '51', '67');
INSERT INTO `t_proxygoods` VALUES ('115', '300.00', '更好看，更时尚', '51', '67');
INSERT INTO `t_proxygoods` VALUES ('116', '300.00', '更好看，更时尚', '51', '67');
INSERT INTO `t_proxygoods` VALUES ('117', '300.00', '更好看，更时尚', '51', '67');
INSERT INTO `t_proxygoods` VALUES ('118', '200.00', '【品牌】：精品女装\n【价格】：￥90.00\n【时间】：2016-06-24\n【介绍】：(包邮）2016夏装新款时尚小香风印花背心上衣+高腰短裤套装\nM-L 上蓝下黑裤 上黄下黑裤', '52', '67');
INSERT INTO `t_proxygoods` VALUES ('119', '80.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '67');
INSERT INTO `t_proxygoods` VALUES ('120', '80.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '67');
INSERT INTO `t_proxygoods` VALUES ('121', '80.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '67');
INSERT INTO `t_proxygoods` VALUES ('122', '1000.00', '，帮忙什么意思', '53', '67');
INSERT INTO `t_proxygoods` VALUES ('123', '1000.00', '，帮忙什么意思', '53', '67');
INSERT INTO `t_proxygoods` VALUES ('124', '1000.00', '，帮忙什么意思', '53', '67');
INSERT INTO `t_proxygoods` VALUES ('125', '1000.00', '，帮忙什么意思', '53', '67');
INSERT INTO `t_proxygoods` VALUES ('126', '100.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '67');
INSERT INTO `t_proxygoods` VALUES ('127', '100.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '67');
INSERT INTO `t_proxygoods` VALUES ('128', '100.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '67');
INSERT INTO `t_proxygoods` VALUES ('129', '100.00', '【品牌】：精品女装\n【价格】：￥90.00\n【时间】：2016-06-24\n【介绍】：(包邮）2016夏装新款时尚小香风印花背心上衣+高腰短裤套装\nM-L 上蓝下黑裤 上黄下黑裤', '52', '64');
INSERT INTO `t_proxygoods` VALUES ('130', '100.00', '【品牌】：精品女装\n【价格】：￥90.00\n【时间】：2016-06-24\n【介绍】：(包邮）2016夏装新款时尚小香风印花背心上衣+高腰短裤套装\nM-L 上蓝下黑裤 上黄下黑裤', '52', '64');
INSERT INTO `t_proxygoods` VALUES ('131', '222.00', '【品牌】：精品女装\n【价格】：￥90.00\n【时间】：2016-06-24\n【介绍】：(包邮）2016夏装新款时尚小香风印花背心上衣+高腰短裤套装\nM-L 上蓝下黑裤 上黄下黑裤', '52', '68');
INSERT INTO `t_proxygoods` VALUES ('132', '222.00', '【品牌】：精品女装\n【价格】：￥90.00\n【时间】：2016-06-24\n【介绍】：(包邮）2016夏装新款时尚小香风印花背心上衣+高腰短裤套装\nM-L 上蓝下黑裤 上黄下黑裤', '52', '68');
INSERT INTO `t_proxygoods` VALUES ('133', '2111.00', '【品牌】：精品女装\n【价格】：￥90.00\n【时间】：2016-06-24\n【介绍】：(包邮）2016夏装新款时尚小香风印花背心上衣+高腰短裤套装\nM-L 上蓝下黑裤 上黄下黑裤', '52', '68');
INSERT INTO `t_proxygoods` VALUES ('134', '2111.00', '【品牌】：精品女装\n【价格】：￥90.00\n【时间】：2016-06-24\n【介绍】：(包邮）2016夏装新款时尚小香风印花背心上衣+高腰短裤套装\nM-L 上蓝下黑裤 上黄下黑裤', '52', '68');
INSERT INTO `t_proxygoods` VALUES ('135', '22.00', '【品牌】：精品女装\n【价格】：￥90.00\n【时间】：2016-06-24\n【介绍】：(包邮）2016夏装新款时尚小香风印花背心上衣+高腰短裤套装\nM-L 上蓝下黑裤 上黄下黑裤', '52', '68');
INSERT INTO `t_proxygoods` VALUES ('136', '10.00', '【品牌】：精品女装\n【价格】：￥90.00\n【时间】：2016-06-24\n【介绍】：(包邮）2016夏装新款时尚小香风印花背心上衣+高腰短裤套装\nM-L 上蓝下黑裤 上黄下黑裤', '52', '68');
INSERT INTO `t_proxygoods` VALUES ('137', '10.00', '【品牌】：精品女装\n【价格】：￥90.00\n【时间】：2016-06-24\n【介绍】：(包邮）2016夏装新款时尚小香风印花背心上衣+高腰短裤套装\nM-L 上蓝下黑裤 上黄下黑裤', '52', '68');
INSERT INTO `t_proxygoods` VALUES ('138', '30.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '68');
INSERT INTO `t_proxygoods` VALUES ('139', '30.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '68');
INSERT INTO `t_proxygoods` VALUES ('140', '30.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '68');
INSERT INTO `t_proxygoods` VALUES ('141', '30.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '68');
INSERT INTO `t_proxygoods` VALUES ('142', '35.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '68');
INSERT INTO `t_proxygoods` VALUES ('143', '35.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '68');
INSERT INTO `t_proxygoods` VALUES ('144', '30.00', '更好看，更时尚', '51', '68');
INSERT INTO `t_proxygoods` VALUES ('145', '30.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '68');
INSERT INTO `t_proxygoods` VALUES ('146', '30.00', '更好看，更时尚', '51', '68');
INSERT INTO `t_proxygoods` VALUES ('147', '30.00', '更好看，更时尚', '51', '68');
INSERT INTO `t_proxygoods` VALUES ('148', '30.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '68');
INSERT INTO `t_proxygoods` VALUES ('149', '30.00', '有时候也会是个有梦想和未来会很大一部分', '56', '68');
INSERT INTO `t_proxygoods` VALUES ('150', '30.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '68');
INSERT INTO `t_proxygoods` VALUES ('151', '30.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '68');
INSERT INTO `t_proxygoods` VALUES ('152', '30.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '68');
INSERT INTO `t_proxygoods` VALUES ('153', '300.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '68');
INSERT INTO `t_proxygoods` VALUES ('154', '300.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '68');
INSERT INTO `t_proxygoods` VALUES ('155', '300.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '68');
INSERT INTO `t_proxygoods` VALUES ('156', '11.00', '更好看，更时尚', '51', '62');
INSERT INTO `t_proxygoods` VALUES ('157', '1000.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '67');
INSERT INTO `t_proxygoods` VALUES ('158', '1000.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '67');
INSERT INTO `t_proxygoods` VALUES ('159', '150.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '67');
INSERT INTO `t_proxygoods` VALUES ('160', '150.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '67');
INSERT INTO `t_proxygoods` VALUES ('161', '100.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '67');
INSERT INTO `t_proxygoods` VALUES ('163', '100.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '67');
INSERT INTO `t_proxygoods` VALUES ('167', '100.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '67');
INSERT INTO `t_proxygoods` VALUES ('168', '100.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '67');
INSERT INTO `t_proxygoods` VALUES ('171', '300.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '68');
INSERT INTO `t_proxygoods` VALUES ('172', '300.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '68');
INSERT INTO `t_proxygoods` VALUES ('173', '300.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '68');
INSERT INTO `t_proxygoods` VALUES ('174', '300.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '68');
INSERT INTO `t_proxygoods` VALUES ('175', '100.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '71');
INSERT INTO `t_proxygoods` VALUES ('176', '300.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '68');
INSERT INTO `t_proxygoods` VALUES ('177', '300.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '68');
INSERT INTO `t_proxygoods` VALUES ('178', '300.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '68');
INSERT INTO `t_proxygoods` VALUES ('179', '300.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '68');
INSERT INTO `t_proxygoods` VALUES ('181', '300.00', '更好看，更时尚', '51', '68');
INSERT INTO `t_proxygoods` VALUES ('182', '1000.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '67');
INSERT INTO `t_proxygoods` VALUES ('183', '100.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '67');
INSERT INTO `t_proxygoods` VALUES ('185', '300.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '68');
INSERT INTO `t_proxygoods` VALUES ('186', '300.00', '更好看，更时尚', '51', '68');
INSERT INTO `t_proxygoods` VALUES ('187', '300.00', '更好看，更时尚', '51', '68');
INSERT INTO `t_proxygoods` VALUES ('188', '300.00', '更好看，更时尚', '51', '68');
INSERT INTO `t_proxygoods` VALUES ('189', '300.00', '更好看，更时尚', '51', '68');
INSERT INTO `t_proxygoods` VALUES ('190', '300.00', '更好看，更时尚', '51', '68');
INSERT INTO `t_proxygoods` VALUES ('191', '300.00', '更好看，更时尚', '51', '68');
INSERT INTO `t_proxygoods` VALUES ('192', '300.00', '更好看，更时尚', '51', '68');
INSERT INTO `t_proxygoods` VALUES ('193', '300.00', '更好看，更时尚', '51', '68');
INSERT INTO `t_proxygoods` VALUES ('194', '100.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '67');
INSERT INTO `t_proxygoods` VALUES ('195', '100.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '67');
INSERT INTO `t_proxygoods` VALUES ('196', '300.00', '【品牌】：精品女装\n【价格】：￥90.00\n【时间】：2016-06-24\n【介绍】：(包邮）2016夏装新款时尚小香风印花背心上衣+高腰短裤套装\nM-L 上蓝下黑裤 上黄下黑裤', '52', '68');
INSERT INTO `t_proxygoods` VALUES ('197', '300.00', '更好看，更时尚', '51', '68');
INSERT INTO `t_proxygoods` VALUES ('198', '300.00', '更好看，更时尚', '51', '68');
INSERT INTO `t_proxygoods` VALUES ('199', '100.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '67');
INSERT INTO `t_proxygoods` VALUES ('200', '300.00', '更好看，更时尚', '51', '68');
INSERT INTO `t_proxygoods` VALUES ('201', '300.00', '更好看，更时尚', '51', '68');
INSERT INTO `t_proxygoods` VALUES ('205', '200.00', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空,2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货,http://211.149.241.17:8888/proxy/enterProxyGoods?proxyGoodsId=199', '62', '67');
INSERT INTO `t_proxygoods` VALUES ('206', '200.00', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空,2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货,http://211.149.241.17:8888/proxy/enterProxyGoods?proxyGoodsId=199', '62', '67');
INSERT INTO `t_proxygoods` VALUES ('207', '200.00', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空,2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货,http://211.149.241.17:8888/proxy/enterProxyGoods?proxyGoodsId=199', '62', '67');
INSERT INTO `t_proxygoods` VALUES ('208', '200.00', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空,2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货,http://211.149.241.17:8888/proxy/enterProxyGoods?proxyGoodsId=199', '62', '67');
INSERT INTO `t_proxygoods` VALUES ('209', '200.00', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空,2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货,http://211.149.241.17:8888/proxy/enterProxyGoods?proxyGoodsId=199', '62', '67');
INSERT INTO `t_proxygoods` VALUES ('210', '200.00', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空,2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货,http://211.149.241.17:8888/proxy/enterProxyGoods?proxyGoodsId=199', '62', '67');
INSERT INTO `t_proxygoods` VALUES ('211', '100.00', '有时候也会是个有梦想和未来会很大一部分', '56', '62');
INSERT INTO `t_proxygoods` VALUES ('212', '100.00', '有时候也会是个有梦想和未来会很大一部分', '56', '62');
INSERT INTO `t_proxygoods` VALUES ('213', '100.00', '有时候也会是个有梦想和未来会很大一部分', '56', '62');
INSERT INTO `t_proxygoods` VALUES ('214', '100.00', '有时候也会是个有梦想和未来会很大一部分', '56', '62');
INSERT INTO `t_proxygoods` VALUES ('215', '100.00', '有时候也会是个有梦想和未来会很大一部分', '56', '62');
INSERT INTO `t_proxygoods` VALUES ('216', '100.00', '有时候也会是个有梦想和未来会很大一部分', '56', '62');
INSERT INTO `t_proxygoods` VALUES ('217', '100.00', '有时候也会是个有梦想和未来会很大一部分', '56', '62');
INSERT INTO `t_proxygoods` VALUES ('218', '100.00', '有时候也会是个有梦想和未来会很大一部分', '56', '62');
INSERT INTO `t_proxygoods` VALUES ('219', '100.00', '有时候也会是个有梦想和未来会很大一部分', '56', '62');
INSERT INTO `t_proxygoods` VALUES ('220', '100.00', '有时候也会是个有梦想和未来会很大一部分', '56', '62');
INSERT INTO `t_proxygoods` VALUES ('221', '100.00', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空,2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货,http://211.149.241.17:8888/proxy/enterProxyGoods?proxyGoodsId=199', '62', '67');
INSERT INTO `t_proxygoods` VALUES ('222', '100.00', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空,2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货,http://211.149.241.17:8888/proxy/enterProxyGoods?proxyGoodsId=199', '62', '67');
INSERT INTO `t_proxygoods` VALUES ('223', '100.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '64');
INSERT INTO `t_proxygoods` VALUES ('224', '100.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '64');
INSERT INTO `t_proxygoods` VALUES ('225', '100.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '64');
INSERT INTO `t_proxygoods` VALUES ('226', '100.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '64');
INSERT INTO `t_proxygoods` VALUES ('227', '100.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '64');
INSERT INTO `t_proxygoods` VALUES ('228', '100.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '64');
INSERT INTO `t_proxygoods` VALUES ('229', '100.00', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空,2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货,http://211.149.241.17:8888/proxy/enterProxyGoods?proxyGoodsId=199', '62', '64');
INSERT INTO `t_proxygoods` VALUES ('230', '100.00', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空,2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货,http://211.149.241.17:8888/proxy/enterProxyGoods?proxyGoodsId=199', '62', '64');
INSERT INTO `t_proxygoods` VALUES ('231', '100.00', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空,2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货,http://211.149.241.17:8888/proxy/enterProxyGoods?proxyGoodsId=199', '62', '64');
INSERT INTO `t_proxygoods` VALUES ('232', '100.00', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空,2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货,http://211.149.241.17:8888/proxy/enterProxyGoods?proxyGoodsId=199', '62', '64');
INSERT INTO `t_proxygoods` VALUES ('233', '100.00', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空,2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货,http://211.149.241.17:8888/proxy/enterProxyGoods?proxyGoodsId=199', '62', '64');
INSERT INTO `t_proxygoods` VALUES ('234', '100.00', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空,2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货,http://211.149.241.17:8888/proxy/enterProxyGoods?proxyGoodsId=199', '62', '64');
INSERT INTO `t_proxygoods` VALUES ('235', '100.00', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空,2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货,http://211.149.241.17:8888/proxy/enterProxyGoods?proxyGoodsId=199', '62', '64');
INSERT INTO `t_proxygoods` VALUES ('236', '100.00', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空,2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货,http://211.149.241.17:8888/proxy/enterProxyGoods?proxyGoodsId=199', '62', '64');
INSERT INTO `t_proxygoods` VALUES ('237', '100.00', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空,2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货,http://211.149.241.17:8888/proxy/enterProxyGoods?proxyGoodsId=199', '62', '64');
INSERT INTO `t_proxygoods` VALUES ('238', '100.00', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空,2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货,http://211.149.241.17:8888/proxy/enterProxyGoods?proxyGoodsId=199', '62', '64');
INSERT INTO `t_proxygoods` VALUES ('239', '100.00', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空,2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货,http://211.149.241.17:8888/proxy/enterProxyGoods?proxyGoodsId=199', '62', '64');
INSERT INTO `t_proxygoods` VALUES ('240', '100.00', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空,2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货,http://211.149.241.17:8888/proxy/enterProxyGoods?proxyGoodsId=199', '62', '64');
INSERT INTO `t_proxygoods` VALUES ('241', '10.00', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空,2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货,http://211.149.241.17:8888/proxy/enterProxyGoods?proxyGoodsId=199', '62', '64');
INSERT INTO `t_proxygoods` VALUES ('242', '10.00', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空,2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货,http://211.149.241.17:8888/proxy/enterProxyGoods?proxyGoodsId=199', '62', '64');
INSERT INTO `t_proxygoods` VALUES ('243', '10.00', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空,2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货,http://211.149.241.17:8888/proxy/enterProxyGoods?proxyGoodsId=199', '62', '64');
INSERT INTO `t_proxygoods` VALUES ('244', '10.00', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空,2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货,http://211.149.241.17:8888/proxy/enterProxyGoods?proxyGoodsId=199', '62', '64');
INSERT INTO `t_proxygoods` VALUES ('245', '100.00', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空,2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货,http://211.149.241.17:8888/proxy/enterProxyGoods?proxyGoodsId=199', '62', '64');
INSERT INTO `t_proxygoods` VALUES ('246', '100.00', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空,2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货,http://211.149.241.17:8888/proxy/enterProxyGoods?proxyGoodsId=199', '62', '64');
INSERT INTO `t_proxygoods` VALUES ('252', '100.00', '哈哈', '61', '64');
INSERT INTO `t_proxygoods` VALUES ('253', '100.00', '舅舅家', '61', '64');
INSERT INTO `t_proxygoods` VALUES ('254', '100.00', '舅舅家', '61', '64');
INSERT INTO `t_proxygoods` VALUES ('255', '100.00', '舅舅家', '61', '64');
INSERT INTO `t_proxygoods` VALUES ('256', '100.00', '女神服装', '63', '64');
INSERT INTO `t_proxygoods` VALUES ('257', '100.00', '女神服装', '63', '64');
INSERT INTO `t_proxygoods` VALUES ('258', '100.00', '女神服装', '63', '64');
INSERT INTO `t_proxygoods` VALUES ('259', '200.00', '女神服装', '63', '64');
INSERT INTO `t_proxygoods` VALUES ('260', '200.00', '女神服装', '63', '64');
INSERT INTO `t_proxygoods` VALUES ('261', '200.00', '女神服装', '63', '64');
INSERT INTO `t_proxygoods` VALUES ('262', '200.00', '更好看，更时尚', '51', '64');
INSERT INTO `t_proxygoods` VALUES ('263', '200.00', '更好看，更时尚', '51', '64');
INSERT INTO `t_proxygoods` VALUES ('264', '100.00', '更好看，更时尚', '51', '64');
INSERT INTO `t_proxygoods` VALUES ('265', '1000.00', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空,2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货,http://211.149.241.17:8888/proxy/enterProxyGoods?proxyGoodsId=199', '62', '64');
INSERT INTO `t_proxygoods` VALUES ('266', '100.00', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空,2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货,http://211.149.241.17:8888/proxy/enterProxyGoods?proxyGoodsId=199', '62', '67');
INSERT INTO `t_proxygoods` VALUES ('267', '20.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '64');
INSERT INTO `t_proxygoods` VALUES ('268', '20.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '64');
INSERT INTO `t_proxygoods` VALUES ('269', '20.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '64');
INSERT INTO `t_proxygoods` VALUES ('270', '16.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '64');
INSERT INTO `t_proxygoods` VALUES ('271', '16.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '64');
INSERT INTO `t_proxygoods` VALUES ('272', '16.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '64');
INSERT INTO `t_proxygoods` VALUES ('273', '16.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '64');
INSERT INTO `t_proxygoods` VALUES ('274', '16.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '64');
INSERT INTO `t_proxygoods` VALUES ('275', '16.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '64');
INSERT INTO `t_proxygoods` VALUES ('276', '16.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '64');
INSERT INTO `t_proxygoods` VALUES ('277', '16.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '64');
INSERT INTO `t_proxygoods` VALUES ('278', '100.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '64');
INSERT INTO `t_proxygoods` VALUES ('279', '100.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '64');
INSERT INTO `t_proxygoods` VALUES ('280', '100.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '64');
INSERT INTO `t_proxygoods` VALUES ('281', '10.00', '更好看，更时尚', '51', '64');
INSERT INTO `t_proxygoods` VALUES ('282', '10.00', '更好看，更时尚', '51', '64');
INSERT INTO `t_proxygoods` VALUES ('283', '10.00', '更好看，更时尚', '51', '64');
INSERT INTO `t_proxygoods` VALUES ('284', '10.00', '更好看，更时尚', '51', '64');
INSERT INTO `t_proxygoods` VALUES ('285', '1.00', '更好看，更时尚', '51', '64');
INSERT INTO `t_proxygoods` VALUES ('286', '1.00', '更好看，更时尚', '51', '64');
INSERT INTO `t_proxygoods` VALUES ('287', '1.00', '更好看，更时尚', '51', '64');
INSERT INTO `t_proxygoods` VALUES ('288', '1.00', '更好看，更时尚', '51', '64');
INSERT INTO `t_proxygoods` VALUES ('289', '1.00', '更好看，更时尚', '51', '64');
INSERT INTO `t_proxygoods` VALUES ('290', '100.00', '更好看，更时尚', '51', '64');
INSERT INTO `t_proxygoods` VALUES ('291', '100.00', '更好看，更时尚', '51', '64');
INSERT INTO `t_proxygoods` VALUES ('292', '100.00', '更好看，更时尚', '51', '64');
INSERT INTO `t_proxygoods` VALUES ('293', '100.00', '更好看，更时尚', '51', '64');
INSERT INTO `t_proxygoods` VALUES ('294', '100.00', '更好看，更时尚', '51', '64');
INSERT INTO `t_proxygoods` VALUES ('295', '100.00', '更好看，更时尚', '51', '64');
INSERT INTO `t_proxygoods` VALUES ('296', '100.00', '更好看，更时尚', '51', '64');
INSERT INTO `t_proxygoods` VALUES ('297', '100.00', '更好看，更时尚', '51', '64');
INSERT INTO `t_proxygoods` VALUES ('298', '100.00', '更好看，更时尚', '51', '64');
INSERT INTO `t_proxygoods` VALUES ('299', '100.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '64');
INSERT INTO `t_proxygoods` VALUES ('300', '100.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '64');
INSERT INTO `t_proxygoods` VALUES ('301', '100.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '64');
INSERT INTO `t_proxygoods` VALUES ('302', '100.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '64');
INSERT INTO `t_proxygoods` VALUES ('303', '100.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '64');
INSERT INTO `t_proxygoods` VALUES ('304', '100.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '64');
INSERT INTO `t_proxygoods` VALUES ('305', '100.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '64');
INSERT INTO `t_proxygoods` VALUES ('306', '100.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '64');
INSERT INTO `t_proxygoods` VALUES ('308', '100.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '64');
INSERT INTO `t_proxygoods` VALUES ('309', '100.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '64');
INSERT INTO `t_proxygoods` VALUES ('310', '100.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '64');
INSERT INTO `t_proxygoods` VALUES ('311', '100.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '64');
INSERT INTO `t_proxygoods` VALUES ('312', '100.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '64');
INSERT INTO `t_proxygoods` VALUES ('313', '100.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '64');
INSERT INTO `t_proxygoods` VALUES ('314', '10.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '64');
INSERT INTO `t_proxygoods` VALUES ('315', '100.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '64');
INSERT INTO `t_proxygoods` VALUES ('316', '100.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '64');
INSERT INTO `t_proxygoods` VALUES ('317', '100.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '64');
INSERT INTO `t_proxygoods` VALUES ('318', '100.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '64');
INSERT INTO `t_proxygoods` VALUES ('319', '100.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '64');
INSERT INTO `t_proxygoods` VALUES ('320', '100.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '64');
INSERT INTO `t_proxygoods` VALUES ('321', '100.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '64');
INSERT INTO `t_proxygoods` VALUES ('322', '100.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '64');
INSERT INTO `t_proxygoods` VALUES ('323', '100.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '64');
INSERT INTO `t_proxygoods` VALUES ('324', '100.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '64');
INSERT INTO `t_proxygoods` VALUES ('325', '20.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '64');
INSERT INTO `t_proxygoods` VALUES ('326', '20.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '64');
INSERT INTO `t_proxygoods` VALUES ('327', '20.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '64');
INSERT INTO `t_proxygoods` VALUES ('328', '20.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '64');
INSERT INTO `t_proxygoods` VALUES ('329', '20.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '64');
INSERT INTO `t_proxygoods` VALUES ('330', '20.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '64');
INSERT INTO `t_proxygoods` VALUES ('331', '20.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '64');
INSERT INTO `t_proxygoods` VALUES ('332', '20.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '64');
INSERT INTO `t_proxygoods` VALUES ('333', '20.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '64');
INSERT INTO `t_proxygoods` VALUES ('334', '20.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '64');
INSERT INTO `t_proxygoods` VALUES ('335', '20.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '64');
INSERT INTO `t_proxygoods` VALUES ('336', '20.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '64');
INSERT INTO `t_proxygoods` VALUES ('337', '100.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '64');
INSERT INTO `t_proxygoods` VALUES ('338', '10.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '64');
INSERT INTO `t_proxygoods` VALUES ('339', '100.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '64');
INSERT INTO `t_proxygoods` VALUES ('340', '200.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '64');
INSERT INTO `t_proxygoods` VALUES ('341', '200.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '64');
INSERT INTO `t_proxygoods` VALUES ('342', '200.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '64');
INSERT INTO `t_proxygoods` VALUES ('343', '100.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '64');
INSERT INTO `t_proxygoods` VALUES ('344', '100.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '64');
INSERT INTO `t_proxygoods` VALUES ('345', '100.00', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '55', '64');
INSERT INTO `t_proxygoods` VALUES ('346', '100.00', '更好看，更时尚', '51', '64');
INSERT INTO `t_proxygoods` VALUES ('347', '100.00', '更好看，更时尚', '51', '64');
INSERT INTO `t_proxygoods` VALUES ('348', '100.00', '更好看，更时尚', '51', '64');
INSERT INTO `t_proxygoods` VALUES ('349', '100.00', '更好看，更时尚', '51', '64');
INSERT INTO `t_proxygoods` VALUES ('350', '100.00', '更好看，更时尚', '51', '64');
INSERT INTO `t_proxygoods` VALUES ('351', '100.00', '更好看，更时尚', '51', '64');
INSERT INTO `t_proxygoods` VALUES ('352', '100.00', '更好看，更时尚', '51', '64');
INSERT INTO `t_proxygoods` VALUES ('353', '1000.00', '更好看，更时尚', '51', '64');
INSERT INTO `t_proxygoods` VALUES ('354', '1000.00', '更好看，更时尚', '51', '64');
INSERT INTO `t_proxygoods` VALUES ('355', '1000.00', '更好看，更时尚', '51', '64');
INSERT INTO `t_proxygoods` VALUES ('356', '1000.00', '更好看，更时尚', '51', '64');
INSERT INTO `t_proxygoods` VALUES ('357', '1000.00', '更好看，更时尚', '51', '64');
INSERT INTO `t_proxygoods` VALUES ('358', '1000.00', '更好看，更时尚', '51', '64');
INSERT INTO `t_proxygoods` VALUES ('359', '1000.00', '更好看，更时尚', '51', '64');
INSERT INTO `t_proxygoods` VALUES ('360', '1000.00', '更好看，更时尚', '51', '64');
INSERT INTO `t_proxygoods` VALUES ('361', '1000.00', '更好看，更时尚', '51', '64');
INSERT INTO `t_proxygoods` VALUES ('362', '1000.00', '更好看，更时尚', '51', '64');
INSERT INTO `t_proxygoods` VALUES ('363', '1000.00', '更好看，更时尚', '51', '64');
INSERT INTO `t_proxygoods` VALUES ('364', '100.00', '更好看，更时尚', '51', '64');
INSERT INTO `t_proxygoods` VALUES ('365', '1000.00', '更好看，更时尚', '51', '64');
INSERT INTO `t_proxygoods` VALUES ('366', '100.00', '更好看，更时尚', '51', '64');
INSERT INTO `t_proxygoods` VALUES ('367', '100.00', '更好看，更时尚', '51', '64');
INSERT INTO `t_proxygoods` VALUES ('368', '1.00', '更好看，更时尚', '51', '64');
INSERT INTO `t_proxygoods` VALUES ('369', '100.00', '更好看，更时尚', '51', '64');
INSERT INTO `t_proxygoods` VALUES ('370', '100.00', '更好看，更时尚', '51', '64');
INSERT INTO `t_proxygoods` VALUES ('371', '100.00', '更好看，更时尚', '51', '64');
INSERT INTO `t_proxygoods` VALUES ('372', '100.00', '更好看，更时尚', '51', '64');
INSERT INTO `t_proxygoods` VALUES ('373', '100.00', '更好看，更时尚', '51', '64');
INSERT INTO `t_proxygoods` VALUES ('374', '100.00', '更好看，更时尚', '51', '64');
INSERT INTO `t_proxygoods` VALUES ('375', '100.00', '更好看，更时尚', '51', '64');
INSERT INTO `t_proxygoods` VALUES ('376', '100.00', '更好看，更时尚', '51', '64');
INSERT INTO `t_proxygoods` VALUES ('377', '100.00', '更好看，更时尚', '51', '63');
INSERT INTO `t_proxygoods` VALUES ('378', '100.00', '更好看，更时尚', '51', '63');
INSERT INTO `t_proxygoods` VALUES ('379', '100.00', '更好看，更时尚', '51', '63');
INSERT INTO `t_proxygoods` VALUES ('380', '100.00', '更好看，更时尚', '51', '63');
INSERT INTO `t_proxygoods` VALUES ('381', '100.00', '更好看，更时尚', '51', '63');
INSERT INTO `t_proxygoods` VALUES ('382', '100.00', '更好看，更时尚', '51', '63');
INSERT INTO `t_proxygoods` VALUES ('383', '100.00', '更好看，更时尚', '51', '63');
INSERT INTO `t_proxygoods` VALUES ('384', '100.00', '更好看，更时尚', '51', '63');
INSERT INTO `t_proxygoods` VALUES ('385', '100.00', '更好看，更时尚', '51', '63');
INSERT INTO `t_proxygoods` VALUES ('386', '100.00', '更好看，更时尚', '51', '63');
INSERT INTO `t_proxygoods` VALUES ('387', '100.00', '更好看，更时尚', '51', '63');
INSERT INTO `t_proxygoods` VALUES ('388', '100.00', '更好看，更时尚', '51', '63');
INSERT INTO `t_proxygoods` VALUES ('389', '100.00', '更好看，更时尚', '51', '63');
INSERT INTO `t_proxygoods` VALUES ('390', '100.00', '更好看，更时尚', '51', '63');
INSERT INTO `t_proxygoods` VALUES ('391', '100.00', '更好看，更时尚', '51', '63');
INSERT INTO `t_proxygoods` VALUES ('392', '100.00', '更好看，更时尚', '51', '63');
INSERT INTO `t_proxygoods` VALUES ('393', '100.00', '更好看，更时尚', '51', '63');
INSERT INTO `t_proxygoods` VALUES ('394', '100.00', '更好看，更时尚', '51', '63');
INSERT INTO `t_proxygoods` VALUES ('395', '100.00', '更好看，更时尚', '51', '63');
INSERT INTO `t_proxygoods` VALUES ('396', '100.00', '更好看，更时尚', '51', '63');
INSERT INTO `t_proxygoods` VALUES ('397', '100.00', '更好看，更时尚', '51', '63');
INSERT INTO `t_proxygoods` VALUES ('398', '100.00', '更好看，更时尚', '51', '63');
INSERT INTO `t_proxygoods` VALUES ('399', '100.00', '更好看，更时尚', '51', '63');
INSERT INTO `t_proxygoods` VALUES ('400', '100.00', '更好看，更时尚', '51', '63');
INSERT INTO `t_proxygoods` VALUES ('401', '100.00', '更好看，更时尚', '51', '63');
INSERT INTO `t_proxygoods` VALUES ('402', '100.00', '更好看，更时尚', '51', '63');
INSERT INTO `t_proxygoods` VALUES ('403', '100.00', '更好看，更时尚', '51', '63');
INSERT INTO `t_proxygoods` VALUES ('404', '100.00', '更好看，更时尚', '51', '63');
INSERT INTO `t_proxygoods` VALUES ('405', '100.00', '更好看，更时尚', '51', '63');
INSERT INTO `t_proxygoods` VALUES ('406', '100.00', '更好看，更时尚', '51', '63');
INSERT INTO `t_proxygoods` VALUES ('407', '100.00', '更好看，更时尚', '51', '63');
INSERT INTO `t_proxygoods` VALUES ('408', '100.00', '更好看，更时尚', '51', '63');
INSERT INTO `t_proxygoods` VALUES ('409', '100.00', '更好看，更时尚', '51', '63');
INSERT INTO `t_proxygoods` VALUES ('410', '100.00', '更好看，更时尚', '51', '63');
INSERT INTO `t_proxygoods` VALUES ('411', '100.00', '更好看，更时尚', '51', '63');
INSERT INTO `t_proxygoods` VALUES ('412', '100.00', '更好看，更时尚', '51', '63');
INSERT INTO `t_proxygoods` VALUES ('413', '100.00', '更好看，更时尚', '51', '63');
INSERT INTO `t_proxygoods` VALUES ('414', '100.00', '更好看，更时尚', '51', '63');
INSERT INTO `t_proxygoods` VALUES ('415', '100.00', '更好看，更时尚', '51', '63');
INSERT INTO `t_proxygoods` VALUES ('416', '100.00', '更好看，更时尚', '51', '63');
INSERT INTO `t_proxygoods` VALUES ('417', '100.00', '更好看，更时尚', '51', '63');
INSERT INTO `t_proxygoods` VALUES ('418', '100.00', '更好看，更时尚', '51', '71');
INSERT INTO `t_proxygoods` VALUES ('419', '100.00', '更好看，更时尚', '51', '71');
INSERT INTO `t_proxygoods` VALUES ('420', '100.00', '更好看，更时尚', '51', '71');
INSERT INTO `t_proxygoods` VALUES ('421', '100.00', '更好看，更时尚', '51', '71');
INSERT INTO `t_proxygoods` VALUES ('422', '100.00', '更好看，更时尚', '51', '71');
INSERT INTO `t_proxygoods` VALUES ('423', '100.00', '更好看，更时尚', '51', '71');
INSERT INTO `t_proxygoods` VALUES ('424', '100.00', '更好看，更时尚', '51', '71');
INSERT INTO `t_proxygoods` VALUES ('425', '100.00', '更好看，更时尚', '51', '71');
INSERT INTO `t_proxygoods` VALUES ('426', '200.00', '更好看，更时尚', '51', '71');
INSERT INTO `t_proxygoods` VALUES ('427', '200.00', '更好看，更时尚', '51', '71');
INSERT INTO `t_proxygoods` VALUES ('428', '200.00', '更好看，更时尚', '51', '71');
INSERT INTO `t_proxygoods` VALUES ('429', '100.00', '更好看，更时尚', '51', '71');
INSERT INTO `t_proxygoods` VALUES ('430', '100.00', '更好看，更时尚', '51', '71');
INSERT INTO `t_proxygoods` VALUES ('431', '100.00', '更好看，更时尚', '51', '71');
INSERT INTO `t_proxygoods` VALUES ('432', '100.00', '更好看，更时尚', '51', '71');
INSERT INTO `t_proxygoods` VALUES ('433', '100.00', '更好看，更时尚', '51', '71');
INSERT INTO `t_proxygoods` VALUES ('434', '100.00', '更好看，更时尚', '51', '71');
INSERT INTO `t_proxygoods` VALUES ('435', '100.00', '更好看，更时尚', '51', '71');
INSERT INTO `t_proxygoods` VALUES ('436', '100.00', '更好看，更时尚', '51', '71');
INSERT INTO `t_proxygoods` VALUES ('437', '100.00', '更好看，更时尚', '51', '71');
INSERT INTO `t_proxygoods` VALUES ('438', '100.00', '更好看，更时尚', '51', '71');
INSERT INTO `t_proxygoods` VALUES ('439', '100.00', '更好看，更时尚', '51', '71');
INSERT INTO `t_proxygoods` VALUES ('440', '100.00', '更好看，更时尚', '51', '71');
INSERT INTO `t_proxygoods` VALUES ('441', '100.00', '更好看，更时尚', '51', '71');
INSERT INTO `t_proxygoods` VALUES ('442', '140.00', '更好看，更时尚', '51', '71');
INSERT INTO `t_proxygoods` VALUES ('443', '1000.00', '更好看，更时尚', '51', '71');
INSERT INTO `t_proxygoods` VALUES ('444', '1000.00', '更好看，更时尚', '51', '71');
INSERT INTO `t_proxygoods` VALUES ('445', '1000.00', '更好看，更时尚', '51', '71');
INSERT INTO `t_proxygoods` VALUES ('446', '1000.00', '更好看，更时尚', '51', '71');
INSERT INTO `t_proxygoods` VALUES ('447', '1000.00', '更好看，更时尚', '51', '71');
INSERT INTO `t_proxygoods` VALUES ('448', '1000.00', '更好看，更时尚', '51', '71');
INSERT INTO `t_proxygoods` VALUES ('449', '1000.00', '更好看，更时尚', '51', '71');
INSERT INTO `t_proxygoods` VALUES ('450', '423.00', '更好看，更时尚', '51', '71');
INSERT INTO `t_proxygoods` VALUES ('451', '423.00', '更好看，更时尚', '51', '71');
INSERT INTO `t_proxygoods` VALUES ('452', '100.00', '更好看，更时尚', '51', '63');
INSERT INTO `t_proxygoods` VALUES ('453', '100.00', '更好看，更时尚', '51', '63');
INSERT INTO `t_proxygoods` VALUES ('454', '100.00', '更好看，更时尚', '51', '63');
INSERT INTO `t_proxygoods` VALUES ('455', '100.00', '更好看，更时尚', '51', '63');
INSERT INTO `t_proxygoods` VALUES ('456', '100.00', '更好看，更时尚', '51', '63');
INSERT INTO `t_proxygoods` VALUES ('457', '100.00', '更好看，更时尚', '51', '63');
INSERT INTO `t_proxygoods` VALUES ('458', '100.00', '更好看，更时尚', '51', '63');
INSERT INTO `t_proxygoods` VALUES ('459', '100.00', '更好看，更时尚', '51', '63');
INSERT INTO `t_proxygoods` VALUES ('460', '100.00', '有时候也会是个有梦想和未来会很大一部分', '56', '63');
INSERT INTO `t_proxygoods` VALUES ('461', '100.00', '有时候也会是个有梦想和未来会很大一部分', '56', '63');
INSERT INTO `t_proxygoods` VALUES ('462', '100.00', '有时候也会是个有梦想和未来会很大一部分', '56', '63');
INSERT INTO `t_proxygoods` VALUES ('463', '100.00', '更好看，更时尚', '51', '63');
INSERT INTO `t_proxygoods` VALUES ('464', '100.00', '更好看，更时尚', '51', '63');
INSERT INTO `t_proxygoods` VALUES ('465', '100.00', '更好看，更时尚', '51', '63');
INSERT INTO `t_proxygoods` VALUES ('466', '100.00', '更好看，更时尚', '51', '63');
INSERT INTO `t_proxygoods` VALUES ('467', '100.00', '更好看，更时尚', '51', '63');
INSERT INTO `t_proxygoods` VALUES ('468', '100.00', '更好看，更时尚', '51', '63');
INSERT INTO `t_proxygoods` VALUES ('469', '100.00', '更好看，更时尚', '51', '63');
INSERT INTO `t_proxygoods` VALUES ('470', '100.00', '更好看，更时尚', '51', '63');
INSERT INTO `t_proxygoods` VALUES ('471', '100.00', '更好看，更时尚', '51', '63');
INSERT INTO `t_proxygoods` VALUES ('472', '100.00', '更好看，更时尚', '51', '63');
INSERT INTO `t_proxygoods` VALUES ('473', '100.00', '更好看，更时尚', '51', '63');
INSERT INTO `t_proxygoods` VALUES ('474', '100.00', '更好看，更时尚', '51', '63');
INSERT INTO `t_proxygoods` VALUES ('475', '100.00', '更好看，更时尚', '51', '63');
INSERT INTO `t_proxygoods` VALUES ('476', '100.00', '更好看，更时尚', '51', '63');
INSERT INTO `t_proxygoods` VALUES ('477', '100.00', '女神服装', '63', '63');
INSERT INTO `t_proxygoods` VALUES ('478', '100.00', '女神服装', '63', '63');
INSERT INTO `t_proxygoods` VALUES ('479', '100.00', '女神服装', '63', '63');
INSERT INTO `t_proxygoods` VALUES ('480', '100.00', '女神服装', '63', '63');
INSERT INTO `t_proxygoods` VALUES ('481', '100.00', '女神服装', '63', '63');
INSERT INTO `t_proxygoods` VALUES ('482', '100.00', '女神服装', '63', '63');
INSERT INTO `t_proxygoods` VALUES ('483', '100.00', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空,2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货,http://211.149.241.17:8888/proxy/enterProxyGoods?proxyGoodsId=199', '62', '63');
INSERT INTO `t_proxygoods` VALUES ('484', '100.00', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空,2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货,http://211.149.241.17:8888/proxy/enterProxyGoods?proxyGoodsId=199', '62', '63');
INSERT INTO `t_proxygoods` VALUES ('485', '100.00', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空,2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货,http://211.149.241.17:8888/proxy/enterProxyGoods?proxyGoodsId=199', '62', '63');
INSERT INTO `t_proxygoods` VALUES ('486', '100.00', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空,2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货,http://211.149.241.17:8888/proxy/enterProxyGoods?proxyGoodsId=199', '62', '63');
INSERT INTO `t_proxygoods` VALUES ('487', '100.00', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空,2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货,http://211.149.241.17:8888/proxy/enterProxyGoods?proxyGoodsId=199', '62', '63');
INSERT INTO `t_proxygoods` VALUES ('488', '100.00', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空,2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货,http://211.149.241.17:8888/proxy/enterProxyGoods?proxyGoodsId=199', '62', '63');
INSERT INTO `t_proxygoods` VALUES ('489', '100.00', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空,2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货,http://211.149.241.17:8888/proxy/enterProxyGoods?proxyGoodsId=199', '62', '63');
INSERT INTO `t_proxygoods` VALUES ('490', '100.00', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空,2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货,http://211.149.241.17:8888/proxy/enterProxyGoods?proxyGoodsId=199', '62', '63');
INSERT INTO `t_proxygoods` VALUES ('491', '100.00', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空,2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货,http://211.149.241.17:8888/proxy/enterProxyGoods?proxyGoodsId=199', '62', '63');
INSERT INTO `t_proxygoods` VALUES ('492', '200.00', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空,2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货,http://211.149.241.17:8888/proxy/enterProxyGoods?proxyGoodsId=199', '62', '63');
INSERT INTO `t_proxygoods` VALUES ('493', '200.00', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空,2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货,http://211.149.241.17:8888/proxy/enterProxyGoods?proxyGoodsId=199', '62', '63');
INSERT INTO `t_proxygoods` VALUES ('494', '200.00', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空,2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货,http://211.149.241.17:8888/proxy/enterProxyGoods?proxyGoodsId=199', '62', '63');
INSERT INTO `t_proxygoods` VALUES ('495', '100.00', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空,2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货,http://211.149.241.17:8888/proxy/enterProxyGoods?proxyGoodsId=199', '62', '63');
INSERT INTO `t_proxygoods` VALUES ('496', '100.00', '女神服装', '63', '67');
INSERT INTO `t_proxygoods` VALUES ('498', '150.00', '更好看，更时尚', '51', '62');
INSERT INTO `t_proxygoods` VALUES ('499', '150.00', '更好看，更时尚', '51', '62');
INSERT INTO `t_proxygoods` VALUES ('500', '150.00', '更好看，更时尚', '51', '62');
INSERT INTO `t_proxygoods` VALUES ('501', '150.00', '更好看，更时尚', '51', '62');
INSERT INTO `t_proxygoods` VALUES ('502', '150.00', '更好看，更时尚', '51', '62');
INSERT INTO `t_proxygoods` VALUES ('503', '300.00', '有时候也会是个有梦想和未来会很大一部分', '56', '62');
INSERT INTO `t_proxygoods` VALUES ('504', '300.00', '有时候也会是个有梦想和未来会很大一部分', '56', '62');
INSERT INTO `t_proxygoods` VALUES ('505', '300.00', '有时候也会是个有梦想和未来会很大一部分', '56', '62');
INSERT INTO `t_proxygoods` VALUES ('506', '300.00', '有时候也会是个有梦想和未来会很大一部分', '56', '62');
INSERT INTO `t_proxygoods` VALUES ('507', '200.00', '更好看，更时尚', '51', '62');
INSERT INTO `t_proxygoods` VALUES ('508', '200.00', '更好看，更时尚', '51', '62');
INSERT INTO `t_proxygoods` VALUES ('509', '200.00', '更好看，更时尚', '51', '62');
INSERT INTO `t_proxygoods` VALUES ('510', '140.00', '【品牌】：精品女装\n【价格】：￥140.00\n【时间】：2016-07-01\n【介绍】：(包邮）2016夏装新款时尚无袖双排扣上衣+短裤 配腰带\r\nM-L 蓝色 白色', '66', '62');
INSERT INTO `t_proxygoods` VALUES ('511', '140.00', '【品牌】：精品女装\n【价格】：￥140.00\n【时间】：2016-07-01\n【介绍】：(包邮）2016夏装新款时尚无袖双排扣上衣+短裤 配腰带\r\nM-L 蓝色 白色', '66', '62');
INSERT INTO `t_proxygoods` VALUES ('512', '140.00', '【品牌】：精品女装\n【价格】：￥140.00\n【时间】：2016-07-01\n【介绍】：(包邮）2016夏装新款时尚无袖双排扣上衣+短裤 配腰带\r\nM-L 蓝色 白色', '66', '62');
INSERT INTO `t_proxygoods` VALUES ('513', '140.00', '【品牌】：精品女装\n【价格】：￥140.00\n【时间】：2016-07-01\n【介绍】：(包邮）2016夏装新款时尚无袖双排扣上衣+短裤 配腰带\r\nM-L 蓝色 白色', '66', '62');
INSERT INTO `t_proxygoods` VALUES ('514', '140.00', '【品牌】：精品女装\n【价格】：￥140.00\n【时间】：2016-07-01\n【介绍】：(包邮）2016夏装新款时尚无袖双排扣上衣+短裤 配腰带\r\nM-L 蓝色 白色', '66', '62');
INSERT INTO `t_proxygoods` VALUES ('515', '140.00', '【品牌】：精品女装\n【价格】：￥140.00\n【时间】：2016-07-01\n【介绍】：(包邮）2016夏装新款时尚无袖双排扣上衣+短裤 配腰带\r\nM-L 蓝色 白色', '66', '62');
INSERT INTO `t_proxygoods` VALUES ('516', '140.00', '【品牌】：精品女装\n【价格】：￥140.00\n【时间】：2016-07-01\n【介绍】：(包邮）2016夏装新款时尚无袖双排扣上衣+短裤 配腰带\r\nM-L 蓝色 白色', '66', '62');
INSERT INTO `t_proxygoods` VALUES ('517', '140.00', '【品牌】：精品女装\n【价格】：￥140.00\n【时间】：2016-07-01\n【介绍】：(包邮）2016夏装新款时尚无袖双排扣上衣+短裤 配腰带\r\nM-L 蓝色 白色', '66', '62');
INSERT INTO `t_proxygoods` VALUES ('518', '140.00', '【品牌】：精品女装\n【价格】：￥140.00\n【时间】：2016-07-01\n【介绍】：(包邮）2016夏装新款时尚无袖双排扣上衣+短裤 配腰带\r\nM-L 蓝色 白色', '66', '62');
INSERT INTO `t_proxygoods` VALUES ('519', '300.00', '【品牌】：精品女装\n【价格】：￥140.00\n【时间】：2016-07-01\n【介绍】：(包邮）2016夏装新款时尚无袖双排扣上衣+短裤 配腰带\r\nM-L 蓝色 白色', '66', '62');
INSERT INTO `t_proxygoods` VALUES ('520', '300.00', '【品牌】：精品女装\n【价格】：￥140.00\n【时间】：2016-07-01\n【介绍】：(包邮）2016夏装新款时尚无袖双排扣上衣+短裤 配腰带\r\nM-L 蓝色 白色', '66', '62');
INSERT INTO `t_proxygoods` VALUES ('521', '300.00', '【品牌】：精品女装\n【价格】：￥140.00\n【时间】：2016-07-01\n【介绍】：(包邮）2016夏装新款时尚无袖双排扣上衣+短裤 配腰带\r\nM-L 蓝色 白色', '66', '62');
INSERT INTO `t_proxygoods` VALUES ('522', '150.00', '，', '63', '62');
INSERT INTO `t_proxygoods` VALUES ('523', '150.00', '，', '63', '62');
INSERT INTO `t_proxygoods` VALUES ('524', '150.00', '女神服装', '63', '62');
INSERT INTO `t_proxygoods` VALUES ('525', '16666.00', '女神服装', '63', '62');
INSERT INTO `t_proxygoods` VALUES ('526', '555.00', '女神服装', '63', '62');
INSERT INTO `t_proxygoods` VALUES ('527', '555.00', '哈哈哈', '65', '62');
INSERT INTO `t_proxygoods` VALUES ('528', '555.00', '哈哈哈', '65', '62');
INSERT INTO `t_proxygoods` VALUES ('529', '300.00', '微货通1688测试，此商品不卖的哦。', '67', '62');
INSERT INTO `t_proxygoods` VALUES ('530', '300.00', '微货通1688测试，此商品不卖的哦。', '67', '62');
INSERT INTO `t_proxygoods` VALUES ('531', '300.00', '微货通1688测试，此商品不卖的哦。', '67', '62');
INSERT INTO `t_proxygoods` VALUES ('532', '300.00', '微货通1688测试，此商品不卖的哦。', '67', '62');
INSERT INTO `t_proxygoods` VALUES ('533', '300.00', '微货通1688测试，此商品不卖的哦。', '67', '62');
INSERT INTO `t_proxygoods` VALUES ('534', '300.00', '微货通1688测试，此商品不卖的哦。', '67', '62');
INSERT INTO `t_proxygoods` VALUES ('535', '15.00', '女神服装', '63', '62');
INSERT INTO `t_proxygoods` VALUES ('536', '15.00', '女神服装', '63', '62');
INSERT INTO `t_proxygoods` VALUES ('537', '15.00', '女神服装', '63', '62');
INSERT INTO `t_proxygoods` VALUES ('538', '15.00', '女神服装', '63', '62');
INSERT INTO `t_proxygoods` VALUES ('539', '15.00', '女神服装', '63', '62');
INSERT INTO `t_proxygoods` VALUES ('540', '15.00', '女神服装', '63', '62');
INSERT INTO `t_proxygoods` VALUES ('541', '15.00', '女神服装', '63', '62');
INSERT INTO `t_proxygoods` VALUES ('542', '5.00', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空,2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货,http://211.149.241.17:8888/proxy/enterProxyGoods?proxyGoodsId=199', '62', '62');
INSERT INTO `t_proxygoods` VALUES ('543', '5.00', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空,2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货,http://211.149.241.17:8888/proxy/enterProxyGoods?proxyGoodsId=199', '62', '62');
INSERT INTO `t_proxygoods` VALUES ('544', '50.00', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空,2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货,http://211.149.241.17:8888/proxy/enterProxyGoods?proxyGoodsId=199', '62', '62');
INSERT INTO `t_proxygoods` VALUES ('545', '50.00', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空,2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货,http://211.149.241.17:8888/proxy/enterProxyGoods?proxyGoodsId=199', '62', '62');
INSERT INTO `t_proxygoods` VALUES ('546', '300.00', '微货通1688测试，此商品不卖的哦。', '67', '62');
INSERT INTO `t_proxygoods` VALUES ('547', '300.00', '微货通1688测试，此商品不卖的哦。', '67', '62');
INSERT INTO `t_proxygoods` VALUES ('548', '300.00', '微货通1688测试，此商品不卖的哦。', '67', '62');
INSERT INTO `t_proxygoods` VALUES ('549', '500.00', '微货通1688测试，此商品不卖的哦。', '67', '62');
INSERT INTO `t_proxygoods` VALUES ('550', '500.00', '微货通1688测试，此商品不卖的哦。', '67', '62');
INSERT INTO `t_proxygoods` VALUES ('551', '128.00', '微货通1688测试，此商品不卖的哦。', '67', '62');
INSERT INTO `t_proxygoods` VALUES ('552', '128.00', '微货通1688测试，此商品不卖的哦。', '67', '62');
INSERT INTO `t_proxygoods` VALUES ('553', '90.00', '【品牌】：精品女装\n【价格】：￥90.00\n【时间】：2016-07-02\n【介绍】：(包邮）2016夏装新款时尚中长款套装裙两件套\nS-2XL 红色 白色 雪纺', '68', '62');
INSERT INTO `t_proxygoods` VALUES ('554', '90.00', '?????????\n??????90.00\n?????2016-07-02\n?????(???2016???????????????\nS-2XL ?? ?? ??', '68', '62');
INSERT INTO `t_proxygoods` VALUES ('555', '105.00', '???', '70', '67');
INSERT INTO `t_proxygoods` VALUES ('556', '105.00', '???', '70', '67');
INSERT INTO `t_proxygoods` VALUES ('557', '105.00', '???', '70', '67');

-- ----------------------------
-- Table structure for t_proxylog
-- ----------------------------
DROP TABLE IF EXISTS `t_proxylog`;
CREATE TABLE `t_proxylog` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `time` datetime NOT NULL,
  `proxyType` int(20) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `image` varchar(255) NOT NULL,
  `storeName` varchar(20) NOT NULL,
  `details` varchar(255) NOT NULL,
  `userId` bigint(20) NOT NULL,
  `goodsId` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=528 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_proxylog
-- ----------------------------
INSERT INTO `t_proxylog` VALUES ('91', '2016-06-24 16:18:43', '1', '180', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '63', '51');
INSERT INTO `t_proxylog` VALUES ('92', '2016-06-27 09:55:27', '1', '300', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '11', '51');
INSERT INTO `t_proxylog` VALUES ('93', '2016-06-27 09:55:34', '1', '300', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '11', '51');
INSERT INTO `t_proxylog` VALUES ('94', '2016-06-27 09:55:53', '1', '300', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '11', '51');
INSERT INTO `t_proxylog` VALUES ('95', '2016-06-27 09:56:09', '1', '300', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '11', '51');
INSERT INTO `t_proxylog` VALUES ('96', '2016-06-27 09:56:17', '1', '300', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '11', '51');
INSERT INTO `t_proxylog` VALUES ('97', '2016-06-27 11:17:45', '1', '58', '/images/bannerImage/e5a3f76e-4148-461e-96ec-4a62462877c5.jpg', '施工洛林', '和咯莫', '67', '54');
INSERT INTO `t_proxylog` VALUES ('98', '2016-06-27 11:17:55', '4', '58', '/images/bannerImage/e5a3f76e-4148-461e-96ec-4a62462877c5.jpg', '施工洛林', '和咯莫', '67', '54');
INSERT INTO `t_proxylog` VALUES ('99', '2016-06-27 11:19:18', '1', '300', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '67', '51');
INSERT INTO `t_proxylog` VALUES ('100', '2016-06-27 11:19:32', '1', '300', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '68', '51');
INSERT INTO `t_proxylog` VALUES ('101', '2016-06-27 11:19:48', '1', '390', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '67', '51');
INSERT INTO `t_proxylog` VALUES ('102', '2016-06-27 11:20:38', '1', '300', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '67', '51');
INSERT INTO `t_proxylog` VALUES ('103', '2016-06-27 11:21:23', '1', '300', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '67', '51');
INSERT INTO `t_proxylog` VALUES ('104', '2016-06-27 11:22:19', '1', '300', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '67', '51');
INSERT INTO `t_proxylog` VALUES ('105', '2016-06-27 11:22:23', '1', '300', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '67', '51');
INSERT INTO `t_proxylog` VALUES ('106', '2016-06-27 12:19:41', '1', '200', '/images/bannerImage/6c940c52-6cf7-4340-b4bb-c73f47c5ec05.jpg', '薛大大', '【品牌】：精品女装\n【价格】：￥90.00\n【时间】：2016-06-24\n【介绍】：(包邮）2016夏装新款时尚小香风印花背心上衣+高腰短裤套装\nM-L 上蓝下黑裤 上黄下黑裤', '67', '52');
INSERT INTO `t_proxylog` VALUES ('107', '2016-06-27 12:23:49', '1', '80', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '抠门兔', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '67', '55');
INSERT INTO `t_proxylog` VALUES ('108', '2016-06-27 12:24:03', '1', '80', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '抠门兔', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '67', '55');
INSERT INTO `t_proxylog` VALUES ('109', '2016-06-27 12:24:08', '1', '80', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '抠门兔', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '67', '55');
INSERT INTO `t_proxylog` VALUES ('110', '2016-06-27 13:57:21', '1', '1000', '/images/bannerImage/335995ea-373d-421f-977a-225ac27d584f.jpg', '薛大大', '，帮忙什么意思', '67', '53');
INSERT INTO `t_proxylog` VALUES ('111', '2016-06-27 13:57:26', '1', '1000', '/images/bannerImage/335995ea-373d-421f-977a-225ac27d584f.jpg', '薛大大', '，帮忙什么意思', '67', '53');
INSERT INTO `t_proxylog` VALUES ('112', '2016-06-27 13:57:41', '1', '1000', '/images/bannerImage/335995ea-373d-421f-977a-225ac27d584f.jpg', '薛大大', '，帮忙什么意思', '67', '53');
INSERT INTO `t_proxylog` VALUES ('113', '2016-06-27 13:57:54', '1', '1000', '/images/bannerImage/335995ea-373d-421f-977a-225ac27d584f.jpg', '薛大大', '，帮忙什么意思', '67', '53');
INSERT INTO `t_proxylog` VALUES ('114', '2016-06-27 14:39:03', '1', '100', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '抠门兔', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '67', '55');
INSERT INTO `t_proxylog` VALUES ('115', '2016-06-27 14:39:26', '1', '100', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '抠门兔', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '67', '55');
INSERT INTO `t_proxylog` VALUES ('116', '2016-06-27 14:39:47', '1', '100', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '抠门兔', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '67', '55');
INSERT INTO `t_proxylog` VALUES ('117', '2016-06-27 14:59:46', '3', '100', '/images/bannerImage/6c940c52-6cf7-4340-b4bb-c73f47c5ec05.jpg', '薛大大', '【品牌】：精品女装\n【价格】：￥90.00\n【时间】：2016-06-24\n【介绍】：(包邮）2016夏装新款时尚小香风印花背心上衣+高腰短裤套装\nM-L 上蓝下黑裤 上黄下黑裤', '64', '52');
INSERT INTO `t_proxylog` VALUES ('118', '2016-06-27 15:00:00', '1', '100', '/images/bannerImage/6c940c52-6cf7-4340-b4bb-c73f47c5ec05.jpg', '薛大大', '【品牌】：精品女装\n【价格】：￥90.00\n【时间】：2016-06-24\n【介绍】：(包邮）2016夏装新款时尚小香风印花背心上衣+高腰短裤套装\nM-L 上蓝下黑裤 上黄下黑裤', '64', '52');
INSERT INTO `t_proxylog` VALUES ('119', '2016-06-27 15:07:12', '1', '222', '/images/bannerImage/6c940c52-6cf7-4340-b4bb-c73f47c5ec05.jpg', '薛大大', '【品牌】：精品女装\n【价格】：￥90.00\n【时间】：2016-06-24\n【介绍】：(包邮）2016夏装新款时尚小香风印花背心上衣+高腰短裤套装\nM-L 上蓝下黑裤 上黄下黑裤', '68', '52');
INSERT INTO `t_proxylog` VALUES ('120', '2016-06-27 15:07:23', '1', '222', '/images/bannerImage/6c940c52-6cf7-4340-b4bb-c73f47c5ec05.jpg', '薛大大', '【品牌】：精品女装\n【价格】：￥90.00\n【时间】：2016-06-24\n【介绍】：(包邮）2016夏装新款时尚小香风印花背心上衣+高腰短裤套装\nM-L 上蓝下黑裤 上黄下黑裤', '68', '52');
INSERT INTO `t_proxylog` VALUES ('121', '2016-06-27 15:07:50', '1', '2111', '/images/bannerImage/6c940c52-6cf7-4340-b4bb-c73f47c5ec05.jpg', '薛大大', '【品牌】：精品女装\n【价格】：￥90.00\n【时间】：2016-06-24\n【介绍】：(包邮）2016夏装新款时尚小香风印花背心上衣+高腰短裤套装\nM-L 上蓝下黑裤 上黄下黑裤', '68', '52');
INSERT INTO `t_proxylog` VALUES ('122', '2016-06-27 15:07:55', '1', '2111', '/images/bannerImage/6c940c52-6cf7-4340-b4bb-c73f47c5ec05.jpg', '薛大大', '【品牌】：精品女装\n【价格】：￥90.00\n【时间】：2016-06-24\n【介绍】：(包邮）2016夏装新款时尚小香风印花背心上衣+高腰短裤套装\nM-L 上蓝下黑裤 上黄下黑裤', '68', '52');
INSERT INTO `t_proxylog` VALUES ('123', '2016-06-27 15:08:23', '1', '22', '/images/bannerImage/6c940c52-6cf7-4340-b4bb-c73f47c5ec05.jpg', '薛大大', '【品牌】：精品女装\n【价格】：￥90.00\n【时间】：2016-06-24\n【介绍】：(包邮）2016夏装新款时尚小香风印花背心上衣+高腰短裤套装\nM-L 上蓝下黑裤 上黄下黑裤', '68', '52');
INSERT INTO `t_proxylog` VALUES ('124', '2016-06-27 15:08:43', '1', '10', '/images/bannerImage/6c940c52-6cf7-4340-b4bb-c73f47c5ec05.jpg', '薛大大', '【品牌】：精品女装\n【价格】：￥90.00\n【时间】：2016-06-24\n【介绍】：(包邮）2016夏装新款时尚小香风印花背心上衣+高腰短裤套装\nM-L 上蓝下黑裤 上黄下黑裤', '68', '52');
INSERT INTO `t_proxylog` VALUES ('125', '2016-06-27 15:08:57', '1', '10', '/images/bannerImage/6c940c52-6cf7-4340-b4bb-c73f47c5ec05.jpg', '薛大大', '【品牌】：精品女装\n【价格】：￥90.00\n【时间】：2016-06-24\n【介绍】：(包邮）2016夏装新款时尚小香风印花背心上衣+高腰短裤套装\nM-L 上蓝下黑裤 上黄下黑裤', '68', '52');
INSERT INTO `t_proxylog` VALUES ('126', '2016-06-27 15:11:04', '1', '30', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '抠门兔', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '68', '55');
INSERT INTO `t_proxylog` VALUES ('127', '2016-06-27 15:11:19', '1', '30', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '抠门兔', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '68', '55');
INSERT INTO `t_proxylog` VALUES ('128', '2016-06-27 15:11:32', '1', '30', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '抠门兔', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '68', '55');
INSERT INTO `t_proxylog` VALUES ('129', '2016-06-27 15:11:50', '1', '30', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '抠门兔', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '68', '55');
INSERT INTO `t_proxylog` VALUES ('130', '2016-06-27 15:12:36', '1', '35', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '抠门兔', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '68', '55');
INSERT INTO `t_proxylog` VALUES ('131', '2016-06-27 15:12:49', '1', '35', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '抠门兔', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '68', '55');
INSERT INTO `t_proxylog` VALUES ('132', '2016-06-27 15:13:49', '1', '30', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '68', '51');
INSERT INTO `t_proxylog` VALUES ('133', '2016-06-27 15:14:24', '1', '30', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '抠门兔', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '68', '55');
INSERT INTO `t_proxylog` VALUES ('134', '2016-06-27 15:14:42', '1', '30', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '68', '51');
INSERT INTO `t_proxylog` VALUES ('135', '2016-06-27 15:14:55', '1', '30', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '68', '51');
INSERT INTO `t_proxylog` VALUES ('136', '2016-06-27 15:15:13', '1', '30', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '抠门兔', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '68', '55');
INSERT INTO `t_proxylog` VALUES ('137', '2016-06-27 15:15:37', '1', '30', '/images/bannerImage/360a9882-e7d3-48ca-ae07-6dfda0cd2847.jpg', '我们都是一', '有时候也会是个有梦想和未来会很大一部分', '68', '56');
INSERT INTO `t_proxylog` VALUES ('138', '2016-06-27 15:16:15', '1', '30', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '抠门兔', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '68', '55');
INSERT INTO `t_proxylog` VALUES ('139', '2016-06-27 15:16:21', '1', '30', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '抠门兔', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '68', '55');
INSERT INTO `t_proxylog` VALUES ('140', '2016-06-27 15:16:28', '1', '30', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '抠门兔', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '68', '55');
INSERT INTO `t_proxylog` VALUES ('141', '2016-06-27 15:20:13', '1', '300', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '抠门兔', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '68', '55');
INSERT INTO `t_proxylog` VALUES ('142', '2016-06-27 15:20:21', '1', '300', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '抠门兔', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '68', '55');
INSERT INTO `t_proxylog` VALUES ('143', '2016-06-27 15:21:16', '1', '300', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '抠门兔', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '68', '55');
INSERT INTO `t_proxylog` VALUES ('144', '2016-06-27 16:00:52', '4', '11', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '62', '51');
INSERT INTO `t_proxylog` VALUES ('145', '2016-06-28 14:36:06', '1', '1000', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '67', '55');
INSERT INTO `t_proxylog` VALUES ('146', '2016-06-28 14:36:34', '1', '1000', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '67', '55');
INSERT INTO `t_proxylog` VALUES ('147', '2016-06-28 14:39:10', '1', '150', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '67', '55');
INSERT INTO `t_proxylog` VALUES ('148', '2016-06-28 14:39:34', '1', '150', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '67', '55');
INSERT INTO `t_proxylog` VALUES ('149', '2016-06-28 14:40:16', '1', '100', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '67', '55');
INSERT INTO `t_proxylog` VALUES ('150', '2016-06-28 14:40:37', '1', '100', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '67', '55');
INSERT INTO `t_proxylog` VALUES ('151', '2016-06-28 14:46:35', '1', '100', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '67', '55');
INSERT INTO `t_proxylog` VALUES ('152', '2016-06-28 14:46:39', '1', '100', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '67', '55');
INSERT INTO `t_proxylog` VALUES ('153', '2016-06-28 14:47:50', '1', '300', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '68', '55');
INSERT INTO `t_proxylog` VALUES ('154', '2016-06-28 14:48:03', '1', '300', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '68', '55');
INSERT INTO `t_proxylog` VALUES ('155', '2016-06-28 14:48:38', '1', '300', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '68', '55');
INSERT INTO `t_proxylog` VALUES ('156', '2016-06-28 14:49:31', '1', '300', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '68', '55');
INSERT INTO `t_proxylog` VALUES ('157', '2016-06-28 14:51:49', '0', '100', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '71', '55');
INSERT INTO `t_proxylog` VALUES ('158', '2016-06-28 14:51:56', '1', '300', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '68', '55');
INSERT INTO `t_proxylog` VALUES ('159', '2016-06-28 14:52:26', '1', '300', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '68', '55');
INSERT INTO `t_proxylog` VALUES ('160', '2016-06-28 14:52:31', '1', '300', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '68', '55');
INSERT INTO `t_proxylog` VALUES ('161', '2016-06-28 14:52:46', '1', '300', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '68', '55');
INSERT INTO `t_proxylog` VALUES ('162', '2016-06-28 14:53:15', '1', '300', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '68', '51');
INSERT INTO `t_proxylog` VALUES ('163', '2016-06-28 15:10:21', '1', '1000', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '67', '55');
INSERT INTO `t_proxylog` VALUES ('164', '2016-06-28 15:10:56', '1', '100', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '67', '55');
INSERT INTO `t_proxylog` VALUES ('165', '2016-06-28 15:14:23', '1', '300', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '68', '55');
INSERT INTO `t_proxylog` VALUES ('166', '2016-06-28 15:15:36', '1', '300', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '68', '51');
INSERT INTO `t_proxylog` VALUES ('167', '2016-06-28 15:17:15', '1', '300', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '68', '51');
INSERT INTO `t_proxylog` VALUES ('168', '2016-06-28 15:17:49', '1', '300', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '68', '51');
INSERT INTO `t_proxylog` VALUES ('169', '2016-06-28 15:18:41', '1', '300', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '68', '51');
INSERT INTO `t_proxylog` VALUES ('170', '2016-06-28 15:21:40', '1', '300', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '68', '51');
INSERT INTO `t_proxylog` VALUES ('171', '2016-06-28 15:22:05', '1', '300', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '68', '51');
INSERT INTO `t_proxylog` VALUES ('172', '2016-06-28 15:43:00', '1', '300', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '68', '51');
INSERT INTO `t_proxylog` VALUES ('173', '2016-06-28 15:43:04', '1', '300', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '68', '51');
INSERT INTO `t_proxylog` VALUES ('174', '2016-06-28 15:43:54', '1', '100', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '67', '55');
INSERT INTO `t_proxylog` VALUES ('175', '2016-06-28 15:44:00', '1', '100', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '67', '55');
INSERT INTO `t_proxylog` VALUES ('176', '2016-06-28 15:44:13', '1', '300', '/images/bannerImage/6c940c52-6cf7-4340-b4bb-c73f47c5ec05.jpg', '薛大大', '【品牌】：精品女装\n【价格】：￥90.00\n【时间】：2016-06-24\n【介绍】：(包邮）2016夏装新款时尚小香风印花背心上衣+高腰短裤套装\nM-L 上蓝下黑裤 上黄下黑裤', '68', '52');
INSERT INTO `t_proxylog` VALUES ('177', '2016-06-28 15:44:40', '1', '300', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '68', '51');
INSERT INTO `t_proxylog` VALUES ('178', '2016-06-28 15:45:07', '1', '300', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '68', '51');
INSERT INTO `t_proxylog` VALUES ('179', '2016-06-28 15:45:48', '1', '100', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '67', '55');
INSERT INTO `t_proxylog` VALUES ('180', '2016-06-28 15:52:58', '1', '300', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '68', '51');
INSERT INTO `t_proxylog` VALUES ('181', '2016-06-28 15:53:59', '1', '300', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '68', '51');
INSERT INTO `t_proxylog` VALUES ('182', '2016-06-29 07:04:19', '1', '200', '/images/bannerImage/a4dda6d3-843c-4541-bda9-fa274c23ccff.jpg', '沸点九九遵义分店', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空,2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货,http://211.149.241.17:8888/proxy/enterProxyGoods?proxyGoodsId=199', '67', '62');
INSERT INTO `t_proxylog` VALUES ('183', '2016-06-29 07:04:24', '1', '200', '/images/bannerImage/a4dda6d3-843c-4541-bda9-fa274c23ccff.jpg', '沸点九九遵义分店', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空,2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货,http://211.149.241.17:8888/proxy/enterProxyGoods?proxyGoodsId=199', '67', '62');
INSERT INTO `t_proxylog` VALUES ('184', '2016-06-29 07:04:50', '1', '200', '/images/bannerImage/a4dda6d3-843c-4541-bda9-fa274c23ccff.jpg', '沸点九九遵义分店', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空,2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货,http://211.149.241.17:8888/proxy/enterProxyGoods?proxyGoodsId=199', '67', '62');
INSERT INTO `t_proxylog` VALUES ('185', '2016-06-29 07:10:50', '1', '200', '/images/bannerImage/a4dda6d3-843c-4541-bda9-fa274c23ccff.jpg', '沸点九九遵义分店', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空,2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货,http://211.149.241.17:8888/proxy/enterProxyGoods?proxyGoodsId=199', '67', '62');
INSERT INTO `t_proxylog` VALUES ('186', '2016-06-29 07:10:56', '1', '200', '/images/bannerImage/a4dda6d3-843c-4541-bda9-fa274c23ccff.jpg', '沸点九九遵义分店', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空,2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货,http://211.149.241.17:8888/proxy/enterProxyGoods?proxyGoodsId=199', '67', '62');
INSERT INTO `t_proxylog` VALUES ('187', '2016-06-29 07:20:36', '1', '200', '/images/bannerImage/a4dda6d3-843c-4541-bda9-fa274c23ccff.jpg', '沸点九九遵义分店', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空,2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货,http://211.149.241.17:8888/proxy/enterProxyGoods?proxyGoodsId=199', '67', '62');
INSERT INTO `t_proxylog` VALUES ('188', '2016-06-29 07:47:35', '4', '100', '/images/bannerImage/360a9882-e7d3-48ca-ae07-6dfda0cd2847.jpg', '我们都是一', '有时候也会是个有梦想和未来会很大一部分', '62', '56');
INSERT INTO `t_proxylog` VALUES ('189', '2016-06-29 07:47:39', '4', '100', '/images/bannerImage/360a9882-e7d3-48ca-ae07-6dfda0cd2847.jpg', '我们都是一', '有时候也会是个有梦想和未来会很大一部分', '62', '56');
INSERT INTO `t_proxylog` VALUES ('190', '2016-06-29 07:47:41', '1', '100', '/images/bannerImage/360a9882-e7d3-48ca-ae07-6dfda0cd2847.jpg', '我们都是一', '有时候也会是个有梦想和未来会很大一部分', '62', '56');
INSERT INTO `t_proxylog` VALUES ('191', '2016-06-29 07:47:43', '0', '100', '/images/bannerImage/360a9882-e7d3-48ca-ae07-6dfda0cd2847.jpg', '我们都是一', '有时候也会是个有梦想和未来会很大一部分', '62', '56');
INSERT INTO `t_proxylog` VALUES ('192', '2016-06-29 07:47:50', '3', '100', '/images/bannerImage/360a9882-e7d3-48ca-ae07-6dfda0cd2847.jpg', '我们都是一', '有时候也会是个有梦想和未来会很大一部分', '62', '56');
INSERT INTO `t_proxylog` VALUES ('193', '2016-06-29 07:47:56', '0', '100', '/images/bannerImage/360a9882-e7d3-48ca-ae07-6dfda0cd2847.jpg', '我们都是一', '有时候也会是个有梦想和未来会很大一部分', '62', '56');
INSERT INTO `t_proxylog` VALUES ('194', '2016-06-29 07:47:59', '2', '100', '/images/bannerImage/360a9882-e7d3-48ca-ae07-6dfda0cd2847.jpg', '我们都是一', '有时候也会是个有梦想和未来会很大一部分', '62', '56');
INSERT INTO `t_proxylog` VALUES ('195', '2016-06-29 07:48:05', '4', '100', '/images/bannerImage/360a9882-e7d3-48ca-ae07-6dfda0cd2847.jpg', '我们都是一', '有时候也会是个有梦想和未来会很大一部分', '62', '56');
INSERT INTO `t_proxylog` VALUES ('196', '2016-06-29 07:48:07', '1', '100', '/images/bannerImage/360a9882-e7d3-48ca-ae07-6dfda0cd2847.jpg', '我们都是一', '有时候也会是个有梦想和未来会很大一部分', '62', '56');
INSERT INTO `t_proxylog` VALUES ('197', '2016-06-29 07:48:09', '0', '100', '/images/bannerImage/360a9882-e7d3-48ca-ae07-6dfda0cd2847.jpg', '我们都是一', '有时候也会是个有梦想和未来会很大一部分', '62', '56');
INSERT INTO `t_proxylog` VALUES ('198', '2016-06-29 09:16:58', '1', '100', '/images/bannerImage/a4dda6d3-843c-4541-bda9-fa274c23ccff.jpg', '沸点九九遵义分店', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空,2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货,http://211.149.241.17:8888/proxy/enterProxyGoods?proxyGoodsId=199', '67', '62');
INSERT INTO `t_proxylog` VALUES ('199', '2016-06-29 09:17:04', '1', '100', '/images/bannerImage/a4dda6d3-843c-4541-bda9-fa274c23ccff.jpg', '沸点九九遵义分店', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空,2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货,http://211.149.241.17:8888/proxy/enterProxyGoods?proxyGoodsId=199', '67', '62');
INSERT INTO `t_proxylog` VALUES ('200', '2016-06-29 18:00:11', '1', '100', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '沸点九九宜宾县分店', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '64', '55');
INSERT INTO `t_proxylog` VALUES ('201', '2016-06-29 18:00:16', '3', '100', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '沸点九九宜宾县分店', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '64', '55');
INSERT INTO `t_proxylog` VALUES ('202', '2016-06-29 18:01:01', '0', '100', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '沸点九九宜宾县分店', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '64', '55');
INSERT INTO `t_proxylog` VALUES ('203', '2016-06-29 18:01:23', '0', '100', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '沸点九九宜宾县分店', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '64', '55');
INSERT INTO `t_proxylog` VALUES ('204', '2016-06-29 18:01:34', '0', '100', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '沸点九九宜宾县分店', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '64', '55');
INSERT INTO `t_proxylog` VALUES ('205', '2016-06-29 18:02:12', '1', '100', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '沸点九九宜宾县分店', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '64', '55');
INSERT INTO `t_proxylog` VALUES ('206', '2016-06-29 18:07:57', '1', '100', '/images/bannerImage/a4dda6d3-843c-4541-bda9-fa274c23ccff.jpg', '沸点九九遵义分店', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空,2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货,http://211.149.241.17:8888/proxy/enterProxyGoods?proxyGoodsId=199', '64', '62');
INSERT INTO `t_proxylog` VALUES ('207', '2016-06-29 18:08:01', '4', '100', '/images/bannerImage/a4dda6d3-843c-4541-bda9-fa274c23ccff.jpg', '沸点九九遵义分店', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空,2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货,http://211.149.241.17:8888/proxy/enterProxyGoods?proxyGoodsId=199', '64', '62');
INSERT INTO `t_proxylog` VALUES ('208', '2016-06-29 18:08:29', '1', '100', '/images/bannerImage/a4dda6d3-843c-4541-bda9-fa274c23ccff.jpg', '沸点九九遵义分店', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空,2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货,http://211.149.241.17:8888/proxy/enterProxyGoods?proxyGoodsId=199', '64', '62');
INSERT INTO `t_proxylog` VALUES ('209', '2016-06-29 18:08:31', '1', '100', '/images/bannerImage/a4dda6d3-843c-4541-bda9-fa274c23ccff.jpg', '沸点九九遵义分店', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空,2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货,http://211.149.241.17:8888/proxy/enterProxyGoods?proxyGoodsId=199', '64', '62');
INSERT INTO `t_proxylog` VALUES ('210', '2016-06-29 18:08:33', '0', '100', '/images/bannerImage/a4dda6d3-843c-4541-bda9-fa274c23ccff.jpg', '沸点九九遵义分店', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空,2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货,http://211.149.241.17:8888/proxy/enterProxyGoods?proxyGoodsId=199', '64', '62');
INSERT INTO `t_proxylog` VALUES ('211', '2016-06-29 18:08:38', '1', '100', '/images/bannerImage/a4dda6d3-843c-4541-bda9-fa274c23ccff.jpg', '沸点九九遵义分店', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空,2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货,http://211.149.241.17:8888/proxy/enterProxyGoods?proxyGoodsId=199', '64', '62');
INSERT INTO `t_proxylog` VALUES ('212', '2016-06-29 18:08:46', '3', '100', '/images/bannerImage/a4dda6d3-843c-4541-bda9-fa274c23ccff.jpg', '沸点九九遵义分店', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空,2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货,http://211.149.241.17:8888/proxy/enterProxyGoods?proxyGoodsId=199', '64', '62');
INSERT INTO `t_proxylog` VALUES ('213', '2016-06-29 18:08:49', '1', '100', '/images/bannerImage/a4dda6d3-843c-4541-bda9-fa274c23ccff.jpg', '沸点九九遵义分店', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空,2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货,http://211.149.241.17:8888/proxy/enterProxyGoods?proxyGoodsId=199', '64', '62');
INSERT INTO `t_proxylog` VALUES ('214', '2016-06-29 18:10:17', '1', '100', '/images/bannerImage/a4dda6d3-843c-4541-bda9-fa274c23ccff.jpg', '沸点九九遵义分店', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空,2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货,http://211.149.241.17:8888/proxy/enterProxyGoods?proxyGoodsId=199', '64', '62');
INSERT INTO `t_proxylog` VALUES ('215', '2016-06-29 18:11:17', '1', '100', '/images/bannerImage/a4dda6d3-843c-4541-bda9-fa274c23ccff.jpg', '沸点九九遵义分店', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空,2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货,http://211.149.241.17:8888/proxy/enterProxyGoods?proxyGoodsId=199', '64', '62');
INSERT INTO `t_proxylog` VALUES ('216', '2016-06-29 18:11:26', '4', '100', '/images/bannerImage/a4dda6d3-843c-4541-bda9-fa274c23ccff.jpg', '沸点九九遵义分店', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空,2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货,http://211.149.241.17:8888/proxy/enterProxyGoods?proxyGoodsId=199', '64', '62');
INSERT INTO `t_proxylog` VALUES ('217', '2016-06-29 18:11:29', '3', '100', '/images/bannerImage/a4dda6d3-843c-4541-bda9-fa274c23ccff.jpg', '沸点九九遵义分店', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空,2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货,http://211.149.241.17:8888/proxy/enterProxyGoods?proxyGoodsId=199', '64', '62');
INSERT INTO `t_proxylog` VALUES ('218', '2016-06-29 18:13:38', '1', '10', '/images/bannerImage/a4dda6d3-843c-4541-bda9-fa274c23ccff.jpg', '沸点九九遵义分店', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空,2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货,http://211.149.241.17:8888/proxy/enterProxyGoods?proxyGoodsId=199', '64', '62');
INSERT INTO `t_proxylog` VALUES ('219', '2016-06-29 18:13:40', '4', '10', '/images/bannerImage/a4dda6d3-843c-4541-bda9-fa274c23ccff.jpg', '沸点九九遵义分店', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空,2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货,http://211.149.241.17:8888/proxy/enterProxyGoods?proxyGoodsId=199', '64', '62');
INSERT INTO `t_proxylog` VALUES ('220', '2016-06-29 18:14:09', '1', '10', '/images/bannerImage/a4dda6d3-843c-4541-bda9-fa274c23ccff.jpg', '沸点九九遵义分店', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空,2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货,http://211.149.241.17:8888/proxy/enterProxyGoods?proxyGoodsId=199', '64', '62');
INSERT INTO `t_proxylog` VALUES ('221', '2016-06-29 18:14:11', '4', '10', '/images/bannerImage/a4dda6d3-843c-4541-bda9-fa274c23ccff.jpg', '沸点九九遵义分店', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空,2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货,http://211.149.241.17:8888/proxy/enterProxyGoods?proxyGoodsId=199', '64', '62');
INSERT INTO `t_proxylog` VALUES ('222', '2016-06-29 18:15:17', '1', '100', '/images/bannerImage/a4dda6d3-843c-4541-bda9-fa274c23ccff.jpg', '沸点九九遵义分店', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空,2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货,http://211.149.241.17:8888/proxy/enterProxyGoods?proxyGoodsId=199', '64', '62');
INSERT INTO `t_proxylog` VALUES ('223', '2016-06-29 18:16:26', '1', '100', '/images/bannerImage/a4dda6d3-843c-4541-bda9-fa274c23ccff.jpg', '沸点九九遵义分店', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空,2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货,http://211.149.241.17:8888/proxy/enterProxyGoods?proxyGoodsId=199', '64', '62');
INSERT INTO `t_proxylog` VALUES ('224', '2016-06-29 18:31:57', '3', '100', '/images/bannerImage/2251c3be-b3ae-4bf5-aa90-52b625f6777b.jpg', '沸点九九宜宾县分店', '哈哈', '64', '61');
INSERT INTO `t_proxylog` VALUES ('225', '2016-06-29 18:32:07', '1', '100', '/images/bannerImage/2251c3be-b3ae-4bf5-aa90-52b625f6777b.jpg', '沸点九九宜宾县分店', '舅舅家', '64', '61');
INSERT INTO `t_proxylog` VALUES ('226', '2016-06-29 18:32:15', '4', '100', '/images/bannerImage/2251c3be-b3ae-4bf5-aa90-52b625f6777b.jpg', '沸点九九宜宾县分店', '舅舅家', '64', '61');
INSERT INTO `t_proxylog` VALUES ('227', '2016-06-29 18:32:18', '3', '100', '/images/bannerImage/2251c3be-b3ae-4bf5-aa90-52b625f6777b.jpg', '沸点九九宜宾县分店', '舅舅家', '64', '61');
INSERT INTO `t_proxylog` VALUES ('228', '2016-06-29 18:32:55', '1', '100', '/images/bannerImage/e921005d-1de2-4ac9-befd-5a04797b3099.jpg', '沸点九九宜宾县分店', '女神服装', '64', '63');
INSERT INTO `t_proxylog` VALUES ('229', '2016-06-29 18:33:59', '1', '100', '/images/bannerImage/e921005d-1de2-4ac9-befd-5a04797b3099.jpg', '沸点九九宜宾县分店', '女神服装', '64', '63');
INSERT INTO `t_proxylog` VALUES ('230', '2016-06-29 18:34:43', '4', '100', '/images/bannerImage/e921005d-1de2-4ac9-befd-5a04797b3099.jpg', '沸点九九宜宾县分店', '女神服装', '64', '63');
INSERT INTO `t_proxylog` VALUES ('231', '2016-06-29 18:35:54', '3', '200', '/images/bannerImage/e921005d-1de2-4ac9-befd-5a04797b3099.jpg', '沸点九九宜宾县分店', '女神服装', '64', '63');
INSERT INTO `t_proxylog` VALUES ('232', '2016-06-29 18:35:59', '2', '200', '/images/bannerImage/e921005d-1de2-4ac9-befd-5a04797b3099.jpg', '沸点九九宜宾县分店', '女神服装', '64', '63');
INSERT INTO `t_proxylog` VALUES ('233', '2016-06-29 18:36:07', '0', '200', '/images/bannerImage/e921005d-1de2-4ac9-befd-5a04797b3099.jpg', '沸点九九宜宾县分店', '女神服装', '64', '63');
INSERT INTO `t_proxylog` VALUES ('234', '2016-06-29 18:40:42', '4', '200', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '64', '51');
INSERT INTO `t_proxylog` VALUES ('235', '2016-06-29 18:40:49', '1', '200', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '64', '51');
INSERT INTO `t_proxylog` VALUES ('236', '2016-06-29 18:41:01', '4', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '64', '51');
INSERT INTO `t_proxylog` VALUES ('237', '2016-06-29 18:41:59', '1', '1000', '/images/bannerImage/a4dda6d3-843c-4541-bda9-fa274c23ccff.jpg', '沸点九九遵义分店', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空,2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货,http://211.149.241.17:8888/proxy/enterProxyGoods?proxyGoodsId=199', '64', '62');
INSERT INTO `t_proxylog` VALUES ('238', '2016-06-29 19:16:30', '1', '100', '/images/bannerImage/a4dda6d3-843c-4541-bda9-fa274c23ccff.jpg', '沸点九九遵义分店', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空,2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货,http://211.149.241.17:8888/proxy/enterProxyGoods?proxyGoodsId=199', '67', '62');
INSERT INTO `t_proxylog` VALUES ('239', '2016-06-30 10:10:41', '5', '20', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '沸点九九宜宾县分店', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '64', '55');
INSERT INTO `t_proxylog` VALUES ('240', '2016-06-30 10:14:26', '5', '20', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '沸点九九宜宾县分店', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '64', '55');
INSERT INTO `t_proxylog` VALUES ('241', '2016-06-30 10:14:31', '5', '20', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '沸点九九宜宾县分店', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '64', '55');
INSERT INTO `t_proxylog` VALUES ('242', '2016-06-30 10:16:18', '5', '16', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '沸点九九宜宾县分店', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '64', '55');
INSERT INTO `t_proxylog` VALUES ('243', '2016-06-30 10:16:23', '5', '16', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '沸点九九宜宾县分店', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '64', '55');
INSERT INTO `t_proxylog` VALUES ('244', '2016-06-30 10:16:39', '5', '16', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '沸点九九宜宾县分店', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '64', '55');
INSERT INTO `t_proxylog` VALUES ('245', '2016-06-30 10:16:41', '5', '16', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '沸点九九宜宾县分店', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '64', '55');
INSERT INTO `t_proxylog` VALUES ('246', '2016-06-30 10:16:44', '1', '16', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '沸点九九宜宾县分店', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '64', '55');
INSERT INTO `t_proxylog` VALUES ('247', '2016-06-30 10:16:50', '1', '16', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '沸点九九宜宾县分店', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '64', '55');
INSERT INTO `t_proxylog` VALUES ('248', '2016-06-30 10:16:52', '4', '16', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '沸点九九宜宾县分店', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '64', '55');
INSERT INTO `t_proxylog` VALUES ('249', '2016-06-30 10:16:54', '0', '16', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '沸点九九宜宾县分店', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '64', '55');
INSERT INTO `t_proxylog` VALUES ('250', '2016-06-30 10:17:15', '5', '100', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '沸点九九宜宾县分店', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '64', '55');
INSERT INTO `t_proxylog` VALUES ('251', '2016-06-30 10:25:57', '5', '100', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '沸点九九宜宾县分店', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '64', '55');
INSERT INTO `t_proxylog` VALUES ('252', '2016-06-30 10:29:12', '5', '100', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '沸点九九宜宾县分店', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '64', '55');
INSERT INTO `t_proxylog` VALUES ('253', '2016-06-30 10:32:57', '5', '10', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '64', '51');
INSERT INTO `t_proxylog` VALUES ('254', '2016-06-30 10:33:11', '5', '10', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '64', '51');
INSERT INTO `t_proxylog` VALUES ('255', '2016-06-30 10:33:14', '4', '10', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '64', '51');
INSERT INTO `t_proxylog` VALUES ('256', '2016-06-30 10:33:30', '1', '10', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '64', '51');
INSERT INTO `t_proxylog` VALUES ('257', '2016-06-30 10:35:41', '4', '1', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '64', '51');
INSERT INTO `t_proxylog` VALUES ('258', '2016-06-30 10:35:50', '4', '1', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '64', '51');
INSERT INTO `t_proxylog` VALUES ('259', '2016-06-30 10:36:44', '3', '1', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '64', '51');
INSERT INTO `t_proxylog` VALUES ('260', '2016-06-30 10:36:47', '1', '1', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '64', '51');
INSERT INTO `t_proxylog` VALUES ('261', '2016-06-30 10:36:50', '4', '1', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '64', '51');
INSERT INTO `t_proxylog` VALUES ('262', '2016-06-30 10:38:30', '4', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '64', '51');
INSERT INTO `t_proxylog` VALUES ('263', '2016-06-30 10:38:34', '1', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '64', '51');
INSERT INTO `t_proxylog` VALUES ('264', '2016-06-30 10:38:57', '4', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '64', '51');
INSERT INTO `t_proxylog` VALUES ('265', '2016-06-30 10:38:59', '1', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '64', '51');
INSERT INTO `t_proxylog` VALUES ('266', '2016-06-30 10:39:00', '4', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '64', '51');
INSERT INTO `t_proxylog` VALUES ('267', '2016-06-30 10:39:01', '1', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '64', '51');
INSERT INTO `t_proxylog` VALUES ('268', '2016-06-30 10:39:02', '4', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '64', '51');
INSERT INTO `t_proxylog` VALUES ('269', '2016-06-30 10:39:04', '1', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '64', '51');
INSERT INTO `t_proxylog` VALUES ('270', '2016-06-30 10:39:05', '1', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '64', '51');
INSERT INTO `t_proxylog` VALUES ('271', '2016-06-30 10:39:26', '1', '100', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '沸点九九宜宾县分店', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '64', '55');
INSERT INTO `t_proxylog` VALUES ('272', '2016-06-30 10:39:30', '4', '100', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '沸点九九宜宾县分店', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '64', '55');
INSERT INTO `t_proxylog` VALUES ('273', '2016-06-30 10:39:33', '2', '100', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '沸点九九宜宾县分店', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '64', '55');
INSERT INTO `t_proxylog` VALUES ('274', '2016-06-30 10:39:39', '4', '100', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '沸点九九宜宾县分店', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '64', '55');
INSERT INTO `t_proxylog` VALUES ('275', '2016-06-30 10:39:42', '3', '100', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '沸点九九宜宾县分店', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '64', '55');
INSERT INTO `t_proxylog` VALUES ('276', '2016-06-30 10:39:46', '4', '100', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '沸点九九宜宾县分店', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '64', '55');
INSERT INTO `t_proxylog` VALUES ('277', '2016-06-30 10:41:36', '4', '100', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '沸点九九宜宾县分店', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '64', '55');
INSERT INTO `t_proxylog` VALUES ('278', '2016-06-30 10:42:03', '1', '100', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '沸点九九宜宾县分店', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '64', '55');
INSERT INTO `t_proxylog` VALUES ('279', '2016-06-30 10:43:15', '4', '100', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '沸点九九宜宾县分店', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '64', '55');
INSERT INTO `t_proxylog` VALUES ('280', '2016-06-30 10:43:34', '1', '100', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '沸点九九宜宾县分店', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '64', '55');
INSERT INTO `t_proxylog` VALUES ('281', '2016-06-30 10:43:37', '4', '100', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '沸点九九宜宾县分店', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '64', '55');
INSERT INTO `t_proxylog` VALUES ('282', '2016-06-30 10:44:20', '4', '100', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '沸点九九宜宾县分店', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '64', '55');
INSERT INTO `t_proxylog` VALUES ('283', '2016-06-30 10:44:23', '1', '100', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '沸点九九宜宾县分店', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '64', '55');
INSERT INTO `t_proxylog` VALUES ('284', '2016-06-30 10:44:26', '1', '100', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '沸点九九宜宾县分店', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '64', '55');
INSERT INTO `t_proxylog` VALUES ('285', '2016-06-30 10:44:32', '1', '10', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '沸点九九宜宾县分店', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '64', '55');
INSERT INTO `t_proxylog` VALUES ('286', '2016-06-30 10:46:09', '4', '100', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '沸点九九宜宾县分店', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '64', '55');
INSERT INTO `t_proxylog` VALUES ('287', '2016-06-30 10:46:13', '4', '100', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '沸点九九宜宾县分店', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '64', '55');
INSERT INTO `t_proxylog` VALUES ('288', '2016-06-30 10:46:37', '4', '100', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '沸点九九宜宾县分店', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '64', '55');
INSERT INTO `t_proxylog` VALUES ('289', '2016-06-30 10:47:11', '4', '100', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '沸点九九宜宾县分店', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '64', '55');
INSERT INTO `t_proxylog` VALUES ('290', '2016-06-30 10:47:28', '4', '100', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '沸点九九宜宾县分店', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '64', '55');
INSERT INTO `t_proxylog` VALUES ('291', '2016-06-30 10:47:34', '4', '100', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '沸点九九宜宾县分店', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '64', '55');
INSERT INTO `t_proxylog` VALUES ('292', '2016-06-30 10:47:41', '4', '100', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '沸点九九宜宾县分店', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '64', '55');
INSERT INTO `t_proxylog` VALUES ('293', '2016-06-30 10:47:50', '4', '100', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '沸点九九宜宾县分店', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '64', '55');
INSERT INTO `t_proxylog` VALUES ('294', '2016-06-30 10:49:30', '4', '100', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '沸点九九宜宾县分店', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '64', '55');
INSERT INTO `t_proxylog` VALUES ('295', '2016-06-30 10:49:34', '4', '100', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '沸点九九宜宾县分店', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '64', '55');
INSERT INTO `t_proxylog` VALUES ('296', '2016-06-30 10:50:42', '4', '20', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '沸点九九宜宾县分店', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '64', '55');
INSERT INTO `t_proxylog` VALUES ('297', '2016-06-30 10:50:44', '1', '20', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '沸点九九宜宾县分店', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '64', '55');
INSERT INTO `t_proxylog` VALUES ('298', '2016-06-30 10:50:46', '4', '20', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '沸点九九宜宾县分店', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '64', '55');
INSERT INTO `t_proxylog` VALUES ('299', '2016-06-30 10:52:15', '4', '20', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '沸点九九宜宾县分店', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '64', '55');
INSERT INTO `t_proxylog` VALUES ('300', '2016-06-30 10:52:17', '1', '20', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '沸点九九宜宾县分店', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '64', '55');
INSERT INTO `t_proxylog` VALUES ('301', '2016-06-30 10:52:19', '4', '20', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '沸点九九宜宾县分店', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '64', '55');
INSERT INTO `t_proxylog` VALUES ('302', '2016-06-30 10:55:08', '4', '20', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '沸点九九宜宾县分店', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '64', '55');
INSERT INTO `t_proxylog` VALUES ('303', '2016-06-30 10:55:30', '1', '20', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '沸点九九宜宾县分店', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '64', '55');
INSERT INTO `t_proxylog` VALUES ('304', '2016-06-30 10:55:33', '4', '20', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '沸点九九宜宾县分店', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '64', '55');
INSERT INTO `t_proxylog` VALUES ('305', '2016-06-30 11:01:43', '4', '20', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '沸点九九宜宾县分店', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '64', '55');
INSERT INTO `t_proxylog` VALUES ('306', '2016-06-30 11:01:45', '1', '20', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '沸点九九宜宾县分店', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '64', '55');
INSERT INTO `t_proxylog` VALUES ('307', '2016-06-30 11:06:53', '1', '20', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '沸点九九宜宾县分店', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '64', '55');
INSERT INTO `t_proxylog` VALUES ('308', '2016-06-30 11:08:07', '1', '100', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '沸点九九宜宾县分店', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '64', '55');
INSERT INTO `t_proxylog` VALUES ('309', '2016-06-30 11:33:48', '1', '10', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '沸点九九宜宾县分店', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '64', '55');
INSERT INTO `t_proxylog` VALUES ('310', '2016-06-30 11:37:11', '4', '100', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '沸点九九宜宾县分店', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '64', '55');
INSERT INTO `t_proxylog` VALUES ('311', '2016-06-30 11:37:25', '0', '200', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '沸点九九宜宾县分店', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '64', '55');
INSERT INTO `t_proxylog` VALUES ('312', '2016-06-30 11:37:36', '3', '200', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '沸点九九宜宾县分店', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '64', '55');
INSERT INTO `t_proxylog` VALUES ('313', '2016-06-30 11:37:41', '0', '200', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '沸点九九宜宾县分店', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '64', '55');
INSERT INTO `t_proxylog` VALUES ('314', '2016-06-30 11:54:49', '4', '100', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '沸点九九宜宾县分店', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '64', '55');
INSERT INTO `t_proxylog` VALUES ('315', '2016-06-30 11:57:56', '4', '100', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '沸点九九宜宾县分店', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '64', '55');
INSERT INTO `t_proxylog` VALUES ('316', '2016-06-30 11:59:36', '4', '100', '/images/bannerImage/bda478c1-4883-40e0-9971-fd0e9c38ca58.jpg', '沸点九九宜宾县分店', '2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货', '64', '55');
INSERT INTO `t_proxylog` VALUES ('317', '2016-06-30 12:02:38', '4', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '64', '51');
INSERT INTO `t_proxylog` VALUES ('318', '2016-06-30 12:03:56', '4', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '64', '51');
INSERT INTO `t_proxylog` VALUES ('319', '2016-06-30 13:13:54', '4', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '64', '51');
INSERT INTO `t_proxylog` VALUES ('320', '2016-06-30 13:14:36', '4', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '64', '51');
INSERT INTO `t_proxylog` VALUES ('321', '2016-06-30 13:16:51', '4', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '64', '51');
INSERT INTO `t_proxylog` VALUES ('322', '2016-06-30 13:18:47', '4', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '64', '51');
INSERT INTO `t_proxylog` VALUES ('323', '2016-06-30 13:22:29', '4', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '64', '51');
INSERT INTO `t_proxylog` VALUES ('324', '2016-06-30 13:24:09', '4', '1000', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '64', '51');
INSERT INTO `t_proxylog` VALUES ('325', '2016-06-30 13:24:12', '4', '1000', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '64', '51');
INSERT INTO `t_proxylog` VALUES ('326', '2016-06-30 13:24:14', '4', '1000', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '64', '51');
INSERT INTO `t_proxylog` VALUES ('327', '2016-06-30 13:24:15', '4', '1000', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '64', '51');
INSERT INTO `t_proxylog` VALUES ('328', '2016-06-30 13:24:19', '4', '1000', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '64', '51');
INSERT INTO `t_proxylog` VALUES ('329', '2016-06-30 13:24:28', '1', '1000', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '64', '51');
INSERT INTO `t_proxylog` VALUES ('330', '2016-06-30 13:24:29', '4', '1000', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '64', '51');
INSERT INTO `t_proxylog` VALUES ('331', '2016-06-30 13:24:31', '1', '1000', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '64', '51');
INSERT INTO `t_proxylog` VALUES ('332', '2016-06-30 13:24:32', '4', '1000', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '64', '51');
INSERT INTO `t_proxylog` VALUES ('333', '2016-06-30 13:24:33', '3', '1000', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '64', '51');
INSERT INTO `t_proxylog` VALUES ('334', '2016-06-30 13:27:16', '4', '1000', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '64', '51');
INSERT INTO `t_proxylog` VALUES ('335', '2016-06-30 13:29:18', '4', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '64', '51');
INSERT INTO `t_proxylog` VALUES ('336', '2016-06-30 13:32:51', '4', '1000', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '64', '51');
INSERT INTO `t_proxylog` VALUES ('337', '2016-06-30 13:34:18', '4', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '64', '51');
INSERT INTO `t_proxylog` VALUES ('338', '2016-06-30 13:37:00', '4', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '64', '51');
INSERT INTO `t_proxylog` VALUES ('339', '2016-06-30 14:03:32', '4', '1', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '64', '51');
INSERT INTO `t_proxylog` VALUES ('340', '2016-06-30 14:05:31', '4', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '64', '51');
INSERT INTO `t_proxylog` VALUES ('341', '2016-06-30 14:06:44', '4', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '64', '51');
INSERT INTO `t_proxylog` VALUES ('342', '2016-06-30 14:07:13', '4', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '64', '51');
INSERT INTO `t_proxylog` VALUES ('343', '2016-06-30 14:19:46', '4', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '64', '51');
INSERT INTO `t_proxylog` VALUES ('344', '2016-06-30 14:23:27', '4', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '64', '51');
INSERT INTO `t_proxylog` VALUES ('345', '2016-06-30 14:25:06', '1', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '64', '51');
INSERT INTO `t_proxylog` VALUES ('346', '2016-06-30 14:25:08', '4', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '64', '51');
INSERT INTO `t_proxylog` VALUES ('347', '2016-06-30 14:25:09', '3', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '64', '51');
INSERT INTO `t_proxylog` VALUES ('348', '2016-06-30 14:33:27', '4', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '63', '51');
INSERT INTO `t_proxylog` VALUES ('349', '2016-06-30 14:33:29', '1', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '63', '51');
INSERT INTO `t_proxylog` VALUES ('350', '2016-06-30 14:33:31', '4', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '63', '51');
INSERT INTO `t_proxylog` VALUES ('351', '2016-06-30 14:33:33', '1', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '63', '51');
INSERT INTO `t_proxylog` VALUES ('352', '2016-06-30 14:33:37', '4', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '63', '51');
INSERT INTO `t_proxylog` VALUES ('353', '2016-06-30 14:33:39', '1', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '63', '51');
INSERT INTO `t_proxylog` VALUES ('354', '2016-06-30 14:33:40', '1', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '63', '51');
INSERT INTO `t_proxylog` VALUES ('355', '2016-06-30 14:33:41', '1', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '63', '51');
INSERT INTO `t_proxylog` VALUES ('356', '2016-06-30 14:33:42', '1', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '63', '51');
INSERT INTO `t_proxylog` VALUES ('357', '2016-06-30 14:33:43', '1', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '63', '51');
INSERT INTO `t_proxylog` VALUES ('358', '2016-06-30 14:33:44', '4', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '63', '51');
INSERT INTO `t_proxylog` VALUES ('359', '2016-06-30 14:33:45', '3', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '63', '51');
INSERT INTO `t_proxylog` VALUES ('360', '2016-06-30 14:33:51', '1', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '63', '51');
INSERT INTO `t_proxylog` VALUES ('361', '2016-06-30 14:33:53', '1', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '63', '51');
INSERT INTO `t_proxylog` VALUES ('362', '2016-06-30 14:33:55', '1', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '63', '51');
INSERT INTO `t_proxylog` VALUES ('363', '2016-06-30 14:33:56', '1', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '63', '51');
INSERT INTO `t_proxylog` VALUES ('364', '2016-06-30 14:35:45', '4', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '63', '51');
INSERT INTO `t_proxylog` VALUES ('365', '2016-06-30 14:35:47', '4', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '63', '51');
INSERT INTO `t_proxylog` VALUES ('366', '2016-06-30 14:45:01', '1', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '63', '51');
INSERT INTO `t_proxylog` VALUES ('367', '2016-06-30 14:49:41', '1', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '63', '51');
INSERT INTO `t_proxylog` VALUES ('368', '2016-06-30 14:53:08', '4', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '63', '51');
INSERT INTO `t_proxylog` VALUES ('369', '2016-06-30 14:53:10', '1', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '63', '51');
INSERT INTO `t_proxylog` VALUES ('370', '2016-06-30 14:53:13', '4', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '63', '51');
INSERT INTO `t_proxylog` VALUES ('371', '2016-06-30 14:57:14', '1', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '63', '51');
INSERT INTO `t_proxylog` VALUES ('372', '2016-06-30 14:57:15', '4', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '63', '51');
INSERT INTO `t_proxylog` VALUES ('373', '2016-06-30 14:57:17', '1', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '63', '51');
INSERT INTO `t_proxylog` VALUES ('374', '2016-06-30 14:57:19', '4', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '63', '51');
INSERT INTO `t_proxylog` VALUES ('375', '2016-06-30 14:57:21', '1', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '63', '51');
INSERT INTO `t_proxylog` VALUES ('376', '2016-06-30 14:58:39', '1', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '63', '51');
INSERT INTO `t_proxylog` VALUES ('377', '2016-06-30 15:07:55', '1', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '63', '51');
INSERT INTO `t_proxylog` VALUES ('378', '2016-06-30 15:08:35', '1', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '63', '51');
INSERT INTO `t_proxylog` VALUES ('379', '2016-06-30 15:10:59', '4', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '63', '51');
INSERT INTO `t_proxylog` VALUES ('380', '2016-06-30 15:13:11', '4', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '63', '51');
INSERT INTO `t_proxylog` VALUES ('381', '2016-06-30 15:13:12', '1', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '63', '51');
INSERT INTO `t_proxylog` VALUES ('382', '2016-06-30 15:13:13', '4', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '63', '51');
INSERT INTO `t_proxylog` VALUES ('383', '2016-06-30 15:13:15', '1', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '63', '51');
INSERT INTO `t_proxylog` VALUES ('384', '2016-06-30 15:13:15', '4', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '63', '51');
INSERT INTO `t_proxylog` VALUES ('385', '2016-06-30 15:13:16', '1', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '63', '51');
INSERT INTO `t_proxylog` VALUES ('386', '2016-06-30 15:13:17', '1', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '63', '51');
INSERT INTO `t_proxylog` VALUES ('387', '2016-06-30 15:13:18', '4', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '63', '51');
INSERT INTO `t_proxylog` VALUES ('388', '2016-06-30 15:13:19', '4', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '63', '51');
INSERT INTO `t_proxylog` VALUES ('389', '2016-06-30 15:21:35', '4', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '71', '51');
INSERT INTO `t_proxylog` VALUES ('390', '2016-06-30 15:21:39', '1', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '71', '51');
INSERT INTO `t_proxylog` VALUES ('391', '2016-06-30 15:21:43', '4', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '71', '51');
INSERT INTO `t_proxylog` VALUES ('392', '2016-06-30 15:21:46', '4', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '71', '51');
INSERT INTO `t_proxylog` VALUES ('393', '2016-06-30 15:23:25', '4', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '71', '51');
INSERT INTO `t_proxylog` VALUES ('394', '2016-06-30 15:23:28', '1', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '71', '51');
INSERT INTO `t_proxylog` VALUES ('395', '2016-06-30 15:23:32', '4', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '71', '51');
INSERT INTO `t_proxylog` VALUES ('396', '2016-06-30 15:25:00', '3', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '71', '51');
INSERT INTO `t_proxylog` VALUES ('397', '2016-06-30 15:25:16', '4', '200', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '71', '51');
INSERT INTO `t_proxylog` VALUES ('398', '2016-06-30 15:25:18', '1', '200', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '71', '51');
INSERT INTO `t_proxylog` VALUES ('399', '2016-06-30 15:25:20', '4', '200', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '71', '51');
INSERT INTO `t_proxylog` VALUES ('400', '2016-06-30 15:28:21', '1', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '71', '51');
INSERT INTO `t_proxylog` VALUES ('401', '2016-06-30 15:28:44', '4', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '71', '51');
INSERT INTO `t_proxylog` VALUES ('402', '2016-06-30 15:28:50', '4', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '71', '51');
INSERT INTO `t_proxylog` VALUES ('403', '2016-06-30 15:28:56', '4', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '71', '51');
INSERT INTO `t_proxylog` VALUES ('404', '2016-06-30 15:28:59', '4', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '71', '51');
INSERT INTO `t_proxylog` VALUES ('405', '2016-06-30 15:29:20', '4', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '71', '51');
INSERT INTO `t_proxylog` VALUES ('406', '2016-06-30 15:29:33', '4', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '71', '51');
INSERT INTO `t_proxylog` VALUES ('407', '2016-06-30 15:29:40', '4', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '71', '51');
INSERT INTO `t_proxylog` VALUES ('408', '2016-06-30 15:29:46', '4', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '71', '51');
INSERT INTO `t_proxylog` VALUES ('409', '2016-06-30 15:33:05', '4', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '71', '51');
INSERT INTO `t_proxylog` VALUES ('410', '2016-06-30 15:33:11', '4', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '71', '51');
INSERT INTO `t_proxylog` VALUES ('411', '2016-06-30 15:38:43', '4', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '71', '51');
INSERT INTO `t_proxylog` VALUES ('412', '2016-06-30 15:39:09', '4', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '71', '51');
INSERT INTO `t_proxylog` VALUES ('413', '2016-06-30 15:44:43', '4', '140', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '71', '51');
INSERT INTO `t_proxylog` VALUES ('414', '2016-06-30 15:47:31', '4', '1000', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '71', '51');
INSERT INTO `t_proxylog` VALUES ('415', '2016-06-30 15:47:33', '1', '1000', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '71', '51');
INSERT INTO `t_proxylog` VALUES ('416', '2016-06-30 15:47:35', '4', '1000', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '71', '51');
INSERT INTO `t_proxylog` VALUES ('417', '2016-06-30 15:47:36', '1', '1000', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '71', '51');
INSERT INTO `t_proxylog` VALUES ('418', '2016-06-30 15:47:37', '2', '1000', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '71', '51');
INSERT INTO `t_proxylog` VALUES ('419', '2016-06-30 15:47:50', '0', '1000', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '71', '51');
INSERT INTO `t_proxylog` VALUES ('420', '2016-06-30 15:47:55', '4', '1000', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '71', '51');
INSERT INTO `t_proxylog` VALUES ('421', '2016-06-30 15:49:03', '1', '423', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '71', '51');
INSERT INTO `t_proxylog` VALUES ('422', '2016-06-30 15:49:06', '4', '423', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '71', '51');
INSERT INTO `t_proxylog` VALUES ('423', '2016-06-30 15:54:17', '4', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '63', '51');
INSERT INTO `t_proxylog` VALUES ('424', '2016-06-30 15:54:19', '1', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '63', '51');
INSERT INTO `t_proxylog` VALUES ('425', '2016-06-30 15:54:22', '4', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '63', '51');
INSERT INTO `t_proxylog` VALUES ('426', '2016-06-30 15:54:23', '1', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '63', '51');
INSERT INTO `t_proxylog` VALUES ('427', '2016-06-30 15:54:25', '4', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '63', '51');
INSERT INTO `t_proxylog` VALUES ('428', '2016-06-30 15:54:27', '2', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '63', '51');
INSERT INTO `t_proxylog` VALUES ('429', '2016-06-30 15:54:35', '0', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '63', '51');
INSERT INTO `t_proxylog` VALUES ('430', '2016-06-30 15:54:39', '1', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '63', '51');
INSERT INTO `t_proxylog` VALUES ('431', '2016-06-30 15:55:45', '1', '100', '/images/bannerImage/360a9882-e7d3-48ca-ae07-6dfda0cd2847.jpg', '我们都是一', '有时候也会是个有梦想和未来会很大一部分', '63', '56');
INSERT INTO `t_proxylog` VALUES ('432', '2016-06-30 15:55:47', '4', '100', '/images/bannerImage/360a9882-e7d3-48ca-ae07-6dfda0cd2847.jpg', '我们都是一', '有时候也会是个有梦想和未来会很大一部分', '63', '56');
INSERT INTO `t_proxylog` VALUES ('433', '2016-06-30 15:55:48', '4', '100', '/images/bannerImage/360a9882-e7d3-48ca-ae07-6dfda0cd2847.jpg', '我们都是一', '有时候也会是个有梦想和未来会很大一部分', '63', '56');
INSERT INTO `t_proxylog` VALUES ('434', '2016-06-30 15:57:42', '4', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '63', '51');
INSERT INTO `t_proxylog` VALUES ('435', '2016-06-30 15:57:44', '1', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '63', '51');
INSERT INTO `t_proxylog` VALUES ('436', '2016-06-30 16:02:11', '1', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '63', '51');
INSERT INTO `t_proxylog` VALUES ('437', '2016-06-30 16:02:15', '4', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '63', '51');
INSERT INTO `t_proxylog` VALUES ('438', '2016-06-30 16:07:30', '1', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '63', '51');
INSERT INTO `t_proxylog` VALUES ('439', '2016-06-30 16:07:33', '3', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '63', '51');
INSERT INTO `t_proxylog` VALUES ('440', '2016-06-30 16:07:41', '1', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '63', '51');
INSERT INTO `t_proxylog` VALUES ('441', '2016-06-30 16:08:50', '4', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '63', '51');
INSERT INTO `t_proxylog` VALUES ('442', '2016-06-30 16:10:09', '4', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '63', '51');
INSERT INTO `t_proxylog` VALUES ('443', '2016-06-30 16:11:12', '4', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '63', '51');
INSERT INTO `t_proxylog` VALUES ('444', '2016-06-30 16:12:31', '4', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '63', '51');
INSERT INTO `t_proxylog` VALUES ('445', '2016-06-30 16:13:41', '4', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '63', '51');
INSERT INTO `t_proxylog` VALUES ('446', '2016-06-30 16:13:58', '4', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '63', '51');
INSERT INTO `t_proxylog` VALUES ('447', '2016-06-30 16:21:33', '4', '100', '/images/bannerImage/05895477-6dcb-4cf6-ad87-679e3c8e5a95.jpg', '微貨通', '更好看，更时尚', '63', '51');
INSERT INTO `t_proxylog` VALUES ('448', '2016-06-30 16:27:02', '4', '100', '/images/bannerImage/e921005d-1de2-4ac9-befd-5a04797b3099.jpg', '沸点九九宜宾县分店', '女神服装', '63', '63');
INSERT INTO `t_proxylog` VALUES ('449', '2016-06-30 16:27:05', '1', '100', '/images/bannerImage/e921005d-1de2-4ac9-befd-5a04797b3099.jpg', '沸点九九宜宾县分店', '女神服装', '63', '63');
INSERT INTO `t_proxylog` VALUES ('450', '2016-06-30 16:27:11', '4', '100', '/images/bannerImage/e921005d-1de2-4ac9-befd-5a04797b3099.jpg', '沸点九九宜宾县分店', '女神服装', '63', '63');
INSERT INTO `t_proxylog` VALUES ('451', '2016-06-30 16:27:20', '4', '100', '/images/bannerImage/e921005d-1de2-4ac9-befd-5a04797b3099.jpg', '沸点九九宜宾县分店', '女神服装', '63', '63');
INSERT INTO `t_proxylog` VALUES ('452', '2016-06-30 16:28:34', '4', '100', '/images/bannerImage/e921005d-1de2-4ac9-befd-5a04797b3099.jpg', '沸点九九宜宾县分店', '女神服装', '63', '63');
INSERT INTO `t_proxylog` VALUES ('453', '2016-06-30 16:28:39', '4', '100', '/images/bannerImage/e921005d-1de2-4ac9-befd-5a04797b3099.jpg', '沸点九九宜宾县分店', '女神服装', '63', '63');
INSERT INTO `t_proxylog` VALUES ('454', '2016-06-30 16:34:37', '4', '100', '/images/bannerImage/a4dda6d3-843c-4541-bda9-fa274c23ccff.jpg', '沸点九九遵义分店', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空,2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货,http://211.149.241.17:8888/proxy/enterProxyGoods?proxyGoodsId=199', '63', '62');
INSERT INTO `t_proxylog` VALUES ('455', '2016-06-30 16:45:33', '1', '100', '/images/bannerImage/a4dda6d3-843c-4541-bda9-fa274c23ccff.jpg', '沸点九九遵义分店', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空,2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货,http://211.149.241.17:8888/proxy/enterProxyGoods?proxyGoodsId=199', '63', '62');
INSERT INTO `t_proxylog` VALUES ('456', '2016-06-30 16:45:40', '4', '100', '/images/bannerImage/a4dda6d3-843c-4541-bda9-fa274c23ccff.jpg', '沸点九九遵义分店', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空,2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货,http://211.149.241.17:8888/proxy/enterProxyGoods?proxyGoodsId=199', '63', '62');
INSERT INTO `t_proxylog` VALUES ('457', '2016-06-30 16:45:45', '4', '100', '/images/bannerImage/a4dda6d3-843c-4541-bda9-fa274c23ccff.jpg', '沸点九九遵义分店', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空,2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货,http://211.149.241.17:8888/proxy/enterProxyGoods?proxyGoodsId=199', '63', '62');
INSERT INTO `t_proxylog` VALUES ('458', '2016-06-30 16:45:51', '4', '100', '/images/bannerImage/a4dda6d3-843c-4541-bda9-fa274c23ccff.jpg', '沸点九九遵义分店', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空,2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货,http://211.149.241.17:8888/proxy/enterProxyGoods?proxyGoodsId=199', '63', '62');
INSERT INTO `t_proxylog` VALUES ('459', '2016-06-30 16:45:53', '4', '100', '/images/bannerImage/a4dda6d3-843c-4541-bda9-fa274c23ccff.jpg', '沸点九九遵义分店', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空,2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货,http://211.149.241.17:8888/proxy/enterProxyGoods?proxyGoodsId=199', '63', '62');
INSERT INTO `t_proxylog` VALUES ('460', '2016-06-30 16:47:10', '4', '100', '/images/bannerImage/a4dda6d3-843c-4541-bda9-fa274c23ccff.jpg', '沸点九九遵义分店', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空,2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货,http://211.149.241.17:8888/proxy/enterProxyGoods?proxyGoodsId=199', '63', '62');
INSERT INTO `t_proxylog` VALUES ('461', '2016-06-30 16:47:34', '4', '100', '/images/bannerImage/a4dda6d3-843c-4541-bda9-fa274c23ccff.jpg', '沸点九九遵义分店', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空,2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货,http://211.149.241.17:8888/proxy/enterProxyGoods?proxyGoodsId=199', '63', '62');
INSERT INTO `t_proxylog` VALUES ('462', '2016-06-30 16:49:59', '4', '100', '/images/bannerImage/a4dda6d3-843c-4541-bda9-fa274c23ccff.jpg', '沸点九九遵义分店', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空,2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货,http://211.149.241.17:8888/proxy/enterProxyGoods?proxyGoodsId=199', '63', '62');
INSERT INTO `t_proxylog` VALUES ('463', '2016-06-30 17:13:13', '0', '200', '/images/bannerImage/a4dda6d3-843c-4541-bda9-fa274c23ccff.jpg', '沸点九九遵义分店', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空,2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货,http://211.149.241.17:8888/proxy/enterProxyGoods?proxyGoodsId=199', '63', '62');
INSERT INTO `t_proxylog` VALUES ('464', '2016-06-30 17:13:15', '0', '200', '/images/bannerImage/a4dda6d3-843c-4541-bda9-fa274c23ccff.jpg', '沸点九九遵义分店', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空,2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货,http://211.149.241.17:8888/proxy/enterProxyGoods?proxyGoodsId=199', '63', '62');
INSERT INTO `t_proxylog` VALUES ('465', '2016-06-30 17:13:58', '4', '200', '/images/bannerImage/a4dda6d3-843c-4541-bda9-fa274c23ccff.jpg', '沸点九九遵义分店', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空,2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货,http://211.149.241.17:8888/proxy/enterProxyGoods?proxyGoodsId=199', '63', '62');
INSERT INTO `t_proxylog` VALUES ('466', '2016-06-30 17:51:58', '4', '100', '/images/bannerImage/a4dda6d3-843c-4541-bda9-fa274c23ccff.jpg', '沸点九九遵义分店', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空,2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货,http://211.149.241.17:8888/proxy/enterProxyGoods?proxyGoodsId=199', '63', '62');
INSERT INTO `t_proxylog` VALUES ('467', '2016-07-01 16:47:12', '4', '100', '/images/bannerImage/e921005d-1de2-4ac9-befd-5a04797b3099.jpg', '沸点九九宜宾县分店', '女神服装', '67', '63');
INSERT INTO `t_proxylog` VALUES ('468', '2016-07-01 19:48:39', '0', '150', '/images/bannerImage/cf14172b-5d0c-44fd-ac80-787a8ea4d2fb.jpg', '微貨通', '更好看，更时尚', '62', '51');
INSERT INTO `t_proxylog` VALUES ('469', '2016-07-01 19:48:42', '4', '150', '/images/bannerImage/cf14172b-5d0c-44fd-ac80-787a8ea4d2fb.jpg', '微貨通', '更好看，更时尚', '62', '51');
INSERT INTO `t_proxylog` VALUES ('470', '2016-07-01 19:48:44', '4', '150', '/images/bannerImage/cf14172b-5d0c-44fd-ac80-787a8ea4d2fb.jpg', '微貨通', '更好看，更时尚', '62', '51');
INSERT INTO `t_proxylog` VALUES ('471', '2016-07-01 19:48:46', '4', '150', '/images/bannerImage/cf14172b-5d0c-44fd-ac80-787a8ea4d2fb.jpg', '微貨通', '更好看，更时尚', '62', '51');
INSERT INTO `t_proxylog` VALUES ('472', '2016-07-01 19:48:48', '3', '150', '/images/bannerImage/cf14172b-5d0c-44fd-ac80-787a8ea4d2fb.jpg', '微貨通', '更好看，更时尚', '62', '51');
INSERT INTO `t_proxylog` VALUES ('473', '2016-07-01 19:56:10', '4', '300', '/images/bannerImage/360a9882-e7d3-48ca-ae07-6dfda0cd2847.jpg', '我们都是一', '有时候也会是个有梦想和未来会很大一部分', '62', '56');
INSERT INTO `t_proxylog` VALUES ('474', '2016-07-01 19:56:40', '4', '300', '/images/bannerImage/360a9882-e7d3-48ca-ae07-6dfda0cd2847.jpg', '我们都是一', '有时候也会是个有梦想和未来会很大一部分', '62', '56');
INSERT INTO `t_proxylog` VALUES ('475', '2016-07-01 19:56:49', '4', '300', '/images/bannerImage/360a9882-e7d3-48ca-ae07-6dfda0cd2847.jpg', '我们都是一', '有时候也会是个有梦想和未来会很大一部分', '62', '56');
INSERT INTO `t_proxylog` VALUES ('476', '2016-07-01 19:56:52', '0', '300', '/images/bannerImage/360a9882-e7d3-48ca-ae07-6dfda0cd2847.jpg', '我们都是一', '有时候也会是个有梦想和未来会很大一部分', '62', '56');
INSERT INTO `t_proxylog` VALUES ('477', '2016-07-01 20:59:49', '4', '200', '/images/bannerImage/cf14172b-5d0c-44fd-ac80-787a8ea4d2fb.jpg', '微貨通', '更好看，更时尚', '62', '51');
INSERT INTO `t_proxylog` VALUES ('478', '2016-07-01 21:00:16', '4', '200', '/images/bannerImage/cf14172b-5d0c-44fd-ac80-787a8ea4d2fb.jpg', '微貨通', '更好看，更时尚', '62', '51');
INSERT INTO `t_proxylog` VALUES ('479', '2016-07-01 21:00:20', '0', '200', '/images/bannerImage/cf14172b-5d0c-44fd-ac80-787a8ea4d2fb.jpg', '微貨通', '更好看，更时尚', '62', '51');
INSERT INTO `t_proxylog` VALUES ('480', '2016-07-01 21:09:24', '4', '140', '/images/bannerImage/c4491494-ead0-43de-b065-40ccb7c6178f.jpg', '薛大大', '【品牌】：精品女装\n【价格】：￥140.00\n【时间】：2016-07-01\n【介绍】：(包邮）2016夏装新款时尚无袖双排扣上衣+短裤 配腰带\r\nM-L 蓝色 白色', '62', '66');
INSERT INTO `t_proxylog` VALUES ('481', '2016-07-01 21:09:51', '0', '140', '/images/bannerImage/c4491494-ead0-43de-b065-40ccb7c6178f.jpg', '薛大大', '【品牌】：精品女装\n【价格】：￥140.00\n【时间】：2016-07-01\n【介绍】：(包邮）2016夏装新款时尚无袖双排扣上衣+短裤 配腰带\r\nM-L 蓝色 白色', '62', '66');
INSERT INTO `t_proxylog` VALUES ('482', '2016-07-01 21:09:59', '3', '140', '/images/bannerImage/c4491494-ead0-43de-b065-40ccb7c6178f.jpg', '薛大大', '【品牌】：精品女装\n【价格】：￥140.00\n【时间】：2016-07-01\n【介绍】：(包邮）2016夏装新款时尚无袖双排扣上衣+短裤 配腰带\r\nM-L 蓝色 白色', '62', '66');
INSERT INTO `t_proxylog` VALUES ('483', '2016-07-01 21:10:13', '0', '140', '/images/bannerImage/c4491494-ead0-43de-b065-40ccb7c6178f.jpg', '薛大大', '【品牌】：精品女装\n【价格】：￥140.00\n【时间】：2016-07-01\n【介绍】：(包邮）2016夏装新款时尚无袖双排扣上衣+短裤 配腰带\r\nM-L 蓝色 白色', '62', '66');
INSERT INTO `t_proxylog` VALUES ('484', '2016-07-01 21:11:48', '1', '140', '/images/bannerImage/c4491494-ead0-43de-b065-40ccb7c6178f.jpg', '薛大大', '【品牌】：精品女装\n【价格】：￥140.00\n【时间】：2016-07-01\n【介绍】：(包邮）2016夏装新款时尚无袖双排扣上衣+短裤 配腰带\r\nM-L 蓝色 白色', '62', '66');
INSERT INTO `t_proxylog` VALUES ('485', '2016-07-01 21:11:59', '2', '140', '/images/bannerImage/c4491494-ead0-43de-b065-40ccb7c6178f.jpg', '薛大大', '【品牌】：精品女装\n【价格】：￥140.00\n【时间】：2016-07-01\n【介绍】：(包邮）2016夏装新款时尚无袖双排扣上衣+短裤 配腰带\r\nM-L 蓝色 白色', '62', '66');
INSERT INTO `t_proxylog` VALUES ('486', '2016-07-01 21:12:09', '4', '140', '/images/bannerImage/c4491494-ead0-43de-b065-40ccb7c6178f.jpg', '薛大大', '【品牌】：精品女装\n【价格】：￥140.00\n【时间】：2016-07-01\n【介绍】：(包邮）2016夏装新款时尚无袖双排扣上衣+短裤 配腰带\r\nM-L 蓝色 白色', '62', '66');
INSERT INTO `t_proxylog` VALUES ('487', '2016-07-01 21:12:16', '3', '140', '/images/bannerImage/c4491494-ead0-43de-b065-40ccb7c6178f.jpg', '薛大大', '【品牌】：精品女装\n【价格】：￥140.00\n【时间】：2016-07-01\n【介绍】：(包邮）2016夏装新款时尚无袖双排扣上衣+短裤 配腰带\r\nM-L 蓝色 白色', '62', '66');
INSERT INTO `t_proxylog` VALUES ('488', '2016-07-01 21:12:23', '0', '140', '/images/bannerImage/c4491494-ead0-43de-b065-40ccb7c6178f.jpg', '薛大大', '【品牌】：精品女装\n【价格】：￥140.00\n【时间】：2016-07-01\n【介绍】：(包邮）2016夏装新款时尚无袖双排扣上衣+短裤 配腰带\r\nM-L 蓝色 白色', '62', '66');
INSERT INTO `t_proxylog` VALUES ('489', '2016-07-01 21:17:35', '4', '300', '/images/bannerImage/c4491494-ead0-43de-b065-40ccb7c6178f.jpg', '薛大大', '【品牌】：精品女装\n【价格】：￥140.00\n【时间】：2016-07-01\n【介绍】：(包邮）2016夏装新款时尚无袖双排扣上衣+短裤 配腰带\r\nM-L 蓝色 白色', '62', '66');
INSERT INTO `t_proxylog` VALUES ('490', '2016-07-01 21:18:11', '0', '300', '/images/bannerImage/c4491494-ead0-43de-b065-40ccb7c6178f.jpg', '薛大大', '【品牌】：精品女装\n【价格】：￥140.00\n【时间】：2016-07-01\n【介绍】：(包邮）2016夏装新款时尚无袖双排扣上衣+短裤 配腰带\r\nM-L 蓝色 白色', '62', '66');
INSERT INTO `t_proxylog` VALUES ('491', '2016-07-01 21:22:28', '4', '300', '/images/bannerImage/c4491494-ead0-43de-b065-40ccb7c6178f.jpg', '薛大大', '【品牌】：精品女装\n【价格】：￥140.00\n【时间】：2016-07-01\n【介绍】：(包邮）2016夏装新款时尚无袖双排扣上衣+短裤 配腰带\r\nM-L 蓝色 白色', '62', '66');
INSERT INTO `t_proxylog` VALUES ('492', '2016-07-01 21:29:59', '4', '150', '/images/bannerImage/e921005d-1de2-4ac9-befd-5a04797b3099.jpg', '沸点九九宜宾县分店', '，', '62', '63');
INSERT INTO `t_proxylog` VALUES ('493', '2016-07-01 21:30:11', '4', '150', '/images/bannerImage/e921005d-1de2-4ac9-befd-5a04797b3099.jpg', '沸点九九宜宾县分店', '，', '62', '63');
INSERT INTO `t_proxylog` VALUES ('494', '2016-07-01 21:30:26', '4', '150', '/images/bannerImage/e921005d-1de2-4ac9-befd-5a04797b3099.jpg', '沸点九九宜宾县分店', '女神服装', '62', '63');
INSERT INTO `t_proxylog` VALUES ('495', '2016-07-01 21:30:50', '4', '16666', '/images/bannerImage/e921005d-1de2-4ac9-befd-5a04797b3099.jpg', '沸点九九宜宾县分店', '女神服装', '62', '63');
INSERT INTO `t_proxylog` VALUES ('496', '2016-07-01 21:31:13', '0', '555', '/images/bannerImage/e921005d-1de2-4ac9-befd-5a04797b3099.jpg', '沸点九九宜宾县分店', '女神服装', '62', '63');
INSERT INTO `t_proxylog` VALUES ('497', '2016-07-01 21:34:27', '4', '555', '/images/bannerImage/8236ce67-2f8f-4a1b-8c26-824cc47cdb6a.gif', '微貨通', '哈哈哈', '62', '65');
INSERT INTO `t_proxylog` VALUES ('498', '2016-07-01 21:34:33', '4', '555', '/images/bannerImage/8236ce67-2f8f-4a1b-8c26-824cc47cdb6a.gif', '微貨通', '哈哈哈', '62', '65');
INSERT INTO `t_proxylog` VALUES ('499', '2016-07-02 06:34:55', '2', '300', '/images/bannerImage/b2626b45-964d-48b7-824b-5a4d43f7e99f.jpg', '薛大大', '微货通1688测试，此商品不卖的哦。', '62', '67');
INSERT INTO `t_proxylog` VALUES ('500', '2016-07-02 06:35:51', '4', '300', '/images/bannerImage/b2626b45-964d-48b7-824b-5a4d43f7e99f.jpg', '薛大大', '微货通1688测试，此商品不卖的哦。', '62', '67');
INSERT INTO `t_proxylog` VALUES ('501', '2016-07-02 06:36:13', '0', '300', '/images/bannerImage/b2626b45-964d-48b7-824b-5a4d43f7e99f.jpg', '薛大大', '微货通1688测试，此商品不卖的哦。', '62', '67');
INSERT INTO `t_proxylog` VALUES ('502', '2016-07-02 06:53:19', '4', '300', '/images/bannerImage/b2626b45-964d-48b7-824b-5a4d43f7e99f.jpg', '薛大大', '微货通1688测试，此商品不卖的哦。', '62', '67');
INSERT INTO `t_proxylog` VALUES ('503', '2016-07-02 15:46:23', '4', '300', '/images/bannerImage/b2626b45-964d-48b7-824b-5a4d43f7e99f.jpg', '薛大大', '微货通1688测试，此商品不卖的哦。', '62', '67');
INSERT INTO `t_proxylog` VALUES ('504', '2016-07-03 10:08:36', '1', '300', '/images/bannerImage/b2626b45-964d-48b7-824b-5a4d43f7e99f.jpg', '薛大大', '微货通1688测试，此商品不卖的哦。', '62', '67');
INSERT INTO `t_proxylog` VALUES ('505', '2016-07-03 10:26:24', '1', '15', '/images/bannerImage/e921005d-1de2-4ac9-befd-5a04797b3099.jpg', '沸点九九宜宾县分店', '女神服装', '62', '63');
INSERT INTO `t_proxylog` VALUES ('506', '2016-07-03 10:28:14', '1', '15', '/images/bannerImage/e921005d-1de2-4ac9-befd-5a04797b3099.jpg', '沸点九九宜宾县分店', '女神服装', '62', '63');
INSERT INTO `t_proxylog` VALUES ('507', '2016-07-03 10:28:24', '1', '15', '/images/bannerImage/e921005d-1de2-4ac9-befd-5a04797b3099.jpg', '沸点九九宜宾县分店', '女神服装', '62', '63');
INSERT INTO `t_proxylog` VALUES ('508', '2016-07-03 10:28:30', '1', '15', '/images/bannerImage/e921005d-1de2-4ac9-befd-5a04797b3099.jpg', '沸点九九宜宾县分店', '女神服装', '62', '63');
INSERT INTO `t_proxylog` VALUES ('509', '2016-07-03 10:28:44', '1', '15', '/images/bannerImage/e921005d-1de2-4ac9-befd-5a04797b3099.jpg', '沸点九九宜宾县分店', '女神服装', '62', '63');
INSERT INTO `t_proxylog` VALUES ('510', '2016-07-03 10:30:10', '1', '15', '/images/bannerImage/e921005d-1de2-4ac9-befd-5a04797b3099.jpg', '沸点九九宜宾县分店', '女神服装', '62', '63');
INSERT INTO `t_proxylog` VALUES ('511', '2016-07-03 10:30:15', '1', '15', '/images/bannerImage/e921005d-1de2-4ac9-befd-5a04797b3099.jpg', '沸点九九宜宾县分店', '女神服装', '62', '63');
INSERT INTO `t_proxylog` VALUES ('512', '2016-07-03 15:13:24', '1', '5', '/images/bannerImage/a4dda6d3-843c-4541-bda9-fa274c23ccff.jpg', '沸点九九遵义分店', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空,2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货,http://211.149.241.17:8888/proxy/enterProxyGoods?proxyGoodsId=199', '62', '62');
INSERT INTO `t_proxylog` VALUES ('513', '2016-07-03 15:14:27', '1', '5', '/images/bannerImage/a4dda6d3-843c-4541-bda9-fa274c23ccff.jpg', '沸点九九遵义分店', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空,2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货,http://211.149.241.17:8888/proxy/enterProxyGoods?proxyGoodsId=199', '62', '62');
INSERT INTO `t_proxylog` VALUES ('514', '2016-07-03 15:14:36', '1', '50', '/images/bannerImage/a4dda6d3-843c-4541-bda9-fa274c23ccff.jpg', '沸点九九遵义分店', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空,2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货,http://211.149.241.17:8888/proxy/enterProxyGoods?proxyGoodsId=199', '62', '62');
INSERT INTO `t_proxylog` VALUES ('515', '2016-07-03 15:18:10', '1', '50', '/images/bannerImage/a4dda6d3-843c-4541-bda9-fa274c23ccff.jpg', '沸点九九遵义分店', '抠门兔2016夏新款女装贴布图案韩版休闲白色短袖T恤背部烂洞镂空,2016年本季最爆的T恤之一！经典的背部规则破洞洋气镂空设计是这款T恤的亮点之一！休闲大版，穿着随意轻松惬意！纯棉加莱卡，舒适透气吸汗弹性好！占据前衣大部分面积的大贴布图案，既立体又时尚，是这款T恤的又一亮点！配上适宜的小蝙蝠袖，100%的经典款啊！新店赚人气工厂价亏本直销！都有货请直接下单次日发货,http://211.149.241.17:8888/proxy/enterProxyGoods?proxyGoodsId=199', '62', '62');
INSERT INTO `t_proxylog` VALUES ('516', '2016-07-03 15:19:17', '1', '300', '/images/bannerImage/b2626b45-964d-48b7-824b-5a4d43f7e99f.jpg', '薛大大', '微货通1688测试，此商品不卖的哦。', '62', '67');
INSERT INTO `t_proxylog` VALUES ('517', '2016-07-03 15:19:35', '1', '300', '/images/bannerImage/b2626b45-964d-48b7-824b-5a4d43f7e99f.jpg', '薛大大', '微货通1688测试，此商品不卖的哦。', '62', '67');
INSERT INTO `t_proxylog` VALUES ('518', '2016-07-03 15:20:58', '1', '300', '/images/bannerImage/b2626b45-964d-48b7-824b-5a4d43f7e99f.jpg', '薛大大', '微货通1688测试，此商品不卖的哦。', '62', '67');
INSERT INTO `t_proxylog` VALUES ('519', '2016-07-03 15:27:07', '4', '500', '/images/bannerImage/b2626b45-964d-48b7-824b-5a4d43f7e99f.jpg', '薛大大', '微货通1688测试，此商品不卖的哦。', '62', '67');
INSERT INTO `t_proxylog` VALUES ('520', '2016-07-03 15:27:41', '4', '500', '/images/bannerImage/b2626b45-964d-48b7-824b-5a4d43f7e99f.jpg', '薛大大', '微货通1688测试，此商品不卖的哦。', '62', '67');
INSERT INTO `t_proxylog` VALUES ('521', '2016-07-03 18:21:40', '4', '128', '/images/bannerImage/ff8d134e-1e4d-4eab-bf2d-63252788f57b.jpg', '薛大大', '微货通1688测试，此商品不卖的哦。', '62', '67');
INSERT INTO `t_proxylog` VALUES ('522', '2016-07-03 18:21:47', '4', '128', '/images/bannerImage/ff8d134e-1e4d-4eab-bf2d-63252788f57b.jpg', '薛大大', '微货通1688测试，此商品不卖的哦。', '62', '67');
INSERT INTO `t_proxylog` VALUES ('523', '2016-07-03 18:25:33', '4', '90', '/images/bannerImage/5c547285-0081-4db4-94b4-cee546224c6c.jpg', '薛大大', '【品牌】：精品女装\n【价格】：￥90.00\n【时间】：2016-07-02\n【介绍】：(包邮）2016夏装新款时尚中长款套装裙两件套\nS-2XL 红色 白色 雪纺', '62', '68');
INSERT INTO `t_proxylog` VALUES ('524', '2016-07-04 14:53:32', '4', '90', '/images/bannerImage/5c547285-0081-4db4-94b4-cee546224c6c.jpg', '???', '?????????\n??????90.00\n?????2016-07-02\n?????(???2016???????????????\nS-2XL ?? ?? ??', '62', '68');
INSERT INTO `t_proxylog` VALUES ('525', '2016-07-04 15:04:23', '4', '105', '/images/bannerImage/f6622086-dd2e-4720-84c8-964b75af1582.jpg', '?????????', '???', '67', '70');
INSERT INTO `t_proxylog` VALUES ('526', '2016-07-04 15:04:30', '0', '105', '/images/bannerImage/f6622086-dd2e-4720-84c8-964b75af1582.jpg', '?????????', '???', '67', '70');
INSERT INTO `t_proxylog` VALUES ('527', '2016-07-04 15:04:44', '4', '105', '/images/bannerImage/f6622086-dd2e-4720-84c8-964b75af1582.jpg', '?????????', '???', '67', '70');

-- ----------------------------
-- Table structure for t_proxyorder
-- ----------------------------
DROP TABLE IF EXISTS `t_proxyorder`;
CREATE TABLE `t_proxyorder` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `buyTime` datetime NOT NULL,
  `orderNum` varchar(255) NOT NULL,
  `proxyPrice` decimal(10,0) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `store_id` bigint(20) DEFAULT NULL,
  `productOrderNum` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_proxyorder
-- ----------------------------

-- ----------------------------
-- Table structure for t_recommendation
-- ----------------------------
DROP TABLE IF EXISTS `t_recommendation`;
CREATE TABLE `t_recommendation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `contact` varchar(255) DEFAULT NULL,
  `content` varchar(255) NOT NULL,
  `time` datetime NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `recommendationType_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_recommendation
-- ----------------------------
INSERT INTO `t_recommendation` VALUES ('6', '33', '	如果设置为 true，当用户点击某一行时，则会选中/取消选中复选框。如果设置为 false 时，只有当用户点击了复选框时，才会选中/取消选中复选框。\r\n该属性自版本 1.3 起可用。', '2016-06-27 15:23:16', '68', '1');

-- ----------------------------
-- Table structure for t_recommendationtype
-- ----------------------------
DROP TABLE IF EXISTS `t_recommendationtype`;
CREATE TABLE `t_recommendationtype` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_recommendationtype
-- ----------------------------
INSERT INTO `t_recommendationtype` VALUES ('1', 'APP软件问题');

-- ----------------------------
-- Table structure for t_resource
-- ----------------------------
DROP TABLE IF EXISTS `t_resource`;
CREATE TABLE `t_resource` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=217 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_resource
-- ----------------------------
INSERT INTO `t_resource` VALUES ('4', 'com.huashidai.weihuotong.app.ArticleAPP:addArticle');
INSERT INTO `t_resource` VALUES ('6', 'com.huashidai.weihuotong.app.ArticleAPP:articleComment');
INSERT INTO `t_resource` VALUES ('1', 'com.huashidai.weihuotong.app.ArticleAPP:articleType');
INSERT INTO `t_resource` VALUES ('3', 'com.huashidai.weihuotong.app.ArticleAPP:enterArticle');
INSERT INTO `t_resource` VALUES ('2', 'com.huashidai.weihuotong.app.ArticleAPP:queryArticle');
INSERT INTO `t_resource` VALUES ('5', 'com.huashidai.weihuotong.app.ArticleAPP:queryComment');
INSERT INTO `t_resource` VALUES ('7', 'com.huashidai.weihuotong.app.ArticleAPP:removeArticle');
INSERT INTO `t_resource` VALUES ('9', 'com.huashidai.weihuotong.app.CommonAPP:city');
INSERT INTO `t_resource` VALUES ('8', 'com.huashidai.weihuotong.app.CommonAPP:province');
INSERT INTO `t_resource` VALUES ('10', 'com.huashidai.weihuotong.app.CommonAPP:randomCode');
INSERT INTO `t_resource` VALUES ('17', 'com.huashidai.weihuotong.app.GoodsAPP:addGoods');
INSERT INTO `t_resource` VALUES ('12', 'com.huashidai.weihuotong.app.GoodsAPP:agreeReturnOrder');
INSERT INTO `t_resource` VALUES ('16', 'com.huashidai.weihuotong.app.GoodsAPP:allBrand');
INSERT INTO `t_resource` VALUES ('14', 'com.huashidai.weihuotong.app.GoodsAPP:applyReturnOrder');
INSERT INTO `t_resource` VALUES ('25', 'com.huashidai.weihuotong.app.GoodsAPP:cancleOrder');
INSERT INTO `t_resource` VALUES ('28', 'com.huashidai.weihuotong.app.GoodsAPP:confirmOrder');
INSERT INTO `t_resource` VALUES ('11', 'com.huashidai.weihuotong.app.GoodsAPP:delete');
INSERT INTO `t_resource` VALUES ('33', 'com.huashidai.weihuotong.app.GoodsAPP:deleteProduct');
INSERT INTO `t_resource` VALUES ('31', 'com.huashidai.weihuotong.app.GoodsAPP:detailsImages');
INSERT INTO `t_resource` VALUES ('15', 'com.huashidai.weihuotong.app.GoodsAPP:enterGoods');
INSERT INTO `t_resource` VALUES ('20', 'com.huashidai.weihuotong.app.GoodsAPP:hotGoods');
INSERT INTO `t_resource` VALUES ('21', 'com.huashidai.weihuotong.app.GoodsAPP:leave');
INSERT INTO `t_resource` VALUES ('23', 'com.huashidai.weihuotong.app.GoodsAPP:newGoods');
INSERT INTO `t_resource` VALUES ('22', 'com.huashidai.weihuotong.app.GoodsAPP:proxyGoods');
INSERT INTO `t_resource` VALUES ('29', 'com.huashidai.weihuotong.app.GoodsAPP:searchGoods');
INSERT INTO `t_resource` VALUES ('32', 'com.huashidai.weihuotong.app.GoodsAPP:searchProduct');
INSERT INTO `t_resource` VALUES ('27', 'com.huashidai.weihuotong.app.GoodsAPP:shipOrder');
INSERT INTO `t_resource` VALUES ('30', 'com.huashidai.weihuotong.app.GoodsAPP:submitOrder');
INSERT INTO `t_resource` VALUES ('26', 'com.huashidai.weihuotong.app.GoodsAPP:toBuyProduct');
INSERT INTO `t_resource` VALUES ('19', 'com.huashidai.weihuotong.app.GoodsAPP:toEditGoods');
INSERT INTO `t_resource` VALUES ('18', 'com.huashidai.weihuotong.app.GoodsAPP:up');
INSERT INTO `t_resource` VALUES ('13', 'com.huashidai.weihuotong.app.GoodsAPP:updateOrderPrice');
INSERT INTO `t_resource` VALUES ('24', 'com.huashidai.weihuotong.app.GoodsAPP:userOrder');
INSERT INTO `t_resource` VALUES ('39', 'com.huashidai.weihuotong.app.PromotionAPP:enterPromotion');
INSERT INTO `t_resource` VALUES ('41', 'com.huashidai.weihuotong.app.PromotionAPP:enterWebPage');
INSERT INTO `t_resource` VALUES ('40', 'com.huashidai.weihuotong.app.PromotionAPP:promotion');
INSERT INTO `t_resource` VALUES ('35', 'com.huashidai.weihuotong.app.PromotionAPP:promotionOfType');
INSERT INTO `t_resource` VALUES ('36', 'com.huashidai.weihuotong.app.PromotionAPP:storePromotion');
INSERT INTO `t_resource` VALUES ('37', 'com.huashidai.weihuotong.app.PromotionAPP:submitPromotionOrder');
INSERT INTO `t_resource` VALUES ('38', 'com.huashidai.weihuotong.app.PromotionAPP:toBuyPromotion');
INSERT INTO `t_resource` VALUES ('34', 'com.huashidai.weihuotong.app.PromotionAPP:updatePromotion');
INSERT INTO `t_resource` VALUES ('51', 'com.huashidai.weihuotong.app.ProxyController:checkLogin');
INSERT INTO `t_resource` VALUES ('47', 'com.huashidai.weihuotong.app.ProxyController:city');
INSERT INTO `t_resource` VALUES ('46', 'com.huashidai.weihuotong.app.ProxyController:customerRandomCode');
INSERT INTO `t_resource` VALUES ('45', 'com.huashidai.weihuotong.app.ProxyController:deleteAddress');
INSERT INTO `t_resource` VALUES ('43', 'com.huashidai.weihuotong.app.ProxyController:enterProxyGoods');
INSERT INTO `t_resource` VALUES ('42', 'com.huashidai.weihuotong.app.ProxyController:getAddress');
INSERT INTO `t_resource` VALUES ('49', 'com.huashidai.weihuotong.app.ProxyController:proxyOrder');
INSERT INTO `t_resource` VALUES ('50', 'com.huashidai.weihuotong.app.ProxyController:saveAddress');
INSERT INTO `t_resource` VALUES ('48', 'com.huashidai.weihuotong.app.ProxyController:submitOrder');
INSERT INTO `t_resource` VALUES ('44', 'com.huashidai.weihuotong.app.ProxyController:updateDefault');
INSERT INTO `t_resource` VALUES ('57', 'com.huashidai.weihuotong.app.StoreAPP:allPostageTemplate');
INSERT INTO `t_resource` VALUES ('60', 'com.huashidai.weihuotong.app.StoreAPP:enterStore');
INSERT INTO `t_resource` VALUES ('58', 'com.huashidai.weihuotong.app.StoreAPP:marginOrderNum');
INSERT INTO `t_resource` VALUES ('55', 'com.huashidai.weihuotong.app.StoreAPP:postageTemplate');
INSERT INTO `t_resource` VALUES ('61', 'com.huashidai.weihuotong.app.StoreAPP:saveStore');
INSERT INTO `t_resource` VALUES ('62', 'com.huashidai.weihuotong.app.StoreAPP:searchStore');
INSERT INTO `t_resource` VALUES ('59', 'com.huashidai.weihuotong.app.StoreAPP:storeFavorites');
INSERT INTO `t_resource` VALUES ('64', 'com.huashidai.weihuotong.app.StoreAPP:storeInfo');
INSERT INTO `t_resource` VALUES ('53', 'com.huashidai.weihuotong.app.StoreAPP:updateHeadImage');
INSERT INTO `t_resource` VALUES ('63', 'com.huashidai.weihuotong.app.StoreAPP:updateStore');
INSERT INTO `t_resource` VALUES ('54', 'com.huashidai.weihuotong.app.StoreAPP:updateStoreCity');
INSERT INTO `t_resource` VALUES ('56', 'com.huashidai.weihuotong.app.StoreAPP:updateStoreFavorites');
INSERT INTO `t_resource` VALUES ('52', 'com.huashidai.weihuotong.app.StoreAPP:updateStoreName');
INSERT INTO `t_resource` VALUES ('65', 'com.huashidai.weihuotong.app.TypeAPP:parentsAndItem');
INSERT INTO `t_resource` VALUES ('67', 'com.huashidai.weihuotong.app.TypeAPP:typeItem');
INSERT INTO `t_resource` VALUES ('66', 'com.huashidai.weihuotong.app.TypeAPP:typesByParent');
INSERT INTO `t_resource` VALUES ('84', 'com.huashidai.weihuotong.app.UserAPP:checkLogin');
INSERT INTO `t_resource` VALUES ('73', 'com.huashidai.weihuotong.app.UserAPP:checkWechatLogin');
INSERT INTO `t_resource` VALUES ('72', 'com.huashidai.weihuotong.app.UserAPP:deleteAddress');
INSERT INTO `t_resource` VALUES ('85', 'com.huashidai.weihuotong.app.UserAPP:enterMessage');
INSERT INTO `t_resource` VALUES ('81', 'com.huashidai.weihuotong.app.UserAPP:forgetPassword');
INSERT INTO `t_resource` VALUES ('69', 'com.huashidai.weihuotong.app.UserAPP:getAddress');
INSERT INTO `t_resource` VALUES ('74', 'com.huashidai.weihuotong.app.UserAPP:recommendation');
INSERT INTO `t_resource` VALUES ('68', 'com.huashidai.weihuotong.app.UserAPP:register');
INSERT INTO `t_resource` VALUES ('88', 'com.huashidai.weihuotong.app.UserAPP:removeWechat');
INSERT INTO `t_resource` VALUES ('83', 'com.huashidai.weihuotong.app.UserAPP:saveAddress');
INSERT INTO `t_resource` VALUES ('78', 'com.huashidai.weihuotong.app.UserAPP:updateAddress');
INSERT INTO `t_resource` VALUES ('76', 'com.huashidai.weihuotong.app.UserAPP:updateBackground');
INSERT INTO `t_resource` VALUES ('71', 'com.huashidai.weihuotong.app.UserAPP:updateDefault');
INSERT INTO `t_resource` VALUES ('80', 'com.huashidai.weihuotong.app.UserAPP:updatePassword');
INSERT INTO `t_resource` VALUES ('77', 'com.huashidai.weihuotong.app.UserAPP:updateUserImages');
INSERT INTO `t_resource` VALUES ('89', 'com.huashidai.weihuotong.app.UserAPP:userAccount');
INSERT INTO `t_resource` VALUES ('82', 'com.huashidai.weihuotong.app.UserAPP:userAccountFlow');
INSERT INTO `t_resource` VALUES ('70', 'com.huashidai.weihuotong.app.UserAPP:userInfo');
INSERT INTO `t_resource` VALUES ('90', 'com.huashidai.weihuotong.app.UserAPP:userMessage');
INSERT INTO `t_resource` VALUES ('79', 'com.huashidai.weihuotong.app.UserAPP:userMessageNum');
INSERT INTO `t_resource` VALUES ('87', 'com.huashidai.weihuotong.app.UserAPP:userProxy');
INSERT INTO `t_resource` VALUES ('86', 'com.huashidai.weihuotong.app.UserAPP:userTeam');
INSERT INTO `t_resource` VALUES ('75', 'com.huashidai.weihuotong.app.UserAPP:withdrawApply');
INSERT INTO `t_resource` VALUES ('93', 'com.huashidai.weihuotong.controller.AccountCotroller:account');
INSERT INTO `t_resource` VALUES ('92', 'com.huashidai.weihuotong.controller.AccountCotroller:accountFlow');
INSERT INTO `t_resource` VALUES ('94', 'com.huashidai.weihuotong.controller.AccountCotroller:ALL');
INSERT INTO `t_resource` VALUES ('91', 'com.huashidai.weihuotong.controller.AccountCotroller:query');
INSERT INTO `t_resource` VALUES ('98', 'com.huashidai.weihuotong.controller.AdPositionIdCotroller:adPositionId');
INSERT INTO `t_resource` VALUES ('99', 'com.huashidai.weihuotong.controller.AdPositionIdCotroller:ALL');
INSERT INTO `t_resource` VALUES ('96', 'com.huashidai.weihuotong.controller.AdPositionIdCotroller:delete');
INSERT INTO `t_resource` VALUES ('97', 'com.huashidai.weihuotong.controller.AdPositionIdCotroller:query');
INSERT INTO `t_resource` VALUES ('95', 'com.huashidai.weihuotong.controller.AdPositionIdCotroller:save');
INSERT INTO `t_resource` VALUES ('102', 'com.huashidai.weihuotong.controller.ArticleCommentCotroller:ALL');
INSERT INTO `t_resource` VALUES ('100', 'com.huashidai.weihuotong.controller.ArticleCommentCotroller:delete');
INSERT INTO `t_resource` VALUES ('101', 'com.huashidai.weihuotong.controller.ArticleCommentCotroller:query');
INSERT INTO `t_resource` VALUES ('107', 'com.huashidai.weihuotong.controller.ArticleCotroller:ALL');
INSERT INTO `t_resource` VALUES ('105', 'com.huashidai.weihuotong.controller.ArticleCotroller:article');
INSERT INTO `t_resource` VALUES ('103', 'com.huashidai.weihuotong.controller.ArticleCotroller:delete');
INSERT INTO `t_resource` VALUES ('104', 'com.huashidai.weihuotong.controller.ArticleCotroller:query');
INSERT INTO `t_resource` VALUES ('106', 'com.huashidai.weihuotong.controller.ArticleCotroller:showArticle');
INSERT INTO `t_resource` VALUES ('113', 'com.huashidai.weihuotong.controller.ArticleTypeCotroller:ALL');
INSERT INTO `t_resource` VALUES ('112', 'com.huashidai.weihuotong.controller.ArticleTypeCotroller:articleType');
INSERT INTO `t_resource` VALUES ('109', 'com.huashidai.weihuotong.controller.ArticleTypeCotroller:delete');
INSERT INTO `t_resource` VALUES ('110', 'com.huashidai.weihuotong.controller.ArticleTypeCotroller:query');
INSERT INTO `t_resource` VALUES ('108', 'com.huashidai.weihuotong.controller.ArticleTypeCotroller:save');
INSERT INTO `t_resource` VALUES ('111', 'com.huashidai.weihuotong.controller.ArticleTypeCotroller:showArticleType');
INSERT INTO `t_resource` VALUES ('118', 'com.huashidai.weihuotong.controller.BrandCotroller:ALL');
INSERT INTO `t_resource` VALUES ('117', 'com.huashidai.weihuotong.controller.BrandCotroller:brand');
INSERT INTO `t_resource` VALUES ('115', 'com.huashidai.weihuotong.controller.BrandCotroller:delete');
INSERT INTO `t_resource` VALUES ('116', 'com.huashidai.weihuotong.controller.BrandCotroller:query');
INSERT INTO `t_resource` VALUES ('114', 'com.huashidai.weihuotong.controller.BrandCotroller:save');
INSERT INTO `t_resource` VALUES ('125', 'com.huashidai.weihuotong.controller.EmployeeCotroller:ALL');
INSERT INTO `t_resource` VALUES ('120', 'com.huashidai.weihuotong.controller.EmployeeCotroller:delete');
INSERT INTO `t_resource` VALUES ('124', 'com.huashidai.weihuotong.controller.EmployeeCotroller:employee');
INSERT INTO `t_resource` VALUES ('121', 'com.huashidai.weihuotong.controller.EmployeeCotroller:employeeQuery');
INSERT INTO `t_resource` VALUES ('123', 'com.huashidai.weihuotong.controller.EmployeeCotroller:leave');
INSERT INTO `t_resource` VALUES ('119', 'com.huashidai.weihuotong.controller.EmployeeCotroller:save');
INSERT INTO `t_resource` VALUES ('122', 'com.huashidai.weihuotong.controller.EmployeeCotroller:up');
INSERT INTO `t_resource` VALUES ('131', 'com.huashidai.weihuotong.controller.GoodsCotroller:ALL');
INSERT INTO `t_resource` VALUES ('126', 'com.huashidai.weihuotong.controller.GoodsCotroller:delete');
INSERT INTO `t_resource` VALUES ('128', 'com.huashidai.weihuotong.controller.GoodsCotroller:goods');
INSERT INTO `t_resource` VALUES ('130', 'com.huashidai.weihuotong.controller.GoodsCotroller:leave');
INSERT INTO `t_resource` VALUES ('127', 'com.huashidai.weihuotong.controller.GoodsCotroller:query');
INSERT INTO `t_resource` VALUES ('129', 'com.huashidai.weihuotong.controller.GoodsCotroller:up');
INSERT INTO `t_resource` VALUES ('132', 'com.huashidai.weihuotong.controller.IndexController:execut');
INSERT INTO `t_resource` VALUES ('134', 'com.huashidai.weihuotong.controller.LoginController:checkLogin');
INSERT INTO `t_resource` VALUES ('133', 'com.huashidai.weihuotong.controller.LoginController:logout');
INSERT INTO `t_resource` VALUES ('135', 'com.huashidai.weihuotong.controller.LoginController:mian');
INSERT INTO `t_resource` VALUES ('138', 'com.huashidai.weihuotong.controller.MarginOrderCotroller:ALL');
INSERT INTO `t_resource` VALUES ('137', 'com.huashidai.weihuotong.controller.MarginOrderCotroller:marginOrder');
INSERT INTO `t_resource` VALUES ('136', 'com.huashidai.weihuotong.controller.MarginOrderCotroller:query');
INSERT INTO `t_resource` VALUES ('139', 'com.huashidai.weihuotong.controller.MenuCotroller:test2');
INSERT INTO `t_resource` VALUES ('141', 'com.huashidai.weihuotong.controller.MonitoringController:ALL');
INSERT INTO `t_resource` VALUES ('140', 'com.huashidai.weihuotong.controller.MonitoringController:index');
INSERT INTO `t_resource` VALUES ('147', 'com.huashidai.weihuotong.controller.PermissionController:ALL');
INSERT INTO `t_resource` VALUES ('143', 'com.huashidai.weihuotong.controller.PermissionController:delete');
INSERT INTO `t_resource` VALUES ('144', 'com.huashidai.weihuotong.controller.PermissionController:index');
INSERT INTO `t_resource` VALUES ('145', 'com.huashidai.weihuotong.controller.PermissionController:permissionAll');
INSERT INTO `t_resource` VALUES ('146', 'com.huashidai.weihuotong.controller.PermissionController:quert');
INSERT INTO `t_resource` VALUES ('142', 'com.huashidai.weihuotong.controller.PermissionController:save');
INSERT INTO `t_resource` VALUES ('151', 'com.huashidai.weihuotong.controller.ProductOrderCotroller:ALL');
INSERT INTO `t_resource` VALUES ('149', 'com.huashidai.weihuotong.controller.ProductOrderCotroller:orderItem');
INSERT INTO `t_resource` VALUES ('150', 'com.huashidai.weihuotong.controller.ProductOrderCotroller:productOrder');
INSERT INTO `t_resource` VALUES ('148', 'com.huashidai.weihuotong.controller.ProductOrderCotroller:query');
INSERT INTO `t_resource` VALUES ('157', 'com.huashidai.weihuotong.controller.PromotionCotroller:ALL');
INSERT INTO `t_resource` VALUES ('153', 'com.huashidai.weihuotong.controller.PromotionCotroller:delete');
INSERT INTO `t_resource` VALUES ('152', 'com.huashidai.weihuotong.controller.PromotionCotroller:failure');
INSERT INTO `t_resource` VALUES ('156', 'com.huashidai.weihuotong.controller.PromotionCotroller:promotion');
INSERT INTO `t_resource` VALUES ('154', 'com.huashidai.weihuotong.controller.PromotionCotroller:query');
INSERT INTO `t_resource` VALUES ('155', 'com.huashidai.weihuotong.controller.PromotionCotroller:success');
INSERT INTO `t_resource` VALUES ('160', 'com.huashidai.weihuotong.controller.PromotionOrderCotroller:ALL');
INSERT INTO `t_resource` VALUES ('159', 'com.huashidai.weihuotong.controller.PromotionOrderCotroller:promotionOrder');
INSERT INTO `t_resource` VALUES ('158', 'com.huashidai.weihuotong.controller.PromotionOrderCotroller:query');
INSERT INTO `t_resource` VALUES ('162', 'com.huashidai.weihuotong.controller.RandomCodeController:getRandColor');
INSERT INTO `t_resource` VALUES ('161', 'com.huashidai.weihuotong.controller.RandomCodeController:service');
INSERT INTO `t_resource` VALUES ('166', 'com.huashidai.weihuotong.controller.RecommendationCotroller:ALL');
INSERT INTO `t_resource` VALUES ('163', 'com.huashidai.weihuotong.controller.RecommendationCotroller:query');
INSERT INTO `t_resource` VALUES ('164', 'com.huashidai.weihuotong.controller.RecommendationCotroller:recommendation');
INSERT INTO `t_resource` VALUES ('165', 'com.huashidai.weihuotong.controller.RecommendationCotroller:showRecommendation');
INSERT INTO `t_resource` VALUES ('167', 'com.huashidai.weihuotong.controller.ResourceController:roleAll');
INSERT INTO `t_resource` VALUES ('169', 'com.huashidai.weihuotong.controller.RoleController:delete');
INSERT INTO `t_resource` VALUES ('170', 'com.huashidai.weihuotong.controller.RoleController:echo');
INSERT INTO `t_resource` VALUES ('172', 'com.huashidai.weihuotong.controller.RoleController:roleAll');
INSERT INTO `t_resource` VALUES ('171', 'com.huashidai.weihuotong.controller.RoleController:roleList');
INSERT INTO `t_resource` VALUES ('168', 'com.huashidai.weihuotong.controller.RoleController:save');
INSERT INTO `t_resource` VALUES ('181', 'com.huashidai.weihuotong.controller.StoreController:ALL');
INSERT INTO `t_resource` VALUES ('173', 'com.huashidai.weihuotong.controller.StoreController:failure');
INSERT INTO `t_resource` VALUES ('176', 'com.huashidai.weihuotong.controller.StoreController:getAll');
INSERT INTO `t_resource` VALUES ('174', 'com.huashidai.weihuotong.controller.StoreController:index');
INSERT INTO `t_resource` VALUES ('179', 'com.huashidai.weihuotong.controller.StoreController:leave');
INSERT INTO `t_resource` VALUES ('175', 'com.huashidai.weihuotong.controller.StoreController:query');
INSERT INTO `t_resource` VALUES ('180', 'com.huashidai.weihuotong.controller.StoreController:storeAuth');
INSERT INTO `t_resource` VALUES ('177', 'com.huashidai.weihuotong.controller.StoreController:success');
INSERT INTO `t_resource` VALUES ('178', 'com.huashidai.weihuotong.controller.StoreController:up');
INSERT INTO `t_resource` VALUES ('185', 'com.huashidai.weihuotong.controller.SystemAccountCotroller:ALL');
INSERT INTO `t_resource` VALUES ('182', 'com.huashidai.weihuotong.controller.SystemAccountCotroller:get');
INSERT INTO `t_resource` VALUES ('183', 'com.huashidai.weihuotong.controller.SystemAccountCotroller:systemSystemAccount');
INSERT INTO `t_resource` VALUES ('184', 'com.huashidai.weihuotong.controller.SystemAccountCotroller:systemSystemAccountFlow');
INSERT INTO `t_resource` VALUES ('188', 'com.huashidai.weihuotong.controller.SystemExceptionController:ALL');
INSERT INTO `t_resource` VALUES ('186', 'com.huashidai.weihuotong.controller.SystemExceptionController:index');
INSERT INTO `t_resource` VALUES ('187', 'com.huashidai.weihuotong.controller.SystemExceptionController:query');
INSERT INTO `t_resource` VALUES ('191', 'com.huashidai.weihuotong.controller.SystemLogController:ALL');
INSERT INTO `t_resource` VALUES ('189', 'com.huashidai.weihuotong.controller.SystemLogController:index');
INSERT INTO `t_resource` VALUES ('190', 'com.huashidai.weihuotong.controller.SystemLogController:query');
INSERT INTO `t_resource` VALUES ('197', 'com.huashidai.weihuotong.controller.TypeCotroller:ALL');
INSERT INTO `t_resource` VALUES ('195', 'com.huashidai.weihuotong.controller.TypeCotroller:delete');
INSERT INTO `t_resource` VALUES ('193', 'com.huashidai.weihuotong.controller.TypeCotroller:list');
INSERT INTO `t_resource` VALUES ('196', 'com.huashidai.weihuotong.controller.TypeCotroller:query');
INSERT INTO `t_resource` VALUES ('194', 'com.huashidai.weihuotong.controller.TypeCotroller:save');
INSERT INTO `t_resource` VALUES ('192', 'com.huashidai.weihuotong.controller.TypeCotroller:type');
INSERT INTO `t_resource` VALUES ('203', 'com.huashidai.weihuotong.controller.UserController:ALL');
INSERT INTO `t_resource` VALUES ('198', 'com.huashidai.weihuotong.controller.UserController:delete');
INSERT INTO `t_resource` VALUES ('199', 'com.huashidai.weihuotong.controller.UserController:index');
INSERT INTO `t_resource` VALUES ('202', 'com.huashidai.weihuotong.controller.UserController:leave');
INSERT INTO `t_resource` VALUES ('200', 'com.huashidai.weihuotong.controller.UserController:query');
INSERT INTO `t_resource` VALUES ('201', 'com.huashidai.weihuotong.controller.UserController:up');
INSERT INTO `t_resource` VALUES ('207', 'com.huashidai.weihuotong.controller.WithdrawCotroller:agreeApply');
INSERT INTO `t_resource` VALUES ('208', 'com.huashidai.weihuotong.controller.WithdrawCotroller:ALL');
INSERT INTO `t_resource` VALUES ('204', 'com.huashidai.weihuotong.controller.WithdrawCotroller:query');
INSERT INTO `t_resource` VALUES ('206', 'com.huashidai.weihuotong.controller.WithdrawCotroller:refuseApply');
INSERT INTO `t_resource` VALUES ('205', 'com.huashidai.weihuotong.controller.WithdrawCotroller:withdraw');
INSERT INTO `t_resource` VALUES ('209', 'com.huashidai.weihuotong.controller._TestCotroller:adPositionId');
INSERT INTO `t_resource` VALUES ('210', 'com.huashidai.weihuotong.controller._TestCotroller:sms');
INSERT INTO `t_resource` VALUES ('211', 'com.huashidai.weihuotong.pay.PayController:appPay');
INSERT INTO `t_resource` VALUES ('215', 'com.huashidai.weihuotong.pay.PayController:callBack');
INSERT INTO `t_resource` VALUES ('212', 'com.huashidai.weihuotong.pay.PayController:outhUrl');
INSERT INTO `t_resource` VALUES ('213', 'com.huashidai.weihuotong.pay.PayController:webCallBack');
INSERT INTO `t_resource` VALUES ('214', 'com.huashidai.weihuotong.pay.PayController:webPay');

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `sn` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES ('1', '权限管理', '001');

-- ----------------------------
-- Table structure for t_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_role_menu`;
CREATE TABLE `t_role_menu` (
  `role_id` bigint(20) DEFAULT NULL,
  `menu_id` bigint(20) DEFAULT NULL,
  KEY `role_id` (`role_id`),
  KEY `menu_id` (`menu_id`),
  CONSTRAINT `t_role_menu_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `t_role` (`id`),
  CONSTRAINT `t_role_menu_ibfk_2` FOREIGN KEY (`menu_id`) REFERENCES `t_menu` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_role_menu
-- ----------------------------

-- ----------------------------
-- Table structure for t_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `t_role_permission`;
CREATE TABLE `t_role_permission` (
  `role_id` bigint(20) NOT NULL,
  `permission_id` bigint(20) NOT NULL,
  PRIMARY KEY (`role_id`,`permission_id`),
  KEY `permission_id` (`permission_id`),
  CONSTRAINT `t_role_permission_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `t_role` (`id`),
  CONSTRAINT `t_role_permission_ibfk_2` FOREIGN KEY (`permission_id`) REFERENCES `t_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_role_permission
-- ----------------------------

-- ----------------------------
-- Table structure for t_store
-- ----------------------------
DROP TABLE IF EXISTS `t_store`;
CREATE TABLE `t_store` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `linkman` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `qq` varchar(20) NOT NULL,
  `city_id` bigint(20) NOT NULL,
  `state` int(11) NOT NULL,
  `headImage` varchar(255) DEFAULT NULL,
  `secured` int(11) NOT NULL,
  `margin` int(11) NOT NULL,
  `saleNum` int(11) NOT NULL,
  `hot` int(11) NOT NULL,
  `intro` varchar(255) DEFAULT NULL,
  `type_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_store
-- ----------------------------
INSERT INTO `t_store` VALUES ('63', '薛大大', '薛大大', '', '601383275', '99', '1', '/images/headImage/2159511f-ca6b-4608-be70-d03591afa02c.jpg', '1', '0', '13', '1', null, '1');
INSERT INTO `t_store` VALUES ('69', '微貨通', '张三', '13684258261', '123456', '248', '1', '/images/headImage/b511553b-b13e-4e4a-90e1-b480525b94c9.jpg', '1', '1', '14', '2', '你都不知道，我也莫知道', '2');
INSERT INTO `t_store` VALUES ('80', '沸点九九宜宾县分店', '彭泽刚', '13548065751', '2780014728', '1', '1', '/images/headImage/af0d983a-7573-4b9a-b392-36825097aa4d.jpg', '1', '0', '55', '2', '抠门兔专注18到28岁年轻女性时装品牌，追求高质低价，价格分为19，29，39到99之间', '3');
INSERT INTO `t_store` VALUES ('81', '沸点九九遵义分店', '彭先生', '17775528016', '2780014728', '2', '1', '/images/headImage/30abf916-1909-4192-841e-38a1855a0e97.jpg', '1', '0', '8', '2', null, '14');
INSERT INTO `t_store` VALUES ('82', '我们都是一', '我们', '18683958857', '614', '3', '1', '/images/headImage/f29370cb-1549-43ec-9bb1-c3c3d13d25cf.jpg', '1', '0', '6', '0', '有没有没有没有没有些什么时候能不能不', '1');
INSERT INTO `t_store` VALUES ('83', '你的时候', '我们', '13012345678', '6464', '1', '1', '/images/headImage/203c228e-f5a0-426a-960a-fe43d4548178.jpg', '1', '0', '0', '0', null, '2');
INSERT INTO `t_store` VALUES ('84', '测试', '呵呵', '13980928652', '123456', '248', '1', '/images/headImage/8025e233-502a-4f40-a956-bd598126d5ee.jpg', '1', '0', '0', '1', null, '3');

-- ----------------------------
-- Table structure for t_storeauth
-- ----------------------------
DROP TABLE IF EXISTS `t_storeauth`;
CREATE TABLE `t_storeauth` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `linkman` varchar(50) NOT NULL,
  `idCard1` varchar(255) DEFAULT NULL,
  `idCard2` varchar(255) DEFAULT NULL,
  `otherCard1` varchar(255) DEFAULT NULL,
  `otherCard2` varchar(255) DEFAULT NULL,
  `otherCard3` varchar(255) DEFAULT NULL,
  `otherCard4` varchar(255) DEFAULT NULL,
  `state` int(11) NOT NULL,
  `applyTime` date DEFAULT NULL,
  `store_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_storeauth
-- ----------------------------
INSERT INTO `t_storeauth` VALUES ('15', '薛大大', '/images/realAuth/4cf52a52-7d77-4350-9a23-5edbd9b3c0ec.jpg', '/images/realAuth/1269b5d2-ab50-44ec-912d-11a00a41ee25.jpg', '/images/realAuth/081eade9-602c-42bb-9eb3-a5c0089c23a2.jpg', '/images/realAuth/200f407f-f204-4ff0-9afa-f1b8ec7e2698.jpg', '/images/realAuth/35252108-f53c-4392-a47f-32cc6c73b16c.jpg', null, '0', '2016-06-24', '63');
INSERT INTO `t_storeauth` VALUES ('16', '张三', '/images/realAuth/060d56a6-9f46-4c55-a4ba-bee85568962f.jpg', '/images/realAuth/f240d13b-baf3-477e-9fb1-400b2829d620.jpg', '/images/realAuth/eb7ffa8e-faf2-4873-ba7a-0d7c1bc53899.jpg', '/images/realAuth/0f43f84b-2f47-45fd-bfc1-bcdc7da30d58.jpg', '/images/realAuth/f9750784-944c-4ee5-bdbf-9e95e877d100.jpg', '/images/realAuth/7d7355df-c631-4eb9-a858-b38307add12a.jpg', '0', '2016-06-24', '69');
INSERT INTO `t_storeauth` VALUES ('17', '彭先生', '/images/realAuth/4fda23e2-c9ac-4165-a2f2-f647ad64cddd.JPEG', '/images/realAuth/cf0dbd61-77b1-4be7-a55a-64def57d36e0.JPEG', null, null, null, null, '0', '2016-06-27', '77');
INSERT INTO `t_storeauth` VALUES ('18', '彭泽刚', '/images/realAuth/36628a6a-2425-4f3a-883f-8641f93ff5f7.jpg', '/images/realAuth/65ac903d-63d0-4158-9e72-9c9aae968da5.jpg', null, null, null, null, '0', '2016-06-27', '76');
INSERT INTO `t_storeauth` VALUES ('19', '1', '/images/realAuth/9c53514f-ef11-424b-8ae4-6bea82366fed.jpg', '/images/realAuth/a48afc56-db3b-4062-88d3-963eabe69b6d.jpg', '/images/realAuth/d99626fd-a3c9-43d7-a3fc-9ee38c35b1e5.jpg', null, null, null, '0', '2016-06-27', '78');
INSERT INTO `t_storeauth` VALUES ('20', '彭泽刚', '/images/realAuth/edcdd2a8-5f52-455f-8b1c-20350cf03916.jpg', '/images/realAuth/6c56ee15-73a8-4c08-92b3-77915ac0a509.jpg', null, null, null, null, '0', '2016-06-27', '79');
INSERT INTO `t_storeauth` VALUES ('21', '彭泽刚', '/images/realAuth/fb0bc858-338a-4237-ad23-427d7caab511.jpg', '/images/realAuth/8f87c576-4d3e-48ee-a841-42350d2d21a2.jpg', null, null, null, null, '0', '2016-06-27', '80');
INSERT INTO `t_storeauth` VALUES ('22', '彭先生', '/images/realAuth/d632ccc7-ec13-4ada-933b-b54164bd129e.jpg', '/images/realAuth/6aff2019-7afd-444e-b00a-628e6c0d9fb2.jpg', null, null, null, null, '0', '2016-06-27', '81');
INSERT INTO `t_storeauth` VALUES ('23', '我们', '/images/realAuth/646f8127-565d-4508-927c-51edfce665a5.jpg', '/images/realAuth/faa29e99-5378-4e8e-9aac-336b05525c7f.jpg', null, null, null, null, '0', '2016-06-27', '82');
INSERT INTO `t_storeauth` VALUES ('24', '我们', '/images/realAuth/c4bca654-c216-4890-bb1c-90ca9ec45dd3.jpg', '/images/realAuth/83ef0271-7a33-4e75-bf1e-bff7a15cbd47.jpg', null, null, null, null, '0', '2016-06-27', '83');
INSERT INTO `t_storeauth` VALUES ('25', '呵呵', '/images/realAuth/3403e594-d0b0-41f6-8734-5ae23deb56e0.JPEG', '/images/realAuth/dbf3a9a8-4a2c-48fb-92e6-e7c8c5b3ea3f.JPEG', null, null, null, null, '0', '2016-06-28', '84');

-- ----------------------------
-- Table structure for t_storefavorites
-- ----------------------------
DROP TABLE IF EXISTS `t_storefavorites`;
CREATE TABLE `t_storefavorites` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `time` datetime NOT NULL,
  `userId` bigint(20) NOT NULL,
  `storeName` varchar(255) NOT NULL,
  `storeId` bigint(20) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_storefavorites
-- ----------------------------
INSERT INTO `t_storefavorites` VALUES ('67', '2016-06-24 10:04:48', '62', '微貨通', '62', null);
INSERT INTO `t_storefavorites` VALUES ('68', '2016-06-24 16:18:03', '63', '微貨通', '69', '/images/headImage/b511553b-b13e-4e4a-90e1-b480525b94c9.jpg');
INSERT INTO `t_storefavorites` VALUES ('70', '2016-06-27 11:20:44', '67', '施工洛林', '81', null);
INSERT INTO `t_storefavorites` VALUES ('71', '2016-06-27 11:58:11', '68', '微貨通', '69', '/images/headImage/b511553b-b13e-4e4a-90e1-b480525b94c9.jpg');
INSERT INTO `t_storefavorites` VALUES ('72', '2016-06-27 11:58:19', '68', '抠门兔', '80', null);
INSERT INTO `t_storefavorites` VALUES ('73', '2016-06-28 11:38:31', '64', '抠门兔', '80', '/images/headImage/ef901481-a153-4a8b-a8b3-4774d0535571.jpg');
INSERT INTO `t_storefavorites` VALUES ('74', '2016-06-28 17:15:52', '64', '测试', '84', '/images/headImage/8025e233-502a-4f40-a956-bd598126d5ee.jpg');
INSERT INTO `t_storefavorites` VALUES ('75', '2016-06-29 16:08:25', '64', '沸点九九遵义分店', '81', '/images/headImage/30abf916-1909-4192-841e-38a1855a0e97.jpg');
INSERT INTO `t_storefavorites` VALUES ('78', '2016-07-02 06:00:25', '62', '薛大大', '63', null);

-- ----------------------------
-- Table structure for t_systemaccount
-- ----------------------------
DROP TABLE IF EXISTS `t_systemaccount`;
CREATE TABLE `t_systemaccount` (
  `balance` decimal(10,2) NOT NULL,
  `version` bigint(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_systemaccount
-- ----------------------------
INSERT INTO `t_systemaccount` VALUES ('14208.00', '33');

-- ----------------------------
-- Table structure for t_systemaccountflow
-- ----------------------------
DROP TABLE IF EXISTS `t_systemaccountflow`;
CREATE TABLE `t_systemaccountflow` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `accountActionType` int(11) NOT NULL,
  `balance` decimal(10,2) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `operateTime` datetime NOT NULL,
  `account_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_systemaccountflow
-- ----------------------------
INSERT INTO `t_systemaccountflow` VALUES ('7', '3', '1.00', '1.00', '', '2016-06-24 17:09:57', '19');
INSERT INTO `t_systemaccountflow` VALUES ('8', '3', '2.00', '1.00', '', '2016-06-24 17:11:30', '19');
INSERT INTO `t_systemaccountflow` VALUES ('9', '3', '3.00', '1.00', '', '2016-06-24 17:53:30', '19');
INSERT INTO `t_systemaccountflow` VALUES ('10', '3', '4.00', '1.00', '', '2016-06-24 17:54:03', '19');
INSERT INTO `t_systemaccountflow` VALUES ('11', '3', '5.00', '1.00', '', '2016-06-24 17:54:32', '19');
INSERT INTO `t_systemaccountflow` VALUES ('12', '3', '6.00', '1.00', '', '2016-06-24 17:55:15', '19');
INSERT INTO `t_systemaccountflow` VALUES ('13', '3', '7.00', '1.00', '', '2016-06-24 17:56:28', '19');
INSERT INTO `t_systemaccountflow` VALUES ('14', '3', '8.00', '1.00', '', '2016-06-24 18:00:24', '19');
INSERT INTO `t_systemaccountflow` VALUES ('15', '3', '9.00', '1.00', '', '2016-06-24 18:01:05', '19');
INSERT INTO `t_systemaccountflow` VALUES ('16', '1', '10.00', '1.00', '商品销售', '2016-06-27 10:13:46', '21');
INSERT INTO `t_systemaccountflow` VALUES ('17', '1', '11.00', '1.00', '商品销售', '2016-06-27 10:15:10', '21');
INSERT INTO `t_systemaccountflow` VALUES ('18', '1', '12.00', '1.00', '商品销售', '2016-06-27 12:01:57', '23');
INSERT INTO `t_systemaccountflow` VALUES ('19', '1', '13.00', '1.00', '商品销售', '2016-06-27 14:04:06', '24');
INSERT INTO `t_systemaccountflow` VALUES ('20', '1', '14.00', '1.00', '商品销售', '2016-06-27 14:44:34', '24');
INSERT INTO `t_systemaccountflow` VALUES ('21', '1', '10001.00', '1.00', '商品销售', '2016-06-28 00:03:42', '27');
INSERT INTO `t_systemaccountflow` VALUES ('22', '1', '10002.00', '1.00', '商品销售', '2016-06-28 00:07:55', '27');
INSERT INTO `t_systemaccountflow` VALUES ('23', '1', '10003.00', '1.00', '', '2016-06-28 11:08:38', '23');
INSERT INTO `t_systemaccountflow` VALUES ('24', '1', '10004.00', '1.00', '', '2016-06-28 14:05:16', '24');
INSERT INTO `t_systemaccountflow` VALUES ('25', '3', '10005.00', '1.00', '', '2016-06-28 17:47:24', '27');
INSERT INTO `t_systemaccountflow` VALUES ('26', '3', '10006.00', '1.00', '', '2016-06-28 17:51:13', '24');
INSERT INTO `t_systemaccountflow` VALUES ('27', '3', '10007.00', '1.00', '', '2016-06-28 17:53:26', '24');
INSERT INTO `t_systemaccountflow` VALUES ('28', '3', '10008.00', '1.00', '', '2016-06-28 17:54:03', '24');
INSERT INTO `t_systemaccountflow` VALUES ('29', '1', '10009.00', '1.00', '13684258261购买商品', '2016-06-30 17:15:15', '19');
INSERT INTO `t_systemaccountflow` VALUES ('41', '2', '11009.00', '1000.00', '17775528016', '2016-07-01 11:31:47', '20');
INSERT INTO `t_systemaccountflow` VALUES ('42', '2', '11109.00', '100.00', '17775528016', '2016-07-01 11:35:21', '20');
INSERT INTO `t_systemaccountflow` VALUES ('43', '2', '11209.00', '100.00', '17775528016', '2016-07-01 11:52:59', '20');
INSERT INTO `t_systemaccountflow` VALUES ('44', '2', '11309.00', '100.00', '17775528016', '2016-07-01 11:53:42', '20');
INSERT INTO `t_systemaccountflow` VALUES ('45', '2', '11409.00', '100.00', '17775528016', '2016-07-01 11:55:12', '20');
INSERT INTO `t_systemaccountflow` VALUES ('46', '2', '11509.00', '100.00', '13684258261', '2016-07-01 11:59:50', '19');
INSERT INTO `t_systemaccountflow` VALUES ('47', '2', '11609.00', '100.00', '13684258261', '2016-07-01 12:00:23', '19');
INSERT INTO `t_systemaccountflow` VALUES ('48', '2', '12608.00', '999.00', '13684258261', '2016-07-01 12:02:17', '19');
INSERT INTO `t_systemaccountflow` VALUES ('49', '2', '13208.00', '600.00', '13684258261', '2016-07-01 12:04:35', '19');
INSERT INTO `t_systemaccountflow` VALUES ('50', '2', '14208.00', '1000.00', '13684258261', '2016-07-01 12:06:51', '19');

-- ----------------------------
-- Table structure for t_systemexception
-- ----------------------------
DROP TABLE IF EXISTS `t_systemexception`;
CREATE TABLE `t_systemexception` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `opTime` datetime DEFAULT NULL,
  `opIP` varchar(32) DEFAULT NULL,
  `function` varchar(255) DEFAULT NULL,
  `params` varchar(255) DEFAULT NULL,
  `exceptionCode` varchar(255) DEFAULT NULL,
  `exceptionDetail` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_systemexception
-- ----------------------------
INSERT INTO `t_systemexception` VALUES ('1', '2016-07-01 14:53:31', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ArticleTypeServiceImpl.save()', 'com.huashidai.weihuotong.domain.ArticleType@52171831;', 'org.springframework.jdbc.BadSqlGrammarException', '\r\n### Error updating database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'namea\' in \'field list\'\r\n### The error may involve com.huashidai.weihuotong.mapper.ArticleTypeMapper.save-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_articleType (namea)      values (?)\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'namea\' in \'field list\'\n; bad SQL grammar []; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'namea\' in \'field list\'');
INSERT INTO `t_systemexception` VALUES ('2', '2016-07-01 15:22:20', '0:0:0:0:0:0:0:1', 'ArticleTypeServiceImpl.save', '.ArticleType', 'BadSqlGrammarException', '\r\n### Error updating database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'namea\' in \'field list\'\r\n### The error may involve com.huashidai.weihuotong.mapper.ArticleTypeMapper.save-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_articleType (namea)      values (?)\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'namea\' in \'field list\'\n; bad SQL grammar []; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'namea\' in \'field list\'');
INSERT INTO `t_systemexception` VALUES ('3', '2016-07-01 15:38:13', '123', '_TestServiceServiceImpl.testNot_supported', '', 'ArithmeticException', '/ by zero');
INSERT INTO `t_systemexception` VALUES ('4', '2016-07-01 18:18:39', '110.184.45.135', 'GoodsServiceImpl.delete', '64.', 'LogicException', '商品未下架,不能删除!');
INSERT INTO `t_systemexception` VALUES ('5', '2016-07-01 18:18:39', '110.184.45.135', 'ProductServiceImpl.delete', '106', 'LogicException', '商品未下架,不能删除!');
INSERT INTO `t_systemexception` VALUES ('6', '2016-07-01 18:18:41', '110.184.45.135', 'GoodsServiceImpl.delete', '64.', 'LogicException', '商品未下架,不能删除!');
INSERT INTO `t_systemexception` VALUES ('7', '2016-07-01 18:18:41', '110.184.45.135', 'ProductServiceImpl.delete', '106', 'LogicException', '商品未下架,不能删除!');
INSERT INTO `t_systemexception` VALUES ('8', '2016-07-01 18:18:42', '110.184.45.135', 'GoodsServiceImpl.delete', '64.', 'LogicException', '商品未下架,不能删除!');
INSERT INTO `t_systemexception` VALUES ('9', '2016-07-01 18:18:42', '110.184.45.135', 'ProductServiceImpl.delete', '106', 'LogicException', '商品未下架,不能删除!');
INSERT INTO `t_systemexception` VALUES ('10', '2016-07-01 18:18:48', '110.184.45.135', 'GoodsServiceImpl.delete', '64.', 'LogicException', '商品未下架,不能删除!');
INSERT INTO `t_systemexception` VALUES ('11', '2016-07-01 18:18:49', '110.184.45.135', 'ProductServiceImpl.delete', '106', 'LogicException', '商品未下架,不能删除!');
INSERT INTO `t_systemexception` VALUES ('12', '2016-07-01 21:02:33', '210.32.92.204', 'ProductOrderServiceImpl.submitOrder', 'ProductOrderItemList....', 'DataIntegrityViolationException', '\r\n### Error updating database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null\r\n### The error may involve com.huashidai.weihuotong.mapper.TotalOrderMapper.save-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_totalOrder(orderNum,totalPrice,payPrice)       values(?,?,?)\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null\n; SQL []; Column \'orderNum\' cannot be null; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null');
INSERT INTO `t_systemexception` VALUES ('13', '2016-07-01 21:02:34', '210.32.92.204', 'ProductOrderServiceImpl.submitOrder', 'ProductOrderItemList....', 'DataIntegrityViolationException', '\r\n### Error updating database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null\r\n### The error may involve com.huashidai.weihuotong.mapper.TotalOrderMapper.save-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_totalOrder(orderNum,totalPrice,payPrice)       values(?,?,?)\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null\n; SQL []; Column \'orderNum\' cannot be null; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null');
INSERT INTO `t_systemexception` VALUES ('14', '2016-07-01 21:02:34', '210.32.92.204', 'ProductOrderServiceImpl.submitOrder', 'ProductOrderItemList....', 'DataIntegrityViolationException', '\r\n### Error updating database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null\r\n### The error may involve com.huashidai.weihuotong.mapper.TotalOrderMapper.save-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_totalOrder(orderNum,totalPrice,payPrice)       values(?,?,?)\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null\n; SQL []; Column \'orderNum\' cannot be null; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null');
INSERT INTO `t_systemexception` VALUES ('15', '2016-07-01 21:02:37', '210.32.92.204', 'ProductOrderServiceImpl.submitOrder', 'ProductOrderItemList....', 'DataIntegrityViolationException', '\r\n### Error updating database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null\r\n### The error may involve com.huashidai.weihuotong.mapper.TotalOrderMapper.save-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_totalOrder(orderNum,totalPrice,payPrice)       values(?,?,?)\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null\n; SQL []; Column \'orderNum\' cannot be null; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null');
INSERT INTO `t_systemexception` VALUES ('16', '2016-07-01 21:02:37', '210.32.92.204', 'ProductOrderServiceImpl.submitOrder', 'ProductOrderItemList....', 'DataIntegrityViolationException', '\r\n### Error updating database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null\r\n### The error may involve com.huashidai.weihuotong.mapper.TotalOrderMapper.save-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_totalOrder(orderNum,totalPrice,payPrice)       values(?,?,?)\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null\n; SQL []; Column \'orderNum\' cannot be null; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null');
INSERT INTO `t_systemexception` VALUES ('17', '2016-07-01 21:02:38', '210.32.92.204', 'ProductOrderServiceImpl.submitOrder', 'ProductOrderItemList....', 'DataIntegrityViolationException', '\r\n### Error updating database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null\r\n### The error may involve com.huashidai.weihuotong.mapper.TotalOrderMapper.save-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_totalOrder(orderNum,totalPrice,payPrice)       values(?,?,?)\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null\n; SQL []; Column \'orderNum\' cannot be null; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null');
INSERT INTO `t_systemexception` VALUES ('18', '2016-07-01 21:02:58', '210.32.92.204', 'ProductOrderServiceImpl.submitOrder', 'ProductOrderItemList....', 'DataIntegrityViolationException', '\r\n### Error updating database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null\r\n### The error may involve com.huashidai.weihuotong.mapper.TotalOrderMapper.save-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_totalOrder(orderNum,totalPrice,payPrice)       values(?,?,?)\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null\n; SQL []; Column \'orderNum\' cannot be null; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null');
INSERT INTO `t_systemexception` VALUES ('19', '2016-07-01 21:02:59', '210.32.92.204', 'ProductOrderServiceImpl.submitOrder', 'ProductOrderItemList....', 'DataIntegrityViolationException', '\r\n### Error updating database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null\r\n### The error may involve com.huashidai.weihuotong.mapper.TotalOrderMapper.save-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_totalOrder(orderNum,totalPrice,payPrice)       values(?,?,?)\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null\n; SQL []; Column \'orderNum\' cannot be null; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null');
INSERT INTO `t_systemexception` VALUES ('20', '2016-07-01 21:03:00', '210.32.92.204', 'ProductOrderServiceImpl.submitOrder', 'ProductOrderItemList....', 'DataIntegrityViolationException', '\r\n### Error updating database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null\r\n### The error may involve com.huashidai.weihuotong.mapper.TotalOrderMapper.save-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_totalOrder(orderNum,totalPrice,payPrice)       values(?,?,?)\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null\n; SQL []; Column \'orderNum\' cannot be null; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null');
INSERT INTO `t_systemexception` VALUES ('21', '2016-07-01 21:03:01', '210.32.92.204', 'ProductOrderServiceImpl.submitOrder', 'ProductOrderItemList....', 'DataIntegrityViolationException', '\r\n### Error updating database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null\r\n### The error may involve com.huashidai.weihuotong.mapper.TotalOrderMapper.save-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_totalOrder(orderNum,totalPrice,payPrice)       values(?,?,?)\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null\n; SQL []; Column \'orderNum\' cannot be null; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null');
INSERT INTO `t_systemexception` VALUES ('22', '2016-07-01 21:03:25', '210.32.92.204', 'CustomerServiceImpl.findcheckLogin', '137777480631.', 'LogicException', '用户名或密码错误！！');
INSERT INTO `t_systemexception` VALUES ('23', '2016-07-01 21:03:31', '210.32.92.204', 'CustomerServiceImpl.findcheckLogin', '13777480631.', 'LogicException', '用户名或密码错误！！');
INSERT INTO `t_systemexception` VALUES ('24', '2016-07-01 21:03:37', '210.32.92.204', 'CustomerServiceImpl.findcheckLogin', '13777480631.', 'LogicException', '用户名或密码错误！！');
INSERT INTO `t_systemexception` VALUES ('25', '2016-07-01 21:03:42', '210.32.92.204', 'CustomerServiceImpl.findcheckLogin', '13777480631.', 'LogicException', '用户名或密码错误！！');
INSERT INTO `t_systemexception` VALUES ('26', '2016-07-01 21:04:04', '210.32.92.204', 'ProductOrderServiceImpl.submitOrder', 'ProductOrderItemList....', 'DataIntegrityViolationException', '\r\n### Error updating database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null\r\n### The error may involve com.huashidai.weihuotong.mapper.TotalOrderMapper.save-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_totalOrder(orderNum,totalPrice,payPrice)       values(?,?,?)\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null\n; SQL []; Column \'orderNum\' cannot be null; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null');
INSERT INTO `t_systemexception` VALUES ('27', '2016-07-01 21:04:06', '210.32.92.204', 'ProductOrderServiceImpl.submitOrder', 'ProductOrderItemList....', 'DataIntegrityViolationException', '\r\n### Error updating database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null\r\n### The error may involve com.huashidai.weihuotong.mapper.TotalOrderMapper.save-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_totalOrder(orderNum,totalPrice,payPrice)       values(?,?,?)\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null\n; SQL []; Column \'orderNum\' cannot be null; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null');
INSERT INTO `t_systemexception` VALUES ('28', '2016-07-01 21:04:07', '210.32.92.204', 'ProductOrderServiceImpl.submitOrder', 'ProductOrderItemList....', 'DataIntegrityViolationException', '\r\n### Error updating database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null\r\n### The error may involve com.huashidai.weihuotong.mapper.TotalOrderMapper.save-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_totalOrder(orderNum,totalPrice,payPrice)       values(?,?,?)\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null\n; SQL []; Column \'orderNum\' cannot be null; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null');
INSERT INTO `t_systemexception` VALUES ('29', '2016-07-01 21:04:07', '210.32.92.204', 'ProductOrderServiceImpl.submitOrder', 'ProductOrderItemList....', 'DataIntegrityViolationException', '\r\n### Error updating database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null\r\n### The error may involve com.huashidai.weihuotong.mapper.TotalOrderMapper.save-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_totalOrder(orderNum,totalPrice,payPrice)       values(?,?,?)\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null\n; SQL []; Column \'orderNum\' cannot be null; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null');
INSERT INTO `t_systemexception` VALUES ('30', '2016-07-01 21:11:30', '210.32.92.204', 'ProductOrderServiceImpl.submitOrder', 'ProductOrderItemList....', 'DataIntegrityViolationException', '\r\n### Error updating database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null\r\n### The error may involve com.huashidai.weihuotong.mapper.TotalOrderMapper.save-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_totalOrder(orderNum,totalPrice,payPrice)       values(?,?,?)\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null\n; SQL []; Column \'orderNum\' cannot be null; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null');
INSERT INTO `t_systemexception` VALUES ('31', '2016-07-01 21:11:31', '210.32.92.204', 'ProductOrderServiceImpl.submitOrder', 'ProductOrderItemList....', 'DataIntegrityViolationException', '\r\n### Error updating database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null\r\n### The error may involve com.huashidai.weihuotong.mapper.TotalOrderMapper.save-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_totalOrder(orderNum,totalPrice,payPrice)       values(?,?,?)\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null\n; SQL []; Column \'orderNum\' cannot be null; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null');
INSERT INTO `t_systemexception` VALUES ('32', '2016-07-01 21:11:32', '210.32.92.204', 'ProductOrderServiceImpl.submitOrder', 'ProductOrderItemList....', 'DataIntegrityViolationException', '\r\n### Error updating database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null\r\n### The error may involve com.huashidai.weihuotong.mapper.TotalOrderMapper.save-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_totalOrder(orderNum,totalPrice,payPrice)       values(?,?,?)\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null\n; SQL []; Column \'orderNum\' cannot be null; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null');
INSERT INTO `t_systemexception` VALUES ('33', '2016-07-01 21:11:32', '210.32.92.204', 'ProductOrderServiceImpl.submitOrder', 'ProductOrderItemList....', 'DataIntegrityViolationException', '\r\n### Error updating database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null\r\n### The error may involve com.huashidai.weihuotong.mapper.TotalOrderMapper.save-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_totalOrder(orderNum,totalPrice,payPrice)       values(?,?,?)\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null\n; SQL []; Column \'orderNum\' cannot be null; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null');
INSERT INTO `t_systemexception` VALUES ('34', '2016-07-01 21:11:32', '210.32.92.204', 'ProductOrderServiceImpl.submitOrder', 'ProductOrderItemList....', 'DataIntegrityViolationException', '\r\n### Error updating database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null\r\n### The error may involve com.huashidai.weihuotong.mapper.TotalOrderMapper.save-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_totalOrder(orderNum,totalPrice,payPrice)       values(?,?,?)\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null\n; SQL []; Column \'orderNum\' cannot be null; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null');
INSERT INTO `t_systemexception` VALUES ('35', '2016-07-01 21:11:33', '210.32.92.204', 'ProductOrderServiceImpl.submitOrder', 'ProductOrderItemList....', 'DataIntegrityViolationException', '\r\n### Error updating database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null\r\n### The error may involve com.huashidai.weihuotong.mapper.TotalOrderMapper.save-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_totalOrder(orderNum,totalPrice,payPrice)       values(?,?,?)\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null\n; SQL []; Column \'orderNum\' cannot be null; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null');
INSERT INTO `t_systemexception` VALUES ('36', '2016-07-01 21:11:34', '210.32.92.204', 'ProductOrderServiceImpl.submitOrder', 'ProductOrderItemList....', 'DataIntegrityViolationException', '\r\n### Error updating database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null\r\n### The error may involve com.huashidai.weihuotong.mapper.TotalOrderMapper.save-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_totalOrder(orderNum,totalPrice,payPrice)       values(?,?,?)\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null\n; SQL []; Column \'orderNum\' cannot be null; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null');
INSERT INTO `t_systemexception` VALUES ('37', '2016-07-01 21:11:34', '210.32.92.204', 'ProductOrderServiceImpl.submitOrder', 'ProductOrderItemList....', 'DataIntegrityViolationException', '\r\n### Error updating database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null\r\n### The error may involve com.huashidai.weihuotong.mapper.TotalOrderMapper.save-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_totalOrder(orderNum,totalPrice,payPrice)       values(?,?,?)\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null\n; SQL []; Column \'orderNum\' cannot be null; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null');
INSERT INTO `t_systemexception` VALUES ('38', '2016-07-01 21:11:34', '210.32.92.204', 'ProductOrderServiceImpl.submitOrder', 'ProductOrderItemList....', 'DataIntegrityViolationException', '\r\n### Error updating database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null\r\n### The error may involve com.huashidai.weihuotong.mapper.TotalOrderMapper.save-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_totalOrder(orderNum,totalPrice,payPrice)       values(?,?,?)\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null\n; SQL []; Column \'orderNum\' cannot be null; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null');
INSERT INTO `t_systemexception` VALUES ('39', '2016-07-01 21:11:35', '210.32.92.204', 'ProductOrderServiceImpl.submitOrder', 'ProductOrderItemList....', 'DataIntegrityViolationException', '\r\n### Error updating database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null\r\n### The error may involve com.huashidai.weihuotong.mapper.TotalOrderMapper.save-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_totalOrder(orderNum,totalPrice,payPrice)       values(?,?,?)\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null\n; SQL []; Column \'orderNum\' cannot be null; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null');
INSERT INTO `t_systemexception` VALUES ('40', '2016-07-01 21:11:36', '210.32.92.204', 'ProductOrderServiceImpl.submitOrder', 'ProductOrderItemList....', 'DataIntegrityViolationException', '\r\n### Error updating database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null\r\n### The error may involve com.huashidai.weihuotong.mapper.TotalOrderMapper.save-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_totalOrder(orderNum,totalPrice,payPrice)       values(?,?,?)\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null\n; SQL []; Column \'orderNum\' cannot be null; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null');
INSERT INTO `t_systemexception` VALUES ('41', '2016-07-01 21:11:36', '210.32.92.204', 'ProductOrderServiceImpl.submitOrder', 'ProductOrderItemList....', 'DataIntegrityViolationException', '\r\n### Error updating database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null\r\n### The error may involve com.huashidai.weihuotong.mapper.TotalOrderMapper.save-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_totalOrder(orderNum,totalPrice,payPrice)       values(?,?,?)\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null\n; SQL []; Column \'orderNum\' cannot be null; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null');
INSERT INTO `t_systemexception` VALUES ('42', '2016-07-01 21:11:36', '210.32.92.204', 'ProductOrderServiceImpl.submitOrder', 'ProductOrderItemList....', 'DataIntegrityViolationException', '\r\n### Error updating database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null\r\n### The error may involve com.huashidai.weihuotong.mapper.TotalOrderMapper.save-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_totalOrder(orderNum,totalPrice,payPrice)       values(?,?,?)\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null\n; SQL []; Column \'orderNum\' cannot be null; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null');
INSERT INTO `t_systemexception` VALUES ('43', '2016-07-01 21:11:36', '210.32.92.204', 'ProductOrderServiceImpl.submitOrder', 'ProductOrderItemList....', 'DataIntegrityViolationException', '\r\n### Error updating database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null\r\n### The error may involve com.huashidai.weihuotong.mapper.TotalOrderMapper.save-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_totalOrder(orderNum,totalPrice,payPrice)       values(?,?,?)\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null\n; SQL []; Column \'orderNum\' cannot be null; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null');
INSERT INTO `t_systemexception` VALUES ('44', '2016-07-01 21:11:36', '210.32.92.204', 'ProductOrderServiceImpl.submitOrder', 'ProductOrderItemList....', 'DataIntegrityViolationException', '\r\n### Error updating database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null\r\n### The error may involve com.huashidai.weihuotong.mapper.TotalOrderMapper.save-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_totalOrder(orderNum,totalPrice,payPrice)       values(?,?,?)\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null\n; SQL []; Column \'orderNum\' cannot be null; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null');
INSERT INTO `t_systemexception` VALUES ('45', '2016-07-01 21:11:36', '210.32.92.204', 'ProductOrderServiceImpl.submitOrder', 'ProductOrderItemList....', 'DataIntegrityViolationException', '\r\n### Error updating database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null\r\n### The error may involve com.huashidai.weihuotong.mapper.TotalOrderMapper.save-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_totalOrder(orderNum,totalPrice,payPrice)       values(?,?,?)\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null\n; SQL []; Column \'orderNum\' cannot be null; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null');
INSERT INTO `t_systemexception` VALUES ('46', '2016-07-01 21:16:58', '210.32.92.204', 'CustomerServiceImpl.findcheckLogin', '13777480631.', 'LogicException', '用户名或密码错误！！');
INSERT INTO `t_systemexception` VALUES ('47', '2016-07-01 21:17:03', '210.32.92.204', 'ProductOrderServiceImpl.submitOrder', 'ProductOrderItemList....', 'DataIntegrityViolationException', '\r\n### Error updating database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null\r\n### The error may involve com.huashidai.weihuotong.mapper.TotalOrderMapper.save-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_totalOrder(orderNum,totalPrice,payPrice)       values(?,?,?)\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null\n; SQL []; Column \'orderNum\' cannot be null; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null');
INSERT INTO `t_systemexception` VALUES ('48', '2016-07-01 21:17:03', '210.32.92.204', 'ProductOrderServiceImpl.submitOrder', 'ProductOrderItemList....', 'DataIntegrityViolationException', '\r\n### Error updating database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null\r\n### The error may involve com.huashidai.weihuotong.mapper.TotalOrderMapper.save-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_totalOrder(orderNum,totalPrice,payPrice)       values(?,?,?)\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null\n; SQL []; Column \'orderNum\' cannot be null; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null');
INSERT INTO `t_systemexception` VALUES ('49', '2016-07-01 21:22:19', '210.32.92.204', 'ProxyGoodsServiceImpl.save', 'ProxyGoods', 'UncategorizedSQLException', '\r\n### Error updating database.  Cause: java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x90\\xB4\\xF0\\x9F...\' for column \'details\' at row 1\r\n### The error may involve com.huashidai.weihuotong.mapper.ProxyGoodsMapper.save-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_proxyGoods(price,details,goods_id,user_id)       values(?,?,?,?)\r\n### Cause: java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x90\\xB4\\xF0\\x9F...\' for column \'details\' at row 1\n; uncategorized SQLException for SQL []; SQL state [HY000]; error code [1366]; Incorrect string value: \'\\xF0\\x9F\\x90\\xB4\\xF0\\x9F...\' for column \'details\' at row 1; nested exception is java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x90\\xB4\\xF0\\x9F...\' for column \'details\' at row 1');
INSERT INTO `t_systemexception` VALUES ('50', '2016-07-01 21:22:19', '210.32.92.204', 'GoodsServiceImpl.proxyGoods', '66....', 'UncategorizedSQLException', '\r\n### Error updating database.  Cause: java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x90\\xB4\\xF0\\x9F...\' for column \'details\' at row 1\r\n### The error may involve com.huashidai.weihuotong.mapper.ProxyGoodsMapper.save-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_proxyGoods(price,details,goods_id,user_id)       values(?,?,?,?)\r\n### Cause: java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x90\\xB4\\xF0\\x9F...\' for column \'details\' at row 1\n; uncategorized SQLException for SQL []; SQL state [HY000]; error code [1366]; Incorrect string value: \'\\xF0\\x9F\\x90\\xB4\\xF0\\x9F...\' for column \'details\' at row 1; nested exception is java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x90\\xB4\\xF0\\x9F...\' for column \'details\' at row 1');
INSERT INTO `t_systemexception` VALUES ('51', '2016-07-01 21:22:23', '210.32.92.204', 'ProxyGoodsServiceImpl.save', 'ProxyGoods', 'UncategorizedSQLException', '\r\n### Error updating database.  Cause: java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x90\\xB4\\xF0\\x9F...\' for column \'details\' at row 1\r\n### The error may involve com.huashidai.weihuotong.mapper.ProxyGoodsMapper.save-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_proxyGoods(price,details,goods_id,user_id)       values(?,?,?,?)\r\n### Cause: java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x90\\xB4\\xF0\\x9F...\' for column \'details\' at row 1\n; uncategorized SQLException for SQL []; SQL state [HY000]; error code [1366]; Incorrect string value: \'\\xF0\\x9F\\x90\\xB4\\xF0\\x9F...\' for column \'details\' at row 1; nested exception is java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x90\\xB4\\xF0\\x9F...\' for column \'details\' at row 1');
INSERT INTO `t_systemexception` VALUES ('52', '2016-07-01 21:22:23', '210.32.92.204', 'GoodsServiceImpl.proxyGoods', '66....', 'UncategorizedSQLException', '\r\n### Error updating database.  Cause: java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x90\\xB4\\xF0\\x9F...\' for column \'details\' at row 1\r\n### The error may involve com.huashidai.weihuotong.mapper.ProxyGoodsMapper.save-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_proxyGoods(price,details,goods_id,user_id)       values(?,?,?,?)\r\n### Cause: java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x90\\xB4\\xF0\\x9F...\' for column \'details\' at row 1\n; uncategorized SQLException for SQL []; SQL state [HY000]; error code [1366]; Incorrect string value: \'\\xF0\\x9F\\x90\\xB4\\xF0\\x9F...\' for column \'details\' at row 1; nested exception is java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x90\\xB4\\xF0\\x9F...\' for column \'details\' at row 1');
INSERT INTO `t_systemexception` VALUES ('53', '2016-07-01 21:30:22', '210.32.92.204', 'ProxyGoodsServiceImpl.save', 'ProxyGoods', 'UncategorizedSQLException', '\r\n### Error updating database.  Cause: java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x8D\\x83\' for column \'details\' at row 1\r\n### The error may involve com.huashidai.weihuotong.mapper.ProxyGoodsMapper.save-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_proxyGoods(price,details,goods_id,user_id)       values(?,?,?,?)\r\n### Cause: java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x8D\\x83\' for column \'details\' at row 1\n; uncategorized SQLException for SQL []; SQL state [HY000]; error code [1366]; Incorrect string value: \'\\xF0\\x9F\\x8D\\x83\' for column \'details\' at row 1; nested exception is java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x8D\\x83\' for column \'details\' at row 1');
INSERT INTO `t_systemexception` VALUES ('54', '2016-07-01 21:30:22', '210.32.92.204', 'GoodsServiceImpl.proxyGoods', '63....', 'UncategorizedSQLException', '\r\n### Error updating database.  Cause: java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x8D\\x83\' for column \'details\' at row 1\r\n### The error may involve com.huashidai.weihuotong.mapper.ProxyGoodsMapper.save-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_proxyGoods(price,details,goods_id,user_id)       values(?,?,?,?)\r\n### Cause: java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x8D\\x83\' for column \'details\' at row 1\n; uncategorized SQLException for SQL []; SQL state [HY000]; error code [1366]; Incorrect string value: \'\\xF0\\x9F\\x8D\\x83\' for column \'details\' at row 1; nested exception is java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x8D\\x83\' for column \'details\' at row 1');
INSERT INTO `t_systemexception` VALUES ('55', '2016-07-01 21:36:18', '210.32.92.204', 'ArticleCommentServiceImpl.commentArticle', 'ArticleComment', 'UncategorizedSQLException', '\r\n### Error updating database.  Cause: java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x8D\\x83\' for column \'content\' at row 1\r\n### The error may involve com.huashidai.weihuotong.mapper.ArticleCommentMapper.save-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_articleComment (content,commentTime,      store_id,article_id)      values (?, ?,      ?,?)\r\n### Cause: java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x8D\\x83\' for column \'content\' at row 1\n; uncategorized SQLException for SQL []; SQL state [HY000]; error code [1366]; Incorrect string value: \'\\xF0\\x9F\\x8D\\x83\' for column \'content\' at row 1; nested exception is java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x8D\\x83\' for column \'content\' at row 1');
INSERT INTO `t_systemexception` VALUES ('56', '2016-07-01 21:36:43', '210.32.92.204', 'SystemExceptionServiceImpl.saveException', 'SystemException', 'UncategorizedSQLException', '\r\n### Error updating database.  Cause: java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x8C\\xB4\\xF0\\x9F...\' for column \'params\' at row 1\r\n### The error may involve com.huashidai.weihuotong.mapper.SystemExceptionMapper.save-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_systemException(opTime,opIP,function,exceptionDetail,exceptionCode,params)   values(?,?,?,?,?,?)\r\n### Cause: java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x8C\\xB4\\xF0\\x9F...\' for column \'params\' at row 1\n; uncategorized SQLException for SQL []; SQL state [HY000]; error code [1366]; Incorrect string value: \'\\xF0\\x9F\\x8C\\xB4\\xF0\\x9F...\' for column \'params\' at row 1; nested exception is java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x8C\\xB4\\xF0\\x9F...\' for column \'params\' at row 1');
INSERT INTO `t_systemexception` VALUES ('57', '2016-07-01 21:52:31', '112.17.244.88', 'StoreServiceImpl.enterStore', 'GoodsQuery.', 'LogicException', '店铺不存在！！');
INSERT INTO `t_systemexception` VALUES ('58', '2016-07-01 21:59:00', '210.32.92.204', 'StoreServiceImpl.enterStore', 'GoodsQuery.', 'LogicException', '店铺不存在！！');
INSERT INTO `t_systemexception` VALUES ('59', '2016-07-02 06:00:46', '210.32.92.204', 'StoreServiceImpl.enterStore', 'GoodsQuery.', 'LogicException', '店铺不存在！！');
INSERT INTO `t_systemexception` VALUES ('60', '2016-07-02 06:01:12', '210.32.92.204', 'GoodsServiceImpl.delete', '52.', 'LogicException', '商品未下架,不能删除!');
INSERT INTO `t_systemexception` VALUES ('61', '2016-07-02 06:01:12', '210.32.92.204', 'ProductServiceImpl.delete', '79', 'LogicException', '商品未下架,不能删除!');
INSERT INTO `t_systemexception` VALUES ('62', '2016-07-02 06:01:15', '210.32.92.204', 'GoodsServiceImpl.delete', '52.', 'LogicException', '商品未下架,不能删除!');
INSERT INTO `t_systemexception` VALUES ('63', '2016-07-02 06:01:16', '210.32.92.204', 'ProductServiceImpl.delete', '79', 'LogicException', '商品未下架,不能删除!');
INSERT INTO `t_systemexception` VALUES ('64', '2016-07-02 06:01:18', '210.32.92.204', 'GoodsServiceImpl.delete', '53.', 'LogicException', '商品未下架,不能删除!');
INSERT INTO `t_systemexception` VALUES ('65', '2016-07-02 06:01:18', '210.32.92.204', 'ProductServiceImpl.delete', '81', 'LogicException', '商品未下架,不能删除!');
INSERT INTO `t_systemexception` VALUES ('66', '2016-07-02 06:01:26', '210.32.92.204', 'GoodsServiceImpl.delete', '52.', 'LogicException', '商品未下架,不能删除!');
INSERT INTO `t_systemexception` VALUES ('67', '2016-07-02 06:01:26', '210.32.92.204', 'ProductServiceImpl.delete', '79', 'LogicException', '商品未下架,不能删除!');
INSERT INTO `t_systemexception` VALUES ('68', '2016-07-02 06:01:28', '210.32.92.204', 'GoodsServiceImpl.delete', '53.', 'LogicException', '商品未下架,不能删除!');
INSERT INTO `t_systemexception` VALUES ('69', '2016-07-02 06:01:28', '210.32.92.204', 'ProductServiceImpl.delete', '81', 'LogicException', '商品未下架,不能删除!');
INSERT INTO `t_systemexception` VALUES ('70', '2016-07-02 06:47:33', '210.32.92.204', 'ProxyGoodsServiceImpl.save', 'ProxyGoods', 'UncategorizedSQLException', '\r\n### Error updating database.  Cause: java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x90\\xA7\\xF0\\x9F...\' for column \'details\' at row 1\r\n### The error may involve com.huashidai.weihuotong.mapper.ProxyGoodsMapper.save-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_proxyGoods(price,details,goods_id,user_id)       values(?,?,?,?)\r\n### Cause: java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x90\\xA7\\xF0\\x9F...\' for column \'details\' at row 1\n; uncategorized SQLException for SQL []; SQL state [HY000]; error code [1366]; Incorrect string value: \'\\xF0\\x9F\\x90\\xA7\\xF0\\x9F...\' for column \'details\' at row 1; nested exception is java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x90\\xA7\\xF0\\x9F...\' for column \'details\' at row 1');
INSERT INTO `t_systemexception` VALUES ('71', '2016-07-02 06:47:33', '210.32.92.204', 'GoodsServiceImpl.proxyGoods', '67....', 'UncategorizedSQLException', '\r\n### Error updating database.  Cause: java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x90\\xA7\\xF0\\x9F...\' for column \'details\' at row 1\r\n### The error may involve com.huashidai.weihuotong.mapper.ProxyGoodsMapper.save-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_proxyGoods(price,details,goods_id,user_id)       values(?,?,?,?)\r\n### Cause: java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x90\\xA7\\xF0\\x9F...\' for column \'details\' at row 1\n; uncategorized SQLException for SQL []; SQL state [HY000]; error code [1366]; Incorrect string value: \'\\xF0\\x9F\\x90\\xA7\\xF0\\x9F...\' for column \'details\' at row 1; nested exception is java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x90\\xA7\\xF0\\x9F...\' for column \'details\' at row 1');
INSERT INTO `t_systemexception` VALUES ('72', '2016-07-02 10:13:15', '210.32.92.204', 'RecommendationServiceImpl.save', 'Recommendation', 'UncategorizedSQLException', '\r\n### Error updating database.  Cause: java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x98\\x82\' for column \'content\' at row 1\r\n### The error may involve com.huashidai.weihuotong.mapper.RecommendationMapper.save-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_recommendation(content,contact,time,user_id,recommendationType_id)   values(?,?,?,?,?)\r\n### Cause: java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x98\\x82\' for column \'content\' at row 1\n; uncategorized SQLException for SQL []; SQL state [HY000]; error code [1366]; Incorrect string value: \'\\xF0\\x9F\\x98\\x82\' for column \'content\' at row 1; nested exception is java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x98\\x82\' for column \'content\' at row 1');
INSERT INTO `t_systemexception` VALUES ('73', '2016-07-02 10:13:17', '210.32.92.204', 'RecommendationServiceImpl.save', 'Recommendation', 'UncategorizedSQLException', '\r\n### Error updating database.  Cause: java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x98\\x82\' for column \'content\' at row 1\r\n### The error may involve com.huashidai.weihuotong.mapper.RecommendationMapper.save-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_recommendation(content,contact,time,user_id,recommendationType_id)   values(?,?,?,?,?)\r\n### Cause: java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x98\\x82\' for column \'content\' at row 1\n; uncategorized SQLException for SQL []; SQL state [HY000]; error code [1366]; Incorrect string value: \'\\xF0\\x9F\\x98\\x82\' for column \'content\' at row 1; nested exception is java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x98\\x82\' for column \'content\' at row 1');
INSERT INTO `t_systemexception` VALUES ('74', '2016-07-02 10:13:18', '210.32.92.204', 'RecommendationServiceImpl.save', 'Recommendation', 'UncategorizedSQLException', '\r\n### Error updating database.  Cause: java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x98\\x82\' for column \'content\' at row 1\r\n### The error may involve com.huashidai.weihuotong.mapper.RecommendationMapper.save-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_recommendation(content,contact,time,user_id,recommendationType_id)   values(?,?,?,?,?)\r\n### Cause: java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x98\\x82\' for column \'content\' at row 1\n; uncategorized SQLException for SQL []; SQL state [HY000]; error code [1366]; Incorrect string value: \'\\xF0\\x9F\\x98\\x82\' for column \'content\' at row 1; nested exception is java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x98\\x82\' for column \'content\' at row 1');
INSERT INTO `t_systemexception` VALUES ('75', '2016-07-02 10:13:18', '210.32.92.204', 'RecommendationServiceImpl.save', 'Recommendation', 'UncategorizedSQLException', '\r\n### Error updating database.  Cause: java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x98\\x82\' for column \'content\' at row 1\r\n### The error may involve com.huashidai.weihuotong.mapper.RecommendationMapper.save-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_recommendation(content,contact,time,user_id,recommendationType_id)   values(?,?,?,?,?)\r\n### Cause: java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x98\\x82\' for column \'content\' at row 1\n; uncategorized SQLException for SQL []; SQL state [HY000]; error code [1366]; Incorrect string value: \'\\xF0\\x9F\\x98\\x82\' for column \'content\' at row 1; nested exception is java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x98\\x82\' for column \'content\' at row 1');
INSERT INTO `t_systemexception` VALUES ('76', '2016-07-02 10:13:19', '210.32.92.204', 'RecommendationServiceImpl.save', 'Recommendation', 'UncategorizedSQLException', '\r\n### Error updating database.  Cause: java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x98\\x82\' for column \'content\' at row 1\r\n### The error may involve com.huashidai.weihuotong.mapper.RecommendationMapper.save-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_recommendation(content,contact,time,user_id,recommendationType_id)   values(?,?,?,?,?)\r\n### Cause: java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x98\\x82\' for column \'content\' at row 1\n; uncategorized SQLException for SQL []; SQL state [HY000]; error code [1366]; Incorrect string value: \'\\xF0\\x9F\\x98\\x82\' for column \'content\' at row 1; nested exception is java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x98\\x82\' for column \'content\' at row 1');
INSERT INTO `t_systemexception` VALUES ('77', '2016-07-02 10:13:20', '210.32.92.204', 'RecommendationServiceImpl.save', 'Recommendation', 'UncategorizedSQLException', '\r\n### Error updating database.  Cause: java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x98\\x82\' for column \'content\' at row 1\r\n### The error may involve com.huashidai.weihuotong.mapper.RecommendationMapper.save-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_recommendation(content,contact,time,user_id,recommendationType_id)   values(?,?,?,?,?)\r\n### Cause: java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x98\\x82\' for column \'content\' at row 1\n; uncategorized SQLException for SQL []; SQL state [HY000]; error code [1366]; Incorrect string value: \'\\xF0\\x9F\\x98\\x82\' for column \'content\' at row 1; nested exception is java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x98\\x82\' for column \'content\' at row 1');
INSERT INTO `t_systemexception` VALUES ('78', '2016-07-02 10:51:51', '210.32.92.204', 'StoreServiceImpl.enterStore', 'GoodsQuery.', 'LogicException', '店铺不存在！！');
INSERT INTO `t_systemexception` VALUES ('79', '2016-07-02 10:51:57', '210.32.92.204', 'StoreServiceImpl.enterStore', 'GoodsQuery.', 'LogicException', '店铺不存在！！');
INSERT INTO `t_systemexception` VALUES ('80', '2016-07-02 11:05:10', '210.32.92.204', 'ArticleCommentServiceImpl.commentArticle', 'ArticleComment', 'UncategorizedSQLException', '\r\n### Error updating database.  Cause: java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x98\\x81\\xF0\\x9F...\' for column \'content\' at row 1\r\n### The error may involve com.huashidai.weihuotong.mapper.ArticleCommentMapper.save-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_articleComment (content,commentTime,      store_id,article_id)      values (?, ?,      ?,?)\r\n### Cause: java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x98\\x81\\xF0\\x9F...\' for column \'content\' at row 1\n; uncategorized SQLException for SQL []; SQL state [HY000]; error code [1366]; Incorrect string value: \'\\xF0\\x9F\\x98\\x81\\xF0\\x9F...\' for column \'content\' at row 1; nested exception is java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x98\\x81\\xF0\\x9F...\' for column \'content\' at row 1');
INSERT INTO `t_systemexception` VALUES ('81', '2016-07-02 11:38:51', '210.32.92.204', 'SystemExceptionServiceImpl.saveException', 'SystemException', 'UncategorizedSQLException', '\r\n### Error updating database.  Cause: java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x91\\xBF\\xF0\\x9F...\' for column \'params\' at row 1\r\n### The error may involve com.huashidai.weihuotong.mapper.SystemExceptionMapper.save-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_systemException(opTime,opIP,function,exceptionDetail,exceptionCode,params)   values(?,?,?,?,?,?)\r\n### Cause: java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x91\\xBF\\xF0\\x9F...\' for column \'params\' at row 1\n; uncategorized SQLException for SQL []; SQL state [HY000]; error code [1366]; Incorrect string value: \'\\xF0\\x9F\\x91\\xBF\\xF0\\x9F...\' for column \'params\' at row 1; nested exception is java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x91\\xBF\\xF0\\x9F...\' for column \'params\' at row 1');
INSERT INTO `t_systemexception` VALUES ('82', '2016-07-02 11:38:58', '210.32.92.204', 'SystemExceptionServiceImpl.saveException', 'SystemException', 'UncategorizedSQLException', '\r\n### Error updating database.  Cause: java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x98\\x92\\xF0\\x9F...\' for column \'params\' at row 1\r\n### The error may involve com.huashidai.weihuotong.mapper.SystemExceptionMapper.save-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_systemException(opTime,opIP,function,exceptionDetail,exceptionCode,params)   values(?,?,?,?,?,?)\r\n### Cause: java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x98\\x92\\xF0\\x9F...\' for column \'params\' at row 1\n; uncategorized SQLException for SQL []; SQL state [HY000]; error code [1366]; Incorrect string value: \'\\xF0\\x9F\\x98\\x92\\xF0\\x9F...\' for column \'params\' at row 1; nested exception is java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x98\\x92\\xF0\\x9F...\' for column \'params\' at row 1');
INSERT INTO `t_systemexception` VALUES ('83', '2016-07-02 11:48:23', '210.32.92.204', 'GoodsServiceImpl.delete', '53.', 'LogicException', '商品未下架,不能删除!');
INSERT INTO `t_systemexception` VALUES ('84', '2016-07-02 11:48:23', '210.32.92.204', 'ProductServiceImpl.delete', '81', 'LogicException', '商品未下架,不能删除!');
INSERT INTO `t_systemexception` VALUES ('85', '2016-07-03 10:05:54', '210.32.92.204', 'RecommendationServiceImpl.save', 'Recommendation', 'UncategorizedSQLException', '\r\n### Error updating database.  Cause: java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x98\\x80\' for column \'content\' at row 1\r\n### The error may involve com.huashidai.weihuotong.mapper.RecommendationMapper.save-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_recommendation(content,contact,time,user_id,recommendationType_id)   values(?,?,?,?,?)\r\n### Cause: java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x98\\x80\' for column \'content\' at row 1\n; uncategorized SQLException for SQL []; SQL state [HY000]; error code [1366]; Incorrect string value: \'\\xF0\\x9F\\x98\\x80\' for column \'content\' at row 1; nested exception is java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x98\\x80\' for column \'content\' at row 1');
INSERT INTO `t_systemexception` VALUES ('86', '2016-07-03 10:09:52', '210.32.92.204', 'SystemExceptionServiceImpl.saveException', 'SystemException', 'UncategorizedSQLException', '\r\n### Error updating database.  Cause: java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x98\\x80.\' for column \'params\' at row 1\r\n### The error may involve com.huashidai.weihuotong.mapper.SystemExceptionMapper.save-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_systemException(opTime,opIP,function,exceptionDetail,exceptionCode,params)   values(?,?,?,?,?,?)\r\n### Cause: java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x98\\x80.\' for column \'params\' at row 1\n; uncategorized SQLException for SQL []; SQL state [HY000]; error code [1366]; Incorrect string value: \'\\xF0\\x9F\\x98\\x80.\' for column \'params\' at row 1; nested exception is java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x98\\x80.\' for column \'params\' at row 1');
INSERT INTO `t_systemexception` VALUES ('87', '2016-07-03 10:29:56', '210.32.92.204', 'ProductOrderServiceImpl.submitOrder', 'ProductOrderItemList....', 'DataIntegrityViolationException', '\r\n### Error updating database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null\r\n### The error may involve com.huashidai.weihuotong.mapper.TotalOrderMapper.save-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_totalOrder(orderNum,totalPrice,payPrice)       values(?,?,?)\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null\n; SQL []; Column \'orderNum\' cannot be null; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null');
INSERT INTO `t_systemexception` VALUES ('88', '2016-07-03 10:29:57', '210.32.92.204', 'ProductOrderServiceImpl.submitOrder', 'ProductOrderItemList....', 'DataIntegrityViolationException', '\r\n### Error updating database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null\r\n### The error may involve com.huashidai.weihuotong.mapper.TotalOrderMapper.save-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_totalOrder(orderNum,totalPrice,payPrice)       values(?,?,?)\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null\n; SQL []; Column \'orderNum\' cannot be null; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null');
INSERT INTO `t_systemexception` VALUES ('89', '2016-07-03 10:29:58', '210.32.92.204', 'ProductOrderServiceImpl.submitOrder', 'ProductOrderItemList....', 'DataIntegrityViolationException', '\r\n### Error updating database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null\r\n### The error may involve com.huashidai.weihuotong.mapper.TotalOrderMapper.save-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_totalOrder(orderNum,totalPrice,payPrice)       values(?,?,?)\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null\n; SQL []; Column \'orderNum\' cannot be null; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null');
INSERT INTO `t_systemexception` VALUES ('90', '2016-07-03 10:29:59', '210.32.92.204', 'ProductOrderServiceImpl.submitOrder', 'ProductOrderItemList....', 'DataIntegrityViolationException', '\r\n### Error updating database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null\r\n### The error may involve com.huashidai.weihuotong.mapper.TotalOrderMapper.save-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_totalOrder(orderNum,totalPrice,payPrice)       values(?,?,?)\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null\n; SQL []; Column \'orderNum\' cannot be null; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null');
INSERT INTO `t_systemexception` VALUES ('91', '2016-07-03 10:29:59', '210.32.92.204', 'ProductOrderServiceImpl.submitOrder', 'ProductOrderItemList....', 'DataIntegrityViolationException', '\r\n### Error updating database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null\r\n### The error may involve com.huashidai.weihuotong.mapper.TotalOrderMapper.save-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_totalOrder(orderNum,totalPrice,payPrice)       values(?,?,?)\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null\n; SQL []; Column \'orderNum\' cannot be null; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'orderNum\' cannot be null');
INSERT INTO `t_systemexception` VALUES ('92', '2016-07-03 10:35:25', '210.32.92.204', 'StoreServiceImpl.storeInfo', '75', 'NullPointerException', null);
INSERT INTO `t_systemexception` VALUES ('93', '2016-07-03 10:35:25', '210.32.92.204', 'StoreServiceImpl.enterStore', 'GoodsQuery.', 'LogicException', '店铺不存在！！');
INSERT INTO `t_systemexception` VALUES ('94', '2016-07-03 10:35:32', '210.32.92.204', 'StoreServiceImpl.enterStore', 'GoodsQuery.', 'LogicException', '店铺不存在！！');
INSERT INTO `t_systemexception` VALUES ('95', '2016-07-03 10:35:34', '210.32.92.204', 'StoreServiceImpl.enterStore', 'GoodsQuery.', 'LogicException', '店铺不存在！！');
INSERT INTO `t_systemexception` VALUES ('96', '2016-07-03 10:35:34', '210.32.92.204', 'StoreServiceImpl.enterStore', 'GoodsQuery.', 'LogicException', '店铺不存在！！');
INSERT INTO `t_systemexception` VALUES ('97', '2016-07-03 10:35:34', '210.32.92.204', 'StoreServiceImpl.storeInfo', '75', 'NullPointerException', null);
INSERT INTO `t_systemexception` VALUES ('98', '2016-07-03 10:35:56', '210.32.92.204', 'StoreServiceImpl.enterStore', 'GoodsQuery.', 'LogicException', '店铺不存在！！');
INSERT INTO `t_systemexception` VALUES ('99', '2016-07-03 10:35:57', '210.32.92.204', 'StoreServiceImpl.enterStore', 'GoodsQuery.', 'LogicException', '店铺不存在！！');
INSERT INTO `t_systemexception` VALUES ('100', '2016-07-03 10:35:58', '210.32.92.204', 'StoreServiceImpl.enterStore', 'GoodsQuery.', 'LogicException', '店铺不存在！！');
INSERT INTO `t_systemexception` VALUES ('101', '2016-07-03 10:35:58', '210.32.92.204', 'StoreServiceImpl.enterStore', 'GoodsQuery.', 'LogicException', '店铺不存在！！');
INSERT INTO `t_systemexception` VALUES ('102', '2016-07-03 10:35:59', '210.32.92.204', 'StoreServiceImpl.enterStore', 'GoodsQuery.', 'LogicException', '店铺不存在！！');
INSERT INTO `t_systemexception` VALUES ('103', '2016-07-03 15:23:08', '210.32.92.204', 'StoreServiceImpl.storeInfo', '74', 'NullPointerException', null);
INSERT INTO `t_systemexception` VALUES ('104', '2016-07-03 15:23:08', '210.32.92.204', 'StoreServiceImpl.enterStore', 'GoodsQuery.', 'LogicException', '店铺不存在！！');
INSERT INTO `t_systemexception` VALUES ('105', '2016-07-03 15:23:23', '210.32.92.204', 'StoreServiceImpl.enterStore', 'GoodsQuery.', 'LogicException', '店铺不存在！！');
INSERT INTO `t_systemexception` VALUES ('106', '2016-07-03 15:23:45', '210.32.92.204', 'StoreServiceImpl.enterStore', 'GoodsQuery.', 'LogicException', '店铺不存在！！');
INSERT INTO `t_systemexception` VALUES ('107', '2016-07-03 15:23:48', '210.32.92.204', 'StoreServiceImpl.enterStore', 'GoodsQuery.', 'LogicException', '店铺不存在！！');
INSERT INTO `t_systemexception` VALUES ('108', '2016-07-03 15:23:50', '210.32.92.204', 'StoreServiceImpl.enterStore', 'GoodsQuery.', 'LogicException', '店铺不存在！！');
INSERT INTO `t_systemexception` VALUES ('109', '2016-07-03 15:23:51', '210.32.92.204', 'StoreServiceImpl.enterStore', 'GoodsQuery.', 'LogicException', '店铺不存在！！');
INSERT INTO `t_systemexception` VALUES ('110', '2016-07-03 15:23:52', '210.32.92.204', 'StoreServiceImpl.enterStore', 'GoodsQuery.', 'LogicException', '店铺不存在！！');
INSERT INTO `t_systemexception` VALUES ('111', '2016-07-03 15:23:52', '210.32.92.204', 'StoreServiceImpl.enterStore', 'GoodsQuery.', 'LogicException', '店铺不存在！！');
INSERT INTO `t_systemexception` VALUES ('112', '2016-07-03 15:23:52', '210.32.92.204', 'StoreServiceImpl.enterStore', 'GoodsQuery.', 'LogicException', '店铺不存在！！');
INSERT INTO `t_systemexception` VALUES ('113', '2016-07-03 15:23:55', '210.32.92.204', 'StoreServiceImpl.enterStore', 'GoodsQuery.', 'LogicException', '店铺不存在！！');
INSERT INTO `t_systemexception` VALUES ('114', '2016-07-03 15:23:55', '210.32.92.204', 'StoreServiceImpl.enterStore', 'GoodsQuery.', 'LogicException', '店铺不存在！！');
INSERT INTO `t_systemexception` VALUES ('115', '2016-07-03 15:23:56', '210.32.92.204', 'StoreServiceImpl.enterStore', 'GoodsQuery.', 'LogicException', '店铺不存在！！');
INSERT INTO `t_systemexception` VALUES ('116', '2016-07-03 15:23:56', '210.32.92.204', 'StoreServiceImpl.enterStore', 'GoodsQuery.', 'LogicException', '店铺不存在！！');
INSERT INTO `t_systemexception` VALUES ('117', '2016-07-03 15:23:58', '210.32.92.204', 'StoreServiceImpl.enterStore', 'GoodsQuery.', 'LogicException', '店铺不存在！！');
INSERT INTO `t_systemexception` VALUES ('118', '2016-07-03 15:23:59', '210.32.92.204', 'StoreServiceImpl.enterStore', 'GoodsQuery.', 'LogicException', '店铺不存在！！');
INSERT INTO `t_systemexception` VALUES ('119', '2016-07-03 15:23:59', '210.32.92.204', 'StoreServiceImpl.enterStore', 'GoodsQuery.', 'LogicException', '店铺不存在！！');
INSERT INTO `t_systemexception` VALUES ('120', '2016-07-03 15:24:02', '210.32.92.204', 'StoreServiceImpl.enterStore', 'GoodsQuery.', 'LogicException', '店铺不存在！！');
INSERT INTO `t_systemexception` VALUES ('121', '2016-07-03 15:24:11', '210.32.92.204', 'StoreServiceImpl.enterStore', 'GoodsQuery.', 'LogicException', '店铺不存在！！');
INSERT INTO `t_systemexception` VALUES ('122', '2016-07-03 15:24:19', '210.32.92.204', 'StoreServiceImpl.enterStore', 'GoodsQuery.', 'LogicException', '店铺不存在！！');
INSERT INTO `t_systemexception` VALUES ('123', '2016-07-03 15:24:20', '210.32.92.204', 'StoreServiceImpl.enterStore', 'GoodsQuery.', 'LogicException', '店铺不存在！！');
INSERT INTO `t_systemexception` VALUES ('124', '2016-07-03 15:24:21', '210.32.92.204', 'StoreServiceImpl.enterStore', 'GoodsQuery.', 'LogicException', '店铺不存在！！');
INSERT INTO `t_systemexception` VALUES ('125', '2016-07-03 15:24:21', '210.32.92.204', 'StoreServiceImpl.enterStore', 'GoodsQuery.', 'LogicException', '店铺不存在！！');
INSERT INTO `t_systemexception` VALUES ('126', '2016-07-03 15:24:22', '210.32.92.204', 'StoreServiceImpl.enterStore', 'GoodsQuery.', 'LogicException', '店铺不存在！！');
INSERT INTO `t_systemexception` VALUES ('127', '2016-07-03 15:24:23', '210.32.92.204', 'StoreServiceImpl.enterStore', 'GoodsQuery.', 'LogicException', '店铺不存在！！');
INSERT INTO `t_systemexception` VALUES ('128', '2016-07-03 15:24:28', '210.32.92.204', 'StoreServiceImpl.enterStore', 'GoodsQuery.', 'LogicException', '店铺不存在！！');
INSERT INTO `t_systemexception` VALUES ('129', '2016-07-03 15:24:28', '210.32.92.204', 'StoreServiceImpl.enterStore', 'GoodsQuery.', 'LogicException', '店铺不存在！！');
INSERT INTO `t_systemexception` VALUES ('130', '2016-07-03 15:24:28', '210.32.92.204', 'StoreServiceImpl.enterStore', 'GoodsQuery.', 'LogicException', '店铺不存在！！');
INSERT INTO `t_systemexception` VALUES ('131', '2016-07-03 15:24:49', '210.32.92.204', 'StoreServiceImpl.enterStore', 'GoodsQuery.', 'LogicException', '店铺不存在！！');
INSERT INTO `t_systemexception` VALUES ('132', '2016-07-03 15:24:51', '210.32.92.204', 'StoreServiceImpl.enterStore', 'GoodsQuery.', 'LogicException', '店铺不存在！！');
INSERT INTO `t_systemexception` VALUES ('133', '2016-07-03 15:25:39', '210.32.92.204', 'StoreServiceImpl.enterStore', 'GoodsQuery.', 'LogicException', '店铺不存在！！');
INSERT INTO `t_systemexception` VALUES ('134', '2016-07-03 17:55:37', '210.32.92.204', 'ArticleServiceImpl.addArticle', 'MultipartFile[].', 'UncategorizedSQLException', '\r\n### Error updating database.  Cause: java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x94\\xAE\\xF0\\x9F...\' for column \'content\' at row 1\r\n### The error may involve com.huashidai.weihuotong.mapper.ArticleMapper.save-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_article (name,content, time,commentNum,       store_id,articleType_id)      values (?, ?, ?,?,      ?,?)\r\n### Cause: java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x94\\xAE\\xF0\\x9F...\' for column \'content\' at row 1\n; uncategorized SQLException for SQL []; SQL state [HY000]; error code [1366]; Incorrect string value: \'\\xF0\\x9F\\x94\\xAE\\xF0\\x9F...\' for column \'content\' at row 1; nested exception is java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x94\\xAE\\xF0\\x9F...\' for column \'content\' at row 1');
INSERT INTO `t_systemexception` VALUES ('135', '2016-07-03 17:56:08', '210.32.92.204', 'ArticleCommentServiceImpl.commentArticle', 'ArticleComment', 'UncategorizedSQLException', '\r\n### Error updating database.  Cause: java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x94\\xAE\' for column \'content\' at row 1\r\n### The error may involve com.huashidai.weihuotong.mapper.ArticleCommentMapper.save-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_articleComment (content,commentTime,      store_id,article_id)      values (?, ?,      ?,?)\r\n### Cause: java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x94\\xAE\' for column \'content\' at row 1\n; uncategorized SQLException for SQL []; SQL state [HY000]; error code [1366]; Incorrect string value: \'\\xF0\\x9F\\x94\\xAE\' for column \'content\' at row 1; nested exception is java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x94\\xAE\' for column \'content\' at row 1');
INSERT INTO `t_systemexception` VALUES ('136', '2016-07-03 17:56:10', '210.32.92.204', 'ArticleCommentServiceImpl.commentArticle', 'ArticleComment', 'UncategorizedSQLException', '\r\n### Error updating database.  Cause: java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x94\\xAE\' for column \'content\' at row 1\r\n### The error may involve com.huashidai.weihuotong.mapper.ArticleCommentMapper.save-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_articleComment (content,commentTime,      store_id,article_id)      values (?, ?,      ?,?)\r\n### Cause: java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x94\\xAE\' for column \'content\' at row 1\n; uncategorized SQLException for SQL []; SQL state [HY000]; error code [1366]; Incorrect string value: \'\\xF0\\x9F\\x94\\xAE\' for column \'content\' at row 1; nested exception is java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x94\\xAE\' for column \'content\' at row 1');
INSERT INTO `t_systemexception` VALUES ('137', '2016-07-03 17:56:10', '210.32.92.204', 'ArticleCommentServiceImpl.commentArticle', 'ArticleComment', 'UncategorizedSQLException', '\r\n### Error updating database.  Cause: java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x94\\xAE\' for column \'content\' at row 1\r\n### The error may involve com.huashidai.weihuotong.mapper.ArticleCommentMapper.save-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_articleComment (content,commentTime,      store_id,article_id)      values (?, ?,      ?,?)\r\n### Cause: java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x94\\xAE\' for column \'content\' at row 1\n; uncategorized SQLException for SQL []; SQL state [HY000]; error code [1366]; Incorrect string value: \'\\xF0\\x9F\\x94\\xAE\' for column \'content\' at row 1; nested exception is java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x94\\xAE\' for column \'content\' at row 1');
INSERT INTO `t_systemexception` VALUES ('138', '2016-07-03 17:56:11', '210.32.92.204', 'ArticleCommentServiceImpl.commentArticle', 'ArticleComment', 'UncategorizedSQLException', '\r\n### Error updating database.  Cause: java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x94\\xAE\' for column \'content\' at row 1\r\n### The error may involve com.huashidai.weihuotong.mapper.ArticleCommentMapper.save-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_articleComment (content,commentTime,      store_id,article_id)      values (?, ?,      ?,?)\r\n### Cause: java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x94\\xAE\' for column \'content\' at row 1\n; uncategorized SQLException for SQL []; SQL state [HY000]; error code [1366]; Incorrect string value: \'\\xF0\\x9F\\x94\\xAE\' for column \'content\' at row 1; nested exception is java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x94\\xAE\' for column \'content\' at row 1');
INSERT INTO `t_systemexception` VALUES ('139', '2016-07-03 17:56:11', '210.32.92.204', 'ArticleCommentServiceImpl.commentArticle', 'ArticleComment', 'UncategorizedSQLException', '\r\n### Error updating database.  Cause: java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x94\\xAE\' for column \'content\' at row 1\r\n### The error may involve com.huashidai.weihuotong.mapper.ArticleCommentMapper.save-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_articleComment (content,commentTime,      store_id,article_id)      values (?, ?,      ?,?)\r\n### Cause: java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x94\\xAE\' for column \'content\' at row 1\n; uncategorized SQLException for SQL []; SQL state [HY000]; error code [1366]; Incorrect string value: \'\\xF0\\x9F\\x94\\xAE\' for column \'content\' at row 1; nested exception is java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x94\\xAE\' for column \'content\' at row 1');
INSERT INTO `t_systemexception` VALUES ('140', '2016-07-03 17:56:12', '210.32.92.204', 'ArticleCommentServiceImpl.commentArticle', 'ArticleComment', 'UncategorizedSQLException', '\r\n### Error updating database.  Cause: java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x94\\xAE\' for column \'content\' at row 1\r\n### The error may involve com.huashidai.weihuotong.mapper.ArticleCommentMapper.save-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_articleComment (content,commentTime,      store_id,article_id)      values (?, ?,      ?,?)\r\n### Cause: java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x94\\xAE\' for column \'content\' at row 1\n; uncategorized SQLException for SQL []; SQL state [HY000]; error code [1366]; Incorrect string value: \'\\xF0\\x9F\\x94\\xAE\' for column \'content\' at row 1; nested exception is java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x94\\xAE\' for column \'content\' at row 1');
INSERT INTO `t_systemexception` VALUES ('141', '2016-07-03 17:56:12', '210.32.92.204', 'ArticleCommentServiceImpl.commentArticle', 'ArticleComment', 'UncategorizedSQLException', '\r\n### Error updating database.  Cause: java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x94\\xAE\' for column \'content\' at row 1\r\n### The error may involve com.huashidai.weihuotong.mapper.ArticleCommentMapper.save-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_articleComment (content,commentTime,      store_id,article_id)      values (?, ?,      ?,?)\r\n### Cause: java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x94\\xAE\' for column \'content\' at row 1\n; uncategorized SQLException for SQL []; SQL state [HY000]; error code [1366]; Incorrect string value: \'\\xF0\\x9F\\x94\\xAE\' for column \'content\' at row 1; nested exception is java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x94\\xAE\' for column \'content\' at row 1');
INSERT INTO `t_systemexception` VALUES ('142', '2016-07-03 17:56:52', '210.32.92.204', 'ArticleCommentServiceImpl.commentArticle', 'ArticleComment', 'UncategorizedSQLException', '\r\n### Error updating database.  Cause: java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x94\\xAD\' for column \'content\' at row 1\r\n### The error may involve com.huashidai.weihuotong.mapper.ArticleCommentMapper.save-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_articleComment (content,commentTime,      store_id,article_id)      values (?, ?,      ?,?)\r\n### Cause: java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x94\\xAD\' for column \'content\' at row 1\n; uncategorized SQLException for SQL []; SQL state [HY000]; error code [1366]; Incorrect string value: \'\\xF0\\x9F\\x94\\xAD\' for column \'content\' at row 1; nested exception is java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x94\\xAD\' for column \'content\' at row 1');
INSERT INTO `t_systemexception` VALUES ('143', '2016-07-03 17:56:53', '210.32.92.204', 'ArticleCommentServiceImpl.commentArticle', 'ArticleComment', 'UncategorizedSQLException', '\r\n### Error updating database.  Cause: java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x94\\xAD\' for column \'content\' at row 1\r\n### The error may involve com.huashidai.weihuotong.mapper.ArticleCommentMapper.save-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_articleComment (content,commentTime,      store_id,article_id)      values (?, ?,      ?,?)\r\n### Cause: java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x94\\xAD\' for column \'content\' at row 1\n; uncategorized SQLException for SQL []; SQL state [HY000]; error code [1366]; Incorrect string value: \'\\xF0\\x9F\\x94\\xAD\' for column \'content\' at row 1; nested exception is java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x94\\xAD\' for column \'content\' at row 1');
INSERT INTO `t_systemexception` VALUES ('144', '2016-07-03 17:56:54', '210.32.92.204', 'ArticleCommentServiceImpl.commentArticle', 'ArticleComment', 'UncategorizedSQLException', '\r\n### Error updating database.  Cause: java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x94\\xAD\' for column \'content\' at row 1\r\n### The error may involve com.huashidai.weihuotong.mapper.ArticleCommentMapper.save-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_articleComment (content,commentTime,      store_id,article_id)      values (?, ?,      ?,?)\r\n### Cause: java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x94\\xAD\' for column \'content\' at row 1\n; uncategorized SQLException for SQL []; SQL state [HY000]; error code [1366]; Incorrect string value: \'\\xF0\\x9F\\x94\\xAD\' for column \'content\' at row 1; nested exception is java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x94\\xAD\' for column \'content\' at row 1');
INSERT INTO `t_systemexception` VALUES ('145', '2016-07-03 17:56:54', '210.32.92.204', 'ArticleCommentServiceImpl.commentArticle', 'ArticleComment', 'UncategorizedSQLException', '\r\n### Error updating database.  Cause: java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x94\\xAD\' for column \'content\' at row 1\r\n### The error may involve com.huashidai.weihuotong.mapper.ArticleCommentMapper.save-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_articleComment (content,commentTime,      store_id,article_id)      values (?, ?,      ?,?)\r\n### Cause: java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x94\\xAD\' for column \'content\' at row 1\n; uncategorized SQLException for SQL []; SQL state [HY000]; error code [1366]; Incorrect string value: \'\\xF0\\x9F\\x94\\xAD\' for column \'content\' at row 1; nested exception is java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x94\\xAD\' for column \'content\' at row 1');
INSERT INTO `t_systemexception` VALUES ('146', '2016-07-03 17:56:54', '210.32.92.204', 'ArticleCommentServiceImpl.commentArticle', 'ArticleComment', 'UncategorizedSQLException', '\r\n### Error updating database.  Cause: java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x94\\xAD\' for column \'content\' at row 1\r\n### The error may involve com.huashidai.weihuotong.mapper.ArticleCommentMapper.save-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_articleComment (content,commentTime,      store_id,article_id)      values (?, ?,      ?,?)\r\n### Cause: java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x94\\xAD\' for column \'content\' at row 1\n; uncategorized SQLException for SQL []; SQL state [HY000]; error code [1366]; Incorrect string value: \'\\xF0\\x9F\\x94\\xAD\' for column \'content\' at row 1; nested exception is java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x94\\xAD\' for column \'content\' at row 1');
INSERT INTO `t_systemexception` VALUES ('147', '2016-07-03 17:56:54', '210.32.92.204', 'ArticleCommentServiceImpl.commentArticle', 'ArticleComment', 'UncategorizedSQLException', '\r\n### Error updating database.  Cause: java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x94\\xAD\' for column \'content\' at row 1\r\n### The error may involve com.huashidai.weihuotong.mapper.ArticleCommentMapper.save-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_articleComment (content,commentTime,      store_id,article_id)      values (?, ?,      ?,?)\r\n### Cause: java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x94\\xAD\' for column \'content\' at row 1\n; uncategorized SQLException for SQL []; SQL state [HY000]; error code [1366]; Incorrect string value: \'\\xF0\\x9F\\x94\\xAD\' for column \'content\' at row 1; nested exception is java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x94\\xAD\' for column \'content\' at row 1');
INSERT INTO `t_systemexception` VALUES ('148', '2016-07-03 17:56:55', '210.32.92.204', 'ArticleCommentServiceImpl.commentArticle', 'ArticleComment', 'UncategorizedSQLException', '\r\n### Error updating database.  Cause: java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x94\\xAD\' for column \'content\' at row 1\r\n### The error may involve com.huashidai.weihuotong.mapper.ArticleCommentMapper.save-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_articleComment (content,commentTime,      store_id,article_id)      values (?, ?,      ?,?)\r\n### Cause: java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x94\\xAD\' for column \'content\' at row 1\n; uncategorized SQLException for SQL []; SQL state [HY000]; error code [1366]; Incorrect string value: \'\\xF0\\x9F\\x94\\xAD\' for column \'content\' at row 1; nested exception is java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x94\\xAD\' for column \'content\' at row 1');
INSERT INTO `t_systemexception` VALUES ('149', '2016-07-03 17:57:27', '210.32.92.204', 'ArticleCommentServiceImpl.commentArticle', 'ArticleComment', 'UncategorizedSQLException', '\r\n### Error updating database.  Cause: java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x93\\xA3(`...\' for column \'content\' at row 1\r\n### The error may involve com.huashidai.weihuotong.mapper.ArticleCommentMapper.save-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_articleComment (content,commentTime,      store_id,article_id)      values (?, ?,      ?,?)\r\n### Cause: java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x93\\xA3(`...\' for column \'content\' at row 1\n; uncategorized SQLException for SQL []; SQL state [HY000]; error code [1366]; Incorrect string value: \'\\xF0\\x9F\\x93\\xA3(`...\' for column \'content\' at row 1; nested exception is java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x93\\xA3(`...\' for column \'content\' at row 1');
INSERT INTO `t_systemexception` VALUES ('150', '2016-07-03 17:57:28', '210.32.92.204', 'ArticleCommentServiceImpl.commentArticle', 'ArticleComment', 'UncategorizedSQLException', '\r\n### Error updating database.  Cause: java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x93\\xA3(`...\' for column \'content\' at row 1\r\n### The error may involve com.huashidai.weihuotong.mapper.ArticleCommentMapper.save-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_articleComment (content,commentTime,      store_id,article_id)      values (?, ?,      ?,?)\r\n### Cause: java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x93\\xA3(`...\' for column \'content\' at row 1\n; uncategorized SQLException for SQL []; SQL state [HY000]; error code [1366]; Incorrect string value: \'\\xF0\\x9F\\x93\\xA3(`...\' for column \'content\' at row 1; nested exception is java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x93\\xA3(`...\' for column \'content\' at row 1');
INSERT INTO `t_systemexception` VALUES ('151', '2016-07-03 17:57:29', '210.32.92.204', 'ArticleCommentServiceImpl.commentArticle', 'ArticleComment', 'UncategorizedSQLException', '\r\n### Error updating database.  Cause: java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x93\\xA3(`...\' for column \'content\' at row 1\r\n### The error may involve com.huashidai.weihuotong.mapper.ArticleCommentMapper.save-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_articleComment (content,commentTime,      store_id,article_id)      values (?, ?,      ?,?)\r\n### Cause: java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x93\\xA3(`...\' for column \'content\' at row 1\n; uncategorized SQLException for SQL []; SQL state [HY000]; error code [1366]; Incorrect string value: \'\\xF0\\x9F\\x93\\xA3(`...\' for column \'content\' at row 1; nested exception is java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x93\\xA3(`...\' for column \'content\' at row 1');
INSERT INTO `t_systemexception` VALUES ('152', '2016-07-03 17:57:29', '210.32.92.204', 'ArticleCommentServiceImpl.commentArticle', 'ArticleComment', 'UncategorizedSQLException', '\r\n### Error updating database.  Cause: java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x93\\xA3(`...\' for column \'content\' at row 1\r\n### The error may involve com.huashidai.weihuotong.mapper.ArticleCommentMapper.save-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_articleComment (content,commentTime,      store_id,article_id)      values (?, ?,      ?,?)\r\n### Cause: java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x93\\xA3(`...\' for column \'content\' at row 1\n; uncategorized SQLException for SQL []; SQL state [HY000]; error code [1366]; Incorrect string value: \'\\xF0\\x9F\\x93\\xA3(`...\' for column \'content\' at row 1; nested exception is java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x93\\xA3(`...\' for column \'content\' at row 1');
INSERT INTO `t_systemexception` VALUES ('153', '2016-07-03 17:57:29', '210.32.92.204', 'ArticleCommentServiceImpl.commentArticle', 'ArticleComment', 'UncategorizedSQLException', '\r\n### Error updating database.  Cause: java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x93\\xA3(`...\' for column \'content\' at row 1\r\n### The error may involve com.huashidai.weihuotong.mapper.ArticleCommentMapper.save-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_articleComment (content,commentTime,      store_id,article_id)      values (?, ?,      ?,?)\r\n### Cause: java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x93\\xA3(`...\' for column \'content\' at row 1\n; uncategorized SQLException for SQL []; SQL state [HY000]; error code [1366]; Incorrect string value: \'\\xF0\\x9F\\x93\\xA3(`...\' for column \'content\' at row 1; nested exception is java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x93\\xA3(`...\' for column \'content\' at row 1');
INSERT INTO `t_systemexception` VALUES ('154', '2016-07-03 17:57:29', '210.32.92.204', 'ArticleCommentServiceImpl.commentArticle', 'ArticleComment', 'UncategorizedSQLException', '\r\n### Error updating database.  Cause: java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x93\\xA3(`...\' for column \'content\' at row 1\r\n### The error may involve com.huashidai.weihuotong.mapper.ArticleCommentMapper.save-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_articleComment (content,commentTime,      store_id,article_id)      values (?, ?,      ?,?)\r\n### Cause: java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x93\\xA3(`...\' for column \'content\' at row 1\n; uncategorized SQLException for SQL []; SQL state [HY000]; error code [1366]; Incorrect string value: \'\\xF0\\x9F\\x93\\xA3(`...\' for column \'content\' at row 1; nested exception is java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x93\\xA3(`...\' for column \'content\' at row 1');
INSERT INTO `t_systemexception` VALUES ('155', '2016-07-04 11:18:18', '0:0:0:0:0:0:0:1', 'StoreServiceImpl.storeInfo', '60', 'NullPointerException', null);
INSERT INTO `t_systemexception` VALUES ('156', '2016-07-04 11:32:53', '110.184.47.228', 'ArticleCommentServiceImpl.commentArticle', 'ArticleComment', 'UncategorizedSQLException', '\r\n### Error updating database.  Cause: java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x98\\x84\' for column \'content\' at row 1\r\n### The error may involve com.huashidai.weihuotong.mapper.ArticleCommentMapper.save-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_articleComment (content,commentTime,      store_id,article_id)      values (?, ?,      ?,?)\r\n### Cause: java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x98\\x84\' for column \'content\' at row 1\n; uncategorized SQLException for SQL []; SQL state [HY000]; error code [1366]; Incorrect string value: \'\\xF0\\x9F\\x98\\x84\' for column \'content\' at row 1; nested exception is java.sql.SQLException: Incorrect string value: \'\\xF0\\x9F\\x98\\x84\' for column \'content\' at row 1');
INSERT INTO `t_systemexception` VALUES ('157', '2016-07-04 15:06:26', '110.184.47.228', 'GoodsServiceImpl.toEditGoods', '1', 'NullPointerException', null);
INSERT INTO `t_systemexception` VALUES ('158', '2016-07-04 15:06:29', '110.184.47.228', 'GoodsServiceImpl.toEditGoods', '2', 'NullPointerException', null);
INSERT INTO `t_systemexception` VALUES ('159', '2016-07-04 15:06:33', '110.184.47.228', 'GoodsServiceImpl.toEditGoods', '3', 'NullPointerException', null);
INSERT INTO `t_systemexception` VALUES ('160', '2016-07-04 15:06:38', '110.184.47.228', 'GoodsServiceImpl.toEditGoods', '45', 'NullPointerException', null);

-- ----------------------------
-- Table structure for t_systemlog
-- ----------------------------
DROP TABLE IF EXISTS `t_systemlog`;
CREATE TABLE `t_systemlog` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `opUser` varchar(20) DEFAULT NULL,
  `opTime` datetime DEFAULT NULL,
  `opIP` varchar(32) DEFAULT NULL,
  `function` varchar(255) DEFAULT NULL,
  `params` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=374 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_systemlog
-- ----------------------------
INSERT INTO `t_systemlog` VALUES ('1', null, '2016-07-01 10:07:16', '210.32.92.204', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getPromotion', null, null);
INSERT INTO `t_systemlog` VALUES ('2', null, '2016-07-01 10:07:21', '210.32.92.204', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:getByStore', null, null);
INSERT INTO `t_systemlog` VALUES ('3', null, '2016-07-01 10:07:21', '210.32.92.204', 'com.huashidai.weihuotong.service.impl.UserImageServiceImpl:getByUser', null, null);
INSERT INTO `t_systemlog` VALUES ('4', null, '2016-07-01 10:07:21', '210.32.92.204', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:searchGoods', null, null);
INSERT INTO `t_systemlog` VALUES ('5', null, '2016-07-01 10:07:21', '210.32.92.204', 'com.huashidai.weihuotong.service.impl.StoreFavoritesServiceImpl:isFavorites', null, null);
INSERT INTO `t_systemlog` VALUES ('6', null, '2016-07-01 10:07:21', '210.32.92.204', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:enterStore', null, null);
INSERT INTO `t_systemlog` VALUES ('7', null, '2016-07-01 10:07:21', '210.32.92.204', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:searchGoods', null, null);
INSERT INTO `t_systemlog` VALUES ('8', null, '2016-07-01 10:07:22', '210.32.92.204', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getPromotion', null, null);
INSERT INTO `t_systemlog` VALUES ('9', null, '2016-07-01 10:07:22', '210.32.92.204', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getPromotion', null, null);
INSERT INTO `t_systemlog` VALUES ('10', null, '2016-07-01 10:07:25', '210.32.92.204', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:getByStore', null, null);
INSERT INTO `t_systemlog` VALUES ('11', null, '2016-07-01 10:07:25', '210.32.92.204', 'com.huashidai.weihuotong.service.impl.UserImageServiceImpl:getByUser', null, null);
INSERT INTO `t_systemlog` VALUES ('12', null, '2016-07-01 10:07:25', '210.32.92.204', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:searchGoods', null, null);
INSERT INTO `t_systemlog` VALUES ('13', null, '2016-07-01 10:07:25', '210.32.92.204', 'com.huashidai.weihuotong.service.impl.StoreFavoritesServiceImpl:isFavorites', null, null);
INSERT INTO `t_systemlog` VALUES ('14', null, '2016-07-01 10:07:25', '210.32.92.204', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:enterStore', null, null);
INSERT INTO `t_systemlog` VALUES ('15', null, '2016-07-01 10:07:25', '210.32.92.204', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:searchGoods', null, null);
INSERT INTO `t_systemlog` VALUES ('16', null, '2016-07-01 10:07:26', '210.32.92.204', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getPromotion', null, null);
INSERT INTO `t_systemlog` VALUES ('17', null, '2016-07-01 10:07:26', '210.32.92.204', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getPromotion', null, null);
INSERT INTO `t_systemlog` VALUES ('18', null, '2016-07-01 10:07:27', '210.32.92.204', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:getByStore', null, null);
INSERT INTO `t_systemlog` VALUES ('19', null, '2016-07-01 10:07:27', '210.32.92.204', 'com.huashidai.weihuotong.service.impl.UserImageServiceImpl:getByUser', null, null);
INSERT INTO `t_systemlog` VALUES ('20', null, '2016-07-01 10:07:27', '210.32.92.204', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:searchGoods', null, null);
INSERT INTO `t_systemlog` VALUES ('21', null, '2016-07-01 10:07:27', '210.32.92.204', 'com.huashidai.weihuotong.service.impl.StoreFavoritesServiceImpl:isFavorites', null, null);
INSERT INTO `t_systemlog` VALUES ('22', null, '2016-07-01 10:07:27', '210.32.92.204', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:enterStore', null, null);
INSERT INTO `t_systemlog` VALUES ('23', null, '2016-07-01 10:07:28', '210.32.92.204', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:searchGoods', null, null);
INSERT INTO `t_systemlog` VALUES ('24', null, '2016-07-01 10:07:30', '210.32.92.204', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getPromotion', null, null);
INSERT INTO `t_systemlog` VALUES ('25', null, '2016-07-01 10:07:32', '210.32.92.204', 'com.huashidai.weihuotong.service.impl.UserImageServiceImpl:getByUser', null, null);
INSERT INTO `t_systemlog` VALUES ('26', null, '2016-07-01 10:07:32', '210.32.92.204', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:getUserInfo', null, null);
INSERT INTO `t_systemlog` VALUES ('27', null, '2016-07-01 10:07:35', '210.32.92.204', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:searchStore', null, null);
INSERT INTO `t_systemlog` VALUES ('28', null, '2016-07-01 10:07:38', '210.32.92.204', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:typesByParent', null, null);
INSERT INTO `t_systemlog` VALUES ('29', null, '2016-07-01 10:07:38', '210.32.92.204', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getItemByParent', null, null);
INSERT INTO `t_systemlog` VALUES ('30', null, '2016-07-01 10:07:40', '210.32.92.204', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:searchGoods', null, null);
INSERT INTO `t_systemlog` VALUES ('31', '超级管理员', '2016-07-01 10:36:58', '110.184.45.135', 'com.huashidai.weihuotong.controller.SystemExceptionController.index()', '', '系统异常主页');
INSERT INTO `t_systemlog` VALUES ('32', '超级管理员', '2016-07-01 10:36:59', '110.184.45.135', 'com.huashidai.weihuotong.controller.SystemExceptionController.query()', '20,1,null,null;', '系统异常查询');
INSERT INTO `t_systemlog` VALUES ('33', '超级管理员', '2016-07-01 10:37:00', '110.184.45.135', 'com.huashidai.weihuotong.controller.SystemLogController.index()', '', '系统日志主页');
INSERT INTO `t_systemlog` VALUES ('34', '超级管理员', '2016-07-01 10:37:01', '110.184.45.135', 'com.huashidai.weihuotong.controller.SystemLogController.query()', '20,1,null,null;', '系统日志查询');
INSERT INTO `t_systemlog` VALUES ('35', '超级管理员', '2016-07-01 10:37:04', '110.184.45.135', 'com.huashidai.weihuotong.controller.SystemLogController.query()', '20,1,null,null;', '系统日志查询');
INSERT INTO `t_systemlog` VALUES ('36', '超级管理员', '2016-07-01 10:37:16', '110.184.45.135', 'com.huashidai.weihuotong.controller.SystemLogController.query()', '20,1,null,null;', '系统日志查询');
INSERT INTO `t_systemlog` VALUES ('37', '超级管理员', '2016-07-01 10:37:17', '110.184.45.135', 'com.huashidai.weihuotong.controller.SystemLogController.query()', '20,1,null,null;', '系统日志查询');
INSERT INTO `t_systemlog` VALUES ('38', '超级管理员', '2016-07-01 10:37:19', '110.184.45.135', 'com.huashidai.weihuotong.controller.SystemLogController.query()', '20,1,null,null;', '系统日志查询');
INSERT INTO `t_systemlog` VALUES ('39', '超级管理员', '2016-07-01 10:37:20', '110.184.45.135', 'com.huashidai.weihuotong.controller.SystemLogController.query()', '20,1,null,null;', '系统日志查询');
INSERT INTO `t_systemlog` VALUES ('40', '超级管理员', '2016-07-01 10:37:21', '110.184.45.135', 'com.huashidai.weihuotong.controller.SystemLogController.query()', '20,1,null,null;', '系统日志查询');
INSERT INTO `t_systemlog` VALUES ('41', '超级管理员', '2016-07-01 10:37:28', '110.184.45.135', 'com.huashidai.weihuotong.controller.SystemLogController.index()', '', '系统日志主页');
INSERT INTO `t_systemlog` VALUES ('42', '超级管理员', '2016-07-01 10:37:28', '110.184.45.135', 'com.huashidai.weihuotong.controller.SystemLogController.query()', '20,1,null,null;', '系统日志查询');
INSERT INTO `t_systemlog` VALUES ('43', '超级管理员', '2016-07-01 10:37:51', '110.184.45.135', 'com.huashidai.weihuotong.controller.SystemLogController.query()', '50,1,null,null;', '系统日志查询');
INSERT INTO `t_systemlog` VALUES ('44', '超级管理员', '2016-07-01 10:38:18', '110.184.45.135', 'com.huashidai.weihuotong.controller.SystemLogController.index()', '', '系统日志主页');
INSERT INTO `t_systemlog` VALUES ('45', '超级管理员', '2016-07-01 10:38:19', '110.184.45.135', 'com.huashidai.weihuotong.controller.SystemLogController.query()', '20,1,null,null;', '系统日志查询');
INSERT INTO `t_systemlog` VALUES ('46', '超级管理员', '2016-07-01 10:38:31', '110.184.45.135', 'com.huashidai.weihuotong.controller.SystemLogController.query()', '20,1,2016-06-30,2016-06-30;', '系统日志查询');
INSERT INTO `t_systemlog` VALUES ('47', '超级管理员', '2016-07-01 10:38:34', '110.184.45.135', 'com.huashidai.weihuotong.controller.SystemLogController.query()', '20,1,2016-06-30,2016-06-01;', '系统日志查询');
INSERT INTO `t_systemlog` VALUES ('48', '超级管理员', '2016-07-01 10:38:37', '110.184.45.135', 'com.huashidai.weihuotong.controller.SystemLogController.query()', '20,1,2016-06-30,2016-06-02;', '系统日志查询');
INSERT INTO `t_systemlog` VALUES ('49', '超级管理员', '2016-07-01 10:38:56', '110.184.45.135', 'com.huashidai.weihuotong.controller.SystemLogController.query()', '20,1,2016-06-30,2016-06-02;', '系统日志查询');
INSERT INTO `t_systemlog` VALUES ('50', '超级管理员', '2016-07-01 10:39:08', '110.184.45.135', 'com.huashidai.weihuotong.controller.SystemLogController.query()', '20,1,2016-06-30,2016-07-01;', '系统日志查询');
INSERT INTO `t_systemlog` VALUES ('51', '超级管理员', '2016-07-01 10:39:12', '110.184.45.135', 'com.huashidai.weihuotong.controller.SystemLogController.query()', '20,1,2016-06-30,2016-07-02;', '系统日志查询');
INSERT INTO `t_systemlog` VALUES ('52', '超级管理员', '2016-07-01 10:41:04', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.MarginOrderCotroller.marginOrder()', '', '保证金订单首页');
INSERT INTO `t_systemlog` VALUES ('53', '超级管理员', '2016-07-01 10:41:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.MarginOrderCotroller.query()', '20,1,null,-1,null;', '保证金订单查询');
INSERT INTO `t_systemlog` VALUES ('54', '超级管理员', '2016-07-01 10:40:32', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.SystemLogController.index()', '', '系统日志主页');
INSERT INTO `t_systemlog` VALUES ('55', '超级管理员', '2016-07-01 10:40:53', '110.184.45.135', 'com.huashidai.weihuotong.controller.ProductOrderCotroller.productOrder()', '', '商品订单首页');
INSERT INTO `t_systemlog` VALUES ('56', '超级管理员', '2016-07-01 10:40:54', '110.184.45.135', 'com.huashidai.weihuotong.controller.ProductOrderCotroller.query()', '20,1,-99,null,null,-1,-1,-1,null,null,null,null;', '商品订单查询');
INSERT INTO `t_systemlog` VALUES ('57', '超级管理员', '2016-07-01 10:40:58', '110.184.45.135', 'com.huashidai.weihuotong.controller.ProductOrderCotroller.orderItem()', '336;', '商品订单订单明细');
INSERT INTO `t_systemlog` VALUES ('58', '超级管理员', '2016-07-01 10:41:14', '110.184.45.135', 'com.huashidai.weihuotong.controller.ProductOrderCotroller.query()', '20,1,0,,,-1,-1,-1,,,,-99;', '商品订单查询');
INSERT INTO `t_systemlog` VALUES ('59', '超级管理员', '2016-07-01 10:47:35', '110.184.45.135', 'com.huashidai.weihuotong.controller.ArticleCotroller.article()', '', '文章主页');
INSERT INTO `t_systemlog` VALUES ('60', '超级管理员', '2016-07-01 10:47:36', '110.184.45.135', 'com.huashidai.weihuotong.controller.ArticleCotroller.query()', '20,1,-1,-1, 1;', '文章查询');
INSERT INTO `t_systemlog` VALUES ('61', '超级管理员', '2016-07-01 10:47:36', '110.184.45.135', 'com.huashidai.weihuotong.controller.ArticleTypeCotroller.showArticleType()', 'null;', '文章分类列表');
INSERT INTO `t_systemlog` VALUES ('62', '超级管理员', '2016-07-01 10:47:49', '110.184.45.135', 'com.huashidai.weihuotong.controller.ArticleCotroller.showArticle()', '13;', '文章文章内容');
INSERT INTO `t_systemlog` VALUES ('63', '超级管理员', '2016-07-01 10:47:54', '110.184.45.135', 'com.huashidai.weihuotong.controller.ArticleCommentCotroller.query()', '10,1,13;', '文章评论查询');
INSERT INTO `t_systemlog` VALUES ('64', '超级管理员', '2016-07-01 10:47:56', '110.184.45.135', 'com.huashidai.weihuotong.controller.ArticleCommentCotroller.query()', '10,1,12;', '文章评论查询');
INSERT INTO `t_systemlog` VALUES ('65', '超级管理员', '2016-07-01 10:48:03', '110.184.45.135', 'com.huashidai.weihuotong.controller.ArticleTypeCotroller.articleType()', '', '文章分类主页');
INSERT INTO `t_systemlog` VALUES ('66', '超级管理员', '2016-07-01 10:48:03', '110.184.45.135', 'com.huashidai.weihuotong.controller.ArticleTypeCotroller.query()', '10,1,;', '文章查询');
INSERT INTO `t_systemlog` VALUES ('67', '超级管理员', '2016-07-01 10:48:05', '110.184.45.135', 'com.huashidai.weihuotong.controller.UserController.index()', '', '用户账号主页');
INSERT INTO `t_systemlog` VALUES ('68', '超级管理员', '2016-07-01 10:48:06', '110.184.45.135', 'com.huashidai.weihuotong.controller.UserController.query()', '20,1,null,-99,-1,null;', '用户账号查询');
INSERT INTO `t_systemlog` VALUES ('69', '超级管理员', '2016-07-01 10:48:10', '110.184.45.135', 'com.huashidai.weihuotong.controller.AccountCotroller.account()', '', '用户账户主页');
INSERT INTO `t_systemlog` VALUES ('70', '超级管理员', '2016-07-01 10:48:11', '110.184.45.135', 'com.huashidai.weihuotong.controller.AccountCotroller.query()', '20,1,-1,null;', '用户账户查询');
INSERT INTO `t_systemlog` VALUES ('71', '超级管理员', '2016-07-01 10:48:14', '110.184.45.135', 'com.huashidai.weihuotong.controller.AccountCotroller.accountFlow()', '5,1,16;', '用户账户账户流水');
INSERT INTO `t_systemlog` VALUES ('72', '超级管理员', '2016-07-01 10:48:17', '110.184.45.135', 'com.huashidai.weihuotong.controller.AccountCotroller.accountFlow()', '5,1,19;', '用户账户账户流水');
INSERT INTO `t_systemlog` VALUES ('73', '超级管理员', '2016-07-01 10:48:19', '110.184.45.135', 'com.huashidai.weihuotong.controller.AccountCotroller.accountFlow()', '5,1,21;', '用户账户账户流水');
INSERT INTO `t_systemlog` VALUES ('74', '超级管理员', '2016-07-01 10:48:20', '110.184.45.135', 'com.huashidai.weihuotong.controller.AccountCotroller.accountFlow()', '5,1,20;', '用户账户账户流水');
INSERT INTO `t_systemlog` VALUES ('75', '超级管理员', '2016-07-01 10:48:23', '110.184.45.135', 'com.huashidai.weihuotong.controller.AccountCotroller.accountFlow()', '5,1,22;', '用户账户账户流水');
INSERT INTO `t_systemlog` VALUES ('76', '超级管理员', '2016-07-01 10:48:25', '110.184.45.135', 'com.huashidai.weihuotong.controller.AccountCotroller.accountFlow()', '5,1,23;', '用户账户账户流水');
INSERT INTO `t_systemlog` VALUES ('77', '超级管理员', '2016-07-01 10:48:27', '110.184.45.135', 'com.huashidai.weihuotong.controller.AccountCotroller.accountFlow()', '5,1,24;', '用户账户账户流水');
INSERT INTO `t_systemlog` VALUES ('78', '超级管理员', '2016-07-01 10:48:35', '110.184.45.135', 'com.huashidai.weihuotong.controller.WithdrawCotroller.withdraw()', '', '提现申请首页');
INSERT INTO `t_systemlog` VALUES ('79', '超级管理员', '2016-07-01 10:48:35', '110.184.45.135', 'com.huashidai.weihuotong.controller.WithdrawCotroller.query()', '20,1,-1,null;', '提现申请查询');
INSERT INTO `t_systemlog` VALUES ('80', '超级管理员', '2016-07-01 10:49:13', '110.184.45.135', 'com.huashidai.weihuotong.controller.WithdrawCotroller.agreeApply()', '20;', '提现申请同意提现');
INSERT INTO `t_systemlog` VALUES ('81', '超级管理员', '2016-07-01 10:49:23', '110.184.45.135', 'com.huashidai.weihuotong.controller.WithdrawCotroller.agreeApply()', '20;', '提现申请同意提现');
INSERT INTO `t_systemlog` VALUES ('82', '超级管理员', '2016-07-01 10:49:55', '110.184.45.135', 'com.huashidai.weihuotong.controller.SystemExceptionController.query()', '20,1,null,null;', '系统异常查询');
INSERT INTO `t_systemlog` VALUES ('83', '超级管理员', '2016-07-01 10:49:56', '110.184.45.135', 'com.huashidai.weihuotong.controller.SystemExceptionController.query()', '20,1,null,null;', '系统异常查询');
INSERT INTO `t_systemlog` VALUES ('84', '超级管理员', '2016-07-01 10:49:57', '110.184.45.135', 'com.huashidai.weihuotong.controller.SystemExceptionController.query()', '20,1,null,null;', '系统异常查询');
INSERT INTO `t_systemlog` VALUES ('85', '超级管理员', '2016-07-01 10:49:57', '110.184.45.135', 'com.huashidai.weihuotong.controller.SystemExceptionController.query()', '20,1,null,null;', '系统异常查询');
INSERT INTO `t_systemlog` VALUES ('86', '超级管理员', '2016-07-01 10:50:01', '110.184.45.135', 'com.huashidai.weihuotong.controller.SystemLogController.query()', '20,1,2016-06-30,2016-07-02;', '系统日志查询');
INSERT INTO `t_systemlog` VALUES ('87', '超级管理员', '2016-07-01 11:07:46', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.WithdrawCotroller.withdraw()', '', '提现申请首页');
INSERT INTO `t_systemlog` VALUES ('88', '超级管理员', '2016-07-01 11:07:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.WithdrawCotroller.query()', '20,1,-1,null;', '提现申请查询');
INSERT INTO `t_systemlog` VALUES ('89', '超级管理员', '2016-07-01 11:07:56', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.WithdrawCotroller.agreeApply()', '20;', '提现申请同意提现');
INSERT INTO `t_systemlog` VALUES ('90', '超级管理员', '2016-07-01 11:08:31', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.SystemExceptionController.index()', '', '系统异常主页');
INSERT INTO `t_systemlog` VALUES ('91', '超级管理员', '2016-07-01 11:08:31', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.SystemExceptionController.query()', '20,1,null,null;', '系统异常查询');
INSERT INTO `t_systemlog` VALUES ('92', '超级管理员', '2016-07-01 11:08:33', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.SystemExceptionController.query()', '20,1,null,null;', '系统异常查询');
INSERT INTO `t_systemlog` VALUES ('93', '超级管理员', '2016-07-01 11:08:34', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.SystemExceptionController.query()', '20,1,null,null;', '系统异常查询');
INSERT INTO `t_systemlog` VALUES ('94', '超级管理员', '2016-07-01 11:08:50', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.WithdrawCotroller.agreeApply()', '20;', '提现申请同意提现');
INSERT INTO `t_systemlog` VALUES ('95', '超级管理员', '2016-07-01 11:11:57', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.GoodsCotroller.goods()', '', '商品主页');
INSERT INTO `t_systemlog` VALUES ('96', '超级管理员', '2016-07-01 11:11:58', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.GoodsCotroller.query()', '10,1,null,null,-99,-1,-1,-1,0,-1,1;', '商品查询');
INSERT INTO `t_systemlog` VALUES ('97', '超级管理员', '2016-07-01 11:11:58', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.StoreController.getAll()', '', '用户店铺列表');
INSERT INTO `t_systemlog` VALUES ('98', '超级管理员', '2016-07-01 11:12:09', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.TypeCotroller.type()', '', '商品类型主页');
INSERT INTO `t_systemlog` VALUES ('99', '超级管理员', '2016-07-01 11:12:13', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.TypeCotroller.query()', '10,1,null;', '商品类型查询');
INSERT INTO `t_systemlog` VALUES ('100', '超级管理员', '2016-07-01 11:12:26', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.TypeCotroller.save()', 'org.springframework.web.multipart.commons.CommonsMultipartFile@2c532293;Type [id=null, name=aa, pinYin=null, image=null, parent=Type [id=null, name=null, pinYin=null, image=null, parent=null]];', '商品类型编辑');
INSERT INTO `t_systemlog` VALUES ('101', '超级管理员', '2016-07-01 11:12:28', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.TypeCotroller.query()', '10,1,null;', '商品类型查询');
INSERT INTO `t_systemlog` VALUES ('102', '超级管理员', '2016-07-01 11:12:32', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.TypeCotroller.delete()', '46;', '商品类型删除');
INSERT INTO `t_systemlog` VALUES ('103', '超级管理员', '2016-07-01 11:12:35', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.TypeCotroller.query()', '10,1,null;', '商品类型查询');
INSERT INTO `t_systemlog` VALUES ('104', '超级管理员', '2016-07-01 11:13:09', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.WithdrawCotroller.agreeApply()', '20;', '提现申请同意提现');
INSERT INTO `t_systemlog` VALUES ('105', '超级管理员', '2016-07-01 11:13:21', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.SystemAccountCotroller.systemSystemAccount()', '', '系统账户主页');
INSERT INTO `t_systemlog` VALUES ('106', '超级管理员', '2016-07-01 11:13:21', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.SystemAccountCotroller.get()', '', '系统账户查询');
INSERT INTO `t_systemlog` VALUES ('107', '超级管理员', '2016-07-01 11:13:51', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.WithdrawCotroller.agreeApply()', '20;', '提现申请同意提现');
INSERT INTO `t_systemlog` VALUES ('108', '超级管理员', '2016-07-01 11:15:03', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.WithdrawCotroller.agreeApply()', '20;', '提现申请同意提现');
INSERT INTO `t_systemlog` VALUES ('109', '超级管理员', '2016-07-01 11:17:40', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.WithdrawCotroller.agreeApply()', '20;', '提现申请同意提现');
INSERT INTO `t_systemlog` VALUES ('110', '超级管理员', '2016-07-01 11:26:32', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.WithdrawCotroller.withdraw()', '', '提现申请首页');
INSERT INTO `t_systemlog` VALUES ('111', '超级管理员', '2016-07-01 11:26:33', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.WithdrawCotroller.query()', '20,1,-1,null;', '提现申请查询');
INSERT INTO `t_systemlog` VALUES ('112', '超级管理员', '2016-07-01 11:26:37', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.WithdrawCotroller.agreeApply()', '20;', '提现申请同意提现');
INSERT INTO `t_systemlog` VALUES ('113', '超级管理员', '2016-07-01 11:28:33', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.WithdrawCotroller.agreeApply()', '20;', '提现申请同意提现');
INSERT INTO `t_systemlog` VALUES ('114', '超级管理员', '2016-07-01 11:30:47', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.WithdrawCotroller.agreeApply()', '20;', '提现申请同意提现');
INSERT INTO `t_systemlog` VALUES ('115', '超级管理员', '2016-07-01 11:31:44', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.WithdrawCotroller.agreeApply()', '20;', '提现申请同意提现');
INSERT INTO `t_systemlog` VALUES ('116', '超级管理员', '2016-07-01 11:31:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.WithdrawCotroller.query()', '20,1,-1,null;', '提现申请查询');
INSERT INTO `t_systemlog` VALUES ('117', '超级管理员', '2016-07-01 11:31:55', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.AccountCotroller.account()', '', '用户账户主页');
INSERT INTO `t_systemlog` VALUES ('118', '超级管理员', '2016-07-01 11:32:03', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.AccountCotroller.account()', '', '用户账户主页');
INSERT INTO `t_systemlog` VALUES ('119', '超级管理员', '2016-07-01 11:32:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.AccountCotroller.query()', '20,1,-1,null;', '用户账户查询');
INSERT INTO `t_systemlog` VALUES ('120', '超级管理员', '2016-07-01 11:32:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.AccountCotroller.query()', '20,1,-1,null;', '用户账户查询');
INSERT INTO `t_systemlog` VALUES ('121', '超级管理员', '2016-07-01 11:32:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.AccountCotroller.query()', '20,1,-1,null;', '用户账户查询');
INSERT INTO `t_systemlog` VALUES ('122', '超级管理员', '2016-07-01 11:32:19', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.AccountCotroller.query()', '20,1,-1,null;', '用户账户查询');
INSERT INTO `t_systemlog` VALUES ('123', '超级管理员', '2016-07-01 11:33:01', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.AccountCotroller.accountFlow()', '5,1,20;', '用户账户账户流水');
INSERT INTO `t_systemlog` VALUES ('124', '超级管理员', '2016-07-01 11:34:34', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.SystemAccountCotroller.systemSystemAccount()', '', '系统账户主页');
INSERT INTO `t_systemlog` VALUES ('125', '超级管理员', '2016-07-01 11:34:35', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.SystemAccountCotroller.get()', '', '系统账户查询');
INSERT INTO `t_systemlog` VALUES ('126', '超级管理员', '2016-07-01 11:34:39', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.SystemAccountCotroller.systemSystemAccountFlow()', '20,1,-1;', '系统账户账户流水');
INSERT INTO `t_systemlog` VALUES ('127', '超级管理员', '2016-07-01 11:35:21', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.WithdrawCotroller.agreeApply()', '19;', '提现申请同意提现');
INSERT INTO `t_systemlog` VALUES ('128', '超级管理员', '2016-07-01 11:35:23', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.WithdrawCotroller.query()', '20,1,-1,null;', '提现申请查询');
INSERT INTO `t_systemlog` VALUES ('129', '超级管理员', '2016-07-01 11:35:28', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.AccountCotroller.query()', '20,1,-1,null;', '用户账户查询');
INSERT INTO `t_systemlog` VALUES ('130', '超级管理员', '2016-07-01 11:35:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.AccountCotroller.accountFlow()', '5,1,20;', '用户账户账户流水');
INSERT INTO `t_systemlog` VALUES ('131', '超级管理员', '2016-07-01 11:52:46', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.WithdrawCotroller.withdraw()', '', '提现申请首页');
INSERT INTO `t_systemlog` VALUES ('132', '超级管理员', '2016-07-01 11:52:47', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.WithdrawCotroller.query()', '20,1,-1,null;', '提现申请查询');
INSERT INTO `t_systemlog` VALUES ('133', '超级管理员', '2016-07-01 11:52:59', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.WithdrawCotroller.agreeApply()', '18;', '提现申请同意提现');
INSERT INTO `t_systemlog` VALUES ('134', '超级管理员', '2016-07-01 11:53:17', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.WithdrawCotroller.query()', '20,1,-1,null;', '提现申请查询');
INSERT INTO `t_systemlog` VALUES ('135', '超级管理员', '2016-07-01 11:52:17', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.WithdrawCotroller.query()', '20,1,-1,null;', '提现申请查询');
INSERT INTO `t_systemlog` VALUES ('136', '超级管理员', '2016-07-01 11:53:42', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.WithdrawCotroller.agreeApply()', '17;', '提现申请同意提现');
INSERT INTO `t_systemlog` VALUES ('137', '超级管理员', '2016-07-01 11:53:44', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.WithdrawCotroller.query()', '20,1,-1,null;', '提现申请查询');
INSERT INTO `t_systemlog` VALUES ('138', '超级管理员', '2016-07-01 11:55:12', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.WithdrawCotroller.agreeApply()', '16;', '提现申请同意提现');
INSERT INTO `t_systemlog` VALUES ('139', '超级管理员', '2016-07-01 11:55:13', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.WithdrawCotroller.query()', '20,1,-1,null;', '提现申请查询');
INSERT INTO `t_systemlog` VALUES ('140', '超级管理员', '2016-07-01 11:55:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.AccountCotroller.query()', '20,1,-1,null;', '用户账户查询');
INSERT INTO `t_systemlog` VALUES ('141', '超级管理员', '2016-07-01 11:55:21', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.AccountCotroller.query()', '20,1,-1,null;', '用户账户查询');
INSERT INTO `t_systemlog` VALUES ('142', '超级管理员', '2016-07-01 11:55:24', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.AccountCotroller.accountFlow()', '5,1,19;', '用户账户账户流水');
INSERT INTO `t_systemlog` VALUES ('143', '超级管理员', '2016-07-01 11:55:26', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.AccountCotroller.accountFlow()', '5,1,20;', '用户账户账户流水');
INSERT INTO `t_systemlog` VALUES ('144', '超级管理员', '2016-07-01 11:57:50', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.WithdrawCotroller.query()', '20,1,-1,null;', '提现申请查询');
INSERT INTO `t_systemlog` VALUES ('145', '超级管理员', '2016-07-01 11:57:51', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.WithdrawCotroller.query()', '20,1,-1,null;', '提现申请查询');
INSERT INTO `t_systemlog` VALUES ('146', '超级管理员', '2016-07-01 11:57:52', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.WithdrawCotroller.query()', '20,1,-1,null;', '提现申请查询');
INSERT INTO `t_systemlog` VALUES ('147', '超级管理员', '2016-07-01 11:57:53', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.WithdrawCotroller.query()', '20,1,-1,null;', '提现申请查询');
INSERT INTO `t_systemlog` VALUES ('148', '超级管理员', '2016-07-01 11:57:57', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.WithdrawCotroller.query()', '20,1,-1,null;', '提现申请查询');
INSERT INTO `t_systemlog` VALUES ('149', '超级管理员', '2016-07-01 11:58:03', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.WithdrawCotroller.query()', '20,1,-1,null;', '提现申请查询');
INSERT INTO `t_systemlog` VALUES ('150', '超级管理员', '2016-07-01 11:58:24', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.WithdrawCotroller.query()', '20,1,-1,null;', '提现申请查询');
INSERT INTO `t_systemlog` VALUES ('151', '超级管理员', '2016-07-01 11:58:25', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.WithdrawCotroller.query()', '20,1,-1,null;', '提现申请查询');
INSERT INTO `t_systemlog` VALUES ('152', '超级管理员', '2016-07-01 11:58:29', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.WithdrawCotroller.withdraw()', '', '提现申请首页');
INSERT INTO `t_systemlog` VALUES ('153', '超级管理员', '2016-07-01 11:58:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.WithdrawCotroller.query()', '20,1,-1,null;', '提现申请查询');
INSERT INTO `t_systemlog` VALUES ('154', '超级管理员', '2016-07-01 11:58:33', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.WithdrawCotroller.query()', '10,1,-1,null;', '提现申请查询');
INSERT INTO `t_systemlog` VALUES ('155', '超级管理员', '2016-07-01 11:59:38', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.WithdrawCotroller.query()', '10,1,-1,null;', '提现申请查询');
INSERT INTO `t_systemlog` VALUES ('156', '超级管理员', '2016-07-01 11:59:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.WithdrawCotroller.agreeApply()', '22;', '提现申请同意提现');
INSERT INTO `t_systemlog` VALUES ('157', '超级管理员', '2016-07-01 11:59:51', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.WithdrawCotroller.query()', '10,1,-1,null;', '提现申请查询');
INSERT INTO `t_systemlog` VALUES ('158', '超级管理员', '2016-07-01 12:00:23', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.WithdrawCotroller.agreeApply()', '21;', '提现申请同意提现');
INSERT INTO `t_systemlog` VALUES ('159', '超级管理员', '2016-07-01 12:00:25', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.WithdrawCotroller.query()', '10,1,-1,null;', '提现申请查询');
INSERT INTO `t_systemlog` VALUES ('160', '超级管理员', '2016-07-01 12:01:46', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.WithdrawCotroller.query()', '50,1,-1,null;', '提现申请查询');
INSERT INTO `t_systemlog` VALUES ('161', '超级管理员', '2016-07-01 12:02:17', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.WithdrawCotroller.agreeApply()', '23;', '提现申请同意提现');
INSERT INTO `t_systemlog` VALUES ('162', '超级管理员', '2016-07-01 12:02:19', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.WithdrawCotroller.query()', '50,1,-1,null;', '提现申请查询');
INSERT INTO `t_systemlog` VALUES ('163', '超级管理员', '2016-07-01 12:02:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.AccountCotroller.query()', '20,1,-1,null;', '用户账户查询');
INSERT INTO `t_systemlog` VALUES ('164', '超级管理员', '2016-07-01 12:02:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.AccountCotroller.query()', '5,1,-1,null;', '用户账户查询');
INSERT INTO `t_systemlog` VALUES ('165', '超级管理员', '2016-07-01 12:02:52', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.AccountCotroller.query()', '50,1,-1,null;', '用户账户查询');
INSERT INTO `t_systemlog` VALUES ('166', '超级管理员', '2016-07-01 12:03:00', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.AccountCotroller.accountFlow()', '5,1,19;', '用户账户账户流水');
INSERT INTO `t_systemlog` VALUES ('167', '超级管理员', '2016-07-01 12:04:13', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.AccountCotroller.query()', '50,1,-1,null;', '用户账户查询');
INSERT INTO `t_systemlog` VALUES ('168', '超级管理员', '2016-07-01 12:04:27', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.WithdrawCotroller.query()', '50,1,-1,null;', '提现申请查询');
INSERT INTO `t_systemlog` VALUES ('169', '超级管理员', '2016-07-01 12:04:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.WithdrawCotroller.query()', '5,1,-1,null;', '提现申请查询');
INSERT INTO `t_systemlog` VALUES ('170', '超级管理员', '2016-07-01 12:04:35', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.WithdrawCotroller.agreeApply()', '24;', '提现申请同意提现');
INSERT INTO `t_systemlog` VALUES ('171', '超级管理员', '2016-07-01 12:04:36', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.WithdrawCotroller.query()', '5,1,-1,null;', '提现申请查询');
INSERT INTO `t_systemlog` VALUES ('172', '超级管理员', '2016-07-01 12:04:39', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.AccountCotroller.query()', '50,1,-1,null;', '用户账户查询');
INSERT INTO `t_systemlog` VALUES ('173', '超级管理员', '2016-07-01 12:04:40', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.AccountCotroller.query()', '50,1,-1,null;', '用户账户查询');
INSERT INTO `t_systemlog` VALUES ('174', '超级管理员', '2016-07-01 12:04:42', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.AccountCotroller.query()', '50,1,-1,null;', '用户账户查询');
INSERT INTO `t_systemlog` VALUES ('175', '超级管理员', '2016-07-01 12:06:00', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.AccountCotroller.query()', '50,1,-1,null;', '用户账户查询');
INSERT INTO `t_systemlog` VALUES ('176', '超级管理员', '2016-07-01 12:06:09', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.AccountCotroller.query()', '50,1,-1,null;', '用户账户查询');
INSERT INTO `t_systemlog` VALUES ('177', '超级管理员', '2016-07-01 12:06:14', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.WithdrawCotroller.query()', '5,1,-1,null;', '提现申请查询');
INSERT INTO `t_systemlog` VALUES ('178', '超级管理员', '2016-07-01 12:06:16', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.WithdrawCotroller.query()', '5,2,-1,null;', '提现申请查询');
INSERT INTO `t_systemlog` VALUES ('179', '超级管理员', '2016-07-01 12:06:17', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.WithdrawCotroller.query()', '5,1,-1,null;', '提现申请查询');
INSERT INTO `t_systemlog` VALUES ('180', '超级管理员', '2016-07-01 12:06:35', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.WithdrawCotroller.query()', '5,1,-1,null;', '提现申请查询');
INSERT INTO `t_systemlog` VALUES ('181', '超级管理员', '2016-07-01 12:06:38', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.WithdrawCotroller.query()', '20,1,-1,null;', '提现申请查询');
INSERT INTO `t_systemlog` VALUES ('182', '超级管理员', '2016-07-01 12:06:47', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.AccountCotroller.query()', '50,1,-1,null;', '用户账户查询');
INSERT INTO `t_systemlog` VALUES ('183', '超级管理员', '2016-07-01 12:06:51', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.WithdrawCotroller.agreeApply()', '25;', '提现申请同意提现');
INSERT INTO `t_systemlog` VALUES ('184', '超级管理员', '2016-07-01 12:06:53', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.WithdrawCotroller.query()', '20,1,-1,null;', '提现申请查询');
INSERT INTO `t_systemlog` VALUES ('185', '超级管理员', '2016-07-01 12:06:57', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.AccountCotroller.query()', '50,1,-1,null;', '用户账户查询');
INSERT INTO `t_systemlog` VALUES ('186', '超级管理员', '2016-07-01 12:06:58', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.AccountCotroller.query()', '50,1,-1,null;', '用户账户查询');
INSERT INTO `t_systemlog` VALUES ('187', '超级管理员', '2016-07-01 12:06:59', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.AccountCotroller.query()', '50,1,-1,null;', '用户账户查询');
INSERT INTO `t_systemlog` VALUES ('188', '超级管理员', '2016-07-01 12:07:00', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.AccountCotroller.query()', '50,1,-1,null;', '用户账户查询');
INSERT INTO `t_systemlog` VALUES ('189', '超级管理员', '2016-07-01 14:21:42', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.ArticleTypeCotroller.articleType()', '', '文章分类主页');
INSERT INTO `t_systemlog` VALUES ('190', '超级管理员', '2016-07-01 14:21:44', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.ArticleTypeCotroller.query()', '10,1,;', '文章查询');
INSERT INTO `t_systemlog` VALUES ('191', '超级管理员', '2016-07-01 14:21:52', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.ArticleTypeCotroller.save()', 'com.huashidai.weihuotong.domain.ArticleType@19306130;', '文章分类添加');
INSERT INTO `t_systemlog` VALUES ('192', '超级管理员', '2016-07-01 14:22:57', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.ArticleTypeCotroller.save()', 'com.huashidai.weihuotong.domain.ArticleType@613e177a;', '文章分类添加');
INSERT INTO `t_systemlog` VALUES ('193', '超级管理员', '2016-07-01 14:25:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.ArticleTypeCotroller.save()', 'com.huashidai.weihuotong.domain.ArticleType@438a4d26;', '文章分类添加');
INSERT INTO `t_systemlog` VALUES ('194', '超级管理员', '2016-07-01 14:25:19', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.SystemExceptionController.index()', '', '系统异常主页');
INSERT INTO `t_systemlog` VALUES ('195', '超级管理员', '2016-07-01 14:25:19', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.SystemExceptionController.query()', '20,1,null,null;', '系统异常查询');
INSERT INTO `t_systemlog` VALUES ('196', '超级管理员', '2016-07-01 14:25:22', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.SystemExceptionController.query()', '20,1,null,null;', '系统异常查询');
INSERT INTO `t_systemlog` VALUES ('197', '超级管理员', '2016-07-01 14:51:55', '110.184.45.135', 'com.huashidai.weihuotong.controller.ArticleTypeCotroller.save()', 'com.huashidai.weihuotong.domain.ArticleType@1636b28;', '文章分类添加');
INSERT INTO `t_systemlog` VALUES ('198', '超级管理员', '2016-07-01 14:51:59', '110.184.45.135', 'com.huashidai.weihuotong.controller.ArticleTypeCotroller.query()', '10,1,;', '文章查询');
INSERT INTO `t_systemlog` VALUES ('199', '超级管理员', '2016-07-01 14:52:01', '110.184.45.135', 'com.huashidai.weihuotong.controller.ArticleTypeCotroller.query()', '10,1,;', '文章查询');
INSERT INTO `t_systemlog` VALUES ('200', '超级管理员', '2016-07-01 14:52:03', '110.184.45.135', 'com.huashidai.weihuotong.controller.ArticleTypeCotroller.query()', '10,1,;', '文章查询');
INSERT INTO `t_systemlog` VALUES ('201', '超级管理员', '2016-07-01 14:52:05', '110.184.45.135', 'com.huashidai.weihuotong.controller.ArticleTypeCotroller.query()', '5,1,;', '文章查询');
INSERT INTO `t_systemlog` VALUES ('202', '超级管理员', '2016-07-01 14:52:08', '110.184.45.135', 'com.huashidai.weihuotong.controller.ArticleTypeCotroller.delete()', '18;', '文章分类删除');
INSERT INTO `t_systemlog` VALUES ('203', '超级管理员', '2016-07-01 14:52:09', '110.184.45.135', 'com.huashidai.weihuotong.controller.ArticleTypeCotroller.query()', '5,1,;', '文章查询');
INSERT INTO `t_systemlog` VALUES ('204', '超级管理员', '2016-07-01 14:52:11', '110.184.45.135', 'com.huashidai.weihuotong.controller.ArticleTypeCotroller.query()', '5,1,;', '文章查询');
INSERT INTO `t_systemlog` VALUES ('205', '超级管理员', '2016-07-01 14:53:24', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.ArticleTypeCotroller.articleType()', '', '文章分类主页');
INSERT INTO `t_systemlog` VALUES ('206', '超级管理员', '2016-07-01 14:53:24', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.ArticleTypeCotroller.query()', '10,1,;', '文章查询');
INSERT INTO `t_systemlog` VALUES ('207', '超级管理员', '2016-07-01 14:53:31', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.ArticleTypeCotroller.save()', 'com.huashidai.weihuotong.domain.ArticleType@52171831;', '文章分类添加');
INSERT INTO `t_systemlog` VALUES ('208', '超级管理员', '2016-07-01 14:53:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.SystemExceptionController.index()', '', '系统异常主页');
INSERT INTO `t_systemlog` VALUES ('209', '超级管理员', '2016-07-01 14:53:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.SystemExceptionController.query()', '20,1,null,null;', '系统异常查询');
INSERT INTO `t_systemlog` VALUES ('210', '超级管理员', '2016-07-01 14:54:02', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.controller.SystemExceptionController.query()', '20,1,null,null;', '系统异常查询');
INSERT INTO `t_systemlog` VALUES ('211', '超级管理员', '2016-07-01 15:19:08', '0:0:0:0:0:0:0:1', 'ArticleTypeCotroller.save', '.ArticleType', '文章分类-添加');
INSERT INTO `t_systemlog` VALUES ('212', '超级管理员', '2016-07-01 15:19:28', '0:0:0:0:0:0:0:1', 'SystemExceptionController.query', '.SystemExceptionQuery', '系统异常-查询');
INSERT INTO `t_systemlog` VALUES ('213', '超级管理员', '2016-07-01 15:19:30', '0:0:0:0:0:0:0:1', 'SystemExceptionController.query', '.SystemExceptionQuery', '系统异常-查询');
INSERT INTO `t_systemlog` VALUES ('214', '超级管理员', '2016-07-01 15:19:32', '0:0:0:0:0:0:0:1', 'SystemExceptionController.query', '.SystemExceptionQuery', '系统异常-查询');
INSERT INTO `t_systemlog` VALUES ('215', '超级管理员', '2016-07-01 15:19:50', '0:0:0:0:0:0:0:1', 'ArticleTypeCotroller.save', '.ArticleType', '文章分类-添加');
INSERT INTO `t_systemlog` VALUES ('216', '超级管理员', '2016-07-01 15:22:20', '0:0:0:0:0:0:0:1', 'ArticleTypeCotroller.save', '.ArticleType', '文章分类-添加');
INSERT INTO `t_systemlog` VALUES ('217', '超级管理员', '2016-07-01 15:22:09', '110.184.45.135', 'com.huashidai.weihuotong.controller.SystemExceptionController.query()', '20,1,null,null;', '系统异常查询');
INSERT INTO `t_systemlog` VALUES ('218', '超级管理员', '2016-07-01 15:23:09', '0:0:0:0:0:0:0:1', 'SystemExceptionController.query', '.SystemExceptionQuery', '系统异常-查询');
INSERT INTO `t_systemlog` VALUES ('219', '超级管理员', '2016-07-01 15:23:19', '0:0:0:0:0:0:0:1', 'SystemExceptionController.index', '', '系统异常-主页');
INSERT INTO `t_systemlog` VALUES ('220', '超级管理员', '2016-07-01 15:23:20', '0:0:0:0:0:0:0:1', 'SystemExceptionController.query', '.SystemExceptionQuery', '系统异常-查询');
INSERT INTO `t_systemlog` VALUES ('221', '超级管理员', '2016-07-01 15:24:17', '0:0:0:0:0:0:0:1', 'SystemExceptionController.index', '', '系统异常-主页');
INSERT INTO `t_systemlog` VALUES ('222', '超级管理员', '2016-07-01 15:24:19', '0:0:0:0:0:0:0:1', 'SystemExceptionController.query', '.SystemExceptionQuery', '系统异常-查询');
INSERT INTO `t_systemlog` VALUES ('223', '超级管理员', '2016-07-01 15:36:32', '110.184.45.135', 'com.huashidai.weihuotong.controller.SystemExceptionController.query()', '20,1,null,null;', '系统异常查询');
INSERT INTO `t_systemlog` VALUES ('224', '超级管理员', '2016-07-01 15:36:33', '110.184.45.135', 'com.huashidai.weihuotong.controller.SystemExceptionController.query()', '20,1,null,null;', '系统异常查询');
INSERT INTO `t_systemlog` VALUES ('225', '超级管理员', '2016-07-01 15:36:43', '0:0:0:0:0:0:0:1', 'SystemExceptionController.index', '', '系统异常-主页');
INSERT INTO `t_systemlog` VALUES ('226', '超级管理员', '2016-07-01 15:41:11', '110.184.45.135', 'com.huashidai.weihuotong.controller.ArticleCotroller.showArticle()', '13;', '文章文章内容');
INSERT INTO `t_systemlog` VALUES ('227', '超级管理员', '2016-07-01 15:41:15', '110.184.45.135', 'com.huashidai.weihuotong.controller.ArticleCotroller.showArticle()', '13;', '文章文章内容');
INSERT INTO `t_systemlog` VALUES ('228', '超级管理员', '2016-07-01 15:47:37', '110.184.45.135', 'com.huashidai.weihuotong.controller.SystemExceptionController.index()', '', '系统异常主页');
INSERT INTO `t_systemlog` VALUES ('229', '超级管理员', '2016-07-01 15:47:37', '110.184.45.135', 'com.huashidai.weihuotong.controller.SystemExceptionController.query()', '20,1,null,null;', '系统异常查询');
INSERT INTO `t_systemlog` VALUES ('230', '超级管理员', '2016-07-01 15:48:32', '0:0:0:0:0:0:0:1', 'SystemExceptionController.index', '', '系统异常-主页');
INSERT INTO `t_systemlog` VALUES ('231', '超级管理员', '2016-07-01 15:48:38', '0:0:0:0:0:0:0:1', 'SystemExceptionController.index', '', '系统异常-主页');
INSERT INTO `t_systemlog` VALUES ('232', '超级管理员', '2016-07-01 15:48:46', '0:0:0:0:0:0:0:1', 'SystemExceptionController.index', '', '系统异常-主页');
INSERT INTO `t_systemlog` VALUES ('233', '超级管理员', '2016-07-01 15:48:58', '0:0:0:0:0:0:0:1', 'SystemExceptionController.index', '', '系统异常-主页');
INSERT INTO `t_systemlog` VALUES ('234', '超级管理员', '2016-07-01 15:49:33', '0:0:0:0:0:0:0:1', 'SystemExceptionController.index', '', '系统异常-主页');
INSERT INTO `t_systemlog` VALUES ('235', '超级管理员', '2016-07-01 15:49:48', '0:0:0:0:0:0:0:1', 'SystemExceptionController.index', '', '系统异常-主页');
INSERT INTO `t_systemlog` VALUES ('236', '超级管理员', '2016-07-01 15:50:37', '0:0:0:0:0:0:0:1', 'SystemExceptionController.index', '', '系统异常-主页');
INSERT INTO `t_systemlog` VALUES ('237', '超级管理员', '2016-07-01 15:50:42', '0:0:0:0:0:0:0:1', 'SystemExceptionController.index', '', '系统异常-主页');
INSERT INTO `t_systemlog` VALUES ('238', '超级管理员', '2016-07-01 15:50:43', '0:0:0:0:0:0:0:1', 'SystemExceptionController.query', '.SystemExceptionQuery', '系统异常-查询');
INSERT INTO `t_systemlog` VALUES ('239', '超级管理员', '2016-07-01 15:50:55', '0:0:0:0:0:0:0:1', 'SystemExceptionController.index', '', '系统异常-主页');
INSERT INTO `t_systemlog` VALUES ('240', '超级管理员', '2016-07-01 15:50:55', '0:0:0:0:0:0:0:1', 'SystemExceptionController.query', '.SystemExceptionQuery', '系统异常-查询');
INSERT INTO `t_systemlog` VALUES ('241', '超级管理员', '2016-07-01 15:53:13', '0:0:0:0:0:0:0:1', 'SystemExceptionController.index', '', '系统异常-主页');
INSERT INTO `t_systemlog` VALUES ('242', '超级管理员', '2016-07-01 15:53:38', '0:0:0:0:0:0:0:1', 'SystemExceptionController.index', '', '系统异常-主页');
INSERT INTO `t_systemlog` VALUES ('243', '超级管理员', '2016-07-01 15:53:44', '0:0:0:0:0:0:0:1', 'SystemLogController.index', '', '系统日志-主页');
INSERT INTO `t_systemlog` VALUES ('244', '超级管理员', '2016-07-01 15:53:44', '0:0:0:0:0:0:0:1', 'SystemLogController.query', '.SystemLogQuery', '系统日志-查询');
INSERT INTO `t_systemlog` VALUES ('245', '超级管理员', '2016-07-01 15:53:45', '0:0:0:0:0:0:0:1', 'SystemExceptionController.index', '', '系统异常-主页');
INSERT INTO `t_systemlog` VALUES ('246', '超级管理员', '2016-07-01 15:53:46', '0:0:0:0:0:0:0:1', 'SystemExceptionController.query', '.SystemExceptionQuery', '系统异常-查询');
INSERT INTO `t_systemlog` VALUES ('247', '超级管理员', '2016-07-01 16:00:41', '0:0:0:0:0:0:0:1', 'SystemExceptionController.index', '', '系统异常-主页');
INSERT INTO `t_systemlog` VALUES ('248', '超级管理员', '2016-07-01 16:00:43', '0:0:0:0:0:0:0:1', 'SystemExceptionController.query', '.SystemExceptionQuery', '系统异常-查询');
INSERT INTO `t_systemlog` VALUES ('249', '超级管理员', '2016-07-01 16:00:54', '0:0:0:0:0:0:0:1', 'SystemExceptionController.index', '', '系统异常-主页');
INSERT INTO `t_systemlog` VALUES ('250', '超级管理员', '2016-07-01 16:00:54', '0:0:0:0:0:0:0:1', 'SystemExceptionController.query', '.SystemExceptionQuery', '系统异常-查询');
INSERT INTO `t_systemlog` VALUES ('251', '超级管理员', '2016-07-01 16:01:18', '0:0:0:0:0:0:0:1', 'SystemExceptionController.index', '', '系统异常-主页');
INSERT INTO `t_systemlog` VALUES ('252', '超级管理员', '2016-07-01 16:01:19', '0:0:0:0:0:0:0:1', 'SystemExceptionController.query', '.SystemExceptionQuery', '系统异常-查询');
INSERT INTO `t_systemlog` VALUES ('253', '超级管理员', '2016-07-01 16:01:45', '0:0:0:0:0:0:0:1', 'SystemExceptionController.index', '', '系统异常-主页');
INSERT INTO `t_systemlog` VALUES ('254', '超级管理员', '2016-07-01 16:01:45', '0:0:0:0:0:0:0:1', 'SystemExceptionController.query', '.SystemExceptionQuery', '系统异常-查询');
INSERT INTO `t_systemlog` VALUES ('255', '超级管理员', '2016-07-01 16:05:56', '0:0:0:0:0:0:0:1', 'SystemExceptionController.index', '', '系统异常-主页');
INSERT INTO `t_systemlog` VALUES ('256', '超级管理员', '2016-07-01 16:05:57', '0:0:0:0:0:0:0:1', 'SystemExceptionController.query', 'SystemExceptionQuery', '系统异常-查询');
INSERT INTO `t_systemlog` VALUES ('257', '超级管理员', '2016-07-01 16:05:50', '0:0:0:0:0:0:0:1', 'SystemLogController.index', '', '系统日志-主页');
INSERT INTO `t_systemlog` VALUES ('258', '超级管理员', '2016-07-01 16:06:09', '0:0:0:0:0:0:0:1', 'SystemLogController.query', 'SystemLogQuery', '系统日志-查询');
INSERT INTO `t_systemlog` VALUES ('259', '超级管理员', '2016-07-01 17:29:22', '110.184.45.135', 'SystemExceptionController.index', '', '系统异常-主页');
INSERT INTO `t_systemlog` VALUES ('260', '超级管理员', '2016-07-01 17:29:22', '110.184.45.135', 'SystemExceptionController.query', 'SystemExceptionQuery', '系统异常-查询');
INSERT INTO `t_systemlog` VALUES ('261', '超级管理员', '2016-07-01 17:29:24', '110.184.45.135', 'MonitoringController.index', '', '系统监控-主页');
INSERT INTO `t_systemlog` VALUES ('262', '超级管理员', '2016-07-01 17:30:29', '110.184.45.135', 'SystemLogController.index', '', '系统日志-主页');
INSERT INTO `t_systemlog` VALUES ('263', '超级管理员', '2016-07-01 17:30:30', '110.184.45.135', 'SystemLogController.query', 'SystemLogQuery', '系统日志-查询');
INSERT INTO `t_systemlog` VALUES ('264', '超级管理员', '2016-07-01 17:30:37', '110.184.45.135', 'UserController.index', '', '用户账号-主页');
INSERT INTO `t_systemlog` VALUES ('265', '超级管理员', '2016-07-01 17:30:38', '110.184.45.135', 'UserController.query', 'UserQuery', '用户账号-查询');
INSERT INTO `t_systemlog` VALUES ('266', '超级管理员', '2016-07-01 17:30:39', '110.184.45.135', 'SystemLogController.query', 'SystemLogQuery', '系统日志-查询');
INSERT INTO `t_systemlog` VALUES ('267', '超级管理员', '2016-07-01 17:51:13', '0:0:0:0:0:0:0:1', 'SystemAccountCotroller.systemSystemAccountFlow', 'SystemAccountFlowQuery', '系统账户-账户流水');
INSERT INTO `t_systemlog` VALUES ('268', '超级管理员', '2016-07-01 18:19:06', '110.184.45.135', 'SystemExceptionController.query', 'SystemExceptionQuery', '系统异常-查询');
INSERT INTO `t_systemlog` VALUES ('269', '超级管理员', '2016-07-01 18:21:10', '110.184.45.135', 'UserController.index', '', '用户账号-主页');
INSERT INTO `t_systemlog` VALUES ('270', '超级管理员', '2016-07-01 18:21:11', '110.184.45.135', 'UserController.query', 'UserQuery', '用户账号-查询');
INSERT INTO `t_systemlog` VALUES ('271', '超级管理员', '2016-07-01 18:21:20', '110.184.45.135', 'StoreController.index', '', '用户店铺-主页');
INSERT INTO `t_systemlog` VALUES ('272', '超级管理员', '2016-07-01 18:21:22', '110.184.45.135', 'StoreController.query', 'StoreQuery', '用户店铺-查询');
INSERT INTO `t_systemlog` VALUES ('273', '超级管理员', '2016-07-04 11:05:36', '110.184.47.228', 'GoodsCotroller.goods', '', '商品-主页');
INSERT INTO `t_systemlog` VALUES ('274', '超级管理员', '2016-07-04 11:05:37', '110.184.47.228', 'GoodsCotroller.query', 'GoodsQuery', '商品-查询');
INSERT INTO `t_systemlog` VALUES ('275', '超级管理员', '2016-07-04 11:05:37', '110.184.47.228', 'StoreController.getAll', '', '用户店铺-列表');
INSERT INTO `t_systemlog` VALUES ('276', '超级管理员', '2016-07-04 11:06:12', '110.184.47.228', 'GoodsCotroller.query', 'GoodsQuery', '商品-查询');
INSERT INTO `t_systemlog` VALUES ('277', '超级管理员', '2016-07-04 11:06:18', '110.184.47.228', 'GoodsCotroller.query', 'GoodsQuery', '商品-查询');
INSERT INTO `t_systemlog` VALUES ('278', '超级管理员', '2016-07-04 11:06:20', '110.184.47.228', 'GoodsCotroller.query', 'GoodsQuery', '商品-查询');
INSERT INTO `t_systemlog` VALUES ('279', '超级管理员', '2016-07-04 11:08:27', '0:0:0:0:0:0:0:1', 'GoodsCotroller.goods', '', '商品-主页');
INSERT INTO `t_systemlog` VALUES ('280', '超级管理员', '2016-07-04 11:08:28', '0:0:0:0:0:0:0:1', 'StoreController.getAll', '', '用户店铺-列表');
INSERT INTO `t_systemlog` VALUES ('281', '超级管理员', '2016-07-04 11:08:28', '0:0:0:0:0:0:0:1', 'GoodsCotroller.query', 'GoodsQuery', '商品-查询');
INSERT INTO `t_systemlog` VALUES ('282', '超级管理员', '2016-07-04 11:08:55', '0:0:0:0:0:0:0:1', 'SystemExceptionController.index', '', '系统异常-主页');
INSERT INTO `t_systemlog` VALUES ('283', '超级管理员', '2016-07-04 11:08:56', '0:0:0:0:0:0:0:1', 'SystemExceptionController.query', 'SystemExceptionQuery', '系统异常-查询');
INSERT INTO `t_systemlog` VALUES ('284', '超级管理员', '2016-07-04 11:12:50', '0:0:0:0:0:0:0:1', 'SystemExceptionController.query', 'SystemExceptionQuery', '系统异常-查询');
INSERT INTO `t_systemlog` VALUES ('285', '超级管理员', '2016-07-04 11:14:53', '0:0:0:0:0:0:0:1', 'SystemExceptionController.query', 'SystemExceptionQuery', '系统异常-查询');
INSERT INTO `t_systemlog` VALUES ('286', '超级管理员', '2016-07-04 11:15:31', '0:0:0:0:0:0:0:1', 'SystemLogController.index', '', '系统日志-主页');
INSERT INTO `t_systemlog` VALUES ('287', '超级管理员', '2016-07-04 11:15:36', '0:0:0:0:0:0:0:1', 'SystemLogController.query', 'SystemLogQuery', '系统日志-查询');
INSERT INTO `t_systemlog` VALUES ('288', '超级管理员', '2016-07-04 11:19:48', '0:0:0:0:0:0:0:1', 'SystemExceptionController.query', 'SystemExceptionQuery', '系统异常-查询');
INSERT INTO `t_systemlog` VALUES ('289', '超级管理员', '2016-07-04 11:19:51', '0:0:0:0:0:0:0:1', 'SystemExceptionController.query', 'SystemExceptionQuery', '系统异常-查询');
INSERT INTO `t_systemlog` VALUES ('290', '超级管理员', '2016-07-04 11:20:04', '0:0:0:0:0:0:0:1', 'SystemExceptionController.query', 'SystemExceptionQuery', '系统异常-查询');
INSERT INTO `t_systemlog` VALUES ('291', '超级管理员', '2016-07-04 11:19:44', '110.184.47.228', 'SystemExceptionController.index', '', '系统异常-主页');
INSERT INTO `t_systemlog` VALUES ('292', '超级管理员', '2016-07-04 11:19:46', '110.184.47.228', 'SystemExceptionController.query', 'SystemExceptionQuery', '系统异常-查询');
INSERT INTO `t_systemlog` VALUES ('293', '超级管理员', '2016-07-04 11:22:09', '110.184.47.228', 'SystemExceptionController.query', 'SystemExceptionQuery', '系统异常-查询');
INSERT INTO `t_systemlog` VALUES ('294', '超级管理员', '2016-07-04 11:30:27', '110.184.47.228', 'SystemLogController.index', '', '系统日志-主页');
INSERT INTO `t_systemlog` VALUES ('295', '超级管理员', '2016-07-04 11:30:27', '110.184.47.228', 'SystemExceptionController.index', '', '系统异常-主页');
INSERT INTO `t_systemlog` VALUES ('296', '超级管理员', '2016-07-04 11:30:28', '110.184.47.228', 'SystemExceptionController.query', 'SystemExceptionQuery', '系统异常-查询');
INSERT INTO `t_systemlog` VALUES ('297', '超级管理员', '2016-07-04 11:30:28', '110.184.47.228', 'SystemLogController.query', 'SystemLogQuery', '系统日志-查询');
INSERT INTO `t_systemlog` VALUES ('298', '超级管理员', '2016-07-04 11:30:33', '110.184.47.228', 'SystemExceptionController.query', 'SystemExceptionQuery', '系统异常-查询');
INSERT INTO `t_systemlog` VALUES ('299', '超级管理员', '2016-07-04 11:30:53', '110.184.47.228', 'SystemExceptionController.query', 'SystemExceptionQuery', '系统异常-查询');
INSERT INTO `t_systemlog` VALUES ('300', '超级管理员', '2016-07-04 11:30:55', '110.184.47.228', 'SystemExceptionController.query', 'SystemExceptionQuery', '系统异常-查询');
INSERT INTO `t_systemlog` VALUES ('301', '超级管理员', '2016-07-04 11:32:58', '110.184.47.228', 'SystemExceptionController.query', 'SystemExceptionQuery', '系统异常-查询');
INSERT INTO `t_systemlog` VALUES ('302', '?????', '2016-07-04 16:55:41', '110.184.47.228', 'SystemExceptionController.index', '', '????-??');
INSERT INTO `t_systemlog` VALUES ('303', '?????', '2016-07-04 16:55:41', '110.184.47.228', 'SystemExceptionController.query', 'SystemExceptionQuery', '????-??');
INSERT INTO `t_systemlog` VALUES ('304', '?????', '2016-07-04 16:56:20', '110.184.47.228', 'SystemExceptionController.index', '', '????-??');
INSERT INTO `t_systemlog` VALUES ('305', '?????', '2016-07-04 16:56:21', '110.184.47.228', 'SystemExceptionController.query', 'SystemExceptionQuery', '????-??');
INSERT INTO `t_systemlog` VALUES ('306', '?????', '2016-07-04 17:07:08', '110.184.47.228', 'GoodsCotroller.goods', '', '??-??');
INSERT INTO `t_systemlog` VALUES ('307', '?????', '2016-07-04 17:07:08', '110.184.47.228', 'GoodsCotroller.goods', '', '??-??');
INSERT INTO `t_systemlog` VALUES ('308', '?????', '2016-07-04 17:07:09', '110.184.47.228', 'GoodsCotroller.query', 'GoodsQuery', '??-??');
INSERT INTO `t_systemlog` VALUES ('309', '?????', '2016-07-04 17:07:09', '110.184.47.228', 'StoreController.getAll', '', '????-??');
INSERT INTO `t_systemlog` VALUES ('310', '?????', '2016-07-04 17:07:14', '110.184.47.228', 'BrandCotroller.brand', '', '????-??');
INSERT INTO `t_systemlog` VALUES ('311', '?????', '2016-07-04 17:07:15', '110.184.47.228', 'TypeCotroller.type', '', '????-??');
INSERT INTO `t_systemlog` VALUES ('312', '?????', '2016-07-04 17:07:17', '110.184.47.228', 'BrandCotroller.query', 'BaseQuery', '????-??');
INSERT INTO `t_systemlog` VALUES ('313', '?????', '2016-07-04 17:07:17', '110.184.47.228', 'TypeCotroller.query', 'TypeQuery', '????-??');
INSERT INTO `t_systemlog` VALUES ('314', '?????', '2016-07-04 17:07:37', '110.184.47.228', 'TypeCotroller.query', 'TypeQuery', '????-??');
INSERT INTO `t_systemlog` VALUES ('315', '?????', '2016-07-04 17:07:39', '110.184.47.228', 'TypeCotroller.query', 'TypeQuery', '????-??');
INSERT INTO `t_systemlog` VALUES ('316', '?????', '2016-07-04 17:07:41', '110.184.47.228', 'TypeCotroller.query', 'TypeQuery', '????-??');
INSERT INTO `t_systemlog` VALUES ('317', '?????', '2016-07-04 17:07:41', '110.184.47.228', 'TypeCotroller.query', 'TypeQuery', '????-??');
INSERT INTO `t_systemlog` VALUES ('318', '?????', '2016-07-04 17:07:42', '110.184.47.228', 'TypeCotroller.query', 'TypeQuery', '????-??');
INSERT INTO `t_systemlog` VALUES ('319', '?????', '2016-07-04 17:07:43', '110.184.47.228', 'TypeCotroller.query', 'TypeQuery', '????-??');
INSERT INTO `t_systemlog` VALUES ('320', '?????', '2016-07-04 17:07:44', '110.184.47.228', 'TypeCotroller.query', 'TypeQuery', '????-??');
INSERT INTO `t_systemlog` VALUES ('321', '?????', '2016-07-04 17:07:47', '110.184.47.228', 'TypeCotroller.query', 'TypeQuery', '????-??');
INSERT INTO `t_systemlog` VALUES ('322', '?????', '2016-07-04 17:07:48', '110.184.47.228', 'TypeCotroller.query', 'TypeQuery', '????-??');
INSERT INTO `t_systemlog` VALUES ('323', '?????', '2016-07-04 17:07:53', '110.184.47.228', 'TypeCotroller.query', 'TypeQuery', '????-??');
INSERT INTO `t_systemlog` VALUES ('324', '?????', '2016-07-04 17:11:46', '110.184.47.228', 'PromotionCotroller.promotion', '', '??-??');
INSERT INTO `t_systemlog` VALUES ('325', '?????', '2016-07-04 17:11:46', '110.184.47.228', 'GoodsCotroller.query', 'GoodsQuery', '??-??');
INSERT INTO `t_systemlog` VALUES ('326', '?????', '2016-07-04 17:11:47', '110.184.47.228', 'PromotionCotroller.query', 'PromotionQuery', '??-??');
INSERT INTO `t_systemlog` VALUES ('327', '?????', '2016-07-04 17:26:13', '110.184.47.228', 'GoodsCotroller.goods', '', '??-??');
INSERT INTO `t_systemlog` VALUES ('328', '?????', '2016-07-04 17:26:13', '110.184.47.228', 'StoreController.getAll', '', '????-??');
INSERT INTO `t_systemlog` VALUES ('329', '?????', '2016-07-04 17:26:13', '110.184.47.228', 'GoodsCotroller.query', 'GoodsQuery', '??-??');
INSERT INTO `t_systemlog` VALUES ('330', '超级管理员', '2016-07-04 17:32:00', '0:0:0:0:0:0:0:1', 'GoodsCotroller.goods', '', '商品-主页');
INSERT INTO `t_systemlog` VALUES ('331', '超级管理员', '2016-07-04 17:32:01', '0:0:0:0:0:0:0:1', 'StoreController.getAll', '', '用户店铺-列表');
INSERT INTO `t_systemlog` VALUES ('332', '超级管理员', '2016-07-04 17:32:01', '0:0:0:0:0:0:0:1', 'GoodsCotroller.query', 'GoodsQuery', '商品-查询');
INSERT INTO `t_systemlog` VALUES ('333', '?????', '2016-07-04 22:33:43', '171.217.43.97', 'GoodsCotroller.goods', '', '??-??');
INSERT INTO `t_systemlog` VALUES ('334', '?????', '2016-07-04 22:33:44', '171.217.43.97', 'StoreController.getAll', '', '????-??');
INSERT INTO `t_systemlog` VALUES ('335', '?????', '2016-07-04 22:33:44', '171.217.43.97', 'GoodsCotroller.query', 'GoodsQuery', '??-??');
INSERT INTO `t_systemlog` VALUES ('336', '超级管理员', '2016-07-05 11:44:39', '0:0:0:0:0:0:0:1', 'GoodsCotroller.goods', '', '商品-主页');
INSERT INTO `t_systemlog` VALUES ('337', '超级管理员', '2016-07-05 11:44:40', '0:0:0:0:0:0:0:1', 'StoreController.getAll', '', '用户店铺-列表');
INSERT INTO `t_systemlog` VALUES ('338', '超级管理员', '2016-07-05 11:44:40', '0:0:0:0:0:0:0:1', 'GoodsCotroller.query', 'GoodsQuery', '商品-查询');
INSERT INTO `t_systemlog` VALUES ('339', '超级管理员', '2016-07-05 11:45:21', '0:0:0:0:0:0:0:1', 'GoodsCotroller.goods', '', '商品-主页');
INSERT INTO `t_systemlog` VALUES ('340', '超级管理员', '2016-07-05 11:45:22', '0:0:0:0:0:0:0:1', 'StoreController.getAll', '', '用户店铺-列表');
INSERT INTO `t_systemlog` VALUES ('341', '超级管理员', '2016-07-05 11:45:22', '0:0:0:0:0:0:0:1', 'GoodsCotroller.query', 'GoodsQuery', '商品-查询');
INSERT INTO `t_systemlog` VALUES ('342', '超级管理员', '2016-07-05 14:49:16', '0:0:0:0:0:0:0:1', 'GoodsCotroller.goods', '', '商品-主页');
INSERT INTO `t_systemlog` VALUES ('343', '超级管理员', '2016-07-05 14:49:18', '0:0:0:0:0:0:0:1', 'StoreController.getAll', '', '用户店铺-列表');
INSERT INTO `t_systemlog` VALUES ('344', '超级管理员', '2016-07-05 14:49:18', '0:0:0:0:0:0:0:1', 'GoodsCotroller.query', 'GoodsQuery', '商品-查询');
INSERT INTO `t_systemlog` VALUES ('345', '超级管理员', '2016-07-05 14:49:20', '0:0:0:0:0:0:0:1', 'GoodsCotroller.products', '70', '商品-规格明细');
INSERT INTO `t_systemlog` VALUES ('346', '超级管理员', '2016-07-05 14:49:25', '0:0:0:0:0:0:0:1', 'GoodsCotroller.products', '69', '商品-规格明细');
INSERT INTO `t_systemlog` VALUES ('347', '超级管理员', '2016-07-05 14:49:30', '0:0:0:0:0:0:0:1', 'GoodsCotroller.products', '68', '商品-规格明细');
INSERT INTO `t_systemlog` VALUES ('348', '超级管理员', '2016-07-05 14:49:33', '0:0:0:0:0:0:0:1', 'GoodsCotroller.products', '67', '商品-规格明细');
INSERT INTO `t_systemlog` VALUES ('349', '超级管理员', '2016-07-05 14:49:36', '0:0:0:0:0:0:0:1', 'GoodsCotroller.products', '66', '商品-规格明细');
INSERT INTO `t_systemlog` VALUES ('350', '超级管理员', '2016-07-05 14:49:39', '0:0:0:0:0:0:0:1', 'GoodsCotroller.products', '70', '商品-规格明细');
INSERT INTO `t_systemlog` VALUES ('351', '超级管理员', '2016-07-05 14:49:41', '0:0:0:0:0:0:0:1', 'GoodsCotroller.products', '69', '商品-规格明细');
INSERT INTO `t_systemlog` VALUES ('352', '超级管理员', '2016-07-05 14:49:43', '0:0:0:0:0:0:0:1', 'GoodsCotroller.products', '68', '商品-规格明细');
INSERT INTO `t_systemlog` VALUES ('353', '超级管理员', '2016-07-05 14:50:59', '0:0:0:0:0:0:0:1', 'GoodsCotroller.products', '66', '商品-规格明细');
INSERT INTO `t_systemlog` VALUES ('354', '超级管理员', '2016-07-05 14:51:55', '0:0:0:0:0:0:0:1', 'GoodsCotroller.products', '67', '商品-规格明细');
INSERT INTO `t_systemlog` VALUES ('355', '超级管理员', '2016-07-05 14:51:58', '0:0:0:0:0:0:0:1', 'GoodsCotroller.products', '65', '商品-规格明细');
INSERT INTO `t_systemlog` VALUES ('356', '超级管理员', '2016-07-05 15:42:17', '0:0:0:0:0:0:0:1', 'StoreController.index', '', '用户店铺-主页');
INSERT INTO `t_systemlog` VALUES ('357', '超级管理员', '2016-07-05 15:42:19', '0:0:0:0:0:0:0:1', 'StoreController.query', 'StoreQuery', '用户店铺-查询');
INSERT INTO `t_systemlog` VALUES ('358', '超级管理员', '2016-07-05 15:43:26', '0:0:0:0:0:0:0:1', 'StoreController.index', '', '用户店铺-主页');
INSERT INTO `t_systemlog` VALUES ('359', '超级管理员', '2016-07-05 15:43:27', '0:0:0:0:0:0:0:1', 'StoreController.query', 'StoreQuery', '用户店铺-查询');
INSERT INTO `t_systemlog` VALUES ('360', '超级管理员', '2016-07-05 15:43:47', '0:0:0:0:0:0:0:1', 'StoreController.index', '', '用户店铺-主页');
INSERT INTO `t_systemlog` VALUES ('361', '超级管理员', '2016-07-05 15:43:48', '0:0:0:0:0:0:0:1', 'StoreController.query', 'StoreQuery', '用户店铺-查询');
INSERT INTO `t_systemlog` VALUES ('362', '超级管理员', '2016-07-05 15:43:53', '0:0:0:0:0:0:0:1', 'StoreController.query', 'StoreQuery', '用户店铺-查询');
INSERT INTO `t_systemlog` VALUES ('363', '超级管理员', '2016-07-05 15:44:01', '0:0:0:0:0:0:0:1', 'StoreController.query', 'StoreQuery', '用户店铺-查询');
INSERT INTO `t_systemlog` VALUES ('364', '超级管理员', '2016-07-05 15:45:53', '0:0:0:0:0:0:0:1', 'StoreController.index', '', '用户店铺-主页');
INSERT INTO `t_systemlog` VALUES ('365', '超级管理员', '2016-07-05 15:45:54', '0:0:0:0:0:0:0:1', 'StoreController.query', 'StoreQuery', '用户店铺-查询');
INSERT INTO `t_systemlog` VALUES ('366', '超级管理员', '2016-07-05 15:45:58', '0:0:0:0:0:0:0:1', 'StoreController.index', '', '用户店铺-主页');
INSERT INTO `t_systemlog` VALUES ('367', '超级管理员', '2016-07-05 15:45:59', '0:0:0:0:0:0:0:1', 'StoreController.query', 'StoreQuery', '用户店铺-查询');
INSERT INTO `t_systemlog` VALUES ('368', '超级管理员', '2016-07-05 15:46:12', '0:0:0:0:0:0:0:1', 'StoreController.index', '', '用户店铺-主页');
INSERT INTO `t_systemlog` VALUES ('369', '超级管理员', '2016-07-05 15:46:13', '0:0:0:0:0:0:0:1', 'StoreController.query', 'StoreQuery', '用户店铺-查询');
INSERT INTO `t_systemlog` VALUES ('370', '超级管理员', '2016-07-05 15:46:12', '0:0:0:0:0:0:0:1', 'StoreController.query', 'StoreQuery', '用户店铺-查询');
INSERT INTO `t_systemlog` VALUES ('371', '超级管理员', '2016-07-05 15:46:20', '0:0:0:0:0:0:0:1', 'StoreController.query', 'StoreQuery', '用户店铺-查询');
INSERT INTO `t_systemlog` VALUES ('372', '超级管理员', '2016-07-05 15:46:23', '0:0:0:0:0:0:0:1', 'StoreController.query', 'StoreQuery', '用户店铺-查询');
INSERT INTO `t_systemlog` VALUES ('373', '超级管理员', '2016-07-05 15:46:41', '0:0:0:0:0:0:0:1', 'StoreController.query', 'StoreQuery', '用户店铺-查询');

-- ----------------------------
-- Table structure for t_totalorder
-- ----------------------------
DROP TABLE IF EXISTS `t_totalorder`;
CREATE TABLE `t_totalorder` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `orderNum` varchar(255) NOT NULL,
  `totalPrice` decimal(10,2) DEFAULT NULL,
  `payPrice` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=481 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_totalorder
-- ----------------------------
INSERT INTO `t_totalorder` VALUES ('403', '00624163129000063', '0.00', null);
INSERT INTO `t_totalorder` VALUES ('404', '00624163133000063', '0.00', null);
INSERT INTO `t_totalorder` VALUES ('405', '00624163137000063', '0.00', null);
INSERT INTO `t_totalorder` VALUES ('406', '00624165407000063', '160.00', '160.00');
INSERT INTO `t_totalorder` VALUES ('407', '00624165607000063', '160.00', '160.00');
INSERT INTO `t_totalorder` VALUES ('408', '00624165614000063', '160.00', '160.00');
INSERT INTO `t_totalorder` VALUES ('409', '00624165752000063', '160.00', '160.00');
INSERT INTO `t_totalorder` VALUES ('410', '00624170003000063', '460.00', '460.00');
INSERT INTO `t_totalorder` VALUES ('411', '00627101256000065', '160.00', '160.00');
INSERT INTO `t_totalorder` VALUES ('412', '00627101338000065', '160.00', '160.00');
INSERT INTO `t_totalorder` VALUES ('414', '00627101502000065', '100.00', '100.00');
INSERT INTO `t_totalorder` VALUES ('415', '00627115728000067', '110.00', '110.00');
INSERT INTO `t_totalorder` VALUES ('416', '00627115739000067', '110.00', '110.00');
INSERT INTO `t_totalorder` VALUES ('420', '00627120116000068', '610.00', '610.00');
INSERT INTO `t_totalorder` VALUES ('422', '00627120141000067', '25.00', '25.00');
INSERT INTO `t_totalorder` VALUES ('425', '00627121201000064', '320.00', '320.00');
INSERT INTO `t_totalorder` VALUES ('426', '00627121303000068', '86.00', '86.00');
INSERT INTO `t_totalorder` VALUES ('427', '00627121608000068', '67.00', '67.00');
INSERT INTO `t_totalorder` VALUES ('428', '00627122606000068', '67.00', '67.00');
INSERT INTO `t_totalorder` VALUES ('429', '00627123112000068', '29.00', '29.00');
INSERT INTO `t_totalorder` VALUES ('431', '00627140245000068', '67.00', '67.00');
INSERT INTO `t_totalorder` VALUES ('432', '00627140358000068', '86.00', '86.00');
INSERT INTO `t_totalorder` VALUES ('433', '00627140608000068', '48.00', '48.00');
INSERT INTO `t_totalorder` VALUES ('434', '00627140622000064', '190.00', '190.00');
INSERT INTO `t_totalorder` VALUES ('435', '00627140645000064', '48.00', '48.00');
INSERT INTO `t_totalorder` VALUES ('436', '00627140654000068', '48.00', '48.00');
INSERT INTO `t_totalorder` VALUES ('438', '00627141101000068', '86.00', '86.00');
INSERT INTO `t_totalorder` VALUES ('439', '00627141535000068', '29.00', '29.00');
INSERT INTO `t_totalorder` VALUES ('440', '00627141912000064', '48.00', '48.00');
INSERT INTO `t_totalorder` VALUES ('447', '00627144210000067', '0.00', '0.00');
INSERT INTO `t_totalorder` VALUES ('448', '00627144230000067', '0.00', '0.00');
INSERT INTO `t_totalorder` VALUES ('449', '00627144341000068', '48.00', '48.00');
INSERT INTO `t_totalorder` VALUES ('450', '00627144427000068', '29.00', '29.00');
INSERT INTO `t_totalorder` VALUES ('452', '00627161258000064', '29.00', '29.00');
INSERT INTO `t_totalorder` VALUES ('453', '00627162054000070', '29.00', '29.00');
INSERT INTO `t_totalorder` VALUES ('454', '00627162107000070', '29.00', '29.00');
INSERT INTO `t_totalorder` VALUES ('455', '00627233305000071', '29.00', '29.00');
INSERT INTO `t_totalorder` VALUES ('456', '00627234534000071', '29.00', '29.00');
INSERT INTO `t_totalorder` VALUES ('458', '00627235539000071', '160.00', '160.00');
INSERT INTO `t_totalorder` VALUES ('464', '00628000248000071', '110.00', '110.00');
INSERT INTO `t_totalorder` VALUES ('465', '00628000332000071', '110.00', '110.00');
INSERT INTO `t_totalorder` VALUES ('466', '00628110508000064', '67.00', '67.00');
INSERT INTO `t_totalorder` VALUES ('467', '00628110704000067', '55.00', '55.00');
INSERT INTO `t_totalorder` VALUES ('468', '00628110744000067', '55.00', '55.00');
INSERT INTO `t_totalorder` VALUES ('469', '00628133440000064', '86.00', '86.00');
INSERT INTO `t_totalorder` VALUES ('470', '00628140357000068', '48.00', '48.00');
INSERT INTO `t_totalorder` VALUES ('471', '00628140443000068', '48.00', '48.00');
INSERT INTO `t_totalorder` VALUES ('472', '00628141118000068', '48.00', '48.00');
INSERT INTO `t_totalorder` VALUES ('473', '00629063834000064', '13.00', '13.00');
INSERT INTO `t_totalorder` VALUES ('474', '00629183656000064', '190.00', '190.00');
INSERT INTO `t_totalorder` VALUES ('475', '00629183710000064', '190.00', '190.00');
INSERT INTO `t_totalorder` VALUES ('476', '00629183755000064', '190.00', '190.00');
INSERT INTO `t_totalorder` VALUES ('478', '00629183933000064', '320.00', '320.00');
INSERT INTO `t_totalorder` VALUES ('479', '00630171506000063', '60.00', '60.00');
INSERT INTO `t_totalorder` VALUES ('480', '00630172031000011', '0.00', null);

-- ----------------------------
-- Table structure for t_type
-- ----------------------------
DROP TABLE IF EXISTS `t_type`;
CREATE TABLE `t_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `pinYin` varchar(10) NOT NULL,
  `image` varchar(255) NOT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_type
-- ----------------------------
INSERT INTO `t_type` VALUES ('1', '女装', 'N', '/images/typeImage/a43100f5-8bee-4afb-9814-adfaed5710c0.png', null);
INSERT INTO `t_type` VALUES ('2', '男装', 'N', '/images/typeImage/6ee4d07c-91ce-43f3-8995-527f98cae005.png', null);
INSERT INTO `t_type` VALUES ('3', '鞋子', 'X', '/images/typeImage/03b1add9-932b-479a-8143-a2de9b9854b6.png', null);
INSERT INTO `t_type` VALUES ('4', '时尚裙装', 'S', '/images/typeImage/c8d7470c-b54c-49e6-b748-99ba309b32d4.png', '1');
INSERT INTO `t_type` VALUES ('5', '时尚裤装', 'S', '/images/typeImage/baba268d-4019-4a3e-9a77-54b0a660cf34.png', '1');
INSERT INTO `t_type` VALUES ('6', '裤装', 'K', '/images/typeImage/b8c9076c-faf5-4745-a445-6621c35d2c37.png', '2');
INSERT INTO `t_type` VALUES ('7', '上衣', 'S', '/images/typeImage/a95b948f-8f8a-4f8b-921e-d3b6682ab72a.png', '2');
INSERT INTO `t_type` VALUES ('8', '运动鞋', 'Y', '/images/typeImage/7695ca0b-eac8-47f0-a1c3-8215faecad4b.png', '3');
INSERT INTO `t_type` VALUES ('9', '皮鞋', 'P', '/images/typeImage/1707a9d0-379d-4edf-8592-d6af98d69073.png', '3');
INSERT INTO `t_type` VALUES ('10', '连衣裙', 'L', '/images/typeImage/022dc732-1af4-4872-b7bc-5dd497f1fea9.png', '4');
INSERT INTO `t_type` VALUES ('11', '短裙', 'D', '/images/typeImage/48e475c2-7fd8-49d1-a0fd-12a86d5d0c81.png', '4');
INSERT INTO `t_type` VALUES ('12', '短裤', 'D', '/images/typeImage/06fe4173-22e2-497e-99a1-7d9e63c860d2.png', '5');
INSERT INTO `t_type` VALUES ('13', '长裤', 'C', '/images/typeImage/fd3621e0-2eae-47f3-ae96-a0b332feedef.png', '5');
INSERT INTO `t_type` VALUES ('14', '童装', 'T', '/images/typeImage/1a426aaf-01c7-4cd1-a908-cf601f17ad31.png', null);
INSERT INTO `t_type` VALUES ('25', '长裙', 'C', '/images/typeImage/441aada4-0ea9-4017-a0df-781f45172b9d.png', '4');
INSERT INTO `t_type` VALUES ('26', '半身裙', 'B', '/images/typeImage/9fdf3225-00c2-4335-a5b8-3c36541a8a48.png', '4');
INSERT INTO `t_type` VALUES ('27', '背带裙', 'B', '/images/typeImage/5fc81e58-8954-48a7-a2d5-d905cd9a56ae.png', '4');
INSERT INTO `t_type` VALUES ('28', '纱裙', 'S', '/images/typeImage/cc118653-16c7-4122-8a41-fc95a24966f8.png', '4');
INSERT INTO `t_type` VALUES ('29', '七分裤', 'Q', '/images/typeImage/19e41107-ec90-4bf5-8139-44dca6bc40bb.png', '5');
INSERT INTO `t_type` VALUES ('30', '牛仔裤', 'N', '/images/typeImage/0cabd736-1c7a-47b4-b305-9e3014c058db.png', '5');
INSERT INTO `t_type` VALUES ('31', '小脚裤', 'X', '/images/typeImage/99676155-abaf-43c5-8672-3dbb77453732.png', '5');
INSERT INTO `t_type` VALUES ('32', '九分裤', 'J', '/images/typeImage/3a0f338b-ac7c-444a-915e-cb70873bd92b.png', '5');
INSERT INTO `t_type` VALUES ('33', '短袖', 'D', '/images/typeImage/f3d55414-8c9f-4c7c-8377-c8099b825199.png', '7');
INSERT INTO `t_type` VALUES ('34', 'polo', 'P', '/images/typeImage/6223ffa0-0681-43b4-8770-f414659fec21.png', '7');
INSERT INTO `t_type` VALUES ('35', '短袖衬衫', 'D', '/images/typeImage/98a158d3-f170-464b-bc60-159d64a7b4c2.png', '7');
INSERT INTO `t_type` VALUES ('36', '长袖衬衫', 'C', '/images/typeImage/1684180f-121c-4d38-9f47-9e8907e04612.png', '7');
INSERT INTO `t_type` VALUES ('37', '西服', 'X', '/images/typeImage/6f309b2d-c8aa-4b51-afee-0f6d25f2a8ad.png', '7');
INSERT INTO `t_type` VALUES ('38', '夹克', 'J', '/images/typeImage/de010741-5ffd-4859-808c-3397400d16b6.png', '7');
INSERT INTO `t_type` VALUES ('39', '西裤', 'X', '/images/typeImage/3c978bd4-1df1-4e5e-ac38-2ed31980a4b4.png', '6');
INSERT INTO `t_type` VALUES ('40', '运动裤', 'Y', '/images/typeImage/50520505-dada-4942-938e-df884f13804b.png', '6');
INSERT INTO `t_type` VALUES ('41', '牛仔短裤', 'N', '/images/typeImage/27e694d9-93c1-4ba9-bd70-1c9dbaf5b978.png', '6');
INSERT INTO `t_type` VALUES ('42', '牛仔裤', 'N', '/images/typeImage/bc33006e-70a0-459a-bc76-07c2acfbca7b.png', '6');
INSERT INTO `t_type` VALUES ('43', '哈伦裤', 'H', '/images/typeImage/e550e310-2a60-4a34-9143-bfbe8f2efff9.png', '6');
INSERT INTO `t_type` VALUES ('44', '小脚裤', 'X', '/images/typeImage/3c505686-d518-4fb0-be4e-337f79e53c09.png', '6');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `headImage` varchar(255) DEFAULT NULL,
  `state` int(11) NOT NULL,
  `userType` int(11) NOT NULL,
  `myCode` varchar(20) NOT NULL,
  `useCode` varchar(255) DEFAULT NULL,
  `background` varchar(255) DEFAULT NULL,
  `turnover` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `store_id` bigint(20) DEFAULT NULL,
  `wechat` varchar(255) DEFAULT NULL,
  `openid` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('62', '13777480631', '2BE774C190DE4D50E2DDEF4802B7B3BC', '13777480631', null, '/images/headImage/2159511f-ca6b-4608-be70-d03591afa02c.jpg', '1', '0', '3tFsoU', '123', '/images/background/a5839f10-56e1-4aea-9636-6b21e8fa85d7.jpg', '0', '0.00', '63', 'Yongz ', 'oKe1_wXi1Bh4fihIL20GmbCkbQ4c', null);
INSERT INTO `t_user` VALUES ('63', '13684258261', 'E10ADC3949BA59ABBE56E057F20F883E', '13684258261', null, '/images/userImage/6ae0e2cb-85ed-48dc-94dd-1bf4a9f606ad.jpg', '1', '0', 'jbQA68', '', '/images/background/e091a1f2-518c-4472-a9c3-b8b33122ce41.jpg', '0', '0.00', '69', 'The One', 'oKe1_wdRLoG9GKpPtnBjMgz5cOEE', null);
INSERT INTO `t_user` VALUES ('64', '17775528016', 'E10ADC3949BA59ABBE56E057F20F883E', '17775528016', null, '/images/headImage/30abf916-1909-4192-841e-38a1855a0e97.jpg', '1', '0', 'bWjXB4', '', '/images/background/7437ef15-381d-45da-8738-83e55d5c9d18.jpg', '0', '0.00', '81', null, null, null);
INSERT INTO `t_user` VALUES ('67', '13548065751', '25D55AD283AA400AF464C76D713C07AD', '13548065751', null, '/images/headImage/af0d983a-7573-4b9a-b392-36825097aa4d.jpg', '1', '0', 'cKQTMP', '', '/images/background/42365265-d37c-494c-bd08-68f08a6f8dd3.jpg', '3', '163.00', '80', '画时代科技', 'oKe1_wdlL98y_jDKKW3-BrXFgvPQ', null);
INSERT INTO `t_user` VALUES ('68', '18683958857', '190882D8E2CFF2D6DA97F32C9AC55E0E', '18683958857', null, '/images/userImage/4ef6ac12-a217-4796-b47b-0bb8ae345cfb.jpg', '1', '0', 'e9X6O7', '', '/images/background/0ab4de1a-3d2e-4615-a9b2-aa6b3ee02c6d.jpg', '0', '0.00', '82', '安', 'oKe1_wQHgsBOA2_jsZjbDxzO-eJM', null);
INSERT INTO `t_user` VALUES ('70', '13012345678', '190882D8E2CFF2D6DA97F32C9AC55E0E', '13012345678', null, null, '1', '1', 'oN9Y0k', 'e9X6O7', null, '0', '0.00', '83', null, null, null);
INSERT INTO `t_user` VALUES ('71', '13980928652', '25D55AD283AA400AF464C76D713C07AD', '13980928652', null, '/images/headImage/8025e233-502a-4f40-a956-bd598126d5ee.jpg', '1', '1', 'ip7nPc', '', '/images/background/6b7ee59d-e217-40e8-ba10-e15361035476.JPEG', '0', '0.00', '84', null, null, null);
INSERT INTO `t_user` VALUES ('72', '13023456789', '190882D8E2CFF2D6DA97F32C9AC55E0E', '13023456789', null, '/images/userImage/eb57139a-0e59-482d-b18b-b1bde5a5cbe2.jpg', '1', '0', 'OywJWm', '', null, '0', '0.00', null, null, null, null);

-- ----------------------------
-- Table structure for t_userimage
-- ----------------------------
DROP TABLE IF EXISTS `t_userimage`;
CREATE TABLE `t_userimage` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `src` varchar(255) NOT NULL,
  `sort` int(11) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=754 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_userimage
-- ----------------------------
INSERT INTO `t_userimage` VALUES ('593', '/images/userImage/00754026-9b5b-4e58-bec3-295369394209.jpg', null, '61');
INSERT INTO `t_userimage` VALUES ('594', '/images/userImage/5831fb27-5b7d-4dea-841a-6afdb135b9f6.jpg', null, '61');
INSERT INTO `t_userimage` VALUES ('595', '/images/userImage/6883f898-d5f5-445f-9868-9e4ac6617f0f.jpg', null, '61');
INSERT INTO `t_userimage` VALUES ('596', '/images/userImage/280712c0-b63e-4a2e-be16-ebde97bd47fa.jpg', null, '61');
INSERT INTO `t_userimage` VALUES ('597', '/images/userImage/4c456efd-7eb6-4e8a-80c7-5d701449aa2d.jpg', null, '61');
INSERT INTO `t_userimage` VALUES ('598', '/images/userImage/3ccfc58a-eeed-4d68-a504-192fc6e8dab6.jpg', null, '61');
INSERT INTO `t_userimage` VALUES ('599', '/images/userImage/a11e1b26-4f16-4762-9678-e59d65f2c048.jpg', null, '61');
INSERT INTO `t_userimage` VALUES ('645', '/images/userImage/799dafef-86ee-4d3e-a839-20313702c825.jpg', null, '68');
INSERT INTO `t_userimage` VALUES ('646', '/images/userImage/477c8dc8-c95e-4db7-91b0-f460fe924dbf.jpg', null, '68');
INSERT INTO `t_userimage` VALUES ('647', '/images/userImage/aa964554-53ef-4d4a-9c11-2f0055954ac0.jpg', null, '68');
INSERT INTO `t_userimage` VALUES ('648', '/images/userImage/abb4726a-79d2-46f0-b12e-873288b91553.jpg', null, '68');
INSERT INTO `t_userimage` VALUES ('684', '/images/userImage/6647a5ed-3c2c-4779-aa82-e85d2bc0e460.png', null, '71');
INSERT INTO `t_userimage` VALUES ('685', '/images/userImage/ad0bbcf4-5dea-49b1-a9ab-c6d63609369e.png', null, '71');
INSERT INTO `t_userimage` VALUES ('686', '/images/userImage/1df06e68-66de-45cb-bc81-e72071e9ff72.png', null, '71');
INSERT INTO `t_userimage` VALUES ('687', '/images/userImage/679b90aa-851d-4e7b-9970-684a4c8d9b63.png', null, '71');
INSERT INTO `t_userimage` VALUES ('688', '/images/userImage/a4607bb3-4ec9-4d40-953a-dc9e29610489.jpg', null, '71');
INSERT INTO `t_userimage` VALUES ('689', '/images/userImage/0ee9fe56-244c-436b-90aa-c42ce1d81c7b.png', null, '71');
INSERT INTO `t_userimage` VALUES ('690', '/images/userImage/dea707be-3ba1-41c7-a288-efe7444ab973.png', null, '71');
INSERT INTO `t_userimage` VALUES ('691', '/images/userImage/4568e4f5-fb02-4174-a54b-9685f3ea78af.png', null, '71');
INSERT INTO `t_userimage` VALUES ('694', '/images/userImage/c57b9621-d564-4e27-a88a-b03a4392f4d8.jpg', null, '72');
INSERT INTO `t_userimage` VALUES ('695', '/images/userImage/f3beccf6-0ed4-49f7-8411-98b077753586.jpg', null, '72');
INSERT INTO `t_userimage` VALUES ('696', '/images/userImage/ca57d34b-5886-424d-aa18-b037202382fd.jpg', null, '72');
INSERT INTO `t_userimage` VALUES ('697', '/images/userImage/8145e016-903c-4f26-98ec-73cbeb557087.jpg', null, '72');
INSERT INTO `t_userimage` VALUES ('698', '/images/userImage/f8a04ad9-6061-4037-baeb-c511305cd2ac.jpg', null, '64');
INSERT INTO `t_userimage` VALUES ('699', '/images/userImage/e5b589b8-f749-40e0-8437-e00563acd0da.jpg', null, '64');
INSERT INTO `t_userimage` VALUES ('700', '/images/userImage/9e8e051a-6640-4780-be56-c5b36e9480ae.jpg', null, '64');
INSERT INTO `t_userimage` VALUES ('701', '/images/userImage/6ef6094b-9039-484d-acbc-136c402fa98d.jpg', null, '64');
INSERT INTO `t_userimage` VALUES ('702', '/images/userImage/3a7c3196-a202-4a1c-be13-2f6bda431d6e.jpg', null, '64');
INSERT INTO `t_userimage` VALUES ('703', '/images/userImage/8bc0525e-df86-4506-a363-4876ca09268d.jpg', null, '64');
INSERT INTO `t_userimage` VALUES ('704', '/images/userImage/d9447015-c5e6-4404-b663-47c31879a117.jpg', null, '64');
INSERT INTO `t_userimage` VALUES ('705', '/images/userImage/95b601e7-4648-4dcd-91eb-572905526fa2.jpg', null, '64');
INSERT INTO `t_userimage` VALUES ('710', '/images/userImage/8f82d7f8-af17-4fde-b5cf-eb8b11c18677.jpg', null, '67');
INSERT INTO `t_userimage` VALUES ('711', '/images/userImage/cba0552e-f273-4a0e-a831-45028b557797.jpg', null, '67');
INSERT INTO `t_userimage` VALUES ('712', '/images/userImage/716fb9c7-22d3-43ef-9fbe-de3ebae80d62.jpg', null, '67');
INSERT INTO `t_userimage` VALUES ('713', '/images/userImage/966a8e16-d688-4e35-8cfa-c9144c98e20f.jpg', null, '67');
INSERT INTO `t_userimage` VALUES ('714', '/images/userImage/a73920a5-31f6-4196-87b9-76af3c2a1942.jpg', null, '67');
INSERT INTO `t_userimage` VALUES ('715', '/images/userImage/4f71cbee-f71d-4e00-8fc7-4987c3552679.jpg', null, '67');
INSERT INTO `t_userimage` VALUES ('716', '/images/userImage/5397500b-a72d-4724-b3db-c70704c381de.jpg', null, '67');
INSERT INTO `t_userimage` VALUES ('717', '/images/userImage/eb585dfd-6660-44cb-b40f-819e4482b80d.jpg', null, '67');
INSERT INTO `t_userimage` VALUES ('724', '/images/userImage/ae511562-00ab-400c-b72a-a93a0caf657b.png', null, '63');
INSERT INTO `t_userimage` VALUES ('725', '/images/userImage/bc34819d-fa34-460f-928c-bfa3b0202772.png', null, '63');
INSERT INTO `t_userimage` VALUES ('726', '/images/userImage/9d841f7c-3591-4668-9564-d6f2ad3eab96.jpg', null, '63');
INSERT INTO `t_userimage` VALUES ('727', '/images/userImage/3e8dbded-b53f-4bb2-9275-9293b64b4109.jpg', null, '63');
INSERT INTO `t_userimage` VALUES ('728', '/images/userImage/f1de9a20-20c1-40fd-8ea8-a4f64df43a15.jpg', null, '63');
INSERT INTO `t_userimage` VALUES ('729', '/images/userImage/6442511f-beaf-40d1-b351-c6215971f098.jpg', null, '63');
INSERT INTO `t_userimage` VALUES ('746', '/images/userImage/cd1a0a53-7c11-4c6d-a4ea-e22f6e632908.jpg', null, '62');
INSERT INTO `t_userimage` VALUES ('747', '/images/userImage/4ed08520-95c1-44d1-a049-d7cd3b97dddc.jpg', null, '62');
INSERT INTO `t_userimage` VALUES ('748', '/images/userImage/38beaedc-491e-45c6-a3d8-237d9fa0860c.jpg', null, '62');
INSERT INTO `t_userimage` VALUES ('749', '/images/userImage/8382be47-7524-4e28-9225-0183b0147182.jpg', null, '62');
INSERT INTO `t_userimage` VALUES ('750', '/images/userImage/78547558-3bb8-44d2-aabb-43dd05d29ecc.jpg', null, '62');
INSERT INTO `t_userimage` VALUES ('751', '/images/userImage/652e373e-7e2c-4f02-9312-8dad1277b0cc.jpg', null, '62');
INSERT INTO `t_userimage` VALUES ('752', '/images/userImage/91b1f27e-60ed-4cd7-acc7-a3530f5b5c7c.jpg', null, '62');
INSERT INTO `t_userimage` VALUES ('753', '/images/userImage/ffb5890c-cde8-4ef4-85ff-3b0977cf53a4.jpg', null, '62');

-- ----------------------------
-- Table structure for t_webpage
-- ----------------------------
DROP TABLE IF EXISTS `t_webpage`;
CREATE TABLE `t_webpage` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_webpage
-- ----------------------------

-- ----------------------------
-- Table structure for t_withdraw
-- ----------------------------
DROP TABLE IF EXISTS `t_withdraw`;
CREATE TABLE `t_withdraw` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `name` varchar(255) NOT NULL,
  `accountAddress` varchar(255) DEFAULT NULL,
  `accountName` varchar(255) NOT NULL,
  `time` datetime NOT NULL,
  `account_id` bigint(20) NOT NULL,
  `state` int(255) NOT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_withdraw
-- ----------------------------
INSERT INTO `t_withdraw` VALUES ('8', '1', '400.00', '张三', null, '1234', '2016-06-24 17:44:08', '19', '0', '');
INSERT INTO `t_withdraw` VALUES ('9', '1', '80.00', '有没有', null, '有没有没有wiw', '2016-06-27 15:27:11', '24', '0', '');
INSERT INTO `t_withdraw` VALUES ('10', '1', '7000.00', '有没有', null, '有没有没有wiw', '2016-06-27 15:27:41', '24', '0', '');
INSERT INTO `t_withdraw` VALUES ('11', '1', '578877.00', '有没有', null, '有没有没有wiw', '2016-06-27 15:36:01', '24', '0', '');
INSERT INTO `t_withdraw` VALUES ('12', '1', '500.00', '张三', null, '13245678910@qq.com', '2016-06-27 15:39:39', '20', '0', '');
INSERT INTO `t_withdraw` VALUES ('13', '1', '300.00', 'fff', null, 'fghh', '2016-06-27 15:41:01', '20', '0', '');
INSERT INTO `t_withdraw` VALUES ('14', '1', '100.00', 'fd', null, 'dd', '2016-06-27 15:48:35', '20', '0', '');
INSERT INTO `t_withdraw` VALUES ('15', '1', '55421123.00', '有没有', null, '有没有没有wiw', '2016-06-27 15:50:27', '24', '0', '');
INSERT INTO `t_withdraw` VALUES ('16', '1', '100.00', 'aaa', null, 'aaa', '2016-06-27 15:54:42', '20', '3', '');
INSERT INTO `t_withdraw` VALUES ('17', '1', '100.00', 'aaa', null, 'aaa', '2016-06-27 15:55:27', '20', '3', '');
INSERT INTO `t_withdraw` VALUES ('18', '1', '100.00', 'aaa', null, 'aaa', '2016-06-27 15:56:40', '20', '3', '');
INSERT INTO `t_withdraw` VALUES ('19', '1', '100.00', 'hhh', null, 'hgg', '2016-06-27 15:57:33', '20', '3', '');
INSERT INTO `t_withdraw` VALUES ('20', '1', '1000.00', 'zss', null, '444', '2016-06-27 16:06:15', '20', '3', '');
INSERT INTO `t_withdraw` VALUES ('21', '1', '100.00', 'dd', null, 'bb', '2016-07-01 11:57:22', '19', '3', '');
INSERT INTO `t_withdraw` VALUES ('22', '1', '100.00', '100', null, '100', '2016-07-01 11:58:02', '19', '3', '');
INSERT INTO `t_withdraw` VALUES ('23', '1', '999.00', 'hh', null, 'vvv', '2016-07-01 12:01:21', '19', '3', '');
INSERT INTO `t_withdraw` VALUES ('24', '1', '600.00', 'vv', null, 'bb', '2016-07-01 12:03:48', '19', '3', '');
INSERT INTO `t_withdraw` VALUES ('25', '1', '1000.00', 'hh', null, 'vv', '2016-07-01 12:05:48', '19', '3', '');
