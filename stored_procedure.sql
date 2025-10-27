CREATE OR ALTER PROCEDURE dbo.UpdateWatermarkTable
    @lastload NVARCHAR(50)   -- recibido como texto
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @lastload_clean NVARCHAR(50) = REPLACE(@lastload, 'Z', '');

    UPDATE dbo.watermark_table
    SET last_load = TRY_CONVERT(datetime2(3), @lastload_clean, 126);
END;
GO
