<<<<<<< HEAD
SELECT * FROM saleslt.salesOrderDetail

SELECT * from saleslt.salesOrderHeader;

--fact
SELECT t1.[SalesOrderID], t1.[CustomerID], t1.[OrderDate], t1.[SubTotal], t1.[TaxAmt], t1.[Freight], t1.[TotalDue],
    t2.[OrderQty], t2.[ProductID], t2.UnitPrice, t2.UnitPriceDiscount, t2.LineTotal
FROM [SalesLt].[salesOrderHeader] t1 
    INNER JOIN [SalesLt].[salesOrderDetail] t2 ON t1.SalesOrderID=t2.SalesOrderID

--dimension
SELECT [CustomerID],[CompanyName] FROM saleslt.Customer;

SELECT T1.PRODUCTID, t1.productnumber, t1.color, t1.ProductCategoryID, t2.Name as [ProductCategoryName]
FROM 
saleslt.[Product] t1
    JOIN [saleslt].[ProductCategory] t2 
        ON t1.[ProductCategoryID]=t1.ProductCategoryID
WHERE 1=1
=======
SELECT * FROM saleslt.salesOrderDetail

SELECT * from saleslt.salesOrderHeader;

--fact
SELECT t1.[SalesOrderID], t1.[CustomerID], t1.[OrderDate], t1.[SubTotal], t1.[TaxAmt], t1.[Freight], t1.[TotalDue],
    t2.[OrderQty], t2.[ProductID], t2.UnitPrice, t2.UnitPriceDiscount, t2.LineTotal
FROM [SalesLt].[salesOrderHeader] t1 
    INNER JOIN [SalesLt].[salesOrderDetail] t2 ON t1.SalesOrderID=t2.SalesOrderID

--dimension
SELECT [CustomerID],[CompanyName] FROM saleslt.Customer;

SELECT T1.PRODUCTID, t1.productnumber, t1.color, t1.ProductCategoryID, t2.Name as [ProductCategoryName]
FROM 
saleslt.[Product] t1
    JOIN [saleslt].[ProductCategory] t2 
        ON t1.[ProductCategoryID]=t1.ProductCategoryID
WHERE 1=1
>>>>>>> 9f0b5ffe1f26a21c1aaa5f0f39e46d394bcc364a
and t1.Color is not null