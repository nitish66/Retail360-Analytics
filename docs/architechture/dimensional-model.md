# Retail360 Analytics Platform

## Dimensional Model

**Version:** 1.0

---

# Objective

The Retail360 Analytics Platform follows the Kimball Dimensional Modeling approach using a Star Schema.

The design separates descriptive business entities (Dimensions) from measurable business events (Facts) to optimize analytical performance in Power BI.

---

# Design Principles

The model follows these principles:

- Star Schema
- Conformed Dimensions
- Surrogate Keys
- Single Source of Truth
- Optimized for Power BI
- Slowly Changing Dimensions (SCD Type 2 where applicable)

---

# Fact Table Grain

Understanding the grain of each fact table is critical.

## FactSales

Grain:

One row represents one product sold in one order at one store on one date.

Example

Order 1001

Laptop
Mouse
Keyboard

This produces three rows in FactSales.

---

## FactInventory

One row represents the inventory status of one product in one store on one date.

---

## FactReturns

One row represents one returned product.

---

## FactMarketing

One row represents campaign performance for one campaign on one reporting date.

---

## FactEmployeePerformance

One row represents one employee's performance for one reporting period.

---

## FactBudget

One row represents budget allocation for one department for one reporting period.

---

# Dimension Tables

The following conformed dimensions will be shared across multiple fact tables.

- DimDate
- DimCustomer
- DimProduct
- DimStore
- DimEmployee
- DimSupplier
- DimPromotion
- DimGeography

---

# Relationships

Dimensions join to fact tables using surrogate keys.

Example

DimCustomer.CustomerKey

↓

FactSales.CustomerKey

All relationships are one-to-many.

Dimensions filter facts.

Facts never filter dimensions.

---

# Slowly Changing Dimensions

The following dimensions will support historical tracking.

- DimCustomer
- DimProduct

Type:

Slowly Changing Dimension Type 2

Additional Columns

EffectiveDate

ExpiryDate

IsCurrent

This allows historical reporting without overwriting previous values.

---

# Measures

Measures will not be stored inside dimensions.

Measures belong inside Fact Tables.

Examples

Revenue

Profit

Discount

Cost

Budget

Inventory

Return Amount

---

# Power BI Modeling

Power BI will import the warehouse using the Star Schema.

The semantic model will expose only business-friendly names.

Hidden technical columns will not appear to report developers.