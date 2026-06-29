CREATE TABLE dim.DimSupplier
(
    SupplierKey        INT IDENTITY(1,1) PRIMARY KEY,

    SupplierID         NVARCHAR(20) NOT NULL UNIQUE,

    SupplierName       NVARCHAR(200),

    Country            NVARCHAR(100),

    SupplierRating     DECIMAL(3,2),

    LeadTimeDays       INT,

    EffectiveDate      DATE NOT NULL,

    ExpiryDate         DATE NOT NULL,

    IsCurrent          BIT NOT NULL,

    CreatedDate        DATETIME2 DEFAULT SYSUTCDATETIME(),

    ModifiedDate       DATETIME2 NULL
);
GO