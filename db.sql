/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm7bu05
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm7bu05` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm7bu05`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616720605868 DEFAULT CHARSET=utf8 COMMENT='地址';

/*Data for the table `address` */

insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1,'2021-03-26 08:38:56',1,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2021-03-26 08:38:56',2,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2021-03-26 08:38:56',3,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2021-03-26 08:38:56',4,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2021-03-26 08:38:56',5,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2021-03-26 08:38:56',6,'宇宙银河系月球1号','月某','13823888886','是'),(1616720605867,'2021-03-26 09:03:25',1616720441431,'广东省揭阳市榕城区中山街道猪肠涨糯米中兴园','陈一','12312312312','是');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'qichexinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616720641889 DEFAULT CHARSET=utf8 COMMENT='购物车表';

/*Data for the table `cart` */

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616720695527 DEFAULT CHARSET=utf8 COMMENT='在线咨询';

/*Data for the table `chat` */

insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (61,'2021-03-26 08:38:56',1,1,'提问1','回复1',1),(62,'2021-03-26 08:38:56',2,2,'提问2','回复2',2),(63,'2021-03-26 08:38:56',3,3,'提问3','回复3',3),(64,'2021-03-26 08:38:56',4,4,'提问4','回复4',4),(65,'2021-03-26 08:38:56',5,5,'提问5','回复5',5),(66,'2021-03-26 08:38:56',6,6,'提问6','回复6',6),(1616720660031,'2021-03-26 09:04:19',1616720441431,NULL,'请问有SUV车吗',NULL,0),(1616720695526,'2021-03-26 09:04:55',1616720441431,1,NULL,'有',NULL);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm7bu05/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssm7bu05/upload/1616720378805.jpg'),(3,'picture3','http://localhost:8080/ssm7bu05/upload/1616720386051.jpg'),(6,'homepage',NULL);

/*Table structure for table `discussqichexinxi` */

DROP TABLE IF EXISTS `discussqichexinxi`;

CREATE TABLE `discussqichexinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='汽车信息评论表';

/*Data for the table `discussqichexinxi` */

insert  into `discussqichexinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (121,'2021-03-26 08:38:56',1,1,'用户名1','评论内容1','回复内容1'),(122,'2021-03-26 08:38:56',2,2,'用户名2','评论内容2','回复内容2'),(123,'2021-03-26 08:38:56',3,3,'用户名3','评论内容3','回复内容3'),(124,'2021-03-26 08:38:56',4,4,'用户名4','评论内容4','回复内容4'),(125,'2021-03-26 08:38:56',5,5,'用户名5','评论内容5','回复内容5'),(126,'2021-03-26 08:38:56',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616720421039 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (111,'2021-03-26 08:38:56','标题1','简介1','http://localhost:8080/ssm7bu05/upload/1616720096674.jpg','<p>内容1</p>'),(112,'2021-03-26 08:38:56','标题2','简介2','http://localhost:8080/ssm7bu05/upload/1616720104023.jpg','<p>内容2</p>'),(113,'2021-03-26 08:38:56','标题3','简介3','http://localhost:8080/ssm7bu05/upload/news_picture3.jpg','内容3'),(114,'2021-03-26 08:38:56','标题4','简介4','http://localhost:8080/ssm7bu05/upload/1616720123759.jpg','<p>内容4</p>'),(115,'2021-03-26 08:38:56','标题5','简介5','http://localhost:8080/ssm7bu05/upload/news_picture5.jpg','内容5'),(116,'2021-03-26 08:38:56','标题6','简介6','http://localhost:8080/ssm7bu05/upload/1616720113846.jpg','<p>内容6</p>'),(1616720421038,'2021-03-26 09:00:20','一手车源','一手车源','http://localhost:8080/ssm7bu05/upload/1616720397583.jpg','<p>一手车源，价格优，质量保证</p><p><img src=\"http://localhost:8080/ssm7bu05/upload/1616720419591.jpg\"></p>');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'qichexinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1616720667203 DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `orders` */

insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`) values (1616720667202,'2021-03-26 09:04:26','2021326942535042722','qichexinxi',1616720441431,1616720366808,'广汽本田雅阁银色','http://localhost:8080/ssm7bu05/upload/1616720285662.jpg',1,88800,88800,88800,88800,1,'已完成','广东省揭阳市榕城区中山街道猪肠涨糯米中兴园');

/*Table structure for table `qichefenlei` */

DROP TABLE IF EXISTS `qichefenlei`;

CREATE TABLE `qichefenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fenlei` varchar(200) NOT NULL COMMENT '分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fenlei` (`fenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=1616720226059 DEFAULT CHARSET=utf8 COMMENT='汽车分类';

/*Data for the table `qichefenlei` */

insert  into `qichefenlei`(`id`,`addtime`,`fenlei`) values (21,'2021-03-26 08:38:56','分类1'),(22,'2021-03-26 08:38:56','分类2'),(23,'2021-03-26 08:38:56','分类3'),(24,'2021-03-26 08:38:56','分类4'),(25,'2021-03-26 08:38:56','分类5'),(26,'2021-03-26 08:38:56','分类6'),(1616720219270,'2021-03-26 08:56:58','小轿车'),(1616720226058,'2021-03-26 08:57:05','SUV');

/*Table structure for table `qichepinpai` */

DROP TABLE IF EXISTS `qichepinpai`;

CREATE TABLE `qichepinpai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `pinpai` varchar(200) NOT NULL COMMENT '品牌',
  PRIMARY KEY (`id`),
  UNIQUE KEY `pinpai` (`pinpai`)
) ENGINE=InnoDB AUTO_INCREMENT=1616720238936 DEFAULT CHARSET=utf8 COMMENT='汽车品牌';

/*Data for the table `qichepinpai` */

insert  into `qichepinpai`(`id`,`addtime`,`pinpai`) values (31,'2021-03-26 08:38:56','品牌1'),(32,'2021-03-26 08:38:56','品牌2'),(33,'2021-03-26 08:38:56','品牌3'),(34,'2021-03-26 08:38:56','品牌4'),(35,'2021-03-26 08:38:56','品牌5'),(36,'2021-03-26 08:38:56','品牌6'),(1616720233282,'2021-03-26 08:57:12','本田'),(1616720238935,'2021-03-26 08:57:18','宝马');

/*Table structure for table `qichexinxi` */

DROP TABLE IF EXISTS `qichexinxi`;

CREATE TABLE `qichexinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qichemingcheng` varchar(200) NOT NULL COMMENT '汽车名称',
  `fenlei` varchar(200) NOT NULL COMMENT '分类',
  `pinpai` varchar(200) NOT NULL COMMENT '品牌',
  `yanse` varchar(200) NOT NULL COMMENT '颜色',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `zuowei` varchar(200) DEFAULT NULL COMMENT '座位',
  `huandangfangshi` varchar(200) DEFAULT NULL COMMENT '换挡方式',
  `qichepailiang` varchar(200) DEFAULT NULL COMMENT '汽车排量',
  `shangshinianfen` varchar(200) DEFAULT NULL COMMENT '上市年份',
  `shangpaishijian` date DEFAULT NULL COMMENT '上牌时间',
  `xingshilicheng` varchar(200) DEFAULT NULL COMMENT '行驶里程',
  `qichexiangqing` longtext COMMENT '汽车详情',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616720366809 DEFAULT CHARSET=utf8 COMMENT='汽车信息';

/*Data for the table `qichexinxi` */

insert  into `qichexinxi`(`id`,`addtime`,`qichemingcheng`,`fenlei`,`pinpai`,`yanse`,`tupian`,`zuowei`,`huandangfangshi`,`qichepailiang`,`shangshinianfen`,`shangpaishijian`,`xingshilicheng`,`qichexiangqing`,`clicktime`,`clicknum`,`price`) values (51,'2021-03-26 08:38:56','汽车名称1','分类1','品牌1','颜色1','http://localhost:8080/ssm7bu05/upload/1616720043424.jpg','2座','自动挡','汽车排量1','上市年份1','2021-03-26','行驶里程1','<p>汽车详情1</p>','2021-03-26 08:53:47',2,99.9),(52,'2021-03-26 08:38:56','汽车名称2','分类2','品牌2','颜色2','http://localhost:8080/ssm7bu05/upload/qichexinxi_tupian2.jpg','2座','自动挡','汽车排量2','上市年份2','2021-03-26','行驶里程2','<p>汽车详情2</p>','2021-03-26 09:03:39',11,99.9),(53,'2021-03-26 08:38:56','汽车名称3','分类3','品牌3','颜色3','http://localhost:8080/ssm7bu05/upload/1616720064655.jpg','2座','自动挡','汽车排量3','上市年份3','2021-03-26','行驶里程3','<p>汽车详情3</p>','2021-03-26 08:54:18',4,99.9),(54,'2021-03-26 08:38:56','汽车名称4','分类4','品牌4','颜色4','http://localhost:8080/ssm7bu05/upload/1616720080413.jpg','2座','自动挡','汽车排量4','上市年份4','2021-03-26','行驶里程4','<p>汽车详情4</p>','2021-03-26 08:54:31',5,99.9),(55,'2021-03-26 08:38:56','汽车名称5','分类5','品牌5','颜色5','http://localhost:8080/ssm7bu05/upload/qichexinxi_tupian5.jpg','2座','自动挡','汽车排量5','上市年份5','2021-03-26','行驶里程5','汽车详情5','2021-03-26 08:38:56',5,99.9),(56,'2021-03-26 08:38:56','汽车名称6','分类6','品牌6','颜色6','http://localhost:8080/ssm7bu05/upload/qichexinxi_tupian6.jpg','2座','自动挡','汽车排量6','上市年份6','2021-03-26','行驶里程6','汽车详情6','2021-03-26 09:00:47',8,99.9),(1616720366808,'2021-03-26 08:59:26','广汽本田雅阁银色','小轿车','本田','银色','http://localhost:8080/ssm7bu05/upload/1616720285662.jpg','5座','自动挡','2.0T','2019年','2020-02-04','15000公里','<p>汽车介绍</p><p><img src=\"http://localhost:8080/ssm7bu05/upload/1616720364760.jpg\"></p>','2021-03-26 09:04:26',3,88800);

/*Table structure for table `qicheyanse` */

DROP TABLE IF EXISTS `qicheyanse`;

CREATE TABLE `qicheyanse` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yanse` varchar(200) NOT NULL COMMENT '颜色',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yanse` (`yanse`)
) ENGINE=InnoDB AUTO_INCREMENT=1616720249789 DEFAULT CHARSET=utf8 COMMENT='汽车颜色';

/*Data for the table `qicheyanse` */

insert  into `qicheyanse`(`id`,`addtime`,`yanse`) values (41,'2021-03-26 08:38:56','颜色1'),(42,'2021-03-26 08:38:56','颜色2'),(43,'2021-03-26 08:38:56','颜色3'),(44,'2021-03-26 08:38:56','颜色4'),(45,'2021-03-26 08:38:56','颜色5'),(46,'2021-03-26 08:38:56','颜色6'),(1616720245659,'2021-03-26 08:57:24','红色'),(1616720249788,'2021-03-26 08:57:29','银色');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616720639225 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1616720639224,'2021-03-26 09:03:59',1616720441431,1616720366808,'qichexinxi','广汽本田雅阁银色','http://localhost:8080/ssm7bu05/upload/1616720285662.jpg');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,11,'用户1','yonghu','用户','uthgr5cffrym5ys2a7lnworym5cn3y78','2021-03-26 08:49:04','2021-03-26 09:49:05'),(2,1,'abo','users','管理员','xd3diyght9ksy38v3bh89zgsc67cpscr','2021-03-26 08:50:43','2021-03-26 10:04:39'),(3,1616720441431,'1','yonghu','用户','gr5692ugritk88aa46i9szo77x2dfxwk','2021-03-26 09:00:46','2021-03-26 10:05:10');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-03-26 08:38:56');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1616720441432 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`touxiang`,`xingbie`,`lianxidianhua`,`money`) values (11,'2021-03-26 08:38:56','用户1','123456','姓名1','http://localhost:8080/ssm7bu05/upload/yonghu_touxiang1.jpg','男','13823888881',100),(12,'2021-03-26 08:38:56','用户2','123456','姓名2','http://localhost:8080/ssm7bu05/upload/yonghu_touxiang2.jpg','男','13823888882',100),(13,'2021-03-26 08:38:56','用户3','123456','姓名3','http://localhost:8080/ssm7bu05/upload/yonghu_touxiang3.jpg','男','13823888883',100),(14,'2021-03-26 08:38:56','用户4','123456','姓名4','http://localhost:8080/ssm7bu05/upload/yonghu_touxiang4.jpg','男','13823888884',100),(15,'2021-03-26 08:38:56','用户5','123456','姓名5','http://localhost:8080/ssm7bu05/upload/yonghu_touxiang5.jpg','男','13823888885',100),(16,'2021-03-26 08:38:56','用户6','123456','姓名6','http://localhost:8080/ssm7bu05/upload/yonghu_touxiang6.jpg','男','13823888886',100),(1616720441431,'2021-03-26 09:00:41','1','1','陈一','http://localhost:8080/ssm7bu05/upload/1616720578972.jpg','女','12312312312',111200);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
