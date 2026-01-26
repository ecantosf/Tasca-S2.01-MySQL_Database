USE optics_cul_dampolla;

SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE TABLE sales;
TRUNCATE TABLE glasses;
TRUNCATE TABLE employees;
TRUNCATE TABLE customers;
TRUNCATE TABLE brands;
TRUNCATE TABLE suppliers;
SET FOREIGN_KEY_CHECKS = 1;

ALTER TABLE suppliers AUTO_INCREMENT = 1;
ALTER TABLE brands AUTO_INCREMENT = 1;
ALTER TABLE employees AUTO_INCREMENT = 1;
ALTER TABLE glasses AUTO_INCREMENT = 1;

INSERT INTO suppliers (name, street, number, floor, door, city, postal_code, country, phone, fax, nif) VALUES
('LensPro SA', 'Carrer Aragó', '250', '3', '2ª', 'Barcelona', '08007', 'Espanya', '932112233', '932112234', 'A12345678'),
('FrameMasters SL', 'Gran Via', '45', '1', 'A', 'Madrid', '28013', 'Espanya', '915556677', '915556678', 'B87654321'),
('VisionOptics', 'Avinguda Diagonal', '600', '5', 'D', 'Barcelona', '08021', 'Espanya', '933334444', '933334445', 'C44455566');

INSERT INTO brands (name, supplier_id) VALUES
('Ray-Ban', 1),
('Oakley', 1),
('Polaroid', 2),
('Arnette', 2),
('Carrera', 3),
('Vogue', 3);

INSERT INTO customers (client_id, name, postal_adress, telephone, email, registration_date, referred_customer_id) VALUES
(1, 'Anna García', 'Carrer Balmes 123, Barcelona', '612345678', 'anna@email.com', '2023-01-15', NULL),
(2, 'Pere Rodríguez', 'Gran Via 456, Madrid', '623456789', 'pere@email.com', '2023-02-20', 1),
(3, 'Maria López', 'Carrer Provença 789, Barcelona', '634567890', 'maria@email.com', '2023-03-10', 1),
(4, 'Joan Martínez', 'Passeig de Gràcia 101, Barcelona', '645678901', 'joan@email.com', '2023-04-05', 2),
(5, 'Laura Sánchez', 'Carrer Muntaner 202, Barcelona', '656789012', 'laura@email.com', '2024-01-10', NULL);

INSERT INTO employees (name) VALUES
('Carla Vidal'),
('Marc Ruiz'),
('Sofia Torres');

INSERT INTO glasses (brand_id, right_lens_prescription, left_lens_prescription, frame_type, frame_color, lens_color, price) VALUES
(1, -1.25, -1.50, 'floating', 'negre', 'transparent', 150.00),
(1, -2.00, -2.25, 'plastic', 'blau', 'gris', 180.00),
(1, -0.75, -1.00, 'metallic', 'platejat', 'blau', 220.00),
(2, -1.50, -1.50, 'plastic', 'vermell', 'fumat', 190.00),
(2, -2.50, -2.75, 'floating', 'negre', 'transparent', 210.00),
(3, -1.00, -1.25, 'plastic', 'marró', 'marró', 120.00),
(3, -0.50, -0.75, 'metallic', 'daurat', 'verd', 160.00),
(4, -3.00, -3.25, 'floating', 'negre', 'gris', 140.00),
(5, -1.75, -2.00, 'plastic', 'blau marí', 'blau', 175.00),
(6, -2.25, -2.50, 'metallic', 'rose', 'rosa', 195.00);

INSERT INTO sales (sale_id, quantity, datestamp, total_price, client_id, employee_id, glass_id) VALUES
(1, 1, '2023-03-15', 150.00, 1, 1, 1),
(2, 1, '2023-03-20', 190.00, 2, 1, 4),
(3, 1, '2023-04-10', 120.00, 3, 2, 6),
(4, 1, '2023-05-05', 220.00, 4, 2, 3),
(5, 1, '2023-06-12', 160.00, 1, 3, 7),
(6, 2, '2023-07-20', 380.00, 2, 3, 4),
(7, 1, '2023-08-15', 175.00, 3, 1, 9),
(8, 1, '2023-09-10', 195.00, 4, 2, 10),
(9, 1, '2024-01-20', 180.00, 5, 1, 2),
(10, 1, '2024-02-15', 210.00, 1, 2, 5),
(11, 1, '2024-02-20', 140.00, 5, 3, 8),
(12, 1, '2024-03-01', 150.00, 2, 1, 1);

