CREATE TABLE dim.DimStore
(
    StoreKey           INT IDENTITY(1,1) PRIMARY KEY,

    StoreID            NVARCHAR(20) NOT NULL UNIQUE,

    StoreName          NVARCHAR(200),

    StoreType          NVARCHAR(50),

    City               NVARCHAR(100),

    State              NVARCHAR(100),

    Country            NVARCHAR(100),

    Region             NVARCHAR(100),

    OpenDate           DATE,

    EffectiveDate      DATE NOT NULL,

    ExpiryDate         DATE NOT NULL,

    IsCurrent          BIT NOT NULL,

    CreatedDate        DATETIME2 DEFAULT SYSUTCDATETIME(),

    ModifiedDate       DATETIME2 NULL
);
GO