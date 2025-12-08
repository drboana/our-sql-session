-- Customer Table
CREATE TABLE customers (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    age INT,
    city VARCHAR(50)
);

-- Product Table
CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    category VARCHAR(50),
    price NUMERIC(10,2),
    stock INT
);

-- Orders Table
CREATE TABLE orders (
    id SERIAL PRIMARY KEY,
    customer_id INT REFERENCES customers(id),
    product_id INT REFERENCES products(id),
    quantity INT,
    order_date DATE,
    notes TEXT
);

-- Customer Dataset
INSERT INTO customers (first_name, last_name, email, age, city) VALUES
('John', 'Doe', 'john@example.com', 28, 'New York'),
('Jane', 'Smith', 'jane@example.com', 34, 'Los Angeles'),
('Alice', 'Brown', 'alice@example.com', 22, 'Chicago'),
('Bob', 'Johnson', 'bob@example.com', 41, 'Houston'),
('Mary', 'Davis', 'mary@example.com', 19, 'Phoenix'),
('Tom', 'Wilson', 'tom@example.com', 55, 'Philadelphia'),
('Sara', 'Taylor', 'sara@example.com', 31, 'San Antonio'),
('Paul', 'Moore', 'paul@example.com', 46, 'San Diego'),
('Linda', 'Clark', 'linda@example.com', 27, 'Dallas'),
('David', 'Hall', 'david@example.com', 38, 'San Jose'),
('Emma', 'Young', 'emma@example.com', 24, 'Austin'),
('Chris', 'King', 'chris@example.com', 29, 'Jacksonville'),
('Laura', 'Scott', 'laura@example.com', 52, 'Fort Worth'),
('James', 'Green', 'james@example.com', 33, 'Columbus'),
('Sophia', 'Adams', 'sophia@example.com', 44, 'Charlotte'),
('Ethan', 'Baker', 'ethan@example.com', 18, 'San Francisco'),
('Mia', 'Nelson', 'mia@example.com', 26, 'Indianapolis'),
('Liam', 'Carter', 'liam@example.com', 37, 'Seattle'),
('Olivia', 'Mitchell', 'olivia@example.com', 48, 'Denver'),
('Noah', 'Perez', 'noah@example.com', 30, 'Boston');


-- Product dataset
INSERT INTO products (name, category, price, stock) VALUES
('Laptop A', 'Electronics', 899.99, 10),
('Laptop B', 'Electronics', 1199.99, 5),
('Mouse X', 'Accessories', 24.99, 100),
('Keyboard Z', 'Accessories', 49.99, 80),
('Desk Chair', 'Furniture', 199.99, 20),
('Office Desk', 'Furniture', 299.99, 15),
('Smartphone P', 'Electronics', 699.99, 25),
('Tablet T', 'Electronics', 399.99, 30),
('Monitor 24"', 'Electronics', 149.99, 40),
('Monitor 27"', 'Electronics', 229.99, 25),
('USB Cable', 'Accessories', 9.99, 200),
('Headphones H1', 'Accessories', 59.99, 60),
('Bookshelf', 'Furniture', 149.99, 10),
('Coffee Table', 'Furniture', 129.99, 8),
('Gaming Chair', 'Furniture', 249.99, 12),
('Camera C1', 'Electronics', 549.99, 7),
('Tripod', 'Accessories', 39.99, 50),
('Router R1', 'Electronics', 89.99, 35),
('SSD 1TB', 'Electronics', 129.99, 45),
('Flash Drive 64GB', 'Accessories', 14.99, 150);


-- Orders dataset
INSERT INTO orders (customer_id, product_id, quantity, order_date, notes) VALUES
(1, 1, 1, '2024-01-10', NULL),
(1, 3, 2, '2024-02-14', 'Gift'),
(2, 2, 1, '2024-01-22', NULL),
(3, 4, 1, '2024-03-05', 'Urgent'),
(4, 5, 2, '2024-03-12', NULL),
(5, 7, 1, '2024-03-18', NULL),
(6, 9, 1, '2024-02-01', 'Deliver ASAP'),
(6, 11, 4, '2024-02-11', NULL),
(7, 12, 1, '2024-03-22', NULL),
(8, 13, 1, '2024-03-25', NULL),
(9, 14, 1, '2024-03-11', NULL),
(10, 10, 2, '2024-02-15', NULL),
(11, 8, 1, '2024-02-17', NULL),
(12, 6, 1, '2024-01-29', NULL),
(13, 15, 1, '2024-03-27', NULL),
(14, 16, 1, '2024-03-04', NULL),
(15, 17, 2, '2024-03-19', NULL),
(16, 18, 1, '2024-03-20', NULL),
(17, 19, 2, '2024-02-28', NULL),
(20, 20, 5, '2024-02-03', 'Bulk order');
