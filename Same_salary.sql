use assign27
CREATE TABLE employee1(
emp_id INT primary key,
emp_name varchar(20) NOT NULL UNIQUE,
salary BIGINT)

SELECT * from employee1

insert into employee1 values(10001,'Nisha',60000)
insert into employee1 values(10002,'ankit',50000)
insert into employee1 values(10003,'manish',50000)
insert into employee1 values(10004,'mukesh',70000)
insert into employee1 values(10005,'anand',70000)
insert into employee1 values(10006,'sanjana',60000)
insert into employee1 values(10007,'poojitha',60000)
insert into employee1 values(10008,'raju',70000)
insert into employee1 values(10009,'neelam',80000)

select emp_name,salary from employee1 WHERE salary IN ( SELECT salary FROM employee1 GROUP BY salary HAVING COUNT(salary) > 1) order by salary