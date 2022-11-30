-- Drivers (same have same first name same last name - for testing purposes)
INSERT INTO Driver(firstName, lastName, licenseType)
Values ("James", "Bond", "heavyweight");
INSERT INTO Driver(firstName, lastName, licenseType)
Values ("James", "Li", "tourism");
INSERT INTO Driver(firstName, lastName, licenseType)
Values ("Mikael", "Stilwell", "super heavyweight");
INSERT INTO Driver(firstName, lastName, licenseType)
Values ("John", "Stilwell", "heavyweight");
INSERT INTO Driver(firstName, lastName, licenseType)
Values ("Irina", "Kim", "tourism");
INSERT INTO Driver(firstName, lastName, licenseType)
Values ("Andrew", "Blond", "super heavyweight");
INSERT INTO Driver(firstName, lastName, licenseType)
Values ("Anastasia", "Charlebois", "heavyweight");
INSERT INTO Driver(firstName, lastName, licenseType)
Values ("Neethu", "Krishna", "super heavyweight");
INSERT INTO Driver(firstName, lastName, licenseType)
Values ("Nicolas", "Stanley", "heavyweight");
INSERT INTO Driver(firstName, lastName, licenseType)
Values ("Arajeet", "Boki", "tourism");

-- SELECT * FROM Driver;

-- Vehicles
INSERT INTO Vehicle(priceKM, priceDay, plate, brand, vehicleType)
Values (0.50, 40.00, "G99 HXS", "Mercedes", "heavyweight");
INSERT INTO Vehicle(priceKM, priceDay, plate, brand, vehicleType)
Values (0.40, 30.00, "S87 HUO", "Ford", "super heavyweight");
INSERT INTO Vehicle(priceKM, priceDay, plate, brand, vehicleType)
Values (0.30, 25.00, "K78 UIS", "GMC", "tourism");
INSERT INTO Vehicle(priceKM, priceDay, plate, brand, vehicleType)
Values (0.50, 42.50, "K78 DSI", "Chevrolet", "heavyweight");
INSERT INTO Vehicle(priceKM, priceDay, plate, brand, vehicleType)
Values (0.45, 42.50, "G99 DLO", "Ford", "heavyweight");
INSERT INTO Vehicle(priceKM, priceDay, plate, brand, vehicleType)
Values (0.30, 35.00, "L90 SOD", "Peterbuild", "super heavyweight");
INSERT INTO Vehicle(priceKM, priceDay, plate, brand, vehicleType)
Values (0.50, 45.00, "A12 ALS", "GMC", "super heavyweight");
INSERT INTO Vehicle(priceKM, priceDay, plate, brand, vehicleType)
Values (0.85, 80.00, "Y98 SJD", "Lamborghini", "tourism");
INSERT INTO Vehicle(priceKM, priceDay, plate, brand, vehicleType)
Values (0.70, 72.50, "K89 SDF", "Mercedes", "tourism");
INSERT INTO Vehicle(priceKM, priceDay, plate, brand, vehicleType)
Values (0.50, 55.00, "P98 SNW", "Dodge", "heavyweight");

-- SELECT * FROM Vehicle;

-- Customers
INSERT INTO Customer(firstName, lastName, address, phone, companyName)
Values ("Alice", "Wonderland", "123 Wellington", "514 123 3212", NULL); -- Individual
INSERT INTO Customer(firstName, lastName, address, phone, companyName)
Values ("Irina", "Kim", "700 Wellington", "514 312 0000", "Morgan Stanley"); -- Company
INSERT INTO Customer(firstName, lastName, address, phone, companyName)
Values ("Andrey", "Varenik", "24th Avenue", "438 793 8492", NULL); -- Individual
INSERT INTO Customer(firstName, lastName, address, phone, companyName)
Values ("Jack", "London", "56 Times", "438 749 2938", NULL); -- Individual
INSERT INTO Customer(firstName, lastName, address, phone, companyName)
Values ("Harry", "Potter", "234 Hagrid's str.", "514 324 7897", NULL); -- Individual
INSERT INTO Customer(firstName, lastName, address, phone, companyName)
Values ("James", "Bond", "728 Golden Street", "514 313 2465", "Casino Royal"); -- Company
INSERT INTO Customer(firstName, lastName, address, phone, companyName)
Values ("Anastasiya", "Ivleeva", "75 Sherbooke", "438 578 4938", "Dominos Pizza"); -- Company
INSERT INTO Customer(firstName, lastName, address, phone, companyName)
Values ("Sherlok", "Holmes", "221 Baker Street", "438 920 3920", NULL); -- Individual
INSERT INTO Customer(firstName, lastName, address, phone, companyName)
Values ("Jack", "Sparrow", "2324 Stealwell", "514 094 3829", "UHaul"); -- Company
INSERT INTO Customer(firstName, lastName, address, phone, companyName)
Values ("Milana", "Parisien", "23 Cote Saint Luc", "514 384 5932", "Uber"); -- Company

-- SELECT * FROM Customer;

INSERT INTO Reservation(customerID, startDate, duration)
Values (1, '2008-7-04', 180);
INSERT INTO Reservation(customerID, startDate, duration)
Values (2, '2022-3-11', 30);
INSERT INTO Reservation(customerID, startDate, duration)
Values (3, '2022-3-14', 7);
INSERT INTO Reservation(customerID, startDate, duration)
Values (4, '2022-3-04', 25);
INSERT INTO Reservation(customerID, startDate, duration)
Values (5, '2022-3-18', 20);
INSERT INTO Reservation(customerID, startDate, duration)
Values (6, '2022-3-28', 30);
INSERT INTO Reservation(customerID, startDate, duration)
Values (7, '2022-2-1', 70);
INSERT INTO Reservation(customerID, startDate, duration)
Values (7, '2022-12-5', 60);
INSERT INTO Reservation(customerID, startDate, duration)
Values (1, '2022-2-5', 200);
INSERT INTO Reservation(customerID, startDate, duration)
Values (9, '2020-1-1', 365);

-- SELECT * FROM Reservation;

INSERT INTO Mission(startDate, endDate, place, driverID, vehicleID, reservationID)
Values ('2022-2-10', '2022-2-15', "123 St Catherine", 2, 3, 4);
INSERT INTO Mission(startDate, endDate, place, driverID, vehicleID, reservationID)
Values ('2022-3-20', '2022-3-25', "244 St Constanste", 1, 4, 5);
INSERT INTO Mission(startDate, endDate, place, driverID, vehicleID, reservationID)
Values ('2022-3-10', '2022-3-15', "48 Newman", 5, 8, 7);
INSERT INTO Mission(startDate, endDate, place, driverID, vehicleID, reservationID)
Values ('2020-1-12', '2020-1-15', "110 Parnasse", 2, 3, 10);
INSERT INTO Mission(startDate, endDate, place, driverID, vehicleID, reservationID)
Values ('2022-3-5', '2022-3-14', "312 Tachereau", 4, 7, 4);
INSERT INTO Mission(startDate, endDate, place, driverID, vehicleID, reservationID)
Values ('2020-10-10', '2021-10-15', "354 St Catherine", 3, 7, 9);
INSERT INTO Mission(startDate, endDate, place, driverID, vehicleID, reservationID)
Values ('2022-12-12', '2021-12-17', "132 St Jacques", 6, 9, 8);
INSERT INTO Mission(startDate, endDate, place, driverID, vehicleID, reservationID)
Values ('2022-5-22', '2022-5-27', "6546 Wellington", 8, 5, 9);
INSERT INTO Mission(startDate, endDate, place, driverID, vehicleID, reservationID)
Values ('2022-8-13', '2022-8-20', "6453 Queen", 3, 3, 9);
INSERT INTO Mission(startDate, endDate, place, driverID, vehicleID, reservationID)
Values ('2022-9-21', '2022-9-28', "5334 Sherboroke", 5, 9, 9);

-- SELECT * FROM Mission;

INSERT INTO Invoice(odometer, startDate, endDate, total, missionID, paymentType)
Values (432, '2022-2-10', '2022-2-16', 1350.43, 1, Null);
INSERT INTO Invoice(odometer, startDate, endDate, total, missionID, paymentType)
Values (54, '2022-3-20', '2022-3-25', 500, 2, "credit");
INSERT INTO Invoice(odometer, startDate, endDate, total, missionID, paymentType)
Values (324, '2022-3-10', '2022-3-15', 233.34, 3, "cash");
INSERT INTO Invoice(odometer, startDate, endDate, total, missionID, paymentType)
Values (221, '2020-1-12', '2020-1-15', 1230.32, 4, "check");
INSERT INTO Invoice(odometer, startDate, endDate, total, missionID, paymentType)
Values (121, '2022-3-5', '2022-3-14', 321.42, 5, Null);
INSERT INTO Invoice(odometer, startDate, endDate, total, missionID, paymentType)
Values (21, '2020-10-10', '2021-10-15', 213.43, 6, "check");
INSERT INTO Invoice(odometer, startDate, endDate, total, missionID, paymentType)
Values (75, '2022-12-12', '2021-12-17', 700.43, 7, Null);
INSERT INTO Invoice(odometer, startDate, endDate, total, missionID, paymentType)
Values (125, '2022-5-22', '2022-5-27', 240.23, 8, "credit");
INSERT INTO Invoice(odometer, startDate, endDate, total, missionID, paymentType)
Values (123, '2022-8-13', '2022-8-20', 421.32, 9, "cash");
INSERT INTO Invoice(odometer, startDate, endDate, total, missionID, paymentType)
Values (109, '2022-9-21', '2022-9-28', 0, 10, "credit");

-- SELECT * FROM Invoice;


-- We have to verify if the driver can drive the vehicle type & mission start/end are in the mission range 
-- & that car and driver are available for that date

