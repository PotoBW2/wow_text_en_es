/*
 Navicat Premium Dump SQL

 Source Server         : mangos 22
 Source Server Type    : MySQL
 Source Server Version : 50562 (5.5.62)
 Source Host           : localhost:3306
 Source Schema         : realmd

 Target Server Type    : MySQL
 Target Server Version : 50562 (5.5.62)
 File Encoding         : 65001

 Date: 10/12/2024 20:25:50
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Identifier',
  `username` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `gmlevel` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `sessionkey` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `v` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `s` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `token_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `email` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `joindate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_ip` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0.0.0.0',
  `failed_logins` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `locked` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `lock_country` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '00',
  `last_login` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `online` tinyint(4) NOT NULL DEFAULT 0,
  `expansion` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `mutetime` bigint(40) NOT NULL DEFAULT 0,
  `locale` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `os` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `platform` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `current_realm` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `flags` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `security` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email_verif` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Email verification',
  `geolock_pin` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `idx_username`(`username`) USING BTREE,
  INDEX `idx_gmlevel`(`gmlevel`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Account System' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES (1, 'ADMIN', 0, 'BCDA6D8AADA31117B0FA5106189ED1DA7C55D7F0635EC39A912AE25FA32EC72A90C72BBF9DC4B4AF', '674E0FDF712288C5709F2A16EA3008F1939263ECB1CD768E45DB29DB42EE81D1', '879030F33DD3A7774AD674CF0BF254B52BA66E3D65B87DA56652658C7D8709C7', '', NULL, '2018-11-12 14:59:21', '127.0.0.1', 0, 0, '00', '2023-06-23 09:51:36', 0, 0, 0, 0, 'Win', 'x86', 0, 0, NULL, 0, 0);
INSERT INTO `account` VALUES (2, 'POTOBW', 0, '0D6061A7C728A44241AA3C08F89EE39C48C6197B9DDB3E75396A5D66C9EA77ED79F8F4B529EAA695', '2030CF7026C8E3B0609D8169DFAE4C13F08088AA5885C20B91899FC8B4DDBBAE', '8DCC8778293FB28E647DF973BFF180A0592099FD4234F5EADEA874184FB2A09F', '', NULL, '2021-09-07 10:30:21', '127.0.0.1', 0, 0, '00', '2024-06-07 10:33:11', 0, 0, 0, 6, 'Win', 'x86', 0, 0, NULL, 0, 0);

-- ----------------------------
-- Table structure for account_access
-- ----------------------------
DROP TABLE IF EXISTS `account_access`;
CREATE TABLE `account_access`  (
  `id` int(11) UNSIGNED NOT NULL,
  `gmlevel` tinyint(3) UNSIGNED NOT NULL,
  `RealmID` int(11) NOT NULL,
  PRIMARY KEY (`id`, `RealmID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of account_access
-- ----------------------------
INSERT INTO `account_access` VALUES (2, 6, 1);

-- ----------------------------
-- Table structure for account_banned
-- ----------------------------
DROP TABLE IF EXISTS `account_banned`;
CREATE TABLE `account_banned`  (
  `banid` bigint(20) NOT NULL AUTO_INCREMENT,
  `id` bigint(20) NOT NULL DEFAULT 0 COMMENT 'Account id',
  `bandate` bigint(40) NOT NULL DEFAULT 0,
  `unbandate` bigint(40) NOT NULL DEFAULT 0,
  `bannedby` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `banreason` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 1,
  `realm` tinyint(4) NOT NULL DEFAULT 1,
  `gmlevel` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`, `bandate`) USING BTREE,
  UNIQUE INDEX `banid`(`banid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Ban List' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of account_banned
-- ----------------------------

-- ----------------------------
-- Table structure for allowed_clients
-- ----------------------------
DROP TABLE IF EXISTS `allowed_clients`;
CREATE TABLE `allowed_clients`  (
  `major_version` tinyint(3) UNSIGNED NOT NULL,
  `minor_version` tinyint(3) UNSIGNED NOT NULL,
  `bugfix_version` tinyint(3) UNSIGNED NOT NULL,
  `hotfix_version` char(1) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `build` mediumint(8) UNSIGNED NOT NULL,
  `os` char(50) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `platform` char(50) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `integrity_hash` varchar(40) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT ''
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_bin ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of allowed_clients
-- ----------------------------
INSERT INTO `allowed_clients` VALUES (3, 3, 5, 'a', 13930, 'Win', 'x86', '');
INSERT INTO `allowed_clients` VALUES (3, 3, 5, 'a', 13930, 'OSX', 'x86', '');
INSERT INTO `allowed_clients` VALUES (3, 3, 5, 'a', 13930, 'OSX', 'PPC', '');
INSERT INTO `allowed_clients` VALUES (3, 3, 5, 'a', 12340, 'Win', 'x86', 'CDCBBD5188315E6B4D19449D492DBCFAF156A347');
INSERT INTO `allowed_clients` VALUES (3, 3, 5, 'a', 12340, 'OSX', 'x86', 'B706D13FF2F4018839729461E3F8A0E2B5FDC034');
INSERT INTO `allowed_clients` VALUES (3, 3, 5, 'a', 12340, 'OSX', 'PPC', 'B706D13FF2F4018839729461E3F8A0E2B5FDC034');
INSERT INTO `allowed_clients` VALUES (3, 3, 3, 'a', 11723, 'Win', 'x86', '');
INSERT INTO `allowed_clients` VALUES (3, 3, 3, 'a', 11723, 'OSX', 'x86', '');
INSERT INTO `allowed_clients` VALUES (3, 3, 3, 'a', 11723, 'OSX', 'PPC', '');
INSERT INTO `allowed_clients` VALUES (3, 3, 2, '', 11403, 'Win', 'x86', '');
INSERT INTO `allowed_clients` VALUES (3, 3, 2, '', 11403, 'OSX', 'x86', '');
INSERT INTO `allowed_clients` VALUES (3, 3, 2, '', 11403, 'OSX', 'PPC', '');
INSERT INTO `allowed_clients` VALUES (3, 3, 0, 'a', 11159, 'Win', 'x86', '');
INSERT INTO `allowed_clients` VALUES (3, 3, 0, 'a', 11159, 'OSX', 'x86', '');
INSERT INTO `allowed_clients` VALUES (3, 3, 0, 'a', 11159, 'OSX', 'PPC', '');
INSERT INTO `allowed_clients` VALUES (3, 2, 2, 'a', 10505, 'Win', 'x86', '');
INSERT INTO `allowed_clients` VALUES (3, 2, 2, 'a', 10505, 'OSX', 'x86', '');
INSERT INTO `allowed_clients` VALUES (3, 2, 2, 'a', 10505, 'OSX', 'PPC', '');
INSERT INTO `allowed_clients` VALUES (2, 4, 3, '', 8606, 'Win', 'x86', '319AFAA3F2559682F9FF658BE01456255F456FB1');
INSERT INTO `allowed_clients` VALUES (2, 4, 3, '', 8606, 'OSX', 'x86', 'D8B0ECFE534BC1131E19BAD1D4C0E813EEE4994F');
INSERT INTO `allowed_clients` VALUES (2, 4, 3, '', 8606, 'OSX', 'PPC', 'D8B0ECFE534BC1131E19BAD1D4C0E813EEE4994F');
INSERT INTO `allowed_clients` VALUES (1, 12, 3, '', 6141, 'Win', 'x86', '2E5236E566AEA9BFFA0CC041679C2DB52E21C9DC');
INSERT INTO `allowed_clients` VALUES (1, 12, 3, '', 6141, 'OSX', 'x86', '');
INSERT INTO `allowed_clients` VALUES (1, 12, 3, '', 6141, 'OSX', 'PPC', '');
INSERT INTO `allowed_clients` VALUES (1, 12, 2, '', 6005, 'Win', 'x86', '0697323876569641487928FDC7C9E33B4470C880');
INSERT INTO `allowed_clients` VALUES (1, 12, 2, '', 6005, 'OSX', 'x86', '');
INSERT INTO `allowed_clients` VALUES (1, 12, 2, '', 6005, 'OSX', 'PPC', '');
INSERT INTO `allowed_clients` VALUES (1, 12, 1, '', 5875, 'Win', 'x86', '95EDB27C7823B363CBDDAB56A392E7CB73FCCA20');
INSERT INTO `allowed_clients` VALUES (1, 12, 1, '', 5875, 'OSX', 'x86', '8D173CC381961EEBABF336F5E6675B101BB513E5');
INSERT INTO `allowed_clients` VALUES (1, 12, 1, '', 5875, 'OSX', 'PPC', '8D173CC381961EEBABF336F5E6675B101BB513E5');
INSERT INTO `allowed_clients` VALUES (1, 11, 2, '', 5464, 'Win', 'x86', '4DF8A505E4FE8D8333508C0E858465E357178683');
INSERT INTO `allowed_clients` VALUES (1, 11, 2, '', 5464, 'OSX', 'x86', '');
INSERT INTO `allowed_clients` VALUES (1, 11, 2, '', 5464, 'OSX', 'PPC', '');
INSERT INTO `allowed_clients` VALUES (1, 10, 2, '', 5302, 'Win', 'x86', '70DD183CE671E79909E02554E94CBE3F2C338C55');
INSERT INTO `allowed_clients` VALUES (1, 10, 2, '', 5302, 'OSX', 'x86', '');
INSERT INTO `allowed_clients` VALUES (1, 10, 2, '', 5302, 'OSX', 'PPC', '');
INSERT INTO `allowed_clients` VALUES (1, 9, 4, '', 5086, 'Win', 'x86', 'C561B52B3BDDDD176A46433C6D067BA745E6B000');
INSERT INTO `allowed_clients` VALUES (1, 9, 4, '', 5086, 'OSX', 'x86', '');
INSERT INTO `allowed_clients` VALUES (1, 9, 4, '', 5086, 'OSX', 'PPC', '');
INSERT INTO `allowed_clients` VALUES (1, 8, 4, '', 4878, 'Win', 'x86', '03DFB3C3F72479F9BCC5EDD8DCA1025E8D11AF0F');
INSERT INTO `allowed_clients` VALUES (1, 8, 4, '', 4878, 'OSX', 'x86', '');
INSERT INTO `allowed_clients` VALUES (1, 8, 4, '', 4878, 'OSX', 'PPC', '');
INSERT INTO `allowed_clients` VALUES (1, 7, 1, '', 4695, 'Win', 'x86', '37C01291271CBB891D8FEEC15B2F147AA3E40C80');
INSERT INTO `allowed_clients` VALUES (1, 7, 1, '', 4695, 'OSX', 'x86', '');
INSERT INTO `allowed_clients` VALUES (1, 7, 1, '', 4695, 'OSX', 'PPC', '');
INSERT INTO `allowed_clients` VALUES (1, 6, 3, '', 4620, 'Win', 'x86', '3C77ED95D600F9D4270DA1A291C7F645CA4F2AAC');
INSERT INTO `allowed_clients` VALUES (1, 6, 3, '', 4620, 'OSX', 'x86', '');
INSERT INTO `allowed_clients` VALUES (1, 6, 3, '', 4620, 'OSX', 'PPC', '');
INSERT INTO `allowed_clients` VALUES (1, 6, 2, '', 4565, 'Win', 'x86', '1AC02CE93E7B82D17E8718758D67F59FB0CA4B5D');
INSERT INTO `allowed_clients` VALUES (1, 6, 2, '', 4565, 'OSX', 'x86', '');
INSERT INTO `allowed_clients` VALUES (1, 6, 2, '', 4565, 'OSX', 'PPC', '');
INSERT INTO `allowed_clients` VALUES (1, 6, 1, '', 4544, 'Win', 'x86', 'D7AC290CC2E42F9CC83A9023803A43244359F030');
INSERT INTO `allowed_clients` VALUES (1, 6, 1, '', 4544, 'OSX', 'x86', '');
INSERT INTO `allowed_clients` VALUES (1, 6, 1, '', 4544, 'OSX', 'PPC', '');

-- ----------------------------
-- Table structure for antispam_blacklist
-- ----------------------------
DROP TABLE IF EXISTS `antispam_blacklist`;
CREATE TABLE `antispam_blacklist`  (
  `word` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`word`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of antispam_blacklist
-- ----------------------------
INSERT INTO `antispam_blacklist` VALUES ('4GAMEPOWER');
INSERT INTO `antispam_blacklist` VALUES ('ELYSIUMAEWOW');
INSERT INTO `antispam_blacklist` VALUES ('ELYSIUMKYWOW');
INSERT INTO `antispam_blacklist` VALUES ('ELYSIUMORWOW');
INSERT INTO `antispam_blacklist` VALUES ('ELYSIUMRDWOW');
INSERT INTO `antispam_blacklist` VALUES ('ELYSIUMRSWOW');
INSERT INTO `antispam_blacklist` VALUES ('G4W@W');
INSERT INTO `antispam_blacklist` VALUES ('G4WOW');
INSERT INTO `antispam_blacklist` VALUES ('GOLD4MMO');
INSERT INTO `antispam_blacklist` VALUES ('GOLDCEO');
INSERT INTO `antispam_blacklist` VALUES ('GOLDDEAL');
INSERT INTO `antispam_blacklist` VALUES ('GOLDINSIDER');
INSERT INTO `antispam_blacklist` VALUES ('ILOVEUGOLD');
INSERT INTO `antispam_blacklist` VALUES ('ITEM4GAME');
INSERT INTO `antispam_blacklist` VALUES ('ITEM4WOW');
INSERT INTO `antispam_blacklist` VALUES ('MMOGO');
INSERT INTO `antispam_blacklist` VALUES ('MMOLORD');
INSERT INTO `antispam_blacklist` VALUES ('MMOOK');
INSERT INTO `antispam_blacklist` VALUES ('MMOSE');
INSERT INTO `antispam_blacklist` VALUES ('MMOTANK');
INSERT INTO `antispam_blacklist` VALUES ('MONEYFORGAMES');
INSERT INTO `antispam_blacklist` VALUES ('NOST100');
INSERT INTO `antispam_blacklist` VALUES ('NOST1OO');
INSERT INTO `antispam_blacklist` VALUES ('OKOGAME');
INSERT INTO `antispam_blacklist` VALUES ('OKOGAMES');
INSERT INTO `antispam_blacklist` VALUES ('OKOGOMES');
INSERT INTO `antispam_blacklist` VALUES ('PVPBANK');
INSERT INTO `antispam_blacklist` VALUES ('RNRNOOK');
INSERT INTO `antispam_blacklist` VALUES ('RNRNOSE');
INSERT INTO `antispam_blacklist` VALUES ('SELLNGOLD');
INSERT INTO `antispam_blacklist` VALUES ('SINBAGAME');
INSERT INTO `antispam_blacklist` VALUES ('SINBAGOLD');
INSERT INTO `antispam_blacklist` VALUES ('SINBAONLINE');
INSERT INTO `antispam_blacklist` VALUES ('SUSANGAME');
INSERT INTO `antispam_blacklist` VALUES ('WOWMARY');
INSERT INTO `antispam_blacklist` VALUES ('WTSITEM');
INSERT INTO `antispam_blacklist` VALUES ('X2GOLD');
INSERT INTO `antispam_blacklist` VALUES ('XIAOBAIMOSHOUJINGJI');

-- ----------------------------
-- Table structure for antispam_detected
-- ----------------------------
DROP TABLE IF EXISTS `antispam_detected`;
CREATE TABLE `antispam_detected`  (
  `id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `detectScore` mediumint(5) NOT NULL DEFAULT 0,
  `detectTime` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `unmuteTime` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = FIXED;

-- ----------------------------
-- Records of antispam_detected
-- ----------------------------

-- ----------------------------
-- Table structure for antispam_replacement
-- ----------------------------
DROP TABLE IF EXISTS `antispam_replacement`;
CREATE TABLE `antispam_replacement`  (
  `from` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `to` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`from`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of antispam_replacement
-- ----------------------------
INSERT INTO `antispam_replacement` VALUES ('\\\\/\\\\/', 'W');
INSERT INTO `antispam_replacement` VALUES ('/\\/\\', 'M');
INSERT INTO `antispam_replacement` VALUES ('0', 'O');
INSERT INTO `antispam_replacement` VALUES ('...hic!', '');
INSERT INTO `antispam_replacement` VALUES ('()', 'O');
INSERT INTO `antispam_replacement` VALUES ('\\/\\/', 'W');
INSERT INTO `antispam_replacement` VALUES ('/\\\\', 'A');
INSERT INTO `antispam_replacement` VALUES ('VV', 'W');
INSERT INTO `antispam_replacement` VALUES ('@', 'O');
INSERT INTO `antispam_replacement` VALUES ('/V\\', 'M');
INSERT INTO `antispam_replacement` VALUES ('/\\\\/\\\\', 'M');
INSERT INTO `antispam_replacement` VALUES ('㎜', 'MM');
INSERT INTO `antispam_replacement` VALUES ('!<', 'K');

-- ----------------------------
-- Table structure for antispam_scores
-- ----------------------------
DROP TABLE IF EXISTS `antispam_scores`;
CREATE TABLE `antispam_scores`  (
  `word` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `score` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `type` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`word`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of antispam_scores
-- ----------------------------
INSERT INTO `antispam_scores` VALUES ('>>', 1, 1);
INSERT INTO `antispam_scores` VALUES ('<<', 1, 1);
INSERT INTO `antispam_scores` VALUES ('5OG', 1, 1);
INSERT INTO `antispam_scores` VALUES ('$', 2, 1);
INSERT INTO `antispam_scores` VALUES ('MOTANK', 4, 0);
INSERT INTO `antispam_scores` VALUES ('\\\\', 2, 1);
INSERT INTO `antispam_scores` VALUES ('ACOUNT', 1, 0);
INSERT INTO `antispam_scores` VALUES ('CHEAP', 2, 0);
INSERT INTO `antispam_scores` VALUES ('LEVELING', 1, 0);
INSERT INTO `antispam_scores` VALUES ('LEVLING', 1, 0);
INSERT INTO `antispam_scores` VALUES ('LEVILING', 1, 0);
INSERT INTO `antispam_scores` VALUES ('LVLING', 1, 0);
INSERT INTO `antispam_scores` VALUES ('SAFE', 1, 0);
INSERT INTO `antispam_scores` VALUES ('SERVICE', 1, 0);
INSERT INTO `antispam_scores` VALUES ('NOST', 1, 0);
INSERT INTO `antispam_scores` VALUES ('COM', 1, 0);
INSERT INTO `antispam_scores` VALUES ('PRICE', 2, 0);
INSERT INTO `antispam_scores` VALUES ('GOLD', 2, 0);
INSERT INTO `antispam_scores` VALUES ('SKYPE', 2, 0);
INSERT INTO `antispam_scores` VALUES ('EPIC', 2, 0);
INSERT INTO `antispam_scores` VALUES ('DOLARS', 2, 0);
INSERT INTO `antispam_scores` VALUES ('PROFESIONAL', 2, 0);
INSERT INTO `antispam_scores` VALUES ('RELIABLE', 2, 0);
INSERT INTO `antispam_scores` VALUES ('PROMOTION', 2, 0);
INSERT INTO `antispam_scores` VALUES ('DELIVER', 2, 0);
INSERT INTO `antispam_scores` VALUES ('NAX', 2, 0);
INSERT INTO `antispam_scores` VALUES ('GAMES', 2, 0);
INSERT INTO `antispam_scores` VALUES ('GRETINGS', 2, 0);
INSERT INTO `antispam_scores` VALUES ('WEBSITE', 2, 0);
INSERT INTO `antispam_scores` VALUES ('GOID', 2, 0);
INSERT INTO `antispam_scores` VALUES ('ITEM4', 5, 1);
INSERT INTO `antispam_scores` VALUES ('1OO', 2, 1);
INSERT INTO `antispam_scores` VALUES ('POWER', 1, 0);
INSERT INTO `antispam_scores` VALUES ('SELGOLD', 2, 0);
INSERT INTO `antispam_scores` VALUES ('FAST', 1, 0);
INSERT INTO `antispam_scores` VALUES ('25G', 2, 1);
INSERT INTO `antispam_scores` VALUES ('981526249', 3, 1);
INSERT INTO `antispam_scores` VALUES ('XIAOYUAN9921521', 3, 1);
INSERT INTO `antispam_scores` VALUES ('MANFARM', 1, 1);
INSERT INTO `antispam_scores` VALUES ('USD', 2, 0);
INSERT INTO `antispam_scores` VALUES ('GWOW', 3, 0);
INSERT INTO `antispam_scores` VALUES ('EUR', 2, 0);
INSERT INTO `antispam_scores` VALUES ('80G', 1, 1);
INSERT INTO `antispam_scores` VALUES ('OKO', 1, 0);
INSERT INTO `antispam_scores` VALUES ('G4', 2, 1);
INSERT INTO `antispam_scores` VALUES ('2OG', 1, 1);
INSERT INTO `antispam_scores` VALUES ('MSD', 3, 0);
INSERT INTO `antispam_scores` VALUES ('3VV', 3, 1);
INSERT INTO `antispam_scores` VALUES ('3W', 2, 1);
INSERT INTO `antispam_scores` VALUES ('SELL', 1, 1);
INSERT INTO `antispam_scores` VALUES ('WVWOKO', 4, 0);
INSERT INTO `antispam_scores` VALUES ('G=$', 3, 1);
INSERT INTO `antispam_scores` VALUES ('1OG', 1, 0);
INSERT INTO `antispam_scores` VALUES ('COIN', 0, 1);
INSERT INTO `antispam_scores` VALUES ('P0VVER', 2, 1);
INSERT INTO `antispam_scores` VALUES ('IEVEIING', 2, 1);
INSERT INTO `antispam_scores` VALUES ('GO1D', 2, 1);
INSERT INTO `antispam_scores` VALUES ('POWERLEVELING', 2, 0);

-- ----------------------------
-- Table structure for antispam_unicode
-- ----------------------------
DROP TABLE IF EXISTS `antispam_unicode`;
CREATE TABLE `antispam_unicode`  (
  `from` mediumint(5) UNSIGNED NOT NULL DEFAULT 0,
  `to` mediumint(5) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`from`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = FIXED;

-- ----------------------------
-- Records of antispam_unicode
-- ----------------------------
INSERT INTO `antispam_unicode` VALUES (1063, 52);
INSERT INTO `antispam_unicode` VALUES (1054, 79);
INSERT INTO `antispam_unicode` VALUES (1057, 67);
INSERT INTO `antispam_unicode` VALUES (1052, 77);
INSERT INTO `antispam_unicode` VALUES (927, 79);
INSERT INTO `antispam_unicode` VALUES (1050, 75);
INSERT INTO `antispam_unicode` VALUES (913, 65);
INSERT INTO `antispam_unicode` VALUES (917, 69);
INSERT INTO `antispam_unicode` VALUES (1062, 85);
INSERT INTO `antispam_unicode` VALUES (9675, 79);
INSERT INTO `antispam_unicode` VALUES (1040, 65);
INSERT INTO `antispam_unicode` VALUES (1058, 84);
INSERT INTO `antispam_unicode` VALUES (1064, 87);
INSERT INTO `antispam_unicode` VALUES (1025, 69);
INSERT INTO `antispam_unicode` VALUES (1055, 78);
INSERT INTO `antispam_unicode` VALUES (1065, 87);
INSERT INTO `antispam_unicode` VALUES (922, 75);
INSERT INTO `antispam_unicode` VALUES (924, 77);
INSERT INTO `antispam_unicode` VALUES (1045, 69);
INSERT INTO `antispam_unicode` VALUES (968, 87);
INSERT INTO `antispam_unicode` VALUES (192, 65);
INSERT INTO `antispam_unicode` VALUES (210, 79);
INSERT INTO `antispam_unicode` VALUES (211, 79);
INSERT INTO `antispam_unicode` VALUES (242, 79);
INSERT INTO `antispam_unicode` VALUES (324, 78);
INSERT INTO `antispam_unicode` VALUES (328, 78);
INSERT INTO `antispam_unicode` VALUES (332, 79);
INSERT INTO `antispam_unicode` VALUES (466, 79);
INSERT INTO `antispam_unicode` VALUES (59336, 78);
INSERT INTO `antispam_unicode` VALUES (12562, 84);
INSERT INTO `antispam_unicode` VALUES (8745, 78);
INSERT INTO `antispam_unicode` VALUES (65325, 77);
INSERT INTO `antispam_unicode` VALUES (959, 79);
INSERT INTO `antispam_unicode` VALUES (945, 65);
INSERT INTO `antispam_unicode` VALUES (954, 75);
INSERT INTO `antispam_unicode` VALUES (12295, 79);
INSERT INTO `antispam_unicode` VALUES (65323, 75);
INSERT INTO `antispam_unicode` VALUES (65296, 79);
INSERT INTO `antispam_unicode` VALUES (65355, 75);
INSERT INTO `antispam_unicode` VALUES (65357, 77);
INSERT INTO `antispam_unicode` VALUES (65319, 71);
INSERT INTO `antispam_unicode` VALUES (925, 78);

-- ----------------------------
-- Table structure for geoip
-- ----------------------------
DROP TABLE IF EXISTS `geoip`;
CREATE TABLE `geoip`  (
  `network_start_integer` int(11) NULL DEFAULT NULL,
  `network_last_integer` int(11) NULL DEFAULT NULL,
  `geoname_id` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `registered_country_geoname_id` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `represented_country_geoname_id` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `is_anonymous_proxy` int(11) NULL DEFAULT NULL,
  `is_satellite_provider` int(11) NULL DEFAULT NULL,
  `postal_code` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `latitude` double NULL DEFAULT NULL,
  `longitude` double NULL DEFAULT NULL,
  `accuracy_radius` int(11) NULL DEFAULT NULL,
  INDEX `ip_start`(`network_start_integer`) USING BTREE,
  INDEX `ip_end`(`network_last_integer`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of geoip
-- ----------------------------

-- ----------------------------
-- Table structure for ip2nation
-- ----------------------------
DROP TABLE IF EXISTS `ip2nation`;
CREATE TABLE `ip2nation`  (
  `ip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `country` char(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  INDEX `ip`(`ip`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of ip2nation
-- ----------------------------

-- ----------------------------
-- Table structure for ip2nationcountries
-- ----------------------------
DROP TABLE IF EXISTS `ip2nationcountries`;
CREATE TABLE `ip2nationcountries`  (
  `code` varchar(4) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `iso_code_2` varchar(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `iso_code_3` varchar(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '',
  `iso_country` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `country` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `lat` float NOT NULL DEFAULT 0,
  `lon` float NOT NULL DEFAULT 0,
  PRIMARY KEY (`code`) USING BTREE,
  INDEX `code`(`code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of ip2nationcountries
-- ----------------------------

-- ----------------------------
-- Table structure for ip_banned
-- ----------------------------
DROP TABLE IF EXISTS `ip_banned`;
CREATE TABLE `ip_banned`  (
  `ip` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0.0.0.0',
  `bandate` int(11) NOT NULL,
  `unbandate` int(11) NOT NULL,
  `bannedby` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '[Console]',
  `banreason` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'no reason',
  PRIMARY KEY (`ip`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Banned IPs' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of ip_banned
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('20210830151515');
INSERT INTO `migrations` VALUES ('20220826100652');
INSERT INTO `migrations` VALUES ('20221111031829');
INSERT INTO `migrations` VALUES ('20221117065844');

-- ----------------------------
-- Table structure for realmcharacters
-- ----------------------------
DROP TABLE IF EXISTS `realmcharacters`;
CREATE TABLE `realmcharacters`  (
  `realmid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `acctid` bigint(20) UNSIGNED NOT NULL,
  `numchars` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`realmid`, `acctid`) USING BTREE,
  INDEX `acctid`(`acctid`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Realm Character Tracker' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of realmcharacters
-- ----------------------------
INSERT INTO `realmcharacters` VALUES (1, 1, 2);
INSERT INTO `realmcharacters` VALUES (1, 2, 3);

-- ----------------------------
-- Table structure for realmlist
-- ----------------------------
DROP TABLE IF EXISTS `realmlist`;
CREATE TABLE `realmlist`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `address` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '127.0.0.1',
  `localAddress` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '127.0.0.1',
  `localSubnetMask` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '255.255.255.0',
  `port` int(11) NOT NULL DEFAULT 8085,
  `icon` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `realmflags` tinyint(3) UNSIGNED NOT NULL DEFAULT 2,
  `timezone` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `allowedSecurityLevel` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `population` float UNSIGNED NOT NULL DEFAULT 0,
  `gamebuild_min` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `gamebuild_max` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `flag` tinyint(3) UNSIGNED NOT NULL DEFAULT 2,
  `realmbuilds` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `idx_name`(`name`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Realm System' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of realmlist
-- ----------------------------
INSERT INTO `realmlist` VALUES (1, 'Lightbringer', '127.0.0.1', '127.0.0.1', '255.255.255.0', 8085, 1, 0, 1, 0, 0, 0, 0, 2, '5875 6005 6141 ');

-- ----------------------------
-- Table structure for uptime
-- ----------------------------
DROP TABLE IF EXISTS `uptime`;
CREATE TABLE `uptime`  (
  `realmid` int(11) UNSIGNED NOT NULL,
  `starttime` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `startstring` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `uptime` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `onlineplayers` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `maxplayers` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `revision` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'VMangos',
  PRIMARY KEY (`realmid`, `starttime`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Uptime system' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of uptime
-- ----------------------------
INSERT INTO `uptime` VALUES (1, 1661628514, '2022-08-27 22:28:34', 0, 0, 0, 'a38a3891e16a77b235d1');
INSERT INTO `uptime` VALUES (1, 1662602143, '2022-09-08 04:55:43', 0, 0, 0, '4ba5d4f7eb406e14e703');
INSERT INTO `uptime` VALUES (1, 1662602485, '2022-09-08 05:01:25', 0, 0, 0, '4ba5d4f7eb406e14e703');
INSERT INTO `uptime` VALUES (1, 1687528289, '2023-06-23 16:51:29', 0, 0, 0, '9e1bd089e56973e971f0');
INSERT INTO `uptime` VALUES (1, 1704415076, '2024-01-04 19:37:56', 0, 0, 0, '9e1bd089e56973e971f0');
INSERT INTO `uptime` VALUES (1, 1705268970, '2024-01-14 16:49:30', 0, 0, 0, '9e1bd089e56973e971f0');
INSERT INTO `uptime` VALUES (1, 1717770583, '2024-06-07 10:29:43', 15056, 0, 1, '9e1bd089e56973e971f0');
INSERT INTO `uptime` VALUES (1, 1733880163, '2024-12-10 20:22:43', 0, 0, 0, '9e1bd089e56973e971f0');

-- ----------------------------
-- Event structure for DetectUpdate
-- ----------------------------
DROP EVENT IF EXISTS `DetectUpdate`;
delimiter ;;
CREATE EVENT `DetectUpdate`
ON SCHEDULE
EVERY '1' MINUTE STARTS '2016-12-31 17:00:00'
ON COMPLETION PRESERVE
DO BEGIN

        SELECT @time:= UNIX_TIMESTAMP();

        UPDATE `antispam_detected` SET `unmuteTime` = 0 WHERE @time > `unmuteTime`;

	    UPDATE `antispam_detected` SET `detectScore` = `detectScore` - 1 WHERE `detectScore` < 3 AND (@time - `detectTime`) > 7200;

	    DELETE FROM `antispam_detected` WHERE `detectScore` <= 0 AND (@time - `detectTime`) > 7200;

	END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
