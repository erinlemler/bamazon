DROP DATABASE IF EXISTS bamazon;

CREATE DATABASE bamazon;

USE bamazon;

CREATE TABLE products (
  id INT NOT NULL AUTO_INCREMENT,
  product_name VARCHAR(45) NULL,
  department_name VARCHAR(20) NULL,
  price DECIMAL (8,2) NULL,
  stock_quantity INT NOT NULL,
  PRIMARY KEY (id)
);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("mouse", "accssories", 10, 50);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("phone case", "accessories", 20, 50);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("headphones", "accessories", 15, 50);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("gaming controller", "accessories", 45, 50);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("phone screen protector", "accessories", 15, 50);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("mouse", "accssories", 10, 50);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("phone case", "accessories", 20, 50);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("headphones", "accessories", 15, 50);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("headset", "accessories", 45, 50);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("phone screen protector", "accessories", 15, 50);

SELECT * FROM products;