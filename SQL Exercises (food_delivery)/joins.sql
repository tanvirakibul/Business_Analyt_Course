INSERT INTO user_info
VALUES
(41,NOW(),"Rakib","1956075066","Android",1,1);

SELECT * FROM user_info;

UPDATE user_info
SET CITY_ID = 3
WHERE name = "Rakib";

SET SQL_SAFE_UPDATES = 0;

DELETE FROM user_info
WHERE name = "Rakib";

SELECT phone as PHONE_NUMBER FROM user_info;

SELECT * FROM user_info as USERS;

SELECT * FROM user_info AS A
INNER JOIN orders AS B ON A.ID = B.user_id;

SELECT * FROM user_info;
SELECT * FROM orders;

SELECT DISTINCT A.* FROM user_info AS A
INNER JOIN orders AS B ON A.ID = B.user_id;

SELECT DISTINCT * FROM user_info AS A
LEFT JOIN orders B ON A.ID = B.user_id
WHERE B.user_id IS NULL;

SELECT * FROM user_info as A
RIGHT JOIN city B ON A.CITY_ID = B.city_id;


SELECT * FROM restaurant_info;
SELECT * FROM menuitems;

SELECT A.restaurant_id AS RESTAURANT_ID, A.name AS RETAURANT_NAME, A.contact_number As CONTACT_NUMBER,
 B.name AS MENU_ITEM, B.availability as AVAILABILITY_STATUS
FROM restaurant_info AS A
LEFT JOIN menuitems B ON A.restaurant_id = B.restaurant_id;


