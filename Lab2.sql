-- Querying with Transact SQL - Lab2 Quering Tables with SELECT

--#1 Retrive a list of cities
--SELECT Distinct City, StateProvince
--From SalesLT.Address;

--#2 Retrieve the heaviest products
--SELECT TOP 10 PERCENT Name
--FROM SalesLT.Product ORDER BY Weight DESC;

--#3 Retrieve the heaviest 100 products not including the heaviest ten
--SELECT Name
--FROM SalesLT.Product ORDER BY Weight DESC
--OFFSET 10 ROWS FETCH NEXT 100 ROWS ONLY;


--Challenge 2

--#1 Retrieve prioduct details for product model 1
--SELECT Name, Color, Size
--FROM SalesLT.Product
--WHERE ProductModelID = 1;

--#2 Filter products by color and size
--SELECT ProductNumber, Name 
--FROM SalesLT.Product 
--WHERE Color IN ('Black','Red','White') AND Size IN ('S','M');

--#3 Filter products by product number
--SELECT ProductNumber, Name, ListPrice
--From SalesLT.Product
--WHERE ProductNumber LIKE 'BK-%';

--#4 Retrieve specific product by product number
--SELECT ProductNumber, Name, ListPrice
--FROM SalesLT.Product
--WHERE ProductNumber LIKE 'BK-[^R]%-[0-9][0-9]';