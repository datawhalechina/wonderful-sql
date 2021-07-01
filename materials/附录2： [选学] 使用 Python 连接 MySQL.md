# 4.使用 Python 连接 MySQL

Python是最近几年最热门的编程语言,特别是在数据科学和机器学习领域,Python已经成为了主流的编程语言.和其他如JAVA,C++等通用编程语言一样, Python也能够连接MySQL执行查询,并将结果从数据库中取回,以供Python程序使用。

以下我们假设大家已经安装了anaconda套装(推荐,如尚未安装anaconda可参考[https://zhuanlan.zhihu.com/p/75717350](https://zhuanlan.zhihu.com/p/75717350?fileGuid=CzxMOL7JZicLAS3Q))或者自行安装配置好了Python环境加Jupyternotebook,接下来介绍在Jupyter notebook 中使用Python3的PyMySQL模块连接MySQL并执行SQL查询和取回查询结果的方法。

#### 4.1 安装 PyMySQL 模块

首先安装PyMySQL模块,这里选择直接在jupyternotebook中进行安装.

```python
# 安装 pymsql 模块
!pip install pymysql
```
安装完成后, 会有如下的输出,表示已成功安装该模块.
![图片](https://uploader.shimo.im/f/fDmDoys19eYZi4Ja.png!thumbnail?fileGuid=CzxMOL7JZicLAS3Q)

#### 4.2 导入模块

现在我们就可以导入 PyMySQL 模块,然后建立到 MySQL的连接了.如果下述代码执行后没有任何输出,则是正常导入了该模块。

```python
# 导入 pymysql 模块
import pymysql
```
#### 4.3 使用PyMySQL的connect函数建立到MySQL的连接

导入PyMySQL 模块后, 我们使用该模块中的connect函数建立到本机MySQL服务的连接:

```python
# 连接MySQL.密码请使用你自己设置的密码,shop为上一节导入的示例数据库
conn = pymysql.connect(host="127.0.0.1", user="root",password="123456",database="shop",charset="utf8")
```
>注:
>pymysql.connect()有很多的参数,但是上述最基本的参数就能保证连接正常,并且能使得中文字符正确显示.
>关于该函数更多的参数介绍
```python
host=None,# 要连接的主机地址, 本机上的 MySQL 使用 127.0.0.1
user=None,# 用于登录的数据库用户名, 例如 root.
password='',# 上述账号的相应密码
database=None,# 要连接的数据库,本教程使用的是来源于<SQL 基础教程>的 shop 数据库
port=0,# 端口，一般为 3306
unix_socket=None,# 选择是否要用 unix_socket 而不是 TCP/IP
charset='',# 字符编码, 需要支持中文请使用"utf8"
sql_mode=None,# Default SQL_MODE to use.
read_default_file=None,# 从默认配置文件(my.ini 或 my.cnf)中读取参数
conv=None,# 转换字典
use_unicode=None,# 是否使用 unicode 编码
client_flag=0,# Custom flags to send to MySQL. Find potential values in constants.CLIENT.
cursorclass=,# 选择 Cursor 类型
init_command=None,# 连接建立时运行的初始语句
connect_timeout=10,# 连接超时时间，(default: 10, min: 1, max: 31536000)
ssl=None,# A dict of arguments similar to mysql_ssl_set()'s parameters.For now the capath and cipher arguments are not supported.
read_default_group=None,# Group to read from in the configuration file.
compress=None,# 不支持
named_pipe=None,# 不支持
no_delay=None,#
autocommit=False,# 是否自动提交事务
db=None,# 同 database，为了兼容 MySQLdb
passwd=None,# 同 password，为了兼容 MySQLdb
local_infile=False,# 是否允许载入本地文件
max_allowed_packet=16777216,# 限制 `LOCAL DATA INFILE` 大小
defer_connect=False,# Don't explicitly connect on contruction - wait for connect call.
auth_plugin_map={},#
read_timeout=None,#
write_timeout=None,
bind_address=None# 当客户有多个网络接口，指定一个连接到主机
```
#### 4.4 创建用于执行SQL语句的游标对象

对上述建立的连接,使用cursor 方法得到一个游标对象:

```
# 得到一个可以执行 SQL 语句的游标对象
cur = conn.cursor()
```
本教程主要是讲解SQL查询语句, 因此这里以一个读取 MySQL 数据库的表中数据的SQL查询为例. 首先定义一个 SQL 查询语句, 以取回 product 表所有数据为例:

```python
# 定义要执行的 SQL 语句
sql = """
SELECT *
  FROM product;
"""
```
#### 4.5 执行SQL语句

然后使用游标对象的excute方法在MySQL数据库里执行上述SQL查询:

```python
# 执行 SQL 语句
cur.execute(sql)
```
#### 4.6 取回SQL语句的执行结果

完成SQL语句后, 由于我们上述定义的SQL语句是一个SQL查询, 因此可以接着使用游标对象的 fetchall 方法取回查询结果:

```python
# 取回查询结果 
# 如果需要将取回的结果赋值给一个变量, 可以使用 data = cur.fetchall()
cur.fetchall()
```
取回的结果是一个嵌套的元组, 且没有数据表中的列名. 上述代码正确执行后得到如下结果:
![图片](https://uploader.shimo.im/f/vw4N03QEZtmath8t.png!thumbnail?fileGuid=CzxMOL7JZicLAS3Q)

#### 4.7 使用pandas的read_sql函数执行SQL查询并取回结果为DataFrame

如果我们想要同时取回列名, 并且想让取回的数据具有更好的结构化, 则可以使用 pandas 库的 read_sql 函数来读取检索结果:

```python
# 另一种执行SQL查询并取回检索结果的方法是使用 pandas 库读取检索结果
# 如未安装pandas可在notebook里使用"!pip install pandas"进行安装
import pandas as pd
pd.read_sql(sql,conn)
# 如果需要将取回的结果赋值给一个变量, 可以使用 df = pd.read_sql(sql,conn)
```
此时取回的结果就是一个 pandas 中的 DataFrame 对象了, 它在jupyter notebook中看起来就是一张表格。
![图片](https://uploader.shimo.im/f/pCcAkhG9B75q49R8.png!thumbnail?fileGuid=CzxMOL7JZicLAS3Q)

>注:
>在使用pandas的read_sql函数时, 只需要建立Python到MySQL的连接就可以了, 不需要建立游标.
>关于该函数的更多参数介绍:
```python
# read_sql函数各参数的意义:
sql # 必备参数, SQL命令字符串
con  # 连接sql数据库的engine，我们这里使用pymysql的connect函数建立
index_col=None # 选择某一列作为pandas对象的index
coerce_float=True # 将数字形式的字符串直接以float型读入
parse_dates=None # 将数据表中datetime类型的列读取为datetime型数据，与pd.to_datetime 功能类似. 可直接提供需要转换的列名然后以默认的日期形式转换, 也可以用字典的格式提供列名和转换的日期格式，比如{列名A: 时间日期格式1, 列名B: 时间日期格式2}, 其中的时间日期格式需要是合法的格式, 例如:"%Y:%m:%H:%M:%S".
columns # 要读取的列,基本不会用到, 因为我们在sql命令里面就可以指定需要取回的列.
chunksize  # 对于取回大批量数据时有用. 如果提供了一个整数值，那么就会返回一个generator，每次输出的行数就等于你指定的该参数的值.
```
#### 4.8 关闭游标和数据库连接

最后, 在完成数据检索和取回数据后, 需要手动关闭数据库连接。

首先关闭游标对象:

```python
# 关闭游标对象
cur.close()
```
然后关闭数据库连接
```python
# 关闭数据库连接
conn.close()
```
#### 4.9 使用函数封装数据库连接

上述流程就是使用PyMySQL连接到本机的MySQL数据库的完整过程了。

为了便于复用上述代码, 我们可以把上述流程封装为一个函数, 函数的参数为SQL查询语句:

```python
# 封装为函数
def conn2mysql(sql):
    """
    函数的参数为一个字符串类型的 SQL 语句
    返回值为一个 DataFrame 对象
    """
    from pandas import read_sql
    from pymysql import connect
    # 连接本机上的MySQL服务器中的shop数据库
    conn = connect(host="127.0.0.1", user="root",password="123456",database="shop",charset="utf8")
    # 使用 pandas 的 read_sql 函数执行 SQL 语句并取回检索结果
    df=read_sql(sql,conn)
    # 关闭数据库连接
    conn.close()
    return df
```
使用上述函数执行 sql
```python
# 定义要执行的 SQL 查询
sql = """
SELECT *
FROM product;
"""
# 执行 sql 查询并取回查询结果
df = conn2mysql(sql)
# 查看取回的结果
df
```
![图片](https://uploader.shimo.im/f/FGvJLOWVp46GWF9T.png!thumbnail?fileGuid=CzxMOL7JZicLAS3Q)

将数据库中的查询取回为pandas对象后, 就可以在Python中使用各种工具进行进一步的处理了。

