USE ticket_system;

SELECT seat_id, seat_number, status, version FROM Seats WHERE seat_id = 3;

UPDATE Seats SET status  = 'BOOKED', version = version + 1 WHERE seat_id = 3 AND version = 0;

SELECT ROW_COUNT() AS rows_updated;

SELECT * FROM Seats WHERE seat_id = 3;
