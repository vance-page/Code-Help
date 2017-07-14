﻿# Host: localhost  (Version: 5.5.53)
# Date: 2017-07-14 17:47:45
# Generator: MySQL-Front 5.3  (Build 4.234)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "card_address"
#

DROP TABLE IF EXISTS `card_address`;
CREATE TABLE `card_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL COMMENT '父级ID',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '姓名',
  `sex` varchar(1) NOT NULL DEFAULT '男' COMMENT '性别',
  `birthday` varchar(11) NOT NULL DEFAULT '' COMMENT '出生日期',
  `id_card` varchar(18) NOT NULL DEFAULT '' COMMENT '身份证号码',
  `phone` varchar(20) NOT NULL DEFAULT '' COMMENT '手机号码',
  `weixin` varchar(255) NOT NULL DEFAULT '' COMMENT '微信号',
  `email` varchar(255) NOT NULL DEFAULT '' COMMENT '邮箱',
  `address` varchar(255) NOT NULL DEFAULT '' COMMENT '住址',
  `avatar` varchar(255) NOT NULL DEFAULT '' COMMENT '头像',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='通讯簿';

#
# Data for table "card_address"
#

/*!40000 ALTER TABLE `card_address` DISABLE KEYS */;
INSERT INTO `card_address` VALUES (2,32,'刘娟','女','734198400','362421199304081726','13527910425','','','',''),(3,32,'刘隆检','男','792518400','362421199502121717','18702629929','jiuyou95','jian34long@163.com','东莞虎门',''),(4,35,'陈仁焕','男','795456000','362421199503188331','18702531167','','','',''),(5,35,'胡俊林','男','796147200','362421199503265018','13407962024','','','',''),(6,32,'刘茂华','男','-20419200','362421196905101717','13631740865','','','',''),(7,35,'李先福','男','777484800','362421199408221738','13479661915','','','',''),(8,36,'徐方明','男','367344000','362321198108238116','18925468086','','','',''),(9,32,'谢桂妹','女','21052800','362421197009021721','15876465094','','','',''),(10,34,'肖珊','女','801417600','362204199505265129','15279105210','','','',''),(11,33,'谢世良','男','348940800','362421198101222010','13724236707','','','',''),(12,35,'肖正亮','男','783619200','362421199411010819','18770794610','','','',''),(13,36,'尤鲜红','女','353347200','362323198103148122','','','','',''),(14,34,'张亮','男','730396800','360428199302235114','18702531411','','','',''),(15,35,'钟亮','男','755625600','36242119931212831','187 0253 0722','','','','');
/*!40000 ALTER TABLE `card_address` ENABLE KEYS */;

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
  `address` varchar(255) NOT NULL DEFAULT '' COMMENT '住址',
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
INSERT INTO `card_admin` VALUES (1,'admin','九幽','5960325b36aca.jpg','b7a1b6d08af8f9fbc5c009889bb4b165',18702629929,'jian34long@163.com','中国广东',1,1497332555,'127.0.0.1',1500015738),(4,'JIUYOU','游帝','','d41d8cd98f00b204e9800998ecf8427e',110,'1547560934@qq.com','',3,1498531975,'127.0.0.1',1499820814);
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
INSERT INTO `card_auth_group` VALUES (1,'管理员',1,'1,2,4,5,6,7,8,9,24,3,10,11,12,13,14,20,21,22,23,15'),(3,'编辑',1,'1,25,2,34,29,30,31,32,36,40,41,42,43,44,37,38,50,51,52,39,53');
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
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=utf8 COMMENT='规则表';

#
# Data for table "card_auth_rule"
#

/*!40000 ALTER TABLE `card_auth_rule` DISABLE KEYS */;
INSERT INTO `card_auth_rule` VALUES (1,0,'Admin/Index/index','后台首页',1,1,''),(2,0,'Admin/ShowNav/config','系统设置',1,1,''),(3,0,'Admin/ShowNav/rule','权限控制',1,1,''),(4,2,'Admin/Nav/index','菜单管理',1,1,''),(6,4,'Admin/Nav/add','添加菜单',1,1,''),(7,4,'Admin/Nav/edit','修改菜单',1,1,''),(8,4,'Admin/Nav/delete','删除菜单',1,1,''),(9,4,'Admin/Nav/order','菜单排序',1,1,''),(10,3,'Admin/Rule/index','权限管理',1,1,''),(11,10,'Admin/Rule/add','添加权限',1,1,''),(12,10,'Admin/Rule/edit','修改权限',1,1,''),(13,10,'Admin/Rule/delete','删除权限',1,1,''),(14,3,'Admin/Rule/group','用户组管理',1,1,''),(15,3,'Admin/Rule/admin_user_list','管理员列表',1,1,''),(20,14,'Admin/Rule/add_group','添加用户组',1,1,''),(21,14,'Admin/Rule/edit_group','修改用户组',1,1,''),(22,14,'Admin/Rule/delete_group','删除用户组',1,1,''),(23,14,'Admin/Rule/rule_group','分配权限',1,1,''),(24,2,'Admin/Config/index','系统设置',1,1,''),(25,1,'Admin/Index/Welcome','欢迎页面',1,1,''),(26,24,'Admin/Config/add','配置新增',1,1,''),(27,24,'Admin/Config/edit','配置更新',1,1,''),(29,0,'Admin/ShowNav/user','个人中心',1,1,''),(30,29,'Admin/User/index','基本资料',1,1,''),(31,30,'Admin/User/avatar','头像更新',1,1,''),(32,30,'Admin/User/edit_password','密码更新',1,1,''),(33,2,'Admin/Config/log','系统日志',1,1,''),(34,33,'Admin/Config/add_log','日志写入',1,1,''),(35,33,'Admin/Config/alldel','日志删除',1,1,''),(36,29,'Admin/User/address','通讯录',1,1,''),(37,0,'Admin/ShowNav/front','前端资料',1,1,''),(38,37,'Admin/Front/font','字体图标',1,1,''),(39,37,'Admin/Front/color','颜色',1,1,''),(40,36,'Admin/User/ajax_address','下拉获取',1,1,''),(41,36,'Admin/User/read_address','个人资料',1,1,''),(42,36,'Admin/User/add_address','新增通讯录',1,1,''),(43,36,'Admin/User/edit_address','通讯录修改',1,1,''),(44,36,'Admin/User/del_address','通讯录删除',1,1,''),(45,2,'Admin/Config/type','分类列表',1,1,''),(46,45,'Admin/Config/add_type','分类新增',1,1,''),(47,45,'Admin/Config/edit_type','分类修改',1,1,''),(48,45,'Admin/Config/del_type','分类删除',1,1,''),(49,45,'Admin/Config/order_type','分类排序',1,1,''),(50,38,'Admin/Front/add_font','新增字体图标',1,1,''),(51,38,'Admin/Front/edit_font','修改字体图标',1,1,''),(52,38,'Admin/Front/del_font','删除字体图标',1,1,''),(53,39,'Admin/Front/add_color','新增颜色',1,1,'');
/*!40000 ALTER TABLE `card_auth_rule` ENABLE KEYS */;

#
# Structure for table "card_color"
#

DROP TABLE IF EXISTS `card_color`;
CREATE TABLE `card_color` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zh_name` varchar(20) NOT NULL DEFAULT '',
  `en_name` varchar(20) NOT NULL DEFAULT '' COMMENT '英文',
  `color` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=utf8 COMMENT='颜色';

#
# Data for table "card_color"
#

/*!40000 ALTER TABLE `card_color` DISABLE KEYS */;
INSERT INTO `card_color` VALUES (2,'外绯红','','#C91F37'),(3,'红橙','','#DC3023'),(4,'胭脂红','','#9D2933'),(5,'蒙扎','','#CF000F'),(6,'棕色','','#E68364'),(7,'石榴','','#F22613'),(8,'猩红色','','#CF3A24'),(9,'纯绯红','','#C3272B'),(10,'真红','','#8F1D21'),(11,'栗子玫瑰','','#D24D57'),(12,'染料','','#F08F90'),(13,'桃色','','#F47983'),(14,'红梅色','','#DB5A6B'),(15,'中深红','','#C93756'),(16,'樱花色','','#FCC9B9'),(17,'水洗深红','','#FFB3A7'),(18,'激进的红色','','#F62459'),(19,'宜必思翼彩','','#F58F84'),(20,'紫藤','','#875F9A'),(21,'风铃草','','#5D3F6A'),(22,'紫藤色','','#89729E'),(23,'虹膜颜色','','#763568'),(24,'纹身师颜色','','#8D608C'),(25,'薄色','','#A87CA0'),(26,'紫罗兰色','','#5B3256'),(27,'中号紫色','','#BF55EC'),(28,'！！！','','#8E44AD'),(29,'紫藤','','#9B59B6'),(30,'光的紫藤','','#BE90D4'),(31,'天空色','','#4D8FAC'),(32,'群青色','','#5D8CAE'),(33,'比克顿蓝','','#22A7F0'),(34,'道奇蓝','','#19B5FE'),(35,'比克顿蓝','','#59ABE3'),(36,'浅蓝色','','#48929B'),(37,'千草','','#317589'),(38,'乔迪蓝','','#89C4F4'),(39,'钢蓝','','#4B77BE'),(40,'青金石颜色','','#1F4788'),(41,'海军蓝色','','#003171'),(42,'花田','','#044F67'),(43,'靛蓝颜色','','#264348'),(44,'黄雀芽黄','','#7A942E'),(45,'年轻绿洋葱','','#8DB255'),(46,'新鲜洋葱','','#5B8930'),(47,'年轻竹色','','#6B9362'),(48,'铜绿','','#407A52'),(49,'绿竹','','#006442'),(50,'八卦','','#87D37C'),(51,'桉树','','#26A65B'),(52,'丛林绿色','','#26C281'),(53,'天文台','','#049372'),(54,'丛林绿','','#2ABB9B'),(55,'山地草甸','','#16A085'),(56,'绿松石','','#36D7B7'),(57,'海蓝宝石','','#03A678'),(58,'海洋绿','','#4DAF7C'),(59,'败酱花','','#D9B611'),(60,'黄檗','','#F3C13A'),(61,'成熟的柠檬','','#F7CA18'),(62,'枯黄的草','','#E2B13C'),(63,'油菜籽油','','#A17917'),(64,'奶油','','#F5D76E'),(65,'藏红花','','#F4D03F'),(66,'明亮的金黄色','','#FFA400'),(67,'漆树染织','','#E08A1E'),(68,'藤黄','','#FFB61E'),(69,'玉米','','#FAA945'),(70,'鸡蛋','','#FFA631'),(71,'花叶','','#FFB94E'),(72,'金黄的落叶','','#E29C45'),(73,'狂喜','','#F9690E'),(74,'琥珀','','#CA6924'),(75,'雷电黄色','','#F5AB35'),(76,'银','','#BFBFBF'),(77,'灰白','','#F2F1EF'),(78,'银沙','','#BDC3C7'),(79,'瓷','','#ECF0F1'),(80,'浮石','','#D2D7D3'),(81,'港大鼠','','#757D75'),(82,'画廊','','#EEEEEE'),(83,'爱德华','','#ABB7B7'),(84,'林奇','','#6C7A89'),(85,'级联','','#95A5A6'),(86,'浅粉红','LightPink','#FFB6C1'),(87,'粉红','Pink','#FFC0CB');
/*!40000 ALTER TABLE `card_color` ENABLE KEYS */;

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
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统设置';

#
# Data for table "card_config"
#

/*!40000 ALTER TABLE `card_config` DISABLE KEYS */;
INSERT INTO `card_config` VALUES (1,'cfg_name','网站名称','Code Help','string',1498630164),(2,'cfg_keywords','网站关键字','内容管理系统','string',1498630164),(3,'cfg_description','网站描述','这是基于Auth权限的管理系统','bstring',0),(4,'cfg_powerby','网站底部版权','CopyRight © 2016 九幽IT 版权所有 粤ICP备16060013号-1','string',1498630164),(5,'cfg_log','网站后台操作日志','Y','bool',1497843844),(6,'cfg_url','网站地址','http://code.itnetve.top','string',1498630164),(7,'cfg_verify','登录验证码','N','bool',1498630164),(8,'cfg_prefix','SESSION前缀','PzSEa7038A_','string',1498630164);
/*!40000 ALTER TABLE `card_config` ENABLE KEYS */;

#
# Structure for table "card_font"
#

DROP TABLE IF EXISTS `card_font`;
CREATE TABLE `card_font` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `zh_name` varchar(255) NOT NULL DEFAULT '' COMMENT '中文含义',
  `en_name` varchar(255) NOT NULL DEFAULT '' COMMENT '英文显示',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=983 DEFAULT CHARSET=utf8 COMMENT='字体图标';

#
# Data for table "card_font"
#

/*!40000 ALTER TABLE `card_font` DISABLE KEYS */;
INSERT INTO `card_font` VALUES (1,5,'地址薄','address-book'),(2,5,'地址薄','address-book-o'),(3,5,'地址卡','address-card'),(4,5,'地址卡','address-card-o'),(5,5,'','bandcamp'),(6,5,'浴缸','bath'),(7,5,'浴缸','bathtub'),(8,5,'司机的许可证','drivers-license'),(9,5,'司机的许可证（化名）','drivers-license-o'),(10,5,'','eercast'),(11,5,'打开信封','envelope-open'),(12,5,'打开信封','envelope-open-o'),(13,5,'容易的','etsy'),(14,5,'无码营','free-code-camp'),(15,5,'重力','grav'),(16,5,'握手','handshake-o'),(17,5,'ID徽章','id-badge'),(18,5,'ID卡','id-card'),(19,5,'ID卡','id-card-o'),(20,5,'互联网电影数据库','imdb'),(21,5,'','linode'),(22,5,'Meetup网站','meetup'),(23,5,'微芯片','microchip'),(24,5,'播客','podcast'),(25,5,'','quora'),(26,5,'','ravelry'),(27,5,'','s15'),(28,5,'淋浴','shower'),(29,5,'雪花','snowflake-o'),(30,5,'超级大国','superpowers'),(31,5,'电报','telegram'),(32,5,'温度计','thermometer'),(33,5,'温度计','thermometer-0'),(34,5,'温度计','thermometer-1'),(35,5,'温度计','thermometer-2'),(36,5,'温度计','thermometer-3'),(37,5,'温度计','thermometer-4'),(38,5,'温度计-空','thermometer-empty'),(39,5,'温度计-全','thermometer-full'),(40,5,'温度计-帮助','thermometer-half'),(41,5,'温度计-1/4','thermometer-quarter'),(42,5,'温度计-3/4','thermometer-three-quarters'),(43,5,'次矩形','times-rectangle'),(44,5,'次矩形','times-rectangle-o'),(45,5,'用户界','user-circle'),(46,5,'用户界','user-circle-o'),(47,5,'用户','user-o'),(48,5,'名片','vcard'),(49,5,'名片','vcard-o'),(50,5,'关闭窗口','window-close'),(51,5,'关闭窗口','window-close-o'),(52,5,'窗口最大化','window-maximize'),(53,5,'窗口最小化','window-minimize'),(54,5,'窗口还原','window-restore'),(55,5,'','wpexplorer'),(56,21,'','500px'),(57,21,'','adn'),(58,21,'亚马逊','amazon'),(59,21,'安卓','android'),(60,21,'','angellist'),(61,21,'苹果','apple'),(62,21,'','bandcamp'),(63,21,'','behance'),(64,21,'','behance-square'),(65,21,'位桶','bitbucket'),(66,21,'位桶平方','bitbucket-square'),(67,21,'比特币','bitcoin'),(68,21,'黑领带','black-tie'),(69,22,'救护车','ambulance'),(70,22,'','h-square'),(71,22,'心','heart'),(72,22,'心','heart-o'),(73,22,'心跳','heartbeat'),(74,22,'医院','hospital-o'),(75,22,'急救包','medkit'),(76,22,'加方','plus-square'),(77,22,'听诊器','stethoscope'),(78,22,'用户MD','user-md'),(79,22,'轮椅','wheelchair'),(80,22,'轮椅ALT','wheelchair-alt'),(81,21,'蓝牙','bluetooth'),(82,21,'蓝牙','bluetooth-b'),(83,21,'','btc'),(84,21,'','buysellads'),(85,21,'直流-美国运通','cc-amex'),(86,21,'就餐者俱乐部','cc-diners-club'),(87,21,'发现','cc-discover'),(88,21,'','cc-jcb'),(89,21,'万事达卡','cc-mastercard'),(90,21,'PayPal支付','cc-paypal'),(91,21,'条纹','cc-stripe'),(92,21,'签证','cc-visa'),(93,21,'谷歌浏览器','chrome'),(94,21,'相互依赖','codepen'),(95,21,'','codiepie'),(96,21,'连接建立','connectdevelop'),(97,21,'','contao'),(98,21,'CSS3样式','css3'),(99,21,'短跑的立方体','dashcube'),(100,21,'美味的','delicious'),(101,21,'离经叛道的艺术','deviantart'),(102,21,'掘客','digg'),(103,21,'运球','dribbble'),(104,21,'碉堡箱','dropbox'),(105,21,'内容管理系统','drupal'),(106,21,'优势','edge'),(107,21,'德投','eercast'),(108,21,'帝国','empire'),(109,21,'整个的','envira'),(110,21,'容易的','etsy'),(111,21,'加速SSL','expeditedssl'),(112,21,'','fa'),(113,21,'脸谱网','facebook'),(114,21,'脸谱网','facebook-f'),(115,21,'脸谱网-官方的','facebook-official'),(116,21,'脸谱网-广场','facebook-square'),(117,21,'火狐浏览器','firefox'),(118,21,'一阶','first-order'),(119,21,'相片分享','flickr'),(120,21,'Font-Awesome字体','font-awesome'),(121,21,'字体图标','fonticons'),(122,21,'堡垒','fort-awesome'),(123,21,'论坛的蜜蜂','forumbee'),(124,21,'正方形的','foursquare'),(125,21,'无码营','free-code-camp'),(126,21,'','ge'),(127,21,'把口袋','get-pocket'),(128,21,'','gg'),(129,21,'圆圈','gg-circle'),(130,21,'GIT','git'),(131,21,'直角的git','git-square'),(132,21,'GitHub','github'),(133,21,'GitHub-ALT','github-alt'),(134,21,'正直地GitHub','github-square'),(135,21,'','gitlab'),(136,21,'','gittip'),(137,21,'滑翔','glide'),(138,21,'滑翔','glide-g'),(139,21,'谷歌','google'),(140,21,'谷歌加','google-plus'),(141,21,'谷歌加了一圈','google-plus-circle'),(142,21,'谷歌加官方','google-plus-official'),(143,21,'谷歌联合广场','google-plus-square'),(144,21,'谷歌钱包','google-wallet'),(145,21,'无偿付出','gratipay'),(146,21,'重力','grav'),(147,21,'黑客新闻','hacker-news'),(148,21,'','houzz'),(149,21,'HTML5','html5'),(150,21,'互联网电影数据库','imdb'),(151,21,'一款应用程序','instagram'),(152,21,'互联网-ie','internet-explorer'),(153,21,'','ioxhost'),(154,21,'模板','joomla'),(155,21,'小提琴','jsfiddle'),(156,21,'最后一次调频','lastfm'),(157,21,'方形-最后一次调频','lastfm-square'),(158,21,'','leanpub'),(159,21,'商务化人际关系网','linkedin'),(160,21,'方形-商务化人际关系网','linkedin-square'),(161,21,'','linode'),(162,21,'Linux','linux'),(163,21,'最大的CDN','maxcdn'),(164,21,'平均路径','meanpath'),(165,21,'中等的','medium'),(166,21,'Meetup网站','meetup'),(167,21,'混合云','mixcloud'),(168,21,'','modx'),(169,21,'同班同学','odnoklassniki'),(170,21,'方形-同班同学','odnoklassniki-square'),(171,21,'网店版','opencart'),(172,21,'开放式认证系统','openid'),(173,21,'歌剧','opera'),(174,21,'期权的怪物','optin-monster'),(175,21,'页的线','pagelines'),(176,21,'PayPal支付','paypal'),(177,21,'吹笛手','pied-piper'),(178,21,'吹笛者ALT','pied-piper-alt'),(179,21,'吹笛手的PP','pied-piper-pp'),(180,21,'照片分享网站','pinterest'),(181,21,'照片分享网站','pinterest-p'),(182,21,'方形-照片分享网站','pinterest-square'),(183,21,'产品搜寻','product-hunt'),(184,21,'QQ','qq'),(185,21,'','quora'),(186,21,'','ra'),(187,21,'','ravelry'),(188,21,'背叛','rebel'),(189,21,'红迪网','reddit'),(190,21,'红迪网-外星人','reddit-alien'),(191,21,'红迪网-方形','reddit-square'),(192,21,'人人网','renren'),(193,21,'抵抗','resistance'),(194,21,'游猎','safari'),(195,21,'','scribd'),(196,21,'','sellsy'),(197,21,'分享ALT','share-alt'),(198,21,'方形-分享ALT','share-alt-square'),(199,21,'衬衫散装','shirtsinbulk'),(200,21,'简单的建','simplybuilt'),(201,21,'阿特拉斯的天空','skyatlas'),(202,21,'网络电话','skype'),(203,21,'松弛','slack'),(204,21,'幻灯片分享','slideshare'),(205,21,'快速聊天','snapchat'),(206,21,'即时聊天','snapchat-ghost'),(207,21,'方形-快速聊天','snapchat-square'),(208,21,'云之声','soundcloud'),(209,21,'','spotify'),(210,21,'堆栈交换','stack-exchange'),(211,21,'栈溢出','stack-overflow'),(212,21,'蒸汽','steam'),(213,21,'方形-蒸汽','steam-square'),(214,21,'偶然发现','stumbleupon'),(215,21,'偶然发现圈','stumbleupon-circle'),(216,21,'超级大国','superpowers'),(217,21,'电报','telegram'),(218,21,'腾讯微博','tencent-weibo'),(219,21,'主题岛','themeisle'),(220,21,'','trello'),(221,21,'旅行顾问','tripadvisor'),(222,21,'微博客','tumblr'),(223,21,'方形-微博客','tumblr-square'),(224,21,'抽搐','twitch'),(225,21,'推特','twitter'),(226,21,'方形的推特','twitter-square'),(227,21,'USB接口','usb'),(228,21,'通路引线','viacoin'),(229,21,'','viadeo'),(230,21,'','viadeo-square'),(231,21,'','vimeo'),(232,21,'','vimeo-square'),(233,21,'藤','vine'),(234,21,'','vk'),(235,21,'微信','wechat'),(236,21,'新浪微博','weibo'),(237,21,'微信','weixin'),(238,21,'什么是应用程序','whatsapp'),(239,21,'维基百科','wikipedia-w'),(240,21,'Windows操作系统','windows'),(241,21,'Wordpress主题','wordpress'),(242,21,'WP初学者','wpbeginner'),(243,21,'WP浏览器','wpexplorer'),(244,21,'WP表格','wpforms'),(245,21,'','xing'),(246,21,'','xing-square'),(247,21,'Y-组合','y-combinator'),(248,21,'Y-方形组合','y-combinator-square'),(249,21,'雅虎','yahoo'),(250,21,'','yc'),(251,21,'','yc-square'),(252,21,'兴奋','yelp'),(253,21,'','yoast'),(254,21,'YouTube','youtube'),(255,21,'YouTube上播放','youtube-play'),(256,21,'方块-YouTube','youtube-square'),(257,20,'窗口最大','arrows-alt'),(258,20,'向后的','backward'),(259,20,'窗口缩小','compress'),(260,20,'弹出','eject'),(261,20,'扩大','expand'),(262,20,'快速后退','fast-backward'),(263,20,'快速前进','fast-forward'),(264,20,'向前地','forward'),(265,20,'暂停','pause'),(266,20,'圈暂停','pause-circle'),(267,20,'圈暂停','pause-circle-o'),(268,20,'播放','play'),(269,20,'播放-圈','play-circle'),(270,20,'播放-圈','play-circle-o'),(271,20,'随机','random'),(272,20,'后退一步','step-backward'),(273,20,'向前一步','step-forward'),(274,20,'停止','stop'),(275,20,'停止循环','stop-circle'),(276,20,'停止循环','stop-circle-o'),(277,20,'YouTube播放','youtube-play'),(278,16,'面积图','area-chart'),(279,16,'条形图','bar-chart'),(280,16,'条形图','bar-chart-o'),(281,16,'折线图','line-chart'),(282,16,'饼状图表','pie-chart'),(283,15,'美国运股票交易所','cc-amex'),(284,15,'用餐者俱乐部','cc-diners-club'),(285,15,'发现','cc-discover'),(286,15,'JCB卡','cc-jcb'),(287,15,'万事达信用卡','cc-mastercard'),(288,15,'PayPal支付','cc-paypal'),(289,15,'条纹','cc-stripe'),(290,15,'维萨信用卡','cc-visa'),(291,15,'信用卡','credit-card'),(292,15,'信用卡','credit-card-alt'),(293,15,'谷歌钱包','google-wallet'),(294,15,'PayPal支付','paypal'),(295,14,'检查方形','check-square'),(296,14,'检查方形','check-square-o'),(297,14,'圆圈','circle'),(298,14,'圆圈','circle-o'),(299,14,'点圈','dot-circle-o'),(300,14,'负-方块','minus-square'),(301,14,'负-方块','minus-square-o'),(302,14,'加-方块','plus-square'),(303,14,'加方块','plus-square-o'),(304,14,'方块','square'),(305,14,'方块','square-o'),(306,13,'圆圈-缺口','circle-o-notch'),(307,13,'钝齿','cog'),(308,13,'齿轮','gear'),(309,13,'刷新','refresh'),(310,13,'微调','spinner'),(311,19,'角度双降示例','angle-double-down'),(312,19,'角 - 双左','angle-double-left'),(313,19,'角度双右的','angle-double-right'),(314,19,'角度叠加的','angle-double-up'),(315,19,'角度降低的例子','angle-down'),(316,19,'左角','angle-left'),(317,19,'角右','angle-right'),(318,19,'倾斜','angle-up'),(319,19,'箭头向下的','arrow-circle-down'),(320,19,'箭头 -左','arrow-circle-left'),(321,19,'箭头圆圈向下的示例','arrow-circle-o-down'),(322,19,'箭头 - 左 - 左的','arrow-circle-o-left'),(323,19,'箭头 - 右','arrow-circle-o-right'),(324,19,'箭头向上的','arrow-circle-o-up'),(325,19,'箭头 - 圆圈- 右','arrow-circle-right'),(326,19,'箭头向上的','arrow-circle-up'),(327,19,'箭头向下的','arrow-down'),(328,19,'左箭头','arrow-left'),(329,19,'箭头右侧','arrow-right'),(330,19,'箭头上','arrow-up'),(331,19,'箭头','arrows'),(332,19,'箭头alt','arrows-alt'),(333,19,'箭头横向','arrows-h'),(334,19,'箭头纵向','arrows-v'),(335,19,'插入符号向下','caret-down'),(336,19,'插入符号左侧的','caret-left'),(337,19,'箭头符号右侧','caret-right'),(338,19,'插入符向上','caret-up'),(339,19,'插入符号向下的','caret-square-o-down'),(340,19,'插入符号左侧的示例','caret-square-o-left'),(341,19,'插入符号右对齐的','caret-square-o-right'),(342,19,'插入符号上侧','caret-square-o-up'),(343,19,'人字形向下的','chevron-circle-down'),(344,19,'V形圆的左','chevron-circle-left'),(345,19,'V形圈右的','chevron-circle-right'),(346,19,'人字形向上的','chevron-circle-up'),(347,19,'雪佛龙的下','chevron-down'),(348,19,'雪佛龙左的','chevron-left'),(349,19,'雪佛龙右的','chevron-right'),(350,19,'雪佛龙上的','chevron-up'),(351,19,'双向','exchange'),(352,19,'手动下拉','hand-o-down'),(353,19,'左手的','hand-o-left'),(354,19,'右手的','hand-o-right'),(355,19,'手指向上','hand-o-up'),(356,19,'向下箭头','long-arrow-down'),(357,19,'向左箭头','long-arrow-left'),(358,19,'向右箭头','long-arrow-right'),(359,19,'向上箭头','long-arrow-up'),(360,19,'切换-下','toggle-down'),(361,19,'切换-左','toggle-left'),(362,19,'切换-右','toggle-right'),(363,19,'切换-上','toggle-up'),(364,18,'对齐中心','align-center'),(365,18,'对齐的','align-justify'),(366,18,'对齐左边的','align-left'),(367,18,'对齐右的','align-right'),(368,18,'粗体','bold'),(369,18,'链接','chain'),(370,18,'取消链接','chain-broken'),(371,18,'剪贴板','clipboard'),(372,18,'列','columns'),(373,18,'复制','copy'),(374,18,'剪切','cut'),(375,18,'向左缩进','dedent'),(376,18,'向左缩进','outdent'),(377,18,'橡皮擦的','eraser'),(378,18,'文件','file'),(379,18,'文件-空白','file-o'),(380,18,'text文件','file-text'),(381,18,'空白的text文件','file-text-o'),(382,18,'文件夹','files-o'),(383,18,'软盘','floppy-o'),(384,18,'字体','font'),(385,18,'标题','header'),(386,18,'缩进','indent'),(387,18,'斜体','italic'),(388,18,'链接','link'),(389,18,'列表','list'),(390,18,'列表','list-alt'),(391,18,'数字列表','list-ol'),(392,18,'ul列表','list-ul'),(393,18,'回形针','paperclip'),(394,18,'段落','paragraph'),(395,18,'粘贴','paste'),(396,18,'重复','repeat'),(397,18,'旋转左','rotate-left'),(398,18,'旋转右','rotate-right'),(399,18,'保存','save'),(400,18,'剪刀','scissors'),(401,18,'删除线的','strikethrough'),(402,18,'下标','subscript'),(403,18,'上标','superscript'),(404,18,'表格','table'),(405,18,'文本高度','text-height'),(406,18,'文本宽度','text-width'),(407,18,'表格的th','th'),(408,18,'大型的','th-large'),(409,18,'列表','th-list'),(410,18,'下划线','underline'),(411,18,'撤销','undo'),(412,18,'取消链接','unlink'),(413,17,'比特币','bitcoin'),(414,17,'BTC','btc'),(415,17,'人民币','cny'),(416,17,'美元','dollar'),(417,17,'','eur'),(418,17,'欧元','euro'),(419,17,'','gbp'),(420,17,'','gg'),(421,17,'','gg-circle'),(422,17,'','ils'),(423,17,'','inr'),(424,17,'','jpy'),(425,17,'','krw'),(426,17,'','money'),(427,17,'人民币','rmb'),(428,17,'卢布','rouble'),(429,17,'','rub'),(430,17,'卢布','ruble'),(431,17,'卢比','rupee'),(432,17,'','shekel'),(433,17,'','sheqel'),(434,17,'','try'),(435,17,'土耳其里拉','turkish-lira'),(436,17,'','usd'),(437,17,'','won'),(438,17,'日元','yen'),(439,12,'文件','file'),(440,12,'文件存档','file-archive-o'),(441,12,'音频文件','file-audio-o'),(442,12,'代码文件','file-code-o'),(443,12,'excel文件','file-excel-o'),(444,12,'图片文件','file-image-o'),(445,12,'电影文件','file-movie-o'),(446,12,'空白文件','file-o'),(447,12,'pdf文件','file-pdf-o'),(448,12,'图片文件','file-photo-o'),(449,12,'图片文件','file-picture-o'),(450,12,'ppt文件','file-powerpoint-o'),(451,12,'声音文件','file-sound-o'),(452,12,'text文件','file-text'),(453,12,'空白的text文件','file-text-o'),(454,12,'视频文件','file-video-o'),(455,12,'word文件','file-word-o'),(456,12,'zip文件','file-zip-o'),(457,10,'无性别','genderless'),(458,10,'阴阳人','intersex'),(459,10,'火星人','mars'),(460,10,'两个火星人','mars-double'),(461,10,'','mars-stroke'),(462,10,'','mars-stroke-h'),(463,10,'','mars-stroke-v'),(464,10,'水星人','mercury'),(465,10,'中性','neuter'),(466,10,'变性人','transgender'),(467,10,'变性人-alt','transgender-alt'),(468,10,'金星','venus'),(469,10,'双金星','venus-double'),(470,10,'火星金星','venus-mars'),(471,9,'救护车','ambulance'),(472,9,'汽车','automobile'),(473,9,'自行车','bicycle'),(474,9,'巴士','bus'),(475,9,'驾驶室','cab'),(476,9,'汽车','car'),(477,9,'战斗机','fighter-jet'),(478,9,'摩托车','motorcycle'),(479,9,'飞机','plane'),(480,9,'火箭','rocket'),(481,9,'船舶','ship'),(482,9,'航天飞机','space-shuttle'),(483,9,'地铁','subway'),(484,9,'出租车','taxi'),(485,9,'列车','train'),(486,9,'卡车','truck'),(487,9,'轮椅','wheelchair'),(488,9,'','wheelchair-alt'),(489,8,'手抓','hand-grab-o'),(490,8,'手蜥蜴的','hand-lizard-o'),(491,8,'指下','hand-o-down'),(492,8,'指左','hand-o-left'),(493,8,'指右','hand-o-right'),(494,8,'指上','hand-o-up'),(495,8,'手掌','hand-paper-o'),(496,8,'好的','hand-peace-o'),(497,8,'手指u','hand-pointer-o'),(498,8,'拳头','hand-rock-o'),(499,8,'剪刀','hand-scissors-o'),(500,8,'手指猫','hand-spock-o'),(501,8,'手掌','hand-stop-o'),(502,8,'大拇指向下','thumbs-down'),(503,8,'大拇指向下','thumbs-o-down'),(504,8,'大拇指向上','thumbs-o-up'),(505,8,'大拇指向上','thumbs-up'),(506,7,'美国口语翻译','american-sign-language-interpreting'),(507,7,'美国口语翻译','asl-interpreting'),(508,7,'辅助听力系统','assistive-listening-systems'),(509,7,'音频描述','audio-description'),(510,7,'失明的','blind'),(511,7,'盲文','braille'),(512,7,'1212','cc'),(513,7,'聋哑','deaf'),(514,7,'耳聋','deafness'),(515,7,'硬的听力','hard-of-hearing'),(516,7,'低视力','low-vision'),(517,7,'问题','question-circle-o'),(518,7,'手语','sign-language'),(519,7,'签名','signing'),(520,7,'','tty'),(521,7,'通用访问','universal-access'),(522,7,'音量控制电话','volume-control-phone'),(523,7,'轮椅','wheelchair'),(524,7,'轮椅','wheelchair-alt'),(525,6,'地址簿','address-book'),(526,6,'地址簿','address-book-o'),(527,6,'地址卡','address-card'),(528,6,'地址卡','address-card-o'),(529,6,'调整','adjust'),(530,6,'美国口语翻译','american-sign-language-interpreting'),(531,6,'锚点','anchor'),(532,6,'存档','archive'),(533,6,'区域图','area-chart'),(534,6,'箭头','arrows'),(535,6,'箭头-横','arrows-h'),(536,6,'箭头-竖','arrows-v'),(537,6,'美国口语翻译','asl-interpreting'),(538,6,'辅助听力系统的','assistive-listening-systems'),(539,6,'星号','asterisk'),(540,6,'艾特','at'),(541,6,'音频描述','audio-description'),(542,6,'汽车','automobile'),(543,6,'平衡秤','balance-scale'),(544,6,'禁令','ban'),(545,6,'银行','bank'),(546,6,'条形图','bar-chart'),(547,6,'条形图','bar-chart-o'),(548,6,'条形码','barcode'),(549,6,'酒吧','bars'),(550,6,'洗澡','bath'),(551,6,'浴缸','bathtub'),(552,6,'电池','battery'),(553,6,'空格电池','battery-0'),(554,6,'一格电池','battery-1'),(555,6,'两格电池','battery-2'),(556,6,'三格电池','battery-3'),(557,6,'四格电池','battery-4'),(558,6,'空格电池','battery-empty'),(559,6,'电池充满','battery-full'),(560,6,'电池一半','battery-half'),(561,6,'电池季度','battery-quarter'),(562,6,'电池四分之三','battery-three-quarters'),(563,6,'床','bed'),(564,6,'啤酒','beer'),(565,6,'铃声','bell'),(566,6,'铃声','bell-o'),(567,6,'静音','bell-slash'),(568,6,'静音','bell-slash-o'),(569,6,'自行车','bicycle'),(570,6,'双筒望远镜','binoculars'),(571,6,'生日蛋糕','birthday-cake'),(572,6,'失明','blind'),(573,6,'蓝牙','bluetooth'),(574,6,'蓝牙','bluetooth-b'),(575,6,'闪电','bolt'),(576,6,'炸弹','bomb'),(577,6,'书','book'),(578,6,'书签','bookmark'),(579,6,'书签','bookmark-o'),(580,6,'盲文','braille'),(581,6,'公文包','briefcase'),(582,6,'甲壳虫','bug'),(583,6,'建筑','building'),(584,6,'建筑','building-o'),(585,6,'喇叭','bullhorn'),(586,6,'舷窗','bullseye'),(587,6,'巴士','bus'),(588,6,'驾驶室','cab'),(589,6,'计算器','calculator'),(590,6,'日历','calendar'),(591,6,'日历检查','calendar-check-o'),(592,6,'日历减去','calendar-minus-o'),(593,6,'日历','calendar-o'),(594,6,'日历加','calendar-plus-o'),(595,6,'日历时间','calendar-times-o'),(596,6,'相机','camera'),(597,6,'相机复古','camera-retro'),(598,6,'汽车','car'),(599,6,'插入符号-向下','caret-square-o-down'),(600,6,'插入符号-向左','caret-square-o-left'),(601,6,'插入符号-向右','caret-square-o-right'),(602,6,'插入符号-向上','caret-square-o-up'),(603,6,'加入购物车','cart-arrow-down'),(604,6,'加入购物车','cart-plus'),(605,6,'','cc'),(606,6,'证书','certificate'),(607,6,'检查','check'),(608,6,'检查-圈','check-circle'),(609,6,'检查-圈','check-circle-o'),(610,6,'检查-平方','check-square'),(611,6,'检查-平方','check-square-o'),(612,6,'孩子','child'),(613,6,'圈','circle'),(614,6,'圈','circle-o'),(615,6,'圆形凹口','circle-o-notch'),(616,6,'圆薄','circle-thin'),(617,6,'时钟','clock-o'),(618,6,'克隆','clone'),(619,6,'关闭','close'),(620,6,'云','cloud'),(621,6,'云下载','cloud-download'),(622,6,'云上传','cloud-upload'),(623,6,'代码','code'),(624,6,'代码分支','code-fork'),(625,6,'咖啡','coffee'),(626,6,'钝齿','cog'),(627,6,'齿轮','cogs'),(628,6,'评论','comment'),(629,6,'评论','comment-o'),(630,6,'评论','commenting'),(631,6,'评论','commenting-o'),(632,6,'评论','comments'),(633,6,'评论','comments-o'),(634,6,'指南针','compass'),(635,6,'版权','copyright'),(636,6,'创意共享','creative-commons'),(637,6,'信用卡','credit-card'),(638,6,'信用卡-替代','credit-card-alt'),(639,6,'截图','crop'),(640,6,'瞄准','crosshairs'),(641,6,'立方体','cube'),(642,6,'立方体','cubes'),(643,6,'餐具','cutlery'),(644,6,'仪表板','dashboard'),(645,6,'数据库','database'),(646,6,'聋哑','deaf'),(647,6,'耳聋','deafness'),(648,6,'桌面','desktop'),(649,6,'钻石','diamond'),(650,6,'点-圆','dot-circle-o'),(651,6,'下载','download'),(652,6,'驾驶执照','drivers-license'),(653,6,'驾驶执照','drivers-license-o'),(654,6,'编辑','edit'),(655,6,'省略号','ellipsis-h'),(656,6,'省略号','ellipsis-v'),(657,6,'信封','envelope'),(658,6,'信封','envelope-o'),(659,6,'打开信封','envelope-open'),(660,6,'打开信封','envelope-open-o'),(661,6,'包络线','envelope-square'),(662,6,'橡皮擦','eraser'),(663,6,'兑换','exchange'),(664,6,'惊叹号','exclamation'),(665,6,'惊叹号','exclamation-circle'),(666,6,'危险','exclamation-triangle'),(667,6,'外部链接','external-link'),(668,6,'外部链接','external-link-square'),(669,6,'眼睛','eye'),(670,6,'闭眼','eye-slash'),(671,6,'吸管','eyedropper'),(672,6,'传真','fax'),(673,6,'','feed'),(674,6,'女性','female'),(675,6,'战斗机','fighter-jet'),(676,6,'档案文件','file-archive-o'),(677,6,'音频文件','file-audio-o'),(678,6,'代码文件','file-code-o'),(679,6,'excel文件','file-excel-o'),(680,6,'图片文件','file-image-o'),(681,6,'电影文件','file-movie-o'),(682,6,'pdf文件','file-pdf-o'),(683,6,'图片文件','file-photo-o'),(684,6,'图片文件','file-picture-o'),(685,6,'ppt文件','file-powerpoint-o'),(686,6,'声音文件','file-sound-o'),(687,6,'视频文件','file-video-o'),(688,6,'word文件','file-word-o'),(689,6,'zip文件','file-zip-o'),(690,6,'电影','film'),(691,6,'过滤器','filter'),(692,6,'火','fire'),(693,6,'灭火器','fire-extinguisher'),(694,6,'标志','flag'),(695,6,'标志-格子','flag-checkered'),(696,6,'标志','flag-o'),(697,6,'闪存','flash'),(698,6,'烧瓶','flask'),(699,6,'文件夹','folder'),(700,6,'文件夹','folder-o'),(701,6,'打开文件夹','folder-open'),(702,6,'打开文件夹','folder-open-o'),(703,6,'皱眉','frown-o'),(704,6,'足球','futbol-o'),(705,6,'游戏手柄','gamepad'),(706,6,'棒槌','gavel'),(707,6,'齿轮','gear'),(708,6,'齿轮','gears'),(709,6,'礼物','gift'),(710,6,'玻璃','glass'),(711,6,'地球','globe'),(712,6,'毕业帽','graduation-cap'),(713,6,'组','group'),(714,6,'手抓','hand-grab-o'),(715,6,'手-蜥蜴','hand-lizard-o'),(716,6,'手掌','hand-paper-o'),(717,6,'好的','hand-peace-o'),(718,6,'手点击','hand-pointer-o'),(719,6,'拳头','hand-rock-o'),(720,6,'手-剪刀','hand-scissors-o'),(721,6,'','hand-spock-o'),(722,6,'手掌','hand-stop-o'),(723,6,'握手','handshake-o'),(724,6,'听力困难','hard-of-hearing'),(725,6,'主题标签','hashtag'),(726,6,'硬盘','hdd-o'),(727,6,'耳机','headphones'),(728,6,'心','heart'),(729,6,'心','heart-o'),(730,6,'心跳','heartbeat'),(731,6,'历史','history'),(732,6,'家庭','home'),(733,6,'酒店','hotel'),(734,6,'沙漏','hourglass'),(735,6,'沙漏','hourglass-1'),(736,6,'沙漏','hourglass-2'),(737,6,'沙漏','hourglass-3'),(738,6,'沙漏完毕','hourglass-end'),(739,6,'沙漏一半','hourglass-half'),(740,6,'沙漏','hourglass-o'),(741,6,'沙漏启动','hourglass-start'),(742,6,'光标','i-cursor'),(743,6,'徽章','id-badge'),(744,6,'身份证','id-card'),(745,6,'身份证','id-card-o'),(746,6,'图像','image'),(747,6,'收件箱','inbox'),(748,6,'行业','industry'),(749,6,'信息','info'),(750,6,'信息-圈','info-circle'),(751,6,'机构','institution'),(752,6,'键','key'),(753,6,'键盘','keyboard-o'),(754,6,'语言','language'),(755,6,'笔记本电脑','laptop'),(756,6,'叶子','leaf'),(757,6,'法律','legal'),(758,6,'柠檬','lemon-o'),(759,6,'降级','level-down'),(760,6,'升级','level-up'),(761,6,'生命','life-bouy'),(762,6,'生命浮标','life-buoy'),(763,6,'生命','life-ring'),(764,6,'救人','life-saver'),(765,6,'灯泡','lightbulb-o'),(766,6,'折线图','line-chart'),(767,6,'箭头位置','location-arrow'),(768,6,'锁定','lock'),(769,6,'低视力','low-vision'),(770,6,'魔法','magic'),(771,6,'磁铁','magnet'),(772,6,'邮件转发','mail-forward'),(773,6,'邮件回复','mail-reply'),(774,6,'回复所有的邮件','mail-reply-all'),(775,6,'男性','male'),(776,6,'地图','map'),(777,6,'地图标记','map-marker'),(778,6,'地图','map-o'),(779,6,'引脚图','map-pin'),(780,6,'地图标志','map-signs'),(781,6,'无聊的','meh-o'),(782,6,'微芯片','microchip'),(783,6,'麦克风','microphone'),(784,6,'关掉麦克风','microphone-slash'),(785,6,'减','minus'),(786,6,'负-圆','minus-circle'),(787,6,'负-方块','minus-square'),(788,6,'减-方','minus-square-o'),(789,6,'移动','mobile'),(790,6,'手机','mobile-phone'),(791,6,'钱','money'),(792,6,'月亮','moon-o'),(793,6,'毕业帽','mortar-board'),(794,6,'摩托','motorcycle'),(795,6,'鼠标指针','mouse-pointer'),(796,6,'音乐','music'),(797,6,'','navicon'),(798,6,'报纸','newspaper-o'),(799,6,'对象组','object-group'),(800,6,'对象取消组','object-ungroup'),(801,6,'油漆刷','paint-brush'),(802,6,'纸面','paper-plane'),(803,6,'纸面','paper-plane-o'),(804,6,'爪子','paw'),(805,6,'铅笔','pencil'),(806,6,'铅笔','pencil-square'),(807,6,'铅笔','pencil-square-o'),(808,6,'百分比','percent'),(809,6,'电话','phone'),(810,6,'手机','phone-square'),(811,6,'照片','photo'),(812,6,'照片','picture-o'),(813,6,'饼图','pie-chart'),(814,6,'飞机','plane'),(815,6,'插头','plug'),(816,6,'加号','plus'),(817,6,'加-圈','plus-circle'),(818,6,'加-方形','plus-square'),(819,6,'加-方形','plus-square-o'),(820,6,'播客','podcast'),(821,6,'断电','power-off'),(822,6,'打印','print'),(823,6,'拼图','puzzle-piece'),(824,6,'二维码','qrcode'),(825,6,'问题','question'),(826,6,'问题','question-circle'),(827,6,'问题','question-circle-o'),(828,6,'引号-左边','quote-left'),(829,6,'引号-右边','quote-right'),(830,6,'随机','random'),(831,6,'回收','recycle'),(832,6,'刷新','refresh'),(833,6,'注册','registered'),(834,6,'删除','remove'),(835,6,'重新排序','reorder'),(836,6,'回复','reply'),(837,6,'回覆示例全部','reply-all'),(838,6,'转发','retweet'),(840,6,'道路','road'),(841,6,'火箭','rocket'),(842,6,'信息集合','rss'),(843,6,'信息聚合','rss-square'),(844,6,'浴缸','s15'),(845,6,'搜索','search'),(846,6,'缩小','search-minus'),(847,6,'放大','search-plus'),(848,6,'发送','send'),(849,6,'发送','send-o'),(850,6,'服务器','server'),(851,6,'分享','share'),(852,6,'分享','share-alt'),(853,6,'分享','share-alt-square'),(854,6,'分享','share-square'),(855,6,'分享','share-square-o'),(856,6,'屏蔽','shield'),(857,6,'船舶','ship'),(858,6,'购物袋','shopping-bag'),(859,6,'购物篮','shopping-basket'),(860,6,'购物车','shopping-cart'),(861,6,'喷头','shower'),(862,6,'登录','sign-in'),(863,6,'手语','sign-language'),(864,6,'登出','sign-out'),(865,6,'信号','signal'),(866,6,'签名','signing'),(867,6,'网站地图','sitemap'),(868,6,'滑块','sliders'),(869,6,'笑脸','smile-o'),(870,6,'雪花','snowflake-o'),(871,6,'足球','soccer-ball-o'),(872,6,'排序','sort'),(873,6,'顺序','sort-alpha-asc'),(874,6,'倒序','sort-alpha-desc'),(875,6,'数量顺序','sort-amount-asc'),(876,6,'数量倒序','sort-amount-desc'),(877,6,'顺序','sort-asc'),(878,6,'倒序','sort-desc'),(879,6,'排序-下','sort-down'),(880,6,'数字顺序','sort-numeric-asc'),(881,6,'数字倒序','sort-numeric-desc'),(882,6,'排序-上','sort-up'),(883,6,'航天飞机','space-shuttle'),(884,6,'旋转器','spinner'),(885,6,'勺子','spoon'),(886,6,'正方形','square'),(887,6,'正方形','square-o'),(888,6,'星','star'),(889,6,'半星','star-half'),(890,6,'半星空','star-half-empty'),(891,6,'半星','star-half-full'),(892,6,'半星','star-half-o'),(893,6,'星','star-o'),(894,6,'粘贴','sticky-note'),(895,6,'粘贴','sticky-note-o'),(896,6,'街景','street-view'),(897,6,'手提箱','suitcase'),(898,6,'太阳','sun-o'),(899,6,'支持','support'),(900,6,'平板电脑','tablet'),(901,6,'转速表示','tachometer'),(902,6,'标签','tag'),(903,6,'标签','tags'),(904,6,'任务','tasks'),(905,6,'出租车','taxi'),(906,6,'电视','television'),(907,6,'终端','terminal'),(908,6,'温度计','thermometer'),(909,6,'温度计-0','thermometer-0'),(910,6,'温度计-1','thermometer-1'),(911,6,'温度计-2','thermometer-2'),(912,6,'温度计-3','thermometer-3'),(913,6,'温度计-4','thermometer-4'),(914,6,'温度计-空白','thermometer-empty'),(915,6,'温度计-满','thermometer-full'),(916,6,'温度计-一半','thermometer-half'),(917,6,'温度计','thermometer-quarter'),(918,6,'温度计3/4','thermometer-three-quarters'),(919,6,'图钉','thumb-tack'),(920,6,'大拇指下','thumbs-down'),(921,6,'大拇指下','thumbs-o-down'),(922,6,'竖起大拇指','thumbs-o-up'),(923,6,'竖起大拇指','thumbs-up'),(924,6,'机票','ticket'),(925,6,'删除','times'),(926,6,'删除','times-circle'),(927,6,'错误','times-circle-o'),(928,6,'删除','times-rectangle'),(929,6,'时间矩形','times-rectangle-o'),(930,6,'色调','tint'),(931,6,'切换','toggle-down'),(932,6,'切换-左','toggle-left'),(933,6,'切换','toggle-off'),(934,6,'开机','toggle-on'),(935,6,'切换-右','toggle-right'),(936,6,'切换-上','toggle-up'),(937,6,'商标','trademark'),(938,6,'删除','trash'),(939,6,'删除','trash-o'),(940,6,'树','tree'),(941,6,'奖杯','trophy'),(942,6,'卡车','truck'),(943,6,'待接电话','tty'),(944,6,'电视','tv'),(945,6,'伞','umbrella'),(946,6,'通用访问','universal-access'),(947,6,'大学','university'),(948,6,'解锁','unlock'),(949,6,'不锁','unlock-alt'),(950,6,'未排序','unsorted'),(951,6,'上传','upload'),(952,6,'用户','user'),(953,6,'用户','user-circle'),(954,6,'用户','user-circle-o'),(955,6,'用户','user-o'),(956,6,'新增用户','user-plus'),(957,6,'用户密码','user-secret'),(958,6,'删除用户','user-times'),(959,6,'用户群','users'),(960,6,'名片','vcard'),(961,6,'名片','vcard-o'),(962,6,'摄像机','video-camera'),(963,6,'控制电话音量','volume-control-phone'),(964,6,'音量降低','volume-down'),(965,6,'音量关闭','volume-off'),(966,6,'音量打开','volume-up'),(967,6,'警告','warning'),(968,6,'轮椅','wheelchair'),(969,6,'轮椅','wheelchair-alt'),(970,6,'无线网络','wifi'),(971,6,'关闭窗口','window-close'),(972,6,'关闭窗口','window-close-o'),(973,6,'窗口最大化’','window-maximize'),(974,6,'窗口最小化','window-minimize'),(975,6,'窗口恢复','window-restore'),(976,6,'扳手','wrench'),(977,24,'云下载','cloud-download'),(978,24,'云上传','cloud-upload'),(980,24,'用户MD','user-md'),(981,24,'角-左','angle-left');
/*!40000 ALTER TABLE `card_font` ENABLE KEYS */;

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
) ENGINE=MyISAM AUTO_INCREMENT=1424 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员操作日志';

#
# Data for table "card_log"
#

/*!40000 ALTER TABLE `card_log` DISABLE KEYS */;
INSERT INTO `card_log` VALUES (786,'修改通讯录-刘隆检',1499409263,'admin','127.0.0.1'),(787,'修改通讯录-刘隆检',1499409270,'admin','127.0.0.1'),(788,'修改通讯录-心悲殇',1499411138,'admin','127.0.0.1'),(789,'新增通讯录-习京平',1499411511,'admin','127.0.0.1'),(790,'修改通讯录-习京平',1499411618,'admin','127.0.0.1'),(791,'新增通讯录-第三个',1499412275,'admin','127.0.0.1'),(792,'修改通讯录-刘隆检',1499412485,'admin','127.0.0.1'),(793,'修改图标字体-44',1499420789,'admin','127.0.0.1'),(794,'修改图标字体-11',1499420794,'admin','127.0.0.1'),(795,'修改图标字体-cc',1499420797,'admin','127.0.0.1'),(796,'修改图标字体-33',1499420807,'admin','127.0.0.1'),(797,'添加图标字体-地址簿',1499436384,'admin','127.0.0.1'),(798,'添加图标字体- 地址簿',1499436794,'admin','127.0.0.1'),(799,'添加图标字体- 地址卡',1499438918,'admin','127.0.0.1'),(800,'添加图标字体- 地址卡',1499438998,'admin','127.0.0.1'),(801,'添加图标字体-调整',1499439046,'admin','127.0.0.1'),(802,'修改图标字体-212',1499439294,'admin','127.0.0.1'),(803,'修改图标字体-1212',1499439372,'admin','127.0.0.1'),(804,'添加图标字体-美国口语翻译',1499439426,'admin','127.0.0.1'),(805,'添加图标字体-锚点',1499439459,'admin','127.0.0.1'),(806,'添加图标字体-存档',1499439477,'admin','127.0.0.1'),(807,'添加图标字体-区域图',1499439500,'admin','127.0.0.1'),(808,'添加图标字体-箭头',1499439518,'admin','127.0.0.1'),(809,'添加图标字体-箭头',1499439537,'admin','127.0.0.1'),(810,'修改图标字体-箭头-横',1499439553,'admin','127.0.0.1'),(811,'添加图标字体-箭头-竖',1499439577,'admin','127.0.0.1'),(812,'添加图标字体-美国口语翻译',1499439615,'admin','127.0.0.1'),(813,'添加图标字体-辅助听力系统的',1499439645,'admin','127.0.0.1'),(814,'添加图标字体-星号',1499439686,'admin','127.0.0.1'),(815,'添加图标字体-艾特',1499439716,'admin','127.0.0.1'),(816,'添加图标字体-音频描述',1499439739,'admin','127.0.0.1'),(817,'添加图标字体-汽车',1499439785,'admin','127.0.0.1'),(818,'添加图标字体-平衡秤',1499439802,'admin','127.0.0.1'),(1395,'锁定管理员-JIUYOU',1499820805,'admin','127.0.0.1'),(1396,'添加图标字体-云下载',1499828772,'admin','127.0.0.1'),(1397,'添加图标字体-用户MD',1499828811,'admin','127.0.0.1'),(1398,'添加图标字体-角-左',1499828857,'admin','127.0.0.1'),(1399,'添加图标字体-云上传',1499828905,'admin','127.0.0.1'),(1400,'菜单排序',1499848408,'admin','127.0.0.1'),(1401,'菜单排序',1499848499,'admin','127.0.0.1'),(1402,'菜单排序',1499848709,'admin','127.0.0.1'),(1403,'添加菜单-手册',1499927579,'admin','127.0.0.1'),(1404,'添加分类-手册',1499927619,'admin','127.0.0.1'),(1405,'添加分类-PHP教程',1499927650,'admin','127.0.0.1'),(1406,'添加分类-Bootstrap教程',1499927705,'admin','127.0.0.1'),(1407,'添加分类-HTML教程',1499927814,'admin','127.0.0.1'),(1408,'添加分类-CSS教程',1499927824,'admin','127.0.0.1'),(1409,'添加分类-PHP教程',1499927980,'admin','127.0.0.1'),(1410,'添加分类-PHP表单',1499927990,'admin','127.0.0.1'),(1411,'添加分类-PHP高级教程',1499928014,'admin','127.0.0.1'),(1412,'添加分类-PHP 数据库',1499928106,'admin','127.0.0.1'),(1413,'修改分类-PHP 教程',1499928113,'admin','127.0.0.1'),(1414,'修改分类-PHP 教程',1499928119,'admin','127.0.0.1'),(1415,'修改分类-PHP 表单',1499928125,'admin','127.0.0.1'),(1416,'修改分类-PHP 高级教程',1499928132,'admin','127.0.0.1'),(1417,'修改分类-CSS 教程',1499928138,'admin','127.0.0.1'),(1418,'修改分类-HTML 教程',1499928144,'admin','127.0.0.1'),(1419,'修改分类-Bootstrap 教程',1499928150,'admin','127.0.0.1'),(1420,'添加分类-PHP XML',1499928191,'admin','127.0.0.1'),(1421,'添加分类-PHP 与 AJAX',1499928220,'admin','127.0.0.1'),(1422,'添加分类-PHP 参考手册',1499928235,'admin','127.0.0.1'),(1423,'添加手册资料-PHP 教程',1499996147,'admin','127.0.0.1'),(1424,'添加手册资料-PHP 简介',1499999767,'admin','127.0.0.1'),(1425,'添加手册资料-PHP 安装',1499999918,'admin','127.0.0.1'),(1426,'更新手册资料-PHP 安装',1500001927,'admin','127.0.0.1'),(1427,'更新手册资料-PHP 简介',1500001976,'admin','127.0.0.1'),(1428,'更新手册资料-PHP 教程',1500002032,'admin','127.0.0.1'),(1429,'更新手册资料-PHP 教程',1500002895,'admin','127.0.0.1'),(1430,'更新手册资料-PHP 简介',1500002924,'admin','127.0.0.1'),(1431,'更新手册资料-PHP 安装',1500002935,'admin','127.0.0.1'),(1432,'更新手册资料-PHP 教程',1500003261,'admin','127.0.0.1'),(1433,'更新手册资料-PHP 简介',1500006459,'admin','127.0.0.1'),(1434,'添加手册资料-PHP 教程',1500013542,'admin','127.0.0.1');
/*!40000 ALTER TABLE `card_log` ENABLE KEYS */;

#
# Structure for table "card_manual"
#

DROP TABLE IF EXISTS `card_manual`;
CREATE TABLE `card_manual` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `pid` int(11) NOT NULL DEFAULT '0' COMMENT '分类',
  `type` int(1) NOT NULL DEFAULT '0' COMMENT '内容：1，页面：2',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `en_title` varchar(255) NOT NULL DEFAULT '' COMMENT '英文名',
  `link` varchar(255) NOT NULL DEFAULT '' COMMENT '链接',
  `optime` int(11) NOT NULL DEFAULT '0' COMMENT '发布时间',
  `content` text NOT NULL COMMENT '内容',
  `views` int(11) NOT NULL DEFAULT '0' COMMENT '浏览人数',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='手册';

#
# Data for table "card_manual"
#

/*!40000 ALTER TABLE `card_manual` DISABLE KEYS */;
INSERT INTO `card_manual` VALUES (4,1,42,1,'PHP 教程','index','',1499788800,'PHP 是一种创建动态交互性站点的强有力的服务器端脚本语言。\r\n\r\nPHP 是免费的，并且使用广泛。对于像微软 ASP 这样的竞争者来说，PHP 无疑是另一种高效率的选项。\r\n##### 通过实例学习 PHP\r\n我们的 PHP 在线实例让您能够更简单的学习 PHP，实例中包含了 PHP 的源码及运行结果。\r\n```html\r\n&lt;!DOCTYPE html&gt;\r\n&lt;html&gt;\r\n&lt;body&gt;\r\n\r\n&lt;?php\r\necho &quot;My first PHP script!&quot;;\r\n?&gt;\r\n\r\n&lt;/body&gt;\r\n&lt;/html&gt;\r\n\r\n```\r\n##### PHP 参考手册\r\n在 W3School，我们为您提供包括所有 PHP 函数的完整参考手册：\r\n- Array\r\n- Calendar\r\n- Date\r\n- Directory\r\n- Error\r\n- Filesystem\r\n- Filter\r\n- FTP\r\n- HTTP\r\n- LibXML\r\n- Mail\r\n- Math\r\n- MySQL\r\n- SimpleXML\r\n- String\r\n- XML Parser\r\n- Zip\r\n- 杂项函数',0);
/*!40000 ALTER TABLE `card_manual` ENABLE KEYS */;

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
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='菜单表';

#
# Data for table "card_nav"
#

/*!40000 ALTER TABLE `card_nav` DISABLE KEYS */;
INSERT INTO `card_nav` VALUES (1,0,'系统设置','Admin/ShowNav/config','cog',2),(2,1,'菜单管理','Admin/Nav/index','',1),(3,0,'权限控制','Admin/ShowNav/rule','expeditedssl',3),(4,3,'权限管理','Admin/Rule/index','',1),(5,3,'用户组管理','Admin/Rule/group','',2),(6,3,'管理员列表','Admin/Rule/admin_user_list','',3),(9,1,'系统设置','Admin/Config/index','',2),(13,1,'系统日志','Admin/Config/log','',4),(15,0,'个人中心','Admin/ShowNav/user','user',1),(16,15,'基本资料','Admin/User/index','',NULL),(17,0,'前端资料','Admin/ShowNav/front','html5',4),(18,17,'图标字体','Admin/Front/font','',1),(19,1,'分类列表','Admin/Config/type','',3),(20,15,'通讯录','Admin/User/address','',NULL),(22,17,'颜色','Admin/Front/color','',NULL),(23,17,'手册','Admin/Front/manual','',NULL);
/*!40000 ALTER TABLE `card_nav` ENABLE KEYS */;

#
# Structure for table "card_type"
#

DROP TABLE IF EXISTS `card_type`;
CREATE TABLE `card_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0' COMMENT '父级ID',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '分类名称',
  `link` varchar(255) NOT NULL DEFAULT '' COMMENT '链接',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COMMENT='分类表';

#
# Data for table "card_type"
#

/*!40000 ALTER TABLE `card_type` DISABLE KEYS */;
INSERT INTO `card_type` VALUES (1,0,'图标字体','',1),(3,1,'Font Awesome','http://fontawesome.io/icons/',1),(4,1,'Bootstarp设计','http://www.bootcss.com/p/font-awesome',2),(5,3,'4.7.0版新增41个全新的图标','',0),(6,3,'网页','',0),(7,3,'辅助功能','',0),(8,3,'手势','',0),(9,3,'运输','',0),(10,3,'性别','',0),(12,3,'文件类型','',0),(13,3,'可旋转','',0),(14,3,'表单','',0),(15,3,'支付','',0),(16,3,'图表','',0),(17,3,'货币','',0),(18,3,'文本编辑','',0),(19,3,'指示方向','',0),(20,3,'视频播放','',0),(21,3,'标志','',0),(22,3,'医疗','',0),(23,1,'Glyphicons','http://glyphicons.com/',3),(24,4,'3.0 版本中新增的图标','',0),(25,4,'适合 Web 应用的图标','',0),(26,4,'文本编辑器图标','',0),(27,4,'指示方向的图标','',0),(28,4,'视频播放器图标','',0),(29,4,'SNS图标','',0),(30,4,'医疗图标','',0),(31,0,'通讯录','',0),(32,31,'家族X','',0),(33,31,'家族Y','',0),(34,31,'同学','',0),(35,31,'朋友','',0),(36,31,'同事','',0),(37,0,'手册','',0),(38,37,'PHP 教程','',0),(39,37,'Bootstrap 教程','',0),(40,37,'HTML 教程','',0),(41,37,'CSS 教程','',0),(42,38,'PHP 教程','',0),(43,38,'PHP 表单','',0),(44,38,'PHP 高级教程','',0),(45,38,'PHP 数据库','',0),(46,38,'PHP XML','',0),(47,38,'PHP 与 AJAX','',0),(48,38,'PHP 参考手册','',0);
/*!40000 ALTER TABLE `card_type` ENABLE KEYS */;
