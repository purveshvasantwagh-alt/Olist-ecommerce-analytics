WITH monthly_category_revenue AS (
    SELECT strftime('%Y-%m', o.order_purchase_timestamp) AS sales_month,
           p.product_category_name,
           ROUND(SUM(pay.payment_value), 2) AS total_revenue
    FROM olist_orders_dataset o
    JOIN olist_order_items_dataset i ON o.order_id = i.order_id
    JOIN olist_products_dataset p ON i.product_id = p.product_id
    JOIN olist_order_payments_dataset pay ON o.order_id = pay.order_id
    WHERE o.order_status = 'delivered' AND p.product_category_name IS NOT NULL
    GROUP BY sales_month, p.product_category_name
),
ranked_categories AS (
    SELECT sales_month, product_category_name, total_revenue,
           DENSE_RANK() OVER (PARTITION BY sales_month ORDER BY total_revenue DESC) AS category_rank
    FROM monthly_category_revenue
)
SELECT sales_month, product_category_name, total_revenue, category_rank
FROM ranked_categories
WHERE category_rank <= 5;