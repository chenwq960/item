/*
Navicat MySQL Data Transfer

Source Server         : cwq
Source Server Version : 50557
Source Host           : localhost:3306
Source Database       : item

Target Server Type    : MYSQL
Target Server Version : 50557
File Encoding         : 65001

Date: 2020-04-25 18:52:04
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_role
-- ----------------------------
DROP TABLE IF EXISTS `tb_role`;
CREATE TABLE `tb_role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(32) NOT NULL DEFAULT '' COMMENT '角色名称 ',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `create_user` int(11) NOT NULL COMMENT '创建人',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `update_user` int(11) DEFAULT NULL COMMENT '修改人',
  `is_delete` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否已删除 : 0，未删除\n1，已删除\n',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of tb_role
-- ----------------------------
INSERT INTO `tb_role` VALUES ('1', '项目经理', '2020-02-05 09:36:51', '5', '2020-02-06 09:37:04', '5', '1');
INSERT INTO `tb_role` VALUES ('2', '架构经理', '2020-02-06 09:37:22', '5', '2020-02-28 08:54:05', '5', '0');
INSERT INTO `tb_role` VALUES ('3', '策划', '2020-02-01 09:37:35', '5', '2020-02-06 09:37:39', '5', '1');
INSERT INTO `tb_role` VALUES ('4', '架构经理', '2020-02-27 20:21:42', '5', '2020-02-27 20:21:42', '5', '0');
INSERT INTO `tb_role` VALUES ('5', '456', '2020-02-27 20:24:29', '5', '2020-02-27 20:34:13', '5', '1');
INSERT INTO `tb_role` VALUES ('6', '瓦查经理', '2020-02-28 09:41:28', '5', '2020-02-28 09:41:28', '5', '0');
INSERT INTO `tb_role` VALUES ('7', '5', '2020-03-04 12:20:53', '6', '2020-03-04 12:20:53', '6', '1');
INSERT INTO `tb_role` VALUES ('8', '教师', '2020-03-04 16:58:19', '6', '2020-03-04 16:58:19', '6', '0');
INSERT INTO `tb_role` VALUES ('9', '班主任', '2020-03-04 17:08:39', '6', '2020-03-04 17:08:39', '6', '0');
INSERT INTO `tb_role` VALUES ('10', '5', '2020-03-04 17:15:08', '6', '2020-03-04 17:15:08', '6', '0');
INSERT INTO `tb_role` VALUES ('11', '44', '2020-03-04 17:21:07', '6', '2020-03-04 17:21:07', '6', '0');
