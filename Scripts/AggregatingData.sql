-- Aggregate functions operate over a set of rows and return a single summarizing value.
-- DISTINCT is used with aggregate functions to ensure that only unique values are considered
-- when performing the aggregation. This is particularly useful when there are duplicates or nulls
-- in the data that should not contribute to the resulting summary value.

select *
from Product;

select COUNT(*), COUNT(ProductKey)
from Product;


select COUNT(*),
       MAX(ListPrice) AS Max,
       MIN(ListPrice) As Min,
       AVG(ListPrice) As AVG
from Product;

select FORMAT(MAX(ListPrice), '0') AS Maximum_Price,
       FORMAT(MIN(ListPrice), '0') As Minimum_Price,
       FORMAT(AVG(ListPrice), '0') As Average_Price
from Product;

select Category,
       COUNT(*)                    As Products,
       FORMAT(MAX(ListPrice), '0') AS Maximum_Price,
       FORMAT(MIN(ListPrice), '0') As Minimum_Price,
       FORMAT(AVG(ListPrice), '0') As Average_Price
from Product
GROUP BY Category;

select Category,
       Color,
       COUNT(*)                    As Products,
       FORMAT(MAX(ListPrice), '0') AS Maximum_Price,
       FORMAT(MIN(ListPrice), '0') As Minimum_Price,
       FORMAT(AVG(ListPrice), '0') As Average_Price
from Product
GROUP BY Category, Color;