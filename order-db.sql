DROP SCHEMA orders;

CREATE SCHEMA IF NOT EXISTS orders;

DROP TABLE IF EXISTS orders.orders;

CREATE TABLE orders.orders (
                        id SERIAL PRIMARY KEY,
                        receiver_name VARCHAR(100) NOT NULL,
                        receiver_contact VARCHAR(20) NOT NULL,
                        sender_name VARCHAR(100) NOT NULL,
                        sender_contact VARCHAR(20) NOT NULL,
                        sender_email VARCHAR(100),
                        distance DECIMAL(10, 2), -- in kilometers
                        price DECIMAL(10, 2),    -- total delivery price
                        item_code VARCHAR(50) NOT NULL,
                        height DECIMAL(10, 2),   -- in cm
                        weight DECIMAL(10, 2),   -- in kg
                        source_postcode VARCHAR(20) NOT NULL,
                        destination_postcode VARCHAR(20) NOT NULL,
                        created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);