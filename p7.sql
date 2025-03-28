SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_admin`
-- ----------------------------
DROP TABLE IF EXISTS `t_admin`;
CREATE TABLE `t_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_admin
-- ----------------------------
INSERT INTO `t_admin` VALUES ('1', 'admin', '123456');
INSERT INTO `t_admin` VALUES ('2', 'seller', '123456');

-- ----------------------------
-- Table structure for `t_flow`
-- ----------------------------
DROP TABLE IF EXISTS `t_flow`;
CREATE TABLE `t_flow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ghsId` int(11) DEFAULT NULL COMMENT '供货商',
  `xsId` int(11) DEFAULT NULL COMMENT '销售',
  `ypId` int(11) DEFAULT NULL COMMENT '药品',
  `yyId` int(11) DEFAULT NULL COMMENT '医院',
  `sl` int(11) DEFAULT NULL COMMENT '数量',
  `insertDate` datetime DEFAULT NULL,
  `hkType` varchar(100) DEFAULT NULL COMMENT '回款类型',
  `isHk` varchar(100) DEFAULT NULL COMMENT '是否回款',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='药品进出流向';

-- ----------------------------
-- Records of t_flow
-- ----------------------------
INSERT INTO `t_flow` VALUES ('1', '1', '1', '1', '1', '12', '2023-06-09 13:46:20', null, '1');
INSERT INTO `t_flow` VALUES ('2', '5', '3', '3', '3', '12', '2023-12-09 16:08:31', null, '1');

-- ----------------------------
-- Table structure for `t_ghs`
-- ----------------------------
DROP TABLE IF EXISTS `t_ghs`;
CREATE TABLE `t_ghs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL COMMENT '名称',
  `gg` varchar(100) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='供货商';

-- ----------------------------
-- Records of t_ghs
-- ----------------------------
INSERT INTO `t_ghs` VALUES ('1', '北京化工大学制药有限公司', '北京化工大学制药有限公司');
INSERT INTO `t_ghs` VALUES ('3', '北大医药股份有限公司', '北大医药股份有限公司');
INSERT INTO `t_ghs` VALUES ('4', '天津市药业有限公司', '天津市药业有限公司');
INSERT INTO `t_ghs` VALUES ('5', '江西药业有限责任公司', '江西药业有限责任公司');
INSERT INTO `t_ghs` VALUES ('6', '上海药业股份有限公司', '上海药业股份有限公司');
INSERT INTO `t_ghs` VALUES ('7', '重庆药业股份有限公司', '重庆药业股份有限公司');
INSERT INTO `t_ghs` VALUES ('8', '黄山制药有限公司', '黄山制药有限公司');

-- ----------------------------
-- Table structure for `t_xs`
-- ----------------------------
DROP TABLE IF EXISTS `t_xs`;
CREATE TABLE `t_xs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL COMMENT '姓名',
  `age` varchar(100) DEFAULT NULL COMMENT '年龄',
  `phone` varchar(100) DEFAULT NULL COMMENT '电话',
  `card` varchar(100) DEFAULT NULL COMMENT '身份证',
  `address` varchar(100) DEFAULT NULL COMMENT '住址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='销售';

-- ----------------------------
-- Records of t_xs
-- ----------------------------
INSERT INTO `t_xs` VALUES ('1', '张三', '12', '13811111111', '3292242341234', '上海');
INSERT INTO `t_xs` VALUES ('2', '李四', '55', '1382222222', '1231231233', '广东');
INSERT INTO `t_xs` VALUES ('3', '王五', '67', '13911111111', '34234234234', '北京');
INSERT INTO `t_xs` VALUES ('4', '赵六', '54', '13111111111', '234234112341234', '河南');
INSERT INTO `t_xs` VALUES ('5', '祁八', '22', '13912222222', '234324234234', '是的发送到发送到发');

-- ----------------------------
-- Table structure for `t_yp`
-- ----------------------------
DROP TABLE IF EXISTS `t_yp`;
CREATE TABLE `t_yp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL COMMENT '名称',
  `gg` varchar(100) DEFAULT NULL COMMENT '规格',
  `dw` varchar(100) DEFAULT NULL COMMENT '单位',
  `money` int(11) DEFAULT NULL COMMENT '价格',
  `kc` int(11) DEFAULT NULL COMMENT '库存',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='药品';

-- ----------------------------
-- Records of t_yp
-- ----------------------------
INSERT INTO `t_yp` VALUES ('1', '双氯芬酸钾胶囊', '25mg*20粒', '盒', '400', '1000');
INSERT INTO `t_yp` VALUES ('2', '富马酸亚铁胶囊', '0.2g*60粒', '盒', '60', '20000');
INSERT INTO `t_yp` VALUES ('3', '头孢克洛缓释片', '0.375g*6片', '盒', '10970', '2222');
INSERT INTO `t_yp` VALUES ('4', '头孢克洛缓释片', '0.375g*6片*2板', '盒', '400', '10000');
INSERT INTO `t_yp` VALUES ('5', '头孢克洛缓释片', '0.375g*6片*2板', '盒', '1400', '50000');
INSERT INTO `t_yp` VALUES ('6', '消炎片', '0.375g*144片', '盒', '400', '2000');
INSERT INTO `t_yp` VALUES ('7', '消炎胶囊', '0.5g*72粒', '盒', '605', '10000');
INSERT INTO `t_yp` VALUES ('8', '盐酸环丙沙星片', '0.25g*12片', '盒', '70', '1000');
INSERT INTO `t_yp` VALUES ('9', '盐酸雷尼替丁胶囊', '150mg*30粒', '盒', '50', '1400001');

-- ----------------------------
-- Table structure for `t_yy`
-- ----------------------------
DROP TABLE IF EXISTS `t_yy`;
CREATE TABLE `t_yy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL COMMENT '名称',
  `address` varchar(100) DEFAULT NULL COMMENT '地址',
  `yyType` varchar(100) DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='客户';

-- ----------------------------
-- Records of t_yy
-- ----------------------------
INSERT INTO `t_yy` VALUES ('1', '青岛医院', '青岛医院', '二三级');
INSERT INTO `t_yy` VALUES ('2', '济南医院', '济南医院', '基层');
INSERT INTO `t_yy` VALUES ('3', '郑州卫生院', '郑州卫生院', '二三级');
INSERT INTO `t_yy` VALUES ('4', '华安中心卫生院', '华安中心卫生院', '二三级');
INSERT INTO `t_yy` VALUES ('5', '北京市医院', '北京市医院', '二三级');
INSERT INTO `t_yy` VALUES ('6', '北京化工大学校医院', '北京化工大学校医院', '基层');
INSERT INTO `t_yy` VALUES ('7', '上海医院', '上海医院', '二三级');
INSERT INTO `t_yy` VALUES ('8', '天津市医院', '天津市医院', '二三级');
INSERT INTO `t_yy` VALUES ('9', '123', '123', '基层');
