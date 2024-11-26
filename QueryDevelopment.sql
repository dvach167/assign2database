
-- Requirement 1, 
-- Retrieve the details of all apartments in a specific building, sorted by apartment type.
SELECT A.ApartNum, A.ApartType, B.Name, B.Address
FROM Apartment AS A JOIN Building AS B
ON A.BuildingID = B.BuildingID
WHERE A.BuildingID = 1
ORDER BY A.ApartType;

-- 2
SELECT A.ApartNum, A.ApartType, BD.BldgName, BD.BldgAddr
    FROM Apartment AS A
    JOIN Booking BK ON A.ApartID = BK.ApartID
    WHERE BK.DateStart > "2024-11-21" OR BK.DateEnd < "2024-11-21" # TODO date range
    JOIN Building BD ON A.BuildingID = BD.BuildingID;


-- Requirement 3
-- List the buildings with the highest number of booked apartments.
SELECT B.BuildingID, B.Name AS BuildingName, B.Address AS BuildingAddress, COUNT(DISTINCT Bk.ApartID) AS BookedApartments
FROM Booking AS Bk
JOIN Apartment AS A ON Bk.ApartID = A.ApartID
JOIN Building AS B ON A.BuildingID = B.BuildingID
GROUP BY B.BuildingID, B.Name, B.Address
ORDER BY BookedApartments DESC;

-- Requirement 4 
-- Retrieve the total revenue generated by each building from bookings.
SELECT b.BuildingID, b.Name, SUM(DATEDIFF(bo.EndDate, bo.StartDate) * 100) AS TotalRevenue
FROM Building b
JOIN Apartment a ON b.BuildingID = a.BuildingID
JOIN Booking bo ON a.ApartmentID = bo.AparrtmentID
GROUP BY b.BuildingID, b.Name; 

-- Requirement 5
-- Find guests who have made more than 2 bookings.
SELECT G.GuestID, G.FirstName, G.LastName, COUNT(Bk.BookID) AS BookingCount
FROM Guest AS G
JOIN Booking AS Bk ON G.GuestID = Bk.GuestID
GROUP BY G.GuestID, G.FirstName, G.LastName
HAVING COUNT(Bk.BookID) > 2;


-- 6
SELECT BK.BookID, A.ApartNum, A.ApartType, BD.BldgName, BD.BldgAddr
    FROM Booking AS BK
    WHERE BK.DateStart < CURRENT_DATE() AND BK.DateEnd > CURRENT_DATE()
    JOIN Apartment A ON BK.ApartID = A.ApartID
    JOIN Building BD ON A.BuildingID = BD.BuildingID;

-- 7
SELECT A.ApartNum, G.FirstName + " " + G.LastName, "BookingStatus"
    FROM Booking AS BK
    WHERE BK.DateStart > "2024-11-21" OR BK.DateEnd < "2024-11-21" # TODO date range
    JOIN Guest G ON BK.GuestID = G.GuestID;
