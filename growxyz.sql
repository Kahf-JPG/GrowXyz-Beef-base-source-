/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 100424
 Source Host           : localhost:3306
 Source Schema         : growxyz

 Target Server Type    : MySQL
 Target Server Version : 100424
 File Encoding         : 65001

 Date: 07/05/2022 09:06:39
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for alternative_accounts
-- ----------------------------
DROP TABLE IF EXISTS `alternative_accounts`;
CREATE TABLE `alternative_accounts`  (
  `ip_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `accounts` blob NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of alternative_accounts
-- ----------------------------
INSERT INTO `alternative_accounts` VALUES ('127.0.0.1', 0x020000000900726562696C6C696F6E09006C756B617473626F69);
INSERT INTO `alternative_accounts` VALUES ('192.168.1.2', 0x0200000007007368697265656E06006C756B617473);

-- ----------------------------
-- Table structure for guilds
-- ----------------------------
DROP TABLE IF EXISTS `guilds`;
CREATE TABLE `guilds`  (
  `guild_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `leader_id` int NOT NULL,
  `world_id` int NOT NULL,
  `notebook` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `statement` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `mascot_foreground` int NOT NULL,
  `mascot_background` int NOT NULL,
  `level` int NOT NULL,
  `exp` int NOT NULL,
  `math_exp` int NOT NULL,
  `members` blob NOT NULL,
  PRIMARY KEY (`guild_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of guilds
-- ----------------------------
INSERT INTO `guilds` VALUES (1, 'MyGuild', 1, 1, 'ASDASDASD', '`2Guild `4State`1ment', 1784, 558, 1, 0, 405000, 0x0200000001000000030200000000);

-- ----------------------------
-- Table structure for players
-- ----------------------------
DROP TABLE IF EXISTS `players`;
CREATE TABLE `players`  (
  `user_id` int NOT NULL,
  `role` int NOT NULL,
  `tank_id_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `raw_name` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `raw_pass` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `discord` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_ip_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `base_ip_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `relative_identifier` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `machine_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_login` tinyint NOT NULL,
  `gems` int NOT NULL DEFAULT 0,
  `total_punched` bigint NOT NULL DEFAULT 0,
  `clothes` blob NOT NULL,
  `inventory` blob NOT NULL,
  `character_state` blob NOT NULL,
  `character_level` blob NOT NULL,
  `state_flags` blob NOT NULL,
  `playmods` blob NOT NULL,
  `trade_history` blob NOT NULL,
  `notebook` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `heart_monitor` blob NOT NULL,
  `guild_id` int NOT NULL DEFAULT -1,
  `banner_bandolier` blob NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of players
-- ----------------------------
INSERT INTO `players` VALUES (1, 5, 'rebillion', 'Rebillion', 'Rebillion', 'myfkinpass', 'A@A.A', 'D#1', '127.0.0.1', '127.0.0.1', '01A2E8A30B8B1B5A0B1F85E3101025EF', '98:ee:cb:5c:7c:7e', 1, 0, 15, 0xFFB48A780000000000000000000000000000000000000000000000000000000000000000E42D000000000000, 0x14000000090000001200012000016200018A00019C00016801C08A0601A82501E42D01, 0x80800000000016430000824300007A4400007A440000AF43FFFFFFFFFFFFFFFF, 0x0100000000000000FA000000, 0x0000000000000000000000000000000000000000000000000100, 0x0200000060E42DE000AFC54D390000FFFFFFFFFFFFFFFF003DDC024486B267A18D0000100E00000000000000, 0x00000000, '', 0x01000000010000002200000021000000, 1, 0x8A06000003);
INSERT INTO `players` VALUES (2, 0, 'lukatsboi', 'LukatsBoi', 'LukatsBoi', 'myfkinpass', 'A@A.A', 'D#1', '127.0.0.1', '127.0.0.1', '01A2E8A30B8B1B5A0B1F85E3101025EF', '98:ee:cb:5c:7c:7e', 1, 0, 4, 0xFFB48A7800000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x14000000070000001200012000016200018A00019C00016801C8A82501, 0x80800000000016430000824300007A4400007A440000AF43FFFFFFFFFFFFFFFF, 0x0100000000000000FA000000, 0x0000000000000000000000000000000000000000000000000000, 0x00000000, 0x00000000, '', 0x00000000, 1, 0x0000000000);
INSERT INTO `players` VALUES (3, 0, 'shireen', 'Shireen', 'Shireen', 'myfkinpass', 'A@A.A', 'D#1', '192.168.1.2', '192.168.1.2', '01A2E8A30B8B1B5A0B1F85E3101025EF', '98:ee:cb:5c:7c:7e', 1, 0, 0, 0xFFB48A7800000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x14000000070000001200012000016200018A00019C00016801C8A82501, 0x80800000000016430000824300007A4400007A440000AF43FFFFFFFFFFFFFFFF, 0x0100000000000000FA000000, 0x0000000000000000000000000000000000000000000000000000, 0x00000000, 0x00000000, '', 0x00000000, -1, 0x0000000000);
INSERT INTO `players` VALUES (4, 5, 'lukats', 'Lukats', 'Lukats', 'myfkinpass', 'A@A.A', 'D#1', '192.168.1.2', '192.168.1.2', '01A2E8A30B8B1B5A0B1F85E3101025EF', '98:ee:cb:5c:7c:7e', 1, 0, 0, 0xFFB48A7800000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x14000000070000001200012000016200018A00019C00016801C8A82501, 0x80800000000016430000824300007A4400007A440000AF43FFFFFFFFFFFFFFFF, 0x0100000000000000FA000000, 0x0000000000000000000000000000000000000000000000000000, 0x00000000, 0x00000000, '', 0x00000000, -1, 0x0000000000);

-- ----------------------------
-- Table structure for server_data
-- ----------------------------
DROP TABLE IF EXISTS `server_data`;
CREATE TABLE `server_data`  (
  `user_identifier` int NOT NULL,
  `guild_identifier` int NOT NULL,
  `world_identifier` int NOT NULL,
  `online_players` int NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of server_data
-- ----------------------------
INSERT INTO `server_data` VALUES (5, 2, 2, 0);

-- ----------------------------
-- Table structure for worlds
-- ----------------------------
DROP TABLE IF EXISTS `worlds`;
CREATE TABLE `worlds`  (
  `world_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `width` int NOT NULL,
  `height` int NOT NULL,
  `owner_user_id` int NOT NULL,
  `nuked` tinyint NOT NULL,
  `jammed` tinyint NOT NULL,
  `punch_jammed` tinyint NOT NULL,
  `zombie_jammed` tinyint NOT NULL,
  `guardian_pineapple` tinyint NOT NULL,
  `mini_mod` tinyint NOT NULL,
  `balloon_jammed` tinyint NOT NULL,
  `anti_gravity` tinyint NOT NULL,
  `base_weather_id` int NOT NULL,
  `active_weather_id` int NOT NULL,
  `world_objects` blob NOT NULL,
  `guild_id` int NOT NULL DEFAULT -1
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of worlds
-- ----------------------------
INSERT INTO `worlds` VALUES (1, 'START', 100, 60, 1, 0, 0, 0, 0, 0, 0, 0, 0, 4, 41, 0x0000000001000000, 1);

SET FOREIGN_KEY_CHECKS = 1;
