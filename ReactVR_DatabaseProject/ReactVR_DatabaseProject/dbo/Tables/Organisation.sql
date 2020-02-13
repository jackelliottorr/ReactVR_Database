CREATE TABLE [dbo].[Organisation]
(
	[OrganisationId] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY DEFAULT NEWID(), 
    [OrganisationName] NVARCHAR(128) NULL,   
    [CreatedById] UNIQUEIDENTIFIER NOT NULL,
    [CreatedDate] DATETIME NULL DEFAULT GETDATE(), 
    [IsDeleted] BIT NOT NULL DEFAULT 0, 
    CONSTRAINT [FK_Organisation_To_UserAccount] FOREIGN KEY ([CreatedById]) REFERENCES [UserAccount]([UserAccountId])
)
