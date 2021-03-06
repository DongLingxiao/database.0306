-- MySQL dump 10.13  Distrib 5.6.30, for Win32 (AMD64)
--
-- Host: localhost    Database: scott
-- ------------------------------------------------------
-- Server version	5.6.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT = @@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS = @@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION = @@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE = @@TIME_ZONE */;
/*!40103 SET TIME_ZONE = '+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS = @@UNIQUE_CHECKS, UNIQUE_CHECKS = 0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS = @@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS = 0 */;
/*!40101 SET @OLD_SQL_MODE = @@SQL_MODE, SQL_MODE = 'NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES = @@SQL_NOTES, SQL_NOTES = 0 */;

--
-- Current Database: `scott`
--
DROP DATABASE IF EXISTS `scott`;
CREATE DATABASE /*!32312 IF NOT EXISTS */ `scott` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `scott`;

--
-- Table structure for table `dept`
--

DROP TABLE IF EXISTS `dept`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dept` (
                      `DEPTNO` INT(2) NOT NULL,
                      `DNAME`  VARCHAR(14) DEFAULT NULL,
                      `LOC`    VARCHAR(13) DEFAULT NULL,
                      PRIMARY KEY (`DEPTNO`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dept`
--

LOCK TABLES `dept` WRITE;
/*!40000 ALTER TABLE `dept`
  DISABLE KEYS */;
INSERT INTO `dept` VALUES (10, 'ACCOUNTING', 'NEW YORK'), (20, 'RESEARCH', 'DALLAS'), (30, 'SALES', 'CHICAGO'),
                          (40, 'OPERATIONS', 'BOSTON');
/*!40000 ALTER TABLE `dept`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp`
--

DROP TABLE IF EXISTS `emp`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emp` (
                     `EMPNO`    INT(4) NOT NULL,
                     `ENAME`    VARCHAR(10)  DEFAULT NULL,
                     `JOB`      VARCHAR(9)   DEFAULT NULL,
                     `MGR`      INT(4)       DEFAULT NULL,
                     `HIREDATE` DATE         DEFAULT NULL,
                     `SAL`      DOUBLE(7, 2) DEFAULT NULL,
                     `COMM`     DOUBLE(7, 2) DEFAULT NULL,
                     `DEPTNO`   INT(2)       DEFAULT NULL,
                     PRIMARY KEY (`EMPNO`),
                     KEY `FK_emp_deptno` (`DEPTNO`),
                     CONSTRAINT `FK_emp_deptno` FOREIGN KEY (`DEPTNO`) REFERENCES `dept` (`DEPTNO`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp`
--

LOCK TABLES `emp` WRITE;
/*!40000 ALTER TABLE `emp`
  DISABLE KEYS */;
INSERT INTO `emp` VALUES (7499, 'ALLEN', 'SALESMAN', 7698, '1981-02-20', 1600.00, 300.00, 30),
                         (7521, 'WARD', 'SALESMAN', 7698, '1981-02-22', 1250.00, 500.00, 30),
                         (7566, 'JONES', 'MANAGER', 7839, '1981-04-02', 2975.00, NULL, 20),
                         (7654, 'MARTIN', 'SALESMAN', 7698, '1981-09-28', 1250.00, 1400.00, 30),
                         (7698, 'BLAKE', 'MANAGER', 7839, '1981-05-01', 2850.00, NULL, 30),
                         (7782, 'CLARK', 'MANAGER', 7839, '1981-06-09', 2450.00, NULL, 10),
                         (7788, 'SCOTT', 'ANALYST', 7566, '1987-07-13', 3000.00, NULL, 20),
                         (7839, 'KING', 'PRESIDENT', NULL, '1981-11-30', 5000.00, NULL, NULL),
                         (7844, 'TURNER', 'SALESMAN', 7698, '1981-09-08', 1500.00, 0.00, 30),
                         (7876, 'ADAMS', 'CLERK', 7788, '1987-07-13', 1100.00, NULL, 20),
                         (7900, 'JAMES', 'CLERK', 7698, '1981-12-03', 950.00, NULL, 30),
                         (7902, 'FORD', 'ANALYST', 7566, '1981-12-03', 3000.00, NULL, 20),
                         (7934, 'MILLER', 'CLERK', 7782, '1982-01-23', 1300.00, NULL, 10);
/*!40000 ALTER TABLE `emp`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salgrade`
--

DROP TABLE IF EXISTS `salgrade`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salgrade` (
                          `GRADE` INT(11) DEFAULT NULL,
                          `LOSAL` INT(11) DEFAULT NULL,
                          `HISAL` INT(11) DEFAULT NULL
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salgrade`
--

LOCK TABLES `salgrade` WRITE;
/*!40000 ALTER TABLE `salgrade`
  DISABLE KEYS */;
INSERT INTO `salgrade` VALUES (1, 700, 1200), (2, 1201, 1400), (3, 1401, 2000), (4, 2001, 3000), (5, 3001, 9999);
/*!40000 ALTER TABLE `salgrade`
  ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE = @OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE = @OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS = @OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS = @OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT = @OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS = @OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION = @OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES = @OLD_SQL_NOTES */;

-- Dump completed on 2016-07-20 11:10:57

# 1. 查找部门 30 中员工的详细信息
  select *from scott.emp
where DEPTNO=30;
# 2. 找出从事 clerk 工作的员工的编号、姓名、部门号
show tables from scott;
select *from scott.emp;
  select EMPNO,ENAME,DEPTNO from scott.emp
where JOB='CLERK';
# 3. 检索出奖金多于基本工资的员工信息
select ENAME from emp
where COMM>SAL;
# 4. 检索出奖金多于基本工资 30% 员工信息
  select ENAME from emp
where COMM>SAL*0.3;
# 5. 希望看到 10 部门的经理或者 20 部门的职员 clerk 的信息
select *
from emp where (DEPTNO=10 and JOB='MANAGER')or(DEPTNO=20 and JOB='CLERK');

# 6. 找出 10 部门的经理、20 部门的职员或者既不是经理也不是职员但是高于 2000 元的员工信息
select *
from emp where (DEPTNO=10 and JOB='MANAGER')OR (DEPTNO=20 AND JOB='CLERK')OR (JOB NOT IN ('MANAGER','CLERK')AND SAL>2000);
-- 一下是查找工资从2000到3000的 between and 的写法
#select *
#from emp where SAL between 2000 and 3000;
# 7. 找出获得奖金的员工的工作
select DISTINCT JOB
from emp where COMM is not null;
#select*
#from emp where (COMM is not null)and (COMM>0);
# 8. 找出奖金少于 100 或者没有获得奖金的员工的信息
select *
from emp where (COMM<100)or (COMM is null);

# 9. 查找员工雇佣日期是当月的最后一天的员工信息
# 10. 检索出雇佣年限超过 35 年的员工信息

# 11. 找出姓名以 A、B、S 开始的员工信息
select *
from emp
where ENAME like 'A%'or ENAME like 'B%'or ENAME like 's%';
# 12. 找到名字长度为 4 个字符的员工信息
select *
from emp
where ENAME like '____';
# 13. 名字中不包含 R 字符的员工信息
select *
from emp
where ENAME not like '%R%';
# 14. 找出员工名字的前3个字符
select ENAME
from emp;
# 15. 将名字中 A 改为 a
  update emp
           set ENAME='a'where ENAME='A';
select *
from emp;
# 16. 将员工的雇佣日期拖后 10 年
# 17. 返回员工的详细信息并按姓名排序




# 18. 返回员工的信息并按员工的工作年限降序排列
select *
from emp order by HIREDATE desc ;
# 19. 返回员工的信息并按工作降序、工资升序排列
select *
from emp order by JOB desc,SAL;
# 20. 返回员工的姓名、雇佣年份和月份，并按月份和雇佣日期排序
# 21. 计算员工的日薪，每月按 30 天
# 22. 找出 2 月份雇佣的员工
# 23. 至今为止，员工被雇佣的天数
# 24. 找出姓名中包含 A 的员工信息
select *
from emp
where ENAME like 'A%';
# 25. 计算出员工被雇佣了多少年、多少月、多少日
#26.查出并计算员工基本工资加奖金 一共收入
select ENAME,SAL+ifnull(COMM,0)
from emp;

#显示由键链接的员工和职位的两个表
select e.ENAME, e.DEPTNO, d.DNAME, d.DEPTNO
from emp e
       inner join dept d on e.DEPTNO = d.DEPTNO;
-- 以上落选的表中信息显示   将inner改为right 或left （对于关键字右边或左边的文件落选的信息显示）
select e.ENAME, e.DEPTNO, d.DNAME, d.DEPTNO
from emp e
       right join dept d on e.DEPTNO = d.DEPTNO
union

select e.ENAME, e.DEPTNO, d.DNAME, d.DEPTNO
from emp e
       left join dept d on e.DEPTNO = d.DEPTNO;
--  以上显示的是将两个表中落选的信息都显示出来 其中用 union 链接。

create or replace view scott.v_name
as
  select e.EMPNO,e.ENAME,e.DNAME
from scott.emp e
inner join scott.dept d
on e.DEPTNO = d.DEPTNO;

select *
from scott.v_name
where ENAME='allen';
