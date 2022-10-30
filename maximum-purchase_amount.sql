use assign27

CREATE TABLE orders(
order_id INT primary key,
pur_amount BIGINT,
order_date date
)

insert into orders values(1001,200000,'01-05-2022')
insert into orders values(1002,3000000,'05-01-2022')
insert into orders values(1003,200000,'07-08-2022')
insert into orders values(1004,5000000,'10-09-2022')
insert into orders values(1005,100000,'11-10-2022')
insert into orders values(1006,6000000,'01-08-2021')
insert into orders values(1007,7000000,'12-10-2021')
insert into orders values(1008,4000000,'07-01-2022')

select * from orders



select MAX(pur_amount) from orders
where pur_amount in (select pur_amount from orders where order_date>='05-01-2022' group by pur_amount)