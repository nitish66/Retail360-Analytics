CREATE INDEX IX_FactInventory_Date
ON fact.FactInventory(DateKey);
GO

CREATE INDEX IX_FactInventory_Product
ON fact.FactInventory(ProductKey);
GO

CREATE INDEX IX_FactInventory_Store
ON fact.FactInventory(StoreKey);
GO