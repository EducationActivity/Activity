/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50723
Source Host           : localhost:3306
Source Database       : db_activity

Target Server Type    : MYSQL
Target Server Version : 50723
File Encoding         : 65001

Date: 2019-03-05 09:39:40
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
  `activity_leader` varchar(100) DEFAULT NULL COMMENT '活动负责人',
  `activity_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '活动时间',
  `activity_address` varchar(100) DEFAULT NULL COMMENT '活动地址',
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '活动创建时间',
  `remark` varchar(100) DEFAULT NULL COMMENT '活动备注',
  PRIMARY KEY (`activity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_activity
-- ----------------------------
INSERT INTO `t_activity` VALUES ('1', '曹杨新村幼儿园开学游园会', '2', '伍群斌', '2019-02-20 00:00:00', '曹杨路近花卉市场', '2019-02-24 00:00:00', '');

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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_activity_confirmation
-- ----------------------------
INSERT INTO `t_activity_confirmation` VALUES ('20', '', '35', '16', '74', '50', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_activity_game
-- ----------------------------
INSERT INTO `t_activity_game` VALUES ('150', '26', '4');
INSERT INTO `t_activity_game` VALUES ('151', '26', '5');
INSERT INTO `t_activity_game` VALUES ('152', '26', '7');
INSERT INTO `t_activity_game` VALUES ('153', '26', '8');
INSERT INTO `t_activity_game` VALUES ('154', '26', '9');
INSERT INTO `t_activity_game` VALUES ('155', '26', '6');
INSERT INTO `t_activity_game` VALUES ('156', '29', '9');
INSERT INTO `t_activity_game` VALUES ('157', '29', '4');
INSERT INTO `t_activity_game` VALUES ('158', '29', '5');
INSERT INTO `t_activity_game` VALUES ('159', '29', '6');
INSERT INTO `t_activity_game` VALUES ('160', '29', '7');
INSERT INTO `t_activity_game` VALUES ('161', '29', '8');
INSERT INTO `t_activity_game` VALUES ('162', '1', '1');
INSERT INTO `t_activity_game` VALUES ('163', '1', '3');
INSERT INTO `t_activity_game` VALUES ('164', '1', '7');
INSERT INTO `t_activity_game` VALUES ('165', '1', '8');
INSERT INTO `t_activity_game` VALUES ('166', '1', '5');

-- ----------------------------
-- Table structure for t_activity_materials
-- ----------------------------
DROP TABLE IF EXISTS `t_activity_materials`;
CREATE TABLE `t_activity_materials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) DEFAULT NULL COMMENT '活动编号',
  `material_id` int(11) DEFAULT NULL COMMENT '物料编号',
  `project_name` varchar(100) DEFAULT NULL COMMENT '项目名称',
  `material_name` varchar(100) DEFAULT NULL COMMENT '物料名称',
  `material_count` int(11) DEFAULT NULL COMMENT '所需物料数量',
  `unit` varchar(100) DEFAULT NULL COMMENT '单位',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=321 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_activity_materials
-- ----------------------------
INSERT INTO `t_activity_materials` VALUES ('272', '29', null, '工作人员', '工作服', null, '件');
INSERT INTO `t_activity_materials` VALUES ('273', '29', null, '工作人员', '工作牌', null, '块');
INSERT INTO `t_activity_materials` VALUES ('274', '29', null, '标准物料', '充气拱门+鼓风机', null, '个');
INSERT INTO `t_activity_materials` VALUES ('275', '29', null, '标准物料', '拖线板', null, '条');
INSERT INTO `t_activity_materials` VALUES ('276', '29', null, '标准物料', '黄沙', null, '袋');
INSERT INTO `t_activity_materials` VALUES ('277', '29', null, '标准物料', '绳子', null, '根');
INSERT INTO `t_activity_materials` VALUES ('278', '29', null, '标准物料', '地胶', null, '卷');
INSERT INTO `t_activity_materials` VALUES ('279', '29', null, '布置物料', '气球', null, '袋');
INSERT INTO `t_activity_materials` VALUES ('280', '29', null, '布置物料', '充气泵(气球)', null, '个');
INSERT INTO `t_activity_materials` VALUES ('281', '29', null, '布置物料', '手动打气筒', null, '个');
INSERT INTO `t_activity_materials` VALUES ('282', '29', null, '布置物料', '游园卡', null, '张');
INSERT INTO `t_activity_materials` VALUES ('283', '29', null, '布置物料', '门卡', null, '张');
INSERT INTO `t_activity_materials` VALUES ('284', '29', null, '工具物料', '螺丝刀', null, '把');
INSERT INTO `t_activity_materials` VALUES ('285', '29', null, '工具物料', '剪刀', null, '把');
INSERT INTO `t_activity_materials` VALUES ('286', '29', null, '工具物料', 'PVC管割刀', null, '把');
INSERT INTO `t_activity_materials` VALUES ('287', '29', null, '同心协力', '脚踏板', null, null);
INSERT INTO `t_activity_materials` VALUES ('288', '29', null, '奶油打脸机', '奶油', null, null);
INSERT INTO `t_activity_materials` VALUES ('289', '29', null, '奶油打脸机', '游戏机器', null, null);
INSERT INTO `t_activity_materials` VALUES ('290', '29', null, '奶油打脸机', '纸巾', null, null);
INSERT INTO `t_activity_materials` VALUES ('291', '29', null, '奶油打脸机', '湿纸巾', null, null);
INSERT INTO `t_activity_materials` VALUES ('292', '29', null, '奶油打脸机', '一次性桌布', null, null);
INSERT INTO `t_activity_materials` VALUES ('293', '29', null, '疯狂垃圾桶', '纸团', null, null);
INSERT INTO `t_activity_materials` VALUES ('294', '29', null, '疯狂垃圾桶', '电池', null, null);
INSERT INTO `t_activity_materials` VALUES ('295', '29', null, '疯狂垃圾桶', '垃圾桶小机器人', null, null);
INSERT INTO `t_activity_materials` VALUES ('296', '29', null, '礼花炮', '一次性杯子', '200', '个');
INSERT INTO `t_activity_materials` VALUES ('297', '1', null, '工作人员', '工作服', null, '件');
INSERT INTO `t_activity_materials` VALUES ('298', '1', null, '工作人员', '工作牌', null, '块');
INSERT INTO `t_activity_materials` VALUES ('299', '1', null, '标准物料', '充气拱门+鼓风机', null, '个');
INSERT INTO `t_activity_materials` VALUES ('300', '1', null, '标准物料', '拖线板', null, '条');
INSERT INTO `t_activity_materials` VALUES ('301', '1', null, '标准物料', '黄沙', null, '袋');
INSERT INTO `t_activity_materials` VALUES ('302', '1', null, '标准物料', '绳子', null, '根');
INSERT INTO `t_activity_materials` VALUES ('303', '1', null, '标准物料', '地胶', null, '卷');
INSERT INTO `t_activity_materials` VALUES ('304', '1', null, '布置物料', '气球', null, '袋');
INSERT INTO `t_activity_materials` VALUES ('305', '1', null, '布置物料', '充气泵(气球)', null, '个');
INSERT INTO `t_activity_materials` VALUES ('306', '1', null, '布置物料', '手动打气筒', null, '个');
INSERT INTO `t_activity_materials` VALUES ('307', '1', null, '布置物料', '游园卡', null, '张');
INSERT INTO `t_activity_materials` VALUES ('308', '1', null, '布置物料', '门卡', null, '张');
INSERT INTO `t_activity_materials` VALUES ('309', '1', null, '工具物料', '螺丝刀', null, '把');
INSERT INTO `t_activity_materials` VALUES ('310', '1', null, '工具物料', '剪刀', null, '把');
INSERT INTO `t_activity_materials` VALUES ('311', '1', null, '工具物料', 'PVC管割刀', null, '把');
INSERT INTO `t_activity_materials` VALUES ('312', '1', null, '无敌风火轮', '无纺布', null, '条');
INSERT INTO `t_activity_materials` VALUES ('313', '1', null, '疯狂粘球', '粘球', null, null);
INSERT INTO `t_activity_materials` VALUES ('314', '1', null, '疯狂粘球', '背心', null, null);
INSERT INTO `t_activity_materials` VALUES ('315', '1', null, '疯狂粘球', '话筒', null, null);
INSERT INTO `t_activity_materials` VALUES ('316', '1', null, '奶油打脸机', '奶油', null, null);
INSERT INTO `t_activity_materials` VALUES ('317', '1', null, '奶油打脸机', '游戏机器', null, null);
INSERT INTO `t_activity_materials` VALUES ('318', '1', null, '奶油打脸机', '纸巾', null, null);
INSERT INTO `t_activity_materials` VALUES ('319', '1', null, '奶油打脸机', '湿纸巾', null, null);
INSERT INTO `t_activity_materials` VALUES ('320', '1', null, '奶油打脸机', '一次性桌布', null, null);

-- ----------------------------
-- Table structure for t_activity_photos
-- ----------------------------
DROP TABLE IF EXISTS `t_activity_photos`;
CREATE TABLE `t_activity_photos` (
  `activity_photos_id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) DEFAULT NULL COMMENT '活动编号',
  `kindergarten_id` int(11) DEFAULT NULL COMMENT '幼儿园编号',
  `time` datetime DEFAULT NULL COMMENT '活动图片上传时间',
  PRIMARY KEY (`activity_photos_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_activity_photos
-- ----------------------------

-- ----------------------------
-- Table structure for t_activity_schedule
-- ----------------------------
DROP TABLE IF EXISTS `t_activity_schedule`;
CREATE TABLE `t_activity_schedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) DEFAULT NULL,
  `schedule_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_activity_schedule
-- ----------------------------
INSERT INTO `t_activity_schedule` VALUES ('1', '26', '1451');
INSERT INTO `t_activity_schedule` VALUES ('2', '26', '1452');
INSERT INTO `t_activity_schedule` VALUES ('3', '26', '1453');
INSERT INTO `t_activity_schedule` VALUES ('4', '26', '1454');
INSERT INTO `t_activity_schedule` VALUES ('5', '26', '1455');
INSERT INTO `t_activity_schedule` VALUES ('6', '26', '1456');
INSERT INTO `t_activity_schedule` VALUES ('7', '26', '1457');
INSERT INTO `t_activity_schedule` VALUES ('8', '26', '1458');
INSERT INTO `t_activity_schedule` VALUES ('9', '26', '1459');
INSERT INTO `t_activity_schedule` VALUES ('10', '26', '1460');
INSERT INTO `t_activity_schedule` VALUES ('11', '26', '1461');
INSERT INTO `t_activity_schedule` VALUES ('12', '26', '1462');
INSERT INTO `t_activity_schedule` VALUES ('13', '26', '1463');
INSERT INTO `t_activity_schedule` VALUES ('14', '26', '1464');
INSERT INTO `t_activity_schedule` VALUES ('15', '26', '1465');
INSERT INTO `t_activity_schedule` VALUES ('16', '26', '1466');
INSERT INTO `t_activity_schedule` VALUES ('17', '26', '1467');
INSERT INTO `t_activity_schedule` VALUES ('18', '26', '1468');
INSERT INTO `t_activity_schedule` VALUES ('19', '26', '1469');
INSERT INTO `t_activity_schedule` VALUES ('20', '29', '1470');
INSERT INTO `t_activity_schedule` VALUES ('21', '29', '1471');
INSERT INTO `t_activity_schedule` VALUES ('22', '29', '1472');
INSERT INTO `t_activity_schedule` VALUES ('23', '29', '1473');
INSERT INTO `t_activity_schedule` VALUES ('24', '29', '1474');
INSERT INTO `t_activity_schedule` VALUES ('25', '29', '1475');
INSERT INTO `t_activity_schedule` VALUES ('26', '29', '1476');
INSERT INTO `t_activity_schedule` VALUES ('27', '29', '1477');
INSERT INTO `t_activity_schedule` VALUES ('28', '29', '1478');
INSERT INTO `t_activity_schedule` VALUES ('29', '29', '1479');
INSERT INTO `t_activity_schedule` VALUES ('30', '29', '1480');
INSERT INTO `t_activity_schedule` VALUES ('31', '29', '1481');
INSERT INTO `t_activity_schedule` VALUES ('32', '29', '1482');
INSERT INTO `t_activity_schedule` VALUES ('33', '29', '1483');
INSERT INTO `t_activity_schedule` VALUES ('34', '29', '1484');
INSERT INTO `t_activity_schedule` VALUES ('35', '29', '1485');
INSERT INTO `t_activity_schedule` VALUES ('36', '29', '1486');
INSERT INTO `t_activity_schedule` VALUES ('37', '29', '1487');
INSERT INTO `t_activity_schedule` VALUES ('38', '29', '1488');
INSERT INTO `t_activity_schedule` VALUES ('39', '1', '1489');
INSERT INTO `t_activity_schedule` VALUES ('40', '1', '1490');
INSERT INTO `t_activity_schedule` VALUES ('41', '1', '1491');
INSERT INTO `t_activity_schedule` VALUES ('42', '1', '1492');
INSERT INTO `t_activity_schedule` VALUES ('43', '1', '1493');
INSERT INTO `t_activity_schedule` VALUES ('44', '1', '1494');
INSERT INTO `t_activity_schedule` VALUES ('45', '1', '1495');
INSERT INTO `t_activity_schedule` VALUES ('46', '1', '1496');
INSERT INTO `t_activity_schedule` VALUES ('47', '1', '1497');
INSERT INTO `t_activity_schedule` VALUES ('48', '1', '1498');
INSERT INTO `t_activity_schedule` VALUES ('49', '1', '1499');
INSERT INTO `t_activity_schedule` VALUES ('50', '1', '1500');
INSERT INTO `t_activity_schedule` VALUES ('51', '1', '1501');
INSERT INTO `t_activity_schedule` VALUES ('52', '1', '1502');
INSERT INTO `t_activity_schedule` VALUES ('53', '1', '1503');
INSERT INTO `t_activity_schedule` VALUES ('54', '1', '1504');
INSERT INTO `t_activity_schedule` VALUES ('55', '1', '1505');
INSERT INTO `t_activity_schedule` VALUES ('56', '1', '1506');
INSERT INTO `t_activity_schedule` VALUES ('57', '1', '1507');

-- ----------------------------
-- Table structure for t_activity_scheme
-- ----------------------------
DROP TABLE IF EXISTS `t_activity_scheme`;
CREATE TABLE `t_activity_scheme` (
  `id` int(11) NOT NULL,
  `activity_id` int(11) DEFAULT NULL COMMENT '幼儿园编号',
  `scheme_id` int(11) DEFAULT NULL COMMENT '方案模板编号',
  `activity_scheme` varchar(255) DEFAULT NULL COMMENT '活动的方案',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_activity_scheme
-- ----------------------------

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
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8;

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
INSERT INTO `t_class_information` VALUES ('63', '12', '21', '12');
INSERT INTO `t_class_information` VALUES ('64', '12', '21', '12');
INSERT INTO `t_class_information` VALUES ('65', '12', '21', '12');
INSERT INTO `t_class_information` VALUES ('66', '12', '21', '12');
INSERT INTO `t_class_information` VALUES ('67', '21', '12', '12');
INSERT INTO `t_class_information` VALUES ('68', '21', '12', '12');
INSERT INTO `t_class_information` VALUES ('69', '21', '12', '21');
INSERT INTO `t_class_information` VALUES ('70', '21', '21', '12');
INSERT INTO `t_class_information` VALUES ('71', '181', '169', '20');
INSERT INTO `t_class_information` VALUES ('72', '181', '169', '20');
INSERT INTO `t_class_information` VALUES ('73', null, null, null);
INSERT INTO `t_class_information` VALUES ('74', '210', '180', '20');

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
INSERT INTO `t_franchisee` VALUES ('0d12a8b83a3411e9ab63f01faf06a374', 'Admin', 'e10adc3949ba59abbe56e057f20f883e', '东方闪电', '18721011060', '18721011060@qq.com', '江西省赣州市', '1', '0', '2019-02-27 10:05:48');
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
  `work` varchar(100) DEFAULT NULL COMMENT '工作人员数量',
  `material_standard` varchar(100) DEFAULT NULL COMMENT '制作物料标准',
  `link_the_material` varchar(100) DEFAULT NULL COMMENT '环节物料',
  `merchant` varchar(100) DEFAULT NULL COMMENT '适用商家描述',
  `playing_method` varchar(500) DEFAULT NULL COMMENT '玩法',
  `rule` varchar(500) DEFAULT NULL COMMENT '规则',
  `teacher_viedo` varchar(255) DEFAULT NULL COMMENT '教师培训视频',
  `work_viedo` varchar(255) DEFAULT NULL COMMENT '兼职培训视频',
  PRIMARY KEY (`game_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_game
-- ----------------------------
INSERT INTO `t_game` VALUES ('1', '无敌风火轮', '5', '1', '团队合作，身体协调。', '小班、中班、大班', '/static/uploadImage/2019-02-13-12-08-3870550559664e43959a71bcf3e4771214.png', '', '15-20分钟', '', '无纺布', '', '', '', null, '', '1、每班15组家庭参加。以迎面接力的形式开展活动，率先完成的即为获胜。 2、大人小孩依次派对进入，每一轮需要5组家庭。第一位和最后一位不能站小朋友。 安全提示：在活动的过程中，请家长注意小朋友行走速度，统一步伐，避免摔跤。', null, null);
INSERT INTO `t_game` VALUES ('2', '勇者大闯关', '5', '1', '亲子协助、体能大挑战。', '小班、中班、大班', '/static/uploadImage/2019-02-13-12-12-42d2fe86e7bb6742ca829de5475ae9296a.png', '', '25分钟', '', '大型充气障碍道具', '', '', '安全提示：家长和小朋友相互迁就，共同前行；家长在跨越跨栏障碍的时候，不可跳跃。', null, '', '1、活动以班级为单位，每个班级派出15-20组家庭参与活动。 2、活动以接力的形式开始，第一组家庭出发，穿越所有障碍物以后，终点裁判员举手示意，第二组成员才可以出发。', null, null);
INSERT INTO `t_game` VALUES ('3', '疯狂粘球', '5', '1', '亲子合作、反应、体能', '小托班，托班，小班，中班', '/static/uploadImage/2019-02-13-12-14-373b6966b7e2b4487bb50903d82263ad80.png', '', '10分钟', '', '粘球、背心、话筒', '', '', '安全提示：家长在移动寻找时，注意小朋友的安全。', null, '', '1、活动以班级为单位，每班派出10组家庭参加比赛。 2、家长背上孩子移动，孩子用手去抢其他班级小朋友身上的粘球。 3、听指令进行游戏：天亮了，可以移动，天黑了，禁止移动。 4、游戏结束时，哪个班级的粘球最多，哪个班级获胜。', null, null);
INSERT INTO `t_game` VALUES ('4', '礼花炮', '1', '2', '增强孩子动手能力', '全年龄段儿童', null, '教师，桌子', '3', '', '', '', '一次性纸杯，气球，剪刀，纸屑', '', null, '', null, null, null);
INSERT INTO `t_game` VALUES ('5', '奶油打脸机', '1', '2', '培养幼儿的手眼协调能力、闪躲能力', '小、中、大班、大人', '/static/uploadImage/2019-02-13-11-29-35741e16ba121c40a787f98bcc1374d1a3.png', '5-8组', '5分钟', '1、布置5-8个课桌，并铺上一次性桌布 2、安装好打脸机放在台子上', '奶油、游戏机器、纸巾、湿纸巾、一次性桌布', '2名工作人员（需要额外 1 名老师负责现场秩序维护）', '采购纸巾、湿纸巾和一次性桌布还有奶油（记得冷藏保存）', '图章', '食品制作类商家', '相同时间内两个人比赛拍击的次数', '两个人将脸部放在指定区域，比赛用手拍击，在进行拍击时，躲避奶油的进攻。', null, null);
INSERT INTO `t_game` VALUES ('6', '疯狂垃圾桶', '2', '2', '锻炼幼儿的投掷能力和手眼协调性', '小、中、大班', '/static/uploadImage/2019-02-05-21-24-01d4b09500a7594bdf8613b26b9c932bb6.png', '5-8组', '5分钟', '1、使用椅子或者塑料围栏作为机器周围围护', '纸团、电池、垃圾桶小机器人', '2', '采购电池、制作纸团', '图章', '玩具类商家', '向移动的机器人垃圾桶内投纸团', '计时两分钟，站在扔纸团线后面 ，把纸球扔进移动的垃圾桶中 看谁进的又多又准', null, null);
INSERT INTO `t_game` VALUES ('7', '皮影戏', null, '4', '增强幼儿对民俗的认知', '全年龄段', null, '', '', '', '', null, '', '', null, '', null, null, null);
INSERT INTO `t_game` VALUES ('8', '捏面人', null, '4', '增强幼儿对民俗的认知', '', null, '', '', '', '', null, '', '', null, '', null, null, null);
INSERT INTO `t_game` VALUES ('9', '同心协力', '5', '1', '团队合作', '中班，大班', '/static/uploadImage/2019-02-13-12-16-538e59781e5e0e42558cbeece971f6842b.png', '草地或树胶操场', '15分钟', '', '脚踏板', '3', '', '', null, '1、活动以家庭为单位，每一轮2组家庭同时游玩，每一个班级派出8组家庭参加。 2、起点和终点各站4组家庭，迎面接力。 3、两组家庭同时上木板，脚板穿进木板上的固定绳中。 安全提示：小朋友站中间，家长站前后两端，小朋友双手抱前面人腰部。', '1、活动以家庭为单位，每一轮2组家庭同时游玩，每一个班级派出8组家庭参加。 2、起点和终点各站4组家庭，迎面接力。 3、两组家庭同时上木板，脚板穿进木板上的固定绳中。 安全提示：小朋友站中间，家长站前后两端，小朋友双手抱前面人腰部。', null, null);
INSERT INTO `t_game` VALUES ('13', '撕纸画', '1', '2', '培养小朋友动手能力', '中班，大班', '/static/uploadImage/2019-02-05-20-59-291a8a566469bb4c3ab9ba1c92640d272b.png', '10组家庭', '15分钟', '一个桌子配四把椅子，教室共六个桌子，黑板上贴一些完成的作品', '彩色宣纸、胶水、A4纸', '2', '将宣纸剪小', '图章', '无', '将宣纸撕成各种形状，然后使用胶水黏贴', '那位小朋友完成的又快又好看', '/static/uploadViedo/2019-02-05-20-59-293397334ad82a4e9f9388711a9ac2fcdf.mp4', '/static/uploadViedo/2019-02-05-20-59-3003b9e38ffb4244a692cca4f68145a025.mp4');
INSERT INTO `t_game` VALUES ('14', '运水达人', '6', '3', '团队合作的快乐、信任', '小班、中班、大班', '/static/uploadImage/2019-02-13-11-44-465a699c3e4a97498c9e2446612ea76c45.png', '以班级为一组每组10位小朋友', '15分钟', '1、室外，最好操场 2、用地胶布置好场地（起点、终点和跑道） 3、在起点和终点各放置一个大水桶', '地胶、水、水桶、运水道具（小碗、汤勺等等）', '起点和终点各一位外加一个裁判', '水桶、运水道具', '奖状', '体育类商家', '使用水桶运输水', '相同时间内，谁运的水多就算胜利', null, null);
INSERT INTO `t_game` VALUES ('15', '小小消防员', '6', '3', '个人挑战、手眼协调', '小中，大班', '/static/uploadImage/2019-02-13-11-56-28786126ccf84c4879a106c8b301c297fd.png', '10个孩子', '5分钟', '1、把kt板放在指定区域 2、用椅子或者围栏布置成间隔还有射击区域', 'kt板、水枪、消防衣', '2个工作人员', '用颜料画火焰图案在kt板', '无', '儿童玩具商家', '使用水枪对kt板进行射击', '5人为一组，看哪一组先将kt板上的颜料射落干净', null, null);

-- ----------------------------
-- Table structure for t_game_operation
-- ----------------------------
DROP TABLE IF EXISTS `t_game_operation`;
CREATE TABLE `t_game_operation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `game_id` int(11) DEFAULT NULL,
  `operation_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_game_operation
-- ----------------------------
INSERT INTO `t_game_operation` VALUES ('3', '6', '1');
INSERT INTO `t_game_operation` VALUES ('4', '6', '2');
INSERT INTO `t_game_operation` VALUES ('5', '6', '3');
INSERT INTO `t_game_operation` VALUES ('6', '6', '4');
INSERT INTO `t_game_operation` VALUES ('7', '6', '5');
INSERT INTO `t_game_operation` VALUES ('8', '13', '6');
INSERT INTO `t_game_operation` VALUES ('9', '13', '7');
INSERT INTO `t_game_operation` VALUES ('10', '13', '8');
INSERT INTO `t_game_operation` VALUES ('11', '13', '9');
INSERT INTO `t_game_operation` VALUES ('12', '13', '10');
INSERT INTO `t_game_operation` VALUES ('13', '5', '11');
INSERT INTO `t_game_operation` VALUES ('14', '5', '12');
INSERT INTO `t_game_operation` VALUES ('15', '5', '13');
INSERT INTO `t_game_operation` VALUES ('16', '5', '14');
INSERT INTO `t_game_operation` VALUES ('17', '5', '15');
INSERT INTO `t_game_operation` VALUES ('21', '14', '19');
INSERT INTO `t_game_operation` VALUES ('22', '14', '20');
INSERT INTO `t_game_operation` VALUES ('23', '14', '21');
INSERT INTO `t_game_operation` VALUES ('24', '14', '22');
INSERT INTO `t_game_operation` VALUES ('25', '14', '23');
INSERT INTO `t_game_operation` VALUES ('26', '15', '24');
INSERT INTO `t_game_operation` VALUES ('27', '15', '25');
INSERT INTO `t_game_operation` VALUES ('28', '15', '26');
INSERT INTO `t_game_operation` VALUES ('29', '15', '27');
INSERT INTO `t_game_operation` VALUES ('30', '15', '28');

-- ----------------------------
-- Table structure for t_information
-- ----------------------------
DROP TABLE IF EXISTS `t_information`;
CREATE TABLE `t_information` (
  `information_id` int(11) NOT NULL AUTO_INCREMENT,
  `site` tinyint(4) DEFAULT NULL COMMENT '场地（0室内，1室外）',
  `reward_type` tinyint(4) DEFAULT NULL COMMENT '0奖牌，1奖杯，2奖状',
  `reward_count` int(11) DEFAULT NULL COMMENT '奖杯数量',
  `reward_content` varchar(100) DEFAULT NULL COMMENT '奖杯/奖牌文字内容',
  `decorate` tinyint(4) DEFAULT NULL COMMENT '0喷绘，1横幅',
  `size` varchar(255) DEFAULT NULL COMMENT '尺寸',
  `content` varchar(100) DEFAULT NULL COMMENT '内容',
  `additional_paid_item` varchar(100) DEFAULT NULL COMMENT '0(摄影),1(摄像),2(航拍)',
  PRIMARY KEY (`information_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_information
-- ----------------------------
INSERT INTO `t_information` VALUES ('1', '0', '0', null, null, '0', null, null, '0');
INSERT INTO `t_information` VALUES ('2', '1', null, null, null, null, null, null, '0');
INSERT INTO `t_information` VALUES ('3', '1', '0', null, '', null, '', '', '0');
INSERT INTO `t_information` VALUES ('4', '1', '1', '12', '见到谁打副本', '0', '3x10', '官方公布', '0');
INSERT INTO `t_information` VALUES ('5', '1', '0', '12', '见到谁打副本', '1', '3x10', '割发代首', '0');
INSERT INTO `t_information` VALUES ('6', '1', '0', '12', '见到谁打副本', '1', '3x10', '割发代首', '0');
INSERT INTO `t_information` VALUES ('7', '1', '0', '12', '见到谁打副本', '1', '3x10', '割发代首', '0');
INSERT INTO `t_information` VALUES ('8', '1', null, null, '', '0', '3x10', '割发代首', '0');
INSERT INTO `t_information` VALUES ('9', '0', '0', '12', '见到谁打副本', '0', '3x10', '割发代首', '0');
INSERT INTO `t_information` VALUES ('10', '0', '0', '12', '见到谁打副本', '1', '3x10', '割发代首', '0');
INSERT INTO `t_information` VALUES ('11', '1', null, null, '', null, '3x10', '割发代首', '0');
INSERT INTO `t_information` VALUES ('12', '0', null, '12', '见到谁打副本', '1', '3x10', '割发代首', '0');
INSERT INTO `t_information` VALUES ('13', '1', null, null, '', null, '', '', '0');
INSERT INTO `t_information` VALUES ('14', '1', null, null, '', null, '', '', '0');
INSERT INTO `t_information` VALUES ('15', null, null, null, '', null, '', '', '0');
INSERT INTO `t_information` VALUES ('16', null, '0', null, '', '0', '3*10', '曹杨新村开学游园会', '0');

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
  `fees` varchar(100) DEFAULT NULL COMMENT '幼儿园收费标准',
  `remark` varchar(100) DEFAULT NULL COMMENT '幼儿园备注',
  PRIMARY KEY (`kindergarten_id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_kindergarten
-- ----------------------------
INSERT INTO `t_kindergarten` VALUES ('34', '金豆豆幼儿园', '余老师', '14763382290', '1', '思维训练特色', '上海市普陀区真北路8-099弄52号', '300/月', '要3个冰雪奇缘的人形立牌');
INSERT INTO `t_kindergarten` VALUES ('35', '曹杨新村幼儿园', '张老师', '14763382290', '0', '环境保护特色', '普陀区曹杨路九〇三弄5号(近曹阳花卉市场)', '280/月', '官方公布');
INSERT INTO `t_kindergarten` VALUES ('37', '长风上和湾幼儿园', '何老师', '14763382290', '0', '科学特色', '长征镇千阳南路88弄70号', '300/月', null);

-- ----------------------------
-- Table structure for t_materials
-- ----------------------------
DROP TABLE IF EXISTS `t_materials`;
CREATE TABLE `t_materials` (
  `material_id` int(11) NOT NULL AUTO_INCREMENT,
  `material_name` varchar(100) DEFAULT NULL COMMENT '物料名称',
  `theme_id` int(11) DEFAULT NULL COMMENT '物料适用主题',
  `material_picture` varchar(100) DEFAULT '' COMMENT '物料图片',
  `supplier` varchar(100) DEFAULT NULL COMMENT '物料供应商',
  `introduce` varchar(255) DEFAULT NULL COMMENT '物料介绍',
  `material_count` int(11) DEFAULT NULL COMMENT '物料数量（原库存）',
  `material_price` decimal(10,2) DEFAULT NULL COMMENT '物料价格',
  `inventory_quantity` int(11) DEFAULT NULL COMMENT '入库数量',
  `the_delivery` int(11) DEFAULT NULL COMMENT '出库数量',
  `now_the_inventory` int(11) DEFAULT NULL COMMENT '现库存',
  `unit` varchar(50) DEFAULT NULL COMMENT '单位',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  `create_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '物料创建时间',
  PRIMARY KEY (`material_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_materials
-- ----------------------------
INSERT INTO `t_materials` VALUES ('1', '工作服', null, '/static/uploadImage/2019/01/17/10/32/08c8ff8f358ebb400d982480c8b85534ff.jpg', '', '工作人员在活动现场必须要穿的一件马甲', null, '5.00', null, null, null, '件', '', '2018-12-16 14:31:32');
INSERT INTO `t_materials` VALUES ('2', '工作牌', null, '/static/uploadImage/2018/12/16/14/33/41a9468f5cb78c4beab07ab3d3c5499f01.', '', '工作人员在工作时佩戴的牌子', null, '3.00', null, null, null, null, null, '2018-12-16 14:33:41');
INSERT INTO `t_materials` VALUES ('4', '充气拱门', null, '/static/uploadImage/2018/12/16/14/37/12c6126dc3dc7f49f5b6c3c50e23a82c43.', '', '环境布置活动现场要用到的装饰', null, '200.00', null, null, null, null, null, '2018-12-16 14:37:12');
INSERT INTO `t_materials` VALUES ('5', '鼓风机', null, '/static/uploadImage/2018/12/16/14/38/30f7c82fba70f340f5ad5d644e0c5f45db.', '', '和充气拱门配对使用，一个充气拱门配一个或两个鼓风机', null, '80.00', null, null, null, null, null, '2018-12-16 14:38:30');
INSERT INTO `t_materials` VALUES ('6', '拖线板', null, '/static/uploadImage/2019-01-31-20-38-01ba03e94eba5e4b66855787566e9bf3f3.jpg', '', '活动布置时要用到电时是必不可少的，有时活动要用电是必备的', '3', '50.00', null, null, null, null, null, '2018-12-16 14:40:59');
INSERT INTO `t_materials` VALUES ('7', '黄沙', null, '/static/uploadImage/2019-01-31-20-37-4403a5169d19d64c219b8afafb54727c2b.jpg', '', '当有充气拱门时需要黄沙放在充气拱门下面固定充气拱门', '2', '3.00', null, null, null, null, null, '2018-12-16 14:51:25');
INSERT INTO `t_materials` VALUES ('8', '绳子', null, '/static/uploadImage/2018/12/16/14/52/138d0983ed861848bbbe3a784423f991f6.', '', '有些活动有需要绳子固定的', null, '5.00', null, null, null, null, null, '2018-12-16 14:52:13');
INSERT INTO `t_materials` VALUES ('9', '地胶', null, '/static/uploadImage/2018/12/16/15/24/508cefcb4ec4464ddfb1db7ef873089917.', '', '地胶可以让拖线板紧贴地面避免小朋友摔倒，同时也可以做地面起终点标识', null, '4.00', null, null, null, null, null, '2018-12-16 14:53:58');
INSERT INTO `t_materials` VALUES ('16', '某某物料', null, '/static/uploadImage/2019-01-25-22-47-502cb948c4db334b5f81bcc3320f2f40d5.jpg', null, 'fsdf', '222', '222.00', null, null, null, null, null, '2019-01-25 22:48:07');
INSERT INTO `t_materials` VALUES ('17', '打气泵', null, '/static/uploadImage/2019-01-31-20-36-554baf112c9f0844e9a11fa4a426f22062.jpg', null, '布置环境时打气球所用的工具', '5', '20.00', null, null, null, null, null, '2019-01-27 09:58:08');
INSERT INTO `t_materials` VALUES ('18', '泡泡机', '3', null, null, '', '1', null, null, null, '1', '台', '', '2019-02-12 19:11:50');
INSERT INTO `t_materials` VALUES ('19', '泡沫机', '3', null, null, '', '2', null, null, null, '2', '台', '', '2019-02-15 10:48:02');
INSERT INTO `t_materials` VALUES ('20', '泡沫粉', '3', null, null, '', '2', null, null, null, '2', '包', '', '2019-02-15 10:48:30');

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
  `step` int(11) DEFAULT NULL COMMENT '步骤',
  `content` varchar(500) DEFAULT NULL COMMENT '具体内容',
  `material_instructions` varchar(255) DEFAULT NULL COMMENT '材料使用说明',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`operation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_operation
-- ----------------------------
INSERT INTO `t_operation` VALUES ('1', '1', '引导亲子家庭进入场地', '', '孩子跟家长站在围栏周围');
INSERT INTO `t_operation` VALUES ('2', '2', '欢迎词&游戏介绍', '图章', '让家长将游园卡给老师盖章');
INSERT INTO `t_operation` VALUES ('3', '3', '发放纸团', '每个小朋友3-5个纸团', '宣传环保');
INSERT INTO `t_operation` VALUES ('4', '4', '投掷比赛开始', '1、 工作人员打开机器人开关 2、 让小朋友向机器人桶内投掷纸团 3、 要求家长带领小朋友完成投掷 4、 告诉家长和小朋友机器人是无规则运动 5、 清点投进纸团的数量 6、 让小朋友们领取小礼品', '');
INSERT INTO `t_operation` VALUES ('5', '5', '结束语&提醒大家那好随身物品有序离开', '家长离开的同时，迅速规整物料，让下面参加游戏的家庭有序入场', '');
INSERT INTO `t_operation` VALUES ('6', '1', '引导亲子家庭入座', '', '孩子跟家长相对而坐');
INSERT INTO `t_operation` VALUES ('7', '2', '欢迎词&游戏介绍', '分发基本的材料', '让家长将游园卡放在坐上便于老师盖章');
INSERT INTO `t_operation` VALUES ('8', '3', '', '家长将宣纸剪小', '');
INSERT INTO `t_operation` VALUES ('9', '4', '游戏开始', '1、 由工作人员说活动开始 2、由工作人员先做简单的步骤演示 3、 然后小朋友在家长的帮助下操作 4、将一片片小纸撕成自己想要的形状 5、小朋友使用胶水完成黏贴 6、完成最后喜欢的动物图形', '');
INSERT INTO `t_operation` VALUES ('10', '5', '结束语&提醒大家那好随身物品有序离开', '家长离开的同时，迅速整理桌子上的垃圾（在制作完时也可以邀请小朋友帮助老师整理教室环境，将垃圾扔到垃圾篓），道具归位迎接下轮参加游戏的小朋友', '');
INSERT INTO `t_operation` VALUES ('11', '1', '引导亲子家庭进入场地', '', '孩子站在课桌前');
INSERT INTO `t_operation` VALUES ('12', '2', '欢迎词加游戏介绍', '图章', '让家长将游园卡放在坐上便于老师盖章');
INSERT INTO `t_operation` VALUES ('13', '3', '', '将奶油挤在脸拍上', '');
INSERT INTO `t_operation` VALUES ('14', '4', '游戏开始', '1、由工作人员大声说了:”比赛开始“ 2、两个人同时开始用手拍击按钮 3、观察比赛的进程和拍子的移动方向 4、躲避即将排在脸上的奶油 5、比赛的胜利方给输的那位用湿巾纸清理脸上的奶油 6、用纸巾擦干净桌面', '');
INSERT INTO `t_operation` VALUES ('15', '5', '结束语&提醒大家那好随身物品有序离开', '离开的同时，迅速整理桌子上的垃圾 （在制作完时也可以邀请参赛者帮助老师整理教室环境，将垃圾扔到垃圾篓）', '');
INSERT INTO `t_operation` VALUES ('19', '1', '引导小朋友进入场地', '', '以班级为一组，必须比赛人数相同');
INSERT INTO `t_operation` VALUES ('20', '2', '欢迎词&游戏介绍', '裁判', '分发运水道具');
INSERT INTO `t_operation` VALUES ('21', '3', '', '大水桶', '大水桶内水分量充足');
INSERT INTO `t_operation` VALUES ('22', '4', '比赛开始', '1、由裁判大声说:”比赛开始“ 2、每组小朋友同时向水桶奔跑 3、使用手中的运水道具装水 4、返回起点 5、将道具内的水导入自己班内的桶内 6、测量水位高度，宣布成绩', '');
INSERT INTO `t_operation` VALUES ('23', '5', '结束语&提醒大家那好随身物品有序离开', '各个道具归位，并且将起点的桶内水清零，将终点桶内的水装满', '');
INSERT INTO `t_operation` VALUES ('24', '1', '引导小朋友进入场地', '', '以5人为一组');
INSERT INTO `t_operation` VALUES ('25', '2', '欢迎词&游戏介绍', '裁判', '分发水枪');
INSERT INTO `t_operation` VALUES ('26', '3', '无', 'kt板', '');
INSERT INTO `t_operation` VALUES ('27', '4', '游戏开始', '1、由裁判大声说:”比赛开始“ 2、每组小朋友向kt板用水枪射击 3、观察提示小朋友kt板还有哪里颜料 4、继续射击 5、直到颜料全部掉落 6、宣布哪一组孩子完成快', '');
INSERT INTO `t_operation` VALUES ('28', '5', '结束语&提醒大家那好随身物品有序离开', '清理场地，如还有其他小朋友参加游戏，更换kt板，围栏归位', '');

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
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_pictures
-- ----------------------------
INSERT INTO `t_pictures` VALUES ('111', null, '/static/uploadImage/2019-02-19-22-17-04bb6bfa2442454a689abe4ce56ddbc3c3.jpg');
INSERT INTO `t_pictures` VALUES ('112', null, '/static/uploadImage/2019-02-19-22-17-04f6fb29c61ce444efb4e812b9ee3f8f87.png');
INSERT INTO `t_pictures` VALUES ('113', null, '/static/uploadImage/2019-02-19-22-27-51599e7c77de0040d6b69e94ca7ac5bc59.jpg');
INSERT INTO `t_pictures` VALUES ('114', null, '/static/uploadImage/2019-02-19-22-27-515f33c872c2814f329c3e107d0ec501fa.jpg');
INSERT INTO `t_pictures` VALUES ('115', null, '/static/uploadImage/2019-02-19-22-27-5298f9442477184fe3995167f9cdf15ffd.jpg');
INSERT INTO `t_pictures` VALUES ('116', null, '/static/uploadImage/2019-02-19-22-35-46c1aa76d99054470eb49b29092d159984.jpg');
INSERT INTO `t_pictures` VALUES ('117', null, '/static/uploadImage/2019-02-19-22-35-46795d9ce4657d4272abfa24f005f499cd.jpg');
INSERT INTO `t_pictures` VALUES ('118', null, '/static/uploadImage/2019-02-19-22-35-46e211e820d9794af7baaedb99e908bc23.jpg');

-- ----------------------------
-- Table structure for t_properties
-- ----------------------------
DROP TABLE IF EXISTS `t_properties`;
CREATE TABLE `t_properties` (
  `game_properties_id` int(11) NOT NULL AUTO_INCREMENT,
  `game_properties` varchar(100) DEFAULT NULL COMMENT '游戏属性',
  `describe` varchar(255) DEFAULT NULL COMMENT '游戏属性描述',
  PRIMARY KEY (`game_properties_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_properties
-- ----------------------------
INSERT INTO `t_properties` VALUES ('1', '手工类', '锻炼幼儿的手眼协调能力');
INSERT INTO `t_properties` VALUES ('2', '环保类', '增强幼儿的环保意识');
INSERT INTO `t_properties` VALUES ('3', '科技类', '加强幼儿对科技的认知');
INSERT INTO `t_properties` VALUES ('4', '节日类', '加强幼儿对节日信息的了解');
INSERT INTO `t_properties` VALUES ('5', '亲子运动会', '加强幼儿与父母之间的沟通和交流');
INSERT INTO `t_properties` VALUES ('6', '夏日水世界', '夏日让孩子们在水的世界中畅玩');

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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

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
INSERT INTO `t_ring_description` VALUES ('39', '3', '12', '粉+提付伲蓝', '2');
INSERT INTO `t_ring_description` VALUES ('40', '3', '12', '粉+提付伲蓝', '2');
INSERT INTO `t_ring_description` VALUES ('41', '3', '12', '粉+提付伲蓝', '2');
INSERT INTO `t_ring_description` VALUES ('42', '3', '21', '粉+提付伲蓝', '2');
INSERT INTO `t_ring_description` VALUES ('43', '2', '21', '粉+提付伲蓝', '2');
INSERT INTO `t_ring_description` VALUES ('44', '3', '21', '粉+提付伲蓝', '2');
INSERT INTO `t_ring_description` VALUES ('45', '3', '21', '粉+提付伲蓝', '4');
INSERT INTO `t_ring_description` VALUES ('46', '5', '12', '粉+提付伲蓝', '3');
INSERT INTO `t_ring_description` VALUES ('47', '3', null, '粉+提付伲蓝', '1');
INSERT INTO `t_ring_description` VALUES ('48', '3', null, '粉+提付伲蓝', '1');
INSERT INTO `t_ring_description` VALUES ('49', null, null, '', null);
INSERT INTO `t_ring_description` VALUES ('50', '3', null, '粉+提付伲蓝', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=1508 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_schedule
-- ----------------------------
INSERT INTO `t_schedule` VALUES ('1451', '明确活动时间', '2018-12-06 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1452', '创建活动群', '2018-12-06 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1453', '方案确定时间', '2018-12-08 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1454', '查看场地/接洽时间', '2018-12-06 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1455', '教师培训', '2018-12-06 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1456', '会前会/内部培训', '2018-12-06 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1457', '出物料清单', '2018-12-08 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1458', '物料清单审核', '2018-12-08 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1459', '物料采购时间', '2018-12-09 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1460', '物料准备时间', '2018-12-08 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1461', '物料审核时间', '2018-12-09 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1462', '游园卡', '2018-12-08 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1463', '邀请函', '2018-12-08 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1464', '门卡', '2018-12-08 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1465', '确定工作人员数', '2018-12-06 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1466', '商家和艺人确定', '2018-12-06 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1467', '人员培训', '2018-12-12 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1468', '场地布置', '2018-12-12 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1469', '物料回收', '2018-12-13 00:00:00', null, '伍群斌', null);
INSERT INTO `t_schedule` VALUES ('1470', '明确活动时间', '2018-12-05 00:00:00', '2018-12-05 00:00:00', '豆豆', '确认金豆豆幼儿园迎新游园会活动');
INSERT INTO `t_schedule` VALUES ('1471', '创建活动群', '2018-12-05 00:00:00', '2018-12-06 00:00:00', '豆豆', '创建金豆豆幼儿园迎新活动沟通群');
INSERT INTO `t_schedule` VALUES ('1472', '方案确定时间', '2018-12-07 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1473', '查看场地/接洽时间', '2018-12-05 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1474', '教师培训', '2018-12-05 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1475', '会前会/内部培训', '2018-12-05 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1476', '出物料清单', '2018-12-07 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1477', '物料清单审核', '2018-12-07 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1478', '物料采购时间', '2018-12-08 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1479', '物料准备时间', '2018-12-07 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1480', '物料审核时间', '2018-12-08 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1481', '游园卡', '2018-12-07 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1482', '邀请函', '2018-12-07 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1483', '门卡', '2018-12-07 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1484', '确定工作人员数', '2018-12-05 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1485', '商家和艺人确定', '2018-12-05 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1486', '人员培训', '2018-12-11 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1487', '场地布置', '2018-12-11 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1488', '物料回收', '2018-12-12 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1489', '明确活动时间', '2019-02-25 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1490', '创建活动群', '2019-02-25 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1491', '方案确定时间', '2019-02-27 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1492', '查看场地/接洽时间', '2019-02-25 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1493', '教师培训', '2019-02-25 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1494', '会前会/内部培训', '2019-02-25 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1495', '出物料清单', '2019-02-27 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1496', '物料清单审核', '2019-02-27 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1497', '物料采购时间', '2019-02-28 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1498', '物料准备时间', '2019-02-27 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1499', '物料审核时间', '2019-02-28 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1500', '游园卡', '2019-02-27 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1501', '邀请函', '2019-02-27 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1502', '门卡', '2019-02-27 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1503', '确定工作人员数', '2019-02-25 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1504', '商家和艺人确定', '2019-02-25 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1505', '人员培训', '2019-03-03 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1506', '场地布置', '2019-03-03 00:00:00', null, null, null);
INSERT INTO `t_schedule` VALUES ('1507', '物料回收', '2019-03-04 00:00:00', null, null, null);

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_supplier
-- ----------------------------
INSERT INTO `t_supplier` VALUES ('1', '发发呆', 'user', 'e10adc3949ba59abbe56e057f20f883e', '14763382290', '187384739@qq.com', '上海市静安区', null, '1', '2018-11-28 11:18:35');
INSERT INTO `t_supplier` VALUES ('2', '发发呆', 'Admin', 'e10adc3949ba59abbe56e057f20f883e', '14763382290', '187384739@qq.com', '上海市静安区', null, '0', '2019-02-27 12:52:56');

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
INSERT INTO `t_sys_user` VALUES ('1', 'Admin', '总管理员', 'e10adc3949ba59abbe56e057f20f883e', '14763382290', '187384739@qq.com', '上海市静安区彭浦镇高平路', '1', '0');
INSERT INTO `t_sys_user` VALUES ('2', 'user', '任性', 'e10adc3949ba59abbe56e057f20f883e', '18721011060', 'm18816485440@163.com', '上海市静安区彭浦镇高平路永和家园', '0', '0');
INSERT INTO `t_sys_user` VALUES ('26483dd7398711e9ab63f01faf06a374', 'mikkle', 'qq', 'e10adc3949ba59abbe56e057f20f883e', '14763382290', 'qq', '发电房', '0', '0');
INSERT INTO `t_sys_user` VALUES ('6021e3ef3a3e11e9ab63f01faf06a374', '任性', '发电房', 'e10adc3949ba59abbe56e057f20f883e', '14763382290', '187384739@qq.com', '上海市静安区', '0', '0');

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
