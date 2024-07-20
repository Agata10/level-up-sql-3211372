-- Enter a customer's delivery order into our database, 
-- and provide the total cost of the items ordered.

-- Use this order information:
-- Customer: Loretta Hundey, at 6939 Elka Place
-- Items: 1 House Salad, 1 Mini Cheeseburgers, and
-- 1 Tropical Blue Smoothie
-- Delivery date and time: September 20, 2022 @ 2PM (14:00)
-- There are no taxes or other fees.

SELECT
* 
FROM
Customers
WHERE
FirstName = 'Loretta' AND LastName = 'Hundey' AND address= '6939 Elka Place';
-- 70

SELECT
DishId, Name, Price
FROM Dishes
WHERE
Name in ('House Salad','Mini Cheeseburgers','Tropical Blue Smoothie');

INSERT into
ORDERS(CustomerID, OrderDate)
VALUES(
(SELECT 
CustomerID
FROM
Customers
WHERE
FirstName = 'Loretta' AND LastName = 'Hundey' AND address= '6939 Elka Place'), '2022-09-20 14:00:00');

SELECT 
* 
FROM 
ORDERS
WHERE 
CustomerID = (SELECT 
CustomerID
FROM
Customers
WHERE
FirstName = 'Loretta' AND LastName = 'Hundey' AND address= '6939 Elka Place') AND
OrderDate = '2022-09-20 14:00:00'
-- 1001

INSERT into
OrdersDishes(OrderId,DishId)
VALUES
(1001,(SELECT
DishId
FROM Dishes
WHERE
Name = 'House Salad')),
(1001,(SELECT
DishId
FROM Dishes
WHERE
Name = 'Mini Cheeseburgers')),
(1001,(SELECT
DishId
FROM Dishes
WHERE
Name = 'Tropical Blue Smoothie'));


SELECT
*
FROM
OrdersDishes
order by
OrderId desc


