SELECT
    u.user_id,
    u.user_name,
    COUNT(u.order_id) AS total_orders,
    SUM(u.order_amount) AS total_quantity,
    SUM(u.order_amount * u.product_price) AS total_spent
FROM {{ ref('user_product_orders') }} AS u
GROUP BY u.user_id, u.user_name
ORDER BY total_spent DESC
