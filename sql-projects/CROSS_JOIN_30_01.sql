##CROSS JOINT DATABASE

CREATE DATABASE food_db;
USE food_db;

CREATE TABLE items (
    name VARCHAR(50),
    price DECIMAL(5,2)
);

INSERT INTO items (name, price) VALUES
('vada pav', 10.00),
('dosa', 20.00),
('sandwich', 16.00);


CREATE TABLE variants (
    variant_name VARCHAR(50),
    variant_price DECIMAL(5,2)
);

INSERT INTO variants (variant_name, variant_price) VALUES
('butter', 5.00),
('cheese', 10.00),
('plain', 0.00);

#CROSS JOIN

SELECT 
    i.name AS item_name,
    v.variant_name,
    i.price AS item_price,
    v.variant_price,
    (i.price + v.variant_price) AS final_price
FROM items i
CROSS JOIN variants v;

SELECT 
    i.name AS item_name,
    v.variant_name,
    i.price AS item_price,
    v.variant_price,
    (i.price + v.variant_price) AS final_price
FROM variants v 
CROSS JOIN items i;