/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50714
Source Host           : 127.0.0.1:3306
Source Database       : kbcms

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2017-08-08 18:24:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ykb_admin_group
-- ----------------------------
DROP TABLE IF EXISTS `ykb_admin_group`;
CREATE TABLE `ykb_admin_group` (
  `group_id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `base_purview` text,
  `menu_purview` text,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`group_id`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='后台管理组';

-- ----------------------------
-- Records of ykb_admin_group
-- ----------------------------
INSERT INTO `ykb_admin_group` VALUES ('1', '管理员', 'a:2:{i:0;s:15:\"Admin_AppManage\";i:1;s:21:\"Admin_AppManage_index\";}', 'a:4:{i:0;s:19:\"首页_管理首页\";i:1;s:19:\"内容_栏目管理\";i:2;s:19:\"内容_文章管理\";i:3;s:22:\"系统_用户组管理\";}', '1');
INSERT INTO `ykb_admin_group` VALUES ('3', '测试', null, '10,11,12,20,21,22,30,301,302,40,31,50,51,52,53', '1');
INSERT INTO `ykb_admin_group` VALUES ('4', '测试2', null, null, '1');

-- ----------------------------
-- Table structure for ykb_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `ykb_admin_log`;
CREATE TABLE `ykb_admin_log` (
  `log_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) DEFAULT NULL,
  `time` int(10) DEFAULT NULL,
  `ip` varchar(250) DEFAULT NULL,
  `app` varchar(250) DEFAULT '1',
  `content` text,
  PRIMARY KEY (`log_id`),
  KEY `user_id` (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8 COMMENT='后台操作记录';

-- ----------------------------
-- Records of ykb_admin_log
-- ----------------------------
INSERT INTO `ykb_admin_log` VALUES ('1', '0', '1465364228', '127.0.0.1', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('2', '0', '1466500566', '127.0.0.1', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('3', '0', '1466581122', '127.0.0.1', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('4', '0', '1466583546', '127.0.0.1', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('5', '0', '1466583702', '127.0.0.1', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('6', '0', '1466586306', '116.3.10.231', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('7', '0', '1466586362', '116.3.10.231', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('8', '0', '1466586407', '116.3.10.231', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('9', '0', '1466596337', '127.0.0.1', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('10', '0', '1466830623', '127.0.0.1', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('11', '0', '1466910819', '127.0.0.1', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('12', '0', '1466932334', '127.0.0.1', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('13', '0', '1466952906', '182.201.240.120', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('14', '0', '1466952939', '182.201.240.120', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('15', '0', '1466955213', '182.201.240.120', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('16', '0', '1467010540', '180.138.79.219', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('17', '0', '1467012229', '116.3.8.78', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('18', '0', '1467016265', '127.0.0.1', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('19', '0', '1467093159', '127.0.0.1', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('20', '0', '1469602288', '127.0.0.1', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('21', '0', '1469603985', '127.0.0.1', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('22', '0', '1470445147', '127.0.0.1', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('23', '0', '1470547542', '127.0.0.1', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('24', '0', '1470550216', '123.185.162.130', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('25', '0', '1470552376', '222.212.10.145', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('26', '0', '1470552638', '222.69.246.154', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('27', '0', '1470570357', '123.185.162.130', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('28', '0', '1470588681', '222.212.3.52', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('29', '0', '1470619127', '222.212.10.145', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('30', '0', '1470619447', '116.3.7.139', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('31', '0', '1470641368', '222.212.10.145', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('32', '0', '1470766416', '171.213.0.127', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('33', '0', '1470791757', '171.213.1.165', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('34', '0', '1470792017', '116.3.10.232', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('35', '1', '1470822717', '171.213.1.165', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('36', '0', '1470826679', '123.185.162.130', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('37', '0', '1470878189', '171.213.1.165', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('38', '0', '1470878334', '116.3.10.232', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('39', '0', '1470967344', '116.3.10.232', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('40', '0', '1470981832', '39.153.65.24', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('41', '0', '1470982613', '218.88.77.218', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('42', '0', '1471090707', '218.88.76.76', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('43', '0', '1471091235', '123.56.154.186', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('44', '0', '1471400937', '116.3.9.8', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('45', '0', '1471401690', '107.151.213.27', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('46', '0', '1471448007', '180.166.141.210', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('47', '0', '1489405965', '::1', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('48', '0', '1489406503', '::1', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('49', '0', '1496889753', '::1', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('50', '0', '1496892862', '127.0.0.1', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('51', '0', '1496913924', '127.0.0.1', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('52', '0', '1496970546', '127.0.0.1', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('53', '0', '1496971591', '127.0.0.1', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('54', '0', '1497230898', '127.0.0.1', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('55', '0', '1497599728', '127.0.0.1', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('56', '0', '1497856141', '127.0.0.1', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('57', '0', '1497861830', '127.0.0.1', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('58', '0', '1497937434', '127.0.0.1', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('59', '0', '1498200044', '127.0.0.1', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('60', '0', '1500456880', '::1', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('61', '0', '1500457039', '::1', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('62', '0', '1500460613', '::1', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('63', '0', '1500532263', '::1', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('64', '0', '1500533790', '::1', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('65', '0', '1500533932', '::1', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('66', '0', '1500538458', '::1', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('67', '0', '1500538459', '::1', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('68', '0', '1500606171', '::1', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('69', '0', '1500606342', '::1', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('70', '0', '1500606414', '::1', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('71', '0', '1500626604', '::1', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('72', '0', '1500875734', '::1', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('73', '0', '1500945927', '::1', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('74', '0', '1500946051', '::1', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('75', '0', '1500966573', '::1', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('76', '0', '1500973603', '::1', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('77', '0', '1501037698', '::1', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('78', '0', '1501039438', '::1', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('79', '0', '1501040842', '::1', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('80', '0', '1501046117', '::1', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('81', '0', '1501058666', '::1', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('82', '0', '1501059840', '::1', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('83', '0', '1501125834', '::1', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('84', '0', '1501137008', '::1', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('85', '0', '1501206710', '::1', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('86', '0', '1501207388', '::1', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('87', '0', '1501222348', '::1', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('88', '0', '1501222383', '::1', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('89', '0', '1501227546', '::1', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('90', '0', '1501227614', '::1', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('91', '0', '1501227675', '::1', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('92', '0', '1501227730', '::1', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('93', '0', '1501227786', '::1', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('94', '0', '1501227808', '::1', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('95', '0', '1501228063', '::1', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('96', '0', '1501228075', '::1', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('97', '0', '1501464840', '::1', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('98', '0', '1501470383', '::1', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('99', '0', '1501552599', '::1', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('100', '0', '1501553973', '::1', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('101', '0', '1501641652', '::1', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('102', '0', '1501661975', '::1', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('103', '0', '1501664786', '::1', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('104', '0', '1501723807', '::1', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('105', '0', '1501724218', '::1', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('106', '0', '1501743868', '::1', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('107', '0', '1501753335', '::1', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('108', '0', '1501753951', '::1', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('109', '0', '1501754032', '::1', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('110', '0', '1501809625', '::1', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('111', '0', '1501840518', '::1', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('112', '0', '1502070273', '::1', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('113', '0', '1502084064', '::1', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('114', '0', '1502084094', '::1', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('115', '0', '1502084102', '::1', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('116', '0', '1502084131', '::1', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('117', '0', '1502087094', '::1', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('118', '0', '1502163766', '::1', 'admin', '登录系统');
INSERT INTO `ykb_admin_log` VALUES ('119', '0', '1502171037', '::1', 'admin', '登录系统');

-- ----------------------------
-- Table structure for ykb_admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `ykb_admin_menu`;
CREATE TABLE `ykb_admin_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT '0' COMMENT '父级菜单id',
  `name` varchar(255) DEFAULT NULL COMMENT '菜单名称',
  `url` varchar(255) DEFAULT NULL COMMENT '菜单链接地址',
  `iconfont` varchar(255) DEFAULT NULL COMMENT '图标',
  `lang_id` int(11) DEFAULT '1' COMMENT '语言id',
  `status` tinyint(4) DEFAULT '1' COMMENT '状态1开启2关闭',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=164 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ykb_admin_menu
-- ----------------------------
INSERT INTO `ykb_admin_menu` VALUES ('10', '0', '首页', '', '#xe610;', '1', '1');
INSERT INTO `ykb_admin_menu` VALUES ('11', '10', '管理首页', '/admin/index/home.html', '#xe64c;', '1', '1');
INSERT INTO `ykb_admin_menu` VALUES ('12', '10', '后台菜单', '/admin/admin_menu/index.html', '#xe635;', '1', '1');
INSERT INTO `ykb_admin_menu` VALUES ('20', '0', '内容', '', '#xe637;', '1', '1');
INSERT INTO `ykb_admin_menu` VALUES ('21', '20', '栏目管理', '/kbcms/admin_category/index.html', '#xe635;', '1', '1');
INSERT INTO `ykb_admin_menu` VALUES ('22', '20', '文章管理', '/article/admin_content/index.html', '#xe62a;', '1', '1');
INSERT INTO `ykb_admin_menu` VALUES ('30', '0', '表单', '', '#xe64a;', '1', '1');
INSERT INTO `ykb_admin_menu` VALUES ('40', '0', '功能', '', '#xe637;', '1', '1');
INSERT INTO `ykb_admin_menu` VALUES ('31', '40', '碎片管理', '/kbcms/admin_fragment/index.html', '#xe611;', '1', '1');
INSERT INTO `ykb_admin_menu` VALUES ('32', '40', '推荐位管理', '/kbcms/admin_position/index.html', '#xe62a;', '1', '1');
INSERT INTO `ykb_admin_menu` VALUES ('33', '40', '扩展模型管理', '/kbcms/admin_expand/index.html', '#xe62a;', '1', '1');
INSERT INTO `ykb_admin_menu` VALUES ('34', '40', '表单管理', '/kbcms/admin_form/index.html', '#xe62a;', '1', '1');
INSERT INTO `ykb_admin_menu` VALUES ('50', '0', '系统', '', '#xe646;', '1', '1');
INSERT INTO `ykb_admin_menu` VALUES ('51', '50', '系统设置', '/admin/setting/site.html', '#xe689;', '1', '1');
INSERT INTO `ykb_admin_menu` VALUES ('52', '50', '后台用户', '/admin/admin_user/index.html', '#xe672;', '1', '1');
INSERT INTO `ykb_admin_menu` VALUES ('53', '50', '后台用户组', '/admin/admin_user_group/index.html', '#xe668;', '1', '1');
INSERT INTO `ykb_admin_menu` VALUES ('54', '50', '会员管理', '/admin/user/index.html', '#xe608;', '1', '1');
INSERT INTO `ykb_admin_menu` VALUES ('55', '50', '会员类型', '/admin/user_type/index.html', '#xe630;', '1', '1');
INSERT INTO `ykb_admin_menu` VALUES ('60', '0', '插件中心', '', '#xe637;', '1', '1');
INSERT INTO `ykb_admin_menu` VALUES ('61', '60', '插件管理', '', '#xe62a;', '1', '1');
INSERT INTO `ykb_admin_menu` VALUES ('62', '61', '插件工具', '/plug/plugin/index.html', '#xe62a;', '1', '1');
INSERT INTO `ykb_admin_menu` VALUES ('63', '50', '语言管理', '/admin/lang/index.html', '#xe60e;', '1', '1');

-- ----------------------------
-- Table structure for ykb_admin_user
-- ----------------------------
DROP TABLE IF EXISTS `ykb_admin_user`;
CREATE TABLE `ykb_admin_user` (
  `user_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '用户IP',
  `group_id` int(10) NOT NULL DEFAULT '1' COMMENT '用户组ID',
  `username` varchar(20) NOT NULL COMMENT '登录名',
  `password` varchar(32) NOT NULL COMMENT '密码',
  `nicename` varchar(20) DEFAULT NULL COMMENT '昵称',
  `email` varchar(50) DEFAULT NULL,
  `status` tinyint(1) unsigned DEFAULT '1' COMMENT '状态',
  `level` int(5) DEFAULT '1' COMMENT '等级',
  `reg_time` int(10) DEFAULT NULL COMMENT '注册时间',
  `last_login_time` int(10) DEFAULT NULL COMMENT '最后登录时间',
  `last_login_ip` varchar(15) DEFAULT '未知' COMMENT '登录IP',
  PRIMARY KEY (`user_id`),
  KEY `username` (`username`),
  KEY `group_id` (`group_id`) USING BTREE,
  KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='后台管理员';

-- ----------------------------
-- Records of ykb_admin_user
-- ----------------------------
INSERT INTO `ykb_admin_user` VALUES ('1', '1', 'admin', 'eff938d0cb3a9e7c2a3ed097acb0d64e', '管理员', '529988248@qq.com', '1', '1', '1399361747', '1502171037', '::1');
INSERT INTO `ykb_admin_user` VALUES ('2', '3', 'zz52998', 'e10adc3949ba59abbe56e057f20f883e', '测试管理', '529988248@qq.com', '1', '1', null, '1501222383', '::1');

-- ----------------------------
-- Table structure for ykb_category
-- ----------------------------
DROP TABLE IF EXISTS `ykb_category`;
CREATE TABLE `ykb_category` (
  `class_id` int(10) NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) DEFAULT '0',
  `app` varchar(20) DEFAULT NULL,
  `show` tinyint(1) unsigned DEFAULT '1',
  `sequence` int(10) DEFAULT '0',
  `type` int(10) NOT NULL DEFAULT '1',
  `name` varchar(250) DEFAULT NULL,
  `urlname` varchar(250) DEFAULT NULL,
  `subname` varchar(250) DEFAULT NULL,
  `image` varchar(250) DEFAULT NULL,
  `class_tpl` varchar(250) DEFAULT NULL,
  `keywords` varchar(250) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `upload_config` int(10) DEFAULT '1',
  `out_url` varchar(255) DEFAULT NULL COMMENT '网站外链',
  `target` tinyint(1) DEFAULT '0' COMMENT '当前窗口1否0是',
  `lang_id` int(11) DEFAULT '1' COMMENT '语言id 默认中文1',
  PRIMARY KEY (`class_id`),
  KEY `pid` (`parent_id`),
  KEY `mid` (`app`),
  KEY `sequence` (`sequence`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='栏目基础信息';

-- ----------------------------
-- Records of ykb_category
-- ----------------------------
INSERT INTO `ykb_category` VALUES ('20', '0', 'page', '1', '2', '1', '关于我们', 'guanyuwomen', '', '/uploads/admin/20170419/8cb36838cc73b0bfdceff8f2c043b743.jpg', 'page', '', '徽隆公司2010年创立于上海市松江区，这里历史悠久,历史上曾有“苏（苏州府）松（松江府）财赋半天下”之美誉；这里风景秀丽，名胜众多，有“唐宋元明清，从古至今“之誉，这里交通便利，地理位置特殊而重要。', '1', '', '0', '1');
INSERT INTO `ykb_category` VALUES ('59', '0', 'article', '1', '1', '1', '新闻资讯', '', '', '', 'list', '', '', '1', '', '0', '1');
INSERT INTO `ykb_category` VALUES ('65', '0', 'article', '1', '1', '1', 'News', '', '', '', 'list', '', '', '1', '', '0', '2');
INSERT INTO `ykb_category` VALUES ('66', '0', 'page', '1', '2', '1', 'About us', '', '', '', 'page', '', '', '1', null, '0', '2');

-- ----------------------------
-- Table structure for ykb_category_article
-- ----------------------------
DROP TABLE IF EXISTS `ykb_category_article`;
CREATE TABLE `ykb_category_article` (
  `class_id` int(10) NOT NULL,
  `fieldset_id` int(10) NOT NULL,
  `content_tpl` varchar(250) NOT NULL,
  `config_upload` text,
  `content_order` varchar(250) NOT NULL,
  `page` int(10) NOT NULL DEFAULT '10'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文章栏目信息';

-- ----------------------------
-- Records of ykb_category_article
-- ----------------------------
INSERT INTO `ykb_category_article` VALUES ('59', '3', 'content', '', 'time DESC', '10');
INSERT INTO `ykb_category_article` VALUES ('61', '0', 'content', null, '', '10');
INSERT INTO `ykb_category_article` VALUES ('65', '0', 'content', null, '', '10');

-- ----------------------------
-- Table structure for ykb_category_page
-- ----------------------------
DROP TABLE IF EXISTS `ykb_category_page`;
CREATE TABLE `ykb_category_page` (
  `class_id` int(10) unsigned NOT NULL DEFAULT '0',
  `content` mediumtext COMMENT '内容',
  KEY `cid` (`class_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='单页栏目信息';

-- ----------------------------
-- Records of ykb_category_page
-- ----------------------------
INSERT INTO `ykb_category_page` VALUES ('20', '<p>\n	1kbcms是一款基于thinkphp5.0开发，为小型企业建站，灵活组装开发的管理系统。&nbsp;\n</p>\n<p>\n	1kbcms完全开放源代码，具有良好的开放性、高可扩展性、安全性和透明性，您可以进行二次开发以满足自身需求；\n</p>\n<p>\n	1kbcms内容管理系统采用thinkphp5.0开发，目前核心为5.0.10，\n</p>\n<p>\n	作为一个cms管理系统，方便企业建站，可以自由修改后台文章字段，前台显示，便于客户后期的种种需求变更，系统未完善，制作中..\n</p>');
INSERT INTO `ykb_category_page` VALUES ('60', '123123');
INSERT INTO `ykb_category_page` VALUES ('66', '1kbcms is a management system based on thinkphp5.0 development for small enterprises and flexible assembly and development.<br />\n1kbcms fully open source code, with good openness, high scalability, security and transparency, you can carry out two development to meet their own needs;<br />\n1kbcms content management system using thinkphp5.0 development, the current core is 5.0.10,<br />\nAs a CMS management system, to facilitate enterprise building site, you can freely modify the background of the field, the front desk display, easy to customer changes in the later period of demand, the system is not perfect, the production of..');

-- ----------------------------
-- Table structure for ykb_config
-- ----------------------------
DROP TABLE IF EXISTS `ykb_config`;
CREATE TABLE `ykb_config` (
  `name` varchar(250) NOT NULL,
  `data` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='网站配置';

-- ----------------------------
-- Records of ykb_config
-- ----------------------------
INSERT INTO `ykb_config` VALUES ('site_title', '网站管理');
INSERT INTO `ykb_config` VALUES ('site_subtitle', '网站管理副标题');
INSERT INTO `ykb_config` VALUES ('site_url', '');
INSERT INTO `ykb_config` VALUES ('site_keywords', '网站管理关键词');
INSERT INTO `ykb_config` VALUES ('site_description', '网站管理站点描述');
INSERT INTO `ykb_config` VALUES ('site_email', '529988248@qq.com');
INSERT INTO `ykb_config` VALUES ('site_copyright', '12322');
INSERT INTO `ykb_config` VALUES ('site_statistics', '测试2222');
INSERT INTO `ykb_config` VALUES ('tpl_name', 'default');
INSERT INTO `ykb_config` VALUES ('tpl_index', 'index');
INSERT INTO `ykb_config` VALUES ('tpl_search', 'search');
INSERT INTO `ykb_config` VALUES ('tpl_tags', 'tag');
INSERT INTO `ykb_config` VALUES ('mobile_status', '2');
INSERT INTO `ykb_config` VALUES ('mobile_tpl', 'mobile');
INSERT INTO `ykb_config` VALUES ('mobile_domain', '');
INSERT INTO `ykb_config` VALUES ('lang_open', '1');
INSERT INTO `ykb_config` VALUES ('lang_id', '1');

-- ----------------------------
-- Table structure for ykb_config_upload
-- ----------------------------
DROP TABLE IF EXISTS `ykb_config_upload`;
CREATE TABLE `ykb_config_upload` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL,
  `upload_size` int(10) NOT NULL,
  `upload_exts` varchar(250) DEFAULT NULL,
  `upload_replace` tinyint(1) DEFAULT NULL,
  `thumb_status` tinyint(1) DEFAULT NULL,
  `water_status` tinyint(1) DEFAULT NULL,
  `thumb_type` tinyint(1) DEFAULT NULL,
  `thumb_width` int(10) DEFAULT NULL,
  `thumb_height` int(10) DEFAULT NULL,
  `water_image` varchar(250) DEFAULT NULL,
  `water_position` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='网站配置';

-- ----------------------------
-- Records of ykb_config_upload
-- ----------------------------
INSERT INTO `ykb_config_upload` VALUES ('1', '默认', '10', 'jpg,gif,bmp,png', '0', '0', '0', '1', '800', '800', 'logo.jpg', '1');

-- ----------------------------
-- Table structure for ykb_content
-- ----------------------------
DROP TABLE IF EXISTS `ykb_content`;
CREATE TABLE `ykb_content` (
  `content_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '文章ID',
  `class_id` int(10) DEFAULT NULL COMMENT '栏目ID',
  `title` varchar(250) DEFAULT NULL COMMENT '标题',
  `urltitle` varchar(250) DEFAULT NULL COMMENT 'URL路径',
  `font_color` varchar(250) DEFAULT NULL COMMENT '颜色',
  `font_bold` tinyint(1) DEFAULT NULL COMMENT '加粗',
  `font_em` tinyint(1) DEFAULT NULL,
  `position` varchar(250) DEFAULT NULL,
  `keywords` varchar(250) DEFAULT NULL COMMENT '关键词',
  `description` varchar(500) DEFAULT NULL COMMENT '描述',
  `time` int(10) DEFAULT NULL COMMENT '更新时间',
  `image` varchar(250) DEFAULT NULL COMMENT '封面图',
  `url` varchar(250) DEFAULT NULL COMMENT '跳转',
  `out_url` varchar(255) DEFAULT NULL,
  `sequence` int(10) DEFAULT NULL COMMENT '排序',
  `status` int(10) DEFAULT '1' COMMENT '状态',
  `copyfrom` varchar(250) DEFAULT NULL COMMENT '来源',
  `views` int(10) DEFAULT '0' COMMENT '浏览数',
  `taglink` int(10) DEFAULT '0' COMMENT 'TAG链接',
  `tpl` varchar(250) DEFAULT NULL,
  `site` int(10) DEFAULT '1',
  `target` tinyint(1) DEFAULT '0' COMMENT '当前窗口1否0是',
  PRIMARY KEY (`content_id`),
  KEY `title` (`title`) USING BTREE,
  KEY `description` (`description`(255)) USING BTREE,
  KEY `keywords` (`keywords`),
  KEY `class_id` (`class_id`) USING BTREE,
  KEY `time` (`time`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8 COMMENT='内容基础';

-- ----------------------------
-- Records of ykb_content
-- ----------------------------
INSERT INTO `ykb_content` VALUES ('133', '59', '守得初心自清宁，扪心无愧如坦途', '', null, null, null, '1', null, '阿萨达', '1497231583', '', '', null, '0', '1', null, '25', '0', '', '1', '0');
INSERT INTO `ykb_content` VALUES ('134', '59', '任岁月变迁，我心不惊', '', null, null, null, null, null, '', '1497259707', '', '', null, '0', '1', null, '2', '0', '', '1', '0');
INSERT INTO `ykb_content` VALUES ('137', '59', '时光且长，一切都来得及', '', null, null, null, '2', null, '', '1497259621', '', '', null, '0', '1', null, '5', '0', '', '1', '0');
INSERT INTO `ykb_content` VALUES ('138', '59', '不殆时间，不负自己', '', null, null, null, null, null, '', '1497259940', '', '', null, '0', '1', null, '10', '0', '', '1', '0');
INSERT INTO `ykb_content` VALUES ('139', '59', '相遇文字，相遇你', '', null, null, null, null, null, '', '1501662959', '', '', null, '0', '1', null, '7', '0', '', '1', '0');
INSERT INTO `ykb_content` VALUES ('140', '65', 'Meets the character, meets you', '', null, null, null, null, null, '', '1502180876', '', '', null, '0', '1', null, '1', '0', '', '1', '0');
INSERT INTO `ykb_content` VALUES ('141', '65', 'Not dangerous time, not their own negative', '', null, null, null, null, null, '', '1502181023', '', '', null, '0', '1', null, '0', '0', '', '1', '0');
INSERT INTO `ykb_content` VALUES ('142', '65', 'Let the years change, my heart is not surprised', '', null, null, null, null, null, '', '1502181147', '', '', null, '0', '1', null, '1', '0', '', '1', '0');
INSERT INTO `ykb_content` VALUES ('143', '65', 'Time and long, everything is in time', '', null, null, null, null, null, '', '1502181264', '', '', null, '0', '1', null, '0', '0', '', '1', '0');
INSERT INTO `ykb_content` VALUES ('144', '65', 'Keep the heart from the early Qing Ling, such as to have a clear conscience', '', null, null, null, null, null, '', '1502181334', '', '', null, '0', '1', null, '5', '0', '', '1', '0');

-- ----------------------------
-- Table structure for ykb_content_article
-- ----------------------------
DROP TABLE IF EXISTS `ykb_content_article`;
CREATE TABLE `ykb_content_article` (
  `content_id` int(10) DEFAULT NULL,
  `content` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文章内容信息';

-- ----------------------------
-- Records of ykb_content_article
-- ----------------------------
INSERT INTO `ykb_content_article` VALUES ('133', '&nbsp; &nbsp; &nbsp; 闲来无事，常常流连于浩渺如宇宙的网络世界去浏览赏读那些文学大家或者是妙手之笔用心倾注的“真迹墨宝”。也许是因为懒，自觉得，如今这样的浏览阅读方式远胜于翻看纸质图书的经济了。启动电脑，打开浏览器，便如同走进一家无边无际的世界级的图书馆：文豪名家、古今中外、天文地理、经史子集、人文历史、奇趣轶闻等等等等，无所不包、无所不有，与此，十万分地感慨当代科学技术的发达，网络的奇妙与神速，为广大为文而用心者，为我这区区一小卒打开并提供了一条如此便利又实惠的轻捷之途。<br />\n&emsp;&emsp;<br />\n&emsp;&emsp;我之所以将那些流传至今的，盛行于互联网的，或者德才兼备的文字称之为“真迹墨宝”是因为我在搜肠刮肚之余实在找不出更恰当的词语去形容他们作品的美好。在我的眼里，那是从写作者的心里手下自然流淌出来的一泓泓山泉清流，是盛开在我们精神世界里的灵魂之花，那里的每一笔，每一字，每一句都饱含着他们极其认真仔细执着负责的态度。在那里，他们为之耗费了多少的精力精神与时间，其中饱蘸着他们多少的智慧和灵魂之光，多少的社会责任与担当的文化贡献，使我深感汗流浃背的而变得肃然起敬起来。<br />\n&emsp;&emsp;<br />\n&emsp;&emsp;我之所以将那些伟大的作品，那些被众人奉为圭臬的，那些被点赞推荐的优美文字称之为“真迹墨宝”，还因为是——在这样的文字里你绝对看不见或找不到一星点儿的抄袭剽窃的迹像。旁引博证也好，借古喻今也罢，自成一体的文字，似诙谐、似幽默，或平铺直叙、或侃侃而谈，无论是山高或是水长都是那么真切地跳动着他/她生命的脉搏，凝聚着他/她岁月给与的痕迹和深深的文化修练与文字功力。在这样认真严谨的文字里，每一个标点每一个符号都是那么认真地运用到了恰到好处，那都是我远远不能企及的，是我自觉得“可远观而不可亵玩”的杰作，其中，不乏有名不经传，默默无闻的作者和写手们的作品，它仿如“昭昭若日月之明，离离如星辰之行”，使我由衷地生出深切的敬仰而拜为至高的榜样。<br />\n&emsp;&emsp;<br />\n&emsp;&emsp;时至今日，与他们，我从无谋一面之幸，更不消说什么言语的深入交流或沟通，无论是已故的先生们，还是仍健在于世前辈，乃至于仍隐没在莽莽文海，辛勤劳作，鲜为人知的作家，他们的作品，他们的文字之所以让我欣赏，之所以让我迷醉，还因为是它展现在我眼前的，闪耀在字里行间的无形若有影的人格魅力。<br />\n&emsp;&emsp;<br />\n&emsp;&emsp;人格是什么，怎么样的人格才无愧于这样的魅力？<br />\n&emsp;&emsp;<br />\n&emsp;&emsp;且不例举说远古或海外的文学大家们，也暂且不提中国当代名家文人，我仅以当下“草根”之著为例——余秀华，一个“摇摇晃晃”地走在“摇摇晃晃”的人生之路上的残疾作者。范素雨，一个被“命运装订得拙劣不堪”的生命写手，面对岁月给与的苦难，凭其悠如处之的幽默，顽强的精神，坚韧的毅力写就出生命的断章。她们只凭着一手对自己负责，一手对他人的真诚，一心为平凡的世界而努力的态度，为我们奉上了一笔充满真情实意的，实则是难能可贵的范例······<br />\n&emsp;&emsp;<br />\n&emsp;&emsp;大凡读过《我是范素雨》，有谁不被她的平凡而朴实的思想所撼动？用心体会一下余秀华坎坷的心路历程，去读出自于她手下的文学作品，有谁不被其耀眼的魅力所深深折服？她们是真诚的，这样的真诚使她们从来没有想过会“一鸣惊人”，从来没想到这样的认真会有这样的“有朝一日”。究其根源，全在于她们以一颗平常普通的心一直奉行着无愧我心的人生哲学。<br />\n&emsp;&emsp;<br />\n&emsp;&emsp;中华文字，自从她诞辰之日起并无粗鄙优劣之分，时至今日，之所以有某些“恶臭之气”窜于其中，只因为如此美好的文字落在了某些肮脏不堪之手，被他们肆意侵滥着。<br />\n&emsp;&emsp;<br />\n&emsp;&emsp;移花接木，去头截尾，生搬硬套，东拼西凑，似剽窃，或抄袭，更有甚者，干脆撇去原创作者的笔名或名字，冠以自己之作来一个“照单全收”。是为趋利，或为别有用心？这真如欧阳修先生所云：“不知耻者，无所不为”！面对浩若星辰的网络世界，我无从追根溯源探其目的究竟如何，却从中可以看到，这种无异于强取豪夺的无良行为损害的不仅仅是为文之道，丧失着做人的最基本的品德，此举，更是深深地伤害着、羞辱着在文学路上辛勤耕耘着的每一位作者和写手们的尊严，更是对当下网络文学能否走在健康发展路上之状态的漠然与亵渎。<br />\n&emsp;&emsp;<br />\n&emsp;&emsp;忆当年，受经济条件的限制，有我的同学为完整地抄录一部爱不释手的“名著”废寝忘食般地埋首于微弱的手电筒下，为求证谁才是那一部手抄本的真正作者，几乎耗尽他本可以尽情玩耍的大半个暑假时间。如此“幼稚”的行为在网络文学高度发达的今天看来是否意味着它是多么的愚蠢而可笑呢？<br />\n&emsp;&emsp;<br />\n&emsp;&emsp;既不为名亦不为利，只为真正的文学；只为尊重原著；只为尊重其付出的不易，何况还冒着被捡举揭发的可能挨全校批斗的危险！<br />\n&emsp;&emsp;<br />\n&emsp;&emsp;电脑的普及，网络的自由为我们洞开一个全新的世界，也为那些无良之人提供了一个极为便利的投机取巧的条件。也许，我们谁都无力也无法去扭转这种令人痛心的状态，所以只能眼睁睁地看着那些成篇成章的优秀作品被无德之“士”任意的盗挖，肆意地践踏，也因此，为保全自己的“孩子”不再被任意的侵略，有诸多的写作者们不得不心如滴血般地呐喊出诸如“尊重原创，远离抄袭”一类的无奈之声······<br />\n&emsp;&emsp;<br />\n&emsp;&emsp;其实，你如果想成为一名作家真的很难，其中的难不是靠掠取他人的辛劳成果就可以克服，何况，奋泳在茫茫文海中的写作者早已多如过江之鲫，数不胜数。想成为一名作家，靠的不仅仅是你必须耐受得了无边的寂寞，承受得了漫漫的孤独，除了你必须具备一如既往的坚韧不拔的毅力，炼就一双博采众长洞察秋毫的慧眼，站在社会发展的前列及时并准确的把握世间百态的脉搏。也许，你付出了一辈子的心血和努力，到最后换来的依然是一文不名，两手空空的结果，而凭借东拼西凑式的抄袭终将会显露出你真正的庐山面目，为众人所唾弃，实在是得不偿失得很。<br />\n&emsp;&emsp;<br />\n&emsp;&emsp;诚然，摆在无畏困苦的写作者面前的路是极为艰难的，过去如此，往后也是如此。披荆斩棘，那是他们的真诚，扪心无愧，那是他们秉持一份清宁的初心，为对他人、对自己的人生给出一份良好的交代，借这一方无声的世界去表达他们内心真切的声音，去记录人生中走过的每一段路，而不是习自作聪明者之作为在圣洁的文学之路上肆意践踏，疯狂作乱。<br />\n<br />');
INSERT INTO `ykb_content_article` VALUES ('134', '&emsp;生活可以复杂，也可以简单，看我们拥有怎样的心态。简单就真实，平淡就从容。没有虚伪，不戴面具；不去张扬，甘愿淡泊。荣也好，辱也罢，一切好的不好的，不过是岁月变迁的填充物，到最后，都是过去。<br />\n&emsp;&emsp;<br />\n&emsp;&emsp;相信人生没有毫无意义的经历。上天给我们困难，是让我们看透人心；给我们失败，是教会我们如何更好地成功；给我们孤独，是让我们学会慎独和反省。此处失，他处得，有人让你哭了，就会有人让你笑，这是上天对待每一个人的公平。<br />\n&emsp;&emsp;<br />\n&emsp;&emsp;人生路上不是每轮艳阳都暖人，不是每片云彩都下雨。一些事，想开自然微笑，看透肯定放下。人在旅途，心宽，才是海阔天空。<br />\n&emsp;&emsp;<br />\n&emsp;&emsp;心怀善念，能利人；心怀感恩，能利己。学会换位，人生才有和谐；知道感恩，岁月才有温暖。活着，就是一场修行，而真正的修行，不在一张能言的嘴上，而在一颗向善的心里。人生之光，是一颗宽容的心；岁月之好，是一份随缘的爱。<br />\n&emsp;&emsp;<br />\n&emsp;&emsp;世界上最美丽的风景，就是你有一颗善良的心，散发着优美的磁场和魅力，走到哪里，就照亮到哪里，温暖到哪里。<br />\n&emsp;&emsp;<br />\n&emsp;&emsp;人生，总有许多沟坎需要跨越；岁月，总有许多遗憾需要弥补；生命，总有许多迷茫需要领悟。美好是属于自信者的，机会是属于开拓者的，奇迹是属于执着者的！你若不想做，总会找到借口；你若想做，总会找到方法。坚持未必是胜利，放弃未必是认输，与其华丽撞墙，不如优雅转身，给自己一个迂回的空间。学会思索，学会等待，学会调整。很多时候，比起执着，我们更需要的是回眸一笑的洒脱。<br />\n&emsp;&emsp;<br />\n&emsp;&emsp;一直觉得，人生就像是培育种子。你投入的每一分努力，都会在未来的某一天，回馈于你。而你所要做的，就是每天多努力一点点。在这路上，别人拥有的，不必羡慕；自己没有的，不要嫉妒。相信，只要努力，时间都会给你。<br />\n&emsp;&emsp;<br />\n&emsp;&emsp;没有播种，哪来收获；没有辛劳，哪来成功；生活本来平淡如水，放一点盐它就是咸的，放一点糖它就是甜的，想调成什么味道，全凭自己！<br />\n&emsp;&emsp;<br />\n&emsp;&emsp;成功没有快车道，幸福没有高速路，一份耕耘一份收获，所有的成功都来自不倦的努力和奔跑，所有幸福都来自平凡的奋斗和坚持。<br />\n&emsp;&emsp;<br />\n&emsp;&emsp;坚持，不是为了感动谁，也不是证明给谁看。而是，一路奔跑，总比原地踏步好！坚持，不是心动，而是一种行动，就是简单的事情重复做，重复的事情认真做，认真的事情努力做。一点一滴的积累，你就会发现，原来成功的路上并不拥挤，因为坚持的人并不多。<br />\n&emsp;&emsp;<br />\n&emsp;&emsp;生活就像浮在水上的鸭子，表面上从容淡定，其实水底下在拼命的划水。想要过好的生活，就要拼命努力。优雅需要底气，华丽需要实力。<br />\n&emsp;&emsp;<br />\n&emsp;&emsp;人这辈子，总有人羡慕你，也有人讨厌你；总有人嫉妒你，还有人看不起你。没关系，生活就是这样。你所做的一切并不能让每个人都满意，不必为了讨好别人而丢失自己的本性。一样的眼睛，不一样的看法；一样的耳朵，不一样的听法；一样的嘴巴，不一样的说法；一样的心，不一样的想法；一样的钱，不一样的花法；一样的人们，不一样的活法。别人嘴里的你，不是真实你的你。你无需告诉每个人，那一个个艰难的日子是如何熬过来的，大多数人都看你飞得高不高，很少人在意你飞得累不累。<br />\n&emsp;&emsp;<br />\n&emsp;&emsp;决心走一条路的时候，就不要左顾右盼，风景再美也别流连。起风的日子学会依风起舞，落雨的时候学会为自己撑一把伞。幸福就是，即使累了，还能笑着活出自我，努力奔跑。任岁月变迁，我心不惊，凭时光流转，我心如初。<br />\n&emsp;&emsp;<br />');
INSERT INTO `ykb_content_article` VALUES ('137', '有人说，人生，是一场修行，也有人说，人生，是一段旅程。而我却觉得，人生，是一场追求，也是一场领悟。<br />\n&emsp;&emsp;<br />\n&emsp;&emsp;平淡的日子里，安静，简单，没有起伏，没有波澜。有的只是一种安宁，一种重复，一种寂静。无论时光如何流逝，无论季节怎样变化，一如平常，安然于自己的生活，忙碌于自己的工作，坚持于自己喜欢做的事情，无论从何时起步，都不算晚。<br />\n&emsp;&emsp;<br />\n&emsp;&emsp;梦想就像天上星星，也许你永远无法触碰，但如果你跟随它们，它们将引领你找到最正确的方向。对信任你的人，永远别撒谎。对你撒谎的人，永远别太相信。有时候，失望到一定程度后，反而会开出一朵花来，那朵花的名字叫，无所谓。<br />\n&emsp;&emsp;<br />\n&emsp;&emsp;人生最美好的，就是在你停止生存时，还能够以你所创造的一切为人们服务。你在等待，你在坚忍，你在静默。你在等一场春华秋实，你在等新一轮的春暖花开，你在等从未有过的雷霆万钧。这静默的日子有些长，有些闷，但是我也会等下去。我相信人的青春不止有一次，有时候，时光会给你额外的惊喜。<br />\n&emsp;&emsp;<br />\n&emsp;&emsp;一直认为，这世上最公平的，就是时间。别人偷不走，你也留不住。你拥有它，却又无法改变它。一路走来，你留在光阴里的艰难抑或快乐，都会随着时光的流逝被一一带走，身处其中的你我，无论是年轻还是衰老，所能做的，都只有充分的利用和享用它。<br />\n&emsp;&emsp;<br />\n&emsp;&emsp;想要过好每一天，不如先让今天充实。毕竟，那看似漫长的岁月，都是由无数个“今天”堆砌而成。岁月是种轮回，人生是种历练。我一直这样的提醒自己，让自己明白生活不需要太多的刻意。很多时候，我们都在不知不觉刻意人生，勉强生活，为的就是满足一份来自内心深处的虚荣。走在自己的路上，眼里却是别人路上的风景。直至有一天，后来者怀抱五彩鲜花，经过自己身旁时，羡慕之余才发现，一路匆忙，只顾观望他山之巅，却忽略了自己路上的满地鲜花。<br />\n&emsp;&emsp;<br />\n&emsp;&emsp;也许，此刻的你，正经历着某种辛酸，一路风雨兼程的赶来，却尽在一片黑暗中摸索，等待着云开见月明。然，只要你心中有信念，就要相信，寒夜终有时，太阳总有升。伤心失望的日子，你可能暂时无力改变现状，但你却可以选择自己的态度。或是悲观消极，或是笑容浅露。同一条路上的行人，有人哭泣也有人欢笑，最后都将抵达不一样的彼岸，就看你选择的是哪一种。<br />\n&emsp;&emsp;<br />\n&emsp;&emsp;每个人都是独立的个体，期待走不一样的人生路，收获不一样的生命色彩。倘若人生可以重来一次，亦不过是多了一场山长水阔，沿途的风景，依旧有枯荣；一路的悲喜，依旧似风雨。无论你选择的是哪一条路，阴晴圆缺，苦乐交融，都是必不可少的烟火。有些路，你若不坚持走下去，你就永远不知道它到底有多美。<br />\n&emsp;&emsp;<br />\n&emsp;&emsp;天空不总是晴朗，阳光不总是闪耀，人生，无所谓失去，只怕草率地挥霍。世界上，唯独骗不了的，就是自己的心。它总在你最没提防时，暴露你的欢喜忧愁。对太多的事情，寄予美好的期待，却是一再不尽人意。那些无心插柳随意而为的事情，反而更容易带给人意想不到的惊喜。人生犹如变化着的四季，途径每一季，都会有着不同的色彩。来去匆匆，变化无常。我们在创造自己的人生的同时，也该充分享受这人生。<br />\n&emsp;&emsp;<br />\n&emsp;&emsp;美好的，留在心底；遗憾的，随风散去。尽管，还有那么多梦想无法实现；尽管，还有那么多沮丧埋在心田。但那又如何？我在冰峰的深海，寻找希望的缺口，却在惊醒时，瞥见绝美的阳光。<br />\n&emsp;&emsp;<br />\n&emsp;&emsp;或许，人生更像是一场电影，痛苦是一个开端，挣扎是一种过程，死亡是一种结局。纵然难免留有遗憾，我也相信，终究还是会有一个完美的角落。不要着急，相信最好的，总会在你不经意的时候出现。活在当下，时光且长，一切都来得及。<br />');
INSERT INTO `ykb_content_article` VALUES ('138', '生命，就像是一张借记卡，从你呱呱坠地，还未有名字的时候，你生命的借记卡就已经毫不延迟的启动了它的业务。<br />\n&emsp;&emsp;<br />\n&emsp;&emsp;储存在生命借记卡上的数字，就是你这一生所有的时光。你此后生活的每一天，都是对这张借记卡的消费。虽然，你是它的主人，但你却不知道它的多少。幸好不知道，我们才会一边消费着卡额，一边无忧无虑的生活。懵然向前中，支出着我们生命有限的时间，于万千世相的一片混沌中，等待着这张卡的归零。<br />\n&emsp;&emsp;<br />\n&emsp;&emsp;常常，有很多事情不能如愿以偿，我们会安抚自己来日方长，以后有的是时间。于是，接下来的日子里，就开始了碧落黄泉，不及不归的执着。人在很多时候，都是盲目的。越是不可及，越是仰望；越是得不到，越是心念。却不知道天地苍茫，处处都可以花香满径，何必一条路走到黑。难道，你不相信自己，值得走过更美丽的山水，收获不一样的风景吗？<br />\n&emsp;&emsp;<br />\n&emsp;&emsp;生命就是一张纵横交错的网，当你行至穷途末路的时候，切莫忘了转身回望。人生不仅需要一往无前，有时候，来个急刹车，急转弯，未必不是更好的选择。把那些求不得，又舍不下的优柔寡断，转换成不颓败，不纠结的乐观情绪，换条路走，说不定天宽地广。不忘初心，方得始终；不殆时间，不负自己。<br />\n&emsp;&emsp;<br />\n&emsp;&emsp;阡陌红尘，我们形同尘埃般的行走，总有些人留住我们回眸的眼神，羁绊着我们前进的脚步。于是，我们也曾驻足，也曾动情，却不想生命有很多相逢，不过形同一阵风。你感受得到它的擦身而过，却终是留不住它随性的身影。纵然在你耳边轻吟浅唱，亦不过是一场美丽的缘错。<br />\n&emsp;&emsp;<br />\n&emsp;&emsp;这世上就是有这样一种人，你不把他当回事，他把你当回事儿；你投桃报李把他当回事儿，他又觉得你好像很上赶似的。总有那么一些人，配不起真诚。<br />\n&emsp;&emsp;<br />\n&emsp;&emsp;向来，真诚，才是静水流深，是搭建人与人长情的桥梁。否则，谁都没必要拿一份热情典当成廉价的守候。不要把别人的谦和友善误解成你的高高在上，那不过是别人的涵养素质。毕竟，在这世上，谁都不是谁的谁，若有，锦上添花；若无；亦自在潇洒。你若懂我，携手一程；若是不懂，各自前行。<br />\n&emsp;&emsp;<br />\n&emsp;&emsp;人这一生，有限的生命，却要划分为无数个阶段去消费。不论你行经生命的哪一站，都要为值得停留的风景而驻足。你的消费，总要换来你该有的东西，而不是白白虚度。拿得起，放得下，干脆利索，做出果断的选择，毅然走入下一段行程。<br />\n&emsp;&emsp;<br />\n&emsp;&emsp;很多时候，你觉得，破釜沉舟，重长计议是艰难的，是前功尽弃的，却不想，当你纠结于一件牵强附会的事情，久久踌躇，牵绊左右的时候，亦是一种破费。因为，你付出了时间，透支了你的借记卡。而你透支的这部分，本身它就是一种无偿的损失。<br />\n&emsp;&emsp;<br />\n&emsp;&emsp;不要浪费感情在不值得的人身上，也不要花费时间在没意义的事情上。很多时候，你认为的固守，只不过是自己的掩耳盗铃。你廉价的消费着自己最宝贵的东西，却不知道它原本值得与岁月来一场更有价值的交换。<br />\n&emsp;&emsp;<br />\n&emsp;&emsp;时间会告诉你，万物之始，大道至简，衍化至繁。<br />\n&emsp;&emsp;<br />\n&emsp;&emsp;唯有理性消费，有舍有得，生命才会更加的充实有效。直到有一天，那张手中的借记卡即将被清零的时候，我们回首，查询这一路走来的每一笔消费，都能够欣然一笑。觉得曾经有过的每一笔支出都是值得的，扪心无悔，不觉有憾，这一生，也就算得上圆满了。<br />');
INSERT INTO `ykb_content_article` VALUES ('139', '&emsp;&emsp;一程光阴，一程山水，平凡的日子，一手握着珍惜，一手握着行走；素简流年，那些光阴抹不掉的印痕依稀牵动心潮，是久久的萦绕。满怀的心语化作欲言又止，岁月的云烟悄悄潜入记忆……最美的时光总是守住一窗安静，让文字生香。摘一缕清风明月，种一阕阳春白雪，让心灵的田园满是通透与清欢……<br />\n<br />\n&emsp;&emsp;人生是一场漫长的旅行，生活的故事不会永远的平静如水阳光明媚，将自信、善良、坚定、无悔融于生命之中，走成属于自己的风景。总感觉自己走过了一条很简单很长远的路程。期间那一段心灵的荒芜常常想起，一个人的日子，一次次问自己，如果可以，我能否在从前里寻找现在的自己？拄笔前行，是我心灵的皈依。<br />\n<br />\n&emsp;&emsp;这时节，淡雅的花朵开满每一个角角落落，轻嗅风中吹过的香气丝丝缕缕，思念如扯不断理还乱的雨。许多无奈、心酸、感叹在日复一日，年复一年里写进了人生旅途。思绪，心音，梦痕，心中的飘渺虚幻生长蔓延。落地的情缘再次缱绻，仿佛一份眷恋可以万水千山，千年万年……<br />\n<br />\n&emsp;&emsp;或许，生命中每一种相逢前世早已注定。花开有声，心中酝酿的诗行只为那一片相遇的深情。心事如莲，呢喃成相思的花语，落笔生香，相伴孤灯下的守望。眺守你你所在的方向，思念无法在某个角落深藏，漫过文字的河床，浸润柔美的心房。星光如水，新月如眉。那一窗如诗的清韵婉约成一脉柔美深情。缕缕痴缠穿越绿水青山，荡在眉端心田，眷恋柔软，仿佛已过千年。语丝绵绵，细细聆听，思念对一个名字轻轻呢喃……<br />\n<br />\n&emsp;&emsp;总是在无奈的日子里回望那些漫长，那些忧伤，时光苍茫，晕染了风霜。心的安静淹没于纷纷扰扰之中，流浪飘零。总感觉生命里的美好只是昙花一现，流星一闪，无法抵达的永远到底有多远？<br />\n<br />\n&emsp;&emsp;也许相携一份淡然知足，每一个日子都能幸福安暖，风来不惊，雨落无声，如此平平静静。看着夕阳再次吻别青山，晚霞的余辉中又种一个新的期盼。一朵香莲在心中缓缓舒展……曾经禹禹独行的路上绿荫清凉，心入清香。将一份最美的期盼端放在前方，遥看水天一色，品读平静淡然，温柔安暖。携几行小字，轻嗅最美诗意；赏一片流云舒卷，掬一朵雅致清莲，心中绽放清爽与芬芳。（文章阅读网：www。sanwen。net）<br />\n<br />\n&emsp;&emsp;将一些心语寄予文字，将走远的故事点滴倾诉。只是，思念一如往昔，跌落在水中，泛起一圈圈涟漪……清风能读懂，流云听得见。温润的软风，安宁淡雅，在柔雨初停的午后飘进来，隔了淡绿的纱窗，落在我的电脑旁。躲过恼人的喧哗，我在清茗半盏中寻找时间的缝隙，停泊在心灵的港湾里。读你，文字中的美丽；赏你，是花事般的相遇。情亦深深，念亦温婉，一遇，便成永远。不能没有你，这是我不变的情怀，真情留下来。将一朵清欢深种，于一片心相约的芳草地……踏着月光去寻觅，满地清愁，我一一捡拾。总有一些来得及以及一些来不及走进了生命里，今生来生选择与释然相伴相依。<br />\n<br />\n&emsp;&emsp;光阴轻浅，真实绣织，日子里散落了事与愿违的前尘，霏霏如雨。生活之中，总要相遇一些东西薄如蝉翼。玫瑰落雨，昔日已梦……凝眸，惟愿心灵深处的散发，可以留香。阡陌之中，以它温暖那颗潮湿的心……<br />\n<br />\n&emsp;&emsp;封锁的记忆慢慢开启，昨日的云烟随风散去。思念如一棵开花的树，在这个季节的垄中旖旎茂密。若有灵犀，你可否留意，每天晨晖中的晃动，那不是风，而是我深情的叮咛。浓浓淡淡的心绪温婉在岁月里，日子，疏落成一笔明月清风，月缺是诗，月圆是歌。尘世、繁华、云烟淡远，我心中所有的语言交给了无言。流年，在文字中婉转，悠扬；人生，每一份经历，在时光中生香。还好，我不在乎忧伤，只眺望经年的芬芳。如此，季节开始晕染舒适、清爽……时光里的故事盘旋在心间，是一朵温暖的记忆。<br />\n<br />\n&emsp;&emsp;好想种一棵深情树，每一片绿油油的叶子都是我写给岁月的情书。任凭花开，任凭雨落，任凭风起，任凭云涌，我都以一种颜色诉说。静握着素淡的日子，将所有的情思放逐。拥一怀简约，掬一捧花香，听月光流淌，在文字中徜徉，一份柔软将整个生命贯穿，安静安暖……<br />\n<br />\n&emsp;&emsp;好想说，感谢相遇，感谢从墨香中走来的你，文字中读你，我漂泊的心灵从此有了皈依；心灵的共鸣，让我忘记孤单，天涯化作咫尺。生命里有种相伴，便是灵魂相惜。如此，且将这份美好交给我的流年，我的岁月……<br />\n<br />');
INSERT INTO `ykb_content_article` VALUES ('140', 'One time, a landscape, the ordinary day, a hand holding a treasure, walking; plain Jane time, that time can not erase the imprint vaguely affects the heart, is a long lingering. Full of thoughts into the years quietly into the clouds about to speak, but saying nothing, memory...... The most beautiful time always hold a quiet window, let the words of aroma. Pick a wisp of breeze moon, for a highbrow, let the heart of the garden is full of transparent and clear......<br />\nLife is a long journey, the story of life will not always be as calm as water will be sunny, confident, kind, strong, no regrets in life, walk into their own landscape. Always feel that I have gone through a very simple, very long journey. During that period of desolation of the mind, often think of a person\'s day, ask yourself again and again, if possible, can I find myself in the past? A stroke of pen is my heart\'s turn.<br />\nThis season, elegant and full of flowers in every corner, the smell of the wind blowing through the aroma of Cecil strands, thoughts such as pull constantly tangled rain. Many helpless, sad, sigh in day after day, year after year, written into the journey of life. Thoughts, heart sounds, dreams, traces of the heart, illusory growth, spread. Landing again like a romantic love and attachment to the trials of a long journey for thousands of years......<br />\nPerhaps, in life each meet past already doomed. The sound, brew lines that only a deep encounter. The mind such as lotus, whispering into Acacia flower, to color, accompanied by Gudeng watch. Keep your vision in your direction, you can\'t hide in a corner, over the text of the riverbed, infiltration of soft heart. Stars, such as water, crescent, such as eyebrows. The window is a beautiful poetic melody and graceful feeling. Continuously through live swing in the green mountains and rivers, brow heart, love soft, seemed to have been over a thousand years. During rain, listen carefully, thinking of a name whispers......<br />\nIs always in the helpless days at the long time, those sad, confused, dizzy catch the wind. The heart of the quiet submerged in the confused, wandering wandering. Always feel the beauty of life is just a flash in the pan, meteor flash, can not reach forever, in the end how far?<br />\nMaybe a cool with contentment, every day can happiness and warm, the wind not startled, the rain fell silent, so quiet. Look at the sunset again kiss the Castle Peak, sunset afterglow, and planted a new look forward to. A stretch of Xianglian slowly in the heart...... Once Yu Yu alone on the road, cool shade, heart into the fragrance. A most beautiful hope end in front, yaokan Shuitianyise, read calm cool, gentle and warm. With a few lines of small print, the smell of the most beautiful poetry; a swirling cloud, a lotus flower elegant, refreshing and fragrant heart. (Article Reading Network: www. Sanwen. Net)<br />\nXinyu sent some text, the story will go far to drop. Just, miss, as in the past, fell in the water, a circle of ripples...... Cool breeze can read, cloud can hear. Warm wind, quiet elegant, soft in the rain stopped early afternoon came, a green screen, falling on my computer. Escape the annoying noise, I find the gap of time in the half of the clear tea, and anchor in the harbor of the mind. Read your text, in the beautiful flowers; reward you, is like. Love is also deep, read also mild, once, will become forever. Can not do without you, this is my constant feelings, the truth to stay. A Qinghuan deep, in a heart to grass...... Moonlight to find, Montreal clear worry, I pick up one by one. There are always some time, and some too late into life, the next life, the choice and relief, accompanied by dependence.<br />\nTime light, true tapestry, days of scattered things past, fall like rain. Life, always encounter something thin. Rose rain, the former has a dream...... Look, let out the depths of the soul, can. With, it is warm in the moist heart......<br />\nBlocked the memory of yesterday\'s clouds slowly open, gone with the wind. Miss is like a flowering tree, in this season\'s ridge in the dense charming. If you have, can you pay attention to, every day in Chenhui shaking, that is not the wind, but I love my. Thick light of gentle mood in the days, days, scattered into a pen at leisure, the moon is the full moon is a poem, song. The world, bustling, clouds apprehension, my heart all over to the silent language. Time, in the text tactfully, melodious; life, every experience, producing in time. Okay, I don\'t care about sadness, only look after years of fragrance. Thus, the season begins to be dizzy, comfortable and refreshing...... Time in the story, hovering in the heart, is a warm memory.<br />\nWant to plant a deep tree, every piece of green leaves are my love for years. Let the flowers bloom, let the rain fall, let the wind, let the clouds, I have to tell a color. Static hold quiet day, all the affection of exile. With a simple, hold a flower, listen to the moonlight flowing, wander in the text, a soft whole life through quiet, warm......<br />\nI want to say thank, meet, thank you in the coming from the ink, you read the text, my wandering mind had been converted; the resonance of the mind, let me forget the lonely horizon into close. Life in a company, it is the soul of xiangxi. So, and this beauty');
INSERT INTO `ykb_content_article` VALUES ('141', 'Life is like a debit card, you are not born from, when the name, your life will have a debit card without delay the start of its business.<br />\n<br />\nStored in life debit card number, it is your life all the time. Every day you\'ve lived since then has been a debit to this debit card. Though you are the master of it, you do not know how much it is. Fortunately, I do not know, we will spend the amount of cards, while carefree life. Mengran forward, spending a limited time in our lives, thousands of the world phase of chaos, waiting for this card to zero.<br />\n<br />\nOften, there are a lot of things can not be fulfilled, we will appease their The coming days would be long. there\'s time. So, the next day, began not to persist from the sky to earth. In many cases, people are blind. The more you cannot reach, the more you look up; the more you can\'t get it, the more you will read it. But I do not know the vast world, everywhere can be full of flowers, why should a road to black?. Don\'t you believe in yourself, it\'s worth walking through more beautiful mountains and rivers and getting different scenery?<br />\n<br />\nLife is a piece of the network when you are arranged in a crisscross pattern, to the end, do not forget to turn back. Life not only need to walk the line, sometimes to a braking, sharp turns, is not necessarily a better choice. To those who seek not, and can\'t give the conversion into a decadent, irresolute and hesitant, do not tangle of optimism, for the road, maybe day wide wide. Don\'t forget the heart, the party must always; but not their own time, negative.<br />\n<br />\nWorld of mortals, we are dust like walk, there are always some people we keep looking in the eyes, holding us back. So, we have stopped, have been emotional, but do not want to have a lot of life meet, but only a gust of wind. You feel it pass by, but you can\'t keep it from it. Even if you sing softly in your ear, it is only a beautiful mistake.<br />\n<br />\nThere is such a person in this world, you don\'t take him seriously, he take you seriously; you do take him seriously, he felt as if you\'d like to catch on. There are always some people who can not afford to be sincere.<br />\n<br />\nHas always been sincere, is the responsibility is to build bridges with long love. Otherwise, no one is necessary to take a warm pawn into cheap waiting. Do not mistake other people\'s friendliness and friendliness into your superior. It is just the quality of others. After all, in this world, no one is who, if there is, icing on the cake; if not, also comfortable chic. If you understand me, go hand in hand; if you don\'t understand, go ahead.<br />\n<br />\nPeople in this life, limited life is divided into many stages to consumption. No matter which station of your life you pass, you should stop for the scenery that is worth staying. Your spending will always change what you have, not what you spend in vain. Get up, put it down, in a clean manner, make a decisive choice, decided to move on to the next journey.<br />\n<br />\nMany times, you think, will heavy long plan is difficult, is wasted, but do not want to, when you focus on something far fetched things, long hesitation, when hobbling around, is also a kind of cost. Because you paid your time and overdrawn your debit card. And this part of your overdraft itself is a free loss.<br />\n<br />\nDon\'t waste feelings on someone who is not worthy, don\'t spend time on meaningless things. Most of the time, do you think of the stick, only his own. You spend your most precious things cheaply, but you don\'t know if it\'s worth a more valuable exchange.<br />\n<br />\nTime will tell you the beginning of all things, road to Jane, to complex evolution.<br />\n<br />\nOnly rational consumption, give and take, life will be full of more effective. Until one day, when the debit card in the hand was about to be cleared, we would look back and inquire about every consumption we had made along the way, and we would be able to smile with pleasure. Think every expenditure had are worth it, have no regrets, don\'t feel regret, this life, even to complete.');
INSERT INTO `ykb_content_article` VALUES ('142', 'Life can be complicated or simple. What kind of mentality do we have?. Simple is true, plain is easy. No hypocrisy, no mask; not unassuming, willing to be indifferent. Glory or disgrace, all good, bad, but the filling of the vicissitudes of time, and in the end, are the past.<br />\n<br />\nBelieve life is not meaningless experience. God gives us difficulties, let us see through people\'s minds; for we fail, is to teach us how to better success; give us lonely, let us learn to cautiousness and reflection. Lost here, he got, some people make you cry, and some people will make you laugh, this is god treat everyone fair.<br />\n<br />\nOn the road of life is not each round the sun are warm, not all clouds of rain. Some things, want to open a natural smile, see through, definitely put down. Renzailvtu, heart wide, is as boundless as the sea and sky.<br />\n<br />\nWith good, can benefit people; be thankful and can be selfish. Learn to change positions, life is harmonious; know Thanksgiving, the years are warm. Alive, is a spiritual practice, and real practice, not in a speech on the mouth, and in a good heart. The light of life, is a tolerance of the heart; the good years, is a love you.<br />\n<br />\nThe most beautiful scenery in the world, is that you have a good heart, exudes charm and beautiful field, go to where, where it shines, where warm.<br />\n<br />\nLife, there are many goukan across; years, there are always many regrets in life, need to make up; there is always a lot of confusion need to understand. The good belongs to the self-confident, the opportunity belongs to the pioneer, the miracle belongs to the persistent person! If you don\'t want to do it, you\'ll always find an excuse; if you do, you\'ll find a way. To give up is not necessarily win, defeat, and gorgeous, as elegant turn, give yourself a circuitous space. Learn to think, learn to wait, learn to adjust. Most of the time, compared to the persistent, we need to be clear with a smile.<br />\n<br />\n&emsp;&emsp;<br />\n<br />\nHas always felt that life is like the seeds. Every effort you put into it will come back to you in the future. And all you have to do is try harder every day. On the road, others do not have to envy; do not have their own, do not envy. Believe, as long as the effort, time will give you.<br />\n<br />\n&emsp;&emsp;<br />\n<br />\nNo pain, no gain; no pain, where life was successful; plain water, put a little salt it is salty, a little sugar is sweet, want to tune into what taste, all on their own!<br />\n<br />\n&emsp;&emsp;<br />\n<br />\nThere is no fast track to success, and no highway to happiness, work a harvest, all success comes from tireless effort and pursuit, and all happiness comes from daily struggle and perseverance.<br />\n<br />\n&emsp;&emsp;<br />\n<br />\nInsisted not to touch who is not, who prove to. But running all the way is better than keeping track of it! Adhere to, not heart, but a kind of action, is simple things, repeat, do repeated things, seriously, do serious things, and strive to do. Bit by bit accumulation, you will find that the success of the road is not crowded, because there are not many people insist.<br />\n<br />\n&emsp;&emsp;<br />\n<br />\nLife is like floating in the water on the surface of the duck, calm, in fact, underwater in hard water. If you want to live a good life, you must work like hell. Elegance needs strength, and strength needs strength.<br />\n<br />\n&emsp;&emsp;<br />\n<br />\nPeople in this life, there are always people who envy you, some people hate you; there are always people who envy you, some people look down on you. That\'s all right. Life is like this. Everything you do doesn\'t satisfy everyone. You don\'t have to lose your nature to please others. The same eyes, not the same view; the same ears, not the same as listening method; the same mouth, not the same argument; like the heart, not the same idea; the same money, spending is not the same; as people, not the same way. In other people\'s mouth, you are not your true self. You don\'t have to tell everyone how hard each day is. Most people see you flying high and few people care if you\'re tired or tired.<br />\n<br />\n&emsp;&emsp;<br />\n<br />\nWhen a road determined to go, do not look around, the scenery is more beautiful don\'t linger. In the windy days to rain when the wind dance, to learn for themselves an umbrella. Happiness is, even if tired, but also laugh to live out of their own, and strive to run. Let the years change, my heart is not surprised, with the flow of time, my heart as before.<br />');
INSERT INTO `ykb_content_article` VALUES ('143', 'Some people say that life is a practice, but also some people say that life is a journey. And I think, life is a pursuit, but also a realization.<br />\n<br />\nDull days, quiet, simple, no ups and downs, no waves. There is only one kind of peace, one kind of repetition, one kind of silence. No matter how time goes by, no matter how the season changes, as usual, it is not too late to live safely in one\'s life, to be busy with one\'s work, and to stick to what one likes to do.<br />\n<br />\nDream is like the stars in the sky, you may never touch them, but if you follow them, they will lead you to find the right direction. Never lie to those who trust you. Never lie to those who lie to you. Sometimes, disappointed to a certain extent, but will open a flower, the name of that flower, does not matter.<br />\n<br />\nLife is the most beautiful, is you stop living, but also to have created all serve for the people. You are waiting, you are suffering, and you are silent. Are you waiting for a fruitful, you are waiting for a new round of spring, you never had an irresistible force. This quiet day is a bit long, a little stuffy, but I\'ll wait. I believe in people\'s youth more than once, sometimes, time will give you extra surprise.<br />\n<br />\nHas been that this world\'s fair, is the time. If someone steals you, you can\'t keep it. You own it, but you can\'t change it. Along the way, you stay in the hard time or happiness, will be taken away with the passage of time, in which you and I, whether young or old, can do, only the full use and enjoy it.<br />\n<br />\nWant to live each day, it is better to let enrich today. After all, the seemingly long years are made up of countless \"today\". Time is a kind of reincarnation, life is kind of experience. I keep reminding myself that I don\'t need much of life. Many times, we unconsciously deliberately life, barely living, in order to meet a heart from the depths of vanity. Walking on their own road, the eyes are other people\'s scenery on the road. Until one day, later people embrace colorful flowers, through their own side, only to find envy, all the way in a hurry, just looking at the top of his mountain, but ignored his road flowers everywhere.<br />\n<br />\nMay, now you are experiencing some bitterness, came to a road of trials and hardships, but try to grope in the dark, waiting for the wrong man. Of course, as long as there is a belief in your heart, to believe that the cold end times, the sun will rise. When you are sad and disappointed, you may not be able to change the situation for the time being, but you can choose your attitude. Or is negative, or smile bluntly. Pedestrians on the same road, some people cry, but also some people laugh, and finally will reach different shores, it depends on what kind of choice you choose.<br />\n<br />\nEveryone is an independent individual, looking forward to go a different way of life, harvest different colors of life. If life can come again, but also is a long and wearisome pathes, the scenery along the way, there is still a way of feeling, Kurong; still like rain. Whether you choose which way is, the moon, and blend, are essential fireworks. Some roads, if you don\'t keep going, you\'ll never know how beautiful it really is.<br />\n<br />\nThe sky is always blue, the sun doesn\'t always shine, life, nothing to lose, but carelessly squandered. In the world, the only thing you can\'t cheat is your own heart. It always reveals your joys and sorrows when you least watch out. Too many things to expect, but it is repeatedly unsatisfactory. Those unintentional arbitrary and things, but more likely to bring unexpected surprises. Life is like a changing season. Every season has different colors. Come and go, change constantly. While we are creating our own life, we should fully enjoy this life.<br />\n<br />\nGood, stay in the heart of regret, gone with the wind. Although there are so many dreams can not be achieved, although there are so many frustrations buried in the heart. But what about that? I am in the deep sea ice, hope to find the gap, but in the wake of, catch a glimpse of beautiful sunshine.<br />\n<br />\nPerhaps, life is more like a movie, the pain is a beginning, is a process of struggle, death is an ending. Even if there are some regrets, I believe that there will still be a perfect corner. Don\'t try so hard, the best things come when you least expect them to. Live in the present, time and long, and everything is in time.<br />');
INSERT INTO `ykb_content_article` VALUES ('144', 'They often linger in the boundless universe such as the network world to browse read those literary people or hand pen into the heart of \"authentic calligraphy\". Perhaps because of laziness, I think it is better to read and read this way than to look at the economics of paper books. Start the computer, open the browser, as he walked into a boundless world class library: famous writer, astronomy and geography, the history at all times and in all countries, a subset of the humanities and history, interesting anecdotes and so on, and the Everything is contained therein., Nothing needed is lacking. one hundred thousand points, with emotion when the modern science and technology developed, the network is wonderful and rapidly. The majority of the heart, for me this just a pawn to open and provide a convenient and affordable so lightly.<br />\n<br />\nI will who spread so far, popular in the Internet, or the text have both ability and political integrity is called \"authentic calligraphy\" is because I racked in more than it could not find a more appropriate word to describe their work better. In my eyes, it is natural from the writer\'s heart flowed under a very deep spring clean, is blooming in our spiritual world of flowers of the soul, where every, every word, every sentence with their extremely careful and responsible attitude. There, they spent much time and energy for the spirit, which they Baozhan much wisdom and soul light, how much of the social responsibility of the cultural contributions, so I am sweating and getting up in awe.<br />\n<br />\nI will those great works, those people who are like look up to as the standard, recommended the beautiful words called \"authentic calligraphy\", but also because it is in such words you never see or find a little star signs of plagiarism. Guide Bo card or using or self-contained text, like humor, like humor, or flat, or in person, whether it is mountain or water, vividly that he / she beats the pulse of life, together with his / her years to trace and cultural practice and text deep skill. In such serious words, every punctuation each symbol is so carefully applied to that I was just perfect, is not possible, since I think \"can not be Lex playing\" a masterpiece, which are not known by the mass, and the author unknown to the public the writers of the works, it is like \"clearly visible if the sun and the moon, such as from the stars\", so I sincerely admire and grow deep thanks to the Supreme example.<br />\n<br />\nToday, with them, I never seek a fortune, not to mention what speech in-depth exchanges or communication, whether it is late or still is World Health gentlemen, predecessors, even still hidden toil in the vast sea, and little-known writers, their works, their the text was that I appreciate, make me drunk, but also because it is to show in front of me, shining in between the lines if there is a shadow of intangible charisma.<br />\n<br />\nWhat is the personality, what kind of personality was worthy of such charm?<br />\n<br />\nAnd examples that the ancient or overseas literature we have, also not to mention the literati China contemporary artists, I only present the \"grassroots\" as an example -- Yu Xiuhua, a \"staggering\" in the way of \"staggered\" life of the disabled writer. Fan Suyu, a \"fate of bookbinding poor life\" writers, given the years of suffering, such as by the leisurely of humor, indomitable spirit, the tenacity of life fragments written. They only had a hand in charge of their own, a hand to others sincerely, one for the ordinary world and work attitude, we offer a full heart, it is valuable to Vanse<br />\n<br />\nGenerally read \"I am a fan Suyu\", who has not been shaken by her ordinary and simple thoughts? Yu Xiuhua experienced the ups and downs of the psychological process, to read from her literary works, who is not impressed by its dazzling charm? They are sincere, so sincere that they never thought of \"blockbuster\", never thought this seriously will have such \"some day in the future\". The root of the problem lies in their pursuit of a philosophy of life with an ordinary heart.<br />\n<br />\nChinese text, since the date of her birth is not vulgar or bad, today, has some \"foul gas channeling in them, only because of this beautiful text falls in some dirty hands, they abuse the wanton invasion.<br />\n<br />\nDeceitful, go head truncation, mechanically, like plagiarism or copying, put all sorts of things together, and what is more, just skim the original author\'s name or name, as their own for a zhaodanquanshou\". Is it for profit or ulterior motives? This really Mr. Ou Yangxiu said: \"I do not know shame, do everything\"! If the stars face Hao network in the world, I can not back to probe how, but as you can see, this is tantamount to the damage of unscrupulous behavior usurpations is not only for the road, the loss of a person\'s basic character, the move is deeply hurt and shame in the hard way of literature work with each of the authors and writers of the dignity, is on the current network literature can go in indifference and healthy development on the state of blasphemy.<br />\n<br />\nWhen Yi');

-- ----------------------------
-- Table structure for ykb_ext_guestbook
-- ----------------------------
DROP TABLE IF EXISTS `ykb_ext_guestbook`;
CREATE TABLE `ykb_ext_guestbook` (
  `data_id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `content` text,
  `time` int(10) DEFAULT NULL,
  PRIMARY KEY (`data_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ykb_ext_guestbook
-- ----------------------------
INSERT INTO `ykb_ext_guestbook` VALUES ('6', '222', '529988248@qq.com', 'asd', '1501657736');
INSERT INTO `ykb_ext_guestbook` VALUES ('7', '2', '3@qq.com', '4', '1501657766');
INSERT INTO `ykb_ext_guestbook` VALUES ('8', '2', '3@qq.com', 'asd', '1501657863');

-- ----------------------------
-- Table structure for ykb_ext_link
-- ----------------------------
DROP TABLE IF EXISTS `ykb_ext_link`;
CREATE TABLE `ykb_ext_link` (
  `data_id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL,
  `url` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`data_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ykb_ext_link
-- ----------------------------
INSERT INTO `ykb_ext_link` VALUES ('1', '壹凯的博客', 'http://blog.yikaiba.com/');
INSERT INTO `ykb_ext_link` VALUES ('2', '壹凯巴', 'http://www.yikaiba.com/');

-- ----------------------------
-- Table structure for ykb_ext_news
-- ----------------------------
DROP TABLE IF EXISTS `ykb_ext_news`;
CREATE TABLE `ykb_ext_news` (
  `data_id` int(10) DEFAULT NULL,
  `author` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ykb_ext_news
-- ----------------------------
INSERT INTO `ykb_ext_news` VALUES ('137', null);
INSERT INTO `ykb_ext_news` VALUES ('134', null);
INSERT INTO `ykb_ext_news` VALUES ('138', null);
INSERT INTO `ykb_ext_news` VALUES ('140', '作者');
INSERT INTO `ykb_ext_news` VALUES ('139', null);
INSERT INTO `ykb_ext_news` VALUES ('133', null);

-- ----------------------------
-- Table structure for ykb_field
-- ----------------------------
DROP TABLE IF EXISTS `ykb_field`;
CREATE TABLE `ykb_field` (
  `field_id` int(10) NOT NULL AUTO_INCREMENT,
  `fieldset_id` int(10) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `field` varchar(250) DEFAULT NULL,
  `type` int(5) DEFAULT '1',
  `tip` varchar(250) DEFAULT NULL,
  `verify_type` varchar(250) DEFAULT NULL,
  `verify_data` text,
  `verify_data_js` text,
  `verify_condition` tinyint(1) DEFAULT NULL,
  `default` varchar(250) DEFAULT NULL,
  `sequence` int(10) DEFAULT '0',
  `errormsg` varchar(250) DEFAULT NULL,
  `config` text,
  PRIMARY KEY (`field_id`),
  KEY `field` (`field`),
  KEY `sequence` (`sequence`),
  KEY `fieldset_id` (`fieldset_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='扩展字段基础';

-- ----------------------------
-- Records of ykb_field
-- ----------------------------
INSERT INTO `ykb_field` VALUES ('1', '1', '昵称', 'name', '1', '', 'regex', 'cmVxdWlyZQ==', 'Kg==', '1', '', '0', '', '');
INSERT INTO `ykb_field` VALUES ('2', '1', '邮箱', 'email', '1', '', 'regex', 'ZW1haWw=', 'ZQ==', '1', '', '1', '', '');
INSERT INTO `ykb_field` VALUES ('3', '1', '内容', 'content', '3', '', 'regex', 'cmVxdWlyZQ==', 'Kg==', '1', '内容', '3', '', '');
INSERT INTO `ykb_field` VALUES ('4', '1', '时间', 'time', '10', '', 'regex', '', '', '1', '', '2', '', '');
INSERT INTO `ykb_field` VALUES ('5', '2', '链接名称', 'name', '1', '', null, null, null, null, '', '0', null, '');
INSERT INTO `ykb_field` VALUES ('6', '2', '链接地址', 'url', '1', '', null, null, null, null, '', '1', null, '');
INSERT INTO `ykb_field` VALUES ('7', '3', '作者', 'author', '1', null, null, null, null, null, '作者', '0', null, '11133333');
INSERT INTO `ykb_field` VALUES ('9', '5', '链接', 'url', '1', '', null, null, null, null, '', '0', null, '');

-- ----------------------------
-- Table structure for ykb_field_expand
-- ----------------------------
DROP TABLE IF EXISTS `ykb_field_expand`;
CREATE TABLE `ykb_field_expand` (
  `field_id` int(10) DEFAULT NULL,
  `post` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='扩展字段-扩展模型';

-- ----------------------------
-- Records of ykb_field_expand
-- ----------------------------
INSERT INTO `ykb_field_expand` VALUES ('7', null);

-- ----------------------------
-- Table structure for ykb_field_form
-- ----------------------------
DROP TABLE IF EXISTS `ykb_field_form`;
CREATE TABLE `ykb_field_form` (
  `field_id` int(10) DEFAULT NULL,
  `post` tinyint(1) DEFAULT '0',
  `show` tinyint(1) DEFAULT '0',
  `search` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='扩展字段-表单';

-- ----------------------------
-- Records of ykb_field_form
-- ----------------------------
INSERT INTO `ykb_field_form` VALUES ('1', '1', '1', '1');
INSERT INTO `ykb_field_form` VALUES ('2', '1', '1', '1');
INSERT INTO `ykb_field_form` VALUES ('3', '1', '1', '1');
INSERT INTO `ykb_field_form` VALUES ('4', '0', '1', '1');
INSERT INTO `ykb_field_form` VALUES ('5', '1', '1', '1');
INSERT INTO `ykb_field_form` VALUES ('6', '1', '1', '1');
INSERT INTO `ykb_field_form` VALUES ('9', '1', '1', '1');

-- ----------------------------
-- Table structure for ykb_fieldset
-- ----------------------------
DROP TABLE IF EXISTS `ykb_fieldset`;
CREATE TABLE `ykb_fieldset` (
  `fieldset_id` int(10) NOT NULL AUTO_INCREMENT,
  `table` varchar(250) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`fieldset_id`),
  UNIQUE KEY `table` (`table`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='字段集基础';

-- ----------------------------
-- Records of ykb_fieldset
-- ----------------------------
INSERT INTO `ykb_fieldset` VALUES ('1', 'guestbook', '留言板');
INSERT INTO `ykb_fieldset` VALUES ('2', 'link', '友情链接');
INSERT INTO `ykb_fieldset` VALUES ('3', 'news', '新闻新增字段');

-- ----------------------------
-- Table structure for ykb_fieldset_expand
-- ----------------------------
DROP TABLE IF EXISTS `ykb_fieldset_expand`;
CREATE TABLE `ykb_fieldset_expand` (
  `fieldset_id` int(10) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  UNIQUE KEY `fieldset_id` (`fieldset_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='字段集-扩展模型';

-- ----------------------------
-- Records of ykb_fieldset_expand
-- ----------------------------
INSERT INTO `ykb_fieldset_expand` VALUES ('3', '1');

-- ----------------------------
-- Table structure for ykb_fieldset_form
-- ----------------------------
DROP TABLE IF EXISTS `ykb_fieldset_form`;
CREATE TABLE `ykb_fieldset_form` (
  `fieldset_id` int(10) DEFAULT NULL,
  `show_list` tinyint(1) DEFAULT NULL,
  `show_info` tinyint(1) DEFAULT NULL,
  `list_page` int(5) DEFAULT NULL,
  `list_where` varchar(250) DEFAULT NULL,
  `list_order` varchar(250) DEFAULT NULL,
  `tpl_list` varchar(250) DEFAULT NULL,
  `tpl_info` varchar(250) DEFAULT NULL,
  `post_status` tinyint(1) DEFAULT NULL,
  `post_msg` varchar(250) DEFAULT NULL,
  `post_return_url` varchar(250) DEFAULT NULL,
  UNIQUE KEY `fieldset_id` (`fieldset_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='字段集-扩展表单';

-- ----------------------------
-- Records of ykb_fieldset_form
-- ----------------------------
INSERT INTO `ykb_fieldset_form` VALUES ('1', '1', '1', '10', '', 'data_id desc', 'guestbook', 'guestbook', '1', '留言发布成功！', '');
INSERT INTO `ykb_fieldset_form` VALUES ('2', '1', '1', '0', '', 'data_id desc', 'form_list', 'form_content', '1', null, null);

-- ----------------------------
-- Table structure for ykb_file
-- ----------------------------
DROP TABLE IF EXISTS `ykb_file`;
CREATE TABLE `ykb_file` (
  `file_id` int(10) NOT NULL AUTO_INCREMENT,
  `url` varchar(250) DEFAULT NULL,
  `original` varchar(250) DEFAULT NULL,
  `title` varchar(250) DEFAULT NULL,
  `ext` varchar(250) DEFAULT NULL,
  `size` int(10) DEFAULT NULL,
  `time` int(10) DEFAULT NULL,
  PRIMARY KEY (`file_id`),
  KEY `ext` (`ext`),
  KEY `time` (`time`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=342 DEFAULT CHARSET=utf8 COMMENT='上传文件';

-- ----------------------------
-- Records of ykb_file
-- ----------------------------
INSERT INTO `ykb_file` VALUES ('1', '/yikaiba/upload/2016-06-08/3b3ca1e497ea0ce61dca4a7abd1c8ffe.png', '/yikaiba/upload/2016-06-08/3b3ca1e497ea0ce61dca4a7abd1c8ffe.png', '20150923030814_50045', 'png', '92166', '1465369571');
INSERT INTO `ykb_file` VALUES ('2', '/yikaiba/upload/2016-06-08/d837b06d75f36da7cc42f5bb6c6ce57e.png', '/yikaiba/upload/2016-06-08/d837b06d75f36da7cc42f5bb6c6ce57e.png', '20150929075840_76752', 'png', '142235', '1465371885');
INSERT INTO `ykb_file` VALUES ('3', '/yikaiba/upload/2016-06-08/b2e0466d41d2a167a92270ba202789c2.gif', '/yikaiba/upload/2016-06-08/b2e0466d41d2a167a92270ba202789c2.gif', '20160425065921_34461', 'gif', '296273', '1465371899');
INSERT INTO `ykb_file` VALUES ('4', '/yikaiba/upload/2016-06-08/d2d47a3b07b1b6f0706eafe897ec44ec.jpg', '/yikaiba/upload/2016-06-08/d2d47a3b07b1b6f0706eafe897ec44ec.jpg', '20160425070423_52940', 'jpg', '66124', '1465373285');
INSERT INTO `ykb_file` VALUES ('5', '/yikaiba/upload/2016-06-08/de59da7d970665b9bc0dcf00388ad86e.jpg', '/yikaiba/upload/2016-06-08/de59da7d970665b9bc0dcf00388ad86e.jpg', '20160425065324_66944', 'jpg', '58960', '1465373438');
INSERT INTO `ykb_file` VALUES ('6', '/yikaiba/upload/2016-06-21/47ed75effb2056d6fbeb34761c6f7895.jpg', '/yikaiba/upload/2016-06-21/47ed75effb2056d6fbeb34761c6f7895.jpg', 'loading', 'jpg', '57989', '1466500734');
INSERT INTO `ykb_file` VALUES ('7', '/yikaiba/upload/2016-06-21/ece375844fd20c96b81eec147a0012cd.jpg', '/yikaiba/upload/2016-06-21/ece375844fd20c96b81eec147a0012cd.jpg', '1', 'jpg', '54151', '1466502701');
INSERT INTO `ykb_file` VALUES ('8', '/yikaiba/upload/2016-06-21/0f44790647d7e7237bf2f0392b88cdc2.jpg', '/yikaiba/upload/2016-06-21/0f44790647d7e7237bf2f0392b88cdc2.jpg', '2', 'jpg', '38913', '1466502707');
INSERT INTO `ykb_file` VALUES ('9', '/yikaiba/upload/2016-06-21/47ed75effb2056d6fbeb34761c6f7895.jpg', '/yikaiba/upload/2016-06-21/47ed75effb2056d6fbeb34761c6f7895.jpg', 'loading', 'jpg', '57989', '1466502713');
INSERT INTO `ykb_file` VALUES ('10', '/yikaiba/upload/2016-06-22/33bbaaf45cc8c6bcff1e1824ea4a9fac.jpg', '/yikaiba/upload/2016-06-22/33bbaaf45cc8c6bcff1e1824ea4a9fac.jpg', '56fb98707353c', 'jpg', '89839', '1466584255');
INSERT INTO `ykb_file` VALUES ('11', '/yikaiba/upload/2016-06-22/d8d1437e2b0c3da06f1e8e42c64fb740.png', '/yikaiba/upload/2016-06-22/d8d1437e2b0c3da06f1e8e42c64fb740.png', '56f368db32d47', 'png', '65719', '1466584437');
INSERT INTO `ykb_file` VALUES ('12', '/upload/2016-06-22/d38c2a2fe4edd056dbe3e03fe55e6474.jpg', '/upload/2016-06-22/d38c2a2fe4edd056dbe3e03fe55e6474.jpg', '', 'jpg', '89595', '1466591019');
INSERT INTO `ykb_file` VALUES ('13', '/upload/2016-06-22/eb55f0a3f5277181edee92da99e9c508.jpg', '/upload/2016-06-22/eb55f0a3f5277181edee92da99e9c508.jpg', '', 'jpg', '63651', '1466591060');
INSERT INTO `ykb_file` VALUES ('14', '/upload/2016-06-22/f014de2b960b032deb3ccb724e6d8102.jpg', '/upload/2016-06-22/f014de2b960b032deb3ccb724e6d8102.jpg', '', 'jpg', '89544', '1466591075');
INSERT INTO `ykb_file` VALUES ('15', '/upload/2016-06-22/0f44790647d7e7237bf2f0392b88cdc2.jpg', '/upload/2016-06-22/0f44790647d7e7237bf2f0392b88cdc2.jpg', '2', 'jpg', '38913', '1466591114');
INSERT INTO `ykb_file` VALUES ('16', '/yikaiba/upload/2016-06-25/thumb_2be48c9b94dee3700723089c99ab372e.jpg', '/yikaiba/upload/2016-06-25/2be48c9b94dee3700723089c99ab372e.jpg', 'QY_024', 'jpg', '244322', '1466852180');
INSERT INTO `ykb_file` VALUES ('17', '/default/upload/2016-06-26/2be48c9b94dee3700723089c99ab372e.jpg', '/default/upload/2016-06-26/2be48c9b94dee3700723089c99ab372e.jpg', 'QY_024', 'jpg', '244322', '1466911438');
INSERT INTO `ykb_file` VALUES ('18', 'upload/2016-06-26/2be48c9b94dee3700723089c99ab372e.jpg', '/default/upload/2016-06-26/2be48c9b94dee3700723089c99ab372e.jpg', 'QY_024', 'jpg', '244322', '1466911587');
INSERT INTO `ykb_file` VALUES ('19', 'upload/2016-06-26/2be48c9b94dee3700723089c99ab372e.jpg', '/default/upload/2016-06-26/2be48c9b94dee3700723089c99ab372e.jpg', 'QY_024', 'jpg', '244322', '1466912370');
INSERT INTO `ykb_file` VALUES ('20', 'upload/2016-06-26/7cfa91c6b74ed50236914cfe8a1cd29d.jpg', '/default/upload/2016-06-26/7cfa91c6b74ed50236914cfe8a1cd29d.jpg', 'QY_025', 'jpg', '1311804', '1466932362');
INSERT INTO `ykb_file` VALUES ('21', 'upload/2016-06-26/7cfa91c6b74ed50236914cfe8a1cd29d.jpg', '/default/upload/2016-06-26/7cfa91c6b74ed50236914cfe8a1cd29d.jpg', 'QY_025', 'jpg', '1311804', '1466932380');
INSERT INTO `ykb_file` VALUES ('22', 'upload/2016-06-26/7cfa91c6b74ed50236914cfe8a1cd29d.jpg', '/default/upload/2016-06-26/7cfa91c6b74ed50236914cfe8a1cd29d.jpg', 'QY_025', 'jpg', '1311804', '1466932402');
INSERT INTO `ykb_file` VALUES ('23', 'upload/2016-06-26/503a8a8d23a1a0e46bcbc4c2a8ff12db.png', '/default/upload/2016-06-26/503a8a8d23a1a0e46bcbc4c2a8ff12db.png', 'logo', 'png', '4788', '1466934238');
INSERT INTO `ykb_file` VALUES ('24', 'upload/2016-06-26/503a8a8d23a1a0e46bcbc4c2a8ff12db.png', '/default/upload/2016-06-26/503a8a8d23a1a0e46bcbc4c2a8ff12db.png', 'logo', 'png', '4788', '1466934264');
INSERT INTO `ykb_file` VALUES ('25', 'upload/2016-06-26/503a8a8d23a1a0e46bcbc4c2a8ff12db.png', '/default/upload/2016-06-26/503a8a8d23a1a0e46bcbc4c2a8ff12db.png', 'logo', 'png', '4788', '1466934446');
INSERT INTO `ykb_file` VALUES ('26', 'upload/2016-06-26/503a8a8d23a1a0e46bcbc4c2a8ff12db.png', 'upload/2016-06-26/503a8a8d23a1a0e46bcbc4c2a8ff12db.png', 'logo', 'png', '4788', '1466934544');
INSERT INTO `ykb_file` VALUES ('27', 'upload/2016-06-26/503a8a8d23a1a0e46bcbc4c2a8ff12db.png', 'upload/2016-06-26/503a8a8d23a1a0e46bcbc4c2a8ff12db.png', 'logo', 'png', '4788', '1466934654');
INSERT INTO `ykb_file` VALUES ('28', 'upload/2016-06-26/503a8a8d23a1a0e46bcbc4c2a8ff12db.png', 'upload/2016-06-26/503a8a8d23a1a0e46bcbc4c2a8ff12db.png', 'logo', 'png', '4788', '1466934964');
INSERT INTO `ykb_file` VALUES ('29', 'upload/2016-06-26/503a8a8d23a1a0e46bcbc4c2a8ff12db.png', 'upload/2016-06-26/503a8a8d23a1a0e46bcbc4c2a8ff12db.png', 'logo', 'png', '4788', '1466934994');
INSERT INTO `ykb_file` VALUES ('30', 'upload/2016-06-26/503a8a8d23a1a0e46bcbc4c2a8ff12db.png', 'upload/2016-06-26/503a8a8d23a1a0e46bcbc4c2a8ff12db.png', 'logo', 'png', '4788', '1466935457');
INSERT INTO `ykb_file` VALUES ('31', 'upload/2016-06-26/503a8a8d23a1a0e46bcbc4c2a8ff12db.png', 'upload/2016-06-26/503a8a8d23a1a0e46bcbc4c2a8ff12db.png', 'logo', 'png', '4788', '1466935476');
INSERT INTO `ykb_file` VALUES ('32', 'upload/2016-06-26/503a8a8d23a1a0e46bcbc4c2a8ff12db.png', 'upload/2016-06-26/503a8a8d23a1a0e46bcbc4c2a8ff12db.png', 'logo', 'png', '4788', '1466935529');
INSERT INTO `ykb_file` VALUES ('33', 'upload/2016-06-26/503a8a8d23a1a0e46bcbc4c2a8ff12db.png', 'upload/2016-06-26/503a8a8d23a1a0e46bcbc4c2a8ff12db.png', 'logo', 'png', '4788', '1466935544');
INSERT INTO `ykb_file` VALUES ('34', 'upload/2016-06-26/503a8a8d23a1a0e46bcbc4c2a8ff12db.png', 'upload/2016-06-26/503a8a8d23a1a0e46bcbc4c2a8ff12db.png', 'logo', 'png', '4788', '1466935571');
INSERT INTO `ykb_file` VALUES ('35', 'upload/2016-06-26/503a8a8d23a1a0e46bcbc4c2a8ff12db.png', 'upload/2016-06-26/503a8a8d23a1a0e46bcbc4c2a8ff12db.png', 'logo', 'png', '4788', '1466935583');
INSERT INTO `ykb_file` VALUES ('36', 'upload/2016-06-26/503a8a8d23a1a0e46bcbc4c2a8ff12db.png', 'upload/2016-06-26/503a8a8d23a1a0e46bcbc4c2a8ff12db.png', 'logo', 'png', '4788', '1466935616');
INSERT INTO `ykb_file` VALUES ('37', 'upload/2016-06-26/503a8a8d23a1a0e46bcbc4c2a8ff12db.png', 'upload/2016-06-26/503a8a8d23a1a0e46bcbc4c2a8ff12db.png', 'logo', 'png', '4788', '1466935640');
INSERT INTO `ykb_file` VALUES ('38', 'upload/2016-06-26/503a8a8d23a1a0e46bcbc4c2a8ff12db.png', 'upload/2016-06-26/503a8a8d23a1a0e46bcbc4c2a8ff12db.png', 'logo', 'png', '4788', '1466935794');
INSERT INTO `ykb_file` VALUES ('39', 'upload/2016-06-26/0b8d1999aad832ba6fe9ae7f2da93b35.jpg', 'upload/2016-06-26/0b8d1999aad832ba6fe9ae7f2da93b35.jpg', 'pic01', 'jpg', '45181', '1466944816');
INSERT INTO `ykb_file` VALUES ('40', 'upload/2016-06-26/0b8d1999aad832ba6fe9ae7f2da93b35.jpg', 'upload/2016-06-26/0b8d1999aad832ba6fe9ae7f2da93b35.jpg', 'pic01', 'jpg', '45181', '1466945104');
INSERT INTO `ykb_file` VALUES ('41', 'upload/2016-06-26/ebc19d7e095081ad1faa340a273266f1.jpg', 'upload/2016-06-26/ebc19d7e095081ad1faa340a273266f1.jpg', 'aboutuspic', 'jpg', '75671', '1466945738');
INSERT INTO `ykb_file` VALUES ('42', 'upload/2016-06-26/6c2c006fb606bb9c40e7b20adc3d1ad5.jpg', 'upload/2016-06-26/6c2c006fb606bb9c40e7b20adc3d1ad5.jpg', 'banner', 'jpg', '598649', '1466945970');
INSERT INTO `ykb_file` VALUES ('43', 'upload/2016-06-26/e0dbedf6d0581f09ea400700a2f7cd66.jpg', 'upload/2016-06-26/e0dbedf6d0581f09ea400700a2f7cd66.jpg', 'newsdetail', 'jpg', '32282', '1466946453');
INSERT INTO `ykb_file` VALUES ('44', 'upload/2016-06-26/0b8d1999aad832ba6fe9ae7f2da93b35.jpg', 'upload/2016-06-26/0b8d1999aad832ba6fe9ae7f2da93b35.jpg', 'pic01', 'jpg', '45181', '1466946473');
INSERT INTO `ykb_file` VALUES ('45', 'upload/2016-06-26/0b8d1999aad832ba6fe9ae7f2da93b35.jpg', 'upload/2016-06-26/0b8d1999aad832ba6fe9ae7f2da93b35.jpg', 'pic01', 'jpg', '45181', '1466946646');
INSERT INTO `ykb_file` VALUES ('46', 'upload/2016-06-26/e0dbedf6d0581f09ea400700a2f7cd66.jpg', 'upload/2016-06-26/e0dbedf6d0581f09ea400700a2f7cd66.jpg', 'newsdetail', 'jpg', '32282', '1466946678');
INSERT INTO `ykb_file` VALUES ('47', 'upload/2016-06-26/3af709ed2b13bb586d138c09054d6b15.jpg', 'upload/2016-06-26/3af709ed2b13bb586d138c09054d6b15.jpg', 'learnerpic', 'jpg', '28665', '1466946745');
INSERT INTO `ykb_file` VALUES ('48', 'upload/2016-06-26/3af709ed2b13bb586d138c09054d6b15.jpg', 'upload/2016-06-26/3af709ed2b13bb586d138c09054d6b15.jpg', 'learnerpic', 'jpg', '28665', '1466947033');
INSERT INTO `ykb_file` VALUES ('49', 'upload/2016-06-26/3af709ed2b13bb586d138c09054d6b15.jpg', 'upload/2016-06-26/3af709ed2b13bb586d138c09054d6b15.jpg', 'learnerpic', 'jpg', '28665', '1466947406');
INSERT INTO `ykb_file` VALUES ('50', 'upload/2016-06-26/3af709ed2b13bb586d138c09054d6b15.jpg', 'upload/2016-06-26/3af709ed2b13bb586d138c09054d6b15.jpg', 'learnerpic', 'jpg', '28665', '1466947539');
INSERT INTO `ykb_file` VALUES ('51', 'upload/2016-06-26/3af709ed2b13bb586d138c09054d6b15.jpg', 'upload/2016-06-26/3af709ed2b13bb586d138c09054d6b15.jpg', 'learnerpic', 'jpg', '28665', '1466947551');
INSERT INTO `ykb_file` VALUES ('52', 'upload/2016-06-28/3b6434566aa4ebd6560680e92e06e6ce.jpg', 'upload/2016-06-28/3b6434566aa4ebd6560680e92e06e6ce.jpg', '112415enjg191vngmgv43x.jpg.thumb', 'jpg', '78985', '1467098851');
INSERT INTO `ykb_file` VALUES ('53', 'upload/2016-06-28/213b41bd397078e1d60f3eafa914e1e3.jpg', 'upload/2016-06-28/213b41bd397078e1d60f3eafa914e1e3.jpg', '105425zkmy49ybifh99ikg.jpg.thumb', 'jpg', '60769', '1467099244');
INSERT INTO `ykb_file` VALUES ('54', 'upload/2016-06-28/b3d148259501b623acbb434b86c1077d.jpg', 'upload/2016-06-28/b3d148259501b623acbb434b86c1077d.jpg', '000730orgqjo7agx4sonyr.jpg.thumb', 'jpg', '61374', '1467099308');
INSERT INTO `ykb_file` VALUES ('55', 'upload/2016-06-28/6ac87e456f73590da6e3e2be301017b4.jpg', 'upload/2016-06-28/6ac87e456f73590da6e3e2be301017b4.jpg', '125142lq5d8lz7m5m00nzd', 'jpg', '50225', '1467100826');
INSERT INTO `ykb_file` VALUES ('56', 'upload/2016-06-28/91b051c55a790aa936058bcf75be16ea.jpg', 'upload/2016-06-28/91b051c55a790aa936058bcf75be16ea.jpg', '8dd757bb8c355b410631c2857807ecd4', 'jpg', '64637', '1467102225');
INSERT INTO `ykb_file` VALUES ('57', 'upload/2016-06-28/f26cafe85480fda404a63a22b85c3e80.jpg', 'upload/2016-06-28/f26cafe85480fda404a63a22b85c3e80.jpg', '0688b2b3e324ea2a43144e9bce680e94', 'jpg', '71584', '1467102229');
INSERT INTO `ykb_file` VALUES ('58', 'upload/2016-06-28/8430833dc0de70cb94a3c6df3e5359c2.jpg', 'upload/2016-06-28/8430833dc0de70cb94a3c6df3e5359c2.jpg', 'ae77c16dfe20e31165238b9ef1c153af', 'jpg', '29951', '1467102234');
INSERT INTO `ykb_file` VALUES ('59', 'upload/2016-06-28/25857d88a5df734684c51c7ec7684c51.jpg', 'upload/2016-06-28/25857d88a5df734684c51c7ec7684c51.jpg', 'b5fdb6a6c6f75b8eb57ad7e8199ee70f', 'jpg', '46372', '1467102237');
INSERT INTO `ykb_file` VALUES ('60', 'upload/2016-06-28/1685758fb1a9a70ba3496891cbd4e71a.jpg', 'upload/2016-06-28/1685758fb1a9a70ba3496891cbd4e71a.jpg', '120404ejjmzgejr4ssvvz7', 'jpg', '40951', '1467102918');
INSERT INTO `ykb_file` VALUES ('61', 'upload/2016-06-28/1d9a26a61fa08c44851f4c605a642dbc.jpg', 'upload/2016-06-28/1d9a26a61fa08c44851f4c605a642dbc.jpg', '2', 'jpg', '183733', '1467103474');
INSERT INTO `ykb_file` VALUES ('62', 'upload/2016-06-28/4f1b360e8c31e57529f0ec79a76a2189.jpg', 'upload/2016-06-28/4f1b360e8c31e57529f0ec79a76a2189.jpg', '1', 'jpg', '142464', '1467103500');
INSERT INTO `ykb_file` VALUES ('63', 'upload/2016-06-28/6dbf6a821d6a6044bbc091bac4abeefd.png', 'upload/2016-06-28/6dbf6a821d6a6044bbc091bac4abeefd.png', 'logo', 'png', '11305', '1467105531');
INSERT INTO `ykb_file` VALUES ('64', 'upload/2016-06-28/6dbf6a821d6a6044bbc091bac4abeefd.png', 'upload/2016-06-28/6dbf6a821d6a6044bbc091bac4abeefd.png', 'ftlogo', 'png', '11305', '1467105566');
INSERT INTO `ykb_file` VALUES ('65', 'upload/2016-06-28/c80f3fa2128da00d000e3fabb9089412.jpg', 'upload/2016-06-28/c80f3fa2128da00d000e3fabb9089412.jpg', '114834bjksbnnsfsffn3jk', 'jpg', '58930', '1467105624');
INSERT INTO `ykb_file` VALUES ('66', 'upload/2016-06-28/a2560f032ecbda3719eb43ac68a9d592.jpg', 'upload/2016-06-28/a2560f032ecbda3719eb43ac68a9d592.jpg', '101818e5jcqbj6jteg5ja6', 'jpg', '272022', '1467105661');
INSERT INTO `ykb_file` VALUES ('67', 'upload/2016-06-28/c7f4e4585464a6593c610b7315bd33d3.png', 'upload/2016-06-28/c7f4e4585464a6593c610b7315bd33d3.png', '20150731103732_32901', 'png', '4798', '1467105736');
INSERT INTO `ykb_file` VALUES ('68', 'upload/2016-06-28/b3d148259501b623acbb434b86c1077d.jpg', 'upload/2016-06-28/b3d148259501b623acbb434b86c1077d.jpg', '000730orgqjo7agx4sonyr.jpg.thumb', 'jpg', '61374', '1467106650');
INSERT INTO `ykb_file` VALUES ('69', 'upload/2016-06-28/1685758fb1a9a70ba3496891cbd4e71a.jpg', 'upload/2016-06-28/1685758fb1a9a70ba3496891cbd4e71a.jpg', '120404ejjmzgejr4ssvvz7', 'jpg', '40951', '1467107873');
INSERT INTO `ykb_file` VALUES ('70', 'upload/2016-08-06/42ca668ce2d3034d2d8faa0d4566bbbb.jpg', 'upload/2016-08-06/42ca668ce2d3034d2d8faa0d4566bbbb.jpg', '1-1605151500180-l', 'jpg', '11312', '1470452784');
INSERT INTO `ykb_file` VALUES ('71', 'upload/2016-08-06/42ca668ce2d3034d2d8faa0d4566bbbb.jpg', 'upload/2016-08-06/42ca668ce2d3034d2d8faa0d4566bbbb.jpg', '1-1605151500180-l', 'jpg', '11312', '1470452802');
INSERT INTO `ykb_file` VALUES ('72', 'upload/2016-08-06/42ca668ce2d3034d2d8faa0d4566bbbb.jpg', 'upload/2016-08-06/42ca668ce2d3034d2d8faa0d4566bbbb.jpg', '1-1605151500180-l', 'jpg', '11312', '1470452814');
INSERT INTO `ykb_file` VALUES ('73', 'upload/2016-08-06/0dd194f4205adad701af33bd787c4fb3.jpg', 'upload/2016-08-06/0dd194f4205adad701af33bd787c4fb3.jpg', '1-1605151459380-l', 'jpg', '28655', '1470452824');
INSERT INTO `ykb_file` VALUES ('74', 'upload/2016-08-06/42ca668ce2d3034d2d8faa0d4566bbbb.jpg', 'upload/2016-08-06/42ca668ce2d3034d2d8faa0d4566bbbb.jpg', '1-1605151500180-l', 'jpg', '11312', '1470452835');
INSERT INTO `ykb_file` VALUES ('75', 'upload/2016-08-06/17bade1a43e68de6ec4d52821827da94.jpg', 'upload/2016-08-06/17bade1a43e68de6ec4d52821827da94.jpg', '1-16051515225D57-lp', 'jpg', '10874', '1470453999');
INSERT INTO `ykb_file` VALUES ('76', 'upload/2016-08-06/5b125af5a201fe1bf17669bf22719f05.jpg', 'upload/2016-08-06/5b125af5a201fe1bf17669bf22719f05.jpg', '1-16051515244LY-lp', 'jpg', '8425', '1470454020');
INSERT INTO `ykb_file` VALUES ('77', 'upload/2016-08-06/835e096d9185d493bf4536317c12250e.jpg', 'upload/2016-08-06/835e096d9185d493bf4536317c12250e.jpg', '1-160515152345Y7-lp', 'jpg', '7068', '1470454028');
INSERT INTO `ykb_file` VALUES ('78', 'upload/2016-08-06/0413fdb8bc20fbaf5df9a1652d3bc124.jpg', 'upload/2016-08-06/0413fdb8bc20fbaf5df9a1652d3bc124.jpg', '1-160515152432309-lp', 'jpg', '8288', '1470454039');
INSERT INTO `ykb_file` VALUES ('79', 'upload/2016-08-06/5b125af5a201fe1bf17669bf22719f05.jpg', 'upload/2016-08-06/5b125af5a201fe1bf17669bf22719f05.jpg', '1-16051515244LY-lp', 'jpg', '8425', '1470456286');
INSERT INTO `ykb_file` VALUES ('80', 'upload/2016-08-06/d4e7400b143228e3876afbc171cf1ffc.jpg', 'upload/2016-08-06/d4e7400b143228e3876afbc171cf1ffc.jpg', 'u=626822082,2949293220&fm=111&gp=0', 'jpg', '8235', '1470456849');
INSERT INTO `ykb_file` VALUES ('81', 'upload/2016-08-06/b81acf718bf4d9118b6e764a887e2280.png', 'upload/2016-08-06/b81acf718bf4d9118b6e764a887e2280.png', '0013920_03', 'png', '8636', '1470457283');
INSERT INTO `ykb_file` VALUES ('82', 'upload/2016-08-06/2ea35a56caf54d17f95b224953a9f670.jpg', 'upload/2016-08-06/2ea35a56caf54d17f95b224953a9f670.jpg', 'b1', 'jpg', '70607', '1470457436');
INSERT INTO `ykb_file` VALUES ('83', 'upload/2016-08-06/43f8fc8de4fb775be2c7f30b94a12cf5.jpg', 'upload/2016-08-06/43f8fc8de4fb775be2c7f30b94a12cf5.jpg', 'u=26322481,1670928949&fm=111&gp=0', 'jpg', '10535', '1470458285');
INSERT INTO `ykb_file` VALUES ('84', 'upload/2016-08-06/09692595a5211f923c7bbd6aaee0acb1.png', 'upload/2016-08-06/09692595a5211f923c7bbd6aaee0acb1.png', 'weixin', 'png', '4817', '1470459929');
INSERT INTO `ykb_file` VALUES ('85', 'upload/2016-08-06/42f0d5704912d149bfcb0bf78236ff38.jpg', 'upload/2016-08-06/42f0d5704912d149bfcb0bf78236ff38.jpg', 'b1', 'jpg', '97781', '1470465182');
INSERT INTO `ykb_file` VALUES ('86', 'upload/2016-08-06/42f0d5704912d149bfcb0bf78236ff38.jpg', 'upload/2016-08-06/42f0d5704912d149bfcb0bf78236ff38.jpg', 'b1', 'jpg', '97781', '1470465189');
INSERT INTO `ykb_file` VALUES ('87', 'upload/2016-08-06/42f0d5704912d149bfcb0bf78236ff38.jpg', 'upload/2016-08-06/42f0d5704912d149bfcb0bf78236ff38.jpg', 'b1', 'jpg', '97781', '1470468755');
INSERT INTO `ykb_file` VALUES ('88', 'upload/2016-08-07/c64e5270033dd4cb1299cf0706e63966.png', 'upload/2016-08-07/c64e5270033dd4cb1299cf0706e63966.png', 'logo_03', 'png', '12779', '1470547599');
INSERT INTO `ykb_file` VALUES ('89', 'upload/2016-08-10/cf92c828eb5fc0f8e611d97b4897bb76.jpg', 'upload/2016-08-10/cf92c828eb5fc0f8e611d97b4897bb76.jpg', 'banner', 'jpg', '44252', '1470792536');
INSERT INTO `ykb_file` VALUES ('90', 'upload/2016-08-10/13ad90647644a41d198b1a872dc92a5d.jpg', 'upload/2016-08-10/13ad90647644a41d198b1a872dc92a5d.jpg', 'conpanyimg', 'jpg', '40956', '1470792599');
INSERT INTO `ykb_file` VALUES ('91', 'upload/2016-08-10/3b3a849de440bfa4eac7f582c1dc06ea.png', 'upload/2016-08-10/3b3a849de440bfa4eac7f582c1dc06ea.png', 'qyzz_08', 'png', '37710', '1470793111');
INSERT INTO `ykb_file` VALUES ('92', 'upload/2016-08-10/d9a52462a788661a67736c74492b8df6.png', 'upload/2016-08-10/d9a52462a788661a67736c74492b8df6.png', '2', 'png', '45164', '1470793158');
INSERT INTO `ykb_file` VALUES ('93', 'upload/2016-08-10/7cf30324610cad7ce428d53249994a61.jpg', 'upload/2016-08-10/7cf30324610cad7ce428d53249994a61.jpg', '3', 'jpg', '19728', '1470793190');
INSERT INTO `ykb_file` VALUES ('94', 'upload/2016-08-10/09f331e48252f87f7b4000415eed85ef.jpg', 'upload/2016-08-10/09f331e48252f87f7b4000415eed85ef.jpg', '4', 'jpg', '14123', '1470793207');
INSERT INTO `ykb_file` VALUES ('95', 'upload/2016-08-10/bddab0eacd759643c39045d9f0779aa2.jpg', 'upload/2016-08-10/bddab0eacd759643c39045d9f0779aa2.jpg', '5', 'jpg', '21649', '1470793232');
INSERT INTO `ykb_file` VALUES ('96', 'upload/2016-08-10/92d1c897964fdc0c4b892865176dbe81.jpg', 'upload/2016-08-10/92d1c897964fdc0c4b892865176dbe81.jpg', '20130910121615652', 'jpg', '35539', '1470794159');
INSERT INTO `ykb_file` VALUES ('97', 'upload/2016-08-10/0b79f98ccdf717aecacf7595ff8d7a2a.jpg', 'upload/2016-08-10/0b79f98ccdf717aecacf7595ff8d7a2a.jpg', '20130507114355681', 'jpg', '144605', '1470794624');
INSERT INTO `ykb_file` VALUES ('98', 'upload/2016-08-10/efc6119f99322107ed3b6e3a7ca5e216.png', 'upload/2016-08-10/efc6119f99322107ed3b6e3a7ca5e216.png', 'logo', 'png', '48074', '1470802670');
INSERT INTO `ykb_file` VALUES ('99', 'upload/2016-08-10/b7199347cf281029d2bb6d483ed8d56c.png', 'upload/2016-08-10/b7199347cf281029d2bb6d483ed8d56c.png', 'logo', 'png', '12892', '1470803119');
INSERT INTO `ykb_file` VALUES ('100', 'upload/2016-08-10/efc6119f99322107ed3b6e3a7ca5e216.png', 'upload/2016-08-10/efc6119f99322107ed3b6e3a7ca5e216.png', 'logo', 'png', '48074', '1470803172');
INSERT INTO `ykb_file` VALUES ('101', 'upload/2016-08-10/efc6119f99322107ed3b6e3a7ca5e216.png', 'upload/2016-08-10/efc6119f99322107ed3b6e3a7ca5e216.png', 'efc6119f99322107ed3b6e3a7ca5e216', 'png', '48074', '1470806057');
INSERT INTO `ykb_file` VALUES ('102', 'upload/2016-08-10/1b4ad8e33dfdf2643ba27f928271fba8.png', 'upload/2016-08-10/1b4ad8e33dfdf2643ba27f928271fba8.png', 'zzjj_2', 'png', '285345', '1470810526');
INSERT INTO `ykb_file` VALUES ('103', 'upload/2016-08-10/5c8406020bd77701bca76da7f54eeca2.jpg', 'upload/2016-08-10/5c8406020bd77701bca76da7f54eeca2.jpg', '1', 'jpg', '65691', '1470811042');
INSERT INTO `ykb_file` VALUES ('104', 'upload/2016-08-10/088be9cbcf28c73e6c61ea962245f495.jpg', 'upload/2016-08-10/088be9cbcf28c73e6c61ea962245f495.jpg', 'TB271EjoXXXXXcXXpXXXXXXXXXX_!!2106754393', 'jpg', '544869', '1470811288');
INSERT INTO `ykb_file` VALUES ('105', 'upload/2016-08-10/8c1b41fe7e0032f2409d3f82176bc54f.jpg', 'upload/2016-08-10/8c1b41fe7e0032f2409d3f82176bc54f.jpg', 'm_20160518130321174', 'jpg', '22188', '1470812641');
INSERT INTO `ykb_file` VALUES ('106', 'upload/2016-08-10/ee9646cfbecc3ca9c10961dd4d8596d5.jpg', 'upload/2016-08-10/ee9646cfbecc3ca9c10961dd4d8596d5.jpg', 'm_20160518130321936', 'jpg', '22704', '1470812650');
INSERT INTO `ykb_file` VALUES ('107', 'upload/2016-08-10/8c1b41fe7e0032f2409d3f82176bc54f.jpg', 'upload/2016-08-10/8c1b41fe7e0032f2409d3f82176bc54f.jpg', 'm_20160518130321174', 'jpg', '22188', '1470812907');
INSERT INTO `ykb_file` VALUES ('108', 'upload/2016-08-10/ee9646cfbecc3ca9c10961dd4d8596d5.jpg', 'upload/2016-08-10/ee9646cfbecc3ca9c10961dd4d8596d5.jpg', 'm_20160518130321936', 'jpg', '22704', '1470812917');
INSERT INTO `ykb_file` VALUES ('109', 'upload/2016-08-10/3ece2f0492fd3a1c91207aaa3ff2f637.jpg', 'upload/2016-08-10/3ece2f0492fd3a1c91207aaa3ff2f637.jpg', 'm_2016051813042487', 'jpg', '22526', '1470813408');
INSERT INTO `ykb_file` VALUES ('110', 'upload/2016-08-10/a3a1db519b6c73be840dfe52f4766986.jpg', 'upload/2016-08-10/a3a1db519b6c73be840dfe52f4766986.jpg', 'm_20160518130424532', 'jpg', '23304', '1470813416');
INSERT INTO `ykb_file` VALUES ('111', 'upload/2016-08-10/bd517b1aa06b6af9e8a82fbb5fa51ee1.jpg', 'upload/2016-08-10/bd517b1aa06b6af9e8a82fbb5fa51ee1.jpg', '1', 'jpg', '24790', '1470813518');
INSERT INTO `ykb_file` VALUES ('112', 'upload/2016-08-10/9a38750664165d2bef021f7ba577dd62.jpg', 'upload/2016-08-10/9a38750664165d2bef021f7ba577dd62.jpg', '1', 'jpg', '20655', '1470813582');
INSERT INTO `ykb_file` VALUES ('113', 'upload/2016-08-10/08a67175a552a83e201669f137bfab9d.jpg', 'upload/2016-08-10/08a67175a552a83e201669f137bfab9d.jpg', '2', 'jpg', '16827', '1470813592');
INSERT INTO `ykb_file` VALUES ('114', 'upload/2016-08-10/523a7abea214ab819fc002e3753ce40f.jpg', 'upload/2016-08-10/523a7abea214ab819fc002e3753ce40f.jpg', '1', 'jpg', '25310', '1470813690');
INSERT INTO `ykb_file` VALUES ('115', 'upload/2016-08-10/1de4bd3a8eb52b39dd16bab49e851145.jpg', 'upload/2016-08-10/1de4bd3a8eb52b39dd16bab49e851145.jpg', '2', 'jpg', '25241', '1470813699');
INSERT INTO `ykb_file` VALUES ('116', 'upload/2016-08-10/55c7094a42be5c35d66ef8fd00eb6c85.jpg', 'upload/2016-08-10/55c7094a42be5c35d66ef8fd00eb6c85.jpg', '1', 'jpg', '24422', '1470814093');
INSERT INTO `ykb_file` VALUES ('117', 'upload/2016-08-10/31819a702f906f44f52b23c684749b57.jpg', 'upload/2016-08-10/31819a702f906f44f52b23c684749b57.jpg', '2', 'jpg', '24506', '1470814100');
INSERT INTO `ykb_file` VALUES ('118', 'upload/2016-08-10/8a00a3680dea9283bb957478320db1d4.jpg', 'upload/2016-08-10/8a00a3680dea9283bb957478320db1d4.jpg', '1', 'jpg', '28012', '1470814198');
INSERT INTO `ykb_file` VALUES ('119', 'upload/2016-08-10/9c39595df96f26259ced46f660085126.jpg', 'upload/2016-08-10/9c39595df96f26259ced46f660085126.jpg', '1', 'jpg', '32458', '1470814339');
INSERT INTO `ykb_file` VALUES ('120', 'upload/2016-08-10/37bde9bb43bc5c222a1fd3d4b65fa58e.jpg', 'upload/2016-08-10/37bde9bb43bc5c222a1fd3d4b65fa58e.jpg', '2', 'jpg', '28802', '1470814347');
INSERT INTO `ykb_file` VALUES ('121', 'upload/2016-08-10/bb32da00ab96151fc2137a5e501cb2f2.jpg', 'upload/2016-08-10/bb32da00ab96151fc2137a5e501cb2f2.jpg', '3', 'jpg', '33380', '1470814356');
INSERT INTO `ykb_file` VALUES ('122', 'upload/2016-08-10/3fbe34d0ddf26b2a1dc4fc7d69642c90.jpg', 'upload/2016-08-10/3fbe34d0ddf26b2a1dc4fc7d69642c90.jpg', '1', 'jpg', '21104', '1470814503');
INSERT INTO `ykb_file` VALUES ('123', 'upload/2016-08-10/65018c4b4c79b62ad4d119bcbf867e09.jpg', 'upload/2016-08-10/65018c4b4c79b62ad4d119bcbf867e09.jpg', '2', 'jpg', '18831', '1470814511');
INSERT INTO `ykb_file` VALUES ('124', 'upload/2016-08-10/1af330e97e81524f8d22c777150f2ebb.jpg', 'upload/2016-08-10/1af330e97e81524f8d22c777150f2ebb.jpg', '1', 'jpg', '22144', '1470814595');
INSERT INTO `ykb_file` VALUES ('125', 'upload/2016-08-10/8a9356991efc1505409563d8cedfd41e.jpg', 'upload/2016-08-10/8a9356991efc1505409563d8cedfd41e.jpg', '2', 'jpg', '22132', '1470814602');
INSERT INTO `ykb_file` VALUES ('126', 'upload/2016-08-10/1af330e97e81524f8d22c777150f2ebb.jpg', 'upload/2016-08-10/1af330e97e81524f8d22c777150f2ebb.jpg', '1', 'jpg', '22144', '1470814657');
INSERT INTO `ykb_file` VALUES ('127', 'upload/2016-08-10/c1b57284712d37ce07908f4a874209b9.jpg', 'upload/2016-08-10/c1b57284712d37ce07908f4a874209b9.jpg', '1', 'jpg', '28309', '1470814720');
INSERT INTO `ykb_file` VALUES ('128', 'upload/2016-08-10/687cba82f9d959ec135a3342c3c5dd5f.jpg', 'upload/2016-08-10/687cba82f9d959ec135a3342c3c5dd5f.jpg', '2', 'jpg', '28590', '1470814727');
INSERT INTO `ykb_file` VALUES ('129', 'upload/2016-08-10/f8b56978461338ebc3e7208ba1b51467.jpg', 'upload/2016-08-10/f8b56978461338ebc3e7208ba1b51467.jpg', '1', 'jpg', '24880', '1470814877');
INSERT INTO `ykb_file` VALUES ('130', 'upload/2016-08-10/88f5b01bea7a24b9c9b7c170d61e367c.jpg', 'upload/2016-08-10/88f5b01bea7a24b9c9b7c170d61e367c.jpg', '2', 'jpg', '22760', '1470814887');
INSERT INTO `ykb_file` VALUES ('131', 'upload/2016-08-10/136cd1ba90d98f5bbb7e59fc353e3981.jpg', 'upload/2016-08-10/136cd1ba90d98f5bbb7e59fc353e3981.jpg', '1', 'jpg', '22946', '1470815026');
INSERT INTO `ykb_file` VALUES ('132', 'upload/2016-08-10/bee51ff870b30c0431216664c229e714.jpg', 'upload/2016-08-10/bee51ff870b30c0431216664c229e714.jpg', '2', 'jpg', '24750', '1470815033');
INSERT INTO `ykb_file` VALUES ('133', 'upload/2016-08-10/c4858721a160646dd048f56feed631be.jpg', 'upload/2016-08-10/c4858721a160646dd048f56feed631be.jpg', '1', 'jpg', '25005', '1470815093');
INSERT INTO `ykb_file` VALUES ('134', 'upload/2016-08-10/d67a239e77757c045131f7b5384a45aa.jpg', 'upload/2016-08-10/d67a239e77757c045131f7b5384a45aa.jpg', '2', 'jpg', '24062', '1470815101');
INSERT INTO `ykb_file` VALUES ('135', 'upload/2016-08-10/f8b2d4b570b98c27e7f02d462535466c.jpg', 'upload/2016-08-10/f8b2d4b570b98c27e7f02d462535466c.jpg', '1', 'jpg', '24539', '1470815178');
INSERT INTO `ykb_file` VALUES ('136', 'upload/2016-08-10/5013be9f4d9c2f27017a7dea9610d2ca.jpg', 'upload/2016-08-10/5013be9f4d9c2f27017a7dea9610d2ca.jpg', '2', 'jpg', '25323', '1470815185');
INSERT INTO `ykb_file` VALUES ('137', 'upload/2016-08-10/0a147101c393e4a6b99aa1289b9b2801.jpg', 'upload/2016-08-10/0a147101c393e4a6b99aa1289b9b2801.jpg', '1', 'jpg', '25957', '1470815296');
INSERT INTO `ykb_file` VALUES ('138', 'upload/2016-08-10/0aedd96bb814b701fc4b64deb50147d5.jpg', 'upload/2016-08-10/0aedd96bb814b701fc4b64deb50147d5.jpg', '2', 'jpg', '25092', '1470815303');
INSERT INTO `ykb_file` VALUES ('139', 'upload/2016-08-10/c76a1edcb205a8666d609eeb14447f48.jpg', 'upload/2016-08-10/c76a1edcb205a8666d609eeb14447f48.jpg', '1', 'jpg', '24156', '1470815366');
INSERT INTO `ykb_file` VALUES ('140', 'upload/2016-08-10/c76a1edcb205a8666d609eeb14447f48.jpg', 'upload/2016-08-10/c76a1edcb205a8666d609eeb14447f48.jpg', '1', 'jpg', '24156', '1470815543');
INSERT INTO `ykb_file` VALUES ('141', 'upload/2016-08-10/c327a820db736831691d8a4cb76d83f8.jpg', 'upload/2016-08-10/c327a820db736831691d8a4cb76d83f8.jpg', '2', 'jpg', '24298', '1470815551');
INSERT INTO `ykb_file` VALUES ('142', 'upload/2016-08-10/5265895f9d7010d0a19e585278727a88.jpg', 'upload/2016-08-10/5265895f9d7010d0a19e585278727a88.jpg', '1', 'jpg', '24828', '1470815713');
INSERT INTO `ykb_file` VALUES ('143', 'upload/2016-08-10/c233c2c6d58bc486b160904d37e9e970.jpg', 'upload/2016-08-10/c233c2c6d58bc486b160904d37e9e970.jpg', '2', 'jpg', '24688', '1470815723');
INSERT INTO `ykb_file` VALUES ('144', 'upload/2016-08-10/cd9db7ca890a4deb4f0f2a923bbc7388.jpg', 'upload/2016-08-10/cd9db7ca890a4deb4f0f2a923bbc7388.jpg', '1', 'jpg', '25242', '1470815823');
INSERT INTO `ykb_file` VALUES ('145', 'upload/2016-08-10/8a249e9278a25a1eed80091f13775d28.jpg', 'upload/2016-08-10/8a249e9278a25a1eed80091f13775d28.jpg', '2', 'jpg', '25722', '1470815831');
INSERT INTO `ykb_file` VALUES ('146', 'upload/2016-08-10/2f04117af3af07e9f1704a3cfb3d8b65.jpg', 'upload/2016-08-10/2f04117af3af07e9f1704a3cfb3d8b65.jpg', '1', 'jpg', '24697', '1470815896');
INSERT INTO `ykb_file` VALUES ('147', 'upload/2016-08-10/2f04117af3af07e9f1704a3cfb3d8b65.jpg', 'upload/2016-08-10/2f04117af3af07e9f1704a3cfb3d8b65.jpg', '1', 'jpg', '24697', '1470815940');
INSERT INTO `ykb_file` VALUES ('148', 'upload/2016-08-10/77b0caa63ec59178aa04f8d3a65caf5f.jpg', 'upload/2016-08-10/77b0caa63ec59178aa04f8d3a65caf5f.jpg', '2', 'jpg', '24318', '1470816034');
INSERT INTO `ykb_file` VALUES ('149', 'upload/2016-08-10/5754286897b3136feeb727a9678e5c82.jpg', 'upload/2016-08-10/5754286897b3136feeb727a9678e5c82.jpg', '1', 'jpg', '23387', '1470816129');
INSERT INTO `ykb_file` VALUES ('150', 'upload/2016-08-10/2a86dc69a363fd59d4d096f423239dd8.jpg', 'upload/2016-08-10/2a86dc69a363fd59d4d096f423239dd8.jpg', '2', 'jpg', '22937', '1470816138');
INSERT INTO `ykb_file` VALUES ('151', 'upload/2016-08-10/80251152f1482f04c6ef14bf1e6be5b9.jpg', 'upload/2016-08-10/80251152f1482f04c6ef14bf1e6be5b9.jpg', '1', 'jpg', '25469', '1470816572');
INSERT INTO `ykb_file` VALUES ('152', 'upload/2016-08-10/0ab6d04ea8d309a73e8a8170ece3086a.jpg', 'upload/2016-08-10/0ab6d04ea8d309a73e8a8170ece3086a.jpg', '2', 'jpg', '20720', '1470816581');
INSERT INTO `ykb_file` VALUES ('153', 'upload/2016-08-10/80251152f1482f04c6ef14bf1e6be5b9.jpg', 'upload/2016-08-10/80251152f1482f04c6ef14bf1e6be5b9.jpg', '1', 'jpg', '25469', '1470817067');
INSERT INTO `ykb_file` VALUES ('154', 'upload/2016-08-10/0ab6d04ea8d309a73e8a8170ece3086a.jpg', 'upload/2016-08-10/0ab6d04ea8d309a73e8a8170ece3086a.jpg', '2', 'jpg', '20720', '1470817074');
INSERT INTO `ykb_file` VALUES ('155', 'upload/2016-08-10/aef959ae22b0b0950910a7484dd1a103.jpg', 'upload/2016-08-10/aef959ae22b0b0950910a7484dd1a103.jpg', '1', 'jpg', '22893', '1470817147');
INSERT INTO `ykb_file` VALUES ('156', 'upload/2016-08-10/a2fa33c3c8b7481423f6f3b413c01c85.jpg', 'upload/2016-08-10/a2fa33c3c8b7481423f6f3b413c01c85.jpg', '2', 'jpg', '24852', '1470817157');
INSERT INTO `ykb_file` VALUES ('157', 'upload/2016-08-10/65b053b683068cb828ecd4090ee8d08b.jpg', 'upload/2016-08-10/65b053b683068cb828ecd4090ee8d08b.jpg', '1', 'jpg', '25398', '1470817559');
INSERT INTO `ykb_file` VALUES ('158', 'upload/2016-08-10/65b053b683068cb828ecd4090ee8d08b.jpg', 'upload/2016-08-10/65b053b683068cb828ecd4090ee8d08b.jpg', '1', 'jpg', '25398', '1470817573');
INSERT INTO `ykb_file` VALUES ('159', 'upload/2016-08-10/65b053b683068cb828ecd4090ee8d08b.jpg', 'upload/2016-08-10/65b053b683068cb828ecd4090ee8d08b.jpg', '2', 'jpg', '25398', '1470817585');
INSERT INTO `ykb_file` VALUES ('160', 'upload/2016-08-10/65b053b683068cb828ecd4090ee8d08b.jpg', 'upload/2016-08-10/65b053b683068cb828ecd4090ee8d08b.jpg', '1', 'jpg', '25398', '1470817660');
INSERT INTO `ykb_file` VALUES ('161', 'upload/2016-08-10/3d5f9b1210a78d37ba1c1280fbdec23d.jpg', 'upload/2016-08-10/3d5f9b1210a78d37ba1c1280fbdec23d.jpg', '1', 'jpg', '26517', '1470818022');
INSERT INTO `ykb_file` VALUES ('162', 'upload/2016-08-10/0135027747ad9e06d005dd98447ff5bd.jpg', 'upload/2016-08-10/0135027747ad9e06d005dd98447ff5bd.jpg', '1', 'jpg', '27488', '1470818100');
INSERT INTO `ykb_file` VALUES ('163', 'upload/2016-08-10/8062ba1f5caeb7951a881f59e4a412da.jpg', 'upload/2016-08-10/8062ba1f5caeb7951a881f59e4a412da.jpg', '2', 'jpg', '26992', '1470818118');
INSERT INTO `ykb_file` VALUES ('164', 'upload/2016-08-10/fd2ed12c0999ad9e67124fbab0b6bd16.jpg', 'upload/2016-08-10/fd2ed12c0999ad9e67124fbab0b6bd16.jpg', '1', 'jpg', '27194', '1470818198');
INSERT INTO `ykb_file` VALUES ('165', 'upload/2016-08-10/53a29cf518e3103f764e0b66b975120a.jpg', 'upload/2016-08-10/53a29cf518e3103f764e0b66b975120a.jpg', '2', 'jpg', '26058', '1470818207');
INSERT INTO `ykb_file` VALUES ('166', 'upload/2016-08-10/1b484f3fca53ad865e7dc795be509f68.jpg', 'upload/2016-08-10/1b484f3fca53ad865e7dc795be509f68.jpg', '1', 'jpg', '26471', '1470818324');
INSERT INTO `ykb_file` VALUES ('167', 'upload/2016-08-10/18e4c053aeb4c7bbfc9c9b4332c589b8.jpg', 'upload/2016-08-10/18e4c053aeb4c7bbfc9c9b4332c589b8.jpg', '2', 'jpg', '26699', '1470818337');
INSERT INTO `ykb_file` VALUES ('168', 'upload/2016-08-10/6bf09538dce9e86b49c14879222528b2.jpg', 'upload/2016-08-10/6bf09538dce9e86b49c14879222528b2.jpg', '1', 'jpg', '28486', '1470818445');
INSERT INTO `ykb_file` VALUES ('169', 'upload/2016-08-10/0e7ac16aa4b13b3c37ca342692764e07.jpg', 'upload/2016-08-10/0e7ac16aa4b13b3c37ca342692764e07.jpg', '2', 'jpg', '28965', '1470818452');
INSERT INTO `ykb_file` VALUES ('170', 'upload/2016-08-10/a9193ba83c477c95ecd5a5efafb31e2d.jpg', 'upload/2016-08-10/a9193ba83c477c95ecd5a5efafb31e2d.jpg', '1', 'jpg', '18656', '1470818648');
INSERT INTO `ykb_file` VALUES ('171', 'upload/2016-08-10/0125edefd78017b5c50250f8d138ef86.jpg', 'upload/2016-08-10/0125edefd78017b5c50250f8d138ef86.jpg', '1', 'jpg', '19719', '1470818705');
INSERT INTO `ykb_file` VALUES ('172', 'upload/2016-08-10/0125edefd78017b5c50250f8d138ef86.jpg', 'upload/2016-08-10/0125edefd78017b5c50250f8d138ef86.jpg', '1', 'jpg', '19719', '1470818762');
INSERT INTO `ykb_file` VALUES ('173', 'upload/2016-08-10/f9eff743046ea5899c496dd251256243.jpg', 'upload/2016-08-10/f9eff743046ea5899c496dd251256243.jpg', '1', 'jpg', '19854', '1470818824');
INSERT INTO `ykb_file` VALUES ('174', 'upload/2016-08-10/814925e34d39d5435c4560691226d4d2.jpg', 'upload/2016-08-10/814925e34d39d5435c4560691226d4d2.jpg', '1', 'jpg', '19880', '1470818907');
INSERT INTO `ykb_file` VALUES ('175', 'upload/2016-08-10/2f2d0d572bc831d2cd1a4415d4566f5c.jpg', 'upload/2016-08-10/2f2d0d572bc831d2cd1a4415d4566f5c.jpg', '1', 'jpg', '19166', '1470819091');
INSERT INTO `ykb_file` VALUES ('176', 'upload/2016-08-10/f17b07e36d0d110836c0e7a91785db8e.jpg', 'upload/2016-08-10/f17b07e36d0d110836c0e7a91785db8e.jpg', '1', 'jpg', '40885', '1470819172');
INSERT INTO `ykb_file` VALUES ('177', 'upload/2016-08-10/9b2bad2321c9316bea88ba942821a791.jpg', 'upload/2016-08-10/9b2bad2321c9316bea88ba942821a791.jpg', '1', 'jpg', '17908', '1470819379');
INSERT INTO `ykb_file` VALUES ('178', 'upload/2016-08-10/8c1595e1bbcd56eb79656817ca04711e.jpg', 'upload/2016-08-10/8c1595e1bbcd56eb79656817ca04711e.jpg', '1', 'jpg', '20518', '1470819826');
INSERT INTO `ykb_file` VALUES ('179', 'upload/2016-08-10/42da8844908931a7d18367d0d1b80bbe.jpg', 'upload/2016-08-10/42da8844908931a7d18367d0d1b80bbe.jpg', '2', 'jpg', '19211', '1470819836');
INSERT INTO `ykb_file` VALUES ('180', 'upload/2016-08-10/a824b95f3ba2b08fdecf252864c18e13.jpg', 'upload/2016-08-10/a824b95f3ba2b08fdecf252864c18e13.jpg', '1', 'jpg', '18191', '1470819910');
INSERT INTO `ykb_file` VALUES ('181', 'upload/2016-08-10/6244aadc27cc71b7bbd2c703d2038d96.jpg', 'upload/2016-08-10/6244aadc27cc71b7bbd2c703d2038d96.jpg', '1', 'jpg', '17700', '1470820168');
INSERT INTO `ykb_file` VALUES ('182', 'upload/2016-08-10/1a4188a3082607531db3e133c669f62f.jpg', 'upload/2016-08-10/1a4188a3082607531db3e133c669f62f.jpg', '1', 'jpg', '20575', '1470820266');
INSERT INTO `ykb_file` VALUES ('183', 'upload/2016-08-10/6c9e9d18b59caca14e69b56532d4043f.jpg', 'upload/2016-08-10/6c9e9d18b59caca14e69b56532d4043f.jpg', '1', 'jpg', '18806', '1470820366');
INSERT INTO `ykb_file` VALUES ('184', 'upload/2016-08-10/88f9608aeaabc920e41f5e4e019aa7d6.jpg', 'upload/2016-08-10/88f9608aeaabc920e41f5e4e019aa7d6.jpg', '1', 'jpg', '20225', '1470820434');
INSERT INTO `ykb_file` VALUES ('185', 'upload/2016-08-10/436104481b036ea6e1c5c687768bb182.jpg', 'upload/2016-08-10/436104481b036ea6e1c5c687768bb182.jpg', '1', 'jpg', '18955', '1470820514');
INSERT INTO `ykb_file` VALUES ('186', 'upload/2016-08-10/436104481b036ea6e1c5c687768bb182.jpg', 'upload/2016-08-10/436104481b036ea6e1c5c687768bb182.jpg', '1', 'jpg', '18955', '1470820580');
INSERT INTO `ykb_file` VALUES ('187', 'upload/2016-08-10/86774f5d076325818ac4e997e5fbcaae.jpg', 'upload/2016-08-10/86774f5d076325818ac4e997e5fbcaae.jpg', '1', 'jpg', '33966', '1470820838');
INSERT INTO `ykb_file` VALUES ('188', 'upload/2016-08-10/b45654f208def7c52cb766b4989bab7a.jpg', 'upload/2016-08-10/b45654f208def7c52cb766b4989bab7a.jpg', '2', 'jpg', '29096', '1470820847');
INSERT INTO `ykb_file` VALUES ('189', 'upload/2016-08-10/abab408495b1f0f83e32bc7d72a1405b.jpg', 'upload/2016-08-10/abab408495b1f0f83e32bc7d72a1405b.jpg', '3', 'jpg', '28053', '1470820884');
INSERT INTO `ykb_file` VALUES ('190', 'upload/2016-08-10/4c61c7cd32e8f8592d74dceaf2bb49f8.jpg', 'upload/2016-08-10/4c61c7cd32e8f8592d74dceaf2bb49f8.jpg', '4', 'jpg', '28206', '1470820892');
INSERT INTO `ykb_file` VALUES ('191', 'upload/2016-08-10/8f02e2d8964e88ff2021ea74cfe6f135.jpg', 'upload/2016-08-10/8f02e2d8964e88ff2021ea74cfe6f135.jpg', 'm_2016051813042487', 'jpg', '16592', '1470821013');
INSERT INTO `ykb_file` VALUES ('192', 'upload/2016-08-10/18fd8a1fc5bdf87d783bc9df573b5982.jpg', 'upload/2016-08-10/18fd8a1fc5bdf87d783bc9df573b5982.jpg', '1', 'jpg', '26425', '1470821148');
INSERT INTO `ykb_file` VALUES ('193', 'upload/2016-08-10/f7946cd521fe41fc9cd79ff9dc441e17.jpg', 'upload/2016-08-10/f7946cd521fe41fc9cd79ff9dc441e17.jpg', '2', 'jpg', '26838', '1470821157');
INSERT INTO `ykb_file` VALUES ('194', 'upload/2016-08-10/9c1cabaca6d13d3adafbed25fab14416.jpg', 'upload/2016-08-10/9c1cabaca6d13d3adafbed25fab14416.jpg', '1', 'jpg', '32271', '1470821236');
INSERT INTO `ykb_file` VALUES ('195', 'upload/2016-08-10/da0986ef7e730ecc88a58db14462ab8e.jpg', 'upload/2016-08-10/da0986ef7e730ecc88a58db14462ab8e.jpg', '2', 'jpg', '20825', '1470821254');
INSERT INTO `ykb_file` VALUES ('196', 'upload/2016-08-10/9c1cabaca6d13d3adafbed25fab14416.jpg', 'upload/2016-08-10/9c1cabaca6d13d3adafbed25fab14416.jpg', '1', 'jpg', '32271', '1470821314');
INSERT INTO `ykb_file` VALUES ('197', 'upload/2016-08-10/661196c4cd9e73788755865383205efe.jpg', 'upload/2016-08-10/661196c4cd9e73788755865383205efe.jpg', '1470296391237', 'jpg', '239954', '1470821343');
INSERT INTO `ykb_file` VALUES ('198', 'upload/2016-08-10/03f544ee7330eb1b1264fa2533f73e12.jpg', 'upload/2016-08-10/03f544ee7330eb1b1264fa2533f73e12.jpg', '1', 'jpg', '16320', '1470821421');
INSERT INTO `ykb_file` VALUES ('199', 'upload/2016-08-10/de835f7877dbca5cad36725f9f2567f1.jpg', 'upload/2016-08-10/de835f7877dbca5cad36725f9f2567f1.jpg', '1', 'jpg', '26423', '1470821485');
INSERT INTO `ykb_file` VALUES ('200', 'upload/2016-08-10/f7946cd521fe41fc9cd79ff9dc441e17.jpg', 'upload/2016-08-10/f7946cd521fe41fc9cd79ff9dc441e17.jpg', '2', 'jpg', '26838', '1470821496');
INSERT INTO `ykb_file` VALUES ('201', 'upload/2016-08-10/cd6af09c125aae29cc1eed2e3c128ab6.jpg', 'upload/2016-08-10/cd6af09c125aae29cc1eed2e3c128ab6.jpg', '1', 'jpg', '28643', '1470821641');
INSERT INTO `ykb_file` VALUES ('202', 'upload/2016-08-10/0245c3c78c11300bd8cb03ea87a32707.jpg', 'upload/2016-08-10/0245c3c78c11300bd8cb03ea87a32707.jpg', '2', 'jpg', '21867', '1470821649');
INSERT INTO `ykb_file` VALUES ('203', 'upload/2016-08-10/efc6119f99322107ed3b6e3a7ca5e216.png', 'upload/2016-08-10/efc6119f99322107ed3b6e3a7ca5e216.png', 'efc6119f99322107ed3b6e3a7ca5e216', 'png', '48074', '1470821851');
INSERT INTO `ykb_file` VALUES ('204', 'upload/2016-08-10/b81acf718bf4d9118b6e764a887e2280.png', 'upload/2016-08-10/b81acf718bf4d9118b6e764a887e2280.png', '0013920_03', 'png', '8636', '1470822075');
INSERT INTO `ykb_file` VALUES ('205', 'upload/2016-08-10/efc6119f99322107ed3b6e3a7ca5e216.png', 'upload/2016-08-10/efc6119f99322107ed3b6e3a7ca5e216.png', 'efc6119f99322107ed3b6e3a7ca5e216', 'png', '48074', '1470822269');
INSERT INTO `ykb_file` VALUES ('206', 'upload/2016-08-10/088be9cbcf28c73e6c61ea962245f495.jpg', 'upload/2016-08-10/088be9cbcf28c73e6c61ea962245f495.jpg', 'TB271EjoXXXXXcXXpXXXXXXXXXX_!!2106754393', 'jpg', '544869', '1470823717');
INSERT INTO `ykb_file` VALUES ('207', 'upload/2016-08-10/960c696682114c91c647de2fdb7fea50.jpg', 'upload/2016-08-10/960c696682114c91c647de2fdb7fea50.jpg', 'TB2p4ZepVXXXXX0XXXXXXXXXXXX_!!2106754393', 'jpg', '1759711', '1470823739');
INSERT INTO `ykb_file` VALUES ('208', 'upload/2016-08-10/960c696682114c91c647de2fdb7fea50.jpg', 'upload/2016-08-10/960c696682114c91c647de2fdb7fea50.jpg', 'TB2p4ZepVXXXXX0XXXXXXXXXXXX_!!2106754393', 'jpg', '1759711', '1470823841');
INSERT INTO `ykb_file` VALUES ('209', 'upload/2016-08-10/fdbfaf521f62de86f2dcdd3ab417fa40.jpg', 'upload/2016-08-10/fdbfaf521f62de86f2dcdd3ab417fa40.jpg', 'TB2hGwAqXXXXXaeXFXXXXXXXXXX_!!2106754393', 'jpg', '207150', '1470823884');
INSERT INTO `ykb_file` VALUES ('210', 'upload/2016-08-10/1008e3fc9eb67227ae236e851181cbb9.jpg', 'upload/2016-08-10/1008e3fc9eb67227ae236e851181cbb9.jpg', 'TB2A0MapVXXXXaqXXXXXXXXXXXX_!!2106754393', 'jpg', '1098659', '1470823894');
INSERT INTO `ykb_file` VALUES ('211', 'upload/2016-08-10/4d431078257610bc896e96b8260b8b79.jpg', 'upload/2016-08-10/4d431078257610bc896e96b8260b8b79.jpg', 'TB2_qTupVXXXXaXXFXXXXXXXXXX_!!2106754393', 'jpg', '1834477', '1470823905');
INSERT INTO `ykb_file` VALUES ('212', 'upload/2016-08-11/62d7435b42443b25c158ec4827561a8a.jpg', 'upload/2016-08-11/62d7435b42443b25c158ec4827561a8a.jpg', '1', 'jpg', '36534', '1470878751');
INSERT INTO `ykb_file` VALUES ('213', 'upload/2016-08-11/2bc77e8800cce05cdb2ac91355acf11f.jpg', 'upload/2016-08-11/2bc77e8800cce05cdb2ac91355acf11f.jpg', '2', 'jpg', '43759', '1470878759');
INSERT INTO `ykb_file` VALUES ('214', 'upload/2016-08-11/54edbc8ef2e993106816274bf5ddd5ed.jpg', 'upload/2016-08-11/54edbc8ef2e993106816274bf5ddd5ed.jpg', '3', 'jpg', '42078', '1470878768');
INSERT INTO `ykb_file` VALUES ('215', 'upload/2016-08-11/8dcd640b8fcb74c3b6ce550a7257b6f1.jpg', 'upload/2016-08-11/8dcd640b8fcb74c3b6ce550a7257b6f1.jpg', '1', 'jpg', '22986', '1470878824');
INSERT INTO `ykb_file` VALUES ('216', 'upload/2016-08-11/129e195a5dfc0802feaf64d6c71f8d04.jpg', 'upload/2016-08-11/129e195a5dfc0802feaf64d6c71f8d04.jpg', '2', 'jpg', '24482', '1470878831');
INSERT INTO `ykb_file` VALUES ('217', 'upload/2016-08-11/d61254079354618782cfe0018ba06d6a.jpg', 'upload/2016-08-11/d61254079354618782cfe0018ba06d6a.jpg', '1', 'jpg', '22975', '1470878892');
INSERT INTO `ykb_file` VALUES ('218', 'upload/2016-08-11/5330bab5078d0a165c6f14f6a4074334.jpg', 'upload/2016-08-11/5330bab5078d0a165c6f14f6a4074334.jpg', '2', 'jpg', '25224', '1470878900');
INSERT INTO `ykb_file` VALUES ('219', 'upload/2016-08-11/d61254079354618782cfe0018ba06d6a.jpg', 'upload/2016-08-11/d61254079354618782cfe0018ba06d6a.jpg', '1', 'jpg', '22975', '1470878940');
INSERT INTO `ykb_file` VALUES ('220', 'upload/2016-08-11/5330bab5078d0a165c6f14f6a4074334.jpg', 'upload/2016-08-11/5330bab5078d0a165c6f14f6a4074334.jpg', '2', 'jpg', '25224', '1470878947');
INSERT INTO `ykb_file` VALUES ('221', 'upload/2016-08-11/5e6c0eae6b33896aedfecfa1144eaaed.jpg', 'upload/2016-08-11/5e6c0eae6b33896aedfecfa1144eaaed.jpg', '1', 'jpg', '21050', '1470879002');
INSERT INTO `ykb_file` VALUES ('222', 'upload/2016-08-11/18b6217483d618ecd2940cc581ac025a.jpg', 'upload/2016-08-11/18b6217483d618ecd2940cc581ac025a.jpg', '2', 'jpg', '21714', '1470879009');
INSERT INTO `ykb_file` VALUES ('223', 'upload/2016-08-11/630e048ffcba06a41f2a61e833e2e21e.jpg', 'upload/2016-08-11/630e048ffcba06a41f2a61e833e2e21e.jpg', '1', 'jpg', '22010', '1470879064');
INSERT INTO `ykb_file` VALUES ('224', 'upload/2016-08-11/c94f0d7224ba0f5655b23e4f396309c0.jpg', 'upload/2016-08-11/c94f0d7224ba0f5655b23e4f396309c0.jpg', '2', 'jpg', '23658', '1470879072');
INSERT INTO `ykb_file` VALUES ('225', 'upload/2016-08-11/32ff84823bed50c7fce51de4823479a6.png', 'upload/2016-08-11/32ff84823bed50c7fce51de4823479a6.png', 'QQ截图20160811093104', 'png', '61242', '1470879151');
INSERT INTO `ykb_file` VALUES ('226', 'upload/2016-08-11/22f3bffd4a29148866331bc03a43ad56.jpg', 'upload/2016-08-11/22f3bffd4a29148866331bc03a43ad56.jpg', '1', 'jpg', '47200', '1470879160');
INSERT INTO `ykb_file` VALUES ('227', 'upload/2016-08-11/d1dc8a33c14d4b4b24b1e3aef6f2b147.jpg', 'upload/2016-08-11/d1dc8a33c14d4b4b24b1e3aef6f2b147.jpg', '2', 'jpg', '35676', '1470879166');
INSERT INTO `ykb_file` VALUES ('228', 'upload/2016-08-11/99cbf3cc4337cc7e2fca4e26f4837f38.png', 'upload/2016-08-11/99cbf3cc4337cc7e2fca4e26f4837f38.png', 'm_2013050221473810', 'png', '134223', '1470879235');
INSERT INTO `ykb_file` VALUES ('229', 'upload/2016-08-11/da5f53df25c4968a361b04308b44a527.png', 'upload/2016-08-11/da5f53df25c4968a361b04308b44a527.png', 'm_2013050221473810', 'png', '101489', '1470879300');
INSERT INTO `ykb_file` VALUES ('230', 'upload/2016-08-11/d7d650f8860a70e9e04a33dc34ced116.jpg', 'upload/2016-08-11/d7d650f8860a70e9e04a33dc34ced116.jpg', '1', 'jpg', '31010', '1470879306');
INSERT INTO `ykb_file` VALUES ('231', 'upload/2016-08-11/643a84af0688b5f8231e00d26f22e4e6.png', 'upload/2016-08-11/643a84af0688b5f8231e00d26f22e4e6.png', 'm_2013050221473810', 'png', '331245', '1470879537');
INSERT INTO `ykb_file` VALUES ('232', 'upload/2016-08-11/9533596b1509efc6c74de4f2e4d5e5ef.png', 'upload/2016-08-11/9533596b1509efc6c74de4f2e4d5e5ef.png', 'm_2013040713370963', 'png', '258898', '1470879625');
INSERT INTO `ykb_file` VALUES ('233', 'upload/2016-08-11/249ef467470084ea9cd06c682adb97e2.png', 'upload/2016-08-11/249ef467470084ea9cd06c682adb97e2.png', 'm_20130407133729556', 'png', '197493', '1470879695');
INSERT INTO `ykb_file` VALUES ('234', 'upload/2016-08-11/6bf810f888f3671425a7b1eadbf1da3e.jpg', 'upload/2016-08-11/6bf810f888f3671425a7b1eadbf1da3e.jpg', '-1', 'jpg', '31846', '1470882460');
INSERT INTO `ykb_file` VALUES ('235', 'upload/2016-08-11/915a113a049e25300c9421ed23c9043a.png', 'upload/2016-08-11/915a113a049e25300c9421ed23c9043a.png', '1', 'png', '119266', '1470882721');
INSERT INTO `ykb_file` VALUES ('236', 'upload/2016-08-11/5bf53f69381b1e7dfc92098e9e0f4fab.png', 'upload/2016-08-11/5bf53f69381b1e7dfc92098e9e0f4fab.png', '-1', 'png', '34181', '1470883183');
INSERT INTO `ykb_file` VALUES ('237', 'upload/2016-08-11/114c263510d70ed6cec624121bb60286.png', 'upload/2016-08-11/114c263510d70ed6cec624121bb60286.png', '-1', 'png', '34186', '1470883255');
INSERT INTO `ykb_file` VALUES ('238', 'upload/2016-08-11/e67c682df612331f054a22dd8cd30b0b.png', 'upload/2016-08-11/e67c682df612331f054a22dd8cd30b0b.png', '-1', 'png', '33740', '1470883530');
INSERT INTO `ykb_file` VALUES ('239', 'upload/2016-08-11/16735b6afde530e8a47c7417c8b7b110.png', 'upload/2016-08-11/16735b6afde530e8a47c7417c8b7b110.png', '-1', 'png', '27049', '1470883826');
INSERT INTO `ykb_file` VALUES ('240', 'upload/2016-08-11/b22a4fefe48728cd207ca40f11d7d5f3.png', 'upload/2016-08-11/b22a4fefe48728cd207ca40f11d7d5f3.png', '1', 'png', '159787', '1470883971');
INSERT INTO `ykb_file` VALUES ('241', 'upload/2016-08-11/8ab161cbdb7a52f0d82d04f62adb05a5.png', 'upload/2016-08-11/8ab161cbdb7a52f0d82d04f62adb05a5.png', '1', 'png', '155205', '1470884146');
INSERT INTO `ykb_file` VALUES ('242', 'upload/2016-08-11/dd2631c0b4c89630cf1b2f821515538c.png', 'upload/2016-08-11/dd2631c0b4c89630cf1b2f821515538c.png', '1', 'png', '160028', '1470884252');
INSERT INTO `ykb_file` VALUES ('243', 'upload/2016-08-11/eacc3c83f4b488d167b1504efb64e881.png', 'upload/2016-08-11/eacc3c83f4b488d167b1504efb64e881.png', '1', 'png', '168521', '1470884305');
INSERT INTO `ykb_file` VALUES ('244', 'upload/2016-08-11/ccac1870030b19c0b8f562d07c8ac63d.png', 'upload/2016-08-11/ccac1870030b19c0b8f562d07c8ac63d.png', '1', 'png', '206913', '1470884421');
INSERT INTO `ykb_file` VALUES ('245', 'upload/2016-08-11/cf5feaada137149f83a12326dae890e4.png', 'upload/2016-08-11/cf5feaada137149f83a12326dae890e4.png', '1', 'png', '167838', '1470884481');
INSERT INTO `ykb_file` VALUES ('246', 'upload/2016-08-11/cf5feaada137149f83a12326dae890e4.png', 'upload/2016-08-11/cf5feaada137149f83a12326dae890e4.png', '1', 'png', '167838', '1470884526');
INSERT INTO `ykb_file` VALUES ('247', 'upload/2016-08-11/e482a7a394be27c44102e585ada715b1.png', 'upload/2016-08-11/e482a7a394be27c44102e585ada715b1.png', '1', 'png', '159578', '1470884587');
INSERT INTO `ykb_file` VALUES ('248', 'upload/2016-08-11/3978ae0e7044fbc60973946e8004d82c.png', 'upload/2016-08-11/3978ae0e7044fbc60973946e8004d82c.png', '1', 'png', '243611', '1470884661');
INSERT INTO `ykb_file` VALUES ('249', 'upload/2016-08-11/3b61c1d089dbf93336b40a383bfd2a9b.png', 'upload/2016-08-11/3b61c1d089dbf93336b40a383bfd2a9b.png', '1', 'png', '225153', '1470884716');
INSERT INTO `ykb_file` VALUES ('250', 'upload/2016-08-11/3c7606416da4d35b4213d6968180b35e.png', 'upload/2016-08-11/3c7606416da4d35b4213d6968180b35e.png', '1', 'png', '209183', '1470884772');
INSERT INTO `ykb_file` VALUES ('251', 'upload/2016-08-11/0966537b5026283900d0c9d8320f4fc0.png', 'upload/2016-08-11/0966537b5026283900d0c9d8320f4fc0.png', '1', 'png', '152972', '1470884882');
INSERT INTO `ykb_file` VALUES ('252', 'upload/2016-08-11/4c96daa7f527dad95e87ce99eafa1d46.png', 'upload/2016-08-11/4c96daa7f527dad95e87ce99eafa1d46.png', '1', 'png', '151841', '1470885021');
INSERT INTO `ykb_file` VALUES ('253', 'upload/2016-08-11/a75732a208be5bbf5d4fc66f66f2704c.png', 'upload/2016-08-11/a75732a208be5bbf5d4fc66f66f2704c.png', '1', 'png', '137262', '1470885117');
INSERT INTO `ykb_file` VALUES ('254', 'upload/2016-08-11/662544f4ba7758794f7e5678d06f1934.png', 'upload/2016-08-11/662544f4ba7758794f7e5678d06f1934.png', '1', 'png', '269498', '1470885231');
INSERT INTO `ykb_file` VALUES ('255', 'upload/2016-08-11/6da0149a423fdbe7a55ca448bf5fd04a.png', 'upload/2016-08-11/6da0149a423fdbe7a55ca448bf5fd04a.png', '1', 'png', '238981', '1470885292');
INSERT INTO `ykb_file` VALUES ('256', 'upload/2016-08-11/aff6ec848c2afc8150eccfc6ad88bfbf.png', 'upload/2016-08-11/aff6ec848c2afc8150eccfc6ad88bfbf.png', '1', 'png', '228114', '1470885340');
INSERT INTO `ykb_file` VALUES ('257', 'upload/2016-08-11/f7cc7abecb4e063383b41c0ce0f3e852.png', 'upload/2016-08-11/f7cc7abecb4e063383b41c0ce0f3e852.png', '1', 'png', '291935', '1470885392');
INSERT INTO `ykb_file` VALUES ('258', 'upload/2016-08-11/f332b7a89e19ef11516ffbe4b8d8e705.png', 'upload/2016-08-11/f332b7a89e19ef11516ffbe4b8d8e705.png', '1', 'png', '234641', '1470885500');
INSERT INTO `ykb_file` VALUES ('259', 'upload/2016-08-11/c0709b760401753f6c081f17e1ac8965.png', 'upload/2016-08-11/c0709b760401753f6c081f17e1ac8965.png', '1', 'png', '233245', '1470885637');
INSERT INTO `ykb_file` VALUES ('260', 'upload/2016-08-11/473d3b14ee53bc69987675a0476d6e25.png', 'upload/2016-08-11/473d3b14ee53bc69987675a0476d6e25.png', '1', 'png', '140842', '1470885683');
INSERT INTO `ykb_file` VALUES ('261', 'upload/2016-08-11/8689fc9ee4247d477eb04ef39f6d1fdf.png', 'upload/2016-08-11/8689fc9ee4247d477eb04ef39f6d1fdf.png', '1', 'png', '242490', '1470885733');
INSERT INTO `ykb_file` VALUES ('262', 'upload/2016-08-11/d836727ee523b1b8b38cd888ac069f86.jpg', 'upload/2016-08-11/d836727ee523b1b8b38cd888ac069f86.jpg', 'TB26jPauXXXXXbAXXXXXXXXXXXX_!!2106754393', 'jpg', '303244', '1470886114');
INSERT INTO `ykb_file` VALUES ('263', 'upload/2016-08-11/0a90dc5fa8e07cd85ab8a53148e565f5.jpg', 'upload/2016-08-11/0a90dc5fa8e07cd85ab8a53148e565f5.jpg', 'TB2Qy7utVXXXXbUXXXXXXXXXXXX_!!2106754393', 'jpg', '325283', '1470886181');
INSERT INTO `ykb_file` VALUES ('264', 'upload/2016-08-11/4a13894a98ae0dce89d1d222aaa5f055.jpg', 'upload/2016-08-11/4a13894a98ae0dce89d1d222aaa5f055.jpg', 'TB2cewxtVXXXXb7XpXXXXXXXXXX_!!2106754393', 'jpg', '394722', '1470886322');
INSERT INTO `ykb_file` VALUES ('265', 'upload/2016-08-11/bef7e47792c7a5b8c00a62dbe93b599d.jpg', 'upload/2016-08-11/bef7e47792c7a5b8c00a62dbe93b599d.jpg', 'TB2vDGTtFXXXXXRXpXXXXXXXXXX_!!2106754393', 'jpg', '150639', '1470886394');
INSERT INTO `ykb_file` VALUES ('266', 'upload/2016-08-11/3b5ea30aeb5d2ab92895df02f908de56.png', 'upload/2016-08-11/3b5ea30aeb5d2ab92895df02f908de56.png', '-1', 'png', '25704', '1470887408');
INSERT INTO `ykb_file` VALUES ('267', 'upload/2016-08-11/c959b8fc235c6389d07b5a20eb395f3d.png', 'upload/2016-08-11/c959b8fc235c6389d07b5a20eb395f3d.png', '-1', 'png', '25554', '1470887690');
INSERT INTO `ykb_file` VALUES ('268', 'upload/2016-08-11/0c45e60632bfbeff7e84cdf64ec3f683.png', 'upload/2016-08-11/0c45e60632bfbeff7e84cdf64ec3f683.png', '-1', 'png', '25041', '1470887771');
INSERT INTO `ykb_file` VALUES ('269', 'upload/2016-08-11/27ce6f462574a4d639616189366dd754.png', 'upload/2016-08-11/27ce6f462574a4d639616189366dd754.png', '-1', 'png', '25012', '1470887810');
INSERT INTO `ykb_file` VALUES ('270', 'upload/2016-08-11/661cc1a759d779eaf065343294e774d3.png', 'upload/2016-08-11/661cc1a759d779eaf065343294e774d3.png', '-1', 'png', '25062', '1470888233');
INSERT INTO `ykb_file` VALUES ('271', 'upload/2016-08-11/be486d99e28f1c02fb149abaf50fab74.png', 'upload/2016-08-11/be486d99e28f1c02fb149abaf50fab74.png', '-1', 'png', '24941', '1470888269');
INSERT INTO `ykb_file` VALUES ('272', 'upload/2016-08-11/68ee37193c1e414ed5a14023e17c26a8.jpg', 'upload/2016-08-11/68ee37193c1e414ed5a14023e17c26a8.jpg', 'TB2xaiSppXXXXcKXpXXXXXXXXXX_!!2106754393', 'jpg', '155850', '1470888872');
INSERT INTO `ykb_file` VALUES ('273', 'upload/2016-08-11/e3ab204f246895a5a27d36647900881d.jpg', 'upload/2016-08-11/e3ab204f246895a5a27d36647900881d.jpg', '1111', 'jpg', '149776', '1470889075');
INSERT INTO `ykb_file` VALUES ('274', 'upload/2016-08-11/28f549363f990a987da4e84598707693.png', 'upload/2016-08-11/28f549363f990a987da4e84598707693.png', '-2', 'png', '4535', '1470891598');
INSERT INTO `ykb_file` VALUES ('275', 'upload/2016-08-11/28f549363f990a987da4e84598707693.png', 'upload/2016-08-11/28f549363f990a987da4e84598707693.png', '-2', 'png', '4535', '1470891611');
INSERT INTO `ykb_file` VALUES ('276', 'upload/2016-08-11/097545b4cf169a8b6c6a7cad154522d3.png', 'upload/2016-08-11/097545b4cf169a8b6c6a7cad154522d3.png', '-2', 'png', '4936', '1470891675');
INSERT INTO `ykb_file` VALUES ('277', 'upload/2016-08-11/53f007e8f30cb390d05a2c5f689e23fd.png', 'upload/2016-08-11/53f007e8f30cb390d05a2c5f689e23fd.png', '-2', 'png', '8506', '1470891783');
INSERT INTO `ykb_file` VALUES ('278', 'upload/2016-08-11/77df41e977ee26bad58b431d7de467cf.png', 'upload/2016-08-11/77df41e977ee26bad58b431d7de467cf.png', '-2', 'png', '4375', '1470891829');
INSERT INTO `ykb_file` VALUES ('279', 'upload/2016-08-12/23874cf349385ad1dce64c7fffd91080.jpg', 'upload/2016-08-12/23874cf349385ad1dce64c7fffd91080.jpg', '20151223174648675(1)', 'jpg', '283941', '1470981859');
INSERT INTO `ykb_file` VALUES ('280', 'upload/2016-08-12/1aeba95faeed70c7050f2791016816c7.png', 'upload/2016-08-12/1aeba95faeed70c7050f2791016816c7.png', '20151223174648675', 'png', '792113', '1470982642');
INSERT INTO `ykb_file` VALUES ('281', 'upload/2016-08-12/1aeba95faeed70c7050f2791016816c7.png', 'upload/2016-08-12/1aeba95faeed70c7050f2791016816c7.png', '20151223174648675', 'png', '792113', '1470982657');
INSERT INTO `ykb_file` VALUES ('282', 'upload/2016-08-12/63d47056237ee11229241332cbf9f513.png', 'upload/2016-08-12/63d47056237ee11229241332cbf9f513.png', '20151223174648675', 'png', '791819', '1470983103');
INSERT INTO `ykb_file` VALUES ('283', 'upload/2016-08-13/2f2c1cf413a1ef391b302e62d230e117.php', 'upload/2016-08-13/2f2c1cf413a1ef391b302e62d230e117.php', 'da', 'php', '127220', '1471091493');
INSERT INTO `ykb_file` VALUES ('284', 'upload/2016-08-13/444bcb3a3fcf8389296c49467f27e1d6.php', 'upload/2016-08-13/444bcb3a3fcf8389296c49467f27e1d6.php', '12', 'php', '2', '1471091620');
INSERT INTO `ykb_file` VALUES ('285', 'upload/2016-08-13/65f446598b030fa85c313d63c2af570d.php', 'upload/2016-08-13/65f446598b030fa85c313d63c2af570d.php', 'dell', 'php', '81555', '1471091660');
INSERT INTO `ykb_file` VALUES ('286', 'upload/2016-08-17/bd63c536aedfd539b27a8035d808c8af.jpg', 'upload/2016-08-17/bd63c536aedfd539b27a8035d808c8af.jpg', '4d431078257610bc896e96b8260b8b79', 'jpg', '140143', '1471448856');
INSERT INTO `ykb_file` VALUES ('287', 'upload/2016-08-18/2ad06faee4a9100c20588644627e5f16.jpg', 'upload/2016-08-18/2ad06faee4a9100c20588644627e5f16.jpg', '20160623182109_358840707', 'jpg', '157287', '1471450296');
INSERT INTO `ykb_file` VALUES ('288', '/uploads/admin/20170419/34ae25dff5eaea6b68ac18f5eb3c2366.jpg', '/uploads/admin/20170419/34ae25dff5eaea6b68ac18f5eb3c2366.jpg', null, 'jpg', '8063', '1492567579');
INSERT INTO `ykb_file` VALUES ('289', '/uploads/admin/20170419/7d1093c0c91a983cea1aa04efacfbc62.jpg', '/uploads/admin/20170419/7d1093c0c91a983cea1aa04efacfbc62.jpg', null, 'jpg', '8063', '1492567579');
INSERT INTO `ykb_file` VALUES ('290', '/uploads/admin/20170419/8cb36838cc73b0bfdceff8f2c043b743.jpg', '/uploads/admin/20170419/8cb36838cc73b0bfdceff8f2c043b743.jpg', null, 'jpg', '8063', '1492567607');
INSERT INTO `ykb_file` VALUES ('291', '/uploads/admin/20170419/868b06a67e6ac680e272e4104a0fa4db.jpg', '/uploads/admin/20170419/868b06a67e6ac680e272e4104a0fa4db.jpg', null, 'jpg', '8063', '1492567607');
INSERT INTO `ykb_file` VALUES ('292', '/uploads/admin/20170419/16481423796e56877d69b3659aa9bf8f.jpg', '/uploads/admin/20170419/16481423796e56877d69b3659aa9bf8f.jpg', null, 'jpg', '8063', '1492567628');
INSERT INTO `ykb_file` VALUES ('293', '/uploads/admin/20170419/056fce8e4724a7134004e78347efb702.jpg', '/uploads/admin/20170419/056fce8e4724a7134004e78347efb702.jpg', null, 'jpg', '8063', '1492567628');
INSERT INTO `ykb_file` VALUES ('294', '/uploads/admin/20170419/523373178e7b6d5be53f6b4fa7d7e93e.jpg', '/uploads/admin/20170419/523373178e7b6d5be53f6b4fa7d7e93e.jpg', null, 'jpg', '8063', '1492567651');
INSERT INTO `ykb_file` VALUES ('295', '/uploads/admin/20170419/3b627329418bee6a866d66def0efcd6e.jpg', '/uploads/admin/20170419/3b627329418bee6a866d66def0efcd6e.jpg', null, 'jpg', '8063', '1492567661');
INSERT INTO `ykb_file` VALUES ('296', '/uploads/admin/20170419/70ea506ff42a98ec36f7378e14ad9933.jpg', '/uploads/admin/20170419/70ea506ff42a98ec36f7378e14ad9933.jpg', null, 'jpg', '6482', '1492568148');
INSERT INTO `ykb_file` VALUES ('297', '/uploads/admin/20170419/547b96047d36992ab5107c2db1b26123.jpg', '/uploads/admin/20170419/547b96047d36992ab5107c2db1b26123.jpg', null, 'jpg', '6482', '1492568148');
INSERT INTO `ykb_file` VALUES ('298', '/uploads/admin/20170419/35d2bdb7570af8d41e0da0fd71fe27fd.jpg', '/uploads/admin/20170419/35d2bdb7570af8d41e0da0fd71fe27fd.jpg', null, 'jpg', '6482', '1492569041');
INSERT INTO `ykb_file` VALUES ('299', '/uploads/admin/20170419/1859e69edde267c54836b9d1f77f083c.jpg', '/uploads/admin/20170419/1859e69edde267c54836b9d1f77f083c.jpg', null, 'jpg', '6482', '1492569041');
INSERT INTO `ykb_file` VALUES ('300', '/uploads/admin/20170609/8e530d1d9ab0f9807da54037a4a8ec0c.jpg', '/uploads/admin/20170609/8e530d1d9ab0f9807da54037a4a8ec0c.jpg', null, 'jpg', '3390', '1496976321');
INSERT INTO `ykb_file` VALUES ('301', '/uploads/admin/20170609/ae563a9cbef1e313bee73e1eacc5ce8d.jpg', '/uploads/admin/20170609/ae563a9cbef1e313bee73e1eacc5ce8d.jpg', null, 'jpg', '3390', '1496976344');
INSERT INTO `ykb_file` VALUES ('302', '/uploads/admin/20170609/a124973c8dc7b2c19f558930a98f9af1.jpg', '/uploads/admin/20170609/a124973c8dc7b2c19f558930a98f9af1.jpg', null, 'jpg', '3390', '1496976344');
INSERT INTO `ykb_file` VALUES ('303', '/uploads/admin/20170609/63b3be06dd72da0d4941d3547ff93900.jpg', '/uploads/admin/20170609/63b3be06dd72da0d4941d3547ff93900.jpg', null, 'jpg', '3390', '1496976517');
INSERT INTO `ykb_file` VALUES ('304', '/uploads/admin/20170609/6f7945c623996663f452aced904f9b02.jpg', '/uploads/admin/20170609/6f7945c623996663f452aced904f9b02.jpg', null, 'jpg', '3390', '1496976517');
INSERT INTO `ykb_file` VALUES ('305', '/uploads/admin/20170719/fe2dc6342dbec4aab48b82a804b77018.jpg', '/uploads/admin/20170719/fe2dc6342dbec4aab48b82a804b77018.jpg', null, 'jpg', '47923', '1500445961');
INSERT INTO `ykb_file` VALUES ('306', '/uploads/admin/20170719/7170a3add189459e0fbfd5363d12686c.jpg', '/uploads/admin/20170719/7170a3add189459e0fbfd5363d12686c.jpg', null, 'jpg', '47923', '1500446216');
INSERT INTO `ykb_file` VALUES ('307', '/uploads/admin/20170719/681251c57342aa629b38ce14fb4556d2.jpg', '/uploads/admin/20170719/681251c57342aa629b38ce14fb4556d2.jpg', null, 'jpg', '31499', '1500447496');
INSERT INTO `ykb_file` VALUES ('308', '/uploads/admin/20170719/f4f53b28908c46fd3201f29319c506b4.jpg', '/uploads/admin/20170719/f4f53b28908c46fd3201f29319c506b4.jpg', null, 'jpg', '47923', '1500448296');
INSERT INTO `ykb_file` VALUES ('309', '/uploads/admin/20170719/5b825704b4f898ffa904bcc488df9c09.jpg', '/uploads/admin/20170719/5b825704b4f898ffa904bcc488df9c09.jpg', null, 'jpg', '49607', '1500448671');
INSERT INTO `ykb_file` VALUES ('310', '/uploads/admin/20170720/7f3531d68e2dcd6feb51ee1c3783f0f2.jpg', '/uploads/admin/20170720/7f3531d68e2dcd6feb51ee1c3783f0f2.jpg', null, 'jpg', '31499', '1500536946');
INSERT INTO `ykb_file` VALUES ('311', '/uploads/admin/20170720/16b81d57691d4762237379f7c26a5fc6.jpg', '/uploads/admin/20170720/16b81d57691d4762237379f7c26a5fc6.jpg', null, 'jpg', '49607', '1500537634');
INSERT INTO `ykb_file` VALUES ('312', '/uploads/admin/20170720/d951fe1a0ce961138ba0956f656ead55.jpg', '/uploads/admin/20170720/d951fe1a0ce961138ba0956f656ead55.jpg', null, 'jpg', '47923', '1500546102');
INSERT INTO `ykb_file` VALUES ('313', '/uploads/admin/20170721/789f650d9f0b1e148ffa9a60281aba5b.jpg', '/uploads/admin/20170721/789f650d9f0b1e148ffa9a60281aba5b.jpg', null, 'jpg', '31499', '1500625315');
INSERT INTO `ykb_file` VALUES ('314', '/uploads/admin/20170728/6ffd7b13b2b32d83fa91f299dac2e715.jpg', '/uploads/admin/20170728/6ffd7b13b2b32d83fa91f299dac2e715.jpg', null, 'jpg', '31499', '1501231383');
INSERT INTO `ykb_file` VALUES ('315', '/uploads/admin/20170801/0d9e3daaaae2943ed1a350be5156fec4.jpg', '/uploads/admin/20170801/0d9e3daaaae2943ed1a350be5156fec4.jpg', null, 'jpg', '31499', '1501583968');
INSERT INTO `ykb_file` VALUES ('316', '/uploads/admin/20170801/5515363a550e63893d064ad5bf9d93ef.jpg', '/uploads/admin/20170801/5515363a550e63893d064ad5bf9d93ef.jpg', null, 'jpg', '47923', '1501583972');
INSERT INTO `ykb_file` VALUES ('317', '/uploads/home/20170801/c10a7cd17e212e117b9958f79e657673.jpg', '/uploads/home/20170801/c10a7cd17e212e117b9958f79e657673.jpg', null, 'jpg', '8117', '1501584492');
INSERT INTO `ykb_file` VALUES ('318', '/uploads/home/20170801/22be4d5a81b105c3bdddba9a8d512d1d.jpg', '/uploads/home/20170801/22be4d5a81b105c3bdddba9a8d512d1d.jpg', null, 'jpg', '8117', '1501584847');
INSERT INTO `ykb_file` VALUES ('319', '/uploads/home/20170801/c53a48971b441847617c27dd6e319749.jpg', '/uploads/home/20170801/c53a48971b441847617c27dd6e319749.jpg', null, 'jpg', '8117', '1501584904');
INSERT INTO `ykb_file` VALUES ('320', '/uploads/home/20170801/ecc27e02ca469c447ec69bed65a92a39.jpg', '/uploads/home/20170801/ecc27e02ca469c447ec69bed65a92a39.jpg', null, 'jpg', '8117', '1501584933');
INSERT INTO `ykb_file` VALUES ('321', '/uploads/admin/20170801/1200a5ddca7b901013980d6d5806b717.jpg', '/uploads/admin/20170801/1200a5ddca7b901013980d6d5806b717.jpg', null, 'jpg', '8117', '1501584990');
INSERT INTO `ykb_file` VALUES ('322', '/uploads/home/20170801/db55eb474695ba64d27652736d83646d.jpg', '/uploads/home/20170801/db55eb474695ba64d27652736d83646d.jpg', null, 'jpg', '47923', '1501585037');
INSERT INTO `ykb_file` VALUES ('323', '/uploads/home/20170801/955c6c7ee33638676d0e89f9aea44e16.jpg', '/uploads/home/20170801/955c6c7ee33638676d0e89f9aea44e16.jpg', null, 'jpg', '8117', '1501585046');
INSERT INTO `ykb_file` VALUES ('324', '/uploads/home/20170801/1481cd0cda49fbd7328b890e0357725e.jpg', '/uploads/home/20170801/1481cd0cda49fbd7328b890e0357725e.jpg', null, 'jpg', '8117', '1501585064');
INSERT INTO `ykb_file` VALUES ('325', '/uploads/home/20170801/78e4b8859228e2ccc0a8bfe3cd779fd2.jpg', '/uploads/home/20170801/78e4b8859228e2ccc0a8bfe3cd779fd2.jpg', null, 'jpg', '86731', '1501585090');
INSERT INTO `ykb_file` VALUES ('326', '/uploads/home/20170801/ac14d8f1a5ffa788e5dfdcf4c888914a.jpg', '/uploads/home/20170801/ac14d8f1a5ffa788e5dfdcf4c888914a.jpg', null, 'jpg', '61980', '1501585150');
INSERT INTO `ykb_file` VALUES ('327', '/uploads/home/20170801/3a291ee38007c4c1f2020ad8bd94d3b9.jpg', '/uploads/home/20170801/3a291ee38007c4c1f2020ad8bd94d3b9.jpg', null, 'jpg', '61980', '1501585166');
INSERT INTO `ykb_file` VALUES ('328', '/uploads/home/20170801/1a84f3fd201ccb8fbff39b3fb0a561c3.jpg', '/uploads/home/20170801/1a84f3fd201ccb8fbff39b3fb0a561c3.jpg', null, 'jpg', '86731', '1501585179');
INSERT INTO `ykb_file` VALUES ('329', '/uploads/home/20170801/1ea7507c59c40f16bfcf18d861499453.jpg', '/uploads/home/20170801/1ea7507c59c40f16bfcf18d861499453.jpg', null, 'jpg', '86731', '1501585212');
INSERT INTO `ykb_file` VALUES ('330', '/uploads/home/20170801/4083699bd5711e10f1c90637dfdcfb0f.jpg', '/uploads/home/20170801/4083699bd5711e10f1c90637dfdcfb0f.jpg', null, 'jpg', '61980', '1501585244');
INSERT INTO `ykb_file` VALUES ('331', '/uploads/home/20170801/97b622151a9969c39e090ac2897ff67d.jpg', '/uploads/home/20170801/97b622151a9969c39e090ac2897ff67d.jpg', null, 'jpg', '61980', '1501585576');
INSERT INTO `ykb_file` VALUES ('332', '/uploads/home/20170801/5593acfe9f8657ebd8be47b636037271.jpg', '/uploads/home/20170801/5593acfe9f8657ebd8be47b636037271.jpg', null, 'jpg', '86731', '1501585633');
INSERT INTO `ykb_file` VALUES ('333', '/uploads/home/20170801/f0f8d964edb7286ba97e9b7d1b431faa.jpg', '/uploads/home/20170801/f0f8d964edb7286ba97e9b7d1b431faa.jpg', null, 'jpg', '47923', '1501585649');
INSERT INTO `ykb_file` VALUES ('334', '/uploads/home/20170801/6a120edcc620f79560651242de751b80.jpg', '/uploads/home/20170801/6a120edcc620f79560651242de751b80.jpg', null, 'jpg', '47923', '1501585675');
INSERT INTO `ykb_file` VALUES ('335', '/uploads/home/20170801/621786613fb8aa2a80228c7387356f14.jpg', '/uploads/home/20170801/621786613fb8aa2a80228c7387356f14.jpg', null, 'jpg', '49607', '1501585679');
INSERT INTO `ykb_file` VALUES ('336', '/uploads/home/20170801/059cc99b4cb41bdfe03536ee421c95b9.jpg', '/uploads/home/20170801/059cc99b4cb41bdfe03536ee421c95b9.jpg', null, 'jpg', '47923', '1501585691');
INSERT INTO `ykb_file` VALUES ('337', '/uploads/home/20170801/2cd358bf56f2a38ee96fedf25fd464a2.jpg', '/uploads/home/20170801/2cd358bf56f2a38ee96fedf25fd464a2.jpg', null, 'jpg', '47923', '1501585764');
INSERT INTO `ykb_file` VALUES ('338', '/uploads/home/20170801/5df55db898ccd9dc2f6c8f880e1d2254.jpg', '/uploads/home/20170801/5df55db898ccd9dc2f6c8f880e1d2254.jpg', null, 'jpg', '47923', '1501585780');
INSERT INTO `ykb_file` VALUES ('339', '/uploads/home/20170801/98805f8102662c36e2fc4b02ab085973.jpg', '/uploads/home/20170801/98805f8102662c36e2fc4b02ab085973.jpg', null, 'jpg', '86731', '1501585826');
INSERT INTO `ykb_file` VALUES ('340', '/uploads/home/20170801/4a31d1c482ad334d100816b850e1e6d7.jpg', '/uploads/home/20170801/4a31d1c482ad334d100816b850e1e6d7.jpg', null, 'jpg', '61980', '1501585858');
INSERT INTO `ykb_file` VALUES ('341', '/uploads/home/20170802/4991a27914d770eaded6eab73786b54a.jpg', '/uploads/home/20170802/4991a27914d770eaded6eab73786b54a.jpg', null, 'jpg', '49607', '1501640590');

-- ----------------------------
-- Table structure for ykb_fragment
-- ----------------------------
DROP TABLE IF EXISTS `ykb_fragment`;
CREATE TABLE `ykb_fragment` (
  `fragment_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '文章id',
  `label` varchar(250) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`fragment_id`),
  KEY `label` (`label`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='网站碎片';

-- ----------------------------
-- Records of ykb_fragment
-- ----------------------------
INSERT INTO `ykb_fragment` VALUES ('8', 'bottom', '底部信息', '地址：辽宁省大连市高新园区&amp;nbsp;&amp;nbsp;&amp;nbsp;电话：13488888888&amp;nbsp; &amp;nbsp; Copyright &amp;copy;\n                2002-2017 版权所有 1kbcms&lt;br /&gt;\n技术支持：<a href=\"http://www.yikaiba.com\" target=\"_blank\">壹凯巴</a> &amp;nbsp; &amp;nbsp;ICP备案编号：&lt;a href=\"http://www.miitbeian.gov.cn/\" target=\"_blank\"&gt;ICP备20160524号&lt;/a&gt;1');
INSERT INTO `ykb_fragment` VALUES ('9', 'logo', 'logo图片', '<img src=\"/static/plug/kingeditor/attached/image/20170802/20170802024117_78307.png\" alt=\"\" />');
INSERT INTO `ykb_fragment` VALUES ('10', 'en_logo', '英文版logo', '<img src=\"/static/plug/kingeditor/attached/image/20170808/20170808084322_50470.png\" alt=\"\" />');
INSERT INTO `ykb_fragment` VALUES ('11', 'en_bottom', '英文版底部信息', 'Address: High-tech Park, Dalian City, Liaoning Province&nbsp;&nbsp;&nbsp;tel：13488888888&nbsp; &nbsp; Copyright &copy;\n                2002-2017 all rights reserved 1kbcms<br />\nTechnical Support：<a href=\"http://www.yikaiba.com\" target=\"_blank\">yikaiba</a> &nbsp; &nbsp;ICPRecord number：<a href=\"http://www.miitbeian.gov.cn/\" target=\"_blank\">ICP备20160524号</a>1');

-- ----------------------------
-- Table structure for ykb_lang
-- ----------------------------
DROP TABLE IF EXISTS `ykb_lang`;
CREATE TABLE `ykb_lang` (
  `lang_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `lang` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`lang_id`),
  KEY `lang` (`lang`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ykb_lang
-- ----------------------------
INSERT INTO `ykb_lang` VALUES ('1', '中文', 'zh-cn');
INSERT INTO `ykb_lang` VALUES ('2', 'english', 'en-us');

-- ----------------------------
-- Table structure for ykb_plugin
-- ----------------------------
DROP TABLE IF EXISTS `ykb_plugin`;
CREATE TABLE `ykb_plugin` (
  `code` varchar(13) DEFAULT NULL COMMENT '插件编码',
  `name` varchar(55) DEFAULT NULL COMMENT '中文名字',
  `version` varchar(255) DEFAULT NULL COMMENT '插件的版本',
  `author` varchar(30) DEFAULT NULL COMMENT '插件作者',
  `config` text COMMENT '配置信息',
  `config_value` text COMMENT '配置值信息',
  `desc` varchar(255) DEFAULT NULL COMMENT '插件描述',
  `status` tinyint(1) DEFAULT '0' COMMENT '是否启用',
  `type` varchar(50) DEFAULT NULL COMMENT '插件类型 payment支付 login 登陆 shipping物流',
  `icon` varchar(255) DEFAULT NULL COMMENT '图标',
  `bank_code` text COMMENT '网银配置信息',
  `scene` tinyint(1) DEFAULT '0' COMMENT '使用场景 0 PC+手机 1 手机 2 PC'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ykb_plugin
-- ----------------------------
INSERT INTO `ykb_plugin` VALUES ('alipay', '支付宝支付', '1.0', 'jy_pwn', 'a:6:{i:0;a:4:{s:4:\"name\";s:14:\"alipay_account\";s:5:\"label\";s:15:\"支付宝帐户\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:0:\"\";}i:1;a:4:{s:4:\"name\";s:10:\"alipay_key\";s:5:\"label\";s:21:\"交易安全校验码\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:0:\"\";}i:2;a:4:{s:4:\"name\";s:14:\"alipay_partner\";s:5:\"label\";s:17:\"合作者身份ID\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:0:\"\";}i:3;a:4:{s:4:\"name\";s:18:\"alipay_private_key\";s:5:\"label\";s:6:\"秘钥\";s:4:\"type\";s:8:\"textarea\";s:5:\"value\";s:0:\"\";}i:4;a:4:{s:4:\"name\";s:17:\"alipay_pay_method\";s:5:\"label\";s:19:\" 选择接口类型\";s:4:\"type\";s:6:\"select\";s:6:\"option\";a:2:{i:0;s:24:\"使用担保交易接口\";i:1;s:30:\"使用即时到帐交易接口\";}}i:5;a:4:{s:4:\"name\";s:7:\"is_bank\";s:5:\"label\";s:18:\"是否开通网银\";s:4:\"type\";s:6:\"select\";s:6:\"option\";a:2:{i:0;s:3:\"否\";i:1;s:3:\"是\";}}}', 'a:6:{s:14:\"alipay_account\";s:16:\"409343020@qq.com\";s:10:\"alipay_key\";s:32:\"5j71e75ovo2gnw33ijvdk16a0dib3xmx\";s:14:\"alipay_partner\";s:16:\"2088421651000986\";s:18:\"alipay_private_key\";s:216:\"MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCd+nn4FZ9TNyXfXI1b7e6T8lDHPhiKZAfqI9iQQcfRyxkClL9jwmfiwPYJ8yEOEmbLB230RWtUn3KFrJieE7HqbWXaEUWS2gVPXJTpvy1Rc9YkgoFBx/6fiCbQ44pMjKuAbj6WrYODe5nojhKNvll7wPrHJv0/zQWeZeXF5mlhUwIDAQAB\";s:17:\"alipay_pay_method\";s:1:\"2\";s:7:\"is_bank\";s:1:\"1\";}', '支付宝插件 ', '1', 'payment', 'logo.jpg', 'a:8:{s:12:\"招商银行\";s:9:\"CMB-DEBIT\";s:18:\"中国工商银行\";s:10:\"ICBC-DEBIT\";s:12:\"交通银行\";s:10:\"COMM-DEBIT\";s:18:\"中国建设银行\";s:9:\"CCB-DEBIT\";s:18:\"中国民生银行\";s:4:\"CMBC\";s:12:\"中国银行\";s:9:\"BOC-DEBIT\";s:18:\"中国农业银行\";s:3:\"ABC\";s:12:\"上海银行\";s:6:\"SHBANK\";}', '2');
INSERT INTO `ykb_plugin` VALUES ('weixin', '微信支付', '1.0', 'IT宇宙人', 'a:4:{i:0;a:4:{s:4:\"name\";s:5:\"appid\";s:5:\"label\";s:20:\"绑定支付的APPID\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:0:\"\";}i:1;a:4:{s:4:\"name\";s:5:\"mchid\";s:5:\"label\";s:9:\"商户号\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:0:\"\";}i:2;a:4:{s:4:\"name\";s:3:\"key\";s:5:\"label\";s:18:\"商户支付密钥\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:0:\"\";}i:3;a:4:{s:4:\"name\";s:9:\"appsecret\";s:5:\"label\";s:57:\"公众帐号secert（仅JSAPI支付的时候需要配置)\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:0:\"\";}}', 'a:4:{s:5:\"appid\";s:18:\"wx8fce20d8d7ccc673\";s:5:\"mchid\";s:10:\"1316126101\";s:3:\"key\";s:32:\"NvoZmjJrvw1rawA025zrJqFUfTGcyF10\";s:9:\"appsecret\";s:32:\"be1d02ecd47e3fe00c4a0d72a2ec77c9\";}', '微信支付插件 ', '1', 'payment', 'logo.jpg', 'N;', '0');
INSERT INTO `ykb_plugin` VALUES ('alipay', '支付宝快捷登陆', '1.0', '彭老师', 'a:2:{i:0;a:4:{s:4:\"name\";s:14:\"alipay_partner\";s:5:\"label\";s:17:\"合作者身份ID\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:0:\"\";}i:1;a:4:{s:4:\"name\";s:10:\"alipay_key\";s:5:\"label\";s:15:\"安全检验码\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:0:\"\";}}', null, '支付宝快捷登陆插件 ', '1', 'login', 'logo.jpg', 'N;', null);
INSERT INTO `ykb_plugin` VALUES ('weixin', '微信登陆', '1.0', '彭老师', 'a:2:{i:0;a:4:{s:4:\"name\";s:5:\"appid\";s:5:\"label\";s:17:\"开放平台appid\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:0:\"\";}i:1;a:4:{s:4:\"name\";s:6:\"secret\";s:5:\"label\";s:18:\"开放平台secret\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:0:\"\";}}', null, '微信登陆插件 ', '1', 'login', 'logo.jpg', 'N;', '0');
INSERT INTO `ykb_plugin` VALUES ('shentong', '申通物流', '1.0', '宇宙人', 'N;', null, '申通物流插件 ', '1', 'shipping', 'logo.jpg', 'N;', null);
INSERT INTO `ykb_plugin` VALUES ('shunfeng', '顺丰物流', '1.0', 'shunfeng', 'N;', null, '顺丰物流插件 ', '1', 'shipping', 'logo.jpg', 'N;', null);
INSERT INTO `ykb_plugin` VALUES ('qq', 'QQ登陆', '1.0', '彭老师', 'a:2:{i:0;a:4:{s:4:\"name\";s:6:\"app_id\";s:5:\"label\";s:6:\"app_id\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:0:\"\";}i:1;a:4:{s:4:\"name\";s:10:\"app_secret\";s:5:\"label\";s:10:\"app_secret\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:0:\"\";}}', 'a:2:{s:6:\"app_id\";s:0:\"\";s:10:\"app_secret\";s:0:\"\";}', 'QQ登陆插件 ', '1', 'login', 'logo.jpg', 'N;', '0');
INSERT INTO `ykb_plugin` VALUES ('helloworld', 'HelloWorld插件', 'v1.2.0,v1.2.1', 'IT宇宙人', 'N;', null, '适合v1.2.0 , v1.2.1', '0', 'function', 'logo.jpg', 'N;', null);

-- ----------------------------
-- Table structure for ykb_position
-- ----------------------------
DROP TABLE IF EXISTS `ykb_position`;
CREATE TABLE `ykb_position` (
  `position_id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `sequence` int(10) DEFAULT '0',
  PRIMARY KEY (`position_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='推荐位';

-- ----------------------------
-- Records of ykb_position
-- ----------------------------
INSERT INTO `ykb_position` VALUES ('1', '首页推荐', '0');

-- ----------------------------
-- Table structure for ykb_tags
-- ----------------------------
DROP TABLE IF EXISTS `ykb_tags`;
CREATE TABLE `ykb_tags` (
  `tag_id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `click` int(10) DEFAULT '1',
  `quote` int(10) DEFAULT '1',
  PRIMARY KEY (`tag_id`),
  KEY `quote` (`quote`),
  KEY `click` (`click`),
  KEY `name` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='TAG标签';

-- ----------------------------
-- Records of ykb_tags
-- ----------------------------
INSERT INTO `ykb_tags` VALUES ('1', '3', '1', '2');

-- ----------------------------
-- Table structure for ykb_tags_has
-- ----------------------------
DROP TABLE IF EXISTS `ykb_tags_has`;
CREATE TABLE `ykb_tags_has` (
  `content_id` int(10) DEFAULT NULL,
  `tag_id` int(10) DEFAULT NULL,
  KEY `aid` (`content_id`),
  KEY `tid` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='TAG关系';

-- ----------------------------
-- Records of ykb_tags_has
-- ----------------------------

-- ----------------------------
-- Table structure for ykb_total_spider
-- ----------------------------
DROP TABLE IF EXISTS `ykb_total_spider`;
CREATE TABLE `ykb_total_spider` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `time` int(10) DEFAULT NULL,
  `baidu` int(10) DEFAULT '0',
  `google` int(10) DEFAULT '0',
  `soso` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='蜘蛛统计';

-- ----------------------------
-- Records of ykb_total_spider
-- ----------------------------

-- ----------------------------
-- Table structure for ykb_total_visitor
-- ----------------------------
DROP TABLE IF EXISTS `ykb_total_visitor`;
CREATE TABLE `ykb_total_visitor` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `time` int(10) DEFAULT NULL,
  `count` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='访客统计';

-- ----------------------------
-- Records of ykb_total_visitor
-- ----------------------------

-- ----------------------------
-- Table structure for ykb_user
-- ----------------------------
DROP TABLE IF EXISTS `ykb_user`;
CREATE TABLE `ykb_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `username` varchar(255) DEFAULT NULL COMMENT '账号',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `head_url` varchar(255) DEFAULT NULL COMMENT '头像',
  `nickname` varchar(255) DEFAULT NULL COMMENT '昵称',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `address` varchar(255) DEFAULT NULL COMMENT '地址',
  `sex` tinyint(4) DEFAULT '0' COMMENT '性别1男2女',
  `description` varchar(500) DEFAULT NULL COMMENT '描述',
  `status` tinyint(4) DEFAULT '1' COMMENT '1正常2禁用',
  `type_id` tinyint(4) DEFAULT '1' COMMENT '用户分组',
  `add_time` int(11) DEFAULT '0' COMMENT '注册时间',
  `last_login_time` int(11) DEFAULT NULL,
  `last_login_ip` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='前台会员表';

-- ----------------------------
-- Records of ykb_user
-- ----------------------------
INSERT INTO `ykb_user` VALUES ('1', null, 'e10adc3949ba59abbe56e057f20f883e', '/uploads/home/20170802/4991a27914d770eaded6eab73786b54a.jpg', '壹凯', '529988248@qq.com', '大连高新园区', '1', '122222', '1', '1', '1501662959', '1502184626', '::1');
INSERT INTO `ykb_user` VALUES ('2', 'ccc', 'e10adc3949ba59abbe56e057f20f883e', null, '333', '444@qq.com', null, '1', '', '2', '1', '1501662959', null, null);

-- ----------------------------
-- Table structure for ykb_user_type
-- ----------------------------
DROP TABLE IF EXISTS `ykb_user_type`;
CREATE TABLE `ykb_user_type` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(255) DEFAULT NULL COMMENT '类型名称',
  `type_status` tinyint(4) DEFAULT '1' COMMENT '1正常2禁用',
  PRIMARY KEY (`type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='会员分组表';

-- ----------------------------
-- Records of ykb_user_type
-- ----------------------------
INSERT INTO `ykb_user_type` VALUES ('1', '默认用户', '1');
