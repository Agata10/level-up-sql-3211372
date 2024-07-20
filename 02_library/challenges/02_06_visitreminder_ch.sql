-- Prepare a report of the library patrons
-- who have checked out the fewest books.
SELECT
p.firstName,
p.email,
p.lastName,
l.patronID,
count(l.patronID) as CheckedBooks
FROM
loans as l
join patrons as p
on p.patronID = l.patronID
GROUP BY
l.patronid
order by CheckedBooks
limit 10
