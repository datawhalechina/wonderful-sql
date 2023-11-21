# wonderful-sql

Follow me，从 0 到 1 掌握 SQL。

# 项目由来

随着社会的快速发展，各类企业数字化转型迫在眉睫，SQL 应用能力日趋重要。 在诸多领域中 SQL 应用广泛，数据分析、开发、测试、维护、产品经理等都有可能会用到SQL，而在学校里系统性讲授 SQL 的课程较少，但是面试及日常工作中却经常会涉及到 SQL。这就要求我们提前掌握这一技能。笔者在多年的学习过程中，总结了一些方式方法。受 datawhale 开源理念影响，我非常愿意将我所掌握的知识分享给别人，于是乎，我就发起了这个项目，联合其他几位组织成员，结合经典图书《SQL基础教程》加上团队成员的经验教训，形成了本课程，希望可以帮助你更好的了解和掌握 SQL。

考虑到易用性和普及度，课程内容采用`MySql` 数据库进行介绍，具体的目录参见下方，每个章节附带了练习题，最后几个章节是整理的一些面试题，顺利完成本课程学习后，可以帮你更好的应对 SQL 相关的面试或者更好的开展 SQL 相关的日常工作。

本课程所涉及的各类文件存储在 `./materials` 目录下，如果有疑问、建议或者勘误信息，请提交`issue` 或者 `Pull request` 给我们，我们将及时响应。

## 特别说明

1、原则上所有 task 打卡时需要提供文章链接（总结学习内容，完成课后作业），task06 要求必须提交文章链接，不提交视为水卡。

2、组队学习期间关闭参考答案访问权限，其他时段开放访问权限（组队时段大概是每个月后两周，详见 `Datawhale` 公众号当月组队学习内容介绍）。

3、仓库下载便捷方式：采用 **`Git Bash`** 工具，执行命令 `git clone https://github.com/datawhalechina/wonderful-sql` 可以较为快速的下载本仓库到本地，然后使用 markdown 工具打开（比如 Typora）。

## 课程目录

* ch00：绪论 - 环境搭建
    - :white_check_mark: [1. MySQL 8.0 的安装](https://github.com/datawhalechina/wonderful-sql/blob/main/ch00:%E7%8E%AF%E5%A2%83%E6%90%AD%E5%BB%BA.md#1-mysql-80-%E7%9A%84%E5%AE%89%E8%A3%85)
    - :white_check_mark: [2. 连接 MySQL 并执行 SQL 查询](https://github.com/datawhalechina/wonderful-sql/blob/main/ch00:%E7%8E%AF%E5%A2%83%E6%90%AD%E5%BB%BA.md#2-%E8%BF%9E%E6%8E%A5-mysql-%E5%B9%B6%E6%89%A7%E8%A1%8C-sql-%E6%9F%A5%E8%AF%A2)

* ch01：初识数据库
    - :white_check_mark: [1.1 初识数据库](https://github.com/datawhalechina/wonderful-sql/blob/main/ch01:%E5%88%9D%E8%AF%86%E6%95%B0%E6%8D%AE%E5%BA%93.md#11-%E5%88%9D%E8%AF%86%E6%95%B0%E6%8D%AE%E5%BA%93)
    - :white_check_mark: [1.2 初识SQL](https://github.com/datawhalechina/wonderful-sql/blob/main/ch01:%E5%88%9D%E8%AF%86%E6%95%B0%E6%8D%AE%E5%BA%93.md#12-%E5%88%9D%E8%AF%86-sql)
    - :white_check_mark: [参考答案链接](https://xz9235vqyp.feishu.cn/docs/doccnMduaNhilUIrlldFqmNWIzf)

* ch02：基础查询与排序
    - :white_check_mark: [2.1 SELECT语句基础](https://github.com/datawhalechina/wonderful-sql/blob/main/ch02:%E5%9F%BA%E7%A1%80%E6%9F%A5%E8%AF%A2%E4%B8%8E%E6%8E%92%E5%BA%8F.md#21-select%E8%AF%AD%E5%8F%A5%E5%9F%BA%E7%A1%80)
    - :white_check_mark: [2.2 算术运算符和比较运算符](https://github.com/datawhalechina/wonderful-sql/blob/main/ch02:%E5%9F%BA%E7%A1%80%E6%9F%A5%E8%AF%A2%E4%B8%8E%E6%8E%92%E5%BA%8F.md#22-%E7%AE%97%E6%9C%AF%E8%BF%90%E7%AE%97%E7%AC%A6%E5%92%8C%E6%AF%94%E8%BE%83%E8%BF%90%E7%AE%97%E7%AC%A6)
    - :white_check_mark: [2.3 逻辑运算符](https://github.com/datawhalechina/wonderful-sql/blob/main/ch02:%E5%9F%BA%E7%A1%80%E6%9F%A5%E8%AF%A2%E4%B8%8E%E6%8E%92%E5%BA%8F.md#23-%E9%80%BB%E8%BE%91%E8%BF%90%E7%AE%97%E7%AC%A6)
    - :white_check_mark: [2.4 对表进行聚合查询](https://github.com/datawhalechina/wonderful-sql/blob/main/ch02:%E5%9F%BA%E7%A1%80%E6%9F%A5%E8%AF%A2%E4%B8%8E%E6%8E%92%E5%BA%8F.md#24-%E5%AF%B9%E8%A1%A8%E8%BF%9B%E8%A1%8C%E8%81%9A%E5%90%88%E6%9F%A5%E8%AF%A2)
    - :white_check_mark: [2.5 对表进行分组](https://github.com/datawhalechina/wonderful-sql/blob/main/ch02:%E5%9F%BA%E7%A1%80%E6%9F%A5%E8%AF%A2%E4%B8%8E%E6%8E%92%E5%BA%8F.md#25-%E5%AF%B9%E8%A1%A8%E8%BF%9B%E8%A1%8C%E5%88%86%E7%BB%84)
    - :white_check_mark: [2.6 为聚合结果指定条件](https://github.com/datawhalechina/wonderful-sql/blob/main/ch02:%E5%9F%BA%E7%A1%80%E6%9F%A5%E8%AF%A2%E4%B8%8E%E6%8E%92%E5%BA%8F.md#26-%E4%B8%BA%E8%81%9A%E5%90%88%E7%BB%93%E6%9E%9C%E6%8C%87%E5%AE%9A%E6%9D%A1%E4%BB%B6)
    - :white_check_mark: [参考答案链接](https://xz9235vqyp.feishu.cn/docs/doccnjASyISYXEDhI4W95Rycorh)
    
* ch03：复杂一点的查询
    - :white_check_mark: [3.1 视图](https://github.com/datawhalechina/wonderful-sql/blob/main/ch03:%E5%A4%8D%E6%9D%82%E4%B8%80%E7%82%B9%E7%9A%84%E6%9F%A5%E8%AF%A2.md#31-%E8%A7%86%E5%9B%BE)
    - :white_check_mark: [3.2 子查询](https://github.com/datawhalechina/wonderful-sql/blob/main/ch03:%E5%A4%8D%E6%9D%82%E4%B8%80%E7%82%B9%E7%9A%84%E6%9F%A5%E8%AF%A2.md#32-%E5%AD%90%E6%9F%A5%E8%AF%A2)
    - :white_check_mark: [3.3 各种各样的函数](https://github.com/datawhalechina/wonderful-sql/blob/main/ch03:%E5%A4%8D%E6%9D%82%E4%B8%80%E7%82%B9%E7%9A%84%E6%9F%A5%E8%AF%A2.md#33-%E5%90%84%E7%A7%8D%E5%90%84%E6%A0%B7%E7%9A%84%E5%87%BD%E6%95%B0)
    - :white_check_mark: [3.4 谓词](https://github.com/datawhalechina/wonderful-sql/blob/main/ch03:%E5%A4%8D%E6%9D%82%E4%B8%80%E7%82%B9%E7%9A%84%E6%9F%A5%E8%AF%A2.md#34-%E8%B0%93%E8%AF%8D)
    - :white_check_mark: [3.5 CASE 表达式](https://github.com/datawhalechina/wonderful-sql/blob/main/ch03:%E5%A4%8D%E6%9D%82%E4%B8%80%E7%82%B9%E7%9A%84%E6%9F%A5%E8%AF%A2.md#35-case-%E8%A1%A8%E8%BE%BE%E5%BC%8F)
    - :white_check_mark: [参考答案链接](https://xz9235vqyp.feishu.cn/docs/doccn4Ll8TU5b76SQ93uHlaHjEd)

* ch04：集合运算
    - :white_check_mark: [4.1 表的加减法](https://github.com/datawhalechina/wonderful-sql/blob/main/ch04:%E9%9B%86%E5%90%88%E8%BF%90%E7%AE%97.md#41-%E8%A1%A8%E7%9A%84%E5%8A%A0%E5%87%8F%E6%B3%95)
    - :white_check_mark: [4.2 连结(JOIN)](https://github.com/datawhalechina/wonderful-sql/blob/main/ch04:%E9%9B%86%E5%90%88%E8%BF%90%E7%AE%97.md#42-%E8%BF%9E%E7%BB%93join)
    - :white_check_mark: [参考答案链接](https://xz9235vqyp.feishu.cn/docs/doccnnBUWyb5NQZ27fVuTR2Tvie)

* ch05：SQL高级处理
    - :white_check_mark: [5.1 窗口函数](https://github.com/datawhalechina/wonderful-sql/blob/main/ch05:SQL%E9%AB%98%E7%BA%A7%E5%A4%84%E7%90%86.md#51-%E7%AA%97%E5%8F%A3%E5%87%BD%E6%95%B0)
    - :white_check_mark: [5.2 窗口函数种类](https://github.com/datawhalechina/wonderful-sql/blob/main/ch05:SQL%E9%AB%98%E7%BA%A7%E5%A4%84%E7%90%86.md#52-%E7%AA%97%E5%8F%A3%E5%87%BD%E6%95%B0%E7%A7%8D%E7%B1%BB)
    - :white_check_mark: [5.3 窗口函数的的应用 - 计算移动平均](https://github.com/datawhalechina/wonderful-sql/blob/main/ch05:SQL%E9%AB%98%E7%BA%A7%E5%A4%84%E7%90%86.md#53-%E7%AA%97%E5%8F%A3%E5%87%BD%E6%95%B0%E7%9A%84%E7%9A%84%E5%BA%94%E7%94%A8---%E8%AE%A1%E7%AE%97%E7%A7%BB%E5%8A%A8%E5%B9%B3%E5%9D%87)
    - :white_check_mark: [5.4 GROUPING运算符](https://github.com/datawhalechina/wonderful-sql/blob/main/ch05:SQL%E9%AB%98%E7%BA%A7%E5%A4%84%E7%90%86.md#54-grouping%E8%BF%90%E7%AE%97%E7%AC%A6)
    - :white_check_mark: [5.5 存储过程和函数](https://github.com/datawhalechina/wonderful-sql/blob/main/ch05:SQL%E9%AB%98%E7%BA%A7%E5%A4%84%E7%90%86.md#55-%E5%AD%98%E5%82%A8%E8%BF%87%E7%A8%8B%E5%92%8C%E5%87%BD%E6%95%B0)
    - :white_check_mark: [5.6 预处理声明 PREPARE Statement](https://github.com/datawhalechina/wonderful-sql/blob/main/ch05:SQL%E9%AB%98%E7%BA%A7%E5%A4%84%E7%90%86.md#56-%E9%A2%84%E5%A4%84%E7%90%86%E5%A3%B0%E6%98%8E-prepare-statement)
    - :white_check_mark: [参考答案链接](https://xz9235vqyp.feishu.cn/docs/doccn8YjyxIyV2aQ1J7mQdMHNrd)

* ch06：决胜秋招

    - Section A
    
        - :white_check_mark: [练习一: 各部门工资最高的员工（难度：中等）](https://github.com/datawhalechina/wonderful-sql/blob/main/ch06:%E5%86%B3%E8%83%9C%E7%A7%8B%E6%8B%9B.md#%E7%BB%83%E4%B9%A0%E4%B8%80-%E5%90%84%E9%83%A8%E9%97%A8%E5%B7%A5%E8%B5%84%E6%9C%80%E9%AB%98%E7%9A%84%E5%91%98%E5%B7%A5%E9%9A%BE%E5%BA%A6%E4%B8%AD%E7%AD%89)
        - :white_check_mark: [练习二: 换座位（难度：中等）](https://github.com/datawhalechina/wonderful-sql/blob/main/ch06:%E5%86%B3%E8%83%9C%E7%A7%8B%E6%8B%9B.md#%E7%BB%83%E4%B9%A0%E4%BA%8C-%E6%8D%A2%E5%BA%A7%E4%BD%8D%E9%9A%BE%E5%BA%A6%E4%B8%AD%E7%AD%89)
        - :white_check_mark: [练习三: 分数排名（难度：中等）](https://github.com/datawhalechina/wonderful-sql/blob/main/ch06:%E5%86%B3%E8%83%9C%E7%A7%8B%E6%8B%9B.md#%E7%BB%83%E4%B9%A0%E4%B8%89--%E5%88%86%E6%95%B0%E6%8E%92%E5%90%8D%E9%9A%BE%E5%BA%A6%E4%B8%AD%E7%AD%89)
        - :white_check_mark: [练习四：连续出现的数字（难度：中等）](https://github.com/datawhalechina/wonderful-sql/blob/main/ch06:%E5%86%B3%E8%83%9C%E7%A7%8B%E6%8B%9B.md#%E7%BB%83%E4%B9%A0%E5%9B%9B%E8%BF%9E%E7%BB%AD%E5%87%BA%E7%8E%B0%E7%9A%84%E6%95%B0%E5%AD%97%E9%9A%BE%E5%BA%A6%E4%B8%AD%E7%AD%89)
        - :white_check_mark: [练习五：树节点 （难度：中等）](https://github.com/datawhalechina/wonderful-sql/blob/main/ch06:%E5%86%B3%E8%83%9C%E7%A7%8B%E6%8B%9B.md#%E7%BB%83%E4%B9%A0%E4%BA%94%E6%A0%91%E8%8A%82%E7%82%B9-%E9%9A%BE%E5%BA%A6%E4%B8%AD%E7%AD%89)
        - :white_check_mark: [练习六：至少有五名直接下属的经理 （难度：中等）](https://github.com/datawhalechina/wonderful-sql/blob/main/ch06:%E5%86%B3%E8%83%9C%E7%A7%8B%E6%8B%9B.md#%E7%BB%83%E4%B9%A0%E5%85%AD%E8%87%B3%E5%B0%91%E6%9C%89%E4%BA%94%E5%90%8D%E7%9B%B4%E6%8E%A5%E4%B8%8B%E5%B1%9E%E7%9A%84%E7%BB%8F%E7%90%86-%E9%9A%BE%E5%BA%A6%E4%B8%AD%E7%AD%89)
        - :white_check_mark: [练习七：查询回答率最高的问题 （难度：中等）](https://github.com/datawhalechina/wonderful-sql/blob/main/ch06:%E5%86%B3%E8%83%9C%E7%A7%8B%E6%8B%9B.md#%E7%BB%83%E4%B9%A0%E4%B8%83%E6%9F%A5%E8%AF%A2%E5%9B%9E%E7%AD%94%E7%8E%87%E6%9C%80%E9%AB%98%E7%9A%84%E9%97%AE%E9%A2%98-%E9%9A%BE%E5%BA%A6%E4%B8%AD%E7%AD%89)
        - :white_check_mark: [练习八：各部门前3高工资的员工（难度：中等）](https://github.com/datawhalechina/wonderful-sql/blob/main/ch06:%E5%86%B3%E8%83%9C%E7%A7%8B%E6%8B%9B.md#%E7%BB%83%E4%B9%A0%E5%85%AB%E5%90%84%E9%83%A8%E9%97%A8%E5%89%8D3%E9%AB%98%E5%B7%A5%E8%B5%84%E7%9A%84%E5%91%98%E5%B7%A5%E9%9A%BE%E5%BA%A6%E4%B8%AD%E7%AD%89)
        - :white_check_mark: [练习九：平面上最近距离 (难度: 困难）](https://github.com/datawhalechina/wonderful-sql/blob/main/ch06:%E5%86%B3%E8%83%9C%E7%A7%8B%E6%8B%9B.md#%E7%BB%83%E4%B9%A0%E4%B9%9D%E5%B9%B3%E9%9D%A2%E4%B8%8A%E6%9C%80%E8%BF%91%E8%B7%9D%E7%A6%BB-%E9%9A%BE%E5%BA%A6-%E5%9B%B0%E9%9A%BE)
        - :white_check_mark: [练习十：行程和用户（难度：困难）](https://github.com/datawhalechina/wonderful-sql/blob/main/ch06:%E5%86%B3%E8%83%9C%E7%A7%8B%E6%8B%9B.md#%E7%BB%83%E4%B9%A0%E5%8D%81%E8%A1%8C%E7%A8%8B%E5%92%8C%E7%94%A8%E6%88%B7%E9%9A%BE%E5%BA%A6%E5%9B%B0%E9%9A%BE)

    - Section B
    
        - :white_check_mark: [练习一: 行转列（难度：中等））](https://github.com/datawhalechina/wonderful-sql/blob/main/ch06:%E5%86%B3%E8%83%9C%E7%A7%8B%E6%8B%9B.md#%E7%BB%83%E4%B9%A0%E4%B8%80%E8%A1%8C%E8%BD%AC%E5%88%97)
        - :white_check_mark: [练习二: 列转行（难度：中等）](https://github.com/datawhalechina/wonderful-sql/blob/main/ch06:%E5%86%B3%E8%83%9C%E7%A7%8B%E6%8B%9B.md#%E7%BB%83%E4%B9%A0%E4%BA%8C%E5%88%97%E8%BD%AC%E8%A1%8C)
        - :white_check_mark: [练习三: 谁是明星带货主播？（难度：中等）](https://github.com/datawhalechina/wonderful-sql/blob/main/ch06:%E5%86%B3%E8%83%9C%E7%A7%8B%E6%8B%9B.md#%E7%BB%83%E4%B9%A0%E4%B8%89%E5%B8%A6%E8%B4%A7%E4%B8%BB%E6%92%AD)
        - :white_check_mark: [练习四: MySQL 中如何查看sql语句的执行计划？可以看到哪些信息？（难度：中等）](https://github.com/datawhalechina/wonderful-sql/blob/main/ch06:%E5%86%B3%E8%83%9C%E7%A7%8B%E6%8B%9B.md#%E7%BB%83%E4%B9%A0%E5%9B%9Bmysql-%E4%B8%AD%E5%A6%82%E4%BD%95%E6%9F%A5%E7%9C%8Bsql%E8%AF%AD%E5%8F%A5%E7%9A%84%E6%89%A7%E8%A1%8C%E8%AE%A1%E5%88%92%E5%8F%AF%E4%BB%A5%E7%9C%8B%E5%88%B0%E5%93%AA%E4%BA%9B%E4%BF%A1%E6%81%AF)
        - :white_check_mark: [练习五: 解释一下 SQL 数据库中 ACID 是指什么？（难度：中等）](https://github.com/datawhalechina/wonderful-sql/blob/main/ch06:%E5%86%B3%E8%83%9C%E7%A7%8B%E6%8B%9B.md#%E7%BB%83%E4%B9%A0%E4%BA%94%E8%A7%A3%E9%87%8A%E4%B8%80%E4%B8%8B-sql-%E6%95%B0%E6%8D%AE%E5%BA%93%E4%B8%AD-acid-%E6%98%AF%E6%8C%87%E4%BB%80%E4%B9%88)


    - Section C
    
        - :white_check_mark: [练习一: 行转列（难度：中等）](https://github.com/datawhalechina/wonderful-sql/blob/main/ch06:%E5%86%B3%E8%83%9C%E7%A7%8B%E6%8B%9B.md#%E7%BB%83%E4%B9%A0%E4%B8%80%E8%A1%8C%E8%BD%AC%E5%88%97-1)
        - :white_check_mark: [练习二: 列转行（难度：困难）](https://github.com/datawhalechina/wonderful-sql/blob/main/ch06:%E5%86%B3%E8%83%9C%E7%A7%8B%E6%8B%9B.md#%E7%BB%83%E4%B9%A0%E4%BA%8C%E5%88%97%E8%BD%AC%E8%A1%8C-1)
        - :white_check_mark: [练习三: 连续登录（难度：困难）](https://github.com/datawhalechina/wonderful-sql/blob/main/ch06:%E5%86%B3%E8%83%9C%E7%A7%8B%E6%8B%9B.md#%E7%BB%83%E4%B9%A0%E4%B8%89%E8%BF%9E%E7%BB%AD%E7%99%BB%E5%BD%95)
        - :white_check_mark: [练习四: 用户购买商品推荐（难度：困难）](https://github.com/datawhalechina/wonderful-sql/blob/main/ch06:%E5%86%B3%E8%83%9C%E7%A7%8B%E6%8B%9B.md#%E7%BB%83%E4%B9%A0%E5%9B%9B%E7%94%A8%E6%88%B7%E8%B4%AD%E4%B9%B0%E5%95%86%E5%93%81%E6%8E%A8%E8%8D%90)
        - :white_check_mark: [练习五: hive 数据倾斜的产生原因及优化策略（难度：困难）](https://github.com/datawhalechina/wonderful-sql/blob/main/ch06:%E5%86%B3%E8%83%9C%E7%A7%8B%E6%8B%9B.md#%E7%BB%83%E4%B9%A0%E4%B8%89%E8%BF%9E%E7%BB%AD%E7%99%BB%E5%BD%95)
        - :white_check_mark: [练习六: LEFT JOIN 是否可能会出现多出的行？为什么？](https://github.com/datawhalechina/wonderful-sql/blob/main/ch06:%E5%86%B3%E8%83%9C%E7%A7%8B%E6%8B%9B.md#%E7%BB%83%E4%B9%A0%E4%BA%94left-join-%E6%98%AF%E5%90%A6%E5%8F%AF%E8%83%BD%E4%BC%9A%E5%87%BA%E7%8E%B0%E5%A4%9A%E5%87%BA%E7%9A%84%E8%A1%8C%E4%B8%BA%E4%BB%80%E4%B9%88)
        - :white_check_mark: [附加题: 写一写本次学习的收获。](https://github.com/datawhalechina/wonderful-sql/blob/main/ch06:%E5%86%B3%E8%83%9C%E7%A7%8B%E6%8B%9B.md#%E5%86%99%E4%B8%80%E5%86%99%E6%9C%AC%E6%AC%A1%E5%AD%A6%E4%B9%A0%E7%9A%84%E6%94%B6%E8%8E%B7)
        
     - :white_check_mark: [参考答案链接](https://xz9235vqyp.feishu.cn/docs/doccnruf8gPtnAm9gbxKJRU0pZf)

## 常见问题

- **在线教程页面无法打开**: 

    测试中存在部分人打不开在线教程的情况。

    部分小伙伴反馈尝试切换浏览器后可以正常打开了，还可以参考 [提高国内访问 GitHub 的速度的 9 种方案](https://mp.weixin.qq.com/s/sHQ0yjqYNgEb1Bw_X0BxZg) 中介绍的方法尝试打开。
    
    如果仍然不行，最有效的解决办法是科学上网。

- **无法加载图片的解决办法**: 

    根本解决办法还是科学上网，也可以尝试修改host文件看下是否能解决。

    [windows解决方案：修改host文件](https://blog.csdn.net/u011583927/article/details/104384169)
    
    [备用链接：](https://gitee.com/datawhalechina/wonderful-sql)

## 致谢

感谢以下Datawhale成员对项目推进作出的贡献（排名不分先后）：

<table align="center" style="width:80%;">
  <caption><b>内容贡献者名单</b></caption>
<thead>
  <tr>
    <th>成员</th>
    <th>个人简介及贡献</th>
    <th>个人主页</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td><span style="font-weight:normal;font-style:normal;text-decoration:none">王复振</span></td>
    <td><span style="font-weight:normal;font-style:normal;text-decoration:none">河北科技大学，公众号：数据科学探究，Datawhale成员，项目负责人，Task00/01/03/05/06内容构建 </td>
    <td><a href="https://blog.csdn.net/mba1398">CSDN博客</a></td>
  </tr>
  <tr>
    <td><span style="font-weight:normal;font-style:normal;text-decoration:none">杨煜</span></td>
    <td><span style="font-weight:normal;font-style:normal;text-decoration:none">数据分析师，公众号：BI数据可视化，Datawhale成员，Task05/06内容构建</td>
    <td></td>
  </tr>
  <tr>
    <td><span style="font-weight:normal;font-style:normal;text-decoration:none">闫钟峰</span></td>
    <td><span style="font-weight:normal;font-style:normal;text-decoration:none">图书馆员，Datawhale成员，Task00/04内容构建</td>
    <td></td>
  </tr>
  <tr>
    <td><span style="font-weight:normal;font-style:normal;text-decoration:none">杨梦迪</span></td>
    <td><span style="font-weight:normal;font-style:normal;text-decoration:none">上海大学硕士，Datawhale成员，Task02内容构建</td>
    <td></td>
  </tr>
  <tr>
    <td><span style="font-weight:normal;font-style:normal;text-decoration:none">苏鹏</span></td>
    <td><span style="font-weight:normal;font-style:normal;text-decoration:none">东北大学硕士，Datawhale成员，Task00/01/03内容构建</td>
    <td><a href="https://github.com/SuperSupeng">Github</a></td>
  </tr>
  <tr>
    <td><span style="font-weight:normal;font-style:normal;text-decoration:none">红星</span></td>
    <td><span style="font-weight:normal;font-style:normal;text-decoration:none">广东工业大学，Datawhale成员，内测小组成员</td>
    <td></td>
  </tr>
  <tr>
    <td><span style="font-weight:normal;font-style:normal;text-decoration:none">张晋</span></td>
    <td><span style="font-weight:normal;font-style:normal;text-decoration:none">北京理工大学，Datawhale成员，内测小组成员</td>
    <td></td>
  </tr>
  <tr>
    <td><span style="font-weight:normal;font-style:normal;text-decoration:none">汪健麟</span></td>
    <td><span style="font-weight:normal;font-style:normal;text-decoration:none">电子科技大学硕士，Datawhale成员，内测小组成员</td>
    <td></td>
  </tr>
</tbody>
</table> 


## 关注我们

> "Datawhale是一个专注AI领域的开源组织，以“for the learner，和学习者一起成长”为愿景，构建对学习者最有价值的开源学习社区。关注我们，一起学习成长。"

<img src="./img/datawhale_code.jpeg" width="175" height= "200">
