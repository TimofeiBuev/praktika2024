use Buev;

create table machineType(
id int primary key identity(1,1),
"name" nvarchar(50)
);

create table machine(
id int primary key identity(1,1),
"name" nvarchar(50),
"startDate" date,
"period" nvarchar(50),
"endDate" date,
machineTypeId int references machineType(id)
);

create table detail(
id int primary key identity(1,1),
"name" nvarchar(50),
"number" nvarchar(50)
);

create table detailForMachins(
id int primary key identity(1,1),
detailId int references detail(id),
machineId int references machine(id)
);

create table street(
id int primary key identity(1,1),
"name" nvarchar(50)
);

create table warehouse(
id int primary key identity(1,1),
"number" nvarchar(50),
"houseNumber" nvarchar(50),
"space" float,
streetId int references street(id)
);

create table gender(
id int primary key identity(1,1),
"name" nvarchar(50)
);

create table employee(
id int primary key identity(1,1),
"firstName" nvarchar(50),
"lastName" nvarchar(50),
"patronymic" nvarchar(50),
genderId int references gender(id)
);

create table invoice(
id int primary key identity(1,1),
warehouseId int references warehouse(id),
detailId int references detail(id),
employeeId int references employee(id),
"date" date,
"price" float
);