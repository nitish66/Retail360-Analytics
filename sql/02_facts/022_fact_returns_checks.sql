ALTER TABLE fact.FactReturns
ADD CONSTRAINT CK_FactReturns_Quantity
CHECK (ReturnQuantity > 0);
GO

ALTER TABLE fact.FactReturns
ADD CONSTRAINT CK_FactReturns_Amount
CHECK (ReturnAmount >= 0);
GO