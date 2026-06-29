# Architecture Decision Records (ADR)

---

## ADR-001

### Title

Use Star Schema for the Data Warehouse

### Status

Accepted

### Context

The Retail360 Analytics Platform requires a data model optimized for reporting and analytical queries.

### Decision

Adopt a Star Schema using Kimball dimensional modeling.

### Consequences

Advantages

- Faster Power BI performance
- Simpler DAX
- Easier maintenance
- Better scalability

Trade-offs

- Slightly more storage due to denormalized dimensions

---

## ADR-002

### Title

Use Surrogate Keys

### Status

Accepted

### Context

Business keys may change over time and are not optimal for joins.

### Decision

Every dimension table will use an integer surrogate key.

### Consequences

Advantages

- Faster joins
- Supports SCD Type 2
- Better indexing

---

## ADR-003

### Title

Use Slowly Changing Dimensions Type 2

### Status

Accepted

### Context

Customer and product attributes can change over time.

### Decision

Track historical changes using EffectiveDate, ExpiryDate and IsCurrent.

### Consequences

Advantages

- Historical reporting
- Accurate trend analysis
- Enterprise best practice