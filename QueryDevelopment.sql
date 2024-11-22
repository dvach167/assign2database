
-- Requirement 1, 
-- Retrieve the details of all apartments in a specific building, sorted by apartment type.
SELECT A.ApartNum, A.ApartType, B.Name, B.Address
FROM Apartment AS A JOIN Building AS B
ON A.BuildingID = B.BuildingID
WHERE A.BuildingID = 1
ORDER BY A.ApartType;

-- Requirement 3
-- List the buildings with the highest number of booked apartments.
SELECT B.BuildingID, B.Name AS BuildingName, B.Address AS BuildingAddress, COUNT(DISTINCT Bk.ApartID) AS BookedApartments
FROM Booking AS Bk
JOIN Apartment AS A ON Bk.ApartID = A.ApartID
JOIN Building AS B ON A.BuildingID = B.BuildingID
GROUP BY B.BuildingID, B.Name, B.Address
ORDER BY BookedApartments DESC;

-- Requirement 5
-- Find guests who have made more than 2 bookings.
SELECT G.GuestID, G.FirstName, G.LastName, COUNT(Bk.BookID) AS BookingCount
FROM Guest AS G
JOIN Booking AS Bk ON G.GuestID = Bk.GuestID
GROUP BY G.GuestID, G.FirstName, G.LastName
HAVING COUNT(Bk.BookID) > 2;
