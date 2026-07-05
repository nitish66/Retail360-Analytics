ALTER TABLE fact.FactReturns
ADD CONSTRAINT FK_FactReturns_Date
FOREIGN KEY (DateKey)
REFERENCES dim.DimDate(DateKey);
GO

ALTER TABLE fact.FactReturns
ADD CONSTRAINT FK_FactReturns_Customer
FOREIGN KEY (CustomerKey)
REFERENCES dim.DimCustomer(CustomerKey);
GO

ALTER TABLE fact.FactReturns
ADD CONSTRAINT FK_FactReturns_Product
FOREIGN KEY (ProductKey)
REFERENCES dim.DimProduct(ProductKey);
GO

ALTER TABLE fact.FactReturns
ADD CONSTRAINT FK_FactReturns_Store
FOREIGN KEY (StoreKey)
REFERENCES dim.DimStore(StoreKey);
GO