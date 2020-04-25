/*
Navicat MySQL Data Transfer

Source Server         : cwq
Source Server Version : 50557
Source Host           : localhost:3306
Source Database       : item

Target Server Type    : MYSQL
Target Server Version : 50557
File Encoding         : 65001

Date: 2020-04-25 18:51:48
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_department
-- ----------------------------
DROP TABLE IF EXISTS `tb_department`;
CREATE TABLE `tb_department` (
  `department_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '部门ID',
  `department_name` varchar(32) NOT NULL COMMENT '部门名称',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `create_user` int(11) NOT NULL COMMENT '创建人',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `update_user` int(11) DEFAULT NULL COMMENT '修改人',
  `is_delete` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否已删除 : 0，未删除\n1，已删除',
  PRIMARY KEY (`department_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='部门表';

-- ----------------------------
-- Records of tb_department
-- ----------------------------
INSERT INTO `tb_department` VALUES ('1', '销售部门', '2020-02-12 08:36:36', '5', '2020-02-06 08:36:40', '6', '0');
INSERT INTO `tb_department` VALUES ('2', '营销部门', '2020-02-12 08:36:56', '5', '2020-02-05 08:37:00', '6', '0');
INSERT INTO `tb_department` VALUES ('3', '嘻哈部', '2020-02-28 09:24:49', '5', '2020-02-28 09:40:42', '6', '0');
INSERT INTO `tb_department` VALUES ('4', '瓦查部门', '2020-02-28 09:41:15', '5', '2020-02-28 09:41:15', '6', '0');
INSERT INTO `tb_department` VALUES ('5', '邋遢部门', '2020-03-02 18:10:17', '5', '2020-03-02 18:10:17', '6', '0');
INSERT INTO `tb_department` VALUES ('6', '测试部', '2020-03-04 17:28:52', '6', '2020-03-04 17:28:58', '6', '0');
INSERT INTO `tb_department` VALUES ('7', 'bumen', '2020-03-07 17:29:25', '6', '2020-03-07 17:29:25', '6', '0');
INSERT INTO `tb_department` VALUES ('8', '大唐部门', '2020-03-17 09:08:36', '6', '2020-03-17 09:08:36', '6', '0');
