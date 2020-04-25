/*
Navicat MySQL Data Transfer

Source Server         : cwq
Source Server Version : 50557
Source Host           : localhost:3306
Source Database       : item

Target Server Type    : MYSQL
Target Server Version : 50557
File Encoding         : 65001

Date: 2020-04-25 18:52:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '人员ID',
  `department_id` int(11) NOT NULL COMMENT '部门ID',
  `account` varchar(16) NOT NULL COMMENT '登录账号',
  `password` varchar(64) NOT NULL COMMENT '密码',
  `user_name` varchar(62) NOT NULL COMMENT '用户名',
  `real_name` varchar(32) NOT NULL COMMENT '真实名称',
  `sex` tinyint(4) DEFAULT NULL COMMENT '性别 : 0，未提供\n1，男\n2，女',
  `birthday` datetime DEFAULT NULL COMMENT '生日',
  `nation` varchar(32) DEFAULT NULL COMMENT '民族',
  `id_card` varchar(32) DEFAULT NULL COMMENT '身份证号',
  `id_card_front` varchar(128) DEFAULT NULL COMMENT '身份证正面照',
  `id_card_back` varchar(128) DEFAULT NULL COMMENT '身份证反面照',
  `address` varchar(128) DEFAULT NULL COMMENT '籍贯',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_user` int(11) NOT NULL COMMENT '创建人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `user_telete` varchar(15) DEFAULT NULL COMMENT '用户手机号',
  `update_user` int(11) DEFAULT NULL COMMENT '更新人',
  `is_delete` tinyint(1) unsigned zerofill NOT NULL DEFAULT '0' COMMENT '是否已删除 : 0，未删除\n1，已删除',
  `tel` varchar(100) NOT NULL COMMENT '手机号',
  `email` varchar(100) NOT NULL COMMENT '邮箱',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='人员表';

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('5', '3', 'admin', 'C20AD4D76FE97759AA27A0C99BFF6710', 'cwq', '王思文', '1', '2020-03-03 12:23:29', '汉', '610115199203176028', '7a37918f-976d-45b3-b663-f87987c0b676.png', null, '西安市雁塔区科技路209号6号楼3单元402号', '2020-01-28 12:23:29', '1', '2020-03-03 12:23:29', '13436107025', '1', '0', '', '');
INSERT INTO `tb_user` VALUES ('6', '2', 'cwq', '202CB962AC59075B964B07152D234B70', 'admin', '李鹏', '1', '2020-03-03 13:41:52', '汉', '610526198904174312', '270fdb5a-b100-47e3-9872-706c5dc5d47b.png', null, '陕西省蒲城县党睦镇府华村四组', '2020-03-28 13:41:52', '5', '2020-03-03 13:41:52', '16619807340', '5', '0', '', '');
INSERT INTO `tb_user` VALUES ('7', '3', '123', '65DED5353C5EE48D0B7D48C591B8F430', '甲', '爱新觉罗·玄烨', '1', '2020-03-05 12:14:08', '满', '', 'e8c8a6d1-b22c-41f0-806f-bedd237a45d9.png', null, '北京市东城区景山前街4号紫禁城乾清宫', '2020-04-05 12:14:08', '6', '2020-03-05 12:14:08', null, '6', '0', '', '');
INSERT INTO `tb_user` VALUES ('8', '4', '丁', '250CF8B51C773F3F8DC8B4BE867A9A02', '名称', '李鹏', '1', '2020-03-05 12:18:08', '汉', '610526198904174312', '2f5fa048-3adb-43f3-9e20-20b431a21db8.png', null, '陕西省蒲城县党睦镇府华村四组', '2019-12-30 12:18:08', '6', '2020-03-05 12:18:08', null, '6', '0', '', '');
INSERT INTO `tb_user` VALUES ('9', '6', '∪', '67F7FB873EAF29526A11A9B7AC33BFAC', '4545', '韩媛媛', '1', '2020-03-05 12:18:36', '汉', '411403198107119322', 'a10c7e3d-182d-4b90-8d98-790e6d5ff5e4.png', null, '武汉市洪山区珞喻路152号', '2020-03-05 12:18:36', '6', '2020-03-05 12:18:36', null, '6', '0', '', '');
INSERT INTO `tb_user` VALUES ('10', '2', '陈文庆', '202CB962AC59075B964B07152D234B70', 'hhh', '李鹏', '1', '2020-03-06 13:10:53', '汉', '610526198904174312', 'a95469d1-162e-4b8c-b3db-95abfda305d0.png', null, '陕西省蒲城县党睦镇府华村四组', '2020-03-06 13:10:53', '6', '2020-03-06 13:10:53', null, '6', '0', '', '');
INSERT INTO `tb_user` VALUES ('11', '2', '陈文庆', '202CB962AC59075B964B07152D234B70', 'hhh', '李鹏', '1', '2020-03-06 13:10:53', '汉', '610526198904174312', '327a8833-3b42-476e-aad3-c8d690a72174.png', null, '陕西省蒲城县党睦镇府华村四组', '2020-03-06 13:10:53', '6', '2020-03-06 13:10:53', null, '6', '0', '', '');
INSERT INTO `tb_user` VALUES ('12', '6', 'test', '250CF8B51C773F3F8DC8B4BE867A9A02', 'test', '李鹏', '1', '2020-03-06 13:11:35', '汉', '610526198904174312', 'c3aaf485-733e-4e8f-a94e-c060f7bfee39.png', null, '陕西省蒲城县党睦镇府华村四组', '2020-03-06 13:11:35', '6', '2020-03-06 13:11:35', null, '6', '0', '', '');
INSERT INTO `tb_user` VALUES ('13', '6', 'qing', '834AF260D56E6B7B01199548065AC7DA', 'qing', '爱新觉罗·玄烨', '1', '2020-03-06 13:11:53', '满', '', '9189e0f3-d4a8-4614-8b7a-5fede28e34f7.png', null, '北京市东城区景山前街4号紫禁城乾清宫', '2020-03-06 13:11:53', '6', '2020-03-06 13:11:53', null, '6', '0', '', '');
INSERT INTO `tb_user` VALUES ('14', '1', 'cwqxx', '202CB962AC59075B964B07152D234B70', '陈文庆', '爱新觉罗·玄烨', '1', '2020-03-17 09:58:26', '满', '', '317a5bc5-0b8f-41e1-a6a4-bb9aa9291a50.png', null, '北京市东城区景山前街4号紫禁城乾清宫', '2020-03-17 09:58:26', '6', '2020-03-17 09:58:26', null, '6', '0', '16619807340', 'chenwq960@163.com');
