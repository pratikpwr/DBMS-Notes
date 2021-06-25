# Refining Selections


## DISTINCT  
returns distincts rows - no repitation

```
SELECT DISTINCT author_lname From books;
```

## ORDER BY  
- order the results
```
SELECT author_fname, released_year FROM books ORDER BY released_year;
```  
-  its asc by default for desc 
```
SELECT author_fname, released_year FROM books ORDER BY released_year DESC;
```
- 2 represents the second field after SELECT
```
SELECT author_fname, released_year FROM books ORDER BY 2;
```  
- can use multiple order by  
```
SELECT author_fname, released_year FROM books ORDER BY 1, 2;
```

## LIMIT  
- how many results you want  
```
SELECT author_fname, released_year FROM books LIMIT 3;
```

## LIKE
- better searching  
```
SELECT * FROM books WHERE author_fname LIKE '%da%';
```  
=> returns rows containing da  
- n* underscores  
 returns n long results  
```
SELECT * FROM books WHERE author_fname LIKE '%____%';
```  
=> returns author last name having length 4



