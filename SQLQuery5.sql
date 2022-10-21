use assignment1
create table studentInfoCollege1(
name varchar(20) not null,
roll int primary key,
age int not null,
course varchar(20),
);

insert into studentInfoCollege1 values('Nisha',23,22,'Math');
insert into studentInfoCollege1 values('Mumal',25,24,'Physics');
insert into studentInfoCollege1 values('Ritik',29,20,'Chemistry');
insert into studentInfoCollege1 values('Ravi',13,21,'Math');
insert into studentInfoCollege1 values('Nadeem',08,25,'Physics');
insert into studentInfoCollege1 values('Pritam',11,22,'Math');
insert into studentInfoCollege1 values('Abhishek',17,22,'Physics');
insert into studentInfoCollege1 values('Naresh',04,23,'Math');
insert into studentInfoCollege1 values('Sahil',05,19,'Physics');

create table studentInfoCollege2(
name varchar(20) not null,
roll int primary key,
age int not null,
course varchar(20),
);

insert into studentInfoCollege2 values('Mrunal',01,24,'Math');
insert into studentInfoCollege2 values('Rahul',02,22,'Math');
insert into studentInfoCollege2 values('Aman',03,21,'Chemistry');
insert into studentInfoCollege2 values('Manan',04,20,'Physics');
insert into studentInfoCollege2 values('Mandeep',05,25,'Physics');
insert into studentInfoCollege2 values('Sidhu',07,22,'Math');
insert into studentInfoCollege2 values('Prince',08,23,'Math');
insert into studentInfoCollege2 values('Varun',09,22,'Physics');
insert into studentInfoCollege2 values('Manish',12,19,'Physics');

select * from studentInfoCollege1
select * from studentInfoCollege2

select * from studentInfoCollege1 where studentInfoCollege1.age > 21 and studentInfoCollege1.course = 'Math' union (select * from studentInfoCollege2 where
studentInfoCollege2.age>21 and studentInfoCollege2.course = 'Math');