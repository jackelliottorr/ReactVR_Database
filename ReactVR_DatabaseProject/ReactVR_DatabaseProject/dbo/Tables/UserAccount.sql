﻿CREATE TABLE [dbo].[UserAccount]
(
	[UserAccountId] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY DEFAULT NEWID(), 
    [Name] NVARCHAR(128) NULL, 
    [EmailAddress] NVARCHAR(128) NOT NULL, 
    [Salt] NVARCHAR(128) NOT NULL, 
    [Hash] NVARCHAR(128) NOT NULL, 
    [CreatedDate] DATETIME NOT NULL DEFAULT GETDATE(),
    [IsDeleted] BIT NOT NULL DEFAULT 0
)
