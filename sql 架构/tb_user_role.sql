/*
Navicat MySQL Data Transfer

Source Server         : cwq
Source Server Version : 50557
Source Host           : localhost:3306
Source Database       : item

Target Server Type    : MYSQL
Target Server Version : 50557
File Encoding         : 65001

Date: 2020-04-25 18:52:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_user_role
-- ----------------------------
DROP TABLE IF EXISTS `tb_user_role`;
CREATE TABLE `tb_user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `role_id` int(11) NOT NULL COMMENT '角色ID',
  `user_id` int(11) NOT NULL COMMENT '人员ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='人员角色表';

-- ----------------------------
-- Records of tb_user_role
-- ----------------------------
INSERT INTO `tb_user_role` VALUES ('1', '1', '5');
INSERT INTO `tb_user_role` VALUES ('2', '2', '5');
INSERT INTO `tb_user_role` VALUES ('3', '3', '5');
