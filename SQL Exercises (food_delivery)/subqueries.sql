SELECT * FROM menuitems 
WHERE
price >= (
SELECT AVG(price) AS AVG_PRICE FROM menuitems
)
ORDER BY 5;


SELECT * FROM orders;

SELECT FIRST_USER_DATE, COUNT(user_id) AS USERS
FROM
(SELECT user_id, MIN(DATE(order_date)) AS FIRST_USER_DATE
FROM orders
GROUP BY 1) AS FIRST_USER_DATE
GROUP BY 1
ORDER BY 2 DESC;


SELECT * FROM menuitems
WHERE price IN (SELECT price FROM menuitems WHERE price > 5);


