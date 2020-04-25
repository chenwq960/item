/*
Navicat MySQL Data Transfer

Source Server         : cwq
Source Server Version : 50557
Source Host           : localhost:3306
Source Database       : item

Target Server Type    : MYSQL
Target Server Version : 50557
File Encoding         : 65001

Date: 2020-04-25 18:51:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_cache_sequence
-- ----------------------------
DROP TABLE IF EXISTS `tb_cache_sequence`;
CREATE TABLE `tb_cache_sequence` (
  `sequence_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序列ID',
  `sequence_entity` varchar(32) NOT NULL COMMENT '实体名称',
  `sequence_key` varchar(32) NOT NULL COMMENT '序列号Key',
  `sequence_value` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '序列号增长值',
  PRIMARY KEY (`sequence_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='缓存序列号';

-- ----------------------------
-- Records of tb_cache_sequence
-- ----------------------------
INSERT INTO `tb_cache_sequence` VALUES ('1', 'DEVICE', '2002', '13');
