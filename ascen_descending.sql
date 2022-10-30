use assign27

CREATE TABLE employee(
emp_id INT primary key,
emp_name varchar(20),
dep_name varchar(30)
)

insert into employee values(104,'nisha','bingo')
insert into employee values(101,'ankit','Aqua')
insert into employee values(102,'mukesh','Agni')
insert into employee values(103,'manish','casino')
insert into employee values(105,'poojitha','trading')
insert into employee values(106,'anand','sports')
insert into employee values(107,'sanjana','Aqua')
insert into employee values(108,'jyoti','Agni')
insert into employee values(109,'shilpa','casino')
insert into employee values(110,'parnav','bingo')
insert into employee values(111,'AkshayaLaxmi','trading')
insert into employee values(112,'Utshayab','sports')
insert into employee values(113,'soaib','Aqua')
insert into employee values(114,'ravi','Agni')
insert into employee values(115,'raju','casino')
insert into employee values(116,'neelam','bingo')
insert into employee values(117,'raksha','trading')
insert into employee values(118,'archana','sports')

select* from employee

select* from employee order by dep_name DESC,emp_name ASC;