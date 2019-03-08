-- SQL命令式
show databases ;
drop table db_school.student;
create database db_school;
show tables from db_school;

-- 为学生表追加外部约束
drop table db_school.student;
create table db_school.student
(
  id  int auto_increment primary key comment 'id pk',
  #sno varchar(255)unique comment '学号',
  name varchar(20)not null comment '学生姓名',
  age  int(2) comment '年龄',
  height double (3,2)comment '身高',
 dob date comment '出身年月日'
  comment'院系'

)comment '学生表';
select *from db_school.student;
insert into db_school.student value (null,'Tom',19,1.75,'2000-01-23'1);
insert into db_school.student value (null,'Race',20,1.55,'1999-01-23'2);
insert into db_school.student value (null,'Jake',21,1.85,'1998-01-23'3);
show full columns from db_school.student;
-- 以上为学生表
drop table db_school.course;
create table db_school.course(
  name varchar(10)comment '课程名称',
  time varchar(255)comment '上课时间',
  money decimal(5,2)comment'课程价格'

)comment '课程表';
select *from db_school.course;
insert into db_school.course value ('Java','周一',5.2);
insert into db_school.course value ('Json','周二',4.2);
insert into db_school.course value ('嵌入式','周三',6.2);

show full columns from db_school.course;
-- 以上建立课程表
drop table db_school.sc;
desc db_school.sc;
create table db_school.sc(
   name varchar(20) comment '学生姓名',
   cname varchar(10)comment '课程名称',
   time varchar(255)comment '上课时间',
   money decimal(5,2)comment'课程价格'

)comment '学生选的课表';

insert into db_school.sc value ('Tom','Java','周一',5.2);
insert into db_school.sc value ('Race','嵌入式','周二',4.2);
insert into db_school.sc value ('Jake','Json','周三',6.2);

select *
from db_school.sc;

show full columns from db_school.sc;
-- 以上是学生选课表

update db_school.student
set

delete from db_school.student;
drop table db_school.student;
drop table db_school.course;
drop table db_school.sc;
drop database db_school;

