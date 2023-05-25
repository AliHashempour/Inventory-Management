-- phase 4-----------------------------------------------------------------------------------------

INSERT INTO Customers VALUES('123456781011', ' sherlock', 'holmes', '+44796268462', 'London', 'London', ' 212 Baker Street');

INSERT INTO Car_Orders(VIN, customer_national_number) VALUES ('11411525', '123456781011');

UPDATE Customers
SET phone_number = '+447342780080'
WHERE national_number = '123456781011';


DELETE FROM Customers
WHERE NOT EXISTS
 (
	SELECT * 
    FROM Car_Orders, Spare_Part_Orders
    WHERE Customers.national_number = Car_Orders.customer_national_number
    OR Customers.national_number = Spare_Part_Orders.customer_national_number
);
