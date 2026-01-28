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

-- Glasses models sold by an employee 1 (Carla Vidal) in 2023
SELECT
    e.name AS employee,
    b.name AS brand,
    g.frame_type,
    g.frame_color,
    g.lens_color,
    COUNT(s.sale_id) AS times_sold,
    SUM(s.quantity) AS total_glasses_sold,
    MIN(s.datestamp) AS first_sale_date,
    MAX(s.datestamp) AS last_sale_date
FROM employees e
JOIN sales s ON e.employee_id = s.employee_id
JOIN glasses g ON s.glass_id = g.glass_id
JOIN brands b ON g.brand_id = b.brand_id
WHERE e.name = 'Carla Vidal'
  AND s.datestamp BETWEEN '2023-01-01' AND '2023-12-31'
GROUP BY e.name, b.name, g.frame_type, g.frame_color, g.lens_color
ORDER BY total_glasses_sold DESC;

-- List of suppliers who have provided successfully sold glasses.
SELECT
    ROW_NUMBER() OVER (ORDER BY SUM(sl.total_price) DESC) AS `rank`,
    s.name AS supplier,
    s.city,
    s.country,
    COUNT(DISTINCT b.brand_id) AS brands,
    COUNT(sl.sale_id) AS transactions,
    SUM(sl.quantity) AS units_sold,
    FORMAT(SUM(sl.total_price), 2) AS total_revenue,
    FORMAT(AVG(sl.total_price), 2) AS avg_sale_value
FROM suppliers s
JOIN brands b ON s.supplier_id = b.supplier_id
JOIN glasses g ON b.brand_id = g.brand_id
JOIN sales sl ON g.glass_id = sl.glass_id
GROUP BY s.supplier_id, s.name, s.city, s.country
ORDER BY total_revenue;