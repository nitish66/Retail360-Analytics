CREATE TABLE fact.FactReturns
(
    ReturnKey          BIGINT IDENTITY(1,1) PRIMARY KEY,

    DateKey            INT NOT NULL,

    CustomerKey        INT NOT NULL,

    ProductKey         INT NOT NULL,

    StoreKey           INT NOT NULL,

    SalesOrderNumber   NVARCHAR(30),

    ReturnQuantity     INT NOT NULL,

    ReturnAmount       DECIMAL(18,2) NOT NULL,

    ReturnReason       NVARCHAR(200),

    CreatedDate        DATETIME2
        DEFAULT SYSUTCDATETIME()
);
GO