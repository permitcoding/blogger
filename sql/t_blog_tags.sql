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

 Date: 16/06/2023 15:55:19
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_blog_tags
-- ----------------------------
DROP TABLE IF EXISTS `t_blog_tags`;
CREATE TABLE `t_blog_tags`  (
  `blogs_id` bigint NOT NULL,
  `tags_id` bigint NOT NULL,
  INDEX `FK5feau0gb4lq47fdb03uboswm8`(`tags_id` ASC) USING BTREE,
  INDEX `FKh4pacwjwofrugxa9hpwaxg6mr`(`blogs_id` ASC) USING BTREE,
  CONSTRAINT `FK5feau0gb4lq47fdb03uboswm8` FOREIGN KEY (`tags_id`) REFERENCES `t_tag` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKh4pacwjwofrugxa9hpwaxg6mr` FOREIGN KEY (`blogs_id`) REFERENCES `t_blog` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_blog_tags
-- ----------------------------
INSERT INTO `t_blog_tags` VALUES (37, 8);
INSERT INTO `t_blog_tags` VALUES (37, 10);
INSERT INTO `t_blog_tags` VALUES (37, 12);
INSERT INTO `t_blog_tags` VALUES (37, 13);
INSERT INTO `t_blog_tags` VALUES (38, 8);
INSERT INTO `t_blog_tags` VALUES (35, 8);
INSERT INTO `t_blog_tags` VALUES (35, 10);
INSERT INTO `t_blog_tags` VALUES (35, 13);
INSERT INTO `t_blog_tags` VALUES (33, 9);
INSERT INTO `t_blog_tags` VALUES (33, 12);
INSERT INTO `t_blog_tags` VALUES (32, 9);
INSERT INTO `t_blog_tags` VALUES (32, 13);
INSERT INTO `t_blog_tags` VALUES (32, 14);
INSERT INTO `t_blog_tags` VALUES (34, 10);
INSERT INTO `t_blog_tags` VALUES (34, 12);

SET FOREIGN_KEY_CHECKS = 1;
