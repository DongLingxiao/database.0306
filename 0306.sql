-- SQL命令式
show databases ;
drop table db_school.student;
create database db_school;
show tables from db_school;

-- 为学生表追加外部约束


-- 以上为学生表
drop table db_school.course;
create table db_school.course(
  id int auto_increment primary key ,
  name varchar(10)comment '课程名称',
  time varchar(255)comment '上课时间',
  money decimal(5,2)comment'课程价格'

)comment '课程表';
select *from db_school.course;
insert into db_school.course value (100,'Java','周一',5.2);
insert into db_school.course value (null,'Json','周二',4.2);
insert into db_school.course value (null,'嵌入式','周三',6.2);

show full columns from db_school.course;
-- 以上建立课程表
drop table db_school.sc;
desc db_school.sc;
create table db_school.sc(
  id int auto_increment primary key ,
   name varchar(20) comment '学生姓名',
  stuID int(10)comment '课程ID'
)comment '学生选的课表';

insert into db_school.sc value (null,'Tom',101);
insert into db_school.sc value (null,'Race',100);
insert into db_school.sc value (null,'Jake',102);

select *
from db_school.sc;

show full columns from db_school.sc;
-- 以上是学生选课表
alter table db_school.sc
add constraint
sc_fk_stuID
foreign key (stuID)
references db_school.course
  (id);
select *
from db_school.sc s
inner join db_school.course c
  on s.stuID=c.id;

update db_school.student
set

drop table db_school.student;
drop table db_school.course;
drop table db_school.sc;
drop database db_school;

