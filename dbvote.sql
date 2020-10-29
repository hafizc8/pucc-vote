/*
 Navicat Premium Data Transfer

 Source Server         : mysql_mamp
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:8889
 Source Schema         : dbvote

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 29/10/2020 17:37:06
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ms_paslon
-- ----------------------------
DROP TABLE IF EXISTS `ms_paslon`;
CREATE TABLE `ms_paslon` (
  `id` int(11) NOT NULL,
  `nama_paslon` text,
  `visi_misi` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ms_paslon
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for vote
-- ----------------------------
DROP TABLE IF EXISTS `vote`;
CREATE TABLE `vote` (
  `id` int(11) NOT NULL,
  `no_paslon` tinyint(5) DEFAULT NULL,
  `jumlah` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vote
-- ----------------------------
BEGIN;
INSERT INTO `vote` VALUES (1, 1, 5);
INSERT INTO `vote` VALUES (2, 2, 27);
INSERT INTO `vote` VALUES (3, 3, 3);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
