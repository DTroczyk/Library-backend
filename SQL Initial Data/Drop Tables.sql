USE [Library]
GO

ALTER TABLE Loans DROP CONSTRAINT [FK_Loans_Items_ItemId]
ALTER TABLE Loans DROP CONSTRAINT [FK_Loans_Users_BorrowerId]

ALTER TABLE Items DROP CONSTRAINT [FK_Items_Loans_LoanId]
ALTER TABLE Items DROP CONSTRAINT [FK_Items_Shelves_ShelfId_OwnerId]
ALTER TABLE Items DROP CONSTRAINT [FK_Items_Users_OwnerId]

ALTER TABLE Shelves DROP CONSTRAINT [FK_Shelves_Users_OwnerId]

DROP TABLE Loans;
DROP TABLE Items;
DROP TABLE Shelves;
DROP TABLE Users;
DROP TABLE __EFMigrationsHistory;