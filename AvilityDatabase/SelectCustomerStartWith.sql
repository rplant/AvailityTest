CREATE PROCEDURE [dbo].[SelectCustomerStartWithS]
	@param1 int = 0,
	@param2 int
AS
	Select * 
	from Customer c
	where c.firstName like 's%'


RETURN 0
