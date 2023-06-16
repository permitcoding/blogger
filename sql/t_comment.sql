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

 Date: 16/06/2023 15:55:25
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_comment
-- ----------------------------
DROP TABLE IF EXISTS `t_comment`;
CREATE TABLE `t_comment`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `nickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `blog_id` bigint NULL DEFAULT NULL,
  `parent_comment_id` bigint NULL DEFAULT NULL,
  `admin_comment` bit(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKke3uogd04j4jx316m1p51e05u`(`blog_id` ASC) USING BTREE,
  INDEX `FK4jj284r3pb7japogvo6h72q95`(`parent_comment_id` ASC) USING BTREE,
  CONSTRAINT `FK4jj284r3pb7japogvo6h72q95` FOREIGN KEY (`parent_comment_id`) REFERENCES `t_comment` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKke3uogd04j4jx316m1p51e05u` FOREIGN KEY (`blog_id`) REFERENCES `t_blog` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_comment
-- ----------------------------
INSERT INTO `t_comment` VALUES (1, '/images/1.jpg', '测试评论功能', '2023-06-05 15:51:36.017000', NULL, '小白', 31, NULL, b'0');
INSERT INTO `t_comment` VALUES (2, '/images/1.jpg', '你好6，写出评论功能', '2023-06-05 15:52:22.585000', NULL, '小白', 31, 1, b'0');
INSERT INTO `t_comment` VALUES (3, '/images/1.jpg', '可以啊', '2023-06-05 15:59:42.945000', NULL, '小红', 31, 1, b'0');
INSERT INTO `t_comment` VALUES (4, '/images/1.jpg', 'hao1', '2023-06-05 19:06:03.047000', NULL, 'fasdjdf', 31, 1, b'0');
INSERT INTO `t_comment` VALUES (5, '/images/1.jpg', '这篇文章有意思', '2023-06-05 19:27:00.216000', NULL, '小张', 31, NULL, b'0');
INSERT INTO `t_comment` VALUES (6, '/images/1.jpg', '大家好，我是本文的博主', '2023-06-05 19:43:06.742000', NULL, 'haoxi', 31, NULL, b'1');
INSERT INTO `t_comment` VALUES (7, '/images/1.jpg', '哈哈哈', '2023-06-05 19:45:58.071000', NULL, 'haoxi', 31, NULL, b'1');
INSERT INTO `t_comment` VALUES (8, '/images/1.jpg', '好好', '2023-06-05 20:20:31.847000', NULL, 'haoxi', 31, NULL, b'1');
INSERT INTO `t_comment` VALUES (9, 'https://img2.baidu.com/it/u=3088799631,1458572411&fm=253&fmt=auto&app=138&f=JPEG?w=200&h=200', '加油，各位', '2023-06-05 20:25:10.130000', NULL, 'haoxi', 31, NULL, b'1');
INSERT INTO `t_comment` VALUES (10, '/images/1.jpg', '尼玛是了', '2023-06-05 22:59:21.137000', NULL, '王几把彪', 31, NULL, b'0');
INSERT INTO `t_comment` VALUES (11, 'https://img2.baidu.com/it/u=3088799631,1458572411&fm=253&fmt=auto&app=138&f=JPEG?w=200&h=200', '大家可以发表评论啦', '2023-06-06 07:42:23.796000', NULL, 'haoxi', 33, NULL, b'1');
INSERT INTO `t_comment` VALUES (12, 'https://img2.baidu.com/it/u=3088799631,1458572411&fm=253&fmt=auto&app=138&f=JPEG?w=200&h=200', '来评论\n', '2023-06-06 19:47:56.150000', NULL, 'haoxi', 36, NULL, b'1');
INSERT INTO `t_comment` VALUES (13, 'https://img2.baidu.com/it/u=3088799631,1458572411&fm=253&fmt=auto&app=138&f=JPEG?w=200&h=200', '真6', '2023-06-06 19:48:09.819000', NULL, '小编', 36, 12, b'1');
INSERT INTO `t_comment` VALUES (14, 'https://img2.baidu.com/it/u=3088799631,1458572411&fm=253&fmt=auto&app=138&f=JPEG?w=200&h=200', '确实', '2023-06-06 19:48:40.231000', NULL, '小红', 36, 12, b'1');
INSERT INTO `t_comment` VALUES (15, 'https://img2.baidu.com/it/u=3088799631,1458572411&fm=253&fmt=auto&app=138&f=JPEG?w=200&h=200', '可以', '2023-06-06 19:54:08.705000', NULL, '可徐斌', 36, NULL, b'1');

SET FOREIGN_KEY_CHECKS = 1;
