SELECT
    product_id,
    product_name,
    category_name,
    COUNT(order_id) AS total_orders,
    SUM(order_amount * product_price) AS total_revenue
FROM {{ ref('user_product_orders') }}
GROUP BY product_id, product_name, category_name
ORDER BY total_revenue DESC
