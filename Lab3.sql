-- Retrieve customer orders
--SELECT c.CompanyName, oh.SalesOrderID, oh.TotalDue
--FROM SalesLT.Customer AS c
--JOIN SalesLT.SalesOrderHeader AS oh
--ON oh.CustomerID = c.CustomerID;

-- Retrieve customer orders with addresses
--SELECT c.CompanyName, a.AddressLine1, ISNULL(a.AddressLine2, '') AS AddressLine2,
	   --a.City, a.StateProvince, a.PostalCode, a.CountryRegion, oh.SalesOrderID, oh.TotalDue
--FROM SalesLT.Customer AS c
--JOIN SalesLT.SalesOrderHeader AS oh
--ON oh.CustomerID = c.CustomerID
--JOIN SalesLT.CustomerAddress AS ca
--ON c.CustomerID = ca.CustomerID AND AddressType = 'Main Office'
--JOIN SalesLT.Address AS a
--ON ca.AddressID = a.AddressID;


-- Challenge 2: Retrieve Sales Data

-- Retrieve a list of all customers and their orders
--SELECT c.CompanyName, c.FirstName, c.LastName, oh.SalesOrderID, oh.TotalDue
--FROM SalesLT.Customer AS c
--LEFT JOIN SalesLT.SalesOrderHeader AS oh
--ON c.CustomerID = oh.CustomerID
--ORDER BY oh.SalesOrderID DESC;


-- Retrieve a list of customers with no address
--SELECT c.CompanyName, c.FirstName, c.LastName, c.Phone
--FROM SalesLT.Customer AS c
--LEFT JOIN SalesLT.CustomerAddress AS ca
--ON c.CustomerID = ca.CustomerID
--WHERE ca.AddressID IS NULL;


-- Retrieve a list of customers and products without orders
--SELECT c.CustomerID, p.ProductID
--FROM SalesLT.Customer AS c
--FULL JOIN SalesLT.SalesOrderHeader AS oh
--ON c.CustomerID = oh.CustomerID
--FULL JOIN SalesLT.SalesOrderDetail AS od
--ON od.SalesOrderID = oh.SalesOrderID
--FULL JOIN SalesLT.Product AS p
--ON p.ProductID = od.ProductID
--WHERE oh.SalesOrderID IS NULL
--ORDER BY ProductID, CustomerID;