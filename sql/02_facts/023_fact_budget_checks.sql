ALTER TABLE fact.FactBudget
ADD CONSTRAINT CK_FactBudget_Sales
CHECK (BudgetSales >= 0);
GO

ALTER TABLE fact.FactBudget
ADD CONSTRAINT CK_FactBudget_Profit
CHECK (BudgetProfit >= 0);
GO