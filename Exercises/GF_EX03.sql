-- Grace Foster
-- ITD 136-01
-- EXERCISE 03
--
-- 1
USE my_guitar_shop;
CREATE INDEX idx_order_date
ON orders (orders_order_date);

-- 2
DROP DATABASE IF EXISTS my_web_db;
CREATE DATABASE my_web_db DEFAULT CHARACTER SET utf8;
USE my_web_db;

CREATE TABLE IF NOT EXISTS users (
  id_users INT NOT NULL,
  email_address VARCHAR(100) NULL,
  first_name VARCHAR(45) NULL,
  last_name VARCHAR(45) NULL,
  PRIMARY KEY (id_users))
    ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS products (
  id_products INT NOT NULL,
  product_name VARCHAR(45) NULL,
  PRIMARY KEY (id_products))
    ENGINE = InnoDB;
  
  CREATE TABLE IF NOT EXISTS downloads (
  iddownloads INT NOT NULL,
  download_date DATETIME NULL,
  filename VARCHAR(45) NULL,
  id_users INT NOT NULL,
  id_products INT NOT NULL,
  PRIMARY KEY (iddownloads),
  INDEX fk_downloads_users_idx (id_users ASC) VISIBLE,
  INDEX fk_downloads_products1_idx (id_products ASC) VISIBLE,
  FOREIGN KEY (id_products) REFERENCES products(id_products),
  FOREIGN KEY (id_users) REFERENCES users(id_users))
  ENGINE = InnoDB;
  
-- 3
ALTER TABLE products
ADD products_price decimal DEFAULT (9.99),
ADD date_time DATETIME;

-- 4
ALTER TABLE users
MODIFY first_name VARCHAR(20) NOT NULL;
