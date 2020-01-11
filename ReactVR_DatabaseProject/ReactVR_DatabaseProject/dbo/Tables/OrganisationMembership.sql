CREATE TABLE [dbo].[OrganisationMembership]
(
	[OrganisationMembershipId] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY DEFAULT NEWID(), 
    [OrganisationId] UNIQUEIDENTIFIER NOT NULL, 
    [UserAccountId] UNIQUEIDENTIFIER NOT NULL, 
    [UserTypeId] INT NOT NULL, 
    [IsDeleted] BIT NOT NULL DEFAULT 0, 
    CONSTRAINT [FK_OrganisationMembership_To_Organisation] FOREIGN KEY ([OrganisationId]) REFERENCES [Organisation]([OrganisationId]), 
    CONSTRAINT [FK_OrganisationMembership_To_UserAccount] FOREIGN KEY ([UserAccountId]) REFERENCES [UserAccount]([UserAccountId]), 
    CONSTRAINT [FK_OrganisationMembership_To_UserType] FOREIGN KEY ([UserTypeId]) REFERENCES [UserType]([UserTypeId])
)
