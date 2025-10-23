CREATE TABLE watermark_table 
(
	last_load Varchar(2000)
)

SELECT min(Date_ID) FROM [dbo].[source_cars_data]

INSERT INTO [dbo].[watermark_table]
VALUES('DT00000') 