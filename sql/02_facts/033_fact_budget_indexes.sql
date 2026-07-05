CREATE INDEX IX_FactBudget_Date
ON fact.FactBudget(DateKey);
GO

CREATE INDEX IX_FactBudget_Product
ON fact.FactBudget(ProductKey);
GO

CREATE INDEX IX_FactBudget_Store
ON fact.FactBudget(StoreKey);
GO