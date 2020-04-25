/*
Navicat MySQL Data Transfer

Source Server         : cwq
Source Server Version : 50557
Source Host           : localhost:3306
Source Database       : item

Target Server Type    : MYSQL
Target Server Version : 50557
File Encoding         : 65001

Date: 2020-04-25 18:52:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_role_auto
-- ----------------------------
DROP TABLE IF EXISTS `tb_role_auto`;
CREATE TABLE `tb_role_auto` (
  `id` int(10) NOT NULL,
  `rold_id` int(10) DEFAULT NULL,
  `auto_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_role_auto
-- ----------------------------
