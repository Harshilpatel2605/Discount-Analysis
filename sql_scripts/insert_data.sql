-- Insert customers

INSERT INTO customers (customer_id, name, signup_date, city, email) VALUES
(1, 'Alice Johnson', '2024-01-05', 'New York', 'alice.johnson@example.com'),
(2, 'Bob Smith', '2024-02-10', 'Los Angeles', 'bob.smith@example.com'),
(3, 'Charlie Brown', '2024-03-15', 'Chicago', 'charlie.brown@example.com'),
(4, 'Diana Prince', '2024-04-01', 'Houston', 'diana.prince@example.com'),
(5, 'Ethan Hunt', '2024-05-20', 'Miami', 'ethan.hunt@example.com'),
(6, 'Fiona White', '2024-06-11', 'San Francisco', 'fiona.white@example.com'),
(7, 'George Miller', '2024-07-18', 'Seattle', 'george.miller@example.com'),
(8, 'Hannah Davis', '2024-08-22', 'Boston', 'hannah.davis@example.com'),
(9, 'Ian Scott', '2024-09-09', 'Denver', 'ian.scott@example.com'),
(10, 'Julia Roberts', '2024-10-12', 'Dallas', 'julia.roberts@example.com');


-- Insert products
INSERT INTO products (product_id, name, category, price) VALUES
(101, 'iPhone 15', 'Electronics', 999.99),
(102, 'Samsung Galaxy S23', 'Electronics', 899.99),
(103, 'MacBook Air M2', 'Computers', 1199.00),
(104, 'Dell XPS 13', 'Computers', 1099.00),
(105, 'Sony WH-1000XM5', 'Audio', 399.99),
(106, 'Bose QuietComfort 45', 'Audio', 329.99),
(107, 'Apple Watch Series 9', 'Wearables', 499.00),
(108, 'Fitbit Versa 4', 'Wearables', 229.99),
(109, 'Logitech MX Master 3S', 'Accessories', 119.99),
(110, 'Anker Power Bank 20k mAh', 'Accessories', 59.99);


-- Insert orders
INSERT INTO orders (order_id, customer_id, order_date, total_amount, discount_applied) VALUES
(201, 1, '2024-07-01', 2398.99, TRUE),
(202, 2, '2024-07-03', 1099.00, FALSE),
(203, 3, '2024-07-10', 1329.99, TRUE),
(204, 4, '2024-07-15', 399.99, FALSE),
(205, 5, '2024-07-20', 1529.99, TRUE),
(206, 6, '2024-07-21', 499.00, FALSE),
(207, 7, '2024-07-23', 2799.00, TRUE),
(208, 8, '2024-07-25', 329.99, FALSE),
(209, 9, '2024-07-28', 449.98, TRUE),
(210, 10, '2024-07-30', 1159.98, TRUE);

-- Insert order_items
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES
(301, 201, 101, 2, 999.99),
(302, 201, 110, 1, 59.99),
(303, 202, 104, 1, 1099.00),
(304, 203, 105, 1, 399.99),
(305, 203, 108, 1, 229.99),
(306, 204, 105, 1, 399.99),
(307, 205, 103, 1, 1199.00),
(308, 205, 109, 1, 119.99),
(309, 205, 110, 2, 59.99),
(310, 206, 107, 1, 499.00),
(311, 207, 103, 2, 1199.00),
(312, 207, 101, 1, 999.99),
(313, 208, 106, 1, 329.99),
(314, 209, 109, 2, 119.99),
(315, 210, 102, 1, 899.99),
(316, 210, 110, 2, 59.99);

-- Insert promotions
INSERT INTO promotions (promo_id, product_id, promo_type, discount_percentage, start_date, end_date) VALUES
(401, 101, 'Summer Sale', 10.00, '2024-06-01', '2024-06-15'),
(402, 102, 'Clearance', 15.00, '2024-07-01', '2024-07-31'),
(403, 103, 'Back to School', 12.50, '2024-08-01', '2024-08-20'),
(404, 104, 'Holiday Discount', 20.00, '2024-12-01', '2024-12-31'),
(405, 105, 'Flash Sale', 25.00, '2024-09-10', '2024-09-12'),
(406, 106, 'Weekend Deal', 18.00, '2024-10-05', '2024-10-07'),
(407, 107, 'Festive Offer', 15.00, '2024-11-01', '2024-11-10'),
(408, 108, 'Black Friday', 30.00, '2024-11-25', '2024-11-30'),
(409, 109, 'Cyber Monday', 20.00, '2024-12-02', '2024-12-02'),
(410, 110, 'Year End Sale', 40.00, '2024-12-28', '2024-12-31');
