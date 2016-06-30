/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : wht

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2016-03-04 17:34:25
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
  `dayPrice` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_adpositionid
-- ----------------------------
INSERT INTO `t_adpositionid` VALUES ('1', '1', null, '11');
INSERT INTO `t_adpositionid` VALUES ('2', '1', null, '22');
INSERT INTO `t_adpositionid` VALUES ('3', '1', null, '33');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_bannerimage
-- ----------------------------

-- ----------------------------
-- Table structure for t_brand
-- ----------------------------
DROP TABLE IF EXISTS `t_brand`;
CREATE TABLE `t_brand` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_brand
-- ----------------------------

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
) ENGINE=MyISAM AUTO_INCREMENT=392 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
-- Table structure for t_detailsimage
-- ----------------------------
DROP TABLE IF EXISTS `t_detailsimage`;
CREATE TABLE `t_detailsimage` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `src` varchar(100) NOT NULL,
  `sort` int(11) DEFAULT NULL,
  `goods_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_detailsimage
-- ----------------------------
INSERT INTO `t_detailsimage` VALUES ('1', 'http://211.149.241.17:8888/bmw/image/garageImage/20151210-171936281.jpg', '1', '1');
INSERT INTO `t_detailsimage` VALUES ('2', 'http://211.149.241.17:8888/bmw/image/garageImage/20151210-171936281.jpg', null, '1');
INSERT INTO `t_detailsimage` VALUES ('3', 'http://211.149.241.17:8888/bmw/image/garageImage/20151210-171936281.jpg', null, '1');

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_employee
-- ----------------------------
INSERT INTO `t_employee` VALUES ('1', 'admin', '21232F297A57A5A743894A0E4A801FC3', '超级管理员', null, '1');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_employee_role
-- ----------------------------

-- ----------------------------
-- Table structure for t_goods
-- ----------------------------
DROP TABLE IF EXISTS `t_goods`;
CREATE TABLE `t_goods` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(120) NOT NULL,
  `goodsNum` varchar(50) NOT NULL,
  `details` text NOT NULL,
  `price` double NOT NULL,
  `salePrice` double NOT NULL,
  `postage` double NOT NULL,
  `state` int(11) DEFAULT NULL,
  `proxyNum` int(11) DEFAULT NULL,
  `saleNum` int(11) DEFAULT NULL,
  `time` datetime NOT NULL,
  `brand_id` bigint(20) NOT NULL,
  `type_id` bigint(20) NOT NULL,
  `store_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_goods
-- ----------------------------

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_menu
-- ----------------------------
INSERT INTO `t_menu` VALUES ('1', '商品管理', null, null, null, null);
INSERT INTO `t_menu` VALUES ('2', '广告位管理', null, null, null, null);
INSERT INTO `t_menu` VALUES ('3', '店铺管理', null, null, null, null);
INSERT INTO `t_menu` VALUES ('4', '资金流水', null, null, null, null);
INSERT INTO `t_menu` VALUES ('5', '代理商管理', null, null, null, null);

-- ----------------------------
-- Table structure for t_permission
-- ----------------------------
DROP TABLE IF EXISTS `t_permission`;
CREATE TABLE `t_permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `intro` varchar(100) DEFAULT NULL,
  `resource` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `resource` (`resource`)
) ENGINE=InnoDB AUTO_INCREMENT=687 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_permission
-- ----------------------------
INSERT INTO `t_permission` VALUES ('1', null, null, 'com.huashidai.weihuotong.controller.EmployeeCotroller:ALL');
INSERT INTO `t_permission` VALUES ('2', null, null, 'com.huashidai.weihuotong.controller.IndexController:ALL');
INSERT INTO `t_permission` VALUES ('3', null, null, 'com.huashidai.weihuotong.controller.LoginController:ALL');
INSERT INTO `t_permission` VALUES ('4', null, null, 'com.huashidai.weihuotong.controller.MenuCotroller:ALL');
INSERT INTO `t_permission` VALUES ('5', null, null, 'com.huashidai.weihuotong.controller.PermissionController:ALL');
INSERT INTO `t_permission` VALUES ('6', '权限编辑', null, 'com.huashidai.weihuotong.controller.PermissionController:save');
INSERT INTO `t_permission` VALUES ('7', '权限删除', null, 'com.huashidai.weihuotong.controller.PermissionController:delete');
INSERT INTO `t_permission` VALUES ('8', '权限主页', null, 'com.huashidai.weihuotong.controller.PermissionController:index');
INSERT INTO `t_permission` VALUES ('9', '权限列表', null, 'com.huashidai.weihuotong.controller.PermissionController:getAll');
INSERT INTO `t_permission` VALUES ('10', null, null, 'com.huashidai.weihuotong.controller.RandomCodeController:ALL');
INSERT INTO `t_permission` VALUES ('11', null, null, 'com.huashidai.weihuotong.controller.ResourceController:ALL');
INSERT INTO `t_permission` VALUES ('12', null, null, 'com.huashidai.weihuotong.controller.RoleController:ALL');
INSERT INTO `t_permission` VALUES ('13', null, null, 'com.huashidai.weihuotong.controller.SystemDictionaryCotroller:ALL');
INSERT INTO `t_permission` VALUES ('14', '字典编辑', null, 'com.huashidai.weihuotong.controller.SystemDictionaryCotroller:save');
INSERT INTO `t_permission` VALUES ('15', '字典删除', null, 'com.huashidai.weihuotong.controller.SystemDictionaryCotroller:delete');
INSERT INTO `t_permission` VALUES ('16', null, null, 'com.huashidai.weihuotong.controller.SystemDictionaryItemCotroller:ALL');
INSERT INTO `t_permission` VALUES ('17', '字典明细编辑', null, 'com.huashidai.weihuotong.controller.SystemDictionaryItemCotroller:save');
INSERT INTO `t_permission` VALUES ('18', '字典明细删除', null, 'com.huashidai.weihuotong.controller.SystemDictionaryItemCotroller:delete');
INSERT INTO `t_permission` VALUES ('19', null, null, 'com.huashidai.weihuotong.controller.SystemLogController:ALL');
INSERT INTO `t_permission` VALUES ('20', null, null, 'com.huashidai.weihuotong.controller.UserController:ALL');
INSERT INTO `t_permission` VALUES ('21', '客户编辑', null, 'com.huashidai.weihuotong.controller.UserController:save');
INSERT INTO `t_permission` VALUES ('22', '客户列表', null, 'com.huashidai.weihuotong.controller.UserController:list');
INSERT INTO `t_permission` VALUES ('23', '客户删除', null, 'com.huashidai.weihuotong.controller.UserController:delete');
INSERT INTO `t_permission` VALUES ('24', '客户主页', null, 'com.huashidai.weihuotong.controller.UserController:index');
INSERT INTO `t_permission` VALUES ('25', '客户查询', null, 'com.huashidai.weihuotong.controller.UserController:query');
INSERT INTO `t_permission` VALUES ('101', null, null, 'com.huashidai.weihuotong.app.UserAPP:ALL');
INSERT INTO `t_permission` VALUES ('153', null, null, 'com.huashidai.weihuotong.app.PromotionAPP:ALL');
INSERT INTO `t_permission` VALUES ('154', null, null, 'com.huashidai.weihuotong.app.StoreAPP:ALL');
INSERT INTO `t_permission` VALUES ('210', null, null, 'com.huashidai.weihuotong.app.GoodsAPP:ALL');
INSERT INTO `t_permission` VALUES ('297', null, null, 'com.huashidai.weihuotong.app.TypeAPP:ALL');

-- ----------------------------
-- Table structure for t_product
-- ----------------------------
DROP TABLE IF EXISTS `t_product`;
CREATE TABLE `t_product` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `inventoryNum` int(11) NOT NULL,
  `specification` varchar(255) NOT NULL,
  `goods_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_product
-- ----------------------------

-- ----------------------------
-- Table structure for t_promotion
-- ----------------------------
DROP TABLE IF EXISTS `t_promotion`;
CREATE TABLE `t_promotion` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  `contentType` int(11) NOT NULL,
  `contentId` int(11) NOT NULL,
  `beginTime` datetime NOT NULL,
  `endTime` datetime NOT NULL,
  `price` double NOT NULL,
  `adPositionId_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_promotion
-- ----------------------------
INSERT INTO `t_promotion` VALUES ('1', '图片', '1', '1', '2016-02-01 14:27:55', '2016-02-18 14:27:59', '123', '1');
INSERT INTO `t_promotion` VALUES ('2', '图片', '1', '1', '2016-02-01 14:27:55', '2016-02-18 14:27:59', '123', '2');
INSERT INTO `t_promotion` VALUES ('3', '图片', '1', '1', '2016-02-01 14:27:55', '2016-02-18 14:27:59', '123', '3');
INSERT INTO `t_promotion` VALUES ('4', '图片', '1', '1', '2016-02-01 14:27:55', '2016-02-18 14:27:59', '123', '4');
INSERT INTO `t_promotion` VALUES ('5', '图片', '1', '1', '2016-02-01 14:27:55', '2016-02-18 14:27:59', '123', '5');
INSERT INTO `t_promotion` VALUES ('6', '图片', '1', '1', '2016-02-01 14:27:55', '2016-02-18 14:27:59', '123', '6');
INSERT INTO `t_promotion` VALUES ('7', '图片', '1', '1', '2016-02-01 14:27:55', '2016-02-18 14:27:59', '123', '7');
INSERT INTO `t_promotion` VALUES ('8', '图片', '1', '1', '2016-02-01 14:27:55', '2016-02-18 14:27:59', '123', '8');
INSERT INTO `t_promotion` VALUES ('9', '图片', '1', '1', '2016-02-01 14:27:55', '2016-02-18 14:27:59', '123', '9');
INSERT INTO `t_promotion` VALUES ('10', '图片', '1', '1', '2016-02-01 14:27:55', '2016-02-18 14:27:59', '123', '10');
INSERT INTO `t_promotion` VALUES ('11', '图片', '1', '1', '2016-02-01 14:27:55', '2016-02-18 14:27:59', '123', '11');
INSERT INTO `t_promotion` VALUES ('12', '图片', '1', '1', '2016-02-01 14:27:55', '2016-02-18 14:27:59', '123', '12');
INSERT INTO `t_promotion` VALUES ('13', '图片', '1', '1', '2016-01-15 16:32:40', '2016-02-24 16:32:47', '123', '13');
INSERT INTO `t_promotion` VALUES ('14', '图片', '1', '1', '2016-02-29 16:33:15', '2016-02-29 16:33:18', '123', '14');
INSERT INTO `t_promotion` VALUES ('15', '图片', '1', '1', '2016-02-29 16:33:30', '2016-02-29 16:33:33', '123', '15');
INSERT INTO `t_promotion` VALUES ('16', '图片', '1', '1', '2016-02-29 16:34:16', '2016-02-29 16:34:18', '123', '16');
INSERT INTO `t_promotion` VALUES ('17', '图片', '1', '1', '2016-02-10 16:34:40', '2016-02-20 16:34:42', '123', '17');
INSERT INTO `t_promotion` VALUES ('18', '图片', '3', '1', '2016-02-24 16:34:56', '2016-02-12 16:35:00', '123', '18');

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
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
  `price` double NOT NULL,
  `details` text NOT NULL,
  `goods_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_proxygoods
-- ----------------------------

-- ----------------------------
-- Table structure for t_resource
-- ----------------------------
DROP TABLE IF EXISTS `t_resource`;
CREATE TABLE `t_resource` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2790 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_resource
-- ----------------------------
INSERT INTO `t_resource` VALUES ('1623', 'com.huashidai.weihuotong.app.GoodsAPP:ALL');
INSERT INTO `t_resource` VALUES ('1624', 'com.huashidai.weihuotong.app.GoodsAPP:detailsImages');
INSERT INTO `t_resource` VALUES ('1627', 'com.huashidai.weihuotong.app.GoodsAPP:enterGoods');
INSERT INTO `t_resource` VALUES ('1625', 'com.huashidai.weihuotong.app.GoodsAPP:proxyGoods');
INSERT INTO `t_resource` VALUES ('1626', 'com.huashidai.weihuotong.app.GoodsAPP:toBuyProduct');
INSERT INTO `t_resource` VALUES ('341', 'com.huashidai.weihuotong.app.PromotionAPP:ALL');
INSERT INTO `t_resource` VALUES ('342', 'com.huashidai.weihuotong.app.PromotionAPP:checkLogin');
INSERT INTO `t_resource` VALUES ('1491', 'com.huashidai.weihuotong.app.PromotionAPP:enterPromotion');
INSERT INTO `t_resource` VALUES ('1492', 'com.huashidai.weihuotong.app.PromotionAPP:enterWebPage');
INSERT INTO `t_resource` VALUES ('821', 'com.huashidai.weihuotong.app.PromotionAPP:promotion');
INSERT INTO `t_resource` VALUES ('881', 'com.huashidai.weihuotong.app.PromotionAPP:promotionOfType');
INSERT INTO `t_resource` VALUES ('521', 'com.huashidai.weihuotong.app.PromotionAPP:promotionp');
INSERT INTO `t_resource` VALUES ('1493', 'com.huashidai.weihuotong.app.StoreAPP:ALL');
INSERT INTO `t_resource` VALUES ('1494', 'com.huashidai.weihuotong.app.StoreAPP:enterStore');
INSERT INTO `t_resource` VALUES ('1833', 'com.huashidai.weihuotong.app.TypeAPP:ALL');
INSERT INTO `t_resource` VALUES ('2490', 'com.huashidai.weihuotong.app.TypeAPP:enterType');
INSERT INTO `t_resource` VALUES ('2342', 'com.huashidai.weihuotong.app.TypeAPP:parentsAndItem');
INSERT INTO `t_resource` VALUES ('1834', 'com.huashidai.weihuotong.app.TypeAPP:type');
INSERT INTO `t_resource` VALUES ('1977', 'com.huashidai.weihuotong.app.TypeAPP:typeItem');
INSERT INTO `t_resource` VALUES ('225', 'com.huashidai.weihuotong.app.UserAPP:ALL');
INSERT INTO `t_resource` VALUES ('226', 'com.huashidai.weihuotong.app.UserAPP:checkLogin');
INSERT INTO `t_resource` VALUES ('1', 'com.huashidai.weihuotong.controller.EmployeeCotroller:ALL');
INSERT INTO `t_resource` VALUES ('3', 'com.huashidai.weihuotong.controller.EmployeeCotroller:delete');
INSERT INTO `t_resource` VALUES ('6', 'com.huashidai.weihuotong.controller.EmployeeCotroller:employee');
INSERT INTO `t_resource` VALUES ('7', 'com.huashidai.weihuotong.controller.EmployeeCotroller:employeeQuery');
INSERT INTO `t_resource` VALUES ('8', 'com.huashidai.weihuotong.controller.EmployeeCotroller:employeeResult');
INSERT INTO `t_resource` VALUES ('4', 'com.huashidai.weihuotong.controller.EmployeeCotroller:leave');
INSERT INTO `t_resource` VALUES ('5', 'com.huashidai.weihuotong.controller.EmployeeCotroller:mian');
INSERT INTO `t_resource` VALUES ('2', 'com.huashidai.weihuotong.controller.EmployeeCotroller:save');
INSERT INTO `t_resource` VALUES ('9', 'com.huashidai.weihuotong.controller.IndexController:ALL');
INSERT INTO `t_resource` VALUES ('10', 'com.huashidai.weihuotong.controller.IndexController:execut');
INSERT INTO `t_resource` VALUES ('11', 'com.huashidai.weihuotong.controller.LoginController:ALL');
INSERT INTO `t_resource` VALUES ('12', 'com.huashidai.weihuotong.controller.LoginController:checkLogin');
INSERT INTO `t_resource` VALUES ('13', 'com.huashidai.weihuotong.controller.MenuCotroller:ALL');
INSERT INTO `t_resource` VALUES ('14', 'com.huashidai.weihuotong.controller.MenuCotroller:test2');
INSERT INTO `t_resource` VALUES ('15', 'com.huashidai.weihuotong.controller.PermissionController:ALL');
INSERT INTO `t_resource` VALUES ('17', 'com.huashidai.weihuotong.controller.PermissionController:delete');
INSERT INTO `t_resource` VALUES ('19', 'com.huashidai.weihuotong.controller.PermissionController:getAll');
INSERT INTO `t_resource` VALUES ('18', 'com.huashidai.weihuotong.controller.PermissionController:index');
INSERT INTO `t_resource` VALUES ('20', 'com.huashidai.weihuotong.controller.PermissionController:permissionAll');
INSERT INTO `t_resource` VALUES ('16', 'com.huashidai.weihuotong.controller.PermissionController:save');
INSERT INTO `t_resource` VALUES ('21', 'com.huashidai.weihuotong.controller.RandomCodeController:ALL');
INSERT INTO `t_resource` VALUES ('23', 'com.huashidai.weihuotong.controller.RandomCodeController:getRandColor');
INSERT INTO `t_resource` VALUES ('22', 'com.huashidai.weihuotong.controller.RandomCodeController:service');
INSERT INTO `t_resource` VALUES ('24', 'com.huashidai.weihuotong.controller.ResourceController:ALL');
INSERT INTO `t_resource` VALUES ('26', 'com.huashidai.weihuotong.controller.ResourceController:delete');
INSERT INTO `t_resource` VALUES ('28', 'com.huashidai.weihuotong.controller.ResourceController:roleAll');
INSERT INTO `t_resource` VALUES ('27', 'com.huashidai.weihuotong.controller.ResourceController:roleList');
INSERT INTO `t_resource` VALUES ('25', 'com.huashidai.weihuotong.controller.ResourceController:save');
INSERT INTO `t_resource` VALUES ('29', 'com.huashidai.weihuotong.controller.RoleController:ALL');
INSERT INTO `t_resource` VALUES ('31', 'com.huashidai.weihuotong.controller.RoleController:delete');
INSERT INTO `t_resource` VALUES ('34', 'com.huashidai.weihuotong.controller.RoleController:echo');
INSERT INTO `t_resource` VALUES ('33', 'com.huashidai.weihuotong.controller.RoleController:roleAll');
INSERT INTO `t_resource` VALUES ('32', 'com.huashidai.weihuotong.controller.RoleController:roleList');
INSERT INTO `t_resource` VALUES ('30', 'com.huashidai.weihuotong.controller.RoleController:save');
INSERT INTO `t_resource` VALUES ('35', 'com.huashidai.weihuotong.controller.SystemDictionaryCotroller:ALL');
INSERT INTO `t_resource` VALUES ('37', 'com.huashidai.weihuotong.controller.SystemDictionaryCotroller:delete');
INSERT INTO `t_resource` VALUES ('38', 'com.huashidai.weihuotong.controller.SystemDictionaryCotroller:index');
INSERT INTO `t_resource` VALUES ('36', 'com.huashidai.weihuotong.controller.SystemDictionaryCotroller:save');
INSERT INTO `t_resource` VALUES ('39', 'com.huashidai.weihuotong.controller.SystemDictionaryCotroller:systemDictionaryList');
INSERT INTO `t_resource` VALUES ('40', 'com.huashidai.weihuotong.controller.SystemDictionaryItemCotroller:ALL');
INSERT INTO `t_resource` VALUES ('42', 'com.huashidai.weihuotong.controller.SystemDictionaryItemCotroller:delete');
INSERT INTO `t_resource` VALUES ('41', 'com.huashidai.weihuotong.controller.SystemDictionaryItemCotroller:save');
INSERT INTO `t_resource` VALUES ('43', 'com.huashidai.weihuotong.controller.SystemDictionaryItemCotroller:SystemDictionaryItemList');
INSERT INTO `t_resource` VALUES ('44', 'com.huashidai.weihuotong.controller.SystemLogController:ALL');
INSERT INTO `t_resource` VALUES ('46', 'com.huashidai.weihuotong.controller.SystemLogController:index');
INSERT INTO `t_resource` VALUES ('45', 'com.huashidai.weihuotong.controller.SystemLogController:list');
INSERT INTO `t_resource` VALUES ('47', 'com.huashidai.weihuotong.controller.SystemLogController:query');
INSERT INTO `t_resource` VALUES ('48', 'com.huashidai.weihuotong.controller.UserController:ALL');
INSERT INTO `t_resource` VALUES ('51', 'com.huashidai.weihuotong.controller.UserController:delete');
INSERT INTO `t_resource` VALUES ('55', 'com.huashidai.weihuotong.controller.UserController:getSystemDic');
INSERT INTO `t_resource` VALUES ('52', 'com.huashidai.weihuotong.controller.UserController:index');
INSERT INTO `t_resource` VALUES ('50', 'com.huashidai.weihuotong.controller.UserController:list');
INSERT INTO `t_resource` VALUES ('54', 'com.huashidai.weihuotong.controller.UserController:move');
INSERT INTO `t_resource` VALUES ('53', 'com.huashidai.weihuotong.controller.UserController:query');
INSERT INTO `t_resource` VALUES ('49', 'com.huashidai.weihuotong.controller.UserController:save');
INSERT INTO `t_resource` VALUES ('56', 'com.huashidai.weihuotong.controller.UserController:sellerList');

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `permission_id` bigint(20) DEFAULT NULL,
  `sn` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_role
-- ----------------------------

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
  `name` varchar(50) NOT NULL,
  `linkman` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `qq` varchar(20) NOT NULL,
  `idCard1` varchar(255) DEFAULT NULL,
  `idCard2` varchar(255) DEFAULT NULL,
  `otherCard1` varchar(255) DEFAULT NULL,
  `otherCard2` varchar(255) DEFAULT NULL,
  `otherCard3` varchar(255) DEFAULT NULL,
  `otherCard4` varchar(255) DEFAULT NULL,
  `city_id` bigint(20) NOT NULL,
  `type_id` bigint(20) NOT NULL,
  `state` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_store
-- ----------------------------

-- ----------------------------
-- Table structure for t_systemdictionary
-- ----------------------------
DROP TABLE IF EXISTS `t_systemdictionary`;
CREATE TABLE `t_systemdictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sn` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `intro` varchar(255) DEFAULT NULL,
  `state` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_systemdictionary
-- ----------------------------

-- ----------------------------
-- Table structure for t_systemdictionaryitem
-- ----------------------------
DROP TABLE IF EXISTS `t_systemdictionaryitem`;
CREATE TABLE `t_systemdictionaryitem` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sn` int(11) DEFAULT NULL,
  `name` varchar(20) NOT NULL,
  `intro` varchar(255) DEFAULT NULL,
  `parent_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_systemdictionaryitem
-- ----------------------------

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=362 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_systemlog
-- ----------------------------
INSERT INTO `t_systemlog` VALUES ('1', null, '2016-02-25 11:00:03', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findByCookie');
INSERT INTO `t_systemlog` VALUES ('2', null, '2016-02-25 11:00:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findByCookie');
INSERT INTO `t_systemlog` VALUES ('3', null, '2016-02-25 11:01:40', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findByCookie');
INSERT INTO `t_systemlog` VALUES ('4', null, '2016-02-25 11:01:40', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findByCookie');
INSERT INTO `t_systemlog` VALUES ('5', null, '2016-02-25 11:02:03', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('6', null, '2016-02-25 11:02:37', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('7', null, '2016-02-25 11:06:28', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('8', null, '2016-02-25 11:33:24', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('9', 'admin', '2016-02-25 11:33:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('10', 'admin', '2016-02-25 11:33:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getUserPermission');
INSERT INTO `t_systemlog` VALUES ('11', 'admin', '2016-02-25 11:33:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('12', 'admin', '2016-02-25 11:33:44', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('13', 'admin', '2016-02-25 11:33:44', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('14', 'admin', '2016-02-25 11:36:13', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('15', 'admin', '2016-02-25 11:36:14', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('16', 'admin', '2016-02-25 11:36:14', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('17', 'admin', '2016-02-25 11:40:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('18', 'admin', '2016-02-25 11:40:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('19', 'admin', '2016-02-25 11:40:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('20', 'admin', '2016-02-25 11:44:00', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('21', 'admin', '2016-02-25 11:44:01', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('22', 'admin', '2016-02-25 11:44:01', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('23', 'admin', '2016-02-25 11:45:06', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('24', 'admin', '2016-02-25 11:45:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('25', 'admin', '2016-02-25 11:45:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('26', 'admin', '2016-02-25 11:45:09', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('27', 'admin', '2016-02-25 11:45:09', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('28', 'admin', '2016-02-25 11:45:09', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('29', 'admin', '2016-02-25 11:45:11', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('30', 'admin', '2016-02-25 11:45:12', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('31', 'admin', '2016-02-25 11:45:12', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('32', 'admin', '2016-02-25 11:45:17', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('33', 'admin', '2016-02-25 11:45:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('34', 'admin', '2016-02-25 11:45:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('35', 'admin', '2016-02-25 11:45:19', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('36', 'admin', '2016-02-25 11:45:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('37', 'admin', '2016-02-25 11:45:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('38', 'admin', '2016-02-25 11:45:22', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('39', 'admin', '2016-02-25 11:45:23', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('40', 'admin', '2016-02-25 11:45:23', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('41', null, '2016-02-25 14:18:10', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findByCookie');
INSERT INTO `t_systemlog` VALUES ('42', 'admin', '2016-02-25 14:18:22', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('43', 'admin', '2016-02-25 14:18:22', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getUserPermission');
INSERT INTO `t_systemlog` VALUES ('44', 'admin', '2016-02-25 14:18:22', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('45', 'admin', '2016-02-25 14:18:23', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('46', 'admin', '2016-02-25 14:18:23', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('47', 'admin', '2016-02-25 14:19:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('48', 'admin', '2016-02-25 14:19:31', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('49', 'admin', '2016-02-25 14:19:31', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('50', 'admin', '2016-02-25 14:19:36', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('51', 'admin', '2016-02-25 14:19:37', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('52', 'admin', '2016-02-25 14:19:37', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('53', 'admin', '2016-02-25 14:19:52', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('54', 'admin', '2016-02-25 14:19:53', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('55', 'admin', '2016-02-25 14:19:53', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('56', 'admin', '2016-02-25 14:20:14', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('57', 'admin', '2016-02-25 14:20:14', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getUserPermission');
INSERT INTO `t_systemlog` VALUES ('58', 'admin', '2016-02-25 14:20:14', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('59', 'admin', '2016-02-25 14:20:14', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('60', 'admin', '2016-02-25 14:20:14', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('61', null, '2016-02-25 14:24:28', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findByCookie');
INSERT INTO `t_systemlog` VALUES ('62', 'admin', '2016-02-25 14:24:39', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('63', 'admin', '2016-02-25 14:24:39', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getUserPermission');
INSERT INTO `t_systemlog` VALUES ('64', 'admin', '2016-02-25 14:24:39', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('65', 'admin', '2016-02-25 14:24:40', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('66', 'admin', '2016-02-25 14:24:40', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('67', 'admin', '2016-02-25 14:24:52', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('68', 'admin', '2016-02-25 14:24:52', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('69', 'admin', '2016-02-25 14:24:52', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('70', 'admin', '2016-02-25 14:25:08', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('71', 'admin', '2016-02-25 14:25:09', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('72', 'admin', '2016-02-25 14:25:09', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('73', 'admin', '2016-02-25 14:25:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('74', 'admin', '2016-02-25 14:25:35', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('75', 'admin', '2016-02-25 14:25:35', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('76', 'admin', '2016-02-25 14:26:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('77', 'admin', '2016-02-25 14:26:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getUserPermission');
INSERT INTO `t_systemlog` VALUES ('78', 'admin', '2016-02-25 14:26:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('79', 'admin', '2016-02-25 14:26:19', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('80', 'admin', '2016-02-25 14:26:19', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('81', null, '2016-02-25 14:26:39', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('82', null, '2016-02-25 14:53:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('83', null, '2016-02-25 14:53:44', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('84', null, '2016-02-25 15:37:35', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('85', 'admin', '2016-02-25 15:37:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('86', 'admin', '2016-02-25 15:37:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getUserPermission');
INSERT INTO `t_systemlog` VALUES ('87', 'admin', '2016-02-25 15:37:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('88', 'admin', '2016-02-25 15:37:51', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('89', 'admin', '2016-02-25 15:37:51', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('90', 'admin', '2016-02-25 15:38:47', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('91', null, '2016-02-25 15:47:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('92', null, '2016-02-25 15:47:24', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('93', null, '2016-02-25 15:47:26', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('94', null, '2016-02-25 15:47:31', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('95', null, '2016-02-25 15:47:47', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('96', null, '2016-02-29 14:20:31', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAdType');
INSERT INTO `t_systemlog` VALUES ('97', null, '2016-02-29 14:20:31', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('98', null, '2016-02-29 14:20:31', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findByCookie');
INSERT INTO `t_systemlog` VALUES ('99', null, '2016-02-29 14:20:31', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findByCookie');
INSERT INTO `t_systemlog` VALUES ('100', null, '2016-02-29 14:53:34', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAdType');
INSERT INTO `t_systemlog` VALUES ('101', null, '2016-02-29 14:53:34', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('102', null, '2016-02-29 14:54:54', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAdType');
INSERT INTO `t_systemlog` VALUES ('103', null, '2016-02-29 14:54:54', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('104', null, '2016-02-29 14:55:19', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAdType');
INSERT INTO `t_systemlog` VALUES ('105', null, '2016-02-29 14:55:19', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('106', null, '2016-02-29 14:58:58', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAdType');
INSERT INTO `t_systemlog` VALUES ('107', null, '2016-02-29 14:58:58', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('108', null, '2016-02-29 14:58:58', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:getByGoodsType');
INSERT INTO `t_systemlog` VALUES ('109', null, '2016-02-29 15:01:14', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAdType');
INSERT INTO `t_systemlog` VALUES ('110', null, '2016-02-29 15:01:14', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('111', null, '2016-02-29 15:01:14', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:getByGoodsType');
INSERT INTO `t_systemlog` VALUES ('112', null, '2016-02-29 15:01:59', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAdType');
INSERT INTO `t_systemlog` VALUES ('113', null, '2016-02-29 15:01:59', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('114', null, '2016-02-29 15:01:59', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:getByGoodsType');
INSERT INTO `t_systemlog` VALUES ('115', null, '2016-02-29 15:03:10', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAdType');
INSERT INTO `t_systemlog` VALUES ('116', null, '2016-02-29 15:03:10', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('117', null, '2016-02-29 15:03:10', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:getByGoodsType');
INSERT INTO `t_systemlog` VALUES ('118', null, '2016-02-29 15:04:24', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAdType');
INSERT INTO `t_systemlog` VALUES ('119', null, '2016-02-29 15:04:24', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('120', null, '2016-02-29 15:04:24', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:getByGoodsType');
INSERT INTO `t_systemlog` VALUES ('121', null, '2016-02-29 15:22:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAdType');
INSERT INTO `t_systemlog` VALUES ('122', null, '2016-02-29 15:22:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('123', null, '2016-02-29 15:22:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:getByGoodsType');
INSERT INTO `t_systemlog` VALUES ('124', null, '2016-02-29 15:22:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('125', null, '2016-02-29 15:22:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('126', null, '2016-02-29 15:22:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('127', null, '2016-02-29 15:22:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:getByGoodsType');
INSERT INTO `t_systemlog` VALUES ('128', null, '2016-02-29 15:22:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('129', null, '2016-02-29 15:22:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('130', null, '2016-02-29 15:22:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('131', null, '2016-02-29 15:22:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:getByGoodsType');
INSERT INTO `t_systemlog` VALUES ('132', null, '2016-02-29 15:22:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('133', null, '2016-02-29 15:22:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('134', null, '2016-02-29 15:22:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('135', null, '2016-02-29 16:16:32', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('136', null, '2016-02-29 16:29:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('137', null, '2016-02-29 16:29:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:getByGoodsType');
INSERT INTO `t_systemlog` VALUES ('138', null, '2016-02-29 16:29:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('139', null, '2016-02-29 16:29:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:getByGoodsType');
INSERT INTO `t_systemlog` VALUES ('140', null, '2016-02-29 16:29:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('141', null, '2016-02-29 16:29:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('142', null, '2016-02-29 16:29:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('143', null, '2016-02-29 16:29:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('144', null, '2016-02-29 16:29:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('145', null, '2016-02-29 16:35:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('146', null, '2016-02-29 16:35:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:getByGoodsType');
INSERT INTO `t_systemlog` VALUES ('147', null, '2016-02-29 16:35:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('148', null, '2016-02-29 16:35:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('149', null, '2016-02-29 16:35:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('150', null, '2016-02-29 16:35:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('151', null, '2016-02-29 16:35:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('152', null, '2016-02-29 16:37:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('153', null, '2016-02-29 16:37:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:getByGoodsType');
INSERT INTO `t_systemlog` VALUES ('154', null, '2016-02-29 16:37:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('155', null, '2016-02-29 16:37:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('156', null, '2016-02-29 16:37:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('157', null, '2016-02-29 16:37:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('158', null, '2016-02-29 16:37:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('159', null, '2016-02-29 16:38:13', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('160', null, '2016-02-29 16:38:13', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:getByGoodsType');
INSERT INTO `t_systemlog` VALUES ('161', null, '2016-02-29 16:38:13', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('162', null, '2016-02-29 16:38:13', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('163', null, '2016-02-29 16:38:13', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('164', null, '2016-02-29 16:38:13', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('165', null, '2016-02-29 16:38:13', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('166', null, '2016-02-29 16:49:24', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('167', null, '2016-02-29 16:49:24', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:getByGoodsType');
INSERT INTO `t_systemlog` VALUES ('168', null, '2016-02-29 16:49:24', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('169', null, '2016-02-29 16:49:24', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('170', null, '2016-02-29 16:49:24', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('171', null, '2016-02-29 16:49:24', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('172', null, '2016-02-29 16:49:24', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('173', null, '2016-02-29 16:55:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('174', null, '2016-02-29 16:55:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('175', null, '2016-02-29 16:55:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:getByGoodsType');
INSERT INTO `t_systemlog` VALUES ('176', null, '2016-02-29 16:55:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('177', null, '2016-02-29 16:55:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('178', null, '2016-02-29 16:55:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('179', null, '2016-02-29 16:55:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('180', null, '2016-02-29 16:55:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('181', null, '2016-02-29 16:55:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:getByGoodsType');
INSERT INTO `t_systemlog` VALUES ('182', null, '2016-02-29 16:55:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('183', null, '2016-02-29 16:55:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('184', null, '2016-02-29 16:55:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('185', null, '2016-02-29 16:55:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('186', null, '2016-02-29 16:55:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('187', null, '2016-02-29 16:55:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:getByGoodsType');
INSERT INTO `t_systemlog` VALUES ('188', null, '2016-02-29 16:55:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('189', null, '2016-02-29 16:55:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('190', null, '2016-02-29 16:55:08', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('191', null, '2016-02-29 16:55:08', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('192', null, '2016-02-29 16:55:08', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('193', null, '2016-02-29 16:59:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('194', null, '2016-02-29 16:59:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('195', null, '2016-02-29 16:59:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:getByGoodsType');
INSERT INTO `t_systemlog` VALUES ('196', null, '2016-02-29 16:59:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('197', null, '2016-02-29 16:59:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('198', null, '2016-02-29 16:59:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('199', null, '2016-02-29 16:59:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('200', null, '2016-02-29 16:59:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('201', null, '2016-02-29 16:59:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:getByGoodsType');
INSERT INTO `t_systemlog` VALUES ('202', null, '2016-02-29 16:59:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('203', null, '2016-02-29 16:59:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('204', null, '2016-02-29 16:59:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('205', null, '2016-02-29 16:59:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('206', null, '2016-02-29 16:59:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('207', null, '2016-02-29 16:59:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:getByGoodsType');
INSERT INTO `t_systemlog` VALUES ('208', null, '2016-02-29 16:59:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('209', null, '2016-02-29 16:59:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('210', null, '2016-02-29 16:59:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('211', null, '2016-02-29 16:59:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('212', null, '2016-02-29 16:59:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('213', null, '2016-02-29 17:00:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('214', null, '2016-02-29 17:00:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:getByGoodsType');
INSERT INTO `t_systemlog` VALUES ('215', null, '2016-02-29 17:00:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('216', null, '2016-02-29 17:00:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('217', null, '2016-02-29 17:00:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('218', null, '2016-02-29 17:00:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('219', null, '2016-02-29 17:00:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('220', null, '2016-02-29 17:08:11', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('221', null, '2016-02-29 17:08:11', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:getByGoodsType');
INSERT INTO `t_systemlog` VALUES ('222', null, '2016-02-29 17:13:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('223', null, '2016-02-29 17:13:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:getByGoodsType');
INSERT INTO `t_systemlog` VALUES ('224', null, '2016-02-29 17:14:31', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('225', null, '2016-02-29 17:14:31', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:getByGoodsType');
INSERT INTO `t_systemlog` VALUES ('226', null, '2016-02-29 17:14:31', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('227', null, '2016-02-29 17:14:31', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('228', null, '2016-02-29 17:14:31', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('229', null, '2016-03-02 17:43:29', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:get');
INSERT INTO `t_systemlog` VALUES ('230', null, '2016-03-02 17:43:29', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.WebpageServiceImpl:get');
INSERT INTO `t_systemlog` VALUES ('231', null, '2016-03-02 17:44:06', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:get');
INSERT INTO `t_systemlog` VALUES ('232', null, '2016-03-02 17:44:06', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.WebpageServiceImpl:get');
INSERT INTO `t_systemlog` VALUES ('233', null, '2016-03-02 17:44:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:get');
INSERT INTO `t_systemlog` VALUES ('234', null, '2016-03-02 17:44:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.WebpageServiceImpl:get');
INSERT INTO `t_systemlog` VALUES ('235', null, '2016-03-02 17:45:12', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:get');
INSERT INTO `t_systemlog` VALUES ('236', null, '2016-03-02 17:45:12', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.WebpageServiceImpl:get');
INSERT INTO `t_systemlog` VALUES ('237', null, '2016-03-02 17:48:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:get');
INSERT INTO `t_systemlog` VALUES ('238', null, '2016-03-02 17:48:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.WebpageServiceImpl:get');
INSERT INTO `t_systemlog` VALUES ('239', null, '2016-03-02 17:57:12', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:get');
INSERT INTO `t_systemlog` VALUES ('240', null, '2016-03-02 17:57:12', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.WebpageServiceImpl:get');
INSERT INTO `t_systemlog` VALUES ('241', null, '2016-03-02 17:58:47', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:get');
INSERT INTO `t_systemlog` VALUES ('242', null, '2016-03-02 17:58:47', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.WebpageServiceImpl:get');
INSERT INTO `t_systemlog` VALUES ('243', null, '2016-03-03 11:33:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('244', null, '2016-03-03 11:33:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('245', null, '2016-03-03 11:33:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:getByGoodsType');
INSERT INTO `t_systemlog` VALUES ('246', null, '2016-03-03 11:33:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('247', null, '2016-03-03 11:33:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('248', null, '2016-03-03 11:33:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('249', null, '2016-03-03 11:33:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:getByGoodsType');
INSERT INTO `t_systemlog` VALUES ('250', null, '2016-03-03 11:33:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('251', null, '2016-03-03 11:33:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('252', null, '2016-03-03 11:33:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('253', null, '2016-03-03 11:33:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:getByGoodsType');
INSERT INTO `t_systemlog` VALUES ('254', null, '2016-03-03 11:33:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('255', null, '2016-03-03 11:33:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('256', null, '2016-03-03 11:33:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('257', null, '2016-03-03 11:35:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('258', null, '2016-03-03 11:35:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('259', null, '2016-03-03 11:35:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:getByGoodsType');
INSERT INTO `t_systemlog` VALUES ('260', null, '2016-03-03 11:35:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('261', null, '2016-03-03 11:35:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('262', null, '2016-03-03 11:35:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('263', null, '2016-03-03 11:35:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:getByGoodsType');
INSERT INTO `t_systemlog` VALUES ('264', null, '2016-03-03 11:35:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('265', null, '2016-03-03 11:35:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('266', null, '2016-03-03 11:35:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('267', null, '2016-03-03 11:35:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:getByGoodsType');
INSERT INTO `t_systemlog` VALUES ('268', null, '2016-03-03 11:35:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('269', null, '2016-03-03 11:35:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('270', null, '2016-03-03 11:35:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('271', null, '2016-03-03 11:38:42', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('272', null, '2016-03-03 11:38:42', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('273', null, '2016-03-03 11:38:42', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:getByGoodsType');
INSERT INTO `t_systemlog` VALUES ('274', null, '2016-03-03 11:38:42', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('275', null, '2016-03-03 11:38:42', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('276', null, '2016-03-03 11:38:42', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('277', null, '2016-03-03 11:38:42', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:getByGoodsType');
INSERT INTO `t_systemlog` VALUES ('278', null, '2016-03-03 11:38:42', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('279', null, '2016-03-03 11:38:42', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('280', null, '2016-03-03 11:38:42', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('281', null, '2016-03-03 11:38:42', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:getByGoodsType');
INSERT INTO `t_systemlog` VALUES ('282', null, '2016-03-03 11:38:42', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('283', null, '2016-03-03 11:38:42', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('284', null, '2016-03-03 11:38:42', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('285', null, '2016-03-03 18:10:42', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.DetailsImageServiceImpl:getByGoods');
INSERT INTO `t_systemlog` VALUES ('286', null, '2016-03-03 18:11:26', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.DetailsImageServiceImpl:getByGoods');
INSERT INTO `t_systemlog` VALUES ('287', null, '2016-03-03 18:11:55', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.DetailsImageServiceImpl:getByGoods');
INSERT INTO `t_systemlog` VALUES ('288', null, '2016-03-03 18:12:08', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.DetailsImageServiceImpl:getByGoods');
INSERT INTO `t_systemlog` VALUES ('289', null, '2016-03-03 18:12:31', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.DetailsImageServiceImpl:getByGoods');
INSERT INTO `t_systemlog` VALUES ('290', null, '2016-03-03 18:13:19', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.DetailsImageServiceImpl:getByGoods');
INSERT INTO `t_systemlog` VALUES ('291', null, '2016-03-03 18:13:39', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.DetailsImageServiceImpl:getByGoods');
INSERT INTO `t_systemlog` VALUES ('292', null, '2016-03-03 18:16:06', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.DetailsImageServiceImpl:getByGoods');
INSERT INTO `t_systemlog` VALUES ('293', null, '2016-03-03 23:43:44', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.DetailsImageServiceImpl:getByGoods');
INSERT INTO `t_systemlog` VALUES ('294', null, '2016-03-03 23:43:45', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findByCookie');
INSERT INTO `t_systemlog` VALUES ('295', 'admin', '2016-03-03 23:43:45', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getUserPermission');
INSERT INTO `t_systemlog` VALUES ('296', null, '2016-03-03 23:49:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.DetailsImageServiceImpl:getByGoods');
INSERT INTO `t_systemlog` VALUES ('297', null, '2016-03-03 23:50:32', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.DetailsImageServiceImpl:getByGoods');
INSERT INTO `t_systemlog` VALUES ('298', null, '2016-03-03 23:51:00', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.DetailsImageServiceImpl:getByGoods');
INSERT INTO `t_systemlog` VALUES ('299', null, '2016-03-04 10:50:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getParentType');
INSERT INTO `t_systemlog` VALUES ('300', null, '2016-03-04 10:50:42', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findByCookie');
INSERT INTO `t_systemlog` VALUES ('301', 'admin', '2016-03-04 10:50:42', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getUserPermission');
INSERT INTO `t_systemlog` VALUES ('302', null, '2016-03-04 11:34:39', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getParentType');
INSERT INTO `t_systemlog` VALUES ('303', null, '2016-03-04 11:34:39', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getItemByParent');
INSERT INTO `t_systemlog` VALUES ('304', null, '2016-03-04 11:35:35', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.DetailsImageServiceImpl:getByGoods');
INSERT INTO `t_systemlog` VALUES ('305', null, '2016-03-04 11:35:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.DetailsImageServiceImpl:getByGoods');
INSERT INTO `t_systemlog` VALUES ('306', null, '2016-03-04 11:35:52', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('307', null, '2016-03-04 11:35:52', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('308', null, '2016-03-04 11:35:52', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:getByGoodsType');
INSERT INTO `t_systemlog` VALUES ('309', null, '2016-03-04 11:35:52', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('310', null, '2016-03-04 11:35:52', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('311', null, '2016-03-04 11:35:52', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('312', null, '2016-03-04 11:35:52', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:getByGoodsType');
INSERT INTO `t_systemlog` VALUES ('313', null, '2016-03-04 11:35:52', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('314', null, '2016-03-04 11:35:52', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('315', null, '2016-03-04 11:35:52', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('316', null, '2016-03-04 11:35:52', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:getByGoodsType');
INSERT INTO `t_systemlog` VALUES ('317', null, '2016-03-04 11:35:52', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('318', null, '2016-03-04 11:35:52', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('319', null, '2016-03-04 11:35:52', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('320', null, '2016-03-04 11:37:02', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getParentType');
INSERT INTO `t_systemlog` VALUES ('321', null, '2016-03-04 11:37:02', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getItemByParent');
INSERT INTO `t_systemlog` VALUES ('322', null, '2016-03-04 11:41:28', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getParentType');
INSERT INTO `t_systemlog` VALUES ('323', null, '2016-03-04 11:41:28', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getItemByParent');
INSERT INTO `t_systemlog` VALUES ('324', null, '2016-03-04 11:41:50', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getParentType');
INSERT INTO `t_systemlog` VALUES ('325', null, '2016-03-04 11:41:50', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getItemByParent');
INSERT INTO `t_systemlog` VALUES ('326', null, '2016-03-04 11:44:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getParentType');
INSERT INTO `t_systemlog` VALUES ('327', null, '2016-03-04 11:44:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getItemByParent');
INSERT INTO `t_systemlog` VALUES ('328', null, '2016-03-04 11:48:45', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getParentType');
INSERT INTO `t_systemlog` VALUES ('329', null, '2016-03-04 11:48:45', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getItemByParent');
INSERT INTO `t_systemlog` VALUES ('330', null, '2016-03-04 14:04:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getParentType');
INSERT INTO `t_systemlog` VALUES ('331', null, '2016-03-04 14:04:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getItemByParent');
INSERT INTO `t_systemlog` VALUES ('332', null, '2016-03-04 14:04:55', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getParentType');
INSERT INTO `t_systemlog` VALUES ('333', null, '2016-03-04 14:04:55', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getItemByParent');
INSERT INTO `t_systemlog` VALUES ('334', null, '2016-03-04 14:07:26', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getParentType');
INSERT INTO `t_systemlog` VALUES ('335', null, '2016-03-04 14:07:26', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getItemByParent');
INSERT INTO `t_systemlog` VALUES ('336', null, '2016-03-04 14:08:16', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getParentType');
INSERT INTO `t_systemlog` VALUES ('337', null, '2016-03-04 14:08:16', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getItemByParent');
INSERT INTO `t_systemlog` VALUES ('338', null, '2016-03-04 14:26:27', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getParentType');
INSERT INTO `t_systemlog` VALUES ('339', null, '2016-03-04 14:26:28', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getItemByParent');
INSERT INTO `t_systemlog` VALUES ('340', null, '2016-03-04 14:31:21', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getParentType');
INSERT INTO `t_systemlog` VALUES ('341', null, '2016-03-04 14:31:21', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getItemByParent');
INSERT INTO `t_systemlog` VALUES ('342', null, '2016-03-04 14:39:24', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getParentType');
INSERT INTO `t_systemlog` VALUES ('343', null, '2016-03-04 14:39:24', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getItemByParent');
INSERT INTO `t_systemlog` VALUES ('344', null, '2016-03-04 14:42:13', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getParentType');
INSERT INTO `t_systemlog` VALUES ('345', null, '2016-03-04 14:42:13', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getItemByParent');
INSERT INTO `t_systemlog` VALUES ('346', null, '2016-03-04 14:48:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getParentType');
INSERT INTO `t_systemlog` VALUES ('347', null, '2016-03-04 15:00:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getParentType');
INSERT INTO `t_systemlog` VALUES ('348', null, '2016-03-04 15:00:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getItemByParent');
INSERT INTO `t_systemlog` VALUES ('349', null, '2016-03-04 15:11:28', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getItemByParent');
INSERT INTO `t_systemlog` VALUES ('350', null, '2016-03-04 15:11:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getItemByParent');
INSERT INTO `t_systemlog` VALUES ('351', null, '2016-03-04 15:13:27', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getItemByParent');
INSERT INTO `t_systemlog` VALUES ('352', null, '2016-03-04 15:14:12', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getItemByParent');
INSERT INTO `t_systemlog` VALUES ('353', null, '2016-03-04 15:18:02', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getItemByParent');
INSERT INTO `t_systemlog` VALUES ('354', null, '2016-03-04 15:23:39', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getParentType');
INSERT INTO `t_systemlog` VALUES ('355', null, '2016-03-04 15:23:39', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getItemByParent');
INSERT INTO `t_systemlog` VALUES ('360', null, '2016-03-04 17:27:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:queryMap');
INSERT INTO `t_systemlog` VALUES ('361', null, '2016-03-04 17:27:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:enterType');

-- ----------------------------
-- Table structure for t_type
-- ----------------------------
DROP TABLE IF EXISTS `t_type`;
CREATE TABLE `t_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `image` varchar(255) NOT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_type
-- ----------------------------
INSERT INTO `t_type` VALUES ('1', '女装', '11', null);
INSERT INTO `t_type` VALUES ('2', '男装', '11', null);
INSERT INTO `t_type` VALUES ('3', '鞋子', '11', null);
INSERT INTO `t_type` VALUES ('4', '时尚裙装', '二级', '1');
INSERT INTO `t_type` VALUES ('5', '时尚裤装', '二级', '1');
INSERT INTO `t_type` VALUES ('6', '裤装', '二级', '2');
INSERT INTO `t_type` VALUES ('7', '上衣', '二级', '2');
INSERT INTO `t_type` VALUES ('8', '运动鞋', '22', '3');
INSERT INTO `t_type` VALUES ('9', '皮鞋', '22', '3');
INSERT INTO `t_type` VALUES ('10', '连衣裙', '33', '4');
INSERT INTO `t_type` VALUES ('11', '短裙', '33', '4');
INSERT INTO `t_type` VALUES ('12', '短裤', '33', '5');
INSERT INTO `t_type` VALUES ('13', '长裤', '33', '5');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nickname` varchar(255) NOT NULL,
  `headImage` varchar(255) DEFAULT NULL,
  `state` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', 'admin', '21232F297A57A5A743894A0E4A801FC3', '呵呵', '', '1');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_userimage
-- ----------------------------

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
INSERT INTO `t_webpage` VALUES ('1', '我是网页');
