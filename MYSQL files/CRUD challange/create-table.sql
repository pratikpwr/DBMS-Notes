CREATE TABLE shirts
(
	shirt_id INT NOT NULL AUTO_INCREMENT,
    article VARCHAR(50),
    color VARCHAR(50),
    shirt_size VARCHAR(1),
    last_worn INT,
    PRIMARY KEY (shirt_id)
);