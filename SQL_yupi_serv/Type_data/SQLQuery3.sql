DECLARE @dt datetime = SysDateTime()
DECLARE @days datetime = '2020-05-05'

SELECT @dt AS _dano_
UNION ALL
SELECT @days
UNION ALL
SELECT Cast(@dt AS int) - Cast(@days AS int) AS _days_
--46275
--46275 - 2321
UNION ALL
SELECT Cast(2345 AS datetime) AS RESULT
UNION ALL
SELECT Convert(varchar, @dt) AS HERO
--UNION ALL
SELECT TRY_CONVERT(char, @dt, 4) AS char_result