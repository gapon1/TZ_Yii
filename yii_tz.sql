/*
 Navicat Premium Data Transfer

 Source Server         : test
 Source Server Type    : MySQL
 Source Server Version : 50721
 Source Host           : localhost:3306
 Source Schema         : yii_tz

 Target Server Type    : MySQL
 Target Server Version : 50721
 File Encoding         : 65001

 Date: 24/05/2019 22:43:58
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_index` int(11) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `house_number` varchar(255) DEFAULT NULL,
  `office_number` varchar(255) DEFAULT NULL,
  `user_id` int(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of address
-- ----------------------------
BEGIN;
INSERT INTO `address` VALUES (1, 68874, 'USA', 'Montclair', '18  West Side Avenue', '22', '33', 1);
INSERT INTO `address` VALUES (3, 10932, 'MN', 'Washington', '2958  Stockert Hollow Road', '77', '33', 1);
INSERT INTO `address` VALUES (4, 98109, 'UA', 'Montclair', '18  West Side Avenue', '43', '564', 13);
INSERT INTO `address` VALUES (5, 55401, 'WA', 'Minneapolis', '2491  Sardis Station', '424', '5461', 15);
INSERT INTO `address` VALUES (6, 68874, 'NJ', 'Washington', '2958  Stockert Hollow Road', '32', '123', 3);
INSERT INTO `address` VALUES (7, 10932, 'WA', 'kiev', '2958  Stockert Hollow Road', '83', '46', 12);
INSERT INTO `address` VALUES (8, 68874, 'NJ', 'Montclair', '18  West Side Avenue', '31', '673', 5);
INSERT INTO `address` VALUES (9, 98109, 'WA', 'kiev', '4048  Penn Street', '73', '231', 9);
INSERT INTO `address` VALUES (10, 55401, 'MN', 'Minneapolis', '2491  Sardis Station', '7', '11', 10);
INSERT INTO `address` VALUES (11, 68874, 'NJ', 'Washington', '4048  Penn Street', '2', '35', 2);
INSERT INTO `address` VALUES (12, 10932, 'DV', 'kiev', '2491  Sardis Station', '89', '65', 8);
INSERT INTO `address` VALUES (13, 55401, 'UA', 'Minneapolis', '4048  Penn Street', '99', '89', 14);
INSERT INTO `address` VALUES (14, 98109, 'WA', 'Washington', '2491  Sardis Station', '653', '99', 4);
INSERT INTO `address` VALUES (15, 55401, 'BD', 'Minneapolis', '18  West Side Avenue', '32', '53', 6);
COMMIT;

-- ----------------------------
-- Table structure for migration
-- ----------------------------
DROP TABLE IF EXISTS `migration`;
CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of migration
-- ----------------------------
BEGIN;
INSERT INTO `migration` VALUES ('m000000_000000_base', 1558615523);
INSERT INTO `migration` VALUES ('m190523_123049_create_user_table', 1558615528);
INSERT INTO `migration` VALUES ('m190523_123148_create_address_table', 1558615718);
COMMIT;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `created_at` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
INSERT INTO `user` VALUES (1, 'Joe Z', 'qqqqqq', 'Joe Z', 'Jensen', 'женский', 'Thu-May-2019 15:27', 'oeZJensen@dayrep.com');
INSERT INTO `user` VALUES (2, 'Leroy V', 'gddbdfbdfbdfsb', 'Leroy V', 'Stokes', 'мужской', 'Fri-May-2019 15:25', 'LeroyVStokes@armyspy.com');
INSERT INTO `user` VALUES (4, 'Leota', 'dndndfnfgf', 'Leota', 'T. McKeown', 'мужской', 'Thu-May-2019 21:24', 'LeotaTMcKeown@armyspy.com');
INSERT INTO `user` VALUES (5, 'Mary', 'fn dbdfbdfb', 'Mary', 'J. Calhoun', 'нет информации', 'Thu-May-2019 21:24', 'MaryJCalhoun@dayrep.com');
INSERT INTO `user` VALUES (6, 'Ruth', 'qqqqqqqdfnfgnmf', 'Ruth', 'J. Santana', 'нет информации', 'Fri-May-2019 11:05', 'RuthJSantana@armyspy.com');
INSERT INTO `user` VALUES (7, 'Williamw', 'sdvsdbdnngf', 'William', 'C. Dufrene', 'мужской', 'Thu-May-2019 16:59', 'WilliamCDufrene@jourrapide.com');
INSERT INTO `user` VALUES (9, 'Jennifer', 'gginfnufgn', 'S. Bradford', 'S. Bradford', 'мужской', 'Thu-May-2019 21:14', 'JenniferSBradford@armyspy.com');
INSERT INTO `user` VALUES (10, 'Adrienne', 'bndfndndg', 'Adrienne', 'K. Rasmussen', 'женский', 'Thu-May-2019 21:24', 'AdrienneKRasmussen@rhyta.com');
INSERT INTO `user` VALUES (11, 'Ed D', 'ac5naGhi8', 'Ed D', 'Veras', 'женский', 'Thu-May-2019 21:27', 'EdDVeras@dayrep.com');
INSERT INTO `user` VALUES (12, 'Charles', 'wohS9eeg9noz', 'Charles', 'D. Washington', 'мужской', 'Thu-May-2019 21:48', 'CharlesDWashington@jourrapide.com');
INSERT INTO `user` VALUES (13, 'William', 'xxxxxxxxx', 'William D. Blackburn', 'Blackburn', 'мужской', 'Fri-May-2019 10:15', 'WilliamDBlackburn@dayrep.com');
INSERT INTO `user` VALUES (14, 'Janet', 'trtjrtjsetj', 'Janet', 'R. Schmid', 'женский', 'Fri-May-2019 11:05', 'JanetRSchmid@dayrep.com');
INSERT INTO `user` VALUES (15, 'Carlos', 'sdvsdbrh', 'Carlos', 'J. Ross', 'мужской', 'Fri-May-2019 11:15', 'CarlosJRoss@armyspy.com');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
