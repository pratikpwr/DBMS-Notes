CREATE TABLE employees
(
	id INT NOT NULL AUTO_INCREMENT,
    last_name VARCHAR(20) NOT NULL DEFAULT 'NA',
    first_name VARCHAR(20) NOT NULL DEFAULT 'NA',
    middle_name VARCHAR(20)  NOT NULL DEFAULT 'NA',
    age INT NOT NULL,
    current_status VARCHAR(20) NOT NULL DEFAULT 'employed',
    PRIMARY KEY (id)
);
    