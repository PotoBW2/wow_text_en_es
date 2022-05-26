/*
 Navicat Premium Data Transfer

 Source Server         : Classic
 Source Server Type    : MySQL
 Source Server Version : 50562
 Source Host           : localhost:3306
 Source Schema         : characters

 Target Server Type    : MySQL
 Target Server Version : 50562
 File Encoding         : 65001

 Date: 25/05/2022 23:40:09
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
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

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
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Player System' ROW_FORMAT = Dynamic;

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
INSERT INTO `character_action` VALUES (4, 0, 10205, 0);
INSERT INTO `character_action` VALUES (4, 55, 8075, 128);
INSERT INTO `character_action` VALUES (4, 36, 6948, 128);
INSERT INTO `character_action` VALUES (4, 40, 10846, 0);
INSERT INTO `character_action` VALUES (4, 54, 8007, 128);
INSERT INTO `character_action` VALUES (4, 56, 8077, 128);
INSERT INTO `character_action` VALUES (4, 1, 10197, 0);
INSERT INTO `character_action` VALUES (4, 7, 10149, 0);
INSERT INTO `character_action` VALUES (4, 57, 10053, 0);
INSERT INTO `character_action` VALUES (4, 28, 7320, 0);
INSERT INTO `character_action` VALUES (4, 26, 7744, 0);
INSERT INTO `character_action` VALUES (4, 25, 22782, 0);
INSERT INTO `character_action` VALUES (4, 37, 13331, 128);
INSERT INTO `character_action` VALUES (4, 2, 10215, 0);
INSERT INTO `character_action` VALUES (4, 35, 2855, 0);
INSERT INTO `character_action` VALUES (4, 29, 10191, 0);
INSERT INTO `character_action` VALUES (4, 38, 7413, 0);
INSERT INTO `character_action` VALUES (4, 27, 10156, 0);
INSERT INTO `character_action` VALUES (4, 39, 13262, 0);
INSERT INTO `character_action` VALUES (4, 10, 12825, 0);
INSERT INTO `character_action` VALUES (4, 32, 475, 0);
INSERT INTO `character_action` VALUES (4, 5, 1, 65);
INSERT INTO `character_action` VALUES (4, 59, 10138, 0);
INSERT INTO `character_action` VALUES (4, 33, 10173, 0);
INSERT INTO `character_action` VALUES (4, 3, 12525, 0);
INSERT INTO `character_action` VALUES (4, 6, 6131, 0);
INSERT INTO `character_action` VALUES (4, 8, 2139, 0);
INSERT INTO `character_action` VALUES (4, 60, 10179, 0);
INSERT INTO `character_action` VALUES (4, 61, 10185, 0);
INSERT INTO `character_action` VALUES (4, 41, 12180, 0);
INSERT INTO `character_action` VALUES (4, 30, 8458, 0);
INSERT INTO `character_action` VALUES (4, 31, 8462, 0);
INSERT INTO `character_action` VALUES (4, 42, 3102, 0);
INSERT INTO `character_action` VALUES (4, 43, 818, 0);
INSERT INTO `character_action` VALUES (4, 52, 20577, 0);
INSERT INTO `character_action` VALUES (4, 53, 12051, 0);
INSERT INTO `character_action` VALUES (4, 9, 10159, 0);
INSERT INTO `character_action` VALUES (4, 11, 10201, 0);
INSERT INTO `character_action` VALUES (4, 58, 10144, 0);
INSERT INTO `character_action` VALUES (4, 62, 10211, 0);
INSERT INTO `character_action` VALUES (4, 4, 1953, 0);
INSERT INTO `character_action` VALUES (4, 24, 5019, 0);
INSERT INTO `character_action` VALUES (4, 34, 10169, 0);
INSERT INTO `character_action` VALUES (4, 44, 7620, 0);
INSERT INTO `character_action` VALUES (4, 65, 13019, 0);
INSERT INTO `character_action` VALUES (4, 70, 3, 65);
INSERT INTO `character_action` VALUES (4, 71, 2, 65);

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
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Player System' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of character_aura
-- ----------------------------
INSERT INTO `character_aura` VALUES (1, 1, 0, 2458, 1, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1);
INSERT INTO `character_aura` VALUES (2, 2, 0, 16609, 1, 0, 300, 15, 10, 0, 0, 2000, 3600000, 3555937, 7);
INSERT INTO `character_aura` VALUES (2, 2, 0, 22988, 1, 0, 1400, 20, 30, 0, 0, 0, -1, -1, 7);
INSERT INTO `character_aura` VALUES (2, 2, 149, 24252, 1, 0, 0, 100, 0, 0, 0, 0, -1, -1, 3);
INSERT INTO `character_aura` VALUES (3, 3, 169, 28143, 1, 0, 33, 33, 0, 0, 0, 0, -1, -1, 3);

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
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Player System' ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for character_duplicate_account
-- ----------------------------
DROP TABLE IF EXISTS `character_duplicate_account`;
CREATE TABLE `character_duplicate_account`  (
  `account` int(11) NULL DEFAULT NULL
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for character_forgotten_skills
-- ----------------------------
DROP TABLE IF EXISTS `character_forgotten_skills`;
CREATE TABLE `character_forgotten_skills`  (
  `guid` int(11) UNSIGNED NOT NULL COMMENT 'Global Unique Identifier',
  `skill` mediumint(9) UNSIGNED NOT NULL,
  `value` mediumint(9) UNSIGNED NOT NULL,
  PRIMARY KEY (`guid`, `skill`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Player System' ROW_FORMAT = Dynamic;

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
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

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
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Player System' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of character_homebind
-- ----------------------------
INSERT INTO `character_homebind` VALUES (1, 1, 14, -618.518, -4251.67, 38.718);
INSERT INTO `character_homebind` VALUES (2, 1, 141, 10311.3, 832.463, 1326.41);
INSERT INTO `character_homebind` VALUES (3, 1, 876, 16224, 16283.5, 13.1754);
INSERT INTO `character_homebind` VALUES (4, 0, 1497, 1634.62, 224.062, -43.1031);

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
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Player System' ROW_FORMAT = Dynamic;

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
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

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
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Player System' ROW_FORMAT = Dynamic;

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
INSERT INTO `character_inventory` VALUES (4, 4251, 7, 4243, 10978);
INSERT INTO `character_inventory` VALUES (4, 0, 23, 193, 6948);
INSERT INTO `character_inventory` VALUES (4, 0, 29, 5572, 8523);
INSERT INTO `character_inventory` VALUES (4, 0, 37, 486, 6218);
INSERT INTO `character_inventory` VALUES (4, 0, 50, 2029, 2325);
INSERT INTO `character_inventory` VALUES (4, 4254, 9, 2267, 10940);
INSERT INTO `character_inventory` VALUES (4, 0, 53, 6882, 4338);
INSERT INTO `character_inventory` VALUES (4, 0, 57, 1471, 2605);
INSERT INTO `character_inventory` VALUES (4, 0, 38, 7475, 11176);
INSERT INTO `character_inventory` VALUES (4, 0, 16, 6055, 6803);
INSERT INTO `character_inventory` VALUES (4, 4259, 11, 7079, 10828);
INSERT INTO `character_inventory` VALUES (4, 0, 66, 4257, 4499);
INSERT INTO `character_inventory` VALUES (4, 0, 42, 4067, 11164);
INSERT INTO `character_inventory` VALUES (4, 4252, 8, 4754, 11176);
INSERT INTO `character_inventory` VALUES (4, 4252, 6, 5076, 11134);
INSERT INTO `character_inventory` VALUES (4, 0, 19, 4251, 4499);
INSERT INTO `character_inventory` VALUES (4, 0, 64, 4256, 4499);
INSERT INTO `character_inventory` VALUES (4, 4254, 8, 7525, 10940);
INSERT INTO `character_inventory` VALUES (4, 0, 5, 6135, 9945);
INSERT INTO `character_inventory` VALUES (4, 4258, 9, 6303, 16203);
INSERT INTO `character_inventory` VALUES (4, 4255, 11, 2071, 4340);
INSERT INTO `character_inventory` VALUES (4, 0, 61, 2081, 4341);
INSERT INTO `character_inventory` VALUES (4, 4255, 6, 2091, 4342);
INSERT INTO `character_inventory` VALUES (4, 4259, 3, 7277, 16647);
INSERT INTO `character_inventory` VALUES (4, 4252, 9, 4132, 11139);
INSERT INTO `character_inventory` VALUES (4, 4258, 1, 3857, 10939);
INSERT INTO `character_inventory` VALUES (4, 4252, 5, 3853, 10939);
INSERT INTO `character_inventory` VALUES (4, 0, 3, 2934, 4330);
INSERT INTO `character_inventory` VALUES (4, 0, 63, 4255, 4499);
INSERT INTO `character_inventory` VALUES (4, 0, 54, 2000, 2320);
INSERT INTO `character_inventory` VALUES (4, 4255, 1, 7500, 4291);
INSERT INTO `character_inventory` VALUES (4, 4251, 0, 7357, 11137);
INSERT INTO `character_inventory` VALUES (4, 4253, 3, 3700, 11083);
INSERT INTO `character_inventory` VALUES (4, 4257, 10, 7240, 11135);
INSERT INTO `character_inventory` VALUES (4, 4251, 6, 5382, 11083);
INSERT INTO `character_inventory` VALUES (4, 4253, 1, 4895, 11082);
INSERT INTO `character_inventory` VALUES (4, 4251, 5, 4129, 11083);
INSERT INTO `character_inventory` VALUES (4, 0, 40, 2297, 3737);
INSERT INTO `character_inventory` VALUES (4, 4259, 5, 2355, 16650);
INSERT INTO `character_inventory` VALUES (4, 4259, 4, 2361, 16651);
INSERT INTO `character_inventory` VALUES (4, 0, 24, 2371, 16742);
INSERT INTO `character_inventory` VALUES (4, 4253, 0, 3101, 11138);
INSERT INTO `character_inventory` VALUES (4, 0, 51, 3153, 2321);
INSERT INTO `character_inventory` VALUES (4, 4253, 4, 7875, 11137);
INSERT INTO `character_inventory` VALUES (4, 0, 49, 6556, 4339);
INSERT INTO `character_inventory` VALUES (4, 0, 52, 2537, 2996);
INSERT INTO `character_inventory` VALUES (4, 0, 65, 4260, 4499);
INSERT INTO `character_inventory` VALUES (4, 0, 56, 2573, 6261);
INSERT INTO `character_inventory` VALUES (4, 0, 55, 2583, 8343);
INSERT INTO `character_inventory` VALUES (4, 4255, 0, 2593, 10290);
INSERT INTO `character_inventory` VALUES (4, 0, 60, 2603, 14341);
INSERT INTO `character_inventory` VALUES (4, 4253, 2, 7520, 11084);
INSERT INTO `character_inventory` VALUES (4, 4255, 2, 3118, 2997);
INSERT INTO `character_inventory` VALUES (4, 4251, 1, 3856, 10939);
INSERT INTO `character_inventory` VALUES (4, 4251, 11, 4588, 11137);
INSERT INTO `character_inventory` VALUES (4, 0, 15, 7335, 9680);
INSERT INTO `character_inventory` VALUES (4, 4258, 10, 5840, 11135);
INSERT INTO `character_inventory` VALUES (4, 0, 7, 3373, 7472);
INSERT INTO `character_inventory` VALUES (4, 0, 34, 7269, 16743);
INSERT INTO `character_inventory` VALUES (4, 0, 28, 2678, 3711);
INSERT INTO `character_inventory` VALUES (4, 0, 0, 2692, 8749);
INSERT INTO `character_inventory` VALUES (4, 4251, 10, 7359, 10998);
INSERT INTO `character_inventory` VALUES (4, 4251, 8, 4242, 10978);
INSERT INTO `character_inventory` VALUES (4, 4256, 0, 7092, 4305);
INSERT INTO `character_inventory` VALUES (4, 0, 68, 4259, 4499);
INSERT INTO `character_inventory` VALUES (4, 0, 41, 2888, 11206);
INSERT INTO `character_inventory` VALUES (4, 0, 67, 4258, 4499);
INSERT INTO `character_inventory` VALUES (4, 0, 9, 5813, 14231);
INSERT INTO `character_inventory` VALUES (4, 0, 35, 7080, 10454);
INSERT INTO `character_inventory` VALUES (4, 0, 62, 5689, 2324);
INSERT INTO `character_inventory` VALUES (4, 0, 27, 6223, 22526);
INSERT INTO `character_inventory` VALUES (4, 4251, 2, 7358, 11174);
INSERT INTO `character_inventory` VALUES (4, 0, 11, 3528, 2951);
INSERT INTO `character_inventory` VALUES (4, 4257, 0, 3852, 10939);
INSERT INTO `character_inventory` VALUES (4, 4259, 8, 3850, 10939);
INSERT INTO `character_inventory` VALUES (4, 4254, 10, 4244, 10978);
INSERT INTO `character_inventory` VALUES (4, 4252, 4, 4245, 10978);
INSERT INTO `character_inventory` VALUES (4, 4252, 1, 4246, 10978);
INSERT INTO `character_inventory` VALUES (4, 4253, 7, 7385, 11084);
INSERT INTO `character_inventory` VALUES (4, 0, 17, 3759, 5215);
INSERT INTO `character_inventory` VALUES (4, 0, 2, 4407, 3942);
INSERT INTO `character_inventory` VALUES (4, 4254, 1, 4578, 11082);
INSERT INTO `character_inventory` VALUES (4, 4252, 2, 4537, 11174);
INSERT INTO `character_inventory` VALUES (4, 0, 20, 4252, 4499);
INSERT INTO `character_inventory` VALUES (4, 0, 1, 5983, 7722);
INSERT INTO `character_inventory` VALUES (4, 0, 22, 4254, 4499);
INSERT INTO `character_inventory` VALUES (4, 0, 14, 7078, 12465);
INSERT INTO `character_inventory` VALUES (4, 0, 10, 6059, 4550);
INSERT INTO `character_inventory` VALUES (4, 4251, 9, 7083, 14344);
INSERT INTO `character_inventory` VALUES (4, 0, 21, 4253, 4499);
INSERT INTO `character_inventory` VALUES (4, 0, 36, 4915, 6339);
INSERT INTO `character_inventory` VALUES (4, 4253, 6, 6663, 11137);
INSERT INTO `character_inventory` VALUES (4, 4255, 7, 7510, 2604);
INSERT INTO `character_inventory` VALUES (4, 4255, 3, 7097, 4305);
INSERT INTO `character_inventory` VALUES (4, 4252, 11, 6819, 14343);
INSERT INTO `character_inventory` VALUES (4, 4254, 0, 6821, 16202);
INSERT INTO `character_inventory` VALUES (4, 0, 47, 7356, 11225);
INSERT INTO `character_inventory` VALUES (4, 4259, 0, 5966, 11137);
INSERT INTO `character_inventory` VALUES (4, 4259, 10, 7071, 10807);
INSERT INTO `character_inventory` VALUES (4, 4253, 11, 4576, 11083);
INSERT INTO `character_inventory` VALUES (4, 4252, 7, 5384, 10939);
INSERT INTO `character_inventory` VALUES (4, 0, 43, 4305, 10312);
INSERT INTO `character_inventory` VALUES (4, 0, 44, 4333, 10312);
INSERT INTO `character_inventory` VALUES (4, 0, 32, 4334, 1532);
INSERT INTO `character_inventory` VALUES (4, 0, 58, 4899, 6260);
INSERT INTO `character_inventory` VALUES (4, 4251, 3, 6053, 10938);
INSERT INTO `character_inventory` VALUES (4, 0, 81, 5831, 7146);
INSERT INTO `character_inventory` VALUES (4, 0, 26, 5372, 16745);
INSERT INTO `character_inventory` VALUES (4, 4255, 9, 7090, 4305);
INSERT INTO `character_inventory` VALUES (4, 0, 33, 7350, 8463);
INSERT INTO `character_inventory` VALUES (4, 4255, 4, 7106, 4339);
INSERT INTO `character_inventory` VALUES (4, 4255, 10, 7091, 4305);
INSERT INTO `character_inventory` VALUES (4, 0, 30, 5373, 13331);
INSERT INTO `character_inventory` VALUES (4, 4254, 3, 7771, 3943);
INSERT INTO `character_inventory` VALUES (4, 0, 25, 7072, 6212);
INSERT INTO `character_inventory` VALUES (4, 0, 31, 6867, 6193);
INSERT INTO `character_inventory` VALUES (4, 4252, 0, 5636, 11137);
INSERT INTO `character_inventory` VALUES (4, 4252, 3, 7119, 11137);
INSERT INTO `character_inventory` VALUES (4, 4255, 5, 6857, 4339);
INSERT INTO `character_inventory` VALUES (4, 4258, 11, 5074, 11177);
INSERT INTO `character_inventory` VALUES (4, 0, 12, 4822, 18706);
INSERT INTO `character_inventory` VALUES (4, 4253, 10, 7016, 11178);
INSERT INTO `character_inventory` VALUES (4, 4255, 8, 6837, 4339);
INSERT INTO `character_inventory` VALUES (4, 0, 39, 7181, 10302);
INSERT INTO `character_inventory` VALUES (4, 0, 4, 6414, 14434);
INSERT INTO `character_inventory` VALUES (4, 4251, 4, 6818, 11176);
INSERT INTO `character_inventory` VALUES (4, 0, 45, 6593, 10300);
INSERT INTO `character_inventory` VALUES (4, 4259, 7, 6058, 11175);
INSERT INTO `character_inventory` VALUES (4, 4253, 5, 5969, 11134);
INSERT INTO `character_inventory` VALUES (4, 0, 59, 6847, 4339);
INSERT INTO `character_inventory` VALUES (4, 4252, 10, 5072, 11135);
INSERT INTO `character_inventory` VALUES (4, 4253, 8, 6336, 11137);
INSERT INTO `character_inventory` VALUES (4, 0, 6, 6974, 14433);
INSERT INTO `character_inventory` VALUES (4, 4253, 9, 5964, 11083);
INSERT INTO `character_inventory` VALUES (4, 0, 46, 6925, 16220);
INSERT INTO `character_inventory` VALUES (4, 0, 48, 7624, 10300);
INSERT INTO `character_inventory` VALUES (4, 0, 8, 7645, 14279);
INSERT INTO `character_inventory` VALUES (4, 4254, 11, 7752, 19022);
INSERT INTO `character_inventory` VALUES (4, 4254, 2, 7753, 8751);
INSERT INTO `character_inventory` VALUES (4, 4254, 4, 7790, 4018);
INSERT INTO `character_inventory` VALUES (4, 4254, 5, 7794, 8749);
INSERT INTO `character_inventory` VALUES (4, 4254, 6, 7834, 4006);
INSERT INTO `character_inventory` VALUES (4, 4254, 7, 7838, 3967);

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
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Pet System' ROW_FORMAT = Dynamic;

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
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Player System' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of character_queststatus
-- ----------------------------
INSERT INTO `character_queststatus` VALUES (4, 363, 0, 0, 0, 1618090467, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 364, 1, 1, 0, 1618131348, 8, 8, 0, 0, 0, 0, 0, 0, 3275);
INSERT INTO `character_queststatus` VALUES (4, 3098, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 3901, 1, 1, 0, 1618247202, 12, 0, 0, 0, 0, 0, 0, 0, 3274);
INSERT INTO `character_queststatus` VALUES (4, 376, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 6060);
INSERT INTO `character_queststatus` VALUES (4, 380, 1, 1, 0, 1618250228, 10, 8, 0, 0, 0, 0, 0, 0, 3270);
INSERT INTO `character_queststatus` VALUES (4, 3902, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 11848);
INSERT INTO `character_queststatus` VALUES (4, 6395, 1, 1, 0, 1618250228, 1, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 381, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 3268);
INSERT INTO `character_queststatus` VALUES (4, 382, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 3277);
INSERT INTO `character_queststatus` VALUES (4, 8, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 4604);
INSERT INTO `character_queststatus` VALUES (4, 365, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 383, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 5481, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 404, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 5482, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 367, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 407, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 358, 1, 1, 0, 1653337308, 0, 8, 5, 0, 0, 0, 0, 0, 6063);
INSERT INTO `character_queststatus` VALUES (4, 374, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 12299);
INSERT INTO `character_queststatus` VALUES (4, 398, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 5941);
INSERT INTO `character_queststatus` VALUES (4, 427, 1, 1, 0, 1618430787, 10, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 375, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 1, 0, 0, 3833);
INSERT INTO `character_queststatus` VALUES (4, 368, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 356, 1, 1, 0, 1624984403, 8, 8, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 405, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 354, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 362, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 359, 1, 1, 0, 1621235837, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 370, 1, 1, 0, 1621179088, 1, 3, 3, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 426, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 3834);
INSERT INTO `character_queststatus` VALUES (4, 445, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 5725, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 15449);
INSERT INTO `character_queststatus` VALUES (4, 357, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 361, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 371, 1, 1, 0, 1624196605, 1, 5, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 360, 1, 1, 0, 1624188313, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 369, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 1881, 1, 1, 0, 1624191248, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 1882, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 7507);
INSERT INTO `character_queststatus` VALUES (4, 372, 1, 1, 0, 1625246225, 1, 2, 0, 0, 0, 0, 0, 0, 3445);
INSERT INTO `character_queststatus` VALUES (4, 355, 1, 1, 0, 1624815607, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 2934, 3, 0, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 566, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 408, 1, 1, 0, 1653337308, 8, 8, 0, 0, 0, 0, 0, 0, 3446);
INSERT INTO `character_queststatus` VALUES (4, 492, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 8368, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 9368, 1, 1, 0, 1624989036, 1, 1, 1, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 366, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 409, 1, 1, 0, 1625256343, 1, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 431, 0, 1, 0, 1625254940, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 410, 0, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 411, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 6321, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 428, 1, 1, 0, 1625479111, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 437, 1, 1, 1, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 421, 1, 1, 0, 1625466323, 5, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 447, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 477, 1, 1, 0, 1625498264, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 422, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 423, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 6323, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 6322, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 6324, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 429, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 430, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 425, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 3453);
INSERT INTO `character_queststatus` VALUES (4, 450, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 438, 1, 1, 0, 1625516159, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 424, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 451, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 3582);
INSERT INTO `character_queststatus` VALUES (4, 452, 1, 1, 1, 1625497328, 0, 0, 0, 0, 0, 0, 0, 0, 3449);
INSERT INTO `character_queststatus` VALUES (4, 478, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 481, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 516, 1, 1, 0, 1625588231, 6, 6, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 482, 1, 1, 0, 1625505491, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 479, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 99, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 5242);
INSERT INTO `character_queststatus` VALUES (4, 439, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 480, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 3452);
INSERT INTO `character_queststatus` VALUES (4, 440, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 443, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 441, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 530, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 444, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 446, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 1013, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 6335);
INSERT INTO `character_queststatus` VALUES (4, 442, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 3461);
INSERT INTO `character_queststatus` VALUES (4, 448, 1, 1, 0, 1625559962, 0, 0, 0, 0, 0, 0, 0, 0, 3240);
INSERT INTO `character_queststatus` VALUES (4, 1014, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 460, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 461, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 491, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 3457);
INSERT INTO `character_queststatus` VALUES (4, 1098, 1, 1, 0, 1625602573, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 493, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 496, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 498, 1, 1, 0, 1630615590, 1, 1, 0, 0, 0, 0, 0, 0, 3752);
INSERT INTO `character_queststatus` VALUES (4, 501, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 6482);
INSERT INTO `character_queststatus` VALUES (4, 527, 1, 1, 0, 1630693959, 6, 6, 1, 1, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 8370, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 8426, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 8390, 0, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 8431, 0, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 509, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 499, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 502, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 528, 1, 1, 0, 1631045219, 15, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 546, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 549, 1, 1, 0, 1630696149, 10, 10, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 567, 1, 1, 0, 1631050156, 1, 1, 1, 1, 0, 0, 0, 0, 5250);
INSERT INTO `character_queststatus` VALUES (4, 513, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 529, 1, 1, 0, 1653337308, 1, 4, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 515, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 3749);
INSERT INTO `character_queststatus` VALUES (4, 1943, 1, 1, 0, 1637351134, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 532, 1, 1, 0, 1653337308, 1, 5, 1, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 547, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 3751);
INSERT INTO `character_queststatus` VALUES (4, 517, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 539, 1, 1, 0, 1636212428, 1, 10, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 494, 1, 1, 0, 1636212428, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 541, 1, 1, 0, 1637207177, 10, 8, 4, 1, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 1164, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 2032);
INSERT INTO `character_queststatus` VALUES (4, 524, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 550, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 3822);
INSERT INTO `character_queststatus` VALUES (4, 7321, 1, 1, 0, 1653337308, 0, 0, 0, 0, 1, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 8162, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 8171, 1, 1, 0, 1637348594, 1, 1, 1, 1, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 1944, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 858, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 863, 1, 1, 1, 1652211220, 0, 0, 0, 0, 0, 0, 0, 0, 5326);
INSERT INTO `character_queststatus` VALUES (4, 7789, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 6503, 1, 1, 0, 1638572204, 9, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 6504, 3, 0, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 6544, 1, 1, 1, 1638572944, 0, 0, 0, 0, 0, 0, 0, 0, 16889);
INSERT INTO `character_queststatus` VALUES (4, 6571, 3, 0, 0, 1653337308, 0, 0, 0, 0, 1, 1, 0, 1, 0);
INSERT INTO `character_queststatus` VALUES (4, 8293, 0, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 6441, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 25, 1, 1, 1, 1652626319, 12, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 6581, 0, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 552, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 533, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 535, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 503, 1, 1, 1, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 506, 1, 1, 0, 1649271359, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 553, 1, 1, 0, 1653337308, 1, 1, 1, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 1238, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 544, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 556, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 676, 1, 1, 0, 1649884355, 8, 10, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 1361, 1, 1, 0, 1652211220, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 507, 1, 1, 0, 1649803162, 1, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 8427, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 8436, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 545, 1, 1, 0, 1649365350, 6, 12, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 557, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 1109, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 1947, 1, 1, 0, 1652237824, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 1960, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 1961, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 435, 1, 1, 1, 1649371650, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 449, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 590, 1, 1, 1, 1649371650, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 1359, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 3221, 1, 1, 0, 1649456095, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 508, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 3764);
INSERT INTO `character_queststatus` VALUES (4, 1962, 1, 1, 0, 1649878954, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 1358, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 10638);
INSERT INTO `character_queststatus` VALUES (4, 642, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 655, 1, 1, 0, 1651933189, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 671, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 677, 1, 1, 0, 1651933189, 10, 10, 8, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 651, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 2342, 3, 0, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 672, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 678, 1, 1, 0, 1651936790, 10, 4, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 652, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 674, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 675, 1, 1, 0, 1651934990, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 701, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 679, 1, 1, 0, 1651954594, 15, 10, 0, 0, 0, 0, 0, 0, 9520);
INSERT INTO `character_queststatus` VALUES (4, 680, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 4977);
INSERT INTO `character_queststatus` VALUES (4, 702, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 847, 1, 1, 0, 1651937690, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 635, 1, 1, 0, 1651955494, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 1953, 1, 1, 0, 1652237824, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 673, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 4545);
INSERT INTO `character_queststatus` VALUES (4, 6622, 1, 1, 1, 1651955494, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 662, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 663, 1, 1, 0, 1651956394, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 664, 1, 1, 0, 1651971705, 10, 3, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 665, 1, 1, 1, 1651957294, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 666, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 4547);
INSERT INTO `character_queststatus` VALUES (4, 688, 1, 1, 0, 1651970804, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 668, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 687, 1, 0, 0, 1651970804, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 669, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 568, 1, 1, 0, 1652066138, 15, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 581, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 596, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 629, 3, 0, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 638, 1, 1, 0, 1652129451, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 2932, 1, 1, 1, 1652300424, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 569, 1, 1, 0, 1652112812, 10, 5, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 582, 1, 1, 0, 1653337308, 0, 0, 0, 0, 1, 0, 0, 0, 4132);
INSERT INTO `character_queststatus` VALUES (4, 194, 1, 1, 0, 1652113712, 10, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 570, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 583, 1, 1, 0, 1652112812, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 195, 1, 1, 0, 1652114612, 10, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 196, 1, 1, 0, 1652116707, 10, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 584, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 585, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 197, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 572, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 586, 1, 1, 0, 1653337308, 8, 6, 4, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 338, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 588, 1, 1, 0, 1652119408, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 589, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 571, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 591, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 573, 1, 1, 0, 1653337308, 0, 10, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 592, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 4134);
INSERT INTO `character_queststatus` VALUES (4, 639, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 640, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 641, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 643, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 644, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 645, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 646, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 4507);
INSERT INTO `character_queststatus` VALUES (4, 339, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 340, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 593, 0, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 341, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 342, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 3341, 3, 0, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 7810, 1, 0, 0, 1652193566, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 190, 1, 1, 0, 1652194466, 10, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 191, 1, 1, 0, 1652194466, 10, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 192, 1, 1, 0, 1652194466, 10, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 193, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 185, 1, 1, 0, 1652196266, 10, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 186, 1, 1, 0, 1652197166, 10, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 187, 1, 1, 0, 1652198066, 10, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 188, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 208, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 17686);
INSERT INTO `character_queststatus` VALUES (4, 348, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 595, 1, 1, 0, 1652384509, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 670, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 8551, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 1113, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 6522, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 232, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 238, 1, 1, 0, 1653337308, 0, 0, 0, 0, 1, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 243, 1, 1, 0, 1652296881, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 495, 1, 1, 0, 1652222523, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 518, 1, 1, 0, 1652223423, 14, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 6521, 3, 0, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 519, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 520, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 521, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 1048, 1, 1, 0, 1652273537, 1, 1, 1, 1, 0, 0, 0, 0, 6803);
INSERT INTO `character_queststatus` VALUES (4, 2995, 1, 1, 0, 1652294181, 1, 1, 1, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 2861, 1, 1, 0, 1652296881, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 667, 1, 1, 1, 1652274892, 0, 0, 0, 0, 0, 0, 0, 0, 4550);
INSERT INTO `character_queststatus` VALUES (4, 2742, 1, 1, 1, 1652294181, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 1446, 1, 0, 0, 1653337308, 0, 0, 0, 0, 1, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 2933, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 2782, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 8273, 1, 1, 0, 1652294181, 0, 0, 0, 0, 0, 0, 0, 0, 20642);
INSERT INTO `character_queststatus` VALUES (4, 485, 1, 1, 0, 1653530980, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 1372, 1, 1, 0, 1652301198, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 1383, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 11265);
INSERT INTO `character_queststatus` VALUES (4, 1389, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 698, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 576, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 1424, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 1430, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 1418, 1, 0, 0, 1652387209, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 349, 0, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 597, 1, 1, 0, 1652386309, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 1393, 1, 1, 1, 1652388840, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 599, 1, 1, 0, 1652392021, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 604, 1, 1, 0, 1653337308, 10, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 606, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 607, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 609, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 613, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 608, 1, 1, 0, 1652394708, 1, 1, 1, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 201, 1, 1, 1, 1652396509, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 699, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 2864, 1, 0, 0, 1652396509, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 1429, 1, 0, 0, 1653337308, 0, 0, 0, 0, 1, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 2872, 1, 0, 0, 1652397409, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 1422, 1, 1, 0, 1652410593, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 1426, 1, 1, 0, 1652664455, 10, 10, 10, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 1388, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 3784, 1, 1, 0, 1652674423, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 1391, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 2621, 1, 1, 0, 1652664455, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 2784, 1, 1, 1, 1652663555, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 2622, 1, 1, 0, 1652664455, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 2623, 1, 0, 0, 1653337308, 0, 0, 0, 0, 1, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 1427, 1, 1, 0, 1652665355, 0, 0, 0, 0, 0, 0, 0, 0, 9680);
INSERT INTO `character_queststatus` VALUES (4, 1428, 3, 0, 0, 1652665355, 10, 7, 8, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 1918, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 3568, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 3373, 1, 0, 0, 1653337308, 0, 0, 0, 0, 1, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 3569, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 3570, 1, 1, 0, 1652714638, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 4293, 1, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 4661, 0, 1, 0, 1653337308, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 4294, 1, 1, 0, 1653339108, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 4642, 1, 1, 0, 1653340909, 0, 0, 0, 0, 0, 0, 0, 0, 15703);
INSERT INTO `character_queststatus` VALUES (4, 4561, 0, 1, 0, 1653338208, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 7815, 1, 1, 0, 1653340909, 15, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 7816, 1, 1, 0, 1653340909, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 7828, 1, 1, 0, 1653531880, 15, 15, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 7829, 1, 1, 0, 1653531880, 20, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 836, 1, 0, 1, 1653531880, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 7830, 1, 1, 0, 1653535354, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `character_queststatus` VALUES (4, 7849, 3, 0, 0, 1653535354, 0, 0, 0, 0, 0, 0, 0, 0, 0);

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
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Player System' ROW_FORMAT = Dynamic;

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
INSERT INTO `character_reputation` VALUES (4, 574, 0, 4);
INSERT INTO `character_reputation` VALUES (4, 569, 0, 4);
INSERT INTO `character_reputation` VALUES (4, 571, 0, 4);
INSERT INTO `character_reputation` VALUES (4, 570, 0, 4);
INSERT INTO `character_reputation` VALUES (4, 289, 0, 4);
INSERT INTO `character_reputation` VALUES (4, 577, 441, 1);
INSERT INTO `character_reputation` VALUES (4, 46, 0, 4);
INSERT INTO `character_reputation` VALUES (4, 550, 0, 4);
INSERT INTO `character_reputation` VALUES (4, 69, 0, 6);
INSERT INTO `character_reputation` VALUES (4, 86, 0, 4);
INSERT INTO `character_reputation` VALUES (4, 83, 0, 4);
INSERT INTO `character_reputation` VALUES (4, 549, 0, 4);
INSERT INTO `character_reputation` VALUES (4, 551, 0, 4);
INSERT INTO `character_reputation` VALUES (4, 47, 0, 6);
INSERT INTO `character_reputation` VALUES (4, 72, 0, 6);
INSERT INTO `character_reputation` VALUES (4, 529, 0, 0);
INSERT INTO `character_reputation` VALUES (4, 76, 725, 17);
INSERT INTO `character_reputation` VALUES (4, 54, 0, 6);
INSERT INTO `character_reputation` VALUES (4, 68, 38999, 17);
INSERT INTO `character_reputation` VALUES (4, 81, 10, 17);
INSERT INTO `character_reputation` VALUES (4, 530, 0, 17);
INSERT INTO `character_reputation` VALUES (4, 67, 0, 9);
INSERT INTO `character_reputation` VALUES (4, 469, 0, 14);
INSERT INTO `character_reputation` VALUES (4, 169, 0, 8);
INSERT INTO `character_reputation` VALUES (4, 470, 451, 1);
INSERT INTO `character_reputation` VALUES (4, 471, 0, 22);
INSERT INTO `character_reputation` VALUES (4, 369, 441, 1);
INSERT INTO `character_reputation` VALUES (4, 70, 0, 3);
INSERT INTO `character_reputation` VALUES (4, 349, 0, 0);
INSERT INTO `character_reputation` VALUES (4, 59, 0, 16);
INSERT INTO `character_reputation` VALUES (4, 93, 0, 2);
INSERT INTO `character_reputation` VALUES (4, 92, 0, 2);
INSERT INTO `character_reputation` VALUES (4, 21, 915, 1);
INSERT INTO `character_reputation` VALUES (4, 589, 0, 6);
INSERT INTO `character_reputation` VALUES (4, 87, -4000, 3);
INSERT INTO `character_reputation` VALUES (4, 576, 0, 2);
INSERT INTO `character_reputation` VALUES (4, 609, 0, 0);
INSERT INTO `character_reputation` VALUES (4, 629, 0, 0);
INSERT INTO `character_reputation` VALUES (4, 630, 0, 0);
INSERT INTO `character_reputation` VALUES (4, 709, 0, 20);
INSERT INTO `character_reputation` VALUES (4, 730, 0, 2);
INSERT INTO `character_reputation` VALUES (4, 729, 0, 16);
INSERT INTO `character_reputation` VALUES (4, 749, 0, 0);
INSERT INTO `character_reputation` VALUES (4, 789, 0, 16);
INSERT INTO `character_reputation` VALUES (4, 809, 0, 16);
INSERT INTO `character_reputation` VALUES (4, 890, 0, 6);
INSERT INTO `character_reputation` VALUES (4, 889, 0, 17);
INSERT INTO `character_reputation` VALUES (4, 891, 0, 14);
INSERT INTO `character_reputation` VALUES (4, 892, 0, 24);
INSERT INTO `character_reputation` VALUES (4, 909, 0, 16);
INSERT INTO `character_reputation` VALUES (4, 270, 0, 16);
INSERT INTO `character_reputation` VALUES (4, 510, 0, 16);
INSERT INTO `character_reputation` VALUES (4, 509, 0, 2);
INSERT INTO `character_reputation` VALUES (4, 910, 0, 2);

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
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Player System' ROW_FORMAT = Dynamic;

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
INSERT INTO `character_skills` VALUES (4, 95, 237, 245);
INSERT INTO `character_skills` VALUES (4, 673, 300, 300);
INSERT INTO `character_skills` VALUES (4, 415, 1, 1);
INSERT INTO `character_skills` VALUES (4, 8, 1, 1);
INSERT INTO `character_skills` VALUES (4, 136, 167, 245);
INSERT INTO `character_skills` VALUES (4, 6, 1, 1);
INSERT INTO `character_skills` VALUES (4, 162, 123, 245);
INSERT INTO `character_skills` VALUES (4, 109, 300, 300);
INSERT INTO `character_skills` VALUES (4, 228, 190, 245);
INSERT INTO `character_skills` VALUES (4, 333, 156, 225);
INSERT INTO `character_skills` VALUES (4, 129, 270, 300);
INSERT INTO `character_skills` VALUES (4, 197, 208, 300);
INSERT INTO `character_skills` VALUES (4, 185, 50, 150);
INSERT INTO `character_skills` VALUES (4, 356, 1, 75);
INSERT INTO `character_skills` VALUES (4, 173, 119, 245);
INSERT INTO `character_skills` VALUES (4, 43, 136, 245);
INSERT INTO `character_skills` VALUES (4, 762, 75, 75);

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
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Player System' ROW_FORMAT = Dynamic;

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
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Player System' ROW_FORMAT = Dynamic;

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
INSERT INTO `character_spell` VALUES (4, 10841, 1, 0);
INSERT INTO `character_spell` VALUES (4, 13378, 1, 0);
INSERT INTO `character_spell` VALUES (4, 10169, 1, 0);
INSERT INTO `character_spell` VALUES (4, 7457, 1, 0);
INSERT INTO `character_spell` VALUES (4, 10846, 1, 0);
INSERT INTO `character_spell` VALUES (4, 2855, 1, 0);
INSERT INTO `character_spell` VALUES (4, 10179, 1, 0);
INSERT INTO `character_spell` VALUES (4, 2393, 1, 0);
INSERT INTO `character_spell` VALUES (4, 8458, 1, 0);
INSERT INTO `character_spell` VALUES (4, 3563, 1, 0);
INSERT INTO `character_spell` VALUES (4, 14293, 1, 0);
INSERT INTO `character_spell` VALUES (4, 10159, 1, 0);
INSERT INTO `character_spell` VALUES (4, 7620, 1, 0);
INSERT INTO `character_spell` VALUES (4, 3102, 1, 0);
INSERT INTO `character_spell` VALUES (4, 2539, 1, 0);
INSERT INTO `character_spell` VALUES (4, 12360, 1, 0);
INSERT INTO `character_spell` VALUES (4, 3276, 1, 0);
INSERT INTO `character_spell` VALUES (4, 759, 1, 0);
INSERT INTO `character_spell` VALUES (4, 6131, 1, 0);
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
INSERT INTO `character_spell` VALUES (4, 7413, 1, 0);
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
INSERT INTO `character_spell` VALUES (4, 13538, 1, 0);
INSERT INTO `character_spell` VALUES (4, 1953, 1, 0);
INSERT INTO `character_spell` VALUES (4, 7320, 1, 0);
INSERT INTO `character_spell` VALUES (4, 12051, 1, 0);
INSERT INTO `character_spell` VALUES (4, 10144, 1, 0);
INSERT INTO `character_spell` VALUES (4, 12350, 1, 0);
INSERT INTO `character_spell` VALUES (4, 2402, 1, 0);
INSERT INTO `character_spell` VALUES (4, 12046, 1, 0);
INSERT INTO `character_spell` VALUES (4, 2964, 1, 0);
INSERT INTO `character_spell` VALUES (4, 11129, 1, 0);
INSERT INTO `character_spell` VALUES (4, 3757, 1, 0);
INSERT INTO `character_spell` VALUES (4, 3845, 1, 0);
INSERT INTO `character_spell` VALUES (4, 12873, 1, 0);
INSERT INTO `character_spell` VALUES (4, 10211, 1, 0);
INSERT INTO `character_spell` VALUES (4, 7748, 1, 0);
INSERT INTO `character_spell` VALUES (4, 7771, 1, 0);
INSERT INTO `character_spell` VALUES (4, 14807, 1, 0);
INSERT INTO `character_spell` VALUES (4, 7779, 1, 0);
INSERT INTO `character_spell` VALUES (4, 29076, 1, 0);
INSERT INTO `character_spell` VALUES (4, 7928, 1, 0);
INSERT INTO `character_spell` VALUES (4, 10156, 1, 0);
INSERT INTO `character_spell` VALUES (4, 2406, 1, 0);
INSERT INTO `character_spell` VALUES (4, 3843, 1, 0);
INSERT INTO `character_spell` VALUES (4, 2399, 1, 0);
INSERT INTO `character_spell` VALUES (4, 6521, 1, 0);
INSERT INTO `character_spell` VALUES (4, 2401, 1, 0);
INSERT INTO `character_spell` VALUES (4, 3847, 1, 0);
INSERT INTO `character_spell` VALUES (4, 12825, 1, 0);
INSERT INTO `character_spell` VALUES (4, 13019, 1, 0);
INSERT INTO `character_spell` VALUES (4, 11368, 1, 0);
INSERT INTO `character_spell` VALUES (4, 13501, 1, 0);
INSERT INTO `character_spell` VALUES (4, 22782, 1, 0);
INSERT INTO `character_spell` VALUES (4, 3552, 1, 0);
INSERT INTO `character_spell` VALUES (4, 3813, 1, 0);
INSERT INTO `character_spell` VALUES (4, 8770, 1, 0);
INSERT INTO `character_spell` VALUES (4, 10205, 1, 0);
INSERT INTO `character_spell` VALUES (4, 13485, 1, 0);
INSERT INTO `character_spell` VALUES (4, 7929, 1, 0);
INSERT INTO `character_spell` VALUES (4, 3866, 1, 0);
INSERT INTO `character_spell` VALUES (4, 3848, 1, 0);
INSERT INTO `character_spell` VALUES (4, 3850, 1, 0);
INSERT INTO `character_spell` VALUES (4, 8467, 1, 0);
INSERT INTO `character_spell` VALUES (4, 10840, 1, 0);
INSERT INTO `character_spell` VALUES (4, 7795, 1, 0);
INSERT INTO `character_spell` VALUES (4, 7745, 1, 0);
INSERT INTO `character_spell` VALUES (4, 2541, 1, 0);
INSERT INTO `character_spell` VALUES (4, 6499, 1, 0);
INSERT INTO `character_spell` VALUES (4, 25124, 1, 0);
INSERT INTO `character_spell` VALUES (4, 10053, 1, 0);
INSERT INTO `character_spell` VALUES (4, 3855, 1, 0);
INSERT INTO `character_spell` VALUES (4, 3839, 1, 0);
INSERT INTO `character_spell` VALUES (4, 3852, 1, 0);
INSERT INTO `character_spell` VALUES (4, 6690, 1, 0);
INSERT INTO `character_spell` VALUES (4, 8758, 1, 0);
INSERT INTO `character_spell` VALUES (4, 6688, 1, 0);
INSERT INTO `character_spell` VALUES (4, 7643, 1, 0);
INSERT INTO `character_spell` VALUES (4, 11418, 1, 0);
INSERT INTO `character_spell` VALUES (4, 8760, 1, 0);
INSERT INTO `character_spell` VALUES (4, 10173, 1, 0);
INSERT INTO `character_spell` VALUES (4, 10191, 1, 0);
INSERT INTO `character_spell` VALUES (4, 3859, 1, 0);
INSERT INTO `character_spell` VALUES (4, 12180, 1, 0);
INSERT INTO `character_spell` VALUES (4, 10197, 1, 0);
INSERT INTO `character_spell` VALUES (4, 13421, 1, 0);
INSERT INTO `character_spell` VALUES (4, 7857, 1, 0);
INSERT INTO `character_spell` VALUES (4, 12400, 1, 0);
INSERT INTO `character_spell` VALUES (4, 10138, 1, 0);
INSERT INTO `character_spell` VALUES (4, 8483, 1, 0);
INSERT INTO `character_spell` VALUES (4, 8762, 1, 0);
INSERT INTO `character_spell` VALUES (4, 33388, 1, 0);
INSERT INTO `character_spell` VALUES (4, 8764, 1, 0);
INSERT INTO `character_spell` VALUES (4, 3871, 1, 0);
INSERT INTO `character_spell` VALUES (4, 18629, 1, 0);
INSERT INTO `character_spell` VALUES (4, 7863, 1, 0);
INSERT INTO `character_spell` VALUES (4, 7861, 1, 0);
INSERT INTO `character_spell` VALUES (4, 18460, 1, 0);
INSERT INTO `character_spell` VALUES (4, 10149, 1, 0);
INSERT INTO `character_spell` VALUES (4, 8462, 1, 0);
INSERT INTO `character_spell` VALUES (4, 10215, 1, 0);
INSERT INTO `character_spell` VALUES (4, 3861, 1, 0);
INSERT INTO `character_spell` VALUES (4, 3567, 1, 0);
INSERT INTO `character_spell` VALUES (4, 11417, 1, 0);
INSERT INTO `character_spell` VALUES (4, 8772, 1, 0);
INSERT INTO `character_spell` VALUES (4, 8774, 1, 0);
INSERT INTO `character_spell` VALUES (4, 8489, 1, 0);
INSERT INTO `character_spell` VALUES (4, 8766, 1, 0);
INSERT INTO `character_spell` VALUES (4, 3865, 1, 0);
INSERT INTO `character_spell` VALUES (4, 12342, 1, 0);
INSERT INTO `character_spell` VALUES (4, 8791, 1, 0);
INSERT INTO `character_spell` VALUES (4, 10185, 1, 0);
INSERT INTO `character_spell` VALUES (4, 13503, 1, 0);
INSERT INTO `character_spell` VALUES (4, 10201, 1, 0);
INSERT INTO `character_spell` VALUES (4, 13628, 1, 0);
INSERT INTO `character_spell` VALUES (4, 13622, 1, 0);
INSERT INTO `character_spell` VALUES (4, 8799, 1, 0);
INSERT INTO `character_spell` VALUES (4, 13529, 1, 0);
INSERT INTO `character_spell` VALUES (4, 13607, 1, 0);
INSERT INTO `character_spell` VALUES (4, 13626, 1, 0);
INSERT INTO `character_spell` VALUES (4, 12341, 1, 0);
INSERT INTO `character_spell` VALUES (4, 8795, 1, 0);
INSERT INTO `character_spell` VALUES (4, 12049, 1, 0);
INSERT INTO `character_spell` VALUES (4, 12048, 1, 0);
INSERT INTO `character_spell` VALUES (4, 12525, 1, 0);

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
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of character_spell_cooldown
-- ----------------------------
INSERT INTO `character_spell_cooldown` VALUES (4, 8690, 0, 89, 1653538271, 6948);

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
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

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
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Player System' ROW_FORMAT = Dynamic;

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
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Player System' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of characters
-- ----------------------------
INSERT INTO `characters` VALUES (1, 1, 'Repack', 2, 1, 1, 0, 0, 0, 0, 0, 60, 0, 7982089, 512, 22, 451, 16216.5, 16112.1, 69.4448, 2.3527, 0, 0, 0, 0, 0, '4194304 0 0 0 0 0 0 0 ', '', 0, 2956, 2936, 0, 1492803100, 0, 0, 0, 0, 0, 0, 0, 0, 2, 692499, 18, 0, 0, 0, 0, 0, 4294967295, 0, 17299, 0, 0, 0, 100, 0, '1 0 33554432 0 256 0 0 0 131072 0 0 0 0 0 0 0 0 8 0 0 0 0 8 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '21329 0 17782 0 21330 0 11840 0 21331 0 21598 0 21332 0 21333 0 21618 0 21581 0 12947 0 19384 0 19341 0 23041 0 23030 0 40001 1899 40001 1898 22811 0 40000 0 ', 12654, 0, NULL, NULL, NULL, 1);
INSERT INTO `characters` VALUES (2, 1, 'By', 4, 4, 0, 0, 0, 0, 0, 0, 60, 0, 997987789, 512, 616, 1, 4519.98, -3570.21, 982.339, 1.91693, 0, 0, 0, 0, 0, '100663296 0 0 0 0 0 0 0 ', '', 0, 1599, 1594, 0, 1588539759, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 4294967295, 0, 5483, 0, 0, 0, 100, 0, '0 0 0 1073741824 0 0 0 0 0 0 0 0 0 0 0 0 0 131072 0 2048 0 65536 2304 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '16908 0 23053 0 16832 0 6796 0 16905 0 16910 0 16909 0 16906 0 16911 0 16907 0 21596 0 19376 0 19406 0 18815 0 19398 0 18584 172359680 18583 40960000 22812 0 19160 0 ', 12654, 0, NULL, NULL, NULL, 1);
INSERT INTO `characters` VALUES (3, 1, 'Brotalnia', 1, 8, 0, 0, 0, 0, 0, 0, 60, 0, 0, 520, 876, 1, 16228.5, 16308.5, 29.2623, 5.47966, 0, 0, 0, 0, 0, '2 0 0 0 0 0 0 0 ', '', 0, 2492, 2483, 0, 1561306223, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 4294967295, 0, 1930, 3303, 0, 0, 100, 0, '0 0 0 536870912 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 8 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '12064 0 0 0 0 0 0 0 2586 0 0 0 0 0 11508 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 22630 0 0 0 5209 0 0 0 ', 0, 0, NULL, NULL, NULL, 1);
INSERT INTO `characters` VALUES (4, 2, 'Pantine', 5, 8, 1, 0, 0, 0, 0, 0, 49, 3559, 997836056, 0, 17, 1, 258.143, -1710.81, 100.964, 2.33325, 0, 0, 0, 0, 0, '275453440 281018368 34816 0 0 0 0 0 ', '23 22 ', 0, 614504, 1581, 0, 1653536235, 0, 117.422, 1, 1621062384, 0, 0, 6, 0, 6, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1773, 3087, 0, 0, 100, 0, '2144993281 2944235095 2712387591 2424779720 22794759 3221764096 522499 1086324672 4289807456 906232065 2017723493 13960715 12582944 1842488453 26195968 876648832 960495950 375395204 2148236802 18941835 1333133376 538517891 2134884600 1868563003 554013692 67636738 0 100738840 1048576 12601387 2155872768 553665536 4096 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '8749 0 7722 0 3942 0 4330 0 14434 847 9945 0 14433 0 7472 66 14279 723 14231 0 4550 0 2951 0 18706 0 0 0 12465 744 9680 241 6803 0 5215 0 0 0 4499 0 ', 0, 0, NULL, NULL, NULL, 1);

-- ----------------------------
-- Table structure for characters_guid_delete
-- ----------------------------
DROP TABLE IF EXISTS `characters_guid_delete`;
CREATE TABLE `characters_guid_delete`  (
  `guid` int(11) NULL DEFAULT NULL,
  UNIQUE INDEX `key_guid`(`guid`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for characters_item_delete
-- ----------------------------
DROP TABLE IF EXISTS `characters_item_delete`;
CREATE TABLE `characters_item_delete`  (
  `entry` int(11) NULL DEFAULT NULL,
  UNIQUE INDEX `key_entry`(`entry`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Fixed;

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
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Death System' ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Grid Loading System' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of creature_respawn
-- ----------------------------
INSERT INTO `creature_respawn` VALUES (1644, 1653532638, 0, 0);
INSERT INTO `creature_respawn` VALUES (2243, 1653533384, 0, 0);
INSERT INTO `creature_respawn` VALUES (3163, 1653530713, 0, 0);
INSERT INTO `creature_respawn` VALUES (4508, 1653530684, 0, 0);
INSERT INTO `creature_respawn` VALUES (4588, 1653536264, 0, 0);
INSERT INTO `creature_respawn` VALUES (6007, 1653536477, 0, 0);
INSERT INTO `creature_respawn` VALUES (6050, 1653532712, 0, 0);
INSERT INTO `creature_respawn` VALUES (6051, 1653532742, 0, 0);
INSERT INTO `creature_respawn` VALUES (6056, 1653532740, 0, 0);
INSERT INTO `creature_respawn` VALUES (6057, 1653536468, 0, 0);
INSERT INTO `creature_respawn` VALUES (6076, 1653532625, 0, 0);
INSERT INTO `creature_respawn` VALUES (6306, 1653534487, 0, 0);
INSERT INTO `creature_respawn` VALUES (13966, 1653535037, 0, 1);
INSERT INTO `creature_respawn` VALUES (13971, 1653531680, 0, 1);
INSERT INTO `creature_respawn` VALUES (14772, 1653536488, 0, 0);
INSERT INTO `creature_respawn` VALUES (14773, 1653536485, 0, 0);
INSERT INTO `creature_respawn` VALUES (14774, 1653536487, 0, 0);
INSERT INTO `creature_respawn` VALUES (14775, 1653536486, 0, 0);
INSERT INTO `creature_respawn` VALUES (14776, 1653536484, 0, 0);
INSERT INTO `creature_respawn` VALUES (16011, 1653535801, 0, 0);
INSERT INTO `creature_respawn` VALUES (16093, 1653536239, 0, 0);
INSERT INTO `creature_respawn` VALUES (19760, 1653536595, 0, 1);
INSERT INTO `creature_respawn` VALUES (19764, 1653536595, 0, 1);
INSERT INTO `creature_respawn` VALUES (28057, 1653534732, 0, 1);
INSERT INTO `creature_respawn` VALUES (28062, 1653534722, 0, 1);
INSERT INTO `creature_respawn` VALUES (28714, 1653537574, 0, 1);
INSERT INTO `creature_respawn` VALUES (28929, 1653534535, 0, 1);
INSERT INTO `creature_respawn` VALUES (43213, 1653535744, 0, 1);
INSERT INTO `creature_respawn` VALUES (43214, 1653535798, 0, 1);
INSERT INTO `creature_respawn` VALUES (43215, 1653535757, 0, 1);
INSERT INTO `creature_respawn` VALUES (43216, 1653535770, 0, 1);
INSERT INTO `creature_respawn` VALUES (44470, 1653535143, 0, 0);
INSERT INTO `creature_respawn` VALUES (44811, 1653536173, 0, 0);
INSERT INTO `creature_respawn` VALUES (45153, 1653536048, 0, 0);
INSERT INTO `creature_respawn` VALUES (45179, 1653536165, 0, 0);
INSERT INTO `creature_respawn` VALUES (45191, 1653535129, 0, 0);
INSERT INTO `creature_respawn` VALUES (45211, 1653536505, 0, 0);
INSERT INTO `creature_respawn` VALUES (45212, 1653536261, 0, 0);
INSERT INTO `creature_respawn` VALUES (45221, 1653536433, 0, 0);
INSERT INTO `creature_respawn` VALUES (45222, 1653536323, 0, 0);
INSERT INTO `creature_respawn` VALUES (45223, 1653536318, 0, 0);
INSERT INTO `creature_respawn` VALUES (45224, 1653536326, 0, 0);
INSERT INTO `creature_respawn` VALUES (45587, 1653535266, 0, 1);
INSERT INTO `creature_respawn` VALUES (47501, 1653536291, 0, 1);
INSERT INTO `creature_respawn` VALUES (47528, 1653536422, 0, 1);
INSERT INTO `creature_respawn` VALUES (47532, 1653536417, 0, 1);
INSERT INTO `creature_respawn` VALUES (47910, 1653536176, 0, 1);
INSERT INTO `creature_respawn` VALUES (47923, 1653536175, 0, 1);
INSERT INTO `creature_respawn` VALUES (47924, 1653536453, 0, 1);
INSERT INTO `creature_respawn` VALUES (47934, 1653536448, 0, 1);
INSERT INTO `creature_respawn` VALUES (47935, 1653536175, 0, 1);
INSERT INTO `creature_respawn` VALUES (49863, 1653536315, 0, 1);
INSERT INTO `creature_respawn` VALUES (49867, 1653531655, 0, 1);
INSERT INTO `creature_respawn` VALUES (49869, 1653536236, 0, 1);
INSERT INTO `creature_respawn` VALUES (49873, 1653536177, 0, 1);
INSERT INTO `creature_respawn` VALUES (49888, 1653536271, 0, 1);
INSERT INTO `creature_respawn` VALUES (49890, 1653536239, 0, 1);
INSERT INTO `creature_respawn` VALUES (54001, 1653536194, 0, 0);
INSERT INTO `creature_respawn` VALUES (54003, 1653536239, 0, 0);
INSERT INTO `creature_respawn` VALUES (80454, 1653535675, 0, 0);
INSERT INTO `creature_respawn` VALUES (80761, 1653536401, 0, 0);
INSERT INTO `creature_respawn` VALUES (80810, 1653530973, 0, 0);
INSERT INTO `creature_respawn` VALUES (81024, 1653535052, 0, 0);
INSERT INTO `creature_respawn` VALUES (81032, 1653536521, 0, 0);
INSERT INTO `creature_respawn` VALUES (81369, 1653534649, 0, 0);
INSERT INTO `creature_respawn` VALUES (81370, 1653534644, 0, 0);
INSERT INTO `creature_respawn` VALUES (81374, 1653534681, 0, 0);
INSERT INTO `creature_respawn` VALUES (89530, 1653536123, 0, 0);
INSERT INTO `creature_respawn` VALUES (90142, 1653531919, 0, 0);
INSERT INTO `creature_respawn` VALUES (90310, 1653531897, 0, 0);
INSERT INTO `creature_respawn` VALUES (90342, 1653532337, 0, 0);
INSERT INTO `creature_respawn` VALUES (90352, 1653536472, 0, 0);
INSERT INTO `creature_respawn` VALUES (90381, 1653531869, 0, 0);
INSERT INTO `creature_respawn` VALUES (90403, 1653536288, 0, 0);
INSERT INTO `creature_respawn` VALUES (90412, 1653531883, 0, 0);
INSERT INTO `creature_respawn` VALUES (90418, 1653531934, 0, 0);
INSERT INTO `creature_respawn` VALUES (93018, 1653531831, 0, 0);
INSERT INTO `creature_respawn` VALUES (93020, 1653531846, 0, 0);
INSERT INTO `creature_respawn` VALUES (93090, 1653531645, 0, 0);
INSERT INTO `creature_respawn` VALUES (93099, 1653531791, 0, 0);
INSERT INTO `creature_respawn` VALUES (93108, 1653531327, 0, 0);
INSERT INTO `creature_respawn` VALUES (93174, 1653531781, 0, 0);
INSERT INTO `creature_respawn` VALUES (93177, 1653531784, 0, 0);
INSERT INTO `creature_respawn` VALUES (93195, 1653531725, 0, 0);
INSERT INTO `creature_respawn` VALUES (93243, 1653531691, 0, 0);
INSERT INTO `creature_respawn` VALUES (93275, 1653531732, 0, 0);
INSERT INTO `creature_respawn` VALUES (93278, 1653531699, 0, 0);
INSERT INTO `creature_respawn` VALUES (93279, 1653531722, 0, 0);
INSERT INTO `creature_respawn` VALUES (93281, 1653531754, 0, 0);
INSERT INTO `creature_respawn` VALUES (93285, 1653531729, 0, 0);
INSERT INTO `creature_respawn` VALUES (93288, 1653531760, 0, 0);
INSERT INTO `creature_respawn` VALUES (93301, 1653531468, 0, 0);
INSERT INTO `creature_respawn` VALUES (93310, 1653531274, 0, 0);
INSERT INTO `creature_respawn` VALUES (93358, 1653531747, 0, 0);
INSERT INTO `creature_respawn` VALUES (93364, 1653531735, 0, 0);
INSERT INTO `creature_respawn` VALUES (93398, 1653531096, 0, 0);
INSERT INTO `creature_respawn` VALUES (93399, 1653531111, 0, 0);
INSERT INTO `creature_respawn` VALUES (93438, 1653531834, 0, 0);
INSERT INTO `creature_respawn` VALUES (93450, 1653531681, 0, 0);
INSERT INTO `creature_respawn` VALUES (93474, 1653531775, 0, 0);
INSERT INTO `creature_respawn` VALUES (93505, 1653531666, 0, 0);
INSERT INTO `creature_respawn` VALUES (93525, 1653531800, 0, 0);
INSERT INTO `creature_respawn` VALUES (93534, 1653531772, 0, 0);
INSERT INTO `creature_respawn` VALUES (93543, 1653531713, 0, 0);
INSERT INTO `creature_respawn` VALUES (93612, 1653534661, 0, 0);
INSERT INTO `creature_respawn` VALUES (93618, 1653531636, 0, 0);
INSERT INTO `creature_respawn` VALUES (93622, 1653531652, 0, 0);
INSERT INTO `creature_respawn` VALUES (93623, 1653531673, 0, 0);
INSERT INTO `creature_respawn` VALUES (93626, 1653531663, 0, 0);
INSERT INTO `creature_respawn` VALUES (93658, 1653531626, 0, 0);
INSERT INTO `creature_respawn` VALUES (93686, 1653534688, 0, 0);
INSERT INTO `creature_respawn` VALUES (93688, 1653531639, 0, 0);
INSERT INTO `creature_respawn` VALUES (93690, 1653531679, 0, 0);
INSERT INTO `creature_respawn` VALUES (93691, 1653534680, 0, 0);
INSERT INTO `creature_respawn` VALUES (93723, 1653534673, 0, 0);
INSERT INTO `creature_respawn` VALUES (140693, 1653536322, 0, 0);
INSERT INTO `creature_respawn` VALUES (140694, 1653536323, 0, 0);
INSERT INTO `creature_respawn` VALUES (140695, 1653536319, 0, 0);
INSERT INTO `creature_respawn` VALUES (140696, 1653536321, 0, 0);
INSERT INTO `creature_respawn` VALUES (140697, 1653536327, 0, 0);
INSERT INTO `creature_respawn` VALUES (301770, 1653536242, 0, 0);
INSERT INTO `creature_respawn` VALUES (301771, 1653536219, 0, 0);

-- ----------------------------
-- Table structure for game_event_status
-- ----------------------------
DROP TABLE IF EXISTS `game_event_status`;
CREATE TABLE `game_event_status`  (
  `event` smallint(6) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`event`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Game event system' ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of game_event_status
-- ----------------------------
INSERT INTO `game_event_status` VALUES (13);
INSERT INTO `game_event_status` VALUES (16);
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
INSERT INTO `game_event_status` VALUES (150);
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
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Grid Loading System' ROW_FORMAT = Compact;

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
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Player System' ROW_FORMAT = Dynamic;

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
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Player System' ROW_FORMAT = Dynamic;

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
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Player System' ROW_FORMAT = Dynamic;

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
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

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
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Groups' ROW_FORMAT = Fixed;

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
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Groups' ROW_FORMAT = Fixed;

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
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Guild System' ROW_FORMAT = Dynamic;

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
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Guild Eventlog' ROW_FORMAT = Fixed;

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
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Guild System' ROW_FORMAT = Fixed;

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
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Guild System' ROW_FORMAT = Dynamic;

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
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for instance_reset
-- ----------------------------
DROP TABLE IF EXISTS `instance_reset`;
CREATE TABLE `instance_reset`  (
  `map` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `reset_time` bigint(40) NOT NULL DEFAULT 0,
  PRIMARY KEY (`map`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of instance_reset
-- ----------------------------
INSERT INTO `instance_reset` VALUES (249, 1653796800);
INSERT INTO `instance_reset` VALUES (309, 1653537600);
INSERT INTO `instance_reset` VALUES (409, 1653710400);
INSERT INTO `instance_reset` VALUES (469, 1653710400);
INSERT INTO `instance_reset` VALUES (509, 1653537600);
INSERT INTO `instance_reset` VALUES (531, 1653710400);
INSERT INTO `instance_reset` VALUES (533, 1653710400);

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
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Item System' ROW_FORMAT = Compact;

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
INSERT INTO `item_instance` VALUES (1471, 2605, 4, 0, 0, 10, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (2000, 2320, 4, 0, 0, 20, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (2029, 2325, 4, 0, 0, 10, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (2071, 4340, 4, 0, 0, 10, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (2081, 4341, 4, 0, 0, 10, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (2091, 4342, 4, 0, 0, 10, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (2267, 10940, 4, 0, 0, 20, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (2297, 3737, 4, 0, 0, 1, 0, '-1 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (2355, 16650, 4, 0, 0, 1, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (2361, 16651, 4, 0, 0, 1, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (2371, 16742, 4, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (2537, 2996, 4, 0, 0, 10, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (2573, 6261, 4, 0, 0, 10, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (2583, 8343, 4, 0, 0, 20, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (2593, 10290, 4, 0, 0, 10, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (2603, 14341, 4, 0, 0, 20, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (2678, 3711, 4, 0, 0, 1, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (2692, 8749, 4, 0, 0, 1, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 45, 0, 0);
INSERT INTO `item_instance` VALUES (2888, 11206, 4, 0, 0, 1, 0, '-1 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (2934, 4330, 4, 4, 0, 1, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (3101, 11138, 4, 0, 0, 5, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (3118, 2997, 4, 0, 0, 10, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (3153, 2321, 4, 0, 0, 10, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (3373, 7472, 4, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '66 0 0 0 0 0 0 0 0 371 0 0 0 0 0 0 0 0 0 0 0 ', 188, 34, 0, 0);
INSERT INTO `item_instance` VALUES (3528, 2951, 4, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (3700, 11083, 4, 0, 0, 20, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (3759, 5215, 4, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '0 0 0 0 0 0 0 0 0 98 0 0 102 0 0 0 0 0 0 0 0 ', 1018, 54, 0, 0);
INSERT INTO `item_instance` VALUES (3850, 10939, 4, 0, 0, 10, 0, '-1 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (3852, 10939, 4, 0, 0, 3, 0, '-1 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (3853, 10939, 4, 0, 0, 10, 0, '-1 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (3856, 10939, 4, 0, 0, 10, 0, '-1 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (3857, 10939, 4, 0, 0, 10, 0, '-1 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (4067, 11164, 4, 0, 0, 1, 0, '-1 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (4129, 11083, 4, 0, 0, 17, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (4132, 11139, 4, 0, 0, 8, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (4242, 10978, 4, 0, 0, 20, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (4243, 10978, 4, 0, 0, 19, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (4244, 10978, 4, 0, 0, 1, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (4245, 10978, 4, 0, 0, 20, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (4246, 10978, 4, 0, 0, 20, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (4251, 4499, 4, 0, 0, 1, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (4252, 4499, 4, 0, 0, 1, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (4253, 4499, 4, 0, 0, 1, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (4254, 4499, 4, 0, 0, 1, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (4255, 4499, 4, 0, 0, 1, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (4256, 4499, 4, 0, 0, 1, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (4257, 4499, 4, 0, 0, 1, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (4258, 4499, 4, 0, 0, 1, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (4259, 4499, 4, 0, 0, 1, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (4260, 4499, 4, 0, 0, 1, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (4305, 10312, 4, 0, 0, 1, 0, '-1 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (4333, 10312, 4, 0, 0, 1, 0, '-1 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (4334, 1532, 4, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (4407, 3942, 4, 0, 0, 1, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 45, 0, 0);
INSERT INTO `item_instance` VALUES (4537, 11174, 4, 0, 0, 2, 0, '-1 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (4576, 11083, 4, 0, 0, 12, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (4578, 11082, 4, 0, 0, 6, 0, '-1 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (4588, 11137, 4, 0, 0, 20, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (4754, 11176, 4, 0, 0, 20, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (4822, 18706, 4, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (4895, 11082, 4, 0, 0, 7, 0, '-1 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (4899, 6260, 4, 0, 0, 10, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (4915, 6339, 4, 4, 0, 1, 0, '0 0 0 0 0 ', 1, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (5072, 11135, 4, 0, 0, 10, 0, '-1 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (5074, 11177, 4, 0, 0, 9, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (5076, 11134, 4, 0, 0, 10, 0, '-1 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (5372, 16745, 4, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (5373, 13331, 4, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (5382, 11083, 4, 0, 0, 20, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (5384, 10939, 4, 0, 0, 10, 0, '-1 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (5572, 8523, 4, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (5636, 11137, 4, 0, 0, 20, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (5689, 2324, 4, 0, 0, 10, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (5813, 14231, 4, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '0 0 0 0 0 0 0 0 0 2317 0 0 0 0 0 0 0 0 0 0 0 ', 2037, 24, 0, 0);
INSERT INTO `item_instance` VALUES (5831, 7146, 4, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (5840, 11135, 4, 0, 0, 10, 0, '-1 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (5964, 11083, 4, 0, 0, 20, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (5966, 11137, 4, 0, 0, 20, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (5969, 11134, 4, 0, 0, 2, 0, '-1 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (5983, 7722, 4, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (6053, 10938, 4, 0, 0, 9, 0, '-1 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (6055, 6803, 4, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (6058, 11175, 4, 0, 0, 5, 0, '-1 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (6059, 4550, 4, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (6135, 9945, 4, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '0 0 0 0 0 0 0 0 0 1118 0 0 0 0 0 0 0 0 0 0 0 ', 383, 25, 0, 0);
INSERT INTO `item_instance` VALUES (6223, 22526, 4, 0, 0, 2, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (6303, 16203, 4, 0, 0, 1, 0, '-1 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (6336, 11137, 4, 0, 0, 13, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (6414, 14434, 4, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '847 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 70, 0, 0);
INSERT INTO `item_instance` VALUES (6556, 4339, 4, 0, 0, 10, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (6593, 10300, 4, 0, 0, 1, 0, '-1 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (6663, 11137, 4, 0, 0, 20, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (6818, 11176, 4, 0, 0, 20, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (6819, 14343, 4, 0, 0, 3, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (6821, 16202, 4, 0, 0, 4, 0, '-1 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (6837, 4339, 4, 0, 0, 6, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (6847, 4339, 4, 0, 0, 10, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (6857, 4339, 4, 0, 0, 10, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (6867, 6193, 4, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (6882, 4338, 4, 0, 0, 1, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (6925, 16220, 4, 0, 0, 1, 0, '-1 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (6974, 14433, 4, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 55, 0, 0);
INSERT INTO `item_instance` VALUES (7016, 11178, 4, 0, 0, 1, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (7071, 10807, 4, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 65, 0, 0);
INSERT INTO `item_instance` VALUES (7072, 6212, 4, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (7078, 12465, 4, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '744 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (7079, 10828, 4, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '0 0 0 0 0 0 0 0 0 105 0 0 352 0 0 0 0 0 0 0 0 ', 1199, 65, 0, 0);
INSERT INTO `item_instance` VALUES (7080, 10454, 4, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (7083, 14344, 4, 0, 0, 1, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (7090, 4305, 4, 0, 0, 10, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (7091, 4305, 4, 0, 0, 10, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (7092, 4305, 4, 0, 0, 8, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (7097, 4305, 4, 0, 0, 10, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (7106, 4339, 4, 0, 0, 10, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (7119, 11137, 4, 0, 0, 20, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (7181, 10302, 4, 0, 0, 1, 0, '-1 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (7240, 11135, 4, 0, 0, 1, 0, '-1 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (7269, 16743, 4, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (7277, 16647, 4, 0, 0, 1, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (7335, 9680, 4, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '241 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 55, 0, 0);
INSERT INTO `item_instance` VALUES (7350, 8463, 4, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (7356, 11225, 4, 0, 0, 1, 0, '-1 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (7357, 11137, 4, 0, 0, 20, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (7358, 11174, 4, 0, 0, 10, 0, '-1 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (7359, 10998, 4, 0, 0, 1, 0, '-1 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (7385, 11084, 4, 0, 0, 20, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (7475, 11176, 4, 0, 0, 20, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (7500, 4291, 4, 0, 0, 20, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (7510, 2604, 4, 0, 0, 10, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (7520, 11084, 4, 0, 0, 18, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (7525, 10940, 4, 0, 0, 12, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (7624, 10300, 4, 0, 0, 1, 0, '-1 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);
INSERT INTO `item_instance` VALUES (7645, 14279, 4, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '723 0 0 0 0 0 0 0 0 2166 0 0 0 0 0 0 0 0 0 0 0 ', 1886, 25, 0, 0);
INSERT INTO `item_instance` VALUES (7752, 19022, 4, 0, 0, 1, 0, '0 0 0 0 0 ', 1, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 55, 0, 0);
INSERT INTO `item_instance` VALUES (7753, 8751, 4, 0, 0, 1, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 60, 0, 0);
INSERT INTO `item_instance` VALUES (7771, 3943, 4, 0, 0, 1, 0, '0 0 0 0 0 ', 0, '63 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 70, 0, 0);
INSERT INTO `item_instance` VALUES (7790, 4018, 4, 0, 0, 1, 0, '0 0 0 0 0 ', 0, '943 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 85, 0, 0);
INSERT INTO `item_instance` VALUES (7794, 8749, 4, 0, 0, 1, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 45, 0, 0);
INSERT INTO `item_instance` VALUES (7834, 4006, 4, 0, 0, 1, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 60, 0, 0);
INSERT INTO `item_instance` VALUES (7838, 3967, 4, 0, 0, 1, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 50, 0, 0);
INSERT INTO `item_instance` VALUES (7875, 11137, 4, 0, 0, 20, 0, '0 0 0 0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0);

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
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Item System' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for item_text
-- ----------------------------
DROP TABLE IF EXISTS `item_text`;
CREATE TABLE `item_text`  (
  `id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `text` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Item System' ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Mail System' ROW_FORMAT = Compact;

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
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Pet System' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for pet_spell
-- ----------------------------
DROP TABLE IF EXISTS `pet_spell`;
CREATE TABLE `pet_spell`  (
  `guid` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier',
  `spell` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Spell Identifier',
  `active` int(11) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`, `spell`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Pet System' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pet_spell_cooldown
-- ----------------------------
DROP TABLE IF EXISTS `pet_spell_cooldown`;
CREATE TABLE `pet_spell_cooldown`  (
  `guid` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier, Low part',
  `spell` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Spell Identifier',
  `time` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`, `spell`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

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
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Guild System' ROW_FORMAT = Dynamic;

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
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Guild System' ROW_FORMAT = Dynamic;

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
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

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
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Variable Saves' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of saved_variables
-- ----------------------------
INSERT INTO `saved_variables` VALUES (0, 0, 19137, 19144, 0);

-- ----------------------------
-- Table structure for world
-- ----------------------------
DROP TABLE IF EXISTS `world`;
CREATE TABLE `world`  (
  `map` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`map`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for worldstates
-- ----------------------------
DROP TABLE IF EXISTS `worldstates`;
CREATE TABLE `worldstates`  (
  `entry` int(11) NULL DEFAULT NULL,
  `value` int(11) NULL DEFAULT NULL,
  `comment` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  UNIQUE INDEX `key_entry`(`entry`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
