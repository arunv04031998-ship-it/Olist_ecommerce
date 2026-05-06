SELECT 
    payment_type,
    COUNT(*) AS transaction_count,
    SUM(payment_value) AS total_processed_value,
    ROUND((COUNT(*) * 100.0 / (SELECT COUNT(*) FROM olist_order_payments_dataset)), 2) AS pct_of_total_transactions
FROM olist_order_payments_dataset
GROUP BY payment_type
ORDER BY transaction_count DESC
limit 10;