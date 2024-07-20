-- Create a list of books to feature in an exhibit.

-- Make a pick list of books published from 1890-1899 
-- which are not currently checked out.

SELECT
*
FROM
Books as b
WHERE
b.published >= 1890 AND b.published <= 1899 
AND (BookId not in (SELECT BookId from loans where returneddate is null)
)
order by Title