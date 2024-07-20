-- Identify a few customers who have ordered delivery
-- from the restaurant the most often, so we can send
-- them a promotional coupon.

SELECT
c.firstname, 
c.lastname,
o.customerid,
count(o.orderid) AS OrdersTotal
FROM
Orders as o
inner join Customers as c
on c.customerid = o.customerid
group by o.customerid
order by OrdersTotal DESC
limit 10

