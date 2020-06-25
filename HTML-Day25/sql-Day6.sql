show databases;
use classicmodels;
show tables;

select * from customers;

call get_distintCountry();

call get_customerDetails(103);

call get_CustomersbyCountryandName('UK');



create table Registration1(
	Id int auto_increment,
    Username varchar(100) not null,
    Password varchar(100) not null,
    EmailID varchar(100) not null,
    phone bigint,
    Address varchar(300),
    DateofBirth datetime,
    primary key(Id)
);

create table LoginDetails2(
	Id int auto_increment,
    Username varchar(100) not null,
    Password varchar(100) not null,
    primary key(Id)
);

call insert_Userdetails('Anil','anil','anil@dhyanahita.org',9988774455,'Hyd','2020/01/01');

select * from Registration1;
select * from loginDetails2;

call test_Login('Anil','anil');

call test_Login('Anil','anilkumar');




