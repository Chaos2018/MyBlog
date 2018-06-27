/*
Navicat MySQL Data Transfer

Source Server         : db-mysql
Source Server Version : 50560
Source Host           : localhost:3306
Source Database       : db_blog

Target Server Type    : MYSQL
Target Server Version : 50560
File Encoding         : 65001

Date: 2018-06-27 13:12:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tb_article`
-- ----------------------------
DROP TABLE IF EXISTS `tb_article`;
CREATE TABLE `tb_article` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `article_typeID` int(10) DEFAULT NULL,
  `article_title` char(30) DEFAULT NULL,
  `article_content` text,
  `article_sdTime` char(30) DEFAULT NULL,
  `article_create` char(30) DEFAULT NULL,
  `article_info` char(30) DEFAULT NULL,
  `article_review` int(10) DEFAULT NULL,
  `article_count` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Reference_1` (`article_typeID`),
  CONSTRAINT `FK_Reference_1` FOREIGN KEY (`article_typeID`) REFERENCES `tb_articletype` (`articleType_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_article
-- ----------------------------
INSERT INTO `tb_article` VALUES ('1', '1', '123', '123', null, null, null, null, null);
INSERT INTO `tb_article` VALUES ('2', '2', '123', '123', null, null, null, null, null);
INSERT INTO `tb_article` VALUES ('3', '2', '123', '123', null, null, null, null, null);
INSERT INTO `tb_article` VALUES ('4', '1', '123', '1111111111111111111111111111111111111111111', '2018年06月27日 11:20:44', '摘自', '1111', null, '0');
INSERT INTO `tb_article` VALUES ('5', '3', '122', '222222222222222222222222222222222', '2018年06月27日 11:20:52', '原创', '22', null, '0');
INSERT INTO `tb_article` VALUES ('6', '1', '33333333', '333333333333333333333333333333333333333333333333', '2018年06月27日 11:21:01', '原创', '3333', null, '0');

-- ----------------------------
-- Table structure for `tb_articletype`
-- ----------------------------
DROP TABLE IF EXISTS `tb_articletype`;
CREATE TABLE `tb_articletype` (
  `articleType_id` int(10) NOT NULL AUTO_INCREMENT,
  `articleType_name` char(30) NOT NULL,
  `articleType_info` char(50) DEFAULT NULL,
  PRIMARY KEY (`articleType_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_articletype
-- ----------------------------
INSERT INTO `tb_articletype` VALUES ('1', '历史', '123');
INSERT INTO `tb_articletype` VALUES ('2', '地理', '234');
INSERT INTO `tb_articletype` VALUES ('3', '生物', '3456');
INSERT INTO `tb_articletype` VALUES ('4', '体育', '关于体育');

-- ----------------------------
-- Table structure for `tb_friend`
-- ----------------------------
DROP TABLE IF EXISTS `tb_friend`;
CREATE TABLE `tb_friend` (
  `id` int(10) NOT NULL,
  `friend_name` char(30) NOT NULL,
  `friend_sex` char(6) DEFAULT NULL,
  `friend_oicq` char(30) DEFAULT NULL,
  `friend_blog` char(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_friend
-- ----------------------------
INSERT INTO `tb_friend` VALUES ('1', '111', '1', '1', '1');

-- ----------------------------
-- Table structure for `tb_master`
-- ----------------------------
DROP TABLE IF EXISTS `tb_master`;
CREATE TABLE `tb_master` (
  `master_name` char(30) NOT NULL,
  `master_password` char(30) NOT NULL,
  `master_ex` char(30) DEFAULT NULL,
  `master_Oicq` char(30) DEFAULT NULL,
  PRIMARY KEY (`master_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_master
-- ----------------------------
INSERT INTO `tb_master` VALUES ('123', '123', '1', '1');

-- ----------------------------
-- Table structure for `tb_photo`
-- ----------------------------
DROP TABLE IF EXISTS `tb_photo`;
CREATE TABLE `tb_photo` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `photo_Addr` char(30) NOT NULL,
  `photo_Info` char(30) DEFAULT NULL,
  `photo_sdTime` char(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_photo
-- ----------------------------
INSERT INTO `tb_photo` VALUES ('2', 'frontphotopic\0.jpg', '2018年06月27日 11:22:01', '123');
INSERT INTO `tb_photo` VALUES ('3', 'frontphotopic2.jpg', '2018年06月27日 11:24:15', '123');
INSERT INTO `tb_photo` VALUES ('4', 'frontphotopic3.gif', '2018年06月27日 11:34:02', '456');
INSERT INTO `tb_photo` VALUES ('5', 'frontphoto4.gif', '2018年06月27日 11:43:00', '565');
INSERT INTO `tb_photo` VALUES ('7', 'frontphoto6.gif', '2018年06月27日 11:49:38', '123');

-- ----------------------------
-- Table structure for `tb_review`
-- ----------------------------
DROP TABLE IF EXISTS `tb_review`;
CREATE TABLE `tb_review` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `review_articleId` int(10) NOT NULL,
  `review_Author` char(30) DEFAULT NULL,
  `review_Content` char(30) DEFAULT NULL,
  `review_sdTime` char(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Reference_2` (`review_articleId`),
  CONSTRAINT `FK_Reference_2` FOREIGN KEY (`review_articleId`) REFERENCES `tb_article` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='鏂囩珷璇勮';

-- ----------------------------
-- Records of tb_review
-- ----------------------------
INSERT INTO `tb_review` VALUES ('1', '1', '11', '11111111', null);

-- ----------------------------
-- Table structure for `tb_word`
-- ----------------------------
DROP TABLE IF EXISTS `tb_word`;
CREATE TABLE `tb_word` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `word_Title` char(30) NOT NULL,
  `word_Content` text NOT NULL,
  `word_sdTime` char(30) DEFAULT NULL,
  `word_Author` char(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='tb_word';

-- ----------------------------
-- Records of tb_word
-- ----------------------------
INSERT INTO `tb_word` VALUES ('1', '123', '123', null, '123');
INSERT INTO `tb_word` VALUES ('2', '123', '11111111111', '2018年06月27日 11:20:25', '匿名好友');
