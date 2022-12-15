
create table city(
City_Name varchar(20),
City_Id int primary key identity(1,1)

);
create TABLE info(
UserName varchar(30),
Age int,
Phone_Number varchar(50),
path_image varchar(50),
City_Id int foreign key references city(City_Id)
);
