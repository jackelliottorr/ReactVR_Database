﻿CREATE TABLE [dbo].[Organisation]
(
	[OrganisationId] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY DEFAULT NEWID(), 
    [OrganisationName] NVARCHAR(128) NULL, 
    [CreatedDate] DATETIME NULL DEFAULT GETDATE(), 
    [IsDeleted] BIT NOT NULL DEFAULT 0
)
