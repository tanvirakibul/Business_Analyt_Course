
SELECT PRICE_SENSITIVITY, COUNT(*) AS TOTAL_ITEMS
FROM
(SELECT name as NAME, restaurant_id as RES_ID,
CASE
WHEN price >=0  AND price <=5 THEN "Low Value" 
WHEN price > 5 AND price <=10 THEN "Mid Value"
WHEN price > 10 THEN "High Value"
ELSE "Uncategorized"
END AS PRICE_SENSITIVITY
FROM menuitems
) B
GROUP BY 1;