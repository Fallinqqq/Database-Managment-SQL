-- Grace Foster
-- ITD 136-01
-- EXERCISE 07
--
-- 1
SELECT COUNT(order_id), SUM(tax_amount)
FROM orders;

-- 2
SELECT cat.category_name, COUNT(prod.product_id) AS count, MAX(prod.list_price)
FROM categories AS cat
	INNER JOIN products prod ON cat.category_id = prod.category_id
GROUP BY cat.category_name
ORDER BY count DESC;

-- 3
SELECT cust.email_address, SUM(ordit.item_price) * COUNT(ordit.item_id) AS second_sum_by_count
FROM customers AS cust
	INNER JOIN orders AS ord ON cust.customer_id = ord.customer_id
    INNER JOIN order_items AS ordit ON ord.order_id = ordit.order_id
GROUP BY cust.customer_id
ORDER BY SUM(ordit.item_price) DESC;

-- 4
SELECT cust.email_address, COUNT(ordit.order_id) AS count, SUM(ordit.item_price - ordit.discount_amount) AS total_amount
FROM customers AS cust
	INNER JOIN orders AS ord ON cust.customer_id = ord.customer_id
    INNER JOIN order_items AS ordit ON ordit.order_id = ord.order_id
GROUP BY cust.customer_id
HAVING count > 1
ORDER BY total_amount DESC;

-- 5
SELECT cust.email_address, COUNT(ord.order_id) AS count, SUM(ordit.item_price - discount_amount) * COUNT(ordit.order_id) AS total_amount
FROM customers AS cust
	INNER JOIN orders AS ord ON cust.customer_id = ord.customer_id
    INNER JOIN order_items AS ordit ON ordit.order_id = ord.order_id
WHERE ordit.item_price > 400
GROUP BY cust.customer_id
HAVING count > 1
ORDER BY total_amount DESC;

-- 6
SELECT COALESCE(prod.product_name, 'Grand Total') AS 'Product Name', SUM(ordit.item_price - ordit.discount_amount) * COUNT(ordit.item_id) AS 'Total Amount'
FROM products prod 
	LEFT JOIN order_items ordit ON prod.product_id = ordit.product_id
WHERE ordit.item_price AND ordit.item_id IS NOT NULL
GROUP BY prod.product_name WITH ROLLUP;

-- 7
SELECT cust.email_address, COUNT(DISTINCT ordit.product_id) AS count
FROM customers AS cust 
	INNER JOIN orders ord ON cust.customer_id = ord.customer_id
    INNER JOIN order_items ordit ON ord.order_id = ordit.order_id
GROUP BY cust.email_address
HAVING count > 1;
