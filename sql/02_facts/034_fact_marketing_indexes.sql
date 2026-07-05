CREATE INDEX IX_FactMarketing_Date
ON fact.FactMarketing(DateKey);
GO

CREATE INDEX IX_FactMarketing_Promotion
ON fact.FactMarketing(PromotionKey);
GO