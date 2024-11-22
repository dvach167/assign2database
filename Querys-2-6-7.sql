# 2
SELECT A.ApartNum, A.ApartType, BD.BldgName, BD.BldgAddr
    FROM Apartment AS A
    JOIN Booking BK ON A.ApartID = BK.ApartID
    WHERE BK.DateStart > "2024-11-21" OR BK.DateEnd < "2024-11-21" # TODO date range
    JOIN Building BD ON A.BuildingID = BD.BuildingID;

# 6
SELECT BK.BookID, A.ApartNum, A.ApartType, BD.BldgName, BD.BldgAddr
    FROM Booking AS BK
    WHERE BK.DateStart < CURRENT_DATE() AND BK.DateEnd > CURRENT_DATE()
    JOIN Apartment A ON BK.ApartID = A.ApartID
    JOIN Building BD ON A.BuildingID = BD.BuildingID;

# 7
SELECT A.ApartNum, G.FirstName + " " + G.LastName, "BookingStatus"
    FROM Booking AS BK
    WHERE BK.DateStart > "2024-11-21" OR BK.DateEnd < "2024-11-21" # TODO date range
    JOIN Guest G ON BK.GuestID = G.GuestID;
