show databases;
use classicmodels;

select * from customers;
select customerNumber,customerName,phone,city,state,country,creditLimit from customers;
 
create view getCustomerData
as
select customerNumber,customerName,phone,city,state,country,creditLimit from customers;

select * from getCustomerData;

select customerNumber,customerName,phone from getCustomerData;

insert into getCustomerData(customerNumber,customerName,phone,city,state,country,creditLimit) values 
(1889,'Anil','9988776611','Hyd','TS','India',1789.0)

create view getCustomerOrdersData
as
select a.customerName,a.phone,a.addressLine1,b.orderDate,b.status 
from customers a, orders b
where a.customerNumber=b.customerNumber;

select * from getCustomerOrdersData;

create view getCustomerCountryName1
as
select a.customerName,a.phone,a.addressLine1, a.country,b.orderDate,b.status 
from customers a, orders b
where a.customerNumber=b.customerNumber and a.country='USA';

select * from getCustomerCountryName1;

rename table getCustomerCountryName
to getCustomerCountryName_new

SHOW FULL TABLES IN classicmodels WHERE TABLE_TYPE LIKE 'VIEW';

rename table sample
to sample_new

show tables;

create table sample(
EmailID varchar(100) not null,
address varchar(100) not null,
phone varchar(100) not null
);
rename table sample
to sample_new

alter table sample_new
add column EmailID2 varchar(100) not null

alter table sample_new
add column phone1 bigint unique,
add column address1 varchar(300)

alter table sample_new
drop address1

alter table sample_new
rename column phone1 to phonenumber

drop table sample_new

truncate table employees;






