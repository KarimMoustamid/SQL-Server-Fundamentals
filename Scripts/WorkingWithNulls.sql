-- Casting to float to fix the issue
select Product, CAST(StandardCost AS FLOAT) AS StandardCost
from Product
where Subcategory = 'Road Bikes'
order by StandardCost DESC;


-- Working with nulls
-- step 1: identify missing values (Nulls)
-- step 2: handling missing values => replace or exclude them

-- ISNULL
select top 10 Product, EndDate, Status, ISNULL(Status, 'PAST') as Stage
from Product

-- NULLIF
select Product, NULLIF(StartDate, 0) as StartDate
from Product
where StartDate = 0;

-- COALESCE
select top 10 p.ProductKey,
              p.Product,
              COALESCE(Product, Model, SKU) AS ProductName,
              SUM(o.OrderQuantity) as OrderQuantity
from OrderDetails o
         left join Product p
                   on o.ProductKey = p.ProductKey
group by p.ProductKey, p.Product, COALESCE(Product, Model, SKU)
order by OrderQuantity desc;