﻿# Host: localhost  (Version: 5.5.53)
# Date: 2017-06-27 17:51:50
# Generator: MySQL-Front 5.3  (Build 4.234)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "card_admin"
#

DROP TABLE IF EXISTS `card_admin`;
CREATE TABLE `card_admin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL COMMENT '用户名',
  `nickname` varchar(20) NOT NULL COMMENT '昵称',
  `avatar` varchar(255) NOT NULL COMMENT '用户头像，相对于upload/avatar目录',
  `password` char(32) NOT NULL COMMENT '密码',
  `phone` bigint(11) NOT NULL COMMENT '手机号码',
  `email` varchar(100) NOT NULL DEFAULT '' COMMENT '登录邮箱',
  `status` tinyint(1) NOT NULL DEFAULT '2' COMMENT '用户状态 3：锁定； 1：正常 ；2：未验证',
  `regtime` int(11) NOT NULL COMMENT '注册时间',
  `loginip` varchar(20) NOT NULL COMMENT '最近一次登陆ip',
  `logintime` int(11) NOT NULL COMMENT '最近一次登陆时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户表';

#
# Data for table "card_admin"
#

/*!40000 ALTER TABLE `card_admin` DISABLE KEYS */;
INSERT INTO `card_admin` VALUES (1,'admin','九幽','','b7a1b6d08af8f9fbc5c009889bb4b165',187,'jian34long@163.com',1,1497332555,'127.0.0.1',1498555853),(4,'JIUYOU','游帝','','d41d8cd98f00b204e9800998ecf8427e',111,'1547560934@qq.com',1,1498531975,'127.0.0.1',1498533464);
/*!40000 ALTER TABLE `card_admin` ENABLE KEYS */;

#
# Structure for table "card_auth_group"
#

DROP TABLE IF EXISTS `card_auth_group`;
CREATE TABLE `card_auth_group` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` char(100) NOT NULL DEFAULT '' COMMENT '分组名称',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态',
  `rules` char(80) NOT NULL DEFAULT '' COMMENT '权限',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户组表';

#
# Data for table "card_auth_group"
#

/*!40000 ALTER TABLE `card_auth_group` DISABLE KEYS */;
INSERT INTO `card_auth_group` VALUES (1,'管理员',1,'1,2,4,5,6,7,8,9,24,3,10,11,12,13,14,20,21,22,23,15'),(3,'编辑',1,'');
/*!40000 ALTER TABLE `card_auth_group` ENABLE KEYS */;

#
# Structure for table "card_auth_group_access"
#

DROP TABLE IF EXISTS `card_auth_group_access`;
CREATE TABLE `card_auth_group_access` (
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '用户ID',
  `group_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '用户组ID',
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  KEY `uid` (`uid`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户和组对应关系表';

#
# Data for table "card_auth_group_access"
#

/*!40000 ALTER TABLE `card_auth_group_access` DISABLE KEYS */;
INSERT INTO `card_auth_group_access` VALUES (4,3);
/*!40000 ALTER TABLE `card_auth_group_access` ENABLE KEYS */;

#
# Structure for table "card_auth_rule"
#

DROP TABLE IF EXISTS `card_auth_rule`;
CREATE TABLE `card_auth_rule` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0' COMMENT '父级ID',
  `name` char(80) NOT NULL DEFAULT '' COMMENT '地址路径',
  `title` char(20) NOT NULL DEFAULT '' COMMENT '规则名称',
  `type` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态',
  `condition` char(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='规则表';

#
# Data for table "card_auth_rule"
#

/*!40000 ALTER TABLE `card_auth_rule` DISABLE KEYS */;
INSERT INTO `card_auth_rule` VALUES (1,0,'Admin/Index/index','后台首页',1,1,''),(2,0,'Admin/ShowNav/config','系统设置',1,1,''),(3,0,'Admin/ShowNav/rule','权限控制',1,1,''),(4,2,'Admin/Nav/index','菜单管理',1,1,''),(6,4,'Admin/Nav/add','添加菜单',1,1,''),(7,4,'Admin/Nav/edit','修改菜单',1,1,''),(8,4,'Admin/Nav/delete','删除菜单',1,1,''),(9,4,'Admin/Nav/order','菜单排序',1,1,''),(10,3,'Admin/Rule/index','权限管理',1,1,''),(11,10,'Admin/Rule/add','添加权限',1,1,''),(12,10,'Admin/Rule/edit','修改权限',1,1,''),(13,10,'Admin/Rule/delete','删除权限',1,1,''),(14,3,'Admin/Rule/group','用户组管理',1,1,''),(15,3,'Admin/Rule/admin_user_list','管理员列表',1,1,''),(20,14,'Admin/Rule/add_group','添加用户组',1,1,''),(21,14,'Admin/Rule/edit_group','修改用户组',1,1,''),(22,14,'Admin/Rule/delete_group','删除用户组',1,1,''),(23,14,'Admin/Rule/rule_group','分配权限',1,1,''),(24,2,'Admin/Config/index','系统设置',1,1,''),(25,1,'Admin/Index/Welcome','欢迎页面',1,1,''),(26,24,'Admin/Config/add','配置新增',1,1,''),(27,24,'Admin/Config/edit','配置更新',1,1,''),(29,0,'Admin/ShowNav/user','个人中心',1,1,'');
/*!40000 ALTER TABLE `card_auth_rule` ENABLE KEYS */;

#
# Structure for table "card_config"
#

DROP TABLE IF EXISTS `card_config`;
CREATE TABLE `card_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `configname` varchar(60) NOT NULL COMMENT '配置名称',
  `info` varchar(255) NOT NULL COMMENT '配置说明',
  `content` text NOT NULL COMMENT '详细内容',
  `type` varchar(255) NOT NULL COMMENT '配置类型',
  `optime` int(11) NOT NULL DEFAULT '0' COMMENT '管理员操作时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统设置';

#
# Data for table "card_config"
#

/*!40000 ALTER TABLE `card_config` DISABLE KEYS */;
INSERT INTO `card_config` VALUES (1,'cfg_name','网站名称','Code Help','string',1498556224),(2,'cfg_keywords','网站关键字','内容管理系统','string',1498556224),(3,'cfg_description','网站描述','这是基于Auth权限的管理系统','bstring',0),(4,'cfg_powerby','网站底部版权','CopyRight © 2016 九幽IT 版权所有 粤ICP备16060013号-1','string',1498556224),(5,'cfg_log','网站后台操作日志','Y','bool',1497843844),(6,'cfg_url','网站地址','http://code.itnetve.top','string',1498556224),(7,'cfg_verify','登录验证码','N','bool',1498552822),(8,'cfg_prefix','SESSION前缀','PzSEa7038A_','string',1498556224);
/*!40000 ALTER TABLE `card_config` ENABLE KEYS */;

#
# Structure for table "card_log"
#

DROP TABLE IF EXISTS `card_log`;
CREATE TABLE `card_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `logtext` varchar(50) NOT NULL DEFAULT '' COMMENT '操作内容',
  `time` int(10) unsigned DEFAULT NULL COMMENT '操作时间',
  `uid` char(20) NOT NULL DEFAULT '' COMMENT '外键：操作用户id',
  `ip` char(15) NOT NULL COMMENT 'IP',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员操作日志';

#
# Data for table "card_log"
#

/*!40000 ALTER TABLE `card_log` DISABLE KEYS */;
INSERT INTO `card_log` VALUES (4,'修改管理员-游帝',1498403902,'admin','127.0.0.1'),(8,'登录',1497853328,'admin','127.0.0.1'),(9,'登录',1497853475,'JIUYOU','127.0.0.1'),(10,'登录',1497853490,'admin','127.0.0.1'),(11,'登录',1498392002,'admin','127.0.0.1'),(12,'系统配置更新',1498392210,'admin','127.0.0.1'),(13,'添加菜单-首页欢迎',1498398222,'admin','127.0.0.1'),(14,'菜单排序',1498398234,'admin','127.0.0.1'),(15,'添加权限-欢迎页面',1498398713,'admin','127.0.0.1'),(16,'分配权限',1498398729,'admin','127.0.0.1'),(17,'登录',1498398744,'JIUYOU','127.0.0.1'),(18,'登录',1498398769,'admin','127.0.0.1'),(19,'登录',1498399971,'JIUYOU','127.0.0.1'),(20,'登录',1498400012,'admin','127.0.0.1'),(31,'修改管理员-游帝',1498403973,'admin','127.0.0.1'),(32,'菜单排序',1498404080,'admin','127.0.0.1'),(33,'添加菜单-DSAF',1498404111,'admin','127.0.0.1'),(34,'添加菜单-系统日志',1498404231,'admin','127.0.0.1'),(35,'菜单排序',1498404243,'admin','127.0.0.1'),(36,'添加菜单-欢迎页面',1498404282,'admin','127.0.0.1'),(38,'登录',1498531029,'admin','127.0.0.1'),(39,'登录',1498531071,'admin','127.0.0.1'),(45,'清空密码-JIUYOU',1498531975,'admin','127.0.0.1'),(51,'系统配置更新',1498532429,'admin','127.0.0.1'),(52,'登录',1498533372,'admin','127.0.0.1'),(53,'登录',1498533438,'admin','127.0.0.1'),(54,'解锁管理员-JIUYOU',1498533444,'admin','127.0.0.1'),(55,'分配权限',1498533457,'admin','127.0.0.1'),(56,'登录',1498533491,'admin','127.0.0.1'),(57,'修改用户组-管理员',1498533845,'admin','127.0.0.1'),(58,'修改管理员-九幽',1498533861,'admin','127.0.0.1'),(59,'锁定管理员-JIUYOU',1498534102,'admin','127.0.0.1'),(60,'解锁管理员-JIUYOU',1498534289,'admin','127.0.0.1'),(61,'锁定管理员-JIUYOU',1498534291,'admin','127.0.0.1'),(62,'解锁管理员-JIUYOU',1498535096,'admin','127.0.0.1'),(63,'锁定管理员-JIUYOU',1498535098,'admin','127.0.0.1'),(64,'解锁管理员-JIUYOU',1498543173,'admin','127.0.0.1'),(65,'锁定管理员-JIUYOU',1498543180,'admin','127.0.0.1'),(66,'登录',1498544114,'admin','127.0.0.1'),(67,'添加权限-Admin/Config/add',1498544909,'admin','127.0.0.1'),(68,'修改权限-配置新增',1498544920,'admin','127.0.0.1'),(69,'添加权限-配置更新',1498544941,'admin','127.0.0.1'),(70,'添加权限-个人中心',1498545003,'admin','127.0.0.1'),(71,'解锁管理员-JIUYOU',1498548818,'admin','127.0.0.1'),(72,'登录',1498550650,'admin','127.0.0.1'),(73,'系统配置更新',1498550658,'admin','127.0.0.1'),(74,'登录',1498552816,'admin','127.0.0.1'),(75,'系统配置更新',1498552822,'admin','127.0.0.1'),(76,'登录',1498552830,'admin','127.0.0.1'),(77,'登录',1498554052,'admin','127.0.0.1'),(78,'登录',1498554266,'admin','127.0.0.1'),(79,'登录',1498554754,'admin','127.0.0.1'),(80,'登录',1498555131,'admin','127.0.0.1'),(81,'配置变量添加-cfg_prefix',1498555765,'admin','127.0.0.1'),(82,'登录',1498555797,'admin','127.0.0.1'),(83,'登录',1498555853,'admin','127.0.0.1'),(84,'系统配置更新',1498556164,'admin','127.0.0.1'),(85,'系统配置更新',1498556224,'admin','127.0.0.1'),(86,'删除权限-个人中心',1498556804,'admin','127.0.0.1'),(87,'添加权限-个人中心',1498556889,'admin','127.0.0.1'),(88,'修改权限-个人中心',1498556910,'admin','127.0.0.1'),(89,'添加菜单-个人中心',1498556954,'admin','127.0.0.1'),(90,'菜单排序',1498556970,'admin','127.0.0.1'),(91,'修改菜单-个人中心',1498557000,'admin','127.0.0.1'),(92,'添加菜单-基本资料',1498557045,'admin','127.0.0.1');
/*!40000 ALTER TABLE `card_log` ENABLE KEYS */;

#
# Structure for table "card_nav"
#

DROP TABLE IF EXISTS `card_nav`;
CREATE TABLE `card_nav` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '菜单表',
  `pid` int(11) unsigned DEFAULT '0' COMMENT '所属菜单',
  `name` varchar(15) DEFAULT '' COMMENT '菜单名称',
  `mca` varchar(255) DEFAULT '' COMMENT '模块、控制器、方法',
  `ico` varchar(20) DEFAULT '' COMMENT 'font-awesome图标',
  `order_number` int(11) unsigned DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='菜单表';

#
# Data for table "card_nav"
#

/*!40000 ALTER TABLE `card_nav` DISABLE KEYS */;
INSERT INTO `card_nav` VALUES (1,0,'系统设置','Admin/ShowNav/config','cog',2),(2,1,'菜单管理','Admin/Nav/index','',1),(3,0,'权限控制','Admin/ShowNav/rule','expeditedssl',3),(4,3,'权限管理','Admin/Rule/index','',1),(5,3,'用户组管理','Admin/Rule/group','',2),(6,3,'管理员列表','Admin/Rule/admin_user_list','',3),(9,1,'系统设置','Admin/Config/index','',2),(13,1,'系统日志','Admin/Config/log','',3),(15,0,'个人中心','Admin/ShowNav/user','user',1),(16,15,'基本资料','Admin/User/index','',NULL);
/*!40000 ALTER TABLE `card_nav` ENABLE KEYS */;
