CREATE TABLE [dbo].[TargetAppearance]
(
	[TargetAppearanceId] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY DEFAULT NEWID(), 
    [TargetId] UNIQUEIDENTIFIER NOT NULL, 
    [ScoreboardId] UNIQUEIDENTIFIER NOT NULL, 
    [TargetUptime] DECIMAL(18, 2) NOT NULL, 
    [WasMissed] BIT NOT NULL, 
    [IsDeleted] BIT NOT NULL DEFAULT 0, 
    CONSTRAINT [FK_TargetAppearance_To_Target] FOREIGN KEY ([TargetId]) REFERENCES [Target]([TargetId]), 
    CONSTRAINT [FK_TargetAppearance_To_Scoreboard] FOREIGN KEY ([ScoreboardId]) REFERENCES [Scoreboard]([ScoreboardId])
)
