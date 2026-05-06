SELECT 
    DATE_FORMAT(order_purchase_timestamp, '%Y-%m') AS month_year, -- Groups by Year and Month
    COUNT(order_id) AS total_orders,
    SUM(CASE WHEN order_status = 'canceled' THEN 1 ELSE 0 END) AS canceled_orders,
    ROUND(
        (SUM(CASE WHEN order_status = 'canceled' THEN 1 ELSE 0 END) / COUNT(order_id)) * 100, 
        2
    ) AS cancellation_rate_pct
FROM olist_orders_dataset
GROUP BY month_year
ORDER BY month_year ASC;