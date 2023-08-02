REM   Script: ADT FINAL ASSIGNMENT (SQL)
REM   This is my final SQL Script.

DROP TABLE Customers;

DROP TABLE Employee;

DROP TABLE Accounts;

DROP TABLE Warehouse;

DROP TABLE Orders;

DROP TABLE PAYMENT_CHANNEL_CTT;

DROP TYPE PAYMENT_CHANNEL FORCE;

DROP TYPE DEBITCARD FORCE;

DROP TYPE EFT FORCE;

DROP TYPE CHEQUE FORCE;

CREATE TABLE Customers ( 
    Customer_ID int, 
    Name varchar(255), 
    Age int, 
    Customer_type varchar(255), 
    Nationality varchar(255), 
    Address varchar(255), 
    Contact varchar(255), 
    PRIMARY KEY(Customer_ID) 
);

INSERT INTO Customers (Customer_ID, Name, Age, Customer_type, Nationality, Address, Contact) 
VALUES (01, 'Katso Golekanye',73, 'Retail', 'Motswana', 'Po Box 818 Thamaga', '+26775291571');

INSERT INTO Customers (Customer_ID, Name, Age, Customer_type, Nationality, Address, Contact) 
VALUES (02, 'Mooketsi Gaolerwe', 56, 'Retail', 'Motswana', 'Po Box 822 Mosopa', '+26773459076');

INSERT INTO Customers (Customer_ID, Name, Age, Customer_type, Nationality, Address, Contact) 
VALUES (03, 'Lethabo Moedi', 67, 'Wholesale', 'South_African', 'Po Box 212 Mafikeng', '+26772293471');

INSERT INTO Customers (Customer_ID, Name, Age, Customer_type, Nationality, Address, Contact) 
VALUES (04, 'Hello Muredzi', 28, 'Retail', 'Zimbabwen', 'Po Box 991 Harare', '+2377121121571');

INSERT INTO Customers (Customer_ID, Name, Age, Customer_type, Nationality, Address, Contact) 
VALUES (05, 'John Phillips', 37, 'Retail', 'Belgium', 'Private Bag 234 Belg Street', '+34770332451');

SELECT * FROM Customers;

CREATE TABLE Employee ( 
    Employee_ID int, 
    Employee_Name varchar(255), 
    Age int, 
    Position varchar(255), 
    Nationality varchar(255), 
    Department varchar(255), 
    Gender varchar(255), 
    email varchar(255) 
);

INSERT INTO Employee (Employee_ID, Employee_Name, Age, Position, Nationality, Department, Gender, email) 
VALUES (01, 'Quinton Movati',41, 'Business Analyst', 'Motswana', 'Office Administration', 'Male','movati@gmail.com');

INSERT INTO Employee (Employee_ID, Employee_Name, Age, Position, Nationality, Department, Gender, email) 
VALUES (02, 'Morena August',39, 'Accountant', 'Motswana', 'Accounts Department', 'Male','august@gmail.com');

INSERT INTO Employee (Employee_ID, Employee_Name, Age, Position, Nationality, Department, Gender, email) 
VALUES (03, 'Pearl Moraen',42, 'Factory Worker', 'South African', 'Factory', 'Female','moraeng@gmail.com');

INSERT INTO Employee (Employee_ID, Employee_Name, Age, Position, Nationality, Department, Gender, email) 
VALUES (04, 'Nandi Mosarwe',30, 'Sales Person', 'Zimbabwe', 'Sales', 'Female','mosarwe@gmail.com');

INSERT INTO Employee (Employee_ID, Employee_Name, Age, Position, Nationality, Department, Gender, email) 
VALUES (05, 'Morati Ellah',22, 'Sales Person', 'Motswana', 'Sales', 'Male','ellah@gmail.com');

SELECT * FROM Employee;

CREATE TABLE Accounts ( 
    Account_ID int, 
    Account_Name varchar(255), 
    Account_Number int, 
    Invoice_ID int, 
    Sales_Date date, 
    Profit_Margin varchar(255) 
);

INSERT INTO Accounts (Account_ID, Account_Name, Account_Number, Invoice_ID, Sales_Date, Profit_Margin) 
VALUES (1, 'Sales',09876546, 12, to_date('2021-01-03','yyyy-mm-dd'), '60%');

INSERT INTO Accounts (Account_ID, Account_Name, Account_Number, Invoice_ID, Sales_Date, Profit_Margin) 
VALUES (2, 'Sales',09856757, 13, to_date('2021-01-04','yyyy-mm-dd'), '50%');

INSERT INTO Accounts (Account_ID, Account_Name, Account_Number, Invoice_ID, Sales_Date, Profit_Margin) 
VALUES (3, 'Orders',02347609, 14, to_date('2021-01-04','yyyy-mm-dd'), '70%');

INSERT INTO Accounts (Account_ID, Account_Name, Account_Number, Invoice_ID, Sales_Date, Profit_Margin) 
VALUES (4, 'Working Capital',05687789, 20, to_date('2021-01-09','yyyy-mm-dd'), '90%');

INSERT INTO Accounts (Account_ID, Account_Name, Account_Number, Invoice_ID, Sales_Date, Profit_Margin) 
VALUES (5, 'Savings',01125678, 25, to_date('2021-01-15','yyyy-mm-dd'), '70%');

SELECT * FROM Accounts;

CREATE TABLE Warehouse ( 
    Warehouse_ID int, 
    Warehouse_Name varchar(255), 
    Location varchar(255), 
    Type varchar(255) 
);

INSERT INTO Warehouse (Warehouse_ID, Warehouse_Name, Location, Type) 
VALUES (511, 'Mofenyi A', 'Main Mall', 'Sewing');

INSERT INTO Warehouse (Warehouse_ID, Warehouse_Name, Location, Type) 
VALUES (512, 'Mofenyi B', 'African Mall', 'Leather Processing');

INSERT INTO Warehouse (Warehouse_ID, Warehouse_Name, Location, Type) 
VALUES (514, 'Moatli A', 'Gamecity Mall', 'Design');

INSERT INTO Warehouse (Warehouse_ID, Warehouse_Name, Location, Type) 
VALUES (515, 'Moatli B', 'Block 6', 'Polishing');

INSERT INTO Warehouse (Warehouse_ID, Warehouse_Name, Location, Type) 
VALUES (516, 'Central', 'Gnorth', 'Joinings');

SELECT * FROM Warehouse;

CREATE TABLE Orders ( 
    Order_ID int, 
    Customer_ID int, 
    Employee_ID int, 
    Order_Date date, 
    Material_Purchased varchar(255), 
    Quantity int 
);

INSERT INTO Orders (Order_ID, Customer_ID,  Employee_ID, Order_Date, Material_Purchased,Quantity) 
VALUES (1101, 01, 05, to_date('2021-01-03','yyyy-mm-dd'),'Pilot Shirt & Pilot Bag',12 );

INSERT INTO Orders (Order_ID, Customer_ID,  Employee_ID, Order_Date, Material_Purchased,Quantity ) 
VALUES (1102, 02, 05, to_date('2021-01-04','yyyy-mm-dd'),'Pilot Trouser & Pilot Bag',20);

INSERT INTO Orders (Order_ID, Customer_ID,  Employee_ID, Order_Date, Material_Purchased,Quantity ) 
VALUES (1103, 03, 04, to_date('2021-01-04','yyyy-mm-dd'),'Pilot Bag',12 );

INSERT INTO Orders (Order_ID, Customer_ID,  Employee_ID, Order_Date, Material_Purchased,Quantity ) 
VALUES (1104, 04, 05, to_date('2021-01-09','yyyy-mm-dd'),'Pilot Gold Strips & Air Wing',5);

INSERT INTO Orders (Order_ID, Customer_ID,  Employee_ID, Order_Date, Material_Purchased,Quantity ) 
VALUES (1105, 05, 04, to_date('2021-01-15','yyyy-mm-dd'),'Formal Shoes & Pilot Blazer & Tshirt',10 );

SELECT * FROM Orders;

SELECT Customers.Customer_ID, Customers.Name, Customers.Customer_type,  Orders.Material_Purchased, Orders.Order_Date, Orders.Quantity, Employee_Name, Employee.Position, Department,Gender 
FROM ((Orders 
INNER JOIN Customers ON Orders.Customer_ID = Customers.Customer_ID) 
INNER JOIN Employee ON Orders.Employee_ID = Employee.Employee_ID);

CREATE OR REPLACE TYPE PAYMENT_CHANNEL AS OBJECT( 
PAYMENT_ID NUMBER, 
PAYMENT_CHANNEL VARCHAR (20), 
AMOUNT NUMBER, 
PAYMENT_DATE  DATE) 
NOT FINAL; 
/

CREATE OR REPLACE TYPE DEBITCARD UNDER PAYMENT_CHANNEL 
( 
CC_NUMBER NUMBER, 
CC_TYPE VARCHAR(20), 
NAME_ON_CARD VARCHAR (50))FINAL; 
/

CREATE OR REPLACE TYPE EFT UNDER PAYMENT_CHANNEL 
( 
ACCOUNT_NUMBER NUMBER, 
USERNAME VARCHAR(50))FINAL; 
/

CREATE OR REPLACE TYPE CHEQUE UNDER PAYMENT_CHANNEL( 
CHEQUE_ID NUMBER, 
ACCOUNT_NUMBER NUMBER, 
RECEIVER VARCHAR (50))FINAL; 
/

CREATE TABLE PAYMENT_CHANNEL_CTT of PAYMENT_CHANNEL ( 
Primary Key(PAYMENT_ID));

INSERT INTO PAYMENT_CHANNEL_CTT VALUES (DEBITCARD(1401,'Skrill',5000, '19-MARCH-2022', 08346578,'CURRENT','KELETSO MOITOI'));

INSERT INTO PAYMENT_CHANNEL_CTT VALUES (DEBITCARD(1402,'Skrill',9000, '10-OCTOBER-2022', 17345687,'CURRENT','PRECIOUS GOLEKANYE'));

INSERT INTO PAYMENT_CHANNEL_CTT VALUES (DEBITCARD(1403,'Paypal',16000, '06-SEPTEMBER-2022', 07733412,'SAVINGS','KGORI MOTASE'));

INSERT INTO PAYMENT_CHANNEL_CTT VALUES (EFT(1404,'E-CHECK',900, '05-DECEMBER-2022', 34576578,'TAU MADALA'));

INSERT INTO PAYMENT_CHANNEL_CTT VALUES (CHEQUE(1405,'BANK CHEQUE',7000, '11-JANUARY-2022', 0345,11234512,'KELETSO MOITOI'));

--amount of the payments.-- 


SELECT 
      PAYMENT_ID, 
      PAYMENT_CHANNEL, 
      AMOUNT, 
      PAYMENT_DATE 
FROM 
PAYMENT_CHANNEL_CTT 
WHERE 
    AMOUNT > ( 
         SELECT 
              AVG( AMOUNT ) 
        FROM 
            PAYMENT_CHANNEL_CTT 
             
    ) 
ORDER BY 
    PAYMENT_ID;

CREATE TABLE WARRANTY ( 
WARRANTY_NUMBER varchar(13) NOT NULL, 
PURCHASE_DATE TIMESTAMP, 
VALID_TO TIMESTAMP, 
CLIENT_NATIONALITY VARCHAR(30), 
Customer_ID NUMBER, 
PAYMENT_ID NUMBER, 
PRIMARY KEY(WARRANTY_NUMBER), 
FOREIGN KEY(PAYMENT_ID)REFERENCES PAYMENT_CHANNEL_CTT(PAYMENT_ID)ON DELETE CASCADE, 
FOREIGN KEY(Customer_ID)REFERENCES Customers(Customer_ID)ON DELETE CASCADE, 
PERIOD FOR VALID_WARRANTY_TIME(PURCHASE_DATE, VALID_TO));

INSERT INTO WARRANTY (WARRANTY_NUMBER,PURCHASE_DATE,VALID_TO,CLIENT_NATIONALITY,Customer_ID,PAYMENT_ID) 
VALUES('STT01',SYSDATE,SYSDATE+365,'MOTSWANA',01,1401);

INSERT INTO WARRANTY (WARRANTY_NUMBER,PURCHASE_DATE,VALID_TO,CLIENT_NATIONALITY,Customer_ID,PAYMENT_ID) 
VALUES('STT02',SYSDATE,SYSDATE+365,'ZIMBABWE',02,1402);

INSERT INTO WARRANTY (WARRANTY_NUMBER,PURCHASE_DATE,VALID_TO,CLIENT_NATIONALITY,Customer_ID,PAYMENT_ID) 
VALUES('STT03',SYSDATE,SYSDATE+365,'MOTSWANA',03,1403);

INSERT INTO WARRANTY (WARRANTY_NUMBER,PURCHASE_DATE,VALID_TO,CLIENT_NATIONALITY,Customer_ID,PAYMENT_ID) 
VALUES('STT04',SYSDATE,SYSDATE+365,'SOUTH AFRICAN',04,1404);

INSERT INTO WARRANTY (WARRANTY_NUMBER,PURCHASE_DATE,VALID_TO,CLIENT_NATIONALITY,Customer_ID,PAYMENT_ID) 
VALUES('STT05','19-APRIL-21 12.11.45.000000 AM','19-APRIL-22 12.11.45.000000 AM','LESOTHO',05,1405);

SELECT  C.Name,C.Customer_type,T.WARRANTY_NUMBER,T.CLIENT_NATIONALITY,T.PURCHASE_DATE,T.VALID_TO,'EXPIRED' AS Status 
FROM Customers C 
INNER JOIN WARRANTY T 
ON C.Customer_ID = T.Customer_ID 
WHERE TRUNC(T.VALID_TO) < TRUNC(SYSDATE);

SELECT  
      COALESCE(WARRANTY_NUMBER,'SUM VALID WARRANTY') AS WARRANTY_NUMBER, 
      SUM(AMOUNT) 
FROM 
    WARRANTY T 
INNER JOIN PAYMENT_CHANNEL_CTT USING (PAYMENT_ID) 
WHERE 
     TRUNC(VALID_TO) > TRUNC(SYSDATE) 
GROUP BY 
    ROLLUP(WARRANTY_NUMBER);

