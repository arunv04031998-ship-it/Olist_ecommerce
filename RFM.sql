SELECT 
    c.customer_unique_id,
    DATEDIFF('2018-09-03', MAX(o.order_purchase_timestamp)) AS recency,
    COUNT(o.order_id) AS frequency,
    SUM(p.payment_value) AS monetary
FROM olist_orders_dataset o
JOIN olist_customers_dataset c ON o.customer_id = c.customer_id
JOIN olist_order_payments_dataset p ON o.order_id = p.order_id
WHERE o.order_status = 'delivered'
GROUP BY c.customer_unique_id
ORDER BY monetary DESC
LIMIT 10;