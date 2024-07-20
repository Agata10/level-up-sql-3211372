-- Create a reservation for a customer who may or may not
-- already be listed in our Customers table.

-- Use the following information:
-- Sam McAdams (smac@kinetecoinc.com), for 5 people
-- on August 12, 2022 at 6PM (18:00)


Select
*
FROM
Customers 
WHERE
FirstName = 'Sam' AND LastName='McAdams' AND email = 'smac@kinetecoinc.com'

INSERT into
Customers(FirstName,LastName,email)
VALUES ('Sam','McAdams','smac@kinetecoinc.com')

INSERT into 
reservations(CustomerId,Date,PartySize)
VALUES ((Select
CustomerId
FROM
Customers 
WHERE
email = 'smac@kinetecoinc.com'),'2022-08-12 18:00:00', 5)

Select
*
FROM reservations
WHERE 
date = '2022-08-12 18:00:00'

