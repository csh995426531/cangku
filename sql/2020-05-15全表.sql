/*
 Navicat Premium Data Transfer

 Source Server         : 本地
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : 127.0.0.1:3406
 Source Schema         : maiguo2

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 15/05/2020 18:24:47
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for fmys_data_goods_no_distribution_rate
-- ----------------------------
DROP TABLE IF EXISTS `fmys_data_goods_no_distribution_rate`;
CREATE TABLE `fmys_data_goods_no_distribution_rate`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `goods_no` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户id',
  `distribution_rate_24` decimal(3, 2) NOT NULL DEFAULT 0.00 COMMENT '24小时配货率',
  `distribution_rate_48` decimal(3, 2) NOT NULL DEFAULT 0.00 COMMENT '48小时配货率',
  `distribution_rate_72` decimal(3, 2) NOT NULL DEFAULT 0.00 COMMENT '72小时配货率',
  `distribution_rate_96` decimal(3, 2) NOT NULL DEFAULT 0.00 COMMENT '96小时配货率',
  `add_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商品配货率_数据组同步，数据对接人:陈俊森，应用在商品搜索' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for fmys_data_goods_no_sale_and_conversion
-- ----------------------------
DROP TABLE IF EXISTS `fmys_data_goods_no_sale_and_conversion`;
CREATE TABLE `fmys_data_goods_no_sale_and_conversion`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `goods_no` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '商品货号',
  `sale_sort` int(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT '销售排序',
  `conversion_sort` int(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT '转化率排序',
  `add_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商品销售和转化率排序_数据组同步，数据对接人:陈俊森，应用在商品搜索' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for fmys_data_user_like_cat_grade
-- ----------------------------
DROP TABLE IF EXISTS `fmys_data_user_like_cat_grade`;
CREATE TABLE `fmys_data_user_like_cat_grade`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户id',
  `cat_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '分类id',
  `grade` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '档次{1:高档, 2:中高档, 3:中档, 4:中低档, 5:低档}',
  `add_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户偏好品类档次_数据组同步，数据对接人:陈俊森，应用在商品搜索' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for y5g_access_node
-- ----------------------------
DROP TABLE IF EXISTS `y5g_access_node`;
CREATE TABLE `y5g_access_node`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `module` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '模块',
  `controller` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '控制器',
  `action` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '方法',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '权限名',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '父级id 0为1级',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `update_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '权限节点表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of y5g_access_node
-- ----------------------------
INSERT INTO `y5g_access_node` VALUES (2, 'index', 'members', 'updatepwd', '密码修改', 4, 0, 0);
INSERT INTO `y5g_access_node` VALUES (3, 'index', 'members', 'updateaccess', '权限修改', 4, 0, 0);
INSERT INTO `y5g_access_node` VALUES (4, '', '', '', '角色管理', 0, 0, 0);
INSERT INTO `y5g_access_node` VALUES (5, '', '', '', '库存查询', 0, 0, 0);
INSERT INTO `y5g_access_node` VALUES (6, 'index', 'item', 'inventory', '在库查询', 5, 0, 0);
INSERT INTO `y5g_access_node` VALUES (7, 'index', 'item', 'search', '综合查询', 5, 0, 0);
INSERT INTO `y5g_access_node` VALUES (8, '', '', '', '产品入库', 0, 0, 0);
INSERT INTO `y5g_access_node` VALUES (9, 'index', 'item', 'income', '进货入库', 8, 0, 0);
INSERT INTO `y5g_access_node` VALUES (10, 'index', 'item', 'returnincome', '退货入库', 8, 0, 0);
INSERT INTO `y5g_access_node` VALUES (11, '', '', '', '产品出库', 0, 0, 0);
INSERT INTO `y5g_access_node` VALUES (12, 'index', 'item', 'outgo', '销售出库', 11, 0, 0);
INSERT INTO `y5g_access_node` VALUES (13, '', '', '', '操作审核', 0, 0, 0);
INSERT INTO `y5g_access_node` VALUES (14, 'index', 'item', 'incomeagree', '入库审核', 13, 0, 0);
INSERT INTO `y5g_access_node` VALUES (15, 'index', 'item', 'outgoagree', '出库审核', 13, 0, 0);
INSERT INTO `y5g_access_node` VALUES (16, '', '', '', '统计功能', 0, 0, 0);
INSERT INTO `y5g_access_node` VALUES (18, 'index', 'statistics', 'profit', '统计', 16, 0, 0);
INSERT INTO `y5g_access_node` VALUES (19, '', '', '', '基础设置', 0, 0, 0);
INSERT INTO `y5g_access_node` VALUES (20, 'index', 'setting', 'category', '类别录入', 19, 0, 0);
INSERT INTO `y5g_access_node` VALUES (21, 'index', 'setting', 'name', '名称录入', 19, 0, 0);
INSERT INTO `y5g_access_node` VALUES (22, 'index', 'setting', 'feature', '配置录入', 19, 0, 0);
INSERT INTO `y5g_access_node` VALUES (23, 'index', 'setting', 'appearance', '外观录入', 19, 0, 0);
INSERT INTO `y5g_access_node` VALUES (24, 'index', 'setting', 'edition', '固件版本录入', 19, 0, 0);
INSERT INTO `y5g_access_node` VALUES (25, 'index', 'setting', 'type', '型号录入', 19, 0, 0);
INSERT INTO `y5g_access_node` VALUES (26, 'index', 'setting', 'incomechannel', '进货渠道录入', 19, 0, 0);
INSERT INTO `y5g_access_node` VALUES (27, 'index', 'setting', 'outgochannel', '出货途径录入', 19, 0, 0);
INSERT INTO `y5g_access_node` VALUES (28, '', '', '', '日志查询', 0, 0, 0);
INSERT INTO `y5g_access_node` VALUES (29, 'index', 'log', 'index', '日志查询', 28, 0, 0);
INSERT INTO `y5g_access_node` VALUES (30, 'index', 'setting', 'network', '网络模式录入', 19, 0, 0);
INSERT INTO `y5g_access_node` VALUES (31, 'index', 'item', 'specialoutgo', '特殊出库', 11, 0, 0);
INSERT INTO `y5g_access_node` VALUES (32, 'index', 'setting', 'specialedititemlist', '特殊修改', 19, 0, 0);
INSERT INTO `y5g_access_node` VALUES (33, 'index', 'setting', 'intelligence', '智能识别码录入', 19, 0, 0);

-- ----------------------------
-- Table structure for y5g_item
-- ----------------------------
DROP TABLE IF EXISTS `y5g_item`;
CREATE TABLE `y5g_item`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '类别id',
  `name_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '名称id',
  `feature_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '配置id',
  `appearance_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '外观id',
  `edition_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '固件版本id',
  `type_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '型号id',
  `date` date NOT NULL COMMENT '进货时间',
  `number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '序列号',
  `memo` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '备注',
  `price` decimal(18, 4) UNSIGNED NOT NULL DEFAULT 0.0000 COMMENT '价格',
  `channel_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '进货渠道id',
  `status` tinyint(2) UNSIGNED NOT NULL DEFAULT 0 COMMENT '状态 1:入库待审核 2:在库 3已售 4维修 5丢失 6入库审核失败 7出库待审核',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `update_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `network_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '网络模式id',
  `prepare` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 39 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '物品库存表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of y5g_item
-- ----------------------------
INSERT INTO `y5g_item` VALUES (2, 1, 1, 3, 1, 1, 1, '2019-07-06', 'ESRET5TG54', '', 1200.0000, 3, 4, 1562395349, 1570293215, 0, '');
INSERT INTO `y5g_item` VALUES (3, 1, 1, 3, 1, 1, 1, '2019-07-06', 'ESRET45T555', '这只是一个设置', 1500.0000, 3, 5, 1562395387, 1562985028, 0, '');
INSERT INTO `y5g_item` VALUES (4, 1, 1, 3, 1, 1, 1, '2019-07-13', 'A1234567890Q', '', 1540.0000, 3, 6, 1562984403, 1566188421, 1, '');
INSERT INTO `y5g_item` VALUES (5, 1, 1, 3, 1, 1, 1, '2019-09-17', 'CS1234567890', '', 1600.0000, 3, 1, 1566188236, 1568733671, 1, '');
INSERT INTO `y5g_item` VALUES (6, 1, 1, 4, 2, 1, 1, '2019-08-19', 'GG7XJ3JNJF8M', '', 2030.0000, 3, 1, 1566206856, 1570353706, 1, '');
INSERT INTO `y5g_item` VALUES (7, 1, 1, 3, 1, 1, 0, '2019-08-26', 'A12345687912', '', 2580.0000, 3, 6, 1566824810, 1566915906, 1, '');
INSERT INTO `y5g_item` VALUES (8, 1, 2, 6, 4, 2, 3, '2019-08-26', 'A12345687952', '', 2150.0000, 3, 6, 1566824937, 1566825387, 3, '');
INSERT INTO `y5g_item` VALUES (9, 1, 1, 3, 1, 1, 0, '2019-08-26', 'A12345687999', '这是一个信息', 1258.0000, 3, 1, 1566825024, 1568733526, 1, '');
INSERT INTO `y5g_item` VALUES (10, 1, 2, 5, 4, 2, 0, '2019-08-26', 'A12345387999', '', 1147.0000, 3, 5, 1566825086, 1567246016, 4, '');
INSERT INTO `y5g_item` VALUES (11, 1, 2, 5, 6, 2, 3, '2019-08-26', 'A12345687957', '', 2581.0000, 3, 3, 1566825375, 1569038123, 3, '11111');
INSERT INTO `y5g_item` VALUES (12, 1, 1, 3, 1, 1, 0, '2019-09-02', 'a25896314712', '', 1500.0000, 3, 1, 1567390049, 1567390049, 1, '');
INSERT INTO `y5g_item` VALUES (13, 1, 1, 3, 1, 1, 0, '2019-09-02', 'A36985217456', '', 2000.0000, 5, 3, 1567406722, 1570262659, 1, '');
INSERT INTO `y5g_item` VALUES (14, 3, 18, 44, 49, 6, 54, '2019-09-02', 'A78945632121', '这是一个备注，这里面是一个备注.这是一个备注，这里面是一个备注.\n这是一个备注，这里面是一个备注\n这是一个备注，这里面是一个备注\n这是一个备注，这里面是一个备注', 5200.0000, 3, 1, 1567409377, 1568733613, 48, '');
INSERT INTO `y5g_item` VALUES (15, 3, 18, 44, 49, 6, 54, '2019-09-02', 'A36985217455', '这是一个商品备注的测试', 1478.0000, 3, 4, 1567425529, 1570293215, 48, '');
INSERT INTO `y5g_item` VALUES (16, 3, 18, 44, 49, 6, 56, '2019-09-02', 'A12333296354', '就是一个商品备注\n测试', 2520.0000, 3, 5, 1567426335, 1570263575, 50, '');
INSERT INTO `y5g_item` VALUES (17, 1, 1, 3, 1, 1, 1, '2019-09-02', 'GG7XG3K9JMVR', '电池0循环', 2000.0000, 3, 4, 1567429672, 1570293215, 1, '');
INSERT INTO `y5g_item` VALUES (18, 3, 18, 44, 49, 6, 54, '2019-09-03', '20190604-002', '', 1798.0000, 3, 8, 1567526065, 1589281725, 48, '');
INSERT INTO `y5g_item` VALUES (19, 3, 18, 44, 49, 6, 54, '2019-09-03', 'ASE123456789', '1', 2000.0000, 3, 3, 1567526420, 1570353745, 48, '');
INSERT INTO `y5g_item` VALUES (20, 1, 1, 3, 1, 1, 1, '2019-09-05', 'G12356498522', '', 2000.0000, 3, 8, 1567689470, 1589280165, 1, '2222');
INSERT INTO `y5g_item` VALUES (21, 1, 14, 20, 36, 1, 8, '2019-09-05', 'A25896314443', '', 1800.0000, 3, 5, 1567689500, 1570268555, 8, '');
INSERT INTO `y5g_item` VALUES (22, 1, 1, 3, 1, 1, 1, '2019-09-05', 'BCD123652354', '', 1200.0000, 3, 1, 1567689563, 1567689563, 1, '');
INSERT INTO `y5g_item` VALUES (23, 3, 18, 44, 49, 6, 56, '2019-09-05', 'Q32145696322', '', 3000.0000, 3, 1, 1567689591, 1567689591, 50, '');
INSERT INTO `y5g_item` VALUES (24, 3, 15, 39, 38, 6, 40, '2019-09-17', 'CS1234567890', '', 1000.0000, 3, 3, 1568733008, 1568733648, 36, '');
INSERT INTO `y5g_item` VALUES (29, 3, 18, 44, 49, 7, 54, '2020-04-22', '20190604-009', '11111111111111', 11111.0000, 4, 1, 1571564764, 1587549291, 45, '');
INSERT INTO `y5g_item` VALUES (30, 1, 14, 20, 35, 2, 9, '2020-04-24', 'b23132132123', 'aaa', 123.0000, 3, 1, 1587722040, 1587722040, 9, '');
INSERT INTO `y5g_item` VALUES (31, 1, 14, 20, 35, 2, 9, '2020-04-24', 'b23132132121', 'bbbb', 222.0000, 3, 1, 1587722040, 1587722040, 9, '');
INSERT INTO `y5g_item` VALUES (32, 3, 18, 44, 49, 7, 54, '2020-04-24', 'b23132132122', '啊啊啊', 222.0000, 3, 1, 1587722726, 1587722726, 48, '');
INSERT INTO `y5g_item` VALUES (33, 3, 18, 44, 49, 7, 54, '2020-04-24', 'b23132132124', 'bbbb', 222.0000, 3, 1, 1587722867, 1587722867, 48, '');
INSERT INTO `y5g_item` VALUES (34, 3, 18, 44, 49, 7, 54, '2020-04-24', 'b23132132125', 'bbb', 222.0000, 3, 1, 1587723069, 1587723069, 48, '');
INSERT INTO `y5g_item` VALUES (35, 3, 18, 44, 49, 7, 54, '2020-04-24', 'b23132132126', 'aaaa', 123.0000, 3, 1, 1587723596, 1587723596, 48, '');
INSERT INTO `y5g_item` VALUES (36, 3, 18, 44, 49, 7, 54, '2020-05-05', 'B23132132127', '哈哈哈', 222.0000, 3, 1, 1587723615, 1588680956, 45, '');
INSERT INTO `y5g_item` VALUES (37, 1, 4, 14, 10, 2, 5, '2020-05-14', 'AAA123123123', '', 1111.0000, 3, 1, 1589453131, 1589453131, 17, '');
INSERT INTO `y5g_item` VALUES (38, 1, 4, 14, 10, 2, 5, '2020-05-14', 'AAA111123123', '', 123.0000, 3, 1, 1589454039, 1589454039, 17, '');

-- ----------------------------
-- Table structure for y5g_item_appearance
-- ----------------------------
DROP TABLE IF EXISTS `y5g_item_appearance`;
CREATE TABLE `y5g_item_appearance`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '类别id',
  `name_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '名称id',
  `data` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '名称',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '状态 1正常 2失效',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `update_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 53 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '外观表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of y5g_item_appearance
-- ----------------------------
INSERT INTO `y5g_item_appearance` VALUES (2, 1, 1, '深空灰', 1, 1560310529, 1560310529);
INSERT INTO `y5g_item_appearance` VALUES (3, 1, 1, '玫瑰金', 1, 1560310537, 1560310537);
INSERT INTO `y5g_item_appearance` VALUES (4, 1, 3, '银白色1', 1, 1566822168, 1571557031);
INSERT INTO `y5g_item_appearance` VALUES (5, 1, 2, '深空灰', 1, 1566822191, 1566822191);
INSERT INTO `y5g_item_appearance` VALUES (6, 1, 2, '土豪金', 1, 1566822211, 1566822211);
INSERT INTO `y5g_item_appearance` VALUES (7, 1, 3, '银白色', 1, 1566822456, 1566822456);
INSERT INTO `y5g_item_appearance` VALUES (8, 1, 3, '深空灰', 1, 1566822475, 1566822475);
INSERT INTO `y5g_item_appearance` VALUES (9, 1, 3, '土豪金', 1, 1566822493, 1566822493);
INSERT INTO `y5g_item_appearance` VALUES (10, 1, 4, '银白色', 1, 1566822586, 1566822586);
INSERT INTO `y5g_item_appearance` VALUES (11, 1, 4, '土豪金', 1, 1566822597, 1566822597);
INSERT INTO `y5g_item_appearance` VALUES (12, 1, 4, '深空灰', 1, 1566822642, 1566822642);
INSERT INTO `y5g_item_appearance` VALUES (13, 1, 5, '银白色', 1, 1566822689, 1566822689);
INSERT INTO `y5g_item_appearance` VALUES (14, 1, 5, '深空灰', 1, 1566822705, 1566822705);
INSERT INTO `y5g_item_appearance` VALUES (15, 1, 5, '土豪金', 1, 1566822716, 1566822716);
INSERT INTO `y5g_item_appearance` VALUES (16, 1, 6, '银白色', 1, 1566822748, 1566822748);
INSERT INTO `y5g_item_appearance` VALUES (17, 1, 6, '深空灰', 1, 1566822759, 1566822759);
INSERT INTO `y5g_item_appearance` VALUES (18, 1, 6, '土豪金', 1, 1566822773, 1566822773);
INSERT INTO `y5g_item_appearance` VALUES (19, 1, 7, '银白色', 1, 1566822826, 1566822826);
INSERT INTO `y5g_item_appearance` VALUES (20, 1, 7, '深空灰', 1, 1566822834, 1566822834);
INSERT INTO `y5g_item_appearance` VALUES (21, 1, 8, '银白色', 1, 1566822867, 1566822867);
INSERT INTO `y5g_item_appearance` VALUES (22, 1, 8, '深空灰', 1, 1566822874, 1566822874);
INSERT INTO `y5g_item_appearance` VALUES (23, 1, 8, '土豪金', 1, 1566822882, 1566822882);
INSERT INTO `y5g_item_appearance` VALUES (24, 1, 9, '银白色', 1, 1566822890, 1566822890);
INSERT INTO `y5g_item_appearance` VALUES (25, 1, 9, '深空灰', 1, 1566822898, 1566822898);
INSERT INTO `y5g_item_appearance` VALUES (26, 1, 9, '土豪金', 1, 1566822906, 1566822906);
INSERT INTO `y5g_item_appearance` VALUES (27, 1, 10, '银白色', 1, 1566822913, 1566822913);
INSERT INTO `y5g_item_appearance` VALUES (28, 1, 10, '深空灰', 1, 1566822922, 1566822922);
INSERT INTO `y5g_item_appearance` VALUES (29, 1, 12, '银白色', 1, 1566823007, 1566823007);
INSERT INTO `y5g_item_appearance` VALUES (30, 1, 12, '深空灰', 1, 1566823015, 1566823015);
INSERT INTO `y5g_item_appearance` VALUES (31, 1, 13, '银白色', 1, 1566823049, 1566823049);
INSERT INTO `y5g_item_appearance` VALUES (32, 1, 13, '深空灰', 1, 1566823058, 1566823058);
INSERT INTO `y5g_item_appearance` VALUES (33, 1, 13, '土豪金', 1, 1566823067, 1566823067);
INSERT INTO `y5g_item_appearance` VALUES (34, 1, 13, '玫瑰金', 1, 1566823076, 1566823076);
INSERT INTO `y5g_item_appearance` VALUES (35, 1, 14, '银白色', 1, 1566823118, 1566823118);
INSERT INTO `y5g_item_appearance` VALUES (36, 1, 14, '深空灰', 1, 1566823125, 1566823125);
INSERT INTO `y5g_item_appearance` VALUES (37, 1, 14, '土豪金', 1, 1566823138, 1566823138);
INSERT INTO `y5g_item_appearance` VALUES (38, 3, 15, '深空灰色', 1, 1567352444, 1567352444);
INSERT INTO `y5g_item_appearance` VALUES (39, 3, 15, '金色', 1, 1567352461, 1567352461);
INSERT INTO `y5g_item_appearance` VALUES (40, 3, 15, '玫瑰金色', 1, 1567352479, 1567352479);
INSERT INTO `y5g_item_appearance` VALUES (41, 3, 15, '银色', 1, 1567352497, 1567352497);
INSERT INTO `y5g_item_appearance` VALUES (42, 3, 16, '深空灰色', 1, 1567353079, 1567353079);
INSERT INTO `y5g_item_appearance` VALUES (43, 3, 16, '金色', 1, 1567353090, 1567353090);
INSERT INTO `y5g_item_appearance` VALUES (44, 3, 16, '玫瑰金色', 1, 1567353099, 1567353099);
INSERT INTO `y5g_item_appearance` VALUES (45, 3, 16, '银色', 1, 1567353112, 1567353112);
INSERT INTO `y5g_item_appearance` VALUES (46, 3, 17, '深空灰色', 1, 1567355332, 1567355332);
INSERT INTO `y5g_item_appearance` VALUES (47, 3, 17, '金色', 1, 1567355347, 1567355347);
INSERT INTO `y5g_item_appearance` VALUES (48, 3, 17, '银色', 1, 1567355374, 1567355374);
INSERT INTO `y5g_item_appearance` VALUES (49, 3, 18, '深空灰色', 1, 1567355392, 1567355392);
INSERT INTO `y5g_item_appearance` VALUES (50, 3, 18, '金色', 1, 1567355440, 1567355440);
INSERT INTO `y5g_item_appearance` VALUES (51, 3, 18, '银色', 1, 1567355450, 1567355450);
INSERT INTO `y5g_item_appearance` VALUES (52, 1, 2, '樱花粉', 1, 1571555828, 1571555828);

-- ----------------------------
-- Table structure for y5g_item_category
-- ----------------------------
DROP TABLE IF EXISTS `y5g_item_category`;
CREATE TABLE `y5g_item_category`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `data` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '类别',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '状态 1正常 2失效',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `update_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '类别表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of y5g_item_category
-- ----------------------------
INSERT INTO `y5g_item_category` VALUES (1, 'Apple手机1', 1, 1560242536, 1571247051);
INSERT INTO `y5g_item_category` VALUES (2, 'Apple手机2', 1, 1560242536, 1571247051);
INSERT INTO `y5g_item_category` VALUES (3, 'Apple手表', 1, 1560242547, 1560242547);
INSERT INTO `y5g_item_category` VALUES (4, 'Apple配件', 1, 1567356030, 1567356030);

-- ----------------------------
-- Table structure for y5g_item_channel
-- ----------------------------
DROP TABLE IF EXISTS `y5g_item_channel`;
CREATE TABLE `y5g_item_channel`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` tinyint(2) UNSIGNED NOT NULL DEFAULT 0 COMMENT '类型 1:进货渠道 2:出货渠道',
  `data` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '类别',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '状态 1正常 2失效',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `update_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '渠道表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of y5g_item_channel
-- ----------------------------
INSERT INTO `y5g_item_channel` VALUES (2, 2, 'TB-御夫数码行1', 1, 1560310648, 1571558127);
INSERT INTO `y5g_item_channel` VALUES (3, 1, 'FY-通用', 1, 1560311620, 1560311620);
INSERT INTO `y5g_item_channel` VALUES (4, 1, 'YW-传奇', 1, 1567355582, 1567355582);
INSERT INTO `y5g_item_channel` VALUES (5, 1, 'FY-老姚', 1, 1567355672, 1567355672);
INSERT INTO `y5g_item_channel` VALUES (6, 2, 'TB-艾克斯', 1, 1567355756, 1567355756);
INSERT INTO `y5g_item_channel` VALUES (7, 2, 'PDD-数码', 1, 1567355796, 1567355796);
INSERT INTO `y5g_item_channel` VALUES (8, 1, 'FY-媛媛', 1, 1567429371, 1567429371);
INSERT INTO `y5g_item_channel` VALUES (9, 1, 'FY-小伟', 1, 1567429388, 1567429388);
INSERT INTO `y5g_item_channel` VALUES (10, 2, '1111111111', 1, 1571076001, 1571076008);
INSERT INTO `y5g_item_channel` VALUES (11, 1, '1111', 1, 1571558136, 1571558136);

-- ----------------------------
-- Table structure for y5g_item_edition
-- ----------------------------
DROP TABLE IF EXISTS `y5g_item_edition`;
CREATE TABLE `y5g_item_edition`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '类别id',
  `name_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '名称id',
  `data` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '名称',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '状态 1正常 2失效',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `update_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '固件版本表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of y5g_item_edition
-- ----------------------------
INSERT INTO `y5g_item_edition` VALUES (2, 1, 2, 'IOS12.4', 1, 1566823249, 1566823249);
INSERT INTO `y5g_item_edition` VALUES (3, 1, 0, 'IOS12', 1, 1567331797, 1567331797);
INSERT INTO `y5g_item_edition` VALUES (4, 1, 0, 'IOS11', 1, 1567331815, 1567331815);
INSERT INTO `y5g_item_edition` VALUES (5, 1, 0, 'IOS10', 1, 1567331829, 1567331829);
INSERT INTO `y5g_item_edition` VALUES (6, 2, 0, 'watchOS 51', 1, 1567343079, 1571557367);
INSERT INTO `y5g_item_edition` VALUES (7, 3, 0, 'watchOS 6', 1, 1567352216, 1567352216);
INSERT INTO `y5g_item_edition` VALUES (8, 3, 0, 'watchOS 7', 1, 1567352357, 1567352357);

-- ----------------------------
-- Table structure for y5g_item_feature
-- ----------------------------
DROP TABLE IF EXISTS `y5g_item_feature`;
CREATE TABLE `y5g_item_feature`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '类别id',
  `name_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '名称id',
  `data` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '名称',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '状态 1正常 2失效',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `update_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 50 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of y5g_item_feature
-- ----------------------------
INSERT INTO `y5g_item_feature` VALUES (2, 1, 2, '256GB1', 1, 1560247158, 1571555667);
INSERT INTO `y5g_item_feature` VALUES (3, 1, 1, '32GB', 1, 1560309725, 1561728052);
INSERT INTO `y5g_item_feature` VALUES (4, 1, 1, '128GB', 1, 1560309740, 1561728011);
INSERT INTO `y5g_item_feature` VALUES (5, 1, 2, '32GB', 1, 1561728070, 1561728070);
INSERT INTO `y5g_item_feature` VALUES (6, 1, 2, '128GB', 1, 1561728098, 1561728098);
INSERT INTO `y5g_item_feature` VALUES (7, 1, 6, '16GB', 1, 1561728121, 1561728121);
INSERT INTO `y5g_item_feature` VALUES (8, 1, 6, '32GB', 1, 1561728141, 1561728141);
INSERT INTO `y5g_item_feature` VALUES (9, 1, 6, '64GB', 1, 1561728155, 1561728155);
INSERT INTO `y5g_item_feature` VALUES (10, 1, 6, '128GB', 1, 1561728170, 1561728170);
INSERT INTO `y5g_item_feature` VALUES (11, 1, 7, '16GB', 1, 1562382051, 1562382051);
INSERT INTO `y5g_item_feature` VALUES (12, 1, 7, '32GB', 1, 1562382066, 1562382066);
INSERT INTO `y5g_item_feature` VALUES (13, 1, 7, '64GB', 1, 1562382078, 1562382078);
INSERT INTO `y5g_item_feature` VALUES (14, 1, 4, '64GB', 1, 1562382397, 1562382397);
INSERT INTO `y5g_item_feature` VALUES (15, 1, 4, '256GB', 1, 1562382465, 1562382465);
INSERT INTO `y5g_item_feature` VALUES (16, 1, 3, '32G', 1, 1562382502, 1562382502);
INSERT INTO `y5g_item_feature` VALUES (17, 1, 3, '128GB', 1, 1562382517, 1562382517);
INSERT INTO `y5g_item_feature` VALUES (18, 1, 3, '64GB', 1, 1562382535, 1562382535);
INSERT INTO `y5g_item_feature` VALUES (19, 1, 3, '16GB', 1, 1562382688, 1562382688);
INSERT INTO `y5g_item_feature` VALUES (20, 1, 14, '32GB', 1, 1562382794, 1562382794);
INSERT INTO `y5g_item_feature` VALUES (21, 1, 14, '128GB', 1, 1562382819, 1562382819);
INSERT INTO `y5g_item_feature` VALUES (22, 1, 14, '256GB', 1, 1562382844, 1562382844);
INSERT INTO `y5g_item_feature` VALUES (23, 1, 13, '64GB', 1, 1562382903, 1562382903);
INSERT INTO `y5g_item_feature` VALUES (24, 1, 13, '256GB', 1, 1562382916, 1562382916);
INSERT INTO `y5g_item_feature` VALUES (25, 1, 13, '512GB', 1, 1562382928, 1562382928);
INSERT INTO `y5g_item_feature` VALUES (26, 1, 12, '64GB', 1, 1562383131, 1562383131);
INSERT INTO `y5g_item_feature` VALUES (27, 1, 12, '256GB', 1, 1562383153, 1562383153);
INSERT INTO `y5g_item_feature` VALUES (28, 1, 12, '512GB', 1, 1562383166, 1562383166);
INSERT INTO `y5g_item_feature` VALUES (29, 1, 12, '1TB', 1, 1562383182, 1562383182);
INSERT INTO `y5g_item_feature` VALUES (30, 1, 10, '64GB', 1, 1562383211, 1562383211);
INSERT INTO `y5g_item_feature` VALUES (31, 1, 10, '256GB', 1, 1562383222, 1562383222);
INSERT INTO `y5g_item_feature` VALUES (32, 1, 10, '512GB', 1, 1562383236, 1562383236);
INSERT INTO `y5g_item_feature` VALUES (33, 1, 10, '1TB', 1, 1562383247, 1562383247);
INSERT INTO `y5g_item_feature` VALUES (34, 1, 9, '64GB', 1, 1562383279, 1562383279);
INSERT INTO `y5g_item_feature` VALUES (35, 1, 9, '256GB', 1, 1562383344, 1562383344);
INSERT INTO `y5g_item_feature` VALUES (36, 1, 9, '512GB', 1, 1562383353, 1562383353);
INSERT INTO `y5g_item_feature` VALUES (37, 1, 8, '32GB', 1, 1562383370, 1562383370);
INSERT INTO `y5g_item_feature` VALUES (38, 1, 8, '128GB', 1, 1562383383, 1562383383);
INSERT INTO `y5g_item_feature` VALUES (39, 1, 14, '1铝金属', 1, 1567352173, 1571555647);
INSERT INTO `y5g_item_feature` VALUES (40, 3, 16, '铝金属外壳', 1, 1567352839, 1567352839);
INSERT INTO `y5g_item_feature` VALUES (41, 3, 16, '不锈钢外壳', 1, 1567352858, 1567352858);
INSERT INTO `y5g_item_feature` VALUES (42, 3, 17, '铝金属外壳', 1, 1567353614, 1567353614);
INSERT INTO `y5g_item_feature` VALUES (43, 3, 17, '不锈钢外壳', 1, 1567353625, 1567353625);
INSERT INTO `y5g_item_feature` VALUES (44, 3, 18, '铝金属外壳', 1, 1567353652, 1567353652);
INSERT INTO `y5g_item_feature` VALUES (45, 3, 18, '不锈钢外壳', 1, 1567353671, 1567353671);
INSERT INTO `y5g_item_feature` VALUES (46, 1, 3, '123', 2, 1588680010, 1588680017);
INSERT INTO `y5g_item_feature` VALUES (47, 1, 2, '1234', 1, 1588680029, 1588680029);
INSERT INTO `y5g_item_feature` VALUES (48, 1, 14, '513GB', 1, 1588680381, 1588680381);
INSERT INTO `y5g_item_feature` VALUES (49, 1, 14, '512GB', 1, 1588680388, 1588680388);

-- ----------------------------
-- Table structure for y5g_item_history
-- ----------------------------
DROP TABLE IF EXISTS `y5g_item_history`;
CREATE TABLE `y5g_item_history`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `item_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '商品id',
  `event` tinyint(2) UNSIGNED NOT NULL DEFAULT 0 COMMENT '事件{1:进货入库,2:进货审核,3:销售出库,4:销售审核,5:退货入库,6:退货审核}',
  `event_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '事件id',
  `result` tinyint(2) UNSIGNED NOT NULL COMMENT '事件结果{1:成功,2:失败}',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `create_user_id` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '创建人id',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `IDX_ITEM_ID`(`item_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of y5g_item_history
-- ----------------------------
INSERT INTO `y5g_item_history` VALUES (1, 29, 1, 39, 1, 1571564764, NULL);
INSERT INTO `y5g_item_history` VALUES (2, 29, 7, 39, 1, 1587549291, NULL);
INSERT INTO `y5g_item_history` VALUES (3, 30, 1, 40, 1, 1587722040, NULL);
INSERT INTO `y5g_item_history` VALUES (4, 31, 1, 41, 1, 1587722040, NULL);
INSERT INTO `y5g_item_history` VALUES (5, 32, 1, 42, 1, 1587722726, NULL);
INSERT INTO `y5g_item_history` VALUES (6, 33, 1, 43, 1, 1587722867, NULL);
INSERT INTO `y5g_item_history` VALUES (7, 34, 1, 44, 1, 1587723069, NULL);
INSERT INTO `y5g_item_history` VALUES (8, 35, 1, 45, 1, 1587723596, NULL);
INSERT INTO `y5g_item_history` VALUES (9, 36, 1, 46, 1, 1587723615, NULL);
INSERT INTO `y5g_item_history` VALUES (10, 36, 7, 46, 1, 1588680956, 4);
INSERT INTO `y5g_item_history` VALUES (11, 37, 1, 47, 1, 1589453131, 0);
INSERT INTO `y5g_item_history` VALUES (12, 38, 1, 48, 1, 1589454039, 0);

-- ----------------------------
-- Table structure for y5g_item_income_history
-- ----------------------------
DROP TABLE IF EXISTS `y5g_item_income_history`;
CREATE TABLE `y5g_item_income_history`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` tinyint(2) UNSIGNED NOT NULL COMMENT '类型 1:进货入库 2:退货入库',
  `item_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '库存id',
  `outgo_history_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '出库记录',
  `create_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '录入人id',
  `status` tinyint(2) UNSIGNED NOT NULL COMMENT '状态 1:待审核 2:审核通过 3:审核失败',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `update_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `update_user_id` int(10) UNSIGNED NOT NULL COMMENT '审核人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 49 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '入库历史' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of y5g_item_income_history
-- ----------------------------
INSERT INTO `y5g_item_income_history` VALUES (2, 1, 2, 0, 2, 2, 1562395349, 1562395429, 0);
INSERT INTO `y5g_item_income_history` VALUES (3, 1, 3, 0, 2, 2, 1562395387, 1562984470, 0);
INSERT INTO `y5g_item_income_history` VALUES (4, 2, 1, 1, 2, 2, 1562395584, 1562402386, 0);
INSERT INTO `y5g_item_income_history` VALUES (5, 2, 2, 2, 2, 2, 1562402376, 1562984473, 0);
INSERT INTO `y5g_item_income_history` VALUES (6, 1, 4, 0, 2, 3, 1562984403, 1566188421, 0);
INSERT INTO `y5g_item_income_history` VALUES (7, 1, 5, 0, 2, 1, 1566188236, 1568733671, 0);
INSERT INTO `y5g_item_income_history` VALUES (8, 2, 2, 3, 2, 3, 1566188394, 1566188430, 0);
INSERT INTO `y5g_item_income_history` VALUES (9, 2, 2, 3, 2, 2, 1566206553, 1566825345, 0);
INSERT INTO `y5g_item_income_history` VALUES (10, 1, 6, 0, 2, 2, 1566206856, 1566206864, 0);
INSERT INTO `y5g_item_income_history` VALUES (11, 2, 6, 4, 2, 2, 1566207072, 1567341902, 0);
INSERT INTO `y5g_item_income_history` VALUES (12, 1, 7, 0, 2, 3, 1566824810, 1566915905, 0);
INSERT INTO `y5g_item_income_history` VALUES (13, 1, 8, 0, 2, 3, 1566824937, 1566825387, 0);
INSERT INTO `y5g_item_income_history` VALUES (14, 1, 9, 0, 2, 2, 1566825024, 1567390553, 0);
INSERT INTO `y5g_item_income_history` VALUES (15, 1, 10, 0, 2, 2, 1566825086, 1566825355, 0);
INSERT INTO `y5g_item_income_history` VALUES (16, 1, 11, 0, 2, 2, 1566825375, 1566825383, 0);
INSERT INTO `y5g_item_income_history` VALUES (17, 2, 11, 5, 2, 2, 1567389999, 1567655405, 0);
INSERT INTO `y5g_item_income_history` VALUES (18, 1, 12, 0, 2, 1, 1567390049, 1567390049, 0);
INSERT INTO `y5g_item_income_history` VALUES (19, 1, 13, 0, 2, 2, 1567406722, 1567406930, 0);
INSERT INTO `y5g_item_income_history` VALUES (20, 1, 14, 0, 2, 2, 1567409377, 1567409470, 0);
INSERT INTO `y5g_item_income_history` VALUES (21, 1, 15, 0, 2, 2, 1567425529, 1567425599, 0);
INSERT INTO `y5g_item_income_history` VALUES (22, 1, 16, 0, 2, 2, 1567426335, 1567689527, 0);
INSERT INTO `y5g_item_income_history` VALUES (23, 1, 17, 0, 2, 2, 1567429672, 1567429710, 0);
INSERT INTO `y5g_item_income_history` VALUES (24, 1, 18, 0, 1, 2, 1567526065, 1567655408, 0);
INSERT INTO `y5g_item_income_history` VALUES (25, 1, 19, 0, 2, 2, 1567526420, 1567689518, 0);
INSERT INTO `y5g_item_income_history` VALUES (26, 1, 20, 0, 2, 2, 1567689470, 1567689513, 0);
INSERT INTO `y5g_item_income_history` VALUES (27, 1, 21, 0, 2, 2, 1567689500, 1567689506, 0);
INSERT INTO `y5g_item_income_history` VALUES (28, 1, 22, 0, 2, 1, 1567689563, 1567689563, 0);
INSERT INTO `y5g_item_income_history` VALUES (29, 1, 23, 0, 2, 1, 1567689591, 1567689591, 0);
INSERT INTO `y5g_item_income_history` VALUES (30, 1, 24, 0, 2, 2, 1568733008, 1568733016, 0);
INSERT INTO `y5g_item_income_history` VALUES (31, 2, 9, 9, 2, 1, 1568733526, 1568733526, 0);
INSERT INTO `y5g_item_income_history` VALUES (32, 2, 14, 7, 2, 1, 1568733613, 1568733613, 0);
INSERT INTO `y5g_item_income_history` VALUES (33, 2, 6, 8, 1, 1, 1570353706, 1570353706, 0);
INSERT INTO `y5g_item_income_history` VALUES (34, 2, 19, 13, 1, 3, 1570353713, 1570353745, 0);
INSERT INTO `y5g_item_income_history` VALUES (39, 1, 29, 0, 2, 1, 1571564764, 1571564764, 0);
INSERT INTO `y5g_item_income_history` VALUES (40, 1, 30, 0, 4, 1, 1587722040, 1587722040, 4);
INSERT INTO `y5g_item_income_history` VALUES (41, 1, 31, 0, 4, 1, 1587722040, 1587722040, 4);
INSERT INTO `y5g_item_income_history` VALUES (42, 1, 32, 0, 4, 1, 1587722726, 1587722726, 4);
INSERT INTO `y5g_item_income_history` VALUES (43, 1, 33, 0, 4, 1, 1587722867, 1587722867, 4);
INSERT INTO `y5g_item_income_history` VALUES (44, 1, 34, 0, 4, 1, 1587723069, 1587723069, 4);
INSERT INTO `y5g_item_income_history` VALUES (45, 1, 35, 0, 4, 1, 1587723596, 1587723596, 4);
INSERT INTO `y5g_item_income_history` VALUES (46, 1, 36, 0, 4, 1, 1587723615, 1587723615, 4);
INSERT INTO `y5g_item_income_history` VALUES (47, 1, 37, 0, 2, 1, 1589453131, 1589453131, 2);
INSERT INTO `y5g_item_income_history` VALUES (48, 1, 38, 0, 2, 1, 1589454039, 1589454039, 2);

-- ----------------------------
-- Table structure for y5g_item_intelligence
-- ----------------------------
DROP TABLE IF EXISTS `y5g_item_intelligence`;
CREATE TABLE `y5g_item_intelligence`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '型号id',
  `feature_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '配置id',
  `appearance_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '外观id',
  `data` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '识别码',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '状态 1正常 2失效',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `update_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 62 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '智能识别码表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of y5g_item_intelligence
-- ----------------------------
INSERT INTO `y5g_item_intelligence` VALUES (60, 5, 16, 7, '123', 1, 1587558798, 1587558944);
INSERT INTO `y5g_item_intelligence` VALUES (61, 6, 17, 8, '222', 1, 1587561991, 1587562355);

-- ----------------------------
-- Table structure for y5g_item_name
-- ----------------------------
DROP TABLE IF EXISTS `y5g_item_name`;
CREATE TABLE `y5g_item_name`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '类别id',
  `data` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '名称',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '状态 1正常 2失效',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `update_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '名称表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of y5g_item_name
-- ----------------------------
INSERT INTO `y5g_item_name` VALUES (2, 1, 'iPad 2017（5）', 1, 1560244954, 1560244954);
INSERT INTO `y5g_item_name` VALUES (3, 1, 'iPad mini 4', 1, 1560244970, 1560244970);
INSERT INTO `y5g_item_name` VALUES (4, 1, 'iPad mini 5', 1, 1560244978, 1560244978);
INSERT INTO `y5g_item_name` VALUES (5, 1, 'iPad Air3（2019）', 1, 1560244996, 1560244996);
INSERT INTO `y5g_item_name` VALUES (6, 1, 'iPad Air2（2016）', 1, 1560245027, 1560245027);
INSERT INTO `y5g_item_name` VALUES (7, 1, 'iPad Air（2015）', 1, 1560246880, 1560246880);
INSERT INTO `y5g_item_name` VALUES (8, 1, 'Pro 12.9（一代）', 1, 1560246907, 1560246907);
INSERT INTO `y5g_item_name` VALUES (9, 1, 'Pro 12.9（二代）', 1, 1560246939, 1560246939);
INSERT INTO `y5g_item_name` VALUES (10, 1, 'Pro 12.9（三代）', 1, 1560246954, 1560246954);
INSERT INTO `y5g_item_name` VALUES (11, 1, 'Pro 12.9（未出）', 1, 1560246968, 1560246968);
INSERT INTO `y5g_item_name` VALUES (12, 1, 'Pro 11寸', 1, 1560247004, 1560247004);
INSERT INTO `y5g_item_name` VALUES (13, 1, 'Pro 10.5寸', 1, 1560247037, 1560247037);
INSERT INTO `y5g_item_name` VALUES (14, 1, 'Pro 9.7寸', 1, 1562381413, 1562381413);
INSERT INTO `y5g_item_name` VALUES (15, 2, 'Watch S11', 1, 1567344395, 1571248744);
INSERT INTO `y5g_item_name` VALUES (16, 3, 'Watch S2', 1, 1567352731, 1567352731);
INSERT INTO `y5g_item_name` VALUES (17, 3, 'Watch S3', 1, 1567352751, 1567352751);
INSERT INTO `y5g_item_name` VALUES (18, 3, 'Watch S4', 1, 1567352770, 1567352770);
INSERT INTO `y5g_item_name` VALUES (19, 4, 'Watch S12', 1, 1571248278, 1571248278);

-- ----------------------------
-- Table structure for y5g_item_network
-- ----------------------------
DROP TABLE IF EXISTS `y5g_item_network`;
CREATE TABLE `y5g_item_network`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '类别id',
  `name_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '名称id',
  `data` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '名称',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '状态 1正常 2失效',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `update_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  PRIMARY KEY (`id`, `name_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 55 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of y5g_item_network
-- ----------------------------
INSERT INTO `y5g_item_network` VALUES (2, 1, 1, 'Wi-Fi + Cellular', 1, 1562380719, 1562380719);
INSERT INTO `y5g_item_network` VALUES (3, 1, 2, 'Wi-Fi', 1, 1566824356, 1566824356);
INSERT INTO `y5g_item_network` VALUES (4, 1, 2, 'Wi-Fi + Cellular', 1, 1566824376, 1566824376);
INSERT INTO `y5g_item_network` VALUES (5, 1, 3, 'Wi-Fi', 1, 1567329261, 1567329261);
INSERT INTO `y5g_item_network` VALUES (6, 1, 3, 'Wi-Fi + 4G', 1, 1567329302, 1567329302);
INSERT INTO `y5g_item_network` VALUES (7, 1, 14, 'Wi-Fi', 1, 1567329908, 1567329908);
INSERT INTO `y5g_item_network` VALUES (8, 1, 1, 'Wi-Fi + 4G', 1, 1567330042, 1567330042);
INSERT INTO `y5g_item_network` VALUES (9, 1, 14, 'Wi-Fi + 4G', 1, 1567330185, 1567330185);
INSERT INTO `y5g_item_network` VALUES (10, 1, 12, 'Wi-Fi', 1, 1567330759, 1567330759);
INSERT INTO `y5g_item_network` VALUES (11, 1, 12, 'Wi-Fi + Cellular', 1, 1567330809, 1567330809);
INSERT INTO `y5g_item_network` VALUES (12, 1, 6, 'Wi-Fi', 1, 1567331293, 1567331293);
INSERT INTO `y5g_item_network` VALUES (13, 1, 6, 'Wi-Fi + 4G', 1, 1567331342, 1567331342);
INSERT INTO `y5g_item_network` VALUES (14, 1, 7, 'Wi-Fi', 1, 1567331596, 1567331596);
INSERT INTO `y5g_item_network` VALUES (15, 1, 7, 'Wi-Fi + 3G', 1, 1567331636, 1567331636);
INSERT INTO `y5g_item_network` VALUES (16, 1, 7, 'Wi-Fi + 4G (TD-LTE)', 1, 1567331720, 1567331720);
INSERT INTO `y5g_item_network` VALUES (17, 1, 4, 'Wi-Fi', 1, 1567332329, 1567332329);
INSERT INTO `y5g_item_network` VALUES (18, 1, 4, 'Wi-Fi + Cellular', 1, 1567332378, 1567332378);
INSERT INTO `y5g_item_network` VALUES (19, 1, 4, 'Wi-Fi + Cellular(CN)', 1, 1567332784, 1567332784);
INSERT INTO `y5g_item_network` VALUES (20, 1, 5, 'Wi-Fi', 1, 1567333020, 1567333020);
INSERT INTO `y5g_item_network` VALUES (21, 1, 5, 'Wi-Fi + Cellular', 1, 1567333070, 1567333070);
INSERT INTO `y5g_item_network` VALUES (22, 1, 5, 'Wi-Fi + Cellular(CN)', 1, 1567333149, 1567333149);
INSERT INTO `y5g_item_network` VALUES (23, 1, 13, 'Wi-Fi', 1, 1567333451, 1567333451);
INSERT INTO `y5g_item_network` VALUES (24, 1, 13, 'Wi-Fi + Cellular', 1, 1567333475, 1567333475);
INSERT INTO `y5g_item_network` VALUES (25, 1, 13, 'Wi-Fi + Cellular(CN)', 1, 1567333493, 1567333493);
INSERT INTO `y5g_item_network` VALUES (26, 1, 10, 'Wi-Fi', 1, 1567333693, 1567333693);
INSERT INTO `y5g_item_network` VALUES (27, 1, 10, 'Wi-Fi + Cellular', 1, 1567333713, 1567333713);
INSERT INTO `y5g_item_network` VALUES (28, 1, 11, 'Wi-Fi + Cellular', 1, 1567333733, 1567333733);
INSERT INTO `y5g_item_network` VALUES (29, 1, 10, 'Wi-Fi + Cellular(CN)', 1, 1567333758, 1567333758);
INSERT INTO `y5g_item_network` VALUES (30, 1, 9, 'Wi-Fi', 1, 1567333831, 1567333831);
INSERT INTO `y5g_item_network` VALUES (31, 1, 9, 'Wi-Fi + Cellular', 1, 1567333851, 1567333851);
INSERT INTO `y5g_item_network` VALUES (32, 1, 9, 'Wi-Fi + Cellular(CN)', 1, 1567333870, 1567333870);
INSERT INTO `y5g_item_network` VALUES (33, 1, 8, 'Wi-Fi', 1, 1567333906, 1567333906);
INSERT INTO `y5g_item_network` VALUES (34, 1, 8, 'Wi-Fi + Cellular', 1, 1567334347, 1567334347);
INSERT INTO `y5g_item_network` VALUES (35, 3, 15, '38mm', 1, 1567353191, 1567353191);
INSERT INTO `y5g_item_network` VALUES (36, 3, 15, '42mm', 1, 1567353212, 1567353212);
INSERT INTO `y5g_item_network` VALUES (37, 3, 16, '38mm', 1, 1567353312, 1567353312);
INSERT INTO `y5g_item_network` VALUES (38, 3, 16, '42mm', 1, 1567353339, 1567353339);
INSERT INTO `y5g_item_network` VALUES (39, 3, 17, '38mm (GPS)', 1, 1567353815, 1567353815);
INSERT INTO `y5g_item_network` VALUES (40, 3, 17, '42mm (GPS)', 1, 1567353842, 1567353842);
INSERT INTO `y5g_item_network` VALUES (41, 3, 17, '38mm（GPS+蜂窝）', 1, 1567353925, 1567353925);
INSERT INTO `y5g_item_network` VALUES (42, 3, 17, '38mm（GPS+蜂窝）CH', 1, 1567353925, 1567353925);
INSERT INTO `y5g_item_network` VALUES (43, 3, 17, '42mm（GPS+蜂窝）', 1, 1567354501, 1567354501);
INSERT INTO `y5g_item_network` VALUES (44, 3, 17, '42mm（GPS+蜂窝）CH', 1, 1567354563, 1567354563);
INSERT INTO `y5g_item_network` VALUES (45, 3, 18, '40mm（GPS）', 1, 1567354742, 1567354742);
INSERT INTO `y5g_item_network` VALUES (46, 3, 18, '44mm（GPS）', 1, 1567354766, 1567354766);
INSERT INTO `y5g_item_network` VALUES (47, 3, 18, '40mm（GPS+蜂窝）', 1, 1567354818, 1567354818);
INSERT INTO `y5g_item_network` VALUES (48, 3, 18, '40mm（GPS+蜂窝）CH', 1, 1567354956, 1567354956);
INSERT INTO `y5g_item_network` VALUES (49, 3, 18, '44mm（GPS+蜂窝）', 1, 1567355000, 1567355000);
INSERT INTO `y5g_item_network` VALUES (50, 3, 18, '44mm（GPS+蜂窝）CH', 1, 1567355072, 1567355072);
INSERT INTO `y5g_item_network` VALUES (51, 3, 17, '44mm（GPS+蜂窝）CH1', 1, 1571251232, 1571251232);
INSERT INTO `y5g_item_network` VALUES (52, 1, 4, 'Wi-Fi1', 1, 1571554368, 1571554368);
INSERT INTO `y5g_item_network` VALUES (53, 1, 5, 'Wi-Fi1', 1, 1571554956, 1571554956);
INSERT INTO `y5g_item_network` VALUES (54, 1, 4, 'Wi-Fi11', 1, 1571554968, 1571554968);

-- ----------------------------
-- Table structure for y5g_item_outgo_history
-- ----------------------------
DROP TABLE IF EXISTS `y5g_item_outgo_history`;
CREATE TABLE `y5g_item_outgo_history`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `item_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '库存id',
  `date` date NOT NULL COMMENT '出库时间',
  `channel_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '出库途径id',
  `order_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '订单号',
  `consignee_nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '收货人昵称',
  `consignee` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '收货人',
  `consignee_address` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '收货人地址',
  `consignee_phone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '收货人手机号',
  `price` decimal(18, 4) UNSIGNED NOT NULL DEFAULT 0.0000 COMMENT '销售价格',
  `memo` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '备注',
  `status` tinyint(2) UNSIGNED NOT NULL DEFAULT 0 COMMENT '状态 1待审核 2审核通过 3审核失败 4退货',
  `create_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建人id',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `update_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `cost` decimal(18, 4) UNSIGNED NOT NULL COMMENT '营销成本',
  `update_user_id` int(10) UNSIGNED NOT NULL COMMENT '审核人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '出库历史' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of y5g_item_outgo_history
-- ----------------------------
INSERT INTO `y5g_item_outgo_history` VALUES (2, 2, '2019-07-06', 1, '123231', '', '', '', '', 3620.0000, '', 5, 2, 1562402236, 1562984473, 0.0000, 0);
INSERT INTO `y5g_item_outgo_history` VALUES (3, 2, '2019-07-13', 1, '556556665566565656', '', '', '', '', 2000.0000, '', 5, 2, 1562984814, 1566825345, 0.0000, 0);
INSERT INTO `y5g_item_outgo_history` VALUES (4, 6, '2019-08-19', 1, '1234466', '', '', '', '', 2399.0000, '', 5, 2, 1566206909, 1567341902, 0.0000, 0);
INSERT INTO `y5g_item_outgo_history` VALUES (5, 11, '2019-09-01', 1, '454567467567', '', '', '', '', 2681.0000, '', 5, 2, 1567340540, 1567655405, 50.0000, 0);
INSERT INTO `y5g_item_outgo_history` VALUES (6, 6, '2019-09-02', 1, '555656465', '阿瑟', '', '', '', 2565.0000, '我亲热万人沃尔沃人', 3, 2, 1567409681, 1567437859, 36.0000, 0);
INSERT INTO `y5g_item_outgo_history` VALUES (7, 14, '2019-09-02', 1, '123456', '', '', '', '', 2000.0000, '', 4, 2, 1567429798, 1568733613, 200.0000, 0);
INSERT INTO `y5g_item_outgo_history` VALUES (8, 6, '2019-09-05', 1, '454545468465', '', '', '', '', 1200.0000, '', 4, 2, 1567655365, 1570353706, 20.0000, 0);
INSERT INTO `y5g_item_outgo_history` VALUES (9, 9, '2019-09-05', 0, '54545421', '', '', '', '', 2560.0000, '', 4, 2, 1567655380, 1568733526, 36.0000, 0);
INSERT INTO `y5g_item_outgo_history` VALUES (10, 11, '2019-09-05', 1, '201907011-x002', '小111', '', '', '', 2099.0000, '', 2, 1, 1567686982, 1569038123, 200.0000, 0);
INSERT INTO `y5g_item_outgo_history` VALUES (11, 24, '2019-09-17', 1, 'ewrrrr', '', '', '', '', 1200.0000, '', 2, 2, 1568733507, 1568733648, 100.0000, 0);
INSERT INTO `y5g_item_outgo_history` VALUES (12, 13, '2019-09-21', 1, '61230838525957552', '', '', '', '', 5555.0000, '', 2, 2, 1569038116, 1570262659, 50.0000, 0);
INSERT INTO `y5g_item_outgo_history` VALUES (13, 19, '2019-09-21', 0, '612308385259', '', '', '', '', 2100.0000, '', 2, 2, 1569055592, 1570353745, 1.0000, 0);

-- ----------------------------
-- Table structure for y5g_item_type
-- ----------------------------
DROP TABLE IF EXISTS `y5g_item_type`;
CREATE TABLE `y5g_item_type`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '类别id',
  `name_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '名称id',
  `network_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '网络模式id',
  `data` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '名称',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '状态 1正常 2失效',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `update_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 59 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '型号表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of y5g_item_type
-- ----------------------------
INSERT INTO `y5g_item_type` VALUES (2, 1, 1, 2, 'A1954', 1, 1562383928, 1562383928);
INSERT INTO `y5g_item_type` VALUES (3, 1, 2, 3, 'A1822', 1, 1566824572, 1566824572);
INSERT INTO `y5g_item_type` VALUES (4, 1, 2, 4, 'A1823', 1, 1566824590, 1566824590);
INSERT INTO `y5g_item_type` VALUES (5, 1, 4, 54, 'A153811', 1, 1567329261, 1571554968);
INSERT INTO `y5g_item_type` VALUES (6, 1, 3, 6, 'A1550', 1, 1567329302, 1567329302);
INSERT INTO `y5g_item_type` VALUES (7, 1, 14, 7, 'A1673', 1, 1567329908, 1567329908);
INSERT INTO `y5g_item_type` VALUES (8, 1, 14, 8, 'A1674', 1, 1567330042, 1567330042);
INSERT INTO `y5g_item_type` VALUES (9, 1, 14, 9, 'A1675', 1, 1567330185, 1567330185);
INSERT INTO `y5g_item_type` VALUES (10, 1, 12, 10, 'A1980', 1, 1567330759, 1567330759);
INSERT INTO `y5g_item_type` VALUES (11, 1, 12, 11, 'A1979', 1, 1567330809, 1567330809);
INSERT INTO `y5g_item_type` VALUES (12, 1, 12, 11, 'A1934', 1, 1567330844, 1567330844);
INSERT INTO `y5g_item_type` VALUES (13, 1, 12, 11, 'A2013', 1, 1567330857, 1567330857);
INSERT INTO `y5g_item_type` VALUES (14, 1, 6, 12, 'A1566', 1, 1567331293, 1567331293);
INSERT INTO `y5g_item_type` VALUES (15, 1, 6, 13, 'A1567', 1, 1567331342, 1567331342);
INSERT INTO `y5g_item_type` VALUES (16, 1, 7, 14, 'A1474', 1, 1567331596, 1567331596);
INSERT INTO `y5g_item_type` VALUES (17, 1, 7, 15, 'A1475', 1, 1567331636, 1567331636);
INSERT INTO `y5g_item_type` VALUES (18, 1, 7, 16, 'A1476', 1, 1567331720, 1567331720);
INSERT INTO `y5g_item_type` VALUES (19, 1, 4, 17, 'A2133', 1, 1567332329, 1567332467);
INSERT INTO `y5g_item_type` VALUES (20, 1, 4, 18, 'A2124', 1, 1567332378, 1567332378);
INSERT INTO `y5g_item_type` VALUES (21, 1, 4, 18, 'A2126', 1, 1567332597, 1567332597);
INSERT INTO `y5g_item_type` VALUES (22, 1, 4, 19, 'A2125', 1, 1567332784, 1567332784);
INSERT INTO `y5g_item_type` VALUES (23, 1, 5, 20, 'A2152', 1, 1567333020, 1567333020);
INSERT INTO `y5g_item_type` VALUES (24, 1, 5, 21, 'A2123', 1, 1567333070, 1567333070);
INSERT INTO `y5g_item_type` VALUES (25, 1, 5, 21, 'A2153', 1, 1567333102, 1567333102);
INSERT INTO `y5g_item_type` VALUES (26, 1, 5, 22, 'A2154', 1, 1567333149, 1567333149);
INSERT INTO `y5g_item_type` VALUES (27, 1, 13, 23, 'A1701', 1, 1567333451, 1567333451);
INSERT INTO `y5g_item_type` VALUES (28, 1, 13, 24, 'A1709', 1, 1567333475, 1567333475);
INSERT INTO `y5g_item_type` VALUES (29, 1, 13, 25, 'A1852', 1, 1567333493, 1567333493);
INSERT INTO `y5g_item_type` VALUES (30, 1, 10, 26, 'A1876', 1, 1567333693, 1567333693);
INSERT INTO `y5g_item_type` VALUES (31, 1, 10, 27, 'A2014', 1, 1567333713, 1567333713);
INSERT INTO `y5g_item_type` VALUES (32, 1, 10, 28, 'A1895', 1, 1567333733, 1567333733);
INSERT INTO `y5g_item_type` VALUES (33, 1, 10, 29, 'A1983', 1, 1567333758, 1567333758);
INSERT INTO `y5g_item_type` VALUES (34, 1, 9, 30, 'A1670', 1, 1567333831, 1567333831);
INSERT INTO `y5g_item_type` VALUES (35, 1, 9, 31, 'A1671', 1, 1567333851, 1567333851);
INSERT INTO `y5g_item_type` VALUES (36, 1, 9, 32, 'A1821', 1, 1567333870, 1567333870);
INSERT INTO `y5g_item_type` VALUES (37, 1, 8, 33, 'A1584', 1, 1567333906, 1567333906);
INSERT INTO `y5g_item_type` VALUES (38, 1, 8, 34, 'A1652', 1, 1567334347, 1567334347);
INSERT INTO `y5g_item_type` VALUES (39, 3, 15, 35, 'A1802', 1, 1567353191, 1567353191);
INSERT INTO `y5g_item_type` VALUES (40, 3, 15, 36, 'A1803', 1, 1567353212, 1567353212);
INSERT INTO `y5g_item_type` VALUES (41, 3, 16, 37, 'A1757', 1, 1567353312, 1567353312);
INSERT INTO `y5g_item_type` VALUES (42, 3, 16, 38, 'A1758', 1, 1567353339, 1567353339);
INSERT INTO `y5g_item_type` VALUES (43, 3, 17, 39, 'A1858', 1, 1567353815, 1567353815);
INSERT INTO `y5g_item_type` VALUES (44, 3, 17, 40, 'A1859', 1, 1567353842, 1567353842);
INSERT INTO `y5g_item_type` VALUES (45, 3, 17, 41, 'A1860', 1, 1567353925, 1567353925);
INSERT INTO `y5g_item_type` VALUES (46, 3, 17, 41, 'A1889', 1, 1567354027, 1567354027);
INSERT INTO `y5g_item_type` VALUES (47, 3, 17, 42, 'A1890', 1, 1567354046, 1567354046);
INSERT INTO `y5g_item_type` VALUES (48, 3, 17, 43, 'A1861', 1, 1567354501, 1567354501);
INSERT INTO `y5g_item_type` VALUES (49, 3, 17, 43, 'A1891', 1, 1567354528, 1567354528);
INSERT INTO `y5g_item_type` VALUES (50, 3, 17, 44, 'A1892', 1, 1567354563, 1567354563);
INSERT INTO `y5g_item_type` VALUES (51, 3, 18, 45, 'A1977', 1, 1567354742, 1567354742);
INSERT INTO `y5g_item_type` VALUES (52, 3, 18, 46, 'A1978', 1, 1567354766, 1567354766);
INSERT INTO `y5g_item_type` VALUES (53, 3, 18, 47, 'A1975', 1, 1567354818, 1567354818);
INSERT INTO `y5g_item_type` VALUES (54, 3, 18, 48, 'A2007', 1, 1567354956, 1567354956);
INSERT INTO `y5g_item_type` VALUES (55, 3, 18, 49, 'A1976', 1, 1567355000, 1567355000);
INSERT INTO `y5g_item_type` VALUES (56, 3, 18, 50, 'A2008', 1, 1567355072, 1567355101);
INSERT INTO `y5g_item_type` VALUES (57, 3, 17, 51, 'A20081', 1, 1571251232, 1571251232);
INSERT INTO `y5g_item_type` VALUES (58, 1, 4, 52, 'A15381', 1, 1571554368, 1571554368);

-- ----------------------------
-- Table structure for y5g_log
-- ----------------------------
DROP TABLE IF EXISTS `y5g_log`;
CREATE TABLE `y5g_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '操作人',
  `action` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '操作方法',
  `request` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '请求',
  `response` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '返回',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1207 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '日志' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of y5g_log
-- ----------------------------
INSERT INTO `y5g_log` VALUES (2, 1, '日志查询', '[]', 'success', 1559826026);
INSERT INTO `y5g_log` VALUES (3, 1, '日志查询', '[]', 'success', 1559888189);
INSERT INTO `y5g_log` VALUES (4, 1, '日志查询', '[]', 'success', 1559888195);
INSERT INTO `y5g_log` VALUES (5, 2, '登陆', '{\"account\":\"a123456\",\"pwd\":\"a123456\"}', 'success', 1560242477);
INSERT INTO `y5g_log` VALUES (6, 2, '增加类别', '{\"data\":\"Appleu5e73u677f\"}', 'success', 1560242519);
INSERT INTO `y5g_log` VALUES (7, 2, '增加类别', '{\"data\":\"Appleu624bu673a\"}', 'success', 1560242536);
INSERT INTO `y5g_log` VALUES (8, 2, '增加类别', '{\"data\":\"Appleu624bu8868\"}', 'success', 1560242547);
INSERT INTO `y5g_log` VALUES (9, 2, '增加名称', '{\"category_id\":\"1\",\"data\":\"iPad 2018\"}', 'success', 1560244945);
INSERT INTO `y5g_log` VALUES (10, 2, '增加名称', '{\"category_id\":\"1\",\"data\":\"iPad 2017\"}', 'success', 1560244954);
INSERT INTO `y5g_log` VALUES (11, 2, '增加名称', '{\"category_id\":\"1\",\"data\":\"iPad mini4\"}', 'success', 1560244970);
INSERT INTO `y5g_log` VALUES (12, 2, '增加名称', '{\"category_id\":\"1\",\"data\":\"iPad mini5\"}', 'success', 1560244978);
INSERT INTO `y5g_log` VALUES (13, 2, '增加名称', '{\"category_id\":\"1\",\"data\":\"iPad 2019 Air3\"}', 'success', 1560244996);
INSERT INTO `y5g_log` VALUES (14, 2, '增加名称', '{\"category_id\":\"1\",\"data\":\"iPad Air2\"}', 'success', 1560245027);
INSERT INTO `y5g_log` VALUES (15, 2, '增加名称', '{\"category_id\":\"1\",\"data\":\"iPad Pro 9.7\"}', 'success', 1560246880);
INSERT INTO `y5g_log` VALUES (16, 2, '增加名称', '{\"category_id\":\"1\",\"data\":\"iPad Air\"}', 'success', 1560246907);
INSERT INTO `y5g_log` VALUES (17, 2, '增加名称', '{\"category_id\":\"1\",\"data\":\"Pro 12.9u4e00u4ee3\"}', 'success', 1560246939);
INSERT INTO `y5g_log` VALUES (18, 2, '增加名称', '{\"category_id\":\"1\",\"data\":\"Pro 12.9u4e8cu4ee3\"}', 'success', 1560246954);
INSERT INTO `y5g_log` VALUES (19, 2, '增加名称', '{\"category_id\":\"1\",\"data\":\"Pro 12.9u4e09u4ee3\"}', 'success', 1560246968);
INSERT INTO `y5g_log` VALUES (20, 2, '增加名称', '{\"category_id\":\"1\",\"data\":\"iPad Pro 10.5\"}', 'success', 1560247004);
INSERT INTO `y5g_log` VALUES (21, 2, '增加名称', '{\"category_id\":\"1\",\"data\":\"iPad Pro 11u5bf8\"}', 'success', 1560247037);
INSERT INTO `y5g_log` VALUES (22, 2, '增加配置', '{\"name_id\":\"1\",\"data\":\"32G WiFi\"}', 'success', 1560247140);
INSERT INTO `y5g_log` VALUES (23, 2, '增加配置', '{\"name_id\":\"1\",\"data\":\"128G WiFi\"}', 'success', 1560247158);
INSERT INTO `y5g_log` VALUES (24, 2, '在库查询', '[]', 'success', 1560251825);
INSERT INTO `y5g_log` VALUES (25, 2, '增加配置', '{\"name_id\":\"1\",\"data\":\"32G Cellular\"}', 'success', 1560309725);
INSERT INTO `y5g_log` VALUES (26, 2, '增加配置', '{\"name_id\":\"1\",\"data\":\"128G Cellular\"}', 'success', 1560309740);
INSERT INTO `y5g_log` VALUES (27, 2, '增加外观', '{\"name_id\":\"1\",\"data\":\"u94f6u767du8272\"}', 'success', 1560310521);
INSERT INTO `y5g_log` VALUES (28, 2, '增加外观', '{\"name_id\":\"1\",\"data\":\"u6df1u7a7au7070\"}', 'success', 1560310529);
INSERT INTO `y5g_log` VALUES (29, 2, '增加外观', '{\"name_id\":\"1\",\"data\":\"u73abu7470u91d1\"}', 'success', 1560310537);
INSERT INTO `y5g_log` VALUES (30, 2, '增加进货渠道/出货途径', '{\"type\":\"2\",\"data\":\"TBu56dbu9645u6570u7801\"}', 'success', 1560310610);
INSERT INTO `y5g_log` VALUES (31, 2, '增加进货渠道/出货途径', '{\"type\":\"2\",\"data\":\"TBu5fa1u54c1u6570u7801\"}', 'success', 1560310648);
INSERT INTO `y5g_log` VALUES (32, 2, '增加固件版本', '{\"name_id\":\"1\",\"data\":\"IOS12.3\"}', 'success', 1560311084);
INSERT INTO `y5g_log` VALUES (33, 2, '增加型号', '{\"name_id\":\"1\",\"feature_id\":\"1\",\"data\":\"A1893\"}', 'success', 1560311465);
INSERT INTO `y5g_log` VALUES (34, 2, '增加进货渠道/出货途径', '{\"type\":\"1\",\"data\":\"FeiY-u901au7528\"}', 'success', 1560311620);
INSERT INTO `y5g_log` VALUES (35, 2, '进货统计', '[]', 'success', 1560311625);
INSERT INTO `y5g_log` VALUES (36, 2, '在库查询', '[]', 'success', 1560311718);
INSERT INTO `y5g_log` VALUES (37, 2, '登陆', '{\"account\":\"a123456\",\"pwd\":\"a123456\"}', 'success', 1561724487);
INSERT INTO `y5g_log` VALUES (38, 2, '日志查询', '[]', 'success', 1561724777);
INSERT INTO `y5g_log` VALUES (39, 2, '删除配置', '{\"id\":\"4\"}', 'success', 1561728011);
INSERT INTO `y5g_log` VALUES (40, 2, '删除配置', '{\"id\":\"3\"}', 'success', 1561728052);
INSERT INTO `y5g_log` VALUES (41, 2, '删除配置', '{\"id\":\"2\"}', 'success', 1561728056);
INSERT INTO `y5g_log` VALUES (42, 2, '删除配置', '{\"id\":\"1\"}', 'success', 1561728059);
INSERT INTO `y5g_log` VALUES (43, 2, '增加配置', '{\"name_id\":\"1\",\"data\":\"32GB\"}', 'success', 1561728070);
INSERT INTO `y5g_log` VALUES (44, 2, '增加配置', '{\"name_id\":\"1\",\"data\":\"128GB\"}', 'success', 1561728098);
INSERT INTO `y5g_log` VALUES (45, 2, '增加配置', '{\"name_id\":\"6\",\"data\":\"16GB\"}', 'success', 1561728121);
INSERT INTO `y5g_log` VALUES (46, 2, '增加配置', '{\"name_id\":\"6\",\"data\":\"32GB\"}', 'success', 1561728141);
INSERT INTO `y5g_log` VALUES (47, 2, '增加配置', '{\"name_id\":\"6\",\"data\":\"64GB\"}', 'success', 1561728155);
INSERT INTO `y5g_log` VALUES (48, 2, '增加配置', '{\"name_id\":\"6\",\"data\":\"128GB\"}', 'success', 1561728170);
INSERT INTO `y5g_log` VALUES (49, 2, '删除型号', '{\"id\":\"1\"}', 'success', 1561728192);
INSERT INTO `y5g_log` VALUES (50, 1, '登陆', '{\"account\":\"a12345\",\"pwd\":\"a12345\"}', 'success', 1561891901);
INSERT INTO `y5g_log` VALUES (51, 2, '登陆', '{\"account\":\"a123456\",\"pwd\":\"a123456\"}', 'success', 1561945238);
INSERT INTO `y5g_log` VALUES (52, 2, '登陆', '{\"account\":\"a123456\",\"pwd\":\"a123456\"}', 'success', 1561990957);
INSERT INTO `y5g_log` VALUES (53, 1, '登陆', '{\"account\":\"a12345\",\"pwd\":\"a12345\"}', 'success', 1562328384);
INSERT INTO `y5g_log` VALUES (54, 1, '删除类别', '{\"id\":\"1\"}', 'success', 1562328394);
INSERT INTO `y5g_log` VALUES (55, 1, '删除类别', '{\"id\":\"1\"}', 'success', 1562328396);
INSERT INTO `y5g_log` VALUES (56, 1, '权限修改', '{\"user_id\":\"1\",\"nodes\":{\"1\":\"1\",\"2\":\"2\",\"3\":\"3\",\"6\":\"6\",\"7\":\"7\",\"9\":\"9\",\"10\":\"10\",\"12\":\"12\",\"14\":\"14\",\"15\":\"15\",\"17\":\"17\",\"18\":\"18\",\"20\":\"20\",\"21\":\"21\",\"22\":\"22\",\"23\":\"23\",\"24\":\"24\",\"25\":\"25\",\"26\":\"26\",\"27\":\"27\",\"30\":\"30\",\"29\":\"29\"}}', 'success', 1562328413);
INSERT INTO `y5g_log` VALUES (57, 1, '权限修改', '{\"user_id\":\"1\",\"nodes\":{\"1\":\"1\",\"2\":\"2\",\"3\":\"3\",\"6\":\"6\",\"7\":\"7\",\"9\":\"9\",\"10\":\"10\",\"12\":\"12\",\"14\":\"14\",\"15\":\"15\",\"17\":\"17\",\"18\":\"18\",\"20\":\"20\",\"21\":\"21\",\"22\":\"22\",\"23\":\"23\",\"24\":\"24\",\"25\":\"25\",\"26\":\"26\",\"27\":\"27\",\"29\":\"29\"}}', 'success', 1562328494);
INSERT INTO `y5g_log` VALUES (58, 1, '权限修改', '{\"user_id\":\"1\",\"nodes\":{\"1\":\"1\",\"2\":\"2\",\"3\":\"3\",\"6\":\"6\",\"7\":\"7\",\"9\":\"9\",\"10\":\"10\",\"12\":\"12\",\"14\":\"14\",\"15\":\"15\",\"17\":\"17\",\"18\":\"18\",\"20\":\"20\",\"21\":\"21\",\"22\":\"22\",\"23\":\"23\",\"24\":\"24\",\"25\":\"25\",\"26\":\"26\",\"27\":\"27\",\"30\":\"30\",\"29\":\"29\"}}', 'success', 1562328502);
INSERT INTO `y5g_log` VALUES (59, 1, '日志查询', '[]', 'success', 1562328503);
INSERT INTO `y5g_log` VALUES (60, 1, '日志查询', '[]', 'success', 1562329299);
INSERT INTO `y5g_log` VALUES (61, 2, '登陆', '{\"account\":\"a123456\",\"pwd\":\"a123456\"}', 'success', 1562377829);
INSERT INTO `y5g_log` VALUES (62, 2, '在库查询', '[]', 'success', 1562377838);
INSERT INTO `y5g_log` VALUES (63, 2, '权限修改', '{\"user_id\":\"1\",\"nodes\":{\"1\":\"1\",\"2\":\"2\",\"3\":\"3\",\"6\":\"6\",\"7\":\"7\",\"9\":\"9\",\"10\":\"10\",\"12\":\"12\",\"14\":\"14\",\"15\":\"15\",\"17\":\"17\",\"18\":\"18\",\"20\":\"20\",\"21\":\"21\",\"22\":\"22\",\"23\":\"23\",\"24\":\"24\",\"25\":\"25\",\"26\":\"26\",\"27\":\"27\",\"30\":\"30\",\"29\":\"29\"}}', 'success', 1562378037);
INSERT INTO `y5g_log` VALUES (64, 2, '权限修改', '{\"user_id\":\"1\",\"nodes\":{\"1\":\"1\",\"2\":\"2\",\"3\":\"3\",\"6\":\"6\",\"7\":\"7\",\"9\":\"9\",\"10\":\"10\",\"12\":\"12\",\"14\":\"14\",\"15\":\"15\",\"17\":\"17\",\"18\":\"18\",\"20\":\"20\",\"21\":\"21\",\"22\":\"22\",\"23\":\"23\",\"24\":\"24\",\"25\":\"25\",\"26\":\"26\",\"27\":\"27\",\"29\":\"29\"}}', 'success', 1562378043);
INSERT INTO `y5g_log` VALUES (65, 2, '权限修改', '{\"user_id\":\"1\",\"nodes\":{\"1\":\"1\",\"2\":\"2\",\"3\":\"3\",\"6\":\"6\",\"7\":\"7\",\"9\":\"9\",\"10\":\"10\",\"12\":\"12\",\"14\":\"14\",\"15\":\"15\",\"17\":\"17\",\"18\":\"18\",\"20\":\"20\",\"21\":\"21\",\"22\":\"22\",\"23\":\"23\",\"24\":\"24\",\"25\":\"25\",\"26\":\"26\",\"27\":\"27\",\"29\":\"29\"}}', 'success', 1562378045);
INSERT INTO `y5g_log` VALUES (66, 2, '权限修改', '{\"user_id\":\"1\",\"nodes\":{\"1\":\"1\",\"2\":\"2\",\"3\":\"3\",\"6\":\"6\",\"7\":\"7\",\"9\":\"9\",\"10\":\"10\",\"12\":\"12\",\"14\":\"14\",\"15\":\"15\",\"17\":\"17\",\"18\":\"18\",\"20\":\"20\",\"21\":\"21\",\"22\":\"22\",\"23\":\"23\",\"24\":\"24\",\"25\":\"25\",\"26\":\"26\",\"27\":\"27\",\"30\":\"30\",\"29\":\"29\"}}', 'success', 1562378049);
INSERT INTO `y5g_log` VALUES (67, 1, '日志查询', '[]', 'success', 1562378388);
INSERT INTO `y5g_log` VALUES (68, 2, '权限修改', '{\"user_id\":\"2\",\"nodes\":{\"1\":\"1\",\"2\":\"2\",\"3\":\"3\",\"6\":\"6\",\"7\":\"7\",\"9\":\"9\",\"10\":\"10\",\"12\":\"12\",\"14\":\"14\",\"15\":\"15\",\"17\":\"17\",\"18\":\"18\",\"20\":\"20\",\"21\":\"21\",\"22\":\"22\",\"23\":\"23\",\"24\":\"24\",\"25\":\"25\",\"26\":\"26\",\"27\":\"27\",\"30\":\"30\",\"29\":\"29\"}}', 'success', 1562378463);
INSERT INTO `y5g_log` VALUES (69, 2, '权限修改', '{\"user_id\":\"2\",\"nodes\":{\"1\":\"1\",\"2\":\"2\",\"3\":\"3\",\"6\":\"6\",\"7\":\"7\",\"9\":\"9\",\"10\":\"10\",\"12\":\"12\",\"14\":\"14\",\"15\":\"15\",\"17\":\"17\",\"18\":\"18\",\"20\":\"20\",\"21\":\"21\",\"22\":\"22\",\"23\":\"23\",\"24\":\"24\",\"25\":\"25\",\"26\":\"26\",\"27\":\"27\",\"30\":\"30\",\"29\":\"29\"}}', 'success', 1562378473);
INSERT INTO `y5g_log` VALUES (70, 2, '增加名称', '{\"name_id\":\"1\",\"data\":\"WiFi\"}', 'success', 1562378502);
INSERT INTO `y5g_log` VALUES (71, 1, '在库查询', '[]', 'success', 1562378577);
INSERT INTO `y5g_log` VALUES (72, 1, '综合查询', '[]', 'success', 1562378581);
INSERT INTO `y5g_log` VALUES (73, 2, '增加名称', '{\"name_id\":\"1\",\"data\":\"Wi-Fi Cellular\"}', 'success', 1562380719);
INSERT INTO `y5g_log` VALUES (74, 2, '增加名称', '{\"category_id\":\"1\",\"data\":\"Pro 9.7u5bf8\"}', 'success', 1562381413);
INSERT INTO `y5g_log` VALUES (75, 2, '增加配置', '{\"name_id\":\"7\",\"data\":\"16GB\"}', 'success', 1562382051);
INSERT INTO `y5g_log` VALUES (76, 2, '增加配置', '{\"name_id\":\"7\",\"data\":\"32GB\"}', 'success', 1562382066);
INSERT INTO `y5g_log` VALUES (77, 2, '增加配置', '{\"name_id\":\"7\",\"data\":\"64GB\"}', 'success', 1562382078);
INSERT INTO `y5g_log` VALUES (78, 2, '增加配置', '{\"name_id\":\"4\",\"data\":\"64GB\"}', 'success', 1562382397);
INSERT INTO `y5g_log` VALUES (79, 2, '增加配置', '{\"name_id\":\"4\",\"data\":\"256GB\"}', 'success', 1562382465);
INSERT INTO `y5g_log` VALUES (80, 2, '增加配置', '{\"name_id\":\"3\",\"data\":\"32G\"}', 'success', 1562382502);
INSERT INTO `y5g_log` VALUES (81, 2, '增加配置', '{\"name_id\":\"3\",\"data\":\"128GB\"}', 'success', 1562382517);
INSERT INTO `y5g_log` VALUES (82, 2, '增加配置', '{\"name_id\":\"3\",\"data\":\"16GB\"}', 'success', 1562382535);
INSERT INTO `y5g_log` VALUES (83, 2, '增加配置', '{\"name_id\":\"3\",\"data\":\"16GB\"}', 'fail', 1562382550);
INSERT INTO `y5g_log` VALUES (84, 2, '增加配置', '{\"name_id\":\"3\",\"data\":\"16GB\"}', 'success', 1562382688);
INSERT INTO `y5g_log` VALUES (85, 2, '增加配置', '{\"name_id\":\"14\",\"data\":\"32GB\"}', 'success', 1562382794);
INSERT INTO `y5g_log` VALUES (86, 2, '增加配置', '{\"name_id\":\"14\",\"data\":\"128GB\"}', 'success', 1562382819);
INSERT INTO `y5g_log` VALUES (87, 2, '增加配置', '{\"name_id\":\"14\",\"data\":\"256GB\"}', 'success', 1562382844);
INSERT INTO `y5g_log` VALUES (88, 2, '增加配置', '{\"name_id\":\"13\",\"data\":\"64GB\"}', 'success', 1562382903);
INSERT INTO `y5g_log` VALUES (89, 2, '增加配置', '{\"name_id\":\"13\",\"data\":\"256GB\"}', 'success', 1562382916);
INSERT INTO `y5g_log` VALUES (90, 2, '增加配置', '{\"name_id\":\"13\",\"data\":\"512GB\"}', 'success', 1562382928);
INSERT INTO `y5g_log` VALUES (91, 2, '增加配置', '{\"name_id\":\"12\",\"data\":\"64GB\"}', 'success', 1562383131);
INSERT INTO `y5g_log` VALUES (92, 2, '增加配置', '{\"name_id\":\"12\",\"data\":\"256GB\"}', 'success', 1562383153);
INSERT INTO `y5g_log` VALUES (93, 2, '增加配置', '{\"name_id\":\"12\",\"data\":\"512GB\"}', 'success', 1562383166);
INSERT INTO `y5g_log` VALUES (94, 2, '增加配置', '{\"name_id\":\"12\",\"data\":\"1TB\"}', 'success', 1562383182);
INSERT INTO `y5g_log` VALUES (95, 2, '增加配置', '{\"name_id\":\"10\",\"data\":\"64GB\"}', 'success', 1562383211);
INSERT INTO `y5g_log` VALUES (96, 2, '增加配置', '{\"name_id\":\"10\",\"data\":\"256GB\"}', 'success', 1562383222);
INSERT INTO `y5g_log` VALUES (97, 2, '增加配置', '{\"name_id\":\"10\",\"data\":\"512GB\"}', 'success', 1562383236);
INSERT INTO `y5g_log` VALUES (98, 2, '增加配置', '{\"name_id\":\"10\",\"data\":\"1TB\"}', 'success', 1562383247);
INSERT INTO `y5g_log` VALUES (99, 2, '增加配置', '{\"name_id\":\"9\",\"data\":\"64GB\"}', 'success', 1562383279);
INSERT INTO `y5g_log` VALUES (100, 2, '增加配置', '{\"name_id\":\"9\",\"data\":\"256GB\"}', 'success', 1562383344);
INSERT INTO `y5g_log` VALUES (101, 2, '增加配置', '{\"name_id\":\"9\",\"data\":\"512GB\"}', 'success', 1562383353);
INSERT INTO `y5g_log` VALUES (102, 2, '增加配置', '{\"name_id\":\"8\",\"data\":\"32GB\"}', 'success', 1562383370);
INSERT INTO `y5g_log` VALUES (103, 2, '增加配置', '{\"name_id\":\"8\",\"data\":\"128GB\"}', 'success', 1562383383);
INSERT INTO `y5g_log` VALUES (104, 2, '日志查询', '[]', 'success', 1562383407);
INSERT INTO `y5g_log` VALUES (105, 2, '增加型号', '{\"name_id\":\"1\",\"network_id\":\"2\",\"data\":\"A1954\"}', 'success', 1562383928);
INSERT INTO `y5g_log` VALUES (106, 1, '登陆', '{\"account\":\"a12345\",\"pwd\":\"a12345\"}', 'success', 1562384688);
INSERT INTO `y5g_log` VALUES (107, 2, '在库查询', '[]', 'success', 1562384693);
INSERT INTO `y5g_log` VALUES (108, 2, '综合查询', '[]', 'success', 1562384695);
INSERT INTO `y5g_log` VALUES (109, 2, '在库查询', '[]', 'success', 1562394467);
INSERT INTO `y5g_log` VALUES (110, 2, '在库查询', '{\"type_id\":\"0\",\"name_id\":\"0\",\"feature_id\":\"0\",\"appearance_id\":\"0\"}', 'success', 1562394469);
INSERT INTO `y5g_log` VALUES (111, 2, '在库查询', '{\"type_id\":\"0\",\"name_id\":\"0\",\"feature_id\":\"0\",\"appearance_id\":\"0\"}', 'success', 1562394471);
INSERT INTO `y5g_log` VALUES (112, 2, '在库查询', '{\"type_id\":\"2\",\"name_id\":\"0\",\"feature_id\":\"0\",\"appearance_id\":\"0\"}', 'success', 1562395158);
INSERT INTO `y5g_log` VALUES (113, 2, '在库查询', '{\"type_id\":\"2\",\"name_id\":\"1\",\"feature_id\":\"1\",\"appearance_id\":\"0\"}', 'success', 1562395166);
INSERT INTO `y5g_log` VALUES (114, 2, '在库查询', '{\"type_id\":\"2\",\"name_id\":\"1\",\"feature_id\":\"1\",\"appearance_id\":\"1\"}', 'success', 1562395170);
INSERT INTO `y5g_log` VALUES (115, 2, '在库查询', '{\"type_id\":\"1\",\"name_id\":\"1\",\"feature_id\":\"1\",\"appearance_id\":\"1\"}', 'success', 1562395181);
INSERT INTO `y5g_log` VALUES (116, 2, '在库查询', '{\"type_id\":\"1\",\"name_id\":\"4\",\"feature_id\":\"1\",\"appearance_id\":\"1\"}', 'success', 1562395193);
INSERT INTO `y5g_log` VALUES (117, 2, '在库查询', '{\"type_id\":\"1\",\"name_id\":\"4\",\"feature_id\":\"1\",\"appearance_id\":\"0\"}', 'success', 1562395200);
INSERT INTO `y5g_log` VALUES (118, 2, '进货入库', '{\"date\":\"2019-07-06\",\"category_id\":\"1\",\"name_id\":\"1\",\"network_id\":\"1\",\"type_id\":\"1\",\"feature_id\":\"3\",\"appearance_id\":\"1\",\"number\":\"CeshiDDDDDSFJ\",\"edition_id\":\"1\",\"memo\":\"\",\"price\":\"\",\"channel_id\":\"3\"}', 'fail', 1562395228);
INSERT INTO `y5g_log` VALUES (119, 2, '进货入库', '{\"date\":\"2019-07-06\",\"category_id\":\"1\",\"name_id\":\"1\",\"network_id\":\"1\",\"type_id\":\"1\",\"feature_id\":\"3\",\"appearance_id\":\"1\",\"number\":\"\",\"edition_id\":\"1\",\"memo\":\"\",\"price\":\"1000\",\"channel_id\":\"3\"}', 'fail', 1562395234);
INSERT INTO `y5g_log` VALUES (120, 2, '进货入库', '{\"date\":\"2019-07-06\",\"category_id\":\"1\",\"name_id\":\"1\",\"network_id\":\"1\",\"type_id\":\"1\",\"feature_id\":\"3\",\"appearance_id\":\"1\",\"number\":\"\",\"edition_id\":\"1\",\"memo\":\"\",\"price\":\"1000\",\"channel_id\":\"3\"}', 'fail', 1562395238);
INSERT INTO `y5g_log` VALUES (121, 2, '在库查询', '[]', 'success', 1562395241);
INSERT INTO `y5g_log` VALUES (122, 2, '在库查询', '{\"type_id\":\"0\",\"name_id\":\"0\",\"feature_id\":\"0\",\"appearance_id\":\"0\"}', 'success', 1562395243);
INSERT INTO `y5g_log` VALUES (123, 2, '在库查询', '[]', 'success', 1562395249);
INSERT INTO `y5g_log` VALUES (124, 2, '综合查询', '[]', 'success', 1562395251);
INSERT INTO `y5g_log` VALUES (125, 2, '综合查询', '{\"category_id\":\"0\",\"type_id\":\"0\",\"name_id\":\"0\",\"feature_id\":\"0\",\"appearance_id\":\"0\",\"edition_id\":\"0\",\"channel_id\":\"0\",\"date\":\"0\",\"status\":\"0\"}', 'success', 1562395254);
INSERT INTO `y5g_log` VALUES (126, 2, '进货入库', '{\"date\":\"2019-07-06\",\"category_id\":\"1\",\"name_id\":\"1\",\"network_id\":\"1\",\"type_id\":\"1\",\"feature_id\":\"3\",\"appearance_id\":\"1\",\"number\":\"CeshiDDDDDSFJ\",\"edition_id\":\"1\",\"memo\":\"\",\"price\":\"1000\",\"channel_id\":\"3\"}', 'success', 1562395278);
INSERT INTO `y5g_log` VALUES (127, 2, '在库查询', '[]', 'success', 1562395288);
INSERT INTO `y5g_log` VALUES (128, 2, '在库查询', '{\"type_id\":\"0\",\"name_id\":\"0\",\"feature_id\":\"0\",\"appearance_id\":\"0\"}', 'success', 1562395290);
INSERT INTO `y5g_log` VALUES (129, 2, '在库查询', '{\"type_id\":\"0\",\"name_id\":\"0\",\"feature_id\":\"0\",\"appearance_id\":\"0\"}', 'success', 1562395292);
INSERT INTO `y5g_log` VALUES (130, 2, '综合查询', '[]', 'success', 1562395304);
INSERT INTO `y5g_log` VALUES (131, 2, '综合查询', '{\"category_id\":\"0\",\"type_id\":\"0\",\"name_id\":\"0\",\"feature_id\":\"0\",\"appearance_id\":\"0\",\"edition_id\":\"0\",\"channel_id\":\"0\",\"date\":\"0\",\"status\":\"0\"}', 'success', 1562395306);
INSERT INTO `y5g_log` VALUES (132, 2, '进货入库', '{\"date\":\"2019-07-06\",\"category_id\":\"1\",\"name_id\":\"1\",\"network_id\":\"1\",\"type_id\":\"1\",\"feature_id\":\"3\",\"appearance_id\":\"1\",\"number\":\"ESRET5TG54\",\"edition_id\":\"1\",\"memo\":\"\",\"price\":\"1200\",\"channel_id\":\"3\"}', 'success', 1562395349);
INSERT INTO `y5g_log` VALUES (133, 2, '进货入库', '{\"date\":\"2019-07-06\",\"category_id\":\"1\",\"name_id\":\"1\",\"network_id\":\"1\",\"type_id\":\"1\",\"feature_id\":\"3\",\"appearance_id\":\"1\",\"number\":\"ESRET45T555\",\"edition_id\":\"1\",\"memo\":\"u8fd9u53eau662fu4e00u4e2au8bbeu7f6e\",\"price\":\"1500\",\"channel_id\":\"3\"}', 'success', 1562395387);
INSERT INTO `y5g_log` VALUES (134, 2, '通过入库审核', '{\"id\":\"1\"}', 'success', 1562395424);
INSERT INTO `y5g_log` VALUES (135, 2, '通过入库审核', '{\"id\":\"2\"}', 'success', 1562395429);
INSERT INTO `y5g_log` VALUES (136, 2, '出库', '{\"item_id\":\"1\",\"channel_id\":\"1\",\"order_no\":\"5445454545454\",\"price\":\"2000\",\"consignee_nickname\":\"u5febu4e50u7684u8ba1u7b97\",\"consignee\":\"\",\"consignee_address\":\"\",\"consignee_phone\":\"\",\"memo\":\"\"}', 'success', 1562395553);
INSERT INTO `y5g_log` VALUES (137, 2, '通过出库审核', '{\"id\":\"1\"}', 'success', 1562395568);
INSERT INTO `y5g_log` VALUES (138, 2, '退货入库', '{\"id\":\"1\"}', 'success', 1562395584);
INSERT INTO `y5g_log` VALUES (139, 2, '在库查询', '[]', 'success', 1562395599);
INSERT INTO `y5g_log` VALUES (140, 2, '在库查询', '{\"type_id\":\"0\",\"name_id\":\"0\",\"feature_id\":\"0\",\"appearance_id\":\"0\"}', 'success', 1562395601);
INSERT INTO `y5g_log` VALUES (141, 2, '在库查询', '{\"type_id\":\"0\",\"name_id\":\"0\",\"feature_id\":\"0\",\"appearance_id\":\"0\"}', 'success', 1562395602);
INSERT INTO `y5g_log` VALUES (142, 2, '在库查询', '{\"type_id\":\"0\",\"name_id\":\"0\",\"feature_id\":\"0\",\"appearance_id\":\"0\"}', 'success', 1562395604);
INSERT INTO `y5g_log` VALUES (143, 2, '在库查询', '{\"type_id\":\"0\",\"name_id\":\"0\",\"feature_id\":\"0\",\"appearance_id\":\"0\"}', 'success', 1562395605);
INSERT INTO `y5g_log` VALUES (144, 2, '在库查询', '{\"type_id\":\"0\",\"name_id\":\"0\",\"feature_id\":\"0\",\"appearance_id\":\"0\"}', 'success', 1562395606);
INSERT INTO `y5g_log` VALUES (145, 2, '综合查询', '[]', 'success', 1562395614);
INSERT INTO `y5g_log` VALUES (146, 2, '进货统计', '[]', 'success', 1562395634);
INSERT INTO `y5g_log` VALUES (147, 2, '进货统计', '[]', 'success', 1562395643);
INSERT INTO `y5g_log` VALUES (148, 2, '进货统计', '{\"mark\":\"1\",\"start_date\":\"2019-07-06\",\"end_date\":\"2019-07-07\",\"channel_id\":\"0\",\"create_user_id\":\"0\"}', 'success', 1562395649);
INSERT INTO `y5g_log` VALUES (149, 2, '进货统计', '{\"mark\":\"1\",\"start_date\":\"2019-07-06\",\"end_date\":\"2019-07-07\",\"channel_id\":\"3\",\"create_user_id\":\"2\"}', 'success', 1562395654);
INSERT INTO `y5g_log` VALUES (150, 2, '利润统计', '[]', 'success', 1562395667);
INSERT INTO `y5g_log` VALUES (151, 2, '利润统计', '[]', 'success', 1562395671);
INSERT INTO `y5g_log` VALUES (152, 2, '利润统计', '{\"mark\":\"1\",\"start_date\":\"2019-07-06\",\"end_date\":\"2019-07-07\",\"channel_id\":\"0\"}', 'success', 1562395678);
INSERT INTO `y5g_log` VALUES (153, 2, '综合查询', '[]', 'success', 1562395696);
INSERT INTO `y5g_log` VALUES (154, 2, '日志查询', '[]', 'success', 1562395708);
INSERT INTO `y5g_log` VALUES (155, 2, '日志查询', '{\"start_date\":\"\",\"end_date\":\"\",\"user_id\":\"0\",\"action\":\"u8fdbu8d27u5165u5e93\",\"response\":\"0\"}', 'success', 1562395724);
INSERT INTO `y5g_log` VALUES (156, 2, '日志查询', '{\"start_date\":\"\",\"end_date\":\"\",\"user_id\":\"0\",\"action\":\"u9000u8d27u5165u5e93\",\"response\":\"0\"}', 'success', 1562395750);
INSERT INTO `y5g_log` VALUES (157, 2, '日志查询', '{\"start_date\":\"\",\"end_date\":\"\",\"user_id\":\"0\",\"action\":\"u9000u8d27u5165u5e93\",\"response\":\"success\"}', 'success', 1562395757);
INSERT INTO `y5g_log` VALUES (158, 2, '日志查询', '{\"start_date\":\"\",\"end_date\":\"\",\"user_id\":\"2\",\"action\":\"u5220u9664u7c7bu522b\",\"response\":\"success\"}', 'success', 1562395768);
INSERT INTO `y5g_log` VALUES (159, 2, '日志查询', '{\"start_date\":\"\",\"end_date\":\"\",\"user_id\":\"1\",\"action\":\"u8fdbu8d27u5165u5e93\",\"response\":\"success\"}', 'success', 1562395775);
INSERT INTO `y5g_log` VALUES (160, 2, '日志查询', '{\"start_date\":\"\",\"end_date\":\"\",\"user_id\":\"1\",\"action\":\"u8fdbu8d27u5165u5e93\",\"response\":\"success\"}', 'success', 1562395778);
INSERT INTO `y5g_log` VALUES (161, 2, '日志查询', '{\"start_date\":\"\",\"end_date\":\"\",\"user_id\":\"1\",\"action\":\"u8fdbu8d27u5165u5e93\",\"response\":\"success\"}', 'success', 1562395779);
INSERT INTO `y5g_log` VALUES (162, 2, '日志查询', '{\"start_date\":\"\",\"end_date\":\"\",\"user_id\":\"1\",\"action\":\"u8fdbu8d27u5165u5e93\",\"response\":\"success\"}', 'success', 1562395780);
INSERT INTO `y5g_log` VALUES (163, 2, '日志查询', '{\"start_date\":\"\",\"end_date\":\"\",\"user_id\":\"1\",\"action\":\"u8fdbu8d27u5165u5e93\",\"response\":\"success\"}', 'success', 1562395781);
INSERT INTO `y5g_log` VALUES (164, 2, '日志查询', '{\"start_date\":\"\",\"end_date\":\"\",\"user_id\":\"1\",\"action\":\"u8fdbu8d27u5165u5e93\",\"response\":\"success\"}', 'success', 1562395784);
INSERT INTO `y5g_log` VALUES (165, 2, '日志查询', '{\"start_date\":\"\",\"end_date\":\"\",\"user_id\":\"1\",\"action\":\"u8fdbu8d27u5165u5e93\",\"response\":\"0\"}', 'success', 1562395786);
INSERT INTO `y5g_log` VALUES (166, 2, '日志查询', '{\"start_date\":\"\",\"end_date\":\"\",\"user_id\":\"1\",\"action\":\"u8fdbu8d27u5165u5e93\",\"response\":\"fail\"}', 'success', 1562395789);
INSERT INTO `y5g_log` VALUES (167, 2, '日志查询', '{\"start_date\":\"2019-07-06\",\"end_date\":\"2019-07-07\",\"user_id\":\"1\",\"action\":\"u8fdbu8d27u5165u5e93\",\"response\":\"fail\"}', 'success', 1562395795);
INSERT INTO `y5g_log` VALUES (168, 2, '在库查询', '[]', 'success', 1562395803);
INSERT INTO `y5g_log` VALUES (169, 2, '在库查询', '{\"type_id\":\"0\",\"name_id\":\"0\",\"feature_id\":\"0\",\"appearance_id\":\"0\"}', 'success', 1562395805);
INSERT INTO `y5g_log` VALUES (170, 2, '进货统计', '[]', 'success', 1562395842);
INSERT INTO `y5g_log` VALUES (171, 2, '进货统计', '{\"mark\":\"1\",\"start_date\":\"\",\"end_date\":\"\",\"channel_id\":\"0\",\"create_user_id\":\"2\"}', 'success', 1562395846);
INSERT INTO `y5g_log` VALUES (172, 2, '登陆', '{\"account\":\"a123456\",\"pwd\":\"a123456\"}', 'success', 1562395857);
INSERT INTO `y5g_log` VALUES (173, 2, '在库查询', '[]', 'success', 1562395859);
INSERT INTO `y5g_log` VALUES (174, 2, '在库查询', '[]', 'success', 1562395861);
INSERT INTO `y5g_log` VALUES (175, 2, '在库查询', '[]', 'success', 1562395868);
INSERT INTO `y5g_log` VALUES (176, 2, '在库查询', '[]', 'success', 1562395910);
INSERT INTO `y5g_log` VALUES (177, 2, '在库查询', '[]', 'success', 1562395921);
INSERT INTO `y5g_log` VALUES (178, 2, '在库查询', '{\"type_id\":\"0\",\"name_id\":\"0\",\"feature_id\":\"0\",\"appearance_id\":\"0\"}', 'success', 1562395925);
INSERT INTO `y5g_log` VALUES (179, 2, '综合查询', '[]', 'success', 1562395930);
INSERT INTO `y5g_log` VALUES (180, 2, '在库查询', '[]', 'success', 1562396006);
INSERT INTO `y5g_log` VALUES (181, 2, '在库查询', '[]', 'success', 1562396011);
INSERT INTO `y5g_log` VALUES (182, 2, '在库查询', '[]', 'success', 1562396036);
INSERT INTO `y5g_log` VALUES (183, 2, '在库查询', '[]', 'success', 1562396040);
INSERT INTO `y5g_log` VALUES (184, 2, '综合查询', '[]', 'success', 1562396043);
INSERT INTO `y5g_log` VALUES (185, 2, '综合查询', '[]', 'success', 1562396166);
INSERT INTO `y5g_log` VALUES (186, 2, '综合查询', '{\"category_id\":\"0\",\"type_id\":\"1\",\"name_id\":\"0\",\"feature_id\":\"3\",\"appearance_id\":\"0\",\"edition_id\":\"0\",\"channel_id\":\"0\",\"date\":\"0\",\"status\":\"3\"}', 'success', 1562396220);
INSERT INTO `y5g_log` VALUES (187, 2, '在库查询', '[]', 'success', 1562396224);
INSERT INTO `y5g_log` VALUES (188, 2, '综合查询', '[]', 'success', 1562396230);
INSERT INTO `y5g_log` VALUES (189, 2, '综合查询', '[]', 'success', 1562396329);
INSERT INTO `y5g_log` VALUES (190, 2, '综合查询', '{\"category_id\":\"0\",\"type_id\":\"0\",\"name_id\":\"1\",\"feature_id\":\"0\",\"appearance_id\":\"1\",\"edition_id\":\"0\",\"channel_id\":\"3\",\"date\":\"2019-07-06\",\"status\":\"2\"}', 'success', 1562396379);
INSERT INTO `y5g_log` VALUES (191, 2, '在库查询', '[]', 'success', 1562396496);
INSERT INTO `y5g_log` VALUES (192, 2, '在库查询', '[]', 'success', 1562396568);
INSERT INTO `y5g_log` VALUES (193, 2, '利润统计', '[]', 'success', 1562396572);
INSERT INTO `y5g_log` VALUES (194, 2, '在库查询', '[]', 'success', 1562396581);
INSERT INTO `y5g_log` VALUES (195, 2, '在库查询', '[]', 'success', 1562396803);
INSERT INTO `y5g_log` VALUES (196, 2, '在库查询', '[]', 'success', 1562396813);
INSERT INTO `y5g_log` VALUES (197, 2, '在库查询', '[]', 'success', 1562396817);
INSERT INTO `y5g_log` VALUES (198, 2, '在库查询', '[]', 'success', 1562396828);
INSERT INTO `y5g_log` VALUES (199, 2, '综合查询', '[]', 'success', 1562396850);
INSERT INTO `y5g_log` VALUES (200, 2, '在库查询', '[]', 'success', 1562397139);
INSERT INTO `y5g_log` VALUES (201, 2, '在库查询', '[]', 'success', 1562397557);
INSERT INTO `y5g_log` VALUES (202, 2, '在库查询', '[]', 'success', 1562397560);
INSERT INTO `y5g_log` VALUES (203, 2, '出库', '{\"item_id\":\"2\",\"channel_id\":\"1\",\"order_no\":\"123231\",\"price\":\"3620\",\"consignee_nickname\":\"\",\"consignee\":\"\",\"consignee_address\":\"\",\"consignee_phone\":\"\",\"memo\":\"\"}', 'success', 1562402236);
INSERT INTO `y5g_log` VALUES (204, 2, '通过出库审核', '{\"id\":\"2\"}', 'success', 1562402332);
INSERT INTO `y5g_log` VALUES (205, 2, '退货入库', '{\"id\":\"2\"}', 'success', 1562402376);
INSERT INTO `y5g_log` VALUES (206, 2, '通过入库审核', '{\"id\":\"4\"}', 'success', 1562402386);
INSERT INTO `y5g_log` VALUES (207, 2, '在库查询', '[]', 'success', 1562402456);
INSERT INTO `y5g_log` VALUES (208, 2, '综合查询', '[]', 'success', 1562402464);
INSERT INTO `y5g_log` VALUES (209, 2, '日志查询', '[]', 'success', 1562402502);
INSERT INTO `y5g_log` VALUES (210, 2, '进货统计', '[]', 'success', 1562402605);
INSERT INTO `y5g_log` VALUES (211, 2, '进货统计', '{\"mark\":\"1\",\"start_date\":\"2019-07-07\",\"end_date\":\"2019-07-06\",\"channel_id\":\"0\",\"create_user_id\":\"0\"}', 'success', 1562402614);
INSERT INTO `y5g_log` VALUES (212, 2, '进货统计', '{\"mark\":\"1\",\"start_date\":\"2019-07-07\",\"end_date\":\"2019-07-06\",\"channel_id\":\"3\",\"create_user_id\":\"2\"}', 'success', 1562402619);
INSERT INTO `y5g_log` VALUES (213, 2, '进货统计', '{\"mark\":\"1\",\"start_date\":\"2019-07-07\",\"end_date\":\"2019-07-07\",\"channel_id\":\"3\",\"create_user_id\":\"2\"}', 'success', 1562402623);
INSERT INTO `y5g_log` VALUES (214, 2, '进货统计', '[]', 'success', 1562402632);
INSERT INTO `y5g_log` VALUES (215, 2, '进货统计', '[]', 'success', 1562402638);
INSERT INTO `y5g_log` VALUES (216, 2, '利润统计', '[]', 'success', 1562402641);
INSERT INTO `y5g_log` VALUES (217, 2, '进货统计', '[]', 'success', 1562402650);
INSERT INTO `y5g_log` VALUES (218, 2, '进货统计', '[]', 'success', 1562402657);
INSERT INTO `y5g_log` VALUES (219, 2, '利润统计', '[]', 'success', 1562402660);
INSERT INTO `y5g_log` VALUES (220, 2, '进货统计', '[]', 'success', 1562403069);
INSERT INTO `y5g_log` VALUES (221, 2, '进货统计', '[]', 'success', 1562403076);
INSERT INTO `y5g_log` VALUES (222, 2, '进货统计', '[]', 'success', 1562403079);
INSERT INTO `y5g_log` VALUES (223, 2, '进货统计', '[]', 'success', 1562403830);
INSERT INTO `y5g_log` VALUES (224, 2, '利润统计', '[]', 'success', 1562403834);
INSERT INTO `y5g_log` VALUES (225, 2, '进货统计', '[]', 'success', 1562403840);
INSERT INTO `y5g_log` VALUES (226, 2, '登陆', '{\"account\":\"a123456\",\"pwd\":\"a123456\"}', 'success', 1562551490);
INSERT INTO `y5g_log` VALUES (227, 2, '在库查询', '[]', 'success', 1562567738);
INSERT INTO `y5g_log` VALUES (228, 2, '在库查询', '{\"type_id\":\"2\",\"name_id\":\"1\",\"feature_id\":\"1\",\"appearance_id\":\"3\"}', 'success', 1562567755);
INSERT INTO `y5g_log` VALUES (229, 2, '在库查询', '{\"type_id\":\"1\",\"name_id\":\"1\",\"feature_id\":\"3\",\"appearance_id\":\"2\"}', 'success', 1562567764);
INSERT INTO `y5g_log` VALUES (230, 2, '综合查询', '[]', 'success', 1562567778);
INSERT INTO `y5g_log` VALUES (231, 2, '进货统计', '[]', 'success', 1562567815);
INSERT INTO `y5g_log` VALUES (232, 2, '利润统计', '[]', 'success', 1562567819);
INSERT INTO `y5g_log` VALUES (233, 2, '利润统计', '[]', 'success', 1562567822);
INSERT INTO `y5g_log` VALUES (234, 2, '进货统计', '[]', 'success', 1562567825);
INSERT INTO `y5g_log` VALUES (235, 2, '登陆', '{\"account\":\"a123456\",\"pwd\":\"a123456\"}', 'success', 1562723742);
INSERT INTO `y5g_log` VALUES (236, 2, '在库查询', '[]', 'success', 1562723747);
INSERT INTO `y5g_log` VALUES (237, 2, '在库查询', '{\"type_id\":\"2\",\"name_id\":\"2\",\"feature_id\":\"5\",\"appearance_id\":\"3\"}', 'success', 1562723760);
INSERT INTO `y5g_log` VALUES (238, 2, '在库查询', '{\"type_id\":\"2\",\"name_id\":\"4\",\"feature_id\":\"5\",\"appearance_id\":\"3\"}', 'success', 1562723764);
INSERT INTO `y5g_log` VALUES (239, 2, '在库查询', '{\"type_id\":\"1\",\"name_id\":\"4\",\"feature_id\":\"5\",\"appearance_id\":\"3\"}', 'success', 1562723768);
INSERT INTO `y5g_log` VALUES (240, 2, '综合查询', '[]', 'success', 1562723771);
INSERT INTO `y5g_log` VALUES (241, 2, '综合查询', '[]', 'success', 1562723779);
INSERT INTO `y5g_log` VALUES (242, 2, '进货统计', '[]', 'success', 1562723804);
INSERT INTO `y5g_log` VALUES (243, 2, '利润统计', '[]', 'success', 1562723808);
INSERT INTO `y5g_log` VALUES (244, 2, '在库查询', '[]', 'success', 1562723811);
INSERT INTO `y5g_log` VALUES (245, 1, '权限修改', '{\"user_id\":\"1\",\"nodes\":{\"1\":\"1\",\"2\":\"2\",\"3\":\"3\",\"6\":\"6\",\"7\":\"7\",\"9\":\"9\",\"10\":\"10\",\"12\":\"12\",\"31\":\"31\",\"14\":\"14\",\"15\":\"15\",\"18\":\"18\",\"20\":\"20\",\"21\":\"21\",\"22\":\"22\",\"23\":\"23\",\"24\":\"24\",\"25\":\"25\",\"26\":\"26\",\"27\":\"27\",\"30\":\"30\",\"29\":\"29\"}}', 'success', 1562974906);
INSERT INTO `y5g_log` VALUES (246, 1, '权限修改', '{\"user_id\":\"2\",\"nodes\":{\"1\":\"1\",\"2\":\"2\",\"3\":\"3\",\"6\":\"6\",\"7\":\"7\",\"9\":\"9\",\"10\":\"10\",\"12\":\"12\",\"31\":\"31\",\"14\":\"14\",\"15\":\"15\",\"18\":\"18\",\"20\":\"20\",\"21\":\"21\",\"22\":\"22\",\"23\":\"23\",\"24\":\"24\",\"25\":\"25\",\"26\":\"26\",\"27\":\"27\",\"30\":\"30\",\"29\":\"29\"}}', 'success', 1562974911);
INSERT INTO `y5g_log` VALUES (247, 1, '统计', '[]', 'success', 1562974918);
INSERT INTO `y5g_log` VALUES (248, 1, '在库查询', '[]', 'success', 1562974927);
INSERT INTO `y5g_log` VALUES (249, 1, '统计', '[]', 'success', 1562975359);
INSERT INTO `y5g_log` VALUES (250, 1, '统计', '{\"mark\":\"1\",\"start_date\":\"\",\"end_date\":\"\",\"name_id\":\"8\",\"income_channel_id\":\"0\",\"create_user_id\":\"0\",\"outgo_channel_id\":\"0\"}', 'success', 1562975363);
INSERT INTO `y5g_log` VALUES (251, 1, '统计', '{\"mark\":\"1\",\"start_date\":\"\",\"end_date\":\"\",\"name_id\":\"0\",\"income_channel_id\":\"0\",\"create_user_id\":\"0\",\"outgo_channel_id\":\"0\"}', 'success', 1562975366);
INSERT INTO `y5g_log` VALUES (252, 1, '登陆', '{\"account\":\"a12345\",\"pwd\":\"a12345\"}', 'success', 1562982620);
INSERT INTO `y5g_log` VALUES (253, 1, '在库查询', '[]', 'success', 1562982625);
INSERT INTO `y5g_log` VALUES (254, 1, '统计', '[]', 'success', 1562982631);
INSERT INTO `y5g_log` VALUES (255, 1, '日志查询', '[]', 'success', 1562982637);
INSERT INTO `y5g_log` VALUES (256, 1, '日志查询', '[]', 'success', 1562982647);
INSERT INTO `y5g_log` VALUES (257, 2, '登陆', '{\"account\":\"a123456\",\"pwd\":\"a123456\"}', 'success', 1562984157);
INSERT INTO `y5g_log` VALUES (258, 2, '在库查询', '[]', 'success', 1562984169);
INSERT INTO `y5g_log` VALUES (259, 2, '在库查询', '{\"type_id\":\"\",\"name_id\":\"\",\"feature_id\":\"\",\"network_id\":\"\",\"appearance_id\":\"\",\"keyword\":\"CeshiDDDDDSFJ\"}', 'success', 1562984231);
INSERT INTO `y5g_log` VALUES (260, 2, '在库查询', '{\"type_id\":\"\",\"name_id\":\"\",\"feature_id\":\"\",\"network_id\":\"\",\"appearance_id\":\"\",\"keyword\":\"CeshiDDDD\"}', 'success', 1562984236);
INSERT INTO `y5g_log` VALUES (261, 2, '进货入库', '{\"date\":\"2019-07-13\",\"type_id\":\"A1893\",\"category_id\":\"1\",\"name_id\":\"1\",\"network_id\":\"1\",\"feature_id\":\"4\",\"appearance_id\":\"3\",\"number\":\"ssadffrgffff\",\"edition_id\":\"1\",\"memo\":\"\",\"price\":\"\",\"channel_id\":\"3\"}', 'fail', 1562984371);
INSERT INTO `y5g_log` VALUES (262, 2, '进货入库', '{\"date\":\"2019-07-13\",\"type_id\":\"A1893\",\"category_id\":\"1\",\"name_id\":\"1\",\"network_id\":\"1\",\"feature_id\":\"3\",\"appearance_id\":\"1\",\"number\":\"A1234567890Q\",\"edition_id\":\"1\",\"memo\":\"\",\"price\":\"1540\",\"channel_id\":\"3\"}', 'success', 1562984403);
INSERT INTO `y5g_log` VALUES (263, 2, '特殊出库', '{\"item_id\":\"1\",\"type\":\"4\"}', 'fail', 1562984462);
INSERT INTO `y5g_log` VALUES (264, 2, '通过入库审核', '{\"id\":\"3\"}', 'success', 1562984470);
INSERT INTO `y5g_log` VALUES (265, 2, '通过入库审核', '{\"id\":\"5\"}', 'success', 1562984473);
INSERT INTO `y5g_log` VALUES (266, 2, '统计', '[]', 'success', 1562984658);
INSERT INTO `y5g_log` VALUES (267, 2, '统计', '{\"mark\":\"1\",\"start_date\":\"2019-07-13\",\"end_date\":\"2019-07-14\",\"name_id\":\"0\",\"income_channel_id\":\"0\",\"create_user_id\":\"0\",\"outgo_channel_id\":\"0\"}', 'success', 1562984668);
INSERT INTO `y5g_log` VALUES (268, 2, '统计', '{\"mark\":\"1\",\"start_date\":\"2019-07-13\",\"end_date\":\"2019-07-14\",\"name_id\":\"0\",\"income_channel_id\":\"0\",\"create_user_id\":\"0\",\"outgo_channel_id\":\"0\"}', 'success', 1562984670);
INSERT INTO `y5g_log` VALUES (269, 2, '统计', '{\"mark\":\"1\",\"start_date\":\"2019-07-01\",\"end_date\":\"2019-07-14\",\"name_id\":\"0\",\"income_channel_id\":\"0\",\"create_user_id\":\"0\",\"outgo_channel_id\":\"0\"}', 'success', 1562984673);
INSERT INTO `y5g_log` VALUES (270, 2, '销售出库', '{\"item_id\":\"2\",\"channel_id\":\"1\",\"order_no\":\"556556665566565656\",\"price\":\"2000\",\"consignee_nickname\":\"\",\"consignee\":\"\",\"consignee_address\":\"\",\"consignee_phone\":\"\",\"memo\":\"\"}', 'success', 1562984814);
INSERT INTO `y5g_log` VALUES (271, 2, '登陆', '{\"account\":\"a123456\",\"pwd\":\"a123456\"}', 'success', 1562984976);
INSERT INTO `y5g_log` VALUES (272, 2, '通过出库审核', '{\"id\":\"3\"}', 'success', 1562984980);
INSERT INTO `y5g_log` VALUES (273, 2, '综合查询', '[]', 'success', 1562985005);
INSERT INTO `y5g_log` VALUES (274, 2, '特殊出库', '{\"item_id\":\"3\",\"type\":\"5\"}', 'fail', 1562985028);
INSERT INTO `y5g_log` VALUES (275, 2, '在库查询', '[]', 'success', 1562985104);
INSERT INTO `y5g_log` VALUES (276, 1, '统计', '{\"mark\":\"1\",\"start_date\":\"\",\"end_date\":\"\",\"name_id\":\"0\",\"income_channel_id\":\"0\",\"create_user_id\":\"0\",\"outgo_channel_id\":\"0\"}', 'success', 1563067039);
INSERT INTO `y5g_log` VALUES (277, 2, '登陆', '{\"account\":\"a123456\",\"pwd\":\"a123456\"}', 'success', 1566187992);
INSERT INTO `y5g_log` VALUES (278, 2, '日志查询', '[]', 'success', 1566188141);
INSERT INTO `y5g_log` VALUES (279, 2, '日志查询', '{\"page\":\"28\"}', 'success', 1566188147);
INSERT INTO `y5g_log` VALUES (280, 2, '日志查询', '{\"page\":\"1\"}', 'success', 1566188149);
INSERT INTO `y5g_log` VALUES (281, 2, '日志查询', '[]', 'success', 1566188156);
INSERT INTO `y5g_log` VALUES (282, 2, '日志查询', '[]', 'success', 1566188157);
INSERT INTO `y5g_log` VALUES (283, 2, '在库查询', '[]', 'success', 1566188162);
INSERT INTO `y5g_log` VALUES (284, 2, '进货入库', '{\"date\":\"2019-08-19\",\"type_id\":\"A1893\",\"category_id\":\"1\",\"name_id\":\"1\",\"network_id\":\"1\",\"feature_id\":\"3\",\"appearance_id\":\"1\",\"number\":\"GG7XG3K8JMVR\",\"edition_id\":\"1\",\"memo\":\"\",\"price\":\"\",\"channel_id\":\"3\"}', 'fail', 1566188213);
INSERT INTO `y5g_log` VALUES (285, 2, '进货入库', '{\"date\":\"2019-08-19\",\"type_id\":\"A1893\",\"category_id\":\"1\",\"name_id\":\"1\",\"network_id\":\"1\",\"feature_id\":\"3\",\"appearance_id\":\"3\",\"number\":\"GG7XG3K8JMVR\",\"edition_id\":\"1\",\"memo\":\"\",\"price\":\"1600\",\"channel_id\":\"3\"}', 'success', 1566188236);
INSERT INTO `y5g_log` VALUES (286, 2, '在库查询', '[]', 'success', 1566188243);
INSERT INTO `y5g_log` VALUES (287, 2, '在库查询', '{\"type_id\":\"\",\"name_id\":\"\",\"feature_id\":\"\",\"network_id\":\"\",\"appearance_id\":\"\",\"keyword\":\"\"}', 'success', 1566188246);
INSERT INTO `y5g_log` VALUES (288, 2, '在库查询', '{\"type_id\":\"A1893\",\"name_id\":\"iPad 2018uff086uff09\",\"feature_id\":\"32GB\",\"network_id\":\"\",\"appearance_id\":\"u73abu7470u91d1\",\"keyword\":\"\"}', 'success', 1566188259);
INSERT INTO `y5g_log` VALUES (289, 2, '在库查询', '{\"type_id\":\"A1893\",\"name_id\":\"iPad 2018uff086uff09\",\"feature_id\":\"32GB\",\"network_id\":\"\",\"appearance_id\":\"u73abu7470u91d1\",\"keyword\":\"\"}', 'success', 1566188260);
INSERT INTO `y5g_log` VALUES (290, 2, '综合查询', '[]', 'success', 1566188266);
INSERT INTO `y5g_log` VALUES (291, 2, '综合查询', '{\"category_id\":\"\",\"type_id\":\"\",\"name_id\":\"\",\"feature_id\":\"\",\"network_id\":\"Wi-Fi\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\"}', 'success', 1566188384);
INSERT INTO `y5g_log` VALUES (292, 2, '退货入库', '{\"id\":\"3\"}', 'success', 1566188394);
INSERT INTO `y5g_log` VALUES (293, 2, '拒绝入库审核', '{\"id\":\"6\"}', 'success', 1566188421);
INSERT INTO `y5g_log` VALUES (294, 2, '拒绝入库审核', '{\"id\":[\"7\",\"8\"]}', 'success', 1566188430);
INSERT INTO `y5g_log` VALUES (295, 2, '拒绝入库审核', '{\"id\":[\"7\",\"8\"]}', 'success', 1566188430);
INSERT INTO `y5g_log` VALUES (296, 2, '在库查询', '[]', 'success', 1566188438);
INSERT INTO `y5g_log` VALUES (297, 2, '日志查询', '[]', 'success', 1566188526);
INSERT INTO `y5g_log` VALUES (298, 2, '权限修改', '{\"user_id\":\"1\",\"nodes\":{\"1\":\"1\",\"2\":\"2\",\"3\":\"3\",\"6\":\"6\",\"7\":\"7\",\"9\":\"9\",\"10\":\"10\",\"12\":\"12\",\"31\":\"31\",\"14\":\"14\",\"15\":\"15\",\"18\":\"18\",\"20\":\"20\",\"21\":\"21\",\"22\":\"22\",\"23\":\"23\",\"24\":\"24\",\"25\":\"25\",\"26\":\"26\",\"27\":\"27\",\"30\":\"30\",\"29\":\"29\"}}', 'success', 1566188533);
INSERT INTO `y5g_log` VALUES (299, 2, '统计', '[]', 'success', 1566188534);
INSERT INTO `y5g_log` VALUES (300, 2, '在库查询', '[]', 'success', 1566188545);
INSERT INTO `y5g_log` VALUES (301, 2, '在库查询', '{\"type_id\":\"\",\"name_id\":\"\",\"feature_id\":\"\",\"network_id\":\"\",\"appearance_id\":\"u73abu7470u91d1\",\"keyword\":\"GG7XG3K8JMVR\"}', 'success', 1566188557);
INSERT INTO `y5g_log` VALUES (302, 2, '在库查询', '{\"type_id\":\"A1893\",\"name_id\":\"iPad 2018uff086uff09\",\"feature_id\":\"32GB\",\"network_id\":\"\",\"appearance_id\":\"\",\"keyword\":\"GG7XG3K8JMVR\"}', 'success', 1566188567);
INSERT INTO `y5g_log` VALUES (303, 2, '在库查询', '{\"type_id\":\"A1893\",\"name_id\":\"iPad 2018uff086uff09\",\"feature_id\":\"32GB\",\"network_id\":\"\",\"appearance_id\":\"\",\"keyword\":\"GG7XG3K8JMVR\"}', 'success', 1566188568);
INSERT INTO `y5g_log` VALUES (304, 2, '在库查询', '[]', 'success', 1566188572);
INSERT INTO `y5g_log` VALUES (305, 2, '登陆', '{\"account\":\"a123456\",\"pwd\":\"a123456\"}', 'success', 1566206469);
INSERT INTO `y5g_log` VALUES (306, 2, '在库查询', '[]', 'success', 1566206474);
INSERT INTO `y5g_log` VALUES (307, 2, '日志查询', '[]', 'success', 1566206524);
INSERT INTO `y5g_log` VALUES (308, 2, '日志查询', '[]', 'success', 1566206528);
INSERT INTO `y5g_log` VALUES (309, 2, '综合查询', '[]', 'success', 1566206531);
INSERT INTO `y5g_log` VALUES (310, 2, '退货入库', '{\"id\":\"3\"}', 'success', 1566206553);
INSERT INTO `y5g_log` VALUES (311, 2, '综合查询', '[]', 'success', 1566206566);
INSERT INTO `y5g_log` VALUES (312, 2, '综合查询', '{\"category_id\":\"\",\"type_id\":\"A1893\",\"name_id\":\"\",\"feature_id\":\"\",\"network_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\"}', 'success', 1566206574);
INSERT INTO `y5g_log` VALUES (313, 2, '综合查询', '{\"category_id\":\"\",\"type_id\":\"A1893\",\"name_id\":\"\",\"feature_id\":\"\",\"network_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\"}', 'success', 1566206575);
INSERT INTO `y5g_log` VALUES (314, 2, '综合查询', '{\"category_id\":\"\",\"type_id\":\"A1893\",\"name_id\":\"\",\"feature_id\":\"\",\"network_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\"}', 'success', 1566206575);
INSERT INTO `y5g_log` VALUES (315, 2, '综合查询', '{\"category_id\":\"\",\"type_id\":\"A1893\",\"name_id\":\"\",\"feature_id\":\"\",\"network_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\"}', 'success', 1566206575);
INSERT INTO `y5g_log` VALUES (316, 2, '综合查询', '{\"category_id\":\"\",\"type_id\":\"A1893\",\"name_id\":\"\",\"feature_id\":\"\",\"network_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\"}', 'success', 1566206576);
INSERT INTO `y5g_log` VALUES (317, 2, '综合查询', '{\"category_id\":\"\",\"type_id\":\"A1893\",\"name_id\":\"\",\"feature_id\":\"\",\"network_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\"}', 'success', 1566206576);
INSERT INTO `y5g_log` VALUES (318, 2, '综合查询', '{\"category_id\":\"\",\"type_id\":\"A1954\",\"name_id\":\"\",\"feature_id\":\"\",\"network_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\"}', 'success', 1566206579);
INSERT INTO `y5g_log` VALUES (319, 2, '综合查询', '{\"category_id\":\"\",\"type_id\":\"\",\"name_id\":\"\",\"feature_id\":\"\",\"network_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\"}', 'success', 1566206584);
INSERT INTO `y5g_log` VALUES (320, 2, '综合查询', '{\"category_id\":\"\",\"type_id\":\"\",\"name_id\":\"\",\"feature_id\":\"64GB\",\"network_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\"}', 'success', 1566206592);
INSERT INTO `y5g_log` VALUES (321, 2, '综合查询', '{\"category_id\":\"\",\"type_id\":\"A1893\",\"name_id\":\"\",\"feature_id\":\"32GB\",\"network_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\"}', 'success', 1566206612);
INSERT INTO `y5g_log` VALUES (322, 2, '综合查询', '{\"category_id\":\"\",\"type_id\":\"A1893\",\"name_id\":\"\",\"feature_id\":\"32GB\",\"network_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"TBu5fa1u54c1u6570u7801\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\"}', 'success', 1566206623);
INSERT INTO `y5g_log` VALUES (323, 2, '在库查询', '[]', 'success', 1566206637);
INSERT INTO `y5g_log` VALUES (324, 2, '在库查询', '[]', 'success', 1566206704);
INSERT INTO `y5g_log` VALUES (325, 2, '综合查询', '[]', 'success', 1566206707);
INSERT INTO `y5g_log` VALUES (326, 2, '在库查询', '[]', 'success', 1566206719);
INSERT INTO `y5g_log` VALUES (327, 2, '在库查询', '[]', 'success', 1566206793);
INSERT INTO `y5g_log` VALUES (328, 2, '进货入库', '{\"date\":\"2019-08-19\",\"type_id\":\"A1893\",\"category_id\":\"1\",\"name_id\":\"1\",\"network_id\":\"1\",\"feature_id\":\"4\",\"appearance_id\":\"2\",\"number\":\"GG7XJ3JNJF8M\",\"edition_id\":\"1\",\"memo\":\"\",\"price\":\"2030\",\"channel_id\":\"3\"}', 'success', 1566206856);
INSERT INTO `y5g_log` VALUES (329, 2, '通过入库审核', '{\"id\":\"10\"}', 'success', 1566206864);
INSERT INTO `y5g_log` VALUES (330, 2, '销售出库', '{\"item_id\":\"6\",\"channel_id\":\"1\",\"order_no\":\"1234466\",\"price\":\"2399\",\"consignee_nickname\":\"\",\"consignee\":\"\",\"consignee_address\":\"\",\"consignee_phone\":\"\",\"memo\":\"\"}', 'success', 1566206909);
INSERT INTO `y5g_log` VALUES (331, 2, '通过出库审核', '{\"id\":\"4\"}', 'success', 1566206921);
INSERT INTO `y5g_log` VALUES (332, 2, '在库查询', '[]', 'success', 1566206929);
INSERT INTO `y5g_log` VALUES (333, 2, '统计', '[]', 'success', 1566206931);
INSERT INTO `y5g_log` VALUES (334, 2, '统计', '[]', 'success', 1566206940);
INSERT INTO `y5g_log` VALUES (335, 2, '统计', '{\"mark\":\"1\",\"start_date\":\"2019-08-19\",\"end_date\":\"\",\"name_id\":\"0\",\"income_channel_id\":\"0\",\"create_user_id\":\"0\",\"outgo_channel_id\":\"0\"}', 'success', 1566206942);
INSERT INTO `y5g_log` VALUES (336, 2, '退货入库', '{\"id\":\"4\"}', 'success', 1566207072);
INSERT INTO `y5g_log` VALUES (337, 2, '在库查询', '[]', 'success', 1566207079);
INSERT INTO `y5g_log` VALUES (338, 2, '日志查询', '[]', 'success', 1566207154);
INSERT INTO `y5g_log` VALUES (339, 2, '在库查询', '[]', 'success', 1566207163);
INSERT INTO `y5g_log` VALUES (340, 2, '登陆', '{\"account\":\"a123456\",\"pwd\":\"a123456\"}', 'success', 1566821520);
INSERT INTO `y5g_log` VALUES (341, 2, '在库查询', '[]', 'success', 1566821533);
INSERT INTO `y5g_log` VALUES (342, 2, '增加外观', '{\"name_id\":\"2\",\"data\":\"u94f6u767du8272\"}', 'success', 1566822168);
INSERT INTO `y5g_log` VALUES (343, 2, '增加外观', '{\"name_id\":\"2\",\"data\":\"u6df1u7a7au7070u8272\"}', 'success', 1566822191);
INSERT INTO `y5g_log` VALUES (344, 2, '增加外观', '{\"name_id\":\"2\",\"data\":\"u571fu8c6au91d1\"}', 'success', 1566822211);
INSERT INTO `y5g_log` VALUES (345, 2, '增加外观', '{\"name_id\":\"3\",\"data\":\"u94f6u767du8272\"}', 'success', 1566822456);
INSERT INTO `y5g_log` VALUES (346, 2, '增加外观', '{\"name_id\":\"3\",\"data\":\"u6df1u7a7au7070\"}', 'success', 1566822475);
INSERT INTO `y5g_log` VALUES (347, 2, '增加外观', '{\"name_id\":\"3\",\"data\":\"u571fu8c6au91d1\"}', 'success', 1566822493);
INSERT INTO `y5g_log` VALUES (348, 2, '增加外观', '{\"name_id\":\"4\",\"data\":\"u94f6u767du8272\"}', 'success', 1566822586);
INSERT INTO `y5g_log` VALUES (349, 2, '增加外观', '{\"name_id\":\"4\",\"data\":\"u571fu8c6au91d1\"}', 'success', 1566822597);
INSERT INTO `y5g_log` VALUES (350, 2, '增加外观', '{\"name_id\":\"4\",\"data\":\"u6df1u7a7au7070\"}', 'success', 1566822642);
INSERT INTO `y5g_log` VALUES (351, 2, '增加外观', '{\"name_id\":\"5\",\"data\":\"u94f6u767du8272\"}', 'success', 1566822689);
INSERT INTO `y5g_log` VALUES (352, 2, '增加外观', '{\"name_id\":\"5\",\"data\":\"u6df1u7a7au7070\"}', 'success', 1566822705);
INSERT INTO `y5g_log` VALUES (353, 2, '增加外观', '{\"name_id\":\"5\",\"data\":\"u571fu8c6au91d1\"}', 'success', 1566822716);
INSERT INTO `y5g_log` VALUES (354, 2, '增加外观', '{\"name_id\":\"6\",\"data\":\"u94f6u767du8272\"}', 'success', 1566822748);
INSERT INTO `y5g_log` VALUES (355, 2, '增加外观', '{\"name_id\":\"6\",\"data\":\"u6df1u7a7au7070\"}', 'success', 1566822759);
INSERT INTO `y5g_log` VALUES (356, 2, '增加外观', '{\"name_id\":\"6\",\"data\":\"u571fu8c6au91d1\"}', 'success', 1566822773);
INSERT INTO `y5g_log` VALUES (357, 2, '增加外观', '{\"name_id\":\"7\",\"data\":\"u94f6u767du8272\"}', 'success', 1566822826);
INSERT INTO `y5g_log` VALUES (358, 2, '增加外观', '{\"name_id\":\"7\",\"data\":\"u6df1u7a7au7070\"}', 'success', 1566822834);
INSERT INTO `y5g_log` VALUES (359, 2, '增加外观', '{\"name_id\":\"8\",\"data\":\"u94f6u767du8272\"}', 'success', 1566822867);
INSERT INTO `y5g_log` VALUES (360, 2, '增加外观', '{\"name_id\":\"8\",\"data\":\"u6df1u7a7au7070\"}', 'success', 1566822874);
INSERT INTO `y5g_log` VALUES (361, 2, '增加外观', '{\"name_id\":\"8\",\"data\":\"u571fu8c6au91d1\"}', 'success', 1566822882);
INSERT INTO `y5g_log` VALUES (362, 2, '增加外观', '{\"name_id\":\"9\",\"data\":\"u94f6u767du8272\"}', 'success', 1566822890);
INSERT INTO `y5g_log` VALUES (363, 2, '增加外观', '{\"name_id\":\"9\",\"data\":\"u6df1u7a7au7070\"}', 'success', 1566822898);
INSERT INTO `y5g_log` VALUES (364, 2, '增加外观', '{\"name_id\":\"9\",\"data\":\"u571fu8c6au91d1\"}', 'success', 1566822906);
INSERT INTO `y5g_log` VALUES (365, 2, '增加外观', '{\"name_id\":\"10\",\"data\":\"u94f6u767du8272\"}', 'success', 1566822913);
INSERT INTO `y5g_log` VALUES (366, 2, '增加外观', '{\"name_id\":\"10\",\"data\":\"u6df1u7a7au7070\"}', 'success', 1566822922);
INSERT INTO `y5g_log` VALUES (367, 2, '增加外观', '{\"name_id\":\"12\",\"data\":\"u94f6u767du8272\"}', 'success', 1566823007);
INSERT INTO `y5g_log` VALUES (368, 2, '增加外观', '{\"name_id\":\"12\",\"data\":\"u6df1u7a7au7070\"}', 'success', 1566823015);
INSERT INTO `y5g_log` VALUES (369, 2, '增加外观', '{\"name_id\":\"12\",\"data\":\"u6df1u7a7au7070\"}', 'fail', 1566823030);
INSERT INTO `y5g_log` VALUES (370, 2, '增加外观', '{\"name_id\":\"13\",\"data\":\"u94f6u767du8272\"}', 'success', 1566823049);
INSERT INTO `y5g_log` VALUES (371, 2, '增加外观', '{\"name_id\":\"13\",\"data\":\"u6df1u7a7au7070\"}', 'success', 1566823058);
INSERT INTO `y5g_log` VALUES (372, 2, '增加外观', '{\"name_id\":\"13\",\"data\":\"u571fu8c6au91d1\"}', 'success', 1566823067);
INSERT INTO `y5g_log` VALUES (373, 2, '增加外观', '{\"name_id\":\"13\",\"data\":\"u73abu7470u91d1\"}', 'success', 1566823076);
INSERT INTO `y5g_log` VALUES (374, 2, '增加外观', '{\"name_id\":\"13\",\"data\":\"u94f6u767du8272\"}', 'fail', 1566823106);
INSERT INTO `y5g_log` VALUES (375, 2, '增加外观', '{\"name_id\":\"14\",\"data\":\"u94f6u767du8272\"}', 'success', 1566823118);
INSERT INTO `y5g_log` VALUES (376, 2, '增加外观', '{\"name_id\":\"14\",\"data\":\"u6df1u7a7au7070\"}', 'success', 1566823125);
INSERT INTO `y5g_log` VALUES (377, 2, '增加外观', '{\"name_id\":\"14\",\"data\":\"u571fu8c6au91d1\"}', 'success', 1566823138);
INSERT INTO `y5g_log` VALUES (378, 2, '增加固件版本', '{\"name_id\":\"2\",\"data\":\"IOS12.4\"}', 'success', 1566823249);
INSERT INTO `y5g_log` VALUES (379, 2, '增加名称', '{\"name_id\":\"2\",\"data\":\"Wi-Fi\"}', 'success', 1566824356);
INSERT INTO `y5g_log` VALUES (380, 2, '增加名称', '{\"name_id\":\"1\",\"data\":\"Wi-Fi + Cellular\"}', 'fail', 1566824364);
INSERT INTO `y5g_log` VALUES (381, 2, '增加名称', '{\"name_id\":\"2\",\"data\":\"Wi-Fi + Cellular\"}', 'success', 1566824376);
INSERT INTO `y5g_log` VALUES (382, 2, '增加型号', '{\"name_id\":\"2\",\"network_id\":\"3\",\"data\":\"A1822\"}', 'success', 1566824572);
INSERT INTO `y5g_log` VALUES (383, 2, '增加型号', '{\"name_id\":\"2\",\"network_id\":\"4\",\"data\":\"A1823\"}', 'success', 1566824590);
INSERT INTO `y5g_log` VALUES (384, 2, '在库查询', '[]', 'success', 1566824607);
INSERT INTO `y5g_log` VALUES (385, 2, '在库查询', '{\"type_id\":\"A1893\",\"name_id\":\"\",\"feature_id\":\"\",\"network_id\":\"\",\"appearance_id\":\"\",\"keyword\":\"\"}', 'success', 1566824610);
INSERT INTO `y5g_log` VALUES (386, 2, '在库查询', '{\"type_id\":\"A1893\",\"name_id\":\"\",\"feature_id\":\"\",\"network_id\":\"\",\"appearance_id\":\"\",\"keyword\":\"\"}', 'success', 1566824612);
INSERT INTO `y5g_log` VALUES (387, 2, '在库查询', '{\"type_id\":\"A1893\",\"name_id\":\"iPad 2018uff086uff09\",\"feature_id\":\"32GB\",\"network_id\":\"\",\"appearance_id\":\"\",\"keyword\":\"\"}', 'success', 1566824627);
INSERT INTO `y5g_log` VALUES (388, 2, '进货入库', '{\"date\":\"2019-08-26\",\"type_id\":\"A1822\",\"category_id\":\"1\",\"name_id\":\"2\",\"network_id\":\"3\",\"feature_id\":\"5\",\"appearance_id\":\"4\",\"number\":\"A12345687912\",\"edition_id\":\"2\",\"memo\":\"u5907u6ce81\",\"price\":\"\",\"channel_id\":\"3\"}', 'fail', 1566824800);
INSERT INTO `y5g_log` VALUES (389, 2, '进货入库', '{\"date\":\"2019-08-26\",\"type_id\":\"\",\"category_id\":\"1\",\"name_id\":\"1\",\"network_id\":\"1\",\"feature_id\":\"3\",\"appearance_id\":\"1\",\"number\":\"A12345687912\",\"edition_id\":\"1\",\"memo\":\"\",\"price\":\"2580\",\"channel_id\":\"3\"}', 'success', 1566824810);
INSERT INTO `y5g_log` VALUES (390, 2, '进货入库', '{\"date\":\"2019-08-26\",\"type_id\":\"A1822\",\"category_id\":\"1\",\"name_id\":\"2\",\"network_id\":\"3\",\"feature_id\":\"6\",\"appearance_id\":\"4\",\"number\":\"A12345687952\",\"edition_id\":\"2\",\"memo\":\"\",\"price\":\"2150\",\"channel_id\":\"3\"}', 'success', 1566824937);
INSERT INTO `y5g_log` VALUES (391, 2, '进货入库', '{\"date\":\"2019-08-26\",\"type_id\":\"\",\"category_id\":\"1\",\"name_id\":\"1\",\"network_id\":\"1\",\"feature_id\":\"3\",\"appearance_id\":\"1\",\"number\":\"A12345687999\",\"edition_id\":\"1\",\"memo\":\"\",\"price\":\"1258\",\"channel_id\":\"3\"}', 'success', 1566825024);
INSERT INTO `y5g_log` VALUES (392, 2, '进货入库', '{\"date\":\"2019-08-26\",\"type_id\":\"\",\"category_id\":\"1\",\"name_id\":\"2\",\"network_id\":\"4\",\"feature_id\":\"5\",\"appearance_id\":\"4\",\"number\":\"A12345387999\",\"edition_id\":\"2\",\"memo\":\"\",\"price\":\"1147\",\"channel_id\":\"3\"}', 'success', 1566825086);
INSERT INTO `y5g_log` VALUES (393, 2, '通过入库审核', '{\"id\":\"9\"}', 'success', 1566825345);
INSERT INTO `y5g_log` VALUES (394, 2, '通过入库审核', '{\"id\":\"15\"}', 'success', 1566825355);
INSERT INTO `y5g_log` VALUES (395, 2, '进货入库', '{\"date\":\"2019-08-26\",\"type_id\":\"A1822\",\"category_id\":\"1\",\"name_id\":\"2\",\"network_id\":\"3\",\"feature_id\":\"5\",\"appearance_id\":\"6\",\"number\":\"A12345687957\",\"edition_id\":\"2\",\"memo\":\"\",\"price\":\"2581\",\"channel_id\":\"3\"}', 'success', 1566825375);
INSERT INTO `y5g_log` VALUES (396, 2, '在库查询', '[]', 'success', 1566825378);
INSERT INTO `y5g_log` VALUES (397, 2, '通过入库审核', '{\"id\":\"16\"}', 'success', 1566825383);
INSERT INTO `y5g_log` VALUES (398, 2, '拒绝入库审核', '{\"id\":\"13\"}', 'success', 1566825387);
INSERT INTO `y5g_log` VALUES (399, 2, '综合查询', '[]', 'success', 1566825394);
INSERT INTO `y5g_log` VALUES (400, 2, '在库查询', '[]', 'success', 1566825399);
INSERT INTO `y5g_log` VALUES (401, 2, '在库查询', '[]', 'success', 1566825447);
INSERT INTO `y5g_log` VALUES (402, 2, '综合查询', '[]', 'success', 1566825448);
INSERT INTO `y5g_log` VALUES (403, 2, '综合查询', '[]', 'success', 1566825451);
INSERT INTO `y5g_log` VALUES (404, 2, '在库查询', '[]', 'success', 1566825453);
INSERT INTO `y5g_log` VALUES (405, 2, '综合查询', '[]', 'success', 1566825465);
INSERT INTO `y5g_log` VALUES (406, 2, '综合查询', '{\"category_id\":\"\",\"type_id\":\"A1893\",\"name_id\":\"iPad mini 5\",\"feature_id\":\"\",\"network_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\"}', 'success', 1566825477);
INSERT INTO `y5g_log` VALUES (407, 2, '综合查询', '{\"category_id\":\"\",\"type_id\":\"A1893\",\"name_id\":\"iPad mini 5\",\"feature_id\":\"\",\"network_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\"}', 'success', 1566825479);
INSERT INTO `y5g_log` VALUES (408, 2, '综合查询', '{\"category_id\":\"\",\"type_id\":\"A1893\",\"name_id\":\"iPad mini 5\",\"feature_id\":\"\",\"network_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\"}', 'success', 1566825480);
INSERT INTO `y5g_log` VALUES (409, 2, '综合查询', '{\"category_id\":\"\",\"type_id\":\"A1893\",\"name_id\":\"iPad mini 5\",\"feature_id\":\"\",\"network_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\"}', 'success', 1566825480);
INSERT INTO `y5g_log` VALUES (410, 2, '综合查询', '{\"category_id\":\"\",\"type_id\":\"A1893\",\"name_id\":\"iPad mini 5\",\"feature_id\":\"\",\"network_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\"}', 'success', 1566825481);
INSERT INTO `y5g_log` VALUES (411, 2, '综合查询', '{\"category_id\":\"\",\"type_id\":\"A1893\",\"name_id\":\"\",\"feature_id\":\"\",\"network_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\"}', 'success', 1566825484);
INSERT INTO `y5g_log` VALUES (412, 2, '综合查询', '[]', 'success', 1566825681);
INSERT INTO `y5g_log` VALUES (413, 2, '统计', '[]', 'success', 1566825809);
INSERT INTO `y5g_log` VALUES (414, 2, '统计', '{\"mark\":\"1\",\"start_date\":\"2019-08-26\",\"end_date\":\"2019-08-31\",\"name_id\":\"1\",\"income_channel_id\":\"3\",\"create_user_id\":\"2\",\"outgo_channel_id\":\"0\"}', 'success', 1566825821);
INSERT INTO `y5g_log` VALUES (415, 2, '统计', '{\"mark\":\"1\",\"start_date\":\"2019-08-01\",\"end_date\":\"2019-08-31\",\"name_id\":\"0\",\"income_channel_id\":\"3\",\"create_user_id\":\"2\",\"outgo_channel_id\":\"1\"}', 'success', 1566825833);
INSERT INTO `y5g_log` VALUES (416, 2, '统计', '[]', 'success', 1566825845);
INSERT INTO `y5g_log` VALUES (417, 2, '统计', '[]', 'success', 1566825848);
INSERT INTO `y5g_log` VALUES (418, 2, '统计', '[]', 'success', 1566825857);
INSERT INTO `y5g_log` VALUES (419, 2, '统计', '[]', 'success', 1566825860);
INSERT INTO `y5g_log` VALUES (420, 2, '统计', '[]', 'success', 1566825882);
INSERT INTO `y5g_log` VALUES (421, 2, '统计', '[]', 'success', 1566825907);
INSERT INTO `y5g_log` VALUES (422, 2, '统计', '[]', 'success', 1566825908);
INSERT INTO `y5g_log` VALUES (423, 2, '日志查询', '[]', 'success', 1566825928);
INSERT INTO `y5g_log` VALUES (424, 2, '日志查询', '{\"page\":\"6\"}', 'success', 1566825935);
INSERT INTO `y5g_log` VALUES (425, 2, '日志查询', '{\"start_date\":\"\",\"end_date\":\"\",\"user_id\":\"1\",\"action\":\"u8fdbu8d27u5165u5e93\",\"response\":\"0\"}', 'success', 1566825940);
INSERT INTO `y5g_log` VALUES (426, 2, '日志查询', '{\"start_date\":\"\",\"end_date\":\"\",\"user_id\":\"1\",\"action\":\"u767bu9646\",\"response\":\"0\"}', 'success', 1566825943);
INSERT INTO `y5g_log` VALUES (427, 2, '登陆', '{\"account\":\"a123456\",\"pwd\":\"a123456\"}', 'success', 1566910230);
INSERT INTO `y5g_log` VALUES (428, 2, '在库查询', '[]', 'success', 1566910237);
INSERT INTO `y5g_log` VALUES (429, 2, '在库查询', '[]', 'success', 1566910257);
INSERT INTO `y5g_log` VALUES (430, 2, '在库查询', '{\"type_id\":\"A1893\",\"name_id\":\"iPad 2018uff086uff09\",\"feature_id\":\"\",\"network_id\":\"\",\"appearance_id\":\"\",\"keyword\":\"\"}', 'success', 1566910803);
INSERT INTO `y5g_log` VALUES (431, 2, '在库查询', '[]', 'success', 1566913942);
INSERT INTO `y5g_log` VALUES (432, 2, '在库查询', '[]', 'success', 1566913985);
INSERT INTO `y5g_log` VALUES (433, 2, '综合查询', '[]', 'success', 1566914554);
INSERT INTO `y5g_log` VALUES (434, 2, '综合查询', '{\"category_id\":\"Appleu624bu8868\",\"type_id\":\"\",\"name_id\":\"\",\"feature_id\":\"\",\"network_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\"}', 'success', 1566914782);
INSERT INTO `y5g_log` VALUES (435, 2, '综合查询', '{\"category_id\":\"Appleu5e73u677f\",\"type_id\":\"\",\"name_id\":\"\",\"feature_id\":\"\",\"network_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\"}', 'success', 1566914788);
INSERT INTO `y5g_log` VALUES (436, 2, '在库查询', '[]', 'success', 1566914950);
INSERT INTO `y5g_log` VALUES (437, 2, '在库查询', '[]', 'success', 1566915157);
INSERT INTO `y5g_log` VALUES (438, 2, '拒绝入库审核', '{\"id\":\"12\"}', 'success', 1566915906);
INSERT INTO `y5g_log` VALUES (439, 2, '在库查询', '[]', 'success', 1566916276);
INSERT INTO `y5g_log` VALUES (440, 2, '统计', '[]', 'success', 1566916445);
INSERT INTO `y5g_log` VALUES (441, 2, '统计', '[]', 'success', 1566916508);
INSERT INTO `y5g_log` VALUES (442, 2, '统计', '[]', 'success', 1566916515);
INSERT INTO `y5g_log` VALUES (443, 2, '日志查询', '[]', 'success', 1566916569);
INSERT INTO `y5g_log` VALUES (444, 2, '日志查询', '[]', 'success', 1566916575);
INSERT INTO `y5g_log` VALUES (445, 2, '日志查询', '{\"page\":\"45\"}', 'success', 1566916582);
INSERT INTO `y5g_log` VALUES (446, 2, '日志查询', '{\"page\":\"43\"}', 'success', 1566916587);
INSERT INTO `y5g_log` VALUES (447, 2, '日志查询', '{\"page\":\"40\"}', 'success', 1566916593);
INSERT INTO `y5g_log` VALUES (448, 2, '日志查询', '{\"start_date\":\"\",\"end_date\":\"\",\"user_id\":\"0\",\"action\":\"u8fdbu8d27u5165u5e93\",\"response\":\"0\"}', 'success', 1566916605);
INSERT INTO `y5g_log` VALUES (449, 2, '日志查询', '{\"start_date\":\"\",\"end_date\":\"\",\"user_id\":\"0\",\"action\":\"u8fdbu8d27u5165u5e93\",\"response\":\"success\"}', 'success', 1566916634);
INSERT INTO `y5g_log` VALUES (450, 2, '日志查询', '[]', 'success', 1566916702);
INSERT INTO `y5g_log` VALUES (451, 2, '日志查询', '{\"page\":\"45\"}', 'success', 1566916704);
INSERT INTO `y5g_log` VALUES (452, 2, '日志查询', '{\"page\":\"1\"}', 'success', 1566916706);
INSERT INTO `y5g_log` VALUES (453, 2, '统计', '[]', 'success', 1566916713);
INSERT INTO `y5g_log` VALUES (454, 2, '在库查询', '[]', 'success', 1566916735);
INSERT INTO `y5g_log` VALUES (455, 1, '登陆', '{\"account\":\"a12345\",\"pwd\":\"a12345\"}', 'success', 1567063186);
INSERT INTO `y5g_log` VALUES (456, 1, '在库查询', '[]', 'success', 1567063203);
INSERT INTO `y5g_log` VALUES (457, 1, '综合查询', '[]', 'success', 1567063208);
INSERT INTO `y5g_log` VALUES (458, 1, '综合查询', '{\"page\":\"2\"}', 'success', 1567063217);
INSERT INTO `y5g_log` VALUES (459, 1, '综合查询', '{\"page\":\"1\"}', 'success', 1567063219);
INSERT INTO `y5g_log` VALUES (460, 1, '日志查询', '[]', 'success', 1567063237);
INSERT INTO `y5g_log` VALUES (461, 1, '在库查询', '[]', 'success', 1567063255);
INSERT INTO `y5g_log` VALUES (462, 1, '综合查询', '[]', 'success', 1567063257);
INSERT INTO `y5g_log` VALUES (463, 2, '登陆', '{\"account\":\"a123456\",\"pwd\":\"a123456\"}', 'success', 1567245918);
INSERT INTO `y5g_log` VALUES (464, 2, '在库查询', '[]', 'success', 1567245922);
INSERT INTO `y5g_log` VALUES (465, 2, '在库查询', '[]', 'success', 1567245931);
INSERT INTO `y5g_log` VALUES (466, 2, '在库查询', '[]', 'success', 1567245937);
INSERT INTO `y5g_log` VALUES (467, 2, '统计', '[]', 'success', 1567245950);
INSERT INTO `y5g_log` VALUES (468, 2, '统计', '[]', 'success', 1567245951);
INSERT INTO `y5g_log` VALUES (469, 2, '统计', '[]', 'success', 1567245980);
INSERT INTO `y5g_log` VALUES (470, 2, '特殊出库', '{\"item_id\":\"2\",\"type\":\"4\"}', 'fail', 1567246012);
INSERT INTO `y5g_log` VALUES (471, 2, '特殊出库', '{\"item_id\":\"10\",\"type\":\"5\"}', 'fail', 1567246016);
INSERT INTO `y5g_log` VALUES (472, 4, '登陆', '{\"account\":\"csh123456csh\",\"pwd\":\"csh123456csh\"}', 'success', 1567310628);
INSERT INTO `y5g_log` VALUES (473, 1, '登陆', '{\"account\":\"a12345\",\"pwd\":\"a12345\"}', 'success', 1567310739);
INSERT INTO `y5g_log` VALUES (474, 1, '统计', '[]', 'success', 1567310747);
INSERT INTO `y5g_log` VALUES (475, 1, '在库查询', '[]', 'success', 1567310792);
INSERT INTO `y5g_log` VALUES (476, 1, '在库查询', '[]', 'success', 1567310818);
INSERT INTO `y5g_log` VALUES (477, 1, '综合查询', '[]', 'success', 1567310820);
INSERT INTO `y5g_log` VALUES (478, 1, '在库查询', '[]', 'success', 1567310825);
INSERT INTO `y5g_log` VALUES (479, 2, '登陆', '{\"account\":\"a123456\",\"pwd\":\"a123456\"}', 'success', 1567318378);
INSERT INTO `y5g_log` VALUES (480, 2, '在库查询', '[]', 'success', 1567318381);
INSERT INTO `y5g_log` VALUES (481, 2, '在库查询', '{\"type_id\":\"A1893\",\"name_id\":\"\",\"feature_id\":\"\",\"network_id\":\"\",\"appearance_id\":\"\",\"keyword\":\"\"}', 'success', 1567318406);
INSERT INTO `y5g_log` VALUES (482, 2, '综合查询', '[]', 'success', 1567318408);
INSERT INTO `y5g_log` VALUES (483, 2, '增加型号', '{\"name_id\":\"3\",\"network\":\"WiFi\",\"data\":\"A1538\"}', 'success', 1567329262);
INSERT INTO `y5g_log` VALUES (484, 2, '增加型号', '{\"name_id\":\"3\",\"network\":\"WiFi + 4G\",\"data\":\"A1550\"}', 'success', 1567329302);
INSERT INTO `y5g_log` VALUES (485, 2, '在库查询', '[]', 'success', 1567329338);
INSERT INTO `y5g_log` VALUES (486, 2, '在库查询', '[]', 'success', 1567329395);
INSERT INTO `y5g_log` VALUES (487, 2, '在库查询', '{\"type_id\":\"\",\"name_id\":\"\",\"feature_id\":\"\",\"network_id\":\"\",\"appearance_id\":\"\",\"keyword\":\"\"}', 'success', 1567329452);
INSERT INTO `y5g_log` VALUES (488, 2, '在库查询', '{\"type_id\":\"\",\"name_id\":\"\",\"feature_id\":\"\",\"network_id\":\"\",\"appearance_id\":\"\",\"keyword\":\"\"}', 'success', 1567329453);
INSERT INTO `y5g_log` VALUES (489, 2, '在库查询', '{\"type_id\":\"\",\"name_id\":\"\",\"feature_id\":\"\",\"network_id\":\"\",\"appearance_id\":\"\",\"keyword\":\"\"}', 'success', 1567329457);
INSERT INTO `y5g_log` VALUES (490, 2, '综合查询', '[]', 'success', 1567329466);
INSERT INTO `y5g_log` VALUES (491, 2, '在库查询', '[]', 'success', 1567329467);
INSERT INTO `y5g_log` VALUES (492, 2, '统计', '[]', 'success', 1567329544);
INSERT INTO `y5g_log` VALUES (493, 2, '统计', '{\"mark\":\"1\",\"start_date\":\"\",\"end_date\":\"\",\"name_id\":\"2\",\"income_channel_id\":\"3\",\"create_user_id\":\"2\",\"outgo_channel_id\":\"1\",\"sub\":\"search\"}', 'success', 1567329552);
INSERT INTO `y5g_log` VALUES (494, 2, '增加型号', '{\"name_id\":\"14\",\"network\":\"WiFi\",\"data\":\"A1673\"}', 'success', 1567329908);
INSERT INTO `y5g_log` VALUES (495, 2, '增加型号', '{\"name_id\":\"1\",\"network\":\"WiFi + 4G\",\"data\":\"A1674\"}', 'success', 1567330042);
INSERT INTO `y5g_log` VALUES (496, 2, '增加型号', '{\"name_id\":\"14\",\"network\":\"WiFi + 4G\",\"data\":\"A1675\"}', 'success', 1567330185);
INSERT INTO `y5g_log` VALUES (497, 2, '增加型号', '{\"name_id\":\"12\",\"network\":\"Wi-Fi\",\"data\":\"A1980\"}', 'success', 1567330759);
INSERT INTO `y5g_log` VALUES (498, 2, '增加型号', '{\"name_id\":\"12\",\"network\":\"Wi-Fi + Cellular\",\"data\":\"A1979\"}', 'success', 1567330809);
INSERT INTO `y5g_log` VALUES (499, 2, '增加型号', '{\"name_id\":\"12\",\"network\":\"Wi-Fi + Cellular\",\"data\":\"A1934\"}', 'success', 1567330844);
INSERT INTO `y5g_log` VALUES (500, 2, '增加型号', '{\"name_id\":\"12\",\"network\":\"Wi-Fi + Cellular\",\"data\":\"A2013\"}', 'success', 1567330857);
INSERT INTO `y5g_log` VALUES (501, 2, '增加型号', '{\"name_id\":\"6\",\"network\":\"Wi-Fi\",\"data\":\"A1566\"}', 'success', 1567331293);
INSERT INTO `y5g_log` VALUES (502, 2, '增加型号', '{\"name_id\":\"6\",\"network\":\"Wi-Fi + 4G\",\"data\":\"A1567\"}', 'success', 1567331342);
INSERT INTO `y5g_log` VALUES (503, 2, '增加型号', '{\"name_id\":\"7\",\"network\":\"Wi-Fi\",\"data\":\"A1474\"}', 'success', 1567331596);
INSERT INTO `y5g_log` VALUES (504, 2, '增加型号', '{\"name_id\":\"7\",\"network\":\"Wi-Fi + 3G\",\"data\":\"A1475\"}', 'success', 1567331636);
INSERT INTO `y5g_log` VALUES (505, 2, '增加型号', '{\"name_id\":\"7\",\"network\":\"Wi-Fi + 4G (TD-LTE)\",\"data\":\"Wi-Fi + 4G\"}', 'success', 1567331720);
INSERT INTO `y5g_log` VALUES (506, 2, '进货入库', '{\"date\":\"2019-09-01\",\"type_id\":\"\",\"category_id\":\"1\",\"name_id\":\"7\",\"network_id\":\"16\",\"feature_id\":\"11\",\"appearance_id\":\"19\",\"number\":\"A36985214752\",\"memo\":\"11111\",\"price\":\"1000\",\"channel_id\":\"3\"}', 'fail', 1567331768);
INSERT INTO `y5g_log` VALUES (507, 2, '增加固件版本', '{\"category_id\":\"1\",\"data\":\"IOS12\"}', 'success', 1567331797);
INSERT INTO `y5g_log` VALUES (508, 2, '增加固件版本', '{\"category_id\":\"1\",\"data\":\"IOS11\"}', 'success', 1567331815);
INSERT INTO `y5g_log` VALUES (509, 2, '增加固件版本', '{\"category_id\":\"1\",\"data\":\"IOS10\"}', 'success', 1567331829);
INSERT INTO `y5g_log` VALUES (510, 2, '在库查询', '[]', 'success', 1567331903);
INSERT INTO `y5g_log` VALUES (511, 2, '在库查询', '{\"type_id\":\"\",\"name_id\":\"\",\"feature_id\":\"32GB\",\"network_id\":\"\",\"appearance_id\":\"\",\"keyword\":\"\"}', 'success', 1567331909);
INSERT INTO `y5g_log` VALUES (512, 2, '增加型号', '{\"name_id\":\"4\",\"network\":\"Wi-Fi\",\"data\":\"A2133\"}', 'success', 1567332329);
INSERT INTO `y5g_log` VALUES (513, 2, '增加型号', '{\"name_id\":\"4\",\"network\":\"Wi-Fi + Cellular\",\"data\":\"A2124\"}', 'success', 1567332378);
INSERT INTO `y5g_log` VALUES (514, 2, '删除型号', '{\"id\":\"19\"}', 'success', 1567332459);
INSERT INTO `y5g_log` VALUES (515, 2, '删除型号', '{\"id\":\"19\"}', 'success', 1567332467);
INSERT INTO `y5g_log` VALUES (516, 2, '增加型号', '{\"name_id\":\"4\",\"network\":\"Wi-Fi + Cellular\",\"data\":\"A2126\"}', 'success', 1567332597);
INSERT INTO `y5g_log` VALUES (517, 2, '增加型号', '{\"name_id\":\"4\",\"network\":\"Wi-Fi + Cellular(CN)\",\"data\":\"A2125\"}', 'success', 1567332784);
INSERT INTO `y5g_log` VALUES (518, 2, '增加型号', '{\"name_id\":\"5\",\"network\":\"Wi-Fi\",\"data\":\"A2152\"}', 'success', 1567333020);
INSERT INTO `y5g_log` VALUES (519, 2, '增加型号', '{\"name_id\":\"5\",\"network\":\"Wi-Fi + Cellular\",\"data\":\"A2123\"}', 'success', 1567333070);
INSERT INTO `y5g_log` VALUES (520, 2, '增加型号', '{\"name_id\":\"5\",\"network\":\"Wi-Fi + Cellular\",\"data\":\"A2153\"}', 'success', 1567333102);
INSERT INTO `y5g_log` VALUES (521, 2, '增加型号', '{\"name_id\":\"5\",\"network\":\"Wi-Fi + Cellular(CN)\",\"data\":\"A2154\"}', 'success', 1567333149);
INSERT INTO `y5g_log` VALUES (522, 2, '增加型号', '{\"name_id\":\"13\",\"network\":\"Wi-Fi\",\"data\":\"A1701\"}', 'success', 1567333451);
INSERT INTO `y5g_log` VALUES (523, 2, '增加型号', '{\"name_id\":\"13\",\"network\":\"Wi-Fi + Cellular\",\"data\":\"A1709\"}', 'success', 1567333475);
INSERT INTO `y5g_log` VALUES (524, 2, '增加型号', '{\"name_id\":\"13\",\"network\":\"Wi-Fi + Cellular(CN)\",\"data\":\"A1852\"}', 'success', 1567333493);
INSERT INTO `y5g_log` VALUES (525, 2, '增加型号', '{\"name_id\":\"10\",\"network\":\"Wi-Fi\",\"data\":\"A1876\"}', 'success', 1567333693);
INSERT INTO `y5g_log` VALUES (526, 2, '增加型号', '{\"name_id\":\"10\",\"network\":\"Wi-Fi + Cellular\",\"data\":\"A2014\"}', 'success', 1567333713);
INSERT INTO `y5g_log` VALUES (527, 2, '增加型号', '{\"name_id\":\"11\",\"network\":\"Wi-Fi + Cellular\",\"data\":\"A1895\"}', 'success', 1567333733);
INSERT INTO `y5g_log` VALUES (528, 2, '增加型号', '{\"name_id\":\"10\",\"network\":\"Wi-Fi + Cellular(CN)\",\"data\":\"A1983\"}', 'success', 1567333758);
INSERT INTO `y5g_log` VALUES (529, 2, '增加型号', '{\"name_id\":\"9\",\"network\":\"Wi-Fi\",\"data\":\"A1670\"}', 'success', 1567333831);
INSERT INTO `y5g_log` VALUES (530, 2, '增加型号', '{\"name_id\":\"9\",\"network\":\"Wi-Fi + Cellular\",\"data\":\"A1671\"}', 'success', 1567333851);
INSERT INTO `y5g_log` VALUES (531, 2, '增加型号', '{\"name_id\":\"9\",\"network\":\"Wi-Fi + Cellular(CN)\",\"data\":\"A1821\"}', 'success', 1567333870);
INSERT INTO `y5g_log` VALUES (532, 2, '增加型号', '{\"name_id\":\"8\",\"network\":\"Wi-Fi\",\"data\":\"A1584\"}', 'success', 1567333906);
INSERT INTO `y5g_log` VALUES (533, 2, '增加型号', '{\"name_id\":\"8\",\"network\":\"Wi-Fi + Cellular\",\"data\":\"A1652\"}', 'success', 1567334347);
INSERT INTO `y5g_log` VALUES (534, 2, '在库查询', '[]', 'success', 1567334606);
INSERT INTO `y5g_log` VALUES (535, 2, '在库查询', '[]', 'success', 1567340105);
INSERT INTO `y5g_log` VALUES (536, 2, '在库查询', '[]', 'success', 1567340112);
INSERT INTO `y5g_log` VALUES (537, 2, '统计', '[]', 'success', 1567340500);
INSERT INTO `y5g_log` VALUES (538, 2, '统计', '{\"mark\":\"1\",\"start_date\":\"2019-09-01\",\"end_date\":\"2019-09-01\",\"name_id\":\"0\",\"income_channel_id\":\"3\",\"create_user_id\":\"2\",\"outgo_channel_id\":\"1\",\"sub\":\"search\"}', 'success', 1567340518);
INSERT INTO `y5g_log` VALUES (539, 2, '销售出库', '{\"item_id\":\"11\",\"channel_id\":\"1\",\"order_no\":\"454567467567\",\"price\":\"2681\",\"cost\":\"50\",\"consignee_nickname\":\"\",\"consignee\":\"\",\"consignee_address\":\"\",\"consignee_phone\":\"\",\"memo\":\"\"}', 'success', 1567340540);
INSERT INTO `y5g_log` VALUES (540, 2, '统计', '[]', 'success', 1567340545);
INSERT INTO `y5g_log` VALUES (541, 2, '统计', '{\"mark\":\"1\",\"start_date\":\"2019-09-01\",\"end_date\":\"2019-09-01\",\"name_id\":\"0\",\"income_channel_id\":\"0\",\"create_user_id\":\"0\",\"outgo_channel_id\":\"0\",\"sub\":\"search\"}', 'success', 1567340550);
INSERT INTO `y5g_log` VALUES (542, 2, '通过出库审核', '{\"id\":\"5\"}', 'success', 1567340561);
INSERT INTO `y5g_log` VALUES (543, 2, '统计', '[]', 'success', 1567340618);
INSERT INTO `y5g_log` VALUES (544, 2, '统计', '[]', 'success', 1567340625);
INSERT INTO `y5g_log` VALUES (545, 2, '统计', '[]', 'success', 1567340633);
INSERT INTO `y5g_log` VALUES (546, 2, '统计', '{\"mark\":\"1\",\"start_date\":\"\",\"end_date\":\"\",\"name_id\":\"0\",\"income_channel_id\":\"0\",\"create_user_id\":\"0\",\"outgo_channel_id\":\"0\",\"sub\":\"search\"}', 'success', 1567340635);
INSERT INTO `y5g_log` VALUES (547, 2, '统计', '{\"mark\":\"1\",\"start_date\":\"2019-09-01\",\"end_date\":\"2019-09-01\",\"name_id\":\"0\",\"income_channel_id\":\"0\",\"create_user_id\":\"0\",\"outgo_channel_id\":\"0\",\"sub\":\"search\"}', 'success', 1567340641);
INSERT INTO `y5g_log` VALUES (548, 2, '统计', '{\"mark\":\"1\",\"start_date\":\"2019-09-01\",\"end_date\":\"2019-09-01\",\"name_id\":\"1\",\"income_channel_id\":\"0\",\"create_user_id\":\"0\",\"outgo_channel_id\":\"0\",\"sub\":\"search\"}', 'success', 1567340655);
INSERT INTO `y5g_log` VALUES (549, 2, '统计', '{\"mark\":\"1\",\"start_date\":\"2019-09-01\",\"end_date\":\"2019-09-01\",\"name_id\":\"2\",\"income_channel_id\":\"0\",\"create_user_id\":\"0\",\"outgo_channel_id\":\"0\",\"sub\":\"search\"}', 'success', 1567340658);
INSERT INTO `y5g_log` VALUES (550, 2, '统计', '[]', 'success', 1567340678);
INSERT INTO `y5g_log` VALUES (551, 2, '统计', '[]', 'success', 1567340679);
INSERT INTO `y5g_log` VALUES (552, 2, '统计', '{\"mark\":\"1\",\"start_date\":\"\",\"end_date\":\"\",\"name_id\":\"0\",\"income_channel_id\":\"0\",\"create_user_id\":\"0\",\"outgo_channel_id\":\"0\",\"sub\":\"search\"}', 'success', 1567340688);
INSERT INTO `y5g_log` VALUES (553, 2, '统计', '{\"mark\":\"1\",\"start_date\":\"\",\"end_date\":\"\",\"name_id\":\"0\",\"income_channel_id\":\"0\",\"create_user_id\":\"0\",\"outgo_channel_id\":\"0\",\"sub\":\"search\"}', 'success', 1567340690);
INSERT INTO `y5g_log` VALUES (554, 2, '在库查询', '[]', 'success', 1567340791);
INSERT INTO `y5g_log` VALUES (555, 2, '在库查询', '[]', 'success', 1567340793);
INSERT INTO `y5g_log` VALUES (556, 2, '综合查询', '[]', 'success', 1567340796);
INSERT INTO `y5g_log` VALUES (557, 2, '统计', '[]', 'success', 1567340829);
INSERT INTO `y5g_log` VALUES (558, 2, '在库查询', '[]', 'success', 1567340964);
INSERT INTO `y5g_log` VALUES (559, 2, '在库查询', '[]', 'success', 1567341039);
INSERT INTO `y5g_log` VALUES (560, 2, '在库查询', '[]', 'success', 1567341042);
INSERT INTO `y5g_log` VALUES (561, 2, '在库查询', '[]', 'success', 1567341399);
INSERT INTO `y5g_log` VALUES (562, 2, '在库查询', '[]', 'success', 1567341402);
INSERT INTO `y5g_log` VALUES (563, 2, '统计', '[]', 'success', 1567341424);
INSERT INTO `y5g_log` VALUES (564, 2, '在库查询', '[]', 'success', 1567341613);
INSERT INTO `y5g_log` VALUES (565, 2, '在库查询', '[]', 'success', 1567341649);
INSERT INTO `y5g_log` VALUES (566, 2, '在库查询', '{\"type_id\":\"\",\"name_id\":\"\",\"feature_id\":\"\",\"network_id\":\"\",\"appearance_id\":\"u73abu7470u91d1\",\"keyword\":\"\"}', 'success', 1567341654);
INSERT INTO `y5g_log` VALUES (567, 2, '在库查询', '{\"type_id\":\"A1822\",\"name_id\":\"iPad 2018uff086uff09\",\"feature_id\":\"128GB\",\"network_id\":\"Wi-Fi + Cellular\",\"appearance_id\":\"\",\"keyword\":\"\"}', 'success', 1567341664);
INSERT INTO `y5g_log` VALUES (568, 2, '登出', '{\"id\":2}', 'success', 1567341706);
INSERT INTO `y5g_log` VALUES (569, 2, '登陆', '{\"account\":\"a123456\",\"pwd\":\"a123456\"}', 'success', 1567341748);
INSERT INTO `y5g_log` VALUES (570, 2, '在库查询', '[]', 'success', 1567341752);
INSERT INTO `y5g_log` VALUES (571, 2, '通过入库审核', '{\"id\":\"11\"}', 'success', 1567341902);
INSERT INTO `y5g_log` VALUES (572, 2, '综合查询', '[]', 'success', 1567342086);
INSERT INTO `y5g_log` VALUES (573, 2, '综合查询', '[]', 'success', 1567342272);
INSERT INTO `y5g_log` VALUES (574, 2, '统计', '[]', 'success', 1567343061);
INSERT INTO `y5g_log` VALUES (575, 2, '增加固件版本', '{\"category_id\":\"3\",\"data\":\"watchOS 5\"}', 'success', 1567343079);
INSERT INTO `y5g_log` VALUES (576, 2, '增加名称', '{\"category_id\":\"3\",\"data\":\"Watch S1\"}', 'success', 1567344395);
INSERT INTO `y5g_log` VALUES (577, 2, '统计', '[]', 'success', 1567351020);
INSERT INTO `y5g_log` VALUES (578, 2, '增加配置', '{\"name_id\":\"15\",\"data\":\"u94ddu91d1u5c5e\"}', 'success', 1567352173);
INSERT INTO `y5g_log` VALUES (579, 2, '增加固件版本', '{\"category_id\":\"1\",\"data\":\"watchOS 6\"}', 'success', 1567352216);
INSERT INTO `y5g_log` VALUES (580, 2, '增加固件版本', '{\"category_id\":\"3\",\"data\":\"watchOS 7\"}', 'success', 1567352357);
INSERT INTO `y5g_log` VALUES (581, 2, '增加外观', '{\"name_id\":\"15\",\"data\":\"u6df1u7a7au7070u8272\"}', 'success', 1567352444);
INSERT INTO `y5g_log` VALUES (582, 2, '增加外观', '{\"name_id\":\"15\",\"data\":\"u91d1u8272\"}', 'success', 1567352461);
INSERT INTO `y5g_log` VALUES (583, 2, '增加外观', '{\"name_id\":\"15\",\"data\":\"u73abu7470u91d1u8272\"}', 'success', 1567352479);
INSERT INTO `y5g_log` VALUES (584, 2, '增加外观', '{\"name_id\":\"15\",\"data\":\"u94f6u8272\"}', 'success', 1567352497);
INSERT INTO `y5g_log` VALUES (585, 2, '增加名称', '{\"category_id\":\"3\",\"data\":\"Watch S2\"}', 'success', 1567352731);
INSERT INTO `y5g_log` VALUES (586, 2, '增加名称', '{\"category_id\":\"3\",\"data\":\"Watch S3\"}', 'success', 1567352751);
INSERT INTO `y5g_log` VALUES (587, 2, '增加名称', '{\"category_id\":\"3\",\"data\":\"Watch S4\"}', 'success', 1567352770);
INSERT INTO `y5g_log` VALUES (588, 2, '增加配置', '{\"name_id\":\"16\",\"data\":\"u94ddu91d1u5c5eu5916u58f3\"}', 'success', 1567352839);
INSERT INTO `y5g_log` VALUES (589, 2, '增加配置', '{\"name_id\":\"16\",\"data\":\"u4e0du9508u94a2u5916u58f3\"}', 'success', 1567352858);
INSERT INTO `y5g_log` VALUES (590, 2, '增加外观', '{\"name_id\":\"16\",\"data\":\"u6df1u7a7au7070u8272\"}', 'success', 1567353079);
INSERT INTO `y5g_log` VALUES (591, 2, '增加外观', '{\"name_id\":\"16\",\"data\":\"u91d1u8272\"}', 'success', 1567353090);
INSERT INTO `y5g_log` VALUES (592, 2, '增加外观', '{\"name_id\":\"16\",\"data\":\"u73abu7470u91d1u8272\"}', 'success', 1567353099);
INSERT INTO `y5g_log` VALUES (593, 2, '增加外观', '{\"name_id\":\"16\",\"data\":\"u94f6u8272\"}', 'success', 1567353112);
INSERT INTO `y5g_log` VALUES (594, 2, '增加型号', '{\"name_id\":\"15\",\"network\":\"38mm\",\"data\":\"A1802\"}', 'success', 1567353191);
INSERT INTO `y5g_log` VALUES (595, 2, '增加型号', '{\"name_id\":\"15\",\"network\":\"42mm\",\"data\":\"A1803\"}', 'success', 1567353212);
INSERT INTO `y5g_log` VALUES (596, 2, '增加型号', '{\"name_id\":\"16\",\"network\":\"38mm\",\"data\":\"A1757\"}', 'success', 1567353312);
INSERT INTO `y5g_log` VALUES (597, 2, '增加型号', '{\"name_id\":\"16\",\"network\":\"42mm\",\"data\":\"A1758\"}', 'success', 1567353339);
INSERT INTO `y5g_log` VALUES (598, 2, '增加配置', '{\"name_id\":\"17\",\"data\":\"u94ddu91d1u5c5eu5916u58f3\"}', 'success', 1567353614);
INSERT INTO `y5g_log` VALUES (599, 2, '增加配置', '{\"name_id\":\"17\",\"data\":\"u4e0du9508u94a2u5916u58f3\"}', 'success', 1567353625);
INSERT INTO `y5g_log` VALUES (600, 2, '增加配置', '{\"name_id\":\"18\",\"data\":\"u94ddu91d1u5c5eu5916u58f3\"}', 'success', 1567353652);
INSERT INTO `y5g_log` VALUES (601, 2, '增加配置', '{\"name_id\":\"18\",\"data\":\"u4e0du9508u94a2u5916u58f3\"}', 'success', 1567353671);
INSERT INTO `y5g_log` VALUES (602, 2, '增加型号', '{\"name_id\":\"17\",\"network\":\"38mm (GPS)\",\"data\":\"A1858\"}', 'success', 1567353815);
INSERT INTO `y5g_log` VALUES (603, 2, '增加型号', '{\"name_id\":\"17\",\"network\":\"42mm (GPS)\",\"data\":\"A1859\"}', 'success', 1567353842);
INSERT INTO `y5g_log` VALUES (604, 2, '增加型号', '{\"name_id\":\"17\",\"network\":\"38mmuff08GPS+u8702u7a9duff09\",\"data\":\"A1860\"}', 'success', 1567353925);
INSERT INTO `y5g_log` VALUES (605, 2, '增加型号', '{\"name_id\":\"17\",\"network\":\"38mmuff08GPS+u8702u7a9duff09\",\"data\":\"A1889\"}', 'success', 1567354027);
INSERT INTO `y5g_log` VALUES (606, 2, '增加型号', '{\"name_id\":\"17\",\"network\":\"38mmuff08GPS+u8702u7a9duff09\",\"data\":\"A1890\"}', 'success', 1567354046);
INSERT INTO `y5g_log` VALUES (607, 2, '增加型号', '{\"name_id\":\"17\",\"network\":\"42mmuff08GPS+u8702u7a9duff09\",\"data\":\"A1861\"}', 'success', 1567354501);
INSERT INTO `y5g_log` VALUES (608, 2, '增加型号', '{\"name_id\":\"17\",\"network\":\"42mmuff08GPS+u8702u7a9duff09\",\"data\":\"A1891\"}', 'success', 1567354528);
INSERT INTO `y5g_log` VALUES (609, 2, '增加型号', '{\"name_id\":\"17\",\"network\":\"42mmuff08GPS+u8702u7a9duff09CH\",\"data\":\"A1892\"}', 'success', 1567354563);
INSERT INTO `y5g_log` VALUES (610, 2, '增加型号', '{\"name_id\":\"18\",\"network\":\"40mmuff08GPSuff09\",\"data\":\"A1977\"}', 'success', 1567354742);
INSERT INTO `y5g_log` VALUES (611, 2, '增加型号', '{\"name_id\":\"18\",\"network\":\"44mmuff08GPSuff09\",\"data\":\"A1978\"}', 'success', 1567354766);
INSERT INTO `y5g_log` VALUES (612, 2, '增加型号', '{\"name_id\":\"18\",\"network\":\"40mmuff08GPS+u8702u7a9duff09\",\"data\":\"A1975\"}', 'success', 1567354818);
INSERT INTO `y5g_log` VALUES (613, 2, '增加型号', '{\"name_id\":\"18\",\"network\":\"40mmuff08GPS+u8702u7a9duff09CH\",\"data\":\"A2007\"}', 'success', 1567354956);
INSERT INTO `y5g_log` VALUES (614, 2, '增加型号', '{\"name_id\":\"18\",\"network\":\"44mmuff08GPS+u8702u7a9duff09\",\"data\":\"A1976\"}', 'success', 1567355000);
INSERT INTO `y5g_log` VALUES (615, 2, '增加型号', '{\"name_id\":\"18\",\"network\":\"44mmuff08GPS+u8702u7a9duff09CH\",\"data\":\"A2008\"}', 'success', 1567355072);
INSERT INTO `y5g_log` VALUES (616, 2, '删除型号', '{\"id\":\"56\"}', 'success', 1567355095);
INSERT INTO `y5g_log` VALUES (617, 2, '删除型号', '{\"id\":\"56\"}', 'success', 1567355101);
INSERT INTO `y5g_log` VALUES (618, 2, '增加外观', '{\"name_id\":\"17\",\"data\":\"u6df1u7a7au7070u8272\"}', 'success', 1567355332);
INSERT INTO `y5g_log` VALUES (619, 2, '增加外观', '{\"name_id\":\"17\",\"data\":\"u91d1u8272\"}', 'success', 1567355347);
INSERT INTO `y5g_log` VALUES (620, 2, '增加外观', '{\"name_id\":\"17\",\"data\":\"u94f6u8272\"}', 'success', 1567355374);
INSERT INTO `y5g_log` VALUES (621, 2, '增加外观', '{\"name_id\":\"18\",\"data\":\"u6df1u7a7au7070u8272\"}', 'success', 1567355392);
INSERT INTO `y5g_log` VALUES (622, 2, '增加外观', '{\"name_id\":\"18\",\"data\":\"u91d1u8272\"}', 'success', 1567355440);
INSERT INTO `y5g_log` VALUES (623, 2, '增加外观', '{\"name_id\":\"18\",\"data\":\"u94f6u8272\"}', 'success', 1567355450);
INSERT INTO `y5g_log` VALUES (624, 2, '增加进货渠道/出货途径', '{\"type\":\"1\",\"data\":\"YW-u4f20u5947u901au8baf\"}', 'success', 1567355582);
INSERT INTO `y5g_log` VALUES (625, 2, '增加进货渠道/出货途径', '{\"type\":\"1\",\"data\":\"FY-u8001u59da\"}', 'success', 1567355672);
INSERT INTO `y5g_log` VALUES (626, 2, '增加进货渠道/出货途径', '{\"type\":\"2\",\"data\":\"TB-u827eu514bu65af\"}', 'success', 1567355756);
INSERT INTO `y5g_log` VALUES (627, 2, '增加进货渠道/出货途径', '{\"type\":\"2\",\"data\":\"PDD-u6570u7801\"}', 'success', 1567355796);
INSERT INTO `y5g_log` VALUES (628, 2, '增加类别', '{\"data\":\"Appleu914du4ef6\"}', 'success', 1567356030);
INSERT INTO `y5g_log` VALUES (629, 2, '登陆', '{\"account\":\"a123456\",\"pwd\":\"a123456\"}', 'success', 1567389958);
INSERT INTO `y5g_log` VALUES (630, 2, '在库查询', '[]', 'success', 1567389979);
INSERT INTO `y5g_log` VALUES (631, 2, '在库查询', '[]', 'success', 1567389980);
INSERT INTO `y5g_log` VALUES (632, 2, '退货入库', '{\"id\":\"5\"}', 'success', 1567389999);
INSERT INTO `y5g_log` VALUES (633, 2, '进货入库', '{\"date\":\"2019-09-02\",\"type_id\":\"\",\"category_id\":\"1\",\"name_id\":\"1\",\"network_id\":\"1\",\"feature_id\":\"3\",\"appearance_id\":\"1\",\"number\":\"a25896314712\",\"edition_id\":\"1\",\"memo\":\"\",\"price\":\"1500\",\"channel_id\":\"3\"}', 'success', 1567390049);
INSERT INTO `y5g_log` VALUES (634, 2, '统计', '[]', 'success', 1567390426);
INSERT INTO `y5g_log` VALUES (635, 2, '统计', '[]', 'success', 1567390435);
INSERT INTO `y5g_log` VALUES (636, 2, '统计', '{\"mark\":\"1\",\"start_date\":\"2019-09-01\",\"end_date\":\"2019-09-02\",\"name_id\":\"0\",\"income_channel_id\":\"0\",\"create_user_id\":\"0\",\"outgo_channel_id\":\"0\",\"sub\":\"search\"}', 'success', 1567390446);
INSERT INTO `y5g_log` VALUES (637, 2, '统计', '{\"mark\":\"1\",\"start_date\":\"2019-09-01\",\"end_date\":\"2019-09-02\",\"name_id\":\"1\",\"income_channel_id\":\"3\",\"create_user_id\":\"2\",\"outgo_channel_id\":\"0\",\"sub\":\"search\"}', 'success', 1567390460);
INSERT INTO `y5g_log` VALUES (638, 2, '统计', '{\"mark\":\"1\",\"start_date\":\"2019-09-01\",\"end_date\":\"2019-09-02\",\"name_id\":\"0\",\"income_channel_id\":\"3\",\"create_user_id\":\"2\",\"outgo_channel_id\":\"0\",\"sub\":\"search\"}', 'success', 1567390465);
INSERT INTO `y5g_log` VALUES (639, 2, '统计', '{\"mark\":\"1\",\"start_date\":\"2019-09-01\",\"end_date\":\"2019-09-02\",\"name_id\":\"0\",\"income_channel_id\":\"0\",\"create_user_id\":\"2\",\"outgo_channel_id\":\"0\",\"sub\":\"search\"}', 'success', 1567390468);
INSERT INTO `y5g_log` VALUES (640, 2, '在库查询', '[]', 'success', 1567390490);
INSERT INTO `y5g_log` VALUES (641, 2, '通过入库审核', '{\"id\":\"14\"}', 'success', 1567390553);
INSERT INTO `y5g_log` VALUES (642, 2, '在库查询', '[]', 'success', 1567390557);
INSERT INTO `y5g_log` VALUES (643, 2, '在库查询', '{\"type_id\":\"\",\"name_id\":\"\",\"feature_id\":\"\",\"network_id\":\"\",\"appearance_id\":\"\",\"keyword\":\"\"}', 'success', 1567390562);
INSERT INTO `y5g_log` VALUES (644, 2, '在库查询', '{\"type_id\":\"A1822\",\"name_id\":\"\",\"feature_id\":\"\",\"network_id\":\"\",\"appearance_id\":\"\",\"keyword\":\"\"}', 'success', 1567390566);
INSERT INTO `y5g_log` VALUES (645, 2, '在库查询', '{\"type_id\":\"A1893\",\"name_id\":\"\",\"feature_id\":\"\",\"network_id\":\"\",\"appearance_id\":\"\",\"keyword\":\"\"}', 'success', 1567390569);
INSERT INTO `y5g_log` VALUES (646, 2, '统计', '[]', 'success', 1567390674);
INSERT INTO `y5g_log` VALUES (647, 2, '统计', '[]', 'success', 1567390712);
INSERT INTO `y5g_log` VALUES (648, 2, '统计', '[]', 'success', 1567390729);
INSERT INTO `y5g_log` VALUES (649, 2, '在库查询', '[]', 'success', 1567390764);
INSERT INTO `y5g_log` VALUES (650, 2, '在库查询', '{\"type_id\":\"\",\"name_id\":\"\",\"feature_id\":\"\",\"network_id\":\"\",\"appearance_id\":\"\",\"keyword\":\"F8M\"}', 'success', 1567390864);
INSERT INTO `y5g_log` VALUES (651, 2, '在库查询', '{\"type_id\":\"\",\"name_id\":\"\",\"feature_id\":\"\",\"network_id\":\"\",\"appearance_id\":\"\",\"keyword\":\"F8M\"}', 'success', 1567390868);
INSERT INTO `y5g_log` VALUES (652, 2, '在库查询', '{\"type_id\":\"\",\"name_id\":\"\",\"feature_id\":\"\",\"network_id\":\"\",\"appearance_id\":\"\",\"keyword\":\"F8M\"}', 'success', 1567390870);
INSERT INTO `y5g_log` VALUES (653, 2, '在库查询', '{\"type_id\":\"\",\"name_id\":\"\",\"feature_id\":\"\",\"network_id\":\"\",\"appearance_id\":\"\",\"keyword\":\"F8M\"}', 'success', 1567390871);
INSERT INTO `y5g_log` VALUES (654, 2, '在库查询', '{\"type_id\":\"\",\"name_id\":\"\",\"feature_id\":\"\",\"network_id\":\"\",\"appearance_id\":\"\",\"keyword\":\"F8M\"}', 'success', 1567390872);
INSERT INTO `y5g_log` VALUES (655, 2, '在库查询', '{\"type_id\":\"\",\"name_id\":\"\",\"feature_id\":\"\",\"network_id\":\"\",\"appearance_id\":\"\",\"keyword\":\"F8M\"}', 'success', 1567390873);
INSERT INTO `y5g_log` VALUES (656, 2, '在库查询', '{\"type_id\":\"\",\"name_id\":\"\",\"feature_id\":\"\",\"network_id\":\"\",\"appearance_id\":\"\",\"keyword\":\"F8M\"}', 'success', 1567390874);
INSERT INTO `y5g_log` VALUES (657, 2, '在库查询', '{\"type_id\":\"\",\"name_id\":\"\",\"feature_id\":\"\",\"network_id\":\"\",\"appearance_id\":\"\",\"keyword\":\"GG7XJ3JNJF8M\"}', 'success', 1567390880);
INSERT INTO `y5g_log` VALUES (658, 2, '在库查询', '{\"type_id\":\"\",\"name_id\":\"\",\"feature_id\":\"\",\"network_id\":\"\",\"appearance_id\":\"\",\"keyword\":\"GG7XJ3JNJF8M\"}', 'success', 1567390881);
INSERT INTO `y5g_log` VALUES (659, 2, '在库查询', '{\"type_id\":\"A1893\",\"name_id\":\"\",\"feature_id\":\"\",\"network_id\":\"\",\"appearance_id\":\"\",\"keyword\":\"GG7XJ3JNJF8M\"}', 'success', 1567390889);
INSERT INTO `y5g_log` VALUES (660, 2, '在库查询', '{\"type_id\":\"\",\"name_id\":\"\",\"feature_id\":\"\",\"network_id\":\"\",\"appearance_id\":\"\",\"keyword\":\"GG7XJ3JNJF8M\"}', 'success', 1567390893);
INSERT INTO `y5g_log` VALUES (661, 2, '在库查询', '{\"type_id\":\"\",\"name_id\":\"\",\"feature_id\":\"\",\"network_id\":\"\",\"appearance_id\":\"\",\"keyword\":\"GG7XJ3JNJF8M\"}', 'success', 1567390894);
INSERT INTO `y5g_log` VALUES (662, 2, '在库查询', '{\"type_id\":\"\",\"name_id\":\"\",\"feature_id\":\"\",\"network_id\":\"\",\"appearance_id\":\"\",\"keyword\":\"GG7XJ3JNJF8M\"}', 'success', 1567390895);
INSERT INTO `y5g_log` VALUES (663, 2, '在库查询', '{\"type_id\":\"\",\"name_id\":\"\",\"feature_id\":\"\",\"network_id\":\"\",\"appearance_id\":\"\",\"keyword\":\"GG7XJ3JNJF8M\"}', 'success', 1567390897);
INSERT INTO `y5g_log` VALUES (664, 2, '在库查询', '{\"type_id\":\"A1893\",\"name_id\":\"\",\"feature_id\":\"\",\"network_id\":\"\",\"appearance_id\":\"\",\"keyword\":\"GG7XJ3JNJF8M\"}', 'success', 1567390924);
INSERT INTO `y5g_log` VALUES (665, 2, '日志查询', '[]', 'success', 1567391288);
INSERT INTO `y5g_log` VALUES (666, 2, '日志查询', '{\"start_date\":\"2019-09-01\",\"end_date\":\"2019-09-02\",\"user_id\":\"0\",\"action\":\"u8fdbu8d27u5165u5e93\",\"response\":\"0\"}', 'success', 1567391319);
INSERT INTO `y5g_log` VALUES (667, 2, '日志查询', '{\"start_date\":\"2019-09-01\",\"end_date\":\"2019-09-02\",\"user_id\":\"0\",\"action\":\"u8fdbu8d27u5165u5e93\",\"response\":\"success\"}', 'success', 1567391331);
INSERT INTO `y5g_log` VALUES (668, 2, '日志查询', '{\"start_date\":\"2019-09-01\",\"end_date\":\"2019-09-02\",\"user_id\":\"2\",\"action\":\"u901au8fc7u5165u5e93u5ba1u6838\",\"response\":\"0\"}', 'success', 1567391339);
INSERT INTO `y5g_log` VALUES (669, 2, '在库查询', '[]', 'success', 1567391349);
INSERT INTO `y5g_log` VALUES (670, 2, '登陆', '{\"account\":\"a123456\",\"pwd\":\"a123456\"}', 'success', 1567404984);
INSERT INTO `y5g_log` VALUES (671, 2, '统计', '[]', 'success', 1567405103);
INSERT INTO `y5g_log` VALUES (672, 2, '统计', '{\"mark\":\"1\",\"start_date\":\"\",\"end_date\":\"\",\"name_id\":\"0\",\"income_channel_id\":\"0\",\"create_user_id\":\"0\",\"outgo_channel_id\":\"0\",\"sub\":\"search\"}', 'success', 1567405116);
INSERT INTO `y5g_log` VALUES (673, 2, '登陆', '{\"account\":\"a123456\",\"pwd\":\"a123456\"}', 'success', 1567406191);
INSERT INTO `y5g_log` VALUES (674, 2, '在库查询', '[]', 'success', 1567406196);
INSERT INTO `y5g_log` VALUES (675, 2, '统计', '[]', 'success', 1567406378);
INSERT INTO `y5g_log` VALUES (676, 2, '统计', '[]', 'success', 1567406464);
INSERT INTO `y5g_log` VALUES (677, 2, '在库查询', '[]', 'success', 1567406477);
INSERT INTO `y5g_log` VALUES (678, 2, '在库查询', '[]', 'success', 1567406536);
INSERT INTO `y5g_log` VALUES (679, 2, '在库查询', '[]', 'success', 1567406607);
INSERT INTO `y5g_log` VALUES (680, 2, '进货入库', '{\"date\":\"2019-09-02\",\"type_id\":\"\",\"category_id\":\"1\",\"name_id\":\"1\",\"network_id\":\"2\",\"feature_id\":\"4\",\"appearance_id\":\"1\",\"number\":\"A36985217456\",\"edition_id\":\"3\",\"memo\":\"u8fd9u662fu4e00u4e2au5546u54c1u5907u6ce8\",\"price\":\"2000\",\"channel_id\":\"5\"}', 'success', 1567406722);
INSERT INTO `y5g_log` VALUES (681, 2, '进货入库', '{\"id\":\"19\",\"date\":\"2019-09-02\",\"type_id\":\"\",\"category_id\":\"1\",\"name_id\":\"1\",\"network_id\":\"1\",\"feature_id\":\"3\",\"appearance_id\":\"1\",\"number\":\"A36985217456\",\"edition_id\":\"1\",\"memo\":\"u8fd9u662fu4e00u4e2au5546u54c1u5907u6ce812\",\"price\":\"2000.0000\",\"channel_id\":\"5\"}', 'success', 1567406778);
INSERT INTO `y5g_log` VALUES (682, 2, '通过入库审核', '{\"id\":\"19\"}', 'success', 1567406930);
INSERT INTO `y5g_log` VALUES (683, 2, '在库查询', '[]', 'success', 1567407424);
INSERT INTO `y5g_log` VALUES (684, 2, '在库查询', '[]', 'success', 1567407445);
INSERT INTO `y5g_log` VALUES (685, 2, '在库查询', '[]', 'success', 1567407678);
INSERT INTO `y5g_log` VALUES (686, 2, '在库查询', '[]', 'success', 1567408116);
INSERT INTO `y5g_log` VALUES (687, 2, '在库查询', '[]', 'success', 1567408781);
INSERT INTO `y5g_log` VALUES (688, 2, '在库查询', '{\"type_id\":\"\",\"name_id\":\"\",\"feature_id\":\"\",\"network_id\":\"\",\"appearance_id\":\"\",\"keyword\":\"\"}', 'success', 1567408795);
INSERT INTO `y5g_log` VALUES (689, 2, '在库查询', '{\"type_id\":\"\",\"name_id\":\"\",\"feature_id\":\"\",\"network_id\":\"\",\"appearance_id\":\"\",\"keyword\":\"	A36985217456\"}', 'success', 1567408956);
INSERT INTO `y5g_log` VALUES (690, 2, '在库查询', '{\"type_id\":\"\",\"name_id\":\"\",\"feature_id\":\"\",\"network_id\":\"\",\"appearance_id\":\"\",\"keyword\":\"A36985217456\"}', 'success', 1567408959);
INSERT INTO `y5g_log` VALUES (691, 2, '在库查询', '{\"type_id\":\"\",\"name_id\":\"\",\"feature_id\":\"\",\"network_id\":\"\",\"appearance_id\":\"\",\"keyword\":\"A36985217456\"}', 'success', 1567409034);
INSERT INTO `y5g_log` VALUES (692, 2, '在库查询', '{\"type_id\":\"\",\"name_id\":\"\",\"feature_id\":\"\",\"network_id\":\"\",\"appearance_id\":\"\",\"keyword\":\"A36985217456\"}', 'success', 1567409037);
INSERT INTO `y5g_log` VALUES (693, 2, '在库查询', '{\"type_id\":\"\",\"name_id\":\"\",\"feature_id\":\"\",\"network_id\":\"\",\"appearance_id\":\"\",\"keyword\":\"A36985217456\"}', 'success', 1567409050);
INSERT INTO `y5g_log` VALUES (694, 2, '在库查询', '{\"type_id\":\"\",\"name_id\":\"\",\"feature_id\":\"\",\"network_id\":\"\",\"appearance_id\":\"\",\"keyword\":\"A36985217456\"}', 'success', 1567409058);
INSERT INTO `y5g_log` VALUES (695, 2, '在库查询', '[]', 'success', 1567409128);
INSERT INTO `y5g_log` VALUES (696, 2, '在库查询', '[]', 'success', 1567409133);
INSERT INTO `y5g_log` VALUES (697, 2, '进货入库', '{\"date\":\"2019-09-02\",\"type_id\":\"A2007\",\"category_id\":\"3\",\"name_id\":\"18\",\"network_id\":\"48\",\"feature_id\":\"44\",\"appearance_id\":\"49\",\"number\":\"A78945632121\",\"edition_id\":\"6\",\"memo\":\"u8fd9u662fu4e00u4e2au5907u6ce8uff0cu8fd9u91ccu9762u662fu4e00u4e2au5907u6ce8.u8fd9u662fu4e00u4e2au5907u6ce8uff0cu8fd9u91ccu9762u662fu4e00u4e2au5907u6ce8.\r\nu8fd9u662fu4e00u4e2au5907u6ce8uff0cu8fd9u91ccu9762u662fu4e00u4e2au5907u6ce8\r\nu8fd9u662fu4e00u4e2au5907u6ce8uff0cu8fd9u91ccu9762u662fu4e00u4e2au5907u6ce8\r\nu8fd9u662fu4e00u4e2au5907u6ce8uff0cu8fd9u91ccu9762u662fu4e00u4e2au5907u6ce8\",\"price\":\"5200\",\"channel_id\":\"3\"}', 'success', 1567409377);
INSERT INTO `y5g_log` VALUES (698, 2, '通过入库审核', '{\"id\":\"20\"}', 'success', 1567409470);
INSERT INTO `y5g_log` VALUES (699, 2, '在库查询', '[]', 'success', 1567409510);
INSERT INTO `y5g_log` VALUES (700, 2, '综合查询', '[]', 'success', 1567409512);
INSERT INTO `y5g_log` VALUES (701, 2, '在库查询', '[]', 'success', 1567409514);
INSERT INTO `y5g_log` VALUES (702, 2, '在库查询', '[]', 'success', 1567409549);
INSERT INTO `y5g_log` VALUES (703, 2, '销售出库', '{\"item_id\":\"6\",\"channel_id\":\"1\",\"order_no\":\"555656465\",\"price\":\"2565\",\"cost\":\"36\",\"consignee_nickname\":\"u963fu745f\",\"consignee\":\"\",\"consignee_address\":\"\",\"consignee_phone\":\"\",\"memo\":\"u6211u4eb2u70edu4e07u4ebau6c83u5c14u6c83u4eba\"}', 'success', 1567409681);
INSERT INTO `y5g_log` VALUES (704, 2, '在库查询', '[]', 'success', 1567422113);
INSERT INTO `y5g_log` VALUES (705, 2, '在库查询', '[]', 'success', 1567422357);
INSERT INTO `y5g_log` VALUES (706, 2, '在库查询', '[]', 'success', 1567423642);
INSERT INTO `y5g_log` VALUES (707, 2, '登陆', '{\"account\":\"a123456\",\"pwd\":\"a123456\"}', 'success', 1567424328);
INSERT INTO `y5g_log` VALUES (708, 2, '在库查询', '[]', 'success', 1567424344);
INSERT INTO `y5g_log` VALUES (709, 2, '在库查询', '[]', 'success', 1567424367);
INSERT INTO `y5g_log` VALUES (710, 2, '进货入库', '{\"date\":\"2019-09-02\",\"type_id\":\"A2007\",\"category_id\":\"3\",\"name_id\":\"18\",\"network_id\":\"48\",\"feature_id\":\"44\",\"appearance_id\":\"49\",\"number\":\"A36985217455\",\"edition_id\":\"6\",\"memo\":\"u8fd9u662fu4e00u4e2au5546u54c1u5907u6ce8u7684u6d4bu8bd5\",\"price\":\"1478\",\"channel_id\":\"3\"}', 'success', 1567425529);
INSERT INTO `y5g_log` VALUES (711, 2, '通过入库审核', '{\"id\":\"21\"}', 'success', 1567425599);
INSERT INTO `y5g_log` VALUES (712, 2, '在库查询', '[]', 'success', 1567425760);
INSERT INTO `y5g_log` VALUES (713, 2, '在库查询', '[]', 'success', 1567425765);
INSERT INTO `y5g_log` VALUES (714, 2, '在库查询', '[]', 'success', 1567425776);
INSERT INTO `y5g_log` VALUES (715, 2, '在库查询', '[]', 'success', 1567425848);
INSERT INTO `y5g_log` VALUES (716, 2, '综合查询', '[]', 'success', 1567425974);
INSERT INTO `y5g_log` VALUES (717, 2, '综合查询', '{\"page\":\"2\"}', 'success', 1567426020);
INSERT INTO `y5g_log` VALUES (718, 2, '综合查询', '{\"page\":\"1\"}', 'success', 1567426041);
INSERT INTO `y5g_log` VALUES (719, 2, '综合查询', '[]', 'success', 1567426216);
INSERT INTO `y5g_log` VALUES (720, 2, '进货入库', '{\"date\":\"2019-09-02\",\"type_id\":\"A2008\",\"category_id\":\"3\",\"name_id\":\"18\",\"network_id\":\"50\",\"feature_id\":\"44\",\"appearance_id\":\"49\",\"number\":\"A12333296354\",\"edition_id\":\"6\",\"memo\":\"u5c31u662fu4e00u4e2au5546u54c1u5907u6ce8\r\nu6d4bu8bd5\",\"price\":\"2520\",\"channel_id\":\"3\"}', 'success', 1567426335);
INSERT INTO `y5g_log` VALUES (721, 2, '在库查询', '[]', 'success', 1567426372);
INSERT INTO `y5g_log` VALUES (722, 2, '在库查询', '{\"type_id\":\"\",\"name_id\":\"\",\"feature_id\":\"\",\"network_id\":\"\",\"appearance_id\":\"\",\"keyword\":\"\"}', 'success', 1567426374);
INSERT INTO `y5g_log` VALUES (723, 2, '在库查询', '{\"type_id\":\"\",\"name_id\":\"\",\"feature_id\":\"\",\"network_id\":\"\",\"appearance_id\":\"\",\"keyword\":\"\"}', 'success', 1567426375);
INSERT INTO `y5g_log` VALUES (724, 2, '在库查询', '{\"type_id\":\"\",\"name_id\":\"\",\"feature_id\":\"\",\"network_id\":\"\",\"appearance_id\":\"\",\"keyword\":\"\"}', 'success', 1567426671);
INSERT INTO `y5g_log` VALUES (725, 2, '在库查询', '[]', 'success', 1567426688);
INSERT INTO `y5g_log` VALUES (726, 2, '登陆', '{\"account\":\"a123456\",\"pwd\":\"a123456\"}', 'success', 1567428164);
INSERT INTO `y5g_log` VALUES (727, 2, '登陆', '{\"account\":\"a123456\",\"pwd\":\"a123456\"}', 'success', 1567428908);
INSERT INTO `y5g_log` VALUES (728, 2, '日志查询', '[]', 'success', 1567428921);
INSERT INTO `y5g_log` VALUES (729, 2, '在库查询', '[]', 'success', 1567428928);
INSERT INTO `y5g_log` VALUES (730, 2, '在库查询', '[]', 'success', 1567428983);
INSERT INTO `y5g_log` VALUES (731, 2, '在库查询', '{\"type_id\":\"\",\"name_id\":\"\",\"feature_id\":\"\",\"network_id\":\"\",\"appearance_id\":\"\",\"keyword\":\"\"}', 'success', 1567428986);
INSERT INTO `y5g_log` VALUES (732, 2, '在库查询', '[]', 'success', 1567429289);
INSERT INTO `y5g_log` VALUES (733, 2, '增加进货渠道/出货途径', '{\"type\":\"1\",\"data\":\"FY-u5a9bu5a9b\"}', 'success', 1567429371);
INSERT INTO `y5g_log` VALUES (734, 2, '增加进货渠道/出货途径', '{\"type\":\"1\",\"data\":\"FY-u5c0fu4f1f\"}', 'success', 1567429388);
INSERT INTO `y5g_log` VALUES (735, 2, '在库查询', '[]', 'success', 1567429496);
INSERT INTO `y5g_log` VALUES (736, 2, '在库查询', '[]', 'success', 1567429564);
INSERT INTO `y5g_log` VALUES (737, 2, '在库查询', '[]', 'success', 1567429625);
INSERT INTO `y5g_log` VALUES (738, 2, '进货入库', '{\"date\":\"2019-09-02\",\"type_id\":\"A1893\",\"category_id\":\"1\",\"name_id\":\"1\",\"network_id\":\"1\",\"feature_id\":\"3\",\"appearance_id\":\"1\",\"number\":\"GG7XG3K9JMVR\",\"edition_id\":\"1\",\"memo\":\"u7535u6c600u5faau73af\",\"price\":\"2000\",\"channel_id\":\"3\"}', 'success', 1567429672);
INSERT INTO `y5g_log` VALUES (739, 2, '在库查询', '[]', 'success', 1567429696);
INSERT INTO `y5g_log` VALUES (740, 2, '通过入库审核', '{\"id\":\"23\"}', 'success', 1567429710);
INSERT INTO `y5g_log` VALUES (741, 2, '在库查询', '[]', 'success', 1567429715);
INSERT INTO `y5g_log` VALUES (742, 2, '销售出库', '{\"item_id\":\"14\",\"channel_id\":\"1\",\"order_no\":\"123456\",\"price\":\"2000\",\"cost\":\"200\",\"consignee_nickname\":\"\",\"consignee\":\"\",\"consignee_address\":\"\",\"consignee_phone\":\"\",\"memo\":\"\"}', 'success', 1567429798);
INSERT INTO `y5g_log` VALUES (743, 2, '通过出库审核', '{\"id\":\"7\"}', 'success', 1567429831);
INSERT INTO `y5g_log` VALUES (744, 2, '统计', '[]', 'success', 1567429883);
INSERT INTO `y5g_log` VALUES (745, 2, '统计', '{\"mark\":\"1\",\"start_date\":\"2019-09-01\",\"end_date\":\"2019-09-03\",\"name_id\":\"0\",\"income_channel_id\":\"0\",\"create_user_id\":\"0\",\"outgo_channel_id\":\"0\",\"sub\":\"search\"}', 'success', 1567429895);
INSERT INTO `y5g_log` VALUES (746, 2, '登出', '{\"id\":2}', 'success', 1567434316);
INSERT INTO `y5g_log` VALUES (747, 2, '登陆', '{\"account\":\"a123456\",\"pwd\":\"a123456\"}', 'success', 1567436326);
INSERT INTO `y5g_log` VALUES (748, 2, '登出', '{\"id\":2}', 'success', 1567436651);
INSERT INTO `y5g_log` VALUES (749, 2, '登陆', '{\"account\":\"a123456\",\"pwd\":\"a123456\"}', 'success', 1567437154);
INSERT INTO `y5g_log` VALUES (750, 2, '在库查询', '[]', 'success', 1567437329);
INSERT INTO `y5g_log` VALUES (751, 2, '在库查询', '[]', 'success', 1567437335);
INSERT INTO `y5g_log` VALUES (752, 2, '在库查询', '[]', 'success', 1567437336);
INSERT INTO `y5g_log` VALUES (753, 2, '登出', '{\"id\":2}', 'success', 1567437356);
INSERT INTO `y5g_log` VALUES (754, 2, '登陆', '{\"account\":\"a123456\",\"pwd\":\"a123456\"}', 'success', 1567437365);
INSERT INTO `y5g_log` VALUES (755, 2, '登出', '{\"id\":2}', 'success', 1567437428);
INSERT INTO `y5g_log` VALUES (756, 2, '登陆', '{\"account\":\"a123456\",\"pwd\":\"a123456\"}', 'success', 1567437521);
INSERT INTO `y5g_log` VALUES (757, 2, '登出', '{\"id\":2}', 'success', 1567437529);
INSERT INTO `y5g_log` VALUES (758, 2, '登陆', '{\"account\":\"a123456\",\"pwd\":\"a123456\"}', 'success', 1567437826);
INSERT INTO `y5g_log` VALUES (759, 2, '在库查询', '[]', 'success', 1567437831);
INSERT INTO `y5g_log` VALUES (760, 2, '在库查询', '[]', 'success', 1567437836);
INSERT INTO `y5g_log` VALUES (761, 2, '拒绝出库审核', '{\"id\":\"6\"}', 'success', 1567437859);
INSERT INTO `y5g_log` VALUES (762, 1, '登陆', '{\"account\":\"a12345\",\"pwd\":\"a12345\"}', 'success', 1567504928);
INSERT INTO `y5g_log` VALUES (763, 1, '登陆', '{\"account\":\"a12345\",\"pwd\":\"a12345\"}', 'success', 1567514161);
INSERT INTO `y5g_log` VALUES (764, 1, '在库查询', '[]', 'success', 1567514164);
INSERT INTO `y5g_log` VALUES (765, 1, '在库查询', '[]', 'success', 1567523788);
INSERT INTO `y5g_log` VALUES (766, 1, '在库查询', '{\"type_id\":\"\",\"name_id\":\"\",\"feature_id\":\"\",\"network_id\":\"\",\"appearance_id\":\"\",\"keyword\":\"GG\"}', 'success', 1567523791);
INSERT INTO `y5g_log` VALUES (767, 1, '在库查询', '{\"type_id\":\"\",\"name_id\":\"\",\"feature_id\":\"\",\"network_id\":\"\",\"appearance_id\":\"\",\"keyword\":\"GG\"}', 'success', 1567523793);
INSERT INTO `y5g_log` VALUES (768, 1, '在库查询', '{\"type_id\":\"\",\"name_id\":\"\",\"feature_id\":\"\",\"network_id\":\"\",\"appearance_id\":\"\",\"keyword\":\"GG\"}', 'success', 1567523795);
INSERT INTO `y5g_log` VALUES (769, 1, '综合查询', '[]', 'success', 1567523798);
INSERT INTO `y5g_log` VALUES (770, 1, '综合查询', '{\"category_id\":\"\",\"type_id\":\"\",\"name_id\":\"\",\"feature_id\":\"\",\"network_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"GG\"}', 'success', 1567523801);
INSERT INTO `y5g_log` VALUES (771, 1, '在库查询', '[]', 'success', 1567523823);
INSERT INTO `y5g_log` VALUES (772, 1, '在库查询', '[]', 'success', 1567523913);
INSERT INTO `y5g_log` VALUES (773, 1, '在库查询', '{\"type_id\":\"\",\"name_id\":\"\",\"network_id\":\"\",\"feature_id\":\"\",\"appearance_id\":\"\",\"keyword\":\"GG\"}', 'success', 1567523918);
INSERT INTO `y5g_log` VALUES (774, 1, '综合查询', '[]', 'success', 1567523921);
INSERT INTO `y5g_log` VALUES (775, 1, '综合查询', '{\"category_id\":\"\",\"type_id\":\"\",\"name_id\":\"\",\"network_id\":\"\",\"feature_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"GG\"}', 'success', 1567523924);
INSERT INTO `y5g_log` VALUES (776, 1, '综合查询', '{\"category_id\":\"\",\"type_id\":\"\",\"name_id\":\"\",\"network_id\":\"\",\"feature_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\"}', 'success', 1567523928);
INSERT INTO `y5g_log` VALUES (777, 1, '综合查询', '{\"category_id\":\"Appleu5e73u677f\",\"type_id\":\"\",\"name_id\":\"\",\"network_id\":\"\",\"feature_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\"}', 'success', 1567523945);
INSERT INTO `y5g_log` VALUES (778, 1, '综合查询', '{\"page\":\"2\"}', 'success', 1567523947);
INSERT INTO `y5g_log` VALUES (779, 1, '综合查询', '{\"page\":\"1\"}', 'success', 1567523949);
INSERT INTO `y5g_log` VALUES (780, 1, '综合查询', '{\"category_id\":\"Appleu5e73u677f\",\"type_id\":\"\",\"name_id\":\"\",\"network_id\":\"\",\"feature_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\"}', 'success', 1567523959);
INSERT INTO `y5g_log` VALUES (781, 1, '综合查询', '{\"page\":\"2\"}', 'success', 1567523961);
INSERT INTO `y5g_log` VALUES (782, 1, '综合查询', '{\"page\":\"1\"}', 'success', 1567523963);
INSERT INTO `y5g_log` VALUES (783, 1, '综合查询', '{\"category_id\":\"Appleu5e73u677f\",\"type_id\":\"\",\"name_id\":\"\",\"network_id\":\"\",\"feature_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\"}', 'success', 1567523966);
INSERT INTO `y5g_log` VALUES (784, 1, '综合查询', '{\"category_id\":\"Appleu5e73u677f\",\"type_id\":\"\",\"name_id\":\"\",\"network_id\":\"\",\"feature_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\"}', 'success', 1567524194);
INSERT INTO `y5g_log` VALUES (785, 1, '综合查询', '{\"category_id\":\"Appleu5e73u677f\",\"type_id\":\"\",\"name_id\":\"\",\"network_id\":\"\",\"feature_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\"}', 'success', 1567524198);
INSERT INTO `y5g_log` VALUES (786, 1, '综合查询', '{\"page\":\"2\"}', 'success', 1567524200);
INSERT INTO `y5g_log` VALUES (787, 1, '综合查询', '{\"page\":\"1\"}', 'success', 1567524202);
INSERT INTO `y5g_log` VALUES (788, 1, '综合查询', '{\"category_id\":\"Appleu5e73u677f\",\"type_id\":\"\",\"name_id\":\"\",\"network_id\":\"\",\"feature_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\"}', 'success', 1567524206);
INSERT INTO `y5g_log` VALUES (789, 1, '综合查询', '{\"page\":\"2\"}', 'success', 1567524207);
INSERT INTO `y5g_log` VALUES (790, 1, '综合查询', '{\"page\":\"1\"}', 'success', 1567524209);
INSERT INTO `y5g_log` VALUES (791, 1, '综合查询', '{\"category_id\":\"Appleu5e73u677f\",\"type_id\":\"\",\"name_id\":\"\",\"network_id\":\"\",\"feature_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\"}', 'success', 1567524213);
INSERT INTO `y5g_log` VALUES (792, 1, '综合查询', '{\"category_id\":\"Appleu5e73u677f\",\"type_id\":\"\",\"name_id\":\"\",\"network_id\":\"\",\"feature_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\"}', 'success', 1567524361);
INSERT INTO `y5g_log` VALUES (793, 1, '综合查询', '{\"category_id\":\"Appleu5e73u677f\",\"type_id\":\"\",\"name_id\":\"\",\"network_id\":\"\",\"feature_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\"}', 'success', 1567524364);
INSERT INTO `y5g_log` VALUES (794, 1, '综合查询', '{\"page\":\"2\"}', 'success', 1567524365);
INSERT INTO `y5g_log` VALUES (795, 1, '综合查询', '{\"page\":\"1\"}', 'success', 1567524367);
INSERT INTO `y5g_log` VALUES (796, 1, '综合查询', '{\"category_id\":\"Appleu5e73u677f\",\"type_id\":\"\",\"name_id\":\"\",\"network_id\":\"\",\"feature_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\"}', 'success', 1567524379);
INSERT INTO `y5g_log` VALUES (797, 1, '综合查询', '{\"category_id\":\"Appleu5e73u677f\",\"type_id\":\"\",\"name_id\":\"\",\"network_id\":\"\",\"feature_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\"}', 'success', 1567524385);
INSERT INTO `y5g_log` VALUES (798, 1, '在库查询', '[]', 'success', 1567524545);
INSERT INTO `y5g_log` VALUES (799, 1, '在库查询', '[]', 'success', 1567524573);
INSERT INTO `y5g_log` VALUES (800, 1, '综合查询', '[]', 'success', 1567524576);
INSERT INTO `y5g_log` VALUES (801, 1, '综合查询', '{\"category_id\":\"Appleu5e73u677f\",\"type_id\":\"\",\"name_id\":\"\",\"network_id\":\"\",\"feature_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\"}', 'success', 1567524579);
INSERT INTO `y5g_log` VALUES (802, 1, '综合查询', '{\"category_id\":\"Appleu5e73u677f\",\"type_id\":\"\",\"name_id\":\"\",\"network_id\":\"\",\"feature_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\",\"page\":\"2\"}', 'success', 1567524583);
INSERT INTO `y5g_log` VALUES (803, 1, '综合查询', '{\"category_id\":\"Appleu5e73u677f\",\"type_id\":\"\",\"name_id\":\"\",\"network_id\":\"\",\"feature_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\",\"page\":\"1\"}', 'success', 1567524584);
INSERT INTO `y5g_log` VALUES (804, 1, '综合查询', '{\"category_id\":\"Appleu5e73u677f\",\"type_id\":\"\",\"name_id\":\"iPad 2018uff086uff09\",\"network_id\":\"\",\"feature_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\"}', 'success', 1567524595);
INSERT INTO `y5g_log` VALUES (805, 1, '综合查询', '{\"category_id\":\"Appleu5e73u677f\",\"type_id\":\"\",\"name_id\":\"iPad 2018uff086uff09\",\"network_id\":\"\",\"feature_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\",\"page\":\"2\"}', 'success', 1567524597);
INSERT INTO `y5g_log` VALUES (806, 1, '综合查询', '{\"category_id\":\"Appleu5e73u677f\",\"type_id\":\"\",\"name_id\":\"iPad 2018uff086uff09\",\"network_id\":\"\",\"feature_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\",\"page\":\"1\"}', 'success', 1567524599);
INSERT INTO `y5g_log` VALUES (807, 1, '综合查询', '{\"category_id\":\"Appleu5e73u677f\",\"type_id\":\"\",\"name_id\":\"iPad 2018uff086uff09\",\"network_id\":\"\",\"feature_id\":\"32GB\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\"}', 'success', 1567524606);
INSERT INTO `y5g_log` VALUES (808, 1, '综合查询', '{\"category_id\":\"Appleu5e73u677f\",\"type_id\":\"\",\"name_id\":\"\",\"network_id\":\"\",\"feature_id\":\"32GB\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\"}', 'success', 1567524613);
INSERT INTO `y5g_log` VALUES (809, 1, '综合查询', '{\"category_id\":\"Appleu5e73u677f\",\"type_id\":\"\",\"name_id\":\"\",\"network_id\":\"\",\"feature_id\":\"32GB\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\",\"page\":\"2\"}', 'success', 1567524614);
INSERT INTO `y5g_log` VALUES (810, 1, '综合查询', '{\"category_id\":\"Appleu5e73u677f\",\"type_id\":\"\",\"name_id\":\"\",\"network_id\":\"\",\"feature_id\":\"32GB\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\",\"page\":\"2\"}', 'success', 1567524702);
INSERT INTO `y5g_log` VALUES (811, 1, '综合查询', '{\"category_id\":\"Appleu5e73u677f\",\"type_id\":\"\",\"name_id\":\"\",\"network_id\":\"\",\"feature_id\":\"32GB\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\",\"page\":\"2\"}', 'success', 1567524782);
INSERT INTO `y5g_log` VALUES (812, 1, '综合查询', '{\"category_id\":\"Appleu5e73u677f\",\"type_id\":\"\",\"name_id\":\"\",\"network_id\":\"\",\"feature_id\":\"32GB\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\",\"page\":\"2\"}', 'success', 1567524791);
INSERT INTO `y5g_log` VALUES (813, 1, '综合查询', '{\"category_id\":\"Appleu5e73u677f\",\"type_id\":\"\",\"name_id\":\"\",\"network_id\":\"\",\"feature_id\":\"32GB\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\",\"page\":\"2\"}', 'success', 1567524832);
INSERT INTO `y5g_log` VALUES (814, 1, '综合查询', '{\"category_id\":\"Appleu5e73u677f\",\"type_id\":\"\",\"name_id\":\"\",\"network_id\":\"\",\"feature_id\":\"32GB\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\",\"page\":\"2\"}', 'success', 1567524934);
INSERT INTO `y5g_log` VALUES (815, 1, '综合查询', '{\"category_id\":\"Appleu5e73u677f\",\"type_id\":\"\",\"name_id\":\"\",\"network_id\":\"\",\"feature_id\":\"32GB\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\",\"page\":\"2\"}', 'success', 1567524942);
INSERT INTO `y5g_log` VALUES (816, 1, '在库查询', '[]', 'success', 1567525132);
INSERT INTO `y5g_log` VALUES (817, 1, '在库查询', '{\"type_id\":\"\",\"name_id\":\"\",\"network_id\":\"\",\"feature_id\":\"\",\"appearance_id\":\"\",\"keyword\":\"GG\"}', 'success', 1567525141);
INSERT INTO `y5g_log` VALUES (818, 1, '在库查询', '{\"type_id\":\"\",\"name_id\":\"\",\"network_id\":\"\",\"feature_id\":\"\",\"appearance_id\":\"\",\"keyword\":\"GG\"}', 'success', 1567525307);
INSERT INTO `y5g_log` VALUES (819, 1, '在库查询', '[]', 'success', 1567525332);
INSERT INTO `y5g_log` VALUES (820, 1, '在库查询', '[]', 'success', 1567525422);
INSERT INTO `y5g_log` VALUES (821, 1, '综合查询', '[]', 'success', 1567525423);
INSERT INTO `y5g_log` VALUES (822, 1, '综合查询', '{\"category_id\":\"\",\"type_id\":\"\",\"name_id\":\"\",\"network_id\":\"\",\"feature_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"GG\"}', 'success', 1567525428);
INSERT INTO `y5g_log` VALUES (823, 2, '登陆', '{\"account\":\"a123456\",\"pwd\":\"a123456\"}', 'success', 1567525475);
INSERT INTO `y5g_log` VALUES (824, 2, '进货入库', '{\"date\":\"2019-09-03\",\"type_id\":\"A2007\",\"category_id\":\"3\",\"name_id\":\"18\",\"network_id\":\"48\",\"feature_id\":\"44\",\"appearance_id\":\"49\",\"number\":\"avs147852369\",\"edition_id\":\"6\",\"memo\":\"\",\"price\":\"1000\",\"channel_id\":\"3\"}', 'fail', 1567525762);
INSERT INTO `y5g_log` VALUES (825, 2, '进货入库', '{\"date\":\"2019-09-03\",\"type_id\":\"A2007\",\"category_id\":\"3\",\"name_id\":\"18\",\"network_id\":\"48\",\"feature_id\":\"44\",\"appearance_id\":\"49\",\"number\":\"cvb123456789\",\"edition_id\":\"6\",\"memo\":\"\",\"price\":\"2000\",\"channel_id\":\"3\"}', 'fail', 1567525789);
INSERT INTO `y5g_log` VALUES (826, 2, '进货入库', '{\"date\":\"2019-09-03\",\"type_id\":\"A2007\",\"category_id\":\"3\",\"name_id\":\"18\",\"network_id\":\"48\",\"feature_id\":\"44\",\"appearance_id\":\"49\",\"number\":\"ASD369852147\",\"edition_id\":\"6\",\"memo\":\"\",\"price\":\"123456789\",\"channel_id\":\"3\"}', 'fail', 1567525847);
INSERT INTO `y5g_log` VALUES (827, 1, '综合查询', '[]', 'success', 1567525895);
INSERT INTO `y5g_log` VALUES (828, 1, '进货入库', '{\"date\":\"2019-09-03\",\"type_id\":\"A2007\",\"category_id\":\"3\",\"name_id\":\"18\",\"network_id\":\"48\",\"feature_id\":\"44\",\"appearance_id\":\"49\",\"number\":\"20190604-002\",\"edition_id\":\"6\",\"memo\":\"\",\"price\":\"1798\",\"channel_id\":\"3\"}', 'fail', 1567525990);
INSERT INTO `y5g_log` VALUES (829, 2, '进货入库', '{\"date\":\"2019-09-03\",\"type_id\":\"A1893\",\"category_id\":\"1\",\"name_id\":\"1\",\"network_id\":\"1\",\"feature_id\":\"3\",\"appearance_id\":\"1\",\"number\":\"zxc123456789\",\"edition_id\":\"1\",\"memo\":\"\",\"price\":\"2000\",\"channel_id\":\"3\"}', 'fail', 1567526021);
INSERT INTO `y5g_log` VALUES (830, 1, '进货入库', '{\"date\":\"2019-09-03\",\"type_id\":\"A2007\",\"category_id\":\"3\",\"name_id\":\"18\",\"network_id\":\"48\",\"feature_id\":\"44\",\"appearance_id\":\"49\",\"number\":\"20190604-002\",\"edition_id\":\"6\",\"memo\":\"\",\"price\":\"1798\",\"channel_id\":\"3\"}', 'success', 1567526065);
INSERT INTO `y5g_log` VALUES (831, 2, '进货入库', '{\"date\":\"2019-09-03\",\"type_id\":\"A2007\",\"category_id\":\"3\",\"name_id\":\"18\",\"network_id\":\"48\",\"feature_id\":\"44\",\"appearance_id\":\"49\",\"number\":\"ase123456789\",\"edition_id\":\"6\",\"memo\":\"1\",\"price\":\"2000\",\"channel_id\":\"3\"}', 'success', 1567526420);
INSERT INTO `y5g_log` VALUES (832, 1, '在库查询', '[]', 'success', 1567526758);
INSERT INTO `y5g_log` VALUES (833, 2, '综合查询', '[]', 'success', 1567526762);
INSERT INTO `y5g_log` VALUES (834, 2, '综合查询', '{\"category_id\":\"\",\"type_id\":\"\",\"name_id\":\"\",\"network_id\":\"\",\"feature_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"DDDDDSFJ\"}', 'success', 1567526767);
INSERT INTO `y5g_log` VALUES (835, 2, '综合查询', '[]', 'success', 1567526772);
INSERT INTO `y5g_log` VALUES (836, 2, '在库查询', '[]', 'success', 1567526774);
INSERT INTO `y5g_log` VALUES (837, 2, '在库查询', '{\"type_id\":\"\",\"name_id\":\"\",\"network_id\":\"\",\"feature_id\":\"\",\"appearance_id\":\"\",\"keyword\":\"DDDDDSFJ\"}', 'success', 1567526777);
INSERT INTO `y5g_log` VALUES (838, 2, '在库查询', '{\"type_id\":\"\",\"name_id\":\"\",\"network_id\":\"\",\"feature_id\":\"\",\"appearance_id\":\"\",\"keyword\":\"DDDDDSFJ\"}', 'success', 1567526779);
INSERT INTO `y5g_log` VALUES (839, 2, '在库查询', '{\"type_id\":\"\",\"name_id\":\"\",\"network_id\":\"\",\"feature_id\":\"\",\"appearance_id\":\"\",\"keyword\":\"DDDDDSFJ\"}', 'success', 1567526785);
INSERT INTO `y5g_log` VALUES (840, 2, '综合查询', '[]', 'success', 1567526787);
INSERT INTO `y5g_log` VALUES (841, 2, '在库查询', '[]', 'success', 1567526789);
INSERT INTO `y5g_log` VALUES (842, 2, '在库查询', '{\"type_id\":\"\",\"name_id\":\"\",\"network_id\":\"\",\"feature_id\":\"\",\"appearance_id\":\"\",\"keyword\":\"GG7XJ3JNJF8M\"}', 'success', 1567526793);
INSERT INTO `y5g_log` VALUES (843, 2, '综合查询', '[]', 'success', 1567526797);
INSERT INTO `y5g_log` VALUES (844, 2, '综合查询', '{\"category_id\":\"\",\"type_id\":\"\",\"name_id\":\"\",\"network_id\":\"\",\"feature_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"GG7XJ3JNJF8M\"}', 'success', 1567526799);
INSERT INTO `y5g_log` VALUES (845, 2, '综合查询', '{\"category_id\":\"\",\"type_id\":\"\",\"name_id\":\"\",\"network_id\":\"\",\"feature_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"3JNJF8M\"}', 'success', 1567526802);
INSERT INTO `y5g_log` VALUES (846, 1, '在库查询', '[]', 'success', 1567528070);
INSERT INTO `y5g_log` VALUES (847, 2, '登出', '{\"id\":2}', 'success', 1567565151);
INSERT INTO `y5g_log` VALUES (848, 2, '登陆', '{\"account\":\"a123456\",\"pwd\":\"a123456\"}', 'success', 1567655322);
INSERT INTO `y5g_log` VALUES (849, 2, '销售出库', '{\"item_id\":\"6\",\"channel_id\":\"1\",\"order_no\":\"454545468465\",\"price\":\"1200\",\"cost\":\"20\",\"consignee_nickname\":\"\",\"consignee\":\"\",\"consignee_address\":\"\",\"consignee_phone\":\"\",\"memo\":\"\"}', 'success', 1567655365);
INSERT INTO `y5g_log` VALUES (850, 2, '销售出库', '{\"item_id\":\"9\",\"channel_id\":\"0\",\"order_no\":\"54545421\",\"price\":\"2560\",\"cost\":\"36\",\"consignee_nickname\":\"\",\"consignee\":\"\",\"consignee_address\":\"\",\"consignee_phone\":\"\",\"memo\":\"\"}', 'success', 1567655380);
INSERT INTO `y5g_log` VALUES (851, 2, '通过出库审核', '{\"id\":\"8\"}', 'success', 1567655387);
INSERT INTO `y5g_log` VALUES (852, 2, '通过出库审核', '{\"id\":\"9\"}', 'success', 1567655390);
INSERT INTO `y5g_log` VALUES (853, 2, '通过入库审核', '{\"id\":\"17\"}', 'success', 1567655405);
INSERT INTO `y5g_log` VALUES (854, 2, '通过入库审核', '{\"id\":\"24\"}', 'success', 1567655408);
INSERT INTO `y5g_log` VALUES (855, 1, '登陆', '{\"account\":\"a12345\",\"pwd\":\"a12345\"}', 'success', 1567677869);
INSERT INTO `y5g_log` VALUES (856, 1, '在库查询', '[]', 'success', 1567677875);
INSERT INTO `y5g_log` VALUES (857, 1, '在库查询', '[]', 'success', 1567685984);
INSERT INTO `y5g_log` VALUES (858, 1, '在库查询', '{\"type_id\":\"\",\"name_id\":\"\",\"network_id\":\"\",\"feature_id\":\"128GB\",\"appearance_id\":\"\",\"keyword\":\"\"}', 'success', 1567685994);
INSERT INTO `y5g_log` VALUES (859, 1, '在库查询', '{\"type_id\":\"\",\"name_id\":\"\",\"network_id\":\"\",\"feature_id\":\"32GB\",\"appearance_id\":\"\",\"keyword\":\"\"}', 'success', 1567685997);
INSERT INTO `y5g_log` VALUES (860, 1, '在库查询', '{\"type_id\":\"\",\"name_id\":\"\",\"network_id\":\"\",\"feature_id\":\"\",\"appearance_id\":\"\",\"keyword\":\"\"}', 'success', 1567685998);
INSERT INTO `y5g_log` VALUES (861, 1, '在库查询', '[]', 'success', 1567686046);
INSERT INTO `y5g_log` VALUES (862, 1, '综合查询', '[]', 'success', 1567686048);
INSERT INTO `y5g_log` VALUES (863, 1, '在库查询', '[]', 'success', 1567686202);
INSERT INTO `y5g_log` VALUES (864, 1, '综合查询', '[]', 'success', 1567686205);
INSERT INTO `y5g_log` VALUES (865, 1, '综合查询', '[]', 'success', 1567686559);
INSERT INTO `y5g_log` VALUES (866, 1, '在库查询', '[]', 'success', 1567686953);
INSERT INTO `y5g_log` VALUES (867, 1, '在库查询', '[]', 'success', 1567686959);
INSERT INTO `y5g_log` VALUES (868, 1, '销售出库', '{\"item_id\":\"11\",\"channel_id\":\"1\",\"order_no\":\"201907011-x002\",\"price\":\"2099\",\"cost\":\"200\",\"consignee_nickname\":\"u5c0f111\",\"consignee\":\"\",\"consignee_address\":\"\",\"consignee_phone\":\"\",\"memo\":\"\"}', 'success', 1567686982);
INSERT INTO `y5g_log` VALUES (869, 2, '登陆', '{\"account\":\"a123456\",\"pwd\":\"a123456\"}', 'success', 1567689443);
INSERT INTO `y5g_log` VALUES (870, 2, '在库查询', '[]', 'success', 1567689446);
INSERT INTO `y5g_log` VALUES (871, 2, '进货入库', '{\"date\":\"2019-09-05\",\"type_id\":\"A1893\",\"category_id\":\"1\",\"name_id\":\"1\",\"network_id\":\"1\",\"feature_id\":\"3\",\"appearance_id\":\"1\",\"number\":\"g12356498522\",\"edition_id\":\"1\",\"memo\":\"\",\"price\":\"2000\",\"channel_id\":\"3\"}', 'success', 1567689470);
INSERT INTO `y5g_log` VALUES (872, 2, '进货入库', '{\"date\":\"2019-09-05\",\"type_id\":\"A1674\",\"category_id\":\"1\",\"name_id\":\"14\",\"network_id\":\"8\",\"feature_id\":\"20\",\"appearance_id\":\"36\",\"number\":\"A25896314443\",\"edition_id\":\"1\",\"memo\":\"\",\"price\":\"1800\",\"channel_id\":\"3\"}', 'success', 1567689500);
INSERT INTO `y5g_log` VALUES (873, 2, '通过入库审核', '{\"id\":\"27\"}', 'success', 1567689506);
INSERT INTO `y5g_log` VALUES (874, 2, '通过入库审核', '{\"id\":\"26\"}', 'success', 1567689513);
INSERT INTO `y5g_log` VALUES (875, 2, '通过入库审核', '{\"id\":\"25\"}', 'success', 1567689518);
INSERT INTO `y5g_log` VALUES (876, 2, '通过入库审核', '{\"id\":\"22\"}', 'success', 1567689527);
INSERT INTO `y5g_log` VALUES (877, 2, '进货入库', '{\"date\":\"2019-09-05\",\"type_id\":\"A1893\",\"category_id\":\"1\",\"name_id\":\"1\",\"network_id\":\"1\",\"feature_id\":\"3\",\"appearance_id\":\"1\",\"number\":\"BCD123652354\",\"edition_id\":\"1\",\"memo\":\"\",\"price\":\"1200\",\"channel_id\":\"3\"}', 'success', 1567689563);
INSERT INTO `y5g_log` VALUES (878, 2, '进货入库', '{\"date\":\"2019-09-05\",\"type_id\":\"A2008\",\"category_id\":\"3\",\"name_id\":\"18\",\"network_id\":\"50\",\"feature_id\":\"44\",\"appearance_id\":\"49\",\"number\":\"q32145696322\",\"edition_id\":\"6\",\"memo\":\"\",\"price\":\"3000\",\"channel_id\":\"3\"}', 'success', 1567689591);
INSERT INTO `y5g_log` VALUES (879, 2, '在库查询', '[]', 'success', 1567690695);
INSERT INTO `y5g_log` VALUES (880, 2, '在库查询', '{\"page\":\"2\"}', 'success', 1567690698);
INSERT INTO `y5g_log` VALUES (881, 2, '在库查询', '{\"page\":\"1\"}', 'success', 1567690700);
INSERT INTO `y5g_log` VALUES (882, 2, '在库查询', '{\"page\":\"1\"}', 'success', 1567690719);
INSERT INTO `y5g_log` VALUES (883, 2, '在库查询', '{\"page\":\"1\"}', 'success', 1567690730);
INSERT INTO `y5g_log` VALUES (884, 2, '在库查询', '{\"page\":\"2\"}', 'success', 1567690733);
INSERT INTO `y5g_log` VALUES (885, 2, '在库查询', '{\"page\":\"1\"}', 'success', 1567690736);
INSERT INTO `y5g_log` VALUES (886, 2, '在库查询', '[]', 'success', 1567690754);
INSERT INTO `y5g_log` VALUES (887, 2, '在库查询', '{\"page\":\"2\"}', 'success', 1567690760);
INSERT INTO `y5g_log` VALUES (888, 2, '在库查询', '{\"page\":\"1\"}', 'success', 1567690763);
INSERT INTO `y5g_log` VALUES (889, 2, '在库查询', '[]', 'success', 1567690809);
INSERT INTO `y5g_log` VALUES (890, 2, '在库查询', '{\"type_id\":\"\",\"name_id\":\"\",\"network_id\":\"\",\"feature_id\":\"\",\"appearance_id\":\"\",\"keyword\":\"\"}', 'success', 1567690819);
INSERT INTO `y5g_log` VALUES (891, 2, '综合查询', '[]', 'success', 1567690821);
INSERT INTO `y5g_log` VALUES (892, 2, '综合查询', '{\"page\":\"3\"}', 'success', 1567690825);
INSERT INTO `y5g_log` VALUES (893, 2, '综合查询', '{\"page\":\"1\"}', 'success', 1567690830);
INSERT INTO `y5g_log` VALUES (894, 2, '统计', '[]', 'success', 1567696263);
INSERT INTO `y5g_log` VALUES (895, 2, '统计', '{\"mark\":\"1\",\"start_date\":\"2019-09-05\",\"end_date\":\"2019-09-05\",\"name_id\":\"0\",\"income_channel_id\":\"0\",\"create_user_id\":\"0\",\"outgo_channel_id\":\"0\",\"sub\":\"search\"}', 'success', 1567696276);
INSERT INTO `y5g_log` VALUES (896, 2, '统计', '{\"mark\":\"1\",\"start_date\":\"2019-09-05\",\"end_date\":\"2019-09-05\",\"name_id\":\"0\",\"income_channel_id\":\"0\",\"create_user_id\":\"0\",\"outgo_channel_id\":\"0\",\"sub\":\"search\"}', 'success', 1567696293);
INSERT INTO `y5g_log` VALUES (897, 2, '统计', '{\"mark\":\"1\",\"start_date\":\"2019-09-05\",\"end_date\":\"2019-09-05\",\"name_id\":\"0\",\"income_channel_id\":\"0\",\"create_user_id\":\"0\",\"outgo_channel_id\":\"0\",\"sub\":\"search\"}', 'success', 1567696294);
INSERT INTO `y5g_log` VALUES (898, 2, '统计', '{\"mark\":\"1\",\"start_date\":\"2019-09-05\",\"end_date\":\"2019-09-05\",\"name_id\":\"0\",\"income_channel_id\":\"0\",\"create_user_id\":\"0\",\"outgo_channel_id\":\"0\",\"sub\":\"search\"}', 'success', 1567696295);
INSERT INTO `y5g_log` VALUES (899, 2, '统计', '{\"mark\":\"1\",\"start_date\":\"2019-09-05\",\"end_date\":\"2019-09-05\",\"name_id\":\"0\",\"income_channel_id\":\"0\",\"create_user_id\":\"0\",\"outgo_channel_id\":\"0\",\"sub\":\"search\"}', 'success', 1567696300);
INSERT INTO `y5g_log` VALUES (900, 2, '统计', '{\"mark\":\"1\",\"start_date\":\"2019-09-05\",\"end_date\":\"2019-09-05\",\"name_id\":\"0\",\"income_channel_id\":\"0\",\"create_user_id\":\"0\",\"outgo_channel_id\":\"0\",\"sub\":\"search\"}', 'success', 1567696301);
INSERT INTO `y5g_log` VALUES (901, 2, '登陆', '{\"account\":\"a123456\",\"pwd\":\"a123456\"}', 'success', 1568036568);
INSERT INTO `y5g_log` VALUES (902, 2, '登陆', '{\"account\":\"a123456\",\"pwd\":\"a123456\"}', 'success', 1568732640);
INSERT INTO `y5g_log` VALUES (903, 2, '综合查询', '[]', 'success', 1568732643);
INSERT INTO `y5g_log` VALUES (904, 2, '进货入库', '{\"date\":\"2019-09-17\",\"type_id\":\"A1822\",\"category_id\":\"1\",\"name_id\":\"2\",\"network_id\":\"3\",\"feature_id\":\"5\",\"appearance_id\":\"4\",\"number\":\"CS1234567890\",\"edition_id\":\"1\",\"memo\":\"\",\"price\":\"\",\"channel_id\":\"3\"}', 'fail', 1568732989);
INSERT INTO `y5g_log` VALUES (905, 2, '进货入库', '{\"date\":\"2019-09-17\",\"type_id\":\"A1803\",\"category_id\":\"3\",\"name_id\":\"15\",\"network_id\":\"36\",\"feature_id\":\"39\",\"appearance_id\":\"38\",\"number\":\"CS1234567890\",\"edition_id\":\"6\",\"memo\":\"\",\"price\":\"1000\",\"channel_id\":\"3\"}', 'success', 1568733008);
INSERT INTO `y5g_log` VALUES (906, 2, '通过入库审核', '{\"id\":\"30\"}', 'success', 1568733016);
INSERT INTO `y5g_log` VALUES (907, 2, '销售出库', '{\"item_id\":\"24\",\"channel_id\":\"1\",\"order_no\":\"ewrrrr\",\"price\":\"1200\",\"cost\":\"100\",\"consignee_nickname\":\"\",\"consignee\":\"\",\"consignee_address\":\"\",\"consignee_phone\":\"\",\"memo\":\"\"}', 'success', 1568733507);
INSERT INTO `y5g_log` VALUES (908, 2, '退货入库', '{\"id\":\"9\"}', 'success', 1568733526);
INSERT INTO `y5g_log` VALUES (909, 2, '退货入库', '{\"id\":\"7\"}', 'success', 1568733613);
INSERT INTO `y5g_log` VALUES (910, 2, '综合查询', '[]', 'success', 1568733633);
INSERT INTO `y5g_log` VALUES (911, 2, '综合查询', '{\"category_id\":\"\",\"type_id\":\"\",\"name_id\":\"\",\"network_id\":\"\",\"feature_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"CS1234567890\"}', 'success', 1568733635);
INSERT INTO `y5g_log` VALUES (912, 2, '通过出库审核', '{\"id\":\"11\"}', 'success', 1568733648);
INSERT INTO `y5g_log` VALUES (913, 2, '在库查询', '[]', 'success', 1568733653);
INSERT INTO `y5g_log` VALUES (914, 2, '进货入库', '{\"id\":\"7\",\"date\":\"2019-09-17\",\"type_id\":\"A1893\",\"category_id\":\"1\",\"name_id\":\"1\",\"network_id\":\"1\",\"feature_id\":\"3\",\"appearance_id\":\"1\",\"number\":\"CS1234567890\",\"edition_id\":\"1\",\"memo\":\"\",\"price\":\"1600.0000\",\"channel_id\":\"3\"}', 'success', 1568733671);
INSERT INTO `y5g_log` VALUES (915, 2, '综合查询', '[]', 'success', 1568734029);
INSERT INTO `y5g_log` VALUES (916, 2, '综合查询', '[]', 'success', 1568734040);
INSERT INTO `y5g_log` VALUES (917, 2, '综合查询', '{\"category_id\":\"\",\"type_id\":\"\",\"name_id\":\"\",\"network_id\":\"\",\"feature_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"ce12345789\"}', 'success', 1568734047);
INSERT INTO `y5g_log` VALUES (918, 2, '综合查询', '{\"category_id\":\"\",\"type_id\":\"\",\"name_id\":\"\",\"network_id\":\"\",\"feature_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"CS12345789\"}', 'success', 1568734056);
INSERT INTO `y5g_log` VALUES (919, 2, '综合查询', '{\"category_id\":\"\",\"type_id\":\"\",\"name_id\":\"\",\"network_id\":\"\",\"feature_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"CS12345789\"}', 'success', 1568734057);
INSERT INTO `y5g_log` VALUES (920, 2, '综合查询', '[]', 'success', 1568734061);
INSERT INTO `y5g_log` VALUES (921, 2, '综合查询', '{\"category_id\":\"\",\"type_id\":\"\",\"name_id\":\"\",\"network_id\":\"\",\"feature_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"CS123457890\"}', 'success', 1568734065);
INSERT INTO `y5g_log` VALUES (922, 2, '综合查询', '[]', 'success', 1568734067);
INSERT INTO `y5g_log` VALUES (923, 2, '综合查询', '{\"page\":\"3\"}', 'success', 1568734069);
INSERT INTO `y5g_log` VALUES (924, 2, '综合查询', '{\"page\":\"2\"}', 'success', 1568734077);
INSERT INTO `y5g_log` VALUES (925, 2, '综合查询', '{\"page\":\"3\"}', 'success', 1568734084);
INSERT INTO `y5g_log` VALUES (926, 2, '综合查询', '{\"page\":\"2\"}', 'success', 1568734091);
INSERT INTO `y5g_log` VALUES (927, 2, '综合查询', '{\"page\":\"1\"}', 'success', 1568734096);
INSERT INTO `y5g_log` VALUES (928, 2, '综合查询', '[]', 'success', 1568734282);
INSERT INTO `y5g_log` VALUES (929, 2, '综合查询', '{\"category_id\":\"\",\"type_id\":\"\",\"name_id\":\"\",\"network_id\":\"\",\"feature_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"G99XJ1LKJ6DV\"}', 'success', 1568734285);
INSERT INTO `y5g_log` VALUES (930, 2, '综合查询', '{\"category_id\":\"\",\"type_id\":\"\",\"name_id\":\"\",\"network_id\":\"\",\"feature_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\"}', 'success', 1568734844);
INSERT INTO `y5g_log` VALUES (931, 2, '登陆', '{\"account\":\"a123456\",\"pwd\":\"a123456\"}', 'success', 1569037855);
INSERT INTO `y5g_log` VALUES (932, 2, '销售出库', '{\"item_id\":\"13\",\"channel_id\":\"1\",\"order_no\":\"61230838525957552\",\"price\":\"5555\",\"cost\":\"50\",\"consignee_nickname\":\"\"}', 'success', 1569038116);
INSERT INTO `y5g_log` VALUES (933, 2, '通过出库审核', '{\"id\":\"10\"}', 'success', 1569038123);
INSERT INTO `y5g_log` VALUES (934, 2, '登陆', '{\"account\":\"a123456\",\"pwd\":\"a123456\"}', 'success', 1569055533);
INSERT INTO `y5g_log` VALUES (935, 2, '统计', '[]', 'success', 1569055536);
INSERT INTO `y5g_log` VALUES (936, 2, '统计', '{\"mark\":\"1\",\"start_date\":\"2019-09-21\",\"end_date\":\"2019-09-21\",\"name_id\":\"0\",\"income_channel_id\":\"0\",\"create_user_id\":\"0\",\"outgo_channel_id\":\"0\",\"sub\":\"search\"}', 'success', 1569055541);
INSERT INTO `y5g_log` VALUES (937, 2, '统计', '{\"mark\":\"1\",\"start_date\":\"2019-09-21\",\"end_date\":\"2019-09-21\",\"name_id\":\"0\",\"income_channel_id\":\"0\",\"create_user_id\":\"0\",\"outgo_channel_id\":\"0\",\"sub\":\"search\"}', 'success', 1569055543);
INSERT INTO `y5g_log` VALUES (938, 2, '统计', '{\"mark\":\"1\",\"start_date\":\"2019-09-21\",\"end_date\":\"2019-09-21\",\"name_id\":\"0\",\"income_channel_id\":\"0\",\"create_user_id\":\"0\",\"outgo_channel_id\":\"0\",\"sub\":\"search\"}', 'success', 1569055544);
INSERT INTO `y5g_log` VALUES (939, 2, '统计', '{\"mark\":\"1\",\"start_date\":\"2019-09-21\",\"end_date\":\"2019-09-21\",\"name_id\":\"0\",\"income_channel_id\":\"0\",\"create_user_id\":\"0\",\"outgo_channel_id\":\"0\",\"sub\":\"search\"}', 'success', 1569055545);
INSERT INTO `y5g_log` VALUES (940, 2, '统计', '{\"mark\":\"1\",\"start_date\":\"2019-09-21\",\"end_date\":\"2019-09-21\",\"name_id\":\"0\",\"income_channel_id\":\"0\",\"create_user_id\":\"0\",\"outgo_channel_id\":\"0\",\"sub\":\"search\"}', 'success', 1569055546);
INSERT INTO `y5g_log` VALUES (941, 2, '销售出库', '{\"item_id\":\"19\",\"channel_id\":\"0\",\"order_no\":\"612308385259\",\"price\":\"2100\",\"cost\":\"0\",\"consignee_nickname\":\"\"}', 'fail', 1569055583);
INSERT INTO `y5g_log` VALUES (942, 2, '销售出库', '{\"item_id\":\"19\",\"channel_id\":\"0\",\"order_no\":\"612308385259\",\"price\":\"2100\",\"cost\":\"1\",\"consignee_nickname\":\"\"}', 'success', 1569055592);
INSERT INTO `y5g_log` VALUES (943, 2, '通过出库审核', '{\"id\":\"13\"}', 'success', 1569055607);
INSERT INTO `y5g_log` VALUES (944, 2, '统计', '[]', 'success', 1569055622);
INSERT INTO `y5g_log` VALUES (945, 2, '统计', '[]', 'success', 1569055626);
INSERT INTO `y5g_log` VALUES (946, 2, '统计', '{\"mark\":\"1\",\"start_date\":\"2019-09-21\",\"end_date\":\"2019-09-21\",\"name_id\":\"0\",\"income_channel_id\":\"0\",\"create_user_id\":\"0\",\"outgo_channel_id\":\"0\",\"sub\":\"search\"}', 'success', 1569055636);
INSERT INTO `y5g_log` VALUES (947, 2, '统计', '{\"mark\":\"1\",\"start_date\":\"2019-09-21\",\"end_date\":\"2019-09-21\",\"name_id\":\"0\",\"income_channel_id\":\"0\",\"create_user_id\":\"0\",\"outgo_channel_id\":\"0\",\"sub\":\"search\"}', 'success', 1569055638);
INSERT INTO `y5g_log` VALUES (948, 2, '统计', '{\"mark\":\"1\",\"start_date\":\"2019-09-21\",\"end_date\":\"2019-09-21\",\"name_id\":\"0\",\"income_channel_id\":\"0\",\"create_user_id\":\"0\",\"outgo_channel_id\":\"0\",\"sub\":\"search\"}', 'success', 1569055638);
INSERT INTO `y5g_log` VALUES (949, 2, '统计', '{\"mark\":\"1\",\"start_date\":\"2019-09-21\",\"end_date\":\"2019-09-21\",\"name_id\":\"0\",\"income_channel_id\":\"0\",\"create_user_id\":\"0\",\"outgo_channel_id\":\"0\",\"sub\":\"search\"}', 'success', 1569055639);
INSERT INTO `y5g_log` VALUES (950, 2, '登陆', '{\"account\":\"a123456\",\"pwd\":\"a123456\"}', 'success', 1569228244);
INSERT INTO `y5g_log` VALUES (951, 2, '在库查询', '[]', 'success', 1569228248);
INSERT INTO `y5g_log` VALUES (952, 2, '在库查询', '{\"page\":\"2\"}', 'success', 1569228254);
INSERT INTO `y5g_log` VALUES (953, 2, '在库查询', '{\"page\":\"1\"}', 'success', 1569228255);
INSERT INTO `y5g_log` VALUES (954, 2, '统计', '[]', 'success', 1569228454);
INSERT INTO `y5g_log` VALUES (955, 2, '登陆', '{\"account\":\"a123456\",\"pwd\":\"a123456\"}', 'success', 1569229958);
INSERT INTO `y5g_log` VALUES (956, 2, '登陆', '{\"account\":\"a123456\",\"pwd\":\"a123456\"}', 'success', 1569571958);
INSERT INTO `y5g_log` VALUES (957, 2, '在库查询', '[]', 'success', 1569571961);
INSERT INTO `y5g_log` VALUES (958, 2, '综合查询', '[]', 'success', 1569571966);
INSERT INTO `y5g_log` VALUES (959, 2, '综合查询', '{\"page\":\"3\"}', 'success', 1569572062);
INSERT INTO `y5g_log` VALUES (960, 2, '在库查询', '[]', 'success', 1569572079);
INSERT INTO `y5g_log` VALUES (961, 2, '综合查询', '[]', 'success', 1569572128);
INSERT INTO `y5g_log` VALUES (962, 2, '综合查询', '{\"page\":\"2\"}', 'success', 1569572130);
INSERT INTO `y5g_log` VALUES (963, 2, '综合查询', '{\"page\":\"3\"}', 'success', 1569572132);
INSERT INTO `y5g_log` VALUES (964, 2, '在库查询', '[]', 'success', 1569572137);
INSERT INTO `y5g_log` VALUES (965, 2, '在库查询', '[]', 'success', 1569572294);
INSERT INTO `y5g_log` VALUES (966, 2, '综合查询', '[]', 'success', 1569572405);
INSERT INTO `y5g_log` VALUES (967, 2, '综合查询', '{\"page\":\"2\"}', 'success', 1569572408);
INSERT INTO `y5g_log` VALUES (968, 1, '在库查询', '[]', 'success', 1570210009);
INSERT INTO `y5g_log` VALUES (969, 1, '在库查询', '[]', 'success', 1570210012);
INSERT INTO `y5g_log` VALUES (970, 1, '综合查询', '[]', 'success', 1570210013);
INSERT INTO `y5g_log` VALUES (971, 1, '在库查询', '[]', 'success', 1570210015);
INSERT INTO `y5g_log` VALUES (972, 1, '在库查询', '[]', 'success', 1570259771);
INSERT INTO `y5g_log` VALUES (973, 1, '综合查询', '[]', 'success', 1570259774);
INSERT INTO `y5g_log` VALUES (974, 1, '通过出库审核', '{\"id\":[\"12\"]}', 'success', 1570262659);
INSERT INTO `y5g_log` VALUES (975, 1, '在库查询', '[]', 'success', 1570263345);
INSERT INTO `y5g_log` VALUES (976, 1, '在库查询', '[]', 'success', 1570263386);
INSERT INTO `y5g_log` VALUES (977, 1, '特殊出库', '{\"item_id\":\"15\",\"type\":\"4\"}', 'fail', 1570263571);
INSERT INTO `y5g_log` VALUES (978, 1, '特殊出库', '{\"item_id\":\"16\",\"type\":\"5\"}', 'fail', 1570263575);
INSERT INTO `y5g_log` VALUES (979, 1, '特殊出库', '{\"item_id\":\"21\",\"type\":\"5\"}', 'fail', 1570268555);
INSERT INTO `y5g_log` VALUES (980, 1, '特殊出库', '{\"item_id\":[\"18\",\"20\"],\"type\":\"5\"}', 'fail', 1570271879);
INSERT INTO `y5g_log` VALUES (981, 1, '特殊出库', '{\"item_id\":\"17\",\"type\":\"4\"}', 'fail', 1570271960);
INSERT INTO `y5g_log` VALUES (982, 1, '特殊出库', '{\"item_id\":[\"2\",\"15\",\"17\"],\"type\":\"4\"}', 'fail', 1570291604);
INSERT INTO `y5g_log` VALUES (983, 1, '特殊出库', '{\"item_id\":[\"2\",\"15\",\"17\"],\"type\":\"4\"}', 'fail', 1570292220);
INSERT INTO `y5g_log` VALUES (984, 1, '特殊出库', '{\"item_id\":\"2\",\"type\":\"4\"}', 'fail', 1570293193);
INSERT INTO `y5g_log` VALUES (985, 1, '特殊出库', '{\"item_id\":\"2\",\"type\":\"4\"}', 'fail', 1570293196);
INSERT INTO `y5g_log` VALUES (986, 1, '特殊出库', '{\"item_id\":[\"2\",\"15\",\"17\"],\"type\":\"4\"}', 'fail', 1570293202);
INSERT INTO `y5g_log` VALUES (987, 1, '特殊出库', '{\"item_id\":[\"2\",\"15\",\"17\"],\"type\":\"4\"}', 'fail', 1570293206);
INSERT INTO `y5g_log` VALUES (988, 1, '特殊出库', '{\"item_id\":[\"2\",\"15\",\"17\"],\"type\":\"4\"}', 'fail', 1570293211);
INSERT INTO `y5g_log` VALUES (989, 1, '特殊出库', '{\"item_id\":[\"2\",\"15\",\"17\"],\"type\":\"4\"}', 'fail', 1570293215);
INSERT INTO `y5g_log` VALUES (990, 1, '特殊出库', '{\"item_id\":\"18\",\"type\":\"5\"}', 'fail', 1570293380);
INSERT INTO `y5g_log` VALUES (991, 1, '特殊出库', '{\"item_id\":\"18\",\"type\":\"5\"}', 'fail', 1570293385);
INSERT INTO `y5g_log` VALUES (992, 1, '特殊出库', '{\"item_id\":[\"18\",\"20\"],\"type\":\"5\"}', 'fail', 1570293393);
INSERT INTO `y5g_log` VALUES (993, 1, '综合查询', '[]', 'success', 1570293411);
INSERT INTO `y5g_log` VALUES (994, 1, '综合查询', '[]', 'success', 1570293428);
INSERT INTO `y5g_log` VALUES (995, 1, '在库查询', '[]', 'success', 1570293443);
INSERT INTO `y5g_log` VALUES (996, 1, '统计', '[]', 'success', 1570293485);
INSERT INTO `y5g_log` VALUES (997, 1, '在库查询', '[]', 'success', 1570293496);
INSERT INTO `y5g_log` VALUES (998, 1, '在库查询', '[]', 'success', 1570294267);
INSERT INTO `y5g_log` VALUES (999, 1, '在库查询', '{\"type_id\":\"\",\"name_id\":\"\",\"network_id\":\"40mm\\uff08GPS+\\u8702\\u7a9d\\uff09CH\",\"feature_id\":\"\",\"appearance_id\":\"\",\"keyword\":\"\"}', 'success', 1570294295);
INSERT INTO `y5g_log` VALUES (1000, 1, '综合查询', '[]', 'success', 1570294314);
INSERT INTO `y5g_log` VALUES (1001, 1, '综合查询', '{\"category_id\":\"\",\"type_id\":\"\",\"name_id\":\"\",\"network_id\":\"Wi-Fi\",\"feature_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\"}', 'success', 1570294332);
INSERT INTO `y5g_log` VALUES (1002, 1, '综合查询', '{\"category_id\":\"\",\"type_id\":\"\",\"name_id\":\"\",\"network_id\":\"Wi-Fi + 4G\",\"feature_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\"}', 'success', 1570294336);
INSERT INTO `y5g_log` VALUES (1003, 1, '综合查询', '{\"category_id\":\"\",\"type_id\":\"\",\"name_id\":\"\",\"network_id\":\"\",\"feature_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\"}', 'success', 1570294340);
INSERT INTO `y5g_log` VALUES (1004, 1, '综合查询', '{\"category_id\":\"Apple\\u624b\\u673a\",\"type_id\":\"\",\"name_id\":\"\",\"network_id\":\"\",\"feature_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\"}', 'success', 1570294351);
INSERT INTO `y5g_log` VALUES (1005, 1, '综合查询', '{\"category_id\":\"Apple\\u624b\\u8868\",\"type_id\":\"\",\"name_id\":\"\",\"network_id\":\"\",\"feature_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\"}', 'success', 1570294354);
INSERT INTO `y5g_log` VALUES (1006, 1, '综合查询', '{\"category_id\":\"Apple\\u914d\\u4ef6\",\"type_id\":\"\",\"name_id\":\"\",\"network_id\":\"\",\"feature_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\"}', 'success', 1570294359);
INSERT INTO `y5g_log` VALUES (1007, 1, '在库查询', '[]', 'success', 1570294395);
INSERT INTO `y5g_log` VALUES (1008, 1, '综合查询', '[]', 'success', 1570341534);
INSERT INTO `y5g_log` VALUES (1009, 1, '综合查询', '[]', 'success', 1570351492);
INSERT INTO `y5g_log` VALUES (1010, 1, '综合查询', '{\"category\":\"Apple\\u624b\\u673a\"}', 'success', 1570351498);
INSERT INTO `y5g_log` VALUES (1011, 1, '综合查询', '{\"category\":\"Apple\\u624b\\u8868\"}', 'success', 1570351503);
INSERT INTO `y5g_log` VALUES (1012, 1, '综合查询', '{\"category\":\"Apple\\u624b\\u673a\"}', 'success', 1570351533);
INSERT INTO `y5g_log` VALUES (1013, 1, '综合查询', '[]', 'success', 1570351586);
INSERT INTO `y5g_log` VALUES (1014, 1, '综合查询', '[]', 'success', 1570351640);
INSERT INTO `y5g_log` VALUES (1015, 1, '综合查询', '[]', 'success', 1570351762);
INSERT INTO `y5g_log` VALUES (1016, 1, '综合查询', '[]', 'success', 1570351782);
INSERT INTO `y5g_log` VALUES (1017, 1, '综合查询', '[]', 'success', 1570351801);
INSERT INTO `y5g_log` VALUES (1018, 1, '综合查询', '[]', 'success', 1570351843);
INSERT INTO `y5g_log` VALUES (1019, 1, '综合查询', '[]', 'success', 1570351871);
INSERT INTO `y5g_log` VALUES (1020, 1, '综合查询', '[]', 'success', 1570351931);
INSERT INTO `y5g_log` VALUES (1021, 1, '综合查询', '{\"category_id\":\"Apple\\u624b\\u8868\",\"type_id\":\"\",\"name_id\":\"\",\"network_id\":\"\",\"feature_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\"}', 'success', 1570351986);
INSERT INTO `y5g_log` VALUES (1022, 1, '综合查询', '{\"category_id\":\"\",\"type_id\":\"\",\"name_id\":\"\",\"network_id\":\"\",\"feature_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\"}', 'success', 1570351994);
INSERT INTO `y5g_log` VALUES (1023, 1, '综合查询', '{\"category_id\":\"Apple\\u624b\\u673a\",\"type_id\":\"\",\"name_id\":\"\",\"network_id\":\"\",\"feature_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\"}', 'success', 1570351999);
INSERT INTO `y5g_log` VALUES (1024, 1, '综合查询', '{\"category_id\":\"Apple\\u914d\\u4ef6\",\"type_id\":\"\",\"name_id\":\"\",\"network_id\":\"\",\"feature_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\"}', 'success', 1570352003);
INSERT INTO `y5g_log` VALUES (1025, 1, '综合查询', '{\"category_id\":\"Apple\\u624b\\u8868\",\"type_id\":\"\",\"name_id\":\"\",\"network_id\":\"\",\"feature_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\"}', 'success', 1570352006);
INSERT INTO `y5g_log` VALUES (1026, 1, '综合查询', '{\"category_id\":\"Apple\\u624b\\u8868\",\"type_id\":\"\",\"name_id\":\"\",\"network_id\":\"44mm\\uff08GPS+\\u8702\\u7a9d\\uff09CH\",\"feature_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\"}', 'success', 1570352022);
INSERT INTO `y5g_log` VALUES (1027, 1, '综合查询', '{\"category_id\":\"Apple\\u624b\\u8868\",\"type_id\":\"\",\"name_id\":\"\",\"network_id\":\"40mm\\uff08GPS+\\u8702\\u7a9d\\uff09CH\",\"feature_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\"}', 'success', 1570352029);
INSERT INTO `y5g_log` VALUES (1028, 1, '综合查询', '{\"category_id\":\"Apple\\u624b\\u8868\",\"type_id\":\"\",\"name_id\":\"\",\"network_id\":\"40mm\\uff08GPS+\\u8702\\u7a9d\\uff09CH\",\"feature_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\"}', 'success', 1570352929);
INSERT INTO `y5g_log` VALUES (1029, 1, '综合查询', '{\"category_id\":\"Apple\\u624b\\u8868\",\"type_id\":\"\",\"name_id\":\"\",\"network_id\":\"40mm\\uff08GPS+\\u8702\\u7a9d\\uff09CH\",\"feature_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\"}', 'success', 1570352957);
INSERT INTO `y5g_log` VALUES (1030, 1, '综合查询', '{\"category_id\":\"Apple\\u624b\\u8868\",\"type_id\":\"\",\"name_id\":\"\",\"network_id\":\"40mm\\uff08GPS+\\u8702\\u7a9d\\uff09CH\",\"feature_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\"}', 'success', 1570352961);
INSERT INTO `y5g_log` VALUES (1031, 1, '综合查询', '{\"category_id\":\"Apple\\u624b\\u8868\",\"type_id\":\"\",\"name_id\":\"\",\"network_id\":\"40mm\\uff08GPS+\\u8702\\u7a9d\\uff09CH\",\"feature_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\"}', 'success', 1570353133);
INSERT INTO `y5g_log` VALUES (1032, 1, '综合查询', '{\"category_id\":\"Apple\\u624b\\u8868\",\"type_id\":\"\",\"name_id\":\"\",\"network_id\":\"40mm\\uff08GPS+\\u8702\\u7a9d\\uff09CH\",\"feature_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\"}', 'success', 1570353647);
INSERT INTO `y5g_log` VALUES (1033, 1, '退货入库', '{\"id\":\"8\"}', 'success', 1570353706);
INSERT INTO `y5g_log` VALUES (1034, 1, '退货入库', '{\"id\":\"13\"}', 'success', 1570353713);
INSERT INTO `y5g_log` VALUES (1035, 1, '拒绝入库审核', '{\"id\":\"34\"}', 'success', 1570353745);
INSERT INTO `y5g_log` VALUES (1036, 1, '统计', '[]', 'success', 1570353819);
INSERT INTO `y5g_log` VALUES (1037, 4, '登陆', '{\"account\":\"csh123456csh\",\"pwd\":\"csh123456csh\"}', 'success', 1570973203);
INSERT INTO `y5g_log` VALUES (1038, 4, '登出', '{\"id\":4}', 'success', 1571073424);
INSERT INTO `y5g_log` VALUES (1039, 2, '登陆', '{\"account\":\"a123456\",\"pwd\":\"a123456\"}', 'success', 1571073429);
INSERT INTO `y5g_log` VALUES (1040, 2, '综合查询', '[]', 'success', 1571073909);
INSERT INTO `y5g_log` VALUES (1041, 2, '综合查询', '{\"page\":\"2\"}', 'success', 1571073915);
INSERT INTO `y5g_log` VALUES (1042, 2, '综合查询', '{\"page\":\"3\"}', 'success', 1571073918);
INSERT INTO `y5g_log` VALUES (1043, 2, '在库查询', '[]', 'success', 1571074145);
INSERT INTO `y5g_log` VALUES (1044, 2, '删除进货渠道/出货途径', '{\"id\":\"2\"}', 'success', 1571075527);
INSERT INTO `y5g_log` VALUES (1045, 2, '删除进货渠道/出货途径', '{\"id\":\"2\"}', 'success', 1571075530);
INSERT INTO `y5g_log` VALUES (1046, 2, '增加进货渠道/出货途径', '{\"type\":\"2\",\"data\":\"1111111111\"}', 'success', 1571076001);
INSERT INTO `y5g_log` VALUES (1047, 2, '删除进货渠道/出货途径', '{\"id\":\"10\"}', 'success', 1571076005);
INSERT INTO `y5g_log` VALUES (1048, 2, '删除进货渠道/出货途径', '{\"id\":\"10\"}', 'success', 1571076008);
INSERT INTO `y5g_log` VALUES (1049, 2, '在库查询', '[]', 'success', 1571245560);
INSERT INTO `y5g_log` VALUES (1050, 2, '统计', '[]', 'success', 1571245568);
INSERT INTO `y5g_log` VALUES (1051, 2, '增加类别', '{\"id\":\"2\",\"data\":\"Apple\\u624b\\u673a2\"}', 'fail', 1571246820);
INSERT INTO `y5g_log` VALUES (1052, 2, '增加类别', '{\"id\":\"2\",\"data\":\"Apple\\u624b\\u673a2\"}', 'success', 1571246996);
INSERT INTO `y5g_log` VALUES (1053, 2, '增加类别', '{\"id\":\"2\",\"data\":\"Apple\\u624b\\u673a2\"}', 'success', 1571247010);
INSERT INTO `y5g_log` VALUES (1054, 2, '增加类别', '{\"id\":\"2\",\"data\":\"Apple\\u624b\\u673a2\"}', 'success', 1571247051);
INSERT INTO `y5g_log` VALUES (1055, 2, '增加名称', '{\"id\":\"15\",\"category_id\":\"4\",\"data\":\"Watch S12\"}', 'success', 1571248278);
INSERT INTO `y5g_log` VALUES (1056, 2, '增加名称', '{\"id\":\"15\",\"category_id\":\"2\",\"data\":\"Watch S12\"}', 'fail', 1571248381);
INSERT INTO `y5g_log` VALUES (1057, 2, '增加名称', '{\"id\":\"15\",\"category_id\":\"2\",\"data\":\"Watch S11\"}', 'success', 1571248745);
INSERT INTO `y5g_log` VALUES (1058, 2, '统计', '[]', 'success', 1571249064);
INSERT INTO `y5g_log` VALUES (1059, 2, '增加型号', '{\"name_id\":\"17\",\"network\":\"44mm\\uff08GPS+\\u8702\\u7a9d\\uff09CH1\",\"network_id\":\"50\",\"data\":\"A20081\"}', 'success', 1571251232);
INSERT INTO `y5g_log` VALUES (1060, 2, '登陆', '{\"account\":\"a123456\",\"pwd\":\"a123456\"}', 'success', 1571553879);
INSERT INTO `y5g_log` VALUES (1061, 2, '增加型号', '{\"name_id\":\"4\",\"network\":\"Wi-Fi1\",\"network_id\":\"5\",\"data\":\"A15381\"}', 'success', 1571554368);
INSERT INTO `y5g_log` VALUES (1062, 2, '增加型号', '{\"id\":\"5\",\"name_id\":\"4\",\"network\":\"Wi-Fi\",\"network_id\":\"5\",\"data\":\"A1538\"}', 'success', 1571554947);
INSERT INTO `y5g_log` VALUES (1063, 2, '增加型号', '{\"id\":\"5\",\"name_id\":\"5\",\"network\":\"Wi-Fi1\",\"network_id\":\"17\",\"data\":\"A1538\"}', 'success', 1571554956);
INSERT INTO `y5g_log` VALUES (1064, 2, '增加型号', '{\"id\":\"5\",\"name_id\":\"4\",\"network\":\"Wi-Fi11\",\"network_id\":\"53\",\"data\":\"A153811\"}', 'success', 1571554968);
INSERT INTO `y5g_log` VALUES (1065, 2, '增加配置', '{\"id\":\"39\",\"name_id\":\"14\",\"data\":\"1\\u94dd\\u91d1\\u5c5e\"}', 'success', 1571555647);
INSERT INTO `y5g_log` VALUES (1066, 2, '增加配置', '{\"id\":\"2\",\"name_id\":\"2\",\"data\":\"256GB1\"}', 'success', 1571555667);
INSERT INTO `y5g_log` VALUES (1067, 2, '增加外观', '{\"id\":\"5\",\"name_id\":\"2\",\"data\":\"\\u6a31\\u82b1\\u7c89\"}', 'success', 1571555828);
INSERT INTO `y5g_log` VALUES (1068, 2, '增加外观', '{\"id\":\"4\",\"name_id\":\"3\",\"data\":\"\\u94f6\\u767d\\u82721\"}', 'fail', 1571556111);
INSERT INTO `y5g_log` VALUES (1069, 2, '增加外观', '{\"id\":\"4\",\"name_id\":\"3\",\"data\":\"\\u94f6\\u767d\\u8272\"}', 'fail', 1571556960);
INSERT INTO `y5g_log` VALUES (1070, 2, '增加外观', '{\"id\":\"4\",\"name_id\":\"3\",\"data\":\"\\u94f6\\u767d\\u82721\"}', 'success', 1571556971);
INSERT INTO `y5g_log` VALUES (1071, 2, '增加外观', '{\"id\":\"4\",\"name_id\":\"3\",\"data\":\"\\u94f6\\u767d\\u82721\"}', 'success', 1571557031);
INSERT INTO `y5g_log` VALUES (1072, 2, '增加固件版本', '{\"id\":\"6\",\"category_id\":\"2\",\"data\":\"watchOS 51\"}', 'success', 1571557367);
INSERT INTO `y5g_log` VALUES (1073, 2, '增加进货渠道/出货途径', '{\"id\":\"2\",\"type\":\"1\",\"data\":\"TB-\\u5fa1\\u592b\\u6570\\u7801\\u884c1\"}', 'success', 1571558127);
INSERT INTO `y5g_log` VALUES (1074, 2, '增加进货渠道/出货途径', '{\"id\":\"\",\"type\":\"1\",\"data\":\"1111\"}', 'success', 1571558136);
INSERT INTO `y5g_log` VALUES (1075, 2, '进货入库', '{\"date\":\"2019-10-20\",\"type_id\":\"A2007\",\"category_id\":\"3\",\"name_id\":\"18\",\"network_id\":\"48\",\"feature_id\":\"44\",\"appearance_id\":\"49\",\"number\":\"20190604-009\",\"edition_id\":\"7\",\"memo\":\"1111111111111\",\"price\":\"1111\",\"channel_id\":\"3\"}', 'fail', 1571564679);
INSERT INTO `y5g_log` VALUES (1076, 2, '进货入库', '{\"date\":\"2019-10-20\",\"type_id\":\"A2007\",\"category_id\":\"3\",\"name_id\":\"18\",\"network_id\":\"48\",\"feature_id\":\"44\",\"appearance_id\":\"49\",\"number\":\"20190604-009\",\"edition_id\":\"7\",\"memo\":\"11111111111111\",\"price\":\"11111\",\"channel_id\":\"3\"}', 'success', 1571564764);
INSERT INTO `y5g_log` VALUES (1077, 2, '综合查询', '[]', 'success', 1571565395);
INSERT INTO `y5g_log` VALUES (1078, 2, '统计', '[]', 'success', 1571566311);
INSERT INTO `y5g_log` VALUES (1079, 2, '在库查询', '[]', 'success', 1571566322);
INSERT INTO `y5g_log` VALUES (1080, 2, '综合查询', '[]', 'success', 1571566901);
INSERT INTO `y5g_log` VALUES (1081, 2, '综合查询', '[]', 'success', 1571566909);
INSERT INTO `y5g_log` VALUES (1082, 2, '综合查询', '[]', 'success', 1571566916);
INSERT INTO `y5g_log` VALUES (1083, 2, '综合查询', '[]', 'success', 1571566966);
INSERT INTO `y5g_log` VALUES (1084, 2, '综合查询', '[]', 'success', 1571567050);
INSERT INTO `y5g_log` VALUES (1085, 2, '综合查询', '{\"page\":\"3\"}', 'success', 1571567052);
INSERT INTO `y5g_log` VALUES (1086, 2, '综合查询', '{\"page\":\"3\"}', 'success', 1571567072);
INSERT INTO `y5g_log` VALUES (1087, 2, '登陆', '{\"account\":\"a123456\",\"pwd\":\"a123456\"}', 'success', 1572275437);
INSERT INTO `y5g_log` VALUES (1088, 2, '综合查询', '[]', 'success', 1572275447);
INSERT INTO `y5g_log` VALUES (1089, 2, '综合查询', '[]', 'success', 1572275452);
INSERT INTO `y5g_log` VALUES (1090, 2, '综合查询', '{\"page\":\"3\"}', 'success', 1572275454);
INSERT INTO `y5g_log` VALUES (1091, 2, '统计', '[]', 'success', 1572275766);
INSERT INTO `y5g_log` VALUES (1092, 2, '统计', '{\"mark\":\"1\",\"start_date\":\"\",\"end_date\":\"\",\"name_id\":\"0\",\"income_channel_id\":\"0\",\"create_user_id\":\"0\",\"outgo_channel_id\":\"0\",\"sub\":\"search\"}', 'success', 1572275768);
INSERT INTO `y5g_log` VALUES (1093, 2, '统计', '{\"mark\":\"1\",\"start_date\":\"\",\"end_date\":\"\",\"name_id\":\"0\",\"income_channel_id\":\"0\",\"create_user_id\":\"0\",\"outgo_channel_id\":\"0\",\"sub\":\"search\"}', 'success', 1572275804);
INSERT INTO `y5g_log` VALUES (1094, 2, '统计', '{\"mark\":\"1\",\"start_date\":\"\",\"end_date\":\"\",\"name_id\":\"0\",\"income_channel_id\":\"0\",\"create_user_id\":\"0\",\"outgo_channel_id\":\"0\",\"sub\":\"search\"}', 'success', 1572275808);
INSERT INTO `y5g_log` VALUES (1095, 2, '统计', '[]', 'success', 1572275824);
INSERT INTO `y5g_log` VALUES (1096, 2, '统计', '[]', 'success', 1572275982);
INSERT INTO `y5g_log` VALUES (1097, 2, '统计', '[]', 'success', 1572275993);
INSERT INTO `y5g_log` VALUES (1098, 2, '统计', '[]', 'success', 1572276001);
INSERT INTO `y5g_log` VALUES (1099, 2, '统计', '[]', 'success', 1572276009);
INSERT INTO `y5g_log` VALUES (1100, 2, '统计', '[]', 'success', 1572276027);
INSERT INTO `y5g_log` VALUES (1101, 2, '统计', '[]', 'success', 1572276034);
INSERT INTO `y5g_log` VALUES (1102, 2, '统计', '[]', 'success', 1572276037);
INSERT INTO `y5g_log` VALUES (1103, 2, '统计', '[]', 'success', 1572276073);
INSERT INTO `y5g_log` VALUES (1104, 2, '统计', '[]', 'success', 1572276083);
INSERT INTO `y5g_log` VALUES (1105, 2, '统计', '[]', 'success', 1572276131);
INSERT INTO `y5g_log` VALUES (1106, 2, '统计', '[]', 'success', 1572276200);
INSERT INTO `y5g_log` VALUES (1107, 2, '统计', '[]', 'success', 1572276202);
INSERT INTO `y5g_log` VALUES (1108, 2, '统计', '[]', 'success', 1572276211);
INSERT INTO `y5g_log` VALUES (1109, 2, '统计', '[]', 'success', 1572276259);
INSERT INTO `y5g_log` VALUES (1110, 2, '统计', '[]', 'success', 1572276266);
INSERT INTO `y5g_log` VALUES (1111, 2, '统计', '[]', 'success', 1572276401);
INSERT INTO `y5g_log` VALUES (1112, 2, '统计', '[]', 'success', 1572276472);
INSERT INTO `y5g_log` VALUES (1113, 2, '统计', '[]', 'success', 1572276477);
INSERT INTO `y5g_log` VALUES (1114, 2, '统计', '[]', 'success', 1572276609);
INSERT INTO `y5g_log` VALUES (1115, 2, '统计', '[]', 'success', 1572276610);
INSERT INTO `y5g_log` VALUES (1116, 2, '统计', '[]', 'success', 1572276612);
INSERT INTO `y5g_log` VALUES (1117, 2, '统计', '[]', 'success', 1572276615);
INSERT INTO `y5g_log` VALUES (1118, 2, '统计', '[]', 'success', 1572276657);
INSERT INTO `y5g_log` VALUES (1119, 2, '综合查询', '[]', 'success', 1586745990);
INSERT INTO `y5g_log` VALUES (1120, 2, '综合查询', '[]', 'success', 1586746014);
INSERT INTO `y5g_log` VALUES (1121, 2, '综合查询', '[]', 'success', 1586746019);
INSERT INTO `y5g_log` VALUES (1122, 2, '综合查询', '[]', 'success', 1586746021);
INSERT INTO `y5g_log` VALUES (1123, 2, '在库查询', '[]', 'success', 1586746033);
INSERT INTO `y5g_log` VALUES (1124, 2, '综合查询', '[]', 'success', 1586746036);
INSERT INTO `y5g_log` VALUES (1125, 2, '综合查询', '[]', 'success', 1586746151);
INSERT INTO `y5g_log` VALUES (1126, 2, '综合查询', '[]', 'success', 1586746157);
INSERT INTO `y5g_log` VALUES (1127, 2, '综合查询', '{\"category_id\":\"\",\"type_id\":\"\",\"name_id\":\"iPad 2017\\uff085\\uff09\",\"network_id\":\"\",\"feature_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\"}', 'success', 1586746186);
INSERT INTO `y5g_log` VALUES (1128, 2, '综合查询', '{\"category_id\":\"\",\"type_id\":\"\",\"name_id\":\"iPad mini 4\",\"network_id\":\"\",\"feature_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\"}', 'success', 1586746194);
INSERT INTO `y5g_log` VALUES (1129, 2, '综合查询', '{\"category_id\":\"\",\"type_id\":\"\",\"name_id\":\"iPad mini 4\",\"network_id\":\"\",\"feature_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\"}', 'success', 1586746196);
INSERT INTO `y5g_log` VALUES (1130, 2, '综合查询', '{\"category_id\":\"\",\"type_id\":\"\",\"name_id\":\"Pro 12.9\\uff08\\u4e09\\u4ee3\\uff09\",\"network_id\":\"\",\"feature_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\"}', 'success', 1586746213);
INSERT INTO `y5g_log` VALUES (1131, 2, '综合查询', '{\"category_id\":\"\",\"type_id\":\"\",\"name_id\":\"Pro 12.9\\uff08\\u4e09\\u4ee3\\uff09\",\"network_id\":\"\",\"feature_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\"}', 'success', 1586746369);
INSERT INTO `y5g_log` VALUES (1132, 2, '综合查询', '{\"category_id\":\"\",\"type_id\":\"\",\"name_id\":\"\",\"network_id\":\"\",\"feature_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\"}', 'success', 1586746372);
INSERT INTO `y5g_log` VALUES (1133, 2, '综合查询', '{\"category_id\":\"\",\"type_id\":\"\",\"name_id\":\"iPad 2017\\uff085\\uff09\",\"network_id\":\"\",\"feature_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\"}', 'success', 1586746378);
INSERT INTO `y5g_log` VALUES (1134, 2, '综合查询', '{\"category_id\":\"\",\"type_id\":\"\",\"name_id\":\"iPad 2017\\uff085\\uff09\",\"network_id\":\"Wi-Fi\",\"feature_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\"}', 'success', 1586746388);
INSERT INTO `y5g_log` VALUES (1135, 2, '综合查询', '{\"category_id\":\"\",\"type_id\":\"\",\"name_id\":\"iPad 2017\\uff085\\uff09\",\"network_id\":\"Wi-Fi + Cellular\",\"feature_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\"}', 'success', 1586746393);
INSERT INTO `y5g_log` VALUES (1136, 2, '综合查询', '{\"category_id\":\"\",\"type_id\":\"\",\"name_id\":\"iPad 2017\\uff085\\uff09\",\"network_id\":\"\",\"feature_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\"}', 'success', 1586746396);
INSERT INTO `y5g_log` VALUES (1137, 2, '综合查询', '{\"category_id\":\"\",\"type_id\":\"\",\"name_id\":\"iPad 2017\\uff085\\uff09\",\"network_id\":\"Wi-Fi + Cellular\",\"feature_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\"}', 'success', 1586746410);
INSERT INTO `y5g_log` VALUES (1138, 2, '综合查询', '{\"category_id\":\"\",\"type_id\":\"\",\"name_id\":\"\",\"network_id\":\"\",\"feature_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\"}', 'success', 1586746413);
INSERT INTO `y5g_log` VALUES (1139, 2, '综合查询', '{\"category_id\":\"\",\"type_id\":\"\",\"name_id\":\"\",\"network_id\":\"Wi-Fi + Cellular\",\"feature_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\"}', 'success', 1586746416);
INSERT INTO `y5g_log` VALUES (1140, 2, '综合查询', '{\"category_id\":\"\",\"type_id\":\"\",\"name_id\":\"\",\"network_id\":\"Wi-Fi\",\"feature_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\"}', 'success', 1586746422);
INSERT INTO `y5g_log` VALUES (1141, 2, '综合查询', '{\"category_id\":\"\",\"type_id\":\"\",\"name_id\":\"\",\"network_id\":\"\",\"feature_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\"}', 'success', 1586746426);
INSERT INTO `y5g_log` VALUES (1142, 2, '综合查询', '{\"category_id\":\"\",\"type_id\":\"\",\"name_id\":\"\",\"network_id\":\"\",\"feature_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\",\"page\":\"2\"}', 'success', 1586746429);
INSERT INTO `y5g_log` VALUES (1143, 2, '综合查询', '{\"category_id\":\"\",\"type_id\":\"\",\"name_id\":\"\",\"network_id\":\"40mm\\uff08GPS+\\u8702\\u7a9d\\uff09CH\",\"feature_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\"}', 'success', 1586746438);
INSERT INTO `y5g_log` VALUES (1144, 2, '综合查询', '{\"category_id\":\"\",\"type_id\":\"\",\"name_id\":\"iPad 2017\\uff085\\uff09\",\"network_id\":\"Wi-Fi\",\"feature_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\"}', 'success', 1586746463);
INSERT INTO `y5g_log` VALUES (1145, 2, '综合查询', '{\"category_id\":\"\",\"type_id\":\"\",\"name_id\":\"iPad 2017\\uff085\\uff09\",\"network_id\":\"Wi-Fi + Cellular\",\"feature_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\"}', 'success', 1586746536);
INSERT INTO `y5g_log` VALUES (1146, 2, '综合查询', '{\"category_id\":\"\",\"type_id\":\"\",\"name_id\":\"iPad 2017\\uff085\\uff09\",\"network_id\":\"Wi-Fi\",\"feature_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\"}', 'success', 1586746542);
INSERT INTO `y5g_log` VALUES (1147, 2, '综合查询', '{\"category_id\":\"\",\"type_id\":\"\",\"name_id\":\"iPad 2017\\uff085\\uff09\",\"network_id\":\"Wi-Fi\",\"feature_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\"}', 'success', 1586746553);
INSERT INTO `y5g_log` VALUES (1148, 2, '综合查询', '{\"category_id\":\"\",\"type_id\":\"\",\"name_id\":\"iPad 2017\\uff085\\uff09\",\"network_id\":\"Wi-Fi + Cellular\",\"feature_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\"}', 'success', 1586746560);
INSERT INTO `y5g_log` VALUES (1149, 2, '综合查询', '{\"category_id\":\"\",\"type_id\":\"\",\"name_id\":\"iPad 2017\\uff085\\uff09\",\"network_id\":\"Wi-Fi\",\"feature_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\"}', 'success', 1586746678);
INSERT INTO `y5g_log` VALUES (1150, 2, '综合查询', '{\"category_id\":\"\",\"type_id\":\"\",\"name_id\":\"iPad 2017\\uff085\\uff09\",\"network_id\":\"Wi-Fi\",\"feature_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\"}', 'success', 1586746693);
INSERT INTO `y5g_log` VALUES (1151, 2, '综合查询', '{\"category_id\":\"\",\"type_id\":\"\",\"name_id\":\"\",\"network_id\":\"\",\"feature_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\"}', 'success', 1586746696);
INSERT INTO `y5g_log` VALUES (1152, 2, '综合查询', '{\"category_id\":\"\",\"type_id\":\"\",\"name_id\":\"iPad 2017\\uff085\\uff09\",\"network_id\":\"\",\"feature_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\"}', 'success', 1586746789);
INSERT INTO `y5g_log` VALUES (1153, 2, '综合查询', '{\"category_id\":\"\",\"type_id\":\"\",\"name_id\":\"iPad 2017\\uff085\\uff09\",\"network_id\":\"Wi-Fi + Cellular\",\"feature_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\"}', 'success', 1586848736);
INSERT INTO `y5g_log` VALUES (1154, 2, '综合查询', '{\"category_id\":\"\",\"type_id\":\"\",\"name_id\":\"\",\"network_id\":\"Wi-Fi + Cellular\",\"feature_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\"}', 'success', 1586848746);
INSERT INTO `y5g_log` VALUES (1155, 2, '综合查询', '{\"category_id\":\"\",\"type_id\":\"\",\"name_id\":\"\",\"network_id\":\"Wi-Fi + Cellular\",\"feature_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\"}', 'success', 1586848748);
INSERT INTO `y5g_log` VALUES (1156, 2, '综合查询', '{\"category_id\":\"\",\"type_id\":\"\",\"name_id\":\"\",\"network_id\":\"\",\"feature_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\"}', 'success', 1586848750);
INSERT INTO `y5g_log` VALUES (1157, 2, '综合查询', '{\"category_id\":\"\",\"type_id\":\"\",\"name_id\":\"\",\"network_id\":\"\",\"feature_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\"}', 'success', 1586848752);
INSERT INTO `y5g_log` VALUES (1158, 2, '综合查询', '{\"category_id\":\"\",\"type_id\":\"\",\"name_id\":\"\",\"network_id\":\"Wi-Fi + Cellular\",\"feature_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\"}', 'success', 1586848758);
INSERT INTO `y5g_log` VALUES (1159, 2, '综合查询', '{\"category_id\":\"\",\"type_id\":\"\",\"name_id\":\"\",\"network_id\":\"\",\"feature_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\"}', 'success', 1586848763);
INSERT INTO `y5g_log` VALUES (1160, 2, '综合查询', '{\"category_id\":\"\",\"type_id\":\"\",\"name_id\":\"\",\"network_id\":\"\",\"feature_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\"}', 'success', 1586848881);
INSERT INTO `y5g_log` VALUES (1161, 2, '综合查询', '{\"category_id\":\"\",\"type_id\":\"\",\"name_id\":\"\",\"network_id\":\"Wi-Fi + Cellular\",\"feature_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\"}', 'success', 1586848885);
INSERT INTO `y5g_log` VALUES (1162, 2, '综合查询', '{\"category_id\":\"\",\"type_id\":\"\",\"name_id\":\"\",\"network_id\":\"\",\"feature_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\"}', 'success', 1586848889);
INSERT INTO `y5g_log` VALUES (1163, 2, '综合查询', '{\"category_id\":\"\",\"type_id\":\"\",\"name_id\":\"\",\"network_id\":\"Wi-Fi\",\"feature_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\"}', 'success', 1586848894);
INSERT INTO `y5g_log` VALUES (1164, 2, '综合查询', '{\"category_id\":\"\",\"type_id\":\"\",\"name_id\":\"\",\"network_id\":\"\",\"feature_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\"}', 'success', 1586848897);
INSERT INTO `y5g_log` VALUES (1165, 2, '综合查询', '{\"category_id\":\"\",\"type_id\":\"\",\"name_id\":\"\",\"network_id\":\"\",\"feature_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\",\"page\":\"2\"}', 'success', 1586848899);
INSERT INTO `y5g_log` VALUES (1166, 2, '综合查询', '{\"category_id\":\"\",\"type_id\":\"\",\"name_id\":\"\",\"network_id\":\"40mm\\uff08GPS+\\u8702\\u7a9d\\uff09CH\",\"feature_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\"}', 'success', 1586848912);
INSERT INTO `y5g_log` VALUES (1167, 2, '综合查询', '{\"category_id\":\"\",\"type_id\":\"\",\"name_id\":\"\",\"network_id\":\"Wi-Fi\",\"feature_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\"}', 'success', 1586848923);
INSERT INTO `y5g_log` VALUES (1168, 2, '综合查询', '{\"category_id\":\"\",\"type_id\":\"\",\"name_id\":\"\",\"network_id\":\"Wi-Fi\",\"feature_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\"}', 'success', 1586848937);
INSERT INTO `y5g_log` VALUES (1169, 2, '综合查询', '{\"category_id\":\"\",\"type_id\":\"\",\"name_id\":\"\",\"network_id\":\"Wi-Fi\",\"feature_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"\"}', 'success', 1586848939);
INSERT INTO `y5g_log` VALUES (1170, 2, '综合查询', '{\"category_id\":\"\",\"type_id\":\"\",\"name_id\":\"\",\"network_id\":\"Wi-Fi\",\"feature_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"52\"}', 'success', 1586848944);
INSERT INTO `y5g_log` VALUES (1171, 2, '综合查询', '{\"category_id\":\"\",\"type_id\":\"\",\"name_id\":\"\",\"network_id\":\"Wi-Fi\",\"feature_id\":\"\",\"appearance_id\":\"\",\"edition_id\":\"\",\"channel_id\":\"\",\"date\":\"\",\"status\":\"\",\"keyword\":\"52\"}', 'success', 1586849457);
INSERT INTO `y5g_log` VALUES (1172, 2, '综合查询', '[]', 'success', 1586851678);
INSERT INTO `y5g_log` VALUES (1173, 2, '在库查询', '[]', 'success', 1586851693);
INSERT INTO `y5g_log` VALUES (1174, 2, '综合查询', '[]', 'success', 1586851709);
INSERT INTO `y5g_log` VALUES (1175, 2, '综合查询', '[]', 'success', 1586851720);
INSERT INTO `y5g_log` VALUES (1176, 2, '在库查询', '[]', 'success', 1586851870);
INSERT INTO `y5g_log` VALUES (1177, 2, '在库查询', '[]', 'success', 1586870015);
INSERT INTO `y5g_log` VALUES (1178, 2, '在库查询', '[]', 'success', 1587296000);
INSERT INTO `y5g_log` VALUES (1179, 2, '统计', '[]', 'success', 1587315640);
INSERT INTO `y5g_log` VALUES (1180, 2, '日志查询', '[]', 'success', 1587315675);
INSERT INTO `y5g_log` VALUES (1181, 4, '登陆', '{\"account\":\"csh123456csh\",\"pwd\":\"csh123456csh\",\"captcha\":\"276vx\"}', 'success', 1587317798);
INSERT INTO `y5g_log` VALUES (1182, 4, '权限修改', '{\"user_id\":\"4\",\"nodes\":{\"2\":\"2\",\"3\":\"3\",\"6\":\"6\",\"7\":\"7\",\"9\":\"9\",\"10\":\"10\",\"12\":\"12\",\"31\":\"31\",\"14\":\"14\",\"15\":\"15\",\"18\":\"18\",\"20\":\"20\",\"21\":\"21\",\"22\":\"22\",\"23\":\"23\",\"24\":\"24\",\"25\":\"25\",\"26\":\"26\",\"27\":\"27\",\"30\":\"30\",\"29\":\"29\"}}', 'success', 1587318389);
INSERT INTO `y5g_log` VALUES (1183, 4, '权限修改', '{\"user_id\":\"4\",\"nodes\":{\"2\":\"2\",\"3\":\"3\",\"6\":\"6\",\"7\":\"7\",\"9\":\"9\",\"10\":\"10\",\"12\":\"12\",\"31\":\"31\",\"14\":\"14\",\"15\":\"15\",\"18\":\"18\",\"20\":\"20\",\"21\":\"21\",\"22\":\"22\",\"23\":\"23\",\"24\":\"24\",\"25\":\"25\",\"26\":\"26\",\"27\":\"27\",\"30\":\"30\",\"32\":\"32\",\"29\":\"29\"}}', 'success', 1587332108);
INSERT INTO `y5g_log` VALUES (1184, 4, '权限修改', '{\"user_id\":\"4\",\"nodes\":{\"2\":\"2\",\"3\":\"3\",\"6\":\"6\",\"7\":\"7\",\"9\":\"9\",\"10\":\"10\",\"12\":\"12\",\"31\":\"31\",\"14\":\"14\",\"15\":\"15\",\"18\":\"18\",\"20\":\"20\",\"21\":\"21\",\"22\":\"22\",\"23\":\"23\",\"24\":\"24\",\"25\":\"25\",\"26\":\"26\",\"27\":\"27\",\"30\":\"30\",\"32\":\"32\",\"33\":\"33\",\"29\":\"29\"}}', 'success', 1587550915);
INSERT INTO `y5g_log` VALUES (1185, 4, '增加智能识别码', '{\"id\":\"\",\"name_id\":\"2\",\"network_id\":\"3\",\"feature_id\":\"2\",\"appearance_id\":\"5\",\"data\":\"123\"}', 'fail', 1587558581);
INSERT INTO `y5g_log` VALUES (1186, 4, '增加智能识别码', '{\"id\":\"\",\"name_id\":\"2\",\"network_id\":\"3\",\"feature_id\":\"2\",\"appearance_id\":\"5\",\"data\":\"123\"}', 'fail', 1587558647);
INSERT INTO `y5g_log` VALUES (1187, 4, '增加智能识别码', '{\"id\":\"\",\"name_id\":\"2\",\"network_id\":\"3\",\"feature_id\":\"2\",\"appearance_id\":\"5\",\"data\":\"123\"}', 'fail', 1587558649);
INSERT INTO `y5g_log` VALUES (1188, 4, '增加智能识别码', '{\"id\":\"\",\"name_id\":\"2\",\"network_id\":\"3\",\"feature_id\":\"2\",\"appearance_id\":\"5\",\"data\":\"123\"}', 'success', 1587558681);
INSERT INTO `y5g_log` VALUES (1189, 4, '增加智能识别码', '{\"id\":\"\",\"name_id\":\"2\",\"network_id\":\"3\",\"feature_id\":\"2\",\"appearance_id\":\"5\",\"data\":\"123\"}', 'success', 1587558798);
INSERT INTO `y5g_log` VALUES (1190, 4, '删除智能识别码', '{\"id\":\"60\"}', 'success', 1587558926);
INSERT INTO `y5g_log` VALUES (1191, 4, '增加智能识别码', '{\"id\":\"60\",\"name_id\":\"2\",\"network_id\":\"3\",\"feature_id\":\"2\",\"appearance_id\":\"52\",\"data\":\"123\"}', 'success', 1587558934);
INSERT INTO `y5g_log` VALUES (1192, 4, '增加智能识别码', '{\"id\":\"60\",\"name_id\":\"3\",\"network_id\":\"5\",\"feature_id\":\"16\",\"appearance_id\":\"7\",\"data\":\"123\"}', 'success', 1587558944);
INSERT INTO `y5g_log` VALUES (1193, 4, '增加智能识别码', '{\"id\":\"\",\"name_id\":\"3\",\"type_id\":\"6\",\"feature_id\":\"16\",\"appearance_id\":\"4\",\"data\":\"222\"}', 'success', 1587561991);
INSERT INTO `y5g_log` VALUES (1194, 4, '删除智能识别码', '{\"id\":\"61\"}', 'success', 1587561998);
INSERT INTO `y5g_log` VALUES (1195, 4, '增加智能识别码', '{\"id\":\"61\",\"name_id\":\"3\",\"type_id\":\"6\",\"feature_id\":\"17\",\"appearance_id\":\"4\",\"data\":\"222\"}', 'success', 1587562345);
INSERT INTO `y5g_log` VALUES (1196, 4, '增加智能识别码', '{\"id\":\"61\",\"name_id\":\"3\",\"type_id\":\"6\",\"feature_id\":\"17\",\"appearance_id\":\"8\",\"data\":\"222\"}', 'success', 1587562355);
INSERT INTO `y5g_log` VALUES (1197, 4, '增加配置', '{\"id\":\"\",\"name_id\":\"3\",\"data\":\"123\"}', 'success', 1588680010);
INSERT INTO `y5g_log` VALUES (1198, 4, '删除配置', '{\"id\":\"46\"}', 'success', 1588680017);
INSERT INTO `y5g_log` VALUES (1199, 4, '增加配置', '{\"id\":\"\",\"name_id\":\"2\",\"data\":\"1234\"}', 'success', 1588680029);
INSERT INTO `y5g_log` VALUES (1200, 4, '增加配置', '{\"id\":\"\",\"name_id\":\"2\",\"data\":\"1234\"}', 'fail', 1588680045);
INSERT INTO `y5g_log` VALUES (1201, 4, '增加配置', '{\"id\":\"\",\"name_id\":\"2\",\"data\":\"1234\"}', 'fail', 1588680058);
INSERT INTO `y5g_log` VALUES (1202, 4, '增加配置', '{\"id\":\"\",\"name_id\":\"14\",\"data\":\"512GB\"}', 'fail', 1588680123);
INSERT INTO `y5g_log` VALUES (1203, 4, '增加配置', '{\"id\":\"\",\"name_id\":\"14\",\"data\":\"512GB\"}', 'fail', 1588680164);
INSERT INTO `y5g_log` VALUES (1204, 4, '增加配置', '{\"id\":\"\",\"name_id\":\"14\",\"data\":\"513GB\"}', 'success', 1588680381);
INSERT INTO `y5g_log` VALUES (1205, 4, '增加配置', '{\"id\":\"\",\"name_id\":\"14\",\"data\":\"512GB\"}', 'success', 1588680388);
INSERT INTO `y5g_log` VALUES (1206, 2, '登陆', '{\"account\":\"a123456\",\"pwd\":\"a123456\",\"captcha\":\"qeddc\"}', 'success', 1589021085);

-- ----------------------------
-- Table structure for y5g_user
-- ----------------------------
DROP TABLE IF EXISTS `y5g_user`;
CREATE TABLE `y5g_user`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `pwd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '密码',
  `status` tinyint(2) UNSIGNED NOT NULL DEFAULT 0 COMMENT '状态：1有效 2无效',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `update_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of y5g_user
-- ----------------------------
INSERT INTO `y5g_user` VALUES (2, 'a123456', '484ac61efee6634c95f7da28c1886998', 1, 1559801865, 1559801865);
INSERT INTO `y5g_user` VALUES (3, 'maiguo', '484ac61efee6634c95f7da28c1886998', 1, 1559802326, 1559802326);
INSERT INTO `y5g_user` VALUES (4, 'csh123456csh', '24930054ccdc8607be9a35a353c9cccc', 1, 1567310628, 1567310628);

-- ----------------------------
-- Table structure for y5g_user_access
-- ----------------------------
DROP TABLE IF EXISTS `y5g_user_access`;
CREATE TABLE `y5g_user_access`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户id',
  `node_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '权限节点id',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '状态 1有效 2无效',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `update_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 70 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户-权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of y5g_user_access
-- ----------------------------
INSERT INTO `y5g_user_access` VALUES (2, 1, 1, 1, 1559801852, 1559801852);
INSERT INTO `y5g_user_access` VALUES (3, 1, 2, 1, 1559801852, 1559801852);
INSERT INTO `y5g_user_access` VALUES (4, 1, 6, 1, 1559801852, 1559801852);
INSERT INTO `y5g_user_access` VALUES (5, 1, 7, 1, 1559801852, 1559801852);
INSERT INTO `y5g_user_access` VALUES (6, 1, 9, 1, 1559801852, 1559801852);
INSERT INTO `y5g_user_access` VALUES (7, 1, 10, 1, 1559801852, 1559801852);
INSERT INTO `y5g_user_access` VALUES (8, 1, 12, 1, 1559801852, 1559801852);
INSERT INTO `y5g_user_access` VALUES (9, 1, 14, 1, 1559801852, 1559801852);
INSERT INTO `y5g_user_access` VALUES (10, 1, 15, 1, 1559801852, 1559801852);
INSERT INTO `y5g_user_access` VALUES (11, 1, 17, 2, 1559801852, 1562974906);
INSERT INTO `y5g_user_access` VALUES (12, 1, 18, 1, 1559801852, 1559801852);
INSERT INTO `y5g_user_access` VALUES (13, 1, 20, 1, 1559801852, 1559801852);
INSERT INTO `y5g_user_access` VALUES (14, 1, 21, 1, 1559801852, 1559801852);
INSERT INTO `y5g_user_access` VALUES (15, 1, 22, 1, 1559801852, 1559801852);
INSERT INTO `y5g_user_access` VALUES (16, 1, 23, 1, 1559801852, 1559801852);
INSERT INTO `y5g_user_access` VALUES (17, 1, 24, 1, 1559801852, 1559801852);
INSERT INTO `y5g_user_access` VALUES (18, 1, 25, 1, 1559801852, 1559801852);
INSERT INTO `y5g_user_access` VALUES (19, 1, 26, 1, 1559801852, 1559801852);
INSERT INTO `y5g_user_access` VALUES (20, 1, 27, 1, 1559801852, 1559801852);
INSERT INTO `y5g_user_access` VALUES (21, 1, 29, 1, 1559801852, 1559801852);
INSERT INTO `y5g_user_access` VALUES (22, 2, 1, 1, 1559801881, 1559801881);
INSERT INTO `y5g_user_access` VALUES (23, 2, 2, 1, 1559801881, 1559801881);
INSERT INTO `y5g_user_access` VALUES (24, 2, 3, 1, 1559801881, 1559801881);
INSERT INTO `y5g_user_access` VALUES (25, 2, 6, 1, 1559801881, 1559801881);
INSERT INTO `y5g_user_access` VALUES (26, 2, 7, 1, 1559801881, 1559801881);
INSERT INTO `y5g_user_access` VALUES (27, 2, 9, 1, 1559801881, 1559801881);
INSERT INTO `y5g_user_access` VALUES (28, 2, 10, 1, 1559801881, 1559801881);
INSERT INTO `y5g_user_access` VALUES (29, 2, 12, 1, 1559801881, 1559801881);
INSERT INTO `y5g_user_access` VALUES (30, 2, 14, 1, 1559801881, 1559801881);
INSERT INTO `y5g_user_access` VALUES (31, 2, 15, 1, 1559801881, 1559801881);
INSERT INTO `y5g_user_access` VALUES (32, 2, 17, 2, 1559801881, 1562974911);
INSERT INTO `y5g_user_access` VALUES (33, 2, 18, 1, 1559801881, 1559801881);
INSERT INTO `y5g_user_access` VALUES (34, 2, 20, 1, 1559801881, 1559801881);
INSERT INTO `y5g_user_access` VALUES (35, 2, 21, 1, 1559801881, 1559801881);
INSERT INTO `y5g_user_access` VALUES (36, 2, 22, 1, 1559801881, 1559801881);
INSERT INTO `y5g_user_access` VALUES (37, 2, 23, 1, 1559801881, 1559801881);
INSERT INTO `y5g_user_access` VALUES (38, 2, 24, 1, 1559801881, 1559801881);
INSERT INTO `y5g_user_access` VALUES (39, 2, 25, 1, 1559801881, 1559801881);
INSERT INTO `y5g_user_access` VALUES (40, 2, 26, 1, 1559801881, 1559801881);
INSERT INTO `y5g_user_access` VALUES (41, 2, 27, 1, 1559801881, 1559801881);
INSERT INTO `y5g_user_access` VALUES (42, 2, 29, 1, 1559801881, 1559801881);
INSERT INTO `y5g_user_access` VALUES (43, 1, 30, 1, 1562328413, 1562378049);
INSERT INTO `y5g_user_access` VALUES (44, 2, 30, 1, 1562378463, 1562378463);
INSERT INTO `y5g_user_access` VALUES (45, 1, 31, 1, 1562974906, 1562974906);
INSERT INTO `y5g_user_access` VALUES (46, 2, 31, 1, 1562974911, 1562974911);
INSERT INTO `y5g_user_access` VALUES (47, 4, 3, 1, 1567310628, 1567310628);
INSERT INTO `y5g_user_access` VALUES (48, 4, 2, 1, 1587318389, 1587318389);
INSERT INTO `y5g_user_access` VALUES (49, 4, 6, 1, 1587318389, 1587318389);
INSERT INTO `y5g_user_access` VALUES (50, 4, 7, 1, 1587318389, 1587318389);
INSERT INTO `y5g_user_access` VALUES (51, 4, 9, 1, 1587318389, 1587318389);
INSERT INTO `y5g_user_access` VALUES (52, 4, 10, 1, 1587318389, 1587318389);
INSERT INTO `y5g_user_access` VALUES (53, 4, 12, 1, 1587318389, 1587318389);
INSERT INTO `y5g_user_access` VALUES (54, 4, 31, 1, 1587318389, 1587318389);
INSERT INTO `y5g_user_access` VALUES (55, 4, 14, 1, 1587318389, 1587318389);
INSERT INTO `y5g_user_access` VALUES (56, 4, 15, 1, 1587318389, 1587318389);
INSERT INTO `y5g_user_access` VALUES (57, 4, 18, 1, 1587318389, 1587318389);
INSERT INTO `y5g_user_access` VALUES (58, 4, 20, 1, 1587318389, 1587318389);
INSERT INTO `y5g_user_access` VALUES (59, 4, 21, 1, 1587318389, 1587318389);
INSERT INTO `y5g_user_access` VALUES (60, 4, 22, 1, 1587318389, 1587318389);
INSERT INTO `y5g_user_access` VALUES (61, 4, 23, 1, 1587318389, 1587318389);
INSERT INTO `y5g_user_access` VALUES (62, 4, 24, 1, 1587318389, 1587318389);
INSERT INTO `y5g_user_access` VALUES (63, 4, 25, 1, 1587318389, 1587318389);
INSERT INTO `y5g_user_access` VALUES (64, 4, 26, 1, 1587318389, 1587318389);
INSERT INTO `y5g_user_access` VALUES (65, 4, 27, 1, 1587318389, 1587318389);
INSERT INTO `y5g_user_access` VALUES (66, 4, 30, 1, 1587318389, 1587318389);
INSERT INTO `y5g_user_access` VALUES (67, 4, 29, 1, 1587318389, 1587318389);
INSERT INTO `y5g_user_access` VALUES (68, 4, 32, 1, 1587332108, 1587332108);
INSERT INTO `y5g_user_access` VALUES (69, 4, 33, 1, 1587550915, 1587550915);

SET FOREIGN_KEY_CHECKS = 1;
