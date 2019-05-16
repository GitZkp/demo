/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50725
 Source Host           : localhost:3306
 Source Schema         : x_springboot

 Target Server Type    : MySQL
 Target Server Version : 50725
 File Encoding         : 65001

 Date: 15/05/2019 12:40:20
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for exception
-- ----------------------------
DROP TABLE IF EXISTS `exception`;
CREATE TABLE `exception`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `uid` int(11) NULL DEFAULT NULL COMMENT '用户id',
  `uname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '请求路径',
  `param` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '请求参数',
  `exception` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '异常消息',
  `create_at` datetime(6) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of exception
-- ----------------------------
INSERT INTO `exception` VALUES (1, NULL, 'admin', '/sys/login', '{password=admin, captcha=c5dgm, username=admin}', '验证码已失效', '2019-05-14 10:25:08.695000');
INSERT INTO `exception` VALUES (2, NULL, 'admin', '/sys/login', '{password=admin, captcha=c5dgm, username=admin}', '验证码已失效', '2019-05-14 10:26:49.955000');
INSERT INTO `exception` VALUES (3, NULL, 'admin', '/sys/login', '{password=admin, captcha=y7x3p, username=admin}', '验证码已失效', '2019-05-14 10:34:26.220000');
INSERT INTO `exception` VALUES (4, NULL, 'admin', '/sys/login', '{password=admin, captcha=8bpg2, username=admin}', '验证码已失效', '2019-05-14 10:57:03.051000');
INSERT INTO `exception` VALUES (5, NULL, 'admin', '/sys/login', '{password=admin, captcha=c5dgm, username=admin}', '验证码已失效', '2019-05-14 14:28:01.645000');
INSERT INTO `exception` VALUES (6, NULL, 'admin', '/sys/login', '{password=1, captcha=c5dgm, username=admin}', '验证码已失效', '2019-05-14 14:28:21.862000');
INSERT INTO `exception` VALUES (7, NULL, 'admin', '/sys/login', '{password=1, captcha=c5dgm, username=admin}', '验证码已失效', '2019-05-14 14:33:46.746000');

-- ----------------------------
-- Table structure for friendlinks
-- ----------------------------
DROP TABLE IF EXISTS `friendlinks`;
CREATE TABLE `friendlinks`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '图标',
  `link_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '名称',
  `link_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '网址',
  `sort` int(4) NOT NULL COMMENT '排序',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '备注',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '友链' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for home_menus
-- ----------------------------
DROP TABLE IF EXISTS `home_menus`;
CREATE TABLE `home_menus`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` int(4) NOT NULL COMMENT '父id',
  `menu_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '菜单名',
  `menu_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '菜单url',
  `menu_other_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '菜单关联url',
  `menu_type` tinyint(4) NOT NULL COMMENT '菜单类型 0:用户中心 1：商家中心',
  `is_show` tinyint(4) NOT NULL COMMENT '显示 0:显示 1：不显示',
  `sort` int(4) NOT NULL COMMENT '排序',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '备注',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '菜单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for merchant
-- ----------------------------
DROP TABLE IF EXISTS `merchant`;
CREATE TABLE `merchant`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `mr_sn` int(10) UNSIGNED NOT NULL COMMENT '店铺编号',
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '机构法人',
  `org_id` bigint(20) NULL DEFAULT NULL COMMENT '机构编号',
  `org_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '机构名',
  `area_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '区域路径',
  `area_id` int(11) NOT NULL COMMENT '区域编号',
  `is_self` tinyint(4) NOT NULL COMMENT '是否自营',
  `mr_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '店铺名称',
  `mr_keeper` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '店主',
  `mr_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '店铺图标',
  `mr_tel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '店铺地址',
  `mr_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '店铺电话',
  `mr_money` decimal(11, 2) NOT NULL DEFAULT 0.00 COMMENT '店铺钱包',
  `bank` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '银行',
  `bank_keeper` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '持卡人',
  `bank_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '银行卡开卡行',
  `bank_area` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '开卡地区',
  `mr_status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '-2:已停止 -1:拒绝 0：未审核 1:已审核',
  `status_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '状态描述',
  `brand` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '商标',
  `keywords` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '关键字',
  `tags` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '标签',
  `pic` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '宣传海报',
  `category_id` bigint(20) NOT NULL COMMENT '分类编号',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `delete_flag` tinyint(4) NULL DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_data_user_id_unique`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for money_log
-- ----------------------------
DROP TABLE IF EXISTS `money_log`;
CREATE TABLE `money_log`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `target_type` tinyint(4) NOT NULL COMMENT '用户类型 0：商品 1：商家',
  `target_id` int(11) NOT NULL COMMENT '对象id',
  `data_id` int(11) NOT NULL COMMENT '订单id 和结算单id 提现单id',
  `data_type` tinyint(4) NOT NULL COMMENT '流水来源 1:交易订单 2:订单结算 3:提现申请',
  `money_type` tinyint(4) NOT NULL COMMENT '流水标志 1：收入 0：支出',
  `money` decimal(11, 2) NULL DEFAULT 0.00 COMMENT '金额',
  `tarde_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '外部流水号',
  `pay_type` tinyint(4) NOT NULL COMMENT '支付方式： 0：平台 1：支付包 2 微信',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '备注',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '资金流水表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for mr_accreds
-- ----------------------------
DROP TABLE IF EXISTS `mr_accreds`;
CREATE TABLE `mr_accreds`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `acc_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '认证项目名',
  `acc_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '认证图片',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `delete_flag` tinyint(4) NOT NULL COMMENT '删除标记',
  `acc_type` tinyint(4) NULL DEFAULT NULL COMMENT '认证归属（0：商品 1：商铺 2：课程 3：服务）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for mr_cash_config
-- ----------------------------
DROP TABLE IF EXISTS `mr_cash_config`;
CREATE TABLE `mr_cash_config`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `target_type` tinyint(4) NOT NULL COMMENT '提现对象 0：用户 1：商家',
  `target_id` int(11) NOT NULL COMMENT '对象id',
  `acc_type` tinyint(4) NOT NULL COMMENT '提现类型 1：银行卡 2：微信 3：支付宝',
  `bank_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '银行卡号',
  `acc_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '持卡人',
  `bank_area` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '开卡地区',
  `bank_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '开卡行',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `delete_flag` tinyint(4) NULL DEFAULT NULL COMMENT '删除标记',
  `is_default` tinyint(4) UNSIGNED ZEROFILL NOT NULL DEFAULT 0000 COMMENT '默认  0：默认，1：备选',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '提现配置' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for mr_cash_record
-- ----------------------------
DROP TABLE IF EXISTS `mr_cash_record`;
CREATE TABLE `mr_cash_record`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `target_type` tinyint(4) NOT NULL COMMENT '提现对象 0：用户 1：商家',
  `target_id` int(11) NOT NULL COMMENT '对象id',
  `cash_money` decimal(11, 2) NOT NULL DEFAULT 0.00 COMMENT '提现金额',
  `acc_type` tinyint(4) NOT NULL COMMENT '提现类型 1：银行卡 2：微信 3：支付宝',
  `bank_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '银行卡号',
  `acc_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '持卡人',
  `bank_area` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '开卡地区',
  `bank_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '开卡行',
  `cash_status` tinyint(4) NOT NULL COMMENT '提现状态 -1:提现失败 0:待处理 1:提现成功',
  `cash_remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '提现备注',
  `cash_config_id` int(11) NOT NULL COMMENT '提现设置对应的id',
  `cash_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '提现单号',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '提现记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_no` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '订单编号',
  `order_sn` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '交易号',
  `member_id` int(11) NOT NULL COMMENT '客户编号',
  `supplier_id` int(11) NOT NULL COMMENT '商户编码',
  `supplier_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '商户名称',
  `order_status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '订单状态 0未付款,1已付款,2已发货,3已签收,-1退货申请,-2退货中,-3已退货,-4取消交易',
  `after_status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '用户售后状态 0 未发起售后 1 申请售后 -1 售后已取消 2 处理中 200 处理完毕',
  `product_count` int(11) NOT NULL DEFAULT 0 COMMENT '商品数量',
  `product_amount_total` decimal(12, 4) NOT NULL COMMENT '商品总价',
  `order_amount_total` decimal(12, 4) NOT NULL DEFAULT 0.0000 COMMENT '实际付款金额',
  `logistics_fee` decimal(12, 4) NOT NULL COMMENT '运费金额',
  `address_id` int(11) NOT NULL COMMENT '收货地址编码',
  `pay_channel` tinyint(4) NOT NULL DEFAULT 0 COMMENT '支付渠道 0余额 1微信 2支付宝',
  `out_trade_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '订单支付单号',
  `escrow_trade_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '第三方支付流水号',
  `pay_time` int(11) NOT NULL DEFAULT 0 COMMENT '付款时间',
  `delivery_time` int(11) NOT NULL DEFAULT 0 COMMENT '发货时间',
  `order_settlement_status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '订单结算状态 0未结算 1已结算',
  `order_settlement_time` int(11) NOT NULL DEFAULT 0 COMMENT '订单结算时间',
  `is_package` enum('0','1') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '是否是套餐',
  `is_integral` enum('0','1') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '是否是积分产品',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `order_order_sn_unique`(`order_sn`) USING BTREE,
  INDEX `order_order_sn_member_id_order_status_out_trade_no_index`(`order_sn`, `member_id`, `order_status`, `out_trade_no`(191)) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for order_appraise
-- ----------------------------
DROP TABLE IF EXISTS `order_appraise`;
CREATE TABLE `order_appraise`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL COMMENT '商品编码',
  `info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '评论内容',
  `level` enum('-1','0','1') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '级别 -1差评 0中评 1好评',
  `desc_star` tinyint(4) NOT NULL COMMENT '描述相符 1-5',
  `express_star` tinyint(4) NOT NULL COMMENT '物流服务 1-5',
  `attitude_star` tinyint(4) NOT NULL COMMENT '服务态度 1-5',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `pic` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '图片',
  `like` int(11) NULL DEFAULT NULL COMMENT '点赞',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `order_appraise_order_id_index`(`product_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for order_appraise_replay
-- ----------------------------
DROP TABLE IF EXISTS `order_appraise_replay`;
CREATE TABLE `order_appraise_replay`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL COMMENT '用户编码',
  `product_id` bigint(20) NOT NULL COMMENT '商品编码',
  `appraise_id` bigint(20) NOT NULL COMMENT '评论贴编码',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '内容',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `like` int(10) NULL DEFAULT NULL COMMENT '点赞',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_data_user_id_unique`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for order_detail
-- ----------------------------
DROP TABLE IF EXISTS `order_detail`;
CREATE TABLE `order_detail`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL COMMENT '订单编码',
  `product_id` int(11) NOT NULL COMMENT '商品编码',
  `product_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '商品名称',
  `product_price` decimal(12, 4) NOT NULL COMMENT '商品价格',
  `product_sku` int(11) NOT NULL COMMENT '商品SKU',
  `product_picture_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `product_mode_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '商品型号信息',
  `product_mode_params` int(11) NULL DEFAULT NULL COMMENT '商品型号参数',
  `discount_rate` tinyint(4) NOT NULL DEFAULT 0 COMMENT '折扣比例',
  `discount_amount` decimal(12, 4) NOT NULL DEFAULT 0.0000 COMMENT '折扣总额',
  `number` int(11) NOT NULL DEFAULT 1 COMMENT '购买数量',
  `subtotal` decimal(12, 4) NOT NULL COMMENT '小计金额',
  `is_product_exists` enum('0','1') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '商品是否有效 1失效',
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '客户商品备注',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `order_detail_order_id_index`(`order_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for order_express
-- ----------------------------
DROP TABLE IF EXISTS `order_express`;
CREATE TABLE `order_express`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL COMMENT '订单编码',
  `express_no` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '发货快递单号',
  `realname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '收货人姓名',
  `telphone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '联系电话',
  `telphone2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '备用联系电话',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '收货地址',
  `zip` int(11) NOT NULL COMMENT '邮政编码',
  `express_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '物流方式',
  `express_fee` decimal(12, 2) NOT NULL DEFAULT 0.00 COMMENT '物流发货运费',
  `order_express_status` int(11) NOT NULL DEFAULT 0 COMMENT '物流状态',
  `express_settlement_status` int(11) NOT NULL DEFAULT 0 COMMENT '物流结算状态',
  `express_result_last` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '物流最后状态描述',
  `express_result` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '物流描述',
  `express_create_time` int(11) NOT NULL DEFAULT 0 COMMENT '发货时间',
  `express_update_time` int(11) NOT NULL DEFAULT 0 COMMENT '物流更新时间',
  `express_settlement_time` int(11) NOT NULL DEFAULT 0 COMMENT '物流结算时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for order_returns
-- ----------------------------
DROP TABLE IF EXISTS `order_returns`;
CREATE TABLE `order_returns`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `returns_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '退货编号 供客户查询',
  `order_id` int(11) NOT NULL COMMENT '订单编号',
  `express_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '物流单号',
  `realname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '收货人姓名',
  `telphone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '联系电话',
  `telphone2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '备用联系电话',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '收货地址',
  `zip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '邮政编码',
  `express_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '物流方式',
  `express_fee` decimal(12, 2) NOT NULL COMMENT '物流发货运费',
  `order_express_status` int(11) NULL DEFAULT NULL COMMENT '物流状态',
  `express_settlement_status` int(11) NULL DEFAULT NULL COMMENT '物流结算状态',
  `express_result_last` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '物流最后状态描述',
  `express_result` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '物流描述',
  `express_create_time` int(11) NULL DEFAULT NULL COMMENT '发货时间',
  `express_update_time` int(11) NULL DEFAULT NULL COMMENT '物流更新时间',
  `express_settlement_time` int(11) NULL DEFAULT NULL COMMENT '物流结算时间',
  `returns_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0全部退单 1部分退单',
  `handling_way` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'PUPAWAY:退货入库;REDELIVERY:重新发货;RECLAIM-REDELIVERY:不要求归还并重新发货; REFUND:退款; COMPENSATION:不退货并赔偿',
  `returns_amount` decimal(8, 2) NOT NULL COMMENT '退款金额',
  `return_submit_time` int(11) NOT NULL COMMENT '退货申请时间',
  `handling_time` int(11) NOT NULL COMMENT '退货处理时间',
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '退货原因',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for order_returns_apply
-- ----------------------------
DROP TABLE IF EXISTS `order_returns_apply`;
CREATE TABLE `order_returns_apply`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '订单单号',
  `order_detail_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '子订单编码',
  `return_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '售后单号',
  `member_id` int(11) NOT NULL COMMENT '用户编码',
  `state` tinyint(4) NOT NULL COMMENT '类型 0 仅退款 1退货退款',
  `product_status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '货物状态 0:已收到货 1:未收到货',
  `why` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '退换货原因',
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '审核状态 -1 拒绝 0 未审核 1审核通过',
  `audit_time` int(11) NOT NULL DEFAULT 0 COMMENT '审核时间',
  `audit_why` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '审核原因',
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '备注',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for package
-- ----------------------------
DROP TABLE IF EXISTS `package`;
CREATE TABLE `package`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `package_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '套餐名',
  `package_album` int(11) NULL DEFAULT NULL COMMENT '套餐专辑',
  `package_type` int(4) NULL DEFAULT NULL COMMENT '类型 0：商品 1：店铺 2：课程 3:服务',
  `mr_id` int(11) NOT NULL COMMENT '店铺id',
  `pre` int(11) NULL DEFAULT NULL COMMENT '每人限购',
  `category_id` int(11) NOT NULL COMMENT '商品分类编号',
  `mer_id` int(11) NOT NULL COMMENT '商家编号',
  `freight_id` int(11) NULL DEFAULT NULL,
  `type_id` tinyint(4) NOT NULL COMMENT '类型编号',
  `sketch` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '简述',
  `intro` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '商品描述',
  `keywords` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '商品关键字',
  `tags` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '标签',
  `marque` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '商品型号',
  `barcode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '仓库条码',
  `brand_id` int(11) NOT NULL COMMENT '品牌编号',
  `virtual` int(11) NOT NULL DEFAULT 0 COMMENT '虚拟购买量',
  `price` decimal(8, 2) NOT NULL COMMENT '商品价格',
  `market_price` decimal(8, 2) NOT NULL COMMENT '市场价格',
  `integral` int(11) NOT NULL DEFAULT 0 COMMENT '可使用积分抵消',
  `stock` int(11) NOT NULL COMMENT '库存量',
  `warning_stock` int(11) NOT NULL COMMENT '库存警告',
  `picture_url` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '封面图',
  `posters` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` tinyint(4) NOT NULL COMMENT '状态 -1=>下架,1=>上架,2=>预售,0=>未上架',
  `state` tinyint(4) NOT NULL DEFAULT 0 COMMENT '审核状态 -1 审核失败 0 未审核 1 审核成功',
  `is_integral` enum('0','1') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '是否是积分产品',
  `sort` int(11) NOT NULL DEFAULT 99 COMMENT '排序',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `is_allow_exchage` tinyint(4) NULL DEFAULT NULL COMMENT '是否允许退换（0：允许，1：不允许）',
  `like` int(11) NULL DEFAULT NULL COMMENT '收藏量',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '套餐' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for package_product
-- ----------------------------
DROP TABLE IF EXISTS `package_product`;
CREATE TABLE `package_product`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `package_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '套餐名',
  `package_id` int(11) NOT NULL COMMENT '套餐id',
  `product_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '商品名',
  `product_id` int(11) NOT NULL COMMENT '商品id',
  `gift` int(11) NOT NULL COMMENT '是否是赠品（0：是，1：不是）',
  `sort` int(11) NOT NULL DEFAULT 99 COMMENT '排序',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '套餐商品中间表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '商品标题',
  `category_id` int(11) NOT NULL COMMENT '商品分类编号',
  `mer_id` int(11) NOT NULL COMMENT '商家编号',
  `freight_id` int(11) NULL DEFAULT NULL COMMENT '运输',
  `type_id` tinyint(4) NOT NULL COMMENT '类型编号 0 课程 1实物 2 服务 3 试题',
  `sketch` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '简述',
  `intro` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '商品描述',
  `keywords` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '商品关键字',
  `tags` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '标签',
  `marque` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '商品型号',
  `barcode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '仓库条码',
  `brand_id` int(11) NOT NULL COMMENT '品牌编号',
  `virtual` int(11) NOT NULL DEFAULT 0 COMMENT '虚拟购买量',
  `price` decimal(8, 2) NOT NULL COMMENT '商品价格',
  `market_price` decimal(8, 2) NOT NULL COMMENT '实际价格',
  `integral` int(11) NOT NULL DEFAULT 0 COMMENT '可使用积分抵消',
  `stock` int(11) NOT NULL COMMENT '库存量',
  `warning_stock` int(11) NOT NULL COMMENT '库存警告',
  `picture_url` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '封面图',
  `video_url` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '视频链接',
  `posters` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '海报',
  `status` tinyint(4) NOT NULL COMMENT '状态 -1=>下架,1=>上架,2=>预售,0=>未上架',
  `state` tinyint(4) NOT NULL DEFAULT 0 COMMENT '审核状态 -1 审核失败 0 未审核 1 审核成功',
  `is_package` enum('0','1') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '是否是套餐',
  `is_integral` enum('0','1') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '是否是积分产品',
  `areaId` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '归属城市 同城匹配',
  `express_free` tinyint(4) NULL DEFAULT NULL COMMENT '是否包邮 0包邮 1不包邮',
  `sort` int(11) NOT NULL DEFAULT 99 COMMENT '排序',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `allow_exchange` tinyint(4) NULL DEFAULT NULL COMMENT '是否允许退换货',
  `like` int(11) NULL DEFAULT NULL COMMENT '收藏数',
  `pre` int(11) NULL DEFAULT NULL COMMENT '每人限购',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for product_album
-- ----------------------------
DROP TABLE IF EXISTS `product_album`;
CREATE TABLE `product_album`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL COMMENT '商品编号',
  `name` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '商品名称',
  `url` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '图片地址',
  `size` int(11) NULL DEFAULT NULL COMMENT '视频大小',
  `intro` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '图片介绍',
  `sort` int(11) NOT NULL DEFAULT 999 COMMENT '排序',
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '图片状态',
  `state` tinyint(4) NOT NULL DEFAULT 0 COMMENT '资源类型 0=>图片 1=>视频',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 60 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for product_attribute
-- ----------------------------
DROP TABLE IF EXISTS `product_attribute`;
CREATE TABLE `product_attribute`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL COMMENT '商品类别编号',
  `name` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '属性名称',
  `sort` int(11) NOT NULL DEFAULT 999 COMMENT '排列次序',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `product_attribute_category_id_name_index`(`category_id`, `name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for product_attribute_value
-- ----------------------------
DROP TABLE IF EXISTS `product_attribute_value`;
CREATE TABLE `product_attribute_value`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '属性值名称',
  `attr_id` int(11) NOT NULL COMMENT '属性id',
  `sort` int(11) NOT NULL DEFAULT 999 COMMENT '排序',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `product_attribute_option_name_attr_id_index`(`name`, `attr_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for product_brand
-- ----------------------------
DROP TABLE IF EXISTS `product_brand`;
CREATE TABLE `product_brand`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '类目对应多个品牌，品牌应对应多个类目并非关联多个类目',
  `product_category_id` int(11) NOT NULL COMMENT '商品类别编号',
  `name` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '品牌名称',
  `image_url` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '图片url',
  `sort` int(11) NOT NULL DEFAULT 999 COMMENT '排列次序',
  `status` tinyint(4) NOT NULL COMMENT '状态',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `product_brand_name_unique`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for product_cart
-- ----------------------------
DROP TABLE IF EXISTS `product_cart`;
CREATE TABLE `product_cart`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户编码',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `product_cart_user_id_unique`(`user_id`) USING BTREE,
  INDEX `product_cart_user_id_index`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for product_cart_item
-- ----------------------------
DROP TABLE IF EXISTS `product_cart_item`;
CREATE TABLE `product_cart_item`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `cart_id` int(11) NOT NULL COMMENT '购物车编码',
  `product_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '商品sku信息',
  `product_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '商品快照',
  `product_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '商品名称',
  `price` decimal(8, 2) NOT NULL DEFAULT 0.00 COMMENT '价格',
  `product_id` int(11) NOT NULL COMMENT '商品编码',
  `supplier_id` int(11) NOT NULL COMMENT '店铺编码',
  `sku_id` int(11) NOT NULL COMMENT '商品sku编码',
  `number` int(11) NOT NULL DEFAULT 1 COMMENT '商品数量',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `product_cart_item_cart_id_product_id_supplier_id_index`(`cart_id`, `product_id`, `supplier_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for product_category
-- ----------------------------
DROP TABLE IF EXISTS `product_category`;
CREATE TABLE `product_category`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '分类表',
  `pid` int(11) NOT NULL COMMENT '父分类编号',
  `cover` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '封面图',
  `index_block_status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '首页块级状态 1=>显示',
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '状态 1=>正常',
  `sort` int(11) NOT NULL DEFAULT 999 COMMENT '排序',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for product_sku
-- ----------------------------
DROP TABLE IF EXISTS `product_sku`;
CREATE TABLE `product_sku`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL COMMENT '商品编码',
  `name` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'sku名称',
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '主图',
  `price` decimal(8, 2) NOT NULL COMMENT '价格',
  `stock` int(11) NOT NULL DEFAULT 0 COMMENT '库存',
  `data` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT 'sku串',
  `gift` tinyint(4) NULL DEFAULT NULL COMMENT '是否是赠品（0:是，1：不是）',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `product_sku_name_product_id_index`(`name`, `product_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers`  (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TRIGGER_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TRIGGER_GROUP` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `BLOB_DATA` blob NULL,
  PRIMARY KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) USING BTREE,
  INDEX `SCHED_NAME`(`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) USING BTREE,
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars`  (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `CALENDAR_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `CALENDAR` blob NOT NULL,
  PRIMARY KEY (`SCHED_NAME`, `CALENDAR_NAME`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers`  (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TRIGGER_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TRIGGER_GROUP` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `CRON_EXPRESSION` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TIME_ZONE_ID` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) USING BTREE,
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------
INSERT INTO `qrtz_cron_triggers` VALUES ('RenrenScheduler', 'TASK_1', 'DEFAULT', '0 0/30 * * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('RenrenScheduler', 'TASK_2', 'DEFAULT', '0 0/30 * * * ?', 'Asia/Shanghai');

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers`  (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ENTRY_ID` varchar(95) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TRIGGER_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TRIGGER_GROUP` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `INSTANCE_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `FIRED_TIME` bigint(13) NOT NULL,
  `SCHED_TIME` bigint(13) NOT NULL,
  `PRIORITY` int(11) NOT NULL,
  `STATE` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `JOB_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `JOB_GROUP` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `IS_NONCONCURRENT` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `REQUESTS_RECOVERY` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`, `ENTRY_ID`) USING BTREE,
  INDEX `IDX_QRTZ_FT_TRIG_INST_NAME`(`SCHED_NAME`, `INSTANCE_NAME`) USING BTREE,
  INDEX `IDX_QRTZ_FT_INST_JOB_REQ_RCVRY`(`SCHED_NAME`, `INSTANCE_NAME`, `REQUESTS_RECOVERY`) USING BTREE,
  INDEX `IDX_QRTZ_FT_J_G`(`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) USING BTREE,
  INDEX `IDX_QRTZ_FT_JG`(`SCHED_NAME`, `JOB_GROUP`) USING BTREE,
  INDEX `IDX_QRTZ_FT_T_G`(`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) USING BTREE,
  INDEX `IDX_QRTZ_FT_TG`(`SCHED_NAME`, `TRIGGER_GROUP`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details`  (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `JOB_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `JOB_GROUP` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `DESCRIPTION` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `IS_DURABLE` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `IS_NONCONCURRENT` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `IS_UPDATE_DATA` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `REQUESTS_RECOVERY` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `JOB_DATA` blob NULL,
  PRIMARY KEY (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) USING BTREE,
  INDEX `IDX_QRTZ_J_REQ_RECOVERY`(`SCHED_NAME`, `REQUESTS_RECOVERY`) USING BTREE,
  INDEX `IDX_QRTZ_J_GRP`(`SCHED_NAME`, `JOB_GROUP`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------
INSERT INTO `qrtz_job_details` VALUES ('RenrenScheduler', 'TASK_1', 'DEFAULT', NULL, 'com.suke.czx.modules.job.utils.ScheduleJob', '0', '0', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000D4A4F425F504152414D5F4B45597400B57B226A6F624964223A312C226265616E4E616D65223A22746573745461736B222C226D6574686F644E616D65223A227465737431222C22706172616D73223A2274657374222C2263726F6E45787072657373696F6E223A223020302F3330202A202A202A203F222C22737461747573223A302C2272656D61726B223A22E69C89E58F82E695B0E6B58BE8AF95222C2263726561746554696D65223A2244656320312C20323031362031313A31363A343620504D227D7800);
INSERT INTO `qrtz_job_details` VALUES ('RenrenScheduler', 'TASK_2', 'DEFAULT', NULL, 'com.suke.czx.modules.job.utils.ScheduleJob', '0', '0', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000D4A4F425F504152414D5F4B45597400A47B226A6F624964223A322C226265616E4E616D65223A22746573745461736B222C226D6574686F644E616D65223A227465737432222C2263726F6E45787072657373696F6E223A223020302F3330202A202A202A203F222C22737461747573223A312C2272656D61726B223A22E697A0E58F82E695B0E6B58BE8AF95222C2263726561746554696D65223A2244656320332C203230313620323A35353A353620504D227D7800);

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks`  (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `LOCK_NAME` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`SCHED_NAME`, `LOCK_NAME`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------
INSERT INTO `qrtz_locks` VALUES ('RenrenScheduler', 'STATE_ACCESS');
INSERT INTO `qrtz_locks` VALUES ('RenrenScheduler', 'TRIGGER_ACCESS');

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps`  (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TRIGGER_GROUP` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`SCHED_NAME`, `TRIGGER_GROUP`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state`  (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `INSTANCE_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `LAST_CHECKIN_TIME` bigint(13) NOT NULL,
  `CHECKIN_INTERVAL` bigint(13) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`, `INSTANCE_NAME`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------
INSERT INTO `qrtz_scheduler_state` VALUES ('RenrenScheduler', 'PC-20181213LJKU1557815550238', 1557815855915, 15000);

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers`  (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TRIGGER_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TRIGGER_GROUP` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `REPEAT_COUNT` bigint(7) NOT NULL,
  `REPEAT_INTERVAL` bigint(12) NOT NULL,
  `TIMES_TRIGGERED` bigint(10) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) USING BTREE,
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers`  (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TRIGGER_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TRIGGER_GROUP` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `STR_PROP_1` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `STR_PROP_2` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `STR_PROP_3` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `INT_PROP_1` int(11) NULL DEFAULT NULL,
  `INT_PROP_2` int(11) NULL DEFAULT NULL,
  `LONG_PROP_1` bigint(20) NULL DEFAULT NULL,
  `LONG_PROP_2` bigint(20) NULL DEFAULT NULL,
  `DEC_PROP_1` decimal(13, 4) NULL DEFAULT NULL,
  `DEC_PROP_2` decimal(13, 4) NULL DEFAULT NULL,
  `BOOL_PROP_1` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `BOOL_PROP_2` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) USING BTREE,
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers`  (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TRIGGER_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TRIGGER_GROUP` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `JOB_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `JOB_GROUP` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `DESCRIPTION` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint(13) NULL DEFAULT NULL,
  `PREV_FIRE_TIME` bigint(13) NULL DEFAULT NULL,
  `PRIORITY` int(11) NULL DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TRIGGER_TYPE` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `START_TIME` bigint(13) NOT NULL,
  `END_TIME` bigint(13) NULL DEFAULT NULL,
  `CALENDAR_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `MISFIRE_INSTR` smallint(2) NULL DEFAULT NULL,
  `JOB_DATA` blob NULL,
  PRIMARY KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) USING BTREE,
  INDEX `IDX_QRTZ_T_J`(`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) USING BTREE,
  INDEX `IDX_QRTZ_T_JG`(`SCHED_NAME`, `JOB_GROUP`) USING BTREE,
  INDEX `IDX_QRTZ_T_C`(`SCHED_NAME`, `CALENDAR_NAME`) USING BTREE,
  INDEX `IDX_QRTZ_T_G`(`SCHED_NAME`, `TRIGGER_GROUP`) USING BTREE,
  INDEX `IDX_QRTZ_T_STATE`(`SCHED_NAME`, `TRIGGER_STATE`) USING BTREE,
  INDEX `IDX_QRTZ_T_N_STATE`(`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`, `TRIGGER_STATE`) USING BTREE,
  INDEX `IDX_QRTZ_T_N_G_STATE`(`SCHED_NAME`, `TRIGGER_GROUP`, `TRIGGER_STATE`) USING BTREE,
  INDEX `IDX_QRTZ_T_NEXT_FIRE_TIME`(`SCHED_NAME`, `NEXT_FIRE_TIME`) USING BTREE,
  INDEX `IDX_QRTZ_T_NFT_ST`(`SCHED_NAME`, `TRIGGER_STATE`, `NEXT_FIRE_TIME`) USING BTREE,
  INDEX `IDX_QRTZ_T_NFT_MISFIRE`(`SCHED_NAME`, `MISFIRE_INSTR`, `NEXT_FIRE_TIME`) USING BTREE,
  INDEX `IDX_QRTZ_T_NFT_ST_MISFIRE`(`SCHED_NAME`, `MISFIRE_INSTR`, `NEXT_FIRE_TIME`, `TRIGGER_STATE`) USING BTREE,
  INDEX `IDX_QRTZ_T_NFT_ST_MISFIRE_GRP`(`SCHED_NAME`, `MISFIRE_INSTR`, `NEXT_FIRE_TIME`, `TRIGGER_GROUP`, `TRIGGER_STATE`) USING BTREE,
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) REFERENCES `qrtz_job_details` (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------
INSERT INTO `qrtz_triggers` VALUES ('RenrenScheduler', 'TASK_1', 'DEFAULT', 'TASK_1', 'DEFAULT', NULL, 1557817200000, -1, 5, 'WAITING', 'CRON', 1555904482000, 0, NULL, 2, 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000D4A4F425F504152414D5F4B45597400B57B226A6F624964223A312C226265616E4E616D65223A22746573745461736B222C226D6574686F644E616D65223A227465737431222C22706172616D73223A2274657374222C2263726F6E45787072657373696F6E223A223020302F3330202A202A202A203F222C22737461747573223A302C2272656D61726B223A22E69C89E58F82E695B0E6B58BE8AF95222C2263726561746554696D65223A2244656320312C20323031362031313A31363A343620504D227D7800);
INSERT INTO `qrtz_triggers` VALUES ('RenrenScheduler', 'TASK_2', 'DEFAULT', 'TASK_2', 'DEFAULT', NULL, 1555905600000, -1, 5, 'PAUSED', 'CRON', 1555904482000, 0, NULL, 2, 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000D4A4F425F504152414D5F4B45597400A47B226A6F624964223A322C226265616E4E616D65223A22746573745461736B222C226D6574686F644E616D65223A227465737432222C2263726F6E45787072657373696F6E223A223020302F3330202A202A202A203F222C22737461747573223A312C2272656D61726B223A22E697A0E58F82E695B0E6B58BE8AF95222C2263726561746554696D65223A2244656320332C203230313620323A35353A353620504D227D7800);

-- ----------------------------
-- Table structure for rc_district
-- ----------------------------
DROP TABLE IF EXISTS `rc_district`;
CREATE TABLE `rc_district`  (
  `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pid` smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT '父及地区关系',
  `district` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '地区名称',
  `level` tinyint(1) NOT NULL COMMENT '子属级别关系',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 398 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '全国地区表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rc_district
-- ----------------------------
INSERT INTO `rc_district` VALUES (1, 0, '中国', 0);
INSERT INTO `rc_district` VALUES (2, 1, '北京市', 1);
INSERT INTO `rc_district` VALUES (3, 1, '安徽省', 1);
INSERT INTO `rc_district` VALUES (4, 1, '福建省', 1);
INSERT INTO `rc_district` VALUES (5, 1, '甘肃省', 1);
INSERT INTO `rc_district` VALUES (6, 1, '广东省', 1);
INSERT INTO `rc_district` VALUES (7, 1, '广西壮族自治区', 1);
INSERT INTO `rc_district` VALUES (8, 1, '贵州省', 1);
INSERT INTO `rc_district` VALUES (9, 1, '海南省', 1);
INSERT INTO `rc_district` VALUES (10, 1, '河北省', 1);
INSERT INTO `rc_district` VALUES (11, 1, '河南省', 1);
INSERT INTO `rc_district` VALUES (12, 1, '黑龙江省', 1);
INSERT INTO `rc_district` VALUES (13, 1, '湖北省', 1);
INSERT INTO `rc_district` VALUES (14, 1, '湖南省', 1);
INSERT INTO `rc_district` VALUES (15, 1, '吉林省', 1);
INSERT INTO `rc_district` VALUES (16, 1, '江苏省', 1);
INSERT INTO `rc_district` VALUES (17, 1, '江西省', 1);
INSERT INTO `rc_district` VALUES (18, 1, '辽宁省', 1);
INSERT INTO `rc_district` VALUES (19, 1, '内蒙古自治区', 1);
INSERT INTO `rc_district` VALUES (20, 1, '宁夏回族自治区', 1);
INSERT INTO `rc_district` VALUES (21, 1, '青海省', 1);
INSERT INTO `rc_district` VALUES (22, 1, '山东省', 1);
INSERT INTO `rc_district` VALUES (23, 1, '山西省', 1);
INSERT INTO `rc_district` VALUES (24, 1, '陕西省', 1);
INSERT INTO `rc_district` VALUES (25, 1, '上海市', 1);
INSERT INTO `rc_district` VALUES (26, 1, '四川省', 1);
INSERT INTO `rc_district` VALUES (27, 1, '天津市', 1);
INSERT INTO `rc_district` VALUES (28, 1, '西藏自治区', 1);
INSERT INTO `rc_district` VALUES (29, 1, '新疆维吾尔自治区', 1);
INSERT INTO `rc_district` VALUES (30, 1, '云南省', 1);
INSERT INTO `rc_district` VALUES (31, 1, '浙江省', 1);
INSERT INTO `rc_district` VALUES (32, 1, '重庆市', 1);
INSERT INTO `rc_district` VALUES (33, 1, '香港特别行政区', 1);
INSERT INTO `rc_district` VALUES (34, 1, '澳门特别行政区', 1);
INSERT INTO `rc_district` VALUES (35, 1, '台湾省', 1);
INSERT INTO `rc_district` VALUES (36, 3, '安庆', 2);
INSERT INTO `rc_district` VALUES (37, 3, '蚌埠', 2);
INSERT INTO `rc_district` VALUES (38, 3, '巢湖', 2);
INSERT INTO `rc_district` VALUES (39, 3, '池州', 2);
INSERT INTO `rc_district` VALUES (40, 3, '滁州', 2);
INSERT INTO `rc_district` VALUES (41, 3, '阜阳', 2);
INSERT INTO `rc_district` VALUES (42, 3, '淮北', 2);
INSERT INTO `rc_district` VALUES (43, 3, '淮南', 2);
INSERT INTO `rc_district` VALUES (44, 3, '黄山', 2);
INSERT INTO `rc_district` VALUES (45, 3, '六安', 2);
INSERT INTO `rc_district` VALUES (46, 3, '马鞍山', 2);
INSERT INTO `rc_district` VALUES (47, 3, '宿州', 2);
INSERT INTO `rc_district` VALUES (48, 3, '铜陵', 2);
INSERT INTO `rc_district` VALUES (49, 3, '芜湖', 2);
INSERT INTO `rc_district` VALUES (50, 3, '宣城', 2);
INSERT INTO `rc_district` VALUES (51, 3, '亳州', 2);
INSERT INTO `rc_district` VALUES (52, 2, '北京', 2);
INSERT INTO `rc_district` VALUES (53, 4, '福州', 2);
INSERT INTO `rc_district` VALUES (54, 4, '龙岩', 2);
INSERT INTO `rc_district` VALUES (55, 4, '南平', 2);
INSERT INTO `rc_district` VALUES (56, 4, '宁德', 2);
INSERT INTO `rc_district` VALUES (57, 4, '莆田', 2);
INSERT INTO `rc_district` VALUES (58, 4, '泉州', 2);
INSERT INTO `rc_district` VALUES (59, 4, '三明', 2);
INSERT INTO `rc_district` VALUES (60, 4, '厦门', 2);
INSERT INTO `rc_district` VALUES (61, 4, '漳州', 2);
INSERT INTO `rc_district` VALUES (62, 5, '兰州', 2);
INSERT INTO `rc_district` VALUES (63, 5, '白银', 2);
INSERT INTO `rc_district` VALUES (64, 5, '定西', 2);
INSERT INTO `rc_district` VALUES (65, 5, '甘南', 2);
INSERT INTO `rc_district` VALUES (66, 5, '嘉峪关', 2);
INSERT INTO `rc_district` VALUES (67, 5, '金昌', 2);
INSERT INTO `rc_district` VALUES (68, 5, '酒泉', 2);
INSERT INTO `rc_district` VALUES (69, 5, '临夏', 2);
INSERT INTO `rc_district` VALUES (70, 5, '陇南', 2);
INSERT INTO `rc_district` VALUES (71, 5, '平凉', 2);
INSERT INTO `rc_district` VALUES (72, 5, '庆阳', 2);
INSERT INTO `rc_district` VALUES (73, 5, '天水', 2);
INSERT INTO `rc_district` VALUES (74, 5, '武威', 2);
INSERT INTO `rc_district` VALUES (75, 5, '张掖', 2);
INSERT INTO `rc_district` VALUES (76, 6, '广州', 2);
INSERT INTO `rc_district` VALUES (77, 6, '深圳', 2);
INSERT INTO `rc_district` VALUES (78, 6, '潮州', 2);
INSERT INTO `rc_district` VALUES (79, 6, '东莞', 2);
INSERT INTO `rc_district` VALUES (80, 6, '佛山', 2);
INSERT INTO `rc_district` VALUES (81, 6, '河源', 2);
INSERT INTO `rc_district` VALUES (82, 6, '惠州', 2);
INSERT INTO `rc_district` VALUES (83, 6, '江门', 2);
INSERT INTO `rc_district` VALUES (84, 6, '揭阳', 2);
INSERT INTO `rc_district` VALUES (85, 6, '茂名', 2);
INSERT INTO `rc_district` VALUES (86, 6, '梅州', 2);
INSERT INTO `rc_district` VALUES (87, 6, '清远', 2);
INSERT INTO `rc_district` VALUES (88, 6, '汕头', 2);
INSERT INTO `rc_district` VALUES (89, 6, '汕尾', 2);
INSERT INTO `rc_district` VALUES (90, 6, '韶关', 2);
INSERT INTO `rc_district` VALUES (91, 6, '阳江', 2);
INSERT INTO `rc_district` VALUES (92, 6, '云浮', 2);
INSERT INTO `rc_district` VALUES (93, 6, '湛江', 2);
INSERT INTO `rc_district` VALUES (94, 6, '肇庆', 2);
INSERT INTO `rc_district` VALUES (95, 6, '中山', 2);
INSERT INTO `rc_district` VALUES (96, 6, '珠海', 2);
INSERT INTO `rc_district` VALUES (97, 7, '南宁', 2);
INSERT INTO `rc_district` VALUES (98, 7, '桂林', 2);
INSERT INTO `rc_district` VALUES (99, 7, '百色', 2);
INSERT INTO `rc_district` VALUES (100, 7, '北海', 2);
INSERT INTO `rc_district` VALUES (101, 7, '崇左', 2);
INSERT INTO `rc_district` VALUES (102, 7, '防城港', 2);
INSERT INTO `rc_district` VALUES (103, 7, '贵港', 2);
INSERT INTO `rc_district` VALUES (104, 7, '河池', 2);
INSERT INTO `rc_district` VALUES (105, 7, '贺州', 2);
INSERT INTO `rc_district` VALUES (106, 7, '来宾', 2);
INSERT INTO `rc_district` VALUES (107, 7, '柳州', 2);
INSERT INTO `rc_district` VALUES (108, 7, '钦州', 2);
INSERT INTO `rc_district` VALUES (109, 7, '梧州', 2);
INSERT INTO `rc_district` VALUES (110, 7, '玉林', 2);
INSERT INTO `rc_district` VALUES (111, 8, '贵阳', 2);
INSERT INTO `rc_district` VALUES (112, 8, '安顺', 2);
INSERT INTO `rc_district` VALUES (113, 8, '毕节', 2);
INSERT INTO `rc_district` VALUES (114, 8, '六盘水', 2);
INSERT INTO `rc_district` VALUES (115, 8, '黔东南', 2);
INSERT INTO `rc_district` VALUES (116, 8, '黔南', 2);
INSERT INTO `rc_district` VALUES (117, 8, '黔西南', 2);
INSERT INTO `rc_district` VALUES (118, 8, '铜仁', 2);
INSERT INTO `rc_district` VALUES (119, 8, '遵义', 2);
INSERT INTO `rc_district` VALUES (120, 9, '海口', 2);
INSERT INTO `rc_district` VALUES (121, 9, '三亚', 2);
INSERT INTO `rc_district` VALUES (122, 9, '白沙', 2);
INSERT INTO `rc_district` VALUES (123, 9, '保亭', 2);
INSERT INTO `rc_district` VALUES (124, 9, '昌江', 2);
INSERT INTO `rc_district` VALUES (125, 9, '澄迈县', 2);
INSERT INTO `rc_district` VALUES (126, 9, '定安县', 2);
INSERT INTO `rc_district` VALUES (127, 9, '东方', 2);
INSERT INTO `rc_district` VALUES (128, 9, '乐东', 2);
INSERT INTO `rc_district` VALUES (129, 9, '临高县', 2);
INSERT INTO `rc_district` VALUES (130, 9, '陵水', 2);
INSERT INTO `rc_district` VALUES (131, 9, '琼海', 2);
INSERT INTO `rc_district` VALUES (132, 9, '琼中', 2);
INSERT INTO `rc_district` VALUES (133, 9, '屯昌县', 2);
INSERT INTO `rc_district` VALUES (134, 9, '万宁', 2);
INSERT INTO `rc_district` VALUES (135, 9, '文昌', 2);
INSERT INTO `rc_district` VALUES (136, 9, '五指山', 2);
INSERT INTO `rc_district` VALUES (137, 9, '儋州', 2);
INSERT INTO `rc_district` VALUES (138, 10, '石家庄', 2);
INSERT INTO `rc_district` VALUES (139, 10, '保定', 2);
INSERT INTO `rc_district` VALUES (140, 10, '沧州', 2);
INSERT INTO `rc_district` VALUES (141, 10, '承德', 2);
INSERT INTO `rc_district` VALUES (142, 10, '邯郸', 2);
INSERT INTO `rc_district` VALUES (143, 10, '衡水', 2);
INSERT INTO `rc_district` VALUES (144, 10, '廊坊', 2);
INSERT INTO `rc_district` VALUES (145, 10, '秦皇岛', 2);
INSERT INTO `rc_district` VALUES (146, 10, '唐山', 2);
INSERT INTO `rc_district` VALUES (147, 10, '邢台', 2);
INSERT INTO `rc_district` VALUES (148, 10, '张家口', 2);
INSERT INTO `rc_district` VALUES (149, 11, '郑州', 2);
INSERT INTO `rc_district` VALUES (150, 11, '洛阳', 2);
INSERT INTO `rc_district` VALUES (151, 11, '开封', 2);
INSERT INTO `rc_district` VALUES (152, 11, '安阳', 2);
INSERT INTO `rc_district` VALUES (153, 11, '鹤壁', 2);
INSERT INTO `rc_district` VALUES (154, 11, '济源', 2);
INSERT INTO `rc_district` VALUES (155, 11, '焦作', 2);
INSERT INTO `rc_district` VALUES (156, 11, '南阳', 2);
INSERT INTO `rc_district` VALUES (157, 11, '平顶山', 2);
INSERT INTO `rc_district` VALUES (158, 11, '三门峡', 2);
INSERT INTO `rc_district` VALUES (159, 11, '商丘', 2);
INSERT INTO `rc_district` VALUES (160, 11, '新乡', 2);
INSERT INTO `rc_district` VALUES (161, 11, '信阳', 2);
INSERT INTO `rc_district` VALUES (162, 11, '许昌', 2);
INSERT INTO `rc_district` VALUES (163, 11, '周口', 2);
INSERT INTO `rc_district` VALUES (164, 11, '驻马店', 2);
INSERT INTO `rc_district` VALUES (165, 11, '漯河', 2);
INSERT INTO `rc_district` VALUES (166, 11, '濮阳', 2);
INSERT INTO `rc_district` VALUES (167, 12, '哈尔滨', 2);
INSERT INTO `rc_district` VALUES (168, 12, '大庆', 2);
INSERT INTO `rc_district` VALUES (169, 12, '大兴安岭', 2);
INSERT INTO `rc_district` VALUES (170, 12, '鹤岗', 2);
INSERT INTO `rc_district` VALUES (171, 12, '黑河', 2);
INSERT INTO `rc_district` VALUES (172, 12, '鸡西', 2);
INSERT INTO `rc_district` VALUES (173, 12, '佳木斯', 2);
INSERT INTO `rc_district` VALUES (174, 12, '牡丹江', 2);
INSERT INTO `rc_district` VALUES (175, 12, '七台河', 2);
INSERT INTO `rc_district` VALUES (176, 12, '齐齐哈尔', 2);
INSERT INTO `rc_district` VALUES (177, 12, '双鸭山', 2);
INSERT INTO `rc_district` VALUES (178, 12, '绥化', 2);
INSERT INTO `rc_district` VALUES (179, 12, '伊春', 2);
INSERT INTO `rc_district` VALUES (180, 13, '武汉', 2);
INSERT INTO `rc_district` VALUES (181, 13, '仙桃', 2);
INSERT INTO `rc_district` VALUES (182, 13, '鄂州', 2);
INSERT INTO `rc_district` VALUES (183, 13, '黄冈', 2);
INSERT INTO `rc_district` VALUES (184, 13, '黄石', 2);
INSERT INTO `rc_district` VALUES (185, 13, '荆门', 2);
INSERT INTO `rc_district` VALUES (186, 13, '荆州', 2);
INSERT INTO `rc_district` VALUES (187, 13, '潜江', 2);
INSERT INTO `rc_district` VALUES (188, 13, '神农架林区', 2);
INSERT INTO `rc_district` VALUES (189, 13, '十堰', 2);
INSERT INTO `rc_district` VALUES (190, 13, '随州', 2);
INSERT INTO `rc_district` VALUES (191, 13, '天门', 2);
INSERT INTO `rc_district` VALUES (192, 13, '咸宁', 2);
INSERT INTO `rc_district` VALUES (193, 13, '襄樊', 2);
INSERT INTO `rc_district` VALUES (194, 13, '孝感', 2);
INSERT INTO `rc_district` VALUES (195, 13, '宜昌', 2);
INSERT INTO `rc_district` VALUES (196, 13, '恩施', 2);
INSERT INTO `rc_district` VALUES (197, 14, '长沙', 2);
INSERT INTO `rc_district` VALUES (198, 14, '张家界', 2);
INSERT INTO `rc_district` VALUES (199, 14, '常德', 2);
INSERT INTO `rc_district` VALUES (200, 14, '郴州', 2);
INSERT INTO `rc_district` VALUES (201, 14, '衡阳', 2);
INSERT INTO `rc_district` VALUES (202, 14, '怀化', 2);
INSERT INTO `rc_district` VALUES (203, 14, '娄底', 2);
INSERT INTO `rc_district` VALUES (204, 14, '邵阳', 2);
INSERT INTO `rc_district` VALUES (205, 14, '湘潭', 2);
INSERT INTO `rc_district` VALUES (206, 14, '湘西', 2);
INSERT INTO `rc_district` VALUES (207, 14, '益阳', 2);
INSERT INTO `rc_district` VALUES (208, 14, '永州', 2);
INSERT INTO `rc_district` VALUES (209, 14, '岳阳', 2);
INSERT INTO `rc_district` VALUES (210, 14, '株洲', 2);
INSERT INTO `rc_district` VALUES (211, 15, '长春', 2);
INSERT INTO `rc_district` VALUES (212, 15, '吉林', 2);
INSERT INTO `rc_district` VALUES (213, 15, '白城', 2);
INSERT INTO `rc_district` VALUES (214, 15, '白山', 2);
INSERT INTO `rc_district` VALUES (215, 15, '辽源', 2);
INSERT INTO `rc_district` VALUES (216, 15, '四平', 2);
INSERT INTO `rc_district` VALUES (217, 15, '松原', 2);
INSERT INTO `rc_district` VALUES (218, 15, '通化', 2);
INSERT INTO `rc_district` VALUES (219, 15, '延边', 2);
INSERT INTO `rc_district` VALUES (220, 16, '南京', 2);
INSERT INTO `rc_district` VALUES (221, 16, '苏州', 2);
INSERT INTO `rc_district` VALUES (222, 16, '无锡', 2);
INSERT INTO `rc_district` VALUES (223, 16, '常州', 2);
INSERT INTO `rc_district` VALUES (224, 16, '淮安', 2);
INSERT INTO `rc_district` VALUES (225, 16, '连云港', 2);
INSERT INTO `rc_district` VALUES (226, 16, '南通', 2);
INSERT INTO `rc_district` VALUES (227, 16, '宿迁', 2);
INSERT INTO `rc_district` VALUES (228, 16, '泰州', 2);
INSERT INTO `rc_district` VALUES (229, 16, '徐州', 2);
INSERT INTO `rc_district` VALUES (230, 16, '盐城', 2);
INSERT INTO `rc_district` VALUES (231, 16, '扬州', 2);
INSERT INTO `rc_district` VALUES (232, 16, '镇江', 2);
INSERT INTO `rc_district` VALUES (233, 17, '南昌', 2);
INSERT INTO `rc_district` VALUES (234, 17, '抚州', 2);
INSERT INTO `rc_district` VALUES (235, 17, '赣州', 2);
INSERT INTO `rc_district` VALUES (236, 17, '吉安', 2);
INSERT INTO `rc_district` VALUES (237, 17, '景德镇', 2);
INSERT INTO `rc_district` VALUES (238, 17, '九江', 2);
INSERT INTO `rc_district` VALUES (239, 17, '萍乡', 2);
INSERT INTO `rc_district` VALUES (240, 17, '上饶', 2);
INSERT INTO `rc_district` VALUES (241, 17, '新余', 2);
INSERT INTO `rc_district` VALUES (242, 17, '宜春', 2);
INSERT INTO `rc_district` VALUES (243, 17, '鹰潭', 2);
INSERT INTO `rc_district` VALUES (244, 18, '沈阳', 2);
INSERT INTO `rc_district` VALUES (245, 18, '大连', 2);
INSERT INTO `rc_district` VALUES (246, 18, '鞍山', 2);
INSERT INTO `rc_district` VALUES (247, 18, '本溪', 2);
INSERT INTO `rc_district` VALUES (248, 18, '朝阳', 2);
INSERT INTO `rc_district` VALUES (249, 18, '丹东', 2);
INSERT INTO `rc_district` VALUES (250, 18, '抚顺', 2);
INSERT INTO `rc_district` VALUES (251, 18, '阜新', 2);
INSERT INTO `rc_district` VALUES (252, 18, '葫芦岛', 2);
INSERT INTO `rc_district` VALUES (253, 18, '锦州', 2);
INSERT INTO `rc_district` VALUES (254, 18, '辽阳', 2);
INSERT INTO `rc_district` VALUES (255, 18, '盘锦', 2);
INSERT INTO `rc_district` VALUES (256, 18, '铁岭', 2);
INSERT INTO `rc_district` VALUES (257, 18, '营口', 2);
INSERT INTO `rc_district` VALUES (258, 19, '呼和浩特', 2);
INSERT INTO `rc_district` VALUES (259, 19, '阿拉善盟', 2);
INSERT INTO `rc_district` VALUES (260, 19, '巴彦淖尔盟', 2);
INSERT INTO `rc_district` VALUES (261, 19, '包头', 2);
INSERT INTO `rc_district` VALUES (262, 19, '赤峰', 2);
INSERT INTO `rc_district` VALUES (263, 19, '鄂尔多斯', 2);
INSERT INTO `rc_district` VALUES (264, 19, '呼伦贝尔', 2);
INSERT INTO `rc_district` VALUES (265, 19, '通辽', 2);
INSERT INTO `rc_district` VALUES (266, 19, '乌海', 2);
INSERT INTO `rc_district` VALUES (267, 19, '乌兰察布市', 2);
INSERT INTO `rc_district` VALUES (268, 19, '锡林郭勒盟', 2);
INSERT INTO `rc_district` VALUES (269, 19, '兴安盟', 2);
INSERT INTO `rc_district` VALUES (270, 20, '银川', 2);
INSERT INTO `rc_district` VALUES (271, 20, '固原', 2);
INSERT INTO `rc_district` VALUES (272, 20, '石嘴山', 2);
INSERT INTO `rc_district` VALUES (273, 20, '吴忠', 2);
INSERT INTO `rc_district` VALUES (274, 20, '中卫', 2);
INSERT INTO `rc_district` VALUES (275, 21, '西宁', 2);
INSERT INTO `rc_district` VALUES (276, 21, '果洛', 2);
INSERT INTO `rc_district` VALUES (277, 21, '海北', 2);
INSERT INTO `rc_district` VALUES (278, 21, '海东', 2);
INSERT INTO `rc_district` VALUES (279, 21, '海南', 2);
INSERT INTO `rc_district` VALUES (280, 21, '海西', 2);
INSERT INTO `rc_district` VALUES (281, 21, '黄南', 2);
INSERT INTO `rc_district` VALUES (282, 21, '玉树', 2);
INSERT INTO `rc_district` VALUES (283, 22, '济南', 2);
INSERT INTO `rc_district` VALUES (284, 22, '青岛', 2);
INSERT INTO `rc_district` VALUES (285, 22, '滨州', 2);
INSERT INTO `rc_district` VALUES (286, 22, '德州', 2);
INSERT INTO `rc_district` VALUES (287, 22, '东营', 2);
INSERT INTO `rc_district` VALUES (288, 22, '菏泽', 2);
INSERT INTO `rc_district` VALUES (289, 22, '济宁', 2);
INSERT INTO `rc_district` VALUES (290, 22, '莱芜', 2);
INSERT INTO `rc_district` VALUES (291, 22, '聊城', 2);
INSERT INTO `rc_district` VALUES (292, 22, '临沂', 2);
INSERT INTO `rc_district` VALUES (293, 22, '日照', 2);
INSERT INTO `rc_district` VALUES (294, 22, '泰安', 2);
INSERT INTO `rc_district` VALUES (295, 22, '威海', 2);
INSERT INTO `rc_district` VALUES (296, 22, '潍坊', 2);
INSERT INTO `rc_district` VALUES (297, 22, '烟台', 2);
INSERT INTO `rc_district` VALUES (298, 22, '枣庄', 2);
INSERT INTO `rc_district` VALUES (299, 22, '淄博', 2);
INSERT INTO `rc_district` VALUES (300, 23, '太原', 2);
INSERT INTO `rc_district` VALUES (301, 23, '长治', 2);
INSERT INTO `rc_district` VALUES (302, 23, '大同', 2);
INSERT INTO `rc_district` VALUES (303, 23, '晋城', 2);
INSERT INTO `rc_district` VALUES (304, 23, '晋中', 2);
INSERT INTO `rc_district` VALUES (305, 23, '临汾', 2);
INSERT INTO `rc_district` VALUES (306, 23, '吕梁', 2);
INSERT INTO `rc_district` VALUES (307, 23, '朔州', 2);
INSERT INTO `rc_district` VALUES (308, 23, '忻州', 2);
INSERT INTO `rc_district` VALUES (309, 23, '阳泉', 2);
INSERT INTO `rc_district` VALUES (310, 23, '运城', 2);
INSERT INTO `rc_district` VALUES (311, 24, '西安', 2);
INSERT INTO `rc_district` VALUES (312, 24, '安康', 2);
INSERT INTO `rc_district` VALUES (313, 24, '宝鸡', 2);
INSERT INTO `rc_district` VALUES (314, 24, '汉中', 2);
INSERT INTO `rc_district` VALUES (315, 24, '商洛', 2);
INSERT INTO `rc_district` VALUES (316, 24, '铜川', 2);
INSERT INTO `rc_district` VALUES (317, 24, '渭南', 2);
INSERT INTO `rc_district` VALUES (318, 24, '咸阳', 2);
INSERT INTO `rc_district` VALUES (319, 24, '延安', 2);
INSERT INTO `rc_district` VALUES (320, 24, '榆林', 2);
INSERT INTO `rc_district` VALUES (321, 25, '上海', 2);
INSERT INTO `rc_district` VALUES (322, 26, '成都', 2);
INSERT INTO `rc_district` VALUES (323, 26, '绵阳', 2);
INSERT INTO `rc_district` VALUES (324, 26, '阿坝', 2);
INSERT INTO `rc_district` VALUES (325, 26, '巴中', 2);
INSERT INTO `rc_district` VALUES (326, 26, '达州', 2);
INSERT INTO `rc_district` VALUES (327, 26, '德阳', 2);
INSERT INTO `rc_district` VALUES (328, 26, '甘孜', 2);
INSERT INTO `rc_district` VALUES (329, 26, '广安', 2);
INSERT INTO `rc_district` VALUES (330, 26, '广元', 2);
INSERT INTO `rc_district` VALUES (331, 26, '乐山', 2);
INSERT INTO `rc_district` VALUES (332, 26, '凉山', 2);
INSERT INTO `rc_district` VALUES (333, 26, '眉山', 2);
INSERT INTO `rc_district` VALUES (334, 26, '南充', 2);
INSERT INTO `rc_district` VALUES (335, 26, '内江', 2);
INSERT INTO `rc_district` VALUES (336, 26, '攀枝花', 2);
INSERT INTO `rc_district` VALUES (337, 26, '遂宁', 2);
INSERT INTO `rc_district` VALUES (338, 26, '雅安', 2);
INSERT INTO `rc_district` VALUES (339, 26, '宜宾', 2);
INSERT INTO `rc_district` VALUES (340, 26, '资阳', 2);
INSERT INTO `rc_district` VALUES (341, 26, '自贡', 2);
INSERT INTO `rc_district` VALUES (342, 26, '泸州', 2);
INSERT INTO `rc_district` VALUES (343, 27, '天津', 2);
INSERT INTO `rc_district` VALUES (344, 28, '拉萨', 2);
INSERT INTO `rc_district` VALUES (345, 28, '阿里', 2);
INSERT INTO `rc_district` VALUES (346, 28, '昌都', 2);
INSERT INTO `rc_district` VALUES (347, 28, '林芝', 2);
INSERT INTO `rc_district` VALUES (348, 28, '那曲', 2);
INSERT INTO `rc_district` VALUES (349, 28, '日喀则', 2);
INSERT INTO `rc_district` VALUES (350, 28, '山南', 2);
INSERT INTO `rc_district` VALUES (351, 29, '乌鲁木齐', 2);
INSERT INTO `rc_district` VALUES (352, 29, '阿克苏', 2);
INSERT INTO `rc_district` VALUES (353, 29, '阿拉尔', 2);
INSERT INTO `rc_district` VALUES (354, 29, '巴音郭楞', 2);
INSERT INTO `rc_district` VALUES (355, 29, '博尔塔拉', 2);
INSERT INTO `rc_district` VALUES (356, 29, '昌吉', 2);
INSERT INTO `rc_district` VALUES (357, 29, '哈密', 2);
INSERT INTO `rc_district` VALUES (358, 29, '和田', 2);
INSERT INTO `rc_district` VALUES (359, 29, '喀什', 2);
INSERT INTO `rc_district` VALUES (360, 29, '克拉玛依', 2);
INSERT INTO `rc_district` VALUES (361, 29, '克孜勒苏', 2);
INSERT INTO `rc_district` VALUES (362, 29, '石河子', 2);
INSERT INTO `rc_district` VALUES (363, 29, '图木舒克', 2);
INSERT INTO `rc_district` VALUES (364, 29, '吐鲁番', 2);
INSERT INTO `rc_district` VALUES (365, 29, '五家渠', 2);
INSERT INTO `rc_district` VALUES (366, 29, '伊犁', 2);
INSERT INTO `rc_district` VALUES (367, 30, '昆明', 2);
INSERT INTO `rc_district` VALUES (368, 30, '怒江', 2);
INSERT INTO `rc_district` VALUES (369, 30, '普洱', 2);
INSERT INTO `rc_district` VALUES (370, 30, '丽江', 2);
INSERT INTO `rc_district` VALUES (371, 30, '保山', 2);
INSERT INTO `rc_district` VALUES (372, 30, '楚雄', 2);
INSERT INTO `rc_district` VALUES (373, 30, '大理', 2);
INSERT INTO `rc_district` VALUES (374, 30, '德宏', 2);
INSERT INTO `rc_district` VALUES (375, 30, '迪庆', 2);
INSERT INTO `rc_district` VALUES (376, 30, '红河', 2);
INSERT INTO `rc_district` VALUES (377, 30, '临沧', 2);
INSERT INTO `rc_district` VALUES (378, 30, '曲靖', 2);
INSERT INTO `rc_district` VALUES (379, 30, '文山', 2);
INSERT INTO `rc_district` VALUES (380, 30, '西双版纳', 2);
INSERT INTO `rc_district` VALUES (381, 30, '玉溪', 2);
INSERT INTO `rc_district` VALUES (382, 30, '昭通', 2);
INSERT INTO `rc_district` VALUES (383, 31, '杭州', 2);
INSERT INTO `rc_district` VALUES (384, 31, '湖州', 2);
INSERT INTO `rc_district` VALUES (385, 31, '嘉兴', 2);
INSERT INTO `rc_district` VALUES (386, 31, '金华', 2);
INSERT INTO `rc_district` VALUES (387, 31, '丽水', 2);
INSERT INTO `rc_district` VALUES (388, 31, '宁波', 2);
INSERT INTO `rc_district` VALUES (389, 31, '绍兴', 2);
INSERT INTO `rc_district` VALUES (390, 31, '台州', 2);
INSERT INTO `rc_district` VALUES (391, 31, '温州', 2);
INSERT INTO `rc_district` VALUES (392, 31, '舟山', 2);
INSERT INTO `rc_district` VALUES (393, 31, '衢州', 2);
INSERT INTO `rc_district` VALUES (394, 32, '重庆', 2);
INSERT INTO `rc_district` VALUES (395, 33, '香港', 2);
INSERT INTO `rc_district` VALUES (396, 34, '澳门', 2);
INSERT INTO `rc_district` VALUES (397, 35, '台湾', 2);

-- ----------------------------
-- Table structure for recommends
-- ----------------------------
DROP TABLE IF EXISTS `recommends`;
CREATE TABLE `recommends`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `target_type` int(4) NOT NULL COMMENT '目标类型 0：商品 1：店铺 2：课程 4:服务',
  `target_id` int(11) NOT NULL COMMENT '目标主键',
  `user_id` int(11) NOT NULL COMMENT '操作人id',
  `sort` int(4) NOT NULL COMMENT '排序',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '备注',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '推荐表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for schedule_job
-- ----------------------------
DROP TABLE IF EXISTS `schedule_job`;
CREATE TABLE `schedule_job`  (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务id',
  `bean_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'spring bean名称',
  `method_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '方法名',
  `params` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '参数',
  `cron_expression` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'cron表达式',
  `status` tinyint(4) NULL DEFAULT NULL COMMENT '任务状态  0：正常  1：暂停',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of schedule_job
-- ----------------------------
INSERT INTO `schedule_job` VALUES (1, 'testTask', 'test1', 'test', '0 0/30 * * * ?', 0, '有参数测试', '2016-12-01 23:16:46');
INSERT INTO `schedule_job` VALUES (2, 'testTask', 'test2', NULL, '0 0/30 * * * ?', 1, '无参数测试', '2016-12-03 14:55:56');

-- ----------------------------
-- Table structure for schedule_job_log
-- ----------------------------
DROP TABLE IF EXISTS `schedule_job_log`;
CREATE TABLE `schedule_job_log`  (
  `log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志id',
  `job_id` bigint(20) NOT NULL COMMENT '任务id',
  `bean_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'spring bean名称',
  `method_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '方法名',
  `params` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '参数',
  `status` tinyint(4) NOT NULL COMMENT '任务状态    0：成功    1：失败',
  `error` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '失败信息',
  `times` int(11) NOT NULL COMMENT '耗时(单位：毫秒)',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`log_id`) USING BTREE,
  INDEX `job_id`(`job_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 46 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务日志' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of schedule_job_log
-- ----------------------------
INSERT INTO `schedule_job_log` VALUES (1, 1, 'testTask', 'test1', 'test', 1, 'java.lang.NoSuchMethodException: com.suke.czx.modules.job.task.TestTask.test1(java.lang.String)', 6, '2019-04-22 12:00:00');
INSERT INTO `schedule_job_log` VALUES (2, 1, 'testTask', 'test1', 'test', 1, 'java.lang.NoSuchMethodException: com.suke.czx.modules.job.task.TestTask.test1(java.lang.String)', 1, '2019-04-22 12:30:00');
INSERT INTO `schedule_job_log` VALUES (3, 1, 'testTask', 'test1', 'test', 1, 'java.lang.NoSuchMethodException: com.suke.czx.modules.job.task.TestTask.test1(java.lang.String)', 1, '2019-04-22 14:00:00');
INSERT INTO `schedule_job_log` VALUES (4, 1, 'testTask', 'test1', 'test', 1, 'java.lang.NoSuchMethodException: com.suke.czx.modules.job.task.TestTask.test1(java.lang.String)', 1, '2019-04-22 14:30:00');
INSERT INTO `schedule_job_log` VALUES (5, 1, 'testTask', 'test1', 'test', 1, 'java.lang.NoSuchMethodException: com.suke.czx.modules.job.task.TestTask.test1(java.lang.String)', 2, '2019-04-22 15:00:00');
INSERT INTO `schedule_job_log` VALUES (6, 1, 'testTask', 'test1', 'test', 1, 'java.lang.NoSuchMethodException: com.suke.czx.modules.job.task.TestTask.test1(java.lang.String)', 1, '2019-04-22 15:30:00');
INSERT INTO `schedule_job_log` VALUES (7, 1, 'testTask', 'test1', 'test', 1, 'java.lang.NoSuchMethodException: com.suke.czx.modules.job.task.TestTask.test1(java.lang.String)', 1, '2019-04-22 16:00:00');
INSERT INTO `schedule_job_log` VALUES (8, 1, 'testTask', 'test1', 'test', 1, 'java.lang.NoSuchMethodException: com.suke.czx.modules.job.task.TestTask.test1(java.lang.String)', 2, '2019-04-22 16:30:00');
INSERT INTO `schedule_job_log` VALUES (9, 1, 'testTask', 'test1', 'test', 1, 'java.lang.NoSuchMethodException: com.suke.czx.modules.job.task.TestTask.test1(java.lang.String)', 1, '2019-04-22 17:00:00');
INSERT INTO `schedule_job_log` VALUES (10, 1, 'testTask', 'test1', 'test', 1, 'java.lang.NoSuchMethodException: com.suke.czx.modules.job.task.TestTask.test1(java.lang.String)', 1, '2019-04-22 17:30:00');
INSERT INTO `schedule_job_log` VALUES (11, 1, 'testTask', 'test1', 'test', 1, 'java.lang.NoSuchMethodException: com.suke.czx.modules.job.task.TestTask.test1(java.lang.String)', 1, '2019-04-22 18:00:00');
INSERT INTO `schedule_job_log` VALUES (12, 1, 'testTask', 'test1', 'test', 1, 'java.lang.NoSuchMethodException: com.suke.czx.modules.job.task.TestTask.test1(java.lang.String)', 17, '2019-05-05 10:00:01');
INSERT INTO `schedule_job_log` VALUES (13, 1, 'testTask', 'test1', 'test', 1, 'java.lang.NoSuchMethodException: com.suke.czx.modules.job.task.TestTask.test1(java.lang.String)', 2, '2019-05-05 11:00:00');
INSERT INTO `schedule_job_log` VALUES (14, 1, 'testTask', 'test1', 'test', 1, 'java.lang.NoSuchMethodException: com.suke.czx.modules.job.task.TestTask.test1(java.lang.String)', 2, '2019-05-05 11:30:00');
INSERT INTO `schedule_job_log` VALUES (15, 1, 'testTask', 'test1', 'test', 1, 'java.lang.NoSuchMethodException: com.suke.czx.modules.job.task.TestTask.test1(java.lang.String)', 3, '2019-05-05 12:00:00');
INSERT INTO `schedule_job_log` VALUES (16, 1, 'testTask', 'test1', 'test', 1, 'java.lang.NoSuchMethodException: com.suke.czx.modules.job.task.TestTask.test1(java.lang.String)', 1, '2019-05-05 12:30:00');
INSERT INTO `schedule_job_log` VALUES (17, 1, 'testTask', 'test1', 'test', 1, 'java.lang.NoSuchMethodException: com.suke.czx.modules.job.task.TestTask.test1(java.lang.String)', 1, '2019-05-05 13:00:00');
INSERT INTO `schedule_job_log` VALUES (18, 1, 'testTask', 'test1', 'test', 1, 'java.lang.NoSuchMethodException: com.suke.czx.modules.job.task.TestTask.test1(java.lang.String)', 1, '2019-05-05 13:30:00');
INSERT INTO `schedule_job_log` VALUES (19, 1, 'testTask', 'test1', 'test', 1, 'java.lang.NoSuchMethodException: com.suke.czx.modules.job.task.TestTask.test1(java.lang.String)', 1, '2019-05-05 14:00:00');
INSERT INTO `schedule_job_log` VALUES (20, 1, 'testTask', 'test1', 'test', 1, 'java.lang.NoSuchMethodException: com.suke.czx.modules.job.task.TestTask.test1(java.lang.String)', 3, '2019-05-05 15:30:00');
INSERT INTO `schedule_job_log` VALUES (21, 1, 'testTask', 'test1', 'test', 1, 'java.lang.NoSuchMethodException: com.suke.czx.modules.job.task.TestTask.test1(java.lang.String)', 2, '2019-05-05 16:30:00');
INSERT INTO `schedule_job_log` VALUES (22, 1, 'testTask', 'test1', 'test', 1, 'java.lang.NoSuchMethodException: com.suke.czx.modules.job.task.TestTask.test1(java.lang.String)', 0, '2019-05-05 18:00:00');
INSERT INTO `schedule_job_log` VALUES (23, 1, 'testTask', 'test1', 'test', 1, 'java.lang.NoSuchMethodException: com.suke.czx.modules.job.task.TestTask.test1(java.lang.String)', 16, '2019-05-06 09:30:00');
INSERT INTO `schedule_job_log` VALUES (24, 1, 'testTask', 'test1', 'test', 1, 'java.lang.NoSuchMethodException: com.suke.czx.modules.job.task.TestTask.test1(java.lang.String)', 6, '2019-05-07 17:00:00');
INSERT INTO `schedule_job_log` VALUES (25, 1, 'testTask', 'test1', 'test', 1, 'java.lang.NoSuchMethodException: com.suke.czx.modules.job.task.TestTask.test1(java.lang.String)', 2, '2019-05-07 18:30:00');
INSERT INTO `schedule_job_log` VALUES (26, 1, 'testTask', 'test1', 'test', 1, 'java.lang.NoSuchMethodException: com.suke.czx.modules.job.task.TestTask.test1(java.lang.String)', 7, '2019-05-08 09:00:00');
INSERT INTO `schedule_job_log` VALUES (27, 1, 'testTask', 'test1', 'test', 1, 'java.lang.NoSuchMethodException: com.suke.czx.modules.job.task.TestTask.test1(java.lang.String)', 7, '2019-05-08 09:30:00');
INSERT INTO `schedule_job_log` VALUES (28, 1, 'testTask', 'test1', 'test', 1, 'java.lang.NoSuchMethodException: com.suke.czx.modules.job.task.TestTask.test1(java.lang.String)', 17, '2019-05-08 17:00:00');
INSERT INTO `schedule_job_log` VALUES (29, 1, 'testTask', 'test1', 'test', 1, 'java.lang.NoSuchMethodException: com.suke.czx.modules.job.task.TestTask.test1(java.lang.String)', 3, '2019-05-08 17:30:00');
INSERT INTO `schedule_job_log` VALUES (30, 1, 'testTask', 'test1', 'test', 1, 'java.lang.NoSuchMethodException: com.suke.czx.modules.job.task.TestTask.test1(java.lang.String)', 2, '2019-05-08 18:00:00');
INSERT INTO `schedule_job_log` VALUES (31, 1, 'testTask', 'test1', 'test', 1, 'java.lang.NoSuchMethodException: com.suke.czx.modules.job.task.TestTask.test1(java.lang.String)', 2, '2019-05-08 18:30:00');
INSERT INTO `schedule_job_log` VALUES (32, 1, 'testTask', 'test1', 'test', 1, 'java.lang.NoSuchMethodException: com.suke.czx.modules.job.task.TestTask.test1(java.lang.String)', 14, '2019-05-11 12:00:00');
INSERT INTO `schedule_job_log` VALUES (33, 1, 'testTask', 'test1', 'test', 1, 'java.lang.NoSuchMethodException: com.suke.czx.modules.job.task.TestTask.test1(java.lang.String)', 3, '2019-05-11 12:30:00');
INSERT INTO `schedule_job_log` VALUES (34, 1, 'testTask', 'test1', 'test', 1, 'java.lang.NoSuchMethodException: com.suke.czx.modules.job.task.TestTask.test1(java.lang.String)', 2, '2019-05-11 13:30:00');
INSERT INTO `schedule_job_log` VALUES (35, 1, 'testTask', 'test1', 'test', 1, 'java.lang.NoSuchMethodException: com.suke.czx.modules.job.task.TestTask$$EnhancerBySpringCGLIB$$71897097.test1(java.lang.String)', 3, '2019-05-11 14:30:00');
INSERT INTO `schedule_job_log` VALUES (36, 1, 'testTask', 'test1', 'test', 1, 'java.lang.NoSuchMethodException: com.suke.czx.modules.job.task.TestTask$$EnhancerBySpringCGLIB$$9141bb11.test1(java.lang.String)', 6, '2019-05-11 16:00:00');
INSERT INTO `schedule_job_log` VALUES (37, 1, 'testTask', 'test1', 'test', 1, 'java.lang.NoSuchMethodException: com.suke.czx.modules.job.task.TestTask$$EnhancerBySpringCGLIB$$fa3c8f97.test1(java.lang.String)', 14, '2019-05-11 16:30:00');
INSERT INTO `schedule_job_log` VALUES (38, 1, 'testTask', 'test1', 'test', 1, 'java.lang.NoSuchMethodException: com.suke.czx.modules.job.task.TestTask$$EnhancerBySpringCGLIB$$fa3c8f97.test1(java.lang.String)', 3, '2019-05-11 17:00:00');
INSERT INTO `schedule_job_log` VALUES (39, 1, 'testTask', 'test1', 'test', 1, 'java.lang.NoSuchMethodException: com.suke.czx.modules.job.task.TestTask$$EnhancerBySpringCGLIB$$fa3c8f97.test1(java.lang.String)', 1, '2019-05-11 17:30:00');
INSERT INTO `schedule_job_log` VALUES (40, 1, 'testTask', 'test1', 'test', 1, 'java.lang.NoSuchMethodException: com.suke.czx.modules.job.task.TestTask$$EnhancerBySpringCGLIB$$fa3c8f97.test1(java.lang.String)', 1, '2019-05-11 18:00:00');
INSERT INTO `schedule_job_log` VALUES (41, 1, 'testTask', 'test1', 'test', 1, 'java.lang.NoSuchMethodException: com.suke.czx.modules.job.task.TestTask$$EnhancerBySpringCGLIB$$b5a58ed0.test1(java.lang.String)', 3, '2019-05-14 09:30:00');
INSERT INTO `schedule_job_log` VALUES (42, 1, 'testTask', 'test1', 'test', 1, 'java.lang.NoSuchMethodException: com.suke.czx.modules.job.task.TestTask$$EnhancerBySpringCGLIB$$df858d25.test1(java.lang.String)', 3, '2019-05-14 10:00:00');
INSERT INTO `schedule_job_log` VALUES (43, 1, 'testTask', 'test1', 'test', 1, 'java.lang.NoSuchMethodException: com.suke.czx.modules.job.task.TestTask$$EnhancerBySpringCGLIB$$68080710.test1(java.lang.String)', 3, '2019-05-14 10:30:00');
INSERT INTO `schedule_job_log` VALUES (44, 1, 'testTask', 'test1', 'test', 1, 'java.lang.NoSuchMethodException: com.suke.czx.modules.job.task.TestTask$$EnhancerBySpringCGLIB$$68080710.test1(java.lang.String)', 3, '2019-05-14 11:00:00');
INSERT INTO `schedule_job_log` VALUES (45, 1, 'testTask', 'test1', 'test', 1, 'java.lang.NoSuchMethodException: com.suke.czx.modules.job.task.TestTask$$EnhancerBySpringCGLIB$$7901e26f.test1(java.lang.String)', 2, '2019-05-14 14:30:00');

-- ----------------------------
-- Table structure for shop_apply
-- ----------------------------
DROP TABLE IF EXISTS `shop_apply`;
CREATE TABLE `shop_apply`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `target_type` int(4) NOT NULL COMMENT '目标类型 0：商品 1：店铺 2：课程 3:服务',
  `acc_id` int(11) NOT NULL COMMENT '认证项目',
  `acc_name` int(11) NOT NULL COMMENT '项目名',
  `acc_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '项目内容（文字、图片url、视频url）',
  `target_id` int(11) NULL DEFAULT NULL COMMENT '归属id，为空则为新建',
  `result` int(4) NOT NULL COMMENT '结果 0：未审核 1：审核成功 2：审核失败 ',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '备注',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '认证申请' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for shop_catagory
-- ----------------------------
DROP TABLE IF EXISTS `shop_catagory`;
CREATE TABLE `shop_catagory`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `catagory_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '套餐名',
  `parent_id` int(11) NOT NULL COMMENT '父级id（顶级为0）',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '分类表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for shop_messages
-- ----------------------------
DROP TABLE IF EXISTS `shop_messages`;
CREATE TABLE `shop_messages`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `send_id` int(4) NOT NULL COMMENT '发送者id 系统消息 发送者为0',
  `receive_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '接受者id',
  `msg_content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '消息内容',
  `msg_json` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '存放json数据（将消息 订单 商品关联起来）',
  `message_type` tinyint(4) NOT NULL COMMENT '菜单类型 0:私信 1：系统通知',
  `msg_status` tinyint(4) NOT NULL COMMENT '显示 0:未读 1：已读',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '消息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `key` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'key',
  `value` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'value',
  `status` tinyint(4) NULL DEFAULT 1 COMMENT '状态   0：隐藏   1：显示',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `key`(`key`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统配置信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, 'CLOUD_STORAGE_CONFIG_KEY', '{\"aliyunAccessKeyId\":\"\",\"aliyunAccessKeySecret\":\"\",\"aliyunBucketName\":\"\",\"aliyunDomain\":\"\",\"aliyunEndPoint\":\"\",\"aliyunPrefix\":\"\",\"qcloudBucketName\":\"\",\"qcloudDomain\":\"\",\"qcloudPrefix\":\"\",\"qcloudSecretId\":\"\",\"qcloudSecretKey\":\"\",\"qiniuAccessKey\":\"NrgMfABZxWLo5B-YYSjoE8-AZ1EISdi1Z3ubLOeZ\",\"qiniuBucketName\":\"ios-app\",\"qiniuDomain\":\"http://7xqbwh.dl1.z0.glb.clouddn.com\",\"qiniuPrefix\":\"upload\",\"qiniuSecretKey\":\"uIwJHevMRWU0VLxFvgy0tAcOdGqasdtVlJkdy6vV\",\"type\":1}', 0, '云存储配置信息');

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `operation` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户操作',
  `method` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '请求方法',
  `params` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '请求参数',
  `time` bigint(20) NOT NULL COMMENT '执行时长(毫秒)',
  `ip` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'IP地址',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统日志' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES (1, 'admin', '', 'com.suke.czx.modules.sys.controller.SysLoginController.login()', '\"admin\"', 0, '0:0:0:0:0:0:0:1', '2019-05-11 15:31:13');
INSERT INTO `sys_log` VALUES (2, 'admin', '', 'com.suke.czx.modules.sys.controller.SysLoginController.login()', '\"admin\"', 87, '0:0:0:0:0:0:0:1', '2019-05-11 15:31:24');
INSERT INTO `sys_log` VALUES (3, 'admin', '', 'com.suke.czx.modules.sys.controller.SysLoginController.login()', '\"admin\"', 66, '0:0:0:0:0:0:0:1', '2019-05-11 15:32:00');
INSERT INTO `sys_log` VALUES (4, 'admin', '', 'com.suke.czx.modules.sys.controller.SysLoginController.login()', '[\"admin\",\"admin\",\"ffcb4\"]', 172, '0:0:0:0:0:0:0:1', '2019-05-11 15:56:57');
INSERT INTO `sys_log` VALUES (5, 'admin', '登陆', 'com.suke.czx.modules.sys.controller.SysLoginController.login()', '[\"admin\",\"admin\",\"8efcx\"]', 104, '0:0:0:0:0:0:0:1', '2019-05-11 16:04:55');
INSERT INTO `sys_log` VALUES (6, 'admin', '登陆', 'com.suke.czx.modules.sys.controller.SysLoginController.login()', '[\"admin\",\"admin\",\"5758p\"]', 64, '0:0:0:0:0:0:0:1', '2019-05-11 16:05:07');
INSERT INTO `sys_log` VALUES (7, 'admin', '登陆', 'com.suke.czx.modules.sys.controller.SysLoginController.login()', '[\"admin\",\"admin\",\"8272w\"]', 80, '0:0:0:0:0:0:0:1', '2019-05-11 16:05:34');
INSERT INTO `sys_log` VALUES (8, 'admin', '登陆', 'com.suke.czx.modules.sys.controller.SysLoginController.login()', '[\"admin\",\"admin\",\"6x76n\"]', 48, '0:0:0:0:0:0:0:1', '2019-05-11 16:09:15');
INSERT INTO `sys_log` VALUES (9, 'admin', '登陆', 'com.suke.czx.modules.sys.controller.SysLoginController.login()', '[\"admin\",\"admin\",\"6pem2\"]', 372, '0:0:0:0:0:0:0:1', '2019-05-11 17:26:15');
INSERT INTO `sys_log` VALUES (10, 'admin', '登陆', 'com.suke.czx.modules.sys.controller.SysLoginController.login()', '[\"admin\",\"admin\",\"6pem2\"]', 0, '0:0:0:0:0:0:0:1', '2019-05-11 17:39:38');
INSERT INTO `sys_log` VALUES (11, 'admin', '登陆', 'com.suke.czx.modules.sys.controller.SysLoginController.login()', '[\"admin\",\"admin\",\"y7x3p\"]', 125, '0:0:0:0:0:0:0:1', '2019-05-14 10:18:16');
INSERT INTO `sys_log` VALUES (12, 'admin', '登陆', 'com.suke.czx.modules.sys.controller.SysLoginController.login()', '[\"admin\",\"admin\",\"fec3a\"]', 0, '0:0:0:0:0:0:0:1', '2019-05-14 10:34:37');
INSERT INTO `sys_log` VALUES (13, 'admin', '登陆', 'com.suke.czx.modules.sys.controller.SysLoginController.login()', '[\"admin\",\"admin\",\"pg45e\"]', 125, '0:0:0:0:0:0:0:1', '2019-05-14 10:34:54');
INSERT INTO `sys_log` VALUES (14, 'admin', '登陆', 'com.suke.czx.modules.sys.controller.SysLoginController.login()', '[\"admin\",\"admin\",\"6wpyx\"]', 13020, '0:0:0:0:0:0:0:1', '2019-05-14 10:37:58');
INSERT INTO `sys_log` VALUES (15, 'admin', '登陆', 'com.suke.czx.modules.sys.controller.SysLoginController.login()', '[\"admin\",\"admin\",\"6mfpc\"]', 4273, '0:0:0:0:0:0:0:1', '2019-05-14 10:47:10');
INSERT INTO `sys_log` VALUES (16, 'admin', '登陆', 'com.suke.czx.modules.sys.controller.SysLoginController.login()', '[\"admin\",\"admin\",\"cwe2b\"]', 119, '0:0:0:0:0:0:0:1', '2019-05-14 10:48:23');
INSERT INTO `sys_log` VALUES (17, 'admin', '登陆', 'com.suke.czx.modules.sys.controller.SysLoginController.login()', '[\"admin\",\"admin\",\"gwp5c\"]', 56, '0:0:0:0:0:0:0:1', '2019-05-14 10:49:53');
INSERT INTO `sys_log` VALUES (18, 'admin', '登陆', 'com.suke.czx.modules.sys.controller.SysLoginController.login()', '[\"admin\",\"admin\",\"aman7\"]', 108, '0:0:0:0:0:0:0:1', '2019-05-14 10:57:34');
INSERT INTO `sys_log` VALUES (19, 'admin', '登陆', 'com.suke.czx.modules.sys.controller.SysLoginController.login()', '[\"admin\",\"admin\",\"b2emm\"]', 130, '0:0:0:0:0:0:0:1', '2019-05-14 14:22:02');
INSERT INTO `sys_log` VALUES (20, '1', '登陆', 'com.suke.czx.modules.sys.controller.SysLoginController.login()', '[\"1\",\"1\",\"xweem\"]', 34, '0:0:0:0:0:0:0:1', '2019-05-14 14:26:47');
INSERT INTO `sys_log` VALUES (21, '1', '登陆', 'com.suke.czx.modules.sys.controller.SysLoginController.login()', '[\"1\",\"1\",\"ggc2g\"]', 32, '0:0:0:0:0:0:0:1', '2019-05-14 14:34:03');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) NULL DEFAULT NULL COMMENT '父菜单ID，一级菜单为0',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单名称',
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单URL',
  `perms` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '授权(多个用逗号分隔，如：user:list,user:create)',
  `type` int(11) NULL DEFAULT NULL COMMENT '类型   0：目录   1：菜单   2：按钮',
  `icon` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单图标',
  `order_num` int(11) NULL DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单管理' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, 0, '系统管理', NULL, NULL, 0, 'fa fa-cog', 0);
INSERT INTO `sys_menu` VALUES (2, 1, '管理员列表', 'modules/sys/user.html', NULL, 1, 'fa fa-user', 1);
INSERT INTO `sys_menu` VALUES (3, 1, '角色管理', 'modules/sys/role.html', NULL, 1, 'fa fa-user-secret', 2);
INSERT INTO `sys_menu` VALUES (4, 1, '菜单管理', 'modules/sys/menu.html', NULL, 1, 'fa fa-th-list', 3);
INSERT INTO `sys_menu` VALUES (5, 1, 'SQL监控', 'druid/sql.html', NULL, 1, 'fa fa-bug', 4);
INSERT INTO `sys_menu` VALUES (6, 1, '定时任务', 'modules/job/schedule.html', NULL, 1, 'fa fa-tasks', 5);
INSERT INTO `sys_menu` VALUES (7, 6, '查看', NULL, 'sys:schedule:list,sys:schedule:info', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (8, 6, '新增', NULL, 'sys:schedule:save', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (9, 6, '修改', NULL, 'sys:schedule:update', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (10, 6, '删除', NULL, 'sys:schedule:delete', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (11, 6, '暂停', NULL, 'sys:schedule:pause', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (12, 6, '恢复', NULL, 'sys:schedule:resume', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (13, 6, '立即执行', NULL, 'sys:schedule:run', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (14, 6, '日志列表', NULL, 'sys:schedule:log', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (15, 2, '查看', NULL, 'sys:user:list,sys:user:info', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (16, 2, '新增', NULL, 'sys:user:save,sys:role:select', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (17, 2, '修改', NULL, 'sys:user:update,sys:role:select', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (18, 2, '删除', NULL, 'sys:user:delete', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (19, 3, '查看', NULL, 'sys:role:list,sys:role:info', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (20, 3, '新增', NULL, 'sys:role:save,sys:menu:list', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (21, 3, '修改', NULL, 'sys:role:update,sys:menu:list', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (22, 3, '删除', NULL, 'sys:role:delete', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (23, 4, '查看', NULL, 'sys:menu:list,sys:menu:info', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (24, 4, '新增', NULL, 'sys:menu:save,sys:menu:select', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (25, 4, '修改', NULL, 'sys:menu:update,sys:menu:select', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (26, 4, '删除', NULL, 'sys:menu:delete', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (27, 1, '参数管理', 'modules/sys/config.html', 'sys:config:list,sys:config:info,sys:config:save,sys:config:update,sys:config:delete', 1, 'fa fa-sun-o', 6);
INSERT INTO `sys_menu` VALUES (29, 1, '系统日志', 'modules/sys/log.html', 'sys:log:list', 1, 'fa fa-file-text-o', 7);
INSERT INTO `sys_menu` VALUES (30, 1, '文件上传', 'modules/oss/oss.html', 'sys:oss:all', 1, 'fa fa-file-image-o', 6);

-- ----------------------------
-- Table structure for sys_oss
-- ----------------------------
DROP TABLE IF EXISTS `sys_oss`;
CREATE TABLE `sys_oss`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'URL地址',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '文件上传' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色名称',
  `remark` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_user_id` bigint(20) NULL DEFAULT NULL COMMENT '创建者ID',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) NULL DEFAULT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NULL DEFAULT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色与菜单对应关系' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `salt` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '盐',
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `mobile` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `status` tinyint(4) NULL DEFAULT NULL COMMENT '状态  0：禁用   1：正常',
  `create_user_id` bigint(20) NULL DEFAULT NULL COMMENT '创建者ID',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`user_id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统用户' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 'admin', '9ec9750e709431dad22365cabc5c625482e574c74adaebba7dd02f1129e4ce1d', 'YzcmCZNvbXocrsz9dm8e', 'yzcheng90@qq.com', '13888888888', 1, 1, '2018-01-18 11:11:11');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '用户ID',
  `role_id` bigint(20) NULL DEFAULT NULL COMMENT '角色ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户与角色对应关系' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_user_token
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_token`;
CREATE TABLE `sys_user_token`  (
  `user_id` bigint(20) NOT NULL,
  `token` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'token',
  `expire_time` datetime(0) NULL DEFAULT NULL COMMENT '过期时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`user_id`) USING BTREE,
  UNIQUE INDEX `token`(`token`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统用户Token' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_token
-- ----------------------------
INSERT INTO `sys_user_token` VALUES (0, '95bf779e5d898738818a2b47c2fc7c1c', '2019-05-15 02:22:02', '2019-05-14 14:22:02');
INSERT INTO `sys_user_token` VALUES (1, 'd57b838a21eadffc339b1a1e0c90b448', '2019-05-14 22:37:45', '2019-05-14 10:37:45');

-- ----------------------------
-- Table structure for tb_app_update
-- ----------------------------
DROP TABLE IF EXISTS `tb_app_update`;
CREATE TABLE `tb_app_update`  (
  `appid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'APPID ',
  `update_content` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新内容',
  `version_code` int(20) NULL DEFAULT NULL COMMENT '版本码',
  `version_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '版本号',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'URL地址',
  `app_file_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件名',
  `md5` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'MD5值',
  `size` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件大小',
  `is_force` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否强制安装',
  `is_ignorable` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否可忽略该版本',
  `is_silent` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否静默下载：有新版本时不提示直接下载',
  `upload_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '上传时间'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'APP版本管理' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user`  (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `mobile` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '手机号',
  `password` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`user_id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES (1, 'mark', '13612345678', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918', '2017-03-23 22:37:41');

-- ----------------------------
-- Table structure for transaction
-- ----------------------------
DROP TABLE IF EXISTS `transaction`;
CREATE TABLE `transaction`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_sn` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '交易单号',
  `member_id` bigint(20) NOT NULL COMMENT '交易的用户ID',
  `amount` decimal(8, 2) NOT NULL COMMENT '交易金额',
  `integral` int(11) NOT NULL DEFAULT 0 COMMENT '使用的积分',
  `pay_state` tinyint(4) NOT NULL COMMENT '支付类型 0:余额 1:微信 2:支付宝 3:xxx',
  `source` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '支付来源 wx app web wap',
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '支付状态 -1：取消 0 未完成 1已完成 -2:异常',
  `completion_time` int(11) NOT NULL COMMENT '交易完成时间',
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '备注',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `transaction_order_sn_member_id_pay_state_source_status_index`(`order_sn`(191), `member_id`, `pay_state`, `source`(191), `status`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for transaction_record
-- ----------------------------
DROP TABLE IF EXISTS `transaction_record`;
CREATE TABLE `transaction_record`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_sn` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `events` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '事件详情',
  `result` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '结果详情',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user_address
-- ----------------------------
DROP TABLE IF EXISTS `user_address`;
CREATE TABLE `user_address`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL COMMENT '用户id',
  `realname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '收货人姓名',
  `telphone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '联系电话',
  `telphone2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '备用联系电话',
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '国家',
  `province` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '省份',
  `area` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '地区',
  `street` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '街道详细地址',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '收货地址',
  `zip` int(11) NOT NULL COMMENT '邮政编码',
  `defaults` int(4) NOT NULL COMMENT '默认',
  `create_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_at` timestamp(0) NOT NULL COMMENT '结束时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user_authorized
-- ----------------------------
DROP TABLE IF EXISTS `user_authorized`;
CREATE TABLE `user_authorized`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL COMMENT '用户编码',
  `prefix` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '第三方名称',
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '第三方标示',
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '授权获得的用户信息',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_authorized_prefix_index`(`prefix`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user_data
-- ----------------------------
DROP TABLE IF EXISTS `user_data`;
CREATE TABLE `user_data`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL COMMENT '用户编码',
  `sex` enum('0','1','2') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '性别 0=>女生 1=>男生 2=>未知',
  `nick_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '姓名/昵称',
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户头像',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_data_user_id_unique`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user_like
-- ----------------------------
DROP TABLE IF EXISTS `user_like`;
CREATE TABLE `user_like`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `like_type` tinyint(4) NOT NULL COMMENT '收藏类型 0：商品 1：商家',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `target_id` int(11) NOT NULL COMMENT '对象id',
  `target_price` decimal(11, 2) NULL DEFAULT 0.00 COMMENT '商品价格（商品有，做比对  优惠价格）',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '用户收藏' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user_query_history
-- ----------------------------
DROP TABLE IF EXISTS `user_query_history`;
CREATE TABLE `user_query_history`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户编码',
  `keyword` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '关键字',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
