# CRUD OPERATIONS

## C - CREATE

```
CREATE TABLE cats
(
	cat_id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(100),
    breed VARCHAR(100),
    age INT,
    PRIMARY KEY (cat_id)
);
```

## R - READ

- List all the columns from table

```
SELECT * FROM cats;
```

- List only specific column

```
SELECT name FROM cats;
```

- List multiple columns by separating them with commas

```
SELECT name, age FROM cats;
```

**WHERE clause**

- To get specific data

```
SELECT * FROM cats WHERE age=4;

SELECT name, age FROM cats WHERE breed = 'tabby'; #just tabby cats

SELECT cat_id, age FROM cats WHERE cat_id = age;
# cat id is same as age
```

**Aliases AS**

- change name of column only in output

```
SELECT cat_id AS id, name FROM cats;
```

**Thumb Rule - Before Update and Delete Select / verify the data.**

## U - UPDATE

```
UPDATE cats SET breed = 'ShortHair'
WHERE breed = 'Tabby';
```

## D - DELETE

```
DELETE FROM cats WHERE name = 'Egg';
```

- This will delete all cats

```
DELETE FROM cats;
```
