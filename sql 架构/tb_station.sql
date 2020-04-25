/*
Navicat MySQL Data Transfer

Source Server         : cwq
Source Server Version : 50557
Source Host           : localhost:3306
Source Database       : item

Target Server Type    : MYSQL
Target Server Version : 50557
File Encoding         : 65001

Date: 2020-04-25 18:52:19
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_station
-- ----------------------------
DROP TABLE IF EXISTS `tb_station`;
CREATE TABLE `tb_station` (
  `station_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '网点ID',
  `station_name` varchar(32) NOT NULL COMMENT '网点名称',
  `province_id` int(11) NOT NULL COMMENT '省ID',
  `city_id` int(11) NOT NULL COMMENT '市ID',
  `county_id` int(11) NOT NULL COMMENT '县区ID',
  `address` varchar(128) NOT NULL COMMENT '详细地址',
  `longitude` decimal(10,8) DEFAULT NULL COMMENT '经度',
  `latitude` decimal(10,8) DEFAULT NULL COMMENT '维度',
  `create_user` int(11) NOT NULL COMMENT '创建人',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_user` int(11) NOT NULL COMMENT '更新人',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  `is_delete` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否已删除',
  PRIMARY KEY (`station_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COMMENT='服务网点表';

-- ----------------------------
-- Records of tb_station
-- ----------------------------
INSERT INTO `tb_station` VALUES ('1', '联想售', '924', '925', '927', '北京路', '0.00000000', '0.00000000', '5', '2020-03-04 17:05:04', '6', '2020-03-13 17:05:08', '1');
INSERT INTO `tb_station` VALUES ('2', '华为售后', '1', '2', '3', '深圳', '0.00000000', '0.00000000', '5', '2020-03-18 17:05:51', '6', '2020-03-21 17:05:56', '1');
INSERT INTO `tb_station` VALUES ('3', '嘻嘻哈哈', '1', '2', '4', '123123', null, null, '5', '2020-03-02 18:37:44', '6', '2020-03-02 18:37:44', '1');
INSERT INTO `tb_station` VALUES ('4', '854', '251', '252', '254', '123123', null, null, '5', '2020-03-02 18:48:56', '6', '2020-03-02 18:48:56', '1');
INSERT INTO `tb_station` VALUES ('5', '大师傅但是', '37', '95', '97', '45', null, null, '5', '2020-03-02 18:49:57', '6', '2020-03-02 18:49:57', '1');
INSERT INTO `tb_station` VALUES ('6', '小米售后店', '251', '252', '254', '小米中心', null, null, '5', '2020-03-03 09:46:10', '6', '2020-03-03 09:46:10', '0');
INSERT INTO `tb_station` VALUES ('7', '淘宝中心', '906', '907', '909', '网上', null, null, '5', '2020-03-03 09:46:47', '6', '2020-03-03 09:46:47', '0');
INSERT INTO `tb_station` VALUES ('8', '京东中心', '1324', '1325', '1333', '大兴', null, null, '5', '2020-03-03 09:46:57', '6', '2020-03-03 09:46:57', '0');
INSERT INTO `tb_station` VALUES ('9', '阿里巴巴', '3121', '3122', '3128', '淘宝', null, null, '5', '2020-03-03 09:47:07', '6', '2020-03-03 09:47:07', '0');
INSERT INTO `tb_station` VALUES ('10', '联想售后', '2423', '2424', '2426', '西二旗', null, null, '5', '2020-03-03 09:47:16', '6', '2020-03-03 09:47:16', '0');
INSERT INTO `tb_station` VALUES ('11', '内蒙古服务中心', '399', '400', '402', '草原中心', null, null, '6', '2020-03-04 12:03:26', '6', '2020-03-04 12:03:26', '0');
INSERT INTO `tb_station` VALUES ('12', '嘉峪关服务中心', '3209', '3245', '3247', '嘉峪关', null, null, '6', '2020-03-04 12:04:34', '6', '2020-03-04 12:04:34', '0');
INSERT INTO `tb_station` VALUES ('13', '赛里木湖服务中心', '3542', '3630', '3632', '赛里木湖', null, null, '6', '2020-03-04 12:05:29', '6', '2020-03-04 12:05:29', '0');
INSERT INTO `tb_station` VALUES ('14', '漠河服务中心', '746', '878', '880', '漠河', null, null, '6', '2020-03-04 12:06:39', '6', '2020-03-04 12:06:39', '0');
INSERT INTO `tb_station` VALUES ('15', '大师傅但是', '530', '531', '539', '详细地址', null, null, '6', '2020-03-04 12:29:36', '6', '2020-03-04 12:29:36', '0');
INSERT INTO `tb_station` VALUES ('16', '胶州服务站', '1551', '1565', '1575', '胶州', null, null, '6', '2020-03-04 13:09:04', '6', '2020-03-04 13:09:04', '0');
INSERT INTO `tb_station` VALUES ('17', '崖州服务站', '2563', '2570', '2575', '兖州', null, null, '6', '2020-03-04 13:09:55', '6', '2020-03-04 13:09:55', '0');
INSERT INTO `tb_station` VALUES ('18', '阿合奇服务站', '3542', '3608', '3610', '沙漠', null, null, '6', '2020-03-04 19:28:47', '6', '2020-03-04 19:28:47', '0');
INSERT INTO `tb_station` VALUES ('19', '温泉站', '3542', '3565', '3568', '', null, null, '6', '2020-03-04 19:30:01', '6', '2020-03-04 19:30:01', '0');
INSERT INTO `tb_station` VALUES ('20', '芙蓉服务站', '2093', '2094', '2096', '芙蓉区', null, null, '6', '2020-03-05 18:02:22', '6', '2020-03-05 18:02:22', '0');
INSERT INTO `tb_station` VALUES ('21', '芙蓉服务站', '2093', '2094', '2096', '芙蓉区', null, null, '6', '2020-03-05 18:02:26', '6', '2020-03-05 18:02:26', '0');
INSERT INTO `tb_station` VALUES ('22', '芙蓉服务站', '2093', '2094', '2096', '芙蓉区', null, null, '6', '2020-03-05 18:02:38', '6', '2020-03-05 18:02:38', '0');
INSERT INTO `tb_station` VALUES ('23', '海苔服务站', '2563', '2570', '2572', '海南省', null, null, '6', '2020-03-05 18:03:19', '6', '2020-03-05 18:03:19', '0');
INSERT INTO `tb_station` VALUES ('24', '', '2563', '2564', '2566', '', null, null, '6', '2020-03-05 18:04:23', '6', '2020-03-05 18:04:23', '0');
INSERT INTO `tb_station` VALUES ('25', '', '2563', '2581', '2583', '', null, null, '6', '2020-03-05 18:05:25', '6', '2020-03-05 18:05:25', '0');
INSERT INTO `tb_station` VALUES ('26', '', '251', '252', '254', '', null, null, '6', '2020-03-05 18:48:41', '6', '2020-03-05 18:48:41', '0');
INSERT INTO `tb_station` VALUES ('27', '', '530', '531', '533', '', null, null, '6', '2020-03-05 18:48:47', '6', '2020-03-05 18:48:47', '0');
INSERT INTO `tb_station` VALUES ('28', '', '2423', '2424', '2426', '', null, null, '6', '2020-03-05 18:48:52', '6', '2020-03-05 18:48:52', '0');
INSERT INTO `tb_station` VALUES ('29', '', '251', '252', '254', '', null, null, '6', '2020-03-06 09:43:37', '6', '2020-03-06 09:43:37', '0');
INSERT INTO `tb_station` VALUES ('30', '', '251', '252', '254', '', null, null, '6', '2020-03-06 09:44:07', '6', '2020-03-06 09:44:07', '0');
INSERT INTO `tb_station` VALUES ('31', '', '251', '252', '254', '', null, null, '6', '2020-03-06 09:44:10', '6', '2020-03-06 09:44:10', '0');
INSERT INTO `tb_station` VALUES ('32', '', '2638', '2846', '2848', '', null, null, '6', '2020-03-06 13:13:51', '6', '2020-03-06 13:13:51', '0');
INSERT INTO `tb_station` VALUES ('33', '芙蓉服务站', '251', '252', '254', '芙蓉区', null, null, '6', '2020-03-12 09:20:21', '6', '2020-03-12 09:20:21', '0');
