USE mdc_ch02;
SELECT * FROM CUSTOMER;
SELECT * FROM INVOICE;
SELECT * FROM INVOICE_ITEM;
SELECT LastName, FirstName, Phone FROM CUSTOMER;
SELECT LastName, FirstName, Phone FROM CUSTOMER WHERE FirstName = 'Nikki';
SELECT FirstName, LastName, Phone, DateIn, DateOut from CUSTOMER,INVOICE WHERE TotalAmount > 100.00 ; 
SELECT FirstName, LastName, Phone FROM CUSTOMER WHERE FirstName LIKE 'B%';
SELECT FirstName, LastName, Phone FROM CUSTOMER WHERE PHONE LIKE '_23%';
SELECT MAX(TotalAmount) AS MaxTotalAmount , MIN(TotalAmount) AS MinTotalAmount FROM INVOICE; 
SELECT AVG(TotalAmount) AS AverageTotalAmount FROM INVOICE;
SELECT COUNT(*) NumbersOfCustomers FROM CUSTOMER;
SELECT LastName, FirstName FROM CUSTOMER GROUP BY LastName, FirstName; 
SELECT LastName, FirstName, COUNT(*) count FROM CUSTOMER GROUP BY LastName,FirstName;
SELECT LastName, FirstName, Phone FROM CUSTOMER WHERE CUSTOMERID IN (SELECT CustomerID FROM INVOICE WHERE TotalAmount > 100.00) ORDER BY LastName ASC, FirstName DESC;
SELECT LastName, FirstName, Phone FROM CUSTOMER JOIN INVOICE WHERE TotalAmount  > 100.00 ORDER BY LastName ASC, FirstName DESC;
SELECT LastName, FirstName, Phone FROM CUSTOMER WHERE CustomerID IN (SELECT CustomerID FROM INVOICE_ITEM WHERE Item LIKE 'Dress Shirt%')ORDER BY LastName ASC, FirstName DESC;
SELECT LastName, FirstName, Phone FROM CUSTOMER WHERE CustomerID IN (SELECT CustomerID FROM INVOICE_ITEM WHERE Item LIKE 'Dress Shirt%') ORDER BY LastName ASC, FirstName DESC;

