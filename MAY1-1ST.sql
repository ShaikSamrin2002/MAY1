select * from sam;
select * from student;
create table test(student_id int primary key,student_name varchar(30),student_contact int,student_dept varchar(25));
select * from test;
insert into test select * from student;

truncate table test; -- Delete data not table structure
select * from student;

delete from student where student_name="rin"; -- delete entire row
select * from student;

drop table test; -- delete the table

alter table student rename column student_name to name;

alter table student rename to RGM_STUDENT;
select * from rgm_student;

create database ZAIBU;
show databases;
drop database zaibu; -- to drop the database

alter table rgm_student add address varchar(30);
select * from rgm_student;

update rgm_student set address='hyd' where student_id=200; -- add data to new column
select * from rgm_student;

alter table rgm_student modify column address varchar(40); -- alter column size

alter table rgm_student drop column address;

select * from rgm; 

alter table rgm drop column RGM_COLLEGE , DROP COLUMN RGM_CONTACT ;
alter table rgm drop column RGM_SESION;

delete from rgm;

SELECT MIN(MARKS) FROM SONY;
SELECT * FROM SONY;
SELECT MAX(MARKS) FROM SONY;
SELECT AVG(MARKS) FROM SONY;
SELECT SUM(MARKS) FROM SONY;
SELECT SUM(MARKS) AS TOTAL FROM SONY;
SELECT count(MARKS) FROM SONY;


CREATE DATABASE  EXERCISE;
CREATE TABLE CUSTOMER (ID INT PRIMARY KEY, NAME VARCHAR(20),CITY VARCHAR(30),GRADE INT,SALESMAN_ID INT);
