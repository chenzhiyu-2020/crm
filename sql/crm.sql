/*
 Navicat Premium Data Transfer

 Source Server         : MySQL
 Source Server Type    : MySQL
 Source Server Version : 50723
 Source Host           : localhost:3306
 Source Schema         : crm

 Target Server Type    : MySQL
 Target Server Version : 50723
 File Encoding         : 65001

 Date: 19/08/2020 17:30:29
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tbl_activity
-- ----------------------------
DROP TABLE IF EXISTS `tbl_activity`;
CREATE TABLE `tbl_activity`  (
  `id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键',
  `owner` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所有者 外键 关联tbl_user',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '市场活动名称',
  `startDate` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '开始日期 年月日',
  `endDate` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '结束日期 年月日',
  `cost` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '成本',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `createTime` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建时间 年月日时分秒',
  `createBy` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `editTime` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改时间 年月日时分秒',
  `editBy` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '市场活动表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_activity
-- ----------------------------
INSERT INTO `tbl_activity` VALUES ('053348569bcf4535bd7372e0e15becae', '', '发传单5', '2020-08-17', '2020-08-17', '5000', '12fa', '2020-08-17 11:53:56', '张三', NULL, NULL);
INSERT INTO `tbl_activity` VALUES ('0c6c71bd451e4841afaf6d235aa48566', '', '发传单7', '2020-08-17', '2020-08-27', '3000', 'asdvcx', '2020-08-17 11:50:57', '张三', NULL, NULL);
INSERT INTO `tbl_activity` VALUES ('1600d45b6f574cf99c66dd62c2694051', '23456789asdfghjk23456789asdfghjk', '发传单123', '2020-08-03', '2020-08-04', '3000', '描述123123', '2020-08-13 15:45:26', '张三', NULL, NULL);
INSERT INTO `tbl_activity` VALUES ('1aebca38797c41d9b88abed9a1e0abe2', '', '发传单7', '2020-08-17', '2020-08-26', '5000', '1234567', '2020-08-17 11:25:06', '张三', NULL, NULL);
INSERT INTO `tbl_activity` VALUES ('23056c6ee1d844a4b7571cee9bcc090d', '23456789asdfghjk23456789asdfghjk', '发传单5', '2020-08-17', '2020-08-25', '5000', '12345', '2020-08-17 11:23:00', '张三', NULL, NULL);
INSERT INTO `tbl_activity` VALUES ('2cdbec8d6ad141cb8af1c3e8398a1f45', '23456789asdfghjk23456789asdfghjk', '发传单6', '2020-08-17', '2020-08-25', '5000', '12345', '2020-08-17 11:23:11', '张三', NULL, NULL);
INSERT INTO `tbl_activity` VALUES ('2de9e3e36fc94feda18688d5fa11d75f', '12345678zxcvbnma12345678zxcvbnma', '发传单6', '2020-08-17', '2020-08-22', '2000', '151', '2020-08-17 15:37:53', '张三', NULL, NULL);
INSERT INTO `tbl_activity` VALUES ('2f55eaf24aef454e923ddb95a525b0ff', '23456789asdfghjk23456789asdfghjk', '发传单6', '2020-08-17', '2020-08-22', '2000', '151', '2020-08-17 15:37:51', '张三', NULL, NULL);
INSERT INTO `tbl_activity` VALUES ('358d2b92b9cd48f1b31c857151ee2606', '12345678zxcvbnma12345678zxcvbnma', '发传单4', '2020-08-17', '2020-08-24', '3000', '3', '2020-08-17 11:22:26', '张三', NULL, NULL);
INSERT INTO `tbl_activity` VALUES ('35fad01ecf974ba281819781fafe83ca', '23456789asdfghjk23456789asdfghjk', '发传单6', '2020-08-17', '2020-08-22', '2000', '151', '2020-08-17 15:37:48', '张三', NULL, NULL);
INSERT INTO `tbl_activity` VALUES ('3d9985399c114e428f7a79253fd749a6', '12345678zxcvbnma12345678zxcvbnma', '发传单7', '2020-08-17', '2020-08-26', '5000', '1234567', '2020-08-17 11:23:42', '张三', NULL, NULL);
INSERT INTO `tbl_activity` VALUES ('412b695d9ce84e749075e9e20df81ede', '23456789asdfghjk23456789asdfghjk', '发传单6', '2020-08-17', '2020-08-22', '2000', '151', '2020-08-17 15:37:45', '张三', NULL, NULL);
INSERT INTO `tbl_activity` VALUES ('41c497f780bd43d584bc2c24d065ea59', '12345678zxcvbnma12345678zxcvbnma', '发传单8', '2020-08-17', '2020-08-17', '30000000', '鱼科与苦痛看、', '2020-08-17 14:16:06', '张三', NULL, NULL);
INSERT INTO `tbl_activity` VALUES ('4aaac7ac68374b1abe261dfb5b21ce6b', '23456789asdfghjk23456789asdfghjk', '发传单7', '2020-08-17', '2020-08-25', '5000', 'oiuy', '2020-08-17 15:41:51', '张三', NULL, NULL);
INSERT INTO `tbl_activity` VALUES ('4d596702228f459890222a3f4ef6e7eb', '23456789asdfghjk23456789asdfghjk', '发传单7', '2020-08-17', '2020-08-25', '5000', 'oiuy', '2020-08-17 15:41:52', '张三', NULL, NULL);
INSERT INTO `tbl_activity` VALUES ('4ffb90f2b617469eaa1b251952ff85de', '23456789asdfghjk23456789asdfghjk', '发传单6', '2020-08-17', '2020-08-22', '2000', '151', '2020-08-17 15:37:48', '张三', NULL, NULL);
INSERT INTO `tbl_activity` VALUES ('5051b5a5005d423191369b022fd8a363', '', '', '2020-08-17', '2020-08-17', '2000', 'GJFYFGC', '2020-08-17 11:46:50', '张三', NULL, NULL);
INSERT INTO `tbl_activity` VALUES ('5174631506df42bb98e4d4e8688b279d', '12345678zxcvbnma12345678zxcvbnma', 'google', '2020-08-17', '2020-08-17', '30000000', '鱼科与苦痛看、', '2020-08-17 14:16:36', '张三', '2020-08-17 15:03:56', '张三');
INSERT INTO `tbl_activity` VALUES ('51820bf6e3254e21b5882e92bd3640ff', '23456789asdfghjk23456789asdfghjk', '发传单5', '2020-08-27', '2020-09-23', '3000', 'jujh,fyjd', '2020-08-17 15:10:52', '张三', '2020-08-17 15:11:11', '张三');
INSERT INTO `tbl_activity` VALUES ('55683a6b787149febc89199b784fbc3e', '23456789asdfghjk23456789asdfghjk', '发传单qwweqe', '2020-08-03', '2020-08-17', '3000', 'nhgjh', '2020-08-17 15:48:53', '张三', '2020-08-17 15:49:30', '张三');
INSERT INTO `tbl_activity` VALUES ('563ee2198cae4d618bd16807fb3deed7', '23456789asdfghjk23456789asdfghjk', '发传单1', '2020-08-17', '2020-08-24', '3000', '3', '2020-08-17 11:22:07', '张三', NULL, NULL);
INSERT INTO `tbl_activity` VALUES ('578863219910410e979bfa9d1577cfe0', '', '发传单7', '2020-08-17', '2020-08-26', '5000', '1234567', '2020-08-17 11:23:53', '张三', NULL, NULL);
INSERT INTO `tbl_activity` VALUES ('63876f5c459547fea8d09119e8d34641', '23456789asdfghjk23456789asdfghjk', 'ddddd', '2020-08-14', '2021-09-01', '1000', 'retretrete', '2020-08-14 09:30:44', '张三', '2020-08-14 09:31:07', '张三');
INSERT INTO `tbl_activity` VALUES ('6cd7aaf65c79419bba29f95d2e7bcd0e', '23456789asdfghjk23456789asdfghjk', '发传单7', '2020-08-17', '2020-08-25', '5000', 'oiuy', '2020-08-17 15:41:48', '张三', NULL, NULL);
INSERT INTO `tbl_activity` VALUES ('70533f195c4e4f0d911c42326f3535d3', '23456789asdfghjk23456789asdfghjk', '发传单2', '2020-08-17', '2020-08-24', '3000', '3', '2020-08-17 11:22:15', '张三', NULL, NULL);
INSERT INTO `tbl_activity` VALUES ('724c461a375442c886487473276abd37', '23456789asdfghjk23456789asdfghjk', '哔哩哔哩', '2020-07-26', '2020-08-17', '500000', 'nyjrreg', '2020-08-14 14:01:19', '张三', '2020-08-14 15:57:01', '张三');
INSERT INTO `tbl_activity` VALUES ('77d67e85fcf447b0b90685253c053756', '23456789asdfghjk23456789asdfghjk', 'google', '2020-08-03', '2020-07-28', '30000000', 'nnnnnnnnnnnnnnnnnnnnnnnnnnnn', '2020-08-13 15:21:43', '张三', '2020-08-14 14:14:55', '张三');
INSERT INTO `tbl_activity` VALUES ('7916d5cd9a8140b385e100e3f5cae007', '23456789asdfghjk23456789asdfghjk', '发传单7', '2020-08-17', '2020-08-26', '5000', '1234567', '2020-08-17 11:23:36', '张三', NULL, NULL);
INSERT INTO `tbl_activity` VALUES ('848344d768fa4da2a296cd7a1608fcf4', '12345678zxcvbnma12345678zxcvbnma', '发传单6', '2020-08-17', '2020-08-25', '5000', '12345', '2020-08-17 11:23:16', '张三', NULL, NULL);
INSERT INTO `tbl_activity` VALUES ('8508a507c28a474b88bfc6d9fac1f397', '', '', '2020-08-17', '2020-08-17', '2000', 'GJFYFGC', '2020-08-17 11:46:18', '张三', NULL, NULL);
INSERT INTO `tbl_activity` VALUES ('91f75a6d7638479bae811848c8fb11ad', '', '发传单5', '2020-08-17', '2020-08-17', '5000', '12fa', '2020-08-17 11:55:28', '张三', NULL, NULL);
INSERT INTO `tbl_activity` VALUES ('92cecb6f4cb64682a1b2f0fb4f571c3e', '23456789asdfghjk23456789asdfghjk', '发传单6', '2020-08-17', '2020-08-26', '5000', '12345', '2020-08-17 11:23:22', '张三', NULL, NULL);
INSERT INTO `tbl_activity` VALUES ('97ee013dbd0c4ffdadc6eef3dbdff295', '', '发传单7', '2020-08-17', '2020-08-27', '3000', 'asdvcx', '2020-08-17 11:53:44', '张三', NULL, NULL);
INSERT INTO `tbl_activity` VALUES ('a943952df74b49aeb9c2f664d0fed50e', '', '发传单7', '2020-08-17', '2020-08-26', '5000', '1234567', '2020-08-17 11:23:46', '张三', NULL, NULL);
INSERT INTO `tbl_activity` VALUES ('ac442c4451954a2480c33b5c35586637', '12345678zxcvbnma12345678zxcvbnma', '百度', '2020-08-14', '2020-08-14', '3300', '安装程序从', '2020-08-14 13:59:12', '张三', NULL, NULL);
INSERT INTO `tbl_activity` VALUES ('c13d3fb5de1f42b39c08d98242b34e34', '', '发传单7', '2020-08-17', '2020-08-26', '5000', '1234567', '2020-08-17 11:24:48', '张三', NULL, NULL);
INSERT INTO `tbl_activity` VALUES ('c518ff331d05448899d3c03029fa5257', '23456789asdfghjk23456789asdfghjk', '发传单5hgf', '2020-08-03', '2020-08-17', '3000', 'nhgjh', '2020-08-17 15:42:26', '张三', NULL, NULL);
INSERT INTO `tbl_activity` VALUES ('c5a46f88eacf44e0a997636db7eca19d', '23456789asdfghjk23456789asdfghjk', '发传单7', '2020-08-17', '2020-08-25', '5000', 'oiuy', '2020-08-17 15:41:51', '张三', NULL, NULL);
INSERT INTO `tbl_activity` VALUES ('cc42e9f384694a36bf068c71de3fbf2f', '23456789asdfghjk23456789asdfghjk', '发传单6', '2020-08-17', '2020-08-22', '2000', '151', '2020-08-17 15:37:50', '张三', NULL, NULL);
INSERT INTO `tbl_activity` VALUES ('ce1c1728794f4747bf1f818e988fa80a', '12345678zxcvbnma12345678zxcvbnma', 'google', '2020-08-17', '2020-08-29', '30000000', 'fdfdscdfghnm', '2020-08-17 15:53:54', '张三', '2020-08-17 17:05:49', '张三');
INSERT INTO `tbl_activity` VALUES ('e2fab2f8c3b5422889661863895ef1c2', '12345678zxcvbnma12345678zxcvbnma', '发传单6', '2020-08-17', '2020-08-22', '2000', '151', '2020-08-17 15:37:53', '张三', NULL, NULL);
INSERT INTO `tbl_activity` VALUES ('e8688d89babf492ca8fac010ac3150ab', '12345678zxcvbnma12345678zxcvbnma', 'IBM', '2020-08-03', '2020-10-13', '1000000', '把风格化法国', '2020-08-14 14:00:51', '张三', NULL, NULL);
INSERT INTO `tbl_activity` VALUES ('edd1dfe55bb44f94a68380b8d05ec9ed', '23456789asdfghjk23456789asdfghjk', '发传单5', '2020-08-17', '2020-08-25', '5000', '12345', '2020-08-17 11:22:47', '张三', NULL, NULL);
INSERT INTO `tbl_activity` VALUES ('eed0157d5da4462c8493b9d586c482b1', '23456789asdfghjk23456789asdfghjk', '发传单3', '2020-08-17', '2020-08-24', '3000', '3', '2020-08-17 11:22:19', '张三', NULL, NULL);
INSERT INTO `tbl_activity` VALUES ('ef1308d5aaf0409fbaaea0f4c75d7e3e', '', '发传单5wrg', '2020-08-17', '2020-08-17', '5000', '151145165', '2020-08-17 11:39:10', '张三', NULL, NULL);
INSERT INTO `tbl_activity` VALUES ('f8c6690de763479c95ef38a0a6f339e9', '12345678zxcvbnma12345678zxcvbnma', '发传单5', '2020-08-17', '2020-08-25', '5000', '12345', '2020-08-17 11:23:05', '张三', NULL, NULL);

-- ----------------------------
-- Table structure for tbl_activity_remark
-- ----------------------------
DROP TABLE IF EXISTS `tbl_activity_remark`;
CREATE TABLE `tbl_activity_remark`  (
  `id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `noteContent` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注信息',
  `createTime` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createBy` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `editTime` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `editBy` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `editFlag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否修改过的标记',
  `activityId` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '市场活动备注表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_activity_remark
-- ----------------------------
INSERT INTO `tbl_activity_remark` VALUES ('0b25989faf8840d1ac4e5c59a26e5c48', '999999999999999', '2020-08-17 10:38:15', '张三', NULL, NULL, '0', 'e8688d89babf492ca8fac010ac3150ab');
INSERT INTO `tbl_activity_remark` VALUES ('2b70a79b2f124307867a8ce8f786eb04', 'sfsdf', '2020-08-14 09:31:16', '张三', NULL, NULL, '0', '63876f5c459547fea8d09119e8d34641');
INSERT INTO `tbl_activity_remark` VALUES ('4045003144a04b41a4716bbbf7d1de67', 'GGGGGGGGGGGGGGGGGGGGGG', '2020-08-18 10:31:28', '张三', '2020-08-18 10:45:01', '李四', '1', 'ce1c1728794f4747bf1f818e988fa80a');
INSERT INTO `tbl_activity_remark` VALUES ('50d166f0244941fb816b7ba075246a08', 'qweqwetr', '2020-08-14 14:01:30', '张三', NULL, NULL, '0', '724c461a375442c886487473276abd37');
INSERT INTO `tbl_activity_remark` VALUES ('6177a33dbf94439f8ea4e8d29fec911b', 'adbvwdf', '2020-08-14 14:01:28', '张三', NULL, NULL, '0', '724c461a375442c886487473276abd37');
INSERT INTO `tbl_activity_remark` VALUES ('9f561b5dcb0848e7bf3b925b02670e3b', 'czczxczc', '2020-08-14 09:31:18', '张三', NULL, NULL, '0', '63876f5c459547fea8d09119e8d34641');

-- ----------------------------
-- Table structure for tbl_clue
-- ----------------------------
DROP TABLE IF EXISTS `tbl_clue`;
CREATE TABLE `tbl_clue`  (
  `id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标识',
  `fullname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `appellation` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '称呼',
  `owner` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所有者',
  `company` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公司',
  `job` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职位',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公司座机',
  `website` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公司网站',
  `mphone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机',
  `state` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '线索状态',
  `source` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '线索来源',
  `createBy` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `createTime` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建时间',
  `editBy` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改者',
  `editTime` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改时间',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `contactSummary` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系纪要',
  `nextContactTime` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '下次联系时间',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '详细地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '线索表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_clue
-- ----------------------------
INSERT INTO `tbl_clue` VALUES ('1104b62f4d2b4baeb9b4c179ba08960e', '李四', '博士', '12345678zxcvbnma12345678zxcvbnma', '浩鲸科技', '员工', 'MY@alibaba.com', '1651564', 'http://www.bjpowernode.com', '12345678901', '试图联系', '广告', '张三', '2020-08-19 14:44:52', NULL, NULL, '驱蚊器发给发给你发给你', 'wq额为全额请问请问请问', '2020-08-26', '阿大撒大苏打');
INSERT INTO `tbl_clue` VALUES ('19fe7a6fdac1456cb682daf3ba0b8de5', '李四', '博士', '12345678zxcvbnma12345678zxcvbnma', '浩鲸科技', '员工', 'MY@alibaba.com', '1651564', 'http://www.bjpowernode.com', '12345678901', '试图联系', '广告', '张三', '2020-08-19 14:44:49', NULL, NULL, '驱蚊器发给发给你发给你', 'wq额为全额请问请问请问', '2020-08-26', '阿大撒大苏打');
INSERT INTO `tbl_clue` VALUES ('2a4933107dcf48b48933ad3e29e233d3', '张三', '先生', '23456789asdfghjk23456789asdfghjk', '动力节点', '员工', 'zhangsan@bjpowernode.com', '010-84846003', 'http://www.bjpowernode.com', '135555555555', '已联系', '聊天', '张三', '2020-08-19 11:19:36', NULL, NULL, '这是一条线索的描述信息123', '这个线索即将被转换123', '2017-05-01', '北京大兴区大族企业湾123');
INSERT INTO `tbl_clue` VALUES ('401114cf41b04bebb50a4db25aa28504', '李四', '博士', '12345678zxcvbnma12345678zxcvbnma', '浩鲸科技', '员工', 'MY@alibaba.com', '1651564', 'http://www.bjpowernode.com', '12345678901', '试图联系', '广告', '张三', '2020-08-19 14:44:53', NULL, NULL, '驱蚊器发给发给你发给你', 'wq额为全额请问请问请问', '2020-08-26', '阿大撒大苏打');
INSERT INTO `tbl_clue` VALUES ('49941b1b3585470aab487ac2ff4be8a7', '李四', '先生', '23456789asdfghjk23456789asdfghjk', '动力节点', 'CTO', 'lisi@bjpowernode.com', '010-84846003', 'http://www.bjpowernode.com', '12345678901', '试图联系', '广告', '张三', '2020-08-19 11:18:53', NULL, NULL, '这是一条线索的描述信息', '这个线索即将被转换', '2017-05-01', '北京大兴区大族企业湾');
INSERT INTO `tbl_clue` VALUES ('684e70d77a464996be099a4b41d7cbe6', '李四', '博士', '12345678zxcvbnma12345678zxcvbnma', '浩鲸科技', '员工', 'MY@alibaba.com', '1651564', 'http://www.bjpowernode.com', '12345678901', '试图联系', '广告', '张三', '2020-08-19 14:45:08', NULL, NULL, '驱蚊器发给发给你发给你', 'wq额为全额请问请问请问', '2020-08-26', '阿大撒大苏打');
INSERT INTO `tbl_clue` VALUES ('76529ae94d054177b005f416177be70c', '李四', '博士', '12345678zxcvbnma12345678zxcvbnma', '浩鲸科技', '员工', 'MY@alibaba.com', '1651564', 'http://www.bjpowernode.com', '12345678901', '试图联系', '广告', '张三', '2020-08-19 14:44:52', NULL, NULL, '驱蚊器发给发给你发给你', 'wq额为全额请问请问请问', '2020-08-26', '阿大撒大苏打');
INSERT INTO `tbl_clue` VALUES ('84c2492452ab42838c5ebbce3daad646', '陈志玉', '先生', '23456789asdfghjk23456789asdfghjk', '浩鲸科技', '开发', '1054886364@qq.com', '010-055555555', 'http://www.bjpowernode.com', '13588417679', '试图联系', '广告', '张三', '2020-08-19 14:42:26', NULL, NULL, '支持者宣称', '再擦撒旦撒旦', '2020-08-25', '发DVD发v反对v你的法术');
INSERT INTO `tbl_clue` VALUES ('8b6deec1355642cb875e479cbf8831f5', '马云', '先生', '23456789asdfghjk23456789asdfghjk', '阿里巴巴', 'CEO', 'MY@alibaba.com', '1651564', 'www.alibaba.com', '138888888', '将来联系', '员工介绍', '张三', '2020-08-19 11:13:15', NULL, NULL, '线索描述123', '纪要123', '2022-01-12', '地址123123');
INSERT INTO `tbl_clue` VALUES ('8ce3d9a326714fe98cd188133bef47f3', '李四', '博士', '12345678zxcvbnma12345678zxcvbnma', '浩鲸科技', '员工', 'MY@alibaba.com', '1651564', 'http://www.bjpowernode.com', '12345678901', '试图联系', '广告', '张三', '2020-08-19 14:45:17', NULL, NULL, '驱蚊器发给发给你发给你', 'wq额为全额请问请问请问', '2020-08-26', '阿大撒大苏打');
INSERT INTO `tbl_clue` VALUES ('b9490e06c3ad465b82ed973c3e96d226', '李四', '先生', '23456789asdfghjk23456789asdfghjk', '浩鲸科技', '开发', 'MY@alibaba.com', '1651564', 'http://www.bjpowernode.com', '135555555555', '试图联系', '广告', '张三', '2020-08-19 14:49:40', NULL, NULL, '其味无穷恶趣味', '广泛大锅饭大概', '2020-08-29', '你发你发给你发');
INSERT INTO `tbl_clue` VALUES ('bd4bbe4a6f2b4c808e6f539107d1fb26', '李四', '博士', '12345678zxcvbnma12345678zxcvbnma', '浩鲸科技', '员工', 'MY@alibaba.com', '1651564', 'http://www.bjpowernode.com', '12345678901', '试图联系', '广告', '张三', '2020-08-19 14:45:07', NULL, NULL, '驱蚊器发给发给你发给你', 'wq额为全额请问请问请问', '2020-08-26', '阿大撒大苏打');
INSERT INTO `tbl_clue` VALUES ('bd75d4b213bc4f63afd085d349484c65', '李四', '博士', '12345678zxcvbnma12345678zxcvbnma', '浩鲸科技', '员工', 'MY@alibaba.com', '1651564', 'http://www.bjpowernode.com', '12345678901', '试图联系', '广告', '张三', '2020-08-19 14:45:07', NULL, NULL, '驱蚊器发给发给你发给你', 'wq额为全额请问请问请问', '2020-08-26', '阿大撒大苏打');
INSERT INTO `tbl_clue` VALUES ('c118c76e2fd14eb19f9449c09b6869f9', '李四', '博士', '12345678zxcvbnma12345678zxcvbnma', '浩鲸科技', '员工', 'MY@alibaba.com', '1651564', 'http://www.bjpowernode.com', '12345678901', '试图联系', '广告', '张三', '2020-08-19 14:47:55', NULL, NULL, '驱蚊器发给发给你发给你', 'wq额为全额请问请问请问', '2020-08-26', '阿大撒大苏打');
INSERT INTO `tbl_clue` VALUES ('eff89424cad14dd1b934a4a1478c85d9', '李四', '博士', '12345678zxcvbnma12345678zxcvbnma', '浩鲸科技', '员工', 'MY@alibaba.com', '1651564', 'http://www.bjpowernode.com', '12345678901', '试图联系', '广告', '张三', '2020-08-19 14:44:51', NULL, NULL, '驱蚊器发给发给你发给你', 'wq额为全额请问请问请问', '2020-08-26', '阿大撒大苏打');
INSERT INTO `tbl_clue` VALUES ('f5d1a4d76801452197660b80bd0e1234', '李四', '先生', '12345678zxcvbnma12345678zxcvbnma', '动力节点', '员工', 'lisi@bjpowernode.com', '010-84846003', 'http://www.bjpowernode.com', '135555555555', '虚假线索', '聊天', '张三', '2020-08-19 14:49:00', NULL, NULL, '驱蚊器温泉位', '梵蒂冈反对gg', '2020-08-06', '和恢复回复给和');

-- ----------------------------
-- Table structure for tbl_clue_activity_relation
-- ----------------------------
DROP TABLE IF EXISTS `tbl_clue_activity_relation`;
CREATE TABLE `tbl_clue_activity_relation`  (
  `id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标识',
  `clueId` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '线索id',
  `activityId` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '市场活动id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '线索市场活动关系表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_clue_activity_relation
-- ----------------------------
INSERT INTO `tbl_clue_activity_relation` VALUES ('2f4a99def63d448ba110f4daafd7e9ec', 'bd4bbe4a6f2b4c808e6f539107d1fb26', '1600d45b6f574cf99c66dd62c2694051');
INSERT INTO `tbl_clue_activity_relation` VALUES ('53a5a6e98ed747ae896d8d0cbe8c9199', 'bd4bbe4a6f2b4c808e6f539107d1fb26', '23056c6ee1d844a4b7571cee9bcc090d');
INSERT INTO `tbl_clue_activity_relation` VALUES ('afabe8e856144b83a9504fe60f94b364', 'bd4bbe4a6f2b4c808e6f539107d1fb26', '2de9e3e36fc94feda18688d5fa11d75f');
INSERT INTO `tbl_clue_activity_relation` VALUES ('b7fec91f8d304073b82323d934bb4a3d', 'bd4bbe4a6f2b4c808e6f539107d1fb26', '2cdbec8d6ad141cb8af1c3e8398a1f45');

-- ----------------------------
-- Table structure for tbl_clue_remark
-- ----------------------------
DROP TABLE IF EXISTS `tbl_clue_remark`;
CREATE TABLE `tbl_clue_remark`  (
  `id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标识',
  `noteContent` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注内容',
  `createBy` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `createTime` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建时间',
  `editBy` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `editTime` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改时间',
  `editFlag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改标记',
  `clueId` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '线索id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '线索备注表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_clue_remark
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_contacts
-- ----------------------------
DROP TABLE IF EXISTS `tbl_contacts`;
CREATE TABLE `tbl_contacts`  (
  `id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标识',
  `owner` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所有者',
  `source` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '来源',
  `customerId` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客户id',
  `fullname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `appellation` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '称呼',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `mphone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机',
  `job` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职位',
  `birth` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生日',
  `createBy` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `createTime` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建时间',
  `editBy` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `editTime` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改时间',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `contactSummary` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系纪要',
  `nextContactTime` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '下次联系时间',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '详细地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '联系人表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_contacts
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_contacts_avtivity_relation
-- ----------------------------
DROP TABLE IF EXISTS `tbl_contacts_avtivity_relation`;
CREATE TABLE `tbl_contacts_avtivity_relation`  (
  `id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标识',
  `contactsId` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系人id',
  `activityId` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '市场活动id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '联系人市场活动关系表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_contacts_avtivity_relation
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_contacts_remark
-- ----------------------------
DROP TABLE IF EXISTS `tbl_contacts_remark`;
CREATE TABLE `tbl_contacts_remark`  (
  `id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标识',
  `noteContent` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注内容',
  `createTime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `createBy` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建时间',
  `editTime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `editBy` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改时间',
  `editFlag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改标记',
  `contactsId` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系人id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '联系人备注表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_contacts_remark
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_customer
-- ----------------------------
DROP TABLE IF EXISTS `tbl_customer`;
CREATE TABLE `tbl_customer`  (
  `id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标识',
  `owner` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所有者',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `website` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公司网站',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公司座机',
  `createBy` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `createTime` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建时间',
  `editBy` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改者',
  `editTime` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改时间',
  `contactSummary` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系纪要',
  `nextContactTime` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '下次联系时间',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '详细地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '客户表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_customer
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_customer_remark
-- ----------------------------
DROP TABLE IF EXISTS `tbl_customer_remark`;
CREATE TABLE `tbl_customer_remark`  (
  `id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标识',
  `noteContent` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注内容',
  `createTime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `createBy` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建时间',
  `editTime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `editBy` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改时间',
  `editFlag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改标记',
  `customerId` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客户id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '客户备注表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_customer_remark
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_dic_type
-- ----------------------------
DROP TABLE IF EXISTS `tbl_dic_type`;
CREATE TABLE `tbl_dic_type`  (
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_dic_type
-- ----------------------------
INSERT INTO `tbl_dic_type` VALUES ('appellation', '称呼', '');
INSERT INTO `tbl_dic_type` VALUES ('clueState', '线索状态', '');
INSERT INTO `tbl_dic_type` VALUES ('returnPriority', '回访优先级', '');
INSERT INTO `tbl_dic_type` VALUES ('returnState', '回访状态', '');
INSERT INTO `tbl_dic_type` VALUES ('source', '来源', '');
INSERT INTO `tbl_dic_type` VALUES ('stage', '阶段', '');
INSERT INTO `tbl_dic_type` VALUES ('transactionType', '交易类型', '');

-- ----------------------------
-- Table structure for tbl_dic_value
-- ----------------------------
DROP TABLE IF EXISTS `tbl_dic_value`;
CREATE TABLE `tbl_dic_value`  (
  `id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `text` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `orderNo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `typeCode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_dic_value
-- ----------------------------
INSERT INTO `tbl_dic_value` VALUES ('06e3cbdf10a44eca8511dddfc6896c55', '虚假线索', '虚假线索', '4', 'clueState');
INSERT INTO `tbl_dic_value` VALUES ('0fe33840c6d84bf78df55d49b169a894', '销售邮件', '销售邮件', '8', 'source');
INSERT INTO `tbl_dic_value` VALUES ('12302fd42bd349c1bb768b19600e6b20', '交易会', '交易会', '11', 'source');
INSERT INTO `tbl_dic_value` VALUES ('1615f0bb3e604552a86cde9a2ad45bea', '最高', '最高', '2', 'returnPriority');
INSERT INTO `tbl_dic_value` VALUES ('176039d2a90e4b1a81c5ab8707268636', '教授', '教授', '5', 'appellation');
INSERT INTO `tbl_dic_value` VALUES ('1e0bd307e6ee425599327447f8387285', '将来联系', '将来联系', '2', 'clueState');
INSERT INTO `tbl_dic_value` VALUES ('2173663b40b949ce928db92607b5fe57', '丢失线索', '丢失线索', '5', 'clueState');
INSERT INTO `tbl_dic_value` VALUES ('2876690b7e744333b7f1867102f91153', '未启动', '未启动', '1', 'returnState');
INSERT INTO `tbl_dic_value` VALUES ('29805c804dd94974b568cfc9017b2e4c', '07成交', '07成交', '7', 'stage');
INSERT INTO `tbl_dic_value` VALUES ('310e6a49bd8a4962b3f95a1d92eb76f4', '试图联系', '试图联系', '1', 'clueState');
INSERT INTO `tbl_dic_value` VALUES ('31539e7ed8c848fc913e1c2c93d76fd1', '博士', '博士', '4', 'appellation');
INSERT INTO `tbl_dic_value` VALUES ('37ef211719134b009e10b7108194cf46', '01资质审查', '01资质审查', '1', 'stage');
INSERT INTO `tbl_dic_value` VALUES ('391807b5324d4f16bd58c882750ee632', '08丢失的线索', '08丢失的线索', '8', 'stage');
INSERT INTO `tbl_dic_value` VALUES ('3a39605d67da48f2a3ef52e19d243953', '聊天', '聊天', '14', 'source');
INSERT INTO `tbl_dic_value` VALUES ('474ab93e2e114816abf3ffc596b19131', '低', '低', '3', 'returnPriority');
INSERT INTO `tbl_dic_value` VALUES ('48512bfed26145d4a38d3616e2d2cf79', '广告', '广告', '1', 'source');
INSERT INTO `tbl_dic_value` VALUES ('4d03a42898684135809d380597ed3268', '合作伙伴研讨会', '合作伙伴研讨会', '9', 'source');
INSERT INTO `tbl_dic_value` VALUES ('59795c49896947e1ab61b7312bd0597c', '先生', '先生', '1', 'appellation');
INSERT INTO `tbl_dic_value` VALUES ('5c6e9e10ca414bd499c07b886f86202a', '高', '高', '1', 'returnPriority');
INSERT INTO `tbl_dic_value` VALUES ('67165c27076e4c8599f42de57850e39c', '夫人', '夫人', '2', 'appellation');
INSERT INTO `tbl_dic_value` VALUES ('68a1b1e814d5497a999b8f1298ace62b', '09因竞争丢失关闭', '09因竞争丢失关闭', '9', 'stage');
INSERT INTO `tbl_dic_value` VALUES ('6b86f215e69f4dbd8a2daa22efccf0cf', 'web调研', 'web调研', '13', 'source');
INSERT INTO `tbl_dic_value` VALUES ('72f13af8f5d34134b5b3f42c5d477510', '合作伙伴', '合作伙伴', '6', 'source');
INSERT INTO `tbl_dic_value` VALUES ('7c07db3146794c60bf975749952176df', '未联系', '未联系', '6', 'clueState');
INSERT INTO `tbl_dic_value` VALUES ('86c56aca9eef49058145ec20d5466c17', '内部研讨会', '内部研讨会', '10', 'source');
INSERT INTO `tbl_dic_value` VALUES ('9095bda1f9c34f098d5b92fb870eba17', '进行中', '进行中', '3', 'returnState');
INSERT INTO `tbl_dic_value` VALUES ('954b410341e7433faa468d3c4f7cf0d2', '已有业务', '已有业务', '1', 'transactionType');
INSERT INTO `tbl_dic_value` VALUES ('966170ead6fa481284b7d21f90364984', '已联系', '已联系', '3', 'clueState');
INSERT INTO `tbl_dic_value` VALUES ('96b03f65dec748caa3f0b6284b19ef2f', '推迟', '推迟', '2', 'returnState');
INSERT INTO `tbl_dic_value` VALUES ('97d1128f70294f0aac49e996ced28c8a', '新业务', '新业务', '2', 'transactionType');
INSERT INTO `tbl_dic_value` VALUES ('9ca96290352c40688de6596596565c12', '完成', '完成', '4', 'returnState');
INSERT INTO `tbl_dic_value` VALUES ('9e6d6e15232549af853e22e703f3e015', '需要条件', '需要条件', '7', 'clueState');
INSERT INTO `tbl_dic_value` VALUES ('9ff57750fac04f15b10ce1bbb5bb8bab', '02需求分析', '02需求分析', '2', 'stage');
INSERT INTO `tbl_dic_value` VALUES ('a70dc4b4523040c696f4421462be8b2f', '等待某人', '等待某人', '5', 'returnState');
INSERT INTO `tbl_dic_value` VALUES ('a83e75ced129421dbf11fab1f05cf8b4', '推销电话', '推销电话', '2', 'source');
INSERT INTO `tbl_dic_value` VALUES ('ab8472aab5de4ae9b388b2f1409441c1', '常规', '常规', '5', 'returnPriority');
INSERT INTO `tbl_dic_value` VALUES ('ab8c2a3dc05f4e3dbc7a0405f721b040', '05提案/报价', '05提案/报价', '5', 'stage');
INSERT INTO `tbl_dic_value` VALUES ('b924d911426f4bc5ae3876038bc7e0ad', 'web下载', 'web下载', '12', 'source');
INSERT INTO `tbl_dic_value` VALUES ('c13ad8f9e2f74d5aa84697bb243be3bb', '03价值建议', '03价值建议', '3', 'stage');
INSERT INTO `tbl_dic_value` VALUES ('c83c0be184bc40708fd7b361b6f36345', '最低', '最低', '4', 'returnPriority');
INSERT INTO `tbl_dic_value` VALUES ('db867ea866bc44678ac20c8a4a8bfefb', '员工介绍', '员工介绍', '3', 'source');
INSERT INTO `tbl_dic_value` VALUES ('e44be1d99158476e8e44778ed36f4355', '04确定决策者', '04确定决策者', '4', 'stage');
INSERT INTO `tbl_dic_value` VALUES ('e5f383d2622b4fc0959f4fe131dafc80', '女士', '女士', '3', 'appellation');
INSERT INTO `tbl_dic_value` VALUES ('e81577d9458f4e4192a44650a3a3692b', '06谈判/复审', '06谈判/复审', '6', 'stage');
INSERT INTO `tbl_dic_value` VALUES ('fb65d7fdb9c6483db02713e6bc05dd19', '在线商城', '在线商城', '5', 'source');
INSERT INTO `tbl_dic_value` VALUES ('fd677cc3b5d047d994e16f6ece4d3d45', '公开媒介', '公开媒介', '7', 'source');
INSERT INTO `tbl_dic_value` VALUES ('ff802a03ccea4ded8731427055681d48', '外部介绍', '外部介绍', '4', 'source');

-- ----------------------------
-- Table structure for tbl_tran
-- ----------------------------
DROP TABLE IF EXISTS `tbl_tran`;
CREATE TABLE `tbl_tran`  (
  `id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标识',
  `owner` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所有者',
  `money` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '金额',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `expectedDate` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预计成交日期',
  `customerId` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '外键 关联tbl_customer',
  `stage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '交易阶段',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '交易类型',
  `source` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '交易来源',
  `activityId` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '外键 关联tbl_activity',
  `contactsId` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '外键 关联tbl_contacts',
  `createBy` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `createTime` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建时间',
  `editBy` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `editTime` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改时间',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `contactSummary` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系纪要',
  `nextContactTime` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '下次联系时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '交易表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_tran
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_tran_history
-- ----------------------------
DROP TABLE IF EXISTS `tbl_tran_history`;
CREATE TABLE `tbl_tran_history`  (
  `id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标识',
  `stage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '阶段',
  `money` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '金额',
  `expectedDate` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预计成交时间',
  `createTime` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建时间',
  `createBy` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `tranId` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '交易id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '交易阶段历史表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_tran_history
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_tran_remark
-- ----------------------------
DROP TABLE IF EXISTS `tbl_tran_remark`;
CREATE TABLE `tbl_tran_remark`  (
  `id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标识',
  `noteContent` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注内容',
  `createBy` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `createTime` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建时间',
  `editBy` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `editTime` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改时间',
  `editFlag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改标记',
  `tranId` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '交易id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '交易备注表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_tran_remark
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_user
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE `tbl_user`  (
  `id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '编号 ',
  `loginAct` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登录账号',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '真实姓名',
  `loginPwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登录密码',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `expireTime` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '失效时间',
  `lockState` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '锁定状态（0 锁定,1 启用）',
  `deptNo` char(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门编号',
  `allowIps` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '允许访问的ip地址',
  `createTime` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建时间',
  `createBy` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `editTime` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改时间',
  `editBy` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_user
-- ----------------------------
INSERT INTO `tbl_user` VALUES ('12345678zxcvbnma12345678zxcvbnma', 'ls', '李四', '202cb962ac59075b964b07152d234b70', 'ls@163.com', '2020-11-17 21:50:11', '1', 'A001', '192.168.1.1,127.0.0.1', '2018-11-22 12:12:12', '李四', NULL, NULL);
INSERT INTO `tbl_user` VALUES ('23456789asdfghjk23456789asdfghjk', 'zs', '张三', '202cb962ac59075b964b07152d234b70', 'zs@qq.com', '2020-11-30 21:50:11', '1', 'A001', '192.168.1.1,192.168.1.2,127.0.0.1', '2018-11-22 11:12:12', '张三', NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
