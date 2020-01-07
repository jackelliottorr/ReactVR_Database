CREATE TABLE [dbo].[UserAccount]
(
	[UserAccountId] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY, 
    [Name] NVARCHAR(128) NULL, 
    [EmailAddress] NVARCHAR(128) NULL, 
    [Password] NVARCHAR(256) NULL, 
    [CreatedDate] DATETIME NOT NULL,
    [IsDeleted] BIT NOT NULL DEFAULT 0
)
