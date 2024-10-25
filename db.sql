/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - xiaoyuanyiqingfangkongxitong
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`xiaoyuanyiqingfangkongxitong` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `xiaoyuanyiqingfangkongxitong`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `daka` */

DROP TABLE IF EXISTS `daka`;

CREATE TABLE `daka` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `daka_name` varchar(200) DEFAULT NULL COMMENT '健康码打卡  Search111 ',
  `daka_file` varchar(200) DEFAULT NULL COMMENT '健康码照片',
  `daka_wendu` decimal(10,2) DEFAULT NULL COMMENT '体温',
  `daka_text` text COMMENT '备注 ',
  `daka_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='健康上报';

/*Data for the table `daka` */

insert  into `daka`(`id`,`yonghu_id`,`daka_name`,`daka_file`,`daka_wendu`,`daka_text`,`daka_delete`,`insert_time`,`create_time`) values (1,1,'健康码打卡1','upload/file.rar','971.61','备注1',1,'2023-04-11 15:48:19','2023-04-11 15:48:19'),(2,1,'健康码打卡2','upload/file.rar','749.21','备注2',1,'2023-04-11 15:48:19','2023-04-11 15:48:19'),(3,2,'健康码打卡3','upload/file.rar','473.10','备注3',1,'2023-04-11 15:48:19','2023-04-11 15:48:19'),(4,1,'健康码打卡4','upload/file.rar','978.56','备注4',1,'2023-04-11 15:48:19','2023-04-11 15:48:19'),(5,1,'健康码打卡5','upload/file.rar','997.93','备注5',1,'2023-04-11 15:48:19','2023-04-11 15:48:19'),(6,3,'健康码打卡6','upload/file.rar','986.18','备注6',1,'2023-04-11 15:48:19','2023-04-11 15:48:19'),(7,1,'健康码打卡7','upload/file.rar','594.25','备注7',1,'2023-04-11 15:48:19','2023-04-11 15:48:19'),(8,2,'健康码打卡8','upload/file.rar','119.09','备注8',1,'2023-04-11 15:48:19','2023-04-11 15:48:19'),(9,2,'健康码打卡9','upload/file.rar','871.47','备注9',1,'2023-04-11 15:48:19','2023-04-11 15:48:19'),(10,1,'健康码打卡10','upload/file.rar','203.61','备注10',1,'2023-04-11 15:48:19','2023-04-11 15:48:19'),(11,2,'健康码打卡11','upload/file.rar','359.99','备注11',1,'2023-04-11 15:48:19','2023-04-11 15:48:19'),(12,3,'健康码打卡12','upload/file.rar','972.75','备注12',1,'2023-04-11 15:48:19','2023-04-11 15:48:19'),(13,3,'健康码打卡13','upload/file.rar','159.12','备注13',1,'2023-04-11 15:48:19','2023-04-11 15:48:19'),(14,2,'健康码打卡14','upload/file.rar','534.75','备注14',1,'2023-04-11 15:48:19','2023-04-11 15:48:19'),(18,1,'打卡','upload/1681199625601.jpg','36.00','正常',1,'2023-04-11 15:53:51','2023-04-11 15:53:51');

/*Table structure for table `daoxiao` */

DROP TABLE IF EXISTS `daoxiao`;

CREATE TABLE `daoxiao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `daoxiao_name` varchar(200) DEFAULT NULL COMMENT '到校  Search111 ',
  `daoxiao_file` varchar(200) DEFAULT NULL COMMENT '照片',
  `daoxiao_text` text COMMENT '备注 ',
  `insert_shijian_time` date DEFAULT NULL COMMENT '到校时间',
  `daoxiao_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='到校确认';

/*Data for the table `daoxiao` */

insert  into `daoxiao`(`id`,`yonghu_id`,`daoxiao_name`,`daoxiao_file`,`daoxiao_text`,`insert_shijian_time`,`daoxiao_delete`,`insert_time`,`create_time`) values (1,3,'到校1','upload/file.rar','备注1','2023-04-11',1,'2023-04-11 15:48:19','2023-04-11 15:48:19'),(2,2,'到校2','upload/file.rar','备注2','2023-04-11',1,'2023-04-11 15:48:19','2023-04-11 15:48:19'),(3,1,'到校3','upload/file.rar','备注3','2023-04-11',1,'2023-04-11 15:48:19','2023-04-11 15:48:19'),(4,2,'到校4','upload/file.rar','备注4','2023-04-11',1,'2023-04-11 15:48:19','2023-04-11 15:48:19'),(5,3,'到校5','upload/file.rar','备注5','2023-04-11',1,'2023-04-11 15:48:19','2023-04-11 15:48:19'),(6,1,'到校6','upload/file.rar','备注6','2023-04-11',1,'2023-04-11 15:48:19','2023-04-11 15:48:19'),(7,2,'到校7','upload/file.rar','备注7','2023-04-11',1,'2023-04-11 15:48:19','2023-04-11 15:48:19'),(8,3,'到校8','upload/file.rar','备注8','2023-04-11',1,'2023-04-11 15:48:19','2023-04-11 15:48:19'),(9,2,'到校9','upload/file.rar','备注9','2023-04-11',1,'2023-04-11 15:48:19','2023-04-11 15:48:19'),(10,2,'到校10','upload/file.rar','备注10','2023-04-11',1,'2023-04-11 15:48:19','2023-04-11 15:48:19'),(11,1,'到校11','upload/file.rar','备注11','2023-04-11',1,'2023-04-11 15:48:19','2023-04-11 15:48:19'),(12,2,'到校12','upload/file.rar','备注12','2023-04-11',1,'2023-04-11 15:48:19','2023-04-11 15:48:19'),(13,2,'到校13','upload/file.rar','备注13','2023-04-11',1,'2023-04-11 15:48:19','2023-04-11 15:48:19'),(14,3,'到校14','upload/file.rar','备注14','2023-04-11',1,'2023-04-11 15:48:19','2023-04-11 15:48:19'),(18,1,'到校','upload/1681199643252.jpg','我已经到校','2023-04-11',2,'2023-04-11 15:54:10','2023-04-11 15:54:10');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2023-04-11 15:47:56'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2023-04-11 15:47:56'),(3,'gonggao_types','公告类型',1,'公告类型1',NULL,NULL,'2023-04-11 15:47:56'),(4,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2023-04-11 15:47:56'),(5,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2023-04-11 15:47:56'),(6,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2023-04-11 15:47:56'),(7,'quezhen_types','是否确诊',1,'已确诊',NULL,NULL,'2023-04-11 15:47:56'),(8,'quezhen_types','是否确诊',2,'未确诊',NULL,NULL,'2023-04-11 15:47:56'),(9,'quezhen_types','是否确诊',3,'疑是',NULL,NULL,'2023-04-11 15:47:56'),(10,'news_types','疫情知识类型',1,'疫情知识类型1',NULL,NULL,'2023-04-11 15:47:56'),(11,'news_types','疫情知识类型',2,'疫情知识类型2',NULL,NULL,'2023-04-11 15:47:56'),(12,'yaopin_types','药品类型',1,'药品类型1',NULL,NULL,'2023-04-11 15:47:56'),(13,'yaopin_types','药品类型',2,'药品类型2',NULL,NULL,'2023-04-11 15:47:57'),(14,'yaopin_types','药品类型',3,'药品类型3',NULL,NULL,'2023-04-11 15:47:57'),(15,'yaopin_types','药品类型',4,'药品类型4',NULL,NULL,'2023-04-11 15:47:57'),(16,'yaopin_order_types','订单类型',101,'已申请',NULL,NULL,'2023-04-11 15:47:57'),(17,'yaopin_order_types','订单类型',102,'已取消申请',NULL,NULL,'2023-04-11 15:47:57'),(18,'yaopin_order_types','订单类型',103,'已送到',NULL,NULL,'2023-04-11 15:47:57'),(19,'yaopin_order_types','订单类型',104,'已领取',NULL,NULL,'2023-04-11 15:47:57');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `laoshi_id` int(11) DEFAULT NULL COMMENT '老师',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` longtext COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`laoshi_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',2,NULL,NULL,'发布内容1',290,1,'2023-04-11 15:48:19','2023-04-11 15:48:19','2023-04-11 15:48:19'),(2,'帖子标题2',2,NULL,NULL,'发布内容2',65,1,'2023-04-11 15:48:19','2023-04-11 15:48:19','2023-04-11 15:48:19'),(3,'帖子标题3',2,NULL,NULL,'发布内容3',384,1,'2023-04-11 15:48:19','2023-04-11 15:48:19','2023-04-11 15:48:19'),(4,'帖子标题4',1,NULL,NULL,'发布内容4',369,1,'2023-04-11 15:48:19','2023-04-11 15:48:19','2023-04-11 15:48:19'),(5,'帖子标题5',3,NULL,NULL,'发布内容5',147,1,'2023-04-11 15:48:19','2023-04-11 15:48:19','2023-04-11 15:48:19'),(6,'帖子标题6',1,NULL,NULL,'发布内容6',174,1,'2023-04-11 15:48:19','2023-04-11 15:48:19','2023-04-11 15:48:19'),(7,'帖子标题7',1,NULL,NULL,'发布内容7',121,1,'2023-04-11 15:48:19','2023-04-11 15:48:19','2023-04-11 15:48:19'),(8,'帖子标题8',1,NULL,NULL,'发布内容8',104,1,'2023-04-11 15:48:19','2023-04-11 15:48:19','2023-04-11 15:48:19'),(9,'帖子标题9',1,NULL,NULL,'发布内容9',466,1,'2023-04-11 15:48:19','2023-04-11 15:48:19','2023-04-11 15:48:19'),(10,'帖子标题10',1,NULL,NULL,'发布内容10',399,1,'2023-04-11 15:48:19','2023-04-11 15:48:19','2023-04-11 15:48:19'),(11,'帖子标题11',1,NULL,NULL,'发布内容11',164,1,'2023-04-11 15:48:19','2023-04-11 15:48:19','2023-04-11 15:48:19'),(12,'帖子标题12',2,NULL,NULL,'发布内容12',60,1,'2023-04-11 15:48:19','2023-04-11 15:48:19','2023-04-11 15:48:19'),(13,'帖子标题13',3,NULL,NULL,'发布内容13',348,1,'2023-04-11 15:48:19','2023-04-11 15:48:19','2023-04-11 15:48:19'),(14,'帖子标题14',3,NULL,NULL,'发布内容14',415,1,'2023-04-11 15:48:19','2023-04-11 15:48:19','2023-04-11 15:48:19'),(15,'帖子',1,NULL,NULL,'<p>帖子111</p>',NULL,1,'2023-04-11 15:51:58',NULL,'2023-04-11 15:51:58'),(17,NULL,NULL,1,NULL,'456466',15,2,'2023-04-11 15:56:11',NULL,'2023-04-11 15:56:11'),(18,NULL,NULL,NULL,1,'565',15,2,'2023-04-11 15:57:15',NULL,'2023-04-11 15:57:15');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` text COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1','upload/gonggao1.jpg',2,'2023-04-11 15:48:19','公告详情1','2023-04-11 15:48:19'),(2,'公告名称2','upload/gonggao2.jpg',1,'2023-04-11 15:48:19','公告详情2','2023-04-11 15:48:19'),(3,'公告名称3','upload/gonggao3.jpg',2,'2023-04-11 15:48:19','公告详情3','2023-04-11 15:48:19'),(4,'公告名称4','upload/gonggao4.jpg',2,'2023-04-11 15:48:19','公告详情4','2023-04-11 15:48:19'),(5,'公告名称5','upload/gonggao5.jpg',1,'2023-04-11 15:48:19','公告详情5','2023-04-11 15:48:19'),(6,'公告名称6','upload/gonggao6.jpg',1,'2023-04-11 15:48:19','公告详情6','2023-04-11 15:48:19'),(7,'公告名称7','upload/gonggao7.jpg',1,'2023-04-11 15:48:19','公告详情7','2023-04-11 15:48:19'),(8,'公告名称8','upload/gonggao8.jpg',1,'2023-04-11 15:48:19','公告详情8','2023-04-11 15:48:19'),(9,'公告名称9','upload/gonggao9.jpg',2,'2023-04-11 15:48:19','公告详情9','2023-04-11 15:48:19'),(10,'公告名称10','upload/gonggao10.jpg',2,'2023-04-11 15:48:19','公告详情10','2023-04-11 15:48:19'),(11,'公告名称11','upload/gonggao11.jpg',2,'2023-04-11 15:48:19','公告详情11','2023-04-11 15:48:19'),(12,'公告名称12','upload/gonggao12.jpg',1,'2023-04-11 15:48:19','公告详情12','2023-04-11 15:48:19'),(13,'公告名称13','upload/gonggao13.jpg',1,'2023-04-11 15:48:19','公告详情13','2023-04-11 15:48:19'),(14,'公告名称14','upload/gonggao14.jpg',1,'2023-04-11 15:48:19','公告详情14','2023-04-11 15:48:19');

/*Table structure for table `hesuan` */

DROP TABLE IF EXISTS `hesuan`;

CREATE TABLE `hesuan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `hesuan_name` varchar(200) DEFAULT NULL COMMENT '核酸打卡  Search111 ',
  `hesuan_file` varchar(200) DEFAULT NULL COMMENT '核酸照片',
  `hesuan_text` text COMMENT '备注 ',
  `hesuan_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='核酸上报';

/*Data for the table `hesuan` */

insert  into `hesuan`(`id`,`yonghu_id`,`hesuan_name`,`hesuan_file`,`hesuan_text`,`hesuan_delete`,`insert_time`,`create_time`) values (1,1,'核酸打卡1','upload/file.rar','备注1',1,'2023-04-11 15:48:19','2023-04-11 15:48:19'),(2,2,'核酸打卡2','upload/file.rar','备注2',1,'2023-04-11 15:48:19','2023-04-11 15:48:19'),(3,2,'核酸打卡3','upload/file.rar','备注3',1,'2023-04-11 15:48:19','2023-04-11 15:48:19'),(4,3,'核酸打卡4','upload/file.rar','备注4',1,'2023-04-11 15:48:19','2023-04-11 15:48:19'),(5,3,'核酸打卡5','upload/file.rar','备注5',1,'2023-04-11 15:48:19','2023-04-11 15:48:19'),(6,2,'核酸打卡6','upload/file.rar','备注6',1,'2023-04-11 15:48:19','2023-04-11 15:48:19'),(7,2,'核酸打卡7','upload/file.rar','备注7',1,'2023-04-11 15:48:19','2023-04-11 15:48:19'),(8,2,'核酸打卡8','upload/file.rar','备注8',1,'2023-04-11 15:48:19','2023-04-11 15:48:19'),(9,2,'核酸打卡9','upload/file.rar','备注9',1,'2023-04-11 15:48:19','2023-04-11 15:48:19'),(10,2,'核酸打卡10','upload/file.rar','备注10',1,'2023-04-11 15:48:19','2023-04-11 15:48:19'),(11,3,'核酸打卡11','upload/file.rar','备注11',1,'2023-04-11 15:48:19','2023-04-11 15:48:19'),(12,1,'核酸打卡12','upload/file.rar','备注12',1,'2023-04-11 15:48:19','2023-04-11 15:48:19'),(13,1,'核酸打卡13','upload/file.rar','备注13',1,'2023-04-11 15:48:19','2023-04-11 15:48:19'),(14,1,'核酸打卡14','upload/file.rar','备注14',1,'2023-04-11 15:48:19','2023-04-11 15:48:19'),(18,1,'核酸证明','upload/1681199667222.jpg','我已做核酸',1,'2023-04-11 15:54:31','2023-04-11 15:54:31');

/*Table structure for table `laoshi` */

DROP TABLE IF EXISTS `laoshi`;

CREATE TABLE `laoshi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `laoshi_name` varchar(200) DEFAULT NULL COMMENT '老师姓名 Search111 ',
  `laoshi_phone` varchar(200) DEFAULT NULL COMMENT '老师手机号',
  `laoshi_id_number` varchar(200) DEFAULT NULL COMMENT '老师身份证号',
  `laoshi_photo` varchar(200) DEFAULT NULL COMMENT '老师头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `laoshi_email` varchar(200) DEFAULT NULL COMMENT '老师邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='老师';

/*Data for the table `laoshi` */

insert  into `laoshi`(`id`,`username`,`password`,`laoshi_name`,`laoshi_phone`,`laoshi_id_number`,`laoshi_photo`,`sex_types`,`laoshi_email`,`create_time`) values (1,'a1','123456','老师姓名1','17703786901','410224199010102001','upload/laoshi1.jpg',1,'1@qq.com','2023-04-11 15:48:19'),(2,'a2','123456','老师姓名2','17703786902','410224199010102002','upload/laoshi2.jpg',2,'2@qq.com','2023-04-11 15:48:19'),(3,'a3','123456','老师姓名3','17703786903','410224199010102003','upload/laoshi3.jpg',1,'3@qq.com','2023-04-11 15:48:19');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `news_name` varchar(200) DEFAULT NULL COMMENT '疫情知识名称 Search111  ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '疫情知识图片 ',
  `news_types` int(11) NOT NULL COMMENT '疫情知识类型 Search111  ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `news_content` longtext COMMENT '疫情知识详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='疫情知识信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_photo`,`news_types`,`insert_time`,`news_content`,`create_time`) values (1,'疫情知识名称1','upload/news1.jpg',2,'2023-04-11 15:48:19','疫情知识详情1','2023-04-11 15:48:19'),(2,'疫情知识名称2','upload/news2.jpg',1,'2023-04-11 15:48:19','疫情知识详情2','2023-04-11 15:48:19'),(3,'疫情知识名称3','upload/news3.jpg',1,'2023-04-11 15:48:19','疫情知识详情3','2023-04-11 15:48:19'),(4,'疫情知识名称4','upload/news4.jpg',2,'2023-04-11 15:48:19','疫情知识详情4','2023-04-11 15:48:19'),(5,'疫情知识名称5','upload/news5.jpg',1,'2023-04-11 15:48:19','疫情知识详情5','2023-04-11 15:48:19'),(6,'疫情知识名称6','upload/news6.jpg',2,'2023-04-11 15:48:19','疫情知识详情6','2023-04-11 15:48:19'),(7,'疫情知识名称7','upload/news7.jpg',1,'2023-04-11 15:48:19','疫情知识详情7','2023-04-11 15:48:19'),(8,'疫情知识名称8','upload/news8.jpg',1,'2023-04-11 15:48:19','疫情知识详情8','2023-04-11 15:48:19'),(9,'疫情知识名称9','upload/news9.jpg',1,'2023-04-11 15:48:19','疫情知识详情9','2023-04-11 15:48:19'),(10,'疫情知识名称10','upload/news10.jpg',2,'2023-04-11 15:48:19','疫情知识详情10','2023-04-11 15:48:19'),(11,'疫情知识名称11','upload/news11.jpg',1,'2023-04-11 15:48:19','疫情知识详情11','2023-04-11 15:48:19'),(12,'疫情知识名称12','upload/news12.jpg',1,'2023-04-11 15:48:19','疫情知识详情12','2023-04-11 15:48:19'),(13,'疫情知识名称13','upload/news13.jpg',2,'2023-04-11 15:48:19','疫情知识详情13','2023-04-11 15:48:19'),(14,'疫情知识名称14','upload/news14.jpg',2,'2023-04-11 15:48:19','疫情知识详情14','2023-04-11 15:48:19');

/*Table structure for table `quezhen` */

DROP TABLE IF EXISTS `quezhen`;

CREATE TABLE `quezhen` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `quezhen_name` varchar(200) DEFAULT NULL COMMENT '确诊打卡  Search111 ',
  `quezhen_file` varchar(200) DEFAULT NULL COMMENT '确诊照片',
  `quezhen_types` int(11) DEFAULT NULL COMMENT '是否确诊 Search111',
  `quezhen_text` text COMMENT '备注 ',
  `quezhen_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='确诊上报';

/*Data for the table `quezhen` */

insert  into `quezhen`(`id`,`yonghu_id`,`quezhen_name`,`quezhen_file`,`quezhen_types`,`quezhen_text`,`quezhen_delete`,`insert_time`,`create_time`) values (1,3,'确诊打卡1','upload/file.rar',3,'备注1',1,'2023-04-11 15:48:19','2023-04-11 15:48:19'),(2,1,'确诊打卡2','upload/file.rar',3,'备注2',1,'2023-04-11 15:48:19','2023-04-11 15:48:19'),(3,3,'确诊打卡3','upload/file.rar',1,'备注3',1,'2023-04-11 15:48:19','2023-04-11 15:48:19'),(4,2,'确诊打卡4','upload/file.rar',3,'备注4',1,'2023-04-11 15:48:19','2023-04-11 15:48:19'),(5,1,'确诊打卡5','upload/file.rar',3,'备注5',1,'2023-04-11 15:48:19','2023-04-11 15:48:19'),(6,2,'确诊打卡6','upload/file.rar',3,'备注6',1,'2023-04-11 15:48:19','2023-04-11 15:48:19'),(7,1,'确诊打卡7','upload/file.rar',1,'备注7',1,'2023-04-11 15:48:19','2023-04-11 15:48:19'),(8,3,'确诊打卡8','upload/file.rar',2,'备注8',1,'2023-04-11 15:48:19','2023-04-11 15:48:19'),(9,1,'确诊打卡9','upload/file.rar',1,'备注9',1,'2023-04-11 15:48:19','2023-04-11 15:48:19'),(10,2,'确诊打卡10','upload/file.rar',1,'备注10',1,'2023-04-11 15:48:19','2023-04-11 15:48:19'),(11,2,'确诊打卡11','upload/file.rar',1,'备注11',1,'2023-04-11 15:48:19','2023-04-11 15:48:19'),(12,3,'确诊打卡12','upload/file.rar',3,'备注12',1,'2023-04-11 15:48:19','2023-04-11 15:48:19'),(13,1,'确诊打卡13','upload/file.rar',3,'备注13',1,'2023-04-11 15:48:19','2023-04-11 15:48:19'),(14,2,'确诊打卡14','upload/file.rar',3,'备注14',1,'2023-04-11 15:48:19','2023-04-11 15:48:19'),(18,1,'是否确诊','upload/1681199726084.jpg',3,'我没有确诊',1,'2023-04-11 15:55:42','2023-04-11 15:55:42');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '儿童id',
  `username` varchar(100) NOT NULL COMMENT '儿童名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','laoshi','老师','xanxpmyjtb5tlrqfhd5l3kxahn4nc6yp','2023-04-11 15:49:04','2023-04-11 16:55:53'),(2,1,'a1','yonghu','用户','3ozvaje9gfbf63l8528g6gxlqk7h48l7','2023-04-11 15:49:51','2023-04-11 16:53:07'),(3,1,'admin','users','管理员','gl36yqjr2otqww391bm546n5wmndb506','2023-04-11 15:51:08','2023-04-11 16:56:37'),(4,2,'a2','yonghu','用户','c1hbygw8ek7i0b7ya97wcubclzsozbil','2023-04-11 15:52:58','2023-04-11 16:52:58');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '儿童名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-04-11 15:47:56');

/*Table structure for table `yaopin` */

DROP TABLE IF EXISTS `yaopin`;

CREATE TABLE `yaopin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `yaopin_name` varchar(200) DEFAULT NULL COMMENT '药品名称  Search111 ',
  `yaopin_uuid_number` varchar(200) DEFAULT NULL COMMENT '药品编号',
  `yaopin_photo` varchar(200) DEFAULT NULL COMMENT '药品照片',
  `yaopin_address` varchar(200) DEFAULT NULL COMMENT '药品地点',
  `yaopin_types` int(11) DEFAULT NULL COMMENT '药品类型 Search111',
  `yaopin_content` longtext COMMENT '药品介绍 ',
  `yaopin_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='药品';

/*Data for the table `yaopin` */

insert  into `yaopin`(`id`,`yonghu_id`,`yaopin_name`,`yaopin_uuid_number`,`yaopin_photo`,`yaopin_address`,`yaopin_types`,`yaopin_content`,`yaopin_delete`,`insert_time`,`create_time`) values (1,3,'药品名称1','1681199299453','upload/yaopin1.jpg','药品地点1',3,'药品介绍1',1,'2023-04-11 15:48:19','2023-04-11 15:48:19'),(2,2,'药品名称2','1681199299414','upload/yaopin2.jpg','药品地点2',2,'药品介绍2',1,'2023-04-11 15:48:19','2023-04-11 15:48:19'),(3,1,'药品名称3','1681199299411','upload/yaopin3.jpg','药品地点3',3,'药品介绍3',1,'2023-04-11 15:48:19','2023-04-11 15:48:19'),(4,2,'药品名称4','1681199299459','upload/yaopin4.jpg','药品地点4',1,'药品介绍4',1,'2023-04-11 15:48:19','2023-04-11 15:48:19'),(5,1,'药品名称5','1681199299360','upload/yaopin5.jpg','药品地点5',2,'药品介绍5',1,'2023-04-11 15:48:19','2023-04-11 15:48:19'),(6,2,'药品名称6','1681199299443','upload/yaopin6.jpg','药品地点6',4,'药品介绍6',1,'2023-04-11 15:48:19','2023-04-11 15:48:19'),(7,2,'药品名称7','1681199299396','upload/yaopin7.jpg','药品地点7',3,'药品介绍7',1,'2023-04-11 15:48:19','2023-04-11 15:48:19'),(8,2,'药品名称8','1681199299411','upload/yaopin8.jpg','药品地点8',3,'药品介绍8',1,'2023-04-11 15:48:19','2023-04-11 15:48:19'),(9,1,'药品名称9','1681199299387','upload/yaopin9.jpg','药品地点9',1,'药品介绍9',1,'2023-04-11 15:48:19','2023-04-11 15:48:19'),(10,1,'药品名称10','1681199299413','upload/yaopin10.jpg','药品地点10',2,'药品介绍10',1,'2023-04-11 15:48:19','2023-04-11 15:48:19'),(11,1,'药品名称11','1681199299364','upload/yaopin11.jpg','药品地点11',2,'药品介绍11',1,'2023-04-11 15:48:19','2023-04-11 15:48:19'),(12,2,'药品名称12','1681199299426','upload/yaopin12.jpg','药品地点12',3,'药品介绍12',1,'2023-04-11 15:48:19','2023-04-11 15:48:19'),(13,1,'药品名称13','1681199299432','upload/yaopin13.jpg','药品地点13',2,'药品介绍13',1,'2023-04-11 15:48:19','2023-04-11 15:48:19'),(14,1,'药品名称14','1681199299392','upload/yaopin14.jpg','药品地点14',4,'药品介绍14',1,'2023-04-11 15:48:19','2023-04-11 15:48:19');

/*Table structure for table `yaopin_order` */

DROP TABLE IF EXISTS `yaopin_order`;

CREATE TABLE `yaopin_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yaopin_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单编号 Search111 ',
  `yaopin_id` int(11) DEFAULT NULL COMMENT '药品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `yaopin_order_types` int(11) DEFAULT NULL COMMENT '订单类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='药品订单';

/*Data for the table `yaopin_order` */

insert  into `yaopin_order`(`id`,`yaopin_order_uuid_number`,`yaopin_id`,`yonghu_id`,`yaopin_order_types`,`insert_time`,`create_time`) values (1,'1681199556401',12,1,104,'2023-04-11 15:52:36','2023-04-11 15:52:36');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号 ',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_photo`,`yonghu_phone`,`yonghu_id_number`,`yonghu_email`,`sex_types`,`create_time`) values (1,'a1','123456','用户姓名1','upload/yonghu1.jpg','17703786901','410224199010102001','1@qq.com',2,'2023-04-11 15:48:19'),(2,'a2','123456','用户姓名2','upload/yonghu2.jpg','17703786902','410224199010102002','2@qq.com',1,'2023-04-11 15:48:19'),(3,'a3','123456','用户姓名3','upload/yonghu3.jpg','17703786903','410224199010102003','3@qq.com',2,'2023-04-11 15:48:19');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
