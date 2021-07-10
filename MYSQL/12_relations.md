# Relations 

## One-Many Relations

```
CREATE TABLE customers(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
)

CREATE TABLE orders(
    id INT AUTO_INCREMENT PRIMARY KEY,
    price DECIMAL(8,2),
    customer_id INT,
    FOREIGN KEY(customer_id) REFERENCES customers(id)
)
```

## Inner Join
- Implicit Inner Join

```
SELECT * FROM customers, orders WHERE orders.customer_id= customers.id;
```

- Explicit Inner Join
```
SELECT first_name, last_name, order_date, amount FROM customers JOIN orders ON orders.customer_id= customers.id;
```

## Left Join

- selects all from customers

`
SELECT * FROM customers LEFT JOIN orders ON orders.customer_id= customers.id;
`

- selects all from orders

`
SELECT * FROM orders LEFT JOIN customers ON orders.customer_id= customers.id;
`

- all customers and total spending
```
SELECT 
	first_name,
	last_name,
    ifnull(SUM(amount), 0) AS total_spent
FROM customers 
LEFT JOIN orders 
ON orders.customer_id= customers.id
 GROUP BY customers.id 
 ORDER BY total_spent DESC ;
 ```

## Right Join

```
SELECT * FROM customers RIGHT JOIN orders ON orders.customer_id= customers.id;
 ```