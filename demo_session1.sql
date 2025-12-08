create table new_customers (
	id INT,
	username varchar(50),
	email VARCHAR(100)
);

-- Regular way
INSERT INTO new_customers (id, username, email) 
VALUES (23,
		'glory',
		'glory@gmail.com'
		);

-- bringing values from other tables
INSERT INTO new_customers (id, username, email) 
VALUES ((SELECT old_id
		FROM user_id),
		(SELECT cust_username
		FROM old_customers),
		(SELECT user_email
		FROM old_email)
		);



CREATE TABLE old_customers (
	cust_username VARCHAR(50)
);

INSERT INTO old_customers (cust_username) VALUES ('glory'), ('boana'), ('patty');

DROP TABLE new_customers;



SELECT cust_username
FROM old_customers;

SELECT old_id
FROM user_id;

SELECT user_email
FROM old_email;


CREATE TABLE user_id (
	old_id INT
);

INSERT INTO user_id (old_id) VALUES (5), (6), (7), (8);

CREATE TABLE old_email (
	user_email VARCHAR(50)
);

INSERT INTO old_email (user_email) VALUES ('glory@gmail.com'), ('boana@gmaio.com'), ('patty@gmail.com'), ('ify@gmail.com');



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
SELECT 
	DISTINCT
	TOP
	AS
FROM 
	JOIN
	WHERE 
	GROUP BY 
	HAVING
ORDER BY 
LIMIT
--------------------------------
SELECT *
FROM customers;

