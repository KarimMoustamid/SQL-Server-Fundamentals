select *
from Orders;


-- To calculate % of sale foreach customer in relation to the total sales for foreach employee
WITH
-- sales amount foreach employee :
         EmployeeSales AS (
    SELECT EmployeeKey, SUM(SalesAmount) AS TotalEmployeeSalesAmount
    FROM Orders
    GROUP BY EmployeeKey
),

-- sales amount foreach employee in relation to customers :
EmployeeCustomerSales AS (
    SELECT EmployeeKey, CustomerKey, SUM(SalesAmount) AS TotalCustomerSalesAmount
    FROM Orders
    GROUP BY EmployeeKey, CustomerKey
)
SELECT cte1.EmployeeKey,
       cte1.CustomerKey,
       FORMAT(cte1.TotalCustomerSalesAmount, 'N0') as CustomerSales,
       FORMAT(cte2.TotalEmployeeSalesAmount, 'N0') as TotalEmployeeSales,
       FORMAT(cte1.TotalCustomerSalesAmount / cte2.TotalEmployeeSalesAmount, 'P2') AS PrctSales
FROM EmployeeCustomerSales AS cte1
         LEFT JOIN EmployeeSales AS cte2
                   ON cte1.EmployeeKey = cte2.EmployeeKey
ORDER BY PrctSales DESC;