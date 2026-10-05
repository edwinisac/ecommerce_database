-- customer

INSERT INTO customer(customer_id,customer_name,email,phone)
VALUES 
(1, 'Rahul Sharma', 'rahul@gmail.com', '9876543210'),
(2, 'Anu Thomas', 'anu@gmail.com', '9876543211'),
(3, 'Arjun Kumar', 'arjun@gmail.com', '9876543212'),
(4, 'Meera Nair', 'meera@gmail.com', '9876543213'),
(5, 'Vishnu Raj', 'vishnu@gmail.com', '9876543214'),
(6, 'Sneha Joseph', 'sneha@gmail.com', '9876543215'),
(7, 'Adithya Menon', 'adithya@gmail.com', '9876543216'),
(8, 'Neha Patel', 'neha@gmail.com', '9876543217'),
(9, 'Akhil Das', 'akhil@gmail.com', '9876543218'),
(10, 'Diya George', 'diya@gmail.com', '9876543219');

-- category

INSERT INTO category
(category_id, category_name)
VALUES
(1, 'Electronics'),
(2, 'Laptops'),
(3, 'Mobile Phones'),
(4, 'Accessories'),
(5, 'Home Appliances');

-- Address
INSERT INTO address
(address_id, customer_id, house_no, street, city, state, pincode)
VALUES
(1, 1, '12A', 'MG Road', 'Bangalore', 'Karnataka', '560001'),
(2, 2, '45', 'Marine Drive', 'Kochi', 'Kerala', '682011'),
(3, 3, '22B', 'Anna Nagar', 'Chennai', 'Tamil Nadu', '600040'),
(4, 4, '18', 'Vyttila Road', 'Kochi', 'Kerala', '682019'),
(5, 5, '76', 'Indiranagar', 'Bangalore', 'Karnataka', '560038'),
(6, 6, '11', 'Kowdiar Road', 'Trivandrum', 'Kerala', '695003'),
(7, 7, '91', 'Whitefield Road', 'Bangalore', 'Karnataka', '560066'),
(8, 8, '32', 'Navrangpura', 'Ahmedabad', 'Gujarat', '380009'),
(9, 9, '54', 'Kakkanad', 'Kochi', 'Kerala', '682030'),
(10, 10, '27', 'Alkapuri', 'Vadodara', 'Gujarat', '390007');

-- Product

INSERT INTO product
(product_id, product_name, category_id, price, stock_quantity, description)
VALUES
(101, 'Wireless Mouse', 4, 799.00, 50, 'Wireless optical mouse'),
(102, 'Mechanical Keyboard', 4, 2499.00, 30, 'RGB mechanical keyboard'),
(103, 'USB-C Hub', 4, 1499.00, 40, 'Multi-port USB-C hub'),
(104, 'Dell Inspiron 15', 2, 58999.00, 10, '15-inch laptop'),
(105, 'HP Pavilion 14', 2, 64999.00, 8, '14-inch laptop'),
(106, 'MacBook Air M2', 2, 89999.00, 5, 'Apple MacBook Air'),
(107, 'Samsung Galaxy S24', 3, 74999.00, 12, 'Samsung smartphone'),
(108, 'iPhone 15', 3, 69999.00, 15, 'Apple smartphone'),
(109, 'OnePlus 12', 3, 59999.00, 18, 'OnePlus smartphone'),
(110, 'Sony Headphones', 1, 8999.00, 20, 'Wireless headphones'),
(111, 'Bluetooth Speaker', 1, 3999.00, 25, 'Portable Bluetooth speaker'),
(112, 'Smart Watch', 1, 4999.00, 22, 'Fitness smart watch'),
(113, 'Air Fryer', 5, 6999.00, 14, 'Digital air fryer'),
(114, 'Microwave Oven', 5, 12999.00, 7, 'Convection microwave oven'),
(115, 'Vacuum Cleaner', 5, 8999.00, 9, 'Cordless vacuum cleaner');



-- Orders

INSERT INTO orders
(order_id, customer_id, order_date, order_status, total_amount)
VALUES
(1001, 1, '2026-09-20', 'Delivered', 2298.00),
(1002, 2, '2026-09-21', 'Delivered', 2499.00),
(1003, 3, '2026-09-22', 'Shipped', 58999.00),
(1004, 4, '2026-09-23', 'Pending', 1499.00),
(1005, 5, '2026-09-24', 'Delivered', 74999.00),
(1006, 6, '2026-09-25', 'Shipped', 6498.00),
(1007, 7, '2026-09-26', 'Delivered', 69999.00),
(1008, 8, '2026-09-27', 'Pending', 15998.00),
(1009, 9, '2026-09-28', 'Delivered', 8999.00),
(1010, 10, '2026-09-29', 'Shipped', 4999.00);


-- Order-item

INSERT INTO order_item
(order_item_id, order_id, product_id, quantity, unit_price)
VALUES
(1, 1001, 101, 1, 799.00),
(2, 1001, 103, 1, 1499.00),

(3, 1002, 102, 1, 2499.00),

(4, 1003, 104, 1, 58999.00),

(5, 1004, 103, 1, 1499.00),

(6, 1005, 107, 1, 74999.00),

(7, 1006, 111, 1, 3999.00),
(8, 1006, 102, 1, 2499.00),

(9, 1007, 108, 1, 69999.00),

(10, 1008, 113, 1, 6999.00),
(11, 1008, 115, 1, 8999.00),

(12, 1009, 110, 1, 8999.00),

(13, 1010, 112, 1, 4999.00);

-- payment
INSERT INTO payment
(payment_id, order_id, payment_date, payment_method, payment_status, amount)
VALUES
(501, 1001, '2026-09-20', 'UPI', 'Paid', 2298.00),
(502, 1002, '2026-09-21', 'Card', 'Paid', 2499.00),
(503, 1003, '2026-09-22', 'Card', 'Paid', 58999.00),
(504, 1004, '2026-09-23', 'UPI', 'Pending', 1499.00),
(505, 1005, '2026-09-24', 'Card', 'Paid', 74999.00),
(506, 1006, '2026-09-25', 'UPI', 'Paid', 6498.00),
(507, 1007, '2026-09-26', 'Card', 'Paid', 69999.00),
(508, 1008, '2026-09-27', 'UPI', 'Pending', 15998.00),
(509, 1009, '2026-09-28', 'Cash on Delivery', 'Paid', 8999.00),
(510, 1010, '2026-09-29', 'UPI', 'Paid', 4999.00);


-- cart
INSERT INTO cart
(cart_id, customer_id)
VALUES
(201, 1),
(202, 2),
(203, 3),
(204, 4),
(205, 5),
(206, 6),
(207, 7),
(208, 8),
(209, 9),
(210, 10);

-- cart-item
INSERT INTO cart_item
(cart_item_id, cart_id, product_id, quantity)
VALUES
(301, 201, 105, 1),
(302, 201, 101, 2),

(303, 202, 106, 1),

(304, 203, 109, 1),
(305, 203, 110, 1),

(306, 204, 103, 1),

(307, 205, 111, 2),

(308, 206, 114, 1),
(309, 206, 101, 1),

(310, 207, 115, 1),

(311, 208, 102, 1),

(312, 209, 112, 1),
(313, 209, 103, 1),

(314, 210, 107, 1);