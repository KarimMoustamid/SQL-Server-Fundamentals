-- How To retrieve multiple colum from a Table .
-- NOTE : The order will very because the result is a set

Select  *
FROM Customer;

Select FirstName , LastName , Occupation
FROM Customer;

Select FirstName + ' ' + LastName AS Fullname , Occupation
FROM Customer;

Select TOP 10 FirstName + ' ' + LastName AS Fullname , Occupation
FROM Customer;

Select Occupation
FROM Customer;

Select DISTINCT Occupation
FROM Customer;