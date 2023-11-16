
SELECT * FROM menuitems;
SELECT * FROM restaurant_info;

SELECT A.name as RESTAURANT_NAME, B.price as PRICE FROM restaurant_info AS A
LEFT JOIN menuitems B ON A.restaurant_id = B.restaurant_id
WHERE B.price > 10;



SELECT * FROM user_info;
SELECT * FROM orders;

SELECT A.name as USER_NAME, B.total_amount FROM user_info AS A

JOIN orders B ON A.ID = B.user_id
WHERE B.total_amount > (SELECT AVG(total_amount) FROM orders)
ORDER BY 2 DESC;



SELECT * FROM user_info;

SELECT name AS USER_NAME,
CASE 
WHEN name LIKE ("S%") THEN "Starts with S"
WHEN name LIKE ("e%") THEN "Ends with e"
ELSE "No Match"
END AS NAME_SEARCH
FROM user_info;


SELECT * FROM payment_type;

SELECT * FROM payment_transactions;


SELECT B.name AS PAYMENT_TYPE, COUNT(A.pay_type_id) as COUNT_OF_PAYMENT_ID  
FROM payment_transactions A
LEFT JOIN payment_type B on A.pay_type_id = B.pay_type_id
GROUP BY 1;

SELECT * FROM orders;
SELECT * FROM restaurant_info;

SELECT A.name AS RESTAURAN_NAME, COALESCE(B.total_amount,0) AS NO_OF_ORDERS FROM restaurant_info AS A
LEFT JOIN orders B ON A.restaurant_id = B.restaurant_id













