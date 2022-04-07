-- Grace Foster
-- ITD 136-01
-- HOMEWORK 06
---- USE my_guitar_shop; 
--  
-- #1 
-- 
INSERT INTO categories 
-- VALUES (Default, 'Brass'); 
VALUES (5, 'Brass'); 
-- 
-- SELECT * FROM categories; 
-- 
-- #2 
-- 
UPDATE categories 
SET category_name = 'Woodwinds' 
-- WHERE category_ie = 5; 
WHERE category_name='Brass'; 
-- 
 -- SELECT * FROM categories;
-- 
-- #3 
-- 
INSERT INTO products  
   (product_id,category_id, product_code, product_name, description, list_price, date_added) 
VALUES 
  (11, 5, 'dgx_640', 'Yamaha DGX 640 88-Key Digital Piano', 'Long description to come.', 779.99, 
NOW()); 
-- 
-- SELECT * FROM products; 
-- 
-- #4 
--  
UPDATE products 
SET discount_percent = 35 
-- WHERE product_id = 11; 
WHERE product_code = 'dgx_640'; 
-- 
-- SELECT * FROM products; 
-- 
-- #5 
-- 
DELETE FROM products 
-- WHERE category_id = 5; 
WHERE product_code = 'dgx_640'; 
 
DELETE FROM categories 
-- WHERE category_id = 5; 
WHERE category_name = 'Woodwinds'; 
-- 
SELECT * FROM products; 
SELECT * FROM categories;