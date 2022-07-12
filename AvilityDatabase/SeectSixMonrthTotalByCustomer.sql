CREATE PROCEDURE [dbo].[SelectSizeMonthTotalByCustomer]
	@id int
AS


    SELECT  ol.OrdID,
            sum(ol.Cost * ol.Quantity)
    from Customer c
	left join [Order] o on o.CustomerID = @id
    left join OrderLine ol on ol.OrdID = o.OrderID
    where o.OrderDate >  dateadd(m, -6, getdate() - datepart(d, getdate()) + 1)
    group by ol.ordid

