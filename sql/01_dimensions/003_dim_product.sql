CREATE TABLE dim.DimProduct
(
    ProductKey         INT IDENTITY(1,1) PRIMARY KEY,

    ProductID          NVARCHAR(20) NOT NULL UNIQUE,

    ProductName        NVARCHAR(200) NOT NULL,

    Category           NVARCHAR(100),

    SubCategory        NVARCHAR(100),

    Brand              NVARCHAR(100),

    Color              NVARCHAR(50),

    Size               NVARCHAR(50),

    UnitCost           DECIMAL(18,2),

    UnitPrice          DECIMAL(18,2),

    SupplierID         NVARCHAR(20),

    EffectiveDate      DATE NOT NULL,

    ExpiryDate         DATE NOT NULL,

    IsCurrent          BIT NOT NULL,

    CreatedDate        DATETIME2 DEFAULT SYSUTCDATETIME(),

    ModifiedDate       DATETIME2 NULL
);
GO