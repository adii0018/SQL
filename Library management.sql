show databases;

select * from student;
select * from books;
select * from IssueBook;
create database library;
use library;

/* Student table */

create table student(
studentid int primary key ,
name varchar(50) not null,
Email varchar(50) unique
);

/* Data fillup*/

insert into student(studentid,name,Email)
values
(01, 'Aditya', 'adii@gmail.com'),
(02, 'Rahul', 'rahul123@gmail.com'),
(03, 'Sneha', 'sneha.k@outlook.com'),
(04, 'Amit', 'amit_verma@yahoo.com'),
(05, 'Priya', 'priya.sharma@gmail.com'),
(06, 'Rohan', 'rohan.mehta@protonmail.com'),
(07, 'Neha', 'neha_singh@hotmail.com'),
(08, 'Vikas', 'vikas.kumar@gmail.com'),
(09, 'Anjali', 'anjali.patel@outlook.com'),
(10, 'Saurabh', 'saurabh.tiwari@gmail.com');

/*Books table */

create table Books(
bookid int primary key ,
BookName varchar(50) not null ,
author varchar(20) not null
);

/* data fillup */
insert into books
values
(1, 'The Alchemist', 'Paulo Coelho'),
(2, 'Wings of Fire', 'A.P.J. Abdul Kalam'),
(3, '1984', 'George Orwell'),
(4, 'To Kill a Mockingbird', 'Harper Lee'),
(5, 'Rich Dad Poor Dad', 'Robert Kiyosaki'),
(6, 'The Great Gatsby', 'F. Scott Fitzgerald'),
(7, 'Harry Potter', 'J.K. Rowling'),
(8, 'The Power of Habit', 'Charles Duhigg'),
(9, 'Sapiens', 'Yuval Noah Harari'),
(10, 'Ikigai', 'Héctor García');


/* IssueBook table */
create table IssueBook(
IssueID int primary key ,
StudentID  int ,
BookID int ,
IssueDate date default(current_date),
ReturnDate date default null,
foreign key (StudentID) references student(StudentID),
foreign key (BookID) references books(BookID)
);
INSERT INTO IssueBook (IssueID, StudentID, BookID, IssueDate, ReturnDate) VALUES
(1, 1, 2, '2026-07-01', '2026-07-10'),
(2, 3, 5, '2026-07-02', NULL),
(3, 4, 1, '2026-07-03', '2026-07-12'),
(4, 2, 7, '2026-07-04', NULL),
(5, 6, 3, '2026-07-05', '2026-07-15'),
(6, 8, 9, '2026-07-06', NULL),
(7, 5, 4, '2026-07-07', '2026-07-14'),
(8, 7, 6, '2026-07-08', NULL),
(9, 9, 10, '2026-07-09', '2026-07-20'),
(10, 10, 8, '2026-07-10', NULL);
