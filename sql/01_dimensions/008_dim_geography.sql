CREATE TABLE dim.DimGeography
(
    GeographyKey       INT IDENTITY(1,1) PRIMARY KEY,

    Country            NVARCHAR(100),

    State              NVARCHAR(100),

    City               NVARCHAR(100),

    Region             NVARCHAR(100),

    PostalCode         NVARCHAR(20),

    CreatedDate        DATETIME2 DEFAULT SYSUTCDATETIME()
);
GO