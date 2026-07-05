ALTER TABLE fact.FactSales
ADD CONSTRAINT CK_FactSales_Quantity
CHECK (Quantity > 0);

ALTER TABLE fact.FactSales
ADD CONSTRAINT CK_FactSales_SalesAmount
CHECK (SalesAmount >= 0);

ALTER TABLE fact.FactSales
ADD CONSTRAINT CK_FactSales_CostAmount
CHECK (CostAmount >= 0);
GO