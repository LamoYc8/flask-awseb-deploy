/*
 Navicat Premium Dump SQL

 Source Server         : mysql-conn
 Source Server Type    : MySQL
 Source Server Version : 90400 (9.4.0)
 Source Host           : localhost:3306
 Source Schema         : flask_web

 Target Server Type    : MySQL
 Target Server Version : 90400 (9.4.0)
 File Encoding         : 65001

 Date: 29/10/2025 21:35:13
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `id` int NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `count` int NOT NULL,
  `status` tinyint NOT NULL,
  `usr_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_order_usr` (`usr_id`),
  CONSTRAINT `fk_order_usr` FOREIGN KEY (`usr_id`) REFERENCES `usr_inform` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Table structure for usr_inform
-- ----------------------------
DROP TABLE IF EXISTS `usr_inform`;
CREATE TABLE `usr_inform` (
  `id` int NOT NULL AUTO_INCREMENT,
  `usr_name` varchar(16) NOT NULL,
  `password` varchar(64) NOT NULL,
  `role` tinyint NOT NULL,
  `real_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of usr_inform
-- ----------------------------
BEGIN;
INSERT INTO `usr_inform` (`id`, `usr_name`, `password`, `role`, `real_name`) VALUES (1, 'admin', 'admin', 2, 'admin');
INSERT INTO `usr_inform` (`id`, `usr_name`, `password`, `role`, `real_name`) VALUES (2, 'client', 'client', 1, 'client');
INSERT INTO `usr_inform` (`id`, `usr_name`, `password`, `role`, `real_name`) VALUES (3, 'allen', 'allen', 1, 'allen');
INSERT INTO `usr_inform` (`id`, `usr_name`, `password`, `role`, `real_name`) VALUES (4, 'alex', 'alex', 1, 'alex');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
