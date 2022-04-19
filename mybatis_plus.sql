/*
 Navicat Premium Data Transfer

 Source Server         : 192.168.136.9
 Source Server Type    : MySQL
 Source Server Version : 80028
 Source Host           : 192.168.136.9:3306
 Source Schema         : mybatis_plus

 Target Server Type    : MySQL
 Target Server Version : 80028
 File Encoding         : 65001

 Date: 19/04/2022 15:37:16
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` bigint NOT NULL COMMENT '主键ID',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '姓名',
  `age` int NULL DEFAULT NULL COMMENT '年龄',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '邮箱',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `version` int NULL DEFAULT NULL COMMENT '版本号',
  `deleted` int NULL DEFAULT NULL COMMENT '逻辑删除标志',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'Jone', 18, 'test1@baomidou.com', NULL, NULL, NULL, 0);
INSERT INTO `user` VALUES (2, 'Jack', 45, 'test2@baomidou.com', NULL, NULL, NULL, 0);
INSERT INTO `user` VALUES (3, 'Tom', 28, 'test3@baomidou.com', NULL, NULL, NULL, 0);
INSERT INTO `user` VALUES (4, 'Sandy', 21, 'test4@baomidou.com', NULL, NULL, NULL, 0);
INSERT INTO `user` VALUES (5, 'Billie', 24, 'test5@baomidou.com', NULL, NULL, NULL, 0);
INSERT INTO `user` VALUES (1516274489643462657, 'lucy', 30, 'lucy@qq.com', NULL, NULL, NULL, 0);
INSERT INTO `user` VALUES (1516285647146377218, 'lilei', 29, 'lilei@qq.com', '2022-04-19 13:20:44', NULL, NULL, 0);
INSERT INTO `user` VALUES (1516290991197196290, 'dongfang', 33, 'dongfang@qq.com', '2022-04-19 13:41:58', '2022-04-19 13:47:17', 2, 0);
INSERT INTO `user` VALUES (1516307751044579329, 'yuebuqun', 29, 'dongfang@qq.com', '2022-04-19 14:48:34', '2022-04-19 14:48:34', 1, 1);

SET FOREIGN_KEY_CHECKS = 1;
