-- Top promotions by revenue
SELECT p.promo_id,
    SUM(o.total_amount) AS revenue_generated
FROM orders o
    JOIN order_items oi ON o.order_id = oi.order_id
    JOIN promotions p ON oi.product_id = p.product_id
WHERE o.discount_applied = TRUE
GROUP BY p.promo_id
ORDER BY revenue_generated DESC;

-- Customer discount sensitivity
SELECT customer_id,
       COUNT(CASE WHEN discount_applied=1 THEN 1 END) AS discount_orders,
       COUNT(order_id) AS total_orders,
       ROUND(COUNT(CASE WHEN discount_applied=1 THEN 1 END)/COUNT(order_id)*100,2) AS discount_pct
FROM orders
GROUP BY customer_id
ORDER BY discount_pct DESC;

-- Product-level discount impact
SELECT product_id,
       AVG(discount_applied) AS avg_discount_used,
       SUM(total_amount) AS total_revenue
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY product_id
ORDER BY total_revenue DESC;