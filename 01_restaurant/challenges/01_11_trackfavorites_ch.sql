-- Update information in the database.

-- Set Cleo Goldwater's favorite dish to
-- the Quinoa Salmon Salad.

Update 
Customers
Set
FavoriteDish = (SELECT
DishID
FROM
Dishes
WHERE
Name = 'Quinoa Salmon Salad')
WHERE
FirstName = 'Cleo' AND LastName = 'Goldwater';

SELECT 
c.FirstName, c.LastName, c.FavoriteDish, d.Name
FROM Customers as c
join dishes as d
on d.DishID = c.FavoriteDish
WHERE c.FirstName = 'Cleo' and c.LastName='Goldwater';

SELECT
*
FROM Customers as c
WHERE c.FirstName = 'Cleo' and c.LastName='Goldwater';