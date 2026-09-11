DECLARE @DT datetime = '2026-01-10 04:23:33'
DECLARE @DT2 datetime = GetDate()
DECLARE @D date = GetDate()
DECLARE @T time = GetDate()

PRINT @DT 
PRINT @D
PRINT @T

SELECT @DT AS date_time, @D AS date_, @T AS time_
UNION ALL
SELECT @DT2 AS date_time, @D AS date_, @T AS time_