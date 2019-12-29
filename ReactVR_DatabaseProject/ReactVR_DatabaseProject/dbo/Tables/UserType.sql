CREATE TABLE [dbo].[UserType]
(
	[UserTypeId] INT NOT NULL IDENTITY PRIMARY KEY, 
    [Description] NVARCHAR(128) NOT NULL, 
    [IsDeleted] BIT NOT NULL DEFAULT 0
)
