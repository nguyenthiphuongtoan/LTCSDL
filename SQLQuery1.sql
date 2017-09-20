/*
*Câu 1 Viết store-procedure tính tổng 2 số a,b và in ra kết quả
*/
IF OBJECT_ID('uspcau1','p') IS NOT NULL
	DROP PROC uspCau1
GO

CREATE PROC uspCau1
	@a INT,
	@b INT 

AS
	RETURN (@a + @b)
GO
--gọi
DECLARE @tong int =0, @a int =3, @b int = 2
EXEC @tong = uspCau1 @a , @b
PRINT N'Tổng 2 số a và b la ' + CAST(@tong AS varchar)

/*
*tổng 2 số thực
*/
IF OBJECT_ID('uspCau1','p') IS NOT NULL
	DROP PROC uspCau1
GO

CREATE PROC uspCau1
	@a float=0, --default
	@b float=0,
	@tong float OUT --hoăc có thể ghi OUTPUT
	
AS
	SET @tong=@a+@b;
GO
DECLARE @a float = 3.2, @b float = 5.4, @tong float =0
EXEC uspCau1 @a,@b,@tong OUT
PRINT @tong