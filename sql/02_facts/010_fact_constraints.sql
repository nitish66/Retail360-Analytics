ALTER TABLE fact.FactSales
ADD CONSTRAINT FK_FactSales_Date
FOREIGN KEY(DateKey)
REFERENCES dim.DimDate(DateKey);

ALTER TABLE fact.FactSales
ADD CONSTRAINT FK_FactSales_Customer
FOREIGN KEY(CustomerKey)
REFERENCES dim.DimCustomer(CustomerKey);

ALTER TABLE fact.FactSales
ADD CONSTRAINT FK_FactSales_Product
FOREIGN KEY(ProductKey)
REFERENCES dim.DimProduct(ProductKey);

ALTER TABLE fact.FactSales
ADD CONSTRAINT FK_FactSales_Store
FOREIGN KEY(StoreKey)
REFERENCES dim.DimStore(StoreKey);

ALTER TABLE fact.FactSales
ADD CONSTRAINT FK_FactSales_Employee
FOREIGN KEY(EmployeeKey)
REFERENCES dim.DimEmployee(EmployeeKey);

ALTER TABLE fact.FactSales
ADD CONSTRAINT FK_FactSales_Promotion
FOREIGN KEY(PromotionKey)
REFERENCES dim.DimPromotion(PromotionKey);
GO