SELECT customers.customer_name,
printf('$%.2f',SUM(subscriptions.price_per_month*subscriptions.subscription_length))AS total_amount_due
FROM orders
JOIN subscriptions ON orders.subscription_id=subscriptions.subscription_id
JOIN customers ON orders.customer_id=customers.customer_id
WHERE order_status='unpaid' and subscriptions.description='Fashion Magazine'
GROUP BY customer_name;