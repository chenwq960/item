/*
Navicat MySQL Data Transfer

Source Server         : cwq
Source Server Version : 50557
Source Host           : localhost:3306
Source Database       : item

Target Server Type    : MYSQL
Target Server Version : 50557
File Encoding         : 65001

Date: 2020-04-25 18:52:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_role_auth
-- ----------------------------
DROP TABLE IF EXISTS `tb_role_auth`;
CREATE TABLE `tb_role_auth` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `auth_id` int(10) unsigned NOT NULL COMMENT '权限ID',
  `role_id` int(11) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色权限';

-- ----------------------------
-- Records of tb_role_auth
-- ----------------------------
