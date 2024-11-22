INSERT INTO Building (Manager, Address, Name) VALUES
('John Smith', '123 Main St, Cityville', 'Downtown Tower'),
('Jane Doe', '456 Elm St, Suburbia', 'Suburb Heights'),
('Michael Brown', '789 Maple Ave, Greenfield', 'Greenfield Apartments'),
('Sarah Johnson', '101 Pine Rd, Lakeside', 'Lakeside Residency'),
('Emily Davis', '202 Oak Ln, Uptown', 'Uptown Lofts');

INSERT INTO Apartment (ApartNum, ApartType, BuildingID) VALUES
(101, '1BHK', 1), (102, '2BHK', 1), (103, '3BHK', 1), 
(201, 'Studio', 2), (202, '1BHK', 2), (203, '2BHK', 2), 
(301, '1BHK', 3), (302, '2BHK', 3), (303, '3BHK', 3), 
(401, 'Studio', 4), (402, '1BHK', 4), (403, '2BHK', 4), 
(501, '3BHK', 5), (502, '2BHK', 5), (503, '1BHK', 5);


INSERT INTO Guest (FirstName, LastName) VALUES
('Alice', 'Anderson'),
('Bob', 'Brown'),
('Charlie', 'Clark'),
('Diana', 'Davis'),
('Edward', 'Evans'),
('Fiona', 'Foster'),
('George', 'Green'),
('Hannah', 'Harris'),
('Ian', 'Irving'),
('Jackie', 'Jones');


INSERT INTO Booking (ApartID, GuestID, DateStart, DateEnd) VALUES
(101, 1, '2024-01-01', '2024-01-07'),
(102, 2, '2024-01-05', '2024-01-10'),
(103, 3, '2024-02-01', '2024-02-15'),
(201, 4, '2024-03-01', '2024-03-10'),
(202, 5, '2024-03-11', '2024-03-20'),
(203, 6, '2024-04-01', '2024-04-10'),
(301, 7, '2024-04-15', '2024-04-25'),
(302, 8, '2024-05-01', '2024-05-10'),
(303, 9, '2024-05-15', '2024-05-20'),
(401, 10, '2024-06-01', '2024-06-07'),
(402, 1, '2024-06-10', '2024-06-17'),
(403, 2, '2024-07-01', '2024-07-07'),
(501, 3, '2024-07-15', '2024-07-22'),
(502, 4, '2024-08-01', '2024-08-10'),
(503, 5, '2024-08-11', '2024-08-20'),
(101, 6, '2024-09-01', '2024-09-07'),
(102, 7, '2024-09-10', '2024-09-15'),
(201, 8, '2024-10-01', '2024-10-07'),
(301, 9, '2024-10-15', '2024-10-20'),
(401, 10, '2024-11-01', '2024-11-07');
