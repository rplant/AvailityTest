CREATE PROCEDURE [dbo].[SelectSizeMonthTotalByCustomer]
AS

    SELECT  c.FirstName,
            c.LastName,
            ol.OrdID,
           coalesce(sum(ol.Cost * ol.Quantity),0) as Total
    from Customer c
    left join [Order] o on o.CustomerID = C.CustID
    left join OrderLine ol on ol.OrdID = o.OrderID
    where o.OrderDate >  dateadd(m, -6, getdate() - datepart(d, getdate()) + 1)
    group by C.LastName, C.FirstName, ol.OrdID

