/*
 Navicat Premium Data Transfer

 Source Server         : nueva_conexion_de_prueba
 Source Server Type    : MySQL
 Source Server Version : 50562
 Source Host           : localhost:3306
 Source Schema         : mangos

 Target Server Type    : MySQL
 Target Server Version : 50562
 File Encoding         : 65001

 Date: 29/03/2022 16:44:54
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for command
-- ----------------------------
DROP TABLE IF EXISTS `command`;
CREATE TABLE `command`  (
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `security` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `help` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`name`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Chat System' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of command
-- ----------------------------
INSERT INTO `command` VALUES ('wareffortget', 6, 'Sintaxis: .wareffortget \"[Nombre del recurso]\"', 0);
INSERT INTO `command` VALUES ('wareffortset', 6, 'Sintaxis: .wareffortset \"[Nombre del recurso]\" [Nuevo recuento de recursos]', 0);
INSERT INTO `command` VALUES ('debug setvaluebyindex', 5, 'Sintaxis: .debug setvaluebyindex [índice] [tipo] [valor]', 2);
INSERT INTO `command` VALUES ('debug setvaluebyname', 5, 'Sintaxis: .debug setvaluebyname [nombre] [valor]', 2);

SET FOREIGN_KEY_CHECKS = 1;
