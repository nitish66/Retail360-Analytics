ALTER TABLE fact.FactMarketing
ADD CONSTRAINT FK_FactMarketing_Date
FOREIGN KEY (DateKey)
REFERENCES dim.DimDate(DateKey);
GO

ALTER TABLE fact.FactMarketing
ADD CONSTRAINT FK_FactMarketing_Promotion
FOREIGN KEY (PromotionKey)
REFERENCES dim.DimPromotion(PromotionKey);
GO