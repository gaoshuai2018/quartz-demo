/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50710
 Source Host           : localhost:3306
 Source Schema         : quartademo

 Target Server Type    : MySQL
 Target Server Version : 50710
 File Encoding         : 65001

 Date: 27/07/2019 13:58:54
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '任务组名',
  `method_name` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '任务方法',
  `method_params` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '方法参数',
  `cron_expression` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '计划执行错误策略（0默认 1继续 2等待 3放弃）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务调度表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, 'ryTask', '系统默认（无参）', 'ryNoParams', '', '0/10 * * * * ?', '0', '1', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_job` VALUES (2, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', '0/20 * * * * ?', '0', '1', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`  (
  `job_log_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务组名',
  `method_name` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '任务方法',
  `method_params` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '方法参数',
  `job_message` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '异常信息',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务调度日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------
INSERT INTO `sys_job_log` VALUES (1, 'ryTask', '系统默认（无参）', 'ryNoParams', '', 'ryTask 总共耗时：3毫秒', '0', NULL, '2019-07-26 14:53:54');
INSERT INTO `sys_job_log` VALUES (2, 'ryTask', '系统默认（无参）', 'ryNoParams', '', 'ryTask 总共耗时：2毫秒', '0', NULL, '2019-07-26 14:54:00');
INSERT INTO `sys_job_log` VALUES (3, 'ryTask', '系统默认（无参）', 'ryNoParams', '', 'ryTask 总共耗时：1毫秒', '0', NULL, '2019-07-26 14:54:10');
INSERT INTO `sys_job_log` VALUES (4, 'ryTask', '系统默认（无参）', 'ryNoParams', '', 'ryTask 总共耗时：3毫秒', '0', NULL, '2019-07-26 14:54:56');
INSERT INTO `sys_job_log` VALUES (5, 'ryTask', '系统默认（无参）', 'ryNoParams', '', 'ryTask 总共耗时：1毫秒', '0', NULL, '2019-07-26 14:55:00');
INSERT INTO `sys_job_log` VALUES (6, 'ryTask', '系统默认（无参）', 'ryNoParams', '', 'ryTask 总共耗时：1毫秒', '0', NULL, '2019-07-26 14:55:10');
INSERT INTO `sys_job_log` VALUES (7, 'ryTask', '系统默认（无参）', 'ryNoParams', '', 'ryTask 总共耗时：1毫秒', '0', NULL, '2019-07-26 14:55:20');
INSERT INTO `sys_job_log` VALUES (8, 'ryTask', '系统默认（无参）', 'ryNoParams', '', 'ryTask 总共耗时：2毫秒', '0', NULL, '2019-07-26 15:34:55');
INSERT INTO `sys_job_log` VALUES (9, 'ryTask', '系统默认（无参）', 'ryNoParams', '', 'ryTask 总共耗时：1毫秒', '0', NULL, '2019-07-26 15:35:00');
INSERT INTO `sys_job_log` VALUES (10, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：3毫秒', '0', NULL, '2019-07-26 16:53:17');
INSERT INTO `sys_job_log` VALUES (11, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：1毫秒', '0', NULL, '2019-07-26 16:53:20');
INSERT INTO `sys_job_log` VALUES (12, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：3毫秒', '0', NULL, '2019-07-26 16:54:55');
INSERT INTO `sys_job_log` VALUES (13, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：1毫秒', '0', NULL, '2019-07-26 16:55:00');
INSERT INTO `sys_job_log` VALUES (14, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：2毫秒', '0', NULL, '2019-07-26 16:55:20');
INSERT INTO `sys_job_log` VALUES (15, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：2毫秒', '0', NULL, '2019-07-26 16:55:40');
INSERT INTO `sys_job_log` VALUES (16, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：2毫秒', '0', NULL, '2019-07-26 17:00:22');
INSERT INTO `sys_job_log` VALUES (17, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：2毫秒', '0', NULL, '2019-07-26 17:02:47');

SET FOREIGN_KEY_CHECKS = 1;
