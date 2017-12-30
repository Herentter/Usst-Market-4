/*
Navicat MySQL Data Transfer

Source Server         : 11
Source Server Version : 50634
Source Host           : localhost:3306
Source Database       : market2

Target Server Type    : MYSQL
Target Server Version : 50634
File Encoding         : 65001

Date: 2017-12-27 16:19:07
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of balance_score
-- ----------------------------
INSERT INTO `balance_score` VALUES ('4', '1', '2', '2960845.500', '2279600.000', '681245.500', '0.000', '0.709', '4.234', '60896.000', '0.000', '3451270.000', '0.570');
INSERT INTO `balance_score` VALUES ('5', '2', '2', '6748928.500', '5909842.000', '839086.500', '0.000', '0.894', '5.550', '82020.000', '0.000', '3549117.000', '0.700');
INSERT INTO `balance_score` VALUES ('6', '3', '2', '5350021.500', '2896958.000', '2453063.500', '0.000', '0.396', '8.684', '70096.000', '0.000', '5223096.000', '0.610');

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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of balance_sheet
-- ----------------------------
INSERT INTO `balance_sheet` VALUES ('1', '1', '1', '668030', '2000', '0', '0', '1100000', '0', '0', '0', '2000000', null, '-229970');
INSERT INTO `balance_sheet` VALUES ('2', '1', '2', '289307', '7030', '0', '140580', '1700000', '0', '0', '0', '3000000', null, '-863083');
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of balance_sheet_result
-- ----------------------------
INSERT INTO `balance_sheet_result` VALUES ('1', '1', '1', '668030', '2000', '0', '0', '1100000', '0', '0', '0', '2000000', '0', '-229970');
INSERT INTO `balance_sheet_result` VALUES ('2', '2', '1', '-292169', '2200', '0', '0', '2000000', '0', '0', '0', '2000000', '0', '-289969');
INSERT INTO `balance_sheet_result` VALUES ('3', '3', '1', '667632', '2400', '0', '0', '1100000', '0', '0', '0', '2000000', '0', '-229968');
INSERT INTO `balance_sheet_result` VALUES ('4', '1', '2', '1759240', '7030', '0', '0', '1700000', '0', '0', '0', '3000000', '0', '466276');
INSERT INTO `balance_sheet_result` VALUES ('5', '2', '2', '342634', '5233', '0', '101250', '3100000', '0', '0', '0', '3000000', '0', '549118');
INSERT INTO `balance_sheet_result` VALUES ('6', '3', '2', '3017660', '5436', '0', '0', '2200000', '0', '0', '0', '3000000', '0', '2223100');
INSERT INTO `balance_sheet_result` VALUES ('8', '2', '2', '342634', '5233', '0', '101250', '3100000', '0', '0', '0', '3000000', '0', '549118');
INSERT INTO `balance_sheet_result` VALUES ('9', '3', '2', '3017660', '5436', '0', '0', '2200000', '0', '0', '0', '3000000', '0', '2223100');

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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cash_flow
-- ----------------------------
INSERT INTO `cash_flow` VALUES ('1', '1', '1', '0', '30', '0', '0', '0', '0', '60000', '0', '0', '100000', '70000', '0', '0', '0', '0', '0', '0', '0', '0', '1100000', '0', '0', '0', '0', '0', '2000', '0');
INSERT INTO `cash_flow` VALUES ('2', '1', '2', '200050', '105.45', '0', '0', '4500', '492030', '60000', '130000', '27680', '50000', '30000', '0', '10000', '14058', '0', '0', '0', '0', '0', '600000', '0', '0', '0', '0', '0', '5000', '668030');
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cash_flow_result
-- ----------------------------
INSERT INTO `cash_flow_result` VALUES ('1', '1', '1', '0', '30', '0', '0', '0', '0', '60000', '0', '0', '100000', '70000', '0', '0', '0', '0', '0', '0', '0', '0', '1100000', '0', '0', '0', '0', '0', '2000', '0');
INSERT INTO `cash_flow_result` VALUES ('2', '2', '1', '0', '33', '0', '0', '0', '0', '120000', '0', '0', '100001', '70001', '0', '0', '0', '0', '0', '0', '0', '0', '2000000', '0', '0', '0', '0', '0', '2200', '0');
INSERT INTO `cash_flow_result` VALUES ('3', '3', '1', '0', '36', '0', '0', '0', '0', '60000', '0', '0', '100002', '70002', '0', '0', '0', '0', '0', '0', '0', '0', '1100000', '0', '0', '0', '0', '0', '2400', '0');
INSERT INTO `cash_flow_result` VALUES ('4', '1', '2', '2960740', '105.45', '0', '0', '66600', '1752320', '60000', '130000', '27680', '50000', '30000', '0', '148000', '0', '0', '0', '0', '0', '0', '600000', '0', '0', '0', '0', '0', '5000', '668030');
INSERT INTO `cash_flow_result` VALUES ('5', '2', '2', '6748850', '78.49', '0', '0', '102170', '5122600', '60000', '135000', '47845', '50001', '30001', '15000', '337100', '10125', '0', '0', '0', '0', '0', '1100000', '0', '0', '0', '0', '0', '3000', '0');
INSERT INTO `cash_flow_result` VALUES ('6', '3', '2', '5349940', '81.54', '0', '0', '272700', '2071210', '60000', '182000', '37744', '50002', '30002', '15000', '178300', '0', '0', '0', '0', '0', '0', '1100000', '0', '0', '0', '0', '0', '3000', '0');
INSERT INTO `cash_flow_result` VALUES ('8', '2', '2', '6748850', '78.49', '0', '0', '102170', '5122600', '60000', '135000', '47845', '50001', '30001', '15000', '337100', '10125', '0', '0', '0', '0', '0', '1100000', '0', '0', '0', '0', '0', '3000', '0');
INSERT INTO `cash_flow_result` VALUES ('9', '3', '2', '5349940', '81.54', '0', '0', '272700', '2071210', '60000', '182000', '37744', '50002', '30002', '15000', '178300', '0', '0', '0', '0', '0', '0', '1100000', '0', '0', '0', '0', '0', '3000', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company_duty
-- ----------------------------
INSERT INTO `company_duty` VALUES ('1', '1', '21', '123', '2', '4');
INSERT INTO `company_duty` VALUES ('2', '2', '22', '123', '1', '4');
INSERT INTO `company_duty` VALUES ('3', '3', '23', '123', '3', '4');

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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company_investment
-- ----------------------------
INSERT INTO `company_investment` VALUES ('7', '1', '1', '2', '2', '1200', '2', '130000', '1', '100000', '1', '100000', '5', '27680', '6', '33216', '0.57', '0.61');
INSERT INTO `company_investment` VALUES ('8', '1', '2', '2', '3', '1424', '3', '135000', '1', '100001', '1', '100001', '7', '47845', '5', '34175', '0.7', '0.68');
INSERT INTO `company_investment` VALUES ('9', '1', '3', '2', '2', '1269', '2', '182000', '1', '100002', '1', '100002', '7', '37744', '6', '32352', '0.61', '0.6');

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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company_market
-- ----------------------------
INSERT INTO `company_market` VALUES ('1', '1', '1', '1', '1');
INSERT INTO `company_market` VALUES ('2', '1', '1', '1', '2');
INSERT INTO `company_market` VALUES ('3', '1', '1,2', '1', '3');
INSERT INTO `company_market` VALUES ('4', '1', '1,2', '1', '4');
INSERT INTO `company_market` VALUES ('5', '1', '1,2', '1', '5');
INSERT INTO `company_market` VALUES ('6', '1', '1', '0', '1');
INSERT INTO `company_market` VALUES ('7', '1', '1', '0', '2');
INSERT INTO `company_market` VALUES ('8', '1', '1,3', '0', '3');
INSERT INTO `company_market` VALUES ('9', '1', '1,3', '0', '4');
INSERT INTO `company_market` VALUES ('10', '1', '1,3', '0', '5');
INSERT INTO `company_market` VALUES ('11', '2', '2', '1', '1');
INSERT INTO `company_market` VALUES ('12', '2', '2', '1', '2');
INSERT INTO `company_market` VALUES ('13', '2', '2', '1', '3');
INSERT INTO `company_market` VALUES ('14', '2', '2', '1', '4');
INSERT INTO `company_market` VALUES ('15', '2', '2', '1', '5');
INSERT INTO `company_market` VALUES ('16', '2', '2', '0', '1');
INSERT INTO `company_market` VALUES ('17', '2', '2', '0', '2');
INSERT INTO `company_market` VALUES ('18', '2', '2', '0', '3');
INSERT INTO `company_market` VALUES ('19', '2', '2', '0', '4');
INSERT INTO `company_market` VALUES ('20', '2', '2', '0', '5');
INSERT INTO `company_market` VALUES ('21', '3', '3', '1', '1');
INSERT INTO `company_market` VALUES ('22', '3', '3', '1', '2');
INSERT INTO `company_market` VALUES ('23', '3', '3', '1', '3');
INSERT INTO `company_market` VALUES ('24', '3', '3', '1', '4');
INSERT INTO `company_market` VALUES ('25', '3', '3', '1', '5');
INSERT INTO `company_market` VALUES ('26', '3', '3', '0', '1');
INSERT INTO `company_market` VALUES ('27', '3', '3', '0', '2');
INSERT INTO `company_market` VALUES ('28', '3', '3', '0', '3');
INSERT INTO `company_market` VALUES ('29', '3', '3', '0', '4');
INSERT INTO `company_market` VALUES ('30', '3', '3', '0', '5');

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of company_market_share
-- ----------------------------
INSERT INTO `company_market_share` VALUES ('4', '1', '2', '0', '0', '0', '0', '0', '0.496', '1389', '740', '649', '0', '0.213', '1179', '740', '439', '0');
INSERT INTO `company_market_share` VALUES ('5', '2', '2', '0', '0', '0', '0', '0', '0.504', '1411', '1213', '198', '0', '0.39', '2158', '2158', '0', '70');
INSERT INTO `company_market_share` VALUES ('6', '3', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.396', '2195', '1783', '412', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company_person_goal
-- ----------------------------
INSERT INTO `company_person_goal` VALUES ('1', '1', '4,5,', '1');
INSERT INTO `company_person_goal` VALUES ('2', '2', '4,', '1');
INSERT INTO `company_person_goal` VALUES ('3', '3', '5,6,', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company_quarter_time
-- ----------------------------
INSERT INTO `company_quarter_time` VALUES ('1', '1', '1', '1', '2017-11-23 10:43:18', null, '1');
INSERT INTO `company_quarter_time` VALUES ('2', '1', '2', '1', '2017-11-23 10:43:18', null, '1');
INSERT INTO `company_quarter_time` VALUES ('3', '1', '3', '1', '2017-11-23 10:43:19', null, '1');
INSERT INTO `company_quarter_time` VALUES ('13', '1', '1', '2', '', '', '1');
INSERT INTO `company_quarter_time` VALUES ('14', '1', '2', '2', null, null, '1');
INSERT INTO `company_quarter_time` VALUES ('15', '1', '3', '2', null, null, '1');
INSERT INTO `company_quarter_time` VALUES ('19', '1', '1', '3', '2017-11-23 13:34:43', null, '0');
INSERT INTO `company_quarter_time` VALUES ('20', '1', '2', '3', '2017-11-23 13:34:43', null, '0');
INSERT INTO `company_quarter_time` VALUES ('21', '1', '3', '3', '2017-11-23 13:34:43', null, '0');
INSERT INTO `company_quarter_time` VALUES ('22', '3', '4', '1', '2017-11-27 18:21:39', null, '0');
INSERT INTO `company_quarter_time` VALUES ('23', '3', '5', '1', '2017-11-27 18:21:40', null, '0');
INSERT INTO `company_quarter_time` VALUES ('24', '3', '6', '1', '2017-11-27 18:21:40', null, '0');
INSERT INTO `company_quarter_time` VALUES ('25', '3', '7', '1', '2017-11-27 18:21:41', null, '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company_report
-- ----------------------------
INSERT INTO `company_report` VALUES ('1', '1', '2', '0');
INSERT INTO `company_report` VALUES ('2', '2', '2', '1');
INSERT INTO `company_report` VALUES ('3', '3', '2', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

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
  KEY `teacher_id` (`teacher_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of competition
-- ----------------------------
INSERT INTO `competition` VALUES ('1', '2017-11-23', '721Y-68F6-ZV49', '3', '6', '4', '3', '1', '2017-11-23 00:00:00', '2017-11-30 00:00:00', '已通过', '0');
INSERT INTO `competition` VALUES ('3', '2017-11-27', '7R18-10N9-P189', '1', '6', '3', '4', '1', '2017-11-07 00:00:00', '2017-11-30 00:00:00', '已通过', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of demand_forecast
-- ----------------------------
INSERT INTO `demand_forecast` VALUES ('1', '1', '2', '50', '60');
INSERT INTO `demand_forecast` VALUES ('2', '2', '2', '60', '50');
INSERT INTO `demand_forecast` VALUES ('3', '3', '2', '50', '49');
INSERT INTO `demand_forecast` VALUES ('4', '1', '3', '33', '33');

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of financial_ratio
-- ----------------------------
INSERT INTO `financial_ratio` VALUES ('4', '1', '2', '0.000', '43808.000', '59216.910', '0.858', '0.000', '0.230', '0.372', '0.319');
INSERT INTO `financial_ratio` VALUES ('5', '2', '2', '0.000', '46569.091', '67489.285', '1.902', '0.000', '0.124', '0.222', '0.422');
INSERT INTO `financial_ratio` VALUES ('6', '3', '2', '0.000', '41424.200', '107000.430', '1.024', '0.000', '0.459', '0.591', '0.605');

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hire_people
-- ----------------------------
INSERT INTO `hire_people` VALUES ('1', '1', '1', '1', '0', '0');
INSERT INTO `hire_people` VALUES ('2', '1', '1', '2', '2', '3');
INSERT INTO `hire_people` VALUES ('3', '1', '1', '3', '3', '4');
INSERT INTO `hire_people` VALUES ('4', '1', '1', '4', '0', '0');
INSERT INTO `hire_people` VALUES ('5', '1', '1', '5', '0', '0');
INSERT INTO `hire_people` VALUES ('6', '2', '2', '1', '0', '0');
INSERT INTO `hire_people` VALUES ('7', '2', '2', '2', '5', '2');
INSERT INTO `hire_people` VALUES ('8', '2', '2', '3', '0', '0');
INSERT INTO `hire_people` VALUES ('9', '2', '2', '4', '0', '0');
INSERT INTO `hire_people` VALUES ('10', '2', '2', '5', '0', '0');
INSERT INTO `hire_people` VALUES ('11', '3', '3', '1', '0', '0');
INSERT INTO `hire_people` VALUES ('12', '3', '3', '2', '4', '3');
INSERT INTO `hire_people` VALUES ('13', '3', '3', '3', '0', '0');
INSERT INTO `hire_people` VALUES ('14', '3', '3', '4', '0', '0');
INSERT INTO `hire_people` VALUES ('15', '3', '3', '5', '0', '0');
INSERT INTO `hire_people` VALUES ('16', '1', '2', '3', '4', '2');
INSERT INTO `hire_people` VALUES ('17', '1', '2', '4', '0', '0');
INSERT INTO `hire_people` VALUES ('18', '1', '2', '5', '0', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hire_people_online
-- ----------------------------
INSERT INTO `hire_people_online` VALUES ('1', '1', '1', '1', '0', '0');
INSERT INTO `hire_people_online` VALUES ('2', '1', '1', '2', '3', '3');
INSERT INTO `hire_people_online` VALUES ('3', '1', '1', '3', '0', '0');
INSERT INTO `hire_people_online` VALUES ('4', '1', '1', '4', '0', '0');
INSERT INTO `hire_people_online` VALUES ('5', '1', '1', '5', '0', '0');
INSERT INTO `hire_people_online` VALUES ('6', '2', '2', '1', '0', '0');
INSERT INTO `hire_people_online` VALUES ('7', '2', '2', '2', '2', '3');
INSERT INTO `hire_people_online` VALUES ('8', '2', '2', '3', '0', '0');
INSERT INTO `hire_people_online` VALUES ('9', '2', '2', '4', '0', '0');
INSERT INTO `hire_people_online` VALUES ('10', '2', '2', '5', '0', '0');
INSERT INTO `hire_people_online` VALUES ('11', '3', '3', '1', '0', '0');
INSERT INTO `hire_people_online` VALUES ('12', '3', '3', '2', '3', '3');
INSERT INTO `hire_people_online` VALUES ('13', '3', '3', '3', '0', '0');
INSERT INTO `hire_people_online` VALUES ('14', '3', '3', '4', '0', '0');
INSERT INTO `hire_people_online` VALUES ('15', '3', '3', '5', '0', '0');
INSERT INTO `hire_people_online` VALUES ('16', '1', '3', '3', '0', '0');
INSERT INTO `hire_people_online` VALUES ('17', '1', '3', '4', '0', '0');
INSERT INTO `hire_people_online` VALUES ('18', '1', '3', '5', '0', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of income_statement
-- ----------------------------
INSERT INTO `income_statement` VALUES ('1', '1', '1', '0', '30', '0', '0', '60000', '0', '0', '100000', '70000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement` VALUES ('2', '1', '2', '200050', '105.45', '492030', '4500', '60000', '130000', '27680', '50000', '30000', '15000', '10000', '14058', '0', '0', '0', '0', '0', '0', '0', '0', '0');
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of income_statement_result
-- ----------------------------
INSERT INTO `income_statement_result` VALUES ('1', '1', '1', '0', '30', '0', '0', '60000', '0', '0', '100000', '70000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('2', '2', '1', '0', '33', '0', '0', '120000', '0', '0', '100001', '70001', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('3', '3', '1', '0', '36', '0', '0', '60000', '0', '0', '100002', '70002', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('4', '1', '2', '2960740', '105.45', '1752320', '66600', '60000', '130000', '27680', '50000', '30000', '0', '148000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '174061');
INSERT INTO `income_statement_result` VALUES ('5', '2', '2', '6748850', '78.49', '5122600', '102170', '60000', '135000', '47845', '50001', '30001', '15000', '337100', '10125', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('6', '3', '2', '5349940', '81.54', '2071210', '272700', '60000', '182000', '37744', '50002', '30002', '15000', '178300', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('8', '2', '2', '6748850', '78.49', '5122600', '102170', '60000', '135000', '47845', '50001', '30001', '15000', '337100', '10125', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `income_statement_result` VALUES ('9', '3', '2', '5349940', '81.54', '2071210', '272700', '60000', '182000', '37744', '50002', '30002', '15000', '178300', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of learntime
-- ----------------------------
INSERT INTO `learntime` VALUES ('11', '538', '3', '21');

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
) ENGINE=InnoDB AUTO_INCREMENT=3521 DEFAULT CHARSET=utf8;

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
  `web_practical` int(11) DEFAULT NULL,
  `web_perfect` int(11) DEFAULT NULL,
  `web_business` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of market_info2
-- ----------------------------
INSERT INTO `market_info2` VALUES ('1', '1', '新加坡', '1897', '1986', '1441', '1000', '1100', '1200');
INSERT INTO `market_info2` VALUES ('2', '1', '香港-中国', '1912', '1873', '1532', '1300', '1400', '1500');
INSERT INTO `market_info2` VALUES ('3', '1', '莫斯科-俄罗斯', '1896', '196', '1757', '1500', '1600', '1700');
INSERT INTO `market_info2` VALUES ('4', '1', '新德里-印度', '1657', '154', '1875', '1800', '1900', '2000');
INSERT INTO `market_info2` VALUES ('5', '3', '上海', '2700', '5400', '2700', null, null, null);
INSERT INTO `market_info2` VALUES ('6', '3', '新加坡', '4050', '4050', '2700', null, null, null);
INSERT INTO `market_info2` VALUES ('7', '3', '香港', '1350', '2700', '1350', null, null, null);
INSERT INTO `market_info2` VALUES ('8', '3', '新德里', '1080', '540', '1080', null, null, null);

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of market_info_weight
-- ----------------------------
INSERT INTO `market_info_weight` VALUES ('1', '上海', '0.10', '0.20', '0.10');
INSERT INTO `market_info_weight` VALUES ('2', '新加坡', '0.15', '0.15', '0.10');
INSERT INTO `market_info_weight` VALUES ('3', '香港', '0.05', '0.10', '0.05');
INSERT INTO `market_info_weight` VALUES ('4', '新德里', '0.04', '0.02', '0.04');

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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member
-- ----------------------------
INSERT INTO `member` VALUES ('21', '1', 'user1@163.com', '123456', 'user1', null, null, null, null, null);
INSERT INTO `member` VALUES ('22', '2', 'user2@163.com', '123456', 'user2', null, null, null, null, null);
INSERT INTO `member` VALUES ('23', '3', 'user3@163.com', '123456', 'user3', null, null, null, null, null);

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operation_capacity
-- ----------------------------
INSERT INTO `operation_capacity` VALUES ('1', '1', '2', '40', '80');
INSERT INTO `operation_capacity` VALUES ('2', '2', '2', '80', '80');
INSERT INTO `operation_capacity` VALUES ('3', '3', '2', '45', '82');
INSERT INTO `operation_capacity` VALUES ('4', '1', '3', '3', '3');

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
  `market_id` int(11) DEFAULT NULL,
  `ad_weight` int(11) DEFAULT NULL,
  `design_weight` int(11) DEFAULT NULL,
  `market_weight` int(11) DEFAULT NULL,
  `saleman_num` int(11) DEFAULT NULL,
  `saleman_salary` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=283 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product_efficiency
-- ----------------------------
INSERT INTO `product_efficiency` VALUES ('277', '18', '97', '49', '2', '极致型', null, '1803', '107', '3', '10', '5677', '40000');
INSERT INTO `product_efficiency` VALUES ('278', '18', '97', '51', '2', '实用型', null, '601', '63', '3', '10', '5677', '1000');
INSERT INTO `product_efficiency` VALUES ('279', '18', '98', '52', '2', '极致型', null, '327', '83', '3', '13', '6141', '2000');
INSERT INTO `product_efficiency` VALUES ('280', '18', '98', '53', '2', '商务型', null, '480', '70', '3', '13', '6141', '1999');
INSERT INTO `product_efficiency` VALUES ('281', '18', '99', '54', '2', '商务型', null, '361', '77', '2', '15', '6769', '2000');
INSERT INTO `product_efficiency` VALUES ('282', '18', '99', '55', '2', '实用型', null, '413', '61', '2', '15', '6769', '2001');

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
) ENGINE=InnoDB AUTO_INCREMENT=288 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product_market_share
-- ----------------------------
INSERT INTO `product_market_share` VALUES ('282', '18', '97', '51', '2', '实用型', '0.540', '3091', '292', null, null, null, null, null, null, null, null, '2799', '0', null);
INSERT INTO `product_market_share` VALUES ('283', '18', '99', '55', '2', '实用型', '0.460', '2632', '1547', null, null, null, null, null, null, null, null, '1085', '0', null);
INSERT INTO `product_market_share` VALUES ('284', '18', '97', '49', '2', '极致型', '0.428', '2506', '585', null, null, null, null, null, null, null, null, '1921', '0', null);
INSERT INTO `product_market_share` VALUES ('285', '18', '98', '52', '2', '极致型', '0.572', '3343', '1260', null, null, null, null, null, null, null, null, '2083', '0', null);
INSERT INTO `product_market_share` VALUES ('286', '18', '98', '53', '2', '商务型', '0.508', '2342', '2016', null, null, null, null, null, null, null, null, '326', '0', null);
INSERT INTO `product_market_share` VALUES ('287', '18', '99', '54', '2', '商务型', '0.492', '2272', '1547', null, null, null, null, null, null, null, null, '725', '0', null);

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sales_salary
-- ----------------------------
INSERT INTO `sales_salary` VALUES ('1', '1', '2', '5000', '2', '10', '2', '2', '2', '5536');
INSERT INTO `sales_salary` VALUES ('2', '2', '2', '6000', '3', '7', '3', '3', '3', '6835');
INSERT INTO `sales_salary` VALUES ('3', '3', '2', '4500', '3', '14', '3', '3', '7', '5392');
INSERT INTO `sales_salary` VALUES ('4', '1', '3', '4000', '0', '0', '0', '0', '0', '4000');

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of workers_salary
-- ----------------------------
INSERT INTO `workers_salary` VALUES ('1', '1', '2', '4000', '2', '14', '2', '2', '2', '4473');
INSERT INTO `workers_salary` VALUES ('2', '2', '2', '5500', '2', '8', '4', '4', '4', '6390');
INSERT INTO `workers_salary` VALUES ('3', '3', '2', '4200', '2', '14', '3', '4', '7', '5033');
INSERT INTO `workers_salary` VALUES ('4', '1', '3', '3', '3', '0', '0', '0', '0', '3');
