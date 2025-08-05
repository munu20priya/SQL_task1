DROP DATABASE IF EXISTS sql_task1;
CREATE DATABASE sql_task1 ;
use sql_task1;

CREATE TABLE Category (
 category_id INT PRIMARY KEY AUTO_INCREMENT,
 category_name VARCHAR(100) NOT NULL
 );
 CREATE TABLE Product(
  product_id INT PRIMARY KEY AUTO_INCREMENT,
  product_name VARCHAR(100) NOT NULL,
  price DECIMAL(10,2) NOT NULL,
  category_id INT,
  FOREIGN KEY(category_id) REFERENCES Category(category_id)
  );
  CREATE TABLE Customer(
   customer_id INT PRIMARY KEY AUTO_INCREMENT,
   name VARCHAR(100),
   email VARCHAR(100),
   mobilenumber VARCHAR(15)
   );
CREATE TABLE Orders(
 order_id INT PRIMARY KEY AUTO_INCREMENT,
 customer_id INT,
 order_date DATE,
 FOREIGN KEY(customer_id) REFERENCES Customer(customer_id)
 );
 CREATE TABLE OrderDeatils(
  order_id INT,
  product_id INT,
  quantity INT,
  PRIMARY KEY (order_id , product_id),
  FOREIGN KEY (order_id) REFERENCES Orders(order_id),
  FOREIGN KEY (product_id) REFERENCES Product(product_id)
);   
 
 