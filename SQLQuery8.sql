use assignment2
CREATE TABLE CUSTOMER (
   cust_id int NOT NULL,
    name varchar(20) not null,
    address varchar(20) not null,
    tel float NOT NULL,
    email varchar(20) not null,
);

select * from CUSTOMER
insert into CUSTOMER values(1,'isha','Pune','1234567809','nisha@gmail.com');
insert into CUSTOMER values(2,'kunal','Bangalore','2345678901','kunal@gmail.com');
insert into CUSTOMER values(3,'Mumal','Hyderabad','1234567012','Mumal@gmail.com');
insert into CUSTOMER values(4,'Ritik','sangli','1023456789','Ritik@gmail.com');
insert into CUSTOMER values(5,'Ravi','nagpur','1203456789','Ravi@gmail.com');
insert into CUSTOMER values(6,'Nadeem','Hubli','1230456789','Nadeem@gmail.com');
insert into CUSTOMER values(7,'Pritam','coorg','1234056789','Pritam@gmail.com');
insert into CUSTOMER values(8,'Abhishek','vizak','1234560789','Abhishek@gmail.com');
insert into CUSTOMER values(9,'Naresh','vijayawada','1230456789','Naresh@gmail.com');
insert into CUSTOMER values(10,'Sahil','dharward','1203456289','Sahil@gmail.com');

CREATE TABLE ITEM (
   item_id int not null,
    name varchar(20) not null,
    price varchar(20) not null,  
);

select * from ITEM
insert into ITEM values(12,'icecream','200');
insert into ITEM values(13,'mango','300');
insert into ITEM values(14,'choco','500');
insert into ITEM values(15,'almonds','600');
insert into ITEM values(16,'peas','700');
insert into ITEM values(17,'biscuits','800');
insert into ITEM values(18,'comb','900');
insert into ITEM values(19,'brush','1000');
insert into ITEM values(20,'soap','1100');
insert into ITEM values(21,'Peanuts','100');

CREATE TABLE ORD (
   order_id int,
    customer_id int,
   datetime datetime,
);

select * from ORD
insert into ORD values(22,1,'2022-09-30 10:56:23');
insert into ORD values(23,2,'2022-03-10 12:56:23');
insert into ORD values(24,3,'2022-04-11 12:16:23');
insert into ORD values(25,4,'2022-06-22 04:06:23');
insert into ORD values(26,5,'2022-07-20 08:36:23');
insert into ORD values(27,6,'2022-08-10 03:53:23');
insert into ORD values(28,7,'2022-09-12 11:46:23');


CREATE TABLE ORDER_ITEMS (
   ord_item_id int not null,
    order_id int not null,
	item_id int not null,
    product_quantity varchar(20) not null,
);


select* from ORDER_ITEMS
insert into ORDER_ITEMS values(32,3,23,'good');

--INSERT INTO ORDER_ITEMS (order_id) SELECT order_id FROM ORD
SELECT ORD.order_id, ORDER_ITEMS.order_id, ORD.datetime
FROM ORD INNER JOIN ORDER_ITEMS ON ORD.order_id=ORDER_ITEMS.order_id;

SELECT ORDER_ITEMS.ord_item_id,ORDER_ITEMS.order_id, ORD.order_id, ORDER_ITEMS.item_id,ORDER_ITEMS.product_quantity
FROM ORDER_ITEMS INNER JOIN ORD ON ORDER_ITEMS.order_id=ORD.order_id;
