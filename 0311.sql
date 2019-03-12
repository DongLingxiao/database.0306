create table scott.new_emp
select *
from scott.emp;

select *
from scott.new_emp;

delete
from scott.new_emp;


insert into scott.new_emp
(empno, ename, deptno)
select EMPNO,ENAME,DEPTNO
from scott.emp;

create or replace view scott.v_emp
as
  select ENAME,JOB,DEPTNO
from scott.emp
where DEPTNO=30;

select *
from v_emp;

select ENAME,DNAME
from scott.emp e
 inner join scott.dept d
on e.DEPTNO = d.DEPTNO
where ENAME='allen';

create or replace view scott.v_name
as
  select  e.EMPNO,e.ENAME,d.DNAME
from scott.emp e
inner join scott.dept d
on e.DEPTNO = d.DEPTNO;
select *
from v_name
where ENAME='allen';


start transaction

delete
from scott.emp
where ENAME='allen';

select *
from scott.emp;

rollback ;
commit ;