/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 80402
 Source Host           : localhost:3306

 Target Server Type    : MySQL
 Target Server Version : 80402
 File Encoding         : 65001

 Date: 10/12/2024 08:24:39
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '配置文件' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES (1, '轮播图1', 'upload/config1.jpg');
INSERT INTO `config` VALUES (2, '轮播图2', 'upload/config2.jpg');
INSERT INTO `config` VALUES (3, '轮播图3', 'upload/config3.jpg');

-- ----------------------------
-- Table structure for dictionary
-- ----------------------------
DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE `dictionary`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '字段名',
  `code_index` int NULL DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int NULL DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '字典' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dictionary
-- ----------------------------
INSERT INTO `dictionary` VALUES (1, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2024-12-02 11:33:33');
INSERT INTO `dictionary` VALUES (2, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2024-12-02 11:33:33');
INSERT INTO `dictionary` VALUES (3, 'gonggao_types', '公告类型', 1, '公告类型1', NULL, NULL, '2024-12-02 11:33:33');
INSERT INTO `dictionary` VALUES (4, 'gonggao_types', '公告类型', 2, '公告类型2', NULL, NULL, '2024-12-02 11:33:33');
INSERT INTO `dictionary` VALUES (5, 'renwu_zhuangtai_types', '任务状态', 1, '未领取', NULL, NULL, '2024-12-02 11:33:33');
INSERT INTO `dictionary` VALUES (6, 'renwu_zhuangtai_types', '任务状态', 2, '已领取', NULL, NULL, '2024-12-02 11:33:33');
INSERT INTO `dictionary` VALUES (7, 'renwu_zhuangtai_types', '任务状态', 3, '已完成', NULL, NULL, '2024-12-02 11:33:33');
INSERT INTO `dictionary` VALUES (8, 'renwu_types', '任务类型', 1, '任务类型1', NULL, NULL, '2024-12-02 11:33:33');
INSERT INTO `dictionary` VALUES (9, 'renwu_types', '任务类型', 2, '任务类型2', NULL, NULL, '2024-12-02 11:33:33');
INSERT INTO `dictionary` VALUES (10, 'renwu_types', '任务类型', 3, '任务类型3', NULL, NULL, '2024-12-02 11:33:33');
INSERT INTO `dictionary` VALUES (11, 'renwu_types', '任务类型', 4, '任务类型4', NULL, NULL, '2024-12-02 11:33:33');
INSERT INTO `dictionary` VALUES (12, 'renwu_yesno_types', '申请状态', 1, '待审核', NULL, NULL, '2024-12-02 11:33:33');
INSERT INTO `dictionary` VALUES (13, 'renwu_yesno_types', '申请状态', 2, '同意', NULL, NULL, '2024-12-02 11:33:33');
INSERT INTO `dictionary` VALUES (14, 'renwu_yesno_types', '申请状态', 3, '拒绝', NULL, NULL, '2024-12-02 11:33:33');
INSERT INTO `dictionary` VALUES (15, 'renwu_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2024-12-02 11:33:33');
INSERT INTO `dictionary` VALUES (16, 'renwu_order_types', '订单类型', 101, '已申请领取', NULL, NULL, '2024-12-02 11:33:33');
INSERT INTO `dictionary` VALUES (17, 'renwu_order_types', '订单类型', 102, '已取消领取', NULL, NULL, '2024-12-02 11:33:33');
INSERT INTO `dictionary` VALUES (18, 'renwu_order_types', '订单类型', 103, '已同意领取', NULL, NULL, '2024-12-02 11:33:33');
INSERT INTO `dictionary` VALUES (19, 'renwu_order_types', '订单类型', 105, '已评价', NULL, NULL, '2024-12-02 11:33:33');
INSERT INTO `dictionary` VALUES (20, 'renwu_order_types', '订单类型', 106, '已完成', NULL, NULL, '2024-12-02 11:33:33');
INSERT INTO `dictionary` VALUES (21, 'renwu_order_types', '订单类型', 107, '已放弃领取', NULL, NULL, '2024-12-02 11:33:33');
INSERT INTO `dictionary` VALUES (22, 'renwu_chat_types', '数据类型', 1, '问题', NULL, NULL, '2024-12-02 11:33:33');
INSERT INTO `dictionary` VALUES (23, 'renwu_chat_types', '数据类型', 2, '回复', NULL, NULL, '2024-12-02 11:33:33');
INSERT INTO `dictionary` VALUES (24, 'zhuangtai_types', '状态', 1, '未回复', NULL, NULL, '2024-12-02 11:33:33');
INSERT INTO `dictionary` VALUES (25, 'zhuangtai_types', '状态', 2, '已回复', NULL, NULL, '2024-12-02 11:33:33');
INSERT INTO `dictionary` VALUES (26, 'forum_types', '帖子类型', 1, '帖子类型1', NULL, NULL, '2024-12-02 11:33:33');
INSERT INTO `dictionary` VALUES (27, 'forum_types', '帖子类型', 2, '帖子类型2', NULL, NULL, '2024-12-02 11:33:33');
INSERT INTO `dictionary` VALUES (28, 'forum_types', '帖子类型', 3, '帖子类型3', NULL, NULL, '2024-12-02 11:33:33');
INSERT INTO `dictionary` VALUES (29, 'forum_state_types', '帖子状态', 1, '发帖', NULL, NULL, '2024-12-02 11:33:33');
INSERT INTO `dictionary` VALUES (30, 'forum_state_types', '帖子状态', 2, '回帖', NULL, NULL, '2024-12-02 11:33:33');
INSERT INTO `dictionary` VALUES (31, 'renwu_types', '任务类型', 5, '任务类型5', NULL, '', '2024-12-02 11:33:33');

-- ----------------------------
-- Table structure for fabuyonghu
-- ----------------------------
DROP TABLE IF EXISTS `fabuyonghu`;
CREATE TABLE `fabuyonghu`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '账户',
  `password` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '密码',
  `fabuyonghu_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '发布用户姓名 Search111 ',
  `fabuyonghu_phone` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '发布用户手机号',
  `fabuyonghu_id_number` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '发布用户身份证号',
  `fabuyonghu_photo` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '发布用户头像',
  `sex_types` int NULL DEFAULT NULL COMMENT '性别',
  `new_money` decimal(10, 2) NULL DEFAULT NULL COMMENT '余额 ',
  `fabuyonghu_email` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '发布用户邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '发布用户' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fabuyonghu
-- ----------------------------
INSERT INTO `fabuyonghu` VALUES (1, 'a1', '123456', '发布用户姓名1', '17703786901', '410224199010102001', 'upload/fabuyonghu1.jpg', 2, 787.92, '1@qq.com', '2024-12-02 11:33:33');
INSERT INTO `fabuyonghu` VALUES (2, 'a2', '123456', '发布用户姓名2', '17703786902', '410224199010102002', 'upload/fabuyonghu2.jpg', 1, 532.57, '2@qq.com', '2024-12-02 11:33:33');
INSERT INTO `fabuyonghu` VALUES (3, 'a3', '123456', '发布用户姓名3', '17703786903', '410224199010102003', 'upload/fabuyonghu3.jpg', 2, 996.85, '3@qq.com', '2024-12-02 11:33:33');

-- ----------------------------
-- Table structure for forum
-- ----------------------------
DROP TABLE IF EXISTS `forum`;
CREATE TABLE `forum`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `jiequyonghu_id` int NULL DEFAULT NULL COMMENT '接取用户',
  `fabuyonghu_id` int NULL DEFAULT NULL COMMENT '发布用户',
  `users_id` int NULL DEFAULT NULL COMMENT '管理员',
  `forum_content` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '发布内容',
  `super_ids` int NULL DEFAULT NULL COMMENT '父id',
  `forum_types` int NULL DEFAULT NULL COMMENT '帖子类型  Search111 ',
  `forum_state_types` int NULL DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '论坛' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of forum
-- ----------------------------
INSERT INTO `forum` VALUES (1, '帖子标题1', 1, NULL, NULL, '发布内容1', 434, 3, 1, '2024-12-02 11:33:33', '2024-12-02 11:33:33', '2024-12-02 11:33:33');
INSERT INTO `forum` VALUES (2, '帖子标题2', 2, NULL, NULL, '发布内容2', 27, 3, 1, '2024-12-02 11:33:33', '2024-12-02 11:33:33', '2024-12-02 11:33:33');
INSERT INTO `forum` VALUES (3, '帖子标题3', 2, NULL, NULL, '发布内容3', 234, 1, 1, '2024-12-02 11:33:33', '2024-12-02 11:33:33', '2024-12-02 11:33:33');
INSERT INTO `forum` VALUES (4, '帖子标题4', 1, NULL, NULL, '发布内容4', 262, 2, 1, '2024-12-02 11:33:33', '2024-12-02 11:33:33', '2024-12-02 11:33:33');
INSERT INTO `forum` VALUES (5, '帖子标题5', 1, NULL, NULL, '发布内容5', 199, 2, 1, '2024-12-02 11:33:33', '2024-12-02 11:33:33', '2024-12-02 11:33:33');
INSERT INTO `forum` VALUES (6, '帖子标题6', 2, NULL, NULL, '发布内容6', 298, 1, 1, '2024-12-02 11:33:33', '2024-12-02 11:33:33', '2024-12-02 11:33:33');
INSERT INTO `forum` VALUES (7, '帖子标题7', 3, NULL, NULL, '发布内容7', 406, 1, 1, '2024-12-02 11:33:33', '2024-12-02 11:33:33', '2024-12-02 11:33:33');
INSERT INTO `forum` VALUES (8, '帖子标题8', 3, NULL, NULL, '发布内容8', 134, 1, 1, '2024-12-02 11:33:33', '2024-12-02 11:33:33', '2024-12-02 11:33:33');
INSERT INTO `forum` VALUES (9, '帖子标题9', 2, NULL, NULL, '发布内容9', 411, 3, 1, '2024-12-02 11:33:33', '2024-12-02 11:33:33', '2024-12-02 11:33:33');
INSERT INTO `forum` VALUES (10, '帖子标题10', 2, NULL, NULL, '发布内容10', 73, 3, 1, '2024-12-02 11:33:33', '2024-12-02 11:33:33', '2024-12-02 11:33:33');
INSERT INTO `forum` VALUES (11, '帖子标题11', 3, NULL, NULL, '发布内容11', 186, 1, 1, '2024-12-02 11:33:33', '2024-12-02 11:33:33', '2024-12-02 11:33:33');
INSERT INTO `forum` VALUES (12, '帖子标题12', 2, NULL, NULL, '发布内容12', 111, 2, 1, '2024-12-02 11:33:33', '2024-12-02 11:33:33', '2024-12-02 11:33:33');
INSERT INTO `forum` VALUES (13, '帖子标题13', 3, NULL, NULL, '发布内容13', 226, 2, 1, '2024-12-02 11:33:33', '2024-12-02 11:33:33', '2024-12-02 11:33:33');
INSERT INTO `forum` VALUES (14, '帖子标题14', 3, NULL, NULL, '发布内容14', 281, 1, 1, '2024-12-02 11:33:33', '2024-12-02 11:33:33', '2024-12-02 11:33:33');
INSERT INTO `forum` VALUES (15, NULL, 4, NULL, NULL, 'gdsafda ', 14, NULL, 2, '2024-12-02 11:33:33', '2024-12-02 11:33:33', '2024-12-02 11:33:33');
INSERT INTO `forum` VALUES (16, NULL, NULL, NULL, 1, '高公公', 14, NULL, 2, '2024-12-02 11:33:33', '2024-12-02 11:33:33', '2024-12-02 11:33:33');
INSERT INTO `forum` VALUES (17, NULL, NULL, 1, NULL, '孤鸿寡鹄', 14, NULL, 2, '2024-12-02 11:33:33', '2024-12-02 11:33:33', '2024-12-02 11:33:33');

-- ----------------------------
-- Table structure for gonggao
-- ----------------------------
DROP TABLE IF EXISTS `gonggao`;
CREATE TABLE `gonggao`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '任务资讯公告名称 Search111  ',
  `gonggao_photo` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '任务资讯公告图片 ',
  `gonggao_types` int NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '任务资讯公告发布时间 ',
  `gonggao_content` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '任务资讯公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '任务资讯公告' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gonggao
-- ----------------------------
INSERT INTO `gonggao` VALUES (1, '任务资讯公告名称1', 'upload/gonggao1.jpg', 2, '2023-03-22 11:33:41', '任务资讯公告详情1', '2024-12-02 11:33:33');
INSERT INTO `gonggao` VALUES (2, '任务资讯公告名称2', 'upload/gonggao2.jpg', 1, '2023-03-22 11:33:41', '任务资讯公告详情2', '2024-12-02 11:33:33');
INSERT INTO `gonggao` VALUES (3, '任务资讯公告名称3', 'upload/gonggao3.jpg', 2, '2023-03-22 11:33:41', '任务资讯公告详情3', '2024-12-02 11:33:33');
INSERT INTO `gonggao` VALUES (4, '任务资讯公告名称4', 'upload/gonggao4.jpg', 2, '2023-03-22 11:33:41', '任务资讯公告详情4', '2024-12-02 11:33:33');
INSERT INTO `gonggao` VALUES (5, '任务资讯公告名称5', 'upload/gonggao5.jpg', 1, '2023-03-22 11:33:41', '任务资讯公告详情5', '2024-12-02 11:33:33');
INSERT INTO `gonggao` VALUES (6, '任务资讯公告名称6', 'upload/gonggao6.jpg', 2, '2023-03-22 11:33:41', '任务资讯公告详情6', '2024-12-02 11:33:33');
INSERT INTO `gonggao` VALUES (7, '任务资讯公告名称7', 'upload/gonggao7.jpg', 1, '2023-03-22 11:33:41', '任务资讯公告详情7', '2024-12-02 11:33:33');
INSERT INTO `gonggao` VALUES (8, '任务资讯公告名称8', 'upload/gonggao8.jpg', 2, '2023-03-22 11:33:41', '任务资讯公告详情8', '2024-12-02 11:33:33');
INSERT INTO `gonggao` VALUES (9, '任务资讯公告名称9', 'upload/gonggao9.jpg', 1, '2023-03-22 11:33:41', '任务资讯公告详情9', '2024-12-02 11:33:33');
INSERT INTO `gonggao` VALUES (10, '任务资讯公告名称10', 'upload/gonggao10.jpg', 2, '2023-03-22 11:33:41', '任务资讯公告详情10', '2024-12-02 11:33:33');
INSERT INTO `gonggao` VALUES (11, '任务资讯公告名称11', 'upload/gonggao11.jpg', 1, '2023-03-22 11:33:41', '任务资讯公告详情11', '2024-12-02 11:33:33');
INSERT INTO `gonggao` VALUES (12, '任务资讯公告名称12', 'upload/gonggao12.jpg', 2, '2023-03-22 11:33:41', '任务资讯公告详情12', '2024-12-02 11:33:33');
INSERT INTO `gonggao` VALUES (13, '任务资讯公告名称13', 'upload/gonggao13.jpg', 2, '2023-03-22 11:33:41', '任务资讯公告详情13', '2024-12-02 11:33:33');
INSERT INTO `gonggao` VALUES (14, '任务资讯公告名称14', 'upload/gonggao14.jpg', 2, '2023-03-22 11:33:41', '任务资讯公告详情14', '2024-12-02 11:33:33');

-- ----------------------------
-- Table structure for jiequyonghu
-- ----------------------------
DROP TABLE IF EXISTS `jiequyonghu`;
CREATE TABLE `jiequyonghu`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '账户',
  `password` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '密码',
  `jiequyonghu_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '接取用户姓名 Search111 ',
  `jiequyonghu_phone` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '接取用户手机号',
  `jiequyonghu_id_number` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '接取用户身份证号',
  `jiequyonghu_photo` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '接取用户头像',
  `sex_types` int NULL DEFAULT NULL COMMENT '性别',
  `new_money` decimal(10, 2) NULL DEFAULT NULL COMMENT '余额',
  `wanchenglv` int NULL DEFAULT NULL COMMENT '完成率(百分比)',
  `jiequyonghu_email` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '接取用户邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '接取用户' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jiequyonghu
-- ----------------------------
INSERT INTO `jiequyonghu` VALUES (1, 'a1', '123456', '接取用户姓名1', '17703786901', '410224199010102001', 'upload/jiequyonghu1.jpg', 2, 164.37, 333, '1@qq.com', '2024-12-02 11:33:33');
INSERT INTO `jiequyonghu` VALUES (2, 'a2', '123456', '接取用户姓名2', '17703786902', '410224199010102002', 'upload/jiequyonghu2.jpg', 1, 796.80, 47, '2@qq.com', '2024-12-02 11:33:33');
INSERT INTO `jiequyonghu` VALUES (3, 'a3', '123456', '接取用户姓名3', '17703786903', '410224199010102003', 'upload/jiequyonghu3.jpg', 2, 659.98, 394, '3@qq.com', '2024-12-02 11:33:33');
INSERT INTO `jiequyonghu` VALUES (4, 'a5', '123456', '张5', '17788889999', '444555888899999999', 'upload/1679456534735.jpg', 2, 928.66, 100, '5@qq.com', '2024-12-02 11:33:33');

-- ----------------------------
-- Table structure for renwu
-- ----------------------------
DROP TABLE IF EXISTS `renwu`;
CREATE TABLE `renwu`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `fabuyonghu_id` int NULL DEFAULT NULL COMMENT '发布用户',
  `renwu_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '任务名称  Search111 ',
  `renwu_uuid_number` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '任务编号',
  `renwu_photo` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '任务照片',
  `renwu_file` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '任务附件',
  `zhixing_time` timestamp NULL DEFAULT NULL COMMENT '任务执行时间',
  `renwu_address` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '执行地点',
  `renwu_types` int NULL DEFAULT NULL COMMENT '任务类型 Search111',
  `renwu_jine` decimal(10, 2) NULL DEFAULT NULL COMMENT '悬赏金额',
  `renwu_clicknum` int NULL DEFAULT NULL COMMENT '任务热度',
  `renwu_content` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '任务要求',
  `renwu_zhuangtai_types` int NULL DEFAULT NULL COMMENT '任务状态   Search111 ',
  `renwu_delete` int NULL DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `renwu_yesno_types` int NULL DEFAULT NULL COMMENT '申请状态 Search111',
  `renwu_yesno_text` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '审核意见',
  `renwu_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '任务' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of renwu
-- ----------------------------
INSERT INTO `renwu` VALUES (1, 2, '任务名称1', '1679456021407', 'upload/renwu1.jpg', 'upload/file.rar', '2024-12-02 11:33:33', '执行地点1', 4, 756.34, 150, '任务要求1', 1, 1, '2024-12-02 11:33:33', 2, '大概是广东省', '2024-12-02 11:33:33', '2024-12-02 11:33:33');
INSERT INTO `renwu` VALUES (2, 3, '任务名称2', '1679456021336', 'upload/renwu2.jpg', 'upload/file.rar', '2024-12-02 11:33:33', '执行地点2', 2, 991.66, 4, '任务要求2', 2, 1, '2024-12-02 11:33:33', 1, NULL, '2024-12-02 11:33:33', '2024-12-02 11:33:33');
INSERT INTO `renwu` VALUES (3, 2, '任务名称3', '1679456021335', 'upload/renwu3.jpg', 'upload/file.rar', '2024-12-02 11:33:33', '执行地点3', 2, 58.31, 329, '任务要求3', 3, 1, '2024-12-02 11:33:33', 2, '同意', '2024-12-02 11:33:33', '2024-12-02 11:33:33');
INSERT INTO `renwu` VALUES (4, 1, '任务名称4', '1679456021399', 'upload/renwu4.jpg', 'upload/file.rar', '2024-12-02 11:33:33', '执行地点4', 1, 306.70, 26, '任务要求4', 2, 1, '2024-12-02 11:33:33', 2, '同意', '2024-12-02 11:33:33', '2024-12-02 11:33:33');
INSERT INTO `renwu` VALUES (5, 2, '任务名称5', '1679456021327', 'upload/renwu5.jpg', 'upload/file.rar', '2024-12-02 11:33:33', '执行地点5', 4, 619.22, 141, '任务要求5', 3, 1, '2024-12-02 11:33:33', 2, '同意', '2024-12-02 11:33:33', '2024-12-02 11:33:33');
INSERT INTO `renwu` VALUES (6, 3, '任务名称6', '1679456021367', 'upload/renwu6.jpg', 'upload/file.rar', '2024-12-02 11:33:33', '执行地点6', 3, 91.03, 235, '任务要求6', 2, 1, '2024-12-02 11:33:33', 2, '同意', '2024-12-02 11:33:33', '2024-12-02 11:33:33');
INSERT INTO `renwu` VALUES (7, 1, '任务名称7', '1679456021327', 'upload/renwu7.jpg', 'upload/file.rar', '2024-12-02 11:33:33', '执行地点7', 1, 862.74, 96, '任务要求7', 3, 1, '2024-12-02 11:33:33', 2, '同意', '2024-12-02 11:33:33', '2024-12-02 11:33:33');
INSERT INTO `renwu` VALUES (8, 3, '任务名称8', '1679456021340', 'upload/renwu8.jpg', 'upload/file.rar', '2024-12-02 11:33:33', '执行地点8', 4, 656.72, 70, '任务要求8', 3, 1, '2024-12-02 11:33:33', 2, '同意', '2024-12-02 11:33:33', '2024-12-02 11:33:33');
INSERT INTO `renwu` VALUES (9, 3, '任务名称9', '1679456021363', 'upload/renwu9.jpg', 'upload/file.rar', '2024-12-02 11:33:33', '执行地点9', 4, 913.90, 101, '任务要求9', 3, 1, '2024-12-02 11:33:33', 2, '同意', '2024-12-02 11:33:33', '2024-12-02 11:33:33');
INSERT INTO `renwu` VALUES (10, 2, '任务名称10', '1679456021384', 'upload/renwu10.jpg', 'upload/file.rar', '2024-12-02 11:33:33', '执行地点10', 1, 759.30, 368, '任务要求10', 1, 1, '2024-12-02 11:33:33', 2, '同意', '2024-12-02 11:33:33', '2024-12-02 11:33:33');
INSERT INTO `renwu` VALUES (11, 2, '任务名称11', '1679456021336', 'upload/renwu11.jpg', 'upload/file.rar', '2024-12-02 11:33:33', '执行地点11', 2, 922.67, 325, '任务要求11', 2, 1, '2024-12-02 11:33:33', 2, '同意', '2024-12-02 11:33:33', '2024-12-02 11:33:33');
INSERT INTO `renwu` VALUES (12, 3, '任务名称12', '1679456021361', 'upload/renwu12.jpg', 'upload/file.rar', '2024-12-02 11:33:33', '执行地点12', 3, 684.09, 447, '任务要求12', 2, 1, '2024-12-02 11:33:33', 2, '同意', '2024-12-02 11:33:33', '2024-12-02 11:33:33');
INSERT INTO `renwu` VALUES (13, 1, '任务名称13', '1679456021388', 'upload/renwu13.jpg', 'upload/file.rar', '2024-12-02 11:33:33', '执行地点13', 3, 928.66, 210, '任务要求13', 3, 1, '2024-12-02 11:33:33', 2, '同意', '2024-12-02 11:33:33', '2024-12-02 11:33:33');
INSERT INTO `renwu` VALUES (14, 1, '任务名称14', '1679456021382', 'upload/renwu14.jpg', 'upload/file.rar', '2024-12-02 11:33:33', '执行地点14', 3, 0.86, 52, '任务要求14', 2, 1, '2024-12-02 11:33:33', 2, '同意', '2024-12-02 11:33:33', '2024-12-02 11:33:33');
INSERT INTO `renwu` VALUES (15, 1, '任务11111', '1679457058065', '/upload/1679457063552.jpg', '/upload/1679457066132.doc', '2024-12-02 11:33:33', '地点111', 3, 99.00, 1, '<p>广东省是发三分大赛分公司大孤独颂歌</p>', 1, 1, '2024-12-02 11:33:33', 1, '', '2024-12-02 11:33:33', '2024-12-02 11:33:33');
INSERT INTO `renwu` VALUES (16, 1, '任务2222', '1679457133680', '/upload/1679457138016.jpg', '/upload/1679457140572.doc', '2024-12-02 11:33:33', '地点1111', 4, 58.00, 1, '<p>方法个第三个第三个头速度</p>', 1, 1, '2024-12-02 11:33:33', 1, '', '2024-12-02 11:33:33', '2024-12-02 11:33:33');
INSERT INTO `renwu` VALUES (17, 1, '任务3333', '1679457192649', '/upload/1679457197188.jpg', '/upload/1679457200152.doc', '2024-12-02 11:33:33', '地点11', 4, 44.00, 1, '<p>地方手动广东省归属感很多分身乏术的翻山倒海 </p>', 1, 1, '2024-12-02 11:33:33', 1, '', '2024-12-02 11:33:33', '2024-12-02 11:33:33');

-- ----------------------------
-- Table structure for renwu_chat
-- ----------------------------
DROP TABLE IF EXISTS `renwu_chat`;
CREATE TABLE `renwu_chat`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiequyonghu_id` int NULL DEFAULT NULL COMMENT '提问人',
  `fabuyonghu_id` int NULL DEFAULT NULL COMMENT '回答人',
  `renwu_chat_issue_text` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '问题',
  `issue_time` timestamp NULL DEFAULT NULL COMMENT '问题时间',
  `renwu_chat_reply_text` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '回复',
  `reply_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `zhuangtai_types` int NULL DEFAULT NULL COMMENT '状态',
  `renwu_chat_types` int NULL DEFAULT NULL COMMENT '数据类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '提问时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '任务咨询' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of renwu_chat
-- ----------------------------
INSERT INTO `renwu_chat` VALUES (1, 1, 3, '问题1', '2023-03-22 11:33:41', '回复1', '2023-03-22 11:33:41', 2, 1, '2024-12-02 11:33:33', '2024-12-02 11:33:33');
INSERT INTO `renwu_chat` VALUES (2, 1, 2, '问题2', '2023-03-22 11:33:41', '回复2', '2023-03-22 11:33:41', 2, 2, '2024-12-02 11:33:33', '2024-12-02 11:33:33');
INSERT INTO `renwu_chat` VALUES (3, 1, 2, '问题3', '2023-03-22 11:33:41', '回复3', '2023-03-22 11:33:41', 1, 1, '2024-12-02 11:33:33', '2024-12-02 11:33:33');
INSERT INTO `renwu_chat` VALUES (4, 1, 2, '问题4', '2023-03-22 11:33:41', '回复4', '2023-03-22 11:33:41', 1, 2, '2024-12-02 11:33:33', '2024-12-02 11:33:33');
INSERT INTO `renwu_chat` VALUES (5, 3, 3, '问题5', '2023-03-22 11:33:41', '回复5', '2023-03-22 11:33:41', 1, 1, '2024-12-02 11:33:33', '2024-12-02 11:33:33');
INSERT INTO `renwu_chat` VALUES (6, 2, 3, '问题6', '2023-03-22 11:33:41', '回复6', '2023-03-22 11:33:41', 2, 1, '2024-12-02 11:33:33', '2024-12-02 11:33:33');
INSERT INTO `renwu_chat` VALUES (7, 1, 2, '问题7', '2023-03-22 11:33:41', '回复7', '2023-03-22 11:33:41', 2, 2, '2024-12-02 11:33:33', '2024-12-02 11:33:33');
INSERT INTO `renwu_chat` VALUES (8, 2, 1, '问题8', '2023-03-22 11:33:41', '回复8', '2023-03-22 11:33:41', 1, 2, '2024-12-02 11:33:33', '2024-12-02 11:33:33');
INSERT INTO `renwu_chat` VALUES (9, 3, 2, '问题9', '2023-03-22 11:33:41', '回复9', '2023-03-22 11:33:41', 1, 1, '2024-12-02 11:33:33', '2024-12-02 11:33:33');
INSERT INTO `renwu_chat` VALUES (10, 3, 1, '问题10', '2023-03-22 11:33:41', '回复10', '2023-03-22 11:33:41', 2, 2, '2024-12-02 11:33:33', '2024-12-02 11:33:33');
INSERT INTO `renwu_chat` VALUES (11, 3, 1, '问题11', '2023-03-22 11:33:41', '回复11', '2023-03-22 11:33:41', 2, 1, '2024-12-02 11:33:33', '2024-12-02 11:33:33');
INSERT INTO `renwu_chat` VALUES (12, 3, 3, '问题12', '2023-03-22 11:33:41', '回复12', '2023-03-22 11:33:41', 1, 1, '2024-12-02 11:33:33', '2024-12-02 11:33:33');
INSERT INTO `renwu_chat` VALUES (13, 2, 1, '问题13', '2023-03-22 11:33:41', '回复13', '2023-03-22 11:33:41', 1, 2, '2024-12-02 11:33:33', '2024-12-02 11:33:33');
INSERT INTO `renwu_chat` VALUES (14, 3, 3, '问题14', '2023-03-22 11:33:41', '回复14', '2023-03-22 11:33:41', 1, 2, '2024-12-02 11:33:33', '2024-12-02 11:33:33');
INSERT INTO `renwu_chat` VALUES (15, 4, 1, 'ggg', '2023-03-22 11:42:45', NULL, NULL, 2, 1, '2024-12-02 11:33:33', '2024-12-02 11:33:33');
INSERT INTO `renwu_chat` VALUES (16, 4, 1, NULL, NULL, '哼哼唧唧', '2023-03-22 11:43:44', NULL, 2, '2024-12-02 11:33:33', '2024-12-02 11:33:33');

-- ----------------------------
-- Table structure for renwu_collection
-- ----------------------------
DROP TABLE IF EXISTS `renwu_collection`;
CREATE TABLE `renwu_collection`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `renwu_id` int NULL DEFAULT NULL COMMENT '任务',
  `jiequyonghu_id` int NULL DEFAULT NULL COMMENT '用户',
  `renwu_collection_types` int NULL DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '任务收藏' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of renwu_collection
-- ----------------------------
INSERT INTO `renwu_collection` VALUES (1, 1, 1, 1, '2023-03-22 11:33:41', '2023-03-22 11:33:41');
INSERT INTO `renwu_collection` VALUES (2, 2, 1, 1, '2023-03-22 11:33:41', '2023-03-22 11:33:41');
INSERT INTO `renwu_collection` VALUES (3, 3, 3, 1, '2023-03-22 11:33:41', '2023-03-22 11:33:41');
INSERT INTO `renwu_collection` VALUES (4, 4, 2, 1, '2023-03-22 11:33:41', '2023-03-22 11:33:41');
INSERT INTO `renwu_collection` VALUES (5, 5, 3, 1, '2023-03-22 11:33:41', '2023-03-22 11:33:41');
INSERT INTO `renwu_collection` VALUES (6, 6, 1, 1, '2023-03-22 11:33:41', '2023-03-22 11:33:41');
INSERT INTO `renwu_collection` VALUES (7, 7, 3, 1, '2023-03-22 11:33:41', '2023-03-22 11:33:41');
INSERT INTO `renwu_collection` VALUES (8, 8, 3, 1, '2023-03-22 11:33:41', '2023-03-22 11:33:41');
INSERT INTO `renwu_collection` VALUES (9, 9, 2, 1, '2023-03-22 11:33:41', '2023-03-22 11:33:41');
INSERT INTO `renwu_collection` VALUES (10, 10, 1, 1, '2023-03-22 11:33:41', '2023-03-22 11:33:41');
INSERT INTO `renwu_collection` VALUES (11, 11, 2, 1, '2023-03-22 11:33:41', '2023-03-22 11:33:41');
INSERT INTO `renwu_collection` VALUES (12, 12, 2, 1, '2023-03-22 11:33:41', '2023-03-22 11:33:41');
INSERT INTO `renwu_collection` VALUES (13, 13, 3, 1, '2023-03-22 11:33:41', '2023-03-22 11:33:41');
INSERT INTO `renwu_collection` VALUES (14, 14, 3, 1, '2023-03-22 11:33:41', '2023-03-22 11:33:41');
INSERT INTO `renwu_collection` VALUES (15, 13, 4, 1, '2023-03-22 11:42:00', '2023-03-22 11:42:00');
INSERT INTO `renwu_collection` VALUES (16, 10, 4, 1, '2023-03-22 11:47:12', '2023-03-22 11:47:12');

-- ----------------------------
-- Table structure for renwu_commentback
-- ----------------------------
DROP TABLE IF EXISTS `renwu_commentback`;
CREATE TABLE `renwu_commentback`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `renwu_id` int NULL DEFAULT NULL COMMENT '任务',
  `jiequyonghu_id` int NULL DEFAULT NULL COMMENT '用户',
  `renwu_commentback_pingfen_number` int NULL DEFAULT NULL COMMENT '评分',
  `renwu_commentback_text` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '任务评价' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of renwu_commentback
-- ----------------------------
INSERT INTO `renwu_commentback` VALUES (1, 1, 3, 5, '评价内容1', '2024-12-02 11:33:33', '回复信息1', '2024-12-02 11:33:33', '2024-12-02 11:33:33');
INSERT INTO `renwu_commentback` VALUES (2, 2, 1, 5, '评价内容2', '2024-12-02 11:33:33', '回复信息2', '2024-12-02 11:33:33', '2024-12-02 11:33:33');
INSERT INTO `renwu_commentback` VALUES (3, 3, 2, 3, '评价内容3', '2024-12-02 11:33:33', '回复信息3', '2024-12-02 11:33:33', '2024-12-02 11:33:33');
INSERT INTO `renwu_commentback` VALUES (4, 4, 3, 3, '评价内容4', '2024-12-02 11:33:33', '回复信息4', '2024-12-02 11:33:33', '2024-12-02 11:33:33');
INSERT INTO `renwu_commentback` VALUES (5, 5, 1, 4, '评价内容5', '2024-12-02 11:33:33', '回复信息5', '2024-12-02 11:33:33', '2024-12-02 11:33:33');
INSERT INTO `renwu_commentback` VALUES (6, 6, 3, 5, '评价内容6', '2024-12-02 11:33:33', '回复信息6', '2024-12-02 11:33:33', '2024-12-02 11:33:33');
INSERT INTO `renwu_commentback` VALUES (7, 7, 2, 5, '评价内容7', '2024-12-02 11:33:33', '回复信息7', '2024-12-02 11:33:33', '2024-12-02 11:33:33');
INSERT INTO `renwu_commentback` VALUES (8, 8, 2, 5, '评价内容8', '2024-12-02 11:33:33', '回复信息8', '2024-12-02 11:33:33', '2024-12-02 11:33:33');
INSERT INTO `renwu_commentback` VALUES (9, 9, 1, 1, '评价内容9', '2024-12-02 11:33:33', '回复信息9', '2024-12-02 11:33:33', '2024-12-02 11:33:33');
INSERT INTO `renwu_commentback` VALUES (10, 10, 3, 2, '评价内容10', '2024-12-02 11:33:33', '回复信息10', '2024-12-02 11:33:33', '2024-12-02 11:33:33');
INSERT INTO `renwu_commentback` VALUES (11, 11, 3, 2, '评价内容11', '2024-12-02 11:33:33', '回复信息11', '2024-12-02 11:33:33', '2024-12-02 11:33:33');
INSERT INTO `renwu_commentback` VALUES (12, 12, 3, 2, '评价内容12', '2024-12-02 11:33:33', '回复信息12', '2024-12-02 11:33:33', '2024-12-02 11:33:33');
INSERT INTO `renwu_commentback` VALUES (13, 13, 2, 3, '评价内容13', '2024-12-02 11:33:33', '回复信息13', '2024-12-02 11:33:33', '2024-12-02 11:33:33');
INSERT INTO `renwu_commentback` VALUES (14, 14, 2, 3, '评价内容14', '2024-12-02 11:33:33', '回复信息14', '2024-12-02 11:33:33', '2024-12-02 11:33:33');
INSERT INTO `renwu_commentback` VALUES (15, 13, 4, 4, '个搭嘎第三个', '2024-12-02 11:33:33', '骨灰盒', '2024-12-02 11:33:33', '2024-12-02 11:33:33');

-- ----------------------------
-- Table structure for renwu_order
-- ----------------------------
DROP TABLE IF EXISTS `renwu_order`;
CREATE TABLE `renwu_order`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `renwu_order_uuid_number` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '订单编号 Search111 ',
  `renwu_id` int NULL DEFAULT NULL COMMENT '任务',
  `jiequyonghu_id` int NULL DEFAULT NULL COMMENT '用户',
  `renwu_order_true_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '悬赏金额',
  `renwu_order_types` int NULL DEFAULT NULL COMMENT '订单类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请领取时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '任务订单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of renwu_order
-- ----------------------------
INSERT INTO `renwu_order` VALUES (1, '1679456633423', 13, 4, 928.66, 105, '2024-12-02 11:33:33', '2024-12-02 11:33:33');
INSERT INTO `renwu_order` VALUES (2, '1679456826705', 10, 4, 759.30, 101, '2024-12-02 11:33:33', '2024-12-02 11:33:33');

-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '老师id',
  `username` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '老师名',
  `tablename` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '表名',
  `role` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '角色',
  `token` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = 'token表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES (1, 1, 'a1', 'fabuyonghu', '发布用户', 'jx4fzwsp3nz2dvhqkg229t53uffc6uw9', '2024-12-02 11:33:33', '2024-12-02 11:33:33');
INSERT INTO `token` VALUES (2, 1, 'a1', 'jiequyonghu', '接取用户', '35673w1tiux01zdvrxtyrxada1nf4pbt', '2024-12-02 11:33:33', '2024-12-02 11:33:33');
INSERT INTO `token` VALUES (3, 4, 'a5', 'jiequyonghu', '接取用户', 'rlktw5kaw6ylpgouli8a4udykzc8utd5', '2024-12-02 11:33:33', '2024-12-02 11:33:33');
INSERT INTO `token` VALUES (4, 1, 'admin', 'users', '管理员', 'uz5xt0qfcr6z91gmiziwagff52es1dxd', '2024-12-02 11:33:33', '2024-12-10 09:22:25');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '老师名',
  `password` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '密码',
  `role` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '管理员' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin', 'admin', '管理员', '2024-12-02 11:33:33');

SET FOREIGN_KEY_CHECKS = 1;
