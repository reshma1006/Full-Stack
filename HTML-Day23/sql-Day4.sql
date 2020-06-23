show databases;

use classicmodels;

show tables;

select * from productlines;

select productName,productcode,textdescription from products a inner join productlines b on a.productline = b.productline;

select * from products;
select * from customers;
select * from orders;

select customerName,status from customers a inner join orders b on a.customerNumber=b.customerNumber;