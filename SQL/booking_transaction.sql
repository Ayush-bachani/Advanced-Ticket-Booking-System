USE ticket_system;

START TRANSACTION;

SELECT * FROM Seats WHERE seat_id = 1 AND status = 'AVAILABLE' FOR UPDATE NOWAIT;

UPDATE Seats SET status = 'BOOKED' WHERE seat_id = 1;

INSERT INTO Bookings (user_id, seat_id, status) VALUES (1, 1, 'CONFIRMED');

COMMIT;

SELECT * FROM Seats;
SELECT * FROM Bookings;
