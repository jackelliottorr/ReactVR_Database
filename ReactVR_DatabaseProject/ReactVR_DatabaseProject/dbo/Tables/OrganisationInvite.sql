CREATE TABLE [dbo].[OrganisationInvite]
(
	[OrganisationInviteId] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY, 
    [OrganisationId] UNIQUEIDENTIFIER NOT NULL, 
    [InvitedById] UNIQUEIDENTIFIER NOT NULL, 
    [InviteUserType] INT NOT NULL, 
    [CreatedDate] DATETIME NOT NULL, 
    [ExpiryDate] DATETIME NOT NULL, 
    [IsUsed] BIT NOT NULL DEFAULT 0, 
    [IsDeleted] BIT NOT NULL DEFAULT 0, 
    CONSTRAINT [FK_OrganisationInvite_To_Organisation] FOREIGN KEY ([OrganisationId]) REFERENCES [Organisation]([OrganisationId]), 
    CONSTRAINT [FK_OrganisationInvite_To_UserAccount] FOREIGN KEY ([InvitedById]) REFERENCES [UserAccount]([UserAccountId]), 
    CONSTRAINT [FK_OrganisationInvite_To_UserType] FOREIGN KEY ([InviteUserType]) REFERENCES [UserType]([UserTypeId])
)
