CREATE OR ALTER PROCEDURE UpdateWatermarkTable
    @lastload DATETIME2
AS 
BEGIN 
    SET NOCOUNT ON;

    BEGIN TRANSACTION;

    UPDATE dbo.watermark_table
    SET last_load = @lastload;

    COMMIT TRANSACTION;
END;
GO
