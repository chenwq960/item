/*
Navicat MySQL Data Transfer

Source Server         : cwq
Source Server Version : 50557
Source Host           : localhost:3306
Source Database       : item

Target Server Type    : MYSQL
Target Server Version : 50557
File Encoding         : 65001

Date: 2020-04-25 18:52:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_sale_device
-- ----------------------------
DROP TABLE IF EXISTS `tb_sale_device`;
CREATE TABLE `tb_sale_device` (
  `record_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '记录ID',
  `station_id` int(11) NOT NULL COMMENT '网点ID',
  `device_id` int(11) NOT NULL COMMENT '设备ID',
  `sale_user` int(11) NOT NULL COMMENT '销售人员',
  `sale_time` datetime DEFAULT NULL COMMENT '销售时间',
  `sale_number` int(11) NOT NULL DEFAULT '1' COMMENT '销售个数',
  `remark` varchar(512) DEFAULT NULL COMMENT '备注',
  `create_user` int(11) NOT NULL COMMENT '创建人',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_user` int(11) NOT NULL COMMENT '更新人',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  `is_delete` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否已删除',
  PRIMARY KEY (`record_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COMMENT='设备销售表';

-- ----------------------------
-- Records of tb_sale_device
-- ----------------------------
INSERT INTO `tb_sale_device` VALUES ('1', '6', '1', '6', '2020-03-04 19:22:26', '10', '					已经销售\r\n			1	', '5', '2020-03-10 19:22:44', '1', '2020-03-03 13:42:33', '0');
INSERT INTO `tb_sale_device` VALUES ('2', '6', '6', '5', '2020-03-04 19:23:25', '100', '										为销售\r\n				\r\n				', '6', '2020-03-04 19:23:40', '1', '2020-03-03 13:42:41', '0');
INSERT INTO `tb_sale_device` VALUES ('3', '15', '1', '6', '2020-03-03 10:02:21', '100', '																	7788		\r\n				\r\n				\r\n				', '5', '2020-03-03 10:02:21', '1', '2020-03-04 17:29:29', '0');
INSERT INTO `tb_sale_device` VALUES ('4', '7', '2', '5', '2020-03-03 10:28:23', '500', '									\r\n空', '6', '2020-03-03 10:28:23', '1', '2020-03-04 17:29:33', '0');
INSERT INTO `tb_sale_device` VALUES ('5', '17', '7', '6', '2020-03-03 10:35:46', '9999', '								卖得好	\r\n				', '6', '2020-03-03 10:35:46', '1', '2020-03-04 17:29:37', '0');
INSERT INTO `tb_sale_device` VALUES ('6', '6', '9', '6', '2020-03-05 12:14:43', '10', '				', '6', '2020-03-05 12:14:43', '6', '2020-03-05 12:14:43', '0');
INSERT INTO `tb_sale_device` VALUES ('7', '6', '9', '5', '2020-03-05 12:14:55', '200', '				', '6', '2020-03-05 12:14:55', '6', '2020-03-05 12:14:55', '0');
INSERT INTO `tb_sale_device` VALUES ('8', '6', '9', '6', '2020-03-05 12:14:59', '1', '				', '6', '2020-03-05 12:14:59', '6', '2020-03-05 12:14:59', '0');
INSERT INTO `tb_sale_device` VALUES ('9', '10', '7', '5', '2020-03-05 12:15:05', '9999', '				', '6', '2020-03-05 12:15:05', '6', '2020-03-05 12:15:05', '0');
INSERT INTO `tb_sale_device` VALUES ('10', '9', '5', '7', '2020-03-05 12:15:09', '100', '				', '6', '2020-03-05 12:15:09', '6', '2020-03-05 12:15:09', '0');
INSERT INTO `tb_sale_device` VALUES ('11', '8', '9', '5', '2020-03-05 12:15:13', '1', '				', '6', '2020-03-05 12:15:13', '6', '2020-03-05 12:15:13', '0');
INSERT INTO `tb_sale_device` VALUES ('12', '9', '9', '7', '2020-03-05 12:16:08', '9999', '				', '6', '2020-03-05 12:16:08', '6', '2020-03-05 12:16:08', '0');
INSERT INTO `tb_sale_device` VALUES ('13', '6', '9', '7', '2020-03-05 12:16:11', '1', '				', '6', '2020-03-05 12:16:11', '6', '2020-03-05 12:16:11', '0');
INSERT INTO `tb_sale_device` VALUES ('14', '6', '9', '7', '2020-03-05 12:16:13', '1', '				', '6', '2020-03-05 12:16:13', '6', '2020-03-05 12:16:13', '0');
INSERT INTO `tb_sale_device` VALUES ('15', '6', '9', '8', '2020-03-05 12:18:12', '10000', '				', '6', '2020-03-05 12:18:12', '6', '2020-03-05 12:18:12', '0');
INSERT INTO `tb_sale_device` VALUES ('16', '6', '9', '8', '2020-03-05 12:18:14', '200', '				', '6', '2020-03-05 12:18:14', '6', '2020-03-05 12:18:14', '0');
INSERT INTO `tb_sale_device` VALUES ('17', '6', '9', '8', '2020-03-05 12:18:16', '1200', '				', '6', '2020-03-05 12:18:16', '6', '2020-03-05 12:18:16', '0');
INSERT INTO `tb_sale_device` VALUES ('18', '6', '9', '9', '2020-03-05 12:18:40', '5200', '				', '6', '2020-03-05 12:18:40', '6', '2020-03-05 12:18:40', '0');
INSERT INTO `tb_sale_device` VALUES ('19', '6', '9', '9', '2020-03-05 12:18:41', '1', '				', '6', '2020-03-05 12:18:41', '6', '2020-03-05 12:18:41', '0');
INSERT INTO `tb_sale_device` VALUES ('20', '6', '9', '9', '2020-03-05 12:18:43', '1', '				', '6', '2020-03-05 12:18:43', '6', '2020-03-05 12:18:43', '0');
INSERT INTO `tb_sale_device` VALUES ('21', '6', '9', '9', '2020-03-05 12:18:44', '1', '				', '6', '2020-03-05 12:18:44', '6', '2020-03-05 12:18:44', '0');
INSERT INTO `tb_sale_device` VALUES ('22', '6', '9', '9', '2020-03-05 12:18:46', '1', '				', '6', '2020-03-05 12:18:46', '6', '2020-03-05 12:18:46', '0');
INSERT INTO `tb_sale_device` VALUES ('23', '6', '9', '9', '2020-03-05 12:18:48', '1', '				', '6', '2020-03-05 12:18:48', '6', '2020-03-05 12:18:48', '0');
INSERT INTO `tb_sale_device` VALUES ('24', '6', '9', '9', '2020-03-05 12:18:50', '1', '				', '6', '2020-03-05 12:18:50', '6', '2020-03-05 12:18:50', '0');
INSERT INTO `tb_sale_device` VALUES ('25', '6', '9', '9', '2020-03-05 12:18:51', '1', '				', '6', '2020-03-05 12:18:51', '6', '2020-03-05 12:18:51', '0');
INSERT INTO `tb_sale_device` VALUES ('26', '6', '9', '9', '2020-03-05 13:00:02', '10000', '				', '6', '2020-03-05 13:00:02', '6', '2020-03-05 13:00:02', '1');
INSERT INTO `tb_sale_device` VALUES ('27', '6', '9', '11', '2020-03-06 13:11:05', '9999', '		4545		', '6', '2020-03-06 13:11:05', '6', '2020-03-06 13:11:05', '0');
INSERT INTO `tb_sale_device` VALUES ('28', '6', '9', '13', '2020-03-06 13:12:37', '8888', '				', '6', '2020-03-06 13:12:37', '6', '2020-03-06 13:12:37', '0');
INSERT INTO `tb_sale_device` VALUES ('29', '6', '9', '12', '2020-03-06 13:12:45', '7777', '				', '6', '2020-03-06 13:12:45', '6', '2020-03-06 13:12:45', '0');
