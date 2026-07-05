ALTER TABLE fact.FactInventory
ADD CONSTRAINT CK_FactInventory_Quantity
CHECK (QuantityOnHand >= 0);
GO

ALTER TABLE fact.FactInventory
ADD CONSTRAINT CK_FactInventory_ReorderLevel
CHECK (ReorderLevel >= 0);
GO

ALTER TABLE fact.FactInventory
ADD CONSTRAINT CK_FactInventory_Value
CHECK (InventoryValue >= 0);
GO