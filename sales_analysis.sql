-- City-wise Revenue
SELECT c.city,
       COUNT(DISTINCT o.order_id) AS total_orders,
       SUM(s.total_amount) AS total_revenue
FROM sales s
JOIN orders o ON s.order_id = o.order_id
JOIN customers c ON o.customer_id = c.customer_id
GROUP BY c.city
ORDER BY total_revenue DESC;