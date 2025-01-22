select Category,
       Color,
       COUNT(*)                    As Products,
       FORMAT(MAX(ListPrice), '0') AS Maximum_Price,
       FORMAT(MIN(ListPrice), '0') As Minimum_Price,
       FORMAT(AVG(ListPrice), '0') As Average_Price
from Product
GROUP BY Category, Color
HAVING AVG(ListPrice) > 100 AND Category = 'BIKES';


select Category,
       Color,
       COUNT(*)                    As Products,
       FORMAT(MAX(ListPrice), '0') AS Maximum_Price,
       FORMAT(MIN(ListPrice), '0') As Minimum_Price,
       FORMAT(AVG(ListPrice), '0') As Average_Price
from Product
GROUP BY Category, Color
HAVING AVG(ListPrice) > 100 AND Category = 'BIKES'
ORDER BY Color;


SELECT TOP 10 WITH TIES
    Product,
    Subcategory,
    Color,
    ListPrice
FROM Product
ORDER BY Color , ListPrice DESC , Category;

SELECT
    Product,
    Subcategory,
    Color,
    ListPrice
FROM Product
ORDER BY Color , ListPrice DESC , Category
OFFSET 5 ROWS FETCH NEXT 5 ROWS ONLY;