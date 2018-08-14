#建表：
create table test3.car (
	id int auto_increment comment '车的ID',
    carname varchar(25) not null comment '车名',
    primary key (id),
    unique index carname_idex (carname asc)
)   comment = '车表';

insert into test3.car (carname) values('红色');

select * from test3.car;

create table carcolour (
	colourID int comment '车颜色表',
    colourName varchar(25) comment '车颜色',
    constraint pk_colourID primary key (colourID), -- 给主键取名字没有用
    constraint fk_colourID foreign key (colourID) references test3.car(id)
);

show create table test3.carcolour;

select version();

select * from test1.order