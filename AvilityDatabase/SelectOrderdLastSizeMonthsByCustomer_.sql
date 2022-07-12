CREATE PROCEDURE [dbo].[SelectOrderdLastSizeMonthsByCustomer]
AS

    ;with total_cte as 
    (
        select 
            c.CustId,
            coalesce(sum(ol.Cost * ol.Quantity),0) as Total 
        from Customer c
        left join [Order] o on o.CustomerID = C.CustID
        left join OrderLine ol on ol.OrdID = o.OrderID
        where o.OrderDate > dateadd(m, -6, getdate() - datepart(d, getdate()) + 1)
        group by c.CustID
        
    )


    SELECT  c.FirstName,
            c.LastName,
            coalesce(sum(ol.Cost * ol.Quantity),0) as Total 
    from Customer c
    left join total_cte t on t.CustID = c.CustID
    left join [Order] o on o.CustomerID = C.CustID
    left join OrderLine ol on ol.OrdID = o.OrderID
        and t.Total > 100 and t.Total < 500
    where o.OrderDate > dateadd(m, -6, getdate() - datepart(d, getdate()) + 1)
        AND Total > 100
    group by C.LastName, C.FirstName, ol.OrdID, t.Total

