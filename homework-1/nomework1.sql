CREATE TABLE employees
(
	employee_id int PRIMARY KEY,
	first_name varchar(50) NOT NULL,
	last_name varchar(50) NOT NULL,
	title varchar(50),	
	birth_date date NOT NULL,
	notes text
);

CREATE TABLE customers
(
	customer_id varchar(10) PRIMARY KEY NOT NULL,
	company_name varchar(50) NOT NULL,
	contact_name varchar(50) NOT NULL
);

CREATE TABLE orders
(
	order_id int PRIMARY KEY,
	customer_id varchar(50) REFERENCES customers(customer_id),
	employee_id int REFERENCES employees(employee_id),
	order_date date,
	ship_city varchar(50)
	
);
SELECT * FROM orders;
SELECT * FROM employees;
SELECT * FROM customers