/*
Navicat MySQL Data Transfer

Source Server         : cwq
Source Server Version : 50557
Source Host           : localhost:3306
Source Database       : item

Target Server Type    : MYSQL
Target Server Version : 50557
File Encoding         : 65001

Date: 2020-04-25 18:51:34
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_authinfo
-- ----------------------------
DROP TABLE IF EXISTS `tb_authinfo`;
CREATE TABLE `tb_authinfo` (
  `auth_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '权限ID',
  `auth_code` varchar(32) DEFAULT NULL COMMENT '权限编码',
  `auth_name` varchar(32) DEFAULT NULL COMMENT '权限名称',
  `auth_url` varchar(128) DEFAULT NULL COMMENT '权限地址',
  `auto_pid` int(10) DEFAULT NULL COMMENT '权限父级路径',
  `auth_type` tinyint(4) DEFAULT NULL COMMENT '权限类型 : 1，页面\n2，按钮\n3，接口',
  `target` varchar(30) DEFAULT NULL,
  `icon` varchar(32) DEFAULT NULL COMMENT '权限图标',
  PRIMARY KEY (`auth_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='权限表';

-- ----------------------------
-- Records of tb_authinfo
-- ----------------------------
INSERT INTO `tb_authinfo` VALUES ('1', null, '系统管理', null, '0', null, null, null);
INSERT INTO `tb_authinfo` VALUES ('2', null, '部门管理', 'department/list/page', '1', null, null, null);
INSERT INTO `tb_authinfo` VALUES ('3', null, '角色管理', 'role/list/page', '1', null, null, null);
INSERT INTO `tb_authinfo` VALUES ('4', null, '人员管理', 'user/list/page', '1', null, null, null);
INSERT INTO `tb_authinfo` VALUES ('5', null, '销售管理', null, '0', null, null, null);
INSERT INTO `tb_authinfo` VALUES ('6', null, '网点管理', 'station/list/page', '5', null, null, null);
INSERT INTO `tb_authinfo` VALUES ('7', null, '设备管理', 'saleDevice/list/page', '5', null, null, null);
INSERT INTO `tb_authinfo` VALUES ('8', null, '日志记录管理', 'log/list/page', '1', null, null, null);
INSERT INTO `tb_authinfo` VALUES ('9', null, '报表管理', 'echarts/list/page', '5', null, null, null);
INSERT INTO `tb_authinfo` VALUES ('10', null, '聚合网点', null, '5', null, null, null);
