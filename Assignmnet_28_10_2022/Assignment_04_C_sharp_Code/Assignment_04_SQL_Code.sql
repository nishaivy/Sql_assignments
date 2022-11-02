use assign28

CREATE TABLE student(
s_id INT PRIMARY KEY,
s_name varchar(20),
Course_name varchar(50),
marks INT
)

insert into student values(1001,'Nisha','Phys',80)
insert into student values(1002,'Nisha','Chem',70)
insert into student values(1004,'Nisha','Maths',60)
insert into student values(1005,'Nisha','Eng',55)


insert into student values(1006,'manish','Phys',60)
insert into student values(1007,'manish','Chem',80)
insert into student values(1008,'manish','Maths',90)
insert into student values(1009,'manish','Eng',65)

insert into student values(1010,'mukesh','Phys',78)
insert into student values(1011,'mukesh','Chem',85)
insert into student values(1012,'mukesh','Maths',90)
insert into student values(1013,'mukesh','Eng',60)

insert into student values(1014,'sanjana','Phys',68)
insert into student values(1015,'sanjana','Chem',75)
insert into student values(1016,'sanjana','Maths',95)
insert into student values(1017,'sanjana','Eng',65)

select* from student
--drop table student


CREATE OR ALTER PROCEDURE p1 @t_mark INT AS 
BEGIN
SELECT s_name, SUM(marks) AS s_total from student group by s_name having  SUM(marks) <@t_mark
END

select* from student

CREATE OR ALTER PROCEDURE p2 @d_s_name varchar(20) AS
BEGIN
DECLARE @total_marks AS INT
SELECT  @total_marks= SUM(marks)  from student group by s_name having s_name = @d_s_name 


EXEC p1 @total_marks
END


