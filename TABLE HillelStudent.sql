use HillelQauto;
DROP TABLE IF EXISTS cars;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS car_models;
DROP TABLE IF EXISTS car_brands;

CREATE TABLE car_brands (
	id INT auto_increment primary key,
	title varchar(100) NOT NULL
);

CREATE TABLE car_models (
	id INT auto_increment primary key,
	carBrandId INT,
    title varchar(100) NOT NULL,
    foreign key(carBrandId) references car_brands(id)
    );

create TABLE users (
	id INT auto_increment primary key,
	FirstName varchar(100) NOT NULL,
	LastName varchar(100) NOT NULL,
	email varchar(100) NOT NULL,
	password varchar(100) NOT NULL
);

create table cars (
	id INT auto_increment primary KEY,
	UserId INT,
	carBrandId INT,
	carModelId INT,
	miliage INT,
	initialMiliage INT,
	foreign key (UserId) references users(id),
	foreign key (carBrandId) references car_brands(id),
	foreign key (carModelId) references car_models(id)
);

insert into car_brands(title)
values 
	('Toyota'),
	('BMW'),
	('Porsche');

insert into car_models(carBrandId,title)
values
	(1,'Camry'),
    (1,'Corolla'),
    (1,'Supra'),
	(2,'X5'),
    (2,'X3'),
    (2,'X7'),
	(3,'911 Turbo'),
    (3,'Cayeen'),
    (3,'Panamera');

insert into users(id,FirstName,LastName,email,password)
values
	(1,'Joe','Biden','example1@gmail.com','qwerty12345'),
	(2,'Donald','Trump','example2@gmail.com','qwerty12345'),
	(3,'Barak','Obama','example3@gmail.com','qwerty12345');
    
insert into cars (UserId,carBrandId,carModelId,Miliage,InitialMiliage)
	values
    (1,1,1,10000,1000),
    (2,2,6,5000,500),
    (3,2,4,1000,300);