CREATE INDEX IX_FactReturns_Date
ON fact.FactReturns(DateKey);
GO

CREATE INDEX IX_FactReturns_Product
ON fact.FactReturns(ProductKey);
GO

CREATE INDEX IX_FactReturns_Customer
ON fact.FactReturns(CustomerKey);
GO

CREATE INDEX IX_FactReturns_Order
ON fact.FactReturns(SalesOrderNumber);
GO