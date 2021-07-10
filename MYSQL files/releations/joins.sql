SELECT * FROM customers;
SELECT * FROM orders;

-- implicit inner join
SELECT * FROM customers, orders WHERE orders.customer_id= customers.id;

-- explicit inner join
SELECT first_name, last_name, order_date, amount FROM customers JOIN orders ON orders.customer_id= customers.id;

-- Left Join

-- selects all from customers
SELECT * FROM customers LEFT JOIN orders ON orders.customer_id= customers.id;

-- selects all from orders
SELECT * FROM orders LEFT JOIN customers ON orders.customer_id= customers.id;


SELECT 
	first_name,
	last_name,
    ifnull(SUM(amount), 0) AS total_spent
FROM customers 
LEFT JOIN orders 
ON orders.customer_id= customers.id
 GROUP BY customers.id 
 ORDER BY total_spent DESC ;
 
 -- Right join
 
 SELECT * FROM customers RIGHT JOIN orders ON orders.customer_id= customers.id;