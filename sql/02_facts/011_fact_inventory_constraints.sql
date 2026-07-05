ALTER TABLE fact.FactInventory
ADD CONSTRAINT FK_FactInventory_Date
FOREIGN KEY (DateKey)
REFERENCES dim.DimDate(DateKey);
GO

ALTER TABLE fact.FactInventory
ADD CONSTRAINT FK_FactInventory_Product
FOREIGN KEY (ProductKey)
REFERENCES dim.DimProduct(ProductKey);
GO

ALTER TABLE fact.FactInventory
ADD CONSTRAINT FK_FactInventory_Store
FOREIGN KEY (StoreKey)
REFERENCES dim.DimStore(StoreKey);
GO