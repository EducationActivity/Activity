/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50723
Source Host           : localhost:3306
Source Database       : db_activity

Target Server Type    : MYSQL
Target Server Version : 50723
File Encoding         : 65001

Date: 2019-02-11 18:02:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_activity
-- ----------------------------
DROP TABLE IF EXISTS `t_activity`;
CREATE TABLE `t_activity` (
  `activity_id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_name` varchar(100) DEFAULT NULL,
  `theme_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`activity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_activity
-- ----------------------------
INSERT INTO `t_activity` VALUES ('4', '防守打法鬼打鬼', '2');
INSERT INTO `t_activity` VALUES ('5', '防守打法鬼打鬼', '2');
INSERT INTO `t_activity` VALUES ('6', '防守打法鬼打鬼', '2');
INSERT INTO `t_activity` VALUES ('7', '防守打法鬼打鬼', '2');
INSERT INTO `t_activity` VALUES ('8', '防守打法鬼打鬼', '2');
INSERT INTO `t_activity` VALUES ('9', '防守打法鬼打鬼', '2');
INSERT INTO `t_activity` VALUES ('10', '金豆豆幼儿园迎新游园会', '2');
INSERT INTO `t_activity` VALUES ('11', '金豆豆幼儿园迎新游园会', '2');
INSERT INTO `t_activity` VALUES ('12', '曹杨新村幼儿园迎新游园会', '2');
INSERT INTO `t_activity` VALUES ('13', '防守打法鬼打鬼', '2');
INSERT INTO `t_activity` VALUES ('14', '防守打法鬼打鬼', '2');

-- ----------------------------
-- Table structure for t_activity_confirmation
-- ----------------------------
DROP TABLE IF EXISTS `t_activity_confirmation`;
CREATE TABLE `t_activity_confirmation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(50) DEFAULT NULL,
  `kindergarten_id` int(11) DEFAULT NULL COMMENT '幼儿园信息编号',
  `information_id` int(11) DEFAULT NULL COMMENT '基础信息编号',
  `class_information_id` int(11) DEFAULT NULL COMMENT '班级信息编号',
  `ring_description_id` int(11) DEFAULT NULL COMMENT '环境创设编号',
  `activity_id` int(11) DEFAULT NULL COMMENT '活动编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_activity_confirmation
-- ----------------------------
INSERT INTO `t_activity_confirmation` VALUES ('2', '1', '17', '0', '55', '31', '1');
INSERT INTO `t_activity_confirmation` VALUES ('3', '1', '18', '0', '56', '32', '4');
INSERT INTO `t_activity_confirmation` VALUES ('4', '1', '19', '0', '57', '33', '6');
INSERT INTO `t_activity_confirmation` VALUES ('5', '', '20', '0', '58', '34', '8');
INSERT INTO `t_activity_confirmation` VALUES ('6', '', '21', '1', '59', '35', '9');
INSERT INTO `t_activity_confirmation` VALUES ('7', '1', '22', '2', '60', '36', '10');
INSERT INTO `t_activity_confirmation` VALUES ('8', '1', '23', '3', '61', '37', '12');
INSERT INTO `t_activity_confirmation` VALUES ('9', '1', '24', '4', '62', '38', '13');

-- ----------------------------
-- Table structure for t_activity_evaluation
-- ----------------------------
DROP TABLE IF EXISTS `t_activity_evaluation`;
CREATE TABLE `t_activity_evaluation` (
  `activity_evaluation_id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_name` varchar(100) DEFAULT NULL COMMENT '活动游戏名称',
  `evaluate` tinyint(10) DEFAULT NULL COMMENT '0满意,1较满意,2一般	,3不满意,4极差',
  PRIMARY KEY (`activity_evaluation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_activity_evaluation
-- ----------------------------

-- ----------------------------
-- Table structure for t_activity_feedback
-- ----------------------------
DROP TABLE IF EXISTS `t_activity_feedback`;
CREATE TABLE `t_activity_feedback` (
  `activity_feedback_id` int(11) NOT NULL AUTO_INCREMENT,
  `kindergarten_name` varchar(100) DEFAULT NULL COMMENT '幼儿园名称',
  `linkman` varchar(100) DEFAULT NULL COMMENT '联系人',
  `kindergarten_address` varchar(100) DEFAULT NULL COMMENT '地址(幼儿园地址)',
  `phone` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `improvements` varchar(255) DEFAULT NULL COMMENT '改进意见与建议',
  PRIMARY KEY (`activity_feedback_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_activity_feedback
-- ----------------------------

-- ----------------------------
-- Table structure for t_activity_game
-- ----------------------------
DROP TABLE IF EXISTS `t_activity_game`;
CREATE TABLE `t_activity_game` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) DEFAULT NULL,
  `game_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_activity_game
-- ----------------------------
INSERT INTO `t_activity_game` VALUES ('62', '1', '4');
INSERT INTO `t_activity_game` VALUES ('63', '1', '5');
INSERT INTO `t_activity_game` VALUES ('64', '1', '6');
INSERT INTO `t_activity_game` VALUES ('65', '1', '7');
INSERT INTO `t_activity_game` VALUES ('66', '1', '8');
INSERT INTO `t_activity_game` VALUES ('67', '4', '4');
INSERT INTO `t_activity_game` VALUES ('68', '4', '5');
INSERT INTO `t_activity_game` VALUES ('69', '4', '6');
INSERT INTO `t_activity_game` VALUES ('70', '4', '7');
INSERT INTO `t_activity_game` VALUES ('71', '4', '8');
INSERT INTO `t_activity_game` VALUES ('72', '6', '4');
INSERT INTO `t_activity_game` VALUES ('73', '6', '7');
INSERT INTO `t_activity_game` VALUES ('74', '6', '8');
INSERT INTO `t_activity_game` VALUES ('75', '6', '4');
INSERT INTO `t_activity_game` VALUES ('76', '6', '5');
INSERT INTO `t_activity_game` VALUES ('77', '6', '6');
INSERT INTO `t_activity_game` VALUES ('78', '8', '3');
INSERT INTO `t_activity_game` VALUES ('79', '8', '9');
INSERT INTO `t_activity_game` VALUES ('80', '8', '10');
INSERT INTO `t_activity_game` VALUES ('81', '8', '4');
INSERT INTO `t_activity_game` VALUES ('82', '8', '6');
INSERT INTO `t_activity_game` VALUES ('83', '8', '5');
INSERT INTO `t_activity_game` VALUES ('84', '9', '4');
INSERT INTO `t_activity_game` VALUES ('85', '9', '5');
INSERT INTO `t_activity_game` VALUES ('86', '9', '6');
INSERT INTO `t_activity_game` VALUES ('87', '9', '2');
INSERT INTO `t_activity_game` VALUES ('88', '9', '3');
INSERT INTO `t_activity_game` VALUES ('89', '9', '9');
INSERT INTO `t_activity_game` VALUES ('90', '10', '4');
INSERT INTO `t_activity_game` VALUES ('91', '10', '5');
INSERT INTO `t_activity_game` VALUES ('92', '10', '6');
INSERT INTO `t_activity_game` VALUES ('93', '10', '7');
INSERT INTO `t_activity_game` VALUES ('94', '10', '8');
INSERT INTO `t_activity_game` VALUES ('95', '10', '9');
INSERT INTO `t_activity_game` VALUES ('96', '12', '4');
INSERT INTO `t_activity_game` VALUES ('97', '12', '5');
INSERT INTO `t_activity_game` VALUES ('98', '12', '6');
INSERT INTO `t_activity_game` VALUES ('99', '12', '1');
INSERT INTO `t_activity_game` VALUES ('100', '12', '2');
INSERT INTO `t_activity_game` VALUES ('101', '12', '9');
INSERT INTO `t_activity_game` VALUES ('102', '12', '3');
INSERT INTO `t_activity_game` VALUES ('103', '13', '1');
INSERT INTO `t_activity_game` VALUES ('104', '13', '2');
INSERT INTO `t_activity_game` VALUES ('105', '13', '3');
INSERT INTO `t_activity_game` VALUES ('106', '13', '4');
INSERT INTO `t_activity_game` VALUES ('107', '13', '5');
INSERT INTO `t_activity_game` VALUES ('108', '13', '6');
INSERT INTO `t_activity_game` VALUES ('109', '13', '7');
INSERT INTO `t_activity_game` VALUES ('110', '13', '8');

-- ----------------------------
-- Table structure for t_activity_materials
-- ----------------------------
DROP TABLE IF EXISTS `t_activity_materials`;
CREATE TABLE `t_activity_materials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) DEFAULT NULL COMMENT '活动编号',
  `material_id` int(11) DEFAULT NULL COMMENT '物料编号',
  `material_name` varchar(255) DEFAULT NULL COMMENT '物料名称',
  `material_count` int(11) DEFAULT NULL COMMENT '物料数量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_activity_materials
-- ----------------------------

-- ----------------------------
-- Table structure for t_activity_photos
-- ----------------------------
DROP TABLE IF EXISTS `t_activity_photos`;
CREATE TABLE `t_activity_photos` (
  `activity_photos_id` int(11) NOT NULL AUTO_INCREMENT,
  `kindergarten_id` int(11) DEFAULT NULL COMMENT '幼儿园名称',
  `time` datetime DEFAULT NULL COMMENT '活动时间',
  PRIMARY KEY (`activity_photos_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_activity_photos
-- ----------------------------
INSERT INTO `t_activity_photos` VALUES ('5', '20', '2019-01-25 13:39:19');
INSERT INTO `t_activity_photos` VALUES ('6', '23', '2019-01-25 13:56:18');

-- ----------------------------
-- Table structure for t_activity_theme
-- ----------------------------
DROP TABLE IF EXISTS `t_activity_theme`;
CREATE TABLE `t_activity_theme` (
  `theme_id` int(11) NOT NULL AUTO_INCREMENT,
  `theme_name` varchar(100) DEFAULT NULL COMMENT '主题名称',
  PRIMARY KEY (`theme_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_activity_theme
-- ----------------------------
INSERT INTO `t_activity_theme` VALUES ('1', '运动会');
INSERT INTO `t_activity_theme` VALUES ('2', '游园会');
INSERT INTO `t_activity_theme` VALUES ('3', '水世界');
INSERT INTO `t_activity_theme` VALUES ('4', '表演类');

-- ----------------------------
-- Table structure for t_archway
-- ----------------------------
DROP TABLE IF EXISTS `t_archway`;
CREATE TABLE `t_archway` (
  `archway_id` int(11) NOT NULL AUTO_INCREMENT,
  `archway_type` tinyint(4) DEFAULT NULL COMMENT '0（气球拱门另收费），1（充气拱门），',
  `archway_color` varchar(100) DEFAULT NULL COMMENT '拱门颜色（0双色，1彩色）',
  `archway_shape` varchar(100) DEFAULT NULL COMMENT '拱门形状',
  `archway_picture` varchar(100) DEFAULT NULL COMMENT '拱门图片',
  PRIMARY KEY (`archway_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_archway
-- ----------------------------
INSERT INTO `t_archway` VALUES ('1', '1', '彩色的', '彩虹', null);
INSERT INTO `t_archway` VALUES ('2', '1', '黄色', '长颈鹿', '/static/uploadImage/2019-02-05-21-26-500a06c706f05d4b99a2bdde87f227fdf0.jpg');
INSERT INTO `t_archway` VALUES ('3', '1', '黄色', '小老虎', '/static/uploadImage/2019-02-05-21-27-0121e2c448231f45e2951b60d6dea2457b.jpg');
INSERT INTO `t_archway` VALUES ('4', '1', '', '海豚', null);
INSERT INTO `t_archway` VALUES ('5', '1', '粉红', '棒棒糖', '/static/uploadImage/2019-02-05-21-27-11ea56def291d848aca27fd0b667b9bea0.jpg');
INSERT INTO `t_archway` VALUES ('6', '0', '双色', '普通', null);
INSERT INTO `t_archway` VALUES ('7', '0', '彩色', '树状', null);

-- ----------------------------
-- Table structure for t_attendance_card
-- ----------------------------
DROP TABLE IF EXISTS `t_attendance_card`;
CREATE TABLE `t_attendance_card` (
  `attendance_card_id` int(11) NOT NULL AUTO_INCREMENT,
  `attendance_card_name` varchar(100) DEFAULT NULL COMMENT '游园卡名字',
  `garden_card_template` varchar(255) DEFAULT NULL COMMENT '游园卡模板',
  PRIMARY KEY (`attendance_card_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_attendance_card
-- ----------------------------
INSERT INTO `t_attendance_card` VALUES ('1', '所有的游园卡模板', '/static/uploadPdf/2019-02-08-21-30-181df735c30ad4449c90f4a740e87d86be.pdf');

-- ----------------------------
-- Table structure for t_carousel
-- ----------------------------
DROP TABLE IF EXISTS `t_carousel`;
CREATE TABLE `t_carousel` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '轮播图编号',
  `name` varchar(50) DEFAULT NULL COMMENT '轮播图名称',
  `picture_url` varchar(100) DEFAULT NULL COMMENT '轮播图地址',
  `create_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_carousel
-- ----------------------------

-- ----------------------------
-- Table structure for t_class_information
-- ----------------------------
DROP TABLE IF EXISTS `t_class_information`;
CREATE TABLE `t_class_information` (
  `class_information_id` int(11) NOT NULL AUTO_INCREMENT,
  `headcount` int(11) DEFAULT NULL COMMENT '幼儿园总人数',
  `number_of_contract` int(11) DEFAULT NULL COMMENT '合同约定人数',
  `number_of_teachers` int(11) DEFAULT NULL COMMENT '教师人数',
  PRIMARY KEY (`class_information_id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_class_information
-- ----------------------------
INSERT INTO `t_class_information` VALUES ('25', '121', '12', '12');
INSERT INTO `t_class_information` VALUES ('26', '121', '12', '123');
INSERT INTO `t_class_information` VALUES ('27', '121', '124', '12');
INSERT INTO `t_class_information` VALUES ('28', '123', '12', '121');
INSERT INTO `t_class_information` VALUES ('30', '12', '132', '123');
INSERT INTO `t_class_information` VALUES ('31', '121', '121', '123');
INSERT INTO `t_class_information` VALUES ('32', null, null, null);
INSERT INTO `t_class_information` VALUES ('33', '200', '180', '12');
INSERT INTO `t_class_information` VALUES ('34', '123', '12', '10');
INSERT INTO `t_class_information` VALUES ('35', '12', '122', '122');
INSERT INTO `t_class_information` VALUES ('36', '180', '121', '12');
INSERT INTO `t_class_information` VALUES ('37', '121', '180', '12');
INSERT INTO `t_class_information` VALUES ('38', '121', '121', '121');
INSERT INTO `t_class_information` VALUES ('39', '180', '12', '121');
INSERT INTO `t_class_information` VALUES ('40', '180', '168', '30');
INSERT INTO `t_class_information` VALUES ('41', '180', '168', '20');
INSERT INTO `t_class_information` VALUES ('42', '180', '168', '20');
INSERT INTO `t_class_information` VALUES ('43', '180', '168', '20');
INSERT INTO `t_class_information` VALUES ('44', '180', '168', '20');
INSERT INTO `t_class_information` VALUES ('45', '180', '168', '20');
INSERT INTO `t_class_information` VALUES ('46', '180', '168', '29');
INSERT INTO `t_class_information` VALUES ('47', '180', '168', '20');
INSERT INTO `t_class_information` VALUES ('48', '180', '168', '20');
INSERT INTO `t_class_information` VALUES ('49', '180', '168', '20');
INSERT INTO `t_class_information` VALUES ('50', '180', '168', '20');
INSERT INTO `t_class_information` VALUES ('51', '180', '168', '20');
INSERT INTO `t_class_information` VALUES ('52', '180', '168', '20');
INSERT INTO `t_class_information` VALUES ('53', '180', '168', '20');
INSERT INTO `t_class_information` VALUES ('54', '180', '168', '20');
INSERT INTO `t_class_information` VALUES ('55', '180', '168', '20');
INSERT INTO `t_class_information` VALUES ('56', '180', '168', '20');
INSERT INTO `t_class_information` VALUES ('57', '180', '168', '20');
INSERT INTO `t_class_information` VALUES ('58', '121', '12', '21');
INSERT INTO `t_class_information` VALUES ('59', '12', '12', '12');
INSERT INTO `t_class_information` VALUES ('60', '181', '168', '30');
INSERT INTO `t_class_information` VALUES ('61', '181', '168', '30');
INSERT INTO `t_class_information` VALUES ('62', '12', '12', '12');

-- ----------------------------
-- Table structure for t_class_type
-- ----------------------------
DROP TABLE IF EXISTS `t_class_type`;
CREATE TABLE `t_class_type` (
  `class_id` int(11) NOT NULL AUTO_INCREMENT,
  `class_information_id` int(11) DEFAULT NULL,
  `class_type` varchar(100) DEFAULT NULL COMMENT '班级类型',
  `quantity` int(11) DEFAULT NULL COMMENT '班级数量',
  `number_of_people` int(11) DEFAULT NULL COMMENT '班级人数',
  PRIMARY KEY (`class_id`)
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_class_type
-- ----------------------------
INSERT INTO `t_class_type` VALUES ('109', null, '小班', null, null);
INSERT INTO `t_class_type` VALUES ('110', null, '中班', null, null);
INSERT INTO `t_class_type` VALUES ('111', null, '大班', null, null);
INSERT INTO `t_class_type` VALUES ('112', null, '小班', null, null);
INSERT INTO `t_class_type` VALUES ('113', null, '中班', null, null);
INSERT INTO `t_class_type` VALUES ('114', null, '大班', null, null);
INSERT INTO `t_class_type` VALUES ('115', null, '小班', null, null);
INSERT INTO `t_class_type` VALUES ('116', null, '中班', null, null);
INSERT INTO `t_class_type` VALUES ('117', null, '大班', null, null);
INSERT INTO `t_class_type` VALUES ('118', null, '小班', null, null);
INSERT INTO `t_class_type` VALUES ('119', null, '中班', null, null);
INSERT INTO `t_class_type` VALUES ('120', null, '大班', null, null);
INSERT INTO `t_class_type` VALUES ('121', null, '小班', null, null);
INSERT INTO `t_class_type` VALUES ('122', null, '中班', null, null);
INSERT INTO `t_class_type` VALUES ('123', null, '大班', null, null);
INSERT INTO `t_class_type` VALUES ('124', null, '小班', null, null);
INSERT INTO `t_class_type` VALUES ('125', null, '中班', null, null);
INSERT INTO `t_class_type` VALUES ('126', null, '大班', null, null);
INSERT INTO `t_class_type` VALUES ('127', null, '小班', null, null);
INSERT INTO `t_class_type` VALUES ('128', null, '中班', null, null);
INSERT INTO `t_class_type` VALUES ('129', null, '大班', null, null);
INSERT INTO `t_class_type` VALUES ('130', null, '小班', null, null);
INSERT INTO `t_class_type` VALUES ('131', null, '中班', null, null);
INSERT INTO `t_class_type` VALUES ('132', null, '大班', null, null);
INSERT INTO `t_class_type` VALUES ('133', null, '小班', null, null);
INSERT INTO `t_class_type` VALUES ('134', null, '中班', null, null);
INSERT INTO `t_class_type` VALUES ('135', null, '大班', null, null);
INSERT INTO `t_class_type` VALUES ('136', null, '小班', null, null);
INSERT INTO `t_class_type` VALUES ('137', null, '中班', null, null);
INSERT INTO `t_class_type` VALUES ('138', null, '大班', null, null);
INSERT INTO `t_class_type` VALUES ('139', null, '小班', null, null);
INSERT INTO `t_class_type` VALUES ('140', null, '中班', null, null);
INSERT INTO `t_class_type` VALUES ('141', null, '大班', null, null);
INSERT INTO `t_class_type` VALUES ('142', null, '小班', null, null);
INSERT INTO `t_class_type` VALUES ('143', null, '中班', null, null);
INSERT INTO `t_class_type` VALUES ('144', null, '大班', null, null);
INSERT INTO `t_class_type` VALUES ('145', null, '小班', null, null);
INSERT INTO `t_class_type` VALUES ('146', null, '中班', null, null);
INSERT INTO `t_class_type` VALUES ('147', null, '大班', null, null);
INSERT INTO `t_class_type` VALUES ('148', null, '小班', null, null);
INSERT INTO `t_class_type` VALUES ('149', null, '中班', null, null);
INSERT INTO `t_class_type` VALUES ('150', null, '大班', null, null);
INSERT INTO `t_class_type` VALUES ('151', null, '小班', null, null);
INSERT INTO `t_class_type` VALUES ('152', null, '中班', null, null);
INSERT INTO `t_class_type` VALUES ('153', null, '大班', null, null);

-- ----------------------------
-- Table structure for t_comment
-- ----------------------------
DROP TABLE IF EXISTS `t_comment`;
CREATE TABLE `t_comment` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `comment` varchar(255) DEFAULT NULL COMMENT '评论内容',
  `activity_name` varchar(100) DEFAULT NULL COMMENT '活动名称',
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_comment
-- ----------------------------

-- ----------------------------
-- Table structure for t_course
-- ----------------------------
DROP TABLE IF EXISTS `t_course`;
CREATE TABLE `t_course` (
  `course_id` int(11) NOT NULL AUTO_INCREMENT,
  `course_name` varchar(100) DEFAULT NULL COMMENT '课程名称',
  `institutions` varchar(100) DEFAULT NULL COMMENT '授课机构',
  `venue` varchar(100) DEFAULT NULL COMMENT '上课地点',
  `mobile` varchar(20) DEFAULT NULL COMMENT '联系电话',
  `course_picture` varchar(100) DEFAULT NULL COMMENT '课程图片',
  `course_price` decimal(10,2) DEFAULT NULL COMMENT '单次课程价格',
  `total_hours` int(11) DEFAULT NULL COMMENT '课程的总课时',
  `course_details` varchar(500) DEFAULT NULL COMMENT '课程详情',
  `create_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `type_id` int(11) DEFAULT NULL COMMENT '课程类型，0表示品德教育课程，1表示感觉教育课程，2表示健康教育课程，3表示艺术教育课程，4表示语言教育课程',
  PRIMARY KEY (`course_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_course
-- ----------------------------

-- ----------------------------
-- Table structure for t_course_type
-- ----------------------------
DROP TABLE IF EXISTS `t_course_type`;
CREATE TABLE `t_course_type` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_course_type
-- ----------------------------
INSERT INTO `t_course_type` VALUES ('1', '品德教育课程');
INSERT INTO `t_course_type` VALUES ('2', '感觉教育课程');
INSERT INTO `t_course_type` VALUES ('3', '健康教育课程');
INSERT INTO `t_course_type` VALUES ('4', '艺术教育课程');
INSERT INTO `t_course_type` VALUES ('5', '语言教育课程');

-- ----------------------------
-- Table structure for t_door_card
-- ----------------------------
DROP TABLE IF EXISTS `t_door_card`;
CREATE TABLE `t_door_card` (
  `door_card_id` int(11) NOT NULL AUTO_INCREMENT,
  `door_card_name` varchar(100) DEFAULT NULL COMMENT '门卡名字',
  `the_door_card` varchar(255) DEFAULT NULL COMMENT '门卡模板',
  PRIMARY KEY (`door_card_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_door_card
-- ----------------------------

-- ----------------------------
-- Table structure for t_feedback_evaluation
-- ----------------------------
DROP TABLE IF EXISTS `t_feedback_evaluation`;
CREATE TABLE `t_feedback_evaluation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_feedback_id` int(11) DEFAULT NULL,
  `activity_evaluation_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_feedback_evaluation
-- ----------------------------

-- ----------------------------
-- Table structure for t_figure
-- ----------------------------
DROP TABLE IF EXISTS `t_figure`;
CREATE TABLE `t_figure` (
  `figure_id` int(11) NOT NULL AUTO_INCREMENT,
  `figure_name` varchar(100) DEFAULT NULL COMMENT '人偶名称',
  `figure_picture` varchar(100) DEFAULT NULL COMMENT '人偶图片',
  PRIMARY KEY (`figure_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_figure
-- ----------------------------
INSERT INTO `t_figure` VALUES ('1', '小黄人', '/static/uploadImage/2019-02-05-21-26-242f97f562aa684773a16d6993dfbd7137.jpg');
INSERT INTO `t_figure` VALUES ('2', '熊本熊', '/static/uploadImage/2019-02-05-21-26-33b3ba2f33806a4c6c9bb611baa932684a.jpg');
INSERT INTO `t_figure` VALUES ('3', '马里奥', null);
INSERT INTO `t_figure` VALUES ('4', '加菲猫', null);
INSERT INTO `t_figure` VALUES ('5', '熊猫', null);
INSERT INTO `t_figure` VALUES ('6', '迎福猪', '/static/uploadImage/2019-02-03-22-49-599a54162f9aab49f3b768569fab4d7892.jpg');

-- ----------------------------
-- Table structure for t_franchisee
-- ----------------------------
DROP TABLE IF EXISTS `t_franchisee`;
CREATE TABLE `t_franchisee` (
  `franchisee_id` varchar(50) NOT NULL,
  `login_name` varchar(50) DEFAULT NULL COMMENT '登录名',
  `password` varchar(50) DEFAULT NULL COMMENT '密码',
  `franchisee_name` varchar(50) DEFAULT NULL COMMENT '姓名',
  `phone` varchar(11) DEFAULT NULL COMMENT '电话',
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `locality` varchar(100) DEFAULT NULL COMMENT '所在地',
  `type` tinyint(4) DEFAULT NULL COMMENT '用户类型，0表示后台管理员，1表示前台加盟商，2表示前台物料供应商',
  `status` tinyint(4) DEFAULT '0' COMMENT '状态0表示未审核，1表示已审核',
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`franchisee_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_franchisee
-- ----------------------------
INSERT INTO `t_franchisee` VALUES ('1', 'Admin', 'e10adc3949ba59abbe56e057f20f883e', '李拉', '14763382290', '187384739@qq.com', '江西省赣州市', '1', '1', '2018-11-26 17:18:36');
INSERT INTO `t_franchisee` VALUES ('5316388c17ce11e996a9f01faf06a374', 'Admin', 'e10adc3949ba59abbe56e057f20f883e', '李拉', '14763382290', '187384739@qq.com', '江西省赣州市', '1', '0', '2019-01-14 15:31:05');
INSERT INTO `t_franchisee` VALUES ('612b076617c511e996a9f01faf06a374', '韧行', 'e10adc3949ba59abbe56e057f20f883e', '李拉', '14763382290', '187384739@qq.com', '江西省赣州市', '1', '1', '2019-01-14 14:27:03');

-- ----------------------------
-- Table structure for t_franchisee_course
-- ----------------------------
DROP TABLE IF EXISTS `t_franchisee_course`;
CREATE TABLE `t_franchisee_course` (
  `id` int(11) NOT NULL,
  `franchisee_id` varchar(50) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_franchisee_course
-- ----------------------------

-- ----------------------------
-- Table structure for t_game
-- ----------------------------
DROP TABLE IF EXISTS `t_game`;
CREATE TABLE `t_game` (
  `game_id` int(11) NOT NULL AUTO_INCREMENT,
  `game_name` varchar(100) DEFAULT NULL COMMENT '游戏名称',
  `game_properties_id` int(11) DEFAULT NULL COMMENT '游戏属性编号',
  `theme_id` int(11) DEFAULT NULL COMMENT '活动适用主题',
  `game_purpose` varchar(100) DEFAULT NULL COMMENT '游戏目的',
  `game_object` varchar(100) DEFAULT NULL COMMENT '游戏适用对象',
  `game_picture` varchar(255) DEFAULT NULL COMMENT '游戏图片',
  `number_of_people` varchar(100) DEFAULT NULL COMMENT '场地及人数要求',
  `play_time` varchar(100) DEFAULT NULL COMMENT '游戏时间要求',
  `standard` varchar(255) DEFAULT NULL COMMENT '场地布置标准',
  `stores_list` varchar(255) DEFAULT NULL COMMENT '游戏物料清单',
  `work` int(11) DEFAULT NULL,
  `material_standard` varchar(100) DEFAULT NULL COMMENT '制作物料标准',
  `link_the_material` varchar(100) DEFAULT NULL COMMENT '环节物料',
  `merchant` varchar(100) DEFAULT NULL COMMENT '适用商家描述',
  `playing_method` varchar(500) DEFAULT NULL COMMENT '玩法',
  `rule` varchar(500) DEFAULT NULL COMMENT '规则',
  `teacher_viedo` varchar(255) DEFAULT NULL COMMENT '教师培训视频',
  `work_viedo` varchar(255) DEFAULT NULL COMMENT '兼职培训视频',
  PRIMARY KEY (`game_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_game
-- ----------------------------
INSERT INTO `t_game` VALUES ('1', '无敌风火轮', null, '1', '', '', null, '', '', '', '', null, '', '', null, '', null, null, null);
INSERT INTO `t_game` VALUES ('2', '勇者大闯关', null, '1', '', '', null, '', '', '', '', null, '', '', null, '', null, null, null);
INSERT INTO `t_game` VALUES ('3', '疯狂粘球', null, '1', '', '', null, '', '', '', '', null, '', '', null, '', null, null, null);
INSERT INTO `t_game` VALUES ('4', '礼花炮', null, '2', '增强孩子动手能力', '全年龄段儿童', null, '教师，桌子', '3', '', '', null, '一次性纸杯，气球，剪刀，纸屑', '', null, '', null, null, null);
INSERT INTO `t_game` VALUES ('5', '奶油打脸机', null, '2', '锻炼孩子的手眼协调性', '全年龄段', null, '教师，桌子', '5', '一个教师放5张桌子', '奶油打脸机5台，奶油两盒，打蛋鸡一个，盆子一个，勺子两个', null, '', '', null, '', null, null, null);
INSERT INTO `t_game` VALUES ('6', '疯狂垃圾桶', null, '2', '锻炼幼儿的投掷能力和手眼协调性', '3到12岁儿童', '/static/uploadImage/2019-02-05-21-24-01d4b09500a7594bdf8613b26b9c932bb6.png', '空旷平整的一小块地方', '5', '用绳子或其他东西围成一个圈型障碍，中间放垃圾桶机器', '垃圾桶机器5，纸团若干', '2', '', '', null, '', null, null, null);
INSERT INTO `t_game` VALUES ('7', '皮影戏', null, '4', '增强幼儿对民俗的认知', '全年龄段', null, '', '', '', '', null, '', '', null, '', null, null, null);
INSERT INTO `t_game` VALUES ('8', '捏面人', null, '4', '增强幼儿对民俗的认知', '', null, '', '', '', '', null, '', '', null, '', null, null, null);
INSERT INTO `t_game` VALUES ('9', '同心协力', null, '1', '团队合作', '中班，大班', null, '草地或树胶操场', '15分钟', '', '脚踏板', null, '', '', null, '1、活动以家庭为单位，每一轮2组家庭同时游玩，每一个班级派出8组家庭参加。 2、起点和终点各站4组家庭，迎面接力。 3、两组家庭同时上木板，脚板穿进木板上的固定绳中。 安全提示：小朋友站中间，家长站前后两端，小朋友双手抱前面人腰部。', null, null, null);
INSERT INTO `t_game` VALUES ('13', '撕纸画', '1', '2', '培养小朋友动手能力', '中班，大班', '/static/uploadImage/2019-02-05-20-59-291a8a566469bb4c3ab9ba1c92640d272b.png', '10组家庭', '15分钟', '一个桌子配四把椅子，教室共六个桌子，黑板上贴一些完成的作品', '彩色宣纸、胶水、A4纸', '2', '将宣纸剪小', '图章', '无', '将宣纸撕成各种形状，然后使用胶水黏贴', '那位小朋友完成的又快又好看', '/static/uploadViedo/2019-02-05-20-59-293397334ad82a4e9f9388711a9ac2fcdf.mp4', '/static/uploadViedo/2019-02-05-20-59-3003b9e38ffb4244a692cca4f68145a025.mp4');

-- ----------------------------
-- Table structure for t_game_operation
-- ----------------------------
DROP TABLE IF EXISTS `t_game_operation`;
CREATE TABLE `t_game_operation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `game_id` int(11) DEFAULT NULL,
  `operation_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_game_operation
-- ----------------------------
INSERT INTO `t_game_operation` VALUES ('1', '12', null);
INSERT INTO `t_game_operation` VALUES ('2', '13', null);

-- ----------------------------
-- Table structure for t_information
-- ----------------------------
DROP TABLE IF EXISTS `t_information`;
CREATE TABLE `t_information` (
  `information_id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_address` varchar(100) DEFAULT NULL COMMENT '活动地址',
  `site` tinyint(4) DEFAULT NULL COMMENT '场地（0室内，1室外）',
  `reward_type` tinyint(4) DEFAULT NULL COMMENT '0奖牌，1奖杯，2奖状',
  `reward_count` int(11) DEFAULT NULL COMMENT '奖杯数量',
  `reward_content` varchar(100) DEFAULT NULL COMMENT '奖杯/奖牌文字内容',
  `decorate` tinyint(4) DEFAULT NULL COMMENT '0喷绘，1横幅',
  `size` varchar(255) DEFAULT NULL COMMENT '尺寸',
  `content` varchar(100) DEFAULT NULL COMMENT '内容',
  `additional_paid_item` varchar(100) DEFAULT NULL COMMENT '0(摄影),1(摄像),2(航拍)',
  PRIMARY KEY (`information_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_information
-- ----------------------------
INSERT INTO `t_information` VALUES ('1', null, '0', '0', null, null, '0', null, null, '0');
INSERT INTO `t_information` VALUES ('2', null, '1', null, null, null, null, null, null, '0');
INSERT INTO `t_information` VALUES ('3', null, '1', '0', null, '', null, '', '', '0');
INSERT INTO `t_information` VALUES ('4', null, '1', '1', '12', '见到谁打副本', '0', '3x10', '官方公布', '0');

-- ----------------------------
-- Table structure for t_information_type
-- ----------------------------
DROP TABLE IF EXISTS `t_information_type`;
CREATE TABLE `t_information_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_id` int(11) DEFAULT NULL,
  `class_information_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_information_type
-- ----------------------------

-- ----------------------------
-- Table structure for t_invitation_letter
-- ----------------------------
DROP TABLE IF EXISTS `t_invitation_letter`;
CREATE TABLE `t_invitation_letter` (
  `invitation_letter_id` int(11) NOT NULL AUTO_INCREMENT,
  `invitation_letter_name` varchar(255) DEFAULT NULL COMMENT '邀请函名称',
  `invitation_template` varchar(255) DEFAULT NULL COMMENT '邀请函模板',
  PRIMARY KEY (`invitation_letter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_invitation_letter
-- ----------------------------

-- ----------------------------
-- Table structure for t_kindergarten
-- ----------------------------
DROP TABLE IF EXISTS `t_kindergarten`;
CREATE TABLE `t_kindergarten` (
  `kindergarten_id` int(11) NOT NULL AUTO_INCREMENT,
  `kindergarten_name` varchar(100) DEFAULT NULL COMMENT '幼儿园名称',
  `linkman` varchar(100) DEFAULT NULL COMMENT '园方联系人',
  `phone` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `nature_of_kindergarten` tinyint(4) DEFAULT NULL COMMENT '幼儿园性质（0公立，1私立）',
  `teaching_features` varchar(100) DEFAULT NULL COMMENT '幼儿园教学特色',
  `kindergarten_address` varchar(100) DEFAULT NULL COMMENT '幼儿园地址',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  `activity_leader` varchar(100) DEFAULT NULL COMMENT '活动负责人',
  `theme_id` int(11) DEFAULT NULL,
  `activity_name` varchar(100) DEFAULT NULL COMMENT '活动名称',
  `activity_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `activity_address` varchar(100) DEFAULT NULL COMMENT '活动地址',
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`kindergarten_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_kindergarten
-- ----------------------------
INSERT INTO `t_kindergarten` VALUES ('18', '发电房', '发斯蒂芬', '14763382290', '0', '法规范的撒格式的', '发电房', '割发代首', '发斯蒂芬', '2', '防守打法鬼打鬼', '2019-01-30 00:00:00', '法国的是法国', '2019-01-09 00:00:00');
INSERT INTO `t_kindergarten` VALUES ('19', '范德萨发生', '发斯蒂芬', '18721011070', '1', '法规范的撒格式的', '发电房', '割发代首', '发斯蒂芬', '2', '防守打法鬼打鬼', '2019-01-16 00:00:00', '法国的是法国', '2019-01-05 00:00:00');
INSERT INTO `t_kindergarten` VALUES ('20', '范德萨发生', '发斯蒂芬', '14763382290', '0', '法规范的撒格式的', '发电房', '割发代首', '伍群斌', '2', '防守打法鬼打鬼', '2018-12-25 00:00:00', '范德萨发生', '2018-11-28 00:00:00');
INSERT INTO `t_kindergarten` VALUES ('21', '范德萨发生', '发斯蒂芬', '14763382290', '0', '法规范的撒格式的', '发电房', '23', '发斯蒂芬', '2', '防守打法鬼打鬼', '2018-12-25 00:00:00', '范德萨发生', '1899-12-31 00:00:00');
INSERT INTO `t_kindergarten` VALUES ('22', '金豆豆幼儿园', '余老师', '14763382290', '1', '思维训练特色', '上海市普陀区真北路8-099弄52号', '要3个冰雪奇缘的人形立牌', '伍群斌', '2', '金豆豆幼儿园迎新游园会', '2018-12-28 00:00:00', '上海市普陀区真北路8-099弄52号', '2018-12-04 00:00:00');
INSERT INTO `t_kindergarten` VALUES ('23', '曹杨新村幼儿园', '张老师', '18721011070', '1', '数学特色', '普陀区曹杨路九〇三弄5号(近曹阳花卉市场)', '', '顾之卿', '2', '曹杨新村幼儿园迎新游园会', '2018-12-20 00:00:00', '普陀区曹杨路九〇三弄5号(近曹阳花卉市场)', '2018-12-04 00:00:00');
INSERT INTO `t_kindergarten` VALUES ('24', '范德萨发生', '发斯蒂芬', '14763382290', '1', '法规范的撒格式的', '发电房', '割发代首', '发斯蒂芬', '2', '防守打法鬼打鬼', '2018-12-25 00:00:00', '范德萨发生', '2019-01-14 00:00:00');

-- ----------------------------
-- Table structure for t_kindergarten_schedule
-- ----------------------------
DROP TABLE IF EXISTS `t_kindergarten_schedule`;
CREATE TABLE `t_kindergarten_schedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kindergarten_id` int(11) DEFAULT NULL COMMENT '幼儿园编号',
  `schedule_id` int(11) DEFAULT NULL COMMENT '信息进度编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_kindergarten_schedule
-- ----------------------------
INSERT INTO `t_kindergarten_schedule` VALUES ('39', '18', '1299');
INSERT INTO `t_kindergarten_schedule` VALUES ('40', '18', '1300');
INSERT INTO `t_kindergarten_schedule` VALUES ('41', '18', '1301');
INSERT INTO `t_kindergarten_schedule` VALUES ('42', '18', '1302');
INSERT INTO `t_kindergarten_schedule` VALUES ('43', '18', '1303');
INSERT INTO `t_kindergarten_schedule` VALUES ('44', '18', '1304');
INSERT INTO `t_kindergarten_schedule` VALUES ('45', '18', '1305');
INSERT INTO `t_kindergarten_schedule` VALUES ('46', '18', '1306');
INSERT INTO `t_kindergarten_schedule` VALUES ('47', '18', '1307');
INSERT INTO `t_kindergarten_schedule` VALUES ('48', '18', '1308');
INSERT INTO `t_kindergarten_schedule` VALUES ('49', '18', '1309');
INSERT INTO `t_kindergarten_schedule` VALUES ('50', '18', '1310');
INSERT INTO `t_kindergarten_schedule` VALUES ('51', '18', '1311');
INSERT INTO `t_kindergarten_schedule` VALUES ('52', '18', '1312');
INSERT INTO `t_kindergarten_schedule` VALUES ('53', '18', '1313');
INSERT INTO `t_kindergarten_schedule` VALUES ('54', '18', '1314');
INSERT INTO `t_kindergarten_schedule` VALUES ('55', '18', '1315');
INSERT INTO `t_kindergarten_schedule` VALUES ('56', '18', '1316');
INSERT INTO `t_kindergarten_schedule` VALUES ('57', '18', '1317');
INSERT INTO `t_kindergarten_schedule` VALUES ('58', '19', '1318');
INSERT INTO `t_kindergarten_schedule` VALUES ('59', '19', '1319');
INSERT INTO `t_kindergarten_schedule` VALUES ('60', '19', '1320');
INSERT INTO `t_kindergarten_schedule` VALUES ('61', '19', '1321');
INSERT INTO `t_kindergarten_schedule` VALUES ('62', '19', '1322');
INSERT INTO `t_kindergarten_schedule` VALUES ('63', '19', '1323');
INSERT INTO `t_kindergarten_schedule` VALUES ('64', '19', '1324');
INSERT INTO `t_kindergarten_schedule` VALUES ('65', '19', '1325');
INSERT INTO `t_kindergarten_schedule` VALUES ('66', '19', '1326');
INSERT INTO `t_kindergarten_schedule` VALUES ('67', '19', '1327');
INSERT INTO `t_kindergarten_schedule` VALUES ('68', '19', '1328');
INSERT INTO `t_kindergarten_schedule` VALUES ('69', '19', '1329');
INSERT INTO `t_kindergarten_schedule` VALUES ('70', '19', '1330');
INSERT INTO `t_kindergarten_schedule` VALUES ('71', '19', '1331');
INSERT INTO `t_kindergarten_schedule` VALUES ('72', '19', '1332');
INSERT INTO `t_kindergarten_schedule` VALUES ('73', '19', '1333');
INSERT INTO `t_kindergarten_schedule` VALUES ('74', '19', '1334');
INSERT INTO `t_kindergarten_schedule` VALUES ('75', '19', '1335');
INSERT INTO `t_kindergarten_schedule` VALUES ('76', '19', '1336');
INSERT INTO `t_kindergarten_schedule` VALUES ('77', '22', '1337');
INSERT INTO `t_kindergarten_schedule` VALUES ('78', '22', '1338');
INSERT INTO `t_kindergarten_schedule` VALUES ('79', '22', '1339');
INSERT INTO `t_kindergarten_schedule` VALUES ('80', '22', '1340');
INSERT INTO `t_kindergarten_schedule` VALUES ('81', '22', '1341');
INSERT INTO `t_kindergarten_schedule` VALUES ('82', '22', '1342');
INSERT INTO `t_kindergarten_schedule` VALUES ('83', '22', '1343');
INSERT INTO `t_kindergarten_schedule` VALUES ('84', '22', '1344');
INSERT INTO `t_kindergarten_schedule` VALUES ('85', '22', '1345');
INSERT INTO `t_kindergarten_schedule` VALUES ('86', '22', '1346');
INSERT INTO `t_kindergarten_schedule` VALUES ('87', '22', '1347');
INSERT INTO `t_kindergarten_schedule` VALUES ('88', '22', '1348');
INSERT INTO `t_kindergarten_schedule` VALUES ('89', '22', '1349');
INSERT INTO `t_kindergarten_schedule` VALUES ('90', '22', '1350');
INSERT INTO `t_kindergarten_schedule` VALUES ('91', '22', '1351');
INSERT INTO `t_kindergarten_schedule` VALUES ('92', '22', '1352');
INSERT INTO `t_kindergarten_schedule` VALUES ('93', '22', '1353');
INSERT INTO `t_kindergarten_schedule` VALUES ('94', '22', '1354');
INSERT INTO `t_kindergarten_schedule` VALUES ('95', '22', '1355');
INSERT INTO `t_kindergarten_schedule` VALUES ('96', '19', '1356');
INSERT INTO `t_kindergarten_schedule` VALUES ('97', '19', '1357');
INSERT INTO `t_kindergarten_schedule` VALUES ('98', '19', '1358');
INSERT INTO `t_kindergarten_schedule` VALUES ('99', '19', '1359');
INSERT INTO `t_kindergarten_schedule` VALUES ('100', '19', '1360');
INSERT INTO `t_kindergarten_schedule` VALUES ('101', '19', '1361');
INSERT INTO `t_kindergarten_schedule` VALUES ('102', '19', '1362');
INSERT INTO `t_kindergarten_schedule` VALUES ('103', '19', '1363');
INSERT INTO `t_kindergarten_schedule` VALUES ('104', '19', '1364');
INSERT INTO `t_kindergarten_schedule` VALUES ('105', '19', '1365');
INSERT INTO `t_kindergarten_schedule` VALUES ('106', '19', '1366');
INSERT INTO `t_kindergarten_schedule` VALUES ('107', '19', '1367');
INSERT INTO `t_kindergarten_schedule` VALUES ('108', '19', '1368');
INSERT INTO `t_kindergarten_schedule` VALUES ('109', '19', '1369');
INSERT INTO `t_kindergarten_schedule` VALUES ('110', '19', '1370');
INSERT INTO `t_kindergarten_schedule` VALUES ('111', '19', '1371');
INSERT INTO `t_kindergarten_schedule` VALUES ('112', '19', '1372');
INSERT INTO `t_kindergarten_schedule` VALUES ('113', '19', '1373');
INSERT INTO `t_kindergarten_schedule` VALUES ('114', '19', '1374');

-- ----------------------------
-- Table structure for t_materials
-- ----------------------------
DROP TABLE IF EXISTS `t_materials`;
CREATE TABLE `t_materials` (
  `material_id` int(11) NOT NULL AUTO_INCREMENT,
  `material_name` varchar(100) DEFAULT NULL COMMENT '物料名称',
  `material_picture` varchar(100) DEFAULT '' COMMENT '物料图片',
  `supplier` varchar(100) DEFAULT NULL COMMENT '物料供应商',
  `introduce` varchar(255) DEFAULT NULL COMMENT '物料介绍',
  `material_count` int(11) DEFAULT NULL COMMENT '物料数量',
  `material_price` decimal(10,2) DEFAULT NULL COMMENT '物料价格',
  `create_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`material_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_materials
-- ----------------------------
INSERT INTO `t_materials` VALUES ('1', '工作服', '/static/uploadImage/2019/01/17/10/32/08c8ff8f358ebb400d982480c8b85534ff.jpg', '', '工作人员在活动现场必须要穿的一件马甲', null, '5.00', '2018-12-16 14:31:32');
INSERT INTO `t_materials` VALUES ('2', '工作牌', '/static/uploadImage/2018/12/16/14/33/41a9468f5cb78c4beab07ab3d3c5499f01.', '', '工作人员在工作时佩戴的牌子', null, '3.00', '2018-12-16 14:33:41');
INSERT INTO `t_materials` VALUES ('4', '充气拱门', '/static/uploadImage/2018/12/16/14/37/12c6126dc3dc7f49f5b6c3c50e23a82c43.', '', '环境布置活动现场要用到的装饰', null, '200.00', '2018-12-16 14:37:12');
INSERT INTO `t_materials` VALUES ('5', '鼓风机', '/static/uploadImage/2018/12/16/14/38/30f7c82fba70f340f5ad5d644e0c5f45db.', '', '和充气拱门配对使用，一个充气拱门配一个或两个鼓风机', null, '80.00', '2018-12-16 14:38:30');
INSERT INTO `t_materials` VALUES ('6', '拖线板', '/static/uploadImage/2019-01-31-20-38-01ba03e94eba5e4b66855787566e9bf3f3.jpg', '', '活动布置时要用到电时是必不可少的，有时活动要用电是必备的', '3', '50.00', '2018-12-16 14:40:59');
INSERT INTO `t_materials` VALUES ('7', '黄沙', '/static/uploadImage/2019-01-31-20-37-4403a5169d19d64c219b8afafb54727c2b.jpg', '', '当有充气拱门时需要黄沙放在充气拱门下面固定充气拱门', '2', '3.00', '2018-12-16 14:51:25');
INSERT INTO `t_materials` VALUES ('8', '绳子', '/static/uploadImage/2018/12/16/14/52/138d0983ed861848bbbe3a784423f991f6.', '', '有些活动有需要绳子固定的', null, '5.00', '2018-12-16 14:52:13');
INSERT INTO `t_materials` VALUES ('9', '地胶', '/static/uploadImage/2018/12/16/15/24/508cefcb4ec4464ddfb1db7ef873089917.', '', '地胶可以让拖线板紧贴地面避免小朋友摔倒，同时也可以做地面起终点标识', null, '4.00', '2018-12-16 14:53:58');
INSERT INTO `t_materials` VALUES ('16', '某某物料', '/static/uploadImage/2019-01-25-22-47-502cb948c4db334b5f81bcc3320f2f40d5.jpg', null, 'fsdf', '222', '222.00', '2019-01-25 22:48:07');
INSERT INTO `t_materials` VALUES ('17', '打气泵', '/static/uploadImage/2019-01-31-20-36-554baf112c9f0844e9a11fa4a426f22062.jpg', null, '布置环境时打气球所用的工具', '5', '20.00', '2019-01-27 09:58:08');

-- ----------------------------
-- Table structure for t_message
-- ----------------------------
DROP TABLE IF EXISTS `t_message`;
CREATE TABLE `t_message` (
  `id` int(11) NOT NULL,
  `send_id` int(11) DEFAULT NULL COMMENT '发送者编号',
  `rec_id` int(11) DEFAULT NULL COMMENT '接收者编号',
  `message_id` int(11) DEFAULT NULL COMMENT '站内信编号',
  `status` tinyint(4) DEFAULT NULL COMMENT '站内信的查看状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_message
-- ----------------------------

-- ----------------------------
-- Table structure for t_message_text
-- ----------------------------
DROP TABLE IF EXISTS `t_message_text`;
CREATE TABLE `t_message_text` (
  `id` int(11) NOT NULL,
  `message` varchar(255) DEFAULT NULL COMMENT '站内信的内容',
  `p_date` datetime DEFAULT NULL COMMENT '站内信发送时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_message_text
-- ----------------------------

-- ----------------------------
-- Table structure for t_news
-- ----------------------------
DROP TABLE IF EXISTS `t_news`;
CREATE TABLE `t_news` (
  `news_id` int(11) NOT NULL AUTO_INCREMENT,
  `news_name` varchar(100) DEFAULT NULL COMMENT '资讯名称',
  `news_picture` varchar(100) DEFAULT NULL COMMENT '活动图片',
  `site` varchar(100) DEFAULT NULL COMMENT '活动地点',
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '活动时间',
  `participants` varchar(100) DEFAULT NULL COMMENT '参与人数',
  PRIMARY KEY (`news_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_news
-- ----------------------------

-- ----------------------------
-- Table structure for t_operation
-- ----------------------------
DROP TABLE IF EXISTS `t_operation`;
CREATE TABLE `t_operation` (
  `operation_id` int(11) NOT NULL AUTO_INCREMENT,
  `step` varchar(100) DEFAULT NULL COMMENT '步骤',
  `content` varchar(500) DEFAULT NULL COMMENT '具体内容',
  `material_instructions` varchar(255) DEFAULT NULL COMMENT '材料使用说明',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`operation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_operation
-- ----------------------------

-- ----------------------------
-- Table structure for t_parents
-- ----------------------------
DROP TABLE IF EXISTS `t_parents`;
CREATE TABLE `t_parents` (
  `parents_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT '姓名',
  `sex` tinyint(4) DEFAULT NULL COMMENT '性别',
  `phone` varchar(11) DEFAULT NULL COMMENT '电话',
  `password` varchar(100) DEFAULT NULL COMMENT '密码',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `address` varchar(100) DEFAULT NULL COMMENT '联系地址',
  `kindergarten` varchar(100) DEFAULT '' COMMENT '孩子幼儿园名称',
  PRIMARY KEY (`parents_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_parents
-- ----------------------------

-- ----------------------------
-- Table structure for t_parents_comment
-- ----------------------------
DROP TABLE IF EXISTS `t_parents_comment`;
CREATE TABLE `t_parents_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parents_id` int(11) DEFAULT NULL COMMENT '家长编号',
  `comment_id` int(11) DEFAULT NULL COMMENT '评论列表',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_parents_comment
-- ----------------------------

-- ----------------------------
-- Table structure for t_permission
-- ----------------------------
DROP TABLE IF EXISTS `t_permission`;
CREATE TABLE `t_permission` (
  `permission_id` int(11) NOT NULL,
  `permission_name` varchar(100) DEFAULT NULL COMMENT '权限字符串',
  `remarks` varchar(100) DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_permission
-- ----------------------------

-- ----------------------------
-- Table structure for t_pictures
-- ----------------------------
DROP TABLE IF EXISTS `t_pictures`;
CREATE TABLE `t_pictures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_photos_id` int(11) DEFAULT NULL,
  `picture` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_pictures
-- ----------------------------
INSERT INTO `t_pictures` VALUES ('21', null, '/static/uploadImage/2019-01-25-13-24-12eaa0eb0667b646a1bcd4319d049d4a87.jpg');
INSERT INTO `t_pictures` VALUES ('22', null, '/static/uploadImage/2019-01-25-13-24-128ba45812a4304924832a00362a6b0aeb.jpg');
INSERT INTO `t_pictures` VALUES ('23', null, '/static/uploadImage/2019-01-25-13-24-12871436a0235e4bf4888301d946da5914.jpg');
INSERT INTO `t_pictures` VALUES ('24', null, '/static/uploadImage/2019-01-25-13-24-124731ce1390c64f8a850872d4010b2093.jpg');
INSERT INTO `t_pictures` VALUES ('25', '5', '/static/uploadImage/2019-01-25-13-39-1857c137ce79fb40af95feb943f0b07540.jpg');
INSERT INTO `t_pictures` VALUES ('26', '5', '/static/uploadImage/2019-01-25-13-39-18b5eae95056274f6ba2e82034182c45ed.jpg');
INSERT INTO `t_pictures` VALUES ('27', '5', '/static/uploadImage/2019-01-25-13-39-182d56a14e9fb84096889dfb40d632ed0b.jpg');
INSERT INTO `t_pictures` VALUES ('28', '5', '/static/uploadImage/2019-01-25-13-39-18024317cccd18496db23e947569e09a9b.jpg');
INSERT INTO `t_pictures` VALUES ('29', '6', '/static/uploadImage/2019-01-25-13-56-14c9eba6f8d39b4163943192a1d553e2ba.jpg');
INSERT INTO `t_pictures` VALUES ('30', '6', '/static/uploadImage/2019-01-25-13-56-14a75a6f351ebe4efda3988a37ca0b727a.jpg');

-- ----------------------------
-- Table structure for t_properties
-- ----------------------------
DROP TABLE IF EXISTS `t_properties`;
CREATE TABLE `t_properties` (
  `game_properties_id` int(11) NOT NULL AUTO_INCREMENT,
  `game_properties` varchar(100) DEFAULT NULL COMMENT '游戏属性',
  `describe` varchar(255) DEFAULT NULL COMMENT '游戏属性描述',
  PRIMARY KEY (`game_properties_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_properties
-- ----------------------------
INSERT INTO `t_properties` VALUES ('1', '手工类', '锻炼幼儿的手眼协调能力');
INSERT INTO `t_properties` VALUES ('2', '环保类', '增强幼儿的环保意识');
INSERT INTO `t_properties` VALUES ('3', '科技类', '加强幼儿对科技的认知');
INSERT INTO `t_properties` VALUES ('4', '节日类', '加强幼儿对节日信息的了解');
INSERT INTO `t_properties` VALUES ('5', '亲子运动会', '加强幼儿与父母之间的沟通和交流');

-- ----------------------------
-- Table structure for t_ring_description
-- ----------------------------
DROP TABLE IF EXISTS `t_ring_description`;
CREATE TABLE `t_ring_description` (
  `ring_description_id` int(11) NOT NULL AUTO_INCREMENT,
  `archway_id` int(11) DEFAULT NULL COMMENT '拱门编号',
  `number_of_balloon` int(11) DEFAULT NULL COMMENT '气球立柱数量',
  `color_of_balloon` varchar(100) DEFAULT NULL COMMENT '气球立柱颜色',
  `figure_id` int(11) DEFAULT NULL COMMENT '人偶编号',
  PRIMARY KEY (`ring_description_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_ring_description
-- ----------------------------
INSERT INTO `t_ring_description` VALUES ('6', null, null, null, null);
INSERT INTO `t_ring_description` VALUES ('7', null, null, null, null);
INSERT INTO `t_ring_description` VALUES ('8', '1', '2', '粉+提伏尼蓝', '1');
INSERT INTO `t_ring_description` VALUES ('9', '1', '2', '粉+提伏妮蓝', '1');
INSERT INTO `t_ring_description` VALUES ('10', '2', '12', '121', '1');
INSERT INTO `t_ring_description` VALUES ('11', null, null, '12', '1');
INSERT INTO `t_ring_description` VALUES ('12', '4', '12', '粉+蓝', '6');
INSERT INTO `t_ring_description` VALUES ('13', '3', '12', '121', '2');
INSERT INTO `t_ring_description` VALUES ('14', '2', '121', '121', '3');
INSERT INTO `t_ring_description` VALUES ('15', '4', '2', '粉+提付伲蓝', '4');
INSERT INTO `t_ring_description` VALUES ('16', '3', null, '粉+提付伲蓝', '1');
INSERT INTO `t_ring_description` VALUES ('17', '3', null, '粉+提付伲蓝', '1');
INSERT INTO `t_ring_description` VALUES ('18', '3', null, '粉+提付伲蓝', '3');
INSERT INTO `t_ring_description` VALUES ('19', '3', null, '粉+提付伲蓝', '1');
INSERT INTO `t_ring_description` VALUES ('20', '3', null, '粉+提付伲蓝', '1');
INSERT INTO `t_ring_description` VALUES ('21', '3', null, '粉+提付伲蓝', '1');
INSERT INTO `t_ring_description` VALUES ('22', '2', null, '粉+提付伲蓝', '3');
INSERT INTO `t_ring_description` VALUES ('23', '3', null, '粉+提付伲蓝', '1');
INSERT INTO `t_ring_description` VALUES ('24', '3', null, '粉+提付伲蓝', '1');
INSERT INTO `t_ring_description` VALUES ('25', '2', null, '粉+提付伲蓝', '1');
INSERT INTO `t_ring_description` VALUES ('26', '2', null, '粉+提付伲蓝', '1');
INSERT INTO `t_ring_description` VALUES ('27', '3', null, '粉+提付伲蓝', '4');
INSERT INTO `t_ring_description` VALUES ('28', '2', null, '粉+提付伲蓝', '1');
INSERT INTO `t_ring_description` VALUES ('29', '2', '12', '粉+提付伲蓝', '1');
INSERT INTO `t_ring_description` VALUES ('30', '2', null, '粉+提付伲蓝', '1');
INSERT INTO `t_ring_description` VALUES ('31', '2', null, '粉+提付伲蓝', '1');
INSERT INTO `t_ring_description` VALUES ('32', '3', null, '粉+提付伲蓝', '1');
INSERT INTO `t_ring_description` VALUES ('33', '3', null, '粉+提付伲蓝', '1');
INSERT INTO `t_ring_description` VALUES ('34', '3', '12', '粉+提付伲蓝', '1');
INSERT INTO `t_ring_description` VALUES ('35', '3', '12', '粉+提付伲蓝', '1');
INSERT INTO `t_ring_description` VALUES ('36', '3', null, '粉+提付伲蓝', '1');
INSERT INTO `t_ring_description` VALUES ('37', '2', null, '粉+提付伲蓝', '1');
INSERT INTO `t_ring_description` VALUES ('38', '3', '12', '粉+提付伲蓝', '1');

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role` (
  `role_id` int(11) NOT NULL,
  `remarks` varchar(100) DEFAULT NULL,
  `role_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_role
-- ----------------------------

-- ----------------------------
-- Table structure for t_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `t_role_permission`;
CREATE TABLE `t_role_permission` (
  `id` int(11) NOT NULL,
  `permission_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_role_permission
-- ----------------------------

-- ----------------------------
-- Table structure for t_schedule
-- ----------------------------
DROP TABLE IF EXISTS `t_schedule`;
CREATE TABLE `t_schedule` (
  `schedule_id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_schedule` varchar(100) DEFAULT NULL,
  `readiness_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `finish_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `executor` varchar(100) DEFAULT NULL,
  `content` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`schedule_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1375 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_schedule
-- ----------------------------
INSERT INTO `t_schedule` VALUES ('1299', '明确活动时间', '2019-01-10 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1300', '创建活动群', '2019-01-10 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1301', '方案确定时间', '2019-01-12 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1302', '查看场地/接洽时间', '2019-01-10 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1303', '教师培训', '2019-01-10 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1304', '会前会/内部培训', '2019-01-10 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1305', '出物料清单', '2019-01-12 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1306', '物料清单审核', '2019-01-12 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1307', '物料采购时间', '2019-01-13 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1308', '物料准备时间', '2019-01-12 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1309', '物料审核时间', '2019-01-13 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1310', '游园卡', '2019-01-12 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1311', '邀请函', '2019-01-12 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1312', '门卡', '2019-01-12 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1313', '确定工作人员数', '2019-01-10 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1314', '商家和艺人确定', '2019-01-10 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1315', '人员培训', '2019-01-16 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1316', '场地布置', '2019-01-16 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1317', '物料回收', '2019-01-17 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1318', '明确活动时间', '2019-01-06 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1319', '创建活动群', '2019-01-06 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1320', '方案确定时间', '2019-01-08 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1321', '查看场地/接洽时间', '2019-01-06 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1322', '教师培训', '2019-01-06 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1323', '会前会/内部培训', '2019-01-06 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1324', '出物料清单', '2019-01-08 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1325', '物料清单审核', '2019-01-08 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1326', '物料采购时间', '2019-01-09 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1327', '物料准备时间', '2019-01-08 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1328', '物料审核时间', '2019-01-09 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1329', '游园卡', '2019-01-08 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1330', '邀请函', '2019-01-08 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1331', '门卡', '2019-01-08 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1332', '确定工作人员数', '2019-01-06 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1333', '商家和艺人确定', '2019-01-06 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1334', '人员培训', '2019-01-12 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1335', '场地布置', '2019-01-12 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1336', '物料回收', '2019-01-13 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1337', '明确活动时间', '2018-12-05 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1338', '创建活动群', '2018-12-05 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1339', '方案确定时间', '2018-12-07 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1340', '查看场地/接洽时间', '2018-12-05 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1341', '教师培训', '2018-12-05 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1342', '会前会/内部培训', '2018-12-05 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1343', '出物料清单', '2018-12-07 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1344', '物料清单审核', '2018-12-07 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1345', '物料采购时间', '2018-12-08 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1346', '物料准备时间', '2018-12-07 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1347', '物料审核时间', '2018-12-08 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1348', '游园卡', '2018-12-07 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1349', '邀请函', '2018-12-07 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1350', '门卡', '2018-12-07 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1351', '确定工作人员数', '2018-12-05 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1352', '商家和艺人确定', '2018-12-05 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1353', '人员培训', '2018-12-11 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1354', '场地布置', '2018-12-11 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1355', '物料回收', '2018-12-12 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1356', '明确活动时间', '2019-01-06 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1357', '创建活动群', '2019-01-06 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1358', '方案确定时间', '2019-01-08 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1359', '查看场地/接洽时间', '2019-01-06 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1360', '教师培训', '2019-01-06 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1361', '会前会/内部培训', '2019-01-06 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1362', '出物料清单', '2019-01-08 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1363', '物料清单审核', '2019-01-08 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1364', '物料采购时间', '2019-01-09 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1365', '物料准备时间', '2019-01-08 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1366', '物料审核时间', '2019-01-09 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1367', '游园卡', '2019-01-08 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1368', '邀请函', '2019-01-08 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1369', '门卡', '2019-01-08 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1370', '确定工作人员数', '2019-01-06 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1371', '商家和艺人确定', '2019-01-06 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1372', '人员培训', '2019-01-12 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1373', '场地布置', '2019-01-12 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1374', '物料回收', '2019-01-13 00:00:00', null, null, null);

-- ----------------------------
-- Table structure for t_scheme
-- ----------------------------
DROP TABLE IF EXISTS `t_scheme`;
CREATE TABLE `t_scheme` (
  `scheme_id` int(11) NOT NULL AUTO_INCREMENT,
  `scheme_name` varchar(255) DEFAULT NULL COMMENT '方案名',
  `plan_template` varchar(255) DEFAULT NULL COMMENT '方案模板',
  PRIMARY KEY (`scheme_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_scheme
-- ----------------------------
INSERT INTO `t_scheme` VALUES ('3', '六一儿童节活动模板', '/static/uploadPdf/2019-02-07-22-48-04f58a920353dd49ae814bab21ac0f00e6.pdf');
INSERT INTO `t_scheme` VALUES ('4', '国庆节方案模板', '/static/uploadPdf/2019-02-08-09-52-451edcf91faeee4e1bab04bb11b141549b.pdf');
INSERT INTO `t_scheme` VALUES ('5', '端午节方案模板', '/static/uploadPdf/2019-02-08-10-37-222d44014eb061445eb5094e9440e8cd3f.pdf');
INSERT INTO `t_scheme` VALUES ('7', '父亲节方案模板', '/static/uploadPdf/2019-02-09-18-10-46493fa12cb3f546d299e57c5d977689c8.pdf');
INSERT INTO `t_scheme` VALUES ('10', '国庆节方案模板', '/static/uploadPdf/2019-02-09-18-11-22cb9d9f29fdfe494586f14ae3bdd7d0e8.pdf');
INSERT INTO `t_scheme` VALUES ('11', '教师扩展方案模板', '/static/uploadPdf/2019-02-09-18-11-594996db426cbe465888ef4e6da1abb0f7.pdf');
INSERT INTO `t_scheme` VALUES ('12', '开学方案模板', '/static/uploadPdf/2019-02-09-18-12-19c3c9a3c93aa7423c86030e15c4b35c3f.pdf');
INSERT INTO `t_scheme` VALUES ('13', '科学方案模板', '/static/uploadPdf/2019-02-09-18-12-413d11724c8ebb4853a4d3672da505d829.pdf');
INSERT INTO `t_scheme` VALUES ('14', '劳动节方案模板', '/static/uploadPdf/2019-02-09-18-13-0363550b74004d4396a362c860a183114e.pdf');
INSERT INTO `t_scheme` VALUES ('15', '母亲节方案模板', '/static/uploadPdf/2019-02-09-18-13-275f6c77f10fca4abe953aad26052cd405.pdf');
INSERT INTO `t_scheme` VALUES ('16', '水世界方案模板', '/static/uploadPdf/2019-02-09-18-13-49d91218ea8cd44042b1c5317b32943b1e.pdf');
INSERT INTO `t_scheme` VALUES ('17', '万圣节方案模板', '/static/uploadPdf/2019-02-09-18-14-15805da238f7f64c40968e4e31cc26e2d3.pdf');
INSERT INTO `t_scheme` VALUES ('18', '迎新方案模板', '/static/uploadPdf/2019-02-09-18-14-39bfcbb50ad91142d08cd6d807ca8184a1.pdf');
INSERT INTO `t_scheme` VALUES ('19', '元旦方案模板', '/static/uploadPdf/2019-02-09-18-14-5763cb7bdf318347c2ae0286b89b3f5136.pdf');
INSERT INTO `t_scheme` VALUES ('20', '元宵方案模板', '/static/uploadPdf/2019-02-09-18-15-30b84dfcc2701d4434848d59ac85991ed7.pdf');
INSERT INTO `t_scheme` VALUES ('21', '重阳节方案模板', '/static/uploadPdf/2019-02-09-18-15-49c6720a7504ca44668df47294b34dce01.pdf');

-- ----------------------------
-- Table structure for t_sign_up_sheet
-- ----------------------------
DROP TABLE IF EXISTS `t_sign_up_sheet`;
CREATE TABLE `t_sign_up_sheet` (
  `sign_up_id` int(11) NOT NULL AUTO_INCREMENT,
  `kindergarten_name` varchar(100) DEFAULT NULL COMMENT '幼儿园名称',
  `executive` varchar(100) DEFAULT NULL COMMENT '执行人员',
  PRIMARY KEY (`sign_up_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sign_up_sheet
-- ----------------------------

-- ----------------------------
-- Table structure for t_staffing
-- ----------------------------
DROP TABLE IF EXISTS `t_staffing`;
CREATE TABLE `t_staffing` (
  `staffing_id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_address` varchar(100) DEFAULT NULL COMMENT '活动地址',
  `rehearsal_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '彩排时间',
  PRIMARY KEY (`staffing_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_staffing
-- ----------------------------

-- ----------------------------
-- Table structure for t_staffing_task
-- ----------------------------
DROP TABLE IF EXISTS `t_staffing_task`;
CREATE TABLE `t_staffing_task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `staffing_id` int(11) DEFAULT NULL,
  `task_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_staffing_task
-- ----------------------------

-- ----------------------------
-- Table structure for t_stores_list
-- ----------------------------
DROP TABLE IF EXISTS `t_stores_list`;
CREATE TABLE `t_stores_list` (
  `stores_list_id` int(11) NOT NULL AUTO_INCREMENT,
  `project_name` tinyint(5) DEFAULT NULL COMMENT '物料类型(0工作人员，1标准物料,2非标准物料，3布置物料,4工具物料)',
  `item_list` varchar(100) DEFAULT NULL COMMENT '物料名称',
  `quantity` int(11) DEFAULT NULL COMMENT '数量',
  PRIMARY KEY (`stores_list_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_stores_list
-- ----------------------------

-- ----------------------------
-- Table structure for t_supplier
-- ----------------------------
DROP TABLE IF EXISTS `t_supplier`;
CREATE TABLE `t_supplier` (
  `supplier_id` int(11) NOT NULL AUTO_INCREMENT,
  `supplier_name` varchar(100) DEFAULT NULL COMMENT '供应商姓名',
  `login_name` varchar(100) DEFAULT NULL COMMENT '登录名',
  `password` varchar(100) DEFAULT NULL COMMENT '密码',
  `phone` varchar(11) DEFAULT NULL COMMENT '电话',
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱地址',
  `address` varchar(100) DEFAULT NULL COMMENT '联系地址',
  `type` tinyint(4) unsigned zerofill DEFAULT NULL COMMENT '供应商类型，1表示物料供应商，2表示培训课程供应商',
  `status` tinyint(4) DEFAULT '0' COMMENT '状态0表示未审核，1表示已审核',
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '申请时间',
  PRIMARY KEY (`supplier_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_supplier
-- ----------------------------
INSERT INTO `t_supplier` VALUES ('1', '发发呆', 'user', 'e10adc3949ba59abbe56e057f20f883e', '14763382290', '187384739@qq.com', '上海市静安区', null, '1', '2018-11-28 11:18:35');

-- ----------------------------
-- Table structure for t_supplier_materials
-- ----------------------------
DROP TABLE IF EXISTS `t_supplier_materials`;
CREATE TABLE `t_supplier_materials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `supplier_id` int(11) DEFAULT NULL COMMENT '供应商编号',
  `materials_id` int(11) DEFAULT NULL COMMENT '物料编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_supplier_materials
-- ----------------------------

-- ----------------------------
-- Table structure for t_sys_user
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_user`;
CREATE TABLE `t_sys_user` (
  `user_id` varchar(50) NOT NULL,
  `login_name` varchar(100) DEFAULT NULL COMMENT '登录账号',
  `user_name` varchar(100) DEFAULT NULL COMMENT '用户姓名',
  `user_password` varchar(100) DEFAULT NULL COMMENT '密码',
  `phone` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱地址',
  `address` varchar(255) DEFAULT NULL COMMENT '联系地址',
  `status` tinyint(4) DEFAULT '0' COMMENT '管理员类型，0表示子管理员，1表示主管理员',
  `type` tinyint(4) DEFAULT NULL COMMENT '0表示后台管理员，1表示前台加盟商用户，2表示前台物料供应商物料',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys_user
-- ----------------------------
INSERT INTO `t_sys_user` VALUES ('1', 'Admin', null, 'e10adc3949ba59abbe56e057f20f883e', null, null, null, '1', '0');
INSERT INTO `t_sys_user` VALUES ('2', 'user', '任性', 'e10adc3949ba59abbe56e057f20f883e', '18721011060', 'm18816485440@163.com', '上海市静安区彭浦镇高平路永和家园', '0', '0');

-- ----------------------------
-- Table structure for t_task
-- ----------------------------
DROP TABLE IF EXISTS `t_task`;
CREATE TABLE `t_task` (
  `task_id` int(11) NOT NULL AUTO_INCREMENT,
  `task` varchar(100) DEFAULT NULL COMMENT '人员任务',
  `functionary` varchar(100) DEFAULT NULL COMMENT '负责人员',
  `phone` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`task_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_task
-- ----------------------------

-- ----------------------------
-- Table structure for t_theme_information
-- ----------------------------
DROP TABLE IF EXISTS `t_theme_information`;
CREATE TABLE `t_theme_information` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `theme_id` int(11) DEFAULT NULL,
  `information_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_theme_information
-- ----------------------------

-- ----------------------------
-- Table structure for t_user_role
-- ----------------------------
DROP TABLE IF EXISTS `t_user_role`;
CREATE TABLE `t_user_role` (
  `id` int(11) NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user_role
-- ----------------------------

-- ----------------------------
-- Table structure for t_worker
-- ----------------------------
DROP TABLE IF EXISTS `t_worker`;
CREATE TABLE `t_worker` (
  `worker_id` int(11) NOT NULL AUTO_INCREMENT,
  `worker_name` varchar(100) DEFAULT NULL COMMENT '艺人或兼职名字',
  `identity_card` varchar(18) DEFAULT NULL COMMENT '身份证号',
  `phone` varchar(11) DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`worker_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_worker
-- ----------------------------

-- ----------------------------
-- Table structure for t_worker_sign_up
-- ----------------------------
DROP TABLE IF EXISTS `t_worker_sign_up`;
CREATE TABLE `t_worker_sign_up` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `worker_id` int(11) DEFAULT NULL,
  `sign_up_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_worker_sign_up
-- ----------------------------
