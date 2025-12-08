-- SQL Framework
SELECT …………….. 		- fields to be selected. To select all fields in the table use ( * )
	DISTINCT			- used to select unique records in a field
	TOP *				- *used to limit the selected results by a specified number of records.
	AS					- create an alias name for the selected results record ONLY.
FROM …………………		- the table you want to query
	JOIN …………………..	- join conditions with other tables
	WHERE …………......	- filter the results in your query. this is a conditional statement.
	GROUP BY ………….	- used to aggregate/put together similar data.
	HAVING ………………	- filter the results of the aggregated data (only used together with WHERE clause)
ORDER BY ………….		- used to sort the selected results of the query
LIMIT * ……………….		- *used to limit the selected results by a specified number of records.


-- Order of execution:
1 - FROM
2 - SELECT
3 - SORT

--------The Framework
2 SELECT 
	DISTINCT
	TOP
	AS
1 FROM 
	JOIN
	WHERE 
	GROUP BY 
	HAVING
3 ORDER BY 
3 LIMIT
--------------------------------
3 SELECT *
1 FROM orders
2 WHERE notes IS NULL;


