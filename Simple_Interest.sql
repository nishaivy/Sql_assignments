use assign27
CREATE function SI(@Principle BIGINT,@Time INT)
RETURNS BIGINT AS
BEGIN
   DECLARE @Rate AS INT
   SET  @Rate=5
  DECLARE @Result AS BIGINT
  SELECT  @Result = (@Principle*@Rate*@Time)/100
  RETURN @Result
END

SELECT dbo.SI(50000,2)