-- MICROSOFT MANAGER TRANSACT SQL LAB 1

--Challenge 1

--#1
--SELECT *
--FROM SalesLT.Customer

--#2
--SELECT Title,FirstName,MiddleName,LastName,ISNULL(Suffix,' ')
--FROM SalesLT.Customer

--#3
--SELECT SalesPerson,ISNULL(Title,'  ') + ' ' +  ISNULL(FirstName,'  ') + ' ' + ISNULL(MiddleName,'  ') + ' ' + ISNULL(LastName,' ') + ' ' + ISNULL(Suffix,' ') AS CustomerName,Phone
--FROM SalesLT.Customer


--Challenge 2

--#1
--SELECT CAST(CustomerID AS varchar(5)) + ': ' + CompanyName AS CustomerCompanies
--FROM SalesLT.Customer

--#2
--SELECT SalesOrderNumber + ' (' + STR(RevisionNumber, 1) + ')' AS OrderRevision, CONVERT(nvarchar(30), OrderDate, 102) as OrderDate
--From SalesLT.SalesOrderHeader

--Chanllenge 3

--#1
--SELECT FirstName + ' ' + ISNULL(MiddleName + ' ', '')+ LastName AS CustomerName
--FROM SalesLT.Customer;

--#2
--SELECT  CustomerID, COALESCE(EmailAddress, Phone) As PrimaryContact
--FROM SalesLT.Customer;

--#3
--Select SalesOrderID, OrderDate, 
	--CASE
		--WHEN ShipDate IS NULL THEN 'Awaiting Shipment'
		--ELSE 'Shipped'
		--End AS ShippingStatus
--From SalesLT.SalesOrderHeader;
