/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80023 (8.0.23)
 Source Host           : localhost:3306
 Source Schema         : blog

 Target Server Type    : MySQL
 Target Server Version : 80023 (8.0.23)
 File Encoding         : 65001

 Date: 16/06/2023 15:55:32
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_tag
-- ----------------------------
DROP TABLE IF EXISTS `t_tag`;
CREATE TABLE `t_tag`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_tag
-- ----------------------------
INSERT INTO `t_tag` VALUES (8, '生活');
INSERT INTO `t_tag` VALUES (9, 'javascript');
INSERT INTO `t_tag` VALUES (10, '软件方法');
INSERT INTO `t_tag` VALUES (11, 'webstorm');
INSERT INTO `t_tag` VALUES (12, 'springboot');
INSERT INTO `t_tag` VALUES (13, 'react');
INSERT INTO `t_tag` VALUES (14, 'HTML');
INSERT INTO `t_tag` VALUES (15, 'CSS');
INSERT INTO `t_tag` VALUES (17, 'Java');

SET FOREIGN_KEY_CHECKS = 1;
