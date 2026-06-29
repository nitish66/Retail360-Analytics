/*============================================================
  Retail360 Analytics Platform
  Script: 001_dim_date.sql
============================================================*/

CREATE TABLE dim.DimDate
(
    DateKey             INT             NOT NULL PRIMARY KEY,
    FullDate            DATE            NOT NULL,

    DayNumber           TINYINT         NOT NULL,
    DayName             NVARCHAR(20)    NOT NULL,

    WeekNumber          TINYINT         NOT NULL,

    MonthNumber         TINYINT         NOT NULL,
    MonthName           NVARCHAR(20)    NOT NULL,

    QuarterNumber       TINYINT         NOT NULL,
    QuarterName         NVARCHAR(10)    NOT NULL,

    CalendarYear        SMALLINT        NOT NULL,

    IsWeekend           BIT             NOT NULL,
    IsHoliday           BIT             NOT NULL DEFAULT 0
);
GO