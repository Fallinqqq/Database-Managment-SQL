-- Grace Foster
-- ITD136-01
-- EXERCISE: 06
--
-- 1
INSERT INTO categories
	(category_id, category_name)
VALUES
(default, 'Brass');

-- 2
UPDATE categories
SET category_name = 'Woodwinds'
WHERE category_id = 5;

-- 3
INSERT INTO products
	(product_id, category_id, product_code, product_name, description, list_price, discount_percent, date_added)
VALUES
(default, '5', 'dgx_640', 'Yamaha DGX 640 88-Key Digital Piano', 'Long description to come', '799.99', '0', NOW());

-- 4
UPDATE products
SET discount_percent = 35.00
WHERE product_id = 11;

-- 5 
DELETE FROM products
WHERE category_id = 4;
DELETE FROM categories
WHERE category_id = 4;
COMMIT;