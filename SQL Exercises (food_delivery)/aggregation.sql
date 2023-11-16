SELECT COUNT(NAME) FROM menuitems;

SELECT * FROM menuitems;

SELECT COUNT(DISTINCT restaurant_id) FROM menuitems;


SELECT ROUND(AVG(price),1) AS AVG_PRICE, MIN(price) AS MIN_PRICE, MAX(price) AS MAX_PRICE
FROM menuitems;

SELECT name AS ITEM_NAME, COUNT(restaurant_id)
FROM menuitems
GROUP BY ITEM_NAME;

SELECT name AS ITEM_NAME, COUNT(restaurant_id)
FROM menuitems
WHERE name IN ("Item1", "Item2")
GROUP BY ITEM_NAME;





SELECT A.user_id as USERS, SUM(A.total_amount) AS NO_OF_ORDERS FROM orders AS A
LEFT JOIN user_info B ON A.user_id = B.ID;


SELECT * FROM user_info;
SELECT * FROM orders;
SELECT * FROM order_items;

SELECT A.Name AS USER_NAME, COUNT(B.order_id) AS NO_OF_ORDERS FROM user_info AS A
LEFT JOIN orders B ON A.ID = B.user_id
GROUP BY 1
ORDER BY 2 DESC;



SELECT * FROM restaurant_info;
SELECT * FROM menuitems;

SELECT A.name AS RESTURANT_NAME, ROUND(AVG(B.price)) AS AVG_PRICE FROM restaurant_info AS A
LEFT JOIN menuitems B ON A.restaurant_id = B.restaurant_id
GROUP BY 1
ORDER BY 1;

SELECT * FROM restaurant_info;
SELECT * FROM orders;

SELECT A.name AS RESTAURANT_NAME, SUM(B.total_amount) AS TOTAL_SALES FROM restaurant_info AS A
LEFT JOIN orders B ON A.restaurant_id = B.restaurant_id
GROUP BY 1;

SELECT * FROM orders;
SELECT * FROM city;
SELECT * FROM order_items;
SELECT * FROM menuitems;
