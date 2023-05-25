CREATE TABLE if not exists Suppliers(
	Id INT PRIMARY KEY AUTO_INCREMENT,
    supplier_name VARCHAR(50) NOT NULL ,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    manager_name VARCHAR(50) NOT NULL,
    province VARCHAR(50) NOT NULL,
    city VARCHAR(50) NOT NULL,
    street VARCHAR(50) NOT NULL,
    CHECK (start_date < end_date)
);

CREATE TABLE if not exists Customers(
	national_number VARCHAR(20) ,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    phone_number VARCHAR(20) NOT NULL,
    province VARCHAR(50) NOT NULL,
    city VARCHAR(50) NOT NULL,
    street VARCHAR(50) NOT NULL,
    PRIMARY KEY (national_number)
);

CREATE TABLE if not exists Colors(
	Id INT PRIMARY KEY AUTO_INCREMENT,
    color_name VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE if not exists Spare_Parts(
	Id INT AUTO_INCREMENT,
    spare_part_name VARCHAR(45) NOT NULL,
    price NUMERIC(10,0) NOT NULL,
    stock INT NOT NULL DEFAULT 0,
    supplier_id INT,
    FOREIGN KEY(supplier_id) REFERENCES Suppliers(Id),
    PRIMARY KEY (Id)
);

CREATE TABLE Cars(
	VIN CHAR(8) PRIMARY KEY,
    brand VARCHAR(50) NOT NULL,
    model VARCHAR(50) NOT NULL,
    gearbox VARCHAR(20),
    color_id INT,
    FOREIGN KEY(color_id) REFERENCES Colors(Id),
    CHECK (gearbox IN ('Manual','Automatic'))
);

CREATE TABLE Car_Orders(
	Id INT PRIMARY KEY AUTO_INCREMENT,
    VIN CHAR(8),
    customer_national_number VARCHAR(20),
	FOREIGN KEY(VIN) REFERENCES Cars(VIN),
    FOREIGN KEY(customer_national_number) REFERENCES Customers(national_number)
);

CREATE TABLE Spare_Part_Orders(
	Id INT PRIMARY KEY AUTO_INCREMENT,
    spare_part_id INT,
    customer_national_number VARCHAR(20),
	FOREIGN KEY(spare_part_id) REFERENCES Spare_Parts(Id),
    FOREIGN KEY(customer_national_number) REFERENCES Customers(national_number)
);

CREATE TABLE Car_Spare_Parts(
	Id INT PRIMARY KEY AUTO_INCREMENT,
    VIN CHAR(8),
	spare_part_id INT,
	FOREIGN KEY(spare_part_id) REFERENCES Spare_Parts(Id),
	FOREIGN KEY(VIN) REFERENCES Cars(VIN)
);
