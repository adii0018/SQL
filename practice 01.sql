show databases;
select * from STUDENT;
create database ASR;
use asr;

/*TABLE BANAYI HEE YAHA PE*/

create table STUDENT(
studentId int primary key,
name varchar(50) not null,
Email varchar(100) unique,
age int
);

/*TABEL ME DATA INSERT KIYA HE*/
 
INSERT INTO STUDENT
VALUES
(1,'Aditya','adii@gmail.com',22),
(2,'Rahul','rahul@gmail.com',21),
(3,'khusahl','khusahal@gmail.com',18);

 /* column add kiya he or modify kiya he */
alter table STUDENT
add column city varchar(50);

alter table student 
add column phone int;

alter  table student 
modify column phone varchar(10);

/*column banaya or or deleit kiya */
alter table student 
add column try int ;
alter table student 
drop column try ;

alter table student 
add column try int ;
alter table student 
drop column try ;