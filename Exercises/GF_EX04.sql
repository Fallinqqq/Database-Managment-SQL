-- Grace Foster
-- ITD 136-01
-- EXERCISE 04
--
-- 1
SELECT product_code, product_name, list_price, discount_percent 
FROM products
ORDER BY list_price DESC;

-- 2
SELECT CONCAT(last_name, ', ', first_name) AS full_name
FROM customers
WHERE LEFT(last_name, 1) between 'M%' and 'Z%'
ORDER BY last_name ASC;

-- 3
SELECT product_name, list_price, date_added
FROM products
WHERE NOT (list_price >= 500
AND list_price <= 2000)
ORDER BY date_added DESC;

-- 4
SELECT product_name, list_price, discount_percent,
	ROUND(discount_percent / 100 * list_price, 2) AS discount_amount,
    ROUND(list_price - (discount_percent / 100 * list_price)  , 2) AS discount_price
FROM products
ORDER BY discount_amount DESC
LIMIT 5;

-- 5
SELECT item_id, item_price, discount_amount, quantity,
	ROUND(item_price * quantity) AS price_total,
    ROUND(discount_amount * quantity) AS discount_total,
    ROUND(item_price * quantity) AS item_total
FROM order_items
WHERE (item_price - discount_amount) * quantity > 500
ORDER BY item_total DESC;

-- 6
SELECT order_id, order_date, ship_date
FROM orders
WHERE ship_date is NULL;

-- 7
SELECT CURRENT_DATE AS today_unformatted,
	DATE_FORMAT(CURRENT_DATE, '%d/%m/%y') AS 'today_formatted';

-- 8
SELECT 100 AS price,
.07 AS tax_rate,
100 * .07 AS tax_amount,
(100) + (100 * .07) AS total;
