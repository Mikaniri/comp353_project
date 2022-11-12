-- Depending on where we will run these commands we might need the auto_increment feature (another way would be: IDENTITY(1,1))
CREATE TABLE Driver (
    driverID int not Null PRIMARY KEY AUTO_INCREMENT,
    firstName varchar(255) NOT Null,
    lastName varchar(255) Not Null,
    licenceType varchar(20) NOT NULL CHECK (licenceType IN ('tourism', 'heavyweight', 'super heavyweight'))
);
-- Added plate field as well as I assume we need it
-- Notice vehicle_type is same as license_type ? 
CREATE TABLE Vehicle (
    vehicleID int Not Null PRIMARY KEY AUTO_INCREMENT,
    priceKM double Not Null,
  	priceDay double Not Null,
    plate varchar(7) Not Null,
    vehicleType varchar(20) NOT NULL CHECK (vehicleType IN ('tourism', 'heavyweight', 'super heavyweight'))
);

CREATE TABLE Customer (
    customerID int not Null PRIMARY KEY AUTO_INCREMENT,
    firstName varchar(255) NOT Null,
    lastName varchar(255) Not Null,
  	address varchar(255) Not Null,
  	companyName varchar(255),	--optional
  	phone varchar(15) Not Null, -- needed for reservations
);

CREATE TABLE Reservation(
    reservationID int not Null PRIMARY KEY AUTO_INCREMENT,
    customerID int not Null FOREIGN KEY,
    startDate date Not Null,
    duration int Not Null -- amount of days
);




