drop database if exists db_ip;
create database db_ip;

drop table if exists db_ip.ip;
create table db_ip.ip(

  id int auto_increment primary key comment 'id主键',
  min varchar(255)not null comment '最小ip',
  max varchar(255)not null comment '最大ip',
  loc varchar(255)not null comment '地址'
)comment 'ip地址表';

load data local infile 'D:/ip.txt'
into table db_ip.ip
fields terminated by '|'
  (min,max,loc)
set id=null;
select *
from db_ip.ip;

update db_ip.ip
set min=trim(min),max=trim(max),loc=trim(loc);

