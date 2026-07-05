CREATE INDEX IX_FactSales_Date
ON fact.FactSales(DateKey);

CREATE INDEX IX_FactSales_Product
ON fact.FactSales(ProductKey);

CREATE INDEX IX_FactSales_Customer
ON fact.FactSales(CustomerKey);

CREATE INDEX IX_FactSales_Store
ON fact.FactSales(StoreKey);

CREATE INDEX IX_FactSales_Order
ON fact.FactSales(SalesOrderNumber);
GO