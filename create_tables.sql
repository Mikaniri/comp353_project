-- Depending on where we will run these commands we might need the auto_increment feature (another way would be: IDENTITY(1,1))
CREATE TABLE Driver (
    driverID int not Null PRIMARY KEY AUTO_INCREMENT,
    firstName varchar(255) NOT Null,
    lastName varchar(255) Not Null,
    licenseType varchar(20) NOT NULL CHECK (licenseType IN ('tourism', 'heavyweight', 'super heavyweight'))
);
-- Added plate field as well as I assume we need it
-- Notice vehicle_type is same as license_type ? 
-- Added brand as its in one of the querries
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
-- duration amount of days

CREATE TABLE Reservation(
    reservationID int not Null PRIMARY KEY AUTO_INCREMENT,
    customerID int not Null,
    startDate date Not Null,
    duration int Not Null,
    FOREIGN KEY (customerID) REFERENCES Customer(customerID)
);




