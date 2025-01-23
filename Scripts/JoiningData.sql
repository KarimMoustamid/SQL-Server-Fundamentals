-- Joining Data Processing Phases: Cartesian Product => Apply Filters => Add outer rows.

-- CROSS JOIN: Cartesian Product.
SELECT CustomerKey, ProductKey
FROM Customer
         CROSS JOIN Product;


-- INNER JOINS (Default Join): Cartesian Product => Apply Filters.
SELECT TOP 5 *
from Customer;
SELECT TOP 5 *
from Orders;

SELECT c.CustomerKey , c.FirstName , o.OrderKey , o.SalesAmount
FROM Customer AS c
         INNER JOIN Orders AS o ON c.CustomerKey = o.CustomerKey;

-- Enhancement :
SELECT c.CustomerKey , c.FirstName ,
       COUNT(o.OrderKey) AS Orders , SUM(o.SalesAmount) AS Amount
FROM Customer AS c
         INNER JOIN Orders AS o ON c.CustomerKey = o.CustomerKey
GROUP BY c.CustomerKey, c.FirstName
ORDER BY Orders DESC;

-- OUTER JOINS: Cartesian Product => Apply Filters => Add outer rows.
SELECT c.CustomerKey , c.FirstName , o.OrderKey , o.SalesAmount
FROM Customer AS c
          LEFT OUTER JOIN Orders AS o ON c.CustomerKey = o.CustomerKey
WHERE o.OrderKey IS NULL;

-- SELF-JOINS: Apply to all types of JOINS.
SELECT e.FirstName + ' ' + e.LastName AS Employee , m.FirstName + ' ' + m.LastName AS Manager
    FROM Employee AS e LEFT OUTER JOIN Employee AS m
ON e.EmployeeKey = m.ManagerKey