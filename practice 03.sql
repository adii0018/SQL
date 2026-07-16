use asr;
select * from course;
create table course(
courseID int primary key ,
coursename varchar(50) ,
studentID int,
foreign key (studentID ) references student(studentID)

);
insert into course 
values(1,'DBMS',1);