SET NOCOUNT ON;
 
DECLARE @Rows INT;
 
SET @Rows = 1;
 
WHILE @Rows > 0
BEGIN  
 
	-- DELETE
 
	SET @Rows = @@ROWCOUNT;
 
	PRINT 'Deleted ' + CAST(@Rows AS VARCHAR(30))

END
