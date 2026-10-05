-- customer table

CREATE TABLE customer (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(15)
);


-- ------------------------------

-- category table
CREATE TABLE category (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(100) UNIQUE NOT NULL
);
-- ---------------------------------

--Address table
CREATE TABLE address (
    address_id INT PRIMARY KEY,
    customer_id INT NOT NULL,
    house_no VARCHAR(20),
    street VARCHAR(100),
    city VARCHAR(50),
    state VARCHAR(50),
    pincode VARCHAR(10),

    FOREIGN KEY (customer_id)
        REFERENCES customer(customer_id)
);

-- ------------------------------------

-- Product table

CREATE TABLE product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category_id INT NOT NULL,
    price DECIMAL(10,2) CHECK (price >= 0),
    stock_quantity INT CHECK (stock_quantity >= 0),
    description TEXT,

    FOREIGN KEY (category_id)
        REFERENCES category(category_id)
);
-- ---------------------------------------

-- Order table

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT NOT NULL,
    order_date DATE NOT NULL,
    order_status VARCHAR(30) DEFAULT 'Pending',
    total_amount DECIMAL(10,2) CHECK (total_amount >= 0),

    FOREIGN KEY (customer_id)
        REFERENCES customer(customer_id)
);

-- -----------------------------------------

-- Order item table

CREATE TABLE order_item (
    order_item_id INT PRIMARY KEY,
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT CHECK (quantity > 0),
    unit_price DECIMAL(10,2) CHECK (unit_price >= 0),

    FOREIGN KEY (order_id)
        REFERENCES orders(order_id),

    FOREIGN KEY (product_id)
        REFERENCES product(product_id)
);

-- -----------------------------------------
-- cart table
CREATE TABLE cart (
    cart_id INT PRIMARY KEY,
    customer_id INT NOT NULL UNIQUE,

    FOREIGN KEY (customer_id)
        REFERENCES customer(customer_id)
);

-- ------------------------------------------
-- cart_items table

CREATE TABLE cart_item (
    cart_item_id INT PRIMARY KEY,
    cart_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL CHECK (quantity > 0),

    FOREIGN KEY (cart_id)
        REFERENCES cart(cart_id),

    FOREIGN KEY (product_id)
        REFERENCES product(product_id)
);

-- -------------------------------------------


-- payment table

CREATE TABLE payment (
    payment_id INT PRIMARY KEY,
    order_id INT UNIQUE NOT NULL,
    payment_date DATE,
    payment_method VARCHAR(30),
    payment_status VARCHAR(30) DEFAULT 'Pending',
    amount DECIMAL(10,2) CHECK (amount >= 0),

    FOREIGN KEY (order_id)
        REFERENCES orders(order_id)
);