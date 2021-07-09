SELECT COUNT(*) FROM books;

SELECT COUNT(DISTINCT author_fname) FROM books;

SELECT author_lname, COUNT(*) FROM books GROUP BY author_lname;

SELECT MIN(pages) FROM books;
SELECT MAX(pages) FROM books;

SELECT title, pages FROM books WHERE pages = ( SELECT MIN(pages) FROM books);

-- author initial release year only
SELECT author_fname, author_lname, MIN(released_year) FROM books GROUP BY author_fname, author_lname;

SELECT SUM(pages) AS total_pages FROM books;

-- avg pages by author
SELECT author_fname, AVG(pages) FROM books GROUP BY author_fname, author_lname;


