CREATE TABLE [dbo].[OrderLine]
(
	[OrderLineID] INT NOT NULL PRIMARY KEY, 
    [OrdID] INT NULL, 
    [ItemName] NCHAR(100) NULL, 
    [Cost] MONEY NULL, 
    [Quantity] INT NULL, 
)
