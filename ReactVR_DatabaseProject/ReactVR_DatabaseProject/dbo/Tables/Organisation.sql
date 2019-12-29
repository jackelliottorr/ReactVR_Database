CREATE TABLE [dbo].[Organisation]
(
	[OrganisationId] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY, 
    [OrganisationName] NVARCHAR(128) NULL, 
    [CreatedDate] DATETIME NULL, 
    [IsDeleted] BIT NOT NULL DEFAULT 0
)
