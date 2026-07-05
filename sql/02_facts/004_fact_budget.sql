CREATE TABLE fact.FactBudget
(
    BudgetKey          BIGINT IDENTITY(1,1) PRIMARY KEY,

    DateKey            INT NOT NULL,

    StoreKey           INT NOT NULL,

    ProductKey         INT NOT NULL,

    BudgetSales        DECIMAL(18,2),

    BudgetProfit       DECIMAL(18,2),

    CreatedDate        DATETIME2
        DEFAULT SYSUTCDATETIME()
);
GO