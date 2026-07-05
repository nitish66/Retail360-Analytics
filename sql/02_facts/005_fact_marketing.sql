CREATE TABLE fact.FactMarketing
(
    MarketingKey       BIGINT IDENTITY(1,1) PRIMARY KEY,

    DateKey            INT NOT NULL,

    PromotionKey       INT NOT NULL,

    CampaignCost       DECIMAL(18,2),

    Impressions        BIGINT,

    Clicks             BIGINT,

    Conversions        BIGINT,

    RevenueGenerated   DECIMAL(18,2),

    CreatedDate        DATETIME2
        DEFAULT SYSUTCDATETIME()
);
GO