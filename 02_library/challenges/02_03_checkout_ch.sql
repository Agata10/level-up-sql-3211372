-- Check out two books for Jack Vaan (jvaan@wisdompets.com).
-- Book 1: The Picture of Dorian Gray, 2855934983
-- Book 2: Great Expectations, 4043822646
-- The checkout date is August 25, 2022 and the 
-- due date is September 8, 2022.

SELECT
BookId
FROM
Books
WHERE barcode = 2855934983;

SELECT
*
from
Patrons
WHERE email = 'jvaan@wisdompets.com'
-- 50

INSERT INTO
Loans(BookId,PatronId,LoanDate,DueDate)
VALUES
((SELECT
BookId
FROM
Books
WHERE barcode = 2855934983), 50, '2022-08-25','2022-09-08'),
((SELECT
BookId
FROM
Books
WHERE barcode = 4043822646), 50, '2022-08-25','2022-09-08')

SELECT
*
from
Loans
WHERE LoanDate='2022-08-25'