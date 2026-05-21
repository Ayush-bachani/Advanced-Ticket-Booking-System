USE ticket_system;

START TRANSACTION;

SELECT seat_id FROM Seats WHERE status = 'AVAILABLE' LIMIT 1 FOR UPDATE SKIP LOCKED;

UPDATE Seats SET status = 'BOOKED' WHERE seat_id = 2;

INSERT INTO Bookings (user_id, seat_id, status) VALUES (1, 2, 'CONFIRMED');

COMMIT;

SELECT * FROM Seats;
SELECT * FROM Bookings;
