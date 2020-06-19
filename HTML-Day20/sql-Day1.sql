create database Full_Stack;
show databases;
use Full_Stack;

create table tbl_Student( 
studentId int,
studentName varchar(100),
studentPwd varchar(20),
emailID varchar(100),
mobileNumber bigint
);

describe tbl_Student;

insert into tbl_Student(studentId, studentName, studentPwd, emailID, mobileNumber) values 
(1,'Reshma','reshma123', 'reshma@gamil.com', 9873569286)

select * from tbl_Student;

select studentName, studentPwd from tbl_Student;
select studentName, studentPwd, emailID from tbl_Student;


create table tbl_Emp(
Id int auto_increment,
empName varchar(100) not null,
empAddress varchar(100) not null,
emailID varchar(50) not null,
mobileNumber bigint unique,
primary key(Id)
);

insert into tbl_Emp(empName,empAddress,emailID,mobileNumber) values('Reshma','Hyd','reshmatejasvi1003@gmail.com',9988776655);

insert into tbl_Emp(empName,empAddress,emailID,mobileNumber) values('Aruna','hud','aruna@gmail.com',9988776633),
('Ajay','hyd','ajay@gmail.com',8877661122),('Cherry','hyd','cherry@gmail.com',9988776622);

select * from tbl_Emp;

delete from tbl_Emp where Id = 1;

update tbl_Emp set
empName = 'Reshma Tejasvi'
where Id = 1

select * from tbl_Emp;

select * from tbl_Emp
order by empName;

select * from tbl_Emp
order by empName desc;

show tables;

use classicmodels;

show tables;

describe customers;

select * from customers;
