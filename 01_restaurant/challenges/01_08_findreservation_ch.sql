-- Find the reservation information for a customer whose
-- name we aren't quite sure how to spell.

-- Variations of the name include:
-- Stevensen, Stephensen, Stevenson, Stephenson, Stuyvesant

-- There are four people in the party. Today is June 14th.
SELECT
r.CustomerId, c.FirstName, c.LastName, r.PartySize, r.Date, r.ReservationId
FROM
Reservations as r
Inner Join Customers as c
ON
c.CustomerId = r.CustomerId
WHERE
LastName like 'Ste%' 
AND PartySize = 4 
order by
r.date desc