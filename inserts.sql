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
