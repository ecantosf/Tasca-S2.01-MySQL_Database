-- The total invoices for client 2 (Pere Rodríguez) in 2023
SELECT 
    c.name AS client,
    s.sale_id AS invoice_number,
    s.datestamp AS sale_date,
    s.total_price,
    e.name AS employee
FROM customers c
JOIN sales s ON c.client_id = s.client_id
JOIN employees e ON s.employee_id = e.employee_id
WHERE c.client_id = 2
  AND YEAR(s.datestamp) = 2023
ORDER BY s.datestamp;