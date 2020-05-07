--SELECT CAST(CustomerID AS varchar(5)) + ': ' + CompanyName AS CustomerCompanies
--FROM SalesLT.Customer

--SELECT SalesOrderNumber + ' (' + STR(RevisionNumber, 1) + ')' AS OrderRevision, CONVERT(nvarchar(30), OrderDate, 102) as OrderDate
--From SalesLT.SalesOrderHeader

--SELECT FirstName + ' ' + ISNULL(MiddleName + ' ', '')+ LastName AS CustomerName
--FROM SalesLT.Customer;

--SELECT  CustomerID, COALESCE(EmailAddress, Phone) As PrimaryContact
--FROM SalesLT.Customer;

--Select SalesOrderID, OrderDate, 
	--CASE
		--WHEN ShipDate IS NULL THEN 'Awaiting Shipment'
		--ELSE 'Shipped'
		--End AS ShippingStatus
--From SalesLT.SalesOrderHeader;