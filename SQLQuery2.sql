use assignment1
CREATE TABLE employee (
	ID INT NOT NULL,  
	NAME VARCHAR(20) NOT NULL,  
	AGE INT NOT NULL,  
	ADDRESS VARCHAR(25),  
	PRIMARY KEY (ID)  
);  

insert into employee values(1,'Nisha',22,'Hubli');
insert into employee values(2,'selva',24,'UttarPardesh');
insert into employee values(3,'balu',23,'TamilNadu');
insert into employee values(4,'yuvaraj',26,'AndhraPardesh');
insert into employee values(5,'ravi',22,'Jharkhand');
insert into employee values(6,'Varun',22,'Bangalore');
insert into employee values(7,'Mukesh',23,'Rajasthan');
insert into employee values(8,'Gaurav',22,'UttarPardesh');
insert into employee values(9,'Prarit',22,'UttarPardesh');
insert into employee values(10,'Bishu',23,'Bihar');
insert into employee values(11,'Raghwan',22,'TamilNadu');
insert into employee values(12,'Harsha',22,'AndhraPardesh');
insert into employee values(13,'Mohit',22,'Delhi');

select * from employee;
select distinct address from employee;