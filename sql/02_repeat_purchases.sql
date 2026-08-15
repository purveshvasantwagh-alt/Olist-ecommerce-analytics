WITH customer_order_history AS (
    SELECT c.customer_unique_id, o.order_id, o.order_purchase_timestamp,
           LAG(o.order_purchase_timestamp) OVER (
               PARTITION BY c.customer_unique_id ORDER BY o.order_purchase_timestamp
           ) AS previous_purchase_date
    FROM olist_orders_dataset o
    JOIN olist_customers_dataset c ON o.customer_id = c.customer_id
)
SELECT customer_unique_id, order_id, order_purchase_timestamp, previous_purchase_date,
       ROUND(JULIANDAY(order_purchase_timestamp) - JULIANDAY(previous_purchase_date), 1) AS days_between_orders
FROM customer_order_history
WHERE previous_purchase_date IS NOT NULL;