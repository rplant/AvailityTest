CREATE PROCEDURE [dbo].[SelectCustomerStartWithS]
AS
	Select 
		c.FirstName,
		c.LastName
	from Customer c
	where c.LastName like 's%'
	order by c.LastName desc


RETURN 0
