WITH user_product_orders AS (
    SELECT
        o.id AS order_id,
        o.date AS order_date,
        o.amount AS order_amount,
        u.id AS user_id,
        u.name AS user_name,
        p.id AS product_id,
        p.name AS product_name,
        p.price AS product_price,
        pc.id AS category_id,
        pc.name AS category_name
    FROM orders o
    INNER JOIN users u ON o.user_id = u.id
    INNER JOIN products p ON o.product_id = p.id
    INNER JOIN product_categories pc ON p.product_category_id = pc.id
)

SELECT
    order_id,
    order_date,
    order_amount,
    user_id,
    user_name,
    product_id,
    product_name,
    product_price,
    category_id,
    category_name
FROM user_product_orders
