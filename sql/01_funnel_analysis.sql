WITH order_summary AS (
    SELECT order_status, COUNT(order_id) AS total_orders
    FROM olist_orders_dataset
    GROUP BY order_status
)
SELECT order_status, total_orders,
       ROUND(100.0 * total_orders / SUM(total_orders) OVER(), 2) AS drop_off_percentage
FROM order_summary
ORDER BY total_orders DESC;
