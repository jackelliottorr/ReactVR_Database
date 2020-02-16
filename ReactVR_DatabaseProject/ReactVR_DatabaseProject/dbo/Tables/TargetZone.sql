CREATE TABLE [dbo].[TargetZone]
(
	[TargetZoneId] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY DEFAULT NEWID(), 
    [LevelConfigurationId] UNIQUEIDENTIFIER NOT NULL,
    [TargetZoneShape] NVARCHAR(50) NOT NULL, 
    [TargetZoneX] DECIMAL(18, 2) NOT NULL, 
    [TargetZoneY] DECIMAL(18, 2) NOT NULL, 
    [TargetZoneZ] DECIMAL(18, 2) NOT NULL, 
    [CreatedDate] DATETIME NOT NULL DEFAULT GETDATE(),
    [IsDeleted] BIT NOT NULL DEFAULT 0, 
    CONSTRAINT [FK_TargetZone_To_LevelConfiguration] FOREIGN KEY ([LevelConfigurationId]) REFERENCES [LevelConfiguration]([LevelConfigurationId])
)
