/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : market

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2017-06-24 15:23:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', '123456@qq.com', '123', '123456');
INSERT INTO `admin` VALUES ('2', 'kiritocly', '123@qq.com', 'asuna', '123456789');
INSERT INTO `admin` VALUES ('3', 'asuna', '222@qq.com', '789', '456789123');
INSERT INTO `admin` VALUES ('4', 'aaa', '111', '123', '123456');
INSERT INTO `admin` VALUES ('5', 'bbb', '1111', '111', '111');
INSERT INTO `admin` VALUES ('6', 'ccc', '111', '111', '111');
INSERT INTO `admin` VALUES ('7', 'ddd', '111', '11111', '111');
INSERT INTO `admin` VALUES ('8', 'kirito', '123@qq.com', 'asuna', '123456');
INSERT INTO `admin` VALUES ('9', '萧炎', '111', '1111', '111');
INSERT INTO `admin` VALUES ('10', '林动', '1', '12', '123');
INSERT INTO `admin` VALUES ('11', '牧尘', '233586@qq.com', '123456', '11111');
INSERT INTO `admin` VALUES ('12', '唐三', '123456@qq.com', '123456', '11111');
INSERT INTO `admin` VALUES ('13', 'kirito', '123@qq.com', 'asuna', '11111');
INSERT INTO `admin` VALUES ('14', '洛璃', '大主宰', '666666', '123456');
INSERT INTO `admin` VALUES ('16', '萧薰儿', '斗破苍穹', '666666', '123456789');

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
INSERT INTO `capacity_info` VALUES ('1', '25', '0', '500000.00', '500000.00');
INSERT INTO `capacity_info` VALUES ('2', '50', '0', '1000000.00', '1000000.00');
INSERT INTO `capacity_info` VALUES ('3', '75', '0', '1500000.00', '1500000.00');
INSERT INTO `capacity_info` VALUES ('4', '100', '0', '2000000.00', '2000000.00');
INSERT INTO `capacity_info` VALUES ('5', '125', '0', '2500000.00', '2500000.00');
INSERT INTO `capacity_info` VALUES ('6', '150', '0', '3000000.00', '3000000.00');
INSERT INTO `capacity_info` VALUES ('7', '175', '0', '3500000.00', '3500000.00');

-- ----------------------------
-- Table structure for company
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company` (
  `company_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `competition_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`company_id`),
  KEY `competition_id` (`competition_id`),
  CONSTRAINT `company_ibfk_1` FOREIGN KEY (`competition_id`) REFERENCES `competition` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company
-- ----------------------------
INSERT INTO `company` VALUES ('1', '1', '1');

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
-- Table structure for competition
-- ----------------------------
DROP TABLE IF EXISTS `competition`;
CREATE TABLE `competition` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `license` varchar(255) DEFAULT NULL,
  `admin_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `number` int(4) NOT NULL,
  `team_num` int(2) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `quater` int(2) NOT NULL,
  `team_max_memb` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `date` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `validity` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `com_admin_fk` (`admin_id`),
  KEY `com_teacher_fk` (`teacher_id`),
  CONSTRAINT `com_admin_fk` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`),
  CONSTRAINT `com_teacher_fk` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=445 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of competition
-- ----------------------------
INSERT INTO `competition` VALUES ('1', '5b3ebf51-13ae-470f-b37a-9544a342afba', '1', '1', '100', '0', '帝国理工', '8', '10', '上海', '2017-06-04 15:07:45', '2017-06-04 15:07:45');
INSERT INTO `competition` VALUES ('2', 'd862eee3-f8a7-47be-a328-40b50da177c3', '3', '2', '100', '10', 'sao', '8', '10', 'sao', '2017-05-05 20:59:11', '2017-05-05 20:59:11');
INSERT INTO `competition` VALUES ('3', '00fc335f-dd77-4dd0-80c3-ae0495d8eddc', '3', '2', '100', '10', 'sao', '8', '10', 'sao', '2017-05-05 20:59:11', '2017-05-05 20:59:11');
INSERT INTO `competition` VALUES ('4', 'f01839fb-154e-44e0-9f33-c88629369410', '3', '2', '50', '10', 'sao', '5', '5', 'sao', '2017-05-05 21:16:43', '2017-05-05 21:16:43');
INSERT INTO `competition` VALUES ('5', '1bd20abb-fb98-46b5-9e9c-f8ea93cc741c', '3', '2', '50', '10', 'sao', '5', '5', 'sao', '2017-05-05 21:23:52', '2017-05-05 21:23:52');
INSERT INTO `competition` VALUES ('6', 'fe74e338-8701-4859-bf93-97c87fbd7ea8', '3', '2', '50', '10', 'sao', '5', '5', 'sao', '2017-05-05 22:36:26', '2017-05-05 22:36:26');
INSERT INTO `competition` VALUES ('7', '6c2975e6-9a44-4f24-a926-00d3cfbdecb5', '3', '2', '50', '10', 'sao', '5', '5', 'sao', '2017-05-05 22:45:17', '2017-05-05 22:45:17');
INSERT INTO `competition` VALUES ('8', '4b1cce7c-5e61-46f6-b3eb-2c85ec51f859', '3', '2', '50', '10', 'sao', '5', '5', 'sao', '2017-05-05 22:47:22', '2017-05-05 22:47:22');
INSERT INTO `competition` VALUES ('9', '08d84d71-6b1b-45a8-b81d-2abf13f0f637', '3', '2', '50', '10', 'sao', '5', '5', 'sao', '2017-05-05 22:51:36', '2017-05-05 22:51:36');
INSERT INTO `competition` VALUES ('10', '39d2c8df-3e83-445a-a690-81428b709cd1', '3', '2', '50', '10', 'sao', '5', '5', 'sao', '2017-05-05 22:56:09', '2017-05-06 22:56:09');
INSERT INTO `competition` VALUES ('11', '27575cba-017d-4c04-ba91-2c2d8d9e6a38', '1', '1', '0', '0', '天之骄子', '0', '0', '北京', '2017-06-04 15:08:47', '2017-06-04 15:08:47');
INSERT INTO `competition` VALUES ('12', 'a99156d0-927f-4eaf-a534-1907720dfa22', '3', '2', '50', '10', 'sao', '5', '5', 'sao', '2017-05-07 18:06:43', '2017-05-07 18:06:43');
INSERT INTO `competition` VALUES ('13', '0e0664d5-dfef-4316-8622-91220a26cb9c', '3', '2', '50', '0', '斗破苍穹', '5', '5', '上海', '2017-06-04 15:09:52', '2017-06-04 15:09:52');
INSERT INTO `competition` VALUES ('14', '0605c5bb-5c81-41c9-8022-69dda15066d9', '1', '1', '100', '0', '武动乾坤', '10', '10', '上海', '2017-06-04 15:10:18', '2017-06-04 15:10:18');
INSERT INTO `competition` VALUES ('15', '64b11b87-5249-4a94-bb94-7098b898949d', '1', '1', '100', '10', 'sao', '10', '10', '上海', '2017-05-21 15:28:49', '2017-05-21 15:28:49');
INSERT INTO `competition` VALUES ('22', 'acfb3ef8-ca4d-406b-a768-950ff85f0b0e', '1', '1', '0', '0', '', '0', '0', '上海', '2017-06-04 15:11:01', '2017-06-04 15:11:01');
INSERT INTO `competition` VALUES ('44', 'a3866330-7149-4a4e-966d-78de468c38f1', '1', '1', '0', '0', '', '0', '0', '上海', '2017-06-04 15:11:06', '2017-06-04 15:11:06');
INSERT INTO `competition` VALUES ('55', '2f5199f4-ca96-490d-9d31-400f12c12dac', '1', '1', '0', '0', '', '0', '0', '上海', '2017-06-04 15:11:14', '2017-06-04 15:11:14');
INSERT INTO `competition` VALUES ('66', '2cf22c62-6ebc-430f-ba40-af147ec5c8cd', '1', '1', '0', '0', '', '0', '0', '上海', '2017-06-04 15:11:21', '2017-06-04 15:11:21');
INSERT INTO `competition` VALUES ('77', 'c0fb6c63-ee32-42e9-be21-34b71aef53a7', '1', '1', '0', '0', '', '0', '0', '上海理工', '2017-06-04 15:11:33', '2017-06-04 15:11:33');
INSERT INTO `competition` VALUES ('88', 'bd1bd235-e5d4-4174-9283-010507de8218', '1', '1', '0', '0', '', '0', '0', '上海理工', '2017-06-04 15:11:42', '2017-06-04 15:11:42');
INSERT INTO `competition` VALUES ('99', '26b1ff3e-92d7-4161-ab62-36746620c386', '1', '1', '0', '0', '', '0', '0', '上海', '2017-06-04 15:11:55', '2017-06-04 15:11:55');
INSERT INTO `competition` VALUES ('100', 'dfc8da2c-774d-450c-92ba-ec4bc5b116b3', '1', '1', '1000', '100', 'sao', '10', '10', 'sao', '2017-05-08 19:34:01', '2017-05-08 19:34:01');
INSERT INTO `competition` VALUES ('111', '69591c46-5d20-4fed-89e4-53f1ecfe97b0', '1', '1', '0', '0', '', '0', '0', '北京', '2017-06-04 15:12:08', '2017-06-04 15:12:08');
INSERT INTO `competition` VALUES ('222', 'ab815caa-c3c6-41b8-b8d1-170419960788', '1', '1', '0', '0', '', '0', '0', '武汉', '2017-06-04 15:12:14', '2017-06-04 15:12:14');
INSERT INTO `competition` VALUES ('333', 'e36a8cc6-8a88-469b-b0c8-522876da0d9d', '1', '1', '0', '0', '', '0', '0', '广州', '2017-06-04 15:12:23', '2017-06-04 15:12:23');
INSERT INTO `competition` VALUES ('444', 'fea51ce6-122b-4a18-97e4-b002895c9b11', '1', '1', '0', '0', '斗破苍穹', '0', '0', '深圳', '2017-06-11 15:38:11', '2017-06-11 15:38:11');

-- ----------------------------
-- Table structure for demand_info
-- ----------------------------
DROP TABLE IF EXISTS `demand_info`;
CREATE TABLE `demand_info` (
  `id` int(11) DEFAULT NULL,
  `detail` varchar(50) DEFAULT NULL,
  `practical` int(11) DEFAULT NULL,
  `perfect` int(11) DEFAULT NULL,
  `business` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of demand_info
-- ----------------------------
INSERT INTO `demand_info` VALUES ('1', '轻薄美观', '89', '119', '103');
INSERT INTO `demand_info` VALUES ('2', '超长待机', '91', '115', '130');
INSERT INTO `demand_info` VALUES ('3', '内存大/响应速度快', '101', '121', '123');
INSERT INTO `demand_info` VALUES ('4', '语音/视频', '123', '145', '135');

-- ----------------------------
-- Table structure for file
-- ----------------------------
DROP TABLE IF EXISTS `file`;
CREATE TABLE `file` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of file
-- ----------------------------

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `num` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('1', '衬衫', '100');
INSERT INTO `goods` VALUES ('2', '羊毛衫', '150');
INSERT INTO `goods` VALUES ('3', '雪纺衫', '88');
INSERT INTO `goods` VALUES ('4', '裤子', '200');
INSERT INTO `goods` VALUES ('5', '高跟鞋', '188');
INSERT INTO `goods` VALUES ('6', '袜子', '500');

-- ----------------------------
-- Table structure for inner-stock
-- ----------------------------
DROP TABLE IF EXISTS `inner-stock`;
CREATE TABLE `inner-stock` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `owner_name` varchar(255) DEFAULT NULL,
  `amount` int(10) DEFAULT NULL,
  `price` float(10,2) DEFAULT NULL,
  `total_price` float(100,2) DEFAULT NULL,
  `competition_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `quarter` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `competition_id_fk` (`competition_id`),
  KEY `company_id_fk` (`company_id`),
  CONSTRAINT `company_id_fk` FOREIGN KEY (`company_id`) REFERENCES `company` (`company_id`),
  CONSTRAINT `competition_id_fk` FOREIGN KEY (`competition_id`) REFERENCES `competition` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of inner-stock
-- ----------------------------

-- ----------------------------
-- Table structure for manage
-- ----------------------------
DROP TABLE IF EXISTS `manage`;
CREATE TABLE `manage` (
  `id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `manage_admin_fk` (`admin_id`),
  KEY `manage_teacher_fk` (`teacher_id`),
  CONSTRAINT `manage_admin_fk` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`),
  CONSTRAINT `manage_teacher_fk` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of manage
-- ----------------------------
INSERT INTO `manage` VALUES ('1', '1', '1', '123@qq.com', '123456');
INSERT INTO `manage` VALUES ('2', '1', '1', '1', '111');
INSERT INTO `manage` VALUES ('3', '1', '1', '1', '111111');

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
-- Table structure for member
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member` (
  `member_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `company_id` int(11) NOT NULL,
  PRIMARY KEY (`member_id`),
  KEY `company_id` (`company_id`),
  CONSTRAINT `member_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `company` (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member
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
INSERT INTO `personal_goal_info` VALUES ('1', '项目1', '标题1');
INSERT INTO `personal_goal_info` VALUES ('2', '项目2', '标题1');
INSERT INTO `personal_goal_info` VALUES ('3', '项目3', '标题1');
INSERT INTO `personal_goal_info` VALUES ('4', '项目4', '标题1');
INSERT INTO `personal_goal_info` VALUES ('5', '项目5', '标题2');
INSERT INTO `personal_goal_info` VALUES ('6', '项目6', '标题2');
INSERT INTO `personal_goal_info` VALUES ('7', '项目7', '标题2');
INSERT INTO `personal_goal_info` VALUES ('8', '项目8', '标题2');

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
-- Table structure for product_info
-- ----------------------------
DROP TABLE IF EXISTS `product_info`;
CREATE TABLE `product_info` (
  `id` int(11) NOT NULL,
  `detail` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product_info
-- ----------------------------
INSERT INTO `product_info` VALUES ('1', '基本组件', '必备', '53');
INSERT INTO `product_info` VALUES ('2', '移动', '运营商', '80');
INSERT INTO `product_info` VALUES ('3', '联通', '运营商', '80');
INSERT INTO `product_info` VALUES ('4', '电信', '运营商', '80');
INSERT INTO `product_info` VALUES ('5', '全网通', '运营商', '120');
INSERT INTO `product_info` VALUES ('6', '支持蓝牙传输', '蓝牙', '30');
INSERT INTO `product_info` VALUES ('7', '4.7寸', '屏幕尺寸', '60');
INSERT INTO `product_info` VALUES ('8', '5.0寸', '屏幕尺寸', '70');
INSERT INTO `product_info` VALUES ('9', '5.2寸', '屏幕尺寸', '80');
INSERT INTO `product_info` VALUES ('10', '5.5寸', '屏幕尺寸', '90');
INSERT INTO `product_info` VALUES ('11', '电容屏', '触控方式', '111');
INSERT INTO `product_info` VALUES ('12', '电阻屏', '触控方式', '222');
INSERT INTO `product_info` VALUES ('13', '初级', '处理器速度', '121');
INSERT INTO `product_info` VALUES ('14', '中级', '处理器速度', '131');
INSERT INTO `product_info` VALUES ('15', '高级', '处理器速度', '141');
INSERT INTO `product_info` VALUES ('16', '16G', '机身容量', '122');
INSERT INTO `product_info` VALUES ('17', '32G', '机身容量', '132');
INSERT INTO `product_info` VALUES ('18', '64G', '机身容量', '142');
INSERT INTO `product_info` VALUES ('19', '128G', '机身容量', '152');
INSERT INTO `product_info` VALUES ('20', '800W', '拍照像素', '115');
INSERT INTO `product_info` VALUES ('21', '1300W', '拍照像素', '125');
INSERT INTO `product_info` VALUES ('22', '1500W', '拍照像素', '135');
INSERT INTO `product_info` VALUES ('23', '防尘/防水/防摔', '机身特性', '111');
INSERT INTO `product_info` VALUES ('24', '轻薄美观', '机身特性', '111');
INSERT INTO `product_info` VALUES ('25', '双卡双待', '机身特性', '111');
INSERT INTO `product_info` VALUES ('26', '1800mAh', '电池容量', '143');
INSERT INTO `product_info` VALUES ('27', '2300mAh', '电池容量', '153');
INSERT INTO `product_info` VALUES ('28', '3000mAh', '电池容量', '163');
INSERT INTO `product_info` VALUES ('29', 'GPS定位', '其他功能', '88');
INSERT INTO `product_info` VALUES ('30', '指纹识别', '其他功能', '88');
INSERT INTO `product_info` VALUES ('31', '提供数据保护', '其他功能', '88');
INSERT INTO `product_info` VALUES ('32', '手机管家', '其他功能', '88');
INSERT INTO `product_info` VALUES ('33', '二维码扫描', '其他功能', '88');

-- ----------------------------
-- Table structure for sale-tech
-- ----------------------------
DROP TABLE IF EXISTS `sale-tech`;
CREATE TABLE `sale-tech` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `topic` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `importance` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sale-tech
-- ----------------------------

-- ----------------------------
-- Table structure for staffwage
-- ----------------------------
DROP TABLE IF EXISTS `staffwage`;
CREATE TABLE `staffwage` (
  `id` int(11) NOT NULL,
  `competition_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `salary` float(10,2) DEFAULT NULL,
  `iahf` float(10,2) DEFAULT NULL,
  `vocation` varchar(255) DEFAULT NULL,
  `welfare` float(10,2) DEFAULT NULL,
  `pension` float(10,2) DEFAULT NULL,
  `quarter` int(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of staffwage
-- ----------------------------

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
INSERT INTO `strategy_info` VALUES ('1', '做市场份额方面的领先者', '竞争能力');
INSERT INTO `strategy_info` VALUES ('2', '做利润率方面的领先者', '竞争能力');
INSERT INTO `strategy_info` VALUES ('3', '提供最优的售后服务', '竞争能力');
INSERT INTO `strategy_info` VALUES ('5', '重点关注规模较大、成本较高的区域市场', '区域市场');
INSERT INTO `strategy_info` VALUES ('6', '重点关注规模适中、成本适中的区域市场', '区域市场');
INSERT INTO `strategy_info` VALUES ('7', '重点关注销售成本最小的区域市场', '区域市场');
INSERT INTO `strategy_info` VALUES ('8', 'xxx1', 'xxx');
INSERT INTO `strategy_info` VALUES ('9', 'xxx2', 'xxx');
INSERT INTO `strategy_info` VALUES ('10', 'xxx3', 'xxx');
INSERT INTO `strategy_info` VALUES ('11', 'aaa1', 'aaaa');

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
  `postcode` varchar(255) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=201700002 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('1', 'teacher', '123@qq.com', '123', '上海理工大学', '教授', '123456789', '上海', '10001', '', '', '');
INSERT INTO `teacher` VALUES ('2', 'kirito', '111@qq.com', '456', 'sao', '教授', '123456', '北京', '10000', '', '', '');
INSERT INTO `teacher` VALUES ('3', 'aaa', 'bbb', 'ccc', 'ddd', 'eee', '111111', 'hhh', null, null, null, null);
INSERT INTO `teacher` VALUES ('201700001', 'bbb', 'bbb', 'bbb', 'bbb', 'bbb', '123456', 'shanghai', '10002', null, null, null);

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
-- Table structure for test
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test
-- ----------------------------
INSERT INTO `test` VALUES ('1', 'bbb');
INSERT INTO `test` VALUES ('2', 'bbb,ccc');
INSERT INTO `test` VALUES ('3', 'bbb,ccc,ddd');
INSERT INTO `test` VALUES ('4', 'bbb,ccc');

-- ----------------------------
-- Table structure for usage_info
-- ----------------------------
DROP TABLE IF EXISTS `usage_info`;
CREATE TABLE `usage_info` (
  `id` int(11) NOT NULL,
  `detail` varchar(50) NOT NULL,
  `practical` int(11) NOT NULL,
  `perfect` int(11) NOT NULL,
  `business` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usage_info
-- ----------------------------
INSERT INTO `usage_info` VALUES ('1', '手机管家', '115', '123', '126');
INSERT INTO `usage_info` VALUES ('2', '文件管理', '100', '120', '117');
INSERT INTO `usage_info` VALUES ('3', '备忘录', '133', '109', '115');
INSERT INTO `usage_info` VALUES ('4', '收音机', '120', '119', '107');
INSERT INTO `usage_info` VALUES ('5', 'xxxxx', '111', '123', '99');
