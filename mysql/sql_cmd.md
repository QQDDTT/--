# 创建数据库

```sql
CREATE DATABASE [IF NOT EXISTS] database_name
  [CHARACTER SET charset_name]
  [COLLATE collation_name];
```

```sql
CREATE DATABASE mydatabase
  CHARACTER SET utf8mb4
  COLLATE utf8mb4_general_ci;
```

```sql
CREATE DATABASE IF NOT EXISTS mydatabase;
```

# 选择数据库

```sql
USE database_name;
mysql -u your_username -p -D your_database
```

# 删除数据库

```sql
DROP DATABASE [IF EXISTS] <database_name>;
```

# 布尔类型

 - BOOLEAN     True / False

# 数据类型

|类型 	         | 大小 	            | 范围（有符号） 	                              | 范围（无符号） 	                    | 用途    |
| ------------- | ------------------ | ------------------------------------------- | ---------------------------------- | ---- |
| TINYINT 	    | 1 Bytes 	         | (-128，127) 	                             | (0，255) 	                         | 小整数值   |
| SMALLINT 	    | 2 Bytes 	         | (-32768，32767) 	                         | (0，65535) 	                       | 大整数值   |
| MEDIUMINT 	  | 3 Bytes 	         |  (-8388608，8388607) 	                     | (0，16777215) 	                   | 大整数值   |
| INT / INTEGER | 4 Bytes 	         | (-2147483648，2147483647)                  | (0，4294967295)                   |	大整数值   |
| BIGINT     	  | 8 Bytes 	         | (-9223372036854775808，9223372036854775807) | (0，18446744073709551615) 	       | 极大整数值   |
| FLOAT 	      | 4 Bytes 	         |                                             |                                  | 单精度浮点数值 |
| DOUBLE 	      | 8 Bytes 	         |                                              |                                 | 双精度浮点数值 |
| DECIMAL       | DECIMAL(M,D)，如果M>D，为M+2否则为D+2        | 依赖于M和D的值 	        |      依赖于M和D的值 	        |         小数值 |
               	

# 日期和时间类型

| 类型  	  | 大小(bytes)   | 范围 	                                          | 格式 	              | 用途             |
| -------- | ------------- | ------------------------------------------- | ----------------- | ---------------- |
| DATE 	   | 3 	           | 1000-01-01/9999-12-31 	                      | YYYY-MM-DD 	       | 日期值     |
| TIME 	   | 3 	           | '-838:59:59'/'838:59:59' 	                 | HH:MM:SS 	         | 时间值或持续时间 |
| YEAR 	   | 1 	           | 1901/2155 	                                      | YYYY 	             | 年份值   |
| DATETIME  | 8 	         | '1000-01-01 00:00:00' ~ '9999-12-31 23:59:59'   | YYYY-MM-DD hh:mm:ss |	混合日期和时间值 |
| TIMESTAMP | 4 	         |                                                  | YYYY-MM-DD hh:mm:ss | 混合日期和时间值，时间戳 |

# 字符串类型

| 类型     | 大小 	           | 用途                       |
| --------| ---------------- | -------------------------- |
| CHAR 	   | 0-255 bytes 	    | 定长字符串                  |
| VARCHAR | 0-65535 bytes 	  | 变长字符串                  |
| TINYBLOB | 0-255 bytes 	    | 不超过 255 个字符的二进制字符串 |
| TINYTEXT | 0-255 bytes 	    | 短文本字符串                 |
| BLOB 	   | 0-65535 bytes 	  | 二进制形式的长文本数据         |
| TEXT 	   | 0-65535 bytes 	  | 长文本数据                    |
| MEDIUMBLOB | 0-16777215 bytes | 二进制形式的中等长度文本数据 |
| MEDIUMTEXT | 0-16777215 bytes |	中等长度文本数据           |
| LONGBLOB | 0-4294967295 bytes | 二进制形式的极大文本数据 |
| LONGTEXT | 0-4294967295 bytes |	极大文本数据 |

# 枚举与集合类型（Enumeration and Set Types）

 - ENUM: 枚举类型，用于存储单一值，可以选择一个预定义的集合。
 - SET: 集合类型，用于存储多个值，可以选择多个预定义的集合。

# 空间数据类型（Spatial Data Types）

 - GEOMETRY, POINT, LINESTRING, POLYGON, MULTIPOINT, MULTILINESTRING, MULTIPOLYGON, GEOMETRYCOLLECTION: 用于存储空间数据（地理信息、几何图形等）。


# 创建数据表

```sql
CREATE TABLE table_name (
    column1 datatype,
    column2 datatype,
    ...
);
```

```sql
CREATE TABLE table_name (
    column1 INT AUTO_INCREMENT PRIMARY KEY,
    column2 VARCHAR(50) NOT NULL,
    column3 VARCHAR(100) NOT NULL,
    column4 DATE,
    column5 BOOLEAN DEFAULT TRUE
);
```

# 删除数据表

```sql
DROP TABLE [IF EXISTS] table_name;
```

# 插入数据
```sql
INSERT INTO table_name (column1, column2, column3, ...)
VALUES (value1, value2, value3, ...),
    (value1, value2, value3, ...),
    (value1, value2, value3, ...),
    (value1, value2, value3, ...);
```

```sql
INSERT INTO table_name (
    column1 = value1,
    column2 = value2,
    ...
);
```

# 查询数据

```sql
SELECT column1, column2, ...
FROM table_name
[WHERE condition]
[ORDER BY column_name [ASC | DESC]]
[LIMIT number];
```