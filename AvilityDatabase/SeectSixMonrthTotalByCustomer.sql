﻿CREATE PROCEDURE [dbo].[SelectSizeMonthTotalByCustomer]
	@id int
AS

	SELECT *
	from OrderLine ol
	inner join [Order] o on o.OrderID = ol.OrdID
	inner join Customer c on c.CustID =  c.CustID
	where c.CustID = @id and o.OrderDate > dateadd(m, -6, getdate() - datepart(d, getdate()) + 1)

