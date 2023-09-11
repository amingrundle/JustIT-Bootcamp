USE store;

SELECT * FROM customers;


-- First name in asc order
SELECT first_name
FROM customers
ORDER BY first_name ASC;

-- Customers with a birthdate > 1990-01-01
SELECT birth_date, first_name
FROM customers
WHERE birth_date > ('1990-01-01') ;

-- first names beginning with M and last name beginning with alter
SELECT first_name, last_name
FROM customers
WHERE first_name LIKE 'M%' 
  AND last_name LIKE 'A%' ;
  
  SELECT first_name, last_name, points
  FROM customers;
  
  SELECT MIN(points) AS min_points, MAX(points) AS max_points
  FROM customers ;
  
  SELECT *
  FROM customers;
  SELECT city, first_name, last_name, customer_id
  FROM customers
  WHERE first_name = ('Levy') 
   AND Last_name = ('Mynett');
   
   SELECT *
   FROM products ;
   SELECT name, unit_price
   FROM products
  WHERE unit_price BETWEEN 3 AND 8 ; 
   
SELECT customer_id, status
FROM orders 
WHERE customer_id = 10;

SELECT name
FROM shippers
WHERE shipper_id = 5 ;

SELECT COUNT(customer_id) AS num_customers , city
FROM customers
GROUP BY city
ORDER BY city ASC;

SELECT points, customer_id
FROM customers
HAVING points >= 2000; 

SELECT *
FROM products 
WHERE name LIKE 'Pork%' ; 

SELECT * 
FROM customers 
WHERE first_name IN ('Babara', 'Ilene' , 'Romola') ;

SELECT *
FROM orders
WHERE shipped_date IS NOT NULL ;

SELECT customer_id
FROM orders 
WHERE status = 3;





  