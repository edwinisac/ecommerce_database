SELECT * FROM customer WHERE phone IS NULL;

SELECT * FROM product WHERE category_id IS NULL;

SELECT * FROM orders WHERE order_status IS NULL;

SELECT * FROM customer WHERE phone IS NOT NULL;