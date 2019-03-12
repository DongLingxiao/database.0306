drop database if exists db_a;
create database db_a;

drop table if exists db_a.user;
create table db_a.user
(
  id       int auto_increment primary key comment 'id pk',
  username varchar(255) not null comment 'username NN',
  password varchar(255) not null comment 'password NN',
  role     int(1)       not null default 0 comment 'role 0-student 1-admin NN'
) comment '用户表';

drop table if exists db_a.activity;
create table db_a.activity
(
  id    int auto_increment primary key comment 'id pk',
  title varchar(255) not null comment 'activity title NN'

) comment '活动表';


drop table if exists db_a.enroll;
create table db_a.enroll
(
  id         int auto_increment primary key comment 'id pk',
  time       datetime not null default now() comment 'enroll time NN',
  userID     int      not null comment 'user id FK',
  activityID int      not null comment 'activity id FK'
) comment '报名表';


alter table db_a.enroll
  add constraint
    enroll_fk_userID
    foreign key (userID)
      references db_a.user (id);

alter table db_a.enroll
  add constraint
    enroll_fk_activityID
    foreign key (activityID)
      references db_a.activity (id);


-- add admin
insert into db_a.user value (null, 'admin', md5('123'), 1);


-- admin sign in 'xxx', 'yyy'

select *
from db_a.user
where username = 'admin'
  and password = md5('123');

-- create

insert into db_a.activity value (null, '植物园一日游');
insert into db_a.activity value (null, '动物园一日游');
select *
from db_a.activity;

-- delete
delete
from db_a.activity
where id = 1;

 delete from db_a.activity;-- id值持续增加


 set foreign_key_checks = 0;-- 这三个为一组
 set foreign_key_checks = 1;
 truncate db_a.activity;  -- id重新开始 rollback 不能用了

-- update
update db_a.activity
set title= '动漫园一日游'
where id = 1;

-- retrieve
select *
from db_a.activity;

-- student sign up
insert into db_a.user(username, password) value ('Tom', md5('abc'));
insert into db_a.user(username, password) value ('Jerry', md5('def'));
insert into db_a.user(username, password) value ('Tester', md5('ghi'));
select *
from db_a.user;
-- student sign in 'xxx', 'yyy'
select *
from db_a.user
where username = 'jerry'
  and password = md5('def');

-- student enroll

insert into db_a.enroll(id, userID, activityID) value (null, 2, 1);
insert into db_a.enroll(id, userID, activityID) value (null, 4, 2);
select *
from db_a.enroll;
-- admin sign in retrieve
select u.username, a.title
from db_a.user u
       inner join db_a.enroll e
                  on u.id = e.userID
       inner join db_a.activity a
                  on e.activityID = a.id;

select u.username, a.title
from db_a.user u
       inner join db_a.enroll e
                  on u.id = e.userID
       inner join db_a.activity a
                  on e.activityID = a.id
where a.id = 1;

select *
from db_a.user;

select *
from db_a.activity;

select *
from db_a.enroll;






