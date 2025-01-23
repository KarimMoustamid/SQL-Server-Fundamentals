select t.CountryCode,
       t.CountryName,
       COUNT(c.CustomerKey) AS Customers
from SalesTerritory AS t
         join Customer As c
              on t.GeographyKey = c.GeographyKey
group by t.CountryCode, t.CountryName;


-- Cleaning :
select UPPER(LTRIM(t.CountryCode))                                    AS CountryCode,
       --LEN(t.CountryCode)   AS Lenght,
       --RTRIM(LTRIM(t.CountryName, '*'), '*') AS CountryName,
       REPLACE(TRIM(BOTH '*' FROM t.CountryName), 'Cansda', 'Canada') AS CountryName,
       COUNT(c.CustomerKey)                                           AS Customers
from SalesTerritory AS t
         join Customer As c
              on t.GeographyKey = c.GeographyKey
group by t.CountryCode, t.CountryName;


-- Concat :
select FirstName + ' ' + LastName AS fullname
from Customer;
select CONCAT(FirstName, ' ', LastName) AS fullname
from Customer;

select CONCAT_WS(' ', FirstName, LastName) as fullname,
       LEFT(FirstName, 1)                  as initial,
       RIGHT(FirstName, 1)                 as lastleters,
       SUBSTRING(LastName, 3, 2)           as subset
from Customer
--where FirstName LIKE 'Sam%';
where PATINDEX('Sam%', FirstName) > 0 and PATINDEX('R_s%', LastName) > 0;