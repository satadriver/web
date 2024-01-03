/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : computer

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2023-06-03 22:27:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for pc_audio
-- ----------------------------
DROP TABLE IF EXISTS `pc_audio`;
CREATE TABLE `pc_audio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) DEFAULT NULL COMMENT '客户端id',
  `size` varchar(255) DEFAULT NULL COMMENT '录音大小',
  `path` varchar(255) DEFAULT NULL COMMENT '录音路径',
  `time` varchar(255) DEFAULT NULL COMMENT '时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pc_client
-- ----------------------------
DROP TABLE IF EXISTS `pc_client`;
CREATE TABLE `pc_client` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `mac` varchar(255) DEFAULT NULL COMMENT '客户端的唯一标识mac',
  `name` varchar(255) DEFAULT NULL COMMENT '客户端备注',
  `info` text COMMENT '客户端信息json格式',
  `ts` varchar(255) DEFAULT NULL COMMENT '客户端更新信息时间',
  `state` int(2) DEFAULT '0' COMMENT '在线状态\r\n1在线\r\n0离线',
  `group_id` int(11) DEFAULT '0' COMMENT '分组id',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=333 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pc_clipboard
-- ----------------------------
DROP TABLE IF EXISTS `pc_clipboard`;
CREATE TABLE `pc_clipboard` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=83 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pc_downloadfile
-- ----------------------------
DROP TABLE IF EXISTS `pc_downloadfile`;
CREATE TABLE `pc_downloadfile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) DEFAULT NULL,
  `file_path` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pc_file
-- ----------------------------
DROP TABLE IF EXISTS `pc_file`;
CREATE TABLE `pc_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) DEFAULT NULL COMMENT '客户端id',
  `file_path` varchar(255) DEFAULT NULL COMMENT '文件路径',
  PRIMARY KEY (`id`),
  KEY `file` (`file_path`),
  KEY `client_id` (`client_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=30655401 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pc_filemonitor
-- ----------------------------
DROP TABLE IF EXISTS `pc_filemonitor`;
CREATE TABLE `pc_filemonitor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) DEFAULT NULL COMMENT '客户端id',
  `content` varchar(255) DEFAULT NULL COMMENT '文件操作记录',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=394442 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pc_group
-- ----------------------------
DROP TABLE IF EXISTS `pc_group`;
CREATE TABLE `pc_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `group_name` varchar(255) DEFAULT NULL COMMENT '分组名称',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pc_install
-- ----------------------------
DROP TABLE IF EXISTS `pc_install`;
CREATE TABLE `pc_install` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) DEFAULT NULL COMMENT '客户端id',
  `soft_name` varchar(255) DEFAULT NULL COMMENT '软件名称',
  `version` varchar(255) DEFAULT NULL COMMENT '版本',
  `install_path` varchar(255) DEFAULT NULL COMMENT '安装路径',
  `publisher` varchar(255) DEFAULT NULL COMMENT '发布方',
  `uninstall_path` varchar(255) DEFAULT NULL COMMENT '下载路径',
  `time` varchar(255) DEFAULT NULL COMMENT '时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19061 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pc_keyboard
-- ----------------------------
DROP TABLE IF EXISTS `pc_keyboard`;
CREATE TABLE `pc_keyboard` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=335 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pc_logs
-- ----------------------------
DROP TABLE IF EXISTS `pc_logs`;
CREATE TABLE `pc_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `info` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1643 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pc_onlinelog
-- ----------------------------
DROP TABLE IF EXISTS `pc_onlinelog`;
CREATE TABLE `pc_onlinelog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` varchar(255) DEFAULT NULL COMMENT '客户端id',
  `type` varchar(255) DEFAULT NULL COMMENT '类型',
  `time` varchar(255) DEFAULT NULL COMMENT '时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pc_photo
-- ----------------------------
DROP TABLE IF EXISTS `pc_photo`;
CREATE TABLE `pc_photo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(10) DEFAULT NULL COMMENT '分类1摄像头拍照2应用截屏3屏幕截屏',
  `path` varchar(255) DEFAULT NULL COMMENT '图片路径',
  `time` varchar(255) DEFAULT NULL COMMENT '时间',
  `client_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3267499 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pc_process
-- ----------------------------
DROP TABLE IF EXISTS `pc_process`;
CREATE TABLE `pc_process` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) DEFAULT NULL COMMENT '客户端id',
  `process_id` int(11) DEFAULT NULL COMMENT '进程id',
  `process_name` varchar(255) DEFAULT NULL COMMENT '进程名称',
  `application_name` varchar(255) DEFAULT NULL COMMENT '应用名称',
  `install_path` varchar(255) DEFAULT NULL COMMENT '安装路径',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19785 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pc_shell
-- ----------------------------
DROP TABLE IF EXISTS `pc_shell`;
CREATE TABLE `pc_shell` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) DEFAULT NULL COMMENT '客户端id',
  `content` varchar(255) DEFAULT NULL COMMENT '内容',
  `time` varchar(255) DEFAULT NULL COMMENT '时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pc_uploadfile
-- ----------------------------
DROP TABLE IF EXISTS `pc_uploadfile`;
CREATE TABLE `pc_uploadfile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) DEFAULT NULL COMMENT '客户端id',
  `file_path` text COMMENT '文件路径',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=201 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pc_user
-- ----------------------------
DROP TABLE IF EXISTS `pc_user`;
CREATE TABLE `pc_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `state` int(2) DEFAULT '1' COMMENT '0停用1正常',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=93 DEFAULT CHARSET=utf8;
