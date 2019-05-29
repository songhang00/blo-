/*
MySQL Data Transfer
Source Host: localhost
Source Database: testguest
Target Host: localhost
Target Database: testguest
Date: 2018/8/27 14:25:55
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for tg_article
-- ----------------------------
CREATE TABLE `tg_article` (
  `tg_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '//id',
  `tg_reid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '//主题ID',
  `tg_username` varchar(20) NOT NULL COMMENT '//发帖人',
  `tg_type` tinyint(2) unsigned NOT NULL COMMENT '//发帖类型',
  `tg_title` varchar(40) NOT NULL COMMENT '//帖子标题',
  `tg_content` text NOT NULL COMMENT '//帖子内容',
  `tg_readcount` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '//阅读量',
  `tg_commendcount` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '//评论量',
  `tg_nice` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '//精华帖',
  `tg_date` datetime NOT NULL COMMENT '//发帖时间',
  PRIMARY KEY (`tg_id`)
) ENGINE=MyISAM AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tg_flower
-- ----------------------------
CREATE TABLE `tg_flower` (
  `tg_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '//ID',
  `tg_touser` varchar(20) NOT NULL COMMENT '//收花者',
  `tg_fromuser` varchar(20) NOT NULL COMMENT '//送花着',
  `tg_flower` mediumint(8) unsigned NOT NULL COMMENT '//花朵个数',
  `tg_content` varchar(200) NOT NULL COMMENT '//感言',
  `tg_date` datetime NOT NULL COMMENT '//时间',
  PRIMARY KEY (`tg_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tg_friend
-- ----------------------------
CREATE TABLE `tg_friend` (
  `tg_id` mediumint(8) NOT NULL AUTO_INCREMENT COMMENT '//ID',
  `tg_touser` varchar(20) NOT NULL COMMENT '//被添加的好友',
  `tg_fromuser` varchar(20) NOT NULL COMMENT '//添加的人',
  `tg_content` varchar(200) NOT NULL COMMENT '//请求内容',
  `tg_state` tinyint(1) NOT NULL DEFAULT '0' COMMENT '//验证',
  `tg_date` datetime NOT NULL COMMENT '//添加时间',
  PRIMARY KEY (`tg_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tg_message
-- ----------------------------
CREATE TABLE `tg_message` (
  `tg_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '//ID',
  `tg_touser` varchar(20) NOT NULL COMMENT '//收信人',
  `tg_fromuser` varchar(20) NOT NULL COMMENT '//发信人',
  `tg_content` varchar(200) NOT NULL COMMENT '//发信内容',
  `tg_state` tinyint(1) NOT NULL DEFAULT '0' COMMENT '//短信状态',
  `tg_date` datetime NOT NULL COMMENT '//发送时间',
  PRIMARY KEY (`tg_id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tg_system
-- ----------------------------
CREATE TABLE `tg_system` (
  `tg_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '//ID',
  `tg_webname` varchar(20) NOT NULL COMMENT '//网站名称',
  `tg_article` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '//文章分页数',
  `tg_blog` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '//博友分页数',
  `tg_photo` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '//相册分页数',
  `tg_skin` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '//网站皮肤',
  `tg_string` varchar(200) NOT NULL COMMENT '//网站敏感字符串',
  `tg_post` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '//发帖限制',
  `tg_re` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '//回帖限制',
  `tg_code` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '//是否启用验证码',
  `tg_register` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '//是否开放会员',
  PRIMARY KEY (`tg_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tg_user
-- ----------------------------
CREATE TABLE `tg_user` (
  `tg_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '//用户自动编号',
  `tg_uniqid` char(40) NOT NULL COMMENT '//验证身份的唯一标识符',
  `tg_active` char(40) DEFAULT NULL COMMENT '//激活登录用户',
  `tg_username` varchar(20) NOT NULL COMMENT '//用户名',
  `tg_password` char(40) NOT NULL COMMENT '//密码',
  `tg_question` varchar(20) NOT NULL COMMENT '//密码提示',
  `tg_answer` char(40) NOT NULL COMMENT '//密码回答',
  `tg_email` varchar(40) DEFAULT NULL COMMENT '//邮件',
  `tg_qq` varchar(10) DEFAULT NULL COMMENT '//QQ',
  `tg_url` varchar(40) DEFAULT NULL COMMENT '//网址',
  `tg_sex` char(1) NOT NULL COMMENT '//性别',
  `tg_face` char(12) NOT NULL COMMENT '//头像',
  `tg_switch` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '//个性签名开关',
  `tg_autograph` varchar(200) DEFAULT NULL COMMENT '//签名内容',
  `tg_level` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '//会员等级',
  `tg_post_time` varchar(20) NOT NULL DEFAULT '0' COMMENT '//发帖的时间戳',
  `tg_article_time` varchar(20) NOT NULL DEFAULT '0' COMMENT '//回帖的时间戳',
  `tg_reg_time` datetime NOT NULL COMMENT '//注册时间',
  `tg_last_time` datetime NOT NULL COMMENT '//最后登录的时间',
  `tg_last_ip` varchar(20) NOT NULL COMMENT '//最后登录的IP',
  `tg_login_count` smallint(4) unsigned NOT NULL DEFAULT '0' COMMENT '//登录次数',
  PRIMARY KEY (`tg_id`)
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `tg_article` VALUES ('53', '0', 'yaoming', '1', '首页 yaoming·个人中心 (3) 博友', '首页 yaoming·个人中心 (3) 博友首页 yaoming·个人中心 (3) 博友首页 yaoming·个人中心 (3) 博友首页 yaoming·个人中心 (3) 博友首页 yaoming·个人中心 (3) 博友首页 yaoming·个人中心 (3) 博友首页 yaoming·个人中心 (3) 博友首页 yaoming·个人中心 (3) 博友', '14', '2', '0', '2018-08-27 08:06:20');
INSERT INTO `tg_article` VALUES ('54', '11', 'zhaoyao', '16', 'RE:暗黑魔幻《炼狱》4月19正式开放封测', '<?php echo $_html[\'re\']?><?php echo $_html[\'re\']?><?php echo $_html[\'re\']?>', '0', '0', '0', '2018-08-27 08:22:11');
INSERT INTO `tg_article` VALUES ('55', '11', 'zhaoyao', '16', '回复2楼的zhaoyao', '<?php echo $_html[\'re\']?><?php echo $_html[\'re\']?><?php echo $_html[\'re\']?>', '0', '0', '0', '2018-08-27 08:22:40');
INSERT INTO `tg_article` VALUES ('56', '16', 'yaoming', '1', '回复2楼的妮可罗宾', '<?php echo $_html[\'re\']?><?php echo $_html[\'re\']?>', '0', '0', '0', '2018-08-27 08:24:47');
INSERT INTO `tg_article` VALUES ('57', '53', 'zhaoyao', '1', 'RE:首页 yaoming·个人中心 (3) 博友', '<?php echo $_html[\'re\'<?php echo $_html[\'re\']?>]?>', '0', '0', '0', '2018-08-27 08:29:25');
INSERT INTO `tg_article` VALUES ('58', '53', 'songhang0', '1', '回复2楼的zhaoyao', '<?php echo $_html[\'re\']?><?php echo $_html[\'re\']?>', '0', '0', '0', '2018-08-27 08:30:13');
INSERT INTO `tg_article` VALUES ('59', '0', 'songhang0', '1', '<?php echo $_html[\'re\']?>', '<?php echo $_html[\'re\']?><?php echo $_html[\'re\']?>', '2', '0', '0', '2018-08-27 08:31:02');
INSERT INTO `tg_article` VALUES ('60', '7', 'songhang0', '4', 'RE:姚仙亲自主刀 《仙剑5》剧透曝光', '<?php echo $_html[\'re\']?>', '0', '0', '0', '2018-08-27 08:32:21');
INSERT INTO `tg_article` VALUES ('61', '0', 'songhang0', '1', '首页 songhang0·个', '首页 songhang0·个首页 songhang0·个', '17', '2', '0', '2018-08-27 08:33:27');
INSERT INTO `tg_article` VALUES ('62', '61', 'songhang0', '1', 'RE:首页 songhang0·个', '[img]qpic/1/16.gif[/img][img]qpic/1/15.gif[/img][img]qpic/1/11.gif[/img]', '0', '0', '0', '2018-08-27 08:40:20');
INSERT INTO `tg_article` VALUES ('63', '61', 'songhang0', '1', 'RE:首页 songhang0·个', '<li><a href=\"photo.php\">相册</a></li><li><a href=\"photo.php\">相册</a></li>', '0', '0', '0', '2018-08-27 09:15:33');
INSERT INTO `tg_system` VALUES ('1', 'Web俱乐部(163.COM)', '15', '15', '12', '3', '他妈的|NND|草|操|垃圾|淫荡|贱货|SB|sb|jb|JB|法轮功|小泉', '30', '15', '0', '1');
INSERT INTO `tg_user` VALUES ('25', 'c75fd7135784a2bd2fe5937e3787445c3e3a6c79', '', '星矢', '7c4a8d09ca3762af61e59520943dc26494f8941b', '我是星矢', '2d668504f97a0f9d1798298b84288980c7b388ea', 'xinshi@sina.com.cn', '234234900', 'http://www.xinshi.com', '男', 'face/m62.gif', '1', '我是星矢！', '1', '0', '0', '2018-08-15 11:13:33', '2018-08-27 11:16:34', '::1', '38');
INSERT INTO `tg_user` VALUES ('54', '3a781d9d884a45f05c8f79abae710ad93739c9a6', null, 'songhnagjk-', 'c984aed014aec7623a54f0591da07a85fd4b762d', 'imdfdffadsf', '95fe4e26cf97924c0370b66195a98e903ec42253', '127928950@qq.com', '1272982892', 'http://www.baidu.com', '男', 'face/m09.gif', '0', null, '0', '0', '0', '2018-08-27 11:12:07', '2018-08-27 11:12:07', '::1', '0');
INSERT INTO `tg_user` VALUES ('41', 'a62b414692ee3b9fa57de7d211f478657d44400f', '', 'songhang', 'c984aed014aec7623a54f0591da07a85fd4b762d', 'mimatihsi', '8be6ab6ec43fbaba767af9ef5eb362bd0aafe87f', '1729890590@qq.com', '127292890', 'http://www.baidu.com', '男', 'face/m01.gif', '0', null, '1', '0', '0', '2018-08-26 21:51:28', '2018-08-26 21:51:28', '::1', '0');
INSERT INTO `tg_user` VALUES ('42', '4f8af1a4d38a36f2f59442a28c9fdca58782fa12', '293228f6e948f94411d0f417bcf0ad25d15ccb03', 'songhnag', 'c984aed014aec7623a54f0591da07a85fd4b762d', 'mimffd', '79119ad6e756584ec4c9ab775b2deff1b76511ef', '127292890@qq.com', '1272928590', 'http://www.baidu.com', '男', 'face/m01.gif', '0', null, '0', '0', '0', '2018-08-26 22:01:28', '2018-08-26 22:01:28', '::1', '0');
INSERT INTO `tg_user` VALUES ('43', '261e70c662d8480bfe84786503cb510a049f8530', '2653a67d55413214e39a4ba919f514728ab64539', 'songhanga', 'c984aed014aec7623a54f0591da07a85fd4b762d', 'mimatishi', 'eb0b752c4bf79f377c2a3c426b5391c0f4b9896d', '12729280@qq.com', '1272928590', 'http://www.baidu.com', '男', 'face/m01.gif', '0', null, '0', '0', '0', '2018-08-26 22:09:35', '2018-08-26 22:09:35', '::1', '0');
INSERT INTO `tg_user` VALUES ('44', '872275d789ec6ff76329d2b9d4d82ee19f9f3ff2', '4631bdf3d2784b6622dc94c77a559ab4d5f3e4a2', 'songhangs', 'c984aed014aec7623a54f0591da07a85fd4b762d', 'mimatishi', 'eb0b752c4bf79f377c2a3c426b5391c0f4b9896d', '1272928590@qq.com', '1272928590', 'http://www.baiidu.com', '男', 'face/m01.gif', '0', null, '0', '0', '0', '2018-08-26 22:35:45', '2018-08-26 22:35:45', '::1', '0');
INSERT INTO `tg_user` VALUES ('45', '30eb264d574113e4c6f8b5cb497a4feb539b9d71', '7a79cec994ef93b974d6bf3f2ecdc0ecf86be0e3', 'songhangaa', 'c984aed014aec7623a54f0591da07a85fd4b762d', 'mimatishi', '01e79d2e3369f8dd031ccffe9470debdfb80f8fc', '127928590@qq.com', '1272928590', 'http://www.baidu.com', '男', 'face/m01.gif', '0', null, '0', '0', '0', '2018-08-26 22:40:43', '2018-08-26 22:40:43', '::1', '0');
INSERT INTO `tg_user` VALUES ('47', 'e63a362cf31b791e7149468a8b727e47fff7372d', null, 'yonghuming', 'c984aed014aec7623a54f0591da07a85fd4b762d', 'mimatishi', 'eb0b752c4bf79f377c2a3c426b5391c0f4b9896d', '1272928590@qq.com', '127995915', 'http://www.baidu.com', '男', 'face/m01.gif', '0', null, '0', '0', '0', '2018-08-26 23:36:20', '2018-08-26 23:36:20', '::1', '0');
INSERT INTO `tg_user` VALUES ('48', 'e5ac4518508590799a43fe6fb95e7370df07d942', null, 'songhang0', 'c984aed014aec7623a54f0591da07a85fd4b762d', 'mimatishi', 'eb0b752c4bf79f377c2a3c426b5391c0f4b9896d', '127928950@qq.com', '1272982892', 'http://www.baidu.com', '男', 'face/m01.gif', '1', '你是不是傻', '0', '1535330007', '1535332533', '2018-08-26 23:41:32', '2018-08-27 08:29:51', '::1', '2');
INSERT INTO `tg_user` VALUES ('49', '50ed8232f1f51a7ddc8140bb0e046964f8040845', null, 'songhangq', 'c984aed014aec7623a54f0591da07a85fd4b762d', 'imdfdffadsf', '95fe4e26cf97924c0370b66195a98e903ec42253', '127928950@qq.com', '1272982892', 'http://www.baidu.com', '男', 'face/m01.gif', '0', null, '0', '0', '0', '2018-08-26 23:51:18', '2018-08-26 23:51:18', '::1', '0');
INSERT INTO `tg_user` VALUES ('50', 'c92e2573508d144edbdc88f458953502f475dcb7', null, 'baiyun', 'c984aed014aec7623a54f0591da07a85fd4b762d', 'mimatishi', 'eb0b752c4bf79f377c2a3c426b5391c0f4b9896d', '127928950@qq.com', '1272982892', 'http://www.baidu.com', '男', 'face/m01.gif', '0', null, '0', '0', '0', '2018-08-27 00:25:57', '2018-08-27 00:25:57', '::1', '0');
INSERT INTO `tg_user` VALUES ('51', '58bff8061fac0f611f5680d32b37a295629c35f6', null, 'zhaoyao', 'c984aed014aec7623a54f0591da07a85fd4b762d', 'imdfdffadsf', '95fe4e26cf97924c0370b66195a98e903ec42253', '127928950@qq.com', '1272982892', 'http://www.baidu.com', '男', 'face/m01.gif', '0', null, '0', '0', '1535329765', '2018-08-27 00:34:55', '2018-08-27 08:27:07', '::1', '2');
INSERT INTO `tg_user` VALUES ('52', '41d11a7bac09e516ed74272c17c1edc0a374b4be', null, 'zhaoyao1', '000000', 'imdfdffadsf', '95fe4e26cf97924c0370b66195a98e903ec42253', '127928950@qq.com', '1272982892', 'http://www.baidu.com', '男', 'face/m01.gif', '0', null, '0', '0', '0', '2018-08-27 00:39:35', '2018-08-27 00:39:35', '::1', '0');
INSERT INTO `tg_user` VALUES ('53', '43eedafdab3d121c7968a162b6fc28ecea45e2c9', null, 'yaoming', 'c984aed014aec7623a54f0591da07a85fd4b762d', 'mimatishi', 'd0bc772bce696dd9878b069b3f503367522f6025', '127928950@qq.com', '1272982892', 'http://www.baidu.com', '男', 'face/m01.gif', '0', null, '0', '1535328380', '1535329487', '2018-08-27 00:45:02', '2018-08-27 08:24:19', '::1', '5');
