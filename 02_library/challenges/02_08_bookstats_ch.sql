-- Create two reports about book statistics.

-- Report 1: Show how many titles were published 
-- in each year.
SELECT
published,
count(Distinct(title)) as count
from
books 
group by 
published
order by count desc


-- Report 2: Show the five books that have been
-- checked out the most.
SELECT
b.title,
b.Barcode,
b.author,
l.bookid, 
count(l.loanDate) as TotalCheckout
FROM
loans as l
join books as b
on l.bookid = b.bookid
group by 
b.title
order by TotalCheckout desc
limit 5