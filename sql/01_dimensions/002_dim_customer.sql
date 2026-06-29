/*============================================================
  Retail360 Analytics Platform
  Script: 002_dim_customer.sql
============================================================*/

CREATE TABLE dim.DimCustomer
(
    CustomerKey        INT IDENTITY(1,1) PRIMARY KEY,

    CustomerID         NVARCHAR(20) NOT NULL UNIQUE,

    FirstName          NVARCHAR(50) NOT NULL,
    LastName           NVARCHAR(50) NOT NULL,

    Gender             NVARCHAR(20),

    DateOfBirth        DATE,

    Email              NVARCHAR(150),

    Phone              NVARCHAR(30),

    LoyaltyTier        NVARCHAR(30),

    CustomerSegment    NVARCHAR(50),

    City               NVARCHAR(100),

    State              NVARCHAR(100),

    Country            NVARCHAR(100),

    EffectiveDate      DATE NOT NULL,

    ExpiryDate         DATE NOT NULL,

    IsCurrent          BIT NOT NULL,

    CreatedDate        DATETIME2 DEFAULT SYSUTCDATETIME(),

    ModifiedDate       DATETIME2 NULL
);
GO