CREATE TABLE audit.ETLExecutionLog
(
    ExecutionID        BIGINT IDENTITY(1,1) PRIMARY KEY,
    PipelineName       NVARCHAR(100) NOT NULL,
    StartTime          DATETIME2 NOT NULL,
    EndTime            DATETIME2 NULL,
    Status             NVARCHAR(20) NOT NULL,
    RowsProcessed      INT NULL,
    ErrorMessage       NVARCHAR(MAX) NULL
);
GO