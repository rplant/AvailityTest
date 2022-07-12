CREATE PROCEDURE [dbo].[SelectOrderdLastSizeMonthsByCustomer]
	@customerid int
AS
	SELECT  ol.OrdID,
            sum(ol.Cost * ol.Quantity)
    from Customer c
	left join [Order] o on o.CustomerID = @customerid
    left join OrderLine ol on ol.OrdID = o.OrderID
    where o.OrderDate >  dateadd(m, -6, getdate() - datepart(d, getdate()) + 1)
    group by ol.ordid

