/*
 Navicat Premium Data Transfer

 Source Server         : localMysql
 Source Server Type    : MySQL
 Source Server Version : 50718
 Source Host           : localhost:3306
 Source Schema         : manager_system

 Target Server Type    : MySQL
 Target Server Version : 50718
 File Encoding         : 65001

 Date: 01/01/2020 14:57:34
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `password` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `email` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `rid` int(11) DEFAULT NULL,
  `status` int(2) DEFAULT NULL,
  `createtime` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_admin`(`rid`) USING BTREE,
  CONSTRAINT `FK_admin` FOREIGN KEY (`rid`) REFERENCES `role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (15, 'superadmin', '$2a$10$EoeTmeoeNPBDH2g5qM.tYuQAkkQTi/uL..WszntwqEHzQkkAMPScC', '13333634203', '1710031565@qq.com', 1, 1, '2019-07-18');
INSERT INTO `admin` VALUES (27, 'superNice', '$2a$10$EoeTmeoeNPBDH2g5qM.tYuQAkkQTi/uL..WszntwqEHzQkkAMPScC', '12589745201', 'wdd@qq.com', 2, 1, '2019-07-19');

-- ----------------------------
-- Table structure for icon
-- ----------------------------
DROP TABLE IF EXISTS `icon`;
CREATE TABLE `icon`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of icon
-- ----------------------------
INSERT INTO `icon` VALUES (1, 'fa-home');
INSERT INTO `icon` VALUES (2, 'fa-book');
INSERT INTO `icon` VALUES (3, 'fa-pencil');

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `uri` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `logTime` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 816 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES (121, 'superadmin', '/manager/console', '2019-07-25 08:09:54');
INSERT INTO `log` VALUES (122, 'superadmin', '/manager/treeMenu', '2019-07-25 08:09:55');
INSERT INTO `log` VALUES (123, 'superadmin', '/manager/log', '2019-07-25 08:09:56');
INSERT INTO `log` VALUES (124, 'superadmin', '/manager/index', '2019-07-25 08:10:42');
INSERT INTO `log` VALUES (125, 'superadmin', '/manager/console', '2019-07-25 08:10:42');
INSERT INTO `log` VALUES (126, 'superadmin', '/manager/treeMenu', '2019-07-25 08:10:43');
INSERT INTO `log` VALUES (127, 'superadmin', '/manager/log', '2019-07-25 08:10:55');
INSERT INTO `log` VALUES (128, 'superadmin', '/manager/index', '2019-07-25 08:19:30');
INSERT INTO `log` VALUES (130, 'superadmin', '/manager/treeMenu', '2019-07-25 08:19:30');
INSERT INTO `log` VALUES (131, 'superadmin', '/manager/log', '2019-07-25 08:19:32');
INSERT INTO `log` VALUES (132, 'superadmin', '/manager/delLog', '2019-07-25 08:19:38');
INSERT INTO `log` VALUES (133, 'superadmin', '/manager/log', '2019-07-25 08:19:38');
INSERT INTO `log` VALUES (134, 'superadmin', '/manager/delLog', '2019-07-25 08:19:48');
INSERT INTO `log` VALUES (135, 'superadmin', '/manager/log', '2019-07-25 08:19:48');
INSERT INTO `log` VALUES (136, 'superadmin', '/manager/admin', '2019-07-25 08:20:03');
INSERT INTO `log` VALUES (137, 'superadmin', '/manager/adminList', '2019-07-25 08:20:03');
INSERT INTO `log` VALUES (138, 'superadmin', '/manager/index', '2019-07-25 08:21:09');
INSERT INTO `log` VALUES (139, 'superadmin', '/manager/console', '2019-07-25 08:21:09');
INSERT INTO `log` VALUES (140, 'superadmin', '/manager/treeMenu', '2019-07-25 08:21:09');
INSERT INTO `log` VALUES (141, 'superadmin', '/manager/log', '2019-07-25 08:21:10');
INSERT INTO `log` VALUES (142, 'superadmin', '/manager/log', '2019-07-25 08:21:24');
INSERT INTO `log` VALUES (143, 'superadmin', '/manager/template/search.html', '2019-07-25 08:21:35');
INSERT INTO `log` VALUES (144, 'superadmin', '/manager/app/message/index.html', '2019-07-25 08:21:41');
INSERT INTO `log` VALUES (145, 'superadmin', '/manager/set/user/info.html', '2019-07-25 08:21:47');
INSERT INTO `log` VALUES (146, 'superadmin', '/manager/index', '2019-07-25 08:29:50');
INSERT INTO `log` VALUES (147, 'superadmin', '/manager/console', '2019-07-25 08:29:50');
INSERT INTO `log` VALUES (148, 'superadmin', '/manager/treeMenu', '2019-07-25 08:29:51');
INSERT INTO `log` VALUES (149, 'superadmin', '/manager/set/user/password.html', '2019-07-25 08:29:56');
INSERT INTO `log` VALUES (150, 'superadmin', '/manager/set/user/password.html', '2019-07-25 08:30:22');
INSERT INTO `log` VALUES (151, 'superadmin', '/manager/index', '2019-07-25 08:32:02');
INSERT INTO `log` VALUES (152, 'superadmin', '/manager/console', '2019-07-25 08:32:02');
INSERT INTO `log` VALUES (153, 'superadmin', '/manager/treeMenu', '2019-07-25 08:32:02');
INSERT INTO `log` VALUES (154, 'superadmin', '/manager/password', '2019-07-25 08:32:04');
INSERT INTO `log` VALUES (155, 'superadmin', '/manager/index', '2019-07-25 08:43:52');
INSERT INTO `log` VALUES (156, 'superadmin', '/manager/console', '2019-07-25 08:43:52');
INSERT INTO `log` VALUES (157, 'superadmin', '/manager/treeMenu', '2019-07-25 08:43:52');
INSERT INTO `log` VALUES (158, 'superadmin', '/manager/password', '2019-07-25 08:43:55');
INSERT INTO `log` VALUES (159, 'superadmin', '/manager/editPassword', '2019-07-25 08:44:03');
INSERT INTO `log` VALUES (160, 'superadmin', '/manager/index', '2019-07-25 08:45:04');
INSERT INTO `log` VALUES (161, 'superadmin', '/manager/console', '2019-07-25 08:45:04');
INSERT INTO `log` VALUES (162, 'superadmin', '/manager/treeMenu', '2019-07-25 08:45:04');
INSERT INTO `log` VALUES (163, 'superadmin', '/manager/password', '2019-07-25 08:45:06');
INSERT INTO `log` VALUES (164, 'superadmin', '/manager/editPassword', '2019-07-25 08:45:13');
INSERT INTO `log` VALUES (165, 'superadmin', '/manager/index', '2019-07-25 08:46:25');
INSERT INTO `log` VALUES (166, 'superadmin', '/manager/console', '2019-07-25 08:46:25');
INSERT INTO `log` VALUES (167, 'superadmin', '/manager/treeMenu', '2019-07-25 08:46:26');
INSERT INTO `log` VALUES (168, 'superadmin', '/manager/password', '2019-07-25 08:46:28');
INSERT INTO `log` VALUES (169, 'superadmin', '/manager/editPassword', '2019-07-25 08:46:52');
INSERT INTO `log` VALUES (170, 'superadmin', '/manager/editPassword', '2019-07-25 08:47:00');
INSERT INTO `log` VALUES (171, 'superadmin', '/manager/editPassword', '2019-07-25 08:48:03');
INSERT INTO `log` VALUES (172, 'superadmin', '/manager/index', '2019-07-25 08:50:33');
INSERT INTO `log` VALUES (173, 'superadmin', '/manager/console', '2019-07-25 08:50:33');
INSERT INTO `log` VALUES (174, 'superadmin', '/manager/treeMenu', '2019-07-25 08:50:33');
INSERT INTO `log` VALUES (175, 'superadmin', '/manager/password', '2019-07-25 08:50:36');
INSERT INTO `log` VALUES (176, 'superadmin', '/manager/editPassword', '2019-07-25 08:50:57');
INSERT INTO `log` VALUES (177, 'superadmin', '/manager/index', '2019-07-25 08:51:25');
INSERT INTO `log` VALUES (178, 'superadmin', '/manager/console', '2019-07-25 08:51:25');
INSERT INTO `log` VALUES (179, 'superadmin', '/manager/treeMenu', '2019-07-25 08:51:25');
INSERT INTO `log` VALUES (180, 'superadmin', '/manager/admin', '2019-07-25 08:51:27');
INSERT INTO `log` VALUES (181, 'superadmin', '/manager/adminList', '2019-07-25 08:51:27');
INSERT INTO `log` VALUES (182, 'superadmin', '/manager/addAdmin', '2019-07-25 08:51:29');
INSERT INTO `log` VALUES (183, 'superadmin', '/manager/addAdmin', '2019-07-25 08:51:33');
INSERT INTO `log` VALUES (184, 'superadmin', '/manager/admin', '2019-07-25 08:51:35');
INSERT INTO `log` VALUES (185, 'superadmin', '/manager/adminList', '2019-07-25 08:51:35');
INSERT INTO `log` VALUES (186, 'superadmin', '/manager/index', '2019-07-25 09:42:56');
INSERT INTO `log` VALUES (187, 'superadmin', '/manager/console', '2019-07-25 09:42:56');
INSERT INTO `log` VALUES (188, 'superadmin', '/manager/treeMenu', '2019-07-25 09:42:56');
INSERT INTO `log` VALUES (189, 'superadmin', '/manager/password', '2019-07-25 09:43:01');
INSERT INTO `log` VALUES (190, 'superadmin', '/manager/editPassword', '2019-07-25 09:43:12');
INSERT INTO `log` VALUES (191, 'superadmin', '/manager/index', '2019-07-25 09:43:23');
INSERT INTO `log` VALUES (192, 'superadmin', '/manager/console', '2019-07-25 09:43:23');
INSERT INTO `log` VALUES (193, 'superadmin', '/manager/treeMenu', '2019-07-25 09:43:23');
INSERT INTO `log` VALUES (194, 'superadmin', '/manager/admin', '2019-07-25 09:43:30');
INSERT INTO `log` VALUES (195, 'superadmin', '/manager/adminList', '2019-07-25 09:43:30');
INSERT INTO `log` VALUES (196, 'superadmin', '/manager/addAdmin', '2019-07-25 09:43:32');
INSERT INTO `log` VALUES (197, 'superadmin', '/manager/addAdmin', '2019-07-25 09:43:35');
INSERT INTO `log` VALUES (198, 'superadmin', '/manager/admin', '2019-07-25 09:43:36');
INSERT INTO `log` VALUES (199, 'superadmin', '/manager/adminList', '2019-07-25 09:43:36');
INSERT INTO `log` VALUES (200, 'superadmin', '/manager/index', '2019-07-25 09:43:44');
INSERT INTO `log` VALUES (201, 'superadmin', '/manager/console', '2019-07-25 09:43:44');
INSERT INTO `log` VALUES (202, 'superadmin', '/manager/treeMenu', '2019-07-25 09:43:44');
INSERT INTO `log` VALUES (203, 'superadmin', '/manager/console', '2019-07-25 09:45:05');
INSERT INTO `log` VALUES (204, 'superadmin', '/manager/index', '2019-07-25 09:47:05');
INSERT INTO `log` VALUES (205, 'superadmin', '/manager/console', '2019-07-25 09:47:06');
INSERT INTO `log` VALUES (206, 'superadmin', '/manager/treeMenu', '2019-07-25 09:47:06');
INSERT INTO `log` VALUES (207, 'superadmin', '/manager/admin', '2019-07-25 09:47:08');
INSERT INTO `log` VALUES (208, 'superadmin', '/manager/adminList', '2019-07-25 09:47:08');
INSERT INTO `log` VALUES (209, 'superadmin', '/manager/addAdmin', '2019-07-25 09:47:10');
INSERT INTO `log` VALUES (210, 'superadmin', '/manager/role', '2019-07-25 09:47:48');
INSERT INTO `log` VALUES (211, 'superadmin', '/manager/roleList', '2019-07-25 09:47:49');
INSERT INTO `log` VALUES (212, 'superadmin', '/manager/permission', '2019-07-25 09:47:49');
INSERT INTO `log` VALUES (213, 'superadmin', '/manager/permissionList', '2019-07-25 09:47:50');
INSERT INTO `log` VALUES (214, 'superadmin', '/manager/admin', '2019-07-25 09:47:54');
INSERT INTO `log` VALUES (215, 'superadmin', '/manager/adminList', '2019-07-25 09:47:54');
INSERT INTO `log` VALUES (216, 'superadmin', '/manager/role', '2019-07-25 09:47:55');
INSERT INTO `log` VALUES (217, 'superadmin', '/manager/roleList', '2019-07-25 09:47:55');
INSERT INTO `log` VALUES (218, 'superadmin', '/manager/log', '2019-07-25 09:47:58');
INSERT INTO `log` VALUES (219, 'superadmin', '/manager/index', '2019-07-25 09:52:50');
INSERT INTO `log` VALUES (220, 'superadmin', '/manager/console', '2019-07-25 09:52:50');
INSERT INTO `log` VALUES (221, 'superadmin', '/manager/treeMenu', '2019-07-25 09:52:51');
INSERT INTO `log` VALUES (222, 'superadmin', '/manager/admin', '2019-07-25 09:52:53');
INSERT INTO `log` VALUES (223, 'superadmin', '/manager/adminList', '2019-07-25 09:52:53');
INSERT INTO `log` VALUES (224, 'superadmin', '/manager/role', '2019-07-25 09:52:56');
INSERT INTO `log` VALUES (225, 'superadmin', '/manager/roleList', '2019-07-25 09:52:56');
INSERT INTO `log` VALUES (226, 'superadmin', '/manager/permission', '2019-07-25 09:52:57');
INSERT INTO `log` VALUES (227, 'superadmin', '/manager/permissionList', '2019-07-25 09:52:57');
INSERT INTO `log` VALUES (228, 'superadmin', '/manager/allotPer', '2019-07-25 09:52:59');
INSERT INTO `log` VALUES (229, 'superadmin', '/manager/permissionList', '2019-07-25 09:52:59');
INSERT INTO `log` VALUES (230, 'superadmin', '/manager/addAdmin', '2019-07-25 09:53:47');
INSERT INTO `log` VALUES (231, 'superadmin', '/manager/addAdmin', '2019-07-25 09:54:01');
INSERT INTO `log` VALUES (232, 'superadmin', '/manager/index', '2019-07-25 09:57:43');
INSERT INTO `log` VALUES (233, 'superadmin', '/manager/console', '2019-07-25 09:57:43');
INSERT INTO `log` VALUES (234, 'superadmin', '/manager/treeMenu', '2019-07-25 09:57:43');
INSERT INTO `log` VALUES (235, 'superadmin', '/manager/addAdmin', '2019-07-25 09:57:58');
INSERT INTO `log` VALUES (236, 'superadmin', '/manager/addAdmin', '2019-07-25 09:59:26');
INSERT INTO `log` VALUES (237, 'superadmin', '/manager/index', '2019-07-25 10:01:06');
INSERT INTO `log` VALUES (238, 'superadmin', '/manager/console', '2019-07-25 10:01:06');
INSERT INTO `log` VALUES (239, 'superadmin', '/manager/treeMenu', '2019-07-25 10:01:06');
INSERT INTO `log` VALUES (240, 'superadmin', '/manager/addAdmin', '2019-07-25 10:01:24');
INSERT INTO `log` VALUES (241, 'superadmin', '/manager/index', '2019-07-25 10:10:42');
INSERT INTO `log` VALUES (242, 'superadmin', '/manager/console', '2019-07-25 10:10:42');
INSERT INTO `log` VALUES (243, 'superadmin', '/manager/treeMenu', '2019-07-25 10:10:43');
INSERT INTO `log` VALUES (244, 'superadmin', '/manager/info', '2019-07-25 10:10:45');
INSERT INTO `log` VALUES (245, 'superadmin', '/manager/index', '2019-07-25 10:12:06');
INSERT INTO `log` VALUES (246, 'superadmin', '/manager/console', '2019-07-25 10:12:06');
INSERT INTO `log` VALUES (247, 'superadmin', '/manager/treeMenu', '2019-07-25 10:12:06');
INSERT INTO `log` VALUES (248, 'superadmin', '/manager/info', '2019-07-25 10:12:09');
INSERT INTO `log` VALUES (249, 'superadmin', '/manager/index', '2019-07-25 10:14:46');
INSERT INTO `log` VALUES (250, 'superadmin', '/manager/console', '2019-07-25 10:14:46');
INSERT INTO `log` VALUES (251, 'superadmin', '/manager/treeMenu', '2019-07-25 10:14:46');
INSERT INTO `log` VALUES (252, 'superadmin', '/manager/info', '2019-07-25 10:14:48');
INSERT INTO `log` VALUES (253, 'superadmin', '/manager/index', '2019-07-25 10:20:27');
INSERT INTO `log` VALUES (254, 'superadmin', '/manager/console', '2019-07-25 10:20:27');
INSERT INTO `log` VALUES (255, 'superadmin', '/manager/treeMenu', '2019-07-25 10:20:28');
INSERT INTO `log` VALUES (256, 'superadmin', '/manager/info', '2019-07-25 10:20:30');
INSERT INTO `log` VALUES (257, 'superadmin', '/manager/index', '2019-07-25 10:23:47');
INSERT INTO `log` VALUES (258, 'superadmin', '/manager/console', '2019-07-25 10:23:47');
INSERT INTO `log` VALUES (259, 'superadmin', '/manager/treeMenu', '2019-07-25 10:23:48');
INSERT INTO `log` VALUES (260, 'superadmin', '/manager/info', '2019-07-25 10:23:51');
INSERT INTO `log` VALUES (261, 'superadmin', '/manager/index', '2019-07-25 10:24:24');
INSERT INTO `log` VALUES (262, 'superadmin', '/manager/console', '2019-07-25 10:24:24');
INSERT INTO `log` VALUES (263, 'superadmin', '/manager/treeMenu', '2019-07-25 10:24:24');
INSERT INTO `log` VALUES (264, 'superadmin', '/manager/info', '2019-07-25 10:24:26');
INSERT INTO `log` VALUES (265, 'superadmin', '/manager/index', '2019-07-25 10:28:53');
INSERT INTO `log` VALUES (266, 'superadmin', '/manager/console', '2019-07-25 10:28:53');
INSERT INTO `log` VALUES (267, 'superadmin', '/manager/treeMenu', '2019-07-25 10:28:53');
INSERT INTO `log` VALUES (268, 'superadmin', '/manager/info', '2019-07-25 10:28:56');
INSERT INTO `log` VALUES (269, 'superadmin', '/manager/index', '2019-07-25 10:29:54');
INSERT INTO `log` VALUES (270, 'superadmin', '/manager/console', '2019-07-25 10:29:54');
INSERT INTO `log` VALUES (271, 'superadmin', '/manager/treeMenu', '2019-07-25 10:29:55');
INSERT INTO `log` VALUES (272, 'superadmin', '/manager/info', '2019-07-25 10:29:57');
INSERT INTO `log` VALUES (273, 'superadmin', '/manager/info', '2019-07-25 10:30:10');
INSERT INTO `log` VALUES (274, 'superadmin', '/manager/info', '2019-07-25 10:30:10');
INSERT INTO `log` VALUES (275, 'superadmin', '/manager/info', '2019-07-25 10:30:11');
INSERT INTO `log` VALUES (276, 'superadmin', '/manager/info', '2019-07-25 10:30:11');
INSERT INTO `log` VALUES (277, 'superadmin', '/manager/info', '2019-07-25 10:30:11');
INSERT INTO `log` VALUES (278, 'superadmin', '/manager/info', '2019-07-25 10:30:11');
INSERT INTO `log` VALUES (279, 'superadmin', '/manager/info', '2019-07-25 10:30:11');
INSERT INTO `log` VALUES (280, 'superadmin', '/manager/info', '2019-07-25 10:30:11');
INSERT INTO `log` VALUES (281, 'superadmin', '/manager/info', '2019-07-25 10:30:11');
INSERT INTO `log` VALUES (282, 'superadmin', '/manager/info', '2019-07-25 10:30:15');
INSERT INTO `log` VALUES (283, 'superadmin', '/manager/info', '2019-07-25 10:30:15');
INSERT INTO `log` VALUES (284, 'superadmin', '/manager/index', '2019-07-25 10:31:01');
INSERT INTO `log` VALUES (285, 'superadmin', '/manager/console', '2019-07-25 10:31:01');
INSERT INTO `log` VALUES (286, 'superadmin', '/manager/treeMenu', '2019-07-25 10:31:02');
INSERT INTO `log` VALUES (287, 'superadmin', '/manager/info', '2019-07-25 10:31:03');
INSERT INTO `log` VALUES (288, 'superadmin', '/manager/info', '2019-07-25 10:31:04');
INSERT INTO `log` VALUES (289, 'superadmin', '/manager/info', '2019-07-25 10:31:06');
INSERT INTO `log` VALUES (290, 'superadmin', '/manager/info', '2019-07-25 10:31:07');
INSERT INTO `log` VALUES (291, 'superadmin', '/manager/addAdmin', '2019-07-25 10:31:29');
INSERT INTO `log` VALUES (292, 'superadmin', '/manager/index', '2019-07-25 10:34:38');
INSERT INTO `log` VALUES (293, 'superadmin', '/manager/console', '2019-07-25 10:34:38');
INSERT INTO `log` VALUES (294, 'superadmin', '/manager/treeMenu', '2019-07-25 10:34:38');
INSERT INTO `log` VALUES (295, 'superadmin', '/manager/info', '2019-07-25 10:34:40');
INSERT INTO `log` VALUES (296, 'superadmin', '/manager/index', '2019-07-25 10:36:48');
INSERT INTO `log` VALUES (297, 'superadmin', '/manager/console', '2019-07-25 10:36:48');
INSERT INTO `log` VALUES (298, 'superadmin', '/manager/treeMenu', '2019-07-25 10:36:48');
INSERT INTO `log` VALUES (299, 'superadmin', '/manager/info', '2019-07-25 10:36:50');
INSERT INTO `log` VALUES (300, 'superadmin', '/manager/addAdmin', '2019-07-25 10:37:58');
INSERT INTO `log` VALUES (301, 'superadmin', '/manager/index', '2019-07-25 10:43:15');
INSERT INTO `log` VALUES (302, 'superadmin', '/manager/console', '2019-07-25 10:43:15');
INSERT INTO `log` VALUES (303, 'superadmin', '/manager/treeMenu', '2019-07-25 10:43:16');
INSERT INTO `log` VALUES (304, 'superadmin', '/manager/info', '2019-07-25 10:43:20');
INSERT INTO `log` VALUES (305, 'superadminNice', '/manager/editInfo', '2019-07-25 10:43:56');
INSERT INTO `log` VALUES (306, 'superadminNice', '/manager/index', '2019-07-25 10:43:58');
INSERT INTO `log` VALUES (307, 'superadminNice', '/manager/console', '2019-07-25 10:43:58');
INSERT INTO `log` VALUES (308, 'superadminNice', '/manager/treeMenu', '2019-07-25 10:43:58');
INSERT INTO `log` VALUES (309, 'superadminNice', '/manager/log', '2019-07-25 10:44:00');
INSERT INTO `log` VALUES (310, 'superadminNice', '/manager/info', '2019-07-25 10:44:04');
INSERT INTO `log` VALUES (311, 'superadmin', '/manager/index', '2019-07-25 20:45:21');
INSERT INTO `log` VALUES (312, 'superadmin', '/manager/console', '2019-07-25 20:45:22');
INSERT INTO `log` VALUES (313, 'superadmin', '/manager/treeMenu', '2019-07-25 20:45:22');
INSERT INTO `log` VALUES (314, 'superadmin', '/manager/index', '2019-07-25 20:46:07');
INSERT INTO `log` VALUES (315, 'superadmin', '/manager/console', '2019-07-25 20:46:07');
INSERT INTO `log` VALUES (316, 'superadmin', '/manager/treeMenu', '2019-07-25 20:46:07');
INSERT INTO `log` VALUES (317, 'superadmin', '/manager/index', '2019-07-25 20:46:59');
INSERT INTO `log` VALUES (318, 'superadmin', '/manager/console', '2019-07-25 20:47:00');
INSERT INTO `log` VALUES (319, 'superadmin', '/manager/treeMenu', '2019-07-25 20:47:00');
INSERT INTO `log` VALUES (320, 'superadmin', '/manager/admin', '2019-07-25 20:47:01');
INSERT INTO `log` VALUES (321, 'superadmin', '/manager/adminList', '2019-07-25 20:47:02');
INSERT INTO `log` VALUES (322, 'superadmin', '/manager/addAdmin', '2019-07-25 20:47:17');
INSERT INTO `log` VALUES (323, 'superadmin', '/manager/addAdmin', '2019-07-25 20:47:19');
INSERT INTO `log` VALUES (324, 'superadmin', '/manager/role', '2019-07-25 20:47:32');
INSERT INTO `log` VALUES (325, 'superadmin', '/manager/roleList', '2019-07-25 20:47:32');
INSERT INTO `log` VALUES (326, 'superadmin', '/manager/allotPer', '2019-07-25 20:47:45');
INSERT INTO `log` VALUES (327, 'superadmin', '/manager/permissionList', '2019-07-25 20:47:45');
INSERT INTO `log` VALUES (328, 'superadmin', '/manager/permission', '2019-07-25 20:47:59');
INSERT INTO `log` VALUES (329, 'superadmin', '/manager/permissionList', '2019-07-25 20:48:00');
INSERT INTO `log` VALUES (330, 'superadmin', '/manager/log', '2019-07-25 20:48:11');
INSERT INTO `log` VALUES (331, 'superadmin', '/manager/password', '2019-07-25 20:48:23');
INSERT INTO `log` VALUES (332, 'superadmin', '/manager/info', '2019-07-25 20:48:33');
INSERT INTO `log` VALUES (333, 'superadmin', '/manager/index', '2019-07-26 14:20:51');
INSERT INTO `log` VALUES (334, 'superadmin', '/manager/console', '2019-07-26 14:20:51');
INSERT INTO `log` VALUES (335, 'superadmin', '/manager/treeMenu', '2019-07-26 14:20:51');
INSERT INTO `log` VALUES (336, 'superadmin', '/manager/index', '2019-07-26 14:21:07');
INSERT INTO `log` VALUES (337, 'superadmin', '/manager/console', '2019-07-26 14:21:07');
INSERT INTO `log` VALUES (338, 'superadmin', '/manager/treeMenu', '2019-07-26 14:21:07');
INSERT INTO `log` VALUES (339, 'superadmin', '/manager/index', '2019-07-26 14:21:09');
INSERT INTO `log` VALUES (340, 'superadmin', '/manager/console', '2019-07-26 14:21:09');
INSERT INTO `log` VALUES (341, 'superadmin', '/manager/treeMenu', '2019-07-26 14:21:10');
INSERT INTO `log` VALUES (342, 'superadmin', '/manager/index', '2019-07-26 14:21:13');
INSERT INTO `log` VALUES (343, 'superadmin', '/manager/console', '2019-07-26 14:21:13');
INSERT INTO `log` VALUES (344, 'superadmin', '/manager/treeMenu', '2019-07-26 14:21:14');
INSERT INTO `log` VALUES (345, 'superadmin', '/manager/index', '2019-07-26 14:21:20');
INSERT INTO `log` VALUES (346, 'superadmin', '/manager/console', '2019-07-26 14:21:20');
INSERT INTO `log` VALUES (347, 'superadmin', '/manager/treeMenu', '2019-07-26 14:21:20');
INSERT INTO `log` VALUES (348, 'superadmin', '/manager/index', '2019-07-26 14:21:21');
INSERT INTO `log` VALUES (349, 'superadmin', '/manager/console', '2019-07-26 14:21:21');
INSERT INTO `log` VALUES (350, 'superadmin', '/manager/treeMenu', '2019-07-26 14:21:22');
INSERT INTO `log` VALUES (351, 'superadmin', '/manager/hello', '2019-07-26 14:23:03');
INSERT INTO `log` VALUES (352, 'superadmin', '/manager/treeMenu', '2019-07-26 14:23:06');
INSERT INTO `log` VALUES (353, 'superadmin', '/manager/index', '2019-07-27 08:53:13');
INSERT INTO `log` VALUES (354, 'superadmin', '/manager/console', '2019-07-27 08:53:13');
INSERT INTO `log` VALUES (355, 'superadmin', '/manager/treeMenu', '2019-07-27 08:53:13');
INSERT INTO `log` VALUES (356, 'superadmin', '/manager/index', '2019-07-27 08:59:03');
INSERT INTO `log` VALUES (357, 'superadmin', '/manager/console', '2019-07-27 08:59:03');
INSERT INTO `log` VALUES (358, 'superadmin', '/manager/treeMenu', '2019-07-27 08:59:03');
INSERT INTO `log` VALUES (359, 'superadmin', '/manager/index', '2019-07-27 08:59:23');
INSERT INTO `log` VALUES (360, 'superadmin', '/manager/console', '2019-07-27 08:59:23');
INSERT INTO `log` VALUES (361, 'superadmin', '/manager/treeMenu', '2019-07-27 08:59:24');
INSERT INTO `log` VALUES (362, 'superadmin', '/manager/index', '2019-07-27 09:11:49');
INSERT INTO `log` VALUES (363, 'superadmin', '/manager/console', '2019-07-27 09:11:49');
INSERT INTO `log` VALUES (364, 'superadmin', '/manager/treeMenu', '2019-07-27 09:11:49');
INSERT INTO `log` VALUES (365, 'superadmin', '/manager/admin', '2019-07-27 09:11:52');
INSERT INTO `log` VALUES (366, 'superadmin', '/manager/adminList', '2019-07-27 09:11:53');
INSERT INTO `log` VALUES (367, 'superadmin', '/manager/role', '2019-07-27 09:11:54');
INSERT INTO `log` VALUES (368, 'superadmin', '/manager/roleList', '2019-07-27 09:11:55');
INSERT INTO `log` VALUES (369, 'superadmin', '/manager/permission', '2019-07-27 09:11:57');
INSERT INTO `log` VALUES (370, 'superadmin', '/manager/permissionList', '2019-07-27 09:11:57');
INSERT INTO `log` VALUES (371, 'superadmin', '/manager/index', '2019-12-25 11:48:18');
INSERT INTO `log` VALUES (372, 'superadmin', '/manager/console', '2019-12-25 11:48:18');
INSERT INTO `log` VALUES (373, 'superadmin', '/manager/treeMenu', '2019-12-25 11:48:19');
INSERT INTO `log` VALUES (374, 'superadmin', '/manager/info', '2019-12-25 11:48:30');
INSERT INTO `log` VALUES (375, 'superadmin', '/manager/log', '2019-12-25 11:48:33');
INSERT INTO `log` VALUES (376, 'superadmin', '/manager/index', '2019-12-25 11:48:44');
INSERT INTO `log` VALUES (377, 'superadmin', '/manager/console', '2019-12-25 11:48:45');
INSERT INTO `log` VALUES (378, 'superadmin', '/manager/treeMenu', '2019-12-25 11:48:45');
INSERT INTO `log` VALUES (379, 'superadmin', '/manager/admin', '2019-12-25 11:48:46');
INSERT INTO `log` VALUES (380, 'superadmin', '/manager/adminList', '2019-12-25 11:48:46');
INSERT INTO `log` VALUES (381, 'superadmin', '/manager/addAdmin', '2019-12-25 11:48:55');
INSERT INTO `log` VALUES (382, 'superadmin', '/manager/role', '2019-12-25 11:49:01');
INSERT INTO `log` VALUES (383, 'superadmin', '/manager/roleList', '2019-12-25 11:49:01');
INSERT INTO `log` VALUES (384, 'superadmin', '/manager/addRole', '2019-12-25 11:49:04');
INSERT INTO `log` VALUES (385, 'superadmin', '/manager/allotPer', '2019-12-25 11:49:08');
INSERT INTO `log` VALUES (386, 'superadmin', '/manager/permissionList', '2019-12-25 11:49:08');
INSERT INTO `log` VALUES (387, 'superadmin', '/manager/addAdmin', '2019-12-25 11:49:58');
INSERT INTO `log` VALUES (388, 'superadmin', '/manager/allotPer', '2019-12-25 11:50:03');
INSERT INTO `log` VALUES (389, 'superadmin', '/manager/permissionList', '2019-12-25 11:50:03');
INSERT INTO `log` VALUES (390, 'superNice', '/manager/index', '2019-12-25 11:50:18');
INSERT INTO `log` VALUES (391, 'superNice', '/manager/console', '2019-12-25 11:50:19');
INSERT INTO `log` VALUES (392, 'superNice', '/manager/treeMenu', '2019-12-25 11:50:19');
INSERT INTO `log` VALUES (393, 'superNice', '/manager/log', '2019-12-25 11:50:30');
INSERT INTO `log` VALUES (394, 'superNice', '/manager/treeMenu', '2019-12-25 11:50:35');
INSERT INTO `log` VALUES (395, 'superadmin', '/manager/index', '2019-12-25 11:50:57');
INSERT INTO `log` VALUES (396, 'superadmin', '/manager/console', '2019-12-25 11:50:58');
INSERT INTO `log` VALUES (397, 'superadmin', '/manager/treeMenu', '2019-12-25 11:50:58');
INSERT INTO `log` VALUES (398, 'superadmin', '/manager/permission', '2019-12-25 11:51:35');
INSERT INTO `log` VALUES (399, 'superadmin', '/manager/permissionList', '2019-12-25 11:51:35');
INSERT INTO `log` VALUES (400, 'superadmin', '/manager/role', '2019-12-25 11:51:36');
INSERT INTO `log` VALUES (401, 'superadmin', '/manager/roleList', '2019-12-25 11:51:36');
INSERT INTO `log` VALUES (402, 'superadmin', '/manager/admin', '2019-12-25 11:51:36');
INSERT INTO `log` VALUES (403, 'superadmin', '/manager/adminList', '2019-12-25 11:51:36');
INSERT INTO `log` VALUES (404, NULL, '/manager/login.html', '2019-12-25 16:38:45');
INSERT INTO `log` VALUES (405, NULL, '/manager/login.html', '2019-12-25 16:38:46');
INSERT INTO `log` VALUES (406, NULL, '/manager/login.html', '2019-12-25 16:38:56');
INSERT INTO `log` VALUES (407, NULL, '/manager/logi', '2019-12-25 16:39:35');
INSERT INTO `log` VALUES (408, NULL, '/manager/logi', '2019-12-25 16:39:36');
INSERT INTO `log` VALUES (409, NULL, '/manager/logi', '2019-12-25 16:39:37');
INSERT INTO `log` VALUES (410, 'superadmin', '/manager/index', '2019-12-25 18:26:48');
INSERT INTO `log` VALUES (411, 'superadmin', '/manager/console', '2019-12-25 18:26:48');
INSERT INTO `log` VALUES (412, 'superadmin', '/manager/treeMenu', '2019-12-25 18:26:49');
INSERT INTO `log` VALUES (413, 'superadmin', '/manager/permission', '2019-12-25 18:26:52');
INSERT INTO `log` VALUES (414, 'superadmin', '/manager/permissionList', '2019-12-25 18:26:52');
INSERT INTO `log` VALUES (415, 'superadmin', '/manager/role', '2019-12-25 18:26:53');
INSERT INTO `log` VALUES (416, 'superadmin', '/manager/roleList', '2019-12-25 18:26:53');
INSERT INTO `log` VALUES (417, 'superadmin', '/manager/admin', '2019-12-25 18:26:54');
INSERT INTO `log` VALUES (418, 'superadmin', '/manager/adminList', '2019-12-25 18:26:55');
INSERT INTO `log` VALUES (419, 'superadmin', '/manager/index', '2019-12-25 18:26:58');
INSERT INTO `log` VALUES (420, 'superadmin', '/manager/console', '2019-12-25 18:26:58');
INSERT INTO `log` VALUES (421, 'superadmin', '/manager/treeMenu', '2019-12-25 18:26:59');
INSERT INTO `log` VALUES (422, 'superadmin', '/manager/admin', '2019-12-25 18:27:01');
INSERT INTO `log` VALUES (423, 'superadmin', '/manager/adminList', '2019-12-25 18:27:01');
INSERT INTO `log` VALUES (424, 'superadmin', '/manager/role', '2019-12-25 18:27:02');
INSERT INTO `log` VALUES (425, 'superadmin', '/manager/roleList', '2019-12-25 18:27:02');
INSERT INTO `log` VALUES (426, 'superadmin', '/manager/permission', '2019-12-25 18:27:03');
INSERT INTO `log` VALUES (427, 'superadmin', '/manager/permissionList', '2019-12-25 18:27:03');
INSERT INTO `log` VALUES (428, 'superadmin', '/manager/index', '2019-12-25 18:28:12');
INSERT INTO `log` VALUES (429, 'superadmin', '/manager/console', '2019-12-25 18:28:12');
INSERT INTO `log` VALUES (430, 'superadmin', '/manager/treeMenu', '2019-12-25 18:28:13');
INSERT INTO `log` VALUES (431, 'superadmin', '/manager/index', '2019-12-25 18:28:20');
INSERT INTO `log` VALUES (432, 'superadmin', '/manager/console', '2019-12-25 18:28:21');
INSERT INTO `log` VALUES (433, 'superadmin', '/manager/treeMenu', '2019-12-25 18:28:21');
INSERT INTO `log` VALUES (434, NULL, '/manager/toLogin', '2019-12-25 18:51:04');
INSERT INTO `log` VALUES (435, NULL, '/manager/toLogin', '2019-12-25 18:53:16');
INSERT INTO `log` VALUES (436, NULL, '/manager/toLogin', '2019-12-25 18:57:14');
INSERT INTO `log` VALUES (437, NULL, '/manager/ttt', '2019-12-25 18:57:26');
INSERT INTO `log` VALUES (438, NULL, '/manager/toLogin', '2019-12-25 18:57:59');
INSERT INTO `log` VALUES (439, NULL, '/manager/toLogin', '2019-12-26 12:16:28');
INSERT INTO `log` VALUES (440, NULL, '/manager/toLogin', '2019-12-26 12:16:28');
INSERT INTO `log` VALUES (441, NULL, '/manager/toLogin', '2019-12-26 12:16:28');
INSERT INTO `log` VALUES (442, NULL, '/manager/toLogin', '2019-12-26 12:16:28');
INSERT INTO `log` VALUES (443, NULL, '/manager/toLogin', '2019-12-26 12:16:35');
INSERT INTO `log` VALUES (444, NULL, '/manager/toLogin', '2019-12-26 12:16:35');
INSERT INTO `log` VALUES (445, NULL, '/manager/toLogin', '2019-12-26 12:16:35');
INSERT INTO `log` VALUES (446, NULL, '/manager/toLogin', '2019-12-26 12:16:35');
INSERT INTO `log` VALUES (447, NULL, '/manager/toLogin', '2019-12-26 12:16:35');
INSERT INTO `log` VALUES (448, NULL, '/manager/', '2019-12-26 12:26:36');
INSERT INTO `log` VALUES (449, NULL, '/manager/toLogin', '2019-12-26 12:29:02');
INSERT INTO `log` VALUES (450, NULL, '/manager/toLogin', '2019-12-26 12:29:16');
INSERT INTO `log` VALUES (451, NULL, '/manager/index', '2019-12-31 15:48:42');
INSERT INTO `log` VALUES (452, NULL, '/manager/index', '2019-12-31 15:48:51');
INSERT INTO `log` VALUES (453, NULL, '/manager/index', '2019-12-31 15:48:52');
INSERT INTO `log` VALUES (454, NULL, '/manager/index', '2019-12-31 15:48:52');
INSERT INTO `log` VALUES (455, NULL, '/manager/index', '2019-12-31 15:48:52');
INSERT INTO `log` VALUES (456, NULL, '/manager/index', '2019-12-31 15:48:52');
INSERT INTO `log` VALUES (457, NULL, '/manager/index', '2019-12-31 15:48:53');
INSERT INTO `log` VALUES (458, NULL, '/manager/index', '2019-12-31 15:48:53');
INSERT INTO `log` VALUES (459, NULL, '/manager/index', '2019-12-31 15:48:53');
INSERT INTO `log` VALUES (460, NULL, '/manager/index', '2019-12-31 15:49:04');
INSERT INTO `log` VALUES (461, NULL, '/manager/index', '2019-12-31 15:49:05');
INSERT INTO `log` VALUES (462, NULL, '/manager/index', '2019-12-31 15:49:28');
INSERT INTO `log` VALUES (463, 'superadmin', '/manager/index', '2019-12-31 15:55:51');
INSERT INTO `log` VALUES (464, 'superadmin', '/manager/console', '2019-12-31 15:55:51');
INSERT INTO `log` VALUES (465, 'superadmin', '/manager/treeMenu', '2019-12-31 15:55:51');
INSERT INTO `log` VALUES (466, 'superadmin', '/manager/admin', '2019-12-31 15:56:11');
INSERT INTO `log` VALUES (467, 'superadmin', '/manager/role', '2019-12-31 15:56:12');
INSERT INTO `log` VALUES (468, 'superadmin', '/manager/permission', '2019-12-31 15:56:12');
INSERT INTO `log` VALUES (469, 'superadmin', '/manager/log', '2019-12-31 15:56:14');
INSERT INTO `log` VALUES (470, 'superadmin', '/manager/index', '2019-12-31 15:59:23');
INSERT INTO `log` VALUES (471, 'superadmin', '/manager/console', '2019-12-31 15:59:24');
INSERT INTO `log` VALUES (472, 'superadmin', '/manager/treeMenu', '2019-12-31 15:59:24');
INSERT INTO `log` VALUES (473, 'superadmin', '/manager/admin', '2019-12-31 15:59:28');
INSERT INTO `log` VALUES (474, 'superadmin', '/manager/adminList', '2019-12-31 15:59:28');
INSERT INTO `log` VALUES (475, 'superadmin', '/manager/role', '2019-12-31 15:59:29');
INSERT INTO `log` VALUES (476, 'superadmin', '/manager/roleList', '2019-12-31 15:59:29');
INSERT INTO `log` VALUES (477, 'superadmin', '/manager/permission', '2019-12-31 15:59:29');
INSERT INTO `log` VALUES (478, 'superadmin', '/manager/permissionList', '2019-12-31 15:59:30');
INSERT INTO `log` VALUES (479, 'superadmin', '/manager/log', '2019-12-31 15:59:31');
INSERT INTO `log` VALUES (480, 'superadmin', '/manager/allotPer', '2019-12-31 15:59:46');
INSERT INTO `log` VALUES (481, 'superadmin', '/manager/permissionList', '2019-12-31 15:59:46');
INSERT INTO `log` VALUES (482, 'superadmin', '/manager/allotPer', '2019-12-31 15:59:49');
INSERT INTO `log` VALUES (483, 'superadmin', '/manager/permissionList', '2019-12-31 15:59:49');
INSERT INTO `log` VALUES (484, 'superadmin', '/manager/role', '2019-12-31 16:01:16');
INSERT INTO `log` VALUES (485, 'superadmin', '/manager/roleList', '2019-12-31 16:01:17');
INSERT INTO `log` VALUES (486, 'superadmin', '/manager/permission', '2019-12-31 16:01:18');
INSERT INTO `log` VALUES (487, 'superadmin', '/manager/permissionList', '2019-12-31 16:01:18');
INSERT INTO `log` VALUES (488, 'superadmin', '/manager/admin', '2019-12-31 16:01:18');
INSERT INTO `log` VALUES (489, 'superadmin', '/manager/adminList', '2019-12-31 16:01:18');
INSERT INTO `log` VALUES (490, 'superadmin', '/manager/adminList', '2019-12-31 16:01:25');
INSERT INTO `log` VALUES (491, 'superadmin', '/manager/adminList', '2019-12-31 16:01:27');
INSERT INTO `log` VALUES (492, 'superadmin', '/manager/adminList', '2019-12-31 16:01:29');
INSERT INTO `log` VALUES (493, 'superadmin', '/manager/index', '2019-12-31 16:14:52');
INSERT INTO `log` VALUES (494, 'superadmin', '/manager/console', '2019-12-31 16:14:52');
INSERT INTO `log` VALUES (495, 'superadmin', '/manager/treeMenu', '2019-12-31 16:14:52');
INSERT INTO `log` VALUES (496, 'superadmin', '/manager/admin', '2019-12-31 16:14:59');
INSERT INTO `log` VALUES (497, 'superadmin', '/manager/error/error403', '2019-12-31 16:14:59');
INSERT INTO `log` VALUES (498, 'superadmin', '/manager/role', '2019-12-31 16:15:01');
INSERT INTO `log` VALUES (499, 'superadmin', '/manager/roleList', '2019-12-31 16:15:02');
INSERT INTO `log` VALUES (500, 'superadmin', '/manager/permission', '2019-12-31 16:15:02');
INSERT INTO `log` VALUES (501, 'superadmin', '/manager/permissionList', '2019-12-31 16:15:02');
INSERT INTO `log` VALUES (502, 'superadmin', '/manager/index', '2019-12-31 16:15:52');
INSERT INTO `log` VALUES (503, 'superadmin', '/manager/console', '2019-12-31 16:15:52');
INSERT INTO `log` VALUES (504, 'superadmin', '/manager/treeMenu', '2019-12-31 16:15:53');
INSERT INTO `log` VALUES (505, 'superadmin', '/manager/admin', '2019-12-31 16:15:57');
INSERT INTO `log` VALUES (506, 'superadmin', '/manager/error/error403', '2019-12-31 16:15:57');
INSERT INTO `log` VALUES (507, 'superadmin', '/manager/index', '2019-12-31 16:21:57');
INSERT INTO `log` VALUES (508, 'superadmin', '/manager/console', '2019-12-31 16:21:57');
INSERT INTO `log` VALUES (509, 'superadmin', '/manager/treeMenu', '2019-12-31 16:21:58');
INSERT INTO `log` VALUES (510, 'superadmin', '/manager/admin', '2019-12-31 16:21:59');
INSERT INTO `log` VALUES (511, 'superadmin', '/manager/error/error403', '2019-12-31 16:21:59');
INSERT INTO `log` VALUES (512, 'superadmin', '/manager/index', '2019-12-31 16:22:38');
INSERT INTO `log` VALUES (513, 'superadmin', '/manager/console', '2019-12-31 16:22:38');
INSERT INTO `log` VALUES (514, 'superadmin', '/manager/treeMenu', '2019-12-31 16:22:38');
INSERT INTO `log` VALUES (515, 'superadmin', '/manager/admin', '2019-12-31 16:23:14');
INSERT INTO `log` VALUES (516, 'superadmin', '/manager/adminList', '2019-12-31 16:23:14');
INSERT INTO `log` VALUES (517, 'superadmin', '/manager/permission', '2019-12-31 16:23:17');
INSERT INTO `log` VALUES (518, 'superadmin', '/manager/permissionList', '2019-12-31 16:23:17');
INSERT INTO `log` VALUES (519, 'superadmin', '/manager/role', '2019-12-31 16:23:21');
INSERT INTO `log` VALUES (520, 'superadmin', '/manager/roleList', '2019-12-31 16:23:21');
INSERT INTO `log` VALUES (521, 'superadmin', '/manager/addRole', '2019-12-31 16:23:24');
INSERT INTO `log` VALUES (522, 'superadmin', '/manager/allotPer', '2019-12-31 16:23:26');
INSERT INTO `log` VALUES (523, 'superadmin', '/manager/permissionList', '2019-12-31 16:23:26');
INSERT INTO `log` VALUES (524, 'superadmin', '/manager/allotPer', '2019-12-31 16:23:45');
INSERT INTO `log` VALUES (525, 'superadmin', '/manager/permissionList', '2019-12-31 16:23:45');
INSERT INTO `log` VALUES (526, 'superadmin', '/manager/allotPer', '2019-12-31 16:25:51');
INSERT INTO `log` VALUES (527, 'superadmin', '/manager/permissionList', '2019-12-31 16:25:51');
INSERT INTO `log` VALUES (528, 'superadmin', '/manager/allotPer', '2019-12-31 16:25:56');
INSERT INTO `log` VALUES (529, 'superadmin', '/manager/role', '2019-12-31 16:25:56');
INSERT INTO `log` VALUES (530, 'superadmin', '/manager/roleList', '2019-12-31 16:25:56');
INSERT INTO `log` VALUES (531, 'superadmin', '/manager/allotPer', '2019-12-31 16:25:57');
INSERT INTO `log` VALUES (532, 'superadmin', '/manager/permissionList', '2019-12-31 16:25:58');
INSERT INTO `log` VALUES (533, 'superadmin', '/manager/allotPer', '2019-12-31 16:26:01');
INSERT INTO `log` VALUES (534, 'superadmin', '/manager/role', '2019-12-31 16:26:01');
INSERT INTO `log` VALUES (535, 'superadmin', '/manager/roleList', '2019-12-31 16:26:01');
INSERT INTO `log` VALUES (536, 'superadmin', '/manager/allotPer', '2019-12-31 16:26:02');
INSERT INTO `log` VALUES (537, 'superadmin', '/manager/permissionList', '2019-12-31 16:26:02');
INSERT INTO `log` VALUES (538, 'superadmin', '/manager/allotPer', '2019-12-31 16:26:09');
INSERT INTO `log` VALUES (539, 'superadmin', '/manager/role', '2019-12-31 16:26:09');
INSERT INTO `log` VALUES (540, 'superadmin', '/manager/roleList', '2019-12-31 16:26:09');
INSERT INTO `log` VALUES (541, 'superadmin', '/manager/allotPer', '2019-12-31 16:26:10');
INSERT INTO `log` VALUES (542, 'superadmin', '/manager/permissionList', '2019-12-31 16:26:10');
INSERT INTO `log` VALUES (543, 'superadmin', '/manager/allotPer', '2019-12-31 16:26:21');
INSERT INTO `log` VALUES (544, 'superadmin', '/manager/role', '2019-12-31 16:26:21');
INSERT INTO `log` VALUES (545, 'superadmin', '/manager/roleList', '2019-12-31 16:26:21');
INSERT INTO `log` VALUES (546, 'superadmin', '/manager/index', '2020-01-01 10:02:49');
INSERT INTO `log` VALUES (547, 'superadmin', '/manager/console', '2020-01-01 10:02:49');
INSERT INTO `log` VALUES (548, 'superadmin', '/manager/treeMenu', '2020-01-01 10:02:50');
INSERT INTO `log` VALUES (549, 'superadmin', '/manager/error/error403', '2020-01-01 10:02:53');
INSERT INTO `log` VALUES (550, 'superadmin', '/manager/role', '2020-01-01 10:02:54');
INSERT INTO `log` VALUES (551, 'superadmin', '/manager/roleList', '2020-01-01 10:02:55');
INSERT INTO `log` VALUES (552, 'superadmin', '/manager/permission', '2020-01-01 10:02:55');
INSERT INTO `log` VALUES (553, 'superadmin', '/manager/permissionList', '2020-01-01 10:02:55');
INSERT INTO `log` VALUES (554, 'superadmin', '/manager/error/error403', '2020-01-01 10:03:03');
INSERT INTO `log` VALUES (555, 'superadmin', '/manager/index', '2020-01-01 10:09:00');
INSERT INTO `log` VALUES (556, 'superadmin', '/manager/console', '2020-01-01 10:09:00');
INSERT INTO `log` VALUES (557, 'superadmin', '/manager/treeMenu', '2020-01-01 10:09:00');
INSERT INTO `log` VALUES (558, 'superadmin', '/manager/role', '2020-01-01 10:09:02');
INSERT INTO `log` VALUES (559, 'superadmin', '/manager/roleList', '2020-01-01 10:09:02');
INSERT INTO `log` VALUES (560, 'superadmin', '/manager/permission', '2020-01-01 10:09:03');
INSERT INTO `log` VALUES (561, 'superadmin', '/manager/permissionList', '2020-01-01 10:09:03');
INSERT INTO `log` VALUES (562, 'superadmin', '/manager/error/error403', '2020-01-01 10:09:03');
INSERT INTO `log` VALUES (563, 'superadmin', '/manager/log', '2020-01-01 10:09:05');
INSERT INTO `log` VALUES (564, 'superadmin', '/manager/index', '2020-01-01 10:09:07');
INSERT INTO `log` VALUES (565, 'superadmin', '/manager/console', '2020-01-01 10:09:07');
INSERT INTO `log` VALUES (566, 'superadmin', '/manager/treeMenu', '2020-01-01 10:09:07');
INSERT INTO `log` VALUES (567, 'superadmin', '/manager/index', '2020-01-01 10:09:48');
INSERT INTO `log` VALUES (568, 'superadmin', '/manager/console', '2020-01-01 10:09:52');
INSERT INTO `log` VALUES (569, 'superadmin', '/manager/treeMenu', '2020-01-01 10:09:56');
INSERT INTO `log` VALUES (570, 'superadmin', '/manager/error/error403', '2020-01-01 10:10:09');
INSERT INTO `log` VALUES (571, 'superadmin', '/manager/index', '2020-01-01 10:11:06');
INSERT INTO `log` VALUES (572, 'superadmin', '/manager/console', '2020-01-01 10:11:12');
INSERT INTO `log` VALUES (573, 'superadmin', '/manager/treeMenu', '2020-01-01 10:11:22');
INSERT INTO `log` VALUES (574, 'superadmin', '/manager/index', '2020-01-01 11:11:04');
INSERT INTO `log` VALUES (575, 'superadmin', '/manager/console', '2020-01-01 11:11:04');
INSERT INTO `log` VALUES (576, 'superadmin', '/manager/treeMenu', '2020-01-01 11:11:05');
INSERT INTO `log` VALUES (577, 'superadmin', '/manager/admin', '2020-01-01 11:11:06');
INSERT INTO `log` VALUES (578, 'superadmin', '/manager/adminList', '2020-01-01 11:11:06');
INSERT INTO `log` VALUES (579, 'superadmin', '/manager/role', '2020-01-01 11:11:07');
INSERT INTO `log` VALUES (580, 'superadmin', '/manager/roleList', '2020-01-01 11:11:07');
INSERT INTO `log` VALUES (581, 'superadmin', '/manager/permission', '2020-01-01 11:11:07');
INSERT INTO `log` VALUES (582, 'superadmin', '/manager/permissionList', '2020-01-01 11:11:07');
INSERT INTO `log` VALUES (583, 'superadmin', '/manager/index', '2020-01-01 11:21:01');
INSERT INTO `log` VALUES (584, 'superadmin', '/manager/console', '2020-01-01 11:21:01');
INSERT INTO `log` VALUES (585, 'superadmin', '/manager/treeMenu', '2020-01-01 11:21:01');
INSERT INTO `log` VALUES (586, 'superadmin', '/manager/admin', '2020-01-01 11:21:03');
INSERT INTO `log` VALUES (587, 'superadmin', '/manager/adminList', '2020-01-01 11:21:03');
INSERT INTO `log` VALUES (588, 'superadmin', '/manager/role', '2020-01-01 11:21:04');
INSERT INTO `log` VALUES (589, 'superadmin', '/manager/roleList', '2020-01-01 11:21:04');
INSERT INTO `log` VALUES (590, 'superadmin', '/manager/permission', '2020-01-01 11:21:04');
INSERT INTO `log` VALUES (591, 'superadmin', '/manager/permissionList', '2020-01-01 11:21:05');
INSERT INTO `log` VALUES (592, 'superadmin', '/manager/error/error500', '2020-01-01 11:22:28');
INSERT INTO `log` VALUES (593, 'superadmin', '/manager/error/error500', '2020-01-01 11:22:30');
INSERT INTO `log` VALUES (594, 'superadmin', '/manager/error/error500', '2020-01-01 11:22:33');
INSERT INTO `log` VALUES (595, 'superadmin', '/manager/error/error500', '2020-01-01 11:23:04');
INSERT INTO `log` VALUES (596, 'superadmin', '/manager/error/error500', '2020-01-01 11:24:00');
INSERT INTO `log` VALUES (597, 'superadmin', '/manager/error/error500', '2020-01-01 11:26:38');
INSERT INTO `log` VALUES (598, 'superadmin', '/manager/error/error500', '2020-01-01 11:27:57');
INSERT INTO `log` VALUES (599, 'superadmin', '/manager/index', '2020-01-01 11:33:08');
INSERT INTO `log` VALUES (600, 'superadmin', '/manager/console', '2020-01-01 11:33:08');
INSERT INTO `log` VALUES (601, 'superadmin', '/manager/treeMenu', '2020-01-01 11:33:08');
INSERT INTO `log` VALUES (602, 'superadmin', '/manager/admin', '2020-01-01 11:33:10');
INSERT INTO `log` VALUES (603, 'superadmin', '/manager/adminList', '2020-01-01 11:33:11');
INSERT INTO `log` VALUES (604, 'superadmin', '/manager/role', '2020-01-01 11:33:11');
INSERT INTO `log` VALUES (605, 'superadmin', '/manager/roleList', '2020-01-01 11:33:12');
INSERT INTO `log` VALUES (606, 'superadmin', '/manager/permission', '2020-01-01 11:33:12');
INSERT INTO `log` VALUES (607, 'superadmin', '/manager/permissionList', '2020-01-01 11:33:12');
INSERT INTO `log` VALUES (608, 'superadmin', '/manager/log', '2020-01-01 11:33:13');
INSERT INTO `log` VALUES (609, 'superadmin', '/manager/index', '2020-01-01 11:33:16');
INSERT INTO `log` VALUES (610, 'superadmin', '/manager/console', '2020-01-01 11:33:16');
INSERT INTO `log` VALUES (611, 'superadmin', '/manager/treeMenu', '2020-01-01 11:33:16');
INSERT INTO `log` VALUES (612, 'superadmin', '/manager/admin', '2020-01-01 11:33:17');
INSERT INTO `log` VALUES (613, 'superadmin', '/manager/adminList', '2020-01-01 11:33:17');
INSERT INTO `log` VALUES (614, 'superadmin', '/manager/role', '2020-01-01 11:33:18');
INSERT INTO `log` VALUES (615, 'superadmin', '/manager/roleList', '2020-01-01 11:33:18');
INSERT INTO `log` VALUES (616, 'superadmin', '/manager/permission', '2020-01-01 11:33:18');
INSERT INTO `log` VALUES (617, 'superadmin', '/manager/permissionList', '2020-01-01 11:33:19');
INSERT INTO `log` VALUES (618, 'superadmin', '/manager/index', '2020-01-01 11:33:58');
INSERT INTO `log` VALUES (619, 'superadmin', '/manager/console', '2020-01-01 11:33:58');
INSERT INTO `log` VALUES (620, 'superadmin', '/manager/treeMenu', '2020-01-01 11:33:58');
INSERT INTO `log` VALUES (621, 'superadmin', '/manager/log', '2020-01-01 11:34:02');
INSERT INTO `log` VALUES (622, 'superadmin', '/manager/admin', '2020-01-01 11:34:03');
INSERT INTO `log` VALUES (623, 'superadmin', '/manager/adminList', '2020-01-01 11:34:04');
INSERT INTO `log` VALUES (624, 'superadmin', '/manager/role', '2020-01-01 11:34:04');
INSERT INTO `log` VALUES (625, 'superadmin', '/manager/roleList', '2020-01-01 11:34:04');
INSERT INTO `log` VALUES (626, 'superadmin', '/manager/permission', '2020-01-01 11:34:04');
INSERT INTO `log` VALUES (627, 'superadmin', '/manager/permissionList', '2020-01-01 11:34:04');
INSERT INTO `log` VALUES (628, 'superNice', '/manager/index', '2020-01-01 11:35:07');
INSERT INTO `log` VALUES (629, 'superNice', '/manager/console', '2020-01-01 11:35:07');
INSERT INTO `log` VALUES (630, 'superNice', '/manager/treeMenu', '2020-01-01 11:35:07');
INSERT INTO `log` VALUES (631, 'superNice', '/manager/admin', '2020-01-01 11:35:09');
INSERT INTO `log` VALUES (632, 'superNice', '/manager/adminList', '2020-01-01 11:35:09');
INSERT INTO `log` VALUES (633, 'superNice', '/manager/role', '2020-01-01 11:35:09');
INSERT INTO `log` VALUES (634, 'superNice', '/manager/roleList', '2020-01-01 11:35:09');
INSERT INTO `log` VALUES (635, 'superNice', '/manager/permission', '2020-01-01 11:35:09');
INSERT INTO `log` VALUES (636, 'superNice', '/manager/permissionList', '2020-01-01 11:35:10');
INSERT INTO `log` VALUES (637, 'superNice', '/manager/log', '2020-01-01 11:35:32');
INSERT INTO `log` VALUES (638, 'superNice', '/manager/index', '2020-01-01 11:36:07');
INSERT INTO `log` VALUES (639, 'superNice', '/manager/console', '2020-01-01 11:36:07');
INSERT INTO `log` VALUES (640, 'superNice', '/manager/treeMenu', '2020-01-01 11:36:07');
INSERT INTO `log` VALUES (641, 'superNice', '/manager/log', '2020-01-01 11:36:14');
INSERT INTO `log` VALUES (642, 'superNice', '/manager/index', '2020-01-01 11:37:24');
INSERT INTO `log` VALUES (643, 'superNice', '/manager/console', '2020-01-01 11:37:24');
INSERT INTO `log` VALUES (644, 'superNice', '/manager/treeMenu', '2020-01-01 11:37:24');
INSERT INTO `log` VALUES (645, 'superNice', '/manager/index', '2020-01-01 11:39:33');
INSERT INTO `log` VALUES (646, 'superNice', '/manager/console', '2020-01-01 11:39:33');
INSERT INTO `log` VALUES (647, 'superNice', '/manager/treeMenu', '2020-01-01 11:39:33');
INSERT INTO `log` VALUES (648, 'superNice', '/manager/log', '2020-01-01 11:39:47');
INSERT INTO `log` VALUES (649, 'superNice', '/manager/index', '2020-01-01 11:44:43');
INSERT INTO `log` VALUES (650, 'superNice', '/manager/console', '2020-01-01 11:44:46');
INSERT INTO `log` VALUES (651, 'superNice', '/manager/treeMenu', '2020-01-01 11:44:53');
INSERT INTO `log` VALUES (652, 'superNice', '/manager/index', '2020-01-01 11:47:53');
INSERT INTO `log` VALUES (653, 'superNice', '/manager/console', '2020-01-01 11:47:56');
INSERT INTO `log` VALUES (654, 'superNice', '/manager/treeMenu', '2020-01-01 11:48:01');
INSERT INTO `log` VALUES (655, 'superNice', '/manager/index', '2020-01-01 11:50:16');
INSERT INTO `log` VALUES (656, 'superNice', '/manager/console', '2020-01-01 11:50:19');
INSERT INTO `log` VALUES (657, 'superNice', '/manager/treeMenu', '2020-01-01 11:50:27');
INSERT INTO `log` VALUES (658, 'superNice', '/manager/index', '2020-01-01 11:51:49');
INSERT INTO `log` VALUES (659, 'superNice', '/manager/console', '2020-01-01 11:51:52');
INSERT INTO `log` VALUES (660, 'superNice', '/manager/treeMenu', '2020-01-01 11:51:59');
INSERT INTO `log` VALUES (661, 'superNice', '/manager/admin', '2020-01-01 11:52:07');
INSERT INTO `log` VALUES (662, 'superNice', '/manager/adminList', '2020-01-01 11:52:07');
INSERT INTO `log` VALUES (663, 'superNice', '/manager/error/error403', '2020-01-01 11:52:11');
INSERT INTO `log` VALUES (664, 'superNice', '/manager/index', '2020-01-01 11:52:14');
INSERT INTO `log` VALUES (665, 'superNice', '/manager/console', '2020-01-01 11:52:14');
INSERT INTO `log` VALUES (666, 'superNice', '/manager/treeMenu', '2020-01-01 11:52:14');
INSERT INTO `log` VALUES (667, 'superNice', '/manager/admin', '2020-01-01 11:52:15');
INSERT INTO `log` VALUES (668, 'superNice', '/manager/adminList', '2020-01-01 11:52:16');
INSERT INTO `log` VALUES (669, 'superNice', '/manager/role', '2020-01-01 11:52:16');
INSERT INTO `log` VALUES (670, 'superNice', '/manager/roleList', '2020-01-01 11:52:16');
INSERT INTO `log` VALUES (671, 'superNice', '/manager/permission', '2020-01-01 11:52:17');
INSERT INTO `log` VALUES (672, 'superNice', '/manager/permissionList', '2020-01-01 11:52:17');
INSERT INTO `log` VALUES (673, 'superNice', '/manager/addAdmin', '2020-01-01 12:07:34');
INSERT INTO `log` VALUES (674, 'superadmin', '/manager/index', '2020-01-01 12:08:11');
INSERT INTO `log` VALUES (675, 'superadmin', '/manager/console', '2020-01-01 12:08:11');
INSERT INTO `log` VALUES (676, 'superadmin', '/manager/treeMenu', '2020-01-01 12:08:11');
INSERT INTO `log` VALUES (677, 'superadmin', '/manager/log', '2020-01-01 12:08:13');
INSERT INTO `log` VALUES (678, 'superadmin', '/manager/admin', '2020-01-01 12:08:16');
INSERT INTO `log` VALUES (679, 'superadmin', '/manager/adminList', '2020-01-01 12:08:16');
INSERT INTO `log` VALUES (680, 'superadmin', '/manager/role', '2020-01-01 12:08:17');
INSERT INTO `log` VALUES (681, 'superadmin', '/manager/roleList', '2020-01-01 12:08:17');
INSERT INTO `log` VALUES (682, 'superadmin', '/manager/permission', '2020-01-01 12:08:17');
INSERT INTO `log` VALUES (683, 'superadmin', '/manager/permissionList', '2020-01-01 12:08:18');
INSERT INTO `log` VALUES (684, 'superadmin', '/manager/index', '2020-01-01 12:08:22');
INSERT INTO `log` VALUES (685, 'superadmin', '/manager/console', '2020-01-01 12:08:22');
INSERT INTO `log` VALUES (686, 'superadmin', '/manager/treeMenu', '2020-01-01 12:08:23');
INSERT INTO `log` VALUES (687, 'superNice', '/manager/error/error500', '2020-01-01 14:15:24');
INSERT INTO `log` VALUES (688, 'superNice', '/manager/error/error500', '2020-01-01 14:15:31');
INSERT INTO `log` VALUES (689, 'superadmin', '/manager/index', '2020-01-01 14:30:41');
INSERT INTO `log` VALUES (690, 'superadmin', '/manager/console', '2020-01-01 14:30:41');
INSERT INTO `log` VALUES (691, 'superadmin', '/manager/treeMenu', '2020-01-01 14:30:41');
INSERT INTO `log` VALUES (692, 'superadmin', '/manager/index', '2020-01-01 14:34:46');
INSERT INTO `log` VALUES (693, 'superadmin', '/manager/console', '2020-01-01 14:34:46');
INSERT INTO `log` VALUES (694, 'superadmin', '/manager/treeMenu', '2020-01-01 14:34:47');
INSERT INTO `log` VALUES (695, 'superNice', '/manager/index', '2020-01-01 14:38:13');
INSERT INTO `log` VALUES (696, 'superNice', '/manager/console', '2020-01-01 14:38:14');
INSERT INTO `log` VALUES (697, 'superNice', '/manager/treeMenu', '2020-01-01 14:38:14');
INSERT INTO `log` VALUES (698, 'superNice', '/manager/error/error403', '2020-01-01 14:38:20');
INSERT INTO `log` VALUES (699, 'superNice', '/manager/index', '2020-01-01 14:38:22');
INSERT INTO `log` VALUES (700, 'superNice', '/manager/console', '2020-01-01 14:38:22');
INSERT INTO `log` VALUES (701, 'superNice', '/manager/treeMenu', '2020-01-01 14:38:22');
INSERT INTO `log` VALUES (702, 'superadmin', '/manager/index', '2020-01-01 14:50:25');
INSERT INTO `log` VALUES (703, 'superadmin', '/manager/console', '2020-01-01 14:50:25');
INSERT INTO `log` VALUES (704, 'superadmin', '/manager/treeMenu', '2020-01-01 14:50:26');
INSERT INTO `log` VALUES (705, 'superadmin', '/manager/admin', '2020-01-01 14:50:29');
INSERT INTO `log` VALUES (706, 'superadmin', '/manager/adminList', '2020-01-01 14:50:29');
INSERT INTO `log` VALUES (707, 'superadmin', '/manager/role', '2020-01-01 14:50:32');
INSERT INTO `log` VALUES (708, 'superadmin', '/manager/roleList', '2020-01-01 14:50:33');
INSERT INTO `log` VALUES (709, 'superadmin', '/manager/allotPer', '2020-01-01 14:50:35');
INSERT INTO `log` VALUES (710, 'superadmin', '/manager/permissionList', '2020-01-01 14:50:36');
INSERT INTO `log` VALUES (711, 'superadmin', '/manager/allotPer', '2020-01-01 14:50:41');
INSERT INTO `log` VALUES (712, 'superadmin', '/manager/role', '2020-01-01 14:50:41');
INSERT INTO `log` VALUES (713, 'superadmin', '/manager/roleList', '2020-01-01 14:50:41');
INSERT INTO `log` VALUES (714, 'superadmin', '/manager/index', '2020-01-01 14:50:44');
INSERT INTO `log` VALUES (715, 'superadmin', '/manager/console', '2020-01-01 14:50:44');
INSERT INTO `log` VALUES (716, 'superadmin', '/manager/treeMenu', '2020-01-01 14:50:44');
INSERT INTO `log` VALUES (717, 'superadmin', '/manager/log', '2020-01-01 14:50:46');
INSERT INTO `log` VALUES (718, 'superadmin', '/manager/role', '2020-01-01 14:50:50');
INSERT INTO `log` VALUES (719, 'superadmin', '/manager/roleList', '2020-01-01 14:50:50');
INSERT INTO `log` VALUES (720, 'superadmin', '/manager/allotPer', '2020-01-01 14:50:54');
INSERT INTO `log` VALUES (721, 'superadmin', '/manager/permissionList', '2020-01-01 14:50:54');
INSERT INTO `log` VALUES (722, 'superadmin', '/manager/index', '2020-01-01 14:51:03');
INSERT INTO `log` VALUES (723, 'superadmin', '/manager/console', '2020-01-01 14:51:03');
INSERT INTO `log` VALUES (724, 'superadmin', '/manager/treeMenu', '2020-01-01 14:51:03');
INSERT INTO `log` VALUES (725, 'superadmin', '/manager/log', '2020-01-01 14:51:07');
INSERT INTO `log` VALUES (726, 'superadmin', '/manager/admin', '2020-01-01 14:51:12');
INSERT INTO `log` VALUES (727, 'superadmin', '/manager/adminList', '2020-01-01 14:51:12');
INSERT INTO `log` VALUES (728, 'superadmin', '/manager/role', '2020-01-01 14:51:13');
INSERT INTO `log` VALUES (729, 'superadmin', '/manager/roleList', '2020-01-01 14:51:13');
INSERT INTO `log` VALUES (730, 'superadmin', '/manager/permission', '2020-01-01 14:51:13');
INSERT INTO `log` VALUES (731, 'superadmin', '/manager/permissionList', '2020-01-01 14:51:13');
INSERT INTO `log` VALUES (732, 'superadmin', '/manager/index', '2020-01-01 14:51:25');
INSERT INTO `log` VALUES (733, 'superadmin', '/manager/console', '2020-01-01 14:51:25');
INSERT INTO `log` VALUES (734, 'superadmin', '/manager/treeMenu', '2020-01-01 14:51:26');
INSERT INTO `log` VALUES (735, 'superadmin', '/manager/role', '2020-01-01 14:51:28');
INSERT INTO `log` VALUES (736, 'superadmin', '/manager/roleList', '2020-01-01 14:51:29');
INSERT INTO `log` VALUES (737, 'superadmin', '/manager/allotPer', '2020-01-01 14:51:30');
INSERT INTO `log` VALUES (738, 'superadmin', '/manager/permissionList', '2020-01-01 14:51:30');
INSERT INTO `log` VALUES (739, 'superadmin', '/manager/allotPer', '2020-01-01 14:51:33');
INSERT INTO `log` VALUES (740, 'superadmin', '/manager/role', '2020-01-01 14:51:33');
INSERT INTO `log` VALUES (741, 'superadmin', '/manager/roleList', '2020-01-01 14:51:33');
INSERT INTO `log` VALUES (742, 'superadmin', '/manager/index', '2020-01-01 14:51:35');
INSERT INTO `log` VALUES (743, 'superadmin', '/manager/console', '2020-01-01 14:51:35');
INSERT INTO `log` VALUES (744, 'superadmin', '/manager/treeMenu', '2020-01-01 14:51:36');
INSERT INTO `log` VALUES (745, 'superadmin', '/manager/index', '2020-01-01 14:51:37');
INSERT INTO `log` VALUES (746, 'superadmin', '/manager/console', '2020-01-01 14:51:37');
INSERT INTO `log` VALUES (747, 'superadmin', '/manager/treeMenu', '2020-01-01 14:51:37');
INSERT INTO `log` VALUES (748, 'superadmin', '/manager/index', '2020-01-01 14:51:37');
INSERT INTO `log` VALUES (749, 'superadmin', '/manager/console', '2020-01-01 14:51:37');
INSERT INTO `log` VALUES (750, 'superadmin', '/manager/treeMenu', '2020-01-01 14:51:37');
INSERT INTO `log` VALUES (751, 'superadmin', '/manager/index', '2020-01-01 14:51:38');
INSERT INTO `log` VALUES (752, 'superadmin', '/manager/console', '2020-01-01 14:51:38');
INSERT INTO `log` VALUES (753, 'superadmin', '/manager/treeMenu', '2020-01-01 14:51:38');
INSERT INTO `log` VALUES (754, 'superadmin', '/manager/index', '2020-01-01 14:51:39');
INSERT INTO `log` VALUES (755, 'superadmin', '/manager/console', '2020-01-01 14:51:39');
INSERT INTO `log` VALUES (756, 'superadmin', '/manager/treeMenu', '2020-01-01 14:51:39');
INSERT INTO `log` VALUES (757, 'superadmin', '/manager/index', '2020-01-01 14:51:39');
INSERT INTO `log` VALUES (758, 'superadmin', '/manager/console', '2020-01-01 14:51:40');
INSERT INTO `log` VALUES (759, 'superadmin', '/manager/treeMenu', '2020-01-01 14:51:40');
INSERT INTO `log` VALUES (760, 'superadmin', '/manager/log', '2020-01-01 14:51:49');
INSERT INTO `log` VALUES (761, 'superadmin', '/manager/index', '2020-01-01 14:51:57');
INSERT INTO `log` VALUES (762, 'superadmin', '/manager/console', '2020-01-01 14:51:57');
INSERT INTO `log` VALUES (763, 'superadmin', '/manager/treeMenu', '2020-01-01 14:51:58');
INSERT INTO `log` VALUES (764, 'superadmin', '/manager/index', '2020-01-01 14:52:09');
INSERT INTO `log` VALUES (765, 'superadmin', '/manager/console', '2020-01-01 14:52:09');
INSERT INTO `log` VALUES (766, 'superadmin', '/manager/treeMenu', '2020-01-01 14:52:09');
INSERT INTO `log` VALUES (767, 'superadmin', '/manager/log', '2020-01-01 14:52:11');
INSERT INTO `log` VALUES (768, 'superadmin', '/manager/role', '2020-01-01 14:52:12');
INSERT INTO `log` VALUES (769, 'superadmin', '/manager/roleList', '2020-01-01 14:52:12');
INSERT INTO `log` VALUES (770, 'superadmin', '/manager/allotPer', '2020-01-01 14:52:13');
INSERT INTO `log` VALUES (771, 'superadmin', '/manager/permissionList', '2020-01-01 14:52:13');
INSERT INTO `log` VALUES (772, 'superadmin', '/manager/allotPer', '2020-01-01 14:52:17');
INSERT INTO `log` VALUES (773, 'superadmin', '/manager/role', '2020-01-01 14:52:17');
INSERT INTO `log` VALUES (774, 'superadmin', '/manager/roleList', '2020-01-01 14:52:17');
INSERT INTO `log` VALUES (775, 'superadmin', '/manager/index', '2020-01-01 14:52:28');
INSERT INTO `log` VALUES (776, 'superadmin', '/manager/console', '2020-01-01 14:52:28');
INSERT INTO `log` VALUES (777, 'superadmin', '/manager/treeMenu', '2020-01-01 14:52:28');
INSERT INTO `log` VALUES (778, 'superadmin', '/manager/log', '2020-01-01 14:52:32');
INSERT INTO `log` VALUES (779, 'superadmin', '/manager/log', '2020-01-01 14:53:17');
INSERT INTO `log` VALUES (780, 'superadmin', '/manager/log', '2020-01-01 14:53:33');
INSERT INTO `log` VALUES (781, 'superadmin', '/manager/', '2020-01-01 14:54:29');
INSERT INTO `log` VALUES (782, 'superadmin', '/manager/index', '2020-01-01 14:54:34');
INSERT INTO `log` VALUES (783, 'superadmin', '/manager/console', '2020-01-01 14:54:34');
INSERT INTO `log` VALUES (784, 'superadmin', '/manager/treeMenu', '2020-01-01 14:54:35');
INSERT INTO `log` VALUES (785, 'superadmin', '/manager/role', '2020-01-01 14:54:41');
INSERT INTO `log` VALUES (786, 'superadmin', '/manager/roleList', '2020-01-01 14:54:42');
INSERT INTO `log` VALUES (787, 'superadmin', '/manager/allotPer', '2020-01-01 14:54:43');
INSERT INTO `log` VALUES (788, 'superadmin', '/manager/permissionList', '2020-01-01 14:54:43');
INSERT INTO `log` VALUES (789, 'superadmin', '/manager/allotPer', '2020-01-01 14:54:45');
INSERT INTO `log` VALUES (790, 'superadmin', '/manager/role', '2020-01-01 14:54:45');
INSERT INTO `log` VALUES (791, 'superadmin', '/manager/roleList', '2020-01-01 14:54:45');
INSERT INTO `log` VALUES (792, 'superadmin', '/manager/allotPer', '2020-01-01 14:54:46');
INSERT INTO `log` VALUES (793, 'superadmin', '/manager/permissionList', '2020-01-01 14:54:46');
INSERT INTO `log` VALUES (794, 'superadmin', '/manager/allotPer', '2020-01-01 14:54:49');
INSERT INTO `log` VALUES (795, 'superadmin', '/manager/role', '2020-01-01 14:54:49');
INSERT INTO `log` VALUES (796, 'superadmin', '/manager/roleList', '2020-01-01 14:54:50');
INSERT INTO `log` VALUES (797, 'superadmin', '/manager/allotPer', '2020-01-01 14:54:52');
INSERT INTO `log` VALUES (798, 'superadmin', '/manager/permissionList', '2020-01-01 14:54:52');
INSERT INTO `log` VALUES (799, 'superadmin', '/manager/allotPer', '2020-01-01 14:54:57');
INSERT INTO `log` VALUES (800, 'superadmin', '/manager/role', '2020-01-01 14:54:57');
INSERT INTO `log` VALUES (801, 'superadmin', '/manager/roleList', '2020-01-01 14:54:57');
INSERT INTO `log` VALUES (802, 'superadmin', '/manager/index', '2020-01-01 14:55:08');
INSERT INTO `log` VALUES (803, 'superadmin', '/manager/console', '2020-01-01 14:55:08');
INSERT INTO `log` VALUES (804, 'superadmin', '/manager/treeMenu', '2020-01-01 14:55:08');
INSERT INTO `log` VALUES (805, 'superNice', '/manager/index', '2020-01-01 14:55:20');
INSERT INTO `log` VALUES (806, 'superNice', '/manager/console', '2020-01-01 14:55:20');
INSERT INTO `log` VALUES (807, 'superNice', '/manager/treeMenu', '2020-01-01 14:55:21');
INSERT INTO `log` VALUES (808, 'superNice', '/manager/role', '2020-01-01 14:55:25');
INSERT INTO `log` VALUES (809, 'superNice', '/manager/roleList', '2020-01-01 14:55:25');
INSERT INTO `log` VALUES (810, 'superNice', '/manager/admin', '2020-01-01 14:55:25');
INSERT INTO `log` VALUES (811, 'superNice', '/manager/adminList', '2020-01-01 14:55:26');
INSERT INTO `log` VALUES (812, 'superNice', '/manager/error/error403', '2020-01-01 14:55:32');
INSERT INTO `log` VALUES (813, 'superNice', '/manager/index', '2020-01-01 14:55:34');
INSERT INTO `log` VALUES (814, 'superNice', '/manager/console', '2020-01-01 14:55:34');
INSERT INTO `log` VALUES (815, 'superNice', '/manager/treeMenu', '2020-01-01 14:55:34');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, 'ROLE_SUPER_ADMIN');
INSERT INTO `role` VALUES (2, 'ROLE_ADMIN');

-- ----------------------------
-- Table structure for role_treemenu
-- ----------------------------
DROP TABLE IF EXISTS `role_treemenu`;
CREATE TABLE `role_treemenu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) DEFAULT NULL,
  `tid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_role_treemenu`(`rid`) USING BTREE,
  INDEX `FK_role_treemenu1`(`tid`) USING BTREE,
  CONSTRAINT `FK_role_treemenu` FOREIGN KEY (`rid`) REFERENCES `role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_role_treemenu1` FOREIGN KEY (`tid`) REFERENCES `treemenu` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 103 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role_treemenu
-- ----------------------------
INSERT INTO `role_treemenu` VALUES (85, 1, 1);
INSERT INTO `role_treemenu` VALUES (86, 1, 6);
INSERT INTO `role_treemenu` VALUES (87, 1, 2);
INSERT INTO `role_treemenu` VALUES (88, 1, 3);
INSERT INTO `role_treemenu` VALUES (89, 1, 4);
INSERT INTO `role_treemenu` VALUES (90, 1, 9);
INSERT INTO `role_treemenu` VALUES (91, 1, 7);
INSERT INTO `role_treemenu` VALUES (92, 1, 11);
INSERT INTO `role_treemenu` VALUES (98, 2, 1);
INSERT INTO `role_treemenu` VALUES (99, 2, 6);
INSERT INTO `role_treemenu` VALUES (100, 2, 2);
INSERT INTO `role_treemenu` VALUES (101, 2, 3);
INSERT INTO `role_treemenu` VALUES (102, 2, 4);

-- ----------------------------
-- Table structure for treemenu
-- ----------------------------
DROP TABLE IF EXISTS `treemenu`;
CREATE TABLE `treemenu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `icon` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `url` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of treemenu
-- ----------------------------
INSERT INTO `treemenu` VALUES (1, -1, '控制面板', 'fa-home', '');
INSERT INTO `treemenu` VALUES (2, -1, '用户管理', 'fa-book', '');
INSERT INTO `treemenu` VALUES (3, 2, '用户列表', NULL, '/manager/admin');
INSERT INTO `treemenu` VALUES (4, 2, '角色列表', NULL, '/manager/role');
INSERT INTO `treemenu` VALUES (6, 1, '后台主页', NULL, '/manager/index');
INSERT INTO `treemenu` VALUES (7, -1, '系统日志', 'fa-pencil', '');
INSERT INTO `treemenu` VALUES (9, 2, '权限列表', NULL, '/manager/permission');
INSERT INTO `treemenu` VALUES (11, 7, '日志列表', NULL, '/manager/log');

SET FOREIGN_KEY_CHECKS = 1;
