-- phase 5
-- 1 --------------------------------------------------------------------
CREATE VIEW supplier_supplies AS 
SELECT s.Id AS supplier_id, s.supplier_name, s.start_date, s.end_date, s.manager_name, s.province, 
s.city, s.street, sp.id AS spare_parts_id, sp.spare_part_name, sp.price, sp.stock
FROM Suppliers AS s INNER JOIN Spare_Parts AS sp
ON s.Id = sp.supplier_id;


-- 2 -----------------------------------------------------------------------
CREATE VIEW customer_spare_part_orders AS
SELECT * FROM customers INNER JOIN spare_part_orders
ON customers.national_number = spare_part_orders.customer_national_number;

CREATE VIEW customer_car_orders AS 
SELECT * FROM customers INNER JOIN car_orders 
ON customers.national_number = car_orders.customer_national_number;

CREATE VIEW customer_orders AS
SELECT CCO.national_number, CCO.first_name, CCO.last_name, CCO.phone_number,
 CCO.province, CCO.city, CCO.street, CCO.Id AS car_order_id, CCO.VIN,
 CSPO.Id AS spare_part_order_id, CSPO.spare_part_id 
FROM customer_car_orders AS CCO
LEFT JOIN 
customer_spare_part_orders AS CSPO
 ON CCO.national_number = CSPO.national_number
UNION
SELECT CSPO.national_number, CSPO.first_name, CSPO.last_name, CSPO.phone_number,
 CSPO.province, CSPO.city , CSPO.street, CCO.Id AS car_order_id, CCO.VIN,
 CSPO.Id AS spare_part_order_id, CSPO.spare_part_id
FROM customer_car_orders AS CCO
RIGHT JOIN 
customer_spare_part_orders AS CSPO 
ON CCO.national_number = CSPO.national_number;
-- --------------------------------------------------------------------------

-- 3
CREATE VIEW car_colors AS 
SELECT *
FROM cars INNER JOIN colors 
ON cars.color_id = colors.Id;

CREATE VIEW model_brand_car AS
SELECT *
FROM car_colors
