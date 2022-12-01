-- a. List of customers that are businesses (Enterprises or Companies).
SELECT firstName, lastName FROM Customer
WHERE companyName IS NOT NULL;

-- b. List of reservations whose reservation number is greater than 1.
SELECT * FROM Reservation
WHERE reservationID > 1;

-- c. List of drivers and vehicles having participated in at least one mission.
SELECT DISTINCT d.firstName, d.lastName, v.vehicleID, v.plate
FROM Mission
INNER JOIN Vehicle as v on Mission.vehicleID=v.vehicleID
INNER JOIN Driver as d on Mission.driverID=d.driverID;

-- d. List of missions between March 11, 2022 and March 18, 2022 as well as the drivers and vehicles participating in these missions.
SELECT m.missionID, d.driverID, d.firstName, d.lastName, v.vehicleID, v.plate
FROM Mission as m
INNER JOIN Driver as d on m.driverID=d.driverID
INNER JOIN Vehicle as v on m.vehicleID=v.vehicleID
WHERE m.startDate >= '2022-03-11' AND m.endDate <= '2022-03-18';

-- e. The list of customers who have not paid their invoices.
SELECT firstName, lastName FROM Customer
WHERE Customer.customerID IN 
	(SELECT customerID FROM Reservation
		WHERE reservationID IN
			(SELECT reservationID FROM Mission
            JOIN Invoice
			ON Mission.missionID = Invoice.missionID
            WHERE Invoice.paymentType IS NULL));

-- f. List of drivers who have driven 'GMC' brand vehicles.
SELECT DISTINCT d.driverID, d.firstName, d.lastName 
FROM Mission
INNER JOIN Driver as d ON Mission.driverID=d.driverID
WHERE Mission.vehicleID IN (SELECT vehicleID FROM Vehicle WHERE brand = 'GMC');

-- g. Which customers have invoices greater than $1000?
SELECT firstName, lastName FROM Customer
WHERE Customer.customerID IN 
	(SELECT customerID FROM Reservation
		WHERE reservationID IN
			(SELECT reservationID FROM Mission, Invoice
				WHERE Mission.missionID = Invoice.missionID
				GROUP BY reservationID
				HAVING SUM(Invoice.total) >1000 ));
            

-- h. List of customers with their number of associated invoices.
SELECT firstName, lastName, B.InvoiceCount FROM Customer, Reservation,
-- a table with reservation id, and number of invoices associated with each reservation - A
(SELECT Mission.reservationID AS reserveID, COUNT(Invoice.invoiceID) InvoiceCount FROM Invoice, Mission
WHERE Invoice.missionID = Mission.missionID
GROUP BY Mission.reservationID) AS B
WHERE B.reserveID = Reservation.reservationID AND Reservation.customerID = Customer.customerID;


-- i. What are the last names and first names of the drivers who have a mission between the following dates: February 1, 2022 and March 31, 2022 whose mileage (number of kilometers traveled) is more than 7000 km?
SELECT firstName, lastName FROM Driver,
-- table of drivers who drove more than 7000 km between these dates
(SELECT driverID, SUM(odometer) AS kmSum FROM Mission, Invoice
	WHERE Mission.missionID = Invoice.missionID
	AND (Mission.startDate >= '2022-02-01' AND Mission.endDate <= '2022-03-31')
	GROUP BY driverID) AS A
WHERE Driver.driverID = A.driverID AND A.kmSum >= 7000;

