CREATE TABLE [dbo].[LevelConfiguration]
(
	[LevelConfigurationId] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY, 
    [LevelId] UNIQUEIDENTIFIER NOT NULL, 
    [OrganisationId] UNIQUEIDENTIFIER NOT NULL, 
    [CreatedById] UNIQUEIDENTIFIER NOT NULL, 
    [TargetZoneId] UNIQUEIDENTIFIER NOT NULL,
    [Name] NVARCHAR(128) NOT NULL,
    [Description] NVARCHAR(128) NULL,    
    [TargetSpawnDelay] DECIMAL NULL, 
    [TargetLifespan] DECIMAL NULL, 
    [IsPublic] BIT NOT NULL DEFAULT 0, 
    [IsDeleted] BIT NOT NULL DEFAULT 0,
    CONSTRAINT [FK_LevelConfiguration_To_Level] FOREIGN KEY ([LevelId]) REFERENCES [Level]([LevelId]), 
    CONSTRAINT [FK_LevelConfiguration_To_Organisation] FOREIGN KEY ([OrganisationId]) REFERENCES [Organisation]([OrganisationId]),
    CONSTRAINT [FK_LevelConfiguration_To_UserAccount] FOREIGN KEY ([CreatedById]) REFERENCES [UserAccount]([UserAccountId]), 
    CONSTRAINT [FK_LevelConfiguration_To_TargetZone] FOREIGN KEY ([TargetZoneId]) REFERENCES [TargetZone]([TargetZoneId])
)
