-- Drinks sold by city
SELECT 
    c.city_name AS city,
    p.name AS product,
    SUM(oi.quantity) AS total_sold,
    COUNT(DISTINCT o.order_id) AS num_orders
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
JOIN orders o ON oi.order_id = o.order_id
JOIN stores s ON o.store_id = s.store_id
JOIN cities c ON s.city_id = c.city_id
WHERE p.product_type = 'drink'
GROUP BY c.city_id, p.product_id
ORDER BY c.city_name, total_sold DESC;

-- List all employees with their order counts
SELECT 
    e.employee_id,
    CONCAT(e.first_name, ' ', e.last_name) AS employee_name,
    e.employee_type,
    s.name_store AS store_location,
    COUNT(DISTINCT o_prepared.order_id) AS orders_prepared,
    COUNT(DISTINCT o_delivered.order_id) AS orders_delivered,
    (COUNT(DISTINCT o_prepared.order_id) + COUNT(DISTINCT o_delivered.order_id)) AS total_orders
FROM employees e
LEFT JOIN orders o_prepared ON e.employee_id = o_prepared.prepared_by_employee_id
LEFT JOIN orders o_delivered ON e.employee_id = o_delivered.delivery_employee_id
LEFT JOIN stores s ON e.store_id = s.store_id
GROUP BY e.employee_id, e.first_name, e.last_name, e.employee_type, s.name_store
ORDER BY total_orders DESC, employee_name;