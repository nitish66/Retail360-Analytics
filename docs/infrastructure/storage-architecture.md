# Azure Storage Architecture

## Storage Account

Name: stretail360dev

Purpose:
Primary Data Lake for Retail360 Analytics.

## Containers

### Bronze

Stores raw source files exactly as received.

### Silver

Stores cleaned and standardized datasets.

### Gold

Stores curated datasets optimized for analytics.

## Data Flow

Source Files
        ↓
Bronze
        ↓
Azure Data Factory
        ↓
Silver
        ↓
Business Transformations
        ↓
Gold
        ↓
Azure SQL Database
        ↓
Power BI