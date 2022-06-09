CREATE TABLE Customer(
    Customer_id VARCHAR(20) PRIMARY KEY,
    Customer_Name VARCHAR(20) NOT NULL,
    Customer_Tel NUMBER
);

CREATE TABLE product(
    Product_id VARCHAR(20) PRIMARY KEY,
    Product_Name VARCHAR(20) NOT NULL,
    Price NUMBER CHECK(Price>0)
);

CREATE TABLE Orders(
    Customer_id VARCHAR(20) PRIMARY KEY,
    Product_id VARCHAR(20) PRIMARY KEY,
    Quantity NUMBER,
    Total_amount NUMBER,
    CONSTRAINT fk_orders_Customer FOREIGN KEY (Customer_id) REFERENCES Customer(Customer_id),
    CONSTRAINT fk_Orders_Products FOREIGN KEY (Product_id) REFERENCES product(Product_id)
);

ALTER TABLE product ADD Category VARCHAR(20);
ALTER TABLE Orders ADD Order_Date DATE DEFAULT "SYSDATE";