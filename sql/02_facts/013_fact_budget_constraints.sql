ALTER TABLE fact.FactBudget
ADD CONSTRAINT FK_FactBudget_Date
FOREIGN KEY (DateKey)
REFERENCES dim.DimDate(DateKey);
GO

ALTER TABLE fact.FactBudget
ADD CONSTRAINT FK_FactBudget_Product
FOREIGN KEY (ProductKey)
REFERENCES dim.DimProduct(ProductKey);
GO

ALTER TABLE fact.FactBudget
ADD CONSTRAINT FK_FactBudget_Store
FOREIGN KEY (StoreKey)
REFERENCES dim.DimStore(StoreKey);
GO