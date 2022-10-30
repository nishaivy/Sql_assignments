use assign27
CREATE TABLE student(
s_id INT primary key,
s_name varchar(20),
s_course varchar(20)
)

insert into student values(101,'Nisha','Maths')
insert into student values(102,'Nisha','Phys')
insert into student values(103,'Nisha','chem')

insert into student values(104,'mukesh','Bio')
insert into student values(105,'mukesh','Ag')
insert into student values(106,'mukesh','chem')

insert into student values(107,'laveena','Maths')
insert into student values(108,'laveena','Bio')
insert into student values(109,'laveena','chem')

insert into student values(110,'puja','Bio')
insert into student values(111,'puja','Phys')
insert into student values(112,'puja','chem')

select * from student
SELECT s_name FROM student WHERE s_course  not in ('Maths','Phys') GROUP BY s_name HAVING COUNT(distinct s_course) >= 2