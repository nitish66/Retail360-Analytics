/*============================================================
  Retail360 Analytics Platform
  Script: 002_fact_inventory.sql
============================================================*/

CREATE TABLE fact.FactInventory
(
    InventoryKey       BIGINT IDENTITY(1,1) PRIMARY KEY,

    DateKey            INT NOT NULL,

    ProductKey         INT NOT NULL,

    StoreKey           INT NOT NULL,

    QuantityOnHand     INT NOT NULL,

    ReorderLevel       INT NOT NULL,

    InventoryValue     DECIMAL(18,2) NOT NULL,

    CreatedDate        DATETIME2 NOT NULL
        DEFAULT SYSUTCDATETIME()
);
GO