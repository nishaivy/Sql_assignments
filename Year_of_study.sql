use assign27
CREATE TABLE stud_Info(
s_Id INT PRIMARY KEY,
s_Name varchar(20),
s_Age INT,
s_Sex varchar(10),
s_Course varchar(20),
s_Year INT
)

insert into stud_Info values(101,'nisha',24,'F','ECE',4)
insert into stud_Info values(102,'Gaurav',21,'M','ECE',3)
insert into stud_Info values(103,'ankit',20,'M','EEE',2)
insert into stud_Info values(104,'Mohit',22,'M','ECE',4)
insert into stud_Info values(105,'Prarit',19,'M','CE',1)
insert into stud_Info values(106,'Kuleen',19,'M','ECE',1)
insert into stud_Info values(107,'Rahul',20,'M','ME',1)
insert into stud_Info values(108,'Raj',20,'M','CS',1)
insert into stud_Info values(106,'Anisha',22,'F','CE',3)
insert into stud_Info values(107,'Tanya',24,'F','ECE',4)
insert into stud_Info values(108,'Anamika',25,'F','CS',1)

select* from stud_Info

Create or ALTER PROCEDURE p_2 @year INT AS
SELECT * from stud_Info where s_Year=@year
EXEC p_2 @year=1