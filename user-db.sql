-- 1. Create a new schema called 'app'
CREATE SCHEMA IF NOT EXISTS app;

-- 2. Create the users table inside the 'app' schema
CREATE TABLE IF NOT EXISTS app.users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL UNIQUE,
    password_hash VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 3. Insert some sample users
INSERT INTO app.users (username, email, password_hash)
VALUES
    ('john_doe', 'john@example.com', 'hashed_password_123'),
    ('jane_smith', 'jane@example.com', 'hashed_password_456'),
    ('sam_wilson', 'sam@example.com', 'hashed_password_789');