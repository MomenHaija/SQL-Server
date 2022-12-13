create Table  customers
(
	custmoer_Id int,
	first_name varchar(15) not null,
	last_name varchar(50) not null,
	phone varchar(10),
	state varchar(15) not null,
	strate varchar(15) not null,
	ZIP_Code varchar(10) not null,
	primary key(custmoer_Id)
);
create Table  Orders(
	Orders_Id int,
	Order_status varchar(50),
	Order_date Date not null,
	required_date Date not null,
	Shipped_date Date not null,
	store_Id int not null,
	Staff_Id int not null,
	primary key(Orders_Id),
	custmoer_Id int foreign key
	REFERENCES  customers(custmoer_Id)
);
Create Table Product(
	Product_Id	int ,
	Product_name varchar(50),
	Brand_Id int not null,
	Category_Id int not null,
	Model_Year int not null,
	list_Price float not null,

	primary Key(Product_Id),
	Order_id int foreign key
	REFERENCES  Orders(Orders_Id)
);
alter Table customers
drop column strate;

insert customers
VALUES('1', 'Momen','Abu ALhaija','0783456078','unmarried','4250'),
('2','Amer','Amora','0780830650','unmarried','4035'),
('3','Momen','Alkhares','0792451554','unmarried','7825'),
('4','Mosab','ghanam','0773284117','unmarried',	'7089'),
('5','moath','Albdor','0780805085','unmarried','4542');

Alter TABLE Orders
drop column required_date,Shipped_date,staff_id;

 insert Orders
 VALUES
('1','new','2022-10-09','12','1'),
('2','new','2022-10-09','13','2'),
('3','new','2022-09-07','14','3'),
('4','new','2022-09-07','15','4'),
('5','old','2022-09-15','16','4'),
('6','old','2022-09-08','17','5'),
('7','new','2022-09-17','18','2');

insert Product
VALUES
('1','Tshirt','1278','1257','2022','202','1'),
('2','Hodle','1275','1275','2022','45','2'),
('3','Book','1277','1257','2023','204','3'),
('4','Flyer','1257','1256','2023','253','4'),
('5','battery','12587','1267','2023','236','5'),
('6','wheels','12648','1236','2022','105','4'),
('7','tshirt','1256','1256','2022','145','2');



select C.custmoer_Id ,first_name+' '+last_name AS customer_Name,
Order_id,Order_status,Order_date,Product_Id,Product_name
from customers AS C,Orders AS o,Product AS p
Where c.custmoer_Id=o.custmoer_Id and o.Orders_Id=p.Order_id;

select C.custmoer_Id ,first_name+' '+last_name AS customer_Name,
Orders_Id,Order_status,Order_date,Product_Id,Product_name
from customers AS C Join Orders AS O on C.custmoer_Id=O.custmoer_Id
join Product AS p on O.Orders_Id=P.Order_id;
