# 题目 Q001
## 背景描述
复兴集团公司中有一份组织架构信息，包括部门信息及部分具有领导职务的雇员信息，详见下图示例：

| role_id  | role_name | parent_id | level | role_type  |
|:----------|-----------|:-----------|-------|------------|
| 01       | 复兴集团公司    |           | L1    | department |
| 0101     | 总部        | 01        | L2    | department |
| 010101   | 总裁办公室     | 0101      | L3    | department |
| 0102     | 北京分公司     | 01        | L2    | department |
| 010201   | 项目部       | 0102      | L3    | department |
| 01020101 | 项目一部      | 010201    | L4    | department |
| 01020102 | 项目部总监     | 010201    | L4    | employee   |
| 010202   | 市场部       | 0102      | L3    | department |
| 01020201 | 市场部总监     | 010202    | L4    | employee   |
| 01020202 | 市场部专员     | 010202    | L4    | employee   |

## 需求描述
现在想提取一份仅包含部门信息的组织架构信息，要求从左向右依次展示各层级部门信息，去除所有雇员信息，需求示例如下图所示：
| dep_id_l1 | dep_name_l1 | dep_id_l2 | dep_name_l2 | dep_id_l3 | dep_name_l3 | dep_id_l4 | dep_name_l4 |
|-----------|-------------|-----------|-------------|-----------|-------------|-----------|-------------|
| 01        | 复兴集团公司      | 0101      | 总部          | 010101    | 总裁办公室       |           |             |
| 01        | 复兴集团公司      | 0102      | 北京分公司       | 010201    | 项目部         | 01020101  | 项目一部        |
| 01        | 复兴集团公司      | 0102      | 北京分公司       | 010202    | 市场部         |
## 考察点

自联结

## 建表语句

```sql
-- ----------------------------
-- Table structure for dep_list
-- ----------------------------
DROP TABLE IF EXISTS `dep_list`;
CREATE TABLE `dep_list`  (
  `role_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色编号',
  `role_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '角色名称',
  `parent_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '父编号',
  `level` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '层级',
  `role_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '角色类型',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;
```

## 示例数据信息

```sql
-- ----------------------------
-- Records of dep_list
-- ----------------------------
INSERT INTO `dep_list` VALUES ('01', '复兴集团公司', '', 'L1', 'department');
INSERT INTO `dep_list` VALUES ('0101', '总部', '01', 'L2', 'department');
INSERT INTO `dep_list` VALUES ('010101', '总裁办公室', '0101', 'L3', 'department');
INSERT INTO `dep_list` VALUES ('0102', '北京分公司', '01', 'L2', 'department');
INSERT INTO `dep_list` VALUES ('010201', '项目部', '0102', 'L3', 'department');
INSERT INTO `dep_list` VALUES ('01020101', '项目一部', '010201', 'L4', 'department');
INSERT INTO `dep_list` VALUES ('01020102', '项目部总监', '010201', 'L4', 'employee');
INSERT INTO `dep_list` VALUES ('010202', '市场部', '0102', 'L3', 'department');
INSERT INTO `dep_list` VALUES ('01020201', '市场部总监', '010202', 'L4', 'employee');
INSERT INTO `dep_list` VALUES ('01020202', '市场部专员', '010202', 'L4', 'employee');
```
