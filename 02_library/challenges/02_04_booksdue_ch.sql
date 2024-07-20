-- Prepare a report of books due to be returned
-- to the library on July 13, 2022.
-- Provide the due date, the book title, and
-- the borrower's first name and email address.

SELECT
b.title,
l.dueDate,
p.FirstName,
p.LastName,
p.email 
FROM
loans as l
join
Patrons as p
on p.PatronId = l.PatronId
join Books as b
on b.BookId = l.BookId
WHERE l.dueDate = '2022-07-13' and l.returnedDate is null