show databases;

use classicmodels;

show tables;

select * from t1_emp;
select * from t2_emp;

select EmpName from t1_emp
intersect
select EmpName from t2_emp;

select EmpName from t1_emp
minus
select EmpName from t2_emp;

create table tbl_Student(
Id int auto_increment,
StudentName varchar(50) not null,
EmailID varchar(50) not null,
StudentPwd varchar(30) not null,
PhoneNumber bigint,
Age int not null,
DeptId int,
primary key(Id)
);

create table tbl_Student_Dept(
DeptId int auto_increment,
DeptName varchar(100) not null,
DeptLocation varchar(100) not null,
primary key(DeptId)
);

select * from tbl_Student;
select * from tbl_Student_Dept;

insert into tbl_Student(StudentName, EmailID,PhoneNumber,Age,DeptID) values ('Anil','anil@dhyanahita.org',9988776655,29,1),
('Harsha','harsha@dhyanahita.org',8877665544,30,2),('Ajay','ajay@dhyanahita.org',8877661122,20,1),
('Dinesh','dinesh@dhyanahita.org',8877662233,23,3);

insert into tbl_Student_Dept(DeptName,DeptLocation) values ('CSE','Hyd'),('ECE','Hyd'),('MECH','HYD'),('AERO','HYD');

select StudentName,PhoneNumber,Age,DeptName,DeptLocation from tbl_Student,tbl_Student_Dept where tbl_Student.DeptID = tbl_Student_Dept.DeptID;

select a.StudentName,a.PhoneNumber,a.Age,b.DeptName,b.DeptLocation from tbl_Student a, tbl_Student_Dept b where a.DeptId = b.DeptId;

select a.StudentName, a.PhoneNumber, a.Age, b.DeptName,b.DeptLocation from tbl_Student a, tbl_Student_Dept b where a.DeptId=b.DeptId and a.Age > 25;

select a.StudentName, a.PhoneNumber, a.Age, b.DeptName,b.DeptLocation from tbl_Student a, tbl_Student_Dept b where a.DeptId=b.DeptId and a.Age > 25 and b.DeptId =1 ;

select a.StudentName, a.PhoneNumber, a.Age, b.DeptName,b.DeptLocation from tbl_Student a, tbl_Student_Dept b where a.DeptId=b.DeptId and a.StudentName like 'a%' AND a.DeptId in (1);

select a.StudentName, a.PhoneNumber, a.Age, b.DeptName,b.DeptLocation from tbl_Student a, tbl_Student_Dept b where a.DeptId=b.DeptId and a.StudentName like 'a%' AND a.DeptId in (1,2,3,4);

show databases;

use classicmodels;

show tables;

describe orderdetails;
describe orders;

select * from customers;
select * from orders;

select a.customerName, a.phone, a.creditLimit, b.shippedDate, b.status from customers a, orders b where a.customerNumber=b.customerNumber;

select a.customerName, a.phone, a.creditLimit, b.shippedDate, b.status from customers a, orders b where a.customerNumber=b.customerNumber and b.status= 'Cancelled';







