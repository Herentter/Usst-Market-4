/*
Navicat MySQL Data Transfer

Source Server         : 11
Source Server Version : 50634
Source Host           : localhost:3306
Source Database       : market2

Target Server Type    : MYSQL
Target Server Version : 50634
File Encoding         : 65001

Date: 2018-01-13 10:51:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for advertise_info
-- ----------------------------
DROP TABLE IF EXISTS `advertise_info`;
CREATE TABLE `advertise_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `detail` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of advertise_info
-- ----------------------------
INSERT INTO `advertise_info` VALUES ('1', '邮寄返款-特价');
INSERT INTO `advertise_info` VALUES ('2', '高速处理，低任务时耗');
INSERT INTO `advertise_info` VALUES ('3', '附赠多种应用软件');
INSERT INTO `advertise_info` VALUES ('4', '市场上最强劲的手机');
INSERT INTO `advertise_info` VALUES ('5', '市场上最高的数据存储容量');
INSERT INTO `advertise_info` VALUES ('6', '当地销售及售后服务');
INSERT INTO `advertise_info` VALUES ('7', '更大屏幕，减少视疲劳');
INSERT INTO `advertise_info` VALUES ('8', '使用方便，设计精简');
INSERT INTO `advertise_info` VALUES ('9', '图像细致，分辨率高');

-- ----------------------------
-- Table structure for advertisment
-- ----------------------------
DROP TABLE IF EXISTS `advertisment`;
CREATE TABLE `advertisment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `magazine` decimal(10,0) DEFAULT NULL,
  `broadcast` decimal(10,0) DEFAULT NULL,
  `internet` decimal(10,0) DEFAULT NULL,
  `outdoor` decimal(10,0) DEFAULT NULL,
  `television` decimal(10,0) DEFAULT NULL,
  `quarter` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of advertisment
-- ----------------------------
INSERT INTO `advertisment` VALUES ('1', '1', '2000', '2000', '2000', '2000', '2000', '2');
INSERT INTO `advertisment` VALUES ('2', '2', '3000', '3000', '3000', '3000', '3000', '2');

-- ----------------------------
-- Table structure for advertisment_weight
-- ----------------------------
DROP TABLE IF EXISTS `advertisment_weight`;
CREATE TABLE `advertisment_weight` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `magazine` int(255) DEFAULT NULL,
  `broadcast` int(255) DEFAULT NULL,
  `internet` int(255) DEFAULT NULL,
  `outdoor` int(255) DEFAULT NULL,
  `television` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of advertisment_weight
-- ----------------------------
INSERT INTO `advertisment_weight` VALUES ('1', 'practical', '3', '6', '8', '4', '9');
INSERT INTO `advertisment_weight` VALUES ('2', 'perfect', '4', '4', '8', '8', '6');
INSERT INTO `advertisment_weight` VALUES ('3', 'business', '7', '3', '8', '9', '6');

-- ----------------------------
-- Table structure for average_salary
-- ----------------------------
DROP TABLE IF EXISTS `average_salary`;
CREATE TABLE `average_salary` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `region` varchar(255) DEFAULT NULL,
  `salary` int(11) DEFAULT NULL,
  `welfare` int(11) DEFAULT NULL,
  `holiday` int(11) DEFAULT NULL,
  `public_fund` int(11) DEFAULT NULL,
  `company_pension` int(11) DEFAULT NULL,
  `retired_pay` int(11) DEFAULT NULL,
  `cost` int(11) DEFAULT NULL,
  `is_sale` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of average_salary
-- ----------------------------
INSERT INTO `average_salary` VALUES ('1', '全球市场', '40000', '5', '5', '5', '5', '5', '48547', '1');
INSERT INTO `average_salary` VALUES ('2', '全球市场', '50000', '6', '6', '6', '6', '6', '60257', '2');

-- ----------------------------
-- Table structure for balance_score
-- ----------------------------
DROP TABLE IF EXISTS `balance_score`;
CREATE TABLE `balance_score` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(10) DEFAULT NULL,
  `quarter` int(10) DEFAULT NULL,
  `gross_revenue` double(15,3) DEFAULT NULL,
  `gross_cost` double(15,3) DEFAULT NULL,
  `operating_profit` double(15,3) DEFAULT NULL,
  `cash_equivalent` double(15,3) DEFAULT NULL,
  `market_share` double(15,3) DEFAULT NULL,
  `unit_marketing_revenue` double(15,3) DEFAULT NULL,
  `sales_staff_remuneration` double(15,3) DEFAULT NULL,
  `training_time` double(15,3) DEFAULT NULL,
  `asset_management` double(15,3) DEFAULT NULL,
  `production_efficiency` double(15,3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of balance_score
-- ----------------------------
INSERT INTO `balance_score` VALUES ('11', '19', '2', '1553030.250', '1722944.000', '-169913.750', '559009.000', '1.391', '0.623', '82479.000', '2450.000', '2490095.000', '0.690');
INSERT INTO `balance_score` VALUES ('12', '20', '2', '955363.750', '938790.000', '16573.750', '1058780.000', '0.902', '0.950', '83391.000', '0.000', '2676587.000', '0.540');
INSERT INTO `balance_score` VALUES ('13', '21', '2', '65.770', '2242891.000', '-2242825.230', '555738.000', '0.426', '-3.217', '98724.000', '0.000', '417235.000', '0.660');
INSERT INTO `balance_score` VALUES ('14', '22', '2', '1243882.750', '971041.000', '272841.750', '1054640.000', '0.281', '1.699', '76384.000', '0.000', '2932913.000', '0.620');

-- ----------------------------
-- Table structure for balance_sheet
-- ----------------------------
DROP TABLE IF EXISTS `balance_sheet`;
CREATE TABLE `balance_sheet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `quarter` int(11) NOT NULL,
  `huobi` float DEFAULT NULL,
  `cunkuan` float DEFAULT NULL,
  `lixi_collection` float DEFAULT NULL,
  `cunhuo` float DEFAULT NULL,
  `zichan` float DEFAULT NULL,
  `daikuan_emergency` float DEFAULT NULL,
  `lixi_pay` float DEFAULT NULL,
  `daikuan_normal` float DEFAULT NULL,
  `guben` float DEFAULT NULL,
  `capital_reserve` float DEFAULT NULL,
  `liucun` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of balance_sheet
-- ----------------------------
INSERT INTO `balance_sheet` VALUES ('1', '1', '1', '738030', '2000', '0', '0', '1100000', '0', '0', '0', '2000000', '0', '-159970');
INSERT INTO `balance_sheet` VALUES ('2', '1', '2', '304307', '7030', '0', '140580', '1700000', '0', '0', '0', '3000000', '0', '-848083');
INSERT INTO `balance_sheet` VALUES ('3', '1', '3', '323442', '7135', '0', '368550', '2800000', '0', '0', '0', '4000000', '0', '-500865');
INSERT INTO `balance_sheet` VALUES ('4', '1', '4', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('5', '1', '5', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('6', '1', '6', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('7', '2', '1', '-292169', '2200', '0', '0', '2000000', '0', '0', '0', '2000000', null, '-289969');
INSERT INTO `balance_sheet` VALUES ('8', '2', '2', '-1674970', '5233', '0', '346390', '3100000', '0', '0', '0', '3000000', null, '-1223350');
INSERT INTO `balance_sheet` VALUES ('9', '2', '3', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('10', '2', '4', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('11', '2', '5', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('12', '2', '6', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('13', '3', '1', '667632', '2400', '0', '0', '1100000', '0', '0', '0', '2000000', null, '-229968');
INSERT INTO `balance_sheet` VALUES ('14', '3', '2', '-306326', '5436', '0', '190450', '2200000', '0', '0', '0', '3000000', null, '-910439');
INSERT INTO `balance_sheet` VALUES ('15', '3', '3', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('16', '3', '4', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('17', '3', '5', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('18', '3', '6', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('19', '4', '1', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('20', '4', '2', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('21', '4', '3', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('22', '4', '4', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('23', '4', '5', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('24', '4', '6', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('25', '5', '1', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('26', '5', '2', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('27', '5', '3', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('28', '5', '4', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('29', '5', '5', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('30', '5', '6', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('31', '6', '1', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('32', '6', '2', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('33', '6', '3', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('34', '6', '4', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('35', '6', '5', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('36', '6', '6', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('37', '7', '1', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('38', '7', '2', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('39', '7', '3', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('40', '7', '4', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('41', '7', '5', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('42', '7', '6', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('43', '8', '1', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('44', '8', '2', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('45', '8', '3', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('46', '8', '4', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('47', '8', '5', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('48', '8', '6', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('49', '9', '1', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('50', '9', '2', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('51', '9', '3', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('52', '9', '4', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('53', '9', '5', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('54', '9', '6', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('55', '10', '1', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('56', '10', '2', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('57', '10', '3', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('58', '10', '4', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('59', '10', '5', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('60', '10', '6', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('61', '11', '1', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('62', '11', '2', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('63', '11', '3', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('64', '11', '4', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('65', '11', '5', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('66', '11', '6', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('67', '12', '1', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('68', '12', '2', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('69', '12', '3', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('70', '12', '4', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('71', '12', '5', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('72', '12', '6', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('73', '12', '7', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('74', '12', '8', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('75', '12', '9', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('76', '12', '10', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('77', '13', '1', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('78', '13', '2', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('79', '13', '3', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('80', '13', '4', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('81', '13', '5', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('82', '13', '6', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('83', '13', '7', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('84', '13', '8', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('85', '13', '9', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('86', '13', '10', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('87', '14', '1', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('88', '14', '2', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('89', '14', '3', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('90', '14', '4', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('91', '14', '5', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('92', '14', '6', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('93', '14', '7', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('94', '14', '8', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('95', '14', '9', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('96', '14', '10', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('97', '15', '1', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('98', '15', '2', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('99', '15', '3', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('100', '15', '4', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('101', '15', '5', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('102', '15', '6', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('103', '15', '7', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('104', '15', '8', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('105', '15', '9', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('106', '15', '10', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('107', '16', '1', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('108', '16', '2', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('109', '16', '3', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('110', '16', '4', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('111', '16', '5', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('112', '16', '6', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('113', '16', '7', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('114', '16', '8', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('115', '16', '9', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('116', '16', '10', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('117', '17', '1', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('118', '17', '2', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('119', '17', '3', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('120', '17', '4', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('121', '17', '5', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('122', '17', '6', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('123', '17', '7', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('124', '17', '8', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('125', '17', '9', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('126', '17', '10', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('127', '18', '1', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('128', '18', '2', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('129', '18', '3', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('130', '18', '4', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('131', '18', '5', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('132', '18', '6', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('133', '18', '7', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('134', '18', '8', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('135', '18', '9', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('136', '18', '10', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('137', '19', '1', '559009', '1000', '0', '0', '1100000', '0', '0', '0', '2000000', '0', '-339991');
INSERT INTO `balance_sheet` VALUES ('138', '19', '2', '113254', '2015', '0', '213860', '1700000', '0', '0', '0', '3000000', '0', '-970871');
INSERT INTO `balance_sheet` VALUES ('139', '19', '3', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('140', '19', '4', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('141', '19', '5', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('142', '19', '6', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('143', '20', '1', '1058780', '1234', '0', '0', '600000', '0', '0', '0', '2000000', '0', '-339988');
INSERT INTO `balance_sheet` VALUES ('144', '20', '2', '63051', '4252', '0', '184500', '1700000', '0', '0', '0', '3000000', '0', '-1048200');
INSERT INTO `balance_sheet` VALUES ('145', '20', '3', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('146', '20', '4', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('147', '20', '5', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('148', '20', '6', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('149', '21', '1', '555738', '4321', '0', '0', '1100000', '0', '0', '0', '2000000', '0', '-339941');
INSERT INTO `balance_sheet` VALUES ('150', '21', '2', '-1709760', '4385', '0', '226720', '3100000', '0', '0', '0', '3000000', '0', '-1378650');
INSERT INTO `balance_sheet` VALUES ('151', '21', '3', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('152', '21', '4', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('153', '21', '5', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('154', '21', '6', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('155', '22', '1', '1054640', '5432', '0', '0', '600000', '0', '0', '0', '2000000', '0', '-339925');
INSERT INTO `balance_sheet` VALUES ('156', '22', '2', '13337.1', '5513', '0', '249760', '1700000', '0', '0', '0', '3000000', '0', '-1031390');
INSERT INTO `balance_sheet` VALUES ('157', '22', '3', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('158', '22', '4', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('159', '22', '5', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');
INSERT INTO `balance_sheet` VALUES ('160', '22', '6', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', null, '0');

-- ----------------------------
-- Table structure for balance_sheet_result
-- ----------------------------
DROP TABLE IF EXISTS `balance_sheet_result`;
CREATE TABLE `balance_sheet_result` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `quarter` int(11) NOT NULL,
  `huobi` float DEFAULT NULL,
  `cunkuan` float DEFAULT NULL,
  `lixi_collection` float DEFAULT NULL,
  `cunhuo` float DEFAULT NULL,
  `zichan` float DEFAULT NULL,
  `daikuan_emergency` float DEFAULT NULL,
  `lixi_pay` float DEFAULT NULL,
  `daikuan_normal` float DEFAULT NULL,
  `guben` float DEFAULT NULL,
  `capital_reserve` float DEFAULT NULL,
  `liucun` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of balance_sheet_result
-- ----------------------------
INSERT INTO `balance_sheet_result` VALUES ('1', '1', '1', '738030', '2000', '0', '0', '1100000', '0', '0', '0', '2000000', '0', '-159970');
INSERT INTO `balance_sheet_result` VALUES ('2', '2', '1', '-292169', '2200', '0', '0', '2000000', '0', '0', '0', '2000000', '0', '-289969');
INSERT INTO `balance_sheet_result` VALUES ('3', '3', '1', '667632', '2400', '0', '0', '1100000', '0', '0', '0', '2000000', '0', '-229968');
INSERT INTO `balance_sheet_result` VALUES ('4', '1', '2', '765425', '7030', '0', '0', '1700000', '0', '0', '0', '3000000', '0', '-527545');
INSERT INTO `balance_sheet_result` VALUES ('5', '2', '2', '342634', '5233', '0', '101250', '3100000', '0', '0', '0', '3000000', '0', '549118');
INSERT INTO `balance_sheet_result` VALUES ('6', '3', '2', '3017660', '5436', '0', '0', '2200000', '0', '0', '0', '3000000', '0', '2223100');
INSERT INTO `balance_sheet_result` VALUES ('8', '2', '2', '342634', '5233', '0', '101250', '3100000', '0', '0', '0', '3000000', '0', '549118');
INSERT INTO `balance_sheet_result` VALUES ('9', '3', '2', '3017660', '5436', '0', '0', '2200000', '0', '0', '0', '3000000', '0', '2223100');
INSERT INTO `balance_sheet_result` VALUES ('10', '19', '1', '559009', '1000', '0', '0', '1100000', '0', '0', '0', '2000000', '0', '-339991');
INSERT INTO `balance_sheet_result` VALUES ('11', '20', '1', '1058780', '1234', '0', '0', '600000', '0', '0', '0', '2000000', '0', '-339988');
INSERT INTO `balance_sheet_result` VALUES ('12', '21', '1', '555738', '4321', '0', '0', '1100000', '0', '0', '0', '2000000', '0', '-339941');
INSERT INTO `balance_sheet_result` VALUES ('13', '22', '1', '1054640', '5432', '0', '0', '600000', '0', '0', '0', '2000000', '0', '-339925');
INSERT INTO `balance_sheet_result` VALUES ('14', '19', '2', '788080', '2015', '0', '0', '1700000', '0', '0', '0', '3000000', '0', '-509905');
INSERT INTO `balance_sheet_result` VALUES ('15', '20', '2', '972335', '4252', '0', '0', '1700000', '0', '0', '0', '3000000', '0', '-323414');
INSERT INTO `balance_sheet_result` VALUES ('16', '21', '2', '-2770600', '4385', '0', '83450', '3100000', '0', '0', '0', '3000000', '0', '-2582770');
INSERT INTO `balance_sheet_result` VALUES ('17', '22', '2', '1227400', '5513', '0', '0', '1700000', '0', '0', '0', '3000000', '0', '-67083.2');

-- ----------------------------
-- Table structure for capacity_info
-- ----------------------------
DROP TABLE IF EXISTS `capacity_info`;
CREATE TABLE `capacity_info` (
  `id` int(11) NOT NULL,
  `number` int(11) DEFAULT NULL,
  `total_number` int(11) NOT NULL,
  `invest` decimal(11,2) DEFAULT NULL,
  `total_invest` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of capacity_info
-- ----------------------------
INSERT INTO `capacity_info` VALUES ('1', '0', '0', '0.00', '0.00');
INSERT INTO `capacity_info` VALUES ('2', '25', '1625', '600000.00', '24000.00');
INSERT INTO `capacity_info` VALUES ('3', '50', '3250', '1100000.00', '22000.00');
INSERT INTO `capacity_info` VALUES ('4', '100', '6500', '2000000.00', '20000.00');
INSERT INTO `capacity_info` VALUES ('5', '150', '9750', '3000000.00', '20000.00');
INSERT INTO `capacity_info` VALUES ('6', '200', '13000', '4400000.00', '22000.00');
INSERT INTO `capacity_info` VALUES ('7', '300', '19500', '7200000.00', '24000.00');
INSERT INTO `capacity_info` VALUES ('8', '400', '26000', '10400000.00', '26000.00');

-- ----------------------------
-- Table structure for cash_flow
-- ----------------------------
DROP TABLE IF EXISTS `cash_flow`;
CREATE TABLE `cash_flow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `quarter` int(11) NOT NULL,
  `xiaoshou_get` float DEFAULT NULL,
  `lixi_get` float DEFAULT NULL,
  `jishu_get` float DEFAULT NULL,
  `qita_get` float DEFAULT NULL,
  `fankuan_pay` float DEFAULT NULL,
  `shengchan_pay` float DEFAULT NULL,
  `yanfa_pay` float DEFAULT NULL,
  `guanggao_pay` float DEFAULT NULL,
  `saler_pay` float DEFAULT NULL,
  `salescenter_pay` float DEFAULT NULL,
  `salescenter_web_pay` float DEFAULT NULL,
  `diaoyan_pay` float DEFAULT NULL,
  `huoyun_pay` float DEFAULT NULL,
  `kucun_pay` float DEFAULT NULL,
  `netmarket_pay` float DEFAULT NULL,
  `tax_pay` float DEFAULT NULL,
  `lixi_pay` float DEFAULT NULL,
  `jishu_pay` float DEFAULT NULL,
  `qita_pay` float DEFAULT NULL,
  `gongchang_pay` float DEFAULT NULL,
  `daikuan_normal_get` float DEFAULT NULL,
  `daikuan_emergy_get` float DEFAULT NULL,
  `cunkuan_regular_get` float DEFAULT NULL,
  `daikuan_normal_pay` float DEFAULT NULL,
  `daikuan_emergy_pay` float DEFAULT NULL,
  `cunkuan_regular_pay` float DEFAULT NULL,
  `yu_e` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cash_flow
-- ----------------------------
INSERT INTO `cash_flow` VALUES ('1', '1', '1', '0', '30', '0', '0', '0', '0', '60000', '0', '0', '100000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1100000', '0', '0', '0', '0', '0', '2000', '0');
INSERT INTO `cash_flow` VALUES ('2', '1', '2', '200050', '105.45', '0', '0', '4500', '492030', '60000', '130000', '16608', '50000', '30000', '0', '10000', '14058', '0', '0', '0', '0', '0', '600000', '0', '0', '0', '0', '0', '5000', '668030');
INSERT INTO `cash_flow` VALUES ('3', '1', '3', '0', '107.02', '0', '0', '0', '492090', '0', '164000', '24000', '150001', '100002', '0', '300', '36855', '0', '0', '0', '0', '0', '1100000', '0', '0', '0', '0', '0', '0', '1759240');
INSERT INTO `cash_flow` VALUES ('4', '1', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('5', '1', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('6', '1', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('7', '2', '1', '0', '33', '0', '0', '0', '0', '120000', '0', '0', '100001', '70001', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0', '0', '0', '0', '0', '2200', '0');
INSERT INTO `cash_flow` VALUES ('8', '2', '2', '336338', '78.49', '0', '0', '5060', '875449', '60000', '135000', '47845', '50001', '30001', '15000', '16800', '34639', '0', '0', '0', '0', '0', '1100000', '0', '0', '0', '0', '0', '3000', '0');
INSERT INTO `cash_flow` VALUES ('9', '2', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('10', '2', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('11', '2', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('12', '2', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('13', '3', '1', '0', '36', '0', '0', '0', '0', '60000', '0', '0', '100002', '70002', '0', '0', '0', '0', '0', '0', '0', '0', '1100000', '0', '0', '0', '0', '0', '2400', '0');
INSERT INTO `cash_flow` VALUES ('14', '3', '2', '255045', '81.54', '0', '0', '13000', '520305', '60000', '182000', '37744', '50002', '30002', '15000', '8500', '19045', '0', '0', '0', '0', '0', '1100000', '0', '0', '0', '0', '0', '3000', '0');
INSERT INTO `cash_flow` VALUES ('15', '3', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('16', '3', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('17', '3', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('18', '3', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('19', '4', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('20', '4', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('21', '4', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('22', '4', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('23', '4', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('24', '4', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('25', '5', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('26', '5', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('27', '5', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('28', '5', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('29', '5', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('30', '5', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('31', '6', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('32', '6', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('33', '6', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('34', '6', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('35', '6', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('36', '6', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('37', '7', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('38', '7', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('39', '7', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('40', '7', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('41', '7', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('42', '7', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('43', '8', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('44', '8', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('45', '8', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('46', '8', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('47', '8', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('48', '8', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('49', '9', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('50', '9', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('51', '9', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('52', '9', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('53', '9', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('54', '9', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('55', '10', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('56', '10', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('57', '10', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('58', '10', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('59', '10', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('60', '10', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('61', '11', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('62', '11', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('63', '11', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('64', '11', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('65', '11', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('66', '11', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('67', '12', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('68', '12', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('69', '12', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('70', '12', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('71', '12', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('72', '12', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('73', '12', '7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('74', '12', '8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('75', '12', '9', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('76', '12', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('77', '13', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('78', '13', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('79', '13', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('80', '13', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('81', '13', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('82', '13', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('83', '13', '7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('84', '13', '8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('85', '13', '9', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('86', '13', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('87', '14', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('88', '14', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('89', '14', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('90', '14', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('91', '14', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('92', '14', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('93', '14', '7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('94', '14', '8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('95', '14', '9', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('96', '14', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('97', '15', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('98', '15', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('99', '15', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('100', '15', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('101', '15', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('102', '15', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('103', '15', '7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('104', '15', '8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('105', '15', '9', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('106', '15', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('107', '16', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('108', '16', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('109', '16', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('110', '16', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('111', '16', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('112', '16', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('113', '16', '7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('114', '16', '8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('115', '16', '9', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('116', '16', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('117', '17', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('118', '17', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('119', '17', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('120', '17', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('121', '17', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('122', '17', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('123', '17', '7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('124', '17', '8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('125', '17', '9', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('126', '17', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('127', '18', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('128', '18', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('129', '18', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('130', '18', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('131', '18', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('132', '18', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('133', '18', '7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('134', '18', '8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('135', '18', '9', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('136', '18', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('137', '19', '1', '0', '15', '0', '0', '0', '0', '60000', '0', '0', '0', '280006', '0', '0', '0', '0', '0', '0', '0', '0', '1100000', '0', '0', '0', '0', '0', '1000', '0');
INSERT INTO `cash_flow` VALUES ('138', '19', '2', '110000', '30.22', '0', '0', '1100', '510060', '60000', '79000', '17364', '0', '30000', '15000', '7000', '21386', '0', '0', '0', '0', '0', '600000', '0', '0', '0', '0', '0', '1000', '559009');
INSERT INTO `cash_flow` VALUES ('139', '19', '3', '0', '30.67', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('140', '19', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('141', '19', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('142', '19', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('143', '20', '1', '0', '18.51', '0', '0', '0', '0', '60000', '0', '0', '0', '280006', '0', '0', '0', '0', '0', '0', '0', '0', '600000', '0', '0', '0', '0', '0', '1234', '0');
INSERT INTO `cash_flow` VALUES ('144', '20', '2', '205000', '63.78', '0', '0', '2050', '492000', '60000', '164000', '31768', '0', '120006', '15000', '10000', '18450', '0', '0', '0', '0', '0', '1100000', '0', '0', '0', '0', '0', '3000', '1058780');
INSERT INTO `cash_flow` VALUES ('145', '20', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('146', '20', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('147', '20', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('148', '20', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('149', '21', '1', '0', '64.81', '0', '0', '0', '0', '60000', '0', '0', '0', '280006', '0', '0', '0', '0', '0', '0', '0', '0', '1100000', '0', '0', '0', '0', '0', '4321', '0');
INSERT INTO `cash_flow` VALUES ('150', '21', '2', '0', '65.77', '0', '0', '0', '510120', '60000', '275000', '25980', '0', '120006', '15000', '10000', '22672', '0', '0', '0', '0', '0', '2000000', '0', '0', '0', '0', '0', '0', '555738');
INSERT INTO `cash_flow` VALUES ('151', '21', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('152', '21', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('153', '21', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('154', '21', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('155', '22', '1', '0', '81.48', '0', '0', '0', '0', '60000', '0', '0', '0', '280006', '0', '0', '0', '0', '0', '0', '0', '0', '600000', '0', '0', '0', '0', '0', '5432', '0');
INSERT INTO `cash_flow` VALUES ('156', '22', '2', '263000', '82.69', '0', '0', '2630', '518239', '60000', '167000', '38192', '0', '120006', '15000', '8500', '24976', '0', '0', '0', '0', '0', '1100000', '0', '0', '0', '0', '0', '0', '1054640');
INSERT INTO `cash_flow` VALUES ('157', '22', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('158', '22', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('159', '22', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('160', '22', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for cash_flow_result
-- ----------------------------
DROP TABLE IF EXISTS `cash_flow_result`;
CREATE TABLE `cash_flow_result` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `quarter` int(11) NOT NULL,
  `xiaoshou_get` float DEFAULT NULL,
  `lixi_get` float DEFAULT NULL,
  `jishu_get` float DEFAULT NULL,
  `qita_get` float DEFAULT NULL,
  `fankuan_pay` float DEFAULT NULL,
  `shengchan_pay` float DEFAULT NULL,
  `yanfa_pay` float DEFAULT NULL,
  `guanggao_pay` float DEFAULT NULL,
  `saler_pay` float DEFAULT NULL,
  `salescenter_pay` float DEFAULT NULL,
  `salescenter_web_pay` float DEFAULT NULL,
  `diaoyan_pay` float DEFAULT NULL,
  `huoyun_pay` float DEFAULT NULL,
  `kucun_pay` float DEFAULT NULL,
  `netmarket_pay` float DEFAULT NULL,
  `tax_pay` float DEFAULT NULL,
  `lixi_pay` float DEFAULT NULL,
  `jishu_pay` float DEFAULT NULL,
  `qita_pay` float DEFAULT NULL,
  `gongchang_pay` float DEFAULT NULL,
  `daikuan_normal_get` float DEFAULT NULL,
  `daikuan_emergy_get` float DEFAULT NULL,
  `cunkuan_regular_get` float DEFAULT NULL,
  `daikuan_normal_pay` float DEFAULT NULL,
  `daikuan_emergy_pay` float DEFAULT NULL,
  `cunkuan_regular_pay` float DEFAULT NULL,
  `yu_e` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cash_flow_result
-- ----------------------------
INSERT INTO `cash_flow_result` VALUES ('1', '1', '1', '0', '30', '0', '0', '0', '0', '60000', '0', '0', '100000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1100000', '0', '0', '0', '0', '0', '2000', '0');
INSERT INTO `cash_flow_result` VALUES ('2', '2', '1', '0', '33', '0', '0', '0', '0', '120000', '0', '0', '100001', '70001', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0', '0', '0', '0', '0', '2200', '0');
INSERT INTO `cash_flow_result` VALUES ('3', '3', '1', '0', '36', '0', '0', '0', '0', '60000', '0', '0', '100002', '70002', '0', '0', '0', '0', '0', '0', '0', '0', '1100000', '0', '0', '0', '0', '0', '2400', '0');
INSERT INTO `cash_flow_result` VALUES ('4', '1', '2', '0', '105.45', '0', '0', '0', '0', '60000', '130000', '27680', '50000', '30000', '0', '0', '0', '0', '0', '0', '0', '0', '600000', '0', '0', '0', '0', '0', '5000', '668030');
INSERT INTO `cash_flow_result` VALUES ('5', '2', '2', '6748850', '78.49', '0', '0', '102170', '5122600', '60000', '135000', '47845', '50001', '30001', '15000', '337100', '10125', '0', '0', '0', '0', '0', '1100000', '0', '0', '0', '0', '0', '3000', '0');
INSERT INTO `cash_flow_result` VALUES ('6', '3', '2', '5349940', '81.54', '0', '0', '272700', '2071210', '60000', '182000', '37744', '50002', '30002', '15000', '178300', '0', '0', '0', '0', '0', '0', '1100000', '0', '0', '0', '0', '0', '3000', '0');
INSERT INTO `cash_flow_result` VALUES ('8', '2', '2', '6748850', '78.49', '0', '0', '102170', '5122600', '60000', '135000', '47845', '50001', '30001', '15000', '337100', '10125', '0', '0', '0', '0', '0', '1100000', '0', '0', '0', '0', '0', '3000', '0');
INSERT INTO `cash_flow_result` VALUES ('9', '3', '2', '5349940', '81.54', '0', '0', '272700', '2071210', '60000', '182000', '37744', '50002', '30002', '15000', '178300', '0', '0', '0', '0', '0', '0', '1100000', '0', '0', '0', '0', '0', '3000', '0');
INSERT INTO `cash_flow_result` VALUES ('10', '19', '1', '0', '15', '0', '0', '0', '0', '60000', '0', '0', '0', '280006', '0', '0', '0', '0', '0', '0', '0', '0', '1100000', '0', '0', '0', '0', '0', '1000', '0');
INSERT INTO `cash_flow_result` VALUES ('11', '20', '1', '0', '18.51', '0', '0', '0', '0', '60000', '0', '0', '0', '280006', '0', '0', '0', '0', '0', '0', '0', '0', '600000', '0', '0', '0', '0', '0', '1234', '0');
INSERT INTO `cash_flow_result` VALUES ('12', '21', '1', '0', '64.81', '0', '0', '0', '0', '60000', '0', '0', '0', '280006', '0', '0', '0', '0', '0', '0', '0', '0', '1100000', '0', '0', '0', '0', '0', '4321', '0');
INSERT INTO `cash_flow_result` VALUES ('13', '22', '1', '0', '81.48', '0', '0', '0', '0', '60000', '0', '0', '0', '280006', '0', '0', '0', '0', '0', '0', '0', '0', '600000', '0', '0', '0', '0', '0', '5432', '0');
INSERT INTO `cash_flow_result` VALUES ('14', '19', '2', '1553000', '30.22', '0', '0', '15530', '1407250', '60000', '79000', '17364', '0', '30000', '15000', '98800', '0', '0', '0', '0', '0', '0', '600000', '0', '0', '0', '0', '0', '1000', '559009');
INSERT INTO `cash_flow_result` VALUES ('15', '20', '2', '955300', '63.78', '0', '0', '9553', '491863', '60000', '164000', '31768', '0', '120006', '15000', '46600', '0', '0', '0', '0', '0', '0', '1100000', '0', '0', '0', '0', '0', '3000', '1058780');
INSERT INTO `cash_flow_result` VALUES ('16', '21', '2', '0', '65.77', '0', '0', '0', '1623360', '60000', '275000', '25980', '0', '120006', '15000', '115200', '8345', '0', '0', '0', '0', '0', '2000000', '0', '0', '0', '0', '0', '0', '555738');
INSERT INTO `cash_flow_result` VALUES ('17', '22', '2', '1243800', '82.69', '0', '0', '12438', '518205', '60000', '167000', '38192', '0', '120006', '15000', '40200', '0', '0', '0', '0', '0', '0', '1100000', '0', '0', '0', '0', '0', '0', '1054640');

-- ----------------------------
-- Table structure for chat_record
-- ----------------------------
DROP TABLE IF EXISTS `chat_record`;
CREATE TABLE `chat_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender` varchar(255) DEFAULT NULL,
  `receiver` varchar(255) DEFAULT NULL,
  `send_date` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `competition_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chat_record
-- ----------------------------

-- ----------------------------
-- Table structure for company
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `serial_number` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `license` varchar(255) DEFAULT NULL,
  `competition_id` int(11) DEFAULT NULL,
  `people_number` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company
-- ----------------------------
INSERT INTO `company` VALUES ('1', '1', '公司1', 'O47X-N8K8-1695', '1', '4');
INSERT INTO `company` VALUES ('2', '2', '公司2', '2PRX-7Q6X-QYH9', '1', '4');
INSERT INTO `company` VALUES ('3', '3', '公司3', 'VQ8G-4TA4-W5ML', '1', '4');
INSERT INTO `company` VALUES ('4', '1', '公司1', '0902-64BP-0610', '3', '3');
INSERT INTO `company` VALUES ('5', '2', '公司2', 'H4I9-1HZK-1696', '3', '3');
INSERT INTO `company` VALUES ('6', '3', '公司3', 'Z82V-X234-R331', '3', '3');
INSERT INTO `company` VALUES ('7', '4', '公司4', '43O6-65HA-GG6D', '3', '3');
INSERT INTO `company` VALUES ('8', '1', '公司1', 'DVXH-YSXU-5O1T', '4', '3');
INSERT INTO `company` VALUES ('9', '2', '公司2', 'S3M3-885G-NA94', '4', '3');
INSERT INTO `company` VALUES ('10', '3', '公司3', '81U4-67GJ-PO00', '4', '3');
INSERT INTO `company` VALUES ('11', '4', '公司4', 'RX9N-N8A6-4LCV', '4', '3');
INSERT INTO `company` VALUES ('12', '1', '公司1', 'V417-2893-XF5E', '7', '3');
INSERT INTO `company` VALUES ('13', '2', '公司2', 'J8V5-8CS9-JDC6', '7', '3');
INSERT INTO `company` VALUES ('14', '3', '公司3', 'PW86-OVBT-NIC6', '7', '3');
INSERT INTO `company` VALUES ('15', '1', '公司1', '39N8-5Q30-MSGN', '8', '3');
INSERT INTO `company` VALUES ('16', '2', '公司2', '91K0-W9A8-7819', '8', '3');
INSERT INTO `company` VALUES ('17', '3', '公司3', 'N53Y-97P0-X6Q3', '8', '3');
INSERT INTO `company` VALUES ('18', '4', '公司4', 'WF69-8C58-X5MH', '8', '3');
INSERT INTO `company` VALUES ('19', '1', '公司11', 'WU53-U3QR-AL42', '9', '4');
INSERT INTO `company` VALUES ('20', '2', '公司22', 'X9O8-8JB5-1BCV', '9', '4');
INSERT INTO `company` VALUES ('21', '3', '公司33', '6G1Y-6AXR-0N05', '9', '4');
INSERT INTO `company` VALUES ('22', '4', '公司44', '4NBT-X465-HYV2', '9', '4');

-- ----------------------------
-- Table structure for company_advertise
-- ----------------------------
DROP TABLE IF EXISTS `company_advertise`;
CREATE TABLE `company_advertise` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) DEFAULT NULL,
  `quarter` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `advertise_name` varchar(255) DEFAULT NULL,
  `advertise_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company_advertise
-- ----------------------------
INSERT INTO `company_advertise` VALUES ('1', '1', '2', '1', 'market1-1-1', '广告1', '2,3,4');
INSERT INTO `company_advertise` VALUES ('2', '1', '2', '5', 'market1-2-1', '广告2', '1,2,6,7,9');
INSERT INTO `company_advertise` VALUES ('3', '2', '2', '2', 'market2-1-1', '广告2-1', '2,4');
INSERT INTO `company_advertise` VALUES ('4', '2', '2', '3', 'market2-1-2', '广告2-2', '4,5');
INSERT INTO `company_advertise` VALUES ('5', '2', '2', '6', 'market2-2-1', '广告2-3', '5,6,9');
INSERT INTO `company_advertise` VALUES ('6', '3', '2', '4', 'market3-1-1', '广告3-1', '3,4,5,6');
INSERT INTO `company_advertise` VALUES ('7', '3', '2', '7', 'market3-2-1', '广告3-2', '1,2,3,4');
INSERT INTO `company_advertise` VALUES ('8', '19', '2', '8', '1111', '1111', '1,2');
INSERT INTO `company_advertise` VALUES ('9', '19', '2', '12', '1-2', '222', '1,3,6,7');
INSERT INTO `company_advertise` VALUES ('10', '20', '2', '9', '23', '啊啊啊', '3,4');
INSERT INTO `company_advertise` VALUES ('11', '20', '2', '13', '2-2', '5555', '2,4,6');
INSERT INTO `company_advertise` VALUES ('12', '21', '2', '10', '1232', '5555', '2,5');
INSERT INTO `company_advertise` VALUES ('13', '21', '2', '14', '333', '9999', '5,7,8');
INSERT INTO `company_advertise` VALUES ('14', '22', '2', '11', '4444', '777', '3,5,6,7');
INSERT INTO `company_advertise` VALUES ('15', '22', '2', '15', '44', 'iii', '4,6,8,9');

-- ----------------------------
-- Table structure for company_capacity
-- ----------------------------
DROP TABLE IF EXISTS `company_capacity`;
CREATE TABLE `company_capacity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `capacity_now` int(11) DEFAULT NULL,
  `capacity_add` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `quarter` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company_capacity
-- ----------------------------
INSERT INTO `company_capacity` VALUES ('1', '0', '50', '1', '1');
INSERT INTO `company_capacity` VALUES ('2', '50', '25', '1', '2');
INSERT INTO `company_capacity` VALUES ('3', '0', '100', '2', '1');
INSERT INTO `company_capacity` VALUES ('4', '100', '50', '2', '2');
INSERT INTO `company_capacity` VALUES ('5', '0', '50', '3', '1');
INSERT INTO `company_capacity` VALUES ('6', '50', '50', '3', '2');
INSERT INTO `company_capacity` VALUES ('7', '75', '50', '1', '3');
INSERT INTO `company_capacity` VALUES ('8', '125', '0', '1', '4');
INSERT INTO `company_capacity` VALUES ('9', '0', '50', '19', '1');
INSERT INTO `company_capacity` VALUES ('10', '50', '25', '19', '2');
INSERT INTO `company_capacity` VALUES ('11', '0', '25', '20', '1');
INSERT INTO `company_capacity` VALUES ('12', '25', '50', '20', '2');
INSERT INTO `company_capacity` VALUES ('13', '0', '50', '21', '1');
INSERT INTO `company_capacity` VALUES ('14', '50', '100', '21', '2');
INSERT INTO `company_capacity` VALUES ('15', '0', '25', '22', '1');
INSERT INTO `company_capacity` VALUES ('16', '25', '50', '22', '2');

-- ----------------------------
-- Table structure for company_duty
-- ----------------------------
DROP TABLE IF EXISTS `company_duty`;
CREATE TABLE `company_duty` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `main_id` int(11) DEFAULT NULL,
  `minor_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company_duty
-- ----------------------------
INSERT INTO `company_duty` VALUES ('1', '1', '21', '123', '2', '4');
INSERT INTO `company_duty` VALUES ('2', '2', '22', '123', '1', '4');
INSERT INTO `company_duty` VALUES ('3', '3', '23', '123', '3', '4');
INSERT INTO `company_duty` VALUES ('4', '19', '24', '123', '1', '3');
INSERT INTO `company_duty` VALUES ('5', '20', '25', '123', '1', '3');
INSERT INTO `company_duty` VALUES ('6', '21', '26', '123', '4', '3');
INSERT INTO `company_duty` VALUES ('7', '22', '27', '123', '1', '4');

-- ----------------------------
-- Table structure for company_investment
-- ----------------------------
DROP TABLE IF EXISTS `company_investment`;
CREATE TABLE `company_investment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `competition_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `quarter` tinyint(4) DEFAULT NULL,
  `product_num` tinyint(4) DEFAULT NULL,
  `product_avg_price` int(11) DEFAULT NULL,
  `ad_num` tinyint(11) DEFAULT NULL,
  `ad_cost` int(11) DEFAULT NULL,
  `phy_market_num` tinyint(11) DEFAULT NULL,
  `phy_market_cost` int(11) DEFAULT NULL,
  `net_market_num` tinyint(11) DEFAULT NULL,
  `net_market_cost` int(10) DEFAULT NULL,
  `phy_sales_num` int(11) DEFAULT NULL,
  `phy_sales_cost` int(11) DEFAULT NULL,
  `net_sales_num` int(11) DEFAULT NULL,
  `net_sales_cost` int(11) DEFAULT NULL,
  `worker_efficiency` double DEFAULT NULL,
  `sales_efficiency` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company_investment
-- ----------------------------
INSERT INTO `company_investment` VALUES ('28', '9', '19', '2', '2', '1244', '2', '79000', '3', '600000', '1', '10000', '14', '60774', '5', '21705', '0.69', '0.6');
INSERT INTO `company_investment` VALUES ('29', '9', '20', '2', '2', '1200', '2', '164000', '2', '500000', '4', '40006', '14', '55594', '7', '27797', '0.54', '0.57');
INSERT INTO `company_investment` VALUES ('30', '9', '21', '2', '2', '1244', '2', '275000', '2', '340000', '4', '40006', '12', '62352', '7', '36372', '0.66', '0.67');
INSERT INTO `company_investment` VALUES ('31', '9', '22', '2', '2', '1264', '2', '167000', '1', '200000', '4', '40006', '7', '38192', '7', '38192', '0.62', '0.68');

-- ----------------------------
-- Table structure for company_loan
-- ----------------------------
DROP TABLE IF EXISTS `company_loan`;
CREATE TABLE `company_loan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) DEFAULT NULL,
  `quarter` int(11) DEFAULT NULL,
  `loan_last` float(11,0) DEFAULT NULL,
  `get_num` float(11,0) DEFAULT NULL,
  `return_num` float(11,0) DEFAULT NULL,
  `lilv` float(11,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of company_loan
-- ----------------------------

-- ----------------------------
-- Table structure for company_market
-- ----------------------------
DROP TABLE IF EXISTS `company_market`;
CREATE TABLE `company_market` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) DEFAULT NULL,
  `market_id` varchar(255) DEFAULT NULL,
  `is_phy` int(11) DEFAULT NULL,
  `quarter` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company_market
-- ----------------------------
INSERT INTO `company_market` VALUES ('30', '19', '21,22,23', '1', '1');
INSERT INTO `company_market` VALUES ('31', '19', '21,22,23', '1', '2');
INSERT INTO `company_market` VALUES ('32', '19', '21,22,23', '1', '3');
INSERT INTO `company_market` VALUES ('33', '19', '21,22,23', '1', '4');
INSERT INTO `company_market` VALUES ('34', '19', '21,22,23', '1', '5');
INSERT INTO `company_market` VALUES ('37', '20', '22,23', '1', '1');
INSERT INTO `company_market` VALUES ('38', '20', '22,23', '1', '2');
INSERT INTO `company_market` VALUES ('39', '20', '22,23', '1', '3');
INSERT INTO `company_market` VALUES ('40', '20', '22,23', '1', '4');
INSERT INTO `company_market` VALUES ('41', '20', '22,23', '1', '5');
INSERT INTO `company_market` VALUES ('43', '21', '23,24', '1', '1');
INSERT INTO `company_market` VALUES ('44', '21', '23,24', '1', '2');
INSERT INTO `company_market` VALUES ('45', '21', '23,24', '1', '3');
INSERT INTO `company_market` VALUES ('46', '21', '23,24', '1', '4');
INSERT INTO `company_market` VALUES ('47', '21', '23,24', '1', '5');
INSERT INTO `company_market` VALUES ('49', '22', '22', '1', '1');
INSERT INTO `company_market` VALUES ('50', '22', '22', '1', '2');
INSERT INTO `company_market` VALUES ('51', '22', '22', '1', '3');
INSERT INTO `company_market` VALUES ('52', '22', '22', '1', '4');
INSERT INTO `company_market` VALUES ('53', '22', '22', '1', '5');
INSERT INTO `company_market` VALUES ('106', '19', '1', '0', '1');
INSERT INTO `company_market` VALUES ('107', '19', '1', '0', '2');
INSERT INTO `company_market` VALUES ('108', '19', '1', '0', '3');
INSERT INTO `company_market` VALUES ('109', '19', '1', '0', '4');
INSERT INTO `company_market` VALUES ('110', '19', '1', '0', '5');
INSERT INTO `company_market` VALUES ('111', '20', '1,2,3,4', '0', '1');
INSERT INTO `company_market` VALUES ('112', '20', '1,2,3,4', '0', '2');
INSERT INTO `company_market` VALUES ('113', '20', '1,2,3,4', '0', '3');
INSERT INTO `company_market` VALUES ('114', '20', '1,2,3,4', '0', '4');
INSERT INTO `company_market` VALUES ('115', '20', '1,2,3,4', '0', '5');
INSERT INTO `company_market` VALUES ('116', '21', '1,2,3,4', '0', '1');
INSERT INTO `company_market` VALUES ('117', '21', '1,2,3,4', '0', '2');
INSERT INTO `company_market` VALUES ('118', '21', '1,2,3,4', '0', '3');
INSERT INTO `company_market` VALUES ('119', '21', '1,2,3,4', '0', '4');
INSERT INTO `company_market` VALUES ('120', '21', '1,2,3,4', '0', '5');
INSERT INTO `company_market` VALUES ('121', '22', '1,2,3,4', '0', '1');
INSERT INTO `company_market` VALUES ('122', '22', '1,2,3,4', '0', '2');
INSERT INTO `company_market` VALUES ('123', '22', '1,2,3,4', '0', '3');
INSERT INTO `company_market` VALUES ('124', '22', '1,2,3,4', '0', '4');
INSERT INTO `company_market` VALUES ('125', '22', '1,2,3,4', '0', '5');

-- ----------------------------
-- Table structure for company_market_share
-- ----------------------------
DROP TABLE IF EXISTS `company_market_share`;
CREATE TABLE `company_market_share` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) DEFAULT NULL,
  `quarter` int(11) DEFAULT NULL,
  `practical_share` double DEFAULT NULL,
  `practical_need` int(255) DEFAULT NULL,
  `practical_sale` int(255) DEFAULT NULL,
  `practical_stockoun` int(255) DEFAULT NULL,
  `practical_stock` int(255) DEFAULT NULL,
  `perfect_share` double DEFAULT NULL,
  `perfect_need` int(255) DEFAULT NULL,
  `perfect_sale` int(255) DEFAULT NULL,
  `perfect_stockoun` int(255) DEFAULT NULL,
  `perfect_stock` int(255) DEFAULT NULL,
  `business_share` double DEFAULT NULL,
  `business_need` int(255) DEFAULT NULL,
  `business_sale` int(255) DEFAULT NULL,
  `business_stockoun` int(255) DEFAULT NULL,
  `business_stock` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of company_market_share
-- ----------------------------
INSERT INTO `company_market_share` VALUES ('17', '19', '2', '0', '0', '0', '0', '0', '1', '4081', '423', '3658', '0', '0.391', '5651', '565', '5086', '0');
INSERT INTO `company_market_share` VALUES ('18', '20', '2', '0.661', '2178', '233', '1945', '0', '0', '0', '0', '0', '0', '0.241', '3481', '233', '3248', '0');
INSERT INTO `company_market_share` VALUES ('19', '21', '2', '0.339', '1118', '608', '510', '0', '0', '0', '0', '0', '0', '0.087', '1258', '544', '714', '64');
INSERT INTO `company_market_share` VALUES ('20', '22', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.281', '4065', '402', '3663', '0');

-- ----------------------------
-- Table structure for company_media
-- ----------------------------
DROP TABLE IF EXISTS `company_media`;
CREATE TABLE `company_media` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) DEFAULT NULL,
  `quarter` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `media_id` int(11) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company_media
-- ----------------------------
INSERT INTO `company_media` VALUES ('1', '1', '2', '1', '1', '0');
INSERT INTO `company_media` VALUES ('2', '1', '2', '1', '2', '1');
INSERT INTO `company_media` VALUES ('3', '1', '2', '1', '3', '0');
INSERT INTO `company_media` VALUES ('4', '1', '2', '1', '4', '2');
INSERT INTO `company_media` VALUES ('5', '1', '2', '1', '5', '0');
INSERT INTO `company_media` VALUES ('6', '1', '2', '5', '1', '2');
INSERT INTO `company_media` VALUES ('7', '1', '2', '5', '2', '0');
INSERT INTO `company_media` VALUES ('8', '1', '2', '5', '3', '2');
INSERT INTO `company_media` VALUES ('9', '1', '2', '5', '4', '0');
INSERT INTO `company_media` VALUES ('10', '1', '2', '5', '5', '1');
INSERT INTO `company_media` VALUES ('11', '2', '2', '2', '1', '1');
INSERT INTO `company_media` VALUES ('12', '2', '2', '2', '2', '0');
INSERT INTO `company_media` VALUES ('13', '2', '2', '2', '3', '1');
INSERT INTO `company_media` VALUES ('14', '2', '2', '2', '4', '0');
INSERT INTO `company_media` VALUES ('15', '2', '2', '2', '5', '0');
INSERT INTO `company_media` VALUES ('16', '2', '2', '3', '1', '0');
INSERT INTO `company_media` VALUES ('17', '2', '2', '3', '2', '1');
INSERT INTO `company_media` VALUES ('18', '2', '2', '3', '3', '0');
INSERT INTO `company_media` VALUES ('19', '2', '2', '3', '4', '2');
INSERT INTO `company_media` VALUES ('20', '2', '2', '3', '5', '0');
INSERT INTO `company_media` VALUES ('21', '2', '2', '6', '1', '2');
INSERT INTO `company_media` VALUES ('22', '2', '2', '6', '2', '0');
INSERT INTO `company_media` VALUES ('23', '2', '2', '6', '3', '0');
INSERT INTO `company_media` VALUES ('24', '2', '2', '6', '4', '0');
INSERT INTO `company_media` VALUES ('25', '2', '2', '6', '5', '2');
INSERT INTO `company_media` VALUES ('26', '3', '2', '4', '1', '2');
INSERT INTO `company_media` VALUES ('27', '3', '2', '4', '2', '0');
INSERT INTO `company_media` VALUES ('28', '3', '2', '4', '3', '2');
INSERT INTO `company_media` VALUES ('29', '3', '2', '4', '4', '0');
INSERT INTO `company_media` VALUES ('30', '3', '2', '4', '5', '3');
INSERT INTO `company_media` VALUES ('31', '3', '2', '7', '1', '0');
INSERT INTO `company_media` VALUES ('32', '3', '2', '7', '2', '3');
INSERT INTO `company_media` VALUES ('33', '3', '2', '7', '3', '0');
INSERT INTO `company_media` VALUES ('34', '3', '2', '7', '4', '1');
INSERT INTO `company_media` VALUES ('35', '3', '2', '7', '5', '0');
INSERT INTO `company_media` VALUES ('36', '1', '3', '1', '1', '2');
INSERT INTO `company_media` VALUES ('37', '1', '3', '1', '2', '2');
INSERT INTO `company_media` VALUES ('38', '1', '3', '1', '3', '0');
INSERT INTO `company_media` VALUES ('39', '1', '3', '1', '4', '2');
INSERT INTO `company_media` VALUES ('40', '1', '3', '1', '5', '0');
INSERT INTO `company_media` VALUES ('41', '1', '3', '5', '1', '0');
INSERT INTO `company_media` VALUES ('42', '1', '3', '5', '2', '0');
INSERT INTO `company_media` VALUES ('43', '1', '3', '5', '3', '2');
INSERT INTO `company_media` VALUES ('44', '1', '3', '5', '4', '0');
INSERT INTO `company_media` VALUES ('45', '1', '3', '5', '5', '2');
INSERT INTO `company_media` VALUES ('46', '19', '2', '8', '1', '1');
INSERT INTO `company_media` VALUES ('47', '19', '2', '8', '2', '0');
INSERT INTO `company_media` VALUES ('48', '19', '2', '8', '3', '0');
INSERT INTO `company_media` VALUES ('49', '19', '2', '8', '4', '1');
INSERT INTO `company_media` VALUES ('50', '19', '2', '8', '5', '0');
INSERT INTO `company_media` VALUES ('51', '19', '2', '12', '1', '0');
INSERT INTO `company_media` VALUES ('52', '19', '2', '12', '2', '1');
INSERT INTO `company_media` VALUES ('53', '19', '2', '12', '3', '0');
INSERT INTO `company_media` VALUES ('54', '19', '2', '12', '4', '0');
INSERT INTO `company_media` VALUES ('55', '19', '2', '12', '5', '2');
INSERT INTO `company_media` VALUES ('56', '20', '2', '9', '1', '2');
INSERT INTO `company_media` VALUES ('57', '20', '2', '9', '2', '0');
INSERT INTO `company_media` VALUES ('58', '20', '2', '9', '3', '2');
INSERT INTO `company_media` VALUES ('59', '20', '2', '9', '4', '0');
INSERT INTO `company_media` VALUES ('60', '20', '2', '9', '5', '2');
INSERT INTO `company_media` VALUES ('61', '20', '2', '13', '1', '0');
INSERT INTO `company_media` VALUES ('62', '20', '2', '13', '2', '2');
INSERT INTO `company_media` VALUES ('63', '20', '2', '13', '3', '0');
INSERT INTO `company_media` VALUES ('64', '20', '2', '13', '4', '2');
INSERT INTO `company_media` VALUES ('65', '20', '2', '13', '5', '0');
INSERT INTO `company_media` VALUES ('66', '21', '2', '10', '1', '1');
INSERT INTO `company_media` VALUES ('67', '21', '2', '10', '2', '0');
INSERT INTO `company_media` VALUES ('68', '21', '2', '10', '3', '3');
INSERT INTO `company_media` VALUES ('69', '21', '2', '10', '4', '0');
INSERT INTO `company_media` VALUES ('70', '21', '2', '10', '5', '5');
INSERT INTO `company_media` VALUES ('71', '21', '2', '14', '1', '0');
INSERT INTO `company_media` VALUES ('72', '21', '2', '14', '2', '2');
INSERT INTO `company_media` VALUES ('73', '21', '2', '14', '3', '0');
INSERT INTO `company_media` VALUES ('74', '21', '2', '14', '4', '4');
INSERT INTO `company_media` VALUES ('75', '21', '2', '14', '5', '0');
INSERT INTO `company_media` VALUES ('76', '22', '2', '11', '1', '2');
INSERT INTO `company_media` VALUES ('77', '22', '2', '11', '2', '0');
INSERT INTO `company_media` VALUES ('78', '22', '2', '11', '3', '0');
INSERT INTO `company_media` VALUES ('79', '22', '2', '11', '4', '2');
INSERT INTO `company_media` VALUES ('80', '22', '2', '11', '5', '0');
INSERT INTO `company_media` VALUES ('81', '22', '2', '15', '1', '0');
INSERT INTO `company_media` VALUES ('82', '22', '2', '15', '2', '2');
INSERT INTO `company_media` VALUES ('83', '22', '2', '15', '3', '3');
INSERT INTO `company_media` VALUES ('84', '22', '2', '15', '4', '0');
INSERT INTO `company_media` VALUES ('85', '22', '2', '15', '5', '1');

-- ----------------------------
-- Table structure for company_person_goal
-- ----------------------------
DROP TABLE IF EXISTS `company_person_goal`;
CREATE TABLE `company_person_goal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) DEFAULT NULL,
  `goal_id` varchar(255) DEFAULT NULL,
  `quarter` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company_person_goal
-- ----------------------------
INSERT INTO `company_person_goal` VALUES ('1', '1', '4,5,', '1');
INSERT INTO `company_person_goal` VALUES ('2', '2', '4,', '1');
INSERT INTO `company_person_goal` VALUES ('3', '3', '5,6,', '1');
INSERT INTO `company_person_goal` VALUES ('4', '19', '4,', '1');
INSERT INTO `company_person_goal` VALUES ('5', '21', '3,', '1');
INSERT INTO `company_person_goal` VALUES ('6', '22', '4,', '1');
INSERT INTO `company_person_goal` VALUES ('7', '20', '3,5,', '1');

-- ----------------------------
-- Table structure for company_product
-- ----------------------------
DROP TABLE IF EXISTS `company_product`;
CREATE TABLE `company_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) DEFAULT NULL,
  `quarter` int(11) DEFAULT NULL,
  `name` varchar(765) DEFAULT NULL,
  `detail` varchar(765) DEFAULT NULL,
  `cost` int(11) DEFAULT NULL,
  `type` varchar(11) DEFAULT NULL,
  `hundred` varchar(255) DEFAULT NULL,
  `twohundredfifty` varchar(255) DEFAULT NULL,
  `fivehundred` varchar(255) DEFAULT NULL,
  `thousand` varchar(255) DEFAULT NULL,
  `fivethousand` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company_product
-- ----------------------------
INSERT INTO `company_product` VALUES ('1', '1', '1', 'market1-1-1', '1,4,6,8,12,14,17,22,24,27,30', '1205', '极致型', null, null, null, null, null);
INSERT INTO `company_product` VALUES ('2', '2', '1', 'market2-1-1', '1,3,6,9,12,15,17,21,24,27,30,31,32', '1391', '商务型', null, null, null, null, null);
INSERT INTO `company_product` VALUES ('3', '2', '1', 'market2-1-2', '1,5,6,10,11,15,19,22,25,28,29,30,31,32,33', '1546', '极致型', null, null, null, null, null);
INSERT INTO `company_product` VALUES ('4', '3', '1', 'market3-1-1', '1,4,6,9,12,14,17,21,24,27,30,31', '1293', '商务型', null, null, null, null, null);
INSERT INTO `company_product` VALUES ('5', '1', '2', 'market1-2-1', '1,3,6,8,12,14,17,21,25,27,31', '1195', '商务型', null, null, null, null, null);
INSERT INTO `company_product` VALUES ('6', '2', '2', 'market2-2-1', '1,5,6,9,12,14,17,21,24,27,31,32', '1333', '商务型', null, null, null, null, null);
INSERT INTO `company_product` VALUES ('7', '3', '2', 'market3-2-1', '1,4,6,10,12,15,18,22,24,27,30', '1245', '商务型', null, null, null, null, null);
INSERT INTO `company_product` VALUES ('8', '19', '1', '1111', '1,3,6,8,12,14,17,21,25,27,30,31', '1283', '极致型', null, null, null, null, null);
INSERT INTO `company_product` VALUES ('9', '20', '1', '23', '1,3,6,8,12,14,17,21,24,27,30', '1195', '商务型', null, null, null, null, null);
INSERT INTO `company_product` VALUES ('10', '21', '1', '1232', '1,3,6,9,12,14,18,21,24,27,30', '1215', '商务型', null, null, null, null, null);
INSERT INTO `company_product` VALUES ('11', '22', '1', '4444', '1,3,6,8,12,14,17,21,24,27,30,31', '1283', '商务型', null, null, null, null, null);
INSERT INTO `company_product` VALUES ('12', '19', '2', '1-2', '1,3,6,8,12,14,18,21,24,27,31', '1205', '商务型', null, null, null, null, null);
INSERT INTO `company_product` VALUES ('13', '20', '2', '2-2', '1,3,6,8,12,14,18,21,24,27,31', '1205', '实用型', null, null, null, null, null);
INSERT INTO `company_product` VALUES ('14', '21', '2', '333', '1,3,6,9,12,13,17,21,24,26,30,31', '1273', '实用型', null, null, null, null, null);
INSERT INTO `company_product` VALUES ('15', '22', '2', '44', '1,4,6,10,12,14,19,22,25,27,30', '1245', '商务型', null, null, null, null, null);

-- ----------------------------
-- Table structure for company_product_demand
-- ----------------------------
DROP TABLE IF EXISTS `company_product_demand`;
CREATE TABLE `company_product_demand` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `quarter` int(11) DEFAULT NULL,
  `demand` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company_product_demand
-- ----------------------------
INSERT INTO `company_product_demand` VALUES ('1', '1', '1', '0');
INSERT INTO `company_product_demand` VALUES ('2', '1', '2', '50');
INSERT INTO `company_product_demand` VALUES ('3', '1', '3', '3');
INSERT INTO `company_product_demand` VALUES ('4', '1', '4', '0');
INSERT INTO `company_product_demand` VALUES ('5', '1', '5', '0');
INSERT INTO `company_product_demand` VALUES ('6', '1', '6', '0');
INSERT INTO `company_product_demand` VALUES ('7', '2', '1', '0');
INSERT INTO `company_product_demand` VALUES ('8', '2', '2', '55');
INSERT INTO `company_product_demand` VALUES ('9', '2', '3', '0');
INSERT INTO `company_product_demand` VALUES ('10', '2', '4', '0');
INSERT INTO `company_product_demand` VALUES ('11', '2', '5', '0');
INSERT INTO `company_product_demand` VALUES ('12', '2', '6', '0');
INSERT INTO `company_product_demand` VALUES ('13', '3', '1', '0');
INSERT INTO `company_product_demand` VALUES ('14', '3', '2', '56');
INSERT INTO `company_product_demand` VALUES ('15', '3', '3', '0');
INSERT INTO `company_product_demand` VALUES ('16', '3', '4', '0');
INSERT INTO `company_product_demand` VALUES ('17', '3', '5', '0');
INSERT INTO `company_product_demand` VALUES ('18', '3', '6', '0');
INSERT INTO `company_product_demand` VALUES ('19', '4', '1', '0');
INSERT INTO `company_product_demand` VALUES ('20', '4', '2', '40');
INSERT INTO `company_product_demand` VALUES ('21', '4', '3', '0');
INSERT INTO `company_product_demand` VALUES ('22', '4', '4', '0');
INSERT INTO `company_product_demand` VALUES ('23', '4', '5', '0');
INSERT INTO `company_product_demand` VALUES ('24', '4', '6', '0');
INSERT INTO `company_product_demand` VALUES ('25', '5', '1', '0');
INSERT INTO `company_product_demand` VALUES ('26', '5', '2', '50');
INSERT INTO `company_product_demand` VALUES ('27', '5', '3', '0');
INSERT INTO `company_product_demand` VALUES ('28', '5', '4', '0');
INSERT INTO `company_product_demand` VALUES ('29', '5', '5', '0');
INSERT INTO `company_product_demand` VALUES ('30', '5', '6', '0');
INSERT INTO `company_product_demand` VALUES ('31', '6', '1', '0');
INSERT INTO `company_product_demand` VALUES ('32', '6', '2', '57');
INSERT INTO `company_product_demand` VALUES ('33', '6', '3', '0');
INSERT INTO `company_product_demand` VALUES ('34', '6', '4', '0');
INSERT INTO `company_product_demand` VALUES ('35', '6', '5', '0');
INSERT INTO `company_product_demand` VALUES ('36', '6', '6', '0');
INSERT INTO `company_product_demand` VALUES ('37', '7', '1', '0');
INSERT INTO `company_product_demand` VALUES ('38', '7', '2', '45');
INSERT INTO `company_product_demand` VALUES ('39', '7', '3', '0');
INSERT INTO `company_product_demand` VALUES ('40', '7', '4', '0');
INSERT INTO `company_product_demand` VALUES ('41', '7', '5', '0');
INSERT INTO `company_product_demand` VALUES ('42', '7', '6', '0');
INSERT INTO `company_product_demand` VALUES ('43', '8', '1', '0');
INSERT INTO `company_product_demand` VALUES ('44', '8', '2', '30');
INSERT INTO `company_product_demand` VALUES ('45', '8', '3', '0');
INSERT INTO `company_product_demand` VALUES ('46', '8', '4', '0');
INSERT INTO `company_product_demand` VALUES ('47', '8', '5', '0');
INSERT INTO `company_product_demand` VALUES ('48', '8', '6', '0');
INSERT INTO `company_product_demand` VALUES ('49', '9', '1', '0');
INSERT INTO `company_product_demand` VALUES ('50', '9', '2', '50');
INSERT INTO `company_product_demand` VALUES ('51', '9', '3', '0');
INSERT INTO `company_product_demand` VALUES ('52', '9', '4', '0');
INSERT INTO `company_product_demand` VALUES ('53', '9', '5', '0');
INSERT INTO `company_product_demand` VALUES ('54', '9', '6', '0');
INSERT INTO `company_product_demand` VALUES ('55', '10', '1', '0');
INSERT INTO `company_product_demand` VALUES ('56', '10', '2', '50');
INSERT INTO `company_product_demand` VALUES ('57', '10', '3', '0');
INSERT INTO `company_product_demand` VALUES ('58', '10', '4', '0');
INSERT INTO `company_product_demand` VALUES ('59', '10', '5', '0');
INSERT INTO `company_product_demand` VALUES ('60', '10', '6', '0');
INSERT INTO `company_product_demand` VALUES ('61', '11', '1', '0');
INSERT INTO `company_product_demand` VALUES ('62', '11', '2', '45');
INSERT INTO `company_product_demand` VALUES ('63', '11', '3', '0');
INSERT INTO `company_product_demand` VALUES ('64', '11', '4', '0');
INSERT INTO `company_product_demand` VALUES ('65', '11', '5', '0');
INSERT INTO `company_product_demand` VALUES ('66', '11', '6', '0');
INSERT INTO `company_product_demand` VALUES ('67', '12', '1', '0');
INSERT INTO `company_product_demand` VALUES ('68', '12', '2', '40');
INSERT INTO `company_product_demand` VALUES ('69', '12', '3', '0');
INSERT INTO `company_product_demand` VALUES ('70', '12', '4', '0');
INSERT INTO `company_product_demand` VALUES ('71', '12', '5', '0');
INSERT INTO `company_product_demand` VALUES ('72', '12', '6', '0');
INSERT INTO `company_product_demand` VALUES ('73', '13', '1', '0');
INSERT INTO `company_product_demand` VALUES ('74', '13', '2', '50');
INSERT INTO `company_product_demand` VALUES ('75', '13', '3', '0');
INSERT INTO `company_product_demand` VALUES ('76', '13', '4', '0');
INSERT INTO `company_product_demand` VALUES ('77', '13', '5', '0');
INSERT INTO `company_product_demand` VALUES ('78', '13', '6', '0');
INSERT INTO `company_product_demand` VALUES ('79', '14', '1', '0');
INSERT INTO `company_product_demand` VALUES ('80', '14', '2', '50');
INSERT INTO `company_product_demand` VALUES ('81', '14', '3', '0');
INSERT INTO `company_product_demand` VALUES ('82', '14', '4', '0');
INSERT INTO `company_product_demand` VALUES ('83', '14', '5', '0');
INSERT INTO `company_product_demand` VALUES ('84', '14', '6', '0');
INSERT INTO `company_product_demand` VALUES ('85', '15', '1', '0');
INSERT INTO `company_product_demand` VALUES ('86', '15', '2', '40');
INSERT INTO `company_product_demand` VALUES ('87', '15', '3', '0');
INSERT INTO `company_product_demand` VALUES ('88', '15', '4', '0');
INSERT INTO `company_product_demand` VALUES ('89', '15', '5', '0');
INSERT INTO `company_product_demand` VALUES ('90', '15', '6', '0');

-- ----------------------------
-- Table structure for company_product_inventory
-- ----------------------------
DROP TABLE IF EXISTS `company_product_inventory`;
CREATE TABLE `company_product_inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `quarter` varchar(255) DEFAULT NULL,
  `inventory` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company_product_inventory
-- ----------------------------
INSERT INTO `company_product_inventory` VALUES ('1', '1', '2', '20');
INSERT INTO `company_product_inventory` VALUES ('2', '1', '3', '3');
INSERT INTO `company_product_inventory` VALUES ('3', '1', '4', '0');
INSERT INTO `company_product_inventory` VALUES ('4', '1', '5', '0');
INSERT INTO `company_product_inventory` VALUES ('5', '1', '6', '0');
INSERT INTO `company_product_inventory` VALUES ('6', '2', '2', '40');
INSERT INTO `company_product_inventory` VALUES ('7', '2', '3', '0');
INSERT INTO `company_product_inventory` VALUES ('8', '2', '4', '0');
INSERT INTO `company_product_inventory` VALUES ('9', '2', '5', '0');
INSERT INTO `company_product_inventory` VALUES ('10', '2', '6', '0');
INSERT INTO `company_product_inventory` VALUES ('11', '3', '2', '40');
INSERT INTO `company_product_inventory` VALUES ('12', '3', '3', '0');
INSERT INTO `company_product_inventory` VALUES ('13', '3', '4', '0');
INSERT INTO `company_product_inventory` VALUES ('14', '3', '5', '0');
INSERT INTO `company_product_inventory` VALUES ('15', '3', '6', '0');
INSERT INTO `company_product_inventory` VALUES ('16', '4', '2', '20');
INSERT INTO `company_product_inventory` VALUES ('17', '4', '3', '0');
INSERT INTO `company_product_inventory` VALUES ('18', '4', '4', '0');
INSERT INTO `company_product_inventory` VALUES ('19', '4', '5', '0');
INSERT INTO `company_product_inventory` VALUES ('20', '4', '6', '0');
INSERT INTO `company_product_inventory` VALUES ('21', '5', '2', '20');
INSERT INTO `company_product_inventory` VALUES ('22', '5', '3', '3');
INSERT INTO `company_product_inventory` VALUES ('23', '5', '4', '0');
INSERT INTO `company_product_inventory` VALUES ('24', '5', '5', '0');
INSERT INTO `company_product_inventory` VALUES ('25', '5', '6', '0');
INSERT INTO `company_product_inventory` VALUES ('26', '6', '2', '30');
INSERT INTO `company_product_inventory` VALUES ('27', '6', '3', '0');
INSERT INTO `company_product_inventory` VALUES ('28', '6', '4', '0');
INSERT INTO `company_product_inventory` VALUES ('29', '6', '5', '0');
INSERT INTO `company_product_inventory` VALUES ('30', '6', '6', '0');
INSERT INTO `company_product_inventory` VALUES ('31', '7', '2', '30');
INSERT INTO `company_product_inventory` VALUES ('32', '7', '3', '0');
INSERT INTO `company_product_inventory` VALUES ('33', '7', '4', '0');
INSERT INTO `company_product_inventory` VALUES ('34', '7', '5', '0');
INSERT INTO `company_product_inventory` VALUES ('35', '7', '6', '0');
INSERT INTO `company_product_inventory` VALUES ('36', '8', '2', '30');
INSERT INTO `company_product_inventory` VALUES ('37', '8', '3', '0');
INSERT INTO `company_product_inventory` VALUES ('38', '8', '4', '0');
INSERT INTO `company_product_inventory` VALUES ('39', '8', '5', '0');
INSERT INTO `company_product_inventory` VALUES ('40', '8', '6', '0');
INSERT INTO `company_product_inventory` VALUES ('41', '9', '2', '30');
INSERT INTO `company_product_inventory` VALUES ('42', '9', '3', '0');
INSERT INTO `company_product_inventory` VALUES ('43', '9', '4', '0');
INSERT INTO `company_product_inventory` VALUES ('44', '9', '5', '0');
INSERT INTO `company_product_inventory` VALUES ('45', '9', '6', '0');
INSERT INTO `company_product_inventory` VALUES ('46', '10', '2', '40');
INSERT INTO `company_product_inventory` VALUES ('47', '10', '3', '0');
INSERT INTO `company_product_inventory` VALUES ('48', '10', '4', '0');
INSERT INTO `company_product_inventory` VALUES ('49', '10', '5', '0');
INSERT INTO `company_product_inventory` VALUES ('50', '10', '6', '0');
INSERT INTO `company_product_inventory` VALUES ('51', '11', '2', '40');
INSERT INTO `company_product_inventory` VALUES ('52', '11', '3', '0');
INSERT INTO `company_product_inventory` VALUES ('53', '11', '4', '0');
INSERT INTO `company_product_inventory` VALUES ('54', '11', '5', '0');
INSERT INTO `company_product_inventory` VALUES ('55', '11', '6', '0');
INSERT INTO `company_product_inventory` VALUES ('56', '12', '2', '20');
INSERT INTO `company_product_inventory` VALUES ('57', '12', '3', '0');
INSERT INTO `company_product_inventory` VALUES ('58', '12', '4', '0');
INSERT INTO `company_product_inventory` VALUES ('59', '12', '5', '0');
INSERT INTO `company_product_inventory` VALUES ('60', '12', '6', '0');
INSERT INTO `company_product_inventory` VALUES ('61', '13', '2', '30');
INSERT INTO `company_product_inventory` VALUES ('62', '13', '3', '0');
INSERT INTO `company_product_inventory` VALUES ('63', '13', '4', '0');
INSERT INTO `company_product_inventory` VALUES ('64', '13', '5', '0');
INSERT INTO `company_product_inventory` VALUES ('65', '13', '6', '0');
INSERT INTO `company_product_inventory` VALUES ('66', '14', '2', '40');
INSERT INTO `company_product_inventory` VALUES ('67', '14', '3', '0');
INSERT INTO `company_product_inventory` VALUES ('68', '14', '4', '0');
INSERT INTO `company_product_inventory` VALUES ('69', '14', '5', '0');
INSERT INTO `company_product_inventory` VALUES ('70', '14', '6', '0');
INSERT INTO `company_product_inventory` VALUES ('71', '15', '2', '39');
INSERT INTO `company_product_inventory` VALUES ('72', '15', '3', '0');
INSERT INTO `company_product_inventory` VALUES ('73', '15', '4', '0');
INSERT INTO `company_product_inventory` VALUES ('74', '15', '5', '0');
INSERT INTO `company_product_inventory` VALUES ('75', '15', '6', '0');

-- ----------------------------
-- Table structure for company_quarter_time
-- ----------------------------
DROP TABLE IF EXISTS `company_quarter_time`;
CREATE TABLE `company_quarter_time` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `competition_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `quarter` tinyint(4) DEFAULT NULL,
  `start_time` varchar(30) DEFAULT NULL,
  `end_time` varchar(30) DEFAULT NULL,
  `is_submit` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company_quarter_time
-- ----------------------------
INSERT INTO `company_quarter_time` VALUES ('1', '1', '1', '1', '2017-11-23 10:43:18', null, '1');
INSERT INTO `company_quarter_time` VALUES ('2', '1', '2', '1', '2017-11-23 10:43:18', null, '1');
INSERT INTO `company_quarter_time` VALUES ('3', '1', '3', '1', '2017-11-23 10:43:19', null, '1');
INSERT INTO `company_quarter_time` VALUES ('13', '1', '1', '2', '', '', '1');
INSERT INTO `company_quarter_time` VALUES ('14', '1', '2', '2', null, null, '1');
INSERT INTO `company_quarter_time` VALUES ('15', '1', '3', '2', null, null, '1');
INSERT INTO `company_quarter_time` VALUES ('22', '3', '4', '1', '2017-11-27 18:21:39', null, '0');
INSERT INTO `company_quarter_time` VALUES ('23', '3', '5', '1', '2017-11-27 18:21:40', null, '0');
INSERT INTO `company_quarter_time` VALUES ('24', '3', '6', '1', '2017-11-27 18:21:40', null, '0');
INSERT INTO `company_quarter_time` VALUES ('25', '3', '7', '1', '2017-11-27 18:21:41', null, '0');
INSERT INTO `company_quarter_time` VALUES ('26', '4', '8', '1', '2017-12-30 18:39:50', null, '0');
INSERT INTO `company_quarter_time` VALUES ('27', '4', '9', '1', '2017-12-30 18:39:51', null, '0');
INSERT INTO `company_quarter_time` VALUES ('28', '4', '10', '1', '2017-12-30 18:39:52', null, '0');
INSERT INTO `company_quarter_time` VALUES ('29', '4', '11', '1', '2017-12-30 18:39:52', null, '0');
INSERT INTO `company_quarter_time` VALUES ('30', '7', '12', '1', '2018-01-02 12:11:08', null, '0');
INSERT INTO `company_quarter_time` VALUES ('31', '7', '13', '1', '2018-01-02 12:11:09', null, '0');
INSERT INTO `company_quarter_time` VALUES ('32', '7', '14', '1', '2018-01-02 12:11:09', null, '0');
INSERT INTO `company_quarter_time` VALUES ('33', '8', '15', '1', '2018-01-02 12:14:55', null, '0');
INSERT INTO `company_quarter_time` VALUES ('34', '8', '16', '1', '2018-01-02 12:14:56', null, '0');
INSERT INTO `company_quarter_time` VALUES ('35', '8', '17', '1', '2018-01-02 12:14:57', null, '0');
INSERT INTO `company_quarter_time` VALUES ('36', '8', '18', '1', '2018-01-02 12:14:58', null, '0');
INSERT INTO `company_quarter_time` VALUES ('37', '9', '19', '1', '2018-01-09 17:56:09', '2018-01-11 22:08:00', '1');
INSERT INTO `company_quarter_time` VALUES ('38', '9', '20', '1', '2018-01-09 17:56:09', '2018-01-11 22:07:49', '1');
INSERT INTO `company_quarter_time` VALUES ('39', '9', '21', '1', '2018-01-09 17:56:09', '2018-01-11 22:08:24', '1');
INSERT INTO `company_quarter_time` VALUES ('40', '9', '22', '1', '2018-01-09 17:56:09', '2018-01-11 22:08:37', '1');
INSERT INTO `company_quarter_time` VALUES ('49', '9', '19', '2', '2018-01-11 22:08:51', '2018-01-12 13:45:39', '1');
INSERT INTO `company_quarter_time` VALUES ('50', '9', '20', '2', '2018-01-11 22:08:51', '2018-01-12 15:49:49', '1');
INSERT INTO `company_quarter_time` VALUES ('51', '9', '21', '2', '2018-01-11 22:08:51', '2018-01-12 15:53:01', '1');
INSERT INTO `company_quarter_time` VALUES ('52', '9', '22', '2', '2018-01-11 22:08:51', '2018-01-12 15:57:15', '1');
INSERT INTO `company_quarter_time` VALUES ('57', '9', '19', '3', '2018-01-12 21:10:36', null, '0');
INSERT INTO `company_quarter_time` VALUES ('58', '9', '20', '3', '2018-01-12 21:10:36', null, '0');
INSERT INTO `company_quarter_time` VALUES ('59', '9', '21', '3', '2018-01-12 21:10:36', null, '0');
INSERT INTO `company_quarter_time` VALUES ('60', '9', '22', '3', '2018-01-12 21:10:36', null, '0');

-- ----------------------------
-- Table structure for company_report
-- ----------------------------
DROP TABLE IF EXISTS `company_report`;
CREATE TABLE `company_report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) DEFAULT NULL,
  `quarter` int(11) DEFAULT NULL,
  `buy_report` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company_report
-- ----------------------------
INSERT INTO `company_report` VALUES ('1', '1', '2', '0');
INSERT INTO `company_report` VALUES ('2', '2', '2', '1');
INSERT INTO `company_report` VALUES ('3', '3', '2', '1');
INSERT INTO `company_report` VALUES ('4', '19', '2', '1');
INSERT INTO `company_report` VALUES ('5', '20', '2', '1');
INSERT INTO `company_report` VALUES ('6', '21', '2', '1');
INSERT INTO `company_report` VALUES ('7', '22', '2', '1');

-- ----------------------------
-- Table structure for company_rule
-- ----------------------------
DROP TABLE IF EXISTS `company_rule`;
CREATE TABLE `company_rule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) DEFAULT NULL,
  `rule_id` varchar(255) DEFAULT NULL,
  `quarter` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company_rule
-- ----------------------------
INSERT INTO `company_rule` VALUES ('1', '1', '6,2', '1');
INSERT INTO `company_rule` VALUES ('2', '2', '7,1', '1');
INSERT INTO `company_rule` VALUES ('3', '3', '7,1', '1');
INSERT INTO `company_rule` VALUES ('4', '1', '6,2', '2');
INSERT INTO `company_rule` VALUES ('5', '2', '7,1', '2');
INSERT INTO `company_rule` VALUES ('6', '3', '7,1', '2');
INSERT INTO `company_rule` VALUES ('7', '1', '6,2', '3');
INSERT INTO `company_rule` VALUES ('8', '19', '5,1', '1');
INSERT INTO `company_rule` VALUES ('9', '21', '7,2', '1');
INSERT INTO `company_rule` VALUES ('10', '22', '7,1', '1');
INSERT INTO `company_rule` VALUES ('11', '20', '6,1', '1');
INSERT INTO `company_rule` VALUES ('12', '19', '5,1', '2');
INSERT INTO `company_rule` VALUES ('13', '20', '6,1', '2');
INSERT INTO `company_rule` VALUES ('14', '21', '7,2', '2');
INSERT INTO `company_rule` VALUES ('15', '22', '7,1', '2');

-- ----------------------------
-- Table structure for company_rule_info
-- ----------------------------
DROP TABLE IF EXISTS `company_rule_info`;
CREATE TABLE `company_rule_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `detail` varchar(255) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company_rule_info
-- ----------------------------
INSERT INTO `company_rule_info` VALUES ('1', ' 在回顾了所有的相关信息和选择后，所有的重要决策将由总裁制定', '决策制定流程');
INSERT INTO `company_rule_info` VALUES ('2', '所有重要决策将由团队投票一致通过', '决策制定流程');
INSERT INTO `company_rule_info` VALUES ('3', '所有重要决策将由团队投票大多数通过', '决策制定流程');
INSERT INTO `company_rule_info` VALUES ('4', '所有重要决策将分别由各个功能领域的负责人决定', '决策制定流程');
INSERT INTO `company_rule_info` VALUES ('5', '必须参加所有团队会议，除非因为时间冲突', '团队规则');
INSERT INTO `company_rule_info` VALUES ('6', '所有会议都将准时开始，准时结束', '团队规则');
INSERT INTO `company_rule_info` VALUES ('7', '必须为每次会议做好充分准备（完成所有分配的任务）', '团队规则');

-- ----------------------------
-- Table structure for company_stock
-- ----------------------------
DROP TABLE IF EXISTS `company_stock`;
CREATE TABLE `company_stock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `quarter` int(11) NOT NULL,
  `stock_type` varchar(255) DEFAULT NULL,
  `owner` varchar(255) DEFAULT NULL,
  `stock_number` int(11) DEFAULT NULL,
  `stock_price` int(11) DEFAULT NULL,
  `total_price` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company_stock
-- ----------------------------
INSERT INTO `company_stock` VALUES ('1', '1', '1', '普通股', '经营团队', '10000', '200', '2000000');
INSERT INTO `company_stock` VALUES ('2', '2', '1', '普通股', '经营团队', '10000', '200', '2000000');
INSERT INTO `company_stock` VALUES ('3', '3', '1', '普通股', '经营团队', '10000', '200', '2000000');
INSERT INTO `company_stock` VALUES ('4', '1', '2', '普通股', '经营团队', '5000', '200', '1000000');
INSERT INTO `company_stock` VALUES ('5', '2', '2', '普通股', '经营团队', '5000', '200', '1000000');
INSERT INTO `company_stock` VALUES ('6', '3', '2', '普通股', '经营团队', '5000', '200', '1000000');
INSERT INTO `company_stock` VALUES ('7', '1', '3', '普通股', '经营团队', '5000', '200', '1000000');
INSERT INTO `company_stock` VALUES ('8', '4', '1', '普通股', '经营团队', '10000', '200', '2000000');
INSERT INTO `company_stock` VALUES ('9', '5', '1', '普通股', '经营团队', '10000', '200', '2000000');
INSERT INTO `company_stock` VALUES ('10', '6', '1', '普通股', '经营团队', '10000', '200', '2000000');
INSERT INTO `company_stock` VALUES ('11', '7', '1', '普通股', '经营团队', '10000', '200', '2000000');
INSERT INTO `company_stock` VALUES ('12', '8', '1', '普通股', '经营团队', '10000', '200', '2000000');
INSERT INTO `company_stock` VALUES ('13', '9', '1', '普通股', '经营团队', '10000', '200', '2000000');
INSERT INTO `company_stock` VALUES ('14', '10', '1', '普通股', '经营团队', '10000', '200', '2000000');
INSERT INTO `company_stock` VALUES ('15', '11', '1', '普通股', '经营团队', '10000', '200', '2000000');
INSERT INTO `company_stock` VALUES ('16', '12', '1', '普通股', '经营团队', '10000', '200', '2000000');
INSERT INTO `company_stock` VALUES ('17', '13', '1', '普通股', '经营团队', '10000', '200', '2000000');
INSERT INTO `company_stock` VALUES ('18', '14', '1', '普通股', '经营团队', '10000', '200', '2000000');
INSERT INTO `company_stock` VALUES ('19', '15', '1', '普通股', '经营团队', '10000', '200', '2000000');
INSERT INTO `company_stock` VALUES ('20', '16', '1', '普通股', '经营团队', '10000', '200', '2000000');
INSERT INTO `company_stock` VALUES ('21', '17', '1', '普通股', '经营团队', '10000', '200', '2000000');
INSERT INTO `company_stock` VALUES ('22', '18', '1', '普通股', '经营团队', '10000', '200', '2000000');
INSERT INTO `company_stock` VALUES ('23', '19', '1', '普通股', '经营团队', '10000', '200', '2000000');
INSERT INTO `company_stock` VALUES ('24', '20', '1', '普通股', '经营团队', '10000', '200', '2000000');
INSERT INTO `company_stock` VALUES ('25', '21', '1', '普通股', '经营团队', '10000', '200', '2000000');
INSERT INTO `company_stock` VALUES ('26', '22', '1', '普通股', '经营团队', '10000', '200', '2000000');
INSERT INTO `company_stock` VALUES ('27', '19', '2', '普通股', '经营团队', '5000', '200', '1000000');
INSERT INTO `company_stock` VALUES ('28', '20', '2', '普通股', '经营团队', '5000', '200', '1000000');
INSERT INTO `company_stock` VALUES ('29', '21', '2', '普通股', '经营团队', '5000', '200', '1000000');
INSERT INTO `company_stock` VALUES ('30', '22', '2', '普通股', '经营团队', '5000', '200', '1000000');
INSERT INTO `company_stock` VALUES ('31', '19', '3', '普通股', '经营团队', '5000', '200', '1000000');

-- ----------------------------
-- Table structure for company_strategy
-- ----------------------------
DROP TABLE IF EXISTS `company_strategy`;
CREATE TABLE `company_strategy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) DEFAULT NULL,
  `main_pro` varchar(255) DEFAULT NULL,
  `minor_pro` varchar(255) DEFAULT NULL,
  `strategy_id` varchar(255) DEFAULT NULL,
  `service` varchar(255) DEFAULT NULL,
  `quarter` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company_strategy
-- ----------------------------
INSERT INTO `company_strategy` VALUES ('1', '1', '极致型', '商务型', '6,2,9,12,', '理念123', '1');
INSERT INTO `company_strategy` VALUES ('2', '2', '商务型', '实用型', '6,2,10,13,', '理念456', '1');
INSERT INTO `company_strategy` VALUES ('3', '3', '极致型', '实用型', '5,2,11,15,', '理念789', '1');
INSERT INTO `company_strategy` VALUES ('4', '1', '极致型', '商务型', '6,2,9,12,', '理念123', '2');
INSERT INTO `company_strategy` VALUES ('5', '2', '商务型', '实用型', '6,2,10,13,', '理念456', '2');
INSERT INTO `company_strategy` VALUES ('6', '3', '极致型', '实用型', '5,2,11,15,', '理念789', '2');
INSERT INTO `company_strategy` VALUES ('7', '1', '极致型', '商务型', '6,2,9,12,', '理念123', '3');
INSERT INTO `company_strategy` VALUES ('8', '19', '极致型', '商务型', '6,2,9,13,', '是地方地方', '1');
INSERT INTO `company_strategy` VALUES ('9', '20', '商务型', '实用型', '6,2,9,12,', '123123', '1');
INSERT INTO `company_strategy` VALUES ('10', '21', '极致型', '商务型', '6,1,9,12,', '12321321', '1');
INSERT INTO `company_strategy` VALUES ('11', '22', '极致型', '实用型', '6,2,9,13,', '12321321', '1');
INSERT INTO `company_strategy` VALUES ('12', '19', '极致型', '商务型', '6,2,9,13,', '是地方地方', '2');
INSERT INTO `company_strategy` VALUES ('13', '20', '商务型', '实用型', '6,2,9,12,', '123123', '2');
INSERT INTO `company_strategy` VALUES ('14', '21', '极致型', '商务型', '6,1,9,12,', '12321321', '2');
INSERT INTO `company_strategy` VALUES ('15', '22', '极致型', '实用型', '6,2,9,13,', '12321321', '2');

-- ----------------------------
-- Table structure for competition
-- ----------------------------
DROP TABLE IF EXISTS `competition`;
CREATE TABLE `competition` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `license` varchar(255) DEFAULT NULL,
  `current_quarter` int(11) DEFAULT NULL,
  `quarter` int(11) DEFAULT NULL,
  `member` int(11) DEFAULT NULL,
  `team` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `is_lock` int(4) DEFAULT NULL,
  `physical_rate` float(11,1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `teacher_id` (`teacher_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of competition
-- ----------------------------
INSERT INTO `competition` VALUES ('1', '2017-11-23', '721Y-68F6-ZV49', '2', '6', '4', '3', '1', '2017-11-23 00:00:00', '2017-11-30 00:00:00', '已通过', '0', '0.6');
INSERT INTO `competition` VALUES ('3', '2017-11-27', '7R18-10N9-P189', '1', '6', '3', '4', '1', '2017-11-07 00:00:00', '2017-11-30 00:00:00', '已通过', '0', '0.6');
INSERT INTO `competition` VALUES ('4', '2012-12-30', '0W92-X5M2-F5HO', '1', '6', '3', '4', '1', '2017-11-30 00:00:00', '2018-02-16 00:00:00', '已通过', '0', '0.7');
INSERT INTO `competition` VALUES ('5', '2018-1-2', '2WSI-Z829-AYUE', '1', '6', '5', '4', '1', '2018-01-02 00:00:00', '2018-01-31 00:00:00', '已通过', '0', '0.7');
INSERT INTO `competition` VALUES ('6', '2018-1-2-2', '7LX7-614R-AYUH', '1', '6', '4', '3', '1', '2018-01-02 00:00:00', '2018-01-31 00:00:00', '已通过', '0', '0.8');
INSERT INTO `competition` VALUES ('7', '2018-1-2-3', '1S01-F1B1-MWYS', '1', '10', '3', '3', '1', '2018-01-02 00:00:00', '2018-01-19 00:00:00', '已通过', '0', '0.5');
INSERT INTO `competition` VALUES ('8', '2018-1-2-3-4', 'M7VO-91QE-3B8L', '1', '10', '3', '4', '1', '2018-01-02 00:00:00', '2018-01-10 00:00:00', '已通过', '0', '0.6');
INSERT INTO `competition` VALUES ('9', '20180109-1', '3I52-J9XQ-87J5', '3', '6', '4', '4', '1', '2018-01-09 00:00:00', '2018-01-31 00:00:00', '已通过', '0', '0.6');

-- ----------------------------
-- Table structure for competition_quarter_time
-- ----------------------------
DROP TABLE IF EXISTS `competition_quarter_time`;
CREATE TABLE `competition_quarter_time` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quarter_number` int(11) DEFAULT NULL,
  `start_time` varchar(20) DEFAULT NULL,
  `end_time` varchar(20) DEFAULT NULL,
  `competition_id` int(11) DEFAULT NULL,
  `is_allow_overdue_submit` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of competition_quarter_time
-- ----------------------------
INSERT INTO `competition_quarter_time` VALUES ('1', '1', '2017-07-04 12:12:00', '2017-07-04 12:12:00', '1', 'true');
INSERT INTO `competition_quarter_time` VALUES ('2', '2', '2017-07-04 12:12:00', '2017-07-04 12:12:00', '1', 'true');
INSERT INTO `competition_quarter_time` VALUES ('3', '3', '2017-07-04 12:12:00', '2017-07-04 12:12:00', '1', 'true');
INSERT INTO `competition_quarter_time` VALUES ('4', '4', '2017-07-04 12:12:00', '2017-07-04 12:12:00', '1', 'true');
INSERT INTO `competition_quarter_time` VALUES ('5', '5', '2017-07-04 12:12:00', '2017-07-04 12:12:00', '1', 'true');
INSERT INTO `competition_quarter_time` VALUES ('6', '6', '2017-07-04 12:12:00', '2017-07-04 12:12:00', '1', 'true');
INSERT INTO `competition_quarter_time` VALUES ('7', '1', '2017-07-04 12:12:00', '2017-07-04 12:12:00', '3', 'true');
INSERT INTO `competition_quarter_time` VALUES ('8', '2', '2017-07-04 12:12:00', '2017-07-04 12:12:00', '3', 'true');
INSERT INTO `competition_quarter_time` VALUES ('9', '3', '2017-07-04 12:12:00', '2017-07-04 12:12:00', '3', 'true');
INSERT INTO `competition_quarter_time` VALUES ('10', '4', '2017-07-04 12:12:00', '2017-07-04 12:12:00', '3', 'true');

-- ----------------------------
-- Table structure for customer_service
-- ----------------------------
DROP TABLE IF EXISTS `customer_service`;
CREATE TABLE `customer_service` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_type` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `submit_date` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `teacher_id` (`teacher_id`),
  CONSTRAINT `customer_service_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customer_service
-- ----------------------------
INSERT INTO `customer_service` VALUES ('1', '学生端', 'sfgasd', 'asdf', 'asdfsadfsadfasdfsddddddddddddddddddddddddddddddddddddddddddddd', '2017-06-07 13:40:52', '待审核', null);
INSERT INTO `customer_service` VALUES ('2', '学生端', 'fdgdfg', 'dfgfdg', 'dfgdfgdf', '2017-06-09 07:58:30', '待审核', null);
INSERT INTO `customer_service` VALUES ('3', '学生端', '黄伟', '34333@qq.com', '第三方斯蒂芬斯蒂芬', '2017-06-09 08:00:58', '待审核', null);
INSERT INTO `customer_service` VALUES ('4', '教师端', '12312', 'sadfsadf.com', 'sql注入', '2017-07-01 15:57:16', '待审核', null);

-- ----------------------------
-- Table structure for demand_forecast
-- ----------------------------
DROP TABLE IF EXISTS `demand_forecast`;
CREATE TABLE `demand_forecast` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) DEFAULT NULL,
  `quarter` int(11) DEFAULT NULL,
  `demand_average_phy` int(11) DEFAULT NULL,
  `demand_average_web` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of demand_forecast
-- ----------------------------
INSERT INTO `demand_forecast` VALUES ('1', '1', '2', '50', '60');
INSERT INTO `demand_forecast` VALUES ('2', '2', '2', '60', '50');
INSERT INTO `demand_forecast` VALUES ('3', '3', '2', '50', '49');
INSERT INTO `demand_forecast` VALUES ('4', '1', '3', '33', '33');
INSERT INTO `demand_forecast` VALUES ('5', '19', '2', '10', '5');
INSERT INTO `demand_forecast` VALUES ('6', '20', '2', '20', '20');
INSERT INTO `demand_forecast` VALUES ('7', '21', '2', '40', '45');
INSERT INTO `demand_forecast` VALUES ('8', '22', '2', '50', '55');

-- ----------------------------
-- Table structure for demand_info
-- ----------------------------
DROP TABLE IF EXISTS `demand_info`;
CREATE TABLE `demand_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `detail` varchar(50) DEFAULT NULL,
  `practical` int(11) DEFAULT NULL,
  `perfect` int(11) DEFAULT NULL,
  `business` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of demand_info
-- ----------------------------
INSERT INTO `demand_info` VALUES ('1', '轻薄美观', '89', '119', '103');
INSERT INTO `demand_info` VALUES ('2', '电池容量大', '91', '115', '130');
INSERT INTO `demand_info` VALUES ('3', '内存大，反应速度快', '101', '121', '123');
INSERT INTO `demand_info` VALUES ('4', '防尘，防水，防摔', '123', '145', '135');
INSERT INTO `demand_info` VALUES ('5', '防盗功能', '89', '125', '129');
INSERT INTO `demand_info` VALUES ('6', '语音，视频功能', '123', '123', '125');
INSERT INTO `demand_info` VALUES ('7', '文字识别', '87', '116', '112');
INSERT INTO `demand_info` VALUES ('8', 'K歌', '102', '126', '103');
INSERT INTO `demand_info` VALUES ('9', 'GPS定位', '93', '123', '126');
INSERT INTO `demand_info` VALUES ('10', '地图导航功能', '105', '131', '116');
INSERT INTO `demand_info` VALUES ('11', '提供数据保护', '89', '117', '129');
INSERT INTO `demand_info` VALUES ('12', '用户操作简单', '105', '108', '96');
INSERT INTO `demand_info` VALUES ('13', '产品口碑良好', '99', '128', '104');
INSERT INTO `demand_info` VALUES ('14', '售后服务随处可得', '101', '127', '105');
INSERT INTO `demand_info` VALUES ('15', '指纹识别', '85', '123', '131');
INSERT INTO `demand_info` VALUES ('16', '二维码扫描', '91', '109', '126');
INSERT INTO `demand_info` VALUES ('17', '快速处理和输出能力', '98', '114', '128');
INSERT INTO `demand_info` VALUES ('18', '方便连接数据流量和局域网', '109', '126', '135');

-- ----------------------------
-- Table structure for duty
-- ----------------------------
DROP TABLE IF EXISTS `duty`;
CREATE TABLE `duty` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of duty
-- ----------------------------
INSERT INTO `duty` VALUES ('1', '总裁');
INSERT INTO `duty` VALUES ('2', '总经理');
INSERT INTO `duty` VALUES ('3', '销售部长');
INSERT INTO `duty` VALUES ('4', '宣传部长');
INSERT INTO `duty` VALUES ('5', '执行总裁');

-- ----------------------------
-- Table structure for financial_ratio
-- ----------------------------
DROP TABLE IF EXISTS `financial_ratio`;
CREATE TABLE `financial_ratio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) DEFAULT NULL,
  `quarter` int(11) DEFAULT NULL,
  `quick_ratio` double(10,3) DEFAULT NULL,
  `inventoryover_ratio` double(10,3) DEFAULT NULL,
  `fixedassetover_ratio` double(10,3) DEFAULT NULL,
  `totalasset_ratio` double(10,3) DEFAULT NULL,
  `debt_ratio` double(10,3) DEFAULT NULL,
  `grossprofit_ratio` double(10,3) DEFAULT NULL,
  `netprofit_ratio` double(10,3) DEFAULT NULL,
  `return_ratio` double(10,3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of financial_ratio
-- ----------------------------
INSERT INTO `financial_ratio` VALUES ('11', '19', '2', '0.000', '28145.000', '31060.605', '0.624', '0.000', '-0.109', '0.063', '0.040');
INSERT INTO `financial_ratio` VALUES ('12', '20', '2', '0.000', '8197.717', '38214.550', '0.357', '0.000', '0.017', '0.326', '0.116');
INSERT INTO `financial_ratio` VALUES ('13', '21', '2', '0.000', '20292.000', '1.315', '0.000', '0.000', '-34101.039', '-26901.024', '-4.240');
INSERT INTO `financial_ratio` VALUES ('14', '22', '2', '0.000', '6559.557', '49755.310', '0.424', '0.000', '0.219', '0.456', '0.193');

-- ----------------------------
-- Table structure for fixed_deposit
-- ----------------------------
DROP TABLE IF EXISTS `fixed_deposit`;
CREATE TABLE `fixed_deposit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) DEFAULT NULL,
  `quarter` int(11) DEFAULT NULL,
  `cunkuan_last` float DEFAULT NULL,
  `tiqu` float DEFAULT NULL,
  `cunru` float DEFAULT NULL,
  `lilv` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fixed_deposit
-- ----------------------------
INSERT INTO `fixed_deposit` VALUES ('1', '1', '1', '0', '0', '2000', '1.5');
INSERT INTO `fixed_deposit` VALUES ('2', '2', '1', '0', '0', '2200', '1.5');
INSERT INTO `fixed_deposit` VALUES ('3', '3', '1', '0', '0', '2400', '1.5');
INSERT INTO `fixed_deposit` VALUES ('4', '1', '2', '2030', '0', '5000', '1.5');
INSERT INTO `fixed_deposit` VALUES ('5', '2', '2', '2233', '0', '3000', '1.5');
INSERT INTO `fixed_deposit` VALUES ('6', '3', '2', '2436', '0', '3000', '1.5');
INSERT INTO `fixed_deposit` VALUES ('7', '1', '3', '7135.45', '0', '0', '1.5');
INSERT INTO `fixed_deposit` VALUES ('8', '19', '1', '0', '0', '1000', '1.5');
INSERT INTO `fixed_deposit` VALUES ('9', '20', '1', '0', '0', '1234', '1.5');
INSERT INTO `fixed_deposit` VALUES ('10', '21', '1', '0', '0', '4321', '1.5');
INSERT INTO `fixed_deposit` VALUES ('11', '22', '1', '0', '0', '5432', '1.5');
INSERT INTO `fixed_deposit` VALUES ('12', '19', '2', '1015', '0', '1000', '1.5');
INSERT INTO `fixed_deposit` VALUES ('13', '20', '2', '1252.51', '0', '3000', '1.5');
INSERT INTO `fixed_deposit` VALUES ('14', '21', '2', '4385.81', '0', '0', '1.5');
INSERT INTO `fixed_deposit` VALUES ('15', '22', '2', '5513.48', '0', '0', '1.5');
INSERT INTO `fixed_deposit` VALUES ('16', '19', '3', '2045.22', '0', '0', '1.5');

-- ----------------------------
-- Table structure for help_document
-- ----------------------------
DROP TABLE IF EXISTS `help_document`;
CREATE TABLE `help_document` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titleLevelOne` varchar(255) DEFAULT NULL,
  `titleLevelTwo` varchar(255) DEFAULT NULL,
  `content` varchar(10000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of help_document
-- ----------------------------
INSERT INTO `help_document` VALUES ('1', 'Market简介', '竞赛背景', '您在创业阶段的第一项任务就是组织您的管理团队，并安排每个人的职责。 这个任务相当重要，因为 Marketplace 商业系统的工作量不是单单一个人能够完成的。\r\n\r\n让每个队员都参与公司全方位的管理并不是有效率的做法。 基本上，团队的组织和管理决定了团队效率以及团队契合度。\r\n\r\n队员们可以轮换其副总裁职位，这样每个人都可以获得在多个领域的决策经验。 这样做的好处在于能够培养参与者的全面决策观。 同样也有助于所有队员对公司经营有一个共同的框架概念。\r\n\r\n功能角色\r\n\r\n分配团队职责的方式有很多种。 以下有七个主要的职责类别：\r\n\r\n总裁 - 总体领导： 协调所有职能部门，参与所有领域的决策，设定公司目标，组织分配工作，管理日程安排及主持会议，监控总体表现（平衡计分卡），并带领团队成为业内领先的公司。\r\n\r\n营销副总裁： 通过品牌设计、定价、广告设计、和媒体投放来满足客户需求。\r\n\r\n销售副总裁： 主导销售（选择新建销售中心的地点和时机），选择网络销售中心的地点和资金来源，选择提升网站访问量和网络销售效率的措施，以及管理销售团队（总人数、销售目标、员工培训和激励计划）。\r\n\r\n生产副总裁： 规划产能，安排工厂生产，改进产品质量。\r\n\r\n财会副总裁： 汇总财务业绩，管理现金流，分析利润及资本结构。\r\n\r\n市场调研副总裁： 分析市场及公司营运数据。\r\n\r\n人力资源副总裁： 调整薪酬组合，提高工人生产效率。\r\n\r\n对职责的划分可以多种多样。 例如，在五人团队中，总裁可以兼任六个副总裁职位之一，财务副总裁可以兼任人力资源副总裁一职。\r\n\r\n您可以在合适的时机轮换总裁这一角色，以便所有队员都能获得一定的领导经验。 例如，在创业阶段、准备商业计划及与风险投资者协商阶段、企业成长期阶段、向风险投资者进行最终报告阶段，总裁一职可由不同的队员担任。 这种管理结构最适合六人队伍。\r\n\r\n团队职责的划分应视队伍人数而定。 对于四人队伍，可以考虑让总裁兼任某一副总裁职位，合并财务副总裁职位和人力资源副总裁职位，以及合并营销副总裁职位和市场调研副总裁职位。\r\n\r\n也可以按照品牌管理的模式来组织您的队伍。 在此种模式下，同样也应当设立总裁和副总裁职位。 您可以为每个品牌或者每个目标细分市场设置一个副总裁职位。 每个队员除了负责其职位职责外，还需负责品牌或者细分市场的市场调研、营销、及销售。\r\n\r\n这种模式的好处在于每个队员都必须全方位地了解其负责的细分市场，并规划出一套行之有效的商业策略。 因而队员将获得更加全面和广泛的商业经验。 不利之处在于，同个公司的品牌管理者之间将相互竞争公司资源和公司重心。\r\n\r\n品牌管理模式还可衍生出区域管理模式。 在此种模式下，同样也应当设立总裁和副总裁职位。 队员将分任不同城市管理者的角色，每个队员都必须全方位地了解其负责的城市，并规划出一套行之有效的商业策略。\r\n\r\n但记住，这些都是只是参考建议而已。 在工作量平均的基础上，您完全可以根据个人偏好、经验、及工作量来选择是否采取这些建议。 同样，如果有冲突发生，或工作量分配不均，请考虑立即重新分配职责。\r\n\r\n团队管理\r\n\r\n在团队管理方面，请考虑以下几点。 首先，如果缺乏强有力的领导、共同的目标、愿意妥协的态度、敬业感、以及乐意分担的心态，很少有新企业能够获得成功。\r\n\r\n您需要在极短的时间内组织好您的公司，并使之成为一家强力高效的企业。 您一个人不可能达成这一目标。 您必须学会团队协作，让每个人都朝着同一个目标努力。\r\n\r\n第二，内部冲突将无法避免。 这是因为您必须做出一系列的艰难决策，而这些决策又充满了不确定性及风险性。 您永远都不会有足够的信息和资源来做您想做的事情。\r\n\r\n此外，队员可能会在策略、计划执行、及资源管理等方面持有不同的意见。 解决冲突的能力及方式可能会极大地影响公司成功与否。\r\n\r\n最后，时间管理在 Marketplace 中也是影响成功的关键。 相对于任务量来说，时间总是不够用的。 而许多团队都将时间过多地用在了团队会议上。\r\n\r\n建议每次团队会议都由总裁主持，以确保团队讨论聚焦在当前的商业营运上。 应当在每次团队会议之前制定好议程及时间表。 每次会议不宜超过两小时。 漫长拖沓的会议不仅没有效率，还容易造成无所成事的挫折感。 队员在结束会议之前应当拿出一套各自的执行方案。 在下次会议开始时应当对这套方案进行回顾总结。\r\n\r\n为了使团队会议顺利进行，每个队员都必须在会前做好准备。 包括了解在自己职责范围内的各种其前因后果、问题、以及各种权衡。\r\n\r\n您的管理团队正准备进入微型电脑行业。 您将致力于向亚洲、美国、拉丁美洲、和欧洲推出一种新型的个人电脑。\r\n\r\n\r\n\r\n其他公司也将同时进入上述区域的电脑行业。 为了简化商业背景，假设微型电脑行业正处在产品生命周期的引入阶段。 也就是说，微型电脑还未出现，市场上也不存在成熟的竞争对手。 另外，假设所有的竞争对手，包括您的的公司，有着相同的启动资金，对市场的了解程度也相同。\r\n\r\n所有的厂商都将通过其位于全球主要城市的实体销售中心进行销售。 您的目标市场是商用电脑。 您将不会面向家用电脑市场，也不会通过零售商进行销售。 因此，您的营销策略将以对商务客户直接销售为重心。\r\n\r\n目前的个人电脑市场由为三个细分市场组成。 分别为实用型、商旅型、和极致型市场。 以下的图片说明了三个细分市场各自对电脑价格和性能的需求。 圆圈的大小代表了各个细分市场的规模。\r\n\r\n	\r\n每个细分市场对电脑都有着不同的需求，并且需要您采取不同的营销策略以吸引消费者。 您需完成的首批决策之一就是选择其中的两个细分市场以作为目标。 在选择目标细分市场之后，您将规划然后执行一套重心明确的商业策略，以从每个细分市场中获利。\r\n\r\n实用型电脑市场拥有最大的消费者群体。 他们希望拥有一台简单易用的办公室电脑。 电脑价格也应当适中。\r\n\r\n商旅型电脑市场的消费者需要一款能够在旅途中使用的电脑。 他们通常为经常出差的中高层管理人员和销售人员。 这个细分市场对价格也较为敏感。\r\n\r\n极致型细分市场的消费者寻求的是一款能够用于工程设计和生产管理的高性能电脑。 他们愿意为高性能支付更高的价格。\r\n\r\n作为管理团队，您将提供种子资本（投资资金）以开始创业。 您可以将这笔资金用于兴建工厂、开设销售中心、以及设计品牌。 管理团队将在第一季度投资 2,000,000，并在第二、第三季度各投资 1,000,000。 在第四季度，风险投资者可能会向您追加 4,000,000 的投资。这样投资总额将达到 8,000,000。\r\n\r\n您的管理团队将用接下来一年半（6 个季度或者决策周期）的时间来使公司步入正轨。 在这段时间内，您应当成为一家自给自足的公司，并从经营中赚取丰厚的利润。\r\n\r\n平衡计分卡将用来衡量您公司的表现。 团队的整体表现将由财务业绩、营销效率、市场份额、未来投资、资产管理、人力资源管理、及财富创造等方面来决定。 从第三季度开始，您可以在“业绩报告”中查看平衡计分卡。');
INSERT INTO `help_document` VALUES ('2', 'Market简介', '如何获胜', '要在商业及营销上取得成功并不困难。 \r\n让越多的人满意，您的收入就越多。\r\n\r\n以下是几条规则：\r\n\r\n找出消费者的需求。\r\n满足他们的需求。\r\n告诉他们，您能满足他们的需求（广告）。\r\n派遣员工深入消费者的生活及工作，当面告诉他们您将如何满足他们的需求（销售渠道及员工管理）。\r\n出色完成工作之后，收钱。\r\n听上去很简单，对吗？ \r\n当然，在此过程中也会有一些困难。\r\n\r\n首先，消费者是有差异性的。 一款产品并不能满足所有人的需要。 不同的消费者有不同的品味、偏好、和需求等。\r\n\r\n其结果就是，许多消费者会选择等待，直到合适的产品出现。 在正应了一句老话，众口难调。 所以，市场需求量可能低于您的预期。\r\n\r\n要解决这个问题，就必须找出消费者需求的差异性（市场调研），按其差异性将消费者分类（市场细分），然后按类规划您的策略（市场定位）。\r\n\r\n第二，每个人都想获得更多，付出更少。 如果产品类似但价格较低，价格差将有助于您从竞争对手那里夺取部分市场份额。\r\n\r\n虽然您希望进行低价销售，但是您必须支付成本并赚取利润。\r\n\r\n解决这种价格困境的一种办法就是扩大销量。 如果您能扩大销售，单位生产成本通常会大幅下降。 较低的销货成本（COGS）可以允许您在降低价格的同时保证利润的增长。\r\n\r\n如何扩大销量呢？ 提供更好的产品、更低的价格、然后广而告之（广告及销售人员）。\r\n\r\n第三，总会有其它的公司想从您所在的市场上分一杯羹。 竞争对手总会出现，并将与您争夺销售及利润。\r\n\r\n他们会怎么与您竞争呢？\r\n\r\n聪明的竞争对手除了会研究消费者需求之外，还会研究您的产品及广告等（参照物），然后他们会推出更好的产品及广告等。 通常，他们会找到未获满足的消费者群体（细分市场），然后规划出一套针对该群体的更优决策。\r\n\r\n第四，消费者通常会被更好的产品及广告等所吸引。\r\n\r\n您的工作没有终点。 您必须时常将自己的产品及广告等与消费者需求（满意度）及竞争对手的（参照物）进行对比，以确保您有更好的产品、价格、促销、及销售渠道。\r\n\r\n简单地说，您将致力于更好地满足消费者需求。 然后，告诉消费者，您能更好地满足其需求。 这样做，您将能创造更大的销量，并能以此降低成本，然后提供更低的价格并赚取不错的利润。\r\n\r\n当然，说比做简单，但这就是行商及营销的本质。\r\n\r\n在进行 Marketplace 商业竞争的时候请牢记这些指导原则。 如果您做到了，就能获得成功。 您将成为 Marketplace 中的赢家！\r\n\r\n祝您好运！');
INSERT INTO `help_document` VALUES ('3', 'Market简介', '每季度决策', '注意： 您应当能够证明决策的可行性，并说明做出这些决策的依据。\r\n\r\n季度 1： 组织并成立公司。\r\n\r\n确定希望树立的公司形象\r\n选择公司名称\r\n注重团队合作，以达成目标\r\n评估团队专长、工作风格，并相应地分配公司职责\r\n决定将如何管理公司，并确立公司准则\r\n研究市场调查结果 - 评估细分市场、区域市场、和潜在竞争\r\n分析市场机会\r\n树立公司目标和决策方向\r\n选择目标细分市场\r\n树立公司宗旨\r\n明确公司目标及其优先等级\r\n选择公司策略方向\r\n向管理团队发行价值两百万的股票\r\n为客户创造产品价值 - 匹配产品组件和客户受益（质量功能展开法）\r\n为目标细分市场设计一个品牌\r\n选择进行测试的市场\r\n开设第一个实体销售中心\r\n开设网络销售中心（可选）\r\n设置工厂选项\r\n工厂固定产能投资\r\n季度 2： 进行市场测试。\r\n\r\n向管理团队发行价值一百万的股票\r\n人力资源\r\n确定销售人员的薪酬组合\r\n确定工厂工人的薪酬组合\r\n实体销售中心管理\r\n雇佣销售人员 - 分配其负责的目标细分市场\r\n开设新的实体销售中心（可选）\r\n雇佣并分配网络销售中心员工（如果新开设了网络销售中心）\r\n选择提升网站流量及销量的策略（如果开设了网络销售中心）\r\n品牌设计\r\n修改用于市场测试的品牌（可选）\r\n广告\r\n广告设计\r\n媒体选择和广告投放频率\r\n定价\r\n选择进行销售的品牌\r\n设定品牌价格 - 价格促销\r\n设定销售优先级别\r\n生产制造\r\n估计销售人员人均需求量\r\n安排日常生产\r\n进行工厂模拟\r\n工厂固定产能投资（可选）\r\n购买市场调研报告\r\n预算财会报表\r\n预测现金流\r\n季度 3： 灵活调整策略并进行市场扩张。\r\n\r\n评估财务业绩\r\n盈利能力分析\r\n评估市场份额\r\n客户意见 - 品牌设计、价格、及广告\r\n市场需求量 - 公司、品牌、及销售人员人均\r\n向管理团队发行价值一百万的股票\r\n按需要调整经营策略，继续进行市场测试\r\n品牌设计\r\n品牌价格、价格促销、及销售优先级别\r\n销售人员数量和分配\r\n网络营销计划\r\n薪酬组合\r\n广告设计\r\n媒体选择和广告投放频率\r\n实体销售中心管理\r\n开设新的实体销售中心（可选）\r\n规划本季度生产\r\n查看上季度的生产结果\r\n预测各品牌的需求量\r\n安排各品牌的日常生产\r\n进行工厂模拟\r\n工厂固定产能投资（可选）\r\n购买市场调研报告\r\n预算财会报表\r\n预测现金流\r\n季度 4： 对公司未来的投资。\r\n\r\n评估财务业绩\r\n运用作业成本核算法（ABC）来评估各个品牌和实体销售中心的盈利能力\r\n评估市场份额\r\n客户意见 - 品牌设计、价格、及广告\r\n市场需求量 - 公司、品牌、及销售人员人均\r\n竞争对手的经营计划 - 其目标细分市场和营销计划\r\n进行需求量分析以预测品牌、价格、广告、及销售团队的需求弹性\r\n规划为期一年的商业策略\r\n目标 - 营销、财务、及公司所有权结构\r\n营销策略\r\n生产策略\r\n财务策略\r\n预算现金流表及其它财务表报\r\n需筹措的股本资金总额，股票发行量，和预计发行价格\r\n向风险投资者陈述您的商业计划（请向教员或者 Marketplace 处理中心咨询详情）\r\n考虑借入常规银行贷款\r\n进行研发投资以获取新的产品组件\r\n进行商业计划的全球布局\r\n按需调整营销计划\r\n品牌设计\r\n品牌价格、价格促销、及销售优先级别\r\n销售人员数量和分配\r\n网络营销计划\r\n薪酬组合\r\n广告设计\r\n媒体选择和广告投放频率\r\n销售渠道 - 区域市场扩张\r\n开设（多个）新的实体销售中心\r\n按需修改生产决策 - 提高生产的规模经济性\r\n预测各品牌的需求量\r\n安排各品牌的日常生产\r\n进行工厂模拟\r\n工厂固定产能投资\r\n购买市场调研报告\r\n预算财会报表\r\n预测现金流\r\n制定经营计划\r\n季度 5： 商业策略扩张。\r\n\r\n评估团队表现 - 自我评价、团队贡献、及有待改进的地方\r\n评估业绩 - 财务、市场、及竞争力\r\n管理决策\r\n未预料到的竞争活动\r\n资金实力\r\n灵活地调整策略\r\n营销 - 逐步完善经营计划\r\n回顾市场调研报告\r\n运用作业成本核算法（ABC）来评估各个品牌和实体销售中心的盈利能力\r\n进行需求量分析以预测品牌、价格、广告、及销售团队的需求弹性\r\n品牌设计 - 提升需求量\r\n品牌评分\r\n不断升级产品组件（功能特性研发，R&D）\r\n引入整合了新研发组件的品牌\r\n尝试技术授权（出售或者购买）和战略联盟\r\n人力资源 - 员工激励\r\n薪酬组合\r\n销售渠道 - 区域市场扩张\r\n开设（多个）新的实体销售中心\r\n扩大销售团队\r\n重新分配销售人员 - 侧重于盈利性最高的（若干）细分市场\r\n网络营销计划 - 扩大销量并提高消费者满意度\r\n广告 - 提升需求量\r\n广告评分\r\n媒体选择和广告投放频率\r\n品牌定价- 提升需求量\r\n品牌价格、价格促销、及销售优先级别\r\n按需修改生产决策 - 提高生产的规模经济性\r\n预测各品牌的需求量\r\n安排各品牌的日常生产\r\n进行工厂模拟\r\n工厂固定产能投资\r\n购买市场调研报告\r\n预算财会报表\r\n预测现金流\r\n制定经营计划\r\n季度 6： 完善商业策略。\r\n\r\n评估业绩 - 财务、市场、及竞争力\r\n管理决策\r\n未预料到的竞争活动\r\n资金实力\r\n灵活地调整策略\r\n营销 - 逐步完善经营计划\r\n运用作业成本核算法（ABC）来评估各个品牌和实体销售中心的盈利能力\r\n进行需求量分析以预测品牌、价格、广告、及销售团队的需求弹性\r\n按需调整营销计划\r\n不断升级产品组件（功能特性研发）\r\n品牌价格、价格促销、及销售优先级别\r\n销售人员数量和分配\r\n网络营销计划\r\n薪酬组合\r\n广告设计\r\n媒体选择和广告投放频率\r\n生产制造\r\n固定产能\r\n生产选项\r\n购买市场调研报告\r\n估算现金流\r\n制定经营计划\r\n季度七： 向董事会汇报工作。\r\n\r\n评估团队表现 - 自我评价、团队贡献、及有待改进的地方\r\n评估财务业绩\r\n盈利能力分析\r\n评估市场份额\r\n客户意见 - 品牌设计、价格、及广告\r\n市场需求量 - 公司、品牌、及销售人员人均\r\n竞争对手的经营计划 - 其目标细分市场和营销计划\r\n向董事会汇报自商业计划陈述以来的公司营运\r\n市场和财务业绩\r\n公司价值\r\n实际营运与商业计划的偏离，并说明原因\r\n汇报未来计划');
INSERT INTO `help_document` VALUES ('4', '队员操作', '管理团队的功能职责', '您在创业阶段的第一项任务就是组织您的管理团队，并安排每个人的职责。 这个任务相当重要，因为 Marketplace 商业系统的工作量不是单单一个人能够完成的。\r\n\r\n让每个队员都参与公司全方位的管理并不是有效率的做法。 基本上，团队的组织和管理决定了团队效率以及团队契合度。\r\n\r\n队员们可以轮换其副总裁职位，这样每个人都可以获得在多个领域的决策经验。 这样做的好处在于能够培养参与者的全面决策观。 同样也有助于所有队员对公司经营有一个共同的框架概念。\r\n\r\n功能角色\r\n\r\n分配团队职责的方式有很多种。 以下有七个主要的职责类别：\r\n\r\n总裁 - 总体领导： 协调所有职能部门，参与所有领域的决策，设定公司目标，组织分配工作，管理日程安排及主持会议，监控总体表现（平衡计分卡），并带领团队成为业内领先的公司。\r\n\r\n营销副总裁： 通过品牌设计、定价、广告设计、和媒体投放来满足客户需求。\r\n\r\n销售副总裁： 主导销售（选择新建销售中心的地点和时机），选择网络销售中心的地点和资金来源，选择提升网站访问量和网络销售效率的措施，以及管理销售团队（总人数、销售目标、员工培训和激励计划）。\r\n\r\n生产副总裁： 规划产能，安排工厂生产，改进产品质量。\r\n\r\n财会副总裁： 汇总财务业绩，管理现金流，分析利润及资本结构。\r\n\r\n市场调研副总裁： 分析市场及公司营运数据。\r\n\r\n人力资源副总裁： 调整薪酬组合，提高工人生产效率。\r\n\r\n对职责的划分可以多种多样。 例如，在五人团队中，总裁可以兼任六个副总裁职位之一，财务副总裁可以兼任人力资源副总裁一职。\r\n\r\n您可以在合适的时机轮换总裁这一角色，以便所有队员都能获得一定的领导经验。 例如，在创业阶段、准备商业计划及与风险投资者协商阶段、企业成长期阶段、向风险投资者进行最终报告阶段，总裁一职可由不同的队员担任。 这种管理结构最适合六人队伍。\r\n\r\n团队职责的划分应视队伍人数而定。 对于四人队伍，可以考虑让总裁兼任某一副总裁职位，合并财务副总裁职位和人力资源副总裁职位，以及合并营销副总裁职位和市场调研副总裁职位。\r\n\r\n也可以按照品牌管理的模式来组织您的队伍。 在此种模式下，同样也应当设立总裁和副总裁职位。 您可以为每个品牌或者每个目标细分市场设置一个副总裁职位。 每个队员除了负责其职位职责外，还需负责品牌或者细分市场的市场调研、营销、及销售。\r\n\r\n这种模式的好处在于每个队员都必须全方位地了解其负责的细分市场，并规划出一套行之有效的商业策略。 因而队员将获得更加全面和广泛的商业经验。 不利之处在于，同个公司的品牌管理者之间将相互竞争公司资源和公司重心。\r\n\r\n品牌管理模式还可衍生出区域管理模式。 在此种模式下，同样也应当设立总裁和副总裁职位。 队员将分任不同城市管理者的角色，每个队员都必须全方位地了解其负责的城市，并规划出一套行之有效的商业策略。\r\n\r\n但记住，这些都是只是参考建议而已。 在工作量平均的基础上，您完全可以根据个人偏好、经验、及工作量来选择是否采取这些建议。 同样，如果有冲突发生，或工作量分配不均，请考虑立即重新分配职责。\r\n\r\n团队管理\r\n\r\n在团队管理方面，请考虑以下几点。 首先，如果缺乏强有力的领导、共同的目标、愿意妥协的态度、敬业感、以及乐意分担的心态，很少有新企业能够获得成功。\r\n\r\n您需要在极短的时间内组织好您的公司，并使之成为一家强力高效的企业。 您一个人不可能达成这一目标。 您必须学会团队协作，让每个人都朝着同一个目标努力。\r\n\r\n第二，内部冲突将无法避免。 这是因为您必须做出一系列的艰难决策，而这些决策又充满了不确定性及风险性。 您永远都不会有足够的信息和资源来做您想做的事情。\r\n\r\n此外，队员可能会在策略、计划执行、及资源管理等方面持有不同的意见。 解决冲突的能力及方式可能会极大地影响公司成功与否。\r\n\r\n最后，时间管理在 Marketplace 中也是影响成功的关键。 相对于任务量来说，时间总是不够用的。 而许多团队都将时间过多地用在了团队会议上。\r\n\r\n建议每次团队会议都由总裁主持，以确保团队讨论聚焦在当前的商业营运上。 应当在每次团队会议之前制定好议程及时间表。 每次会议不宜超过两小时。 漫长拖沓的会议不仅没有效率，还容易造成无所成事的挫折感。 队员在结束会议之前应当拿出一套各自的执行方案。 在下次会议开始时应当对这套方案进行回顾总结。\r\n\r\n为了使团队会议顺利进行，每个队员都必须在会前做好准备。 包括了解在自己职责范围内的各种其前因后果、问题、以及各种权衡。\r\n\r\n当进行团队会议时，每个队员都应当推荐一套执行方案。 准备好讨论各种可能的决策选择，并灵活地处理团队的最终决策。');
INSERT INTO `help_document` VALUES ('5', '队员操作', '公司名称', '选择公司名称 先确定您希望树立什么样的公司形象。 需要谨记的是，您的公司名称对终端用户、竞争对手、以及潜在投资者而言意味着什么。\r\n\r\n好的名称能够给对方留下一个好的第一印象。 您可以通过它来影响那些不了解您的人，及其对您的预期。\r\n\r\n然而，公司形象和公司名称的含义最终将由您的竞争行为及商业风格来决定。 毕竟，IBM 三个字母原本没有多大的价值，但是如今这三个字母代表了一个高专业度、精益求精的集体。');
INSERT INTO `help_document` VALUES ('6', '队员操作', '公司目标及策略方向', '您必须确定公司目标和目标市场的优先级别，以及公司的宗旨和策略方向。\r\n\r\n在起始阶段，最重要的决策就是确定公司目标及策略方向。 也就是说，您必须选择未来一到两年公司的经营之路。\r\n\r\n您将在有利于个人和公司效率的原则下，按照这条道路的方向而努力。 然而，在这条路上走得越远，就越难改变方向。 您所有的投资，无论是技术还是资金，都将被投入到越来越窄、越来越集中的一套决策当中。\r\n\r\n您需要完成以下方面的决策：\r\n\r\n公司目标：您需要决定什么对公司最重要：公司整体的盈利能力（由留存收益来衡量）、管理团队的投资收益、或是销售量。\r\n\r\n目标市场：公司产品定位的目标细分市场，以及能有助您进入这些市场的营销活动。\r\n\r\n宗旨：公司的经营宗旨/ 目标。记住，消费者、投资者、甚至竞争对手，都可能会阅读您的公司宗旨。\r\n\r\n策略方向：公司的未来方向。 您在市场份额、区域市场、竞争立场、及竞争力等方面的未来目标是什么？\r\n\r\n在第四季度之前，应该把您的目标和策略方向看做是尝试性的。 在市场测试阶段之后，您可以根据获得的市场经验来自由修改这些初始决定。 然而， 在第四季度结束之前，您应当有明确的策略方向。 若仍没有，您很可能将无法赶上领先的竞争对手。\r\n\r\n每个季度参赛者都可以在所有的细分市场上进行销售。实际上，他们在多数季度中都是这样做的。 即使您没有将某些细分市场纳入目标，这些细分市场上的消费者仍有可能青睐并购买您的电脑产品。 在任何细分市场上的销售都将提高您的收入，同样也将对平衡计分卡项目产生正面影响，比如财务业绩。 参赛者必须确定主要及次要目标市场，因为平衡计分卡将据此来衡量他们的营销表现。 如果某支队伍的主要销售量来自其主要市场，第二高的销售量来自其次要市场，则其“营销效率”一项的得分将很不错。 也就是说，他们的品牌设计和广告设计都符合了市场需求，因而达到了其营销目标。 如果他们销量的大部分来自非目标市场，则其“营销效率”得分将较低，因为他们没能成功地吸引到目标市场的消费者。 平衡计分卡评估了公司多方面的表现，是对公司营运的整体衡量，而非只衡量财务表现。 参赛队员可以在实践教学系统的平衡计分卡部分查看其计算方法，另外，教员参考中对此也有记述。');
INSERT INTO `help_document` VALUES ('7', '队员操作', '执行简报', '董事会主席（教员）将周期性地与每个团队进行会谈。 第一次会谈将在实践教学系统的第一或第二季度进行。 之后，管理团队将在每次提交决策前与董事会主席进行会谈。\r\n\r\n在执行简报会议中，管理团队需要回顾：\r\n\r\n业绩\r\n市场分析\r\n当前决策\r\n未来决策\r\n管理团队的每个成员都必须准备好回答有关决策计划的分析和逻辑方面的问题。\r\n\r\n以下列出了每个季度的会谈中可能涉及的问题：\r\n\r\n第一季度\r\n\r\n主题： 公司简介及初期目标\r\n\r\n所有队员都应当：\r\n\r\n解释您选择该副总裁职位的原因，以及为什么您能胜任该职位。\r\n回顾队员选择，评估其之间的契合程度，及其是否有助于公司获胜。\r\n您的公司想树立一个什么样的形象？ 在经营公司一年半之后，您希望竞争对手能如何评价您？\r\n给公司命名，并解释选择此名称的原因。\r\n总裁：\r\n\r\n设立一个明确的、可量化的公司目标，并解释选择此目标的原因。\r\n描述管理团队制定的公司战略方向，并解释选择此方向的原因。\r\n市场调研：\r\n\r\n列举并描述各个细分市场（谈论消费者需求）。\r\n估计各个细分市场的潜在机会和需求量。 解释您的这些看法。\r\n估计各个城市的潜在机会和需求量。 解释您的这些看法。\r\n确定进行市场测试的城市。 解释您的这些选择。\r\n营销：\r\n\r\n规划开发市场的初始策略（例如，细分市场及区域市场的进入次序） 证明这些策略的可行性。\r\n描述您将为所选细分市场设计的品牌。 解释为什么选择这些功能特性。\r\n销售：\r\n\r\n描述您预计的销售策略。\r\n规划开发市场的初始策略（例如，细分市场及区域市场的进入次序） 证明这些策略的可行性。\r\n人力资源：\r\n\r\n工厂工人可由生产副总裁负责，销售人员可由销售副总裁负责。\r\n列出并描述管理团队成员的各项职责。\r\n描述团队规则及公司文化。\r\n调查提供了有关销售人员和工厂工人薪酬组合的哪些信息？ 您应当如何制定有关人力资源管理的决策？\r\n生产：\r\n\r\n描述您有关产能的决策，并证明其可行性。\r\n财务：\r\n\r\n描述当前的财务状况。\r\n描述您将如在经营初期融资，以应付公司在投资及其它方面支出。\r\n第二季度\r\n\r\n主题： 进入市场！\r\n\r\n总裁：\r\n\r\n您如何迈出通向公司目标的第一步？\r\n您将如何完成市场测试这一阶段？\r\n你们将如何作为一个团队来运作公司？\r\n市场调研：\r\n\r\n按细分市场来估算各个品牌的市场需求量。 解释您的估算过程。\r\n您选择了哪些城市来进行市场测试？\r\n请说明您为测试市场所制定的市场调研计划。\r\n营销：\r\n\r\n为各个品牌制定营销策略（也称营销组合）。 证明您的决策的可行性。\r\n描述您将要生产的新品牌。 解释为什么选择这些功能特性。\r\n销售：\r\n\r\n为测试市场制定一个明确的、可量化的目标。\r\n描述您的销售策略。\r\n您是否计划为第三季度开设新的实体销售中心？ 如果是的话，为什么呢？\r\n人力资源：\r\n\r\n工厂工人可由生产副总裁负责，销售人员可由销售副总裁负责。\r\n描述您在员工薪酬组合方面做出的变动，并证明其合理性。\r\n解释这些变动与公司宗旨和策略上的一致性。\r\n生产：\r\n\r\n描述您有关工厂和产能的决策，并证明其可行性。\r\n描述您的工厂生产计划，并证明其可行性。 生产模拟的结果如何？\r\n财务：\r\n\r\n为市场测试制定一个明确的、可衡量的财务目标。\r\n描述当前的财务状况。 为当前季度准备三大预算报表：现金流表、资产负债表、和损益表。\r\n证明您的定价策略的可行性。 解释您在设定销售价格的时候是否考虑到了所有的公司支出。 按比例将每项支出分摊到到所售产品上。\r\n第三季度\r\n\r\n主题： 结果出来了！ 现在怎么办？\r\n\r\n总裁：\r\n\r\n实际业绩与公司目标相比如何？\r\n您如何看待竞争对手？\r\n您打算调整公司目标和/ 或策略吗？\r\n您想在这个季度达成哪些目标？\r\n市场调研：\r\n\r\n市场对您的品牌、广告、和价格的反应如何？ 和竞争对手比起来您的表现如何？\r\n您对销售中心的安排如何影响了市场需求？\r\n您的广告及品牌设计如何影响了市场需求？\r\n按细分市场来重新估算各个品牌的市场需求量。\r\n请说明您的市场调研计划。\r\n营销：\r\n\r\n您的实际业绩与商业目标相比如何？\r\n您将如何根据上季度的市场测试结果来调整当前季度的目标和策略？\r\n为各个品牌制定营销策略（也称营销组合）。\r\n描述您将要生产的新品牌。 解释为什么选择这些功能特性。\r\n估算广告对销售和财务的影响（广告支出是否物有所值）。 与竞争对手进行比较。\r\n销售：\r\n\r\n与市场目标相比，您的实际业绩如何？\r\n在各个进行测试的市场，销售人员的人均需求量是多少？ 与竞争对手相比如何？ 什么原因造成了这种差异？\r\n您是否根据您的市场经验调整了公司目标和商业策略？\r\n您在各个市场的地位如何？ 如何去改善？\r\n描述您在各个区域市场的销售策略。\r\n描述有关新增销售中心的决策，并证明其可行性。\r\n人力资源：\r\n\r\n工厂工人可由生产副总裁负责，销售人员可由销售副总裁负责。\r\n描述人力资源管理决策将如何影响销售人员和工厂工人的效率。\r\n描述相对于竞争对手来说，公司人力资源决策的优劣势。\r\n描述您将如何调整公司的人力资源决策和策略。 分析这些调整将如何影响公司的其它方面。\r\n生产：\r\n\r\n回顾上季度的工厂运行情况。 生产了多少，销售了多少？ 有没有未能满足的市场需求？ 当前库存量如何？\r\n您将如何改善当前季度的工厂生产计划？\r\n财务：\r\n\r\n与财务目标相比，您的实际业绩如何？ 与业内其他公司相比如何？\r\n您是否打算根据上季度的市场测试结果来调整当前季度的目标和策略？\r\n描述当前的财务状况。 该状况将如何影响您达成公司目标、营销目标和/ 或财务目标？\r\n证明您的定价策略的可行性。 运用作业成本核算法来评估各个品牌及城市对公司利润率的贡献。 解释您在设定销售价格的时候是否考虑到了所有的公司支出。 按比例将每项支出分摊到销售中去。\r\n第四季度\r\n\r\n主题： 您想获得 4,000,000 资金。 向风险投资者陈述您的商业计划（请向教员或者 Marketplace 处理中心咨询详情）。\r\n\r\n所有队员都应当：\r\n\r\n为之后的季度准备好经营计划。\r\n为之后的季度准备好现金流预算报表。\r\n描述您的研发决策，并证明其可行性。\r\n第五季度\r\n\r\n主题： 实际营运与商业计划的不同之处。\r\n\r\n总裁：\r\n\r\n您的市场地位如何？\r\n竞争对手的营运状况如何？\r\n市场有何新的发展趋势？ 这将对您有什么影响？\r\n您是否达成了商业计划中的目标？ 是否有所偏离？ 如果是的话，为什么呢？\r\n您如何评价整个团队的表现？ 您们的优势和劣势是什么？ 要成为更高效的团队，应该从哪些方面进行改进？\r\n市场调研：\r\n\r\n市场上是否出现了会对您造成影响的变化？\r\n市场对您的产品、广告和价格有何反应？ 和竞争对手比起来您的表现如何？\r\n您对销售中心的安排如何影响了市场需求？\r\n您的广告和品牌设计对市场需求有何影响？\r\n按细分市场估算每个品牌的市场需求量。\r\n您的市场调研计划是什么？\r\n营销：\r\n\r\n您是否达成了预定的市场目标？\r\n您是否打算根据上季度的竞争形势和消费者的购买倾向来调整当前季度的目标和策略？ 如果是的话，您预期的结果是什么？\r\n为各个品牌制定营销策略（也称营销组合）。\r\n描述您的研发决策，并证明其可行性。\r\n描述您将要生产的新品牌。 解释为什么选择这些功能特性。\r\n估算广告对销售和财务的影响（广告支出是否物有所值）。 与竞争对手进行比较。\r\n销售：\r\n\r\n与市场目标相比，您的实际业绩如何？ 将销售人员人均需求量与竞争对手的相比较。 谁领先了，为什么？\r\n您是否根据您的市场经验调整了适用于不同区域市场的公司目标和商业策略？\r\n描述您最近的经营计划，以及该计划对您达成目标的帮助或阻碍。\r\n人力资源：\r\n\r\n工厂工人可由生产副总裁负责，销售人员可由销售副总裁负责。\r\n描述人力资源管理决策将如何影响销售人员和工厂工人的效率。 描述相对于竞争对手来说，公司人力资源决策的优劣势。\r\n描述您将如何调整公司的人力资源决策和策略。 分析这些调整将如何影响公司的其它方面。\r\n描述实际策略与经营计划的不同之处，并证明其合理性。\r\n生产：\r\n\r\n回顾上季度的工厂运行情况。\r\n您将如何改善当前季度的工厂生产计划？\r\n财务：\r\n\r\n与财务目标相比，您的实际业绩如何？ 与业内其他公司相比如何？\r\n描述当前的财务状况。 这对您达成营销目标和财务目标有何影响？\r\n评估各个品牌及实体销售中心的财务表现。 通过作业成本法，分摊相关成本和收入。 哪些品牌（实体销售中心）盈利了，哪些亏损了？\r\n根据当前的财务表现，您当如何调整营销策略？\r\n第六季度\r\n\r\n主题： 为全面进军市场做准备。\r\n\r\n总裁：\r\n\r\n您的市场地位如何？\r\n与预定目标相比，您的实际业绩如何？\r\n竞争对手有让您出乎意料的地方吗？ 消费者呢？\r\n您是否达成了商业计划中的目标？ 是否有所偏离？ 如果是的话，为什么呢？\r\n市场调研：\r\n\r\n市场上是否出现了会对您造成影响的变化？\r\n您是否能量化品牌设计、价格、广告、及有关实体销售中心的决策对消费者需求的影响？\r\n按细分市场估算每个品牌的市场需求量。\r\n您的市场调研计划是什么？\r\n营销：\r\n\r\n您是否达成了预定的市场目标？\r\n您如何确保达成公司的年度目标？\r\n为各个品牌制定营销策略（也称营销组合）。 这些策略将如何配合您的整体布局？\r\n描述您将要生产的新品牌。 说明决策的可行性。\r\n估算广告对销售和财务的影响（广告支出是否物有所值）。 与竞争对手进行比较。\r\n销售：\r\n\r\n与市场目标相比，您的实际业绩如何？\r\n为各个区域市场制定营销策略（也称营销组合）。 这些策略将如何配合您的整体布局？\r\n您将如何赢得其他队员的支持以达成年度销售目标？\r\n人力资源：\r\n\r\n工厂工人可由生产副总裁负责，销售人员可由销售副总裁负责。\r\n描述人力资源管理决策将如何影响销售人员和工厂工人的效率。\r\n描述您将如何调整公司的人力资源决策和策略。 分析这些调整将如何影响公司的其它方面。\r\n描述实际策略与经营计划的不同之处，并证明其合理性。\r\n生产：\r\n\r\n回顾上季度的工厂运行情况。\r\n您将如何改善当前季度的工厂生产计划？\r\n在第六季度的全面进军中，您该如何安排工厂生产？\r\n财务：\r\n\r\n与财务目标相比，您的实际业绩如何？ 与业内其他公司相比如何？\r\n描述当前的财务状况。 该状况将如何影响您达成营销目标和/ 或财务目标？\r\n评估各个品牌及实体销售中心的财务表现。 通过作业成本法，分摊相关成本和收入。 哪些品牌（实体销售中心）盈利了，哪些亏损了？\r\n根据当前的财务表现，您当如何调整商业策略？\r\n第七季度\r\n\r\n主题： 业绩评定。\r\n\r\n所有队员都应当：\r\n\r\n回顾平衡计分卡。\r\n和竞争对手相比，您公司的表现如何？\r\n您是否达成了目标？\r\n您本应该采取哪些不同的策略？\r\n准备一份有关公司各方面的最终报告，并向投资者汇报。');
INSERT INTO `help_document` VALUES ('8', '市场调研', '初期调研：市场机会分析(MOA)', '市场机会分析法 （Market Opportunity Analysis, 或者 MOA）是识别及评估市场机会的方法之一，基于对以下几个方面的分析：\r\n\r\n市场结构\r\n市场需求\r\n竞争对手的优劣势\r\n市场机会分析是进行策略规划和抓住市场机会的基础。 在行业发展的当前阶段，您无法准确地评估竞争对手。 像您的公司一样，他们都是没有历史记录的新公司。\r\n\r\n在大概四个季度之后，您应当能够较为准确地评估他们的优劣势，并将这些信息运用到决策和经营计划的制定当中。 就目前而言，您必须将注意力放在终端用户上。 他们其实才是您真正的老板，而您必须想方设法让他们满意。\r\n\r\n您应当<br />从分析潜在用户入手来进行市场机会分析。 您所获得的市场调研数据来自真实世界。 为了方便使用，我们对这些真实数据进行了简化。 由于本实践教学系统中的市场模型建立在这些数据之上，您很有必要对该数据进行分析。\r\n\r\n在进行 MOA 分析之前，请先阅读以下的相关章节：\r\n\r\n可获得的信息种类 \r\n解析问卷调查数据 \r\n了解客户认定的产品价值');
INSERT INTO `help_document` VALUES ('9', '市场调研', '可用市场信息的类型', '等待内容');
INSERT INTO `help_document` VALUES ('10', '市场调研', '解析调研数据', '等待内容');
INSERT INTO `help_document` VALUES ('11', '市场调研', '了解客户认定的产品价值', '等待内容');
INSERT INTO `help_document` VALUES ('12', '市场调研', '测试市场：反馈及控制', '等待内容');
INSERT INTO `help_document` VALUES ('13', '市场调研', '终端用户反馈', '等待内容');
INSERT INTO `help_document` VALUES ('14', '市场调研', '竞争基准', '等待内容');
INSERT INTO `help_document` VALUES ('15', '品牌管理', '品牌管理决策', '等待内容');
INSERT INTO `help_document` VALUES ('16', '品牌管理', '品牌设计', '等待内容');
INSERT INTO `help_document` VALUES ('17', '品牌管理', '匹配客户利益和产品功能特性', '等待内容');
INSERT INTO `help_document` VALUES ('18', '品牌管理', '考虑市场可接受价格', '等待内容');
INSERT INTO `help_document` VALUES ('19', '品牌管理', '测试市场', '等待内容');
INSERT INTO `help_document` VALUES ('20', '品牌管理', '品牌名称', '等待内容');
INSERT INTO `help_document` VALUES ('21', '品牌管理', '研发', '等待内容');
INSERT INTO `help_document` VALUES ('22', '品牌管理', '研发授权', '等待内容');
INSERT INTO `help_document` VALUES ('23', '广告', '指定广告方案', '等待内容');
INSERT INTO `help_document` VALUES ('24', '广告', '广告设计', '等待内容');
INSERT INTO `help_document` VALUES ('25', '广告', '虚假广告', '等待内容');
INSERT INTO `help_document` VALUES ('26', '广告', '媒体投放', '等待内容');
INSERT INTO `help_document` VALUES ('27', '广告', '广告效果', '等待内容');
INSERT INTO `help_document` VALUES ('28', '实体销售中心', '区域拓展', '等待内容');
INSERT INTO `help_document` VALUES ('29', '实体销售中心', '实体销售中心管理', '等待内容');
INSERT INTO `help_document` VALUES ('30', '实体销售中心', '品牌选择', '等待内容');
INSERT INTO `help_document` VALUES ('31', '实体销售中心', '品牌价格', '等待内容');
INSERT INTO `help_document` VALUES ('32', '实体销售中心', '生产及经营成本', '等待内容');
INSERT INTO `help_document` VALUES ('33', '实体销售中心', '价格弹性', '等待内容');
INSERT INTO `help_document` VALUES ('34', '实体销售中心', '有竞争力的价格', '等待内容');
INSERT INTO `help_document` VALUES ('35', '实体销售中心', '邮寄返款', '等待内容');
INSERT INTO `help_document` VALUES ('36', '实体销售中心', '销售有限级别', '等待内容');
INSERT INTO `help_document` VALUES ('37', '实体销售中心', '销售团队管理', '等待内容');
INSERT INTO `help_document` VALUES ('38', '实体销售中心', '销售人员数量', '等待内容');
INSERT INTO `help_document` VALUES ('39', '实体销售中心', '营销专业领域', '等待内容');
INSERT INTO `help_document` VALUES ('40', '实体销售中心', '网络销售中心', '等待内容');
INSERT INTO `help_document` VALUES ('41', '人力资源管理', '人力资源管理', '等待内容');
INSERT INTO `help_document` VALUES ('42', '生产制造', '工厂所在地', '等待内容');
INSERT INTO `help_document` VALUES ('43', '生产制造', '工厂固定产能', '等待内容');
INSERT INTO `help_document` VALUES ('44', '生产制造', '产能决策中的财务权衡', '等待内容');
INSERT INTO `help_document` VALUES ('45', '生产制造', '规划生产产能', '等待内容');
INSERT INTO `help_document` VALUES ('46', '生产制造', '精益生产', '等待内容');
INSERT INTO `help_document` VALUES ('47', '生产制造', '需求预测', '等待内容');
INSERT INTO `help_document` VALUES ('48', '生产制造', '选择品牌', '等待内容');
INSERT INTO `help_document` VALUES ('49', '生产制造', '最大库存量', '等待内容');
INSERT INTO `help_document` VALUES ('50', '生产制造', '无用库存', '等待内容');
INSERT INTO `help_document` VALUES ('51', '生产制造', '工厂运行产能', '等待内容');
INSERT INTO `help_document` VALUES ('52', '会计', '财务会计报表', '等待内容');
INSERT INTO `help_document` VALUES ('53', '会计', '预算财务报表', '等待内容');
INSERT INTO `help_document` VALUES ('54', '会计', '作业成本核算法(ABC)', '等待内容');
INSERT INTO `help_document` VALUES ('56', '会计', '财务规划及分析', '等待内容');
INSERT INTO `help_document` VALUES ('57', '会计', '获取利润', '等待内容');
INSERT INTO `help_document` VALUES ('58', '会计', '破产', '等待内容');
INSERT INTO `help_document` VALUES ('59', '会计', '独立审计师', '等待内容');
INSERT INTO `help_document` VALUES ('60', '财务', '融资渠道', '等待内容');
INSERT INTO `help_document` VALUES ('61', '财务', '股本金', '等待内容');
INSERT INTO `help_document` VALUES ('62', '财务', '债务融资', '等待内容');
INSERT INTO `help_document` VALUES ('63', '财务', '三个月定期存款', '等待内容');
INSERT INTO `help_document` VALUES ('64', '财务', '折旧', '等待内容');
INSERT INTO `help_document` VALUES ('65', '商业计划及经营计划制定指导', '如何进行', '等待内容');
INSERT INTO `help_document` VALUES ('66', '商业计划及经营计划制定指导', '制定经营计划细节', '等待内容');
INSERT INTO `help_document` VALUES ('67', '术语表', '品牌组件', '等待内容');
INSERT INTO `help_document` VALUES ('68', '术语表', '重大错误', '等待内容');
INSERT INTO `help_document` VALUES ('69', '商业计划的预算财会报表制定指导', '制定经营计划细节', '等待内容');

-- ----------------------------
-- Table structure for hire_people
-- ----------------------------
DROP TABLE IF EXISTS `hire_people`;
CREATE TABLE `hire_people` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) DEFAULT NULL,
  `market_id` int(11) DEFAULT NULL,
  `quarter` int(255) DEFAULT NULL,
  `saleman` int(255) DEFAULT NULL,
  `after_sale` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hire_people
-- ----------------------------
INSERT INTO `hire_people` VALUES ('20', '19', '21', '1', '0', '0');
INSERT INTO `hire_people` VALUES ('21', '19', '21', '2', '3', '2');
INSERT INTO `hire_people` VALUES ('22', '19', '21', '3', '0', '0');
INSERT INTO `hire_people` VALUES ('23', '19', '21', '4', '0', '0');
INSERT INTO `hire_people` VALUES ('24', '19', '21', '5', '0', '0');
INSERT INTO `hire_people` VALUES ('25', '19', '22', '1', '0', '0');
INSERT INTO `hire_people` VALUES ('26', '19', '22', '2', '4', '1');
INSERT INTO `hire_people` VALUES ('27', '19', '22', '3', '0', '0');
INSERT INTO `hire_people` VALUES ('28', '19', '22', '4', '0', '0');
INSERT INTO `hire_people` VALUES ('29', '19', '22', '5', '0', '0');
INSERT INTO `hire_people` VALUES ('30', '19', '23', '1', '0', '0');
INSERT INTO `hire_people` VALUES ('31', '19', '23', '2', '2', '2');
INSERT INTO `hire_people` VALUES ('32', '19', '23', '3', '0', '0');
INSERT INTO `hire_people` VALUES ('33', '19', '23', '4', '0', '0');
INSERT INTO `hire_people` VALUES ('34', '19', '23', '5', '0', '0');
INSERT INTO `hire_people` VALUES ('35', '20', '22', '1', '0', '0');
INSERT INTO `hire_people` VALUES ('36', '20', '22', '2', '3', '3');
INSERT INTO `hire_people` VALUES ('37', '20', '22', '3', '0', '0');
INSERT INTO `hire_people` VALUES ('38', '20', '22', '4', '0', '0');
INSERT INTO `hire_people` VALUES ('39', '20', '22', '5', '0', '0');
INSERT INTO `hire_people` VALUES ('40', '20', '23', '1', '0', '0');
INSERT INTO `hire_people` VALUES ('41', '20', '23', '2', '4', '4');
INSERT INTO `hire_people` VALUES ('42', '20', '23', '3', '0', '0');
INSERT INTO `hire_people` VALUES ('43', '20', '23', '4', '0', '0');
INSERT INTO `hire_people` VALUES ('44', '20', '23', '5', '0', '0');
INSERT INTO `hire_people` VALUES ('45', '21', '23', '1', '0', '0');
INSERT INTO `hire_people` VALUES ('46', '21', '23', '2', '5', '2');
INSERT INTO `hire_people` VALUES ('47', '21', '23', '3', '0', '0');
INSERT INTO `hire_people` VALUES ('48', '21', '23', '4', '0', '0');
INSERT INTO `hire_people` VALUES ('49', '21', '23', '5', '0', '0');
INSERT INTO `hire_people` VALUES ('50', '21', '24', '1', '0', '0');
INSERT INTO `hire_people` VALUES ('51', '21', '24', '2', '1', '4');
INSERT INTO `hire_people` VALUES ('52', '21', '24', '3', '0', '0');
INSERT INTO `hire_people` VALUES ('53', '21', '24', '4', '0', '0');
INSERT INTO `hire_people` VALUES ('54', '21', '24', '5', '0', '0');
INSERT INTO `hire_people` VALUES ('55', '22', '22', '1', '0', '0');
INSERT INTO `hire_people` VALUES ('56', '22', '22', '2', '3', '4');
INSERT INTO `hire_people` VALUES ('57', '22', '22', '3', '0', '0');
INSERT INTO `hire_people` VALUES ('58', '22', '22', '4', '0', '0');
INSERT INTO `hire_people` VALUES ('59', '22', '22', '5', '0', '0');

-- ----------------------------
-- Table structure for hire_people_online
-- ----------------------------
DROP TABLE IF EXISTS `hire_people_online`;
CREATE TABLE `hire_people_online` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `market_id` int(11) DEFAULT NULL,
  `quarter` int(11) NOT NULL,
  `saleman` int(11) NOT NULL,
  `after_sale` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hire_people_online
-- ----------------------------
INSERT INTO `hire_people_online` VALUES ('1', '19', '1', '2', '2', '3');
INSERT INTO `hire_people_online` VALUES ('2', '19', '1', '3', '0', '0');
INSERT INTO `hire_people_online` VALUES ('3', '19', '1', '4', '0', '0');
INSERT INTO `hire_people_online` VALUES ('4', '19', '1', '5', '0', '0');
INSERT INTO `hire_people_online` VALUES ('5', '20', '1', '2', '4', '3');
INSERT INTO `hire_people_online` VALUES ('6', '20', '1', '3', '0', '0');
INSERT INTO `hire_people_online` VALUES ('7', '20', '1', '4', '0', '0');
INSERT INTO `hire_people_online` VALUES ('8', '20', '1', '5', '0', '0');
INSERT INTO `hire_people_online` VALUES ('9', '21', '1', '2', '3', '4');
INSERT INTO `hire_people_online` VALUES ('10', '21', '1', '3', '0', '0');
INSERT INTO `hire_people_online` VALUES ('11', '21', '1', '4', '0', '0');
INSERT INTO `hire_people_online` VALUES ('12', '21', '1', '5', '0', '0');
INSERT INTO `hire_people_online` VALUES ('13', '22', '1', '2', '3', '4');
INSERT INTO `hire_people_online` VALUES ('14', '22', '1', '3', '0', '0');
INSERT INTO `hire_people_online` VALUES ('15', '22', '1', '4', '0', '0');
INSERT INTO `hire_people_online` VALUES ('16', '22', '1', '5', '0', '0');

-- ----------------------------
-- Table structure for income_statement
-- ----------------------------
DROP TABLE IF EXISTS `income_statement`;
CREATE TABLE `income_statement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `quarter` int(11) NOT NULL,
  `yingye_income` float DEFAULT NULL,
  `lixi_income` float DEFAULT NULL,
  `yingye_cost` float DEFAULT NULL,
  `fankuan` float DEFAULT NULL,
  `yanfa` float DEFAULT NULL,
  `guanggao` float DEFAULT NULL,
  `saler_cost` float DEFAULT NULL,
  `salescenter_cost` float DEFAULT NULL,
  `salescenter_web_cost` float DEFAULT NULL,
  `baogao` float DEFAULT NULL,
  `huoyun` float DEFAULT NULL,
  `kucun` float DEFAULT NULL,
  `excess_capacity` float DEFAULT NULL,
  `zhejiu` float DEFAULT NULL,
  `netmarket_cost` float DEFAULT NULL,
  `lixi_cost` float DEFAULT NULL,
  `tech_income` float DEFAULT NULL,
  `qita_income` float DEFAULT NULL,
  `tech_cost` float DEFAULT NULL,
  `qita_cost` float DEFAULT NULL,
  `tax_cost` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of income_statement
-- ----------------------------
INSERT INTO `income_statement` VALUES ('1', '1', '1', '0', '30', '0', '0', '60000', '0', '0', '100000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('2', '1', '2', '200050', '105.45', '492030', '4500', '60000', '130000', '16608', '50000', '30000', '0', '10000', '14058', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('3', '1', '3', '0', '107.02', '492090', '0', '0', '164000', '24000', '150001', '100002', '0', '300', '36855', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('4', '1', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('5', '1', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('6', '1', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('7', '2', '1', '0', '33', '0', '0', '120000', '0', '0', '100001', '70001', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('8', '2', '2', '336338', '78.49', '875449', '5060', '60000', '135000', '47845', '50001', '30001', '15000', '16800', '34639', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('9', '2', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('10', '2', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('11', '2', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('12', '2', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('13', '3', '1', '0', '36', '0', '0', '60000', '0', '0', '100002', '70002', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('14', '3', '2', '255045', '81.54', '520305', '13000', '60000', '182000', '37744', '50002', '30002', '15000', '8500', '19045', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('15', '3', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('16', '3', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('17', '3', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('18', '3', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('19', '4', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('20', '4', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('21', '4', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('22', '4', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('23', '4', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('24', '4', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('25', '5', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('26', '5', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('27', '5', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('28', '5', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('29', '5', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('30', '5', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('31', '6', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('32', '6', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('33', '6', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('34', '6', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('35', '6', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('36', '6', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('37', '7', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('38', '7', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('39', '7', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('40', '7', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('41', '7', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('42', '7', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('43', '8', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('44', '8', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('45', '8', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('46', '8', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('47', '8', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('48', '8', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('49', '9', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('50', '9', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('51', '9', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('52', '9', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('53', '9', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('54', '9', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('55', '10', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('56', '10', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('57', '10', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('58', '10', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('59', '10', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('60', '10', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('61', '11', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('62', '11', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('63', '11', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('64', '11', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('65', '11', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('66', '11', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('67', '12', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('68', '12', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('69', '12', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('70', '12', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('71', '12', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('72', '12', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('73', '12', '7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('74', '12', '8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('75', '12', '9', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('76', '12', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('77', '13', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('78', '13', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('79', '13', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('80', '13', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('81', '13', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('82', '13', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('83', '13', '7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('84', '13', '8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('85', '13', '9', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('86', '13', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('87', '14', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('88', '14', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('89', '14', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('90', '14', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('91', '14', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('92', '14', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('93', '14', '7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('94', '14', '8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('95', '14', '9', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('96', '14', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('97', '15', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('98', '15', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('99', '15', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('100', '15', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('101', '15', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('102', '15', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('103', '15', '7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('104', '15', '8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('105', '15', '9', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('106', '15', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('107', '16', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('108', '16', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('109', '16', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('110', '16', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('111', '16', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('112', '16', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('113', '16', '7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('114', '16', '8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('115', '16', '9', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('116', '16', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('117', '17', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('118', '17', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('119', '17', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('120', '17', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('121', '17', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('122', '17', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('123', '17', '7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('124', '17', '8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('125', '17', '9', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('126', '17', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('127', '18', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('128', '18', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('129', '18', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('130', '18', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('131', '18', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('132', '18', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('133', '18', '7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('134', '18', '8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('135', '18', '9', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('136', '18', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('137', '19', '1', '0', '15', '0', '0', '60000', '0', '0', '0', '280006', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('138', '19', '2', '110000', '30.22', '510060', '1100', '60000', '79000', '17364', '0', '30000', '15000', '7000', '21386', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('139', '19', '3', '0', '30.67', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '7.6675');
INSERT INTO `income_statement` VALUES ('140', '19', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('141', '19', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('142', '19', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('143', '20', '1', '0', '18.51', '0', '0', '60000', '0', '0', '0', '280006', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('144', '20', '2', '205000', '63.78', '492000', '2050', '60000', '164000', '31768', '0', '120006', '15000', '10000', '18450', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('145', '20', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('146', '20', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('147', '20', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('148', '20', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('149', '21', '1', '0', '64.81', '0', '0', '60000', '0', '0', '0', '280006', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('150', '21', '2', '0', '65.77', '510120', '0', '60000', '275000', '25980', '0', '120006', '15000', '10000', '22672', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('151', '21', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('152', '21', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('153', '21', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('154', '21', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('155', '22', '1', '0', '81.48', '0', '0', '60000', '0', '0', '0', '280006', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('156', '22', '2', '263000', '82.69', '518239', '2630', '60000', '167000', '38192', '0', '120006', '15000', '8500', '24976', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('157', '22', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('158', '22', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('159', '22', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('160', '22', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for income_statement_result
-- ----------------------------
DROP TABLE IF EXISTS `income_statement_result`;
CREATE TABLE `income_statement_result` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `quarter` int(11) NOT NULL,
  `yingye_income` float DEFAULT NULL,
  `lixi_income` float DEFAULT NULL,
  `yingye_cost` float DEFAULT NULL,
  `fankuan` float DEFAULT NULL,
  `yanfa` float DEFAULT NULL,
  `guanggao` float DEFAULT NULL,
  `saler_cost` float DEFAULT NULL,
  `salescenter_cost` float DEFAULT NULL,
  `salescenter_web_cost` float DEFAULT NULL,
  `baogao` float DEFAULT NULL,
  `huoyun` float DEFAULT NULL,
  `kucun` float DEFAULT NULL,
  `excess_capacity` float DEFAULT NULL,
  `zhejiu` float DEFAULT NULL,
  `netmarket_cost` float DEFAULT NULL,
  `lixi_cost` float DEFAULT NULL,
  `tech_income` float DEFAULT NULL,
  `qita_income` float DEFAULT NULL,
  `tech_cost` float DEFAULT NULL,
  `qita_cost` float DEFAULT NULL,
  `tax_cost` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of income_statement_result
-- ----------------------------
INSERT INTO `income_statement_result` VALUES ('1', '1', '1', '0', '30', '0', '0', '60000', '0', '0', '100000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('2', '2', '1', '0', '33', '0', '0', '120000', '0', '0', '100001', '70001', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('3', '3', '1', '0', '36', '0', '0', '60000', '0', '0', '100002', '70002', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('4', '1', '2', '0', '105.45', '0', '0', '60000', '130000', '27680', '50000', '30000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('5', '2', '2', '6748850', '78.49', '5122600', '102170', '60000', '135000', '47845', '50001', '30001', '15000', '337100', '10125', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('6', '3', '2', '5349940', '81.54', '2071210', '272700', '60000', '182000', '37744', '50002', '30002', '15000', '178300', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('8', '2', '2', '6748850', '78.49', '5122600', '102170', '60000', '135000', '47845', '50001', '30001', '15000', '337100', '10125', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('9', '3', '2', '5349940', '81.54', '2071210', '272700', '60000', '182000', '37744', '50002', '30002', '15000', '178300', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('10', '19', '1', '0', '15', '0', '0', '60000', '0', '0', '0', '280006', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('11', '20', '1', '0', '18.51', '0', '0', '60000', '0', '0', '0', '280006', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('12', '21', '1', '0', '64.81', '0', '0', '60000', '0', '0', '0', '280006', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('13', '22', '1', '0', '81.48', '0', '0', '60000', '0', '0', '0', '280006', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('14', '19', '2', '1553000', '30.22', '1407250', '15530', '60000', '79000', '17364', '0', '30000', '15000', '98800', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('15', '20', '2', '955300', '63.78', '491863', '9553', '60000', '164000', '31768', '0', '120006', '15000', '46600', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4143.44');
INSERT INTO `income_statement_result` VALUES ('16', '21', '2', '0', '65.77', '1623360', '0', '60000', '275000', '25980', '0', '120006', '15000', '115200', '8345', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('17', '22', '2', '1243800', '82.69', '518205', '12438', '60000', '167000', '38192', '0', '120006', '15000', '40200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '68210.4');

-- ----------------------------
-- Table structure for learntime
-- ----------------------------
DROP TABLE IF EXISTS `learntime`;
CREATE TABLE `learntime` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` double DEFAULT NULL,
  `quarter` varchar(255) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `member_id` (`member_id`),
  CONSTRAINT `learntime_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of learntime
-- ----------------------------
INSERT INTO `learntime` VALUES ('11', '538', '3', '21');
INSERT INTO `learntime` VALUES ('12', '2298', '2', '21');
INSERT INTO `learntime` VALUES ('13', '2450', '2', '24');

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `operate_date` varchar(255) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `quarter` int(255) DEFAULT NULL,
  `submit_tag` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `member_id` (`member_id`),
  CONSTRAINT `log_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4440 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES ('3159', 'user1:学生登录操作', '2017-11-23 10:46:38', '21', '1', '1');
INSERT INTO `log` VALUES ('3160', 'user1:修改公司名字', '2017-11-23 10:46:44', '21', '1', '1');
INSERT INTO `log` VALUES ('3161', 'user1:查看目标策略操作', '2017-11-23 10:46:45', '21', '1', '1');
INSERT INTO `log` VALUES ('3162', 'user1:修改目标策略', '2017-11-23 10:47:15', '21', '1', '1');
INSERT INTO `log` VALUES ('3163', 'user1:查看市场规模', '2017-11-23 10:47:18', '21', '1', '1');
INSERT INTO `log` VALUES ('3164', 'user1:查看用户愿意支付的价格', '2017-11-23 10:47:19', '21', '1', '1');
INSERT INTO `log` VALUES ('3165', 'user1:查看产品用途', '2017-11-23 10:47:19', '21', '1', '1');
INSERT INTO `log` VALUES ('3166', 'user1:查看客户需求', '2017-11-23 10:47:20', '21', '1', '1');
INSERT INTO `log` VALUES ('3167', 'user1:查看职位分配操作', '2017-11-23 10:47:22', '21', '1', '1');
INSERT INTO `log` VALUES ('3168', 'user1:修改职位分配', '2017-11-23 10:47:33', '21', '1', '1');
INSERT INTO `log` VALUES ('3169', 'user1:修改团队规则', '2017-11-23 10:47:38', '21', '1', '1');
INSERT INTO `log` VALUES ('3170', 'user1:查看团队目标操作', '2017-11-23 10:47:39', '21', '1', '1');
INSERT INTO `log` VALUES ('3171', 'user1:修改个人目标', '2017-11-23 10:47:45', '21', '1', '1');
INSERT INTO `log` VALUES ('3172', 'user1:查看员工薪酬', '2017-11-23 10:47:48', '21', '1', '1');
INSERT INTO `log` VALUES ('3173', 'user1:查看实体销售操作', '2017-11-23 10:47:52', '21', '1', '1');
INSERT INTO `log` VALUES ('3174', 'user1:修改开设实体销售中心', '2017-11-23 10:47:56', '21', '1', '1');
INSERT INTO `log` VALUES ('3175', 'user1:查看网络销售中心操作', '2017-11-23 10:47:57', '21', '1', '1');
INSERT INTO `log` VALUES ('3176', 'user1:修改开设网络销售中心', '2017-11-23 10:48:00', '21', '1', '1');
INSERT INTO `log` VALUES ('3177', 'user1:查看品牌管理操作', '2017-11-23 10:48:02', '21', '1', '1');
INSERT INTO `log` VALUES ('3178', 'user1:查看固定产能操作', '2017-11-23 10:48:29', '21', '1', '1');
INSERT INTO `log` VALUES ('3179', 'user1:修改固定产能', '2017-11-23 10:48:33', '21', '1', '1');
INSERT INTO `log` VALUES ('3180', 'user1:查看内部持股操作', '2017-11-23 10:48:37', '21', '1', '1');
INSERT INTO `log` VALUES ('3181', 'user1:查看定期存款操作', '2017-11-23 10:49:25', '21', '1', '1');
INSERT INTO `log` VALUES ('3182', 'user1:修改定期存款', '2017-11-23 10:49:35', '21', '1', '1');
INSERT INTO `log` VALUES ('3183', 'user1:查看现金流表操作', '2017-11-23 10:49:38', '21', '1', '1');
INSERT INTO `log` VALUES ('3184', 'user1:查看利润表操作', '2017-11-23 10:49:39', '21', '1', '1');
INSERT INTO `log` VALUES ('3185', 'user1:查看资产负债表操作', '2017-11-23 10:49:41', '21', '1', '1');
INSERT INTO `log` VALUES ('3186', 'user1:查看决策汇总操作', '2017-11-23 10:49:43', '21', '1', '1');
INSERT INTO `log` VALUES ('3187', 'user2:学生登录操作', '2017-11-23 10:49:54', '22', '1', '1');
INSERT INTO `log` VALUES ('3188', 'user2:修改公司名字', '2017-11-23 10:49:57', '22', '1', '1');
INSERT INTO `log` VALUES ('3189', 'user2:查看目标策略操作', '2017-11-23 10:49:57', '22', '1', '1');
INSERT INTO `log` VALUES ('3190', 'user2:修改目标策略', '2017-11-23 10:50:16', '22', '1', '1');
INSERT INTO `log` VALUES ('3191', 'user2:查看产品用途', '2017-11-23 10:50:18', '22', '1', '1');
INSERT INTO `log` VALUES ('3192', 'user2:查看客户需求', '2017-11-23 10:50:19', '22', '1', '1');
INSERT INTO `log` VALUES ('3193', 'user2:查看用户愿意支付的价格', '2017-11-23 10:50:20', '22', '1', '1');
INSERT INTO `log` VALUES ('3194', 'user2:查看职位分配操作', '2017-11-23 10:50:22', '22', '1', '1');
INSERT INTO `log` VALUES ('3195', 'user2:修改职位分配', '2017-11-23 10:50:28', '22', '1', '1');
INSERT INTO `log` VALUES ('3196', 'user2:修改团队规则', '2017-11-23 10:50:33', '22', '1', '1');
INSERT INTO `log` VALUES ('3197', 'user2:查看团队目标操作', '2017-11-23 10:50:35', '22', '1', '1');
INSERT INTO `log` VALUES ('3198', 'user2:修改个人目标', '2017-11-23 10:50:39', '22', '1', '1');
INSERT INTO `log` VALUES ('3199', 'user2:查看员工薪酬', '2017-11-23 10:50:40', '22', '1', '1');
INSERT INTO `log` VALUES ('3200', 'user2:查看实体销售操作', '2017-11-23 10:50:42', '22', '1', '1');
INSERT INTO `log` VALUES ('3201', 'user2:修改开设实体销售中心', '2017-11-23 10:50:47', '22', '1', '1');
INSERT INTO `log` VALUES ('3202', 'user2:查看网络销售中心操作', '2017-11-23 10:50:47', '22', '1', '1');
INSERT INTO `log` VALUES ('3203', 'user2:修改开设网络销售中心', '2017-11-23 10:50:50', '22', '1', '1');
INSERT INTO `log` VALUES ('3204', 'user2:查看品牌管理操作', '2017-11-23 10:50:52', '22', '1', '1');
INSERT INTO `log` VALUES ('3205', 'user2:查看固定产能操作', '2017-11-23 10:51:21', '22', '1', '1');
INSERT INTO `log` VALUES ('3206', 'user2:修改固定产能', '2017-11-23 10:51:27', '22', '1', '1');
INSERT INTO `log` VALUES ('3207', 'user2:查看定期存款操作', '2017-11-23 10:52:01', '22', '1', '1');
INSERT INTO `log` VALUES ('3208', 'user2:查看内部持股操作', '2017-11-23 10:52:03', '22', '1', '1');
INSERT INTO `log` VALUES ('3209', 'user2:修改定期存款', '2017-11-23 10:52:12', '22', '1', '1');
INSERT INTO `log` VALUES ('3210', 'user2:查看决策汇总操作', '2017-11-23 10:52:15', '22', '1', '1');
INSERT INTO `log` VALUES ('3211', 'user2:查看现金流表操作', '2017-11-23 10:52:17', '22', '1', '1');
INSERT INTO `log` VALUES ('3212', 'user2:查看利润表操作', '2017-11-23 10:52:18', '22', '1', '1');
INSERT INTO `log` VALUES ('3213', 'user2:查看资产负债表操作', '2017-11-23 10:52:18', '22', '1', '1');
INSERT INTO `log` VALUES ('3214', 'user3:学生登录操作', '2017-11-23 10:53:23', '23', '1', '1');
INSERT INTO `log` VALUES ('3215', 'user3:查看目标策略操作', '2017-11-23 10:53:25', '23', '1', '1');
INSERT INTO `log` VALUES ('3216', 'user3:修改目标策略', '2017-11-23 10:53:47', '23', '1', '1');
INSERT INTO `log` VALUES ('3217', 'user3:查看职位分配操作', '2017-11-23 10:53:50', '23', '1', '1');
INSERT INTO `log` VALUES ('3218', 'user3:修改职位分配', '2017-11-23 10:53:55', '23', '1', '1');
INSERT INTO `log` VALUES ('3219', 'user3:查看团队目标操作', '2017-11-23 10:53:56', '23', '1', '1');
INSERT INTO `log` VALUES ('3220', 'user3:修改团队规则', '2017-11-23 10:54:01', '23', '1', '1');
INSERT INTO `log` VALUES ('3221', 'user3:修改个人目标', '2017-11-23 10:54:06', '23', '1', '1');
INSERT INTO `log` VALUES ('3222', 'user3:查看员工薪酬', '2017-11-23 10:54:07', '23', '1', '1');
INSERT INTO `log` VALUES ('3223', 'user3:查看实体销售操作', '2017-11-23 10:54:09', '23', '1', '1');
INSERT INTO `log` VALUES ('3224', 'user3:修改开设实体销售中心', '2017-11-23 10:54:13', '23', '1', '1');
INSERT INTO `log` VALUES ('3225', 'user3:查看网络销售中心操作', '2017-11-23 10:54:13', '23', '1', '1');
INSERT INTO `log` VALUES ('3226', 'user3:修改开设网络销售中心', '2017-11-23 10:54:18', '23', '1', '1');
INSERT INTO `log` VALUES ('3227', 'user3:查看品牌管理操作', '2017-11-23 10:54:19', '23', '1', '1');
INSERT INTO `log` VALUES ('3228', 'user3:查看固定产能操作', '2017-11-23 10:54:49', '23', '1', '1');
INSERT INTO `log` VALUES ('3229', 'user3:修改固定产能', '2017-11-23 10:54:53', '23', '1', '1');
INSERT INTO `log` VALUES ('3230', 'user3:查看内部持股操作', '2017-11-23 10:54:55', '23', '1', '1');
INSERT INTO `log` VALUES ('3231', 'user3:查看定期存款操作', '2017-11-23 10:54:56', '23', '1', '1');
INSERT INTO `log` VALUES ('3232', 'user3:修改定期存款', '2017-11-23 10:55:03', '23', '1', '1');
INSERT INTO `log` VALUES ('3233', 'user3:查看现金流表操作', '2017-11-23 10:55:11', '23', '1', '1');
INSERT INTO `log` VALUES ('3234', 'user3:查看利润表操作', '2017-11-23 10:55:12', '23', '1', '1');
INSERT INTO `log` VALUES ('3235', 'user3:查看资产负债表操作', '2017-11-23 10:55:14', '23', '1', '1');
INSERT INTO `log` VALUES ('3236', 'user3:查看决策汇总操作', '2017-11-23 10:55:28', '23', '1', '1');
INSERT INTO `log` VALUES ('3237', 'user3:学生登录操作', '2017-11-23 10:56:37', '23', '1', '1');
INSERT INTO `log` VALUES ('3238', 'user3:查看客户需求', '2017-11-23 10:58:47', '23', '1', '1');
INSERT INTO `log` VALUES ('3239', 'user3:查看用户愿意支付的价格', '2017-11-23 10:58:49', '23', '1', '1');
INSERT INTO `log` VALUES ('3240', 'user3:查看市场规模', '2017-11-23 10:58:53', '23', '1', '1');
INSERT INTO `log` VALUES ('3241', 'user1:学生登录操作', '2017-11-23 11:01:59', '21', '2', '1');
INSERT INTO `log` VALUES ('3242', 'user1:学生登录操作', '2017-11-23 11:03:23', '21', '2', '1');
INSERT INTO `log` VALUES ('3243', 'user1:查看客户需求', '2017-11-23 11:03:27', '21', '2', '1');
INSERT INTO `log` VALUES ('3244', 'user1:查看产品用途', '2017-11-23 11:03:28', '21', '2', '1');
INSERT INTO `log` VALUES ('3245', 'user1:查看品牌管理操作', '2017-11-23 11:03:29', '21', '2', '1');
INSERT INTO `log` VALUES ('3246', 'user1:查看用户愿意支付的价格', '2017-11-23 11:04:05', '21', '2', '1');
INSERT INTO `log` VALUES ('3247', 'user1:显示销货成本', '2017-11-23 11:04:06', '21', '2', '1');
INSERT INTO `log` VALUES ('3248', 'user1:显示产品定价', '2017-11-23 11:04:06', '21', '2', '1');
INSERT INTO `log` VALUES ('3249', 'user1:操作产品定价', '2017-11-23 11:04:26', '21', '2', '1');
INSERT INTO `log` VALUES ('3250', 'user1:查看客户需求', '2017-11-23 11:04:29', '21', '2', '1');
INSERT INTO `log` VALUES ('3251', 'user1:查看产品用途', '2017-11-23 11:04:29', '21', '2', '1');
INSERT INTO `log` VALUES ('3252', 'user1:查看媒体偏好', '2017-11-23 11:04:30', '21', '2', '1');
INSERT INTO `log` VALUES ('3253', 'user1:操作媒体投放', '2017-11-23 11:04:51', '21', '2', '1');
INSERT INTO `log` VALUES ('3254', 'user1:显示设计广告语', '2017-11-23 11:04:52', '21', '2', '1');
INSERT INTO `log` VALUES ('3255', 'user1:更新产品广告语', '2017-11-23 11:05:01', '21', '2', '1');
INSERT INTO `log` VALUES ('3256', 'user1:核查广告语', '2017-11-23 11:05:33', '21', '2', '1');
INSERT INTO `log` VALUES ('3257', 'user1:显示市场调研报告', '2017-11-23 11:05:34', '21', '2', '1');
INSERT INTO `log` VALUES ('3258', 'user1:操作市场调研报告', '2017-11-23 11:05:38', '21', '2', '1');
INSERT INTO `log` VALUES ('3259', 'user1:查看员工薪酬', '2017-11-23 11:05:41', '21', '2', '1');
INSERT INTO `log` VALUES ('3260', 'user1:显示业内销售人员薪酬', '2017-11-23 11:05:43', '21', '2', '1');
INSERT INTO `log` VALUES ('3261', 'user1:更新业内销售人员薪酬', '2017-11-23 11:06:13', '21', '2', '1');
INSERT INTO `log` VALUES ('3262', 'user1:显示业内工厂工人薪酬', '2017-11-23 11:06:14', '21', '2', '1');
INSERT INTO `log` VALUES ('3263', 'user1:更新业内工厂工人薪酬', '2017-11-23 11:06:30', '21', '2', '1');
INSERT INTO `log` VALUES ('3264', 'user1:查看实体销售操作', '2017-11-23 11:06:35', '21', '2', '1');
INSERT INTO `log` VALUES ('3265', 'user1:查看市场规模', '2017-11-23 11:06:37', '21', '2', '1');
INSERT INTO `log` VALUES ('3266', 'user1:查看网络销售中心操作', '2017-11-23 11:06:47', '21', '2', '1');
INSERT INTO `log` VALUES ('3267', 'user1:查看需求量预测操作', '2017-11-23 11:06:55', '21', '2', '1');
INSERT INTO `log` VALUES ('3268', 'user1:更新需求量预测操作', '2017-11-23 11:07:25', '21', '2', '1');
INSERT INTO `log` VALUES ('3269', 'user1:查看库存控制', '2017-11-23 11:07:30', '21', '2', '1');
INSERT INTO `log` VALUES ('3270', 'user1:修改库存控制', '2017-11-23 11:07:41', '21', '2', '1');
INSERT INTO `log` VALUES ('3271', 'user1:查看运行产能操作', '2017-11-23 11:07:42', '21', '2', '1');
INSERT INTO `log` VALUES ('3272', 'user1:修改运行产能', '2017-11-23 11:07:58', '21', '2', '1');
INSERT INTO `log` VALUES ('3273', 'user1:查看固定产能操作', '2017-11-23 11:08:18', '21', '2', '1');
INSERT INTO `log` VALUES ('3274', 'user1:修改固定产能', '2017-11-23 11:08:26', '21', '2', '1');
INSERT INTO `log` VALUES ('3275', 'user1:查看内部持股操作', '2017-11-23 11:08:31', '21', '2', '1');
INSERT INTO `log` VALUES ('3276', 'user1:查看定期存款操作', '2017-11-23 11:08:38', '21', '2', '1');
INSERT INTO `log` VALUES ('3277', 'user1:修改定期存款', '2017-11-23 11:08:46', '21', '2', '1');
INSERT INTO `log` VALUES ('3278', 'user1:查看现金流表操作', '2017-11-23 11:08:49', '21', '2', '1');
INSERT INTO `log` VALUES ('3279', 'user1:查看利润表操作', '2017-11-23 11:08:51', '21', '2', '1');
INSERT INTO `log` VALUES ('3280', 'user1:查看资产负债表操作', '2017-11-23 11:08:53', '21', '2', '1');
INSERT INTO `log` VALUES ('3281', 'user1:修改团队规则', '2017-11-23 11:09:04', '21', '2', '1');
INSERT INTO `log` VALUES ('3282', 'user1:查看目标策略操作', '2017-11-23 11:09:05', '21', '2', '1');
INSERT INTO `log` VALUES ('3283', 'user1:修改目标策略', '2017-11-23 11:09:07', '21', '2', '1');
INSERT INTO `log` VALUES ('3284', 'user1:查看决策汇总操作', '2017-11-23 11:09:09', '21', '2', '1');
INSERT INTO `log` VALUES ('3285', 'user2:学生登录操作', '2017-11-23 11:09:37', '22', '2', '1');
INSERT INTO `log` VALUES ('3286', 'user2:查看品牌管理操作', '2017-11-23 11:09:41', '22', '2', '1');
INSERT INTO `log` VALUES ('3287', 'user2:查看用户愿意支付的价格', '2017-11-23 11:10:09', '22', '2', '1');
INSERT INTO `log` VALUES ('3288', 'user2:显示销货成本', '2017-11-23 11:10:09', '22', '2', '1');
INSERT INTO `log` VALUES ('3289', 'user2:显示产品定价', '2017-11-23 11:10:09', '22', '2', '1');
INSERT INTO `log` VALUES ('3290', 'user2:操作产品定价', '2017-11-23 11:10:28', '22', '2', '1');
INSERT INTO `log` VALUES ('3291', 'user2:查看客户需求', '2017-11-23 11:10:38', '22', '2', '1');
INSERT INTO `log` VALUES ('3292', 'user2:操作媒体投放', '2017-11-23 11:10:52', '22', '2', '1');
INSERT INTO `log` VALUES ('3293', 'user2:核查广告语', '2017-11-23 11:10:53', '22', '2', '1');
INSERT INTO `log` VALUES ('3294', 'user2:显示设计广告语', '2017-11-23 11:10:54', '22', '2', '1');
INSERT INTO `log` VALUES ('3295', 'user2:更新产品广告语', '2017-11-23 11:10:58', '22', '2', '1');
INSERT INTO `log` VALUES ('3296', 'user2:显示市场调研报告', '2017-11-23 11:11:34', '22', '2', '1');
INSERT INTO `log` VALUES ('3297', 'user2:操作市场调研报告', '2017-11-23 11:11:37', '22', '2', '1');
INSERT INTO `log` VALUES ('3298', 'user2:查看员工薪酬', '2017-11-23 11:11:39', '22', '2', '1');
INSERT INTO `log` VALUES ('3299', 'user2:显示业内销售人员薪酬', '2017-11-23 11:11:40', '22', '2', '1');
INSERT INTO `log` VALUES ('3300', 'user2:更新业内销售人员薪酬', '2017-11-23 11:11:57', '22', '2', '1');
INSERT INTO `log` VALUES ('3301', 'user2:显示业内工厂工人薪酬', '2017-11-23 11:11:58', '22', '2', '1');
INSERT INTO `log` VALUES ('3302', 'user2:更新业内工厂工人薪酬', '2017-11-23 11:12:15', '22', '2', '1');
INSERT INTO `log` VALUES ('3303', 'user2:查看需求量预测操作', '2017-11-23 11:12:40', '22', '2', '1');
INSERT INTO `log` VALUES ('3304', 'user2:更新需求量预测操作', '2017-11-23 11:13:01', '22', '2', '1');
INSERT INTO `log` VALUES ('3305', 'user2:查看库存控制', '2017-11-23 11:13:05', '22', '2', '1');
INSERT INTO `log` VALUES ('3306', 'user2:修改库存控制', '2017-11-23 11:13:14', '22', '2', '1');
INSERT INTO `log` VALUES ('3307', 'user2:查看运行产能操作', '2017-11-23 11:13:16', '22', '2', '1');
INSERT INTO `log` VALUES ('3308', 'user2:修改运行产能', '2017-11-23 11:13:36', '22', '2', '1');
INSERT INTO `log` VALUES ('3309', 'user2:查看固定产能操作', '2017-11-23 11:13:41', '22', '2', '1');
INSERT INTO `log` VALUES ('3310', 'user2:修改固定产能', '2017-11-23 11:13:45', '22', '2', '1');
INSERT INTO `log` VALUES ('3311', 'user2:查看内部持股操作', '2017-11-23 11:13:48', '22', '2', '1');
INSERT INTO `log` VALUES ('3312', 'user2:查看定期存款操作', '2017-11-23 11:13:54', '22', '2', '1');
INSERT INTO `log` VALUES ('3313', 'user2:修改定期存款', '2017-11-23 11:14:00', '22', '2', '1');
INSERT INTO `log` VALUES ('3314', 'user2:查看现金流表操作', '2017-11-23 11:14:02', '22', '2', '1');
INSERT INTO `log` VALUES ('3315', 'user2:查看利润表操作', '2017-11-23 11:14:02', '22', '2', '1');
INSERT INTO `log` VALUES ('3316', 'user2:查看资产负债表操作', '2017-11-23 11:14:03', '22', '2', '1');
INSERT INTO `log` VALUES ('3317', 'user2:查看利润表操作', '2017-11-23 11:15:04', '22', '2', '1');
INSERT INTO `log` VALUES ('3318', 'user2:查看资产负债表操作', '2017-11-23 11:15:06', '22', '2', '1');
INSERT INTO `log` VALUES ('3319', 'user2:查看现金流表操作', '2017-11-23 11:15:11', '22', '2', '1');
INSERT INTO `log` VALUES ('3320', 'user2:修改团队规则', '2017-11-23 11:15:15', '22', '2', '1');
INSERT INTO `log` VALUES ('3321', 'user2:查看目标策略操作', '2017-11-23 11:15:16', '22', '2', '1');
INSERT INTO `log` VALUES ('3322', 'user2:修改目标策略', '2017-11-23 11:15:19', '22', '2', '1');
INSERT INTO `log` VALUES ('3323', 'user2:查看决策汇总操作', '2017-11-23 11:15:21', '22', '2', '1');
INSERT INTO `log` VALUES ('3324', 'user1:学生登录操作', '2017-11-23 11:15:26', '21', '2', '1');
INSERT INTO `log` VALUES ('3325', 'user1:查看资产负债表操作', '2017-11-23 11:15:29', '21', '2', '1');
INSERT INTO `log` VALUES ('3326', 'user1:查看利润表操作', '2017-11-23 11:15:36', '21', '2', '1');
INSERT INTO `log` VALUES ('3327', 'user2:学生登录操作', '2017-11-23 11:15:50', '22', '2', '1');
INSERT INTO `log` VALUES ('3328', 'user2:学生登录操作', '2017-11-23 11:59:00', '22', '2', '1');
INSERT INTO `log` VALUES ('3329', 'user2:查看利润表操作', '2017-11-23 11:59:08', '22', '2', '1');
INSERT INTO `log` VALUES ('3330', 'user2:查看资产负债表操作', '2017-11-23 11:59:08', '22', '2', '1');
INSERT INTO `log` VALUES ('3331', 'user2:查看资产负债表操作', '2017-11-23 12:01:01', '22', '2', '1');
INSERT INTO `log` VALUES ('3332', 'user2:查看利润表操作', '2017-11-23 12:01:02', '22', '2', '1');
INSERT INTO `log` VALUES ('3333', 'user2:查看现金流表操作', '2017-11-23 12:01:03', '22', '2', '1');
INSERT INTO `log` VALUES ('3334', 'user2:查看目标策略操作', '2017-11-23 12:01:06', '22', '2', '1');
INSERT INTO `log` VALUES ('3335', 'user2:查看决策汇总操作', '2017-11-23 12:01:08', '22', '2', '1');
INSERT INTO `log` VALUES ('3336', 'user3:学生登录操作', '2017-11-23 12:01:24', '23', '2', '1');
INSERT INTO `log` VALUES ('3337', 'user3:查看现金流表操作', '2017-11-23 12:01:27', '23', '2', '1');
INSERT INTO `log` VALUES ('3338', 'user3:查看利润表操作', '2017-11-23 12:01:28', '23', '2', '1');
INSERT INTO `log` VALUES ('3339', 'user3:查看资产负债表操作', '2017-11-23 12:01:29', '23', '2', '1');
INSERT INTO `log` VALUES ('3340', 'user3:查看品牌管理操作', '2017-11-23 12:02:44', '23', '2', '1');
INSERT INTO `log` VALUES ('3341', 'user3:查看用户愿意支付的价格', '2017-11-23 12:03:03', '23', '2', '1');
INSERT INTO `log` VALUES ('3342', 'user3:显示销货成本', '2017-11-23 12:03:04', '23', '2', '1');
INSERT INTO `log` VALUES ('3343', 'user3:显示产品定价', '2017-11-23 12:03:05', '23', '2', '1');
INSERT INTO `log` VALUES ('3344', 'user3:操作产品定价', '2017-11-23 12:03:16', '23', '2', '1');
INSERT INTO `log` VALUES ('3345', 'user3:查看客户需求', '2017-11-23 12:03:19', '23', '2', '1');
INSERT INTO `log` VALUES ('3346', 'user3:查看产品用途', '2017-11-23 12:03:19', '23', '2', '1');
INSERT INTO `log` VALUES ('3347', 'user3:查看媒体偏好', '2017-11-23 12:03:20', '23', '2', '1');
INSERT INTO `log` VALUES ('3348', 'user3:操作媒体投放', '2017-11-23 12:03:33', '23', '2', '1');
INSERT INTO `log` VALUES ('3349', 'user1:学生登录操作', '2017-11-23 12:17:17', '21', '2', '1');
INSERT INTO `log` VALUES ('3350', 'user1:查看决策汇总操作', '2017-11-23 12:17:20', '21', '2', '1');
INSERT INTO `log` VALUES ('3351', 'user1:查看现金流表操作', '2017-11-23 12:17:25', '21', '2', '1');
INSERT INTO `log` VALUES ('3352', 'user1:查看利润表操作', '2017-11-23 12:17:26', '21', '2', '1');
INSERT INTO `log` VALUES ('3353', 'user1:查看资产负债表操作', '2017-11-23 12:17:27', '21', '2', '1');
INSERT INTO `log` VALUES ('3354', 'user1:学生登录操作', '2017-11-23 12:23:24', '21', '3', '1');
INSERT INTO `log` VALUES ('3355', 'user1:品牌盈利能力', '2017-11-23 12:23:35', '21', '3', '1');
INSERT INTO `log` VALUES ('3356', 'user1:品牌评价', '2017-11-23 12:23:37', '21', '3', '1');
INSERT INTO `log` VALUES ('3357', 'user1:竞争对手的品牌', '2017-11-23 12:23:38', '21', '3', '1');
INSERT INTO `log` VALUES ('3358', 'user1:查看品牌管理操作', '2017-11-23 12:23:49', '21', '3', '1');
INSERT INTO `log` VALUES ('3359', 'user1:竞争对手的价格', '2017-11-23 12:23:53', '21', '3', '1');
INSERT INTO `log` VALUES ('3360', 'user1:生产成本', '2017-11-23 12:23:54', '21', '3', '1');
INSERT INTO `log` VALUES ('3361', 'user1:价格及销售优先级别', '2017-11-23 12:23:58', '21', '3', '1');
INSERT INTO `log` VALUES ('3362', 'user1:竞争对手的广告', '2017-11-23 12:24:02', '21', '3', '1');
INSERT INTO `log` VALUES ('3363', 'user1:设计广告', '2017-11-23 12:24:06', '21', '3', '1');
INSERT INTO `log` VALUES ('3364', 'user1:查看媒体偏好', '2017-11-23 12:24:07', '21', '3', '1');
INSERT INTO `log` VALUES ('3365', 'user1:课程介绍', '2017-11-23 12:24:20', '21', '3', '1');
INSERT INTO `log` VALUES ('3366', 'user1:核查广告语', '2017-11-23 12:24:26', '21', '3', '1');
INSERT INTO `log` VALUES ('3367', 'user1:购买市场调研报告', '2017-11-23 12:24:28', '21', '3', '1');
INSERT INTO `log` VALUES ('3368', 'user1:查看实体销售操作', '2017-11-23 12:24:37', '21', '3', '1');
INSERT INTO `log` VALUES ('3369', 'user1:查看网络销售中心操作', '2017-11-23 12:24:44', '21', '3', '1');
INSERT INTO `log` VALUES ('3370', 'user1:查看业内销售人员薪酬', '2017-11-23 12:24:47', '21', '3', '1');
INSERT INTO `log` VALUES ('3371', 'user1:显示业内销售人员薪酬', '2017-11-23 12:24:48', '21', '3', '1');
INSERT INTO `log` VALUES ('3372', 'user1:查看业内工厂工人薪酬', '2017-11-23 12:24:48', '21', '3', '1');
INSERT INTO `log` VALUES ('3373', 'user1:显示业内工厂工人薪酬', '2017-11-23 12:24:49', '21', '3', '1');
INSERT INTO `log` VALUES ('3374', 'user1:查看上季度结果', '2017-11-23 12:24:50', '21', '3', '1');
INSERT INTO `log` VALUES ('3375', 'user1:查看竞争力', '2017-11-23 12:24:53', '21', '3', '1');
INSERT INTO `log` VALUES ('3376', 'user1:无用库存', '2017-11-23 12:25:00', '21', '3', '1');
INSERT INTO `log` VALUES ('3377', 'user1:查看需求量预测操作', '2017-11-23 12:25:02', '21', '3', '1');
INSERT INTO `log` VALUES ('3378', 'user1:查看库存控制', '2017-11-23 12:25:05', '21', '3', '1');
INSERT INTO `log` VALUES ('3379', 'user1:查看运行产能操作', '2017-11-23 12:25:05', '21', '3', '1');
INSERT INTO `log` VALUES ('3380', 'user1:查看固定产能操作', '2017-11-23 12:25:07', '21', '3', '1');
INSERT INTO `log` VALUES ('3381', 'user1:查看内部持股操作', '2017-11-23 12:25:09', '21', '3', '1');
INSERT INTO `log` VALUES ('3382', 'user1:查看定期存款操作', '2017-11-23 12:25:10', '21', '3', '1');
INSERT INTO `log` VALUES ('3383', 'user1:查看现金流表操作', '2017-11-23 12:25:11', '21', '3', '1');
INSERT INTO `log` VALUES ('3384', 'user1:查看利润表操作', '2017-11-23 12:25:13', '21', '3', '1');
INSERT INTO `log` VALUES ('3385', 'user1:查看资产负债表操作', '2017-11-23 12:25:14', '21', '3', '1');
INSERT INTO `log` VALUES ('3386', 'user1:查看目标策略操作', '2017-11-23 12:25:29', '21', '3', '1');
INSERT INTO `log` VALUES ('3387', 'user1:查看决策汇总操作', '2017-11-23 12:25:30', '21', '3', '1');
INSERT INTO `log` VALUES ('3388', 'user1:操作媒体投放', '2017-11-23 12:25:56', '21', '3', '1');
INSERT INTO `log` VALUES ('3389', 'user1:查看媒体偏好', '2017-11-23 12:25:58', '21', '3', '1');
INSERT INTO `log` VALUES ('3390', 'user1:学生登录操作', '2017-11-23 12:27:24', '21', '3', '1');
INSERT INTO `log` VALUES ('3391', 'user1:学生登录操作', '2017-11-23 12:48:27', '21', '3', '1');
INSERT INTO `log` VALUES ('3392', 'user1:学生登录操作', '2017-11-23 13:33:40', '21', '3', '1');
INSERT INTO `log` VALUES ('3393', 'user1:查看业内销售人员薪酬', '2017-11-23 13:40:19', '21', '3', '1');
INSERT INTO `log` VALUES ('3394', 'user1:显示业内销售人员薪酬', '2017-11-23 13:40:19', '21', '3', '1');
INSERT INTO `log` VALUES ('3395', 'user1:品牌评价', '2017-11-23 13:40:27', '21', '3', '1');
INSERT INTO `log` VALUES ('3396', 'user1:品牌盈利能力', '2017-11-23 13:40:27', '21', '3', '1');
INSERT INTO `log` VALUES ('3397', 'user1:竞争对手的品牌', '2017-11-23 13:40:39', '21', '3', '1');
INSERT INTO `log` VALUES ('3398', 'user1:查看品牌管理操作', '2017-11-23 13:40:43', '21', '3', '1');
INSERT INTO `log` VALUES ('3399', 'user1:竞争对手的价格', '2017-11-23 13:40:59', '21', '3', '1');
INSERT INTO `log` VALUES ('3400', 'user1:竞争对手的广告', '2017-11-23 13:41:12', '21', '3', '1');
INSERT INTO `log` VALUES ('3401', 'user1:核查广告语', '2017-11-23 13:47:22', '21', '3', '1');
INSERT INTO `log` VALUES ('3402', 'user1:查看媒体偏好', '2017-11-23 13:47:25', '21', '3', '1');
INSERT INTO `log` VALUES ('3403', 'user1:竞争对手的价格', '2017-11-23 13:47:34', '21', '3', '1');
INSERT INTO `log` VALUES ('3404', 'user1:生产成本', '2017-11-23 13:47:36', '21', '3', '1');
INSERT INTO `log` VALUES ('3405', 'user1:生产成本', '2017-11-23 13:48:50', '21', '3', '1');
INSERT INTO `log` VALUES ('3406', 'user1:品牌盈利能力', '2017-11-23 14:12:14', '21', '3', '1');
INSERT INTO `log` VALUES ('3407', 'user1:设计广告', '2017-11-23 14:15:11', '21', '3', '1');
INSERT INTO `log` VALUES ('3408', 'user1:生产成本', '2017-11-23 14:15:26', '21', '3', '1');
INSERT INTO `log` VALUES ('3409', 'user1:竞争对手的价格', '2017-11-23 14:15:27', '21', '3', '1');
INSERT INTO `log` VALUES ('3410', 'user1:价格及销售优先级别', '2017-11-23 14:15:28', '21', '3', '1');
INSERT INTO `log` VALUES ('3411', 'user1:竞争对手的品牌', '2017-11-23 14:15:31', '21', '3', '1');
INSERT INTO `log` VALUES ('3412', 'user1:品牌评价', '2017-11-23 14:15:32', '21', '3', '1');
INSERT INTO `log` VALUES ('3413', 'user1:品牌盈利能力', '2017-11-23 14:15:33', '21', '3', '1');
INSERT INTO `log` VALUES ('3414', 'user1:品牌评价', '2017-11-23 14:16:59', '21', '3', '1');
INSERT INTO `log` VALUES ('3415', 'user1:显示产品定价', '2017-11-23 14:22:34', '21', '3', '1');
INSERT INTO `log` VALUES ('3416', 'user1:查看实体销售操作', '2017-11-23 14:28:22', '21', '3', '1');
INSERT INTO `log` VALUES ('3417', 'user1:修改开设实体销售中心', '2017-11-23 14:28:29', '21', '3', '1');
INSERT INTO `log` VALUES ('3418', 'user1:显示业内销售人员薪酬', '2017-11-23 14:29:03', '21', '3', '1');
INSERT INTO `log` VALUES ('3419', 'user1:更新业内销售人员薪酬', '2017-11-23 14:29:11', '21', '3', '1');
INSERT INTO `log` VALUES ('3420', 'user1:查看网络销售中心操作', '2017-11-23 14:29:23', '21', '3', '1');
INSERT INTO `log` VALUES ('3421', 'user1:修改开设网络销售中心', '2017-11-23 14:29:27', '21', '3', '1');
INSERT INTO `log` VALUES ('3422', 'user1:查看实体销售操作', '2017-11-23 14:29:42', '21', '3', '1');
INSERT INTO `log` VALUES ('3423', 'user1:查看客户需求', '2017-11-23 14:36:06', '21', '3', '1');
INSERT INTO `log` VALUES ('3424', 'user1:学生登录操作', '2017-11-23 14:52:53', '21', '3', '1');
INSERT INTO `log` VALUES ('3425', 'user1:学生登录操作', '2017-11-23 16:15:56', '21', '3', '1');
INSERT INTO `log` VALUES ('3426', 'user1:学生登录操作', '2017-11-23 16:18:16', '21', '3', '1');
INSERT INTO `log` VALUES ('3427', 'user1:查看资产负债表操作', '2017-11-23 16:18:20', '21', '3', '1');
INSERT INTO `log` VALUES ('3428', 'user2:学生登录操作', '2017-11-23 16:18:47', '22', '3', '1');
INSERT INTO `log` VALUES ('3429', 'user2:查看固定产能操作', '2017-11-23 16:18:54', '22', '3', '1');
INSERT INTO `log` VALUES ('3430', 'user2:学生登录操作', '2017-11-23 16:20:19', '22', '3', '1');
INSERT INTO `log` VALUES ('3431', 'user2:查看固定产能操作', '2017-11-23 16:20:36', '22', '3', '1');
INSERT INTO `log` VALUES ('3432', 'user2:学生登录操作', '2017-11-23 16:23:06', '22', '3', '1');
INSERT INTO `log` VALUES ('3433', 'user2:查看固定产能操作', '2017-11-23 16:23:12', '22', '3', '1');
INSERT INTO `log` VALUES ('3434', 'user1:学生登录操作', '2017-11-23 16:23:39', '21', '3', '1');
INSERT INTO `log` VALUES ('3435', 'user1:查看固定产能操作', '2017-11-23 16:23:43', '21', '3', '1');
INSERT INTO `log` VALUES ('3436', 'user1:学生登录操作', '2017-11-23 17:14:08', '21', '3', '1');
INSERT INTO `log` VALUES ('3437', 'user1:查看固定产能操作', '2017-11-23 17:14:12', '21', '3', '1');
INSERT INTO `log` VALUES ('3438', 'user1:学生登录操作', '2017-11-23 17:15:19', '21', '3', '1');
INSERT INTO `log` VALUES ('3439', 'user1:查看固定产能操作', '2017-11-23 17:15:23', '21', '3', '1');
INSERT INTO `log` VALUES ('3440', 'user1:学生登录操作', '2017-11-23 17:23:17', '21', '3', '1');
INSERT INTO `log` VALUES ('3441', 'user1:查看利润表操作', '2017-11-23 17:23:24', '21', '3', '1');
INSERT INTO `log` VALUES ('3442', 'user1:学生登录操作', '2017-11-23 17:24:41', '21', '3', '1');
INSERT INTO `log` VALUES ('3443', 'user1:学生登录操作', '2017-11-23 17:26:06', '21', '3', '1');
INSERT INTO `log` VALUES ('3444', 'user1:学生登录操作', '2017-11-23 17:27:15', '21', '3', '1');
INSERT INTO `log` VALUES ('3445', 'user1:查看利润表操作', '2017-11-23 17:27:20', '21', '3', '1');
INSERT INTO `log` VALUES ('3446', 'user1:查看利润表操作', '2017-11-23 17:29:13', '21', '3', '1');
INSERT INTO `log` VALUES ('3447', 'user1:学生登录操作', '2017-11-23 17:32:04', '21', '3', '1');
INSERT INTO `log` VALUES ('3448', 'user1:学生登录操作', '2017-11-23 17:33:41', '21', '3', '1');
INSERT INTO `log` VALUES ('3449', 'user1:学生登录操作', '2017-11-23 17:35:55', '21', '3', '1');
INSERT INTO `log` VALUES ('3450', 'user1:查看利润表操作', '2017-11-23 17:36:02', '21', '3', '1');
INSERT INTO `log` VALUES ('3451', 'user1:查看现金流表操作', '2017-11-23 17:36:52', '21', '3', '1');
INSERT INTO `log` VALUES ('3452', 'user1:查看内部持股操作', '2017-11-23 17:36:58', '21', '3', '1');
INSERT INTO `log` VALUES ('3453', 'user1:学生登录操作', '2017-11-23 17:38:17', '21', '3', '1');
INSERT INTO `log` VALUES ('3454', 'user1:学生登录操作', '2017-11-23 17:43:14', '21', '3', '1');
INSERT INTO `log` VALUES ('3455', 'user1:学生登录操作', '2017-11-23 17:44:19', '21', '3', '1');
INSERT INTO `log` VALUES ('3456', 'user1:学生登录操作', '2017-11-23 17:49:46', '21', '3', '1');
INSERT INTO `log` VALUES ('3457', 'user1:学生登录操作', '2017-11-23 17:57:16', '21', '3', '1');
INSERT INTO `log` VALUES ('3458', 'user1:查看现金流表操作', '2017-11-23 17:57:38', '21', '3', '1');
INSERT INTO `log` VALUES ('3459', 'user1:查看利润表操作', '2017-11-23 17:57:44', '21', '3', '1');
INSERT INTO `log` VALUES ('3460', 'user1:查看资产负债表操作', '2017-11-23 17:57:45', '21', '3', '1');
INSERT INTO `log` VALUES ('3461', 'user1:学生登录操作', '2017-11-23 18:00:06', '21', '3', '1');
INSERT INTO `log` VALUES ('3462', 'user1:查看资产负债表操作', '2017-11-23 18:00:08', '21', '3', '1');
INSERT INTO `log` VALUES ('3463', 'user1:查看现金流表操作', '2017-11-23 18:00:13', '21', '3', '1');
INSERT INTO `log` VALUES ('3464', 'user1:学生登录操作', '2017-11-23 18:02:01', '21', '3', '1');
INSERT INTO `log` VALUES ('3465', 'user1:查看现金流表操作', '2017-11-23 18:02:02', '21', '3', '1');
INSERT INTO `log` VALUES ('3466', 'user1:学生登录操作', '2017-11-23 18:04:14', '21', '3', '1');
INSERT INTO `log` VALUES ('3467', 'user1:学生登录操作', '2017-11-23 18:05:52', '21', '3', '1');
INSERT INTO `log` VALUES ('3468', 'user1:学生登录操作', '2017-11-23 18:06:55', '21', '3', '1');
INSERT INTO `log` VALUES ('3469', 'user1:查看现金流表操作', '2017-11-23 18:07:03', '21', '3', '1');
INSERT INTO `log` VALUES ('3470', 'user1:查看现金流表操作', '2017-11-23 18:08:09', '21', '3', '1');
INSERT INTO `log` VALUES ('3471', 'user1:学生登录操作', '2017-11-23 18:10:45', '21', '3', '1');
INSERT INTO `log` VALUES ('3472', 'user1:查看现金流表操作', '2017-11-23 18:10:45', '21', '3', '1');
INSERT INTO `log` VALUES ('3473', 'user1:学生登录操作', '2017-11-23 18:12:04', '21', '3', '1');
INSERT INTO `log` VALUES ('3474', 'user1:查看现金流表操作', '2017-11-23 18:12:04', '21', '3', '1');
INSERT INTO `log` VALUES ('3475', 'user1:学生登录操作', '2017-11-23 18:14:49', '21', '3', '1');
INSERT INTO `log` VALUES ('3476', 'user1:查看现金流表操作', '2017-11-23 18:14:49', '21', '3', '1');
INSERT INTO `log` VALUES ('3477', 'user1:学生登录操作', '2017-11-23 18:18:40', '21', '3', '1');
INSERT INTO `log` VALUES ('3478', 'user1:查看现金流表操作', '2017-11-23 18:18:41', '21', '3', '1');
INSERT INTO `log` VALUES ('3479', 'user1:学生登录操作', '2017-11-23 18:21:31', '21', '3', '1');
INSERT INTO `log` VALUES ('3480', 'user1:查看现金流表操作', '2017-11-23 18:21:32', '21', '3', '1');
INSERT INTO `log` VALUES ('3481', 'user1:学生登录操作', '2017-11-23 18:23:19', '21', '3', '1');
INSERT INTO `log` VALUES ('3482', 'user1:查看现金流表操作', '2017-11-23 18:23:19', '21', '3', '1');
INSERT INTO `log` VALUES ('3483', 'user1:查看利润表操作', '2017-11-23 18:23:23', '21', '3', '1');
INSERT INTO `log` VALUES ('3484', 'user1:查看资产负债表操作', '2017-11-23 18:23:24', '21', '3', '1');
INSERT INTO `log` VALUES ('3485', 'user1:学生登录操作', '2017-11-23 18:29:00', '21', '3', '1');
INSERT INTO `log` VALUES ('3486', 'user1:查看现金流表操作', '2017-11-23 18:30:07', '21', '3', '1');
INSERT INTO `log` VALUES ('3487', 'user1:查看利润表操作', '2017-11-23 18:30:10', '21', '3', '1');
INSERT INTO `log` VALUES ('3488', 'user1:查看资产负债表操作', '2017-11-23 18:30:10', '21', '3', '1');
INSERT INTO `log` VALUES ('3489', 'user1:查看现金流表操作', '2017-11-23 18:32:10', '21', '3', '1');
INSERT INTO `log` VALUES ('3490', 'user1:查看定期存款操作', '2017-11-23 18:32:25', '21', '3', '1');
INSERT INTO `log` VALUES ('3491', 'user1:查看内部持股操作', '2017-11-23 18:32:26', '21', '3', '1');
INSERT INTO `log` VALUES ('3492', 'user1:查看利润表操作', '2017-11-23 18:32:29', '21', '3', '1');
INSERT INTO `log` VALUES ('3493', 'user1:学生登录操作', '2017-11-25 11:42:10', '21', '3', '1');
INSERT INTO `log` VALUES ('3494', 'user1:查看业内销售人员薪酬', '2017-11-25 11:42:16', '21', '3', '1');
INSERT INTO `log` VALUES ('3495', 'user1:显示业内销售人员薪酬', '2017-11-25 11:42:17', '21', '3', '1');
INSERT INTO `log` VALUES ('3496', 'user1:查看业内工厂工人薪酬', '2017-11-25 11:42:18', '21', '3', '1');
INSERT INTO `log` VALUES ('3497', 'user1:显示业内工厂工人薪酬', '2017-11-25 11:42:18', '21', '3', '1');
INSERT INTO `log` VALUES ('3498', 'user1:课程介绍', '2017-11-25 11:42:22', '21', '3', '1');
INSERT INTO `log` VALUES ('3499', 'user1:品牌盈利能力', '2017-11-25 11:42:53', '21', '3', '1');
INSERT INTO `log` VALUES ('3500', 'user1:学生登录操作', '2017-11-25 11:49:37', '21', '3', '1');
INSERT INTO `log` VALUES ('3501', 'user1:学生登录操作', '2017-11-25 11:50:46', '21', '3', '1');
INSERT INTO `log` VALUES ('3502', 'user1:学生登录操作', '2017-11-25 11:53:13', '21', '3', '1');
INSERT INTO `log` VALUES ('3503', 'user1:学生登录操作', '2017-11-25 11:58:40', '21', '3', '1');
INSERT INTO `log` VALUES ('3504', 'user1:学生登录操作', '2017-11-25 12:02:00', '21', '3', '1');
INSERT INTO `log` VALUES ('3505', 'user1:学生登录操作', '2017-11-25 12:03:36', '21', '3', '1');
INSERT INTO `log` VALUES ('3506', 'user1:学生登录操作', '2017-11-25 12:04:44', '21', '3', '1');
INSERT INTO `log` VALUES ('3507', 'user1:学生登录操作', '2017-11-25 12:08:47', '21', '3', '1');
INSERT INTO `log` VALUES ('3508', 'user1:品牌盈利能力', '2017-11-25 12:10:03', '21', '3', '1');
INSERT INTO `log` VALUES ('3509', 'user1:品牌评价', '2017-11-25 12:10:04', '21', '3', '1');
INSERT INTO `log` VALUES ('3510', 'user1:学生登录操作', '2017-11-25 12:11:31', '21', '3', '1');
INSERT INTO `log` VALUES ('3511', 'user1:学生登录操作', '2017-11-25 12:12:41', '21', '3', '1');
INSERT INTO `log` VALUES ('3512', 'user1:品牌盈利能力', '2017-11-25 12:13:36', '21', '3', '1');
INSERT INTO `log` VALUES ('3513', 'user1:品牌评价', '2017-11-25 12:13:37', '21', '3', '1');
INSERT INTO `log` VALUES ('3514', 'user1:竞争对手的品牌', '2017-11-25 12:13:37', '21', '3', '1');
INSERT INTO `log` VALUES ('3515', 'user1:查看品牌管理操作', '2017-11-25 12:13:38', '21', '3', '1');
INSERT INTO `log` VALUES ('3516', 'user1:学生登录操作', '2017-11-25 12:14:37', '21', '3', '1');
INSERT INTO `log` VALUES ('3517', 'user1:学生登录操作', '2017-11-29 16:09:50', '21', '3', '1');
INSERT INTO `log` VALUES ('3518', 'user1:学生登录操作', '2017-11-29 16:15:39', '21', '3', '1');
INSERT INTO `log` VALUES ('3519', 'user2:学生登录操作', '2017-11-29 16:16:14', '22', '3', '1');
INSERT INTO `log` VALUES ('3520', 'user1:学生登录操作', '2017-12-21 15:06:47', '21', '3', '1');
INSERT INTO `log` VALUES ('3521', 'user1:学生登录操作', '2017-12-28 13:56:29', '21', '2', '1');
INSERT INTO `log` VALUES ('3522', 'user1:查看客户需求', '2017-12-28 13:56:36', '21', '2', '1');
INSERT INTO `log` VALUES ('3523', 'user1:查看产品用途', '2017-12-28 13:56:37', '21', '2', '1');
INSERT INTO `log` VALUES ('3524', 'user1:查看品牌管理操作', '2017-12-28 13:56:37', '21', '2', '1');
INSERT INTO `log` VALUES ('3525', 'user1:学生登录操作', '2017-12-30 18:08:17', '21', '2', '1');
INSERT INTO `log` VALUES ('3526', 'user1:查看客户需求', '2017-12-30 18:08:25', '21', '2', '1');
INSERT INTO `log` VALUES ('3527', 'user1:查看产品用途', '2017-12-30 18:08:26', '21', '2', '1');
INSERT INTO `log` VALUES ('3528', 'user1:查看品牌管理操作', '2017-12-30 18:08:26', '21', '2', '1');
INSERT INTO `log` VALUES ('3529', 'user1:品牌盈利能力', '2017-12-30 18:08:44', '21', '2', '1');
INSERT INTO `log` VALUES ('3530', 'user1:品牌评价', '2017-12-30 18:08:44', '21', '2', '1');
INSERT INTO `log` VALUES ('3531', 'user1:竞争对手的品牌', '2017-12-30 18:08:45', '21', '2', '1');
INSERT INTO `log` VALUES ('3532', 'user1:竞争对手的价格', '2017-12-30 18:08:47', '21', '2', '1');
INSERT INTO `log` VALUES ('3533', 'user1:生产成本', '2017-12-30 18:08:47', '21', '2', '1');
INSERT INTO `log` VALUES ('3534', 'user1:可销售品牌', '2017-12-30 18:08:47', '21', '2', '1');
INSERT INTO `log` VALUES ('3535', 'user1:竞争对手的广告', '2017-12-30 18:08:50', '21', '2', '1');
INSERT INTO `log` VALUES ('3536', 'user1:设计广告', '2017-12-30 18:08:51', '21', '2', '1');
INSERT INTO `log` VALUES ('3537', 'user1:查看媒体偏好', '2017-12-30 18:08:52', '21', '2', '1');
INSERT INTO `log` VALUES ('3538', 'user1:核查广告语', '2017-12-30 18:08:57', '21', '2', '1');
INSERT INTO `log` VALUES ('3539', 'user1:查看业内销售人员薪酬', '2017-12-30 18:09:10', '21', '2', '1');
INSERT INTO `log` VALUES ('3540', 'user1:查看业内工厂工人薪酬', '2017-12-30 18:09:11', '21', '2', '1');
INSERT INTO `log` VALUES ('3541', 'user1:显示业内销售人员薪酬', '2017-12-30 18:09:11', '21', '2', '1');
INSERT INTO `log` VALUES ('3542', 'user1:显示业内工厂工人薪酬', '2017-12-30 18:09:12', '21', '2', '1');
INSERT INTO `log` VALUES ('3543', 'user1:查看上季度结果', '2017-12-30 18:09:15', '21', '2', '1');
INSERT INTO `log` VALUES ('3544', 'user1:查看竞争力', '2017-12-30 18:09:15', '21', '2', '1');
INSERT INTO `log` VALUES ('3545', 'user1:无用库存', '2017-12-30 18:09:16', '21', '2', '1');
INSERT INTO `log` VALUES ('3546', 'user1:查看需求量预测操作', '2017-12-30 18:09:17', '21', '2', '1');
INSERT INTO `log` VALUES ('3547', 'user1:查看库存控制', '2017-12-30 18:09:18', '21', '2', '1');
INSERT INTO `log` VALUES ('3548', 'user1:查看运行产能操作', '2017-12-30 18:09:34', '21', '2', '1');
INSERT INTO `log` VALUES ('3549', 'user1:查看固定产能操作', '2017-12-30 18:09:40', '21', '2', '1');
INSERT INTO `log` VALUES ('3550', 'user1:学生登录操作', '2017-12-30 18:14:26', '21', '2', '1');
INSERT INTO `log` VALUES ('3551', 'user1:品牌盈利能力', '2017-12-30 18:15:17', '21', '2', '1');
INSERT INTO `log` VALUES ('3552', 'user1:品牌评价', '2017-12-30 18:15:32', '21', '2', '1');
INSERT INTO `log` VALUES ('3553', 'user1:竞争对手的品牌', '2017-12-30 18:15:35', '21', '2', '1');
INSERT INTO `log` VALUES ('3554', 'user1:查看品牌管理操作', '2017-12-30 18:15:36', '21', '2', '1');
INSERT INTO `log` VALUES ('3555', 'user1:查看市场规模', '2017-12-30 18:17:44', '21', '2', '1');
INSERT INTO `log` VALUES ('3556', 'user1:学生登录操作', '2017-12-30 18:29:54', '21', '2', '1');
INSERT INTO `log` VALUES ('3557', 'user1:查看市场规模', '2017-12-30 18:29:59', '21', '2', '1');
INSERT INTO `log` VALUES ('3558', 'user1:学生登录操作', '2017-12-30 18:37:27', '21', '2', '1');
INSERT INTO `log` VALUES ('3559', 'user1:查看市场规模', '2017-12-30 18:37:34', '21', '2', '1');
INSERT INTO `log` VALUES ('3560', 'user1:学生登录操作', '2017-12-30 18:39:47', '21', '2', '1');
INSERT INTO `log` VALUES ('3561', 'user1:学生登录操作', '2017-12-30 18:43:47', '21', '2', '1');
INSERT INTO `log` VALUES ('3562', 'user1:查看品牌管理操作', '2017-12-30 18:44:23', '21', '2', '1');
INSERT INTO `log` VALUES ('3563', 'user1:查看产品用途', '2017-12-30 18:44:26', '21', '2', '1');
INSERT INTO `log` VALUES ('3564', 'user1:查看客户需求', '2017-12-30 18:44:27', '21', '2', '1');
INSERT INTO `log` VALUES ('3565', 'user1:查看用户愿意支付的价格', '2017-12-30 18:44:29', '21', '2', '1');
INSERT INTO `log` VALUES ('3566', 'user1:显示销货成本', '2017-12-30 18:44:30', '21', '2', '1');
INSERT INTO `log` VALUES ('3567', 'user1:显示产品定价', '2017-12-30 18:44:31', '21', '2', '1');
INSERT INTO `log` VALUES ('3568', 'user1:查看员工薪酬', '2017-12-30 18:44:44', '21', '2', '1');
INSERT INTO `log` VALUES ('3569', 'user1:显示业内销售人员薪酬', '2017-12-30 18:44:45', '21', '2', '1');
INSERT INTO `log` VALUES ('3570', 'user1:显示业内工厂工人薪酬', '2017-12-30 18:44:45', '21', '2', '1');
INSERT INTO `log` VALUES ('3571', 'user1:查看市场规模', '2017-12-30 18:44:48', '21', '2', '1');
INSERT INTO `log` VALUES ('3572', 'user1:查看实体销售操作', '2017-12-30 18:44:49', '21', '2', '1');
INSERT INTO `log` VALUES ('3573', 'user1:查看网络销售中心操作', '2017-12-30 18:44:51', '21', '2', '1');
INSERT INTO `log` VALUES ('3574', 'user1:查看需求量预测操作', '2017-12-30 18:44:55', '21', '2', '1');
INSERT INTO `log` VALUES ('3575', 'user1:查看库存控制', '2017-12-30 18:44:56', '21', '2', '1');
INSERT INTO `log` VALUES ('3576', 'user1:查看运行产能操作', '2017-12-30 18:44:57', '21', '2', '1');
INSERT INTO `log` VALUES ('3577', 'user1:查看固定产能操作', '2017-12-30 18:44:58', '21', '2', '1');
INSERT INTO `log` VALUES ('3578', 'user1:查看内部持股操作', '2017-12-30 18:45:01', '21', '2', '1');
INSERT INTO `log` VALUES ('3579', 'user1:查看定期存款操作', '2017-12-30 18:45:01', '21', '2', '1');
INSERT INTO `log` VALUES ('3580', 'user1:查看现金流表操作', '2017-12-30 18:45:03', '21', '2', '1');
INSERT INTO `log` VALUES ('3581', 'user1:查看利润表操作', '2017-12-30 18:45:05', '21', '2', '1');
INSERT INTO `log` VALUES ('3582', 'user1:查看资产负债表操作', '2017-12-30 18:45:06', '21', '2', '1');
INSERT INTO `log` VALUES ('3583', 'user1:查看目标策略操作', '2017-12-30 18:45:09', '21', '2', '1');
INSERT INTO `log` VALUES ('3584', 'user1:查看决策汇总操作', '2017-12-30 18:45:22', '21', '2', '1');
INSERT INTO `log` VALUES ('3585', 'user1:品牌盈利能力', '2017-12-30 18:46:11', '21', '2', '1');
INSERT INTO `log` VALUES ('3586', 'user1:品牌评价', '2017-12-30 18:46:12', '21', '2', '1');
INSERT INTO `log` VALUES ('3587', 'user1:竞争对手的品牌', '2017-12-30 18:46:12', '21', '2', '1');
INSERT INTO `log` VALUES ('3588', 'user1:学生登录操作', '2017-12-31 19:46:57', '21', '2', '1');
INSERT INTO `log` VALUES ('3589', 'user1:查看客户需求', '2017-12-31 19:47:08', '21', '2', '1');
INSERT INTO `log` VALUES ('3590', 'user1:查看产品用途', '2017-12-31 19:47:09', '21', '2', '1');
INSERT INTO `log` VALUES ('3591', 'user1:查看品牌管理操作', '2017-12-31 19:47:09', '21', '2', '1');
INSERT INTO `log` VALUES ('3592', 'user1:查看市场规模', '2017-12-31 19:47:14', '21', '2', '1');
INSERT INTO `log` VALUES ('3593', 'user1:查看实体销售操作', '2017-12-31 19:47:15', '21', '2', '1');
INSERT INTO `log` VALUES ('3594', 'user1:查看需求量预测操作', '2017-12-31 19:47:59', '21', '2', '1');
INSERT INTO `log` VALUES ('3595', 'user1:查看库存控制', '2017-12-31 19:48:02', '21', '2', '1');
INSERT INTO `log` VALUES ('3596', 'user1:查看运行产能操作', '2017-12-31 19:48:03', '21', '2', '1');
INSERT INTO `log` VALUES ('3597', 'user1:查看固定产能操作', '2017-12-31 19:48:03', '21', '2', '1');
INSERT INTO `log` VALUES ('3598', 'user1:品牌盈利能力', '2017-12-31 19:48:07', '21', '2', '1');
INSERT INTO `log` VALUES ('3599', 'user1:查看实体销售操作', '2017-12-31 19:49:09', '21', '2', '1');
INSERT INTO `log` VALUES ('3600', 'user1:查看网络销售中心操作', '2017-12-31 19:49:14', '21', '2', '1');
INSERT INTO `log` VALUES ('3601', 'user1:学生登录操作', '2017-12-31 19:59:32', '21', '2', '1');
INSERT INTO `log` VALUES ('3602', 'user1:查看市场规模', '2017-12-31 19:59:37', '21', '2', '1');
INSERT INTO `log` VALUES ('3603', 'user1:查看实体销售操作', '2017-12-31 19:59:37', '21', '2', '1');
INSERT INTO `log` VALUES ('3604', 'user1:查看网络销售中心操作', '2017-12-31 19:59:59', '21', '2', '1');
INSERT INTO `log` VALUES ('3605', 'user1:学生登录操作', '2017-12-31 20:00:48', '21', '2', '1');
INSERT INTO `log` VALUES ('3606', 'user1:查看网络销售中心操作', '2017-12-31 20:01:05', '21', '2', '1');
INSERT INTO `log` VALUES ('3607', 'user1:学生登录操作', '2017-12-31 20:13:10', '21', '2', '1');
INSERT INTO `log` VALUES ('3608', 'user1:学生登录操作', '2017-12-31 20:23:47', '21', '2', '1');
INSERT INTO `log` VALUES ('3609', 'user1:查看实体销售操作', '2017-12-31 20:23:53', '21', '2', '1');
INSERT INTO `log` VALUES ('3610', 'user1:学生登录操作', '2017-12-31 20:34:48', '21', '2', '1');
INSERT INTO `log` VALUES ('3611', 'user1:查看市场规模', '2017-12-31 20:34:53', '21', '2', '1');
INSERT INTO `log` VALUES ('3612', 'user1:查看实体销售操作', '2017-12-31 20:34:55', '21', '2', '1');
INSERT INTO `log` VALUES ('3613', 'user1:查看网络销售中心操作', '2017-12-31 20:35:05', '21', '2', '1');
INSERT INTO `log` VALUES ('3614', 'user1:查看网络销售中心操作', '2017-12-31 20:37:33', '21', '2', '1');
INSERT INTO `log` VALUES ('3615', 'user1:查看实体销售操作', '2017-12-31 20:43:55', '21', '2', '1');
INSERT INTO `log` VALUES ('3616', 'user1:查看网络销售中心操作', '2017-12-31 20:43:56', '21', '2', '1');
INSERT INTO `log` VALUES ('3617', 'user1:修改开设网络销售中心', '2017-12-31 20:44:03', '21', '2', '1');
INSERT INTO `log` VALUES ('3618', 'user1:学生登录操作', '2017-12-31 20:45:03', '21', '2', '1');
INSERT INTO `log` VALUES ('3619', 'user1:查看网络销售中心操作', '2017-12-31 20:45:08', '21', '2', '1');
INSERT INTO `log` VALUES ('3620', 'user1:修改开设网络销售中心', '2017-12-31 20:45:12', '21', '2', '1');
INSERT INTO `log` VALUES ('3621', 'user1:查看实体销售操作', '2017-12-31 20:45:28', '21', '2', '1');
INSERT INTO `log` VALUES ('3622', 'user1:学生登录操作', '2017-12-31 20:46:59', '21', '2', '1');
INSERT INTO `log` VALUES ('3623', 'user1:查看网络销售中心操作', '2017-12-31 20:47:04', '21', '2', '1');
INSERT INTO `log` VALUES ('3624', 'user1:修改开设网络销售中心', '2017-12-31 20:47:12', '21', '2', '1');
INSERT INTO `log` VALUES ('3625', 'user1:学生登录操作', '2018-01-02 09:50:08', '21', '2', '1');
INSERT INTO `log` VALUES ('3626', 'user1:查看客户需求', '2018-01-02 09:50:15', '21', '2', '1');
INSERT INTO `log` VALUES ('3627', 'user1:查看产品用途', '2018-01-02 09:50:16', '21', '2', '1');
INSERT INTO `log` VALUES ('3628', 'user1:查看品牌管理操作', '2018-01-02 09:50:17', '21', '2', '1');
INSERT INTO `log` VALUES ('3629', 'user1:查看用户愿意支付的价格', '2018-01-02 09:50:18', '21', '2', '1');
INSERT INTO `log` VALUES ('3630', 'user1:显示销货成本', '2018-01-02 09:50:18', '21', '2', '1');
INSERT INTO `log` VALUES ('3631', 'user1:显示产品定价', '2018-01-02 09:50:19', '21', '2', '1');
INSERT INTO `log` VALUES ('3632', 'user1:品牌盈利能力', '2018-01-02 09:50:45', '21', '2', '1');
INSERT INTO `log` VALUES ('3633', 'user1:品牌评价', '2018-01-02 09:50:46', '21', '2', '1');
INSERT INTO `log` VALUES ('3634', 'user1:竞争对手的品牌', '2018-01-02 09:50:47', '21', '2', '1');
INSERT INTO `log` VALUES ('3635', 'user1:竞争对手的价格', '2018-01-02 09:50:49', '21', '2', '1');
INSERT INTO `log` VALUES ('3636', 'user1:生产成本', '2018-01-02 09:50:50', '21', '2', '1');
INSERT INTO `log` VALUES ('3637', 'user1:可销售品牌', '2018-01-02 09:50:50', '21', '2', '1');
INSERT INTO `log` VALUES ('3638', 'user1:学生登录操作', '2018-01-02 09:54:37', '21', '2', '1');
INSERT INTO `log` VALUES ('3639', 'user1:查看实体销售操作', '2018-01-02 09:54:58', '21', '2', '1');
INSERT INTO `log` VALUES ('3640', 'user1:查看网络销售中心操作', '2018-01-02 09:55:22', '21', '2', '1');
INSERT INTO `log` VALUES ('3641', 'user1:查看业内销售人员薪酬', '2018-01-02 09:55:57', '21', '2', '1');
INSERT INTO `log` VALUES ('3642', 'user1:显示业内销售人员薪酬', '2018-01-02 09:55:58', '21', '2', '1');
INSERT INTO `log` VALUES ('3643', 'user1:查看业内工厂工人薪酬', '2018-01-02 09:55:58', '21', '2', '1');
INSERT INTO `log` VALUES ('3644', 'user1:显示业内工厂工人薪酬', '2018-01-02 09:55:59', '21', '2', '1');
INSERT INTO `log` VALUES ('3645', 'user1:查看上季度结果', '2018-01-02 09:56:10', '21', '2', '1');
INSERT INTO `log` VALUES ('3646', 'user1:查看竞争力', '2018-01-02 09:56:10', '21', '2', '1');
INSERT INTO `log` VALUES ('3647', 'user1:无用库存', '2018-01-02 09:56:13', '21', '2', '1');
INSERT INTO `log` VALUES ('3648', 'user1:查看需求量预测操作', '2018-01-02 09:56:14', '21', '2', '1');
INSERT INTO `log` VALUES ('3649', 'user1:查看库存控制', '2018-01-02 09:56:15', '21', '2', '1');
INSERT INTO `log` VALUES ('3650', 'user1:查看运行产能操作', '2018-01-02 09:56:16', '21', '2', '1');
INSERT INTO `log` VALUES ('3651', 'user1:查看固定产能操作', '2018-01-02 09:56:16', '21', '2', '1');
INSERT INTO `log` VALUES ('3652', 'user1:查看实体销售操作', '2018-01-02 10:00:53', '21', '2', '1');
INSERT INTO `log` VALUES ('3653', 'user1:查看网络销售中心操作', '2018-01-02 10:00:59', '21', '2', '1');
INSERT INTO `log` VALUES ('3654', 'user1:学生登录操作', '2018-01-02 12:33:18', '21', '2', '1');
INSERT INTO `log` VALUES ('3655', 'user1:查看实体销售操作', '2018-01-02 12:33:23', '21', '2', '1');
INSERT INTO `log` VALUES ('3656', 'user1:查看网络销售中心操作', '2018-01-02 12:33:33', '21', '2', '1');
INSERT INTO `log` VALUES ('3657', 'user1:学生登录操作', '2018-01-02 12:38:47', '21', '2', '1');
INSERT INTO `log` VALUES ('3658', 'user1:查看网络销售中心操作', '2018-01-02 12:38:52', '21', '2', '1');
INSERT INTO `log` VALUES ('3659', 'user1:学生登录操作', '2018-01-02 12:39:49', '21', '2', '1');
INSERT INTO `log` VALUES ('3660', 'user1:查看网络销售中心操作', '2018-01-02 12:39:53', '21', '2', '1');
INSERT INTO `log` VALUES ('3661', 'user1:查看市场规模', '2018-01-02 12:40:33', '21', '2', '1');
INSERT INTO `log` VALUES ('3662', 'user1:查看实体销售操作', '2018-01-02 12:40:34', '21', '2', '1');
INSERT INTO `log` VALUES ('3663', 'user1:课程介绍', '2018-01-02 12:40:53', '21', '2', '1');
INSERT INTO `log` VALUES ('3664', 'user1:查看实体销售操作', '2018-01-02 12:41:39', '21', '2', '1');
INSERT INTO `log` VALUES ('3665', 'user1:查看网络销售中心操作', '2018-01-02 12:41:40', '21', '2', '1');
INSERT INTO `log` VALUES ('3666', 'user1:查看网络销售中心操作', '2018-01-02 12:42:54', '21', '2', '1');
INSERT INTO `log` VALUES ('3667', 'user1:查看实体销售操作', '2018-01-02 12:42:55', '21', '2', '1');
INSERT INTO `log` VALUES ('3668', 'user1:学生登录操作', '2018-01-02 12:59:53', '21', '2', '1');
INSERT INTO `log` VALUES ('3669', 'user1:学生登录操作', '2018-01-02 13:02:56', '21', '2', '1');
INSERT INTO `log` VALUES ('3670', 'user1:学生登录操作', '2018-01-02 13:05:44', '21', '2', '1');
INSERT INTO `log` VALUES ('3671', 'user1:查看实体销售操作', '2018-01-02 13:05:50', '21', '2', '1');
INSERT INTO `log` VALUES ('3672', 'user1:学生登录操作', '2018-01-02 13:06:56', '21', '2', '1');
INSERT INTO `log` VALUES ('3673', 'user1:学生登录操作', '2018-01-02 13:25:37', '21', '2', '1');
INSERT INTO `log` VALUES ('3674', 'user1:学生登录操作', '2018-01-02 13:28:12', '21', '2', '1');
INSERT INTO `log` VALUES ('3675', 'user1:查看实体销售操作', '2018-01-02 13:28:18', '21', '2', '1');
INSERT INTO `log` VALUES ('3676', 'user1:学生登录操作', '2018-01-02 13:29:22', '21', '2', '1');
INSERT INTO `log` VALUES ('3677', 'user1:查看市场规模', '2018-01-02 13:29:25', '21', '2', '1');
INSERT INTO `log` VALUES ('3678', 'user1:查看实体销售操作', '2018-01-02 13:29:25', '21', '2', '1');
INSERT INTO `log` VALUES ('3679', 'user1:查看网络销售中心操作', '2018-01-02 13:29:32', '21', '2', '1');
INSERT INTO `log` VALUES ('3680', 'user1:修改开设网络销售中心', '2018-01-02 13:29:44', '21', '2', '1');
INSERT INTO `log` VALUES ('3681', 'user1:查看实体销售操作', '2018-01-02 13:31:00', '21', '2', '1');
INSERT INTO `log` VALUES ('3682', 'user1:查看网络销售中心操作', '2018-01-02 13:32:56', '21', '2', '1');
INSERT INTO `log` VALUES ('3683', 'user1:修改开设网络销售中心', '2018-01-02 13:33:01', '21', '2', '1');
INSERT INTO `log` VALUES ('3684', 'user1:查看网络销售中心操作', '2018-01-02 13:34:17', '21', '2', '1');
INSERT INTO `log` VALUES ('3685', 'user1:修改公司名字', '2018-01-02 13:40:01', '21', '2', '1');
INSERT INTO `log` VALUES ('3686', 'user1:查看目标策略操作', '2018-01-02 13:40:02', '21', '2', '1');
INSERT INTO `log` VALUES ('3687', 'user1:查看客户需求', '2018-01-02 13:40:03', '21', '2', '1');
INSERT INTO `log` VALUES ('3688', 'user1:查看产品用途', '2018-01-02 13:40:03', '21', '2', '1');
INSERT INTO `log` VALUES ('3689', 'user1:查看用户愿意支付的价格', '2018-01-02 13:40:04', '21', '2', '1');
INSERT INTO `log` VALUES ('3690', 'user1:查看市场规模', '2018-01-02 13:40:04', '21', '2', '1');
INSERT INTO `log` VALUES ('3691', 'user1:查看职位分配操作', '2018-01-02 13:40:05', '21', '2', '1');
INSERT INTO `log` VALUES ('3692', 'user1:查看团队目标操作', '2018-01-02 13:40:06', '21', '2', '1');
INSERT INTO `log` VALUES ('3693', 'user1:查看员工薪酬', '2018-01-02 13:40:06', '21', '2', '1');
INSERT INTO `log` VALUES ('3694', 'user1:查看实体销售操作', '2018-01-02 13:40:07', '21', '2', '1');
INSERT INTO `log` VALUES ('3695', 'user1:查看网络销售中心操作', '2018-01-02 13:40:08', '21', '2', '1');
INSERT INTO `log` VALUES ('3696', 'user1:查看品牌管理操作', '2018-01-02 13:40:09', '21', '2', '1');
INSERT INTO `log` VALUES ('3697', 'user1:查看固定产能操作', '2018-01-02 13:40:10', '21', '2', '1');
INSERT INTO `log` VALUES ('3698', 'user1:查看内部持股操作', '2018-01-02 13:40:11', '21', '2', '1');
INSERT INTO `log` VALUES ('3699', 'user1:查看定期存款操作', '2018-01-02 13:40:12', '21', '2', '1');
INSERT INTO `log` VALUES ('3700', 'user1:查看现金流表操作', '2018-01-02 13:40:13', '21', '2', '1');
INSERT INTO `log` VALUES ('3701', 'user1:查看利润表操作', '2018-01-02 13:40:14', '21', '2', '1');
INSERT INTO `log` VALUES ('3702', 'user1:查看资产负债表操作', '2018-01-02 13:40:15', '21', '2', '1');
INSERT INTO `log` VALUES ('3703', 'user1:显示业内销售人员薪酬', '2018-01-02 13:40:54', '21', '2', '1');
INSERT INTO `log` VALUES ('3704', 'user1:显示业内工厂工人薪酬', '2018-01-02 13:40:55', '21', '2', '1');
INSERT INTO `log` VALUES ('3705', 'user1:查看需求量预测操作', '2018-01-02 13:41:02', '21', '2', '1');
INSERT INTO `log` VALUES ('3706', 'user1:查看库存控制', '2018-01-02 13:41:03', '21', '2', '1');
INSERT INTO `log` VALUES ('3707', 'user1:查看运行产能操作', '2018-01-02 13:41:05', '21', '2', '1');
INSERT INTO `log` VALUES ('3708', 'user1:查看现金流表操作', '2018-01-02 13:41:13', '21', '2', '1');
INSERT INTO `log` VALUES ('3709', 'user1:查看目标策略操作', '2018-01-02 13:41:49', '21', '2', '1');
INSERT INTO `log` VALUES ('3710', 'user1:查看决策汇总操作', '2018-01-02 13:41:51', '21', '2', '1');
INSERT INTO `log` VALUES ('3711', 'user1:学生登录操作', '2018-01-08 13:29:00', '21', '2', '1');
INSERT INTO `log` VALUES ('3712', 'user1:查看客户需求', '2018-01-08 13:29:06', '21', '2', '1');
INSERT INTO `log` VALUES ('3713', 'user1:查看产品用途', '2018-01-08 13:29:07', '21', '2', '1');
INSERT INTO `log` VALUES ('3714', 'user1:查看品牌管理操作', '2018-01-08 13:29:07', '21', '2', '1');
INSERT INTO `log` VALUES ('3715', 'user1:查看员工薪酬', '2018-01-08 13:29:09', '21', '2', '1');
INSERT INTO `log` VALUES ('3716', 'user1:显示业内销售人员薪酬', '2018-01-08 13:29:09', '21', '2', '1');
INSERT INTO `log` VALUES ('3717', 'user1:显示业内工厂工人薪酬', '2018-01-08 13:29:10', '21', '2', '1');
INSERT INTO `log` VALUES ('3718', 'user1:查看市场规模', '2018-01-08 13:29:12', '21', '2', '1');
INSERT INTO `log` VALUES ('3719', 'user1:查看实体销售操作', '2018-01-08 13:29:13', '21', '2', '1');
INSERT INTO `log` VALUES ('3720', 'user1:查看网络销售中心操作', '2018-01-08 13:29:15', '21', '2', '1');
INSERT INTO `log` VALUES ('3721', 'user1:查看运行产能操作', '2018-01-08 13:29:17', '21', '2', '1');
INSERT INTO `log` VALUES ('3722', 'user1:查看库存控制', '2018-01-08 13:29:18', '21', '2', '1');
INSERT INTO `log` VALUES ('3723', 'user1:查看固定产能操作', '2018-01-08 13:29:18', '21', '2', '1');
INSERT INTO `log` VALUES ('3724', 'user1:查看内部持股操作', '2018-01-08 13:29:19', '21', '2', '1');
INSERT INTO `log` VALUES ('3725', 'user1:查看定期存款操作', '2018-01-08 13:29:20', '21', '2', '1');
INSERT INTO `log` VALUES ('3726', 'user1:查看利润表操作', '2018-01-08 13:29:22', '21', '2', '1');
INSERT INTO `log` VALUES ('3727', 'user1:查看资产负债表操作', '2018-01-08 13:29:22', '21', '2', '1');
INSERT INTO `log` VALUES ('3728', 'user1:查看现金流表操作', '2018-01-08 13:29:22', '21', '2', '1');
INSERT INTO `log` VALUES ('3729', 'user1:查看目标策略操作', '2018-01-08 13:29:26', '21', '2', '1');
INSERT INTO `log` VALUES ('3730', 'user1:学生登录操作', '2018-01-08 21:35:25', '21', '2', '1');
INSERT INTO `log` VALUES ('3731', 'user1:品牌盈利能力', '2018-01-08 21:35:33', '21', '2', '1');
INSERT INTO `log` VALUES ('3732', 'user1:品牌评价', '2018-01-08 21:35:36', '21', '2', '1');
INSERT INTO `log` VALUES ('3733', 'user1:竞争对手的品牌', '2018-01-08 21:35:38', '21', '2', '1');
INSERT INTO `log` VALUES ('3734', 'user1:查看品牌管理操作', '2018-01-08 21:35:40', '21', '2', '1');
INSERT INTO `log` VALUES ('3735', 'user1:竞争对手的价格', '2018-01-08 21:35:43', '21', '2', '1');
INSERT INTO `log` VALUES ('3736', 'user1:生产成本', '2018-01-08 21:35:44', '21', '2', '1');
INSERT INTO `log` VALUES ('3737', 'user1:可销售品牌', '2018-01-08 21:35:45', '21', '2', '1');
INSERT INTO `log` VALUES ('3738', 'user1:竞争对手的广告', '2018-01-08 21:35:47', '21', '2', '1');
INSERT INTO `log` VALUES ('3739', 'user1:设计广告', '2018-01-08 21:35:50', '21', '2', '1');
INSERT INTO `log` VALUES ('3740', 'user1:查看媒体偏好', '2018-01-08 21:35:53', '21', '2', '1');
INSERT INTO `log` VALUES ('3741', 'user1:核查广告语', '2018-01-08 21:35:55', '21', '2', '1');
INSERT INTO `log` VALUES ('3742', 'user1:查看客户需求', '2018-01-08 21:36:03', '21', '2', '1');
INSERT INTO `log` VALUES ('3743', 'user1:查看产品用途', '2018-01-08 21:36:04', '21', '2', '1');
INSERT INTO `log` VALUES ('3744', 'user1:查看用户愿意支付的价格', '2018-01-08 21:36:06', '21', '2', '1');
INSERT INTO `log` VALUES ('3745', 'user1:显示销货成本', '2018-01-08 21:36:07', '21', '2', '1');
INSERT INTO `log` VALUES ('3746', 'user1:显示产品定价', '2018-01-08 21:36:07', '21', '2', '1');
INSERT INTO `log` VALUES ('3747', 'user1:显示设计广告语', '2018-01-08 21:36:20', '21', '2', '1');
INSERT INTO `log` VALUES ('3748', 'user1:显示市场调研报告', '2018-01-08 21:36:23', '21', '2', '1');
INSERT INTO `log` VALUES ('3749', 'user1:查看员工薪酬', '2018-01-08 21:36:26', '21', '2', '1');
INSERT INTO `log` VALUES ('3750', 'user1:显示业内工厂工人薪酬', '2018-01-08 21:36:29', '21', '2', '1');
INSERT INTO `log` VALUES ('3751', 'user1:查看市场规模', '2018-01-08 21:36:34', '21', '2', '1');
INSERT INTO `log` VALUES ('3752', 'user1:查看实体销售操作', '2018-01-08 21:36:36', '21', '2', '1');
INSERT INTO `log` VALUES ('3753', 'user1:查看需求量预测操作', '2018-01-08 21:36:42', '21', '2', '1');
INSERT INTO `log` VALUES ('3754', 'user1:查看库存控制', '2018-01-08 21:36:44', '21', '2', '1');
INSERT INTO `log` VALUES ('3755', 'user1:查看运行产能操作', '2018-01-08 21:36:46', '21', '2', '1');
INSERT INTO `log` VALUES ('3756', 'user1:查看固定产能操作', '2018-01-08 21:36:48', '21', '2', '1');
INSERT INTO `log` VALUES ('3757', 'user1:查看现金流表操作', '2018-01-08 21:36:50', '21', '2', '1');
INSERT INTO `log` VALUES ('3758', 'user1:查看利润表操作', '2018-01-08 21:36:52', '21', '2', '1');
INSERT INTO `log` VALUES ('3759', 'user1:查看资产负债表操作', '2018-01-08 21:36:52', '21', '2', '1');
INSERT INTO `log` VALUES ('3760', 'user1:查看内部持股操作', '2018-01-08 21:36:53', '21', '2', '1');
INSERT INTO `log` VALUES ('3761', 'user1:查看目标策略操作', '2018-01-08 21:36:56', '21', '2', '1');
INSERT INTO `log` VALUES ('3762', 'user1:查看决策汇总操作', '2018-01-08 21:36:58', '21', '2', '1');
INSERT INTO `log` VALUES ('3763', 'user1:学生登录操作', '2018-01-09 14:25:47', '21', '2', '1');
INSERT INTO `log` VALUES ('3764', 'user1:品牌盈利能力', '2018-01-09 14:25:53', '21', '2', '1');
INSERT INTO `log` VALUES ('3765', 'user1:品牌评价', '2018-01-09 14:25:54', '21', '2', '1');
INSERT INTO `log` VALUES ('3766', 'user1:竞争对手的品牌', '2018-01-09 14:25:56', '21', '2', '1');
INSERT INTO `log` VALUES ('3767', 'user1:生产成本', '2018-01-09 14:25:58', '21', '2', '1');
INSERT INTO `log` VALUES ('3768', 'user1:竞争对手的价格', '2018-01-09 14:25:59', '21', '2', '1');
INSERT INTO `log` VALUES ('3769', 'user1:可销售品牌', '2018-01-09 14:26:00', '21', '2', '1');
INSERT INTO `log` VALUES ('3770', 'user1:设计广告', '2018-01-09 14:26:01', '21', '2', '1');
INSERT INTO `log` VALUES ('3771', 'user1:查看媒体偏好', '2018-01-09 14:26:01', '21', '2', '1');
INSERT INTO `log` VALUES ('3772', 'xin1:学生登录操作', '2018-01-09 17:59:11', '24', '1', '1');
INSERT INTO `log` VALUES ('3773', 'xin1:修改公司名字', '2018-01-09 17:59:18', '24', '1', '1');
INSERT INTO `log` VALUES ('3774', 'xin1:查看目标策略操作', '2018-01-09 17:59:32', '24', '1', '1');
INSERT INTO `log` VALUES ('3775', 'xin1:修改目标策略', '2018-01-09 17:59:46', '24', '1', '1');
INSERT INTO `log` VALUES ('3776', 'xin1:查看客户需求', '2018-01-09 17:59:47', '24', '1', '1');
INSERT INTO `log` VALUES ('3777', 'xin1:查看产品用途', '2018-01-09 17:59:48', '24', '1', '1');
INSERT INTO `log` VALUES ('3778', 'xin1:查看用户愿意支付的价格', '2018-01-09 17:59:49', '24', '1', '1');
INSERT INTO `log` VALUES ('3779', 'xin1:查看市场规模', '2018-01-09 17:59:51', '24', '1', '1');
INSERT INTO `log` VALUES ('3780', 'xin1:查看职位分配操作', '2018-01-09 17:59:58', '24', '1', '1');
INSERT INTO `log` VALUES ('3781', 'xin1:修改职位分配', '2018-01-09 18:00:02', '24', '1', '1');
INSERT INTO `log` VALUES ('3782', 'xin1:修改团队规则', '2018-01-09 18:00:07', '24', '1', '1');
INSERT INTO `log` VALUES ('3783', 'xin1:查看团队目标操作', '2018-01-09 18:00:09', '24', '1', '1');
INSERT INTO `log` VALUES ('3784', 'xin1:修改个人目标', '2018-01-09 18:00:12', '24', '1', '1');
INSERT INTO `log` VALUES ('3785', 'xin1:查看员工薪酬', '2018-01-09 18:00:13', '24', '1', '1');
INSERT INTO `log` VALUES ('3786', 'xin1:查看实体销售操作', '2018-01-09 18:00:18', '24', '1', '1');
INSERT INTO `log` VALUES ('3787', 'xin1:修改开设实体销售中心', '2018-01-09 18:00:23', '24', '1', '1');
INSERT INTO `log` VALUES ('3788', 'xin1:查看网络销售中心操作', '2018-01-09 18:00:24', '24', '1', '1');
INSERT INTO `log` VALUES ('3789', 'xin1:修改开设网络销售中心', '2018-01-09 18:00:36', '24', '1', '1');
INSERT INTO `log` VALUES ('3790', 'xin1:查看品牌管理操作', '2018-01-09 18:00:46', '24', '1', '1');
INSERT INTO `log` VALUES ('3791', 'xin1:查看固定产能操作', '2018-01-09 18:01:16', '24', '1', '1');
INSERT INTO `log` VALUES ('3792', 'xin1:修改固定产能', '2018-01-09 18:01:20', '24', '1', '1');
INSERT INTO `log` VALUES ('3793', 'xin1:查看内部持股操作', '2018-01-09 18:01:22', '24', '1', '1');
INSERT INTO `log` VALUES ('3794', 'xin1:查看定期存款操作', '2018-01-09 18:01:25', '24', '1', '1');
INSERT INTO `log` VALUES ('3795', 'xin1:修改定期存款', '2018-01-09 18:01:32', '24', '1', '1');
INSERT INTO `log` VALUES ('3796', 'xin1:查看现金流表操作', '2018-01-09 18:01:35', '24', '1', '1');
INSERT INTO `log` VALUES ('3797', 'xin1:查看利润表操作', '2018-01-09 18:01:36', '24', '1', '1');
INSERT INTO `log` VALUES ('3798', 'xin1:查看资产负债表操作', '2018-01-09 18:01:38', '24', '1', '1');
INSERT INTO `log` VALUES ('3799', 'xin1:查看决策汇总操作', '2018-01-09 18:01:40', '24', '1', '1');
INSERT INTO `log` VALUES ('3800', 'xin1:查看决策汇总操作', '2018-01-09 18:04:32', '24', '1', '1');
INSERT INTO `log` VALUES ('3801', 'xin1:查看实体销售操作', '2018-01-09 18:07:05', '24', '1', '1');
INSERT INTO `log` VALUES ('3802', 'xin1:修改开设实体销售中心', '2018-01-09 18:08:27', '24', '1', '1');
INSERT INTO `log` VALUES ('3803', 'xin1:学生登录操作', '2018-01-09 18:12:12', '24', '1', '1');
INSERT INTO `log` VALUES ('3804', 'xin1:查看决策汇总操作', '2018-01-09 18:12:17', '24', '1', '1');
INSERT INTO `log` VALUES ('3805', 'xin1:查看网络销售中心操作', '2018-01-09 18:12:43', '24', '1', '1');
INSERT INTO `log` VALUES ('3806', 'xin1:修改开设网络销售中心', '2018-01-09 18:12:48', '24', '1', '1');
INSERT INTO `log` VALUES ('3807', 'xin1:修改开设网络销售中心', '2018-01-09 18:17:00', '24', '1', '1');
INSERT INTO `log` VALUES ('3808', 'xin1:查看实体销售操作', '2018-01-09 18:19:50', '24', '1', '1');
INSERT INTO `log` VALUES ('3809', 'xin1:查看网络销售中心操作', '2018-01-09 18:19:52', '24', '1', '1');
INSERT INTO `log` VALUES ('3810', 'xin1:学生登录操作', '2018-01-09 18:19:54', '24', '1', '1');
INSERT INTO `log` VALUES ('3811', 'xin1:查看网络销售中心操作', '2018-01-09 18:23:20', '24', '1', '1');
INSERT INTO `log` VALUES ('3812', 'xin1:学生登录操作', '2018-01-09 18:54:07', '24', '1', '1');
INSERT INTO `log` VALUES ('3813', 'xin1:查看实体销售操作', '2018-01-09 18:54:12', '24', '1', '1');
INSERT INTO `log` VALUES ('3814', 'xin1:查看网络销售中心操作', '2018-01-09 18:54:12', '24', '1', '1');
INSERT INTO `log` VALUES ('3815', 'xin1:修改开设网络销售中心', '2018-01-09 18:54:15', '24', '1', '1');
INSERT INTO `log` VALUES ('3816', 'xin1:查看决策汇总操作', '2018-01-09 18:54:23', '24', '1', '1');
INSERT INTO `log` VALUES ('3817', 'xin1:学生登录操作', '2018-01-09 19:26:32', '24', '1', '1');
INSERT INTO `log` VALUES ('3818', 'xin1:查看现金流表操作', '2018-01-09 19:26:37', '24', '1', '1');
INSERT INTO `log` VALUES ('3819', 'xin1:查看利润表操作', '2018-01-09 19:26:38', '24', '1', '1');
INSERT INTO `log` VALUES ('3820', 'xin1:查看资产负债表操作', '2018-01-09 19:26:38', '24', '1', '1');
INSERT INTO `log` VALUES ('3821', 'xin1:查看决策汇总操作', '2018-01-09 19:26:40', '24', '1', '1');
INSERT INTO `log` VALUES ('3822', 'xin1:查看内部持股操作', '2018-01-09 19:26:45', '24', '1', '1');
INSERT INTO `log` VALUES ('3823', 'xin1:查看定期存款操作', '2018-01-09 19:26:46', '24', '1', '1');
INSERT INTO `log` VALUES ('3824', 'xin1:查看品牌管理操作', '2018-01-09 19:26:49', '24', '1', '1');
INSERT INTO `log` VALUES ('3825', 'xin1:查看固定产能操作', '2018-01-09 19:26:50', '24', '1', '1');
INSERT INTO `log` VALUES ('3826', 'xin1:查看职位分配操作', '2018-01-09 19:26:57', '24', '1', '1');
INSERT INTO `log` VALUES ('3827', 'xin1:查看团队目标操作', '2018-01-09 19:26:58', '24', '1', '1');
INSERT INTO `log` VALUES ('3828', 'xin1:查看员工薪酬', '2018-01-09 19:26:58', '24', '1', '1');
INSERT INTO `log` VALUES ('3829', 'xin1:查看客户需求', '2018-01-09 19:27:03', '24', '1', '1');
INSERT INTO `log` VALUES ('3830', 'xin1:查看产品用途', '2018-01-09 19:27:03', '24', '1', '1');
INSERT INTO `log` VALUES ('3831', 'xin1:查看用户愿意支付的价格', '2018-01-09 19:27:03', '24', '1', '1');
INSERT INTO `log` VALUES ('3832', 'xin1:查看市场规模', '2018-01-09 19:27:04', '24', '1', '1');
INSERT INTO `log` VALUES ('3833', 'xin1:修改公司名字', '2018-01-09 19:27:25', '24', '1', '1');
INSERT INTO `log` VALUES ('3834', 'xin1:查看目标策略操作', '2018-01-09 19:27:25', '24', '1', '1');
INSERT INTO `log` VALUES ('3835', 'xin1:查看网络销售中心操作', '2018-01-09 19:27:59', '24', '1', '1');
INSERT INTO `log` VALUES ('3836', 'xin1:查看实体销售操作', '2018-01-09 19:27:59', '24', '1', '1');
INSERT INTO `log` VALUES ('3837', 'xin1:学生登录操作', '2018-01-09 19:28:09', '24', '1', '1');
INSERT INTO `log` VALUES ('3838', 'xin2:学生登录操作', '2018-01-09 19:28:23', '25', '1', '1');
INSERT INTO `log` VALUES ('3839', 'xin2:修改公司名字', '2018-01-09 19:28:27', '25', '1', '1');
INSERT INTO `log` VALUES ('3840', 'xin2:查看目标策略操作', '2018-01-09 19:28:33', '25', '1', '1');
INSERT INTO `log` VALUES ('3841', 'xin2:修改目标策略', '2018-01-09 19:28:47', '25', '1', '1');
INSERT INTO `log` VALUES ('3842', 'xin2:查看客户需求', '2018-01-09 19:29:00', '25', '1', '1');
INSERT INTO `log` VALUES ('3843', 'xin2:查看产品用途', '2018-01-09 19:29:02', '25', '1', '1');
INSERT INTO `log` VALUES ('3844', 'xin2:查看用户愿意支付的价格', '2018-01-09 19:29:02', '25', '1', '1');
INSERT INTO `log` VALUES ('3845', 'xin2:查看市场规模', '2018-01-09 19:29:03', '25', '1', '1');
INSERT INTO `log` VALUES ('3846', 'xin2:查看职位分配操作', '2018-01-09 19:29:05', '25', '1', '1');
INSERT INTO `log` VALUES ('3847', 'xin2:修改职位分配', '2018-01-09 19:29:09', '25', '1', '1');
INSERT INTO `log` VALUES ('3848', 'xin2:查看团队目标操作', '2018-01-09 19:29:10', '25', '1', '1');
INSERT INTO `log` VALUES ('3849', 'xin2:查看员工薪酬', '2018-01-09 19:29:12', '25', '1', '1');
INSERT INTO `log` VALUES ('3850', 'xin2:查看实体销售操作', '2018-01-09 19:29:14', '25', '1', '1');
INSERT INTO `log` VALUES ('3851', 'xin2:修改开设实体销售中心', '2018-01-09 19:29:20', '25', '1', '1');
INSERT INTO `log` VALUES ('3852', 'xin2:查看网络销售中心操作', '2018-01-09 19:29:21', '25', '1', '1');
INSERT INTO `log` VALUES ('3853', 'xin2:修改开设网络销售中心', '2018-01-09 19:29:23', '25', '1', '1');
INSERT INTO `log` VALUES ('3854', 'xin2:查看品牌管理操作', '2018-01-09 19:29:27', '25', '1', '1');
INSERT INTO `log` VALUES ('3855', 'xin2:查看固定产能操作', '2018-01-09 19:29:54', '25', '1', '1');
INSERT INTO `log` VALUES ('3856', 'xin2:修改固定产能', '2018-01-09 19:29:58', '25', '1', '1');
INSERT INTO `log` VALUES ('3857', 'xin2:查看内部持股操作', '2018-01-09 19:30:10', '25', '1', '1');
INSERT INTO `log` VALUES ('3858', 'xin2:查看定期存款操作', '2018-01-09 19:30:11', '25', '1', '1');
INSERT INTO `log` VALUES ('3859', 'xin2:修改定期存款', '2018-01-09 19:30:18', '25', '1', '1');
INSERT INTO `log` VALUES ('3860', 'xin2:查看现金流表操作', '2018-01-09 19:30:20', '25', '1', '1');
INSERT INTO `log` VALUES ('3861', 'xin2:查看利润表操作', '2018-01-09 19:30:21', '25', '1', '1');
INSERT INTO `log` VALUES ('3862', 'xin2:查看资产负债表操作', '2018-01-09 19:30:22', '25', '1', '1');
INSERT INTO `log` VALUES ('3863', 'xin2:查看决策汇总操作', '2018-01-09 19:30:23', '25', '1', '1');
INSERT INTO `log` VALUES ('3864', 'xin3:学生登录操作', '2018-01-09 19:37:11', '26', '1', '1');
INSERT INTO `log` VALUES ('3865', 'xin3:修改公司名字', '2018-01-09 19:37:16', '26', '1', '1');
INSERT INTO `log` VALUES ('3866', 'xin3:查看目标策略操作', '2018-01-09 19:37:19', '26', '1', '1');
INSERT INTO `log` VALUES ('3867', 'xin3:修改目标策略', '2018-01-09 19:37:35', '26', '1', '1');
INSERT INTO `log` VALUES ('3868', 'xin3:查看客户需求', '2018-01-09 19:37:40', '26', '1', '1');
INSERT INTO `log` VALUES ('3869', 'xin3:查看产品用途', '2018-01-09 19:37:41', '26', '1', '1');
INSERT INTO `log` VALUES ('3870', 'xin3:查看用户愿意支付的价格', '2018-01-09 19:37:42', '26', '1', '1');
INSERT INTO `log` VALUES ('3871', 'xin3:查看市场规模', '2018-01-09 19:37:44', '26', '1', '1');
INSERT INTO `log` VALUES ('3872', 'xin3:查看职位分配操作', '2018-01-09 19:37:47', '26', '1', '1');
INSERT INTO `log` VALUES ('3873', 'xin3:修改职位分配', '2018-01-09 19:37:53', '26', '1', '1');
INSERT INTO `log` VALUES ('3874', 'xin3:修改团队规则', '2018-01-09 19:37:59', '26', '1', '1');
INSERT INTO `log` VALUES ('3875', 'xin3:查看团队目标操作', '2018-01-09 19:37:59', '26', '1', '1');
INSERT INTO `log` VALUES ('3876', 'xin3:修改个人目标', '2018-01-09 19:38:05', '26', '1', '1');
INSERT INTO `log` VALUES ('3877', 'xin3:查看员工薪酬', '2018-01-09 19:38:06', '26', '1', '1');
INSERT INTO `log` VALUES ('3878', 'xin3:查看实体销售操作', '2018-01-09 19:38:09', '26', '1', '1');
INSERT INTO `log` VALUES ('3879', 'xin3:修改开设实体销售中心', '2018-01-09 19:38:14', '26', '1', '1');
INSERT INTO `log` VALUES ('3880', 'xin3:查看网络销售中心操作', '2018-01-09 19:38:16', '26', '1', '1');
INSERT INTO `log` VALUES ('3881', 'xin3:修改开设网络销售中心', '2018-01-09 19:38:18', '26', '1', '1');
INSERT INTO `log` VALUES ('3882', 'xin3:查看品牌管理操作', '2018-01-09 19:38:23', '26', '1', '1');
INSERT INTO `log` VALUES ('3883', 'xin3:查看固定产能操作', '2018-01-09 19:38:47', '26', '1', '1');
INSERT INTO `log` VALUES ('3884', 'xin3:修改固定产能', '2018-01-09 19:38:51', '26', '1', '1');
INSERT INTO `log` VALUES ('3885', 'xin3:查看内部持股操作', '2018-01-09 19:38:55', '26', '1', '1');
INSERT INTO `log` VALUES ('3886', 'xin3:查看定期存款操作', '2018-01-09 19:38:57', '26', '1', '1');
INSERT INTO `log` VALUES ('3887', 'xin3:修改定期存款', '2018-01-09 19:39:06', '26', '1', '1');
INSERT INTO `log` VALUES ('3888', 'xin3:查看现金流表操作', '2018-01-09 19:39:08', '26', '1', '1');
INSERT INTO `log` VALUES ('3889', 'xin3:查看利润表操作', '2018-01-09 19:39:09', '26', '1', '1');
INSERT INTO `log` VALUES ('3890', 'xin3:查看资产负债表操作', '2018-01-09 19:39:10', '26', '1', '1');
INSERT INTO `log` VALUES ('3891', 'xin3:查看决策汇总操作', '2018-01-09 19:39:12', '26', '1', '1');
INSERT INTO `log` VALUES ('3892', 'xin3:学生注册操作', '2018-01-09 19:45:28', '26', '1', '1');
INSERT INTO `log` VALUES ('3893', 'xin4:学生登录操作', '2018-01-09 19:45:33', '27', '1', '1');
INSERT INTO `log` VALUES ('3894', 'xin4:修改公司名字', '2018-01-09 19:45:37', '27', '1', '1');
INSERT INTO `log` VALUES ('3895', 'xin4:查看目标策略操作', '2018-01-09 19:45:58', '27', '1', '1');
INSERT INTO `log` VALUES ('3896', 'xin4:修改目标策略', '2018-01-09 19:46:09', '27', '1', '1');
INSERT INTO `log` VALUES ('3897', 'xin4:查看客户需求', '2018-01-09 19:46:17', '27', '1', '1');
INSERT INTO `log` VALUES ('3898', 'xin4:查看产品用途', '2018-01-09 19:46:18', '27', '1', '1');
INSERT INTO `log` VALUES ('3899', 'xin4:查看用户愿意支付的价格', '2018-01-09 19:46:18', '27', '1', '1');
INSERT INTO `log` VALUES ('3900', 'xin4:查看市场规模', '2018-01-09 19:46:19', '27', '1', '1');
INSERT INTO `log` VALUES ('3901', 'xin4:查看职位分配操作', '2018-01-09 19:46:20', '27', '1', '1');
INSERT INTO `log` VALUES ('3902', 'xin4:修改职位分配', '2018-01-09 19:46:24', '27', '1', '1');
INSERT INTO `log` VALUES ('3903', 'xin4:修改团队规则', '2018-01-09 19:46:30', '27', '1', '1');
INSERT INTO `log` VALUES ('3904', 'xin4:查看团队目标操作', '2018-01-09 19:46:31', '27', '1', '1');
INSERT INTO `log` VALUES ('3905', 'xin4:修改个人目标', '2018-01-09 19:46:38', '27', '1', '1');
INSERT INTO `log` VALUES ('3906', 'xin4:查看员工薪酬', '2018-01-09 19:46:39', '27', '1', '1');
INSERT INTO `log` VALUES ('3907', 'xin4:查看实体销售操作', '2018-01-09 19:46:43', '27', '1', '1');
INSERT INTO `log` VALUES ('3908', 'xin4:修改开设实体销售中心', '2018-01-09 19:46:47', '27', '1', '1');
INSERT INTO `log` VALUES ('3909', 'xin4:查看网络销售中心操作', '2018-01-09 19:46:47', '27', '1', '1');
INSERT INTO `log` VALUES ('3910', 'xin4:修改开设网络销售中心', '2018-01-09 19:46:50', '27', '1', '1');
INSERT INTO `log` VALUES ('3911', 'xin4:查看品牌管理操作', '2018-01-09 19:46:52', '27', '1', '1');
INSERT INTO `log` VALUES ('3912', 'xin4:查看固定产能操作', '2018-01-09 19:47:12', '27', '1', '1');
INSERT INTO `log` VALUES ('3913', 'xin4:修改固定产能', '2018-01-09 19:47:17', '27', '1', '1');
INSERT INTO `log` VALUES ('3914', 'xin4:查看内部持股操作', '2018-01-09 19:47:18', '27', '1', '1');
INSERT INTO `log` VALUES ('3915', 'xin4:查看定期存款操作', '2018-01-09 19:47:21', '27', '1', '1');
INSERT INTO `log` VALUES ('3916', 'xin4:修改定期存款', '2018-01-09 19:47:49', '27', '1', '1');
INSERT INTO `log` VALUES ('3917', 'xin4:查看现金流表操作', '2018-01-09 19:48:18', '27', '1', '1');
INSERT INTO `log` VALUES ('3918', 'xin4:查看利润表操作', '2018-01-09 19:48:19', '27', '1', '1');
INSERT INTO `log` VALUES ('3919', 'xin4:查看资产负债表操作', '2018-01-09 19:48:20', '27', '1', '1');
INSERT INTO `log` VALUES ('3920', 'xin4:查看决策汇总操作', '2018-01-09 19:48:21', '27', '1', '1');
INSERT INTO `log` VALUES ('3921', 'xin4:学生登录操作', '2018-01-09 20:40:57', '27', '1', '1');
INSERT INTO `log` VALUES ('3922', 'xin4:查看客户需求', '2018-01-09 20:40:59', '27', '1', '1');
INSERT INTO `log` VALUES ('3923', 'xin4:查看职位分配操作', '2018-01-09 20:41:01', '27', '1', '1');
INSERT INTO `log` VALUES ('3924', 'xin4:查看市场规模', '2018-01-09 20:42:39', '27', '1', '1');
INSERT INTO `log` VALUES ('3925', 'xin4:查看决策汇总操作', '2018-01-09 20:45:44', '27', '1', '1');
INSERT INTO `log` VALUES ('3926', 'xin4:学生登录操作', '2018-01-09 21:23:01', '27', '1', '1');
INSERT INTO `log` VALUES ('3927', 'xin4:学生登录操作', '2018-01-09 21:29:38', '27', '1', '1');
INSERT INTO `log` VALUES ('3928', 'xin1:学生登录操作', '2018-01-09 21:30:24', '24', '1', '1');
INSERT INTO `log` VALUES ('3929', 'xin1:学生登录操作', '2018-01-09 21:32:01', '24', '1', '1');
INSERT INTO `log` VALUES ('3930', 'xin1:学生登录操作', '2018-01-09 21:33:22', '24', '1', '1');
INSERT INTO `log` VALUES ('3931', 'xin1:查看决策汇总操作', '2018-01-09 21:33:36', '24', '1', '1');
INSERT INTO `log` VALUES ('3932', 'xin1:学生登录操作', '2018-01-09 21:36:59', '24', '1', '1');
INSERT INTO `log` VALUES ('3933', 'xin1:学生登录操作', '2018-01-09 21:38:36', '24', '1', '1');
INSERT INTO `log` VALUES ('3934', 'xin1:学生登录操作', '2018-01-09 21:50:44', '24', '1', '1');
INSERT INTO `log` VALUES ('3935', 'xin2:学生登录操作', '2018-01-09 21:51:26', '25', '1', '1');
INSERT INTO `log` VALUES ('3936', 'xin2:查看决策汇总操作', '2018-01-09 21:51:32', '25', '1', '1');
INSERT INTO `log` VALUES ('3937', 'xin2:修改公司名字', '2018-01-09 21:51:37', '25', '1', '1');
INSERT INTO `log` VALUES ('3938', 'xin2:查看目标策略操作', '2018-01-09 21:51:37', '25', '1', '1');
INSERT INTO `log` VALUES ('3939', 'xin2:查看客户需求', '2018-01-09 21:51:42', '25', '1', '1');
INSERT INTO `log` VALUES ('3940', 'xin2:查看产品用途', '2018-01-09 21:51:42', '25', '1', '1');
INSERT INTO `log` VALUES ('3941', 'xin2:查看用户愿意支付的价格', '2018-01-09 21:51:43', '25', '1', '1');
INSERT INTO `log` VALUES ('3942', 'xin2:查看市场规模', '2018-01-09 21:51:43', '25', '1', '1');
INSERT INTO `log` VALUES ('3943', 'xin2:查看职位分配操作', '2018-01-09 21:51:45', '25', '1', '1');
INSERT INTO `log` VALUES ('3944', 'xin2:修改团队规则', '2018-01-09 21:51:52', '25', '1', '1');
INSERT INTO `log` VALUES ('3945', 'xin2:查看团队目标操作', '2018-01-09 21:51:53', '25', '1', '1');
INSERT INTO `log` VALUES ('3946', 'xin2:修改个人目标', '2018-01-09 21:51:58', '25', '1', '1');
INSERT INTO `log` VALUES ('3947', 'xin2:查看员工薪酬', '2018-01-09 21:51:58', '25', '1', '1');
INSERT INTO `log` VALUES ('3948', 'xin2:学生登录操作', '2018-01-09 21:54:06', '25', '1', '1');
INSERT INTO `log` VALUES ('3949', 'xin2:查看决策汇总操作', '2018-01-09 21:54:30', '25', '1', '1');
INSERT INTO `log` VALUES ('3950', 'xin2:学生登录操作', '2018-01-09 21:56:13', '25', '1', '1');
INSERT INTO `log` VALUES ('3951', 'xin2:查看决策汇总操作', '2018-01-09 21:56:17', '25', '1', '1');
INSERT INTO `log` VALUES ('3952', 'xin2:学生登录操作', '2018-01-09 21:59:52', '25', '1', '1');
INSERT INTO `log` VALUES ('3953', 'xin1:学生登录操作', '2018-01-10 10:11:54', '24', '1', '1');
INSERT INTO `log` VALUES ('3954', 'xin1:查看网络销售中心操作', '2018-01-10 10:11:59', '24', '1', '1');
INSERT INTO `log` VALUES ('3955', 'xin1:学生登录操作', '2018-01-10 10:13:17', '24', '1', '1');
INSERT INTO `log` VALUES ('3956', 'xin1:查看网络销售中心操作', '2018-01-10 10:13:23', '24', '1', '1');
INSERT INTO `log` VALUES ('3957', 'xin1:学生登录操作', '2018-01-10 10:40:31', '24', '1', '1');
INSERT INTO `log` VALUES ('3958', 'xin1:查看网络销售中心操作', '2018-01-10 10:40:35', '24', '1', '1');
INSERT INTO `log` VALUES ('3959', 'xin3:学生登录操作', '2018-01-10 14:32:47', '26', '1', '1');
INSERT INTO `log` VALUES ('3960', 'xin4:学生登录操作', '2018-01-10 14:32:59', '27', '1', '1');
INSERT INTO `log` VALUES ('3961', 'xin1:学生登录操作', '2018-01-10 14:33:50', '24', '2', '1');
INSERT INTO `log` VALUES ('3962', 'xin1:学生登录操作', '2018-01-10 15:48:55', '24', '2', '1');
INSERT INTO `log` VALUES ('3963', 'xin1:查看客户需求', '2018-01-10 15:49:00', '24', '2', '1');
INSERT INTO `log` VALUES ('3964', 'xin1:查看产品用途', '2018-01-10 15:49:01', '24', '2', '1');
INSERT INTO `log` VALUES ('3965', 'xin1:查看品牌管理操作', '2018-01-10 15:49:01', '24', '2', '1');
INSERT INTO `log` VALUES ('3966', 'xin1:查看用户愿意支付的价格', '2018-01-10 15:49:34', '24', '2', '1');
INSERT INTO `log` VALUES ('3967', 'xin1:显示产品定价', '2018-01-10 15:49:46', '24', '2', '1');
INSERT INTO `log` VALUES ('3968', 'xin1:显示销货成本', '2018-01-10 15:49:48', '24', '2', '1');
INSERT INTO `log` VALUES ('3969', 'xin1:操作产品定价', '2018-01-10 15:51:06', '24', '2', '1');
INSERT INTO `log` VALUES ('3970', 'xin1:查看产品用途', '2018-01-10 15:51:08', '24', '2', '1');
INSERT INTO `log` VALUES ('3971', 'xin1:查看客户需求', '2018-01-10 15:51:08', '24', '2', '1');
INSERT INTO `log` VALUES ('3972', 'xin1:查看媒体偏好', '2018-01-10 15:51:10', '24', '2', '1');
INSERT INTO `log` VALUES ('3973', 'xin1:显示设计广告语', '2018-01-10 15:51:11', '24', '2', '1');
INSERT INTO `log` VALUES ('3974', 'xin1:操作媒体投放', '2018-01-10 15:51:33', '24', '2', '1');
INSERT INTO `log` VALUES ('3975', 'xin1:更新产品广告语', '2018-01-10 15:51:36', '24', '2', '1');
INSERT INTO `log` VALUES ('3976', 'xin1:核查广告语', '2018-01-10 15:51:52', '24', '2', '1');
INSERT INTO `log` VALUES ('3977', 'xin1:显示市场调研报告', '2018-01-10 15:51:56', '24', '2', '1');
INSERT INTO `log` VALUES ('3978', 'xin1:操作市场调研报告', '2018-01-10 15:51:59', '24', '2', '1');
INSERT INTO `log` VALUES ('3979', 'xin1:查看员工薪酬', '2018-01-10 15:52:02', '24', '2', '1');
INSERT INTO `log` VALUES ('3980', 'xin1:显示业内销售人员薪酬', '2018-01-10 15:52:05', '24', '2', '1');
INSERT INTO `log` VALUES ('3981', 'xin1:更新业内销售人员薪酬', '2018-01-10 15:52:19', '24', '2', '1');
INSERT INTO `log` VALUES ('3982', 'xin1:显示业内工厂工人薪酬', '2018-01-10 15:52:24', '24', '2', '1');
INSERT INTO `log` VALUES ('3983', 'xin1:更新业内工厂工人薪酬', '2018-01-10 15:52:43', '24', '2', '1');
INSERT INTO `log` VALUES ('3984', 'xin1:查看实体销售操作', '2018-01-10 15:52:51', '24', '2', '1');
INSERT INTO `log` VALUES ('3985', 'xin1:查看市场规模', '2018-01-10 15:52:52', '24', '2', '1');
INSERT INTO `log` VALUES ('3986', 'xin1:查看实体销售操作', '2018-01-10 15:54:37', '24', '2', '1');
INSERT INTO `log` VALUES ('3987', 'xin1:查看网络销售中心操作', '2018-01-10 15:54:37', '24', '2', '1');
INSERT INTO `log` VALUES ('3988', 'xin1:修改开设网络销售中心', '2018-01-10 15:54:41', '24', '2', '1');
INSERT INTO `log` VALUES ('3989', 'xin1:学生登录操作', '2018-01-10 15:55:32', '24', '2', '1');
INSERT INTO `log` VALUES ('3990', 'xin1:查看网络销售中心操作', '2018-01-10 15:55:38', '24', '2', '1');
INSERT INTO `log` VALUES ('3991', 'xin1:修改开设网络销售中心', '2018-01-10 15:55:41', '24', '2', '1');
INSERT INTO `log` VALUES ('3992', 'xin1:查看市场规模', '2018-01-10 15:56:33', '24', '2', '1');
INSERT INTO `log` VALUES ('3993', 'xin1:查看实体销售操作', '2018-01-10 15:56:35', '24', '2', '1');
INSERT INTO `log` VALUES ('3994', 'xin1:课程介绍', '2018-01-10 15:59:40', '24', '2', '1');
INSERT INTO `log` VALUES ('3995', 'xin1:学生登录操作', '2018-01-10 16:06:42', '24', '2', '1');
INSERT INTO `log` VALUES ('3996', 'xin1:学生登录操作', '2018-01-10 16:13:42', '24', '2', '1');
INSERT INTO `log` VALUES ('3997', 'xin1:查看实体销售操作', '2018-01-10 16:16:01', '24', '2', '1');
INSERT INTO `log` VALUES ('3998', 'xin1:查看网络销售中心操作', '2018-01-10 16:16:03', '24', '2', '1');
INSERT INTO `log` VALUES ('3999', 'xin1:查看需求量预测操作', '2018-01-10 16:43:01', '24', '2', '1');
INSERT INTO `log` VALUES ('4000', 'xin1:查看库存控制', '2018-01-10 16:43:02', '24', '2', '1');
INSERT INTO `log` VALUES ('4001', 'xin1:查看固定产能操作', '2018-01-10 16:43:02', '24', '2', '1');
INSERT INTO `log` VALUES ('4002', 'xin1:查看运行产能操作', '2018-01-10 16:43:03', '24', '2', '1');
INSERT INTO `log` VALUES ('4003', 'xin1:查看内部持股操作', '2018-01-10 16:43:06', '24', '2', '1');
INSERT INTO `log` VALUES ('4004', 'xin1:查看定期存款操作', '2018-01-10 16:43:07', '24', '2', '1');
INSERT INTO `log` VALUES ('4005', 'xin1:查看现金流表操作', '2018-01-10 16:43:13', '24', '2', '1');
INSERT INTO `log` VALUES ('4006', 'xin1:查看利润表操作', '2018-01-10 16:43:17', '24', '2', '1');
INSERT INTO `log` VALUES ('4007', 'xin1:查看资产负债表操作', '2018-01-10 16:43:18', '24', '2', '1');
INSERT INTO `log` VALUES ('4008', 'xin1:学生登录操作', '2018-01-10 16:47:52', '24', '2', '1');
INSERT INTO `log` VALUES ('4009', 'xin1:查看现金流表操作', '2018-01-10 16:47:54', '24', '2', '1');
INSERT INTO `log` VALUES ('4010', 'xin1:查看利润表操作', '2018-01-10 16:47:58', '24', '2', '1');
INSERT INTO `log` VALUES ('4011', 'xin1:查看资产负债表操作', '2018-01-10 16:47:58', '24', '2', '1');
INSERT INTO `log` VALUES ('4012', 'xin1:学生登录操作', '2018-01-10 16:49:47', '24', '2', '1');
INSERT INTO `log` VALUES ('4013', 'xin1:学生登录操作', '2018-01-10 16:51:40', '24', '2', '1');
INSERT INTO `log` VALUES ('4014', 'xin1:查看现金流表操作', '2018-01-10 16:52:36', '24', '2', '1');
INSERT INTO `log` VALUES ('4015', 'xin1:查看利润表操作', '2018-01-10 16:52:41', '24', '2', '1');
INSERT INTO `log` VALUES ('4016', 'xin1:查看资产负债表操作', '2018-01-10 16:52:42', '24', '2', '1');
INSERT INTO `log` VALUES ('4017', 'xin1:修改团队规则', '2018-01-10 16:52:51', '24', '2', '1');
INSERT INTO `log` VALUES ('4018', 'xin1:查看目标策略操作', '2018-01-10 16:52:52', '24', '2', '1');
INSERT INTO `log` VALUES ('4019', 'xin1:修改目标策略', '2018-01-10 16:52:55', '24', '2', '1');
INSERT INTO `log` VALUES ('4020', 'xin1:查看决策汇总操作', '2018-01-10 16:52:57', '24', '2', '1');
INSERT INTO `log` VALUES ('4021', 'xin1:学生登录操作', '2018-01-10 16:53:24', '24', '2', '1');
INSERT INTO `log` VALUES ('4022', 'xin1:学生登录操作', '2018-01-10 18:31:25', '24', '1', '1');
INSERT INTO `log` VALUES ('4023', 'xin1:查看实体销售操作', '2018-01-10 18:31:30', '24', '1', '1');
INSERT INTO `log` VALUES ('4024', 'xin1:查看网络销售中心操作', '2018-01-10 18:31:30', '24', '1', '1');
INSERT INTO `log` VALUES ('4025', 'xin1:修改开设网络销售中心', '2018-01-10 18:31:37', '24', '1', '1');
INSERT INTO `log` VALUES ('4026', 'xin2:学生登录操作', '2018-01-10 18:32:59', '25', '1', '1');
INSERT INTO `log` VALUES ('4027', 'xin2:查看网络销售中心操作', '2018-01-10 18:33:02', '25', '1', '1');
INSERT INTO `log` VALUES ('4028', 'xin2:修改开设网络销售中心', '2018-01-10 18:33:05', '25', '1', '1');
INSERT INTO `log` VALUES ('4029', 'xin3:学生登录操作', '2018-01-10 18:33:10', '26', '1', '1');
INSERT INTO `log` VALUES ('4030', 'xin3:查看网络销售中心操作', '2018-01-10 18:33:12', '26', '1', '1');
INSERT INTO `log` VALUES ('4031', 'xin3:修改开设网络销售中心', '2018-01-10 18:33:14', '26', '1', '1');
INSERT INTO `log` VALUES ('4032', 'xin4:学生登录操作', '2018-01-10 18:33:23', '27', '1', '1');
INSERT INTO `log` VALUES ('4033', 'xin4:查看网络销售中心操作', '2018-01-10 18:33:25', '27', '1', '1');
INSERT INTO `log` VALUES ('4034', 'xin4:修改开设网络销售中心', '2018-01-10 18:33:28', '27', '1', '1');
INSERT INTO `log` VALUES ('4035', 'xin1:学生登录操作', '2018-01-10 18:33:55', '24', '2', '1');
INSERT INTO `log` VALUES ('4036', 'xin1:查看网络销售中心操作', '2018-01-10 18:34:01', '24', '2', '1');
INSERT INTO `log` VALUES ('4037', 'xin1:修改开设网络销售中心', '2018-01-10 18:34:04', '24', '2', '1');
INSERT INTO `log` VALUES ('4038', 'xin1:查看网络销售中心操作', '2018-01-10 18:39:43', '24', '2', '1');
INSERT INTO `log` VALUES ('4039', 'xin1:查看需求量预测操作', '2018-01-10 18:50:27', '24', '2', '1');
INSERT INTO `log` VALUES ('4040', 'xin1:查看库存控制', '2018-01-10 18:50:28', '24', '2', '1');
INSERT INTO `log` VALUES ('4041', 'xin1:查看运行产能操作', '2018-01-10 18:50:29', '24', '2', '1');
INSERT INTO `log` VALUES ('4042', 'xin1:查看固定产能操作', '2018-01-10 18:50:31', '24', '2', '1');
INSERT INTO `log` VALUES ('4043', 'xin1:查看决策汇总操作', '2018-01-10 18:50:43', '24', '2', '1');
INSERT INTO `log` VALUES ('4044', 'xin1:学生登录操作', '2018-01-10 18:53:33', '24', '2', '1');
INSERT INTO `log` VALUES ('4045', 'xin1:查看决策汇总操作', '2018-01-10 18:53:36', '24', '2', '1');
INSERT INTO `log` VALUES ('4046', 'xin1:学生登录操作', '2018-01-11 10:51:32', '24', '2', '1');
INSERT INTO `log` VALUES ('4047', 'xin1:查看网络销售中心操作', '2018-01-11 10:51:38', '24', '2', '1');
INSERT INTO `log` VALUES ('4048', 'xin1:修改开设网络销售中心', '2018-01-11 10:51:42', '24', '2', '1');
INSERT INTO `log` VALUES ('4049', 'xin1:查看网络销售中心操作', '2018-01-11 10:52:47', '24', '2', '1');
INSERT INTO `log` VALUES ('4050', 'xin1:查看需求量预测操作', '2018-01-11 10:55:54', '24', '2', '1');
INSERT INTO `log` VALUES ('4051', 'xin1:查看库存控制', '2018-01-11 10:55:55', '24', '2', '1');
INSERT INTO `log` VALUES ('4052', 'xin1:查看运行产能操作', '2018-01-11 10:55:55', '24', '2', '1');
INSERT INTO `log` VALUES ('4053', 'xin1:查看固定产能操作', '2018-01-11 10:55:56', '24', '2', '1');
INSERT INTO `log` VALUES ('4054', 'xin1:查看市场规模', '2018-01-11 10:55:58', '24', '2', '1');
INSERT INTO `log` VALUES ('4055', 'xin1:查看实体销售操作', '2018-01-11 10:55:59', '24', '2', '1');
INSERT INTO `log` VALUES ('4056', 'xin1:修改开设实体销售中心', '2018-01-11 10:56:07', '24', '2', '1');
INSERT INTO `log` VALUES ('4057', 'xin1:学生登录操作', '2018-01-11 11:01:42', '24', '2', '1');
INSERT INTO `log` VALUES ('4058', 'xin1:查看市场规模', '2018-01-11 11:01:49', '24', '2', '1');
INSERT INTO `log` VALUES ('4059', 'xin1:查看实体销售操作', '2018-01-11 11:01:50', '24', '2', '1');
INSERT INTO `log` VALUES ('4060', 'xin1:查看网络销售中心操作', '2018-01-11 11:02:00', '24', '2', '1');
INSERT INTO `log` VALUES ('4061', 'xin1:学生登录操作', '2018-01-11 11:04:03', '24', '2', '1');
INSERT INTO `log` VALUES ('4062', 'xin1:查看实体销售操作', '2018-01-11 11:04:07', '24', '2', '1');
INSERT INTO `log` VALUES ('4063', 'xin1:查看网络销售中心操作', '2018-01-11 11:04:11', '24', '2', '1');
INSERT INTO `log` VALUES ('4064', 'xin1:学生登录操作', '2018-01-11 11:05:18', '24', '2', '1');
INSERT INTO `log` VALUES ('4065', 'xin1:查看市场规模', '2018-01-11 11:05:22', '24', '2', '1');
INSERT INTO `log` VALUES ('4066', 'xin1:查看实体销售操作', '2018-01-11 11:05:23', '24', '2', '1');
INSERT INTO `log` VALUES ('4067', 'xin1:查看市场规模', '2018-01-11 11:06:44', '24', '2', '1');
INSERT INTO `log` VALUES ('4068', 'xin1:查看实体销售操作', '2018-01-11 11:06:46', '24', '2', '1');
INSERT INTO `log` VALUES ('4069', 'xin1:学生登录操作', '2018-01-11 11:10:13', '24', '2', '1');
INSERT INTO `log` VALUES ('4070', 'xin1:查看实体销售操作', '2018-01-11 11:10:18', '24', '2', '1');
INSERT INTO `log` VALUES ('4071', 'xin1:查看市场规模', '2018-01-11 11:10:19', '24', '2', '1');
INSERT INTO `log` VALUES ('4072', 'xin1:查看网络销售中心操作', '2018-01-11 11:10:50', '24', '2', '1');
INSERT INTO `log` VALUES ('4073', 'xin1:学生登录操作', '2018-01-11 17:29:27', '24', '2', '1');
INSERT INTO `log` VALUES ('4074', 'xin1:查看市场规模', '2018-01-11 17:29:32', '24', '2', '1');
INSERT INTO `log` VALUES ('4075', 'xin1:查看实体销售操作', '2018-01-11 17:29:33', '24', '2', '1');
INSERT INTO `log` VALUES ('4076', 'xin1:查看网络销售中心操作', '2018-01-11 17:29:35', '24', '2', '1');
INSERT INTO `log` VALUES ('4077', 'xin1:学生登录操作', '2018-01-11 22:06:42', '24', '1', '1');
INSERT INTO `log` VALUES ('4078', 'xin1:查看实体销售操作', '2018-01-11 22:06:45', '24', '1', '1');
INSERT INTO `log` VALUES ('4079', 'xin1:查看网络销售中心操作', '2018-01-11 22:06:46', '24', '1', '1');
INSERT INTO `log` VALUES ('4080', 'xin1:修改开设网络销售中心', '2018-01-11 22:06:52', '24', '1', '1');
INSERT INTO `log` VALUES ('4081', 'xin2:学生登录操作', '2018-01-11 22:07:36', '25', '1', '1');
INSERT INTO `log` VALUES ('4082', 'xin2:查看网络销售中心操作', '2018-01-11 22:07:40', '25', '1', '1');
INSERT INTO `log` VALUES ('4083', 'xin2:修改开设网络销售中心', '2018-01-11 22:07:42', '25', '1', '1');
INSERT INTO `log` VALUES ('4084', 'xin2:查看决策汇总操作', '2018-01-11 22:07:45', '25', '1', '1');
INSERT INTO `log` VALUES ('4085', 'xin1:学生登录操作', '2018-01-11 22:07:54', '24', '1', '1');
INSERT INTO `log` VALUES ('4086', 'xin1:查看决策汇总操作', '2018-01-11 22:07:56', '24', '1', '1');
INSERT INTO `log` VALUES ('4087', 'xin3:学生登录操作', '2018-01-11 22:08:05', '26', '1', '1');
INSERT INTO `log` VALUES ('4088', 'xin3:查看网络销售中心操作', '2018-01-11 22:08:08', '26', '1', '1');
INSERT INTO `log` VALUES ('4089', 'xin3:修改开设网络销售中心', '2018-01-11 22:08:10', '26', '1', '1');
INSERT INTO `log` VALUES ('4090', 'xin3:查看决策汇总操作', '2018-01-11 22:08:13', '26', '1', '1');
INSERT INTO `log` VALUES ('4091', 'xin4:学生登录操作', '2018-01-11 22:08:29', '27', '1', '1');
INSERT INTO `log` VALUES ('4092', 'xin4:查看网络销售中心操作', '2018-01-11 22:08:30', '27', '1', '1');
INSERT INTO `log` VALUES ('4093', 'xin4:修改开设网络销售中心', '2018-01-11 22:08:32', '27', '1', '1');
INSERT INTO `log` VALUES ('4094', 'xin4:查看决策汇总操作', '2018-01-11 22:08:35', '27', '1', '1');
INSERT INTO `log` VALUES ('4095', 'xin1:学生登录操作', '2018-01-11 22:08:58', '24', '2', '1');
INSERT INTO `log` VALUES ('4096', 'xin1:查看网络销售中心操作', '2018-01-11 22:09:06', '24', '2', '1');
INSERT INTO `log` VALUES ('4097', 'xin1:学生登录操作', '2018-01-12 09:41:08', '24', '2', '1');
INSERT INTO `log` VALUES ('4098', 'xin1:查看市场规模', '2018-01-12 09:41:13', '24', '2', '1');
INSERT INTO `log` VALUES ('4099', 'xin1:查看实体销售操作', '2018-01-12 09:41:13', '24', '2', '1');
INSERT INTO `log` VALUES ('4100', 'xin1:查看网络销售中心操作', '2018-01-12 09:42:18', '24', '2', '1');
INSERT INTO `log` VALUES ('4101', 'xin1:查看市场规模', '2018-01-12 09:47:05', '24', '2', '1');
INSERT INTO `log` VALUES ('4102', 'xin1:学生登录操作', '2018-01-12 09:49:17', '24', '2', '1');
INSERT INTO `log` VALUES ('4103', 'xin1:查看市场规模', '2018-01-12 09:49:21', '24', '2', '1');
INSERT INTO `log` VALUES ('4104', 'xin1:查看实体销售操作', '2018-01-12 09:49:21', '24', '2', '1');
INSERT INTO `log` VALUES ('4105', 'xin1:学生登录操作', '2018-01-12 09:54:21', '24', '2', '1');
INSERT INTO `log` VALUES ('4106', 'xin1:学生登录操作', '2018-01-12 09:55:35', '24', '2', '1');
INSERT INTO `log` VALUES ('4107', 'xin1:查看市场规模', '2018-01-12 09:56:35', '24', '2', '1');
INSERT INTO `log` VALUES ('4108', 'xin1:查看实体销售操作', '2018-01-12 09:56:36', '24', '2', '1');
INSERT INTO `log` VALUES ('4109', 'xin1:学生登录操作', '2018-01-12 09:57:04', '24', '2', '1');
INSERT INTO `log` VALUES ('4110', 'xin1:学生登录操作', '2018-01-12 09:58:09', '24', '2', '1');
INSERT INTO `log` VALUES ('4111', 'xin1:学生登录操作', '2018-01-12 09:59:19', '24', '2', '1');
INSERT INTO `log` VALUES ('4112', 'xin1:学生登录操作', '2018-01-12 10:02:20', '24', '2', '1');
INSERT INTO `log` VALUES ('4113', 'xin1:查看市场规模', '2018-01-12 10:02:39', '24', '2', '1');
INSERT INTO `log` VALUES ('4114', 'xin1:查看实体销售操作', '2018-01-12 10:02:39', '24', '2', '1');
INSERT INTO `log` VALUES ('4115', 'xin1:学生登录操作', '2018-01-12 10:04:02', '24', '2', '1');
INSERT INTO `log` VALUES ('4116', 'xin1:学生登录操作', '2018-01-12 10:06:13', '24', '2', '1');
INSERT INTO `log` VALUES ('4117', 'xin1:学生登录操作', '2018-01-12 10:07:43', '24', '2', '1');
INSERT INTO `log` VALUES ('4118', 'xin1:查看实体销售操作', '2018-01-12 10:07:46', '24', '2', '1');
INSERT INTO `log` VALUES ('4119', 'xin1:查看市场规模', '2018-01-12 10:08:30', '24', '2', '1');
INSERT INTO `log` VALUES ('4120', 'xin1:学生登录操作', '2018-01-12 10:10:19', '24', '2', '1');
INSERT INTO `log` VALUES ('4121', 'xin1:学生登录操作', '2018-01-12 10:11:46', '24', '2', '1');
INSERT INTO `log` VALUES ('4122', 'xin1:查看实体销售操作', '2018-01-12 10:12:10', '24', '2', '1');
INSERT INTO `log` VALUES ('4123', 'xin1:查看实体销售操作', '2018-01-12 10:14:09', '24', '2', '1');
INSERT INTO `log` VALUES ('4124', 'xin1:学生登录操作', '2018-01-12 10:14:51', '24', '2', '1');
INSERT INTO `log` VALUES ('4125', 'xin1:查看市场规模', '2018-01-12 10:14:54', '24', '2', '1');
INSERT INTO `log` VALUES ('4126', 'xin1:查看实体销售操作', '2018-01-12 10:15:22', '24', '2', '1');
INSERT INTO `log` VALUES ('4127', 'xin1:学生登录操作', '2018-01-12 10:17:30', '24', '2', '1');
INSERT INTO `log` VALUES ('4128', 'xin1:学生登录操作', '2018-01-12 10:18:32', '24', '2', '1');
INSERT INTO `log` VALUES ('4129', 'xin1:查看市场规模', '2018-01-12 10:18:34', '24', '2', '1');
INSERT INTO `log` VALUES ('4130', 'xin1:查看实体销售操作', '2018-01-12 10:18:35', '24', '2', '1');
INSERT INTO `log` VALUES ('4131', 'xin1:学生登录操作', '2018-01-12 10:19:33', '24', '2', '1');
INSERT INTO `log` VALUES ('4132', 'xin1:学生登录操作', '2018-01-12 10:21:58', '24', '2', '1');
INSERT INTO `log` VALUES ('4133', 'xin1:查看实体销售操作', '2018-01-12 10:22:01', '24', '2', '1');
INSERT INTO `log` VALUES ('4134', 'xin1:查看市场规模', '2018-01-12 10:22:27', '24', '2', '1');
INSERT INTO `log` VALUES ('4135', 'xin1:查看实体销售操作', '2018-01-12 10:23:53', '24', '2', '1');
INSERT INTO `log` VALUES ('4136', 'xin1:课程介绍', '2018-01-12 10:24:42', '24', '2', '1');
INSERT INTO `log` VALUES ('4137', 'xin1:查看实体销售操作', '2018-01-12 10:24:55', '24', '2', '1');
INSERT INTO `log` VALUES ('4138', 'xin1:查看市场规模', '2018-01-12 10:25:07', '24', '2', '1');
INSERT INTO `log` VALUES ('4139', 'xin1:课程介绍', '2018-01-12 10:25:44', '24', '2', '1');
INSERT INTO `log` VALUES ('4140', 'xin1:查看实体销售操作', '2018-01-12 10:26:46', '24', '2', '1');
INSERT INTO `log` VALUES ('4141', 'xin1:课程介绍', '2018-01-12 10:26:48', '24', '2', '1');
INSERT INTO `log` VALUES ('4142', 'xin1:查看网络销售中心操作', '2018-01-12 10:27:05', '24', '2', '1');
INSERT INTO `log` VALUES ('4143', 'xin1:查看实体销售操作', '2018-01-12 10:28:02', '24', '2', '1');
INSERT INTO `log` VALUES ('4144', 'xin1:查看网络销售中心操作', '2018-01-12 10:28:06', '24', '2', '1');
INSERT INTO `log` VALUES ('4145', 'xin1:查看网络销售中心操作', '2018-01-12 10:29:12', '24', '2', '1');
INSERT INTO `log` VALUES ('4146', 'xin1:学生登录操作', '2018-01-12 10:39:35', '24', '2', '1');
INSERT INTO `log` VALUES ('4147', 'xin1:查看网络销售中心操作', '2018-01-12 10:39:40', '24', '2', '1');
INSERT INTO `log` VALUES ('4148', 'xin1:修改开设网络销售中心', '2018-01-12 10:39:54', '24', '2', '1');
INSERT INTO `log` VALUES ('4149', 'xin1:学生登录操作', '2018-01-12 10:47:32', '24', '2', '1');
INSERT INTO `log` VALUES ('4150', 'xin1:学生登录操作', '2018-01-12 10:49:17', '24', '2', '1');
INSERT INTO `log` VALUES ('4151', 'xin1:查看需求量预测操作', '2018-01-12 10:49:49', '24', '2', '1');
INSERT INTO `log` VALUES ('4152', 'xin1:查看网络销售中心操作', '2018-01-12 10:49:54', '24', '2', '1');
INSERT INTO `log` VALUES ('4153', 'xin1:修改开设网络销售中心', '2018-01-12 10:49:57', '24', '2', '1');
INSERT INTO `log` VALUES ('4154', 'xin1:修改开设网络销售中心', '2018-01-12 10:51:30', '24', '2', '1');
INSERT INTO `log` VALUES ('4155', 'xin1:学生登录操作', '2018-01-12 10:55:47', '24', '2', '1');
INSERT INTO `log` VALUES ('4156', 'xin1:查看市场规模', '2018-01-12 10:56:04', '24', '2', '1');
INSERT INTO `log` VALUES ('4157', 'xin1:查看实体销售操作', '2018-01-12 10:56:04', '24', '2', '1');
INSERT INTO `log` VALUES ('4158', 'xin1:查看网络销售中心操作', '2018-01-12 10:56:07', '24', '2', '1');
INSERT INTO `log` VALUES ('4159', 'xin1:修改开设网络销售中心', '2018-01-12 10:56:28', '24', '2', '1');
INSERT INTO `log` VALUES ('4160', 'xin1:学生登录操作', '2018-01-12 10:58:04', '24', '2', '1');
INSERT INTO `log` VALUES ('4161', 'xin1:查看市场规模', '2018-01-12 10:58:07', '24', '2', '1');
INSERT INTO `log` VALUES ('4162', 'xin1:查看实体销售操作', '2018-01-12 10:58:08', '24', '2', '1');
INSERT INTO `log` VALUES ('4163', 'xin1:查看网络销售中心操作', '2018-01-12 10:58:09', '24', '2', '1');
INSERT INTO `log` VALUES ('4164', 'xin1:修改开设网络销售中心', '2018-01-12 10:58:11', '24', '2', '1');
INSERT INTO `log` VALUES ('4165', 'xin1:学生登录操作', '2018-01-12 12:08:54', '24', '2', '1');
INSERT INTO `log` VALUES ('4166', 'xin1:查看市场规模', '2018-01-12 12:09:02', '24', '2', '1');
INSERT INTO `log` VALUES ('4167', 'xin1:查看实体销售操作', '2018-01-12 12:09:02', '24', '2', '1');
INSERT INTO `log` VALUES ('4168', 'xin1:查看网络销售中心操作', '2018-01-12 12:09:04', '24', '2', '1');
INSERT INTO `log` VALUES ('4169', 'xin1:查看网络销售中心操作', '2018-01-12 12:10:15', '24', '2', '1');
INSERT INTO `log` VALUES ('4170', 'xin1:修改开设网络销售中心', '2018-01-12 12:10:36', '24', '2', '1');
INSERT INTO `log` VALUES ('4171', 'xin1:查看网络销售中心操作', '2018-01-12 12:12:40', '24', '2', '1');
INSERT INTO `log` VALUES ('4172', 'xin1:学生登录操作', '2018-01-12 12:15:06', '24', '2', '1');
INSERT INTO `log` VALUES ('4173', 'xin1:查看网络销售中心操作', '2018-01-12 12:15:12', '24', '2', '1');
INSERT INTO `log` VALUES ('4174', 'xin1:查看网络销售中心操作', '2018-01-12 12:17:26', '24', '2', '1');
INSERT INTO `log` VALUES ('4175', 'xin1:查看网络销售中心操作', '2018-01-12 12:18:32', '24', '2', '1');
INSERT INTO `log` VALUES ('4176', 'xin1:学生登录操作', '2018-01-12 12:28:56', '24', '2', '1');
INSERT INTO `log` VALUES ('4177', 'xin1:查看网络销售中心操作', '2018-01-12 12:29:17', '24', '2', '1');
INSERT INTO `log` VALUES ('4178', 'xin1:查看网络销售中心操作', '2018-01-12 12:30:48', '24', '2', '1');
INSERT INTO `log` VALUES ('4179', 'xin1:学生登录操作', '2018-01-12 12:42:17', '24', '2', '1');
INSERT INTO `log` VALUES ('4180', 'xin1:查看网络销售中心操作', '2018-01-12 12:42:22', '24', '2', '1');
INSERT INTO `log` VALUES ('4181', 'xin1:修改开设网络销售中心', '2018-01-12 12:42:27', '24', '2', '1');
INSERT INTO `log` VALUES ('4182', 'xin1:学生登录操作', '2018-01-12 12:45:24', '24', '2', '1');
INSERT INTO `log` VALUES ('4183', 'xin1:查看网络销售中心操作', '2018-01-12 12:45:28', '24', '2', '1');
INSERT INTO `log` VALUES ('4184', 'xin1:学生登录操作', '2018-01-12 12:48:43', '24', '2', '1');
INSERT INTO `log` VALUES ('4185', 'xin1:查看市场规模', '2018-01-12 12:48:47', '24', '2', '1');
INSERT INTO `log` VALUES ('4186', 'xin1:查看实体销售操作', '2018-01-12 12:48:47', '24', '2', '1');
INSERT INTO `log` VALUES ('4187', 'xin1:查看网络销售中心操作', '2018-01-12 12:48:49', '24', '2', '1');
INSERT INTO `log` VALUES ('4188', 'xin1:修改开设网络销售中心', '2018-01-12 12:48:53', '24', '2', '1');
INSERT INTO `log` VALUES ('4189', 'xin1:修改开设网络销售中心', '2018-01-12 12:49:59', '24', '2', '1');
INSERT INTO `log` VALUES ('4190', 'xin1:学生登录操作', '2018-01-12 13:08:44', '24', '2', '1');
INSERT INTO `log` VALUES ('4191', 'xin1:查看网络销售中心操作', '2018-01-12 13:08:50', '24', '2', '1');
INSERT INTO `log` VALUES ('4192', 'xin1:修改开设网络销售中心', '2018-01-12 13:09:02', '24', '2', '1');
INSERT INTO `log` VALUES ('4193', 'xin1:学生登录操作', '2018-01-12 13:13:27', '24', '2', '1');
INSERT INTO `log` VALUES ('4194', 'xin1:查看网络销售中心操作', '2018-01-12 13:13:40', '24', '2', '1');
INSERT INTO `log` VALUES ('4195', 'xin1:学生登录操作', '2018-01-12 13:26:09', '24', '2', '1');
INSERT INTO `log` VALUES ('4196', 'xin1:查看网络销售中心操作', '2018-01-12 13:26:14', '24', '2', '1');
INSERT INTO `log` VALUES ('4197', 'xin1:学生登录操作', '2018-01-12 13:27:28', '24', '2', '1');
INSERT INTO `log` VALUES ('4198', 'xin1:查看网络销售中心操作', '2018-01-12 13:27:34', '24', '2', '1');
INSERT INTO `log` VALUES ('4199', 'xin1:修改开设网络销售中心', '2018-01-12 13:27:35', '24', '2', '1');
INSERT INTO `log` VALUES ('4200', 'xin1:学生登录操作', '2018-01-12 13:33:19', '24', '2', '1');
INSERT INTO `log` VALUES ('4201', 'xin1:查看网络销售中心操作', '2018-01-12 13:33:26', '24', '2', '1');
INSERT INTO `log` VALUES ('4202', 'xin1:修改开设网络销售中心', '2018-01-12 13:33:28', '24', '2', '1');
INSERT INTO `log` VALUES ('4203', 'xin1:学生登录操作', '2018-01-12 13:34:45', '24', '2', '1');
INSERT INTO `log` VALUES ('4204', 'xin1:查看网络销售中心操作', '2018-01-12 13:34:50', '24', '2', '1');
INSERT INTO `log` VALUES ('4205', 'xin1:学生登录操作', '2018-01-12 13:37:12', '24', '2', '1');
INSERT INTO `log` VALUES ('4206', 'xin1:查看网络销售中心操作', '2018-01-12 13:37:37', '24', '2', '1');
INSERT INTO `log` VALUES ('4207', 'xin1:修改开设网络销售中心', '2018-01-12 13:37:43', '24', '2', '1');
INSERT INTO `log` VALUES ('4208', 'xin1:学生登录操作', '2018-01-12 13:39:52', '24', '2', '1');
INSERT INTO `log` VALUES ('4209', 'xin1:查看网络销售中心操作', '2018-01-12 13:39:56', '24', '2', '1');
INSERT INTO `log` VALUES ('4210', 'xin1:学生登录操作', '2018-01-12 13:43:32', '24', '2', '1');
INSERT INTO `log` VALUES ('4211', 'xin1:查看网络销售中心操作', '2018-01-12 13:43:39', '24', '2', '1');
INSERT INTO `log` VALUES ('4212', 'xin1:查看需求量预测操作', '2018-01-12 13:43:52', '24', '2', '1');
INSERT INTO `log` VALUES ('4213', 'xin1:更新需求量预测操作', '2018-01-12 13:44:25', '24', '2', '1');
INSERT INTO `log` VALUES ('4214', 'xin1:查看库存控制', '2018-01-12 13:44:28', '24', '2', '1');
INSERT INTO `log` VALUES ('4215', 'xin1:修改库存控制', '2018-01-12 13:44:36', '24', '2', '1');
INSERT INTO `log` VALUES ('4216', 'xin1:查看运行产能操作', '2018-01-12 13:44:37', '24', '2', '1');
INSERT INTO `log` VALUES ('4217', 'xin1:修改运行产能', '2018-01-12 13:44:48', '24', '2', '1');
INSERT INTO `log` VALUES ('4218', 'xin1:查看固定产能操作', '2018-01-12 13:44:49', '24', '2', '1');
INSERT INTO `log` VALUES ('4219', 'xin1:修改固定产能', '2018-01-12 13:44:57', '24', '2', '1');
INSERT INTO `log` VALUES ('4220', 'xin1:查看内部持股操作', '2018-01-12 13:45:02', '24', '2', '1');
INSERT INTO `log` VALUES ('4221', 'xin1:查看定期存款操作', '2018-01-12 13:45:04', '24', '2', '1');
INSERT INTO `log` VALUES ('4222', 'xin1:修改定期存款', '2018-01-12 13:45:12', '24', '2', '1');
INSERT INTO `log` VALUES ('4223', 'xin1:查看现金流表操作', '2018-01-12 13:45:14', '24', '2', '1');
INSERT INTO `log` VALUES ('4224', 'xin1:查看利润表操作', '2018-01-12 13:45:16', '24', '2', '1');
INSERT INTO `log` VALUES ('4225', 'xin1:查看资产负债表操作', '2018-01-12 13:45:17', '24', '2', '1');
INSERT INTO `log` VALUES ('4226', 'xin1:查看目标策略操作', '2018-01-12 13:45:21', '24', '2', '1');
INSERT INTO `log` VALUES ('4227', 'xin1:修改目标策略', '2018-01-12 13:45:24', '24', '2', '1');
INSERT INTO `log` VALUES ('4228', 'xin1:修改团队规则', '2018-01-12 13:45:30', '24', '2', '1');
INSERT INTO `log` VALUES ('4229', 'xin1:查看决策汇总操作', '2018-01-12 13:45:32', '24', '2', '1');
INSERT INTO `log` VALUES ('4230', 'xin2:学生登录操作', '2018-01-12 15:44:35', '25', '2', '1');
INSERT INTO `log` VALUES ('4231', 'xin2:查看客户需求', '2018-01-12 15:44:40', '25', '2', '1');
INSERT INTO `log` VALUES ('4232', 'xin2:查看产品用途', '2018-01-12 15:44:40', '25', '2', '1');
INSERT INTO `log` VALUES ('4233', 'xin2:查看品牌管理操作', '2018-01-12 15:44:41', '25', '2', '1');
INSERT INTO `log` VALUES ('4234', 'xin2:查看用户愿意支付的价格', '2018-01-12 15:45:05', '25', '2', '1');
INSERT INTO `log` VALUES ('4235', 'xin2:显示销货成本', '2018-01-12 15:45:10', '25', '2', '1');
INSERT INTO `log` VALUES ('4236', 'xin2:显示产品定价', '2018-01-12 15:45:13', '25', '2', '1');
INSERT INTO `log` VALUES ('4237', 'xin2:操作产品定价', '2018-01-12 15:45:29', '25', '2', '1');
INSERT INTO `log` VALUES ('4238', 'xin2:查看媒体偏好', '2018-01-12 15:45:33', '25', '2', '1');
INSERT INTO `log` VALUES ('4239', 'xin2:操作媒体投放', '2018-01-12 15:45:48', '25', '2', '1');
INSERT INTO `log` VALUES ('4240', 'xin2:显示设计广告语', '2018-01-12 15:45:49', '25', '2', '1');
INSERT INTO `log` VALUES ('4241', 'xin2:更新产品广告语', '2018-01-12 15:45:52', '25', '2', '1');
INSERT INTO `log` VALUES ('4242', 'xin2:核查广告语', '2018-01-12 15:46:12', '25', '2', '1');
INSERT INTO `log` VALUES ('4243', 'xin2:显示市场调研报告', '2018-01-12 15:46:14', '25', '2', '1');
INSERT INTO `log` VALUES ('4244', 'xin2:操作市场调研报告', '2018-01-12 15:46:17', '25', '2', '1');
INSERT INTO `log` VALUES ('4245', 'xin2:查看员工薪酬', '2018-01-12 15:46:19', '25', '2', '1');
INSERT INTO `log` VALUES ('4246', 'xin2:显示业内销售人员薪酬', '2018-01-12 15:46:22', '25', '2', '1');
INSERT INTO `log` VALUES ('4247', 'xin2:更新业内销售人员薪酬', '2018-01-12 15:46:44', '25', '2', '1');
INSERT INTO `log` VALUES ('4248', 'xin2:显示业内工厂工人薪酬', '2018-01-12 15:46:45', '25', '2', '1');
INSERT INTO `log` VALUES ('4249', 'xin2:更新业内工厂工人薪酬', '2018-01-12 15:47:03', '25', '2', '1');
INSERT INTO `log` VALUES ('4250', 'xin2:查看市场规模', '2018-01-12 15:47:07', '25', '2', '1');
INSERT INTO `log` VALUES ('4251', 'xin2:查看实体销售操作', '2018-01-12 15:47:08', '25', '2', '1');
INSERT INTO `log` VALUES ('4252', 'xin2:查看网络销售中心操作', '2018-01-12 15:47:26', '25', '2', '1');
INSERT INTO `log` VALUES ('4253', 'xin2:查看需求量预测操作', '2018-01-12 15:47:46', '25', '2', '1');
INSERT INTO `log` VALUES ('4254', 'xin2:更新需求量预测操作', '2018-01-12 15:48:13', '25', '2', '1');
INSERT INTO `log` VALUES ('4255', 'xin2:查看库存控制', '2018-01-12 15:48:19', '25', '2', '1');
INSERT INTO `log` VALUES ('4256', 'xin2:修改库存控制', '2018-01-12 15:48:29', '25', '2', '1');
INSERT INTO `log` VALUES ('4257', 'xin2:查看运行产能操作', '2018-01-12 15:48:31', '25', '2', '1');
INSERT INTO `log` VALUES ('4258', 'xin2:修改运行产能', '2018-01-12 15:48:51', '25', '2', '1');
INSERT INTO `log` VALUES ('4259', 'xin2:查看固定产能操作', '2018-01-12 15:49:09', '25', '2', '1');
INSERT INTO `log` VALUES ('4260', 'xin2:修改固定产能', '2018-01-12 15:49:14', '25', '2', '1');
INSERT INTO `log` VALUES ('4261', 'xin2:查看内部持股操作', '2018-01-12 15:49:20', '25', '2', '1');
INSERT INTO `log` VALUES ('4262', 'xin2:查看定期存款操作', '2018-01-12 15:49:23', '25', '2', '1');
INSERT INTO `log` VALUES ('4263', 'xin2:修改定期存款', '2018-01-12 15:49:29', '25', '2', '1');
INSERT INTO `log` VALUES ('4264', 'xin2:查看现金流表操作', '2018-01-12 15:49:31', '25', '2', '1');
INSERT INTO `log` VALUES ('4265', 'xin2:查看利润表操作', '2018-01-12 15:49:32', '25', '2', '1');
INSERT INTO `log` VALUES ('4266', 'xin2:查看资产负债表操作', '2018-01-12 15:49:34', '25', '2', '1');
INSERT INTO `log` VALUES ('4267', 'xin2:修改团队规则', '2018-01-12 15:49:38', '25', '2', '1');
INSERT INTO `log` VALUES ('4268', 'xin2:查看目标策略操作', '2018-01-12 15:49:39', '25', '2', '1');
INSERT INTO `log` VALUES ('4269', 'xin2:修改目标策略', '2018-01-12 15:49:43', '25', '2', '1');
INSERT INTO `log` VALUES ('4270', 'xin2:查看决策汇总操作', '2018-01-12 15:49:45', '25', '2', '1');
INSERT INTO `log` VALUES ('4271', 'xin3:学生登录操作', '2018-01-12 15:49:57', '26', '2', '1');
INSERT INTO `log` VALUES ('4272', 'xin3:查看客户需求', '2018-01-12 15:50:02', '26', '2', '1');
INSERT INTO `log` VALUES ('4273', 'xin3:查看产品用途', '2018-01-12 15:50:03', '26', '2', '1');
INSERT INTO `log` VALUES ('4274', 'xin3:查看品牌管理操作', '2018-01-12 15:50:03', '26', '2', '1');
INSERT INTO `log` VALUES ('4275', 'xin3:查看媒体偏好', '2018-01-12 15:50:25', '26', '2', '1');
INSERT INTO `log` VALUES ('4276', 'xin3:操作媒体投放', '2018-01-12 15:50:36', '26', '2', '1');
INSERT INTO `log` VALUES ('4277', 'xin3:显示设计广告语', '2018-01-12 15:50:37', '26', '2', '1');
INSERT INTO `log` VALUES ('4278', 'xin3:更新产品广告语', '2018-01-12 15:50:39', '26', '2', '1');
INSERT INTO `log` VALUES ('4279', 'xin3:核查广告语', '2018-01-12 15:50:53', '26', '2', '1');
INSERT INTO `log` VALUES ('4280', 'xin3:显示市场调研报告', '2018-01-12 15:50:55', '26', '2', '1');
INSERT INTO `log` VALUES ('4281', 'xin3:操作市场调研报告', '2018-01-12 15:50:59', '26', '2', '1');
INSERT INTO `log` VALUES ('4282', 'xin3:查看员工薪酬', '2018-01-12 15:51:01', '26', '2', '1');
INSERT INTO `log` VALUES ('4283', 'xin3:显示业内销售人员薪酬', '2018-01-12 15:51:03', '26', '2', '1');
INSERT INTO `log` VALUES ('4284', 'xin3:更新业内销售人员薪酬', '2018-01-12 15:51:15', '26', '2', '1');
INSERT INTO `log` VALUES ('4285', 'xin3:显示业内工厂工人薪酬', '2018-01-12 15:51:16', '26', '2', '1');
INSERT INTO `log` VALUES ('4286', 'xin3:更新业内工厂工人薪酬', '2018-01-12 15:51:31', '26', '2', '1');
INSERT INTO `log` VALUES ('4287', 'xin3:查看市场规模', '2018-01-12 15:51:34', '26', '2', '1');
INSERT INTO `log` VALUES ('4288', 'xin3:查看实体销售操作', '2018-01-12 15:51:35', '26', '2', '1');
INSERT INTO `log` VALUES ('4289', 'xin3:查看网络销售中心操作', '2018-01-12 15:51:49', '26', '2', '1');
INSERT INTO `log` VALUES ('4290', 'xin3:查看需求量预测操作', '2018-01-12 15:52:00', '26', '2', '1');
INSERT INTO `log` VALUES ('4291', 'xin3:更新需求量预测操作', '2018-01-12 15:52:12', '26', '2', '1');
INSERT INTO `log` VALUES ('4292', 'xin3:查看库存控制', '2018-01-12 15:52:15', '26', '2', '1');
INSERT INTO `log` VALUES ('4293', 'xin3:修改库存控制', '2018-01-12 15:52:21', '26', '2', '1');
INSERT INTO `log` VALUES ('4294', 'xin3:查看运行产能操作', '2018-01-12 15:52:22', '26', '2', '1');
INSERT INTO `log` VALUES ('4295', 'xin3:修改运行产能', '2018-01-12 15:52:30', '26', '2', '1');
INSERT INTO `log` VALUES ('4296', 'xin3:查看固定产能操作', '2018-01-12 15:52:32', '26', '2', '1');
INSERT INTO `log` VALUES ('4297', 'xin3:修改固定产能', '2018-01-12 15:52:37', '26', '2', '1');
INSERT INTO `log` VALUES ('4298', 'xin3:查看内部持股操作', '2018-01-12 15:52:41', '26', '2', '1');
INSERT INTO `log` VALUES ('4299', 'xin3:查看定期存款操作', '2018-01-12 15:52:44', '26', '2', '1');
INSERT INTO `log` VALUES ('4300', 'xin3:修改定期存款', '2018-01-12 15:52:46', '26', '2', '1');
INSERT INTO `log` VALUES ('4301', 'xin3:查看现金流表操作', '2018-01-12 15:52:48', '26', '2', '1');
INSERT INTO `log` VALUES ('4302', 'xin3:查看利润表操作', '2018-01-12 15:52:49', '26', '2', '1');
INSERT INTO `log` VALUES ('4303', 'xin3:查看资产负债表操作', '2018-01-12 15:52:49', '26', '2', '1');
INSERT INTO `log` VALUES ('4304', 'xin3:修改团队规则', '2018-01-12 15:52:53', '26', '2', '1');
INSERT INTO `log` VALUES ('4305', 'xin3:查看目标策略操作', '2018-01-12 15:52:54', '26', '2', '1');
INSERT INTO `log` VALUES ('4306', 'xin3:修改目标策略', '2018-01-12 15:52:56', '26', '2', '1');
INSERT INTO `log` VALUES ('4307', 'xin3:查看决策汇总操作', '2018-01-12 15:52:58', '26', '2', '1');
INSERT INTO `log` VALUES ('4308', 'xin4:学生登录操作', '2018-01-12 15:53:06', '27', '2', '1');
INSERT INTO `log` VALUES ('4309', 'xin4:查看客户需求', '2018-01-12 15:53:11', '27', '2', '1');
INSERT INTO `log` VALUES ('4310', 'xin4:查看产品用途', '2018-01-12 15:53:11', '27', '2', '1');
INSERT INTO `log` VALUES ('4311', 'xin4:查看品牌管理操作', '2018-01-12 15:53:11', '27', '2', '1');
INSERT INTO `log` VALUES ('4312', 'xin4:查看用户愿意支付的价格', '2018-01-12 15:53:36', '27', '2', '1');
INSERT INTO `log` VALUES ('4313', 'xin4:显示销货成本', '2018-01-12 15:53:37', '27', '2', '1');
INSERT INTO `log` VALUES ('4314', 'xin4:显示产品定价', '2018-01-12 15:53:40', '27', '2', '1');
INSERT INTO `log` VALUES ('4315', 'xin4:操作产品定价', '2018-01-12 15:53:53', '27', '2', '1');
INSERT INTO `log` VALUES ('4316', 'xin4:查看媒体偏好', '2018-01-12 15:53:55', '27', '2', '1');
INSERT INTO `log` VALUES ('4317', 'xin4:操作媒体投放', '2018-01-12 15:54:08', '27', '2', '1');
INSERT INTO `log` VALUES ('4318', 'xin4:显示设计广告语', '2018-01-12 15:54:11', '27', '2', '1');
INSERT INTO `log` VALUES ('4319', 'xin4:更新产品广告语', '2018-01-12 15:54:13', '27', '2', '1');
INSERT INTO `log` VALUES ('4320', 'xin4:核查广告语', '2018-01-12 15:54:34', '27', '2', '1');
INSERT INTO `log` VALUES ('4321', 'xin4:显示市场调研报告', '2018-01-12 15:54:36', '27', '2', '1');
INSERT INTO `log` VALUES ('4322', 'xin4:操作市场调研报告', '2018-01-12 15:54:40', '27', '2', '1');
INSERT INTO `log` VALUES ('4323', 'xin4:查看员工薪酬', '2018-01-12 15:54:41', '27', '2', '1');
INSERT INTO `log` VALUES ('4324', 'xin4:显示业内销售人员薪酬', '2018-01-12 15:54:42', '27', '2', '1');
INSERT INTO `log` VALUES ('4325', 'xin4:更新业内销售人员薪酬', '2018-01-12 15:54:57', '27', '2', '1');
INSERT INTO `log` VALUES ('4326', 'xin4:显示业内工厂工人薪酬', '2018-01-12 15:54:58', '27', '2', '1');
INSERT INTO `log` VALUES ('4327', 'xin4:更新业内工厂工人薪酬', '2018-01-12 15:55:14', '27', '2', '1');
INSERT INTO `log` VALUES ('4328', 'xin4:查看市场规模', '2018-01-12 15:55:17', '27', '2', '1');
INSERT INTO `log` VALUES ('4329', 'xin4:查看实体销售操作', '2018-01-12 15:55:17', '27', '2', '1');
INSERT INTO `log` VALUES ('4330', 'xin4:查看网络销售中心操作', '2018-01-12 15:55:29', '27', '2', '1');
INSERT INTO `log` VALUES ('4331', 'xin4:查看需求量预测操作', '2018-01-12 15:55:39', '27', '2', '1');
INSERT INTO `log` VALUES ('4332', 'xin4:更新需求量预测操作', '2018-01-12 15:56:02', '27', '2', '1');
INSERT INTO `log` VALUES ('4333', 'xin4:查看库存控制', '2018-01-12 15:56:07', '27', '2', '1');
INSERT INTO `log` VALUES ('4334', 'xin4:修改库存控制', '2018-01-12 15:56:38', '27', '2', '1');
INSERT INTO `log` VALUES ('4335', 'xin4:查看运行产能操作', '2018-01-12 15:56:40', '27', '2', '1');
INSERT INTO `log` VALUES ('4336', 'xin4:修改运行产能', '2018-01-12 15:56:47', '27', '2', '1');
INSERT INTO `log` VALUES ('4337', 'xin4:查看固定产能操作', '2018-01-12 15:56:47', '27', '2', '1');
INSERT INTO `log` VALUES ('4338', 'xin4:修改固定产能', '2018-01-12 15:56:52', '27', '2', '1');
INSERT INTO `log` VALUES ('4339', 'xin4:查看内部持股操作', '2018-01-12 15:56:53', '27', '2', '1');
INSERT INTO `log` VALUES ('4340', 'xin4:查看定期存款操作', '2018-01-12 15:56:54', '27', '2', '1');
INSERT INTO `log` VALUES ('4341', 'xin4:修改定期存款', '2018-01-12 15:56:56', '27', '2', '1');
INSERT INTO `log` VALUES ('4342', 'xin4:查看现金流表操作', '2018-01-12 15:56:58', '27', '2', '1');
INSERT INTO `log` VALUES ('4343', 'xin4:查看利润表操作', '2018-01-12 15:56:59', '27', '2', '1');
INSERT INTO `log` VALUES ('4344', 'xin4:查看资产负债表操作', '2018-01-12 15:57:00', '27', '2', '1');
INSERT INTO `log` VALUES ('4345', 'xin4:查看目标策略操作', '2018-01-12 15:57:03', '27', '2', '1');
INSERT INTO `log` VALUES ('4346', 'xin4:修改目标策略', '2018-01-12 15:57:06', '27', '2', '1');
INSERT INTO `log` VALUES ('4347', 'xin4:修改团队规则', '2018-01-12 15:57:10', '27', '2', '1');
INSERT INTO `log` VALUES ('4348', 'xin4:查看决策汇总操作', '2018-01-12 15:57:12', '27', '2', '1');
INSERT INTO `log` VALUES ('4349', 'xin4:学生登录操作', '2018-01-12 15:57:32', '27', '2', '1');
INSERT INTO `log` VALUES ('4350', 'xin1:学生登录操作', '2018-01-12 21:14:36', '24', '3', '1');
INSERT INTO `log` VALUES ('4351', 'xin1:品牌盈利能力', '2018-01-12 21:16:15', '24', '3', '1');
INSERT INTO `log` VALUES ('4352', 'xin1:品牌评价', '2018-01-12 21:16:16', '24', '3', '1');
INSERT INTO `log` VALUES ('4353', 'xin1:竞争对手的品牌', '2018-01-12 21:16:36', '24', '3', '1');
INSERT INTO `log` VALUES ('4354', 'xin1:查看品牌管理操作', '2018-01-12 21:16:38', '24', '3', '1');
INSERT INTO `log` VALUES ('4355', 'xin1:学生登录操作', '2018-01-12 21:26:27', '24', '3', '1');
INSERT INTO `log` VALUES ('4356', 'xin1:品牌盈利能力', '2018-01-12 21:26:32', '24', '3', '1');
INSERT INTO `log` VALUES ('4357', 'xin1:品牌评价', '2018-01-12 21:26:35', '24', '3', '1');
INSERT INTO `log` VALUES ('4358', 'xin1:竞争对手的品牌', '2018-01-12 21:26:36', '24', '3', '1');
INSERT INTO `log` VALUES ('4359', 'xin1:查看品牌管理操作', '2018-01-12 21:26:37', '24', '3', '1');
INSERT INTO `log` VALUES ('4360', 'xin1:学生登录操作', '2018-01-12 21:32:03', '24', '3', '1');
INSERT INTO `log` VALUES ('4361', 'xin1:品牌盈利能力', '2018-01-12 21:32:07', '24', '3', '1');
INSERT INTO `log` VALUES ('4362', 'xin1:品牌评价', '2018-01-12 21:32:09', '24', '3', '1');
INSERT INTO `log` VALUES ('4363', 'xin1:竞争对手的品牌', '2018-01-12 21:32:12', '24', '3', '1');
INSERT INTO `log` VALUES ('4364', 'xin1:查看品牌管理操作', '2018-01-12 21:32:13', '24', '3', '1');
INSERT INTO `log` VALUES ('4365', 'xin1:竞争对手的价格', '2018-01-12 21:32:17', '24', '3', '1');
INSERT INTO `log` VALUES ('4366', 'xin1:生产成本', '2018-01-12 21:32:17', '24', '3', '1');
INSERT INTO `log` VALUES ('4367', 'xin1:可销售品牌', '2018-01-12 21:32:18', '24', '3', '1');
INSERT INTO `log` VALUES ('4368', 'xin1:竞争对手的广告', '2018-01-12 21:32:21', '24', '3', '1');
INSERT INTO `log` VALUES ('4369', 'xin1:设计广告', '2018-01-12 21:32:22', '24', '3', '1');
INSERT INTO `log` VALUES ('4370', 'xin1:查看媒体偏好', '2018-01-12 21:32:24', '24', '3', '1');
INSERT INTO `log` VALUES ('4371', 'xin1:核查广告语', '2018-01-12 21:32:27', '24', '3', '1');
INSERT INTO `log` VALUES ('4372', 'xin1:查看实体销售操作', '2018-01-12 21:32:55', '24', '3', '1');
INSERT INTO `log` VALUES ('4373', 'xin1:查看网络销售中心操作', '2018-01-12 21:32:58', '24', '3', '1');
INSERT INTO `log` VALUES ('4374', 'xin1:查看业内销售人员薪酬', '2018-01-12 21:33:03', '24', '3', '1');
INSERT INTO `log` VALUES ('4375', 'xin1:显示业内销售人员薪酬', '2018-01-12 21:33:04', '24', '3', '1');
INSERT INTO `log` VALUES ('4376', 'xin1:查看业内工厂工人薪酬', '2018-01-12 21:33:05', '24', '3', '1');
INSERT INTO `log` VALUES ('4377', 'xin1:显示业内工厂工人薪酬', '2018-01-12 21:33:06', '24', '3', '1');
INSERT INTO `log` VALUES ('4378', 'xin1:查看上季度结果', '2018-01-12 21:33:07', '24', '3', '1');
INSERT INTO `log` VALUES ('4379', 'xin1:查看竞争力', '2018-01-12 21:33:09', '24', '3', '1');
INSERT INTO `log` VALUES ('4380', 'xin1:无用库存', '2018-01-12 21:33:10', '24', '3', '1');
INSERT INTO `log` VALUES ('4381', 'xin1:查看需求量预测操作', '2018-01-12 21:33:11', '24', '3', '1');
INSERT INTO `log` VALUES ('4382', 'xin1:查看运行产能操作', '2018-01-12 21:33:14', '24', '3', '1');
INSERT INTO `log` VALUES ('4383', 'xin1:查看固定产能操作', '2018-01-12 21:33:37', '24', '3', '1');
INSERT INTO `log` VALUES ('4384', 'xin1:查看库存控制', '2018-01-12 21:33:39', '24', '3', '1');
INSERT INTO `log` VALUES ('4385', 'xin1:学生登录操作', '2018-01-12 21:36:13', '24', '3', '1');
INSERT INTO `log` VALUES ('4386', 'xin1:品牌盈利能力', '2018-01-12 21:36:17', '24', '3', '1');
INSERT INTO `log` VALUES ('4387', 'xin1:品牌评价', '2018-01-12 21:36:20', '24', '3', '1');
INSERT INTO `log` VALUES ('4388', 'xin1:品牌盈利能力', '2018-01-12 21:37:40', '24', '3', '1');
INSERT INTO `log` VALUES ('4389', 'xin1:品牌盈利能力', '2018-01-12 21:41:36', '24', '3', '1');
INSERT INTO `log` VALUES ('4390', 'xin1:品牌评价', '2018-01-12 21:56:35', '24', '3', '1');
INSERT INTO `log` VALUES ('4391', 'user1:学生登录操作', '2018-01-12 21:57:23', '21', '2', '1');
INSERT INTO `log` VALUES ('4392', 'xin1:学生登录操作', '2018-01-12 21:57:58', '24', '3', '1');
INSERT INTO `log` VALUES ('4393', 'xin1:品牌评价', '2018-01-12 21:58:01', '24', '3', '1');
INSERT INTO `log` VALUES ('4394', 'xin1:学生登录操作', '2018-01-12 21:59:13', '24', '3', '1');
INSERT INTO `log` VALUES ('4395', 'xin1:品牌评价', '2018-01-12 21:59:18', '24', '3', '1');
INSERT INTO `log` VALUES ('4396', 'xin1:竞争对手的品牌', '2018-01-12 21:59:19', '24', '3', '1');
INSERT INTO `log` VALUES ('4397', 'xin1:查看品牌管理操作', '2018-01-12 21:59:40', '24', '3', '1');
INSERT INTO `log` VALUES ('4398', 'xin1:学生登录操作', '2018-01-12 22:10:55', '24', '3', '1');
INSERT INTO `log` VALUES ('4399', 'xin1:品牌盈利能力', '2018-01-12 22:10:57', '24', '3', '1');
INSERT INTO `log` VALUES ('4400', 'xin1:品牌评价', '2018-01-12 22:11:57', '24', '3', '1');
INSERT INTO `log` VALUES ('4401', 'xin1:竞争对手的品牌', '2018-01-12 22:12:00', '24', '3', '1');
INSERT INTO `log` VALUES ('4402', 'xin1:品牌盈利能力', '2018-01-12 22:12:01', '24', '3', '1');
INSERT INTO `log` VALUES ('4403', 'xin1:学生登录操作', '2018-01-13 09:39:47', '24', '3', '1');
INSERT INTO `log` VALUES ('4404', 'xin1:品牌盈利能力', '2018-01-13 09:39:51', '24', '3', '1');
INSERT INTO `log` VALUES ('4405', 'xin1:品牌评价', '2018-01-13 09:39:56', '24', '3', '1');
INSERT INTO `log` VALUES ('4406', 'xin1:竞争对手的品牌', '2018-01-13 09:40:10', '24', '3', '1');
INSERT INTO `log` VALUES ('4407', 'xin1:查看品牌管理操作', '2018-01-13 09:40:12', '24', '3', '1');
INSERT INTO `log` VALUES ('4408', 'xin1:竞争对手的价格', '2018-01-13 09:40:24', '24', '3', '1');
INSERT INTO `log` VALUES ('4409', 'xin1:生产成本', '2018-01-13 09:40:25', '24', '3', '1');
INSERT INTO `log` VALUES ('4410', 'xin1:可销售品牌', '2018-01-13 09:40:26', '24', '3', '1');
INSERT INTO `log` VALUES ('4411', 'xin1:学生登录操作', '2018-01-13 09:41:36', '24', '3', '1');
INSERT INTO `log` VALUES ('4412', 'xin1:品牌评价', '2018-01-13 09:41:42', '24', '3', '1');
INSERT INTO `log` VALUES ('4413', 'xin1:查看实体销售操作', '2018-01-13 09:42:19', '24', '3', '1');
INSERT INTO `log` VALUES ('4414', 'xin1:查看网络销售中心操作', '2018-01-13 09:42:30', '24', '3', '1');
INSERT INTO `log` VALUES ('4415', 'xin1:查看业内销售人员薪酬', '2018-01-13 09:42:33', '24', '3', '1');
INSERT INTO `log` VALUES ('4416', 'xin1:查看内部持股操作', '2018-01-13 09:42:41', '24', '3', '1');
INSERT INTO `log` VALUES ('4417', 'xin1:查看定期存款操作', '2018-01-13 09:42:42', '24', '3', '1');
INSERT INTO `log` VALUES ('4418', 'xin1:查看上季度结果', '2018-01-13 09:42:44', '24', '3', '1');
INSERT INTO `log` VALUES ('4419', 'xin1:查看竞争力', '2018-01-13 09:42:45', '24', '3', '1');
INSERT INTO `log` VALUES ('4420', 'xin1:无用库存', '2018-01-13 09:42:45', '24', '3', '1');
INSERT INTO `log` VALUES ('4421', 'xin1:查看需求量预测操作', '2018-01-13 09:42:46', '24', '3', '1');
INSERT INTO `log` VALUES ('4422', 'xin1:查看库存控制', '2018-01-13 09:42:48', '24', '3', '1');
INSERT INTO `log` VALUES ('4423', 'xin1:查看运行产能操作', '2018-01-13 09:42:49', '24', '3', '1');
INSERT INTO `log` VALUES ('4424', 'xin1:查看固定产能操作', '2018-01-13 09:42:50', '24', '3', '1');
INSERT INTO `log` VALUES ('4425', 'xin1:查看现金流表操作', '2018-01-13 09:42:54', '24', '3', '1');
INSERT INTO `log` VALUES ('4426', 'xin1:查看利润表操作', '2018-01-13 09:42:56', '24', '3', '1');
INSERT INTO `log` VALUES ('4427', 'xin1:查看资产负债表操作', '2018-01-13 09:42:57', '24', '3', '1');
INSERT INTO `log` VALUES ('4428', 'xin1:查看目标策略操作', '2018-01-13 09:43:01', '24', '3', '1');
INSERT INTO `log` VALUES ('4429', 'xin1:查看决策汇总操作', '2018-01-13 09:43:03', '24', '3', '1');
INSERT INTO `log` VALUES ('4430', 'xin1:显示业内销售人员薪酬', '2018-01-13 09:43:08', '24', '3', '1');
INSERT INTO `log` VALUES ('4431', 'xin1:查看业内工厂工人薪酬', '2018-01-13 09:43:08', '24', '3', '1');
INSERT INTO `log` VALUES ('4432', 'xin1:显示业内工厂工人薪酬', '2018-01-13 09:43:09', '24', '3', '1');
INSERT INTO `log` VALUES ('4433', 'xin1:品牌盈利能力', '2018-01-13 09:57:24', '24', '3', '1');
INSERT INTO `log` VALUES ('4434', 'xin1:品牌评价', '2018-01-13 09:57:25', '24', '3', '1');
INSERT INTO `log` VALUES ('4435', 'xin1:竞争对手的品牌', '2018-01-13 09:57:27', '24', '3', '1');
INSERT INTO `log` VALUES ('4436', 'xin1:品牌盈利能力', '2018-01-13 10:00:48', '24', '3', '1');
INSERT INTO `log` VALUES ('4437', 'xin1:学生登录操作', '2018-01-13 10:12:58', '24', '3', '1');
INSERT INTO `log` VALUES ('4438', 'xin1:学生登录操作', '2018-01-13 10:15:01', '24', '3', '1');
INSERT INTO `log` VALUES ('4439', 'xin1:学生登录操作', '2018-01-13 10:17:18', '24', '3', '1');

-- ----------------------------
-- Table structure for market_info
-- ----------------------------
DROP TABLE IF EXISTS `market_info`;
CREATE TABLE `market_info` (
  `id` int(11) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `practical` int(11) DEFAULT NULL,
  `perfect` int(11) DEFAULT NULL,
  `business` int(11) DEFAULT NULL,
  `web_practical` int(11) DEFAULT NULL,
  `web_perfect` int(11) DEFAULT NULL,
  `web_business` int(11) DEFAULT NULL,
  `open` int(11) DEFAULT NULL,
  `rent` int(11) DEFAULT NULL,
  `web_open` int(11) DEFAULT NULL,
  `web_rent` int(11) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of market_info
-- ----------------------------
INSERT INTO `market_info` VALUES ('1', '新加坡', '1441', '1897', '1986', '1000', '1100', '1200', '100000', '50000', '70000', '30000', 'images/sinapore.jpg');
INSERT INTO `market_info` VALUES ('2', '香港-中国', '1532', '1912', '1873', '1300', '1400', '1500', '100001', '50001', '70001', '30001', 'images/hongkong.jpg');
INSERT INTO `market_info` VALUES ('3', '莫斯科-俄罗斯', '1757', '1896', '196', '1500', '1600', '1700', '100002', '50002', '70002', '30002', 'images/moscow1.jpg');
INSERT INTO `market_info` VALUES ('4', '新德里-印度', '1875', '1657', '154', '1800', '1900', '2000', '100003', '50003', '70003', '30003', 'images/newdelhi.jpg');

-- ----------------------------
-- Table structure for market_info2
-- ----------------------------
DROP TABLE IF EXISTS `market_info2`;
CREATE TABLE `market_info2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `competition_id` int(11) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `perfect` int(11) DEFAULT NULL,
  `business` int(11) DEFAULT NULL,
  `practical` int(11) DEFAULT NULL,
  `web_perfect` int(11) DEFAULT NULL,
  `web_business` int(11) DEFAULT NULL,
  `web_practical` int(11) DEFAULT NULL,
  `open` int(255) DEFAULT NULL,
  `rent` int(255) DEFAULT NULL,
  `web_open` int(255) DEFAULT NULL,
  `web_rent` int(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of market_info2
-- ----------------------------
INSERT INTO `market_info2` VALUES ('1', '1', '新加坡', '1890', '1980', '1440', '1100', '1200', '1000', '10000', '100', '101', '111', 'images/sinapore.jpg');
INSERT INTO `market_info2` VALUES ('2', '1', '香港-中国', '1910', '1870', '1530', '1400', '1500', '1300', '10001', '200', '202', '222', 'images/hongkong.jpg');
INSERT INTO `market_info2` VALUES ('3', '1', '莫斯科-俄罗斯', '1890', '190', '1750', '1600', '1700', '1500', '10002', '300', '303', '333', 'images/moscow1.jpg');
INSERT INTO `market_info2` VALUES ('4', '1', '新德里-印度', '1650', '150', '1870', '1900', '2000', '1800', '10003', '400', '404', '444', 'images/newdelhi.jpg');
INSERT INTO `market_info2` VALUES ('13', '7', '莫斯科', '4500', '9000', '4500', '4500', '9000', '4500', '100000', '10001', '30001', '20001', 'images/moscow1.jpg');
INSERT INTO `market_info2` VALUES ('14', '7', '新加坡', '6750', '6750', '4500', '6750', '6750', '4500', '200000', '10002', '30002', '20002', 'images/sinapore.jpg');
INSERT INTO `market_info2` VALUES ('15', '7', '香港', '2250', '4500', '2250', '2250', '4500', '2250', '300000', '10003', '30003', '20002', 'images/hongkong.jpg');
INSERT INTO `market_info2` VALUES ('16', '7', '新德里', '1790', '890', '1790', '1790', '890', '1790', '40000', '10004', '30004', '20003', 'images/newdelhi.jpg');
INSERT INTO `market_info2` VALUES ('17', '8', '莫斯科', '2700', '5400', '2700', '1790', '3590', '1790', '100000', '10001', '30001', '20001', 'images/moscow1.jpg');
INSERT INTO `market_info2` VALUES ('18', '8', '新加坡', '4050', '4050', '2700', '2690', '2690', '1790', '200000', '10002', '30002', '20002', 'images/sinapore.jpg');
INSERT INTO `market_info2` VALUES ('19', '8', '香港', '1350', '2700', '1350', '890', '1790', '890', '300000', '10003', '30003', '20002', 'images/hongkong.jpg');
INSERT INTO `market_info2` VALUES ('20', '8', '新德里', '1080', '540', '1080', '710', '350', '710', '40000', '10004', '30004', '20003', 'images/newdelhi.jpg');
INSERT INTO `market_info2` VALUES ('21', '9', '莫斯科', '2160', '4320', '2160', '1430', '2870', '1430', '100000', '10001', '30001', '20001', 'images/moscow1.jpg');
INSERT INTO `market_info2` VALUES ('22', '9', '新加坡', '3240', '3240', '2160', '2150', '2150', '1430', '200000', '10002', '30002', '20002', 'images/sinapore.jpg');
INSERT INTO `market_info2` VALUES ('23', '9', '香港', '1080', '2160', '1080', '710', '1430', '710', '300000', '10003', '30003', '20002', 'images/hongkong.jpg');
INSERT INTO `market_info2` VALUES ('24', '9', '新德里', '860', '430', '860', '570', '280', '570', '40000', '10004', '30004', '20003', 'images/newdelhi.jpg');

-- ----------------------------
-- Table structure for market_info_weight
-- ----------------------------
DROP TABLE IF EXISTS `market_info_weight`;
CREATE TABLE `market_info_weight` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `city_name` varchar(255) DEFAULT NULL,
  `perfect` float(10,2) DEFAULT NULL,
  `business` float(10,2) DEFAULT NULL,
  `practical` float(10,2) DEFAULT NULL,
  `rent` int(255) DEFAULT NULL,
  `open` int(255) DEFAULT NULL,
  `web_rent` int(255) DEFAULT NULL,
  `web_open` int(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of market_info_weight
-- ----------------------------
INSERT INTO `market_info_weight` VALUES ('1', '莫斯科', '0.10', '0.20', '0.10', '10001', '100000', '20001', '30001', 'images/moscow1.jpg');
INSERT INTO `market_info_weight` VALUES ('2', '新加坡', '0.15', '0.15', '0.10', '10002', '200000', '20002', '30002', 'images/sinapore.jpg');
INSERT INTO `market_info_weight` VALUES ('3', '香港', '0.05', '0.10', '0.05', '10003', '300000', '20002', '30003', 'images/hongkong.jpg');
INSERT INTO `market_info_weight` VALUES ('4', '新德里', '0.04', '0.02', '0.04', '10004', '40000', '20003', '30004', 'images/newdelhi.jpg');

-- ----------------------------
-- Table structure for market_share_weight
-- ----------------------------
DROP TABLE IF EXISTS `market_share_weight`;
CREATE TABLE `market_share_weight` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(15) DEFAULT NULL,
  `ad_weight` float DEFAULT NULL,
  `market_weight` float DEFAULT NULL,
  `design_weight` float DEFAULT NULL,
  `price_weight` float DEFAULT NULL,
  `saleman_weight` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of market_share_weight
-- ----------------------------
INSERT INTO `market_share_weight` VALUES ('1', '实用型', '0.1', '0.2', '0.3', '0.2', '0.3');
INSERT INTO `market_share_weight` VALUES ('2', '极致型', '0.2', '0.2', '0.2', '0.2', '0.2');
INSERT INTO `market_share_weight` VALUES ('3', '商务型', '0.3', '0.1', '0.2', '0.3', '0.1');

-- ----------------------------
-- Table structure for media_info
-- ----------------------------
DROP TABLE IF EXISTS `media_info`;
CREATE TABLE `media_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `detail` varchar(255) DEFAULT NULL,
  `practical` int(11) DEFAULT NULL,
  `perfect` int(11) DEFAULT NULL,
  `business` int(11) DEFAULT NULL,
  `cost` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of media_info
-- ----------------------------
INSERT INTO `media_info` VALUES ('1', '纸媒（报纸，杂志广告）', '82', '93', '131', '8000');
INSERT INTO `media_info` VALUES ('2', '广播', '127', '95', '89', '13000');
INSERT INTO `media_info` VALUES ('3', '网络', '143', '149', '142', '24000');
INSERT INTO `media_info` VALUES ('4', '户外', '97', '139', '151', '16000');
INSERT INTO `media_info` VALUES ('5', '电视', '152', '125', '121', '21000');

-- ----------------------------
-- Table structure for member
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `nation` varchar(255) DEFAULT NULL,
  `diplomas` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member
-- ----------------------------
INSERT INTO `member` VALUES ('21', '1', 'user1@163.com', '123456', 'user1', null, null, null, null, null);
INSERT INTO `member` VALUES ('22', '2', 'user2@163.com', '123456', 'user2', null, null, null, null, null);
INSERT INTO `member` VALUES ('23', '3', 'user3@163.com', '123456', 'user3', null, null, null, null, null);
INSERT INTO `member` VALUES ('24', '19', 'xin1@163.com', '123456', 'xin1', null, null, null, null, null);
INSERT INTO `member` VALUES ('25', '20', 'xin2@163.com', '123456', 'xin2', null, null, null, null, null);
INSERT INTO `member` VALUES ('26', '21', 'xin3@163.com', '123456', 'xin3', null, null, null, null, null);
INSERT INTO `member` VALUES ('27', '22', 'xin4@163.com', '123456', 'xin4', null, null, null, null, null);

-- ----------------------------
-- Table structure for member_duty
-- ----------------------------
DROP TABLE IF EXISTS `member_duty`;
CREATE TABLE `member_duty` (
  `id` int(11) NOT NULL,
  `main_duty_id` int(11) DEFAULT NULL,
  `minor_duty_id` int(11) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member_duty
-- ----------------------------

-- ----------------------------
-- Table structure for operation_capacity
-- ----------------------------
DROP TABLE IF EXISTS `operation_capacity`;
CREATE TABLE `operation_capacity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) DEFAULT NULL,
  `quarter` int(11) DEFAULT NULL,
  `operate_capacity` int(11) DEFAULT NULL,
  `worker_productivity` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operation_capacity
-- ----------------------------
INSERT INTO `operation_capacity` VALUES ('1', '1', '2', '40', '80');
INSERT INTO `operation_capacity` VALUES ('2', '2', '2', '80', '80');
INSERT INTO `operation_capacity` VALUES ('3', '3', '2', '45', '82');
INSERT INTO `operation_capacity` VALUES ('4', '1', '3', '3', '3');
INSERT INTO `operation_capacity` VALUES ('5', '19', '2', '30', '70');
INSERT INTO `operation_capacity` VALUES ('6', '20', '2', '20', '72');
INSERT INTO `operation_capacity` VALUES ('7', '21', '2', '45', '69');
INSERT INTO `operation_capacity` VALUES ('8', '22', '2', '20', '80');

-- ----------------------------
-- Table structure for personal_goal
-- ----------------------------
DROP TABLE IF EXISTS `personal_goal`;
CREATE TABLE `personal_goal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) NOT NULL,
  `goal_id` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of personal_goal
-- ----------------------------

-- ----------------------------
-- Table structure for personal_goal_info
-- ----------------------------
DROP TABLE IF EXISTS `personal_goal_info`;
CREATE TABLE `personal_goal_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `detail` varchar(255) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of personal_goal_info
-- ----------------------------
INSERT INTO `personal_goal_info` VALUES ('1', '体验竞赛乐趣', '团队目标');
INSERT INTO `personal_goal_info` VALUES ('2', '培养领导能力', '团队目标');
INSERT INTO `personal_goal_info` VALUES ('3', '培养团队协作能力', '团队目标');
INSERT INTO `personal_goal_info` VALUES ('4', '培养市场营销能力', '团队目标');
INSERT INTO `personal_goal_info` VALUES ('5', '培养财务管理能力', '团队目标');
INSERT INTO `personal_goal_info` VALUES ('6', '培养电子商务能力', '团队目标');
INSERT INTO `personal_goal_info` VALUES ('7', '培养广告管理能力', '团队目标');
INSERT INTO `personal_goal_info` VALUES ('8', '培养对市场营销的全面了解', '团队目标');

-- ----------------------------
-- Table structure for price_info
-- ----------------------------
DROP TABLE IF EXISTS `price_info`;
CREATE TABLE `price_info` (
  `id` int(11) NOT NULL,
  `practical` int(11) NOT NULL,
  `perfect` int(11) NOT NULL,
  `business` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of price_info
-- ----------------------------
INSERT INTO `price_info` VALUES ('1', '1500', '2500', '4000');

-- ----------------------------
-- Table structure for product_efficiency
-- ----------------------------
DROP TABLE IF EXISTS `product_efficiency`;
CREATE TABLE `product_efficiency` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `competition_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quarter` tinyint(4) DEFAULT NULL,
  `product_type` varchar(15) DEFAULT NULL,
  `market_id` int(11) DEFAULT NULL,
  `ad_weight` int(11) DEFAULT NULL,
  `design_weight` int(11) DEFAULT NULL,
  `market_weight` int(11) DEFAULT NULL,
  `saleman_num` int(11) DEFAULT NULL,
  `saleman_salary` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=407 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product_efficiency
-- ----------------------------
INSERT INTO `product_efficiency` VALUES ('277', '18', '97', '49', '2', '极致型', null, '1803', '107', '3', '10', '5677', '40000');
INSERT INTO `product_efficiency` VALUES ('278', '18', '97', '51', '2', '实用型', null, '601', '63', '3', '10', '5677', '1000');
INSERT INTO `product_efficiency` VALUES ('279', '18', '98', '52', '2', '极致型', null, '327', '83', '3', '13', '6141', '2000');
INSERT INTO `product_efficiency` VALUES ('280', '18', '98', '53', '2', '商务型', null, '480', '70', '3', '13', '6141', '1999');
INSERT INTO `product_efficiency` VALUES ('281', '18', '99', '54', '2', '商务型', null, '361', '77', '2', '15', '6769', '2000');
INSERT INTO `product_efficiency` VALUES ('282', '18', '99', '55', '2', '实用型', null, '413', '61', '2', '15', '6769', '2001');
INSERT INTO `product_efficiency` VALUES ('383', '9', '19', '8', '2', '极致型', '21', '232', '83', '1', '5', '4341', '1000');
INSERT INTO `product_efficiency` VALUES ('384', '9', '19', '8', '2', '极致型', '22', '232', '83', '1', '5', '4341', '1000');
INSERT INTO `product_efficiency` VALUES ('385', '9', '19', '8', '2', '极致型', '23', '232', '83', '1', '4', '4341', '1000');
INSERT INTO `product_efficiency` VALUES ('386', '9', '19', '8', '2', '极致型', '100', '232', '83', '1', '5', '4341', '1000');
INSERT INTO `product_efficiency` VALUES ('387', '9', '20', '9', '2', '商务型', '22', '788', '70', '1', '6', '3971', '2000');
INSERT INTO `product_efficiency` VALUES ('388', '9', '20', '9', '2', '商务型', '23', '788', '70', '1', '8', '3971', '2000');
INSERT INTO `product_efficiency` VALUES ('389', '9', '20', '9', '2', '商务型', '100', '788', '70', '1', '7', '3971', '2000');
INSERT INTO `product_efficiency` VALUES ('390', '9', '21', '10', '2', '商务型', '23', '1162', '70', '1', '7', '5196', '0');
INSERT INTO `product_efficiency` VALUES ('391', '9', '21', '10', '2', '商务型', '24', '1162', '70', '1', '5', '5196', '0');
INSERT INTO `product_efficiency` VALUES ('392', '9', '21', '10', '2', '商务型', '100', '1162', '70', '1', '7', '5196', '0');
INSERT INTO `product_efficiency` VALUES ('393', '9', '22', '11', '2', '商务型', '22', '564', '77', '1', '7', '5456', '3000');
INSERT INTO `product_efficiency` VALUES ('394', '9', '22', '11', '2', '商务型', '100', '564', '77', '1', '7', '5456', '3000');
INSERT INTO `product_efficiency` VALUES ('395', '9', '19', '12', '2', '商务型', '21', '331', '70', '1', '5', '4341', '2000');
INSERT INTO `product_efficiency` VALUES ('396', '9', '19', '12', '2', '商务型', '22', '331', '70', '1', '5', '4341', '2000');
INSERT INTO `product_efficiency` VALUES ('397', '9', '19', '12', '2', '商务型', '23', '331', '70', '1', '4', '4341', '2000');
INSERT INTO `product_efficiency` VALUES ('398', '9', '19', '12', '2', '商务型', '100', '331', '70', '1', '5', '4341', '2000');
INSERT INTO `product_efficiency` VALUES ('399', '9', '20', '13', '2', '实用型', '22', '448', '60', '1', '6', '3971', '2100');
INSERT INTO `product_efficiency` VALUES ('400', '9', '20', '13', '2', '实用型', '23', '448', '60', '1', '8', '3971', '2100');
INSERT INTO `product_efficiency` VALUES ('401', '9', '20', '13', '2', '实用型', '100', '448', '60', '1', '7', '3971', '2100');
INSERT INTO `product_efficiency` VALUES ('402', '9', '21', '14', '2', '实用型', '23', '642', '62', '1', '7', '5196', '0');
INSERT INTO `product_efficiency` VALUES ('403', '9', '21', '14', '2', '实用型', '24', '642', '62', '1', '5', '5196', '0');
INSERT INTO `product_efficiency` VALUES ('404', '9', '21', '14', '2', '实用型', '100', '642', '62', '1', '7', '5196', '0');
INSERT INTO `product_efficiency` VALUES ('405', '9', '22', '15', '2', '商务型', '22', '725', '71', '1', '7', '5456', '3200');
INSERT INTO `product_efficiency` VALUES ('406', '9', '22', '15', '2', '商务型', '100', '725', '71', '1', '7', '5456', '3200');

-- ----------------------------
-- Table structure for product_info
-- ----------------------------
DROP TABLE IF EXISTS `product_info`;
CREATE TABLE `product_info` (
  `id` int(11) NOT NULL,
  `detail` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `practical` tinyint(4) DEFAULT NULL,
  `perfect` tinyint(4) DEFAULT NULL,
  `business` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product_info
-- ----------------------------
INSERT INTO `product_info` VALUES ('1', '基本组件', '必备', '53', '8', '8', '8');
INSERT INTO `product_info` VALUES ('2', '移动', '运营商', '80', '4', '5', '5');
INSERT INTO `product_info` VALUES ('3', '联通', '运营商', '80', '4', '5', '5');
INSERT INTO `product_info` VALUES ('4', '电信', '运营商', '80', '4', '5', '5');
INSERT INTO `product_info` VALUES ('5', '全网通', '运营商', '120', '8', '8', '8');
INSERT INTO `product_info` VALUES ('6', '支持蓝牙传输', '蓝牙', '30', '5', '5', '7');
INSERT INTO `product_info` VALUES ('7', '4.7寸', '屏幕尺寸', '60', '5', '6', '5');
INSERT INTO `product_info` VALUES ('8', '5.0寸', '屏幕尺寸', '70', '5', '6', '5');
INSERT INTO `product_info` VALUES ('9', '5.2寸', '屏幕尺寸', '80', '5', '6', '5');
INSERT INTO `product_info` VALUES ('10', '5.5寸', '屏幕尺寸', '90', '5', '6', '6');
INSERT INTO `product_info` VALUES ('11', '电容屏', '触控方式', '111', '5', '6', '6');
INSERT INTO `product_info` VALUES ('12', '电阻屏', '触控方式', '222', '5', '8', '6');
INSERT INTO `product_info` VALUES ('13', '初级', '处理器速度', '121', '5', '7', '7');
INSERT INTO `product_info` VALUES ('14', '中级', '处理器速度', '131', '5', '7', '7');
INSERT INTO `product_info` VALUES ('15', '高级', '处理器速度', '141', '5', '7', '7');
INSERT INTO `product_info` VALUES ('16', '16G', '机身容量', '122', '5', '7', '6');
INSERT INTO `product_info` VALUES ('17', '32G', '机身容量', '132', '5', '7', '6');
INSERT INTO `product_info` VALUES ('18', '64G', '机身容量', '142', '5', '7', '6');
INSERT INTO `product_info` VALUES ('19', '128G', '机身容量', '152', '5', '7', '6');
INSERT INTO `product_info` VALUES ('20', '800W', '拍照像素', '115', '7', '7', '6');
INSERT INTO `product_info` VALUES ('21', '1300W', '拍照像素', '125', '7', '7', '6');
INSERT INTO `product_info` VALUES ('22', '1500W', '拍照像素', '135', '7', '7', '6');
INSERT INTO `product_info` VALUES ('23', '防尘/防水/防摔', '机身特性', '111', '7', '7', '5');
INSERT INTO `product_info` VALUES ('24', '轻薄美观', '机身特性', '111', '7', '7', '5');
INSERT INTO `product_info` VALUES ('25', '双卡双待', '机身特性', '111', '7', '7', '5');
INSERT INTO `product_info` VALUES ('26', '1800mAh', '电池容量', '143', '5', '7', '8');
INSERT INTO `product_info` VALUES ('27', '2300mAh', '电池容量', '153', '6', '7', '8');
INSERT INTO `product_info` VALUES ('28', '3000mAh', '电池容量', '163', '7', '7', '8');
INSERT INTO `product_info` VALUES ('29', 'GPS定位', '其他功能', '88', '2', '8', '5');
INSERT INTO `product_info` VALUES ('30', '指纹识别', '其他功能', '88', '3', '8', '7');
INSERT INTO `product_info` VALUES ('31', '提供数据保护', '其他功能', '88', '3', '8', '7');
INSERT INTO `product_info` VALUES ('32', '手机管家', '其他功能', '88', '3', '8', '7');
INSERT INTO `product_info` VALUES ('33', '二维码扫描', '其他功能', '88', '3', '8', '3');

-- ----------------------------
-- Table structure for product_market_share
-- ----------------------------
DROP TABLE IF EXISTS `product_market_share`;
CREATE TABLE `product_market_share` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `competition_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quarter` tinyint(4) DEFAULT NULL,
  `product_type` varchar(15) DEFAULT NULL,
  `market_share` double(10,3) DEFAULT NULL,
  `singapore_need` int(11) DEFAULT NULL,
  `singapore_sale` int(11) DEFAULT NULL,
  `hongkong_need` int(11) DEFAULT NULL,
  `hongkong_sale` int(11) DEFAULT NULL,
  `moscow_need` int(11) DEFAULT NULL,
  `moscow_sale` int(11) DEFAULT NULL,
  `newdelhi_need` int(11) DEFAULT NULL,
  `newdelhi_sale` int(11) DEFAULT NULL,
  `online_need` int(11) DEFAULT NULL,
  `online_sale` int(11) DEFAULT NULL,
  `stockoun` int(11) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `costofselling` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=320 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product_market_share
-- ----------------------------
INSERT INTO `product_market_share` VALUES ('282', '18', '97', '51', '2', '实用型', '0.540', '3091', '292', null, null, null, null, null, null, null, null, '2799', '0', null);
INSERT INTO `product_market_share` VALUES ('283', '18', '99', '55', '2', '实用型', '0.460', '2632', '1547', null, null, null, null, null, null, null, null, '1085', '0', null);
INSERT INTO `product_market_share` VALUES ('284', '18', '97', '49', '2', '极致型', '0.428', '2506', '585', null, null, null, null, null, null, null, null, '1921', '0', null);
INSERT INTO `product_market_share` VALUES ('285', '18', '98', '52', '2', '极致型', '0.572', '3343', '1260', null, null, null, null, null, null, null, null, '2083', '0', null);
INSERT INTO `product_market_share` VALUES ('286', '18', '98', '53', '2', '商务型', '0.508', '2342', '2016', null, null, null, null, null, null, null, null, '326', '0', null);
INSERT INTO `product_market_share` VALUES ('287', '18', '99', '54', '2', '商务型', '0.492', '2272', '1547', null, null, null, null, null, null, null, null, '725', '0', null);
INSERT INTO `product_market_share` VALUES ('312', '9', '20', '13', '2', '实用型', '0.661', '1496', '100', '682', '133', '0', '0', '0', '0', '0', '0', '1945', '0', null);
INSERT INTO `product_market_share` VALUES ('313', '9', '21', '14', '2', '实用型', '0.339', '0', '0', '631', '355', '0', '0', '487', '253', '0', '0', '510', '0', null);
INSERT INTO `product_market_share` VALUES ('314', '9', '19', '8', '2', '极致型', '1.000', '2041', '151', '680', '121', '1360', '151', '0', '0', '0', '0', '3658', '0', null);
INSERT INTO `product_market_share` VALUES ('315', '9', '19', '12', '2', '商务型', '0.391', '1879', '202', '1051', '161', '2721', '202', '0', '0', '0', '0', '5086', '0', null);
INSERT INTO `product_market_share` VALUES ('316', '9', '20', '9', '2', '商务型', '0.241', '2190', '100', '1291', '133', '0', '0', '0', '0', '0', '0', '3248', '0', null);
INSERT INTO `product_market_share` VALUES ('317', '9', '22', '11', '2', '商务型', '0.139', '2008', '213', '0', '0', '0', '0', '0', '0', '0', '0', '1795', '0', null);
INSERT INTO `product_market_share` VALUES ('318', '9', '22', '15', '2', '商务型', '0.142', '2057', '189', '0', '0', '0', '0', '0', '0', '0', '0', '1868', '0', null);
INSERT INTO `product_market_share` VALUES ('319', '9', '21', '10', '2', '商务型', '0.087', '0', '0', '1069', '355', '0', '0', '189', '189', '0', '0', '714', '64', null);

-- ----------------------------
-- Table structure for product_price
-- ----------------------------
DROP TABLE IF EXISTS `product_price`;
CREATE TABLE `product_price` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `quarter` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `youji` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product_price
-- ----------------------------
INSERT INTO `product_price` VALUES ('1', '1', '1', '2', '2000', '40');
INSERT INTO `product_price` VALUES ('2', '5', '1', '2', '2001', '50');
INSERT INTO `product_price` VALUES ('3', '2', '2', '2', '2001', '20');
INSERT INTO `product_price` VALUES ('4', '3', '2', '2', '2002', '30');
INSERT INTO `product_price` VALUES ('5', '6', '2', '2', '2003', '40');
INSERT INTO `product_price` VALUES ('6', '4', '3', '2', '3000', '100');
INSERT INTO `product_price` VALUES ('7', '7', '3', '2', '3001', '200');
INSERT INTO `product_price` VALUES ('8', '8', '19', '2', '1000', '10');
INSERT INTO `product_price` VALUES ('9', '12', '19', '2', '2000', '20');
INSERT INTO `product_price` VALUES ('10', '9', '20', '2', '2000', '20');
INSERT INTO `product_price` VALUES ('11', '13', '20', '2', '2100', '21');
INSERT INTO `product_price` VALUES ('12', '11', '22', '2', '3000', '30');
INSERT INTO `product_price` VALUES ('13', '15', '22', '2', '3200', '32');

-- ----------------------------
-- Table structure for pysicalemploee
-- ----------------------------
DROP TABLE IF EXISTS `pysicalemploee`;
CREATE TABLE `pysicalemploee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `companyid` int(11) NOT NULL,
  `location` int(11) NOT NULL,
  `saller` int(11) NOT NULL,
  `aftersale` int(11) NOT NULL,
  `quater` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pysicalemploee
-- ----------------------------
INSERT INTO `pysicalemploee` VALUES ('1', '1', '1', '11', '1', '2');
INSERT INTO `pysicalemploee` VALUES ('2', '1', '2', '22', '2', '2');
INSERT INTO `pysicalemploee` VALUES ('3', '1', '3', '33', '3', '2');
INSERT INTO `pysicalemploee` VALUES ('4', '1', '4', '44', '4', '2');
INSERT INTO `pysicalemploee` VALUES ('5', '1', '4', '55', '5', '3');
INSERT INTO `pysicalemploee` VALUES ('6', '1', '3', '66', '6', '3');
INSERT INTO `pysicalemploee` VALUES ('7', '1', '2', '77', '7', '3');
INSERT INTO `pysicalemploee` VALUES ('8', '1', '1', '88', '8', '3');
INSERT INTO `pysicalemploee` VALUES ('19', '1', '1', '88', '8', '4');
INSERT INTO `pysicalemploee` VALUES ('20', '1', '2', '77', '7', '4');
INSERT INTO `pysicalemploee` VALUES ('21', '1', '3', '66', '6', '4');
INSERT INTO `pysicalemploee` VALUES ('22', '1', '4', '55', '5', '4');
INSERT INTO `pysicalemploee` VALUES ('23', '79', '1', '11', '1', '2');
INSERT INTO `pysicalemploee` VALUES ('24', '79', '2', '22', '2', '2');
INSERT INTO `pysicalemploee` VALUES ('25', '79', '3', '33', '3', '2');
INSERT INTO `pysicalemploee` VALUES ('26', '79', '4', '44', '4', '2');

-- ----------------------------
-- Table structure for sales_salary
-- ----------------------------
DROP TABLE IF EXISTS `sales_salary`;
CREATE TABLE `sales_salary` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) DEFAULT NULL,
  `quarter` int(11) DEFAULT NULL,
  `salary` int(11) DEFAULT NULL,
  `welfare` int(11) DEFAULT NULL,
  `holiday` int(11) DEFAULT NULL,
  `public_fund` int(11) DEFAULT NULL,
  `company_pension` int(11) DEFAULT NULL,
  `retired_pay` int(11) DEFAULT NULL,
  `salary_total` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sales_salary
-- ----------------------------
INSERT INTO `sales_salary` VALUES ('1', '1', '2', '5000', '2', '10', '2', '2', '2', '5536');
INSERT INTO `sales_salary` VALUES ('2', '2', '2', '6000', '3', '7', '3', '3', '3', '6835');
INSERT INTO `sales_salary` VALUES ('3', '3', '2', '4500', '3', '14', '3', '3', '7', '5392');
INSERT INTO `sales_salary` VALUES ('4', '1', '3', '4000', '0', '0', '0', '0', '0', '4000');
INSERT INTO `sales_salary` VALUES ('5', '19', '2', '4000', '2', '2', '2', '2', '2', '4341');
INSERT INTO `sales_salary` VALUES ('6', '20', '2', '3400', '3', '3', '4', '4', '5', '3971');
INSERT INTO `sales_salary` VALUES ('7', '21', '2', '4400', '4', '4', '4', '4', '5', '5196');
INSERT INTO `sales_salary` VALUES ('8', '22', '2', '4700', '5', '4', '3', '2', '5', '5456');

-- ----------------------------
-- Table structure for strategy_info
-- ----------------------------
DROP TABLE IF EXISTS `strategy_info`;
CREATE TABLE `strategy_info` (
  `id` int(11) NOT NULL,
  `detail` varchar(255) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of strategy_info
-- ----------------------------
INSERT INTO `strategy_info` VALUES ('1', '建立并保有一定的市场地位', '竞争地位');
INSERT INTO `strategy_info` VALUES ('2', '确立并保有市场领先地位', '竞争地位');
INSERT INTO `strategy_info` VALUES ('3', '做市场先入者', '竞争地位');
INSERT INTO `strategy_info` VALUES ('5', '重点关注规模较小、利润较高的细分市场', '市场规模');
INSERT INTO `strategy_info` VALUES ('6', '重点关注规模较大、竞争激烈的细分市场', '市场规模');
INSERT INTO `strategy_info` VALUES ('7', '重点关注主流市场之外的次要细分市场', '市场规模');
INSERT INTO `strategy_info` VALUES ('8', '重点关注规模较小、成本较低的区域市场', '区域市场');
INSERT INTO `strategy_info` VALUES ('9', '重点关注规模最大的区域市场，即使其成本较高', '区域市场');
INSERT INTO `strategy_info` VALUES ('10', '重点关注规模适中、成本适中的区域市场', '区域市场');
INSERT INTO `strategy_info` VALUES ('11', '重点关注销售成本最小的区域市场', '区域市场');
INSERT INTO `strategy_info` VALUES ('12', '提供最廉价的产品', '竞争能力');
INSERT INTO `strategy_info` VALUES ('13', '做市场份额方面的领先者', '竞争能力');
INSERT INTO `strategy_info` VALUES ('14', '做利润率方面的领先者', '竞争能力');
INSERT INTO `strategy_info` VALUES ('15', '做研究技术方面的领先者', '竞争能力');
INSERT INTO `strategy_info` VALUES ('16', '提供最优的销售/ 售后服务', '竞争能力');

-- ----------------------------
-- Table structure for student_textbook
-- ----------------------------
DROP TABLE IF EXISTS `student_textbook`;
CREATE TABLE `student_textbook` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) DEFAULT NULL,
  `teacher_textbook_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student_textbook
-- ----------------------------
INSERT INTO `student_textbook` VALUES ('1', '3', '16');
INSERT INTO `student_textbook` VALUES ('2', '3', '16');
INSERT INTO `student_textbook` VALUES ('3', '3', '14');
INSERT INTO `student_textbook` VALUES ('4', '3', '13');
INSERT INTO `student_textbook` VALUES ('5', '7', '14');
INSERT INTO `student_textbook` VALUES ('6', '7', '13');
INSERT INTO `student_textbook` VALUES ('7', '9', '14');
INSERT INTO `student_textbook` VALUES ('8', '9', '13');
INSERT INTO `student_textbook` VALUES ('9', '6', '14');
INSERT INTO `student_textbook` VALUES ('10', '6', '13');
INSERT INTO `student_textbook` VALUES ('11', '2', '14');
INSERT INTO `student_textbook` VALUES ('12', '2', '13');
INSERT INTO `student_textbook` VALUES ('13', '10', '14');
INSERT INTO `student_textbook` VALUES ('14', '10', '13');
INSERT INTO `student_textbook` VALUES ('15', '5', '14');
INSERT INTO `student_textbook` VALUES ('16', '5', '13');
INSERT INTO `student_textbook` VALUES ('17', '8', '14');
INSERT INTO `student_textbook` VALUES ('18', '8', '13');
INSERT INTO `student_textbook` VALUES ('19', '3', '18');
INSERT INTO `student_textbook` VALUES ('20', '7', '18');
INSERT INTO `student_textbook` VALUES ('21', '9', '18');
INSERT INTO `student_textbook` VALUES ('22', '6', '18');
INSERT INTO `student_textbook` VALUES ('23', '2', '18');
INSERT INTO `student_textbook` VALUES ('24', '10', '18');
INSERT INTO `student_textbook` VALUES ('25', '2', '21');
INSERT INTO `student_textbook` VALUES ('26', '2', '20');
INSERT INTO `student_textbook` VALUES ('27', '4', '21');
INSERT INTO `student_textbook` VALUES ('28', '4', '20');
INSERT INTO `student_textbook` VALUES ('29', '1', '21');
INSERT INTO `student_textbook` VALUES ('30', '1', '20');
INSERT INTO `student_textbook` VALUES ('31', '3', '21');
INSERT INTO `student_textbook` VALUES ('32', '3', '20');
INSERT INTO `student_textbook` VALUES ('33', '14', '24');
INSERT INTO `student_textbook` VALUES ('34', '15', '24');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `org` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('1', 'sansux', 'zhou@163.com', '123456', 'usst', '副教授', '1234567890', '武汉', '1');
INSERT INTO `teacher` VALUES ('2', 'san', 'zhou2@163.com', '123456', 'usst', '副教授', '1231231231', '上海', '1');
INSERT INTO `teacher` VALUES ('3', 'cao', 'cao@163.com', '123456', null, null, null, null, '0');

-- ----------------------------
-- Table structure for teacher_reference
-- ----------------------------
DROP TABLE IF EXISTS `teacher_reference`;
CREATE TABLE `teacher_reference` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reference_name` varchar(100) DEFAULT NULL,
  `introduction` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher_reference
-- ----------------------------
INSERT INTO `teacher_reference` VALUES ('1', '数据库教程', '介绍数据库知识');
INSERT INTO `teacher_reference` VALUES ('2', '人力资源管理', '教你如何进行人力资源');
INSERT INTO `teacher_reference` VALUES ('3', '生产制造', null);
INSERT INTO `teacher_reference` VALUES ('4', '销售渠道', '教你怎样销售才能更好');

-- ----------------------------
-- Table structure for teacher_reference_book
-- ----------------------------
DROP TABLE IF EXISTS `teacher_reference_book`;
CREATE TABLE `teacher_reference_book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `book_name` varchar(50) DEFAULT NULL,
  `teacher_reference_id` int(11) DEFAULT NULL,
  `path` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher_reference_book
-- ----------------------------
INSERT INTO `teacher_reference_book` VALUES ('1', '数据库教程1', '1', 'F:\\360极速浏览器下载');
INSERT INTO `teacher_reference_book` VALUES ('2', '数据库教程2', '1', 'F:\\360极速浏览器下载');
INSERT INTO `teacher_reference_book` VALUES ('3', '数据库教程3', '1', 'F:\\360极速浏览器下载');
INSERT INTO `teacher_reference_book` VALUES ('4', '大幅度1', '2', 'F:\\360极速浏览器下载');
INSERT INTO `teacher_reference_book` VALUES ('5', '大幅度2', '2', 'F:\\360极速浏览器下载');
INSERT INTO `teacher_reference_book` VALUES ('6', '大幅度3', '3', 'F:\\360极速浏览器下载');
INSERT INTO `teacher_reference_book` VALUES ('7', '对不符合', '4', 'F:\\360极速浏览器下载');
INSERT INTO `teacher_reference_book` VALUES ('8', '返回该法', '4', 'F:\\360极速浏览器下载');

-- ----------------------------
-- Table structure for teacher_textbook
-- ----------------------------
DROP TABLE IF EXISTS `teacher_textbook`;
CREATE TABLE `teacher_textbook` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `path` varchar(200) DEFAULT NULL,
  `upload_time` varchar(20) DEFAULT NULL,
  `competition_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher_textbook
-- ----------------------------
INSERT INTO `teacher_textbook` VALUES ('20', 'teacher_textbook.sql', 'teacherTextbook/', '2017-07-01 04:54:44', '1');
INSERT INTO `teacher_textbook` VALUES ('21', 'CustomerSupportController.java', 'teacherTextbook/', '2017-07-01 07:16:45', '1');
INSERT INTO `teacher_textbook` VALUES ('22', 'Log.java', 'teacherTextbook/', '2017-07-01 09:00:48', '1');
INSERT INTO `teacher_textbook` VALUES ('23', 'Log.java', 'teacherTextbook/', '2017-07-01 09:01:13', '1');
INSERT INTO `teacher_textbook` VALUES ('24', 'saber.jpg', 'teacherTextbook/', '2017-07-02 07:44:07', '1');
INSERT INTO `teacher_textbook` VALUES ('25', 'market2.sql', 'teacherTextbook/1/16/', '2017-09-04 02:49:02', '16');

-- ----------------------------
-- Table structure for usage_info
-- ----------------------------
DROP TABLE IF EXISTS `usage_info`;
CREATE TABLE `usage_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `detail` varchar(50) NOT NULL,
  `practical` int(11) NOT NULL,
  `perfect` int(11) NOT NULL,
  `business` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usage_info
-- ----------------------------
INSERT INTO `usage_info` VALUES ('1', '手机管家', '115', '123', '126');
INSERT INTO `usage_info` VALUES ('2', '文件管理', '100', '120', '117');
INSERT INTO `usage_info` VALUES ('3', '备忘录', '133', '109', '115');
INSERT INTO `usage_info` VALUES ('4', '收音机', '120', '119', '107');
INSERT INTO `usage_info` VALUES ('5', '视频语音', '115', '123', '126');
INSERT INTO `usage_info` VALUES ('6', '天气', '117', '128', '123');
INSERT INTO `usage_info` VALUES ('7', '日历', '126', '127', '121');
INSERT INTO `usage_info` VALUES ('8', '浏览器', '123', '119', '117');

-- ----------------------------
-- Table structure for workers_salary
-- ----------------------------
DROP TABLE IF EXISTS `workers_salary`;
CREATE TABLE `workers_salary` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) DEFAULT NULL,
  `quarter` int(11) DEFAULT NULL,
  `salary` int(11) DEFAULT NULL,
  `welfare` int(11) DEFAULT NULL,
  `holiday` int(11) DEFAULT NULL,
  `public_fund` int(11) DEFAULT NULL,
  `company_pension` int(11) DEFAULT NULL,
  `retired_pay` int(11) DEFAULT NULL,
  `salary_total` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of workers_salary
-- ----------------------------
INSERT INTO `workers_salary` VALUES ('1', '1', '2', '4000', '2', '14', '2', '2', '2', '4473');
INSERT INTO `workers_salary` VALUES ('2', '2', '2', '5500', '2', '8', '4', '4', '4', '6390');
INSERT INTO `workers_salary` VALUES ('3', '3', '2', '4200', '2', '14', '3', '4', '7', '5033');
INSERT INTO `workers_salary` VALUES ('4', '1', '3', '3', '3', '0', '0', '0', '0', '3');
INSERT INTO `workers_salary` VALUES ('5', '19', '2', '4500', '3', '34', '3', '3', '5', '5549');
INSERT INTO `workers_salary` VALUES ('6', '20', '2', '3300', '3', '3', '3', '3', '4', '3756');
INSERT INTO `workers_salary` VALUES ('7', '21', '2', '4500', '5', '4', '3', '4', '2', '5179');
INSERT INTO `workers_salary` VALUES ('8', '22', '2', '4000', '5', '4', '3', '3', '4', '4643');
