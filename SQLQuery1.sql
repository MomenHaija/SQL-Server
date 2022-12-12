
create Table  customers
(
	custmoer_Id int not null,
	first_name varchar(15) not null,
	last_name varchar(50) not null,
	phone varchar(10),
	state varchar(15) not null,
	strate varchar(15) not null,
	ZIP_Code varchar(10) not null
);
create Table  Orders(
	Orders_Id int primary key,
	Customer_Id int,
	Order_status varchar(50),
	Order_date Date not null,
	required_date Date not null,
	Shipped_date Date not null,
	store_Id int not null,
	Staff_Id int not null,
);



Create Table Product(
	Product_Id	int not null,
	Product_name varchar(50),
	Brand_Id int not null,
	Category_Id int not null,
	Model_Year int not null,
	list_Price float not null,

);
Create Table Employee(
	Employee_Id	int Primary Key,
	First_Name varchar(50) not null,
	Last_Name varchar(50) not null,
	Email varchar(50) not null,
	Phone numeric not null,
	Active varchar(50),
	Store_Id varChar(10),
	manager_Id varChar(10)
);

