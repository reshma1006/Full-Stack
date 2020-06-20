show databases;

use classicmodels;

show tables;

describe customers;

select * from customers;

select * from customers where country = 'USA';

select * from customers where creditLimit >= 50000;

select * from customers where creditlimit between 50000 and 100000;

select * from customers where country = 'USA' or country = 'Germany';

select * from customers where country in ('USA','Germany');

select lastname from employees order by lastname;

select distinct lastanme from employees order by lastname;

select * from customers;

select distinct country from customers order by country;


select distinct state from customers order by state;


select distinct city from customers order by city;

select * from customers where state is null;

select * from customers where state is not null;

select state from customers group by state;

select distinct state from customers;

select * from customers;

select customername as Customer_Name from customers;

select sum(creditlimit) as SumCredit from customers;

select Avg(creditlimit) as Average from customers;

select count(*) as RecordCount from customers;

select state from customers;

select count(state) from customers;

select max(creditLimit) as MaxCreditLimit from customers;


select Min(creditLimit) as MinCreditLimit from customers;

select * from customers where customername like 'a%';

select * from customers where customername like '%a';

select * from customers where customername like 'a_e%';

SELECT * FROM CUSTOMERS WHERE customername like 'a_e%';

SELECT * FROM CUSTOMERS WHERE customername LIKE '%AA%';

SELECT * FROM CUSTOMERS LIMIT 5;

SELECT * FROM CUSTOMERS LIMIT 0,10;

create table t1_emp(
Id int auto_increment,
EmpName varchar(50) not null,
EmpDesg varchar(50) not null,
EmpSal int,
primary key(Id)
);

create table t2_emp(
Id int auto_increment,
EmpName varchar(50) not null,
EmpDesg varchar(50) not null,
EmpSal int,
primary key(Id)
);

insert into t1_emp(EmpName,EmpDesg,EmpSal) values('Anil','trainer',1200),('Harsha','Developer',1233),('Ajay','trainer',5567);
select count(*) from t1_Emp;

insert into t2_emp(EmpName,EmpDesg,EmpSal) values('Anil','trainer',1200),('Harsha','Developer',1233),('Dinesh','Developer',1345),('Ajay','trainer',5567),('Sandeesh','Junior Developer',123),('SaiTeja','Developer',981),('Ritesh','Junior Developer',234),('Rakesh','Developer',1871);
select count(*) from t2_Emp;

select EmpName from t1_Emp
union
select EmpName from t2_Emp;

select EmpName from t1_Emp
union all
select EmpName from t2_Emp;

select EmpDesg from t1_Emp
union
select EmpDesg from t2_Emp;

select EmpDesg from t1_Emp
union all
select EmpDesg from t2_Emp;

