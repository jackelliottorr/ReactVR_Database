CREATE TABLE [dbo].[Scoreboard]
(
	[ScoreboardId] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY DEFAULT NEWID(), 
    [UserAccountId] UNIQUEIDENTIFIER NOT NULL, 
    [LevelConfigurationId] UNIQUEIDENTIFIER NOT NULL, 
    [Score] INT NOT NULL, 
    [IsDeleted] BIT NOT NULL DEFAULT 0, 
    CONSTRAINT [FK_Scoreboard_To_UserAccount] FOREIGN KEY ([UserAccountId]) REFERENCES [UserAccount]([UserAccountId]), 
    CONSTRAINT [FK_Scoreboard_To_LevelConfiguration] FOREIGN KEY([LevelConfigurationId]) REFERENCES [LevelConfiguration]([LevelConfigurationId])
)
