use assign27
CREATE TABLE new_sudetnts(
s_id INT primary key,
s_name varchar(20),
s_dep varchar(20),
joining_date date
)

insert into new_sudetnts values(1001,'Nisha','ECE','07-08-2022')
insert into new_sudetnts values(1002,'ankit','ECE','01-01-2021')
insert into new_sudetnts values(1003,'manish','ME','01-15-2022')
insert into new_sudetnts values(1004,'anand','CSE','02-01-2020')
insert into new_sudetnts values(1005,'raju','CE','01-01-2020')
insert into new_sudetnts values(1006,'rani','EEE','02-01-2019')
insert into new_sudetnts values(1007,'neelam','ECE','08-10-2020')

select * from new_sudetnts

select * from new_sudetnts where joining_date>'02-29-2020'