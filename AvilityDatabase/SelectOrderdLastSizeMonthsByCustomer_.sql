CREATE PROCEDURE [dbo].[SelectOrderdLastSizeMonthsByCustomer]
	@customerid int
AS
	SELECT *
	from OrderLine ol
	inner join [Order] o on o.OrderID = ol.OrdID
	inner join Customer c on c.CustID =  c.CustID
	where c.CustID = @customerid and o.OrderDate > dateadd(m, -6, getdate() - datepart(d, getdate()) + 1)

