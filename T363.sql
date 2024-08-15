/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t363`;
CREATE DATABASE IF NOT EXISTS `t363` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t363`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图11111', 'upload/config1.jpg'),
	(2, '轮播图2', 'upload/config2.jpg'),
	(3, '轮播图3', 'upload/config3.jpg');

DROP TABLE IF EXISTS `daijia_dingdan`;
CREATE TABLE IF NOT EXISTS `daijia_dingdan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `siji_id` int DEFAULT NULL COMMENT '司机',
  `daijia_dingdan_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单编号 Search111 ',
  `daijia_dingdan_chufa_address` varchar(200) DEFAULT NULL COMMENT '出发位置',
  `daijia_dingdan_qianwang_address` varchar(200) DEFAULT NULL COMMENT '前往位置',
  `daijia_dingdan_yanse` varchar(200) DEFAULT NULL COMMENT '车辆颜色',
  `daijia_dingdan_pinpai` varchar(200) DEFAULT NULL COMMENT '车子品牌',
  `daijia_dingdan_photo` varchar(200) DEFAULT NULL COMMENT '车辆照片',
  `daijia_dingdan_chepaihao` varchar(200) DEFAULT NULL COMMENT '车牌号',
  `daijia_dingdan_lianxiren` varchar(200) DEFAULT NULL COMMENT '联系人姓名',
  `daijia_dingdan_phone` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `daijia_dingdan_jine` decimal(10,2) DEFAULT NULL COMMENT '出价',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '下单时间',
  `daijia_dingdan_content` longtext COMMENT '备注',
  `daijia_dingdan_types` int DEFAULT NULL COMMENT '订单状态 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3 COMMENT='代驾订单';

DELETE FROM `daijia_dingdan`;
INSERT INTO `daijia_dingdan` (`id`, `yonghu_id`, `siji_id`, `daijia_dingdan_uuid_number`, `daijia_dingdan_chufa_address`, `daijia_dingdan_qianwang_address`, `daijia_dingdan_yanse`, `daijia_dingdan_pinpai`, `daijia_dingdan_photo`, `daijia_dingdan_chepaihao`, `daijia_dingdan_lianxiren`, `daijia_dingdan_phone`, `daijia_dingdan_jine`, `insert_time`, `daijia_dingdan_content`, `daijia_dingdan_types`, `create_time`) VALUES
	(1, 1, 1, '1680330198717', '出发位置1', '前往位置1', '车辆颜色1', '车子品牌1', 'upload/daijia_dingdan1.jpg', '车牌号1', '联系人姓名1', '17703786901', 60.00, '2023-04-01 06:23:18', '备注1', 105, '2023-04-01 06:23:18'),
	(2, 2, 3, '1680330198721', '出发位置2', '前往位置2', '车辆颜色2', '车子品牌2', 'upload/daijia_dingdan2.jpg', '车牌号2', '联系人姓名2', '17703786902', 199.43, '2023-04-01 06:23:18', '备注2', 105, '2023-04-01 06:23:18'),
	(3, 3, 2, '1680330198731', '出发位置3', '前往位置3', '车辆颜色3', '车子品牌3', 'upload/daijia_dingdan3.jpg', '车牌号3', '联系人姓名3', '17703786903', 775.92, '2023-04-01 06:23:18', '备注3', 105, '2023-04-01 06:23:18'),
	(4, 2, 3, '1680330198758', '出发位置4', '前往位置4', '车辆颜色4', '车子品牌4', 'upload/daijia_dingdan4.jpg', '车牌号4', '联系人姓名4', '17703786904', 278.50, '2023-04-01 06:23:18', '备注4', 105, '2023-04-01 06:23:18'),
	(5, 1, 3, '1680330198739', '出发位置5', '前往位置5', '车辆颜色5', '车子品牌5', 'upload/daijia_dingdan5.jpg', '车牌号5', '联系人姓名5', '17703786905', 512.68, '2023-04-01 06:23:18', '备注5', 105, '2023-04-01 06:23:18'),
	(6, 3, 1, '1680330198707', '出发位置6', '前往位置6', '车辆颜色6', '车子品牌6', 'upload/daijia_dingdan6.jpg', '车牌号6', '联系人姓名6', '17703786906', 122.50, '2023-04-01 06:23:18', '备注6', 105, '2023-04-01 06:23:18'),
	(7, 3, 1, '1680330198678', '出发位置7', '前往位置7', '车辆颜色7', '车子品牌7', 'upload/daijia_dingdan7.jpg', '车牌号7', '联系人姓名7', '17703786907', 675.83, '2023-04-01 06:23:18', '备注7', 105, '2023-04-01 06:23:18'),
	(8, 2, 3, '1680330198700', '出发位置8', '前往位置8', '车辆颜色8', '车子品牌8', 'upload/daijia_dingdan8.jpg', '车牌号8', '联系人姓名8', '17703786908', 61.51, '2023-04-01 06:23:18', '备注8', 105, '2023-04-01 06:23:18'),
	(9, 3, 2, '1680330198716', '出发位置9', '前往位置9', '车辆颜色9', '车子品牌9', 'upload/daijia_dingdan9.jpg', '车牌号9', '联系人姓名9', '17703786909', 425.42, '2023-04-01 06:23:18', '备注9', 105, '2023-04-01 06:23:18'),
	(10, 1, 1, '1680330198729', '出发位置10', '前往位置10', '车辆颜色10', '车子品牌10', 'upload/daijia_dingdan10.jpg', '车牌号10', '联系人姓名10', '17703786910', 228.77, '2023-04-01 06:23:18', '备注10', 105, '2023-04-01 06:23:18'),
	(11, 2, 3, '1680330198717', '出发位置11', '前往位置11', '车辆颜色11', '车子品牌11', 'upload/daijia_dingdan11.jpg', '车牌号11', '联系人姓名11', '17703786911', 86.88, '2023-04-01 06:23:18', '备注11', 105, '2023-04-01 06:23:18'),
	(12, 3, 2, '1680330198669', '出发位置12', '前往位置12', '车辆颜色12', '车子品牌12', 'upload/daijia_dingdan12.jpg', '车牌号12', '联系人姓名12', '17703786912', 883.78, '2023-04-01 06:23:18', '备注12', 105, '2023-04-01 06:23:18'),
	(13, 1, 1, '1680330198684', '出发位置13', '前往位置13', '车辆颜色13', '车子品牌13', 'upload/daijia_dingdan13.jpg', '车牌号13', '联系人姓名13', '17703786913', 755.17, '2023-04-01 06:23:18', '备注13', 105, '2023-04-01 06:23:18'),
	(14, 3, 1, '1680330198726', '出发位置14', '前往位置14', '车辆颜色14', '车子品牌14', 'upload/daijia_dingdan14.jpg', '车牌号14', '联系人姓名14', '17703786914', 88.79, '2023-04-01 06:23:18', '备注14', 105, '2023-04-01 06:23:18'),
	(15, 1, 1, '1680332320690', '位置2222', '位置3333', '白色', '比亚迪', 'upload/1680332336534.jpg', '豫a111111', '张三', '17788889999', 50.00, '2023-04-01 06:59:20', '无', 105, '2023-04-01 06:59:20'),
	(16, 4, 2, '1680334793077', '位置222', '位置33', '白色', '比亚迪', 'upload/1680334806242.jpg', '豫a5555', '张三', '18899999999', 99.00, '2023-04-01 07:40:22', '地方手动噶十多个', 103, '2023-04-01 07:40:22'),
	(17, 4, 1, '1680334827861', '位置333', '位置4444', '红色', '比亚迪', 'upload/1680334841956.jpg', '豫a999999', '张三', '15522225555', 33.00, '2023-04-01 07:40:57', '的公司大概多少', 105, '2023-04-01 07:40:57');

DROP TABLE IF EXISTS `daijia_dingdan_chat`;
CREATE TABLE IF NOT EXISTS `daijia_dingdan_chat` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int DEFAULT NULL COMMENT '提问人',
  `siji_id` int DEFAULT NULL COMMENT '回答人',
  `daijia_dingdan_chat_issue_text` longtext COMMENT '问题',
  `issue_time` timestamp NULL DEFAULT NULL COMMENT '问题时间',
  `daijia_dingdan_chat_reply_text` longtext COMMENT '回复',
  `reply_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `zhuangtai_types` int DEFAULT NULL COMMENT '状态',
  `daijia_dingdan_chat_types` int DEFAULT NULL COMMENT '数据类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '提问时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb3 COMMENT='用户咨询';

DELETE FROM `daijia_dingdan_chat`;
INSERT INTO `daijia_dingdan_chat` (`id`, `yonghu_id`, `siji_id`, `daijia_dingdan_chat_issue_text`, `issue_time`, `daijia_dingdan_chat_reply_text`, `reply_time`, `zhuangtai_types`, `daijia_dingdan_chat_types`, `insert_time`, `create_time`) VALUES
	(1, 1, 1, '问题1', '2023-04-01 06:23:18', '回复1', '2023-04-01 06:23:18', 1, 2, '2023-04-01 06:23:18', '2023-04-01 06:23:18'),
	(2, 1, 2, '问题2', '2023-04-01 06:23:18', '回复2', '2023-04-01 06:23:18', 2, 1, '2023-04-01 06:23:18', '2023-04-01 06:23:18'),
	(3, 1, 3, '问题3', '2023-04-01 06:23:18', '回复3', '2023-04-01 06:23:18', 1, 2, '2023-04-01 06:23:18', '2023-04-01 06:23:18'),
	(4, 2, 1, '问题4', '2023-04-01 06:23:18', '回复4', '2023-04-01 06:23:18', 1, 2, '2023-04-01 06:23:18', '2023-04-01 06:23:18'),
	(5, 3, 2, '问题5', '2023-04-01 06:23:18', '回复5', '2023-04-01 06:23:18', 1, 2, '2023-04-01 06:23:18', '2023-04-01 06:23:18'),
	(6, 2, 1, '问题6', '2023-04-01 06:23:18', '回复6', '2023-04-01 06:23:18', 2, 1, '2023-04-01 06:23:18', '2023-04-01 06:23:18'),
	(7, 2, 2, '问题7', '2023-04-01 06:23:18', '回复7', '2023-04-01 06:23:18', 2, 2, '2023-04-01 06:23:18', '2023-04-01 06:23:18'),
	(8, 2, 2, '问题8', '2023-04-01 06:23:18', '回复8', '2023-04-01 06:23:18', 2, 1, '2023-04-01 06:23:18', '2023-04-01 06:23:18'),
	(9, 2, 3, '问题9', '2023-04-01 06:23:18', '回复9', '2023-04-01 06:23:18', 2, 1, '2023-04-01 06:23:18', '2023-04-01 06:23:18'),
	(10, 1, 1, '问题10', '2023-04-01 06:23:18', '回复10', '2023-04-01 06:23:18', 2, 2, '2023-04-01 06:23:18', '2023-04-01 06:23:18'),
	(11, 3, 2, '问题11', '2023-04-01 06:23:18', '回复11', '2023-04-01 06:23:18', 2, 2, '2023-04-01 06:23:18', '2023-04-01 06:23:18'),
	(12, 3, 3, '问题12', '2023-04-01 06:23:18', '回复12', '2023-04-01 06:23:18', 2, 2, '2023-04-01 06:23:18', '2023-04-01 06:23:18'),
	(13, 2, 2, '问题13', '2023-04-01 06:23:18', '回复13', '2023-04-01 06:23:18', 2, 2, '2023-04-01 06:23:18', '2023-04-01 06:23:18'),
	(14, 1, 1, '问题14', '2023-04-01 06:23:18', '回复14', '2023-04-01 06:23:18', 1, 2, '2023-04-01 06:23:18', '2023-04-01 06:23:18'),
	(15, 1, 1, '222', '2023-04-01 07:16:31', NULL, NULL, 2, 1, '2023-04-01 07:16:32', '2023-04-01 07:16:32'),
	(16, 1, 1, '发的发生的', '2023-04-01 07:16:33', NULL, NULL, 2, 1, '2023-04-01 07:16:34', '2023-04-01 07:16:34'),
	(17, 1, 1, NULL, NULL, '哈哈哈', '2023-04-01 07:16:41', NULL, 2, '2023-04-01 07:16:41', '2023-04-01 07:16:41'),
	(18, 1, 1, NULL, NULL, '加快看看', '2023-04-01 07:16:44', NULL, 2, '2023-04-01 07:16:44', '2023-04-01 07:16:44'),
	(19, 1, 1, NULL, NULL, '黑胡椒', '2023-04-01 07:16:50', NULL, 2, '2023-04-01 07:16:51', '2023-04-01 07:16:51'),
	(20, 4, 1, '换个哈哈哈', '2023-04-01 07:41:25', NULL, NULL, 2, 1, '2023-04-01 07:41:25', '2023-04-01 07:41:25'),
	(21, 4, 1, NULL, NULL, '好几家', '2023-04-01 07:41:31', NULL, 2, '2023-04-01 07:41:32', '2023-04-01 07:41:32'),
	(22, 4, 1, NULL, NULL, '发货单发货', '2023-04-01 07:41:34', NULL, 2, '2023-04-01 07:41:35', '2023-04-01 07:41:35');

DROP TABLE IF EXISTS `daijia_dingdan_commentback`;
CREATE TABLE IF NOT EXISTS `daijia_dingdan_commentback` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `daijia_dingdan_id` int DEFAULT NULL COMMENT '代驾订单',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `daijia_dingdan_commentback_pingfen_number` int DEFAULT NULL COMMENT '评分',
  `daijia_dingdan_commentback_text` longtext COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COMMENT='代驾订单评价';

DELETE FROM `daijia_dingdan_commentback`;
INSERT INTO `daijia_dingdan_commentback` (`id`, `daijia_dingdan_id`, `yonghu_id`, `daijia_dingdan_commentback_pingfen_number`, `daijia_dingdan_commentback_text`, `insert_time`, `create_time`) VALUES
	(1, 1, 1, 0, '评价内容1', '2023-04-01 06:23:18', '2023-04-01 06:23:18'),
	(2, 2, 1, 4, '评价内容2', '2023-04-01 06:23:18', '2023-04-01 06:23:18'),
	(3, 3, 3, 1, '评价内容3', '2023-04-01 06:23:18', '2023-04-01 06:23:18'),
	(4, 4, 2, 4, '评价内容4', '2023-04-01 06:23:18', '2023-04-01 06:23:18'),
	(5, 5, 1, 2, '评价内容5', '2023-04-01 06:23:18', '2023-04-01 06:23:18'),
	(6, 6, 3, 3, '评价内容6', '2023-04-01 06:23:18', '2023-04-01 06:23:18'),
	(7, 7, 3, 1, '评价内容7', '2023-04-01 06:23:18', '2023-04-01 06:23:18'),
	(8, 8, 1, 0, '评价内容8', '2023-04-01 06:23:18', '2023-04-01 06:23:18'),
	(9, 9, 1, 0, '评价内容9', '2023-04-01 06:23:18', '2023-04-01 06:23:18'),
	(10, 10, 1, 2, '评价内容10', '2023-04-01 06:23:18', '2023-04-01 06:23:18'),
	(11, 11, 1, 5, '评价内容11', '2023-04-01 06:23:18', '2023-04-01 06:23:18'),
	(12, 12, 2, 0, '评价内容12', '2023-04-01 06:23:18', '2023-04-01 06:23:18'),
	(13, 13, 1, 1, '评价内容13', '2023-04-01 06:23:18', '2023-04-01 06:23:18'),
	(14, 14, 3, 3, '评价内容14', '2023-04-01 06:23:18', '2023-04-01 06:23:18'),
	(15, 15, 1, 3, '哈根达斯公司的', '2023-04-01 07:11:59', '2023-04-01 07:11:59'),
	(16, 17, 4, 4, '哈哈哈哈', '2023-04-01 07:41:57', '2023-04-01 07:41:57');

DROP TABLE IF EXISTS `daijia_dingdan_tousu`;
CREATE TABLE IF NOT EXISTS `daijia_dingdan_tousu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `daijia_dingdan_id` int DEFAULT NULL COMMENT '代驾订单',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `daijia_dingdan_tousu_file` varchar(200) DEFAULT NULL COMMENT '附件',
  `daijia_dingdan_tousu_content` longtext COMMENT '投诉内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '投诉时间',
  `daijia_dingdan_huifu_content` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COMMENT='代驾订单投诉';

DELETE FROM `daijia_dingdan_tousu`;
INSERT INTO `daijia_dingdan_tousu` (`id`, `daijia_dingdan_id`, `yonghu_id`, `daijia_dingdan_tousu_file`, `daijia_dingdan_tousu_content`, `insert_time`, `daijia_dingdan_huifu_content`, `update_time`, `create_time`) VALUES
	(1, 1, 2, 'upload/file.rar', '投诉内容1', '2023-04-01 06:23:18', '回复内容1', '2023-04-01 06:23:18', '2023-04-01 06:23:18'),
	(2, 2, 3, 'upload/file.rar', '投诉内容2', '2023-04-01 06:23:18', '回复内容2', '2023-04-01 06:23:18', '2023-04-01 06:23:18'),
	(3, 3, 1, 'upload/file.rar', '投诉内容3', '2023-04-01 06:23:18', '回复内容3', '2023-04-01 06:23:18', '2023-04-01 06:23:18'),
	(4, 4, 1, 'upload/file.rar', '投诉内容4', '2023-04-01 06:23:18', '回复内容4', '2023-04-01 06:23:18', '2023-04-01 06:23:18'),
	(5, 5, 3, 'upload/file.rar', '投诉内容5', '2023-04-01 06:23:18', '回复内容5', '2023-04-01 06:23:18', '2023-04-01 06:23:18'),
	(6, 6, 1, 'upload/file.rar', '投诉内容6', '2023-04-01 06:23:18', '回复内容6', '2023-04-01 06:23:18', '2023-04-01 06:23:18'),
	(7, 7, 1, 'upload/file.rar', '投诉内容7', '2023-04-01 06:23:18', '回复内容7', '2023-04-01 06:23:18', '2023-04-01 06:23:18'),
	(8, 8, 2, 'upload/file.rar', '投诉内容8', '2023-04-01 06:23:18', '回复内容8', '2023-04-01 06:23:18', '2023-04-01 06:23:18'),
	(9, 9, 2, 'upload/file.rar', '投诉内容9', '2023-04-01 06:23:18', '回复内容9', '2023-04-01 06:23:18', '2023-04-01 06:23:18'),
	(10, 10, 3, 'upload/file.rar', '投诉内容10', '2023-04-01 06:23:18', '回复内容10', '2023-04-01 06:23:18', '2023-04-01 06:23:18'),
	(11, 11, 1, 'upload/file.rar', '投诉内容11', '2023-04-01 06:23:18', '回复内容11', '2023-04-01 06:23:18', '2023-04-01 06:23:18'),
	(12, 12, 2, 'upload/file.rar', '投诉内容12', '2023-04-01 06:23:18', '回复内容12', '2023-04-01 06:23:18', '2023-04-01 06:23:18'),
	(13, 13, 3, 'upload/file.rar', '投诉内容13', '2023-04-01 06:23:18', '回复内容13', '2023-04-01 06:23:18', '2023-04-01 06:23:18'),
	(14, 14, 1, 'upload/file.rar', '投诉内容14', '2023-04-01 06:23:18', '回复内容14', '2023-04-01 06:23:18', '2023-04-01 06:23:18'),
	(15, 15, 1, 'upload/1680333616971.doc', '<p>广东省归属感</p>', '2023-04-01 07:20:18', '<p>和房东说噶三顿饭给宿管</p>', '2023-04-01 07:22:53', '2023-04-01 07:20:18'),
	(16, 17, 4, 'upload/1680334928621.doc', '<p>个第三个十多个</p>', '2023-04-01 07:42:10', '<p>回复的后代和</p>', '2023-04-01 07:43:21', '2023-04-01 07:42:10');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2023-04-01 06:23:09'),
	(2, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2023-04-01 06:23:09'),
	(3, 'daijia_dingdan_types', '订单状态', 101, '已支付订单', NULL, NULL, '2023-04-01 06:23:09'),
	(4, 'daijia_dingdan_types', '订单状态', 102, '已取消订单', NULL, NULL, '2023-04-01 06:23:09'),
	(5, 'daijia_dingdan_types', '订单状态', 103, '已接单', NULL, NULL, '2023-04-01 06:23:09'),
	(6, 'daijia_dingdan_types', '订单状态', 104, '已上车', NULL, NULL, '2023-04-01 06:23:09'),
	(7, 'daijia_dingdan_types', '订单状态', 105, '已评价', NULL, NULL, '2023-04-01 06:23:09'),
	(8, 'daijia_dingdan_chat_types', '数据类型', 1, '问题', NULL, NULL, '2023-04-01 06:23:10'),
	(9, 'daijia_dingdan_chat_types', '数据类型', 2, '回复', NULL, NULL, '2023-04-01 06:23:10'),
	(10, 'zhuangtai_types', '状态', 1, '未回复', NULL, NULL, '2023-04-01 06:23:10'),
	(11, 'zhuangtai_types', '状态', 2, '已回复', NULL, NULL, '2023-04-01 06:23:10'),
	(12, 'news_types', '新闻类型', 1, '新闻类型1', NULL, NULL, '2023-04-01 06:23:10'),
	(13, 'news_types', '新闻类型', 2, '新闻类型2', NULL, NULL, '2023-04-01 06:23:10'),
	(14, 'gonggao_types', '公告类型', 1, '公告类型1', NULL, NULL, '2023-04-01 06:23:10'),
	(15, 'gonggao_types', '公告类型', 2, '公告类型2', NULL, NULL, '2023-04-01 06:23:10'),
	(16, 'forum_types', '帖子类型', 1, '帖子类型1', NULL, NULL, '2023-04-01 06:23:10'),
	(17, 'forum_types', '帖子类型', 2, '帖子类型2', NULL, NULL, '2023-04-01 06:23:10'),
	(18, 'forum_types', '帖子类型', 3, '帖子类型3', NULL, NULL, '2023-04-01 06:23:10'),
	(19, 'forum_state_types', '帖子状态', 1, '发帖', NULL, NULL, '2023-04-01 06:23:10'),
	(20, 'forum_state_types', '帖子状态', 2, '回帖', NULL, NULL, '2023-04-01 06:23:10'),
	(21, 'news_types', '新闻类型', 3, '新闻类型3', NULL, '', '2023-04-01 07:43:11');

DROP TABLE IF EXISTS `forum`;
CREATE TABLE IF NOT EXISTS `forum` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `siji_id` int DEFAULT NULL COMMENT '司机',
  `users_id` int DEFAULT NULL COMMENT '管理员',
  `forum_content` longtext COMMENT '发布内容',
  `super_ids` int DEFAULT NULL COMMENT '父id',
  `forum_types` int DEFAULT NULL COMMENT '帖子类型  Search111 ',
  `forum_state_types` int DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3 COMMENT='论坛';

DELETE FROM `forum`;
INSERT INTO `forum` (`id`, `forum_name`, `yonghu_id`, `siji_id`, `users_id`, `forum_content`, `super_ids`, `forum_types`, `forum_state_types`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, '帖子标题1', 1, NULL, NULL, '发布内容1', 261, 1, 1, '2023-04-01 06:23:18', '2023-04-01 06:23:18', '2023-04-01 06:23:18'),
	(2, '帖子标题2', 1, NULL, NULL, '发布内容2', 473, 1, 1, '2023-04-01 06:23:18', '2023-04-01 06:23:18', '2023-04-01 06:23:18'),
	(3, '帖子标题3', 1, NULL, NULL, '发布内容3', 268, 3, 1, '2023-04-01 06:23:18', '2023-04-01 06:23:18', '2023-04-01 06:23:18'),
	(4, '帖子标题4', 2, NULL, NULL, '发布内容4', 138, 3, 1, '2023-04-01 06:23:18', '2023-04-01 06:23:18', '2023-04-01 06:23:18'),
	(5, '帖子标题5', 1, NULL, NULL, '发布内容5', 35, 3, 1, '2023-04-01 06:23:18', '2023-04-01 06:23:18', '2023-04-01 06:23:18'),
	(6, '帖子标题6', 1, NULL, NULL, '发布内容6', 329, 3, 1, '2023-04-01 06:23:18', '2023-04-01 06:23:18', '2023-04-01 06:23:18'),
	(7, '帖子标题7', 2, NULL, NULL, '发布内容7', 134, 1, 1, '2023-04-01 06:23:18', '2023-04-01 06:23:18', '2023-04-01 06:23:18'),
	(8, '帖子标题8', 1, NULL, NULL, '发布内容8', 381, 3, 1, '2023-04-01 06:23:18', '2023-04-01 06:23:18', '2023-04-01 06:23:18'),
	(9, '帖子标题9', 1, NULL, NULL, '发布内容9', 126, 3, 1, '2023-04-01 06:23:18', '2023-04-01 06:23:18', '2023-04-01 06:23:18'),
	(10, '帖子标题10', 2, NULL, NULL, '发布内容10', 153, 1, 1, '2023-04-01 06:23:18', '2023-04-01 06:23:18', '2023-04-01 06:23:18'),
	(11, '帖子标题11', 2, NULL, NULL, '发布内容11', 266, 3, 1, '2023-04-01 06:23:18', '2023-04-01 06:23:18', '2023-04-01 06:23:18'),
	(12, '帖子标题12', 3, NULL, NULL, '发布内容12', 184, 2, 1, '2023-04-01 06:23:18', '2023-04-01 06:23:18', '2023-04-01 06:23:18'),
	(13, '帖子标题13', 3, NULL, NULL, '发布内容13', 408, 3, 1, '2023-04-01 06:23:18', '2023-04-01 06:23:18', '2023-04-01 06:23:18'),
	(14, '帖子标题14', 2, NULL, NULL, '发布内容14', 5, 1, 1, '2023-04-01 06:23:18', '2023-04-01 06:23:18', '2023-04-01 06:23:18'),
	(15, NULL, 4, NULL, NULL, 'ghhh', 14, NULL, 2, '2023-04-01 07:38:25', NULL, '2023-04-01 07:38:25'),
	(16, NULL, 4, NULL, NULL, 'hhhhh', 14, NULL, 2, '2023-04-01 07:38:36', NULL, '2023-04-01 07:38:36'),
	(17, '帖子111', 4, NULL, NULL, '<p>给第三方孤独颂歌</p>', NULL, 1, 1, '2023-04-01 07:38:46', NULL, '2023-04-01 07:38:46'),
	(18, NULL, NULL, 1, NULL, '呵呵哈哈哈或或', 17, NULL, 2, '2023-04-01 07:42:49', NULL, '2023-04-01 07:42:49'),
	(19, NULL, NULL, NULL, 1, '将基金', 17, NULL, 2, '2023-04-01 07:43:43', NULL, '2023-04-01 07:43:43'),
	(20, NULL, 1, NULL, NULL, '2234455', 17, NULL, 2, '2024-08-12 06:00:33', NULL, '2024-08-12 06:00:33');

DROP TABLE IF EXISTS `gonggao`;
CREATE TABLE IF NOT EXISTS `gonggao` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `gonggao_content` longtext COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='公告';

DELETE FROM `gonggao`;
INSERT INTO `gonggao` (`id`, `gonggao_name`, `gonggao_photo`, `gonggao_types`, `insert_time`, `gonggao_content`, `create_time`) VALUES
	(1, '公告名称1', 'upload/gonggao1.jpg', 2, '2023-04-01 06:23:18', '公告详情1', '2023-04-01 06:23:18'),
	(2, '公告名称2', 'upload/gonggao2.jpg', 2, '2023-04-01 06:23:18', '公告详情2', '2023-04-01 06:23:18'),
	(3, '公告名称3', 'upload/gonggao3.jpg', 1, '2023-04-01 06:23:18', '公告详情3', '2023-04-01 06:23:18'),
	(4, '公告名称4', 'upload/gonggao4.jpg', 2, '2023-04-01 06:23:18', '公告详情4', '2023-04-01 06:23:18'),
	(5, '公告名称5', 'upload/gonggao5.jpg', 1, '2023-04-01 06:23:18', '公告详情5', '2023-04-01 06:23:18'),
	(6, '公告名称6', 'upload/gonggao6.jpg', 2, '2023-04-01 06:23:18', '公告详情6', '2023-04-01 06:23:18'),
	(7, '公告名称7', 'upload/gonggao7.jpg', 2, '2023-04-01 06:23:18', '公告详情7', '2023-04-01 06:23:18'),
	(8, '公告名称8', 'upload/gonggao8.jpg', 1, '2023-04-01 06:23:18', '公告详情8', '2023-04-01 06:23:18'),
	(9, '公告名称9', 'upload/gonggao9.jpg', 1, '2023-04-01 06:23:18', '公告详情9', '2023-04-01 06:23:18'),
	(10, '公告名称10', 'upload/gonggao10.jpg', 1, '2023-04-01 06:23:18', '公告详情10', '2023-04-01 06:23:18'),
	(11, '公告名称11', 'upload/gonggao11.jpg', 1, '2023-04-01 06:23:18', '公告详情11', '2023-04-01 06:23:18'),
	(12, '公告名称12', 'upload/gonggao12.jpg', 2, '2023-04-01 06:23:18', '公告详情12', '2023-04-01 06:23:18'),
	(13, '公告名称13', 'upload/gonggao13.jpg', 2, '2023-04-01 06:23:18', '公告详情13', '2023-04-01 06:23:18'),
	(14, '公告名称14', 'upload/gonggao14.jpg', 2, '2023-04-01 06:23:18', '公告详情14', '2023-04-01 06:23:18');

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `news_name` varchar(200) DEFAULT NULL COMMENT '新闻名称 Search111  ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '新闻图片 ',
  `news_types` int NOT NULL COMMENT '新闻类型 Search111  ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `news_content` longtext COMMENT '新闻详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='新闻信息';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `news_name`, `news_photo`, `news_types`, `insert_time`, `news_content`, `create_time`) VALUES
	(1, '新闻名称1', 'upload/news1.jpg', 1, '2023-04-01 06:23:18', '新闻详情1', '2023-04-01 06:23:18'),
	(2, '新闻名称2', 'upload/news2.jpg', 2, '2023-04-01 06:23:18', '新闻详情2', '2023-04-01 06:23:18'),
	(3, '新闻名称3', 'upload/news3.jpg', 1, '2023-04-01 06:23:18', '新闻详情3', '2023-04-01 06:23:18'),
	(4, '新闻名称4', 'upload/news4.jpg', 1, '2023-04-01 06:23:18', '新闻详情4', '2023-04-01 06:23:18'),
	(5, '新闻名称5', 'upload/news5.jpg', 2, '2023-04-01 06:23:18', '新闻详情5', '2023-04-01 06:23:18'),
	(6, '新闻名称6', 'upload/news6.jpg', 1, '2023-04-01 06:23:18', '新闻详情6', '2023-04-01 06:23:18'),
	(7, '新闻名称7', 'upload/news7.jpg', 2, '2023-04-01 06:23:18', '新闻详情7', '2023-04-01 06:23:18'),
	(8, '新闻名称8', 'upload/news8.jpg', 1, '2023-04-01 06:23:18', '新闻详情8', '2023-04-01 06:23:18'),
	(9, '新闻名称9', 'upload/news9.jpg', 2, '2023-04-01 06:23:18', '新闻详情9', '2023-04-01 06:23:18'),
	(10, '新闻名称10', 'upload/news10.jpg', 1, '2023-04-01 06:23:18', '新闻详情10', '2023-04-01 06:23:18'),
	(11, '新闻名称11', 'upload/news11.jpg', 1, '2023-04-01 06:23:18', '新闻详情11', '2023-04-01 06:23:18'),
	(12, '新闻名称12', 'upload/news12.jpg', 2, '2023-04-01 06:23:18', '新闻详情12', '2023-04-01 06:23:18'),
	(13, '新闻名称13', 'upload/news13.jpg', 1, '2023-04-01 06:23:18', '新闻详情13', '2023-04-01 06:23:18'),
	(14, '新闻名称14', 'upload/news14.jpg', 1, '2023-04-01 06:23:18', '<p>新闻详情14挂号</p>', '2023-04-01 06:23:18');

DROP TABLE IF EXISTS `siji`;
CREATE TABLE IF NOT EXISTS `siji` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `siji_uuid_number` varchar(200) DEFAULT NULL COMMENT '司机编号 Search111 ',
  `siji_name` varchar(200) DEFAULT NULL COMMENT '司机姓名 Search111 ',
  `siji_phone` varchar(200) DEFAULT NULL COMMENT '司机手机号',
  `siji_id_number` varchar(200) DEFAULT NULL COMMENT '司机身份证号',
  `siji_photo` varchar(200) DEFAULT NULL COMMENT '司机头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `siji_email` varchar(200) DEFAULT NULL COMMENT '司机邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='司机';

DELETE FROM `siji`;
INSERT INTO `siji` (`id`, `username`, `password`, `siji_uuid_number`, `siji_name`, `siji_phone`, `siji_id_number`, `siji_photo`, `sex_types`, `siji_email`, `new_money`, `create_time`) VALUES
	(1, '司机1', '123456', '1680330198763', '司机姓名1', '17703786901', '410224199010102001', 'upload/siji1.jpg', 2, '1@qq.com', 33.00, '2023-04-01 06:23:18'),
	(2, '司机2', '123456', '1680330198704', '司机姓名2', '17703786902', '410224199010102002', 'upload/siji2.jpg', 2, '2@qq.com', 1022.12, '2023-04-01 06:23:18'),
	(3, '司机3', '123456', '1680330198710', '司机姓名3', '17703786903', '410224199010102003', 'upload/siji3.jpg', 1, '3@qq.com', 285.01, '2023-04-01 06:23:18');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '老师id',
  `username` varchar(100) NOT NULL COMMENT '老师名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'admin', 'users', '管理员', 'x6lveyw0mr35h94q6yxwui853rqi9099', '2023-04-01 06:41:04', '2024-08-12 06:58:59'),
	(2, 1, 'a1', 'yonghu', '用户', 'dui0g39tzirk1b0egcxi87tnndplbzgj', '2023-04-01 06:44:56', '2024-08-12 07:00:22'),
	(3, 1, 'a1', 'siji', '司机', 'dr89q037nqsknu94w6b4i6qcanbounpq', '2023-04-01 07:00:41', '2024-08-12 07:00:08'),
	(4, 4, 'a5', 'yonghu', '用户', 'p6vpm39goxvrqxsnuwdg9y8tz1ksg8bv', '2023-04-01 07:38:17', '2023-04-01 08:38:18'),
	(5, 2, 'a2', 'siji', '司机', 'lcaobjqzumiij9m602yfi21dgjne1l5d', '2023-04-01 07:42:21', '2023-04-01 08:42:22');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '老师名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='管理员';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2023-04-01 06:23:09');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_uuid_number` varchar(200) DEFAULT NULL COMMENT '用户编号 Search111 ',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_uuid_number`, `yonghu_name`, `yonghu_phone`, `yonghu_id_number`, `yonghu_photo`, `sex_types`, `yonghu_email`, `new_money`, `create_time`) VALUES
	(1, '用户1', '123456', '1680330198718', '用户姓名1', '17703786901', '410224199010102001', 'upload/yonghu1.jpg', 1, '1@qq.com', 45.79, '2023-04-01 06:23:18'),
	(2, '用户2', '123456', '1680330198762', '用户姓名2', '17703786902', '410224199010102002', 'upload/yonghu2.jpg', 2, '2@qq.com', 945.81, '2023-04-01 06:23:18'),
	(3, '用户3', '123456', '1680330198723', '用户姓名3', '17703786903', '410224199010102003', 'upload/yonghu3.jpg', 2, '3@qq.com', 547.01, '2023-04-01 06:23:18'),
	(4, '用户4', '123456', '1680334691728', '张5', '17788889999', '444555666699999999', 'upload/1680334709917.jpg', 2, '5@qq.com', 99867.00, '2023-04-01 07:38:12');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
