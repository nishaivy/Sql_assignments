use assign27
CREATE TABLE people(	
emp_id INT primary key, 	
emp_name varchar(20),	
emp_city varchar(20),	
state_name varchar(20)	
);	

insert into people values(101,'Pavan','delhi','dehli')	
insert into people values(102,'manish','delhi','dehli')	
insert into people values(103,'anand','delhi','dehli')	
insert into people values(104,'ankit','delhi','dehli')	
insert into people values(105,'blinty','delhi','dehli')	

insert into people values(106,'nisha','mumbai','maharastra')	
insert into people values(107,'poojitha','mumbai','maharastra')	
insert into people values(108,'sanjana','mumbai','maharastra')	
select* from people	

CREATE TABLE country(	
district_id INT primary key,	
emp_id INT,	
district varchar(20),	

foreign key(emp_id) references people(emp_id)	
)	

insert into country values(10001,101,'shahdara')	
insert into country values(10002,102,'central')	
insert into country values(10003,103,'new dehli')	
insert into country values(10004,104,'south')	
insert into country values(10005,105,'east')	

insert into country values(10006,106,'pune')	
insert into country values(10007,107,'thane')	
insert into country values(10008,108,'mumbai')	

select* from country	


select country.district_id, people.emp_name, people.emp_city,country.district from people 	
INNER JOIN country	
ON people.emp_id = country.emp_id	

select country.district_id, people.emp_name, people.emp_city,country.district from people 	
FULL OUTER JOIN country	
ON people.emp_id = country.emp_id	

delete from country where district_id = 10008	


select country.district_id, people.emp_name, people.emp_city,country.district from people 	
LEFT OUTER JOIN country	
ON people.emp_id = country.emp_id	

select country.district_id, people.emp_name, people.emp_city,country.district from people 	
RIGHT OUTER JOIN country	
ON people.emp_id = country.emp_id	