/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

IF NOT EXISTS (SELECT * FROM dbo.UserType)
BEGIN
    INSERT INTO dbo.UserType (Description)
    VALUES   
    ('System Admin'),
    ('Organisation Administrator'),
    ('Organisation Coach'),
    ('Organisation Member');
END

if not exists (select * from [Level] where [Name] = 'Demo Level')
begin
    insert into [Level] (Name, Description)
    values
    ('Demo Level', 'A level to program against');
end

declare @demoLevelId uniqueidentifier 
set @demoLevelId = (select [LevelId] from [Level] where [Name] = 'Demo Level');

if not exists (select * from [TargetZone] where TargetZoneShape = 'Plane')
begin
    insert into [TargetZone] (TargetZoneShape, TargetZoneX, TargetZoneY, TargetZoneZ)
    values ('Plane', 3, 3, 3);
end

declare @planeId uniqueidentifier
set @planeId = (select [TargetZoneId] from [TargetZone] where [TargetZoneShape] = 'Plane');

if not exists (select * from [LevelConfiguration] where [Name] = 'Demo Level Configuration')
begin
    insert into [LevelConfiguration] (LevelId, OrganisationId, CreatedById, TargetZoneId, Name, Description, TargetSpawnDelay, TargetLifespan, IsPublic)
    values
    (@demoLevelId, '989C61F5-DE67-45F3-AD0E-5F2DB725E89A', '28D1C4AD-1F94-44BA-84F2-1571F3A00A5D', @planeId, 'Demo Level Configuration', 'For testing', 1, 3, 1);
end

declare @demoLevelConfigurationId uniqueidentifier 
set @demoLevelConfigurationId = (select [LevelConfigurationId] from [LevelConfiguration] where [Name] = 'Demo Level Configuration');

if not exists (select * from [Target] where LevelConfigurationId = @demoLevelConfigurationId)
begin
    insert into [Target] (LevelConfigurationId, TargetShape, TargetX, TargetY, TargetZ, OffsetX, OffsetY, OffsetZ)
    values (@demoLevelConfigurationId, 'Cylinder', 1, 1, 1, 0, 0, 0)
end