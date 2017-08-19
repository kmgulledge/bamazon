DROP DATABASE IF EXISTS Bamazon;
CREATE DATABASE Bamazon;

USE bamazon;

CREATE TABLE Products (
ItemID int NOT NULL,
ProductName varchar(50) NOT NULL,
DepartmentName varchar(50) NOT NULL,
Price DECIMAL(5,2) NOT NULL,
StockQuantity int NOT NULL);

INSERT INTO Products (ItemID, ProductName, DepartmentName, Price, StockQuantity) 
VALUES  ( 12345, 'Mens Classic Polo Shirt', 'Mens Clothing', 29.99, 50 ),
        ( 67891, 'Mens Hoodie', 'Mens Clothing', 49.99, 40 ),
        ( 23456, 'Boys Short Sleeve Graphic Shirt', 'Mens Clothing', 19.99, 20 ),
        ( 78912, 'Blue Ray Player', 'Electronics', 99.95, 20 ),
        ( 34567, 'Mens Boxers', 'Mens Clothing', 12.99, 30),
        ( 89123, 'Javascript & Jquery Beginners Guide', 'Books', 25.99, 15 ),
        ( 45678, 'Mens Knit Black Beanie', 'Mens Clothing', 19.99, 25 ),   
        ( 91234, 'Whey Protein Chocolate Powder', 'Health', 39.99, 20),
        ( 56789, 'Bow Tie Dog Collar', 'Pets', 19.99, 10 ),
        ( 11234, 'Shark Encylopdia Kids Book', 'Books', 39.99, 20 );

USE bamazon;
CREATE TABLE Departments(
DepartmentId int AUTO_INCREMENT,
PRIMARY KEY(DepartmentId),
DepartmentName varchar(50) NOT NULL,
OverHeadCosts DECIMAL(11,2) NOT NULL,
TotalSales DECIMAL(11,2) NOT NULL);


INSERT INTO Departments (DepartmentName, OverHeadCosts, TotalSales) 
VALUES ( 'Mens Clothing', 10000, 0);

INSERT INTO Departments (DepartmentName, OverHeadCosts, TotalSales) 
VALUES ( 'Books', 10000, 0);

INSERT INTO Departments (DepartmentName, OverHeadCosts, TotalSales) 
VALUES ( 'Health', 20000, 0);

INSERT INTO Departments (DepartmentName, OverHeadCosts, TotalSales) 
VALUES ( 'Shoes', 15000, 0);

INSERT INTO Departments (DepartmentName, OverHeadCosts, TotalSales) 
VALUES ( 'Electronics', 50000, 0);