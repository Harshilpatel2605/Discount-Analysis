-- Insert customers

INSERT INTO customers (customer_id, name, signup_date, city, email) VALUES
	(1, 'John Doe', '2023-01-01', 'Bangalore', 'john@example.com'),
	(2, 'Jane Smith', '2023-01-16', 'Delhi', 'jane@example.com'),
	(3, 'Bob Brown', '2023-02-01', 'Mumbai', 'bob@example.com');

-- Insert products

INSERT INTO products (product_id, name, category, price) VALUES
	(1, 'Smartphone', 'Electronics', 20000),
	(2, 'T-Shirt', 'Apparel', 500),
	(3, 'Laptop', 'Electronics', 45000),
	(4, 'Sneakers', 'Footwear', 3000);

-- Insert orders

INSERT INTO orders (order_id, customer_id, order_date, total_amount, discount_applied) VALUES
	(1, 1, '2023-03-01', 20000, 0),
	(2, 2, '2023-03-05', 450, 1),
	(3, 1, '2023-04-01', 5000, 1),
	(4, 3, '2023-05-01', 45000, 0);

-- Insert order_items

INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES
	(1, 1, 1, 1, 20000),
	(2, 2, 2, 1, 500),
	(3, 3, 2, 10, 500),
	(4, 4, 3, 1, 45000);

-- Insert promotions

INSERT INTO promotions (promo_id, product_id, promo_type, discount_percentage, start_date, end_date) VALUES
	(1, 2, 'Flat', 10, '2023-03-01', '2023-03-31'),
	(2, 2, 'Flat', 20, '2023-04-01', '2023-04-30'),
	(3, 3, 'Percentage', 15, '2023-05-01', '2023-05-31');