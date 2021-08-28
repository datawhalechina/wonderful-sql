/* v 2021.8
SQL脚本的一些要点:
0.存储引擎使用 InnoDB, 字符集改为 utf8mb4 以更好地支持中文.
1.所有表名所使用的英文字母都改为小写(后续章节中,SQL查询中的表名也需要相应修改为小写)
2.所有列名所使用的英文字母确认为小写(后续章节中,SQL查询中的列名也需要相应修改为小写)
3.存在问题的数据, 例如 inventoryproduct 表的inventory_id列应为P开头的, 已修正为正确的数据.
4.需测试SQL脚本在命令行及各个客户端中是否能被正确执行.
  * MySQL Workbench 已测试通过
  * DBeaver 已测试通过(使用"执行SQL脚本(CTR+x)")
  * HeidiSQL 已测试通过
  * navicat 已测试通过
  * sqlyog 已测试通过
  * 命令行 测试未通过. 插入中文数据时提示" Data too long for column 'product_name' at row 1"
*/
CREATE DATABASE /*!32312 IF NOT EXISTS*/`shop` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `shop`;

/*Table structure for table `chars` */

DROP TABLE IF EXISTS `chars`;

CREATE TABLE `chars` (
  `chr` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`chr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `chars` */

insert  into `chars`(`chr`) values ('1'),('10'),('11'),('2'),('222'),('3');

/*Table structure for table `empskills` */

DROP TABLE IF EXISTS `empskills`;

CREATE TABLE `empskills` (
  `emp` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `skill` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`emp`,`skill`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `empskills` */

insert  into `empskills`(`emp`,`skill`) values ('平井','C++'),('平井','Oracle'),('平井','Perl'),('平井','PHP'),('平井','UNIX'),('渡来','Oracle'),('相田','C#'),('相田','Java'),('相田','Oracle'),('相田','UNIX'),('神崎','Java'),('神崎','Oracle'),('神崎','UNIX'),('若田部','Perl');

/*Table structure for table `inventoryproduct` */

DROP TABLE IF EXISTS `inventoryproduct`;

CREATE TABLE `inventoryproduct` (
  `inventory_id` char(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `product_id` char(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `inventory_quantity` int NOT NULL,
  PRIMARY KEY (`inventory_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `inventoryproduct` */

insert  into `inventoryproduct`(`inventory_id`,`product_id`,`inventory_quantity`) values ('P001','0001',0),('P001','0002',120),('P001','0003',200),('P001','0004',3),('P001','0005',0),('P001','0006',99),('P001','0007',999),('P001','0008',200),('P002','0001',10),('P002','0002',25),('P002','0003',34),('P002','0004',19),('P002','0005',99),('P002','0006',0),('P002','0007',0),('P002','0008',18);

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `product_id` char(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `product_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `product_type` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `sale_price` int DEFAULT NULL,
  `purchase_price` int DEFAULT NULL,
  `regist_date` date DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `product` */

insert  into `product`(`product_id`,`product_name`,`product_type`,`sale_price`,`purchase_price`,`regist_date`) values ('0001','T恤','衣服',1000,500,'2009-09-20'),('0002','打孔器','办公用品',500,320,'2009-09-11'),('0003','运动T恤','衣服',4000,2800,NULL),('0004','菜刀','厨房用具',3000,2800,'2009-09-20'),('0005','高压锅','厨房用具',6800,5000,'2009-01-15'),('0006','叉子','厨房用具',500,NULL,'2009-09-20'),('0007','擦菜板','厨房用具',880,790,'2008-04-28'),('0008','圆珠笔','办公用品',100,NULL,'2009-11-11');

/*Table structure for table `product2` */

DROP TABLE IF EXISTS `product2`;

CREATE TABLE `product2` (
  `product_id` char(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `product_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `product_type` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `sale_price` int DEFAULT NULL,
  `purchase_price` int DEFAULT NULL,
  `regist_date` date DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `product2` */

insert  into `product2`(`product_id`,`product_name`,`product_type`,`sale_price`,`purchase_price`,`regist_date`) values ('0001','T恤','衣服',1000,500,'2009-09-20'),('0002','打孔器','办公用品',500,320,'2009-09-11'),('0003','运动T恤','衣服',4000,2800,NULL),('0009','手套','衣服',800,500,NULL),('0010','水壶','厨房用具',2000,1700,'2009-09-20');

/*Table structure for table `productcopy` */

DROP TABLE IF EXISTS `productcopy`;

CREATE TABLE `productcopy` (
  `product_id` char(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `product_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `product_type` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `sale_price` int DEFAULT NULL,
  `purchase_price` int DEFAULT NULL,
  `regist_date` date DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `productcopy` */

/*Table structure for table `productins` */

DROP TABLE IF EXISTS `productins`;

CREATE TABLE `productins` (
  `product_id` char(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `product_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `product_type` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `sale_price` int DEFAULT '0',
  `purchase_date` int DEFAULT NULL,
  `regist_date` date DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `productins` */

/*Table structure for table `producttype` */

DROP TABLE IF EXISTS `producttype`;

CREATE TABLE `producttype` (
  `product_type` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `sum_sale_price` int DEFAULT NULL,
  `sum_purchase_price` int DEFAULT NULL,
  PRIMARY KEY (`product_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `producttype` */

/*Table structure for table `samplelike` */

DROP TABLE IF EXISTS `samplelike`;

CREATE TABLE `samplelike` (
  `strcol` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`strcol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `samplelike` */

insert  into `samplelike`(`strcol`) values ('abcdd'),('abcddd'),('abddc'),('abdddc'),('ddabc'),('dddabc');

/*Table structure for table `samplemath` */

DROP TABLE IF EXISTS `samplemath`;

CREATE TABLE `samplemath` (
  `m` decimal(10,3) DEFAULT NULL,
  `n` int DEFAULT NULL,
  `p` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `samplemath` */

insert  into `samplemath`(`m`,`n`,`p`) values ('500.000',0,NULL),('-180.000',0,NULL),(NULL,NULL,NULL),(NULL,7,3),(NULL,5,2),(NULL,4,NULL),('8.000',NULL,3),('2.270',1,NULL),('5.555',2,NULL),(NULL,1,NULL),('8.760',NULL,NULL);

/*Table structure for table `samplestr` */

DROP TABLE IF EXISTS `samplestr`;

CREATE TABLE `samplestr` (
  `str1` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `str2` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `str3` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `samplestr` */

insert  into `samplestr`(`str1`,`str2`,`str3`) values ('opx','rt',NULL),('abc','def',NULL),('山田','太郎','是我'),('aaa',NULL,NULL),(NULL,'xyz',NULL),('@!#$%',NULL,NULL),('ABC',NULL,NULL),('aBC',NULL,NULL),('abc太郎','abc','ABC'),('abcdefabc','abc','ABC'),('micmic','i','I');

/*Table structure for table `shopproduct` */

DROP TABLE IF EXISTS `shopproduct`;

CREATE TABLE `shopproduct` (
  `shop_id` char(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `shop_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `product_id` char(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`shop_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `shopproduct` */

insert  into `shopproduct`(`shop_id`,`shop_name`,`product_id`,`quantity`) values ('000A','东京','0001',30),('000A','东京','0002',50),('000A','东京','0003',15),('000B','名古屋','0002',30),('000B','名古屋','0003',120),('000B','名古屋','0004',20),('000B','名古屋','0006',10),('000B','名古屋','0007',40),('000C','大阪','0003',20),('000C','大阪','0004',50),('000C','大阪','0006',90),('000C','大阪','0007',70),('000D','福冈','0001',100);

/*Table structure for table `skills` */

DROP TABLE IF EXISTS `skills`;

CREATE TABLE `skills` (
  `skill` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`skill`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `skills` */

insert  into `skills`(`skill`) values ('Java'),('Oracle'),('UNIX');
