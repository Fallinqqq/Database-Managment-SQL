-- Grace foster
-- ITD 136-01
-- EXERCISE 05
--
-- 1
SELECT cat.category_name, prod.product_name, prod.list_price
FROM categories AS cat INNER JOIN products AS prod
	ON 	cat.category_id = prod.category_id
ORDER BY cat.category_name, prod.product_name ASC;

-- 2
SELECT cust.first_name, cust.last_name, ad.line1, ad.city, ad.state, ad.zip_code
FROM customers AS cust INNER JOIN addresses AS ad 
	ON cust.customer_id = ad.customer_id
WHERE cust.email_address = 'allan.sherwood@yahoo.com' ;

-- 3
SELECT cust.first_name, cust.last_name, ad.line1, ad.city, ad.state, ad.zip_code
FROM customers AS cust INNER JOIN addresses AS ad
	ON cust.customer_id = ad.customer_id
WHERE cust.customer_id = ad.customer_id AND cust.shipping_address_id = ad.address_id;

-- 4
SELECT cust.last_name, cust.first_name, o.order_date, prod.product_name, orit.item_price, orit.discount_amount, orit.quantity
FROM customers cust
	INNER JOIN orders o ON cust.customer_id = o.customer_id 
		INNER JOIN order_items orit ON o.order_id = orit.order_id
			INNER JOIN products prod ON orit.product_id = prod.product_id
ORDER BY cust.last_name, o.order_date, prod.product_name;

-- 5
SELECT prod1.product_name, prod1.list_price
FROM products prod1
	JOIN products prod2 ON prod1.product_id != prod2.product_id
		AND prod1.list_price = prod2.list_price
ORDER BY prod1.product_name ASC;

-- 6
SELECT cat.category_name, prod.product_id
FROM categories cat LEFT JOIN  products prod ON cat.category_id = prod.category_id
WHERE prod.product_id is NULL;

-- 7
SELECT 
	'SHIPPED' AS 'SHIPPING STATUS',
	order_id AS 'THE ORDER ID', order_date
FROM orders 
WHERE ship_date IS NOT NULL
UNION SELECT
    'NOT SHIPPED' AS 'SHIPPING STATUS',
    order_id AS 'THE ORDER ID', order_date
FROM orders
WHERE ship_date is NULL
ORDER BY order_date;
