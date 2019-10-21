CREATE DATABASE Umuzi;

CREATE TABLE Customers(
customer_id INT NOT NULL AUTO_INCREMENT,
first_name VARCHAR(50),
last_name VARCHAR(50),
gender VARCHAR(7),
address VARCHAR(200),
phone INT,
email VARCHAR(100),
city VARCHAR(20),
country VARCHAR(50),
PRIMARY KEY(customer_id)
);

CREATE TABLE Employees(
employee_id INT NOT NULL AUTO_INCREMENT,
first_name VARCHAR(50),
last_name VARCHAR(50),
email VARCHAR(100),
job_title VARCHAR(20),
PRIMARY KEY(employee_id)
);

CREATE TABLE Products(
product_id INT NOT NULL AUTO_INCREMENT,
product_name VARCHAR(100),
description VARCHAR(300),
buy_price DECIMAL,
PRIMARY KEY(product_id)
);

CREATE TABLE Payments(
payment_id INT NOT NULL AUTO_INCREMENT,
customer_id INT ,
payment_date DATETIME,
amount DECIMAL,	
FOREIGN KEY(customer_id) REFERENCES Customers(customer_id) ON DELETE SET NULL,
PRIMARY KEY(payment_id)
);

CREATE TABLE Orders(
order_id INT NOT NULL AUTO_INCREMENT ,
product_id INT,
payment_id INT,
fullfilled_by_employee_id INT,
date_required DATETIME,
date_shipped DATETIME,
status VARCHAR(20),
FOREIGN KEY(product_id) REFERENCES Products(product_id) ON DELETE SET NULL,
FOREIGN KEY(payment_id) REFERENCES Payments(payment_id) ON DELETE SET NULL,
FOREIGN KEY(fullfilled_by_employee_id) REFERENCES Employees(employee_id) ON DELETE SET NULL,
PRIMARY KEY(order_id)
);

INSERT INTO Customers(first_name,last_name ,gender ,address ,phone ,email ,city ,country) VALUES ('John','Hibert','Male','284 chaucer st',084789657,'john@gmail.com','Johannesburg','South Africa')	;
INSERT INTO Customers(first_name,last_name ,gender ,address ,phone ,email ,city ,country) VALUES ('Thando','Sithole','Female','240 Sect 1',0794445584,'thando@gmail.com	','Cape Town','South Africa')	;
INSERT INTO Customers(first_name,last_name ,gender ,address ,phone ,email ,city ,country) VALUES ('Leon','Glen','Male','81 Everton Rd,Gillits',0820832830,'Leon@gmail.com','Durban','South Africa')	;
INSERT INTO Customers(first_name,last_name ,gender ,address ,phone ,email ,city ,country) VALUES ('Charl','Muller','Male','290A Dorset Ecke',+44856872553	,'Charl.muller@yahoo.com','Berlin','Germany')	;
INSERT INTO Customers(first_name,last_name ,gender ,address ,phone ,email ,city ,country) VALUES ('Julia','Stein','Female','2 Wernerring',+448672445058	,'Js234@yahoo.com','Frankfurt','Germany')	;

INSERT INTO Employees(first_name,last_name ,email ,job_title) VALUES ('Kani','Matthew','Male','mat@gmail.com','Manager')	;
INSERT INTO Employees(first_name,last_name ,email ,job_title) VALUES ('Lesly','Cronje','Female','LesC@gmail.com','Clerk')	;
INSERT INTO Employees(first_name,last_name ,email ,job_title) VALUES ('Gideon','Maduku','Male','m@gmail.com','Accountant')	;




