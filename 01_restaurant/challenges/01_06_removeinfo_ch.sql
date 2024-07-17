-- Remove incorrect information from the database.

-- A customer named Norby has notified us he won't 
-- be able to keep his Friday reservation. 
-- Today is July 24, 2022.

SELECT
*
FROM 
Reservations AS r
JOIN
Customers AS c
on
r.CustomerID = c.CustomerID
WHERE
FirstName = 'Norby'
and
r.date > '2022-07-24';


DELETE FROM
Reservations
WHERE 
ReservationID = 2000;