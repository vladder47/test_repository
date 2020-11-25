BEGIN;

DROP TABLE IF EXISTS clients CASCADE;
CREATE TABLE clients
(
    id   BIGSERIAL PRIMARY KEY,
    name VARCHAR(255) UNIQUE
);
INSERT INTO clients (name)
VALUES ('Vladislav'),
       ('Boris'),
       ('Denis'),
       ('Vasiliy'),
       ('temp_user');

DROP TABLE IF EXISTS products CASCADE;
CREATE TABLE products
(
    id            BIGSERIAL PRIMARY KEY,
    name          VARCHAR(255) UNIQUE,
    current_price INTEGER
);
INSERT INTO products (name, current_price)
VALUES ('phone', 1000),
       ('notebook', 3500),
       ('fridge', 8000),
       ('microwave', 2500),
       ('temp_product', 10000);
END;