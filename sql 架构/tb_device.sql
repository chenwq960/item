/*
Navicat MySQL Data Transfer

Source Server         : cwq
Source Server Version : 50557
Source Host           : localhost:3306
Source Database       : item

Target Server Type    : MYSQL
Target Server Version : 50557
File Encoding         : 65001

Date: 2020-04-25 18:51:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_device
-- ----------------------------
DROP TABLE IF EXISTS `tb_device`;
CREATE TABLE `tb_device` (
  `device_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '设备ID',
  `device_name` varchar(32) NOT NULL COMMENT '设备名称',
  `device_code` varchar(32) NOT NULL COMMENT '设备编号',
  `device_model` varchar(32) NOT NULL DEFAULT '' COMMENT '设备型号',
  `create_user` int(11) NOT NULL COMMENT '创建人',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_user` int(11) NOT NULL COMMENT '更新人',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  `is_delete` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否已删除',
  PRIMARY KEY (`device_id`),
  UNIQUE KEY `device_code` (`device_code`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='设备表';

-- ----------------------------
-- Records of tb_device
-- ----------------------------
INSERT INTO `tb_device` VALUES ('1', '电脑', '02155', 'Mate', '5', '2020-01-28 19:48:17', '6', '2020-02-12 19:48:23', '0');
INSERT INTO `tb_device` VALUES ('2', '手机', '4545', 'note', '5', '2020-02-20 19:48:41', '6', '2020-02-28 22:11:20', '0');
INSERT INTO `tb_device` VALUES ('3', '手段解决的开发', '20026', '手动阀手动阀', '5', '2020-02-28 21:55:52', '6', '2020-02-28 21:55:52', '1');
INSERT INTO `tb_device` VALUES ('4', '段位', '20028', '123', '5', '2020-02-28 21:59:40', '6', '2020-02-28 21:59:40', '1');
INSERT INTO `tb_device` VALUES ('5', 'ipar', '20029', '苹果', '5', '2020-02-28 22:11:35', '6', '2020-02-28 22:11:35', '0');
INSERT INTO `tb_device` VALUES ('6', '小米手机', '200210', '红米', '5', '2020-03-03 09:45:13', '6', '2020-03-03 09:45:13', '0');
INSERT INTO `tb_device` VALUES ('7', '天猫精灵', '200211', '精灵', '5', '2020-03-03 09:45:23', '6', '2020-03-03 09:45:32', '0');
INSERT INTO `tb_device` VALUES ('8', '小ai同学', '200212', '智能', '5', '2020-03-03 09:45:48', '6', '2020-03-03 13:42:01', '0');
INSERT INTO `tb_device` VALUES ('9', '智能台灯', '200213', 'Note', '6', '2020-03-04 17:21:30', '6', '2020-03-04 17:21:30', '0');
