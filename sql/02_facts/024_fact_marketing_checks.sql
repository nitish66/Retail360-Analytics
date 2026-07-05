ALTER TABLE fact.FactMarketing
ADD CONSTRAINT CK_FactMarketing_CampaignCost
CHECK (CampaignCost >= 0);
GO

ALTER TABLE fact.FactMarketing
ADD CONSTRAINT CK_FactMarketing_Impressions
CHECK (Impressions >= 0);
GO

ALTER TABLE fact.FactMarketing
ADD CONSTRAINT CK_FactMarketing_Clicks
CHECK (Clicks >= 0);
GO

ALTER TABLE fact.FactMarketing
ADD CONSTRAINT CK_FactMarketing_Conversions
CHECK (Conversions >= 0);
GO

ALTER TABLE fact.FactMarketing
ADD CONSTRAINT CK_FactMarketing_Revenue
CHECK (RevenueGenerated >= 0);
GO