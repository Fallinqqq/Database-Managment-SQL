-- Grace Foster
-- ITD 136-01
-- EXERCISE 08
--
-- 1 
SELECT DISTINCT category_name 
FROM categories cat
WHERE cat.category_id IN (SELECT category_id FROM products)
ORDER BY category_name;

-- 2
SELECT product_name, list_price
FROM products
WHERE list_price > (SELECT AVG(list_price) FROM products)
ORDER by list_price DESC;

-- 3
SELECT category_name 
FROM categories cat
WHERE NOT EXISTS(SELECT * FROM products prod
WHERE prod.category_id = cat.category_id);

-- 4
SELECT cust.email_address, ordid.order_id, sum((ordid.item_price - ordid.discount_amount) * ordid.quantity) AS item_total
FROM order_items ordid 
	JOIN orders ord ON ordid.order_id = ord.order_id
    JOIN customers cust ON ord.customer_id = cust.customer_id
GROUP BY cust.email_address, ordid.order_id;

SELECT CustomerOrder.email_address, MAX(CustomerOrder.item_total) as LargestOrder
FROM (SELECT cust.email_address, ordid.order_id, SUM((ordid.item_price - ordid.discount_amount)  * ordid.quantity) AS item_total
FROM order_items ordid 
	JOIN orders ord on ordid.order_id = ord.order_id
    JOIN customers cust ON ord.customer_id = cust.customer_id
GROUP BY cust.email_address, ordid.order_id) AS CustomerOrder
GROUP BY CustomerOrder.email_address;

-- 5
SELECT prod1.discount_percent, prod1.product_name
FROM products prod1
WHERE NOT EXISTS (SELECT * FROM products prod2 
WHERE prod2.discount_percent = prod1.discount_percent AND prod2.product_name != prod1.product_name)
ORDER BY prod1.product_name;

-- 6
SELECT email_address, order_id, order_date
FROM customers cust
	JOIN orders ord ON cust.customer_id = ord.customer_id
WHERE order_date = (SELECT MIN(order_date) FROM orders
WHERE customer_id = ord.customer_id);