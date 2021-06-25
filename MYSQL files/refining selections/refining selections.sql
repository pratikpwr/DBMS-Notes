-- Refining selections

SELECT DISTINCT author_lname From books;

SELECT DISTINCT concat(author_fname, ' ', author_lname) FROM books;

SELECT author_fname, released_year FROM books ORDER BY released_year DESC;

SELECT author_fname, released_year FROM books ORDER BY 2;

SELECT author_fname, released_year FROM books ORDER BY 1, 2;

SELECT * FROM books WHERE author_fname LIKE '%dav%';

SELECT * FROM books WHERE author_fname LIKE '____';
