SELECT title, released_year,
	CASE
		WHEN released_year >=2000 THEN 'Modern'
	ELSE '20th Century'
    END AS 'Period'
FROM books;