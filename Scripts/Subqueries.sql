-- Query 1
select AVG(Quantity) as average
from Orders;

-- query 2
select OrderKey, Quantity
from Orders
where Quantity > 2;


-- Subqueries
select OrderKey, Quantity
from Orders
where Quantity > (select AVG(Quantity) as average
                  from Orders);

-- Subqueries
select OrderKey,
       Quantity,
       (select SUM(Quantity)
        from Orders AS o2
        where o2.OrderKey <= o1.OrderKey
          and Quantity > (select AVG(Quantity) as average
                          from Orders)
          and CustomerKey IN (select CustomerKey from Customer where Occupation = 'management')) As RunningTotal
from Orders AS o1
where Quantity > (select AVG(Quantity) as average
                  from Orders)
  and CustomerKey IN (select CustomerKey from Customer where Occupation = 'management')
order by OrderKey;