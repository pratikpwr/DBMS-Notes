
## String Functions

- CONCAT  
`
SELECT CONCAT(author_fname, ' ', author_lname)
FROM books;
`

- CONCAT_WS  
concat with separator  
`
SELECT CONCAT_WS(' - ', author_fname, author_lname)
FROM books;
`

- SUBSTRING  OR SUBSTR  
gives part of string  
`
SELECT CONCAT('Hello World!', 1, 4);
`  
=> Hell  
`
SELECT CONCAT('Hello World!', 7);
`  
=> World!  
`
SELECT CONCAT('Hello World!', -3);
`  
=> ld!


- Using concat and substring  
`
SELECT CONCAT(SUBSTRING(title, 1, 10), '...') FROM books;
`

- REPLACE  
`
SELECT REPLACE('Hello World!', 'Hell', '!@#$');
`  
=> !@#$o World!

- REVERSE   
`
SELECT REVERSE('Hello World!');
`  
=> !dlroW olleH
  

- CHAR_LENGTH  
length of string   
`
SELECT CHAR_LENGTH('Hello World!');
`  
=>12

- UPPER  
converts string to upper case  
`
SELECT UPPER('Hello World!');
`  
=> HELLO WORLD!

- LOWER  
converts to lower case  
`
SELECT LOWER('Hello World!');
`  
=> hello world!
