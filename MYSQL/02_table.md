# Table

A database is just a bunch of tables.  
`Table` is collection of data in structured format in database.

## Basic Queries

- Shows tables in database  
  `SHOW TABLES;`

- Lists all the columns in the table  
  `SHOW COLUMNS FROM <tablename>;`  
  `DESC <tablename>;`

- To delete table  
  `DROP TABLE <tablename>;`

- Shows table content  
  `SELECT * FROM <tablename>;`

## Create Table Queries

- Create a table with column name and value type its gonna hold.

```
CREATE TABLE tablename
(
	Column_name data_type,
	Column_name data_type
);
```

- If you set it to `NOT NULL` , the insert query will not insert Null Value. If you also left blank value while inserting after setting it to `NON NULL`, it uses default value with warning.

```
CREATE TABLE tablename
(
	Column_name data_type NOT NULL,
	Column_name data_type NOT NULL
);
```

- You can set default value while creating table
- But in this case the database user can explecitely set the value to NULL while `INSERT` Query

```
CREATE TABLE tablename
(
	Column_name data_type DEFAULT 'unnamed',
	Column_name data_type DEFAULT 99
);
```

- Here user can not set value to `NULL`.

```
CREATE TABLE tablename
(
	Column_name data_type NOT NULL DEFAULT 'unnamed',
	Column_name data_type NOT NULL DEFAULT 99
);
```

- Primary key helps assigning unique key to each row
- Two row can not have same key
  If we use auto increment we don’t have to specify unique id each time while inserting data

```
CREATE TABLE users
(
	id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(20) DEFAULT 'unnmaed',
    age INT,
    PRIMARY KEY (id)
);
```
