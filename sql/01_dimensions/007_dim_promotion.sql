CREATE TABLE dim.DimPromotion
(
    PromotionKey       INT IDENTITY(1,1) PRIMARY KEY,

    PromotionID        NVARCHAR(20) NOT NULL UNIQUE,

    PromotionName      NVARCHAR(200),

    CampaignName       NVARCHAR(200),

    DiscountPercent    DECIMAL(5,2),

    StartDate          DATE,

    EndDate            DATE,

    CreatedDate        DATETIME2 DEFAULT SYSUTCDATETIME()
);
GO