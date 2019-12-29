CREATE TABLE [dbo].[PasswordReset]
(
	[PasswordResetId] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY, 
    [UserAccountId] UNIQUEIDENTIFIER NOT NULL, 
    [CreatedDate] DATETIME NOT NULL DEFAULT GETDATE(), 
    [ExpiryDate] DATETIME NOT NULL, 
    [IsUsed] BIT NOT NULL DEFAULT 0, 
    [IsDeleted] BIT NOT NULL DEFAULT 0, 
    CONSTRAINT [FK_PasswordReset_To_UserAccount] FOREIGN KEY ([UserAccountId]) REFERENCES [UserAccount]([UserAccountId])
)
