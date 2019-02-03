/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50723
Source Host           : localhost:3306
Source Database       : db_activity

Target Server Type    : MYSQL
Target Server Version : 50723
File Encoding         : 65001

Date: 2019-01-19 22:19:14
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

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
-- Table structure for t_activity_game
-- ----------------------------
DROP TABLE IF EXISTS `t_activity_game`;
CREATE TABLE `t_activity_game` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) DEFAULT NULL,
  `game_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8;

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
-- Table structure for t_activity_photos
-- ----------------------------
DROP TABLE IF EXISTS `t_activity_photos`;
CREATE TABLE `t_activity_photos` (
  `activity_photos_id` int(11) NOT NULL AUTO_INCREMENT,
  `kindergarten` varchar(100) DEFAULT NULL,
  `theme` varchar(100) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`activity_photos_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
-- Table structure for t_class_information
-- ----------------------------
DROP TABLE IF EXISTS `t_class_information`;
CREATE TABLE `t_class_information` (
  `class_information_id` int(11) NOT NULL AUTO_INCREMENT,
  `headcount` int(11) DEFAULT NULL COMMENT '幼儿园总人数',
  `number_of_contract` int(11) DEFAULT NULL COMMENT '合同约定人数',
  `number_of_teachers` int(11) DEFAULT NULL COMMENT '教师人数',
  PRIMARY KEY (`class_information_id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;

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
-- Table structure for t_course_type
-- ----------------------------
DROP TABLE IF EXISTS `t_course_type`;
CREATE TABLE `t_course_type` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

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
-- Table structure for t_game
-- ----------------------------
DROP TABLE IF EXISTS `t_game`;
CREATE TABLE `t_game` (
  `game_id` int(11) NOT NULL AUTO_INCREMENT,
  `game_name` varchar(100) DEFAULT NULL COMMENT '游戏名称',
  `game_properties` varchar(255) DEFAULT NULL COMMENT '游戏属性',
  `theme_id` int(11) DEFAULT NULL COMMENT '活动适用主题',
  `game_purpose` varchar(100) DEFAULT NULL COMMENT '游戏目的',
  `game_object` varchar(100) DEFAULT NULL COMMENT '游戏适用对象',
  `game_picture` varchar(255) DEFAULT NULL COMMENT '游戏图片',
  `number_of_people` varchar(100) DEFAULT NULL COMMENT '场地及人数要求',
  `play_time` varchar(50) DEFAULT NULL COMMENT '游戏时间要求',
  `standard` varchar(100) DEFAULT NULL COMMENT '场地布置标准',
  `stores_list` varchar(255) DEFAULT NULL COMMENT '游戏物料清单',
  `work` varchar(100) DEFAULT NULL COMMENT '工作人员',
  `material_standard` varchar(100) DEFAULT NULL COMMENT '制作物料标准',
  `link_the_material` varchar(100) DEFAULT NULL COMMENT '环节物料',
  `merchant` varchar(100) DEFAULT NULL COMMENT '适用商家描述',
  `playing_method` varchar(500) DEFAULT NULL COMMENT '玩法',
  `rule` varchar(500) DEFAULT NULL COMMENT '规则',
  `operation_id` int(11) DEFAULT NULL COMMENT '游戏培训编号',
  PRIMARY KEY (`game_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_information
-- ----------------------------
DROP TABLE IF EXISTS `t_information`;
CREATE TABLE `t_information` (
  `information_id` int(11) NOT NULL AUTO_INCREMENT,
  `activity theme` varchar(100) DEFAULT NULL COMMENT '活动主题',
  `activity_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '活动时间',
  `activity_address` varchar(100) DEFAULT NULL COMMENT '活动地址',
  `site` tinyint(4) DEFAULT NULL COMMENT '0室内，1室外',
  `reward_type` tinyint(4) DEFAULT NULL COMMENT '0奖杯，1奖牌，2奖状',
  `reward_count` int(11) DEFAULT NULL COMMENT '奖杯数量',
  `reward_content` varchar(100) DEFAULT NULL COMMENT '奖杯/奖牌文字内容',
  `decorate` tinyint(4) DEFAULT NULL COMMENT '0喷绘，1横幅',
  `additional_paid_item` tinyint(5) DEFAULT NULL COMMENT '0(摄影)1(摄像)2(航拍)',
  PRIMARY KEY (`information_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_kindergarten_schedule
-- ----------------------------
DROP TABLE IF EXISTS `t_kindergarten_schedule`;
CREATE TABLE `t_kindergarten_schedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kindergarten_id` int(11) DEFAULT NULL COMMENT '幼儿园编号',
  `schedule_id` int(11) DEFAULT NULL COMMENT '信息进度编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_materials
-- ----------------------------
DROP TABLE IF EXISTS `t_materials`;
CREATE TABLE `t_materials` (
  `material_id` int(11) NOT NULL AUTO_INCREMENT,
  `material_name` varchar(100) DEFAULT NULL COMMENT '物料名称',
  `material_picture` varchar(100) DEFAULT NULL COMMENT '物料图片',
  `supplier` varchar(100) DEFAULT NULL COMMENT '物料供应商',
  `introduce` varchar(255) DEFAULT NULL COMMENT '物料介绍',
  `material_count` int(11) DEFAULT NULL COMMENT '物料数量',
  `material_price` decimal(10,2) DEFAULT NULL COMMENT '物料价格',
  `create_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`material_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

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
-- Table structure for t_operation
-- ----------------------------
DROP TABLE IF EXISTS `t_operation`;
CREATE TABLE `t_operation` (
  `operation_id` int(11) NOT NULL AUTO_INCREMENT,
  `step` int(11) DEFAULT NULL COMMENT '步骤',
  `content` varchar(500) DEFAULT NULL COMMENT '具体内容',
  `material_instructions` varchar(255) DEFAULT NULL COMMENT '材料使用说明',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `game_picture` varchar(255) DEFAULT NULL COMMENT '游戏图片',
  `teacher_viedo` varchar(255) DEFAULT NULL COMMENT '游戏教师培训视频',
  `work_viedo` varchar(255) DEFAULT NULL COMMENT '游戏兼职培训视频',
  PRIMARY KEY (`operation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
-- Table structure for t_pictures
-- ----------------------------
DROP TABLE IF EXISTS `t_pictures`;
CREATE TABLE `t_pictures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_photos_id` int(11) DEFAULT NULL,
  `picture` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=1337 DEFAULT CHARSET=utf8;

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
-- Table structure for t_worker_sign_up
-- ----------------------------
DROP TABLE IF EXISTS `t_worker_sign_up`;
CREATE TABLE `t_worker_sign_up` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `worker_id` int(11) DEFAULT NULL,
  `sign_up_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
