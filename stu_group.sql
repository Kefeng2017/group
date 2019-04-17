/*
 Navicat MySQL Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : localhost:3306
 Source Schema         : group

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 17/04/2019 11:22:08
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for activity
-- ----------------------------
DROP TABLE IF EXISTS `activity`;
CREATE TABLE `activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) DEFAULT NULL,
  `c_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `date1` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `date2` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(1) DEFAULT '0',
  `description` text,
  `place` varchar(50) DEFAULT NULL,
  `team` varchar(50) DEFAULT NULL,
  `owner` varchar(30) DEFAULT NULL,
  `owner_id` int(20) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2019110012 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of activity
-- ----------------------------
BEGIN;
INSERT INTO `activity` VALUES (2019110001, 'afdf', '2019-04-13 11:01:46', '2019-04-23 00:00:00', '2019-04-25 00:00:00', 1, 'safsdfsd', 'sdaf', '魔术协会', 'admin(会长)', 2019040001, NULL);
INSERT INTO `activity` VALUES (2019110002, '雷锋一条改', '2019-04-13 11:01:49', '2019-04-01 23:02:00', '2019-04-22 00:00:00', 2, 'nffjshkfdjkfhsdkfjhdsfhdsj', '小礼堂', '魔术协会', 'admin(会长)', 2019040001, NULL);
INSERT INTO `activity` VALUES (2019110003, '图书馆活动', '2019-04-13 11:01:52', '2019-04-09 00:00:00', '2019-04-11 10:00:00', 1, '旧书收集活动', '图书馆11楼', '魔术协会', 'admin(会长)', 2019040001, NULL);
INSERT INTO `activity` VALUES (2019110004, 'test_activity', '2019-04-13 17:37:01', '2019-04-14 00:00:00', '2019-04-20 00:00:00', 0, 'test_description', 'test_place', '魔术协会', 'admin(管理)', 2019040001, NULL);
INSERT INTO `activity` VALUES (2019110005, 'test_activity', '2019-04-13 23:07:49', '2019-04-01 00:00:00', '2019-04-13 23:07:39', 0, 'description', 'place', 'test_group', 'test_admin(管理)', 2019040008, NULL);
INSERT INTO `activity` VALUES (2019110006, 'test_file', '2019-04-16 15:20:10', '2019-04-23 00:00:00', '2019-05-03 00:00:00', 0, 'test', 'test', '魔术协会', 'admin(管理)', 2019040001, 'http://localhost:8081/1555399207139_2019年视频游戏行业统计，趋势和数据 - 终极名单.htm');
INSERT INTO `activity` VALUES (2019110008, 'nkjwd', '2019-04-17 00:37:10', '2019-04-17 00:00:00', '2019-05-10 00:00:00', 0, 'qrerwqr', 'wqrwr', '魔术协会', 'admin(管理)', 2019040001, 'http://localhost:8081/1555432628361_2019年视频游戏行业统计，趋势和数据 - 终极名单.htm');
INSERT INTO `activity` VALUES (2019110009, 'wrqwerqwrwqrqwrwqreq', '2019-04-17 00:40:22', '2019-04-17 00:00:00', '2019-04-18 00:00:00', 0, 'rqwreqwer', 'qrwerqwr', '魔术协会', 'admin(管理)', 2019040001, 'http://localhost:8081/1555432729362_app.js');
INSERT INTO `activity` VALUES (2019110010, 'dfasfg', '2019-04-17 00:42:33', '2019-04-23 00:00:00', '2019-05-02 00:00:00', 0, 'wefw', 'fsf', '魔术协会', 'admin(管理)', 2019040001, 'http://localhost:8081/1555432950733_编号25157修改整理.doc');
INSERT INTO `activity` VALUES (2019110011, 'test_file', '2019-04-17 00:43:54', '2019-04-17 00:00:00', '2019-04-17 00:43:43', 0, 'fasdf', 'hdjka', '魔术协会', 'admin(管理)', 2019040001, 'http://localhost:8081/1555433032122_编号25157修改整理.doc');
COMMIT;

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(11) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) DEFAULT NULL,
  `c_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_name` varchar(255) DEFAULT NULL,
  `content` text,
  `like` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
BEGIN;
INSERT INTO `comment` VALUES (00000000001, 2019110001, '2019-04-16 23:14:55', 'admin', 'hhhhh', 0, 2019040001);
INSERT INTO `comment` VALUES (00000000002, 2019110001, '2019-04-16 23:16:12', 'admin', 'nihaoya ', 0, 2019040001);
INSERT INTO `comment` VALUES (00000000003, 2019110004, '2019-04-17 00:36:07', '李三三', 'henhao', 0, 2019040004);
INSERT INTO `comment` VALUES (00000000004, 2019110002, '2019-04-17 00:36:33', '李三三', 'hjksadh', 0, 2019040004);
INSERT INTO `comment` VALUES (00000000005, 2019110010, '2019-04-17 00:44:04', 'admin', 'hhhhhhh', 0, 2019040001);
INSERT INTO `comment` VALUES (00000000006, 2019110004, '2019-04-17 00:44:37', '李三三', 'fafwf', 0, 2019040004);
INSERT INTO `comment` VALUES (00000000007, 2019110005, '2019-04-17 10:57:13', '李三三', '', 0, 2019040004);
INSERT INTO `comment` VALUES (00000000008, 2019110005, '2019-04-17 11:04:12', '李三三', '但是服务', 0, 2019040004);
INSERT INTO `comment` VALUES (00000000009, 2019110003, '2019-04-17 11:06:41', 'admin', 'fe', 0, 2019040001);
INSERT INTO `comment` VALUES (00000000010, 2019110011, '2019-04-17 11:09:23', '李三三', 'fwfw', 0, 2019040004);
COMMIT;

-- ----------------------------
-- Table structure for team
-- ----------------------------
DROP TABLE IF EXISTS `team`;
CREATE TABLE `team` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `description` text,
  `c_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `size` int(11) DEFAULT NULL,
  `admin` varchar(30) DEFAULT NULL,
  `number` int(11) NOT NULL DEFAULT '0',
  `grade` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20190007 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of team
-- ----------------------------
BEGIN;
INSERT INTO `team` VALUES (20190002, '魔术协会', '魔术协会魔术协会魔术协会魔术协会', '2019-04-17 00:16:21', 40, 'admin', 5, 1);
INSERT INTO `team` VALUES (20190003, '数学协会', '数学数学数学', '2019-04-16 23:36:03', 20, 'test_add', 2, 1);
INSERT INTO `team` VALUES (20190004, '计算机协会', '计算机协会欢迎各位计算机技术爱好者加入', '2019-04-17 11:10:06', 30, '许小小', 3, 0);
INSERT INTO `team` VALUES (20190005, 'test_group', 'test_description', '2019-04-17 11:10:36', 30, 'test_admin', 2, 1);
INSERT INTO `team` VALUES (20190006, 'test2', 'description', '2019-04-17 00:47:08', 32, 'test3', 2, 1);
COMMIT;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `college` varchar(30) DEFAULT NULL,
  `class` varchar(30) DEFAULT NULL,
  `position` varchar(30) DEFAULT NULL,
  `role` int(1) DEFAULT '0',
  `password` varchar(255) DEFAULT NULL,
  `join1` varchar(30) NOT NULL,
  `join2` varchar(30) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `c_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
INSERT INTO `user` VALUES (2019040001, 'admin', '123456', '计算机', '计算机科学', '副会长', 1, 'c7909d22e12265bc78d411e4672b18ae', '魔术协会', '', '男', '2019-04-13 10:21:22');
INSERT INTO `user` VALUES (2019040002, '李四四', '123789', '材料学院', '材料1班', '副副会长', 1, 'c7909d22e12265bc78d411e4672b18ae', '计算机协会', '', '女', '2019-04-13 10:21:37');
INSERT INTO `user` VALUES (2019040004, '李三三', '654321', '新闻学院', '新闻2班', '老师', 2, 'b2b0af5a6411c698400af9b44865981f', '', '', '男', '2019-04-17 11:14:19');
INSERT INTO `user` VALUES (2019040005, 'sss_temp_edit', '17312344321', 'wujdk', 'jxka', '外援', 0, 'b2b0af5a6411c698400af9b44865981f', '魔术协会', '', '男', '2019-04-16 23:28:11');
INSERT INTO `user` VALUES (2019040006, '张三', '13123455432', '计算机', 'hks', '副会长', 0, 'b2b0af5a6411c698400af9b44865981f', '魔术协会', '', '男', '2019-04-13 22:02:41');
INSERT INTO `user` VALUES (2019040008, 'test_admin', NULL, NULL, NULL, '会长', 1, 'b2b0af5a6411c698400af9b44865981f', 'test_group', ' ', ' ', '2019-04-17 11:19:09');
INSERT INTO `user` VALUES (2019040010, '张', '232382342', NULL, NULL, '会长', 1, 'b2b0af5a6411c698400af9b44865981f', '数学协会', '计算机协会', ' ', '2019-04-17 11:19:12');
INSERT INTO `user` VALUES (2019040011, '林小林', '132321', '计算机', '计算机1班', '干事', 0, 'c7909d22e12265bc78d411e4672b18ae', '魔术协会', ' ', '男', '2019-04-17 11:19:10');
INSERT INTO `user` VALUES (2019040012, '许小小', '123456789', NULL, NULL, '会长', 1, 'b2b0af5a6411c698400af9b44865981f', '计算机协会', ' ', ' ', '2019-04-17 11:19:15');
INSERT INTO `user` VALUES (2019040023, 'test', '1234', 'test_college', 'test_class', 'test_position', 0, 'b2b0af5a6411c698400af9b44865981f', '魔术协会', ' ', '男', '2019-04-17 11:19:16');
INSERT INTO `user` VALUES (2019040032, 'test_user', NULL, NULL, NULL, '会长', 0, 'b2b0af5a6411c698400af9b44865981f', '数据', ' ', ' ', '2019-04-17 11:19:18');
INSERT INTO `user` VALUES (2019040042, 'test_add', NULL, NULL, NULL, '会长', 0, 'b2b0af5a6411c698400af9b44865981f', '数学协会', ' ', ' ', '2019-04-17 11:19:21');
INSERT INTO `user` VALUES (2019040076, 'teeeeest', '123', 'test_school', 'cla', 'position', 0, 'b2b0af5a6411c698400af9b44865981f', 'test2', ' ', '男', '2019-04-17 11:19:22');
INSERT INTO `user` VALUES (2019040090, 'test3', '123', 'llalalala', 'kjklj', '会长', 1, 'c7909d22e12265bc78d411e4672b18ae', 'test2', ' ', '男', '2019-04-17 11:19:23');
INSERT INTO `user` VALUES (2019040098, 'test_1', '123456643', 'test_college', 'test_class', 'test', 0, 'b2b0af5a6411c698400af9b44865981f', 'test_group', ' ', '男', '2019-04-17 11:19:24');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
