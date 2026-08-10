-- =========================================
-- JOB PORTAL DATABASE
-- =========================================

create database Job_protel;
use job_protel;

-- =========================================
-- USERS TABLE
-- =========================================

create table user(
user_id int primary key auto_increment,
name varchar(50) not null,
email varchar(100) unique not null,
age int);

-- =========================================
-- COMPANIES TABLE
-- =========================================

create table companies(
company_id int primary key auto_increment ,
company_name varchar(50) not null,
location varchar(100),
insdustry varchar(50));

alter table companies
rename column comapany_name to company_name;

select * from companies;
-- =========================================
-- JOBS TABLE
-- =========================================

create table jobs(
job_id int primary key auto_increment,
company_id int not null ,
job_title  varchar(60) not null,
sallery int ,
job_type varchar(80),
foreign key (companey_id) references companies(companey_id)
 );
 
