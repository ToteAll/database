DROP SCHEMA product;

CREATE SCHEMA IF NOT EXISTS product;

DROP TABLE IF EXISTS product.products;

       -- Create table
CREATE TABLE product.products (
                          product_id SERIAL PRIMARY KEY,
                          name VARCHAR(100) NOT NULL,
                          delivery_charge NUMERIC(6, 2) NOT NULL
);

-- Insert data
INSERT INTO product.products (name, delivery_charge) VALUES
                                                 ('Small Parcel', 4.50),
                                                 ('Medium Box', 8.75),
                                                 ('Large Box', 12.99),
                                                 ('Envelope', 2.99),
                                                 ('Crate', 20.00),
                                                 ('Pallet', 45.00);
