CREATE TABLE [dbo].[Target]
(
	[TargetId] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY DEFAULT NEWID(), 
    [LevelConfigurationId] UNIQUEIDENTIFIER NOT NULL, 
    [TargetShape] NVARCHAR(50) NOT NULL, 
    [TargetX] DECIMAL(18, 2) NOT NULL, 
    [TargetY] DECIMAL(18, 2) NOT NULL, 
    [TargetZ] DECIMAL(18, 2) NOT NULL, 
    [OffsetX] DECIMAL(18, 2) NOT NULL, 
    [OffsetY] DECIMAL(18, 2) NOT NULL, 
    [OffsetZ] DECIMAL(18, 2) NOT NULL, 
    [CreatedDate] DATETIME NOT NULL DEFAULT GETDATE(), 
    [IsDeleted] BIT NOT NULL DEFAULT 0, 
    CONSTRAINT [FK_Target_To_LevelConfiguration] FOREIGN KEY ([LevelConfigurationId]) REFERENCES [LevelConfiguration]([LevelConfigurationId])
)
