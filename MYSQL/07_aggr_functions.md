 # Aggregate Functions

## COUNT  
- counts the total number
```
SELECT COUNT(*) FROM books;
SELECT COUNT(DISTINCT author_fname) FROM books;
```

## GROUP BY
- groups the result
```
SELECT author_lname, COUNT(*) FROM books GROUP BY author_lname;
```

## MIN and MAX

```
SELECT MIN(pages) FROM books;
SELECT MAX(pages) FROM books;
```
- getting book with min pages
```
SELECT title, pages FROM books WHERE pages = ( SELECT MIN(pages) FROM books);
```

## SUM
- sum things in result
```
SELECT SUM(pages) FROM books;
```

## AVG
- return average
```
SELECT author_fname, AVG(pages) FROM books GROUP BY author_fname, author_lname;
```
=> avg pages by author

