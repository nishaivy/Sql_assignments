CREATE TABLE employees(emp_id INT primary key,emp_name varchar(20) NOT NULL UNIQUE,salary BIGINT)

SELECT * from employees

insert into employees values(10010,'anisha',60000)
insert into employees values(10002,'ankit',55000)
insert into employees values(10003,'manish',50000)
insert into employees values(10004,'mukesh',70000)
insert into employees values(10005,'anand',40000)
insert into employees values(10006,'sanjana',45000)
insert into employees values(10007,'poojitha',52000)
insert into employees values(10008,'raju',65000)
insert into employees values(10009,'neelam',80000)

select * from employees where salary > 50000 and salary< 80000