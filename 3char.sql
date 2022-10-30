use assign27
create table city (city_code INT primary key,city_name varchar(20))

insert into city values(1001,'Delhi')
insert into city values(1002,'Jaipur')
insert into city values(1003,'Kota')
insert into city values(1004,'Patna')
insert into city values(1005,'Hyderabad')
insert into city values(1006,'Pune')
insert into city values(1007,'Kolkata')
insert into city values(1008,'Mumbai')

select * from city

select city_code,SUBSTRING(city_name,1,3) from city
	