CREATE TABLE [dbo].[Order]
(
	[OrderID] INT NULL PRIMARY KEY, 
    [CustomerID] INT NULL, 
    [OrderDate] DATE NULL, 
    CONSTRAINT [FK_Order_ToCustomer] FOREIGN KEY ([Column]) REFERENCES [ToTable]([ToTableColumn])
)
