-- phase-3--------------------------------------------------------------------------------------

-- INSERT INTO COLORS 
INSERT INTO Colors(color_name) VALUES ('White');
INSERT INTO Colors(color_name) VALUES ('Red');
INSERT INTO Colors(color_name) VALUES ('Black');
INSERT INTO Colors(color_name) VALUES ('Blue');

-- INSERT INTO SUPPLIERS 
INSERT INTO Suppliers(supplier_name, start_date, end_date, manager_name, province, city, street) VALUES('Yadak_saz1', '2016-03-10', '2025-02-25', 'ali mollaii', 'tehren', 'tehren', 'molla');
INSERT INTO Suppliers(supplier_name, start_date, end_date, manager_name, province, city, street) VALUES('Yadak_saz2', '2018-07-12', '2025-01-30', 'Ali Abbasi', 'Tehran', 'Tehran', 'Enghelab');
INSERT INTO Suppliers(supplier_name, start_date, end_date, manager_name, province, city, street) VALUES('Yadak_saz3', '2019-10-06', '2025-09-19', 'behnam asadi', 'Gilan', 'Rasht', 'saadat');
INSERT INTO Suppliers(supplier_name, start_date, end_date, manager_name, province, city, street) VALUES('Yadak_saz4', '2020-04-14', '2025-11-02', 'mamad mohseni', 'Esfahan', 'Esfahan', 'gohardasht');

-- INSERT INTO CUSTOMERS 
INSERT INTO Customers  VALUES ('0025129910', 'hisoka', 'morrow', '09161028217', 'tokyo', 'tokyo', 'hunter');
INSERT INTO Customers  VALUES ('0025129911', 'walter', 'white', '09171028217', 'usa', 'albacorci', 'blacks');
INSERT INTO Customers  VALUES ('0025129912', 'saul', 'goodman', '09181028217', 'usa', 'albacorci', 'goodmanstreet');
INSERT INTO Customers  VALUES ('0025129914', 'lalo', 'salamanca', '09191028217', 'mexico', 'Malayer', 'tacostreet');
INSERT INTO Customers  VALUES ('0025129915', 'illumi', 'zoldyck', '09111028217', 'tokyo', 'tokyo', 'volkano');
INSERT INTO Customers  VALUES ('0025129916', 'eren', 'yeager', '09121028217', 'paradise', 'shiganshina', 'zentos');
INSERT INTO Customers  VALUES ('0025129917', 'jax', 'teller', '09131028217', 'usa', 'charming', 'garagestreet');
INSERT INTO Customers  VALUES ('0025129918', 'gus', 'fring', '09141028217', 'usa', 'albacorci', 'pulos hermanos');
INSERT INTO Customers  VALUES ('0025129919', 'chrollo', 'lucifer', '09151028217', 'tokyo', 'tokyo', 'phantom troop');
INSERT INTO Customers  VALUES ('0025129920', 'andrew', 'tate', '09191028218', 'romania', 'random', 'top G');

-- INSERT INTO SPARE_PARTS 
INSERT INTO Spare_Parts(spare_part_name, price, stock, supplier_id) VALUES ('Airbag', 16000.0, 20, 1);
INSERT INTO Spare_Parts(spare_part_name, price, stock, supplier_id) VALUES ('Brake_pad', 15000.0, 25, 1);
INSERT INTO Spare_Parts(spare_part_name, price, stock, supplier_id) VALUES ('Brake_light', 12000.0, 15, 2);
INSERT INTO Spare_Parts(spare_part_name, price, stock, supplier_id) VALUES ('Bumper', 37000.0, 30, 2);
INSERT INTO Spare_Parts(spare_part_name, price, stock, supplier_id) VALUES ('Dashboard', 56000.0, 5, 3);
INSERT INTO Spare_Parts(spare_part_name, price, stock, supplier_id) VALUES ('Fender', 99000.0, 10, 3);
INSERT INTO Spare_Parts(spare_part_name, price, stock, supplier_id) VALUES ('Tire', 32000.0, 40, 4);
INSERT INTO Spare_Parts(spare_part_name, price, stock, supplier_id) VALUES ('Hood', 45000.0, 45, 4);


-- INSERT  INTO CARS 
INSERT INTO Cars(VIN, model, brand, gearbox, color_id) VALUES('11411520', 'Tip 2', 'hima', 'Automatic', 1);
INSERT INTO Cars(VIN, model, brand, gearbox, color_id) VALUES('11411521', 'Tip 3', 'hima', 'Manual', 2);
INSERT INTO Cars(VIN, model, brand, gearbox, color_id) VALUES('11411522', 'Tip 2', 'hima', 'Automatic', 2);
INSERT INTO Cars(VIN, model, brand, gearbox, color_id) VALUES('11411523', 'Tip 3', 'hima', 'Manual', 3);
INSERT INTO Cars(VIN, model, brand, gearbox, color_id) VALUES('11411524', 'Tip 2', 'hima', 'Automatic', 3);
INSERT INTO Cars(VIN, model, brand, gearbox, color_id) VALUES('11411525', 'Tip 3', 'hima', 'Manual', 4);
INSERT INTO Cars(VIN, model, brand, gearbox, color_id) VALUES('11310826', 'Tip 2', 'persia', 'Automatic', 3);
INSERT INTO Cars(VIN, model, brand, gearbox, color_id) VALUES('11310827', 'Tip 3', 'persia', 'Manual', 4);
INSERT INTO Cars(VIN, model, brand, gearbox, color_id) VALUES('11310828', 'Tip 2', 'persia', 'Automatic', 1);
INSERT INTO Cars(VIN, model, brand, gearbox, color_id) VALUES('11310829', 'Tip 3', 'persia', 'Manual', 2);
INSERT INTO Cars(VIN, model, brand, gearbox, color_id) VALUES('11310820', 'Tip 2', 'persia', 'Automatic', 3);
INSERT INTO Cars(VIN, model, brand, gearbox, color_id) VALUES('11310821', 'Tip 3', 'persia', 'Manual', 4);

-- INSERT  INTO CAR_SPARE_PARTS 
INSERT INTO Car_Spare_Parts(VIN, spare_part_id) VALUES ('11411520', 1);
INSERT INTO Car_Spare_Parts(VIN, spare_part_id) VALUES ('11411520', 2);
INSERT INTO Car_Spare_Parts(VIN, spare_part_id) VALUES ('11411520', 3);
INSERT INTO Car_Spare_Parts(VIN, spare_part_id) VALUES ('11411520', 4);

INSERT INTO Car_Spare_Parts(VIN, spare_part_id) VALUES ('11310821', 5);
INSERT INTO Car_Spare_Parts(VIN, spare_part_id) VALUES ('11310821', 6);
INSERT INTO Car_Spare_Parts(VIN, spare_part_id) VALUES ('11310821', 7);
INSERT INTO Car_Spare_Parts(VIN, spare_part_id) VALUES ('11310821', 8);

-- INSERT INTO CAR_ORDERS AND SPARE_ORDERS
INSERT INTO Car_Orders(VIN, customer_national_number) VALUES ('11411520', '0025129910');
INSERT INTO Car_Orders(VIN, customer_national_number) VALUES ('11310821', '0025129911');
INSERT INTO Spare_Part_Orders(spare_part_id, customer_national_number) VALUES (1, '0025129912');