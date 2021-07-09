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