create table Products(
ProductNo varchar(30) primary key,
Name nvarchar(50),
Description nvarchar(255),
Category nvarchar(50)
)

create table Colors(
ColorCode varchar(20) primary key,
Name nvarchar(100)
)

create table Sizes(
SizeCode varchar(15) primary key,
Description nvarchar(200)
)

create table has(
Quantity int,
Price decimal(10,2),
ProductNo varchar(30) references Products(ProductNo),
ColorCode varchar(20) references Colors(ColorCode),
SizeCode varchar(15) references Sizes(SizeCode)
primary key (ProductNo, ColorCode, SizeCode)
)
