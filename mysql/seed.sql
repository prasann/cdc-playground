CREATE DATABASE store;
USE store;

CREATE TABLE brands (
    name varchar(255) NOT NULL PRIMARY KEY
);

CREATE TABLE products (
    id int PRIMARY KEY,
    name varchar(255),
    brand varchar(255),
    FOREIGN KEY(brand) REFERENCES brands(name) ON DELETE CASCADE
);

CREATE TABLE orders (
    id varchar(36) default (uuid()) NOT NULL PRIMARY KEY,
    product_id int,
    quantity int,
    FOREIGN KEY(product_id) REFERENCES products(id) ON DELETE CASCADE
);


INSERT INTO brands(name) VALUES("nike");
INSERT INTO brands(name) VALUES("gucci");
INSERT INTO brands(name) VALUES("zara");

INSERT INTO products(id, name, brand) VALUES(1, "runner shoes", "nike");
INSERT INTO products(id, name, brand) VALUES(2, "leather jacket", "gucci");
INSERT INTO products(id, name, brand) VALUES(3, "hat", "zara");
INSERT INTO products(id, name, brand) VALUES(4, "buckle belt", "gucci");
INSERT INTO products(id, name, brand) VALUES(5, "wrist band", "nike");
INSERT INTO products(id, name, brand) VALUES(6, "tennis shoes", "nike");
INSERT INTO products(id, name, brand) VALUES(7, "overcoat", "zara");
INSERT INTO products(id, name, brand) VALUES(8, "fur jacket", "zara");
INSERT INTO products(id, name, brand) VALUES(9, "handbag", "gucci");
INSERT INTO products(id, name, brand) VALUES(10, "mens purse", "gucci");

INSERT INTO orders(product_id, quantity) VALUES(1, 2);
INSERT INTO orders(product_id, quantity) VALUES(2, 3);
INSERT INTO orders(product_id, quantity) VALUES(10, 2);