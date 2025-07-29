
-- Basic Queries

-- 1. List all customers from 'Chittagong'
SELECT * FROM customers WHERE city = 'Chittagong';

-- 2. Show all products in 'Electronics' category
SELECT * FROM products WHERE category = 'Electronics';

-- 3. Find all orders made by customer with ID 1
SELECT * FROM orders WHERE customer_id = 1;

-- 4. Count how many products are in each category
SELECT category, COUNT(*) FROM products GROUP BY category;

-- 5. Find total number of orders
SELECT COUNT(*) AS total_orders FROM orders;

-- Intermediate Queries

-- 6. Show total quantity sold for each product
SELECT p.product_name, SUM(od.quantity) AS total_sold
FROM order_details od
JOIN products p ON od.product_id = p.product_id
GROUP BY p.product_name;

-- 7. Show customers who gave a rating less than 3
SELECT DISTINCT c.customer_name, r.rating
FROM reviews r
JOIN customers c ON r.customer_id = c.customer_id
WHERE r.rating < 3;

-- 8. List all orders with payment method 'Cash'
SELECT o.order_id, p.payment_method
FROM orders o
JOIN payments p ON o.order_id = p.order_id
WHERE p.payment_method = 'Cash';

-- 9. Show average order amount
SELECT AVG(amount) AS avg_payment FROM payments;

-- 10. List top 3 cities with most customers
SELECT city, COUNT(*) AS total_customers
FROM customers
GROUP BY city
ORDER BY total_customers DESC
LIMIT 3;

-- Advanced Queries

-- 11. Find products that were never ordered
SELECT product_name 
FROM products 
WHERE product_id NOT IN (
    SELECT DISTINCT product_id FROM order_details
);

-- 12. Find the customer who spent the most
SELECT c.customer_name, SUM(p.amount) AS total_spent
FROM payments p
JOIN orders o ON p.order_id = o.order_id
JOIN customers c ON o.customer_id = c.customer_id
GROUP BY c.customer_name
ORDER BY total_spent DESC
LIMIT 1;

-- 13. Show average rating for each product
SELECT p.product_name, ROUND(AVG(r.rating), 2) AS avg_rating
FROM reviews r
JOIN products p ON r.product_id = p.product_id
GROUP BY p.product_name;

-- 14. Get order details with total price per item (price * quantity)
SELECT od.order_detail_id, p.product_name, p.price, od.quantity, (p.price * od.quantity) AS total_price
FROM order_details od
JOIN products p ON od.product_id = p.product_id;

-- 15. List customers who placed more than 2 orders
SELECT c.customer_name, COUNT(o.order_id) AS order_count
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_name
HAVING COUNT(o.order_id) > 2;
