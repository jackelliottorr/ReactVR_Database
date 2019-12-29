﻿CREATE TABLE [dbo].[TargetZone]
(
	[TargetZoneId] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY, 
    [TargetZoneShape] NVARCHAR(50) NOT NULL, 
    [TargetZoneX] DECIMAL NOT NULL, 
    [TargetZoneY] DECIMAL NOT NULL, 
    [TargetZoneZ] DECIMAL NOT NULL, 
    [CreatedDate] DATETIME NOT NULL DEFAULT GETDATE(),
    [IsDeleted] BIT NOT NULL DEFAULT 0
)