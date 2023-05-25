-- phase-6 -- ------------------------------------------------------------------------
ALTER TABLE cars
ADD COLUMN is_sold
BOOLEAN DEFAULT false;

UPDATE cars
SET is_sold = true
WHERE VIN in (
    SELECT VIN
    FROM car_orders
);

BEGIN;
INSERT INTO car_orders (vin, customer_national_number) VALUES (11310826, '0025129910');

UPDATE car_orders
SET vin = (
    SELECT vin
    FROM cars
    WHERE is_sold = false
    LIMIT 1
) WHERE customer_national_number = '0025129910';

UPDATE cars
SET is_sold = true
WHERE vin = (
    SELECT vin
    FROM car_orders
    WHERE customer_national_number = '0025129910'
    LIMIT 1
);
COMMIT;


BEGIN;
INSERT INTO spare_part_orders (spare_part_id, customer_national_number) VALUES (1, '0025129910');

UPDATE spare_part_orders
SET spare_part_id = (
    SELECT id
    FROM spare_parts
    WHERE stock > 0
    LIMIT 1
) WHERE customer_national_number = '0025129910';

UPDATE spare_parts
SET stock = stock - 1
WHERE id = (
    SELECT spare_part_id
    FROM spare_part_orders
    WHERE customer_national_number = '0025129910'
);
COMMIT;