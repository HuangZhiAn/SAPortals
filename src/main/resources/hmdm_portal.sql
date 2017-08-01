/*
Navicat MySQL Data Transfer

Source Server         : root
Source Server Version : 50716
Source Host           : localhost:3306
Source Database       : hmdm_portal

Target Server Type    : MYSQL
Target Server Version : 50716
File Encoding         : 65001

Date: 2017-08-01 11:32:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for hmdm_pt_customer
-- ----------------------------
DROP TABLE IF EXISTS `hmdm_pt_customer`;
CREATE TABLE `hmdm_pt_customer` (
  `name` varchar(50) NOT NULL,
  `customer_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `OBJECT_VERSION_NUMBER` bigint(20) DEFAULT '1',
  `REQUEST_ID` bigint(20) DEFAULT '-1',
  `PROGRAM_ID` bigint(20) DEFAULT '-1',
  `CREATED_BY` bigint(20) DEFAULT '-1',
  `CREATION_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `LAST_UPDATED_BY` bigint(20) DEFAULT '-1',
  `LAST_UPDATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `LAST_UPDATE_LOGIN` bigint(20) DEFAULT '-1',
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hmdm_pt_customer
-- ----------------------------
INSERT INTO `hmdm_pt_customer` VALUES ('jie', '1001', 'jie.zhou03@hand-china.com', '123456', '1', '-1', '-1', '-1', '2017-08-01 10:32:28', '-1', '2017-08-01 10:32:28', '-1');
INSERT INTO `hmdm_pt_customer` VALUES ('test', '1002', 'test', '123456', '1', '-1', '-1', '-1', '2017-08-01 10:33:00', '-1', '2017-08-01 10:33:00', '-1');

-- ----------------------------
-- Table structure for hmdm_pt_downrecord
-- ----------------------------
DROP TABLE IF EXISTS `hmdm_pt_downrecord`;
CREATE TABLE `hmdm_pt_downrecord` (
  `record_id` bigint(20) NOT NULL,
  `customer_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `time` datetime DEFAULT CURRENT_TIMESTAMP,
  `OBJECT_VERSION_NUMBER` bigint(20) DEFAULT '1',
  `REQUEST_ID` bigint(20) DEFAULT '-1',
  `PROGRAM_ID` bigint(20) DEFAULT '-1',
  `CREATED_BY` bigint(20) DEFAULT '-1',
  `CREATION_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `LAST_UPDATED_BY` bigint(20) DEFAULT '-1',
  `LAST_UPDATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `LAST_UPDATE_LOGIN` bigint(20) DEFAULT '-1',
  PRIMARY KEY (`record_id`),
  KEY `customer_id` (`customer_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `customer_id` FOREIGN KEY (`customer_id`) REFERENCES `hmdm_pt_customer` (`customer_id`),
  CONSTRAINT `product_id` FOREIGN KEY (`product_id`) REFERENCES `hmdm_pt_product` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hmdm_pt_downrecord
-- ----------------------------
INSERT INTO `hmdm_pt_downrecord` VALUES ('1001', '1001', '1001', '2017-08-02 10:34:31', '1', '-1', '-1', '-1', '2017-08-01 10:34:37', '-1', '2017-08-01 10:34:37', '-1');

-- ----------------------------
-- Table structure for hmdm_pt_product
-- ----------------------------
DROP TABLE IF EXISTS `hmdm_pt_product`;
CREATE TABLE `hmdm_pt_product` (
  `product_id` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `version` varchar(20) NOT NULL,
  `state` int(11) DEFAULT NULL,
  `OBJECT_VERSION_NUMBER` bigint(20) DEFAULT '1',
  `REQUEST_ID` bigint(20) DEFAULT '-1',
  `PROGRAM_ID` bigint(20) DEFAULT '-1',
  `CREATED_BY` bigint(20) DEFAULT '-1',
  `CREATION_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `LAST_UPDATED_BY` bigint(20) DEFAULT '-1',
  `LAST_UPDATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `LAST_UPDATE_LOGIN` bigint(20) DEFAULT '-1',
  PRIMARY KEY (`product_id`),
  KEY `state_id` (`state`),
  CONSTRAINT `state_id` FOREIGN KEY (`state`) REFERENCES `hmdm_pt_productstate` (`state_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hmdm_pt_product
-- ----------------------------
INSERT INTO `hmdm_pt_product` VALUES ('1001', 'hmdm', '1.0', '1001', '1', '-1', '-1', '-1', '2017-08-01 10:34:19', '-1', '2017-08-01 10:34:19', '-1');

-- ----------------------------
-- Table structure for hmdm_pt_productstate
-- ----------------------------
DROP TABLE IF EXISTS `hmdm_pt_productstate`;
CREATE TABLE `hmdm_pt_productstate` (
  `state_id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `OBJECT_VERSION_NUMBER` bigint(20) DEFAULT '1',
  `REQUEST_ID` bigint(20) DEFAULT '-1',
  `PROGRAM_ID` bigint(20) DEFAULT '-1',
  `CREATED_BY` bigint(20) DEFAULT '-1',
  `CREATION_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `LAST_UPDATED_BY` bigint(20) DEFAULT '-1',
  `LAST_UPDATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `LAST_UPDATE_LOGIN` bigint(20) DEFAULT '-1',
  PRIMARY KEY (`state_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hmdm_pt_productstate
-- ----------------------------
INSERT INTO `hmdm_pt_productstate` VALUES ('1001', 'online', '1', '-1', '-1', '-1', '2017-08-01 10:33:29', '-1', '2017-08-01 10:33:29', '-1');
INSERT INTO `hmdm_pt_productstate` VALUES ('1002', 'test', '1', '-1', '-1', '-1', '2017-08-01 10:33:38', '-1', '2017-08-01 10:33:38', '-1');

-- ----------------------------
-- Table structure for hmdm_pt_suggesttype
-- ----------------------------
DROP TABLE IF EXISTS `hmdm_pt_suggesttype`;
CREATE TABLE `hmdm_pt_suggesttype` (
  `type_id` bigint(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `OBJECT_VERSION_NUMBER` bigint(20) DEFAULT '1',
  `REQUEST_ID` bigint(20) DEFAULT '-1',
  `PROGRAM_ID` bigint(20) DEFAULT '-1',
  `CREATED_BY` bigint(20) DEFAULT '-1',
  `CREATION_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `LAST_UPDATED_BY` bigint(20) DEFAULT '-1',
  `LAST_UPDATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `LAST_UPDATE_LOGIN` bigint(20) DEFAULT '-1',
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hmdm_pt_suggesttype
-- ----------------------------
INSERT INTO `hmdm_pt_suggesttype` VALUES ('1001', 'suggestion', '1', '-1', '-1', '-1', '2017-08-01 10:33:51', '-1', '2017-08-01 10:33:51', '-1');
