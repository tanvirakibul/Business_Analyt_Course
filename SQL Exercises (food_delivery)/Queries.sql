-- SELECT * FROM city;

-- SELECT * FROM orders
-- where order_id = 1;

SELECT name, phone, otp_verified FROM user_info;

SELECT * FROM user_info;

SELECT DISTINCT name FROM menuitems;


SELECT * FROM menuitems
WHERE price >= 10;

SELECT * FROM menuitems
WHERE price <> 10;

SELECT * FROM menuitems
WHERE price >= 10 AND restaurant_id = 8;

SELECT * FROM menuitems
WHERE price >= 10 OR restaurant_id = 8;

SELECT * FROM menuitems
WHERE price IN (8,9,10);

SELECT * FROM menuitems
WHERE price BETWEEN 8 AND 9;

SELECT * FROM user_info
WHERE name LIKE "J%";

SELECT * FROM user_info
WHERE name LIKE "%n";

SELECT * FROM menuitems
ORDER BY restaurant_id;

SELECT * FROM menuitems
ORDER BY restaurant_id ASC;

SELECT * FROM menuitems
ORDER BY restaurant_id DESC;

SELECT * FROM menuitems
ORDER BY restaurant_id ASC, price ASC;

SELECT * FROM menuitems
ORDER BY restaurant_id ASC, price DESC;


SELECT * FROM rider_info
LIMIT 20;