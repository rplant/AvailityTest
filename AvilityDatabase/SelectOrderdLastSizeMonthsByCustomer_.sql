CREATE PROCEDURE [dbo].[SelectOrderdLastSizeMonthsByCustomer]
	@customerid int
AS
	With TotalOrders_cte as
	(select sum(ol.cost)
	 from orderline ol)

	SELECT *
	from OrderLine ol
	inner join [Order] o on o.OrderID = ol.OrdID
	inner join Customer c on c.CustID =  c.CustID
	where c.CustID = @customerid and o.OrderDate > dateadd(m, -6, getdate() - datepart(d, getdate()) + 1)

