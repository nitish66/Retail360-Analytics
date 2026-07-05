/*============================================================
  Retail360 Analytics Platform
  Script: 001_fact_sales.sql
============================================================*/

CREATE TABLE fact.FactSales
(
    SaleKey             BIGINT IDENTITY(1,1) PRIMARY KEY,

    DateKey             INT NOT NULL,

    CustomerKey         INT NOT NULL,

    ProductKey          INT NOT NULL,

    StoreKey            INT NOT NULL,

    EmployeeKey         INT NOT NULL,

    PromotionKey        INT NULL,

    SalesOrderNumber    NVARCHAR(30) NOT NULL,

    Quantity            INT NOT NULL,

    UnitPrice           DECIMAL(18,2) NOT NULL,

    DiscountAmount      DECIMAL(18,2) NOT NULL DEFAULT 0,

    SalesAmount         DECIMAL(18,2) NOT NULL,

    CostAmount          DECIMAL(18,2) NOT NULL,

    ProfitAmount        DECIMAL(18,2) NOT NULL,

    CreatedDate         DATETIME2 NOT NULL
        DEFAULT SYSUTCDATETIME()
);
GO