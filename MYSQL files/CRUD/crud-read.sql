SELECT * FROM cats;

SELECT * FROM cats WHERE age = 11 OR name = 'Egg';

SELECT name, age FROM cats WHERE breed = 'tabby'; #just tabby cats

SELECT cat_id, age FROM cats WHERE cat_id = age; # cat id is same as age

SELECT cat_id AS id, name FROM cats; # aliases