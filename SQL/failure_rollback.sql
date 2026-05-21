USE ticket_system;

START TRANSACTION;

SELECT * FROM Seats WHERE seat_id = 3 FOR UPDATE;

UPDATE Seats SET status = 'BOOKED' WHERE seat_id = 3;

ROLLBACK;

SELECT * FROM Seats WHERE seat_id = 3;
