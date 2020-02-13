CREATE TABLE [dbo].[OrganisationInvite]
(
	[OrganisationInviteId] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY DEFAULT NEWID(), 
    [OrganisationId] UNIQUEIDENTIFIER NOT NULL, 
    [InvitedById] UNIQUEIDENTIFIER NOT NULL, 
    [InviteedId] UNIQUEIDENTIFIER NULL, 
    [InviteUserType] INT NOT NULL, 
    [CreatedDate] DATETIME NOT NULL DEFAULT GETDATE(), 
    [ExpiryDate] DATETIME NOT NULL DEFAULT DATEADD(MINUTE, 15, GETDATE()), 
    [IsUsed] BIT NOT NULL DEFAULT 0, 
    [IsDeleted] BIT NOT NULL DEFAULT 0, 
    CONSTRAINT [FK_OrganisationInvite_To_Organisation] FOREIGN KEY ([OrganisationId]) REFERENCES [Organisation]([OrganisationId]), 
    CONSTRAINT [FK_OrganisationInvite_To_UserAccount_InvitedBy] FOREIGN KEY ([InvitedById]) REFERENCES [UserAccount]([UserAccountId]),  
    CONSTRAINT [FK_OrganisationInvite_To_UserAccount_Invitee] FOREIGN KEY ([InviteedId]) REFERENCES [UserAccount]([UserAccountId]), 
    CONSTRAINT [FK_OrganisationInvite_To_UserType] FOREIGN KEY ([InviteUserType]) REFERENCES [UserType]([UserTypeId])
)
