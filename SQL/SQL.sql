#1、连接MYSQL数据库：
	-- mysql -h localhost -u root -p
#2、查看当前所有数据库：
	show databases;
#3、查看数据库的定义：
	show create database tablename \g;
#4、删除数据库：
	drop database database_name;
#5、查看系统支持的引擎类型：
	show engines \g;
#6、创建删除数据库：
	create database test3;
	create schema test3;
	drop database test3;
#7、创建表：
	CREATE TABLE `test2`.`person` (
	  `id` INT UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT 'ID',
	  `name` VARCHAR(45) GENERATED ALWAYS AS (CONCAT(id,'name')) STORED COMMENT '人名', 
	  PRIMARY KEY (`id`),
	  UNIQUE INDEX `id_UNIQUE` (`id` ASC))
	COMMENT = '人员表';
		-- GENERATED ALWAYS AS (CONCAT(id,'name'))：表示name这列的值等于表达式	CONCAT(id,'name')的值，STORED为保存到磁盘中，virtual为不保存
		-- COMMENT为列与表的描述信息。

#8、创建外键，可以为空：
	-- constraint fk_colourID foreign key (colourID) references test3.car(id);
#9、唯一约束unique，可以为空但只能有一个为空:
	-- constraint 约束名 unique(约束字段名)
#10、查看表结构：
	-- describe 表名;
    -- desc 表名;
	-- 查询结果key列代表是否已编制索引，pri代表为主键一部分；
    -- nui表示该列是unique索引的一部分；
    -- mul表示在列中某个给定值可以出现多次.
    describe test3.carcolour;
    
#11、查看表详细结构：
	-- show create table 表名\g;
    -- 如果不加“\g”参数，显示的结果可能非常混乱，加上后，更加直观，易于观看,在命令行中可以用，在workbench中不能用。
#12、查看当前mysql版本号：
	-- select version();
#13、查看当前用户的连接数：
	-- select connection_id();
#14、查看当前用户的连接信息，如果是root账号则能看到所有用户当前连接，如果不是，则只能看到自己的连接
	-- show processlist; --只列出前100条数据
    -- show full processlist; -- 列出所有数据
	-- 查询结果每列含义：
    -- Id列：用户登录MYSQL时，系统分配的“connection id”；
    -- User列：显示当前用户。
    -- Host列：显示这个语句是从哪个ip的哪个端口上发出的，可以用来追踪出现问题语句的用户。 
    -- db列：显示进程目前连接的是哪个数据库。 
    -- Command:显示当前连接执行的命令，一般取值为休眠（Sleep）、查询（Query）、连接（Connect）。
    -- Time列：显示这个状态持续的时间，单位是秒。
    -- State列：显示使用当前连接的SQL语句的状态。一个sql语句，以查询为例，可能需要经过Copying to tmp table，
    -- 		Sorting result，Sending data等状态才可以完成。 
    -- Info列：显示这个sql语句。
    
#查看当前使用的数据库：
	-- select database(),schema(); -- 这两个函数作用相同alter
#返回当前登录用户名及主机名：
	-- select user(),corrent_user(),system_user(); -- 一般情况下这几个函数相同
    








