--Transact-SQL Lab5 Using Functions and Aggregating Data

--#1 Retrieve the year and month in which products were first sold
--SELECT YEAR(SellStartDate) SellStartYear, DATENAME(mm,SellStartDate) SellStartMonth,
--	   ProductID, Name
--FROM SalesLT.Product
--ORDER BY SellStartYear;


--#2 Extract product types from product numbers
--SELECT Name, ProductNumber, LEFT(ProductNumber, 2) AS ProductType
--FROM SalesLT.Product;

--Challenge 2

--#1 Retrieve companies ranked by sales totals
--SELECT	CompanyName,
--		TotalDue AS Revenue,
--		RANK() OVER (ORDER BY TotalDue DESC) AS RankByRevenue
--FROM SalesLT.SalesOrderHeader AS SOH
--JOIN SalesLT.Customer AS C
--ON SOH.CustomerID=C.CustomerID;

--Challenge 3

  
-- Retrieve total sales by product
--SELECT Name,SUM(LineTotal) AS TotalRevenue
--FROM SalesLT.SalesOrderDetail AS SOD
--JOIN SalesLT.Product AS P ON SOD.ProductID=P.ProductID
--GROUP BY P.Name
--ORDER BY TotalRevenue DESC;

-- Filter the product sales list to include only products that cost over $1,000
--SELECT Name,SUM(LineTotal) AS TotalRevenue
--FROM SalesLT.SalesOrderDetail AS SOD
--JOIN SalesLT.Product AS P ON SOD.ProductID=P.ProductID
--WHERE P.ListPrice > 1000
--GROUP BY P.Name
--ORDER BY TotalRevenue DESC;

-- Filter the product sales groups to include only total sales over $20,000
--SELECT Name,SUM(LineTotal) AS TotalRevenue
--FROM SalesLT.SalesOrderDetail AS SOD
--JOIN SalesLT.Product AS P ON SOD.ProductID=P.ProductID
--WHERE P.ListPrice > 1000
--GROUP BY P.Name
--HAVING SUM(LineTotal) > 20000
--ORDER BY TotalRevenue DESC;