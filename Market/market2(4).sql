/*
Navicat MySQL Data Transfer

Source Server         : 11
Source Server Version : 50634
Source Host           : localhost:3306
Source Database       : market2

Target Server Type    : MYSQL
Target Server Version : 50634
File Encoding         : 65001

Date: 2017-11-05 16:35:47
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
  `gross_revenue` double(10,3) DEFAULT NULL,
  `gross_cost` double(10,3) DEFAULT NULL,
  `operating_profit` double(10,3) DEFAULT NULL,
  `cash_equivalent` double(10,3) DEFAULT NULL,
  `market_share` double(10,3) DEFAULT NULL,
  `unit_marketing_revenue` double(10,3) DEFAULT NULL,
  `sales_staff_remuneration` double(10,3) DEFAULT NULL,
  `training_time` double(10,3) DEFAULT NULL,
  `asset_management` double(10,3) DEFAULT NULL,
  `production_efficiency` double(10,3) DEFAULT NULL,
  `quarter` int(10) DEFAULT NULL,
  `company_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `company_id` (`company_id`),
  CONSTRAINT `balance_score_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of balance_score
-- ----------------------------
INSERT INTO `balance_score` VALUES ('1', '3.088', '4.980', '0.365', '3.584', '0.393', '0.816', '2.886', '0.739', '0.536', '0.536', '2', '1');
INSERT INTO `balance_score` VALUES ('2', '0.000', '-18.873', '0.215', '2.096', '0.327', '0.815', '2.769', '0.558', '0.524', '0.524', '2', '2');
INSERT INTO `balance_score` VALUES ('3', '0.657', '5.625', '0.125', '4.404', '0.597', '0.725', '0.821', '1.000', '0.522', '0.522', '1', '97');
INSERT INTO `balance_score` VALUES ('4', '1.774', '8.826', '0.140', '4.845', '0.280', '0.743', '2.395', '0.910', '1.555', '1.555', '1', '98');
INSERT INTO `balance_score` VALUES ('5', '27.585', '29.871', '0.284', '2.865', '0.716', '0.936', '2.149', '1.000', '1.666', '1.666', '1', '99');
INSERT INTO `balance_score` VALUES ('8', '2925179.250', '5371271.000', '-2446091.750', '0.000', '1.000', '0.110', '118496.000', '0.000', '154050.000', '0.630', '2', '97');
INSERT INTO `balance_score` VALUES ('9', '9782816.000', '5986082.000', '3796734.000', '0.000', '0.905', '12.145', '0.000', '0.000', '3545930.000', '0.000', '2', '98');
INSERT INTO `balance_score` VALUES ('10', '0.000', '4272550.000', '-4272550.000', '0.000', '0.095', '0.000', '0.000', '0.000', '2830500.000', '0.000', '2', '99');

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
  `liucun` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=194 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of balance_sheet
-- ----------------------------
INSERT INTO `balance_sheet` VALUES ('1', '1', '1', '-1230000', '0', '0', '0', '3000000', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('50', '76', '1', '2000000', null, null, null, '1100000', null, null, null, null, null);
INSERT INTO `balance_sheet` VALUES ('51', '76', '2', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `balance_sheet` VALUES ('52', '76', '3', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `balance_sheet` VALUES ('53', '76', '4', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `balance_sheet` VALUES ('54', '76', '5', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `balance_sheet` VALUES ('55', '76', '6', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `balance_sheet` VALUES ('56', '77', '1', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `balance_sheet` VALUES ('57', '77', '2', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `balance_sheet` VALUES ('58', '77', '3', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `balance_sheet` VALUES ('59', '77', '4', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `balance_sheet` VALUES ('60', '77', '5', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `balance_sheet` VALUES ('61', '77', '6', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `balance_sheet` VALUES ('62', '78', '1', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `balance_sheet` VALUES ('63', '78', '2', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `balance_sheet` VALUES ('64', '78', '3', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `balance_sheet` VALUES ('65', '78', '4', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `balance_sheet` VALUES ('66', '78', '5', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `balance_sheet` VALUES ('67', '78', '6', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `balance_sheet` VALUES ('68', '79', '1', '180144', '10000', '0', '0', '1100000', '0', '0', '0', '2000000', '-709856');
INSERT INTO `balance_sheet` VALUES ('69', '79', '2', '28047600', '10950', '0', '757270', '4100000', '0', '0', '0', '3000000', '29915800');
INSERT INTO `balance_sheet` VALUES ('70', '79', '3', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('71', '79', '4', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('72', '79', '5', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('73', '79', '6', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('74', '80', '1', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('75', '80', '2', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('76', '80', '3', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('77', '80', '4', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('78', '80', '5', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('79', '80', '6', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('80', '81', '1', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('81', '81', '2', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('82', '81', '3', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('83', '81', '4', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('84', '81', '5', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('85', '81', '6', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('86', '82', '1', '629998', '0', '0', '0', '1100000', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('87', '82', '2', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('88', '82', '3', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('89', '82', '4', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('90', '82', '5', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('91', '82', '6', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('92', '83', '1', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('93', '83', '2', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('94', '83', '3', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('95', '83', '4', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('96', '83', '5', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('97', '83', '6', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('98', '84', '1', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('99', '84', '2', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('100', '84', '3', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('101', '84', '4', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('102', '84', '5', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('103', '84', '6', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('104', '85', '1', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('105', '85', '2', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('106', '85', '3', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('107', '85', '4', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('108', '85', '5', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('109', '85', '6', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('110', '86', '1', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('111', '86', '2', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('112', '86', '3', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('113', '86', '4', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('114', '86', '5', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('115', '86', '6', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('116', '87', '1', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('117', '87', '2', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('118', '87', '3', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('119', '87', '4', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('120', '87', '5', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('121', '87', '6', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('122', '88', '1', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('123', '88', '2', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('124', '88', '3', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('125', '88', '4', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('126', '88', '5', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('127', '88', '6', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('128', '89', '1', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('129', '89', '2', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('130', '89', '3', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('131', '89', '4', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('132', '89', '5', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('133', '89', '6', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('134', '90', '1', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('135', '90', '2', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('136', '90', '3', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('137', '90', '4', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('138', '90', '5', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('139', '90', '6', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('140', '91', '1', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('141', '91', '2', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('142', '91', '3', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('143', '91', '4', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('144', '91', '5', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('145', '91', '6', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('146', '92', '1', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('147', '92', '2', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('148', '92', '3', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('149', '92', '4', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('150', '92', '5', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('151', '92', '6', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('152', '93', '1', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('153', '93', '2', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('154', '93', '3', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('155', '93', '4', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('156', '93', '5', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('157', '93', '6', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('158', '94', '1', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('159', '94', '2', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('160', '94', '3', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('161', '94', '4', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('162', '94', '5', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('163', '94', '6', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('164', '95', '1', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('165', '95', '2', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('166', '95', '3', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('167', '95', '4', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('168', '95', '5', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('169', '95', '6', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('170', '96', '1', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('171', '96', '2', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('172', '96', '3', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('173', '96', '4', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('174', '96', '5', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('175', '96', '6', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('176', '97', '1', '290143', '10000', '0', '0', '1100000', '0', '0', '0', '2000000', '-599857');
INSERT INTO `balance_sheet` VALUES ('177', '97', '2', '-1716630', '11950', '0', '0', '4100000', '0', '0', '0', '3000000', '-604681');
INSERT INTO `balance_sheet` VALUES ('178', '97', '3', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('179', '97', '4', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('180', '97', '5', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('181', '97', '6', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('182', '98', '1', '-1249700', '20000', '0', '0', '3000000', '0', '0', '0', '2000000', '-229701');
INSERT INTO `balance_sheet` VALUES ('183', '98', '2', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('184', '98', '3', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('185', '98', '4', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('186', '98', '5', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('187', '98', '6', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('188', '99', '1', '-2659550', '30000', '0', '0', '4400000', '0', '0', '0', '2000000', '-229553');
INSERT INTO `balance_sheet` VALUES ('189', '99', '2', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('190', '99', '3', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('191', '99', '4', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('192', '99', '5', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet` VALUES ('193', '99', '6', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');

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
  `liucun` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=181 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of balance_sheet_result
-- ----------------------------
INSERT INTO `balance_sheet_result` VALUES ('1', '1', '1', '-1230000', '0', '0', '0', '3000000', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('50', '76', '1', '2000000', null, null, null, '1100000', null, null, null, null, null);
INSERT INTO `balance_sheet_result` VALUES ('51', '76', '2', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `balance_sheet_result` VALUES ('52', '76', '3', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `balance_sheet_result` VALUES ('53', '76', '4', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `balance_sheet_result` VALUES ('54', '76', '5', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `balance_sheet_result` VALUES ('55', '76', '6', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `balance_sheet_result` VALUES ('56', '77', '1', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `balance_sheet_result` VALUES ('57', '77', '2', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `balance_sheet_result` VALUES ('58', '77', '3', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `balance_sheet_result` VALUES ('59', '77', '4', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `balance_sheet_result` VALUES ('60', '77', '5', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `balance_sheet_result` VALUES ('61', '77', '6', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `balance_sheet_result` VALUES ('62', '78', '1', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `balance_sheet_result` VALUES ('63', '78', '2', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `balance_sheet_result` VALUES ('64', '78', '3', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `balance_sheet_result` VALUES ('65', '78', '4', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `balance_sheet_result` VALUES ('66', '78', '5', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `balance_sheet_result` VALUES ('67', '78', '6', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `balance_sheet_result` VALUES ('68', '79', '1', '280146', '10000', '0', '0', '1100000', '0', '0', '0', '2000000', '-609854');
INSERT INTO `balance_sheet_result` VALUES ('69', '79', '2', '0', '10950', '0', '757270', '17600000', '0', '0', '0', '3000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('70', '79', '3', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('71', '79', '4', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('72', '79', '5', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('73', '79', '6', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('74', '80', '1', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('75', '80', '2', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('76', '80', '3', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('77', '80', '4', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('78', '80', '5', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('79', '80', '6', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('80', '81', '1', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('81', '81', '2', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('82', '81', '3', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('83', '81', '4', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('84', '81', '5', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('85', '81', '6', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('86', '82', '1', '629998', '0', '0', '0', '1100000', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('87', '82', '2', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('88', '82', '3', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('89', '82', '4', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('90', '82', '5', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('91', '82', '6', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('92', '83', '1', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('93', '83', '2', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('94', '83', '3', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('95', '83', '4', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('96', '83', '5', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('97', '83', '6', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('98', '84', '1', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('99', '84', '2', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('100', '84', '3', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('101', '84', '4', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('102', '84', '5', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('103', '84', '6', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('104', '85', '1', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('105', '85', '2', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('106', '85', '3', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('107', '85', '4', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('108', '85', '5', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('109', '85', '6', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('110', '86', '1', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('111', '86', '2', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('112', '86', '3', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('113', '86', '4', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('114', '86', '5', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('115', '86', '6', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('116', '87', '1', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('117', '87', '2', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('118', '87', '3', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('119', '87', '4', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('120', '87', '5', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('121', '87', '6', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('122', '88', '1', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('123', '88', '2', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('124', '88', '3', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('125', '88', '4', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('126', '88', '5', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('127', '88', '6', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('128', '89', '1', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('129', '89', '2', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('130', '89', '3', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('131', '89', '4', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('132', '89', '5', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('133', '89', '6', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('134', '90', '1', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('135', '90', '2', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('136', '90', '3', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('137', '90', '4', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('138', '90', '5', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('139', '90', '6', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('140', '91', '1', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('141', '91', '2', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('142', '91', '3', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('143', '91', '4', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('144', '91', '5', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('145', '91', '6', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('146', '92', '1', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('147', '92', '2', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('148', '92', '3', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('149', '92', '4', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('150', '92', '5', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('151', '92', '6', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('152', '93', '1', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('153', '93', '2', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('154', '93', '3', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('155', '93', '4', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('156', '93', '5', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('157', '93', '6', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('158', '94', '1', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('159', '94', '2', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('160', '94', '3', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('161', '94', '4', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('162', '94', '5', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('163', '94', '6', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('164', '95', '1', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('165', '95', '2', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('166', '95', '3', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('167', '95', '4', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('168', '95', '5', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('169', '95', '6', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('170', '96', '1', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('171', '96', '2', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('172', '96', '3', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('173', '96', '4', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('174', '96', '5', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('175', '96', '6', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0');
INSERT INTO `balance_sheet_result` VALUES ('176', '97', '1', '290143', '10000', '0', '0', '1100000', '0', '0', '0', '2000000', '-599857');
INSERT INTO `balance_sheet_result` VALUES ('177', '98', '1', '-1249700', '20000', '0', '0', '3000000', '0', '0', '0', '2000000', '-229701');
INSERT INTO `balance_sheet_result` VALUES ('178', '97', '2', '-3957900', '11950', '0', '0', '4100000', '0', '0', '0', '3000000', '-2845950');
INSERT INTO `balance_sheet_result` VALUES ('179', '98', '2', '3545930', '0', '0', '0', '0', '0', '0', '0', '2000000', '3567030');
INSERT INTO `balance_sheet_result` VALUES ('180', '99', '2', '0', '0', '0', '2830500', '0', '0', '0', '0', '2000000', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=229 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cash_flow
-- ----------------------------
INSERT INTO `cash_flow` VALUES ('3', '1', '1', '0', '0', '0', '0', '0', '0', '60000', '0', '0', '100001', '70002', '0', '0', '0', '0', '0', '0', '0', '0', '3000000', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('86', '76', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('87', '76', '3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `cash_flow` VALUES ('88', '76', '4', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `cash_flow` VALUES ('89', '76', '5', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `cash_flow` VALUES ('90', '76', '6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `cash_flow` VALUES ('91', '77', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `cash_flow` VALUES ('92', '77', '2', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `cash_flow` VALUES ('93', '77', '3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `cash_flow` VALUES ('94', '77', '4', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `cash_flow` VALUES ('95', '77', '5', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `cash_flow` VALUES ('96', '77', '6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `cash_flow` VALUES ('97', '78', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `cash_flow` VALUES ('98', '78', '2', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `cash_flow` VALUES ('99', '78', '3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `cash_flow` VALUES ('100', '78', '4', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `cash_flow` VALUES ('101', '78', '5', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `cash_flow` VALUES ('102', '78', '6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `cash_flow` VALUES ('103', '79', '1', '0', '150', '0', '0', '0', '0', '240000', '0', '0', '300004', '70000', '0', '0', '0', '0', '0', '0', '0', '0', '1100000', '0', '0', '10000', '0', '0', '20000', '0');
INSERT INTO `cash_flow` VALUES ('104', '79', '2', '40000000', '164.25', '0', '0', '0', '3920970', '120000', '4920000', '17781', '50000', '0', '0', '270000', '75727', '0', '0', '0', '0', '0', '3000000', '0', '0', '200', '0', '0', '1000', '0');
INSERT INTO `cash_flow` VALUES ('105', '79', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('106', '79', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('107', '79', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('108', '79', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('109', '80', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('110', '80', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('111', '80', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('112', '80', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('113', '80', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('114', '80', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('115', '81', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('116', '81', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('117', '81', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('118', '81', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('119', '81', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('120', '81', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('121', '82', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '200001', '70001', '0', '0', '0', '0', '0', '0', '0', '0', '1100000', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('122', '82', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('123', '82', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('124', '82', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('125', '82', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('126', '82', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('127', '83', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('128', '83', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('129', '83', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('130', '83', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('131', '83', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('132', '83', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('133', '84', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('134', '84', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('135', '84', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('136', '84', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('137', '84', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('138', '84', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('139', '85', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('140', '85', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('141', '85', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('142', '85', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('143', '85', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('144', '85', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('145', '86', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('146', '86', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('147', '86', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('148', '86', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('149', '86', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('150', '86', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('151', '87', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('152', '87', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('153', '87', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('154', '87', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('155', '87', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('156', '87', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('157', '88', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('158', '88', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('159', '88', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('160', '88', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('161', '88', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('162', '88', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('163', '89', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('164', '89', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('165', '89', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('166', '89', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('167', '89', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('168', '89', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('169', '90', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('170', '90', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('171', '90', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('172', '90', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('173', '90', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('174', '90', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('175', '91', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('176', '91', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('177', '91', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('178', '91', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('179', '91', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('180', '91', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('181', '92', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('182', '92', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('183', '92', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('184', '92', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('185', '92', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('186', '92', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('187', '93', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('188', '93', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('189', '93', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('190', '93', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('191', '93', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('192', '93', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('193', '94', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('194', '94', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('195', '94', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('196', '94', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('197', '94', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('198', '94', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('199', '95', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('200', '95', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('201', '95', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('202', '95', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('203', '95', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('204', '95', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('205', '96', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('206', '96', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('207', '96', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('208', '96', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('209', '96', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('210', '96', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('211', '97', '1', '0', '150', '0', '0', '0', '0', '60000', '0', '0', '400006', '140001', '0', '0', '0', '0', '0', '0', '0', '0', '1100000', '0', '0', '0', '0', '0', '10000', '0');
INSERT INTO `cash_flow` VALUES ('212', '97', '2', '0', '179.25', '0', '0', '0', '0', '60000', '0', '0', '100003', '30001', '15000', '0', '0', '0', '0', '0', '0', '0', '3000000', '0', '0', '200', '0', '0', '2000', '0');
INSERT INTO `cash_flow` VALUES ('213', '97', '3', '0', '0', '0', '0', '0', '0', '60000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('214', '97', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('215', '97', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('216', '97', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('217', '98', '1', '0', '300', '0', '0', '0', '0', '60000', '0', '0', '100000', '70001', '0', '0', '0', '0', '0', '0', '0', '0', '3000000', '0', '0', '0', '0', '0', '20000', '0');
INSERT INTO `cash_flow` VALUES ('218', '98', '2', '1090000', '316.5', '0', '0', '17000', '853740', '60000', '191000', '0', '200002', '0', '0', '0', '9754', '0', '0', '0', '0', '0', '0', '0', '0', '200', '0', '0', '1000', '0');
INSERT INTO `cash_flow` VALUES ('219', '98', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('220', '98', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('221', '98', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('222', '98', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('223', '99', '1', '0', '450', '0', '0', '0', '0', '60000', '0', '0', '100001', '70002', '0', '0', '0', '0', '0', '0', '0', '0', '4400000', '0', '0', '0', '0', '0', '30000', '0');
INSERT INTO `cash_flow` VALUES ('224', '99', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('225', '99', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('226', '99', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('227', '99', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow` VALUES ('228', '99', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=216 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cash_flow_result
-- ----------------------------
INSERT INTO `cash_flow_result` VALUES ('3', '1', '1', '0', '0', '0', '0', '0', '0', '60000', '0', '0', '100001', '70002', '0', '0', '0', '0', '0', '0', '0', '0', '3000000', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('86', '76', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('87', '76', '3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `cash_flow_result` VALUES ('88', '76', '4', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `cash_flow_result` VALUES ('89', '76', '5', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `cash_flow_result` VALUES ('90', '76', '6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `cash_flow_result` VALUES ('91', '77', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `cash_flow_result` VALUES ('92', '77', '2', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `cash_flow_result` VALUES ('93', '77', '3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `cash_flow_result` VALUES ('94', '77', '4', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `cash_flow_result` VALUES ('95', '77', '5', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `cash_flow_result` VALUES ('96', '77', '6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `cash_flow_result` VALUES ('97', '78', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `cash_flow_result` VALUES ('98', '78', '2', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `cash_flow_result` VALUES ('99', '78', '3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `cash_flow_result` VALUES ('100', '78', '4', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `cash_flow_result` VALUES ('101', '78', '5', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `cash_flow_result` VALUES ('102', '78', '6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `cash_flow_result` VALUES ('103', '79', '1', '0', '150', '0', '0', '0', '0', '240000', '0', '0', '300004', '70000', '0', '0', '0', '0', '0', '0', '0', '0', '1100000', '0', '0', '10000', '0', '0', '20000', '0');
INSERT INTO `cash_flow_result` VALUES ('104', '79', '2', '40000000', '164.25', '0', '0', '0', '3920970', '120000', '4920000', '17781', '50000', '0', '0', '270000', '75727', '0', '0', '0', '0', '0', '10400000', '0', '0', '200', '0', '0', '1000', '0');
INSERT INTO `cash_flow_result` VALUES ('105', '79', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('106', '79', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('107', '79', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('108', '79', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('109', '80', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('110', '80', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('111', '80', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('112', '80', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('113', '80', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('114', '80', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('115', '81', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('116', '81', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('117', '81', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('118', '81', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('119', '81', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('120', '81', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('121', '82', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '200001', '70001', '0', '0', '0', '0', '0', '0', '0', '0', '1100000', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('122', '82', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('123', '82', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('124', '82', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('125', '82', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('126', '82', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('127', '83', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('128', '83', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('129', '83', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('130', '83', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('131', '83', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('132', '83', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('133', '84', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('134', '84', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('135', '84', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('136', '84', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('137', '84', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('138', '84', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('139', '85', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('140', '85', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('141', '85', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('142', '85', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('143', '85', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('144', '85', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('145', '86', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('146', '86', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('147', '86', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('148', '86', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('149', '86', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('150', '86', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('151', '87', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('152', '87', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('153', '87', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('154', '87', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('155', '87', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('156', '87', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('157', '88', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('158', '88', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('159', '88', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('160', '88', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('161', '88', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('162', '88', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('163', '89', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('164', '89', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('165', '89', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('166', '89', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('167', '89', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('168', '89', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('169', '90', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('170', '90', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('171', '90', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('172', '90', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('173', '90', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('174', '90', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('175', '91', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('176', '91', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('177', '91', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('178', '91', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('179', '91', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('180', '91', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('181', '92', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('182', '92', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('183', '92', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('184', '92', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('185', '92', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('186', '92', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('187', '93', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('188', '93', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('189', '93', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('190', '93', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('191', '93', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('192', '93', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('193', '94', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('194', '94', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('195', '94', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('196', '94', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('197', '94', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('198', '94', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('199', '95', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('200', '95', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('201', '95', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('202', '95', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('203', '95', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('204', '95', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('205', '96', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('206', '96', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('207', '96', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('208', '96', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('209', '96', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('210', '96', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `cash_flow_result` VALUES ('211', '97', '1', '0', '150', '0', '0', '0', '0', '60000', '0', '0', '400006', '140001', '0', '0', '0', '0', '0', '0', '0', '0', '1100000', '0', '0', '0', '0', '0', '10000', '0');
INSERT INTO `cash_flow_result` VALUES ('212', '98', '1', '0', '300', '0', '0', '0', '0', '60000', '0', '0', '100000', '70001', '0', '0', '0', '0', '0', '0', '0', '0', '3000000', '0', '0', '0', '0', '0', '20000', '0');
INSERT INTO `cash_flow_result` VALUES ('213', '97', '2', '2925000', '179.25', '0', '0', '29250', '2222020', '60000', '2750000', '0', '100001', '0', '15000', '195000', '0', '0', '0', '0', '0', '0', '3000000', '0', '0', '200', '0', '0', '2000', '0');
INSERT INTO `cash_flow_result` VALUES ('214', '98', '2', '9782500', '316.5', '0', '0', '136500', '4943580', '60000', '191000', '0', '200002', '0', '0', '455000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '200', '0', '0', '1000', '0');
INSERT INTO `cash_flow_result` VALUES ('215', '99', '2', '0', '0', '0', '0', '0', '3867500', '0', '0', '0', '0', '0', '0', '122000', '283050', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');

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
  PRIMARY KEY (`id`),
  KEY `competition_id` (`competition_id`),
  CONSTRAINT `chat_record_ibfk_1` FOREIGN KEY (`competition_id`) REFERENCES `competition` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chat_record
-- ----------------------------
INSERT INTO `chat_record` VALUES ('1', 'sansux', '公司1', '2017-06-07 13:29:32', 'ssss', '1');
INSERT INTO `chat_record` VALUES ('2', 'sansux', '公司2', '2017-06-07 13:29:50', 'sdgdfg', '1');
INSERT INTO `chat_record` VALUES ('3', 'sansux', '公司2', '2017-06-09 07:59:20', 'fdgdfgdfgdf', '1');
INSERT INTO `chat_record` VALUES ('4', 'sansux', '公司2', '2017-06-09 07:59:23', 'dfgdfgdfg', '1');
INSERT INTO `chat_record` VALUES ('5', 'sansux', '公司1', '2017-06-09 07:59:28', 'dfgdfgdfgdf', '1');
INSERT INTO `chat_record` VALUES ('6', 'sansux', '公司1', '2017-06-09 08:01:25', '是否的点点滴滴', '1');
INSERT INTO `chat_record` VALUES ('7', 'sansux', '公司2', '2017-06-09 08:01:29', '是的反腐', '1');
INSERT INTO `chat_record` VALUES ('8', 'sansux', '公司3', '2017-06-09 08:01:32', '是对方答复', '1');
INSERT INTO `chat_record` VALUES ('9', 'sansux', '公司1', '2017-06-14 18:02:03', 'ssss', '1');
INSERT INTO `chat_record` VALUES ('10', 'sansux', '公司1', '2017-06-16 09:27:19', 'ddd', '1');
INSERT INTO `chat_record` VALUES ('11', 'sansux', '公司1', '2017-06-21 09:26:34', 'ddddd', '1');
INSERT INTO `chat_record` VALUES ('12', 'sansux', '公司1', '2017-06-21 09:26:57', 'dfsf', '1');
INSERT INTO `chat_record` VALUES ('13', 'sansux', '公司1', '2017-06-21 09:41:49', 'dfsdfsdf', '1');
INSERT INTO `chat_record` VALUES ('14', 'sansux', '公司1', '2017-06-21 09:47:16', 'sdfdsfdsf', '1');
INSERT INTO `chat_record` VALUES ('15', 'sansux', '公司1', '2017-06-27 16:02:09', 'dfgdf ', '1');
INSERT INTO `chat_record` VALUES ('16', 'sansux', '公司1', '2017-06-27 16:07:38', 'abc', '1');
INSERT INTO `chat_record` VALUES ('17', 'sansux', '公司1', '2017-06-27 16:07:45', 'abcd', '1');
INSERT INTO `chat_record` VALUES ('18', 'sansux', '公司1', '2017-06-27 16:07:49', 'abc', '1');
INSERT INTO `chat_record` VALUES ('19', 'sansux', '公司1', '2017-06-27 16:09:54', 'ABC', '1');
INSERT INTO `chat_record` VALUES ('20', 'sansux', '公司1', '2017-06-27 16:09:59', 'abc', '1');
INSERT INTO `chat_record` VALUES ('21', 'sansux', '公司1', '2017-06-27 16:10:02', 'abc', '1');
INSERT INTO `chat_record` VALUES ('22', 'sansux', '公司1', '2017-06-27 16:22:42', 'ad', '1');
INSERT INTO `chat_record` VALUES ('23', 'sansux', '公司1', '2017-06-27 16:22:45', 'as', '1');
INSERT INTO `chat_record` VALUES ('24', 'sansux', '公司1', '2017-06-27 16:29:01', 'abc', '1');
INSERT INTO `chat_record` VALUES ('25', 'sansux', '公司1', '2017-06-27 16:29:16', 'abc', '1');
INSERT INTO `chat_record` VALUES ('26', 'sansux', '公司1', '2017-06-27 16:29:34', 'abc', '1');
INSERT INTO `chat_record` VALUES ('27', 'sansux', '公司1', '2017-06-27 16:31:03', 'abc', '1');
INSERT INTO `chat_record` VALUES ('28', 'sansux', '公司1', '2017-06-27 16:31:27', 'abc', '1');
INSERT INTO `chat_record` VALUES ('29', 'sansux', '公司1', '2017-06-27 16:36:35', 'aaa', '1');
INSERT INTO `chat_record` VALUES ('30', 'sansux', '公司2', '2017-06-27 16:36:40', 'aaab', '1');
INSERT INTO `chat_record` VALUES ('31', 'sansux', '公司2', '2017-06-27 16:36:44', 'aaaa', '1');
INSERT INTO `chat_record` VALUES ('32', 'sansux', '上海理工', '2017-07-01 16:03:57', '好久没有任何', '1');
INSERT INTO `chat_record` VALUES ('33', 'sansux', '公司4', '2017-07-23 19:18:25', 'dfgdfgdfg', '1');
INSERT INTO `chat_record` VALUES ('34', 'sansux', '上海理工2', '2017-09-02 15:24:10', '你好！', '1');
INSERT INTO `chat_record` VALUES ('35', 'sansux', '公司1323', '2017-09-02 15:53:06', 'hw', '15');

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
  PRIMARY KEY (`id`),
  KEY `competition_id` (`competition_id`),
  CONSTRAINT `company_ibfk_1` FOREIGN KEY (`competition_id`) REFERENCES `competition` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company
-- ----------------------------
INSERT INTO `company` VALUES ('1', '1', '上海理工2', 'EX8N-F3PO-HKN7', '1', '5');
INSERT INTO `company` VALUES ('2', '2', '公司2', 'W214-1DEI-IG3R', '1', '5');
INSERT INTO `company` VALUES ('3', '3', '公司3', '6DL1-0I0T-46IX', '1', '5');
INSERT INTO `company` VALUES ('4', '4', '公司4', '6PPD-ZHVK-33F6', '1', '5');
INSERT INTO `company` VALUES ('5', '5', '公司5', '8017-PZBM-X82F', '1', '5');
INSERT INTO `company` VALUES ('20', '1', '公司1', 'G0WG-8180-DLO3', '9', '5');
INSERT INTO `company` VALUES ('21', '2', '公司2', 'WR06-0OX1-CQT0', '9', '5');
INSERT INTO `company` VALUES ('22', '3', '公司3', '48HU-14DA-M934', '9', '5');
INSERT INTO `company` VALUES ('23', '4', '公司4', 'D82G-RF6I-62QQ', '9', '5');
INSERT INTO `company` VALUES ('24', '5', '公司5', '61G4-3304-XX1I', '9', '5');
INSERT INTO `company` VALUES ('25', '6', '公司6', '5T8R-JZU4-A3EU', '9', '5');
INSERT INTO `company` VALUES ('26', '1', '公司1', 'X2YI-PF7I-1DN9', '10', '5');
INSERT INTO `company` VALUES ('27', '2', '公司2', '3TSB-ENC3-5YE8', '10', '5');
INSERT INTO `company` VALUES ('28', '3', '公司3', '2I97-9VJN-MJGN', '10', '5');
INSERT INTO `company` VALUES ('29', '4', '公司4', 'Y069-8E97-X3T1', '10', '5');
INSERT INTO `company` VALUES ('30', '5', '公司5', 'CINI-1UFB-2415', '10', '5');
INSERT INTO `company` VALUES ('79', '1', '公司13231', '2R68-4553-LSDB', '15', '3');
INSERT INTO `company` VALUES ('80', '2', '公司2', '05I2-36BK-FA42', '15', '3');
INSERT INTO `company` VALUES ('81', '3', '公司3', 'G56S-I23C-6A35', '15', '3');
INSERT INTO `company` VALUES ('82', '1', 'USST', 'R22J-1427-6232', '16', '5');
INSERT INTO `company` VALUES ('83', '2', '公司2', 'Y3V5-69I9-25R1', '16', '5');
INSERT INTO `company` VALUES ('84', '3', '公司3', 'E5IO-3L03-3RIC', '16', '5');
INSERT INTO `company` VALUES ('85', '4', '公司4', 'G2YO-25Z3-43VO', '16', '5');
INSERT INTO `company` VALUES ('86', '5', '公司5', 'I8O7-5FEV-YLIQ', '16', '5');
INSERT INTO `company` VALUES ('87', '1', '上海上海上海上海', 'SN68-8V0M-Z299', '17', '7');
INSERT INTO `company` VALUES ('88', '2', '公司2', 'QVB8-4P68-OT97', '17', '7');
INSERT INTO `company` VALUES ('89', '3', '公司3', 'C149-06M7-HEBH', '17', '7');
INSERT INTO `company` VALUES ('90', '4', '公司4', 'QA37-X664-KS4X', '17', '7');
INSERT INTO `company` VALUES ('91', '5', '公司5', 'OR8B-Z8K8-93ZE', '17', '7');
INSERT INTO `company` VALUES ('92', '6', '公司6', '5468-15VW-306K', '17', '7');
INSERT INTO `company` VALUES ('93', '7', '公司7', 'A88J-M914-5I46', '17', '7');
INSERT INTO `company` VALUES ('94', '8', '公司8', 'T4P1-ILU8-NB71', '17', '7');
INSERT INTO `company` VALUES ('95', '9', '公司9', '678O-21E7-1CB8', '17', '7');
INSERT INTO `company` VALUES ('96', '10', '公司10', '336N-0AAH-P6DI', '17', '7');
INSERT INTO `company` VALUES ('97', '1', 'market1', 'GB84-729G-1C2D', '18', '3');
INSERT INTO `company` VALUES ('98', '2', 'market2', '3V03-2OHC-3GKN', '18', '3');
INSERT INTO `company` VALUES ('99', '3', 'market3', 'KS2F-K60V-QFL6', '18', '3');

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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company_advertise
-- ----------------------------
INSERT INTO `company_advertise` VALUES ('5', '1', '2', '16', '季度1的产品1', '23232', '1,2,4,5');
INSERT INTO `company_advertise` VALUES ('6', '1', '2', '17', '季度1的产品2', '大大说的', '1,2,5,6');
INSERT INTO `company_advertise` VALUES ('7', '79', '2', '29', '2017-11-1', '你好', '4,5');
INSERT INTO `company_advertise` VALUES ('8', '79', '2', '20', '2017-10-28', '周', '3,6,7');
INSERT INTO `company_advertise` VALUES ('9', '97', '2', '31', 'market1-1', 'hello workd', '1,9');
INSERT INTO `company_advertise` VALUES ('10', '97', '2', '34', 'market1-2', 'hello usst', '2,3');
INSERT INTO `company_advertise` VALUES ('11', '99', '2', '33', 'market3-1', '12312312312', '4');
INSERT INTO `company_advertise` VALUES ('12', '98', '2', '32', 'market2-1', 'sdfgdf', '7,8');
INSERT INTO `company_advertise` VALUES ('13', '97', '3', '36', 'aaa', '4564', '5,6,7');
INSERT INTO `company_advertise` VALUES ('14', '97', '3', '37', '2017-11-5-2', '1111111111111111111', '6,7');

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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company_capacity
-- ----------------------------
INSERT INTO `company_capacity` VALUES ('10', '0', '150', '1', '1');
INSERT INTO `company_capacity` VALUES ('11', '0', '100', '2', '1');
INSERT INTO `company_capacity` VALUES ('12', '0', '50', '36', '1');
INSERT INTO `company_capacity` VALUES ('13', '0', '50', '76', '1');
INSERT INTO `company_capacity` VALUES ('15', '0', '50', '82', '1');
INSERT INTO `company_capacity` VALUES ('18', '0', '50', '79', '1');
INSERT INTO `company_capacity` VALUES ('19', '50', '150', '79', '2');
INSERT INTO `company_capacity` VALUES ('20', '0', '50', '97', '1');
INSERT INTO `company_capacity` VALUES ('21', '0', '150', '98', '1');
INSERT INTO `company_capacity` VALUES ('22', '0', '200', '99', '1');
INSERT INTO `company_capacity` VALUES ('23', '0', '150', '97', '2');
INSERT INTO `company_capacity` VALUES ('24', '0', '100', '98', '2');

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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company_duty
-- ----------------------------
INSERT INTO `company_duty` VALUES ('16', '1', '1', '123', '1', '1');
INSERT INTO `company_duty` VALUES ('17', '1', '5', '123', '2', '2');
INSERT INTO `company_duty` VALUES ('18', '1', '6', '123', '3', '1');
INSERT INTO `company_duty` VALUES ('19', '1', '7', '123', '2', '1');
INSERT INTO `company_duty` VALUES ('20', '1', '8', '123', '1', '1');
INSERT INTO `company_duty` VALUES ('21', '79', '13', '123', '5', '3');
INSERT INTO `company_duty` VALUES ('22', '79', '12', '123', '2', '5');
INSERT INTO `company_duty` VALUES ('23', '82', '14', '123', '3', '2');
INSERT INTO `company_duty` VALUES ('24', '82', '15', 'img', '1', '1');
INSERT INTO `company_duty` VALUES ('25', '97', '16', '123', '1', '3');
INSERT INTO `company_duty` VALUES ('26', '98', '17', '123', '1', '4');
INSERT INTO `company_duty` VALUES ('27', '99', '18', '123', '1', '2');
INSERT INTO `company_duty` VALUES ('28', '99', '19', '123', '3', '5');

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
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company_investment
-- ----------------------------
INSERT INTO `company_investment` VALUES ('54', '18', '97', '2', '2', '1287', '2', '2750000', '0', '0', '1', '100001', '0', '0', '0', '0', '0.63', '0.59');
INSERT INTO `company_investment` VALUES ('55', '18', '98', '2', '2', '1288', '0', '191000', '2', '200002', '0', '0', '0', '0', '0', '0', '0', '0.88');
INSERT INTO `company_investment` VALUES ('56', '18', '99', '2', '1', '1205', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company_market
-- ----------------------------
INSERT INTO `company_market` VALUES ('7', '79', '1,2,3', '0', '1');
INSERT INTO `company_market` VALUES ('8', '79', '1,2,4', '1', '1');
INSERT INTO `company_market` VALUES ('9', '82', '1,2', '1', '1');
INSERT INTO `company_market` VALUES ('10', '82', '2', '0', '1');
INSERT INTO `company_market` VALUES ('11', '79', '1', '1', '2');
INSERT INTO `company_market` VALUES ('12', '97', '1,2,3,4', '1', '1');
INSERT INTO `company_market` VALUES ('14', '98', '1', '1', '1');
INSERT INTO `company_market` VALUES ('19', '98', '1,3', '1', '2');
INSERT INTO `company_market` VALUES ('20', '97', '1,2', '0', '1');
INSERT INTO `company_market` VALUES ('21', '97', '2', '0', '2');
INSERT INTO `company_market` VALUES ('22', '99', '2', '1', '1');
INSERT INTO `company_market` VALUES ('23', '99', '3', '0', '1');
INSERT INTO `company_market` VALUES ('24', '97', '3', '1', '3');
INSERT INTO `company_market` VALUES ('25', '97', '2,3', '1', '2');

-- ----------------------------
-- Table structure for company_market_share
-- ----------------------------
DROP TABLE IF EXISTS `company_market_share`;
CREATE TABLE `company_market_share` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `company_id` int(11) DEFAULT NULL,
  `quarter` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `company_id` (`company_id`),
  CONSTRAINT `company_market_share_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of company_market_share
-- ----------------------------
INSERT INTO `company_market_share` VALUES ('36', '0', '0', '0', '0', '0', '1', '9220', '1950', '7270', '0', '0', '0', '0', '0', '0', '97', '2');
INSERT INTO `company_market_share` VALUES ('37', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.905', '11620', '4550', '7070', '0', '98', '2');
INSERT INTO `company_market_share` VALUES ('38', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.095', '1220', '1220', '0', '3330', '99', '2');

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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company_media
-- ----------------------------
INSERT INTO `company_media` VALUES ('1', '1', '2', '16', '1', '5');
INSERT INTO `company_media` VALUES ('2', '1', '2', '16', '2', '4');
INSERT INTO `company_media` VALUES ('3', '1', '2', '16', '3', '0');
INSERT INTO `company_media` VALUES ('4', '1', '2', '16', '4', '0');
INSERT INTO `company_media` VALUES ('5', '1', '2', '16', '5', '0');
INSERT INTO `company_media` VALUES ('6', '1', '2', '17', '1', '0');
INSERT INTO `company_media` VALUES ('7', '1', '2', '17', '2', '0');
INSERT INTO `company_media` VALUES ('8', '1', '2', '17', '3', '10');
INSERT INTO `company_media` VALUES ('9', '1', '2', '17', '4', '0');
INSERT INTO `company_media` VALUES ('10', '1', '2', '17', '5', '0');
INSERT INTO `company_media` VALUES ('11', '79', '2', '20', '1', '10');
INSERT INTO `company_media` VALUES ('12', '79', '2', '20', '2', '20');
INSERT INTO `company_media` VALUES ('13', '79', '2', '20', '3', '30');
INSERT INTO `company_media` VALUES ('14', '79', '2', '20', '4', '40');
INSERT INTO `company_media` VALUES ('15', '79', '2', '20', '5', '50');
INSERT INTO `company_media` VALUES ('16', '79', '2', '26', '1', '50');
INSERT INTO `company_media` VALUES ('17', '79', '2', '26', '2', '40');
INSERT INTO `company_media` VALUES ('18', '79', '2', '26', '3', '30');
INSERT INTO `company_media` VALUES ('19', '79', '2', '26', '4', '20');
INSERT INTO `company_media` VALUES ('20', '79', '2', '26', '5', '10');
INSERT INTO `company_media` VALUES ('21', '97', '2', '31', '1', '10');
INSERT INTO `company_media` VALUES ('22', '97', '2', '31', '2', '20');
INSERT INTO `company_media` VALUES ('23', '97', '2', '31', '3', '30');
INSERT INTO `company_media` VALUES ('24', '97', '2', '31', '4', '40');
INSERT INTO `company_media` VALUES ('25', '97', '2', '31', '5', '50');
INSERT INTO `company_media` VALUES ('26', '98', '2', '32', '1', '1');
INSERT INTO `company_media` VALUES ('27', '98', '2', '32', '2', '2');
INSERT INTO `company_media` VALUES ('28', '98', '2', '32', '3', '3');
INSERT INTO `company_media` VALUES ('29', '98', '2', '32', '4', '4');
INSERT INTO `company_media` VALUES ('30', '98', '2', '32', '5', '1');
INSERT INTO `company_media` VALUES ('31', '99', '2', '33', '1', '10');
INSERT INTO `company_media` VALUES ('32', '99', '2', '33', '2', '2');
INSERT INTO `company_media` VALUES ('33', '99', '2', '33', '3', '2');
INSERT INTO `company_media` VALUES ('34', '99', '2', '33', '4', '2');
INSERT INTO `company_media` VALUES ('35', '99', '2', '33', '5', '2');

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company_person_goal
-- ----------------------------
INSERT INTO `company_person_goal` VALUES ('1', '1', '4,5,', '1');
INSERT INTO `company_person_goal` VALUES ('2', '36', '1,2,', '1');
INSERT INTO `company_person_goal` VALUES ('3', '76', '2,', '1');
INSERT INTO `company_person_goal` VALUES ('4', '79', '3,4,', '1');
INSERT INTO `company_person_goal` VALUES ('5', '82', '2,3,', '1');
INSERT INTO `company_person_goal` VALUES ('6', '97', '3,', '1');
INSERT INTO `company_person_goal` VALUES ('7', '98', '4,', '1');
INSERT INTO `company_person_goal` VALUES ('8', '99', '3,', '1');

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
  `demand_num_two` int(11) DEFAULT NULL,
  `demand_num_three` int(11) DEFAULT NULL,
  `demand_num_four` int(11) DEFAULT NULL,
  `demand_num_five` int(11) DEFAULT NULL,
  `inventory_max_two` int(11) DEFAULT NULL,
  `inventory_max_three` int(11) DEFAULT NULL,
  `inventory_max_four` int(11) DEFAULT NULL,
  `inventory_max_five` int(11) DEFAULT NULL,
  `hundred` varchar(255) DEFAULT NULL,
  `twohundredfifty` varchar(255) DEFAULT NULL,
  `fivehundred` varchar(255) DEFAULT NULL,
  `thousand` varchar(255) DEFAULT NULL,
  `fivethousand` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company_product
-- ----------------------------
INSERT INTO `company_product` VALUES ('20', '79', '1', '2017-10-28', '1,4,6,10,12,15,18,21,24,27,30', '1235', '极致型', '2000', null, null, null, '123', null, null, null, null, null, null, null, null);
INSERT INTO `company_product` VALUES ('26', '79', '1', '2017-10-30', '1,3,6,9,12,13,18,21,24,27,30', '1205', '实用型', '100', null, null, null, '321', null, null, null, null, null, null, null, null);
INSERT INTO `company_product` VALUES ('27', '79', '1', '2017-10-31', '1,4,6,8,12,14,17,21,24,27,29', '1195', '极致型', '100', null, null, null, '11', null, null, null, null, null, null, null, null);
INSERT INTO `company_product` VALUES ('28', '79', '1', '2017-10-31-2', '1,3,6,9,11,14,19,21,24,26,29,30,31,32,33', '1456', '商务型', '100', null, null, null, '22', null, null, null, null, null, null, null, null);
INSERT INTO `company_product` VALUES ('29', '79', '2', '2017-11-1', '1,3,6,9,12,14,17,21,24,27,30', '1205', '商务型', '200', null, null, null, '33', null, null, null, null, null, null, null, null);
INSERT INTO `company_product` VALUES ('30', '79', '2', '2017-11-1-2', '1,4,6,9,12,14,17,21,24,27,31,32', '1293', '商务型', '200', null, null, null, '44', null, null, null, null, null, null, null, null);
INSERT INTO `company_product` VALUES ('32', '98', '1', 'market2-1', '1,3,6,9,12,14,16,21,24,27,30,31', '1283', '商务型', '200', null, null, null, '40', null, null, null, null, null, null, null, null);
INSERT INTO `company_product` VALUES ('33', '99', '1', 'market3-1', '1,2,6,9,12,13,18,21,25,27,31', '1205', '商务型', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `company_product` VALUES ('35', '98', '2', 'market2-3', '1,3,6,8,12,14,18,21,24,27,30,31', '1293', '商务型', '300', null, null, null, '30', null, null, null, null, null, null, null, null);
INSERT INTO `company_product` VALUES ('36', '97', '2', 'aaa', '1,3,6,8,12,13,19,22,24,27,30,31,32', '1391', '极致型', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `company_product` VALUES ('37', '97', '3', '2017-11-5-2', '1,4,6,9,12,14,19,22,25,27,30,31', '1323', '商务型', null, null, null, null, null, null, null, null, null, null, null, null, null);

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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company_quarter_time
-- ----------------------------
INSERT INTO `company_quarter_time` VALUES ('1', '1', '1', '1', null, null, '1');
INSERT INTO `company_quarter_time` VALUES ('2', '1', '2', '1', null, null, '1');
INSERT INTO `company_quarter_time` VALUES ('3', '1', '3', '1', null, null, '1');
INSERT INTO `company_quarter_time` VALUES ('4', '1', '4', '1', null, null, '1');
INSERT INTO `company_quarter_time` VALUES ('5', '1', '5', '1', null, null, '1');
INSERT INTO `company_quarter_time` VALUES ('17', '1', '1', '2', '2017-10-03 16:34:29', null, '0');
INSERT INTO `company_quarter_time` VALUES ('18', '1', '2', '2', '2017-10-03 16:34:29', null, '0');
INSERT INTO `company_quarter_time` VALUES ('19', '1', '3', '2', '2017-10-03 16:34:29', null, '0');
INSERT INTO `company_quarter_time` VALUES ('20', '1', '4', '2', '2017-10-03 16:34:30', null, '0');
INSERT INTO `company_quarter_time` VALUES ('21', '1', '5', '2', '2017-10-03 16:34:30', null, '0');
INSERT INTO `company_quarter_time` VALUES ('22', '15', '79', '1', '2017-10-03 16:34:29', null, '1');
INSERT INTO `company_quarter_time` VALUES ('23', '15', '80', '1', '2017-10-03 16:34:29', null, '1');
INSERT INTO `company_quarter_time` VALUES ('24', '15', '81', '1', '2017-10-03 16:34:29', null, '1');
INSERT INTO `company_quarter_time` VALUES ('31', '15', '79', '2', '2017-11-02 10:54:52', null, '1');
INSERT INTO `company_quarter_time` VALUES ('32', '15', '80', '2', '2017-11-02 10:54:52', null, '1');
INSERT INTO `company_quarter_time` VALUES ('33', '15', '81', '2', '2017-11-02 10:54:52', null, '1');
INSERT INTO `company_quarter_time` VALUES ('34', '15', '79', '3', '2017-11-02 10:56:19', null, '0');
INSERT INTO `company_quarter_time` VALUES ('35', '15', '80', '3', '2017-11-02 10:56:19', null, '0');
INSERT INTO `company_quarter_time` VALUES ('36', '15', '81', '3', '2017-11-02 10:56:19', null, '0');
INSERT INTO `company_quarter_time` VALUES ('37', '18', '97', '1', '2017-11-02 12:26:09', null, '1');
INSERT INTO `company_quarter_time` VALUES ('38', '18', '98', '1', '2017-11-02 12:26:09', null, '1');
INSERT INTO `company_quarter_time` VALUES ('39', '18', '99', '1', '2017-11-02 12:26:10', null, '1');
INSERT INTO `company_quarter_time` VALUES ('40', '18', '97', '2', '2017-11-02 12:47:02', null, '1');
INSERT INTO `company_quarter_time` VALUES ('41', '18', '98', '2', '2017-11-02 12:47:02', null, '1');
INSERT INTO `company_quarter_time` VALUES ('42', '18', '99', '2', '2017-11-02 12:47:02', null, '1');
INSERT INTO `company_quarter_time` VALUES ('46', '18', '97', '3', '2017-11-05 12:10:33', null, '0');
INSERT INTO `company_quarter_time` VALUES ('47', '18', '98', '3', '2017-11-05 12:10:33', null, '0');
INSERT INTO `company_quarter_time` VALUES ('48', '18', '99', '3', '2017-11-05 12:10:33', null, '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company_report
-- ----------------------------
INSERT INTO `company_report` VALUES ('2', '1', '2', '0');
INSERT INTO `company_report` VALUES ('3', '97', '2', '1');
INSERT INTO `company_report` VALUES ('4', '98', '2', '1');
INSERT INTO `company_report` VALUES ('5', '99', '2', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company_rule
-- ----------------------------
INSERT INTO `company_rule` VALUES ('1', '1', '5,6,4', '1');
INSERT INTO `company_rule` VALUES ('2', '36', '5,1', '1');
INSERT INTO `company_rule` VALUES ('3', '76', '5,2', '1');
INSERT INTO `company_rule` VALUES ('4', '79', '5,1', '1');
INSERT INTO `company_rule` VALUES ('5', '82', '5,6,3', '1');
INSERT INTO `company_rule` VALUES ('6', '97', '5,6,7,2', '1');
INSERT INTO `company_rule` VALUES ('7', '98', '7,2', '1');
INSERT INTO `company_rule` VALUES ('8', '99', '7,2', '1');
INSERT INTO `company_rule` VALUES ('9', '97', '5,6,7,1', '2');

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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company_stock
-- ----------------------------
INSERT INTO `company_stock` VALUES ('1', '1', '1', '普通股', '经营团队', '10000', '200', '2000000');
INSERT INTO `company_stock` VALUES ('2', '76', '1', '普通股', '经营团队', '10000', '200', '2000000');
INSERT INTO `company_stock` VALUES ('3', '77', '1', '普通股', '经营团队', '10000', '200', '2000000');
INSERT INTO `company_stock` VALUES ('4', '78', '1', '普通股', '经营团队', '10000', '200', '2000000');
INSERT INTO `company_stock` VALUES ('5', '79', '1', '普通股', '经营团队', '10000', '200', '2000000');
INSERT INTO `company_stock` VALUES ('6', '80', '1', '普通股', '经营团队', '10000', '200', '2000000');
INSERT INTO `company_stock` VALUES ('7', '81', '1', '普通股', '经营团队', '10000', '200', '2000000');
INSERT INTO `company_stock` VALUES ('8', '82', '1', '普通股', '经营团队', '10000', '200', '2000000');
INSERT INTO `company_stock` VALUES ('9', '83', '1', '普通股', '经营团队', '10000', '200', '2000000');
INSERT INTO `company_stock` VALUES ('10', '84', '1', '普通股', '经营团队', '10000', '200', '2000000');
INSERT INTO `company_stock` VALUES ('11', '85', '1', '普通股', '经营团队', '10000', '200', '2000000');
INSERT INTO `company_stock` VALUES ('12', '86', '1', '普通股', '经营团队', '10000', '200', '2000000');
INSERT INTO `company_stock` VALUES ('13', '87', '1', '普通股', '经营团队', '10000', '200', '2000000');
INSERT INTO `company_stock` VALUES ('14', '88', '1', '普通股', '经营团队', '10000', '200', '2000000');
INSERT INTO `company_stock` VALUES ('15', '89', '1', '普通股', '经营团队', '10000', '200', '2000000');
INSERT INTO `company_stock` VALUES ('16', '90', '1', '普通股', '经营团队', '10000', '200', '2000000');
INSERT INTO `company_stock` VALUES ('17', '91', '1', '普通股', '经营团队', '10000', '200', '2000000');
INSERT INTO `company_stock` VALUES ('18', '92', '1', '普通股', '经营团队', '10000', '200', '2000000');
INSERT INTO `company_stock` VALUES ('19', '93', '1', '普通股', '经营团队', '10000', '200', '2000000');
INSERT INTO `company_stock` VALUES ('20', '94', '1', '普通股', '经营团队', '10000', '200', '2000000');
INSERT INTO `company_stock` VALUES ('21', '95', '1', '普通股', '经营团队', '10000', '200', '2000000');
INSERT INTO `company_stock` VALUES ('22', '96', '1', '普通股', '经营团队', '10000', '200', '2000000');
INSERT INTO `company_stock` VALUES ('23', '79', '2', '普通股', '经营团队', '5000', '200', '1000000');
INSERT INTO `company_stock` VALUES ('24', '97', '1', '普通股', '经营团队', '10000', '200', '2000000');
INSERT INTO `company_stock` VALUES ('25', '98', '1', '普通股', '经营团队', '10000', '200', '2000000');
INSERT INTO `company_stock` VALUES ('26', '99', '1', '普通股', '经营团队', '10000', '200', '2000000');
INSERT INTO `company_stock` VALUES ('27', '97', '2', '普通股', '经营团队', '5000', '200', '1000000');
INSERT INTO `company_stock` VALUES ('28', '98', '2', '普通股', '经营团队', '5000', '200', '1000000');

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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company_strategy
-- ----------------------------
INSERT INTO `company_strategy` VALUES ('5', '1', '极致型', '实用型', '5,7,1,2,10,', '多少度', '1');
INSERT INTO `company_strategy` VALUES ('6', '36', '极致型', '商务型', '5,1,8,11,', '重点关注销售成本最小的区域市场', '1');
INSERT INTO `company_strategy` VALUES ('7', '76', '极致型', '商务型', '5,1,8,12,', '竞赛14-1', '1');
INSERT INTO `company_strategy` VALUES ('8', '79', '极致型', '商务型', '5,2,3,8,12,', '123123', '1');
INSERT INTO `company_strategy` VALUES ('9', '82', '极致型', '商务型', '5,1,2,10,12,', 'nioiho', '1');
INSERT INTO `company_strategy` VALUES ('10', '79', '商务型', '实用型', '6,2,9,14,', '你好 世界', '2');
INSERT INTO `company_strategy` VALUES ('11', '97', '极致型', '商务型', '5,1,8,12,', '1111111111111', '1');
INSERT INTO `company_strategy` VALUES ('12', '98', '实用型', '极致型', '7,2,10,14,', '222222222222222222', '1');
INSERT INTO `company_strategy` VALUES ('13', '99', '实用型', '极致型', '6,2,10,14,', '3333333333333333333', '1');
INSERT INTO `company_strategy` VALUES ('14', '97', '极致型', '商务型', '6,2,10,13,', '123123', '2');

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
  `is_lock` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `teacher_id` (`teacher_id`),
  CONSTRAINT `competition_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of competition
-- ----------------------------
INSERT INTO `competition` VALUES ('1', 'ZHOU-SH-20170701-1', '27ED-19PF-2U25', '1', '6', '5', '5', '1', '2017-05-08 00:00:00', '2017-05-24 00:00:00', '已通过', '0');
INSERT INTO `competition` VALUES ('9', 'AAAAAA1', 'JS8D-YHO7-2A5G', '1', '12', '5', '6', '1', '2017-06-09 00:00:00', '2017-06-22 00:00:00', '待审核', '0');
INSERT INTO `competition` VALUES ('10', 'ZHOU-SH-20170612-1', 'IH2F-3XIA-3PBZ', '1', '10', '5', '5', '2', '2017-06-15 00:00:00', '2017-06-30 00:00:00', '待审核', '0');
INSERT INTO `competition` VALUES ('15', 'Market-SH-20170831-1', 'T8K4-729I-7YM3', '2', '6', '3', '3', '1', '2017-08-31 00:00:00', '2017-09-22 00:00:00', '已通过', '0');
INSERT INTO `competition` VALUES ('16', 'Market-SH-20170904-1', 'N42J-PN17-2U25', '1', '6', '5', '5', '1', '2017-09-04 00:00:00', '2017-09-21 00:00:00', '已通过', '0');
INSERT INTO `competition` VALUES ('17', 'Market-SH-20170904-2', 'V6P9-53QK-3720', '1', '6', '7', '10', '1', '2017-09-14 00:00:00', '2017-09-29 00:00:00', '已通过', '0');
INSERT INTO `competition` VALUES ('18', '2017-11-2', '94P3-2L99-9D58', '3', '6', '3', '3', '1', '2017-11-02 00:00:00', '2017-11-30 00:00:00', '已通过', '0');

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
  `id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `quarter` int(11) DEFAULT NULL,
  `sales_num_phy` int(11) DEFAULT NULL,
  `sales_num_web` int(11) DEFAULT NULL,
  `demand_average_phy` int(11) DEFAULT NULL,
  `demand_average_web` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of demand_forecast
-- ----------------------------
INSERT INTO `demand_forecast` VALUES ('4', '5', '2', '5', '5', '1', '2');
INSERT INTO `demand_forecast` VALUES ('5', '79', '2', '3', '4', '500', '300');
INSERT INTO `demand_forecast` VALUES (null, '97', '2', null, null, '10', '20');
INSERT INTO `demand_forecast` VALUES (null, '98', '2', null, null, '4', '5');

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
  `quick_ratio` double(10,3) DEFAULT NULL,
  `inventoryover_ratio` double(10,3) DEFAULT NULL,
  `fixedassetover_ratio` double(10,3) DEFAULT NULL,
  `totalasset_ratio` double(10,3) DEFAULT NULL,
  `debt_ratio` double(10,3) DEFAULT NULL,
  `grossprofit_ratio` double(10,3) DEFAULT NULL,
  `netprofit_ratio` double(10,3) DEFAULT NULL,
  `return_ratio` double(10,3) DEFAULT NULL,
  `quarter` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `company_id` (`company_id`),
  CONSTRAINT `financial_ratio_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of financial_ratio
-- ----------------------------
INSERT INTO `financial_ratio` VALUES ('1', '0.000', '0.000', '0.000', '0.000', '0.000', '0.000', '0.000', '0.000', '2', '1');
INSERT INTO `financial_ratio` VALUES ('2', '1.000', '1.000', '1.000', '1.000', '1.000', '1.000', '1.000', '1.000', '2', '2');
INSERT INTO `financial_ratio` VALUES ('3', '2.000', '2.000', '2.000', '2.000', '2.000', '2.000', '2.000', '2.000', '2', '79');
INSERT INTO `financial_ratio` VALUES ('4', '3.000', '3.000', '3.000', '3.000', '3.000', '3.000', '3.000', '3.000', '2', '80');
INSERT INTO `financial_ratio` VALUES ('5', '4.000', '4.000', '4.000', '4.000', '4.000', '4.000', '4.000', '4.000', '2', '81');

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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fixed_deposit
-- ----------------------------
INSERT INTO `fixed_deposit` VALUES ('15', '2', '1', '0', '2000', '5000', '1.5');
INSERT INTO `fixed_deposit` VALUES ('16', '1', '1', '0', '32', '20000', '1.5');
INSERT INTO `fixed_deposit` VALUES ('17', '79', '1', '0', '10000', '20000', '1.5');
INSERT INTO `fixed_deposit` VALUES ('18', '82', '1', '0', '100', '1100', '1.5');
INSERT INTO `fixed_deposit` VALUES ('21', '79', '2', '10150', '200', '1000', '1.5');
INSERT INTO `fixed_deposit` VALUES ('22', '97', '1', '0', '0', '10000', '1.5');
INSERT INTO `fixed_deposit` VALUES ('23', '98', '1', '0', '0', '20000', '1.5');
INSERT INTO `fixed_deposit` VALUES ('24', '99', '1', '0', '0', '30000', '1.5');
INSERT INTO `fixed_deposit` VALUES ('25', '97', '2', '10150', '200', '2000', '1.5');
INSERT INTO `fixed_deposit` VALUES ('26', '98', '2', '20300', '200', '1000', '1.5');

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
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hire_people
-- ----------------------------
INSERT INTO `hire_people` VALUES ('58', '97', '2', '1', '3', '4');
INSERT INTO `hire_people` VALUES ('60', '97', '1', '1', '1', '2');
INSERT INTO `hire_people` VALUES ('61', '97', '3', '1', '5', '6');
INSERT INTO `hire_people` VALUES ('62', '97', '4', '1', '7', '8');
INSERT INTO `hire_people` VALUES ('63', '99', '2', '1', '0', '0');
INSERT INTO `hire_people` VALUES ('64', '97', '3', '3', '0', '0');
INSERT INTO `hire_people` VALUES ('65', '97', '2', '2', '0', '0');
INSERT INTO `hire_people` VALUES ('66', '97', '3', '2', '0', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hire_people_online
-- ----------------------------
INSERT INTO `hire_people_online` VALUES ('7', '97', '1', '1', '1', '2');
INSERT INTO `hire_people_online` VALUES ('11', '97', '2', '1', '3', '4');
INSERT INTO `hire_people_online` VALUES ('12', '97', '2', '2', '0', '0');
INSERT INTO `hire_people_online` VALUES ('14', '99', '3', '1', '0', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=194 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of income_statement
-- ----------------------------
INSERT INTO `income_statement` VALUES ('1', '1', '1', '0', '0', '0', '0', '60000', '0', '0', '100001', '70002', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('2', '76', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('50', '76', '1', null, null, null, null, null, null, null, '100001', '70000', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `income_statement` VALUES ('51', '76', '2', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `income_statement` VALUES ('52', '76', '3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `income_statement` VALUES ('53', '76', '4', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `income_statement` VALUES ('54', '76', '5', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `income_statement` VALUES ('55', '76', '6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `income_statement` VALUES ('56', '77', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `income_statement` VALUES ('57', '77', '2', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `income_statement` VALUES ('58', '77', '3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `income_statement` VALUES ('59', '77', '4', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `income_statement` VALUES ('60', '77', '5', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `income_statement` VALUES ('61', '77', '6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `income_statement` VALUES ('62', '78', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `income_statement` VALUES ('63', '78', '2', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `income_statement` VALUES ('64', '78', '3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `income_statement` VALUES ('65', '78', '4', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `income_statement` VALUES ('66', '78', '5', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `income_statement` VALUES ('67', '78', '6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `income_statement` VALUES ('68', '79', '1', '0', '150', '0', '0', '240000', '0', '0', '300004', '70000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('69', '79', '2', '40000000', '164.25', '3920970', '0', '120000', '4920000', '17781', '50000', '0', '0', '270000', '75727', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('70', '79', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('71', '79', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('72', '79', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('73', '79', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('74', '80', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('75', '80', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('76', '80', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('77', '80', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('78', '80', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('79', '80', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('80', '81', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('81', '81', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('82', '81', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('83', '81', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('84', '81', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('85', '81', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('86', '82', '1', '0', '0', '0', '0', '0', '0', '0', '200001', '70001', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('87', '82', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('88', '82', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('89', '82', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('90', '82', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('91', '82', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('92', '83', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('93', '83', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('94', '83', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('95', '83', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('96', '83', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('97', '83', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('98', '84', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('99', '84', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('100', '84', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('101', '84', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('102', '84', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('103', '84', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('104', '85', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('105', '85', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('106', '85', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('107', '85', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('108', '85', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('109', '85', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('110', '86', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('111', '86', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('112', '86', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('113', '86', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('114', '86', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('115', '86', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('116', '87', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('117', '87', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('118', '87', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('119', '87', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('120', '87', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('121', '87', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('122', '88', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('123', '88', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('124', '88', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('125', '88', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('126', '88', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('127', '88', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('128', '89', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('129', '89', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('130', '89', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('131', '89', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('132', '89', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('133', '89', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('134', '90', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('135', '90', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('136', '90', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('137', '90', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('138', '90', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('139', '90', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('140', '91', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('141', '91', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('142', '91', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('143', '91', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('144', '91', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('145', '91', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('146', '92', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('147', '92', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('148', '92', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('149', '92', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('150', '92', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('151', '92', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('152', '93', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('153', '93', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('154', '93', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('155', '93', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('156', '93', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('157', '93', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('158', '94', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('159', '94', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('160', '94', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('161', '94', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('162', '94', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('163', '94', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('164', '95', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('165', '95', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('166', '95', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('167', '95', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('168', '95', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('169', '95', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('170', '96', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('171', '96', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('172', '96', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('173', '96', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('174', '96', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('175', '96', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('176', '97', '1', '0', '150', '0', '0', '60000', '0', '0', '400006', '140001', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('177', '97', '2', '0', '179.25', '0', '0', '60000', '0', '0', '100003', '30001', '15000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('178', '97', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('179', '97', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('180', '97', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('181', '97', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('182', '98', '1', '0', '300', '0', '0', '60000', '0', '0', '100000', '70001', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('183', '98', '2', '1090000', '316.5', '853740', '17000', '60000', '191000', '0', '200002', '0', '0', '0', '9754', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('184', '98', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('185', '98', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('186', '98', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('187', '98', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('188', '99', '1', '0', '450', '0', '0', '60000', '0', '0', '100001', '70002', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('189', '99', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('190', '99', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('191', '99', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('192', '99', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('193', '99', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=182 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of income_statement_result
-- ----------------------------
INSERT INTO `income_statement_result` VALUES ('1', '1', '1', '0', '0', '0', '0', '60000', '0', '0', '100001', '70002', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('2', '76', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('50', '76', '1', null, null, null, null, null, null, null, '100001', '70000', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `income_statement_result` VALUES ('51', '76', '2', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `income_statement_result` VALUES ('52', '76', '3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `income_statement_result` VALUES ('53', '76', '4', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `income_statement_result` VALUES ('54', '76', '5', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `income_statement_result` VALUES ('55', '76', '6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `income_statement_result` VALUES ('56', '77', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `income_statement_result` VALUES ('57', '77', '2', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `income_statement_result` VALUES ('58', '77', '3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `income_statement_result` VALUES ('59', '77', '4', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `income_statement_result` VALUES ('60', '77', '5', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `income_statement_result` VALUES ('61', '77', '6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `income_statement_result` VALUES ('62', '78', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `income_statement_result` VALUES ('63', '78', '2', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `income_statement_result` VALUES ('64', '78', '3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `income_statement_result` VALUES ('65', '78', '4', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `income_statement_result` VALUES ('66', '78', '5', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `income_statement_result` VALUES ('67', '78', '6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `income_statement_result` VALUES ('68', '79', '1', '0', '150', '0', '0', '240000', '0', '0', '300004', '70000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('69', '79', '2', '40000000', '164.25', '3920970', '0', '120000', '4920000', '17781', '50000', '0', '0', '270000', '75727', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('70', '79', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('71', '79', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('72', '79', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('73', '79', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('74', '80', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('75', '80', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('76', '80', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('77', '80', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('78', '80', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('79', '80', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('80', '81', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('81', '81', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('82', '81', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('83', '81', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('84', '81', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('85', '81', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('86', '82', '1', '0', '0', '0', '0', '0', '0', '0', '200001', '70001', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('87', '82', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('88', '82', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('89', '82', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('90', '82', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('91', '82', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('92', '83', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('93', '83', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('94', '83', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('95', '83', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('96', '83', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('97', '83', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('98', '84', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('99', '84', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('100', '84', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('101', '84', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('102', '84', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('103', '84', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('104', '85', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('105', '85', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('106', '85', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('107', '85', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('108', '85', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('109', '85', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('110', '86', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('111', '86', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('112', '86', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('113', '86', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('114', '86', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('115', '86', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('116', '87', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('117', '87', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('118', '87', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('119', '87', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('120', '87', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('121', '87', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('122', '88', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('123', '88', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('124', '88', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('125', '88', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('126', '88', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('127', '88', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('128', '89', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('129', '89', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('130', '89', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('131', '89', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('132', '89', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('133', '89', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('134', '90', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('135', '90', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('136', '90', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('137', '90', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('138', '90', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('139', '90', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('140', '91', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('141', '91', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('142', '91', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('143', '91', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('144', '91', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('145', '91', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('146', '92', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('147', '92', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('148', '92', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('149', '92', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('150', '92', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('151', '92', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('152', '93', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('153', '93', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('154', '93', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('155', '93', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('156', '93', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('157', '93', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('158', '94', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('159', '94', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('160', '94', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('161', '94', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('162', '94', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('163', '94', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('164', '95', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('165', '95', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('166', '95', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('167', '95', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('168', '95', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('169', '95', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('170', '96', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('171', '96', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('172', '96', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('173', '96', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('174', '96', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('175', '96', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('176', '97', '1', '0', '150', '0', '0', '60000', '0', '0', '400006', '140001', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('177', '98', '1', '0', '300', '0', '0', '60000', '0', '0', '100000', '70001', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('178', '97', '2', '2925000', '179.25', '2222020', '29250', '60000', '2750000', '0', '100001', '0', '15000', '195000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('179', '98', '2', '9782500', '316.5', '4943580', '136500', '60000', '191000', '0', '200002', '0', '0', '455000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('180', '99', '2', '0', '0', '3867500', '0', '0', '0', '0', '0', '0', '0', '122000', '283050', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('181', '99', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', null);

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of learntime
-- ----------------------------
INSERT INTO `learntime` VALUES ('6', '11', '1', '1');
INSERT INTO `learntime` VALUES ('7', '78', '3', '16');

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
) ENGINE=InnoDB AUTO_INCREMENT=1371 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES ('674', 'zhou15:学生登录操作', '2017-11-01 15:55:45', '12', '1', '1');
INSERT INTO `log` VALUES ('675', 'zhou15:查看需求量预测操作', '2017-11-01 15:55:49', '12', '1', '1');
INSERT INTO `log` VALUES ('676', 'zhou15:查看运行产能操作', '2017-11-01 15:56:28', '12', '1', '1');
INSERT INTO `log` VALUES ('677', 'zhou15:修改运行产能', '2017-11-01 15:56:37', '12', '1', '1');
INSERT INTO `log` VALUES ('678', 'zhou15:学生登录操作', '2017-11-01 16:04:12', '12', '1', '1');
INSERT INTO `log` VALUES ('679', 'zhou15:学生登录操作', '2017-11-01 16:05:13', '12', '1', '1');
INSERT INTO `log` VALUES ('680', 'zhou15:查看现金流表操作', '2017-11-01 16:05:49', '12', '1', '1');
INSERT INTO `log` VALUES ('681', 'zhou15:学生登录操作', '2017-11-01 16:06:49', '12', '1', '1');
INSERT INTO `log` VALUES ('682', 'zhou15:查看现金流表操作', '2017-11-01 16:06:56', '12', '1', '1');
INSERT INTO `log` VALUES ('683', 'zhou15:学生登录操作', '2017-11-01 16:10:04', '12', '1', '1');
INSERT INTO `log` VALUES ('684', 'zhou15:学生登录操作', '2017-11-01 16:11:18', '12', '1', '1');
INSERT INTO `log` VALUES ('685', 'zhou15:学生登录操作', '2017-11-01 16:12:19', '12', '1', '1');
INSERT INTO `log` VALUES ('686', 'zhou15:学生登录操作', '2017-11-01 16:13:58', '12', '1', '1');
INSERT INTO `log` VALUES ('687', 'zhou15:学生登录操作', '2017-11-01 16:16:36', '12', '1', '1');
INSERT INTO `log` VALUES ('688', 'zhou15:查看用户愿意支付的价格', '2017-11-01 16:20:43', '12', '1', '1');
INSERT INTO `log` VALUES ('689', 'zhou15:显示销货成本', '2017-11-01 16:20:46', '12', '1', '1');
INSERT INTO `log` VALUES ('690', 'zhou15:显示产品定价', '2017-11-01 16:20:58', '12', '1', '1');
INSERT INTO `log` VALUES ('691', 'zhou15:查看客户需求', '2017-11-01 16:21:00', '12', '1', '1');
INSERT INTO `log` VALUES ('692', 'zhou15:查看产品用途', '2017-11-01 16:21:01', '12', '1', '1');
INSERT INTO `log` VALUES ('693', 'zhou15:查看媒体偏好', '2017-11-01 16:21:02', '12', '1', '1');
INSERT INTO `log` VALUES ('694', 'zhou15:显示设计广告语', '2017-11-01 16:21:05', '12', '1', '1');
INSERT INTO `log` VALUES ('695', 'zhou15:更新产品广告语', '2017-11-01 16:21:23', '12', '1', '1');
INSERT INTO `log` VALUES ('696', 'zhou15:更新产品广告语', '2017-11-01 16:23:20', '12', '1', '1');
INSERT INTO `log` VALUES ('697', 'zhou15:核查广告语', '2017-11-01 16:23:26', '12', '1', '1');
INSERT INTO `log` VALUES ('698', 'zhou15:显示设计广告语', '2017-11-01 16:23:28', '12', '1', '1');
INSERT INTO `log` VALUES ('699', 'zhou15:查看媒体偏好', '2017-11-01 16:23:31', '12', '1', '1');
INSERT INTO `log` VALUES ('700', 'zhou15:查看产品用途', '2017-11-01 16:23:32', '12', '1', '1');
INSERT INTO `log` VALUES ('701', 'zhou15:查看客户需求', '2017-11-01 16:23:32', '12', '1', '1');
INSERT INTO `log` VALUES ('702', 'zhou15:显示产品定价', '2017-11-01 16:23:34', '12', '1', '1');
INSERT INTO `log` VALUES ('703', 'zhou15:显示销货成本', '2017-11-01 16:24:27', '12', '1', '1');
INSERT INTO `log` VALUES ('704', 'zhou15:显示产品定价', '2017-11-01 16:25:53', '12', '1', '1');
INSERT INTO `log` VALUES ('705', 'zhou15:显示设计广告语', '2017-11-01 16:26:43', '12', '1', '1');
INSERT INTO `log` VALUES ('706', 'zhou15:学生登录操作', '2017-11-01 17:42:43', '12', '1', '1');
INSERT INTO `log` VALUES ('707', 'zhou15:显示产品定价', '2017-11-01 17:42:49', '12', '1', '1');
INSERT INTO `log` VALUES ('708', 'zhou15:操作产品定价', '2017-11-01 17:43:49', '12', '1', '1');
INSERT INTO `log` VALUES ('709', 'zhou15:学生登录操作', '2017-11-01 17:49:06', '12', '1', '1');
INSERT INTO `log` VALUES ('710', 'zhou15:显示产品定价', '2017-11-01 17:49:11', '12', '1', '1');
INSERT INTO `log` VALUES ('711', 'zhou15:学生登录操作', '2017-11-01 17:51:39', '12', '1', '1');
INSERT INTO `log` VALUES ('712', 'zhou15:显示产品定价', '2017-11-01 17:51:43', '12', '1', '1');
INSERT INTO `log` VALUES ('713', 'zhou15:学生登录操作', '2017-11-01 17:54:58', '12', '1', '1');
INSERT INTO `log` VALUES ('714', 'zhou15:显示设计广告语', '2017-11-01 17:55:06', '12', '1', '1');
INSERT INTO `log` VALUES ('715', 'zhou15:更新产品广告语', '2017-11-01 17:55:11', '12', '1', '1');
INSERT INTO `log` VALUES ('716', 'zhou15:核查广告语', '2017-11-01 17:55:27', '12', '1', '1');
INSERT INTO `log` VALUES ('717', 'zhou15:学生登录操作', '2017-11-02 09:09:25', '12', '1', '1');
INSERT INTO `log` VALUES ('718', 'zhou15:显示产品定价', '2017-11-02 09:09:31', '12', '1', '1');
INSERT INTO `log` VALUES ('719', 'zhou15:显示设计广告语', '2017-11-02 09:09:40', '12', '1', '1');
INSERT INTO `log` VALUES ('720', 'zhou15:核查广告语', '2017-11-02 09:09:43', '12', '1', '1');
INSERT INTO `log` VALUES ('721', 'zhou15:显示市场调研报告', '2017-11-02 09:09:45', '12', '1', '1');
INSERT INTO `log` VALUES ('722', 'zhou15:查看实体销售操作', '2017-11-02 09:10:18', '12', '1', '1');
INSERT INTO `log` VALUES ('723', 'zhou15:查看网络销售中心操作', '2017-11-02 09:10:24', '12', '1', '1');
INSERT INTO `log` VALUES ('724', 'zhou15:查看内部持股操作', '2017-11-02 09:10:48', '12', '1', '1');
INSERT INTO `log` VALUES ('725', 'zhou15:查看现金流表操作', '2017-11-02 09:10:53', '12', '1', '1');
INSERT INTO `log` VALUES ('726', 'zhou15:查看品牌管理操作', '2017-11-02 09:11:22', '12', '1', '1');
INSERT INTO `log` VALUES ('727', 'zhou15:查看决策汇总操作', '2017-11-02 09:11:41', '12', '1', '1');
INSERT INTO `log` VALUES ('728', 'zhou15:查看决策汇总操作', '2017-11-02 09:14:20', '12', '1', '1');
INSERT INTO `log` VALUES ('729', 'zhou15:查看内部持股操作', '2017-11-02 09:14:25', '12', '1', '1');
INSERT INTO `log` VALUES ('730', 'zhou15:查看定期存款操作', '2017-11-02 09:14:28', '12', '1', '1');
INSERT INTO `log` VALUES ('731', 'zhou15:查看品牌管理操作', '2017-11-02 09:14:43', '12', '1', '1');
INSERT INTO `log` VALUES ('732', 'zhou15:查看固定产能操作', '2017-11-02 09:14:44', '12', '1', '1');
INSERT INTO `log` VALUES ('733', 'zhou15:查看实体销售操作', '2017-11-02 09:15:00', '12', '1', '1');
INSERT INTO `log` VALUES ('734', 'zhou15:查看网络销售中心操作', '2017-11-02 09:15:04', '12', '1', '1');
INSERT INTO `log` VALUES ('735', 'zhou15:学生登录操作', '2017-11-02 09:28:39', '12', '1', '1');
INSERT INTO `log` VALUES ('736', 'zhou15:查看需求量预测操作', '2017-11-02 09:29:35', '12', '1', '1');
INSERT INTO `log` VALUES ('737', 'zhou15:修改公司名字', '2017-11-02 09:29:43', '12', '1', '1');
INSERT INTO `log` VALUES ('738', 'zhou15:查看决策汇总操作', '2017-11-02 09:29:45', '12', '1', '1');
INSERT INTO `log` VALUES ('739', 'zhou15:查看网络销售中心操作', '2017-11-02 09:29:57', '12', '1', '1');
INSERT INTO `log` VALUES ('740', 'zhou15:学生登录操作', '2017-11-02 09:31:03', '12', '1', '1');
INSERT INTO `log` VALUES ('741', 'zhou15:查看网络销售中心操作', '2017-11-02 09:31:07', '12', '1', '1');
INSERT INTO `log` VALUES ('742', 'zhou15:学生登录操作', '2017-11-02 09:36:59', '12', '1', '1');
INSERT INTO `log` VALUES ('743', 'zhou15:查看决策汇总操作', '2017-11-02 09:37:06', '12', '1', '1');
INSERT INTO `log` VALUES ('744', 'zhou15:查看实体销售操作', '2017-11-02 09:37:59', '12', '1', '1');
INSERT INTO `log` VALUES ('745', 'zhou15:查看网络销售中心操作', '2017-11-02 09:38:00', '12', '1', '1');
INSERT INTO `log` VALUES ('746', 'zhou15:查看品牌管理操作', '2017-11-02 09:38:06', '12', '1', '1');
INSERT INTO `log` VALUES ('747', 'zhou15:查看决策汇总操作', '2017-11-02 09:38:10', '12', '1', '1');
INSERT INTO `log` VALUES ('748', 'zhou15:查看目标策略操作', '2017-11-02 09:38:16', '12', '1', '1');
INSERT INTO `log` VALUES ('749', 'zhou15:学生登录操作', '2017-11-02 09:41:58', '12', '1', '1');
INSERT INTO `log` VALUES ('750', 'zhou15:查看目标策略操作', '2017-11-02 09:42:03', '12', '1', '1');
INSERT INTO `log` VALUES ('751', 'zhou15:学生登录操作', '2017-11-02 09:46:10', '12', '1', '1');
INSERT INTO `log` VALUES ('752', 'zhou15:查看目标策略操作', '2017-11-02 09:46:52', '12', '1', '1');
INSERT INTO `log` VALUES ('753', 'zhou15:修改目标策略', '2017-11-02 09:47:28', '12', '1', '1');
INSERT INTO `log` VALUES ('754', 'zhou15:查看决策汇总操作', '2017-11-02 09:47:31', '12', '1', '1');
INSERT INTO `log` VALUES ('755', 'zhou15:查看目标策略操作', '2017-11-02 09:47:52', '12', '1', '1');
INSERT INTO `log` VALUES ('756', 'zhou15:查看决策汇总操作', '2017-11-02 10:04:42', '12', '1', '1');
INSERT INTO `log` VALUES ('757', 'zhou15:学生登录操作', '2017-11-02 10:08:54', '12', '1', '1');
INSERT INTO `log` VALUES ('758', 'zhou15:学生登录操作', '2017-11-02 10:10:09', '12', '1', '1');
INSERT INTO `log` VALUES ('759', 'zhou15:查看实体销售操作', '2017-11-02 10:10:22', '12', '1', '1');
INSERT INTO `log` VALUES ('760', 'market1:学生登录操作', '2017-11-02 12:35:41', '16', '1', '1');
INSERT INTO `log` VALUES ('761', 'market1:修改公司名字', '2017-11-02 12:35:46', '16', '1', '1');
INSERT INTO `log` VALUES ('762', 'market1:查看目标策略操作', '2017-11-02 12:35:56', '16', '1', '1');
INSERT INTO `log` VALUES ('763', 'market1:修改目标策略', '2017-11-02 12:36:09', '16', '1', '1');
INSERT INTO `log` VALUES ('764', 'market1:查看客户需求', '2017-11-02 12:36:13', '16', '1', '1');
INSERT INTO `log` VALUES ('765', 'market1:查看产品用途', '2017-11-02 12:36:14', '16', '1', '1');
INSERT INTO `log` VALUES ('766', 'market1:查看用户愿意支付的价格', '2017-11-02 12:36:14', '16', '1', '1');
INSERT INTO `log` VALUES ('767', 'market1:查看市场规模', '2017-11-02 12:36:14', '16', '1', '1');
INSERT INTO `log` VALUES ('768', 'market1:查看职位分配操作', '2017-11-02 12:36:18', '16', '1', '1');
INSERT INTO `log` VALUES ('769', 'market1:修改职位分配', '2017-11-02 12:36:23', '16', '1', '1');
INSERT INTO `log` VALUES ('770', 'market1:修改团队规则', '2017-11-02 12:36:29', '16', '1', '1');
INSERT INTO `log` VALUES ('771', 'market1:查看团队目标操作', '2017-11-02 12:36:30', '16', '1', '1');
INSERT INTO `log` VALUES ('772', 'market1:修改个人目标', '2017-11-02 12:36:35', '16', '1', '1');
INSERT INTO `log` VALUES ('773', 'market1:查看员工薪酬', '2017-11-02 12:36:37', '16', '1', '1');
INSERT INTO `log` VALUES ('774', 'market1:查看实体销售操作', '2017-11-02 12:36:40', '16', '1', '1');
INSERT INTO `log` VALUES ('775', 'market1:修改开设实体销售中心', '2017-11-02 12:36:46', '16', '1', '1');
INSERT INTO `log` VALUES ('776', 'market1:查看网络销售中心操作', '2017-11-02 12:36:47', '16', '1', '1');
INSERT INTO `log` VALUES ('777', 'market1:修改开设网络销售中心', '2017-11-02 12:36:52', '16', '1', '1');
INSERT INTO `log` VALUES ('778', 'market1:查看品牌管理操作', '2017-11-02 12:36:54', '16', '1', '1');
INSERT INTO `log` VALUES ('779', 'market1:查看固定产能操作', '2017-11-02 12:37:40', '16', '1', '1');
INSERT INTO `log` VALUES ('780', 'market1:修改固定产能', '2017-11-02 12:37:45', '16', '1', '1');
INSERT INTO `log` VALUES ('781', 'market1:查看现金流表操作', '2017-11-02 12:37:50', '16', '1', '1');
INSERT INTO `log` VALUES ('782', 'market1:查看利润表操作', '2017-11-02 12:38:01', '16', '1', '1');
INSERT INTO `log` VALUES ('783', 'market1:查看资产负债表操作', '2017-11-02 12:38:02', '16', '1', '1');
INSERT INTO `log` VALUES ('784', 'market1:查看内部持股操作', '2017-11-02 12:38:13', '16', '1', '1');
INSERT INTO `log` VALUES ('785', 'market1:查看定期存款操作', '2017-11-02 12:38:16', '16', '1', '1');
INSERT INTO `log` VALUES ('786', 'market1:修改定期存款', '2017-11-02 12:38:34', '16', '1', '1');
INSERT INTO `log` VALUES ('787', 'market1:查看决策汇总操作', '2017-11-02 12:38:53', '16', '1', '1');
INSERT INTO `log` VALUES ('788', 'market1:学生登录操作', '2017-11-02 12:40:20', '16', '1', '1');
INSERT INTO `log` VALUES ('789', 'market2:学生登录操作', '2017-11-02 12:40:37', '17', '1', '1');
INSERT INTO `log` VALUES ('790', 'market2:修改公司名字', '2017-11-02 12:40:40', '17', '1', '1');
INSERT INTO `log` VALUES ('791', 'market2:查看目标策略操作', '2017-11-02 12:40:49', '17', '1', '1');
INSERT INTO `log` VALUES ('792', 'market2:修改目标策略', '2017-11-02 12:41:00', '17', '1', '1');
INSERT INTO `log` VALUES ('793', 'market2:查看职位分配操作', '2017-11-02 12:41:03', '17', '1', '1');
INSERT INTO `log` VALUES ('794', 'market2:修改职位分配', '2017-11-02 12:41:07', '17', '1', '1');
INSERT INTO `log` VALUES ('795', 'market2:修改团队规则', '2017-11-02 12:41:12', '17', '1', '1');
INSERT INTO `log` VALUES ('796', 'market2:查看团队目标操作', '2017-11-02 12:41:13', '17', '1', '1');
INSERT INTO `log` VALUES ('797', 'market2:修改个人目标', '2017-11-02 12:41:17', '17', '1', '1');
INSERT INTO `log` VALUES ('798', 'market2:查看员工薪酬', '2017-11-02 12:41:18', '17', '1', '1');
INSERT INTO `log` VALUES ('799', 'market2:查看实体销售操作', '2017-11-02 12:41:21', '17', '1', '1');
INSERT INTO `log` VALUES ('800', 'market2:修改开设实体销售中心', '2017-11-02 12:41:24', '17', '1', '1');
INSERT INTO `log` VALUES ('801', 'market2:修改开设实体销售中心', '2017-11-02 12:42:28', '17', '1', '1');
INSERT INTO `log` VALUES ('802', 'market2:查看网络销售中心操作', '2017-11-02 12:42:29', '17', '1', '1');
INSERT INTO `log` VALUES ('803', 'market2:修改开设网络销售中心', '2017-11-02 12:42:32', '17', '1', '1');
INSERT INTO `log` VALUES ('804', 'market2:查看固定产能操作', '2017-11-02 12:42:34', '17', '1', '1');
INSERT INTO `log` VALUES ('805', 'market2:查看品牌管理操作', '2017-11-02 12:42:34', '17', '1', '1');
INSERT INTO `log` VALUES ('806', 'market2:修改固定产能', '2017-11-02 12:42:59', '17', '1', '1');
INSERT INTO `log` VALUES ('807', 'market2:查看内部持股操作', '2017-11-02 12:43:02', '17', '1', '1');
INSERT INTO `log` VALUES ('808', 'market2:查看定期存款操作', '2017-11-02 12:43:05', '17', '1', '1');
INSERT INTO `log` VALUES ('809', 'market2:修改定期存款', '2017-11-02 12:43:12', '17', '1', '1');
INSERT INTO `log` VALUES ('810', 'market2:查看现金流表操作', '2017-11-02 12:43:14', '17', '1', '1');
INSERT INTO `log` VALUES ('811', 'market2:查看利润表操作', '2017-11-02 12:43:20', '17', '1', '1');
INSERT INTO `log` VALUES ('812', 'market2:查看资产负债表操作', '2017-11-02 12:43:21', '17', '1', '1');
INSERT INTO `log` VALUES ('813', 'market2:查看决策汇总操作', '2017-11-02 12:43:23', '17', '1', '1');
INSERT INTO `log` VALUES ('814', 'market3:学生登录操作', '2017-11-02 12:44:03', '18', '1', '1');
INSERT INTO `log` VALUES ('815', 'market3:修改公司名字', '2017-11-02 12:44:06', '18', '1', '1');
INSERT INTO `log` VALUES ('816', 'market3:查看目标策略操作', '2017-11-02 12:44:12', '18', '1', '1');
INSERT INTO `log` VALUES ('817', 'market3:修改目标策略', '2017-11-02 12:44:28', '18', '1', '1');
INSERT INTO `log` VALUES ('818', 'market3:查看产品用途', '2017-11-02 12:44:30', '18', '1', '1');
INSERT INTO `log` VALUES ('819', 'market3:查看职位分配操作', '2017-11-02 12:44:32', '18', '1', '1');
INSERT INTO `log` VALUES ('820', 'market3:修改职位分配', '2017-11-02 12:44:42', '18', '1', '1');
INSERT INTO `log` VALUES ('821', 'market3:修改团队规则', '2017-11-02 12:44:48', '18', '1', '1');
INSERT INTO `log` VALUES ('822', 'market3:查看团队目标操作', '2017-11-02 12:44:49', '18', '1', '1');
INSERT INTO `log` VALUES ('823', 'market3:修改个人目标', '2017-11-02 12:44:53', '18', '1', '1');
INSERT INTO `log` VALUES ('824', 'market3:查看员工薪酬', '2017-11-02 12:44:54', '18', '1', '1');
INSERT INTO `log` VALUES ('825', 'market3:查看实体销售操作', '2017-11-02 12:44:57', '18', '1', '1');
INSERT INTO `log` VALUES ('826', 'market3:修改开设实体销售中心', '2017-11-02 12:45:01', '18', '1', '1');
INSERT INTO `log` VALUES ('827', 'market3:查看网络销售中心操作', '2017-11-02 12:45:02', '18', '1', '1');
INSERT INTO `log` VALUES ('828', 'market3:修改开设网络销售中心', '2017-11-02 12:45:06', '18', '1', '1');
INSERT INTO `log` VALUES ('829', 'market3:查看固定产能操作', '2017-11-02 12:45:09', '18', '1', '1');
INSERT INTO `log` VALUES ('830', 'market3:查看品牌管理操作', '2017-11-02 12:45:09', '18', '1', '1');
INSERT INTO `log` VALUES ('831', 'market3:修改固定产能', '2017-11-02 12:45:44', '18', '1', '1');
INSERT INTO `log` VALUES ('832', 'market3:查看内部持股操作', '2017-11-02 12:45:46', '18', '1', '1');
INSERT INTO `log` VALUES ('833', 'market3:查看定期存款操作', '2017-11-02 12:45:48', '18', '1', '1');
INSERT INTO `log` VALUES ('834', 'market3:修改定期存款', '2017-11-02 12:45:54', '18', '1', '1');
INSERT INTO `log` VALUES ('835', 'market3:查看现金流表操作', '2017-11-02 12:45:57', '18', '1', '1');
INSERT INTO `log` VALUES ('836', 'market3:查看利润表操作', '2017-11-02 12:45:59', '18', '1', '1');
INSERT INTO `log` VALUES ('837', 'market3:查看资产负债表操作', '2017-11-02 12:45:59', '18', '1', '1');
INSERT INTO `log` VALUES ('838', 'market3:查看决策汇总操作', '2017-11-02 12:46:01', '18', '1', '1');
INSERT INTO `log` VALUES ('839', 'market3:学生登录操作', '2017-11-02 12:46:23', '18', '1', '1');
INSERT INTO `log` VALUES ('840', 'market3:查看市场规模', '2017-11-02 12:47:35', '18', '1', '1');
INSERT INTO `log` VALUES ('841', 'market1:学生登录操作', '2017-11-02 12:49:00', '16', '1', '1');
INSERT INTO `log` VALUES ('842', 'market1:修改公司名字', '2017-11-02 12:49:11', '16', '1', '1');
INSERT INTO `log` VALUES ('843', 'market1:查看目标策略操作', '2017-11-02 12:49:12', '16', '1', '1');
INSERT INTO `log` VALUES ('844', 'market1:查看职位分配操作', '2017-11-02 12:49:16', '16', '1', '1');
INSERT INTO `log` VALUES ('845', 'market1:查看实体销售操作', '2017-11-02 12:49:23', '16', '1', '1');
INSERT INTO `log` VALUES ('846', 'market1:查看网络销售中心操作', '2017-11-02 12:49:24', '16', '1', '1');
INSERT INTO `log` VALUES ('847', 'market1:查看决策汇总操作', '2017-11-02 12:49:31', '16', '1', '1');
INSERT INTO `log` VALUES ('848', 'market1:查看客户需求', '2017-11-02 12:49:46', '16', '1', '1');
INSERT INTO `log` VALUES ('849', 'market1:查看产品用途', '2017-11-02 12:49:47', '16', '1', '1');
INSERT INTO `log` VALUES ('850', 'market1:查看品牌管理操作', '2017-11-02 12:49:47', '16', '1', '1');
INSERT INTO `log` VALUES ('851', 'market1:学生登录操作', '2017-11-02 13:06:19', '16', '1', '1');
INSERT INTO `log` VALUES ('852', 'market1:查看品牌管理操作', '2017-11-02 13:06:30', '16', '1', '1');
INSERT INTO `log` VALUES ('853', 'market1:学生登录操作', '2017-11-02 13:08:06', '16', '1', '1');
INSERT INTO `log` VALUES ('854', 'market1:查看品牌管理操作', '2017-11-02 13:08:10', '16', '1', '1');
INSERT INTO `log` VALUES ('855', 'market1:查看品牌管理操作', '2017-11-02 13:09:11', '16', '1', '1');
INSERT INTO `log` VALUES ('856', 'market1:查看用户愿意支付的价格', '2017-11-02 13:09:18', '16', '1', '1');
INSERT INTO `log` VALUES ('857', 'market1:显示销货成本', '2017-11-02 13:09:19', '16', '1', '1');
INSERT INTO `log` VALUES ('858', 'market1:显示产品定价', '2017-11-02 13:09:20', '16', '1', '1');
INSERT INTO `log` VALUES ('859', 'market1:操作产品定价', '2017-11-02 13:09:35', '16', '1', '1');
INSERT INTO `log` VALUES ('860', 'market1:查看客户需求', '2017-11-02 13:09:38', '16', '1', '1');
INSERT INTO `log` VALUES ('861', 'market1:查看产品用途', '2017-11-02 13:09:39', '16', '1', '1');
INSERT INTO `log` VALUES ('862', 'market1:查看媒体偏好', '2017-11-02 13:09:40', '16', '1', '1');
INSERT INTO `log` VALUES ('863', 'market1:操作媒体投放', '2017-11-02 13:10:15', '16', '1', '1');
INSERT INTO `log` VALUES ('864', 'market1:显示设计广告语', '2017-11-02 13:10:18', '16', '1', '1');
INSERT INTO `log` VALUES ('865', 'market1:更新产品广告语', '2017-11-02 13:10:21', '16', '1', '1');
INSERT INTO `log` VALUES ('866', 'market1:核查广告语', '2017-11-02 13:10:45', '16', '1', '1');
INSERT INTO `log` VALUES ('867', 'market1:显示市场调研报告', '2017-11-02 13:10:49', '16', '1', '1');
INSERT INTO `log` VALUES ('868', 'market1:操作市场调研报告', '2017-11-02 13:10:55', '16', '1', '1');
INSERT INTO `log` VALUES ('869', 'market1:查看员工薪酬', '2017-11-02 13:11:47', '16', '1', '1');
INSERT INTO `log` VALUES ('870', 'market1:显示业内销售人员薪酬', '2017-11-02 13:11:48', '16', '1', '1');
INSERT INTO `log` VALUES ('871', 'market1:显示业内工厂工人薪酬', '2017-11-02 13:11:52', '16', '1', '1');
INSERT INTO `log` VALUES ('872', 'market1:更新业内销售人员薪酬', '2017-11-02 13:12:19', '16', '1', '1');
INSERT INTO `log` VALUES ('873', 'market1:学生登录操作', '2017-11-02 13:13:43', '16', '1', '1');
INSERT INTO `log` VALUES ('874', 'market1:查看需求量预测操作', '2017-11-02 13:13:48', '16', '1', '1');
INSERT INTO `log` VALUES ('875', 'market1:修改需求量预测', '2017-11-02 13:14:15', '16', '1', '1');
INSERT INTO `log` VALUES ('876', 'market1:查看库存控制', '2017-11-02 13:14:22', '16', '1', '1');
INSERT INTO `log` VALUES ('877', 'market1:修改库存控制', '2017-11-02 13:14:33', '16', '1', '1');
INSERT INTO `log` VALUES ('878', 'market1:查看运行产能操作', '2017-11-02 13:14:35', '16', '1', '1');
INSERT INTO `log` VALUES ('879', 'market1:修改运行产能', '2017-11-02 13:14:46', '16', '1', '1');
INSERT INTO `log` VALUES ('880', 'market1:查看固定产能操作', '2017-11-02 13:14:53', '16', '1', '1');
INSERT INTO `log` VALUES ('881', 'market1:修改固定产能', '2017-11-02 13:15:04', '16', '1', '1');
INSERT INTO `log` VALUES ('882', 'market1:查看内部持股操作', '2017-11-02 13:15:06', '16', '1', '1');
INSERT INTO `log` VALUES ('883', 'market1:查看定期存款操作', '2017-11-02 13:15:08', '16', '1', '1');
INSERT INTO `log` VALUES ('884', 'market1:修改定期存款', '2017-11-02 13:15:18', '16', '1', '1');
INSERT INTO `log` VALUES ('885', 'market1:查看现金流表操作', '2017-11-02 13:15:23', '16', '1', '1');
INSERT INTO `log` VALUES ('886', 'market1:查看利润表操作', '2017-11-02 13:15:27', '16', '1', '1');
INSERT INTO `log` VALUES ('887', 'market1:查看资产负债表操作', '2017-11-02 13:15:28', '16', '1', '1');
INSERT INTO `log` VALUES ('888', 'market1:查看实体销售操作', '2017-11-02 13:17:06', '16', '1', '1');
INSERT INTO `log` VALUES ('889', 'market1:修改开设实体销售中心', '2017-11-02 13:17:17', '16', '1', '1');
INSERT INTO `log` VALUES ('890', 'market1:查看现金流表操作', '2017-11-02 13:17:20', '16', '1', '1');
INSERT INTO `log` VALUES ('891', 'market1:查看利润表操作', '2017-11-02 13:17:21', '16', '1', '1');
INSERT INTO `log` VALUES ('892', 'market1:查看资产负债表操作', '2017-11-02 13:17:23', '16', '1', '1');
INSERT INTO `log` VALUES ('893', 'market1:查看决策汇总操作', '2017-11-02 13:17:27', '16', '1', '1');
INSERT INTO `log` VALUES ('894', 'market1:学生登录操作', '2017-11-02 13:22:22', '16', '1', '1');
INSERT INTO `log` VALUES ('895', 'market1:学生登录操作', '2017-11-02 13:47:18', '16', '1', '1');
INSERT INTO `log` VALUES ('896', 'market1:查看运行产能操作', '2017-11-02 13:47:31', '16', '1', '1');
INSERT INTO `log` VALUES ('897', 'market1:查看现金流表操作', '2017-11-02 13:48:14', '16', '1', '1');
INSERT INTO `log` VALUES ('898', 'market1:查看品牌管理操作', '2017-11-02 13:51:08', '16', '1', '1');
INSERT INTO `log` VALUES ('899', 'market1:显示产品定价', '2017-11-02 13:51:47', '16', '1', '1');
INSERT INTO `log` VALUES ('900', 'market1:查看客户需求', '2017-11-02 13:52:03', '16', '1', '1');
INSERT INTO `log` VALUES ('901', 'market1:查看产品用途', '2017-11-02 13:52:04', '16', '1', '1');
INSERT INTO `log` VALUES ('902', 'market1:查看媒体偏好', '2017-11-02 13:52:05', '16', '1', '1');
INSERT INTO `log` VALUES ('903', 'market1:显示设计广告语', '2017-11-02 13:52:14', '16', '1', '1');
INSERT INTO `log` VALUES ('904', 'market1:核查广告语', '2017-11-02 13:52:19', '16', '1', '1');
INSERT INTO `log` VALUES ('905', 'market1:显示市场调研报告', '2017-11-02 13:52:21', '16', '1', '1');
INSERT INTO `log` VALUES ('906', 'market1:查看员工薪酬', '2017-11-02 13:52:39', '16', '1', '1');
INSERT INTO `log` VALUES ('907', 'market1:显示业内销售人员薪酬', '2017-11-02 13:52:44', '16', '1', '1');
INSERT INTO `log` VALUES ('908', 'market1:显示业内工厂工人薪酬', '2017-11-02 13:52:46', '16', '1', '1');
INSERT INTO `log` VALUES ('909', 'market1:更新业内工厂工人薪酬', '2017-11-02 13:53:19', '16', '1', '1');
INSERT INTO `log` VALUES ('910', 'market1:学生登录操作', '2017-11-02 13:58:54', '16', '1', '1');
INSERT INTO `log` VALUES ('911', 'market1:核查广告语', '2017-11-02 13:59:07', '16', '1', '1');
INSERT INTO `log` VALUES ('912', 'market1:查看现金流表操作', '2017-11-02 14:00:39', '16', '1', '1');
INSERT INTO `log` VALUES ('913', 'market1:查看客户需求', '2017-11-02 14:00:47', '16', '1', '1');
INSERT INTO `log` VALUES ('914', 'market1:查看产品用途', '2017-11-02 14:00:49', '16', '1', '1');
INSERT INTO `log` VALUES ('915', 'market1:查看品牌管理操作', '2017-11-02 14:00:50', '16', '1', '1');
INSERT INTO `log` VALUES ('916', 'market1:学生登录操作', '2017-11-02 14:01:25', '16', '1', '1');
INSERT INTO `log` VALUES ('917', 'market1:查看品牌管理操作', '2017-11-02 14:01:59', '16', '1', '1');
INSERT INTO `log` VALUES ('918', 'market2:学生登录操作', '2017-11-02 14:03:42', '17', '1', '1');
INSERT INTO `log` VALUES ('919', 'market2:修改公司名字', '2017-11-02 14:04:12', '17', '1', '1');
INSERT INTO `log` VALUES ('920', 'market2:查看客户需求', '2017-11-02 14:05:44', '17', '1', '1');
INSERT INTO `log` VALUES ('921', 'market2:查看产品用途', '2017-11-02 14:05:45', '17', '1', '1');
INSERT INTO `log` VALUES ('922', 'market2:查看品牌管理操作', '2017-11-02 14:05:46', '17', '1', '1');
INSERT INTO `log` VALUES ('923', 'market2:查看品牌管理操作', '2017-11-02 14:06:46', '17', '1', '1');
INSERT INTO `log` VALUES ('924', 'market2:查看用户愿意支付的价格', '2017-11-02 14:06:51', '17', '1', '1');
INSERT INTO `log` VALUES ('925', 'market2:显示销货成本', '2017-11-02 14:06:53', '17', '1', '1');
INSERT INTO `log` VALUES ('926', 'market2:显示产品定价', '2017-11-02 14:06:56', '17', '1', '1');
INSERT INTO `log` VALUES ('927', 'market2:操作产品定价', '2017-11-02 14:07:17', '17', '1', '1');
INSERT INTO `log` VALUES ('928', 'market2:查看客户需求', '2017-11-02 14:07:21', '17', '1', '1');
INSERT INTO `log` VALUES ('929', 'market2:查看产品用途', '2017-11-02 14:07:22', '17', '1', '1');
INSERT INTO `log` VALUES ('930', 'market2:查看媒体偏好', '2017-11-02 14:07:23', '17', '1', '1');
INSERT INTO `log` VALUES ('931', 'market2:操作媒体投放', '2017-11-02 14:08:42', '17', '1', '1');
INSERT INTO `log` VALUES ('932', 'market2:显示设计广告语', '2017-11-02 14:08:52', '17', '1', '1');
INSERT INTO `log` VALUES ('933', 'market2:核查广告语', '2017-11-02 14:08:58', '17', '1', '1');
INSERT INTO `log` VALUES ('934', 'market2:查看员工薪酬', '2017-11-02 14:09:01', '17', '1', '1');
INSERT INTO `log` VALUES ('935', 'market2:显示业内销售人员薪酬', '2017-11-02 14:09:05', '17', '1', '1');
INSERT INTO `log` VALUES ('936', 'market2:更新业内销售人员薪酬', '2017-11-02 14:09:43', '17', '1', '1');
INSERT INTO `log` VALUES ('937', 'market2:显示业内工厂工人薪酬', '2017-11-02 14:09:45', '17', '1', '1');
INSERT INTO `log` VALUES ('938', 'market2:更新业内工厂工人薪酬', '2017-11-02 14:10:07', '17', '1', '1');
INSERT INTO `log` VALUES ('939', 'market2:查看实体销售操作', '2017-11-02 14:10:47', '17', '1', '1');
INSERT INTO `log` VALUES ('940', 'market2:学生登录操作', '2017-11-02 14:11:33', '17', '1', '1');
INSERT INTO `log` VALUES ('941', 'market2:查看市场规模', '2017-11-02 14:12:24', '17', '1', '1');
INSERT INTO `log` VALUES ('942', 'market2:查看实体销售操作', '2017-11-02 14:12:25', '17', '1', '1');
INSERT INTO `log` VALUES ('943', 'market2:修改开设实体销售中心', '2017-11-02 14:12:58', '17', '1', '1');
INSERT INTO `log` VALUES ('944', 'market2:查看需求量预测操作', '2017-11-02 14:13:04', '17', '1', '1');
INSERT INTO `log` VALUES ('945', 'market2:修改需求量预测', '2017-11-02 14:13:29', '17', '1', '1');
INSERT INTO `log` VALUES ('946', 'market2:查看库存控制', '2017-11-02 14:13:34', '17', '1', '1');
INSERT INTO `log` VALUES ('947', 'market2:修改库存控制', '2017-11-02 14:13:51', '17', '1', '1');
INSERT INTO `log` VALUES ('948', 'market2:查看运行产能操作', '2017-11-02 14:13:53', '17', '1', '1');
INSERT INTO `log` VALUES ('949', 'market2:修改运行产能', '2017-11-02 14:14:19', '17', '1', '1');
INSERT INTO `log` VALUES ('950', 'market2:查看固定产能操作', '2017-11-02 14:14:29', '17', '1', '1');
INSERT INTO `log` VALUES ('951', 'market2:修改固定产能', '2017-11-02 14:14:44', '17', '1', '1');
INSERT INTO `log` VALUES ('952', 'market2:查看内部持股操作', '2017-11-02 14:16:06', '17', '1', '1');
INSERT INTO `log` VALUES ('953', 'market2:查看定期存款操作', '2017-11-02 14:16:10', '17', '1', '1');
INSERT INTO `log` VALUES ('954', 'market2:修改定期存款', '2017-11-02 14:16:26', '17', '1', '1');
INSERT INTO `log` VALUES ('955', 'market2:查看现金流表操作', '2017-11-02 14:16:30', '17', '1', '1');
INSERT INTO `log` VALUES ('956', 'market2:查看利润表操作', '2017-11-02 14:16:33', '17', '1', '1');
INSERT INTO `log` VALUES ('957', 'market2:查看资产负债表操作', '2017-11-02 14:16:40', '17', '1', '1');
INSERT INTO `log` VALUES ('958', 'market2:查看目标策略操作', '2017-11-02 14:16:49', '17', '1', '1');
INSERT INTO `log` VALUES ('959', 'market2:查看决策汇总操作', '2017-11-02 14:16:54', '17', '1', '1');
INSERT INTO `log` VALUES ('960', 'market2:显示市场调研报告', '2017-11-02 14:17:20', '17', '1', '1');
INSERT INTO `log` VALUES ('961', 'market2:操作市场调研报告', '2017-11-02 14:17:27', '17', '1', '1');
INSERT INTO `log` VALUES ('962', 'market2:学生登录操作', '2017-11-02 14:18:22', '17', '1', '1');
INSERT INTO `log` VALUES ('963', 'market2:查看市场规模', '2017-11-02 14:23:40', '17', '1', '1');
INSERT INTO `log` VALUES ('964', 'market2:查看决策汇总操作', '2017-11-02 14:28:24', '17', '1', '1');
INSERT INTO `log` VALUES ('965', 'market2:学生登录操作', '2017-11-02 14:33:59', '17', '1', '1');
INSERT INTO `log` VALUES ('966', 'market2:查看产品用途', '2017-11-02 14:37:03', '17', '1', '1');
INSERT INTO `log` VALUES ('967', 'market2:查看品牌管理操作', '2017-11-02 14:37:04', '17', '1', '1');
INSERT INTO `log` VALUES ('968', 'zhou15:学生登录操作', '2017-11-02 14:40:48', '12', '1', '1');
INSERT INTO `log` VALUES ('969', 'zhou15:查看实体销售操作', '2017-11-02 14:41:28', '12', '1', '1');
INSERT INTO `log` VALUES ('970', 'zhou15:查看实体销售操作', '2017-11-02 14:42:35', '12', '1', '1');
INSERT INTO `log` VALUES ('971', 'zhou15:查看品牌管理操作', '2017-11-02 14:44:05', '12', '1', '1');
INSERT INTO `log` VALUES ('972', 'zhou15:查看固定产能操作', '2017-11-02 14:44:06', '12', '1', '1');
INSERT INTO `log` VALUES ('973', 'zhou15:学生登录操作', '2017-11-02 14:44:13', '12', '1', '1');
INSERT INTO `log` VALUES ('974', 'zhou15:查看实体销售操作', '2017-11-02 14:44:58', '12', '1', '1');
INSERT INTO `log` VALUES ('975', 'zhou15:查看市场规模', '2017-11-02 14:46:20', '12', '1', '1');
INSERT INTO `log` VALUES ('976', 'zhou15:查看实体销售操作', '2017-11-02 14:46:21', '12', '1', '1');
INSERT INTO `log` VALUES ('977', 'zhou15:查看固定产能操作', '2017-11-02 14:47:52', '12', '1', '1');
INSERT INTO `log` VALUES ('978', 'zhou15:查看库存控制', '2017-11-02 14:51:39', '12', '1', '1');
INSERT INTO `log` VALUES ('979', 'zhou15:学生登录操作', '2017-11-02 17:30:47', '12', '1', '1');
INSERT INTO `log` VALUES ('980', 'zhou15:学生登录操作', '2017-11-04 09:19:29', '12', '1', '1');
INSERT INTO `log` VALUES ('981', 'zhou15:查看市场规模', '2017-11-04 09:27:58', '12', '1', '1');
INSERT INTO `log` VALUES ('982', 'zhou15:查看实体销售操作', '2017-11-04 09:27:59', '12', '1', '1');
INSERT INTO `log` VALUES ('983', 'zhou15:学生登录操作', '2017-11-04 11:02:22', '12', '1', '1');
INSERT INTO `log` VALUES ('984', 'zhou15:查看实体销售操作', '2017-11-04 11:02:28', '12', '1', '1');
INSERT INTO `log` VALUES ('985', 'zhou15:查看网络销售中心操作', '2017-11-04 11:02:29', '12', '1', '1');
INSERT INTO `log` VALUES ('986', 'zhou15:学生登录操作', '2017-11-04 12:42:53', '12', '1', '1');
INSERT INTO `log` VALUES ('987', 'zhou15:查看实体销售操作', '2017-11-04 12:43:38', '12', '1', '1');
INSERT INTO `log` VALUES ('988', 'zhou15:查看网络销售中心操作', '2017-11-04 12:43:38', '12', '1', '1');
INSERT INTO `log` VALUES ('989', 'zhou15:学生登录操作', '2017-11-04 12:45:04', '12', '1', '1');
INSERT INTO `log` VALUES ('990', 'zhou15:查看网络销售中心操作', '2017-11-04 12:45:08', '12', '1', '1');
INSERT INTO `log` VALUES ('991', 'zhou15:学生登录操作', '2017-11-04 12:46:31', '12', '1', '1');
INSERT INTO `log` VALUES ('992', 'zhou15:查看网络销售中心操作', '2017-11-04 12:46:35', '12', '1', '1');
INSERT INTO `log` VALUES ('993', 'market1:学生登录操作', '2017-11-04 13:03:27', '16', '1', '1');
INSERT INTO `log` VALUES ('994', 'market1:查看网络销售中心操作', '2017-11-04 13:03:32', '16', '1', '1');
INSERT INTO `log` VALUES ('995', 'market1:学生登录操作', '2017-11-04 13:25:23', '16', '1', '1');
INSERT INTO `log` VALUES ('996', 'market1:查看网络销售中心操作', '2017-11-04 13:25:30', '16', '1', '1');
INSERT INTO `log` VALUES ('997', 'market1:修改开设网络销售中心', '2017-11-04 13:25:54', '16', '1', '1');
INSERT INTO `log` VALUES ('998', 'market1:学生登录操作', '2017-11-04 13:27:08', '16', '1', '1');
INSERT INTO `log` VALUES ('999', 'market1:查看网络销售中心操作', '2017-11-04 13:27:34', '16', '1', '1');
INSERT INTO `log` VALUES ('1000', 'market1:修改开设网络销售中心', '2017-11-04 13:27:43', '16', '1', '1');
INSERT INTO `log` VALUES ('1001', 'market1:学生登录操作', '2017-11-04 13:38:26', '16', '1', '1');
INSERT INTO `log` VALUES ('1002', 'market1:查看实体销售操作', '2017-11-04 13:38:30', '16', '1', '1');
INSERT INTO `log` VALUES ('1003', 'market1:修改开设实体销售中心', '2017-11-04 13:39:52', '16', '1', '1');
INSERT INTO `log` VALUES ('1004', 'market1:学生登录操作', '2017-11-04 13:41:14', '16', '1', '1');
INSERT INTO `log` VALUES ('1005', 'market1:查看实体销售操作', '2017-11-04 13:41:30', '16', '1', '1');
INSERT INTO `log` VALUES ('1006', 'market1:修改开设实体销售中心', '2017-11-04 13:41:43', '16', '1', '1');
INSERT INTO `log` VALUES ('1007', 'market1:学生登录操作', '2017-11-04 13:49:40', '16', '1', '1');
INSERT INTO `log` VALUES ('1008', 'market1:查看实体销售操作', '2017-11-04 13:50:21', '16', '1', '1');
INSERT INTO `log` VALUES ('1009', 'market1:修改开设实体销售中心', '2017-11-04 13:50:30', '16', '1', '1');
INSERT INTO `log` VALUES ('1010', 'market1:查看网络销售中心操作', '2017-11-04 13:51:27', '16', '1', '1');
INSERT INTO `log` VALUES ('1011', 'market1:修改开设网络销售中心', '2017-11-04 13:51:47', '16', '1', '1');
INSERT INTO `log` VALUES ('1012', 'market1:查看实体销售操作', '2017-11-04 13:52:27', '16', '1', '1');
INSERT INTO `log` VALUES ('1013', 'market1:修改开设实体销售中心', '2017-11-04 13:52:35', '16', '1', '1');
INSERT INTO `log` VALUES ('1014', 'market1:学生登录操作', '2017-11-04 14:41:31', '16', '1', '1');
INSERT INTO `log` VALUES ('1015', 'market1:学生登录操作', '2017-11-04 14:42:49', '16', '1', '1');
INSERT INTO `log` VALUES ('1016', 'market1:查看网络销售中心操作', '2017-11-04 14:43:17', '16', '1', '1');
INSERT INTO `log` VALUES ('1017', 'market1:修改开设网络销售中心', '2017-11-04 14:43:22', '16', '1', '1');
INSERT INTO `log` VALUES ('1018', 'market1:学生登录操作', '2017-11-04 14:46:34', '16', '1', '1');
INSERT INTO `log` VALUES ('1019', 'market1:学生登录操作', '2017-11-04 14:47:42', '16', '1', '1');
INSERT INTO `log` VALUES ('1020', 'market1:查看市场规模', '2017-11-04 14:47:52', '16', '1', '1');
INSERT INTO `log` VALUES ('1021', 'market1:查看实体销售操作', '2017-11-04 14:47:53', '16', '1', '1');
INSERT INTO `log` VALUES ('1022', 'market1:查看网络销售中心操作', '2017-11-04 14:47:56', '16', '1', '1');
INSERT INTO `log` VALUES ('1023', 'market1:修改开设网络销售中心', '2017-11-04 14:48:05', '16', '1', '1');
INSERT INTO `log` VALUES ('1024', 'market1:查看网络销售中心操作', '2017-11-04 14:49:51', '16', '1', '1');
INSERT INTO `log` VALUES ('1025', 'market1:学生登录操作', '2017-11-04 14:53:55', '16', '1', '1');
INSERT INTO `log` VALUES ('1026', 'market1:修改团队规则', '2017-11-04 14:55:47', '16', '1', '1');
INSERT INTO `log` VALUES ('1027', 'market1:修改团队规则', '2017-11-04 14:58:12', '16', '1', '1');
INSERT INTO `log` VALUES ('1028', 'market1:查看目标策略操作', '2017-11-04 14:58:38', '16', '1', '1');
INSERT INTO `log` VALUES ('1029', 'market1:查看职位分配操作', '2017-11-04 14:58:48', '16', '1', '1');
INSERT INTO `log` VALUES ('1030', 'market1:查看决策汇总操作', '2017-11-04 15:02:16', '16', '1', '1');
INSERT INTO `log` VALUES ('1031', 'market1:查看目标策略操作', '2017-11-04 15:02:23', '16', '1', '1');
INSERT INTO `log` VALUES ('1032', 'market1:修改目标策略', '2017-11-04 15:02:40', '16', '1', '1');
INSERT INTO `log` VALUES ('1033', 'market1:查看网络销售中心操作', '2017-11-04 15:04:26', '16', '1', '1');
INSERT INTO `log` VALUES ('1034', 'market1:显示业内销售人员薪酬', '2017-11-04 15:04:33', '16', '1', '1');
INSERT INTO `log` VALUES ('1035', 'market1:显示业内工厂工人薪酬', '2017-11-04 15:04:37', '16', '1', '1');
INSERT INTO `log` VALUES ('1036', 'market1:查看员工薪酬', '2017-11-04 15:04:56', '16', '1', '1');
INSERT INTO `log` VALUES ('1037', 'market1:查看客户需求', '2017-11-04 15:05:03', '16', '1', '1');
INSERT INTO `log` VALUES ('1038', 'market1:查看产品用途', '2017-11-04 15:05:04', '16', '1', '1');
INSERT INTO `log` VALUES ('1039', 'market1:查看媒体偏好', '2017-11-04 15:05:05', '16', '1', '1');
INSERT INTO `log` VALUES ('1040', 'market1:显示设计广告语', '2017-11-04 15:05:11', '16', '1', '1');
INSERT INTO `log` VALUES ('1041', 'market1:核查广告语', '2017-11-04 15:05:20', '16', '1', '1');
INSERT INTO `log` VALUES ('1042', 'market1:显示市场调研报告', '2017-11-04 15:05:22', '16', '1', '1');
INSERT INTO `log` VALUES ('1043', 'market1:显示产品定价', '2017-11-04 15:05:27', '16', '1', '1');
INSERT INTO `log` VALUES ('1044', 'market1:显示销货成本', '2017-11-04 15:05:29', '16', '1', '1');
INSERT INTO `log` VALUES ('1045', 'market1:查看用户愿意支付的价格', '2017-11-04 15:05:30', '16', '1', '1');
INSERT INTO `log` VALUES ('1046', 'market1:查看品牌管理操作', '2017-11-04 15:05:33', '16', '1', '1');
INSERT INTO `log` VALUES ('1047', 'market1:查看现金流表操作', '2017-11-04 15:05:36', '16', '1', '1');
INSERT INTO `log` VALUES ('1048', 'market1:查看利润表操作', '2017-11-04 15:05:38', '16', '1', '1');
INSERT INTO `log` VALUES ('1049', 'market1:查看资产负债表操作', '2017-11-04 15:05:39', '16', '1', '1');
INSERT INTO `log` VALUES ('1050', 'market1:学生登录操作', '2017-11-04 18:38:19', '16', '2', '1');
INSERT INTO `log` VALUES ('1051', 'market1:查看内部持股操作', '2017-11-04 18:38:23', '16', '2', '1');
INSERT INTO `log` VALUES ('1052', 'market1:查看定期存款操作', '2017-11-04 18:38:25', '16', '2', '1');
INSERT INTO `log` VALUES ('1053', 'market1:查看市场规模', '2017-11-04 18:38:44', '16', '2', '1');
INSERT INTO `log` VALUES ('1054', 'market1:查看实体销售操作', '2017-11-04 18:38:45', '16', '2', '1');
INSERT INTO `log` VALUES ('1055', 'market1:查看网络销售中心操作', '2017-11-04 18:39:03', '16', '2', '1');
INSERT INTO `log` VALUES ('1056', 'market1:查看需求量预测操作', '2017-11-04 18:39:08', '16', '2', '1');
INSERT INTO `log` VALUES ('1057', 'market1:查看运行产能操作', '2017-11-04 18:39:10', '16', '2', '1');
INSERT INTO `log` VALUES ('1058', 'market1:查看库存控制', '2017-11-04 18:39:11', '16', '2', '1');
INSERT INTO `log` VALUES ('1059', 'market1:查看现金流表操作', '2017-11-04 18:39:17', '16', '2', '1');
INSERT INTO `log` VALUES ('1060', 'market1:查看利润表操作', '2017-11-04 18:39:21', '16', '2', '1');
INSERT INTO `log` VALUES ('1061', 'market1:查看资产负债表操作', '2017-11-04 18:39:22', '16', '2', '1');
INSERT INTO `log` VALUES ('1062', 'market1:查看业内工厂工人薪酬', '2017-11-04 18:39:46', '16', '2', '1');
INSERT INTO `log` VALUES ('1063', 'market1:显示业内销售人员薪酬', '2017-11-04 18:39:49', '16', '2', '1');
INSERT INTO `log` VALUES ('1064', 'market1:查看业内销售人员薪酬', '2017-11-04 18:39:50', '16', '2', '1');
INSERT INTO `log` VALUES ('1065', 'market1:查看竞争力', '2017-11-04 18:40:03', '16', '2', '1');
INSERT INTO `log` VALUES ('1066', 'zhou15:学生登录操作', '2017-11-04 21:41:01', '12', '2', '1');
INSERT INTO `log` VALUES ('1067', 'market1:学生登录操作', '2017-11-04 21:41:22', '16', '2', '1');
INSERT INTO `log` VALUES ('1068', 'market1:查看现金流表操作', '2017-11-04 21:41:33', '16', '2', '1');
INSERT INTO `log` VALUES ('1069', 'market1:查看利润表操作', '2017-11-04 21:41:35', '16', '2', '1');
INSERT INTO `log` VALUES ('1070', 'market1:查看资产负债表操作', '2017-11-04 21:41:36', '16', '2', '1');
INSERT INTO `log` VALUES ('1071', 'market1:学生登录操作', '2017-11-05 09:42:45', '16', '2', '1');
INSERT INTO `log` VALUES ('1072', 'market1:查看上季度结果', '2017-11-05 09:43:06', '16', '2', '1');
INSERT INTO `log` VALUES ('1073', 'market1:查看竞争力', '2017-11-05 09:43:18', '16', '2', '1');
INSERT INTO `log` VALUES ('1074', 'market1:查看运行产能操作', '2017-11-05 09:43:25', '16', '2', '1');
INSERT INTO `log` VALUES ('1075', 'market1:查看固定产能操作', '2017-11-05 09:43:28', '16', '2', '1');
INSERT INTO `log` VALUES ('1076', 'market1:查看库存控制', '2017-11-05 09:43:36', '16', '2', '1');
INSERT INTO `log` VALUES ('1077', 'market1:查看运行产能操作', '2017-11-05 09:45:57', '16', '2', '1');
INSERT INTO `log` VALUES ('1078', 'market1:学生登录操作', '2017-11-05 09:47:55', '16', '2', '1');
INSERT INTO `log` VALUES ('1079', 'market1:查看上季度结果', '2017-11-05 09:48:01', '16', '2', '1');
INSERT INTO `log` VALUES ('1080', 'market1:查看竞争力', '2017-11-05 09:48:02', '16', '2', '1');
INSERT INTO `log` VALUES ('1081', 'market1:查看库存控制', '2017-11-05 09:48:12', '16', '2', '1');
INSERT INTO `log` VALUES ('1082', 'market1:查看运行产能操作', '2017-11-05 09:48:12', '16', '2', '1');
INSERT INTO `log` VALUES ('1083', 'market1:学生登录操作', '2017-11-05 09:49:59', '16', '2', '1');
INSERT INTO `log` VALUES ('1084', 'market1:无用库存', '2017-11-05 09:50:04', '16', '2', '1');
INSERT INTO `log` VALUES ('1085', 'market1:查看上季度结果', '2017-11-05 09:50:19', '16', '2', '1');
INSERT INTO `log` VALUES ('1086', 'market1:查看竞争力', '2017-11-05 09:50:19', '16', '2', '1');
INSERT INTO `log` VALUES ('1087', 'market1:查看库存控制', '2017-11-05 09:50:22', '16', '2', '1');
INSERT INTO `log` VALUES ('1088', 'market1:查看运行产能操作', '2017-11-05 09:50:23', '16', '2', '1');
INSERT INTO `log` VALUES ('1089', 'market1:查看固定产能操作', '2017-11-05 09:50:24', '16', '2', '1');
INSERT INTO `log` VALUES ('1090', 'market1:无用库存', '2017-11-05 09:51:23', '16', '2', '1');
INSERT INTO `log` VALUES ('1091', 'market1:查看竞争力', '2017-11-05 09:55:38', '16', '2', '1');
INSERT INTO `log` VALUES ('1092', 'market1:查看上季度结果', '2017-11-05 09:55:39', '16', '2', '1');
INSERT INTO `log` VALUES ('1093', 'market1:查看竞争力', '2017-11-05 09:58:34', '16', '2', '1');
INSERT INTO `log` VALUES ('1094', 'market1:查看上季度结果', '2017-11-05 09:58:35', '16', '2', '1');
INSERT INTO `log` VALUES ('1095', 'market1:学生登录操作', '2017-11-05 10:01:53', '16', '2', '1');
INSERT INTO `log` VALUES ('1096', 'market1:查看上季度结果', '2017-11-05 10:01:59', '16', '2', '1');
INSERT INTO `log` VALUES ('1097', 'market1:查看竞争力', '2017-11-05 10:02:07', '16', '2', '1');
INSERT INTO `log` VALUES ('1098', 'market1:学生登录操作', '2017-11-05 10:03:19', '16', '2', '1');
INSERT INTO `log` VALUES ('1099', 'market1:查看上季度结果', '2017-11-05 10:03:25', '16', '2', '1');
INSERT INTO `log` VALUES ('1100', 'market1:查看竞争力', '2017-11-05 10:03:25', '16', '2', '1');
INSERT INTO `log` VALUES ('1101', 'market1:无用库存', '2017-11-05 10:03:27', '16', '2', '1');
INSERT INTO `log` VALUES ('1102', 'market1:查看库存控制', '2017-11-05 10:04:19', '16', '2', '1');
INSERT INTO `log` VALUES ('1103', 'market1:学生登录操作', '2017-11-05 10:05:01', '16', '2', '1');
INSERT INTO `log` VALUES ('1104', 'market1:查看运行产能操作', '2017-11-05 10:05:08', '16', '2', '1');
INSERT INTO `log` VALUES ('1105', 'market1:查看固定产能操作', '2017-11-05 10:05:10', '16', '2', '1');
INSERT INTO `log` VALUES ('1106', 'market1:学生登录操作', '2017-11-05 10:25:39', '16', '2', '1');
INSERT INTO `log` VALUES ('1107', 'market3:学生登录操作', '2017-11-05 12:30:15', '18', '3', '1');
INSERT INTO `log` VALUES ('1108', 'market3:查看现金流表操作', '2017-11-05 12:30:23', '18', '3', '1');
INSERT INTO `log` VALUES ('1109', 'market3:查看利润表操作', '2017-11-05 12:30:24', '18', '3', '1');
INSERT INTO `log` VALUES ('1110', 'market3:查看资产负债表操作', '2017-11-05 12:30:25', '18', '3', '1');
INSERT INTO `log` VALUES ('1111', 'market3:查看内部持股操作', '2017-11-05 12:30:26', '18', '3', '1');
INSERT INTO `log` VALUES ('1112', 'market3:查看定期存款操作', '2017-11-05 12:30:27', '18', '3', '1');
INSERT INTO `log` VALUES ('1113', 'market3:查看目标策略操作', '2017-11-05 12:30:31', '18', '3', '1');
INSERT INTO `log` VALUES ('1114', 'market3:查看决策汇总操作', '2017-11-05 12:30:36', '18', '3', '1');
INSERT INTO `log` VALUES ('1115', 'market3:查看职位分配操作', '2017-11-05 12:30:59', '18', '3', '1');
INSERT INTO `log` VALUES ('1116', 'market3:学生登录操作', '2017-11-05 12:35:49', '18', '3', '1');
INSERT INTO `log` VALUES ('1117', 'market3:查看决策汇总操作', '2017-11-05 12:36:29', '18', '3', '1');
INSERT INTO `log` VALUES ('1118', 'market3:查看目标策略操作', '2017-11-05 12:36:38', '18', '3', '1');
INSERT INTO `log` VALUES ('1119', 'market3:查看职位分配操作', '2017-11-05 12:38:12', '18', '3', '1');
INSERT INTO `log` VALUES ('1120', 'market3:查看目标策略操作', '2017-11-05 12:38:14', '18', '3', '1');
INSERT INTO `log` VALUES ('1121', 'market3:查看决策汇总操作', '2017-11-05 12:38:27', '18', '3', '1');
INSERT INTO `log` VALUES ('1122', 'market3:查看现金流表操作', '2017-11-05 12:39:07', '18', '3', '1');
INSERT INTO `log` VALUES ('1123', 'market3:查看利润表操作', '2017-11-05 12:39:08', '18', '3', '1');
INSERT INTO `log` VALUES ('1124', 'market3:查看资产负债表操作', '2017-11-05 12:39:21', '18', '3', '1');
INSERT INTO `log` VALUES ('1125', 'market3:查看实体销售操作', '2017-11-05 12:40:12', '18', '3', '1');
INSERT INTO `log` VALUES ('1126', 'market3:修改开设实体销售中心', '2017-11-05 12:40:17', '18', '3', '1');
INSERT INTO `log` VALUES ('1127', 'market3:查看网络销售中心操作', '2017-11-05 12:40:18', '18', '3', '1');
INSERT INTO `log` VALUES ('1128', 'market3:修改开设网络销售中心', '2017-11-05 12:40:39', '18', '3', '1');
INSERT INTO `log` VALUES ('1129', 'market3:查看利润表操作', '2017-11-05 12:40:54', '18', '3', '1');
INSERT INTO `log` VALUES ('1130', 'market3:查看现金流表操作', '2017-11-05 12:40:54', '18', '3', '1');
INSERT INTO `log` VALUES ('1131', 'market3:查看资产负债表操作', '2017-11-05 12:40:56', '18', '3', '1');
INSERT INTO `log` VALUES ('1132', 'market3:查看决策汇总操作', '2017-11-05 12:40:57', '18', '3', '1');
INSERT INTO `log` VALUES ('1133', 'market3:查看市场规模', '2017-11-05 12:41:12', '18', '3', '1');
INSERT INTO `log` VALUES ('1134', 'market3:查看实体销售操作', '2017-11-05 12:41:13', '18', '3', '1');
INSERT INTO `log` VALUES ('1135', 'market3:学生登录操作', '2017-11-05 12:41:41', '18', '3', '1');
INSERT INTO `log` VALUES ('1136', 'market3:查看市场规模', '2017-11-05 12:42:29', '18', '3', '1');
INSERT INTO `log` VALUES ('1137', 'market3:查看实体销售操作', '2017-11-05 12:42:30', '18', '3', '1');
INSERT INTO `log` VALUES ('1138', 'market3:学生登录操作', '2017-11-05 13:03:02', '18', '3', '1');
INSERT INTO `log` VALUES ('1139', 'market3:学生登录操作', '2017-11-05 13:12:14', '18', '3', '1');
INSERT INTO `log` VALUES ('1140', 'market3:查看客户需求', '2017-11-05 13:13:12', '18', '3', '1');
INSERT INTO `log` VALUES ('1141', 'market3:查看产品用途', '2017-11-05 13:13:14', '18', '3', '1');
INSERT INTO `log` VALUES ('1142', 'market3:查看品牌管理操作', '2017-11-05 13:13:15', '18', '3', '1');
INSERT INTO `log` VALUES ('1143', 'market3:查看用户愿意支付的价格', '2017-11-05 13:13:24', '18', '3', '1');
INSERT INTO `log` VALUES ('1144', 'market3:显示销货成本', '2017-11-05 13:13:25', '18', '3', '1');
INSERT INTO `log` VALUES ('1145', 'market3:显示产品定价', '2017-11-05 13:13:27', '18', '3', '1');
INSERT INTO `log` VALUES ('1146', 'market3:查看媒体偏好', '2017-11-05 13:13:31', '18', '3', '1');
INSERT INTO `log` VALUES ('1147', 'market3:显示设计广告语', '2017-11-05 13:13:35', '18', '3', '1');
INSERT INTO `log` VALUES ('1148', 'market3:核查广告语', '2017-11-05 13:13:36', '18', '3', '1');
INSERT INTO `log` VALUES ('1149', 'market3:显示市场调研报告', '2017-11-05 13:13:38', '18', '3', '1');
INSERT INTO `log` VALUES ('1150', 'market3:品牌盈利能力', '2017-11-05 13:13:45', '18', '3', '1');
INSERT INTO `log` VALUES ('1151', 'market3:品牌评价', '2017-11-05 13:13:49', '18', '3', '1');
INSERT INTO `log` VALUES ('1152', 'market3:竞争对手的品牌', '2017-11-05 13:13:50', '18', '3', '1');
INSERT INTO `log` VALUES ('1153', 'market3:竞争对手的价格', '2017-11-05 13:13:59', '18', '3', '1');
INSERT INTO `log` VALUES ('1154', 'market3:生产成本', '2017-11-05 13:13:59', '18', '3', '1');
INSERT INTO `log` VALUES ('1155', 'market3:价格及销售优先级别', '2017-11-05 13:14:00', '18', '3', '1');
INSERT INTO `log` VALUES ('1156', 'market3:竞争对手的广告', '2017-11-05 13:14:03', '18', '3', '1');
INSERT INTO `log` VALUES ('1157', 'market3:设计广告', '2017-11-05 13:14:03', '18', '3', '1');
INSERT INTO `log` VALUES ('1158', 'market3:主流媒体投放', '2017-11-05 13:14:05', '18', '3', '1');
INSERT INTO `log` VALUES ('1159', 'market3:购买市场调研报告', '2017-11-05 13:14:06', '18', '3', '1');
INSERT INTO `log` VALUES ('1160', 'market3:更新产品广告语', '2017-11-05 13:14:14', '18', '3', '1');
INSERT INTO `log` VALUES ('1161', 'market3:查看产品用途', '2017-11-05 13:14:22', '18', '3', '1');
INSERT INTO `log` VALUES ('1162', 'market3:操作媒体投放', '2017-11-05 13:14:37', '18', '3', '1');
INSERT INTO `log` VALUES ('1163', 'market3:核查广告语', '2017-11-05 13:14:38', '18', '3', '1');
INSERT INTO `log` VALUES ('1164', 'market3:显示市场调研报告', '2017-11-05 13:14:40', '18', '3', '1');
INSERT INTO `log` VALUES ('1165', 'market3:操作市场调研报告', '2017-11-05 13:14:45', '18', '3', '1');
INSERT INTO `log` VALUES ('1166', 'market3:查看用户愿意支付的价格', '2017-11-05 13:14:49', '18', '3', '1');
INSERT INTO `log` VALUES ('1167', 'market3:显示销货成本', '2017-11-05 13:14:49', '18', '3', '1');
INSERT INTO `log` VALUES ('1168', 'market3:显示产品定价', '2017-11-05 13:14:50', '18', '3', '1');
INSERT INTO `log` VALUES ('1169', 'market2:学生登录操作', '2017-11-05 13:14:56', '17', '3', '1');
INSERT INTO `log` VALUES ('1170', 'market2:查看客户需求', '2017-11-05 13:15:03', '17', '3', '1');
INSERT INTO `log` VALUES ('1171', 'market2:查看产品用途', '2017-11-05 13:15:04', '17', '3', '1');
INSERT INTO `log` VALUES ('1172', 'market2:查看品牌管理操作', '2017-11-05 13:15:04', '17', '3', '1');
INSERT INTO `log` VALUES ('1173', 'market2:查看用户愿意支付的价格', '2017-11-05 13:15:07', '17', '3', '1');
INSERT INTO `log` VALUES ('1174', 'market2:显示销货成本', '2017-11-05 13:15:07', '17', '3', '1');
INSERT INTO `log` VALUES ('1175', 'market2:显示产品定价', '2017-11-05 13:15:08', '17', '3', '1');
INSERT INTO `log` VALUES ('1176', 'market2:查看媒体偏好', '2017-11-05 13:15:11', '17', '3', '1');
INSERT INTO `log` VALUES ('1177', 'market2:显示设计广告语', '2017-11-05 13:15:13', '17', '3', '1');
INSERT INTO `log` VALUES ('1178', 'market2:核查广告语', '2017-11-05 13:15:15', '17', '3', '1');
INSERT INTO `log` VALUES ('1179', 'market2:更新产品广告语', '2017-11-05 13:15:18', '17', '3', '1');
INSERT INTO `log` VALUES ('1180', 'market2:显示市场调研报告', '2017-11-05 13:15:28', '17', '3', '1');
INSERT INTO `log` VALUES ('1181', 'market2:品牌盈利能力', '2017-11-05 13:15:45', '17', '3', '1');
INSERT INTO `log` VALUES ('1182', 'market2:学生登录操作', '2017-11-05 13:26:01', '17', '3', '1');
INSERT INTO `log` VALUES ('1183', 'market1:学生登录操作', '2017-11-05 13:30:35', '16', '3', '1');
INSERT INTO `log` VALUES ('1184', 'market1:品牌盈利能力', '2017-11-05 13:30:41', '16', '3', '1');
INSERT INTO `log` VALUES ('1185', 'market1:品牌评价', '2017-11-05 13:30:43', '16', '3', '1');
INSERT INTO `log` VALUES ('1186', 'market1:竞争对手的品牌', '2017-11-05 13:30:43', '16', '3', '1');
INSERT INTO `log` VALUES ('1187', 'market1:查看品牌管理操作', '2017-11-05 13:30:44', '16', '3', '1');
INSERT INTO `log` VALUES ('1188', 'market1:竞争对手的价格', '2017-11-05 13:30:46', '16', '3', '1');
INSERT INTO `log` VALUES ('1189', 'market1:生产成本', '2017-11-05 13:30:46', '16', '3', '1');
INSERT INTO `log` VALUES ('1190', 'market1:价格及销售优先级别', '2017-11-05 13:30:47', '16', '3', '1');
INSERT INTO `log` VALUES ('1191', 'market1:竞争对手的广告', '2017-11-05 13:30:52', '16', '3', '1');
INSERT INTO `log` VALUES ('1192', 'market1:设计广告', '2017-11-05 13:30:53', '16', '3', '1');
INSERT INTO `log` VALUES ('1193', 'market1:查看媒体偏好', '2017-11-05 13:30:53', '16', '3', '1');
INSERT INTO `log` VALUES ('1194', 'market1:主流媒体投放', '2017-11-05 13:30:54', '16', '3', '1');
INSERT INTO `log` VALUES ('1195', 'market1:核查广告语', '2017-11-05 13:30:55', '16', '3', '1');
INSERT INTO `log` VALUES ('1196', 'market1:购买市场调研报告', '2017-11-05 13:31:00', '16', '3', '1');
INSERT INTO `log` VALUES ('1197', 'market1:学生登录操作', '2017-11-05 13:34:16', '16', '3', '1');
INSERT INTO `log` VALUES ('1198', 'market1:品牌盈利能力', '2017-11-05 13:34:20', '16', '3', '1');
INSERT INTO `log` VALUES ('1199', 'market1:学生登录操作', '2017-11-05 13:35:18', '16', '3', '1');
INSERT INTO `log` VALUES ('1200', 'market1:品牌盈利能力', '2017-11-05 13:35:26', '16', '3', '1');
INSERT INTO `log` VALUES ('1201', 'market1:学生登录操作', '2017-11-05 13:36:29', '16', '3', '1');
INSERT INTO `log` VALUES ('1202', 'market1:品牌盈利能力', '2017-11-05 13:36:38', '16', '3', '1');
INSERT INTO `log` VALUES ('1203', 'market1:学生登录操作', '2017-11-05 13:38:48', '16', '3', '1');
INSERT INTO `log` VALUES ('1204', 'market1:品牌盈利能力', '2017-11-05 13:38:53', '16', '3', '1');
INSERT INTO `log` VALUES ('1205', 'market1:品牌评价', '2017-11-05 13:39:07', '16', '3', '1');
INSERT INTO `log` VALUES ('1206', 'market1:品牌评价', '2017-11-05 13:40:31', '16', '3', '1');
INSERT INTO `log` VALUES ('1207', 'market1:学生登录操作', '2017-11-05 13:43:32', '16', '3', '1');
INSERT INTO `log` VALUES ('1208', 'market1:品牌评价', '2017-11-05 13:43:41', '16', '3', '1');
INSERT INTO `log` VALUES ('1209', 'market1:竞争对手的品牌', '2017-11-05 13:43:49', '16', '3', '1');
INSERT INTO `log` VALUES ('1210', 'market1:学生登录操作', '2017-11-05 13:45:40', '16', '3', '1');
INSERT INTO `log` VALUES ('1211', 'market1:品牌盈利能力', '2017-11-05 13:45:52', '16', '3', '1');
INSERT INTO `log` VALUES ('1212', 'market1:品牌评价', '2017-11-05 13:45:53', '16', '3', '1');
INSERT INTO `log` VALUES ('1213', 'market1:竞争对手的品牌', '2017-11-05 13:45:54', '16', '3', '1');
INSERT INTO `log` VALUES ('1214', 'market1:显示组件信息', '2017-11-05 13:46:01', '16', '3', '1');
INSERT INTO `log` VALUES ('1215', 'market1:学生登录操作', '2017-11-05 13:47:59', '16', '3', '1');
INSERT INTO `log` VALUES ('1216', 'market1:竞争对手的品牌', '2017-11-05 13:48:07', '16', '3', '1');
INSERT INTO `log` VALUES ('1217', 'market1:显示组件信息', '2017-11-05 13:48:09', '16', '3', '1');
INSERT INTO `log` VALUES ('1218', 'market1:学生登录操作', '2017-11-05 13:49:25', '16', '3', '1');
INSERT INTO `log` VALUES ('1219', 'market1:竞争对手的品牌', '2017-11-05 13:49:31', '16', '3', '1');
INSERT INTO `log` VALUES ('1220', 'market1:显示组件信息', '2017-11-05 13:50:15', '16', '3', '1');
INSERT INTO `log` VALUES ('1221', 'market1:查看品牌管理操作', '2017-11-05 13:50:37', '16', '3', '1');
INSERT INTO `log` VALUES ('1222', 'market1:学生登录操作', '2017-11-05 13:51:45', '16', '3', '1');
INSERT INTO `log` VALUES ('1223', 'market1:查看品牌管理操作', '2017-11-05 13:51:51', '16', '3', '1');
INSERT INTO `log` VALUES ('1224', 'market1:竞争对手的价格', '2017-11-05 13:52:33', '16', '3', '1');
INSERT INTO `log` VALUES ('1225', 'market1:学生登录操作', '2017-11-05 13:53:30', '16', '3', '1');
INSERT INTO `log` VALUES ('1226', 'market1:竞争对手的价格', '2017-11-05 13:53:39', '16', '3', '1');
INSERT INTO `log` VALUES ('1227', 'market1:学生登录操作', '2017-11-05 14:11:11', '16', '3', '1');
INSERT INTO `log` VALUES ('1228', 'market1:竞争对手的价格', '2017-11-05 14:11:18', '16', '3', '1');
INSERT INTO `log` VALUES ('1229', 'market1:生产成本', '2017-11-05 14:11:20', '16', '3', '1');
INSERT INTO `log` VALUES ('1230', 'market1:价格及销售优先级别', '2017-11-05 14:11:21', '16', '3', '1');
INSERT INTO `log` VALUES ('1231', 'market1:竞争对手的广告', '2017-11-05 14:11:24', '16', '3', '1');
INSERT INTO `log` VALUES ('1232', 'market1:设计广告', '2017-11-05 14:11:25', '16', '3', '1');
INSERT INTO `log` VALUES ('1233', 'market1:查看媒体偏好', '2017-11-05 14:11:26', '16', '3', '1');
INSERT INTO `log` VALUES ('1234', 'market1:主流媒体投放', '2017-11-05 14:11:27', '16', '3', '1');
INSERT INTO `log` VALUES ('1235', 'market1:核查广告语', '2017-11-05 14:11:28', '16', '3', '1');
INSERT INTO `log` VALUES ('1236', 'market1:购买市场调研报告', '2017-11-05 14:11:31', '16', '3', '1');
INSERT INTO `log` VALUES ('1237', 'market1:学生登录操作', '2017-11-05 14:47:08', '16', '3', '1');
INSERT INTO `log` VALUES ('1238', 'market1:竞争对手的价格', '2017-11-05 14:47:13', '16', '3', '1');
INSERT INTO `log` VALUES ('1239', 'market1:学生登录操作', '2017-11-05 14:48:21', '16', '3', '1');
INSERT INTO `log` VALUES ('1240', 'market1:学生登录操作', '2017-11-05 14:51:06', '16', '3', '1');
INSERT INTO `log` VALUES ('1241', 'market1:竞争对手的价格', '2017-11-05 14:51:13', '16', '3', '1');
INSERT INTO `log` VALUES ('1242', 'market1:学生登录操作', '2017-11-05 14:52:08', '16', '3', '1');
INSERT INTO `log` VALUES ('1243', 'market1:竞争对手的价格', '2017-11-05 14:52:13', '16', '3', '1');
INSERT INTO `log` VALUES ('1244', 'market1:生产成本', '2017-11-05 14:52:16', '16', '3', '1');
INSERT INTO `log` VALUES ('1245', 'market1:学生登录操作', '2017-11-05 14:54:09', '16', '3', '1');
INSERT INTO `log` VALUES ('1246', 'market1:竞争对手的价格', '2017-11-05 14:54:15', '16', '3', '1');
INSERT INTO `log` VALUES ('1247', 'market1:生产成本', '2017-11-05 14:54:16', '16', '3', '1');
INSERT INTO `log` VALUES ('1248', 'market1:价格及销售优先级别', '2017-11-05 14:54:16', '16', '3', '1');
INSERT INTO `log` VALUES ('1249', 'market1:学生登录操作', '2017-11-05 14:56:49', '16', '3', '1');
INSERT INTO `log` VALUES ('1250', 'market1:生产成本', '2017-11-05 14:56:54', '16', '3', '1');
INSERT INTO `log` VALUES ('1251', 'market1:价格及销售优先级别', '2017-11-05 14:56:55', '16', '3', '1');
INSERT INTO `log` VALUES ('1252', 'market1:竞争对手的价格', '2017-11-05 14:57:00', '16', '3', '1');
INSERT INTO `log` VALUES ('1253', 'market1:生产成本', '2017-11-05 14:57:55', '16', '3', '1');
INSERT INTO `log` VALUES ('1254', 'market1:查看品牌管理操作', '2017-11-05 14:58:03', '16', '3', '1');
INSERT INTO `log` VALUES ('1255', 'market1:显示产品定价', '2017-11-05 14:58:30', '16', '3', '1');
INSERT INTO `log` VALUES ('1256', 'market1:操作产品定价', '2017-11-05 14:58:42', '16', '3', '1');
INSERT INTO `log` VALUES ('1257', 'market1:价格及销售优先级别', '2017-11-05 14:58:48', '16', '3', '1');
INSERT INTO `log` VALUES ('1258', 'market1:竞争对手的广告', '2017-11-05 14:58:52', '16', '3', '1');
INSERT INTO `log` VALUES ('1259', 'market1:学生登录操作', '2017-11-05 14:59:35', '16', '3', '1');
INSERT INTO `log` VALUES ('1260', 'market1:学生登录操作', '2017-11-05 15:02:29', '16', '3', '1');
INSERT INTO `log` VALUES ('1261', 'market1:竞争对手的广告', '2017-11-05 15:02:34', '16', '3', '1');
INSERT INTO `log` VALUES ('1262', 'market1:设计广告', '2017-11-05 15:02:35', '16', '3', '1');
INSERT INTO `log` VALUES ('1263', 'market1:查看媒体偏好', '2017-11-05 15:02:36', '16', '3', '1');
INSERT INTO `log` VALUES ('1264', 'market1:主流媒体投放', '2017-11-05 15:02:36', '16', '3', '1');
INSERT INTO `log` VALUES ('1265', 'market1:核查广告语', '2017-11-05 15:02:46', '16', '3', '1');
INSERT INTO `log` VALUES ('1266', 'market1:购买市场调研报告', '2017-11-05 15:02:48', '16', '3', '1');
INSERT INTO `log` VALUES ('1267', 'market1:学生登录操作', '2017-11-05 15:10:04', '16', '3', '1');
INSERT INTO `log` VALUES ('1268', 'market1:竞争对手的广告', '2017-11-05 15:10:10', '16', '3', '1');
INSERT INTO `log` VALUES ('1269', 'market1:设计广告', '2017-11-05 15:10:11', '16', '3', '1');
INSERT INTO `log` VALUES ('1270', 'market1:查看媒体偏好', '2017-11-05 15:10:12', '16', '3', '1');
INSERT INTO `log` VALUES ('1271', 'market1:主流媒体投放', '2017-11-05 15:10:13', '16', '3', '1');
INSERT INTO `log` VALUES ('1272', 'market1:核查广告语', '2017-11-05 15:10:15', '16', '3', '1');
INSERT INTO `log` VALUES ('1273', 'market1:学生登录操作', '2017-11-05 15:12:08', '16', '3', '1');
INSERT INTO `log` VALUES ('1274', 'market1:竞争对手的广告', '2017-11-05 15:12:14', '16', '3', '1');
INSERT INTO `log` VALUES ('1275', 'market1:设计广告', '2017-11-05 15:12:15', '16', '3', '1');
INSERT INTO `log` VALUES ('1276', 'market1:查看媒体偏好', '2017-11-05 15:12:15', '16', '3', '1');
INSERT INTO `log` VALUES ('1277', 'market1:主流媒体投放', '2017-11-05 15:12:16', '16', '3', '1');
INSERT INTO `log` VALUES ('1278', 'market1:核查广告语', '2017-11-05 15:12:18', '16', '3', '1');
INSERT INTO `log` VALUES ('1279', 'market1:购买市场调研报告', '2017-11-05 15:12:19', '16', '3', '1');
INSERT INTO `log` VALUES ('1280', 'market1:显示设计广告语', '2017-11-05 15:12:22', '16', '3', '1');
INSERT INTO `log` VALUES ('1281', 'market1:查看广告详情', '2017-11-05 15:12:32', '16', '3', '1');
INSERT INTO `log` VALUES ('1282', 'market1:学生登录操作', '2017-11-05 15:13:43', '16', '3', '1');
INSERT INTO `log` VALUES ('1283', 'market1:学生登录操作', '2017-11-05 15:14:47', '16', '3', '1');
INSERT INTO `log` VALUES ('1284', 'market1:学生登录操作', '2017-11-05 15:22:37', '16', '3', '1');
INSERT INTO `log` VALUES ('1285', 'market1:品牌评价', '2017-11-05 15:22:42', '16', '3', '1');
INSERT INTO `log` VALUES ('1286', 'market1:品牌盈利能力', '2017-11-05 15:23:10', '16', '3', '1');
INSERT INTO `log` VALUES ('1287', 'market1:学生登录操作', '2017-11-05 15:27:09', '16', '3', '1');
INSERT INTO `log` VALUES ('1288', 'market1:品牌盈利能力', '2017-11-05 15:27:12', '16', '3', '1');
INSERT INTO `log` VALUES ('1289', 'market1:品牌评价', '2017-11-05 15:27:13', '16', '3', '1');
INSERT INTO `log` VALUES ('1290', 'market1:竞争对手的品牌', '2017-11-05 15:27:14', '16', '3', '1');
INSERT INTO `log` VALUES ('1291', 'market1:查看品牌管理操作', '2017-11-05 15:27:16', '16', '3', '1');
INSERT INTO `log` VALUES ('1292', 'market1:竞争对手的价格', '2017-11-05 15:27:17', '16', '3', '1');
INSERT INTO `log` VALUES ('1293', 'market1:生产成本', '2017-11-05 15:27:18', '16', '3', '1');
INSERT INTO `log` VALUES ('1294', 'market1:价格及销售优先级别', '2017-11-05 15:27:19', '16', '3', '1');
INSERT INTO `log` VALUES ('1295', 'market1:竞争对手的广告', '2017-11-05 15:27:21', '16', '3', '1');
INSERT INTO `log` VALUES ('1296', 'market1:设计广告', '2017-11-05 15:27:21', '16', '3', '1');
INSERT INTO `log` VALUES ('1297', 'market1:查看媒体偏好', '2017-11-05 15:27:22', '16', '3', '1');
INSERT INTO `log` VALUES ('1298', 'market1:主流媒体投放', '2017-11-05 15:27:23', '16', '3', '1');
INSERT INTO `log` VALUES ('1299', 'market1:核查广告语', '2017-11-05 15:27:23', '16', '3', '1');
INSERT INTO `log` VALUES ('1300', 'market1:显示设计广告语', '2017-11-05 15:27:44', '16', '3', '1');
INSERT INTO `log` VALUES ('1301', 'market1:查看广告详情', '2017-11-05 15:27:55', '16', '3', '1');
INSERT INTO `log` VALUES ('1302', 'market1:更新产品广告语', '2017-11-05 15:28:06', '16', '3', '1');
INSERT INTO `log` VALUES ('1303', 'market1:学生登录操作', '2017-11-05 15:28:15', '16', '3', '1');
INSERT INTO `log` VALUES ('1304', 'market1:查看媒体偏好', '2017-11-05 15:28:23', '16', '3', '1');
INSERT INTO `log` VALUES ('1305', 'market1:设计广告', '2017-11-05 15:28:24', '16', '3', '1');
INSERT INTO `log` VALUES ('1306', 'market1:主流媒体投放', '2017-11-05 15:28:26', '16', '3', '1');
INSERT INTO `log` VALUES ('1307', 'market1:核查广告语', '2017-11-05 15:28:26', '16', '3', '1');
INSERT INTO `log` VALUES ('1308', 'market1:设计广告', '2017-11-05 15:29:34', '16', '3', '1');
INSERT INTO `log` VALUES ('1309', 'market1:核查广告语', '2017-11-05 15:29:42', '16', '3', '1');
INSERT INTO `log` VALUES ('1310', 'market1:显示设计广告语', '2017-11-05 15:29:51', '16', '3', '1');
INSERT INTO `log` VALUES ('1311', 'market1:学生登录操作', '2017-11-05 15:38:13', '16', '3', '1');
INSERT INTO `log` VALUES ('1312', 'market1:查看品牌管理操作', '2017-11-05 15:38:25', '16', '3', '1');
INSERT INTO `log` VALUES ('1313', 'market1:竞争对手的价格', '2017-11-05 15:39:00', '16', '3', '1');
INSERT INTO `log` VALUES ('1314', 'market1:生产成本', '2017-11-05 15:39:01', '16', '3', '1');
INSERT INTO `log` VALUES ('1315', 'market1:价格及销售优先级别', '2017-11-05 15:39:02', '16', '3', '1');
INSERT INTO `log` VALUES ('1316', 'market1:设计广告', '2017-11-05 15:39:40', '16', '3', '1');
INSERT INTO `log` VALUES ('1317', 'market1:显示设计广告语', '2017-11-05 15:39:44', '16', '3', '1');
INSERT INTO `log` VALUES ('1318', 'market1:更新产品广告语', '2017-11-05 15:39:46', '16', '3', '1');
INSERT INTO `log` VALUES ('1319', 'market1:学生登录操作', '2017-11-05 15:42:00', '16', '3', '1');
INSERT INTO `log` VALUES ('1320', 'market1:查看品牌管理操作', '2017-11-05 15:42:04', '16', '3', '1');
INSERT INTO `log` VALUES ('1321', 'market1:设计广告', '2017-11-05 15:42:13', '16', '3', '1');
INSERT INTO `log` VALUES ('1322', 'market1:学生登录操作', '2017-11-05 15:43:43', '16', '3', '1');
INSERT INTO `log` VALUES ('1323', 'market1:设计广告', '2017-11-05 15:43:49', '16', '3', '1');
INSERT INTO `log` VALUES ('1324', 'market1:显示设计广告语', '2017-11-05 15:43:51', '16', '3', '1');
INSERT INTO `log` VALUES ('1325', 'market1:更新产品广告语', '2017-11-05 15:43:53', '16', '3', '1');
INSERT INTO `log` VALUES ('1326', 'market1:学生登录操作', '2017-11-05 15:44:57', '16', '3', '1');
INSERT INTO `log` VALUES ('1327', 'market1:学生登录操作', '2017-11-05 15:47:44', '16', '3', '1');
INSERT INTO `log` VALUES ('1328', 'market1:设计广告', '2017-11-05 15:48:05', '16', '3', '1');
INSERT INTO `log` VALUES ('1329', 'market1:显示设计广告语', '2017-11-05 15:48:07', '16', '3', '1');
INSERT INTO `log` VALUES ('1330', 'market1:更新产品广告语', '2017-11-05 15:48:09', '16', '3', '1');
INSERT INTO `log` VALUES ('1331', 'market1:核查广告语', '2017-11-05 15:48:22', '16', '3', '1');
INSERT INTO `log` VALUES ('1332', 'market1:学生登录操作', '2017-11-05 15:53:04', '16', '3', '1');
INSERT INTO `log` VALUES ('1333', 'market1:品牌盈利能力', '2017-11-05 15:53:09', '16', '3', '1');
INSERT INTO `log` VALUES ('1334', 'market1:品牌评价', '2017-11-05 15:53:10', '16', '3', '1');
INSERT INTO `log` VALUES ('1335', 'market1:竞争对手的品牌', '2017-11-05 15:53:10', '16', '3', '1');
INSERT INTO `log` VALUES ('1336', 'market1:查看利润表操作', '2017-11-05 15:53:14', '16', '3', '1');
INSERT INTO `log` VALUES ('1337', 'market1:查看资产负债表操作', '2017-11-05 15:53:16', '16', '3', '1');
INSERT INTO `log` VALUES ('1338', 'market1:查看实体销售操作', '2017-11-05 15:53:40', '16', '3', '1');
INSERT INTO `log` VALUES ('1339', 'market1:修改开设实体销售中心', '2017-11-05 15:54:37', '16', '3', '1');
INSERT INTO `log` VALUES ('1340', 'market1:查看实体销售操作', '2017-11-05 15:54:42', '16', '3', '1');
INSERT INTO `log` VALUES ('1341', 'market1:学生登录操作', '2017-11-05 15:55:20', '16', '3', '1');
INSERT INTO `log` VALUES ('1342', 'market1:显示业内销售人员薪酬', '2017-11-05 15:55:51', '16', '3', '1');
INSERT INTO `log` VALUES ('1343', 'market1:显示业内工厂工人薪酬', '2017-11-05 15:55:55', '16', '3', '1');
INSERT INTO `log` VALUES ('1344', 'market1:查看定期存款操作', '2017-11-05 15:56:06', '16', '3', '1');
INSERT INTO `log` VALUES ('1345', 'market1:查看现金流表操作', '2017-11-05 15:56:10', '16', '3', '1');
INSERT INTO `log` VALUES ('1346', 'market1:查看利润表操作', '2017-11-05 15:56:10', '16', '3', '1');
INSERT INTO `log` VALUES ('1347', 'market1:查看资产负债表操作', '2017-11-05 15:56:11', '16', '3', '1');
INSERT INTO `log` VALUES ('1348', 'market1:查看职位分配操作', '2017-11-05 15:56:12', '16', '3', '1');
INSERT INTO `log` VALUES ('1349', 'market1:查看目标策略操作', '2017-11-05 15:56:12', '16', '3', '1');
INSERT INTO `log` VALUES ('1350', 'market1:查看决策汇总操作', '2017-11-05 15:56:14', '16', '3', '1');
INSERT INTO `log` VALUES ('1351', 'market1:查看员工薪酬', '2017-11-05 15:56:25', '16', '3', '1');
INSERT INTO `log` VALUES ('1352', 'market1:查看客户需求', '2017-11-05 15:56:29', '16', '3', '1');
INSERT INTO `log` VALUES ('1353', 'market1:查看实体销售操作', '2017-11-05 15:56:40', '16', '3', '1');
INSERT INTO `log` VALUES ('1354', 'market1:查看业内工厂工人薪酬', '2017-11-05 15:56:52', '16', '3', '1');
INSERT INTO `log` VALUES ('1355', 'market1:显示业内销售人员薪酬', '2017-11-05 15:56:54', '16', '3', '1');
INSERT INTO `log` VALUES ('1356', 'market1:查看业内销售人员薪酬', '2017-11-05 15:56:55', '16', '3', '1');
INSERT INTO `log` VALUES ('1357', 'market1:查看实体销售操作', '2017-11-05 15:58:16', '16', '3', '1');
INSERT INTO `log` VALUES ('1358', 'market1:显示业内销售人员薪酬', '2017-11-05 15:59:21', '16', '3', '1');
INSERT INTO `log` VALUES ('1359', 'market1:查看业内销售人员薪酬', '2017-11-05 15:59:22', '16', '3', '1');
INSERT INTO `log` VALUES ('1360', 'market1:更新业内销售人员薪酬', '2017-11-05 15:59:40', '16', '3', '1');
INSERT INTO `log` VALUES ('1361', 'market1:查看业内工厂工人薪酬', '2017-11-05 15:59:53', '16', '3', '1');
INSERT INTO `log` VALUES ('1362', 'market1:显示业内工厂工人薪酬', '2017-11-05 15:59:54', '16', '3', '1');
INSERT INTO `log` VALUES ('1363', 'market1:课程介绍', '2017-11-05 16:00:17', '16', '3', '1');
INSERT INTO `log` VALUES ('1364', 'market1:学生登录操作', '2017-11-05 16:05:57', '16', '3', '1');
INSERT INTO `log` VALUES ('1365', 'market1:显示业内销售人员薪酬', '2017-11-05 16:06:10', '16', '3', '1');
INSERT INTO `log` VALUES ('1366', 'market1:更新业内销售人员薪酬', '2017-11-05 16:06:26', '16', '3', '1');
INSERT INTO `log` VALUES ('1367', 'market1:查看实体销售操作', '2017-11-05 16:06:58', '16', '3', '1');
INSERT INTO `log` VALUES ('1368', 'market1:学生登录操作', '2017-11-05 16:19:08', '16', '3', '1');
INSERT INTO `log` VALUES ('1369', 'market1:查看实体销售操作', '2017-11-05 16:19:21', '16', '3', '1');
INSERT INTO `log` VALUES ('1370', 'market1:查看网络销售中心操作', '2017-11-05 16:19:23', '16', '3', '1');

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
INSERT INTO `market_info` VALUES ('1', '新加坡', '14412', '18971', '19865', '10000', '11000', '12000', '100000', '50000', '70000', '30000', 'images/sinapore.jpg');
INSERT INTO `market_info` VALUES ('2', '香港-中国', '15324', '19124', '18734', '13000', '14000', '15000', '100001', '50001', '70001', '30001', 'images/hongkong.jpg');
INSERT INTO `market_info` VALUES ('3', '莫斯科-俄罗斯', '17576', '18967', '19654', '15000', '16000', '17000', '100002', '50002', '70002', '30002', 'images/moscow1.jpg');
INSERT INTO `market_info` VALUES ('4', '新德里-印度', '18756', '16574', '15432', '18000', '19000', '20000', '100003', '50003', '70003', '30003', 'images/newdelhi.jpg');

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
  PRIMARY KEY (`id`),
  KEY `company_id` (`company_id`),
  CONSTRAINT `member_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member
-- ----------------------------
INSERT INTO `member` VALUES ('1', '1', 'sansux@163.com', '574100', 'zhouhaihua', null, null, null, null, null);
INSERT INTO `member` VALUES ('2', '5', 'zhouhaihua@163.com', '574100', 'zhouhaihua2', null, null, null, null, null);
INSERT INTO `member` VALUES ('12', '79', 'zhou15@163.com', '123456', 'zhou15', null, null, null, null, null);
INSERT INTO `member` VALUES ('13', '79', 'zhou15_2@163.com', '574100', 'zhou15_2', null, null, null, null, null);
INSERT INTO `member` VALUES ('14', '82', 'zhao@163.com', '123456', 'zhao', null, null, null, null, null);
INSERT INTO `member` VALUES ('15', '82', 'usst1@163.com', '123456', 'usst1', null, null, null, null, null);
INSERT INTO `member` VALUES ('16', '97', 'market1@163.com', '123456', 'market1', null, null, null, null, null);
INSERT INTO `member` VALUES ('17', '98', 'market2@163.com', '123456', 'market2', null, null, null, null, null);
INSERT INTO `member` VALUES ('18', '99', 'market3@163.com', '123456', 'market3', null, null, null, null, null);
INSERT INTO `member` VALUES ('19', '99', 'market4@163.com', '123456', 'market4', null, null, null, null, null);

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
INSERT INTO `member_duty` VALUES ('1', '1', '2', '1');
INSERT INTO `member_duty` VALUES ('2', '2', '3', '2');
INSERT INTO `member_duty` VALUES ('3', '3', null, '3');

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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operation_capacity
-- ----------------------------
INSERT INTO `operation_capacity` VALUES ('1', '5', '2', '40', '78');
INSERT INTO `operation_capacity` VALUES ('2', '4', '2', '40', null);
INSERT INTO `operation_capacity` VALUES ('3', '3', '2', '30', null);
INSERT INTO `operation_capacity` VALUES ('4', '2', '2', '20', null);
INSERT INTO `operation_capacity` VALUES ('5', '1', '2', '10', null);
INSERT INTO `operation_capacity` VALUES ('6', '79', '2', '49', '30');
INSERT INTO `operation_capacity` VALUES ('12', '97', '2', '30', '69');
INSERT INTO `operation_capacity` VALUES ('13', '98', '2', '70', '69');
INSERT INTO `operation_capacity` VALUES ('14', '99', '2', '70', '56');

-- ----------------------------
-- Table structure for personal_goal
-- ----------------------------
DROP TABLE IF EXISTS `personal_goal`;
CREATE TABLE `personal_goal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) NOT NULL,
  `goal_id` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of personal_goal
-- ----------------------------
INSERT INTO `personal_goal` VALUES ('1', '1', '1,2,3,4');
INSERT INTO `personal_goal` VALUES ('2', '2', '2,3,4,5');
INSERT INTO `personal_goal` VALUES ('3', '3', '3,4,5,6');
INSERT INTO `personal_goal` VALUES ('4', '5', '4,5,6,7');

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
INSERT INTO `price_info` VALUES ('1', '2500', '4000', '1500');

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
  `ad_weight` int(11) DEFAULT NULL,
  `design_weight` int(11) DEFAULT NULL,
  `market_weight` int(11) DEFAULT NULL,
  `saleman_num` int(11) DEFAULT NULL,
  `saleman_salary` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product_efficiency
-- ----------------------------
INSERT INTO `product_efficiency` VALUES ('62', '18', '97', '31', '2', '极致型', '19110', '89', '1', '0', '2576', '1000');
INSERT INTO `product_efficiency` VALUES ('63', '18', '98', '32', '2', '商务型', '1460', '77', '2', '0', '6141', '2000');
INSERT INTO `product_efficiency` VALUES ('64', '18', '99', '33', '2', '商务型', '0', '70', '0', '0', '0', '0');
INSERT INTO `product_efficiency` VALUES ('65', '18', '97', '34', '2', '极致型', '0', '83', '1', '0', '2576', '2000');
INSERT INTO `product_efficiency` VALUES ('66', '18', '98', '35', '2', '商务型', '0', '77', '2', '0', '6141', '2300');

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
  `need` int(11) DEFAULT NULL,
  `sale` int(11) DEFAULT NULL,
  `stockoun` int(11) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `is_phy` tinyint(4) DEFAULT NULL,
  `costofselling` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product_market_share
-- ----------------------------
INSERT INTO `product_market_share` VALUES ('61', '18', '97', '31', '2', '极致型', '0.568', '5240', '975', '4265', '0', null, '2000');
INSERT INTO `product_market_share` VALUES ('62', '18', '97', '34', '2', '极致型', '0.432', '3980', '975', '3005', '0', null, '2000');
INSERT INTO `product_market_share` VALUES ('63', '18', '98', '32', '2', '商务型', '0.558', '7160', '2275', '4885', '0', null, '2000');
INSERT INTO `product_market_share` VALUES ('64', '18', '99', '33', '2', '商务型', '0.095', '1220', '1220', '0', '3330', null, '2000');
INSERT INTO `product_market_share` VALUES ('65', '18', '98', '35', '2', '商务型', '0.347', '4460', '2275', '2185', '0', null, '2000');

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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product_price
-- ----------------------------
INSERT INTO `product_price` VALUES ('18', '16', '1', '2', '1500', '50');
INSERT INTO `product_price` VALUES ('19', '17', '1', '2', '2000', '0');
INSERT INTO `product_price` VALUES ('22', '20', '79', '2', '20000', '0');
INSERT INTO `product_price` VALUES ('23', '26', '79', '2', '10000', '0');
INSERT INTO `product_price` VALUES ('24', '27', '79', '2', '0', '0');
INSERT INTO `product_price` VALUES ('25', '28', '79', '2', '0', '0');
INSERT INTO `product_price` VALUES ('26', '29', '79', '2', '0', '0');
INSERT INTO `product_price` VALUES ('27', '30', '79', '2', '0', '0');
INSERT INTO `product_price` VALUES ('30', '32', '98', '2', '2000', '10');
INSERT INTO `product_price` VALUES ('31', '35', '98', '2', '2300', '50');
INSERT INTO `product_price` VALUES ('32', '33', '99', '2', '0', '0');
INSERT INTO `product_price` VALUES ('33', '36', '97', '2', '1500', '30');

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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sales_salary
-- ----------------------------
INSERT INTO `sales_salary` VALUES ('2', '5', '2', '1000000', '1', '2', '3', '4', '1', '1042739');
INSERT INTO `sales_salary` VALUES ('3', '79', '2', '5000', '1', '2', '3', '4', '10', '5927');
INSERT INTO `sales_salary` VALUES ('4', '80', '2', '200000', '1', '1', '1', '1', '1', '1042739');
INSERT INTO `sales_salary` VALUES ('5', '81', '2', '2000000', '1', '1', '1', '11', '1', '1042739');
INSERT INTO `sales_salary` VALUES ('9', '97', '2', '5000', '1', '2', '3', '4', '5', '5677');
INSERT INTO `sales_salary` VALUES ('10', '98', '2', '5000', '10', '14', '2', '3', '4', '6141');
INSERT INTO `sales_salary` VALUES ('11', '99', '2', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `sales_salary` VALUES ('12', '97', '3', '5000', '1', '2', '3', '4', '5', '5677');

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of workers_salary
-- ----------------------------
INSERT INTO `workers_salary` VALUES ('1', '5', '2', '10000', '1', '1', '1', '1', '1', '10427');
INSERT INTO `workers_salary` VALUES ('2', '79', '2', '20000', '10', '14', '13', '5', '8', '27967');
INSERT INTO `workers_salary` VALUES ('3', '80', '2', '10000', '10', '13', '13', '13', '1', '12313221');
INSERT INTO `workers_salary` VALUES ('4', '81', '2', '411111', '12', '12', '12', '12', '1', '3453434');
INSERT INTO `workers_salary` VALUES ('5', '97', '2', '3000', '7', '7', '6', '5', '5', '3747');
