/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50622
Source Host           : localhost:3306
Source Database       : studyfoxshop

Target Server Type    : MYSQL
Target Server Version : 50622
File Encoding         : 65001

Date: 2015-03-11 21:00:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `studyfox_ad`
-- ----------------------------
DROP TABLE IF EXISTS `studyfox_ad`;
CREATE TABLE `studyfox_ad` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `cat_id` smallint(6) NOT NULL,
  `ad_name` varchar(60) NOT NULL,
  `ad_type` tinyint(3) NOT NULL,
  `ad_img` varchar(100) NOT NULL,
  `ad_position` tinyint(3) NOT NULL,
  `ad_link` varchar(100) DEFAULT '',
  `ad_count` int(11) NOT NULL DEFAULT '0',
  `ad_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `ad_sort` smallint(6) NOT NULL,
  `ad_show` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of studyfox_ad
-- ----------------------------
INSERT INTO `studyfox_ad` VALUES ('1', '1', '特价好书', '2', '1-1.jpg', '1', '#', '0', '1', '1', '1');
INSERT INTO `studyfox_ad` VALUES ('2', '1', '好看超实惠', '2', '1-2.jpg', '1', '#', '0', '1', '2', '1');
INSERT INTO `studyfox_ad` VALUES ('3', '130', '好电视集体大跳水', '2', '130-1.jpg', '1', '#', '0', '1', '1', '1');
INSERT INTO `studyfox_ad` VALUES ('4', '130', '孝心在重阳', '2', '130-2.jpg', '1', '#', '0', '1', '2', '1');
INSERT INTO `studyfox_ad` VALUES ('5', '76', '带着相机出发', '2', '76-1.jpg', '1', '#', '0', '1', '1', '1');
INSERT INTO `studyfox_ad` VALUES ('6', '76', '值得购买手机推荐', '2', '76-2.jpg', '1', '#', '0', '1', '2', '1');
INSERT INTO `studyfox_ad` VALUES ('7', '131', '电脑数码10月看点', '2', '131-1.jpg', '1', '#', '0', '1', '1', '1');
INSERT INTO `studyfox_ad` VALUES ('8', '131', '惠普电脑', '2', '131-2.jpg', '1', '#', '0', '1', '2', '1');
INSERT INTO `studyfox_ad` VALUES ('9', '132', '双十家纺亿元让利', '2', '132-1.jpg', '1', '#', '0', '1', '1', '1');
INSERT INTO `studyfox_ad` VALUES ('10', '132', '纳出新空间', '2', '132-2.jpg', '1', '#', '0', '1', '2', '1');
INSERT INTO `studyfox_ad` VALUES ('11', '133', '时尚服装独享', '2', '133-1.jpg', '1', '#', '0', '1', '1', '1');
INSERT INTO `studyfox_ad` VALUES ('12', '133', '国际运动大牌', '2', '133-2.jpg', '1', '#', '0', '1', '2', '1');
INSERT INTO `studyfox_ad` VALUES ('13', '134', '逆龄肌肤保卫站', '2', '134-1.jpg', '1', '#', '0', '1', '1', '1');
INSERT INTO `studyfox_ad` VALUES ('14', '134', '10.10美妆预热', '2', '134-2.jpg', '1', '#', '0', '1', '2', '1');
INSERT INTO `studyfox_ad` VALUES ('15', '135', '箱包全场满减', '2', '135-1.jpg', '1', '#', '0', '1', '1', '1');
INSERT INTO `studyfox_ad` VALUES ('16', '135', '每日一秒', '2', '135-2.jpg', '1', '#', '0', '1', '2', '1');
INSERT INTO `studyfox_ad` VALUES ('17', '136', '运动户外', '2', '136-1.jpg', '1', '#', '0', '1', '1', '1');
INSERT INTO `studyfox_ad` VALUES ('18', '136', 'IKU妈咪瑜伽垫', '2', '136-2.jpg', '1', '#', '0', '1', '2', '1');
INSERT INTO `studyfox_ad` VALUES ('19', '137', '新车主手册', '2', '137-1.jpg', '1', '#', '0', '1', '1', '1');
INSERT INTO `studyfox_ad` VALUES ('20', '137', '新意生活精品秋冬', '2', '137-2.jpg', '1', '#', '0', '1', '2', '1');
INSERT INTO `studyfox_ad` VALUES ('21', '138', '土豪驾到', '2', '138-1.jpg', '1', '#', '0', '1', '1', '1');
INSERT INTO `studyfox_ad` VALUES ('22', '138', '双十季母婴专场', '2', '138-2.jpg', '1', '#', '0', '1', '2', '1');
INSERT INTO `studyfox_ad` VALUES ('23', '139', '啤酒清仓季', '2', '139-1.jpg', '1', '#', '0', '1', '1', '1');
INSERT INTO `studyfox_ad` VALUES ('24', '139', '美食尽在双十季', '2', '139-2.jpg', '1', '#', '0', '1', '2', '1');
INSERT INTO `studyfox_ad` VALUES ('25', '140', '电信50/100面值', '2', '140-1.jpg', '1', '#', '0', '1', '1', '1');
INSERT INTO `studyfox_ad` VALUES ('26', '140', '酒店5折封顶', '2', '140-2.jpg', '1', '#', '0', '1', '2', '1');
INSERT INTO `studyfox_ad` VALUES ('27', '0', '幻灯片001', '3', '20131018001.jpg', '2', '#', '0', '1', '1', '1');
INSERT INTO `studyfox_ad` VALUES ('28', '0', '幻灯片002', '3', '20131018002.jpg', '2', '#', '0', '1', '2', '1');
INSERT INTO `studyfox_ad` VALUES ('29', '0', '幻灯片003', '3', '20131018003.jpg', '2', '#', '0', '1', '3', '1');
INSERT INTO `studyfox_ad` VALUES ('30', '0', '幻灯片004', '3', '20131018004.jpg', '2', '#', '0', '1', '4', '1');
INSERT INTO `studyfox_ad` VALUES ('31', '0', '幻灯片005', '3', '20131018005.jpg', '2', '#', '0', '1', '5', '1');
INSERT INTO `studyfox_ad` VALUES ('32', '0', '幻灯片006', '3', '20131018006.jpg', '2', '#', '0', '1', '6', '1');
INSERT INTO `studyfox_ad` VALUES ('33', '0', '滚动幻灯片001', '2', 'scroll01.jpg', '3', '#', '0', '1', '1', '1');
INSERT INTO `studyfox_ad` VALUES ('34', '0', '滚动幻灯片002', '2', 'scroll02.jpg', '3', '#', '0', '1', '2', '1');
INSERT INTO `studyfox_ad` VALUES ('35', '0', '滚动幻灯片003', '2', 'scroll03.jpg', '3', '#', '0', '1', '3', '1');
INSERT INTO `studyfox_ad` VALUES ('36', '0', '滚动幻灯片004', '2', 'scroll04.jpg', '3', '#', '0', '1', '4', '1');
INSERT INTO `studyfox_ad` VALUES ('37', '0', '滚动幻灯片005', '2', 'scroll05.jpg', '3', '#', '0', '1', '5', '1');
INSERT INTO `studyfox_ad` VALUES ('38', '0', '滚动幻灯片006', '2', 'scroll06.jpg', '3', '#', '0', '1', '6', '1');
INSERT INTO `studyfox_ad` VALUES ('39', '0', '滚动幻灯片007', '2', 'scroll07.jpg', '3', '#', '0', '1', '7', '1');
INSERT INTO `studyfox_ad` VALUES ('40', '0', '滚动幻灯片008', '2', 'scroll08.jpg', '3', '#', '0', '1', '8', '1');
INSERT INTO `studyfox_ad` VALUES ('41', '0', '滚动幻灯片009', '2', 'scroll09.jpg', '3', '#', '0', '1', '9', '1');
INSERT INTO `studyfox_ad` VALUES ('42', '0', '首页随机广告1', '2', 'random001.jpg', '4', '#', '0', '1', '1', '1');
INSERT INTO `studyfox_ad` VALUES ('43', '0', '首页随机广告2', '2', 'random002.jpg', '4', '#', '0', '1', '2', '1');
INSERT INTO `studyfox_ad` VALUES ('44', '0', '首页随机广告3', '2', 'random003.jpg', '4', '#', '0', '1', '3', '1');

-- ----------------------------
-- Table structure for `studyfox_article`
-- ----------------------------
DROP TABLE IF EXISTS `studyfox_article`;
CREATE TABLE `studyfox_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(150) NOT NULL,
  `content` longtext,
  `article_type` tinyint(3) NOT NULL,
  `add_time` int(11) NOT NULL,
  `article_link` varchar(100) DEFAULT '',
  `article_sort` smallint(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of studyfox_article
-- ----------------------------
INSERT INTO `studyfox_article` VALUES ('1', '高夫职业套装京东首发', '1111', '1', '1368782671', '', '1');
INSERT INTO `studyfox_article` VALUES ('2', '联想yoga2 pro独家首发', '111', '1', '1368782671', '', '2');
INSERT INTO `studyfox_article` VALUES ('3', '关于假冒京东客服诈骗的', '111', '1', '1368782671', '', '3');
INSERT INTO `studyfox_article` VALUES ('4', '家纺400-80下单送好礼', '1111', '1', '1368782671', '', '4');
INSERT INTO `studyfox_article` VALUES ('5', '健康饮食 全场低至5折', '111', '1', '1368782671', '', '5');
INSERT INTO `studyfox_article` VALUES ('6', '10月值得购买手机惠', '111', '1', '1368782671', '', '6');
INSERT INTO `studyfox_article` VALUES ('7', '美国倍宜5折起送50元券', '111', '1', '1368782671', '', '7');
INSERT INTO `studyfox_article` VALUES ('8', '电脑数码双11预热开启', '1111', '1', '1368782671', '', '8');

-- ----------------------------
-- Table structure for `studyfox_auth_group`
-- ----------------------------
DROP TABLE IF EXISTS `studyfox_auth_group`;
CREATE TABLE `studyfox_auth_group` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `rules` varchar(80) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of studyfox_auth_group
-- ----------------------------
INSERT INTO `studyfox_auth_group` VALUES ('1', '雪狐会员', '1', '');
INSERT INTO `studyfox_auth_group` VALUES ('2', '雪狐VIP会员', '1', '21,22,24');

-- ----------------------------
-- Table structure for `studyfox_auth_group_access`
-- ----------------------------
DROP TABLE IF EXISTS `studyfox_auth_group_access`;
CREATE TABLE `studyfox_auth_group_access` (
  `uid` mediumint(8) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  KEY `uid` (`uid`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of studyfox_auth_group_access
-- ----------------------------
INSERT INTO `studyfox_auth_group_access` VALUES ('2', '1');
INSERT INTO `studyfox_auth_group_access` VALUES ('9', '2');
INSERT INTO `studyfox_auth_group_access` VALUES ('113', '2');
INSERT INTO `studyfox_auth_group_access` VALUES ('115', '1');
INSERT INTO `studyfox_auth_group_access` VALUES ('115', '2');
INSERT INTO `studyfox_auth_group_access` VALUES ('116', '1');
INSERT INTO `studyfox_auth_group_access` VALUES ('117', '1');
INSERT INTO `studyfox_auth_group_access` VALUES ('118', '1');
INSERT INTO `studyfox_auth_group_access` VALUES ('119', '1');
INSERT INTO `studyfox_auth_group_access` VALUES ('120', '1');
INSERT INTO `studyfox_auth_group_access` VALUES ('121', '1');
INSERT INTO `studyfox_auth_group_access` VALUES ('122', '1');

-- ----------------------------
-- Table structure for `studyfox_auth_rule`
-- ----------------------------
DROP TABLE IF EXISTS `studyfox_auth_rule`;
CREATE TABLE `studyfox_auth_rule` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(80) NOT NULL DEFAULT '',
  `title` char(20) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `condition` char(100) NOT NULL DEFAULT '',
  `pid` smallint(6) DEFAULT NULL,
  `level` tinyint(1) DEFAULT NULL,
  `isnavshow` tinyint(1) DEFAULT NULL,
  `sort` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of studyfox_auth_rule
-- ----------------------------
INSERT INTO `studyfox_auth_rule` VALUES ('1', 'admin-user-index', '会员列表', '1', '', '15', '3', '1', '1');
INSERT INTO `studyfox_auth_rule` VALUES ('2', 'admin-user-rank', '会员等级', '1', '', '15', '3', '1', '2');
INSERT INTO `studyfox_auth_rule` VALUES ('3', 'admin-index-index', '后台首页', '1', '', '14', '3', '0', '1');
INSERT INTO `studyfox_auth_rule` VALUES ('5', 'admin-authrule-index', '规则管理', '1', '', '16', '3', '1', '1');
INSERT INTO `studyfox_auth_rule` VALUES ('13', 'admin', '主菜单', '1', '', '0', '1', '1', '1');
INSERT INTO `studyfox_auth_rule` VALUES ('14', 'admin-index', '后台首页模块', '1', '', '13', '2', '0', '1');
INSERT INTO `studyfox_auth_rule` VALUES ('15', 'admin-user', '会员管理', '1', '', '13', '2', '1', '2');
INSERT INTO `studyfox_auth_rule` VALUES ('16', 'admin-authrule', '权限管理', '1', '', '13', '2', '1', '3');
INSERT INTO `studyfox_auth_rule` VALUES ('17', 'admin-authgroup-index', '用户组管理', '1', '', '16', '3', '1', '2');
INSERT INTO `studyfox_auth_rule` VALUES ('21', 'index', '网站前台', '1', '', '0', null, '1', '0');
INSERT INTO `studyfox_auth_rule` VALUES ('22', 'index-index', '前台模块', '1', '', '21', null, '1', '1');
INSERT INTO `studyfox_auth_rule` VALUES ('24', 'index-index-index', '前台页面', '1', '1', '22', null, '1', '1');

-- ----------------------------
-- Table structure for `studyfox_brand`
-- ----------------------------
DROP TABLE IF EXISTS `studyfox_brand`;
CREATE TABLE `studyfox_brand` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `cat_id` smallint(6) NOT NULL,
  `brand_name` varchar(60) NOT NULL,
  `brand_logo` varchar(100) DEFAULT NULL,
  `brand_remark` text,
  `brand_url` varchar(100) DEFAULT NULL,
  `brand_show` tinyint(1) NOT NULL DEFAULT '1',
  `brand_sort` smallint(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=197 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of studyfox_brand
-- ----------------------------
INSERT INTO `studyfox_brand` VALUES ('1', '1', '中华书局', null, null, null, '1', '1');
INSERT INTO `studyfox_brand` VALUES ('2', '1', '人民邮电出版社', null, null, null, '1', '2');
INSERT INTO `studyfox_brand` VALUES ('3', '1', '上海世纪出版股份有限公司', null, null, null, '1', '3');
INSERT INTO `studyfox_brand` VALUES ('4', '1', '电子工业出版社', null, null, null, '1', '4');
INSERT INTO `studyfox_brand` VALUES ('5', '1', '三联书店', null, null, null, '1', '5');
INSERT INTO `studyfox_brand` VALUES ('6', '1', '浙江少年儿童出版社', null, null, null, '1', '6');
INSERT INTO `studyfox_brand` VALUES ('7', '1', '人民文学出版社', null, null, null, '1', '7');
INSERT INTO `studyfox_brand` VALUES ('8', '1', '外语教学与研究出版社', null, null, null, '1', '8');
INSERT INTO `studyfox_brand` VALUES ('9', '1', '中信出版社', null, null, null, '1', '9');
INSERT INTO `studyfox_brand` VALUES ('10', '1', '化学工业出版社', null, null, null, '1', '10');
INSERT INTO `studyfox_brand` VALUES ('11', '1', '北京大学出版社', null, null, null, '1', '11');
INSERT INTO `studyfox_brand` VALUES ('12', '130', '飞利浦旗舰店', null, null, null, '1', '1');
INSERT INTO `studyfox_brand` VALUES ('13', '130', '奔腾旗舰店', null, null, null, '1', '2');
INSERT INTO `studyfox_brand` VALUES ('14', '130', '苏泊尔旗舰店', null, null, null, '1', '3');
INSERT INTO `studyfox_brand` VALUES ('15', '130', 'ACA旗舰店', null, null, null, '1', '4');
INSERT INTO `studyfox_brand` VALUES ('16', '130', '九阳旗舰店', null, null, null, '1', '5');
INSERT INTO `studyfox_brand` VALUES ('17', '130', '康佳旗舰店', null, null, null, '1', '6');
INSERT INTO `studyfox_brand` VALUES ('18', '130', '贝尔莱德专场', null, null, null, '1', '7');
INSERT INTO `studyfox_brand` VALUES ('19', '130', 'LG旗舰店', null, null, null, '1', '8');
INSERT INTO `studyfox_brand` VALUES ('20', '130', '东菱旗舰店', null, null, null, '1', '9');
INSERT INTO `studyfox_brand` VALUES ('21', '130', '海尔统帅旗舰店', null, null, null, '1', '10');
INSERT INTO `studyfox_brand` VALUES ('22', '130', '飞科旗舰店', null, null, null, '1', '11');
INSERT INTO `studyfox_brand` VALUES ('23', '130', '小熊旗舰店', null, null, null, '1', '12');
INSERT INTO `studyfox_brand` VALUES ('24', '76', '索尼', null, null, null, '1', '1');
INSERT INTO `studyfox_brand` VALUES ('25', '76', '尼康', null, null, null, '1', '2');
INSERT INTO `studyfox_brand` VALUES ('26', '76', '好易通', null, null, null, '1', '3');
INSERT INTO `studyfox_brand` VALUES ('27', '76', '苹果', null, null, null, '1', '4');
INSERT INTO `studyfox_brand` VALUES ('28', '76', '卡西欧', null, null, null, '1', '5');
INSERT INTO `studyfox_brand` VALUES ('29', '76', '魅族', null, null, null, '1', '6');
INSERT INTO `studyfox_brand` VALUES ('30', '76', '诺基亚', null, null, null, '1', '7');
INSERT INTO `studyfox_brand` VALUES ('31', '76', '华为', null, null, null, '1', '8');
INSERT INTO `studyfox_brand` VALUES ('32', '76', '联想', null, null, null, '1', '9');
INSERT INTO `studyfox_brand` VALUES ('33', '76', '中国联通', null, null, null, '1', '10');
INSERT INTO `studyfox_brand` VALUES ('34', '76', '北京电信', null, null, null, '1', '11');
INSERT INTO `studyfox_brand` VALUES ('35', '76', '中国移动', null, null, null, '1', '12');
INSERT INTO `studyfox_brand` VALUES ('36', '131', '得力旗舰店', null, null, null, '1', '13');
INSERT INTO `studyfox_brand` VALUES ('37', '131', '宏碁旗舰店', null, null, null, '1', '14');
INSERT INTO `studyfox_brand` VALUES ('38', '131', '神舟旗舰店', null, null, null, '1', '15');
INSERT INTO `studyfox_brand` VALUES ('39', '131', 'HP旗舰店', null, null, null, '1', '16');
INSERT INTO `studyfox_brand` VALUES ('40', '131', '清华同方旗舰店', null, null, null, '1', '17');
INSERT INTO `studyfox_brand` VALUES ('41', '131', 'ThinkPad旗舰店', null, null, null, '1', '18');
INSERT INTO `studyfox_brand` VALUES ('42', '131', '齐心旗舰店', null, null, null, '1', '19');
INSERT INTO `studyfox_brand` VALUES ('43', '131', '微软旗舰店', null, null, null, '1', '20');
INSERT INTO `studyfox_brand` VALUES ('44', '131', 'TP-LINK 旗舰店', null, null, null, '1', '21');
INSERT INTO `studyfox_brand` VALUES ('45', '131', '罗技旗舰店', null, null, null, '1', '22');
INSERT INTO `studyfox_brand` VALUES ('46', '132', '欧司朗', null, null, null, '1', '1');
INSERT INTO `studyfox_brand` VALUES ('47', '132', 'PHILIPS飞利浦', null, null, null, '1', '2');
INSERT INTO `studyfox_brand` VALUES ('48', '132', '罗莱家纺', null, null, null, '1', '3');
INSERT INTO `studyfox_brand` VALUES ('49', '132', '多喜爱家纺', null, null, null, '1', '4');
INSERT INTO `studyfox_brand` VALUES ('50', '132', '欧普照明', null, null, null, '1', '5');
INSERT INTO `studyfox_brand` VALUES ('51', '132', '富安娜', null, null, null, '1', '6');
INSERT INTO `studyfox_brand` VALUES ('52', '132', '爱斯基摩人', null, null, null, '1', '7');
INSERT INTO `studyfox_brand` VALUES ('53', '132', '乐扣乐扣', null, null, null, '1', '8');
INSERT INTO `studyfox_brand` VALUES ('54', '132', '三光云彩', null, null, null, '1', '9');
INSERT INTO `studyfox_brand` VALUES ('55', '132', '九洲鹿', null, null, null, '1', '10');
INSERT INTO `studyfox_brand` VALUES ('56', '132', '博洋家纺', null, null, null, '1', '11');
INSERT INTO `studyfox_brand` VALUES ('57', '132', '茂盛年华', null, null, null, '1', '12');
INSERT INTO `studyfox_brand` VALUES ('58', '132', '恒源祥', null, null, null, '1', '13');
INSERT INTO `studyfox_brand` VALUES ('59', '132', 'SIMELO', null, null, null, '1', '14');
INSERT INTO `studyfox_brand` VALUES ('60', '132', '依铂雷司', null, null, null, '1', '15');
INSERT INTO `studyfox_brand` VALUES ('61', '132', '玛克家纺', null, null, null, '1', '16');
INSERT INTO `studyfox_brand` VALUES ('62', '132', '曲美家具', null, null, null, '1', '17');
INSERT INTO `studyfox_brand` VALUES ('63', '132', '家世比', null, null, null, '1', '18');
INSERT INTO `studyfox_brand` VALUES ('64', '133', '杰克琼斯', null, null, null, '1', '1');
INSERT INTO `studyfox_brand` VALUES ('65', '133', 'Tommy Hilfiger', null, null, null, '1', '2');
INSERT INTO `studyfox_brand` VALUES ('66', '133', '亚狮龙', null, null, null, '1', '3');
INSERT INTO `studyfox_brand` VALUES ('67', '133', '佐丹奴', null, null, null, '1', '4');
INSERT INTO `studyfox_brand` VALUES ('68', '133', '裂帛', null, null, null, '1', '5');
INSERT INTO `studyfox_brand` VALUES ('69', '133', 'ESPRIT', null, null, null, '1', '6');
INSERT INTO `studyfox_brand` VALUES ('70', '133', 'Vero Moda', null, null, null, '1', '7');
INSERT INTO `studyfox_brand` VALUES ('71', '133', '歌莉娅', null, null, null, '1', '8');
INSERT INTO `studyfox_brand` VALUES ('72', '133', 'Aimer爱慕', null, null, null, '1', '9');
INSERT INTO `studyfox_brand` VALUES ('73', '133', '安莉芳', null, null, null, '1', '10');
INSERT INTO `studyfox_brand` VALUES ('74', '133', 'Nike耐克', null, null, null, '1', '11');
INSERT INTO `studyfox_brand` VALUES ('75', '133', 'LI-NING李宁', null, null, null, '1', '12');
INSERT INTO `studyfox_brand` VALUES ('76', '133', 'CAMEL 骆驼', null, null, null, '1', '13');
INSERT INTO `studyfox_brand` VALUES ('77', '133', 'Aokang奥康', null, null, null, '1', '14');
INSERT INTO `studyfox_brand` VALUES ('78', '133', 'ME&CITY', null, null, null, '1', '15');
INSERT INTO `studyfox_brand` VALUES ('79', '133', '百丽', null, null, null, '1', '16');
INSERT INTO `studyfox_brand` VALUES ('80', '133', '九牧王', null, null, null, '1', '17');
INSERT INTO `studyfox_brand` VALUES ('81', '133', '韩都衣舍', null, null, null, '1', '18');
INSERT INTO `studyfox_brand` VALUES ('82', '134', 'Clinique倩碧', null, null, null, '1', '1');
INSERT INTO `studyfox_brand` VALUES ('83', '134', '欧莱雅', null, null, null, '1', '2');
INSERT INTO `studyfox_brand` VALUES ('84', '134', '玉兰油', null, null, null, '1', '3');
INSERT INTO `studyfox_brand` VALUES ('85', '134', '珀莱雅', null, null, null, '1', '4');
INSERT INTO `studyfox_brand` VALUES ('86', '134', '资生堂', null, null, null, '1', '5');
INSERT INTO `studyfox_brand` VALUES ('87', '134', '梦妆', null, null, null, '1', '6');
INSERT INTO `studyfox_brand` VALUES ('88', '134', '百雀羚', null, null, null, '1', '7');
INSERT INTO `studyfox_brand` VALUES ('89', '134', 'NIVEA妮维雅', null, null, null, '1', '8');
INSERT INTO `studyfox_brand` VALUES ('90', '134', 'DIOR迪奥', null, null, null, '1', '9');
INSERT INTO `studyfox_brand` VALUES ('91', '134', '曼秀雷敦', null, null, null, '1', '10');
INSERT INTO `studyfox_brand` VALUES ('92', '134', '露得清', null, null, null, '1', '11');
INSERT INTO `studyfox_brand` VALUES ('93', '134', '雅诗兰黛', null, null, null, '1', '12');
INSERT INTO `studyfox_brand` VALUES ('94', '134', '高夫', null, null, null, '1', '13');
INSERT INTO `studyfox_brand` VALUES ('95', '134', '韩后', null, null, null, '1', '14');
INSERT INTO `studyfox_brand` VALUES ('96', '134', '圣荷', null, null, null, '1', '15');
INSERT INTO `studyfox_brand` VALUES ('97', '134', '虞文萱', null, null, null, '1', '16');
INSERT INTO `studyfox_brand` VALUES ('98', '134', '温碧泉', null, null, null, '1', '17');
INSERT INTO `studyfox_brand` VALUES ('99', '134', '比度克', null, null, null, '1', '18');
INSERT INTO `studyfox_brand` VALUES ('100', '135', 'ELLE(她）', null, null, null, '1', '1');
INSERT INTO `studyfox_brand` VALUES ('101', '135', '瑞士军刀威戈', null, null, null, '1', '2');
INSERT INTO `studyfox_brand` VALUES ('102', '135', '美旅箱包', null, null, null, '1', '3');
INSERT INTO `studyfox_brand` VALUES ('103', '135', '外交官', null, null, null, '1', '4');
INSERT INTO `studyfox_brand` VALUES ('104', '135', '老人头', null, null, null, '1', '5');
INSERT INTO `studyfox_brand` VALUES ('105', '135', '迪士尼', null, null, null, '1', '6');
INSERT INTO `studyfox_brand` VALUES ('106', '135', '蔻丹', null, null, null, '1', '7');
INSERT INTO `studyfox_brand` VALUES ('107', '135', '皮尔卡丹', null, null, null, '1', '8');
INSERT INTO `studyfox_brand` VALUES ('108', '135', 'Zippo', null, null, null, '1', '9');
INSERT INTO `studyfox_brand` VALUES ('109', '135', '维氏瑞士军刀', null, null, null, '1', '10');
INSERT INTO `studyfox_brand` VALUES ('110', '135', '中国黄金', null, null, null, '1', '11');
INSERT INTO `studyfox_brand` VALUES ('111', '135', '派克', null, null, null, '1', '12');
INSERT INTO `studyfox_brand` VALUES ('112', '135', '七匹狼', null, null, null, '1', '13');
INSERT INTO `studyfox_brand` VALUES ('113', '135', '稻草人', null, null, null, '1', '14');
INSERT INTO `studyfox_brand` VALUES ('114', '135', '鳄鱼恤', null, null, null, '1', '15');
INSERT INTO `studyfox_brand` VALUES ('115', '135', '派保爵', null, null, null, '1', '16');
INSERT INTO `studyfox_brand` VALUES ('116', '135', '周大福', null, null, null, '1', '17');
INSERT INTO `studyfox_brand` VALUES ('117', '135', '周大生', null, null, null, '1', '18');
INSERT INTO `studyfox_brand` VALUES ('118', '136', '岱宇跑步机旗舰店', null, null, null, '1', '1');
INSERT INTO `studyfox_brand` VALUES ('119', '136', '斯伯丁篮球旗舰店', null, null, null, '1', '2');
INSERT INTO `studyfox_brand` VALUES ('120', '136', '舒华官方旗舰店', null, null, null, '1', '3');
INSERT INTO `studyfox_brand` VALUES ('121', '136', '远阳旗舰店', null, null, null, '1', '4');
INSERT INTO `studyfox_brand` VALUES ('122', '136', '红舞鞋旗舰店', null, null, null, '1', '5');
INSERT INTO `studyfox_brand` VALUES ('123', '136', '永久旗舰店', null, null, null, '1', '6');
INSERT INTO `studyfox_brand` VALUES ('124', '136', '米高轮滑', null, null, null, '1', '7');
INSERT INTO `studyfox_brand` VALUES ('125', '136', '悍马自行车旗舰店', null, null, null, '1', '8');
INSERT INTO `studyfox_brand` VALUES ('126', '136', '麦斯卡体育旗舰店', null, null, null, '1', '9');
INSERT INTO `studyfox_brand` VALUES ('127', '136', '杜蕾斯旗舰店', null, null, null, '1', '10');
INSERT INTO `studyfox_brand` VALUES ('128', '136', '创悦健身旗舰店', null, null, null, '1', '11');
INSERT INTO `studyfox_brand` VALUES ('129', '136', '冈本旗舰店', null, null, null, '1', '12');
INSERT INTO `studyfox_brand` VALUES ('130', '136', '倍轻松旗舰店', null, null, null, '1', '13');
INSERT INTO `studyfox_brand` VALUES ('131', '136', '三夫户外旗舰店', null, null, null, '1', '14');
INSERT INTO `studyfox_brand` VALUES ('132', '136', 'E奈尔旗舰店', null, null, null, '1', '15');
INSERT INTO `studyfox_brand` VALUES ('133', '136', '添柏岚Timberland', null, null, null, '1', '16');
INSERT INTO `studyfox_brand` VALUES ('134', '136', '凯速运动旗舰店', null, null, null, '1', '17');
INSERT INTO `studyfox_brand` VALUES ('135', '136', '尤尼克斯旗舰店', null, null, null, '1', '18');
INSERT INTO `studyfox_brand` VALUES ('136', '137', '美孚专卖店', null, null, null, '1', '1');
INSERT INTO `studyfox_brand` VALUES ('137', '137', '阿童木专卖店', null, null, null, '1', '2');
INSERT INTO `studyfox_brand` VALUES ('138', '137', '卡饰社专卖店', null, null, null, '1', '3');
INSERT INTO `studyfox_brand` VALUES ('139', '137', '任我游专卖店', null, null, null, '1', '4');
INSERT INTO `studyfox_brand` VALUES ('140', '137', '龟牌专卖店', null, null, null, '1', '5');
INSERT INTO `studyfox_brand` VALUES ('141', '137', '牧宝专卖店', null, null, null, '1', '6');
INSERT INTO `studyfox_brand` VALUES ('142', '137', '博世专卖店', null, null, null, '1', '7');
INSERT INTO `studyfox_brand` VALUES ('143', '137', '力魔专卖店', null, null, null, '1', '8');
INSERT INTO `studyfox_brand` VALUES ('144', '137', '飞利浦专卖店', null, null, null, '1', '9');
INSERT INTO `studyfox_brand` VALUES ('145', '137', '3M 专卖店', null, null, null, '1', '10');
INSERT INTO `studyfox_brand` VALUES ('146', '137', '嘉实多专卖店', null, null, null, '1', '11');
INSERT INTO `studyfox_brand` VALUES ('147', '137', '神行者专卖店', null, null, null, '1', '12');
INSERT INTO `studyfox_brand` VALUES ('148', '137', '尤利特专卖店', null, null, null, '1', '13');
INSERT INTO `studyfox_brand` VALUES ('149', '137', '畅e行专卖店', null, null, null, '1', '14');
INSERT INTO `studyfox_brand` VALUES ('150', '137', '御马清风专卖店', null, null, null, '1', '15');
INSERT INTO `studyfox_brand` VALUES ('151', '137', '华锋e路航旗舰店', null, null, null, '1', '16');
INSERT INTO `studyfox_brand` VALUES ('152', '137', '善领车品专营店', null, null, null, '1', '17');
INSERT INTO `studyfox_brand` VALUES ('153', '137', '酷斯特旗舰店', null, null, null, '1', '18');
INSERT INTO `studyfox_brand` VALUES ('154', '138', '可瑞康旗舰店', null, null, null, '1', '1');
INSERT INTO `studyfox_brand` VALUES ('155', '138', '强生婴儿旗舰店', null, null, null, '1', '2');
INSERT INTO `studyfox_brand` VALUES ('156', '138', '五羊旗舰店', null, null, null, '1', '3');
INSERT INTO `studyfox_brand` VALUES ('157', '138', '乐儿宝旗舰店', null, null, null, '1', '4');
INSERT INTO `studyfox_brand` VALUES ('158', '138', '妙思乐旗舰店', null, null, null, '1', '5');
INSERT INTO `studyfox_brand` VALUES ('159', '138', '好奇铂金装', null, null, null, '1', '6');
INSERT INTO `studyfox_brand` VALUES ('160', '138', '贝安宝旗舰店', null, null, null, '1', '7');
INSERT INTO `studyfox_brand` VALUES ('161', '138', '好孩子旗舰店', null, null, null, '1', '8');
INSERT INTO `studyfox_brand` VALUES ('162', '138', '新安怡旗舰店', null, null, null, '1', '9');
INSERT INTO `studyfox_brand` VALUES ('163', '138', '雅培旗舰店', null, null, null, '1', '10');
INSERT INTO `studyfox_brand` VALUES ('164', '138', '多美滋旗舰店', null, null, null, '1', '11');
INSERT INTO `studyfox_brand` VALUES ('165', '138', '雅氏旗舰店', null, null, null, '1', '12');
INSERT INTO `studyfox_brand` VALUES ('166', '138', '帮宝适品牌区', null, null, null, '1', '13');
INSERT INTO `studyfox_brand` VALUES ('167', '138', '花王品牌区', null, null, null, '1', '14');
INSERT INTO `studyfox_brand` VALUES ('168', '138', 'Britax宝得适', null, null, null, '1', '15');
INSERT INTO `studyfox_brand` VALUES ('169', '138', '大王品牌区', null, null, null, '1', '16');
INSERT INTO `studyfox_brand` VALUES ('170', '138', '创盟母婴旗舰店', null, null, null, '1', '17');
INSERT INTO `studyfox_brand` VALUES ('171', '138', '贝豪婴童', null, null, null, '1', '18');
INSERT INTO `studyfox_brand` VALUES ('172', '139', '自然之宝', null, null, null, '1', '1');
INSERT INTO `studyfox_brand` VALUES ('173', '139', '茅台', null, null, null, '1', '2');
INSERT INTO `studyfox_brand` VALUES ('174', '139', '益昌旗舰店', null, null, null, '1', '3');
INSERT INTO `studyfox_brand` VALUES ('175', '139', 'GNC 健安喜', null, null, null, '1', '4');
INSERT INTO `studyfox_brand` VALUES ('176', '139', '汤臣倍健', null, null, null, '1', '5');
INSERT INTO `studyfox_brand` VALUES ('177', '139', '零食多', null, null, null, '1', '6');
INSERT INTO `studyfox_brand` VALUES ('178', '139', '泸州老窖', null, null, null, '1', '7');
INSERT INTO `studyfox_brand` VALUES ('179', '139', '剑南春', null, null, null, '1', '8');
INSERT INTO `studyfox_brand` VALUES ('180', '139', '郎酒', null, null, null, '1', '9');
INSERT INTO `studyfox_brand` VALUES ('181', '139', '葡萄酒', null, null, null, '1', '10');
INSERT INTO `studyfox_brand` VALUES ('182', '139', '塔牌黄酒', null, null, null, '1', '11');
INSERT INTO `studyfox_brand` VALUES ('183', '139', '好利来', null, null, null, '1', '12');
INSERT INTO `studyfox_brand` VALUES ('184', '139', '茶人岭旗舰店', null, null, null, '1', '13');
INSERT INTO `studyfox_brand` VALUES ('185', '139', '暖民蜂蜜', null, null, null, '1', '14');
INSERT INTO `studyfox_brand` VALUES ('186', '139', '普济仁堂', null, null, null, '1', '15');
INSERT INTO `studyfox_brand` VALUES ('187', '139', '康比特', null, null, null, '1', '16');
INSERT INTO `studyfox_brand` VALUES ('188', '139', '绿A', null, null, null, '1', '17');
INSERT INTO `studyfox_brand` VALUES ('189', '139', '自然源泉', null, null, null, '1', '18');
INSERT INTO `studyfox_brand` VALUES ('190', '140', '门票狂欢月，10元门票疯抢！', null, null, null, '1', '1');
INSERT INTO `studyfox_brand` VALUES ('191', '140', '机票超值享，最高直降325元！', null, null, null, '1', '2');
INSERT INTO `studyfox_brand` VALUES ('192', '140', '买车险，送500元加油卡！', null, null, null, '1', '3');
INSERT INTO `studyfox_brand` VALUES ('193', '140', '超值韩国首尔自由行1999元抢！', null, null, null, '1', '4');
INSERT INTO `studyfox_brand` VALUES ('194', '140', '擂台风云争霸，街机强势来袭！', null, null, null, '1', '5');
INSERT INTO `studyfox_brand` VALUES ('195', '140', '3180元享北京至新加坡机票!', null, null, null, '1', '6');
INSERT INTO `studyfox_brand` VALUES ('196', '140', '手机缴费不出门，省钱又省心！', null, null, null, '1', '7');

-- ----------------------------
-- Table structure for `studyfox_category`
-- ----------------------------
DROP TABLE IF EXISTS `studyfox_category`;
CREATE TABLE `studyfox_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(255) NOT NULL,
  `cat_pid` int(11) NOT NULL,
  `cat_level` tinyint(1) NOT NULL,
  `is_show` tinyint(1) NOT NULL,
  `cat_sort` smallint(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1002 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of studyfox_category
-- ----------------------------
INSERT INTO `studyfox_category` VALUES ('1', '图片、音像、数字商品', '0', '1', '1', '1');
INSERT INTO `studyfox_category` VALUES ('2', '电子书', '1', '2', '1', '1');
INSERT INTO `studyfox_category` VALUES ('3', '免费', '2', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('4', '小说', '2', '3', '1', '2');
INSERT INTO `studyfox_category` VALUES ('5', '励志与成功', '2', '3', '1', '3');
INSERT INTO `studyfox_category` VALUES ('6', '婚恋/两性', '2', '3', '1', '4');
INSERT INTO `studyfox_category` VALUES ('7', '文学', '2', '3', '1', '5');
INSERT INTO `studyfox_category` VALUES ('8', '经管', '2', '3', '1', '6');
INSERT INTO `studyfox_category` VALUES ('9', '畅读VIP', '2', '3', '1', '7');
INSERT INTO `studyfox_category` VALUES ('10', '数字音乐', '1', '2', '1', '2');
INSERT INTO `studyfox_category` VALUES ('11', '通俗流行', '10', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('12', '古典音乐', '10', '3', '1', '2');
INSERT INTO `studyfox_category` VALUES ('13', '摇滚说唱', '10', '3', '1', '3');
INSERT INTO `studyfox_category` VALUES ('14', '爵士蓝调', '10', '3', '1', '4');
INSERT INTO `studyfox_category` VALUES ('15', '乡村民谣', '10', '3', '1', '5');
INSERT INTO `studyfox_category` VALUES ('16', '有声读物', '10', '3', '1', '6');
INSERT INTO `studyfox_category` VALUES ('17', '音像', '1', '2', '1', '3');
INSERT INTO `studyfox_category` VALUES ('18', '音乐', '17', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('19', '影视', '17', '3', '1', '2');
INSERT INTO `studyfox_category` VALUES ('20', '教育音像', '17', '3', '1', '3');
INSERT INTO `studyfox_category` VALUES ('21', '游戏', '17', '3', '1', '4');
INSERT INTO `studyfox_category` VALUES ('22', '文艺', '1', '2', '1', '4');
INSERT INTO `studyfox_category` VALUES ('23', '小说', '22', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('24', '文学', '22', '3', '1', '2');
INSERT INTO `studyfox_category` VALUES ('25', '青春文学', '22', '3', '1', '3');
INSERT INTO `studyfox_category` VALUES ('26', '传记', '22', '3', '1', '4');
INSERT INTO `studyfox_category` VALUES ('27', '艺术', '22', '3', '1', '5');
INSERT INTO `studyfox_category` VALUES ('28', '人文社科', '1', '2', '1', '5');
INSERT INTO `studyfox_category` VALUES ('29', '历史', '28', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('30', '心理学', '28', '3', '1', '2');
INSERT INTO `studyfox_category` VALUES ('31', '政治/军事', '28', '3', '1', '3');
INSERT INTO `studyfox_category` VALUES ('32', '国家/古籍', '28', '3', '1', '4');
INSERT INTO `studyfox_category` VALUES ('33', '哲学/宗教', '28', '3', '1', '5');
INSERT INTO `studyfox_category` VALUES ('34', '社会科学', '28', '3', '1', '6');
INSERT INTO `studyfox_category` VALUES ('35', '经管励志', '1', '2', '1', '6');
INSERT INTO `studyfox_category` VALUES ('36', '经济', '35', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('37', '金融与投资', '35', '3', '1', '2');
INSERT INTO `studyfox_category` VALUES ('38', '管理', '35', '3', '1', '3');
INSERT INTO `studyfox_category` VALUES ('39', '励志与成功', '35', '3', '1', '4');
INSERT INTO `studyfox_category` VALUES ('40', '生活', '1', '2', '1', '7');
INSERT INTO `studyfox_category` VALUES ('41', '家庭与育儿', '40', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('42', '旅游/地图', '40', '3', '1', '2');
INSERT INTO `studyfox_category` VALUES ('43', '烹饪/美食', '40', '3', '1', '3');
INSERT INTO `studyfox_category` VALUES ('44', '时尚/美妆', '40', '3', '1', '4');
INSERT INTO `studyfox_category` VALUES ('45', '家居', '40', '3', '1', '5');
INSERT INTO `studyfox_category` VALUES ('46', '婚恋与两性', '40', '3', '1', '6');
INSERT INTO `studyfox_category` VALUES ('47', '娱乐/休闲', '40', '3', '1', '7');
INSERT INTO `studyfox_category` VALUES ('48', '健身与保健', '40', '3', '1', '8');
INSERT INTO `studyfox_category` VALUES ('49', '动漫/幽默', '40', '3', '1', '9');
INSERT INTO `studyfox_category` VALUES ('50', '体育/运动', '40', '3', '1', '10');
INSERT INTO `studyfox_category` VALUES ('51', '科技', '1', '2', '1', '8');
INSERT INTO `studyfox_category` VALUES ('52', '科普', '51', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('53', 'IT', '51', '3', '1', '2');
INSERT INTO `studyfox_category` VALUES ('54', '建筑', '51', '3', '1', '3');
INSERT INTO `studyfox_category` VALUES ('55', '医学', '51', '3', '1', '4');
INSERT INTO `studyfox_category` VALUES ('56', '工业技术', '51', '3', '1', '5');
INSERT INTO `studyfox_category` VALUES ('57', '电子/通信', '51', '3', '1', '6');
INSERT INTO `studyfox_category` VALUES ('58', '农林', '51', '3', '1', '7');
INSERT INTO `studyfox_category` VALUES ('59', '科学与自然', '51', '3', '1', '8');
INSERT INTO `studyfox_category` VALUES ('60', '少儿', '1', '2', '1', '9');
INSERT INTO `studyfox_category` VALUES ('61', '少儿', '60', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('62', '0-2岁', '60', '3', '1', '2');
INSERT INTO `studyfox_category` VALUES ('63', '3-6岁', '60', '3', '1', '3');
INSERT INTO `studyfox_category` VALUES ('64', '7-10岁', '60', '3', '1', '4');
INSERT INTO `studyfox_category` VALUES ('65', '11-14岁', '60', '3', '1', '5');
INSERT INTO `studyfox_category` VALUES ('66', '教育', '1', '2', '1', '10');
INSERT INTO `studyfox_category` VALUES ('67', '教材教辅', '66', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('68', '考试', '66', '3', '1', '2');
INSERT INTO `studyfox_category` VALUES ('69', '外语学习', '66', '3', '1', '3');
INSERT INTO `studyfox_category` VALUES ('70', '其它', '1', '2', '1', '11');
INSERT INTO `studyfox_category` VALUES ('71', '英文原版书', '70', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('72', '港台图书', '70', '3', '1', '2');
INSERT INTO `studyfox_category` VALUES ('73', '工具书', '70', '3', '1', '3');
INSERT INTO `studyfox_category` VALUES ('74', '套装书', '70', '3', '1', '4');
INSERT INTO `studyfox_category` VALUES ('75', '杂志/期刊', '70', '3', '1', '5');
INSERT INTO `studyfox_category` VALUES ('76', '手机、数码', '0', '1', '1', '3');
INSERT INTO `studyfox_category` VALUES ('77', '手机通讯', '76', '2', '1', '1');
INSERT INTO `studyfox_category` VALUES ('78', '手机', '77', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('79', '对讲机', '77', '3', '1', '2');
INSERT INTO `studyfox_category` VALUES ('80', '运营商', '76', '2', '1', '2');
INSERT INTO `studyfox_category` VALUES ('81', '购机送费', '80', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('82', '0元购机', '80', '3', '1', '2');
INSERT INTO `studyfox_category` VALUES ('83', '选号入网', '80', '3', '1', '3');
INSERT INTO `studyfox_category` VALUES ('84', '手机配件', '76', '2', '1', '3');
INSERT INTO `studyfox_category` VALUES ('85', '电池', '84', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('86', '蓝牙耳机', '84', '3', '1', '2');
INSERT INTO `studyfox_category` VALUES ('87', '充电器/数据线', '84', '3', '1', '3');
INSERT INTO `studyfox_category` VALUES ('88', '手机耳机', '84', '3', '1', '4');
INSERT INTO `studyfox_category` VALUES ('89', '贴膜', '84', '3', '1', '5');
INSERT INTO `studyfox_category` VALUES ('90', '存储卡', '84', '3', '1', '6');
INSERT INTO `studyfox_category` VALUES ('91', '保护套', '84', '3', '1', '7');
INSERT INTO `studyfox_category` VALUES ('92', '车载', '84', '3', '1', '8');
INSERT INTO `studyfox_category` VALUES ('93', 'iPhone配件', '84', '3', '1', '9');
INSERT INTO `studyfox_category` VALUES ('94', '其它配件', '84', '3', '1', '10');
INSERT INTO `studyfox_category` VALUES ('95', '摄影摄像', '76', '2', '1', '4');
INSERT INTO `studyfox_category` VALUES ('96', '数据相机', '95', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('97', '单电/微单相机', '95', '3', '1', '2');
INSERT INTO `studyfox_category` VALUES ('98', '单反相机', '95', '3', '1', '3');
INSERT INTO `studyfox_category` VALUES ('99', '摄像机', '95', '3', '1', '4');
INSERT INTO `studyfox_category` VALUES ('100', '拍立得', '95', '3', '1', '5');
INSERT INTO `studyfox_category` VALUES ('101', '镜头', '95', '3', '1', '6');
INSERT INTO `studyfox_category` VALUES ('102', '数码配件', '76', '2', '1', '5');
INSERT INTO `studyfox_category` VALUES ('103', '存储卡', '102', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('104', '读卡器', '102', '3', '1', '2');
INSERT INTO `studyfox_category` VALUES ('105', '滤镜', '102', '3', '1', '3');
INSERT INTO `studyfox_category` VALUES ('106', '闪光灯/手柄', '102', '3', '1', '4');
INSERT INTO `studyfox_category` VALUES ('107', '相机包', '102', '3', '1', '5');
INSERT INTO `studyfox_category` VALUES ('108', '三脚架/云台', '102', '3', '1', '6');
INSERT INTO `studyfox_category` VALUES ('109', '相机清洁', '102', '3', '1', '7');
INSERT INTO `studyfox_category` VALUES ('110', '相机贴膜', '102', '3', '1', '8');
INSERT INTO `studyfox_category` VALUES ('111', '机身附件', '102', '3', '1', '9');
INSERT INTO `studyfox_category` VALUES ('112', '镜头附件', '102', '3', '1', '10');
INSERT INTO `studyfox_category` VALUES ('113', '电池/充电器', '102', '3', '1', '11');
INSERT INTO `studyfox_category` VALUES ('114', '移动电源', '102', '3', '1', '12');
INSERT INTO `studyfox_category` VALUES ('115', '时尚影音', '76', '2', '1', '6');
INSERT INTO `studyfox_category` VALUES ('116', 'MP3/MP4', '115', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('117', '智能设备', '115', '3', '1', '2');
INSERT INTO `studyfox_category` VALUES ('118', '耳机/耳麦', '115', '3', '1', '3');
INSERT INTO `studyfox_category` VALUES ('119', '音箱', '115', '3', '1', '4');
INSERT INTO `studyfox_category` VALUES ('120', '高清播放器', '115', '3', '1', '5');
INSERT INTO `studyfox_category` VALUES ('121', '电子书', '115', '3', '1', '6');
INSERT INTO `studyfox_category` VALUES ('122', '电子词典', '115', '3', '1', '7');
INSERT INTO `studyfox_category` VALUES ('123', 'MP3/MP4配件', '115', '3', '1', '8');
INSERT INTO `studyfox_category` VALUES ('124', '录音笔', '115', '3', '1', '9');
INSERT INTO `studyfox_category` VALUES ('125', '麦克风', '115', '3', '1', '10');
INSERT INTO `studyfox_category` VALUES ('126', '专业音频', '115', '3', '1', '11');
INSERT INTO `studyfox_category` VALUES ('127', '电子教育', '115', '3', '1', '12');
INSERT INTO `studyfox_category` VALUES ('128', '数码相框', '115', '3', '1', '13');
INSERT INTO `studyfox_category` VALUES ('129', '苹果配件', '115', '3', '1', '14');
INSERT INTO `studyfox_category` VALUES ('130', '家用电器', '0', '1', '1', '2');
INSERT INTO `studyfox_category` VALUES ('131', '电脑、办公', '0', '1', '1', '4');
INSERT INTO `studyfox_category` VALUES ('132', '家居、家具、家装、厨具', '0', '1', '1', '5');
INSERT INTO `studyfox_category` VALUES ('133', '服饰鞋帽', '0', '1', '1', '6');
INSERT INTO `studyfox_category` VALUES ('134', '个护化妆', '0', '1', '1', '7');
INSERT INTO `studyfox_category` VALUES ('135', '礼品箱包、钟表、珠宝', '0', '1', '1', '8');
INSERT INTO `studyfox_category` VALUES ('136', '运动健康', '0', '1', '1', '9');
INSERT INTO `studyfox_category` VALUES ('137', '汽车用品', '0', '1', '1', '10');
INSERT INTO `studyfox_category` VALUES ('138', '母婴、玩具乐器', '0', '1', '1', '11');
INSERT INTO `studyfox_category` VALUES ('139', '食品饮料、保健食品', '0', '1', '1', '12');
INSERT INTO `studyfox_category` VALUES ('140', '彩票、旅行、充值、票务', '0', '1', '1', '13');
INSERT INTO `studyfox_category` VALUES ('141', '大家电', '130', '2', '1', '1');
INSERT INTO `studyfox_category` VALUES ('142', '平板电视', '141', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('143', '空调', '141', '3', '1', '2');
INSERT INTO `studyfox_category` VALUES ('144', '冰箱', '141', '3', '1', '3');
INSERT INTO `studyfox_category` VALUES ('145', '洗衣机', '141', '3', '1', '4');
INSERT INTO `studyfox_category` VALUES ('146', '家庭影院', '141', '3', '1', '5');
INSERT INTO `studyfox_category` VALUES ('147', 'DVD', '141', '3', '1', '6');
INSERT INTO `studyfox_category` VALUES ('148', '迷你音响', '141', '3', '1', '7');
INSERT INTO `studyfox_category` VALUES ('149', '烟机/灶具', '141', '3', '1', '8');
INSERT INTO `studyfox_category` VALUES ('150', '热水器', '141', '3', '1', '9');
INSERT INTO `studyfox_category` VALUES ('151', '消毒柜/洗碗机', '141', '3', '1', '10');
INSERT INTO `studyfox_category` VALUES ('152', '酒柜/冷柜', '141', '3', '1', '11');
INSERT INTO `studyfox_category` VALUES ('153', '家电配件', '141', '3', '1', '12');
INSERT INTO `studyfox_category` VALUES ('154', '生活电器', '130', '2', '1', '2');
INSERT INTO `studyfox_category` VALUES ('155', '厨房电器', '130', '2', '1', '3');
INSERT INTO `studyfox_category` VALUES ('156', '个护健康', '130', '2', '1', '4');
INSERT INTO `studyfox_category` VALUES ('157', '五金家装', '130', '2', '1', '5');
INSERT INTO `studyfox_category` VALUES ('158', '取暖电器', '154', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('159', '加湿器', '154', '3', '1', '2');
INSERT INTO `studyfox_category` VALUES ('160', '净化器', '154', '3', '1', '3');
INSERT INTO `studyfox_category` VALUES ('161', '除湿/干衣机', '154', '3', '1', '4');
INSERT INTO `studyfox_category` VALUES ('162', '饮水机', '154', '3', '1', '5');
INSERT INTO `studyfox_category` VALUES ('163', '净水设备', '154', '3', '1', '6');
INSERT INTO `studyfox_category` VALUES ('164', '挂烫机/熨斗', '154', '3', '1', '7');
INSERT INTO `studyfox_category` VALUES ('165', '吸尘器', '154', '3', '1', '8');
INSERT INTO `studyfox_category` VALUES ('166', '电话机', '154', '3', '1', '9');
INSERT INTO `studyfox_category` VALUES ('167', '插座', '154', '3', '1', '10');
INSERT INTO `studyfox_category` VALUES ('168', '收录/音机', '154', '3', '1', '11');
INSERT INTO `studyfox_category` VALUES ('169', '清洁机', '154', '3', '1', '12');
INSERT INTO `studyfox_category` VALUES ('170', '电风扇', '154', '3', '1', '13');
INSERT INTO `studyfox_category` VALUES ('171', '冷风扇', '154', '3', '1', '14');
INSERT INTO `studyfox_category` VALUES ('172', '其它生活电器', '154', '3', '1', '15');
INSERT INTO `studyfox_category` VALUES ('173', '电压力锅', '155', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('174', '电饭煲', '155', '3', '1', '2');
INSERT INTO `studyfox_category` VALUES ('175', '豆浆机', '155', '3', '1', '3');
INSERT INTO `studyfox_category` VALUES ('176', '面包机', '155', '3', '1', '4');
INSERT INTO `studyfox_category` VALUES ('177', '咖啡机', '155', '3', '1', '5');
INSERT INTO `studyfox_category` VALUES ('178', '微波炉', '155', '3', '1', '6');
INSERT INTO `studyfox_category` VALUES ('179', '料理/榨汁机', '155', '3', '1', '7');
INSERT INTO `studyfox_category` VALUES ('180', '电烤箱', '155', '3', '1', '8');
INSERT INTO `studyfox_category` VALUES ('181', '电磁炉', '155', '3', '1', '9');
INSERT INTO `studyfox_category` VALUES ('182', '电饼铛/烧烤盘', '155', '3', '1', '10');
INSERT INTO `studyfox_category` VALUES ('183', '煮蛋器', '155', '3', '1', '11');
INSERT INTO `studyfox_category` VALUES ('184', '酸奶机', '155', '3', '1', '12');
INSERT INTO `studyfox_category` VALUES ('185', '电水壶/热水瓶', '155', '3', '1', '13');
INSERT INTO `studyfox_category` VALUES ('186', '电炖锅', '155', '3', '1', '14');
INSERT INTO `studyfox_category` VALUES ('187', '多用途锅', '155', '3', '1', '15');
INSERT INTO `studyfox_category` VALUES ('188', '果蔬解毒机', '155', '3', '1', '16');
INSERT INTO `studyfox_category` VALUES ('189', '其它厨房电器', '155', '3', '1', '17');
INSERT INTO `studyfox_category` VALUES ('190', '剃须刀', '156', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('191', '剃/脱毛器', '156', '3', '1', '2');
INSERT INTO `studyfox_category` VALUES ('192', '口腔护理', '156', '3', '1', '3');
INSERT INTO `studyfox_category` VALUES ('193', '电吹风', '156', '3', '1', '4');
INSERT INTO `studyfox_category` VALUES ('194', '美容', '156', '3', '1', '5');
INSERT INTO `studyfox_category` VALUES ('195', '美发', '156', '3', '1', '6');
INSERT INTO `studyfox_category` VALUES ('196', '按摩器', '156', '3', '1', '7');
INSERT INTO `studyfox_category` VALUES ('197', '按摩椅', '156', '3', '1', '8');
INSERT INTO `studyfox_category` VALUES ('198', '足浴盆', '156', '3', '1', '9');
INSERT INTO `studyfox_category` VALUES ('199', '血压计', '156', '3', '1', '10');
INSERT INTO `studyfox_category` VALUES ('200', '健康秤/厨房秤', '156', '3', '1', '11');
INSERT INTO `studyfox_category` VALUES ('201', '血糖仪', '156', '3', '1', '12');
INSERT INTO `studyfox_category` VALUES ('202', '体温计', '156', '3', '1', '13');
INSERT INTO `studyfox_category` VALUES ('203', '计步器/脂肪检测仪', '156', '3', '1', '14');
INSERT INTO `studyfox_category` VALUES ('204', '其它健康电器', '156', '3', '1', '15');
INSERT INTO `studyfox_category` VALUES ('205', '电动工具', '157', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('206', '手动工具', '157', '3', '1', '2');
INSERT INTO `studyfox_category` VALUES ('207', '仪器仪表', '157', '3', '1', '3');
INSERT INTO `studyfox_category` VALUES ('208', '浴霸/排气扇', '157', '3', '1', '4');
INSERT INTO `studyfox_category` VALUES ('209', '灯具', '157', '3', '1', '5');
INSERT INTO `studyfox_category` VALUES ('210', 'LED灯', '157', '3', '1', '6');
INSERT INTO `studyfox_category` VALUES ('211', '洁身器', '157', '3', '1', '7');
INSERT INTO `studyfox_category` VALUES ('212', '水槽', '157', '3', '1', '8');
INSERT INTO `studyfox_category` VALUES ('213', '龙头', '157', '3', '1', '9');
INSERT INTO `studyfox_category` VALUES ('214', '淋浴花洒', '157', '3', '1', '10');
INSERT INTO `studyfox_category` VALUES ('215', '厨卫五金', '157', '3', '1', '11');
INSERT INTO `studyfox_category` VALUES ('216', '家具五金', '157', '3', '1', '12');
INSERT INTO `studyfox_category` VALUES ('217', '门铃', '157', '3', '1', '13');
INSERT INTO `studyfox_category` VALUES ('218', '电气开关', '157', '3', '1', '14');
INSERT INTO `studyfox_category` VALUES ('219', '插座', '157', '3', '1', '15');
INSERT INTO `studyfox_category` VALUES ('220', '电工电料', '157', '3', '1', '16');
INSERT INTO `studyfox_category` VALUES ('221', '监控安防', '157', '3', '1', '17');
INSERT INTO `studyfox_category` VALUES ('222', '电线/线缆', '157', '3', '1', '18');
INSERT INTO `studyfox_category` VALUES ('223', '电脑整机', '131', '2', '1', '1');
INSERT INTO `studyfox_category` VALUES ('224', '电脑配件', '131', '2', '1', '2');
INSERT INTO `studyfox_category` VALUES ('225', '外设产品', '131', '2', '1', '3');
INSERT INTO `studyfox_category` VALUES ('226', '网络产品', '131', '2', '1', '4');
INSERT INTO `studyfox_category` VALUES ('227', '办公打印', '131', '2', '1', '5');
INSERT INTO `studyfox_category` VALUES ('228', '办公文仪', '131', '2', '1', '6');
INSERT INTO `studyfox_category` VALUES ('229', '服务产品', '131', '2', '1', '7');
INSERT INTO `studyfox_category` VALUES ('230', '笔记本', '223', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('231', '超极本', '223', '3', '1', '2');
INSERT INTO `studyfox_category` VALUES ('232', '游戏本', '223', '3', '1', '3');
INSERT INTO `studyfox_category` VALUES ('233', '平板电脑', '223', '3', '1', '4');
INSERT INTO `studyfox_category` VALUES ('234', '平板电脑配件', '223', '3', '1', '5');
INSERT INTO `studyfox_category` VALUES ('235', '台式机', '223', '3', '1', '6');
INSERT INTO `studyfox_category` VALUES ('236', '服务器', '223', '3', '1', '7');
INSERT INTO `studyfox_category` VALUES ('237', '笔记本配件', '223', '3', '1', '8');
INSERT INTO `studyfox_category` VALUES ('238', 'CPU', '224', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('239', '主板', '224', '3', '1', '2');
INSERT INTO `studyfox_category` VALUES ('240', '显卡', '224', '3', '1', '3');
INSERT INTO `studyfox_category` VALUES ('241', '硬盘', '224', '3', '1', '4');
INSERT INTO `studyfox_category` VALUES ('242', '内存', '224', '3', '1', '5');
INSERT INTO `studyfox_category` VALUES ('243', '机箱', '224', '3', '1', '6');
INSERT INTO `studyfox_category` VALUES ('244', '电源', '224', '3', '1', '7');
INSERT INTO `studyfox_category` VALUES ('245', '显示器', '224', '3', '1', '8');
INSERT INTO `studyfox_category` VALUES ('246', '刻录机/光驱', '224', '3', '1', '9');
INSERT INTO `studyfox_category` VALUES ('247', '声卡/扩展卡', '224', '3', '1', '10');
INSERT INTO `studyfox_category` VALUES ('248', '散热器', '224', '3', '1', '11');
INSERT INTO `studyfox_category` VALUES ('249', '装机配件', '224', '3', '1', '12');
INSERT INTO `studyfox_category` VALUES ('250', '鼠标', '225', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('251', '键盘', '225', '3', '1', '2');
INSERT INTO `studyfox_category` VALUES ('252', '游戏设备', '225', '3', '1', '3');
INSERT INTO `studyfox_category` VALUES ('253', 'U盘', '225', '3', '1', '4');
INSERT INTO `studyfox_category` VALUES ('254', '移动硬盘', '225', '3', '1', '5');
INSERT INTO `studyfox_category` VALUES ('255', '电视盒', '225', '3', '1', '6');
INSERT INTO `studyfox_category` VALUES ('256', '摄像头', '225', '3', '1', '7');
INSERT INTO `studyfox_category` VALUES ('257', '线缆', '225', '3', '1', '8');
INSERT INTO `studyfox_category` VALUES ('258', '鼠标垫', '225', '3', '1', '9');
INSERT INTO `studyfox_category` VALUES ('259', '手写板', '225', '3', '1', '10');
INSERT INTO `studyfox_category` VALUES ('260', '外置盒', '225', '3', '1', '11');
INSERT INTO `studyfox_category` VALUES ('261', '电脑工具', '225', '3', '1', '12');
INSERT INTO `studyfox_category` VALUES ('262', '电脑清洁', '225', '3', '1', '13');
INSERT INTO `studyfox_category` VALUES ('263', 'UPS', '225', '3', '1', '14');
INSERT INTO `studyfox_category` VALUES ('264', '插座', '225', '3', '1', '15');
INSERT INTO `studyfox_category` VALUES ('265', '路由器', '226', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('266', '网卡', '226', '3', '1', '2');
INSERT INTO `studyfox_category` VALUES ('267', '交换机', '226', '3', '1', '3');
INSERT INTO `studyfox_category` VALUES ('268', '网络存储', '226', '3', '1', '4');
INSERT INTO `studyfox_category` VALUES ('269', '3G上网', '226', '3', '1', '5');
INSERT INTO `studyfox_category` VALUES ('270', '打印机', '227', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('271', '一体机', '227', '3', '1', '2');
INSERT INTO `studyfox_category` VALUES ('272', '投影机', '227', '3', '1', '3');
INSERT INTO `studyfox_category` VALUES ('273', '投影配件', '227', '3', '1', '4');
INSERT INTO `studyfox_category` VALUES ('274', '传真机', '227', '3', '1', '5');
INSERT INTO `studyfox_category` VALUES ('275', '复合机', '227', '3', '1', '6');
INSERT INTO `studyfox_category` VALUES ('276', '碎纸机', '227', '3', '1', '7');
INSERT INTO `studyfox_category` VALUES ('277', '扫描仪', '227', '3', '1', '8');
INSERT INTO `studyfox_category` VALUES ('278', '墨盒', '227', '3', '1', '9');
INSERT INTO `studyfox_category` VALUES ('279', '硒鼓', '227', '3', '1', '10');
INSERT INTO `studyfox_category` VALUES ('280', '墨粉', '227', '3', '1', '11');
INSERT INTO `studyfox_category` VALUES ('281', '色带', '227', '3', '1', '12');
INSERT INTO `studyfox_category` VALUES ('282', '办公文具', '228', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('283', '文件管理', '228', '3', '1', '2');
INSERT INTO `studyfox_category` VALUES ('284', '笔类', '228', '3', '1', '3');
INSERT INTO `studyfox_category` VALUES ('285', '纸类', '228', '3', '1', '4');
INSERT INTO `studyfox_category` VALUES ('286', '本册/便签', '228', '3', '1', '5');
INSERT INTO `studyfox_category` VALUES ('287', '学生文具', '228', '3', '1', '6');
INSERT INTO `studyfox_category` VALUES ('288', '财务用品', '228', '3', '1', '7');
INSERT INTO `studyfox_category` VALUES ('289', '计算器', '228', '3', '1', '8');
INSERT INTO `studyfox_category` VALUES ('290', '激光笔', '228', '3', '1', '9');
INSERT INTO `studyfox_category` VALUES ('291', '白板/封装', '228', '3', '1', '10');
INSERT INTO `studyfox_category` VALUES ('292', '考勤机', '228', '3', '1', '11');
INSERT INTO `studyfox_category` VALUES ('293', '刻录碟片/附件', '228', '3', '1', '12');
INSERT INTO `studyfox_category` VALUES ('294', '点钞机', '228', '3', '1', '13');
INSERT INTO `studyfox_category` VALUES ('295', '支付设备/POS机', '228', '3', '1', '14');
INSERT INTO `studyfox_category` VALUES ('296', '安防监控', '228', '3', '1', '15');
INSERT INTO `studyfox_category` VALUES ('297', '呼叫/会议设备', '228', '3', '1', '16');
INSERT INTO `studyfox_category` VALUES ('298', '保险柜', '228', '3', '1', '17');
INSERT INTO `studyfox_category` VALUES ('299', '办公家具', '228', '3', '1', '18');
INSERT INTO `studyfox_category` VALUES ('300', '上门服务', '229', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('301', '远程服务', '229', '3', '1', '2');
INSERT INTO `studyfox_category` VALUES ('302', '电脑软件', '229', '3', '1', '3');
INSERT INTO `studyfox_category` VALUES ('303', '彩票', '140', '2', '1', '1');
INSERT INTO `studyfox_category` VALUES ('304', '机票', '140', '2', '1', '2');
INSERT INTO `studyfox_category` VALUES ('305', '酒店', '140', '2', '1', '3');
INSERT INTO `studyfox_category` VALUES ('306', '旅行', '140', '2', '1', '4');
INSERT INTO `studyfox_category` VALUES ('307', '充值', '140', '2', '1', '5');
INSERT INTO `studyfox_category` VALUES ('308', '游戏', '140', '2', '1', '6');
INSERT INTO `studyfox_category` VALUES ('309', '票务', '140', '2', '1', '7');
INSERT INTO `studyfox_category` VALUES ('310', '应用商店', '140', '2', '1', '8');
INSERT INTO `studyfox_category` VALUES ('311', '保险', '140', '2', '1', '9');
INSERT INTO `studyfox_category` VALUES ('312', '双色球', '303', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('313', '11选5', '303', '3', '1', '2');
INSERT INTO `studyfox_category` VALUES ('314', '竞彩足球', '303', '3', '1', '3');
INSERT INTO `studyfox_category` VALUES ('315', '北单', '303', '3', '1', '4');
INSERT INTO `studyfox_category` VALUES ('316', '七乐彩', '303', '3', '1', '5');
INSERT INTO `studyfox_category` VALUES ('317', '福彩3D', '303', '3', '1', '6');
INSERT INTO `studyfox_category` VALUES ('318', '快3', '303', '3', '1', '7');
INSERT INTO `studyfox_category` VALUES ('319', '大乐透', '303', '3', '1', '8');
INSERT INTO `studyfox_category` VALUES ('320', '新时时彩', '303', '3', '1', '9');
INSERT INTO `studyfox_category` VALUES ('321', '竞彩篮球', '303', '3', '1', '10');
INSERT INTO `studyfox_category` VALUES ('322', '足彩', '303', '3', '1', '11');
INSERT INTO `studyfox_category` VALUES ('323', '七星彩', '303', '3', '1', '12');
INSERT INTO `studyfox_category` VALUES ('324', '排列三', '303', '3', '1', '13');
INSERT INTO `studyfox_category` VALUES ('325', '更多', '303', '3', '1', '14');
INSERT INTO `studyfox_category` VALUES ('326', '国内机票', '304', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('327', '国内酒店', '305', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('328', '酒店团购', '305', '3', '1', '2');
INSERT INTO `studyfox_category` VALUES ('329', '度假', '306', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('330', '景点', '306', '3', '1', '2');
INSERT INTO `studyfox_category` VALUES ('331', '租车', '306', '3', '1', '3');
INSERT INTO `studyfox_category` VALUES ('332', '旅游团购', '306', '3', '1', '4');
INSERT INTO `studyfox_category` VALUES ('333', '手机充值', '307', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('334', '游戏点卡', '308', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('335', 'QQ充值', '308', '3', '1', '2');
INSERT INTO `studyfox_category` VALUES ('336', '网页游戏', '308', '3', '1', '3');
INSERT INTO `studyfox_category` VALUES ('337', '游戏周边', '308', '3', '1', '4');
INSERT INTO `studyfox_category` VALUES ('338', '电影票', '309', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('339', '演唱会', '309', '3', '1', '2');
INSERT INTO `studyfox_category` VALUES ('340', '话剧/歌剧', '309', '3', '1', '3');
INSERT INTO `studyfox_category` VALUES ('341', '音乐会', '309', '3', '1', '4');
INSERT INTO `studyfox_category` VALUES ('342', '体育赛事', '309', '3', '1', '5');
INSERT INTO `studyfox_category` VALUES ('343', '舞蹈芭蕾', '309', '3', '1', '6');
INSERT INTO `studyfox_category` VALUES ('344', '戏曲综艺', '309', '3', '1', '7');
INSERT INTO `studyfox_category` VALUES ('345', '移动游戏', '310', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('346', '移动软件', '310', '3', '1', '2');
INSERT INTO `studyfox_category` VALUES ('347', '网页应用', '310', '3', '1', '3');
INSERT INTO `studyfox_category` VALUES ('348', '汽车保险', '311', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('349', '意外保险', '311', '3', '1', '2');
INSERT INTO `studyfox_category` VALUES ('350', '健康医疗', '311', '3', '1', '3');
INSERT INTO `studyfox_category` VALUES ('351', '少儿女性', '311', '3', '1', '4');
INSERT INTO `studyfox_category` VALUES ('352', '厨具', '132', '2', '1', '1');
INSERT INTO `studyfox_category` VALUES ('353', '宠物生活', '132', '2', '1', '2');
INSERT INTO `studyfox_category` VALUES ('354', '家纺', '132', '2', '1', '3');
INSERT INTO `studyfox_category` VALUES ('355', '家具', '132', '2', '1', '4');
INSERT INTO `studyfox_category` VALUES ('356', '灯具', '132', '2', '1', '5');
INSERT INTO `studyfox_category` VALUES ('357', '生活日用', '132', '2', '1', '6');
INSERT INTO `studyfox_category` VALUES ('358', '家装软饰', '132', '2', '1', '7');
INSERT INTO `studyfox_category` VALUES ('359', '清洁用品', '132', '2', '1', '8');
INSERT INTO `studyfox_category` VALUES ('360', '家装建材', '132', '2', '1', '9');
INSERT INTO `studyfox_category` VALUES ('361', '烹饪锅具', '352', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('362', '刀剪菜板', '352', '3', '1', '2');
INSERT INTO `studyfox_category` VALUES ('363', '保鲜器皿', '352', '3', '1', '3');
INSERT INTO `studyfox_category` VALUES ('364', '水具酒具', '352', '3', '1', '4');
INSERT INTO `studyfox_category` VALUES ('365', '餐具', '352', '3', '1', '5');
INSERT INTO `studyfox_category` VALUES ('366', '茶具/咖啡具', '352', '3', '1', '6');
INSERT INTO `studyfox_category` VALUES ('367', '宠物主粮', '353', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('368', '宠物零食', '353', '3', '1', '2');
INSERT INTO `studyfox_category` VALUES ('369', '营养品', '353', '3', '1', '3');
INSERT INTO `studyfox_category` VALUES ('370', '家居日用', '353', '3', '1', '4');
INSERT INTO `studyfox_category` VALUES ('371', '玩具服饰', '353', '3', '1', '5');
INSERT INTO `studyfox_category` VALUES ('372', '出行装备', '353', '3', '1', '6');
INSERT INTO `studyfox_category` VALUES ('373', '医护美容', '353', '3', '1', '7');
INSERT INTO `studyfox_category` VALUES ('374', '床品件套', '354', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('375', '被子', '354', '3', '1', '2');
INSERT INTO `studyfox_category` VALUES ('376', '枕芯枕套', '354', '3', '1', '3');
INSERT INTO `studyfox_category` VALUES ('377', '床单被罩', '354', '3', '1', '4');
INSERT INTO `studyfox_category` VALUES ('378', '毛巾被/毯', '354', '3', '1', '5');
INSERT INTO `studyfox_category` VALUES ('379', '床垫/床褥', '354', '3', '1', '6');
INSERT INTO `studyfox_category` VALUES ('380', '蚊帐/凉席', '354', '3', '1', '7');
INSERT INTO `studyfox_category` VALUES ('381', '抱枕坐垫', '354', '3', '1', '8');
INSERT INTO `studyfox_category` VALUES ('382', '毛巾家纺', '354', '3', '1', '9');
INSERT INTO `studyfox_category` VALUES ('383', '电热毯', '354', '3', '1', '10');
INSERT INTO `studyfox_category` VALUES ('384', '窗帘/窗纱', '354', '3', '1', '11');
INSERT INTO `studyfox_category` VALUES ('385', '酒店用品', '354', '3', '1', '12');
INSERT INTO `studyfox_category` VALUES ('386', '卧室家具', '355', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('387', '客厅家具', '355', '3', '1', '2');
INSERT INTO `studyfox_category` VALUES ('388', '餐厅家具', '355', '3', '1', '3');
INSERT INTO `studyfox_category` VALUES ('389', '书房家具', '355', '3', '1', '4');
INSERT INTO `studyfox_category` VALUES ('390', '储物家具', '355', '3', '1', '5');
INSERT INTO `studyfox_category` VALUES ('391', '阳台/户外', '355', '3', '1', '6');
INSERT INTO `studyfox_category` VALUES ('392', '商业办公', '355', '3', '1', '7');
INSERT INTO `studyfox_category` VALUES ('393', '床', '355', '3', '1', '8');
INSERT INTO `studyfox_category` VALUES ('394', '床垫', '355', '3', '1', '9');
INSERT INTO `studyfox_category` VALUES ('395', '精品沙发', '355', '3', '1', '10');
INSERT INTO `studyfox_category` VALUES ('396', '电脑桌/托盘/椅', '355', '3', '1', '11');
INSERT INTO `studyfox_category` VALUES ('397', '台灯', '356', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('398', '节能灯', '356', '3', '1', '2');
INSERT INTO `studyfox_category` VALUES ('399', '装饰灯', '356', '3', '1', '3');
INSERT INTO `studyfox_category` VALUES ('400', '多用灯', '356', '3', '1', '4');
INSERT INTO `studyfox_category` VALUES ('401', '手电', '356', '3', '1', '5');
INSERT INTO `studyfox_category` VALUES ('402', 'LED灯', '356', '3', '1', '6');
INSERT INTO `studyfox_category` VALUES ('403', '吸顶灯', '356', '3', '1', '7');
INSERT INTO `studyfox_category` VALUES ('404', '五金电器', '356', '3', '1', '8');
INSERT INTO `studyfox_category` VALUES ('405', '氛围照明', '356', '3', '1', '9');
INSERT INTO `studyfox_category` VALUES ('406', '吊灯', '356', '3', '1', '10');
INSERT INTO `studyfox_category` VALUES ('407', '收纳用品', '357', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('408', '雨伞雨具', '357', '3', '1', '2');
INSERT INTO `studyfox_category` VALUES ('409', '浴室用品', '357', '3', '1', '3');
INSERT INTO `studyfox_category` VALUES ('410', '缝纫用品', '357', '3', '1', '4');
INSERT INTO `studyfox_category` VALUES ('411', '洗晒用品', '357', '3', '1', '5');
INSERT INTO `studyfox_category` VALUES ('412', '净化除味', '357', '3', '1', '6');
INSERT INTO `studyfox_category` VALUES ('413', '桌布/罩件', '358', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('414', '地毯地垫', '358', '3', '1', '2');
INSERT INTO `studyfox_category` VALUES ('415', '沙发垫套', '358', '3', '1', '3');
INSERT INTO `studyfox_category` VALUES ('416', '相框/相片墙', '358', '3', '1', '4');
INSERT INTO `studyfox_category` VALUES ('417', '墙画墙贴', '358', '3', '1', '5');
INSERT INTO `studyfox_category` VALUES ('418', '节庆饰品', '358', '3', '1', '6');
INSERT INTO `studyfox_category` VALUES ('419', '手工/十字绣', '358', '3', '1', '7');
INSERT INTO `studyfox_category` VALUES ('420', '工艺摆件', '358', '3', '1', '8');
INSERT INTO `studyfox_category` VALUES ('421', '其他', '358', '3', '1', '9');
INSERT INTO `studyfox_category` VALUES ('422', '纸品湿巾', '359', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('423', '衣物清洁', '359', '3', '1', '2');
INSERT INTO `studyfox_category` VALUES ('424', '清洁工具', '359', '3', '1', '3');
INSERT INTO `studyfox_category` VALUES ('425', '驱虫用品', '359', '3', '1', '4');
INSERT INTO `studyfox_category` VALUES ('426', '居室清洁', '359', '3', '1', '5');
INSERT INTO `studyfox_category` VALUES ('427', '皮具护理', '359', '3', '1', '6');
INSERT INTO `studyfox_category` VALUES ('428', '灯饰照明', '360', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('429', '厨房卫浴', '360', '3', '1', '2');
INSERT INTO `studyfox_category` VALUES ('430', '五金工具', '360', '3', '1', '3');
INSERT INTO `studyfox_category` VALUES ('431', '电工电料', '360', '3', '1', '4');
INSERT INTO `studyfox_category` VALUES ('432', '墙地面材料', '360', '3', '1', '5');
INSERT INTO `studyfox_category` VALUES ('433', '装饰材料', '360', '3', '1', '6');
INSERT INTO `studyfox_category` VALUES ('434', '装修服务', '360', '3', '1', '7');
INSERT INTO `studyfox_category` VALUES ('435', '女装', '133', '2', '1', '1');
INSERT INTO `studyfox_category` VALUES ('436', '男装', '133', '2', '1', '2');
INSERT INTO `studyfox_category` VALUES ('437', '内衣', '133', '2', '1', '3');
INSERT INTO `studyfox_category` VALUES ('438', '运动', '133', '2', '1', '4');
INSERT INTO `studyfox_category` VALUES ('439', '女鞋', '133', '2', '1', '5');
INSERT INTO `studyfox_category` VALUES ('440', '男鞋', '133', '2', '1', '6');
INSERT INTO `studyfox_category` VALUES ('441', '配饰', '133', '2', '1', '7');
INSERT INTO `studyfox_category` VALUES ('442', '童装', '133', '2', '1', '8');
INSERT INTO `studyfox_category` VALUES ('443', '羽绒服', '435', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('444', '棉服', '435', '3', '1', '2');
INSERT INTO `studyfox_category` VALUES ('445', '大衣', '435', '3', '1', '3');
INSERT INTO `studyfox_category` VALUES ('446', '皮衣皮草', '435', '3', '1', '4');
INSERT INTO `studyfox_category` VALUES ('447', '风衣', '435', '3', '1', '5');
INSERT INTO `studyfox_category` VALUES ('448', '针织衫', '435', '3', '1', '6');
INSERT INTO `studyfox_category` VALUES ('449', '卫衣', '435', '3', '1', '7');
INSERT INTO `studyfox_category` VALUES ('450', '西服', '435', '3', '1', '8');
INSERT INTO `studyfox_category` VALUES ('451', '短外套', '435', '3', '1', '9');
INSERT INTO `studyfox_category` VALUES ('452', 'T恤', '435', '3', '1', '10');
INSERT INTO `studyfox_category` VALUES ('453', '衬衫', '435', '3', '1', '11');
INSERT INTO `studyfox_category` VALUES ('454', '雪纺衫', '435', '3', '1', '12');
INSERT INTO `studyfox_category` VALUES ('455', '马甲', '435', '3', '1', '13');
INSERT INTO `studyfox_category` VALUES ('456', '牛仔裤', '435', '3', '1', '14');
INSERT INTO `studyfox_category` VALUES ('457', '打底裤', '435', '3', '1', '15');
INSERT INTO `studyfox_category` VALUES ('458', '休闲裤', '435', '3', '1', '16');
INSERT INTO `studyfox_category` VALUES ('459', '正装裤', '435', '3', '1', '17');
INSERT INTO `studyfox_category` VALUES ('460', '连衣裙', '435', '3', '1', '18');
INSERT INTO `studyfox_category` VALUES ('461', '半身裙', '435', '3', '1', '19');
INSERT INTO `studyfox_category` VALUES ('462', '中老年装', '435', '3', '1', '20');
INSERT INTO `studyfox_category` VALUES ('463', '大码装', '435', '3', '1', '21');
INSERT INTO `studyfox_category` VALUES ('464', '婚纱礼服', '435', '3', '1', '22');
INSERT INTO `studyfox_category` VALUES ('465', '孕妇装', '435', '3', '1', '23');
INSERT INTO `studyfox_category` VALUES ('466', '羽绒服', '436', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('467', '棉服', '436', '3', '1', '2');
INSERT INTO `studyfox_category` VALUES ('468', '皮衣', '436', '3', '1', '3');
INSERT INTO `studyfox_category` VALUES ('469', '针织衫', '436', '3', '1', '4');
INSERT INTO `studyfox_category` VALUES ('470', '羊绒衫', '436', '3', '1', '5');
INSERT INTO `studyfox_category` VALUES ('471', '外套', '436', '3', '1', '6');
INSERT INTO `studyfox_category` VALUES ('472', '风衣', '436', '3', '1', '7');
INSERT INTO `studyfox_category` VALUES ('473', '大衣', '436', '3', '1', '8');
INSERT INTO `studyfox_category` VALUES ('474', '夹克', '436', '3', '1', '9');
INSERT INTO `studyfox_category` VALUES ('475', '西服', '436', '3', '1', '10');
INSERT INTO `studyfox_category` VALUES ('476', '卫衣', '436', '3', '1', '11');
INSERT INTO `studyfox_category` VALUES ('477', '衬衫', '436', '3', '1', '12');
INSERT INTO `studyfox_category` VALUES ('478', 'T恤', '436', '3', '1', '13');
INSERT INTO `studyfox_category` VALUES ('479', 'POLO衫', '436', '3', '1', '14');
INSERT INTO `studyfox_category` VALUES ('480', '马甲/背心', '436', '3', '1', '15');
INSERT INTO `studyfox_category` VALUES ('481', '牛仔裤', '436', '3', '1', '16');
INSERT INTO `studyfox_category` VALUES ('482', '休闲裤', '436', '3', '1', '17');
INSERT INTO `studyfox_category` VALUES ('483', '西裤', '436', '3', '1', '18');
INSERT INTO `studyfox_category` VALUES ('484', '西服套装', '436', '3', '1', '19');
INSERT INTO `studyfox_category` VALUES ('485', '大码装', '436', '3', '1', '20');
INSERT INTO `studyfox_category` VALUES ('486', '中老年装', '436', '3', '1', '21');
INSERT INTO `studyfox_category` VALUES ('487', '唐装', '436', '3', '1', '22');
INSERT INTO `studyfox_category` VALUES ('488', '工装', '436', '3', '1', '23');
INSERT INTO `studyfox_category` VALUES ('489', '保暖内衣', '437', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('490', '家居', '437', '3', '1', '2');
INSERT INTO `studyfox_category` VALUES ('491', '文胸', '437', '3', '1', '3');
INSERT INTO `studyfox_category` VALUES ('492', '女式内裤', '437', '3', '1', '4');
INSERT INTO `studyfox_category` VALUES ('493', '男式内裤', '437', '3', '1', '5');
INSERT INTO `studyfox_category` VALUES ('494', '男袜', '437', '3', '1', '6');
INSERT INTO `studyfox_category` VALUES ('495', '女袜', '437', '3', '1', '7');
INSERT INTO `studyfox_category` VALUES ('496', '塑身衣', '437', '3', '1', '8');
INSERT INTO `studyfox_category` VALUES ('497', '连裤袜', '437', '3', '1', '9');
INSERT INTO `studyfox_category` VALUES ('498', '美腿袜', '437', '3', '1', '10');
INSERT INTO `studyfox_category` VALUES ('499', '睡衣', '437', '3', '1', '11');
INSERT INTO `studyfox_category` VALUES ('500', '睡袍/浴袍', '437', '3', '1', '12');
INSERT INTO `studyfox_category` VALUES ('501', '抹胸', '437', '3', '1', '13');
INSERT INTO `studyfox_category` VALUES ('502', '背心', '437', '3', '1', '14');
INSERT INTO `studyfox_category` VALUES ('503', '泳衣', '437', '3', '1', '15');
INSERT INTO `studyfox_category` VALUES ('504', '情趣内衣', '437', '3', '1', '16');
INSERT INTO `studyfox_category` VALUES ('505', '休闲鞋', '438', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('506', '帆布鞋', '438', '3', '1', '2');
INSERT INTO `studyfox_category` VALUES ('507', '跑步鞋', '438', '3', '1', '3');
INSERT INTO `studyfox_category` VALUES ('508', '篮球鞋', '438', '3', '1', '4');
INSERT INTO `studyfox_category` VALUES ('509', '足球鞋', '438', '3', '1', '5');
INSERT INTO `studyfox_category` VALUES ('510', '训练鞋', '438', '3', '1', '6');
INSERT INTO `studyfox_category` VALUES ('511', '乒羽鞋', '438', '3', '1', '7');
INSERT INTO `studyfox_category` VALUES ('512', '拖鞋', '438', '3', '1', '8');
INSERT INTO `studyfox_category` VALUES ('513', '卫衣', '438', '3', '1', '9');
INSERT INTO `studyfox_category` VALUES ('514', '夹克', '438', '3', '1', '10');
INSERT INTO `studyfox_category` VALUES ('515', 'T恤', '438', '3', '1', '11');
INSERT INTO `studyfox_category` VALUES ('516', '棉服/羽绒服', '438', '3', '1', '12');
INSERT INTO `studyfox_category` VALUES ('517', '运动裤', '438', '3', '1', '13');
INSERT INTO `studyfox_category` VALUES ('518', '套装', '438', '3', '1', '14');
INSERT INTO `studyfox_category` VALUES ('519', '运动包', '438', '3', '1', '15');
INSERT INTO `studyfox_category` VALUES ('520', '运动配件', '438', '3', '1', '16');
INSERT INTO `studyfox_category` VALUES ('521', '平底鞋', '439', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('522', '高跟鞋', '439', '3', '1', '2');
INSERT INTO `studyfox_category` VALUES ('523', '单鞋', '439', '3', '1', '3');
INSERT INTO `studyfox_category` VALUES ('524', '休闲鞋', '439', '3', '1', '4');
INSERT INTO `studyfox_category` VALUES ('525', '凉鞋', '439', '3', '1', '5');
INSERT INTO `studyfox_category` VALUES ('526', '女靴', '439', '3', '1', '6');
INSERT INTO `studyfox_category` VALUES ('527', '雪地靴', '439', '3', '1', '7');
INSERT INTO `studyfox_category` VALUES ('528', '拖鞋', '439', '3', '1', '8');
INSERT INTO `studyfox_category` VALUES ('529', '商务休闲鞋', '440', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('530', '正装鞋', '440', '3', '1', '2');
INSERT INTO `studyfox_category` VALUES ('531', '休闲鞋', '440', '3', '1', '3');
INSERT INTO `studyfox_category` VALUES ('532', '凉鞋/沙滩鞋', '440', '3', '1', '4');
INSERT INTO `studyfox_category` VALUES ('533', '男靴', '440', '3', '1', '5');
INSERT INTO `studyfox_category` VALUES ('534', '功能鞋', '440', '3', '1', '6');
INSERT INTO `studyfox_category` VALUES ('535', '拖鞋', '440', '3', '1', '7');
INSERT INTO `studyfox_category` VALUES ('536', '太阳镜', '441', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('537', '框镜', '441', '3', '1', '2');
INSERT INTO `studyfox_category` VALUES ('538', '皮带', '441', '3', '1', '3');
INSERT INTO `studyfox_category` VALUES ('539', '围巾', '441', '3', '1', '4');
INSERT INTO `studyfox_category` VALUES ('540', '手套', '441', '3', '1', '5');
INSERT INTO `studyfox_category` VALUES ('541', '帽子', '441', '3', '1', '6');
INSERT INTO `studyfox_category` VALUES ('542', '领带', '441', '3', '1', '7');
INSERT INTO `studyfox_category` VALUES ('543', '袖扣', '441', '3', '1', '8');
INSERT INTO `studyfox_category` VALUES ('544', '其他配件', '441', '3', '1', '9');
INSERT INTO `studyfox_category` VALUES ('545', '套装', '442', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('546', '上衣', '442', '3', '1', '2');
INSERT INTO `studyfox_category` VALUES ('547', '裤子', '442', '3', '1', '3');
INSERT INTO `studyfox_category` VALUES ('548', '裙子', '442', '3', '1', '4');
INSERT INTO `studyfox_category` VALUES ('549', '内衣/家居服', '442', '3', '1', '5');
INSERT INTO `studyfox_category` VALUES ('550', '羽绒服/棉服', '442', '3', '1', '6');
INSERT INTO `studyfox_category` VALUES ('551', '亲子装', '442', '3', '1', '7');
INSERT INTO `studyfox_category` VALUES ('552', '儿童配饰', '442', '3', '1', '8');
INSERT INTO `studyfox_category` VALUES ('553', '礼服/演出服', '442', '3', '1', '9');
INSERT INTO `studyfox_category` VALUES ('554', '运动鞋', '442', '3', '1', '10');
INSERT INTO `studyfox_category` VALUES ('555', '单鞋', '442', '3', '1', '11');
INSERT INTO `studyfox_category` VALUES ('556', '靴子', '442', '3', '1', '12');
INSERT INTO `studyfox_category` VALUES ('557', '凉鞋', '442', '3', '1', '13');
INSERT INTO `studyfox_category` VALUES ('558', '功能鞋', '442', '3', '1', '14');
INSERT INTO `studyfox_category` VALUES ('559', '面部护理', '134', '2', '1', '1');
INSERT INTO `studyfox_category` VALUES ('560', '身体护理', '134', '2', '1', '2');
INSERT INTO `studyfox_category` VALUES ('561', '口腔护理', '134', '2', '1', '3');
INSERT INTO `studyfox_category` VALUES ('562', '女性护理', '134', '2', '1', '4');
INSERT INTO `studyfox_category` VALUES ('563', '男士护理', '134', '2', '1', '5');
INSERT INTO `studyfox_category` VALUES ('564', '魅力彩妆', '134', '2', '1', '6');
INSERT INTO `studyfox_category` VALUES ('565', '香水SPA', '134', '2', '1', '7');
INSERT INTO `studyfox_category` VALUES ('566', '洁面乳', '559', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('567', '爽肤水', '559', '3', '1', '2');
INSERT INTO `studyfox_category` VALUES ('568', '精华露', '559', '3', '1', '3');
INSERT INTO `studyfox_category` VALUES ('569', '乳液面霜', '559', '3', '1', '4');
INSERT INTO `studyfox_category` VALUES ('570', '面膜面贴', '559', '3', '1', '5');
INSERT INTO `studyfox_category` VALUES ('571', '眼部护理', '559', '3', '1', '6');
INSERT INTO `studyfox_category` VALUES ('572', '颈部护理', '559', '3', '1', '7');
INSERT INTO `studyfox_category` VALUES ('573', 'T区护理', '559', '3', '1', '8');
INSERT INTO `studyfox_category` VALUES ('574', '护肤套装', '559', '3', '1', '9');
INSERT INTO `studyfox_category` VALUES ('575', '防晒隔离', '559', '3', '1', '10');
INSERT INTO `studyfox_category` VALUES ('576', '洗发护发', '560', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('577', '染发/造型', '560', '3', '1', '2');
INSERT INTO `studyfox_category` VALUES ('578', '沐浴', '560', '3', '1', '3');
INSERT INTO `studyfox_category` VALUES ('579', '磨砂/浴盐', '560', '3', '1', '4');
INSERT INTO `studyfox_category` VALUES ('580', '身体乳', '560', '3', '1', '5');
INSERT INTO `studyfox_category` VALUES ('581', '手工/香皂', '560', '3', '1', '6');
INSERT INTO `studyfox_category` VALUES ('582', '香薰精油', '560', '3', '1', '7');
INSERT INTO `studyfox_category` VALUES ('583', '纤体瘦身', '560', '3', '1', '8');
INSERT INTO `studyfox_category` VALUES ('584', '脱毛膏', '560', '3', '1', '9');
INSERT INTO `studyfox_category` VALUES ('585', '手足护理', '560', '3', '1', '10');
INSERT INTO `studyfox_category` VALUES ('586', '洗护套装', '560', '3', '1', '11');
INSERT INTO `studyfox_category` VALUES ('587', '牙膏/牙粉', '561', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('588', '牙刷/牙线', '561', '3', '1', '2');
INSERT INTO `studyfox_category` VALUES ('589', '漱口水', '561', '3', '1', '3');
INSERT INTO `studyfox_category` VALUES ('590', '卫生巾', '562', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('591', '卫生护垫', '562', '3', '1', '2');
INSERT INTO `studyfox_category` VALUES ('592', '洗液', '562', '3', '1', '3');
INSERT INTO `studyfox_category` VALUES ('593', '美容食品', '562', '3', '1', '4');
INSERT INTO `studyfox_category` VALUES ('594', '其它', '562', '3', '1', '5');
INSERT INTO `studyfox_category` VALUES ('595', '脸部', '563', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('596', '眼部', '563', '3', '1', '2');
INSERT INTO `studyfox_category` VALUES ('597', '身体护理', '563', '3', '1', '3');
INSERT INTO `studyfox_category` VALUES ('598', '男士香水', '563', '3', '1', '4');
INSERT INTO `studyfox_category` VALUES ('599', '剃须', '563', '3', '1', '5');
INSERT INTO `studyfox_category` VALUES ('600', '防脱洗护', '563', '3', '1', '6');
INSERT INTO `studyfox_category` VALUES ('601', '唇膏', '563', '3', '1', '7');
INSERT INTO `studyfox_category` VALUES ('602', '粉底/遮瑕', '564', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('603', '腮红', '564', '3', '1', '2');
INSERT INTO `studyfox_category` VALUES ('604', '眼影/眼线', '564', '3', '1', '3');
INSERT INTO `studyfox_category` VALUES ('605', '眉笔', '564', '3', '1', '4');
INSERT INTO `studyfox_category` VALUES ('606', '睫毛膏', '564', '3', '1', '5');
INSERT INTO `studyfox_category` VALUES ('607', '唇膏唇彩', '564', '3', '1', '6');
INSERT INTO `studyfox_category` VALUES ('608', '彩妆组合', '564', '3', '1', '7');
INSERT INTO `studyfox_category` VALUES ('609', '卸妆', '564', '3', '1', '8');
INSERT INTO `studyfox_category` VALUES ('610', '美甲', '564', '3', '1', '9');
INSERT INTO `studyfox_category` VALUES ('611', '彩妆工具', '564', '3', '1', '10');
INSERT INTO `studyfox_category` VALUES ('612', '假发', '564', '3', '1', '11');
INSERT INTO `studyfox_category` VALUES ('613', '女士香水', '565', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('614', '男士香水', '565', '3', '1', '2');
INSERT INTO `studyfox_category` VALUES ('615', '组合套装', '565', '3', '1', '3');
INSERT INTO `studyfox_category` VALUES ('616', '迷你香水', '565', '3', '1', '4');
INSERT INTO `studyfox_category` VALUES ('617', '香体走珠', '565', '3', '1', '5');
INSERT INTO `studyfox_category` VALUES ('618', '潮流女包', '135', '2', '1', '1');
INSERT INTO `studyfox_category` VALUES ('619', '时尚男包', '135', '2', '1', '2');
INSERT INTO `studyfox_category` VALUES ('620', '功能箱包', '135', '2', '1', '3');
INSERT INTO `studyfox_category` VALUES ('621', '礼品', '135', '2', '1', '4');
INSERT INTO `studyfox_category` VALUES ('622', '奢侈品', '135', '2', '1', '5');
INSERT INTO `studyfox_category` VALUES ('623', '钟表', '135', '2', '1', '6');
INSERT INTO `studyfox_category` VALUES ('624', '珠宝首饰', '135', '2', '1', '7');
INSERT INTO `studyfox_category` VALUES ('625', '婚庆', '135', '2', '1', '8');
INSERT INTO `studyfox_category` VALUES ('626', '钱包/卡包', '618', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('627', '手拿包', '618', '3', '1', '2');
INSERT INTO `studyfox_category` VALUES ('628', '单肩包', '618', '3', '1', '3');
INSERT INTO `studyfox_category` VALUES ('629', '手提包', '618', '3', '1', '4');
INSERT INTO `studyfox_category` VALUES ('630', '斜挎包', '618', '3', '1', '5');
INSERT INTO `studyfox_category` VALUES ('631', '钱包/卡包', '619', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('632', '男士手包', '619', '3', '1', '2');
INSERT INTO `studyfox_category` VALUES ('633', '腰带/礼盒', '619', '3', '1', '3');
INSERT INTO `studyfox_category` VALUES ('634', '商务公文包', '619', '3', '1', '4');
INSERT INTO `studyfox_category` VALUES ('635', '电脑数码包', '620', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('636', '拉杆箱', '620', '3', '1', '2');
INSERT INTO `studyfox_category` VALUES ('637', '旅行包', '620', '3', '1', '3');
INSERT INTO `studyfox_category` VALUES ('638', '旅行配件', '620', '3', '1', '4');
INSERT INTO `studyfox_category` VALUES ('639', '休闲运动包', '620', '3', '1', '5');
INSERT INTO `studyfox_category` VALUES ('640', '登山包', '620', '3', '1', '6');
INSERT INTO `studyfox_category` VALUES ('641', '妈咪包', '620', '3', '1', '7');
INSERT INTO `studyfox_category` VALUES ('642', '书包', '620', '3', '1', '8');
INSERT INTO `studyfox_category` VALUES ('643', '火机烟具', '621', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('644', '礼品文具', '621', '3', '1', '2');
INSERT INTO `studyfox_category` VALUES ('645', '瑞士军刀', '621', '3', '1', '3');
INSERT INTO `studyfox_category` VALUES ('646', '收藏品', '621', '3', '1', '4');
INSERT INTO `studyfox_category` VALUES ('647', '工艺礼品', '621', '3', '1', '5');
INSERT INTO `studyfox_category` VALUES ('648', '创意礼品', '621', '3', '1', '6');
INSERT INTO `studyfox_category` VALUES ('649', '礼卡礼券', '621', '3', '1', '7');
INSERT INTO `studyfox_category` VALUES ('650', '鲜花速递', '621', '3', '1', '8');
INSERT INTO `studyfox_category` VALUES ('651', '婚庆用品', '621', '3', '1', '9');
INSERT INTO `studyfox_category` VALUES ('652', '雪狐礼品卡', '621', '3', '1', '10');
INSERT INTO `studyfox_category` VALUES ('653', 'GUCCI', '622', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('654', 'PRADA', '622', '3', '1', '2');
INSERT INTO `studyfox_category` VALUES ('655', 'FENDI', '622', '3', '1', '3');
INSERT INTO `studyfox_category` VALUES ('656', 'BURBERRY', '622', '3', '1', '4');
INSERT INTO `studyfox_category` VALUES ('657', 'MONTBLANC', '622', '3', '1', '5');
INSERT INTO `studyfox_category` VALUES ('658', 'ARMANI', '622', '3', '1', '6');
INSERT INTO `studyfox_category` VALUES ('659', 'COACH', '622', '3', '1', '7');
INSERT INTO `studyfox_category` VALUES ('660', 'RIMOWA', '622', '3', '1', '8');
INSERT INTO `studyfox_category` VALUES ('661', 'RAY-BAN', '622', '3', '1', '9');
INSERT INTO `studyfox_category` VALUES ('662', '更多品牌', '622', '3', '1', '10');
INSERT INTO `studyfox_category` VALUES ('663', '奢侈品箱包', '622', '3', '1', '11');
INSERT INTO `studyfox_category` VALUES ('664', '钱包', '622', '3', '1', '12');
INSERT INTO `studyfox_category` VALUES ('665', '服饰', '622', '3', '1', '13');
INSERT INTO `studyfox_category` VALUES ('666', '腰带', '622', '3', '1', '14');
INSERT INTO `studyfox_category` VALUES ('667', '太阳镜眼镜', '622', '3', '1', '15');
INSERT INTO `studyfox_category` VALUES ('668', '配件', '622', '3', '1', '16');
INSERT INTO `studyfox_category` VALUES ('669', '瑞士品牌', '623', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('670', '国产品牌', '623', '3', '1', '2');
INSERT INTO `studyfox_category` VALUES ('671', '日本品牌', '623', '3', '1', '3');
INSERT INTO `studyfox_category` VALUES ('672', '时尚品牌', '623', '3', '1', '4');
INSERT INTO `studyfox_category` VALUES ('673', '闹钟挂钟', '623', '3', '1', '5');
INSERT INTO `studyfox_category` VALUES ('674', '儿童手表', '623', '3', '1', '6');
INSERT INTO `studyfox_category` VALUES ('675', '纯金K金饰品', '624', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('676', '金银投资', '624', '3', '1', '2');
INSERT INTO `studyfox_category` VALUES ('677', '银饰', '624', '3', '1', '3');
INSERT INTO `studyfox_category` VALUES ('678', '钻石饰品', '624', '3', '1', '4');
INSERT INTO `studyfox_category` VALUES ('679', '翡翠玉石', '624', '3', '1', '5');
INSERT INTO `studyfox_category` VALUES ('680', '水晶玛瑙', '624', '3', '1', '6');
INSERT INTO `studyfox_category` VALUES ('681', '宝石珍珠', '624', '3', '1', '7');
INSERT INTO `studyfox_category` VALUES ('682', '时尚饰品', '624', '3', '1', '8');
INSERT INTO `studyfox_category` VALUES ('683', '婚嫁首饰', '625', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('684', '婚纱摄影', '625', '3', '1', '2');
INSERT INTO `studyfox_category` VALUES ('685', '婚纱礼服', '625', '3', '1', '3');
INSERT INTO `studyfox_category` VALUES ('686', '婚庆服务', '625', '3', '1', '4');
INSERT INTO `studyfox_category` VALUES ('687', '婚庆礼品/用品', '625', '3', '1', '5');
INSERT INTO `studyfox_category` VALUES ('688', '婚宴', '625', '3', '1', '6');
INSERT INTO `studyfox_category` VALUES ('689', '户外鞋服', '136', '2', '1', '1');
INSERT INTO `studyfox_category` VALUES ('690', '户外装备', '136', '2', '1', '2');
INSERT INTO `studyfox_category` VALUES ('691', '运动器械', '136', '2', '1', '3');
INSERT INTO `studyfox_category` VALUES ('692', '纤体瑜伽', '136', '2', '1', '4');
INSERT INTO `studyfox_category` VALUES ('693', '体育娱乐', '136', '2', '1', '5');
INSERT INTO `studyfox_category` VALUES ('694', '成人用品', '136', '2', '1', '6');
INSERT INTO `studyfox_category` VALUES ('695', '保健器械', '136', '2', '1', '7');
INSERT INTO `studyfox_category` VALUES ('696', '急救卫生', '136', '2', '1', '8');
INSERT INTO `studyfox_category` VALUES ('697', '户外服装', '689', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('698', '户外鞋袜', '689', '3', '1', '2');
INSERT INTO `studyfox_category` VALUES ('699', '户外配饰', '689', '3', '1', '3');
INSERT INTO `studyfox_category` VALUES ('700', '帐篷', '690', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('701', '睡袋', '690', '3', '1', '2');
INSERT INTO `studyfox_category` VALUES ('702', '登山攀岩', '690', '3', '1', '3');
INSERT INTO `studyfox_category` VALUES ('703', '户外背包', '690', '3', '1', '4');
INSERT INTO `studyfox_category` VALUES ('704', '户外照明', '690', '3', '1', '5');
INSERT INTO `studyfox_category` VALUES ('705', '户外垫子', '690', '3', '1', '6');
INSERT INTO `studyfox_category` VALUES ('706', '户外仪表', '690', '3', '1', '7');
INSERT INTO `studyfox_category` VALUES ('707', '户外工具', '690', '3', '1', '8');
INSERT INTO `studyfox_category` VALUES ('708', '望远镜', '690', '3', '1', '9');
INSERT INTO `studyfox_category` VALUES ('709', '垂钓用品', '690', '3', '1', '10');
INSERT INTO `studyfox_category` VALUES ('710', '旅游用品', '690', '3', '1', '11');
INSERT INTO `studyfox_category` VALUES ('711', '便携桌椅床', '690', '3', '1', '12');
INSERT INTO `studyfox_category` VALUES ('712', '烧烤用品', '690', '3', '1', '13');
INSERT INTO `studyfox_category` VALUES ('713', '野餐炊具', '690', '3', '1', '14');
INSERT INTO `studyfox_category` VALUES ('714', '军迷用品', '690', '3', '1', '15');
INSERT INTO `studyfox_category` VALUES ('715', '游泳用具', '690', '3', '1', '16');
INSERT INTO `studyfox_category` VALUES ('716', '泳衣', '690', '3', '1', '17');
INSERT INTO `studyfox_category` VALUES ('717', '健身器械', '691', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('718', '运动器械', '691', '3', '1', '2');
INSERT INTO `studyfox_category` VALUES ('719', '防护器具', '691', '3', '1', '3');
INSERT INTO `studyfox_category` VALUES ('720', '骑行运动', '691', '3', '1', '4');
INSERT INTO `studyfox_category` VALUES ('721', '极限轮滑', '691', '3', '1', '5');
INSERT INTO `studyfox_category` VALUES ('722', '武术搏击', '691', '3', '1', '6');
INSERT INTO `studyfox_category` VALUES ('723', '瑜伽垫', '692', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('724', '瑜珈服', '692', '3', '1', '2');
INSERT INTO `studyfox_category` VALUES ('725', '瑜伽配件', '692', '3', '1', '3');
INSERT INTO `studyfox_category` VALUES ('726', '瑜伽套装', '692', '3', '1', '4');
INSERT INTO `studyfox_category` VALUES ('727', '舞蹈鞋服', '692', '3', '1', '5');
INSERT INTO `studyfox_category` VALUES ('728', '羽毛球', '693', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('729', '乒乓球', '693', '3', '1', '2');
INSERT INTO `studyfox_category` VALUES ('730', '篮球', '693', '3', '1', '3');
INSERT INTO `studyfox_category` VALUES ('731', '足球', '693', '3', '1', '4');
INSERT INTO `studyfox_category` VALUES ('732', '网球', '693', '3', '1', '5');
INSERT INTO `studyfox_category` VALUES ('733', '排球', '693', '3', '1', '6');
INSERT INTO `studyfox_category` VALUES ('734', '高尔夫球', '693', '3', '1', '7');
INSERT INTO `studyfox_category` VALUES ('735', '棋牌麻将', '693', '3', '1', '8');
INSERT INTO `studyfox_category` VALUES ('736', '其他', '693', '3', '1', '9');
INSERT INTO `studyfox_category` VALUES ('737', '安全避孕', '694', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('738', '验孕测孕', '694', '3', '1', '2');
INSERT INTO `studyfox_category` VALUES ('739', '人体润滑', '694', '3', '1', '3');
INSERT INTO `studyfox_category` VALUES ('740', '情爱玩具', '694', '3', '1', '4');
INSERT INTO `studyfox_category` VALUES ('741', '情趣内衣', '694', '3', '1', '5');
INSERT INTO `studyfox_category` VALUES ('742', '组合套装', '694', '3', '1', '6');
INSERT INTO `studyfox_category` VALUES ('743', '养生器械', '695', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('744', '保健用品', '695', '3', '1', '2');
INSERT INTO `studyfox_category` VALUES ('745', '康复辅助', '695', '3', '1', '3');
INSERT INTO `studyfox_category` VALUES ('746', '家庭护理', '695', '3', '1', '4');
INSERT INTO `studyfox_category` VALUES ('747', '跌打损伤', '696', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('748', '烫伤止痒', '696', '3', '1', '2');
INSERT INTO `studyfox_category` VALUES ('749', '防裂抗冻', '696', '3', '1', '3');
INSERT INTO `studyfox_category` VALUES ('750', '口腔咽部', '696', '3', '1', '4');
INSERT INTO `studyfox_category` VALUES ('751', '眼部保健', '696', '3', '1', '5');
INSERT INTO `studyfox_category` VALUES ('752', '鼻炎健康', '696', '3', '1', '6');
INSERT INTO `studyfox_category` VALUES ('753', '风湿骨痛', '696', '3', '1', '7');
INSERT INTO `studyfox_category` VALUES ('754', '生殖泌尿', '696', '3', '1', '8');
INSERT INTO `studyfox_category` VALUES ('755', '美体塑身', '696', '3', '1', '9');
INSERT INTO `studyfox_category` VALUES ('756', '电子电器', '137', '2', '1', '1');
INSERT INTO `studyfox_category` VALUES ('757', '系统养护', '137', '2', '1', '2');
INSERT INTO `studyfox_category` VALUES ('758', '改装配件', '137', '2', '1', '3');
INSERT INTO `studyfox_category` VALUES ('759', '汽车美容', '137', '2', '1', '4');
INSERT INTO `studyfox_category` VALUES ('760', '座垫脚垫', '137', '2', '1', '5');
INSERT INTO `studyfox_category` VALUES ('761', '内饰精品', '137', '2', '1', '6');
INSERT INTO `studyfox_category` VALUES ('762', '安全自驾', '137', '2', '1', '7');
INSERT INTO `studyfox_category` VALUES ('763', '便携式GPS导航', '756', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('764', '嵌入式导航', '756', '3', '1', '2');
INSERT INTO `studyfox_category` VALUES ('765', '安全预警仪', '756', '3', '1', '3');
INSERT INTO `studyfox_category` VALUES ('766', '行车记录仪', '756', '3', '1', '4');
INSERT INTO `studyfox_category` VALUES ('767', '跟踪防盗器', '756', '3', '1', '5');
INSERT INTO `studyfox_category` VALUES ('768', '倒车雷达', '756', '3', '1', '6');
INSERT INTO `studyfox_category` VALUES ('769', '车载电源', '756', '3', '1', '7');
INSERT INTO `studyfox_category` VALUES ('770', '车载蓝牙', '756', '3', '1', '8');
INSERT INTO `studyfox_category` VALUES ('771', '车载影音', '756', '3', '1', '9');
INSERT INTO `studyfox_category` VALUES ('772', '车载净化器', '756', '3', '1', '10');
INSERT INTO `studyfox_category` VALUES ('773', '车载冰箱', '756', '3', '1', '11');
INSERT INTO `studyfox_category` VALUES ('774', '车载吸尘器', '756', '3', '1', '12');
INSERT INTO `studyfox_category` VALUES ('775', '充气泵', '756', '3', '1', '13');
INSERT INTO `studyfox_category` VALUES ('776', '胎压监测', '756', '3', '1', '14');
INSERT INTO `studyfox_category` VALUES ('777', '车载生活电器', '756', '3', '1', '15');
INSERT INTO `studyfox_category` VALUES ('778', '机油', '757', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('779', '添加剂', '757', '3', '1', '2');
INSERT INTO `studyfox_category` VALUES ('780', '防冻冷却液', '757', '3', '1', '3');
INSERT INTO `studyfox_category` VALUES ('781', '附属油', '757', '3', '1', '4');
INSERT INTO `studyfox_category` VALUES ('782', '底盘装甲', '757', '3', '1', '5');
INSERT INTO `studyfox_category` VALUES ('783', '空调清洗剂', '757', '3', '1', '6');
INSERT INTO `studyfox_category` VALUES ('784', '金属养护', '757', '3', '1', '7');
INSERT INTO `studyfox_category` VALUES ('785', '雨刷', '758', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('786', '车灯', '758', '3', '1', '2');
INSERT INTO `studyfox_category` VALUES ('787', '轮胎', '758', '3', '1', '3');
INSERT INTO `studyfox_category` VALUES ('788', '贴膜', '758', '3', '1', '4');
INSERT INTO `studyfox_category` VALUES ('789', '装饰贴', '758', '3', '1', '5');
INSERT INTO `studyfox_category` VALUES ('790', '后视镜', '758', '3', '1', '6');
INSERT INTO `studyfox_category` VALUES ('791', '机油滤', '758', '3', '1', '7');
INSERT INTO `studyfox_category` VALUES ('792', '空气滤', '758', '3', '1', '8');
INSERT INTO `studyfox_category` VALUES ('793', '空调滤', '758', '3', '1', '9');
INSERT INTO `studyfox_category` VALUES ('794', '燃油滤', '758', '3', '1', '10');
INSERT INTO `studyfox_category` VALUES ('795', '火花塞', '758', '3', '1', '11');
INSERT INTO `studyfox_category` VALUES ('796', '喇叭', '758', '3', '1', '12');
INSERT INTO `studyfox_category` VALUES ('797', '刹车片', '758', '3', '1', '13');
INSERT INTO `studyfox_category` VALUES ('798', '刹车盘', '758', '3', '1', '14');
INSERT INTO `studyfox_category` VALUES ('799', '减震器', '758', '3', '1', '15');
INSERT INTO `studyfox_category` VALUES ('800', '车身装饰', '758', '3', '1', '16');
INSERT INTO `studyfox_category` VALUES ('801', '尾喉/排气管', '758', '3', '1', '17');
INSERT INTO `studyfox_category` VALUES ('802', '踏板', '758', '3', '1', '18');
INSERT INTO `studyfox_category` VALUES ('803', '蓄电池', '758', '3', '1', '19');
INSERT INTO `studyfox_category` VALUES ('804', '其他配件', '758', '3', '1', '20');
INSERT INTO `studyfox_category` VALUES ('805', '漆面美容', '759', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('806', '漆面修复', '759', '3', '1', '2');
INSERT INTO `studyfox_category` VALUES ('807', '内饰清洁', '759', '3', '1', '3');
INSERT INTO `studyfox_category` VALUES ('808', '玻璃美容', '759', '3', '1', '4');
INSERT INTO `studyfox_category` VALUES ('809', '补漆笔', '759', '3', '1', '5');
INSERT INTO `studyfox_category` VALUES ('810', '轮胎轮毂清洗', '759', '3', '1', '6');
INSERT INTO `studyfox_category` VALUES ('811', '洗车器', '759', '3', '1', '7');
INSERT INTO `studyfox_category` VALUES ('812', '洗车水枪', '759', '3', '1', '8');
INSERT INTO `studyfox_category` VALUES ('813', '洗车配件', '759', '3', '1', '9');
INSERT INTO `studyfox_category` VALUES ('814', '洗车液', '759', '3', '1', '10');
INSERT INTO `studyfox_category` VALUES ('815', '车掸', '759', '3', '1', '11');
INSERT INTO `studyfox_category` VALUES ('816', '擦车巾/海绵', '759', '3', '1', '12');
INSERT INTO `studyfox_category` VALUES ('817', '凉垫', '760', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('818', '四季垫', '760', '3', '1', '2');
INSERT INTO `studyfox_category` VALUES ('819', '毛垫', '760', '3', '1', '3');
INSERT INTO `studyfox_category` VALUES ('820', '专车专用座垫', '760', '3', '1', '4');
INSERT INTO `studyfox_category` VALUES ('821', '专车专用座套', '760', '3', '1', '5');
INSERT INTO `studyfox_category` VALUES ('822', '通用座套', '760', '3', '1', '6');
INSERT INTO `studyfox_category` VALUES ('823', '多功能垫', '760', '3', '1', '7');
INSERT INTO `studyfox_category` VALUES ('824', '专车专用脚垫', '760', '3', '1', '8');
INSERT INTO `studyfox_category` VALUES ('825', '通用脚垫', '760', '3', '1', '9');
INSERT INTO `studyfox_category` VALUES ('826', '后备箱垫', '760', '3', '1', '10');
INSERT INTO `studyfox_category` VALUES ('827', '车用香水', '761', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('828', '车用炭包', '761', '3', '1', '2');
INSERT INTO `studyfox_category` VALUES ('829', '空气净化', '761', '3', '1', '3');
INSERT INTO `studyfox_category` VALUES ('830', '颈枕/头枕', '761', '3', '1', '4');
INSERT INTO `studyfox_category` VALUES ('831', '抱枕/腰靠', '761', '3', '1', '5');
INSERT INTO `studyfox_category` VALUES ('832', '方向盘套', '761', '3', '1', '6');
INSERT INTO `studyfox_category` VALUES ('833', '挂件', '761', '3', '1', '7');
INSERT INTO `studyfox_category` VALUES ('834', '摆件', '761', '3', '1', '8');
INSERT INTO `studyfox_category` VALUES ('835', '布艺软饰', '761', '3', '1', '9');
INSERT INTO `studyfox_category` VALUES ('836', '功能用品', '761', '3', '1', '10');
INSERT INTO `studyfox_category` VALUES ('837', '整理收纳', '761', '3', '1', '11');
INSERT INTO `studyfox_category` VALUES ('838', 'CD夹', '761', '3', '1', '12');
INSERT INTO `studyfox_category` VALUES ('839', '儿童安全座椅', '762', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('840', '应急救援', '762', '3', '1', '2');
INSERT INTO `studyfox_category` VALUES ('841', '汽修工具', '762', '3', '1', '3');
INSERT INTO `studyfox_category` VALUES ('842', '自驾野营', '762', '3', '1', '4');
INSERT INTO `studyfox_category` VALUES ('843', '自驾照明', '762', '3', '1', '5');
INSERT INTO `studyfox_category` VALUES ('844', '保温箱', '762', '3', '1', '6');
INSERT INTO `studyfox_category` VALUES ('845', '置物箱', '762', '3', '1', '7');
INSERT INTO `studyfox_category` VALUES ('846', '车衣', '762', '3', '1', '8');
INSERT INTO `studyfox_category` VALUES ('847', '遮阳挡雪挡', '762', '3', '1', '9');
INSERT INTO `studyfox_category` VALUES ('848', '车锁地锁', '762', '3', '1', '10');
INSERT INTO `studyfox_category` VALUES ('849', '摩托车装备', '762', '3', '1', '11');
INSERT INTO `studyfox_category` VALUES ('850', '奶粉', '138', '2', '1', '1');
INSERT INTO `studyfox_category` VALUES ('851', '营养辅食', '138', '2', '1', '2');
INSERT INTO `studyfox_category` VALUES ('852', '尿裤湿巾', '138', '2', '1', '3');
INSERT INTO `studyfox_category` VALUES ('853', '洗护用品', '138', '2', '1', '4');
INSERT INTO `studyfox_category` VALUES ('854', '童车童床', '138', '2', '1', '5');
INSERT INTO `studyfox_category` VALUES ('855', '喂养用品', '138', '2', '1', '6');
INSERT INTO `studyfox_category` VALUES ('856', '服饰寝居', '138', '2', '1', '7');
INSERT INTO `studyfox_category` VALUES ('857', '妈妈专区', '138', '2', '1', '8');
INSERT INTO `studyfox_category` VALUES ('858', '玩具乐器', '138', '2', '1', '9');
INSERT INTO `studyfox_category` VALUES ('859', '品牌奶粉', '850', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('860', '特殊配方', '850', '3', '1', '2');
INSERT INTO `studyfox_category` VALUES ('861', '妈妈奶粉', '850', '3', '1', '3');
INSERT INTO `studyfox_category` VALUES ('862', '1段奶粉', '850', '3', '1', '4');
INSERT INTO `studyfox_category` VALUES ('863', '2段奶粉', '850', '3', '1', '5');
INSERT INTO `studyfox_category` VALUES ('864', '3段奶粉', '850', '3', '1', '6');
INSERT INTO `studyfox_category` VALUES ('865', '4段奶粉', '850', '3', '1', '7');
INSERT INTO `studyfox_category` VALUES ('866', '羊奶粉', '850', '3', '1', '8');
INSERT INTO `studyfox_category` VALUES ('867', '成人奶粉', '850', '3', '1', '9');
INSERT INTO `studyfox_category` VALUES ('868', '婴幼营养', '851', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('869', '初乳', '851', '3', '1', '2');
INSERT INTO `studyfox_category` VALUES ('870', '米粉/菜粉', '851', '3', '1', '3');
INSERT INTO `studyfox_category` VALUES ('871', '果泥/果汁', '851', '3', '1', '4');
INSERT INTO `studyfox_category` VALUES ('872', '肉松/饼干', '851', '3', '1', '5');
INSERT INTO `studyfox_category` VALUES ('873', '辅食', '851', '3', '1', '6');
INSERT INTO `studyfox_category` VALUES ('874', '面条/粥', '851', '3', '1', '7');
INSERT INTO `studyfox_category` VALUES ('875', '孕期营养', '851', '3', '1', '8');
INSERT INTO `studyfox_category` VALUES ('876', '清火/开胃', '851', '3', '1', '9');
INSERT INTO `studyfox_category` VALUES ('877', '品牌尿裤', '852', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('878', '新生儿', '852', '3', '1', '2');
INSERT INTO `studyfox_category` VALUES ('879', 'S号', '852', '3', '1', '3');
INSERT INTO `studyfox_category` VALUES ('880', 'K号', '852', '3', '1', '4');
INSERT INTO `studyfox_category` VALUES ('881', 'L号', '852', '3', '1', '5');
INSERT INTO `studyfox_category` VALUES ('882', 'XL/XXL号', '852', '3', '1', '6');
INSERT INTO `studyfox_category` VALUES ('883', '裤型尿裤', '852', '3', '1', '7');
INSERT INTO `studyfox_category` VALUES ('884', '湿巾', '852', '3', '1', '8');
INSERT INTO `studyfox_category` VALUES ('885', '尿布/尿垫', '852', '3', '1', '9');
INSERT INTO `studyfox_category` VALUES ('886', '成人尿垫', '852', '3', '1', '10');
INSERT INTO `studyfox_category` VALUES ('887', '宝宝护肤', '853', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('888', '护理用品', '853', '3', '1', '2');
INSERT INTO `studyfox_category` VALUES ('889', '洗发沐浴', '853', '3', '1', '3');
INSERT INTO `studyfox_category` VALUES ('890', '清洁用品', '853', '3', '1', '4');
INSERT INTO `studyfox_category` VALUES ('891', '洗浴用品', '853', '3', '1', '5');
INSERT INTO `studyfox_category` VALUES ('892', '妈妈护肤', '853', '3', '1', '6');
INSERT INTO `studyfox_category` VALUES ('893', '婴儿推车', '854', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('894', '安全座椅', '854', '3', '1', '2');
INSERT INTO `studyfox_category` VALUES ('895', '餐椅摇椅', '854', '3', '1', '3');
INSERT INTO `studyfox_category` VALUES ('896', '婴儿床', '854', '3', '1', '4');
INSERT INTO `studyfox_category` VALUES ('897', '自行车', '854', '3', '1', '5');
INSERT INTO `studyfox_category` VALUES ('898', '学步车', '854', '3', '1', '6');
INSERT INTO `studyfox_category` VALUES ('899', '三轮车', '854', '3', '1', '7');
INSERT INTO `studyfox_category` VALUES ('900', '电动车', '854', '3', '1', '8');
INSERT INTO `studyfox_category` VALUES ('901', '健身车', '854', '3', '1', '9');
INSERT INTO `studyfox_category` VALUES ('902', '奶瓶', '855', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('903', '奶嘴', '855', '3', '1', '2');
INSERT INTO `studyfox_category` VALUES ('904', '吸奶器', '855', '3', '1', '3');
INSERT INTO `studyfox_category` VALUES ('905', '暖奶/消毒', '855', '3', '1', '4');
INSERT INTO `studyfox_category` VALUES ('906', '餐具', '855', '3', '1', '5');
INSERT INTO `studyfox_category` VALUES ('907', '水具', '855', '3', '1', '6');
INSERT INTO `studyfox_category` VALUES ('908', '牙胶/安抚', '855', '3', '1', '7');
INSERT INTO `studyfox_category` VALUES ('909', '婴儿外出服', '856', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('910', '婴儿内衣', '856', '3', '1', '2');
INSERT INTO `studyfox_category` VALUES ('911', '婴儿礼盒', '856', '3', '1', '3');
INSERT INTO `studyfox_category` VALUES ('912', '婴儿鞋帽袜', '856', '3', '1', '4');
INSERT INTO `studyfox_category` VALUES ('913', '家居床品', '856', '3', '1', '5');
INSERT INTO `studyfox_category` VALUES ('914', '安全防护', '856', '3', '1', '6');
INSERT INTO `studyfox_category` VALUES ('915', '包/背婴带', '857', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('916', '妈妈护理', '857', '3', '1', '2');
INSERT INTO `studyfox_category` VALUES ('917', '产后塑身', '857', '3', '1', '3');
INSERT INTO `studyfox_category` VALUES ('918', '孕妇内衣', '857', '3', '1', '4');
INSERT INTO `studyfox_category` VALUES ('919', '防辐射服', '857', '3', '1', '5');
INSERT INTO `studyfox_category` VALUES ('920', '孕妇装', '857', '3', '1', '6');
INSERT INTO `studyfox_category` VALUES ('921', '孕妇食品', '857', '3', '1', '7');
INSERT INTO `studyfox_category` VALUES ('922', '妈妈美容', '857', '3', '1', '8');
INSERT INTO `studyfox_category` VALUES ('923', '适用年龄', '858', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('924', '遥控/电动', '858', '3', '1', '2');
INSERT INTO `studyfox_category` VALUES ('925', '毛绒布艺', '858', '3', '1', '3');
INSERT INTO `studyfox_category` VALUES ('926', '娃娃玩具', '858', '3', '1', '4');
INSERT INTO `studyfox_category` VALUES ('927', '模型玩具', '858', '3', '1', '5');
INSERT INTO `studyfox_category` VALUES ('928', '健身玩具', '858', '3', '1', '6');
INSERT INTO `studyfox_category` VALUES ('929', '动漫玩具', '858', '3', '1', '7');
INSERT INTO `studyfox_category` VALUES ('930', '益智玩具', '858', '3', '1', '8');
INSERT INTO `studyfox_category` VALUES ('931', '积木拼插', '858', '3', '1', '9');
INSERT INTO `studyfox_category` VALUES ('932', 'DIY玩具', '858', '3', '1', '10');
INSERT INTO `studyfox_category` VALUES ('933', '创意减压', '858', '3', '1', '11');
INSERT INTO `studyfox_category` VALUES ('934', '乐器相关', '858', '3', '1', '12');
INSERT INTO `studyfox_category` VALUES ('935', '食尚礼券', '139', '2', '1', '1');
INSERT INTO `studyfox_category` VALUES ('936', '进口食品', '139', '2', '1', '2');
INSERT INTO `studyfox_category` VALUES ('937', '地方特产', '139', '2', '1', '3');
INSERT INTO `studyfox_category` VALUES ('938', '休闲食品', '139', '2', '1', '4');
INSERT INTO `studyfox_category` VALUES ('939', '粮油调味', '139', '2', '1', '5');
INSERT INTO `studyfox_category` VALUES ('940', '酒饮冲调', '139', '2', '1', '6');
INSERT INTO `studyfox_category` VALUES ('941', '营养健康', '139', '2', '1', '7');
INSERT INTO `studyfox_category` VALUES ('942', '亚健康', '139', '2', '1', '8');
INSERT INTO `studyfox_category` VALUES ('943', '健康礼品', '139', '2', '1', '9');
INSERT INTO `studyfox_category` VALUES ('944', '生鲜食品', '139', '2', '1', '10');
INSERT INTO `studyfox_category` VALUES ('945', '大闸蟹', '935', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('946', '饼干蛋糕', '936', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('947', '糖果巧克力', '936', '3', '1', '2');
INSERT INTO `studyfox_category` VALUES ('948', '休闲零食', '936', '3', '1', '3');
INSERT INTO `studyfox_category` VALUES ('949', '冲调饮品', '936', '3', '1', '4');
INSERT INTO `studyfox_category` VALUES ('950', '粮油调味', '936', '3', '1', '5');
INSERT INTO `studyfox_category` VALUES ('951', '华北', '937', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('952', '西北', '937', '3', '1', '2');
INSERT INTO `studyfox_category` VALUES ('953', '西南', '937', '3', '1', '3');
INSERT INTO `studyfox_category` VALUES ('954', '东北', '937', '3', '1', '4');
INSERT INTO `studyfox_category` VALUES ('955', '华南', '937', '3', '1', '5');
INSERT INTO `studyfox_category` VALUES ('956', '华东', '937', '3', '1', '6');
INSERT INTO `studyfox_category` VALUES ('957', '华中', '937', '3', '1', '7');
INSERT INTO `studyfox_category` VALUES ('958', '休闲零食', '938', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('959', '坚果炒货', '938', '3', '1', '2');
INSERT INTO `studyfox_category` VALUES ('960', '肉干肉松', '938', '3', '1', '3');
INSERT INTO `studyfox_category` VALUES ('961', '蜜饯果脯', '938', '3', '1', '4');
INSERT INTO `studyfox_category` VALUES ('962', '糖果/巧克力', '938', '3', '1', '5');
INSERT INTO `studyfox_category` VALUES ('963', '饼干蛋糕', '938', '3', '1', '6');
INSERT INTO `studyfox_category` VALUES ('964', '米面杂粮', '939', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('965', '食用油', '939', '3', '1', '2');
INSERT INTO `studyfox_category` VALUES ('966', '调味品', '939', '3', '1', '3');
INSERT INTO `studyfox_category` VALUES ('967', '南北干货', '939', '3', '1', '4');
INSERT INTO `studyfox_category` VALUES ('968', '方便食品', '939', '3', '1', '5');
INSERT INTO `studyfox_category` VALUES ('969', '有机食品', '939', '3', '1', '6');
INSERT INTO `studyfox_category` VALUES ('970', '白酒/黄酒', '940', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('971', '葡萄酒', '940', '3', '1', '2');
INSERT INTO `studyfox_category` VALUES ('972', '洋酒', '940', '3', '1', '3');
INSERT INTO `studyfox_category` VALUES ('973', '啤酒', '940', '3', '1', '4');
INSERT INTO `studyfox_category` VALUES ('974', '饮料', '940', '3', '1', '5');
INSERT INTO `studyfox_category` VALUES ('975', '冲调', '940', '3', '1', '6');
INSERT INTO `studyfox_category` VALUES ('976', '咖啡/奶茶', '940', '3', '1', '7');
INSERT INTO `studyfox_category` VALUES ('977', '茗茶', '940', '3', '1', '8');
INSERT INTO `studyfox_category` VALUES ('978', '牛奶', '940', '3', '1', '9');
INSERT INTO `studyfox_category` VALUES ('979', '基础营养', '941', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('980', '美体养颜', '941', '3', '1', '2');
INSERT INTO `studyfox_category` VALUES ('981', '滋补调养', '941', '3', '1', '3');
INSERT INTO `studyfox_category` VALUES ('982', '骨骼健康', '941', '3', '1', '4');
INSERT INTO `studyfox_category` VALUES ('983', '保健茶饮', '941', '3', '1', '5');
INSERT INTO `studyfox_category` VALUES ('984', '成分保健', '941', '3', '1', '6');
INSERT INTO `studyfox_category` VALUES ('985', '无糖食品', '941', '3', '1', '7');
INSERT INTO `studyfox_category` VALUES ('986', '调节三高', '942', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('987', '心脑养护', '942', '3', '1', '2');
INSERT INTO `studyfox_category` VALUES ('988', '改善睡眠', '942', '3', '1', '3');
INSERT INTO `studyfox_category` VALUES ('989', '肝肾养护', '942', '3', '1', '4');
INSERT INTO `studyfox_category` VALUES ('990', '免疫调节', '942', '3', '1', '5');
INSERT INTO `studyfox_category` VALUES ('991', '更多调理', '942', '3', '1', '6');
INSERT INTO `studyfox_category` VALUES ('992', '参茸礼品', '943', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('993', '更多礼品', '943', '3', '1', '2');
INSERT INTO `studyfox_category` VALUES ('994', '水果', '944', '3', '1', '1');
INSERT INTO `studyfox_category` VALUES ('995', '蔬菜', '944', '3', '1', '2');
INSERT INTO `studyfox_category` VALUES ('996', '海鲜水产', '944', '3', '1', '3');
INSERT INTO `studyfox_category` VALUES ('997', '禽蛋', '944', '3', '1', '4');
INSERT INTO `studyfox_category` VALUES ('998', '鲜肉', '944', '3', '1', '5');
INSERT INTO `studyfox_category` VALUES ('999', '加工类肉食', '944', '3', '1', '6');
INSERT INTO `studyfox_category` VALUES ('1000', '冻品', '944', '3', '1', '7');
INSERT INTO `studyfox_category` VALUES ('1001', '半成品', '943', '3', '1', '8');

-- ----------------------------
-- Table structure for `studyfox_goods`
-- ----------------------------
DROP TABLE IF EXISTS `studyfox_goods`;
CREATE TABLE `studyfox_goods` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cat_id` int(10) NOT NULL,
  `public_attr_id` varchar(200) NOT NULL DEFAULT '',
  `private_attr_id` varchar(100) NOT NULL DEFAULT '',
  `goods_private_attr` varchar(50) NOT NULL DEFAULT '',
  `goods_name` varchar(200) NOT NULL,
  `goods_name_exp` varchar(200) NOT NULL,
  `brand_id` smallint(6) NOT NULL,
  `goods_num` smallint(6) NOT NULL,
  `goods_weight` smallint(6) NOT NULL,
  `goods_price` decimal(10,0) NOT NULL,
  `promote_price` decimal(10,0) NOT NULL,
  `is_promote` tinyint(1) NOT NULL DEFAULT '0',
  `promote_start_date` int(11) DEFAULT NULL,
  `promote_end_date` int(11) DEFAULT NULL,
  `goods_desc` text NOT NULL,
  `goods_img` varchar(100) NOT NULL,
  `is_on_sale` tinyint(1) NOT NULL DEFAULT '1',
  `goods_addtime` int(11) NOT NULL,
  `goods_ontime` int(11) NOT NULL,
  `goods_spec` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of studyfox_goods
-- ----------------------------

-- ----------------------------
-- Table structure for `studyfox_nav`
-- ----------------------------
DROP TABLE IF EXISTS `studyfox_nav`;
CREATE TABLE `studyfox_nav` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `isshow` tinyint(1) NOT NULL,
  `sort` tinyint(1) NOT NULL,
  `opennew` tinyint(1) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `type` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of studyfox_nav
-- ----------------------------
INSERT INTO `studyfox_nav` VALUES ('1', '服装城', '1', '1', '1', '#', 'top');
INSERT INTO `studyfox_nav` VALUES ('2', '雪狐超市', '1', '2', '1', '#', 'top');
INSERT INTO `studyfox_nav` VALUES ('3', '团购', '1', '3', '1', '#', 'top');
INSERT INTO `studyfox_nav` VALUES ('4', '夺宝岛', '1', '4', '1', '#', 'top');
INSERT INTO `studyfox_nav` VALUES ('5', '在线游戏', '1', '5', '1', '#', 'top');

-- ----------------------------
-- Table structure for `studyfox_privateattr`
-- ----------------------------
DROP TABLE IF EXISTS `studyfox_privateattr`;
CREATE TABLE `studyfox_privateattr` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `attr_pid` int(10) NOT NULL,
  `cat_id` int(10) NOT NULL,
  `goods_private_attr` varchar(50) NOT NULL DEFAULT '',
  `attr_name` varchar(100) NOT NULL,
  `attr_img` varchar(100) NOT NULL,
  `attr_level` tinyint(1) NOT NULL,
  `attr_sort` smallint(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of studyfox_privateattr
-- ----------------------------

-- ----------------------------
-- Table structure for `studyfox_publicattr`
-- ----------------------------
DROP TABLE IF EXISTS `studyfox_publicattr`;
CREATE TABLE `studyfox_publicattr` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `pid` int(10) NOT NULL,
  `cat_id` int(10) NOT NULL,
  `title` varchar(100) NOT NULL,
  `level` tinyint(1) NOT NULL,
  `sort` smallint(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of studyfox_publicattr
-- ----------------------------
INSERT INTO `studyfox_publicattr` VALUES ('1', '0', '230', '品牌', '1', '1');
INSERT INTO `studyfox_publicattr` VALUES ('2', '1', '230', '联想（ThinkPad ）', '2', '1');
INSERT INTO `studyfox_publicattr` VALUES ('3', '1', '230', '宏碁（acer）110', '2', '2');
INSERT INTO `studyfox_publicattr` VALUES ('4', '1', '230', '索尼（SONY）', '2', '3');
INSERT INTO `studyfox_publicattr` VALUES ('5', '1', '230', '联想', '2', '4');
INSERT INTO `studyfox_publicattr` VALUES ('7', '0', '230', '价格', '1', '2');
INSERT INTO `studyfox_publicattr` VALUES ('8', '7', '230', '1000-2999', '2', '1');
INSERT INTO `studyfox_publicattr` VALUES ('9', '7', '230', '3000-3999', '2', '2');
INSERT INTO `studyfox_publicattr` VALUES ('10', '7', '230', '4000-4999', '2', '3');
INSERT INTO `studyfox_publicattr` VALUES ('11', '7', '230', '5000-5999', '2', '4');
INSERT INTO `studyfox_publicattr` VALUES ('12', '7', '230', '6000-6999', '2', '5');
INSERT INTO `studyfox_publicattr` VALUES ('13', '7', '230', '7000-9999', '2', '6');
INSERT INTO `studyfox_publicattr` VALUES ('14', '7', '230', '10000以上', '2', '7');
INSERT INTO `studyfox_publicattr` VALUES ('15', '0', '230', '尺寸', '1', '3');
INSERT INTO `studyfox_publicattr` VALUES ('16', '15', '230', '10.1英寸及以下', '2', '1');
INSERT INTO `studyfox_publicattr` VALUES ('17', '15', '230', '11英寸', '2', '2');
INSERT INTO `studyfox_publicattr` VALUES ('18', '15', '230', '12英寸', '2', '3');
INSERT INTO `studyfox_publicattr` VALUES ('19', '15', '230', '13英寸', '2', '4');
INSERT INTO `studyfox_publicattr` VALUES ('20', '15', '230', '14英寸', '2', '5');
INSERT INTO `studyfox_publicattr` VALUES ('21', '15', '230', '15英寸', '2', '6');
INSERT INTO `studyfox_publicattr` VALUES ('22', '15', '230', '16英寸-17英寸', '2', '7');
INSERT INTO `studyfox_publicattr` VALUES ('23', '15', '230', '17英寸以上', '2', '8');
INSERT INTO `studyfox_publicattr` VALUES ('24', '0', '230', '处理器', '1', '4');
INSERT INTO `studyfox_publicattr` VALUES ('25', '24', '230', 'Intel i3', '2', '1');
INSERT INTO `studyfox_publicattr` VALUES ('26', '24', '230', 'Intel i5', '2', '2');
INSERT INTO `studyfox_publicattr` VALUES ('27', '24', '230', 'Intel i7', '2', '3');
INSERT INTO `studyfox_publicattr` VALUES ('28', '24', '230', 'AMD A6', '2', '4');
INSERT INTO `studyfox_publicattr` VALUES ('29', '24', '230', 'AMD A8', '2', '5');
INSERT INTO `studyfox_publicattr` VALUES ('30', '24', '230', 'AMD A10', '2', '6');
INSERT INTO `studyfox_publicattr` VALUES ('31', '24', '230', '其他 Intel平台', '2', '7');
INSERT INTO `studyfox_publicattr` VALUES ('32', '24', '230', '其他AMD平台', '2', '8');
INSERT INTO `studyfox_publicattr` VALUES ('36', '0', '3', '玄幻小说', '1', '1');
INSERT INTO `studyfox_publicattr` VALUES ('37', '36', '3', '我吃西红柿', '2', '1');
INSERT INTO `studyfox_publicattr` VALUES ('38', '1', '230', '三星', '2', '1');
INSERT INTO `studyfox_publicattr` VALUES ('39', '0', '230', '硬盘', '1', '1');
INSERT INTO `studyfox_publicattr` VALUES ('40', '39', '230', '500G', '2', '1');

-- ----------------------------
-- Table structure for `studyfox_user`
-- ----------------------------
DROP TABLE IF EXISTS `studyfox_user`;
CREATE TABLE `studyfox_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(60) DEFAULT NULL,
  `sex` tinyint(1) DEFAULT NULL,
  `user_money` decimal(10,2) DEFAULT '0.00',
  `reg_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `reg_ip` varchar(15) DEFAULT '127.0.0.1',
  `last_login` int(11) DEFAULT NULL,
  `last_ip` varchar(15) DEFAULT NULL,
  `qq` varchar(20) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `remark` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of studyfox_user
-- ----------------------------
INSERT INTO `studyfox_user` VALUES ('1', '雪狐网', 'e10adc3949ba59abbe56e057f20f883e', '11111@qq.com', null, '0.00', null, null, '1407461490', null, '123456', null, '1', null);
INSERT INTO `studyfox_user` VALUES ('2', 'studyim', 'e10adc3949ba59abbe56e057f20f883e', '11111@qq.com', null, '0.00', null, null, '1407461490', null, '998009', null, '1', null);
INSERT INTO `studyfox_user` VALUES ('3', 'ffffff网', 'e10adc3949ba59abbe56e057f20f883e', '11111@qq.com', null, '0.00', null, null, '1407461490', null, '508968', null, '1', null);
INSERT INTO `studyfox_user` VALUES ('4', '111网', '111', '11111@qq.com', null, '0.00', null, null, null, null, null, null, '1', null);
INSERT INTO `studyfox_user` VALUES ('5', '222网', '222', '11111@qq.com', null, '0.00', null, null, null, null, null, null, '1', null);
INSERT INTO `studyfox_user` VALUES ('6', '333网', '333', '11111@qq.com', null, '0.00', null, null, null, null, null, null, '1', null);
INSERT INTO `studyfox_user` VALUES ('7', '444网', '444', '11111@qq.com', null, '0.00', null, null, null, null, null, null, '1', null);
INSERT INTO `studyfox_user` VALUES ('8', '555网', '555', '11111@qq.com', null, '0.00', null, null, null, null, null, null, '1', null);
INSERT INTO `studyfox_user` VALUES ('9', '666网', '666', '11111@qq.com', null, '0.00', null, null, null, null, null, null, '1', null);
INSERT INTO `studyfox_user` VALUES ('10', '777网', '777', '11111@qq.com', null, '0.00', null, null, null, null, '222222', null, '1', null);
INSERT INTO `studyfox_user` VALUES ('11', '888网', '888', '11111@qq.com', null, '0.00', null, null, null, null, null, null, '1', null);
INSERT INTO `studyfox_user` VALUES ('12', '999网', '999', '22222@qq.com', null, '0.00', null, null, null, null, '111111', null, '1', null);
INSERT INTO `studyfox_user` VALUES ('13', 'admin', 'fffffffff', 'fdsa@fdsa.fdsa', null, '0.00', null, null, null, null, null, null, '1', '');
INSERT INTO `studyfox_user` VALUES ('14', 'admin', 'fdsafdsa', 'fdsa@fdsa.fd', null, '0.00', null, null, null, null, null, null, '1', '');
INSERT INTO `studyfox_user` VALUES ('15', 'admin', 'fdsafdsa', 'fdsa@fdsa.fd', null, '0.00', null, null, null, null, null, null, '1', '');
INSERT INTO `studyfox_user` VALUES ('16', 'admin', 'fdsafdsa', 'fdsa@fdsa.fdsa', null, '0.00', '2013-08-22 13:49:03', '127.0.0.1', null, null, null, null, '1', '');
INSERT INTO `studyfox_user` VALUES ('17', 'admin', 'fdsafdsa', 'fdsa@fdsa.fdsa', null, '0.00', '2013-08-22 14:22:09', '127.0.0.1', null, null, null, null, '1', '');
INSERT INTO `studyfox_user` VALUES ('18', '', '', null, null, '0.00', '2013-08-22 14:22:45', '127.0.0.1', null, null, '990', null, null, null);
INSERT INTO `studyfox_user` VALUES ('19', 'admin', 'fdsafdsa', 'fdsa@fdsa.fdsa', null, '0.00', '2013-08-22 14:29:52', '127.0.0.1', null, null, null, null, '1', '');
INSERT INTO `studyfox_user` VALUES ('20', 'admin', 'fdsafdsa', 'fdsa@fdsa.fdsa', null, '0.00', '2013-08-22 14:31:16', '127.0.0.1', null, null, null, null, '1', '');
INSERT INTO `studyfox_user` VALUES ('21', 'admin', 'fdsafdsa', 'fdsa@fdsa.fdsa', null, '0.00', '2013-08-22 14:34:51', '127.0.0.1', null, null, null, null, '1', '');
INSERT INTO `studyfox_user` VALUES ('22', 'admin', 'fdsa', 'fdsa@fdsa.fdsa', null, '0.00', '2013-08-22 14:40:09', '127.0.0.1', null, null, null, null, '1', '');
INSERT INTO `studyfox_user` VALUES ('23', 'admin', 'fdsafdsa', 'fdsa@fdsa.fdsa', null, '0.00', '2013-08-22 14:40:17', '127.0.0.1', null, null, null, null, '1', '');
INSERT INTO `studyfox_user` VALUES ('24', 'admin', 'fdsafdsa', 'fdsa@fdsa.fdsa', null, '0.00', '2013-08-22 14:44:21', '127.0.0.1', null, null, null, null, '1', '');
INSERT INTO `studyfox_user` VALUES ('25', 'admin', 'fdsafdsa', 'fdsa@fdsa.fdsa', null, '0.00', '2013-08-22 14:44:22', '127.0.0.1', null, null, null, null, '1', '');
INSERT INTO `studyfox_user` VALUES ('26', 'admin', 'fdsafdsa', 'fdsa@fdsa.fdsa', null, '0.00', '2013-08-22 14:45:11', '127.0.0.1', null, null, null, null, '1', '');
INSERT INTO `studyfox_user` VALUES ('27', 'test001', '12345678', 'test@qq.com', null, '0.00', '2013-08-22 21:04:33', '127.0.0.1', null, null, null, null, '1', '');
INSERT INTO `studyfox_user` VALUES ('28', 'admin', 'fdsafdsa', 'fdsa@fdsa.fdsa', null, '0.00', '2013-08-22 21:08:58', '127.0.0.1', null, null, null, null, '1', '');
INSERT INTO `studyfox_user` VALUES ('29', 'admin', 'fdsafdsa', 'fdsa@fdsa.fdsa', null, '0.00', '2013-08-22 21:09:03', '127.0.0.1', null, null, null, null, '1', '');
INSERT INTO `studyfox_user` VALUES ('30', 'admin', 'fdsafdsa', 'fdsa@fdsa.fd', null, '0.00', '2013-08-22 21:16:21', '127.0.0.1', null, null, null, null, '1', '');
INSERT INTO `studyfox_user` VALUES ('31', 'admin', 'fdsafdsa', 'fdsa@fdsa.fd', null, '0.00', '2013-08-22 21:16:24', '127.0.0.1', null, null, null, null, '1', '');
INSERT INTO `studyfox_user` VALUES ('32', 'admin11', 'fdsafdsa', 'fdsa@fdsa.fdsa', null, '0.00', '2013-08-22 21:17:22', '127.0.0.1', null, null, null, null, '1', '');
INSERT INTO `studyfox_user` VALUES ('33', 'admin', 'fdsafdsa', 'fdsa@fdsa.fdsa', null, '0.00', '2013-08-22 23:21:50', '127.0.0.1', null, null, null, null, '1', '');
INSERT INTO `studyfox_user` VALUES ('34', 'admin', 'fdsafdsa', 'fdsa@fdsa.fdsa', null, '0.00', '2013-08-22 23:24:25', '127.0.0.1', null, null, null, null, '1', '');
INSERT INTO `studyfox_user` VALUES ('35', 'admin', 'fdsafdsa', 'fdsa@fdsa.fdsa', null, '0.00', '2013-08-22 23:25:33', '127.0.0.1', null, null, null, null, '1', '');
INSERT INTO `studyfox_user` VALUES ('36', 'admin', 'fdsafdsa', 'fdsa@fdsa.fdsa', null, '0.00', '2013-08-22 23:38:21', '127.0.0.1', null, null, null, null, '1', '');
INSERT INTO `studyfox_user` VALUES ('37', 'admin', 'fdsafdsa', 'fdsa@fdsa.fdsa', null, '0.00', '2013-08-22 23:38:27', '127.0.0.1', null, null, null, null, '1', '');
INSERT INTO `studyfox_user` VALUES ('38', 'admin', 'fdsafdsa', 'fdsa@fdsa.fdsa', null, '0.00', '2013-08-22 23:44:54', '127.0.0.1', null, null, null, null, '1', '');
INSERT INTO `studyfox_user` VALUES ('39', 'admin', 'fdsafdsa', 'fdsa@fdsa.fdsa', null, '0.00', '2013-08-22 23:44:58', '127.0.0.1', null, null, null, null, '1', '');
INSERT INTO `studyfox_user` VALUES ('40', 'admin', 'fdsafdsaffff', 'fdsa@fdsa.fdsa', null, '0.00', '2013-08-22 23:49:02', '127.0.0.1', null, null, null, null, '1', '');
INSERT INTO `studyfox_user` VALUES ('41', 'admin', 'fdsafdsa', 'fdsa@fdsa.fdsa', null, '0.00', '2013-08-22 23:51:21', '127.0.0.1', null, null, null, null, '1', '');
INSERT INTO `studyfox_user` VALUES ('42', 'admin', 'fdsafdsa', 'fdsa@fdsa.fdsa', null, '0.00', '2013-08-22 23:51:53', '127.0.0.1', null, null, null, null, '1', '');
INSERT INTO `studyfox_user` VALUES ('43', 'admin', 'fdsafdsaffff', 'fdsa@fdsa.fdsa', null, '0.00', '2013-08-22 23:53:44', '127.0.0.1', null, null, null, null, '1', '');
INSERT INTO `studyfox_user` VALUES ('44', 'admin', 'fdsafdsa', 'fdsa@fdsa.fdsa', null, '0.00', '2013-08-22 23:54:42', '127.0.0.1', null, null, null, null, '1', '');
INSERT INTO `studyfox_user` VALUES ('45', 'admin', 'fdsafdsa', 'fdsa@fdsa.fdsa', null, '0.00', '2013-08-22 23:57:36', '127.0.0.1', null, null, null, null, '1', '');
INSERT INTO `studyfox_user` VALUES ('46', 'admin', 'fdsafdsaffff', 'fdsa@fdsa.fd', null, '0.00', '2013-08-22 23:57:53', '127.0.0.1', null, null, null, null, '1', '');
INSERT INTO `studyfox_user` VALUES ('47', 'admin', 'fdsafdsa', 'fdsa@fdsa.fdsa', null, '0.00', '2013-08-23 00:01:38', '127.0.0.1', null, null, null, null, '1', '');
INSERT INTO `studyfox_user` VALUES ('48', 'aaa111', 'fdsafdsa', 'fdsa@fdsa.fdsa', null, '0.00', '2013-08-23 00:02:18', '127.0.0.1', null, null, null, null, '1', '');
INSERT INTO `studyfox_user` VALUES ('49', 'admin', 'fdsafdsa', 'fdsa@fdsa.fdsa', null, '0.00', '2013-08-23 00:07:47', '127.0.0.1', null, null, null, null, '1', '');
INSERT INTO `studyfox_user` VALUES ('50', 'admin', 'fdsafdsa', 'fdsa@fdsa.fdsa', null, '0.00', '2013-08-23 00:08:10', '127.0.0.1', null, null, null, null, '1', '');
INSERT INTO `studyfox_user` VALUES ('51', 'admin', 'fdsafdsa', 'fdsa@fdsa.fdsa', null, '0.00', '2013-08-23 00:12:42', '127.0.0.1', null, null, null, null, '1', '');
INSERT INTO `studyfox_user` VALUES ('52', 'admin', 'fdsafdsa', 'fdsa@fdsa.fdsa', null, '0.00', '2013-08-23 00:12:59', '127.0.0.1', null, null, null, null, '1', '');
INSERT INTO `studyfox_user` VALUES ('53', 'admin', 'fdsafdsa', 'fdsa@fdsa.fdsa', null, '0.00', '2013-08-23 00:15:19', '127.0.0.1', null, null, null, null, '1', '');
INSERT INTO `studyfox_user` VALUES ('54', 'admin', 'fdsafdsa', 'fdsa@fdsa.fdsa', null, '0.00', '2013-08-23 00:15:35', '127.0.0.1', null, null, null, null, '1', '');
INSERT INTO `studyfox_user` VALUES ('55', 'erradmin', 'fdsafdsa', 'fdsa@fdsa.fdsa', null, '0.00', '2013-08-23 00:16:42', '127.0.0.1', null, null, null, null, '1', '');
INSERT INTO `studyfox_user` VALUES ('56', 'admin', 'fdsafdsa', 'fdsa@fdsa.fdsa', null, '0.00', '2013-08-23 00:17:23', '127.0.0.1', null, null, null, null, '1', '');
INSERT INTO `studyfox_user` VALUES ('57', 'admin', 'fdsafdsa', 'fdsa@fdsa.fdsa', null, '0.00', '2013-08-23 00:30:20', '127.0.0.1', null, null, null, null, '1', '');
INSERT INTO `studyfox_user` VALUES ('58', 'admin', 'fdsafdsa', 'fdsa@fdsa.fdsa', null, '0.00', '2013-08-23 00:36:14', '127.0.0.1', null, null, null, null, '1', '');
INSERT INTO `studyfox_user` VALUES ('59', 'admin', 'fdsafdsa', 'fdsa@fdsa.fdsa', null, '0.00', '2013-08-23 00:36:17', '127.0.0.1', null, null, null, null, '1', '');
INSERT INTO `studyfox_user` VALUES ('60', 'admin', 'fdsafdsa', 'fdsa@fdsa.fdsa', null, '0.00', '2013-08-23 00:36:27', '127.0.0.1', null, null, null, null, '1', '');
INSERT INTO `studyfox_user` VALUES ('63', 'admin', 'fdsafdsa', 'fdsa@fdsa.fdsa', null, '0.00', '2013-08-23 10:14:46', '127.0.0.1', null, null, null, null, '1', '');
INSERT INTO `studyfox_user` VALUES ('64', 'admin', 'fdsafdsa', 'fdsa@fdsa.fdsa', '0', '10.00', '2013-08-23 10:28:39', '127.0.0.1', null, null, '', '', '1', '');
INSERT INTO `studyfox_user` VALUES ('110', 'Lyc', 'e10adc3949ba59abbe56e057f20f883e', '859928111@qq.com', '0', '0.00', '2013-08-23 15:21:10', '127.0.0.1', null, null, '859928111', null, '1', '');
INSERT INTO `studyfox_user` VALUES ('111', '雪狐客服', 'aa5ca384b60f05048720d049f562593c', '2608818666@qq.com', '0', '0.00', '2013-08-24 22:01:23', '127.0.0.1', null, null, '2608818666', null, '1', '');
INSERT INTO `studyfox_user` VALUES ('112', '雪狐', 'dd2fadb0f60ea43012620746cc6ba423', '508968@qq.com', '1', '0.00', '2013-08-24 22:06:17', '127.0.0.1', null, null, '508968', '12311111111', '1', 'fdsafdsa魂牵梦萦111');
INSERT INTO `studyfox_user` VALUES ('114', 'studyfox', '21232f297a57a5a743894a0e4a801fc3', '110@qq.com', '0', '11.00', '2015-03-05 19:48:52', '127.0.0.1', null, null, '', '', '1', ' ');
