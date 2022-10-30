
use assign27
CREATE TABLE person(per_no INT PRIMARY KEY,First_name varchar(20),Last_name varchar(20))

select * from person

insert into person values (1,'Nisha','Hiremani')
insert into person values (2,'mukesh','kumar')
insert into person values (3,'ankit','gupta')
insert into person values (4,'Amit','tiwari')
insert into person values (5,'sanjana','kumari')
insert into person values (6,'anand','kumar')

select First_name,Last_name, concat(First_name,' ',Last_name) as Full_name from person