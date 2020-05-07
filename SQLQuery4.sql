--SELECT CAST(ProductID as varchar(5)) + ': ' + Name AS ProductName From SalesLT.Product;

--SELECT CONVERT(varchar(5), ProductID) + ': ' + Name As ProductNames From SalesLT.Product;

--SELECT SellStartDate,
--CONVERT(nvarchar(30), SellStartDate) AS ConvertedDate,
--CONVERT(nvarchar(30), SellStartDate, 126) AS ISO8601FormatDate

SELECT SellStartDate,
       CONVERT(nvarchar(30), SellStartDate) AS ConvertedDate,
	   CONVERT(nvarchar(30), SellStartDate, 126) AS ISO8601FormatDate