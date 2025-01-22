select *
from Customer
where FirstName <> 'Sam';

select *
from Customer
where FirstName = 'Sam';

select *
from Customer
where FirstName LIKE 'Sam%';


select *
from Customer
-- where FirstName LIKE 'Sam%' AND YearlyIncome >= 50000 AND YearlyIncome <= 100000;
where FirstName LIKE 'Sam%' AND YearlyIncome BETWEEN 50000 AND  100000;

select *
from Customer
where FirstName LIKE 'Sam%' AND YearlyIncome IN(10000 , 20000 , 30000);


select *
from Customer
where FirstName LIKE 'Sam%' AND (YearlyIncome < 50000 OR YearlyIncome > 100000);