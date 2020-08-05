--Goran Somic CSC 453

DROP TABLE Customer;
DROP TABLE FullOrder;
DROP TABLE Request;
DROP TABLE Product;


CREATE TABLE Customer (
    CustomerID NUMBER(3),
    Name VARCHAR(25),
    Address VARCHAR(50),
    PRIMARY KEY (CustomerID)
    ) ;


CREATE TABLE FullOrder (
    OrderID NUMBER(5),
    OrderDate DATE,
    CustomerID NUMBER(3),
    PRIMARY KEY (OrderID),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
    );

 
CREATE TABLE Request (
    OrderID NUMBER(5),
    ProductID NUMBER(2),
    Quantity NUMBER NOT NULL CHECK(Quantity >= 1 and Quantity <= 100),
    FOREIGN KEY (OrderID) REFERENCES FullOrder(OrderID)
    --FOREIGN KEY (ProductID) REFERENCES Product(ProductID)
    );


CREATE TABLE Product (
    ProductID NUMBER(2),
    Description VARCHAR(28),
    Finish VARCHAR(10),
    Price FLOAT NOT NULL CHECK(Price >= 0 and Price < 1000),
    PRIMARY KEY (ProductID)
    );
    


INSERT INTO Customer VALUES(2, 'CASUAL FURNITURE', 'PLANO, TX');
INSERT INTO Customer VALUES(6, 'MOUNTAIN GALLERY', 'BOULDER, CO');



INSERT INTO FullOrder VALUES(1006, '24-MAR-10' , 2);
INSERT INTO FullOrder VALUES(1007, '25-MAR-10' , 6);
INSERT INTO FullOrder VALUES(1008, '25-MAR-10' , 6);
INSERT INTO FullOrder VALUES(1009, '26-MAR-10' , 2);



INSERT INTO Product VALUES(10, 'WRITING DESK' , 'OAK' , 425);
INSERT INTO Product VALUES(30, 'DINING TABLE' , 'ASH' , 600);
INSERT INTO Product VALUES(40, 'ENTERTAINMENT CENTER' , 'MAPLE' , 650);
INSERT INTO Product VALUES(70, 'CHILDRENS DRESSER' , 'PINE' , 300);



INSERT INTO Request VALUES(1006, 10 , 4);
INSERT INTO Request VALUES(1006, 30 , 2);
INSERT INTO Request VALUES(1006, 40 , 1);
INSERT INTO Request VALUES(1007, 40 , 3);
INSERT INTO Request VALUES(1007, 70 , 2);
INSERT INTO Request VALUES(1008, 70 , 1);
INSERT INTO Request VALUES(1009, 10 , 2);
INSERT INTO Request VALUES(1009, 40 , 1); 

SELECT * FROM Customer;
SELECT * FROM FullOrder;
SELECT * FROM Request;
SELECT * FROM Product;

    
    
    
    
