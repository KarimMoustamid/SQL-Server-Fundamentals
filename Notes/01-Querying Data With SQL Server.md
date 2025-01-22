> Connect to Database : Server=localhost,1433;Database=AdventureWorksDW;User Id=sa;Password=B5uf1g8p29;TrustServerCertificate=True;
# <span style="background-color: #fff; color: #000;display: inline-block;"> Selection Data </span>


### <span style="color:#818cf8;">DDL (Data Definition Language), DML (Data Manipulation Language), and DCL (Data Control Language) in SQL Server</span>

**<h4 style="background-color: #15803d; color: white;display: inline-block;">  What are DDL, DML, and DCL?  </h4>:**

SQL Server provides various types of commands that can be categorized into DDL, DML, and DCL. Each category has specific purposes in managing and manipulating the database.

#### <h3 style="background-color: #881337; color: white;display: inline-block;"> DDL (Data Definition Language) </h3>

<span style="background-color: #fcd34d; color: black;display: inline-block;font-weight: 400;font-style: italic;">DDL commands are used to define and manage the structure of a database, such as creating, altering, or deleting tables and other database objects.</span>

Examples of DDL commands:
- **CREATE**: Used to create new database objects (e.g., tables, views, or schemas).
- **ALTER**: Used to modify existing database objects.
- **DROP**: Used to delete database objects.
- **TRUNCATE**: Used to remove all records from a table (without logging the individual row deletions).

**Example:**
```sql
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name NVARCHAR(100),
    Age INT
);
```

#### <h3 style="background-color: #881337; color: white;display: inline-block;"> DML (Data Manipulation Language) </h3>

<span style="background-color: #fcd34d; color: black;display: inline-block;font-weight: 400;font-style: italic;">DML commands are used to manipulate data stored in the database, such as retrieving, inserting, updating, or deleting records.</span>

Examples of DML commands:
- **SELECT**: Used to retrieve data from a database.
- **INSERT**: Adds new rows of data into a table.
- **UPDATE**: Modifies existing rows in a table.
- **DELETE**: Removes rows from a table.

<span style="background-color: #be185d; color: #e7e5e4;display: inline-block;font-weight: 400;font-style: italic;">DML commands interact with the data but do not define the structure or set access permissions.</span>

**Example:**
```sql
INSERT INTO Students (StudentID, Name, Age)
VALUES (1, 'John Doe', 20);
```

#### <h3 style="background-color: #881337; color: white;display: inline-block;"> DCL (Data Control Language) </h3>

<span style="background-color: #fcd34d; color: black;display: inline-block;font-weight: 400;font-style: italic;">DCL commands are used to control access to data and manage permissions for database objects.</span>

Examples of DCL commands:
- **GRANT**: Provides specific privileges to users or roles.
- **REVOKE**: Removes specific privileges from users or roles.

<span style="background-color: #be185d; color: #e7e5e4;display: inline-block;font-weight: 400;font-style: italic;">DCL commands are crucial for defining who can access, modify, or administer the data in a database.</span>

**Example:**
```sql
GRANT SELECT, INSERT ON Students TO User1;
```

---

**<h4 style="background-color: #15803d; color: white;display: inline-block;">  Summary  </h4>:**

- <span style="background-color: #fcd34d; color: black;display: inline-block;font-weight: 400;font-style: italic;">DDL</span>: Used to define the database structure (e.g., CREATE, ALTER, DROP, TRUNCATE).
- <span style="background-color: #fcd34d; color: black;display: inline-block;font-weight: 400;font-style: italic;">DML</span>: Used to manipulate the data within the database (e.g., SELECT, INSERT, UPDATE, DELETE).
- <span style="background-color: #fcd34d; color: black;display: inline-block;font-weight: 400;font-style: italic;">DCL</span>: Used to control access and permissions on database objects (e.g., GRANT, REVOKE).


</br>


## <span style="color:#818cf8;">SQL Query Order of Execution</span>

**<h4 style="background-color: `#15803d;` color: white;display: inline-block;"> Understanding the Order of Execution in SQL Queries </h4>:**

When executing a SQL query, the steps follow a logical order to ensure accurate results are retrieved and processed. The SQL engine does **not** process commands in the order they're written but in a predefined **execution sequence**.

#### <h3 style="background-color: `#881337;` color: white;display: inline-block;"> Order of Execution </h3>

<span style="background-color: `#fcd34d;` color: black;display: inline-block;font-weight: 400;font-style: italic;">The proper sequence for the SQL query execution is as follows:</span>

---

1. **<h5 style="background-color: #15803d; color: white;display: inline-block;">FROM</h5>**  
   <span style="background-color: `#fcd34d;` color: black;display: inline-block;font-weight: 400;font-style: italic;">The FROM clause identifies the source table(s) for the query. Joins between tables, if present, are processed during this step.</span>

2. **<h5 style="background-color: #15803d; color: white;display: inline-block;">WHERE</h5>**  
   <span style="background-color: `#fcd34d;` color: black;display: inline-block;font-weight: 400;font-style: italic;">The WHERE clause filters rows based on given conditions, limiting the data for further steps.</span>

3. **<h5 style="background-color: #15803d; color: white;display: inline-block;">GROUP BY</h5>**  
   <span style="background-color: `#fcd34d;` color: black;display: inline-block;font-weight: 400;font-style: italic;">The GROUP BY clause groups rows into subsets based on one or more columns, preparing the data for aggregation.</span>

4. **<h5 style="background-color: #15803d; color: white;display: inline-block;">HAVING</h5>**  
   <span style="background-color: `#fcd34d;` color: black;display: inline-block;font-weight: 400;font-style: italic;">The HAVING clause filters groups formed by the GROUP BY clause based on aggregate conditions (e.g., COUNT, SUM).</span>

5. **<h5 style="background-color: #15803d; color: white;display: inline-block;">SELECT</h5>**  
   <span style="background-color: `#fcd34d;` color: black;display: inline-block;font-weight: 400;font-style: italic;">The SELECT clause determines which columns or computed values to include in the final result set.</span>

6. **<h5 style="background-color: #15803d; color: white;display: inline-block;">ORDER BY</h5>**  
   <span style="background-color: `#fcd34d;` color: black;display: inline-block;font-weight: 400;font-style: italic;">The ORDER BY clause sorts the resulting rows (from SELECT) into a specific sequence based on one or more columns.</span>

---

**<h4 style="background-color: `#15803d;` color: white;display: inline-block;"> Visual Summary </h4>:**

1. <span style="background-color: `#be185d;` color: #e7e5e4;display: inline-block;font-weight: 400;font-style: italic;">FROM</span>: Defines the source of the data.
2. <span style="background-color: `#be185d;` color: #e7e5e4;display: inline-block;font-weight: 400;font-style: italic;">WHERE</span>: Filters rows from the source tables.
3. <span style="background-color: `#be185d;` color: #e7e5e4;display: inline-block;font-weight: 400;font-style: italic;">GROUP BY</span>: Groups rows into aggregated subsets.
4. <span style="background-color: `#be185d;` color: #e7e5e4;display: inline-block;font-weight: 400;font-style: italic;">HAVING</span>: Filters the grouped data.
5. <span style="background-color: `#be185d;` color: #e7e5e4;display: inline-block;font-weight: 400;font-style: italic;">SELECT</span>: Determines the final result columns and computations.
6. <span style="background-color: `#be185d;` color: #e7e5e4;display: inline-block;font-weight: 400;font-style: italic;">ORDER BY</span>: Sorts the resulting dataset.

---

**<h4 style="background-color: `#15803d;` color: white;display: inline-block;"> Practical Example </h4>:**

Here's how the execution order applies to a sample query:

```sql
SELECT Department, COUNT(*) AS TotalEmployees
FROM Employees
WHERE Age > 30
GROUP BY Department
HAVING COUNT(*) > 5
ORDER BY TotalEmployees DESC;
```

1. **FROM**: Identify and load data from the `Employees` table.
2. **WHERE**: Filter where `Age > 30`.
3. **GROUP BY**: Group remaining rows by `Department`.
4. **HAVING**: Keep groups with `COUNT(*) > 5`.
5. **SELECT**: Retrieve the group column (`Department`) and the count.
6. **ORDER BY**: Order results by the `TotalEmployees` in descending order.

This proper execution flow ensures accurate and structured query results.


</br>

##  <span style="background-color: #1e40af; color: #e7e5e4;display: inline-block;font-weight: 400;font-style: italic;"> Exemple :</span>

```sql 
-- Selecting Data 
SELECT TOP 10 FirstName + ' ' + LastName AS FullName, Occupation FROM Customer ORDER BY FullName;
  
SELECT DISTINCT Occupation FROM Customer;

```

```sql
-- Filtering Data : 

SELECT * FROM Customer WHERE FirstName = 'Sam'; 
	
SELECT * FROM Customer WHERE FirstName <> 'Sam'; 
	
SELECT * FROM Customer WHERE FirstName LIKE 'Sam%'; 

SELECT * FROM Customer WHERE FirstName LIKE 'Sam%' AND YearlyIncome >= 5000 AND	YearlyIncome <= 10000; 

SELECT * FROM Customer WHERE FirstName LIKE 'Sam%' AND YearlyIncome BETWEEN 5000 AND 10000; 
        
SELECT * FROM Customer WHERE FirstName LIKE 'Sam%' AND YearlyIncome IN(10000 , 20000);
	
SELECT * FROM Customer WHERE FirstName LIKE 'Sam%' AND (YearlyIncome < 50000 OR YearlyIncome > 100000); 

``` 

</br>

# <span style="background-color: #fff; color: #000;display: inline-block;"> Aggregating Data </span>
### <span style="color:#818cf8;">Understanding Aggregate and Scalar Functions</span>

**<h4 style="background-color: #15803d; color: white;display: inline-block;"> Overview: </h4>:**  
In SQL and database systems, aggregate functions and scalar functions are used to perform computations—either on sets of rows or individual data elements. While **aggregate functions** operate on groups of values, **scalar functions** deal with a single value to produce a specific output.

---

#### <h3 style="background-color: #881337; color: white;display: inline-block;"> Aggregate Functions: </h3>
**<h4 style="background-color: #15803d; color: white;display: inline-block;"> What are Aggregate Functions? </h4>:**  
Aggregate functions operate over a set of rows and return a **single summarizing value**. These are incredibly useful for tasks like obtaining sums, averages, counts, minimums, and maximums from a dataset.

**<h4 style="background-color: #15803d; color: white;display: inline-block;"> Examples of Aggregate Functions: </h4>:**
1. **SUM(column_name)**  
   Computes the total sum of numeric values in the specified column.  
   <span style="background-color: #fcd34d; color: black;display: inline-block;font-weight: 400;font-style: italic;">Example:</span> Total sales figures in a table.

2. **AVG(column_name)**  
   Returns the average value of numeric fields.  
   <span style="background-color: #fcd34d; color: black;display: inline-block;font-weight: 400;font-style: italic;">Example:</span> Computing the average test scores of students.

3. **COUNT(column_name)**  
   Counts the number of rows (or non-NULL values).  
   <span style="background-color: #fcd34d; color: black;display: inline-block;font-weight: 400;font-style: italic;">Example:</span> Determining how many customers made purchases.

4. **MAX(column_name)**  
   Fetches the highest value in a column.  
   <span style="background-color: #fcd34d; color: black;display: inline-block;font-weight: 400;font-style: italic;">Example:</span> Finding the largest transaction amount.

5. **MIN(column_name)**  
   Fetches the smallest value in a column.  
   <span style="background-color: #fcd34d; color: black;display: inline-block;font-weight: 400;font-style: italic;">Example:</span> Identifying the earliest order date.

---

#### <h3 style="background-color: #881337; color: white;display: inline-block;"> Scalar Functions: </h3>
**<h4 style="background-color: #15803d; color: white;display: inline-block;"> What are Scalar Functions? </h4>:**  
Scalar functions return a **single value** based on the inputs provided. These are often used in calculations or data transformations.

**<h4 style="background-color: #15803d; color: white;display: inline-block;"> Examples of Scalar Functions: </h4>:**
1. **UPPER(string)**  
   Converts a string value to uppercase.  
   <span style="background-color: #be185d; color: #e7e5e4;display: inline-block;font-weight: 400;font-style: italic;">Example:</span> Converting a name like "John" to "JOHN".

2. **LOWER(string)**  
   Converts a string value to lowercase.  
   <span style="background-color: #be185d; color: #e7e5e4;display: inline-block;font-weight: 400;font-style: italic;">Example:</span> Converting "HELLO" to "hello".

3. **LEN(string)**  
   Returns the length of a string.  
   <span style="background-color: #be185d; color: #e7e5e4;display: inline-block;font-weight: 400;font-style: italic;">Example:</span> Finding the number of characters in "Database".

4. **ROUND(number, decimals)**  
   Rounds a number to the specified number of decimal places.  
   <span style="background-color: #be185d; color: #e7e5e4;display: inline-block;font-weight: 400;font-style: italic;">Example:</span> Rounding a value like 3.5678 to 3.57.

5. **GETDATE()**  
   Fetches the current date and time from the system.  
   <span style="background-color: #be185d; color: #e7e5e4;display: inline-block;font-weight: 400;font-style: italic;">Example:</span> Logging the timestamp of user activity.

---

#### <h3 style="background-color: #881337; color: white;display: inline-block;"> Key Differences Between Aggregate and Scalar Functions: </h3>
| **<span style="background-color: #fcd34d; color: black;display: inline-block;font-weight: 400;font-style: italic;">Feature</span>**                          | **Aggregate Functions**                                                                                  | **Scalar Functions**                                                                 |
|-----------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------|
| **<span style="background-color: #be185d; color: #e7e5e4;display: inline-block;font-weight: 400;font-style: italic;">Input</span>**                          | Operate on multiple rows or an entire column.                                                        | Operate on a single value or expression.                                           |
| **<span style="background-color: #be185d; color: #e7e5e4;display: inline-block;font-weight: 400;font-style: italic;">Output</span>**                         | Returns a single summary result (e.g., total, average).                                               | Returns a single computed result based on the input.                               |
| **<span style="background-color: #be185d; color: #e7e5e4;display: inline-block;font-weight: 400;font-style: italic;">Use Case</span>**                      | Ensure group-based computations—e.g., sum, count or average of a dataset.                             | Perform transformations or calculations on individual data items.                 |
| **<span style="background-color: #be185d; color: #e7e5e4;display: inline-block;font-weight: 400;font-style: italic;">Examples</span>**                      | SUM, AVG, COUNT, MAX, MIN                                                                             | UPPER, LOWER, LEN, ROUND, GETDATE                                                 |

**<h4 style="background-color: #15803d; color: white;display: inline-block;"> Conclusion: </h4>:**  
Aggregate functions and scalar functions provide the tools necessary for effective querying and processing of data. Understanding their differences and use cases ensures efficient handling of data for various analytical purposes.





</br>

##  <span style="background-color: #1e40af; color: #e7e5e4;display: inline-block;font-weight: 400;font-style: italic;"> Exemple :</span>


* All aggregate functions ignore Nulls except COUNT(*) whitch counts all rows .

```sql
SELECT SUM(Stock) / COUNT(*) FROM Product; -- 16 , null values where counted . 
SELECT AVG(Stock) FROM Product; -- 20 
```

```sql 
-- Count Dicstinct values 
SELECT COUNT(DISTINCT(Stock)) FROM Product;
```



</br>

#  <span style="background-color: #0369a1; color: #e7e5e4;display: inline-block;font-weight: 400;font-style: italic;">  Gouping Data </span>

```sql
SELECT TOP 10 ProductKey, Product, Category, ListPrice
FROM Product;

SELECT COUNT(ProductKey) AS TotalNumberOfProducts
FROM Product;

SELECT COUNT(ProductKey)           AS TotalCount,
       FORMAT(MAX(ListPrice), '0') AS Maximum_Price,
       MIN(ListPrice)              AS Minimum_Price,
       AVG(ListPrice)              AS Average_Price
FROM Product;


SELECT Category ,
       COUNT(ProductKey)           AS TotalCount,
       FORMAT(MAX(ListPrice), '0') AS Maximum_Price,
       MIN(ListPrice)              AS Minimum_Price,
       AVG(ListPrice)              AS Average_Price
FROM Product
GROUP BY Category;

SELECT Category , Color,
       COUNT(ProductKey)           AS TotalCount,
       FORMAT(MAX(ListPrice), '0') AS Maximum_Price,
       MIN(ListPrice)              AS Minimum_Price,
       AVG(ListPrice)              AS Average_Price
FROM Product
GROUP BY Category, Color;
```

</br>

#  <span style="background-color: #0369a1; color: #e7e5e4;display: inline-block;font-weight: 400;font-style: italic;">  Filtering Groups of Data </span>

* Where : filter before the Group By
* Having : filter after Group By


```sql
-- Order of execution : 
-- FROM , 
-- (Optional): `WHERE` , 
-- `GROUP BY` , 
-- Aggregate calculations (like `COUNT`, `MAX`, etc.) in `SELECT` ,  
-- `HAVING`
-- Final `SELECT` (projection of columns)
-- (Optional): `ORDER BY`

2. Final `SELECT` (projection of columns)
3. **(Optional):** `ORDER BY`
SELECT Category , Color,
       COUNT(ProductKey)           AS TotalCount,
       FORMAT(MAX(ListPrice), '0') AS Maximum_Price,
       MIN(ListPrice)              AS Minimum_Price,
       AVG(ListPrice)              AS Average_Price
FROM Product
GROUP BY Category, Color
HAVING AVG(ListPrice) > 100 AND Category = 'BIKES';
```


</br>

#  <span style="background-color: #0369a1; color: #e7e5e4;display: inline-block;font-weight: 400;font-style: italic;">  Ordering Data </span>

>  T-SQl is based on set theory , the output of a query is a 'set' because it lacks order .

```sql
-- `TOP 10 WITH TIES` Keyword : Returns the **top 10 rows** based on the given `ORDER BY` conditions.
-- `WITH TIES`, it includes rows that have the same values as the last (10th) row in the sort order

SELECT TOP 10 WITH TIES
       COUNT(ProductKey)           AS TotalCount,
       FORMAT(MAX(ListPrice), '0') AS Maximum_Price,
       MIN(ListPrice)              AS Minimum_Price,
       AVG(ListPrice)              AS Average_Price
FROM Product
GROUP BY Category, Color , ListPrice
HAVING AVG(ListPrice) > 100 AND Category = 'BIKES'
ORDER BY Color ASC , ListPrice DESC ;
```

```sql
SELECT
    COUNT(ProductKey)           AS TotalCount,
    FORMAT(MAX(ListPrice), '0') AS Maximum_Price,
    MIN(ListPrice)              AS Minimum_Price,
    AVG(ListPrice)              AS Average_Price
FROM Product
GROUP BY Category, Color , ListPrice
HAVING AVG(ListPrice) > 100 AND Category = 'BIKES'
ORDER BY Color ASC , ListPrice DESC
OFFSET  5 ROWS FETCH NEXT 5 ROWS ONLY; -- Only retrive from position 5 to 10;

```



</br>

# <span style="background-color: #fff; color: #000;display: inline-block;"> Joining Data </span>

> <p style="color:#e5e7eb">Joining Data Processing Phases : <span style="color:#db2777">Cartesian Product => Apply Filters  => Add outer rows </span> .</p> 


##  <span style="background-color: #b91c1c; color: #e7e5e4;display: inline-block;font-weight: 400;font-style: italic;"> Cross Join </span>

*  <p style="color:#fff;">Cross join Processing Phases : <span style="color:#f59e0b">Cartesian Product </span> <span style="color:#64748b;"> => Apply Filters  => Add outer rows</span> .</p> 

```sql
-- standard syntax SQL-92
SELECT * 
FROM Customers AS c 
CROSS JOIN Orders AS o;

-- standard syntax SQL-89
SELECT * 
FROM Customers AS c , Orders AS o;
```



##  <span style="background-color: #b91c1c; color: #e7e5e4;display: inline-block;font-weight: 400;font-style: italic;"> Inner Joins </span>

*  <p style="color:#fff;">Inner join Processing Phases : <span style="color:#f59e0b">Cartesian Product => Apply Filters </span> <span style="color:#64748b;"> => Add outer rows</span> .</p> 


```sql
-- standard syntax SQL-92
SELECT * 
FROM Customers AS c 
INNER JOIN Orders AS o
ON c.CustomerKey = o.CustomerKey;

-- standard syntax SQL-89
SELECT * 
FROM Customers AS c , Orders AS o
ON c.CustomerKey = o.CustomerKey;
```



##  <span style="background-color: #b91c1c; color: #e7e5e4;display: inline-block;font-weight: 400;font-style: italic;"> Outer Joins </span>

*  <p style="color:#fff;">Cross join Processing Phases : <span style="color:#f59e0b;">Cartesian Product => Apply Filters => Add outer rows</span> .</p> 
*  <p style="color:#fff;">Types of outer Joins : <span style="color:#f43f5e;">Left outer join, right outer join, full outer join </span> .</p> 


```sql

-- Only one standard syntax SQL-92 :

--  LEFT JOIN
SELECT * 
FROM Customers AS c 
LEFT JOIN Orders AS o
ON c.CustomerKey = o.CustomerKey;

-- RIGHT JOIN

SELECT * 
FROM Customers AS c 
RIGHT JOIN Orders AS o
ON c.CustomerKey = o.CustomerKey;

-- FULL JOIN

SELECT * 
FROM Customers AS c 
FULL JOIN Orders AS o
ON c.CustomerKey = o.CustomerKey;

```



##  <span style="background-color: #b91c1c; color: #e7e5e4;display: inline-block;font-weight: 400;font-style: italic;"> Self Joins </span>

*  <p style="color:#fff;">Cross join Processing Phases : <span style="color:#f59e0b;">Cartesian Product => Apply Filters => Add outer rows</span> .</p> 
*  <p style="color:#fff;">Includes All typed of Joins : <span style="color:#f43f5e;">Cross join, Inner join, Outer join </span>. Aliasing in Mendatory !!!.</p>

```sql
SELECT e.FirstName , e.LastName , m.FirstName , e.LastName  FROM Employee e
LEFT JOIN Employee m
on e.EmployeeKey = m.ManagerKey;
```


</br>

# <span style="background-color: #fff; color: #000;display: inline-block;"> Cleaning Data </span>

When handling raw data, it is often necessary to clean and standardize it to ensure consistency, accuracy, and usability. This process involves transforming the data into a cleaner format by removing unwanted characters, modifying text formats, or splitting and combining strings based on specific rules. Below are some commonly used functions in data cleaning.

##  <span style="background-color: #0369a1; color: #e7e5e4;display: inline-block;font-weight: 400;font-style: italic;"> Common Functions for Cleaning Data </span>

### 1. `TRIM`
The `TRIM` function removes all leading and trailing spaces from a string.

**Example:**
```sql
SELECT TRIM('   Example String   ') AS CleanedString;
-- Output: 'Example String'
```

---

### 2. `LTRIM`
The `LTRIM` function removes only leading (left) spaces from a string.

**Example:**
```sql
SELECT LTRIM('   Example String') AS CleanedString;
-- Output: 'Example String'
```

---

### 3. `RTRIM`
The `RTRIM` function removes only trailing (right) spaces from a string.

**Example:**
```sql
SELECT RTRIM('Example String   ') AS CleanedString;
-- Output: 'Example String'
```

---

### 4. `UPPER`
The `UPPER` function converts all characters in a string to uppercase.

**Example:**
```sql
SELECT UPPER('example string') AS UppercaseString;
-- Output: 'EXAMPLE STRING'
```

---

### 5. `LOWER`
The `LOWER` function converts all characters in a string to lowercase.

**Example:**
```sql
SELECT LOWER('EXAMPLE STRING') AS LowercaseString;
-- Output: 'example string'
```

---

### 6. `CONCAT`
The `CONCAT` function combines multiple strings into one, without adding any separators.

**Example:**
```sql
SELECT CONCAT('Hello', ' ', 'World') AS ConcatenatedString;
-- Output: 'Hello World'
```

---

### 7. `CONCAT_WS`
The `CONCAT_WS` function combines multiple strings with a specified separator.

**Example:**
```sql
SELECT CONCAT_WS('-', '2023', '03', '15') AS ConcatenatedString;
-- Output: '2023-03-15'
```

---

### 8. `REPLACE`
The `REPLACE` function substitutes all occurrences of a substring within a string.

**Example:**
```sql
SELECT REPLACE('abc123abc', 'abc', 'XYZ') AS ModifiedString;
-- Output: 'XYZ123XYZ'
```

---

### 9. `LEFT`
The `LEFT` function retrieves a specified number of characters from the beginning (left) of a string.

**Example:**
```sql
SELECT LEFT('Example String', 7) AS LeftString;
-- Output: 'Example'
```

---

### 10. `RIGHT`
The `RIGHT` function retrieves a specified number of characters from the end (right) of a string.

**Example:**
```sql
SELECT RIGHT('Example String', 6) AS RightString;
-- Output: 'String'
```

---

### 11. `SUBSTRING`
The `SUBSTRING` function extracts a substring from a string, starting at a specified position and for a specified number of characters.

**Example:**
```sql
SELECT SUBSTRING('Example String', 9, 6) AS SubstringExtract;
-- Output: 'String'
```

---

### 12. `PATINDEX`
The `PATINDEX` function returns the starting position of the first occurrence of a specified pattern in a string.

**Example:**
```sql
SELECT PATINDEX('%String%', 'Example String') AS PatternPosition;
-- Output: 9
```

---

These functions can be combined to perform complex data cleaning and transformation tasks. Efficient use of these tools can greatly improve data quality and simplify downstream processes.



</br>

##  <span style="background-color: #1e40af; color: #e7e5e4;display: inline-block;font-weight: 400;font-style: italic;"> Exemple :</span>

```sql 
Select UPPER(LTRIM(t.CountryCode)),
       -- LEN(t.CountryCode) AS LENGHT
       REPLACE(TRIM('*' FROM t.CountryName), 'Cansda', 'Canada') AS CountryName ,
       COUNT(c.CustomerKey) AS Customers From SalesTerritory AS t
JOIN Customer AS c
ON t.GeographyKey = c.GeographyKey
GROUP BY  LTRIM(t.CountryCode), t.CountryName;
```

</br>

## <span style="background-color: #0369a1; color: #fff; display: inline-block;"> Working With NULL </span>

`NULL` in databases represents the absence of a value. It is not equivalent to an empty string (`''`) or zero (`0`). Instead, it signifies that a value is unknown, undefined, or missing.

### Key Concepts:
- **Checking for NULL**:
  To test whether a column contains a NULL value, use `IS NULL` or `IS NOT NULL`:
  ```sql
  SELECT * FROM TableName WHERE ColumnName IS NULL;
  SELECT * FROM TableName WHERE ColumnName IS NOT NULL;
  ```

- **NULL in Expressions**:
  When `NULL` is used in mathematical or string expressions, the result is often `NULL` as well:
  ```sql
  SELECT 5 + NULL; -- Result: NULL
  SELECT 'Hello' + NULL; -- Result: NULL
  ```

- **Handling NULL**:
  To handle `NULL` effectively, SQL provides certain functions:
    - **`COALESCE()`**:
      Returns the first non-`NULL` value from a list of inputs. This is often used to provide default values.
      ```sql
      SELECT COALESCE(ColumnName, 'Default Value') AS Result FROM TableName;
      -- If ColumnName is NULL, the result will be 'Default Value'.
      ```

    - **`NULLIF()`**:
      Compares two expressions, and if they are equal, it returns `NULL`. Otherwise, it returns the first expression.
      ```sql
      SELECT NULLIF(Price, 0) AS Result FROM Products;
      -- If Price is 0, the result will be NULL. Otherwise, it will return the Price.
      ```

    - **`ISNULL()`** (SQL Server-specific):
      Similar to `COALESCE`, but only takes two arguments.
      ```sql
      SELECT ISNULL(ColumnName, 'Default Value') FROM TableName;
      ```

### Why is NULL Important?
In relational databases:
1. **Differentiate Missing vs Defaults**: `NULL` ensures you can distinguish between “no value provided” and “value explicitly set to zero or empty.”
2. **Optional Fields**: In optional fields, `NULL` supports flexibility and avoids requiring placeholder values.
3. **Filtering and Aggregations**: Proper handling of `NULL` allows accurate aggregations and filtering in reports and queries.

---

By mastering `COALESCE`, `NULLIF`, and other techniques for handling `NULL`, you can ensure accurate and consistent database operations.