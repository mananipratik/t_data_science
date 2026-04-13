-- select * from sales;
-- select * from products;
-- use first;
-- Retrieve all columns from the Sales table.
-- desc sales;
-- select * from sales;

-- Retrieve the product_name and unit_price from the Products table.
-- select product_name,unit_price from products;

-- Retrieve the sale_id and sale_date from the Sales table.
-- select sale_id, sale_date from sales; 

-- Filter the Sales table to show only sales with a total_price greater than $100.
-- select * from sales where total_price >100;

-- Filter the Products table to show only products in the 'Electronics' category.
-- select * from products where category = 'electronics';

-- Retrieve the sale_id and total_price from the Sales table for sales made on January 3, 2024.-
-- select sale_id, total_price,sale_date from sales where sale_date ='2024-01-03';

-- Retrieve the product_id and product_name from the Products table for products with a unit_price greater than $100.-
-- select product_id, product_name from products where unit_price > 100; 

-- Calculate the total revenue generated from all sales in the Sales table.
-- select sum(total_price) from sales;

-- Calculate the average unit_price of products in the Products table.
-- select avg(unit_price)from products;

-- Calculate the total quantity_sold from the Sales table.
-- select sum(quantity_sold)from sales;

-- Count Sales Per Day from the Sales table.
-- select sale_date, count(*) as total_sales from sales group by sale_date order by sale_date asc;

-- Retrieve product_name and unit_price from the Products table with the Highest Unit Price
-- select product_name, unit_price from products order by unit_price desc limit 1;

-- Retrieve the sale_id, product_id, and total_price from the Sales table for sales with a quantity_sold greater than 4.
-- select sale_id,product_id,total_price,quantity_sold from sales where quantity_sold >4;

-- Retrieve the product_name and unit_price from the Products table, ordering the results by unit_price in descending order.
-- select product_name,unit_price from products  order by unit_price desc;

-- Retrieve the total_price of all sales, rounding the values to two decimal places.
-- select round(sum(total_price),2) from sales;

-- Calculate the average total_price of sales in the Sales table.
-- select avg(total_price) from sales;

-- Retrieve the product_name and unit_price from the Products table, filtering the unit_price to show only values between $20 and $600.
-- select product_name, unit_price from products where unit_price between 20 and 600;

-- Retrieve the product_name and category from the Products table, ordering the results by category in ascending order.
-- select product_name, category from products order by category asc;

-- Identify the Most Frequently Sold Product from Sales table
-- select max(quantity_sold) from sales;

-- Find the Products Not Sold from Products table 
-- select * from products where product_id not in (select product_id from sales);
