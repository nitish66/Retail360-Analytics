CREATE TABLE dim.DimEmployee
(
    EmployeeKey        INT IDENTITY(1,1) PRIMARY KEY,

    EmployeeID         NVARCHAR(20) NOT NULL UNIQUE,

    FirstName          NVARCHAR(50),

    LastName           NVARCHAR(50),

    Department         NVARCHAR(100),

    JobTitle           NVARCHAR(100),

    ManagerID          NVARCHAR(20),

    HireDate           DATE,

    EffectiveDate      DATE NOT NULL,

    ExpiryDate         DATE NOT NULL,

    IsCurrent          BIT NOT NULL,

    CreatedDate        DATETIME2 DEFAULT SYSUTCDATETIME(),

    ModifiedDate       DATETIME2 NULL
);
GO