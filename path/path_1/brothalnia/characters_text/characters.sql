/*
 Navicat Premium Data Transfer

 Source Server         : 127.0.0.1
 Source Server Type    : MySQL
 Source Server Version : 50562
 Source Host           : localhost:3306
 Source Schema         : characters

 Target Server Type    : MySQL
 Target Server Version : 50562
 File Encoding         : 65001

 Date: 07/04/2022 18:58:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auction
-- ----------------------------
DROP TABLE IF EXISTS `auction`;
CREATE TABLE `auction`  (
  `id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `house_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `item_guid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `item_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `seller_guid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `buyout_price` int(11) NOT NULL DEFAULT 0,
  `expire_time` bigint(40) NOT NULL DEFAULT 0,
  `buyer_guid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `last_bid` int(11) NOT NULL DEFAULT 0,
  `start_bid` int(11) NOT NULL DEFAULT 0,
  `deposit` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `key_item_guid`(`item_guid`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = FIXED;

-- ----------------------------
-- Records of auction
-- ----------------------------

-- ----------------------------
-- Table structure for character_action
-- ----------------------------
DROP TABLE IF EXISTS `character_action`;
CREATE TABLE `character_action`  (
  `guid` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier',
  `button` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `action` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`, `button`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Player System' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of character_action
-- ----------------------------
INSERT INTO `character_action` VALUES (1, 72, 23894, 0);
INSERT INTO `character_action` VALUES (1, 73, 20569, 0);
INSERT INTO `character_action` VALUES (1, 74, 11574, 0);
INSERT INTO `character_action` VALUES (1, 83, 20572, 0);
INSERT INTO `character_action` VALUES (1, 77, 12323, 0);
INSERT INTO `character_action` VALUES (1, 76, 11578, 0);
INSERT INTO `character_action` VALUES (1, 75, 20662, 0);
INSERT INTO `character_action` VALUES (1, 79, 12328, 0);
INSERT INTO `character_action` VALUES (1, 78, 11581, 0);
INSERT INTO `character_action` VALUES (1, 82, 11556, 0);
INSERT INTO `character_action` VALUES (1, 81, 11551, 0);
INSERT INTO `character_action` VALUES (1, 80, 11597, 0);
INSERT INTO `character_action` VALUES (1, 84, 23894, 0);
INSERT INTO `character_action` VALUES (1, 85, 20569, 0);
INSERT INTO `character_action` VALUES (1, 86, 11574, 0);
INSERT INTO `character_action` VALUES (1, 87, 11601, 0);
INSERT INTO `character_action` VALUES (1, 88, 1672, 0);
INSERT INTO `character_action` VALUES (1, 89, 12323, 0);
INSERT INTO `character_action` VALUES (1, 90, 2565, 0);
INSERT INTO `character_action` VALUES (1, 91, 871, 0);
INSERT INTO `character_action` VALUES (1, 92, 11597, 0);
INSERT INTO `character_action` VALUES (1, 93, 11551, 0);
INSERT INTO `character_action` VALUES (1, 94, 11556, 0);
INSERT INTO `character_action` VALUES (1, 95, 20572, 0);
INSERT INTO `character_action` VALUES (1, 96, 23894, 0);
INSERT INTO `character_action` VALUES (1, 97, 20569, 0);
INSERT INTO `character_action` VALUES (1, 98, 1680, 0);
INSERT INTO `character_action` VALUES (1, 99, 20662, 0);
INSERT INTO `character_action` VALUES (1, 100, 20617, 0);
INSERT INTO `character_action` VALUES (1, 101, 12323, 0);
INSERT INTO `character_action` VALUES (1, 102, 1719, 0);
INSERT INTO `character_action` VALUES (1, 103, 6554, 0);
INSERT INTO `character_action` VALUES (1, 104, 11597, 0);
INSERT INTO `character_action` VALUES (1, 105, 11551, 0);
INSERT INTO `character_action` VALUES (1, 106, 11556, 0);
INSERT INTO `character_action` VALUES (1, 107, 20572, 0);
INSERT INTO `character_action` VALUES (2, 0, 11294, 0);
INSERT INTO `character_action` VALUES (2, 1, 14251, 0);
INSERT INTO `character_action` VALUES (2, 2, 11300, 0);
INSERT INTO `character_action` VALUES (2, 3, 11275, 0);
INSERT INTO `character_action` VALUES (2, 11, 21215, 128);
INSERT INTO `character_action` VALUES (2, 4, 6774, 0);
INSERT INTO `character_action` VALUES (2, 5, 11286, 0);
INSERT INTO `character_action` VALUES (2, 8, 13877, 0);
INSERT INTO `character_action` VALUES (2, 9, 13750, 0);
INSERT INTO `character_action` VALUES (2, 10, 5277, 0);
INSERT INTO `character_action` VALUES (2, 72, 11297, 0);
INSERT INTO `character_action` VALUES (2, 73, 1725, 0);
INSERT INTO `character_action` VALUES (2, 74, 1833, 0);
INSERT INTO `character_action` VALUES (2, 75, 11290, 0);
INSERT INTO `character_action` VALUES (3, 0, 5, 0);
INSERT INTO `character_action` VALUES (3, 1, 265, 0);
INSERT INTO `character_action` VALUES (3, 2, 9454, 0);
INSERT INTO `character_action` VALUES (3, 10, 1509, 0);
INSERT INTO `character_action` VALUES (3, 11, 18139, 0);
INSERT INTO `character_action` VALUES (3, 5, 2763, 0);
INSERT INTO `character_action` VALUES (3, 4, 6147, 0);
INSERT INTO `character_action` VALUES (3, 9, 2765, 0);
INSERT INTO `character_action` VALUES (3, 6, 20114, 0);
INSERT INTO `character_action` VALUES (3, 7, 20115, 0);
INSERT INTO `character_action` VALUES (3, 8, 456, 0);
INSERT INTO `character_action` VALUES (4, 0, 8401, 0);
INSERT INTO `character_action` VALUES (4, 55, 990, 0);
INSERT INTO `character_action` VALUES (4, 36, 6948, 128);
INSERT INTO `character_action` VALUES (4, 40, 3909, 0);
INSERT INTO `character_action` VALUES (5, 2, 168, 0);
INSERT INTO `character_action` VALUES (5, 1, 133, 0);
INSERT INTO `character_action` VALUES (4, 49, 12051, 0);
INSERT INTO `character_action` VALUES (4, 56, 1114, 128);
INSERT INTO `character_action` VALUES (4, 1, 8412, 0);
INSERT INTO `character_action` VALUES (4, 7, 8444, 0);
INSERT INTO `character_action` VALUES (4, 57, 3772, 128);
INSERT INTO `character_action` VALUES (4, 28, 7744, 0);
INSERT INTO `character_action` VALUES (4, 26, 7302, 0);
INSERT INTO `character_action` VALUES (4, 25, 5019, 0);
INSERT INTO `character_action` VALUES (4, 37, 7924, 0);
INSERT INTO `character_action` VALUES (5, 0, 6603, 0);
INSERT INTO `character_action` VALUES (4, 2, 2121, 0);
INSERT INTO `character_action` VALUES (4, 35, 2855, 0);
INSERT INTO `character_action` VALUES (4, 29, 8494, 0);
INSERT INTO `character_action` VALUES (4, 38, 7412, 0);
INSERT INTO `character_action` VALUES (4, 27, 1461, 0);
INSERT INTO `character_action` VALUES (4, 39, 13262, 0);
INSERT INTO `character_action` VALUES (4, 10, 12824, 0);
INSERT INTO `character_action` VALUES (5, 3, 20577, 0);
INSERT INTO `character_action` VALUES (5, 10, 159, 128);
INSERT INTO `character_action` VALUES (5, 11, 4604, 128);
INSERT INTO `character_action` VALUES (4, 32, 475, 0);
INSERT INTO `character_action` VALUES (4, 5, 865, 0);
INSERT INTO `character_action` VALUES (4, 59, 6127, 0);
INSERT INTO `character_action` VALUES (4, 33, 8450, 0);
INSERT INTO `character_action` VALUES (4, 3, 12522, 0);
INSERT INTO `character_action` VALUES (4, 6, 1953, 0);
INSERT INTO `character_action` VALUES (4, 8, 2139, 0);
INSERT INTO `character_action` VALUES (4, 60, 8406, 0);
INSERT INTO `character_action` VALUES (4, 61, 6141, 0);
INSERT INTO `character_action` VALUES (4, 41, 2550, 0);
INSERT INTO `character_action` VALUES (4, 30, 8457, 0);
INSERT INTO `character_action` VALUES (4, 31, 6143, 0);
INSERT INTO `character_action` VALUES (4, 42, 818, 0);
INSERT INTO `character_action` VALUES (4, 43, 7620, 0);
INSERT INTO `character_action` VALUES (4, 52, 20577, 0);
INSERT INTO `character_action` VALUES (4, 53, 3827, 128);
INSERT INTO `character_action` VALUES (4, 9, 120, 0);
INSERT INTO `character_action` VALUES (4, 11, 8438, 0);
INSERT INTO `character_action` VALUES (4, 51, 759, 0);
INSERT INTO `character_action` VALUES (4, 58, 5514, 128);
INSERT INTO `character_action` VALUES (4, 62, 5145, 0);

-- ----------------------------
-- Table structure for character_aura
-- ----------------------------
DROP TABLE IF EXISTS `character_aura`;
CREATE TABLE `character_aura`  (
  `guid` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier',
  `caster_guid` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Full Global Unique Identifier',
  `item_guid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `spell` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `stacks` int(11) UNSIGNED NOT NULL DEFAULT 1,
  `charges` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `base_points0` float NOT NULL DEFAULT 0,
  `base_points1` float NOT NULL DEFAULT 0,
  `base_points2` float NOT NULL DEFAULT 0,
  `periodic_time0` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `periodic_time1` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `periodic_time2` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `max_duration` int(11) NOT NULL DEFAULT 0,
  `duration` int(11) NOT NULL DEFAULT 0,
  `effect_index_mask` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`, `caster_guid`, `item_guid`, `spell`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Player System' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of character_aura
-- ----------------------------
INSERT INTO `character_aura` VALUES (1, 1, 0, 2458, 1, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1);
INSERT INTO `character_aura` VALUES (2, 2, 0, 16609, 1, 0, 300, 15, 10, 0, 0, 2000, 3600000, 3555937, 7);
INSERT INTO `character_aura` VALUES (2, 2, 0, 22988, 1, 0, 1400, 20, 30, 0, 0, 0, -1, -1, 7);
INSERT INTO `character_aura` VALUES (2, 2, 149, 24252, 1, 0, 0, 100, 0, 0, 0, 0, -1, -1, 3);
INSERT INTO `character_aura` VALUES (3, 3, 169, 28143, 1, 0, 33, 33, 0, 0, 0, 0, -1, -1, 3);
INSERT INTO `character_aura` VALUES (4, 4, 0, 1461, 1, 0, 15, 0, 0, 0, 0, 0, 1800000, 459870, 1);
INSERT INTO `character_aura` VALUES (4, 4, 0, 7302, 1, 0, 290, 0, 6, 0, 0, 0, 1800000, 461632, 7);

-- ----------------------------
-- Table structure for character_battleground_data
-- ----------------------------
DROP TABLE IF EXISTS `character_battleground_data`;
CREATE TABLE `character_battleground_data`  (
  `guid` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier',
  `instance_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `team` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `join_x` float NOT NULL DEFAULT 0,
  `join_y` float NOT NULL DEFAULT 0,
  `join_z` float NOT NULL DEFAULT 0,
  `join_o` float NOT NULL DEFAULT 0,
  `join_map` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Player System' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of character_battleground_data
-- ----------------------------
INSERT INTO `character_battleground_data` VALUES (4, 0, 0, -833.706, -3519.77, 72.508, 3.566, 0);

-- ----------------------------
-- Table structure for character_deleted_items
-- ----------------------------
DROP TABLE IF EXISTS `character_deleted_items`;
CREATE TABLE `character_deleted_items`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `player_guid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `item_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `stack_count` mediumint(8) UNSIGNED NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of character_deleted_items
-- ----------------------------

-- ----------------------------
-- Table structure for character_duplicate_account
-- ----------------------------
DROP TABLE IF EXISTS `character_duplicate_account`;
CREATE TABLE `character_duplicate_account`  (
  `account` int(11) NULL DEFAULT NULL
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = FIXED;

-- ----------------------------
-- Records of character_duplicate_account
-- ----------------------------

-- ----------------------------
-- Table structure for character_forgotten_skills
-- ----------------------------
DROP TABLE IF EXISTS `character_forgotten_skills`;
CREATE TABLE `character_forgotten_skills`  (
  `guid` int(11) UNSIGNED NOT NULL COMMENT 'Global Unique Identifier',
  `skill` mediumint(9) UNSIGNED NOT NULL,
  `value` mediumint(9) UNSIGNED NOT NULL,
  PRIMARY KEY (`guid`, `skill`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Player System' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of character_forgotten_skills
-- ----------------------------

-- ----------------------------
-- Table structure for character_gifts
-- ----------------------------
DROP TABLE IF EXISTS `character_gifts`;
CREATE TABLE `character_gifts`  (
  `guid` int(20) UNSIGNED NOT NULL DEFAULT 0,
  `item_guid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `item_id` int(20) UNSIGNED NOT NULL DEFAULT 0,
  `flags` int(20) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`item_guid`) USING BTREE,
  INDEX `idx_guid`(`guid`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = FIXED;

-- ----------------------------
-- Records of character_gifts
-- ----------------------------

-- ----------------------------
-- Table structure for character_homebind
-- ----------------------------
DROP TABLE IF EXISTS `character_homebind`;
CREATE TABLE `character_homebind`  (
  `guid` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier',
  `map` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Map Identifier',
  `zone` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Zone Identifier',
  `position_x` float NOT NULL DEFAULT 0,
  `position_y` float NOT NULL DEFAULT 0,
  `position_z` float NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Player System' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of character_homebind
-- ----------------------------
INSERT INTO `character_homebind` VALUES (1, 1, 14, -618.518, -4251.67, 38.718);
INSERT INTO `character_homebind` VALUES (2, 1, 141, 10311.3, 832.463, 1326.41);
INSERT INTO `character_homebind` VALUES (3, 1, 876, 16224, 16283.5, 13.1754);
INSERT INTO `character_homebind` VALUES (4, 0, 1497, 1634.62, 224.062, -43.1031);
INSERT INTO `character_homebind` VALUES (5, 0, 85, 1676.35, 1677.45, 121.67);

-- ----------------------------
-- Table structure for character_honor_cp
-- ----------------------------
DROP TABLE IF EXISTS `character_honor_cp`;
CREATE TABLE `character_honor_cp`  (
  `guid` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier',
  `victim_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 4 COMMENT 'Object Type Id',
  `victim_id` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Creature Id / Player Guid',
  `cp` float NOT NULL DEFAULT 0,
  `date` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  INDEX `idx_guid`(`guid`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Player System' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of character_honor_cp
-- ----------------------------
INSERT INTO `character_honor_cp` VALUES (4, 0, 4, 82, 19086, 4);
INSERT INTO `character_honor_cp` VALUES (4, 0, 4, 82, 19086, 4);
INSERT INTO `character_honor_cp` VALUES (4, 0, 4, 138, 19088, 4);
INSERT INTO `character_honor_cp` VALUES (4, 0, 4, 138, 19088, 4);

-- ----------------------------
-- Table structure for character_instance
-- ----------------------------
DROP TABLE IF EXISTS `character_instance`;
CREATE TABLE `character_instance`  (
  `guid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `instance` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permanent` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`, `instance`) USING BTREE,
  INDEX `idx_instance`(`instance`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = FIXED;

-- ----------------------------
-- Records of character_instance
-- ----------------------------

-- ----------------------------
-- Table structure for character_inventory
-- ----------------------------
DROP TABLE IF EXISTS `character_inventory`;
CREATE TABLE `character_inventory`  (
  `guid` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier',
  `bag` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `slot` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `item_guid` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Item Global Unique Identifier',
  `item_id` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Item Identifier',
  PRIMARY KEY (`item_guid`) USING BTREE,
  INDEX `idx_guid`(`guid`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Player System' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of character_inventory
-- ----------------------------
INSERT INTO `character_inventory` VALUES (1, 0, 3, 74, 11840);
INSERT INTO `character_inventory` VALUES (1, 0, 9, 71, 21581);
INSERT INTO `character_inventory` VALUES (1, 0, 23, 8, 6948);
INSERT INTO `character_inventory` VALUES (1, 0, 10, 65, 12947);
INSERT INTO `character_inventory` VALUES (1, 0, 24, 64, 16207);
INSERT INTO `character_inventory` VALUES (1, 0, 4, 68, 21331);
INSERT INTO `character_inventory` VALUES (1, 0, 2, 67, 21330);
INSERT INTO `character_inventory` VALUES (1, 0, 0, 66, 21329);
INSERT INTO `character_inventory` VALUES (1, 0, 16, 55, 40001);
INSERT INTO `character_inventory` VALUES (1, 0, 15, 54, 40001);
INSERT INTO `character_inventory` VALUES (1, 0, 18, 53, 40000);
INSERT INTO `character_inventory` VALUES (1, 0, 14, 76, 23030);
INSERT INTO `character_inventory` VALUES (1, 0, 1, 75, 17782);
INSERT INTO `character_inventory` VALUES (1, 0, 5, 73, 21598);
INSERT INTO `character_inventory` VALUES (1, 0, 8, 72, 21618);
INSERT INTO `character_inventory` VALUES (1, 0, 7, 70, 21333);
INSERT INTO `character_inventory` VALUES (1, 0, 6, 69, 21332);
INSERT INTO `character_inventory` VALUES (1, 0, 25, 82, 12654);
INSERT INTO `character_inventory` VALUES (1, 0, 17, 80, 22811);
INSERT INTO `character_inventory` VALUES (1, 0, 12, 79, 19341);
INSERT INTO `character_inventory` VALUES (1, 0, 13, 78, 23041);
INSERT INTO `character_inventory` VALUES (1, 0, 11, 77, 19384);
INSERT INTO `character_inventory` VALUES (1, 0, 26, 81, 12654);
INSERT INTO `character_inventory` VALUES (1, 0, 19, 84, 14156);
INSERT INTO `character_inventory` VALUES (1, 0, 20, 85, 14156);
INSERT INTO `character_inventory` VALUES (1, 0, 21, 86, 14156);
INSERT INTO `character_inventory` VALUES (1, 0, 22, 83, 14156);
INSERT INTO `character_inventory` VALUES (1, 0, 27, 87, 21176);
INSERT INTO `character_inventory` VALUES (1, 0, 28, 88, 21215);
INSERT INTO `character_inventory` VALUES (1, 0, 29, 89, 21215);
INSERT INTO `character_inventory` VALUES (1, 0, 30, 90, 21215);
INSERT INTO `character_inventory` VALUES (1, 0, 31, 91, 8529);
INSERT INTO `character_inventory` VALUES (1, 0, 33, 92, 18258);
INSERT INTO `character_inventory` VALUES (1, 0, 34, 93, 1973);
INSERT INTO `character_inventory` VALUES (1, 0, 32, 94, 6657);
INSERT INTO `character_inventory` VALUES (1, 0, 35, 97, 9172);
INSERT INTO `character_inventory` VALUES (1, 0, 37, 100, 5634);
INSERT INTO `character_inventory` VALUES (1, 0, 38, 102, 2459);
INSERT INTO `character_inventory` VALUES (1, 0, 36, 103, 3387);
INSERT INTO `character_inventory` VALUES (2, 0, 26, 131, 8928);
INSERT INTO `character_inventory` VALUES (2, 0, 20, 146, 14156);
INSERT INTO `character_inventory` VALUES (3, 0, 20, 174, 14156);
INSERT INTO `character_inventory` VALUES (2, 0, 14, 136, 19398);
INSERT INTO `character_inventory` VALUES (2, 0, 24, 135, 12654);
INSERT INTO `character_inventory` VALUES (2, 0, 23, 119, 6948);
INSERT INTO `character_inventory` VALUES (2, 0, 16, 120, 18583);
INSERT INTO `character_inventory` VALUES (2, 0, 15, 121, 18584);
INSERT INTO `character_inventory` VALUES (2, 0, 2, 122, 16832);
INSERT INTO `character_inventory` VALUES (2, 0, 4, 123, 16905);
INSERT INTO `character_inventory` VALUES (2, 0, 7, 124, 16906);
INSERT INTO `character_inventory` VALUES (2, 0, 9, 125, 16907);
INSERT INTO `character_inventory` VALUES (2, 0, 0, 126, 16908);
INSERT INTO `character_inventory` VALUES (2, 0, 6, 127, 16909);
INSERT INTO `character_inventory` VALUES (2, 0, 5, 128, 16910);
INSERT INTO `character_inventory` VALUES (2, 0, 8, 129, 16911);
INSERT INTO `character_inventory` VALUES (2, 0, 25, 132, 20844);
INSERT INTO `character_inventory` VALUES (2, 0, 28, 149, 19902);
INSERT INTO `character_inventory` VALUES (2, 0, 17, 134, 22812);
INSERT INTO `character_inventory` VALUES (2, 0, 27, 137, 21215);
INSERT INTO `character_inventory` VALUES (2, 0, 1, 138, 23053);
INSERT INTO `character_inventory` VALUES (2, 0, 10, 139, 21596);
INSERT INTO `character_inventory` VALUES (2, 0, 11, 140, 19376);
INSERT INTO `character_inventory` VALUES (2, 0, 12, 141, 19406);
INSERT INTO `character_inventory` VALUES (2, 0, 13, 142, 18815);
INSERT INTO `character_inventory` VALUES (2, 0, 18, 143, 19160);
INSERT INTO `character_inventory` VALUES (2, 0, 3, 144, 6796);
INSERT INTO `character_inventory` VALUES (2, 0, 21, 147, 14156);
INSERT INTO `character_inventory` VALUES (2, 0, 19, 148, 14156);
INSERT INTO `character_inventory` VALUES (2, 0, 22, 145, 14156);
INSERT INTO `character_inventory` VALUES (3, 0, 19, 173, 14156);
INSERT INTO `character_inventory` VALUES (3, 0, 17, 170, 5209);
INSERT INTO `character_inventory` VALUES (1, 83, 0, 177, 40002);
INSERT INTO `character_inventory` VALUES (3, 0, 15, 169, 22630);
INSERT INTO `character_inventory` VALUES (3, 0, 23, 165, 6948);
INSERT INTO `character_inventory` VALUES (3, 0, 4, 166, 2586);
INSERT INTO `character_inventory` VALUES (3, 0, 7, 167, 11508);
INSERT INTO `character_inventory` VALUES (3, 0, 0, 168, 12064);
INSERT INTO `character_inventory` VALUES (3, 0, 21, 175, 14156);
INSERT INTO `character_inventory` VALUES (3, 0, 22, 172, 14156);
INSERT INTO `character_inventory` VALUES (4, 0, 23, 193, 6948);
INSERT INTO `character_inventory` VALUES (4, 0, 53, 2123, 2321);
INSERT INTO `character_inventory` VALUES (4, 2106, 1, 486, 6218);
INSERT INTO `character_inventory` VALUES (4, 0, 52, 2029, 2325);
INSERT INTO `character_inventory` VALUES (4, 0, 4, 1644, 6324);
INSERT INTO `character_inventory` VALUES (4, 0, 47, 1225, 2324);
INSERT INTO `character_inventory` VALUES (4, 2106, 3, 2267, 10940);
INSERT INTO `character_inventory` VALUES (4, 0, 59, 999, 4305);
INSERT INTO `character_inventory` VALUES (4, 0, 66, 2108, 4240);
INSERT INTO `character_inventory` VALUES (4, 0, 65, 2105, 4240);
INSERT INTO `character_inventory` VALUES (4, 0, 45, 1471, 2605);
INSERT INTO `character_inventory` VALUES (5, 0, 15, 618, 35);
INSERT INTO `character_inventory` VALUES (5, 0, 7, 620, 55);
INSERT INTO `character_inventory` VALUES (5, 0, 23, 622, 159);
INSERT INTO `character_inventory` VALUES (5, 0, 6, 624, 1395);
INSERT INTO `character_inventory` VALUES (5, 0, 24, 626, 4604);
INSERT INTO `character_inventory` VALUES (5, 0, 3, 628, 6096);
INSERT INTO `character_inventory` VALUES (5, 0, 4, 630, 6140);
INSERT INTO `character_inventory` VALUES (5, 0, 25, 632, 6948);
INSERT INTO `character_inventory` VALUES (4, 2106, 5, 2304, 11134);
INSERT INTO `character_inventory` VALUES (4, 0, 17, 2145, 5250);
INSERT INTO `character_inventory` VALUES (4, 0, 2, 1643, 3748);
INSERT INTO `character_inventory` VALUES (4, 0, 21, 1534, 932);
INSERT INTO `character_inventory` VALUES (4, 0, 22, 1080, 856);
INSERT INTO `character_inventory` VALUES (4, 0, 62, 2270, 2996);
INSERT INTO `character_inventory` VALUES (4, 0, 48, 1227, 2604);
INSERT INTO `character_inventory` VALUES (4, 0, 68, 2104, 4240);
INSERT INTO `character_inventory` VALUES (4, 0, 5, 1620, 6392);
INSERT INTO `character_inventory` VALUES (4, 2106, 4, 1944, 11084);
INSERT INTO `character_inventory` VALUES (4, 0, 61, 1425, 6260);
INSERT INTO `character_inventory` VALUES (4, 0, 58, 1488, 2318);
INSERT INTO `character_inventory` VALUES (4, 0, 20, 1613, 5576);
INSERT INTO `character_inventory` VALUES (4, 0, 7, 1806, 6482);
INSERT INTO `character_inventory` VALUES (4, 0, 15, 1577, 6318);
INSERT INTO `character_inventory` VALUES (4, 0, 67, 2107, 4240);
INSERT INTO `character_inventory` VALUES (4, 0, 63, 2106, 4240);
INSERT INTO `character_inventory` VALUES (4, 0, 39, 1946, 5772);
INSERT INTO `character_inventory` VALUES (4, 2106, 6, 1945, 11083);
INSERT INTO `character_inventory` VALUES (4, 0, 51, 2071, 4340);
INSERT INTO `character_inventory` VALUES (4, 0, 46, 2081, 4341);
INSERT INTO `character_inventory` VALUES (4, 0, 60, 2091, 4342);
INSERT INTO `character_inventory` VALUES (4, 0, 50, 2052, 4291);
INSERT INTO `character_inventory` VALUES (4, 0, 0, 2146, 3732);
INSERT INTO `character_inventory` VALUES (4, 2106, 2, 1912, 10938);
INSERT INTO `character_inventory` VALUES (4, 2103, 0, 1026, 11137);
INSERT INTO `character_inventory` VALUES (4, 0, 11, 1914, 3739);
INSERT INTO `character_inventory` VALUES (4, 0, 64, 2103, 4240);
INSERT INTO `character_inventory` VALUES (4, 0, 9, 1846, 1775);
INSERT INTO `character_inventory` VALUES (4, 2104, 7, 2629, 15929);
INSERT INTO `character_inventory` VALUES (4, 0, 54, 2113, 2997);
INSERT INTO `character_inventory` VALUES (4, 0, 19, 1999, 4240);
INSERT INTO `character_inventory` VALUES (4, 0, 49, 2000, 2320);
INSERT INTO `character_inventory` VALUES (4, 0, 14, 2217, 3749);
INSERT INTO `character_inventory` VALUES (4, 0, 25, 2312, 3827);
INSERT INTO `character_inventory` VALUES (4, 0, 1, 2202, 12047);
INSERT INTO `character_inventory` VALUES (4, 0, 26, 2331, 7269);
INSERT INTO `character_inventory` VALUES (4, 0, 8, 2330, 2032);
INSERT INTO `character_inventory` VALUES (4, 0, 6, 2262, 14404);
INSERT INTO `character_inventory` VALUES (4, 0, 10, 2300, 3760);
INSERT INTO `character_inventory` VALUES (4, 0, 40, 2297, 3737);
INSERT INTO `character_inventory` VALUES (4, 0, 57, 2316, 2592);
INSERT INTO `character_inventory` VALUES (4, 2106, 7, 2806, 11082);
INSERT INTO `character_inventory` VALUES (4, 2104, 1, 2355, 16650);
INSERT INTO `character_inventory` VALUES (4, 2104, 2, 2361, 16651);
INSERT INTO `character_inventory` VALUES (4, 2106, 0, 2399, 10998);
INSERT INTO `character_inventory` VALUES (4, 0, 24, 2371, 16742);
INSERT INTO `character_inventory` VALUES (4, 0, 32, 2828, 1419);
INSERT INTO `character_inventory` VALUES (4, 0, 29, 2821, 8177);
INSERT INTO `character_inventory` VALUES (4, 0, 30, 2822, 2589);
INSERT INTO `character_inventory` VALUES (4, 0, 31, 2823, 4408);
INSERT INTO `character_inventory` VALUES (4, 2103, 1, 2804, 11083);
INSERT INTO `character_inventory` VALUES (4, 0, 27, 2425, 1710);
INSERT INTO `character_inventory` VALUES (4, 0, 56, 2537, 2996);
INSERT INTO `character_inventory` VALUES (4, 0, 3, 2556, 2587);
INSERT INTO `character_inventory` VALUES (4, 0, 44, 2573, 6261);
INSERT INTO `character_inventory` VALUES (4, 0, 43, 2583, 8343);
INSERT INTO `character_inventory` VALUES (4, 0, 42, 2593, 10290);
INSERT INTO `character_inventory` VALUES (4, 0, 41, 2603, 14341);
INSERT INTO `character_inventory` VALUES (4, 0, 33, 2830, 2672);
INSERT INTO `character_inventory` VALUES (4, 0, 34, 2831, 774);
INSERT INTO `character_inventory` VALUES (4, 0, 35, 2838, 3455);
INSERT INTO `character_inventory` VALUES (4, 0, 36, 2839, 3252);
INSERT INTO `character_inventory` VALUES (4, 2104, 6, 2460, 9851);
INSERT INTO `character_inventory` VALUES (4, 2104, 5, 2464, 7473);
INSERT INTO `character_inventory` VALUES (4, 0, 28, 2678, 3711);
INSERT INTO `character_inventory` VALUES (4, 2104, 3, 2692, 8749);
INSERT INTO `character_inventory` VALUES (4, 2104, 4, 2761, 4732);
INSERT INTO `character_inventory` VALUES (4, 0, 55, 2722, 4306);

-- ----------------------------
-- Table structure for character_pet
-- ----------------------------
DROP TABLE IF EXISTS `character_pet`;
CREATE TABLE `character_pet`  (
  `id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `entry` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `owner_guid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `display_id` int(11) UNSIGNED NULL DEFAULT 0,
  `created_by_spell` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `pet_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `level` int(11) UNSIGNED NOT NULL DEFAULT 1,
  `xp` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `react_state` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `loyalty_points` int(11) NOT NULL DEFAULT 0,
  `loyalty` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `training_points` int(11) NOT NULL DEFAULT 0,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'Pet',
  `renamed` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `slot` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `current_health` int(11) UNSIGNED NOT NULL DEFAULT 1,
  `current_mana` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `current_happiness` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `save_time` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `reset_talents_cost` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `reset_talents_time` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `action_bar_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `teach_spell_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_owner`(`owner_guid`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Pet System' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of character_pet
-- ----------------------------

-- ----------------------------
-- Table structure for character_queststatus
-- ----------------------------
DROP TABLE IF EXISTS `character_queststatus`;
CREATE TABLE `character_queststatus`  (
  `guid` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier',
  `quest` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Quest Identifier',
  `status` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `rewarded` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `explored` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `timer` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `mob_count1` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `mob_count2` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `mob_count3` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `mob_count4` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `item_count1` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `item_count2` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `item_count3` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `item_count4` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `reward_choice` int(11) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`, `quest`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Player System' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of character_queststatus
-- ----------------------------
INSERT INTO `character_queststatus` VALUES (4, 363, 0, 0, 0, 1618090467, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 364, 1, 1, 0, 1618131348, 8, 8, 0, 0, 0, 0, 0, 0, 3275);
INSERT INTO `character_queststatus` VALUES (4, 3098, 1, 1, 0, 1649361750, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 3901, 1, 1, 0, 1618247202, 12, 0, 0, 0, 0, 0, 0, 0, 3274);
INSERT INTO `character_queststatus` VALUES (4, 376, 1, 1, 0, 1649361750, 0, 0, 0, 0, 0, 0, 0, 0, 6060);
INSERT INTO `character_queststatus` VALUES (4, 380, 1, 1, 0, 1618250228, 10, 8, 0, 0, 0, 0, 0, 0, 3270);
INSERT INTO `character_queststatus` VALUES (4, 3902, 1, 1, 0, 1649361750, 0, 0, 0, 0, 0, 0, 0, 0, 11848);
INSERT INTO `character_queststatus` VALUES (4, 6395, 1, 1, 0, 1618250228, 1, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 381, 1, 1, 0, 1649361750, 0, 0, 0, 0, 0, 0, 0, 0, 3268);
INSERT INTO `character_queststatus` VALUES (4, 382, 1, 1, 0, 1649361750, 0, 0, 0, 0, 0, 0, 0, 0, 3277);
INSERT INTO `character_queststatus` VALUES (4, 8, 1, 1, 0, 1649361750, 0, 0, 0, 0, 0, 0, 0, 0, 4604);
INSERT INTO `character_queststatus` VALUES (4, 365, 1, 1, 0, 1649361750, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 383, 1, 1, 0, 1649361750, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 5481, 1, 1, 0, 1649361750, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 404, 1, 1, 0, 1649361750, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 5482, 1, 1, 0, 1649361750, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 367, 1, 1, 0, 1649361750, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 407, 1, 1, 0, 1649361750, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 358, 1, 1, 0, 1649361750, 0, 8, 5, 0, 0, 0, 0, 0, 6063);
INSERT INTO `character_queststatus` VALUES (4, 374, 1, 1, 0, 1649361750, 0, 0, 0, 0, 0, 0, 0, 0, 12299);
INSERT INTO `character_queststatus` VALUES (4, 398, 1, 1, 0, 1649361750, 0, 0, 0, 0, 0, 0, 0, 0, 5941);
INSERT INTO `character_queststatus` VALUES (4, 427, 1, 1, 0, 1618430787, 10, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 375, 1, 1, 0, 1649361750, 0, 0, 0, 0, 0, 1, 0, 0, 3833);
INSERT INTO `character_queststatus` VALUES (4, 368, 1, 1, 0, 1649361750, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 356, 1, 1, 0, 1624984403, 8, 8, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 405, 1, 1, 0, 1649361750, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 354, 1, 1, 0, 1649361750, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 362, 1, 1, 0, 1649361750, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 359, 1, 1, 0, 1621235837, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 370, 1, 1, 0, 1621179088, 1, 3, 3, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 426, 1, 1, 0, 1649361750, 0, 0, 0, 0, 0, 0, 0, 0, 3834);
INSERT INTO `character_queststatus` VALUES (4, 445, 1, 1, 0, 1649361750, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 5725, 1, 1, 0, 1649361750, 0, 0, 0, 0, 0, 0, 0, 0, 15449);
INSERT INTO `character_queststatus` VALUES (4, 357, 1, 1, 0, 1649361750, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 361, 1, 1, 0, 1649361750, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 371, 1, 1, 0, 1624196605, 1, 5, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 360, 1, 1, 0, 1624188313, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 369, 1, 1, 0, 1649361750, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 1881, 1, 1, 0, 1624191248, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 1882, 1, 1, 0, 1649361750, 0, 0, 0, 0, 0, 0, 0, 0, 7507);
INSERT INTO `character_queststatus` VALUES (4, 372, 1, 1, 0, 1625246225, 1, 2, 0, 0, 0, 0, 0, 0, 3445);
INSERT INTO `character_queststatus` VALUES (4, 355, 1, 1, 0, 1624815607, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (5, 363, 1, 1, 0, 1624812419, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (5, 364, 3, 0, 0, 1624812419, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 408, 1, 1, 0, 1649361750, 8, 8, 0, 0, 0, 0, 0, 0, 3446);
INSERT INTO `character_queststatus` VALUES (4, 492, 1, 1, 0, 1649361750, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 8368, 1, 1, 0, 1649361750, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 9368, 1, 1, 0, 1624989036, 1, 1, 1, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 366, 1, 1, 0, 1649361750, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 409, 1, 1, 0, 1625256343, 1, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 431, 0, 1, 0, 1625254940, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 410, 0, 1, 0, 1649361750, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 411, 1, 1, 0, 1649361750, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 6321, 1, 1, 0, 1649361750, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 428, 1, 1, 0, 1625479111, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 437, 1, 1, 1, 1649361750, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 421, 1, 1, 0, 1625466323, 5, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 447, 1, 1, 0, 1649361750, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 477, 1, 1, 0, 1625498264, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 422, 1, 1, 0, 1649361750, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 423, 1, 1, 0, 1649361750, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 6323, 1, 1, 0, 1649361750, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 6322, 1, 1, 0, 1649361750, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 6324, 1, 1, 0, 1649361750, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 429, 1, 1, 0, 1649361750, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 430, 1, 1, 0, 1649361750, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 425, 1, 1, 0, 1649361750, 0, 0, 0, 0, 0, 0, 0, 0, 3453);
INSERT INTO `character_queststatus` VALUES (4, 450, 1, 1, 0, 1649361750, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 438, 1, 1, 0, 1625516159, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 424, 1, 1, 0, 1649361750, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 451, 1, 1, 0, 1649361750, 0, 0, 0, 0, 0, 0, 0, 0, 3582);
INSERT INTO `character_queststatus` VALUES (4, 452, 1, 1, 1, 1625497328, 0, 0, 0, 0, 0, 0, 0, 0, 3449);
INSERT INTO `character_queststatus` VALUES (4, 478, 1, 1, 0, 1649361750, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 481, 1, 1, 0, 1649361750, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 516, 1, 1, 0, 1625588231, 6, 6, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 482, 1, 1, 0, 1625505491, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 479, 1, 1, 0, 1649361750, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 99, 1, 1, 0, 1649361750, 0, 0, 0, 0, 0, 0, 0, 0, 5242);
INSERT INTO `character_queststatus` VALUES (4, 439, 1, 1, 0, 1649361750, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 480, 1, 1, 0, 1649361750, 0, 0, 0, 0, 0, 0, 0, 0, 3452);
INSERT INTO `character_queststatus` VALUES (4, 440, 1, 1, 0, 1649361750, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 443, 1, 1, 0, 1649361750, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 441, 1, 1, 0, 1649361750, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 530, 1, 1, 0, 1649361750, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 444, 1, 1, 0, 1649361750, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 446, 1, 1, 0, 1649361750, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 1013, 1, 1, 0, 1649361750, 0, 0, 0, 0, 0, 0, 0, 0, 6335);
INSERT INTO `character_queststatus` VALUES (4, 442, 1, 1, 0, 1649361750, 0, 0, 0, 0, 0, 0, 0, 0, 3461);
INSERT INTO `character_queststatus` VALUES (4, 448, 1, 1, 0, 1625559962, 0, 0, 0, 0, 0, 0, 0, 0, 3240);
INSERT INTO `character_queststatus` VALUES (4, 1014, 1, 1, 0, 1649361750, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 460, 1, 1, 0, 1649361750, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 461, 1, 1, 0, 1649361750, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 491, 1, 1, 0, 1649361750, 0, 0, 0, 0, 0, 0, 0, 0, 3457);
INSERT INTO `character_queststatus` VALUES (4, 1098, 1, 1, 0, 1625602573, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 493, 1, 1, 0, 1649361750, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 496, 1, 1, 0, 1649361750, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 498, 1, 1, 0, 1630615590, 1, 1, 0, 0, 0, 0, 0, 0, 3752);
INSERT INTO `character_queststatus` VALUES (4, 501, 1, 1, 0, 1649361750, 0, 0, 0, 0, 0, 0, 0, 0, 6482);
INSERT INTO `character_queststatus` VALUES (4, 527, 1, 1, 0, 1630693959, 6, 6, 1, 1, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 8370, 1, 1, 0, 1649361750, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 8426, 1, 1, 0, 1649361750, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 8390, 0, 1, 0, 1649361750, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 8431, 0, 1, 0, 1649361750, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 509, 1, 1, 0, 1649361750, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 499, 1, 1, 0, 1649361750, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 502, 1, 1, 0, 1649361750, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 528, 1, 1, 0, 1631045219, 15, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 546, 1, 1, 0, 1649361750, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 549, 1, 1, 0, 1630696149, 10, 10, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 567, 1, 1, 0, 1631050156, 1, 1, 1, 1, 0, 0, 0, 0, 5250);
INSERT INTO `character_queststatus` VALUES (4, 513, 1, 1, 0, 1649361750, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 529, 1, 1, 0, 1649361750, 1, 4, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 515, 1, 1, 0, 1649361750, 0, 0, 0, 0, 0, 0, 0, 0, 3749);
INSERT INTO `character_queststatus` VALUES (4, 1943, 1, 1, 0, 1637351134, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 532, 1, 1, 0, 1649361750, 1, 5, 1, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 547, 1, 1, 0, 1649361750, 0, 0, 0, 0, 0, 0, 0, 0, 3751);
INSERT INTO `character_queststatus` VALUES (4, 517, 1, 1, 0, 1649361750, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 539, 1, 1, 0, 1636212428, 1, 10, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 494, 1, 1, 0, 1636212428, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 541, 1, 1, 0, 1637207177, 10, 8, 4, 1, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 1164, 1, 1, 0, 1649361750, 0, 0, 0, 0, 0, 0, 0, 0, 2032);
INSERT INTO `character_queststatus` VALUES (4, 524, 1, 1, 0, 1649361750, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 550, 1, 1, 0, 1649361750, 0, 0, 0, 0, 0, 0, 0, 0, 3822);
INSERT INTO `character_queststatus` VALUES (4, 7321, 1, 1, 0, 1649361750, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 8162, 1, 1, 0, 1649361750, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 8171, 1, 1, 0, 1637348594, 1, 1, 1, 1, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 1944, 3, 0, 0, 1649361750, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 858, 1, 1, 0, 1649361750, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 863, 1, 0, 1, 1637718578, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 7789, 1, 1, 0, 1649361750, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 6503, 1, 1, 0, 1638572204, 9, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 6504, 3, 0, 0, 1649361750, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 6544, 1, 1, 1, 1638572944, 0, 0, 0, 0, 0, 0, 0, 0, 16889);
INSERT INTO `character_queststatus` VALUES (4, 6571, 3, 0, 0, 1649361750, 0, 0, 0, 0, 1, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 8293, 0, 1, 0, 1649361750, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 6441, 3, 0, 0, 1649361750, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 25, 3, 0, 0, 1638573963, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 6581, 0, 1, 0, 1649361750, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 552, 1, 1, 0, 1649361750, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 533, 1, 1, 0, 1649361750, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 535, 1, 1, 0, 1649361750, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 503, 1, 1, 1, 1649361750, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 506, 1, 1, 0, 1649271359, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 553, 1, 1, 0, 1649363550, 1, 1, 1, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 1238, 1, 1, 0, 1649361750, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 544, 1, 1, 0, 1649361750, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 556, 1, 1, 0, 1649363550, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 676, 3, 0, 0, 1649270459, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 1361, 1, 0, 0, 1649270459, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 507, 3, 0, 0, 1649271359, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 8427, 1, 1, 0, 1649361750, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 8436, 1, 1, 0, 1649361750, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 545, 1, 1, 0, 1649365350, 6, 12, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 557, 1, 1, 0, 1649365350, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 1109, 3, 0, 0, 1649368050, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 1947, 1, 0, 0, 1649368950, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 1960, 1, 1, 0, 1649368950, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 1961, 3, 0, 0, 1649371650, 0, 0, 0, 0, 10, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 435, 1, 1, 1, 1649371650, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 449, 1, 0, 0, 1649371650, 0, 0, 0, 0, 1, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 590, 1, 1, 1, 1649371650, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- ----------------------------
-- Table structure for character_reputation
-- ----------------------------
DROP TABLE IF EXISTS `character_reputation`;
CREATE TABLE `character_reputation`  (
  `guid` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier',
  `faction` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `standing` int(11) NOT NULL DEFAULT 0,
  `flags` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`, `faction`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Player System' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of character_reputation
-- ----------------------------
INSERT INTO `character_reputation` VALUES (1, 87, 0, 2);
INSERT INTO `character_reputation` VALUES (1, 21, 0, 0);
INSERT INTO `character_reputation` VALUES (1, 92, 0, 2);
INSERT INTO `character_reputation` VALUES (1, 93, 0, 2);
INSERT INTO `character_reputation` VALUES (1, 59, 0, 16);
INSERT INTO `character_reputation` VALUES (1, 349, 0, 0);
INSERT INTO `character_reputation` VALUES (1, 70, 0, 2);
INSERT INTO `character_reputation` VALUES (1, 369, 0, 0);
INSERT INTO `character_reputation` VALUES (1, 471, 0, 22);
INSERT INTO `character_reputation` VALUES (1, 470, 0, 0);
INSERT INTO `character_reputation` VALUES (1, 169, 0, 8);
INSERT INTO `character_reputation` VALUES (1, 469, 0, 14);
INSERT INTO `character_reputation` VALUES (1, 67, 0, 9);
INSERT INTO `character_reputation` VALUES (1, 529, 0, 0);
INSERT INTO `character_reputation` VALUES (1, 76, 0, 17);
INSERT INTO `character_reputation` VALUES (1, 530, 0, 17);
INSERT INTO `character_reputation` VALUES (1, 81, 0, 17);
INSERT INTO `character_reputation` VALUES (1, 68, 0, 17);
INSERT INTO `character_reputation` VALUES (1, 54, 0, 6);
INSERT INTO `character_reputation` VALUES (1, 72, 0, 6);
INSERT INTO `character_reputation` VALUES (1, 47, 0, 6);
INSERT INTO `character_reputation` VALUES (1, 69, 0, 6);
INSERT INTO `character_reputation` VALUES (1, 86, 0, 4);
INSERT INTO `character_reputation` VALUES (1, 83, 0, 4);
INSERT INTO `character_reputation` VALUES (1, 549, 0, 4);
INSERT INTO `character_reputation` VALUES (1, 551, 0, 4);
INSERT INTO `character_reputation` VALUES (1, 550, 0, 4);
INSERT INTO `character_reputation` VALUES (1, 589, 0, 6);
INSERT INTO `character_reputation` VALUES (1, 577, 0, 0);
INSERT INTO `character_reputation` VALUES (1, 46, 0, 4);
INSERT INTO `character_reputation` VALUES (1, 289, 0, 4);
INSERT INTO `character_reputation` VALUES (1, 570, 0, 4);
INSERT INTO `character_reputation` VALUES (1, 571, 0, 4);
INSERT INTO `character_reputation` VALUES (1, 569, 0, 4);
INSERT INTO `character_reputation` VALUES (1, 574, 0, 4);
INSERT INTO `character_reputation` VALUES (1, 576, 0, 2);
INSERT INTO `character_reputation` VALUES (1, 609, 0, 0);
INSERT INTO `character_reputation` VALUES (1, 629, 0, 0);
INSERT INTO `character_reputation` VALUES (1, 630, 0, 0);
INSERT INTO `character_reputation` VALUES (1, 709, 0, 20);
INSERT INTO `character_reputation` VALUES (1, 730, 0, 2);
INSERT INTO `character_reputation` VALUES (1, 729, 0, 16);
INSERT INTO `character_reputation` VALUES (1, 749, 0, 0);
INSERT INTO `character_reputation` VALUES (1, 789, 0, 16);
INSERT INTO `character_reputation` VALUES (1, 809, 0, 16);
INSERT INTO `character_reputation` VALUES (1, 890, 0, 6);
INSERT INTO `character_reputation` VALUES (1, 889, 0, 17);
INSERT INTO `character_reputation` VALUES (1, 891, 0, 14);
INSERT INTO `character_reputation` VALUES (1, 892, 0, 24);
INSERT INTO `character_reputation` VALUES (1, 909, 0, 16);
INSERT INTO `character_reputation` VALUES (1, 270, 0, 16);
INSERT INTO `character_reputation` VALUES (1, 510, 0, 16);
INSERT INTO `character_reputation` VALUES (1, 509, 0, 2);
INSERT INTO `character_reputation` VALUES (1, 910, 0, 2);
INSERT INTO `character_reputation` VALUES (2, 87, 0, 2);
INSERT INTO `character_reputation` VALUES (2, 21, 0, 0);
INSERT INTO `character_reputation` VALUES (2, 92, 0, 2);
INSERT INTO `character_reputation` VALUES (2, 93, 0, 2);
INSERT INTO `character_reputation` VALUES (2, 59, 0, 16);
INSERT INTO `character_reputation` VALUES (2, 349, 0, 0);
INSERT INTO `character_reputation` VALUES (2, 70, 0, 2);
INSERT INTO `character_reputation` VALUES (2, 369, 0, 0);
INSERT INTO `character_reputation` VALUES (2, 471, 0, 16);
INSERT INTO `character_reputation` VALUES (2, 470, 0, 0);
INSERT INTO `character_reputation` VALUES (2, 169, 0, 8);
INSERT INTO `character_reputation` VALUES (2, 469, 0, 9);
INSERT INTO `character_reputation` VALUES (2, 67, 0, 14);
INSERT INTO `character_reputation` VALUES (2, 529, 0, 0);
INSERT INTO `character_reputation` VALUES (2, 76, 0, 6);
INSERT INTO `character_reputation` VALUES (2, 530, 0, 6);
INSERT INTO `character_reputation` VALUES (2, 81, 0, 6);
INSERT INTO `character_reputation` VALUES (2, 68, 0, 6);
INSERT INTO `character_reputation` VALUES (2, 54, 0, 17);
INSERT INTO `character_reputation` VALUES (2, 72, 0, 17);
INSERT INTO `character_reputation` VALUES (2, 47, 0, 17);
INSERT INTO `character_reputation` VALUES (2, 69, 0, 17);
INSERT INTO `character_reputation` VALUES (2, 86, 0, 4);
INSERT INTO `character_reputation` VALUES (2, 83, 0, 4);
INSERT INTO `character_reputation` VALUES (2, 549, 0, 4);
INSERT INTO `character_reputation` VALUES (2, 551, 0, 4);
INSERT INTO `character_reputation` VALUES (2, 550, 0, 4);
INSERT INTO `character_reputation` VALUES (2, 589, 0, 0);
INSERT INTO `character_reputation` VALUES (2, 577, 0, 0);
INSERT INTO `character_reputation` VALUES (2, 46, 0, 4);
INSERT INTO `character_reputation` VALUES (2, 289, 0, 4);
INSERT INTO `character_reputation` VALUES (2, 570, 0, 4);
INSERT INTO `character_reputation` VALUES (2, 571, 0, 4);
INSERT INTO `character_reputation` VALUES (2, 569, 0, 4);
INSERT INTO `character_reputation` VALUES (2, 574, 0, 4);
INSERT INTO `character_reputation` VALUES (2, 576, 0, 2);
INSERT INTO `character_reputation` VALUES (2, 609, 0, 0);
INSERT INTO `character_reputation` VALUES (2, 629, 0, 0);
INSERT INTO `character_reputation` VALUES (2, 630, 0, 2);
INSERT INTO `character_reputation` VALUES (2, 709, 0, 20);
INSERT INTO `character_reputation` VALUES (2, 730, 0, 16);
INSERT INTO `character_reputation` VALUES (2, 729, 0, 2);
INSERT INTO `character_reputation` VALUES (2, 749, 0, 0);
INSERT INTO `character_reputation` VALUES (2, 789, 0, 16);
INSERT INTO `character_reputation` VALUES (2, 809, 0, 16);
INSERT INTO `character_reputation` VALUES (2, 890, 0, 16);
INSERT INTO `character_reputation` VALUES (2, 889, 0, 6);
INSERT INTO `character_reputation` VALUES (2, 891, 0, 24);
INSERT INTO `character_reputation` VALUES (2, 892, 0, 14);
INSERT INTO `character_reputation` VALUES (2, 909, 0, 16);
INSERT INTO `character_reputation` VALUES (2, 270, 0, 16);
INSERT INTO `character_reputation` VALUES (2, 510, 0, 2);
INSERT INTO `character_reputation` VALUES (2, 509, 0, 16);
INSERT INTO `character_reputation` VALUES (2, 910, 0, 2);
INSERT INTO `character_reputation` VALUES (3, 87, 0, 2);
INSERT INTO `character_reputation` VALUES (3, 21, 0, 0);
INSERT INTO `character_reputation` VALUES (3, 92, 0, 2);
INSERT INTO `character_reputation` VALUES (3, 93, 0, 2);
INSERT INTO `character_reputation` VALUES (3, 59, 0, 16);
INSERT INTO `character_reputation` VALUES (3, 349, 0, 0);
INSERT INTO `character_reputation` VALUES (3, 70, 0, 2);
INSERT INTO `character_reputation` VALUES (3, 369, 0, 0);
INSERT INTO `character_reputation` VALUES (3, 471, 0, 16);
INSERT INTO `character_reputation` VALUES (3, 470, 0, 0);
INSERT INTO `character_reputation` VALUES (3, 169, 0, 8);
INSERT INTO `character_reputation` VALUES (3, 469, 0, 9);
INSERT INTO `character_reputation` VALUES (3, 67, 0, 14);
INSERT INTO `character_reputation` VALUES (3, 529, 0, 0);
INSERT INTO `character_reputation` VALUES (3, 76, 0, 6);
INSERT INTO `character_reputation` VALUES (3, 530, 0, 6);
INSERT INTO `character_reputation` VALUES (3, 81, 0, 6);
INSERT INTO `character_reputation` VALUES (3, 68, 0, 6);
INSERT INTO `character_reputation` VALUES (3, 54, 0, 17);
INSERT INTO `character_reputation` VALUES (3, 72, 0, 17);
INSERT INTO `character_reputation` VALUES (3, 47, 0, 17);
INSERT INTO `character_reputation` VALUES (3, 69, 0, 17);
INSERT INTO `character_reputation` VALUES (3, 86, 0, 4);
INSERT INTO `character_reputation` VALUES (3, 83, 0, 4);
INSERT INTO `character_reputation` VALUES (3, 549, 0, 4);
INSERT INTO `character_reputation` VALUES (3, 551, 0, 4);
INSERT INTO `character_reputation` VALUES (3, 550, 0, 4);
INSERT INTO `character_reputation` VALUES (3, 589, 0, 0);
INSERT INTO `character_reputation` VALUES (3, 577, 0, 0);
INSERT INTO `character_reputation` VALUES (3, 46, 0, 4);
INSERT INTO `character_reputation` VALUES (3, 289, 0, 4);
INSERT INTO `character_reputation` VALUES (3, 570, 0, 4);
INSERT INTO `character_reputation` VALUES (3, 571, 0, 4);
INSERT INTO `character_reputation` VALUES (3, 569, 0, 4);
INSERT INTO `character_reputation` VALUES (3, 574, 0, 4);
INSERT INTO `character_reputation` VALUES (3, 576, 0, 2);
INSERT INTO `character_reputation` VALUES (3, 609, 0, 0);
INSERT INTO `character_reputation` VALUES (3, 629, 0, 0);
INSERT INTO `character_reputation` VALUES (3, 630, 0, 2);
INSERT INTO `character_reputation` VALUES (3, 709, 0, 20);
INSERT INTO `character_reputation` VALUES (3, 730, 0, 16);
INSERT INTO `character_reputation` VALUES (3, 729, 0, 2);
INSERT INTO `character_reputation` VALUES (3, 749, 0, 0);
INSERT INTO `character_reputation` VALUES (3, 789, 0, 16);
INSERT INTO `character_reputation` VALUES (3, 809, 0, 16);
INSERT INTO `character_reputation` VALUES (3, 890, 0, 16);
INSERT INTO `character_reputation` VALUES (3, 889, 0, 6);
INSERT INTO `character_reputation` VALUES (3, 891, 0, 24);
INSERT INTO `character_reputation` VALUES (3, 892, 0, 14);
INSERT INTO `character_reputation` VALUES (3, 909, 0, 16);
INSERT INTO `character_reputation` VALUES (3, 270, 0, 16);
INSERT INTO `character_reputation` VALUES (3, 510, 0, 2);
INSERT INTO `character_reputation` VALUES (3, 509, 0, 16);
INSERT INTO `character_reputation` VALUES (3, 910, 0, 2);
INSERT INTO `character_reputation` VALUES (4, 87, 0, 2);
INSERT INTO `character_reputation` VALUES (4, 21, 10, 1);
INSERT INTO `character_reputation` VALUES (4, 92, 0, 2);
INSERT INTO `character_reputation` VALUES (4, 93, 0, 2);
INSERT INTO `character_reputation` VALUES (4, 59, 0, 16);
INSERT INTO `character_reputation` VALUES (4, 349, 0, 0);
INSERT INTO `character_reputation` VALUES (4, 70, 0, 3);
INSERT INTO `character_reputation` VALUES (4, 369, 10, 1);
INSERT INTO `character_reputation` VALUES (4, 471, 0, 22);
INSERT INTO `character_reputation` VALUES (4, 470, 20, 1);
INSERT INTO `character_reputation` VALUES (4, 169, 0, 8);
INSERT INTO `character_reputation` VALUES (4, 469, 0, 14);
INSERT INTO `character_reputation` VALUES (4, 67, 0, 9);
INSERT INTO `character_reputation` VALUES (4, 529, 0, 1);
INSERT INTO `character_reputation` VALUES (4, 76, 650, 17);
INSERT INTO `character_reputation` VALUES (4, 530, 100, 17);
INSERT INTO `character_reputation` VALUES (4, 81, 0, 17);
INSERT INTO `character_reputation` VALUES (4, 68, 10315, 17);
INSERT INTO `character_reputation` VALUES (4, 54, 0, 6);
INSERT INTO `character_reputation` VALUES (4, 72, 0, 6);
INSERT INTO `character_reputation` VALUES (4, 47, 0, 6);
INSERT INTO `character_reputation` VALUES (4, 69, 0, 6);
INSERT INTO `character_reputation` VALUES (4, 86, 0, 4);
INSERT INTO `character_reputation` VALUES (4, 83, 0, 4);
INSERT INTO `character_reputation` VALUES (4, 549, 0, 4);
INSERT INTO `character_reputation` VALUES (4, 551, 0, 4);
INSERT INTO `character_reputation` VALUES (4, 550, 0, 4);
INSERT INTO `character_reputation` VALUES (4, 589, 0, 6);
INSERT INTO `character_reputation` VALUES (4, 577, 10, 1);
INSERT INTO `character_reputation` VALUES (4, 46, 0, 4);
INSERT INTO `character_reputation` VALUES (4, 289, 0, 4);
INSERT INTO `character_reputation` VALUES (4, 570, 0, 4);
INSERT INTO `character_reputation` VALUES (4, 571, 0, 4);
INSERT INTO `character_reputation` VALUES (4, 569, 0, 4);
INSERT INTO `character_reputation` VALUES (4, 574, 0, 4);
INSERT INTO `character_reputation` VALUES (4, 576, 0, 2);
INSERT INTO `character_reputation` VALUES (4, 609, 0, 0);
INSERT INTO `character_reputation` VALUES (4, 629, 0, 0);
INSERT INTO `character_reputation` VALUES (4, 630, 0, 0);
INSERT INTO `character_reputation` VALUES (4, 709, 0, 20);
INSERT INTO `character_reputation` VALUES (4, 730, 0, 3);
INSERT INTO `character_reputation` VALUES (4, 729, 0, 17);
INSERT INTO `character_reputation` VALUES (4, 749, 0, 0);
INSERT INTO `character_reputation` VALUES (4, 789, 0, 16);
INSERT INTO `character_reputation` VALUES (4, 809, 0, 16);
INSERT INTO `character_reputation` VALUES (4, 890, 0, 6);
INSERT INTO `character_reputation` VALUES (4, 889, 1175, 17);
INSERT INTO `character_reputation` VALUES (4, 891, 0, 14);
INSERT INTO `character_reputation` VALUES (4, 892, 0, 24);
INSERT INTO `character_reputation` VALUES (4, 909, 0, 16);
INSERT INTO `character_reputation` VALUES (4, 270, 0, 16);
INSERT INTO `character_reputation` VALUES (4, 510, 1600, 17);
INSERT INTO `character_reputation` VALUES (4, 509, 0, 2);
INSERT INTO `character_reputation` VALUES (4, 910, 0, 2);
INSERT INTO `character_reputation` VALUES (5, 87, 0, 2);
INSERT INTO `character_reputation` VALUES (5, 21, 0, 0);
INSERT INTO `character_reputation` VALUES (5, 92, 0, 2);
INSERT INTO `character_reputation` VALUES (5, 93, 0, 2);
INSERT INTO `character_reputation` VALUES (5, 59, 0, 16);
INSERT INTO `character_reputation` VALUES (5, 349, 0, 0);
INSERT INTO `character_reputation` VALUES (5, 70, 0, 2);
INSERT INTO `character_reputation` VALUES (5, 369, 0, 0);
INSERT INTO `character_reputation` VALUES (5, 471, 0, 22);
INSERT INTO `character_reputation` VALUES (5, 470, 0, 0);
INSERT INTO `character_reputation` VALUES (5, 169, 0, 8);
INSERT INTO `character_reputation` VALUES (5, 469, 0, 14);
INSERT INTO `character_reputation` VALUES (5, 67, 0, 9);
INSERT INTO `character_reputation` VALUES (5, 529, 0, 0);
INSERT INTO `character_reputation` VALUES (5, 76, 0, 17);
INSERT INTO `character_reputation` VALUES (5, 530, 0, 17);
INSERT INTO `character_reputation` VALUES (5, 81, 0, 17);
INSERT INTO `character_reputation` VALUES (5, 68, 50, 17);
INSERT INTO `character_reputation` VALUES (5, 54, 0, 6);
INSERT INTO `character_reputation` VALUES (5, 72, 0, 6);
INSERT INTO `character_reputation` VALUES (5, 47, 0, 6);
INSERT INTO `character_reputation` VALUES (5, 69, 0, 6);
INSERT INTO `character_reputation` VALUES (5, 86, 0, 4);
INSERT INTO `character_reputation` VALUES (5, 83, 0, 4);
INSERT INTO `character_reputation` VALUES (5, 549, 0, 4);
INSERT INTO `character_reputation` VALUES (5, 551, 0, 4);
INSERT INTO `character_reputation` VALUES (5, 550, 0, 4);
INSERT INTO `character_reputation` VALUES (5, 589, 0, 6);
INSERT INTO `character_reputation` VALUES (5, 577, 0, 0);
INSERT INTO `character_reputation` VALUES (5, 46, 0, 4);
INSERT INTO `character_reputation` VALUES (5, 289, 0, 4);
INSERT INTO `character_reputation` VALUES (5, 570, 0, 4);
INSERT INTO `character_reputation` VALUES (5, 571, 0, 4);
INSERT INTO `character_reputation` VALUES (5, 569, 0, 4);
INSERT INTO `character_reputation` VALUES (5, 574, 0, 4);
INSERT INTO `character_reputation` VALUES (5, 576, 0, 2);
INSERT INTO `character_reputation` VALUES (5, 609, 0, 0);
INSERT INTO `character_reputation` VALUES (5, 629, 0, 0);
INSERT INTO `character_reputation` VALUES (5, 630, 0, 0);
INSERT INTO `character_reputation` VALUES (5, 709, 0, 20);
INSERT INTO `character_reputation` VALUES (5, 730, 0, 2);
INSERT INTO `character_reputation` VALUES (5, 729, 0, 16);
INSERT INTO `character_reputation` VALUES (5, 749, 0, 0);
INSERT INTO `character_reputation` VALUES (5, 789, 0, 16);
INSERT INTO `character_reputation` VALUES (5, 809, 0, 16);
INSERT INTO `character_reputation` VALUES (5, 890, 0, 6);
INSERT INTO `character_reputation` VALUES (5, 889, 0, 16);
INSERT INTO `character_reputation` VALUES (5, 891, 0, 14);
INSERT INTO `character_reputation` VALUES (5, 892, 0, 24);
INSERT INTO `character_reputation` VALUES (5, 909, 0, 16);
INSERT INTO `character_reputation` VALUES (5, 270, 0, 16);
INSERT INTO `character_reputation` VALUES (5, 510, 0, 16);
INSERT INTO `character_reputation` VALUES (5, 509, 0, 2);
INSERT INTO `character_reputation` VALUES (5, 910, 0, 2);

-- ----------------------------
-- Table structure for character_skills
-- ----------------------------
DROP TABLE IF EXISTS `character_skills`;
CREATE TABLE `character_skills`  (
  `guid` int(11) UNSIGNED NOT NULL COMMENT 'Global Unique Identifier',
  `skill` mediumint(9) UNSIGNED NOT NULL,
  `value` mediumint(9) UNSIGNED NOT NULL,
  `max` mediumint(9) UNSIGNED NOT NULL,
  PRIMARY KEY (`guid`, `skill`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Player System' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of character_skills
-- ----------------------------
INSERT INTO `character_skills` VALUES (1, 162, 300, 300);
INSERT INTO `character_skills` VALUES (1, 26, 1, 1);
INSERT INTO `character_skills` VALUES (1, 95, 300, 300);
INSERT INTO `character_skills` VALUES (1, 44, 300, 300);
INSERT INTO `character_skills` VALUES (1, 172, 300, 300);
INSERT INTO `character_skills` VALUES (1, 43, 300, 300);
INSERT INTO `character_skills` VALUES (1, 414, 1, 1);
INSERT INTO `character_skills` VALUES (1, 109, 300, 300);
INSERT INTO `character_skills` VALUES (1, 413, 1, 1);
INSERT INTO `character_skills` VALUES (1, 415, 1, 1);
INSERT INTO `character_skills` VALUES (1, 433, 1, 1);
INSERT INTO `character_skills` VALUES (1, 473, 1, 1);
INSERT INTO `character_skills` VALUES (1, 176, 300, 300);
INSERT INTO `character_skills` VALUES (1, 136, 300, 300);
INSERT INTO `character_skills` VALUES (1, 55, 300, 300);
INSERT INTO `character_skills` VALUES (1, 54, 300, 300);
INSERT INTO `character_skills` VALUES (1, 45, 300, 300);
INSERT INTO `character_skills` VALUES (1, 173, 300, 300);
INSERT INTO `character_skills` VALUES (1, 226, 300, 300);
INSERT INTO `character_skills` VALUES (1, 98, 300, 300);
INSERT INTO `character_skills` VALUES (1, 293, 1, 1);
INSERT INTO `character_skills` VALUES (1, 118, 1, 300);
INSERT INTO `character_skills` VALUES (2, 173, 300, 300);
INSERT INTO `character_skills` VALUES (2, 253, 1, 1);
INSERT INTO `character_skills` VALUES (2, 414, 1, 1);
INSERT INTO `character_skills` VALUES (2, 113, 300, 300);
INSERT INTO `character_skills` VALUES (2, 98, 300, 300);
INSERT INTO `character_skills` VALUES (2, 162, 300, 300);
INSERT INTO `character_skills` VALUES (2, 95, 300, 300);
INSERT INTO `character_skills` VALUES (1, 762, 150, 150);
INSERT INTO `character_skills` VALUES (1, 333, 300, 300);
INSERT INTO `character_skills` VALUES (1, 160, 300, 300);
INSERT INTO `character_skills` VALUES (2, 40, 300, 300);
INSERT INTO `character_skills` VALUES (2, 633, 300, 300);
INSERT INTO `character_skills` VALUES (2, 118, 1, 300);
INSERT INTO `character_skills` VALUES (2, 43, 300, 300);
INSERT INTO `character_skills` VALUES (2, 473, 1, 1);
INSERT INTO `character_skills` VALUES (2, 45, 300, 300);
INSERT INTO `character_skills` VALUES (2, 226, 300, 300);
INSERT INTO `character_skills` VALUES (2, 415, 1, 1);
INSERT INTO `character_skills` VALUES (2, 176, 300, 300);
INSERT INTO `character_skills` VALUES (2, 38, 1, 1);
INSERT INTO `character_skills` VALUES (2, 762, 150, 150);
INSERT INTO `character_skills` VALUES (3, 95, 300, 300);
INSERT INTO `character_skills` VALUES (3, 415, 1, 1);
INSERT INTO `character_skills` VALUES (3, 136, 300, 300);
INSERT INTO `character_skills` VALUES (3, 8, 1, 1);
INSERT INTO `character_skills` VALUES (3, 6, 1, 1);
INSERT INTO `character_skills` VALUES (3, 98, 300, 300);
INSERT INTO `character_skills` VALUES (3, 162, 300, 300);
INSERT INTO `character_skills` VALUES (3, 228, 300, 300);
INSERT INTO `character_skills` VALUES (3, 673, 300, 300);
INSERT INTO `character_skills` VALUES (3, 315, 300, 300);
INSERT INTO `character_skills` VALUES (3, 313, 300, 300);
INSERT INTO `character_skills` VALUES (3, 141, 300, 300);
INSERT INTO `character_skills` VALUES (3, 140, 300, 300);
INSERT INTO `character_skills` VALUES (3, 139, 300, 300);
INSERT INTO `character_skills` VALUES (3, 138, 300, 300);
INSERT INTO `character_skills` VALUES (3, 137, 300, 300);
INSERT INTO `character_skills` VALUES (3, 111, 300, 300);
INSERT INTO `character_skills` VALUES (3, 113, 300, 300);
INSERT INTO `character_skills` VALUES (3, 115, 300, 300);
INSERT INTO `character_skills` VALUES (3, 109, 300, 300);
INSERT INTO `character_skills` VALUES (3, 762, 150, 150);
INSERT INTO `character_skills` VALUES (4, 95, 155, 155);
INSERT INTO `character_skills` VALUES (4, 673, 300, 300);
INSERT INTO `character_skills` VALUES (4, 415, 1, 1);
INSERT INTO `character_skills` VALUES (4, 8, 1, 1);
INSERT INTO `character_skills` VALUES (4, 136, 134, 155);
INSERT INTO `character_skills` VALUES (4, 6, 1, 1);
INSERT INTO `character_skills` VALUES (4, 162, 123, 155);
INSERT INTO `character_skills` VALUES (4, 109, 300, 300);
INSERT INTO `character_skills` VALUES (4, 228, 145, 155);
INSERT INTO `character_skills` VALUES (4, 333, 102, 150);
INSERT INTO `character_skills` VALUES (4, 129, 220, 225);
INSERT INTO `character_skills` VALUES (4, 197, 111, 150);
INSERT INTO `character_skills` VALUES (4, 185, 44, 75);
INSERT INTO `character_skills` VALUES (4, 356, 1, 75);
INSERT INTO `character_skills` VALUES (4, 173, 1, 155);
INSERT INTO `character_skills` VALUES (4, 43, 136, 155);
INSERT INTO `character_skills` VALUES (5, 95, 5, 5);
INSERT INTO `character_skills` VALUES (5, 673, 300, 300);
INSERT INTO `character_skills` VALUES (5, 415, 1, 1);
INSERT INTO `character_skills` VALUES (5, 8, 1, 1);
INSERT INTO `character_skills` VALUES (5, 136, 2, 5);
INSERT INTO `character_skills` VALUES (5, 6, 1, 1);
INSERT INTO `character_skills` VALUES (5, 162, 1, 5);
INSERT INTO `character_skills` VALUES (5, 109, 300, 300);
INSERT INTO `character_skills` VALUES (5, 228, 1, 5);

-- ----------------------------
-- Table structure for character_social
-- ----------------------------
DROP TABLE IF EXISTS `character_social`;
CREATE TABLE `character_social`  (
  `guid` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Character Global Unique Identifier',
  `friend` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Friend Global Unique Identifier',
  `flags` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Friend Flags',
  PRIMARY KEY (`guid`, `friend`, `flags`) USING BTREE,
  INDEX `idx_guid`(`guid`) USING BTREE,
  INDEX `idx_friend`(`friend`) USING BTREE,
  INDEX `idx_guid_flags`(`guid`, `flags`) USING BTREE,
  INDEX `idx_friend_flags`(`friend`, `flags`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Player System' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of character_social
-- ----------------------------

-- ----------------------------
-- Table structure for character_spell
-- ----------------------------
DROP TABLE IF EXISTS `character_spell`;
CREATE TABLE `character_spell`  (
  `guid` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier',
  `spell` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Spell Identifier',
  `active` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `disabled` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`, `spell`) USING BTREE,
  INDEX `idx_spell`(`spell`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Player System' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of character_spell
-- ----------------------------
INSERT INTO `character_spell` VALUES (1, 12666, 1, 0);
INSERT INTO `character_spell` VALUES (1, 2565, 1, 0);
INSERT INTO `character_spell` VALUES (1, 12659, 1, 0);
INSERT INTO `character_spell` VALUES (1, 12867, 1, 0);
INSERT INTO `character_spell` VALUES (1, 20496, 1, 0);
INSERT INTO `character_spell` VALUES (1, 12295, 1, 0);
INSERT INTO `character_spell` VALUES (1, 12664, 1, 0);
INSERT INTO `character_spell` VALUES (1, 2687, 1, 0);
INSERT INTO `character_spell` VALUES (1, 20569, 1, 0);
INSERT INTO `character_spell` VALUES (1, 20505, 1, 0);
INSERT INTO `character_spell` VALUES (1, 11585, 1, 0);
INSERT INTO `character_spell` VALUES (1, 20503, 1, 0);
INSERT INTO `character_spell` VALUES (1, 16492, 1, 0);
INSERT INTO `character_spell` VALUES (1, 13048, 1, 0);
INSERT INTO `character_spell` VALUES (1, 12856, 1, 0);
INSERT INTO `character_spell` VALUES (1, 23588, 1, 0);
INSERT INTO `character_spell` VALUES (1, 13002, 1, 0);
INSERT INTO `character_spell` VALUES (1, 12323, 1, 0);
INSERT INTO `character_spell` VALUES (1, 12328, 1, 0);
INSERT INTO `character_spell` VALUES (1, 12974, 1, 0);
INSERT INTO `character_spell` VALUES (1, 1719, 1, 0);
INSERT INTO `character_spell` VALUES (1, 20230, 1, 0);
INSERT INTO `character_spell` VALUES (1, 11601, 1, 0);
INSERT INTO `character_spell` VALUES (1, 676, 1, 0);
INSERT INTO `character_spell` VALUES (1, 11578, 1, 0);
INSERT INTO `character_spell` VALUES (1, 7373, 1, 0);
INSERT INTO `character_spell` VALUES (1, 11567, 1, 0);
INSERT INTO `character_spell` VALUES (1, 20560, 1, 0);
INSERT INTO `character_spell` VALUES (1, 11581, 1, 0);
INSERT INTO `character_spell` VALUES (1, 11574, 1, 0);
INSERT INTO `character_spell` VALUES (1, 3127, 1, 0);
INSERT INTO `character_spell` VALUES (1, 674, 1, 0);
INSERT INTO `character_spell` VALUES (1, 5246, 1, 0);
INSERT INTO `character_spell` VALUES (1, 1161, 1, 0);
INSERT INTO `character_spell` VALUES (1, 18499, 1, 0);
INSERT INTO `character_spell` VALUES (1, 1680, 1, 0);
INSERT INTO `character_spell` VALUES (1, 11551, 1, 0);
INSERT INTO `character_spell` VALUES (1, 11556, 1, 0);
INSERT INTO `character_spell` VALUES (1, 11605, 1, 0);
INSERT INTO `character_spell` VALUES (1, 20662, 1, 0);
INSERT INTO `character_spell` VALUES (1, 6554, 1, 0);
INSERT INTO `character_spell` VALUES (1, 23894, 1, 0);
INSERT INTO `character_spell` VALUES (1, 355, 1, 0);
INSERT INTO `character_spell` VALUES (1, 750, 1, 0);
INSERT INTO `character_spell` VALUES (1, 2458, 1, 0);
INSERT INTO `character_spell` VALUES (1, 71, 1, 0);
INSERT INTO `character_spell` VALUES (1, 20617, 1, 0);
INSERT INTO `character_spell` VALUES (1, 871, 1, 0);
INSERT INTO `character_spell` VALUES (1, 1672, 1, 0);
INSERT INTO `character_spell` VALUES (1, 11597, 1, 0);
INSERT INTO `character_spell` VALUES (1, 1180, 1, 0);
INSERT INTO `character_spell` VALUES (1, 5011, 1, 0);
INSERT INTO `character_spell` VALUES (1, 202, 1, 0);
INSERT INTO `character_spell` VALUES (1, 264, 1, 0);
INSERT INTO `character_spell` VALUES (1, 227, 1, 0);
INSERT INTO `character_spell` VALUES (1, 2567, 1, 0);
INSERT INTO `character_spell` VALUES (1, 15590, 1, 0);
INSERT INTO `character_spell` VALUES (1, 198, 1, 0);
INSERT INTO `character_spell` VALUES (1, 199, 1, 0);
INSERT INTO `character_spell` VALUES (1, 668, 1, 0);
INSERT INTO `character_spell` VALUES (1, 20032, 1, 0);
INSERT INTO `character_spell` VALUES (1, 13920, 1, 0);
INSERT INTO `character_spell` VALUES (1, 20033, 1, 0);
INSERT INTO `character_spell` VALUES (1, 33391, 1, 0);
INSERT INTO `character_spell` VALUES (2, 1857, 1, 0);
INSERT INTO `character_spell` VALUES (2, 13964, 1, 0);
INSERT INTO `character_spell` VALUES (2, 264, 1, 0);
INSERT INTO `character_spell` VALUES (2, 1804, 1, 0);
INSERT INTO `character_spell` VALUES (2, 2094, 1, 0);
INSERT INTO `character_spell` VALUES (2, 15590, 1, 0);
INSERT INTO `character_spell` VALUES (2, 1833, 1, 0);
INSERT INTO `character_spell` VALUES (2, 14137, 1, 0);
INSERT INTO `character_spell` VALUES (2, 5011, 1, 0);
INSERT INTO `character_spell` VALUES (2, 201, 1, 0);
INSERT INTO `character_spell` VALUES (2, 6774, 1, 0);
INSERT INTO `character_spell` VALUES (2, 8643, 1, 0);
INSERT INTO `character_spell` VALUES (2, 11290, 1, 0);
INSERT INTO `character_spell` VALUES (2, 11300, 1, 0);
INSERT INTO `character_spell` VALUES (2, 11303, 1, 0);
INSERT INTO `character_spell` VALUES (2, 11198, 1, 0);
INSERT INTO `character_spell` VALUES (2, 11269, 1, 0);
INSERT INTO `character_spell` VALUES (2, 11275, 1, 0);
INSERT INTO `character_spell` VALUES (2, 5277, 1, 0);
INSERT INTO `character_spell` VALUES (2, 13852, 1, 0);
INSERT INTO `character_spell` VALUES (2, 13845, 1, 0);
INSERT INTO `character_spell` VALUES (2, 11294, 1, 0);
INSERT INTO `character_spell` VALUES (2, 1769, 1, 0);
INSERT INTO `character_spell` VALUES (2, 11305, 1, 0);
INSERT INTO `character_spell` VALUES (2, 11281, 1, 0);
INSERT INTO `character_spell` VALUES (2, 11286, 1, 0);
INSERT INTO `character_spell` VALUES (2, 3127, 1, 0);
INSERT INTO `character_spell` VALUES (2, 674, 1, 0);
INSERT INTO `character_spell` VALUES (2, 13877, 1, 0);
INSERT INTO `character_spell` VALUES (2, 2842, 1, 0);
INSERT INTO `character_spell` VALUES (2, 6510, 1, 0);
INSERT INTO `character_spell` VALUES (2, 14161, 1, 0);
INSERT INTO `character_spell` VALUES (2, 3421, 1, 0);
INSERT INTO `character_spell` VALUES (2, 11400, 1, 0);
INSERT INTO `character_spell` VALUES (2, 11358, 1, 0);
INSERT INTO `character_spell` VALUES (2, 13230, 1, 0);
INSERT INTO `character_spell` VALUES (2, 11343, 1, 0);
INSERT INTO `character_spell` VALUES (2, 921, 1, 0);
INSERT INTO `character_spell` VALUES (2, 1725, 1, 0);
INSERT INTO `character_spell` VALUES (2, 2836, 1, 0);
INSERT INTO `character_spell` VALUES (2, 1842, 1, 0);
INSERT INTO `character_spell` VALUES (2, 1860, 1, 0);
INSERT INTO `character_spell` VALUES (2, 11297, 1, 0);
INSERT INTO `character_spell` VALUES (2, 1787, 1, 0);
INSERT INTO `character_spell` VALUES (2, 13863, 1, 0);
INSERT INTO `character_spell` VALUES (2, 13791, 1, 0);
INSERT INTO `character_spell` VALUES (2, 13856, 1, 0);
INSERT INTO `character_spell` VALUES (2, 14251, 1, 0);
INSERT INTO `character_spell` VALUES (2, 30920, 1, 0);
INSERT INTO `character_spell` VALUES (2, 18429, 1, 0);
INSERT INTO `character_spell` VALUES (2, 13750, 1, 0);
INSERT INTO `character_spell` VALUES (2, 14142, 1, 0);
INSERT INTO `character_spell` VALUES (2, 14159, 1, 0);
INSERT INTO `character_spell` VALUES (2, 14179, 1, 0);
INSERT INTO `character_spell` VALUES (2, 33391, 1, 0);
INSERT INTO `character_spell` VALUES (3, 5, 1, 0);
INSERT INTO `character_spell` VALUES (3, 26644, 1, 0);
INSERT INTO `character_spell` VALUES (3, 7, 1, 0);
INSERT INTO `character_spell` VALUES (3, 1852, 1, 0);
INSERT INTO `character_spell` VALUES (3, 9454, 1, 0);
INSERT INTO `character_spell` VALUES (3, 24347, 1, 0);
INSERT INTO `character_spell` VALUES (3, 15712, 1, 0);
INSERT INTO `character_spell` VALUES (3, 23452, 1, 0);
INSERT INTO `character_spell` VALUES (3, 17533, 1, 0);
INSERT INTO `character_spell` VALUES (3, 29230, 1, 0);
INSERT INTO `character_spell` VALUES (3, 26662, 1, 0);
INSERT INTO `character_spell` VALUES (3, 671, 1, 0);
INSERT INTO `character_spell` VALUES (3, 670, 1, 0);
INSERT INTO `character_spell` VALUES (3, 7340, 1, 0);
INSERT INTO `character_spell` VALUES (3, 669, 1, 0);
INSERT INTO `character_spell` VALUES (3, 814, 1, 0);
INSERT INTO `character_spell` VALUES (3, 816, 1, 0);
INSERT INTO `character_spell` VALUES (3, 17737, 1, 0);
INSERT INTO `character_spell` VALUES (3, 7341, 1, 0);
INSERT INTO `character_spell` VALUES (3, 817, 1, 0);
INSERT INTO `character_spell` VALUES (3, 672, 1, 0);
INSERT INTO `character_spell` VALUES (3, 815, 1, 0);
INSERT INTO `character_spell` VALUES (3, 813, 1, 0);
INSERT INTO `character_spell` VALUES (3, 18389, 1, 0);
INSERT INTO `character_spell` VALUES (3, 2763, 1, 0);
INSERT INTO `character_spell` VALUES (3, 1302, 1, 0);
INSERT INTO `character_spell` VALUES (3, 24341, 1, 0);
INSERT INTO `character_spell` VALUES (3, 8295, 1, 0);
INSERT INTO `character_spell` VALUES (3, 265, 1, 0);
INSERT INTO `character_spell` VALUES (3, 11821, 1, 0);
INSERT INTO `character_spell` VALUES (3, 30879, 1, 0);
INSERT INTO `character_spell` VALUES (3, 8358, 1, 0);
INSERT INTO `character_spell` VALUES (3, 7482, 1, 0);
INSERT INTO `character_spell` VALUES (3, 10073, 1, 0);
INSERT INTO `character_spell` VALUES (3, 18390, 1, 0);
INSERT INTO `character_spell` VALUES (3, 19901, 1, 0);
INSERT INTO `character_spell` VALUES (3, 27254, 1, 0);
INSERT INTO `character_spell` VALUES (3, 33391, 1, 0);
INSERT INTO `character_spell` VALUES (3, 27255, 1, 0);
INSERT INTO `character_spell` VALUES (3, 27258, 1, 0);
INSERT INTO `character_spell` VALUES (3, 27261, 1, 0);
INSERT INTO `character_spell` VALUES (3, 25059, 1, 0);
INSERT INTO `character_spell` VALUES (3, 26666, 1, 0);
INSERT INTO `character_spell` VALUES (3, 456, 1, 0);
INSERT INTO `character_spell` VALUES (3, 2765, 1, 0);
INSERT INTO `character_spell` VALUES (3, 1509, 1, 0);
INSERT INTO `character_spell` VALUES (3, 18139, 1, 0);
INSERT INTO `character_spell` VALUES (3, 6147, 1, 0);
INSERT INTO `character_spell` VALUES (3, 20114, 1, 0);
INSERT INTO `character_spell` VALUES (3, 20115, 1, 0);
INSERT INTO `character_spell` VALUES (3, 29313, 1, 0);
INSERT INTO `character_spell` VALUES (3, 31366, 1, 0);
INSERT INTO `character_spell` VALUES (3, 1908, 1, 0);
INSERT INTO `character_spell` VALUES (3, 23965, 1, 0);
INSERT INTO `character_spell` VALUES (3, 33392, 1, 0);
INSERT INTO `character_spell` VALUES (4, 8401, 1, 0);
INSERT INTO `character_spell` VALUES (4, 6143, 1, 0);
INSERT INTO `character_spell` VALUES (4, 8455, 1, 0);
INSERT INTO `character_spell` VALUES (4, 7457, 1, 0);
INSERT INTO `character_spell` VALUES (4, 7924, 1, 0);
INSERT INTO `character_spell` VALUES (4, 2855, 1, 0);
INSERT INTO `character_spell` VALUES (4, 3909, 1, 0);
INSERT INTO `character_spell` VALUES (4, 2393, 1, 0);
INSERT INTO `character_spell` VALUES (4, 6127, 1, 0);
INSERT INTO `character_spell` VALUES (4, 3563, 1, 0);
INSERT INTO `character_spell` VALUES (4, 14293, 1, 0);
INSERT INTO `character_spell` VALUES (4, 1461, 1, 0);
INSERT INTO `character_spell` VALUES (4, 7620, 1, 0);
INSERT INTO `character_spell` VALUES (4, 2550, 1, 0);
INSERT INTO `character_spell` VALUES (4, 2539, 1, 0);
INSERT INTO `character_spell` VALUES (4, 12360, 1, 0);
INSERT INTO `character_spell` VALUES (4, 3276, 1, 0);
INSERT INTO `character_spell` VALUES (4, 759, 1, 0);
INSERT INTO `character_spell` VALUES (4, 865, 1, 0);
INSERT INTO `character_spell` VALUES (4, 130, 1, 0);
INSERT INTO `character_spell` VALUES (4, 2139, 1, 0);
INSERT INTO `character_spell` VALUES (4, 12848, 1, 0);
INSERT INTO `character_spell` VALUES (4, 7788, 1, 0);
INSERT INTO `character_spell` VALUES (4, 7934, 1, 0);
INSERT INTO `character_spell` VALUES (4, 3277, 1, 0);
INSERT INTO `character_spell` VALUES (4, 7420, 1, 0);
INSERT INTO `character_spell` VALUES (4, 2385, 1, 0);
INSERT INTO `character_spell` VALUES (4, 8776, 1, 0);
INSERT INTO `character_spell` VALUES (4, 12045, 1, 0);
INSERT INTO `character_spell` VALUES (4, 8457, 1, 0);
INSERT INTO `character_spell` VALUES (4, 7624, 1, 0);
INSERT INTO `character_spell` VALUES (4, 3914, 1, 0);
INSERT INTO `character_spell` VALUES (4, 7623, 1, 0);
INSERT INTO `character_spell` VALUES (4, 3840, 1, 0);
INSERT INTO `character_spell` VALUES (4, 2389, 1, 0);
INSERT INTO `character_spell` VALUES (4, 2392, 1, 0);
INSERT INTO `character_spell` VALUES (4, 2394, 1, 0);
INSERT INTO `character_spell` VALUES (4, 8465, 1, 0);
INSERT INTO `character_spell` VALUES (4, 3841, 1, 0);
INSERT INTO `character_spell` VALUES (4, 3842, 1, 0);
INSERT INTO `character_spell` VALUES (4, 3755, 1, 0);
INSERT INTO `character_spell` VALUES (4, 2397, 1, 0);
INSERT INTO `character_spell` VALUES (4, 7426, 1, 0);
INSERT INTO `character_spell` VALUES (4, 2386, 1, 0);
INSERT INTO `character_spell` VALUES (4, 7629, 1, 0);
INSERT INTO `character_spell` VALUES (4, 2396, 1, 0);
INSERT INTO `character_spell` VALUES (4, 2395, 1, 0);
INSERT INTO `character_spell` VALUES (4, 7443, 1, 0);
INSERT INTO `character_spell` VALUES (4, 475, 1, 0);
INSERT INTO `character_spell` VALUES (4, 3278, 1, 0);
INSERT INTO `character_spell` VALUES (4, 7454, 1, 0);
INSERT INTO `character_spell` VALUES (4, 7301, 1, 0);
INSERT INTO `character_spell` VALUES (4, 990, 1, 0);
INSERT INTO `character_spell` VALUES (4, 1953, 1, 0);
INSERT INTO `character_spell` VALUES (4, 12824, 1, 0);
INSERT INTO `character_spell` VALUES (4, 12051, 1, 0);
INSERT INTO `character_spell` VALUES (4, 8494, 1, 0);
INSERT INTO `character_spell` VALUES (4, 120, 1, 0);
INSERT INTO `character_spell` VALUES (4, 12350, 1, 0);
INSERT INTO `character_spell` VALUES (4, 2402, 1, 0);
INSERT INTO `character_spell` VALUES (4, 12046, 1, 0);
INSERT INTO `character_spell` VALUES (4, 2964, 1, 0);
INSERT INTO `character_spell` VALUES (4, 18459, 1, 0);
INSERT INTO `character_spell` VALUES (4, 3757, 1, 0);
INSERT INTO `character_spell` VALUES (4, 3845, 1, 0);
INSERT INTO `character_spell` VALUES (4, 12873, 1, 0);
INSERT INTO `character_spell` VALUES (4, 7412, 1, 0);
INSERT INTO `character_spell` VALUES (4, 7748, 1, 0);
INSERT INTO `character_spell` VALUES (4, 7771, 1, 0);
INSERT INTO `character_spell` VALUES (4, 14807, 1, 0);
INSERT INTO `character_spell` VALUES (4, 7779, 1, 0);
INSERT INTO `character_spell` VALUES (4, 8450, 1, 0);
INSERT INTO `character_spell` VALUES (4, 7928, 1, 0);
INSERT INTO `character_spell` VALUES (4, 2121, 1, 0);
INSERT INTO `character_spell` VALUES (4, 2406, 1, 0);
INSERT INTO `character_spell` VALUES (4, 3843, 1, 0);
INSERT INTO `character_spell` VALUES (4, 2399, 1, 0);
INSERT INTO `character_spell` VALUES (4, 6521, 1, 0);
INSERT INTO `character_spell` VALUES (4, 2401, 1, 0);
INSERT INTO `character_spell` VALUES (4, 3847, 1, 0);
INSERT INTO `character_spell` VALUES (4, 8406, 1, 0);
INSERT INTO `character_spell` VALUES (4, 29075, 1, 0);
INSERT INTO `character_spell` VALUES (4, 11115, 1, 0);
INSERT INTO `character_spell` VALUES (4, 5145, 1, 0);
INSERT INTO `character_spell` VALUES (4, 7302, 1, 0);
INSERT INTO `character_spell` VALUES (4, 8438, 1, 0);
INSERT INTO `character_spell` VALUES (4, 6141, 1, 0);
INSERT INTO `character_spell` VALUES (4, 8444, 1, 0);
INSERT INTO `character_spell` VALUES (4, 8412, 1, 0);
INSERT INTO `character_spell` VALUES (4, 12522, 1, 0);
INSERT INTO `character_spell` VALUES (4, 7929, 1, 0);
INSERT INTO `character_spell` VALUES (4, 3866, 1, 0);
INSERT INTO `character_spell` VALUES (4, 3848, 1, 0);
INSERT INTO `character_spell` VALUES (4, 3850, 1, 0);
INSERT INTO `character_spell` VALUES (4, 8467, 1, 0);
INSERT INTO `character_spell` VALUES (4, 10840, 1, 0);
INSERT INTO `character_spell` VALUES (4, 7795, 1, 0);
INSERT INTO `character_spell` VALUES (4, 7745, 1, 0);

-- ----------------------------
-- Table structure for character_spell_cooldown
-- ----------------------------
DROP TABLE IF EXISTS `character_spell_cooldown`;
CREATE TABLE `character_spell_cooldown`  (
  `guid` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier, Low part',
  `spell` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Spell Identifier',
  `spell_expire_time` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Spell cooldown expire time',
  `category` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Spell category',
  `category_expire_time` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Spell category cooldown expire time',
  `item_id` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Item Identifier',
  PRIMARY KEY (`guid`, `spell`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = FIXED;

-- ----------------------------
-- Records of character_spell_cooldown
-- ----------------------------

-- ----------------------------
-- Table structure for character_stats
-- ----------------------------
DROP TABLE IF EXISTS `character_stats`;
CREATE TABLE `character_stats`  (
  `guid` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier, Low part',
  `max_health` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `max_power1` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `max_power2` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `max_power3` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `max_power4` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `max_power5` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `max_power6` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `max_power7` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `strength` float NOT NULL DEFAULT 0,
  `agility` float NOT NULL DEFAULT 0,
  `stamina` float NOT NULL DEFAULT 0,
  `intellect` float NOT NULL DEFAULT 0,
  `spirit` float NOT NULL DEFAULT 0,
  `armor` int(10) NOT NULL DEFAULT 0,
  `holy_res` int(10) NOT NULL DEFAULT 0,
  `fire_res` int(10) NOT NULL DEFAULT 0,
  `nature_res` int(10) NOT NULL DEFAULT 0,
  `frost_res` int(10) NOT NULL DEFAULT 0,
  `shadow_res` int(10) NOT NULL DEFAULT 0,
  `arcane_res` int(10) NOT NULL DEFAULT 0,
  `block_chance` float NOT NULL DEFAULT 0,
  `dodge_chance` float NOT NULL DEFAULT 0,
  `parry_chance` float NOT NULL DEFAULT 0,
  `crit_chance` float NOT NULL DEFAULT 0,
  `ranged_crit_chance` float NOT NULL DEFAULT 0,
  `attack_power` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ranged_attack_power` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = FIXED;

-- ----------------------------
-- Records of character_stats
-- ----------------------------

-- ----------------------------
-- Table structure for character_tutorial
-- ----------------------------
DROP TABLE IF EXISTS `character_tutorial`;
CREATE TABLE `character_tutorial`  (
  `account` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Account Identifier',
  `tut0` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `tut1` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `tut2` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `tut3` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `tut4` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `tut5` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `tut6` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `tut7` int(11) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`account`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Player System' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of character_tutorial
-- ----------------------------
INSERT INTO `character_tutorial` VALUES (1, 4294967295, 4294967295, 4294967295, 4294967295, 4294967295, 4294967295, 4294967295, 4294967295);
INSERT INTO `character_tutorial` VALUES (2, 4294967295, 4294967295, 4294967295, 4294967295, 4294967295, 4294967295, 4294967295, 4294967295);
INSERT INTO `character_tutorial` VALUES (3, 1048590, 512, 0, 0, 0, 0, 0, 0);

-- ----------------------------
-- Table structure for characters
-- ----------------------------
DROP TABLE IF EXISTS `characters`;
CREATE TABLE `characters`  (
  `guid` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier',
  `account` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Account Identifier',
  `name` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `race` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `class` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `gender` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `skin` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `face` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `hair_style` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `hair_color` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `facial_hair` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `level` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `xp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `money` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `player_flags` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `zone` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `map` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Map Identifier',
  `position_x` float NOT NULL DEFAULT 0,
  `position_y` float NOT NULL DEFAULT 0,
  `position_z` float NOT NULL DEFAULT 0,
  `orientation` float NOT NULL DEFAULT 0,
  `transport_guid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `transport_x` float NOT NULL DEFAULT 0,
  `transport_y` float NOT NULL DEFAULT 0,
  `transport_z` float NOT NULL DEFAULT 0,
  `transport_o` float NOT NULL DEFAULT 0,
  `known_taxi_mask` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'discovered flight points',
  `current_taxi_path` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'flight destination',
  `online` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `played_time_total` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `played_time_level` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `create_time` bigint(20) UNSIGNED NOT NULL,
  `logout_time` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `is_logout_resting` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `rest_bonus` float NOT NULL DEFAULT 0,
  `reset_talents_multiplier` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `reset_talents_time` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `death_expire_time` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `stable_slots` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `bank_bag_slots` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `at_login_flags` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `extra_flags` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `honor_rank_points` float NOT NULL DEFAULT 0,
  `honor_highest_rank` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `honor_standing` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `honor_last_week_hk` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `honor_last_week_cp` float NOT NULL DEFAULT 0,
  `honor_stored_hk` int(11) NOT NULL DEFAULT 0,
  `honor_stored_dk` int(11) NOT NULL DEFAULT 0,
  `watched_faction` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `drunk` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `health` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `power1` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `power2` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `power3` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `power4` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `power5` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `explored_zones` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `equipment_cache` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `ammo_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `action_bars` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `deleted_account` int(11) UNSIGNED NULL DEFAULT NULL,
  `deleted_name` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `deleted_time` bigint(20) NULL DEFAULT NULL,
  `world_phase_mask` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`guid`) USING BTREE,
  INDEX `idx_account`(`account`) USING BTREE,
  INDEX `idx_online`(`online`) USING BTREE,
  INDEX `idx_name`(`name`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Player System' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of characters
-- ----------------------------
INSERT INTO `characters` VALUES (1, 1, 'Repack', 2, 1, 1, 0, 0, 0, 0, 0, 60, 0, 7982089, 512, 22, 451, 16216.5, 16112.1, 69.4448, 2.3527, 0, 0, 0, 0, 0, '4194304 0 0 0 0 0 0 0 ', '', 0, 2956, 2936, 0, 1492803100, 0, 0, 0, 0, 0, 0, 0, 0, 2, 732499, 18, 0, 0, 0, 0, 0, 4294967295, 0, 17299, 0, 0, 0, 100, 0, '1 0 33554432 0 256 0 0 0 131072 0 0 0 0 0 0 0 0 8 0 0 0 0 8 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '21329 0 17782 0 21330 0 11840 0 21331 0 21598 0 21332 0 21333 0 21618 0 21581 0 12947 0 19384 0 19341 0 23041 0 23030 0 40001 1899 40001 1898 22811 0 40000 0 ', 12654, 0, NULL, NULL, NULL, 1);
INSERT INTO `characters` VALUES (2, 1, 'By', 4, 4, 0, 0, 0, 0, 0, 0, 60, 0, 997987789, 512, 616, 1, 4519.98, -3570.21, 982.339, 1.91693, 0, 0, 0, 0, 0, '100663296 0 0 0 0 0 0 0 ', '', 0, 1599, 1594, 0, 1588539759, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 4294967295, 0, 5483, 0, 0, 0, 100, 0, '0 0 0 1073741824 0 0 0 0 0 0 0 0 0 0 0 0 0 131072 0 2048 0 65536 2304 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '16908 0 23053 0 16832 0 6796 0 16905 0 16910 0 16909 0 16906 0 16911 0 16907 0 21596 0 19376 0 19406 0 18815 0 19398 0 18584 172359680 18583 40960000 22812 0 19160 0 ', 12654, 0, NULL, NULL, NULL, 1);
INSERT INTO `characters` VALUES (3, 1, 'Brotalnia', 1, 8, 0, 0, 0, 0, 0, 0, 60, 0, 0, 520, 876, 1, 16228.5, 16308.5, 29.2623, 5.47966, 0, 0, 0, 0, 0, '2 0 0 0 0 0 0 0 ', '', 0, 2492, 2483, 0, 1561306223, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 4294967295, 0, 1930, 3303, 0, 0, 100, 0, '0 0 0 536870912 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 8 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '12064 0 0 0 0 0 0 0 2586 0 0 0 0 0 11508 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 22630 0 0 0 5209 0 0 0 ', 0, 0, NULL, NULL, NULL, 1);
INSERT INTO `characters` VALUES (4, 2, 'Pantine', 5, 8, 1, 0, 0, 0, 0, 0, 31, 46819, 998999690, 2, 130, 0, 1287.8, 1206.79, 52.6141, 3.29532, 0, 0, 0, 0, 0, '4724224 272629760 32768 0 0 0 0 0 ', '', 1, 390852, 14581, 0, 1649372214, 0, 127.478, 1, 1621062384, 0, 0, 6, 0, 6, 0, 0, 0, 0, 1148, 0, 0, 0, 0, 763, 2229, 0, 0, 100, 0, '2144993281 2151691287 16777217 2147685256 4231173 524288 401409 12582848 4287710240 805306369 805306368 9438208 8388608 163577856 786432 32896 20971840 33555328 2147506178 18940289 124780608 536879104 438288472 536870912 0 3584 0 67117056 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '3732 0 12047 0 3748 0 2587 0 6324 242 6392 0 14404 0 6482 0 2032 0 1775 0 3760 0 3739 0 0 0 0 0 3749 783 6318 241 0 0 5250 0 0 0 4240 0 ', 0, 0, NULL, NULL, NULL, 1);
INSERT INTO `characters` VALUES (5, 3, 'Prueba', 5, 8, 1, 0, 0, 0, 0, 0, 1, 40, 0, 0, 85, 0, 1882.94, 1629.11, 94.4175, 4.64258, 0, 0, 0, 0, 0, '1024 0 0 0 0 0 0 0 ', '', 0, 364, 364, 0, 1624812461, 0, 0.00234375, 0, 0, 1624812683, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 4294967295, 0, 61, 225, 0, 0, 100, 0, '0 0 0 0 0 0 0 128 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 512 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0 0 0 0 0 0 6096 0 6140 0 0 0 1395 0 55 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 35 0 0 0 0 0 0 0 ', 0, 0, NULL, NULL, NULL, 1);

-- ----------------------------
-- Table structure for characters_guid_delete
-- ----------------------------
DROP TABLE IF EXISTS `characters_guid_delete`;
CREATE TABLE `characters_guid_delete`  (
  `guid` int(11) NULL DEFAULT NULL,
  UNIQUE INDEX `key_guid`(`guid`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = FIXED;

-- ----------------------------
-- Records of characters_guid_delete
-- ----------------------------

-- ----------------------------
-- Table structure for characters_item_delete
-- ----------------------------
DROP TABLE IF EXISTS `characters_item_delete`;
CREATE TABLE `characters_item_delete`  (
  `entry` int(11) NULL DEFAULT NULL,
  UNIQUE INDEX `key_entry`(`entry`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = FIXED;

-- ----------------------------
-- Records of characters_item_delete
-- ----------------------------

-- ----------------------------
-- Table structure for corpse
-- ----------------------------
DROP TABLE IF EXISTS `corpse`;
CREATE TABLE `corpse`  (
  `guid` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier',
  `player_guid` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Character Global Unique Identifier',
  `position_x` float NOT NULL DEFAULT 0,
  `position_y` float NOT NULL DEFAULT 0,
  `position_z` float NOT NULL DEFAULT 0,
  `orientation` float NOT NULL DEFAULT 0,
  `map` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Map Identifier',
  `time` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `corpse_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `instance` int(11) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`) USING BTREE,
  INDEX `idx_type`(`corpse_type`) USING BTREE,
  INDEX `idx_instance`(`instance`) USING BTREE,
  INDEX `idx_player`(`player_guid`) USING BTREE,
  INDEX `idx_time`(`time`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Death System' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of corpse
-- ----------------------------

-- ----------------------------
-- Table structure for creature_respawn
-- ----------------------------
DROP TABLE IF EXISTS `creature_respawn`;
CREATE TABLE `creature_respawn`  (
  `guid` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier',
  `respawn_time` bigint(20) NOT NULL DEFAULT 0,
  `instance` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `map` int(5) UNSIGNED NULL DEFAULT 0,
  PRIMARY KEY (`guid`, `instance`) USING BTREE,
  INDEX `idx_instance`(`instance`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Grid Loading System' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of creature_respawn
-- ----------------------------
INSERT INTO `creature_respawn` VALUES (151, 1649372227, 0, 0);
INSERT INTO `creature_respawn` VALUES (1644, 1649359308, 0, 0);
INSERT INTO `creature_respawn` VALUES (2097, 1649372224, 0, 0);
INSERT INTO `creature_respawn` VALUES (2098, 1649364057, 0, 0);
INSERT INTO `creature_respawn` VALUES (2275, 1649372441, 0, 0);
INSERT INTO `creature_respawn` VALUES (2289, 1649371967, 0, 0);
INSERT INTO `creature_respawn` VALUES (2292, 1649371784, 0, 0);
INSERT INTO `creature_respawn` VALUES (2293, 1649371741, 0, 0);
INSERT INTO `creature_respawn` VALUES (2294, 1649371724, 0, 0);
INSERT INTO `creature_respawn` VALUES (2299, 1649368550, 0, 0);
INSERT INTO `creature_respawn` VALUES (3163, 1649372080, 0, 0);
INSERT INTO `creature_respawn` VALUES (3216, 1649372194, 0, 0);
INSERT INTO `creature_respawn` VALUES (4508, 1649357264, 0, 0);
INSERT INTO `creature_respawn` VALUES (6007, 1649372490, 0, 0);
INSERT INTO `creature_respawn` VALUES (6050, 1649371784, 0, 0);
INSERT INTO `creature_respawn` VALUES (6051, 1649371816, 0, 0);
INSERT INTO `creature_respawn` VALUES (6056, 1649371814, 0, 0);
INSERT INTO `creature_respawn` VALUES (6057, 1649372482, 0, 0);
INSERT INTO `creature_respawn` VALUES (6076, 1649371698, 0, 0);
INSERT INTO `creature_respawn` VALUES (6306, 1649372057, 0, 0);
INSERT INTO `creature_respawn` VALUES (13966, 1649370846, 0, 1);
INSERT INTO `creature_respawn` VALUES (13971, 1649364001, 0, 1);
INSERT INTO `creature_respawn` VALUES (14774, 1649371426, 0, 0);
INSERT INTO `creature_respawn` VALUES (14883, 1649363355, 0, 0);
INSERT INTO `creature_respawn` VALUES (15445, 1649363244, 0, 0);
INSERT INTO `creature_respawn` VALUES (15457, 1649363261, 0, 0);
INSERT INTO `creature_respawn` VALUES (15614, 1649363208, 0, 0);
INSERT INTO `creature_respawn` VALUES (15661, 1649363426, 0, 0);
INSERT INTO `creature_respawn` VALUES (15664, 1649363350, 0, 0);
INSERT INTO `creature_respawn` VALUES (15678, 1649363279, 0, 0);
INSERT INTO `creature_respawn` VALUES (15929, 1649363283, 0, 0);
INSERT INTO `creature_respawn` VALUES (15940, 1649363395, 0, 0);
INSERT INTO `creature_respawn` VALUES (15944, 1649363405, 0, 0);
INSERT INTO `creature_respawn` VALUES (15975, 1649363489, 0, 0);
INSERT INTO `creature_respawn` VALUES (16011, 1649372338, 0, 0);
INSERT INTO `creature_respawn` VALUES (16093, 1649371827, 0, 0);
INSERT INTO `creature_respawn` VALUES (16152, 1649366234, 0, 0);
INSERT INTO `creature_respawn` VALUES (16312, 1649363191, 0, 0);
INSERT INTO `creature_respawn` VALUES (16335, 1649363154, 0, 0);
INSERT INTO `creature_respawn` VALUES (16383, 1649363304, 0, 0);
INSERT INTO `creature_respawn` VALUES (16386, 1649363342, 0, 0);
INSERT INTO `creature_respawn` VALUES (16458, 1649372332, 0, 0);
INSERT INTO `creature_respawn` VALUES (16574, 1649365276, 0, 0);
INSERT INTO `creature_respawn` VALUES (16728, 1649364230, 0, 0);
INSERT INTO `creature_respawn` VALUES (16729, 1649364832, 0, 0);
INSERT INTO `creature_respawn` VALUES (16752, 1649364795, 0, 0);
INSERT INTO `creature_respawn` VALUES (16766, 1649364907, 0, 0);
INSERT INTO `creature_respawn` VALUES (16787, 1649364913, 0, 0);
INSERT INTO `creature_respawn` VALUES (16797, 1649364758, 0, 0);
INSERT INTO `creature_respawn` VALUES (16799, 1649365510, 0, 0);
INSERT INTO `creature_respawn` VALUES (16800, 1649365504, 0, 0);
INSERT INTO `creature_respawn` VALUES (16806, 1649364747, 0, 0);
INSERT INTO `creature_respawn` VALUES (16808, 1649364745, 0, 0);
INSERT INTO `creature_respawn` VALUES (16815, 1649364123, 0, 0);
INSERT INTO `creature_respawn` VALUES (16816, 1649364079, 0, 0);
INSERT INTO `creature_respawn` VALUES (16837, 1649364910, 0, 0);
INSERT INTO `creature_respawn` VALUES (16848, 1649365483, 0, 0);
INSERT INTO `creature_respawn` VALUES (16859, 1649364206, 0, 0);
INSERT INTO `creature_respawn` VALUES (16860, 1649364163, 0, 0);
INSERT INTO `creature_respawn` VALUES (16861, 1649364189, 0, 0);
INSERT INTO `creature_respawn` VALUES (16862, 1649364101, 0, 0);
INSERT INTO `creature_respawn` VALUES (16865, 1649364172, 0, 0);
INSERT INTO `creature_respawn` VALUES (16866, 1649364150, 0, 0);
INSERT INTO `creature_respawn` VALUES (16867, 1649364525, 0, 0);
INSERT INTO `creature_respawn` VALUES (16868, 1649364219, 0, 0);
INSERT INTO `creature_respawn` VALUES (16869, 1649364045, 0, 0);
INSERT INTO `creature_respawn` VALUES (16870, 1649364498, 0, 0);
INSERT INTO `creature_respawn` VALUES (16871, 1649364755, 0, 0);
INSERT INTO `creature_respawn` VALUES (16872, 1649364137, 0, 0);
INSERT INTO `creature_respawn` VALUES (16873, 1649364492, 0, 0);
INSERT INTO `creature_respawn` VALUES (16874, 1649364510, 0, 0);
INSERT INTO `creature_respawn` VALUES (16875, 1649364730, 0, 0);
INSERT INTO `creature_respawn` VALUES (16876, 1649364051, 0, 0);
INSERT INTO `creature_respawn` VALUES (16877, 1649364005, 0, 0);
INSERT INTO `creature_respawn` VALUES (16984, 1649364071, 0, 0);
INSERT INTO `creature_respawn` VALUES (16986, 1649364076, 0, 0);
INSERT INTO `creature_respawn` VALUES (16988, 1649364956, 0, 0);
INSERT INTO `creature_respawn` VALUES (16989, 1649365287, 0, 0);
INSERT INTO `creature_respawn` VALUES (16991, 1649365010, 0, 0);
INSERT INTO `creature_respawn` VALUES (16992, 1649365007, 0, 0);
INSERT INTO `creature_respawn` VALUES (16998, 1649365471, 0, 0);
INSERT INTO `creature_respawn` VALUES (17065, 1649364894, 0, 0);
INSERT INTO `creature_respawn` VALUES (17067, 1649365387, 0, 0);
INSERT INTO `creature_respawn` VALUES (17100, 1649363802, 0, 0);
INSERT INTO `creature_respawn` VALUES (17103, 1649363867, 0, 0);
INSERT INTO `creature_respawn` VALUES (17107, 1649365524, 0, 0);
INSERT INTO `creature_respawn` VALUES (17108, 1649365541, 0, 0);
INSERT INTO `creature_respawn` VALUES (17109, 1649363830, 0, 0);
INSERT INTO `creature_respawn` VALUES (17112, 1649365530, 0, 0);
INSERT INTO `creature_respawn` VALUES (17288, 1649363902, 0, 0);
INSERT INTO `creature_respawn` VALUES (17296, 1649363895, 0, 0);
INSERT INTO `creature_respawn` VALUES (17345, 1649365363, 0, 0);
INSERT INTO `creature_respawn` VALUES (17350, 1649365362, 0, 0);
INSERT INTO `creature_respawn` VALUES (17368, 1649365379, 0, 0);
INSERT INTO `creature_respawn` VALUES (17380, 1649365043, 0, 0);
INSERT INTO `creature_respawn` VALUES (17558, 1649365025, 0, 0);
INSERT INTO `creature_respawn` VALUES (17569, 1649365058, 0, 0);
INSERT INTO `creature_respawn` VALUES (18031, 1649364154, 0, 0);
INSERT INTO `creature_respawn` VALUES (19106, 1649371910, 0, 0);
INSERT INTO `creature_respawn` VALUES (19107, 1649371999, 0, 0);
INSERT INTO `creature_respawn` VALUES (19118, 1649371882, 0, 0);
INSERT INTO `creature_respawn` VALUES (19760, 1649371545, 0, 1);
INSERT INTO `creature_respawn` VALUES (19764, 1649371545, 0, 1);
INSERT INTO `creature_respawn` VALUES (24732, 1649371993, 0, 1);
INSERT INTO `creature_respawn` VALUES (24740, 1649370198, 0, 1);
INSERT INTO `creature_respawn` VALUES (24747, 1649372171, 0, 1);
INSERT INTO `creature_respawn` VALUES (24748, 1649372456, 0, 1);
INSERT INTO `creature_respawn` VALUES (24754, 1649372363, 0, 1);
INSERT INTO `creature_respawn` VALUES (24759, 1649372223, 0, 1);
INSERT INTO `creature_respawn` VALUES (26999, 1649368503, 0, 1);
INSERT INTO `creature_respawn` VALUES (27003, 1649368395, 0, 1);
INSERT INTO `creature_respawn` VALUES (27006, 1649368468, 0, 1);
INSERT INTO `creature_respawn` VALUES (27654, 1649358341, 0, 1);
INSERT INTO `creature_respawn` VALUES (28322, 1649371811, 0, 0);
INSERT INTO `creature_respawn` VALUES (28323, 1649371834, 0, 0);
INSERT INTO `creature_respawn` VALUES (28324, 1649371871, 0, 0);
INSERT INTO `creature_respawn` VALUES (28325, 1649371862, 0, 0);
INSERT INTO `creature_respawn` VALUES (28714, 1649371421, 0, 1);
INSERT INTO `creature_respawn` VALUES (28929, 1649368369, 0, 1);
INSERT INTO `creature_respawn` VALUES (29915, 1649371216, 0, 0);
INSERT INTO `creature_respawn` VALUES (29917, 1649371191, 0, 0);
INSERT INTO `creature_respawn` VALUES (37897, 1649371096, 0, 0);
INSERT INTO `creature_respawn` VALUES (41905, 1649371307, 0, 0);
INSERT INTO `creature_respawn` VALUES (41915, 1649370979, 0, 0);
INSERT INTO `creature_respawn` VALUES (43213, 1649370567, 0, 1);
INSERT INTO `creature_respawn` VALUES (43214, 1649370616, 0, 1);
INSERT INTO `creature_respawn` VALUES (43215, 1649370580, 0, 1);
INSERT INTO `creature_respawn` VALUES (43216, 1649370591, 0, 1);
INSERT INTO `creature_respawn` VALUES (44284, 1649371060, 0, 0);
INSERT INTO `creature_respawn` VALUES (44379, 1649371226, 0, 0);
INSERT INTO `creature_respawn` VALUES (44470, 1649369427, 0, 0);
INSERT INTO `creature_respawn` VALUES (44475, 1649371036, 0, 0);
INSERT INTO `creature_respawn` VALUES (44476, 1649371026, 0, 0);
INSERT INTO `creature_respawn` VALUES (44490, 1649370789, 0, 0);
INSERT INTO `creature_respawn` VALUES (44609, 1649371068, 0, 0);
INSERT INTO `creature_respawn` VALUES (44613, 1649371089, 0, 0);
INSERT INTO `creature_respawn` VALUES (44614, 1649371080, 0, 0);
INSERT INTO `creature_respawn` VALUES (44615, 1649371042, 0, 0);
INSERT INTO `creature_respawn` VALUES (44616, 1649371053, 0, 0);
INSERT INTO `creature_respawn` VALUES (44641, 1649371288, 0, 0);
INSERT INTO `creature_respawn` VALUES (44662, 1649370998, 0, 0);
INSERT INTO `creature_respawn` VALUES (44663, 1649371004, 0, 0);
INSERT INTO `creature_respawn` VALUES (44665, 1649371015, 0, 0);
INSERT INTO `creature_respawn` VALUES (44791, 1649371284, 0, 0);
INSERT INTO `creature_respawn` VALUES (44811, 1649370857, 0, 0);
INSERT INTO `creature_respawn` VALUES (44899, 1649371410, 0, 0);
INSERT INTO `creature_respawn` VALUES (44908, 1649371267, 0, 0);
INSERT INTO `creature_respawn` VALUES (44910, 1649371162, 0, 0);
INSERT INTO `creature_respawn` VALUES (44958, 1649371301, 0, 0);
INSERT INTO `creature_respawn` VALUES (44961, 1649371356, 0, 0);
INSERT INTO `creature_respawn` VALUES (44965, 1649371299, 0, 0);
INSERT INTO `creature_respawn` VALUES (44987, 1649371266, 0, 0);
INSERT INTO `creature_respawn` VALUES (45051, 1649371071, 0, 0);
INSERT INTO `creature_respawn` VALUES (45056, 1649371408, 0, 0);
INSERT INTO `creature_respawn` VALUES (45116, 1649370890, 0, 0);
INSERT INTO `creature_respawn` VALUES (45117, 1649370896, 0, 0);
INSERT INTO `creature_respawn` VALUES (45120, 1649370860, 0, 0);
INSERT INTO `creature_respawn` VALUES (45123, 1649370906, 0, 0);
INSERT INTO `creature_respawn` VALUES (45127, 1649370881, 0, 0);
INSERT INTO `creature_respawn` VALUES (45128, 1649370863, 0, 0);
INSERT INTO `creature_respawn` VALUES (45132, 1649370844, 0, 0);
INSERT INTO `creature_respawn` VALUES (45138, 1649370925, 0, 0);
INSERT INTO `creature_respawn` VALUES (45140, 1649370931, 0, 0);
INSERT INTO `creature_respawn` VALUES (45141, 1649370849, 0, 0);
INSERT INTO `creature_respawn` VALUES (45143, 1649370874, 0, 0);
INSERT INTO `creature_respawn` VALUES (45144, 1649370834, 0, 0);
INSERT INTO `creature_respawn` VALUES (45153, 1649371429, 0, 0);
INSERT INTO `creature_respawn` VALUES (45179, 1649370639, 0, 0);
INSERT INTO `creature_respawn` VALUES (45191, 1649369387, 0, 0);
INSERT INTO `creature_respawn` VALUES (45211, 1649372498, 0, 0);
INSERT INTO `creature_respawn` VALUES (45212, 1649372479, 0, 0);
INSERT INTO `creature_respawn` VALUES (45221, 1649372346, 0, 0);
INSERT INTO `creature_respawn` VALUES (45222, 1649372504, 0, 0);
INSERT INTO `creature_respawn` VALUES (45223, 1649372447, 0, 0);
INSERT INTO `creature_respawn` VALUES (45224, 1649372432, 0, 0);
INSERT INTO `creature_respawn` VALUES (45587, 1649369436, 0, 1);
INSERT INTO `creature_respawn` VALUES (47924, 1649372479, 0, 1);
INSERT INTO `creature_respawn` VALUES (47934, 1649372480, 0, 1);
INSERT INTO `creature_respawn` VALUES (54001, 1649372188, 0, 0);
INSERT INTO `creature_respawn` VALUES (54003, 1649372162, 0, 0);
INSERT INTO `creature_respawn` VALUES (80454, 1649370590, 0, 0);
INSERT INTO `creature_respawn` VALUES (80761, 1649372304, 0, 0);
INSERT INTO `creature_respawn` VALUES (80810, 1649357573, 0, 0);
INSERT INTO `creature_respawn` VALUES (81024, 1649361656, 0, 0);
INSERT INTO `creature_respawn` VALUES (81031, 1649357590, 0, 0);
INSERT INTO `creature_respawn` VALUES (81032, 1649372339, 0, 0);
INSERT INTO `creature_respawn` VALUES (81080, 1649363850, 0, 0);
INSERT INTO `creature_respawn` VALUES (81360, 1649368578, 0, 0);
INSERT INTO `creature_respawn` VALUES (81369, 1649369595, 0, 0);
INSERT INTO `creature_respawn` VALUES (81370, 1649369585, 0, 0);
INSERT INTO `creature_respawn` VALUES (81374, 1649369663, 0, 0);
INSERT INTO `creature_respawn` VALUES (89530, 1649371050, 0, 0);
INSERT INTO `creature_respawn` VALUES (90142, 1649367188, 0, 0);
INSERT INTO `creature_respawn` VALUES (90310, 1649367228, 0, 0);
INSERT INTO `creature_respawn` VALUES (90338, 1649371304, 0, 0);
INSERT INTO `creature_respawn` VALUES (90342, 1649358946, 0, 0);
INSERT INTO `creature_respawn` VALUES (90381, 1649367162, 0, 0);
INSERT INTO `creature_respawn` VALUES (90403, 1649370982, 0, 0);
INSERT INTO `creature_respawn` VALUES (90412, 1649367250, 0, 0);
INSERT INTO `creature_respawn` VALUES (90416, 1649358496, 0, 0);
INSERT INTO `creature_respawn` VALUES (90418, 1649367207, 0, 0);
INSERT INTO `creature_respawn` VALUES (92156, 1649369901, 0, 0);
INSERT INTO `creature_respawn` VALUES (92268, 1649369523, 0, 0);
INSERT INTO `creature_respawn` VALUES (92270, 1649369838, 0, 0);
INSERT INTO `creature_respawn` VALUES (92272, 1649369814, 0, 0);
INSERT INTO `creature_respawn` VALUES (92274, 1649369604, 0, 0);
INSERT INTO `creature_respawn` VALUES (92275, 1649369503, 0, 0);
INSERT INTO `creature_respawn` VALUES (92278, 1649369897, 0, 0);
INSERT INTO `creature_respawn` VALUES (92279, 1649369615, 0, 0);
INSERT INTO `creature_respawn` VALUES (92281, 1649369877, 0, 0);
INSERT INTO `creature_respawn` VALUES (92364, 1649370805, 0, 0);
INSERT INTO `creature_respawn` VALUES (92385, 1649371871, 0, 0);
INSERT INTO `creature_respawn` VALUES (92528, 1649371784, 0, 0);
INSERT INTO `creature_respawn` VALUES (92535, 1649371777, 0, 0);
INSERT INTO `creature_respawn` VALUES (92537, 1649358758, 0, 0);
INSERT INTO `creature_respawn` VALUES (92596, 1649371803, 0, 0);
INSERT INTO `creature_respawn` VALUES (92597, 1649371838, 0, 0);
INSERT INTO `creature_respawn` VALUES (92602, 1649371739, 0, 0);
INSERT INTO `creature_respawn` VALUES (92603, 1649371684, 0, 0);
INSERT INTO `creature_respawn` VALUES (92604, 1649371699, 0, 0);
INSERT INTO `creature_respawn` VALUES (92605, 1649371713, 0, 0);
INSERT INTO `creature_respawn` VALUES (92608, 1649371770, 0, 0);
INSERT INTO `creature_respawn` VALUES (92613, 1649368453, 0, 0);
INSERT INTO `creature_respawn` VALUES (92630, 1649371723, 0, 0);
INSERT INTO `creature_respawn` VALUES (92703, 1649371657, 0, 0);
INSERT INTO `creature_respawn` VALUES (92712, 1649371820, 0, 0);
INSERT INTO `creature_respawn` VALUES (92715, 1649371891, 0, 0);
INSERT INTO `creature_respawn` VALUES (92716, 1649371860, 0, 0);
INSERT INTO `creature_respawn` VALUES (92718, 1649371665, 0, 0);
INSERT INTO `creature_respawn` VALUES (92779, 1649371631, 0, 0);
INSERT INTO `creature_respawn` VALUES (140693, 1649372261, 0, 0);
INSERT INTO `creature_respawn` VALUES (140694, 1649372256, 0, 0);
INSERT INTO `creature_respawn` VALUES (140695, 1649372252, 0, 0);
INSERT INTO `creature_respawn` VALUES (140696, 1649372259, 0, 0);
INSERT INTO `creature_respawn` VALUES (140697, 1649372341, 0, 0);
INSERT INTO `creature_respawn` VALUES (190214, 1649372221, 0, 0);
INSERT INTO `creature_respawn` VALUES (190215, 1649372227, 0, 0);
INSERT INTO `creature_respawn` VALUES (190216, 1649372224, 0, 0);
INSERT INTO `creature_respawn` VALUES (190217, 1649372222, 0, 0);
INSERT INTO `creature_respawn` VALUES (190218, 1649372208, 0, 0);
INSERT INTO `creature_respawn` VALUES (190222, 1649372207, 0, 0);
INSERT INTO `creature_respawn` VALUES (190223, 1649372229, 0, 0);
INSERT INTO `creature_respawn` VALUES (190224, 1649372227, 0, 0);
INSERT INTO `creature_respawn` VALUES (190225, 1649372223, 0, 0);
INSERT INTO `creature_respawn` VALUES (190226, 1649372219, 0, 0);
INSERT INTO `creature_respawn` VALUES (190227, 1649372221, 0, 0);
INSERT INTO `creature_respawn` VALUES (190230, 1649372266, 0, 0);
INSERT INTO `creature_respawn` VALUES (190231, 1649372266, 0, 0);
INSERT INTO `creature_respawn` VALUES (301770, 1649372175, 0, 0);
INSERT INTO `creature_respawn` VALUES (301771, 1649372205, 0, 0);

-- ----------------------------
-- Table structure for game_event_status
-- ----------------------------
DROP TABLE IF EXISTS `game_event_status`;
CREATE TABLE `game_event_status`  (
  `event` smallint(6) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`event`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Game event system' ROW_FORMAT = FIXED;

-- ----------------------------
-- Records of game_event_status
-- ----------------------------
INSERT INTO `game_event_status` VALUES (4);
INSERT INTO `game_event_status` VALUES (13);
INSERT INTO `game_event_status` VALUES (16);
INSERT INTO `game_event_status` VALUES (20);
INSERT INTO `game_event_status` VALUES (27);
INSERT INTO `game_event_status` VALUES (32);
INSERT INTO `game_event_status` VALUES (37);
INSERT INTO `game_event_status` VALUES (45);
INSERT INTO `game_event_status` VALUES (48);
INSERT INTO `game_event_status` VALUES (52);
INSERT INTO `game_event_status` VALUES (53);
INSERT INTO `game_event_status` VALUES (66);
INSERT INTO `game_event_status` VALUES (68);
INSERT INTO `game_event_status` VALUES (69);
INSERT INTO `game_event_status` VALUES (70);
INSERT INTO `game_event_status` VALUES (71);
INSERT INTO `game_event_status` VALUES (72);
INSERT INTO `game_event_status` VALUES (73);
INSERT INTO `game_event_status` VALUES (74);
INSERT INTO `game_event_status` VALUES (75);
INSERT INTO `game_event_status` VALUES (86);
INSERT INTO `game_event_status` VALUES (151);
INSERT INTO `game_event_status` VALUES (156);
INSERT INTO `game_event_status` VALUES (158);
INSERT INTO `game_event_status` VALUES (159);

-- ----------------------------
-- Table structure for gameobject_respawn
-- ----------------------------
DROP TABLE IF EXISTS `gameobject_respawn`;
CREATE TABLE `gameobject_respawn`  (
  `guid` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier',
  `respawn_time` bigint(20) NOT NULL DEFAULT 0,
  `instance` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `map` int(5) UNSIGNED NULL DEFAULT 0,
  PRIMARY KEY (`guid`, `instance`) USING BTREE,
  INDEX `idx_instance`(`instance`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Grid Loading System' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of gameobject_respawn
-- ----------------------------
INSERT INTO `gameobject_respawn` VALUES (45018, 1649368142, 0, 0);
INSERT INTO `gameobject_respawn` VALUES (45225, 1649368149, 0, 0);

-- ----------------------------
-- Table structure for gm_subsurveys
-- ----------------------------
DROP TABLE IF EXISTS `gm_subsurveys`;
CREATE TABLE `gm_subsurveys`  (
  `survey_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `subsurvey_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `rank` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `comment` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`survey_id`, `subsurvey_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Player System' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of gm_subsurveys
-- ----------------------------

-- ----------------------------
-- Table structure for gm_surveys
-- ----------------------------
DROP TABLE IF EXISTS `gm_surveys`;
CREATE TABLE `gm_surveys`  (
  `survey_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `guid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `main_survey` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `overall_comment` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`survey_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Player System' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of gm_surveys
-- ----------------------------

-- ----------------------------
-- Table structure for gm_tickets
-- ----------------------------
DROP TABLE IF EXISTS `gm_tickets`;
CREATE TABLE `gm_tickets`  (
  `ticket_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `guid` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier of ticket creator',
  `name` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Name of ticket creator',
  `message` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_time` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `map` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `position_x` float NOT NULL DEFAULT 0,
  `position_y` float NOT NULL DEFAULT 0,
  `position_z` float NOT NULL DEFAULT 0,
  `last_modified_time` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `closed_by` int(10) NOT NULL DEFAULT 0,
  `assigned_to` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'GUID of admin to whom ticket is assigned',
  `comment` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `response` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `completed` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `escalated` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `viewed` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `have_ticket` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ticket_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `security_needed` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`ticket_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Player System' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of gm_tickets
-- ----------------------------

-- ----------------------------
-- Table structure for group_instance
-- ----------------------------
DROP TABLE IF EXISTS `group_instance`;
CREATE TABLE `group_instance`  (
  `leader_guid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `instance` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permanent` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`leader_guid`, `instance`) USING BTREE,
  INDEX `idx_instance`(`instance`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = FIXED;

-- ----------------------------
-- Records of group_instance
-- ----------------------------

-- ----------------------------
-- Table structure for group_member
-- ----------------------------
DROP TABLE IF EXISTS `group_member`;
CREATE TABLE `group_member`  (
  `group_id` int(11) UNSIGNED NOT NULL,
  `member_guid` int(11) UNSIGNED NOT NULL,
  `assistant` tinyint(1) UNSIGNED NOT NULL,
  `subgroup` smallint(6) UNSIGNED NOT NULL,
  PRIMARY KEY (`group_id`, `member_guid`) USING BTREE,
  INDEX `idx_memberGuid`(`member_guid`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Groups' ROW_FORMAT = FIXED;

-- ----------------------------
-- Records of group_member
-- ----------------------------

-- ----------------------------
-- Table structure for groups
-- ----------------------------
DROP TABLE IF EXISTS `groups`;
CREATE TABLE `groups`  (
  `group_id` int(11) UNSIGNED NOT NULL,
  `leader_guid` int(11) UNSIGNED NOT NULL,
  `main_tank_guid` int(11) UNSIGNED NOT NULL,
  `main_assistant_guid` int(11) UNSIGNED NOT NULL,
  `loot_method` tinyint(4) UNSIGNED NOT NULL,
  `loot_threshold` tinyint(4) UNSIGNED NOT NULL,
  `looter_guid` int(11) UNSIGNED NOT NULL,
  `icon1` int(11) UNSIGNED NOT NULL,
  `icon2` int(11) UNSIGNED NOT NULL,
  `icon3` int(11) UNSIGNED NOT NULL,
  `icon4` int(11) UNSIGNED NOT NULL,
  `icon5` int(11) UNSIGNED NOT NULL,
  `icon6` int(11) UNSIGNED NOT NULL,
  `icon7` int(11) UNSIGNED NOT NULL,
  `icon8` int(11) UNSIGNED NOT NULL,
  `is_raid` tinyint(1) UNSIGNED NOT NULL,
  PRIMARY KEY (`group_id`) USING BTREE,
  UNIQUE INDEX `key_leaderGuid`(`leader_guid`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Groups' ROW_FORMAT = FIXED;

-- ----------------------------
-- Records of groups
-- ----------------------------

-- ----------------------------
-- Table structure for guild
-- ----------------------------
DROP TABLE IF EXISTS `guild`;
CREATE TABLE `guild`  (
  `guild_id` int(6) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `leader_guid` int(6) UNSIGNED NOT NULL DEFAULT 0,
  `emblem_style` int(5) NOT NULL DEFAULT 0,
  `emblem_color` int(5) NOT NULL DEFAULT 0,
  `border_style` int(5) NOT NULL DEFAULT 0,
  `border_color` int(5) NOT NULL DEFAULT 0,
  `background_color` int(5) NOT NULL DEFAULT 0,
  `info` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `motd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `create_date` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`guild_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Guild System' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of guild
-- ----------------------------

-- ----------------------------
-- Table structure for guild_eventlog
-- ----------------------------
DROP TABLE IF EXISTS `guild_eventlog`;
CREATE TABLE `guild_eventlog`  (
  `guild_id` int(11) NOT NULL COMMENT 'Guild Identificator',
  `log_guid` int(11) NOT NULL COMMENT 'Log record identificator - auxiliary column',
  `event_type` tinyint(1) NOT NULL COMMENT 'Event type',
  `player_guid1` int(11) NOT NULL COMMENT 'Player 1',
  `player_guid2` int(11) NOT NULL COMMENT 'Player 2',
  `new_rank` tinyint(2) NOT NULL COMMENT 'New rank(in case promotion/demotion)',
  `timestamp` bigint(20) NOT NULL COMMENT 'Event UNIX time',
  PRIMARY KEY (`guild_id`, `log_guid`) USING BTREE,
  INDEX `idx_PlayerGuid1`(`player_guid1`) USING BTREE,
  INDEX `idx_PlayerGuid2`(`player_guid2`) USING BTREE,
  INDEX `idx_LogGuid`(`log_guid`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Guild Eventlog' ROW_FORMAT = FIXED;

-- ----------------------------
-- Records of guild_eventlog
-- ----------------------------

-- ----------------------------
-- Table structure for guild_member
-- ----------------------------
DROP TABLE IF EXISTS `guild_member`;
CREATE TABLE `guild_member`  (
  `guild_id` int(6) UNSIGNED NOT NULL DEFAULT 0,
  `guid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `rank` tinyint(2) UNSIGNED NOT NULL DEFAULT 0,
  `player_note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `officer_note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  UNIQUE INDEX `key_guid`(`guid`) USING BTREE,
  INDEX `idx_guildid`(`guild_id`) USING BTREE,
  INDEX `idx_guildid_rank`(`guild_id`, `rank`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Guild System' ROW_FORMAT = FIXED;

-- ----------------------------
-- Records of guild_member
-- ----------------------------

-- ----------------------------
-- Table structure for guild_rank
-- ----------------------------
DROP TABLE IF EXISTS `guild_rank`;
CREATE TABLE `guild_rank`  (
  `guild_id` int(6) UNSIGNED NOT NULL DEFAULT 0,
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `rights` int(3) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`guild_id`, `id`) USING BTREE,
  INDEX `idx_rid`(`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Guild System' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of guild_rank
-- ----------------------------

-- ----------------------------
-- Table structure for instance
-- ----------------------------
DROP TABLE IF EXISTS `instance`;
CREATE TABLE `instance`  (
  `id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `map` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `reset_time` bigint(40) NOT NULL DEFAULT 0,
  `data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_map`(`map`) USING BTREE,
  INDEX `idx_resettime`(`reset_time`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of instance
-- ----------------------------

-- ----------------------------
-- Table structure for instance_reset
-- ----------------------------
DROP TABLE IF EXISTS `instance_reset`;
CREATE TABLE `instance_reset`  (
  `map` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `reset_time` bigint(40) NOT NULL DEFAULT 0,
  PRIMARY KEY (`map`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = FIXED;

-- ----------------------------
-- Records of instance_reset
-- ----------------------------
INSERT INTO `instance_reset` VALUES (249, 1649476800);
INSERT INTO `instance_reset` VALUES (309, 1649390400);
INSERT INTO `instance_reset` VALUES (409, 1649476800);
INSERT INTO `instance_reset` VALUES (469, 1649476800);
INSERT INTO `instance_reset` VALUES (509, 1649390400);
INSERT INTO `instance_reset` VALUES (531, 1649476800);
INSERT INTO `instance_reset` VALUES (533, 1649476800);

-- ----------------------------
-- Table structure for item_instance
-- ----------------------------
DROP TABLE IF EXISTS `item_instance`;
CREATE TABLE `item_instance`  (
  `guid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `item_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `owner_guid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `creator_guid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `gift_creator_guid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `count` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `duration` int(10) NOT NULL DEFAULT 0,
  `charges` tinytext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `flags` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `enchantments` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `random_property_id` smallint(5) NOT NULL DEFAULT 0,
  `durability` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `text` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `generated_loot` tinyint(4) NULL DEFAULT 0,
  PRIMARY KEY (`guid`) USING BTREE,
  INDEX `idx_owner_guid`(`owner_guid`) USING BTREE,
  INDEX `idx_itemEntry`(`item_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Item System' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of item_instance
-- ----------------------------
INSERT INTO `item_instance` VALUES (8, 6948, 1, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (53, 40000, 1, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (54, 40001, 1, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '1899 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 125, 0, 0);
INSERT INTO `item_instance` VALUES (55, 40001, 1, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '1898 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 125, 0, 0);
INSERT INTO `item_instance` VALUES (64, 16207, 1, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (65, 12947, 1, 0, 0, 1, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (66, 21329, 1, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 100, 0, 0);
INSERT INTO `item_instance` VALUES (67, 21330, 1, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 100, 0, 0);
INSERT INTO `item_instance` VALUES (68, 21331, 1, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 165, 0, 0);
INSERT INTO `item_instance` VALUES (69, 21332, 1, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 120, 0, 0);
INSERT INTO `item_instance` VALUES (70, 21333, 1, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 75, 0, 0);
INSERT INTO `item_instance` VALUES (71, 21581, 1, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 55, 0, 0);
INSERT INTO `item_instance` VALUES (72, 21618, 1, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 55, 0, 0);
INSERT INTO `item_instance` VALUES (73, 21598, 1, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 55, 0, 0);
INSERT INTO `item_instance` VALUES (74, 11840, 1, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (75, 17782, 1, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (76, 23030, 1, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (77, 19384, 1, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (78, 23041, 1, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (79, 19341, 1, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (80, 22811, 1, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 90, 0, 0);
INSERT INTO `item_instance` VALUES (81, 12654, 1, 0, 0, 200, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (82, 12654, 1, 0, 0, 200, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (83, 14156, 1, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (84, 14156, 1, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (85, 14156, 1, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (86, 14156, 1, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (87, 21176, 1, 0, 0, 1, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (88, 21215, 1, 0, 0, 20, 0, '-1 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (89, 21215, 1, 0, 0, 20, 0, '-1 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (90, 21215, 1, 0, 0, 20, 0, '-1 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (91, 8529, 1, 0, 0, 20, 0, '-1 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (92, 18258, 1, 0, 0, 1, 0, '-1 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (93, 1973, 1, 0, 0, 1, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (94, 6657, 1, 0, 0, 20, 0, '-1 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (97, 9172, 1, 0, 0, 5, 0, '-1 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (100, 5634, 1, 0, 0, 5, 0, '-1 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (102, 2459, 1, 0, 0, 5, 0, '-1 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (103, 3387, 1, 0, 0, 5, 0, '-1 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (119, 6948, 2, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (120, 18583, 2, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '0 0 0 625 1751187 115 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (121, 18584, 2, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '0 0 0 2630 1746987 120 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (122, 16832, 2, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 70, 0, 0);
INSERT INTO `item_instance` VALUES (123, 16905, 2, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 120, 0, 0);
INSERT INTO `item_instance` VALUES (124, 16906, 2, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 60, 0, 0);
INSERT INTO `item_instance` VALUES (125, 16907, 2, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 40, 0, 0);
INSERT INTO `item_instance` VALUES (126, 16908, 2, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 70, 0, 0);
INSERT INTO `item_instance` VALUES (127, 16909, 2, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 90, 0, 0);
INSERT INTO `item_instance` VALUES (128, 16910, 2, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 40, 0, 0);
INSERT INTO `item_instance` VALUES (129, 16911, 2, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 40, 0, 0);
INSERT INTO `item_instance` VALUES (131, 8928, 2, 0, 0, 20, 0, '-1 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (132, 20844, 2, 0, 0, 20, 0, '-1 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (134, 22812, 2, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 90, 0, 0);
INSERT INTO `item_instance` VALUES (135, 12654, 2, 0, 0, 200, 0, '0 0 0 0 0 ', 1, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (136, 19398, 2, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (137, 21215, 2, 0, 0, 20, 0, '-1 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (138, 23053, 2, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (139, 21596, 2, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (140, 19376, 2, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (141, 19406, 2, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (142, 18815, 2, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (143, 19160, 2, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (144, 6796, 2, 0, 0, 1, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (145, 14156, 2, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (146, 14156, 2, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (147, 14156, 2, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (148, 14156, 2, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (149, 19902, 2, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (165, 6948, 3, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (166, 2586, 3, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 35, 0, 0);
INSERT INTO `item_instance` VALUES (167, 11508, 3, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 16, 0, 0);
INSERT INTO `item_instance` VALUES (168, 12064, 3, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 20, 0, 0);
INSERT INTO `item_instance` VALUES (169, 22630, 3, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 145, 0, 0);
INSERT INTO `item_instance` VALUES (170, 5209, 3, 0, 0, 1, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 40, 0, 0);
INSERT INTO `item_instance` VALUES (172, 14156, 3, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (173, 14156, 3, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (174, 14156, 3, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (175, 14156, 3, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (176, 13262, 1, 0, 0, 1, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 145, 0, 0);
INSERT INTO `item_instance` VALUES (177, 40002, 1, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 120, 0, 0);
INSERT INTO `item_instance` VALUES (193, 6948, 4, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (486, 6218, 4, 4, 0, 1, 0, '0 0 0 0 0 ', 1, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (618, 35, 5, 0, 0, 1, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 23, 0, 0);
INSERT INTO `item_instance` VALUES (620, 55, 5, 0, 0, 1, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (622, 159, 5, 0, 0, 2, 0, '-1 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (624, 1395, 5, 0, 0, 1, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 23, 0, 0);
INSERT INTO `item_instance` VALUES (626, 4604, 5, 0, 0, 4, 0, '-1 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (628, 6096, 5, 0, 0, 1, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (630, 6140, 5, 0, 0, 1, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 32, 0, 0);
INSERT INTO `item_instance` VALUES (632, 6948, 5, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (999, 4305, 4, 0, 0, 1, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (1026, 11137, 4, 0, 0, 2, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (1080, 856, 4, 0, 0, 1, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (1225, 2324, 4, 0, 0, 10, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (1227, 2604, 4, 0, 0, 10, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (1425, 6260, 4, 0, 0, 10, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (1471, 2605, 4, 0, 0, 10, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (1488, 2318, 4, 0, 0, 14, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (1534, 932, 4, 0, 0, 1, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (1577, 6318, 4, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '241 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 95, 0, 0);
INSERT INTO `item_instance` VALUES (1613, 5576, 4, 0, 0, 1, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (1620, 6392, 4, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 29, 0, 0);
INSERT INTO `item_instance` VALUES (1643, 3748, 4, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 43, 0, 0);
INSERT INTO `item_instance` VALUES (1644, 6324, 4, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '242 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 79, 0, 0);
INSERT INTO `item_instance` VALUES (1806, 6482, 4, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 28, 0, 0);
INSERT INTO `item_instance` VALUES (1846, 1775, 4, 0, 0, 1, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 25, 0, 0);
INSERT INTO `item_instance` VALUES (1912, 10938, 4, 0, 0, 2, 0, '-1 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (1914, 3739, 4, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (1944, 11084, 4, 0, 0, 5, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (1945, 11083, 4, 0, 0, 20, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (1946, 5772, 4, 0, 0, 1, 0, '-1 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (1999, 4240, 4, 4, 0, 1, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (2000, 2320, 4, 0, 0, 20, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (2029, 2325, 4, 0, 0, 10, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (2052, 4291, 4, 0, 0, 20, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (2071, 4340, 4, 0, 0, 10, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (2081, 4341, 4, 0, 0, 10, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (2091, 4342, 4, 0, 0, 10, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (2103, 4240, 4, 4, 0, 1, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (2104, 4240, 4, 4, 0, 1, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (2105, 4240, 4, 4, 0, 1, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (2106, 4240, 4, 4, 0, 1, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (2107, 4240, 4, 4, 0, 1, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (2108, 4240, 4, 4, 0, 1, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (2113, 2997, 4, 0, 0, 1, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (2123, 2321, 4, 0, 0, 20, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (2145, 5250, 4, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 48, 0, 0);
INSERT INTO `item_instance` VALUES (2146, 3732, 4, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 45, 0, 0);
INSERT INTO `item_instance` VALUES (2202, 12047, 4, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '0 0 0 0 0 0 0 0 0 81 0 0 98 0 0 0 0 0 0 0 0 ', 762, 0, 0, 0);
INSERT INTO `item_instance` VALUES (2217, 3749, 4, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '783 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (2262, 14404, 4, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 55, 0, 0);
INSERT INTO `item_instance` VALUES (2267, 10940, 4, 0, 0, 11, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (2270, 2996, 4, 0, 0, 8, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (2297, 3737, 4, 0, 0, 1, 0, '-1 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (2300, 3760, 4, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (2304, 11134, 4, 0, 0, 1, 0, '-1 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (2312, 3827, 4, 0, 0, 2, 0, '-1 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (2316, 2592, 4, 0, 0, 6, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (2330, 2032, 4, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 25, 0, 0);
INSERT INTO `item_instance` VALUES (2331, 7269, 4, 0, 0, 1, 0, '-1 0 0 0 0 ', 1, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (2355, 16650, 4, 0, 0, 1, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (2361, 16651, 4, 0, 0, 1, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (2371, 16742, 4, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (2399, 10998, 4, 0, 0, 2, 0, '-1 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (2425, 1710, 4, 0, 0, 3, 0, '-1 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (2460, 9851, 4, 0, 0, 1, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 360 0 0 361 0 0 0 0 0 0 0 0 ', 1036, 55, 0, 0);
INSERT INTO `item_instance` VALUES (2464, 7473, 4, 0, 0, 1, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 349 0 0 355 0 0 0 0 0 0 0 0 ', 523, 45, 0, 0);
INSERT INTO `item_instance` VALUES (2537, 2996, 4, 0, 0, 10, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (2556, 2587, 4, 4, 0, 1, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (2573, 6261, 4, 0, 0, 10, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (2583, 8343, 4, 0, 0, 10, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (2593, 10290, 4, 0, 0, 10, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (2603, 14341, 4, 0, 0, 20, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (2629, 15929, 4, 0, 0, 1, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (2678, 3711, 4, 0, 0, 1, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (2692, 8749, 4, 0, 0, 1, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 45, 0, 0);
INSERT INTO `item_instance` VALUES (2722, 4306, 4, 0, 0, 13, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (2761, 4732, 4, 0, 0, 1, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (2804, 11083, 4, 0, 0, 5, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (2806, 11082, 4, 0, 0, 9, 0, '-1 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (2821, 8177, 4, 0, 0, 1, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 35, 0, 0);
INSERT INTO `item_instance` VALUES (2822, 2589, 4, 0, 0, 12, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (2823, 4408, 4, 0, 0, 1, 0, '-1 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (2828, 1419, 4, 0, 0, 1, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 25, 0, 0);
INSERT INTO `item_instance` VALUES (2830, 2672, 4, 0, 0, 6, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (2831, 774, 4, 0, 0, 1, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (2838, 3455, 4, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 40, 0, 0);
INSERT INTO `item_instance` VALUES (2839, 3252, 4, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);

-- ----------------------------
-- Table structure for item_loot
-- ----------------------------
DROP TABLE IF EXISTS `item_loot`;
CREATE TABLE `item_loot`  (
  `guid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `owner_guid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `item_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `amount` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `property` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`, `item_id`) USING BTREE,
  INDEX `idx_owner_guid`(`owner_guid`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Item System' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of item_loot
-- ----------------------------

-- ----------------------------
-- Table structure for item_text
-- ----------------------------
DROP TABLE IF EXISTS `item_text`;
CREATE TABLE `item_text`  (
  `id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `text` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Item System' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of item_text
-- ----------------------------
INSERT INTO `item_text` VALUES (177, 'Hey there!\n\nThank you for downloading my repack. If you haven\'t done so already, check the sql folder for some useful database patches like custom vendors. I plan on updating this repack periodically, so keep checking the thread if you don\'t want to miss any bug fixes.\n\nThis is version 18. Compiled 20-11-2020.\nIf you have any questions, you may contact me on youtube, acweb, ownedcore or reddit, and i\'ll try to help you out. Have fun');

-- ----------------------------
-- Table structure for mail
-- ----------------------------
DROP TABLE IF EXISTS `mail`;
CREATE TABLE `mail`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Identifier',
  `message_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `stationery` tinyint(3) NOT NULL DEFAULT 41,
  `mail_template_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `sender_guid` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Character Global Unique Identifier',
  `receiver_guid` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Character Global Unique Identifier',
  `subject` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `item_text_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `has_items` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `expire_time` bigint(40) NOT NULL DEFAULT 0,
  `deliver_time` bigint(40) NOT NULL DEFAULT 0,
  `money` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `cod` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `checked` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_receiver`(`receiver_guid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Mail System' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of mail
-- ----------------------------
INSERT INTO `mail` VALUES (1, 0, 61, 0, 3, 1, 'Need help?', 177, 1, 1698834669, 1490651544, 0, 0, 16);

-- ----------------------------
-- Table structure for mail_items
-- ----------------------------
DROP TABLE IF EXISTS `mail_items`;
CREATE TABLE `mail_items`  (
  `mail_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `item_guid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `item_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `receiver_guid` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Character Global Unique Identifier',
  PRIMARY KEY (`mail_id`, `item_guid`) USING BTREE,
  INDEX `idx_receiver`(`receiver_guid`) USING BTREE,
  INDEX `idx_item_guid`(`item_guid`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of mail_items
-- ----------------------------
INSERT INTO `mail_items` VALUES (1, 176, 13262, 1);

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
INSERT INTO `migrations` VALUES ('20200316170243');

-- ----------------------------
-- Table structure for pet_aura
-- ----------------------------
DROP TABLE IF EXISTS `pet_aura`;
CREATE TABLE `pet_aura`  (
  `guid` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier',
  `caster_guid` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Full Global Unique Identifier',
  `item_guid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `spell` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `stacks` int(11) UNSIGNED NOT NULL DEFAULT 1,
  `charges` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `base_points0` float NOT NULL DEFAULT 0,
  `base_points1` float NOT NULL DEFAULT 0,
  `base_points2` float NOT NULL DEFAULT 0,
  `periodic_time0` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `periodic_time1` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `periodic_time2` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `max_duration` int(11) NOT NULL DEFAULT 0,
  `duration` int(11) NOT NULL DEFAULT 0,
  `effect_index_mask` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`, `caster_guid`, `item_guid`, `spell`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Pet System' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of pet_aura
-- ----------------------------

-- ----------------------------
-- Table structure for pet_spell
-- ----------------------------
DROP TABLE IF EXISTS `pet_spell`;
CREATE TABLE `pet_spell`  (
  `guid` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier',
  `spell` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Spell Identifier',
  `active` int(11) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`, `spell`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Pet System' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of pet_spell
-- ----------------------------

-- ----------------------------
-- Table structure for pet_spell_cooldown
-- ----------------------------
DROP TABLE IF EXISTS `pet_spell_cooldown`;
CREATE TABLE `pet_spell_cooldown`  (
  `guid` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier, Low part',
  `spell` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Spell Identifier',
  `time` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`, `spell`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = FIXED;

-- ----------------------------
-- Records of pet_spell_cooldown
-- ----------------------------

-- ----------------------------
-- Table structure for petition
-- ----------------------------
DROP TABLE IF EXISTS `petition`;
CREATE TABLE `petition`  (
  `owner_guid` int(10) UNSIGNED NOT NULL,
  `petition_guid` int(10) UNSIGNED NULL DEFAULT 0,
  `charter_guid` int(10) UNSIGNED NULL DEFAULT NULL COMMENT 'Charter item GUID',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`owner_guid`) USING BTREE,
  UNIQUE INDEX `key_ownerguid_petitionguid`(`owner_guid`, `petition_guid`) USING BTREE,
  UNIQUE INDEX `charterguid`(`charter_guid`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Guild System' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of petition
-- ----------------------------

-- ----------------------------
-- Table structure for petition_sign
-- ----------------------------
DROP TABLE IF EXISTS `petition_sign`;
CREATE TABLE `petition_sign`  (
  `owner_guid` int(10) UNSIGNED NOT NULL,
  `petition_guid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `player_guid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `player_account` int(11) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`petition_guid`, `player_guid`) USING BTREE,
  INDEX `idx_playerguid`(`player_guid`) USING BTREE,
  INDEX `idx_ownerguid`(`owner_guid`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Guild System' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of petition_sign
-- ----------------------------

-- ----------------------------
-- Table structure for playerbot
-- ----------------------------
DROP TABLE IF EXISTS `playerbot`;
CREATE TABLE `playerbot`  (
  `char_guid` bigint(20) UNSIGNED NOT NULL,
  `chance` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `comment` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `ai` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`char_guid`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of playerbot
-- ----------------------------

-- ----------------------------
-- Table structure for saved_variables
-- ----------------------------
DROP TABLE IF EXISTS `saved_variables`;
CREATE TABLE `saved_variables`  (
  `key` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `cleaning_flags` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `honor_last_maintenance_day` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `honor_next_maintenance_day` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `honor_maintenance_marker` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`key`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Variable Saves' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of saved_variables
-- ----------------------------
INSERT INTO `saved_variables` VALUES (0, 0, 19025, 19032, 1);

-- ----------------------------
-- Table structure for world
-- ----------------------------
DROP TABLE IF EXISTS `world`;
CREATE TABLE `world`  (
  `map` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`map`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of world
-- ----------------------------

-- ----------------------------
-- Table structure for worldstates
-- ----------------------------
DROP TABLE IF EXISTS `worldstates`;
CREATE TABLE `worldstates`  (
  `entry` int(11) NULL DEFAULT NULL,
  `value` int(11) NULL DEFAULT NULL,
  `comment` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  UNIQUE INDEX `key_entry`(`entry`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of worldstates
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
