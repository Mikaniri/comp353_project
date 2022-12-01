CREATE TABLE Driver (
    driverID int not Null PRIMARY KEY AUTO_INCREMENT,
    firstName varchar(255) NOT Null,
    lastName varchar(255) Not Null,
    licenseType varchar(20) NOT NULL CHECK (licenseType IN ('tourism', 'heavyweight', 'super heavyweight'))
);

CREATE TABLE Vehicle (
    vehicleID int Not Null PRIMARY KEY AUTO_INCREMENT,
    priceKM double Not Null,
  	priceDay double Not Null,
    plate varchar(7) Not Null,
    brand varchar(255) Not Null,
    vehicleType varchar(20) NOT NULL CHECK (vehicleType IN ('tourism', 'heavyweight', 'super heavyweight'))
);

CREATE TABLE Customer (
    customerID int not Null PRIMARY KEY AUTO_INCREMENT,
    firstName varchar(255) NOT Null,
    lastName varchar(255) Not Null,
  	address varchar(255) Not Null,
  	phone varchar(15) Not Null,
  	companyName varchar(255)
);

CREATE TABLE Reservation(
    reservationID int not Null PRIMARY KEY AUTO_INCREMENT,
    customerID int not Null,
    startDate date Not Null,
    duration int Not Null,
    FOREIGN KEY (customerID) REFERENCES Customer(customerID)
);

CREATE TABLE Mission(
    missionID int not Null PRIMARY KEY AUTO_INCREMENT,
    startDate date Not Null,
    endDate date Not Null,
    place varchar(255) Not Null,
    driverID int not Null,
    FOREIGN KEY (driverID) REFERENCES Driver(driverID),
    vehicleID int not Null,
    FOREIGN KEY (vehicleID) REFERENCES Vehicle(vehicleID),
    reservationID int not Null,
    FOREIGN KEY (reservationID) REFERENCES Reservation(reservationID)
);

CREATE TABLE Invoice(
    invoiceID int not Null PRIMARY KEY AUTO_INCREMENT,
    odometer int,
    startDate date,
    endDate date,
    total double,
    missionID int not Null,
    FOREIGN KEY (missionID) REFERENCES Mission(missionID),
    paymentType varchar(7) CHECK (paymentType IN ('credit', 'cash', 'check'))
);