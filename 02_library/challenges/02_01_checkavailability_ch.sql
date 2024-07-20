-- Determine how many copies of the book 'Dracula'
-- are available for library patrons to borrow.

SELECT
count(b.BookId) as TotalBooks
FROM
Books as b
WHERE
title = 'Dracula';
-- 12
-- 60
-- 73

SELECT
count(l.BookId) as CheckedOut
FROM
Loans as l
join books as b
on b.BookId = l.BookId
WHERE
returnedDate is null AND (l.BookId in (12,60,73))

SELECT
(SELECT
count(b.BookId) as TotalBooks
FROM
Books as b
WHERE
title = 'Dracula') -
(SELECT
count(l.BookId) as CheckedOut
FROM
Loans as l
join books as b
on b.BookId = l.BookId
WHERE
returnedDate is null AND (l.BookId in (12,60,73)))
AS BooksAvaiable;