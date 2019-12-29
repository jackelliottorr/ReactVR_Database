CREATE TABLE [dbo].[Target]
(
	[TargetId] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY, 
    [LevelConfigurationId] UNIQUEIDENTIFIER NOT NULL, 
    [TargetShape] NVARCHAR(50) NOT NULL, 
    [TargetX] DECIMAL NOT NULL, 
    [TargetY] DECIMAL NOT NULL, 
    [TargetZ] DECIMAL NOT NULL, 
    [OffsetX] DECIMAL NOT NULL, 
    [OffsetY] DECIMAL NOT NULL, 
    [OffsetZ] DECIMAL NOT NULL, 
    [CreatedDate] DATETIME NOT NULL DEFAULT GETDATE(), 
    [IsDeleted] BIT NOT NULL DEFAULT 0, 
    CONSTRAINT [FK_Target_To_LevelConfiguration] FOREIGN KEY ([LevelConfigurationId]) REFERENCES [LevelConfiguration]([LevelConfigurationId])
)
