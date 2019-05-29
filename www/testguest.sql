-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2018 年 10 月 19 日 12:17
-- 服务器版本: 5.6.12-log
-- PHP 版本: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `test_guest`
--
CREATE DATABASE IF NOT EXISTS `test_guest` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `test_guest`;

-- --------------------------------------------------------

--
-- 表的结构 `tg_article`
--

CREATE TABLE IF NOT EXISTS `tg_article` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=67 ;

--
-- 转存表中的数据 `tg_article`
--

INSERT INTO `tg_article` (`tg_id`, `tg_reid`, `tg_username`, `tg_type`, `tg_title`, `tg_content`, `tg_readcount`, `tg_commendcount`, `tg_nice`, `tg_date`) VALUES
(64, 0, 'username', 1, 'woshibiaitoa ', '[img]qpic/1/8.gif[/img][img]qpic/1/8.gif[/img]', 18, 1, 0, '2018-10-19 16:17:52'),
(65, 64, 'username', 1, 'RE:woshibiaitoa ', 'nishibhshi', 0, 0, 0, '2018-10-19 16:18:02'),
(66, 0, 'username', 1, 'ganga', '[img]qpic/2/6.gif[/img][img]qpic/2/6.gif[/img][img]qpic/2/6.gif[/img][img]qpic/2/6.gif[/img][img]qpic/2/6.gif[/img][img]qpic/2/5.gif[/img][img]qpic/2/4.gif[/img][img]qpic/2/3.gif[/img][img]qpic/2/2.gif[/img][img]qpic/2/2.gif[/img][img]qpic/2/1.gif[/img]', 5, 0, 0, '2018-10-19 20:13:22');

-- --------------------------------------------------------

--
-- 表的结构 `tg_flower`
--

CREATE TABLE IF NOT EXISTS `tg_flower` (
  `tg_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '//ID',
  `tg_touser` varchar(20) NOT NULL COMMENT '//收花者',
  `tg_fromuser` varchar(20) NOT NULL COMMENT '//送花着',
  `tg_flower` mediumint(8) unsigned NOT NULL COMMENT '//花朵个数',
  `tg_content` varchar(200) NOT NULL COMMENT '//感言',
  `tg_date` datetime NOT NULL COMMENT '//时间',
  PRIMARY KEY (`tg_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- 转存表中的数据 `tg_flower`
--

INSERT INTO `tg_flower` (`tg_id`, `tg_touser`, `tg_fromuser`, `tg_flower`, `tg_content`, `tg_date`) VALUES
(11, 'username', 'username', 1, '灰常欣赏你，送你花啦~~~', '2018-10-19 16:42:13'),
(12, 'username', 'username', 2, '灰常欣赏你，送你花啦~~~', '2018-10-19 16:42:21');

-- --------------------------------------------------------

--
-- 表的结构 `tg_friend`
--

CREATE TABLE IF NOT EXISTS `tg_friend` (
  `tg_id` mediumint(8) NOT NULL AUTO_INCREMENT COMMENT '//ID',
  `tg_touser` varchar(20) NOT NULL COMMENT '//被添加的好友',
  `tg_fromuser` varchar(20) NOT NULL COMMENT '//添加的人',
  `tg_content` varchar(200) NOT NULL COMMENT '//请求内容',
  `tg_state` tinyint(1) NOT NULL DEFAULT '0' COMMENT '//验证',
  `tg_date` datetime NOT NULL COMMENT '//添加时间',
  PRIMARY KEY (`tg_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

-- --------------------------------------------------------

--
-- 表的结构 `tg_message`
--

CREATE TABLE IF NOT EXISTS `tg_message` (
  `tg_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '//ID',
  `tg_touser` varchar(20) NOT NULL COMMENT '//收信人',
  `tg_fromuser` varchar(20) NOT NULL COMMENT '//发信人',
  `tg_content` varchar(200) NOT NULL COMMENT '//发信内容',
  `tg_state` tinyint(1) NOT NULL DEFAULT '0' COMMENT '//短信状态',
  `tg_date` datetime NOT NULL COMMENT '//发送时间',
  PRIMARY KEY (`tg_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

-- --------------------------------------------------------

--
-- 表的结构 `tg_system`
--

CREATE TABLE IF NOT EXISTS `tg_system` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `tg_system`
--

INSERT INTO `tg_system` (`tg_id`, `tg_webname`, `tg_article`, `tg_blog`, `tg_photo`, `tg_skin`, `tg_string`, `tg_post`, `tg_re`, `tg_code`, `tg_register`) VALUES
(1, 'Web俱乐部(163.COM)', 15, 15, 12, 3, '他妈的|NND|草|操|垃圾|淫荡|贱货|SB|sb|jb|JB|法轮功|小泉', 30, 15, 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `tg_user`
--

CREATE TABLE IF NOT EXISTS `tg_user` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=56 ;

--
-- 转存表中的数据 `tg_user`
--

INSERT INTO `tg_user` (`tg_id`, `tg_uniqid`, `tg_active`, `tg_username`, `tg_password`, `tg_question`, `tg_answer`, `tg_email`, `tg_qq`, `tg_url`, `tg_sex`, `tg_face`, `tg_switch`, `tg_autograph`, `tg_level`, `tg_post_time`, `tg_article_time`, `tg_reg_time`, `tg_last_time`, `tg_last_ip`, `tg_login_count`) VALUES
(55, '10c98d4554f526d3132c3daf7491cfc9f96ba0cc', NULL, 'username', '249ba36000029bbe97499c03db5a9001f6b734ec', 'buzhidsao', '08fde3560c44e946dda99c48ed5d46c483e7d15b', '1272928590@qq.com', '1272928590', 'http://www.baidu.com', '男', 'face/m01.gif', 1, NULL, 1, '1539951202', '1539937082', '2018-10-19 15:56:58', '2018-10-19 20:12:26', '127.0.0.1', 4),
(54, '3a781d9d884a45f05c8f79abae710ad93739c9a6', NULL, 'songhnagjk-', 'c984aed014aec7623a54f0591da07a85fd4b762d', 'imdfdffadsf', '95fe4e26cf97924c0370b66195a98e903ec42253', '127928950@qq.com', '1272982892', 'http://www.baidu.com', '男', 'face/m09.gif', 0, NULL, 0, '0', '0', '2018-08-27 11:12:07', '2018-08-27 11:12:07', '::1', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
